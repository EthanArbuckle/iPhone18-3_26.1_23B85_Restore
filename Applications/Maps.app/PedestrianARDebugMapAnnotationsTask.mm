@interface PedestrianARDebugMapAnnotationsTask
- (BOOL)_shouldProvideDebugAnnotations;
- (BOOL)isProvidingARAnnotations;
- (ChromeViewController)chromeViewController;
- (NavigationSession)navigationSession;
- (PedestrianARDebugMapAnnotationsTask)initWithPlatformController:(id)controller navigationService:(id)service;
- (PlatformController)platformController;
- (VKMapView)mapView;
- (id)_iOSMapView;
- (id)globalAnnotations;
- (void)_startProvidingARAnnotationsIfNecessary;
- (void)_stopProvidingARAnnotations;
- (void)_updateDebugRouteAnnotations;
- (void)addObserver:(id)observer;
- (void)chromeViewController:(id)controller didMoveFromContextStack:(id)stack toContextStack:(id)contextStack;
- (void)dealloc;
- (void)featureSetStateDidChange:(id)change previous:(int64_t)previous current:(int64_t)current;
- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion;
- (void)mapLayer:(id)layer activeARWalkingFeatureDidUpdate:(id)update;
- (void)mapLayer:(id)layer failedElevationRequestWithReason:(int64_t)reason;
- (void)mapLayer:(id)layer updatedFeatures:(id)features;
- (void)navigationSession:(id)session didChangeCurrentTransportType:(int64_t)type;
- (void)navigationSession:(id)session didUpdateRouteCollection:(id)collection;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)platformControllerDidChangeChromeViewControllerNotification:(id)notification;
- (void)removeObserver:(id)observer;
- (void)setChromeViewController:(id)controller;
- (void)setNavigationSession:(id)session;
@end

@implementation PedestrianARDebugMapAnnotationsTask

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (NavigationSession)navigationSession
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationSession);

  return WeakRetained;
}

- (PlatformController)platformController
{
  WeakRetained = objc_loadWeakRetained(&self->_platformController);

  return WeakRetained;
}

- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008F5958;
  block[3] = &unk_1016605F8;
  block[4] = self;
  draftCopy = draft;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = draftCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)platformControllerDidChangeChromeViewControllerNotification:(id)notification
{
  platformController = [(PedestrianARDebugMapAnnotationsTask *)self platformController];
  chromeViewController = [platformController chromeViewController];
  [(PedestrianARDebugMapAnnotationsTask *)self setChromeViewController:chromeViewController];
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = toSessionCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PedestrianARDebugMapAnnotationsTask *)self setNavigationSession:v7];
}

- (void)chromeViewController:(id)controller didMoveFromContextStack:(id)stack toContextStack:(id)contextStack
{
  stackCopy = stack;
  contextStackCopy = contextStack;
  v9 = sub_1008F5C9C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 134349570;
    selfCopy = self;
    v12 = 2112;
    v13 = stackCopy;
    v14 = 2112;
    v15 = contextStackCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Chrome VC moved from stack: %@ to stack: %@", &v10, 0x20u);
  }

  [(PedestrianARDebugMapAnnotationsTask *)self _stopProvidingARAnnotations];
  if ([(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations])
  {
    [(PedestrianARDebugMapAnnotationsTask *)self _startProvidingARAnnotationsIfNecessary];
  }
}

- (void)mapLayer:(id)layer failedElevationRequestWithReason:(int64_t)reason
{
  v6 = sub_1008F5C9C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    selfCopy = self;
    v21 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] An elevation request failed with reason: %ld", buf, 0x16u);
  }

  if (![(PedestrianARDebugMapAnnotationsTask *)self didShowUndulationFailureAlert])
  {
    [(PedestrianARDebugMapAnnotationsTask *)self setDidShowUndulationFailureAlert:1];
    v7 = objc_opt_new();
    [v7 setTitle:@"[AR Nav Label Simulator] Elevation lookup failure"];
    reason = [NSString stringWithFormat:@"AR walking elevation request failed with reason: %ld", reason];
    [v7 addNote:reason];

    [v7 setClassification:6];
    v9 = +[MapsRadarComponent mapsAppNavUIWalkingComponent];
    [v7 setComponent:v9];

    v10 = sub_1008F5C9C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      v17 = +[MapsRadarController sharedInstance];
      chromeViewController = [(PedestrianARDebugMapAnnotationsTask *)self chromeViewController];
      [v17 launchTTRWithRadar:v7 promptTitle:@"there was an error while looking up the elevation of an AR label" fromViewController:chromeViewController];

      return;
    }

    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_13;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(PedestrianARDebugMapAnnotationsTask *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy2, v15];

        goto LABEL_11;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy2];
