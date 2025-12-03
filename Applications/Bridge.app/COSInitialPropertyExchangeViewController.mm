@interface COSInitialPropertyExchangeViewController
+ (BOOL)controllerNeedsToRun;
- (BOOL)holdBeforeDisplaying;
- (COSBuddyControllerDelegate)delegate;
- (id)holdActivityIdentifier;
- (id)localizedWaitScreenDescription;
- (void)_evaluatePendingTasksAfterActivationCompletedOrDeferredForUserResponse;
- (void)activationDeferredForUserAction;
- (void)addActivationObservers;
- (void)beginActivationIfPossible;
- (void)completedActivationPhase;
- (void)completedHoldTasks;
- (void)completedInitialProperyExchangePhase;
- (void)didEstablishHold;
- (void)endPerformancePhases;
- (void)enteredCompatibilityState:(id)state;
- (void)evaluateCanReleaseHold;
- (void)setDelegate:(id)delegate;
- (void)tellWatchToDoLanguageAndLocalePrep;
- (void)watchDidSelectLanguageAndLocale:(unsigned __int16)locale;
@end

@implementation COSInitialPropertyExchangeViewController

+ (BOOL)controllerNeedsToRun
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  compatibilityState = [v2 compatibilityState];

  v4 = +[UIApplication sharedApplication];
  isActivated = [v4 isActivated];

  activeWatch = [UIApp activeWatch];
  v7 = sub_10002D234(activeWatch);

  v8 = +[UIApplication sharedApplication];
  isLanguageAndLocaleFinished = [v8 isLanguageAndLocaleFinished];

  if (compatibilityState < 3)
  {
    return 1;
  }

  if (isActivated)
  {
    if (!(isLanguageAndLocaleFinished & 1 | ((v7 & 1) == 0)))
    {
      return 1;
    }

    goto LABEL_7;
  }

  objc_opt_class();
  v11 = sub_100057C44();
  result = 1;
  if (v11 && ((v7 ^ 1 | isLanguageAndLocaleFinished) & 1) != 0)
  {
LABEL_7:
    bridgeController = [UIApp bridgeController];
    [bridgeController sendComputedTimeZoneToGizmo];

    return 0;
  }

  return result;
}

- (BOOL)holdBeforeDisplaying
{
  if (PBLogPerformanceMetrics())
  {
    v3 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    holdActivityIdentifier = [(COSInitialPropertyExchangeViewController *)self holdActivityIdentifier];
    [v3 beginMacroActivity:holdActivityIdentifier beginTime:CFAbsoluteTimeGetCurrent()];
  }

  return 1;
}

- (void)didEstablishHold
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057D80;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)evaluateCanReleaseHold
{
  v3 = +[UIApplication sharedApplication];
  isActivated = [v3 isActivated];

  activeWatch = [UIApp activeWatch];
  v6 = sub_10002D234(activeWatch);

  v7 = +[UIApplication sharedApplication];
  isLanguageAndLocaleFinished = [v7 isLanguageAndLocaleFinished];

  if (isActivated)
  {
    if (!(isLanguageAndLocaleFinished & 1 | ((v6 & 1) == 0)))
    {
      return;
    }
  }

  else
  {
    objc_opt_class();
    if (!sub_100057C44() || ((v6 ^ 1 | isLanguageAndLocaleFinished) & 1) == 0)
    {
      return;
    }
  }

  v9 = pbb_setupflow_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[COSInitialPropertyExchangeViewController evaluateCanReleaseHold]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: releasing hold", &v10, 0xCu);
  }

  [(COSInitialPropertyExchangeViewController *)self completedHoldTasks];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification;
  [v4 addObserver:self selector:"enteredCompatibilityState:" name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  compatibilityState = [v6 compatibilityState];

  if (compatibilityState - 3 > 1)
  {
    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "IPE has begun observing for Compatibility State Changes", v11, 2u);
    }
  }

  else
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:v5 object:0];

    self->_canBeginActivating = 1;
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IPE determined NR is in Config/Normal state, continuing...", buf, 2u);
    }

    [(COSInitialPropertyExchangeViewController *)self completedInitialProperyExchangePhase];
  }
}

- (void)enteredCompatibilityState:(id)state
{
  userInfo = [state userInfo];
  v5 = [userInfo objectForKeyedSubscript:NRPairedDeviceRegistryCompatibilityStateKey];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = unsignedIntValue;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IPE: Entered Compatibility State: %d", v9, 8u);
  }

  if (unsignedIntValue == 3)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

    self->_canBeginActivating = 1;
    [(COSInitialPropertyExchangeViewController *)self completedInitialProperyExchangePhase];
  }
}

- (id)localizedWaitScreenDescription
{
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if (isTinkerPairing)
  {
    v6 = @"INITIAL_PROPERTY_EXCHANGE_HOLD_DESCRIPTION_TINKER";
    v7 = @"Localizable-tinker";
  }

  else
  {
    v6 = @"INITIAL_PROPERTY_EXCHANGE_HOLD_DESCRIPTION";
    v7 = @"Localizable";
  }

  v8 = [v4 localizedStringForKey:v6 value:&stru_10026E598 table:v7];

  return v8;
}

