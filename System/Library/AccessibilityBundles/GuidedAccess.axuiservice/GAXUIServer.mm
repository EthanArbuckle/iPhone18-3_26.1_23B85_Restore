@interface GAXUIServer
- ($9BEB610D0CE1B1EDC3D89DA2464F985F)_rotationContextForInterestAreaViewController:(id)controller;
- (AVSpeechSynthesizer)speechSynthesizer;
- (BOOL)_isTimeRestrictionLockoutViewShowing;
- (BOOL)allowsTouch;
- (BOOL)isFeatureEnabledForIdentifier:(id)identifier;
- (BOOL)isInWorkspace;
- (BOOL)shouldShowCancelButtonForPasscodeViewController:(id)controller;
- (GAXUIServer)init;
- (double)_minimumDelayForShowingAdditionalBannerAlert;
- (double)desiredWindowLevelForAlertWithIdentifier:(id)identifier;
- (double)desiredWindowLevelForContentViewController:(id)controller userInteractionEnabled:(BOOL)enabled;
- (double)statusBarHeight;
- (id)_archiveInterestAreaPathsForStorage:(id)storage;
- (id)_archivedInterestAreaPathsInScreenCoordinatesForInterestAreaViewController:(id)controller;
- (id)_debugGAXDescription;
- (id)_preparedOverlayUserInterfaceViewController;
- (id)_showAlertWithText:(id)text asBanner:(BOOL)banner isUrgent:(BOOL)urgent;
- (id)_showAlertWithText:(id)text subtitleText:(id)subtitleText iconImage:(id)image asBanner:(BOOL)banner isUrgent:(BOOL)urgent duration:(double)duration;
- (id)_unarchivedPathMappingWithData:(id)data;
- (id)_unmanagedASAMRestrictedFeaturesForStyle:(int64_t)style;
- (id)_unmanagedASAMRestrictionDictionaryForStyle:(int64_t)style;
- (id)detailTextForAppRestrictionWithIdentifier:(id)identifier;
- (id)iconForAppRestrictionWithIdentifier:(id)identifier;
- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (id)styleProviderForAlertWithIdentifier:(id)identifier;
- (id)textForAppRestrictionWithIdentifier:(id)identifier;
- (int64_t)activeInterfaceOrientationForPasscodeViewController:(id)controller;
- (int64_t)appRestrictionStateForIdentifier:(id)identifier;
- (void)_adjustContentsGeometryOfInterestAreaViewWithController:(id)controller;
- (void)_applyInterestAreaPathsForStorage:(id)storage toInterestAreaViewController:(id)controller andFadeInterestAreaPathsIn:(BOOL)in fadeInterestAreaSpecialControlsIn:(BOOL)controlsIn notifyClientOfReplacedInterestAreaPathsDuringSession:(BOOL)session;
- (void)_changeUnmanagedASAMRestrictionStateEnabled:(BOOL)enabled style:(int64_t)style managedConfigurationSettings:(id)settings;
- (void)_clearPasscodeDismissalTimer;
- (void)_confirmUnmanagedASAMWithApplicationDisplayName:(id)name completion:(id)completion;
- (void)_disableTelephonyIfNeededForMode:(unsigned int)mode;
- (void)_dismissPasscodeViewAnimated:(BOOL)animated withReason:(int64_t)reason;
- (void)_displayBlockedIncomingCallWithSourceAddress:(id)address serviceIdentifier:(id)identifier;
- (void)_interestAreaViewControllerInterfaceOrientationDidUpdate:(int64_t)update;
- (void)_notifyClientOfUpdatedActiveInterfaceOrientation;
- (void)_playPreferredTimeRestrictionsSoundAndSpeakMessageIfNeeded:(id)needed;
- (void)_presentPasscodeViewControllerForSetup:(BOOL)setup passcodeLength:(unint64_t)length;
- (void)_presentPasscodeViewControllerForUnlock;
- (void)_reestablishSpringboardClient;
- (void)_restoreTelephony;
- (void)_rotateDeviceToCurrentOrientation;
- (void)_setupOverrides;
- (void)_showAlertWithType:(int)type AsBanner:(BOOL)banner isUrgent:(BOOL)urgent timeRestrictionRemainingTime:(id)time remainingLockoutDuration:(double)duration effectiveApplicationDisplayName:(id)name;
- (void)_showTimeRestrictionsLockoutViewWithAppTimeRestrictionDuration:(double)duration;
- (void)_validateOverrides;
- (void)alertWithIdentifierDidAppear:(id)appear;
- (void)alertWithIdentifierDidDisappear:(id)disappear;
- (void)applyUnmanagedASAMRestrictionsForStyle:(int64_t)style managedConfigurationSettings:(id)settings;
- (void)archiveInterestAreaPathsForStorageInterestAreaViewController:(id)controller;
- (void)biometricManager:(id)manager attemptWasSuccessful:(BOOL)successful;
- (void)dealloc;
- (void)getContainedViewsInFrontmostApplicationForFingerPath:(id)path completion:(id)completion;
- (void)getPasscodeLengthWithCompletion:(id)completion;
- (void)interestAreaViewController:(id)controller didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)interestAreaViewController:(id)controller willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)passcodeViewController:(id)controller didFinishSettingUpPasscode:(id)passcode;
- (void)passcodeViewController:(id)controller isPasscode:(id)passcode correctWithCompletionHandler:(id)handler;
- (void)passcodeViewController:(id)controller passcodeViewIsVisible:(BOOL)visible;
- (void)passcodeViewController:(id)controller wasDismissedWithReason:(int64_t)reason;
- (void)processInitializationMessage:(id)message;
- (void)processMessageAsynchronously:(id)asynchronously withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier completion:(id)completion;
- (void)removeUnmanagedASAMRestrictions;
- (void)setActiveContentViewController:(id)controller;
- (void)setAppRestrictionIdentifiers:(id)identifiers;
- (void)setAppRestrictionState:(int64_t)state withIdentifier:(id)identifier;
- (void)setDetailTextsForAppRestrictions:(id)restrictions;
- (void)setFeatureEnabled:(BOOL)enabled withIdentifier:(id)identifier;
- (void)setOverlayActiveContentViewController:(id)controller;
- (void)setPassiveInterestAreaViewController:(id)controller;
- (void)setShouldHideAllAlerts:(BOOL)alerts;
- (void)setStatesForAppRestrictions:(id)restrictions;
- (void)setTextsForAppRestrictions:(id)restrictions;
- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance;
- (void)transitionToMode:(unsigned int)mode;
- (void)updateHostedApplicationStateWithScaleFactor:(double)factor center:(CGPoint)center animationDuration:(double)duration;
- (void)updateTimeRestrictionWithDuration:(int64_t)duration enabled:(BOOL)enabled;
@end

@implementation GAXUIServer

- (GAXUIServer)init
{
  v12.receiver = self;
  v12.super_class = GAXUIServer;
  v2 = [(GAXUIServer *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("GAXStateAccessQueue", 0);
    gaxStateAccessQueue = v2->_gaxStateAccessQueue;
    v2->_gaxStateAccessQueue = v3;

    v5 = +[AXUIDisplayManager sharedDisplayManager];
    [v5 addObserver:v2 forKeyPath:@"activeInterfaceOrientation" options:0 context:0];

    v6 = [[AXAccessQueue alloc] initWithParentClass:objc_opt_class() description:@"SpringboardMessageQueue" appendUUIDToLabel:0];
    [(GAXUIServer *)v2 setSpringboardMessageQueue:v6];
    [(GAXUIServer *)v2 _reestablishSpringboardClient];
    [(GAXUIServer *)v2 _validateOverrides];
    [(GAXUIServer *)v2 _setupOverrides];
    v7 = objc_opt_new();
    [(GAXUIServer *)v2 setStyleProvider:v7];
    v8 = dispatch_queue_create("com.apple.accessibility.GuidedAccess.MC", 0);
    managedConfigurationQueue = v2->_managedConfigurationQueue;
    v2->_managedConfigurationQueue = v8;

    v10 = objc_alloc_init(GAXBiometricManager);
    [(GAXUIServer *)v2 setBiometricManager:v10];
    [(GAXBiometricManager *)v10 setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[AXUIDisplayManager sharedDisplayManager];
  [v3 removeObserver:self forKeyPath:@"activeInterfaceOrientation" context:0];

  springboardClient = [(GAXUIServer *)self springboardClient];
  [springboardClient setPortDeathHandler:0];
  v9 = 0;
  v5 = [springboardClient disconnectWithError:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    v7 = GAXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_335F0();
    }
  }

  [(GAXUIServer *)self setActiveContentViewController:0];
  [(GAXUIServer *)self setOverlayActiveContentViewController:0];
  [(GAXUIServer *)self setPassiveInterestAreaViewController:0];
  [(GAXUIServer *)self setAppRestrictionIdentifiers:0];
  [(GAXUIServer *)self setStatesForAppRestrictions:0];
  [(GAXUIServer *)self setTextsForAppRestrictions:0];
  [(GAXUIServer *)self setDetailTextsForAppRestrictions:0];
  [(GAXUIServer *)self _clearPasscodeDismissalTimer];

  v8.receiver = self;
  v8.super_class = GAXUIServer;
  [(GAXUIServer *)&v8 dealloc];
}

- (BOOL)allowsTouch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2214;
  v5[3] = &unk_5CB00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isInWorkspace
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_22D8;
  v5[3] = &unk_5CB00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(gaxStateAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)updateHostedApplicationStateWithScaleFactor:(double)factor center:(CGPoint)center animationDuration:(double)duration
{
  y = center.y;
  x = center.x;
  v10 = [NSDictionary alloc];
  v11 = [NSNumber numberWithDouble:duration];
  v12 = [NSNumber numberWithDouble:factor];
  v17.x = x;
  v17.y = y;
  v13 = NSStringFromCGPoint(v17);
  v15 = [v10 initWithObjectsAndKeys:{v11, @"animation duration", v12, @"hosted application scale factor", v13, @"hosted application center", 0}];

  _clientMessenger = [(GAXUIServer *)self _clientMessenger];
  [_clientMessenger sendAsynchronousMessage:v15 withIdentifier:31 targetAccessQueue:0 completion:0];
}

- (void)getContainedViewsInFrontmostApplicationForFingerPath:(id)path completion:(id)completion
{
  completionCopy = completion;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:path requiringSecureCoding:1 error:0];
  v8 = [[NSDictionary alloc] initWithObjectsAndKeys:{v7, @"finger path", 0}];
  _clientMessenger = [(GAXUIServer *)self _clientMessenger];
  v10 = +[AXAccessQueue mainAccessQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2560;
  v12[3] = &unk_5CB28;
  v13 = completionCopy;
  v11 = completionCopy;
  [_clientMessenger sendAsynchronousMessage:v8 withIdentifier:22 targetAccessQueue:v10 completion:v12];
}

- (void)transitionToMode:(unsigned int)mode
{
  v6 = [NSNumber numberWithUnsignedInteger:mode];
  v4 = [[NSDictionary alloc] initWithObjectsAndKeys:{v6, @"server mode", 0}];
  _clientMessenger = [(GAXUIServer *)self _clientMessenger];
  [_clientMessenger sendAsynchronousMessage:v4 withIdentifier:23 targetAccessQueue:0 completion:0];
}

- (void)setFeatureEnabled:(BOOL)enabled withIdentifier:(id)identifier
{
  enabledCopy = enabled;
  identifierCopy = identifier;
  v7 = [NSDictionary alloc];
  v8 = [NSNumber numberWithBool:enabledCopy];
  v10 = [v7 initWithObjectsAndKeys:{v8, @"system feature is enabled", identifierCopy, @"system feature identifier", 0}];

  _clientMessenger = [(GAXUIServer *)self _clientMessenger];
  [_clientMessenger sendAsynchronousMessage:v10 withIdentifier:24 targetAccessQueue:0 completion:0];
}

- (void)updateTimeRestrictionWithDuration:(int64_t)duration enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _clientMessenger = [(GAXUIServer *)self _clientMessenger];
  v11[0] = @"time restriction duration";
  v8 = [NSNumber numberWithInteger:duration];
  v12[0] = v8;
  v11[1] = @"time restrictions enabled";
  v9 = [NSNumber numberWithBool:enabledCopy];
  v12[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  [_clientMessenger sendAsynchronousMessage:v10 withIdentifier:25 targetAccessQueue:0 completion:0];

  [(GAXUIServer *)self setAppTimeRestrictionsEnabled:enabledCopy];
  [(GAXUIServer *)self setAppTimeRestrictionDurationInMinutes:duration];
}

- (void)_validateOverrides
{
  v3 = +[AXValidationManager sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2AB4;
  v4[3] = &unk_5CB90;
  v4[4] = self;
  [v3 performValidations:&stru_5CB68 withPreValidationHandler:v4 postValidationHandler:0];
}

- (void)_setupOverrides
{
  if (qword_6D960 != -1)
  {
    sub_33660();
  }
}

- (double)statusBarHeight
{
  activeContentViewController = [(GAXUIServer *)self activeContentViewController];
  objc_opt_class();
  v3 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [activeContentViewController statusBarHeight];
    v3 = v4;
  }

  return v3;
}

- (void)setActiveContentViewController:(id)controller
{
  controllerCopy = controller;
  p_activeContentViewController = &self->_activeContentViewController;
  if (self->_activeContentViewController != controllerCopy)
  {
    v9 = controllerCopy;
    v7 = +[AXUIDisplayManager sharedDisplayManager];
    v8 = v7;
    if (*p_activeContentViewController)
    {
      [v7 removeContentViewController:*p_activeContentViewController withUserInteractionEnabled:1 forService:self context:0 completion:0];
    }

    objc_storeStrong(&self->_activeContentViewController, controller);
    if (v9)
    {
      [v8 addContentViewController:v9 withUserInteractionEnabled:1 forService:self context:0 completion:0];
    }

    controllerCopy = v9;
  }
}

- (void)setOverlayActiveContentViewController:(id)controller
{
  controllerCopy = controller;
  p_overlayActiveContentViewController = &self->_overlayActiveContentViewController;
  if (self->_overlayActiveContentViewController != controllerCopy)
  {
    v7 = +[AXUIDisplayManager sharedDisplayManager];
    v8 = v7;
    v9 = *p_overlayActiveContentViewController;
    if (*p_overlayActiveContentViewController)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_2E08;
      v12[3] = &unk_5CC18;
      v12[4] = self;
      [v7 removeContentViewController:v9 withUserInteractionEnabled:1 forService:self context:0 completion:v12];
      overlayActiveContentViewController = self->_overlayActiveContentViewController;
    }

    else
    {
      overlayActiveContentViewController = 0;
    }

    [(GAXOverlayUserInterfaceViewController *)overlayActiveContentViewController setDelegate:0];
    objc_storeStrong(&self->_overlayActiveContentViewController, controller);
    [(GAXOverlayUserInterfaceViewController *)self->_overlayActiveContentViewController setDelegate:self];
    if (controllerCopy)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_2E14;
      v11[3] = &unk_5CC18;
      v11[4] = self;
      [v8 addContentViewController:controllerCopy withUserInteractionEnabled:1 forService:self context:0 completion:v11];
    }
  }
}

