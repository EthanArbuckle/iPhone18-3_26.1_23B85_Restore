@interface MapsAppTestRoute
- (BOOL)runTest;
- (void)_requestRouteWithResolvedDestination:(id)a3;
- (void)_showDirectionSearchView:(id)a3;
- (void)didDisplayRoutes:(id)a3;
- (void)didEndGEOPPTTest_PlaceDataRequest_GEOD:(id)a3;
- (void)didEndGEOPPTTest_PlaceRequest:(id)a3;
- (void)didEndGEOPPTTest_PlaceRequest_RequestPreparing:(id)a3;
- (void)didEndGEOPPTTest_PlaceRequest_ResponseHandling:(id)a3;
- (void)didEndGEOPPTTest_RouteManager_DirectionsRequest:(id)a3;
- (void)didEndMapsPPTTest_ComposeWaypoint:(id)a3;
- (void)didEndMapsPPTTest_Route_SetDirectionsPlan:(id)a3;
- (void)didEndMapsPPTTest_Route_SetDirectionsPlan_DirectionsSearch:(id)a3;
- (void)didEndMapsPPTTest_Route_SetDirectionsPlan_DirectionsStarted:(id)a3;
- (void)didEndMapsPPTTest_Route_SetDirectionsPlan_RoutePicking:(id)a3;
- (void)didEndMapsPPTTest_Route_SetDirectionsPlan_RoutePicking_LoadingFromWaypoints:(id)a3;
- (void)didResolveWaypointsForRouting:(id)a3;
- (void)registerGEOSubtestsForRouting;
- (void)willBeginGEOPPTTest_PlaceDataRequest_GEOD:(id)a3;
- (void)willBeginGEOPPTTest_PlaceRequest:(id)a3;
- (void)willBeginGEOPPTTest_PlaceRequest_RequestPreparing:(id)a3;
- (void)willBeginGEOPPTTest_PlaceRequest_ResponseHandling:(id)a3;
- (void)willBeginGEOPPTTest_RouteManager_DirectionsRequest:(id)a3;
- (void)willBeginMapsPPTTest_ComposeWaypoint:(id)a3;
- (void)willBeginMapsPPTTest_Route_SetDirectionsPlan:(id)a3;
- (void)willBeginMapsPPTTest_Route_SetDirectionsPlan_DirectionsSearch:(id)a3;
- (void)willBeginMapsPPTTest_Route_SetDirectionsPlan_DirectionsStarted:(id)a3;
- (void)willBeginMapsPPTTest_Route_SetDirectionsPlan_RoutePicking:(id)a3;
- (void)willBeginMapsPPTTest_Route_SetDirectionsPlan_RoutePicking_LoadingFromWaypoints:(id)a3;
- (void)willResolveWaypointsForRouting:(id)a3;
@end

@implementation MapsAppTestRoute

- (void)didDisplayRoutes:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"MapsRoutePlanningShowingRoutesNotification" object:0];

  v5 = dispatch_time(0, 2650000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100586284;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_RouteManager_DirectionsRequest:(id)a3
{
  v23 = a3;
  v4 = [v23 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v23;
  if (isKindOfClass)
  {
    v7 = [v23 object];
    if ([v7 count])
    {
      v8 = [v7 firstObject];
      v9 = [v8 transportType] - 1;
      if (v9 > 5)
      {
        v10 = 1;
      }

      else
      {
        v10 = qword_101216278[v9];
      }

      if (v10 == [(MapsAppTestRoute *)self transportType])
      {
        v11 = [v8 _maps_traceRecordingData];
        v12 = [v11 initialDirectionsRequest];
        v13 = [v11 initialDirectionsResponse];
        v14 = [v12 data];
        v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 length]);
        v16 = [(MapsAppTest *)self results];
        [v16 setObject:v15 forKeyedSubscript:@"extras:routeRequestSize:bytes"];

        v17 = [v13 data];
        v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 length]);
        v19 = [(MapsAppTest *)self results];
        [v19 setObject:v18 forKeyedSubscript:@"extras:routeResponseSize:bytes"];

        v20 = [v13 suggestedRoutes];
        v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 count]);
        v22 = [(MapsAppTest *)self results];
        [v22 setObject:v21 forKeyedSubscript:@"extras:routeResponseSuggestedNumRoutes:count"];

        [(MapsAppTest *)self finishedSubTest:@"routeRequestWaiting"];
        [(MapsAppTest *)self startedSubTest:@"displayRoutes"];
      }
    }

    v6 = v23;
  }
}

