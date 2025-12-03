@interface CACSettingsController
- (BOOL)_languageMatchesSystem;
- (BOOL)_shouldShowSpinner;
- (CACSettingsController)init;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_updatedDownloadString;
- (id)alwaysShowOverlaySummary:(id)summary;
- (id)attentionAwareActionIsSleepWake;
- (id)commandAndControlEnabled:(id)enabled;
- (id)languageSummary:(id)summary;
- (id)playSoundEnabled:(id)enabled;
- (id)showTextBannerEnabled:(id)enabled;
- (id)specifiers;
- (id)userHintsEnabled:(id)enabled;
- (void)_fetchInstallationStatus;
- (void)_showOverviewWithStyle:(unint64_t)style;
- (void)_tipLoaded:(id)loaded;
- (void)_updateTutorialButtonForOneness;
- (void)clearUserHintsHistory:(id)history specifier:(id)specifier;
- (void)dealloc;
- (void)launchCommandAndControlOnboarding;
- (void)presentLanguageSelection;
- (void)setAttentionAwareActionIsSleepWakeEnabled:(id)enabled specifier:(id)specifier;
- (void)setCommandAndControlEnabled:(id)enabled specifier:(id)specifier;
- (void)setPlaySoundEnabled:(id)enabled specifier:(id)specifier;
- (void)setShowTextBannerEnabled:(id)enabled specifier:(id)specifier;
- (void)setUserHintsEnabled:(id)enabled specifier:(id)specifier;
- (void)setUserHintsForCommandSuggestionsEnabled:(id)enabled specifier:(id)specifier;
- (void)setUserHintsForNextStepSuggestionsEnabled:(id)enabled specifier:(id)specifier;
- (void)showAboutDonation;
- (void)showDonationModalView;
@end

@implementation CACSettingsController

