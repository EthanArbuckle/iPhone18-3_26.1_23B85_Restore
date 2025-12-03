@interface MapsAppTestLookAround
- (BOOL)runTest;
- (void)addObserverWithSearchString:(id)string forDidShowPreviewBlock:(id)block;
- (void)cleanup:(BOOL)cleanup;
- (void)displayPlacecardPhotosWithSearchString:(id)string resultShortAddress:(id)address didShowPreviewBlock:(id)block;
- (void)enterLookAroundWithLookAroundView:(id)view mapItem:(id)item showsFullScreen:(BOOL)screen completionBlock:(id)block;
- (void)expandLookAroundToFullscreen:(BOOL)fullscreen withLookAroundView:(id)view mapItem:(id)item completionBlock:(id)block;
- (void)jumpToOptionsCoord:(id)coord;
- (void)onLookAroundView:(id)view didBecomeAdequatelyDrawnCallback:(id)callback;
- (void)onLookAroundView:(id)view didCompletionPostTransitionAnimation:(id)animation;
- (void)panLookAroundView:(id)view completion:(id)completion;
- (void)runBrowseTestWithContinuationBlock:(id)block;
- (void)runEnterExploreNavExitTest;
- (void)runEnterTestWithContinuationBlock:(id)block;
- (void)runExploreTest;
- (void)runFullScreenNavTestWithMapItem:(id)item;
- (void)runNavTest;
- (void)runNavTestWithMapItem:(id)item showsFullScreen:(BOOL)screen;
- (void)runZoomTest;
- (void)selectSearchResult:(id)result;
- (void)storefrontWillMoveBlock:(id)block didMoveBlock:(id)moveBlock;
- (void)tap:(CGPoint)tap countdown:(int)countdown mapView:(id)view totalTimeInMS:(double)s firstTap:(BOOL)firstTap;
- (void)zoom:(CGPoint)zoom countdown:(int)countdown oldFactor:(double)factor mapView:(id)view;
@end

@implementation MapsAppTestLookAround

