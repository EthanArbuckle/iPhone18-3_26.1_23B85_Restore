@interface COSScanningCoordinator
- (BOOL)checkIfShouldUpdateInRevLockFlowForWatchPairingVersion:(unint64_t)a3 watchChipID:(id)a4;
- (COSScanningCoordinatorDelegate)delegate;
- (int)registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5;
- (void)_nanoRegistryHPPairingComplete;
- (void)_nanoRegistryManualPairingComplete;
- (void)beginNanoRegistryPair;
- (void)continueWithFetchingExtendedMetadataFromNanoRegistryWithIDContext:(id)a3;
- (void)didBeginToPair:(id)a3;
- (void)discoveryDidTimeout;
- (void)enteredCompatibilityState:(id)a3;
- (void)nanoRegistryPairingComplete:(BOOL)a3;
- (void)nanoRegistryStatusChanged:(id)a3;
- (void)pairingRequestAttempted:(id)a3;
- (void)receivedWatchPairingExtendedMetadata:(id)a3 withIDContext:(id)a4;
- (void)startObservingCompatibilityState;
- (void)startPairingWithScannedCode:(id)a3;
- (void)stopObservingCompatibilityState;
@end

@implementation COSScanningCoordinator

- (void)startPairingWithScannedCode:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DEC6C;
  v6[3] = &unk_1002684D0;
  objc_copyWeak(&v9, &location);
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)continueWithFetchingExtendedMetadataFromNanoRegistryWithIDContext:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[NRPairedDeviceRegistry sharedInstance];
  deviceSetupName = self->_deviceSetupName;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DF624;
  v8[3] = &unk_10026B828;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  [v5 waitForWatchPairingExtendedMetadataForAdvertisedName:deviceSetupName completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)receivedWatchPairingExtendedMetadata:(id)a3 withIDContext:(id)a4
{
  v6 = a4;
  v7 = UIApp;
  v8 = a3;
  v9 = [v7 setupController];
  v10 = [v9 pairingCompatiblity];

  [v10 setCompatiblityCriteriaWithMetadata:v8 scannedPairingVersion:self->_pairingVersionFromCode];
  if ([v10 blockTinkerPairing])
  {
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100189F80();
    }

    v12 = [(COSScanningCoordinator *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(COSScanningCoordinator *)self delegate];
      [v14 scanningCoordinatorDidDetectUnsupportedTinkerHardware:self];
LABEL_11:

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (![v10 blockYorktownPairing])
  {
    if ([v10 pairingShouldContinue])
    {
      v18 = +[COSBackupManager sharedBackupManager];
      v19 = [v6 osVersionString];
      [v18 setMinWatchOSVersion:v19];

      v20 = +[NSNotificationCenter defaultCenter];
      [v20 addObserver:self selector:"didBeginToPair:" name:NRPairedDeviceRegistryDeviceDidBeginPairingNotification object:0];

      v21 = +[NSNotificationCenter defaultCenter];
      [v21 addObserver:self selector:"pairingRequestAttempted:" name:NRPairedDeviceRegistryDeviceDidReceiveBTPairingRequestNotification object:0];

      if (sub_10002D16C())
      {
        v22 = +[COSInternalUserStudyDataManager sharedManager];
        [v22 setSize:{objc_msgSend(v6, "size")}];
        [v22 setMaterial:{objc_msgSend(v6, "material")}];

        v23 = 1;
      }

      else
      {
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1000DFD4C;
        v40[3] = &unk_10026B850;
        v40[4] = self;
        self->_pairingStartedNotificationToken = [(COSScanningCoordinator *)self registerNotifyTokenWithName:@"com.apple.nanoregistry.isbeginningtopair" withQueue:&_dispatch_main_q withBlock:v40];
        v28 = +[NRPairedDeviceRegistry sharedInstance];
        v29 = [v28 status];

        v23 = v29 == 2;
      }

      v30 = +[NSUserDefaults standardUserDefaults];
      v31 = [v30 BOOLForKey:@"LiveOnCollection"];

      if ((v31 & 1) == 0)
      {
        v32 = [NSTimer timerWithTimeInterval:self target:"discoveryDidTimeout" selector:0 userInfo:0 repeats:60.0];
        discoveryTimeoutTimer = self->_discoveryTimeoutTimer;
        self->_discoveryTimeoutTimer = v32;

        v34 = +[NSRunLoop currentRunLoop];
        [v34 addTimer:self->_discoveryTimeoutTimer forMode:NSRunLoopCommonModes];
      }

      if (v23)
      {
        [(COSScanningCoordinator *)self beginNanoRegistryPair];
LABEL_28:
        v36 = +[PBBridgeResponsePerformanceMonitor shareMonitor];
        [v36 endMacroActivity:@"COSGizmoCaptureViewControllerScanningPhase" beginTime:CFAbsoluteTimeGetCurrent()];
        v38 = v37;

        [PBBridgeCAReporter pushTimingType:0 withValue:v38];
        goto LABEL_29;
      }

      v35 = pbb_setupflow_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Waiting for NR to be ready (Process Code)...", v39, 2u);
      }

      v27 = +[NSNotificationCenter defaultCenter];
      [v27 addObserver:self selector:"nanoRegistryStatusChanged:" name:NRPairedDeviceRegistryStatusDidChange object:0];
    }

    else
    {
      v24 = pbb_setupflow_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Gizmo is Ahead", v39, 2u);
      }

      [PBBridgeCAReporter recordEndOfLifePhoneAlertPresented:0];
      v25 = [(COSScanningCoordinator *)self delegate];
      v26 = objc_opt_respondsToSelector();

      if ((v26 & 1) == 0)
      {
        goto LABEL_28;
      }

      v27 = [(COSScanningCoordinator *)self delegate];
      [v27 scanningCoordinatorDidDetectUnsupportedCompanionSoftware:self];
    }

    goto LABEL_28;
  }

  v15 = pbb_setupflow_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100189F4C();
  }

  v16 = [(COSScanningCoordinator *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v14 = [(COSScanningCoordinator *)self delegate];
    [v14 scanningCoordinatorDidDetectUnsupportedYorktownHardware:self];
    goto LABEL_11;
  }

LABEL_29:
}

