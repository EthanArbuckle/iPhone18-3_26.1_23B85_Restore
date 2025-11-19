@interface TKUITokenAccessPromptVC
- (TKUITokenAccessPromptVC)init;
- (int64_t)preferredStatusBarStyle;
- (void)_connectToHostWithEndpoint:(id)a3;
- (void)_finishTokenAccess;
- (void)_invalidate;
- (void)_presentAlert;
- (void)_presentAlertWithClientName:(id)a3 providerName:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
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
  v2 = [(TKUITokenAccessPromptVC *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v10 = a3;
  v7 = a4;
  v8 = [v10 xpcEndpoint];

  if (!v8)
  {
    sub_100001F54(a2, self);
  }

  v9 = [v10 xpcEndpoint];
  [(TKUITokenAccessPromptVC *)self _connectToHostWithEndpoint:v9];

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 userInfo];

  if (!v9)
  {
    sub_100001FC8(a2, self);
  }

  v10 = objc_opt_class();
  v11 = [v8 userInfo];

  v12 = [v11 objectForKeyedSubscript:kTKTokenAccessUserPromptInfo];
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

  if (v7)
  {
    v7[2](v7);
  }
}

- (void)_presentAlert
{
  info = self->_info;
  if (info)
  {
    v5 = [(TKTokenAccessUserPromptInfo *)info clientDisplayName];
    v4 = [(TKTokenAccessUserPromptInfo *)self->_info providerDisplayName];
    [(TKUITokenAccessPromptVC *)self _presentAlertWithClientName:v5 providerName:v4];
  }

  else
  {

    [(TKUITokenAccessPromptVC *)self _invalidate];
  }
}

- (void)_presentAlertWithClientName:(id)a3 providerName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CTKUI.TOKEN_ACCESS_PROMPT.TITLE" value:&stru_1000083C0 table:@"ctkui"];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CTKUI.TOKEN_ACCESS_PROMPT.MESSAGE" value:&stru_1000083C0 table:@"ctkui"];
  v12 = [NSString stringWithFormat:v11, v6, v7];

  v13 = [UIAlertController alertControllerWithTitle:v9 message:v12 preferredStyle:1];
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

- (void)_connectToHostWithEndpoint:(id)a3
{
  v9 = a3;
  if (self->_uiServerConnection)
  {
    sub_1000020C8(a2, self);
  }

  v5 = objc_alloc_init(NSXPCListenerEndpoint);
  [v5 _setEndpoint:v9];
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
  v6 = [(TKTokenAccessUserPromptInfo *)self->_info correlationID];
  tokenAccess = self->_tokenAccess;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001D78;
  v8[3] = &unk_100008260;
  v8[4] = self;
  [v5 registerTokenAccessRequestCorrelationID:v6 access:tokenAccess reply:v8];
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

  v5 = [(TKUITokenAccessPromptVC *)self _remoteViewControllerProxy];
  [v5 deactivate];

  v6 = [(TKUITokenAccessPromptVC *)self _remoteViewControllerProxy];
  [v6 invalidate];
}

@end