- (void)setPassiveInterestAreaViewController:(id)controller
{
  controllerCopy = controller;
  p_passiveInterestAreaViewController = &self->_passiveInterestAreaViewController;
  if (self->_passiveInterestAreaViewController != controllerCopy)
  {
    v10 = controllerCopy;
    v7 = +[AXUIDisplayManager sharedDisplayManager];
    v8 = v7;
    if (*p_passiveInterestAreaViewController)
    {
      [v7 removeContentViewController:*p_passiveInterestAreaViewController withUserInteractionEnabled:0 forService:self context:0 completion:0];
      passiveInterestAreaViewController = self->_passiveInterestAreaViewController;
    }

    else
    {
      passiveInterestAreaViewController = 0;
    }

    [(GAXInterestAreaViewController *)passiveInterestAreaViewController setDelegate:0];
    objc_storeStrong(&self->_passiveInterestAreaViewController, controller);
    [(GAXInterestAreaViewController *)self->_passiveInterestAreaViewController setDelegate:self];
    if (v10)
    {
      [v8 addContentViewController:v10 withUserInteractionEnabled:0 forService:self context:0 completion:0];
    }

    controllerCopy = v10;
  }
}

- (AVSpeechSynthesizer)speechSynthesizer
{
  speechSynthesizer = self->_speechSynthesizer;
  if (!speechSynthesizer)
  {
    v4 = objc_alloc_init(AVSpeechSynthesizer);
    v5 = self->_speechSynthesizer;
    self->_speechSynthesizer = v4;

    [(AVSpeechSynthesizer *)self->_speechSynthesizer setUsesApplicationAudioSession:0];
    [(AVSpeechSynthesizer *)self->_speechSynthesizer setDelegate:self];
    speechSynthesizer = self->_speechSynthesizer;
  }

  return speechSynthesizer;
}

- (void)setShouldHideAllAlerts:(BOOL)alerts
{
  if (self->_shouldHideAllAlerts != alerts)
  {
    self->_shouldHideAllAlerts = alerts;
    if (alerts)
    {
      v4 = +[AXUIDisplayManager sharedDisplayManager];
      identifiersOfVisibleBannerAlerts = [(GAXUIServer *)self identifiersOfVisibleBannerAlerts];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [identifiersOfVisibleBannerAlerts countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(identifiersOfVisibleBannerAlerts);
            }

            [v4 hideAlertWithIdentifier:*(*(&v11 + 1) + 8 * v9) forService:self];
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [identifiersOfVisibleBannerAlerts countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }

      identifierOfVisibleRegularAlert = [(GAXUIServer *)self identifierOfVisibleRegularAlert];
      if (identifierOfVisibleRegularAlert)
      {
        [v4 hideAlertWithIdentifier:identifierOfVisibleRegularAlert forService:self];
      }

      [(GAXUIServer *)self setIdentifiersOfVisibleBannerAlerts:0];
      [(GAXUIServer *)self setIdentifierOfVisibleRegularAlert:0];
      [(GAXUIServer *)self setIdentifiersOfBannerAlertsAboutToAppear:0];
      [(GAXUIServer *)self setIncomingCallAlertIdentifier:0];
      [(GAXUIServer *)self setLockoutAlertIdentifier:0];
      [(GAXUIServer *)self setIncomingCallType:0];
    }
  }
}

- (double)_minimumDelayForShowingAdditionalBannerAlert
{
  numberOfBannerAlertsShownRecently = [(GAXUIServer *)self numberOfBannerAlertsShownRecently];
  result = 30.0;
  if (numberOfBannerAlertsShownRecently < 9)
  {
    result = 10.0;
  }

  if (numberOfBannerAlertsShownRecently < 6)
  {
    return 3.0;
  }

  return result;
}

- (void)_showAlertWithType:(int)type AsBanner:(BOOL)banner isUrgent:(BOOL)urgent timeRestrictionRemainingTime:(id)time remainingLockoutDuration:(double)duration effectiveApplicationDisplayName:(id)name
{
  urgentCopy = urgent;
  bannerCopy = banner;
  timeCopy = time;
  nameCopy = name;
  if (![(GAXUIServer *)self _isTimeRestrictionLockoutViewShowing])
  {
    if (!nameCopy)
    {
      if ((type - 5) <= 2)
      {
        v16 = GAXLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_33674();
        }
      }

      nameCopy = GAXLocString(@"APP_SELF_LOCK_UNKNOWN_APP_NAME");
    }

    v17 = 0.0;
    switch(type)
    {
      case 0:
        lastPasscodeViewDismissalReason = [(GAXUIServer *)self lastPasscodeViewDismissalReason];
        v19 = @"USER_LOCKED_OUT_VIA_CANCEL";
        if (lastPasscodeViewDismissalReason == 1)
        {
          v19 = @"USER_LOCKED_OUT_VIA_FAIL";
        }

        v20 = timeCopy;
        v21 = v19;
        v22 = [NSNumber numberWithUnsignedInteger:duration];
        GAXLocString(v21);
        v24 = v23 = urgentCopy;

        v25 = GAXLocalizedNumber(v22);
        nameCopy = [NSString stringWithFormat:v24, v25];

        timeCopy = v20;
        urgentCopy = v23;
        goto LABEL_26;
      case 1:
        v29 = +[AXSettings sharedInstance];
        guidedAccessAllowsUnlockWithTouchID = [v29 guidedAccessAllowsUnlockWithTouchID];

        if (guidedAccessAllowsUnlockWithTouchID)
        {
          if (AXDeviceHasPearl())
          {
            v28 = 1;
            v31 = AXLocStringKeyForExclusiveModel();
            nameCopy = GAXLocString(v31);
          }

          else
          {
            v27 = @"SESSION_RUNNING_NOTE_WITH_TOUCH_ID";
LABEL_32:
            nameCopy = GAXLocString(v27);
LABEL_33:
            v28 = 1;
          }
        }

        else
        {
          v28 = 1;
          v36 = AXLocStringKeyForHomeButtonAndExclusiveModel();
          nameCopy = GAXLocString(v36);
        }

LABEL_34:
        if (timeCopy)
        {
          v51 = v28;
          typeCopy = type;
          v38 = nameCopy;
          selfCopy = self;
          v40 = bannerCopy;
          [timeCopy floatValue];
          v42 = GAXLocalizedStringForTimeDuration(v41);
          if ([v42 length])
          {
            v43 = timeCopy;
            v44 = urgentCopy;
          }

          else
          {
            v44 = urgentCopy;
            v43 = timeCopy;
            [timeCopy floatValue];
            v46 = GAXLocalizedStringForTimeDuration(v45);

            v42 = v46;
          }

          v47 = GAXLocString(@"TIME_RESTRICTION_APP_TIME_REMAINING_TOP_BANNER");
          v48 = [NSString stringWithFormat:v47, v42];

          v49 = [(__CFString *)nameCopy stringByAppendingFormat:@"\n%@", v48];

          nameCopy = v49;
          urgentCopy = v44;
          bannerCopy = v40;
          timeCopy = v43;
          self = selfCopy;
          nameCopy = v38;
          type = typeCopy;
          v28 = v51;
        }

        if (v28)
        {
          [(GAXUIServer *)self _showAlertWithText:nameCopy asBanner:bannerCopy isUrgent:urgentCopy];
        }

        else
        {
          [(GAXUIServer *)self _showAlertWithText:nameCopy subtitleText:0 iconImage:0 asBanner:bannerCopy isUrgent:urgentCopy duration:v17];
        }
        v50 = ;
        if (type)
        {
          if (type == 3)
          {
            [(GAXUIServer *)self _playPreferredTimeRestrictionsSoundAndSpeakMessageIfNeeded:nameCopy];
          }
        }

        else
        {
          [(GAXUIServer *)self setLockoutAlertIdentifier:v50];
        }

        break;
      case 2:
        nameCopy = GAXLocString(@"SESSION_ENDED");
        v28 = 0;
        v17 = 2.1;
        goto LABEL_34;
      case 3:
        v28 = 1;
        nameCopy = &stru_5E950;
        goto LABEL_34;
      case 4:
        if (AXDeviceHasPearl())
        {
          v27 = @"FACE_ID_FAILED_NOTE";
        }

        else
        {
          v27 = @"TOUCH_ID_FAILED_NOTE";
        }

        goto LABEL_32;
      case 5:
        v22 = AXLocStringKeyForModel();
        GAXLocString(v22);
        v33 = v32 = timeCopy;
        GAXLocalizedStringForTimeDuration(28800.0);
        v35 = v34 = urgentCopy;
        nameCopy = [NSString stringWithFormat:v33, nameCopy, v35];

        urgentCopy = v34;
        goto LABEL_25;
      case 6:
      case 7:
        v22 = AXLocStringKeyForModel();
        GAXLocString(v22);
        v33 = v32 = timeCopy;
        nameCopy = [NSString stringWithFormat:v33, nameCopy];
LABEL_25:

        timeCopy = v32;
LABEL_26:

        goto LABEL_33;
      case 8:
        v27 = @"APP_SELF_LOCK_UNAVAILABLE";
        goto LABEL_32;
      case 9:
        v27 = @"APP_SELF_LOCK_UNAVAILABLE_NO_APP";
        goto LABEL_32;
      case 10:
        v27 = @"APP_SELF_LOCK_UNAVAILABLE_IN_SETTINGS";
        goto LABEL_32;
      case 11:
        v27 = @"APP_SELF_LOCK_UNAVAILABLE_MULTIPLE_APPS";
        goto LABEL_32;
      case 12:
        v27 = @"APP_SELF_LOCK_UNAVAILABLE_DEVICE_LOCKED";
        goto LABEL_32;
      default:
        nameCopy = 0;
        goto LABEL_33;
    }
  }
}

