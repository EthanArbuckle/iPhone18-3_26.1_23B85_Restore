@interface BulletinBoardAppDetailController
+ (void)emitNavigationEventForSpecifier:(id)a3 viewController:(id)a4;
- (BOOL)_areAlwaysDeliverImmediatelyNotificationsNotEnabledForScheduledDeliveryForSectionInfo:(id)a3;
- (BOOL)isApplicationHiddenForSectionInfo:(id)a3;
- (BOOL)isEffectiveGlobalScheduledDeliverySettingEnabled;
- (BulletinBoardAppDetailController)init;
- (BulletinBoardAppDetailControllerDelegate)delegate;
- (NSString)sectionID;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_alertDeliveryTypeSettingsSpecifierForSectionInfo:(id)a3;
- (id)_alertSettingsGroupSpecifierForSectionInfo:(id)a3;
- (id)_allowsNotificationsSettingGroupSpecifiersForSectionInfo:(id)a3;
- (id)_allowsNotificationsSettingSpecifierForSectionInfo:(id)a3;
- (id)_alwaysAllowedGroupSpecifiersForSectionInfo:(id)a3;
- (id)_announceSettingsSpecifiersForSectionInfo:(id)a3;
- (id)_badgesSettingSpecifierForSectionInfo:(id)a3;
- (id)_bannerSettingSpecifierForSectionInfo:(id)a3;
- (id)_bannerStyleSettingSpecifierForSectionInfo:(id)a3;
- (id)_carPlaySettingSpecifierForSectionInfo:(id)a3;
- (id)_contentPreviewSpecifierForSectionInfo:(id)a3;
- (id)_criticalAlertSettingSpecifierForSectionInfo:(id)a3;
- (id)_customSettings:(id)a3;
- (id)_customSoundSettingSpecifierForSectionInfo:(id)a3;
- (id)_directMessagesSettingSpecifierForSectionInfo:(id)a3;
- (id)_effectiveSectionInfoForSectionInfo:(id)a3 passingTest:(id)a4;
- (id)_effectiveSectionInfoForSectionInfo:(id)a3 setting:(unint64_t)a4;
- (id)_effectiveSectionInfoForSectionInfo:(id)a3 setting:(unint64_t)a4 pushSetting:(unint64_t)a5;
- (id)_expirationTextForSectionInfo:(id)a3;
- (id)_lockScreenAppearanceSettingsSpecifiersForSectionInfo:(id)a3;
- (id)_notificationCenterSettingSpecifierForSectionInfo:(id)a3;
- (id)_notificationDeliverySettingGroupSpecifiersForSectionInfo:(id)a3;
- (id)_notificationGroupingGroupSpecifierForSectionInfo:(id)a3;
- (id)_notificationGroupingSpecifierForSectionInfo:(id)a3;
- (id)_prioritizationSpecifierForSectionInfo:(id)a3;
- (id)_remoteNotificationsSettingSpecifierForSectionInfo:(id)a3;
- (id)_soundSettingSpecifierForSectionInfo:(id)a3;
- (id)_spokenNotificationsSpecifierForSectionInfo:(id)a3;
- (id)_summarizationSpecifierForSectionInfo:(id)a3;
- (id)_timeSensitiveSettingSpecifierForSectionInfo:(id)a3;
- (id)_updateDetailsForDeliverySpecifier:(id)a3;
- (id)_valueOfNotificationType:(unint64_t)a3 forSectionInfo:(id)a4;
- (id)alertDeliveryDescriptor:(id)a3;
- (id)allowNotifications:(id)a3;
- (id)allowRemoteNotifications:(id)a3;
- (id)badges:(id)a3;
- (id)bannerSetting:(id)a3;
- (id)bannerStyle:(id)a3;
- (id)criticalAlert:(id)a3;
- (id)directMessagesSetting:(id)a3;
- (id)notificationCenterSetting:(id)a3;
- (id)notificationGrouping:(id)a3;
- (id)prioritizationSetting:(id)a3;
- (id)showsMessagePreview:(id)a3;
- (id)sounds:(id)a3;
- (id)specifiers;
- (id)summarizationSetting:(id)a3;
- (id)timeSensitiveSetting:(id)a3;
- (id)viewInCarPlay:(id)a3;
- (unint64_t)_generalSettingsInsertIndexForSpecifiers:(id)a3;
- (void)_loadGlobalPreviews;
- (void)_openAppNotificationSettings:(id)a3;
- (void)_setValue:(id)a3 notificationType:(unint64_t)a4 forSectionInfo:(id)a5;
- (void)_updateBannerStyleForSectionInfo:(id)a3 animated:(BOOL)a4 forSpecifiers:(id)a5;
- (void)_updateNotificationDeliverySettingForSpecifier:(id)a3;
- (void)_updateSpecifiersWithSectionInfo:(id)a3 reloadRootSpecifier:(BOOL)a4;
- (void)appDetailControllerWillDisappear:(id)a3;
- (void)dealloc;
- (void)editScheduleDismissed:(id)a3;
- (void)emitNavigationEventForAppDetailController;
- (void)handleBannerStyleDidUpdateNotification:(id)a3;
- (void)handleNotificationGroupingDidUpdateNotification:(id)a3;
- (void)handleShowPreviewDidUpdateNotification:(id)a3;
- (void)reloadSpecifiers;
- (void)setAlertDeliveryDescriptor:(id)a3 specifier:(id)a4;
- (void)setAllowNotifications:(id)a3 specifier:(id)a4;
- (void)setAllowRemoteNotifications:(id)a3 specifier:(id)a4;
- (void)setBadges:(id)a3 specifier:(id)a4;
- (void)setBannerSetting:(id)a3 specifier:(id)a4;
- (void)setBannerStyle:(id)a3 specifier:(id)a4;
- (void)setCriticalAlert:(id)a3 specifier:(id)a4;
- (void)setDirectMessagesSetting:(id)a3 specifier:(id)a4;
- (void)setNotificationCenterSetting:(id)a3 specifier:(id)a4;
- (void)setNotificationGrouping:(id)a3 specifier:(id)a4;
- (void)setPrioritizationSetting:(id)a3 specifier:(id)a4;
- (void)setSectionInfo:(id)a3 forSectionID:(id)a4;
- (void)setShowsMessagePreview:(id)a3 specifier:(id)a4;
- (void)setSounds:(id)a3 specifier:(id)a4;
- (void)setSummarizationSetting:(id)a3 specifier:(id)a4;
- (void)setTimeSensitiveSetting:(id)a3 specifier:(id)a4;
- (void)setViewInCarPlay:(id)a3 specifier:(id)a4;
- (void)settingsGateway:(id)a3 didUpdateSectionInfo:(id)a4;
- (void)tappedEditSchedule:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

