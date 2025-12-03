@interface FlowController
+ (id)_descriptionForStep:(int)step;
+ (id)_recoveryQueue;
+ (int)_nextStepForUserAuthenticated:(BOOL)authenticated dataVolumeMounted:(BOOL)mounted networkAvailable:(BOOL)available brainLoaded:(BOOL)loaded scanComplete:(BOOL)complete issuesFound:(BOOL)found recoveryComplete:(BOOL)recoveryComplete deviceHasPasscode:(BOOL)self0 deviceHasNetwork:(BOOL)self1 promptForTermsComplete:(BOOL)self2 promptForPasscodeComplete:(BOOL)self3 promptForNetworkComplete:(BOOL)self4 promptForRecoveryComplete:(BOOL)self5 userInfo:(id)self6;
+ (void)start;
- (BOOL)userApprovedDiagnosticsSubmission;
- (FlowController)initWithDeviceRecoveryController:(id)controller viewFactory:(id)factory;
- (FlowController)initWithViewFactory:(id)factory;
- (ViewFactory)viewFactory;
- (int)_nextStepWithUserInfo:(id)info;
- (void)_endFlowWithError:(id)error;
- (void)disableRecoveryAutoBoot;
- (void)performNextStepWithInfo:(id)info;
- (void)reboot;
- (void)rebootToNeRD;
@end

@implementation FlowController

- (FlowController)initWithDeviceRecoveryController:(id)controller viewFactory:(id)factory
{
  controllerCopy = controller;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = FlowController;
  v9 = [(FlowController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deviceRecoveryController, controller);
    objc_storeWeak(&v10->_viewFactory, factoryCopy);
    *&v10->_promptForPasscodeComplete = 0;
  }

  return v10;
}

- (FlowController)initWithViewFactory:(id)factory
{
  factoryCopy = factory;
  v5 = +[DeviceRecoveryController sharedController];
  v6 = [(FlowController *)self initWithDeviceRecoveryController:v5 viewFactory:factoryCopy];

  return v6;
}

+ (void)start
{
  v2 = +[FlowController _recoveryQueue];
  dispatch_async(v2, &stru_100028958);
}

- (void)disableRecoveryAutoBoot
{
  v3 = sub_100012608();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v7 = "[FlowController disableRecoveryAutoBoot]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s: Disabling recovery auto-boot before rebooting", buf, 0xCu);
  }

  v4 = +[FlowController _recoveryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009114;
  block[3] = &unk_100028938;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)performNextStepWithInfo:(id)info
{
  infoCopy = info;
  v5 = [(FlowController *)self _nextStepWithUserInfo:infoCopy];
  v6 = sub_100012608();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [FlowController _descriptionForStep:v5];
    *buf = 136446466;
    v28 = "[FlowController performNextStepWithInfo:]";
    v29 = 2114;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: Performing step: %{public}@.", buf, 0x16u);
  }

  if (v5 <= 4)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          goto LABEL_28;
        }

        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10000982C;
        v26[3] = &unk_100028938;
        v26[4] = self;
        v11 = v26;
      }

      else
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100009D3C;
        v17[3] = &unk_100028938;
        v17[4] = self;
        v11 = v17;
      }
    }

    else
    {
      if (v5 == 2)
      {
        v13 = +[FlowController _recoveryQueue];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10000987C;
        v24[3] = &unk_100028980;
        v24[4] = self;
        v25 = infoCopy;
        dispatch_async(v13, v24);

        goto LABEL_28;
      }

      if (v5 != 3)
      {
        v8 = +[FlowController _recoveryQueue];
        v9 = v8;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100009AE0;
        v23[3] = &unk_100028938;
        v23[4] = self;
        v10 = v23;
        goto LABEL_27;
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100009CEC;
      v18[3] = &unk_100028938;
      v18[4] = self;
      v11 = v18;
    }

    goto LABEL_25;
  }

  if (v5 > 7)
  {
    if (v5 == 8)
    {
      v8 = +[FlowController _recoveryQueue];
      v9 = v8;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100009E30;
      v15[3] = &unk_100028938;
      v15[4] = self;
      v10 = v15;
      goto LABEL_27;
    }

    if (v5 == 9)
    {
      v8 = +[FlowController _recoveryQueue];
      v9 = v8;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100009D8C;
      v16[3] = &unk_100028938;
      v16[4] = self;
      v10 = v16;
      goto LABEL_27;
    }

    if (v5 != 10)
    {
      goto LABEL_28;
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100009B84;
    v22[3] = &unk_100028938;
    v22[4] = self;
    v11 = v22;
LABEL_25:
    dispatch_async(&_dispatch_main_q, v11);
    goto LABEL_28;
  }

  if (v5 == 5)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100009ED4;
    v14[3] = &unk_100028938;
    v14[4] = self;
    v11 = v14;
    goto LABEL_25;
  }

  if (v5 != 6)
  {
    v8 = +[FlowController _recoveryQueue];
    v9 = v8;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100009BF4;
    v21[3] = &unk_100028938;
    v21[4] = self;
    v10 = v21;
LABEL_27:
    dispatch_async(v8, v10);

    goto LABEL_28;
  }

  [infoCopy objectForKeyedSubscript:DeviceRecoveryResultsAttributeRequriedUserApproval];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009C98;
  block[3] = &unk_100028980;
  v20 = block[4] = self;
  v12 = v20;
  dispatch_async(&_dispatch_main_q, block);

