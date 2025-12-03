@interface CSLPRFWakeScreenSettingsViewController
- (BOOL)isWakeSetToShort;
- (CSLPRFWakeScreenSettingsViewController)init;
- (NPSDomainAccessor)systemPrefsDomainAccessor;
- (id)_onTapGroup;
- (id)specifiers;
- (void)_synchronizeDomainWithAccessor:(id)accessor keys:(id)keys withCompletion:(id)completion;
- (void)dealloc;
- (void)handleDidUnpair;
- (void)registry:(id)registry changed:(id)changed properties:(id)properties;
- (void)setBacklightExtendValue:(int64_t)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CSLPRFWakeScreenSettingsViewController

- (CSLPRFWakeScreenSettingsViewController)init
{
  v12.receiver = self;
  v12.super_class = CSLPRFWakeScreenSettingsViewController;
  v2 = [(CSLPRFWakeScreenSettingsViewController *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1384, @"com.apple.Carousel.gizmoAutoScreenOffSecondsDidChange", 0, 0);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v2, sub_1384, @"CSLOnWakeTimeoutPreferenceChangedNotification", 0, 0);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, v2, sub_1384, @"com.apple.Carousel.EnableRotateToWakeChangedNotification", 0, 0);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v8, v2, sub_1384, @"com.apple.Carousel.kDisallowWakeGestureSetting", 0, 0);
    v9 = +[PDRRegistry sharedInstance];
    [v9 addDelegate:v2];

    systemPrefsDomainAccessor = [(CSLPRFWakeScreenSettingsViewController *)v2 systemPrefsDomainAccessor];
    [(CSLPRFWakeScreenSettingsViewController *)v2 _synchronizeDomainWithAccessor:systemPrefsDomainAccessor keys:0 withCompletion:0];
  }

  return v2;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CSLPRFWakeScreenSettingsViewController *)self indexForIndexPath:pathCopy];
  v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  identifier = [v9 identifier];
  v11 = [identifier isEqualToString:@"SHORT_WAKE_ID"];

  if (v11)
  {
    v12 = 15;
LABEL_5:
    [(CSLPRFWakeScreenSettingsViewController *)self setBacklightExtendValue:v12];
    goto LABEL_6;
  }

  identifier2 = [v9 identifier];
  v14 = [identifier2 isEqualToString:@"LONG_WAKE_ID"];

  if (v14)
  {
    v12 = 70;
    goto LABEL_5;
  }

LABEL_6:
  v15.receiver = self;
  v15.super_class = CSLPRFWakeScreenSettingsViewController;
  [(CSLPRFWakeScreenSettingsViewController *)&v15 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = CSLPRFWakeScreenSettingsViewController;
  [(CSLPRFWakeScreenSettingsViewController *)&v4 dealloc];
}

- (void)handleDidUnpair
{
  systemPrefsDomainAccessor = self->_systemPrefsDomainAccessor;
  self->_systemPrefsDomainAccessor = 0;
  _objc_release_x1();
}

- (NPSDomainAccessor)systemPrefsDomainAccessor
{
  systemPrefsDomainAccessor = self->_systemPrefsDomainAccessor;
  if (!systemPrefsDomainAccessor)
  {
    v4 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.system.prefs"];
    v5 = self->_systemPrefsDomainAccessor;
    self->_systemPrefsDomainAccessor = v4;

    systemPrefsDomainAccessor = self->_systemPrefsDomainAccessor;
  }

  return systemPrefsDomainAccessor;
}

