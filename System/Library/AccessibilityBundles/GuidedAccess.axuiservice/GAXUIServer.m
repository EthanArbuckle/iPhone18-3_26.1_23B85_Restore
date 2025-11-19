@interface GAXUIServer
- ($9BEB610D0CE1B1EDC3D89DA2464F985F)_rotationContextForInterestAreaViewController:(id)a3;
- (AVSpeechSynthesizer)speechSynthesizer;
- (BOOL)_isTimeRestrictionLockoutViewShowing;
- (BOOL)allowsTouch;
- (BOOL)isFeatureEnabledForIdentifier:(id)a3;
- (BOOL)isInWorkspace;
- (BOOL)shouldShowCancelButtonForPasscodeViewController:(id)a3;
- (GAXUIServer)init;
- (double)_minimumDelayForShowingAdditionalBannerAlert;
- (double)desiredWindowLevelForAlertWithIdentifier:(id)a3;
- (double)desiredWindowLevelForContentViewController:(id)a3 userInteractionEnabled:(BOOL)a4;
- (double)statusBarHeight;
- (id)_archiveInterestAreaPathsForStorage:(id)a3;
- (id)_archivedInterestAreaPathsInScreenCoordinatesForInterestAreaViewController:(id)a3;
- (id)_debugGAXDescription;
- (id)_preparedOverlayUserInterfaceViewController;
- (id)_showAlertWithText:(id)a3 asBanner:(BOOL)a4 isUrgent:(BOOL)a5;
- (id)_showAlertWithText:(id)a3 subtitleText:(id)a4 iconImage:(id)a5 asBanner:(BOOL)a6 isUrgent:(BOOL)a7 duration:(double)a8;
- (id)_unarchivedPathMappingWithData:(id)a3;
- (id)_unmanagedASAMRestrictedFeaturesForStyle:(int64_t)a3;
- (id)_unmanagedASAMRestrictionDictionaryForStyle:(int64_t)a3;
- (id)detailTextForAppRestrictionWithIdentifier:(id)a3;
- (id)iconForAppRestrictionWithIdentifier:(id)a3;
- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (id)styleProviderForAlertWithIdentifier:(id)a3;
- (id)textForAppRestrictionWithIdentifier:(id)a3;
- (int64_t)activeInterfaceOrientationForPasscodeViewController:(id)a3;
- (int64_t)appRestrictionStateForIdentifier:(id)a3;
- (void)_adjustContentsGeometryOfInterestAreaViewWithController:(id)a3;
- (void)_applyInterestAreaPathsForStorage:(id)a3 toInterestAreaViewController:(id)a4 andFadeInterestAreaPathsIn:(BOOL)a5 fadeInterestAreaSpecialControlsIn:(BOOL)a6 notifyClientOfReplacedInterestAreaPathsDuringSession:(BOOL)a7;
- (void)_changeUnmanagedASAMRestrictionStateEnabled:(BOOL)a3 style:(int64_t)a4 managedConfigurationSettings:(id)a5;
- (void)_clearPasscodeDismissalTimer;
- (void)_confirmUnmanagedASAMWithApplicationDisplayName:(id)a3 completion:(id)a4;
- (void)_disableTelephonyIfNeededForMode:(unsigned int)a3;
- (void)_dismissPasscodeViewAnimated:(BOOL)a3 withReason:(int64_t)a4;
- (void)_displayBlockedIncomingCallWithSourceAddress:(id)a3 serviceIdentifier:(id)a4;
- (void)_interestAreaViewControllerInterfaceOrientationDidUpdate:(int64_t)a3;
- (void)_notifyClientOfUpdatedActiveInterfaceOrientation;
- (void)_playPreferredTimeRestrictionsSoundAndSpeakMessageIfNeeded:(id)a3;
- (void)_presentPasscodeViewControllerForSetup:(BOOL)a3 passcodeLength:(unint64_t)a4;
- (void)_presentPasscodeViewControllerForUnlock;
- (void)_reestablishSpringboardClient;
- (void)_restoreTelephony;
- (void)_rotateDeviceToCurrentOrientation;
- (void)_setupOverrides;
- (void)_showAlertWithType:(int)a3 AsBanner:(BOOL)a4 isUrgent:(BOOL)a5 timeRestrictionRemainingTime:(id)a6 remainingLockoutDuration:(double)a7 effectiveApplicationDisplayName:(id)a8;
- (void)_showTimeRestrictionsLockoutViewWithAppTimeRestrictionDuration:(double)a3;
- (void)_validateOverrides;
- (void)alertWithIdentifierDidAppear:(id)a3;
- (void)alertWithIdentifierDidDisappear:(id)a3;
- (void)applyUnmanagedASAMRestrictionsForStyle:(int64_t)a3 managedConfigurationSettings:(id)a4;
- (void)archiveInterestAreaPathsForStorageInterestAreaViewController:(id)a3;
- (void)biometricManager:(id)a3 attemptWasSuccessful:(BOOL)a4;
- (void)dealloc;
- (void)getContainedViewsInFrontmostApplicationForFingerPath:(id)a3 completion:(id)a4;
- (void)getPasscodeLengthWithCompletion:(id)a3;
- (void)interestAreaViewController:(id)a3 didRotateFromInterfaceOrientation:(int64_t)a4;
- (void)interestAreaViewController:(id)a3 willRotateToInterfaceOrientation:(int64_t)a4 duration:(double)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)passcodeViewController:(id)a3 didFinishSettingUpPasscode:(id)a4;
- (void)passcodeViewController:(id)a3 isPasscode:(id)a4 correctWithCompletionHandler:(id)a5;
- (void)passcodeViewController:(id)a3 passcodeViewIsVisible:(BOOL)a4;
- (void)passcodeViewController:(id)a3 wasDismissedWithReason:(int64_t)a4;
- (void)processInitializationMessage:(id)a3;
- (void)processMessageAsynchronously:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 completion:(id)a6;
- (void)removeUnmanagedASAMRestrictions;
- (void)setActiveContentViewController:(id)a3;
- (void)setAppRestrictionIdentifiers:(id)a3;
- (void)setAppRestrictionState:(int64_t)a3 withIdentifier:(id)a4;
- (void)setDetailTextsForAppRestrictions:(id)a3;
- (void)setFeatureEnabled:(BOOL)a3 withIdentifier:(id)a4;
- (void)setOverlayActiveContentViewController:(id)a3;
- (void)setPassiveInterestAreaViewController:(id)a3;
- (void)setShouldHideAllAlerts:(BOOL)a3;
- (void)setStatesForAppRestrictions:(id)a3;
- (void)setTextsForAppRestrictions:(id)a3;
- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4;
- (void)transitionToMode:(unsigned int)a3;
- (void)updateHostedApplicationStateWithScaleFactor:(double)a3 center:(CGPoint)a4 animationDuration:(double)a5;
- (void)updateTimeRestrictionWithDuration:(int64_t)a3 enabled:(BOOL)a4;
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

  v4 = [(GAXUIServer *)self springboardClient];
  [v4 setPortDeathHandler:0];
  v9 = 0;
  v5 = [v4 disconnectWithError:&v9];
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

- (void)updateHostedApplicationStateWithScaleFactor:(double)a3 center:(CGPoint)a4 animationDuration:(double)a5
{
  y = a4.y;
  x = a4.x;
  v10 = [NSDictionary alloc];
  v11 = [NSNumber numberWithDouble:a5];
  v12 = [NSNumber numberWithDouble:a3];
  v17.x = x;
  v17.y = y;
  v13 = NSStringFromCGPoint(v17);
  v15 = [v10 initWithObjectsAndKeys:{v11, @"animation duration", v12, @"hosted application scale factor", v13, @"hosted application center", 0}];

  v14 = [(GAXUIServer *)self _clientMessenger];
  [v14 sendAsynchronousMessage:v15 withIdentifier:31 targetAccessQueue:0 completion:0];
}

- (void)getContainedViewsInFrontmostApplicationForFingerPath:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  v8 = [[NSDictionary alloc] initWithObjectsAndKeys:{v7, @"finger path", 0}];
  v9 = [(GAXUIServer *)self _clientMessenger];
  v10 = +[AXAccessQueue mainAccessQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2560;
  v12[3] = &unk_5CB28;
  v13 = v6;
  v11 = v6;
  [v9 sendAsynchronousMessage:v8 withIdentifier:22 targetAccessQueue:v10 completion:v12];
}

