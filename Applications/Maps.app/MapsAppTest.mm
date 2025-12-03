@interface MapsAppTest
- (BOOL)canUpdateTrayLayout;
- (BOOL)isRunningOnCarPlay;
- (MKMapView)mainMKMapView;
- (MapsAppTest)initWithApplication:(id)application testName:(id)name options:(id)options;
- (NSArray)serialSubTests;
- (PPTTestCoordinatorProtocol)testCoordinator;
- (VKMapView)mainVKMapView;
- (void)_presentDirectionDetailsWithCompletion:(id)completion;
- (void)_presentDismissTrayTestWithCount:(unint64_t)count numberOfRounds:(unint64_t)rounds latencySubTestName:(id)name animationSubTestName:(id)testName presenter:(id)presenter completion:(id)completion;
- (void)_presentDismissTrayTestWithLatencySubTestName:(id)name animationSubTestName:(id)testName presenter:(id)presenter completion:(id)completion;
- (void)_resizingTestWithCount:(unint64_t)count numbeorOfRounds:(unint64_t)rounds latencySubTestName:(id)name animationSubTestName:(id)testName completion:(id)completion;
- (void)_resizingTrayWithLatencySubTestName:(id)name animationSubTestName:(id)testName completion:(id)completion;
- (void)_updateTrayLayout:(unint64_t)layout animated:(BOOL)animated latencySubTestName:(id)name animationSubTestName:(id)testName completion:(id)completion;
- (void)addFullyDrawnCallback:(id)callback;
- (void)cleanup:(BOOL)cleanup;
- (void)didEndGEOPPTTest_Manifest:(id)manifest;
- (void)didEndGEOPPTTest_Manifest_ForcedUpdate:(id)update;
- (void)didEndGEOPPTTest_Manifest_GetResourceManifest:(id)manifest;
- (void)didEndGEOPPTTest_Manifest_HandleMessage:(id)message;
- (void)didEndGEOPPTTest_Manifest_ResetActiveTileGroup:(id)group;
- (void)didEndGEOPPTTest_Manifest_SetActiveTileGroup:(id)group;
- (void)didEndGEOPPTTest_Manifest_SetManifestToken:(id)token;
- (void)didEndGEOPPTTest_Manifest_SetupConnection:(id)connection;
- (void)didEndGEOPPTTest_Manifest_Update:(id)update;
- (void)didTearDownForVKTest;
- (void)dismissTrayWithAssertTrayType:(int64_t)type completion:(id)completion;
- (void)dismissTrayWithSubtestName:(id)name completion:(id)completion;
- (void)failedTest;
- (void)failedTestWithReason:(id)reason;
- (void)finishedSerialSubTest:(id)test;
- (void)finishedSubTest:(id)test;
- (void)finishedTestWithExtraResults:(id)results;
- (void)onFullyDrawn:(id)drawn;
- (void)popToRootTrayWithCompletion:(id)completion;
- (void)presentDismissTrayTestAndSubTestsWithPrefix:(id)prefix presenter:(id)presenter completion:(id)completion;
- (void)registerGEOManifestSubtests;
- (void)resizingTestAndSubTestsWithPrefix:(id)prefix completion:(id)completion;
- (void)rotateDeviceWithCompletion:(id)completion;
- (void)rotateDeviceWithSubtestName:(id)name completion:(id)completion;
- (void)runSerialSubTestAtIndex:(unint64_t)index;
- (void)setupForVKTest;
- (void)setupForVKTestWithMapView:(id)view;
- (void)setupFullyDrawnNotification:(SEL)notification;
- (void)startedSerialSubTest:(id)test;
- (void)startedSubTest:(id)test;
- (void)startedSubTest:(id)test withMetrics:(id)metrics;
- (void)startedTest;
- (void)switchToMapType:(unint64_t)type;
- (void)switchToViewMode:(int64_t)mode;
- (void)updateTrayLayout:(unint64_t)layout animated:(BOOL)animated completion:(id)completion;
- (void)updateTrayLayout:(unint64_t)layout withSubtestName:(id)name animated:(BOOL)animated completion:(id)completion;
- (void)vkMapViewFullyDrawn:(id)drawn;
- (void)willBeginGEOPPTTest_Manifest:(id)manifest;
- (void)willBeginGEOPPTTest_Manifest_ForcedUpdate:(id)update;
- (void)willBeginGEOPPTTest_Manifest_GetResourceManifest:(id)manifest;
- (void)willBeginGEOPPTTest_Manifest_HandleMessage:(id)message;
- (void)willBeginGEOPPTTest_Manifest_ResetActiveTileGroup:(id)group;
- (void)willBeginGEOPPTTest_Manifest_SetActiveTileGroup:(id)group;
- (void)willBeginGEOPPTTest_Manifest_SetManifestToken:(id)token;
- (void)willBeginGEOPPTTest_Manifest_SetupConnection:(id)connection;
- (void)willBeginGEOPPTTest_Manifest_Update:(id)update;
- (void)willSetupForVKTest;
@end