- (unint64_t)_generalSettingsInsertIndexForSpecifiers:(id)a3
{
  v3 = a3;
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

        v9 = [v3 indexOfSpecifierWithID:*(*(&v11 + 1) + 8 * i)];
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
    v19 = [v9 sectionID];
    v20 = [v18 isNotificationsModificationAllowedForBundleID:v19];

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

    v31 = [*&self->PSListController_opaque[v5] name];

    [(BulletinBoardAppDetailController *)self setTitle:v31];
    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)_allowsNotificationsSettingGroupSpecifiersForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = [(BulletinBoardAppDetailController *)self _allowsNotificationsSettingSpecifierForSectionInfo:v4];
  v6 = +[NSMutableArray array];
  if (v5)
  {
    v7 = [PSSpecifier groupSpecifierWithID:@"ALLOW_NOTIFICATIONS_GROUP_ID"];
    if ([v4 isAppClip])
    {
      v8 = [v4 sectionInfoSettings];
      v9 = [v8 isAuthorizedTemporarily];

      if (v9)
      {
        v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
        v11 = [v10 localizedStringForKey:@"APP_CLIPS_EXPLANATION_FORMAT" value:&stru_4E3F0 table:@"NotificationsSettings"];
        v12 = BBSettingsDisplayNameForBBSection(v4);
        v13 = [NSString stringWithFormat:v11, v12];

        [v7 setProperty:v13 forKey:PSFooterTextGroupKey];
      }
    }

    if ([(BulletinBoardAppDetailController *)self isApplicationHiddenForSectionInfo:v4])
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

- (id)_notificationDeliverySettingGroupSpecifiersForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  if (-[BulletinBoardAppDetailController isEffectiveGlobalScheduledDeliverySettingEnabled](self, "isEffectiveGlobalScheduledDeliverySettingEnabled") && [v4 authorizationStatus] != &dword_0 + 1)
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
    [v13 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
    v35 = v13;
    [v5 addObject:v13];
    v15 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v16 = [v15 localizedStringForKey:@"NOTIFICATION_DELIVERY_SCHEDULED" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v17 setButtonAction:"_updateNotificationDeliverySettingForSpecifier:"];
    [v17 setIdentifier:@"NOTIFICATION_DELIVERY_SCHEDULED_ID"];
    v18 = [(BulletinBoardAppDetailController *)self _updateDetailsForDeliverySpecifier:v17];

    [v18 setProperty:&__kCFBooleanTrue forKey:v14];
    [v18 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
    [v5 addObject:v18];
    if ([v4 scheduledDeliverySetting] == &dword_0 + 2)
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

- (id)_updateDetailsForDeliverySpecifier:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"NOTIFICATION_DELIVERY_IMMEDIATE_ID"];

  if (v5)
  {
    v6 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v7 = [v6 localizedStringForKey:@"NOTIFICATION_DELIVERY_IMMEDIATE_DESCRIPTION" value:&stru_4E3F0 table:@"NotificationsSettings"];

    v8 = [UIImage systemImageNamed:@"bell.fill"];
  }

  else
  {
    v9 = [v3 identifier];
    v10 = [v9 isEqualToString:@"NOTIFICATION_DELIVERY_SCHEDULED_ID"];

    if (v10)
    {
      v11 = +[NCSettingsGatewayController sharedInstance];
      v12 = [v11 effectiveGlobalScheduledDeliverySetting];

      v13 = +[NCSettingsGatewayController sharedInstance];
      v14 = [v13 effectiveGlobalScheduledDeliveryTimes];

      v15 = NCStringForScheduledDeliverySummary(v12, v14);
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

  [v3 setProperty:objc_opt_class() forKey:PSCellClassKey];
  if (v7)
  {
    [v3 setProperty:v7 forKey:PSTableCellSubtitleTextKey];
  }

  if (v8)
  {
    [v3 setProperty:v8 forKey:PSIconImageKey];
  }

  return v3;
}

- (id)_alwaysAllowedGroupSpecifiersForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(BulletinBoardAppDetailController *)self _criticalAlertSettingSpecifierForSectionInfo:v4];
  v7 = [(BulletinBoardAppDetailController *)self _timeSensitiveSettingSpecifierForSectionInfo:v4];
  v8 = [(BulletinBoardAppDetailController *)self _directMessagesSettingSpecifierForSectionInfo:v4];
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

    if (!-[BulletinBoardAppDetailController isEffectiveGlobalScheduledDeliverySettingEnabled](self, "isEffectiveGlobalScheduledDeliverySettingEnabled") || [v4 scheduledDeliverySetting] != &dword_0 + 2)
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

- (id)_announceSettingsSpecifiersForSectionInfo:(id)a3
{
  v3 = [(BulletinBoardAppDetailController *)self _spokenNotificationsSpecifierForSectionInfo:a3];
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

- (id)_alertSettingsGroupSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 authorizationStatus] != &dword_0 + 1)
  {
    if ([(BulletinBoardAppDetailController *)self _areAlwaysDeliverImmediatelyNotificationsNotEnabledForScheduledDeliveryForSectionInfo:v4])
    {
      v6 = [(BulletinBoardAppDetailController *)self _badgesSettingSpecifierForSectionInfo:v4];
      if (v6)
      {
        v7 = [PSSpecifier groupSpecifierWithID:@"ALERT_SETTINGS_GROUP_ID"];
        [v5 bs_safeAddObject:v7];
      }

      [v5 bs_safeAddObject:v6];
    }

    else
    {
      v6 = [(BulletinBoardAppDetailController *)self _alertDeliveryTypeSettingsSpecifierForSectionInfo:v4];
      v8 = [(BulletinBoardAppDetailController *)self _bannerStyleSettingSpecifierForSectionInfo:v4];
      v9 = [(BulletinBoardAppDetailController *)self _customSoundSettingSpecifierForSectionInfo:v4];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = [(BulletinBoardAppDetailController *)self _soundSettingSpecifierForSectionInfo:v4];
      }

      v11 = [(BulletinBoardAppDetailController *)self _badgesSettingSpecifierForSectionInfo:v4];
      v12 = [(BulletinBoardAppDetailController *)self _carPlaySettingSpecifierForSectionInfo:v4];
      v13 = [(BulletinBoardAppDetailController *)self _remoteNotificationsSettingSpecifierForSectionInfo:v4];
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

- (id)_lockScreenAppearanceSettingsSpecifiersForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 authorizationStatus] != &dword_0 + 1 || objc_msgSend(v4, "criticalAlertSetting") == &dword_0 + 2)
  {
    v6 = [(BulletinBoardAppDetailController *)self _contentPreviewSpecifierForSectionInfo:v4];
    v7 = [(BulletinBoardAppDetailController *)self _notificationGroupingSpecifierForSectionInfo:v4];
    v8 = [(BulletinBoardAppDetailController *)self _prioritizationSpecifierForSectionInfo:v4];
    v9 = [(BulletinBoardAppDetailController *)self _summarizationSpecifierForSectionInfo:v4];
    v10 = v9;
    if (v6 || v7 || v8 || v9)
    {
      v11 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v12 = [v11 localizedStringForKey:@"LOCK_SCREEN_APPEARANCE" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v13 = [PSSpecifier groupSpecifierWithID:@"LOCK_SCREEN_APPEARANCE_GROUP_ID" name:v12];

      if (v10)
      {
        v14 = [v4 sectionID];
        v15 = NCIsSummarizationFeatureEnabledForBundleIdentifier(v14);

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

- (id)_contentPreviewSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:v4 setting:64];
  if (v5)
  {
    v26 = v5;
    v24 = [NSMutableArray alloc];
    v25 = self;
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

    v14 = [NSNumber numberWithInteger:v25->_globalContentPreviewSetting];
    v15 = [&off_51618 indexOfObject:v14];

    v16 = [v13 objectAtIndex:v15];
    v17 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v18 = [v17 localizedStringForKey:@"SHOW_PREVIEWS_DEFAULT" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v19 = [v16 stringByAppendingString:v18];
    [v13 setObject:v19 atIndexedSubscript:v15];

    v20 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v21 = [v20 localizedStringForKey:@"SHOW_PREVIEWS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:v25 set:"setShowsMessagePreview:specifier:" get:"showsMessagePreview:" detail:objc_opt_class() cell:2 edit:0];

    [v22 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
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

- (id)_notificationGroupingGroupSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  if ([v4 authorizationStatus] != &dword_0 + 1 || objc_msgSend(v4, "criticalAlertSetting") == &dword_0 + 2)
  {
    v6 = [(BulletinBoardAppDetailController *)self _notificationGroupingSpecifierForSectionInfo:v4];
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

- (id)_notificationGroupingSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 parentSection];

  if (v5)
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

    [v6 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
    [v6 setIdentifier:@"NOTIFICATION_GROUPING_APP_ID"];
    [v6 setValues:&off_51630 titles:v14];
    [v6 setProperty:&__kCFBooleanFalse forKey:PSDeferItemSelectionKey];
  }

  return v6;
}

- (id)_prioritizationSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:v4 setting:0x40000];
  if (v5 && [v4 authorizationStatus] != &dword_0 + 1 && objc_msgSend(v5, "prioritizationSetting") && (+[NCSettingsGatewayController sharedInstance](NCSettingsGatewayController, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "effectiveGlobalHighlightsSetting"), v6, v7 == &dword_0 + 2))
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

- (void)setPrioritizationSetting:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v9 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  LODWORD(a4) = [v6 BOOLValue];

  if (a4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v9 setPrioritizationSetting:v7];
  v8 = [v9 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v9 forSectionID:v8];
}

- (id)prioritizationSetting:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 prioritizationSetting] == &dword_0 + 2);

  return v4;
}

- (id)_summarizationSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:v4 setting:0x20000];
  if (v5 && [v4 authorizationStatus] != &dword_0 + 1 && objc_msgSend(v5, "summarizationSetting") && (+[NCSettingsGatewayController sharedInstance](NCSettingsGatewayController, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "effectiveGlobalSummarizationSetting"), v6, v7 == &dword_0 + 2))
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

