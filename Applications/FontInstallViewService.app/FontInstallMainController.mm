@interface FontInstallMainController
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)connectToEndpoint:(id)endpoint;
- (void)doneWithInstallFonts:(BOOL)fonts;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)setupWithUserInfo:(id)info xpcEndpoint:(id)endpoint dismissHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FontInstallMainController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v42 = a2;
  appearCopy = appear;
  v40.receiver = self;
  v40.super_class = FontInstallMainController;
  [(FontInstallMainController *)&v40 viewDidAppear:appear];
  v9 = +[UIScreen mainScreen];
  [(UIScreen *)v9 scale];
  v39 = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.FontInstallViewService" format:2 scale:?];

  v10 = +[NSBundle mainBundle];
  v38 = [NSBundle localizedStringForKey:v10 value:"localizedStringForKey:value:table:" table:@"FONT_INSTALL_NOTE"];

  applicationName = [(FontInstallMainController *)selfCopy applicationName];
  v37 = [NSString localizedStringWithFormat:v38, applicationName];

  v12 = +[NSBundle mainBundle];
  v36 = [(NSBundle *)v12 localizedStringForKey:@"FONT_INSTALL_TITLE" value:&stru_10001CD88 table:0];

  v13 = +[NSBundle mainBundle];
  v35 = [(NSBundle *)v13 localizedStringForKey:@"DONT_INSTALL_BUTTON" value:&stru_10001CD88 table:0];

  v14 = +[NSBundle mainBundle];
  v34 = [(NSBundle *)v14 localizedStringForKey:@"INSTALL_BUTTON" value:&stru_10001CD88 table:0];

  v33 = [UIAlertController alertControllerWithTitle:v36 message:v37 preferredStyle:?];
  view = [v33 view];
  [view setAccessibilityIdentifier:@"FONT_INSTALL"];

  objc_initWeak(&location, selfCopy);
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
  applicationIconImage = [(FontInstallMainController *)selfCopy applicationIconImage];
  v4 = [(IconAndSubIconHeaderViewController *)v7 initWithIconImage:v5 andSubIconImage:?];
  [v6 _setHeaderContentViewController:v4];

  objc_storeStrong(&selfCopy->_vcNav, v33);
  [(FontInstallMainController *)selfCopy presentViewController:selfCopy->_vcNav animated:1 completion:0];
  _remoteViewControllerProxy = [(FontInstallMainController *)selfCopy _remoteViewControllerProxy];
  [_remoteViewControllerProxy setWallpaperTunnelActive:1];
  objc_storeStrong(&_remoteViewControllerProxy, 0);
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = FontInstallMainController;
  [(FontInstallMainController *)&v4 viewWillAppear:appear];
  _remoteViewControllerProxy = [(FontInstallMainController *)selfCopy _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];
  [_remoteViewControllerProxy setAllowsAlertItems:1];
  objc_storeStrong(&_remoteViewControllerProxy, 0);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v5 = a2;
  disappearCopy = disappear;
  if (self->_connection)
  {
    NSLog(@"Install Font Dialog must have been forcibly dismissed.");
    [(FontInstallMainController *)selfCopy doneWithInstallFonts:0];
  }

  v3.receiver = selfCopy;
  v3.super_class = FontInstallMainController;
  [(FontInstallMainController *)&v3 viewDidDisappear:disappearCopy];
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
  v10 = __47__FontInstallMainController_connectToEndpoint___block_invoke;
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

- (void)setupWithUserInfo:(id)info xpcEndpoint:(id)endpoint dismissHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v19 = 0;
  objc_storeStrong(&v19, endpoint);
  v18 = 0;
  objc_storeStrong(&v18, handler);
  v17 = [location[0] objectForKey:@"identifier"];
  v5 = [LSApplicationRecord alloc];
  v16 = [v5 initWithBundleIdentifier:v17 allowPlaceholder:0 error:0];
  v14 = v17;
  v15 = +[UIScreen mainScreen];
  [(UIScreen *)v15 scale];
  v6 = [UIImage _applicationIconImageForBundleIdentifier:v14 format:0 scale:?];
  applicationIconImage = selfCopy->_applicationIconImage;
  selfCopy->_applicationIconImage = v6;

  localizedName = [v16 localizedName];
  applicationName = selfCopy->_applicationName;
  selfCopy->_applicationName = localizedName;

  v10 = objc_retainBlock(v18);
  dismissHandler = selfCopy->_dismissHandler;
  selfCopy->_dismissHandler = v10;

  [(FontInstallMainController *)selfCopy connectToEndpoint:v19];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
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
  v10 = [(FontInstallMainController *)selfCopy _remoteViewControllerProxyWithErrorHandler:&__block_literal_global_2];
  view = [(FontInstallMainController *)selfCopy view];
  window = [view window];
  windowScene = [window windowScene];
  [v10 setLaunchingInterfaceOrientation:{objc_msgSend(windowScene, "interfaceOrientation")}];

  [v10 setReachabilityDisabled:1];
  [v10 setAllowsAlertStacking:0];
  v8 = selfCopy;
  xpcEndpoint = [location[0] xpcEndpoint];
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

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, completion);
  v13 = [(FontInstallMainController *)selfCopy _remoteViewControllerProxyWithErrorHandler:&__block_literal_global_134];
  [v13 setStatusBarHidden:1 withDuration:0.4];
  userInfo = [location[0] userInfo];
  v12 = [userInfo objectForKey:@"identifier"];

  v11 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v12 allowPlaceholder:0 error:0];
  v10 = +[UIScreen mainScreen];
  [(UIScreen *)v10 scale];
  v4 = [UIImage _applicationIconImageForBundleIdentifier:v12 format:0 scale:?];
  applicationIconImage = selfCopy->_applicationIconImage;
  selfCopy->_applicationIconImage = v4;

  localizedName = [v11 localizedName];
  applicationName = selfCopy->_applicationName;
  selfCopy->_applicationName = localizedName;

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

- (void)doneWithInstallFonts:(BOOL)fonts
{
  selfCopy = self;
  v12 = a2;
  fontsCopy = fonts;
  NSLog(@"FontInstall doneWithInstallFonts:%d", fonts);
  v10 = [(NSXPCConnection *)selfCopy->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_142];
  [v10 doneWithInstallFonts:fontsCopy];
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = __50__FontInstallMainController_doneWithInstallFonts___block_invoke_2;
  v8 = &unk_10001C738;
  v9 = selfCopy;
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