- (CACSettingsController)init
{
  v19.receiver = self;
  v19.super_class = CACSettingsController;
  v2 = [(CACSettingsController *)&v19 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_commandAndControlPreferenceDidChange:" name:kAXSCommandAndControlEnabledNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_tipLoaded:" name:@"AXTipLoaded" object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_C71C, @"NotificationAlwaysShowOverlayTypeSettingsChanged", 0, 1028);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, v2, sub_C71C, @"NotificationVocabularyEntriesSettingsChanged", 0, 1028);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, v2, sub_C71C, @"CACNotificationOverlayFadingSettingsChanged", 0, 1028);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v8, v2, sub_C71C, @"CACNotificationGridOverlaySettingsChanged", 0, 1028);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, v2, sub_C71C, @"CACNotificationAttentionBasedSettingsChanged", 0, 1028);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v10, v2, sub_C71C, @"CACNotificationAssetDownloadProgressChanged", 0, 1028);
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v11, v2, sub_C71C, @"CACNotificationAssetDownloadProgressErrorOccured", 0, 1028);
    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v12, v2, sub_C71C, @"CACNotificationLanguageChanged", 0, 1028);
    v13 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v13, v2, sub_C71C, @"CACNotificationAudioDonationSettingsChanged", 0, 1028);
    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v14, v2, sub_C790, kAXSContinuityDisplayStateChangedNotification, 0, 1028);
    v15 = +[CACLanguageAssetManager sharedManager];
    [v15 registerForCallback];

    v16 = dispatch_queue_create("com.apple.CommandAndControl.assetManagementQueue", 0);
    languageModelStatusQueue = v2->_languageModelStatusQueue;
    v2->_languageModelStatusQueue = v16;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"NotificationAlwaysShowOverlayTypeSettingsChanged", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"NotificationVocabularyEntriesSettingsChanged", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, @"CACNotificationOverlayFadingSettingsChanged", 0);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v6, self, @"CACNotificationGridOverlaySettingsChanged", 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v7, self, @"CACNotificationAttentionBasedSettingsChanged", 0);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v8, self, @"CACNotificationAssetDownloadProgressChanged", 0);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v9, self, @"CACNotificationAssetDownloadProgressErrorOccured", 0);
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v10, self, @"CACNotificationLanguageChanged", 0);
  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v11, self, @"CACNotificationAudioDonationSettingsChanged", 0);
  v12 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v12, self, kAXSContinuityDisplayStateChangedNotification, 0);
  v13.receiver = self;
  v13.super_class = CACSettingsController;
  [(CACSettingsController *)&v13 dealloc];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v87 = OBJC_IVAR___PSListController__specifiers;
    val = self;
    v98 = [(CACSettingsController *)self loadSpecifiersFromPlistName:@"CommandAndControlSettings" target:?];
    v4 = +[CACPreferences sharedPreferences];
    v5 = ([v4 didShowOnboarding] & 1) != 0 || _AXSCommandAndControlEnabled() != 0;
    v95 = v5;

    v86 = _AXSAttentionAwarenessFeaturesEnabled();
    if ([v98 count])
    {
      v6 = 0;
      v88 = PSIDKey;
      v89 = PSFooterTextGroupKey;
      v94 = PSFooterCellClassGroupKey;
      v84 = AXTeachableFeatureVoiceControl;
      v85 = PSEnabledKey;
      v83 = PSCellClassKey;
      v92 = PSFooterHyperlinkViewLinkRangeKey;
      v93 = PSFooterHyperlinkViewTitleKey;
      v91 = PSFooterHyperlinkViewTargetKey;
      v90 = PSFooterHyperlinkViewActionKey;
      do
      {
        v7 = v6;
        v8 = [v98 objectAtIndex:?];
        identifier = [v8 identifier];
        if ([identifier isEqualToString:@"COMMAND_AND_CONTROL_FOOTER"])
        {
          if (v95)
          {
            _updatedDownloadString = [(CACSettingsController *)val _updatedDownloadString];
            getCommandAndControlFooterTextLearnMore = [(CACSettingsController *)val getCommandAndControlFooterTextLearnMore];
            v11 = settingsLocString(@"LEARN_MORE", @"CommandAndControlSettings");
            v12 = [NSString stringWithFormat:getCommandAndControlFooterTextLearnMore, v11];
            v13 = v12;
            if ([_updatedDownloadString length])
            {
              v14 = settingsLocString(@"DOWNLOAD_FORMAT", @"CommandAndControlSettings");
              v13 = [NSString stringWithFormat:v14, v12, _updatedDownloadString];
            }

            v15 = objc_opt_class();
            v16 = NSStringFromClass(v15);
            [v8 setProperty:v16 forKey:v94];

            [v8 setProperty:v13 forKey:v93];
            v116.location = [v13 rangeOfString:v11];
            v17 = NSStringFromRange(v116);
            [v8 setProperty:v17 forKey:v92];

            v18 = [NSValue valueWithNonretainedObject:val];
            [v8 setProperty:v18 forKey:v91];

            v19 = NSStringFromSelector("showOverview");
            [v8 setProperty:v19 forKey:v90];
          }

          else
          {
            _updatedDownloadString = [(CACSettingsController *)val getCommandAndControlFooterText];
            [v8 setProperty:_updatedDownloadString forKey:v89];
          }
        }

        else if (v95 | (([identifier isEqualToString:@"COMMAND_AND_CONTROL_FEATURE_SWITCH"] & 1) == 0))
        {
          if ([identifier isEqualToString:@"COMMAND_AND_CONTROL_DONATION_ON_FOOTER"])
          {
            if (!_AXSAudioDonationSiriImprovementEnabled())
            {
              goto LABEL_49;
            }

            v20 = settingsLocString(@"COMMAND_AND_CONTROL_DONATION_ON_FOOTER_TEXT", @"CommandAndControlSettings");
            v21 = [OBPrivacyLinkController linkWithBundleIdentifier:@"com.apple.onboarding.improveastvoice"];
            v22 = v21;
            if (v21)
            {
              bundle = [v21 bundle];
              privacyFlow = [bundle privacyFlow];
              localizedButtonTitle = [privacyFlow localizedButtonTitle];
            }

            else
            {
              localizedButtonTitle = settingsLocString(@"COMMAND_AND_CONTROL_DONATION_ABOUT_LINK_TEXT", @"CommandAndControlSettings");
            }

            v29 = [NSString stringWithFormat:v20, localizedButtonTitle];
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            [v8 setProperty:v31 forKey:v94];

            [v8 setProperty:v29 forKey:v93];
            v117.location = [v29 rangeOfString:localizedButtonTitle];
            v32 = NSStringFromRange(v117);
            [v8 setProperty:v32 forKey:v92];

            v33 = [NSValue valueWithNonretainedObject:val];
            [v8 setProperty:v33 forKey:v91];

            v34 = NSStringFromSelector("showAboutDonation");
            [v8 setProperty:v34 forKey:v90];
          }

          else
          {
            if ([identifier isEqualToString:@"COMMAND_AND_CONTROL_DONATION_OFF_FOOTER"])
            {
              goto LABEL_49;
            }

            if ([identifier isEqualToString:@"COMMAND_AND_CONTROL_DONATION_TipKitGroup"])
            {
              v28 = +[CACPreferences sharedPreferences];
              if ([v28 donationTipKitSeen])
              {
                goto LABEL_27;
              }

              v39 = _AXSAudioDonationSiriImprovementEnabled() == 0;

              if (!v39)
              {
                goto LABEL_49;
              }
            }

            else if ([identifier isEqualToString:@"COMMAND_AND_CONTROL_DONATION_TipKit"])
            {
              v28 = +[CACPreferences sharedPreferences];
              if ([v28 donationTipKitSeen])
              {
LABEL_27:

LABEL_49:
                [v98 removeObjectAtIndex:v7];
                goto LABEL_31;
              }

              v56 = _AXSAudioDonationSiriImprovementEnabled() == 0;

              if (!v56)
              {
                goto LABEL_49;
              }

              objc_initWeak(&location, val);
              [v8 setProperty:objc_opt_class() forKey:v83];
              v57 = settingsLocString(@"DONATION_TIP_TITLE", @"CommandAndControlSettings");
              [v8 setProperty:v57 forKey:@"Title"];

              v58 = settingsLocString(@"DONATION_TIP_DESCRIPTION", @"CommandAndControlSettings");
              [v8 setProperty:v58 forKey:@"Description"];

              v59 = settingsLocString(@"DONATION_TIP_URLTEXT", @"CommandAndControlSettings");
              [v8 setProperty:v59 forKey:@"URLText"];

              [v8 setProperty:&off_2AAB0 forKey:@"tipType"];
              v105[0] = _NSConcreteStackBlock;
              v105[1] = 3221225472;
              v105[2] = sub_D820;
              v105[3] = &unk_290C0;
              objc_copyWeak(&v106, &location);
              v60 = objc_retainBlock(v105);
              [v8 setProperty:v60 forKey:@"ButtonCallback"];

              v103[0] = _NSConcreteStackBlock;
              v103[1] = 3221225472;
              v103[2] = sub_D900;
              v103[3] = &unk_290C0;
              objc_copyWeak(&v104, &location);
              v61 = objc_retainBlock(v103);
              [v8 setProperty:v61 forKey:@"CloseCallback"];

              v62 = [NSBundle bundleForClass:objc_opt_class()];
              v63 = [UIImage imageNamed:@"assistive-voice-icon" inBundle:v62];
              [v8 setProperty:v63 forKey:@"Icon"];

              [v8 setProperty:&__kCFBooleanTrue forKey:@"IconIgnoresInvertColors"];
              objc_destroyWeak(&v104);
              objc_destroyWeak(&v106);
              objc_destroyWeak(&location);
            }

            else if ([identifier isEqualToString:@"COMMAND_AND_CONTROL_LAUNCH_ONBOARDING"])
            {
              v36 = +[AXSpringBoardServer server];
              isContinuitySessionActive = [v36 isContinuitySessionActive];

              v38 = [NSNumber numberWithBool:isContinuitySessionActive ^ 1];
              [v8 setProperty:v38 forKey:v85];
            }

            else if ([identifier isEqualToString:@"COMMAND_AND_CONTROL_WHATS_NEW"])
            {
              v82 = +[PSSpecifier emptyGroupSpecifier];
              v40 = objc_opt_class();
              v41 = NSStringFromClass(v40);
              [v82 setProperty:v41 forKey:v94];

              v80 = [&__NSArray0__struct mutableCopy];
              v81 = [AXTeachableMomentsManager teachableItemsForFeature:v84];
              if ([v81 count])
              {
                v113[0] = @"moreLabel";
                v42 = settingsLocString(@"COMMAND_AND_CONTROL_WHATS_NEW_LINK", @"CommandAndControlSettings");
                v114[0] = v42;
                v113[1] = @"additionalTitleLabel";
                v43 = settingsLocString(@"COMMAND_AND_CONTROL", @"CommandAndControlSettings");
                v114[1] = v43;
                v113[2] = @"alreadyLocalized";
                v113[3] = @"symbolName";
                v114[2] = &__kCFBooleanTrue;
                v114[3] = @"voice.control";
                v44 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:4];
                v79 = [v44 mutableCopy];

                v45 = objc_opt_new();
                v111[0] = @"sectionLabel";
                v46 = [AXTeachableMomentsManager notificationTitleForFeature:v84];
                v111[1] = @"alreadyLocalized";
                v112[0] = v46;
                v112[1] = &__kCFBooleanTrue;
                v47 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:2];
                [v45 addObject:v47];

                v101 = 0u;
                v102 = 0u;
                v99 = 0u;
                v100 = 0u;
                v48 = v81;
                v49 = [v48 countByEnumeratingWithState:&v99 objects:v110 count:16];
                if (v49)
                {
                  v50 = *v100;
                  do
                  {
                    for (i = 0; i != v49; i = i + 1)
                    {
                      if (*v100 != v50)
                      {
                        objc_enumerationMutation(v48);
                      }

                      v52 = *(*(&v99 + 1) + 8 * i);
                      v108[0] = @"headerLabel";
                      itemTitle = [v52 itemTitle];
                      v109[0] = itemTitle;
                      v108[1] = @"contentLabel";
                      itemDescription = [v52 itemDescription];
                      v108[2] = @"alreadyLocalized";
                      v109[1] = itemDescription;
                      v109[2] = &__kCFBooleanTrue;
                      v55 = [NSDictionary dictionaryWithObjects:v109 forKeys:v108 count:3];
                      [v45 addObject:v55];
                    }

                    v49 = [v48 countByEnumeratingWithState:&v99 objects:v110 count:16];
                  }

                  while (v49);
                }

                [v79 setObject:v45 forKey:@"additionalContent"];
                [v80 addObject:v79];
              }

              [v82 setProperty:v80 forKey:@"content"];
              [v98 replaceObjectAtIndex:v7 withObject:v82];
            }

            else if ([identifier isEqualToString:@"COMMAND_AND_CONTROL_LANGUAGE"])
            {
              [v8 setControllerLoadAction:"presentLanguageSelection"];
            }

            else if ([identifier isEqualToString:@"ATTENTION_AWARE_GROUP"])
            {
              v64 = +[UIDevice currentDevice];
              userInterfaceIdiom = [v64 userInterfaceIdiom];
              v66 = @"ATTENTION_AWARE_FOOTER_TEXT_IPHONE";
              if (userInterfaceIdiom == &dword_0 + 1)
              {
                v66 = @"ATTENTION_AWARE_FOOTER_TEXT_IPAD";
              }

              v67 = @"ATTENTION_AWARE_DISABLED_FOOTER_TEXT_IPHONE";
              if (userInterfaceIdiom == &dword_0 + 1)
              {
                v67 = @"ATTENTION_AWARE_DISABLED_FOOTER_TEXT_IPAD";
              }

              if (v86)
              {
                v68 = v66;
              }

              else
              {
                v68 = v67;
              }

              v69 = settingsLocString(v68, @"CommandAndControlSettings");

              [v8 setProperty:v69 forKey:v89];
            }

            else if (([identifier isEqualToString:@"ATTENTION_AWARE_ACTION"] & (v86 == 0)) == 1)
            {
              [v8 setProperty:&__kCFBooleanFalse forKey:v85];
            }
          }
        }

        else
        {
          v26 = settingsLocString(@"SETUP_COMMAND_AND_CONTROL", @"CommandAndControlSettings");
          v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:val set:0 get:0 detail:0 cell:13 edit:0];

          [v27 setProperty:@"SETUP_COMMAND_AND_CONTROL" forKey:v88];
          [v27 setButtonAction:"setupCommandAndControl"];
          [v98 setObject:v27 atIndexedSubscript:v7];
        }

        ++v7;