LABEL_11:

LABEL_13:
    *buf = 138543362;
    selfCopy = selfCopy2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR for elevation request failure", buf, 0xCu);

    goto LABEL_14;
  }
}

- (void)mapLayer:(id)layer activeARWalkingFeatureDidUpdate:(id)update
{
  updateCopy = update;
  v6 = sub_1008F5C9C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 134349314;
    selfCopy = self;
    v13 = 2112;
    v14 = updateCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] VKMapView updated the active feature: %@", &v11, 0x16u);
  }

  renderingView = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
  mapViewDelegate = [renderingView mapViewDelegate];
  currentFeatureSet = [mapViewDelegate currentFeatureSet];
  [currentFeatureSet addObserver:self];

  observers = [(PedestrianARDebugMapAnnotationsTask *)self observers];
  [observers globalFeaturesDidChangeForDataSource:self];
}

- (void)mapLayer:(id)layer updatedFeatures:(id)features
{
  featuresCopy = features;
  v6 = sub_1008F5C9C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 134349314;
    selfCopy = self;
    v13 = 2112;
    v14 = featuresCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] VKMapView updated features: %@", &v11, 0x16u);
  }

  renderingView = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
  mapViewDelegate = [renderingView mapViewDelegate];
  currentFeatureSet = [mapViewDelegate currentFeatureSet];
  [currentFeatureSet addObserver:self];

  observers = [(PedestrianARDebugMapAnnotationsTask *)self observers];
  [observers globalFeaturesDidChangeForDataSource:self];
}

- (void)featureSetStateDidChange:(id)change previous:(int64_t)previous current:(int64_t)current
{
  changeCopy = change;
  renderingView = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
  mapViewDelegate = [renderingView mapViewDelegate];
  currentFeatureSet = [mapViewDelegate currentFeatureSet];

  if (currentFeatureSet == changeCopy)
  {
    observers = [(PedestrianARDebugMapAnnotationsTask *)self observers];
    [observers globalFeaturesDidChangeForDataSource:self];
  }

  else
  {
    [changeCopy removeObserver:self];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(PedestrianARDebugMapAnnotationsTask *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(PedestrianARDebugMapAnnotationsTask *)self observers];
  [observers registerObserver:observerCopy];
}

- (id)globalAnnotations
{
  v3 = objc_alloc_init(NSMutableArray);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  renderingView = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
  mapViewDelegate = [renderingView mapViewDelegate];
  mapView = [mapViewDelegate mapView];
  labelMarkers = [mapView labelMarkers];

  obj = labelMarkers;
  v8 = [labelMarkers countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    selfCopy = self;
    v40 = v3;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        if ([v12 isARWalkingFeature])
        {
          arWalkingFeature = [v12 arWalkingFeature];

          if (arWalkingFeature)
          {
            arWalkingFeature2 = [v12 arWalkingFeature];
            renderingView2 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
            mapViewDelegate2 = [renderingView2 mapViewDelegate];
            currentFeature = [mapViewDelegate2 currentFeature];

            if (arWalkingFeature2 == currentFeature)
            {
              featureLabelIdentifier = [v12 featureLabelIdentifier];
              renderingView3 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
              mapViewDelegate3 = [renderingView3 mapViewDelegate];
              v18 = featureLabelIdentifier == [mapViewDelegate3 currentIdentifier];
            }

            else
            {
              v18 = 0;
            }

            annotations = [(PedestrianARDebugMapAnnotationsTask *)self annotations];
            v42[0] = _NSConcreteStackBlock;
            v42[1] = 3221225472;
            v42[2] = sub_1008F68A4;
            v42[3] = &unk_10162E2C0;
            v42[4] = v12;
            v43 = v18;
            v23 = sub_100030774(annotations, v42);

            if (v23)
            {
              v24 = sub_1008F5C9C();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                v25 = [(PedestrianARCustomFeatureAnnotation *)v23 debugDescription];
                *buf = 134349314;
                selfCopy3 = self;
                v50 = 2112;
                v51 = v25;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[%{public}p] Found cached annotation: %@", buf, 0x16u);
              }
            }

            else
            {
              v26 = [VKCustomFeature alloc];
              [v12 coordinate3D];
              v24 = [v26 initWithCoordinate3D:?];
              [v24 setDataSource:self];
              v23 = [[PedestrianARCustomFeatureAnnotation alloc] initWithCustomFeature:v24 labelMarker:v12 isActive:v18];
              v27 = sub_1008F5C9C();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v28 = [(PedestrianARCustomFeatureAnnotation *)v23 debugDescription];
                *buf = 134349314;
                selfCopy3 = self;
                v50 = 2112;
                v51 = v28;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}p] Annotation was not present in cache; created a new one: %@", buf, 0x16u);
              }
            }

            feature = [(PedestrianARCustomFeatureAnnotation *)v23 feature];
            arWalkingFeature3 = [v12 arWalkingFeature];
            isOccluded = [v12 isOccluded];
            v32 = arWalkingFeature3;
            v33 = [GEOFeatureStyleAttributes alloc];
            type = [v32 type];

            v35 = [v33 initWithAttributes:{5, 3, 65632, type, 65538, v18, 150, 1, 65594, isOccluded, 0}];
            [feature setStyleAttributes:v35];
            v3 = v40;
            [v40 addObject:v23];

            self = selfCopy;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v9);
  }

  selfCopy4 = self;
  v37 = [v3 copy];
  [(PedestrianARDebugMapAnnotationsTask *)selfCopy4 setAnnotations:v37];

  [(PedestrianARDebugMapAnnotationsTask *)selfCopy4 _updateDebugRouteAnnotations];

  return v3;
}

