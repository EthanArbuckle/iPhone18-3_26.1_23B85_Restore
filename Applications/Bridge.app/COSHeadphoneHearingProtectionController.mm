@interface COSHeadphoneHearingProtectionController
- (COSHeadphoneHearingProtectionController)init;
- (id)creatNotificationDataStructure:(id)structure toDate:(id)date;
- (id)getHeadphoneLevelLimitEnabled;
- (id)getHeadphoneLevelLimitSetting;
- (id)getHeadphoneNotificationsEnabled;
- (id)headphoneLevelLimitDescriptionSpecifier;
- (id)headphoneLevelLimitGroupSpecifier;
- (id)headphoneLevelLimitSliderSpecifier;
- (id)headphoneLevelLimitSwitchSpecifier;
- (id)headphoneNotificationsGroupSpecifier;
- (id)headphoneNotificationsSwitchSpecifier;
- (id)headphoneWeeklyNotificationDescriptionSpecifier;
- (id)hkQueryForSampleType:(id)type predicate:(id)predicate sortDescriptors:(id)descriptors notificationData:(id)data;
- (id)specifiers;
- (id)startDate;
- (id)updateHeadphoneLevelLimitDescriptionText;
- (id)updateHeadphoneLevelLimitText;
- (id)weeklyNotificationCount:(id)count;
- (void)dealloc;
- (void)loadView;
- (void)openAboutHeadphoneNotifications;
- (void)openHealthArticleSafeListening;
- (void)openHealthPrivacySettings;
- (void)queryNotificationCountsFromDate:(id)date toDate:(id)toDate;
- (void)setHeadphoneLevelLimitEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setHeadphoneLevelLimitValue:(id)value forSpecifier:(id)specifier;
- (void)setHeadphoneNotificationsEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)updateNotificationCountsForData:(id)data;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSHeadphoneHearingProtectionController

- (COSHeadphoneHearingProtectionController)init
{
  v6.receiver = self;
  v6.super_class = COSHeadphoneHearingProtectionController;
  v2 = [(COSHeadphoneHearingProtectionController *)&v6 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = sub_10009C1DC();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_10009C184, v4, 0, 1024);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = sub_10009C1DC();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);
  v5.receiver = self;
  v5.super_class = COSHeadphoneHearingProtectionController;
  [(COSHeadphoneHearingProtectionController *)&v5 dealloc];
}

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = COSHeadphoneHearingProtectionController;
  [(COSHeadphoneHearingProtectionController *)&v21 loadView];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"HEADPHONE_HEARING_PROTECTION" value:&stru_10026E598 table:@"Sounds"];
  [(COSHeadphoneHearingProtectionController *)self setTitle:v4];

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v5 = qword_1002BD510;
  v26 = qword_1002BD510;
  if (!qword_1002BD510)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10009F714;
    v22[3] = &unk_1002680D0;
    v22[4] = &v23;
    sub_10009F714(v22);
    v5 = v24[3];
  }

  v6 = v5;
  _Block_object_dispose(&v23, 8);
  v7 = objc_alloc_init(v5);
  audioSettingsManager = self->_audioSettingsManager;
  self->_audioSettingsManager = v7;

  audioSettingsManager = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v10 = sub_10009C630();
  v11 = [audioSettingsManager getPreferenceFor:v10];
  [(COSHeadphoneHearingProtectionController *)self setLevelLimitThreshold:v11];

  v12 = objc_alloc_init(NSNumberFormatter);
  [v12 setNumberStyle:1];
  [v12 setMaximumFractionDigits:0];
  v13 = [NSNumber numberWithInt:0];
  v14 = [v12 stringFromNumber:v13];
  [v12 setNotANumberSymbol:v14];

  [(COSHeadphoneHearingProtectionController *)self setNumberFormatter:v12];
  v15 = objc_alloc_init(NSDateFormatter);
  v16 = +[NSLocale currentLocale];
  [v15 setLocale:v16];

  [v15 setDateFormat:@"MMM"];
  [(COSHeadphoneHearingProtectionController *)self setMonthFormatter:v15];
  v17 = objc_alloc_init(NSDateFormatter);
  v18 = +[NSLocale currentLocale];
  [v17 setLocale:v18];

  [v17 setDateFormat:@"M"];
  [(COSHeadphoneHearingProtectionController *)self setMonthNumberFormatter:v17];
  v19 = objc_alloc_init(HKHealthStore);
  healthStore = self->_healthStore;
  self->_healthStore = v19;

  self->_weeklyNotificationCount = 0;
}

