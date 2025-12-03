@interface AssistantOptInController
+ (void)setAssistantEnabled:(BOOL)enabled settingsManager:(id)manager;
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
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)selectedVoice:(id)voice recognitionLanguageCode:(id)code;
- (void)setBuddyBackgroundViewController:(id)controller;
- (void)showLearnMore;
- (void)skipSetup;
- (void)willBeginVoiceTraining;
@end

@implementation AssistantOptInController

+ (void)skippedByCloudConfig
{
  sharedPreferences = [sub_100104C78() sharedPreferences];
  [sharedPreferences setDictationIsEnabled:0];

  sharedPreferences2 = [sub_100104C78() sharedPreferences];
  [sharedPreferences2 synchronize];
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = dispatch_get_global_queue(25, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100104E9C;
  v8 = &unk_10032AFD0;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
{
  [(AssistantOptInController *)self didCompleteOrSkipVoiceTraining];
  buddyPreferences = [(AssistantOptInController *)self buddyPreferences];
  [(BYPreferencesController *)buddyPreferences removeObjectForKey:BYBuddyAssistantPresentedKey];
}

- (id)viewController
{
  enrollmentController = [(AssistantOptInController *)self enrollmentController];
  v3 = enrollmentController == 0;

  if (v3)
  {
    v4 = [objc_alloc(sub_1001055A0()) init:0];
    [(AssistantOptInController *)self setEnrollmentController:v4];

    enrollmentController2 = [(AssistantOptInController *)self enrollmentController];
    [(VTUIEnrollTrainingViewController *)enrollmentController2 setDelegate:self];
  }

  return [(AssistantOptInController *)self enrollmentController];
}

- (void)_removeSiriPanesFromNavHierarchy
{
  selfCopy = self;
  v13[1] = a2;
  enrollmentController = [(AssistantOptInController *)self enrollmentController];
  v13[0] = [(VTUIEnrollTrainingViewController *)enrollmentController navigationController];

  viewControllers = [v13[0] viewControllers];
  enrollmentController2 = [(AssistantOptInController *)selfCopy enrollmentController];
  v5 = [viewControllers indexOfObject:enrollmentController2];

  v12 = v5;
  viewControllers2 = [v13[0] viewControllers];
  v7 = v5;
  viewControllers3 = [v13[0] viewControllers];
  v16 = v7;
  v15 = ([viewControllers3 count] - v12);
  v17 = v7;
  v18 = v15;
  v9 = [NSIndexSet indexSetWithIndexesInRange:v7, v15];
  location = [viewControllers2 objectsAtIndexes:v9];

  delegate = [(AssistantOptInController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate removeViewControllersOnNextPush:location];

  objc_storeStrong(&location, 0);
  objc_storeStrong(v13, 0);
}

+ (void)setAssistantEnabled:(BOOL)enabled settingsManager:(id)manager
{
  selfCopy = self;
  v7 = a2;
  enabledCopy = enabled;
  v5 = 0;
  objc_storeStrong(&v5, manager);
  sharedPreferences = [sub_100104C78() sharedPreferences];
  [sharedPreferences setAssistantIsEnabled:enabledCopy];

  [v5 setAssistantEnabled:enabledCopy];
  objc_storeStrong(&v5, 0);
}

- (void)_recordAnalyticsEvent
{
  sharedPreferences = [sub_100104C78() sharedPreferences];
  assistantIsEnabled = [sharedPreferences assistantIsEnabled];

  paneFeatureAnalyticsManager = [(AssistantOptInController *)self paneFeatureAnalyticsManager];
  v5 = [NSNumber numberWithBool:assistantIsEnabled & 1];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:v5 forFeature:7];

  sharedPreferences2 = [sub_100104C78() sharedPreferences];
  siriDataSharingOptInStatus = [sharedPreferences2 siriDataSharingOptInStatus];

  if (!siriDataSharingOptInStatus)
  {
    goto LABEL_8;
  }

  if (siriDataSharingOptInStatus == 1)
  {
    paneFeatureAnalyticsManager2 = [(AssistantOptInController *)self paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager2 recordActionWithValue:&__kCFBooleanTrue forFeature:8];

    return;
  }

  if (siriDataSharingOptInStatus == 2)
  {
    paneFeatureAnalyticsManager3 = [(AssistantOptInController *)self paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager3 recordActionWithValue:&__kCFBooleanFalse forFeature:8];

    return;
  }

  if (siriDataSharingOptInStatus == 3)
  {
LABEL_8:
    paneFeatureAnalyticsManager4 = [(AssistantOptInController *)self paneFeatureAnalyticsManager];
    [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager4 clearActionForFeature:8];
  }
}

- (void)setBuddyBackgroundViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  objc_storeWeak(&selfCopy->_buddyBackgroundViewController, location[0]);
  objc_storeStrong(location, 0);
}

- (void)continueSetup
{
  selfCopy = self;
  v21 = a2;
  sharedPreferences = [sub_100104C78() sharedPreferences];
  assistantIsEnabled = [sharedPreferences assistantIsEnabled];

  v20 = assistantIsEnabled & 1;
  oslog = _BYLoggingFacility();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100075A38(buf, v20 & 1, selfCopy->_didOfferVoiceTrigger);
    _os_log_impl(&_mh_execute_header, oslog, v18, "Siri setup success, enabled = %d, offered PHS = %d", buf, 0xEu);
  }

  objc_storeStrong(&oslog, 0);
  buddyPreferences = [(AssistantOptInController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:BYBuddyAssistantPresentedKey];

  buddyPreferences2 = [(AssistantOptInController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences2 setObject:&__kCFBooleanTrue forKey:BYBuddyAssistantPHSOfferedKey];

  settingsManager = [(AssistantOptInController *)selfCopy settingsManager];
  [(BFFSettingsManager *)settingsManager setAssistantEnabled:v20 & 1];

  enrollmentController = [(AssistantOptInController *)selfCopy enrollmentController];
  didShowVoiceTriggerPrompt = [(VTUIEnrollTrainingViewController *)enrollmentController didShowVoiceTriggerPrompt];

  if (didShowVoiceTriggerPrompt)
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
    settingsManager2 = [(AssistantOptInController *)selfCopy settingsManager];
    [(BFFSettingsManager *)settingsManager2 setAssistantVoiceTriggerEnabled:1];
  }

  if ((+[BYSiriUtilities deviceSupportsSystemAssistantExperience]& 1) != 0)
  {
    +[BYSiriUtilities intelligenceVoiceSelectionDidComplete];
  }

  [(AssistantOptInController *)selfCopy _removeSiriPanesFromNavHierarchy];
  [(AssistantOptInController *)selfCopy _recordAnalyticsEvent];
  delegate = [(AssistantOptInController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  buddyPreferences3 = [(AssistantOptInController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences3 setObject:&__kCFBooleanTrue forKey:@"SiriOnBoardingPresented"];

  flowSkipController = [(AssistantOptInController *)selfCopy flowSkipController];
  [(BYFlowSkipController *)flowSkipController didCompleteFlow:BYFlowSkipIdentifierSiri];
}

- (void)skipSetup
{
  selfCopy = self;
  v27 = a2;
  sharedPreferences = [sub_100104C78() sharedPreferences];
  assistantIsEnabled = [sharedPreferences assistantIsEnabled];

  v26 = assistantIsEnabled & 1;
  sharedPreferences2 = [sub_10010624C() sharedPreferences];
  voiceTriggerEnabled = [sharedPreferences2 voiceTriggerEnabled];

  v25 = voiceTriggerEnabled & 1;
  oslog = _BYLoggingFacility();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100075A38(buf, v26 & 1, v25 & 1);
    _os_log_impl(&_mh_execute_header, oslog, v23, "User chose to skip Siri setup: enabled %d voice trigger enabled %d", buf, 0xEu);
  }

  objc_storeStrong(&oslog, 0);
  [(AssistantOptInController *)selfCopy _removeSiriPanesFromNavHierarchy];
  [(AssistantOptInController *)selfCopy _recordAnalyticsEvent];
  settingsManager = [(AssistantOptInController *)selfCopy settingsManager];
  [(BFFSettingsManager *)settingsManager setAssistantEnabled:v26 & 1];

  sharedPreferences3 = [sub_10010624C() sharedPreferences];
  hasExplicitlySetVoiceTriggerEnabled = [sharedPreferences3 hasExplicitlySetVoiceTriggerEnabled];

  if (hasExplicitlySetVoiceTriggerEnabled)
  {
    v22 = _BYLoggingFacility();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      sub_100082D54(v30, v25 & 1);
      _os_log_impl(&_mh_execute_header, v22, v21, "Storing explicitly set voice trigger enabled %d in settings manager", v30, 8u);
    }

    objc_storeStrong(&v22, 0);
    settingsManager2 = [(AssistantOptInController *)selfCopy settingsManager];
    [(BFFSettingsManager *)settingsManager2 setAssistantVoiceTriggerEnabled:v25 & 1];
  }

  else
  {
    settingsManager3 = [(AssistantOptInController *)selfCopy settingsManager];
    v11 = [(BFFSettingsManager *)settingsManager3 hasAssistantVoiceTriggerEnabledValue]^ 1;

    if (v11)
    {
      v20 = _BYLoggingFacility();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        sub_100082D54(v29, v25 & 1);
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Settings manager lacks voice trigger enabled value. Storing %d", v29, 8u);
      }

      objc_storeStrong(&v20, 0);
      settingsManager4 = [(AssistantOptInController *)selfCopy settingsManager];
      [(BFFSettingsManager *)settingsManager4 setAssistantVoiceTriggerEnabled:v25 & 1];
    }
  }

  delegate = [(AssistantOptInController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0)
  {
    sharedPreferences4 = [sub_100104C78() sharedPreferences];
    [sharedPreferences4 setDictationIsEnabled:0];

    sharedPreferences5 = [sub_100104C78() sharedPreferences];
    [sharedPreferences5 synchronize];
  }

  buddyPreferences = [(AssistantOptInController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:BYBuddyAssistantPresentedKey];

  buddyPreferences2 = [(AssistantOptInController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences2 setObject:&__kCFBooleanTrue forKey:BYBuddyAssistantPHSOfferedKey];

  buddyPreferences3 = [(AssistantOptInController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences3 setObject:&__kCFBooleanTrue forKey:@"SiriOnBoardingPresented"];

  flowSkipController = [(AssistantOptInController *)selfCopy flowSkipController];
  [(BYFlowSkipController *)flowSkipController didSkipFlow:BYFlowSkipIdentifierSiri];

  [(AssistantOptInController *)selfCopy didCompleteOrSkipVoiceTraining];
}

- (void)showLearnMore
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:BYPrivacySiriIdentifier];
  [location[0] setPresentingViewController:selfCopy->_enrollmentController];
  [location[0] present];
  objc_storeStrong(location, 0);
}

- (void)selectedVoice:(id)voice recognitionLanguageCode:(id)code
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, voice);
  v18 = 0;
  objc_storeStrong(&v18, code);
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
          domain = [v17 domain];
          v10 = 1;
          v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v17 code]);
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
      settingsManager = [(AssistantOptInController *)selfCopy settingsManager];
      [(BFFSettingsManager *)settingsManager setAssistantOutputVoice:v14 languageCode:v18];
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
  buddyPreferencesExcludedFromBackup = [(AssistantOptInController *)self buddyPreferencesExcludedFromBackup];
  v4 = [v2 initFromBackedUpPreferences:0 andNotBackedUpPreferences:buddyPreferencesExcludedFromBackup includeCache:0];

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