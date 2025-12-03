@interface FontInstallMissingController
- (void)configureControllersForInput;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)connectToEndpoint:(id)endpoint;
- (void)doneWithMissingFonts:(id)fonts withDismissAnimated:(BOOL)animated;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)setupWithUserInfo:(id)info xpcEndpoint:(id)endpoint dismissHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FontInstallMissingController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v43 = a2;
  appearCopy = appear;
  v41.receiver = self;
  v41.super_class = FontInstallMissingController;
  [(FontInstallMissingController *)&v41 viewDidAppear:appear];
  location = @"Main_iPhone";
  v19 = +[UIDevice currentDevice];
  userInterfaceIdiom = [(UIDevice *)v19 userInterfaceIdiom];

  v45 = userInterfaceIdiom;
  v21 = 1;
  if (userInterfaceIdiom != 1)
  {
    v21 = v45 == 5;
  }

  if (v21)
  {
    objc_storeStrong(&location, @"Main");
  }

  view = [(FontInstallMissingController *)selfCopy view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  v3 = [UIStoryboard storyboardWithName:location bundle:0];
  storyboard = selfCopy->_storyboard;
  selfCopy->_storyboard = v3;

  v5 = [(UIStoryboard *)selfCopy->_storyboard instantiateViewControllerWithIdentifier:@"MissingFontsNavigation"];
  detailPresentationController = selfCopy->_detailPresentationController;
  selfCopy->_detailPresentationController = v5;

  v16 = +[UIScreen mainScreen];
  [(UIScreen *)v16 scale];
  v7 = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.FontInstallViewService" format:2 scale:?];
  mainIcon = selfCopy->_mainIcon;
  selfCopy->_mainIcon = v7;

  v39 = [UIAlertController alertControllerWithTitle:selfCopy->_alertTitle message:selfCopy->_messageText preferredStyle:?];
  view2 = [v39 view];
  [view2 setAccessibilityIdentifier:@"MISSING_FONTS"];

  objc_initWeak(&v38, selfCopy);
  cancelTitle = selfCopy->_cancelTitle;
  v31 = _NSConcreteStackBlock;
  v32 = -1073741824;
  v33 = 0;
  v34 = __46__FontInstallMissingController_viewDidAppear___block_invoke;
  v35 = &unk_10001C780;
  objc_copyWeak(&v36, &v38);
  v37 = [UIAlertAction actionWithTitle:cancelTitle style:1 handler:&v31];
  noncancelTitle = selfCopy->_noncancelTitle;
  v23 = _NSConcreteStackBlock;
  v24 = -1073741824;
  v25 = 0;
  v26 = __46__FontInstallMissingController_viewDidAppear___block_invoke_2;
  v27 = &unk_10001C7A8;
  objc_copyWeak(&v29, &v38);
  v28 = selfCopy;
  v30 = [UIAlertAction actionWithTitle:noncancelTitle style:0 handler:&v23];
  [v39 addAction:v37];
  [v39 addAction:v30];
  v10 = v39;
  v11 = [IconAndSubIconHeaderViewController alloc];
  v9 = [(IconAndSubIconHeaderViewController *)v11 initWithIconImage:selfCopy->_mainIcon andSubIconImage:selfCopy->_subIcon];
  [v10 _setHeaderContentViewController:v9];

  objc_storeStrong(&selfCopy->_initialViewController, v39);
  [(FontInstallMissingController *)selfCopy presentViewController:selfCopy->_initialViewController animated:1 completion:0];
  _remoteViewControllerProxy = [(FontInstallMissingController *)selfCopy _remoteViewControllerProxy];
  [_remoteViewControllerProxy setWallpaperTunnelActive:1];
  objc_storeStrong(&_remoteViewControllerProxy, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v28, 0);
  objc_destroyWeak(&v29);
  objc_storeStrong(&v37, 0);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&location, 0);
}

