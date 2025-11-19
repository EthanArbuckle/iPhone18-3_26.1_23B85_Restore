@interface ClarityUIController
- (BOOL)_canUseOneTapUnlock;
- (ClarityUIController)init;
- (id)_accessibilityShortcutEnabled:(id)a3;
- (id)_allowSiri:(id)a3;
- (id)_appCustomizationSpecifierForFirstPartyAppWithIdentifier:(id)a3 title:(id)a4;
- (id)_appCustomizationSpecifiers;
- (id)_appSpecifierWithTitle:(id)a3 hasChevron:(BOOL)a4 identifier:(id)a5 appIconImage:(id)a6;
- (id)_batteryMonitoring:(id)a3;
- (id)_colorFromData:(id)a3;
- (id)_fullScreenCompatibilityModeEnabled:(id)a3;
- (id)_lockScreenClock:(id)a3;
- (id)_lockScreenDate:(id)a3;
- (id)_notificationsEnabled:(id)a3;
- (id)_oneTapUnlockEnabled:(id)a3;
- (id)_restrictPhoneCallEnabled:(id)a3;
- (id)_silentModeToggleEnabled:(id)a3;
- (id)_statusBarClock:(id)a3;
- (id)_volumeButtons:(id)a3;
- (id)createClarityUIIntroductionGroupSpecifier;
- (id)specifiers;
- (void)_appCustomizationSpecifiers;
- (void)_checkExistenceOfSettingsForAppSpecifier:(id)a3 identifier:(id)a4 bundleIdentifiersCheckingExistenceOfSettings:(id)a5 specifiersRequiringReload:(id)a6;
- (void)_goToSiriSettings:(id)a3;
- (void)_loadAppSetupControllerForSpecifier:(id)a3;
- (void)_resetButtonTapped:(id)a3;
- (void)_setAccessibilityShortcutEnabled:(id)a3 specifier:(id)a4;
- (void)_setAllowSiri:(id)a3 specifier:(id)a4;
- (void)_setBatteryMonitorningEnabled:(id)a3 specifier:(id)a4;
- (void)_setFullScreenCompatibilityModeEnabled:(id)a3 specifier:(id)a4;
- (void)_setNotificationsEnabled:(id)a3 specifier:(id)a4;
- (void)_setOneTapUnlockEnabled:(id)a3 specifier:(id)a4;
- (void)_setRestrictPhoneCallEnabled:(id)a3 specifier:(id)a4;
- (void)_setSilentModeToggleEnabled:(id)a3 specifier:(id)a4;
- (void)_setStatusBarClockEnabled:(id)a3 specifier:(id)a4;
- (void)_setUpForSpecifier:(id)a3;
- (void)_setVolumeButtonsEnabled:(id)a3 specifier:(id)a4;
- (void)_setlockScreenClockEnabled:(id)a3 specifier:(id)a4;
- (void)_setlockScreenDateEnabled:(id)a3 specifier:(id)a4;
- (void)_updateAppSpecifier:(id)a3 hasChevron:(BOOL)a4;
- (void)confirmationViewAcceptedForSpecifier:(id)a3;
- (void)dealloc;
- (void)doneButtonTapped:(id)a3;
@end

@implementation ClarityUIController

