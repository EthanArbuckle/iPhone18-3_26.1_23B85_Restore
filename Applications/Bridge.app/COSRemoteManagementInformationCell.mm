@interface COSRemoteManagementInformationCell
- (COSRemoteManagementInformationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (COSRemoteManagementInformationCellDelegate)delegate;
- (void)learnMoreButtonPressed:(id)a3;
@end

@implementation COSRemoteManagementInformationCell

- (COSRemoteManagementInformationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v91.receiver = self;
  v91.super_class = COSRemoteManagementInformationCell;
  v4 = [(COSRemoteManagementInformationCell *)&v91 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(COSRemoteManagementInformationCell *)v4 setSelectionStyle:0];
    v6 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    containerView = v5->_containerView;
    v5->_containerView = v10;

    [(UIView *)v5->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(COSRemoteManagementInformationCell *)v5 contentView];
    [v12 addSubview:v5->_containerView];

    v13 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconView = v5->_iconView;
    v5->_iconView = v13;

    v15 = [UIImage systemImageNamed:@"exclamationmark.triangle.fill"];
    v16 = +[UIColor systemBackgroundColor];
    v93[0] = v16;
    v17 = +[UIColor systemOrangeColor];
    v93[1] = v17;
    v18 = [NSArray arrayWithObjects:v93 count:2];
    v90 = [UIImageSymbolConfiguration _configurationWithHierarchicalColors:v18];

    v89 = [v15 imageWithConfiguration:v90];

    [(UIImageView *)v5->_iconView setImage:v89];
    [(UIImageView *)v5->_iconView setContentMode:1];
    [(UIImageView *)v5->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5->_containerView addSubview:v5->_iconView];
    v19 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    descriptionView = v5->_descriptionView;
    v5->_descriptionView = v19;

    [(UILabel *)v5->_descriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_descriptionView setNumberOfLines:0];
    v21 = +[UIColor labelColor];
    [(UILabel *)v5->_descriptionView setTextColor:v21];

    [(UILabel *)v5->_descriptionView setTextAlignment:1];
    v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v5->_descriptionView setFont:v22];

    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"UI_DEVICE_ENROLLMENT_CONSENT" value:&stru_10026E598 table:@"Localizable-yorktown"];
    [(UILabel *)v5->_descriptionView setText:v24];

    [(UIView *)v5->_containerView addSubview:v5->_descriptionView];
    v25 = [UIButton buttonWithType:1];
    learnMoreButton = v5->_learnMoreButton;
    v5->_learnMoreButton = v25;

    [(UIButton *)v5->_learnMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [(UIButton *)v5->_learnMoreButton titleLabel];
    [v27 setNumberOfLines:0];

    v28 = [(UIButton *)v5->_learnMoreButton titleLabel];
    [v28 setTextAlignment:1];

    v29 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v30 = [(UIButton *)v5->_learnMoreButton titleLabel];
    [v30 setFont:v29];

    v31 = v5->_learnMoreButton;
    v32 = +[NSBundle mainBundle];
    v33 = [v32 localizedStringForKey:@"LEARN_MORE_ABOUT_REMOTE_MANAGEMENT_TITLE" value:&stru_10026E598 table:@"Localizable-yorktown"];
    [(UIButton *)v31 setTitle:v33 forState:0];

    v34 = v5->_learnMoreButton;
    v35 = BPSBridgeTintColor();
    [(UIButton *)v34 setTitleColor:v35 forState:0];

    [(UIButton *)v5->_learnMoreButton addTarget:v5 action:"learnMoreButtonPressed:" forControlEvents:64];
    [(UIView *)v5->_containerView addSubview:v5->_learnMoreButton];
    v87 = [(UIView *)v5->_containerView leadingAnchor];
    v88 = [(COSRemoteManagementInformationCell *)v5 contentView];
    v86 = [v88 layoutMarginsGuide];
    v85 = [v86 leadingAnchor];
    v84 = [v87 constraintEqualToAnchor:v85];
    v92[0] = v84;
    v82 = [(UIView *)v5->_containerView trailingAnchor];
    v83 = [(COSRemoteManagementInformationCell *)v5 contentView];
    v81 = [v83 layoutMarginsGuide];
    v80 = [v81 trailingAnchor];
    v79 = [v82 constraintEqualToAnchor:v80];
    v92[1] = v79;
    v77 = [(UIView *)v5->_containerView topAnchor];
    v78 = [(COSRemoteManagementInformationCell *)v5 contentView];
    v76 = [v78 layoutMarginsGuide];
    v75 = [v76 topAnchor];
    v74 = [v77 constraintEqualToAnchor:v75];
    v92[2] = v74;
    v72 = [(UIView *)v5->_containerView bottomAnchor];
    v73 = [(COSRemoteManagementInformationCell *)v5 contentView];
    v71 = [v73 layoutMarginsGuide];
    v70 = [v71 bottomAnchor];
    v69 = [v72 constraintEqualToAnchor:v70];
    v92[3] = v69;
    v68 = [(UIView *)v5->_containerView topAnchor];
    v67 = [(UIImageView *)v5->_iconView topAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v92[4] = v66;
    v65 = [(UIView *)v5->_containerView centerXAnchor];
    v64 = [(UIImageView *)v5->_iconView centerXAnchor];
    v63 = [v65 constraintEqualToAnchor:v64];
    v92[5] = v63;
    v62 = [(UIImageView *)v5->_iconView heightAnchor];
    v61 = [v62 constraintEqualToConstant:38.0];
    v92[6] = v61;
    v60 = [(UIImageView *)v5->_iconView widthAnchor];
    v59 = [v60 constraintEqualToConstant:80.0];
    v92[7] = v59;
    v58 = [(UILabel *)v5->_descriptionView topAnchor];
    v57 = [(UIImageView *)v5->_iconView bottomAnchor];
    v56 = [v58 constraintEqualToAnchor:v57 constant:10.0];
    v92[8] = v56;
    v55 = [(UILabel *)v5->_descriptionView leadingAnchor];
    v54 = [(UIView *)v5->_containerView leadingAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v92[9] = v53;
    v52 = [(UILabel *)v5->_descriptionView trailingAnchor];
    v51 = [(UIView *)v5->_containerView trailingAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v92[10] = v50;
    v49 = [(UIButton *)v5->_learnMoreButton leadingAnchor];
    v48 = [(UIView *)v5->_containerView leadingAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v92[11] = v47;
    v46 = [(UIButton *)v5->_learnMoreButton trailingAnchor];
    v36 = [(UIView *)v5->_containerView trailingAnchor];
    v37 = [v46 constraintEqualToAnchor:v36];
    v92[12] = v37;
    v38 = [(UIButton *)v5->_learnMoreButton topAnchor];
    v39 = [(UILabel *)v5->_descriptionView bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:10.0];
    v92[13] = v40;
    v41 = [(UIButton *)v5->_learnMoreButton bottomAnchor];
    v42 = [(UIView *)v5->_containerView bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    v92[14] = v43;
    v44 = [NSArray arrayWithObjects:v92 count:15];
    [NSLayoutConstraint activateConstraints:v44];
  }

  return v5;
}

- (void)learnMoreButtonPressed:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 remoteManagementInformationCell:self buttonPressed:v6];
  }
}

- (COSRemoteManagementInformationCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end