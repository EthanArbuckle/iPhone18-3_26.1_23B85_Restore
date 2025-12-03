@interface SCLSetupPrincipleClass
- (BOOL)holdBeforeDisplaying;
- (SCLSetupPrincipleClass)init;
- (id)familyMember;
- (void)_commitViewModel:(id)model toDevice:(id)device retryIfNeeded:(BOOL)needed;
- (void)_unregisterPairingTokens;
- (void)commitViewModel:(id)model;
- (void)dealloc;
- (void)didEstablishHold;
- (void)showSettingsConfiguration;
- (void)skipSettingsConfiguration;
@end

@implementation SCLSetupPrincipleClass

- (SCLSetupPrincipleClass)init
{
  v6.receiver = self;
  v6.super_class = SCLSetupPrincipleClass;
  v2 = [(SCLSetupPrincipleClass *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SCLWelcomeOptinViewController);
    welcomeViewController = v2->_welcomeViewController;
    v2->_welcomeViewController = v3;

    [(SCLWelcomeOptinViewController *)v2->_welcomeViewController setMiniFlowDelegate:v2];
    [(SCLWelcomeOptinViewController *)v2->_welcomeViewController setFlowController:v2];
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SCLSetupPrincipleClass;
  [(SCLSetupPrincipleClass *)&v2 dealloc];
}

- (void)showSettingsConfiguration
{
  if (!self->_listViewController)
  {
    v3 = objc_alloc_init(SCLSetupListViewController);
    listViewController = self->_listViewController;
    self->_listViewController = v3;

    [(SCLSetupListViewController *)self->_listViewController setFlowController:self];
  }

  navigationController = [(SCLSetupPrincipleClass *)self navigationController];
  [navigationController pushViewController:self->_listViewController animated:1];
}

- (void)skipSettingsConfiguration
{
  v3 = scl_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Skip settings configuration", v5, 2u);
  }

  delegate = [(SCLSetupPrincipleClass *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)commitViewModel:(id)model
{
  modelCopy = model;
  isEnabled = [modelCopy isEnabled];
  v6 = scl_setup_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (isEnabled)
  {
    if (v7)
    {
      *buf = 138412290;
      v22 = modelCopy;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Commit view model: %@", buf, 0xCu);
    }

    v8 = objc_alloc_init(NSOperationQueue);
    operationQueue = self->_operationQueue;
    self->_operationQueue = v8;

    [(NSOperationQueue *)self->_operationQueue setQualityOfService:25];
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = NRPairedDeviceRegistryDeviceDidPairNotification;
    v12 = self->_operationQueue;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1420;
    v19[3] = &unk_82B8;
    v19[4] = self;
    v20 = modelCopy;
    v13 = [v10 addObserverForName:v11 object:0 queue:v12 usingBlock:v19];

    [(SCLSetupPrincipleClass *)self setDeviceDidPairToken:v13];
    v14 = +[NSNotificationCenter defaultCenter];
    v15 = self->_operationQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1594;
    v18[3] = &unk_82E0;
    v18[4] = self;
    v16 = [v14 addObserverForName:NRPairedDeviceRegistryDeviceDidFailToPairNotification object:0 queue:v15 usingBlock:v18];

    [(SCLSetupPrincipleClass *)self setPairingDidFailToken:v16];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Commit view model called with a disabled view model - skipping", buf, 2u);
    }
  }

  delegate = [(SCLSetupPrincipleClass *)self delegate];
  [delegate buddyControllerDone:self];
}

- (void)_unregisterPairingTokens
{
  v3 = +[NSNotificationCenter defaultCenter];
  deviceDidPairToken = [(SCLSetupPrincipleClass *)self deviceDidPairToken];
  [v3 removeObserver:deviceDidPairToken];

  v5 = +[NSNotificationCenter defaultCenter];
  pairingDidFailToken = [(SCLSetupPrincipleClass *)self pairingDidFailToken];
  [v5 removeObserver:pairingDidFailToken];

  [(SCLSetupPrincipleClass *)self setDeviceDidPairToken:0];

  [(SCLSetupPrincipleClass *)self setPairingDidFailToken:0];
}

- (void)_commitViewModel:(id)model toDevice:(id)device retryIfNeeded:(BOOL)needed
{
  modelCopy = model;
  deviceCopy = device;
  v10 = [SCLScheduleSettings scheduleSettingsWithViewModel:modelCopy];
  v11 = objc_alloc_init(SCLSchoolModeConfiguration);
  [v11 setIdentifier:@"SchoolTime.Setup"];
  pairingID = [deviceCopy pairingID];
  [v11 setPairingID:pairingID];

  v13 = [[SCLSchoolMode alloc] initWithConfiguration:v11];
  [v13 resume];
  [(SCLSetupPrincipleClass *)self setSchoolMode:v13];
  SCLLogViewModelCommit();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_186C;
  v17[3] = &unk_8330;
  v18 = v10;
  v19 = deviceCopy;
  neededCopy = needed;
  selfCopy = self;
  v21 = modelCopy;
  v14 = modelCopy;
  v15 = deviceCopy;
  v16 = v10;
  [v13 applyScheduleSettings:v16 completion:v17];
}

- (BOOL)holdBeforeDisplaying
{
  v2 = scl_pairing_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "SCLSetupPrincipleClass holdBeforeDisplaying", v4, 2u);
  }

  return 1;
}

- (void)didEstablishHold
{
  v3 = scl_pairing_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "didEstablishHold", &v9, 2u);
  }

  familyMember = [(SCLSetupPrincipleClass *)self familyMember];
  v5 = [(SCLSetupPrincipleClass *)self wantsSetupFlowForFamilyMember:familyMember];
  v6 = scl_pairing_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v9 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ releasing hold", &v9, 0xCu);
    }

    delegate = [(SCLSetupPrincipleClass *)self delegate];
    [delegate buddyControllerReleaseHold:self];
  }

  else
  {
    if (v7)
    {
      v9 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%@ releasing hold and skipping", &v9, 0xCu);
    }

    delegate = [(SCLSetupPrincipleClass *)self delegate];
    [delegate buddyControllerReleaseHoldAndSkip:self];
  }
}

- (id)familyMember
{
  delegate = [(SCLSetupPrincipleClass *)self delegate];
  v3 = delegate;
  if (delegate)
  {
    setupFlowUserInfo = [delegate setupFlowUserInfo];
    v5 = setupFlowUserInfo;
    if (setupFlowUserInfo)
    {
      v6 = [setupFlowUserInfo objectForKey:BPSPairingFlowFamilyMember];
      if (v6)
      {
        goto LABEL_13;
      }

      v7 = scl_pairing_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_2F50(v5, v7);
      }
    }

    else
    {
      v7 = scl_pairing_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_2FC8(v7, v15, v16, v17, v18, v19, v20, v21);
      }

      v6 = 0;
    }
  }

  else
  {
    v5 = scl_pairing_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_3000(v5, v8, v9, v10, v11, v12, v13, v14);
    }

    v6 = 0;
  }

LABEL_13:

  return v6;
}

@end