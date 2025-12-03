@interface OOPADAppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (void)_connectToAuthenticationDialogManager;
- (void)_disconnectFromAuthenticationDialogManager;
- (void)_remoteSheetDidEnd;
@end

@implementation OOPADAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  [(OOPADAppDelegate *)self _connectToAuthenticationDialogManager];
  v6 = objc_alloc_init(OOPAWebViewController);
  webViewController = self->_webViewController;
  self->_webViewController = v6;

  [(OOPAWebViewController *)self->_webViewController setDelegate:self];
  v8 = [[UINavigationController alloc] initWithRootViewController:self->_webViewController];
  navViewController = self->_navViewController;
  self->_navViewController = v8;

  _getSpringBoardOrientation = [UIApp _getSpringBoardOrientation];
  [UIApp setStatusBarOrientation:_getSpringBoardOrientation];
  _dialogManager = [(OOPADAppDelegate *)self _dialogManager];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000022C0;
  v17[3] = &unk_100008230;
  v17[4] = self;
  [_dialogManager contextForAuthenticationDialog:v17];

  if ((_getSpringBoardOrientation - 1) > 1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000240C;
    block[3] = &unk_100008258;
    v15 = applicationCopy;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    LOBYTE(v13) = 1;
    [applicationCopy beginRemoteSheetController:self->_navViewController delegate:self didEndSelector:"_remoteSheetDidEnd" contextInfo:0 requireTopApplication:0 opaque:0 presentAnimated:v13];
  }

  return 1;
}

- (void)_remoteSheetDidEnd
{
  _dialogManager = [(OOPADAppDelegate *)self _dialogManager];
  [_dialogManager authenticationDialogDidFinishWithSuccess:self->_cachedSuccess response:self->_cachedResponse];

  [(OOPADAppDelegate *)self _disconnectFromAuthenticationDialogManager];
  v4 = UIApp;

  [v4 terminateWithSuccess];
}

- (void)_connectToAuthenticationDialogManager
{
  v3 = _ACLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100002B84(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.accountsd.oopa" options:0];
  connectionToDialogManager = self->_connectionToDialogManager;
  self->_connectionToDialogManager = v11;

  v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ACDAuthenticationDialogManagerProtocol];
  [(NSXPCConnection *)self->_connectionToDialogManager setRemoteObjectInterface:v13];

  [(NSXPCConnection *)self->_connectionToDialogManager setInterruptionHandler:&stru_100008298];
  [(NSXPCConnection *)self->_connectionToDialogManager setInvalidationHandler:&stru_1000082B8];
  [(NSXPCConnection *)self->_connectionToDialogManager resume];
}

- (void)_disconnectFromAuthenticationDialogManager
{
  [(NSXPCConnection *)self->_connectionToDialogManager invalidate];
  connectionToDialogManager = self->_connectionToDialogManager;
  self->_connectionToDialogManager = 0;
}

@end