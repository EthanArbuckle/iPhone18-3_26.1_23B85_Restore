@interface PasscodeEmbeddedRemoteViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (BOOL)verifyPasscode:(id)a3;
- (double)_backoffTimeout;
- (void)_dispatchBackoffTimer;
- (void)_notifyPasscodeVerificationFinishedWithSuccess:(BOOL)a3;
- (void)handleAction:(id)a3 completion:(id)a4;
- (void)setContext:(id)a3;
- (void)startEditing;
@end

@implementation PasscodeEmbeddedRemoteViewController

+ (id)_exportedInterface
{
  if (_exportedInterface_onceToken != -1)
  {
    +[PasscodeEmbeddedRemoteViewController _exportedInterface];
  }

  v3 = _exportedInterface_interface;

  return v3;
}

void __58__PasscodeEmbeddedRemoteViewController__exportedInterface__block_invoke(id a1)
{
  _exportedInterface_interface = [LACXPCInterface interfaceForXPCProtocol:&OBJC_PROTOCOL___LACPasscodeUIService];

  _objc_release_x1();
}

+ (id)_remoteViewControllerInterface
{
  if (_remoteViewControllerInterface_onceToken != -1)
  {
    +[PasscodeEmbeddedRemoteViewController _remoteViewControllerInterface];
  }

  v3 = _remoteViewControllerInterface_interface;

  return v3;
}

void __70__PasscodeEmbeddedRemoteViewController__remoteViewControllerInterface__block_invoke(id a1)
{
  _remoteViewControllerInterface_interface = [LACXPCInterface interfaceForXPCProtocol:&OBJC_PROTOCOL___LACPasscodeUIHost];

  _objc_release_x1();
}

- (void)handleAction:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [[LACUIEmbeddedPasscodeAction alloc] initWithAction:v7];

  v8 = [v12 identifier];
  if (v8 == 3)
  {
    [(PasscodeEmbeddedRemoteViewController *)self endEditing];
    goto LABEL_7;
  }

  if (v8 == 2)
  {
    [(PasscodeEmbeddedRemoteViewController *)self startEditing];
    goto LABEL_7;
  }

  if (v8 == 1)
  {
    v9 = [v12 rawValue];
    [(PasscodeEmbeddedRemoteViewController *)self setContext:v9];

LABEL_7:
    v10 = 0;
    goto LABEL_9;
  }

  v11 = [NSString stringWithFormat:@"%@: Cannot handle action: %@", self, v12];
  v10 = [LACError errorWithCode:LACErrorCodeInternal debugDescription:v11];

LABEL_9:
  v6[2](v6, v10);
}

- (void)setContext:(id)a3
{
  v4 = a3;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[PasscodeEmbeddedRemoteViewController setContext:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s", &v7, 0xCu);
  }

  externalizedContext = self->_externalizedContext;
  self->_externalizedContext = v4;
}

- (void)startEditing
{
  [(PasscodeEmbeddedRemoteViewController *)self _backoffTimeout];
  if (v3 == 0.0)
  {

    [(PasscodeEmbeddedViewController *)self setPasscodeFocused:1];
  }
}

- (BOOL)verifyPasscode:(id)a3
{
  v4 = a3;
  v5 = [LACSecureData secureDataWithString:v4];
  v32 = 0u;
  v33 = 0u;
  v6 = +[LACFlags sharedInstance];
  v7 = [v6 featureFlagLaunchAngelEnabled];

  if (v7)
  {
    v8 = [(PasscodeEmbeddedRemoteViewController *)self view];
    v9 = [v8 window];
    v10 = [v9 windowScene];
    v11 = [v10 _FBSScene];
    v12 = [v11 hostHandle];
    v13 = [v12 auditToken];
    v14 = v13;
    if (v13)
    {
      [v13 realToken];
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v32 = v30;
    v33 = v31;
  }

  else
  {
    [(PasscodeEmbeddedRemoteViewController *)self _hostAuditToken];
  }

  v15 = +[LACPasscodeHelper sharedInstance];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = __55__PasscodeEmbeddedRemoteViewController_verifyPasscode___block_invoke;
  v25 = &unk_1000AA898;
  v16 = v5;
  v26 = v16;
  v27 = self;
  v28 = v32;
  v29 = v33;
  v17 = __55__PasscodeEmbeddedRemoteViewController_verifyPasscode___block_invoke(&v22);
  v18 = [v15 verifyPasscode:{v17, v22, v23}];

  [v16 reset];
  if (v18)
  {
    if (v18 == 2)
    {
      [(PasscodeEmbeddedRemoteViewController *)self _backoffTimeout];
      [(PasscodeEmbeddedViewController *)self setBackoffTimeout:?];
      [(PasscodeEmbeddedRemoteViewController *)self _dispatchBackoffTimer];
    }

    [(PasscodeEmbeddedRemoteViewController *)self _notifyPasscodeVerificationFinishedWithSuccess:0];
  }

  else
  {
    v19 = [[LAContext alloc] initWithExternalizedContext:self->_externalizedContext];
    v20 = [v4 dataUsingEncoding:4];
    [v19 setCredential:v20 forProcessedEvent:2 credentialType:-1 reply:&__block_literal_global_190];

    [(PasscodeEmbeddedRemoteViewController *)self _notifyPasscodeVerificationFinishedWithSuccess:1];
  }

  return v18 == 0;
}

id __55__PasscodeEmbeddedRemoteViewController_verifyPasscode___block_invoke(uint64_t a1)
{
  v2 = [LACMutablePasscodeVerificationRequest alloc];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 72);
  v5 = *(a1 + 64);
  v9[0] = *(a1 + 48);
  v9[1] = v5;
  v6 = [v2 initWithPasscode:v3 acmContext:v4 rawAuditToken:v9];
  v7 = [NSNumber numberWithUnsignedInt:getuid()];
  [v6 setUserId:v7];

  return v6;
}

