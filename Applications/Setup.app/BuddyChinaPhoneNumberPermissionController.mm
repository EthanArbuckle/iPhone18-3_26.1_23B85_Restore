@interface BuddyChinaPhoneNumberPermissionController
- (BOOL)controllerNeedsToRun;
- (BuddyChinaPhoneNumberPermissionController)init;
- (void)viewDidLoad;
@end

@implementation BuddyChinaPhoneNumberPermissionController

- (BuddyChinaPhoneNumberPermissionController)init
{
  v5 = a2;
  location = 0;
  v4.receiver = self;
  v4.super_class = BuddyChinaPhoneNumberPermissionController;
  location = [(BuddyPhoneNumberPermissionController *)&v4 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    [location setIncludeAppleAccountCheck:0];
    [location setIncludeCellularDataCheck:1];
  }

  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

- (void)viewDidLoad
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = BuddyChinaPhoneNumberPermissionController;
  [(BuddyPhoneNumberPermissionController *)&v6 viewDidLoad];
  v2 = [(BuddyChinaPhoneNumberPermissionController *)v8 headerView];
  v3 = +[NSBundle mainBundle];
  v4 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PHONE_NUMBER_PERMISSION_INFO_WITH_WIRELESS_DATA_NOTICE"];
  v5 = [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_10032F900 table:@"Localizable"];
  [v2 setDetailText:v5];
}

- (BOOL)controllerNeedsToRun
{
  v12 = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = BuddyChinaPhoneNumberPermissionController;
  if (![(BuddyPhoneNumberPermissionController *)&v10 controllerNeedsToRun])
  {
    return 0;
  }

  v2 = [(BuddyPhoneNumberPermissionController *)v12 capabilities];
  v3 = [(BYCapabilities *)v2 mgHasGreenTea];

  if (v3)
  {
    return 1;
  }

  oslog = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = oslog;
    v5 = v8;
    sub_10006AA68(v7);
    _os_log_impl(&_mh_execute_header, v4, v5, "PhoneNumber Permission can only be shown in China, skipping", v7, 2u);
  }

  objc_storeStrong(&oslog, 0);
  return 0;
}

@end