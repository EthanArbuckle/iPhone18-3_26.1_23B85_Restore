@interface BulletinBoardAppDetailController
+ (void)emitNavigationEventForSpecifier:(id)specifier viewController:(id)controller;
- (BOOL)_areAlwaysDeliverImmediatelyNotificationsNotEnabledForScheduledDeliveryForSectionInfo:(id)info;
- (BOOL)isApplicationHiddenForSectionInfo:(id)info;
- (BOOL)isEffectiveGlobalScheduledDeliverySettingEnabled;
- (BulletinBoardAppDetailController)init;
- (BulletinBoardAppDetailControllerDelegate)delegate;
- (NSString)sectionID;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_alertDeliveryTypeSettingsSpecifierForSectionInfo:(id)info;
- (id)_alertSettingsGroupSpecifierForSectionInfo:(id)info;
- (id)_allowsNotificationsSettingGroupSpecifiersForSectionInfo:(id)info;
- (id)_allowsNotificationsSettingSpecifierForSectionInfo:(id)info;
- (id)_alwaysAllowedGroupSpecifiersForSectionInfo:(id)info;
- (id)_announceSettingsSpecifiersForSectionInfo:(id)info;
- (id)_badgesSettingSpecifierForSectionInfo:(id)info;
- (id)_bannerSettingSpecifierForSectionInfo:(id)info;
- (id)_bannerStyleSettingSpecifierForSectionInfo:(id)info;
- (id)_carPlaySettingSpecifierForSectionInfo:(id)info;
- (id)_contentPreviewSpecifierForSectionInfo:(id)info;
- (id)_criticalAlertSettingSpecifierForSectionInfo:(id)info;
- (id)_customSettings:(id)settings;
- (id)_customSoundSettingSpecifierForSectionInfo:(id)info;
- (id)_directMessagesSettingSpecifierForSectionInfo:(id)info;
- (id)_effectiveSectionInfoForSectionInfo:(id)info passingTest:(id)test;
- (id)_effectiveSectionInfoForSectionInfo:(id)info setting:(unint64_t)setting;
- (id)_effectiveSectionInfoForSectionInfo:(id)info setting:(unint64_t)setting pushSetting:(unint64_t)pushSetting;
- (id)_expirationTextForSectionInfo:(id)info;
- (id)_lockScreenAppearanceSettingsSpecifiersForSectionInfo:(id)info;
- (id)_notificationCenterSettingSpecifierForSectionInfo:(id)info;
- (id)_notificationDeliverySettingGroupSpecifiersForSectionInfo:(id)info;
- (id)_notificationGroupingGroupSpecifierForSectionInfo:(id)info;
- (id)_notificationGroupingSpecifierForSectionInfo:(id)info;
- (id)_prioritizationSpecifierForSectionInfo:(id)info;
- (id)_remoteNotificationsSettingSpecifierForSectionInfo:(id)info;
- (id)_soundSettingSpecifierForSectionInfo:(id)info;
- (id)_spokenNotificationsSpecifierForSectionInfo:(id)info;
- (id)_summarizationSpecifierForSectionInfo:(id)info;
- (id)_timeSensitiveSettingSpecifierForSectionInfo:(id)info;
- (id)_updateDetailsForDeliverySpecifier:(id)specifier;
- (id)_valueOfNotificationType:(unint64_t)type forSectionInfo:(id)info;
- (id)alertDeliveryDescriptor:(id)descriptor;
- (id)allowNotifications:(id)notifications;
- (id)allowRemoteNotifications:(id)notifications;
- (id)badges:(id)badges;
- (id)bannerSetting:(id)setting;
- (id)bannerStyle:(id)style;
- (id)criticalAlert:(id)alert;
- (id)directMessagesSetting:(id)setting;
- (id)notificationCenterSetting:(id)setting;
- (id)notificationGrouping:(id)grouping;
- (id)prioritizationSetting:(id)setting;
- (id)showsMessagePreview:(id)preview;
- (id)sounds:(id)sounds;
- (id)specifiers;
- (id)summarizationSetting:(id)setting;
- (id)timeSensitiveSetting:(id)setting;
- (id)viewInCarPlay:(id)play;
- (unint64_t)_generalSettingsInsertIndexForSpecifiers:(id)specifiers;
- (void)_loadGlobalPreviews;
- (void)_openAppNotificationSettings:(id)settings;
- (void)_setValue:(id)value notificationType:(unint64_t)type forSectionInfo:(id)info;
- (void)_updateBannerStyleForSectionInfo:(id)info animated:(BOOL)animated forSpecifiers:(id)specifiers;
- (void)_updateNotificationDeliverySettingForSpecifier:(id)specifier;
- (void)_updateSpecifiersWithSectionInfo:(id)info reloadRootSpecifier:(BOOL)specifier;
- (void)appDetailControllerWillDisappear:(id)disappear;
- (void)dealloc;
- (void)editScheduleDismissed:(id)dismissed;
- (void)emitNavigationEventForAppDetailController;
- (void)handleBannerStyleDidUpdateNotification:(id)notification;
- (void)handleNotificationGroupingDidUpdateNotification:(id)notification;
- (void)handleShowPreviewDidUpdateNotification:(id)notification;
- (void)reloadSpecifiers;
- (void)setAlertDeliveryDescriptor:(id)descriptor specifier:(id)specifier;
- (void)setAllowNotifications:(id)notifications specifier:(id)specifier;
- (void)setAllowRemoteNotifications:(id)notifications specifier:(id)specifier;
- (void)setBadges:(id)badges specifier:(id)specifier;
- (void)setBannerSetting:(id)setting specifier:(id)specifier;
- (void)setBannerStyle:(id)style specifier:(id)specifier;
- (void)setCriticalAlert:(id)alert specifier:(id)specifier;
- (void)setDirectMessagesSetting:(id)setting specifier:(id)specifier;
- (void)setNotificationCenterSetting:(id)setting specifier:(id)specifier;
- (void)setNotificationGrouping:(id)grouping specifier:(id)specifier;
- (void)setPrioritizationSetting:(id)setting specifier:(id)specifier;
- (void)setSectionInfo:(id)info forSectionID:(id)d;
- (void)setShowsMessagePreview:(id)preview specifier:(id)specifier;
- (void)setSounds:(id)sounds specifier:(id)specifier;
- (void)setSummarizationSetting:(id)setting specifier:(id)specifier;
- (void)setTimeSensitiveSetting:(id)setting specifier:(id)specifier;
- (void)setViewInCarPlay:(id)play specifier:(id)specifier;
- (void)settingsGateway:(id)gateway didUpdateSectionInfo:(id)info;
- (void)tappedEditSchedule:(id)schedule;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willBecomeActive;
@end

@implementation BulletinBoardAppDetailController

- (BulletinBoardAppDetailController)init
{
  v8.receiver = self;
  v8.super_class = BulletinBoardAppDetailController;
  v2 = [(BulletinBoardAppDetailController *)&v8 init];
  [(BulletinBoardAppDetailController *)v2 _loadGlobalPreviews];
  v3 = +[NCSettingsGatewayController sharedInstance];
  [v3 addObserver:v2];

  [NCRemoteNotificationsManager addObserver:v2];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:v2 selector:"handleBannerStyleDidUpdateNotification:" name:@"BannerStyleSpecifierDidUpdateNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:v2 selector:"handleShowPreviewDidUpdateNotification:" name:@"ShowPreviewAppSpecifierDidUpdateNotification" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:v2 selector:"handleNotificationGroupingDidUpdateNotification:" name:@"NotificationGroupingAppSpecifierDidUpdateNotification" object:0];

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[NCSettingsGatewayController sharedInstance];
  [v4 removeObserver:self];

  [NCRemoteNotificationsManager removeObserver:self];
  v5.receiver = self;
  v5.super_class = BulletinBoardAppDetailController;
  [(BulletinBoardAppDetailController *)&v5 dealloc];
}

- (void)_loadGlobalPreviews
{
  v3 = +[NCSettingsGatewayController sharedInstance];
  self->_globalContentPreviewSetting = [v3 effectiveGlobalContentPreviewsSetting];
}

- (unint64_t)_generalSettingsInsertIndexForSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [&off_51600 countByEnumeratingWithState:&v11 objects:v15 count:16];
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v6 = v4;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(&off_51600);
        }

        v9 = [specifiersCopy indexOfSpecifierWithID:*(*(&v11 + 1) + 8 * i)];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v5 = v9 + 1;
          goto LABEL_11;
        }
      }

      v6 = [&off_51600 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_11:

  return v5;
}

