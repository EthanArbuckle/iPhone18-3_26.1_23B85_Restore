@interface MapsAppTest
- (BOOL)canUpdateTrayLayout;
- (BOOL)isRunningOnCarPlay;
- (MKMapView)mainMKMapView;
- (MapsAppTest)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
- (NSArray)serialSubTests;
- (PPTTestCoordinatorProtocol)testCoordinator;
- (VKMapView)mainVKMapView;
- (void)_presentDirectionDetailsWithCompletion:(id)a3;
- (void)_presentDismissTrayTestWithCount:(unint64_t)a3 numberOfRounds:(unint64_t)a4 latencySubTestName:(id)a5 animationSubTestName:(id)a6 presenter:(id)a7 completion:(id)a8;
- (void)_presentDismissTrayTestWithLatencySubTestName:(id)a3 animationSubTestName:(id)a4 presenter:(id)a5 completion:(id)a6;
- (void)_resizingTestWithCount:(unint64_t)a3 numbeorOfRounds:(unint64_t)a4 latencySubTestName:(id)a5 animationSubTestName:(id)a6 completion:(id)a7;
- (void)_resizingTrayWithLatencySubTestName:(id)a3 animationSubTestName:(id)a4 completion:(id)a5;
- (void)_updateTrayLayout:(unint64_t)a3 animated:(BOOL)a4 latencySubTestName:(id)a5 animationSubTestName:(id)a6 completion:(id)a7;
- (void)addFullyDrawnCallback:(id)a3;
- (void)cleanup:(BOOL)a3;
- (void)didEndGEOPPTTest_Manifest:(id)a3;
- (void)didEndGEOPPTTest_Manifest_ForcedUpdate:(id)a3;
- (void)didEndGEOPPTTest_Manifest_GetResourceManifest:(id)a3;
- (void)didEndGEOPPTTest_Manifest_HandleMessage:(id)a3;
- (void)didEndGEOPPTTest_Manifest_ResetActiveTileGroup:(id)a3;
- (void)didEndGEOPPTTest_Manifest_SetActiveTileGroup:(id)a3;
- (void)didEndGEOPPTTest_Manifest_SetManifestToken:(id)a3;
- (void)didEndGEOPPTTest_Manifest_SetupConnection:(id)a3;
- (void)didEndGEOPPTTest_Manifest_Update:(id)a3;
- (void)didTearDownForVKTest;
- (void)dismissTrayWithAssertTrayType:(int64_t)a3 completion:(id)a4;
- (void)dismissTrayWithSubtestName:(id)a3 completion:(id)a4;
- (void)failedTest;
- (void)failedTestWithReason:(id)a3;
- (void)finishedSerialSubTest:(id)a3;
- (void)finishedSubTest:(id)a3;
- (void)finishedTestWithExtraResults:(id)a3;
- (void)onFullyDrawn:(id)a3;
- (void)popToRootTrayWithCompletion:(id)a3;
- (void)presentDismissTrayTestAndSubTestsWithPrefix:(id)a3 presenter:(id)a4 completion:(id)a5;
- (void)registerGEOManifestSubtests;
- (void)resizingTestAndSubTestsWithPrefix:(id)a3 completion:(id)a4;
- (void)rotateDeviceWithCompletion:(id)a3;
- (void)rotateDeviceWithSubtestName:(id)a3 completion:(id)a4;
- (void)runSerialSubTestAtIndex:(unint64_t)a3;
- (void)setupForVKTest;
- (void)setupForVKTestWithMapView:(id)a3;
- (void)setupFullyDrawnNotification:(SEL)a3;
- (void)startedSerialSubTest:(id)a3;
- (void)startedSubTest:(id)a3;
- (void)startedSubTest:(id)a3 withMetrics:(id)a4;
- (void)startedTest;
- (void)switchToMapType:(unint64_t)a3;
- (void)switchToViewMode:(int64_t)a3;
- (void)updateTrayLayout:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)updateTrayLayout:(unint64_t)a3 withSubtestName:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)vkMapViewFullyDrawn:(id)a3;
- (void)willBeginGEOPPTTest_Manifest:(id)a3;
- (void)willBeginGEOPPTTest_Manifest_ForcedUpdate:(id)a3;
- (void)willBeginGEOPPTTest_Manifest_GetResourceManifest:(id)a3;
- (void)willBeginGEOPPTTest_Manifest_HandleMessage:(id)a3;
- (void)willBeginGEOPPTTest_Manifest_ResetActiveTileGroup:(id)a3;
- (void)willBeginGEOPPTTest_Manifest_SetActiveTileGroup:(id)a3;
- (void)willBeginGEOPPTTest_Manifest_SetManifestToken:(id)a3;
- (void)willBeginGEOPPTTest_Manifest_SetupConnection:(id)a3;
- (void)willBeginGEOPPTTest_Manifest_Update:(id)a3;
- (void)willSetupForVKTest;
@end