- (ClarityUIController)init
{
  v21.receiver = self;
  v21.super_class = ClarityUIController;
  v2 = [(ClarityUIController *)&v21 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_clarityUIEnabledDidChange:" name:kAXSClarityUIEnabledNotification object:0];

    v4 = +[CLFSettings sharedInstance];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __27__ClarityUIController_init__block_invoke;
    v18[3] = &unk_255388;
    objc_copyWeak(&v19, &location);
    [v4 registerUpdateBlock:v18 forRetrieveSelector:"applicationBundleIdentifiers" withListener:v2];

    objc_destroyWeak(&v19);
    v5 = +[CLFSettings sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __27__ClarityUIController_init__block_invoke_2;
    v16[3] = &unk_255388;
    objc_copyWeak(&v17, &location);
    [v5 registerUpdateBlock:v16 forRetrieveSelector:"listLayout" withListener:v2];

    objc_destroyWeak(&v17);
    v6 = +[CLFAppAvailabilityChecker sharedInstance];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = __27__ClarityUIController_init__block_invoke_3;
    v14 = &unk_255388;
    objc_copyWeak(&v15, &location);
    v7 = [v6 observeUpdatesWithHandler:&v11];
    [(ClarityUIController *)v2 setAppAvailabilityObserver:v7, v11, v12, v13, v14];

    v8 = +[NSMutableDictionary dictionary];
    hasSettingsByBundleIdentifier = v2->_hasSettingsByBundleIdentifier;
    v2->_hasSettingsByBundleIdentifier = v8;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__ClarityUIController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __27__ClarityUIController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __27__ClarityUIController_init__block_invoke_3(uint64_t a1)
{
  v2 = CLFLogSettings();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Reloading specifiers because app availability changed.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (void)dealloc
{
  v3 = [(ClarityUIController *)self appAvailabilityObserver];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = ClarityUIController;
  [(ClarityUIController *)&v4 dealloc];
}

- (id)createClarityUIIntroductionGroupSpecifier
{
  v34 = +[PSSpecifier emptyGroupSpecifier];
  v32 = settingsLocString(@"CLARITY_UI_USER_GUIDE_FOOTER", @"ClarityUISettings");
  v30 = settingsLocString(@"CLARITY_UI_SETUP_AFTER_FOOTER", @"ClarityUISettings");
  v3 = AXLocStringKeyForModel();
  v31 = settingsLocString(v3, @"ClarityUISettings");

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v34 setProperty:v5 forKey:PSFooterCellClassGroupKey];

  objc_initWeak(&location, self);
  v53[0] = @"contentLabel";
  v53[1] = @"alreadyLocalized";
  v54[0] = v31;
  v54[1] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
  v55[0] = v6;
  v51[0] = @"moreLabel";
  v51[1] = @"alreadyLocalized";
  v52[0] = v32;
  v52[1] = &__kCFBooleanTrue;
  v51[2] = @"customActionBlock";
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = __64__ClarityUIController_createClarityUIIntroductionGroupSpecifier__block_invoke;
  v39[3] = &unk_255388;
  objc_copyWeak(&v40, &location);
  v7 = objc_retainBlock(v39);
  v52[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:3];
  v55[1] = v8;
  v49[0] = @"contentLabel";
  v49[1] = @"alreadyLocalized";
  v50[0] = v30;
  v50[1] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
  v55[2] = v9;
  v10 = [NSArray arrayWithObjects:v55 count:3];
  v33 = [v10 mutableCopy];

  v11 = AXTeachableFeatureAssistiveAccess;
  v12 = [AXTeachableMomentsManager teachableItemsForFeature:AXTeachableFeatureAssistiveAccess];
  if ([v12 count])
  {
    v28 = v12;
    v47[0] = @"moreLabel";
    v13 = settingsLocString(@"AssistiveAccessWhatsNewLink", @"Accessibility");
    v48[0] = v13;
    v47[1] = @"additionalTitleLabel";
    v14 = settingsLocString(@"AssistiveAccessTitle", @"Accessibility");
    v48[1] = v14;
    v48[2] = &__kCFBooleanTrue;
    v47[2] = @"alreadyLocalized";
    v47[3] = @"symbolName";
    v48[3] = @"apps.iphone.assistive.access";
    v15 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];
    v29 = [v15 mutableCopy];

    v16 = objc_opt_new();
    v45[0] = @"sectionLabel";
    v17 = [AXTeachableMomentsManager notificationTitleForFeature:v11];
    v45[1] = @"alreadyLocalized";
    v46[0] = v17;
    v46[1] = &__kCFBooleanTrue;
    v18 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
    [v16 addObject:v18];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = v28;
    v20 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v20)
    {
      v21 = *v36;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v35 + 1) + 8 * i);
          v42[0] = @"headerLabel";
          v24 = [v23 itemTitle];
          v43[0] = v24;
          v42[1] = @"contentLabel";
          v25 = [v23 itemDescription];
          v42[2] = @"alreadyLocalized";
          v43[1] = v25;
          v43[2] = &__kCFBooleanTrue;
          v26 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];
          [v16 addObject:v26];
        }

        v20 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v20);
    }

    [v29 setObject:v16 forKey:@"additionalContent"];
    [v33 addObject:v29];

    v12 = v28;
  }

  [v34 setProperty:v33 forKey:@"content"];

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);

  return v34;
}

void __64__ClarityUIController_createClarityUIIntroductionGroupSpecifier__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showClarityUIHelp:0];
}