LABEL_28:
}

- (void)reboot
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009F98;
  block[3] = &unk_100028938;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)rebootToNeRD
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A1C4;
  block[3] = &unk_100028938;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)userApprovedDiagnosticsSubmission
{
  deviceRecoveryController = [(FlowController *)self deviceRecoveryController];
  userApprovedDiagnosticsSubmission = [deviceRecoveryController userApprovedDiagnosticsSubmission];

  return userApprovedDiagnosticsSubmission;
}

+ (id)_descriptionForStep:(int)step
{
  if ((step - 1) > 9)
  {
    return @"Show Terms and Conditions";
  }

  else
  {
    return off_100028A00[step - 1];
  }
}

- (void)_endFlowWithError:(id)error
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000A4C4;
  v4[3] = &unk_100028980;
  v4[4] = self;
  errorCopy = error;
  v3 = errorCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (int)_nextStepWithUserInfo:(id)info
{
  infoCopy = info;
  deviceRecoveryController = [(FlowController *)self deviceRecoveryController];
  isPasscodeSet = [deviceRecoveryController isPasscodeSet];

  deviceRecoveryController2 = [(FlowController *)self deviceRecoveryController];
  userAuthenticated = [deviceRecoveryController2 userAuthenticated];
  deviceRecoveryController3 = [(FlowController *)self deviceRecoveryController];
  dataVolumeMounted = [deviceRecoveryController3 dataVolumeMounted];
  deviceRecoveryController4 = [(FlowController *)self deviceRecoveryController];
  networkAvailable = [deviceRecoveryController4 networkAvailable];
  deviceRecoveryController5 = [(FlowController *)self deviceRecoveryController];
  recoveryBrainLoaded = [deviceRecoveryController5 recoveryBrainLoaded];
  deviceRecoveryController6 = [(FlowController *)self deviceRecoveryController];
  issuesScanComplete = [deviceRecoveryController6 issuesScanComplete];
  deviceRecoveryController7 = [(FlowController *)self deviceRecoveryController];
  repairableIssuesFound = [deviceRecoveryController7 repairableIssuesFound];
  deviceRecoveryController8 = [(FlowController *)self deviceRecoveryController];
  recoveryComplete = [deviceRecoveryController8 recoveryComplete];
  v9 = +[NetworkMonitor shared];
  networkAvailable2 = [v9 networkAvailable];
  promptForTermsComplete = [(FlowController *)self promptForTermsComplete];
  promptForPasscodeComplete = [(FlowController *)self promptForPasscodeComplete];
  promptForNetworkComplete = [(FlowController *)self promptForNetworkComplete];
  BYTE6(v16) = [(FlowController *)self promptForRecoveryComplete];
  BYTE5(v16) = promptForNetworkComplete;
  BYTE4(v16) = promptForPasscodeComplete;
  BYTE3(v16) = promptForTermsComplete;
  BYTE2(v16) = networkAvailable2;
  BYTE1(v16) = isPasscodeSet;
  LOBYTE(v16) = recoveryComplete;
  v14 = [FlowController _nextStepForUserAuthenticated:"_nextStepForUserAuthenticated:dataVolumeMounted:networkAvailable:brainLoaded:scanComplete:issuesFound:recoveryComplete:deviceHasPasscode:deviceHasNetwork:promptForTermsComplete:promptForPasscodeComplete:promptForNetworkComplete:promptForRecoveryComplete:userInfo:" dataVolumeMounted:userAuthenticated networkAvailable:dataVolumeMounted brainLoaded:networkAvailable scanComplete:recoveryBrainLoaded issuesFound:issuesScanComplete recoveryComplete:repairableIssuesFound deviceHasPasscode:v16 deviceHasNetwork:infoCopy promptForTermsComplete:? promptForPasscodeComplete:? promptForNetworkComplete:? promptForRecoveryComplete:? userInfo:?];

  if (v14 == 5)
  {
    [(FlowController *)self setPromptForNetworkComplete:1];
  }

  return v14;
}

