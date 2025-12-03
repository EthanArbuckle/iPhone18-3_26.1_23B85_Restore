@interface PDURemoteViewController
- (void)_configureRemoteAlertWithIdentity:(id)identity;
- (void)_dismissWithResponse:(unint64_t)response;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation PDURemoteViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v7 = [(PDURemoteViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100004178];
  [v7 setReachabilityDisabled:1];
  [v7 setAllowsAlertStacking:1];
  actions = [contextCopy actions];

  anyObject = [actions anyObject];
  action = self->_action;
  self->_action = anyObject;

  info = [(BSAction *)self->_action info];
  v12 = [info objectForSetting:0];
  v13 = PDCGlobalApplicationEnvironment();
  v14 = [v13 applicationIdentityForIdentityString:v12];

  v15 = [info objectForSetting:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v15 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  self->_forcePresent = bOOLValue;
  [(PDURemoteViewController *)self _configureRemoteAlertWithIdentity:v14];
  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v5 = [(PDURemoteViewController *)self _remoteViewControllerProxyWithErrorHandler:&stru_100004198];
  [v5 setStatusBarHidden:1 withDuration:0.4];
  if (completionCopy)
  {
    completionCopy[2]();
  }
}

- (void)_configureRemoteAlertWithIdentity:(id)identity
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001048;
  v4[3] = &unk_1000041C0;
  v4[4] = self;
  identityCopy = identity;
  v3 = identityCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_dismissWithResponse:(unint64_t)response
{
  if ([(BSAction *)self->_action canSendResponse])
  {
    v5 = objc_alloc_init(BSMutableSettings);
    v6 = [NSNumber numberWithUnsignedInteger:response];
    [v5 setObject:v6 forSetting:0];

    action = self->_action;
    v8 = [BSActionResponse responseWithInfo:v5];
    [(BSAction *)action sendResponse:v8];
  }

  v9 = self->_action;
  self->_action = 0;

  _remoteViewControllerProxy = [(PDURemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismiss];
}

@end