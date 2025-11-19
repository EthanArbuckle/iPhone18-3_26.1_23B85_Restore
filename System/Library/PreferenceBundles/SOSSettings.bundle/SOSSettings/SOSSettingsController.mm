@interface SOSSettingsController
+ (NSString)tipSpecifierKey;
- (BOOL)_canLaunchDemoFlow;
- (PSSpecifier)tipKitEntrySpecifier;
- (SOSSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)callWithHold:(id)a3;
- (id)callWithPresses:(id)a3;
- (id)emergencySOSSoundEnabled:(id)a3;
- (id)getCrashDetectionEnabledForSpecifier:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)addStewieGroupIfSupportedAnimated:(BOOL)a3;
- (void)applicationWillEnterForeground;
- (void)dealloc;
- (void)emitNavigationEvent;
- (void)feedbackController:(id)a3 didCompleteWithFeedbackID:(id)a4;
- (void)feedbackController:(id)a3 didFailToAttachURL:(id)a4 error:(id)a5;
- (void)feedbackController:(id)a3 didFailToStartWithError:(id)a4;
- (void)feedbackController:(id)a3 didFailToSubmitFeedback:(id)a4;
- (void)feedbackControllerDidCancel:(id)a3;
- (void)handleSendingLocationChanged;
- (void)handleSosContactsChanged;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)initSharingLocationSpecifiers;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)openHealthApp:(id)a3;
- (void)openMessages:(id)a3;
- (void)openTrialDialog;
- (void)presentStewieTryOutModeIfPossible;
- (void)reloadEmergencyContactsAnimated:(BOOL)a3;
- (void)reloadKappaSpecifier;
- (void)setCallWithHold:(id)a3 forSpecifier:(id)a4;
- (void)setCallWithPresses:(id)a3 forSpecifier:(id)a4;
- (void)setCrashDetectionEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setEmergencySOSSoundEnabled:(id)a3 forSpecifier:(id)a4;
- (void)showCrashDetectionFeedbackAssistantWithUUID:(id)a3;
- (void)showFeedbackAssistant;
- (void)showStopSharingConfirmation:(id)a3;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
- (void)stateChanged:(id)a3;
- (void)stopSharingLocation:(id)a3;
- (void)submitSOSNotificationSettingsChangedMetric:(id)a3 withValue:(id)a4;
- (void)submitSOSNotificationTapMetric;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tipKitMakeTipSpecifier;
- (void)tipKitStartObservation;
- (void)tipKitStopObservation;
@end

@implementation SOSSettingsController

- (SOSSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  v24.receiver = self;
  v24.super_class = SOSSettingsController;
  v4 = [(SOSSettingsController *)&v24 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(SOSContactsManager);
    contactsManager = v4->_contactsManager;
    v4->_contactsManager = v5;

    v7 = objc_alloc_init(NSMutableArray);
    sosContactsNumbers = v4->_sosContactsNumbers;
    v4->_sosContactsNumbers = v7;

    v9 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
    coreTelephonyClient = v4->_coreTelephonyClient;
    v4->_coreTelephonyClient = v9;

    [(CoreTelephonyClient *)v4->_coreTelephonyClient setDelegate:v4];
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v4 selector:"handleSendingLocationChanged" name:@"SOSSendingLocationUpdateChangedNotification" object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v4 selector:"handleSosContactsChanged" name:@"SOSContactsChangedNotification" object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v4 selector:"applicationWillEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_3F20, SOSKappaStateChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v15 = +[SOSUtilities _userSOSDefaults];
    sosDefaults = v4->_sosDefaults;
    v4->_sosDefaults = v15;

    [(NSUserDefaults *)v4->_sosDefaults addObserver:v4 forKeyPath:@"SOSTriggerMechanismKey" options:0 context:0];
    [(NSUserDefaults *)v4->_sosDefaults addObserver:v4 forKeyPath:SOSCallWithSideButtonPressesKey options:0 context:0];
    [(NSUserDefaults *)v4->_sosDefaults addObserver:v4 forKeyPath:SOSCallWithVolumeLockHoldKey options:0 context:0];
    [(NSUserDefaults *)v4->_sosDefaults addObserver:v4 forKeyPath:SOSPlayAudioDuringCountdownKey options:0 context:0];
    v4->_stewieSupported = 0;
    v17 = [[CTStewieStateMonitor alloc] initWithDelegate:v4 queue:&_dispatch_main_q];
    stewieStateMonitor = v4->_stewieStateMonitor;
    v4->_stewieStateMonitor = v17;

    v19 = sub_8EF4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v4->_stewieStateMonitor;
      *buf = 138412290;
      v26 = v20;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Created Stewie state monitor: %@", buf, 0xCu);
    }

    [(CTStewieStateMonitor *)v4->_stewieStateMonitor start];
    v21 = sub_8EF4();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v4->_stewieStateMonitor;
      *buf = 138412290;
      v26 = v22;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Stewie state monitor has been started: %@", buf, 0xCu);
    }
  }

  return v4;
}

