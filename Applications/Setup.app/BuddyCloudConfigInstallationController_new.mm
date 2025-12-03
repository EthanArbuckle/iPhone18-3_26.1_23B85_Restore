@interface BuddyCloudConfigInstallationController_new
- (BOOL)presentErrorIfDesired:(id)desired;
- (BuddyCloudConfigInstallationController_new)init;
- (MDMCloudConfiguration)cloudConfiguration;
- (id)_clearImage;
- (void)loadView;
- (void)setCloudConfiguration:(id)configuration;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyCloudConfigInstallationController_new

- (BuddyCloudConfigInstallationController_new)init
{
  location = self;
  v10 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CLOUD_CONFIG_CONFIGURING"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  _clearImage = [location _clearImage];
  location = 0;
  v9.receiver = self;
  v9.super_class = BuddyCloudConfigInstallationController_new;
  location = [(BuddyCloudConfigInstallationController_new *)&v9 initWithTitle:v5 detailText:0 icon:_clearImage];
  objc_storeStrong(&location, location);

  v7 = location;
  objc_storeStrong(&location, 0);
  return v7;
}

- (void)loadView
{
  selfCopy = self;
  v15 = a2;
  v14.receiver = self;
  v14.super_class = BuddyCloudConfigInstallationController_new;
  [(BuddyCloudConfigInstallationController_new *)&v14 loadView];
  v2 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  spinnerView = selfCopy->_spinnerView;
  selfCopy->_spinnerView = v2;

  [(UIActivityIndicatorView *)selfCopy->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(BuddyCloudConfigInstallationController_new *)selfCopy view];
  [view addSubview:selfCopy->_spinnerView];

  view2 = [(BuddyCloudConfigInstallationController_new *)selfCopy view];
  centerXAnchor = [view2 centerXAnchor];
  centerXAnchor2 = [(UIActivityIndicatorView *)selfCopy->_spinnerView centerXAnchor];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v17[0] = v8;
  view3 = [(BuddyCloudConfigInstallationController_new *)selfCopy view];
  centerYAnchor = [view3 centerYAnchor];
  centerYAnchor2 = [(UIActivityIndicatorView *)selfCopy->_spinnerView centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v17[1] = v12;
  v13 = [NSArray arrayWithObjects:v17 count:2];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v21 = a2;
  v20.receiver = self;
  v20.super_class = BuddyCloudConfigInstallationController_new;
  [(BuddyCloudConfigInstallationController_new *)&v20 viewDidLoad];
  cloudConfiguration = [(BuddyCloudConfigInstallationController_new *)selfCopy cloudConfiguration];
  details = [(MDMCloudConfiguration *)cloudConfiguration details];

  v18 = [details objectForKeyedSubscript:kCCOrganizationNameKey];
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

  headerView = [(BuddyCloudConfigInstallationController_new *)selfCopy headerView];
  [headerView setDetailText:location];

  spinnerView = [(BuddyCloudConfigInstallationController_new *)selfCopy spinnerView];
  [(UIActivityIndicatorView *)spinnerView startAnimating];

  navigationItem = [(BuddyCloudConfigInstallationController_new *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:1];

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&details, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = BuddyCloudConfigInstallationController_new;
  [(BuddyCloudConfigInstallationController_new *)&v4 viewWillAppear:appear];
  view = [(BuddyCloudConfigInstallationController_new *)selfCopy view];
  [view setNeedsLayout];
}

- (id)_clearImage
{
  selfCopy = self;
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

- (BOOL)presentErrorIfDesired:(id)desired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, desired);
  spinnerView = [(BuddyCloudConfigInstallationController_new *)selfCopy spinnerView];
  [(UIActivityIndicatorView *)spinnerView stopAnimating];

  oslog = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    localizedDescription = [location[0] localizedDescription];
    sub_10006AE18(buf, localizedDescription);
    _os_log_impl(&_mh_execute_header, oslog, v12, "Last error description: %@", buf, 0xCu);

    objc_storeStrong(&localizedDescription, 0);
  }

  objc_storeStrong(&oslog, 0);
  headerView = [(BuddyCloudConfigInstallationController_new *)selfCopy headerView];
  localizedDescription2 = [location[0] localizedDescription];
  [headerView setDetailText:localizedDescription2];

  navigationItem = [(BuddyCloudConfigInstallationController_new *)selfCopy navigationItem];
  [navigationItem setHidesBackButton:0];

  navigationItem2 = [(BuddyCloudConfigInstallationController_new *)selfCopy navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  view = [(BuddyCloudConfigInstallationController_new *)selfCopy view];
  [view setNeedsLayout];

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

- (void)setCloudConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  objc_storeStrong(&selfCopy->_cloudConfiguration, location[0]);
  objc_storeStrong(location, 0);
}

@end