- (void)transitionToMode:(unsigned int)a3
{
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v4 = [[NSDictionary alloc] initWithObjectsAndKeys:{v6, @"server mode", 0}];
  v5 = [(GAXUIServer *)self _clientMessenger];
  [v5 sendAsynchronousMessage:v4 withIdentifier:23 targetAccessQueue:0 completion:0];
}

- (void)setFeatureEnabled:(BOOL)a3 withIdentifier:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [NSDictionary alloc];
  v8 = [NSNumber numberWithBool:v4];
  v10 = [v7 initWithObjectsAndKeys:{v8, @"system feature is enabled", v6, @"system feature identifier", 0}];

  v9 = [(GAXUIServer *)self _clientMessenger];
  [v9 sendAsynchronousMessage:v10 withIdentifier:24 targetAccessQueue:0 completion:0];
}

- (void)updateTimeRestrictionWithDuration:(int64_t)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v7 = [(GAXUIServer *)self _clientMessenger];
  v11[0] = @"time restriction duration";
  v8 = [NSNumber numberWithInteger:a3];
  v12[0] = v8;
  v11[1] = @"time restrictions enabled";
  v9 = [NSNumber numberWithBool:v4];
  v12[1] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v7 sendAsynchronousMessage:v10 withIdentifier:25 targetAccessQueue:0 completion:0];

  [(GAXUIServer *)self setAppTimeRestrictionsEnabled:v4];
  [(GAXUIServer *)self setAppTimeRestrictionDurationInMinutes:a3];
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
  v2 = [(GAXUIServer *)self activeContentViewController];
  objc_opt_class();
  v3 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v2 statusBarHeight];
    v3 = v4;
  }

  return v3;
}

- (void)setActiveContentViewController:(id)a3
{
  v5 = a3;
  p_activeContentViewController = &self->_activeContentViewController;
  if (self->_activeContentViewController != v5)
  {
    v9 = v5;
    v7 = +[AXUIDisplayManager sharedDisplayManager];
    v8 = v7;
    if (*p_activeContentViewController)
    {
      [v7 removeContentViewController:*p_activeContentViewController withUserInteractionEnabled:1 forService:self context:0 completion:0];
    }

    objc_storeStrong(&self->_activeContentViewController, a3);
    if (v9)
    {
      [v8 addContentViewController:v9 withUserInteractionEnabled:1 forService:self context:0 completion:0];
    }

    v5 = v9;
  }
}

- (void)setOverlayActiveContentViewController:(id)a3
{
  v5 = a3;
  p_overlayActiveContentViewController = &self->_overlayActiveContentViewController;
  if (self->_overlayActiveContentViewController != v5)
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
    objc_storeStrong(&self->_overlayActiveContentViewController, a3);
    [(GAXOverlayUserInterfaceViewController *)self->_overlayActiveContentViewController setDelegate:self];
    if (v5)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_2E14;
      v11[3] = &unk_5CC18;
      v11[4] = self;
      [v8 addContentViewController:v5 withUserInteractionEnabled:1 forService:self context:0 completion:v11];
    }
  }
}

