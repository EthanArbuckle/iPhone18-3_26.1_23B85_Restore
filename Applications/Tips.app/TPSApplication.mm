@interface TPSApplication
- (BOOL)runTest:(id)a3 options:(id)a4;
- (id)appCoordinator;
- (id)appDelegate;
@end

@implementation TPSApplication

- (id)appDelegate
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];

  return v3;
}

- (id)appCoordinator
{
  v2 = [(TPSApplication *)self appDelegate];
  v3 = [v2 appCoordinator];

  return v3;
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TPSApplication *)self appDelegate];
  [v8 resetCacheDefaults];

  v9 = [v7 objectForKeyedSubscript:@"iterations"];
  v10 = [v9 intValue];

  v11 = [v7 objectForKeyedSubscript:@"delta"];
  v12 = [v11 intValue];

  v13 = [v7 objectForKeyedSubscript:@"recapBased"];
  v14 = [v13 BOOLValue];

  if ([v6 hasPrefix:@"ScrollCollectionsView"])
  {
    v15 = [(TPSApplication *)self appCoordinator];
    [v15 handleScrollCollectionViewTestFlowWithTestName:v6 testOptions:v7];
LABEL_5:

    goto LABEL_6;
  }

  if ([v6 hasPrefix:@"ScrollTipListView"])
  {
    v15 = [(TPSApplication *)self appCoordinator];
    v16 = +[TPSCommonDefines softwareWelcomeCollectionIdentifier];
    [v15 handleTipsListViewTestFlowWithTestName:v6 testOptions:v7 collectionID:v16];

    goto LABEL_5;
  }

  if ([v6 hasPrefix:@"ScrollTipsForCollection"])
  {
    v18 = [(TPSApplication *)self appCoordinator];
    [v18 handleContentsCollectionViewTestFlow];

    v19 = dispatch_time(0, 1000000000);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100007FC8;
    v24[3] = &unk_1000A2EF8;
    v24[4] = self;
    v28 = v14;
    v25 = v6;
    v26 = v10;
    v27 = v12;
    dispatch_after(v19, &_dispatch_main_q, v24);
  }

  else if ([v6 hasPrefix:@"ResizeCollectionsView"])
  {
    v20 = [RPTResizeTestParameters alloc];
    v21 = [(TPSApplication *)self appCoordinator];
    v22 = [v21 mainViewControllerWindow];
    v23 = [v20 initWithTestName:v6 window:v22 completionHandler:0];

    [v23 setMinimumWindowSize:{300.0, 300.0}];
    [v23 setMaximumWindowSize:{600.0, 600.0}];
    [RPTTestRunner runTestWithParameters:v23];
  }

LABEL_6:

  return 1;
}

@end