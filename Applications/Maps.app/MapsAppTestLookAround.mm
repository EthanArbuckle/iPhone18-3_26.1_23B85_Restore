@interface MapsAppTestLookAround
- (BOOL)runTest;
- (void)addObserverWithSearchString:(id)a3 forDidShowPreviewBlock:(id)a4;
- (void)cleanup:(BOOL)a3;
- (void)displayPlacecardPhotosWithSearchString:(id)a3 resultShortAddress:(id)a4 didShowPreviewBlock:(id)a5;
- (void)enterLookAroundWithLookAroundView:(id)a3 mapItem:(id)a4 showsFullScreen:(BOOL)a5 completionBlock:(id)a6;
- (void)expandLookAroundToFullscreen:(BOOL)a3 withLookAroundView:(id)a4 mapItem:(id)a5 completionBlock:(id)a6;
- (void)jumpToOptionsCoord:(id)a3;
- (void)onLookAroundView:(id)a3 didBecomeAdequatelyDrawnCallback:(id)a4;
- (void)onLookAroundView:(id)a3 didCompletionPostTransitionAnimation:(id)a4;
- (void)panLookAroundView:(id)a3 completion:(id)a4;
- (void)runBrowseTestWithContinuationBlock:(id)a3;
- (void)runEnterExploreNavExitTest;
- (void)runEnterTestWithContinuationBlock:(id)a3;
- (void)runExploreTest;
- (void)runFullScreenNavTestWithMapItem:(id)a3;
- (void)runNavTest;
- (void)runNavTestWithMapItem:(id)a3 showsFullScreen:(BOOL)a4;
- (void)runZoomTest;
- (void)selectSearchResult:(id)a3;
- (void)storefrontWillMoveBlock:(id)a3 didMoveBlock:(id)a4;
- (void)tap:(CGPoint)a3 countdown:(int)a4 mapView:(id)a5 totalTimeInMS:(double)a6 firstTap:(BOOL)a7;
- (void)zoom:(CGPoint)a3 countdown:(int)a4 oldFactor:(double)a5 mapView:(id)a6;
@end

@implementation MapsAppTestLookAround

- (void)zoom:(CGPoint)a3 countdown:(int)a4 oldFactor:(double)a5 mapView:(id)a6
{
  y = a3.y;
  x = a3.x;
  v11 = a6;
  v12 = v11;
  if (a4 <= 0)
  {
    v16 = dispatch_time(0, 50000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100784358;
    block[3] = &unk_10164C698;
    v27 = x;
    v28 = y;
    v25 = v12;
    v26 = self;
    v17 = v12;
    dispatch_after(v16, &_dispatch_main_q, block);
    v15 = v25;
  }

  else
  {
    [v11 updatePinchWithFocusPoint:x oldFactor:y newFactor:{a5, a5 + 0.1}];
    v13 = dispatch_time(0, 50000000);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1007845EC;
    v18[3] = &unk_101628DA8;
    v20 = x;
    v21 = y;
    v23 = a4;
    v22 = a5 + 0.1;
    v18[4] = self;
    v19 = v12;
    v14 = v12;
    dispatch_after(v13, &_dispatch_main_q, v18);
    v15 = v19;
  }
}

- (void)runZoomTest
{
  v3 = sub_100798614();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[self startedTest]", buf, 2u);
  }

  [(MapsAppTest *)self startedTest];
  v4 = +[VKDebugSettings sharedSettingsExt];
  self->_savedDebugDrawContinuously = [v4 layoutContinuously];

  v5 = +[VKDebugSettings sharedSettingsExt];
  [v5 setLayoutContinuously:1];

  v6 = sub_100798614();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[self startedSubTest:@zoomLookAroundEnter]", buf, 2u);
  }

  [(MapsAppTest *)self startedSubTest:@"zoomLookAroundEnter"];
  v7 = [(MapsAppTest *)self mainMKMapView];
  v8 = [MKPlacemark alloc];
  [v7 centerCoordinate];
  v9 = [v8 initWithCoordinate:?];
  v10 = [[MKMapItem alloc] initWithPlacemark:v9];
  v11 = [MKLookAroundEntryPoint entryPointWithMapItem:v10];
  v12 = [(MapsAppTest *)self testCoordinator];
  [v12 pptTestEnterLookAroundWithEntryPoint:v11 lookAroundView:0 showsFullScreen:1];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100784820;
  v13[3] = &unk_101650D20;
  v13[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"LookAroundTrayContaineeViewControllerDidAppear" object:0 usingBlock:v13];
}