- (void)setSummarizationSetting:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v9 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  LODWORD(a4) = [v6 BOOLValue];

  if (a4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v9 setSummarizationSetting:v7];
  v8 = [v9 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v9 forSectionID:v8];
}

- (id)summarizationSetting:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 summarizationSetting] == &dword_0 + 2);

  return v4;
}

- (id)_spokenNotificationsSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:v4 setting:1024];
  if (v5 && [v4 authorizationStatus] != &dword_0 + 1 && objc_msgSend(v5, "announceSetting") && (+[NCSettingsGatewayController sharedInstance](NCSettingsGatewayController, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "effectiveGlobalAnnounceSetting"), v6, v7 == &dword_0 + 2) && !-[BulletinBoardAppDetailController _areAlwaysDeliverImmediatelyNotificationsNotEnabledForScheduledDeliveryForSectionInfo:](self, "_areAlwaysDeliverImmediatelyNotificationsNotEnabledForScheduledDeliveryForSectionInfo:", v4))
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

- (id)_customSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 parentSection];
  if (v5 || [v4 authorizationStatus] == &dword_0 + 1 && objc_msgSend(v4, "criticalAlertSetting") != &dword_0 + 2)
  {
    v6 = 0;
    goto LABEL_15;
  }

  v6 = +[NSMutableArray array];
  v7 = [PSSpecifier groupSpecifierWithID:@"CUSTOM_SETTINGS_GROUP_ID"];
  [v6 addObject:v7];
  v8 = [v4 customSettingsBundle];

  if (v8)
  {
    v9 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v10 = [v9 localizedStringForKey:@"CUSTOM_SETTINGS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:2 edit:0];

    v12 = [v4 customSettingsBundle];
    v13 = PSBundlePathForPreferenceBundle();
    [v11 setProperty:v13 forKey:PSLazilyLoadedBundleKey];

    v14 = [v4 customSettingsDetailControllerClass];
    [v11 setProperty:v14 forKey:PSDetailControllerClassKey];

    [v11 setProperty:&__kCFBooleanTrue forKey:PSBundleOverridePrincipalClassKey];
    [v11 setProperty:@"custom" forKey:PSIDKey];
    [v11 setControllerLoadAction:"lazyLoadBundle:"];
  }

  else
  {
    v15 = [v4 subsections];
    v16 = [v15 count];

    if (!v16)
    {
      goto LABEL_10;
    }

    v17 = [v4 sectionID];
    [v17 isEqualToString:@"com.apple.mobilemail"];
    v18 = objc_opt_class();

    v19 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v20 = [v19 localizedStringForKey:@"CUSTOM_SETTINGS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v11 = [PSSpecifier preferenceSpecifierNamed:v20 target:self set:0 get:0 detail:v18 cell:2 edit:0];

    [v11 setProperty:@"custom" forKey:PSIDKey];
    [v11 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
  }

  [v6 addObject:v11];

LABEL_10:
  if ([v4 showsCustomSettingsLink])
  {
    v21 = [v4 appName];
    if (v21)
    {
      v22 = v21;
      v23 = [v4 sectionID];
      v24 = [LSApplicationProxy applicationProxyForIdentifier:v23];
      v25 = [v24 appState];
      v26 = [v25 isValid];

      if (v26)
      {
        v27 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
        v28 = [v27 localizedStringForKey:@"APP_SETTINGS_LINK" value:&stru_4E3F0 table:@"NotificationsSettings"];
        v29 = [v4 appName];
        v30 = [NSString stringWithFormat:v28, v29];

        v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v31 setButtonAction:"_openAppNotificationSettings:"];
        [v31 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
        [v31 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
        [v6 addObject:v31];
      }
    }
  }

LABEL_15:

  return v6;
}

- (void)_openAppNotificationSettings:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = [v3 sectionID];
  v5 = +[NSMutableDictionary dictionary];
  v6 = objc_alloc_init(UINotificationSettingsAction);
  v10 = v6;
  v7 = [NSArray arrayWithObjects:&v10 count:1];
  [v5 setObject:v7 forKey:FBSOpenApplicationOptionKeyActions];

  v8 = [FBSOpenApplicationOptions optionsWithDictionary:v5];
  v9 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  [v9 openApplication:v4 withOptions:v8 completion:0];
}

- (id)_effectiveSectionInfoForSectionInfo:(id)a3 passingTest:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6[2](v6, v5))
  {
    v7 = v5;
  }

  else
  {
    v8 = [v5 parentSection];
    v9 = [v8 subsections];
    v10 = [v9 count];

    if (v10 == &dword_0 + 1 && v6[2](v6, v8))
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_effectiveSectionInfoForSectionInfo:(id)a3 setting:(unint64_t)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_E284;
  v6[3] = &unk_4D570;
  v6[4] = a4;
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:a3 passingTest:v6];

  return v4;
}