- (BOOL)_canUseOneTapUnlock
{
  v2 = +[BKDeviceManager availableDevices];
  v3 = [v2 firstObject];

  v24 = 0;
  v4 = [BKDevice deviceWithDescriptor:v3 error:&v24];
  v5 = v24;
  if (v5)
  {
    v6 = v5;
    v7 = CLFLogSettings();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ClarityUIController *)v6 _canUseOneTapUnlock:v7];
    }
  }

  else
  {
    v23 = 0;
    v7 = [v4 identitiesWithError:&v23];
    v6 = v23;
    if (!v6)
    {
      v21 = [v7 count]== 0;
      goto LABEL_9;
    }

    v14 = CLFLogSettings();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ClarityUIController *)v6 _canUseOneTapUnlock:v14];
    }
  }

  v21 = 0;
LABEL_9:

  return v21;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = _AXSClarityUIEnabled();
    v7 = [(ClarityUIController *)self createClarityUIIntroductionGroupSpecifier];
    [v5 addObject:v7];
    if (!v6)
    {
      v16 = settingsLocString(@"SET_UP_TITLE", @"ClarityUISettings");
      v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v17 setProperty:@"SetUpClarityUISpecifier" forKey:PSIDKey];
      [v17 setButtonAction:"_setUpForSpecifier:"];
      [v17 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
      [v5 addObject:v17];

LABEL_19:
      v81 = *&self->AXUISettingsBaseListController_opaque[v3];
      *&self->AXUISettingsBaseListController_opaque[v3] = v5;

      v4 = *&self->AXUISettingsBaseListController_opaque[v3];
      goto LABEL_20;
    }

    v105 = v3;
    v8 = settingsLocString(@"CLARITY_UI_START", @"ClarityUISettings");
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v9 setButtonAction:"_startButtonTapped:"];
    v103 = PSAllowMultilineTitleKey;
    [v9 setProperty:&__kCFBooleanTrue forKey:?];
    v10 = PSIDKey;
    [v9 setProperty:@"ClarityUIStart" forKey:PSIDKey];
    [v5 addObject:v9];
    v107[0] = 0;
    v11 = +[MCProfileConnection sharedConnection];
    v12 = [v11 unlockScreenTypeWithOutSimplePasscodeType:v107];

    v13 = +[MCProfileConnection sharedConnection];
    if ([v13 isPasscodeSet])
    {
      v14 = v107[0];

      v15 = &__kCFBooleanFalse;
      if (v12 || v14 == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v15 = &__kCFBooleanTrue;
LABEL_10:
    v104 = v7;
    v89 = PSEnabledKey;
    [v9 setObject:v15 forKeyedSubscript:?];
    v18 = [(ClarityUIController *)self _appCustomizationSpecifiers];
    [v5 addObjectsFromArray:v18];

    v19 = settingsLocString(@"OPTIONS_TITLE", @"ClarityUISettings");
    v20 = [PSSpecifier groupSpecifierWithName:v19];

    v21 = settingsLocString(@"LIST_LAYOUT_FOOTNOTE", @"ClarityUISettings");
    v22 = PSFooterTextGroupKey;
    [v20 setProperty:v21 forKey:PSFooterTextGroupKey];

    [v20 setProperty:@"Options" forKey:v10];
    v102 = v20;
    [v5 addObject:v20];
    v101 = +[ClarityUILayoutSetupTableCell visualLayoutPickerSpecifier];
    [v5 addObject:?];
    v23 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v23];

    v24 = settingsLocString(@"WALLPAPER", @"ClarityUISettings");
    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v25 setProperty:@"Wallpaper" forKey:v10];
    v100 = v25;
    [v5 addObject:v25];
    v26 = settingsLocString(@"VOLUME_BUTTONS", @"ClarityUISettings");
    v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:"_setVolumeButtonsEnabled:specifier:" get:"_volumeButtons:" detail:0 cell:6 edit:0];

    [v27 setProperty:@"VolumeButtons" forKey:v10];
    v99 = v27;
    [v5 addObject:v27];
    LOBYTE(v27) = AXDeviceIsRingerSwitchAvailable();
    HasStaccato = AXDeviceHasStaccato();
    if ((v27 & 1) != 0 || HasStaccato)
    {
      v29 = +[PSSpecifier emptyGroupSpecifier];
      v30 = AXLocStringKeyForModel();
      v31 = settingsLocString(v30, @"ClarityUISettings");

      [v29 setProperty:v31 forKey:v22];
      [v5 addObject:v29];
      v32 = settingsLocString(@"SILENT_MODE", @"ClarityUISettings");
      v33 = [PSSpecifier preferenceSpecifierNamed:v32 target:self set:"_setSilentModeToggleEnabled:specifier:" get:"_silentModeToggleEnabled:" detail:0 cell:6 edit:0];

      [v5 addObject:v33];
      v34 = +[PSSpecifier emptyGroupSpecifier];
      [v5 addObject:v34];
    }

    v91 = v22;
    v35 = settingsLocString(@"BATTERY_MONITORING", @"ClarityUISettings");
    v36 = [PSSpecifier preferenceSpecifierNamed:v35 target:self set:"_setBatteryMonitorningEnabled:specifier:" get:"_batteryMonitoring:" detail:0 cell:6 edit:0];

    [v36 setProperty:@"ShowBattery" forKey:v10];
    v98 = v36;
    [v5 addObject:v36];
    v37 = settingsLocString(@"NOTIFICATIONS_ENABLED", @"ClarityUISettings");
    v38 = [PSSpecifier preferenceSpecifierNamed:v37 target:self set:"_setNotificationsEnabled:specifier:" get:"_notificationsEnabled:" detail:0 cell:6 edit:0];

    [v38 setProperty:@"ShowNotification" forKey:v10];
    v97 = v38;
    [v5 addObject:v38];
    v39 = settingsLocString(@"TIME_AND_DATE", @"ClarityUISettings");
    v40 = [PSSpecifier groupSpecifierWithName:v39];

    [v40 setProperty:@"TimeAndDate" forKey:v10];
    v96 = v40;
    [v5 addObject:v40];
    v41 = settingsLocString(@"LOCK_SCREEN_DATE", @"ClarityUISettings");
    v42 = [PSSpecifier preferenceSpecifierNamed:v41 target:self set:"_setlockScreenDateEnabled:specifier:" get:"_lockScreenDate:" detail:0 cell:6 edit:0];

    [v42 setProperty:@"ShowDate" forKey:v10];
    v95 = v42;
    [v5 addObject:v42];
    v43 = settingsLocString(@"STATUS_BAR_CLOCK", @"ClarityUISettings");
    v44 = [PSSpecifier preferenceSpecifierNamed:v43 target:self set:"_setStatusBarClockEnabled:specifier:" get:"_statusBarClock:" detail:0 cell:6 edit:0];

    [v44 setProperty:@"ShowTimeStatusBar" forKey:v10];
    v94 = v44;
    [v5 addObject:v44];
    v45 = settingsLocString(@"LOCK_SCREEN_CLOCK", @"ClarityUISettings");
    v46 = [PSSpecifier preferenceSpecifierNamed:v45 target:self set:"_setlockScreenClockEnabled:specifier:" get:"_lockScreenClock:" detail:0 cell:6 edit:0];

    [v46 setProperty:@"ShowTime" forKey:v10];
    v93 = v46;
    [v5 addObject:v46];
    v47 = [PSSpecifier groupSpecifierWithName:0];
    [v5 addObject:v47];
    v92 = v47;
    if (AFPreferencesAssistantEnabled())
    {
      v48 = settingsLocString(@"ALLOW_SIRI", @"ClarityUISettings");
      v49 = [PSSpecifier preferenceSpecifierNamed:v48 target:self set:"_setAllowSiri:specifier:" get:"_allowSiri:" detail:0 cell:6 edit:0];

      v50 = settingsLocString(@"SIRI_SETTINGS_FOOTER", @"ClarityUISettings");
      v51 = settingsLocString(@"CONFIGURE_SIRI_FOOTER", @"ClarityUISettings");
      v52 = AXCFormattedString();

      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      [v47 setProperty:v54 forKey:{PSFooterCellClassGroupKey, v50}];

      [v47 setProperty:v52 forKey:PSFooterHyperlinkViewTitleKey];
      v109.location = [v52 rangeOfString:v50 options:4];
      v55 = NSStringFromRange(v109);
      [v47 setProperty:v55 forKey:PSFooterHyperlinkViewLinkRangeKey];

      v56 = [NSValue valueWithNonretainedObject:self];
      [v47 setProperty:v56 forKey:PSFooterHyperlinkViewTargetKey];

      v57 = NSStringFromSelector("_goToSiriSettings:");
      [v47 setProperty:v57 forKey:PSFooterHyperlinkViewActionKey];

      [v49 setProperty:@"AllowSiri" forKey:v10];
      [v5 addObject:v49];
    }

    else
    {
      v58 = settingsLocString(@"SET_UP_SIRI", @"ClarityUISettings");
      v49 = [PSSpecifier preferenceSpecifierNamed:v58 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v49 setButtonAction:"_goToSiriSettings:"];
      [v49 setProperty:&__kCFBooleanTrue forKey:v89];
      [v5 addObject:v49];
    }

    v59 = [PSSpecifier groupSpecifierWithID:@"ClarityUIAccessibilityShortcutSpecifierID"];
    v60 = AXLocStringKeyForHomeButtonAndExclusiveModel();
    v61 = settingsLocString(v60, @"ClarityUISettings");

    v88 = v61;
    [v59 setProperty:v61 forKey:v91];
    v90 = v59;
    [v5 addObject:v59];
    v62 = settingsLocString(@"ACCESSIBILITY_SHORTCUT", @"ClarityUISettings");
    v63 = [PSSpecifier preferenceSpecifierNamed:v62 target:self set:"_setAccessibilityShortcutEnabled:specifier:" get:"_accessibilityShortcutEnabled:" detail:0 cell:6 edit:0];

    v87 = v63;
    [v5 addObject:v63];
    v64 = [PSSpecifier groupSpecifierWithID:@"ClarityUIFullScreenCompatibilityModeSpecifierID"];
    v65 = AXLocStringKeyForHomeButtonAndExclusiveModel();
    v66 = settingsLocString(v65, @"ClarityUISettings");

    v86 = v66;
    [v64 setProperty:v66 forKey:v91];
    [v5 addObject:v64];
    v67 = settingsLocString(@"FULL_SCREEN_COMPATIBILITY_MODE", @"ClarityUISettings");
    v68 = [PSSpecifier preferenceSpecifierNamed:v67 target:self set:"_setFullScreenCompatibilityModeEnabled:specifier:" get:"_fullScreenCompatibilityModeEnabled:" detail:0 cell:6 edit:0];

    v85 = v68;
    [v5 addObject:v68];
    v69 = +[BKDeviceManager availableDevices];
    v70 = [v69 firstObject];

    v106 = 0;
    v84 = [BKDevice deviceWithDescriptor:v70 error:&v106];
    v83 = v106;
    if ([(ClarityUIController *)self _canUseOneTapUnlock])
    {
      v71 = [PSSpecifier groupSpecifierWithID:@"ClarityUIOneTapUnlockSpecifierID"];
      v72 = settingsLocString(@"ONE_TAP_UNLOCK_FOOTER", @"ClarityUISettings");
      [v71 setProperty:v72 forKey:v91];
      [v5 addObject:v71];
      v73 = settingsLocString(@"ONE_TAP_UNLOCK", @"ClarityUISettings");
      v74 = [PSSpecifier preferenceSpecifierNamed:v73 target:self set:"_setOneTapUnlockEnabled:specifier:" get:"_oneTapUnlockEnabled:" detail:0 cell:6 edit:0];

      [v5 addObject:v74];
    }

    v75 = [PSSpecifier groupSpecifierWithID:@"ClarityUIAdminSpecifierID"];
    [v5 addObject:v75];
    v76 = settingsLocString(@"ADMIN_PASSCODE_SETTINGS", @"ClarityUISettings");
    v77 = [PSSpecifier preferenceSpecifierNamed:v76 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v77 setProperty:@"PasscodeSettings" forKey:v10];
    [v5 addObject:v77];
    v78 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v78];
    v79 = settingsLocString(@"CLARITY_UI_RESET", @"ClarityUISettings");
    v80 = [PSSpecifier deleteButtonSpecifierWithName:v79 target:self action:"_resetButtonTapped:"];

    [v80 setProperty:&__kCFBooleanTrue forKey:v103];
    [v5 addObject:v80];

    v3 = v105;
    goto LABEL_19;
  }