@implementation MapsAppTest

- (void)_presentDirectionDetailsWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10058A014;
  v7[3] = &unk_101655DA8;
  objc_copyWeak(&v9, &location);
  v5 = v4;
  v8 = v5;
  [PPTNotificationCenter addOnceObserverForName:@"PPTTestTrayDidPresentNotification" object:0 usingBlock:v7];
  v6 = [(MapsAppTest *)self testCoordinator];
  [v6 pptTestPresentDirectionsDetails];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)rotateDeviceWithCompletion:(id)a3
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C8D610;
  v10[3] = &unk_10164FAC0;
  v3 = a3;
  v11 = v3;
  [PPTNotificationCenter addOnceObserverForName:@"PPTTestOrientationDidRotateNotification" object:0 usingBlock:v10];
  v4 = +[UIDevice currentDevice];
  v5 = [v4 orientation];

  if ((v5 - 3) < 2)
  {
    v6 = +[UIApplication sharedApplication];
    v7 = v6;
    v8 = &stru_10164FB78;
    v9 = 1;
    goto LABEL_5;
  }

  if ((v5 - 1) <= 1)
  {
    v6 = +[UIApplication sharedApplication];
    v7 = v6;
    v8 = &stru_10164FB58;
    v9 = 4;
LABEL_5:
    [v6 rotateIfNeeded:v9 completion:v8];
  }
}

- (void)rotateDeviceWithSubtestName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MapsAppTest *)self startedSubTest:v6];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C8D700;
  v10[3] = &unk_1016605F8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(MapsAppTest *)self rotateDeviceWithCompletion:v10];
}

- (void)popToRootTrayWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MapsAppTest *)self testCoordinator];
  v6 = [v5 pptTestIsTrayType:2];

  if (v6)
  {
    if (![(MapsAppTest *)self isRunningOnCarPlay])
    {
      v7 = [(MapsAppTest *)self testCoordinator];
      [v7 pptTestSearchCancel];
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100C8D8A8;
    v13[3] = &unk_101661760;
    v14 = v4;
    v8 = v4;
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
    v12 = v4;
    v10 = v4;
    [(MapsAppTest *)self dismissTrayWithAssertTrayType:0 completion:v11];
    v9 = v12;
  }
}

- (void)dismissTrayWithAssertTrayType:(int64_t)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C8D9A0;
  v8[3] = &unk_10164FAC0;
  v9 = a4;
  v6 = v9;
  [PPTNotificationCenter addOnceObserverForName:@"PPTTestTrayDidDismissNotification" object:0 usingBlock:v8];
  v7 = [(MapsAppTest *)self testCoordinator];
  [v7 pptTestDismissTrayAnimated:1 assertTrayType:a3];
}

- (void)dismissTrayWithSubtestName:(id)a3 completion:(id)a4
{
  v5 = a3;
  [(MapsAppTest *)self startedSubTest:v5];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100C8DA68;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(MapsAppTest *)self dismissTrayWithCompletion:v7];
}

- (void)_presentDismissTrayTestWithLatencySubTestName:(id)a3 animationSubTestName:(id)a4 presenter:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 length])
  {
    v14 = [v11 length] != 0;
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
  v15 = v11;
  v23 = v15;
  v16 = v10;
  v24 = v16;
  v17 = v13;
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

  if (v12)
  {
    v12[2](v12);
  }
}

