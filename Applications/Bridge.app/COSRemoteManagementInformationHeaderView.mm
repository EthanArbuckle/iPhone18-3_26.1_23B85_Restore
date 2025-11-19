@interface COSRemoteManagementInformationHeaderView
- (COSRemoteManagementInformationHeaderView)initWithReuseIdentifier:(id)a3;
@end

@implementation COSRemoteManagementInformationHeaderView

- (COSRemoteManagementInformationHeaderView)initWithReuseIdentifier:(id)a3
{
  v50.receiver = self;
  v50.super_class = COSRemoteManagementInformationHeaderView;
  v3 = [(COSRemoteManagementInformationHeaderView *)&v50 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    containerView = v3->_containerView;
    v3->_containerView = v8;

    [(UIView *)v3->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [(COSRemoteManagementInformationHeaderView *)v3 contentView];
    [v10 addSubview:v3->_containerView];

    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    organizationNameLabel = v3->_organizationNameLabel;
    v3->_organizationNameLabel = v11;

    [(UILabel *)v3->_organizationNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = +[UIColor labelColor];
    [(UILabel *)v3->_organizationNameLabel setTextColor:v13];

    [(UILabel *)v3->_organizationNameLabel setNumberOfLines:0];
    [(UILabel *)v3->_organizationNameLabel setTextAlignment:1];
    v14 = [UITraitCollection traitCollectionWithLegibilityWeight:1];
    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v14];
    [(UILabel *)v3->_organizationNameLabel setFont:v15];

    [(UIView *)v3->_containerView addSubview:v3->_organizationNameLabel];
    v48 = [(UIView *)v3->_containerView leadingAnchor];
    v49 = [(COSRemoteManagementInformationHeaderView *)v3 contentView];
    v47 = [v49 layoutMarginsGuide];
    v46 = [v47 leadingAnchor];
    v45 = [v48 constraintEqualToAnchor:v46];
    v51[0] = v45;
    v43 = [(UIView *)v3->_containerView trailingAnchor];
    v44 = [(COSRemoteManagementInformationHeaderView *)v3 contentView];
    v42 = [v44 layoutMarginsGuide];
    v41 = [v42 trailingAnchor];
    v40 = [v43 constraintEqualToAnchor:v41];
    v51[1] = v40;
    v38 = [(UIView *)v3->_containerView topAnchor];
    v39 = [(COSRemoteManagementInformationHeaderView *)v3 contentView];
    v37 = [v39 layoutMarginsGuide];
    v36 = [v37 topAnchor];
    v35 = [v38 constraintEqualToAnchor:v36];
    v51[2] = v35;
    v33 = [(UIView *)v3->_containerView bottomAnchor];
    v34 = [(COSRemoteManagementInformationHeaderView *)v3 contentView];
    v32 = [v34 layoutMarginsGuide];
    v31 = [v32 bottomAnchor];
    v30 = [v33 constraintEqualToAnchor:v31];
    v51[3] = v30;
    v29 = [(UIView *)v3->_containerView leadingAnchor];
    v28 = [(UILabel *)v3->_organizationNameLabel leadingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v51[4] = v27;
    v26 = [(UIView *)v3->_containerView trailingAnchor];
    v16 = [(UILabel *)v3->_organizationNameLabel trailingAnchor];
    v17 = [v26 constraintEqualToAnchor:v16];
    v51[5] = v17;
    v18 = [(UIView *)v3->_containerView topAnchor];
    v19 = [(UILabel *)v3->_organizationNameLabel topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v51[6] = v20;
    v21 = [(UIView *)v3->_containerView bottomAnchor];
    v22 = [(UILabel *)v3->_organizationNameLabel bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v51[7] = v23;
    v24 = [NSArray arrayWithObjects:v51 count:8];
    [NSLayoutConstraint activateConstraints:v24];
  }

  return v3;
}

@end