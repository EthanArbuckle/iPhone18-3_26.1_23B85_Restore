@interface BuddyScreenTimeController
+ (void)clearScreenTimeSetting:(id)a3;
+ (void)setScreenTimeEnabled:(BOOL)a3 presented:(BOOL)a4 buddyPreferences:(id)a5;
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)setScreenTimeEnabled:(BOOL)a3;
- (void)setupSkipped;
@end

@implementation BuddyScreenTimeController

+ (void)setScreenTimeEnabled:(BOOL)a3 presented:(BOOL)a4 buddyPreferences:(id)a5
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v11 = objc_alloc_init(STManagementState);
  v10 = 0;
  obj = 0;
  v5 = [v11 setScreenTimeEnabled:v14 error:&obj];
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
  v7 = [NSNumber numberWithBool:v13];
  [v6 setObject:v7 forKey:@"ScreenTimePresented"];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

+ (void)clearScreenTimeSetting:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [objc_opt_class() setScreenTimeEnabled:0 presented:0 buddyPreferences:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyScreenTimeController *)self buddyPreferences];
  v3 = [(BYPreferencesController *)v2 BOOLForKey:@"ScreenTimePresented"];

  v6 = 0;
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v7 = [(BuddyScreenTimeController *)self capabilities];
    v6 = 1;
    v4 = ([(BYCapabilities *)v7 isScreenTimeRestricted]& 1) == 0;
  }

  v9 = v4;
  if (v6)
  {
  }

  return v9;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [BuddyAccountAge alloc];
  v4 = +[ACAccountStore defaultStore];
  v5 = [v4 aa_primaryAppleAccount];
  v22 = [(BuddyAccountAge *)v3 initWithAccount:v5];

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
    [(BuddyScreenTimeController *)v24 setManagementState:v8];

    objc_initWeak(&from, v24);
    v9 = [(BuddyScreenTimeController *)v24 managementState];
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_1001492AC;
    v14 = &unk_10032D970;
    objc_copyWeak(v16, &from);
    v15 = location[0];
    [(STManagementState *)v9 screenTimeStateWithCompletionHandler:&v10];

    objc_storeStrong(&v15, 0);
    objc_destroyWeak(v16);
    objc_destroyWeak(&from);
    v18 = 0;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)setScreenTimeEnabled:(BOOL)a3
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  v3 = [(BuddyScreenTimeController *)self screenTimeViewController];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v3 identifier:v5];

  v6 = [(BuddyScreenTimeController *)v20 screenTimeViewController];
  v7 = [(STSetupAssistantViewController *)v6 view];
  v8 = [v7 window];
  [v8 setUserInteractionEnabled:0];

  objc_initWeak(&location, v20);
  v9 = [(BuddyScreenTimeController *)v20 managementState];
  LOBYTE(v8) = v18;
  v10 = _NSConcreteStackBlock;
  v11 = -1073741824;
  v12 = 0;
  v13 = sub_1001496C0;
  v14 = &unk_10032D9C0;
  objc_copyWeak(&v15, &location);
  v16 = v18;
  [(STManagementState *)v9 setScreenTimeEnabled:v8 & 1 completionHandler:&v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)controllerWasPopped
{
  v2 = [(BuddyScreenTimeController *)self buddyPreferences];
  [(BYPreferencesController *)v2 setObject:&__kCFBooleanFalse forKey:@"ScreenTimePresented"];

  v3 = [(BuddyScreenTimeController *)self paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v3 clearActionForFeature:0];
}

- (void)setupSkipped
{
  v2 = [(BuddyScreenTimeController *)self runState];
  v3 = [(BYRunState *)v2 hasCompletedInitialRun];

  if (v3)
  {
    v4 = [(BuddyScreenTimeController *)self buddyPreferences];
    [(BYPreferencesController *)v4 setObject:&__kCFBooleanTrue forKey:@"ScreenTimePresented"];

    v5 = [(BuddyScreenTimeController *)self delegate];
    [(BFFFlowItemDelegate *)v5 flowItemDone:self];
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