- (void)viewWillAppear:(BOOL)appear
{
  v19.receiver = self;
  v19.super_class = COSHeadphoneHearingProtectionController;
  [(COSHeadphoneHearingProtectionController *)&v19 viewWillAppear:appear];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v4 bundleURL];

  v6 = [_NSLocalizedStringResource alloc];
  v7 = +[NSLocale currentLocale];
  v8 = [v6 initWithKey:@"HEADPHONE_HEARING_PROTECTION" table:@"Sounds" locale:v7 bundleURL:bundleURL];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [v9 initWithKey:@"SOUNDS" table:@"Settings" locale:v10 bundleURL:bundleURL];

  v20 = v11;
  v12 = [NSArray arrayWithObjects:&v20 count:1];
  v13 = [NSURL URLWithString:@"bridge:root=SOUNDS_ID&path=HEADPHONE_LEVEL_LIMIT_SETTING"];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"SOUNDS_ID" title:v8 localizedNavigationComponents:v12 deepLink:v13];

  startDate = [(COSHeadphoneHearingProtectionController *)self startDate];
  endDate = [(COSHeadphoneHearingProtectionController *)self endDate];
  [(COSHeadphoneHearingProtectionController *)self queryNotificationCountsFromDate:startDate toDate:endDate];

  audioSettingsManager = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v17 = sub_10009C630();
  v18 = [audioSettingsManager getPreferenceFor:v17];
  [(COSHeadphoneHearingProtectionController *)self setLevelLimitThreshold:v18];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v4)
  {
    goto LABEL_11;
  }

  v5 = objc_opt_new();
  headphoneNotificationsGroupSpecifier = [(COSHeadphoneHearingProtectionController *)self headphoneNotificationsGroupSpecifier];
  [v5 addObject:headphoneNotificationsGroupSpecifier];

  audioSettingsManager = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v8 = sub_10009CC04();
  v9 = [audioSettingsManager getNanoPreferenceFor:v8];
  bOOLValue = [v9 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    headphoneNotificationsSwitchSpecifier = [(COSHeadphoneHearingProtectionController *)self headphoneNotificationsSwitchSpecifier];
    [v5 addObject:headphoneNotificationsSwitchSpecifier];
  }

  audioSettingsManager2 = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v13 = sub_10009CD08();
  v14 = [audioSettingsManager2 getNanoPreferenceFor:v13];
  if ([v14 BOOLValue])
  {

LABEL_7:
    headphoneWeeklyNotificationDescriptionSpecifier = [(COSHeadphoneHearingProtectionController *)self headphoneWeeklyNotificationDescriptionSpecifier];
    [v5 addObject:headphoneWeeklyNotificationDescriptionSpecifier];

    goto LABEL_8;
  }

  audioSettingsManager3 = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v16 = sub_10009CC04();
  v17 = [audioSettingsManager3 getNanoPreferenceFor:v16];
  bOOLValue2 = [v17 BOOLValue];

  if (bOOLValue2)
  {
    goto LABEL_7;
  }

LABEL_8:
  headphoneLevelLimitGroupSpecifier = [(COSHeadphoneHearingProtectionController *)self headphoneLevelLimitGroupSpecifier];
  [v5 addObject:headphoneLevelLimitGroupSpecifier];

  headphoneLevelLimitSwitchSpecifier = [(COSHeadphoneHearingProtectionController *)self headphoneLevelLimitSwitchSpecifier];
  [v5 addObject:headphoneLevelLimitSwitchSpecifier];

  audioSettingsManager4 = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v23 = sub_10009CE0C();
  v24 = [audioSettingsManager4 getNanoPreferenceFor:v23];
  bOOLValue3 = [v24 BOOLValue];

  if (bOOLValue3)
  {
    headphoneLevelLimitDescriptionSpecifier = [(COSHeadphoneHearingProtectionController *)self headphoneLevelLimitDescriptionSpecifier];
    [v5 addObject:headphoneLevelLimitDescriptionSpecifier];

    headphoneLevelLimitSliderSpecifier = [(COSHeadphoneHearingProtectionController *)self headphoneLevelLimitSliderSpecifier];
    [v5 addObject:headphoneLevelLimitSliderSpecifier];
  }

  v28 = *&self->BPSListController_opaque[v3];
  *&self->BPSListController_opaque[v3] = v5;

  v4 = *&self->BPSListController_opaque[v3];