- (void)emitNavigationEvent
{
  v8 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.SOS"];
  v3 = [_NSLocalizedStringResource alloc];
  v4 = +[NSLocale currentLocale];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 bundleURL];
  v7 = [v3 initWithKey:@"Emergency SOS" table:0 locale:v4 bundleURL:v6];

  [(SOSSettingsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.emergency-sos" title:v7 localizedNavigationComponents:&__NSArray0__struct deepLink:v8];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(NSUserDefaults *)self->_sosDefaults removeObserver:self forKeyPath:@"SOSTriggerMechanismKey"];
  [(NSUserDefaults *)self->_sosDefaults removeObserver:self forKeyPath:SOSCallWithSideButtonPressesKey];
  [(NSUserDefaults *)self->_sosDefaults removeObserver:self forKeyPath:SOSCallWithVolumeLockHoldKey];
  [(NSUserDefaults *)self->_sosDefaults removeObserver:self forKeyPath:SOSPlayAudioDuringCountdownKey];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, SOSKappaStateChangedNotification, 0);
  v5.receiver = self;
  v5.super_class = SOSSettingsController;
  [(SOSSettingsController *)&v5 dealloc];
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = SOSSettingsURLSourceKey;
  v8 = a4;
  v9 = [v6 valueForKey:v7];
  v10 = v9;
  if (v9)
  {
    if ([v9 isEqualToString:SOSSettingsURLSourceAccCallNotification])
    {
      self->_openedViaAccCallNotification = 1;
      v11 = sub_8EF4();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,opened via notification", buf, 2u);
      }

      [(SOSSettingsController *)self submitSOSNotificationTapMetric];
      [(SOSSettingsController *)self showFeedbackAssistant];
      goto LABEL_19;
    }

    if ([v10 isEqualToString:SOSSettingsURLSourceCrashDetectionFeedbackRequestNotification])
    {
      v12 = sub_8EF4();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,opened via settings - CrashDetection", buf, 2u);
      }

      v13 = [v6 valueForKey:SOSSettingsURLSourceCrashDetectionUUIDKey];
      v14 = sub_8EF4();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,FeedbackAssistant,%@", buf, 0xCu);
      }

      [(SOSSettingsController *)self showCrashDetectionFeedbackAssistantWithUUID:v13];
LABEL_18:

      goto LABEL_19;
    }
  }

  if (![v10 isEqualToString:SOSSettingsURLSourceSettingsResetFollowUp])
  {
    self->_openedViaAccCallNotification = 0;
    v13 = sub_8EF4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,not opened via notification", buf, 2u);
    }

    goto LABEL_18;
  }

  v15 = sub_8EF4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,opened via settings reset FollowUp", buf, 2u);
  }

  [SOSUtilities setSettingsResetFollowUpState:3];
LABEL_19:
  v16.receiver = self;
  v16.super_class = SOSSettingsController;
  [(SOSSettingsController *)&v16 handleURL:v6 withCompletion:v8];
}

- (void)showCrashDetectionFeedbackAssistantWithUUID:(id)a3
{
  v4 = a3;
  v5 = +[OSASystemConfiguration sharedInstance];
  v6 = [v5 targetAudience];

  v7 = sub_8EF4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,showCrashDetectionFeedbackAssistant,BuildType:%@", buf, 0xCu);
  }

  if ([v6 isEqualToString:@"Internal"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"Seed"))
  {
    v8 = [[_TtC11SOSSettings35SOSCrashDetectionFeedbackController alloc] initWithDelegate:self legalText:0 uuid:v4];
    feedbackController = self->_feedbackController;
    self->_feedbackController = &v8->super;

    v10 = [_TtC11SOSSettings23SOSKappaFeedbackConsent alloc];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_4730;
    v18 = &unk_20EE8;
    v19 = v4;
    v20 = self;
    v11 = [(SOSKappaFeedbackConsent *)v10 initWithCallback:&v15];
    kappaConsentUI = self->_kappaConsentUI;
    self->_kappaConsentUI = v11;

    v13 = [(SOSKappaFeedbackConsent *)self->_kappaConsentUI getViewController:v15];
    [(SOSSettingsController *)self presentViewController:v13 animated:1 completion:0];

    v14 = v19;
  }

  else
  {
    v14 = sub_8EF4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,showCrashDetectionFeedbackAssistant,not internal or seed user so don't show FA", buf, 2u);
    }
  }
}

- (void)showFeedbackAssistant
{
  v3 = +[OSASystemConfiguration sharedInstance];
  v4 = [v3 targetAudience];

  v5 = sub_8F7C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,showFeedbackAssistant,BuildType:%@", &v11, 0xCu);
  }

  if (([v4 isEqualToString:@"Internal"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"Seed") & 1) == 0)
  {
    v10 = sub_8F7C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,showFeedbackAssistant,not internal or seed user so don't show FA", &v11, 2u);
    }

    goto LABEL_9;
  }

  if (objc_opt_class())
  {
    v6 = [_TtC11SOSSettings21SOSFeedbackController alloc];
    v7 = +[SOSUtilities accidentalCallFeedbackAssistantLegalText];
    v8 = [(SOSFeedbackController *)v6 initWithDelegate:self legalText:v7];
    feedbackController = self->_feedbackController;
    self->_feedbackController = v8;

    v10 = [(SOSFeedbackController *)self->_feedbackController getFeedbackViewController];
    [(SOSSettingsController *)self presentViewController:v10 animated:1 completion:&stru_20F08];
LABEL_9:
  }
}