- (id)_showAlertWithText:(id)text asBanner:(BOOL)banner isUrgent:(BOOL)urgent
{
  v5 = &AXUIAlertDisplayTimeDefaultForBanners;
  if (!banner)
  {
    v5 = &AXUIAlertDisplayTimeDefaultForAlerts;
  }

  return [(GAXUIServer *)self _showAlertWithText:text subtitleText:0 iconImage:0 asBanner:banner isUrgent:urgent duration:*v5];
}

- (id)_showAlertWithText:(id)text subtitleText:(id)subtitleText iconImage:(id)image asBanner:(BOOL)banner isUrgent:(BOOL)urgent duration:(double)duration
{
  bannerCopy = banner;
  textCopy = text;
  subtitleTextCopy = subtitleText;
  imageCopy = image;
  if ([(GAXUIServer *)self shouldHideAllAlerts])
  {
    goto LABEL_3;
  }

  deviceRestrictedAlertIdentifier = [(GAXUIServer *)self deviceRestrictedAlertIdentifier];

  if (deviceRestrictedAlertIdentifier)
  {
    goto LABEL_3;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v21 = v20;
  if (bannerCopy)
  {
    if (!urgent)
    {
      [(GAXUIServer *)self lastBannerAlertShownTimeInterval];
      v23 = v21 - v22;
      [(GAXUIServer *)self _minimumDelayForShowingAdditionalBannerAlert];
      if (v23 <= v24)
      {
LABEL_3:
        v18 = 0;
        goto LABEL_4;
      }
    }

    v25 = 2;
  }

  else
  {
    identifierOfVisibleRegularAlert = [(GAXUIServer *)self identifierOfVisibleRegularAlert];
    if (identifierOfVisibleRegularAlert)
    {
      identifiersOfVisibleBannerAlerts = identifierOfVisibleRegularAlert;
      v18 = 0;
      goto LABEL_22;
    }

    v25 = 0;
  }

  v28 = +[AXUIDisplayManager sharedDisplayManager];
  v18 = [v28 showAlertWithText:textCopy subtitleText:subtitleTextCopy iconImage:imageCopy type:v25 priority:20 duration:self forService:duration];

  if (!v18)
  {
    goto LABEL_4;
  }

  identifiersOfVisibleBannerAlerts = [(GAXUIServer *)self identifiersOfVisibleBannerAlerts];
  if (!identifiersOfVisibleBannerAlerts)
  {
    identifiersOfVisibleBannerAlerts = objc_opt_new();
    [(GAXUIServer *)self setIdentifiersOfVisibleBannerAlerts:identifiersOfVisibleBannerAlerts];
  }

  [identifiersOfVisibleBannerAlerts addObject:v18];
  if (bannerCopy)
  {
    [(GAXUIServer *)self setLastBannerAlertShownTimeInterval:v21];
    identifiersOfBannerAlertsAboutToAppear = [(GAXUIServer *)self identifiersOfBannerAlertsAboutToAppear];
    if (!identifiersOfBannerAlertsAboutToAppear)
    {
      identifiersOfBannerAlertsAboutToAppear = objc_opt_new();
      [(GAXUIServer *)self setIdentifiersOfBannerAlertsAboutToAppear:identifiersOfBannerAlertsAboutToAppear];
    }

    [identifiersOfBannerAlertsAboutToAppear addObject:v18];
  }

  else
  {
    [(GAXUIServer *)self setIdentifierOfVisibleRegularAlert:v18];
  }

LABEL_22:

LABEL_4:

  return v18;
}

- (void)setAppRestrictionIdentifiers:(id)identifiers
{
  if (self->_appRestrictionIdentifiers != identifiers)
  {
    identifiersCopy = identifiers;
    v6 = [[NSArray alloc] initWithArray:identifiersCopy copyItems:1];

    appRestrictionIdentifiers = self->_appRestrictionIdentifiers;
    self->_appRestrictionIdentifiers = v6;
  }
}

- (void)setStatesForAppRestrictions:(id)restrictions
{
  if (self->_statesForAppRestrictions != restrictions)
  {
    restrictionsCopy = restrictions;
    v6 = [[NSDictionary alloc] initWithDictionary:restrictionsCopy copyItems:1];

    statesForAppRestrictions = self->_statesForAppRestrictions;
    self->_statesForAppRestrictions = v6;
  }
}

- (void)setTextsForAppRestrictions:(id)restrictions
{
  if (self->_textsForAppRestrictions != restrictions)
  {
    restrictionsCopy = restrictions;
    v6 = [[NSDictionary alloc] initWithDictionary:restrictionsCopy copyItems:1];

    textsForAppRestrictions = self->_textsForAppRestrictions;
    self->_textsForAppRestrictions = v6;
  }
}

- (void)setDetailTextsForAppRestrictions:(id)restrictions
{
  if (self->_detailTextsForAppRestrictions != restrictions)
  {
    restrictionsCopy = restrictions;
    v6 = [[NSDictionary alloc] initWithDictionary:restrictionsCopy copyItems:1];

    detailTextsForAppRestrictions = self->_detailTextsForAppRestrictions;
    self->_detailTextsForAppRestrictions = v6;
  }
}

- (int64_t)appRestrictionStateForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  statesForAppRestrictions = [(GAXUIServer *)self statesForAppRestrictions];
  v6 = [statesForAppRestrictions objectForKey:identifierCopy];

  integerValue = [v6 integerValue];
  return integerValue;
}

- (void)setAppRestrictionState:(int64_t)state withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  statesForAppRestrictions = [(GAXUIServer *)self statesForAppRestrictions];
  v7 = [statesForAppRestrictions mutableCopy];
  v8 = [NSNumber numberWithInteger:state];
  [v7 setObject:v8 forKey:identifierCopy];

  [(GAXUIServer *)self setStatesForAppRestrictions:v7];
}

- (id)iconForAppRestrictionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  styleProvider = [(GAXUIServer *)self styleProvider];
  v6 = self->_appIcon;
  v7 = [identifierCopy isEqualToString:@"GAXProfileAllowsWebTextDefine"];

  if (v7)
  {
    appFeatureViewDefineIcon = [styleProvider appFeatureViewDefineIcon];

    v6 = appFeatureViewDefineIcon;
  }

  return v6;
}

- (id)textForAppRestrictionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  textsForAppRestrictions = [(GAXUIServer *)self textsForAppRestrictions];
  v6 = [textsForAppRestrictions objectForKey:identifierCopy];

  return v6;
}

- (id)detailTextForAppRestrictionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  detailTextsForAppRestrictions = [(GAXUIServer *)self detailTextsForAppRestrictions];
  v6 = [detailTextsForAppRestrictions objectForKey:identifierCopy];

  return v6;
}

- (BOOL)isFeatureEnabledForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0;
  v11 = &v10;
  v12 = 0x4010000000;
  v13 = &unk_545BF;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3FBC;
  block[3] = &unk_5CB00;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(gaxStateAccessQueue, block);
  if ([identifierCopy isEqualToString:@"GAXProfileAllowsKeyboardTextInput"])
  {
    v6 = 0x40000;
  }

  else if ([identifierCopy isEqualToString:@"GAXProfileAllowsTouch"])
  {
    v6 = 1024;
  }

  else if ([identifierCopy isEqualToString:@"GAXProfileAllowsMotion"])
  {
    v6 = 0x10000;
  }

  else if ([identifierCopy isEqualToString:@"GAXProfileAllowsRingerSwitch"])
  {
    v6 = 0x8000;
  }

  else if ([identifierCopy isEqualToString:@"GAXProfileAllowsProximity"])
  {
    v6 = 0x80000;
  }

  else if ([identifierCopy isEqualToString:@"GAXProfileAllowsLockButton"])
  {
    v6 = 2048;
  }

  else if ([identifierCopy isEqualToString:@"GAXProfileAllowsVolumeButtons"])
  {
    v6 = 0x4000;
  }

  else
  {
    if (([identifierCopy isEqualToString:@"GAXProfileAllowsAutolock"] & 1) == 0)
    {
      _AXAssert();
      v7 = 0;
      goto LABEL_18;
    }

    v6 = 0x20000;
  }

  v7 = (v11[7] & v6) != 0;
LABEL_18:
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)_presentPasscodeViewControllerForUnlock
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_4044;
  v2[3] = &unk_5CC40;
  v2[4] = self;
  [(GAXUIServer *)self getPasscodeLengthWithCompletion:v2];
}

- (void)_presentPasscodeViewControllerForSetup:(BOOL)setup passcodeLength:(unint64_t)length
{
  setupCopy = setup;
  [(GAXUIServer *)self setShouldHideAllAlerts:1];
  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom] == &dword_0 + 1;

  _preparedOverlayUserInterfaceViewController = [(GAXUIServer *)self _preparedOverlayUserInterfaceViewController];
  v9 = [[AXUIPasscodeViewController alloc] initWithPresentationStyle:v8 forSetup:setupCopy pinLength:length];
  [v9 setDelegate:self];
  [_preparedOverlayUserInterfaceViewController willPresentModalViewController];
  [v9 presentPasscodeViewWithParentViewController:_preparedOverlayUserInterfaceViewController animated:1];
  [(GAXUIServer *)self setPasscodeViewController:v9];
  if (!setupCopy)
  {
    [(GAXUIServer *)self _clearPasscodeDismissalTimer];
    v10 = [NSTimer scheduledTimerWithTimeInterval:self target:"_timerDismissPasscode:" selector:0 userInfo:0 repeats:15.0];
    [(GAXUIServer *)self setPasscodeDismissalTimer:v10];
  }
}

- (void)_dismissPasscodeViewAnimated:(BOOL)animated withReason:(int64_t)reason
{
  animatedCopy = animated;
  passcodeViewController = [(GAXUIServer *)self passcodeViewController];
  [passcodeViewController dismissPasscodeViewAnimated:animatedCopy reason:reason];
}