- (id)_effectiveSectionInfoForSectionInfo:(id)a3 setting:(unint64_t)a4 pushSetting:(unint64_t)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_E338;
  v7[3] = &unk_4D590;
  v7[4] = a4;
  v7[5] = a5;
  v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:a3 passingTest:v7];

  return v5;
}

- (id)_allowsNotificationsSettingSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 parentSection];
  v6 = [v5 subsections];
  if ([v6 count] == &dword_0 + 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  v9 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v10 = [v9 localizedStringForKey:@"ALLOW_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setAllowNotifications:specifier:" get:"allowNotifications:" detail:0 cell:6 edit:0];

  if ([(BulletinBoardAppDetailController *)self isApplicationHiddenForSectionInfo:v4])
  {
    [v8 setAllowsNotifications:0];
    [v11 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  [v11 setIdentifier:@"ALLOW_NOTIFICATIONS_ID"];
  [v11 setProperty:v8 forKey:@"BBSECTION_INFO_KEY"];
  [v11 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v12 = [(BulletinBoardAppDetailController *)self _expirationTextForSectionInfo:v4];
  if (v12)
  {
    [v11 setProperty:v12 forKey:PSTableCellSubtitleTextKey];
  }

  return v11;
}

- (id)_expirationTextForSectionInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 sectionInfoSettings];
  v5 = [v4 isAuthorizedTemporarily];

  if (v5)
  {
    v6 = [v3 authorizationExpirationDate];
    [v6 timeIntervalSinceNow];
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

- (id)_soundSettingSpecifierForSectionInfo:(id)a3
{
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:a3 setting:0x4000 pushSetting:2];
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

- (id)_customSoundSettingSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  if (([v4 suppressedSettings] & 0x4000) != 0 || (objc_msgSend(v4, "sectionID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = +[TLAlert bb_toneLibraryAlertTypeForSectionID:](TLAlert, "bb_toneLibraryAlertTypeForSectionID:", v5), v5, !v6))
  {
    v9 = 0;
  }

  else
  {
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v8 = [v7 localizedStringForKey:@"SOUNDS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"detailTextForToneWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

    [v9 setIdentifier:@"SOUND_SUBSTITUTE_ID"];
    [v9 setProperty:v4 forKey:@"BBSECTION_INFO_KEY"];
    v10 = NSStringFromTLAlertType();
    [v9 setProperty:v10 forKey:@"alertType"];

    v11 = [v4 subsectionID];
    [v9 setProperty:v11 forKey:@"accountIdentifier"];
  }

  return v9;
}

- (id)_badgesSettingSpecifierForSectionInfo:(id)a3
{
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:a3 setting:0x2000 pushSetting:1];
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

- (id)_alertDeliveryTypeSettingsSpecifierForSectionInfo:(id)a3
{
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:a3 passingTest:&stru_4D5B0];
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

- (id)_notificationCenterSettingSpecifierForSectionInfo:(id)a3
{
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:a3 passingTest:&stru_4D5D0];
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

- (id)_bannerSettingSpecifierForSectionInfo:(id)a3
{
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:a3 passingTest:&stru_4D5F0];
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

- (id)_bannerStyleSettingSpecifierForSectionInfo:(id)a3
{
  v4 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:a3 passingTest:&stru_4D610];
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

- (id)_carPlaySettingSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  if ([v4 carPlaySetting])
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
      v6 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:v4 setting:128];
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

- (id)_remoteNotificationsSettingSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  if ([v4 remoteNotificationsSetting] && _os_feature_enabled_impl() && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, !v6) && +[NCRemoteNotificationsManager featureIsAvailable](NCRemoteNotificationsManager, "featureIsAvailable"))
  {
    v7 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:v4 setting:0x10000];
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

- (id)_criticalAlertSettingSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  if ([v4 criticalAlertSetting])
  {
    v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:v4 setting:256];
    if (v5 && ![(BulletinBoardAppDetailController *)self isApplicationHiddenForSectionInfo:v4])
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

- (id)_timeSensitiveSettingSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  if ([v4 timeSensitiveSetting] && objc_msgSend(v4, "authorizationStatus") != &dword_0 + 1)
  {
    v6 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:v4 setting:2048];
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

- (id)_directMessagesSettingSpecifierForSectionInfo:(id)a3
{
  v4 = a3;
  if (!-[BulletinBoardAppDetailController isEffectiveGlobalScheduledDeliverySettingEnabled](self, "isEffectiveGlobalScheduledDeliverySettingEnabled") || [v4 scheduledDeliverySetting] == &dword_0 + 1 || objc_msgSend(v4, "authorizationStatus") == &dword_0 + 1 || !objc_msgSend(v4, "directMessagesSetting"))
  {
    v8 = 0;
  }

  else
  {
    v5 = [(BulletinBoardAppDetailController *)self _effectiveSectionInfoForSectionInfo:v4 setting:0x8000];
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

- (void)_updateBannerStyleForSectionInfo:(id)a3 animated:(BOOL)a4 forSpecifiers:(id)a5
{
  v6 = a4;
  v18 = a3;
  v8 = a5;
  v9 = v8;
  if (!v8)
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
  if ([v18 alertType])
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

  if (v8)
  {
    v16 = [v14 currentSpecifiers];
    [v8 setArray:v16];
  }

  else
  {
    v17 = [v14 context];
    [v17 setAnimated:v6];

    [(BulletinBoardAppDetailController *)self performSpecifierUpdates:v14];
  }

LABEL_14:
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BulletinBoardAppDetailController *)self specifierForID:@"DELIVERY_TYPE_ID"];
  v9 = [(BulletinBoardAppDetailController *)self indexPathForSpecifier:v8];
  v10 = [v9 isEqual:v7];

  if (v10)
  {
    [v6 bounds];
    v12 = v11;
    [v6 _sectionContentInset];
    [AlertDeliveryTypeCell preferredHeightInWidth:v12 - v13 - v14];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = BulletinBoardAppDetailController;
    [(BulletinBoardAppDetailController *)&v18 tableView:v6 heightForRowAtIndexPath:v7];
  }

  v16 = v15;

  return v16;
}

- (id)allowNotifications:(id)a3
{
  v4 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", !-[BulletinBoardAppDetailController isApplicationHiddenForSectionInfo:](self, "isApplicationHiddenForSectionInfo:", v4) & [v4 allowsNotifications]);

  return v5;
}

- (void)setAllowNotifications:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [v6 propertyForKey:@"BBSECTION_INFO_KEY"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v11 setAuthorizationStatus:v9];
  [v6 setProperty:v11 forKey:@"BBSECTION_INFO_KEY"];

  v10 = [v11 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v11 forSectionID:v10];

  [(BulletinBoardAppDetailController *)self reloadSpecifiers];
}

- (id)alertDeliveryDescriptor:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AlertDeliveryTypeDescriptor);
  v5 = [v3 propertyForKey:@"BBSECTION_INFO_KEY"];

  v6 = [v5 suppressedSettings];
  v7 = [v5 pushSettings];
  if ((v6 & 2) != 0)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    -[AlertDeliveryTypeDescriptor setLockScreenSetting:](v4, "setLockScreenSetting:", [v5 lockScreenSetting]);
    if (v6)
    {
LABEL_3:
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  -[AlertDeliveryTypeDescriptor setNotificationCenterSetting:](v4, "setNotificationCenterSetting:", [v5 notificationCenterSetting]);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v7 & 4) != 0)
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

- (void)setAlertDeliveryDescriptor:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  if ([v7 authorizationStatus] == &dword_0 + 3)
  {
    [v7 setAuthorizationStatus:2];
  }

  v11 = v6;
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
    v8 = [v7 alertType];
    if ([v11 bannerSetting] == &dword_0 + 2)
    {
      if (v8)
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

  v10 = [v7 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v7 forSectionID:v10];

  [(BulletinBoardAppDetailController *)self _updateBannerStyleForSectionInfo:v7 animated:1];
}

- (id)bannerStyle:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 alertType]);

  return v4;
}