+ (int)_nextStepForUserAuthenticated:(BOOL)authenticated dataVolumeMounted:(BOOL)mounted networkAvailable:(BOOL)available brainLoaded:(BOOL)loaded scanComplete:(BOOL)complete issuesFound:(BOOL)found recoveryComplete:(BOOL)recoveryComplete deviceHasPasscode:(BOOL)self0 deviceHasNetwork:(BOOL)self1 promptForTermsComplete:(BOOL)self2 promptForPasscodeComplete:(BOOL)self3 promptForNetworkComplete:(BOOL)self4 promptForRecoveryComplete:(BOOL)self5 userInfo:(id)self6
{
  foundCopy = found;
  completeCopy = complete;
  loadedCopy = loaded;
  availableCopy = available;
  mountedCopy = mounted;
  v22 = [info objectForKeyedSubscript:DeviceRecoveryResultsAttributeRequriedUserApproval];
  if (termsComplete)
  {
    if (authenticated)
    {
      if (mountedCopy)
      {
        v23 = objc_alloc_init(DeviceRecoveryOverrideClient);
        v24 = [v23 fetchOverride:@"AlwaysShowWiFiPicker"];

        if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          bOOLValue = [v24 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        if ((((availableCopy | networkComplete) ^ 1) & (!network | bOOLValue)) != 0)
        {
          v27 = 3;
        }

        else
        {
          v27 = 5;
        }

        if (loadedCopy)
        {
          v28 = 8;
        }

        else
        {
          v28 = 7;
        }

        if ((networkComplete & ~availableCopy) != 0)
        {
          v28 = 4;
        }

        if (!foundCopy || recoveryComplete)
        {
          v29 = 10;
        }

        else
        {
          v29 = 9;
        }

        if (v22)
        {
          v30 = 6;
        }

        else
        {
          v30 = v29;
        }

        if (!completeCopy)
        {
          v30 = v28;
        }

        if (!loadedCopy)
        {
          v30 = v28;
        }

        if ((networkComplete & ~availableCopy & 1) == 0)
        {
          v28 = v30;
        }

        if (!forRecoveryComplete)
        {
          v28 = v27;
        }

        if (((availableCopy | networkComplete) ^ 1) & (!network | bOOLValue))
        {
          v26 = v27;
        }

        else
        {
          v26 = v28;
        }
      }

      else
      {
        v24 = 0;
        v26 = 10;
      }
    }

    else
    {
      v24 = 0;
      if (!passcode || passcodeComplete)
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }
    }
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  return v26;
}

+ (id)_recoveryQueue
{
  if (qword_100032158 != -1)
  {
    sub_100012CAC();
  }

  v3 = qword_100032160;

  return v3;
}

- (ViewFactory)viewFactory
{
  WeakRetained = objc_loadWeakRetained(&self->_viewFactory);

  return WeakRetained;
}

@end