- (void)_clearPasscodeDismissalTimer
{
  passcodeDismissalTimer = [(GAXUIServer *)self passcodeDismissalTimer];
  [passcodeDismissalTimer invalidate];

  [(GAXUIServer *)self setPasscodeDismissalTimer:0];
}

- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance
{
  utteranceCopy = utterance;
  v5 = GAXLogTimeRestrictions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138477827;
    v7 = utteranceCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Finished speaking: %{private}@", &v6, 0xCu);
  }
}

- (void)_playPreferredTimeRestrictionsSoundAndSpeakMessageIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = +[AXSettings sharedInstance];
  v6 = [[TLAlertConfiguration alloc] initWithType:2];
  guidedAccessToneIdentifierForTimeRestrictionEvents = [v5 guidedAccessToneIdentifierForTimeRestrictionEvents];
  [v6 setToneIdentifier:guidedAccessToneIdentifierForTimeRestrictionEvents];

  [v6 setVibrationIdentifier:TLVibrationIdentifierNone];
  [v6 setShouldIgnoreRingerSwitch:1];
  v8 = [TLAlert alertWithConfiguration:v6];
  [v8 playWithCompletionHandler:0];
  v9 = GAXLogTimeRestrictions();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109379;
    v13[1] = [v5 guidedAccessShouldSpeakForTimeRestrictionEvents];
    v14 = 2113;
    v15 = neededCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Will speak: %d, %{private}@", v13, 0x12u);
  }

  if ([v5 guidedAccessShouldSpeakForTimeRestrictionEvents])
  {
    v10 = [AVSpeechUtterance speechUtteranceWithString:neededCopy];
    *&v11 = AVSpeechUtteranceDefaultSpeechRate;
    [v10 setRate:v11];
    speechSynthesizer = [(GAXUIServer *)self speechSynthesizer];
    [speechSynthesizer speakUtterance:v10];
  }
}

- (void)_showTimeRestrictionsLockoutViewWithAppTimeRestrictionDuration:(double)duration
{
  activeContentViewController = [(GAXUIServer *)self activeContentViewController];
  if (!activeContentViewController || (v6 = activeContentViewController, [(GAXUIServer *)self activeContentViewController], v7 = objc_claimAutoreleasedReturnValue(), [(GAXUIServer *)self timeRestrictionLockoutViewController], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v7 != v8))
  {
    v9 = GAXLocString(@"GAX_TIME_RESTRICTION_DID_EXPIRE_SPEECH_STRIMG");
    [(GAXUIServer *)self _playPreferredTimeRestrictionsSoundAndSpeakMessageIfNeeded:v9];

    timeRestrictionLockoutViewController = [(GAXUIServer *)self timeRestrictionLockoutViewController];

    if (!timeRestrictionLockoutViewController)
    {
      v11 = [[GAXTimeRestrictionLockoutViewController alloc] initWithUIServer:self];
      [(GAXUIServer *)self setTimeRestrictionLockoutViewController:v11];
    }

    timeRestrictionLockoutViewController2 = [(GAXUIServer *)self timeRestrictionLockoutViewController];
    [timeRestrictionLockoutViewController2 setAppTimeRestrictionDuration:duration];

    timeRestrictionLockoutViewController3 = [(GAXUIServer *)self timeRestrictionLockoutViewController];
    [(GAXUIServer *)self setActiveContentViewController:timeRestrictionLockoutViewController3];
  }
}