- (void)setPassiveInterestAreaViewController:(id)a3
{
  v5 = a3;
  p_passiveInterestAreaViewController = &self->_passiveInterestAreaViewController;
  if (self->_passiveInterestAreaViewController != v5)
  {
    v10 = v5;
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
    objc_storeStrong(&self->_passiveInterestAreaViewController, a3);
    [(GAXInterestAreaViewController *)self->_passiveInterestAreaViewController setDelegate:self];
    if (v10)
    {
      [v8 addContentViewController:v10 withUserInteractionEnabled:0 forService:self context:0 completion:0];
    }

    v5 = v10;
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

- (void)setShouldHideAllAlerts:(BOOL)a3
{
  if (self->_shouldHideAllAlerts != a3)
  {
    self->_shouldHideAllAlerts = a3;
    if (a3)
    {
      v4 = +[AXUIDisplayManager sharedDisplayManager];
      v5 = [(GAXUIServer *)self identifiersOfVisibleBannerAlerts];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
              objc_enumerationMutation(v5);
            }

            [v4 hideAlertWithIdentifier:*(*(&v11 + 1) + 8 * v9) forService:self];
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }

      v10 = [(GAXUIServer *)self identifierOfVisibleRegularAlert];
      if (v10)
      {
        [v4 hideAlertWithIdentifier:v10 forService:self];
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
  v2 = [(GAXUIServer *)self numberOfBannerAlertsShownRecently];
  result = 30.0;
  if (v2 < 9)
  {
    result = 10.0;
  }

  if (v2 < 6)
  {
    return 3.0;
  }

  return result;
}

- (void)_showAlertWithType:(int)a3 AsBanner:(BOOL)a4 isUrgent:(BOOL)a5 timeRestrictionRemainingTime:(id)a6 remainingLockoutDuration:(double)a7 effectiveApplicationDisplayName:(id)a8
{
  v10 = a5;
  v11 = a4;
  v14 = a6;
  v15 = a8;
  if (![(GAXUIServer *)self _isTimeRestrictionLockoutViewShowing])
  {
    if (!v15)
    {
      if ((a3 - 5) <= 2)
      {
        v16 = GAXLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_33674();
        }
      }

      v15 = GAXLocString(@"APP_SELF_LOCK_UNKNOWN_APP_NAME");
    }

    v17 = 0.0;
    switch(a3)
    {
      case 0:
        v18 = [(GAXUIServer *)self lastPasscodeViewDismissalReason];
        v19 = @"USER_LOCKED_OUT_VIA_CANCEL";
        if (v18 == 1)
        {
          v19 = @"USER_LOCKED_OUT_VIA_FAIL";
        }

        v20 = v14;
        v21 = v19;
        v22 = [NSNumber numberWithUnsignedInteger:a7];
        GAXLocString(v21);
        v24 = v23 = v10;

        v25 = GAXLocalizedNumber(v22);
        v26 = [NSString stringWithFormat:v24, v25];

        v14 = v20;
        v10 = v23;
        goto LABEL_26;
      case 1:
        v29 = +[AXSettings sharedInstance];
        v30 = [v29 guidedAccessAllowsUnlockWithTouchID];

        if (v30)
        {
          if (AXDeviceHasPearl())
          {
            v28 = 1;
            v31 = AXLocStringKeyForExclusiveModel();
            v26 = GAXLocString(v31);
          }

          else
          {
            v27 = @"SESSION_RUNNING_NOTE_WITH_TOUCH_ID";
LABEL_32:
            v26 = GAXLocString(v27);
LABEL_33:
            v28 = 1;
          }
        }

        else
        {
          v28 = 1;
          v36 = AXLocStringKeyForHomeButtonAndExclusiveModel();
          v26 = GAXLocString(v36);
        }

LABEL_34:
        if (v14)
        {
          v51 = v28;
          v37 = a3;
          v38 = v15;
          v39 = self;
          v40 = v11;
          [v14 floatValue];
          v42 = GAXLocalizedStringForTimeDuration(v41);
          if ([v42 length])
          {
            v43 = v14;
            v44 = v10;
          }

          else
          {
            v44 = v10;
            v43 = v14;
            [v14 floatValue];
            v46 = GAXLocalizedStringForTimeDuration(v45);

            v42 = v46;
          }

          v47 = GAXLocString(@"TIME_RESTRICTION_APP_TIME_REMAINING_TOP_BANNER");
          v48 = [NSString stringWithFormat:v47, v42];

          v49 = [(__CFString *)v26 stringByAppendingFormat:@"\n%@", v48];

          v26 = v49;
          v10 = v44;
          v11 = v40;
          v14 = v43;
          self = v39;
          v15 = v38;
          a3 = v37;
          v28 = v51;
        }

        if (v28)
        {
          [(GAXUIServer *)self _showAlertWithText:v26 asBanner:v11 isUrgent:v10];
        }

        else
        {
          [(GAXUIServer *)self _showAlertWithText:v26 subtitleText:0 iconImage:0 asBanner:v11 isUrgent:v10 duration:v17];
        }
        v50 = ;
        if (a3)
        {
          if (a3 == 3)
          {
            [(GAXUIServer *)self _playPreferredTimeRestrictionsSoundAndSpeakMessageIfNeeded:v26];
          }
        }

        else
        {
          [(GAXUIServer *)self setLockoutAlertIdentifier:v50];
        }

        break;
      case 2:
        v26 = GAXLocString(@"SESSION_ENDED");
        v28 = 0;
        v17 = 2.1;
        goto LABEL_34;
      case 3:
        v28 = 1;
        v26 = &stru_5E950;
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
        v33 = v32 = v14;
        GAXLocalizedStringForTimeDuration(28800.0);
        v35 = v34 = v10;
        v26 = [NSString stringWithFormat:v33, v15, v35];

        v10 = v34;
        goto LABEL_25;
      case 6:
      case 7:
        v22 = AXLocStringKeyForModel();
        GAXLocString(v22);
        v33 = v32 = v14;
        v26 = [NSString stringWithFormat:v33, v15];
LABEL_25:

        v14 = v32;
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
        v26 = 0;
        goto LABEL_33;
    }
  }
}

- (id)_showAlertWithText:(id)a3 asBanner:(BOOL)a4 isUrgent:(BOOL)a5
{
  v5 = &AXUIAlertDisplayTimeDefaultForBanners;
  if (!a4)
  {
    v5 = &AXUIAlertDisplayTimeDefaultForAlerts;
  }

  return [(GAXUIServer *)self _showAlertWithText:a3 subtitleText:0 iconImage:0 asBanner:a4 isUrgent:a5 duration:*v5];
}

- (id)_showAlertWithText:(id)a3 subtitleText:(id)a4 iconImage:(id)a5 asBanner:(BOOL)a6 isUrgent:(BOOL)a7 duration:(double)a8
{
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if ([(GAXUIServer *)self shouldHideAllAlerts])
  {
    goto LABEL_3;
  }

  v17 = [(GAXUIServer *)self deviceRestrictedAlertIdentifier];

  if (v17)
  {
    goto LABEL_3;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v21 = v20;
  if (v10)
  {
    if (!a7)
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
    v26 = [(GAXUIServer *)self identifierOfVisibleRegularAlert];
    if (v26)
    {
      v27 = v26;
      v18 = 0;
      goto LABEL_22;
    }

    v25 = 0;
  }

  v28 = +[AXUIDisplayManager sharedDisplayManager];
  v18 = [v28 showAlertWithText:v14 subtitleText:v15 iconImage:v16 type:v25 priority:20 duration:self forService:a8];

  if (!v18)
  {
    goto LABEL_4;
  }

  v27 = [(GAXUIServer *)self identifiersOfVisibleBannerAlerts];
  if (!v27)
  {
    v27 = objc_opt_new();
    [(GAXUIServer *)self setIdentifiersOfVisibleBannerAlerts:v27];
  }

  [v27 addObject:v18];
  if (v10)
  {
    [(GAXUIServer *)self setLastBannerAlertShownTimeInterval:v21];
    v29 = [(GAXUIServer *)self identifiersOfBannerAlertsAboutToAppear];
    if (!v29)
    {
      v29 = objc_opt_new();
      [(GAXUIServer *)self setIdentifiersOfBannerAlertsAboutToAppear:v29];
    }

    [v29 addObject:v18];
  }

  else
  {
    [(GAXUIServer *)self setIdentifierOfVisibleRegularAlert:v18];
  }

LABEL_22:

LABEL_4:

  return v18;
}

- (void)setAppRestrictionIdentifiers:(id)a3
{
  if (self->_appRestrictionIdentifiers != a3)
  {
    v5 = a3;
    v6 = [[NSArray alloc] initWithArray:v5 copyItems:1];

    appRestrictionIdentifiers = self->_appRestrictionIdentifiers;
    self->_appRestrictionIdentifiers = v6;
  }
}

- (void)setStatesForAppRestrictions:(id)a3
{
  if (self->_statesForAppRestrictions != a3)
  {
    v5 = a3;
    v6 = [[NSDictionary alloc] initWithDictionary:v5 copyItems:1];

    statesForAppRestrictions = self->_statesForAppRestrictions;
    self->_statesForAppRestrictions = v6;
  }
}

- (void)setTextsForAppRestrictions:(id)a3
{
  if (self->_textsForAppRestrictions != a3)
  {
    v5 = a3;
    v6 = [[NSDictionary alloc] initWithDictionary:v5 copyItems:1];

    textsForAppRestrictions = self->_textsForAppRestrictions;
    self->_textsForAppRestrictions = v6;
  }
}

- (void)setDetailTextsForAppRestrictions:(id)a3
{
  if (self->_detailTextsForAppRestrictions != a3)
  {
    v5 = a3;
    v6 = [[NSDictionary alloc] initWithDictionary:v5 copyItems:1];

    detailTextsForAppRestrictions = self->_detailTextsForAppRestrictions;
    self->_detailTextsForAppRestrictions = v6;
  }
}

- (int64_t)appRestrictionStateForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(GAXUIServer *)self statesForAppRestrictions];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 integerValue];
  return v7;
}

- (void)setAppRestrictionState:(int64_t)a3 withIdentifier:(id)a4
{
  v6 = a4;
  v9 = [(GAXUIServer *)self statesForAppRestrictions];
  v7 = [v9 mutableCopy];
  v8 = [NSNumber numberWithInteger:a3];
  [v7 setObject:v8 forKey:v6];

  [(GAXUIServer *)self setStatesForAppRestrictions:v7];
}

- (id)iconForAppRestrictionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(GAXUIServer *)self styleProvider];
  v6 = self->_appIcon;
  v7 = [v4 isEqualToString:@"GAXProfileAllowsWebTextDefine"];

  if (v7)
  {
    v8 = [v5 appFeatureViewDefineIcon];

    v6 = v8;
  }

  return v6;
}

- (id)textForAppRestrictionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(GAXUIServer *)self textsForAppRestrictions];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)detailTextForAppRestrictionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(GAXUIServer *)self detailTextsForAppRestrictions];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (BOOL)isFeatureEnabledForIdentifier:(id)a3
{
  v4 = a3;
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
  if ([v4 isEqualToString:@"GAXProfileAllowsKeyboardTextInput"])
  {
    v6 = 0x40000;
  }

  else if ([v4 isEqualToString:@"GAXProfileAllowsTouch"])
  {
    v6 = 1024;
  }

  else if ([v4 isEqualToString:@"GAXProfileAllowsMotion"])
  {
    v6 = 0x10000;
  }

  else if ([v4 isEqualToString:@"GAXProfileAllowsRingerSwitch"])
  {
    v6 = 0x8000;
  }

  else if ([v4 isEqualToString:@"GAXProfileAllowsProximity"])
  {
    v6 = 0x80000;
  }

  else if ([v4 isEqualToString:@"GAXProfileAllowsLockButton"])
  {
    v6 = 2048;
  }

  else if ([v4 isEqualToString:@"GAXProfileAllowsVolumeButtons"])
  {
    v6 = 0x4000;
  }

  else
  {
    if (([v4 isEqualToString:@"GAXProfileAllowsAutolock"] & 1) == 0)
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

- (void)_presentPasscodeViewControllerForSetup:(BOOL)a3 passcodeLength:(unint64_t)a4
{
  v5 = a3;
  [(GAXUIServer *)self setShouldHideAllAlerts:1];
  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom] == &dword_0 + 1;

  v11 = [(GAXUIServer *)self _preparedOverlayUserInterfaceViewController];
  v9 = [[AXUIPasscodeViewController alloc] initWithPresentationStyle:v8 forSetup:v5 pinLength:a4];
  [v9 setDelegate:self];
  [v11 willPresentModalViewController];
  [v9 presentPasscodeViewWithParentViewController:v11 animated:1];
  [(GAXUIServer *)self setPasscodeViewController:v9];
  if (!v5)
  {
    [(GAXUIServer *)self _clearPasscodeDismissalTimer];
    v10 = [NSTimer scheduledTimerWithTimeInterval:self target:"_timerDismissPasscode:" selector:0 userInfo:0 repeats:15.0];
    [(GAXUIServer *)self setPasscodeDismissalTimer:v10];
  }
}

- (void)_dismissPasscodeViewAnimated:(BOOL)a3 withReason:(int64_t)a4
{
  v5 = a3;
  v6 = [(GAXUIServer *)self passcodeViewController];
  [v6 dismissPasscodeViewAnimated:v5 reason:a4];
}

- (void)_clearPasscodeDismissalTimer
{
  v3 = [(GAXUIServer *)self passcodeDismissalTimer];
  [v3 invalidate];

  [(GAXUIServer *)self setPasscodeDismissalTimer:0];
}

- (void)speechSynthesizer:(id)a3 didFinishSpeechUtterance:(id)a4
{
  v4 = a4;
  v5 = GAXLogTimeRestrictions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138477827;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Finished speaking: %{private}@", &v6, 0xCu);
  }
}

