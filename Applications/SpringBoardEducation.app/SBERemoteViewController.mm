@interface SBERemoteViewController
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)animated;
- (void)externalDisplayHardwareRequirementsSatisfiedChanged:(BOOL)changed;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation SBERemoteViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SBERemoteViewController;
  [(SBERemoteViewController *)&v5 viewDidLoad];
  view = [(SBERemoteViewController *)self view];
  v4 = +[UIColor clearColor];
  [view setBackgroundColor:v4];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = SBERemoteViewController;
  [(SBERemoteViewController *)&v3 dealloc];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = [(SBERemoteViewController *)self _remoteViewControllerProxyWithErrorHandler:0];
  [v7 setReachabilityDisabled:1];
  [v7 setAllowsAlertStacking:1];
  [v7 setAllowsControlCenter:0];
  xpcEndpoint = [contextCopy xpcEndpoint];

  if (xpcEndpoint)
  {
    v9 = objc_alloc_init(NSXPCListenerEndpoint);
    xpcEndpoint2 = [contextCopy xpcEndpoint];
    [v9 _setEndpoint:xpcEndpoint2];

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
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [remoteObjectProxy wakeUpConnection];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = [(SBERemoteViewController *)self _remoteViewControllerProxyWithErrorHandler:0];
  userInfo = [contextCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"SBEducationRemoteViewControllerEducationTypeKey"];
  intValue = [v10 intValue];

  if (intValue == 1)
  {
    v12 = objc_alloc_init(SBEExternalDisplayContentViewController);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100003C1C;
    v21 = &unk_10000C268;
    v13 = &v22;
    v15 = contextCopy;
    v22 = v15;
    v14 = &v23;
    v23 = v8;
    [(SBEExternalDisplayContentViewController *)v12 setCompletionHandler:&v18];
    userInfo2 = [v15 userInfo];
    v17 = [userInfo2 objectForKeyedSubscript:@"SBEducationRemoteViewControllerHasPointerAndKeyboardConnectedKey"];
    -[SBEExternalDisplayContentViewController externalDisplayHardwareRequirementsSatisfiedChanged:](v12, "externalDisplayHardwareRequirementsSatisfiedChanged:", [v17 BOOLValue]);

    objc_storeWeak(&self->_hardwareRequirementsSublistener, v12);
  }

  else
  {
    if (intValue)
    {
      goto LABEL_6;
    }

    v12 = objc_alloc_init(SBEChamoisContentViewController);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100003B64;
    v24[3] = &unk_10000C240;
    v13 = &v25;
    v25 = contextCopy;
    v14 = &v26;
    v26 = v8;
    [(SBEExternalDisplayContentViewController *)v12 setCompletionHandler:v24];
  }

  [(SBERemoteViewController *)self presentViewController:v12 animated:1 completion:0];

LABEL_6:
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)externalDisplayHardwareRequirementsSatisfiedChanged:(BOOL)changed
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003D9C;
  v5[3] = &unk_10000C290;
  WeakRetained = objc_loadWeakRetained(&self->_hardwareRequirementsSublistener);
  changedCopy = changed;
  v4 = WeakRetained;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)dismissAnimated:(BOOL)animated
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003E54;
  v5[3] = &unk_10000C290;
  WeakRetained = objc_loadWeakRetained(&self->_hardwareRequirementsSublistener);
  animatedCopy = animated;
  v4 = WeakRetained;
  dispatch_async(&_dispatch_main_q, v5);
}

@end