- (BOOL)_isTimeRestrictionLockoutViewShowing
{
  timeRestrictionLockoutViewController = [(GAXUIServer *)self timeRestrictionLockoutViewController];
  if (timeRestrictionLockoutViewController)
  {
    activeContentViewController = [(GAXUIServer *)self activeContentViewController];
    v5 = activeContentViewController == timeRestrictionLockoutViewController;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- ($9BEB610D0CE1B1EDC3D89DA2464F985F)_rotationContextForInterestAreaViewController:(id)controller
{
  controllerCopy = controller;
  v17 = 0;
  v18 = &v17;
  v19 = 0x4010000000;
  v20 = &unk_545BF;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_48B8;
  v16[3] = &unk_5CB00;
  v16[4] = self;
  v16[5] = &v17;
  dispatch_sync(gaxStateAccessQueue, v16);
  v6 = *(v18 + 8);
  if (v6 == 1)
  {
    activeContentViewController = [(GAXUIServer *)self activeContentViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      activeContentViewController = activeContentViewController;
      isEditing = [controllerCopy isEditing];
      interestAreaViewController = [activeContentViewController interestAreaViewController];
      v10 = interestAreaViewController == controllerCopy;

      v8 = v10 & isEditing;
      v7 = 0;
      v11 = 1;
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }

LABEL_10:

    goto LABEL_11;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (v6 == 2)
  {
    activeContentViewController = [(GAXUIServer *)self passiveInterestAreaViewController];
    v9 = activeContentViewController == controllerCopy && [(GAXUIServer *)self allowsTouch];
    v8 = 0;
    v7 = 1;
    v10 = v9;
    v11 = 1;
    goto LABEL_10;
  }

LABEL_11:
  _Block_object_dispose(&v17, 8);

  return ((v8 << 24) | (v7 << 32) | (v9 << 16) | (v10 << 8) | v11);
}

- (void)_applyInterestAreaPathsForStorage:(id)storage toInterestAreaViewController:(id)controller andFadeInterestAreaPathsIn:(BOOL)in fadeInterestAreaSpecialControlsIn:(BOOL)controlsIn notifyClientOfReplacedInterestAreaPathsDuringSession:(BOOL)session
{
  sessionCopy = session;
  controlsInCopy = controlsIn;
  inCopy = in;
  storageCopy = storage;
  controllerCopy = controller;
  v13 = controllerCopy;
  if (storageCopy)
  {
    [controllerCopy setInterestAreaPathsForStorage:storageCopy animated:0];
    if (!inCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [controllerCopy setInterestAreaPaths:0 animated:0];
  if (inCopy)
  {
LABEL_3:
    [v13 setAllowsDimmingInterestAreaPaths:1 animated:1];
  }

LABEL_4:
  if (!controlsInCopy)
  {
    if (!sessionCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  interestAreaView = [v13 interestAreaView];
  [interestAreaView setSpecialControlsVisible:1 animated:1];

  if (sessionCopy)
  {
LABEL_6:
    v14 = [(GAXUIServer *)self _archivedInterestAreaPathsInScreenCoordinatesForInterestAreaViewController:v13];
    v15 = [[NSDictionary alloc] initWithObjectsAndKeys:{v14, @"interest area paths in screen coordinates", 0}];
    _clientMessenger = [(GAXUIServer *)self _clientMessenger];
    [_clientMessenger sendAsynchronousMessage:v15 withIdentifier:28 targetAccessQueue:0 completion:0];
  }

LABEL_7:
}

- (id)_archivedInterestAreaPathsInScreenCoordinatesForInterestAreaViewController:(id)controller
{
  controllerCopy = controller;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_4C64;
  v22 = sub_4C74;
  v23 = 0;
  interestAreaPathsInScreenCoordinates = [controllerCopy interestAreaPathsInScreenCoordinates];
  if (!interestAreaPathsInScreenCoordinates)
  {
    v5 = [NSDate dateWithTimeIntervalSinceNow:1.0];
    while (1)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v7 = v6;
      [v5 timeIntervalSinceReferenceDate];
      if (v7 >= v8)
      {
        interestAreaPathsInScreenCoordinates = 0;
        goto LABEL_11;
      }

      v9 = +[NSRunLoop currentRunLoop];
      v10 = [NSDate dateWithTimeIntervalSinceNow:0.1];
      [v9 runUntilDate:v10];

      if ([controllerCopy isViewLoaded])
      {
        view = [controllerCopy view];
        window = [view window];

        if (window)
        {
          interestAreaPathsInScreenCoordinates2 = [controllerCopy interestAreaPathsInScreenCoordinates];

          if (interestAreaPathsInScreenCoordinates2)
          {
            break;
          }
        }
      }
    }

    v14 = GAXLogBlockedTouches();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_33768(v14);
    }

    interestAreaPathsInScreenCoordinates = [controllerCopy interestAreaPathsInScreenCoordinates];
LABEL_11:
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_4C7C;
  v17[3] = &unk_5CC68;
  v17[4] = &v18;
  [interestAreaPathsInScreenCoordinates enumeratePathsAndParentsUsingBlock:v17];
  v15 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v15;
}

- (id)_archiveInterestAreaPathsForStorage:(id)storage
{
  if (storage)
  {
    [NSKeyedArchiver archivedDataWithRootObject:storage requiringSecureCoding:1 error:0];
  }

  else
  {
    [NSNumber numberWithBool:?];
  }
  v3 = ;

  return v3;
}

- (void)_adjustContentsGeometryOfInterestAreaViewWithController:(id)controller
{
  controllerCopy = controller;
  interestAreaView = [controllerCopy interestAreaView];
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = +[AXUIDisplayManager sharedDisplayManager];
  activeInterfaceOrientation = [v13 activeInterfaceOrientation];
  if ((activeInterfaceOrientation - 3) >= 2)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  if ((activeInterfaceOrientation - 3) >= 2)
  {
    v16 = v10;
  }

  else
  {
    v16 = v12;
  }

  [interestAreaView setContentsBounds:{v6, v8, v16, v15}];
  styleProvider = [controllerCopy styleProvider];

  [styleProvider applicationViewRoundedCornerRadius];
  [interestAreaView setContentsCornerRadius:?];
}

- (void)_disableTelephonyIfNeededForMode:(unsigned int)mode
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  ICFRegisterCallFilterResultBlockWithIdentifier();
}

- (void)_restoreTelephony
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  ICFUnregisterCallFilterResultBlockWithIdentifier();
}

- (void)_displayBlockedIncomingCallWithSourceAddress:(id)address serviceIdentifier:(id)identifier
{
  addressCopy = address;
  identifierCopy = identifier;
  incomingCallAlertIdentifier = [(GAXUIServer *)self incomingCallAlertIdentifier];

  if (incomingCallAlertIdentifier)
  {
    goto LABEL_47;
  }

  selfCopy = self;
  v57 = identifierCopy;
  v9 = objc_alloc_init(CNContactStore);
  v10 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v75[0] = v10;
  v75[1] = CNContactCallAlertKey;
  v75[2] = CNContactPhoneNumbersKey;
  v75[3] = CNContactEmailAddressesKey;
  v11 = [NSArray arrayWithObjects:v75 count:4];

  v12 = [CNPhoneNumber phoneNumberWithStringValue:addressCopy];
  v13 = [CNContact predicateForContactsMatchingPhoneNumber:v12];
  v70 = 0;
  v58 = v11;
  v59 = v9;
  v14 = [v9 unifiedContactsMatchingPredicate:v13 keysToFetch:v11 error:&v70];
  v15 = v70;
  firstObject = [v14 firstObject];

  v60 = v15;
  if (v15)
  {
    emailAddresses = GAXLogCommon();
    if (os_log_type_enabled(emailAddresses, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v74 = v15;
      _os_log_impl(&dword_0, emailAddresses, OS_LOG_TYPE_DEFAULT, "Error fetching contact matching phone number: %@", buf, 0xCu);
    }

    goto LABEL_28;
  }

  if (!firstObject)
  {
    v27 = [CNContact predicateForContactsMatchingEmailAddress:addressCopy];
    v65 = 0;
    v28 = [v59 unifiedContactsMatchingPredicate:v27 keysToFetch:v58 error:&v65];
    v60 = v65;
    firstObject = [v28 firstObject];

    if (!firstObject)
    {
      sound = 0;
      vibration = 0;
      v41 = 0;
      goto LABEL_35;
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    emailAddresses = [firstObject emailAddresses];
    v29 = [emailAddresses countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (!v29)
    {
      goto LABEL_28;
    }

    v30 = v29;
    v54 = firstObject;
    v20 = 0;
    v31 = *v62;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v62 != v31)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v33 = *(*(&v61 + 1) + 8 * i);
        value = [v33 value];
        v35 = [value isEqualToString:addressCopy];

        if (v35)
        {
          label = [v33 label];

          v20 = label;
        }
      }

      v30 = [emailAddresses countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v30);
LABEL_26:
    firstObject = v54;
    goto LABEL_29;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  emailAddresses = [firstObject phoneNumbers];
  v18 = [emailAddresses countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v18)
  {
    v19 = v18;
    v54 = firstObject;
    v20 = 0;
    v21 = *v67;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v67 != v21)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v23 = *(*(&v66 + 1) + 8 * j);
        value2 = [v23 value];
        v25 = [value2 isEqual:v12];

        if (v25)
        {
          label2 = [v23 label];

          v20 = label2;
        }
      }

      v19 = [emailAddresses countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v19);
    v60 = 0;
    goto LABEL_26;
  }

  v60 = 0;
LABEL_28:
  v20 = 0;
LABEL_29:

  if (!firstObject)
  {
    v41 = 0;
    vibration = 0;
    sound = 0;
    if (v20)
    {
      goto LABEL_33;
    }

LABEL_35:
    v42 = 0;
    goto LABEL_36;
  }

  callAlert = [firstObject callAlert];
  sound = [callAlert sound];

  callAlert2 = [firstObject callAlert];
  vibration = [callAlert2 vibration];

  v41 = [CNContactFormatter stringFromContact:firstObject style:0];
  if (!v20)
  {
    goto LABEL_35;
  }

LABEL_33:
  v42 = [CNLabeledValue localizedStringForLabel:v20];

LABEL_36:
  v43 = [[TLAlertConfiguration alloc] initWithType:1];
  v44 = v43;
  if (sound)
  {
    [v43 setToneIdentifier:sound];
  }

  if (vibration)
  {
    [v44 setVibrationIdentifier:vibration];
  }

  [v44 setShouldRepeat:0];
  [v44 setMaximumDuration:60.0];
  v45 = [TLAlert alertWithConfiguration:v44];
  [v45 playWithCompletionHandler:&stru_5CCF8];

  if (v41)
  {
    v46 = v41;
  }

  else
  {
    v46 = addressCopy;
  }

  v47 = [v46 copy];
  v55 = sound;
  if (v42)
  {
    v48 = [v42 copy];
  }

  else
  {
    v49 = GAXLocString(@"INCOMING_CALL_SUBTITLE");
    v48 = [v49 copy];
  }

  v50 = [NSBundle bundleForClass:objc_opt_class()];
  v51 = [UIImage imageNamed:@"phone_ga" inBundle:v50];

  v52 = [(GAXUIServer *)selfCopy _showAlertWithText:v47 subtitleText:v48 iconImage:v51 asBanner:1 isUrgent:1 duration:5.0];
  [(GAXUIServer *)selfCopy setIncomingCallAlertIdentifier:v52];
  [(GAXUIServer *)selfCopy setIncomingCallType:0];

  identifierCopy = v57;
LABEL_47:
}

- (void)_reestablishSpringboardClient
{
  v3 = [[AXIPCClient alloc] initWithServiceName:@"com.apple.accessibility.gax.springboard"];
  [(GAXUIServer *)self setSpringboardClient:v3];
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_58B4;
  v4[3] = &unk_5CD20;
  objc_copyWeak(&v5, &location);
  [v3 setPortDeathHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_rotateDeviceToCurrentOrientation
{
  v3 = [AXEventRepresentation buttonRepresentationWithType:50];
  [v3 setAdditionalFlags:{objc_msgSend(v3, "additionalFlags") | 0x4000}];
  v2 = +[AXBackBoardServer server];
  [v2 postEvent:v3 systemEvent:1];
}

- (id)_unarchivedPathMappingWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_notifyClientOfUpdatedActiveInterfaceOrientation
{
  v6 = +[AXUIDisplayManager sharedDisplayManager];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 activeInterfaceOrientation]);
  v4 = [[NSDictionary alloc] initWithObjectsAndKeys:{v3, @"active interface orientation", 0}];
  _clientMessenger = [(GAXUIServer *)self _clientMessenger];
  [_clientMessenger sendAsynchronousMessage:v4 withIdentifier:2 targetAccessQueue:0 completion:0];
}

- (void)_interestAreaViewControllerInterfaceOrientationDidUpdate:(int64_t)update
{
  v6 = [NSNumber numberWithUnsignedInteger:update];
  v4 = [[NSDictionary alloc] initWithObjectsAndKeys:{v6, @"active interface orientation", 0}];
  _clientMessenger = [(GAXUIServer *)self _clientMessenger];
  [_clientMessenger sendAsynchronousMessage:v4 withIdentifier:2 targetAccessQueue:0 completion:0];
}

- (id)_preparedOverlayUserInterfaceViewController
{
  overlayActiveContentViewController = [(GAXUIServer *)self overlayActiveContentViewController];
  if (!overlayActiveContentViewController)
  {
    overlayActiveContentViewController = objc_opt_new();
    view = [overlayActiveContentViewController view];
    [view setUserInteractionEnabled:1];

    [(GAXUIServer *)self setOverlayActiveContentViewController:overlayActiveContentViewController];
  }

  if (![(GAXUIServer *)self isAXUIServerSceneReady])
  {
    do
    {
      v5 = GAXLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "AXUIServer scene not ready for overlayActiveContentViewController yet", v9, 2u);
      }

      v6 = +[NSRunLoop currentRunLoop];
      v7 = [NSDate dateWithTimeIntervalSinceNow:0.1];
      [v6 runUntilDate:v7];
    }

    while (![(GAXUIServer *)self isAXUIServerSceneReady]);
  }

  return overlayActiveContentViewController;
}

- (BOOL)shouldShowCancelButtonForPasscodeViewController:(id)controller
{
  v3 = +[AXSpringBoardServer server];
  isSystemAppFrontmost = [v3 isSystemAppFrontmost];

  return isSystemAppFrontmost ^ 1;
}

- (void)passcodeViewController:(id)controller passcodeViewIsVisible:(BOOL)visible
{
  visibleCopy = visible;
  view = [controller view];
  window = [view window];
  _contextId = [window _contextId];

  v14 = [NSNumber numberWithUnsignedInteger:_contextId];
  v9 = [NSDictionary alloc];
  v10 = [NSNumber numberWithBool:visibleCopy];
  v11 = [v9 initWithObjectsAndKeys:{v10, @"passcode is visible", v14, @"passcode window context ID", 0}];

  _clientMessenger = [(GAXUIServer *)self _clientMessenger];
  [_clientMessenger sendAsynchronousMessage:v11 withIdentifier:16 targetAccessQueue:0 completion:0];

  if (!visibleCopy)
  {
    overlayActiveContentViewController = [(GAXUIServer *)self overlayActiveContentViewController];
    [overlayActiveContentViewController didDismissModalViewController];

    [(GAXUIServer *)self setPasscodeViewController:0];
  }
}

- (void)passcodeViewController:(id)controller wasDismissedWithReason:(int64_t)reason
{
  [(GAXUIServer *)self setLastPasscodeViewDismissalReason:reason];
  [(GAXUIServer *)self setShouldHideAllAlerts:0];
  if (reason > 2)
  {
    if (reason == 5)
    {
      goto LABEL_18;
    }

    if (reason != 3)
    {
LABEL_17:
      v9 = [NSNumber numberWithInteger:reason];
      v10 = [[NSDictionary alloc] initWithObjectsAndKeys:{v9, @"passcode view dismissal reason", 0}];
      _clientMessenger = [(GAXUIServer *)self _clientMessenger];
      v12 = +[AXAccessQueue mainAccessQueue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_61FC;
      v17[3] = &unk_5CD70;
      v17[4] = self;
      v17[5] = reason;
      [_clientMessenger sendAsynchronousMessage:v10 withIdentifier:17 targetAccessQueue:v12 completion:v17];

      goto LABEL_18;
    }
  }

  else if (reason != 1)
  {
    if (reason == 2)
    {
      [(GAXUIServer *)self setTimeRestrictionLockoutDismissedForBiometrics:0];
    }

    goto LABEL_17;
  }

  if ([(GAXUIServer *)self timeRestrictionLockoutDismissedForBiometrics])
  {
    v6 = GAXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      reasonCopy = reason;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Reinstating time restriction lockout view after passcode dismissal (reason: %ld)", buf, 0xCu);
    }

    [(GAXUIServer *)self setTimeRestrictionLockoutDismissedForBiometrics:0];
    [(GAXUIServer *)self _showTimeRestrictionsLockoutViewWithAppTimeRestrictionDuration:[(GAXUIServer *)self appTimeRestrictionDurationInMinutes]* 60.0];
  }

  [(GAXUIServer *)self setNumberOfBannerAlertsShownRecently:0];
  v7 = +[AXSpringBoardServer server];
  if (([v7 isSystemAppFrontmost] & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = +[AXSpringBoardServer server];
  if ([v8 hasActiveOrPendingCallOrFaceTime])
  {

LABEL_16:
    goto LABEL_17;
  }

  v13 = +[AXSpringBoardServer server];
  v14 = [v13 isScreenLockedWithPasscode:0];

  if (v14)
  {
    goto LABEL_17;
  }

  v15 = GAXLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"was canceled";
    if (reason == 1)
    {
      v16 = @"failed";
    }

    *buf = 138412290;
    reasonCopy = v16;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Passcode entry %@ while system app was frontmost. Will present passcode view again.", buf, 0xCu);
  }

  v17[6] = _NSConcreteStackBlock;
  v17[7] = 3221225472;
  v17[8] = sub_61F4;
  v17[9] = &unk_5CD48;
  v17[10] = self;
  AXPerformBlockOnMainThreadAfterDelay();
LABEL_18:
  [(GAXUIServer *)self _clearPasscodeDismissalTimer];
}

- (void)passcodeViewController:(id)controller didFinishSettingUpPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v7 = [[NSDictionary alloc] initWithObjectsAndKeys:{passcodeCopy, @"passcode", 0}];

  _clientMessenger = [(GAXUIServer *)self _clientMessenger];
  [_clientMessenger sendAsynchronousMessage:v7 withIdentifier:18 targetAccessQueue:0 completion:0];
}

- (void)getPasscodeLengthWithCompletion:(id)completion
{
  completionCopy = completion;
  _clientMessenger = [(GAXUIServer *)self _clientMessenger];
  v6 = +[AXAccessQueue mainAccessQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_64C0;
  v8[3] = &unk_5CB28;
  v9 = completionCopy;
  v7 = completionCopy;
  [_clientMessenger sendAsynchronousMessage:&__NSDictionary0__struct withIdentifier:20 targetAccessQueue:v6 completion:v8];
}

- (void)passcodeViewController:(id)controller isPasscode:(id)passcode correctWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  passcodeCopy = passcode;
  v9 = [[NSDictionary alloc] initWithObjectsAndKeys:{passcodeCopy, @"passcode", 0}];

  _clientMessenger = [(GAXUIServer *)self _clientMessenger];
  v11 = +[AXAccessQueue mainAccessQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_666C;
  v13[3] = &unk_5CB28;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [_clientMessenger sendAsynchronousMessage:v9 withIdentifier:19 targetAccessQueue:v11 completion:v13];
}

- (int64_t)activeInterfaceOrientationForPasscodeViewController:(id)controller
{
  v3 = +[UIWindow _applicationKeyWindow];
  windowScene = [v3 windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  return interfaceOrientation;
}

- (void)interestAreaViewController:(id)controller willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  controllerCopy = controller;
  v8 = [(GAXUIServer *)self _rotationContextForInterestAreaViewController:controllerCopy];
  v9 = v8 >> 8;
  if ((v8 >> 8))
  {
    v10 = v8;
    interestAreaPathsForStorageForRotatingView = [(GAXUIServer *)self interestAreaPathsForStorageForRotatingView];
    if (!interestAreaPathsForStorageForRotatingView)
    {
      interestAreaPathsForStorageForRotatingView = objc_opt_new();
      [(GAXUIServer *)self setInterestAreaPathsForStorageForRotatingView:interestAreaPathsForStorageForRotatingView];
    }

    v12 = [NSNumber numberWithUnsignedInteger:orientation];
    v13 = [NSNumber numberWithBool:0];
    [interestAreaPathsForStorageForRotatingView setObject:v13 forKey:v12];

    if ((v10 & 0x10000) != 0)
    {
      [controllerCopy setAllowsDimmingInterestAreaPaths:0 animated:1];
    }

    if ((v10 & 0x1000000) != 0)
    {
      interestAreaView = [controllerCopy interestAreaView];
      [interestAreaView setSpecialControlsVisible:0 animated:1];
    }

    v15 = [[NSDictionary alloc] initWithObjectsAndKeys:{v12, @"interface orientation", 0}];
    _clientMessenger = [(GAXUIServer *)self _clientMessenger];
    v17 = +[AXAccessQueue mainAccessQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_6968;
    v20[3] = &unk_5CD98;
    v20[4] = self;
    v21 = interestAreaPathsForStorageForRotatingView;
    v22 = v12;
    v23 = controllerCopy;
    v24 = v10;
    v25 = v9;
    v26 = BYTE2(v10);
    v27 = BYTE3(v10);
    v28 = BYTE4(v10);
    v18 = v12;
    v19 = interestAreaPathsForStorageForRotatingView;
    [_clientMessenger sendAsynchronousMessage:v15 withIdentifier:26 targetAccessQueue:v17 completion:v20];
  }
}

- (void)interestAreaViewController:(id)controller didRotateFromInterfaceOrientation:(int64_t)orientation
{
  controllerCopy = controller;
  -[GAXUIServer _interestAreaViewControllerInterfaceOrientationDidUpdate:](self, "_interestAreaViewControllerInterfaceOrientationDidUpdate:", [controllerCopy interfaceOrientation]);
  v5 = [(GAXUIServer *)self _rotationContextForInterestAreaViewController:controllerCopy];
  if (v5)
  {
    [(GAXUIServer *)self _adjustContentsGeometryOfInterestAreaViewWithController:controllerCopy];
  }

  if ((v5 & 0x100) != 0)
  {
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [controllerCopy interfaceOrientation]);
    interestAreaPathsForStorageForRotatingView = [(GAXUIServer *)self interestAreaPathsForStorageForRotatingView];
    v8 = [interestAreaPathsForStorageForRotatingView objectForKey:v6];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [(GAXUIServer *)self _applyInterestAreaPathsForStorage:v8 toInterestAreaViewController:controllerCopy andFadeInterestAreaPathsIn:(v5 >> 16) & 1 fadeInterestAreaSpecialControlsIn:(v5 >> 24) & 1 notifyClientOfReplacedInterestAreaPathsDuringSession:HIDWORD(v5) & 1];
    }

    [interestAreaPathsForStorageForRotatingView removeObjectForKey:v6];
    if (![interestAreaPathsForStorageForRotatingView count])
    {
      [(GAXUIServer *)self setInterestAreaPathsForStorageForRotatingView:0];
    }
  }
}

- (void)archiveInterestAreaPathsForStorageInterestAreaViewController:(id)controller
{
  controllerCopy = controller;
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [controllerCopy interfaceOrientation]);
  interestAreaPathsForStorage = [controllerCopy interestAreaPathsForStorage];

  v6 = [(GAXUIServer *)self _archiveInterestAreaPathsForStorage:interestAreaPathsForStorage];

  v7 = [[NSDictionary alloc] initWithObjectsAndKeys:{v9, @"interface orientation", v6, @"interest area paths for storage", 0}];
  _clientMessenger = [(GAXUIServer *)self _clientMessenger];
  [_clientMessenger sendAsynchronousMessage:v7 withIdentifier:27 targetAccessQueue:0 completion:0];
}

- (id)_unmanagedASAMRestrictedFeaturesForStyle:(int64_t)style
{
  if (style == 3)
  {
    v23 = MCFeatureDefinitionLookupAllowed;
    v3 = &v23;
    v4 = 1;
  }

  else
  {
    v7 = MCFeatureSpellCheckAllowed;
    v8 = MCFeatureDefinitionLookupAllowed;
    v9 = MCFeatureAutoCorrectionAllowed;
    v10 = MCFeaturePredictiveKeyboardAllowed;
    v11 = MCFeatureKeyboardShortcutsAllowed;
    v12 = MCFeatureActivityContinuationAllowed;
    v13 = MCFeatureDictationAllowed;
    v14 = MCFeatureScreenShotAllowed;
    v15 = MCFeatureSmartPunctuationAllowed;
    v16 = MCFeatureAccessibilitySpeechAllowed;
    v17 = MCFeaturePasswordAutoFillAllowed;
    v18 = MCFeatureContinuousPathKeyboardAllowed;
    v19 = MCFeatureSelectedTextSharingAllowed;
    v20 = MCFeatureTranslationLookupAllowed;
    v21 = MCFeatureWritingToolsAllowed;
    v22 = MCFeatureAccessibilityTypingFeedbackAllowed;
    v3 = &v7;
    v4 = 16;
  }

  v5 = [NSArray arrayWithObjects:v3 count:v4, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23];

  return v5;
}

- (id)_unmanagedASAMRestrictionDictionaryForStyle:(int64_t)style
{
  v5 = +[NSMutableDictionary dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(GAXUIServer *)self _unmanagedASAMRestrictedFeaturesForStyle:style, 0];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 MCSetBoolRestriction:*(*(&v12 + 1) + 8 * i) value:0];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)applyUnmanagedASAMRestrictionsForStyle:(int64_t)style managedConfigurationSettings:(id)settings
{
  settingsCopy = settings;
  managedConfigurationQueue = [(GAXUIServer *)self managedConfigurationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6FF8;
  block[3] = &unk_5CDC0;
  v10 = settingsCopy;
  selfCopy = self;
  styleCopy = style;
  v8 = settingsCopy;
  dispatch_async(managedConfigurationQueue, block);
}

- (void)removeUnmanagedASAMRestrictions
{
  managedConfigurationQueue = [(GAXUIServer *)self managedConfigurationQueue];
  dispatch_async(managedConfigurationQueue, &stru_5CDE0);
}

- (void)_changeUnmanagedASAMRestrictionStateEnabled:(BOOL)enabled style:(int64_t)style managedConfigurationSettings:(id)settings
{
  enabledCopy = enabled;
  settingsCopy = settings;
  if ((style & 0xFFFFFFFFFFFFFFFDLL) != 1 && enabledCopy)
  {
    v9 = GAXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_338FC();
    }
  }

  if (enabledCopy)
  {
    [(GAXUIServer *)self applyUnmanagedASAMRestrictionsForStyle:style managedConfigurationSettings:settingsCopy];
  }

  else
  {
    [(GAXUIServer *)self removeUnmanagedASAMRestrictions];
  }
}

- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  messageCopy = message;
  withIdentifierCopy = withIdentifier;
  v12 = 0;
  if (identifier <= 14)
  {
    if (identifier <= 4)
    {
      switch(identifier)
      {
        case 1uLL:
          deviceRestrictedAlertIdentifier2 = [messageCopy objectForKey:@"gax backboard state"];
          memset(buf, 0, 28);
          [deviceRestrictedAlertIdentifier2 getBytes:buf length:28];
          gaxStateAccessQueue = self->_gaxStateAccessQueue;
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_7BE4;
          v55[3] = &unk_5CE08;
          v55[4] = self;
          v56[0] = *buf;
          *(v56 + 12) = *&buf[12];
          dispatch_sync(gaxStateAccessQueue, v55);
          v46 = [messageCopy objectForKey:@"time restriction did expire"];
          bOOLValue = [v46 BOOLValue];

          if (bOOLValue)
          {
            v48 = [messageCopy objectForKey:@"time restriction duration"];
            v49 = [v48 integerValue] * 60.0;

            [(GAXUIServer *)self _showTimeRestrictionsLockoutViewWithAppTimeRestrictionDuration:v49];
          }

          break;
        case 3uLL:
          deviceRestrictedAlertIdentifier2 = [messageCopy objectForKey:@"session application identifiers"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            deviceRestrictedAlertIdentifier2 = 0;
          }

          [(GAXUIServer *)self setSessionApplicationIdentifiers:deviceRestrictedAlertIdentifier2];
          break;
        case 4uLL:
          deviceRestrictedAlertIdentifier2 = [messageCopy objectForKey:@"gax backboard state"];
          memset(buf, 0, 28);
          [deviceRestrictedAlertIdentifier2 getBytes:buf length:28];
          v20 = self->_gaxStateAccessQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_7BFC;
          block[3] = &unk_5CE08;
          block[4] = self;
          v54[0] = *buf;
          *(v54 + 12) = *&buf[12];
          dispatch_sync(v20, block);
          break;
        default:
          goto LABEL_60;
      }

      goto LABEL_58;
    }

    if (identifier <= 6)
    {
      if (identifier == 5)
      {
        v25 = [messageCopy objectForKey:@"alert is banner"];
        bOOLValue2 = [v25 BOOLValue];

        v27 = [messageCopy objectForKey:@"alert is urgent"];
        bOOLValue3 = [v27 BOOLValue];

        v29 = [messageCopy objectForKey:@"alert time restriction remaining time"];
        v30 = [messageCopy objectForKey:@"alert text type"];
        unsignedIntegerValue = [v30 unsignedIntegerValue];

        v32 = [messageCopy objectForKey:@"alert remaining lockout duration"];
        [v32 doubleValue];
        v34 = v33;

        v35 = [messageCopy objectForKey:@"application name"];
        [(GAXUIServer *)self _showAlertWithType:unsignedIntegerValue AsBanner:bOOLValue2 isUrgent:bOOLValue3 timeRestrictionRemainingTime:v29 remainingLockoutDuration:v35 effectiveApplicationDisplayName:v34];
      }

      else
      {
        v13 = [messageCopy objectForKey:@"new passcode length"];
        unsignedIntegerValue2 = [v13 unsignedIntegerValue];

        [(GAXUIServer *)self _presentPasscodeViewControllerForSetup:1 passcodeLength:unsignedIntegerValue2];
      }

      goto LABEL_59;
    }

    if (identifier != 7)
    {
      if (identifier != 14)
      {
        goto LABEL_60;
      }

      if (![(GAXUIServer *)self shouldHideAllAlerts])
      {
        [(GAXUIServer *)self setShouldHideAllAlerts:1];
        [(GAXUIServer *)self setShouldHideAllAlerts:0];
      }

      deviceRestrictedAlertIdentifier2 = +[AXUIDisplayManager sharedDisplayManager];
      deviceRestrictedAlertIdentifier = [(GAXUIServer *)self deviceRestrictedAlertIdentifier];
      if (deviceRestrictedAlertIdentifier)
      {
        [deviceRestrictedAlertIdentifier2 hideAlertWithIdentifier:deviceRestrictedAlertIdentifier forService:self];
      }

      v22 = GAXLocString(@"DEVICE_IS_RESTRICTED");
      v23 = [deviceRestrictedAlertIdentifier2 showAlertWithText:v22 subtitleText:0 iconImage:0 type:0 priority:30 duration:self forService:AXUIAlertDisplayTimeForever];
      [(GAXUIServer *)self setDeviceRestrictedAlertIdentifier:v23];

      goto LABEL_58;
    }

    v36 = GAXLogCommon();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Received request to show passcode view for verification.", buf, 2u);
    }

    passcodeViewController = [(GAXUIServer *)self passcodeViewController];
    isPasscodeViewVisible = [passcodeViewController isPasscodeViewVisible];

    if (!isPasscodeViewVisible)
    {
      passiveInterestAreaViewController = [(GAXUIServer *)self passiveInterestAreaViewController];
      deviceRestrictedAlertIdentifier2 = passiveInterestAreaViewController;
      if (passiveInterestAreaViewController)
      {
        [passiveInterestAreaViewController setAllowsDimmingInterestAreaPaths:0 animated:1];
      }

      v51 = GAXLogCommon();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "Presenting.", buf, 2u);
      }

      [(GAXUIServer *)self _presentPasscodeViewControllerForUnlock];