- (void)_playPreferredTimeRestrictionsSoundAndSpeakMessageIfNeeded:(id)a3
{
  v4 = a3;
  v5 = +[AXSettings sharedInstance];
  v6 = [[TLAlertConfiguration alloc] initWithType:2];
  v7 = [v5 guidedAccessToneIdentifierForTimeRestrictionEvents];
  [v6 setToneIdentifier:v7];

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
    v15 = v4;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Will speak: %d, %{private}@", v13, 0x12u);
  }

  if ([v5 guidedAccessShouldSpeakForTimeRestrictionEvents])
  {
    v10 = [AVSpeechUtterance speechUtteranceWithString:v4];
    *&v11 = AVSpeechUtteranceDefaultSpeechRate;
    [v10 setRate:v11];
    v12 = [(GAXUIServer *)self speechSynthesizer];
    [v12 speakUtterance:v10];
  }
}

- (void)_showTimeRestrictionsLockoutViewWithAppTimeRestrictionDuration:(double)a3
{
  v5 = [(GAXUIServer *)self activeContentViewController];
  if (!v5 || (v6 = v5, [(GAXUIServer *)self activeContentViewController], v7 = objc_claimAutoreleasedReturnValue(), [(GAXUIServer *)self timeRestrictionLockoutViewController], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v7 != v8))
  {
    v9 = GAXLocString(@"GAX_TIME_RESTRICTION_DID_EXPIRE_SPEECH_STRIMG");
    [(GAXUIServer *)self _playPreferredTimeRestrictionsSoundAndSpeakMessageIfNeeded:v9];

    v10 = [(GAXUIServer *)self timeRestrictionLockoutViewController];

    if (!v10)
    {
      v11 = [[GAXTimeRestrictionLockoutViewController alloc] initWithUIServer:self];
      [(GAXUIServer *)self setTimeRestrictionLockoutViewController:v11];
    }

    v12 = [(GAXUIServer *)self timeRestrictionLockoutViewController];
    [v12 setAppTimeRestrictionDuration:a3];

    v13 = [(GAXUIServer *)self timeRestrictionLockoutViewController];
    [(GAXUIServer *)self setActiveContentViewController:v13];
  }
}

