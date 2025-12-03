@interface BuddyAwaitDeviceConfigurationViewController
- (BuddyAwaitDeviceConfigurationViewController)init;
- (id)_clearImage;
- (void)loadView;
- (void)presentEnrollmentStatusForDebugging:(id)debugging;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyAwaitDeviceConfigurationViewController

- (BuddyAwaitDeviceConfigurationViewController)init
{
  location = self;
  v10 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CLOUD_CONFIG_CONFIGURING"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  _clearImage = [location _clearImage];
  location = 0;
  v9.receiver = self;
  v9.super_class = BuddyAwaitDeviceConfigurationViewController;
  location = [(BuddyAwaitDeviceConfigurationViewController *)&v9 initWithTitle:v5 detailText:0 icon:_clearImage];
  objc_storeStrong(&location, location);

  v7 = location;
  objc_storeStrong(&location, 0);
  return v7;
}

- (void)loadView
{
  selfCopy = self;
  v30 = a2;
  v29.receiver = self;
  v29.super_class = BuddyAwaitDeviceConfigurationViewController;
  [(BuddyAwaitDeviceConfigurationViewController *)&v29 loadView];
  v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  statusLabel = selfCopy->_statusLabel;
  selfCopy->_statusLabel = v2;

  [(UILabel *)selfCopy->_statusLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)selfCopy->_statusLabel setTextAlignment:1];
  v4 = selfCopy->_statusLabel;
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)v4 setFont:v5];

  v6 = selfCopy->_statusLabel;
  v7 = +[UIColor secondaryLabelColor];
  [(UILabel *)v6 setTextColor:v7];

  [(UILabel *)selfCopy->_statusLabel setLineBreakMode:0];
  [(UILabel *)selfCopy->_statusLabel setNumberOfLines:0];
  view = [(BuddyAwaitDeviceConfigurationViewController *)selfCopy view];
  [view addSubview:selfCopy->_statusLabel];

  v9 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  spinnerView = selfCopy->_spinnerView;
  selfCopy->_spinnerView = v9;

  [(UIActivityIndicatorView *)selfCopy->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(BuddyAwaitDeviceConfigurationViewController *)selfCopy view];
  [view2 addSubview:selfCopy->_spinnerView];

  view3 = [(BuddyAwaitDeviceConfigurationViewController *)selfCopy view];
  centerXAnchor = [view3 centerXAnchor];
  centerXAnchor2 = [(UILabel *)selfCopy->_statusLabel centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:?];
  v32[0] = v25;
  bottomAnchor = [(UILabel *)selfCopy->_statusLabel bottomAnchor];
  view4 = [(BuddyAwaitDeviceConfigurationViewController *)selfCopy view];
  bottomAnchor2 = [view4 bottomAnchor];
  v12 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:-30.0 constant:?];
  v32[1] = v12;
  view5 = [(BuddyAwaitDeviceConfigurationViewController *)selfCopy view];
  centerXAnchor3 = [view5 centerXAnchor];
  centerXAnchor4 = [(UIActivityIndicatorView *)selfCopy->_spinnerView centerXAnchor];
  v16 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v32[2] = v16;
  view6 = [(BuddyAwaitDeviceConfigurationViewController *)selfCopy view];
  centerYAnchor = [view6 centerYAnchor];
  centerYAnchor2 = [(UIActivityIndicatorView *)selfCopy->_spinnerView centerYAnchor];
  v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v32[3] = v20;
  v21 = [NSArray arrayWithObjects:v32 count:4];
  [NSLayoutConstraint activateConstraints:v21];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v15 = a2;
  appearCopy = appear;
  v13.receiver = self;
  v13.super_class = BuddyAwaitDeviceConfigurationViewController;
  [(BuddyAwaitDeviceConfigurationViewController *)&v13 viewWillAppear:appear];
  v3 = +[MDMCloudConfiguration sharedConfiguration];
  details = [v3 details];

  location = [details objectForKeyedSubscript:kCCOrganizationNameKey];
  headerView = [(BuddyAwaitDeviceConfigurationViewController *)selfCopy headerView];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"CLOUD_CONFIG_GETTING_CONFIGURATION_DESCRIPTION_%@" value:&stru_10032F900 table:@"Localizable"];
  location = [NSString localizedStringWithFormat:v6, location];
  [headerView setDetailText:location];

  spinnerView = [(BuddyAwaitDeviceConfigurationViewController *)selfCopy spinnerView];
  [(UIActivityIndicatorView *)spinnerView startAnimating];

  navigationItem = [(BuddyAwaitDeviceConfigurationViewController *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];

  view = [(BuddyAwaitDeviceConfigurationViewController *)selfCopy view];
  [view setNeedsLayout];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&details, 0);
}

- (id)_clearImage
{
  selfCopy = self;
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

- (void)presentEnrollmentStatusForDebugging:(id)debugging
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, debugging);
  v3 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001639B0;
  v8 = &unk_10032B838;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end