@interface BuddyCloudConfigInstallationController_new
- (BOOL)presentErrorIfDesired:(id)a3;
- (BuddyCloudConfigInstallationController_new)init;
- (MDMCloudConfiguration)cloudConfiguration;
- (id)_clearImage;
- (void)loadView;
- (void)setCloudConfiguration:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyCloudConfigInstallationController_new

- (BuddyCloudConfigInstallationController_new)init
{
  location = self;
  v10 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CLOUD_CONFIG_CONFIGURING"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  v6 = [location _clearImage];
  location = 0;
  v9.receiver = self;
  v9.super_class = BuddyCloudConfigInstallationController_new;
  location = [(BuddyCloudConfigInstallationController_new *)&v9 initWithTitle:v5 detailText:0 icon:v6];
  objc_storeStrong(&location, location);

  v7 = location;
  objc_storeStrong(&location, 0);
  return v7;
}

- (void)loadView
{
  v16 = self;
  v15 = a2;
  v14.receiver = self;
  v14.super_class = BuddyCloudConfigInstallationController_new;
  [(BuddyCloudConfigInstallationController_new *)&v14 loadView];
  v2 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  spinnerView = v16->_spinnerView;
  v16->_spinnerView = v2;

  [(UIActivityIndicatorView *)v16->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(BuddyCloudConfigInstallationController_new *)v16 view];
  [v4 addSubview:v16->_spinnerView];

  v5 = [(BuddyCloudConfigInstallationController_new *)v16 view];
  v6 = [v5 centerXAnchor];
  v7 = [(UIActivityIndicatorView *)v16->_spinnerView centerXAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v17[0] = v8;
  v9 = [(BuddyCloudConfigInstallationController_new *)v16 view];
  v10 = [v9 centerYAnchor];
  v11 = [(UIActivityIndicatorView *)v16->_spinnerView centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v17[1] = v12;
  v13 = [NSArray arrayWithObjects:v17 count:2];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)viewDidLoad
{
  v22 = self;
  v21 = a2;
  v20.receiver = self;
  v20.super_class = BuddyCloudConfigInstallationController_new;
  [(BuddyCloudConfigInstallationController_new *)&v20 viewDidLoad];
  v2 = [(BuddyCloudConfigInstallationController_new *)v22 cloudConfiguration];
  v19 = [(MDMCloudConfiguration *)v2 details];

  v18 = [v19 objectForKeyedSubscript:kCCOrganizationNameKey];
  v15 = 0;
  v13 = 0;
  v11 = 0;
  v9 = 0;
  v7 = 0;
  if (v18)
  {
    v16 = +[NSBundle mainBundle];
    v15 = 1;
    v14 = [(NSBundle *)v16 localizedStringForKey:@"CLOUD_CONFIG_INSTALLING_DESCRIPTION_%@" value:&stru_10032F900 table:@"Localizable"];
    v13 = 1;
    v3 = [NSString localizedStringWithFormat:v18];
    v12 = v3;
    v11 = 1;
  }

  else
  {
    v10 = +[NSBundle mainBundle];
    v9 = 1;
    v3 = [(NSBundle *)v10 localizedStringForKey:@"CLOUD_CONFIG_INSTALLING_DESCRIPTION_FROM_MANAGEMENT_SERVER" value:&stru_10032F900 table:@"Localizable"];
    v8 = v3;
    v7 = 1;
  }

  location = v3;
  if (v7)
  {
  }

  if (v9)
  {
  }

  if (v11)
  {
  }

  if (v13)
  {
  }

  if (v15)
  {
  }

  v4 = [(BuddyCloudConfigInstallationController_new *)v22 headerView];
  [v4 setDetailText:location];

  v5 = [(BuddyCloudConfigInstallationController_new *)v22 spinnerView];
  [(UIActivityIndicatorView *)v5 startAnimating];

  v6 = [(BuddyCloudConfigInstallationController_new *)v22 navigationItem];
  [v6 setHidesBackButton:1];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyCloudConfigInstallationController_new;
  [(BuddyCloudConfigInstallationController_new *)&v4 viewWillAppear:a3];
  v3 = [(BuddyCloudConfigInstallationController_new *)v7 view];
  [v3 setNeedsLayout];
}

- (id)_clearImage
{
  v9 = self;
  v8 = a2;
  v10.width = sub_1001BD90C();
  size = v10;
  UIGraphicsBeginImageContextWithOptions(v10, 1, 0.0);
  v2 = +[UIColor systemBackgroundColor];
  [(UIColor *)v2 setFill];

  v11.origin.x = sub_1001BD944();
  rect = v11;
  UIRectFill(v11);
  location = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v3 = location;
  objc_storeStrong(&location, 0);
  return v3;
}

- (BOOL)presentErrorIfDesired:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyCloudConfigInstallationController_new *)v15 spinnerView];
  [(UIActivityIndicatorView *)v3 stopAnimating];

  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [location[0] localizedDescription];
    sub_10006AE18(buf, v11);
    _os_log_impl(&_mh_execute_header, oslog, v12, "Last error description: %@", buf, 0xCu);

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&oslog, 0);
  v4 = [(BuddyCloudConfigInstallationController_new *)v15 headerView];
  v5 = [location[0] localizedDescription];
  [v4 setDetailText:v5];

  v6 = [(BuddyCloudConfigInstallationController_new *)v15 navigationItem];
  [v6 setHidesBackButton:0];

  v7 = [(BuddyCloudConfigInstallationController_new *)v15 navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setEnabled:0];

  v9 = [(BuddyCloudConfigInstallationController_new *)v15 view];
  [v9 setNeedsLayout];

  objc_storeStrong(location, 0);
  return 1;
}

- (MDMCloudConfiguration)cloudConfiguration
{
  if (self->_cloudConfiguration)
  {
    v3 = self->_cloudConfiguration;
  }

  else
  {
    v3 = +[MDMCloudConfiguration sharedConfiguration];
  }

  return v3;
}

- (void)setCloudConfiguration:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_cloudConfiguration, location[0]);
  objc_storeStrong(location, 0);
}

@end