@implementation MapsAppTest

- (void)_presentDirectionDetailsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10058A014;
  v7[3] = &unk_101655DA8;
  objc_copyWeak(&v9, &location);
  v5 = completionCopy;
  v8 = v5;
  [PPTNotificationCenter addOnceObserverForName:@"PPTTestTrayDidPresentNotification" object:0 usingBlock:v7];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestPresentDirectionsDetails];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)rotateDeviceWithCompletion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C8D610;
  v10[3] = &unk_10164FAC0;
  completionCopy = completion;
  v11 = completionCopy;
  [PPTNotificationCenter addOnceObserverForName:@"PPTTestOrientationDidRotateNotification" object:0 usingBlock:v10];
  v4 = +[UIDevice currentDevice];
  orientation = [v4 orientation];

  if ((orientation - 3) < 2)
  {
    v6 = +[UIApplication sharedApplication];
    v7 = v6;
    v8 = &stru_10164FB78;
    v9 = 1;
    goto LABEL_5;
  }

  if ((orientation - 1) <= 1)
  {
    v6 = +[UIApplication sharedApplication];
    v7 = v6;
    v8 = &stru_10164FB58;
    v9 = 4;
LABEL_5:
    [v6 rotateIfNeeded:v9 completion:v8];
  }
}

- (void)rotateDeviceWithSubtestName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  [(MapsAppTest *)self startedSubTest:nameCopy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C8D700;
  v10[3] = &unk_1016605F8;
  v10[4] = self;
  v11 = nameCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = nameCopy;
  [(MapsAppTest *)self rotateDeviceWithCompletion:v10];
}

- (void)popToRootTrayWithCompletion:(id)completion
{
  completionCopy = completion;
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  v6 = [testCoordinator pptTestIsTrayType:2];

  if (v6)
  {
    if (![(MapsAppTest *)self isRunningOnCarPlay])
    {
      testCoordinator2 = [(MapsAppTest *)self testCoordinator];
      [testCoordinator2 pptTestSearchCancel];
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100C8D8A8;
    v13[3] = &unk_101661760;
    v14 = completionCopy;
    v8 = completionCopy;
    [(MapsAppTest *)self updateTrayLayout:1 animated:1 completion:v13];
    v9 = v14;
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100C8D8C0;
    v11[3] = &unk_101661090;
    v11[4] = self;
    v12 = completionCopy;
    v10 = completionCopy;
    [(MapsAppTest *)self dismissTrayWithAssertTrayType:0 completion:v11];
    v9 = v12;
  }
}

- (void)dismissTrayWithAssertTrayType:(int64_t)type completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C8D9A0;
  v8[3] = &unk_10164FAC0;
  completionCopy = completion;
  v6 = completionCopy;
  [PPTNotificationCenter addOnceObserverForName:@"PPTTestTrayDidDismissNotification" object:0 usingBlock:v8];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestDismissTrayAnimated:1 assertTrayType:type];
}