LABEL_20:

  return v4;
}

- (void)doneButtonTapped:(id)a3
{
  v4 = [(ClarityUIController *)self whatsNewController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __40__ClarityUIController_doneButtonTapped___block_invoke;
  v5[3] = &unk_2553B0;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

- (id)_appCustomizationSpecifierForFirstPartyAppWithIdentifier:(id)a3 title:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ClarityUIAppSetupCoordinator sharedInstance];
  v9 = [v8 clarityBundleNameForBundleIdentifier:v6];

  if (v9)
  {
    v10 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:2 edit:0];
    v11 = PSBundlePathForPreferenceBundle();
    [v10 setProperty:v11 forKey:PSLazilyLoadedBundleKey];

    [v10 setProperty:&__kCFBooleanTrue forKey:PSBundleIsControllerKey];
    [v10 setControllerLoadAction:"lazyLoadBundle:"];
    v12 = +[UIScreen mainScreen];
    [v12 scale];
    v13 = [UIImage _applicationIconImageForBundleIdentifier:v6 format:0 scale:?];

    [v10 setProperty:v13 forKey:PSIconImageKey];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_appCustomizationSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = settingsLocString(@"APP_CUSTOMIZATION_TITLE", @"ClarityUISettings");
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  [v5 setProperty:@"Applications" forKey:PSIDKey];
  v36 = v5;
  [v3 insertObject:v5 atIndex:0];
  v6 = +[CLFSettings sharedInstance];
  v7 = [v6 applicationBundleIdentifiers];

  v8 = ClarityUIAllInstalledAppIdentifiers();
  v38 = +[NSMutableSet set];
  v9 = self;
  v37 = +[NSMutableArray array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    v13 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
    v39 = v3;
    v40 = self;
    do
    {
      v14 = 0;
      do
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v45 + 1) + 8 * v14);
        if ([v8 containsObject:v15])
        {
          [v13[337] sharedInstance];
          v17 = v16 = v13;
          v18 = [v17 requiresPreflightForBundleIdentifier:v15];

          if (v18)
          {
            v19 = CLFLogSettings();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v50 = v15;
              v20 = v19;
              v21 = "Skipping selected application that requires preflight: %@";
              goto LABEL_15;
            }

            goto LABEL_21;
          }

          v22 = [v16[337] sharedInstance];
          v23 = [v22 isHiddenByUserForBundleIdentifier:v15];

          if (v23)
          {
            v19 = CLFLogSettings();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v50 = v15;
              v20 = v19;
              v21 = "Skipping selected application that was hidden by the user: %@";
LABEL_15:
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
            }

LABEL_21:
            v13 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
            goto LABEL_22;
          }

          v24 = [v16[337] sharedInstance];
          v25 = [v24 isAppAvailableForBundleIdentifier:v15];

          if ((v25 & 1) == 0)
          {
            v19 = CLFLogSettings();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              [(ClarityUIController *)&v43 _appCustomizationSpecifiers];
            }

            goto LABEL_21;
          }

          v19 = ClarityUIDisplayNameForApp(v15);
          v26 = [(ClarityUIController *)v9 _appCustomizationSpecifierForFirstPartyAppWithIdentifier:v15 title:v19];
          if (v26)
          {
            [v3 addObject:v26];
          }

          else
          {
            +[UIScreen mainScreen];
            v28 = v27 = v9;
            [v28 scale];
            v41 = [UIImage _applicationIconImageForBundleIdentifier:v15 format:0 scale:?];

            v29 = [(ClarityUIController *)v27 hasSettingsByBundleIdentifier];
            v30 = [v29 objectForKeyedSubscript:v15];

            v31 = -[ClarityUIController _appSpecifierWithTitle:hasChevron:identifier:appIconImage:](v27, "_appSpecifierWithTitle:hasChevron:identifier:appIconImage:", v19, [v30 BOOLValue], v15, v41);
            if (!v30)
            {
              [(ClarityUIController *)v40 _checkExistenceOfSettingsForAppSpecifier:v31 identifier:v15 bundleIdentifiersCheckingExistenceOfSettings:v38 specifiersRequiringReload:v37];
            }

            [v39 addObject:v31];

            v3 = v39;
            v9 = v40;
          }

          v13 = &_s7SwiftUI5ColorV4blueACvgZ_ptr;
        }

        else
        {
          v19 = CLFLogSettings();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v50 = v15;
            _os_log_debug_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "Application is no longer installed: %@", buf, 0xCu);
          }
        }