LABEL_31:

        v35 = [v98 count];
        v6 = v7;
      }

      while (v7 < v35);
    }

    v70 = [v98 count];
    if (v70 >= 1)
    {
      while (1)
      {
        v71 = v70 - 1;
        v72 = [v98 objectAtIndex:v70 - 1];
        if (![v72 cellType])
        {
          break;
        }

LABEL_74:

        v70 = v71;
        if ((v71 + 1) <= 1)
        {
          goto LABEL_75;
        }
      }

      if (v70 >= [v98 count])
      {
        v74 = 0;
      }

      else
      {
        v73 = [v98 objectAtIndex:v70];
        v74 = v73;
        if (v73 && [v73 cellType])
        {
LABEL_73:

          goto LABEL_74;
        }
      }

      identifier2 = [v72 identifier];
      v76 = [identifier2 isEqualToString:@"COMMAND_AND_CONTROL_DONATION_ON_FOOTER"];

      if ((v76 & 1) == 0)
      {
        [v98 removeObjectAtIndex:v71];
      }

      goto LABEL_73;
    }

LABEL_75:
    v77 = *&val->AXUISettingsBaseListController_opaque[v87];
    *&val->AXUISettingsBaseListController_opaque[v87] = v98;

    v3 = *&val->AXUISettingsBaseListController_opaque[v87];
  }

  return v3;
}

