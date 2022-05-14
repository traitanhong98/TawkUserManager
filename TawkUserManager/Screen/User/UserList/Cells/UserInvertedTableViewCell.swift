//
//  UserInvertedTableViewCell.swift
//  TawkUserManager
//
//  Created by Savvycom2021 on 14/05/2022.
//

import UIKit

class UserInvertedTableViewCell: UITableViewCell {
    private let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = Color.black
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.red.cgColor
        return view
    }()
    
    private let userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .gray
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 18)
        label.numberOfLines = 1
        label.textColor = .white
        label.text = "b"
        return label
    }()
    
    private let detailLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.numberOfLines = 1
        label.textColor = .white
        label.text = "a"
        return label
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        contentView.backgroundColor = Color.white
        setupViews()
    }
    
    private func setupViews() {
        contentView.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.top.leading.equalTo(6)
            make.bottom.trailing.equalTo(-6)
        }
        
        [userImageView, nameLabel, detailLabel].forEach {
            containerView.addSubview($0)
        }
        
        userImageView.snp.makeConstraints { make in
            make.top.equalTo(10)
            make.leading.equalTo(8)
            make.height.width.equalTo(64)
        }
        userImageView.layer.cornerRadius = 32
        userImageView.layer.masksToBounds = true
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(userImageView.snp.top).offset(8)
            make.leading.equalTo(userImageView.snp.trailing).offset(8)
            make.trailing.equalTo(-4)
        }
        
        detailLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(nameLabel)
        }
    }
}