- (void)tap:(CGPoint)a3 countdown:(int)a4 mapView:(id)a5 totalTimeInMS:(double)a6 firstTap:(BOOL)a7
{
  v7 = a7;
  y = a3.y;
  x = a3.x;
  v13 = a5;
  v14 = +[NSDate date];
  v15 = v14;
  if (a4 <= 0)
  {
    v42 = v14;
    v19 = sub_100798614();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[self finishedSubTest:@navLookAround]", buf, 2u);
    }

    v20 = [(MapsAppTest *)self options];
    v21 = [v20 _maptest_lookAroundNavigationTaps];

    if (v21 >= 1)
    {
      v22 = v21;
    }

    else
    {
      v22 = 5;
    }

    v41 = v22;
    savedDebugDrawContinuously = self->_savedDebugDrawContinuously;
    v24 = +[VKDebugSettings sharedSettingsExt];
    [v24 setLayoutContinuously:savedDebugDrawContinuously];

    v25 = [(MapsAppTest *)self mainMKMapView];
    v26 = [v25 _mapLayer];
    [v26 setHidden:0];

    [(MapsAppTest *)self finishedSubTest:@"navLookAround"];
    [v13 disableTestStatistics];
    v43 = v13;
    v18 = [v13 testStatistics];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v27 = [v18 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v53;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v53 != v29)
          {
            objc_enumerationMutation(v18);
          }

          v31 = *(*(&v52 + 1) + 8 * i);
          v32 = [v18 objectForKey:v31];
          v33 = [(MapsAppTest *)self results];
          v34 = [NSString stringWithFormat:@"sub:loadingScene:%@", v31];
          [v33 setObject:v32 forKey:v34];
        }

        v28 = [v18 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v28);
    }

    v35 = [NSNumber numberWithDouble:a6 / v41];
    v36 = [(MapsAppTest *)self results];
    v37 = [NSString stringWithFormat:@"sub:navLookAround:average animation time"];
    [v36 setObject:v35 forKey:v37];

    v13 = v43;
    [v43 resetTestStatistics];
    v38 = [v43 tileStatistics];
    if (v38)
    {
      v39 = [(MapsAppTest *)self results];
      [v39 addEntriesFromDictionary:v38];
    }

    v40 = sub_100798614();
    v15 = v42;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "[self finishedTest]", buf, 2u);
    }

    [(MapsAppTest *)self finishedTest];
  }

  else
  {
    if (v7)
    {
      v16 = 0;
    }

    else
    {
      v16 = 3500000000;
    }

    v17 = dispatch_time(0, v16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100784F20;
    block[3] = &unk_101628D58;
    v45 = v13;
    v48 = x;
    v49 = y;
    v46 = v15;
    v47 = self;
    v51 = a4;
    v50 = a6;
    dispatch_after(v17, &_dispatch_main_q, block);

    v18 = v45;
  }
}

- (void)panLookAroundView:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MapsAppTest *)self options];
  [v7 setPresentationYaw:1 animated:{objc_msgSend(v8, "_maptest_lookAroundNavigationAmountToTurnInDegrees")}];

  v9 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10078515C;
  block[3] = &unk_101661760;
  v12 = v6;
  v10 = v6;
  dispatch_after(v9, &_dispatch_main_q, block);
}

- (void)runNavTestWithMapItem:(id)a3 showsFullScreen:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = sub_100798614();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[self startedTest]", buf, 2u);
  }

  [(MapsAppTest *)self startedTest];
  v8 = sub_100798614();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[self startedSubTest:@navLookAround]", buf, 2u);
  }

  v9 = +[VKDebugSettings sharedSettingsExt];
  self->_savedDebugDrawContinuously = [v9 layoutContinuously];

  v10 = +[VKDebugSettings sharedSettingsExt];
  [v10 setLayoutContinuously:1];

  [(MapsAppTest *)self startedSubTest:@"navLookAroundEnter"];
  v11 = [MKLookAroundEntryPoint entryPointWithMapItem:v6];
  v12 = [(MapsAppTest *)self testCoordinator];
  [v12 pptTestEnterLookAroundWithEntryPoint:v11 lookAroundView:0 showsFullScreen:v4];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100785350;
  v14[3] = &unk_10162A168;
  v14[4] = self;
  v15 = v6;
  v13 = v6;
  [PPTNotificationCenter addOnceObserverForName:@"LookAroundTrayContaineeViewControllerDidAppear" object:0 usingBlock:v14];
}

