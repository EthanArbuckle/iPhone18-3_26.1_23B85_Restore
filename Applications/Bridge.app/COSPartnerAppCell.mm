@interface COSPartnerAppCell
+ (unint64_t)didInstallPostSetupEvent;
- (COSPartnerAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)appIcon;
- (id)localizedAppTitle;
- (id)localizedPartnerTitle;
- (id)partnerAppBundleIdentifier;
- (id)partnerAppStoreIdentifier;
- (id)productParameters;
- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)intent;
- (void)appIsAvailableStateDidChange:(unint64_t)change;
- (void)dealloc;
- (void)didBeginInstallationWithSuccess:(BOOL)success;
- (void)didCompleteInstallationWithSuccess:(BOOL)success;
- (void)layoutSubviews;
- (void)pressedGet:(id)get;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setInitialInstallState;
- (void)setMode:(unint64_t)mode animated:(BOOL)animated;
@end

@implementation COSPartnerAppCell

- (COSPartnerAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v38.receiver = self;
  v38.super_class = COSPartnerAppCell;
  v5 = [(COSPartnerAppCell *)&v38 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [COSAppInstallationController alloc];
    partnerAppBundleIdentifier = [(COSPartnerAppCell *)v5 partnerAppBundleIdentifier];
    partnerAppStoreIdentifier = [(COSPartnerAppCell *)v5 partnerAppStoreIdentifier];
    v9 = [(COSAppInstallationController *)v6 initWithBundleID:partnerAppBundleIdentifier andStoreIdentifier:partnerAppStoreIdentifier];
    installController = v5->_installController;
    v5->_installController = v9;

    [(COSAppInstallationController *)v5->_installController addObserver:v5];
    v11 = [UIImageView alloc];
    appIcon = [(COSPartnerAppCell *)v5 appIcon];
    v13 = [v11 initWithImage:appIcon];
    iconView = v5->_iconView;
    v5->_iconView = v13;

    contentView = [(COSPartnerAppCell *)v5 contentView];
    [contentView addSubview:v5->_iconView];

    v16 = objc_alloc_init(UILabel);
    appTitleLabel = v5->_appTitleLabel;
    v5->_appTitleLabel = v16;

    v18 = v5->_appTitleLabel;
    localizedAppTitle = [(COSPartnerAppCell *)v5 localizedAppTitle];
    [(UILabel *)v18 setText:localizedAppTitle];

    [(UILabel *)v5->_appTitleLabel setNumberOfLines:1];
    v20 = v5->_appTitleLabel;
    v21 = [UIFont boldSystemFontOfSize:16.0];
    [(UILabel *)v20 setFont:v21];

    v22 = v5->_appTitleLabel;
    v23 = BPSTextColor();
    [(UILabel *)v22 setTextColor:v23];

    contentView2 = [(COSPartnerAppCell *)v5 contentView];
    [contentView2 addSubview:v5->_appTitleLabel];

    v25 = objc_alloc_init(UILabel);
    companyLabel = v5->_companyLabel;
    v5->_companyLabel = v25;

    v27 = v5->_companyLabel;
    localizedPartnerTitle = [(COSPartnerAppCell *)v5 localizedPartnerTitle];
    [(UILabel *)v27 setText:localizedPartnerTitle];

    v29 = v5->_companyLabel;
    v30 = [UIFont systemFontOfSize:13.0];
    [(UILabel *)v29 setFont:v30];

    v31 = v5->_companyLabel;
    v32 = +[UIColor systemMidGrayColor];
    [(UILabel *)v31 setTextColor:v32];

    contentView3 = [(COSPartnerAppCell *)v5 contentView];
    [contentView3 addSubview:v5->_companyLabel];

    v34 = [COSAppInstallButton buttonWithType:1];
    getButton = v5->_getButton;
    v5->_getButton = v34;

    [(COSAppInstallButton *)v5->_getButton addTarget:v5 action:"pressedGet:" forControlEvents:64];
    [(COSPartnerAppCell *)v5 setInitialInstallState];
    contentView4 = [(COSPartnerAppCell *)v5 contentView];
    [contentView4 addSubview:v5->_getButton];
  }

  return v5;
}

- (void)dealloc
{
  [(COSAppInstallationController *)self->_installController removeObserver:self];
  v3.receiver = self;
  v3.super_class = COSPartnerAppCell;
  [(COSPartnerAppCell *)&v3 dealloc];
}