- (void)setCommandAndControlEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];

  __AXSCommandAndControlSetEnabled(bOOLValue);
}

- (id)commandAndControlEnabled:(id)enabled
{
  v3 = _AXSCommandAndControlEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (BOOL)_languageMatchesSystem
{
  v2 = +[NSLocale currentLocale];
  localeIdentifier = [v2 localeIdentifier];

  v4 = +[CACPreferences sharedPreferences];
  bestLocaleIdentifier = [v4 bestLocaleIdentifier];

  LOBYTE(v4) = [CACLocaleUtilities isSameLangaugeFromLocaleIdentifier:localeIdentifier secondLocaleIdentifier:bestLocaleIdentifier];
  return v4;
}

- (void)launchCommandAndControlOnboarding
{
  if ([(CACSettingsController *)self _languageMatchesSystem]&& +[CACLanguageAssetManager isAssetsInstalledForBestLocale])
  {
    v10 = +[AXSpringBoardServer server];
    [v10 launchOnboardingViewService:@"voicecontrol"];
  }

  else
  {
    if ([(CACSettingsController *)self _languageMatchesSystem])
    {
      v3 = settingsLocString(@"ONBOARDING_NO_ASSETS_TITLE", @"CommandAndControlSettings");
      v4 = settingsLocString(@"ONBOARDING_NO_ASSETS_MESSAGE", @"CommandAndControlSettings");
      v10 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];

      v5 = settingsLocString(@"ONBOARDING_ALERT_OK", @"CommandAndControlSettings");
      v6 = &stru_29100;
    }

    else
    {
      v7 = settingsLocString(@"ONBOARDING_LANGUAGE_MISMATCH_TITLE", @"CommandAndControlSettings");
      v8 = settingsLocString(@"ONBOARDING_LANGUAGE_MISMATCH_MESSAGE", @"CommandAndControlSettings");
      v10 = [UIAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:1];

      v5 = settingsLocString(@"ONBOARDING_ALERT_OK", @"CommandAndControlSettings");
      v6 = &stru_290E0;
    }

    v9 = [UIAlertAction actionWithTitle:v5 style:0 handler:v6];

    [v10 addAction:v9];
    [(CACSettingsController *)self presentViewController:v10 animated:1 completion:0];
  }
}