LABEL_11:

  return v4;
}

- (id)headphoneNotificationsGroupSpecifier
{
  v3 = [PSSpecifier groupSpecifierWithID:@"COSHeadphoneNotificationsGroupKey"];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"HEADPHONE_LEVEL_NOTIFICATIONS_FOOTER" value:&stru_10026E598 table:@"Sounds"];

  v6 = PSFooterHyperlinkViewActionKey;
  [v3 setProperty:@"openAboutHeadphoneNotifications" forKey:PSFooterHyperlinkViewActionKey];
  audioSettingsManager = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v8 = sub_10009CC04();
  v9 = [audioSettingsManager getNanoPreferenceFor:v8];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"HEADPHONE_LEVEL_NOTIFICATIONS_GROUP" value:&stru_10026E598 table:@"Sounds"];
    [v3 setName:v12];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"HEADPHONE_LEVEL_NOTIFICATIONS_MANDATORY" value:&stru_10026E598 table:@"Sounds"];
    +[NSBundle mainBundle];
    v16 = v15 = self;
    v17 = @"LEARN_MORE_IN_HEALTH_LINK";
    v18 = [v16 localizedStringForKey:@"LEARN_MORE_IN_HEALTH_LINK" value:&stru_10026E598 table:@"Sounds"];
    v19 = [NSString stringWithFormat:v14, v18];
    v20 = [NSString stringWithFormat:v5, v19];

    v21 = BPSRemoteUISetupStyle_ptr;
    self = v15;
  }

  else
  {
    v22 = +[NSBundle mainBundle];
    v17 = @"LEARN_MORE_IN_HEALTH_LINK";
    v23 = [v22 localizedStringForKey:@"LEARN_MORE_IN_HEALTH_LINK" value:&stru_10026E598 table:@"Sounds"];
    v20 = [NSString stringWithFormat:v5, v23];

    audioSettingsManager2 = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
    v25 = sub_10009D3A0();
    v26 = [audioSettingsManager2 getNanoPreferenceFor:v25];
    bOOLValue2 = [v26 BOOLValue];

    if ((bOOLValue2 & 1) == 0)
    {
      v28 = +[NSBundle mainBundle];
      [v28 localizedStringForKey:@"HEADPHONE_LEVEL_NOTIFICATIONS_DISABLED_FOOTER" value:&stru_10026E598 table:@"Sounds"];
      v29 = v40 = self;
      v30 = +[NSBundle mainBundle];
      v17 = @"HEALTH_PRIVACY_SETTINGS_LINK";
      v31 = [v30 localizedStringForKey:@"HEALTH_PRIVACY_SETTINGS_LINK" value:&stru_10026E598 table:@"Sounds"];
      v32 = [NSString stringWithFormat:v29, v31];

      self = v40;
      [v3 setProperty:@"openHealthPrivacySettings" forKey:v6];
      v20 = v32;
    }

    v21 = BPSRemoteUISetupStyle_ptr;
  }

  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  [v3 setProperty:v34 forKey:PSFooterCellClassGroupKey];

  [v3 setProperty:v20 forKey:PSFooterHyperlinkViewTitleKey];
  mainBundle = [v21[501] mainBundle];
  v36 = [mainBundle localizedStringForKey:v17 value:&stru_10026E598 table:@"Sounds"];
  v42.location = [v20 rangeOfString:v36];
  v37 = NSStringFromRange(v42);
  [v3 setProperty:v37 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v38 = [NSValue valueWithNonretainedObject:self];
  [v3 setProperty:v38 forKey:PSFooterHyperlinkViewTargetKey];

  return v3;
}

- (id)headphoneNotificationsSwitchSpecifier
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"HEADPHONE_LEVEL_NOTIFICATIONS_SWITCH" value:&stru_10026E598 table:@"Sounds"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setHeadphoneNotificationsEnabled:forSpecifier:" get:"getHeadphoneNotificationsEnabled" detail:0 cell:6 edit:0];

  [v5 setProperty:@"COSHeadphoneNotificationsSwitchKey" forKey:PSIDKey];
  audioSettingsManager = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v7 = sub_10009D3A0();
  v8 = [audioSettingsManager getNanoPreferenceFor:v7];
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 BOOLValue]);
  [v5 setProperty:v9 forKey:PSEnabledKey];

  return v5;
}

