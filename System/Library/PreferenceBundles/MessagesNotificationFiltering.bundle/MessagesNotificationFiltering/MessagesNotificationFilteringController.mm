@interface MessagesNotificationFilteringController
- (BOOL)isMessageSpamFilteringEnabled:(id)enabled;
- (MessagesNotificationFilteringController)init;
- (id)alertCount:(id)count;
- (id)promotionsNotificationsValue:(id)value;
- (id)safetyMonitorUseCriticalAlertsValue:(id)value;
- (id)sosAlertingUseCriticalAlertsValue:(id)value;
- (id)specifiers;
- (id)transactionsNotificationsValue:(id)value;
- (id)unknownSendersNotificationsValue:(id)value;
- (int64_t)_validateAlertCount:(int64_t)count;
- (void)setAlertCount:(id)count specifier:(id)specifier;
- (void)setPromotionsNotificationsValue:(id)value specifier:(id)specifier;
- (void)setSOSAlertingUseCriticalAlertsValue:(id)value specifier:(id)specifier;
- (void)setSafetyMonitorUseCriticalAlertsValue:(id)value specifier:(id)specifier;
- (void)setTransactionsNotificationsValue:(id)value specifier:(id)specifier;
- (void)setUnknownSendersNotificationsValue:(id)value specifier:(id)specifier;
@end

@implementation MessagesNotificationFilteringController

- (MessagesNotificationFilteringController)init
{
  v3.receiver = self;
  v3.super_class = MessagesNotificationFilteringController;
  return [(MessagesNotificationFilteringController *)&v3 init];
}

- (int64_t)_validateAlertCount:(int64_t)count
{
  if (count > 0xB)
  {
    return 2;
  }

  else
  {
    return qword_32E8[count];
  }
}

- (id)alertCount:(id)count
{
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
  keyExistsAndHasValidFormat = 0;
  v4 = [NSNumber numberWithInt:2];
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IncomingMessageAlertCount", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v6 = [NSNumber numberWithLong:[(MessagesNotificationFilteringController *)self _validateAlertCount:AppIntegerValue]];

    v4 = v6;
  }

  return v4;
}

- (void)setAlertCount:(id)count specifier:(id)specifier
{
  CFPreferencesSetAppValue(@"IncomingMessageAlertCount", count, @"com.apple.MobileSMS");
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.IncomingMessageAlertCount.changed", 0, 0, 1u);
  sub_F04();
  v6 = objc_opt_new();
  if (PSIsNanoMirroringDomain())
  {
    v5 = [NSSet setWithObject:@"IncomingMessageAlertCount"];
    [v6 synchronizeUserDefaultsDomain:@"com.apple.MobileSMS" keys:v5];
  }
}

- (id)unknownSendersNotificationsValue:(id)value
{
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
  keyExistsAndHasValidFormat = 0;
  v3 = [NSNumber numberWithBool:1];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"IncomingMessageAlertFiltrationUnknownSenders", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v5 = [NSNumber numberWithBool:AppBooleanValue == 0];

    v3 = v5;
  }

  return v3;
}

- (void)setUnknownSendersNotificationsValue:(id)value specifier:(id)specifier
{
  CFPreferencesSetAppValue(@"IncomingMessageAlertFiltrationUnknownSenders", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [value BOOLValue] ^ 1), @"com.apple.MobileSMS");
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.IncomingMessageAlertFiltrationUnknownSenders.changed", 0, 0, 1u);
  sub_F04();
  v7 = objc_opt_new();
  if (PSIsNanoMirroringDomain())
  {
    v5 = [NSSet setWithObject:@"IncomingMessageAlertFiltrationUnknownSenders"];
    [v7 synchronizeUserDefaultsDomain:@"com.apple.MobileSMS" keys:v5];
  }

  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v6, @"__kIMDBadgeUtilitiesRebuildUnreadMessageCountNotification", 0, 0, 1u);
}