- (void)beginNanoRegistryPair
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    deviceSetupName = self->_deviceSetupName;
    *buf = 138412290;
    v31 = deviceSetupName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Tell NR to pair with device named %@", buf, 0xCu);
  }

  v5 = [UIApp setupController];
  v6 = [v5 pairingReportManager];

  [v6 addPairingTimeEventToPairingReportPlist:8 withValue:&__kCFBooleanTrue withError:0];
  self->_pairingStarted = 1;
  if (self->_deviceSetupName)
  {
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stop waiting for NR to be ready. (We're Pairing)", buf, 2u);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:NRPairedDeviceRegistryStatusDidChange object:0];

    v9 = [UIApp setupController];
    v10 = [v9 pairingReportManager];

    [v10 addPairingTimeEventToPairingReportPlist:8 withValue:&__kCFBooleanTrue withError:0];
    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [v11 BOOLForKey:@"LiveOnCollection"];

    v13 = sub_10002D16C();
    v14 = pbb_setupflow_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if ((v13 | v12))
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "User Study Testing skipping pairing...", buf, 2u);
      }

      if ((sub_10002D088() > 0) | v12 & 1)
      {
        v16 = [(COSScanningCoordinator *)self delegate];
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          v18 = [(COSScanningCoordinator *)self delegate];
          [v18 scanningCoordinatorDidCompleteForInternalUserStudyFlow:self];
        }
      }

      else
      {
        [(COSScanningCoordinator *)self nanoRegistryPairingComplete];
      }
    }

    else
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Kick off pairing...", buf, 2u);
      }

      kdebug_trace();
      v19 = [UIApp bridgeController];
      v28[0] = NRPairOptionGizmoPairingVersion;
      v20 = [NSNumber numberWithUnsignedInteger:self->_pairingVersionFromCode];
      v29[0] = v20;
      v28[1] = NRPairOptionIsAltAccountGizmo;
      v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v19 isTinkerPairing]);
      v29[1] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];

      objc_initWeak(buf, self);
      v23 = +[NRPairedDeviceRegistry sharedInstance];
      v24 = self->_deviceSetupName;
      v25 = PBOOBDataFromHexString();
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000E0238;
      v26[3] = &unk_100269E20;
      objc_copyWeak(&v27, buf);
      [v23 companionOOBDiscoverAndPairWithName:v24 withOutOfBandPairingKey:v25 withOptions:v22 operationHasBegun:v26];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }
  }
}

- (void)nanoRegistryPairingComplete:(BOOL)a3
{
  v3 = a3;
  v5 = pbb_setupflow_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[COSScanningCoordinator nanoRegistryPairingComplete:]";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s manual pairing %{BOOL}d", &v7, 0x12u);
  }

  [(COSScanningCoordinator *)self stopObservingCompatibilityState];
  [(NSTimer *)self->_discoveryTimeoutTimer invalidate];
  discoveryTimeoutTimer = self->_discoveryTimeoutTimer;
  self->_discoveryTimeoutTimer = 0;

  if (v3)
  {
    [(COSScanningCoordinator *)self _nanoRegistryManualPairingComplete];
  }

  else
  {
    [(COSScanningCoordinator *)self _nanoRegistryHPPairingComplete];
  }
}

