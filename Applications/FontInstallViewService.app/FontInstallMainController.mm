@interface FontInstallMainController
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)connectToEndpoint:(id)a3;
- (void)doneWithInstallFonts:(BOOL)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)setupWithUserInfo:(id)a3 xpcEndpoint:(id)a4 dismissHandler:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FontInstallMainController

- (void)viewDidAppear:(BOOL)a3
{
  v43 = self;
  v42 = a2;
  v41 = a3;
  v40.receiver = self;
  v40.super_class = FontInstallMainController;
  [(FontInstallMainController *)&v40 viewDidAppear:a3];
  v9 = +[UIScreen mainScreen];
  [(UIScreen *)v9 scale];
  v39 = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.FontInstallViewService" format:2 scale:?];

  v10 = +[NSBundle mainBundle];
  v38 = [NSBundle localizedStringForKey:v10 value:"localizedStringForKey:value:table:" table:@"FONT_INSTALL_NOTE"];

  v11 = [(FontInstallMainController *)v43 applicationName];
  v37 = [NSString localizedStringWithFormat:v38, v11];

  v12 = +[NSBundle mainBundle];
  v36 = [(NSBundle *)v12 localizedStringForKey:@"FONT_INSTALL_TITLE" value:&stru_10001CD88 table:0];

  v13 = +[NSBundle mainBundle];
  v35 = [(NSBundle *)v13 localizedStringForKey:@"DONT_INSTALL_BUTTON" value:&stru_10001CD88 table:0];

  v14 = +[NSBundle mainBundle];
  v34 = [(NSBundle *)v14 localizedStringForKey:@"INSTALL_BUTTON" value:&stru_10001CD88 table:0];

  v33 = [UIAlertController alertControllerWithTitle:v36 message:v37 preferredStyle:?];
  v15 = [v33 view];
  [v15 setAccessibilityIdentifier:@"FONT_INSTALL"];

  objc_initWeak(&location, v43);
  v16 = v35;
  v25 = _NSConcreteStackBlock;
  v26 = -1073741824;
  v27 = 0;
  v28 = __43__FontInstallMainController_viewDidAppear___block_invoke;
  v29 = &unk_10001C780;
  objc_copyWeak(&v30, &location);
  v31 = [UIAlertAction actionWithTitle:v16 style:1 handler:&v25];
  v8 = v34;
  v18 = _NSConcreteStackBlock;
  v19 = -1073741824;
  v20 = 0;
  v21 = __43__FontInstallMainController_viewDidAppear___block_invoke_2;
  v22 = &unk_10001C780;
  objc_copyWeak(&v23, &location);
  v24 = [UIAlertAction actionWithTitle:v8 style:0 handler:&v18];
  [v33 addAction:v31];
  [v33 addAction:v24];
  v6 = v33;
  v7 = [IconAndSubIconHeaderViewController alloc];
  v5 = v39;
  v3 = [(FontInstallMainController *)v43 applicationIconImage];
  v4 = [(IconAndSubIconHeaderViewController *)v7 initWithIconImage:v5 andSubIconImage:?];
  [v6 _setHeaderContentViewController:v4];

  objc_storeStrong(&v43->_vcNav, v33);
  [(FontInstallMainController *)v43 presentViewController:v43->_vcNav animated:1 completion:0];
  v17 = [(FontInstallMainController *)v43 _remoteViewControllerProxy];
  [v17 setWallpaperTunnelActive:1];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v24, 0);
  objc_destroyWeak(&v23);
  objc_storeStrong(&v31, 0);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
}

void __43__FontInstallMainController_viewDidAppear___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  to[1] = a1;
  objc_copyWeak(to, a1 + 4);
  WeakRetained = objc_loadWeakRetained(to);

  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained(to);
    [v2 doneWithInstallFonts:0];
  }

  objc_destroyWeak(to);
  objc_storeStrong(location, 0);
}

void __43__FontInstallMainController_viewDidAppear___block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  to[1] = a1;
  objc_copyWeak(to, a1 + 4);
  WeakRetained = objc_loadWeakRetained(to);

  if (WeakRetained)
  {
    v2 = objc_loadWeakRetained(to);
    [v2 doneWithInstallFonts:1];
  }

  objc_destroyWeak(to);
  objc_storeStrong(location, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = FontInstallMainController;
  [(FontInstallMainController *)&v4 viewWillAppear:a3];
  v3 = [(FontInstallMainController *)v7 _remoteViewControllerProxy];
  [v3 setStatusBarHidden:1 withDuration:0.0];
  [v3 setAllowsAlertItems:1];
  objc_storeStrong(&v3, 0);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  if (self->_connection)
  {
    NSLog(@"Install Font Dialog must have been forcibly dismissed.");
    [(FontInstallMainController *)v6 doneWithInstallFonts:0];
  }

  v3.receiver = v6;
  v3.super_class = FontInstallMainController;
  [(FontInstallMainController *)&v3 viewDidDisappear:v4];
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
  v10 = __47__FontInstallMainController_connectToEndpoint___block_invoke;
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

void __47__FontInstallMainController_connectToEndpoint___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    NSLog(@"FontInstallMainController invalidated.");
  }

  objc_storeStrong(location, 0);
}