- (void)reloadSpecifiers
{
  savedSectionInfo = self->_savedSectionInfo;
  self->_savedSectionInfo = 0;

  bannerStyleSpecifier = self->_bannerStyleSpecifier;
  self->_bannerStyleSpecifier = 0;

  disallowedStateHiddenSpecifiers = self->_disallowedStateHiddenSpecifiers;
  self->_disallowedStateHiddenSpecifiers = 0;

  v6.receiver = self;
  v6.super_class = BulletinBoardAppDetailController;
  [(BulletinBoardAppDetailController *)&v6 reloadSpecifiers];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = OBJC_IVAR___PSViewController__specifier;
    v6 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"BBSECTION_INFO_KEY"];
    v7 = [v6 copy];
    savedSectionInfo = self->_savedSectionInfo;
    self->_savedSectionInfo = v7;

    v9 = v6;
    v10 = +[NSMutableArray array];
    if ([v9 authorizationStatus])
    {
      v11 = [(BulletinBoardAppDetailController *)self _allowsNotificationsSettingGroupSpecifiersForSectionInfo:v9];
      [v10 addObjectsFromArray:v11];

      v12 = [(BulletinBoardAppDetailController *)self _notificationDeliverySettingGroupSpecifiersForSectionInfo:v9];
      [v10 addObjectsFromArray:v12];

      v13 = [(BulletinBoardAppDetailController *)self _alwaysAllowedGroupSpecifiersForSectionInfo:v9];
      [v10 addObjectsFromArray:v13];

      v14 = [(BulletinBoardAppDetailController *)self _alertSettingsGroupSpecifierForSectionInfo:v9];
      [v10 addObjectsFromArray:v14];

      v15 = [(BulletinBoardAppDetailController *)self _announceSettingsSpecifiersForSectionInfo:v9];
      [v10 addObjectsFromArray:v15];

      v16 = [(BulletinBoardAppDetailController *)self _lockScreenAppearanceSettingsSpecifiersForSectionInfo:v9];
      [v10 addObjectsFromArray:v16];
    }

    if ([v9 criticalAlertSetting] || objc_msgSend(v9, "authorizationStatus"))
    {
      v17 = [(BulletinBoardAppDetailController *)self _customSettings:v9];
      [v10 addObjectsFromArray:v17];
    }

    self->_savedBannersAlertType = 1;
    [(BulletinBoardAppDetailController *)self _updateBannerStyleForSectionInfo:v9 animated:0 forSpecifiers:v10];
    v18 = +[MCProfileConnection sharedConnection];
    sectionID = [v9 sectionID];
    v20 = [v18 isNotificationsModificationAllowedForBundleID:sectionID];

    if ((v20 & 1) == 0)
    {
      v34 = v5;
      v35 = v3;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v33 = v10;
      v21 = v10;
      v22 = [v21 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v37;
        v25 = PSEnabledKey;
        do
        {
          v26 = 0;
          do
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v27 = *(*(&v36 + 1) + 8 * v26);
            v28 = [NSNumber numberWithBool:0];
            [v27 setProperty:v28 forKey:v25];

            v26 = v26 + 1;
          }

          while (v23 != v26);
          v23 = [v21 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v23);
      }

      v5 = v34;
      v3 = v35;
      v10 = v33;
    }

    v29 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v10;
    v30 = v10;

    name = [*&self->PSListController_opaque[v5] name];

    [(BulletinBoardAppDetailController *)self setTitle:name];
    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)_allowsNotificationsSettingGroupSpecifiersForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = [(BulletinBoardAppDetailController *)self _allowsNotificationsSettingSpecifierForSectionInfo:infoCopy];
  v6 = +[NSMutableArray array];
  if (v5)
  {
    v7 = [PSSpecifier groupSpecifierWithID:@"ALLOW_NOTIFICATIONS_GROUP_ID"];
    if ([infoCopy isAppClip])
    {
      sectionInfoSettings = [infoCopy sectionInfoSettings];
      isAuthorizedTemporarily = [sectionInfoSettings isAuthorizedTemporarily];

      if (isAuthorizedTemporarily)
      {
        v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
        v11 = [v10 localizedStringForKey:@"APP_CLIPS_EXPLANATION_FORMAT" value:&stru_4E3F0 table:@"NotificationsSettings"];
        v12 = BBSettingsDisplayNameForBBSection(infoCopy);
        v13 = [NSString stringWithFormat:v11, v12];

        [v7 setProperty:v13 forKey:PSFooterTextGroupKey];
      }
    }

    if ([(BulletinBoardAppDetailController *)self isApplicationHiddenForSectionInfo:infoCopy])
    {
      v14 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v15 = [v14 localizedStringForKey:@"APP_PROTECTION_HIDDEN_EXPLANATION" value:&stru_4E3F0 table:@"NotificationsSettings"];

      [v7 setProperty:v15 forKey:PSFooterTextGroupKey];
    }

    [v6 addObject:v7];
    [v6 addObject:v5];
  }

  return v6;
}

