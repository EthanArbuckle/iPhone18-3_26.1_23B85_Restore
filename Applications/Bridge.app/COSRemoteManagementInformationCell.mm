@interface COSRemoteManagementInformationCell
- (COSRemoteManagementInformationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (COSRemoteManagementInformationCellDelegate)delegate;
- (void)learnMoreButtonPressed:(id)pressed;
@end

@implementation COSRemoteManagementInformationCell

- (COSRemoteManagementInformationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v91.receiver = self;
  v91.super_class = COSRemoteManagementInformationCell;
  v4 = [(COSRemoteManagementInformationCell *)&v91 initWithStyle:style reuseIdentifier:identifier];
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
    contentView = [(COSRemoteManagementInformationCell *)v5 contentView];
    [contentView addSubview:v5->_containerView];

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
    titleLabel = [(UIButton *)v5->_learnMoreButton titleLabel];
    [titleLabel setNumberOfLines:0];

    titleLabel2 = [(UIButton *)v5->_learnMoreButton titleLabel];
    [titleLabel2 setTextAlignment:1];

    v29 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    titleLabel3 = [(UIButton *)v5->_learnMoreButton titleLabel];
    [titleLabel3 setFont:v29];

    v31 = v5->_learnMoreButton;
    v32 = +[NSBundle mainBundle];
    v33 = [v32 localizedStringForKey:@"LEARN_MORE_ABOUT_REMOTE_MANAGEMENT_TITLE" value:&stru_10026E598 table:@"Localizable-yorktown"];
    [(UIButton *)v31 setTitle:v33 forState:0];

    v34 = v5->_learnMoreButton;
    v35 = BPSBridgeTintColor();
    [(UIButton *)v34 setTitleColor:v35 forState:0];

    [(UIButton *)v5->_learnMoreButton addTarget:v5 action:"learnMoreButtonPressed:" forControlEvents:64];
    [(UIView *)v5->_containerView addSubview:v5->_learnMoreButton];
    leadingAnchor = [(UIView *)v5->_containerView leadingAnchor];
    contentView2 = [(COSRemoteManagementInformationCell *)v5 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v84 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v92[0] = v84;
    trailingAnchor = [(UIView *)v5->_containerView trailingAnchor];
    contentView3 = [(COSRemoteManagementInformationCell *)v5 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v79 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v92[1] = v79;
    topAnchor = [(UIView *)v5->_containerView topAnchor];
    contentView4 = [(COSRemoteManagementInformationCell *)v5 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v74 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v92[2] = v74;
    bottomAnchor = [(UIView *)v5->_containerView bottomAnchor];
    contentView5 = [(COSRemoteManagementInformationCell *)v5 contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v69 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v92[3] = v69;
    topAnchor3 = [(UIView *)v5->_containerView topAnchor];
    topAnchor4 = [(UIImageView *)v5->_iconView topAnchor];
    v66 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v92[4] = v66;
    centerXAnchor = [(UIView *)v5->_containerView centerXAnchor];
    centerXAnchor2 = [(UIImageView *)v5->_iconView centerXAnchor];
    v63 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v92[5] = v63;
    heightAnchor = [(UIImageView *)v5->_iconView heightAnchor];
    v61 = [heightAnchor constraintEqualToConstant:38.0];
    v92[6] = v61;
    widthAnchor = [(UIImageView *)v5->_iconView widthAnchor];
    v59 = [widthAnchor constraintEqualToConstant:80.0];
    v92[7] = v59;
    topAnchor5 = [(UILabel *)v5->_descriptionView topAnchor];
    bottomAnchor3 = [(UIImageView *)v5->_iconView bottomAnchor];
    v56 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:10.0];
    v92[8] = v56;
    leadingAnchor3 = [(UILabel *)v5->_descriptionView leadingAnchor];
    leadingAnchor4 = [(UIView *)v5->_containerView leadingAnchor];
    v53 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v92[9] = v53;
    trailingAnchor3 = [(UILabel *)v5->_descriptionView trailingAnchor];
    trailingAnchor4 = [(UIView *)v5->_containerView trailingAnchor];
    v50 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v92[10] = v50;
    leadingAnchor5 = [(UIButton *)v5->_learnMoreButton leadingAnchor];
    leadingAnchor6 = [(UIView *)v5->_containerView leadingAnchor];
    v47 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v92[11] = v47;
    trailingAnchor5 = [(UIButton *)v5->_learnMoreButton trailingAnchor];
    trailingAnchor6 = [(UIView *)v5->_containerView trailingAnchor];
    v37 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v92[12] = v37;
    topAnchor6 = [(UIButton *)v5->_learnMoreButton topAnchor];
    bottomAnchor4 = [(UILabel *)v5->_descriptionView bottomAnchor];
    v40 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:10.0];
    v92[13] = v40;
    bottomAnchor5 = [(UIButton *)v5->_learnMoreButton bottomAnchor];
    bottomAnchor6 = [(UIView *)v5->_containerView bottomAnchor];
    v43 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v92[14] = v43;
    v44 = [NSArray arrayWithObjects:v92 count:15];
    [NSLayoutConstraint activateConstraints:v44];
  }

  return v5;
}

- (void)learnMoreButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 remoteManagementInformationCell:self buttonPressed:pressedCopy];
  }
}

- (COSRemoteManagementInformationCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end