void __46__FontInstallMissingController_viewDidAppear___block_invoke(id *a1, void *a2)
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
    [v2 doneWithMissingFonts:&__NSArray0__struct withDismissAnimated:1];
  }

  objc_destroyWeak(to);
  objc_storeStrong(location, 0);
}

void __46__FontInstallMissingController_viewDidAppear___block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  to[1] = a1;
  objc_copyWeak(to, a1 + 5);
  WeakRetained = objc_loadWeakRetained(to);

  if (WeakRetained)
  {
    [*(a1[4] + 10) setModalTransitionStyle:0];
    [*(a1[4] + 10) setModalPresentationStyle:2];
    [*(a1[4] + 10) setRemoteController:a1[4]];
    [a1[4] presentViewController:*(a1[4] + 10) animated:1 completion:0];
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
  v4.super_class = FontInstallMissingController;
  [(FontInstallMissingController *)&v4 viewWillAppear:appear];
  _remoteViewControllerProxy = [(FontInstallMissingController *)selfCopy _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];
  [_remoteViewControllerProxy setAllowsAlertItems:1];
  objc_storeStrong(&_remoteViewControllerProxy, 0);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v10 = a2;
  disappearCopy = disappear;
  if (self->_connection)
  {
    location = &_os_log_default;
    v7 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_debug_impl(&_mh_execute_header, log, type, "Missing Font Dialog must have been forcibly dismissed.", v6, 2u);
    }

    objc_storeStrong(&location, 0);
    [(FontInstallMissingController *)selfCopy doneWithMissingFonts:&__NSArray0__struct withDismissAnimated:1];
  }

  v5.receiver = selfCopy;
  v5.super_class = FontInstallMissingController;
  [(FontInstallMissingController *)&v5 viewDidDisappear:disappearCopy];
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
  v10 = __50__FontInstallMissingController_connectToEndpoint___block_invoke;
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

void __50__FontInstallMissingController_connectToEndpoint___block_invoke(id *a1)
{
  v6[2] = a1;
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained(a1 + 4);
  if (v6[0])
  {
    location = &_os_log_default;
    v4 = 2;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      log = location;
      type = v4;
      __os_log_helper_16_0_0(v3);
      _os_log_debug_impl(&_mh_execute_header, log, type, "FontInstallMissingController invalidated.", v3, 2u);
    }

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(v6, 0);
}