LABEL_22:

        v14 = v14 + 1;
      }

      while (v11 != v14);
      v32 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      v11 = v32;
    }

    while (v32);
  }

  v33 = settingsLocString(@"MANAGE_APPS", @"ClarityUISettings");
  v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:v9 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v3 addObject:v34];

  return v3;
}

- (void)_checkExistenceOfSettingsForAppSpecifier:(id)a3 identifier:(id)a4 bundleIdentifiersCheckingExistenceOfSettings:(id)a5 specifiersRequiringReload:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ClarityUIController *)self hasSettingsByBundleIdentifier];
  [v14 setObject:&__kCFBooleanFalse forKeyedSubscript:v11];

  [v12 addObject:v11];
  v15 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __146__ClarityUIController__checkExistenceOfSettingsForAppSpecifier_identifier_bundleIdentifiersCheckingExistenceOfSettings_specifiersRequiringReload___block_invoke;
  block[3] = &unk_2595A0;
  v21 = v11;
  v22 = v12;
  v23 = self;
  v24 = v10;
  v25 = v13;
  v16 = v13;
  v17 = v10;
  v18 = v12;
  v19 = v11;
  dispatch_async(v15, block);
}

void __146__ClarityUIController__checkExistenceOfSettingsForAppSpecifier_identifier_bundleIdentifiersCheckingExistenceOfSettings_specifiersRequiringReload___block_invoke(uint64_t a1)
{
  v2 = CLFLogSettings();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Fetching whether app %@ has settings in the background.", buf, 0xCu);
  }

  v4 = +[ClarityUIAppSetupCoordinator sharedInstance];
  v5 = [v4 bundleIdentifierHasClaritySettings:*(a1 + 32)];

  v6 = CLFLogSettings();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412546;
    v19 = v7;
    v20 = 1024;
    v21 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Finished fetching whether app %@ has settings in the background: %i", buf, 0x12u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __146__ClarityUIController__checkExistenceOfSettingsForAppSpecifier_identifier_bundleIdentifiersCheckingExistenceOfSettings_specifiersRequiringReload___block_invoke_566;
  block[3] = &unk_256498;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v17 = v5;
  v12 = *(a1 + 48);
  v10 = *(&v12 + 1);
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v14 = v11;
  v15 = v12;
  v16 = *(a1 + 64);
  dispatch_async(&_dispatch_main_q, block);
}

