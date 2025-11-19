@interface AssistantOptInController
+ (void)setAssistantEnabled:(BOOL)a3 settingsManager:(id)a4;
+ (void)skippedByCloudConfig;
- (BFFFlowItemDelegate)delegate;
- (BuddyBackgroundViewController)buddyBackgroundViewController;
- (id)_chronicle;
- (id)viewController;
- (void)_recordAnalyticsEvent;
- (void)_removeSiriPanesFromNavHierarchy;
- (void)continueSetup;
- (void)controllerWasPopped;
- (void)didCompleteOrSkipVoiceTraining;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)selectedVoice:(id)a3 recognitionLanguageCode:(id)a4;
- (void)setBuddyBackgroundViewController:(id)a3;
- (void)showLearnMore;
- (void)skipSetup;
- (void)willBeginVoiceTraining;
@end

@implementation AssistantOptInController

+ (void)skippedByCloudConfig
{
  v2 = [sub_100104C78() sharedPreferences];
  [v2 setDictationIsEnabled:0];

  v3 = [sub_100104C78() sharedPreferences];
  [v3 synchronize];
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100104E9C;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
{
  [(AssistantOptInController *)self didCompleteOrSkipVoiceTraining];
  v2 = [(AssistantOptInController *)self buddyPreferences];
  [(BYPreferencesController *)v2 removeObjectForKey:BYBuddyAssistantPresentedKey];
}

- (id)viewController
{
  v2 = [(AssistantOptInController *)self enrollmentController];
  v3 = v2 == 0;

  if (v3)
  {
    v4 = [objc_alloc(sub_1001055A0()) init:0];
    [(AssistantOptInController *)self setEnrollmentController:v4];

    v5 = [(AssistantOptInController *)self enrollmentController];
    [(VTUIEnrollTrainingViewController *)v5 setDelegate:self];
  }

  return [(AssistantOptInController *)self enrollmentController];
}

- (void)_removeSiriPanesFromNavHierarchy
{
  v14 = self;
  v13[1] = a2;
  v2 = [(AssistantOptInController *)self enrollmentController];
  v13[0] = [(VTUIEnrollTrainingViewController *)v2 navigationController];

  v3 = [v13[0] viewControllers];
  v4 = [(AssistantOptInController *)v14 enrollmentController];
  v5 = [v3 indexOfObject:v4];

  v12 = v5;
  v6 = [v13[0] viewControllers];
  v7 = v5;
  v8 = [v13[0] viewControllers];
  v16 = v7;
  v15 = ([v8 count] - v12);
  v17 = v7;
  v18 = v15;
  v9 = [NSIndexSet indexSetWithIndexesInRange:v7, v15];
  location = [v6 objectsAtIndexes:v9];

  v10 = [(AssistantOptInController *)v14 delegate];
  [(BFFFlowItemDelegate *)v10 removeViewControllersOnNextPush:location];

  objc_storeStrong(&location, 0);
  objc_storeStrong(v13, 0);
}

+ (void)setAssistantEnabled:(BOOL)a3 settingsManager:(id)a4
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = 0;
  objc_storeStrong(&v5, a4);
  v4 = [sub_100104C78() sharedPreferences];
  [v4 setAssistantIsEnabled:v6];

  [v5 setAssistantEnabled:v6];
  objc_storeStrong(&v5, 0);
}

- (void)_recordAnalyticsEvent
{
  v2 = [sub_100104C78() sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  v4 = [(AssistantOptInController *)self paneFeatureAnalyticsManager];
  v5 = [NSNumber numberWithBool:v3 & 1];
  [(BYPaneFeatureAnalyticsManager *)v4 recordActionWithValue:v5 forFeature:7];

  v6 = [sub_100104C78() sharedPreferences];
  v7 = [v6 siriDataSharingOptInStatus];

  if (!v7)
  {
    goto LABEL_8;
  }

  if (v7 == 1)
  {
    v8 = [(AssistantOptInController *)self paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)v8 recordActionWithValue:&__kCFBooleanTrue forFeature:8];

    return;
  }

  if (v7 == 2)
  {
    v9 = [(AssistantOptInController *)self paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)v9 recordActionWithValue:&__kCFBooleanFalse forFeature:8];

    return;
  }

  if (v7 == 3)
  {
LABEL_8:
    v10 = [(AssistantOptInController *)self paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)v10 clearActionForFeature:8];
  }
}