- (void)_presentDismissTrayTestWithCount:(unint64_t)a3 numberOfRounds:(unint64_t)a4 latencySubTestName:(id)a5 animationSubTestName:(id)a6 presenter:(id)a7 completion:(id)a8
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100C8E108;
  v15[3] = &unk_10164FAE8;
  v21 = a3 + 1;
  v22 = a4;
  v16 = self;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v11 = v20;
  v12 = v19;
  v13 = v18;
  v14 = v17;
  [(MapsAppTest *)v16 _presentDismissTrayTestWithLatencySubTestName:v14 animationSubTestName:v13 presenter:v12 completion:v15];
}

- (void)presentDismissTrayTestAndSubTestsWithPrefix:(id)a3 presenter:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [v10 stringByAppendingString:@"_Latency"];
  v11 = [v10 stringByAppendingString:@"_Animation"];

  [(MapsAppTest *)self _presentDismissTrayTestWithNumberOfRounds:10 latencySubTestName:v12 animationSubTestName:v11 presenter:v9 completion:v8];
}

- (void)updateTrayLayout:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = +[UIDevice currentDevice];
  if ([v9 userInterfaceIdiom] == 5)
  {
  }

  else
  {
    v10 = [(MapsAppTest *)self testCoordinator];
    v11 = [v10 pptTestCanUpdateTrayLayout];

    if (v11)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100C8E37C;
      v13[3] = &unk_10164FAC0;
      v14 = v8;
      [PPTNotificationCenter addOnceObserverForName:@"PPTTestTrayLayoutDidUpdateNotification" object:0 usingBlock:v13];
      v12 = [(MapsAppTest *)self testCoordinator];
      [v12 pptTestUpdateTrayLayout:a3 animated:v5];

      goto LABEL_7;
    }
  }

  if (v8)
  {
    v8[2](v8);
  }

LABEL_7:
}

- (void)_updateTrayLayout:(unint64_t)a3 animated:(BOOL)a4 latencySubTestName:(id)a5 animationSubTestName:(id)a6 completion:(id)a7
{
  v9 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if ([v12 length] && objc_msgSend(v13, "length"))
  {
    [(MapsAppTest *)self startedSubTest:v12];
    v15 = UIApp;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100C8E538;
    v23[3] = &unk_101661A40;
    v23[4] = self;
    v24 = v12;
    v25 = v13;
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
  v20 = v13;
  v21 = v14;
  v17 = v14;
  v18 = v13;
  [(MapsAppTest *)self updateTrayLayout:a3 animated:v9 completion:v19];
}

- (void)updateTrayLayout:(unint64_t)a3 withSubtestName:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  [(MapsAppTest *)self startedSubTest:v10];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100C8E6C4;
  v14[3] = &unk_1016605F8;
  v14[4] = self;
  v15 = v10;
  v16 = v11;
  v12 = v11;
  v13 = v10;
  [(MapsAppTest *)self updateTrayLayout:a3 animated:v7 completion:v14];
}

- (BOOL)canUpdateTrayLayout
{
  v2 = [(MapsAppTest *)self testCoordinator];
  v3 = [v2 pptTestCanUpdateTrayLayout];

  return v3;
}

- (void)_resizingTrayWithLatencySubTestName:(id)a3 animationSubTestName:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C8E844;
  v10[3] = &unk_101660380;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v14;
  v8 = v13;
  v9 = v12;
  [(MapsAppTest *)v11 _updateTrayLayout:0 animated:1 latencySubTestName:v9 animationSubTestName:v8 completion:v10];
}

- (void)_resizingTestWithCount:(unint64_t)a3 numbeorOfRounds:(unint64_t)a4 latencySubTestName:(id)a5 animationSubTestName:(id)a6 completion:(id)a7
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100C8ED90;
  v12[3] = &unk_10164FA98;
  v17 = a3 + 1;
  v18 = a4;
  v13 = self;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v9 = v16;
  v10 = v15;
  v11 = v14;
  [(MapsAppTest *)v13 _resizingTrayWithLatencySubTestName:v11 animationSubTestName:v10 completion:v12];
}

- (void)resizingTestAndSubTestsWithPrefix:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 stringByAppendingString:@"_Latency"];
  v8 = [v7 stringByAppendingString:@"_Animation"];

  [(MapsAppTest *)self _resizingTestWithNumberOfRounds:10 latencySubTestName:v9 animationSubTestName:v8 completion:v6];
}