- (id)transactionsNotificationsValue:(id)value
{
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
  keyExistsAndHasValidFormat = 0;
  v3 = [NSNumber numberWithBool:1];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"IncomingMessageAlertFiltrationTransactions", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v5 = [NSNumber numberWithBool:AppBooleanValue == 0];

    v3 = v5;
  }

  return v3;
}

- (void)setTransactionsNotificationsValue:(id)value specifier:(id)specifier
{
  CFPreferencesSetAppValue(@"IncomingMessageAlertFiltrationTransactions", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [value BOOLValue] ^ 1), @"com.apple.MobileSMS");
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.IncomingMessageAlertFiltrationTransactions.changed", 0, 0, 1u);
  sub_F04();
  v6 = objc_opt_new();
  if (PSIsNanoMirroringDomain())
  {
    v5 = [NSSet setWithObject:@"IncomingMessageAlertFiltrationTransactions"];
    [v6 synchronizeUserDefaultsDomain:@"com.apple.MobileSMS" keys:v5];
  }
}

- (id)promotionsNotificationsValue:(id)value
{
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
  keyExistsAndHasValidFormat = 0;
  v3 = [NSNumber numberWithBool:1];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"IncomingMessageAlertFiltrationPromotions", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v5 = [NSNumber numberWithBool:AppBooleanValue == 0];

    v3 = v5;
  }

  return v3;
}

- (void)setPromotionsNotificationsValue:(id)value specifier:(id)specifier
{
  CFPreferencesSetAppValue(@"IncomingMessageAlertFiltrationPromotions", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [value BOOLValue] ^ 1), @"com.apple.MobileSMS");
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.IncomingMessageAlertFiltrationPromotions.changed", 0, 0, 1u);
  sub_F04();
  v6 = objc_opt_new();
  if (PSIsNanoMirroringDomain())
  {
    v5 = [NSSet setWithObject:@"IncomingMessageAlertFiltrationPromotions"];
    [v6 synchronizeUserDefaultsDomain:@"com.apple.MobileSMS" keys:v5];
  }
}