id __146__ClarityUIController__checkExistenceOfSettingsForAppSpecifier_identifier_bundleIdentifiersCheckingExistenceOfSettings_specifiersRequiringReload___block_invoke_566(uint64_t a1)
{
  result = [*(a1 + 32) removeObject:*(a1 + 40)];
  if (*(a1 + 72) == 1)
  {
    v3 = [*(a1 + 48) hasSettingsByBundleIdentifier];
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:*(a1 + 40)];

    v4 = CLFLogSettings();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Adding chevron to specifier for app: %@", buf, 0xCu);
    }

    [*(a1 + 48) _updateAppSpecifier:*(a1 + 56) hasChevron:1];
    [*(a1 + 64) addObject:*(a1 + 56)];
    result = [*(a1 + 32) count];
    if (!result)
    {
      v6 = CLFLogSettings();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 64);
        *buf = 138412290;
        v19 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Reloading specifiers that need update: %@", buf, 0xCu);
      }

      [*(a1 + 48) beginUpdates];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = *(a1 + 64);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(a1 + 48) reloadSpecifier:*(*(&v13 + 1) + 8 * v12) animated:{1, v13}];
            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }

      return [*(a1 + 48) endUpdates];
    }
  }

  return result;
}

- (id)_appSpecifierWithTitle:(id)a3 hasChevron:(BOOL)a4 identifier:(id)a5 appIconImage:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:4 edit:0];
  [v13 setProperty:v12 forKey:PSControllerTitleKey];

  [v13 setProperty:v11 forKey:PSIDKey];
  [v13 setProperty:v10 forKey:PSIconImageKey];

  [(ClarityUIController *)self _updateAppSpecifier:v13 hasChevron:v7];

  return v13;
}