- (PPTTestCoordinatorProtocol)testCoordinator
{
  v3 = objc_getAssociatedObject(self, &unk_10195EDF0);
  if (!v3)
  {
    v4 = +[UIApplication sharedMapsDelegate];
    v3 = [v4 testCoordinator];

    objc_setAssociatedObject(self, &unk_10195EDF0, v3, 1);
  }

  return v3;
}

- (BOOL)isRunningOnCarPlay
{
  v2 = [(MapsAppTest *)self mainMKMapView];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom] == 3;

  return v4;
}

- (void)didTearDownForVKTest
{
  if ([(MapsAppTest *)self isRunningOnCarPlay])
  {
    v3 = [(MapsAppTest *)self testCoordinator];
    [v3 setChromeHidden:0];
  }
}

- (void)willSetupForVKTest
{
  if ([(MapsAppTest *)self isRunningOnCarPlay])
  {
    v3 = [(MapsAppTest *)self mainMKMapView];
    [v3 setUserTrackingMode:0 animated:0];

    v4 = [(MapsAppTest *)self testCoordinator];
    [v4 setChromeHidden:1];
  }
}

- (void)switchToViewMode:(int64_t)a3
{
  v4 = [(MapsAppTest *)self testCoordinator];
  [v4 setPPTTestViewMode:a3 animated:1];
}

- (void)switchToMapType:(unint64_t)a3
{
  v4 = [(MapsAppTest *)self testCoordinator];
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v5 = 2;
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v5 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    switch(a3)
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
  v6 = v4;
  [v4 setPPTTestViewMode:v5 animated:1];
}

- (VKMapView)mainVKMapView
{
  v2 = [(MapsAppTest *)self testCoordinator];
  v3 = [v2 mapViewForPPTTest];
  v4 = [v3 _mapLayer];

  return v4;
}

- (MKMapView)mainMKMapView
{
  v2 = [(MapsAppTest *)self testCoordinator];
  v3 = [v2 mapViewForPPTTest];

  return v3;
}

- (void)didEndGEOPPTTest_Manifest_HandleMessage:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C98EC8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_HandleMessage:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C98F4C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_ResetActiveTileGroup:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C98FD8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_ResetActiveTileGroup:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C9905C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_SetActiveTileGroup:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C990E8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_SetActiveTileGroup:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C9916C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_SetManifestToken:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C991F8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_SetManifestToken:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C9927C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_GetResourceManifest:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C99308;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_GetResourceManifest:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C9938C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_ForcedUpdate:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C99418;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_ForcedUpdate:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C9949C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_Update:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C99528;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_Update:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C995AC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest_SetupConnection:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C99638;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest_SetupConnection:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C996BC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_Manifest:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C99748;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_Manifest:(id)a3
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
  v3 = [(MapsAppTest *)self mainVKMapView];
  [(MapsAppTest *)self setupForVKTestWithMapView:v3];
}

- (void)setupForVKTestWithMapView:(id)a3
{
  v4 = a3;
  [(MapsAppTest *)self willSetupForVKTest];
  v5 = [(MapsAppTest *)self options];
  v10 = 0uLL;
  [v5 _mapstest_getSelectedFeatures:&v10 disabled:&v10 + 8];
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
      [v4 setTrafficEnabled:(v6 & 0x80) == 0];
      v6 = *(&v10 + 1);
    }

    [v4 setDisablePolygons:(v6 >> 3) & 1];
    [v4 setDisableRoads:(*(&v10 + 1) >> 1) & 1];
    [v4 setDisableLabels:(*(&v10 + 1) >> 2) & 1];
    [v4 setDisableBuildingFootprints:(*(&v10 + 1) >> 4) & 1];
    [v4 setDisableRasters:(*(&v10 + 1) >> 5) & 1];
    [v4 setDisableGrid:(*(&v10 + 1) >> 6) & 1];
    [v4 setDisableTransitLines:(*(&v10 + 1) >> 8) & 1];
  }

  if ([v5 _mapstest_hasMapType])
  {
    [v5 _mapstest_hasViewMode];
  }

  if ([v5 _mapstest_hasViewMode])
  {
    -[MapsAppTest switchToViewMode:](self, "switchToViewMode:", [v5 _mapstest_viewMode]);
  }

  else
  {
    -[MapsAppTest switchToMapType:](self, "switchToMapType:", [v5 _mapstest_mapType]);
  }

  v7 = [v5 objectForKeyedSubscript:@"selectedFeatureId"];
  if (v7)
  {
    v8 = [NSScanner scannerWithString:v7];
    v9 = 0;
    [v8 scanUnsignedLongLong:&v9];
    [v4 setSelectedFeatureId:v9];
  }

  else
  {
    [v4 deselectFeatureId];
  }
}