- (void)dismissTrayWithSubtestName:(id)name completion:(id)completion
{
  nameCopy = name;
  [(MapsAppTest *)self startedSubTest:nameCopy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C8DA68;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  [(MapsAppTest *)self dismissTrayWithCompletion:v7];
}

- (void)_presentDismissTrayTestWithLatencySubTestName:(id)name animationSubTestName:(id)testName presenter:(id)presenter completion:(id)completion
{
  nameCopy = name;
  testNameCopy = testName;
  presenterCopy = presenter;
  completionCopy = completion;
  if ([nameCopy length])
  {
    v14 = [testNameCopy length] != 0;
  }

  else
  {
    v14 = 0;
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100C8DC60;
  v22[3] = &unk_10164FB38;
  v26 = v14;
  v22[4] = self;
  v15 = testNameCopy;
  v23 = v15;
  v16 = nameCopy;
  v24 = v16;
  v17 = completionCopy;
  v25 = v17;
  [PPTNotificationCenter addOnceObserverForName:@"PPTTestTrayDidPresentNotification" object:0 usingBlock:v22];
  if (v14)
  {
    [(MapsAppTest *)self startedSubTest:v16];
    v18 = UIApp;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100C8DD34;
    v19[3] = &unk_101661A40;
    v19[4] = self;
    v20 = v16;
    v21 = v15;
    [v18 installCACommitCompletionBlock:v19];
  }

  if (presenterCopy)
  {
    presenterCopy[2](presenterCopy);
  }
}

- (void)_presentDismissTrayTestWithCount:(unint64_t)count numberOfRounds:(unint64_t)rounds latencySubTestName:(id)name animationSubTestName:(id)testName presenter:(id)presenter completion:(id)completion
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100C8E108;
  v15[3] = &unk_10164FAE8;
  v21 = count + 1;
  roundsCopy = rounds;
  selfCopy = self;
  nameCopy = name;
  testNameCopy = testName;
  presenterCopy = presenter;
  completionCopy = completion;
  v11 = completionCopy;
  v12 = presenterCopy;
  v13 = testNameCopy;
  v14 = nameCopy;
  [(MapsAppTest *)selfCopy _presentDismissTrayTestWithLatencySubTestName:v14 animationSubTestName:v13 presenter:v12 completion:v15];
}

- (void)presentDismissTrayTestAndSubTestsWithPrefix:(id)prefix presenter:(id)presenter completion:(id)completion
{
  completionCopy = completion;
  presenterCopy = presenter;
  prefixCopy = prefix;
  v12 = [prefixCopy stringByAppendingString:@"_Latency"];
  v11 = [prefixCopy stringByAppendingString:@"_Animation"];

  [(MapsAppTest *)self _presentDismissTrayTestWithNumberOfRounds:10 latencySubTestName:v12 animationSubTestName:v11 presenter:presenterCopy completion:completionCopy];
}

- (void)updateTrayLayout:(unint64_t)layout animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9 = +[UIDevice currentDevice];
  if ([v9 userInterfaceIdiom] == 5)
  {
  }

  else
  {
    testCoordinator = [(MapsAppTest *)self testCoordinator];
    pptTestCanUpdateTrayLayout = [testCoordinator pptTestCanUpdateTrayLayout];

    if (pptTestCanUpdateTrayLayout)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100C8E37C;
      v13[3] = &unk_10164FAC0;
      v14 = completionCopy;
      [PPTNotificationCenter addOnceObserverForName:@"PPTTestTrayLayoutDidUpdateNotification" object:0 usingBlock:v13];
      testCoordinator2 = [(MapsAppTest *)self testCoordinator];
      [testCoordinator2 pptTestUpdateTrayLayout:layout animated:animatedCopy];

      goto LABEL_7;
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_7:
}

- (void)_updateTrayLayout:(unint64_t)layout animated:(BOOL)animated latencySubTestName:(id)name animationSubTestName:(id)testName completion:(id)completion
{
  animatedCopy = animated;
  nameCopy = name;
  testNameCopy = testName;
  completionCopy = completion;
  if ([nameCopy length] && objc_msgSend(testNameCopy, "length"))
  {
    [(MapsAppTest *)self startedSubTest:nameCopy];
    v15 = UIApp;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100C8E538;
    v23[3] = &unk_101661A40;
    v23[4] = self;
    v24 = nameCopy;
    v25 = testNameCopy;
    [v15 installCACommitCompletionBlock:v23];

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100C8E57C;
  v19[3] = &unk_101661068;
  v22 = v16;
  v19[4] = self;
  v20 = testNameCopy;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = testNameCopy;
  [(MapsAppTest *)self updateTrayLayout:layout animated:animatedCopy completion:v19];
}

- (void)updateTrayLayout:(unint64_t)layout withSubtestName:(id)name animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  nameCopy = name;
  completionCopy = completion;
  [(MapsAppTest *)self startedSubTest:nameCopy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100C8E6C4;
  v14[3] = &unk_1016605F8;
  v14[4] = self;
  v15 = nameCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = nameCopy;
  [(MapsAppTest *)self updateTrayLayout:layout animated:animatedCopy completion:v14];
}

- (BOOL)canUpdateTrayLayout
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  pptTestCanUpdateTrayLayout = [testCoordinator pptTestCanUpdateTrayLayout];

  return pptTestCanUpdateTrayLayout;
}

- (void)_resizingTrayWithLatencySubTestName:(id)name animationSubTestName:(id)testName completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C8E844;
  v10[3] = &unk_101660380;
  selfCopy = self;
  nameCopy = name;
  testNameCopy = testName;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = testNameCopy;
  v9 = nameCopy;
  [(MapsAppTest *)selfCopy _updateTrayLayout:0 animated:1 latencySubTestName:v9 animationSubTestName:v8 completion:v10];
}

