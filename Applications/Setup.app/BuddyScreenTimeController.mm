@interface BuddyScreenTimeController
+ (void)clearScreenTimeSetting:(id)setting;
+ (void)setScreenTimeEnabled:(BOOL)enabled presented:(BOOL)presented buddyPreferences:(id)preferences;
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)setScreenTimeEnabled:(BOOL)enabled;
- (void)setupSkipped;
@end

@implementation BuddyScreenTimeController

+ (void)setScreenTimeEnabled:(BOOL)enabled presented:(BOOL)presented buddyPreferences:(id)preferences
{
  selfCopy = self;
  v15 = a2;
  enabledCopy = enabled;
  presentedCopy = presented;
  location = 0;
  objc_storeStrong(&location, preferences);
  v11 = objc_alloc_init(STManagementState);
  v10 = 0;
  obj = 0;
  v5 = [v11 setScreenTimeEnabled:enabledCopy error:&obj];
  objc_storeStrong(&v10, obj);
  if ((v5 & 1) == 0)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, v10);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to set Screen Time enabled: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v6 = location;
  v7 = [NSNumber numberWithBool:presentedCopy];
  [v6 setObject:v7 forKey:@"ScreenTimePresented"];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

+ (void)clearScreenTimeSetting:(id)setting
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, setting);
  [objc_opt_class() setScreenTimeEnabled:0 presented:0 buddyPreferences:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  buddyPreferences = [(BuddyScreenTimeController *)self buddyPreferences];
  v3 = [(BYPreferencesController *)buddyPreferences BOOLForKey:@"ScreenTimePresented"];

  v6 = 0;
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    capabilities = [(BuddyScreenTimeController *)self capabilities];
    v6 = 1;
    v4 = ([(BYCapabilities *)capabilities isScreenTimeRestricted]& 1) == 0;
  }

  v9 = v4;
  if (v6)
  {
  }

  return v9;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = [BuddyAccountAge alloc];
  v4 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v4 aa_primaryAppleAccount];
  v22 = [(BuddyAccountAge *)v3 initWithAccount:aa_primaryAppleAccount];

  if ([v22 isChild])
  {
    v21 = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v21;
      v7 = v20;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v6, v7, "Skipping screen time settings for child account", buf, 2u);
    }

    objc_storeStrong(&v21, 0);
    (*(location[0] + 2))(location[0], 0);
    v18 = 1;
  }

  else
  {
    v8 = objc_alloc_init(STManagementState);
    [(BuddyScreenTimeController *)selfCopy setManagementState:v8];

    objc_initWeak(&from, selfCopy);
    managementState = [(BuddyScreenTimeController *)selfCopy managementState];
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_1001492AC;
    v14 = &unk_10032D970;
    objc_copyWeak(v16, &from);
    v15 = location[0];
    [(STManagementState *)managementState screenTimeStateWithCompletionHandler:&v10];

    objc_storeStrong(&v15, 0);
    objc_destroyWeak(v16);
    objc_destroyWeak(&from);
    v18 = 0;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)setScreenTimeEnabled:(BOOL)enabled
{
  selfCopy = self;
  v19 = a2;
  enabledCopy = enabled;
  screenTimeViewController = [(BuddyScreenTimeController *)self screenTimeViewController];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:screenTimeViewController identifier:v5];

  screenTimeViewController2 = [(BuddyScreenTimeController *)selfCopy screenTimeViewController];
  view = [(STSetupAssistantViewController *)screenTimeViewController2 view];
  window = [view window];
  [window setUserInteractionEnabled:0];

  objc_initWeak(&location, selfCopy);
  managementState = [(BuddyScreenTimeController *)selfCopy managementState];
  LOBYTE(window) = enabledCopy;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1001496C0;
  v14 = &unk_10032D9C0;
  objc_copyWeak(&v15, &location);
  v16 = enabledCopy;
  [(STManagementState *)managementState setScreenTimeEnabled:window & 1 completionHandler:&v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)controllerWasPopped
{
  buddyPreferences = [(BuddyScreenTimeController *)self buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanFalse forKey:@"ScreenTimePresented"];

  paneFeatureAnalyticsManager = [(BuddyScreenTimeController *)self paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager clearActionForFeature:0];
}

- (void)setupSkipped
{
  runState = [(BuddyScreenTimeController *)self runState];
  hasCompletedInitialRun = [(BYRunState *)runState hasCompletedInitialRun];

  if (hasCompletedInitialRun)
  {
    buddyPreferences = [(BuddyScreenTimeController *)self buddyPreferences];
    [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"ScreenTimePresented"];

    delegate = [(BuddyScreenTimeController *)self delegate];
    [(BFFFlowItemDelegate *)delegate flowItemDone:self];
  }

  else
  {
    [(BuddyScreenTimeController *)self setScreenTimeEnabled:0];
  }
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end