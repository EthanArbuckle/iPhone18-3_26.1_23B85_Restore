@interface DeleteAppFontsMainController
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)connectToEndpoint:(id)endpoint;
- (void)doneWithDeleteAppFonts:(BOOL)fonts;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)setupWithUserInfo:(id)info xpcEndpoint:(id)endpoint dismissHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DeleteAppFontsMainController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v12 = a2;
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = DeleteAppFontsMainController;
  [(DeleteAppFontsMainController *)&v10 viewDidAppear:appear];
  view = [(DeleteAppFontsMainController *)selfCopy view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  v3 = [_TtC22FontInstallViewService28DeleteAppFontsAlertPresenter alloc];
  v4 = [(DeleteAppFontsAlertPresenter *)v3 initFrom:selfCopy];
  alertPresenter = selfCopy->_alertPresenter;
  selfCopy->_alertPresenter = v4;

  [(DeleteAppFontsAlertPresenter *)selfCopy->_alertPresenter showAlert];
  _remoteViewControllerProxy = [(DeleteAppFontsMainController *)selfCopy _remoteViewControllerProxy];
  [_remoteViewControllerProxy setWallpaperTunnelActive:1];
  objc_storeStrong(&_remoteViewControllerProxy, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = DeleteAppFontsMainController;
  [(DeleteAppFontsMainController *)&v4 viewWillAppear:appear];
  _remoteViewControllerProxy = [(DeleteAppFontsMainController *)selfCopy _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];
  [_remoteViewControllerProxy setAllowsAlertItems:1];
  objc_storeStrong(&_remoteViewControllerProxy, 0);
}

- (void)connectToEndpoint:(id)endpoint
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, endpoint);
  v15 = objc_alloc_init(NSXPCListenerEndpoint);
  [v15 _setEndpoint:location[0]];
  v3 = [[NSXPCConnection alloc] initWithListenerEndpoint:v15];
  connection = selfCopy->_connection;
  selfCopy->_connection = v3;

  v5 = selfCopy->_connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FontInstallViewServiceProtocol];
  [(NSXPCConnection *)v5 setRemoteObjectInterface:?];

  objc_initWeak(&v14, selfCopy);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = __50__DeleteAppFontsMainController_connectToEndpoint___block_invoke;
  v11 = &unk_10001C690;
  objc_copyWeak(&v12, &v14);
  v13 = objc_retainBlock(&v7);
  [(NSXPCConnection *)selfCopy->_connection setInvalidationHandler:v13];
  [(NSXPCConnection *)selfCopy->_connection setInterruptionHandler:v13];
  [(NSXPCConnection *)selfCopy->_connection resume];
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __50__DeleteAppFontsMainController_connectToEndpoint___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    NSLog(@"DeleteAppFontsMainController invalidated.");
  }

  objc_storeStrong(location, 0);
}