- (void)_resizingTestWithCount:(unint64_t)count numbeorOfRounds:(unint64_t)rounds latencySubTestName:(id)name animationSubTestName:(id)testName completion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100C8ED90;
  v12[3] = &unk_10164FA98;
  v17 = count + 1;
  roundsCopy = rounds;
  selfCopy = self;
  nameCopy = name;
  testNameCopy = testName;
  completionCopy = completion;
  v9 = completionCopy;
  v10 = testNameCopy;
  v11 = nameCopy;
  [(MapsAppTest *)selfCopy _resizingTrayWithLatencySubTestName:v11 animationSubTestName:v10 completion:v12];
}

- (void)resizingTestAndSubTestsWithPrefix:(id)prefix completion:(id)completion
{
  completionCopy = completion;
  prefixCopy = prefix;
  v9 = [prefixCopy stringByAppendingString:@"_Latency"];
  v8 = [prefixCopy stringByAppendingString:@"_Animation"];

  [(MapsAppTest *)self _resizingTestWithNumberOfRounds:10 latencySubTestName:v9 animationSubTestName:v8 completion:completionCopy];
}

- (PPTTestCoordinatorProtocol)testCoordinator
{
  testCoordinator = objc_getAssociatedObject(self, &unk_10195EDF0);
  if (!testCoordinator)
  {
    v4 = +[UIApplication sharedMapsDelegate];
    testCoordinator = [v4 testCoordinator];

    objc_setAssociatedObject(self, &unk_10195EDF0, testCoordinator, 1);
  }

  return testCoordinator;
}

- (BOOL)isRunningOnCarPlay
{
  mainMKMapView = [(MapsAppTest *)self mainMKMapView];
  traitCollection = [mainMKMapView traitCollection];
  v4 = [traitCollection userInterfaceIdiom] == 3;

  return v4;
}

- (void)didTearDownForVKTest
{
  if ([(MapsAppTest *)self isRunningOnCarPlay])
  {
    testCoordinator = [(MapsAppTest *)self testCoordinator];
    [testCoordinator setChromeHidden:0];
  }
}

- (void)willSetupForVKTest
{
  if ([(MapsAppTest *)self isRunningOnCarPlay])
  {
    mainMKMapView = [(MapsAppTest *)self mainMKMapView];
    [mainMKMapView setUserTrackingMode:0 animated:0];

    testCoordinator = [(MapsAppTest *)self testCoordinator];
    [testCoordinator setChromeHidden:1];
  }
}

- (void)switchToViewMode:(int64_t)mode
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator setPPTTestViewMode:mode animated:1];
}

- (void)switchToMapType:(unint64_t)type
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  if (type <= 2)
  {
    if (type == 1)
    {
      v5 = 2;
      goto LABEL_13;
    }

    if (type == 2)
    {
      v5 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    switch(type)
    {
      case 3uLL:
        v5 = 6;
        goto LABEL_13;
      case 0x68uLL:
        v5 = 3;
        goto LABEL_13;
      case 4uLL:
        v5 = 5;
        goto LABEL_13;
    }
  }

  v5 = 0;
LABEL_13:
  v6 = testCoordinator;
  [testCoordinator setPPTTestViewMode:v5 animated:1];
}

- (VKMapView)mainVKMapView
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  mapViewForPPTTest = [testCoordinator mapViewForPPTTest];
  _mapLayer = [mapViewForPPTTest _mapLayer];

  return _mapLayer;
}

- (MKMapView)mainMKMapView
{
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  mapViewForPPTTest = [testCoordinator mapViewForPPTTest];

  return mapViewForPPTTest;
}

