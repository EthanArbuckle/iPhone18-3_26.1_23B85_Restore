@interface COSRemoteManagementInformationHeaderView
- (COSRemoteManagementInformationHeaderView)initWithReuseIdentifier:(id)identifier;
@end

@implementation COSRemoteManagementInformationHeaderView

- (COSRemoteManagementInformationHeaderView)initWithReuseIdentifier:(id)identifier
{
  v50.receiver = self;
  v50.super_class = COSRemoteManagementInformationHeaderView;
  v3 = [(COSRemoteManagementInformationHeaderView *)&v50 initWithReuseIdentifier:identifier];
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
    contentView = [(COSRemoteManagementInformationHeaderView *)v3 contentView];
    [contentView addSubview:v3->_containerView];

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
    leadingAnchor = [(UIView *)v3->_containerView leadingAnchor];
    contentView2 = [(COSRemoteManagementInformationHeaderView *)v3 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v51[0] = v45;
    trailingAnchor = [(UIView *)v3->_containerView trailingAnchor];
    contentView3 = [(COSRemoteManagementInformationHeaderView *)v3 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v51[1] = v40;
    topAnchor = [(UIView *)v3->_containerView topAnchor];
    contentView4 = [(COSRemoteManagementInformationHeaderView *)v3 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v51[2] = v35;
    bottomAnchor = [(UIView *)v3->_containerView bottomAnchor];
    contentView5 = [(COSRemoteManagementInformationHeaderView *)v3 contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v51[3] = v30;
    leadingAnchor3 = [(UIView *)v3->_containerView leadingAnchor];
    leadingAnchor4 = [(UILabel *)v3->_organizationNameLabel leadingAnchor];
    v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v51[4] = v27;
    trailingAnchor3 = [(UIView *)v3->_containerView trailingAnchor];
    trailingAnchor4 = [(UILabel *)v3->_organizationNameLabel trailingAnchor];
    v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v51[5] = v17;
    topAnchor3 = [(UIView *)v3->_containerView topAnchor];
    topAnchor4 = [(UILabel *)v3->_organizationNameLabel topAnchor];
    v20 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v51[6] = v20;
    bottomAnchor3 = [(UIView *)v3->_containerView bottomAnchor];
    bottomAnchor4 = [(UILabel *)v3->_organizationNameLabel bottomAnchor];
    v23 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v51[7] = v23;
    v24 = [NSArray arrayWithObjects:v51 count:8];
    [NSLayoutConstraint activateConstraints:v24];
  }

  return v3;
}

@end