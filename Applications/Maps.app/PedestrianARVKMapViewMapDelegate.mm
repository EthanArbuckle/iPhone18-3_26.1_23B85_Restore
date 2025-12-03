@interface PedestrianARVKMapViewMapDelegate
- ($1AB5FA073B851C12C2339EC22442E995)currentFeaturePosition;
- (BOOL)hasActiveFeatureSet;
- (NSArray)currentFeatureMapping;
- (PedestrianARVKMapViewMapDelegate)initWithMapView:(id)view;
- (VKARWalkingFeatureSet)currentFeatureSet;
- (id)guidanceInfoForFeature:(id)feature;
- (void)dealloc;
- (void)mapLayer:(id)layer activeARWalkingFeatureDidUpdate:(id)update;
- (void)mapLayer:(id)layer arWalkingElevationRequestFailure:(id)failure;
- (void)mapLayer:(id)layer arWalkingFeatureSetStateDidUpdate:(id)update;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
- (void)updateFeatureMapping:(id)mapping;
- (void)updateGuidanceInfo:(id)info forFeature:(id)feature;
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

- (void)mapLayer:(id)layer arWalkingElevationRequestFailure:(id)failure
{
  failureCopy = failure;
  layerCopy = layer;
  v8 = sub_100C9F624();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 134349312;
    selfCopy = self;
    v12 = 2048;
    reason = [failureCopy reason];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}p] Detected elevation request failure: %ld", &v10, 0x16u);
  }

  observers = [(PedestrianARVKMapViewMapDelegate *)self observers];
  [observers mapLayer:layerCopy failedElevationRequestWithReason:{objc_msgSend(failureCopy, "reason")}];
}

- (void)mapLayer:(id)layer activeARWalkingFeatureDidUpdate:(id)update
{
  updateCopy = update;
  layerCopy = layer;
  v8 = sub_100C9F624();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v15 = 134349314;
    selfCopy = self;
    v17 = 2112;
    v18 = updateCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] VK updated active AR walking feature: %@", &v15, 0x16u);
  }

  feature = [updateCopy feature];
  currentFeature = self->_currentFeature;
  self->_currentFeature = feature;

  self->_currentIdentifier = [updateCopy featureLabelIdentifier];
  [updateCopy labelPosition];
  self->_currentFeaturePosition.latitude = v11;
  self->_currentFeaturePosition.longitude = v12;
  self->_currentFeaturePosition.altitude = v13;
  observers = [(PedestrianARVKMapViewMapDelegate *)self observers];
  [observers mapLayer:layerCopy activeARWalkingFeatureDidUpdate:updateCopy];
}

- (void)mapLayer:(id)layer arWalkingFeatureSetStateDidUpdate:(id)update
{
  updateCopy = update;
  v6 = sub_100C9F624();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v18 = 134349314;
    selfCopy2 = self;
    v20 = 2112;
    v21 = updateCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] VK updated AR walking feature set: %@", &v18, 0x16u);
  }

  latestFeatureSetMapEntry = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
  featureSet = [latestFeatureSetMapEntry featureSet];
  v9 = [featureSet state] - 3;

  if (v9 <= 1)
  {
    v10 = sub_100C9F624();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      latestFeatureSetMapEntry2 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
      v18 = 134349314;
      selfCopy2 = self;
      v20 = 2112;
      v21 = latestFeatureSetMapEntry2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Latest feature set is now active; switching it to the active set: %@", &v18, 0x16u);
    }

    latestFeatureSetMapEntry3 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
    [(PedestrianARVKMapViewMapDelegate *)self setActiveFeatureSetMapEntry:latestFeatureSetMapEntry3];

    activeFeatureSetMapEntry = [(PedestrianARVKMapViewMapDelegate *)self activeFeatureSetMapEntry];
    featureEntries = [activeFeatureSetMapEntry featureEntries];
    v15 = sub_100021DB0(featureEntries, &stru_101650000);

    observers = [(PedestrianARVKMapViewMapDelegate *)self observers];
    mapView = [(PedestrianARVKMapViewMapDelegate *)self mapView];
    [observers mapLayer:mapView updatedFeatures:v15];
  }
}