- (void)didEndGEOPPTTest_Manifest_HandleMessage:(id)message
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C98EC8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_HandleMessage:(id)message
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C98F4C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_ResetActiveTileGroup:(id)group
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C98FD8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_ResetActiveTileGroup:(id)group
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C9905C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_SetActiveTileGroup:(id)group
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C990E8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_SetActiveTileGroup:(id)group
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C9916C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_SetManifestToken:(id)token
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C991F8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_SetManifestToken:(id)token
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C9927C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_GetResourceManifest:(id)manifest
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C99308;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_GetResourceManifest:(id)manifest
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C9938C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_ForcedUpdate:(id)update
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C99418;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_ForcedUpdate:(id)update
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C9949C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_Update:(id)update
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C99528;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_Update:(id)update
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C995AC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_SetupConnection:(id)connection
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C99638;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_SetupConnection:(id)connection
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C996BC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest:(id)manifest
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C99748;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest:(id)manifest
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C997CC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)registerGEOManifestSubtests
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"willBeginGEOPPTTest_Manifest:" name:@"GEOPPTTest_ManifestBEGIN" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"didEndGEOPPTTest_Manifest:" name:@"GEOPPTTest_ManifestEND" object:0];

  v5 = +[GEONotificationPreferenceManager sharedManager];
  [v5 setEnabled:1 forSubTestWithName:@"GEOPPTTest_Manifest"];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"willBeginGEOPPTTest_Manifest_SetupConnection:" name:@"GEOPPTTest_Manifest_SetupConnectionBEGIN" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"didEndGEOPPTTest_Manifest_SetupConnection:" name:@"GEOPPTTest_Manifest_SetupConnectionEND" object:0];

  v8 = +[GEONotificationPreferenceManager sharedManager];
  [v8 setEnabled:1 forSubTestWithName:@"GEOPPTTest_Manifest_SetupConnection"];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"willBeginGEOPPTTest_Manifest_Update:" name:@"GEOPPTTest_Manifest_UpdateBEGIN" object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"didEndGEOPPTTest_Manifest_Update:" name:@"GEOPPTTest_Manifest_UpdateEND" object:0];

  v11 = +[GEONotificationPreferenceManager sharedManager];
  [v11 setEnabled:1 forSubTestWithName:@"GEOPPTTest_Manifest_Update"];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"willBeginGEOPPTTest_Manifest_ForcedUpdate:" name:@"GEOPPTTest_Manifest_ForcedUpdateBEGIN" object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"didEndGEOPPTTest_Manifest_ForcedUpdate:" name:@"GEOPPTTest_Manifest_ForcedUpdateEND" object:0];

  v14 = +[GEONotificationPreferenceManager sharedManager];
  [v14 setEnabled:1 forSubTestWithName:@"GEOPPTTest_Manifest_ForcedUpdate"];

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 addObserver:self selector:"willBeginGEOPPTTest_Manifest_GetResourceManifest:" name:@"GEOPPTTest_Manifest_GetResourceManifestBEGIN" object:0];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"didEndGEOPPTTest_Manifest_GetResourceManifest:" name:@"GEOPPTTest_Manifest_GetResourceManifestEND" object:0];

  v17 = +[GEONotificationPreferenceManager sharedManager];
  [v17 setEnabled:1 forSubTestWithName:@"GEOPPTTest_Manifest_GetResourceManifest"];

  v18 = +[NSNotificationCenter defaultCenter];
  [v18 addObserver:self selector:"willBeginGEOPPTTest_Manifest_SetManifestToken:" name:@"GEOPPTTest_Manifest_SetManifestTokenBEGIN" object:0];

  v19 = +[NSNotificationCenter defaultCenter];
  [v19 addObserver:self selector:"didEndGEOPPTTest_Manifest_SetManifestToken:" name:@"GEOPPTTest_Manifest_SetManifestTokenEND" object:0];

  v20 = +[GEONotificationPreferenceManager sharedManager];
  [v20 setEnabled:1 forSubTestWithName:@"GEOPPTTest_Manifest_SetManifestToken"];

  v21 = +[NSNotificationCenter defaultCenter];
  [v21 addObserver:self selector:"willBeginGEOPPTTest_Manifest_SetActiveTileGroup:" name:@"GEOPPTTest_Manifest_SetActiveTileGroupBEGIN" object:0];

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 addObserver:self selector:"didEndGEOPPTTest_Manifest_SetActiveTileGroup:" name:@"GEOPPTTest_Manifest_SetActiveTileGroupEND" object:0];

  v23 = +[GEONotificationPreferenceManager sharedManager];
  [v23 setEnabled:1 forSubTestWithName:@"GEOPPTTest_Manifest_SetActiveTileGroup"];

  v24 = +[NSNotificationCenter defaultCenter];
  [v24 addObserver:self selector:"willBeginGEOPPTTest_Manifest_ResetActiveTileGroup:" name:@"GEOPPTTest_Manifest_ResetActiveTileGroupBEGIN" object:0];

  v25 = +[NSNotificationCenter defaultCenter];
  [v25 addObserver:self selector:"didEndGEOPPTTest_Manifest_ResetActiveTileGroup:" name:@"GEOPPTTest_Manifest_ResetActiveTileGroupEND" object:0];

  v26 = +[GEONotificationPreferenceManager sharedManager];
  [v26 setEnabled:1 forSubTestWithName:@"GEOPPTTest_Manifest_ResetActiveTileGroup"];

  v27 = +[NSNotificationCenter defaultCenter];
  [v27 addObserver:self selector:"willBeginGEOPPTTest_Manifest_HandleMessage:" name:@"GEOPPTTest_Manifest_HandleMessageBEGIN" object:0];

  v28 = +[NSNotificationCenter defaultCenter];
  [v28 addObserver:self selector:"didEndGEOPPTTest_Manifest_HandleMessage:" name:@"GEOPPTTest_Manifest_HandleMessageEND" object:0];

  v29 = +[GEONotificationPreferenceManager sharedManager];
  [v29 setEnabled:1 forSubTestWithName:@"GEOPPTTest_Manifest_HandleMessage"];
}