- (id)headphoneWeeklyNotificationDescriptionSpecifier
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"HEADPHONE_LEVEL_WEEKLY_NOTIFICATIONS" value:&stru_10026E598 table:@"Sounds"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:"weeklyNotificationCount:" detail:0 cell:4 edit:0];

  [v5 setProperty:self->_weeklyNotificationData forKey:@"NotificationDataKey"];
  [v5 setProperty:@"COSHeadphoneWeeklyNotificationsKey" forKey:PSIDKey];
  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];

  return v5;
}

- (id)headphoneLevelLimitGroupSpecifier
{
  v2 = [PSSpecifier groupSpecifierWithID:@"COSHeadphoneLevelLimitGroupKey"];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"HEADPHONE_LEVEL_LIMIT_SELECTION_FOOTER" value:&stru_10026E598 table:@"Sounds"];
  [v2 setProperty:v4 forKey:PSFooterTextGroupKey];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"HEADPHONE_LEVEL_LIMIT_SELECTION_FOOTER" value:&stru_10026E598 table:@"Sounds"];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"LEARN_MORE_IN_HEALTH_LINK" value:&stru_10026E598 table:@"Sounds"];
  v9 = [NSString stringWithFormat:v6, v8];

  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v2 setProperty:v11 forKey:PSFooterCellClassGroupKey];

  [v2 setProperty:v9 forKey:PSFooterHyperlinkViewTitleKey];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"LEARN_MORE_IN_HEALTH_LINK" value:&stru_10026E598 table:@"Sounds"];
  v19.location = [v9 rangeOfString:v13];
  v14 = NSStringFromRange(v19);
  [v2 setProperty:v14 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v15 = [NSValue valueWithNonretainedObject:self];
  [v2 setProperty:v15 forKey:PSFooterHyperlinkViewTargetKey];

  [v2 setProperty:@"openHealthArticleSafeListening" forKey:PSFooterHyperlinkViewActionKey];

  return v2;
}

- (id)headphoneLevelLimitSwitchSpecifier
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"HEADPHONE_LEVEL_LIMIT_LABEL" value:&stru_10026E598 table:@"Sounds"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setHeadphoneLevelLimitEnabled:forSpecifier:" get:"getHeadphoneLevelLimitEnabled" detail:0 cell:6 edit:0];

  [v5 setProperty:@"COSHeadphoneLevelLimitSwitchKey" forKey:PSIDKey];

  return v5;
}

- (id)headphoneLevelLimitDescriptionSpecifier
{
  updateHeadphoneLevelLimitText = [(COSHeadphoneHearingProtectionController *)self updateHeadphoneLevelLimitText];
  v4 = [PSSpecifier preferenceSpecifierNamed:updateHeadphoneLevelLimitText target:self set:0 get:"updateHeadphoneLevelLimitDescriptionText" detail:0 cell:4 edit:0];

  [v4 setProperty:@"COSHeadphoneLevelLimitDescriptionKey" forKey:PSIDKey];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];

  return v4;
}

- (id)headphoneLevelLimitSliderSpecifier
{
  v2 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setHeadphoneLevelLimitValue:forSpecifier:" get:"getHeadphoneLevelLimitSetting" detail:0 cell:5 edit:0];
  [v2 setProperty:@"COSHeadphoneLevelLimitSliderKey" forKey:PSIDKey];
  [v2 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v2 setProperty:&__kCFBooleanTrue forKey:PSSliderIsSegmented];
  [v2 setProperty:&__kCFBooleanTrue forKey:PSSliderIsContinuous];
  [v2 setProperty:&off_100281BB8 forKey:PSSliderSegmentCount];
  [v2 setProperty:&off_100281BD0 forKey:PSControlMinimumKey];
  [v2 setProperty:&off_100281BE8 forKey:PSControlMaximumKey];
  v3 = [UIImage systemImageNamed:@"speaker.2.fill"];
  v4 = +[UIColor systemGrayColor];
  v5 = [v3 imageWithTintColor:v4 renderingMode:1];
  [v2 setProperty:v5 forKey:PSSliderLeftImageKey];

  v6 = [UIImage systemImageNamed:@"speaker.3.fill"];
  v7 = +[UIColor systemGrayColor];
  v8 = [v6 imageWithTintColor:v7 renderingMode:1];
  [v2 setProperty:v8 forKey:PSSliderRightImageKey];

  [v2 setProperty:&__kCFBooleanTrue forKey:PSIconImageShouldFlipForRightToLeftKey];

  return v2;
}