- (void)setupWithUserInfo:(id)info xpcEndpoint:(id)endpoint dismissHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v11 = 0;
  objc_storeStrong(&v11, endpoint);
  v10 = 0;
  objc_storeStrong(&v10, handler);
  v9 = [location[0] objectForKey:@"fonts"];
  [(FontInstallMissingController *)selfCopy setInput:?];

  [(FontInstallMissingController *)selfCopy configureControllersForInput];
  v5 = objc_retainBlock(v10);
  dismissHandler = selfCopy->_dismissHandler;
  selfCopy->_dismissHandler = v5;

  [(FontInstallMissingController *)selfCopy connectToEndpoint:v11];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v15 = [(FontInstallMissingController *)selfCopy _remoteViewControllerProxyWithErrorHandler:&__block_literal_global_1];
  view = [(FontInstallMissingController *)selfCopy view];
  window = [view window];
  windowScene = [window windowScene];
  [v15 setLaunchingInterfaceOrientation:{objc_msgSend(windowScene, "interfaceOrientation")}];

  [v15 setReachabilityDisabled:1];
  [v15 setAllowsAlertStacking:0];
  v14 = &_os_log_default;
  v13 = 2;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    log = v14;
    type = v13;
    __os_log_helper_16_0_0(v12);
    _os_log_debug_impl(&_mh_execute_header, log, type, "FontInstall configureWithContext", v12, 2u);
  }

  objc_storeStrong(&v14, 0);
  v4 = selfCopy;
  xpcEndpoint = [location[0] xpcEndpoint];
  [(FontInstallMissingController *)v4 connectToEndpoint:?];

  if (v16)
  {
    (*(v16 + 2))();
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __64__FontInstallMissingController_configureWithContext_completion___block_invoke(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = &_os_log_default;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "FontInstall configureWithContext - error - %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

- (void)configureControllersForInput
{
  selfCopy = self;
  v96 = a2;
  input = [(FontInstallMissingController *)self input];
  v78 = [(NSArray *)input count];

  v95 = v78;
  v94 = objc_opt_new();
  v93 = 0;
  memset(__b, 0, sizeof(__b));
  obj = [(FontInstallMissingController *)selfCopy input];
  v80 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v99 count:16];
  if (v80)
  {
    v74 = *__b[2];
    v75 = 0;
    v76 = v80;
    while (1)
    {
      v73 = v75;
      if (*__b[2] != v74)
      {
        objc_enumerationMutation(obj);
      }

      v92 = *(__b[1] + 8 * v75);
      v90 = [v92 objectForKeyedSubscript:@"providers"];
      [v94 addObjectsFromArray:v90];
      v2 = [v90 count];
      v93 += v2 != 0;
      objc_storeStrong(&v90, 0);
      ++v75;
      if (v73 + 1 >= v76)
      {
        v75 = 0;
        v76 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v99 count:16];
        if (!v76)
        {
          break;
        }
      }
    }
  }

  v89 = [v94 count];
  v88 = v95 <= 3;
  if (v93)
  {
    if (v88 && v89 == 1 && v93 == v95)
    {
      v87 = objc_opt_new();
      memset(v85, 0, sizeof(v85));
      input2 = [(FontInstallMissingController *)selfCopy input];
      v66 = [(NSArray *)input2 countByEnumeratingWithState:v85 objects:v98 count:16];
      if (v66)
      {
        v62 = *v85[2];
        v63 = 0;
        v64 = v66;
        while (1)
        {
          v61 = v63;
          if (*v85[2] != v62)
          {
            objc_enumerationMutation(input2);
          }

          v86 = *(v85[1] + 8 * v63);
          v56 = v87;
          v60 = +[NSBundle mainBundle];
          v59 = [(NSBundle *)v60 localizedStringForKey:@"QUOTE_FONT_NAME_IN_LIST" value:&stru_10001CD88 table:0];
          v58 = [v86 objectForKeyedSubscript:@"displayName"];
          v57 = [NSString localizedStringWithFormat:v59, v58];
          [v56 addObject:?];

          ++v63;
          if (v61 + 1 >= v64)
          {
            v63 = 0;
            v64 = [(NSArray *)input2 countByEnumeratingWithState:v85 objects:v98 count:16];
            if (!v64)
            {
              break;
            }
          }
        }
      }

      anyObject = [v94 anyObject];
      v47 = +[UIScreen mainScreen];
      [(UIScreen *)v47 scale];
      v83 = [UIImage _applicationIconImageForBundleIdentifier:anyObject format:2 scale:?];

      v48 = [[LSApplicationRecord alloc] initWithBundleIdentifier:anyObject allowPlaceholder:0 error:?];
      localizedName = [v48 localizedName];

      v81 = [v87 count];
      objc_storeStrong(&selfCopy->_subIcon, v83);
      v17 = +[NSBundle mainBundle];
      v50 = v17;
      if (v81 == 1)
      {
        v18 = @"INSTALL_TITLE_SINGULAR";
      }

      else
      {
        v18 = @"INSTALL_TITLE_PLURAL";
      }

      v49 = [NSBundle localizedStringForKey:v17 value:"localizedStringForKey:value:table:" table:v18];
      v19 = [NSString localizedStringWithFormat:?];
      alertTitle = selfCopy->_alertTitle;
      selfCopy->_alertTitle = v19;

      v21 = +[NSBundle mainBundle];
      v53 = v21;
      if (v81 == 1)
      {
        v22 = @"MISSING_SIMPLE_AVAILABLE_SINGULAR";
      }

      else
      {
        v22 = @"MISSING_SIMPLE_AVAILABLE_PLURAL";
      }

      v52 = [(NSBundle *)v21 localizedStringForKey:v22 value:&stru_10001CD88 table:0];
      v51 = [NSListFormatter localizedStringByJoiningStrings:v87];
      v23 = [NSString localizedStringWithFormat:v52, v51, localizedName];
      messageText = selfCopy->_messageText;
      selfCopy->_messageText = v23;

      v54 = +[NSBundle mainBundle];
      v25 = [(NSBundle *)v54 localizedStringForKey:@"IGNORE_BUTTON" value:&stru_10001CD88 table:0];
      cancelTitle = selfCopy->_cancelTitle;
      selfCopy->_cancelTitle = v25;

      v55 = +[NSBundle mainBundle];
      v27 = [(NSBundle *)v55 localizedStringForKey:@"DETAILS_BUTTON" value:&stru_10001CD88 table:0];
      noncancelTitle = selfCopy->_noncancelTitle;
      selfCopy->_noncancelTitle = v27;

      objc_storeStrong(&localizedName, 0);
      objc_storeStrong(&v83, 0);
      objc_storeStrong(&anyObject, 0);
      objc_storeStrong(&v87, 0);
    }

    else
    {
      objc_storeStrong(&selfCopy->_subIcon, 0);
      v29 = +[NSBundle mainBundle];
      v42 = v29;
      if (v93 == 1)
      {
        v30 = @"INSTALL_TITLE_SINGULAR";
      }

      else
      {
        v30 = @"INSTALL_TITLE_PLURAL";
      }

      v41 = [NSBundle localizedStringForKey:v29 value:"localizedStringForKey:value:table:" table:v30];
      v31 = [NSString localizedStringWithFormat:?];
      v32 = selfCopy->_alertTitle;
      selfCopy->_alertTitle = v31;

      v33 = +[NSBundle mainBundle];
      v44 = v33;
      if (v93 == 1)
      {
        v34 = @"MISSING_AVAILABLE_SINGULAR";
      }

      else
      {
        v34 = @"MISSING_AVAILABLE_PLURAL";
      }

      v43 = [(NSBundle *)v33 localizedStringForKey:v34 value:&stru_10001CD88 table:0];
      v35 = [NSString localizedStringWithFormat:?];
      v36 = selfCopy->_messageText;
      selfCopy->_messageText = v35;

      v45 = +[NSBundle mainBundle];
      v37 = [(NSBundle *)v45 localizedStringForKey:@"IGNORE_BUTTON" value:&stru_10001CD88 table:0];
      v38 = selfCopy->_cancelTitle;
      selfCopy->_cancelTitle = v37;

      v46 = +[NSBundle mainBundle];
      v39 = [(NSBundle *)v46 localizedStringForKey:@"DETAILS_BUTTON" value:&stru_10001CD88 table:0];
      v40 = selfCopy->_noncancelTitle;
      selfCopy->_noncancelTitle = v39;
    }
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v68 = v3;
    if (v95 == 1)
    {
      v4 = @"CANT_INSTALL_TITLE_SINGULAR";
    }

    else
    {
      v4 = @"CANT_INSTALL_TITLE_PLURAL";
    }

    v67 = [NSBundle localizedStringForKey:v3 value:"localizedStringForKey:value:table:" table:v4];
    v5 = [NSString localizedStringWithFormat:v95];
    v6 = selfCopy->_alertTitle;
    selfCopy->_alertTitle = v5;

    v7 = +[NSBundle mainBundle];
    v70 = v7;
    if (v95 == 1)
    {
      v8 = @"MISSING_UNAVAILABLE_SINGULAR";
    }

    else
    {
      v8 = @"MISSING_UNAVAILABLE_PLURAL";
    }

    v69 = [(NSBundle *)v7 localizedStringForKey:v8 value:&stru_10001CD88 table:0];
    v9 = [NSString localizedStringWithFormat:?];
    v10 = selfCopy->_messageText;
    selfCopy->_messageText = v9;

    v11 = [UIImage imageNamed:@"Caution"];
    subIcon = selfCopy->_subIcon;
    selfCopy->_subIcon = v11;

    v71 = +[NSBundle mainBundle];
    v13 = [(NSBundle *)v71 localizedStringForKey:@"OK_BUTTON" value:&stru_10001CD88 table:0];
    v14 = selfCopy->_cancelTitle;
    selfCopy->_cancelTitle = v13;

    v72 = +[NSBundle mainBundle];
    v15 = [(NSBundle *)v72 localizedStringForKey:@"DETAILS_BUTTON" value:&stru_10001CD88 table:0];
    v16 = selfCopy->_noncancelTitle;
    selfCopy->_noncancelTitle = v15;
  }

  objc_storeStrong(&v94, 0);
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  v12 = [(FontInstallMissingController *)selfCopy _remoteViewControllerProxyWithErrorHandler:&__block_literal_global_151];
  v11 = &_os_log_default;
  v10 = 2;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    log = v11;
    type = v10;
    __os_log_helper_16_0_0(v9);
    _os_log_debug_impl(&_mh_execute_header, log, type, "FontInstall prepareForActivationWithContext", v9, 2u);
  }

  objc_storeStrong(&v11, 0);
  [v12 setStatusBarHidden:1 withDuration:0.4];
  userInfo = [location[0] userInfo];
  v4 = [userInfo objectForKey:@"fonts"];
  [(FontInstallMissingController *)selfCopy setInput:?];

  [(FontInstallMissingController *)selfCopy configureControllersForInput];
  if (v13)
  {
    (*(v13 + 2))();
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __75__FontInstallMissingController_prepareForActivationWithContext_completion___block_invoke(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = &_os_log_default;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "FontInstall prepareForActivationWithContext - error - %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

- (void)doneWithMissingFonts:(id)fonts withDismissAnimated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fonts);
  animatedCopy = animated;
  v15 = &_os_log_default;
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v19, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v15, v14, "FontInstall doneWithMissingFonts:%@", v19, 0xCu);
  }

  objc_storeStrong(&v15, 0);
  v13 = [(NSXPCConnection *)selfCopy->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_153];
  [v13 doneWithMissingFonts:location[0]];
  v5 = selfCopy;
  v4 = animatedCopy;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = __73__FontInstallMissingController_doneWithMissingFonts_withDismissAnimated___block_invoke_154;
  v11 = &unk_10001C738;
  v12 = selfCopy;
  [(FontInstallMissingController *)v5 dismissViewControllerAnimated:v4 completion:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __73__FontInstallMissingController_doneWithMissingFonts_withDismissAnimated___block_invoke(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = &_os_log_default;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEBUG, "FontInstallViewService connection error - %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

void __73__FontInstallMissingController_doneWithMissingFonts_withDismissAnimated___block_invoke_154(id *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  [*(a1[4] + 3) invalidate];
  objc_storeStrong(a1[4] + 3, 0);
  if (*(a1[4] + 11))
  {
    (*(*(a1[4] + 11) + 16))();
  }

  v2[0] = [a1[4] _remoteViewControllerProxy];
  [v2[0] deactivate];
  [v2[0] invalidate];
  objc_storeStrong(a1[4] + 2, 0);
  objc_storeStrong(a1[4] + 1, 0);
  objc_storeStrong(a1[4] + 10, 0);
  objc_storeStrong(a1[4] + 8, 0);
  objc_storeStrong(a1[4] + 9, 0);
  objc_storeStrong(v2, 0);
}

@end