- (void)zoom:(CGPoint)zoom countdown:(int)countdown oldFactor:(double)factor mapView:(id)view
{
  y = zoom.y;
  x = zoom.x;
  viewCopy = view;
  v12 = viewCopy;
  if (countdown <= 0)
  {
    v16 = dispatch_time(0, 50000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100784358;
    block[3] = &unk_10164C698;
    v27 = x;
    v28 = y;
    v25 = v12;
    selfCopy = self;
    v17 = v12;
    dispatch_after(v16, &_dispatch_main_q, block);
    v15 = v25;
  }

  else
  {
    [viewCopy updatePinchWithFocusPoint:x oldFactor:y newFactor:{factor, factor + 0.1}];
    v13 = dispatch_time(0, 50000000);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1007845EC;
    v18[3] = &unk_101628DA8;
    v20 = x;
    v21 = y;
    countdownCopy = countdown;
    v22 = factor + 0.1;
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
  mainMKMapView = [(MapsAppTest *)self mainMKMapView];
  v8 = [MKPlacemark alloc];
  [mainMKMapView centerCoordinate];
  v9 = [v8 initWithCoordinate:?];
  v10 = [[MKMapItem alloc] initWithPlacemark:v9];
  v11 = [MKLookAroundEntryPoint entryPointWithMapItem:v10];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestEnterLookAroundWithEntryPoint:v11 lookAroundView:0 showsFullScreen:1];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100784820;
  v13[3] = &unk_101650D20;
  v13[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"LookAroundTrayContaineeViewControllerDidAppear" object:0 usingBlock:v13];
}

- (void)tap:(CGPoint)tap countdown:(int)countdown mapView:(id)view totalTimeInMS:(double)s firstTap:(BOOL)firstTap
{
  firstTapCopy = firstTap;
  y = tap.y;
  x = tap.x;
  viewCopy = view;
  v14 = +[NSDate date];
  v15 = v14;
  if (countdown <= 0)
  {
    v42 = v14;
    v19 = sub_100798614();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[self finishedSubTest:@navLookAround]", buf, 2u);
    }

    options = [(MapsAppTest *)self options];
    _maptest_lookAroundNavigationTaps = [options _maptest_lookAroundNavigationTaps];

    if (_maptest_lookAroundNavigationTaps >= 1)
    {
      v22 = _maptest_lookAroundNavigationTaps;
    }

    else
    {
      v22 = 5;
    }

    v41 = v22;
    savedDebugDrawContinuously = self->_savedDebugDrawContinuously;
    v24 = +[VKDebugSettings sharedSettingsExt];
    [v24 setLayoutContinuously:savedDebugDrawContinuously];

    mainMKMapView = [(MapsAppTest *)self mainMKMapView];
    _mapLayer = [mainMKMapView _mapLayer];
    [_mapLayer setHidden:0];

    [(MapsAppTest *)self finishedSubTest:@"navLookAround"];
    [viewCopy disableTestStatistics];
    v43 = viewCopy;
    testStatistics = [viewCopy testStatistics];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v27 = [testStatistics countByEnumeratingWithState:&v52 objects:v57 count:16];
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
            objc_enumerationMutation(testStatistics);
          }

          v31 = *(*(&v52 + 1) + 8 * i);
          v32 = [testStatistics objectForKey:v31];
          results = [(MapsAppTest *)self results];
          v34 = [NSString stringWithFormat:@"sub:loadingScene:%@", v31];
          [results setObject:v32 forKey:v34];
        }

        v28 = [testStatistics countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v28);
    }

    v35 = [NSNumber numberWithDouble:s / v41];
    results2 = [(MapsAppTest *)self results];
    v37 = [NSString stringWithFormat:@"sub:navLookAround:average animation time"];
    [results2 setObject:v35 forKey:v37];

    viewCopy = v43;
    [v43 resetTestStatistics];
    tileStatistics = [v43 tileStatistics];
    if (tileStatistics)
    {
      results3 = [(MapsAppTest *)self results];
      [results3 addEntriesFromDictionary:tileStatistics];
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
    if (firstTapCopy)
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
    v45 = viewCopy;
    v48 = x;
    v49 = y;
    v46 = v15;
    selfCopy = self;
    countdownCopy = countdown;
    sCopy = s;
    dispatch_after(v17, &_dispatch_main_q, block);

    testStatistics = v45;
  }
}

- (void)panLookAroundView:(id)view completion:(id)completion
{
  completionCopy = completion;
  viewCopy = view;
  options = [(MapsAppTest *)self options];
  [viewCopy setPresentationYaw:1 animated:{objc_msgSend(options, "_maptest_lookAroundNavigationAmountToTurnInDegrees")}];

  v9 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10078515C;
  block[3] = &unk_101661760;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_after(v9, &_dispatch_main_q, block);
}

- (void)runNavTestWithMapItem:(id)item showsFullScreen:(BOOL)screen
{
  screenCopy = screen;
  itemCopy = item;
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
  v11 = [MKLookAroundEntryPoint entryPointWithMapItem:itemCopy];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestEnterLookAroundWithEntryPoint:v11 lookAroundView:0 showsFullScreen:screenCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100785350;
  v14[3] = &unk_10162A168;
  v14[4] = self;
  v15 = itemCopy;
  v13 = itemCopy;
  [PPTNotificationCenter addOnceObserverForName:@"LookAroundTrayContaineeViewControllerDidAppear" object:0 usingBlock:v14];
}

- (void)runFullScreenNavTestWithMapItem:(id)item
{
  itemCopy = item;
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
  v9 = [MKLookAroundEntryPoint entryPointWithMapItem:itemCopy];

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestEnterLookAroundWithEntryPoint:v9 lookAroundView:0 showsFullScreen:1];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100785B1C;
  v11[3] = &unk_101650D20;
  v11[4] = self;
  [PPTNotificationCenter addOnceObserverForName:@"PPTLookAroundContainerViewControllerDidTransitionToFullscreen" object:0 usingBlock:v11];
}