- (id)updateHeadphoneLevelLimitText
{
  audioSettingsManager = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v4 = sub_10009C630();
  v5 = [audioSettingsManager getNanoPreferenceFor:v4];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"HEADPHONE_LEVEL_LIMIT_SET_LEVEL" value:&stru_10026E598 table:@"Sounds"];
  numberFormatter = [(COSHeadphoneHearingProtectionController *)self numberFormatter];
  v9 = [numberFormatter stringFromNumber:v5];
  v10 = [NSString stringWithFormat:v7, v9];

  return v10;
}

- (id)updateHeadphoneLevelLimitDescriptionText
{
  audioSettingsManager = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v3 = sub_10009C630();
  v4 = [audioSettingsManager getNanoPreferenceFor:v3];

  stringValue = [v4 stringValue];
  v6 = [NSString stringWithFormat:@"HEADPHONE_LEVEL_LIMIT_%@_INFO", stringValue];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:v6 value:&stru_10026E598 table:@"Sounds"];

  return v8;
}

- (void)openHealthPrivacySettings
{
  v2 = [NSURL URLWithString:@"Bridge:root=PRIVACY_ID&path=HeadphoneAudio"];
  BPSOpenSensitiveURLAsync();
}

- (void)openAboutHeadphoneNotifications
{
  v3 = objc_alloc_init(COSHeadphoneNotificationsController);
  v4 = objc_alloc_init(UINavigationItem);
  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismiss"];
  [v4 setRightBarButtonItem:v5];
  v6 = [UINavigationBar alloc];
  view = [(COSHeadphoneHearingProtectionController *)self view];
  [view frame];
  v9 = v8;
  navigationController = [(COSHeadphoneHearingProtectionController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v12 = [v6 initWithFrame:{0.0, 0.0, v9}];

  v16 = v4;
  v13 = [NSArray arrayWithObjects:&v16 count:1];
  [v12 setItems:v13];

  v14 = +[UIColor systemBackgroundColor];
  [v12 setBarTintColor:v14];

  [v12 setTranslucent:0];
  [v12 _setHidesShadow:1];
  view2 = [(COSHeadphoneNotificationsController *)v3 view];
  [view2 addSubview:v12];

  [(COSHeadphoneHearingProtectionController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)openHealthArticleSafeListening
{
  v2 = UIApp;
  v3 = [NSURL URLWithString:@"x-apple-Health://HearingAppPlugin.healthplugin/SafeHeadphoneListening"];
  [v2 openURL:v3 withCompletionHandler:0];
}

- (void)setHeadphoneLevelLimitEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  [(COSHeadphoneHearingProtectionController *)self setLocalChange:1];
  if ([enabledCopy BOOLValue])
  {
    headphoneLevelLimitDescriptionSpecifier = [(COSHeadphoneHearingProtectionController *)self headphoneLevelLimitDescriptionSpecifier];
    v12[0] = headphoneLevelLimitDescriptionSpecifier;
    headphoneLevelLimitSliderSpecifier = [(COSHeadphoneHearingProtectionController *)self headphoneLevelLimitSliderSpecifier];
    v12[1] = headphoneLevelLimitSliderSpecifier;
    v8 = [NSArray arrayWithObjects:v12 count:2];
    [(COSHeadphoneHearingProtectionController *)self insertContiguousSpecifiers:v8 afterSpecifierID:@"COSHeadphoneLevelLimitSwitchKey" animated:1];
  }

  else
  {
    [(COSHeadphoneHearingProtectionController *)self removeSpecifierID:@"COSHeadphoneLevelLimitDescriptionKey" animated:1];
    [(COSHeadphoneHearingProtectionController *)self removeSpecifierID:@"COSHeadphoneLevelLimitSliderKey" animated:1];
  }

  audioSettingsManager = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v10 = sub_10009CE0C();
  v11 = [audioSettingsManager setNanoPreferenceFor:v10 value:enabledCopy];
}

- (id)getHeadphoneLevelLimitEnabled
{
  audioSettingsManager = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v3 = sub_10009CE0C();
  v4 = [audioSettingsManager getNanoPreferenceFor:v3];

  return v4;
}

- (void)setHeadphoneLevelLimitValue:(id)value forSpecifier:(id)specifier
{
  valueCopy = value;
  [(COSHeadphoneHearingProtectionController *)self setLocalChange:1];
  levelLimitThreshold = [(COSHeadphoneHearingProtectionController *)self levelLimitThreshold];

  if (levelLimitThreshold != valueCopy)
  {
    [(COSHeadphoneHearingProtectionController *)self setLevelLimitThreshold:valueCopy];
    audioSettingsManager = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
    v7 = sub_10009C630();
    v8 = [audioSettingsManager setNanoPreferenceFor:v7 value:valueCopy];

    v9 = OBJC_IVAR___PSListController__specifiers;
    v10 = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers] specifierForID:@"COSHeadphoneLevelLimitDescriptionKey"];
    updateHeadphoneLevelLimitText = [(COSHeadphoneHearingProtectionController *)self updateHeadphoneLevelLimitText];
    [v10 setName:updateHeadphoneLevelLimitText];

    v12 = [*&self->BPSListController_opaque[v9] specifierForID:@"COSHeadphoneLevelLimitDescriptionKey"];
    [(COSHeadphoneHearingProtectionController *)self reloadSpecifier:v12];
  }
}

- (id)getHeadphoneLevelLimitSetting
{
  audioSettingsManager = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v3 = sub_10009C630();
  v4 = [audioSettingsManager getNanoPreferenceFor:v3];

  return v4;
}

- (void)setHeadphoneNotificationsEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  [(COSHeadphoneHearingProtectionController *)self setLocalChange:1];
  if ([enabledCopy BOOLValue])
  {
    headphoneWeeklyNotificationDescriptionSpecifier = [(COSHeadphoneHearingProtectionController *)self headphoneWeeklyNotificationDescriptionSpecifier];
    [(COSHeadphoneHearingProtectionController *)self insertSpecifier:headphoneWeeklyNotificationDescriptionSpecifier afterSpecifierID:@"COSHeadphoneNotificationsSwitchKey" animated:1];
  }

  else
  {
    [(COSHeadphoneHearingProtectionController *)self removeSpecifierID:@"COSHeadphoneWeeklyNotificationsKey" animated:1];
  }

  audioSettingsManager = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v7 = sub_10009CD08();
  v8 = [audioSettingsManager setNanoPreferenceFor:v7 value:enabledCopy];
}