- (void)feedbackController:(id)a3 didCompleteWithFeedbackID:(id)a4
{
  v4 = a4;
  v5 = sub_8EF4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,feedbackController,completed with feedback ID,%@", &v6, 0xCu);
  }
}

- (void)feedbackController:(id)a3 didFailToStartWithError:(id)a4
{
  v4 = a4;
  v5 = sub_8EF4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,feedbackController,failed to start with error,%@", &v6, 0xCu);
  }
}

- (void)feedbackControllerDidCancel:(id)a3
{
  v3 = sub_8EF4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,feedbackController,user cancelled", v4, 2u);
  }
}

- (void)feedbackController:(id)a3 didFailToAttachURL:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = sub_8EF4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,feedbackController,failed to attach URL,%@,error,%@", &v9, 0x16u);
  }
}

- (void)feedbackController:(id)a3 didFailToSubmitFeedback:(id)a4
{
  v4 = a4;
  v5 = sub_8EF4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,feedbackController,failed to submit with error,%@", &v6, 0xCu);
  }
}

- (void)handleSendingLocationChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4E80;
  block[3] = &unk_20E08;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleSosContactsChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4F00;
  block[3] = &unk_20E08;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)applicationWillEnterForeground
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4F80;
  block[3] = &unk_20E08;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)reloadKappaSpecifier
{
  v3 = [(SOSSettingsController *)self getCrashDetectionEnabledForSpecifier:self->_kappaSpecifier];
  v4 = v3 != 0;

  kappaSpecifier = self->_kappaSpecifier;
  v6 = [NSNumber numberWithBool:v4];
  [(PSSpecifier *)kappaSpecifier setProperty:v6 forKey:PSValueKey];

  v7 = self->_kappaSpecifier;

  [(SOSSettingsController *)self reloadSpecifier:v7 animated:1];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(SOSSettingsController *)self loadSpecifiersFromPlistName:@"SOSSettings" target:self];
    v6 = [v5 specifierForID:@"CALL_WITH_HOLD_GROUP"];
    callWithHoldGroupSpecifier = self->_callWithHoldGroupSpecifier;
    self->_callWithHoldGroupSpecifier = v6;

    v8 = [v5 specifierForID:@"CALL_WITH_HOLD"];
    callWithHoldSpecifier = self->_callWithHoldSpecifier;
    self->_callWithHoldSpecifier = v8;

    v10 = [v5 specifierForID:@"CALL_WITH_PRESSES_GROUP"];
    callWithPressesGroupSpecifier = self->_callWithPressesGroupSpecifier;
    self->_callWithPressesGroupSpecifier = v10;

    v12 = [v5 specifierForID:@"CALL_WITH_PRESSES"];
    callWithPressesSpecifier = self->_callWithPressesSpecifier;
    self->_callWithPressesSpecifier = v12;

    v14 = [v5 specifierForID:@"THREE_CLICKS"];
    threeClicksSpecifier = self->_threeClicksSpecifier;
    p_threeClicksSpecifier = &self->_threeClicksSpecifier;
    self->_threeClicksSpecifier = v14;

    v16 = [v5 specifierForID:@"FIVE_CLICKS"];
    fiveClicksSpecifier = self->_fiveClicksSpecifier;
    p_fiveClicksSpecifier = &self->_fiveClicksSpecifier;
    self->_fiveClicksSpecifier = v16;

    v18 = [v5 specifierForID:@"NUMBER_OF_CLICKS_GROUP"];
    clicksRadioGroup = self->_clicksRadioGroup;
    self->_clicksRadioGroup = v18;

    v20 = [v5 specifierForID:@"TRIGGER_ANIMATION_GROUP"];
    triggerAnimationGroup = self->_triggerAnimationGroup;
    self->_triggerAnimationGroup = v20;

    v22 = [v5 specifierForID:@"TRIGGER_ANIMATION"];
    triggerAnimationViewCell = self->_triggerAnimationViewCell;
    self->_triggerAnimationViewCell = v22;

    v24 = [v5 specifierForID:@"ALARM_SOUND_GROUP"];
    alarmSoundGroup = self->_alarmSoundGroup;
    self->_alarmSoundGroup = v24;

    if (!self->_alarmSoundGroup)
    {
      sub_14060();
    }

    v26 = [v5 specifierForID:@"ALARM_SOUND_SWITCH"];
    alarmSoundSwitch = self->_alarmSoundSwitch;
    self->_alarmSoundSwitch = v26;

    if (!self->_alarmSoundSwitch)
    {
      sub_14034();
    }

    v28 = [v5 specifierForID:@"EMERGENCY_CONTACTS"];
    emergencyContactsGroup = self->_emergencyContactsGroup;
    self->_emergencyContactsGroup = v28;

    if (!self->_emergencyContactsGroup)
    {
      sub_14008();
    }

    v30 = [v5 specifierForID:@"OPEN_HEALTH"];
    openHealthButton = self->_openHealthButton;
    self->_openHealthButton = v30;

    if (!self->_openHealthButton)
    {
      sub_13FDC();
    }

    v97 = v3;
    if (+[SOSUtilities isStewieVisible])
    {
      v32 = [PSSpecifier groupSpecifierWithID:@"STEWIE_ANIMATION_GROUP"];
      stewieAnimationGroup = self->_stewieAnimationGroup;
      self->_stewieAnimationGroup = v32;

      v34 = self->_stewieAnimationGroup;
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      [(PSSpecifier *)v34 setProperty:v36 forKey:PSFooterCellClassGroupKey];

      v37 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
      stewieAnimationViewCell = self->_stewieAnimationViewCell;
      self->_stewieAnimationViewCell = v37;

      v39 = self->_stewieAnimationViewCell;
      v111[0] = self->_stewieAnimationGroup;
      v111[1] = v39;
      v40 = [NSArray arrayWithObjects:v111 count:2];
      [v5 ps_insertObjectsFromArray:v40 afterObject:self->_openHealthButton];

      [(SOSSettingsController *)self makeTipSpecifier];
    }

    if (+[SOSUtilities isKappaDetectionSupportedOnPhone](SOSUtilities, "isKappaDetectionSupportedOnPhone") && +[SOSUtilities isKappaVisible])
    {
      v41 = [PSSpecifier groupSpecifierWithID:@"SOS_KAPPA_TITLE"];
      kappaGroupSpecifier = self->_kappaGroupSpecifier;
      self->_kappaGroupSpecifier = v41;

      v43 = +[SOSUtilities crashDetectionTitleDescription];
      [(PSSpecifier *)self->_kappaGroupSpecifier setName:v43];

      v44 = +[SOSUtilities isKappaDetectionSupportedOnActiveWatch];
      v45 = self->_kappaGroupSpecifier;
      if (v44)
      {
        +[SOSUtilities crashDetectionPhoneWatchFooterDescription];
      }

      else
      {
        +[SOSUtilities crashDetectionPhoneFooterDesription];
      }
      v46 = ;
      [(PSSpecifier *)v45 setProperty:v46 forKey:PSFooterTextGroupKey];

      v47 = +[SOSUtilities crashDetectionSwitchDescription];
      v48 = [PSSpecifier preferenceSpecifierNamed:v47 target:self set:"setCrashDetectionEnabled:forSpecifier:" get:"getCrashDetectionEnabledForSpecifier:" detail:0 cell:6 edit:0];
      kappaSpecifier = self->_kappaSpecifier;
      self->_kappaSpecifier = v48;

      [(PSSpecifier *)self->_kappaSpecifier setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
      v50 = self->_kappaSpecifier;
      v110[0] = self->_kappaGroupSpecifier;
      v110[1] = v50;
      v51 = [NSArray arrayWithObjects:v110 count:2];
      [v5 ps_insertObjectsFromArray:v51 afterObject:self->_alarmSoundSwitch];
    }

    v52 = +[SOSUtilities getKappaThirdPartyApp];

    if (v52)
    {
      v53 = [PSSpecifier groupSpecifierWithID:@"SOS_KAPPA_THIRD_PARTY_TITLE"];
      kappaThirdPartyGroupSpecifier = self->_kappaThirdPartyGroupSpecifier;
      self->_kappaThirdPartyGroupSpecifier = v53;

      v55 = self->_kappaThirdPartyGroupSpecifier;
      v56 = +[SOSUtilities crashDetectionThirdPartyFooterDescription];
      v57 = PSFooterTextGroupKey;
      [(PSSpecifier *)v55 setProperty:v56 forKey:PSFooterTextGroupKey];

      v58 = +[SOSUtilities crashDetectionThirdPartyCellTitle];
      v59 = [PSSpecifier preferenceSpecifierNamed:v58 target:self set:0 get:"getKappaThirdPartyAppNameForSpecifier:" detail:objc_opt_class() cell:2 edit:0];
      kappaThirdPartySpecifier = self->_kappaThirdPartySpecifier;
      self->_kappaThirdPartySpecifier = v59;

      v61 = PSAllowMultilineTitleKey;
      [(PSSpecifier *)self->_kappaThirdPartySpecifier setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
      v62 = v57;
      v63 = self->_kappaThirdPartySpecifier;
      v109[0] = self->_kappaThirdPartyGroupSpecifier;
      v109[1] = v63;
      v64 = [NSArray arrayWithObjects:v109 count:2];
      [v5 ps_insertObjectsFromArray:v64 afterObject:self->_kappaSpecifier];
    }

    else
    {
      v61 = PSAllowMultilineTitleKey;
      v62 = PSFooterTextGroupKey;
    }

    [(PSSpecifier *)self->_triggerAnimationViewCell setProperty:objc_opt_class() forKey:PSCellClassKey];
    [(PSSpecifier *)self->_triggerAnimationViewCell setProperty:&off_21DA8 forKey:PSTableCellHeightKey];
    [(SOSSettingsController *)self initSharingLocationSpecifiers];
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_5D08;
    v106[3] = &unk_20F30;
    v65 = v5;
    v107 = v65;
    v108 = self;
    v95 = objc_retainBlock(v106);
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_5E1C;
    v103[3] = &unk_20F30;
    v66 = v65;
    v104 = v66;
    v105 = self;
    v94 = objc_retainBlock(v103);
    v67 = self->_callWithHoldSpecifier;
    v68 = +[SOSUtilities callWithHoldTitleDescription];
    [(PSSpecifier *)v67 setName:v68];

    [(PSSpecifier *)self->_callWithHoldSpecifier setProperty:&__kCFBooleanTrue forKey:v61];
    v98 = +[SOSUtilities callWithHoldFooterDescription];
    [PSSpecifier setProperty:"setProperty:forKey:" forKey:?];
    v69 = self->_callWithPressesSpecifier;
    +[SOSUtilities callWithPressesTitleDescription];
    v71 = v70 = v62;
    [(PSSpecifier *)v69 setName:v71];

    [(PSSpecifier *)self->_callWithPressesSpecifier setProperty:&__kCFBooleanTrue forKey:v61];
    v99 = +[SOSUtilities callWithPressesFooterDescription];
    [PSSpecifier setProperty:"setProperty:forKey:" forKey:?];
    v96 = +[SOSUtilities phoneTriggerAnimationFooterDescription];
    [PSSpecifier setProperty:"setProperty:forKey:" forKey:?];
    v72 = self->_clicksRadioGroup;
    v73 = +[SOSUtilities pressSelectionGroupTitleDescription];
    [(PSSpecifier *)v72 setName:v73];

    v74 = *p_threeClicksSpecifier;
    v75 = +[SOSUtilities threePressesSelectionTitleDescription];
    [v74 setName:v75];

    [*p_threeClicksSpecifier setProperty:&__kCFBooleanTrue forKey:v61];
    v76 = *p_fiveClicksSpecifier;
    v77 = +[SOSUtilities fivePressesSelectionTitleDescription];
    [v76 setName:v77];

    [*p_fiveClicksSpecifier setProperty:&__kCFBooleanTrue forKey:v61];
    if (+[SOSUtilities supportsSOSWithSideButtonSelectableNumberOfClicks])
    {
      if (+[SOSUtilities currentSOSTriggerMechanism]== &dword_0 + 1)
      {
        v78 = &self->_threeClicksSpecifier;
      }

      else
      {
        v78 = &self->_fiveClicksSpecifier;
      }

      v79 = *v78;
      v80 = v95;
      if (+[SOSUtilities SOSSelectableTriggerMechanismCapability]== &dword_0 + 2)
      {
        v81 = v94;
      }

      else
      {
        v81 = v95;
      }

      (v81[2])();
      v82 = v94;
      [(PSSpecifier *)self->_clicksRadioGroup setProperty:v79 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    else
    {
      v82 = v94;
      (v94[2])(v94);
      v80 = v95;
      (v95[2])(v95);
    }

    sosContacts = self->_sosContacts;
    self->_sosContacts = 0;

    v84 = *&self->PSListController_opaque[v97];
    *&self->PSListController_opaque[v97] = v66;
    v85 = v66;

    [(SOSSettingsController *)self reload];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5F10;
    block[3] = &unk_20E08;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    v86 = self->_alarmSoundSwitch;
    v87 = +[SOSUtilities countdownSoundTitleDescription];
    [(PSSpecifier *)v86 setName:v87];

    v88 = self->_alarmSoundGroup;
    v89 = +[SOSUtilities countdownSoundFooterDescription];
    [(PSSpecifier *)v88 setProperty:v89 forKey:v70];

    [(SOSSettingsController *)self reloadAlarmSoundAnimated:0];
    v90 = self->_openHealthButton;
    v91 = +[SOSUtilities emergencyContactsEditDescription];
    [(PSSpecifier *)v90 setName:v91];

    [(SOSSettingsController *)self reloadEmergencyContactsAnimated:0];
    v92 = [(SOSSettingsController *)self coreTelephonyClient];
    [(SOSSettingsController *)self updateAutoCallSpecifierEnabled:[SOSUtilities shouldForceDisableAutoCallForClient:v92]^ 1];

    [(SOSSettingsController *)self addStewieGroupIfSupportedAnimated:0];
    v4 = *&self->PSListController_opaque[v97];
  }

  return v4;
}

- (void)initSharingLocationSpecifiers
{
  v3 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
  stopSharingGroup = self->_stopSharingGroup;
  self->_stopSharingGroup = v3;

  v5 = PSSpecifierIsSearchableKey;
  [(PSSpecifier *)self->_stopSharingGroup setProperty:&off_21DC0 forKey:PSSpecifierIsSearchableKey];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"STOP_SHARING_EMERGENCY_LOCATION" value:&stru_216E8 table:@"SOSSettings"];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];
  stopSharingButton = self->_stopSharingButton;
  self->_stopSharingButton = v8;

  v10 = self->_stopSharingButton;
  v27[0] = v5;
  v27[1] = PSAlignmentKey;
  v28[0] = &off_21DC0;
  v28[1] = &off_21DD8;
  v11 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
  [(PSSpecifier *)v10 setProperties:v11];

  [(PSSpecifier *)self->_stopSharingButton setButtonAction:"showStopSharingConfirmation:"];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"LAST_LOCATION_SENT" value:&stru_216E8 table:@"SOSSettings"];
  v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:0 edit:0];
  lastLocationSentGroup = self->_lastLocationSentGroup;
  self->_lastLocationSentGroup = v14;

  v16 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  mapViewCell = self->_mapViewCell;
  self->_mapViewCell = v16;

  v18 = self->_mapViewCell;
  v25[0] = PSCellClassKey;
  v19 = objc_opt_class();
  v25[1] = PSTableCellHeightKey;
  v26[0] = v19;
  v26[1] = &off_21DF0;
  v20 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  [(PSSpecifier *)v18 setProperties:v20];

  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"OPEN_MESSAGES" value:&stru_216E8 table:@"SOSSettings"];
  v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:0 get:0 detail:0 cell:13 edit:0, v25[0]];
  openMessagesButton = self->_openMessagesButton;
  self->_openMessagesButton = v23;

  [(PSSpecifier *)self->_openMessagesButton setButtonAction:"openMessages:"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v19 = a3;
  if ([v19 isEqualToString:@"SOSTriggerMechanismKey"] && +[SOSUtilities SOSSelectableTriggerMechanismCapability](SOSUtilities, "SOSSelectableTriggerMechanismCapability") == &dword_0 + 2)
  {
    v7 = +[SOSUtilities currentSOSTriggerMechanism];
    v8 = &OBJC_IVAR___SOSSettingsController__fiveClicksSpecifier;
    if (v7 == &dword_0 + 1)
    {
      v8 = &OBJC_IVAR___SOSSettingsController__threeClicksSpecifier;
    }

    v9 = *&self->PSListController_opaque[*v8];
    [(PSSpecifier *)self->_clicksRadioGroup setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];
    [(SOSSettingsController *)self reloadSpecifier:self->_clicksRadioGroup animated:0];
    callWithPressesSpecifier = self->_callWithPressesSpecifier;
    v11 = +[SOSUtilities callWithPressesTitleDescription];
    [(PSSpecifier *)callWithPressesSpecifier setName:v11];

    [(SOSSettingsController *)self reloadSpecifier:self->_callWithPressesSpecifier animated:0];
    v12 = +[SOSUtilities callWithPressesFooterDescription];
    [(PSSpecifier *)self->_callWithPressesGroupSpecifier setProperty:v12 forKey:PSFooterTextGroupKey];
    [(SOSSettingsController *)self reloadSpecifier:self->_callWithPressesGroupSpecifier animated:0];

    goto LABEL_11;
  }

  if ([v19 isEqualToString:SOSCallWithSideButtonPressesKey])
  {
    v13 = 200;
    callWithHoldSpecifier = self->_callWithPressesSpecifier;
    v15 = [(SOSSettingsController *)self callWithPresses:callWithHoldSpecifier];
LABEL_10:
    v16 = v15;
    [(PSSpecifier *)callWithHoldSpecifier setProperty:v15 forKey:PSValueKey];

    [(SOSSettingsController *)self reloadSpecifier:*&self->PSListController_opaque[v13] animated:0];
    [(SOSSettingsController *)self reloadAlarmSoundAnimated:0];
    goto LABEL_11;
  }

  if ([v19 isEqualToString:SOSCallWithVolumeLockHoldKey])
  {
    v13 = 184;
    callWithHoldSpecifier = self->_callWithHoldSpecifier;
    v15 = [(SOSSettingsController *)self callWithHold:callWithHoldSpecifier];
    goto LABEL_10;
  }

  if ([v19 isEqualToString:SOSPlayAudioDuringCountdownKey])
  {
    alarmSoundSwitch = self->_alarmSoundSwitch;
    v18 = [(SOSSettingsController *)self emergencySOSSoundEnabled:alarmSoundSwitch];
    [(PSSpecifier *)alarmSoundSwitch setProperty:v18 forKey:PSValueKey];

    [(SOSSettingsController *)self reloadSpecifier:self->_alarmSoundSwitch animated:0];
  }

LABEL_11:
}

