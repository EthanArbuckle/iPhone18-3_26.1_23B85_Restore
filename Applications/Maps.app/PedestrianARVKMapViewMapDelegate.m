@interface PedestrianARVKMapViewMapDelegate
- ($1AB5FA073B851C12C2339EC22442E995)currentFeaturePosition;
- (BOOL)hasActiveFeatureSet;
- (NSArray)currentFeatureMapping;
- (PedestrianARVKMapViewMapDelegate)initWithMapView:(id)a3;
- (VKARWalkingFeatureSet)currentFeatureSet;
- (id)guidanceInfoForFeature:(id)a3;
- (void)dealloc;
- (void)mapLayer:(id)a3 activeARWalkingFeatureDidUpdate:(id)a4;
- (void)mapLayer:(id)a3 arWalkingElevationRequestFailure:(id)a4;
- (void)mapLayer:(id)a3 arWalkingFeatureSetStateDidUpdate:(id)a4;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)updateFeatureMapping:(id)a3;
- (void)updateGuidanceInfo:(id)a3 forFeature:(id)a4;
@end

@implementation PedestrianARVKMapViewMapDelegate

- ($1AB5FA073B851C12C2339EC22442E995)currentFeaturePosition
{
  latitude = self->_currentFeaturePosition.latitude;
  longitude = self->_currentFeaturePosition.longitude;
  altitude = self->_currentFeaturePosition.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (void)mapLayer:(id)a3 arWalkingElevationRequestFailure:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100C9F624();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 134349312;
    v11 = self;
    v12 = 2048;
    v13 = [v6 reason];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}p] Detected elevation request failure: %ld", &v10, 0x16u);
  }

  v9 = [(PedestrianARVKMapViewMapDelegate *)self observers];
  [v9 mapLayer:v7 failedElevationRequestWithReason:{objc_msgSend(v6, "reason")}];
}

- (void)mapLayer:(id)a3 activeARWalkingFeatureDidUpdate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100C9F624();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v15 = 134349314;
    v16 = self;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] VK updated active AR walking feature: %@", &v15, 0x16u);
  }

  v9 = [v6 feature];
  currentFeature = self->_currentFeature;
  self->_currentFeature = v9;

  self->_currentIdentifier = [v6 featureLabelIdentifier];
  [v6 labelPosition];
  self->_currentFeaturePosition.latitude = v11;
  self->_currentFeaturePosition.longitude = v12;
  self->_currentFeaturePosition.altitude = v13;
  v14 = [(PedestrianARVKMapViewMapDelegate *)self observers];
  [v14 mapLayer:v7 activeARWalkingFeatureDidUpdate:v6];
}

- (void)mapLayer:(id)a3 arWalkingFeatureSetStateDidUpdate:(id)a4
{
  v5 = a4;
  v6 = sub_100C9F624();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v18 = 134349314;
    v19 = self;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] VK updated AR walking feature set: %@", &v18, 0x16u);
  }

  v7 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
  v8 = [v7 featureSet];
  v9 = [v8 state] - 3;

  if (v9 <= 1)
  {
    v10 = sub_100C9F624();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
      v18 = 134349314;
      v19 = self;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Latest feature set is now active; switching it to the active set: %@", &v18, 0x16u);
    }

    v12 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
    [(PedestrianARVKMapViewMapDelegate *)self setActiveFeatureSetMapEntry:v12];

    v13 = [(PedestrianARVKMapViewMapDelegate *)self activeFeatureSetMapEntry];
    v14 = [v13 featureEntries];
    v15 = sub_100021DB0(v14, &stru_101650000);

    v16 = [(PedestrianARVKMapViewMapDelegate *)self observers];
    v17 = [(PedestrianARVKMapViewMapDelegate *)self mapView];
    [v16 mapLayer:v17 updatedFeatures:v15];
  }
}

