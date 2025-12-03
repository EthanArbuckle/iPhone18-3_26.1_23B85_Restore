@interface HPRFSessionTrackerAppAutoPauseController
- (HPRFSessionTrackerAppAutoPauseController)init;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)isAutoPauseEnabled;
- (id)isCyclingAutoPauseEnabled;
- (id)isRunningAutoPauseEnabled;
- (id)specifiers;
- (void)dealloc;
@end

@implementation HPRFSessionTrackerAppAutoPauseController

- (HPRFSessionTrackerAppAutoPauseController)init
{
  v5.receiver = self;
  v5.super_class = HPRFSessionTrackerAppAutoPauseController;
  v2 = [(HPRFSessionTrackerAppAutoPauseController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_612C, @"NanoLifestyleSessionTrackerAppPreferencesChangedNotification", 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = HPRFSessionTrackerAppAutoPauseController;
  [(HPRFSessionTrackerAppAutoPauseController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = [(HPRFSessionTrackerAppAutoPauseController *)self loadSpecifiersFromPlistName:@"SessionTrackerAutoPause" target:self];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"AUTO_PAUSE_ENABLED_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];
  [(HPRFSessionTrackerAppAutoPauseController *)self setTitle:v5];

  v6 = [v3 specifierForID:@"WorkoutAutoPauseSwitch"];
  if (v6)
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"AUTO_PAUSE_ENABLED_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings"];

    [v6 setName:v8];
  }

  isAutoPauseEnabled = [(HPRFSessionTrackerAppAutoPauseController *)self isAutoPauseEnabled];
  bOOLValue = [isAutoPauseEnabled BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v11 = [v3 specifierForID:@"AutoPauseWorkoutTypesGroup"];
    [v3 removeObject:v11];

    v12 = [v3 specifierForID:@"WorkoutAutoPauseRunning"];
    [v3 removeObject:v12];

    v13 = [v3 specifierForID:@"WorkoutAutoPauseCycling"];
    [v3 removeObject:v13];
  }

  v14 = OBJC_IVAR___PSListController__specifiers;
  v15 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v16 = v3;

  v17 = *&self->BPSNotificationAppController_opaque[v14];
  v18 = v17;

  return v17;
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  bundle = [(HPRFSessionTrackerAppAutoPauseController *)self bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  return bundleIdentifier;
}

- (id)isAutoPauseEnabled
{
  v2 = FIUIIsAutoPauseEnabled();

  return [NSNumber numberWithBool:v2];
}

- (id)isRunningAutoPauseEnabled
{
  v2 = FIUIIsRunningAutoPauseEnabled();

  return [NSNumber numberWithBool:v2];
}

- (id)isCyclingAutoPauseEnabled
{
  v2 = FIUIIsCyclingAutoPauseEnabled();

  return [NSNumber numberWithBool:v2];
}

@end