@interface SBERemoteViewController
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3;
- (void)externalDisplayHardwareRequirementsSatisfiedChanged:(BOOL)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation SBERemoteViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SBERemoteViewController;
  [(SBERemoteViewController *)&v5 viewDidLoad];
  v3 = [(SBERemoteViewController *)self view];
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = SBERemoteViewController;
  [(SBERemoteViewController *)&v3 dealloc];
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(SBERemoteViewController *)self _remoteViewControllerProxyWithErrorHandler:0];
  [v7 setReachabilityDisabled:1];
  [v7 setAllowsAlertStacking:1];
  [v7 setAllowsControlCenter:0];
  v8 = [v18 xpcEndpoint];

  if (v8)
  {
    v9 = objc_alloc_init(NSXPCListenerEndpoint);
    v10 = [v18 xpcEndpoint];
    [v9 _setEndpoint:v10];

    v11 = [[NSXPCConnection alloc] initWithListenerEndpoint:v9];
    connection = self->_connection;
    self->_connection = v11;

    v13 = self->_connection;
    v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SBExternalDisplayHardwareRequirementsChangedProtocol];
    [(NSXPCConnection *)v13 setExportedInterface:v14];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v15 = self->_connection;
    v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SBRemoteHandshakeProtocol];
    [(NSXPCConnection *)v15 setRemoteObjectInterface:v16];

    [(NSXPCConnection *)self->_connection resume];
    v17 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [v17 wakeUpConnection];
  }

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBERemoteViewController *)self _remoteViewControllerProxyWithErrorHandler:0];
  v9 = [v6 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"SBEducationRemoteViewControllerEducationTypeKey"];
  v11 = [v10 intValue];

  if (v11 == 1)
  {
    v12 = objc_alloc_init(SBEExternalDisplayContentViewController);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100003C1C;
    v21 = &unk_10000C268;
    v13 = &v22;
    v15 = v6;
    v22 = v15;
    v14 = &v23;
    v23 = v8;
    [(SBEExternalDisplayContentViewController *)v12 setCompletionHandler:&v18];
    v16 = [v15 userInfo];
    v17 = [v16 objectForKeyedSubscript:@"SBEducationRemoteViewControllerHasPointerAndKeyboardConnectedKey"];
    -[SBEExternalDisplayContentViewController externalDisplayHardwareRequirementsSatisfiedChanged:](v12, "externalDisplayHardwareRequirementsSatisfiedChanged:", [v17 BOOLValue]);

    objc_storeWeak(&self->_hardwareRequirementsSublistener, v12);
  }

  else
  {
    if (v11)
    {
      goto LABEL_6;
    }

    v12 = objc_alloc_init(SBEChamoisContentViewController);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100003B64;
    v24[3] = &unk_10000C240;
    v13 = &v25;
    v25 = v6;
    v14 = &v26;
    v26 = v8;
    [(SBEExternalDisplayContentViewController *)v12 setCompletionHandler:v24];
  }

  [(SBERemoteViewController *)self presentViewController:v12 animated:1 completion:0];

LABEL_6:
  if (v7)
  {
    v7[2](v7);
  }
}

- (void)externalDisplayHardwareRequirementsSatisfiedChanged:(BOOL)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003D9C;
  v5[3] = &unk_10000C290;
  WeakRetained = objc_loadWeakRetained(&self->_hardwareRequirementsSublistener);
  v7 = a3;
  v4 = WeakRetained;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)dismissAnimated:(BOOL)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003E54;
  v5[3] = &unk_10000C290;
  WeakRetained = objc_loadWeakRetained(&self->_hardwareRequirementsSublistener);
  v7 = a3;
  v4 = WeakRetained;
  dispatch_async(&_dispatch_main_q, v5);
}

@end