- (id)guidanceInfoForFeature:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v16 = "[PedestrianARVKMapViewMapDelegate guidanceInfoForFeature:]";
      v17 = 2080;
      v18 = "PedestrianARVKMapViewMapDelegate.m";
      v19 = 1024;
      v20 = 218;
      v21 = 2080;
      v22 = "feature != nil";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v5 = [(PedestrianARVKMapViewMapDelegate *)self currentFeatureMapping];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100C9FC04;
  v13[3] = &unk_10164FFE0;
  v14 = v4;
  v6 = v4;
  v7 = sub_100030774(v5, v13);

  v8 = [v7 guidanceInfo];

  return v8;
}

- (void)updateGuidanceInfo:(id)a3 forFeature:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v33 = sub_10006D178();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v42 = "[PedestrianARVKMapViewMapDelegate updateGuidanceInfo:forFeature:]";
      v43 = 2080;
      v44 = "PedestrianARVKMapViewMapDelegate.m";
      v45 = 1024;
      LODWORD(v46[0]) = 184;
      WORD2(v46[0]) = 2080;
      *(v46 + 6) = "guidanceInfo != nil";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v34 = sub_10006D178();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v42 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!v7)
  {
    v36 = sub_10006D178();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v42 = "[PedestrianARVKMapViewMapDelegate updateGuidanceInfo:forFeature:]";
      v43 = 2080;
      v44 = "PedestrianARVKMapViewMapDelegate.m";
      v45 = 1024;
      LODWORD(v46[0]) = 185;
      WORD2(v46[0]) = 2080;
      *(v46 + 6) = "feature != nil";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v37 = sub_10006D178();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v42 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v8 = sub_100C9F624();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 mapsShortDescription];
    *buf = 134349570;
    v42 = self;
    v43 = 2112;
    v44 = v9;
    v45 = 2112;
    v46[0] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Updating guidance info: %@ for feature: %@", buf, 0x20u);
  }

  v10 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
  v11 = [v10 featureEntries];
  v12 = [v11 mutableCopy];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100CA0348;
  v39[3] = &unk_10164FFE0;
  v13 = v7;
  v40 = v13;
  v14 = sub_100030774(v12, v39);
  if (v14)
  {
    v15 = sub_100C9F624();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v42 = self;
      v43 = 2112;
      v44 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Found current entry: %@", buf, 0x16u);
    }

    [v12 removeObject:v14];
    v16 = [[PedestrianARVKFeatureMapEntry alloc] initWithFeature:v13 guidanceInfo:v6];
    [v12 addObject:v16];
    v17 = [PedestrianARFeatureSetMapEntry alloc];
    v18 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
    v19 = [v18 featureSet];
    v20 = [v12 copy];
    v21 = [(PedestrianARFeatureSetMapEntry *)v17 initWithFeatureSet:v19 featureEntries:v20];
    [(PedestrianARVKMapViewMapDelegate *)self setLatestFeatureSetMapEntry:v21];

    v22 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
    v23 = [v22 featureSet];
    v24 = [v23 state] - 3;

    if (v24 <= 1)
    {
      v25 = sub_100C9F624();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
        *buf = 134349314;
        v42 = self;
        v43 = 2112;
        v44 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%{public}p] Latest feature set is already active; switching it to the active set: %@", buf, 0x16u);
      }

      v27 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
      [(PedestrianARVKMapViewMapDelegate *)self setActiveFeatureSetMapEntry:v27];
    }

    v28 = [(PedestrianARVKMapViewMapDelegate *)self observers];
    v29 = [(PedestrianARVKMapViewMapDelegate *)self mapView];
    [v28 mapLayer:v29 guidanceInfoDidUpdate:v6 forFeature:v13];
  }

  else
  {
    v30 = sub_10006D178();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v42 = "[PedestrianARVKMapViewMapDelegate updateGuidanceInfo:forFeature:]";
      v43 = 2080;
      v44 = "PedestrianARVKMapViewMapDelegate.m";
      v45 = 1024;
      LODWORD(v46[0]) = 196;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v31 = sub_10006D178();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v42 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v16 = sub_100C9F624();
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v42 = self;
      _os_log_impl(&_mh_execute_header, &v16->super, OS_LOG_TYPE_ERROR, "[%{public}p] Cannot update guidance info for feature which does not exist in the mapping", buf, 0xCu);
    }
  }
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100C9F624();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349314;
      v8 = self;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Removing observer: %@", &v7, 0x16u);
    }

    v6 = [(PedestrianARVKMapViewMapDelegate *)self observers];
    [v6 unregisterObserver:v4];
  }
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100C9F624();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349314;
      v8 = self;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Adding observer: %@", &v7, 0x16u);
    }

    v6 = [(PedestrianARVKMapViewMapDelegate *)self observers];
    [v6 registerObserver:v4];
  }
}