- (void)reloadEmergencyContactsAnimated:(BOOL)a3
{
  contactsManager = self->_contactsManager;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_65A4;
  v4[3] = &unk_20F80;
  v4[4] = self;
  v5 = a3;
  [(SOSContactsManager *)contactsManager SOSContactsWithTimeout:v4 andCompletion:5.0];
}

- (id)emergencySOSSoundEnabled:(id)a3
{
  v3 = +[SOSUtilities shouldPlayAudioDuringCountdown]^ 1;

  return [NSNumber numberWithInt:v3];
}

- (void)setEmergencySOSSoundEnabled:(id)a3 forSpecifier:(id)a4
{
  v7 = a3;
  if (+[SOSUtilities setShouldPlayAudioDuringCountdown:](SOSUtilities, "setShouldPlayAudioDuringCountdown:", [v7 BOOLValue] ^ 1))
  {
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 BOOLValue] ^ 1);
    [(SOSSettingsController *)self submitSOSNotificationSettingsChangedMetric:@"countdownSound" withValue:v5];
  }

  else
  {
    v5 = self->_alarmSoundSwitch;
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", +[SOSUtilities shouldPlayAudioDuringCountdown]^ 1);
    [(PSSpecifier *)v5 setProperty:v6 forKey:PSValueKey];

    [(SOSSettingsController *)self reloadSpecifier:v5 animated:1];
  }
}