- (void)runFullScreenNavTestWithMapItem:(id)a3
{
  v4 = a3;
  v5 = sub_100798614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[self startedTest]", buf, 2u);
  }

  [(MapsAppTest *)self startedTest];
  v6 = sub_100798614();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[self startedSubTest:@navLookAround]", buf, 2u);
  }

  v7 = +[VKDebugSettings sharedSettingsExt];
  self->_savedDebugDrawContinuously = [v7 layoutContinuously];

  v8 = +[VKDebugSettings sharedSettingsExt];
  [v8 setLayoutContinuously:1];

  [(MapsAppTest *)self startedSubTest:@"navFullScreenLookAroundEnter"];
  v9 = [MKLookAroundEntryPoint entryPointWithMapItem:v4];

  v10 = [(MapsAppTest *)self testCoordinator];
  [v10 pptTestEnterLookAroundWithEntryPoint:v9 lookAroundView:0 showsFullScreen:1];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100785B1C;
  v11[3] = &unk_101650D20;
  v11[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"PPTLookAroundContainerViewControllerDidTransitionToFullscreen" object:0 usingBlock:v11];
}

- (void)runNavTest
{
  v6 = [(MapsAppTest *)self mainMKMapView];
  v3 = [MKPlacemark alloc];
  [v6 centerCoordinate];
  v4 = [v3 initWithCoordinate:?];
  v5 = [[MKMapItem alloc] initWithPlacemark:v4];
  [(MapsAppTestLookAround *)self runNavTestWithMapItem:v5 showsFullScreen:0];
}

- (void)runEnterExploreNavExitTest
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100785EC8;
  v2[3] = &unk_101628CB8;
  v2[4] = self;
  [(MapsAppTestLookAround *)self runEnterTestWithContinuationBlock:v2];
}

- (void)runExploreTest
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100785FC0;
  v2[3] = &unk_101628CB8;
  v2[4] = self;
  [(MapsAppTestLookAround *)self runEnterTestWithContinuationBlock:v2];
}

- (void)runEnterTestWithContinuationBlock:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10078621C;
  v4[3] = &unk_101628C90;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(MapsAppTestLookAround *)v5 runBrowseTestWithContinuationBlock:v4];
}

- (void)runBrowseTestWithContinuationBlock:(id)a3
{
  v4 = a3;
  v5 = sub_100798614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[self startedTest]", buf, 2u);
  }

  [(MapsAppTest *)self startedTest];
  v6 = [(MapsAppTest *)self options];
  v7 = [v6 objectForKeyedSubscript:@"searchString"];
  v8 = [(MapsAppTest *)self options];
  v9 = [v8 objectForKeyedSubscript:@"resultShortAddress"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100786598;
  v11[3] = &unk_101628C90;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [(MapsAppTestLookAround *)self displayPlacecardPhotosWithSearchString:v7 resultShortAddress:v9 didShowPreviewBlock:v11];
}

- (void)expandLookAroundToFullscreen:(BOOL)a3 withLookAroundView:(id)a4 mapItem:(id)a5 completionBlock:(id)a6
{
  v8 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100786BC4;
  v15[3] = &unk_101638720;
  v15[4] = self;
  v16 = a4;
  v17 = a6;
  v10 = v17;
  v11 = v16;
  v12 = a5;
  [PPTNotificationCenter addOnceObserverForName:@"PPTLookAroundContainerViewControllerDidTransitionToFullscreen" object:0 usingBlock:v15];
  v13 = [MKLookAroundEntryPoint entryPointWithMapItem:v12];

  v14 = [(MapsAppTest *)self testCoordinator];
  [v14 pptTestEnterLookAroundWithEntryPoint:v13 lookAroundView:v11 showsFullScreen:v8];
}

- (void)enterLookAroundWithLookAroundView:(id)a3 mapItem:(id)a4 showsFullScreen:(BOOL)a5 completionBlock:(id)a6
{
  v7 = a5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100786DEC;
  v15[3] = &unk_101638720;
  v15[4] = self;
  v16 = a3;
  v17 = a6;
  v10 = v17;
  v11 = v16;
  v12 = a4;
  [PPTNotificationCenter addOnceObserverForName:@"LookAroundTrayContaineeViewControllerDidAppear" object:0 usingBlock:v15];
  v13 = [MKLookAroundEntryPoint entryPointWithMapItem:v12];

  v14 = [(MapsAppTest *)self testCoordinator];
  [v14 pptTestEnterLookAroundWithEntryPoint:v13 lookAroundView:v11 showsFullScreen:v7];
}

- (void)storefrontWillMoveBlock:(id)a3 didMoveBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MKLookAroundViewWillMoveToStorefrontNotification;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100787060;
  v10[3] = &unk_101628C68;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [PPTNotificationCenter addOnceObserverForName:v7 object:0 usingBlock:v10];
}

