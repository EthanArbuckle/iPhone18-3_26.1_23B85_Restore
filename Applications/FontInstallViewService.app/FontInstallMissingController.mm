@interface FontInstallMissingController
- (void)configureControllersForInput;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)connectToEndpoint:(id)a3;
- (void)doneWithMissingFonts:(id)a3 withDismissAnimated:(BOOL)a4;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)setupWithUserInfo:(id)a3 xpcEndpoint:(id)a4 dismissHandler:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FontInstallMissingController

- (void)viewDidAppear:(BOOL)a3
{
  v44 = self;
  v43 = a2;
  v42 = a3;
  v41.receiver = self;
  v41.super_class = FontInstallMissingController;
  [(FontInstallMissingController *)&v41 viewDidAppear:a3];
  location = @"Main_iPhone";
  v19 = +[UIDevice currentDevice];
  v20 = [(UIDevice *)v19 userInterfaceIdiom];

  v45 = v20;
  v21 = 1;
  if (v20 != 1)
  {
    v21 = v45 == 5;
  }

  if (v21)
  {
    objc_storeStrong(&location, @"Main");
  }

  v15 = [(FontInstallMissingController *)v44 view];
  v14 = [v15 window];
  v13 = [v14 _rootSheetPresentationController];
  [v13 _setShouldScaleDownBehindDescendantSheets:0];

  v3 = [UIStoryboard storyboardWithName:location bundle:0];
  storyboard = v44->_storyboard;
  v44->_storyboard = v3;

  v5 = [(UIStoryboard *)v44->_storyboard instantiateViewControllerWithIdentifier:@"MissingFontsNavigation"];
  detailPresentationController = v44->_detailPresentationController;
  v44->_detailPresentationController = v5;

  v16 = +[UIScreen mainScreen];
  [(UIScreen *)v16 scale];
  v7 = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.FontInstallViewService" format:2 scale:?];
  mainIcon = v44->_mainIcon;
  v44->_mainIcon = v7;

  v39 = [UIAlertController alertControllerWithTitle:v44->_alertTitle message:v44->_messageText preferredStyle:?];
  v17 = [v39 view];
  [v17 setAccessibilityIdentifier:@"MISSING_FONTS"];

  objc_initWeak(&v38, v44);
  cancelTitle = v44->_cancelTitle;
  v31 = _NSConcreteStackBlock;
  v32 = -1073741824;
  v33 = 0;
  v34 = __46__FontInstallMissingController_viewDidAppear___block_invoke;
  v35 = &unk_10001C780;
  objc_copyWeak(&v36, &v38);
  v37 = [UIAlertAction actionWithTitle:cancelTitle style:1 handler:&v31];
  noncancelTitle = v44->_noncancelTitle;
  v23 = _NSConcreteStackBlock;
  v24 = -1073741824;
  v25 = 0;
  v26 = __46__FontInstallMissingController_viewDidAppear___block_invoke_2;
  v27 = &unk_10001C7A8;
  objc_copyWeak(&v29, &v38);
  v28 = v44;
  v30 = [UIAlertAction actionWithTitle:noncancelTitle style:0 handler:&v23];
  [v39 addAction:v37];
  [v39 addAction:v30];
  v10 = v39;
  v11 = [IconAndSubIconHeaderViewController alloc];
  v9 = [(IconAndSubIconHeaderViewController *)v11 initWithIconImage:v44->_mainIcon andSubIconImage:v44->_subIcon];
  [v10 _setHeaderContentViewController:v9];

  objc_storeStrong(&v44->_initialViewController, v39);
  [(FontInstallMissingController *)v44 presentViewController:v44->_initialViewController animated:1 completion:0];
  v22 = [(FontInstallMissingController *)v44 _remoteViewControllerProxy];
  [v22 setWallpaperTunnelActive:1];
  objc_storeStrong(&v22, 0);
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

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = FontInstallMissingController;
  [(FontInstallMissingController *)&v4 viewWillAppear:a3];
  v3 = [(FontInstallMissingController *)v7 _remoteViewControllerProxy];
  [v3 setStatusBarHidden:1 withDuration:0.0];
  [v3 setAllowsAlertItems:1];
  objc_storeStrong(&v3, 0);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
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
    [(FontInstallMissingController *)v11 doneWithMissingFonts:&__NSArray0__struct withDismissAnimated:1];
  }

  v5.receiver = v11;
  v5.super_class = FontInstallMissingController;
  [(FontInstallMissingController *)&v5 viewDidDisappear:v9];
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
  v10 = __50__FontInstallMissingController_connectToEndpoint___block_invoke;
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

