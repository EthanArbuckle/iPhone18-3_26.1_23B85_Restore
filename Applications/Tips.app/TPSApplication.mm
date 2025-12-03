@interface TPSApplication
- (BOOL)runTest:(id)test options:(id)options;
- (id)appCoordinator;
- (id)appDelegate;
@end

@implementation TPSApplication

- (id)appDelegate
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];

  return delegate;
}

- (id)appCoordinator
{
  appDelegate = [(TPSApplication *)self appDelegate];
  appCoordinator = [appDelegate appCoordinator];

  return appCoordinator;
}

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  appDelegate = [(TPSApplication *)self appDelegate];
  [appDelegate resetCacheDefaults];

  v9 = [optionsCopy objectForKeyedSubscript:@"iterations"];
  intValue = [v9 intValue];

  v11 = [optionsCopy objectForKeyedSubscript:@"delta"];
  intValue2 = [v11 intValue];

  v13 = [optionsCopy objectForKeyedSubscript:@"recapBased"];
  bOOLValue = [v13 BOOLValue];

  if ([testCopy hasPrefix:@"ScrollCollectionsView"])
  {
    appCoordinator = [(TPSApplication *)self appCoordinator];
    [appCoordinator handleScrollCollectionViewTestFlowWithTestName:testCopy testOptions:optionsCopy];
LABEL_5:

    goto LABEL_6;
  }

  if ([testCopy hasPrefix:@"ScrollTipListView"])
  {
    appCoordinator = [(TPSApplication *)self appCoordinator];
    v16 = +[TPSCommonDefines softwareWelcomeCollectionIdentifier];
    [appCoordinator handleTipsListViewTestFlowWithTestName:testCopy testOptions:optionsCopy collectionID:v16];

    goto LABEL_5;
  }

  if ([testCopy hasPrefix:@"ScrollTipsForCollection"])
  {
    appCoordinator2 = [(TPSApplication *)self appCoordinator];
    [appCoordinator2 handleContentsCollectionViewTestFlow];

    v19 = dispatch_time(0, 1000000000);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100007FC8;
    v24[3] = &unk_1000A2EF8;
    v24[4] = self;
    v28 = bOOLValue;
    v25 = testCopy;
    v26 = intValue;
    v27 = intValue2;
    dispatch_after(v19, &_dispatch_main_q, v24);
  }

  else if ([testCopy hasPrefix:@"ResizeCollectionsView"])
  {
    v20 = [RPTResizeTestParameters alloc];
    appCoordinator3 = [(TPSApplication *)self appCoordinator];
    mainViewControllerWindow = [appCoordinator3 mainViewControllerWindow];
    v23 = [v20 initWithTestName:testCopy window:mainViewControllerWindow completionHandler:0];

    [v23 setMinimumWindowSize:{300.0, 300.0}];
    [v23 setMaximumWindowSize:{600.0, 600.0}];
    [RPTTestRunner runTestWithParameters:v23];
  }

LABEL_6:

  return 1;
}

@end