- (void)stopSharingLocation:(id)a3
{
  v3 = +[SOSManager sharedInstance];
  [v3 stopSendingLocationUpdate];
}

- (id)callWithHold:(id)a3
{
  if ((+[SOSUtilities isCallWithVolumeLockHoldEnabled]& 1) != 0)
  {
    v4 = [(SOSSettingsController *)self coreTelephonyClient];
    v5 = [NSNumber numberWithInt:[SOSUtilities shouldForceDisableAutoCallForClient:v4]^ 1];
  }

  else
  {
    v5 = [NSNumber numberWithInt:0];
  }

  return v5;
}

- (void)setCallWithHold:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  +[SOSUtilities setCallWithVolumeLockHoldEnabled:](SOSUtilities, "setCallWithVolumeLockHoldEnabled:", [v5 BOOLValue]);
  [(SOSSettingsController *)self reloadAlarmSoundAnimated:1];
  [(SOSSettingsController *)self submitSOSNotificationSettingsChangedMetric:@"volumeLockHold" withValue:v5];
}

- (id)callWithPresses:(id)a3
{
  if ((+[SOSUtilities isCallWithSideButtonPressesEnabled]& 1) != 0)
  {
    v4 = [(SOSSettingsController *)self coreTelephonyClient];
    v5 = [NSNumber numberWithInt:[SOSUtilities shouldForceDisableAutoCallForClient:v4]^ 1];
  }

  else
  {
    v5 = [NSNumber numberWithInt:0];
  }

  return v5;
}

