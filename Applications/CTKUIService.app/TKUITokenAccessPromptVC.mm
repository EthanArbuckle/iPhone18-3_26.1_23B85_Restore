@interface TKUITokenAccessPromptVC
- (TKUITokenAccessPromptVC)init;
- (int64_t)preferredStatusBarStyle;
- (void)_connectToHostWithEndpoint:(id)endpoint;
- (void)_finishTokenAccess;
- (void)_invalidate;
- (void)_presentAlert;
- (void)_presentAlertWithClientName:(id)name providerName:(id)providerName;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation TKUITokenAccessPromptVC

- (TKUITokenAccessPromptVC)init
{
  v3.receiver = self;
  v3.super_class = TKUITokenAccessPromptVC;
  result = [(TKUITokenAccessPromptVC *)&v3 init];
  if (result)
  {
    result->_tokenAccess = 0;
  }

  return result;
}

- (int64_t)preferredStatusBarStyle
{
  traitCollection = [(TKUITokenAccessPromptVC *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  xpcEndpoint = [contextCopy xpcEndpoint];

  if (!xpcEndpoint)
  {
    sub_100001F54(a2, self);
  }

  xpcEndpoint2 = [contextCopy xpcEndpoint];
  [(TKUITokenAccessPromptVC *)self _connectToHostWithEndpoint:xpcEndpoint2];

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  userInfo = [contextCopy userInfo];

  if (!userInfo)
  {
    sub_100001FC8(a2, self);
  }

  v10 = objc_opt_class();
  userInfo2 = [contextCopy userInfo];

  v12 = [userInfo2 objectForKeyedSubscript:kTKTokenAccessUserPromptInfo];
  v13 = v12;
  if (!v12)
  {
    v13 = objc_alloc_init(NSData);
  }

  v18 = 0;
  v14 = [NSKeyedUnarchiver unarchivedObjectOfClass:v10 fromData:v13 error:&v18];
  v15 = v18;
  info = self->_info;
  self->_info = v14;

  if (!v12)
  {
  }

  if (!self->_info)
  {
    v17 = sub_1000015FC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000203C(v15, v17);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)_presentAlert
{
  info = self->_info;
  if (info)
  {
    clientDisplayName = [(TKTokenAccessUserPromptInfo *)info clientDisplayName];
    providerDisplayName = [(TKTokenAccessUserPromptInfo *)self->_info providerDisplayName];
    [(TKUITokenAccessPromptVC *)self _presentAlertWithClientName:clientDisplayName providerName:providerDisplayName];
  }

  else
  {

    [(TKUITokenAccessPromptVC *)self _invalidate];
  }
}

- (void)_presentAlertWithClientName:(id)name providerName:(id)providerName
{
  nameCopy = name;
  providerNameCopy = providerName;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CTKUI.TOKEN_ACCESS_PROMPT.TITLE" value:&stru_1000083C0 table:@"ctkui"];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CTKUI.TOKEN_ACCESS_PROMPT.MESSAGE" value:&stru_1000083C0 table:@"ctkui"];
  providerNameCopy = [NSString stringWithFormat:v11, nameCopy, providerNameCopy];

  v13 = [UIAlertController alertControllerWithTitle:v9 message:providerNameCopy preferredStyle:1];
  objc_initWeak(&location, self);
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"CTKUI.TOKEN_ACCESS_PROMPT.ACCESS_DENY" value:&stru_1000083C0 table:@"ctkui"];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100001A40;
  v22[3] = &unk_1000081D0;
  objc_copyWeak(&v23, &location);
  v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:v22];
  [v13 addAction:v16];

  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"CTKUI.TOKEN_ACCESS_PROMPT.ACCESS_GRANT" value:&stru_1000083C0 table:@"ctkui"];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100001A80;
  v20[3] = &unk_1000081D0;
  objc_copyWeak(&v21, &location);
  v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:v20];
  [v13 addAction:v19];

  [(TKUITokenAccessPromptVC *)self presentViewController:v13 animated:1 completion:&stru_100008210];
  objc_destroyWeak(&v21);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)_connectToHostWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (self->_uiServerConnection)
  {
    sub_1000020C8(a2, self);
  }

  v5 = objc_alloc_init(NSXPCListenerEndpoint);
  [v5 _setEndpoint:endpointCopy];
  v6 = [[NSXPCConnection alloc] initWithListenerEndpoint:v5];
  uiServerConnection = self->_uiServerConnection;
  self->_uiServerConnection = v6;

  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKUIServerProtocol];
  [(NSXPCConnection *)self->_uiServerConnection setRemoteObjectInterface:v8];

  [(NSXPCConnection *)self->_uiServerConnection resume];
}

- (void)_finishTokenAccess
{
  v3 = sub_1000015FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000213C(self, v3);
  }

  uiServerConnection = self->_uiServerConnection;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001D10;
  v9[3] = &unk_100008238;
  v9[4] = self;
  v5 = [(NSXPCConnection *)uiServerConnection synchronousRemoteObjectProxyWithErrorHandler:v9];
  correlationID = [(TKTokenAccessUserPromptInfo *)self->_info correlationID];
  tokenAccess = self->_tokenAccess;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001D78;
  v8[3] = &unk_100008260;
  v8[4] = self;
  [v5 registerTokenAccessRequestCorrelationID:correlationID access:tokenAccess reply:v8];
}

- (void)_invalidate
{
  uiServerConnection = self->_uiServerConnection;
  if (uiServerConnection)
  {
    [(NSXPCConnection *)uiServerConnection invalidate];
    v4 = self->_uiServerConnection;
    self->_uiServerConnection = 0;
  }

  _remoteViewControllerProxy = [(TKUITokenAccessPromptVC *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy deactivate];

  _remoteViewControllerProxy2 = [(TKUITokenAccessPromptVC *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy2 invalidate];
}

@end