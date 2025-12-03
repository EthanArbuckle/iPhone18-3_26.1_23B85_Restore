@interface BuddyPhoneNumberPermissionController
+ (void)_registerPhoneNumberPermissionEnabled:(BOOL)enabled buddyPreferences:(id)preferences;
+ (void)skippedByCloudConfigWithEnvironment:(id)environment;
- (BOOL)controllerNeedsToRun;
- (BuddyPhoneNumberPermissionController)init;
- (void)_continueTapped;
- (void)_notNowTapped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation BuddyPhoneNumberPermissionController

- (BuddyPhoneNumberPermissionController)init
{
  location = self;
  v9[1] = a2;
  v2 = +[NSBundle mainBundle];
  v9[0] = [(NSBundle *)v2 localizedStringForKey:@"PHONE_NUMBER_PERMISSION_TITLE" value:&stru_10032F900 table:@"Localizable"];

  v3 = +[NSBundle mainBundle];
  v8 = [(NSBundle *)v3 localizedStringForKey:@"PHONE_NUMBER_PERMISSION_INFO_WITHOUT_WIRELESS_DATA_NOTICE" value:&stru_10032F900 table:@"Localizable"];

  v4 = location;
  location = 0;
  v7.receiver = v4;
  v7.super_class = BuddyPhoneNumberPermissionController;
  location = [(BuddyPhoneNumberPermissionController *)&v7 initWithTitle:v9[0] detailText:v8 symbolName:@"message.and.video"];
  objc_storeStrong(&location, location);
  if (location)
  {
    *(location + 16) = 1;
    *(location + 17) = 0;
  }

  v5 = location;
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);
  objc_storeStrong(&location, 0);
  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = BuddyPhoneNumberPermissionController;
  [(BuddyPhoneNumberPermissionController *)&v13 viewDidLoad];
  headerView = [(BuddyPhoneNumberPermissionController *)selfCopy headerView];
  [headerView setIconInheritsTint:0];

  headerView2 = [(BuddyPhoneNumberPermissionController *)selfCopy headerView];
  LODWORD(v4) = 0;
  [headerView2 setTitleHyphenationFactor:v4];

  buttonTray = [(BuddyPhoneNumberPermissionController *)selfCopy buttonTray];
  v16[0] = BYPrivacyiMessageFaceTimeIdentifier;
  v16[1] = BYPrivacyFaceTimeIdentifier;
  v16[2] = BYPrivacyMessagesIdentifier;
  v6 = [NSArray arrayWithObjects:v16 count:3];
  [buttonTray setPrivacyLinkForBundles:v6];

  v7 = selfCopy;
  v8 = +[NSBundle mainBundle];
  v9 = [(NSBundle *)v8 localizedStringForKey:@"PHONE_NUMBER_PERMISSION_ALLOW" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v7 addBoldButton:v9 action:"_continueTapped"];

  v10 = selfCopy;
  v11 = +[NSBundle mainBundle];
  v12 = [(NSBundle *)v11 localizedStringForKey:@"PHONE_NUMBER_PERMISSION_NOTNOW" value:&stru_10032F900 table:@"Localizable"];
  [(BuddyWelcomeController *)v10 addLinkButton:v12 action:"_notNowTapped"];
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v42 = a2;
  v41 = 1;
  buddyPreferences = [(BuddyPhoneNumberPermissionController *)self buddyPreferences];
  v3 = [(BYPreferencesController *)buddyPreferences BOOLForKey:@"PhoneNumberPermissionPresentedKey"];

  v40 = v3 & 1;
  runState = [(BuddyPhoneNumberPermissionController *)selfCopy runState];
  v5 = [(BYRunState *)runState hasCompletedInitialRun]^ 1;

  v39 = v5 & 1;
  capabilities = [(BuddyPhoneNumberPermissionController *)selfCopy capabilities];
  mgHasCellularTelephony = [(BYCapabilities *)capabilities mgHasCellularTelephony];

  v38 = mgHasCellularTelephony & 1;
  v35 = 0;
  mgHasCellularData = 0;
  if ([(BuddyPhoneNumberPermissionController *)selfCopy includeCellularDataCheck])
  {
    capabilities2 = [(BuddyPhoneNumberPermissionController *)selfCopy capabilities];
    v35 = 1;
    mgHasCellularData = [(BYCapabilities *)capabilities2 mgHasCellularData];
  }

  if (v35)
  {
  }

  v37 = mgHasCellularData & 1;
  if ((v39 & 1) == 0)
  {
    location = _BYLoggingFacility();
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v9 = location;
      v10 = v33;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v9, v10, "Phone Number Permission skipped because we're in mini-buddy", buf, 2u);
    }

    objc_storeStrong(&location, 0);
    return 0;
  }

  if (v40)
  {
    oslog = _BYLoggingFacility();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = oslog;
      v12 = v30;
      sub_10006AA68(v29);
      _os_log_impl(&_mh_execute_header, v11, v12, "Phone Number Permission already presented, skipping", v29, 2u);
    }

    objc_storeStrong(&oslog, 0);
    return 0;
  }

  if ((v37 & 1) == 0 && (v38 & 1) == 0)
  {
    v28 = _BYLoggingFacility();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v28;
      v14 = v27;
      sub_10006AA68(v26);
      _os_log_impl(&_mh_execute_header, v13, v14, "Phone Number Permission needs cellular data/telephony, skipping", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    return 0;
  }

  v24 = 0;
  v22 = 0;
  v15 = 0;
  if ([(BuddyPhoneNumberPermissionController *)selfCopy includeAppleAccountCheck])
  {
    v25 = +[ACAccountStore defaultStore];
    v24 = 1;
    aa_primaryAppleAccount = [v25 aa_primaryAppleAccount];
    v22 = 1;
    v15 = aa_primaryAppleAccount != 0;
  }

  if (v22)
  {
  }

  if (v24)
  {
  }

  if (!v15)
  {
    return v41;
  }

  v21 = _BYLoggingFacility();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v21;
    v17 = v20;
    sub_10006AA68(v19);
    _os_log_impl(&_mh_execute_header, v16, v17, "Phone Number Permission is only shown if there's no Apple ID signed in", v19, 2u);
  }

  objc_storeStrong(&v21, 0);
  return 0;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = dispatch_get_global_queue(0, 0);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100202EA8;
  v8 = &unk_10032B120;
  v9 = location[0];
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