- (void)runNavTest
{
  mainMKMapView = [(MapsAppTest *)self mainMKMapView];
  v3 = [MKPlacemark alloc];
  [mainMKMapView centerCoordinate];
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

- (void)runEnterTestWithContinuationBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10078621C;
  v4[3] = &unk_101628C90;
  selfCopy = self;
  blockCopy = block;
  v3 = blockCopy;
  [(MapsAppTestLookAround *)selfCopy runBrowseTestWithContinuationBlock:v4];
}

- (void)runBrowseTestWithContinuationBlock:(id)block
{
  blockCopy = block;
  v5 = sub_100798614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[self startedTest]", buf, 2u);
  }

  [(MapsAppTest *)self startedTest];
  options = [(MapsAppTest *)self options];
  v7 = [options objectForKeyedSubscript:@"searchString"];
  options2 = [(MapsAppTest *)self options];
  v9 = [options2 objectForKeyedSubscript:@"resultShortAddress"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100786598;
  v11[3] = &unk_101628C90;
  v11[4] = self;
  v12 = blockCopy;
  v10 = blockCopy;
  [(MapsAppTestLookAround *)self displayPlacecardPhotosWithSearchString:v7 resultShortAddress:v9 didShowPreviewBlock:v11];
}

- (void)expandLookAroundToFullscreen:(BOOL)fullscreen withLookAroundView:(id)view mapItem:(id)item completionBlock:(id)block
{
  fullscreenCopy = fullscreen;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100786BC4;
  v15[3] = &unk_101638720;
  v15[4] = self;
  viewCopy = view;
  blockCopy = block;
  v10 = blockCopy;
  v11 = viewCopy;
  itemCopy = item;
  [PPTNotificationCenter addOnceObserverForName:@"PPTLookAroundContainerViewControllerDidTransitionToFullscreen" object:0 usingBlock:v15];
  v13 = [MKLookAroundEntryPoint entryPointWithMapItem:itemCopy];

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestEnterLookAroundWithEntryPoint:v13 lookAroundView:v11 showsFullScreen:fullscreenCopy];
}

- (void)enterLookAroundWithLookAroundView:(id)view mapItem:(id)item showsFullScreen:(BOOL)screen completionBlock:(id)block
{
  screenCopy = screen;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100786DEC;
  v15[3] = &unk_101638720;
  v15[4] = self;
  viewCopy = view;
  blockCopy = block;
  v10 = blockCopy;
  v11 = viewCopy;
  itemCopy = item;
  [PPTNotificationCenter addOnceObserverForName:@"LookAroundTrayContaineeViewControllerDidAppear" object:0 usingBlock:v15];
  v13 = [MKLookAroundEntryPoint entryPointWithMapItem:itemCopy];

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestEnterLookAroundWithEntryPoint:v13 lookAroundView:v11 showsFullScreen:screenCopy];
}

- (void)storefrontWillMoveBlock:(id)block didMoveBlock:(id)moveBlock
{
  blockCopy = block;
  moveBlockCopy = moveBlock;
  v7 = MKLookAroundViewWillMoveToStorefrontNotification;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100787060;
  v10[3] = &unk_101628C68;
  v11 = blockCopy;
  v12 = moveBlockCopy;
  v8 = moveBlockCopy;
  v9 = blockCopy;
  [PPTNotificationCenter addOnceObserverForName:v7 object:0 usingBlock:v10];
}

- (void)selectSearchResult:(id)result
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100787290;
  v4[3] = &unk_10162A168;
  v4[4] = self;
  resultCopy = result;
  v3 = resultCopy;
  [PPTNotificationCenter addOnceObserverForName:@"MapsPinsDroppedForSearchResultsNotification" object:0 usingBlock:v4];
}