- (void)setupFullyDrawnNotification:(SEL)a3
{
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:a3 name:VKMapViewDidBecomeFullyDrawnNotification object:0];
}

- (void)addFullyDrawnCallback:(id)a3
{
  v4 = a3;
  v5 = sub_100798744();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_retainBlock(v4);
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Adding FullyDrawnCallback: %@", buf, 0xCu);
  }

  fullyDrawnCallbacks = self->_fullyDrawnCallbacks;
  v8 = [v4 copy];
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

- (void)vkMapViewFullyDrawn:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v3 = [(MapsAppTest *)self mainVKMapView];
    if ([v3 isFullyDrawn])
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
          v12 = [(NSMutableArray *)self->_fullyDrawnCallbacks firstObject];
          [(NSMutableArray *)self->_fullyDrawnCallbacks removeObjectAtIndex:0];
          v13 = sub_100798744();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = objc_retainBlock(v12);
            *buf = v15;
            v17 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Invoking callback: %@", buf, 0xCu);
          }

          v12[2](v12);
        }

        while ([(NSMutableArray *)self->_fullyDrawnCallbacks count]);
      }

      goto LABEL_15;
    }
  }

  v6 = [(MapsAppTest *)self mainVKMapView];

  if (!v5)
  {
  }

  if (v6 == v5)
  {
    goto LABEL_10;
  }

  v7 = sub_100798744();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [(MapsAppTest *)self mainVKMapView];
    v9 = [(MapsAppTest *)self mainVKMapView];
    *buf = 138412802;
    v17 = v5;
    v18 = 2112;
    v19 = v8;
    v20 = 1024;
    v21 = [v9 isFullyDrawn];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "vkMapViewFullyDrawn: but not calling back! mapView: %@ mainVKMapView: %@ isFullyDrawn: %d", buf, 0x1Cu);
  }

LABEL_15:
}

- (void)onFullyDrawn:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  if (!v5)
  {
    v5 = [(MapsAppTest *)self mainVKMapView];
  }

  v6 = [v5 isFullyDrawn];
  v7 = sub_100798744();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "onFullyDrawn:", &v9, 2u);
    }

    [(MapsAppTest *)self vkMapViewFullyDrawn:v5];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 1024;
      v12 = [v5 isFullyDrawn];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "onFullyDrawn is called when mapView is not fully drawn. Notification: %@, [mapView isFullyDrawn] : %d", &v9, 0x12u);
    }
  }
}

- (void)runSerialSubTestAtIndex:(unint64_t)a3
{
  v15 = [(MapsAppTest *)self serialSubTests];
  v5 = [v15 count] > a3;
  v6 = v15;
  if (v5)
  {
    v7 = [v15 objectAtIndexedSubscript:a3];
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

      v13 = [(MapsAppTest *)self mainVKMapView];
      self->_currentSubTestStartTime = CACurrentMediaTime();
      [(MapsAppTest *)self startedSerialSubTest:v11];
      [v13 enableTestStatistics];
      v14 = [v7 objectForKeyedSubscript:@"options"];
      [(MapsAppTest *)self performSelector:v9 withObject:v14];
    }

    v6 = v15;
  }
}

- (NSArray)serialSubTests
{
  v2 = [(MapsAppTest *)self options];
  v3 = [v2 _mapstest_serialSubTests];

  return v3;
}