LABEL_58:

      goto LABEL_59;
    }

    v39 = GAXLogCommon();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "Ignoring because already visible.", buf, 2u);
    }

    v40 = [NSNumber numberWithBool:1];
    v12 = [NSDictionary dictionaryWithObjectsAndKeys:v40, @"passcode view was visible", 0];
  }

  else
  {
    if (identifier <= 31)
    {
      if (identifier > 28)
      {
        if (identifier == 29)
        {
          v43 = [messageCopy objectForKey:@"time restriction duration"];
          v44 = [v43 integerValue] * 60.0;

          [(GAXUIServer *)self _showTimeRestrictionsLockoutViewWithAppTimeRestrictionDuration:v44];
        }

        else
        {
          if (identifier != 30)
          {
            goto LABEL_60;
          }

          [(GAXUIServer *)self _hideTimeRestrictionsLockoutView];
        }

        goto LABEL_59;
      }

      if (identifier != 15)
      {
        if (identifier != 21)
        {
          goto LABEL_60;
        }

        UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
        goto LABEL_59;
      }

      deviceRestrictedAlertIdentifier2 = [(GAXUIServer *)self deviceRestrictedAlertIdentifier];
      if (deviceRestrictedAlertIdentifier2)
      {
        v41 = +[AXUIDisplayManager sharedDisplayManager];
        [v41 hideAlertWithIdentifier:deviceRestrictedAlertIdentifier2 forService:self];

        [(GAXUIServer *)self setDeviceRestrictedAlertIdentifier:0];
      }

      goto LABEL_58;
    }

    if (identifier <= 37)
    {
      if (identifier != 32)
      {
        if (identifier != 36)
        {
          goto LABEL_60;
        }

        deviceRestrictedAlertIdentifier2 = [messageCopy objectForKeyedSubscript:@"restrictions enabled"];
        bOOLValue4 = [deviceRestrictedAlertIdentifier2 BOOLValue];
        v17 = [messageCopy objectForKeyedSubscript:@"autonomous single app mode style"];
        integerValue = [v17 integerValue];
        v19 = [messageCopy objectForKeyedSubscript:@"autonomous single app MC settings"];
        [(GAXUIServer *)self _changeUnmanagedASAMRestrictionStateEnabled:bOOLValue4 style:integerValue managedConfigurationSettings:v19];

        goto LABEL_58;
      }

      if ([(GAXUIServer *)self _isTimeRestrictionLockoutViewShowing])
      {
        [(GAXUIServer *)self setTimeRestrictionLockoutDismissedForBiometrics:1];
        [(GAXUIServer *)self _hideTimeRestrictionsLockoutView];
        v42 = GAXLogCommon();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "Temporarily dismissed time restriction lockout view for biometric authentication.", buf, 2u);
        }
      }

      biometricManager = [(GAXUIServer *)self biometricManager];
      [biometricManager startBiometricAuthentication];
LABEL_49:

LABEL_59:
      v12 = 0;
      goto LABEL_60;
    }

    if (identifier == 38 || identifier == 40)
    {
      biometricManager = +[NSNotificationCenter defaultCenter];
      [biometricManager postNotificationName:GAXClearLiveCaptionsNotification object:0];
      goto LABEL_49;
    }
  }

LABEL_60:
  if (error)
  {
    *error = 0;
  }

  return v12;
}

- (void)_confirmUnmanagedASAMWithApplicationDisplayName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  activeContentViewController = [(GAXUIServer *)self activeContentViewController];

  if (activeContentViewController)
  {
    (*(completionCopy + 2))(completionCopy, &off_61740, 0);
  }

  else
  {
    if (!nameCopy)
    {
      nameCopy = GAXLocString(@"APP_SELF_LOCK_UNKNOWN_APP_NAME");
      v9 = GAXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_33970();
      }
    }

    v10 = [GAXUnmanagedASAMViewController alloc];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_7DB4;
    v17 = &unk_5CE30;
    selfCopy = self;
    v19 = completionCopy;
    v11 = [(GAXUnmanagedASAMViewController *)v10 initWithApplicationDisplayName:nameCopy resultHandler:&v14];
    [(GAXUIServer *)self setUnmanagedASAMConfirmationViewController:v11, v14, v15, v16, v17, selfCopy];

    v12 = +[AXUIDisplayManager sharedDisplayManager];
    unmanagedASAMConfirmationViewController = [(GAXUIServer *)self unmanagedASAMConfirmationViewController];
    [v12 addContentViewController:unmanagedASAMConfirmationViewController withUserInteractionEnabled:1 forService:self context:0 completion:0];
  }
}