- (void)_updateTutorialButtonForOneness
{
  v6 = [(CACSettingsController *)self specifierForID:@"COMMAND_AND_CONTROL_LAUNCH_ONBOARDING"];
  v3 = +[AXSpringBoardServer server];
  isContinuitySessionActive = [v3 isContinuitySessionActive];

  v5 = [NSNumber numberWithBool:isContinuitySessionActive ^ 1];
  [v6 setProperty:v5 forKey:PSEnabledKey];

  [(CACSettingsController *)self reloadSpecifier:v6];
}

- (void)showDonationModalView
{
  v3 = +[_TtC20VoiceControlSettings25VCAudioDonationViewBridge makeViewController];
  [(CACSettingsController *)self presentViewController:v3 animated:1 completion:0];
}

- (id)languageSummary:(id)summary
{
  v3 = +[NSLocale currentLocale];
  v4 = +[CACPreferences sharedPreferences];
  bestLocaleIdentifier = [v4 bestLocaleIdentifier];
  v6 = [v3 localizedStringForLocaleIdentifier:bestLocaleIdentifier];
  localizedCapitalizedString = [v6 localizedCapitalizedString];

  return localizedCapitalizedString;
}

- (void)presentLanguageSelection
{
  v3 = [CACLanguageSelectionViewController defaultControllerWithStyle:1];
  [(CACSettingsController *)self showController:v3 animate:1];
}