- (BOOL)_isTimeRestrictionLockoutViewShowing
{
  v3 = [(GAXUIServer *)self timeRestrictionLockoutViewController];
  if (v3)
  {
    v4 = [(GAXUIServer *)self activeContentViewController];
    v5 = v4 == v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- ($9BEB610D0CE1B1EDC3D89DA2464F985F)_rotationContextForInterestAreaViewController:(id)a3
{
  v4 = a3;
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
    v12 = [(GAXUIServer *)self activeContentViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v12;
      v13 = [v4 isEditing];
      v14 = [v12 interestAreaViewController];
      v10 = v14 == v4;

      v8 = v10 & v13;
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
    v12 = [(GAXUIServer *)self passiveInterestAreaViewController];
    v9 = v12 == v4 && [(GAXUIServer *)self allowsTouch];
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

- (void)_applyInterestAreaPathsForStorage:(id)a3 toInterestAreaViewController:(id)a4 andFadeInterestAreaPathsIn:(BOOL)a5 fadeInterestAreaSpecialControlsIn:(BOOL)a6 notifyClientOfReplacedInterestAreaPathsDuringSession:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v18 = a3;
  v12 = a4;
  v13 = v12;
  if (v18)
  {
    [v12 setInterestAreaPathsForStorage:v18 animated:0];
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [v12 setInterestAreaPaths:0 animated:0];
  if (v9)
  {
LABEL_3:
    [v13 setAllowsDimmingInterestAreaPaths:1 animated:1];
  }

LABEL_4:
  if (!v8)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v17 = [v13 interestAreaView];
  [v17 setSpecialControlsVisible:1 animated:1];

  if (v7)
  {
LABEL_6:
    v14 = [(GAXUIServer *)self _archivedInterestAreaPathsInScreenCoordinatesForInterestAreaViewController:v13];
    v15 = [[NSDictionary alloc] initWithObjectsAndKeys:{v14, @"interest area paths in screen coordinates", 0}];
    v16 = [(GAXUIServer *)self _clientMessenger];
    [v16 sendAsynchronousMessage:v15 withIdentifier:28 targetAccessQueue:0 completion:0];
  }

LABEL_7:
}

- (id)_archivedInterestAreaPathsInScreenCoordinatesForInterestAreaViewController:(id)a3
{
  v3 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_4C64;
  v22 = sub_4C74;
  v23 = 0;
  v4 = [v3 interestAreaPathsInScreenCoordinates];
  if (!v4)
  {
    v5 = [NSDate dateWithTimeIntervalSinceNow:1.0];
    while (1)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v7 = v6;
      [v5 timeIntervalSinceReferenceDate];
      if (v7 >= v8)
      {
        v4 = 0;
        goto LABEL_11;
      }

      v9 = +[NSRunLoop currentRunLoop];
      v10 = [NSDate dateWithTimeIntervalSinceNow:0.1];
      [v9 runUntilDate:v10];

      if ([v3 isViewLoaded])
      {
        v11 = [v3 view];
        v12 = [v11 window];

        if (v12)
        {
          v13 = [v3 interestAreaPathsInScreenCoordinates];

          if (v13)
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

    v4 = [v3 interestAreaPathsInScreenCoordinates];
LABEL_11:
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_4C7C;
  v17[3] = &unk_5CC68;
  v17[4] = &v18;
  [v4 enumeratePathsAndParentsUsingBlock:v17];
  v15 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v15;
}

- (id)_archiveInterestAreaPathsForStorage:(id)a3
{
  if (a3)
  {
    [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  }

  else
  {
    [NSNumber numberWithBool:?];
  }
  v3 = ;

  return v3;
}

- (void)_adjustContentsGeometryOfInterestAreaViewWithController:(id)a3
{
  v3 = a3;
  v18 = [v3 interestAreaView];
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = +[AXUIDisplayManager sharedDisplayManager];
  v14 = [v13 activeInterfaceOrientation];
  if ((v14 - 3) >= 2)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  if ((v14 - 3) >= 2)
  {
    v16 = v10;
  }

  else
  {
    v16 = v12;
  }

  [v18 setContentsBounds:{v6, v8, v16, v15}];
  v17 = [v3 styleProvider];

  [v17 applicationViewRoundedCornerRadius];
  [v18 setContentsCornerRadius:?];
}

- (void)_disableTelephonyIfNeededForMode:(unsigned int)a3
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

- (void)_displayBlockedIncomingCallWithSourceAddress:(id)a3 serviceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GAXUIServer *)self incomingCallAlertIdentifier];

  if (v8)
  {
    goto LABEL_47;
  }

  v56 = self;
  v57 = v7;
  v9 = objc_alloc_init(CNContactStore);
  v10 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v75[0] = v10;
  v75[1] = CNContactCallAlertKey;
  v75[2] = CNContactPhoneNumbersKey;
  v75[3] = CNContactEmailAddressesKey;
  v11 = [NSArray arrayWithObjects:v75 count:4];

  v12 = [CNPhoneNumber phoneNumberWithStringValue:v6];
  v13 = [CNContact predicateForContactsMatchingPhoneNumber:v12];
  v70 = 0;
  v58 = v11;
  v59 = v9;
  v14 = [v9 unifiedContactsMatchingPredicate:v13 keysToFetch:v11 error:&v70];
  v15 = v70;
  v16 = [v14 firstObject];

  v60 = v15;
  if (v15)
  {
    v17 = GAXLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v74 = v15;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Error fetching contact matching phone number: %@", buf, 0xCu);
    }

    goto LABEL_28;
  }

  if (!v16)
  {
    v27 = [CNContact predicateForContactsMatchingEmailAddress:v6];
    v65 = 0;
    v28 = [v59 unifiedContactsMatchingPredicate:v27 keysToFetch:v58 error:&v65];
    v60 = v65;
    v16 = [v28 firstObject];

    if (!v16)
    {
      v38 = 0;
      v40 = 0;
      v41 = 0;
      goto LABEL_35;
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v17 = [v16 emailAddresses];
    v29 = [v17 countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (!v29)
    {
      goto LABEL_28;
    }

    v30 = v29;
    v54 = v16;
    v20 = 0;
    v31 = *v62;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v62 != v31)
        {
          objc_enumerationMutation(v17);
        }

        v33 = *(*(&v61 + 1) + 8 * i);
        v34 = [v33 value];
        v35 = [v34 isEqualToString:v6];

        if (v35)
        {
          v36 = [v33 label];

          v20 = v36;
        }
      }

      v30 = [v17 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v30);
LABEL_26:
    v16 = v54;
    goto LABEL_29;
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v17 = [v16 phoneNumbers];
  v18 = [v17 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v18)
  {
    v19 = v18;
    v54 = v16;
    v20 = 0;
    v21 = *v67;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v67 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v66 + 1) + 8 * j);
        v24 = [v23 value];
        v25 = [v24 isEqual:v12];

        if (v25)
        {
          v26 = [v23 label];

          v20 = v26;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v19);
    v60 = 0;
    goto LABEL_26;
  }

  v60 = 0;
LABEL_28:
  v20 = 0;
LABEL_29:

  if (!v16)
  {
    v41 = 0;
    v40 = 0;
    v38 = 0;
    if (v20)
    {
      goto LABEL_33;
    }

LABEL_35:
    v42 = 0;
    goto LABEL_36;
  }

  v37 = [v16 callAlert];
  v38 = [v37 sound];

  v39 = [v16 callAlert];
  v40 = [v39 vibration];

  v41 = [CNContactFormatter stringFromContact:v16 style:0];
  if (!v20)
  {
    goto LABEL_35;
  }

LABEL_33:
  v42 = [CNLabeledValue localizedStringForLabel:v20];

LABEL_36:
  v43 = [[TLAlertConfiguration alloc] initWithType:1];
  v44 = v43;
  if (v38)
  {
    [v43 setToneIdentifier:v38];
  }

  if (v40)
  {
    [v44 setVibrationIdentifier:v40];
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
    v46 = v6;
  }

  v47 = [v46 copy];
  v55 = v38;
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

  v52 = [(GAXUIServer *)v56 _showAlertWithText:v47 subtitleText:v48 iconImage:v51 asBanner:1 isUrgent:1 duration:5.0];
  [(GAXUIServer *)v56 setIncomingCallAlertIdentifier:v52];
  [(GAXUIServer *)v56 setIncomingCallType:0];

  v7 = v57;
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

- (id)_unarchivedPathMappingWithData:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
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
  v5 = [(GAXUIServer *)self _clientMessenger];
  [v5 sendAsynchronousMessage:v4 withIdentifier:2 targetAccessQueue:0 completion:0];
}

- (void)_interestAreaViewControllerInterfaceOrientationDidUpdate:(int64_t)a3
{
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v4 = [[NSDictionary alloc] initWithObjectsAndKeys:{v6, @"active interface orientation", 0}];
  v5 = [(GAXUIServer *)self _clientMessenger];
  [v5 sendAsynchronousMessage:v4 withIdentifier:2 targetAccessQueue:0 completion:0];
}

- (id)_preparedOverlayUserInterfaceViewController
{
  v3 = [(GAXUIServer *)self overlayActiveContentViewController];
  if (!v3)
  {
    v3 = objc_opt_new();
    v4 = [v3 view];
    [v4 setUserInteractionEnabled:1];

    [(GAXUIServer *)self setOverlayActiveContentViewController:v3];
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

  return v3;
}

- (BOOL)shouldShowCancelButtonForPasscodeViewController:(id)a3
{
  v3 = +[AXSpringBoardServer server];
  v4 = [v3 isSystemAppFrontmost];

  return v4 ^ 1;
}

- (void)passcodeViewController:(id)a3 passcodeViewIsVisible:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 view];
  v7 = [v6 window];
  v8 = [v7 _contextId];

  v14 = [NSNumber numberWithUnsignedInteger:v8];
  v9 = [NSDictionary alloc];
  v10 = [NSNumber numberWithBool:v4];
  v11 = [v9 initWithObjectsAndKeys:{v10, @"passcode is visible", v14, @"passcode window context ID", 0}];

  v12 = [(GAXUIServer *)self _clientMessenger];
  [v12 sendAsynchronousMessage:v11 withIdentifier:16 targetAccessQueue:0 completion:0];

  if (!v4)
  {
    v13 = [(GAXUIServer *)self overlayActiveContentViewController];
    [v13 didDismissModalViewController];

    [(GAXUIServer *)self setPasscodeViewController:0];
  }
}

- (void)passcodeViewController:(id)a3 wasDismissedWithReason:(int64_t)a4
{
  [(GAXUIServer *)self setLastPasscodeViewDismissalReason:a4];
  [(GAXUIServer *)self setShouldHideAllAlerts:0];
  if (a4 > 2)
  {
    if (a4 == 5)
    {
      goto LABEL_18;
    }

    if (a4 != 3)
    {
LABEL_17:
      v9 = [NSNumber numberWithInteger:a4];
      v10 = [[NSDictionary alloc] initWithObjectsAndKeys:{v9, @"passcode view dismissal reason", 0}];
      v11 = [(GAXUIServer *)self _clientMessenger];
      v12 = +[AXAccessQueue mainAccessQueue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_61FC;
      v17[3] = &unk_5CD70;
      v17[4] = self;
      v17[5] = a4;
      [v11 sendAsynchronousMessage:v10 withIdentifier:17 targetAccessQueue:v12 completion:v17];

      goto LABEL_18;
    }
  }

  else if (a4 != 1)
  {
    if (a4 == 2)
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
      v19 = a4;
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
    if (a4 == 1)
    {
      v16 = @"failed";
    }

    *buf = 138412290;
    v19 = v16;
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

- (void)passcodeViewController:(id)a3 didFinishSettingUpPasscode:(id)a4
{
  v5 = a4;
  v7 = [[NSDictionary alloc] initWithObjectsAndKeys:{v5, @"passcode", 0}];

  v6 = [(GAXUIServer *)self _clientMessenger];
  [v6 sendAsynchronousMessage:v7 withIdentifier:18 targetAccessQueue:0 completion:0];
}

- (void)getPasscodeLengthWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(GAXUIServer *)self _clientMessenger];
  v6 = +[AXAccessQueue mainAccessQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_64C0;
  v8[3] = &unk_5CB28;
  v9 = v4;
  v7 = v4;
  [v5 sendAsynchronousMessage:&__NSDictionary0__struct withIdentifier:20 targetAccessQueue:v6 completion:v8];
}

- (void)passcodeViewController:(id)a3 isPasscode:(id)a4 correctWithCompletionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[NSDictionary alloc] initWithObjectsAndKeys:{v8, @"passcode", 0}];

  v10 = [(GAXUIServer *)self _clientMessenger];
  v11 = +[AXAccessQueue mainAccessQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_666C;
  v13[3] = &unk_5CB28;
  v14 = v7;
  v12 = v7;
  [v10 sendAsynchronousMessage:v9 withIdentifier:19 targetAccessQueue:v11 completion:v13];
}

- (int64_t)activeInterfaceOrientationForPasscodeViewController:(id)a3
{
  v3 = +[UIWindow _applicationKeyWindow];
  v4 = [v3 windowScene];
  v5 = [v4 interfaceOrientation];

  return v5;
}

- (void)interestAreaViewController:(id)a3 willRotateToInterfaceOrientation:(int64_t)a4 duration:(double)a5
{
  v7 = a3;
  v8 = [(GAXUIServer *)self _rotationContextForInterestAreaViewController:v7];
  v9 = v8 >> 8;
  if ((v8 >> 8))
  {
    v10 = v8;
    v11 = [(GAXUIServer *)self interestAreaPathsForStorageForRotatingView];
    if (!v11)
    {
      v11 = objc_opt_new();
      [(GAXUIServer *)self setInterestAreaPathsForStorageForRotatingView:v11];
    }

    v12 = [NSNumber numberWithUnsignedInteger:a4];
    v13 = [NSNumber numberWithBool:0];
    [v11 setObject:v13 forKey:v12];

    if ((v10 & 0x10000) != 0)
    {
      [v7 setAllowsDimmingInterestAreaPaths:0 animated:1];
    }

    if ((v10 & 0x1000000) != 0)
    {
      v14 = [v7 interestAreaView];
      [v14 setSpecialControlsVisible:0 animated:1];
    }

    v15 = [[NSDictionary alloc] initWithObjectsAndKeys:{v12, @"interface orientation", 0}];
    v16 = [(GAXUIServer *)self _clientMessenger];
    v17 = +[AXAccessQueue mainAccessQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_6968;
    v20[3] = &unk_5CD98;
    v20[4] = self;
    v21 = v11;
    v22 = v12;
    v23 = v7;
    v24 = v10;
    v25 = v9;
    v26 = BYTE2(v10);
    v27 = BYTE3(v10);
    v28 = BYTE4(v10);
    v18 = v12;
    v19 = v11;
    [v16 sendAsynchronousMessage:v15 withIdentifier:26 targetAccessQueue:v17 completion:v20];
  }
}

- (void)interestAreaViewController:(id)a3 didRotateFromInterfaceOrientation:(int64_t)a4
{
  v9 = a3;
  -[GAXUIServer _interestAreaViewControllerInterfaceOrientationDidUpdate:](self, "_interestAreaViewControllerInterfaceOrientationDidUpdate:", [v9 interfaceOrientation]);
  v5 = [(GAXUIServer *)self _rotationContextForInterestAreaViewController:v9];
  if (v5)
  {
    [(GAXUIServer *)self _adjustContentsGeometryOfInterestAreaViewWithController:v9];
  }

  if ((v5 & 0x100) != 0)
  {
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 interfaceOrientation]);
    v7 = [(GAXUIServer *)self interestAreaPathsForStorageForRotatingView];
    v8 = [v7 objectForKey:v6];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [(GAXUIServer *)self _applyInterestAreaPathsForStorage:v8 toInterestAreaViewController:v9 andFadeInterestAreaPathsIn:(v5 >> 16) & 1 fadeInterestAreaSpecialControlsIn:(v5 >> 24) & 1 notifyClientOfReplacedInterestAreaPathsDuringSession:HIDWORD(v5) & 1];
    }

    [v7 removeObjectForKey:v6];
    if (![v7 count])
    {
      [(GAXUIServer *)self setInterestAreaPathsForStorageForRotatingView:0];
    }
  }
}

- (void)archiveInterestAreaPathsForStorageInterestAreaViewController:(id)a3
{
  v4 = a3;
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 interfaceOrientation]);
  v5 = [v4 interestAreaPathsForStorage];

  v6 = [(GAXUIServer *)self _archiveInterestAreaPathsForStorage:v5];

  v7 = [[NSDictionary alloc] initWithObjectsAndKeys:{v9, @"interface orientation", v6, @"interest area paths for storage", 0}];
  v8 = [(GAXUIServer *)self _clientMessenger];
  [v8 sendAsynchronousMessage:v7 withIdentifier:27 targetAccessQueue:0 completion:0];
}

