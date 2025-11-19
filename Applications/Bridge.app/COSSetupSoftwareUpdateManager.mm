@interface COSSetupSoftwareUpdateManager
- (COSBuddyController)controller;
- (id)getVersionUpdatedFrom;
- (void)cleanupAfterRestoreSuccess;
- (void)completedActivation:(id)a3;
- (void)consistencyCheckInstall;
- (void)displayUpdatePane;
- (void)enteredCompatibilityState:(id)a3;
- (void)evaluateUpdateCriteria;
- (void)saveVersionUpdateFrom:(id)a3;
- (void)sendPairingFailedNotification;
- (void)startUpdateInSetupWithController:(id)a3 forcedUpdateOrUpdateInBackup:(BOOL)a4 completion:(id)a5;
@end

@implementation COSSetupSoftwareUpdateManager

- (void)startUpdateInSetupWithController:(id)a3 forcedUpdateOrUpdateInBackup:(BOOL)a4 completion:(id)a5
{
  self->_forcedUpdateOrUpdateInBackup = a4;
  v7 = a3;
  v8 = objc_retainBlock(a5);
  finishCompletion = self->_finishCompletion;
  self->_finishCompletion = v8;

  v10 = [UIApp setupController];
  v11 = [v10 pairingReportManager];

  [v11 addPairingTimeEventToPairingReportPlist:57 withValue:&__kCFBooleanTrue withError:0];
  objc_storeWeak(&self->_controller, v7);

  [(COSSetupSoftwareUpdateManager *)self evaluateUpdateCriteria];
}

- (void)evaluateUpdateCriteria
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 isActivated];

  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = "[COSSetupSoftwareUpdateManager evaluateUpdateCriteria]";
    v43 = 1024;
    *v44 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s, activated: %{BOOL}d", buf, 0x12u);
  }

  v6 = +[NRPairedDeviceRegistry sharedInstance];
  v7 = [v6 compatibilityState];

  v8 = v7 & 0xFFFE;
  v9 = pbb_bridge_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v42 = "[COSSetupSoftwareUpdateManager evaluateUpdateCriteria]";
    v43 = 1024;
    *v44 = v8 == 2;
    *&v44[4] = 1024;
    *&v44[6] = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s, reached valid compatibility state: %{BOOL}d - %hu", buf, 0x18u);
  }

  v10 = [UIApp setupController];
  v11 = v10;
  if (v8 == 2)
  {
    if (v4)
    {
      v12 = [v10 navigationController];
      WeakRetained = [v12 topViewController];

      v14 = objc_opt_class();
      if ([v14 isEqual:objc_opt_class()])
      {
        v15 = pbb_bridge_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v42 = "[COSSetupSoftwareUpdateManager evaluateUpdateCriteria]";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: Spinner is the top controller, nil spinner", buf, 0xCu);
        }

        connectSpinner = self->_connectSpinner;
        self->_connectSpinner = 0;
      }

      v17 = +[NSNotificationCenter defaultCenter];
      [v17 removeObserver:self name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

      v18 = +[NSNotificationCenter defaultCenter];
      [v18 removeObserver:self name:PBBridgeGizmoDidFinishActivatingNotification object:0];

      if (!self->_displayingUpdatePane)
      {
        self->_displayingUpdatePane = 1;
        v19 = [UIApp activeWatch];
        v20 = [v19 valueForProperty:NRDevicePropertySystemBuildVersion];
        v21 = [(COSSetupSoftwareUpdateManager *)self getVersionUpdatedFrom];
        v22 = pbb_bridge_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v42 = v21;
          v43 = 2112;
          *v44 = v20;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Previous Version: %@ buildVersion: %@", buf, 0x16u);
        }

        if (v21 && ([v20 isEqualToString:v21] & 1) == 0 && v7 == 3)
        {
          v23 = pbb_bridge_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found previous version that is different than current version, resuming crash monitoring and finishing the update tasks", buf, 2u);
          }

          v24 = +[UIApplication sharedApplication];
          v25 = [v24 setupController];
          v26 = [v25 linkUpgradeMonitor];
          [v26 requestLinkUpgrade];

          v27 = +[NRPairedDeviceRegistry sharedInstance];
          [v27 resumePairingClientCrashMonitoring];

          [(COSSetupSoftwareUpdateManager *)self cleanupAfterRestoreSuccess];
          finishCompletion = self->_finishCompletion;
          if (finishCompletion)
          {
            (*(finishCompletion + 2))(finishCompletion, 0, 0, 0);
          }
        }

        else
        {
          [(COSSetupSoftwareUpdateManager *)self saveVersionUpdateFrom:v20];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10002092C;
          block[3] = &unk_1002682F0;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
        }
      }

LABEL_30:

      goto LABEL_31;
    }

