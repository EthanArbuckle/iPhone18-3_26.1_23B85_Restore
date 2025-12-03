@interface ATAPPTController
+ (id)sharedInstance;
- (BOOL)_canHandleTest:(id)test;
- (OS_dispatch_queue)workQueue;
- (id)_init;
- (void)_registerTests;
- (void)_runTest:(id)test app:(id)app;
- (void)_scrollHalfTheScreenHeightIn:(id)in;
- (void)_waitForSearchShelfsToLoadInTabBarController:(id)controller;
- (void)waitForApplicationToLoadNotification:(id)notification;
@end

@implementation ATAPPTController

+ (id)sharedInstance
{
  if (qword_1000235C8 != -1)
  {
    sub_100012658();
  }

  v3 = qword_1000235C0;

  return v3;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = ATAPPTController;
  v2 = [(ATAPPTController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_appLoadedLock._os_unfair_lock_opaque = 0;
    [(ATAPPTController *)v2 _registerTests];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"waitForApplicationToLoadNotification:" name:_VUITVAppNavigationDidDisplayViewControllerNotification object:0];
  }

  return v3;
}

- (OS_dispatch_queue)workQueue
{
  workQueue = self->_workQueue;
  if (!workQueue)
  {
    v4 = dispatch_queue_create("com.apple.tv.ppt", 0);
    v5 = self->_workQueue;
    self->_workQueue = v4;

    workQueue = self->_workQueue;
  }

  return workQueue;
}

- (void)_waitForSearchShelfsToLoadInTabBarController:(id)controller
{
  controllerCopy = controller;
  v3 = [controllerCopy valueForKeyPath:@"tabBar.items.title"];
  v4 = [v3 indexOfObject:VUITabBarItemIdentifierKeySearch];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    viewControllers = [controllerCopy viewControllers];
    v7 = [viewControllers objectAtIndex:v5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    childViewControllers = [v8 childViewControllers];
    firstObject = [childViewControllers firstObject];

    childViewControllers2 = [firstObject childViewControllers];
    firstObject2 = [childViewControllers2 firstObject];

    childViewControllers3 = [firstObject2 childViewControllers];
    firstObject3 = [childViewControllers3 firstObject];

    while (1)
    {
      childViewControllers4 = [firstObject3 childViewControllers];
      v16 = [childViewControllers4 count];

      if (v16)
      {
        break;
      }

      usleep(0xC350u);
    }
  }
}

- (void)_scrollHalfTheScreenHeightIn:(id)in
{
  v3 = +[ATAPPTUtilities topMostController];
  view = [v3 view];
  v5 = [ATAPPTUtilities findScrollViewInView:view desiredScrollViewClass:NSClassFromString(@"VideosUI.StackCollectionView")];

  [v5 contentOffset];
  v7 = v6;
  v9 = v8;
  keyWindow = [UIApp keyWindow];
  [keyWindow frame];
  v12 = v9 + v11 * 0.5;

  if (+[NSThread isMainThread])
  {
    [v5 setContentOffset:0 animated:{v7, v12}];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004478;
    block[3] = &unk_10001CD20;
    v14 = v5;
    v15 = v7;
    v16 = v12;
    dispatch_sync(&_dispatch_main_q, block);
  }

  sleep(2u);
}

- (BOOL)_canHandleTest:(id)test
{
  testCopy = test;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  testsManifest = [(ATAPPTController *)self testsManifest];
  allKeys = [testsManifest allKeys];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000459C;
  v9[3] = &unk_10001CD48;
  v7 = testCopy;
  v10 = v7;
  v11 = &v12;
  [allKeys enumerateObjectsUsingBlock:v9];
  LOBYTE(testsManifest) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return testsManifest;
}

- (void)_registerTests
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100004EE4;
  v10[3] = &unk_10001CF90;
  v10[4] = self;
  v3 = objc_retainBlock(v10);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004FE8;
  v9[3] = &unk_10001CF90;
  v9[4] = self;
  v4 = objc_retainBlock(v9);
  v11[0] = @"ScrollPage";
  v11[1] = @"ScrollWhatToWatch";
  v12[0] = &stru_10001CDE8;
  v12[1] = &stru_10001CF28;
  v11[2] = @"ScrollSwoosh";
  v5 = objc_retainBlock(v3);
  v12[2] = v5;
  v11[3] = @"ScrollBricks";
  v6 = objc_retainBlock(v4);
  v12[3] = v6;
  v12[4] = &stru_10001CE08;
  v11[4] = @"ScrollUpNext";
  v11[5] = @"ScrollSportsPage";
  v12[5] = &stru_10001CFD0;
  v12[6] = &stru_10001CFF0;
  v11[6] = @"ScrollShowProductPage";
  v11[7] = @"ScrollLibrary";
  v12[7] = &stru_10001CE68;
  v12[8] = &stru_10001CEA8;
  v11[8] = @"ScrollLibraryCategories";
  v11[9] = @"ScrollLibraryCategoryGrid";
  v12[9] = &stru_10001CEE8;
  v12[10] = &stru_10001CD88;
  v11[10] = @"LaunchToWatchNow";
  v11[11] = @"LaunchToLibrary";
  v11[12] = @"LaunchToSearch";
  v12[11] = &stru_10001CDA8;
  v12[12] = &stru_10001CDC8;
  v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:13];
  testsManifest = self->_testsManifest;
  self->_testsManifest = v7;
}

- (void)waitForApplicationToLoadNotification:(id)notification
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:_VUITVAppNavigationDidDisplayViewControllerNotification object:0];

  os_unfair_lock_lock(&self->_appLoadedLock);
  self->_appLoaded = 1;
  os_unfair_lock_unlock(&self->_appLoadedLock);
  applicationLoadCompletion = [(ATAPPTController *)self applicationLoadCompletion];
  if (applicationLoadCompletion)
  {
    v6 = applicationLoadCompletion;
    [(ATAPPTController *)self setApplicationLoadCompletion:0];
    v6[2](v6);
    applicationLoadCompletion = v6;
  }
}

- (void)_runTest:(id)test app:(id)app
{
  testCopy = test;
  appCopy = app;
  if ([(ATAPPTController *)self _canHandleTest:testCopy])
  {
    objc_initWeak(&location, self);
    workQueue = [(ATAPPTController *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005418;
    block[3] = &unk_10001D0E0;
    v10 = testCopy;
    v11 = appCopy;
    selfCopy = self;
    objc_copyWeak(&v13, &location);
    dispatch_async(workQueue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

@end