- (void)setupForVKTest
{
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [(MapsAppTest *)self setupForVKTestWithMapView:mainVKMapView];
}

- (void)setupForVKTestWithMapView:(id)view
{
  viewCopy = view;
  [(MapsAppTest *)self willSetupForVKTest];
  options = [(MapsAppTest *)self options];
  v10 = 0uLL;
  [options _mapstest_getSelectedFeatures:&v10 disabled:&v10 + 8];
  v6 = *(&v10 + 1);
  if (v10 != 0)
  {
    if (v10)
    {
      v6 = ~v10;
      *(&v10 + 1) = ~v10;
    }

    if (((v6 | v10) & 0x80) != 0)
    {
      [viewCopy setTrafficEnabled:(v6 & 0x80) == 0];
      v6 = *(&v10 + 1);
    }

    [viewCopy setDisablePolygons:(v6 >> 3) & 1];
    [viewCopy setDisableRoads:(*(&v10 + 1) >> 1) & 1];
    [viewCopy setDisableLabels:(*(&v10 + 1) >> 2) & 1];
    [viewCopy setDisableBuildingFootprints:(*(&v10 + 1) >> 4) & 1];
    [viewCopy setDisableRasters:(*(&v10 + 1) >> 5) & 1];
    [viewCopy setDisableGrid:(*(&v10 + 1) >> 6) & 1];
    [viewCopy setDisableTransitLines:(*(&v10 + 1) >> 8) & 1];
  }

  if ([options _mapstest_hasMapType])
  {
    [options _mapstest_hasViewMode];
  }

  if ([options _mapstest_hasViewMode])
  {
    -[MapsAppTest switchToViewMode:](self, "switchToViewMode:", [options _mapstest_viewMode]);
  }

  else
  {
    -[MapsAppTest switchToMapType:](self, "switchToMapType:", [options _mapstest_mapType]);
  }

  v7 = [options objectForKeyedSubscript:@"selectedFeatureId"];
  if (v7)
  {
    v8 = [NSScanner scannerWithString:v7];
    v9 = 0;
    [v8 scanUnsignedLongLong:&v9];
    [viewCopy setSelectedFeatureId:v9];
  }

  else
  {
    [viewCopy deselectFeatureId];
  }
}

- (void)setupFullyDrawnNotification:(SEL)notification
{
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:notification name:VKMapViewDidBecomeFullyDrawnNotification object:0];
}

- (void)addFullyDrawnCallback:(id)callback
{
  callbackCopy = callback;
  v5 = sub_100798744();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_retainBlock(callbackCopy);
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Adding FullyDrawnCallback: %@", buf, 0xCu);
  }

  fullyDrawnCallbacks = self->_fullyDrawnCallbacks;
  v8 = [callbackCopy copy];
  v9 = objc_retainBlock(v8);
  [(NSMutableArray *)fullyDrawnCallbacks addObject:v9];

  v10 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C9A0AC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v10, &_dispatch_main_q, block);
}

- (void)vkMapViewFullyDrawn:(id)drawn
{
  drawnCopy = drawn;
  if (!drawnCopy)
  {
    mainVKMapView = [(MapsAppTest *)self mainVKMapView];
    if ([mainVKMapView isFullyDrawn])
    {

LABEL_10:
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 removeObserver:self name:VKMapViewDidBecomeFullyDrawnNotification object:0];

      if ([(NSMutableArray *)self->_fullyDrawnCallbacks count])
      {
        *&v11 = 138412290;
        v15 = v11;
        do
        {
          firstObject = [(NSMutableArray *)self->_fullyDrawnCallbacks firstObject];
          [(NSMutableArray *)self->_fullyDrawnCallbacks removeObjectAtIndex:0];
          v13 = sub_100798744();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = objc_retainBlock(firstObject);
            *buf = v15;
            v17 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Invoking callback: %@", buf, 0xCu);
          }

          firstObject[2](firstObject);
        }

        while ([(NSMutableArray *)self->_fullyDrawnCallbacks count]);
      }

      goto LABEL_15;
    }
  }

  mainVKMapView2 = [(MapsAppTest *)self mainVKMapView];

  if (!drawnCopy)
  {
  }

  if (mainVKMapView2 == drawnCopy)
  {
    goto LABEL_10;
  }

  v7 = sub_100798744();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    mainVKMapView3 = [(MapsAppTest *)self mainVKMapView];
    mainVKMapView4 = [(MapsAppTest *)self mainVKMapView];
    *buf = 138412802;
    v17 = drawnCopy;
    v18 = 2112;
    v19 = mainVKMapView3;
    v20 = 1024;
    isFullyDrawn = [mainVKMapView4 isFullyDrawn];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "vkMapViewFullyDrawn: but not calling back! mapView: %@ mainVKMapView: %@ isFullyDrawn: %d", buf, 0x1Cu);
  }