- (BOOL)isMessageSpamFilteringEnabled:(id)enabled
{
  CFPreferencesSynchronize(@"com.apple.MobileSMS", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"IncomingMessageAlertSpamFiltration", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat))
  {
    v3 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (id)sosAlertingUseCriticalAlertsValue:(id)value
{
  isSOSMessagesUrgentAlertingEnabled = [sub_155C() isSOSMessagesUrgentAlertingEnabled];

  return [NSNumber numberWithBool:isSOSMessagesUrgentAlertingEnabled];
}

- (void)setSOSAlertingUseCriticalAlertsValue:(id)value specifier:(id)specifier
{
  valueCopy = value;
  v5 = sub_155C();
  bOOLValue = [valueCopy BOOLValue];

  [v5 setSOSMessagesUrgentAlertingEnabled:bOOLValue];
}

- (id)safetyMonitorUseCriticalAlertsValue:(id)value
{
  v3 = +[SMMobileSMSPreferencesUtilities criticalAlertPreference]== &dword_0 + 1;

  return [NSNumber numberWithInt:v3];
}

- (void)setSafetyMonitorUseCriticalAlertsValue:(id)value specifier:(id)specifier
{
  if ([value BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [SMMobileSMSPreferencesUtilities setCriticalAlertPreference:v4];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v56 = OBJC_IVAR___PSListController__specifiers;
    v58 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"BBSECTION_INFO_KEY"];
    v62 = objc_alloc_init(NSMutableArray);
    v61 = [NSBundle bundleForClass:objc_opt_class()];
    v60 = [v61 localizedStringForKey:@"ALERT_0_TIMES" value:&stru_8420 table:@"MessagesNotificationFiltering"];
    v68[0] = v60;
    v59 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [v59 localizedStringForKey:@"ALERT_1_TIME" value:&stru_8420 table:@"MessagesNotificationFiltering"];
    v68[1] = v4;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"ALERT_2_TIMES" value:&stru_8420 table:@"MessagesNotificationFiltering"];
    v68[2] = v6;
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ALERT_3_TIMES" value:&stru_8420 table:@"MessagesNotificationFiltering"];
    v68[3] = v8;
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"ALERT_5_TIMES" value:&stru_8420 table:@"MessagesNotificationFiltering"];
    v68[4] = v10;
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"ALERT_10_TIMES" value:&stru_8420 table:@"MessagesNotificationFiltering"];
    v68[5] = v12;
    v57 = [NSArray arrayWithObjects:v68 count:6];

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"REPEAT_ALERT" value:&stru_8420 table:@"MessagesNotificationFiltering"];
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setAlertCount:specifier:" get:"alertCount:" detail:objc_opt_class() cell:2 edit:0];

    [v15 setIdentifier:@"REPEAT_ALERT_ID"];
    [v15 setValues:&off_88B8 titles:v57];
    [v15 setProperty:v58 forKey:@"BBSECTION_INFO_KEY"];
    [v15 setProperty:&__kCFBooleanFalse forKey:PSDeferItemSelectionKey];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"REPEAT_ALERT_FOOTER_TEXT" value:&stru_8420 table:@"MessagesNotificationFiltering"];
    [v15 setProperty:v17 forKey:PSStaticTextMessageKey];

    [v62 addObject:v15];
    v18 = +[IMFeatureFlags sharedFeatureFlags];
    LOBYTE(v17) = [v18 isPriorityMessagesEnabled];

    if (v17)
    {
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v21 = [PSSpecifier groupSpecifierWithID:@"ALLOW_NOTIFICATIONS_GROUP_ID"];
      [v21 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
      [v62 addObject:v21];
      v22 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = [v22 localizedStringForKey:@"ALLOW_NOTIFICATIONS_GROUP_NAME" value:&stru_8420 table:@"MessagesNotificationFiltering"];

      [v21 setName:v20];
      v23 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"UNKNOWN_SENDERS" value:&stru_8420 table:@"MessagesNotificationFiltering"];

      v19 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:"setUnknownSendersNotificationsValue:specifier:" get:"unknownSendersNotificationsValue:" detail:0 cell:6 edit:0];
      [v19 setIdentifier:@"UNKNOWN_SENDER_CELL_ID"];
      [v62 addObject:v19];
      if ([(MessagesNotificationFilteringController *)self isMessageSpamFilteringEnabled:0])
      {
        v25 = [NSBundle bundleForClass:objc_opt_class()];
        v26 = [v25 localizedStringForKey:@"TRANSACTIONAL_SENDER_CELL_TITLE" value:&stru_8420 table:@"MessagesNotificationFiltering"];
        v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:"setTransactionsNotificationsValue:specifier:" get:"transactionsNotificationsValue:" detail:0 cell:6 edit:0];

        [v27 setIdentifier:@"TRANSACTIONAL_SENDER_CELL_ID"];
        [v62 addObject:v27];
        v28 = [NSBundle bundleForClass:objc_opt_class()];
        v29 = [v28 localizedStringForKey:@"PROMOTIONAL_SENDER_CELL_TITLE" value:&stru_8420 table:@"MessagesNotificationFiltering"];
        v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:self set:"setPromotionsNotificationsValue:specifier:" get:"promotionsNotificationsValue:" detail:0 cell:6 edit:0];

        [v30 setIdentifier:@"PROMOTIONAL_SENDER_CELL_ID"];
        [v62 addObject:v30];
      }
    }

    v64 = 0;
    v65 = &v64;
    v66 = 0x2050000000;
    v31 = qword_C288;
    v67 = qword_C288;
    if (!qword_C288)
    {
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_26B4;
      v63[3] = &unk_81F8;
      v63[4] = &v64;
      sub_26B4(v63);
      v31 = v65[3];
    }

    v32 = v31;
    _Block_object_dispose(&v64, 8);
    currentNotificationSettingsCenter = [v31 currentNotificationSettingsCenter];
    v34 = [currentNotificationSettingsCenter notificationSourceWithIdentifier:@"com.apple.MobileSMS"];

    sourceSettings = [v34 sourceSettings];
    notificationSettings = [sourceSettings notificationSettings];
    criticalAlertSetting = [notificationSettings criticalAlertSetting];

    if (criticalAlertSetting == &dword_0 + 2)
    {
      v38 = [PSSpecifier groupSpecifierWithID:@"SOS_ALERTING_GROUP_ID"];
      [v38 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
      [v62 addObject:v38];
      v39 = [NSBundle bundleForClass:objc_opt_class()];
      v40 = [v39 localizedStringForKey:@"RECEIVE_AS_CRITICAL_ALERTS_GROUP_NAME" value:&stru_8420 table:@"MessagesNotificationFiltering"];

      [v38 setName:v40];
      v41 = [NSBundle bundleForClass:objc_opt_class()];
      v42 = [v41 localizedStringForKey:@"SOS_ALERTING_RECEIVE_AS_CRITICAL_CELL_TITLE" value:&stru_8420 table:@"MessagesNotificationFiltering"];
      v43 = [PSSpecifier preferenceSpecifierNamed:v42 target:self set:"setSOSAlertingUseCriticalAlertsValue:specifier:" get:"sosAlertingUseCriticalAlertsValue:" detail:0 cell:6 edit:0];

      [v43 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
      [v43 setIdentifier:@"SOS_ALERTING_RECEIVE_AS_CRITICAL_CELL_ID"];
      [v62 addObject:v43];
      v44 = [NSBundle bundleForClass:objc_opt_class()];
      v45 = [v44 localizedStringForKey:@"SOS_ALERTING_GROUP_FOOTER" value:&stru_8420 table:@"MessagesNotificationFiltering"];

      [v38 setProperty:v45 forKey:PSFooterTextGroupKey];
    }

    else
    {
      v43 = v19;
      v40 = v20;
    }

    v46 = +[IMFeatureFlags sharedFeatureFlags];
    isZelkovaEnabled = [v46 isZelkovaEnabled];

    if ((isZelkovaEnabled & (criticalAlertSetting == &dword_0 + 2)) == 1 && [(MessagesNotificationFilteringController *)self showSafetyMonitorUseCriticalAlertsSwitch])
    {
      v48 = [PSSpecifier groupSpecifierWithID:@"SAFETY_MONITOR_GROUP_ID"];
      [v48 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
      [v62 addObject:v48];
      v49 = [NSBundle bundleForClass:objc_opt_class()];
      v50 = [v49 localizedStringForKey:@"SAFETY_MONITOR_RECEIVE_AS_CRITICAL_CELL_TITLE" value:&stru_8420 table:@"MessagesNotificationFiltering"];
      v51 = [PSSpecifier preferenceSpecifierNamed:v50 target:self set:"setSafetyMonitorUseCriticalAlertsValue:specifier:" get:"safetyMonitorUseCriticalAlertsValue:" detail:0 cell:6 edit:0];

      [v51 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
      [v51 setIdentifier:@"SAFETY_MONITOR_RECEIVE_AS_CRITICAL_CELL_ID"];
      [v62 addObject:v51];
      v52 = [NSBundle bundleForClass:objc_opt_class()];
      v53 = [v52 localizedStringForKey:@"SAFETY_MONITOR_GROUP_FOOTER" value:&stru_8420 table:@"MessagesNotificationFiltering"];

      [v48 setProperty:v53 forKey:PSFooterTextGroupKey];
    }

    else
    {
      v51 = v43;
    }

    v54 = *&self->PSListController_opaque[v56];
    *&self->PSListController_opaque[v56] = v62;

    v3 = *&self->PSListController_opaque[v56];
  }

  return v3;
}

@end