- (void)setCallWithPresses:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  v6 = [v5 BOOLValue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_7624;
  v8[3] = &unk_20EE8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [SOSUtilities setCallWithSideButtonPresses:v6 presentErrorAlertOnViewController:self completion:v8];
}

- (void)showStopSharingConfirmation:(id)a3
{
  v4 = [PSConfirmationSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
  v12[0] = PSConfirmationTitleKey;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"STOP_SHARING_TITLE" value:&stru_216E8 table:@"SOSSettings"];
  v13[0] = v6;
  v12[1] = PSConfirmationCancelKey;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"STOP_SHARING_CANCEL" value:&stru_216E8 table:@"SOSSettings"];
  v13[1] = v8;
  v12[2] = PSConfirmationOKKey;
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"STOP_SHARING_OK" value:&stru_216E8 table:@"SOSSettings"];
  v13[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  [v4 setupWithDictionary:v11];

  [v4 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [v4 setTarget:self];
  [v4 setConfirmationAction:"stopSharingLocation:"];
  [(SOSSettingsController *)self showConfirmationViewForSpecifier:v4 useAlert:0];
}

- (void)openMessages:(id)a3
{
  v4 = objc_alloc_init(NSURLComponents);
  [v4 setScheme:@"sms"];
  v5 = [(NSMutableArray *)self->_sosContactsNumbers firstObject];

  if (v5)
  {
    [v4 setPath:@"open"];
    v6 = [NSURLQueryItem alloc];
    v7 = [(NSMutableArray *)self->_sosContactsNumbers firstObject];
    v8 = [v6 initWithName:@"addresses" value:v7];

    v12 = v8;
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    [v4 setQueryItems:v9];
  }

  v10 = UIApp;
  v11 = [v4 URL];
  [v10 openURL:v11 withCompletionHandler:0];
}

- (void)openHealthApp:(id)a3
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.Health/MEDICAL_ID_ITEM"];
  [v4 openSensitiveURL:v3 withOptions:0];
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v5 = [(SOSSettingsController *)self coreTelephonyClient:a3];
  [(SOSSettingsController *)self updateAutoCallSpecifierEnabled:[SOSUtilities shouldForceDisableAutoCallForClient:v5]^ 1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = SOSSettingsController;
  v6 = a4;
  v7 = [(SOSSettingsController *)&v14 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(SOSSettingsController *)self specifierAtIndexPath:v6, v14.receiver, v14.super_class];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v8 == self->_stopSharingButton)
  {
    v9 = v7;
    if ([v9 type] == &dword_C + 1)
    {
      v10 = +[UIColor redColor];
      v11 = [v9 textLabel];
      [v11 setTextColor:v10];

      goto LABEL_7;
    }
  }

  v12 = v7;
LABEL_7:

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SOSSettingsController *)self indexForIndexPath:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  }

  v10 = [(SOSSettingsController *)self getGroupSpecifierForSpecifier:v9];
  v11 = [(PSSpecifier *)v10 propertyForKey:PSIsRadioGroupKey];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    if (v10 == self->_clicksRadioGroup)
    {
      v14 = [v9 propertyForKey:PSValueKey];
      +[SOSUtilities setNumberOfSideButtonPresses:](SOSUtilities, "setNumberOfSideButtonPresses:", [v14 intValue]);

      callWithPressesSpecifier = self->_callWithPressesSpecifier;
      v16 = +[SOSUtilities callWithPressesTitleDescription];
      [(PSSpecifier *)callWithPressesSpecifier setName:v16];

      v13 = +[SOSUtilities callWithPressesFooterDescription];
      [(PSSpecifier *)self->_callWithPressesGroupSpecifier setProperty:v13 forKey:PSFooterTextGroupKey];
      [(SOSSettingsController *)self reloadSpecifier:self->_callWithPressesSpecifier];
      [(SOSSettingsController *)self reloadSpecifier:self->_callWithPressesGroupSpecifier];
    }

    else
    {
      v13 = [v9 propertyForKey:PSValueKey];
      [(SOSSettingsController *)self setPreferenceValue:v13 specifier:v10];
    }
  }

  v17.receiver = self;
  v17.super_class = SOSSettingsController;
  [(SOSSettingsController *)&v17 tableView:v6 didSelectRowAtIndexPath:v7];
}