LABEL_15:
}

- (void)onFullyDrawn:(id)drawn
{
  drawnCopy = drawn;
  object = [drawnCopy object];
  if (!object)
  {
    object = [(MapsAppTest *)self mainVKMapView];
  }

  isFullyDrawn = [object isFullyDrawn];
  v7 = sub_100798744();
  v8 = v7;
  if (isFullyDrawn)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "onFullyDrawn:", &v9, 2u);
    }

    [(MapsAppTest *)self vkMapViewFullyDrawn:object];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = drawnCopy;
      v11 = 1024;
      isFullyDrawn2 = [object isFullyDrawn];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "onFullyDrawn is called when mapView is not fully drawn. Notification: %@, [mapView isFullyDrawn] : %d", &v9, 0x12u);
    }
  }
}

- (void)runSerialSubTestAtIndex:(unint64_t)index
{
  serialSubTests = [(MapsAppTest *)self serialSubTests];
  v5 = [serialSubTests count] > index;
  v6 = serialSubTests;
  if (v5)
  {
    v7 = [serialSubTests objectAtIndexedSubscript:index];
    v8 = [v7 objectForKeyedSubscript:@"selector"];
    v9 = NSSelectorFromString(v8);

    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 objectForKeyedSubscript:@"options"];
      v11 = [v10 objectForKeyedSubscript:@"subTestName"];

      if (!v11)
      {
        v11 = [v7 objectForKeyedSubscript:@"selector"];
      }

      if ([v11 hasSuffix:@":"])
      {
        v12 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 1}];

        v11 = v12;
      }

      mainVKMapView = [(MapsAppTest *)self mainVKMapView];
      self->_currentSubTestStartTime = CACurrentMediaTime();
      [(MapsAppTest *)self startedSerialSubTest:v11];
      [mainVKMapView enableTestStatistics];
      v14 = [v7 objectForKeyedSubscript:@"options"];
      [(MapsAppTest *)self performSelector:v9 withObject:v14];
    }

    v6 = serialSubTests;
  }
}

- (NSArray)serialSubTests
{
  options = [(MapsAppTest *)self options];
  _mapstest_serialSubTests = [options _mapstest_serialSubTests];

  return _mapstest_serialSubTests;
}

- (void)failedTestWithReason:(id)reason
{
  reasonCopy = reason;
  [(MapsAppTesting *)self->_app failedTest:self->_testName withFailure:reasonCopy];
  v5 = sub_100798744();
  if (os_signpost_enabled(v5))
  {
    testName = self->_testName;
    v7 = 138412546;
    v8 = testName;
    v9 = 2112;
    v10 = reasonCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "test", "testName=%@ status=failed reason=%@", &v7, 0x16u);
  }
}

- (void)failedTest
{
  [(MapsAppTesting *)self->_app failedTest:self->_testName];
  v3 = sub_100798744();
  if (os_signpost_enabled(v3))
  {
    testName = self->_testName;
    v5 = 138412290;
    v6 = testName;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "test", "testName=%@ status=failed", &v5, 0xCu);
  }
}

- (void)finishedTestWithExtraResults:(id)results
{
  resultsCopy = results;
  results = self->_results;
  v14 = @"tilegroup";
  v6 = +[GEOResourceManifestManager modernManager];
  activeTileGroup = [v6 activeTileGroup];
  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [activeTileGroup identifier]);
  v15 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [(NSMutableDictionary *)results addEntriesFromDictionary:v9];

  if (resultsCopy)
  {
    [(NSMutableDictionary *)self->_results addEntriesFromDictionary:resultsCopy];
  }

  [(MapsAppTesting *)self->_app finishedTest:self->_testName extraResults:self->_results];
  v10 = sub_100798744();
  if (os_signpost_enabled(v10))
  {
    testName = self->_testName;
    v12 = 138412290;
    v13 = testName;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "test", "testName=%@ status=success", &v12, 0xCu);
  }
}