- (id)guidanceInfoForFeature:(id)feature
{
  featureCopy = feature;
  if (!featureCopy)
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

  currentFeatureMapping = [(PedestrianARVKMapViewMapDelegate *)self currentFeatureMapping];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100C9FC04;
  v13[3] = &unk_10164FFE0;
  v14 = featureCopy;
  v6 = featureCopy;
  v7 = sub_100030774(currentFeatureMapping, v13);

  guidanceInfo = [v7 guidanceInfo];

  return guidanceInfo;
}

- (void)updateGuidanceInfo:(id)info forFeature:(id)feature
{
  infoCopy = info;
  featureCopy = feature;
  if (!infoCopy)
  {
    v33 = sub_10006D178();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      selfCopy4 = "[PedestrianARVKMapViewMapDelegate updateGuidanceInfo:forFeature:]";
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
        selfCopy4 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!featureCopy)
  {
    v36 = sub_10006D178();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      selfCopy4 = "[PedestrianARVKMapViewMapDelegate updateGuidanceInfo:forFeature:]";
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
        selfCopy4 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v8 = sub_100C9F624();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    mapsShortDescription = [infoCopy mapsShortDescription];
    *buf = 134349570;
    selfCopy4 = self;
    v43 = 2112;
    v44 = mapsShortDescription;
    v45 = 2112;
    v46[0] = featureCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Updating guidance info: %@ for feature: %@", buf, 0x20u);
  }

  latestFeatureSetMapEntry = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
  featureEntries = [latestFeatureSetMapEntry featureEntries];
  v12 = [featureEntries mutableCopy];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100CA0348;
  v39[3] = &unk_10164FFE0;
  v13 = featureCopy;
  v40 = v13;
  v14 = sub_100030774(v12, v39);
  if (v14)
  {
    v15 = sub_100C9F624();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      selfCopy4 = self;
      v43 = 2112;
      v44 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}p] Found current entry: %@", buf, 0x16u);
    }

    [v12 removeObject:v14];
    v16 = [[PedestrianARVKFeatureMapEntry alloc] initWithFeature:v13 guidanceInfo:infoCopy];
    [v12 addObject:v16];
    v17 = [PedestrianARFeatureSetMapEntry alloc];
    latestFeatureSetMapEntry2 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
    featureSet = [latestFeatureSetMapEntry2 featureSet];
    v20 = [v12 copy];
    v21 = [(PedestrianARFeatureSetMapEntry *)v17 initWithFeatureSet:featureSet featureEntries:v20];
    [(PedestrianARVKMapViewMapDelegate *)self setLatestFeatureSetMapEntry:v21];

    latestFeatureSetMapEntry3 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
    featureSet2 = [latestFeatureSetMapEntry3 featureSet];
    v24 = [featureSet2 state] - 3;

    if (v24 <= 1)
    {
      v25 = sub_100C9F624();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        latestFeatureSetMapEntry4 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
        *buf = 134349314;
        selfCopy4 = self;
        v43 = 2112;
        v44 = latestFeatureSetMapEntry4;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%{public}p] Latest feature set is already active; switching it to the active set: %@", buf, 0x16u);
      }

      latestFeatureSetMapEntry5 = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
      [(PedestrianARVKMapViewMapDelegate *)self setActiveFeatureSetMapEntry:latestFeatureSetMapEntry5];
    }

    observers = [(PedestrianARVKMapViewMapDelegate *)self observers];
    mapView = [(PedestrianARVKMapViewMapDelegate *)self mapView];
    [observers mapLayer:mapView guidanceInfoDidUpdate:infoCopy forFeature:v13];
  }

  else
  {
    v30 = sub_10006D178();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      selfCopy4 = "[PedestrianARVKMapViewMapDelegate updateGuidanceInfo:forFeature:]";
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
        selfCopy4 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v16 = sub_100C9F624();
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, &v16->super, OS_LOG_TYPE_ERROR, "[%{public}p] Cannot update guidance info for feature which does not exist in the mapping", buf, 0xCu);
    }
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = sub_100C9F624();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349314;
      selfCopy = self;
      v9 = 2112;
      v10 = observerCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Removing observer: %@", &v7, 0x16u);
    }

    observers = [(PedestrianARVKMapViewMapDelegate *)self observers];
    [observers unregisterObserver:observerCopy];
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = sub_100C9F624();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349314;
      selfCopy = self;
      v9 = 2112;
      v10 = observerCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] Adding observer: %@", &v7, 0x16u);
    }

    observers = [(PedestrianARVKMapViewMapDelegate *)self observers];
    [observers registerObserver:observerCopy];
  }
}