- (void)_nanoRegistryManualPairingComplete
{
  v3 = [(COSScanningCoordinator *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(COSScanningCoordinator *)self delegate];
    [v5 scanningCoordinatorDidCompleteForManualPairing:self];
  }
}

- (void)_nanoRegistryHPPairingComplete
{
  v3 = [(COSScanningCoordinator *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(COSScanningCoordinator *)self delegate];
    [v5 scanningCoordinatorDidFinishPairing:self];
  }
}

- (void)startObservingCompatibilityState
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSScanningCoordinator startObservingCompatibilityState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  if (!self->_registeredForCompatibilityState)
  {
    self->_registeredForCompatibilityState = 1;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"enteredCompatibilityState:" name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];
  }
}

- (void)stopObservingCompatibilityState
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSScanningCoordinator stopObservingCompatibilityState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  if (self->_registeredForCompatibilityState)
  {
    self->_registeredForCompatibilityState = 0;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];
  }
}

- (void)didBeginToPair:(id)a3
{
  v4 = a3;
  kdebug_trace();
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:NRPairedDeviceRegistryDeviceDidBeginPairingNotification object:0];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:NRPairedDeviceRegistryDevice];

  v8 = pbb_setupflow_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    deviceSetupName = self->_deviceSetupName;
    v10 = [v7 valueForProperty:NRDevicePropertyAdvertisedName];
    v11 = 138412546;
    v12 = deviceSetupName;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Began to pair with %@ -- %@", &v11, 0x16u);
  }
}

- (void)pairingRequestAttempted:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[COSScanningCoordinator pairingRequestAttempted:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v15, 0xCu);
  }

  kdebug_trace();
  pairingStartedNotificationToken = self->_pairingStartedNotificationToken;
  if (pairingStartedNotificationToken != -1)
  {
    notify_cancel(pairingStartedNotificationToken);
    self->_pairingStartedNotificationToken = -1;
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:NRPairedDeviceRegistryDeviceDidReceiveBTPairingRequestNotification object:0];

  [(COSScanningCoordinator *)self nanoRegistryPairingComplete];
  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 doubleForKey:@"AlreadyPairedFiredTimeStamp"];
  v9 = v8;

  if (v9 > 0.0)
  {
    v10 = CFAbsoluteTimeGetCurrent() - v9;
    v11 = pbb_setupflow_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [NSNumber numberWithDouble:v10];
      v15 = 138412290;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Already Paired Detector] Successful Attempt took: %@.", &v15, 0xCu);
    }

    [PBBridgeCAReporter recordAlreadyPairedAlertFiredAndWatchRecovered:v10];
    v13 = +[NSUserDefaults standardUserDefaults];
    [v13 removeObjectForKey:@"AlreadyPairedFiredTimeStamp"];
  }

  v14 = +[NRPairedDeviceRegistry sharedInstance];
  [v14 notifyPairingShouldContinue];
}