- (void)processMessageAsynchronously:(id)asynchronously withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier completion:(id)completion
{
  asynchronouslyCopy = asynchronously;
  withIdentifierCopy = withIdentifier;
  completionCopy = completion;
  if (identifier <= 10)
  {
    switch(identifier)
    {
      case 8uLL:
        v33 = [asynchronouslyCopy objectForKey:@"session application identifiers"];
        if (v33)
        {
          v34 = v33;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v34 = 0;
          }

          [(GAXUIServer *)self setSessionApplicationIdentifiers:v34];
        }

        v35 = [asynchronouslyCopy objectForKey:@"server mode for disabling telephony"];
        unsignedIntegerValue = [v35 unsignedIntegerValue];

        [(GAXUIServer *)self _disableTelephonyIfNeededForMode:unsignedIntegerValue];
        [asynchronouslyCopy objectForKey:@"gax backboard state"];
        v93 = memset(v117, 0, 28);
        [v93 getBytes:v117 length:28];
        gaxStateAccessQueue = self->_gaxStateAccessQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_8B78;
        block[3] = &unk_5CE08;
        block[4] = self;
        v116[0] = v117[0];
        *(v116 + 12) = *(v117 + 12);
        dispatch_sync(gaxStateAccessQueue, block);
        v38 = [asynchronouslyCopy objectForKey:@"time restriction duration"];
        -[GAXUIServer setAppTimeRestrictionDurationInMinutes:](self, "setAppTimeRestrictionDurationInMinutes:", [v38 integerValue]);

        v39 = [asynchronouslyCopy objectForKey:@"time restrictions enabled"];
        -[GAXUIServer setAppTimeRestrictionsEnabled:](self, "setAppTimeRestrictionsEnabled:", [v39 BOOLValue]);

        v40 = [asynchronouslyCopy objectForKey:@"application name"];
        [(GAXUIServer *)self setAppName:v40];

        v41 = [asynchronouslyCopy objectForKey:@"archived application icon"];
        v94 = withIdentifierCopy;
        if (v41)
        {
          v42 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v41 error:0];
          [(GAXUIServer *)self setAppIcon:v42];
        }

        else
        {
          [(GAXUIServer *)self setAppIcon:0];
        }

        v70 = [asynchronouslyCopy objectForKey:@"restriction identifiers"];
        [(GAXUIServer *)self setAppRestrictionIdentifiers:v70];

        v71 = [asynchronouslyCopy objectForKey:@"states for restrictions"];
        [(GAXUIServer *)self setStatesForAppRestrictions:v71];

        v72 = [asynchronouslyCopy objectForKey:@"texts for restrictions"];
        [(GAXUIServer *)self setTextsForAppRestrictions:v72];

        v73 = [asynchronouslyCopy objectForKey:@"detail texts for restrictions"];
        [(GAXUIServer *)self setDetailTextsForAppRestrictions:v73];

        v74 = [asynchronouslyCopy objectForKey:@"previous server mode"];
        unsignedIntegerValue2 = [v74 unsignedIntegerValue];

        v76 = [asynchronouslyCopy objectForKey:@"interest area paths for storage"];
        v77 = [(GAXUIServer *)self _unarchivedPathMappingWithData:v76];

        identifierOfVisibleRegularAlert = [(GAXUIServer *)self identifierOfVisibleRegularAlert];
        if (identifierOfVisibleRegularAlert)
        {
          v79 = +[AXUIDisplayManager sharedDisplayManager];
          [v79 hideAlertWithIdentifier:identifierOfVisibleRegularAlert forService:self];

          [(GAXUIServer *)self setIdentifierOfVisibleRegularAlert:0];
        }

        styleProvider = [(GAXUIServer *)self styleProvider];
        _preparedOverlayUserInterfaceViewController = [(GAXUIServer *)self _preparedOverlayUserInterfaceViewController];
        v82 = [[GAXWorkspaceViewController alloc] initWithOverlayUserInterfaceViewController:_preparedOverlayUserInterfaceViewController];
        [(GAXWorkspaceViewController *)v82 setUserInterfaceServer:self];
        [(GAXWorkspaceViewController *)v82 setStyleProvider:styleProvider];
        [(GAXWorkspaceViewController *)v82 setUsesResumeNavigationTitles:unsignedIntegerValue2 == 2];
        interestAreaViewController = [(GAXWorkspaceViewController *)v82 interestAreaViewController];
        [interestAreaViewController setInterestAreaPathsForStorage:v77];

        [(GAXUIServer *)self setPassiveInterestAreaViewController:0];
        [(GAXUIServer *)self setActiveContentViewController:v82];
        (*(completionCopy + 2))(completionCopy, 0, 0);

        break;
      case 9uLL:
        v49 = [asynchronouslyCopy objectForKey:@"previous server mode"];
        unsignedIntegerValue3 = [v49 unsignedIntegerValue];

        activeContentViewController = [(GAXUIServer *)self activeContentViewController];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          _AXAssert();
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (unsignedIntegerValue3)
          {
            v52 = 3;
          }

          else
          {
            v52 = 1;
          }

          v113[0] = _NSConcreteStackBlock;
          v113[1] = 3221225472;
          v113[2] = sub_8B90;
          v113[3] = &unk_5CE58;
          v114 = completionCopy;
          [activeContentViewController transitionInWithContext:v52 completion:v113];
        }

        goto LABEL_63;
      case 0xAuLL:
        v94 = withIdentifierCopy;
        v23 = [asynchronouslyCopy objectForKey:@"server mode for disabling telephony"];
        unsignedIntegerValue4 = [v23 unsignedIntegerValue];

        v25 = [asynchronouslyCopy objectForKey:@"profile configuration"];
        unsignedIntegerValue5 = [v25 unsignedIntegerValue];

        [(GAXUIServer *)self _disableTelephonyIfNeededForMode:unsignedIntegerValue4];
        [(GAXUIServer *)self setNumberOfBannerAlertsShownRecently:0];
        activeContentViewController2 = [(GAXUIServer *)self activeContentViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v91 = unsignedIntegerValue5;
        v92 = activeContentViewController2;
        if (isKindOfClass)
        {
          v29 = activeContentViewController2;
          interestAreaViewController2 = [v29 interestAreaViewController];
          interestAreaPathsForStorage = [interestAreaViewController2 interestAreaPathsForStorage];
        }

        else
        {
          v53 = [asynchronouslyCopy objectForKey:@"interest area paths for storage"];
          interestAreaPathsForStorage = [(GAXUIServer *)self _unarchivedPathMappingWithData:v53];

          v29 = 0;
          interestAreaViewController2 = 0;
        }

        v54 = objc_opt_new();
        styleProvider2 = [(GAXUIServer *)self styleProvider];
        [v54 setStyleProvider:styleProvider2];

        [v54 setEditing:0];
        if (interestAreaViewController2)
        {
          interestAreaView = [interestAreaViewController2 interestAreaView];
          [interestAreaView contentsBounds];
          v58 = v57;
          v60 = v59;
          v62 = v61;
          v64 = v63;
          interestAreaView2 = [v54 interestAreaView];
          [interestAreaView2 setContentsBounds:{v58, v60, v62, v64}];

          interestAreaView3 = [interestAreaViewController2 interestAreaView];
          [interestAreaView3 contentsCornerRadius];
          v68 = v67;
          interestAreaView4 = [v54 interestAreaView];
          [interestAreaView4 setContentsCornerRadius:v68];
        }

        else
        {
          [(GAXUIServer *)self _adjustContentsGeometryOfInterestAreaViewWithController:v54];
        }

        [v54 setInterestAreaPathsForStorage:interestAreaPathsForStorage];
        allowsTouch = [(GAXUIServer *)self allowsTouch];
        v85 = allowsTouch;
        if (v29)
        {
          v86 = 0;
        }

        else
        {
          v86 = allowsTouch;
        }

        [v54 setAllowsDimmingInterestAreaPaths:v86];
        [v54 setBackgroundShouldCoverEverything:v85 ^ 1];
        v104[0] = _NSConcreteStackBlock;
        v104[1] = 3221225472;
        v104[2] = sub_8BA8;
        v104[3] = &unk_5CE80;
        v111 = v91;
        v105 = asynchronouslyCopy;
        selfCopy = self;
        v87 = v54;
        v107 = v87;
        v112 = isKindOfClass & 1;
        v88 = interestAreaPathsForStorage;
        v108 = v88;
        v89 = v29;
        v109 = v89;
        v110 = completionCopy;
        v90 = objc_retainBlock(v104);
        [(GAXUIServer *)self setPassiveInterestAreaViewController:v87];
        if (v29)
        {
          v102[0] = _NSConcreteStackBlock;
          v102[1] = 3221225472;
          v102[2] = sub_8E80;
          v102[3] = &unk_5CE58;
          v103 = v90;
          [v89 transitionOutWithContext:2 completion:v102];
        }

        else
        {
          [(GAXUIServer *)self setActiveContentViewController:0];
          (v90[2])(v90);
        }

        break;
      default:
        goto LABEL_63;
    }

    withIdentifierCopy = v94;
    goto LABEL_63;
  }

  if (identifier > 12)
  {
    if (identifier == 13)
    {
      activeContentViewController3 = [(GAXUIServer *)self activeContentViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = activeContentViewController3;
      }

      else
      {
        v45 = 0;
      }

      usesResumeNavigationTitles = [v45 usesResumeNavigationTitles];
      [(GAXUIServer *)self setActiveContentViewController:0];
      [(GAXUIServer *)self _rotateDeviceToCurrentOrientation];
      if (usesResumeNavigationTitles)
      {
        v47 = GAXLocString(@"SESSION_ENDED");
        v48 = [(GAXUIServer *)self _showAlertWithText:v47 subtitleText:0 iconImage:0 asBanner:0 isUrgent:0 duration:2.1];
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
      goto LABEL_53;
    }

    if (identifier == 35)
    {
      v32 = [asynchronouslyCopy objectForKey:@"application name"];
      [(GAXUIServer *)self _confirmUnmanagedASAMWithApplicationDisplayName:v32 completion:completionCopy];
    }
  }

  else
  {
    if (identifier != 11)
    {
      v13 = [asynchronouslyCopy objectForKey:@"session application identifiers"];
      if (v13)
      {
        v14 = v13;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v14 = 0;
        }

        [(GAXUIServer *)self setSessionApplicationIdentifiers:v14];
      }

      v15 = [asynchronouslyCopy objectForKey:@"should restore telephony"];
      bOOLValue = [v15 BOOLValue];

      if (bOOLValue)
      {
        [(GAXUIServer *)self _restoreTelephony];
      }

      activeContentViewController3 = [(GAXUIServer *)self activeContentViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = activeContentViewController3;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      usesResumeNavigationTitles2 = [v19 usesResumeNavigationTitles];
      v97[0] = _NSConcreteStackBlock;
      v97[1] = 3221225472;
      v97[2] = sub_8E90;
      v97[3] = &unk_5CEA8;
      v21 = v19;
      v98 = v21;
      selfCopy2 = self;
      v101 = usesResumeNavigationTitles2;
      v100 = completionCopy;
      v22 = objc_retainBlock(v97);
      [(GAXUIServer *)self _dismissPasscodeViewAnimated:1 withReason:5];
      if (v21)
      {
        v95[0] = _NSConcreteStackBlock;
        v95[1] = 3221225472;
        v95[2] = sub_9090;
        v95[3] = &unk_5CE58;
        v96 = v22;
        [v21 transitionOutWithContext:4 completion:v95];
      }

      else
      {
        [(GAXUIServer *)self setActiveContentViewController:0];
        (v22[2])(v22);
      }

LABEL_53:
      goto LABEL_63;
    }

    allowsTouch2 = [(GAXUIServer *)self allowsTouch];
    passiveInterestAreaViewController = [(GAXUIServer *)self passiveInterestAreaViewController];
    [passiveInterestAreaViewController setAllowsDimmingInterestAreaPaths:allowsTouch2];

    [(GAXUIServer *)self setActiveContentViewController:0];
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_63:
}

- (void)processInitializationMessage:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKey:@"gax backboard state"];
  memset(v11, 0, 28);
  [v5 getBytes:v11 length:28];
  gaxStateAccessQueue = self->_gaxStateAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9220;
  block[3] = &unk_5CE08;
  block[4] = self;
  v10[0] = v11[0];
  *(v10 + 12) = *(v11 + 12);
  dispatch_sync(gaxStateAccessQueue, block);
  v7 = [messageCopy objectForKey:@"session application identifiers"];

  v8 = v7;
  AXPerformBlockOnMainThread();
}

- (void)alertWithIdentifierDidAppear:(id)appear
{
  appearCopy = appear;
  identifiersOfBannerAlertsAboutToAppear = [(GAXUIServer *)self identifiersOfBannerAlertsAboutToAppear];
  if ([identifiersOfBannerAlertsAboutToAppear containsObject:appearCopy])
  {
    [identifiersOfBannerAlertsAboutToAppear removeObject:appearCopy];
    if (![identifiersOfBannerAlertsAboutToAppear count])
    {
      [(GAXUIServer *)self setIdentifiersOfBannerAlertsAboutToAppear:0];
    }

    [(GAXUIServer *)self setNumberOfBannerAlertsShownRecently:[(GAXUIServer *)self numberOfBannerAlertsShownRecently]+ 1];
  }
}

- (void)alertWithIdentifierDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  identifiersOfVisibleBannerAlerts = [(GAXUIServer *)self identifiersOfVisibleBannerAlerts];
  [identifiersOfVisibleBannerAlerts removeObject:disappearCopy];
  if (![identifiersOfVisibleBannerAlerts count])
  {
    [(GAXUIServer *)self setIdentifiersOfVisibleBannerAlerts:0];
  }

  identifierOfVisibleRegularAlert = [(GAXUIServer *)self identifierOfVisibleRegularAlert];
  v6 = [identifierOfVisibleRegularAlert isEqualToString:disappearCopy];

  if (v6)
  {
    [(GAXUIServer *)self setIdentifierOfVisibleRegularAlert:0];
  }

  incomingCallAlertIdentifier = [(GAXUIServer *)self incomingCallAlertIdentifier];
  v8 = [incomingCallAlertIdentifier isEqualToString:disappearCopy];

  if (v8)
  {
    [(GAXUIServer *)self setIncomingCallAlertIdentifier:0];
    [(GAXUIServer *)self setIncomingCallType:0];
  }

  lockoutAlertIdentifier = [(GAXUIServer *)self lockoutAlertIdentifier];
  v10 = [lockoutAlertIdentifier isEqualToString:disappearCopy];

  if (v10)
  {
    [(GAXUIServer *)self setLockoutAlertIdentifier:0];
  }
}

- (double)desiredWindowLevelForAlertWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  lockoutAlertIdentifier = [(GAXUIServer *)self lockoutAlertIdentifier];
  v6 = [lockoutAlertIdentifier isEqualToString:identifierCopy];

  result = 10000005.0;
  if (v6)
  {
    return 10000007.0;
  }

  return result;
}

- (id)styleProviderForAlertWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  incomingCallAlertIdentifier = [(GAXUIServer *)self incomingCallAlertIdentifier];
  v6 = [incomingCallAlertIdentifier isEqualToString:identifierCopy];

  if (v6)
  {
    v7 = [GAXUIIncomingCallAlertStyleProvider styleProviderWithIncomingCallType:[(GAXUIServer *)self incomingCallType]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)desiredWindowLevelForContentViewController:(id)controller userInteractionEnabled:(BOOL)enabled
{
  controllerCopy = controller;
  activeContentViewController = [(GAXUIServer *)self activeContentViewController];

  if (activeContentViewController == controllerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 10000006.0;
    }

    else
    {
      v9 = 10000003.0;
    }
  }

  else
  {
    overlayActiveContentViewController = [(GAXUIServer *)self overlayActiveContentViewController];
    v8 = overlayActiveContentViewController == controllerCopy;

    v9 = dbl_41EE0[v8];
  }

  return v9;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = +[AXUIDisplayManager sharedDisplayManager];
  if (v13 == objectCopy && [pathCopy isEqualToString:@"activeInterfaceOrientation"])
  {
    [(GAXUIServer *)self _notifyClientOfUpdatedActiveInterfaceOrientation];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = GAXUIServer;
    [(GAXUIServer *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)biometricManager:(id)manager attemptWasSuccessful:(BOOL)successful
{
  successfulCopy = successful;
  v6 = GAXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = successfulCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Biometric monitor attempt was successful: %i.", buf, 8u);
  }

  if (successfulCopy)
  {
    [(GAXUIServer *)self setTimeRestrictionLockoutDismissedForBiometrics:0];
    v7 = &off_61768;
    v8 = 33;
  }

  else
  {
    v7 = &off_61780;
    v8 = 34;
  }

  _clientMessenger = [(GAXUIServer *)self _clientMessenger];
  v11 = @"passcode view dismissal reason";
  v12 = v7;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [_clientMessenger sendAsynchronousMessage:v10 withIdentifier:v8 targetAccessQueue:0 completion:0];
}

- (id)_debugGAXDescription
{
  v3 = [NSMutableString stringWithString:@"\n************************************\n"];
  [v3 appendFormat:@"GAX UI Server: %p\n", self];
  *v6 = *&self->_reflectedBackboardState.mode;
  *&v6[3] = *&self->_reflectedBackboardState.tripleClickSheetWindowContextID;
  v4 = gaxDebugDescriptionForGAXBackboardState(v6);
  [v3 appendString:v4];

  [v3 appendString:@"\n************************************\n"];

  return v3;
}

@end