- (id)_unmanagedASAMRestrictedFeaturesForStyle:(int64_t)a3
{
  if (a3 == 3)
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

- (id)_unmanagedASAMRestrictionDictionaryForStyle:(int64_t)a3
{
  v5 = +[NSMutableDictionary dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(GAXUIServer *)self _unmanagedASAMRestrictedFeaturesForStyle:a3, 0];
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

- (void)applyUnmanagedASAMRestrictionsForStyle:(int64_t)a3 managedConfigurationSettings:(id)a4
{
  v6 = a4;
  v7 = [(GAXUIServer *)self managedConfigurationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6FF8;
  block[3] = &unk_5CDC0;
  v10 = v6;
  v11 = self;
  v12 = a3;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)removeUnmanagedASAMRestrictions
{
  v2 = [(GAXUIServer *)self managedConfigurationQueue];
  dispatch_async(v2, &stru_5CDE0);
}

- (void)_changeUnmanagedASAMRestrictionStateEnabled:(BOOL)a3 style:(int64_t)a4 managedConfigurationSettings:(id)a5
{
  v6 = a3;
  v8 = a5;
  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 1 && v6)
  {
    v9 = GAXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_338FC();
    }
  }

  if (v6)
  {
    [(GAXUIServer *)self applyUnmanagedASAMRestrictionsForStyle:a4 managedConfigurationSettings:v8];
  }

  else
  {
    [(GAXUIServer *)self removeUnmanagedASAMRestrictions];
  }
}

- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = 0;
  if (a4 <= 14)
  {
    if (a4 <= 4)
    {
      switch(a4)
      {
        case 1uLL:
          v15 = [v10 objectForKey:@"gax backboard state"];
          memset(buf, 0, 28);
          [v15 getBytes:buf length:28];
          gaxStateAccessQueue = self->_gaxStateAccessQueue;
          v55[0] = _NSConcreteStackBlock;
          v55[1] = 3221225472;
          v55[2] = sub_7BE4;
          v55[3] = &unk_5CE08;
          v55[4] = self;
          v56[0] = *buf;
          *(v56 + 12) = *&buf[12];
          dispatch_sync(gaxStateAccessQueue, v55);
          v46 = [v10 objectForKey:@"time restriction did expire"];
          v47 = [v46 BOOLValue];

          if (v47)
          {
            v48 = [v10 objectForKey:@"time restriction duration"];
            v49 = [v48 integerValue] * 60.0;

            [(GAXUIServer *)self _showTimeRestrictionsLockoutViewWithAppTimeRestrictionDuration:v49];
          }

          break;
        case 3uLL:
          v15 = [v10 objectForKey:@"session application identifiers"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v15 = 0;
          }

          [(GAXUIServer *)self setSessionApplicationIdentifiers:v15];
          break;
        case 4uLL:
          v15 = [v10 objectForKey:@"gax backboard state"];
          memset(buf, 0, 28);
          [v15 getBytes:buf length:28];
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

    if (a4 <= 6)
    {
      if (a4 == 5)
      {
        v25 = [v10 objectForKey:@"alert is banner"];
        v26 = [v25 BOOLValue];

        v27 = [v10 objectForKey:@"alert is urgent"];
        v28 = [v27 BOOLValue];

        v29 = [v10 objectForKey:@"alert time restriction remaining time"];
        v30 = [v10 objectForKey:@"alert text type"];
        v31 = [v30 unsignedIntegerValue];

        v32 = [v10 objectForKey:@"alert remaining lockout duration"];
        [v32 doubleValue];
        v34 = v33;

        v35 = [v10 objectForKey:@"application name"];
        [(GAXUIServer *)self _showAlertWithType:v31 AsBanner:v26 isUrgent:v28 timeRestrictionRemainingTime:v29 remainingLockoutDuration:v35 effectiveApplicationDisplayName:v34];
      }

      else
      {
        v13 = [v10 objectForKey:@"new passcode length"];
        v14 = [v13 unsignedIntegerValue];

        [(GAXUIServer *)self _presentPasscodeViewControllerForSetup:1 passcodeLength:v14];
      }

      goto LABEL_59;
    }

    if (a4 != 7)
    {
      if (a4 != 14)
      {
        goto LABEL_60;
      }

      if (![(GAXUIServer *)self shouldHideAllAlerts])
      {
        [(GAXUIServer *)self setShouldHideAllAlerts:1];
        [(GAXUIServer *)self setShouldHideAllAlerts:0];
      }

      v15 = +[AXUIDisplayManager sharedDisplayManager];
      v21 = [(GAXUIServer *)self deviceRestrictedAlertIdentifier];
      if (v21)
      {
        [v15 hideAlertWithIdentifier:v21 forService:self];
      }

      v22 = GAXLocString(@"DEVICE_IS_RESTRICTED");
      v23 = [v15 showAlertWithText:v22 subtitleText:0 iconImage:0 type:0 priority:30 duration:self forService:AXUIAlertDisplayTimeForever];
      [(GAXUIServer *)self setDeviceRestrictedAlertIdentifier:v23];

      goto LABEL_58;
    }

    v36 = GAXLogCommon();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Received request to show passcode view for verification.", buf, 2u);
    }

    v37 = [(GAXUIServer *)self passcodeViewController];
    v38 = [v37 isPasscodeViewVisible];

    if (!v38)
    {
      v50 = [(GAXUIServer *)self passiveInterestAreaViewController];
      v15 = v50;
      if (v50)
      {
        [v50 setAllowsDimmingInterestAreaPaths:0 animated:1];
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
    if (a4 <= 31)
    {
      if (a4 > 28)
      {
        if (a4 == 29)
        {
          v43 = [v10 objectForKey:@"time restriction duration"];
          v44 = [v43 integerValue] * 60.0;

          [(GAXUIServer *)self _showTimeRestrictionsLockoutViewWithAppTimeRestrictionDuration:v44];
        }

        else
        {
          if (a4 != 30)
          {
            goto LABEL_60;
          }

          [(GAXUIServer *)self _hideTimeRestrictionsLockoutView];
        }

        goto LABEL_59;
      }

      if (a4 != 15)
      {
        if (a4 != 21)
        {
          goto LABEL_60;
        }

        UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
        goto LABEL_59;
      }

      v15 = [(GAXUIServer *)self deviceRestrictedAlertIdentifier];
      if (v15)
      {
        v41 = +[AXUIDisplayManager sharedDisplayManager];
        [v41 hideAlertWithIdentifier:v15 forService:self];

        [(GAXUIServer *)self setDeviceRestrictedAlertIdentifier:0];
      }

      goto LABEL_58;
    }

    if (a4 <= 37)
    {
      if (a4 != 32)
      {
        if (a4 != 36)
        {
          goto LABEL_60;
        }

        v15 = [v10 objectForKeyedSubscript:@"restrictions enabled"];
        v16 = [v15 BOOLValue];
        v17 = [v10 objectForKeyedSubscript:@"autonomous single app mode style"];
        v18 = [v17 integerValue];
        v19 = [v10 objectForKeyedSubscript:@"autonomous single app MC settings"];
        [(GAXUIServer *)self _changeUnmanagedASAMRestrictionStateEnabled:v16 style:v18 managedConfigurationSettings:v19];

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

      v24 = [(GAXUIServer *)self biometricManager];
      [v24 startBiometricAuthentication];
LABEL_49:

LABEL_59:
      v12 = 0;
      goto LABEL_60;
    }

    if (a4 == 38 || a4 == 40)
    {
      v24 = +[NSNotificationCenter defaultCenter];
      [v24 postNotificationName:GAXClearLiveCaptionsNotification object:0];
      goto LABEL_49;
    }
  }

LABEL_60:
  if (a6)
  {
    *a6 = 0;
  }

  return v12;
}

- (void)_confirmUnmanagedASAMWithApplicationDisplayName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GAXUIServer *)self activeContentViewController];

  if (v8)
  {
    (*(v7 + 2))(v7, &off_61740, 0);
  }

  else
  {
    if (!v6)
    {
      v6 = GAXLocString(@"APP_SELF_LOCK_UNKNOWN_APP_NAME");
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
    v18 = self;
    v19 = v7;
    v11 = [(GAXUnmanagedASAMViewController *)v10 initWithApplicationDisplayName:v6 resultHandler:&v14];
    [(GAXUIServer *)self setUnmanagedASAMConfirmationViewController:v11, v14, v15, v16, v17, v18];

    v12 = +[AXUIDisplayManager sharedDisplayManager];
    v13 = [(GAXUIServer *)self unmanagedASAMConfirmationViewController];
    [v12 addContentViewController:v13 withUserInteractionEnabled:1 forService:self context:0 completion:0];
  }
}

- (void)processMessageAsynchronously:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 <= 10)
  {
    switch(a4)
    {
      case 8uLL:
        v33 = [v10 objectForKey:@"session application identifiers"];
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

        v35 = [v10 objectForKey:@"server mode for disabling telephony"];
        v36 = [v35 unsignedIntegerValue];

        [(GAXUIServer *)self _disableTelephonyIfNeededForMode:v36];
        [v10 objectForKey:@"gax backboard state"];
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
        v38 = [v10 objectForKey:@"time restriction duration"];
        -[GAXUIServer setAppTimeRestrictionDurationInMinutes:](self, "setAppTimeRestrictionDurationInMinutes:", [v38 integerValue]);

        v39 = [v10 objectForKey:@"time restrictions enabled"];
        -[GAXUIServer setAppTimeRestrictionsEnabled:](self, "setAppTimeRestrictionsEnabled:", [v39 BOOLValue]);

        v40 = [v10 objectForKey:@"application name"];
        [(GAXUIServer *)self setAppName:v40];

        v41 = [v10 objectForKey:@"archived application icon"];
        v94 = v11;
        if (v41)
        {
          v42 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v41 error:0];
          [(GAXUIServer *)self setAppIcon:v42];
        }

        else
        {
          [(GAXUIServer *)self setAppIcon:0];
        }

        v70 = [v10 objectForKey:@"restriction identifiers"];
        [(GAXUIServer *)self setAppRestrictionIdentifiers:v70];

        v71 = [v10 objectForKey:@"states for restrictions"];
        [(GAXUIServer *)self setStatesForAppRestrictions:v71];

        v72 = [v10 objectForKey:@"texts for restrictions"];
        [(GAXUIServer *)self setTextsForAppRestrictions:v72];

        v73 = [v10 objectForKey:@"detail texts for restrictions"];
        [(GAXUIServer *)self setDetailTextsForAppRestrictions:v73];

        v74 = [v10 objectForKey:@"previous server mode"];
        v75 = [v74 unsignedIntegerValue];

        v76 = [v10 objectForKey:@"interest area paths for storage"];
        v77 = [(GAXUIServer *)self _unarchivedPathMappingWithData:v76];

        v78 = [(GAXUIServer *)self identifierOfVisibleRegularAlert];
        if (v78)
        {
          v79 = +[AXUIDisplayManager sharedDisplayManager];
          [v79 hideAlertWithIdentifier:v78 forService:self];

          [(GAXUIServer *)self setIdentifierOfVisibleRegularAlert:0];
        }

        v80 = [(GAXUIServer *)self styleProvider];
        v81 = [(GAXUIServer *)self _preparedOverlayUserInterfaceViewController];
        v82 = [[GAXWorkspaceViewController alloc] initWithOverlayUserInterfaceViewController:v81];
        [(GAXWorkspaceViewController *)v82 setUserInterfaceServer:self];
        [(GAXWorkspaceViewController *)v82 setStyleProvider:v80];
        [(GAXWorkspaceViewController *)v82 setUsesResumeNavigationTitles:v75 == 2];
        v83 = [(GAXWorkspaceViewController *)v82 interestAreaViewController];
        [v83 setInterestAreaPathsForStorage:v77];

        [(GAXUIServer *)self setPassiveInterestAreaViewController:0];
        [(GAXUIServer *)self setActiveContentViewController:v82];
        (*(v12 + 2))(v12, 0, 0);

        break;
      case 9uLL:
        v49 = [v10 objectForKey:@"previous server mode"];
        v50 = [v49 unsignedIntegerValue];

        v51 = [(GAXUIServer *)self activeContentViewController];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          _AXAssert();
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v50)
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
          v114 = v12;
          [v51 transitionInWithContext:v52 completion:v113];
        }

        goto LABEL_63;
      case 0xAuLL:
        v94 = v11;
        v23 = [v10 objectForKey:@"server mode for disabling telephony"];
        v24 = [v23 unsignedIntegerValue];

        v25 = [v10 objectForKey:@"profile configuration"];
        v26 = [v25 unsignedIntegerValue];

        [(GAXUIServer *)self _disableTelephonyIfNeededForMode:v24];
        [(GAXUIServer *)self setNumberOfBannerAlertsShownRecently:0];
        v27 = [(GAXUIServer *)self activeContentViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v91 = v26;
        v92 = v27;
        if (isKindOfClass)
        {
          v29 = v27;
          v30 = [v29 interestAreaViewController];
          v31 = [v30 interestAreaPathsForStorage];
        }

        else
        {
          v53 = [v10 objectForKey:@"interest area paths for storage"];
          v31 = [(GAXUIServer *)self _unarchivedPathMappingWithData:v53];

          v29 = 0;
          v30 = 0;
        }

        v54 = objc_opt_new();
        v55 = [(GAXUIServer *)self styleProvider];
        [v54 setStyleProvider:v55];

        [v54 setEditing:0];
        if (v30)
        {
          v56 = [v30 interestAreaView];
          [v56 contentsBounds];
          v58 = v57;
          v60 = v59;
          v62 = v61;
          v64 = v63;
          v65 = [v54 interestAreaView];
          [v65 setContentsBounds:{v58, v60, v62, v64}];

          v66 = [v30 interestAreaView];
          [v66 contentsCornerRadius];
          v68 = v67;
          v69 = [v54 interestAreaView];
          [v69 setContentsCornerRadius:v68];
        }

        else
        {
          [(GAXUIServer *)self _adjustContentsGeometryOfInterestAreaViewWithController:v54];
        }

        [v54 setInterestAreaPathsForStorage:v31];
        v84 = [(GAXUIServer *)self allowsTouch];
        v85 = v84;
        if (v29)
        {
          v86 = 0;
        }

        else
        {
          v86 = v84;
        }

        [v54 setAllowsDimmingInterestAreaPaths:v86];
        [v54 setBackgroundShouldCoverEverything:v85 ^ 1];
        v104[0] = _NSConcreteStackBlock;
        v104[1] = 3221225472;
        v104[2] = sub_8BA8;
        v104[3] = &unk_5CE80;
        v111 = v91;
        v105 = v10;
        v106 = self;
        v87 = v54;
        v107 = v87;
        v112 = isKindOfClass & 1;
        v88 = v31;
        v108 = v88;
        v89 = v29;
        v109 = v89;
        v110 = v12;
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

    v11 = v94;
    goto LABEL_63;
  }

  if (a4 > 12)
  {
    if (a4 == 13)
    {
      v17 = [(GAXUIServer *)self activeContentViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v17;
      }

      else
      {
        v45 = 0;
      }

      v46 = [v45 usesResumeNavigationTitles];
      [(GAXUIServer *)self setActiveContentViewController:0];
      [(GAXUIServer *)self _rotateDeviceToCurrentOrientation];
      if (v46)
      {
        v47 = GAXLocString(@"SESSION_ENDED");
        v48 = [(GAXUIServer *)self _showAlertWithText:v47 subtitleText:0 iconImage:0 asBanner:0 isUrgent:0 duration:2.1];
      }

      (*(v12 + 2))(v12, 0, 0);
      goto LABEL_53;
    }

    if (a4 == 35)
    {
      v32 = [v10 objectForKey:@"application name"];
      [(GAXUIServer *)self _confirmUnmanagedASAMWithApplicationDisplayName:v32 completion:v12];
    }
  }

  else
  {
    if (a4 != 11)
    {
      v13 = [v10 objectForKey:@"session application identifiers"];
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

      v15 = [v10 objectForKey:@"should restore telephony"];
      v16 = [v15 BOOLValue];

      if (v16)
      {
        [(GAXUIServer *)self _restoreTelephony];
      }

      v17 = [(GAXUIServer *)self activeContentViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v20 = [v19 usesResumeNavigationTitles];
      v97[0] = _NSConcreteStackBlock;
      v97[1] = 3221225472;
      v97[2] = sub_8E90;
      v97[3] = &unk_5CEA8;
      v21 = v19;
      v98 = v21;
      v99 = self;
      v101 = v20;
      v100 = v12;
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

    v43 = [(GAXUIServer *)self allowsTouch];
    v44 = [(GAXUIServer *)self passiveInterestAreaViewController];
    [v44 setAllowsDimmingInterestAreaPaths:v43];

    [(GAXUIServer *)self setActiveContentViewController:0];
    (*(v12 + 2))(v12, 0, 0);
  }

LABEL_63:
}

- (void)processInitializationMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"gax backboard state"];
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
  v7 = [v4 objectForKey:@"session application identifiers"];

  v8 = v7;
  AXPerformBlockOnMainThread();
}