- (void)setBannerStyle:(id)a3 specifier:(id)a4
{
  v10 = a3;
  v6 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  if ([v6 authorizationStatus] == &dword_0 + 3)
  {
    [v6 setAuthorizationStatus:2];
  }

  v7 = [v10 integerValue];
  if (!v7)
  {
    self->_savedBannersAlertType = [v6 alertType];
  }

  [v6 setAlertType:v7];
  v8 = [v6 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v6 forSectionID:v8];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"BannerStyleSpecifierDidUpdateNotification" object:0];
}

- (id)viewInCarPlay:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 carPlaySetting] == &dword_0 + 2);

  return v4;
}

- (void)setViewInCarPlay:(id)a3 specifier:(id)a4
{
  v9 = a3;
  v6 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  if ([v6 authorizationStatus] == &dword_0 + 3)
  {
    [v6 setAuthorizationStatus:2];
  }

  if ([v9 BOOLValue])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setCarPlaySetting:v7];
  v8 = [v6 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v6 forSectionID:v8];
}

- (id)allowRemoteNotifications:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 remoteNotificationsSetting] == &dword_0 + 2);

  return v4;
}

- (void)setAllowRemoteNotifications:(id)a3 specifier:(id)a4
{
  v9 = a3;
  v6 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  if ([v6 authorizationStatus] == &dword_0 + 3)
  {
    [v6 setAuthorizationStatus:2];
  }

  if ([v9 BOOLValue])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setRemoteNotificationsSetting:v7];
  v8 = [v6 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v6 forSectionID:v8];
}

