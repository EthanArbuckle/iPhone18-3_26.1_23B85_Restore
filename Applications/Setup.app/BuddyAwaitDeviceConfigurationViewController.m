@interface BuddyAwaitDeviceConfigurationViewController
- (BuddyAwaitDeviceConfigurationViewController)init;
- (id)_clearImage;
- (void)loadView;
- (void)presentEnrollmentStatusForDebugging:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyAwaitDeviceConfigurationViewController

- (BuddyAwaitDeviceConfigurationViewController)init
{
  location = self;
  v10 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CLOUD_CONFIG_CONFIGURING"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  v6 = [location _clearImage];
  location = 0;
  v9.receiver = self;
  v9.super_class = BuddyAwaitDeviceConfigurationViewController;
  location = [(BuddyAwaitDeviceConfigurationViewController *)&v9 initWithTitle:v5 detailText:0 icon:v6];
  objc_storeStrong(&location, location);

  v7 = location;
  objc_storeStrong(&location, 0);
  return v7;
}

- (void)loadView
{
  v31 = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = BuddyAwaitDeviceConfigurationViewController;
  [(BuddyAwaitDeviceConfigurationViewController *)&v29 loadView];
  v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  statusLabel = v31->_statusLabel;
  v31->_statusLabel = v2;

  [(UILabel *)v31->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v31->_statusLabel setTextAlignment:1];
  v4 = v31->_statusLabel;
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)v4 setFont:v5];

  v6 = v31->_statusLabel;
  v7 = +[UIColor secondaryLabelColor];
  [(UILabel *)v6 setTextColor:v7];

  [(UILabel *)v31->_statusLabel setLineBreakMode:0];
  [(UILabel *)v31->_statusLabel setNumberOfLines:0];
  v8 = [(BuddyAwaitDeviceConfigurationViewController *)v31 view];
  [v8 addSubview:v31->_statusLabel];

  v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  spinnerView = v31->_spinnerView;
  v31->_spinnerView = v9;

  [(UIActivityIndicatorView *)v31->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(BuddyAwaitDeviceConfigurationViewController *)v31 view];
  [v11 addSubview:v31->_spinnerView];

  v28 = [(BuddyAwaitDeviceConfigurationViewController *)v31 view];
  v27 = [v28 centerXAnchor];
  v26 = [(UILabel *)v31->_statusLabel centerXAnchor];
  v25 = [v27 constraintEqualToAnchor:?];
  v32[0] = v25;
  v23 = [(UILabel *)v31->_statusLabel bottomAnchor];
  v24 = [(BuddyAwaitDeviceConfigurationViewController *)v31 view];
  v22 = [v24 bottomAnchor];
  v12 = [v23 constraintGreaterThanOrEqualToAnchor:-30.0 constant:?];
  v32[1] = v12;
  v13 = [(BuddyAwaitDeviceConfigurationViewController *)v31 view];
  v14 = [v13 centerXAnchor];
  v15 = [(UIActivityIndicatorView *)v31->_spinnerView centerXAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v32[2] = v16;
  v17 = [(BuddyAwaitDeviceConfigurationViewController *)v31 view];
  v18 = [v17 centerYAnchor];
  v19 = [(UIActivityIndicatorView *)v31->_spinnerView centerYAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v32[3] = v20;
  v21 = [NSArray arrayWithObjects:v32 count:4];
  [NSLayoutConstraint activateConstraints:v21];
}

- (void)viewWillAppear:(BOOL)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13.receiver = self;
  v13.super_class = BuddyAwaitDeviceConfigurationViewController;
  [(BuddyAwaitDeviceConfigurationViewController *)&v13 viewWillAppear:a3];
  v3 = +[MDMCloudConfiguration sharedConfiguration];
  v12 = [v3 details];

  location = [v12 objectForKeyedSubscript:kCCOrganizationNameKey];
  v4 = [(BuddyAwaitDeviceConfigurationViewController *)v16 headerView];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"CLOUD_CONFIG_GETTING_CONFIGURATION_DESCRIPTION_%@" value:&stru_10032F900 table:@"Localizable"];
  v7 = [NSString localizedStringWithFormat:v6, location];
  [v4 setDetailText:v7];

  v8 = [(BuddyAwaitDeviceConfigurationViewController *)v16 spinnerView];
  [(UIActivityIndicatorView *)v8 startAnimating];

  v9 = [(BuddyAwaitDeviceConfigurationViewController *)v16 navigationItem];
  [v9 setHidesBackButton:1];

  v10 = [(BuddyAwaitDeviceConfigurationViewController *)v16 view];
  [v10 setNeedsLayout];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v12, 0);
}

- (id)_clearImage
{
  v9 = self;
  v8 = a2;
  v10.width = sub_100163810();
  size = v10;
  UIGraphicsBeginImageContextWithOptions(v10, 1, 0.0);
  v2 = +[UIColor systemBackgroundColor];
  [(UIColor *)v2 setFill];

  v11.origin.x = sub_100163848();
  rect = v11;
  UIRectFill(v11);
  location = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

- (void)presentEnrollmentStatusForDebugging:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001639B0;
  v8 = &unk_10032B838;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end