LABEL_23:
    if (!self->_observingActivation)
    {
      self->_observingActivation = 1;
      v29 = +[NSNotificationCenter defaultCenter];
      [v29 addObserver:self selector:"completedActivation:" name:PBBridgeGizmoDidFinishActivatingNotification object:0];

      v30 = pbb_bridge_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v42 = "[COSSetupSoftwareUpdateManager evaluateUpdateCriteria]";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s, push COSActivationViewController", buf, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained(&self->_controller);
      v31 = [WeakRetained delegate];
      v32 = objc_loadWeakRetained(&self->_controller);
      [v31 buddyControllerDone:v32 nextControllerClass:objc_opt_class()];

      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (!self->_observingCompatibilityChanges)
  {
    self->_observingCompatibilityChanges = 1;
    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:self selector:"enteredCompatibilityState:" name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

    v34 = [COSSpinnerPageController alloc];
    v35 = +[NSBundle mainBundle];
    v36 = [v35 localizedStringForKey:@"INITIAL_PROPERTY_EXCHANGE_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];
    v37 = [(COSSpinnerPageController *)v34 initWithLabel:v36];
    v38 = self->_connectSpinner;
    self->_connectSpinner = v37;

    v39 = [v11 navigationController];
    [v39 pushViewController:self->_connectSpinner animated:1];

    [v11 blockGoingBackFromCurrentController];
    goto LABEL_31;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_31:
}

- (void)cleanupAfterRestoreSuccess
{
  [(COSSetupSoftwareUpdateManager *)self clearVersionUpdatedFrom];
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 setupController];
  v5 = [v4 linkUpgradeMonitor];
  [v5 indicateSoftwareUpdateStateResolved];

  v6 = +[UIApplication sharedApplication];
  v7 = [v6 setupController];
  [v7 startPostActivationCompatiblePairingBackgroundTasks];

  v8 = UIApp;
  [v8 setIsUpdatingGizmoInSetupFlow:0];
  v9 = [v8 bridgeController];

  [v9 setShouldSuppressTransportReachabilityTimeout:0];

  [(COSSetupSoftwareUpdateManager *)self consistencyCheckInstall];
}

- (void)saveVersionUpdateFrom:(id)a3
{
  CFPreferencesSetAppValue(@"kIsUpdatingFromVersionInSetupFlow", a3, @"com.apple.Bridge");

  CFPreferencesAppSynchronize(@"com.apple.Bridge");
}

- (id)getVersionUpdatedFrom
{
  v2 = CFPreferencesCopyAppValue(@"kIsUpdatingFromVersionInSetupFlow", @"com.apple.Bridge");

  return v2;
}

- (void)enteredCompatibilityState:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSSetupSoftwareUpdateManager enteredCompatibilityState:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(COSSetupSoftwareUpdateManager *)self evaluateUpdateCriteria];
}

- (void)completedActivation:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSSetupSoftwareUpdateManager completedActivation:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(COSSetupSoftwareUpdateManager *)self evaluateUpdateCriteria];
}

- (void)displayUpdatePane
{
  v3 = [UIApp setupController];
  if (_os_feature_enabled_impl())
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[COSSetupSoftwareUpdateManager displayUpdatePane]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s resetting link monitor to proceed with update", buf, 0xCu);
    }

    v5 = [UIApp setupController];
    v6 = [v5 linkUpgradeMonitor];
    [v6 resetMonitor];
  }

  [v3 setResolvedPreconditionsForSoftwareUpdate:1];
  v7 = +[NRPairedDeviceRegistry sharedInstance];
  [v7 suspendPairingClientCrashMonitoring];

  [UIApp setIsUpdatingGizmoInSetupFlow:1];
  v8 = [UIApp activeWatch];
  if (!self->_updateController)
  {
    v9 = objc_opt_new();
    updateController = self->_updateController;
    self->_updateController = v9;
  }

  objc_initWeak(buf, self);
  v11 = [UIApp setupController];
  v12 = [v11 pairingCompatiblity];

  if (self->_forcedUpdateOrUpdateInBackup || [v12 requiresZeroDayUpdate])
  {
    v13 = [UIApp bridgeController];
    [v13 tellWatchToPrepareForForcedSUWithCompletion:&stru_100268678];
  }

  v14 = self->_updateController;
  forcedUpdateOrUpdateInBackup = self->_forcedUpdateOrUpdateInBackup;
  v16 = [v3 navigationController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100020F2C;
  v17[3] = &unk_1002686A0;
  objc_copyWeak(&v18, buf);
  [(COSSoftwareUpdateController *)v14 presentInSetupFlowForDevice:v8 userForcedUpdate:forcedUpdateOrUpdateInBackup withController:v16 animated:1 completion:v17];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (void)consistencyCheckInstall
{
  v3 = pbb_setupflow_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = 236;
    v9 = 2080;
    v10 = "[COSSetupSoftwareUpdateManager consistencyCheckInstall]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%d %s - Checking if update in Setup flow has completed", v8, 0x12u);
  }

  v4 = [UIApp activeWatch];
  v5 = [v4 valueForProperty:NRDevicePropertyMaxPairingCompatibilityVersion];
  [v5 integerValue];

  v6 = [v4 valueForProperty:NRDevicePropertyChipID];
  if ((_BPSIsPairingCompatible() & 1) == 0)
  {
    v7 = pbb_setupflow_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10018685C(v7);
    }

    [(COSSetupSoftwareUpdateManager *)self sendPairingFailedNotification];
  }
}

- (void)sendPairingFailedNotification
{
  v2 = +[NSNotificationCenter defaultCenter];
  v4 = @"error";
  v5 = @"Updated to Incompatible Version";
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [v2 postNotificationName:@"COSDevicePairingFailed" object:0 userInfo:v3];
}

- (COSBuddyController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end