- (void)selectSearchResult:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100787290;
  v4[3] = &unk_10162A168;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  [PPTNotificationCenter addOnceObserverForName:@"MapsPinsDroppedForSearchResultsNotification" object:0 usingBlock:v4];
}

- (void)displayPlacecardPhotosWithSearchString:(id)a3 resultShortAddress:(id)a4 didShowPreviewBlock:(id)a5
{
  v8 = a3;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100787450;
  v17 = &unk_101628C40;
  v18 = self;
  v19 = a4;
  v20 = v8;
  v21 = a5;
  v9 = v21;
  v10 = v8;
  v11 = v19;
  [PPTNotificationCenter addOnceObserverForName:@"SearchSessionDidChangeSearchResultsNotification" object:0 usingBlock:&v14];
  v12 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v12 setSearchString:v10, v14, v15, v16, v17, v18];
  v13 = [(MapsAppTest *)self testCoordinator];
  [v13 pptTestSearchForFieldItem:v12];
}

- (void)addObserverWithSearchString:(id)a3 forDidShowPreviewBlock:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100787758;
  v9[3] = &unk_101638720;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v7 = v12;
  v8 = v6;
  [PPTNotificationCenter addOnceObserverForName:@"PPTLookAroundChromeOverlayDidShowLookAroundPreviewNotificationName" object:0 usingBlock:v9];
}

- (void)onLookAroundView:(id)a3 didCompletionPostTransitionAnimation:(id)a4
{
  v4 = a4;
  v5 = dispatch_time(0, 200000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007879CC;
  block[3] = &unk_101661760;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)onLookAroundView:(id)a3 didBecomeAdequatelyDrawnCallback:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 adequatelyDrawn])
  {
    v7 = sub_100798614();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138412546;
      v14 = v9;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "<%@:%p> is already adequately drawn", buf, 0x16u);
    }

    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v10 = MKLookAroundViewDidBecomeAdequatelyDrawnNotification;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100787B6C;
    v11[3] = &unk_10164FAC0;
    v12 = v6;
    [PPTNotificationCenter addOnceObserverForName:v10 object:v5 usingBlock:v11];
  }
}

- (void)jumpToOptionsCoord:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(MapsAppTest *)self setupForVKTest];
    v5 = [(MapsAppTest *)self options];
    [v5 _mapstest_jumpPoint];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(MapsAppTest *)self options];
    [v12 _mapstest_pitch];
    v14 = v13;

    v15 = [(MapsAppTest *)self options];
    [v15 _mapstest_yaw];
    v17 = v16;

    v18 = [(MapsAppTest *)self options];
    v19 = [v18 _mapstest_mapType];

    v20 = sub_100798614();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v23 = 134217984;
      v24 = *&v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[self switchToMapType:%lu]", &v23, 0xCu);
    }

    [(MapsAppTest *)self switchToMapType:v19];
    v21 = sub_100798614();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = 134218752;
      v24 = v7;
      v25 = 2048;
      v26 = v9;
      v27 = 2048;
      v28 = v14;
      v29 = 2048;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "[self.mainVKMapView _mapstest_jumpToCoords:(%g, %g) pitch:%g yaw:%g)]", &v23, 0x2Au);
    }

    v22 = [(MapsAppTest *)self mainVKMapView];
    [v22 _mapstest_jumpToCoords:1 pitch:v7 yaw:v9 altitudeIsRegionSize:{v11, v14, v17}];

    [(MapsAppTest *)self addFullyDrawnCallback:v4];
  }
}

- (BOOL)runTest
{
  v3 = sub_100798614();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[self.testCoordinator pptTestResetForLaunchURL]", buf, 2u);
  }

  v4 = [(MapsAppTest *)self testCoordinator];
  [v4 pptTestResetForLaunchURL];

  v5 = sub_100798614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[self jumpToOptionsCoord:^{...}]", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100787F14;
  v7[3] = &unk_101661B18;
  v7[4] = self;
  [(MapsAppTestLookAround *)self jumpToOptionsCoord:v7];
  return 1;
}

- (void)cleanup:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100798614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[self.testCoordinator pptTestExitLookAround]", buf, 2u);
  }

  v6 = [(MapsAppTest *)self testCoordinator];
  [v6 pptTestExitLookAround];

  v7 = sub_100798614();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[self popToRootTrayWithCompletion]", buf, 2u);
  }

  [(MapsAppTest *)self popToRootTrayWithCompletion:0];
  v8 = sub_100798614();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[super cleanup:testCompleted]", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = MapsAppTestLookAround;
  [(MapsAppTest *)&v9 cleanup:v3];
}

@end