- (void)alertWithIdentifierDidAppear:(id)a3
{
  v5 = a3;
  v4 = [(GAXUIServer *)self identifiersOfBannerAlertsAboutToAppear];
  if ([v4 containsObject:v5])
  {
    [v4 removeObject:v5];
    if (![v4 count])
    {
      [(GAXUIServer *)self setIdentifiersOfBannerAlertsAboutToAppear:0];
    }

    [(GAXUIServer *)self setNumberOfBannerAlertsShownRecently:[(GAXUIServer *)self numberOfBannerAlertsShownRecently]+ 1];
  }
}

- (void)alertWithIdentifierDidDisappear:(id)a3
{
  v11 = a3;
  v4 = [(GAXUIServer *)self identifiersOfVisibleBannerAlerts];
  [v4 removeObject:v11];
  if (![v4 count])
  {
    [(GAXUIServer *)self setIdentifiersOfVisibleBannerAlerts:0];
  }

  v5 = [(GAXUIServer *)self identifierOfVisibleRegularAlert];
  v6 = [v5 isEqualToString:v11];

  if (v6)
  {
    [(GAXUIServer *)self setIdentifierOfVisibleRegularAlert:0];
  }

  v7 = [(GAXUIServer *)self incomingCallAlertIdentifier];
  v8 = [v7 isEqualToString:v11];

  if (v8)
  {
    [(GAXUIServer *)self setIncomingCallAlertIdentifier:0];
    [(GAXUIServer *)self setIncomingCallType:0];
  }

  v9 = [(GAXUIServer *)self lockoutAlertIdentifier];
  v10 = [v9 isEqualToString:v11];

  if (v10)
  {
    [(GAXUIServer *)self setLockoutAlertIdentifier:0];
  }
}

- (double)desiredWindowLevelForAlertWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(GAXUIServer *)self lockoutAlertIdentifier];
  v6 = [v5 isEqualToString:v4];

  result = 10000005.0;
  if (v6)
  {
    return 10000007.0;
  }

  return result;
}

- (id)styleProviderForAlertWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(GAXUIServer *)self incomingCallAlertIdentifier];
  v6 = [v5 isEqualToString:v4];

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

- (double)desiredWindowLevelForContentViewController:(id)a3 userInteractionEnabled:(BOOL)a4
{
  v5 = a3;
  v6 = [(GAXUIServer *)self activeContentViewController];

  if (v6 == v5)
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
    v7 = [(GAXUIServer *)self overlayActiveContentViewController];
    v8 = v7 == v5;

    v9 = dbl_41EE0[v8];
  }

  return v9;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[AXUIDisplayManager sharedDisplayManager];
  if (v13 == v11 && [v10 isEqualToString:@"activeInterfaceOrientation"])
  {
    [(GAXUIServer *)self _notifyClientOfUpdatedActiveInterfaceOrientation];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = GAXUIServer;
    [(GAXUIServer *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)biometricManager:(id)a3 attemptWasSuccessful:(BOOL)a4
{
  v4 = a4;
  v6 = GAXLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Biometric monitor attempt was successful: %i.", buf, 8u);
  }

  if (v4)
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

  v9 = [(GAXUIServer *)self _clientMessenger];
  v11 = @"passcode view dismissal reason";
  v12 = v7;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v9 sendAsynchronousMessage:v10 withIdentifier:v8 targetAccessQueue:0 completion:0];
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