- (void)navigationSession:(id)session didUpdateRouteCollection:(id)collection
{
  collectionCopy = collection;
  [(PedestrianARDebugMapAnnotationsTask *)self _stopProvidingARAnnotations];
  currentRoute = [collectionCopy currentRoute];

  if ([currentRoute transportType] == 2)
  {
    _shouldProvideDebugAnnotations = [(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations];

    if (_shouldProvideDebugAnnotations)
    {
      v7 = sub_1008F5C9C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Navigation re-routed and the new route's transport type is walking", buf, 0xCu);
      }

      [(PedestrianARDebugMapAnnotationsTask *)self _startProvidingARAnnotationsIfNecessary];
    }
  }

  else
  {
  }
}

- (void)navigationSession:(id)session didChangeCurrentTransportType:(int64_t)type
{
  if (type != 2)
  {
    v5 = sub_1008F5C9C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Navigation changed transport type to non-walking", &v6, 0xCu);
    }

    [(PedestrianARDebugMapAnnotationsTask *)self _stopProvidingARAnnotations];
  }
}

- (void)_updateDebugRouteAnnotations
{
  if ([(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations])
  {
    annotations = [(PedestrianARDebugMapAnnotationsTask *)self annotations];
    v4 = sub_100030774(annotations, &stru_10162E298);

    if (!v4)
    {
LABEL_35:

      return;
    }

    renderingView = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
    mapViewDelegate = [renderingView mapViewDelegate];
    labelMarker = [v4 labelMarker];
    arWalkingFeature = [labelMarker arWalkingFeature];
    v9 = [mapViewDelegate guidanceInfoForFeature:arWalkingFeature];

    labelMarker2 = [v4 labelMarker];
    arWalkingFeature2 = [labelMarker2 arWalkingFeature];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    labelMarker3 = [v4 labelMarker];
    arWalkingFeature3 = [labelMarker3 arWalkingFeature];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    labelMarker4 = [v4 labelMarker];
    [labelMarker4 facingDirection];
    v18 = v17;

    v19 = @"N";
    if (v18 < 337.5 && v18 >= 22.5)
    {
      if (v18 >= 67.5)
      {
        if (v18 >= 112.5)
        {
          if (v18 >= 157.5)
          {
            if (v18 >= 202.5)
            {
              if (v18 >= 247.5)
              {
                if (v18 >= 247.5 && v18 < 292.5)
                {
                  v19 = @"W";
                }

                else
                {
                  v19 = @"NW";
                }
              }

              else
              {
                v19 = @"SW";
              }
            }

            else
            {
              v19 = @"S";
            }
          }

          else
          {
            v19 = @"SE";
          }
        }

        else
        {
          v19 = @"E";
        }
      }

      else
      {
        v19 = @"NE";
      }
    }

    v56 = v9;
    if (isKindOfClass)
    {
      renderingView2 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      route = [renderingView2 route];
      legs = [route legs];
      lastObject = [legs lastObject];

      destinationDisplayInfo = [lastObject destinationDisplayInfo];
      arInfo = [destinationDisplayInfo arInfo];

      storefrontFaceGeometrys = [arInfo storefrontFaceGeometrys];
      v27 = [storefrontFaceGeometrys count];

      v28 = +[NSUserDefaults standardUserDefaults];
      v29 = [v28 BOOLForKey:@"PedestrianARInjectFakeStorefrontArrivalDataKey"];

      v30 = @"Non-AARL";
      if (v29)
      {
        v30 = @"Fake-AARL";
      }

      if (v27)
      {
        v31 = @"AARL";
      }

      else
      {
        v31 = v30;
      }

      arrowLabel = [v9 arrowLabel];

      if (arrowLabel)
      {
        arrowLabel2 = [v9 arrowLabel];
        v34 = [NSString stringWithFormat:@"%@\n%@", v31, arrowLabel2];
      }

      else
      {
        v34 = [NSString stringWithFormat:@"%@", v31];
      }
    }

    else
    {
      arrowLabel3 = [v9 arrowLabel];

      if (v15)
      {
        v36 = @"CARL";
      }

      else
      {
        v36 = @"MARL";
      }

      if (!arrowLabel3)
      {
        v34 = [NSString stringWithFormat:@"%@ - %@", v36, v19];
        goto LABEL_34;
      }

      lastObject = [v9 arrowLabel];
      v34 = [NSString stringWithFormat:@"%@ - %@\n%@", v36, v19, lastObject];
    }

LABEL_34:
    labelMarker5 = [v4 labelMarker];
    arWalkingFeature4 = [labelMarker5 arWalkingFeature];
    isOccluded = [v4 isOccluded];
    v40 = arWalkingFeature4;
    v41 = [GEOFeatureStyleAttributes alloc];
    type = [v40 type];

    v43 = [v41 initWithAttributes:{65632, type, 150, 1, 65594, isOccluded, 0}];
    _iOSMapView = [(PedestrianARDebugMapAnnotationsTask *)self _iOSMapView];
    routeContext = [_iOSMapView routeContext];

    routeInfo = [routeContext routeInfo];
    route2 = [routeInfo route];

    v48 = [[GEORouteMatcher alloc] initWithRoute:route2 auditToken:0];
    [v4 coordinate];
    v50 = v49;
    [v4 coordinate];
    v51 = [v48 closestRouteCoordinateForLocationCoordinate:v50];
    v52 = [[VKRouteEtaDescription alloc] initWithEtaText:v34 etaAdvisoryFeatureStyleAttributes:v43 routeEtaType:6];
    v53 = [[VKRouteRangeAnnotationInfo alloc] initWithEtaDescription:v52 start:v51 end:v51];
    v57 = v53;
    v54 = [NSArray arrayWithObjects:&v57 count:1];
    routeInfo2 = [routeContext routeInfo];
    [routeInfo2 setDebugAnnotations:v54];

    goto LABEL_35;
  }
}

- (id)_iOSMapView
{
  iosBasedChromeViewController = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
  mapView = [iosBasedChromeViewController mapView];
  _mapLayer = [mapView _mapLayer];

  return _mapLayer;
}

- (void)_stopProvidingARAnnotations
{
  v3 = sub_1008F5C9C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v9 = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Stop providing AR annotations", &v9, 0xCu);
  }

  v4 = +[MapsRadarController sharedInstance];
  [v4 removeAttachmentProvider:self];

  [(PedestrianARDebugMapAnnotationsTask *)self setRenderingView:0];
  debugWarningBannerButton = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
  [debugWarningBannerButton removeFromSuperview];

  [(PedestrianARDebugMapAnnotationsTask *)self setDebugWarningBannerButton:0];
  _iOSMapView = [(PedestrianARDebugMapAnnotationsTask *)self _iOSMapView];
  [_iOSMapView removeCustomFeatureDataSource:self];
  routeContext = [_iOSMapView routeContext];
  routeInfo = [routeContext routeInfo];
  [routeInfo setDebugAnnotations:0];
}