- (id)criticalAlert:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 criticalAlertSetting] == &dword_0 + 2);

  return v4;
}

- (void)setCriticalAlert:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v9 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  LODWORD(a4) = [v6 BOOLValue];

  if (a4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v9 setCriticalAlertSetting:v7];
  v8 = [v9 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v9 forSectionID:v8];
}

- (id)timeSensitiveSetting:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 timeSensitiveSetting] == &dword_0 + 2);

  return v4;
}

- (void)setTimeSensitiveSetting:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v9 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  LODWORD(a4) = [v6 BOOLValue];

  if (a4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v9 setTimeSensitiveSetting:v7];
  [v9 setUserConfiguredTimeSensitiveSetting:1];
  v8 = [v9 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v9 forSectionID:v8];
}

- (id)directMessagesSetting:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 directMessagesSetting] == &dword_0 + 2);

  return v4;
}

- (void)setDirectMessagesSetting:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v9 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  LODWORD(a4) = [v6 BOOLValue];

  if (a4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v9 setDirectMessagesSetting:v7];
  v8 = [v9 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v9 forSectionID:v8];
}

- (id)notificationCenterSetting:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 notificationCenterSetting] == &dword_0 + 2);

  return v4;
}

- (void)setNotificationCenterSetting:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v9 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  LODWORD(a4) = [v6 BOOLValue];

  if (a4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v9 setNotificationCenterSetting:v7];
  v8 = [v9 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v9 forSectionID:v8];
}

- (id)bannerSetting:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 alertType] != 0);

  return v4;
}

- (void)setBannerSetting:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v11 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  v7 = [v11 alertType];
  v8 = [v6 BOOLValue];

  if (v8)
  {
    if (v7)
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
  v10 = [v11 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v11 forSectionID:v10];

  [(BulletinBoardAppDetailController *)self _updateBannerStyleForSectionInfo:v11 animated:1];
}

- (id)_valueOfNotificationType:(unint64_t)a3 forSectionInfo:(id)a4
{
  v4 = ([a4 pushSettings] & a3) != 0;

  return [NSNumber numberWithBool:v4];
}