- (void)_fetchInstallationStatus
{
  languageModelStatusQueue = self->_languageModelStatusQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E018;
  block[3] = &unk_28EE8;
  block[4] = self;
  dispatch_async(languageModelStatusQueue, block);
}

- (id)_updatedDownloadString
{
  v3 = +[CACPreferences sharedPreferences];
  bestLocaleIdentifier = [v3 bestLocaleIdentifier];
  v5 = [bestLocaleIdentifier stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v6 = +[CACLanguageAssetManager sharedManager];
  v7 = [v6 errorStatusForLanguage:v5];

  v8 = +[CACLanguageAssetManager sharedManager];
  v9 = [v8 downloadProgressForLanguage:v5];

  v10 = _AXSCommandAndControlEnabled();
  v11 = [v9 objectForKey:kCACDownloadProgressDictionaryKeyCompleted];
  bOOLValue = [v11 BOOLValue];

  v13 = [v9 objectForKey:kCACDownloadProgressDictionaryKeyTimeRemaining];
  [v13 floatValue];
  v15 = ceilf(v14 / 60.0);

  *&v16 = v15;
  v17 = [NSNumber numberWithFloat:v16];
  v18 = [NSNumberFormatter localizedStringFromNumber:v17 numberStyle:1];

  v19 = [v9 objectForKey:kCACDownloadProgressDictionaryKeyPercentage];
  [v19 floatValue];
  v21 = v20;

  LODWORD(v22) = v21;
  v23 = [NSNumber numberWithFloat:v22];
  v24 = [NSNumberFormatter localizedStringFromNumber:v23 numberStyle:3];

  if (MGGetBoolAnswer())
  {
    v25 = @"DOWNLOAD_INFO_WLAN";
  }

  else
  {
    v25 = @"DOWNLOAD_INFO_WIFI";
  }

  v26 = settingsLocString(v25, @"CommandAndControlSettings");
  v27 = CACLogGeneral();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    languageModelStatus = [(CACSettingsController *)self languageModelStatus];
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "Language model status: %lu", buf, 0xCu);
  }

  languageModelStatus2 = [(CACSettingsController *)self languageModelStatus];
  if (!languageModelStatus2)
  {
    goto LABEL_20;
  }

  if (languageModelStatus2 != 1)
  {
    if (languageModelStatus2 == 2)
    {
      v29 = +[CACPreferences sharedPreferences];
      didShowOnboarding = [v29 didShowOnboarding];

      if (!didShowOnboarding)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_19:
    _AXAssert();
    goto LABEL_20;
  }

  if (!v10)
  {
LABEL_18:
    v32 = v26;
    if (v32)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (!((v7 == 0) | bOOLValue & 1))
  {
    if (v7 != &dword_0 + 1 && v7 != &dword_0 + 2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((bOOLValue & 1) == 0)
  {
    if (v15 <= 1.0)
    {
      v31 = settingsLocString(@"DOWNLOADING_SHORT_TIME_LEFT", @"CommandAndControlSettings");
      [NSString stringWithFormat:v31, v24, v34];
    }

    else
    {
      v31 = settingsLocString(@"DOWNLOADING_PROGRESS", @"CommandAndControlSettings");
      [NSString stringWithFormat:v31, v24, v18];
    }
    v32 = ;

    if (v32)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_20:
  v32 = &stru_29500;
LABEL_21:

  return v32;
}

- (BOOL)_shouldShowSpinner
{
  v3 = +[CACPreferences sharedPreferences];
  bestLocaleIdentifier = [v3 bestLocaleIdentifier];
  v5 = [bestLocaleIdentifier stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v6 = +[CACLanguageAssetManager sharedManager];
  v7 = [v6 downloadProgressForLanguage:v5];

  v8 = +[CACLanguageAssetManager sharedManager];
  v9 = [v8 errorStatusForLanguage:v5];

  v10 = [v7 objectForKey:kCACDownloadProgressDictionaryKeyCompleted];
  if ([v10 BOOLValue])
  {

    v11 = 0;
  }

  else
  {
    languageModelStatus = [(CACSettingsController *)self languageModelStatus];

    v11 = 0;
    if (languageModelStatus && !v9)
    {
      v11 = _AXSCommandAndControlEnabled() != 0;
    }
  }

  return v11;
}

- (void)setShowTextBannerEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[CACPreferences sharedPreferences];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setShowTextResponseUponRecognition:bOOLValue];
}

- (id)showTextBannerEnabled:(id)enabled
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 showTextResponseUponRecognition]);

  return v4;
}