- (void)willBeginGEOPPTTest_RouteManager_DirectionsRequest:(id)a3
{
  [(MapsAppTest *)self finishedSubTest:@"routeRequestPrep"];
  [(MapsAppTest *)self startedSubTest:@"routeRequestWaiting"];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"didDisplayRoutes:" name:@"MapsRoutePlanningShowingRoutesNotification" object:0];
}

- (void)didEndMapsPPTTest_ComposeWaypoint:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100586620;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMapsPPTTest_ComposeWaypoint:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005866A4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMapsPPTTest_Route_SetDirectionsPlan_DirectionsSearch:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100586730;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMapsPPTTest_Route_SetDirectionsPlan_DirectionsSearch:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005867B4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMapsPPTTest_Route_SetDirectionsPlan_RoutePicking_LoadingFromWaypoints:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100586840;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMapsPPTTest_Route_SetDirectionsPlan_RoutePicking_LoadingFromWaypoints:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005868C4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMapsPPTTest_Route_SetDirectionsPlan_RoutePicking:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100586950;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMapsPPTTest_Route_SetDirectionsPlan_RoutePicking:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005869D4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMapsPPTTest_Route_SetDirectionsPlan_DirectionsStarted:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100586A60;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMapsPPTTest_Route_SetDirectionsPlan_DirectionsStarted:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100586AE4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndMapsPPTTest_Route_SetDirectionsPlan:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100586B70;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginMapsPPTTest_Route_SetDirectionsPlan:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100586BF4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_PlaceDataRequest_GEOD:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100586CA4;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)willBeginGEOPPTTest_PlaceDataRequest_GEOD:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100586DCC;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)didEndGEOPPTTest_PlaceRequest_ResponseHandling:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100586EFC;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)willBeginGEOPPTTest_PlaceRequest_ResponseHandling:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100587024;
  v4[3] = &unk_101661A90;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)didEndGEOPPTTest_PlaceRequest_RequestPreparing:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100587130;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_PlaceRequest_RequestPreparing:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005871B4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didEndGEOPPTTest_PlaceRequest:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100587240;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)willBeginGEOPPTTest_PlaceRequest:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005872C4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)didResolveWaypointsForRouting:(id)a3
{
  numWaypointsLoaded = self->_numWaypointsLoaded;
  self->_numWaypointsLoaded = numWaypointsLoaded + 1;
  if (numWaypointsLoaded)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self name:@"MapsWaypointResolutionDidLoadOriginNotification" object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self name:@"MapsWaypointResolutionDidLoadDestinationNotification" object:0];

    [(MapsAppTest *)self finishedSubTest:@"waypointResolution2"];

    [(MapsAppTest *)self startedSubTest:@"routeRequestPrep"];
  }

  else
  {

    [(MapsAppTest *)self finishedSubTest:@"waypointResolution1"];
  }
}

- (void)willResolveWaypointsForRouting:(id)a3
{
  self->_numWaypointsLoaded = 0;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"MapsWaypointResolutionDidBeginNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"didResolveWaypointsForRouting:" name:@"MapsWaypointResolutionDidLoadOriginNotification" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"didResolveWaypointsForRouting:" name:@"MapsWaypointResolutionDidLoadDestinationNotification" object:0];

  [(MapsAppTest *)self finishedSubTest:@"directionsSetup"];
  [(MapsAppTest *)self startedSubTest:@"waypointResolution1"];

  [(MapsAppTest *)self startedSubTest:@"waypointResolution2"];
}

