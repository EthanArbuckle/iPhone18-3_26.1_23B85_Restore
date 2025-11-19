@interface TSProximitySIMTransferViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)_deactivate;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)proxCardFlowDidDismiss;
- (void)setIdleTimerDisabled:(BOOL)a3;
- (void)setViewDisappearHandler:(id)a3;
- (void)simSetupFlowCompleted:(unint64_t)a3;
- (void)viewDidLoad;
@end

@implementation TSProximitySIMTransferViewController

- (void)dealloc
{
  [(TSProximitySIMTransferViewController *)self setIdleTimerDisabled:0];
  v3.receiver = self;
  v3.super_class = TSProximitySIMTransferViewController;
  [(TSProximitySIMTransferViewController *)&v3 dealloc];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 userInfo];
  v8 = sub_10000C1BC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v7;
    v24 = 2080;
    v25 = "[TSProximitySIMTransferViewController configureWithContext:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "options:%@ @%s", buf, 0x16u);
  }

  v9 = [v7 objectForKey:TSUserInfoResumeTransferProxCardKey];
  v10 = v9;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v9) = [v10 BOOLValue];
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  self->_isResumeTransferProxCard = v9;
  v11 = [v7 objectForKey:TSUserInfoSupportsSyncTransferResultsKey];
  v12 = v11;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v11) = [v12 BOOLValue];
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  self->_targetSupportsUICapability = v11;
  self->_selectedTransferPlansCount = 0;
  v13 = [v7 objectForKey:TSUserInfokSelectedTransferPlansCountKey];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_selectedTransferPlansCount = [v13 intValue];
    }
  }

  v14 = [v7 objectForKey:TSUserInfoIsPreSharedKeyPresentKey];
  v15 = v14;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v14) = [v15 BOOLValue];
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  self->_isPreSharedKeyPresent = v14;
  v16 = [v7 objectForKeyedSubscript:@"device"];
  if (!v16)
  {
    v17 = sub_10000C1BC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000F32C(v17);
    }
  }

  objc_storeStrong(&self->_peerDeviceInfo, v16);
  v21 = 0;
  v18 = [[CBDevice alloc] initWithDictionary:v16 error:&v21];
  if (!v18)
  {
    v19 = sub_10000C1BC();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000F3B0(v19);
    }
  }

  if (!v6)
  {
    v6 = &stru_10001C8C0;
  }

  v20 = [(TSProximitySIMTransferViewController *)self _remoteViewControllerProxy];
  [v20 setWallpaperTunnelActive:0];
  [v20 setWallpaperStyle:1 withDuration:0.0];
  [v20 setDesiredHardwareButtonEvents:16];
  [v20 setAllowsMenuButtonDismissal:0];
  [v20 setAllowsAlertStacking:1];
  v6->invoke(v6);
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = [v6 userInfo];
  v26[0] = TSUserInfoFlowTypeKey;
  v8 = [NSNumber numberWithUnsignedInteger:TSFlowTypeProximityTransfer];
  v27[0] = v8;
  v27[1] = &__kCFBooleanTrue;
  v26[1] = TSUserInfoIsClientKey;
  v26[2] = TSUserInfoPeerDeviceKey;
  peerDeviceInfo = self->_peerDeviceInfo;
  if (peerDeviceInfo)
  {
    v10 = self->_peerDeviceInfo;
  }

  else
  {
    v10 = +[NSNull null];
  }

  if (self->_isResumeTransferProxCard)
  {
    v11 = &__kCFBooleanTrue;
  }

  else
  {
    v11 = &__kCFBooleanFalse;
  }

  v27[2] = v10;
  v27[3] = v11;
  v26[3] = TSUserInfoResumeTransferProxCardKey;
  v26[4] = TSUserInfoSupportsSyncTransferResultsKey;
  if (self->_targetSupportsUICapability)
  {
    v12 = &__kCFBooleanTrue;
  }

  else
  {
    v12 = &__kCFBooleanFalse;
  }

  v27[4] = v12;
  v26[5] = TSUserInfokSelectedTransferPlansCountKey;
  v13 = [NSNumber numberWithInt:self->_selectedTransferPlansCount];
  v27[5] = v13;
  isPreSharedKeyPresent = self->_isPreSharedKeyPresent;
  v26[6] = TSUserInfoIsPreSharedKeyPresentKey;
  if (isPreSharedKeyPresent)
  {
    v15 = &__kCFBooleanTrue;
  }

  else
  {
    v15 = &__kCFBooleanFalse;
  }

  v27[6] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:7];
  v17 = [TSSIMSetupFlow flowWithOptions:v16];
  setupFlow = self->_setupFlow;
  self->_setupFlow = v17;

  if (!peerDeviceInfo)
  {
  }

  [(TSSIMSetupFlow *)self->_setupFlow setDelegate:self];
  objc_initWeak(&location, self);
  v19 = self->_setupFlow;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000A140;
  v22[3] = &unk_10001C8E8;
  objc_copyWeak(&v24, &location);
  v20 = v7;
  v23 = v20;
  [(TSSIMSetupFlow *)v19 firstViewController:v22];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)handleButtonActions:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000A2A4;
  v3[3] = &unk_10001C778;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  if (sub_10000C244())
  {
    v5 = sub_10000C1BC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10000F4C0(a3, v5);
    }
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A408;
  v6[3] = &unk_10001C7A0;
  v6[4] = self;
  [(TSProximitySIMTransferViewController *)self dismissViewControllerWithTransition:7 completion:v6];
}

- (void)setIdleTimerDisabled:(BOOL)a3
{
  if (self->_idleTimerDisabled != a3)
  {
    self->_idleTimerDisabled = a3;
    v4 = sub_10000C1BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      idleTimerDisabled = self->_idleTimerDisabled;
      v7[0] = 67109378;
      v7[1] = idleTimerDisabled;
      v8 = 2080;
      v9 = "[TSProximitySIMTransferViewController setIdleTimerDisabled:]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "set idle timer disabled : %d @%s", v7, 0x12u);
    }

    v6 = [(TSProximitySIMTransferViewController *)self _remoteViewControllerProxy];
    [v6 setIdleTimerDisabled:self->_idleTimerDisabled forReason:@"SIMTransfer"];
  }
}

- (void)setViewDisappearHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  viewDisappearHandler = self->_viewDisappearHandler;
  self->_viewDisappearHandler = v4;

  _objc_release_x1();
}

- (void)proxCardFlowDidDismiss
{
  v3 = sub_10000C1BC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[TSProximitySIMTransferViewController proxCardFlowDidDismiss]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRXFlowDelegate: proxCardFlowDidDismiss @%s", &v4, 0xCu);
  }

  [(TSSIMSetupFlow *)self->_setupFlow userDidTapCancel];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TSProximitySIMTransferViewController;
  [(TSProximitySIMTransferViewController *)&v4 viewDidLoad];
  v2 = +[UINavigationBar appearance];
  [v2 _setHidesShadow:1];

  v3 = +[UINavigationBar appearance];
  [v3 setTranslucent:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (+[SSServiceUtilities isPad])
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)_deactivate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A7E8;
  block[3] = &unk_10001C7A0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end