- (void)setBuddyBackgroundViewController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v4->_buddyBackgroundViewController, location[0]);
  objc_storeStrong(location, 0);
}

- (void)continueSetup
{
  v22 = self;
  v21 = a2;
  v2 = [sub_100104C78() sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  v20 = v3 & 1;
  oslog = _BYLoggingFacility();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100075A38(buf, v20 & 1, v22->_didOfferVoiceTrigger);
    _os_log_impl(&_mh_execute_header, oslog, v18, "Siri setup success, enabled = %d, offered PHS = %d", buf, 0xEu);
  }

  objc_storeStrong(&oslog, 0);
  v4 = [(AssistantOptInController *)v22 buddyPreferences];
  [(BYPreferencesController *)v4 setObject:&__kCFBooleanTrue forKey:BYBuddyAssistantPresentedKey];

  v5 = [(AssistantOptInController *)v22 buddyPreferences];
  [(BYPreferencesController *)v5 setObject:&__kCFBooleanTrue forKey:BYBuddyAssistantPHSOfferedKey];

  v6 = [(AssistantOptInController *)v22 settingsManager];
  [(BFFSettingsManager *)v6 setAssistantEnabled:v20 & 1];

  v7 = [(AssistantOptInController *)v22 enrollmentController];
  v8 = [(VTUIEnrollTrainingViewController *)v7 didShowVoiceTriggerPrompt];

  if (v8)
  {
    v17 = _BYLoggingFacility();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v17;
      v10 = v16;
      sub_10006AA68(v15);
      _os_log_impl(&_mh_execute_header, v9, v10, "Storing voice trigger enabled in settings manager, because voice trigger prompt was shown", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    v11 = [(AssistantOptInController *)v22 settingsManager];
    [(BFFSettingsManager *)v11 setAssistantVoiceTriggerEnabled:1];
  }

  if ((+[BYSiriUtilities deviceSupportsSystemAssistantExperience]& 1) != 0)
  {
    +[BYSiriUtilities intelligenceVoiceSelectionDidComplete];
  }

  [(AssistantOptInController *)v22 _removeSiriPanesFromNavHierarchy];
  [(AssistantOptInController *)v22 _recordAnalyticsEvent];
  v12 = [(AssistantOptInController *)v22 delegate];
  [(BFFFlowItemDelegate *)v12 flowItemDone:v22];

  v13 = [(AssistantOptInController *)v22 buddyPreferences];
  [(BYPreferencesController *)v13 setObject:&__kCFBooleanTrue forKey:@"SiriOnBoardingPresented"];

  v14 = [(AssistantOptInController *)v22 flowSkipController];
  [(BYFlowSkipController *)v14 didCompleteFlow:BYFlowSkipIdentifierSiri];
}

- (void)skipSetup
{
  v28 = self;
  v27 = a2;
  v2 = [sub_100104C78() sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  v26 = v3 & 1;
  v4 = [sub_10010624C() sharedPreferences];
  v5 = [v4 voiceTriggerEnabled];

  v25 = v5 & 1;
  oslog = _BYLoggingFacility();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100075A38(buf, v26 & 1, v25 & 1);
    _os_log_impl(&_mh_execute_header, oslog, v23, "User chose to skip Siri setup: enabled %d voice trigger enabled %d", buf, 0xEu);
  }

  objc_storeStrong(&oslog, 0);
  [(AssistantOptInController *)v28 _removeSiriPanesFromNavHierarchy];
  [(AssistantOptInController *)v28 _recordAnalyticsEvent];
  v6 = [(AssistantOptInController *)v28 settingsManager];
  [(BFFSettingsManager *)v6 setAssistantEnabled:v26 & 1];

  v7 = [sub_10010624C() sharedPreferences];
  v8 = [v7 hasExplicitlySetVoiceTriggerEnabled];

  if (v8)
  {
    v22 = _BYLoggingFacility();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      sub_100082D54(v30, v25 & 1);
      _os_log_impl(&_mh_execute_header, v22, v21, "Storing explicitly set voice trigger enabled %d in settings manager", v30, 8u);
    }

    objc_storeStrong(&v22, 0);
    v9 = [(AssistantOptInController *)v28 settingsManager];
    [(BFFSettingsManager *)v9 setAssistantVoiceTriggerEnabled:v25 & 1];
  }

  else
  {
    v10 = [(AssistantOptInController *)v28 settingsManager];
    v11 = [(BFFSettingsManager *)v10 hasAssistantVoiceTriggerEnabledValue]^ 1;

    if (v11)
    {
      v20 = _BYLoggingFacility();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        sub_100082D54(v29, v25 & 1);
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Settings manager lacks voice trigger enabled value. Storing %d", v29, 8u);
      }

      objc_storeStrong(&v20, 0);
      v12 = [(AssistantOptInController *)v28 settingsManager];
      [(BFFSettingsManager *)v12 setAssistantVoiceTriggerEnabled:v25 & 1];
    }
  }

  v13 = [(AssistantOptInController *)v28 delegate];
  [(BFFFlowItemDelegate *)v13 flowItemDone:v28];

  if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0)
  {
    v14 = [sub_100104C78() sharedPreferences];
    [v14 setDictationIsEnabled:0];

    v15 = [sub_100104C78() sharedPreferences];
    [v15 synchronize];
  }

  v16 = [(AssistantOptInController *)v28 buddyPreferences];
  [(BYPreferencesController *)v16 setObject:&__kCFBooleanTrue forKey:BYBuddyAssistantPresentedKey];

  v17 = [(AssistantOptInController *)v28 buddyPreferences];
  [(BYPreferencesController *)v17 setObject:&__kCFBooleanTrue forKey:BYBuddyAssistantPHSOfferedKey];

  v18 = [(AssistantOptInController *)v28 buddyPreferences];
  [(BYPreferencesController *)v18 setObject:&__kCFBooleanTrue forKey:@"SiriOnBoardingPresented"];

  v19 = [(AssistantOptInController *)v28 flowSkipController];
  [(BYFlowSkipController *)v19 didSkipFlow:BYFlowSkipIdentifierSiri];

  [(AssistantOptInController *)v28 didCompleteOrSkipVoiceTraining];
}