- (void)addStewieGroupIfSupportedAnimated:(BOOL)a3
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8064;
  v4[3] = &unk_20FD0;
  v4[4] = self;
  v5 = a3;
  [(CoreTelephonyClient *)coreTelephonyClient getStewieSupportWithCompletion:v4];
}

- (void)presentStewieTryOutModeIfPossible
{
  if ([(SOSSettingsController *)self _canLaunchDemoFlow])
  {

    [(SOSSettingsController *)self openTrialDialog];
  }

  else
  {
    v3 = [(SOSSettingsController *)self stewieStateMonitor];
    v4 = [v3 getState];

    v5 = [v4 statusReasonForService:2];
    self->_stewieSupported = 0;
    [(SOSSettingsController *)self refreshTipSpecifier:0];
    [(SOSSettingsController *)self removeSpecifier:self->_stewieAnimationGroup];
    [(SOSSettingsController *)self removeSpecifier:self->_stewieAnimationViewCell];
    v6 = sub_8EF4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = CTStewieServiceStatusReasonAsString();
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,presentStewieTryOutModeIfPossible,Demo is not currently available. Reason: %s, state: %@", &v7, 0x16u);
    }

    [SOSUtilities presentStewieDemoUnavailableAlertOnViewController:self reason:v5];
  }
}