- (void)_updateAppSpecifier:(id)a3 hasChevron:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = v5;
  if (v4)
  {
    [v5 setCellType:2];
    v6 = "_loadAppSetupControllerForSpecifier:";
  }

  else
  {
    [v5 setCellType:4];
    v6 = 0;
  }

  [v7 setControllerLoadAction:v6];
}

- (id)_volumeButtons:(id)a3
{
  v3 = +[CLFSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 volumeButtonsEnabled]);

  return v4;
}

- (void)_setVolumeButtonsEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFSettings sharedInstance];
  [v5 setVolumeButtonsEnabled:v4];
}

- (id)_silentModeToggleEnabled:(id)a3
{
  v3 = +[CLFSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 silentModeToggleEnabled]);

  return v4;
}

- (void)_setSilentModeToggleEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFSettings sharedInstance];
  [v5 setSilentModeToggleEnabled:v4];
}

- (id)_accessibilityShortcutEnabled:(id)a3
{
  v3 = +[CLFSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowAccessibilityShortcut]);

  return v4;
}

- (void)_setAccessibilityShortcutEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFSettings sharedInstance];
  [v5 setAllowAccessibilityShortcut:v4];
}

- (id)_fullScreenCompatibilityModeEnabled:(id)a3
{
  v3 = +[CLFSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 fullScreenCompatibilityMode]);

  return v4;
}

- (void)_setFullScreenCompatibilityModeEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFSettings sharedInstance];
  [v5 setFullScreenCompatibilityMode:v4];
}