+ (void)skippedByCloudConfigWithEnvironment:(id)environment
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, environment);
  v4[1] = selfCopy;
  v4[0] = location[0];
  v3 = dispatch_get_global_queue(2, 0);
  IDSRegistrationControlGetStateForRegistrationType();

  objc_storeStrong(v4, 0);
  objc_storeStrong(location, 0);
}

+ (void)_registerPhoneNumberPermissionEnabled:(BOOL)enabled buddyPreferences:(id)preferences
{
  selfCopy = self;
  v24 = a2;
  enabledCopy = enabled;
  location = 0;
  objc_storeStrong(&location, preferences);
  [location setObject:&__kCFBooleanTrue forKey:@"PhoneNumberPermissionPresentedKey"];
  if (enabledCopy)
  {
    oslog = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog;
      v5 = v20;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "User agreed to share phonenumber, registering enable state with IDS", buf, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v6 = dispatch_get_global_queue(2, 0);
    IDSRegistrationControlEnableRegistrationType();

    v7 = dispatch_get_global_queue(2, 0);
    v8 = _CTServerConnectionCreateOnTargetQueue();

    cf = v8;
    if (v8)
    {
      v27[0] = kCTWiFiDataUsagePolicy;
      v28[0] = kCTCellularDataUsagePolicyAlwaysAllow;
      v27[1] = kCTCellularDataUsagePolicy;
      v28[1] = kCTCellularDataUsagePolicyAlwaysAllow;
      v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
      memset(&v16[1], 0, sizeof(os_log_t));
      v16[1] = _CTServerConnectionSetCellularUsagePolicy();
      if (HIDWORD(v16[1]))
      {
        v16[0] = _BYLoggingFacility();
        v15 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v16[0], OS_LOG_TYPE_DEFAULT))
        {
          sub_100075A38(v26, SHIDWORD(v16[1]), v16[1]);
          _os_log_impl(&_mh_execute_header, v16[0], v15, "Could not enable data usage for FaceTime. error: %d domain: (%d)", v26, 0xEu);
        }

        objc_storeStrong(v16, 0);
      }

      CFRelease(cf);
      objc_storeStrong(&v17, 0);
    }
  }

  else
  {
    v14 = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v14;
      v10 = v13;
      sub_10006AA68(v12);
      _os_log_impl(&_mh_execute_header, v9, v10, "User declined to share phonenumber, registering disable state with IDS", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    v11 = dispatch_get_global_queue(2, 0);
    IDSRegistrationControlDisableRegistrationType();
  }

  objc_storeStrong(&location, 0);
}

- (void)_continueTapped
{
  v2 = objc_opt_class();
  buddyPreferences = [(BuddyPhoneNumberPermissionController *)self buddyPreferences];
  [v2 _registerPhoneNumberPermissionEnabled:1 buddyPreferences:buddyPreferences];

  delegate = [(BuddyWelcomeController *)self delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:self];
}

- (void)_notNowTapped
{
  v2 = objc_opt_class();
  buddyPreferences = [(BuddyPhoneNumberPermissionController *)self buddyPreferences];
  [v2 _registerPhoneNumberPermissionEnabled:0 buddyPreferences:buddyPreferences];

  delegate = [(BuddyWelcomeController *)self delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:self];
}

@end