- (void)openTrialDialog
{
  if ([(SOSSettingsController *)self _canLaunchDemoFlow])
  {
    v4 = objc_alloc_init(CTStewieRequestContext);
    [v4 setReason:5];
    v3 = [(SOSSettingsController *)self coreTelephonyClient];
    [v3 requestStewieWithContext:v4 completion:&stru_21010];
  }
}

- (BOOL)_canLaunchDemoFlow
{
  v2 = [(SOSSettingsController *)self stewieStateMonitor];
  v3 = [v2 getState];

  LOBYTE(v2) = [v3 isDemoAllowedForService:1];
  return v2;
}

- (void)stateChanged:(id)a3
{
  [(SOSSettingsController *)self refreshTipSpecifier:1];

  [(SOSSettingsController *)self refreshStewieAssetSpecifier:1];
}

- (id)getCrashDetectionEnabledForSpecifier:(id)a3
{
  v3 = +[SOSUtilities kappaTriggersEmergencySOS];

  return [NSNumber numberWithBool:v3];
}

- (void)setCrashDetectionEnabled:(id)a3 forSpecifier:(id)a4
{
  v5 = a3;
  v6 = sub_8EF4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = [v5 BOOLValue];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SOSSettingsController,setCrashDetectionEnabled,Attempting to set crash detection settings as: %d", buf, 8u);
  }

  v7 = [v5 BOOLValue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_889C;
  v9[3] = &unk_20EE8;
  v10 = v5;
  v11 = self;
  v8 = v5;
  [SOSUtilities setKappaTriggersEmergencySOS:v7 confirmationDelegate:self completion:v9];
}

- (void)submitSOSNotificationSettingsChangedMetric:(id)a3 withValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setValue:v7 forKey:@"field"];

  [v9 setValue:v6 forKey:@"value"];
  v8 = [NSNumber numberWithBool:self->_openedViaAccCallNotification];
  [v9 setValue:v8 forKey:@"dueToNotification"];

  AnalyticsSendEvent();
}

- (void)submitSOSNotificationTapMetric
{
  +[SOSUtilities getShortSOSNotificationDisplayTimestamp];
  v3 = v2;
  v7 = objc_alloc_init(NSMutableDictionary);
  if (v3 > 0.0)
  {
    v4 = (CFAbsoluteTimeGetCurrent() - v3);
    if (v4 < 0)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = v4;
    }

    v6 = [NSNumber numberWithInt:v5];
    [v7 setValue:v6 forKey:@"timeTillTap"];
  }

  AnalyticsSendEvent();
}

- (void)tipKitStartObservation
{
  sub_141C4();
  v3 = self;
  sub_141B4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_141D4();
}

- (void)tipKitStopObservation
{
  sub_141C4();
  sub_141B4();
  sub_141D4();
}

- (PSSpecifier)tipKitEntrySpecifier
{
  if (qword_271C0 != -1)
  {
    swift_once();
  }

  v2 = *(qword_271C8 + 16);

  return v2;
}

+ (NSString)tipSpecifierKey
{
  v2 = sub_146C4();

  return v2;
}

- (void)tipKitMakeTipSpecifier
{
  v2 = self;
  sub_BC7C();
}

@end