- (id)holdActivityIdentifier
{
  activeWatch = [UIApp activeWatch];
  if (sub_10002D234(activeWatch))
  {
    v3 = @"InitialPropertyExchange-LanguageLocale";
  }

  else
  {
    v3 = @"InitialPropertyExchange";
  }

  v4 = v3;

  return v3;
}

- (void)addActivationObservers
{
  if (!self->_registeredActivationObservers)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"completedActivationPhase" name:PBBridgeGizmoDidFinishActivatingNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"activationDeferredForUserAction" name:@"COSActivationResponseManagerStashedALFlowNotification" object:0];

    self->_registeredActivationObservers = 1;
  }
}

- (void)completedInitialProperyExchangePhase
{
  v3 = +[UIApplication sharedApplication];
  isActivated = [v3 isActivated];

  setupController = [UIApp setupController];
  pairingReportManager = [setupController pairingReportManager];

  [pairingReportManager addPairingTimeEventToPairingReportPlist:68 withValue:&__kCFBooleanTrue withError:0];
  v7 = pbb_setupflow_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    objc_opt_class();
    v8 = [NSNumber numberWithBool:sub_100057C44()];
    v9 = [NSNumber numberWithBool:isActivated];
    *buf = 138412546;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "completedInitialProperyExchangePhase. Activation State: (activationNeedsResponse %@ / activated %@)", buf, 0x16u);
  }

  bridgeController = [UIApp bridgeController];
  [bridgeController sendComputedTimeZoneToGizmo];

  objc_opt_class();
  if ((sub_100057C44() | isActivated))
  {
    objc_opt_class();
    if (isActivated & 1 | ((sub_100057C44() & 1) == 0))
    {
      if (isActivated)
      {
        [(COSInitialPropertyExchangeViewController *)self completedActivationPhase];
      }
    }

    else
    {
      [(COSInitialPropertyExchangeViewController *)self activationDeferredForUserAction];
    }
  }

  else
  {
    [(COSInitialPropertyExchangeViewController *)self addActivationObservers];
    [(COSInitialPropertyExchangeViewController *)self beginActivationIfPossible];
  }

  v11 = +[UIApplication sharedApplication];
  activeWatch = [v11 activeWatch];

  v13 = [activeWatch valueForProperty:NRDevicePropertyPairingID];
  v14 = [activeWatch valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
  v15 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano" pairingID:v13 pairingDataStore:v14];
  synchronize = [v15 synchronize];
  v17 = [v15 BOOLForKey:@"invertUI"];
  v18 = +[UIApplication sharedApplication];
  bridgeController2 = [v18 bridgeController];
  [bridgeController2 tellGizmoToSetCrownOrientationRight:v17 ^ 1];

  v20 = pbb_setupflow_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = @"com.apple.nano";
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "syncing %@", buf, 0xCu);
  }

  v21 = +[UIApplication sharedApplication];
  isLanguageAndLocaleFinished = [v21 isLanguageAndLocaleFinished];

  v23 = [[NSUUID alloc] initWithUUIDString:@"3A6A41CC-1427-4F81-88F4-82365AA10C82"];
  if (![activeWatch supportsCapability:v23] || (isLanguageAndLocaleFinished & 1) != 0)
  {
  }

  else
  {
    v24 = sub_10002D234(activeWatch);

    if (v24)
    {
      [(COSInitialPropertyExchangeViewController *)self tellWatchToDoLanguageAndLocalePrep];
    }
  }
}

- (void)beginActivationIfPossible
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSNumber numberWithBool:self->_canBeginActivating];
    v5 = [NSNumber numberWithBool:self->_didBeginActivating];
    v17 = 138412546;
    v18 = v4;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(IPE) beginActivationIfPossible? _canBeginActivating %@ / _didBeginActivating %@", &v17, 0x16u);
  }

  if (self->_didBeginActivating)
  {
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v7 = "(IPE) already activating";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v17, 2u);
    }
  }

  else if (self->_canBeginActivating)
  {
    if (PBLogPerformanceMetrics())
    {
      v8 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v8 endMacroActivity:PBBridgeGizmoPairingActivityName beginTime:CFAbsoluteTimeGetCurrent()];
      v10 = v9;

      [PBBridgeCAReporter pushTimingType:1 withValue:v10];
      v11 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
      [v11 beginMacroActivity:PBBridgeProxyActivationStageOneActivityName beginTime:CFAbsoluteTimeGetCurrent()];
    }

    v12 = pbb_setupflow_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(IPE) did begin activation", &v17, 2u);
    }

    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [v13 BOOLForKey:@"__SkipReachabilityChecks"];

    v6 = pbb_setupflow_log();
    v15 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v15)
      {
        LOWORD(v17) = 0;
        v7 = "(IPE) Internal Flow Skipping Reachability Checks.";
        goto LABEL_16;
      }
    }

    else
    {
      if (v15)
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(IPE) Tell Gizmo We're Ready To Try Activating", &v17, 2u);
      }

      self->_didBeginActivating = 1;
      v6 = +[UIApplication sharedApplication];
      bridgeController = [v6 bridgeController];
      [bridgeController tellGizmoToBeginActivation];
    }
  }

  else
  {
    v6 = pbb_setupflow_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v7 = "(IPE) Still awaiting NRPairedDeviceRegistryDeviceDidBeginActivation / NRCompatibilityStateConfigure...";
      goto LABEL_16;
    }
  }
}