- (void)setupWithUserInfo:(id)a3 xpcEndpoint:(id)a4 dismissHandler:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = [location[0] objectForKey:@"fonts"];
  [(FontInstallMissingController *)v13 setInput:?];

  [(FontInstallMissingController *)v13 configureControllersForInput];
  v5 = objc_retainBlock(v10);
  dismissHandler = v13->_dismissHandler;
  v13->_dismissHandler = v5;

  [(FontInstallMissingController *)v13 connectToEndpoint:v11];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = [(FontInstallMissingController *)v18 _remoteViewControllerProxyWithErrorHandler:&__block_literal_global_1];
  v11 = [(FontInstallMissingController *)v18 view];
  v10 = [v11 window];
  v9 = [v10 windowScene];
  [v15 setLaunchingInterfaceOrientation:{objc_msgSend(v9, "interfaceOrientation")}];

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
  v4 = v18;
  v5 = [location[0] xpcEndpoint];
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
  v97 = self;
  v96 = a2;
  v77 = [(FontInstallMissingController *)self input];
  v78 = [(NSArray *)v77 count];

  v95 = v78;
  v94 = objc_opt_new();
  v93 = 0;
  memset(__b, 0, sizeof(__b));
  obj = [(FontInstallMissingController *)v97 input];
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
      v65 = [(FontInstallMissingController *)v97 input];
      v66 = [(NSArray *)v65 countByEnumeratingWithState:v85 objects:v98 count:16];
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
            objc_enumerationMutation(v65);
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
            v64 = [(NSArray *)v65 countByEnumeratingWithState:v85 objects:v98 count:16];
            if (!v64)
            {
              break;
            }
          }
        }
      }

      v84 = [v94 anyObject];
      v47 = +[UIScreen mainScreen];
      [(UIScreen *)v47 scale];
      v83 = [UIImage _applicationIconImageForBundleIdentifier:v84 format:2 scale:?];

      v48 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v84 allowPlaceholder:0 error:?];
      v82 = [v48 localizedName];

      v81 = [v87 count];
      objc_storeStrong(&v97->_subIcon, v83);
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
      alertTitle = v97->_alertTitle;
      v97->_alertTitle = v19;

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
      v23 = [NSString localizedStringWithFormat:v52, v51, v82];
      messageText = v97->_messageText;
      v97->_messageText = v23;

      v54 = +[NSBundle mainBundle];
      v25 = [(NSBundle *)v54 localizedStringForKey:@"IGNORE_BUTTON" value:&stru_10001CD88 table:0];
      cancelTitle = v97->_cancelTitle;
      v97->_cancelTitle = v25;

      v55 = +[NSBundle mainBundle];
      v27 = [(NSBundle *)v55 localizedStringForKey:@"DETAILS_BUTTON" value:&stru_10001CD88 table:0];
      noncancelTitle = v97->_noncancelTitle;
      v97->_noncancelTitle = v27;

      objc_storeStrong(&v82, 0);
      objc_storeStrong(&v83, 0);
      objc_storeStrong(&v84, 0);
      objc_storeStrong(&v87, 0);
    }

    else
    {
      objc_storeStrong(&v97->_subIcon, 0);
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
      v32 = v97->_alertTitle;
      v97->_alertTitle = v31;

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
      v36 = v97->_messageText;
      v97->_messageText = v35;

      v45 = +[NSBundle mainBundle];
      v37 = [(NSBundle *)v45 localizedStringForKey:@"IGNORE_BUTTON" value:&stru_10001CD88 table:0];
      v38 = v97->_cancelTitle;
      v97->_cancelTitle = v37;

      v46 = +[NSBundle mainBundle];
      v39 = [(NSBundle *)v46 localizedStringForKey:@"DETAILS_BUTTON" value:&stru_10001CD88 table:0];
      v40 = v97->_noncancelTitle;
      v97->_noncancelTitle = v39;
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
    v6 = v97->_alertTitle;
    v97->_alertTitle = v5;

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
    v10 = v97->_messageText;
    v97->_messageText = v9;

    v11 = [UIImage imageNamed:@"Caution"];
    subIcon = v97->_subIcon;
    v97->_subIcon = v11;

    v71 = +[NSBundle mainBundle];
    v13 = [(NSBundle *)v71 localizedStringForKey:@"OK_BUTTON" value:&stru_10001CD88 table:0];
    v14 = v97->_cancelTitle;
    v97->_cancelTitle = v13;

    v72 = +[NSBundle mainBundle];
    v15 = [(NSBundle *)v72 localizedStringForKey:@"DETAILS_BUTTON" value:&stru_10001CD88 table:0];
    v16 = v97->_noncancelTitle;
    v97->_noncancelTitle = v15;
  }

  objc_storeStrong(&v94, 0);
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = [(FontInstallMissingController *)v15 _remoteViewControllerProxyWithErrorHandler:&__block_literal_global_151];
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
  v5 = [location[0] userInfo];
  v4 = [v5 objectForKey:@"fonts"];
  [(FontInstallMissingController *)v15 setInput:?];

  [(FontInstallMissingController *)v15 configureControllersForInput];
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

- (void)doneWithMissingFonts:(id)a3 withDismissAnimated:(BOOL)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v15 = &_os_log_default;
  v14 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v19, location[0]);
    _os_log_debug_impl(&_mh_execute_header, v15, v14, "FontInstall doneWithMissingFonts:%@", v19, 0xCu);
  }

  objc_storeStrong(&v15, 0);
  v13 = [(NSXPCConnection *)v18->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_153];
  [v13 doneWithMissingFonts:location[0]];
  v5 = v18;
  v4 = v16;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = __73__FontInstallMissingController_doneWithMissingFonts_withDismissAnimated___block_invoke_154;
  v11 = &unk_10001C738;
  v12 = v18;
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