- (void)finishedSerialSubTest:(id)test
{
  testCopy = test;
  [MapsAppTesting finishedSubTest:"finishedSubTest:forTest:" forTest:?];
  v4 = sub_100798744();
  if (os_signpost_enabled(v4))
  {
    *buf = 138412290;
    v27 = testCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "subTest", "testName=%@", buf, 0xCu);
  }

  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView disableTestStatistics];

  mainVKMapView2 = [(MapsAppTest *)self mainVKMapView];
  testStatistics = [mainVKMapView2 testStatistics];

  mainVKMapView3 = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView3 resetTestStatistics];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = testStatistics;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        results = [(MapsAppTest *)self results];
        v17 = [NSString stringWithFormat:@"%@:%@", testCopy, v14];
        [results setObject:v15 forKeyedSubscript:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  serialSubTests = [(MapsAppTest *)self serialSubTests];
  if ([serialSubTests count] && (currentSubTestIndex = self->_currentSubTestIndex, currentSubTestIndex < objc_msgSend(serialSubTests, "count") - 1))
  {
    ++self->_currentSubTestIndex;
    [(MapsAppTest *)self runSerialSubTestAtIndex:?];
  }

  else
  {
    [(MapsAppTest *)self finishedTest];
  }
}

- (void)finishedSubTest:(id)test
{
  testCopy = test;
  [(MapsAppTesting *)self->_app finishedSubTest:testCopy forTest:self->_testName];
  v5 = sub_100798744();
  if (os_signpost_enabled(v5))
  {
    v6 = 138412290;
    v7 = testCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "subTest", "testName=%@", &v6, 0xCu);
  }
}

- (void)startedSubTest:(id)test withMetrics:(id)metrics
{
  testCopy = test;
  metricsCopy = metrics;
  v8 = sub_100798744();
  if (os_signpost_enabled(v8))
  {
    v9 = 138412290;
    v10 = testCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "subTest", "testName=%@", &v9, 0xCu);
  }

  [(MapsAppTesting *)self->_app startedSubTest:testCopy forTest:self->_testName withMetrics:metricsCopy];
}

- (void)startedSerialSubTest:(id)test
{
  testCopy = test;
  v5 = sub_100798744();
  if (os_signpost_enabled(v5))
  {
    v6 = 138412290;
    v7 = testCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "subTest", "testName=%@", &v6, 0xCu);
  }

  [(MapsAppTesting *)self->_app startedSubTest:testCopy forTest:self->_testName];
}

- (void)startedSubTest:(id)test
{
  testCopy = test;
  v5 = sub_100798744();
  if (os_signpost_enabled(v5))
  {
    v6 = 138412290;
    v7 = testCopy;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "subTest", "testName=%@", &v6, 0xCu);
  }

  [(MapsAppTesting *)self->_app startedSubTest:testCopy forTest:self->_testName];
}

- (void)startedTest
{
  v3 = sub_100798744();
  if (os_signpost_enabled(v3))
  {
    testName = self->_testName;
    v5 = 138412290;
    v6 = testName;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "test", "testName=%@", &v5, 0xCu);
  }

  [(MapsAppTesting *)self->_app startedTest:self->_testName];
}

- (void)cleanup:(BOOL)cleanup
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5 = +[GEONotificationPreferenceManager sharedManager];
  [v5 reset];

  [(NSMutableDictionary *)self->_results removeAllObjects];
  [(NSMutableArray *)self->_fullyDrawnCallbacks removeAllObjects];

  [(MapsAppTest *)self didTearDownForVKTest];
}

- (MapsAppTest)initWithApplication:(id)application testName:(id)name options:(id)options
{
  applicationCopy = application;
  nameCopy = name;
  optionsCopy = options;
  if ([nameCopy length])
  {
    v24.receiver = self;
    v24.super_class = MapsAppTest;
    v12 = [(MapsAppTest *)&v24 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_app, application);
      v14 = [nameCopy copy];
      testName = v13->_testName;
      v13->_testName = v14;

      v16 = [optionsCopy copy];
      options = v13->_options;
      v13->_options = v16;

      v18 = objc_opt_new();
      results = v13->_results;
      v13->_results = v18;

      v20 = objc_opt_new();
      fullyDrawnCallbacks = v13->_fullyDrawnCallbacks;
      v13->_fullyDrawnCallbacks = v20;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end