- (void)_evaluatePendingTasksAfterActivationCompletedOrDeferredForUserResponse
{
  activeWatch = [UIApp activeWatch];
  v4 = sub_10002D234(activeWatch);

  if (v4 && (+[UIApplication sharedApplication](UIApplication, "sharedApplication"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isLanguageAndLocaleFinished], v5, !v6))
  {

    [(COSInitialPropertyExchangeViewController *)self tellWatchToDoLanguageAndLocalePrep];
  }

  else
  {

    [(COSInitialPropertyExchangeViewController *)self completedHoldTasks];
  }
}

- (void)activationDeferredForUserAction
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSInitialPropertyExchangeViewController activationDeferredForUserAction]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(COSInitialPropertyExchangeViewController *)self _evaluatePendingTasksAfterActivationCompletedOrDeferredForUserResponse];
}

- (void)completedActivationPhase
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSInitialPropertyExchangeViewController completedActivationPhase]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(COSInitialPropertyExchangeViewController *)self _evaluatePendingTasksAfterActivationCompletedOrDeferredForUserResponse];
}

- (void)tellWatchToDoLanguageAndLocalePrep
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[COSInitialPropertyExchangeViewController tellWatchToDoLanguageAndLocalePrep]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (!self->_sentLanguageAndLocaleUpdate)
  {
    v4 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
    v5 = [[NSUUID alloc] initWithUUIDString:@"61A9519E-E0F5-4F71-9CA4-33AC4A444B44"];
    v6 = [v4 supportsCapability:v5];

    v7 = +[UIApplication sharedApplication];
    bridgeController = [v7 bridgeController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100058DD4;
    v9[3] = &unk_1002696A8;
    v9[4] = self;
    [bridgeController tellWatchLanguagesAndLocaleSupportingTermOfAddress:v6 withCompletion:v9];

    self->_sentLanguageAndLocaleUpdate = 1;
  }
}

- (void)watchDidSelectLanguageAndLocale:(unsigned __int16)locale
{
  localeCopy = locale;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[COSInitialPropertyExchangeViewController watchDidSelectLanguageAndLocale:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v14, 0xCu);
  }

  v6 = +[UIApplication sharedApplication];
  isActivated = [v6 isActivated];

  if (isActivated)
  {
    v8 = pbb_setupflow_log();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      [(COSInitialPropertyExchangeViewController *)self completedHoldTasks];
      return;
    }

    LOWORD(v14) = 0;
    v9 = "Activated and Completed language change...";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v14, 2u);
    goto LABEL_7;
  }

  if (localeCopy == 2)
  {
    v10 = pbb_setupflow_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ask again for Activation post-language change relaunch!", &v14, 2u);
    }

    v11 = +[UIApplication sharedApplication];
    setupController = [v11 setupController];

    [setupController tellWatchAgainToUpdateNRToNormalStateAfterRelaunchingForLanguageChange];
    activationManager = [setupController activationManager];
    [activationManager clearActivationState];

    self->_didBeginActivating = 0;
    [(COSInitialPropertyExchangeViewController *)self addActivationObservers];
    [(COSInitialPropertyExchangeViewController *)self beginActivationIfPossible];
  }

  else
  {
    objc_opt_class();
    if (sub_100057C44())
    {
      v8 = pbb_setupflow_log();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      LOWORD(v14) = 0;
      v9 = "Complete IPE Pane, move on and show AL Challenge later.";
      goto LABEL_6;
    }
  }
}

- (void)endPerformancePhases
{
  if (PBLogPerformanceMetrics())
  {
    holdActivityIdentifier = [(COSInitialPropertyExchangeViewController *)self holdActivityIdentifier];
    v3 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
    [v3 endMacroActivity:holdActivityIdentifier beginTime:CFAbsoluteTimeGetCurrent()];
    v5 = v4;

    [PBBridgeCAReporter pushTimingForTypeNamed:holdActivityIdentifier withValue:v5];
  }
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)completedHoldTasks
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[COSInitialPropertyExchangeViewController completedHoldTasks]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  v4 = +[UIApplication sharedApplication];
  isActivated = [v4 isActivated];

  if (isActivated)
  {
    v6 = +[UIApplication sharedApplication];
    setupController = [v6 setupController];
    [setupController startPostActivationCompatiblePairingBackgroundTasks];
  }

  sub_10018788C(self);
  [(COSInitialPropertyExchangeViewController *)self endPerformancePhases];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained buddyControllerIsBeingHeldOff:self];

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 buddyControllerReleaseHoldAndSkip:self];
  }
}

@end