- (id)_oneTapUnlockEnabled:(id)a3
{
  v3 = +[CLFSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 oneTapUnlock]);

  return v4;
}

- (void)_setOneTapUnlockEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFSettings sharedInstance];
  [v5 setOneTapUnlock:v4];
}

- (id)_restrictPhoneCallEnabled:(id)a3
{
  v3 = +[CLFSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 restrictPhoneCall]);

  return v4;
}

- (void)_setRestrictPhoneCallEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFSettings sharedInstance];
  [v5 setRestrictPhoneCall:v4];
}

- (id)_lockScreenClock:(id)a3
{
  v3 = +[CLFSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 lockScreenClockEnabled]);

  return v4;
}

- (void)_setlockScreenClockEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFSettings sharedInstance];
  [v5 setLockScreenClockEnabled:v4];
}

- (id)_lockScreenDate:(id)a3
{
  v3 = +[CLFSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 lockScreenDateEnabled]);

  return v4;
}

- (void)_setlockScreenDateEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFSettings sharedInstance];
  [v5 setLockScreenDateEnabled:v4];
}

- (id)_statusBarClock:(id)a3
{
  v3 = +[CLFSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 showTimeInStatusBar]);

  return v4;
}

- (void)_setStatusBarClockEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFSettings sharedInstance];
  [v5 setShowTimeInStatusBar:v4];
}

- (id)_notificationsEnabled:(id)a3
{
  v3 = +[CLFSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 notificationsEnabled]);

  return v4;
}

- (void)_setNotificationsEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFSettings sharedInstance];
  [v5 setNotificationsEnabled:v4];
}

- (id)_batteryMonitoring:(id)a3
{
  v3 = +[CLFSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 batteryMonitoringEnabled]);

  return v4;
}

- (void)_setBatteryMonitorningEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFSettings sharedInstance];
  [v5 setBatteryMonitoringEnabled:v4];
}

- (id)_allowSiri:(id)a3
{
  v3 = +[CLFSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowSiri]);

  return v4;
}

- (void)_setAllowSiri:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[CLFSettings sharedInstance];
  [v5 setAllowSiri:v4];
}

- (void)_goToSiriSettings:(id)a3
{
  v4 = [NSURL URLWithString:@"prefs:root=SIRI"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)_setUpForSpecifier:(id)a3
{
  v4 = +[CLFPhoneFaceTimeSettings sharedInstance];
  [v4 setNeedsMigrationFor117558856:0];

  v5 = +[CLFMessagesSettings sharedInstance];
  [v5 setNeedsMigrationFor117558856:0];

  [(ClarityUIController *)self setDefinesPresentationContext:1];
  v6 = objc_alloc_init(ClarityOnboardingController);
  [(ClarityOnboardingController *)v6 setModalPresentationStyle:5];
  [(ClarityUIController *)self presentViewController:v6 animated:0 completion:0];
}

- (id)_colorFromData:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v15 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v15];
    v6 = v15;
    if (v6)
    {
      v7 = CLFLogSettings();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ClarityUIController *)v6 _colorFromData:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_loadAppSetupControllerForSpecifier:(id)a3
{
  v6 = [a3 propertyForKey:PSIDKey];
  v4 = +[ClarityUIAppSetupCoordinator sharedInstance];
  v5 = [v4 createSettingsControllerForBundleIdentifier:v6];

  [(ClarityUIController *)self showController:v5];
}

- (void)_resetButtonTapped:(id)a3
{
  v8 = objc_alloc_init(PSConfirmationSpecifier);
  v4 = settingsLocString(@"CLARITY_UI_RESET_TITLE", @"ClarityUISettings");
  [v8 setTitle:v4];

  v5 = settingsLocString(@"CLARITY_UI_RESET_PROMPT", @"ClarityUISettings");
  [v8 setPrompt:v5];

  v6 = settingsLocString(@"CLARITY_UI_RESET_CANCEL", @"ClarityUISettings");
  [v8 setCancelButton:v6];

  v7 = settingsLocString(@"CLARITY_UI_RESET_OK", @"ClarityUISettings");
  [v8 setOkButton:v7];

  [v8 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [(ClarityUIController *)self showConfirmationViewForSpecifier:v8];
}

- (void)confirmationViewAcceptedForSpecifier:(id)a3
{
  [(ClarityUIController *)self resetAllSettings];

  [(ClarityUIController *)self reloadSpecifiers];
}

- (void)_appCustomizationSpecifiers
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "Found unavailable application that was not covered by checks.", buf, 2u);
}

@end