- (void)nanoRegistryStatusChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:NRPairedDeviceRegistryStatusKey];

  v6 = pbb_setupflow_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    deviceSetupName = self->_deviceSetupName;
    v17 = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = deviceSetupName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "(Scanning Coordinator) NR Status Changed to %@ // Device name: %@", &v17, 0x16u);
  }

  v8 = [(COSScanningCoordinator *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0 || (-[COSScanningCoordinator delegate](self, "delegate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isViewControllerVisibleForScanningCoordinator:self], v10, (v11 & 1) == 0))
  {
    v12 = pbb_setupflow_log();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:

      v14 = +[NSNotificationCenter defaultCenter];
      [v14 removeObserver:self name:NRPairedDeviceRegistryStatusDidChange object:0];
LABEL_16:

      goto LABEL_17;
    }

    LOWORD(v17) = 0;
    v13 = "(Scanning Coordinator) No longer visible, skipping actions and removing observer";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v17, 2u);
    goto LABEL_15;
  }

  if (v5)
  {
    if ([v5 integerValue] == 2)
    {
      if (self->_deviceSetupName && ![(COSScanningCoordinator *)self hasStartedPairing])
      {
        [(COSScanningCoordinator *)self beginNanoRegistryPair];
      }

      v12 = pbb_setupflow_log();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      LOWORD(v17) = 0;
      v13 = "(Scanning Coordinator) Stops waiting for NR to be ready. (Changed To Ready)";
      goto LABEL_14;
    }

    if (![(COSScanningCoordinator *)self hasStartedPairing])
    {
      v15 = [(COSScanningCoordinator *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v14 = [(COSScanningCoordinator *)self delegate];
        [v14 scanningCoordinatorDidUnpair:self];
        goto LABEL_16;
      }
    }
  }

LABEL_17:
}

- (void)enteredCompatibilityState:(id)a3
{
  v4 = a3;
  v5 = [(COSScanningCoordinator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(COSScanningCoordinator *)self delegate];
    v8 = [v7 isManualPairingVisibleForScanningCoordinator:self];

    if (v8)
    {
      v9 = [v4 userInfo];
      v10 = NRPairedDeviceRegistryDevice;
      v11 = [v9 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];
      v12 = [v9 objectForKeyedSubscript:NRPairedDeviceRegistryCompatibilityStateKey];
      v13 = [v12 unsignedIntValue];

      v14 = pbb_setupflow_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 134217984;
        v31 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "COSScanningCoordinator: NR enteredCompatibilityState %ld", &v30, 0xCu);
      }

      if ((v13 & 0xFFFE) == 0)
      {
        goto LABEL_25;
      }

      v15 = [v9 objectForKeyedSubscript:v10];
      v16 = [v15 valueForProperty:NRDevicePropertySystemVersion];
      v17 = [v16 copy];

      v18 = [UIApp setupController];
      v19 = [v18 pairingCompatiblity];

      [v19 setCompatiblityCriteriaWithDevice:v15];
      if ([v19 blockTinkerPairing])
      {
        v20 = pbb_setupflow_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10018A098();
        }

        v21 = [(COSScanningCoordinator *)self delegate];
        v22 = objc_opt_respondsToSelector();

        if ((v22 & 1) == 0)
        {
          goto LABEL_24;
        }

        v23 = [(COSScanningCoordinator *)self delegate];
        [v23 scanningCoordinatorDidDetectUnsupportedTinkerHardware:self];
        goto LABEL_23;
      }

      if ([v19 blockYorktownPairing])
      {
        v24 = pbb_setupflow_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10018A064();
        }

        v25 = [(COSScanningCoordinator *)self delegate];
        v26 = objc_opt_respondsToSelector();

        if ((v26 & 1) == 0)
        {
          goto LABEL_24;
        }

        v23 = [(COSScanningCoordinator *)self delegate];
        [v23 scanningCoordinatorDidDetectUnsupportedYorktownHardware:self];
        goto LABEL_23;
      }

      if ([v19 pairingShouldContinue])
      {
        if ([v19 pairingShouldContinue])
        {
          if ([v19 failSafeUpdateRequested])
          {
            v27 = [UIApp bridgeController];
            [v27 tellWatchToPrepareForForcedSUWithCompletion:&stru_10026B870];
          }

          [(COSScanningCoordinator *)self nanoRegistryPairingComplete:1];
          v23 = +[COSBackupManager sharedBackupManager];
          [v23 setMinWatchOSVersion:v17];
          goto LABEL_23;
        }
      }

      else
      {
        [PBBridgeCAReporter recordEndOfLifePhoneAlertPresented:1];
        v28 = [(COSScanningCoordinator *)self delegate];
        v29 = objc_opt_respondsToSelector();

        if (v29)
        {
          v23 = [(COSScanningCoordinator *)self delegate];
          [v23 scanningCoordinatorDidDetectUnsupportedCompanionSoftware:self];
LABEL_23:
        }
      }

LABEL_24:

LABEL_25:
    }
  }
}

- (void)discoveryDidTimeout
{
  v2 = pbb_setupflow_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Aborted Pairing Between Scanning and BT Pairing Request Attempt", v3, 2u);
  }

  [UIApp resetSetupFlowAnimated:1 forEvent:40];
}

- (int)registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  out_token = -1;
  v10 = [v7 UTF8String];
  if (v9)
  {
    if (!notify_register_dispatch(v10, &out_token, v8, v9))
    {
      goto LABEL_8;
    }
  }

  else if (!notify_register_check(v10, &out_token))
  {
    goto LABEL_8;
  }

  v11 = pbb_setupflow_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_10018A0CC(v7, v11);
  }

LABEL_8:
  v12 = out_token;

  return v12;
}

- (BOOL)checkIfShouldUpdateInRevLockFlowForWatchPairingVersion:(unint64_t)a3 watchChipID:(id)a4
{
  if (_BPSIsPairingCompatible())
  {
    return 0;
  }

  v6 = +[NRPairingCompatibilityVersionInfo systemVersions];
  v7 = [v6 maxPairingCompatibilityVersion];

  return v7 > a3;
}

- (COSScanningCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end