- (id)sounds:(id)a3
{
  v4 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v5 = [(BulletinBoardAppDetailController *)self _valueOfNotificationType:16 forSectionInfo:v4];

  return v5;
}

- (id)badges:(id)a3
{
  v4 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v5 = [(BulletinBoardAppDetailController *)self _valueOfNotificationType:8 forSectionInfo:v4];

  return v5;
}

- (void)_setValue:(id)a3 notificationType:(unint64_t)a4 forSectionInfo:(id)a5
{
  v13 = a5;
  v8 = a3;
  if ([v13 authorizationStatus] == &dword_0 + 3)
  {
    [v13 setAuthorizationStatus:2];
  }

  v9 = [v13 pushSettings];
  v10 = [v8 BOOLValue];

  if (v10)
  {
    v11 = v9 | a4;
  }

  else
  {
    v11 = v9 & ~a4;
  }

  [v13 setPushSettings:v11];
  v12 = [v13 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v13 forSectionID:v12];
}

- (void)setSectionInfo:(id)a3 forSectionID:(id)a4
{
  v7 = a3;
  if ([v7 authorizationStatus] == &dword_4)
  {
    [v7 setAuthorizationStatus:2];
    [(BulletinBoardAppDetailController *)self reloadSpecifierID:@"ALLOW_NOTIFICATIONS_ID"];
  }

  v5 = +[NCSettingsGatewayController sharedInstance];
  v6 = [v7 sectionID];
  [v5 setSectionInfo:v7 forSectionID:v6];
}

- (void)_updateSpecifiersWithSectionInfo:(id)a3 reloadRootSpecifier:(BOOL)a4
{
  v4 = a4;
  [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] setProperty:a3 forKey:@"BBSECTION_INFO_KEY"];
  if (v4)
  {

    [(BulletinBoardAppDetailController *)self reloadSpecifiers];
  }
}

- (void)setSounds:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  [(BulletinBoardAppDetailController *)self _setValue:v6 notificationType:16 forSectionInfo:v7];
}

- (void)setBadges:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = [a4 propertyForKey:@"BBSECTION_INFO_KEY"];
  [(BulletinBoardAppDetailController *)self _setValue:v6 notificationType:8 forSectionInfo:v7];
}

- (BulletinBoardAppDetailControllerDelegate)delegate
{
  v2 = [(BulletinBoardAppDetailController *)self specifier];
  v3 = [v2 propertyForKey:kNotificationsSettingsDetailControllerDelegate];

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BulletinBoardAppDetailController;
  [(BulletinBoardAppDetailController *)&v4 viewDidAppear:a3];
  [(BulletinBoardAppDetailController *)self emitNavigationEventForAppDetailController];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(BulletinBoardAppDetailController *)self delegate];
  [v5 appDetailControllerWillDisappear:self];

  v6.receiver = self;
  v6.super_class = BulletinBoardAppDetailController;
  [(BulletinBoardAppDetailController *)&v6 viewWillDisappear:v3];
}

- (void)willBecomeActive
{
  v3 = [(BulletinBoardAppDetailController *)self parentController];
  v4 = objc_opt_class();
  v7 = v3;
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

- (BOOL)isApplicationHiddenForSectionInfo:(id)a3
{
  v3 = [a3 sectionID];
  v4 = [APApplication applicationWithBundleIdentifier:v3];
  v5 = [v4 isHidden];

  return v5;
}

- (NSString)sectionID
{
  v2 = [(BulletinBoardAppDetailController *)self specifier];
  v3 = [v2 propertyForKey:@"BBSECTION_INFO_KEY"];

  v4 = [v3 sectionID];

  return v4;
}

- (void)_updateNotificationDeliverySettingForSpecifier:(id)a3
{
  v11 = a3;
  v4 = [v11 propertyForKey:@"BBSECTION_INFO_KEY"];
  v5 = [v11 identifier];
  v6 = [v5 isEqualToString:@"NOTIFICATION_DELIVERY_IMMEDIATE_ID"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v11 identifier];
    v9 = [v8 isEqualToString:@"NOTIFICATION_DELIVERY_SCHEDULED_ID"];

    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = 2;
  }

  [v4 setScheduledDeliverySetting:v7];
LABEL_6:
  v10 = [v4 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v4 forSectionID:v10];
}

- (BOOL)isEffectiveGlobalScheduledDeliverySettingEnabled
{
  v2 = +[NCSettingsGatewayController sharedInstance];
  v3 = [v2 effectiveGlobalScheduledDeliverySetting];

  return v3 == &dword_0 + 2;
}

- (void)tappedEditSchedule:(id)a3
{
  v9 = objc_alloc_init(NCScheduledDeliverySettingsController);
  v4 = [[UINavigationController alloc] initWithRootViewController:v9];
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v6 = [v5 localizedStringForKey:@"SCHEDULED_DELIVERY" value:&stru_4E3F0 table:@"NotificationsSettings"];
  [(NCScheduledDeliverySettingsController *)v9 setTitle:v6];

  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"editScheduleDismissed:"];
  v8 = [(NCScheduledDeliverySettingsController *)v9 navigationItem];
  [v8 setRightBarButtonItem:v7];

  [(BulletinBoardAppDetailController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)editScheduleDismissed:(id)a3
{
  [(BulletinBoardAppDetailController *)self reloadSpecifiers];

  [(BulletinBoardAppDetailController *)self dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)_areAlwaysDeliverImmediatelyNotificationsNotEnabledForScheduledDeliveryForSectionInfo:(id)a3
{
  v4 = a3;
  v5 = -[BulletinBoardAppDetailController isEffectiveGlobalScheduledDeliverySettingEnabled](self, "isEffectiveGlobalScheduledDeliverySettingEnabled") && [v4 scheduledDeliverySetting] == &dword_0 + 2 && objc_msgSend(v4, "timeSensitiveSetting") != &dword_0 + 2 && objc_msgSend(v4, "directMessagesSetting") != &dword_0 + 2;

  return v5;
}

- (void)setShowsMessagePreview:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [v6 propertyForKey:@"BBSECTION_INFO_KEY"];
  v8 = [v7 integerValue];

  if (v8 == self->_globalContentPreviewSetting)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  [v12 setContentPreviewSetting:v9];
  v10 = [v12 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v12 forSectionID:v10];

  [v6 setProperty:v12 forKey:@"BBSECTION_INFO_KEY"];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 postNotificationName:@"ShowPreviewAppSpecifierDidUpdateNotification" object:0];
}