- (void)failedTestWithReason:(id)a3
{
  v4 = a3;
  [(MapsAppTesting *)self->_app failedTest:self->_testName withFailure:v4];
  v5 = sub_100798744();
  if (os_signpost_enabled(v5))
  {
    testName = self->_testName;
    v7 = 138412546;
    v8 = testName;
    v9 = 2112;
    v10 = v4;
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

- (void)finishedTestWithExtraResults:(id)a3
{
  v4 = a3;
  results = self->_results;
  v14 = @"tilegroup";
  v6 = +[GEOResourceManifestManager modernManager];
  v7 = [v6 activeTileGroup];
  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v7 identifier]);
  v15 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [(NSMutableDictionary *)results addEntriesFromDictionary:v9];

  if (v4)
  {
    [(NSMutableDictionary *)self->_results addEntriesFromDictionary:v4];
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

- (void)finishedSerialSubTest:(id)a3
{
  v20 = a3;
  [MapsAppTesting finishedSubTest:"finishedSubTest:forTest:" forTest:?];
  v4 = sub_100798744();
  if (os_signpost_enabled(v4))
  {
    *buf = 138412290;
    v27 = v20;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "subTest", "testName=%@", buf, 0xCu);
  }

  v5 = [(MapsAppTest *)self mainVKMapView];
  [v5 disableTestStatistics];

  v6 = [(MapsAppTest *)self mainVKMapView];
  v7 = [v6 testStatistics];

  v8 = [(MapsAppTest *)self mainVKMapView];
  [v8 resetTestStatistics];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
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
        v16 = [(MapsAppTest *)self results];
        v17 = [NSString stringWithFormat:@"%@:%@", v20, v14];
        [v16 setObject:v15 forKeyedSubscript:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v18 = [(MapsAppTest *)self serialSubTests];
  if ([v18 count] && (currentSubTestIndex = self->_currentSubTestIndex, currentSubTestIndex < objc_msgSend(v18, "count") - 1))
  {
    ++self->_currentSubTestIndex;
    [(MapsAppTest *)self runSerialSubTestAtIndex:?];
  }

  else
  {
    [(MapsAppTest *)self finishedTest];
  }
}

- (void)finishedSubTest:(id)a3
{
  v4 = a3;
  [(MapsAppTesting *)self->_app finishedSubTest:v4 forTest:self->_testName];
  v5 = sub_100798744();
  if (os_signpost_enabled(v5))
  {
    v6 = 138412290;
    v7 = v4;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "subTest", "testName=%@", &v6, 0xCu);
  }
}

- (void)startedSubTest:(id)a3 withMetrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100798744();
  if (os_signpost_enabled(v8))
  {
    v9 = 138412290;
    v10 = v6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "subTest", "testName=%@", &v9, 0xCu);
  }

  [(MapsAppTesting *)self->_app startedSubTest:v6 forTest:self->_testName withMetrics:v7];
}

- (void)startedSerialSubTest:(id)a3
{
  v4 = a3;
  v5 = sub_100798744();
  if (os_signpost_enabled(v5))
  {
    v6 = 138412290;
    v7 = v4;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "subTest", "testName=%@", &v6, 0xCu);
  }

  [(MapsAppTesting *)self->_app startedSubTest:v4 forTest:self->_testName];
}

- (void)startedSubTest:(id)a3
{
  v4 = a3;
  v5 = sub_100798744();
  if (os_signpost_enabled(v5))
  {
    v6 = 138412290;
    v7 = v4;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "subTest", "testName=%@", &v6, 0xCu);
  }

  [(MapsAppTesting *)self->_app startedSubTest:v4 forTest:self->_testName];
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

- (void)cleanup:(BOOL)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5 = +[GEONotificationPreferenceManager sharedManager];
  [v5 reset];

  [(NSMutableDictionary *)self->_results removeAllObjects];
  [(NSMutableArray *)self->_fullyDrawnCallbacks removeAllObjects];

  [(MapsAppTest *)self didTearDownForVKTest];
}

- (MapsAppTest)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 length])
  {
    v24.receiver = self;
    v24.super_class = MapsAppTest;
    v12 = [(MapsAppTest *)&v24 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_app, a3);
      v14 = [v10 copy];
      testName = v13->_testName;
      v13->_testName = v14;

      v16 = [v11 copy];
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
    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end