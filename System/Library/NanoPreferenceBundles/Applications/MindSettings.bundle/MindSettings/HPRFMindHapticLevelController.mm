@interface HPRFMindHapticLevelController
+ (id)mindHapticLevel;
- (HPRFMindHapticLevelController)init;
- (id)applicationBundleIdentifier;
- (id)bundle;
- (id)localizedPaneTitle;
- (id)specifiers;
- (void)dealloc;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HPRFMindHapticLevelController

+ (id)mindHapticLevel
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"HapticLevel", kNLMindPreferencesDomain, &keyExistsAndHasValidFormat);
  v3 = 2;
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppIntegerValue;
  }

  v4 = @"PROMINENT_ID";
  if (v3 == 3)
  {
    v4 = @"MINIMAL_ID";
  }

  if (v3 == 1)
  {
    v5 = @"NONE_ID";
  }

  else
  {
    v5 = v4;
  }

  v6 = sub_3A68(v5);

  return v6;
}

- (HPRFMindHapticLevelController)init
{
  v6.receiver = self;
  v6.super_class = HPRFMindHapticLevelController;
  v2 = [(HPRFMindHapticLevelController *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;
  }

  return v2;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = HPRFMindHapticLevelController;
  [(HPRFMindHapticLevelController *)&v9 viewDidLoad];
  localizedPaneTitle = [(HPRFMindHapticLevelController *)self localizedPaneTitle];
  [(HPRFMindHapticLevelController *)self setTitle:localizedPaneTitle];

  objc_initWeak(&location, self);
  v4 = kNLMindPreferencesChangedNotification;
  v5 = &_dispatch_main_q;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3DF0;
  v6[3] = &unk_18A70;
  objc_copyWeak(&v7, &location);
  notify_register_dispatch(v4, &self->_notifyToken, &_dispatch_main_q, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }

  v4.receiver = self;
  v4.super_class = HPRFMindHapticLevelController;
  [(HPRFMindHapticLevelController *)&v4 dealloc];
}

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PANE_TITLE" value:&stru_19170 table:@"MindBreathingHapticLevel"];

  return v3;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = [PSSpecifier groupSpecifierWithID:@"MIND_HAPTIC_LEVEL_GROUP_ID"];
    [v6 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v7 = sub_4170();
    v8 = [v7 hk_map:&stru_18BA8];
    v20 = v6;
    v9 = [NSArray arrayWithObjects:&v20 count:1];
    v10 = [v9 arrayByAddingObjectsFromArray:v8];

    v11 = *&self->BPSNotificationAppController_opaque[v2];
    *&self->BPSNotificationAppController_opaque[v2] = v10;
    v12 = v10;

    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"HapticLevel", kNLMindPreferencesDomain, &keyExistsAndHasValidFormat);
    v14 = 2;
    if (keyExistsAndHasValidFormat)
    {
      v14 = AppIntegerValue;
    }

    v15 = @"PROMINENT_ID";
    if (v14 == 3)
    {
      v15 = @"MINIMAL_ID";
    }

    if (v14 == 1)
    {
      v16 = @"NONE_ID";
    }

    else
    {
      v16 = v15;
    }

    v17 = [*&self->BPSNotificationAppController_opaque[v2] specifierForID:v16];
    [v6 setProperty:v17 forKey:PSRadioGroupCheckedSpecifierKey];
    v4 = *&self->BPSNotificationAppController_opaque[v2];
  }

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(HPRFMindHapticLevelController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = sub_4170();
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_4530;
  v24[3] = &unk_18BD0;
  v11 = v9;
  v25 = v11;
  v12 = [v10 hk_firstObjectPassingTest:v24];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    if ([v14 isEqualToString:@"NONE_ID"])
    {
      v15 = 1;
    }

    else if ([v14 isEqualToString:@"MINIMAL_ID"])
    {
      v15 = 3;
    }

    else
    {
      [v14 isEqualToString:@"PROMINENT_ID"];
      v15 = 2;
    }

    v16 = [NSNumber numberWithInteger:v15];
    v17 = kNLMindPreferencesDomain;
    CFPreferencesSetAppValue(@"HapticLevel", v16, kNLMindPreferencesDomain);
    CFPreferencesAppSynchronize(v17);
    syncManager = self->_syncManager;
    v26 = @"HapticLevel";
    v19 = [NSArray arrayWithObjects:&v26 count:1];
    v20 = [NSSet setWithArray:v19];
    [(NPSManager *)syncManager synchronizeUserDefaultsDomain:v17 keys:v20];
  }

  [(HPRFMindHapticLevelController *)self reloadSpecifiers];
  WeakRetained = objc_loadWeakRetained(&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSViewController__parentController]);
  specifier = [(HPRFMindHapticLevelController *)self specifier];
  [WeakRetained reloadSpecifier:specifier];

  v23.receiver = self;
  v23.super_class = HPRFMindHapticLevelController;
  [(HPRFMindHapticLevelController *)&v23 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)applicationBundleIdentifier
{
  bundle = [(HPRFMindHapticLevelController *)self bundle];
  bundleIdentifier = [bundle bundleIdentifier];

  return bundleIdentifier;
}

@end