- (void)setupWithUserInfo:(id)info xpcEndpoint:(id)endpoint dismissHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v20 = 0;
  objc_storeStrong(&v20, endpoint);
  v19 = 0;
  objc_storeStrong(&v19, handler);
  v18 = [location[0] objectForKey:@"deleteAppIdentifier"];
  if (!v18)
  {
    v18 = [location[0] objectForKey:@"identifier"];
  }

  v17 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v18 allowPlaceholder:0 error:?];
  v13 = v18;
  v14 = +[UIScreen mainScreen];
  [(UIScreen *)v14 scale];
  v5 = [UIImage _applicationIconImageForBundleIdentifier:v13 format:0 scale:?];
  applicationIconImage = selfCopy->_applicationIconImage;
  selfCopy->_applicationIconImage = v5;

  localizedName = [v17 localizedName];
  applicationName = selfCopy->_applicationName;
  selfCopy->_applicationName = localizedName;

  v9 = [location[0] objectForKey:@"registeredFonts"];
  registeredFonts = selfCopy->_registeredFonts;
  selfCopy->_registeredFonts = v9;

  v11 = objc_retainBlock(v19);
  dismissHandler = selfCopy->_dismissHandler;
  selfCopy->_dismissHandler = v11;

  [(DeleteAppFontsMainController *)selfCopy connectToEndpoint:v20];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  v10 = [(DeleteAppFontsMainController *)selfCopy _remoteViewControllerProxyWithErrorHandler:&__block_literal_global];
  view = [(DeleteAppFontsMainController *)selfCopy view];
  window = [view window];
  windowScene = [window windowScene];
  [v10 setLaunchingInterfaceOrientation:{objc_msgSend(windowScene, "interfaceOrientation")}];

  [v10 setReachabilityDisabled:1];
  [v10 setAllowsAlertStacking:0];
  v8 = selfCopy;
  xpcEndpoint = [location[0] xpcEndpoint];
  [(DeleteAppFontsMainController *)v8 connectToEndpoint:?];

  if (v11)
  {
    (*(v11 + 2))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __64__DeleteAppFontsMainController_configureWithContext_completion___block_invoke(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSLog(@"DeleteAppFonts configureWithContext - error - %@", location[0]);
  objc_storeStrong(location, 0);
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  v17 = [(DeleteAppFontsMainController *)selfCopy _remoteViewControllerProxyWithErrorHandler:&__block_literal_global_74];
  [v17 setStatusBarHidden:1 withDuration:0.4];
  userInfo = [location[0] userInfo];
  v16 = [userInfo objectForKey:@"deleteAppIdentifier"];

  if (!v16)
  {
    userInfo2 = [location[0] userInfo];
    v16 = [userInfo2 objectForKey:@"identifier"];
  }

  v15 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v16 allowPlaceholder:0 error:0];
  v10 = +[UIScreen mainScreen];
  [(UIScreen *)v10 scale];
  v4 = [UIImage _applicationIconImageForBundleIdentifier:v16 format:0 scale:?];
  applicationIconImage = selfCopy->_applicationIconImage;
  selfCopy->_applicationIconImage = v4;

  localizedName = [v15 localizedName];
  applicationName = selfCopy->_applicationName;
  selfCopy->_applicationName = localizedName;

  userInfo3 = [location[0] userInfo];
  v8 = [userInfo3 objectForKey:@"registeredFonts"];
  registeredFonts = selfCopy->_registeredFonts;
  selfCopy->_registeredFonts = v8;

  if (v18)
  {
    (*(v18 + 2))();
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void __75__DeleteAppFontsMainController_prepareForActivationWithContext_completion___block_invoke(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSLog(@"DeleteAppFonts prepareForActivationWithContext - error - %@", location[0]);
  objc_storeStrong(location, 0);
}

- (void)doneWithDeleteAppFonts:(BOOL)fonts
{
  selfCopy = self;
  v12 = a2;
  fontsCopy = fonts;
  NSLog(@"DeleteAppFonts doneWithDeleteAppFonts:%d", fonts);
  v10 = [(NSXPCConnection *)selfCopy->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_82];
  [v10 doneWithDeleteAppFonts:fontsCopy];
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = __55__DeleteAppFontsMainController_doneWithDeleteAppFonts___block_invoke_2;
  v8 = &unk_10001C738;
  v9 = selfCopy;
  [(DeleteAppFontsMainController *)v3 dismissViewControllerAnimated:1 completion:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
}

void __55__DeleteAppFontsMainController_doneWithDeleteAppFonts___block_invoke(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSLog(@"FontInstallViewService connection error - %@", location[0]);
  objc_storeStrong(location, 0);
}

void __55__DeleteAppFontsMainController_doneWithDeleteAppFonts___block_invoke_2(id *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  [*(a1[4] + 2) invalidate];
  objc_storeStrong(a1[4] + 2, 0);
  if (*(a1[4] + 3))
  {
    (*(*(a1[4] + 3) + 16))();
  }

  v2[0] = [a1[4] _remoteViewControllerProxy];
  [v2[0] deactivate];
  [v2[0] invalidate];
  objc_storeStrong(v2, 0);
}

@end