- (void)_startProvidingARAnnotationsIfNecessary
{
  if ([(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations])
  {
    renderingView = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];

    if (renderingView)
    {
      v4 = sub_1008F5C9C();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        selfCopy3 = self;
        v5 = "[%{public}p] We already have a rendering view; will not start providing AR annotations again";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, buf, 0xCu);
      }
    }

    else
    {
      v9 = +[MapsRadarController sharedInstance];
      [v9 addAttachmentProvider:self];

      v10 = sub_1008F5C9C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Starting to provide AR annotations now", buf, 0xCu);
      }

      _iOSMapView = [(PedestrianARDebugMapAnnotationsTask *)self _iOSMapView];
      [_iOSMapView addCustomFeatureDataSource:self];

      iosBasedChromeViewController = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      currentIOSBasedContext = [iosBasedChromeViewController currentIOSBasedContext];

      v13 = [PedestrianARRenderingView alloc];
      guidanceObserver = [currentIOSBasedContext guidanceObserver];
      navigationService = [(PedestrianARDebugMapAnnotationsTask *)self navigationService];
      v16 = [(PedestrianARRenderingView *)v13 initWithGuidanceObserver:guidanceObserver navigationService:navigationService];
      [(PedestrianARDebugMapAnnotationsTask *)self setRenderingView:v16];

      renderingView2 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      mapViewDelegate = [renderingView2 mapViewDelegate];
      [mapViewDelegate registerObserver:self];

      renderingView3 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      mapViewDelegate2 = [renderingView3 mapViewDelegate];
      mapView = [mapViewDelegate2 mapView];
      [mapView setARMode:3];

      renderingView4 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      mapViewDelegate3 = [renderingView4 mapViewDelegate];
      mapView2 = [mapViewDelegate3 mapView];
      [mapView2 setARSceneType:0];

      renderingView5 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      mapViewDelegate4 = [renderingView5 mapViewDelegate];
      mapView3 = [mapViewDelegate4 mapView];
      [mapView3 setRendersInBackground:1];

      navigationSession = [(PedestrianARDebugMapAnnotationsTask *)self navigationSession];
      currentRouteCollection = [navigationSession currentRouteCollection];
      currentRoute = [currentRouteCollection currentRoute];
      renderingView6 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      [renderingView6 setRoute:currentRoute];

      renderingView7 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      [renderingView7 setShouldGenerateFeatures:1];

      renderingView8 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      [renderingView8 setShouldShowFeatures:1];

      renderingView9 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      mapViewDelegate5 = [renderingView9 mapViewDelegate];
      mapView4 = [mapViewDelegate5 mapView];
      [mapView4 setOpacity:0.0];

      iosBasedChromeViewController2 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      view = [iosBasedChromeViewController2 view];
      layer = [view layer];
      renderingView10 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      mapViewDelegate6 = [renderingView10 mapViewDelegate];
      mapView5 = [mapViewDelegate6 mapView];
      [layer insertSublayer:mapView5 atIndex:0];

      iosBasedChromeViewController3 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      view2 = [iosBasedChromeViewController3 view];
      window = [view2 window];
      [window frame];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      renderingView11 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      mapViewDelegate7 = [renderingView11 mapViewDelegate];
      mapView6 = [mapViewDelegate7 mapView];
      [mapView6 setBounds:{v47, v49, v51, v53}];

      v57 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(PedestrianARDebugMapAnnotationsTask *)self setDebugWarningBannerButton:v57];

      debugWarningBannerButton = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      [debugWarningBannerButton setTranslatesAutoresizingMaskIntoConstraints:0];

      debugWarningBannerButton2 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      v60 = [UIAction actionWithHandler:&stru_10162E258];
      [debugWarningBannerButton2 addAction:v60 forControlEvents:64];

      v61 = +[UIColor redColor];
      v62 = [v61 colorWithAlphaComponent:0.600000024];
      debugWarningBannerButton3 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      [debugWarningBannerButton3 setBackgroundColor:v62];

      debugWarningBannerButton4 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      [debugWarningBannerButton4 setTitle:@"AR nav label simulation active. Tap to file radars." forState:0];

      debugWarningBannerButton5 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      titleLabel = [debugWarningBannerButton5 titleLabel];
      [titleLabel setAdjustsFontSizeToFitWidth:1];

      debugWarningBannerButton6 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      titleLabel2 = [debugWarningBannerButton6 titleLabel];
      [titleLabel2 setMinimumScaleFactor:0.0];

      v69 = +[UIColor whiteColor];
      debugWarningBannerButton7 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      titleLabel3 = [debugWarningBannerButton7 titleLabel];
      [titleLabel3 setTextColor:v69];

      debugWarningBannerButton8 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      layer2 = [debugWarningBannerButton8 layer];
      [layer2 setZPosition:3.40282347e38];

      iosBasedChromeViewController4 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      view3 = [iosBasedChromeViewController4 view];
      debugWarningBannerButton9 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      [view3 addSubview:debugWarningBannerButton9];

      debugWarningBannerButton10 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      leadingAnchor = [debugWarningBannerButton10 leadingAnchor];
      iosBasedChromeViewController5 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      view4 = [iosBasedChromeViewController5 view];
      leadingAnchor2 = [view4 leadingAnchor];
      v92 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v99[0] = v92;
      debugWarningBannerButton11 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      trailingAnchor = [debugWarningBannerButton11 trailingAnchor];
      iosBasedChromeViewController6 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      view5 = [iosBasedChromeViewController6 view];
      trailingAnchor2 = [view5 trailingAnchor];
      v77 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v99[1] = v77;
      debugWarningBannerButton12 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      topAnchor = [debugWarningBannerButton12 topAnchor];
      iosBasedChromeViewController7 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      view6 = [iosBasedChromeViewController7 view];
      safeAreaLayoutGuide = [view6 safeAreaLayoutGuide];
      topAnchor2 = [safeAreaLayoutGuide topAnchor];
      v84 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v99[2] = v84;
      v85 = [NSArray arrayWithObjects:v99 count:3];
      [NSLayoutConstraint activateConstraints:v85];

      observers = [(PedestrianARDebugMapAnnotationsTask *)self observers];
      [observers globalFeaturesDidChangeForDataSource:self];

      v4 = currentIOSBasedContext;
    }
  }

  else
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      selfCopy3 = "[PedestrianARDebugMapAnnotationsTask _startProvidingARAnnotationsIfNecessary]";
      v102 = 2080;
      v103 = "PedestrianARDebugMapAnnotationsTask.m";
      v104 = 1024;
      v105 = 224;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = +[NSThread callStackSymbols];
        *buf = 138412290;
        selfCopy3 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v4 = sub_1008F5C9C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      selfCopy3 = self;
      v5 = "[%{public}p] Cannot provide AR annotations";
      goto LABEL_13;
    }
  }
}

