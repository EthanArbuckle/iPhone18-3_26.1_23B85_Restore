@interface HPRFSessionTrackerMirroringController
- (HPRFSessionTrackerMirroringController)init;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)isMirrorModeEnabled;
- (id)specifiers;
- (int64_t)mirrorSetting;
- (void)dealloc;
- (void)selectMirrorSettingSpecifier;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HPRFSessionTrackerMirroringController

- (HPRFSessionTrackerMirroringController)init
{
  v5.receiver = self;
  v5.super_class = HPRFSessionTrackerMirroringController;
  v2 = [(HPRFSessionTrackerMirroringController *)&v5 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1764C, @"NanoLifestyleSessionTrackerAppPreferencesChangedNotification", 0, 0);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = HPRFSessionTrackerMirroringController;
  [(HPRFSessionTrackerMirroringController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HPRFSessionTrackerMirroringController;
  [(HPRFSessionTrackerMirroringController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"IPHONE_MIRRORING_LABEL" value:&stru_35B68 table:@"SessionTrackerAppSettings-kahana"];
  [(HPRFSessionTrackerMirroringController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = [(HPRFSessionTrackerMirroringController *)self loadSpecifiersFromPlistName:@"SessionTrackerMirroringSettings" target:self];
  v4 = OBJC_IVAR___PSListController__specifiers;
  v5 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v6 = v3;

  [(HPRFSessionTrackerMirroringController *)self selectMirrorSettingSpecifier];
  v7 = *&self->BPSNotificationAppController_opaque[v4];
  v8 = v7;

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HPRFSessionTrackerMirroringController *)self indexForIndexPath:v7];
  v9 = [*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 identifier];
  v11 = [v10 isEqualToString:@"LIVE_ACTIVITY_TIME_ONLY_ID"];

  if (v11)
  {
    v12 = 0;
LABEL_5:
    [(HPRFSessionTrackerMirroringController *)self setMirrorSetting:v12];
    goto LABEL_6;
  }

  v13 = [v9 identifier];
  v14 = [v13 isEqualToString:@"LIVE_ACTIVITY_ALL_METRICS_ID"];

  if (v14)
  {
    v12 = 1;
    goto LABEL_5;
  }

LABEL_6:
  v15.receiver = self;
  v15.super_class = HPRFSessionTrackerMirroringController;
  [(HPRFSessionTrackerMirroringController *)&v15 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  v2 = [(HPRFSessionTrackerMirroringController *)self bundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)isMirrorModeEnabled
{
  v2 = FIMirrorModeEnabled();

  return [NSNumber numberWithBool:v2];
}

- (int64_t)mirrorSetting
{
  v2 = FIWorkoutMirroringSetting();
  v3 = [v2 integerValue];

  return v3;
}

- (void)selectMirrorSettingSpecifier
{
  v3 = [(HPRFSessionTrackerMirroringController *)self mirrorSetting];
  v4 = OBJC_IVAR___PSListController__specifiers;
  v5 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3 == 1)
  {
    v6 = @"LIVE_ACTIVITY_ALL_METRICS_ID";
  }

  else
  {
    v6 = @"LIVE_ACTIVITY_TIME_ONLY_ID";
  }

  v8 = [*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] specifierForID:v6];
  v7 = [*&self->BPSNotificationAppController_opaque[v4] specifierForID:@"LIVE_ACTIVITY_GROUP_ID"];
  [v7 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];
}

@end