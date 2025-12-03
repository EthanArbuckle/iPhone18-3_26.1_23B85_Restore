@interface BulletinBoardController
+ (void)emitNavigationEventForSpecifier:(id)specifier viewController:(id)controller;
- (BOOL)_shouldShowSection:(id)section;
- (BOOL)priorityNotificationsDetailController:(id)controller shouldShowSection:(id)section;
- (BOOL)shouldAppDetailControllerBecomeActive:(id)active;
- (BOOL)summarizePreviewsDetailController:(id)controller shouldShowSection:(id)section;
- (BulletinBoardController)init;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_alphabetizedSpecifiersFrom:(id)from;
- (id)_appclipsSpecifierForAppClips:(id)clips;
- (id)_filterSuppressedSections:(id)sections;
- (id)_sectionDescriptions;
- (id)_sectionIDs;
- (id)_sectionUIDescriptions;
- (id)cmasAlertsTitle:(id)title;
- (id)cmasAlertsValue:(id)value;
- (id)notificationListDisplayStyleSetting:(id)setting;
- (id)priorityNotificationSetting:(id)setting;
- (id)scheduledDeliverySetting:(id)setting;
- (id)screenSharingSetting:(id)setting;
- (id)sectionsOrderedByInOutState:(id)state;
- (id)specifiers;
- (id)spokenNotifications:(id)notifications;
- (id)summarizationSetting:(id)setting;
- (void)_addRegionalAlertGroupToSpecifiers:(id)specifiers;
- (void)_buttonActionForApplicationSpecifier:(id)specifier;
- (void)_clearSections;
- (void)_loadGlobalSettings;
- (void)_loadSections;
- (void)_reallyLoadSections:(id)sections;
- (void)_reloadSections;
- (void)_updateStoredSectionsWithSectionInfo:(id)info;
- (void)appDetailControllerWillDisappear:(id)disappear;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)cmasPropertyChanged;
- (void)dealloc;
- (void)emitNavigationEventForRootController;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)profileNotification:(id)notification;
- (void)setCmasAlertState:(id)state forSpecifier:(id)specifier;
- (void)setNotificationListDisplayStyleSetting:(id)setting specifier:(id)specifier;
- (void)setShowsPreview:(id)preview specifier:(id)specifier;
- (void)settingsGateway:(id)gateway didUpdateSectionInfo:(id)info;
- (void)settingsGatewayDidUpdateGlobalSettings:(id)settings;
- (void)showPreviewsSettingsDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BulletinBoardController

