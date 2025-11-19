@interface PDURemoteViewController
- (void)_configureRemoteAlertWithIdentity:(id)a3;
- (void)_dismissWithResponse:(unint64_t)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
@end

@implementation PDURemoteViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v17 = a4;
  v6 = a3;
  v7 = [(PDURemoteViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100004178];
  [v7 setReachabilityDisabled:1];
  [v7 setAllowsAlertStacking:1];
  v8 = [v6 actions];

  v9 = [v8 anyObject];
  action = self->_action;
  self->_action = v9;

  v11 = [(BSAction *)self->_action info];
  v12 = [v11 objectForSetting:0];
  v13 = PDCGlobalApplicationEnvironment();
  v14 = [v13 applicationIdentityForIdentityString:v12];

  v15 = [v11 objectForSetting:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 BOOLValue];
  }

  else
  {
    v16 = 0;
  }

  self->_forcePresent = v16;
  [(PDURemoteViewController *)self _configureRemoteAlertWithIdentity:v14];
  if (v17)
  {
    v17[2]();
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v5 = [(PDURemoteViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100004198];
  [v5 setStatusBarHidden:1 withDuration:0.4];
  if (v6)
  {
    v6[2]();
  }
}

- (void)_configureRemoteAlertWithIdentity:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001048;
  v4[3] = &unk_1000041C0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_dismissWithResponse:(unint64_t)a3
{
  if ([(BSAction *)self->_action canSendResponse])
  {
    v5 = objc_alloc_init(BSMutableSettings);
    v6 = [NSNumber numberWithUnsignedInteger:a3];
    [v5 setObject:v6 forSetting:0];

    action = self->_action;
    v8 = [BSActionResponse responseWithInfo:v5];
    [(BSAction *)action sendResponse:v8];
  }

  v9 = self->_action;
  self->_action = 0;

  v10 = [(PDURemoteViewController *)self _remoteViewControllerProxy];
  [v10 dismiss];
}

@end