- (void)setPlaySoundEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = +[CACPreferences sharedPreferences];
  bOOLValue = [enabledCopy BOOLValue];

  [v6 setPlaySoundUponRecognition:bOOLValue];
}

- (id)playSoundEnabled:(id)enabled
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 playSoundUponRecognition]);

  return v4;
}

- (id)attentionAwareActionIsSleepWake
{
  v2 = +[CACPreferences sharedPreferences];
  attentionAwareAction = [v2 attentionAwareAction];

  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [attentionAwareAction isEqualToString:@"SleepAndWake"]);

  return v4;
}

- (void)setAttentionAwareActionIsSleepWakeEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = @"None";
  if (bOOLValue)
  {
    v5 = @"SleepAndWake";
  }

  v6 = v5;
  v7 = +[CACPreferences sharedPreferences];
  [v7 setAttentionAwareAction:v6];
}

- (id)alwaysShowOverlaySummary:(id)summary
{
  v3 = +[CACPreferences sharedPreferences];
  alwaysShowOverlayType = [v3 alwaysShowOverlayType];

  if ([alwaysShowOverlayType isEqualToString:@"NumberedElements"])
  {
    v5 = @"OVERLAY_NUMBERS";
  }

  else if ([alwaysShowOverlayType isEqualToString:@"NamedElements"])
  {
    v5 = @"OVERLAY_NAMES";
  }

  else if ([alwaysShowOverlayType isEqualToString:@"NumberedGrid"])
  {
    v5 = @"OVERLAY_GRID";
  }

  else
  {
    v5 = @"OVERLAY_NONE";
  }

  v6 = settingsLocString(v5, @"CommandAndControlSettings");

  return v6;
}