- (void)_showDirectionSearchView:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = [(MapsAppTest *)self options];
  v6 = [v5 objectForKeyedSubscript:@"transportType"];

  v7 = [(MapsAppTest *)self options];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 _mapstest_transportType];
    v10 = 1;
    if (v9 > 3)
    {
      if (v9 == 4)
      {
        v14 = 0;
        goto LABEL_19;
      }

      if (v9 != 5)
      {
        v12 = v9 == 6;
        v11 = 4;
LABEL_14:
        if (v12)
        {
          v14 = v11;
        }

        else
        {
          v14 = v10;
        }

        goto LABEL_19;
      }
    }

    else if (v9 != 1)
    {
      v11 = 2;
      if (v9 == 3)
      {
        v10 = 5;
      }

      v12 = v9 == 2;
      goto LABEL_14;
    }

    v14 = 3;
    goto LABEL_19;
  }

  v13 = [v7 objectForKeyedSubscript:@"mapType"];

  if ([v13 isEqualToString:@"transit"])
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v8 = v13;
LABEL_19:

  v15 = [(MapsAppTest *)self options];
  v16 = [v15 objectForKeyedSubscript:@"startAddr"];

  v17 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v17 setSearchString:v16];
  v18 = [(MapsAppTest *)self options];
  v19 = [v18 objectForKeyedSubscript:@"endAddr"];

  v20 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v20 setSearchString:v19];
  v21 = [DirectionItem alloc];
  v25[0] = v17;
  v25[1] = v20;
  v22 = [NSArray arrayWithObjects:v25 count:2];
  v23 = [(DirectionItem *)v21 initWithItems:v22 transportType:v14];

  [v4 addObserver:self selector:"willResolveWaypointsForRouting:" name:@"MapsWaypointResolutionDidBeginNotification" object:0];
  v24 = [(MapsAppTest *)self testCoordinator];
  [v24 pptTestDoDirectionItem:v23];
}