- (void)updateFeatureMapping:(id)mapping
{
  mappingCopy = mapping;
  v5 = sub_100C9F624();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 134349314;
    selfCopy = self;
    v16 = 2112;
    v17 = mappingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updated feature mapping: %@", &v14, 0x16u);
  }

  v6 = sub_100021DB0(mappingCopy, &stru_10164FFB8);
  mapView = [(PedestrianARVKMapViewMapDelegate *)self mapView];
  v8 = [mapView setARWalkingFeatureSet:v6];

  if ([v6 count])
  {
    v9 = [[PedestrianARFeatureSetMapEntry alloc] initWithFeatureSet:v8 featureEntries:mappingCopy];
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

  activeFeatureSetMapEntry = [(PedestrianARVKMapViewMapDelegate *)self activeFeatureSetMapEntry];

  if (!activeFeatureSetMapEntry)
  {
    observers = [(PedestrianARVKMapViewMapDelegate *)self observers];
    mapView2 = [(PedestrianARVKMapViewMapDelegate *)self mapView];
    [observers mapLayer:mapView2 updatedFeatures:v6];
  }
}

- (BOOL)hasActiveFeatureSet
{
  activeFeatureSetMapEntry = [(PedestrianARVKMapViewMapDelegate *)self activeFeatureSetMapEntry];
  v3 = activeFeatureSetMapEntry != 0;

  return v3;
}

- (VKARWalkingFeatureSet)currentFeatureSet
{
  activeFeatureSetMapEntry = [(PedestrianARVKMapViewMapDelegate *)self activeFeatureSetMapEntry];
  featureSet = [activeFeatureSetMapEntry featureSet];
  v5 = featureSet;
  if (featureSet)
  {
    featureSet2 = featureSet;
  }

  else
  {
    latestFeatureSetMapEntry = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
    featureSet2 = [latestFeatureSetMapEntry featureSet];
  }

  return featureSet2;
}

- (NSArray)currentFeatureMapping
{
  activeFeatureSetMapEntry = [(PedestrianARVKMapViewMapDelegate *)self activeFeatureSetMapEntry];
  featureEntries = [activeFeatureSetMapEntry featureEntries];
  v5 = featureEntries;
  if (featureEntries)
  {
    featureEntries2 = featureEntries;
  }

  else
  {
    latestFeatureSetMapEntry = [(PedestrianARVKMapViewMapDelegate *)self latestFeatureSetMapEntry];
    featureEntries2 = [latestFeatureSetMapEntry featureEntries];
  }

  return featureEntries2;
}

- (void)dealloc
{
  v3 = sub_100C9F624();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocing", buf, 0xCu);
  }

  [(VKMapView *)self->_mapView setMapDelegate:0];
  v4.receiver = self;
  v4.super_class = PedestrianARVKMapViewMapDelegate;
  [(PedestrianARVKMapViewMapDelegate *)&v4 dealloc];
}

- (PedestrianARVKMapViewMapDelegate)initWithMapView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
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

    objc_storeStrong(v6 + 1, view);
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