- (void)showLearnMore
{
  v3 = self;
  location[1] = a2;
  location[0] = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:BYPrivacySiriIdentifier];
  [location[0] setPresentingViewController:v3->_enrollmentController];
  [location[0] present];
  objc_storeStrong(location, 0);
}

- (void)selectedVoice:(id)a3 recognitionLanguageCode:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  if (location[0])
  {
    v17 = 0;
    oslog = _BYLoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(buf, location[0]);
      _os_log_impl(&_mh_execute_header, oslog, v15, "Received Siri Voice Selection %@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    obj = v17;
    v5 = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:0 error:&obj];
    objc_storeStrong(&v17, obj);
    v14 = v5;
    if (v17)
    {
      v12 = _BYLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v10 = 0;
        v8 = 0;
        if (_BYIsInternalInstall())
        {
          v6 = v17;
        }

        else if (v17)
        {
          v11 = [v17 domain];
          v10 = 1;
          v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v11, [v17 code]);
          v9 = v6;
          v8 = 1;
        }

        else
        {
          v6 = 0;
        }

        sub_100071CBC(v21, v6);
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to encode Siri output voice: %{public}@", v21, 0xCu);
        if (v8)
        {
        }

        if (v10)
        {
        }
      }

      objc_storeStrong(&v12, 0);
    }

    else
    {
      v7 = [(AssistantOptInController *)v20 settingsManager];
      [(BFFSettingsManager *)v7 setAssistantOutputVoice:v14 languageCode:v18];
    }

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)willBeginVoiceTraining
{
  v2 = [(AssistantOptInController *)self buddyBackgroundViewController:a2];
  [(BuddyBackgroundViewController *)v2 setBuddyBackgroundFilterStyle:1];
}

- (void)didCompleteOrSkipVoiceTraining
{
  v2 = [(AssistantOptInController *)self buddyBackgroundViewController:a2];
  [(BuddyBackgroundViewController *)v2 setBuddyBackgroundFilterStyle:0];
}

- (id)_chronicle
{
  v2 = [BYChronicle alloc];
  v3 = [(AssistantOptInController *)self buddyPreferencesExcludedFromBackup];
  v4 = [v2 initFromBackedUpPreferences:0 andNotBackedUpPreferences:v3 includeCache:0];

  return v4;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BuddyBackgroundViewController)buddyBackgroundViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_buddyBackgroundViewController);

  return WeakRetained;
}

@end