- (void)setMode:(unint64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = +[MCProfileConnection sharedConnection];
  v8 = [v7 effectiveBoolValueForSetting:MCFeatureAppInstallationAllowed];

  getButton = self->_getButton;
  if (v8 == 2)
  {
    modeCopy = 3;
  }

  else
  {
    modeCopy = mode;
  }

  [(COSAppInstallButton *)getButton setMode:modeCopy animated:animatedCopy];
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = COSPartnerAppCell;
  [(COSPartnerAppCell *)&v29 layoutSubviews];
  textLabel = [(COSPartnerAppCell *)self textLabel];
  [textLabel setHidden:1];

  [(COSPartnerAppCell *)self bounds];
  v27 = v5;
  v28 = v4;
  v25 = v7;
  v26 = v6;
  height = CGSizeZero.height;
  [(UIImageView *)self->_iconView sizeThatFits:CGSizeZero.width, height];
  [(UIImageView *)self->_iconView setFrame:10.0, 10.0, 55.0, 55.0];
  [(UILabel *)self->_appTitleLabel sizeThatFits:CGSizeZero.width, height];
  v10 = v9;
  v12 = v11;
  [(UILabel *)self->_companyLabel sizeThatFits:CGSizeZero.width, height];
  v23 = v14;
  v24 = v13;
  *&v13 = (55.0 - (v12 + v14 + 1.0)) * 0.5;
  v15 = floorf(*&v13);
  v30.origin.x = 10.0;
  v30.origin.y = 10.0;
  v30.size.width = 55.0;
  v30.size.height = 55.0;
  v16 = CGRectGetMaxX(v30) + 10.0;
  v31.origin.x = 10.0;
  v31.origin.y = 10.0;
  v31.size.width = 55.0;
  v31.size.height = 55.0;
  v17 = CGRectGetMinY(v31) + v15;
  v32.origin.x = 10.0;
  v32.origin.y = 10.0;
  v32.size.width = 55.0;
  v32.size.height = 55.0;
  v18 = CGRectGetMaxX(v32) + 10.0;
  v33.origin.x = v16;
  v33.origin.y = v17;
  v33.size.width = v10;
  v33.size.height = v12;
  v19 = CGRectGetMaxY(v33) + 1.0;
  [(UILabel *)self->_appTitleLabel setFrame:v16, v17, v10, v12];
  [(UILabel *)self->_companyLabel setFrame:v18, v19, v24, v23];
  [(COSAppInstallButton *)self->_getButton sizeThatFits:CGSizeZero.width, height];
  v21 = v20;
  v34.origin.x = v28;
  v34.origin.y = v27;
  v34.size.width = v26;
  v34.size.height = v25;
  v22 = CGRectGetWidth(v34) + -10.0 - v21;
  v35.origin.x = v28;
  v35.origin.y = v27;
  v35.size.width = v26;
  v35.size.height = v25;
  [(COSAppInstallButton *)self->_getButton setFrame:v22, 0.0, v21, CGRectGetHeight(v35)];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  titleLabel = [(COSPartnerAppCell *)self titleLabel];
  [titleLabel setHidden:1];

  if (![(COSAppInstallationController *)self->_installController isInstalled])
  {
    isAvailableInStore = [(COSAppInstallationController *)self->_installController isAvailableInStore];
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [NSNumber numberWithBool:isAvailableInStore != 0];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "App Available In Current Store: %@", &v8, 0xCu);
    }
  }
}

- (void)setInitialInstallState
{
  installInProgress = [(COSAppInstallationController *)self->_installController installInProgress];
  isInstalled = [(COSAppInstallationController *)self->_installController isInstalled];
  v5 = 4;
  if (!installInProgress)
  {
    v5 = 1;
  }

  if (isInstalled)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  [(COSPartnerAppCell *)self setMode:v6 animated:0];
}

- (id)productParameters
{
  v3 = +[NSMutableDictionary dictionary];
  partnerAppStoreIdentifier = [(COSPartnerAppCell *)self partnerAppStoreIdentifier];
  [v3 setObject:partnerAppStoreIdentifier forKey:SKStoreProductParameterITunesItemIdentifier];

  return v3;
}

+ (unint64_t)didInstallPostSetupEvent
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "+[COSPartnerAppCell didInstallPostSetupEvent]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass requires override %s", &v4, 0xCu);
  }

  return 0;
}

- (void)pressedGet:(id)get
{
  +[PBBridgeCAReporter incrementSuccessType:](PBBridgeCAReporter, "incrementSuccessType:", [objc_opt_class() didInstallPostSetupEvent]);
  [(COSAppInstallationController *)self->_installController startInstalling];
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Began Installing Partner App", v5, 2u);
  }
}

- (void)didBeginInstallationWithSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

  [(COSPartnerAppCell *)self setMode:v3 animated:1];
}

- (void)didCompleteInstallationWithSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(COSPartnerAppCell *)self setMode:v3 animated:1];
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did Complete Installing Partner Apps", v5, 2u);
  }
}

- (void)appIsAvailableStateDidChange:(unint64_t)change
{
  if (change == 2)
  {
    [(COSPartnerAppCell *)self setMode:3 animated:1];
  }
}

- (void)_accessibilitySetInterfaceStyleIntent:(unint64_t)intent
{
  v5.receiver = self;
  v5.super_class = COSPartnerAppCell;
  [(COSPartnerAppCell *)&v5 _accessibilitySetInterfaceStyleIntent:?];
  [(COSAppInstallButton *)self->_getButton _accessibilitySetInterfaceStyleIntent:intent];
}

- (id)appIcon
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPartnerAppCell appIcon]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass must override class: %s", &v4, 0xCu);
  }

  return 0;
}

- (id)localizedAppTitle
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPartnerAppCell localizedAppTitle]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass must override class: %s", &v4, 0xCu);
  }

  return 0;
}

- (id)localizedPartnerTitle
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPartnerAppCell localizedPartnerTitle]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass must override class: %s", &v4, 0xCu);
  }

  return 0;
}

- (id)partnerAppBundleIdentifier
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPartnerAppCell partnerAppBundleIdentifier]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass must override class: %s", &v4, 0xCu);
  }

  return 0;
}

- (id)partnerAppStoreIdentifier
{
  v2 = pbb_bridge_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSPartnerAppCell partnerAppStoreIdentifier]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subclass must override class: %s", &v4, 0xCu);
  }

  return 0;
}

@end