- (void)registerGEOSubtestsForRouting
{
  [(MapsAppTest *)self registerGEOManifestSubtests];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"willBeginMapsPPTTest_Route_SetDirectionsPlan:" name:@"MapsPPTTest_Route_SetDirectionsPlanBEGIN" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"didEndMapsPPTTest_Route_SetDirectionsPlan:" name:@"MapsPPTTest_Route_SetDirectionsPlanEND" object:0];

  v5 = +[GEONotificationPreferenceManager sharedManager];
  [v5 setEnabled:1 forSubTestWithName:@"MapsPPTTest_Route_SetDirectionsPlan"];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"willBeginMapsPPTTest_Route_SetDirectionsPlan_DirectionsStarted:" name:@"MapsPPTTest_Route_SetDirectionsPlan_DirectionsStartedBEGIN" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"didEndMapsPPTTest_Route_SetDirectionsPlan_DirectionsStarted:" name:@"MapsPPTTest_Route_SetDirectionsPlan_DirectionsStartedEND" object:0];

  v8 = +[GEONotificationPreferenceManager sharedManager];
  [v8 setEnabled:1 forSubTestWithName:@"MapsPPTTest_Route_SetDirectionsPlan_DirectionsStarted"];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"willBeginMapsPPTTest_Route_SetDirectionsPlan_RoutePicking:" name:@"MapsPPTTest_Route_SetDirectionsPlan_RoutePickingBEGIN" object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"didEndMapsPPTTest_Route_SetDirectionsPlan_RoutePicking:" name:@"MapsPPTTest_Route_SetDirectionsPlan_RoutePickingEND" object:0];

  v11 = +[GEONotificationPreferenceManager sharedManager];
  [v11 setEnabled:1 forSubTestWithName:@"MapsPPTTest_Route_SetDirectionsPlan_RoutePicking"];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"willBeginMapsPPTTest_Route_SetDirectionsPlan_RoutePicking_LoadingFromWaypoints:" name:@"MapsPPTTest_Route_SetDirectionsPlan_RoutePicking_LoadingFromWaypointsBEGIN" object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"didEndMapsPPTTest_Route_SetDirectionsPlan_RoutePicking_LoadingFromWaypoints:" name:@"MapsPPTTest_Route_SetDirectionsPlan_RoutePicking_LoadingFromWaypointsEND" object:0];

  v14 = +[GEONotificationPreferenceManager sharedManager];
  [v14 setEnabled:1 forSubTestWithName:@"MapsPPTTest_Route_SetDirectionsPlan_RoutePicking_LoadingFromWaypoints"];

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 addObserver:self selector:"willBeginMapsPPTTest_Route_SetDirectionsPlan_DirectionsSearch:" name:@"MapsPPTTest_Route_SetDirectionsPlan_DirectionsSearchBEGIN" object:0];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"didEndMapsPPTTest_Route_SetDirectionsPlan_DirectionsSearch:" name:@"MapsPPTTest_Route_SetDirectionsPlan_DirectionsSearchEND" object:0];

  v17 = +[GEONotificationPreferenceManager sharedManager];
  [v17 setEnabled:1 forSubTestWithName:@"MapsPPTTest_Route_SetDirectionsPlan_DirectionsSearch"];

  v18 = +[NSNotificationCenter defaultCenter];
  [v18 addObserver:self selector:"willBeginMapsPPTTest_ComposeWaypoint:" name:@"MapsPPTTest_ComposeWaypointBEGIN" object:0];

  v19 = +[NSNotificationCenter defaultCenter];
  [v19 addObserver:self selector:"didEndMapsPPTTest_ComposeWaypoint:" name:@"MapsPPTTest_ComposeWaypointEND" object:0];

  v20 = +[GEONotificationPreferenceManager sharedManager];
  [v20 setEnabled:1 forSubTestWithName:@"MapsPPTTest_ComposeWaypoint"];

  v21 = +[NSNotificationCenter defaultCenter];
  [v21 addObserver:self selector:"willBeginGEOPPTTest_PlaceRequest:" name:@"GEOPPTTest_PlaceRequestBEGIN" object:0];

  v22 = +[NSNotificationCenter defaultCenter];
  [v22 addObserver:self selector:"didEndGEOPPTTest_PlaceRequest:" name:@"GEOPPTTest_PlaceRequestEND" object:0];

  v23 = +[GEONotificationPreferenceManager sharedManager];
  [v23 setEnabled:1 forSubTestWithName:@"GEOPPTTest_PlaceRequest"];

  v24 = +[NSNotificationCenter defaultCenter];
  [v24 addObserver:self selector:"willBeginGEOPPTTest_PlaceRequest_RequestPreparing:" name:@"GEOPPTTest_PlaceRequest_RequestPreparingBEGIN" object:0];

  v25 = +[NSNotificationCenter defaultCenter];
  [v25 addObserver:self selector:"didEndGEOPPTTest_PlaceRequest_RequestPreparing:" name:@"GEOPPTTest_PlaceRequest_RequestPreparingEND" object:0];

  v26 = +[GEONotificationPreferenceManager sharedManager];
  [v26 setEnabled:1 forSubTestWithName:@"GEOPPTTest_PlaceRequest_RequestPreparing"];

  v27 = +[NSNotificationCenter defaultCenter];
  [v27 addObserver:self selector:"willBeginGEOPPTTest_PlaceRequest_ResponseHandling:" name:@"GEOPPTTest_PlaceRequest_ResponseHandlingBEGIN" object:0];

  v28 = +[NSNotificationCenter defaultCenter];
  [v28 addObserver:self selector:"didEndGEOPPTTest_PlaceRequest_ResponseHandling:" name:@"GEOPPTTest_PlaceRequest_ResponseHandlingEND" object:0];

  v29 = +[GEONotificationPreferenceManager sharedManager];
  [v29 setEnabled:1 forSubTestWithName:@"GEOPPTTest_PlaceRequest_ResponseHandling"];

  v30 = +[NSNotificationCenter defaultCenter];
  [v30 addObserver:self selector:"willBeginGEOPPTTest_PlaceDataRequest_GEOD:" name:@"GEOPPTTest_PlaceDataRequest_GEODBEGIN" object:0];

  v31 = +[NSNotificationCenter defaultCenter];
  [v31 addObserver:self selector:"didEndGEOPPTTest_PlaceDataRequest_GEOD:" name:@"GEOPPTTest_PlaceDataRequest_GEODEND" object:0];

  v32 = +[GEONotificationPreferenceManager sharedManager];
  [v32 setEnabled:1 forSubTestWithName:@"GEOPPTTest_PlaceDataRequest_GEOD"];

  v33 = +[NSNotificationCenter defaultCenter];
  [v33 addObserver:self selector:"willBeginGEOPPTTest_RouteManager_DirectionsRequest:" name:@"GEOPPTTest_RouteManager_DirectionsRequestBEGIN" object:0];

  v34 = +[NSNotificationCenter defaultCenter];
  [v34 addObserver:self selector:"didEndGEOPPTTest_RouteManager_DirectionsRequest:" name:@"GEOPPTTest_RouteManager_DirectionsRequestEND" object:0];

  v35 = +[GEONotificationPreferenceManager sharedManager];
  [v35 setEnabled:1 forSubTestWithName:@"GEOPPTTest_RouteManager_DirectionsRequest"];
}