- (id)userHintsEnabled:(id)enabled
{
  v3 = +[CACPreferences sharedPreferences];
  userHintsFeatures = [v3 userHintsFeatures];

  v5 = +[CACPreferences sharedPreferences];
  v6 = ([v5 userHintsFeatures] >> 1) & 1;

  return [NSNumber numberWithBool:userHintsFeatures & v6];
}

- (void)setUserHintsEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  enabledCopy = enabled;
  [(CACSettingsController *)self setUserHintsForCommandSuggestionsEnabled:enabledCopy specifier:specifierCopy];
  [(CACSettingsController *)self setUserHintsForNextStepSuggestionsEnabled:enabledCopy specifier:specifierCopy];
}

- (void)setUserHintsForCommandSuggestionsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v6 = +[CACPreferences sharedPreferences];
  v5 = +[CACPreferences sharedPreferences];
  [v6 setUserHintsFeatures:{objc_msgSend(v5, "userHintsFeatures") & 0xFFFFFFFFFFFFFFFELL | bOOLValue}];
}

- (void)setUserHintsForNextStepSuggestionsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v8 = +[CACPreferences sharedPreferences];
  v5 = +[CACPreferences sharedPreferences];
  v6 = [v5 userHintsFeatures] & 0xFFFFFFFFFFFFFFFDLL;
  v7 = 2;
  if (!bOOLValue)
  {
    v7 = 0;
  }

  [v8 setUserHintsFeatures:v6 | v7];
}

- (void)clearUserHintsHistory:(id)history specifier:(id)specifier
{
  v5 = settingsLocString(@"USER_HINTS_CLEAR_HISTORY_CONFIRM_TITLE", @"CommandAndControlSettings");
  v6 = settingsLocString(@"USER_HINTS_CLEAR_HISTORY_CONFIRM_DESC", @"CommandAndControlSettings");
  v11 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v7 = settingsLocString(@"CANCEL", @"CommandAndControlSettings");
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:&stru_29148];

  [v11 addAction:v8];
  v9 = settingsLocString(@"USER_HINTS_CLEAR_HISTORY_CONFIRM_BUTTON_TITLE", @"CommandAndControlSettings");
  v10 = [UIAlertAction actionWithTitle:v9 style:2 handler:&stru_29168];

  [v11 addAction:v10];
  [(CACSettingsController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)_showOverviewWithStyle:(unint64_t)style
{
  v4 = [CACOnboardingIntroViewController defaultControllerWithStyle:style];
  v5 = [[UINavigationController alloc] initWithRootViewController:v4];
  v6 = objc_opt_new();
  navigationBar = [v5 navigationBar];
  [navigationBar setShadowImage:v6];

  navigationBar2 = [v5 navigationBar];
  [navigationBar2 setBackgroundImage:v6 forBarMetrics:0];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_F1A8;
  v9[3] = &unk_28EE8;
  v9[4] = self;
  [(CACSettingsController *)self presentViewController:v5 animated:1 completion:v9];
}

- (void)showAboutDonation
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improveastvoice"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)_tipLoaded:(id)loaded
{
  if (!self->_tipLoaded)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CACSettingsController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:PSCellClassKey];
  v10 = [v9 isEqual:objc_opt_class()];

  if (v10)
  {
    tipHeight = self->_tipHeight;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = CACSettingsController;
    [(CACSettingsController *)&v14 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    tipHeight = v12;
  }

  return tipHeight;
}

@end