- (BulletinBoardController)init
{
  v12.receiver = self;
  v12.super_class = BulletinBoardController;
  v2 = [(BulletinBoardController *)&v12 init];
  if (v2)
  {
    v3 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v4 = [v3 localizedStringForKey:@"TITLE" value:&stru_4E3F0 table:@"NotificationsSettings"];
    [(BulletinBoardController *)v2 setTitle:v4];

    v5 = +[APSubject subjectMonitorRegistry];
    v6 = [v5 addMonitor:v2 subjectMask:1];
    appProtectionEventSubscription = v2->_appProtectionEventSubscription;
    v2->_appProtectionEventSubscription = v6;

    [(BulletinBoardController *)v2 _loadSections];
    [(BulletinBoardController *)v2 _loadGlobalSettings];
    CTTelephonyCenterGetDefault();
    CTTelephonyCenterAddObserver();
    v8 = +[NSNotificationCenter defaultCenter];
    v9 = +[MCProfileConnection sharedConnection];
    [v9 registerObserver:v2];

    [v8 addObserver:v2 selector:"screenSharingSettingChanged:" name:kNCScreenSharingSettingChangedNotification object:0];
    [v8 addObserver:v2 selector:"showPreviewsSettingsDidChange:" name:@"SHOW_PREVIEW_GROUP_ID_VALUE_CHANGED" object:0];
    v10 = +[NCSettingsGatewayController sharedInstance];
    [v10 addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  CTTelephonyCenterGetDefault();
  CTTelephonyCenterRemoveObserver();
  v4 = +[NCSettingsGatewayController sharedInstance];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = BulletinBoardController;
  [(BulletinBoardController *)&v5 dealloc];
}

- (void)profileNotification:(id)notification
{
  v5 = [notification objectForKey:MCSetParametersForSettingsByTypeParamSenderPID];
  intValue = [v5 intValue];
  if (intValue != getpid())
  {
    [(BulletinBoardController *)self reloadSpecifiers];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = BulletinBoardController;
  [(BulletinBoardController *)&v5 viewWillAppear:appear];
  table = [(BulletinBoardController *)self table];
  [table setAllowsSelectionDuringEditing:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BulletinBoardController;
  [(BulletinBoardController *)&v4 viewDidAppear:appear];
  [(BulletinBoardController *)self emitNavigationEventForRootController];
}

- (void)_addRegionalAlertGroupToSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  if (MGGetBoolAnswer())
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v3 = _CTServerConnectionCreate();
    if (v3)
    {
      v4 = v3;
      theArray = 0;
      v5 = _CTServerConnectionCopyCellBroadcastAlertTypesForAllSIMSlots();
      if (HIDWORD(v5))
      {
        v6 = v5;
        v8 = v4;
        v7 = NCLogEmergencyAlerts;
        if (os_log_type_enabled(NCLogEmergencyAlerts, OS_LOG_TYPE_ERROR))
        {
          sub_32BC8(v6, v7);
        }

        v4 = v8;
      }

      CFRelease(v4);
    }
  }
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  completionCopy = completion;
  if (qword_5C5A0)
  {
    v7.receiver = self;
    v7.super_class = BulletinBoardController;
    [(BulletinBoardController *)&v7 handleURL:l withCompletion:completionCopy];
  }

  else
  {
    [(BulletinBoardController *)self setUrlResourceDictionary:l];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (id)sectionsOrderedByInOutState:(id)state
{
  stateCopy = state;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [stateCopy count]);
  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = stateCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (BBSectionShouldShowInNotificationCenter(v11))
        {
          v12 = v4;
        }

        else
        {
          v12 = v5;
        }

        [v12 addObject:{v11, v14}];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v4 addObjectsFromArray:v5];

  return v4;
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_32;
  }

  v88 = OBJC_IVAR___PSListController__specifiers;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 || _os_feature_enabled_impl())
  {
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v8 = [v7 localizedStringForKey:@"NOTIFICATION_LIST_DISPLAY_STYLE_TITLE" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v9 = [PSSpecifier groupSpecifierWithID:@"NOTIFICATION_LIST_DISPLAY_STYLE_GROUP_ID" name:v8];

    [v4 addObject:v9];
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v11 = [v10 localizedStringForKey:@"NOTIFICATION_LIST_DISPLAY_STYLE_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];
    [v9 setProperty:v11 forKey:PSFooterTextGroupKey];

    v12 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"setNotificationListDisplayStyleSetting:specifier:" get:"notificationListDisplayStyleSetting:" detail:0 cell:-1 edit:0];
    [v12 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v12 setIdentifier:@"NOTIFICATION_LIST_DISPLAY_STYLE_CELL"];
    [v4 addObject:v12];
  }

  v13 = [PSSpecifier groupSpecifierWithID:@"NOTIFICATION_GLOBAL_SETTINGS_GROUP_ID"];
  notificationsGlobalSettingsGroupSpecifier = self->_notificationsGlobalSettingsGroupSpecifier;
  self->_notificationsGlobalSettingsGroupSpecifier = v13;

  [v4 addObject:self->_notificationsGlobalSettingsGroupSpecifier];
  v15 = [NSBundle bundleWithIdentifier:?];
  v16 = [v15 localizedStringForKey:@"SCHEDULED_DELIVERY" value:? table:?];
  v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:"scheduledDeliverySetting:" detail:objc_opt_class() cell:2 edit:0];

  [v17 setIdentifier:@"SCHEDULED_DELIVERY_ID"];
  v84 = PSDeferItemSelectionKey;
  [v17 setProperty:&__kCFBooleanFalse forKey:?];
  [v17 setProperty:self forKey:kNotificationsSettingsDetailControllerDelegate];
  v87 = v17;
  [v4 addObject:v17];
  [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v18 = v89 = v4;
  v19 = [v18 localizedStringForKey:@"SHOW_PREVIEW_OPTION_ALWAYS" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v91[0] = v19;
  v20 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v21 = [v20 localizedStringForKey:@"SHOW_PREVIEW_OPTION_UNLOCKED" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v91[1] = v21;
  v22 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v23 = [v22 localizedStringForKey:@"SHOW_PREVIEW_OPTION_NEVER" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v91[2] = v23;
  v24 = [NSArray arrayWithObjects:v91 count:3];

  v25 = v89;
  v26 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v27 = [v26 localizedStringForKey:@"SHOW_PREVIEWS" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:"setShowsPreview:specifier:" get:"showsPreview:" detail:objc_opt_class() cell:2 edit:0];
  showPreviewsGroupSpecifier = self->_showPreviewsGroupSpecifier;
  self->_showPreviewsGroupSpecifier = v28;

  [(PSSpecifier *)self->_showPreviewsGroupSpecifier setIdentifier:@"SHOW_PREVIEW_GROUP_ID"];
  v86 = v24;
  [(PSSpecifier *)self->_showPreviewsGroupSpecifier setValues:&off_51690 titles:v24];
  v30 = &_s24ScreenContinuityServices15CompanionDeviceV06remoteA7PairingAC0G5StateOSgvg_ptr;
  [(PSSpecifier *)self->_showPreviewsGroupSpecifier setProperty:&__kCFBooleanFalse forKey:v84];
  [(PSSpecifier *)self->_showPreviewsGroupSpecifier setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v89 addObject:self->_showPreviewsGroupSpecifier];
  v31 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v32 = [v31 localizedStringForKey:@"SCREEN_SHARING" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v33 = [PSSpecifier preferenceSpecifierNamed:v32 target:self set:0 get:"screenSharingSetting:" detail:objc_opt_class() cell:2 edit:0];

  [v33 setIdentifier:@"SCREENSHARING_ID"];
  v85 = v33;
  [v89 addObject:v33];
  if (_BSIsInternalInstall())
  {
    v34 = NCOverrideToShowGMSBasedToggles();
  }

  else
  {
    v34 = 0;
  }

  v35 = _os_feature_enabled_impl();
  v36 = v34;
  if (!v34)
  {
    v36 = v34;
    if (v35)
    {
      if (!NCAreGenerativePrioritizationModelsAvailable())
      {
        v36 = 0;
        if (v34)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }

      v36 = self->_globalHighlightsSetting != -1;
    }
  }

  if (v34)
  {
LABEL_13:
    v37 = 1;
    goto LABEL_19;
  }

LABEL_15:
  if (NCAreGenerativeSummarizationModelsAvailable())
  {
    v37 = self->_globalSummarizationSetting != -1;
  }

  else
  {
    v37 = 0;
  }

  if (!v36 && !v37)
  {
    v37 = 0;
    if (!v36)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_19:
  v38 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v39 = [v38 localizedStringForKey:@"APPLE_INTELLIGENCE" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v40 = [PSSpecifier groupSpecifierWithName:v39];

  v30 = &_s24ScreenContinuityServices15CompanionDeviceV06remoteA7PairingAC0G5StateOSgvg_ptr;
  v41 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v42 = [v41 localizedStringForKey:@"APPLE_INTELLIGENCE_FOOTER" value:&stru_4E3F0 table:@"NotificationsSettings"];
  [v40 setProperty:v42 forKey:PSFooterTextGroupKey];

  [v89 addObject:v40];
  if (v36)
  {
LABEL_20:
    v43 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v44 = [v43 localizedStringForKey:@"PRIORITIZE_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v45 = [PSSpecifier preferenceSpecifierNamed:v44 target:self set:0 get:"priorityNotificationSetting:" detail:objc_opt_class() cell:2 edit:0];

    [v45 setIdentifier:@"PRIORITIZE_NOTIFICATIONS_ID"];
    [v45 setProperty:self forKey:kNotificationsSettingsDetailControllerDelegate];
    [v89 addObject:v45];
  }

LABEL_21:
  v46 = &_s24ScreenContinuityServices15CompanionDeviceV06remoteA7PairingAC0G5StateOSgvg_ptr;
  if (v37)
  {
    v47 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v48 = [v47 localizedStringForKey:@"SUMMARIZE_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v49 = [PSSpecifier preferenceSpecifierNamed:v48 target:self set:0 get:"summarizationSetting:" detail:objc_opt_class() cell:2 edit:0];

    [v49 setIdentifier:@"SUMMARIZE_NOTIFICATIONS_ID"];
    [v49 setProperty:self forKey:kNotificationsSettingsDetailControllerDelegate];
    [v89 addObject:v49];
  }

  v50 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v51 = [v50 localizedStringForKey:@"SIRI" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v52 = [PSSpecifier groupSpecifierWithName:v51];

  [v52 setIdentifier:@"SIRI_GROUP_ID"];
  [v89 addObject:v52];
  v53 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalAnnounceSetting = [v53 effectiveGlobalAnnounceSetting];

  v55 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v56 = v55;
  if (effectiveGlobalAnnounceSetting == -1)
  {
    v63 = [v55 localizedStringForKey:@"SIRI_SUGGESTIONS_FOOTER_TEXT" value:&stru_4E3F0 table:@"NotificationsSettings"];
    [v52 setProperty:v63 forKey:PSFooterTextGroupKey];
  }

  else
  {
    v57 = [v55 localizedStringForKey:@"OFF" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v90[0] = v57;
    v58 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v59 = [v58 localizedStringForKey:@"ON" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v90[1] = v59;
    v60 = [NSArray arrayWithObjects:v90 count:2];

    v61 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v46 = &_s24ScreenContinuityServices15CompanionDeviceV06remoteA7PairingAC0G5StateOSgvg_ptr;
    v25 = v89;
    v62 = [v61 localizedStringForKey:@"SPOKEN_NOTIFICATIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v63 = [PSSpecifier preferenceSpecifierNamed:v62 target:self set:0 get:"spokenNotifications:" detail:objc_opt_class() cell:2 edit:0];

    [v63 setIdentifier:@"SPOKEN_NOTIFICATIONS_ID"];
    [v63 setValues:&off_516A8 titles:v60];
    [v63 setProperty:self forKey:kNotificationsSettingsDetailControllerDelegate];
    [v89 addObject:v63];
    v56 = v60;
    v30 = &_s24ScreenContinuityServices15CompanionDeviceV06remoteA7PairingAC0G5StateOSgvg_ptr;
  }

  v64 = v30[368];
  v65 = [v46[417] bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v66 = [v65 localizedStringForKey:@"SIRI_SUGGESTIONS" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v67 = [v64 preferenceSpecifierNamed:v66 target:self set:0 get:0 detail:0 cell:2 edit:0];

  [v67 setIdentifier:@"SIRI_SUGGESTIONS_ID"];
  v68 = PSBundlePathForPreferenceBundle();
  [v67 setProperty:v68 forKey:PSLazilyLoadedBundleKey];

  [v67 setProperty:@"ASTLockScreenSuggestionsDetailListController" forKey:PSDetailControllerClassKey];
  v69 = v46[417];
  v70 = PSBundlePathForPreferenceBundle();
  v71 = SFRuntimeAbsoluteFilePathForPath();
  v72 = [v69 bundleWithPath:v71];

  infoDictionary = [v72 infoDictionary];
  v74 = [infoDictionary objectForKey:@"ASHasSettingsPaneDefinitionForSiriSuggestions"];

  if (v74)
  {
    [v67 setProperty:@"SiriSuggestions" forKey:@"SettingsPaneRecipeContentIdentifier"];
  }

  [v67 setProperty:&__kCFBooleanTrue forKey:PSBundleOverridePrincipalClassKey];
  [v67 setControllerLoadAction:"lazyLoadBundle:"];
  [v25 addObject:v67];
  if ([qword_5C5A0 count])
  {
    v75 = [v25 specifierForID:@"SPINNTER_GROUP"];
    [v25 removeObject:v75];

    v76 = [v25 specifierForID:@"SPINNER_CELL"];
    [v25 removeObject:v76];

    v77 = [(BulletinBoardController *)self _alphabetizedSpecifiersFrom:qword_5C5A0];
    [v25 addObjectsFromArray:v77];

    [(BulletinBoardController *)self _addRegionalAlertGroupToSpecifiers:v25];
    [(BulletinBoardController *)self _reloadSections];
  }

  else
  {
    v78 = [v46[417] bundleWithIdentifier:@"com.apple.NotificationsSettings"];
    v79 = [v78 localizedStringForKey:@"NOTIFICATION_STYLE" value:&stru_4E3F0 table:@"NotificationsSettings"];
    v80 = [PSSpecifier groupSpecifierWithName:v79];

    [v80 setIdentifier:@"SPINNTER_GROUP"];
    [v25 addObject:v80];
    v81 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:15 edit:0];
    [v81 setIdentifier:@"SPINNER_CELL"];
    [v25 addObject:v81];
  }

  v82 = *&self->PSListController_opaque[v88];
  *&self->PSListController_opaque[v88] = v25;

  v3 = *&self->PSListController_opaque[v88];
LABEL_32:

  return v3;
}

- (void)setShowsPreview:(id)preview specifier:(id)specifier
{
  self->_globalContentPreviewSetting = [preview integerValue];
  v5 = +[NCSettingsGatewayController sharedInstance];
  [v5 setEffectiveGlobalContentPreviewsSetting:self->_globalContentPreviewSetting];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"SHOW_PREVIEW_GROUP_ID_VALUE_CHANGED" object:0];

  [(BulletinBoardController *)self reloadSpecifiers];
}

- (void)showPreviewsSettingsDidChange:(id)change
{
  changeCopy = change;
  if (+[NSThread isMainThread])
  {
    [(BulletinBoardController *)self _loadGlobalSettings];
    [(BulletinBoardController *)self reloadSpecifierID:@"SHOW_PREVIEW_GROUP_ID"];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_17744;
    v5[3] = &unk_4D0D8;
    v5[4] = self;
    v6 = changeCopy;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)setNotificationListDisplayStyleSetting:(id)setting specifier:(id)specifier
{
  integerValue = [setting integerValue];
  v6 = +[NCSettingsGatewayController sharedInstance];
  [v6 removeObserver:self];

  v7 = +[NCSettingsGatewayController sharedInstance];
  [v7 setEffectiveGlobalNotificationListDisplayStyleSetting:integerValue];

  v8 = +[NCSettingsGatewayController sharedInstance];
  [v8 addObserver:self];
}

- (id)notificationListDisplayStyleSetting:(id)setting
{
  v3 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalNotificationListDisplayStyleSetting = [v3 effectiveGlobalNotificationListDisplayStyleSetting];

  return [NSNumber numberWithInteger:effectiveGlobalNotificationListDisplayStyleSetting];
}

- (id)spokenNotifications:(id)notifications
{
  v3 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalAnnounceSetting = [v3 effectiveGlobalAnnounceSetting];

  return [NSNumber numberWithInteger:effectiveGlobalAnnounceSetting];
}

- (id)scheduledDeliverySetting:(id)setting
{
  v3 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalScheduledDeliverySetting = [v3 effectiveGlobalScheduledDeliverySetting];

  v5 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalScheduledDeliveryTimes = [v5 effectiveGlobalScheduledDeliveryTimes];

  v7 = NCStringForScheduledDeliverySummary(effectiveGlobalScheduledDeliverySetting, effectiveGlobalScheduledDeliveryTimes);

  return v7;
}

- (id)summarizationSetting:(id)setting
{
  v3 = +[NCSettingsGatewayController sharedInstance];
  effectiveGlobalSummarizationSetting = [v3 effectiveGlobalSummarizationSetting];
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v6 = v5;
  if (effectiveGlobalSummarizationSetting == &dword_0 + 2)
  {
    v7 = @"ON";
  }

  else
  {
    v7 = @"OFF";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_4E3F0 table:@"NotificationsSettings"];

  return v8;
}

- (id)screenSharingSetting:(id)setting
{
  v3 = NCGetAllowNotificationsDuringScreenSharing();
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v5 = v4;
  if (v3)
  {
    v6 = @"SCREEN_SHARING_NOTIFICATIONS_ON";
  }

  else
  {
    v6 = @"SCREEN_SHARING_NOTIFICATIONS_OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_4E3F0 table:@"NotificationsSettings"];

  return v7;
}

- (id)priorityNotificationSetting:(id)setting
{
  globalHighlightsSetting = self->_globalHighlightsSetting;
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v5 = v4;
  if (globalHighlightsSetting == 2)
  {
    v6 = @"ON";
  }

  else
  {
    v6 = @"OFF";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_4E3F0 table:@"NotificationsSettings"];

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(BulletinBoardController *)self specifierForID:@"NOTIFICATION_LIST_DISPLAY_STYLE_CELL"];
  v9 = [(BulletinBoardController *)self indexPathForSpecifier:v8];
  v10 = [v9 isEqual:pathCopy];

  if (v10)
  {
    [viewCopy bounds];
    v12 = v11;
    [viewCopy _sectionContentInset];
    v14 = v13;
    v16 = v15;
    v17 = [(BulletinBoardController *)self tableView:viewCopy cellForRowAtIndexPath:pathCopy];
    if (v17)
    {
      [viewCopy bounds];
      [v17 sizeThatFits:{v12 - v14 - v16, CGRectGetHeight(v23)}];
      v19 = v18;
    }

    else
    {
      v19 = 0.0;
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = BulletinBoardController;
    [(BulletinBoardController *)&v22 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    v19 = v20;
  }

  return v19;
}

- (id)_sectionIDs
{
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [qword_5C5A0 count]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = qword_5C5A0;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        sectionID = [*(*(&v10 + 1) + 8 * i) sectionID];
        [v2 addObject:sectionID];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)_sectionDescriptions
{
  v2 = +[NSMutableString string];
  [v2 appendString:@"MODEL\n{\n"];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = qword_5C5A0;
  v3 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        subsections = [v7 subsections];
        v9 = [subsections countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(subsections);
              }

              if ([*(*(&v19 + 1) + 8 * j) notificationCenterSetting] == &dword_0 + 2)
              {
                v13 = @"Subsections In Notification Center";
                goto LABEL_16;
              }
            }

            v10 = [subsections countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v13 = @"Subsections Not In Notification Center";
LABEL_16:

        sectionID = [v7 sectionID];
        notificationCenterSetting = [v7 notificationCenterSetting];
        v16 = @"Not In Notification Center";
        if (notificationCenterSetting == &dword_0 + 2)
        {
          v16 = @"In Notification Center";
        }

        [v2 appendFormat:@"\t%@\t%@ / %@\n", sectionID, v16, v13];
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  [v2 appendString:@"}\n"];

  return v2;
}

- (id)_sectionUIDescriptions
{
  v3 = +[NSMutableString string];
  [v3 appendString:@"VIEW\n{\n"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) propertyForKey:@"BBSECTION_INFO_KEY"];
        v10 = v9;
        if (v9)
        {
          sectionID = [v9 sectionID];
          notificationCenterSetting = [v10 notificationCenterSetting];
          v13 = @"Not In Notification Center";
          if (notificationCenterSetting == &dword_0 + 2)
          {
            v13 = @"In Notification Center";
          }

          [v3 appendFormat:@"\t%@\t%@\n", sectionID, v13, v15];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"}\n"];

  return v3;
}

- (void)_clearSections
{
  v2 = qword_5C5A0;
  qword_5C5A0 = 0;
}

- (BOOL)_shouldShowSection:(id)section
{
  sectionCopy = section;
  if ([sectionCopy isRestricted])
  {
    v4 = 0;
  }

  else
  {
    sectionID = [sectionCopy sectionID];
    if ([sectionID isEqualToString:@"com.apple.gamecenter"])
    {
      v6 = +[MCProfileConnection sharedConnection];
      v7 = [v6 isBoolSettingLockedDownByRestrictions:@"allowGameCenter"];

      v4 = v7 ^ 1;
    }

    else
    {
      v4 = 1;
    }
  }

  sectionID2 = [sectionCopy sectionID];
  v9 = [APApplication applicationWithBundleIdentifier:sectionID2];
  isHidden = [v9 isHidden];

  if ([sectionCopy suppressFromSettings])
  {
    v11 = 0;
  }

  else
  {
    v11 = v4 & (isHidden ^ 1);
  }

  return v11;
}

- (id)_filterSuppressedSections:(id)sections
{
  sectionsCopy = sections;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = sectionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([(BulletinBoardController *)self _shouldShowSection:v11, v13])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_reallyLoadSections:(id)sections
{
  if (!qword_5C5A0)
  {
    [(BulletinBoardController *)self removeSpecifierID:@"SPINNTER_GROUP"];
    [(BulletinBoardController *)self removeSpecifierID:@"SPINNER_CELL"];
    v4 = [(BulletinBoardController *)self _alphabetizedSpecifiersFrom:qword_5C5A0];
    v5 = [NSMutableArray arrayWithArray:v4];

    [(BulletinBoardController *)self _addRegionalAlertGroupToSpecifiers:v5];
    [(BulletinBoardController *)self addSpecifiersFromArray:v5 animated:1];
  }
}

- (void)_loadSections
{
  v3 = +[NCSettingsGatewayController sharedInstance];
  activeSectionInfo = [v3 activeSectionInfo];

  v5 = [(BulletinBoardController *)self _filterSuppressedSections:activeSectionInfo];
  v6 = [(BulletinBoardController *)self sectionsOrderedByInOutState:v5];
  v7 = qword_5C5A0;
  qword_5C5A0 = v6;

  [(BulletinBoardController *)self _reallyLoadSections:activeSectionInfo];
  urlResourceDictionary = [(BulletinBoardController *)self urlResourceDictionary];

  if (urlResourceDictionary)
  {
    urlResourceDictionary2 = [(BulletinBoardController *)self urlResourceDictionary];
    v10.receiver = self;
    v10.super_class = BulletinBoardController;
    [(BulletinBoardController *)&v10 handleURL:urlResourceDictionary2 withCompletion:0];

    [(BulletinBoardController *)self setUrlResourceDictionary:0];
  }
}

- (void)_loadGlobalSettings
{
  v3 = +[NCSettingsGatewayController sharedInstance];
  self->_globalContentPreviewSetting = [v3 effectiveGlobalContentPreviewsSetting];

  v4 = +[NCSettingsGatewayController sharedInstance];
  self->_globalSummarizationSetting = [v4 effectiveGlobalSummarizationSetting];

  v5 = +[NCSettingsGatewayController sharedInstance];
  self->_globalHighlightsSetting = [v5 effectiveGlobalHighlightsSetting];
}

- (id)_alphabetizedSpecifiersFrom:(id)from
{
  fromCopy = from;
  v5 = +[NSMutableArray array];
  v6 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v7 = [v6 localizedStringForKey:@"NOTIFICATION_STYLE" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v8 = [PSSpecifier groupSpecifierWithName:v7];

  v38 = v5;
  v36 = v8;
  [v5 addObject:v8];
  selfCopy = self;
  v37 = fromCopy;
  v9 = [(BulletinBoardController *)self _sortedSections:fromCopy];
  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    v41 = PSIconUTTypeIdentifierKey;
    v40 = PSLazyIconLoading;
    v42 = PSEnabledKey;
    v43 = *v46;
    do
    {
      v16 = 0;
      v44 = v14;
      do
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v45 + 1) + 8 * v16);
        if ([v17 isAppClip])
        {
          [v10 addObject:v17];
        }

        else
        {
          v18 = v10;
          objc_opt_class();
          v19 = PSApplicationSpecifierForBBSection();
          icon = [v17 icon];
          v21 = [icon _bestVariantForFormat:1];

          v22 = [v21 uti];
          if ([v22 length])
          {
            [v19 setProperty:v22 forKey:v41];
            [v19 setProperty:&__kCFBooleanTrue forKey:v40];
            v23 = [NSNumber numberWithBool:0];
            [v19 setProperty:v23 forKey:kWantsIcon];
          }

          v24 = +[MCProfileConnection sharedConnection];
          sectionID = [v17 sectionID];
          v26 = [v24 isNotificationsModificationAllowedForBundleID:sectionID];

          if (v26)
          {
            [v19 setProperty:&__kCFBooleanTrue forKey:v42];
            [v19 setProperty:selfCopy forKey:kNotificationsSettingsDetailControllerDelegate];
            [v19 setTarget:selfCopy];
            [v19 setButtonAction:"_buttonActionForApplicationSpecifier:"];
          }

          else
          {
            [v19 setProperty:&__kCFBooleanFalse forKey:v42];
          }

          [v11 addObject:v19];

          v10 = v18;
          v15 = v43;
          v14 = v44;
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v14);
  }

  if ([v10 count])
  {
    v27 = [(BulletinBoardController *)selfCopy _appclipsSpecifierForAppClips:v10];
    [v38 addObject:v27];
  }

  [v38 addObjectsFromArray:v11];
  if (![v12 count])
  {
    emptyCell = [(BulletinBoardController *)selfCopy emptyCell];

    if (!emptyCell)
    {
      v29 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
      v30 = [v29 localizedStringForKey:@"EMPTY" value:&stru_4E3F0 table:@"NotificationsSettings"];
      v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];
      [(BulletinBoardController *)selfCopy setEmptyCell:v31];

      emptyCell2 = [(BulletinBoardController *)selfCopy emptyCell];
      v33 = [NSNumber numberWithBool:0];
      [emptyCell2 setProperty:v33 forKey:PSEnabledKey];
    }

    emptyCell3 = [(BulletinBoardController *)selfCopy emptyCell];
    [v38 addObject:emptyCell3];
  }

  return v38;
}

- (id)_appclipsSpecifierForAppClips:(id)clips
{
  clipsCopy = clips;
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v6 = [v5 localizedStringForKey:@"APP_CLIPS" value:&stru_4E3F0 table:@"NotificationsSettings"];
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v7 setIdentifier:@"APP_CLIPS_ID"];
  [v7 setProperty:clipsCopy forKey:@"APP_CLIP_SECTION_INFOS"];

  [v7 setProperty:@"com.apple.graphic-icon.app-clips" forKey:PSIconUTTypeIdentifierKey];
  [v7 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];

  return v7;
}

- (void)setCmasAlertState:(id)state forSpecifier:(id)specifier
{
  stateCopy = state;
  v18 = [specifier propertyForKey:@"CMAS_ALERT_TYPE"];
  [(NSMutableDictionary *)self->_alertTypeKeys objectForKeyedSubscript:?];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = _CTServerConnectionCreate();
        if (v12)
        {
          v13 = v12;
          bOOLValue = [stateCopy BOOLValue];
          v15 = _CTServerConnectionSetCellBroadcastSettingForAlertType();
          v16 = NCLogEmergencyAlerts;
          if (os_log_type_enabled(NCLogEmergencyAlerts, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v25 = v11;
            v26 = 1024;
            v27 = bOOLValue;
            v28 = 1024;
            v29 = 0;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "########### Set CMAS Type: %{public}@ to %d (is did succeed %d)", buf, 0x18u);
          }

          v17 = NCLogEmergencyAlerts;
          if (os_log_type_enabled(NCLogEmergencyAlerts, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v25 = v15 >> 32;
            v26 = 1024;
            v27 = 0;
            _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "### Error with CT Error code: %ld, Did succeed: %d", buf, 0x12u);
          }

          CFRelease(v13);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v8);
  }
}

- (id)cmasAlertsValue:(id)value
{
  valueCopy = value;
  v5 = [valueCopy propertyForKey:@"CMAS_ALERT_TYPE"];
  v6 = [(NSMutableDictionary *)self->_alertTypeKeys objectForKeyedSubscript:v5];
  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [valueCopy propertyForKey:@"CMAS_ENABLED_BY_DEFAULT"];
    bOOLValue = [v8 BOOLValue];

    v10 = _CTServerConnectionCreate();
    if (v10)
    {
      v11 = v10;
      CellBroadcastSettingForAlertType = _CTServerConnectionGetCellBroadcastSettingForAlertType();
      if (HIDWORD(CellBroadcastSettingForAlertType))
      {
        v13 = CellBroadcastSettingForAlertType;
        v14 = NCLogEmergencyAlerts;
        if (os_log_type_enabled(NCLogEmergencyAlerts, OS_LOG_TYPE_ERROR))
        {
          sub_32C44(v13, v14);
        }
      }

      v15 = NCLogEmergencyAlerts;
      if (os_log_type_enabled(NCLogEmergencyAlerts, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v19 = v7;
        v20 = 1024;
        v21 = 0;
        v22 = 1024;
        v23 = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "########### Read CMAS Type: %@ to %d (is valid %d)", buf, 0x18u);
      }

      CFRelease(v11);
      bOOLValue = bOOLValue;
    }

    v16 = [NSNumber numberWithBool:bOOLValue, 0, 0, 0, 0, 0];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)cmasAlertsTitle:(id)title
{
  v3 = [(BulletinBoardController *)self cmasAlertsValue:title];
  bOOLValue = [v3 BOOLValue];

  v5 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  v6 = v5;
  if (bOOLValue)
  {
    v7 = @"ON";
  }

  else
  {
    v7 = @"OFF";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_4E3F0 table:@"NotificationsSettings"];

  return v8;
}

- (void)cmasPropertyChanged
{
  NSLog(@"Property changed callback. Reloading", a2);

  [(BulletinBoardController *)self reloadSpecifiers];
}

- (void)_buttonActionForApplicationSpecifier:(id)specifier
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_194CC;
  v14[3] = &unk_4D0D8;
  specifierCopy = specifier;
  v15 = specifierCopy;
  selfCopy = self;
  v5 = objc_retainBlock(v14);
  v6 = [specifierCopy propertyForKey:@"BBSECTION_INFO_KEY"];
  sectionID = [v6 sectionID];
  v8 = [APApplication applicationWithBundleIdentifier:sectionID];

  if ([v8 isLocked])
  {
    [specifierCopy setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    [(BulletinBoardController *)self reloadSpecifier:specifierCopy];
    v9 = +[APGuard sharedGuard];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_19530;
    v10[3] = &unk_4D7E0;
    v11 = specifierCopy;
    selfCopy2 = self;
    v13 = v5;
    [v9 authenticateForSubject:v8 completion:v10];
  }

  else
  {
    (v5[2])(v5);
  }
}

- (void)_reloadSections
{
  if (qword_5C5A0)
  {
    v3 = +[NCSettingsGatewayController sharedInstance];
    activeSectionInfo = [v3 activeSectionInfo];

    v34 = activeSectionInfo;
    v5 = [(BulletinBoardController *)self _filterSuppressedSections:activeSectionInfo];
    selfCopy = self;
    v6 = [(BulletinBoardController *)self sectionsOrderedByInOutState:v5];

    v7 = [qword_5C5A0 count];
    v8 = v7 == [v6 count];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = qword_5C5A0;
    v40 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v40)
    {
      LODWORD(v9) = 0;
      v39 = *v47;
      v35 = v6;
LABEL_4:
      v10 = 0;
      v9 = v9;
      while (1)
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v46 + 1) + 8 * v10);
        if ([v6 count] <= v9)
        {
          break;
        }

        v41 = v9;
        v12 = [v6 objectAtIndex:v9];
        subsections = [v12 subsections];
        v14 = [subsections count];
        subsections2 = [v11 subsections];
        v16 = [subsections2 count];

        if (v14 == v16)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          subsections3 = [v12 subsections];
          v18 = [subsections3 countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v18)
          {
            v19 = v18;
            v36 = v12;
            v37 = v8;
            LODWORD(v20) = 0;
            v21 = *v43;
            while (2)
            {
              v22 = 0;
              v20 = v20;
              do
              {
                if (*v43 != v21)
                {
                  objc_enumerationMutation(subsections3);
                }

                v23 = *(*(&v42 + 1) + 8 * v22);
                subsections4 = [v11 subsections];
                v25 = [subsections4 objectAtIndex:v20];

                LODWORD(v23) = [v25 isEqualToSection:v23];
                if (!v23)
                {
                  v26 = 0;
                  goto LABEL_20;
                }

                ++v20;
                v22 = v22 + 1;
              }

              while (v19 != v22);
              v19 = [subsections3 countByEnumeratingWithState:&v42 objects:v50 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }

            v26 = 1;
LABEL_20:
            v6 = v35;
            v12 = v36;
            v8 = v37;
          }

          else
          {
            v26 = 1;
          }
        }

        else
        {
          v26 = 0;
        }

        sectionID = [v11 sectionID];
        sectionID2 = [v12 sectionID];
        if ([sectionID isEqualToString:sectionID2] && (v29 = objc_msgSend(v11, "notificationCenterSetting"), v29 == objc_msgSend(v12, "notificationCenterSetting")) && (v30 = objc_msgSend(v11, "pushSettings"), v30 == objc_msgSend(v12, "pushSettings")))
        {

          if (v26)
          {
            goto LABEL_30;
          }
        }

        else
        {
        }

        v8 = 0;
LABEL_30:
        v9 = v41 + 1;

        if (++v10 == v40)
        {
          v40 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v40)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (!v8)
    {
      v31 = [[NSMutableArray alloc] initWithArray:v6];
      v32 = qword_5C5A0;
      qword_5C5A0 = v31;

      [(BulletinBoardController *)selfCopy reloadSpecifiers];
    }
  }
}

- (void)_updateStoredSectionsWithSectionInfo:(id)info
{
  infoCopy = info;
  if (qword_5C5A0)
  {
    v4 = [qword_5C5A0 mutableCopy];
    v5 = qword_5C5A0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_19B6C;
    v10[3] = &unk_4D1D0;
    v6 = infoCopy;
    v11 = v6;
    v7 = [v5 indexOfObjectPassingTest:v10];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 addObject:v6];
    }

    else
    {
      [v4 setObject:v6 atIndexedSubscript:v7];
    }

    v8 = qword_5C5A0;
    qword_5C5A0 = v4;
    v9 = v4;
  }
}

- (void)appDetailControllerWillDisappear:(id)disappear
{
  specifier = [disappear specifier];
  [(BulletinBoardController *)self reloadSpecifier:specifier];
}

- (BOOL)shouldAppDetailControllerBecomeActive:(id)active
{
  sectionID = [active sectionID];
  v4 = qword_5C5A0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_19CDC;
  v8[3] = &unk_4D450;
  v9 = sectionID;
  v5 = sectionID;
  v6 = [v4 bs_firstObjectPassingTest:v8];
  LOBYTE(v4) = v6 != 0;

  return v4;
}

- (BOOL)summarizePreviewsDetailController:(id)controller shouldShowSection:(id)section
{
  sectionCopy = section;
  LOBYTE(self) = [(BulletinBoardController *)self _shouldShowSection:sectionCopy];
  allowsNotifications = [sectionCopy allowsNotifications];

  return self & allowsNotifications;
}

- (BOOL)priorityNotificationsDetailController:(id)controller shouldShowSection:(id)section
{
  sectionCopy = section;
  LOBYTE(self) = [(BulletinBoardController *)self _shouldShowSection:sectionCopy];
  allowsNotifications = [sectionCopy allowsNotifications];

  return self & allowsNotifications;
}

- (void)settingsGateway:(id)gateway didUpdateSectionInfo:(id)info
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_19E9C;
  v5[3] = &unk_4D0D8;
  v5[4] = self;
  infoCopy = info;
  v4 = infoCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)settingsGatewayDidUpdateGlobalSettings:(id)settings
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_19FE8;
  block[3] = &unk_4D388;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A064;
  block[3] = &unk_4D388;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)emitNavigationEventForRootController
{
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.NotificationsSettings"];
  bundleURL = [v3 bundleURL];

  if (bundleURL)
  {
    v4 = [NSURL URLWithString:kNotificationSettingsDeepLinkURLString];
    v5 = [_NSLocalizedStringResource alloc];
    v6 = kNotificationsSettingsLocalizedStringsTable;
    v7 = +[NSLocale currentLocale];
    v8 = [v5 initWithKey:@"TITLE" table:v6 locale:v7 bundleURL:bundleURL];

    [(BulletinBoardController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:kNotificationsSettingsGraphicIcon title:v8 localizedNavigationComponents:&__NSArray0__struct deepLink:v4];
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

    if (!identifier)
    {
      goto LABEL_11;
    }

    if (!bundleURL)
    {
      goto LABEL_11;
    }

    detailControllerClass = [specifierCopy detailControllerClass];
    if (detailControllerClass == objc_opt_class())
    {
      goto LABEL_11;
    }

    v13 = [NSURL URLWithString:kNotificationSettingsDeepLinkURLString];
    v37 = [v13 URLByAppendingPathComponent:identifier];

    v41[0] = @"SCHEDULED_DELIVERY_ID";
    v41[1] = @"SHOW_PREVIEW_GROUP_ID";
    v42[0] = @"SCHEDULED_DELIVERY";
    v42[1] = @"SHOW_PREVIEWS";
    v41[2] = @"SCREENSHARING_ID";
    v41[3] = @"SIRI_SUGGESTIONS_ID";
    v42[2] = @"SCREEN_SHARING";
    v42[3] = @"SIRI_SUGGESTIONS";
    v41[4] = @"SPOKEN_NOTIFICATIONS_ID";
    v42[4] = @"SPOKEN_NOTIFICATIONS";
    v38 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:5];
    v14 = [v38 objectForKeyedSubscript:identifier];
    v15 = [_NSLocalizedStringResource alloc];
    v16 = kNotificationsSettingsLocalizedStringsTable;
    v17 = +[NSLocale currentLocale];
    v18 = [v15 initWithKey:@"TITLE" table:v16 locale:v17 bundleURL:bundleURL];

    if (v14)
    {
      v19 = [_NSLocalizedStringResource alloc];
      v20 = kNotificationsSettingsLocalizedStringsTable;
      v21 = +[NSLocale currentLocale];
      v36 = v14;
      v22 = [v19 initWithKey:v14 table:v20 locale:v21 bundleURL:bundleURL];

      v23 = kNotificationsSettingsGraphicIcon;
      v40 = v18;
      v24 = [NSArray arrayWithObjects:&v40 count:1];
      v25 = v8;
      v26 = v23;
      v27 = v22;
      v28 = v24;
      v29 = v37;
      v30 = v37;
    }

    else
    {
      v29 = v37;
      if (![objc_msgSend(specifierCopy "detailControllerClass")])
      {
LABEL_10:

LABEL_11:
        goto LABEL_12;
      }

      v36 = 0;
      v35 = [_NSLocalizedStringResource alloc];
      name = [specifierCopy name];
      v32 = kNotificationsSettingsLocalizedStringsTable;
      v33 = +[NSLocale currentLocale];
      v22 = [v35 initWithKey:@"APP_NAME_IN_DEFAULT_VALUE" defaultValue:name table:v32 locale:v33 bundleURL:bundleURL];

      v34 = kNotificationsSettingsGraphicIcon;
      v39 = v18;
      v24 = [NSArray arrayWithObjects:&v39 count:1];
      v25 = v8;
      v26 = v34;
      v29 = v37;
      v27 = v22;
      v28 = v24;
      v30 = v37;
    }

    [v25 pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:v26 title:v27 localizedNavigationComponents:v28 deepLink:v30];

    v14 = v36;
    goto LABEL_10;
  }

LABEL_12:
}

@end