- (id)_notificationDeliverySettingGroupSpecifiersForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = objc_alloc_init(NSMutableArray);
  if (-[BulletinBoardAppDetailController isEffectiveGlobalScheduledDeliverySettingEnabled](self, "isEffectiveGlobalScheduledDeliverySettingEnabled") && [infoCopy authorizationStatus] != &dword_0 + 1)
  {
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v8 = [v7 localizedStringForKey:@"NOTIFICATION_DELIVERY" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v9 = [PSSpecifier groupSpecifierWithID:@"NOTIFICATION_DELIVERY_GROUP_ID" name:v8];

    [v9 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v5 addObject:v9];
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v11 = [v10 localizedStringForKey:@"NOTIFICATION_DELIVERY_IMMEDIATE" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v12 setButtonAction:"_updateNotificationDeliverySettingForSpecifier:"];
    [v12 setIdentifier:@"NOTIFICATION_DELIVERY_IMMEDIATE_ID"];
    v13 = [(BulletinBoardAppDetailController *)self _updateDetailsForDeliverySpecifier:v12];

    v14 = PSAllowMultilineTitleKey;
    [v13 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v13 setProperty:infoCopy forKey:@"BBSECTION_INFO_KEY"];
    v35 = v13;
    [v5 addObject:v13];
    v15 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v16 = [v15 localizedStringForKey:@"NOTIFICATION_DELIVERY_SCHEDULED" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v17 setButtonAction:"_updateNotificationDeliverySettingForSpecifier:"];
    [v17 setIdentifier:@"NOTIFICATION_DELIVERY_SCHEDULED_ID"];
    v18 = [(BulletinBoardAppDetailController *)self _updateDetailsForDeliverySpecifier:v17];

    [v18 setProperty:&__kCFBooleanTrue forKey:v14];
    [v18 setProperty:infoCopy forKey:@"BBSECTION_INFO_KEY"];
    [v5 addObject:v18];
    if ([infoCopy scheduledDeliverySetting] == &dword_0 + 2)
    {
      [v9 setProperty:v18 forKey:PSRadioGroupCheckedSpecifierKey];
      v19 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v20 = [v19 localizedStringForKey:@"NOTIFICATION_DELIVERY_SCHEDULED_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v21 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v22 = [v21 localizedStringForKey:@"NOTIFICATION_DELIVERY_SCHEDULED_EDIT_LINK" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v23 = [NSString stringWithFormat:@"%@ %@", v20, v22];

      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      [v9 setProperty:v25 forKey:PSFooterCellClassGroupKey];

      [v9 setProperty:v23 forKey:PSFooterHyperlinkViewTitleKey];
      v26 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v27 = [v26 localizedStringForKey:@"NOTIFICATION_DELIVERY_SCHEDULED_EDIT_LINK" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v37.location = [v23 rangeOfString:v27];
      v28 = NSStringFromRange(v37);
      [v9 setProperty:v28 forKey:PSFooterHyperlinkViewLinkRangeKey];

      v29 = [NSValue valueWithNonretainedObject:self];
      [v9 setProperty:v29 forKey:PSFooterHyperlinkViewTargetKey];

      v30 = NSStringFromSelector("tappedEditSchedule:");
      v31 = &PSFooterHyperlinkViewActionKey;
      v32 = v35;
    }

    else
    {
      v32 = v35;
      [v9 setProperty:v35 forKey:PSRadioGroupCheckedSpecifierKey];
      v23 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v30 = [v23 localizedStringForKey:@"NOTIFICATION_DELIVERY_IMMEDIATE_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v31 = &PSFooterTextGroupKey;
    }

    [v9 setProperty:v30 forKey:*v31];

    v33 = v5;
  }

  else
  {
    v6 = v5;
  }

  return v5;
}

- (id)_updateDetailsForDeliverySpecifier:(id)specifier
{
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  v5 = [identifier isEqualToString:@"NOTIFICATION_DELIVERY_IMMEDIATE_ID"];

  if (v5)
  {
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v7 = [v6 localizedStringForKey:@"NOTIFICATION_DELIVERY_IMMEDIATE_DESCRIPTION" value:&stru_4E3F0 table:@"NotificationsSettings"];

    v8 = [UIImage systemImageNamed:@"bell.fill"];
  }

  else
  {
    identifier2 = [specifierCopy identifier];
    v10 = [identifier2 isEqualToString:@"NOTIFICATION_DELIVERY_SCHEDULED_ID"];

    if (v10)
    {
      v11 = +[NCSettingsGatewayController sharedInstance];
      effectiveGlobalScheduledDeliverySetting = [v11 effectiveGlobalScheduledDeliverySetting];

      v13 = +[NCSettingsGatewayController sharedInstance];
      effectiveGlobalScheduledDeliveryTimes = [v13 effectiveGlobalScheduledDeliveryTimes];

      v15 = NCStringForScheduledDeliverySummary(effectiveGlobalScheduledDeliverySetting, effectiveGlobalScheduledDeliveryTimes);
      v16 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v17 = [v16 localizedStringForKey:@"NOTIFICATION_DELIVERY_SCHEDULED_DESCRIPTION" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v7 = [NSString stringWithFormat:v17, v15];

      v8 = [UIImage systemImageNamed:@"newspaper.fill"];
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }
  }

  [specifierCopy setProperty:objc_opt_class() forKey:PSCellClassKey];
  if (v7)
  {
    [specifierCopy setProperty:v7 forKey:PSTableCellSubtitleTextKey];
  }

  if (v8)
  {
    [specifierCopy setProperty:v8 forKey:PSIconImageKey];
  }

  return specifierCopy;
}

- (id)_alwaysAllowedGroupSpecifiersForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = +[NSMutableArray array];
  v6 = [(BulletinBoardAppDetailController *)self _criticalAlertSettingSpecifierForSectionInfo:infoCopy];
  v7 = [(BulletinBoardAppDetailController *)self _timeSensitiveSettingSpecifierForSectionInfo:infoCopy];
  v8 = [(BulletinBoardAppDetailController *)self _directMessagesSettingSpecifierForSectionInfo:infoCopy];
  v9 = v8;
  if (v6 || v7 || v8)
  {
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v11 = [v10 localizedStringForKey:@"ALWAYS_DELIVER_IMMEDIATELY" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v12 = [PSSpecifier groupSpecifierWithID:@"ALWAYS_ALLOWED_GROUP_ID" name:v11];

    [v5 bs_safeAddObject:v12];
    [v5 bs_safeAddObject:v6];
    [v5 bs_safeAddObject:v7];
    [v5 bs_safeAddObject:v9];
    if (v6)
    {
      v13 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v14 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"CRITICAL_ALERT_EXPLANATION"];
      v15 = [v13 localizedStringForKey:v14 value:&stru_4E3F0 table:@"NotificationsSettings"];
      [v12 setProperty:v15 forKey:PSFooterTextGroupKey];

      goto LABEL_26;
    }

    if (!-[BulletinBoardAppDetailController isEffectiveGlobalScheduledDeliverySettingEnabled](self, "isEffectiveGlobalScheduledDeliverySettingEnabled") || [infoCopy scheduledDeliverySetting] != &dword_0 + 2)
    {
      if (!v7)
      {
LABEL_27:

        goto LABEL_28;
      }

      v23 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v13 = [v23 localizedStringForKey:@"TIME_SENSITIVE_NOTIFICATIONS_DESCRIPTION_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];

      [v12 setProperty:v13 forKey:PSFooterTextGroupKey];
LABEL_26:

      goto LABEL_27;
    }

    v16 = &_s24ScreenContinuityServices15CompanionDeviceV06remoteA7PairingAC0G5StateOSgvg_ptr;
    if (v7)
    {
      v17 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v13 = [v17 localizedStringForKey:@"TIME_SENSITIVE_NOTIFICATIONS_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];

      if (v9)
      {
        v18 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
        v19 = [v18 localizedStringForKey:@"DIRECT_MESSAGES_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];

        v20 = v19;
        v33 = v19;
        if (v13 && v19)
        {
          v21 = v19;
          v31 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
          v22 = [v31 localizedStringForKey:@"DELIVER_IMMEDIATELY_FOOTER_CONJUNCTION" value:&stru_4E3F0 table:@"NotificationsSettings"];
          v30 = v21;
          v16 = &_s24ScreenContinuityServices15CompanionDeviceV06remoteA7PairingAC0G5StateOSgvg_ptr;
          v34 = [NSString stringWithFormat:v22, v13, v30];

LABEL_25:
          v32 = v16[427];
          v26 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
          v27 = [v26 localizedStringForKey:@"DELIVER_IMMEDIATELY_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];
          v28 = [v32 stringWithFormat:v27, v34];

          [v12 setProperty:v28 forKey:PSFooterTextGroupKey];
          goto LABEL_26;
        }

        v16 = &_s24ScreenContinuityServices15CompanionDeviceV06remoteA7PairingAC0G5StateOSgvg_ptr;
        if (!v13)
        {
          v25 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        v33 = 0;
        v25 = 0;
        v20 = 0;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v25 = v13;
    }

    else
    {
      if (!v9)
      {
        v25 = 0;
        v33 = 0;
        v20 = 0;
        goto LABEL_24;
      }

      v24 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v13 = [v24 localizedStringForKey:@"DIRECT_MESSAGES_FOOTER_LEADING" value:&stru_4E3F0 table:@"NotificationsSettings"];

      v25 = 0;
      v33 = v13;
    }

    v20 = v13;
LABEL_24:
    v34 = v20;
    v13 = v25;
    goto LABEL_25;
  }

LABEL_28:

  return v5;
}

- (id)_announceSettingsSpecifiersForSectionInfo:(id)info
{
  v3 = [(BulletinBoardAppDetailController *)self _spokenNotificationsSpecifierForSectionInfo:info];
  v4 = +[NSMutableArray array];
  if (v3)
  {
    v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v6 = [v5 localizedStringForKey:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_GROUP" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v7 = [PSSpecifier groupSpecifierWithID:@"SPOKEN_NOTIFICATIONS_ANNOUNCE_GROUP" name:v6];

    [v4 bs_safeAddObject:v7];
  }

  [v4 bs_safeAddObject:v3];

  return v4;
}

- (id)_alertSettingsGroupSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = +[NSMutableArray array];
  if ([infoCopy authorizationStatus] != &dword_0 + 1)
  {
    if ([(BulletinBoardAppDetailController *)self _areAlwaysDeliverImmediatelyNotificationsNotEnabledForScheduledDeliveryForSectionInfo:infoCopy])
    {
      v6 = [(BulletinBoardAppDetailController *)self _badgesSettingSpecifierForSectionInfo:infoCopy];
      if (v6)
      {
        v7 = [PSSpecifier groupSpecifierWithID:@"ALERT_SETTINGS_GROUP_ID"];
        [v5 bs_safeAddObject:v7];
      }

      [v5 bs_safeAddObject:v6];
    }

    else
    {
      v6 = [(BulletinBoardAppDetailController *)self _alertDeliveryTypeSettingsSpecifierForSectionInfo:infoCopy];
      v8 = [(BulletinBoardAppDetailController *)self _bannerStyleSettingSpecifierForSectionInfo:infoCopy];
      v9 = [(BulletinBoardAppDetailController *)self _customSoundSettingSpecifierForSectionInfo:infoCopy];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = [(BulletinBoardAppDetailController *)self _soundSettingSpecifierForSectionInfo:infoCopy];
      }

      v11 = [(BulletinBoardAppDetailController *)self _badgesSettingSpecifierForSectionInfo:infoCopy];
      v12 = [(BulletinBoardAppDetailController *)self _carPlaySettingSpecifierForSectionInfo:infoCopy];
      v13 = [(BulletinBoardAppDetailController *)self _remoteNotificationsSettingSpecifierForSectionInfo:infoCopy];
      v14 = v13;
      if (v6 || v8 || v9 || v10 || v11 || v12 || v13)
      {
        [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings", PSSpecifier];
        v15 = v21 = v8;
        v16 = [v15 localizedStringForKey:@"ALERT_SETTINGS_GROUP" value:&stru_4E3F0 table:@"NotificationsSettings"];
        [v20 groupSpecifierWithID:@"ALERT_SETTINGS_GROUP_ID" name:v16];
        v17 = v19 = v10;

        v8 = v21;
        [v5 bs_safeAddObject:v17];

        v10 = v19;
      }

      [v5 bs_safeAddObject:{v6, v19}];
      [v5 bs_safeAddObject:v8];
      [v5 bs_safeAddObject:v9];
      [v5 bs_safeAddObject:v10];
      [v5 bs_safeAddObject:v11];
      [v5 bs_safeAddObject:v12];
      [v5 bs_safeAddObject:v14];
    }
  }

  return v5;
}

- (id)_lockScreenAppearanceSettingsSpecifiersForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = +[NSMutableArray array];
  if ([infoCopy authorizationStatus] != &dword_0 + 1 || objc_msgSend(infoCopy, "criticalAlertSetting") == &dword_0 + 2)
  {
    v6 = [(BulletinBoardAppDetailController *)self _contentPreviewSpecifierForSectionInfo:infoCopy];
    v7 = [(BulletinBoardAppDetailController *)self _notificationGroupingSpecifierForSectionInfo:infoCopy];
    v8 = [(BulletinBoardAppDetailController *)self _prioritizationSpecifierForSectionInfo:infoCopy];
    v9 = [(BulletinBoardAppDetailController *)self _summarizationSpecifierForSectionInfo:infoCopy];
    v10 = v9;
    if (v6 || v7 || v8 || v9)
    {
      v11 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v12 = [v11 localizedStringForKey:@"LOCK_SCREEN_APPEARANCE" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v13 = [PSSpecifier groupSpecifierWithID:@"LOCK_SCREEN_APPEARANCE_GROUP_ID" name:v12];

      if (v10)
      {
        sectionID = [infoCopy sectionID];
        v15 = NCIsSummarizationFeatureEnabledForBundleIdentifier(sectionID);

        if ((v15 & 1) == 0)
        {
          [v10 setProperty:objc_opt_class() forKey:PSCellClassKey];
          v16 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
          v17 = [v16 localizedStringForKey:@"SUMMARIZATION_APP_LIST_DISABLED_APP_DISCLOSURE" value:&stru_4E3F0 table:@"NotificationsSettings"];
          [v10 setProperty:v17 forKey:PSTableCellSubtitleTextKey];
        }

        v18 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
        v19 = [v18 localizedStringForKey:@"SUMMARIZATION_EXPLANATION_SHORT" value:&stru_4E3F0 table:@"NotificationsSettings"];
        [v13 setProperty:v19 forKey:PSFooterTextGroupKey];
      }

      [v5 bs_safeAddObject:v13];
    }

    [v5 bs_safeAddObject:v6];
    [v5 bs_safeAddObject:v7];
    [v5 bs_safeAddObject:v8];
    [v5 bs_safeAddObject:v10];
  }

  return v5;
}

- (id)_contentPreviewSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:infoCopy setting:64];
  if (v5)
  {
    v26 = v5;
    v24 = [NSMutableArray alloc];
    selfCopy = self;
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v7 = [v6 localizedStringForKey:@"SHOW_PREVIEW_OPTION_ALWAYS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v27[0] = v7;
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v9 = [v8 localizedStringForKey:@"SHOW_PREVIEW_OPTION_UNLOCKED" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v27[1] = v9;
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v11 = [v10 localizedStringForKey:@"SHOW_PREVIEW_OPTION_NEVER" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v27[2] = v11;
    v12 = [NSArray arrayWithObjects:v27 count:3];
    v13 = [v24 initWithArray:v12];

    v14 = [NSNumber numberWithInteger:selfCopy->_globalContentPreviewSetting];
    v15 = [&off_51618 indexOfObject:v14];

    v16 = [v13 objectAtIndex:v15];
    v17 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v18 = [v17 localizedStringForKey:@"SHOW_PREVIEWS_DEFAULT" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v19 = [v16 stringByAppendingString:v18];
    [v13 setObject:v19 atIndexedSubscript:v15];

    v20 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v21 = [v20 localizedStringForKey:@"SHOW_PREVIEWS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:selfCopy set:"setShowsMessagePreview:specifier:" get:"showsMessagePreview:" detail:objc_opt_class() cell:2 edit:0];

    [v22 setProperty:infoCopy forKey:@"BBSECTION_INFO_KEY"];
    [v22 setIdentifier:@"SHOW_PREVIEW_APP_ID"];
    [v22 setValues:&off_51618 titles:v13];
    [v22 setProperty:&__kCFBooleanFalse forKey:PSDeferItemSelectionKey];
    [v22 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];

    v5 = v26;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_notificationGroupingGroupSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = +[NSMutableArray array];
  if ([infoCopy authorizationStatus] != &dword_0 + 1 || objc_msgSend(infoCopy, "criticalAlertSetting") == &dword_0 + 2)
  {
    v6 = [(BulletinBoardAppDetailController *)self _notificationGroupingSpecifierForSectionInfo:infoCopy];
    if (v6)
    {
      v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v8 = [v7 localizedStringForKey:@"LOCK_SCREEN_APPEARANCE" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v9 = [PSSpecifier groupSpecifierWithID:@"NOTIFICATION_GROUPING_GROUP_ID" name:v8];

      [v5 bs_safeAddObject:v9];
    }

    [v5 bs_safeAddObject:v6];
  }

  return v5;
}

- (id)_notificationGroupingSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  parentSection = [infoCopy parentSection];

  if (parentSection)
  {
    v6 = 0;
  }

  else
  {
    v18 = [NSMutableArray alloc];
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v8 = [v7 localizedStringForKey:@"NOTIFICATION_GROUPING_OPTION_AUTOMATIC" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v20[0] = v8;
    v9 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v10 = [v9 localizedStringForKey:@"NOTIFICATION_GROUPING_OPTION_BYAPP" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v20[1] = v10;
    [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v11 = v19 = self;
    v12 = [v11 localizedStringForKey:@"NOTIFICATION_GROUPING_OPTION_OFF" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v20[2] = v12;
    v13 = [NSArray arrayWithObjects:v20 count:3];
    v14 = [v18 initWithArray:v13];

    v15 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v16 = [v15 localizedStringForKey:@"NOTIFICATION_GROUPING" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v6 = [PSSpecifier preferenceSpecifierNamed:v16 target:v19 set:"setNotificationGrouping:specifier:" get:"notificationGrouping:" detail:objc_opt_class() cell:2 edit:0];

    [v6 setProperty:infoCopy forKey:@"BBSECTION_INFO_KEY"];
    [v6 setIdentifier:@"NOTIFICATION_GROUPING_APP_ID"];
    [v6 setValues:&off_51630 titles:v14];
    [v6 setProperty:&__kCFBooleanFalse forKey:PSDeferItemSelectionKey];
  }

  return v6;
}

- (id)_prioritizationSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:infoCopy setting:0x40000];
  if (v5 && [infoCopy authorizationStatus] != &dword_0 + 1 && objc_msgSend(v5, "prioritizationSetting") && (+[NCSettingsGatewayController sharedInstance](NCSettingsGatewayController, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "effectiveGlobalHighlightsSetting"), v6, v7 == &dword_0 + 2))
  {
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v9 = [v8 localizedStringForKey:@"PRIORITIZE_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"setPrioritizationSetting:specifier:" get:"prioritizationSetting:" detail:0 cell:6 edit:0];

    [v10 setIdentifier:@"PRIORITIZATION_ID"];
    [v10 setProperty:v5 forKey:@"BBSECTION_INFO_KEY"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setPrioritizationSetting:(id)setting specifier:(id)specifier
{
  settingCopy = setting;
  v9 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  LODWORD(specifier) = [settingCopy BOOLValue];

  if (specifier)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v9 setPrioritizationSetting:v7];
  sectionID = [v9 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v9 forSectionID:sectionID];
}

- (id)prioritizationSetting:(id)setting
{
  v3 = [setting propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 prioritizationSetting] == &dword_0 + 2);

  return v4;
}

- (id)_summarizationSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:infoCopy setting:0x20000];
  if (v5 && [infoCopy authorizationStatus] != &dword_0 + 1 && objc_msgSend(v5, "summarizationSetting") && (+[NCSettingsGatewayController sharedInstance](NCSettingsGatewayController, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "effectiveGlobalSummarizationSetting"), v6, v7 == &dword_0 + 2))
  {
    v8 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v9 = [v8 localizedStringForKey:@"SUMMARIZE_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"setSummarizationSetting:specifier:" get:"summarizationSetting:" detail:0 cell:6 edit:0];

    [v10 setIdentifier:@"SUMMARIZATION_ID"];
    [v10 setProperty:v5 forKey:@"BBSECTION_INFO_KEY"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setSummarizationSetting:(id)setting specifier:(id)specifier
{
  settingCopy = setting;
  v9 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  LODWORD(specifier) = [settingCopy BOOLValue];

  if (specifier)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v9 setSummarizationSetting:v7];
  sectionID = [v9 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v9 forSectionID:sectionID];
}

- (id)summarizationSetting:(id)setting
{
  v3 = [setting propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 summarizationSetting] == &dword_0 + 2);

  return v4;
}

- (id)_spokenNotificationsSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:infoCopy setting:1024];
  if (v5 && [infoCopy authorizationStatus] != &dword_0 + 1 && objc_msgSend(v5, "announceSetting") && (+[NCSettingsGatewayController sharedInstance](NCSettingsGatewayController, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "effectiveGlobalAnnounceSetting"), v6, v7 == &dword_0 + 2) && !-[BulletinBoardAppDetailController _areAlwaysDeliverImmediatelyNotificationsNotEnabledForScheduledDeliveryForSectionInfo:](self, "_areAlwaysDeliverImmediatelyNotificationsNotEnabledForScheduledDeliveryForSectionInfo:", infoCopy))
  {
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v11 = [v10 localizedStringForKey:@"SPOKEN_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v8 = [NCSpokenNotificationsAppDetailController spokenNotificationsSpecifierNamed:v11 sectionInfo:v5 showIcon:0 class:objc_opt_class()];

    [v8 setProperty:self forKey:kNotificationsSettingsDetailControllerDelegate];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_customSettings:(id)settings
{
  settingsCopy = settings;
  parentSection = [settingsCopy parentSection];
  if (parentSection || [settingsCopy authorizationStatus] == &dword_0 + 1 && objc_msgSend(settingsCopy, "criticalAlertSetting") != &dword_0 + 2)
  {
    v6 = 0;
    goto LABEL_15;
  }

  v6 = +[NSMutableArray array];
  v7 = [PSSpecifier groupSpecifierWithID:@"CUSTOM_SETTINGS_GROUP_ID"];
  [v6 addObject:v7];
  customSettingsBundle = [settingsCopy customSettingsBundle];

  if (customSettingsBundle)
  {
    v9 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v10 = [v9 localizedStringForKey:@"CUSTOM_SETTINGS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:2 edit:0];

    customSettingsBundle2 = [settingsCopy customSettingsBundle];
    v13 = PSBundlePathForPreferenceBundle();
    [v11 setProperty:v13 forKey:PSLazilyLoadedBundleKey];

    customSettingsDetailControllerClass = [settingsCopy customSettingsDetailControllerClass];
    [v11 setProperty:customSettingsDetailControllerClass forKey:PSDetailControllerClassKey];

    [v11 setProperty:&__kCFBooleanTrue forKey:PSBundleOverridePrincipalClassKey];
    [v11 setProperty:@"custom" forKey:PSIDKey];
    [v11 setControllerLoadAction:"lazyLoadBundle:"];
  }

  else
  {
    subsections = [settingsCopy subsections];
    v16 = [subsections count];

    if (!v16)
    {
      goto LABEL_10;
    }

    sectionID = [settingsCopy sectionID];
    [sectionID isEqualToString:@"com.apple.mobilemail"];
    v18 = objc_opt_class();

    v19 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v20 = [v19 localizedStringForKey:@"CUSTOM_SETTINGS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:v18 cell:2 edit:0];

    [v11 setProperty:@"custom" forKey:PSIDKey];
    [v11 setProperty:settingsCopy forKey:@"BBSECTION_INFO_KEY"];
  }

  [v6 addObject:v11];

LABEL_10:
  if ([settingsCopy showsCustomSettingsLink])
  {
    appName = [settingsCopy appName];
    if (appName)
    {
      v22 = appName;
      sectionID2 = [settingsCopy sectionID];
      v24 = [LSApplicationProxy applicationProxyForIdentifier:sectionID2];
      appState = [v24 appState];
      isValid = [appState isValid];

      if (isValid)
      {
        v27 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
        v28 = [v27 localizedStringForKey:@"APP_SETTINGS_LINK" value:&stru_4E3F0 table:@"NotificationsSettings"];
        appName2 = [settingsCopy appName];
        v30 = [NSString stringWithFormat:v28, appName2];

        v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v31 setButtonAction:"_openAppNotificationSettings:"];
        [v31 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
        [v31 setProperty:settingsCopy forKey:@"BBSECTION_INFO_KEY"];
        [v6 addObject:v31];
      }
    }
  }

LABEL_15:

  return v6;
}

- (void)_openAppNotificationSettings:(id)settings
{
  v3 = [settings propertyForKey:@"BBSECTION_INFO_KEY"];
  sectionID = [v3 sectionID];
  v5 = +[NSMutableDictionary dictionary];
  v6 = objc_alloc_init(UINotificationSettingsAction);
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  [v5 setObject:v7 forKey:FBSOpenApplicationOptionKeyActions];

  v8 = [FBSOpenApplicationOptions optionsWithDictionary:v5];
  v9 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  [v9 openApplication:sectionID withOptions:v8 completion:0];
}

- (id)_effectiveSectionInfoForSectionInfo:(id)info passingTest:(id)test
{
  infoCopy = info;
  testCopy = test;
  if (testCopy[2](testCopy, infoCopy))
  {
    v7 = infoCopy;
  }

  else
  {
    parentSection = [infoCopy parentSection];
    subsections = [parentSection subsections];
    v10 = [subsections count];

    if (v10 == &dword_0 + 1 && testCopy[2](testCopy, parentSection))
    {
      v7 = parentSection;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_effectiveSectionInfoForSectionInfo:(id)info setting:(unint64_t)setting
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_E284;
  v6[3] = &unk_4D570;
  v6[4] = setting;
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:info passingTest:v6];

  return v4;
}

- (id)_effectiveSectionInfoForSectionInfo:(id)info setting:(unint64_t)setting pushSetting:(unint64_t)pushSetting
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_E338;
  v7[3] = &unk_4D590;
  v7[4] = setting;
  v7[5] = pushSetting;
  v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:info passingTest:v7];

  return v5;
}

- (id)_allowsNotificationsSettingSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  parentSection = [infoCopy parentSection];
  subsections = [parentSection subsections];
  if ([subsections count] == &dword_0 + 1)
  {
    v7 = parentSection;
  }

  else
  {
    v7 = infoCopy;
  }

  v8 = v7;

  v9 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v10 = [v9 localizedStringForKey:@"ALLOW_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setAllowNotifications:specifier:" get:"allowNotifications:" detail:0 cell:6 edit:0];

  if ([(BulletinBoardAppDetailController *)self isApplicationHiddenForSectionInfo:infoCopy])
  {
    [v8 setAllowsNotifications:0];
    [v11 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  [v11 setIdentifier:@"ALLOW_NOTIFICATIONS_ID"];
  [v11 setProperty:v8 forKey:@"BBSECTION_INFO_KEY"];
  [v11 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v12 = [(BulletinBoardAppDetailController *)self _expirationTextForSectionInfo:infoCopy];
  if (v12)
  {
    [v11 setProperty:v12 forKey:PSTableCellSubtitleTextKey];
  }

  return v11;
}

- (id)_expirationTextForSectionInfo:(id)info
{
  infoCopy = info;
  sectionInfoSettings = [infoCopy sectionInfoSettings];
  isAuthorizedTemporarily = [sectionInfoSettings isAuthorizedTemporarily];

  if (isAuthorizedTemporarily)
  {
    authorizationExpirationDate = [infoCopy authorizationExpirationDate];
    [authorizationExpirationDate timeIntervalSinceNow];
    v8 = v7;

    v9 = v8 / 3600.0;
    v10 = llroundf(v9);
    v11 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v12 = [v11 localizedStringForKey:@"EXPIRY_IN_HOURS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v13 = [NSString localizedStringWithFormat:v12, v10];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_soundSettingSpecifierForSectionInfo:(id)info
{
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:info setting:0x4000 pushSetting:2];
  if (v4)
  {
    v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v6 = [v5 localizedStringForKey:@"SOUNDS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setSounds:specifier:" get:"sounds:" detail:0 cell:6 edit:0];

    [v7 setIdentifier:@"SOUNDS_ID"];
    [v7 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_customSoundSettingSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  if (([infoCopy suppressedSettings] & 0x4000) != 0 || (objc_msgSend(infoCopy, "sectionID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = +[TLAlert bb_toneLibraryAlertTypeForSectionID:](TLAlert, "bb_toneLibraryAlertTypeForSectionID:", v5), v5, !v6))
  {
    v9 = 0;
  }

  else
  {
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v8 = [v7 localizedStringForKey:@"SOUNDS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"detailTextForToneWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

    [v9 setIdentifier:@"SOUND_SUBSTITUTE_ID"];
    [v9 setProperty:infoCopy forKey:@"BBSECTION_INFO_KEY"];
    v10 = NSStringFromTLAlertType();
    [v9 setProperty:v10 forKey:@"alertType"];

    subsectionID = [infoCopy subsectionID];
    [v9 setProperty:subsectionID forKey:@"accountIdentifier"];
  }

  return v9;
}

- (id)_badgesSettingSpecifierForSectionInfo:(id)info
{
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:info setting:0x2000 pushSetting:1];
  if (v4)
  {
    v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v6 = [v5 localizedStringForKey:@"BADGES" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setBadges:specifier:" get:"badges:" detail:0 cell:6 edit:0];

    [v7 setIdentifier:@"BADGES"];
    [v7 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_alertDeliveryTypeSettingsSpecifierForSectionInfo:(id)info
{
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:info passingTest:&stru_4D5B0];
  if (v4)
  {
    v5 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setAlertDeliveryDescriptor:specifier:" get:"alertDeliveryDescriptor:" detail:0 cell:-1 edit:0];
    [v5 setIdentifier:@"DELIVERY_TYPE_ID"];
    [v5 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
    [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_notificationCenterSettingSpecifierForSectionInfo:(id)info
{
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:info passingTest:&stru_4D5D0];
  if (v4)
  {
    v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v6 = [v5 localizedStringForKey:@"HISTORY_DESTINATION" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setNotificationCenterSetting:specifier:" get:"notificationCenterSetting:" detail:0 cell:6 edit:0];

    [v7 setIdentifier:@"HISTORY"];
    [v7 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_bannerSettingSpecifierForSectionInfo:(id)info
{
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:info passingTest:&stru_4D5F0];
  if (v4)
  {
    v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v6 = [v5 localizedStringForKey:@"BANNER_DESTINATION" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setBannerSetting:specifier:" get:"bannerSetting:" detail:0 cell:6 edit:0];

    [v7 setIdentifier:@"BANNERS"];
    [v7 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_bannerStyleSettingSpecifierForSectionInfo:(id)info
{
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:info passingTest:&stru_4D610];
  if (v4)
  {
    v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v6 = [v5 localizedStringForKey:@"BANNER_STYLE" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setBannerStyle:specifier:" get:"bannerStyle:" detail:objc_opt_class() cell:2 edit:0];

    v8 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v9 = [v8 localizedStringForKey:@"BANNER_TEMPORARY_LABEL" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v14[0] = v9;
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v11 = [v10 localizedStringForKey:@"BANNER_PERSISTENT_LABEL" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v14[1] = v11;
    v12 = [NSArray arrayWithObjects:v14 count:2];

    [v7 setIdentifier:@"BANNER_STYLE_ID"];
    [v7 setValues:&off_51648 titles:v12];
    [v7 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
    [v7 setProperty:&__kCFBooleanFalse forKey:PSDeferItemSelectionKey];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_carPlaySettingSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy carPlaySetting])
  {
    v5 = objc_alloc_init(CRPairedVehicleManager);
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_F310;
    v16 = sub_F320;
    v17 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_F328;
    v11[3] = &unk_4D638;
    v11[4] = &v12;
    [v5 syncFetchAllVehiclesWithCompletion:v11];
    if ([v13[5] count])
    {
      v6 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:infoCopy setting:128];
      if (v6)
      {
        v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
        v8 = [v7 localizedStringForKey:@"VIEW_IN_CARPLAY" value:&stru_4E3F0 table:@"NotificationsSettings"];
        v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setViewInCarPlay:specifier:" get:"viewInCarPlay:" detail:0 cell:6 edit:0];

        [v9 setIdentifier:@"VIEW_IN_CARPLAY_ID"];
        [v9 setProperty:v6 forKey:@"BBSECTION_INFO_KEY"];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_remoteNotificationsSettingSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy remoteNotificationsSetting] && _os_feature_enabled_impl() && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, !v6) && +[NCRemoteNotificationsManager featureIsAvailable](NCRemoteNotificationsManager, "featureIsAvailable"))
  {
    v7 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:infoCopy setting:0x10000];
    if (v7)
    {
      v8 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v9 = [v8 localizedStringForKey:@"ALLOW_REMOTE_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:"setAllowRemoteNotifications:specifier:" get:"allowRemoteNotifications:" detail:0 cell:6 edit:0];

      [v10 setIdentifier:@"ALLOW_REMOTE_NOTIFICATIONS_ID"];
      [v10 setProperty:v7 forKey:@"BBSECTION_INFO_KEY"];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_criticalAlertSettingSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy criticalAlertSetting])
  {
    v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:infoCopy setting:256];
    if (v5 && ![(BulletinBoardAppDetailController *)self isApplicationHiddenForSectionInfo:infoCopy])
    {
      v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v8 = [v7 localizedStringForKey:@"CRITICAL_ALERTS" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v6 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setCriticalAlert:specifier:" get:"criticalAlert:" detail:0 cell:6 edit:0];

      [v6 setIdentifier:@"ALLOW_CRITICAL_ALERTS_ID"];
      [v6 setProperty:v5 forKey:@"BBSECTION_INFO_KEY"];
      v9 = [UIImage systemImageNamed:@"exclamationmark.triangle.fill"];
      v10 = +[UIColor systemRedColor];
      v11 = [v9 imageWithTintColor:v10 renderingMode:1];

      [v6 setProperty:v11 forKey:PSIconImageKey];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_timeSensitiveSettingSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy timeSensitiveSetting] && objc_msgSend(infoCopy, "authorizationStatus") != &dword_0 + 1)
  {
    v6 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:infoCopy setting:2048];
    if (v6)
    {
      v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v8 = [v7 localizedStringForKey:@"TIME_SENSITIVE_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v5 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setTimeSensitiveSetting:specifier:" get:"timeSensitiveSetting:" detail:0 cell:6 edit:0];

      [v5 setIdentifier:@"TIME_SENSITIVE_NOTIFICATIONS_ID"];
      [v5 setProperty:v6 forKey:@"BBSECTION_INFO_KEY"];
      [v5 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
      v9 = [UIImage systemImageNamed:@"clock.fill"];
      v10 = +[UIColor systemYellowColor];
      v11 = [v9 imageWithTintColor:v10 renderingMode:1];

      [v5 setProperty:v11 forKey:PSIconImageKey];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_directMessagesSettingSpecifierForSectionInfo:(id)info
{
  infoCopy = info;
  if (!-[BulletinBoardAppDetailController isEffectiveGlobalScheduledDeliverySettingEnabled](self, "isEffectiveGlobalScheduledDeliverySettingEnabled") || [infoCopy scheduledDeliverySetting] == &dword_0 + 1 || objc_msgSend(infoCopy, "authorizationStatus") == &dword_0 + 1 || !objc_msgSend(infoCopy, "directMessagesSetting"))
  {
    v8 = 0;
  }

  else
  {
    v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:infoCopy setting:0x8000];
    if (v5)
    {
      v6 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v7 = [v6 localizedStringForKey:@"DIRECT_MESSAGES" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"setDirectMessagesSetting:specifier:" get:"directMessagesSetting:" detail:0 cell:6 edit:0];

      [v8 setIdentifier:@"DIRECT_MESSAGES_ID"];
      [v8 setProperty:v5 forKey:@"BBSECTION_INFO_KEY"];
      v9 = [UIImage systemImageNamed:@"message.fill"];
      [v8 setProperty:v9 forKey:PSIconImageKey];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_updateBannerStyleForSectionInfo:(id)info animated:(BOOL)animated forSpecifiers:(id)specifiers
{
  animatedCopy = animated;
  infoCopy = info;
  specifiersCopy = specifiers;
  v9 = specifiersCopy;
  if (!specifiersCopy)
  {
    v9 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  }

  v10 = v9;
  v11 = v10;
  bannerStyleSpecifier = self->_bannerStyleSpecifier;
  if (bannerStyleSpecifier)
  {
    v13 = bannerStyleSpecifier;
  }

  else
  {
    v13 = [v10 specifierForID:@"BANNER_STYLE_ID"];
    if (!v13)
    {
      goto LABEL_14;
    }
  }

  objc_storeStrong(&self->_bannerStyleSpecifier, v13);
  v14 = [PSSpecifierUpdates updatesWithSpecifiers:v11];
  if ([infoCopy alertType])
  {
    v15 = [v11 specifierForID:@"BANNER_STYLE_ID"];

    if (!v15)
    {
      [v14 insertSpecifier:self->_bannerStyleSpecifier afterSpecifierWithID:@"DELIVERY_TYPE_ID"];
    }
  }

  else
  {
    [v14 removeSpecifier:self->_bannerStyleSpecifier];
  }

  if (specifiersCopy)
  {
    currentSpecifiers = [v14 currentSpecifiers];
    [specifiersCopy setArray:currentSpecifiers];
  }

  else
  {
    context = [v14 context];
    [context setAnimated:animatedCopy];

    [(BulletinBoardAppDetailController *)self performSpecifierUpdates:v14];
  }

LABEL_14:
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(BulletinBoardAppDetailController *)self specifierForID:@"DELIVERY_TYPE_ID"];
  v9 = [(BulletinBoardAppDetailController *)self indexPathForSpecifier:v8];
  v10 = [v9 isEqual:pathCopy];

  if (v10)
  {
    [viewCopy bounds];
    v12 = v11;
    [viewCopy _sectionContentInset];
    [AlertDeliveryTypeCell preferredHeightInWidth:v12 - v13 - v14];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = BulletinBoardAppDetailController;
    [(BulletinBoardAppDetailController *)&v18 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
  }

  v16 = v15;

  return v16;
}

- (id)allowNotifications:(id)notifications
{
  v4 = [notifications propertyForKey:@"BBSECTION_INFO_KEY"];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", !-[BulletinBoardAppDetailController isApplicationHiddenForSectionInfo:](self, "isApplicationHiddenForSectionInfo:", v4) & [v4 allowsNotifications]);

  return v5;
}

- (void)setAllowNotifications:(id)notifications specifier:(id)specifier
{
  specifierCopy = specifier;
  notificationsCopy = notifications;
  v11 = [specifierCopy propertyForKey:@"BBSECTION_INFO_KEY"];
  bOOLValue = [notificationsCopy BOOLValue];

  if (bOOLValue)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v11 setAuthorizationStatus:v9];
  [specifierCopy setProperty:v11 forKey:@"BBSECTION_INFO_KEY"];

  sectionID = [v11 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v11 forSectionID:sectionID];

  [(BulletinBoardAppDetailController *)self reloadSpecifiers];
}

- (id)alertDeliveryDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = objc_alloc_init(AlertDeliveryTypeDescriptor);
  v5 = [descriptorCopy propertyForKey:@"BBSECTION_INFO_KEY"];

  suppressedSettings = [v5 suppressedSettings];
  pushSettings = [v5 pushSettings];
  if ((suppressedSettings & 2) != 0)
  {
    if (suppressedSettings)
    {
      goto LABEL_3;
    }
  }

  else
  {
    -[AlertDeliveryTypeDescriptor setLockScreenSetting:](v4, "setLockScreenSetting:", [v5 lockScreenSetting]);
    if (suppressedSettings)
    {
LABEL_3:
      if ((suppressedSettings & 0x20) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  -[AlertDeliveryTypeDescriptor setNotificationCenterSetting:](v4, "setNotificationCenterSetting:", [v5 notificationCenterSetting]);
  if ((suppressedSettings & 0x20) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((pushSettings & 4) != 0)
  {
    if ([v5 alertType])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    [(AlertDeliveryTypeDescriptor *)v4 setBannerSetting:v8];
  }

LABEL_12:

  return v4;
}

- (void)setAlertDeliveryDescriptor:(id)descriptor specifier:(id)specifier
{
  descriptorCopy = descriptor;
  v7 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  if ([v7 authorizationStatus] == &dword_0 + 3)
  {
    [v7 setAuthorizationStatus:2];
  }

  v11 = descriptorCopy;
  if ([v11 lockScreenSetting])
  {
    [v7 setLockScreenSetting:{objc_msgSend(v11, "lockScreenSetting")}];
  }

  if ([v11 notificationCenterSetting])
  {
    [v7 setNotificationCenterSetting:{objc_msgSend(v11, "notificationCenterSetting")}];
  }

  if ([v11 bannerSetting])
  {
    alertType = [v7 alertType];
    if ([v11 bannerSetting] == &dword_0 + 2)
    {
      if (alertType)
      {
        savedBannersAlertType = [v7 alertType];
      }

      else
      {
        savedBannersAlertType = self->_savedBannersAlertType;
      }
    }

    else
    {
      savedBannersAlertType = 0;
    }

    [v7 setAlertType:savedBannersAlertType];
  }

  sectionID = [v7 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v7 forSectionID:sectionID];

  [(BulletinBoardAppDetailController *)self _updateBannerStyleForSectionInfo:v7 animated:1];
}

- (id)bannerStyle:(id)style
{
  v3 = [style propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 alertType]);

  return v4;
}

- (void)setBannerStyle:(id)style specifier:(id)specifier
{
  styleCopy = style;
  v6 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  if ([v6 authorizationStatus] == &dword_0 + 3)
  {
    [v6 setAuthorizationStatus:2];
  }

  integerValue = [styleCopy integerValue];
  if (!integerValue)
  {
    self->_savedBannersAlertType = [v6 alertType];
  }

  [v6 setAlertType:integerValue];
  sectionID = [v6 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v6 forSectionID:sectionID];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"BannerStyleSpecifierDidUpdateNotification" object:0];
}

- (id)viewInCarPlay:(id)play
{
  v3 = [play propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 carPlaySetting] == &dword_0 + 2);

  return v4;
}

- (void)setViewInCarPlay:(id)play specifier:(id)specifier
{
  playCopy = play;
  v6 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  if ([v6 authorizationStatus] == &dword_0 + 3)
  {
    [v6 setAuthorizationStatus:2];
  }

  if ([playCopy BOOLValue])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setCarPlaySetting:v7];
  sectionID = [v6 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v6 forSectionID:sectionID];
}

- (id)allowRemoteNotifications:(id)notifications
{
  v3 = [notifications propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 remoteNotificationsSetting] == &dword_0 + 2);

  return v4;
}

- (void)setAllowRemoteNotifications:(id)notifications specifier:(id)specifier
{
  notificationsCopy = notifications;
  v6 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  if ([v6 authorizationStatus] == &dword_0 + 3)
  {
    [v6 setAuthorizationStatus:2];
  }

  if ([notificationsCopy BOOLValue])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setRemoteNotificationsSetting:v7];
  sectionID = [v6 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v6 forSectionID:sectionID];
}

- (id)criticalAlert:(id)alert
{
  v3 = [alert propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 criticalAlertSetting] == &dword_0 + 2);

  return v4;
}

- (void)setCriticalAlert:(id)alert specifier:(id)specifier
{
  alertCopy = alert;
  v9 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  LODWORD(specifier) = [alertCopy BOOLValue];

  if (specifier)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v9 setCriticalAlertSetting:v7];
  sectionID = [v9 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v9 forSectionID:sectionID];
}

- (id)timeSensitiveSetting:(id)setting
{
  v3 = [setting propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 timeSensitiveSetting] == &dword_0 + 2);

  return v4;
}

- (void)setTimeSensitiveSetting:(id)setting specifier:(id)specifier
{
  settingCopy = setting;
  v9 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  LODWORD(specifier) = [settingCopy BOOLValue];

  if (specifier)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v9 setTimeSensitiveSetting:v7];
  [v9 setUserConfiguredTimeSensitiveSetting:1];
  sectionID = [v9 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v9 forSectionID:sectionID];
}

- (id)directMessagesSetting:(id)setting
{
  v3 = [setting propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 directMessagesSetting] == &dword_0 + 2);

  return v4;
}

- (void)setDirectMessagesSetting:(id)setting specifier:(id)specifier
{
  settingCopy = setting;
  v9 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  LODWORD(specifier) = [settingCopy BOOLValue];

  if (specifier)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v9 setDirectMessagesSetting:v7];
  sectionID = [v9 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v9 forSectionID:sectionID];
}

- (id)notificationCenterSetting:(id)setting
{
  v3 = [setting propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 notificationCenterSetting] == &dword_0 + 2);

  return v4;
}

- (void)setNotificationCenterSetting:(id)setting specifier:(id)specifier
{
  settingCopy = setting;
  v9 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  LODWORD(specifier) = [settingCopy BOOLValue];

  if (specifier)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v9 setNotificationCenterSetting:v7];
  sectionID = [v9 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v9 forSectionID:sectionID];
}

- (id)bannerSetting:(id)setting
{
  v3 = [setting propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 alertType] != 0);

  return v4;
}

- (void)setBannerSetting:(id)setting specifier:(id)specifier
{
  settingCopy = setting;
  v11 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  alertType = [v11 alertType];
  bOOLValue = [settingCopy BOOLValue];

  if (bOOLValue)
  {
    if (alertType)
    {
      savedBannersAlertType = [v11 alertType];
    }

    else
    {
      savedBannersAlertType = self->_savedBannersAlertType;
    }
  }

  else
  {
    savedBannersAlertType = 0;
  }

  [v11 setAlertType:savedBannersAlertType];
  sectionID = [v11 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v11 forSectionID:sectionID];

  [(BulletinBoardAppDetailController *)self _updateBannerStyleForSectionInfo:v11 animated:1];
}

- (id)_valueOfNotificationType:(unint64_t)type forSectionInfo:(id)info
{
  v4 = ([info pushSettings] & type) != 0;

  return [NSNumber numberWithBool:v4];
}

- (id)sounds:(id)sounds
{
  v4 = [sounds propertyForKey:@"BBSECTION_INFO_KEY"];
  v5 = [(BulletinBoardAppDetailController *)self _valueOfNotificationType:16 forSectionInfo:v4];

  return v5;
}

- (id)badges:(id)badges
{
  v4 = [badges propertyForKey:@"BBSECTION_INFO_KEY"];
  v5 = [(BulletinBoardAppDetailController *)self _valueOfNotificationType:8 forSectionInfo:v4];

  return v5;
}

- (void)_setValue:(id)value notificationType:(unint64_t)type forSectionInfo:(id)info
{
  infoCopy = info;
  valueCopy = value;
  if ([infoCopy authorizationStatus] == &dword_0 + 3)
  {
    [infoCopy setAuthorizationStatus:2];
  }

  pushSettings = [infoCopy pushSettings];
  bOOLValue = [valueCopy BOOLValue];

  if (bOOLValue)
  {
    v11 = pushSettings | type;
  }

  else
  {
    v11 = pushSettings & ~type;
  }

  [infoCopy setPushSettings:v11];
  sectionID = [infoCopy sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:infoCopy forSectionID:sectionID];
}

- (void)setSectionInfo:(id)info forSectionID:(id)d
{
  infoCopy = info;
  if ([infoCopy authorizationStatus] == &dword_4)
  {
    [infoCopy setAuthorizationStatus:2];
    [(BulletinBoardAppDetailController *)self reloadSpecifierID:@"ALLOW_NOTIFICATIONS_ID"];
  }

  v5 = +[NCSettingsGatewayController sharedInstance];
  sectionID = [infoCopy sectionID];
  [v5 setSectionInfo:infoCopy forSectionID:sectionID];
}

- (void)_updateSpecifiersWithSectionInfo:(id)info reloadRootSpecifier:(BOOL)specifier
{
  specifierCopy = specifier;
  [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] setProperty:info forKey:@"BBSECTION_INFO_KEY"];
  if (specifierCopy)
  {

    [(BulletinBoardAppDetailController *)self reloadSpecifiers];
  }
}

- (void)setSounds:(id)sounds specifier:(id)specifier
{
  soundsCopy = sounds;
  v7 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  [(BulletinBoardAppDetailController *)self _setValue:soundsCopy notificationType:16 forSectionInfo:v7];
}

- (void)setBadges:(id)badges specifier:(id)specifier
{
  badgesCopy = badges;
  v7 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];
  [(BulletinBoardAppDetailController *)self _setValue:badgesCopy notificationType:8 forSectionInfo:v7];
}

- (BulletinBoardAppDetailControllerDelegate)delegate
{
  specifier = [(BulletinBoardAppDetailController *)self specifier];
  v3 = [specifier propertyForKey:kNotificationsSettingsDetailControllerDelegate];

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BulletinBoardAppDetailController;
  [(BulletinBoardAppDetailController *)&v4 viewDidAppear:appear];
  [(BulletinBoardAppDetailController *)self emitNavigationEventForAppDetailController];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  delegate = [(BulletinBoardAppDetailController *)self delegate];
  [delegate appDetailControllerWillDisappear:self];

  v6.receiver = self;
  v6.super_class = BulletinBoardAppDetailController;
  [(BulletinBoardAppDetailController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)willBecomeActive
{
  parentController = [(BulletinBoardAppDetailController *)self parentController];
  v4 = objc_opt_class();
  v7 = parentController;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 shouldAppDetailControllerBecomeActive:self] & 1) == 0)
  {
    [(BulletinBoardAppDetailController *)self settingsNavigationProxy_popToRoot];
  }
}

- (BOOL)isApplicationHiddenForSectionInfo:(id)info
{
  sectionID = [info sectionID];
  v4 = [APApplication applicationWithBundleIdentifier:sectionID];
  isHidden = [v4 isHidden];

  return isHidden;
}

- (NSString)sectionID
{
  specifier = [(BulletinBoardAppDetailController *)self specifier];
  v3 = [specifier propertyForKey:@"BBSECTION_INFO_KEY"];

  sectionID = [v3 sectionID];

  return sectionID;
}

- (void)_updateNotificationDeliverySettingForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy propertyForKey:@"BBSECTION_INFO_KEY"];
  identifier = [specifierCopy identifier];
  v6 = [identifier isEqualToString:@"NOTIFICATION_DELIVERY_IMMEDIATE_ID"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    identifier2 = [specifierCopy identifier];
    v9 = [identifier2 isEqualToString:@"NOTIFICATION_DELIVERY_SCHEDULED_ID"];

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = 2;
  }

  [v4 setScheduledDeliverySetting:v7];
LABEL_6:
  sectionID = [v4 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v4 forSectionID:sectionID];
}

- (BOOL)isEffectiveGlobalScheduledDeliverySettingEnabled
{
  v2 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalScheduledDeliverySetting = [v2 effectiveGlobalScheduledDeliverySetting];

  return effectiveGlobalScheduledDeliverySetting == &dword_0 + 2;
}

- (void)tappedEditSchedule:(id)schedule
{
  v9 = objc_alloc_init(NCScheduledDeliverySettingsController);
  v4 = [[UINavigationController alloc] initWithRootViewController:v9];
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v6 = [v5 localizedStringForKey:@"SCHEDULED_DELIVERY" value:&stru_4E3F0 table:@"NotificationsSettings"];
  [(NCScheduledDeliverySettingsController *)v9 setTitle:v6];

  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"editScheduleDismissed:"];
  navigationItem = [(NCScheduledDeliverySettingsController *)v9 navigationItem];
  [navigationItem setRightBarButtonItem:v7];

  [(BulletinBoardAppDetailController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)editScheduleDismissed:(id)dismissed
{
  [(BulletinBoardAppDetailController *)self reloadSpecifiers];

  [(BulletinBoardAppDetailController *)self dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)_areAlwaysDeliverImmediatelyNotificationsNotEnabledForScheduledDeliveryForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = -[BulletinBoardAppDetailController isEffectiveGlobalScheduledDeliverySettingEnabled](self, "isEffectiveGlobalScheduledDeliverySettingEnabled") && [infoCopy scheduledDeliverySetting] == &dword_0 + 2 && objc_msgSend(infoCopy, "timeSensitiveSetting") != &dword_0 + 2 && objc_msgSend(infoCopy, "directMessagesSetting") != &dword_0 + 2;

  return v5;
}

- (void)setShowsMessagePreview:(id)preview specifier:(id)specifier
{
  specifierCopy = specifier;
  previewCopy = preview;
  v12 = [specifierCopy propertyForKey:@"BBSECTION_INFO_KEY"];
  integerValue = [previewCopy integerValue];

  if (integerValue == self->_globalContentPreviewSetting)
  {
    v9 = 0;
  }

  else
  {
    v9 = integerValue;
  }

  [v12 setContentPreviewSetting:v9];
  sectionID = [v12 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v12 forSectionID:sectionID];

  [specifierCopy setProperty:v12 forKey:@"BBSECTION_INFO_KEY"];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:@"ShowPreviewAppSpecifierDidUpdateNotification" object:0];
}

- (id)showsMessagePreview:(id)preview
{
  v4 = [preview propertyForKey:@"BBSECTION_INFO_KEY"];
  globalContentPreviewSetting = [v4 contentPreviewSetting];
  if (!globalContentPreviewSetting)
  {
    globalContentPreviewSetting = self->_globalContentPreviewSetting;
  }

  v6 = [NSNumber numberWithInteger:globalContentPreviewSetting];

  return v6;
}

- (void)setNotificationGrouping:(id)grouping specifier:(id)specifier
{
  specifierCopy = specifier;
  groupingCopy = grouping;
  v11 = [specifierCopy propertyForKey:@"BBSECTION_INFO_KEY"];
  integerValue = [groupingCopy integerValue];

  [v11 setBulletinGroupingSetting:integerValue];
  sectionID = [v11 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v11 forSectionID:sectionID];

  [specifierCopy setProperty:v11 forKey:@"BBSECTION_INFO_KEY"];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"NotificationGroupingAppSpecifierDidUpdateNotification" object:0];
}

- (id)notificationGrouping:(id)grouping
{
  v3 = [grouping propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 bulletinGroupingSetting]);

  return v4;
}

- (void)appDetailControllerWillDisappear:(id)disappear
{
  specifier = [disappear specifier];
  [(BulletinBoardAppDetailController *)self reloadSpecifier:specifier];
}

- (void)settingsGateway:(id)gateway didUpdateSectionInfo:(id)info
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_11774;
  v5[3] = &unk_4D0D8;
  v5[4] = self;
  infoCopy = info;
  v4 = infoCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)emitNavigationEventForAppDetailController
{
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  bundleURL = [v3 bundleURL];

  if (bundleURL)
  {
    v5 = self->_savedSectionInfo;
    sectionID = [(BBSectionInfo *)v5 sectionID];
    displayName = [(BBSectionInfo *)v5 displayName];
    v8 = displayName;
    if (sectionID)
    {
      v9 = displayName == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = [NSURL URLWithString:kNotificationSettingsDeepLinkURLString];
      v11 = [v10 URLByAppendingPathComponent:sectionID];

      v12 = [_NSLocalizedStringResource alloc];
      v13 = kNotificationsSettingsLocalizedStringsTable;
      v14 = +[NSLocale currentLocale];
      v15 = [v12 initWithKey:@"APP_NAME_IN_DEFAULT_VALUE" defaultValue:v8 table:v13 locale:v14 bundleURL:bundleURL];

      v16 = kNotificationsSettingsGraphicIcon;
      v18 = v15;
      v17 = [NSArray arrayWithObjects:&v18 count:1];
      [(BulletinBoardAppDetailController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v16 title:v15 localizedNavigationComponents:v17 deepLink:v11];
    }
  }
}

+ (void)emitNavigationEventForSpecifier:(id)specifier viewController:(id)controller
{
  specifierCopy = specifier;
  controllerCopy = controller;
  v7 = objc_opt_class();
  if ([v7 isSubclassOfClass:objc_opt_class()])
  {
    v8 = controllerCopy;
    identifier = [specifierCopy identifier];
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    bundleURL = [v10 bundleURL];

    if (identifier && bundleURL)
    {
      v12 = [specifierCopy propertyForKey:@"BBSECTION_INFO_KEY"];
      sectionID = [v12 sectionID];
      displayName = [v12 displayName];
      v15 = displayName;
      if (sectionID && displayName)
      {
        v16 = [NSURL URLWithString:kNotificationSettingsDeepLinkURLString];
        v17 = [v16 URLByAppendingPathComponent:sectionID];

        v18 = [v17 URLByAppendingPathComponent:identifier];

        v38[0] = @"BANNER_STYLE_ID";
        v38[1] = @"SOUND_SUBSTITUTE_ID";
        v39[0] = @"BANNER_STYLE";
        v39[1] = @"SOUNDS";
        v38[2] = @"SHOW_PREVIEW_APP_ID";
        v38[3] = @"NOTIFICATION_GROUPING_APP_ID";
        v39[2] = @"SHOW_PREVIEWS";
        v39[3] = @"NOTIFICATION_GROUPING";
        v19 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
        v20 = [v19 objectForKeyedSubscript:identifier];
        if (v20)
        {
          v35 = v20;
          v32 = v19;
          v21 = [_NSLocalizedStringResource alloc];
          v36 = v15;
          v22 = kNotificationsSettingsLocalizedStringsTable;
          +[NSLocale currentLocale];
          v23 = v33 = v18;
          v34 = v8;
          v24 = [v21 initWithKey:@"APP_NAME_IN_DEFAULT_VALUE" defaultValue:v36 table:v22 locale:v23 bundleURL:bundleURL];

          v25 = [_NSLocalizedStringResource alloc];
          v26 = kNotificationsSettingsLocalizedStringsTable;
          v27 = +[NSLocale currentLocale];
          v28 = [v25 initWithKey:v35 table:v26 locale:v27 bundleURL:bundleURL];

          v29 = kNotificationsSettingsGraphicIcon;
          v37[0] = v24;
          v37[1] = v28;
          v30 = [NSArray arrayWithObjects:v37 count:2];
          v31 = v29;
          v18 = v33;
          [v34 pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v31 title:v28 localizedNavigationComponents:v30 deepLink:v33];

          v19 = v32;
          v15 = v36;

          v8 = v34;
          v20 = v35;
        }
      }
    }
  }
}

- (void)handleBannerStyleDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if (+[NSThread isMainThread])
  {
    [(BulletinBoardAppDetailController *)self reloadSpecifierID:@"BANNER_STYLE_ID" animated:1];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_11F60;
    v5[3] = &unk_4D0D8;
    v5[4] = self;
    v6 = notificationCopy;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)handleShowPreviewDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if (+[NSThread isMainThread])
  {
    [(BulletinBoardAppDetailController *)self reloadSpecifierID:@"SHOW_PREVIEW_APP_ID" animated:1];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_12030;
    v5[3] = &unk_4D0D8;
    v5[4] = self;
    v6 = notificationCopy;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)handleNotificationGroupingDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if (+[NSThread isMainThread])
  {
    [(BulletinBoardAppDetailController *)self reloadSpecifierID:@"NOTIFICATION_GROUPING_APP_ID" animated:1];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_12100;
    v5[3] = &unk_4D0D8;
    v5[4] = self;
    v6 = notificationCopy;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

@end