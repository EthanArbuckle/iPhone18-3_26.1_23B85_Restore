@interface BuddyActivationBasebandDeadController
+ (BOOL)controllerNeedsToRun;
- (BuddyActivationBasebandDeadController)init;
- (void)_shutdownTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation BuddyActivationBasebandDeadController

- (BuddyActivationBasebandDeadController)init
{
  selfCopy = self;
  location[1] = a2;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ACTIVATION_ERROR_BASEBAND_DEAD_DETAIL"];
  location[0] = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];

  v4 = selfCopy;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"ACTIVATION_ERROR_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v7 = [UIImage imageNamed:@"Alert Icon"];
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = BuddyActivationBasebandDeadController;
  selfCopy = [(BuddyActivationBasebandDeadController *)&v10 initWithTitle:v6 detailText:location[0] icon:v7];
  v8 = selfCopy;

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = BuddyActivationBasebandDeadController;
  [(BuddyActivationBasebandDeadController *)&v8 viewDidLoad];
  headerView = [(BuddyActivationBasebandDeadController *)selfCopy headerView];
  [headerView setIconInheritsTint:1];

  v3 = +[UIColor redColor];
  headerView2 = [(BuddyActivationBasebandDeadController *)selfCopy headerView];
  [headerView2 setTintColor:v3];

  v5 = selfCopy;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"SHUTDOWN" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v5 addBoldButton:v7 action:"_shutdownTapped:"];
}

- (void)_shutdownTapped:(id)tapped
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  oslog = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog;
    v4 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v3, v4, "User requests shutdown UI on baseband dead pane...", v5, 2u);
  }

  objc_storeStrong(&oslog, 0);
  SBSPresentPowerDownUI();
  objc_storeStrong(location, 0);
}

+ (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v5 = a2;
  v4 = 0;
  oslog[2] = _CTServerConnectionCreateWithIdentifier();
  memset(&oslog[1], 0, sizeof(os_log_t));
  oslog[1] = _CTServerConnectionGetRadioModuleIsDead();
  if (!LODWORD(oslog[1]))
  {
    return v4 != 0;
  }

  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    sub_100075A38(buf, oslog[1], SHIDWORD(oslog[1]));
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Unable to check baseband status for signs of life: %d - %d", buf, 0xEu);
  }

  objc_storeStrong(oslog, 0);
  return 0;
}

@end