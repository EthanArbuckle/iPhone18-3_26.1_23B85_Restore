@interface COSSkippedMiniFlowController
- (COSSkippedMiniFlowController)initWithSkippedControllerClassNames:(id)names;
- (COSSkippedMiniFlowControllerDelegate)flowDelegate;
- (id)currentController;
- (id)nextViewController;
- (id)setupFlowUserInfo;
- (void)_didFinish;
- (void)buddyControllerDone:(id)done;
- (void)doneButtonPressed;
- (void)viewDidLoad;
@end

@implementation COSSkippedMiniFlowController

- (COSSkippedMiniFlowController)initWithSkippedControllerClassNames:(id)names
{
  namesCopy = names;
  v24.receiver = self;
  v24.super_class = COSSkippedMiniFlowController;
  v5 = [(COSSkippedMiniFlowController *)&v24 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = namesCopy;
    v7 = namesCopy;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = NSClassFromString(v12);
          if (v13)
          {
            v14 = objc_alloc_init(v13);
            if (v14 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                v15 = v14;
                [v15 setDelegate:v5];
                [v15 setIsDisplayingInSkippedMiniFlow:1];
              }

              [(NSArray *)v6 addObject:v14];
            }

            else
            {
              v16 = pbb_bridge_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v26 = v12;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Error recreating skipped pane '%@': Pane not initialized or invalid pane class", buf, 0xCu);
              }
            }
          }

          else
          {
            v14 = pbb_bridge_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v26 = v12;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error recreating skipped pane '%@': Class could not be loaded", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
      }

      while (v9);
    }

    skippedControllers = v5->_skippedControllers;
    v5->_skippedControllers = v6;

    v5->_controllerIndex = 0;
    namesCopy = v19;
  }

  return v5;
}

- (id)currentController
{
  controllerIndex = [(COSSkippedMiniFlowController *)self controllerIndex];
  skippedControllers = [(COSSkippedMiniFlowController *)self skippedControllers];
  v5 = [skippedControllers count];

  if (controllerIndex >= v5)
  {
    v7 = 0;
  }

  else
  {
    skippedControllers2 = [(COSSkippedMiniFlowController *)self skippedControllers];
    v7 = [skippedControllers2 objectAtIndexedSubscript:{-[COSSkippedMiniFlowController controllerIndex](self, "controllerIndex")}];
  }

  return v7;
}

- (id)nextViewController
{
  currentController = [(COSSkippedMiniFlowController *)self currentController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewController = [currentController viewController];
LABEL_5:
    v5 = viewController;
    v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonPressed"];
    navigationItem = [v5 navigationItem];
    [navigationItem setRightBarButtonItem:v6];

    v8 = v5;
    v9 = v8;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewController = currentController;
    goto LABEL_5;
  }

  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error: current skipped flow controller is not a view controller or mini flow controller", v11, 2u);
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = COSSkippedMiniFlowController;
  [(COSSkippedMiniFlowController *)&v6 viewDidLoad];
  [(COSSkippedMiniFlowController *)self setModalInPresentation:1];
  nextViewController = [(COSSkippedMiniFlowController *)self nextViewController];
  v4 = nextViewController;
  if (nextViewController)
  {
    v7 = nextViewController;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    [(COSSkippedMiniFlowController *)self setViewControllers:v5];
  }
}

- (void)doneButtonPressed
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[COSSkippedMiniFlowController doneButtonPressed]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(COSSkippedMiniFlowController *)self _didFinish];
}

- (void)_didFinish
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[COSSkippedMiniFlowController _didFinish]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  flowDelegate = [(COSSkippedMiniFlowController *)self flowDelegate];
  if (flowDelegate)
  {
    v5 = flowDelegate;
    flowDelegate2 = [(COSSkippedMiniFlowController *)self flowDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      flowDelegate3 = [(COSSkippedMiniFlowController *)self flowDelegate];
      [flowDelegate3 skippedMiniFlowDidFinish:self];
    }
  }

  [(COSSkippedMiniFlowController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)buddyControllerDone:(id)done
{
  doneCopy = done;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[COSSkippedMiniFlowController buddyControllerDone:]";
    v10 = 2112;
    v11 = doneCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v8, 0x16u);
  }

  [BPSFollowUpController removeSkippedPaneClassForCurrentDevice:objc_opt_class()];
  [(COSSkippedMiniFlowController *)self setControllerIndex:[(COSSkippedMiniFlowController *)self controllerIndex]+ 1];
  nextViewController = [(COSSkippedMiniFlowController *)self nextViewController];
  if (nextViewController)
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[COSSkippedMiniFlowController buddyControllerDone:]";
      v10 = 2112;
      v11 = nextViewController;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s pushing %@", &v8, 0x16u);
    }

    [(COSSkippedMiniFlowController *)self pushViewController:nextViewController animated:1];
  }

  else
  {
    [(COSSkippedMiniFlowController *)self _didFinish];
  }
}

- (id)setupFlowUserInfo
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[BPSTinkerSupport sharedInstance];
  cachedTinkerFamilyMemeber = [v3 cachedTinkerFamilyMemeber];

  if (cachedTinkerFamilyMemeber)
  {
    [v2 setObject:cachedTinkerFamilyMemeber forKey:BPSPairingFlowFamilyMember];
  }

  return v2;
}

- (COSSkippedMiniFlowControllerDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end