- (void)updateFeatureMapping:(id)a3
{
  v4 = a3;
  v5 = sub_100C9F624();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 134349314;
    v15 = self;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updated feature mapping: %@", &v14, 0x16u);
  }

  v6 = sub_100021DB0(v4, &stru_10164FFB8);
  v7 = [(PedestrianARVKMapViewMapDelegate *)self mapView];
  v8 = [v7 setARWalkingFeatureSet:v6];

  if ([v6 count])
  {
    v9 = [[PedestrianARFeatureSetMapEntry alloc] initWithFeatureSet:v8 featureEntries:v4];
    [(PedestrianARVKMapViewMapDelegate *)self setLatestFeatureSetMapEntry:v9];
  }

  else
  {
    [(PedestrianARVKMapViewMapDelegate *)self setLatestFeatureSetMapEntry:0];
    [(PedestrianARVKMapViewMapDelegate *)self setActiveFeatureSetMapEntry:0];
    currentFeature = self->_currentFeature;
    self->_currentFeature = 0;

    self->_currentIdentifier = 0;
    *&self->_currentFeaturePosition.latitude = xmmword_101215858;
    self->_currentFeaturePosition.altitude = 1.79769313e308;
  }

  v11 = [(PedestrianARVKMapViewMapDelegate *)self activeFeatureSetMapEntry];

  if (!v11)
  {
    v12 = [(PedestrianARVKMapViewMapDelegate *)self observers];
    v13 = [(PedestrianARVKMapViewMapDelegate *)self mapView];
    [v12 mapLayer:v13 updatedFeatures:v6];
  }
}

- (BOOL)hasActiveFeatureSet
{
  v2 = [(PedestrianARVKMapViewMapDelegate *)self activeFeatureSetMapEntry];
  v3 = v2 != 0;

  return v3;
}

- (VKARWalkingFeatureSet)currentFeatureSet
{
  v3 = [(PedestrianARVKMapViewMapDelegate *)self activeFeatureSetMapEntry];
  v4 = [v3 featureSet];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
    v6 = [v7 featureSet];
  }

  return v6;
}

- (NSArray)currentFeatureMapping
{
  v3 = [(PedestrianARVKMapViewMapDelegate *)self activeFeatureSetMapEntry];
  v4 = [v3 featureEntries];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
    v6 = [v7 featureEntries];
  }

  return v6;
}

- (void)dealloc
{
  v3 = sub_100C9F624();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocing", buf, 0xCu);
  }

  [(VKMapView *)self->_mapView setMapDelegate:0];
  v4.receiver = self;
  v4.super_class = PedestrianARVKMapViewMapDelegate;
  [(PedestrianARVKMapViewMapDelegate *)&v4 dealloc];
}

- (PedestrianARVKMapViewMapDelegate)initWithMapView:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v16 = "[PedestrianARVKMapViewMapDelegate initWithMapView:]";
      v17 = 2080;
      v18 = "PedestrianARVKMapViewMapDelegate.m";
      v19 = 1024;
      v20 = 93;
      v21 = 2080;
      v22 = "mapView != nil";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v14.receiver = self;
  v14.super_class = PedestrianARVKMapViewMapDelegate;
  v6 = [(PedestrianARVKMapViewMapDelegate *)&v14 init];
  if (v6)
  {
    v7 = sub_100C9F624();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeStrong(v6 + 1, a3);
    [*(v6 + 1) setMapDelegate:v6];
    *(v6 + 3) = 0;
    *(v6 + 56) = xmmword_101215858;
    *(v6 + 9) = 0x7FEFFFFFFFFFFFFFLL;
    v8 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___PedestrianARVKMapViewObserver queue:0];
    v9 = *(v6 + 4);
    *(v6 + 4) = v8;
  }

  return v6;
}

@end