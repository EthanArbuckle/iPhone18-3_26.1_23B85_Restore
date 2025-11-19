@interface DeleteAppFontsMainController
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)connectToEndpoint:(id)a3;
- (void)doneWithDeleteAppFonts:(BOOL)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)setupWithUserInfo:(id)a3 xpcEndpoint:(id)a4 dismissHandler:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DeleteAppFontsMainController

- (void)viewDidAppear:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10.receiver = self;
  v10.super_class = DeleteAppFontsMainController;
  [(DeleteAppFontsMainController *)&v10 viewDidAppear:a3];
  v8 = [(DeleteAppFontsMainController *)v13 view];
  v7 = [v8 window];
  v6 = [v7 _rootSheetPresentationController];
  [v6 _setShouldScaleDownBehindDescendantSheets:0];

  v3 = [_TtC22FontInstallViewService28DeleteAppFontsAlertPresenter alloc];
  v4 = [(DeleteAppFontsAlertPresenter *)v3 initFrom:v13];
  alertPresenter = v13->_alertPresenter;
  v13->_alertPresenter = v4;

  [(DeleteAppFontsAlertPresenter *)v13->_alertPresenter showAlert];
  v9 = [(DeleteAppFontsMainController *)v13 _remoteViewControllerProxy];
  [v9 setWallpaperTunnelActive:1];
  objc_storeStrong(&v9, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = DeleteAppFontsMainController;
  [(DeleteAppFontsMainController *)&v4 viewWillAppear:a3];
  v3 = [(DeleteAppFontsMainController *)v7 _remoteViewControllerProxy];
  [v3 setStatusBarHidden:1 withDuration:0.0];
  [v3 setAllowsAlertItems:1];
  objc_storeStrong(&v3, 0);
}

- (void)connectToEndpoint:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = objc_alloc_init(NSXPCListenerEndpoint);
  [v15 _setEndpoint:location[0]];
  v3 = [[NSXPCConnection alloc] initWithListenerEndpoint:v15];
  connection = v17->_connection;
  v17->_connection = v3;

  v5 = v17->_connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FontInstallViewServiceProtocol];
  [(NSXPCConnection *)v5 setRemoteObjectInterface:?];

  objc_initWeak(&v14, v17);
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = __50__DeleteAppFontsMainController_connectToEndpoint___block_invoke;
  v11 = &unk_10001C690;
  objc_copyWeak(&v12, &v14);
  v13 = objc_retainBlock(&v7);
  [(NSXPCConnection *)v17->_connection setInvalidationHandler:v13];
  [(NSXPCConnection *)v17->_connection setInterruptionHandler:v13];
  [(NSXPCConnection *)v17->_connection resume];
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

- (void)setupWithUserInfo:(id)a3 xpcEndpoint:(id)a4 dismissHandler:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
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
  applicationIconImage = v22->_applicationIconImage;
  v22->_applicationIconImage = v5;

  v7 = [v17 localizedName];
  applicationName = v22->_applicationName;
  v22->_applicationName = v7;

  v9 = [location[0] objectForKey:@"registeredFonts"];
  registeredFonts = v22->_registeredFonts;
  v22->_registeredFonts = v9;

  v11 = objc_retainBlock(v19);
  dismissHandler = v22->_dismissHandler;
  v22->_dismissHandler = v11;

  [(DeleteAppFontsMainController *)v22 connectToEndpoint:v20];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = [(DeleteAppFontsMainController *)v13 _remoteViewControllerProxyWithErrorHandler:&__block_literal_global];
  v7 = [(DeleteAppFontsMainController *)v13 view];
  v6 = [v7 window];
  v5 = [v6 windowScene];
  [v10 setLaunchingInterfaceOrientation:{objc_msgSend(v5, "interfaceOrientation")}];

  [v10 setReachabilityDisabled:1];
  [v10 setAllowsAlertStacking:0];
  v8 = v13;
  v9 = [location[0] xpcEndpoint];
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

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = [(DeleteAppFontsMainController *)v20 _remoteViewControllerProxyWithErrorHandler:&__block_literal_global_74];
  [v17 setStatusBarHidden:1 withDuration:0.4];
  v14 = [location[0] userInfo];
  v16 = [v14 objectForKey:@"deleteAppIdentifier"];

  if (!v16)
  {
    v12 = [location[0] userInfo];
    v16 = [v12 objectForKey:@"identifier"];
  }

  v15 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v16 allowPlaceholder:0 error:0];
  v10 = +[UIScreen mainScreen];
  [(UIScreen *)v10 scale];
  v4 = [UIImage _applicationIconImageForBundleIdentifier:v16 format:0 scale:?];
  applicationIconImage = v20->_applicationIconImage;
  v20->_applicationIconImage = v4;

  v6 = [v15 localizedName];
  applicationName = v20->_applicationName;
  v20->_applicationName = v6;

  v11 = [location[0] userInfo];
  v8 = [v11 objectForKey:@"registeredFonts"];
  registeredFonts = v20->_registeredFonts;
  v20->_registeredFonts = v8;

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

- (void)doneWithDeleteAppFonts:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  NSLog(@"DeleteAppFonts doneWithDeleteAppFonts:%d", a3);
  v10 = [(NSXPCConnection *)v13->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_82];
  [v10 doneWithDeleteAppFonts:v11];
  v3 = v13;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = __55__DeleteAppFontsMainController_doneWithDeleteAppFonts___block_invoke_2;
  v8 = &unk_10001C738;
  v9 = v13;
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