- (id)getHeadphoneNotificationsEnabled
{
  audioSettingsManager = [(COSHeadphoneHearingProtectionController *)self audioSettingsManager];
  v3 = sub_10009CD08();
  v4 = [audioSettingsManager getNanoPreferenceFor:v3];

  return v4;
}

- (id)weeklyNotificationCount:(id)count
{
  numberFormatter = [(COSHeadphoneHearingProtectionController *)self numberFormatter];
  v5 = [NSNumber numberWithInt:self->_weeklyNotificationCount];
  v6 = [numberFormatter stringFromNumber:v5];

  return v6;
}

- (void)updateNotificationCountsForData:(id)data
{
  dataCopy = data;
  v26 = objc_alloc_init(NSMutableArray);
  v4 = [dataCopy objectAtIndex:0];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [dataCopy objectAtIndex:1];
      v8 = [v7 objectAtIndexedSubscript:v6];
      v27 = v8;

      v32[0] = @"month";
      v31 = [dataCopy objectAtIndex:0];
      v30 = [v31 objectAtIndexedSubscript:v6];
      v33[0] = v30;
      v32[1] = @"count";
      v29 = [dataCopy objectAtIndex:1];
      v28 = [v29 objectAtIndexedSubscript:v6];
      v33[1] = v28;
      v32[2] = @"order";
      v9 = [NSNumber numberWithInt:v6];
      stringValue = [v9 stringValue];
      v33[2] = stringValue;
      v32[3] = @"desc";
      integerValue = [v8 integerValue];
      v12 = +[NSBundle mainBundle];
      v13 = v12;
      if (integerValue == 1)
      {
        v14 = @"HEADPHONE_LEVEL_NOTIFICATION_DESCRIPTION_SINGULAR";
      }

      else
      {
        v14 = @"HEADPHONE_LEVEL_NOTIFICATIONS_DESCRIPTION_PLURAL";
      }

      v15 = [v12 localizedStringForKey:v14 value:&stru_10026E598 table:@"Sounds"];
      v16 = [NSString stringWithFormat:@"%@ %@", v8, v15];
      v33[3] = v16;
      v32[4] = @"date";
      v17 = [dataCopy objectAtIndex:2];
      v18 = [v17 objectAtIndexedSubscript:v6];
      v33[4] = v18;
      v19 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:5];
      [(NSArray *)v26 setObject:v19 atIndexedSubscript:v6];

      ++v6;
      v20 = [dataCopy objectAtIndex:0];
      v21 = [v20 count];
    }

    while (v21 > v6);
  }

  weeklyNotificationData = self->_weeklyNotificationData;
  self->_weeklyNotificationData = v26;

  v23 = [dataCopy objectAtIndex:1];
  v24 = [v23 valueForKeyPath:@"@sum.self"];
  -[COSHeadphoneHearingProtectionController setWeeklyNotificationCount:](self, "setWeeklyNotificationCount:", [v24 intValue]);
}