- (void)_requestRouteWithResolvedDestination:(id)a3
{
  v4 = a3;
  v5 = [(MapsAppTest *)self options];
  [(MapsAppTestRoute *)self registerGEOSubtestsForRouting];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"willResolveWaypointsForRouting:" name:@"MapsWaypointResolutionDidBeginNotification" object:0];

  v7 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100587E68;
  block[3] = &unk_101661A40;
  v11 = v5;
  v12 = v4;
  v13 = self;
  v8 = v4;
  v9 = v5;
  dispatch_after(v7, &_dispatch_main_q, block);
}

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self options];
  v4 = [v3 _mapstest_waypointStrings];
  if ([(MapsAppTest *)self isRunningOnCarPlay])
  {
    [(MapsAppTest *)self startedTest];
    [(MapsAppTest *)self startedSubTest:@"loadPlaceCard"];
    v5 = 1;
  }

  else
  {
    v6 = [(MapsAppTest *)self testCoordinator];
    [v6 pptTestResetForLaunchURL];

    -[MapsAppTest switchToMapType:](self, "switchToMapType:", [v3 _mapstest_mapType]);
    v7 = [(MapsAppTest *)self options];
    v8 = [v7 objectForKeyedSubscript:@"mapType"];

    if ([v8 isEqualToString:@"transit"])
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }
  }

  [(MapsAppTestRoute *)self setTransportType:v5];
  v9 = [v3 _mapstest_originString];
  v10 = [(MapsAppTest *)self isRunningOnCarPlay];
  v11 = [v3 _mapstest_destinationString];
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v3 objectForKeyedSubscript:@"endAddr"];
    }

    v14 = v13;

    v12 = v14;
  }

  if (v9 | v12)
  {
LABEL_15:
    if (v4)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if ([v4 count] == 2)
  {
    v9 = [v4 objectAtIndexedSubscript:0];
    v12 = [v4 objectAtIndexedSubscript:1];
    goto LABEL_15;
  }

  v9 = 0;
  v12 = 0;
  if (v4)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v9 && !v12)
  {
    v20 = NSInvalidArgumentException;
    v21 = @"No waypoints provided for route test";
    goto LABEL_36;
  }

LABEL_18:
  if (v4 && [v4 count] <= 1)
  {
    v20 = NSInvalidArgumentException;
    v21 = @"Not enough waypoints provided for route test";
LABEL_36:
    v22 = [NSException exceptionWithName:v20 reason:v21 userInfo:0];
    objc_exception_throw(v22);
  }

  if ((([v9 _mapstest_isCurrentLocationString] & 1) != 0 || -[MapsAppTest isRunningOnCarPlay](self, "isRunningOnCarPlay")) && objc_msgSend(v4, "count") <= 2)
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3032000000;
    v30[3] = sub_100588470;
    v30[4] = sub_100588480;
    v31 = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100588488;
    v29[3] = &unk_1016318A8;
    v29[4] = self;
    v29[5] = v30;
    [PPTNotificationCenter addOnceObserverForName:@"SearchSessionDidChangeSearchResultsNotification" object:0 usingBlock:v29];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100588534;
    v28[3] = &unk_1016318A8;
    v28[4] = self;
    v28[5] = v30;
    [PPTNotificationCenter addOnceObserverForName:@"MapsPinsDroppedForSearchResultsNotification" object:0 usingBlock:v28];
    if ([(MapsAppTest *)self isRunningOnCarPlay])
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100588604;
      v27[3] = &unk_101650D20;
      v27[4] = self;
      [PPTNotificationCenter addOnceObserverForName:@"CarPlaceCardCardViewControllerDidAppearNotification" object:0 usingBlock:v27];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100588650;
      v26[3] = &unk_101650D20;
      v26[4] = self;
      [PPTNotificationCenter addOnceObserverForName:@"CarPlaceCardCardViewControllerDidLoadRouteNotification" object:0 usingBlock:v26];
    }

    else
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100588694;
      v25[3] = &unk_1016318A8;
      v25[4] = self;
      v25[5] = v30;
      [PPTNotificationCenter addOnceObserverForName:MKPlaceViewControllerDidShowNotification object:0 usingBlock:v25];
    }

    v15 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v15 setSearchString:v12];
    if ([(MapsAppTest *)self isRunningOnCarPlay])
    {
      v16 = [(MapsAppTest *)self testCoordinator];
      [v16 pptTestEnterSearchMode];

      v17 = dispatch_time(0, 2000000000);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100588794;
      v23[3] = &unk_101661A90;
      v23[4] = self;
      v24 = v15;
      dispatch_after(v17, &_dispatch_main_q, v23);
    }

    else
    {
      v18 = [(MapsAppTest *)self testCoordinator];
      [v18 pptTestSearchForFieldItem:v15];
    }

    _Block_object_dispose(v30, 8);
  }

  else
  {
    [(MapsAppTestRoute *)self _requestRouteWithResolvedDestination:0];
  }

  return 1;
}

@end