- (id)showsMessagePreview:(id)a3
{
  v4 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  globalContentPreviewSetting = [v4 contentPreviewSetting];
  if (!globalContentPreviewSetting)
  {
    globalContentPreviewSetting = self->_globalContentPreviewSetting;
  }

  v6 = [NSNumber numberWithInteger:globalContentPreviewSetting];

  return v6;
}

- (void)setNotificationGrouping:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [v6 propertyForKey:@"BBSECTION_INFO_KEY"];
  v8 = [v7 integerValue];

  [v11 setBulletinGroupingSetting:v8];
  v9 = [v11 sectionID];
  [(BulletinBoardAppDetailController *)self setSectionInfo:v11 forSectionID:v9];

  [v6 setProperty:v11 forKey:@"BBSECTION_INFO_KEY"];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 postNotificationName:@"NotificationGroupingAppSpecifierDidUpdateNotification" object:0];
}

- (id)notificationGrouping:(id)a3
{
  v3 = [a3 propertyForKey:@"BBSECTION_INFO_KEY"];
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 bulletinGroupingSetting]);

  return v4;
}

- (void)appDetailControllerWillDisappear:(id)a3
{
  v4 = [a3 specifier];
  [(BulletinBoardAppDetailController *)self reloadSpecifier:v4];
}

- (void)settingsGateway:(id)a3 didUpdateSectionInfo:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_11774;
  v5[3] = &unk_4D0D8;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)emitNavigationEventForAppDetailController
{
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v4 = [v3 bundleURL];

  if (v4)
  {
    v5 = self->_savedSectionInfo;
    v6 = [(BBSectionInfo *)v5 sectionID];
    v7 = [(BBSectionInfo *)v5 displayName];
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = [NSURL URLWithString:kNotificationSettingsDeepLinkURLString];
      v11 = [v10 URLByAppendingPathComponent:v6];

      v12 = [_NSLocalizedStringResource alloc];
      v13 = kNotificationsSettingsLocalizedStringsTable;
      v14 = +[NSLocale currentLocale];
      v15 = [v12 initWithKey:@"APP_NAME_IN_DEFAULT_VALUE" defaultValue:v8 table:v13 locale:v14 bundleURL:v4];

      v16 = kNotificationsSettingsGraphicIcon;
      v18 = v15;
      v17 = [NSArray arrayWithObjects:&v18 count:1];
      [(BulletinBoardAppDetailController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v16 title:v15 localizedNavigationComponents:v17 deepLink:v11];
    }
  }
}

+ (void)emitNavigationEventForSpecifier:(id)a3 viewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  if ([v7 isSubclassOfClass:objc_opt_class()])
  {
    v8 = v6;
    v9 = [v5 identifier];
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v11 = [v10 bundleURL];

    if (v9 && v11)
    {
      v12 = [v5 propertyForKey:@"BBSECTION_INFO_KEY"];
      v13 = [v12 sectionID];
      v14 = [v12 displayName];
      v15 = v14;
      if (v13 && v14)
      {
        v16 = [NSURL URLWithString:kNotificationSettingsDeepLinkURLString];
        v17 = [v16 URLByAppendingPathComponent:v13];

        v18 = [v17 URLByAppendingPathComponent:v9];

        v38[0] = @"BANNER_STYLE_ID";
        v38[1] = @"SOUND_SUBSTITUTE_ID";
        v39[0] = @"BANNER_STYLE";
        v39[1] = @"SOUNDS";
        v38[2] = @"SHOW_PREVIEW_APP_ID";
        v38[3] = @"NOTIFICATION_GROUPING_APP_ID";
        v39[2] = @"SHOW_PREVIEWS";
        v39[3] = @"NOTIFICATION_GROUPING";
        v19 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
        v20 = [v19 objectForKeyedSubscript:v9];
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
          v24 = [v21 initWithKey:@"APP_NAME_IN_DEFAULT_VALUE" defaultValue:v36 table:v22 locale:v23 bundleURL:v11];

          v25 = [_NSLocalizedStringResource alloc];
          v26 = kNotificationsSettingsLocalizedStringsTable;
          v27 = +[NSLocale currentLocale];
          v28 = [v25 initWithKey:v35 table:v26 locale:v27 bundleURL:v11];

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

- (void)handleBannerStyleDidUpdateNotification:(id)a3
{
  v4 = a3;
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
    v6 = v4;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)handleShowPreviewDidUpdateNotification:(id)a3
{
  v4 = a3;
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
    v6 = v4;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)handleNotificationGroupingDidUpdateNotification:(id)a3
{
  v4 = a3;
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
    v6 = v4;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

@end