- (id)startDate
{
  v2 = +[NSDate date];
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 components:2097404 fromDate:v2];
  [v4 setMonth:{objc_msgSend(v4, "month") - 5}];
  [v4 setDay:1];
  v5 = [v3 dateFromComponents:v4];
  v6 = [v3 startOfDayForDate:v5];

  return v6;
}

- (void)queryNotificationCountsFromDate:(id)date toDate:(id)toDate
{
  toDateCopy = toDate;
  dateCopy = date;
  v12 = [HKObjectType categoryTypeForIdentifier:HKCategoryTypeIdentifierHeadphoneAudioExposureEvent];
  v8 = [HKQuery predicateForSamplesWithStartDate:dateCopy endDate:toDateCopy options:0];
  v9 = [[NSSortDescriptor alloc] initWithKey:HKSampleSortIdentifierEndDate ascending:0];
  v10 = [(COSHeadphoneHearingProtectionController *)self creatNotificationDataStructure:dateCopy toDate:toDateCopy];

  v11 = [(COSHeadphoneHearingProtectionController *)self hkQueryForSampleType:v12 predicate:v8 sortDescriptors:v9 notificationData:v10];

  [(HKHealthStore *)self->_healthStore executeQuery:v11];
}

- (id)hkQueryForSampleType:(id)type predicate:(id)predicate sortDescriptors:(id)descriptors notificationData:(id)data
{
  typeCopy = type;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  dataCopy = data;
  objc_initWeak(&location, self);
  v14 = [HKSampleQuery alloc];
  v23 = descriptorsCopy;
  v15 = [NSArray arrayWithObjects:&v23 count:1];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10009EE38;
  v19[3] = &unk_10026A760;
  v16 = dataCopy;
  v20 = v16;
  objc_copyWeak(&v21, &location);
  v17 = [v14 initWithSampleType:typeCopy predicate:predicateCopy limit:0 sortDescriptors:v15 resultsHandler:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v17;
}

- (id)creatNotificationDataStructure:(id)structure toDate:(id)date
{
  structureCopy = structure;
  v19 = objc_alloc_init(NSMutableArray);
  v21 = objc_alloc_init(NSMutableArray);
  v20 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  v6 = +[NSCalendar currentCalendar];
  v7 = objc_alloc_init(NSDateComponents);
  for (i = 0; i != 6; ++i)
  {
    [v7 setMonth:i];
    v9 = [v6 dateByAddingComponents:v7 toDate:structureCopy options:0];
    [v5 addObject:v9];
    monthFormatter = [(COSHeadphoneHearingProtectionController *)self monthFormatter];
    v11 = [monthFormatter stringFromDate:v9];

    monthNumberFormatter = [(COSHeadphoneHearingProtectionController *)self monthNumberFormatter];
    v13 = [monthNumberFormatter stringFromDate:v9];
    v14 = [NSString stringWithFormat:@"MONTH_%@", v13];

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:v14 value:&stru_10026E598 table:@"Sounds"];

    [v19 addObject:v11];
    [v20 addObject:v16];
    [v21 addObject:&off_100281C00];
  }

  v17 = objc_alloc_init(NSMutableArray);
  [v17 insertObject:v19 atIndex:0];
  [v17 insertObject:v21 atIndex:1];
  [v17 insertObject:v5 atIndex:2];

  return v17;
}

@end