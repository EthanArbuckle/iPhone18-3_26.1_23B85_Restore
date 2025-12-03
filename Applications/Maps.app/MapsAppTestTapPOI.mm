@interface MapsAppTestTapPOI
- ($1AB5FA073B851C12C2339EC22442E995)vkJumpPointCoordinate;
- (BOOL)runTest;
- (MapsAppTestTapPOI)initWithApplication:(id)application testName:(id)name options:(id)options;
- (void)didFinishJumping;
- (void)didShowPlaceCard;
- (void)didShowWebModule;
- (void)scrollPlacecardTest;
- (void)tapPOI;
@end

@implementation MapsAppTestTapPOI

- ($1AB5FA073B851C12C2339EC22442E995)vkJumpPointCoordinate
{
  latitude = self->_vkJumpPointCoordinate.latitude;
  longitude = self->_vkJumpPointCoordinate.longitude;
  altitude = self->_vkJumpPointCoordinate.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (void)scrollPlacecardTest
{
  [(MapsAppTest *)self startedSubTest:@"scrollingPlacecard"];
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_placeViewController);
  view = [WeakRetained view];
  objc_opt_class();
  subviews = [view subviews];
  v6 = [subviews mutableCopy];

  if ([v6 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      subviews2 = [v8 subviews];
      v10 = [subviews2 count] == 0;

      if (!v10)
      {
        subviews3 = [v8 subviews];
        [v6 addObjectsFromArray:subviews3];
      }

      if (++v7 >= [v6 count])
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  RPTContentSizeInDirection();
  v13 = v12;
  RPTGetBoundsForView();
  v18 = [[RPTScrollViewTestParameters alloc] initWithTestName:@"scrollingPlacecard" scrollBounds:1 scrollContentLength:&stru_10164F038 direction:v14 completionHandler:{v15, v16, v17, v13}];
  v25 = v18;
  v19 = [NSArray arrayWithObjects:&v25 count:1];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100C5DB58;
  v21[3] = &unk_101661340;
  objc_copyWeak(&v23, &location);
  v22 = @"scrollingPlacecard";
  v20 = [RPTGroupScrollTestParameters newWithTestName:@"scrollingPlacecard" parameters:v19 completionHandler:v21];

  [RPTTestRunner runTestWithParameters:v20];
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

- (void)didShowWebModule
{
  [(MapsAppTest *)self finishedSubTest:@"loadWebModule"];
  if ([(MapsAppTestTapPOI *)self shouldTestPlaceEnrichment]&& (WeakRetained = objc_loadWeakRetained(&self->_placeViewController), WeakRetained, WeakRetained))
  {
    v4 = dispatch_time(0, 2000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C5DCA0;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
  }

  else
  {

    [(MapsAppTest *)self finishedTest];
  }
}

- (void)didShowPlaceCard
{
  [(MapsAppTest *)self finishedSubTest:@"loadPlaceCard"];
  if ([(MapsAppTestTapPOI *)self waitForWebModule])
  {
    [(MapsAppTest *)self startedSubTest:@"loadWebModule"];
    objc_initWeak(&location, self);
    v3 = MUWebContentViewControllerDidFinishLoadingNotification;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100C5DF5C;
    v5[3] = &unk_10165FBE8;
    objc_copyWeak(&v6, &location);
    [PPTNotificationCenter addOnceObserverForName:v3 object:0 usingBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else if ([(MapsAppTestTapPOI *)self shouldScrollPlacecard])
  {
    if ([(MapsAppTest *)self canUpdateTrayLayout])
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_100C5DF9C;
      v4[3] = &unk_101661B18;
      v4[4] = self;
      [(MapsAppTest *)self updateTrayLayout:2 animated:1 completion:v4];
    }

    else
    {

      [(MapsAppTestTapPOI *)self scrollPlacecardTest];
    }
  }

  else
  {

    [(MapsAppTest *)self finishedTest];
  }
}

- (void)tapPOI
{
  mainMKMapView = [(MapsAppTest *)self mainMKMapView];
  [mainMKMapView _setLabelsDidLayoutCallback:0];

  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  [mainVKMapView labelMarkers];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v4 = v28 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = *v28;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v28 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v27 + 1) + 8 * v7);
      text = [v8 text];
      v10 = [text isEqual:self->_poiLabel];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    mapRegion = v8;

    if (!mapRegion)
    {
      goto LABEL_13;
    }

    [(MapsAppTest *)self startedSubTest:@"tapPOI"];
    objc_initWeak(&location, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100C5E474;
    v25[3] = &unk_101650D20;
    v25[4] = self;
    [PPTNotificationCenter addOnceObserverForName:MUPlaceViewControllerWillUpdatePlaceItemNotification object:0 usingBlock:v25];
    if (self->_shouldTestPlaceEnrichment)
    {
      [(MapsAppTest *)self startedSubTest:@"fetchPlaceEnrichment"];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100C5E4C0;
      v23[3] = &unk_10164F018;
      v23[4] = self;
      v12 = &v24;
      objc_copyWeak(&v24, &location);
      [PPTNotificationCenter addOnceObserverForName:MKPlaceViewControllerDidShowNotification object:0 usingBlock:v23];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100C5E538;
      v21[3] = &unk_10165FBE8;
      objc_copyWeak(&v22, &location);
      [PPTNotificationCenter addOnceObserverForName:MUPlaceEnrichmentSectionControllerDidFetchEnrichmentNotification object:0 usingBlock:v21];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100C5E5A8;
      v19[3] = &unk_10165FBE8;
      objc_copyWeak(&v20, &location);
      [PPTNotificationCenter addOnceObserverForName:MUPlaceEnrichmentSectionControllerDidFinishLoadingNotification object:0 usingBlock:v19];
      objc_destroyWeak(&v20);
      objc_destroyWeak(&v22);
    }

    else
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100C5E5F0;
      v17[3] = &unk_10164F018;
      v17[4] = self;
      v12 = &v18;
      objc_copyWeak(&v18, &location);
      [PPTNotificationCenter addOnceObserverForName:MKPlaceViewControllerDidShowNotification object:0 usingBlock:v17];
    }

    objc_destroyWeak(v12);
    mainMKMapView2 = [(MapsAppTest *)self mainMKMapView];
    [mainMKMapView2 _selectLabelMarker:mapRegion animated:1];

    objc_destroyWeak(&location);
  }

  else
  {
LABEL_9:

LABEL_13:
    poiLabel = self->_poiLabel;
    mapRegion = [mainVKMapView mapRegion];
    v14 = [NSString stringWithFormat:@"Could not find POI named %@ in map region: %@", poiLabel, mapRegion];
    [(MapsAppTest *)self failedTestWithReason:v14];
  }
}

- (void)didFinishJumping
{
  [(MapsAppTest *)self finishedSubTest:@"loadingScene"];
  mainMKMapView = [(MapsAppTest *)self mainMKMapView];
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C5E744;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  [mainMKMapView _setLabelsDidLayoutCallback:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)runTest
{
  [(MapsAppTest *)self startedTest];
  [(MapsAppTest *)self startedSubTest:@"loadingScene"];
  options = [(MapsAppTest *)self options];
  _mapstest_mapType = [options _mapstest_mapType];

  [(MapsAppTest *)self switchToMapType:_mapstest_mapType];
  region = self->_region;
  mainVKMapView = [(MapsAppTest *)self mainVKMapView];
  v7 = mainVKMapView;
  if (region)
  {
    [mainVKMapView setMapRegion:self->_region pitch:0.0 yaw:0.0];
  }

  else
  {
    [mainVKMapView _mapstest_jumpToCoords:1 pitch:self->_vkJumpPointCoordinate.latitude yaw:self->_vkJumpPointCoordinate.longitude altitudeIsRegionSize:{self->_vkJumpPointCoordinate.altitude, self->_pitch, self->_yaw}];
  }

  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C5E8FC;
  v9[3] = &unk_101661B98;
  objc_copyWeak(&v10, &location);
  [(MapsAppTest *)self addFullyDrawnCallback:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  return 1;
}

- (MapsAppTestTapPOI)initWithApplication:(id)application testName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v27.receiver = self;
  v27.super_class = MapsAppTestTapPOI;
  v11 = [(MapsAppTest *)&v27 initWithApplication:application testName:nameCopy options:optionsCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_testName, name);
    v13 = [optionsCopy objectForKeyedSubscript:@"poi_label"];
    poiLabel = v12->_poiLabel;
    v12->_poiLabel = v13;

    v15 = [optionsCopy objectForKeyedSubscript:@"waitForWebModule"];
    v12->_waitForWebModule = [v15 BOOLValue];

    v16 = [optionsCopy objectForKeyedSubscript:@"shouldTestPlaceEnrichment"];
    v12->_shouldTestPlaceEnrichment = [v16 BOOLValue];

    v17 = [optionsCopy objectForKeyedSubscript:@"shouldScrollPlacecard"];
    v12->_shouldScrollPlacecard = [v17 BOOLValue];

    v18 = [optionsCopy objectForKeyedSubscript:@"shouldSkipPanningMap"];
    v12->_shouldSkipPanningMap = [v18 BOOLValue];

    [optionsCopy _mapstest_pitch];
    v12->_pitch = v19;
    [optionsCopy _mapstest_yaw];
    v12->_yaw = v20;
    if ([optionsCopy _mapstest_hasMapRegion])
    {
      _mapstest_mapRegion = [optionsCopy _mapstest_mapRegion];
      region = v12->_region;
      v12->_region = _mapstest_mapRegion;
    }

    else
    {
      [optionsCopy _mapstest_jumpPoint];
      v12->_vkJumpPointCoordinate.latitude = v23;
      v12->_vkJumpPointCoordinate.longitude = v24;
      v12->_vkJumpPointCoordinate.altitude = v25;
    }
  }

  return v12;
}

@end