- (void)displayPlacecardPhotosWithSearchString:(id)string resultShortAddress:(id)address didShowPreviewBlock:(id)block
{
  stringCopy = string;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100787450;
  v17 = &unk_101628C40;
  selfCopy = self;
  addressCopy = address;
  v20 = stringCopy;
  blockCopy = block;
  v9 = blockCopy;
  v10 = stringCopy;
  v11 = addressCopy;
  [PPTNotificationCenter addOnceObserverForName:@"SearchSessionDidChangeSearchResultsNotification" object:0 usingBlock:&v14];
  v12 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v12 setSearchString:v10, v14, v15, v16, v17, selfCopy];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestSearchForFieldItem:v12];
}

- (void)addObserverWithSearchString:(id)string forDidShowPreviewBlock:(id)block
{
  stringCopy = string;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100787758;
  v9[3] = &unk_101638720;
  selfCopy = self;
  blockCopy = block;
  v10 = stringCopy;
  v7 = blockCopy;
  v8 = stringCopy;
  [PPTNotificationCenter addOnceObserverForName:@"PPTLookAroundChromeOverlayDidShowLookAroundPreviewNotificationName" object:0 usingBlock:v9];
}

- (void)onLookAroundView:(id)view didCompletionPostTransitionAnimation:(id)animation
{
  animationCopy = animation;
  v5 = dispatch_time(0, 200000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007879CC;
  block[3] = &unk_101661760;
  v8 = animationCopy;
  v6 = animationCopy;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)onLookAroundView:(id)view didBecomeAdequatelyDrawnCallback:(id)callback
{
  viewCopy = view;
  callbackCopy = callback;
  if ([viewCopy adequatelyDrawn])
  {
    v7 = sub_100798614();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138412546;
      v14 = v9;
      v15 = 2048;
      v16 = viewCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "<%@:%p> is already adequately drawn", buf, 0x16u);
    }

    if (callbackCopy)
    {
      callbackCopy[2](callbackCopy);
    }
  }

  else
  {
    v10 = MKLookAroundViewDidBecomeAdequatelyDrawnNotification;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100787B6C;
    v11[3] = &unk_10164FAC0;
    v12 = callbackCopy;
    [PPTNotificationCenter addOnceObserverForName:v10 object:viewCopy usingBlock:v11];
  }
}

- (void)jumpToOptionsCoord:(id)coord
{
  if (coord)
  {
    coordCopy = coord;
    [(MapsAppTest *)self setupForVKTest];
    options = [(MapsAppTest *)self options];
    [options _mapstest_jumpPoint];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    options2 = [(MapsAppTest *)self options];
    [options2 _mapstest_pitch];
    v14 = v13;

    options3 = [(MapsAppTest *)self options];
    [options3 _mapstest_yaw];
    v17 = v16;

    options4 = [(MapsAppTest *)self options];
    _mapstest_mapType = [options4 _mapstest_mapType];

    v20 = sub_100798614();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v23 = 134217984;
      v24 = *&_mapstest_mapType;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[self switchToMapType:%lu]", &v23, 0xCu);
    }

    [(MapsAppTest *)self switchToMapType:_mapstest_mapType];
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

    mainVKMapView = [(MapsAppTest *)self mainVKMapView];
    [mainVKMapView _mapstest_jumpToCoords:1 pitch:v7 yaw:v9 altitudeIsRegionSize:{v11, v14, v17}];

    [(MapsAppTest *)self addFullyDrawnCallback:coordCopy];
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

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestResetForLaunchURL];

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

- (void)cleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  v5 = sub_100798614();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[self.testCoordinator pptTestExitLookAround]", buf, 2u);
  }

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestExitLookAround];

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
  [(MapsAppTest *)&v9 cleanup:cleanupCopy];
}

@end