- (void)_synchronizeDomainWithAccessor:(id)accessor keys:(id)keys withCompletion:(id)completion
{
  accessorCopy = accessor;
  keysCopy = keys;
  completionCopy = completion;
  v11 = cslprf_sessions_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    domain = [accessorCopy domain];
    *buf = 138412546;
    v22 = domain;
    v23 = 2112;
    v24 = keysCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "synchronizing %@ %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1738;
  v16[3] = &unk_C2C8;
  objc_copyWeak(&v20, buf);
  v13 = accessorCopy;
  v17 = v13;
  v14 = keysCopy;
  v18 = v14;
  v15 = completionCopy;
  v19 = v15;
  [v13 synchronizeWithCompletionHandler:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

- (id)specifiers
{
  v3 = +[NSMutableArray array];
  _onTapGroup = [(CSLPRFWakeScreenSettingsViewController *)self _onTapGroup];
  [v3 addObjectsFromArray:_onTapGroup];

  v5 = [v3 copy];
  v6 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v5;

  return v3;
}

- (void)setBacklightExtendValue:(int64_t)value
{
  v10 = [(CSLPRFWakeScreenSettingsViewController *)self specifierForID:@"ON_TAP_GROUP_ID"];
  if (value >= 16)
  {
    v5 = @"LONG_WAKE_ID";
  }

  else
  {
    v5 = @"SHORT_WAKE_ID";
  }

  v6 = [(CSLPRFWakeScreenSettingsViewController *)self specifierForID:v5];
  [v10 setProperty:v6 forKey:PSRadioGroupCheckedSpecifierKey];
  [(CSLPRFWakeScreenSettingsViewController *)self reloadSpecifier:v10 animated:0];
  systemPrefsDomainAccessor = [(CSLPRFWakeScreenSettingsViewController *)self systemPrefsDomainAccessor];
  [systemPrefsDomainAccessor setInteger:value forKey:@"AutoScreenOffSeconds"];

  systemPrefsDomainAccessor2 = [(CSLPRFWakeScreenSettingsViewController *)self systemPrefsDomainAccessor];
  v9 = [NSSet setWithObject:@"AutoScreenOffSeconds"];
  [(CSLPRFWakeScreenSettingsViewController *)self _synchronizeDomainWithAccessor:systemPrefsDomainAccessor2 keys:v9 withCompletion:0];
}

- (BOOL)isWakeSetToShort
{
  v5 = 0;
  systemPrefsDomainAccessor = [(CSLPRFWakeScreenSettingsViewController *)self systemPrefsDomainAccessor];
  v3 = [systemPrefsDomainAccessor integerForKey:@"AutoScreenOffSeconds" keyExistsAndHasValidFormat:&v5];

  return v3 < 16 || (v5 & 1) == 0;
}

- (id)_onTapGroup
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ON_TAP_HEADER" value:&stru_C5E8 table:@"CompanionWakeSettings"];
  v5 = [PSSpecifier groupSpecifierWithID:@"ON_TAP_GROUP_ID" name:v4];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ON_TAP_FOOTER" value:&stru_C5E8 table:@"CompanionWakeSettings"];
  [v5 setProperty:v7 forKey:PSFooterTextGroupKey];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"WAKE_SHORT_INTERVAL" value:&stru_C5E8 table:@"CompanionWakeSettings"];
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

  v11 = PSIDKey;
  [v10 setProperty:@"SHORT_WAKE_ID" forKey:PSIDKey];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"WAKE_LONG_INTERVAL" value:&stru_C5E8 table:@"CompanionWakeSettings"];
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v14 setProperty:@"LONG_WAKE_ID" forKey:v11];
  if ([(CSLPRFWakeScreenSettingsViewController *)self isWakeSetToShort])
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  [v5 setProperty:v15 forKey:PSRadioGroupCheckedSpecifierKey];
  [v5 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v18[0] = v5;
  v18[1] = v10;
  v18[2] = v14;
  v16 = [NSArray arrayWithObjects:v18 count:3];

  return v16;
}

- (void)registry:(id)registry changed:(id)changed properties:(id)properties
{
  changedCopy = changed;
  if ([properties containsObject:PDRDevicePropertyKeyIsPaired] && (objc_msgSend(changedCopy, "isPaired") & 1) == 0)
  {
    [(CSLPRFWakeScreenSettingsViewController *)self handleDidUnpair];
  }
}

@end