void __55__PasscodeEmbeddedRemoteViewController_verifyPasscode___block_invoke_2(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (v4 || !a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __55__PasscodeEmbeddedRemoteViewController_verifyPasscode___block_invoke_2_cold_1(v4);
    }
  }

  else
  {
    v5 = LALogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Passcode verification succeeded", v6, 2u);
    }
  }
}

- (void)_notifyPasscodeVerificationFinishedWithSuccess:(BOOL)a3
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v11 = NSDebugDescriptionErrorKey;
    v12 = @"Passcode verification failed";
    v5 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v4 = [NSError errorWithDomain:&stru_1000ADB50 code:-1 userInfo:v5];
  }

  v6 = +[LACFlags sharedInstance];
  v7 = [v6 featureFlagLaunchAngelEnabled];

  if (v7)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __87__PasscodeEmbeddedRemoteViewController__notifyPasscodeVerificationFinishedWithSuccess___block_invoke;
    v9[3] = &unk_1000AA748;
    v10 = [[LACUIEmbeddedPasscodeAction alloc] initWithIdentifier:4 value:v4];
    v8 = v10;
    [(PasscodeEmbeddedRemoteViewController *)self sendAction:v8 completion:v9];
  }

  else
  {
    v8 = [(PasscodeEmbeddedRemoteViewController *)self _remoteViewControllerProxyWithErrorHandler:&__block_literal_global_199];
    [v8 passcodeVerificationFinished:v4];
  }
}

void __87__PasscodeEmbeddedRemoteViewController__notifyPasscodeVerificationFinishedWithSuccess___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __87__PasscodeEmbeddedRemoteViewController__notifyPasscodeVerificationFinishedWithSuccess___block_invoke_cold_1(a1, v3);
  }
}

void __87__PasscodeEmbeddedRemoteViewController__notifyPasscodeVerificationFinishedWithSuccess___block_invoke_197(id a1, NSError *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __87__PasscodeEmbeddedRemoteViewController__notifyPasscodeVerificationFinishedWithSuccess___block_invoke_197_cold_1(a2);
  }
}

- (void)_dispatchBackoffTimer
{
  backoffTimer = self->_backoffTimer;
  if (backoffTimer)
  {
    dispatch_source_cancel(backoffTimer);
    v4 = self->_backoffTimer;
    self->_backoffTimer = 0;
  }

  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 1uLL, &_dispatch_main_q);
  v6 = self->_backoffTimer;
  self->_backoffTimer = v5;

  v7 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(self->_backoffTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(&location, self);
  v8 = self->_backoffTimer;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __61__PasscodeEmbeddedRemoteViewController__dispatchBackoffTimer__block_invoke;
  v9[3] = &unk_1000AA370;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v8, v9);
  dispatch_activate(self->_backoffTimer);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __61__PasscodeEmbeddedRemoteViewController__dispatchBackoffTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _backoffTimeout];
    v3 = v2;
    if (v2 > 0.0)
    {
      [v4 _dispatchBackoffTimer];
    }

    [v4 setBackoffTimeout:v3];
    WeakRetained = v4;
  }
}

- (double)_backoffTimeout
{
  v2 = MKBGetDeviceLockStateInfo();
  v3 = [v2 objectForKey:kMKBInfoBackOff];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

void __55__PasscodeEmbeddedRemoteViewController_verifyPasscode___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not set credential (%@)", &v1, 0xCu);
}

void __87__PasscodeEmbeddedRemoteViewController__notifyPasscodeVerificationFinishedWithSuccess___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = 138412546;
  v4 = v2;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not send action: %@ error: %@", &v3, 0x16u);
}

void __87__PasscodeEmbeddedRemoteViewController__notifyPasscodeVerificationFinishedWithSuccess___block_invoke_197_cold_1(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not obtain remote proxy: %@", &v1, 0xCu);
}

@end