- (BOOL)_shouldProvideDebugAnnotations
{
  chromeViewController = [(PedestrianARDebugMapAnnotationsTask *)self chromeViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    iosBasedChromeViewController = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
    currentIOSBasedContext = [iosBasedChromeViewController currentIOSBasedContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      navigationSession = [(PedestrianARDebugMapAnnotationsTask *)self navigationSession];
      if (navigationSession)
      {
        navigationSession2 = [(PedestrianARDebugMapAnnotationsTask *)self navigationSession];
        v8 = [navigationSession2 currentTransportType] == 2;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setChromeViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  if (WeakRetained != controllerCopy)
  {
    v6 = sub_1008F5C9C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_loadWeakRetained(&self->_chromeViewController);
      v13 = 134349570;
      selfCopy = self;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Transitioning from chrome VC (%@) to (%@)", &v13, 0x20u);
    }

    v8 = objc_loadWeakRetained(&self->_chromeViewController);
    mapView = [v8 mapView];
    _mapLayer = [mapView _mapLayer];
    [_mapLayer removeCustomFeatureDataSource:self];

    v11 = objc_loadWeakRetained(&self->_chromeViewController);
    [v11 removeContextStackObserver:self];

    v12 = objc_storeWeak(&self->_chromeViewController, controllerCopy);
    [controllerCopy addContextStackObserver:self];

    [(PedestrianARDebugMapAnnotationsTask *)self _stopProvidingARAnnotations];
    if ([(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations])
    {
      [(PedestrianARDebugMapAnnotationsTask *)self _startProvidingARAnnotationsIfNecessary];
    }
  }
}

- (void)setNavigationSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_navigationSession);

  if (WeakRetained != sessionCopy)
  {
    v6 = sub_1008F5C9C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_loadWeakRetained(&self->_navigationSession);
      v10 = 134349570;
      selfCopy = self;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Transitioning from navigation session (%@) to (%@)", &v10, 0x20u);
    }

    v8 = objc_loadWeakRetained(&self->_navigationSession);
    [v8 unregisterObserver:self];

    v9 = objc_storeWeak(&self->_navigationSession, sessionCopy);
    [sessionCopy registerObserver:self];

    if ([(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations])
    {
      [(PedestrianARDebugMapAnnotationsTask *)self _startProvidingARAnnotationsIfNecessary];
    }
  }
}

- (BOOL)isProvidingARAnnotations
{
  renderingView = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
  v3 = renderingView != 0;

  return v3;
}

- (VKMapView)mapView
{
  if ([(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations])
  {
    renderingView = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
    mapViewDelegate = [renderingView mapViewDelegate];
    mapView = [mapViewDelegate mapView];
  }

  else
  {
    mapView = 0;
  }

  return mapView;
}

- (void)dealloc
{
  v3 = sub_1008F5C9C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PedestrianARDebugMapAnnotationsTask;
  [(PedestrianARDebugMapAnnotationsTask *)&v4 dealloc];
}

- (PedestrianARDebugMapAnnotationsTask)initWithPlatformController:(id)controller navigationService:(id)service
{
  controllerCopy = controller;
  serviceCopy = service;
  if (!controllerCopy)
  {
    v19 = sub_10006D178();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "[PedestrianARDebugMapAnnotationsTask initWithPlatformController:navigationService:]";
      v28 = 2080;
      v29 = "PedestrianARDebugMapAnnotationsTask.m";
      v30 = 1024;
      v31 = 137;
      v32 = 2080;
      v33 = "platformController != nil";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (!serviceCopy)
  {
    v22 = sub_10006D178();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "[PedestrianARDebugMapAnnotationsTask initWithPlatformController:navigationService:]";
      v28 = 2080;
      v29 = "PedestrianARDebugMapAnnotationsTask.m";
      v30 = 1024;
      v31 = 138;
      v32 = 2080;
      v33 = "navigationService != nil";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v27 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v25.receiver = self;
  v25.super_class = PedestrianARDebugMapAnnotationsTask;
  v8 = [(PedestrianARDebugMapAnnotationsTask *)&v25 init];
  if (v8)
  {
    v9 = sub_1008F5C9C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeWeak(&v8->_platformController, controllerCopy);
    objc_storeStrong(&v8->_navigationService, service);
    v10 = +[NSNotificationCenter defaultCenter];
    WeakRetained = objc_loadWeakRetained(&v8->_platformController);
    [v10 addObserver:v8 selector:"platformControllerDidChangeChromeViewControllerNotification:" name:@"PlatformControllerDidChangeChromeViewControllerNotification" object:WeakRetained];

    v12 = objc_loadWeakRetained(&v8->_platformController);
    chromeViewController = [v12 chromeViewController];
    [(PedestrianARDebugMapAnnotationsTask *)v8 setChromeViewController:chromeViewController];

    v14 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___VKCustomFeatureDataSourceObserver queue:0];
    observers = v8->_observers;
    v8->_observers = v14;

    v16 = objc_alloc_init(NSArray);
    annotations = v8->_annotations;
    v8->_annotations = v16;
  }

  return v8;
}

@end