- (void)setupWithUserInfo:(id)a3 xpcEndpoint:(id)a4 dismissHandler:(id)a5
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = 0;
  objc_storeStrong(&v18, a5);
  v17 = [location[0] objectForKey:@"identifier"];
  v5 = [LSApplicationRecord alloc];
  v16 = [v5 initWithBundleIdentifier:v17 allowPlaceholder:0 error:0];
  v14 = v17;
  v15 = +[UIScreen mainScreen];
  [(UIScreen *)v15 scale];
  v6 = [UIImage _applicationIconImageForBundleIdentifier:v14 format:0 scale:?];
  applicationIconImage = v21->_applicationIconImage;
  v21->_applicationIconImage = v6;

  v8 = [v16 localizedName];
  applicationName = v21->_applicationName;
  v21->_applicationName = v8;

  v10 = objc_retainBlock(v18);
  dismissHandler = v21->_dismissHandler;
  v21->_dismissHandler = v10;

  [(FontInstallMainController *)v21 connectToEndpoint:v19];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
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
  v10 = [(FontInstallMainController *)v13 _remoteViewControllerProxyWithErrorHandler:&__block_literal_global_2];
  v7 = [(FontInstallMainController *)v13 view];
  v6 = [v7 window];
  v5 = [v6 windowScene];
  [v10 setLaunchingInterfaceOrientation:{objc_msgSend(v5, "interfaceOrientation")}];

  [v10 setReachabilityDisabled:1];
  [v10 setAllowsAlertStacking:0];
  v8 = v13;
  v9 = [location[0] xpcEndpoint];
  [(FontInstallMainController *)v8 connectToEndpoint:?];

  if (v11)
  {
    (*(v11 + 2))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __61__FontInstallMainController_configureWithContext_completion___block_invoke(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSLog(@"FontInstall configureWithContext - error - %@", location[0]);
  objc_storeStrong(location, 0);
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = [(FontInstallMainController *)v16 _remoteViewControllerProxyWithErrorHandler:&__block_literal_global_134];
  [v13 setStatusBarHidden:1 withDuration:0.4];
  v9 = [location[0] userInfo];
  v12 = [v9 objectForKey:@"identifier"];

  v11 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v12 allowPlaceholder:0 error:0];
  v10 = +[UIScreen mainScreen];
  [(UIScreen *)v10 scale];
  v4 = [UIImage _applicationIconImageForBundleIdentifier:v12 format:0 scale:?];
  applicationIconImage = v16->_applicationIconImage;
  v16->_applicationIconImage = v4;

  v6 = [v11 localizedName];
  applicationName = v16->_applicationName;
  v16->_applicationName = v6;

  if (v14)
  {
    (*(v14 + 2))();
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __72__FontInstallMainController_prepareForActivationWithContext_completion___block_invoke(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSLog(@"FontInstall prepareForActivationWithContext - error - %@", location[0]);
  objc_storeStrong(location, 0);
}

- (void)doneWithInstallFonts:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  NSLog(@"FontInstall doneWithInstallFonts:%d", a3);
  v10 = [(NSXPCConnection *)v13->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_142];
  [v10 doneWithInstallFonts:v11];
  v3 = v13;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = __50__FontInstallMainController_doneWithInstallFonts___block_invoke_2;
  v8 = &unk_10001C738;
  v9 = v13;
  [(FontInstallMainController *)v3 dismissViewControllerAnimated:1 completion:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
}

void __50__FontInstallMainController_doneWithInstallFonts___block_invoke(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSLog(@"FontInstallViewService connection error - %@", location[0]);
  objc_storeStrong(location, 0);
}

void __50__FontInstallMainController_doneWithInstallFonts___block_invoke_2(id *a1)
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
  objc_storeStrong(a1[4] + 1, 0);
  objc_storeStrong(a1[4] + 4, 0);
  objc_storeStrong(v2, 0);
}

@end