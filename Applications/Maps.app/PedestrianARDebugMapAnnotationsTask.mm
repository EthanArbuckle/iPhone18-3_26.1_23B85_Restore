@interface PedestrianARDebugMapAnnotationsTask
- (BOOL)_shouldProvideDebugAnnotations;
- (BOOL)isProvidingARAnnotations;
- (ChromeViewController)chromeViewController;
- (NavigationSession)navigationSession;
- (PedestrianARDebugMapAnnotationsTask)initWithPlatformController:(id)a3 navigationService:(id)a4;
- (PlatformController)platformController;
- (VKMapView)mapView;
- (id)_iOSMapView;
- (id)globalAnnotations;
- (void)_startProvidingARAnnotationsIfNecessary;
- (void)_stopProvidingARAnnotations;
- (void)_updateDebugRouteAnnotations;
- (void)addObserver:(id)a3;
- (void)chromeViewController:(id)a3 didMoveFromContextStack:(id)a4 toContextStack:(id)a5;
- (void)dealloc;
- (void)featureSetStateDidChange:(id)a3 previous:(int64_t)a4 current:(int64_t)a5;
- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4;
- (void)mapLayer:(id)a3 activeARWalkingFeatureDidUpdate:(id)a4;
- (void)mapLayer:(id)a3 failedElevationRequestWithReason:(int64_t)a4;
- (void)mapLayer:(id)a3 updatedFeatures:(id)a4;
- (void)navigationSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4;
- (void)navigationSession:(id)a3 didUpdateRouteCollection:(id)a4;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)platformControllerDidChangeChromeViewControllerNotification:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setChromeViewController:(id)a3;
- (void)setNavigationSession:(id)a3;
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

- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008F5958;
  block[3] = &unk_1016605F8;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)platformControllerDidChangeChromeViewControllerNotification:(id)a3
{
  v5 = [(PedestrianARDebugMapAnnotationsTask *)self platformController];
  v4 = [v5 chromeViewController];
  [(PedestrianARDebugMapAnnotationsTask *)self setChromeViewController:v4];
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PedestrianARDebugMapAnnotationsTask *)self setNavigationSession:v7];
}

- (void)chromeViewController:(id)a3 didMoveFromContextStack:(id)a4 toContextStack:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_1008F5C9C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 134349570;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Chrome VC moved from stack: %@ to stack: %@", &v10, 0x20u);
  }

  [(PedestrianARDebugMapAnnotationsTask *)self _stopProvidingARAnnotations];
  if ([(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations])
  {
    [(PedestrianARDebugMapAnnotationsTask *)self _startProvidingARAnnotationsIfNecessary];
  }
}

- (void)mapLayer:(id)a3 failedElevationRequestWithReason:(int64_t)a4
{
  v6 = sub_1008F5C9C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    v20 = self;
    v21 = 2048;
    v22 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] An elevation request failed with reason: %ld", buf, 0x16u);
  }

  if (![(PedestrianARDebugMapAnnotationsTask *)self didShowUndulationFailureAlert])
  {
    [(PedestrianARDebugMapAnnotationsTask *)self setDidShowUndulationFailureAlert:1];
    v7 = objc_opt_new();
    [v7 setTitle:@"[AR Nav Label Simulator] Elevation lookup failure"];
    v8 = [NSString stringWithFormat:@"AR walking elevation request failed with reason: %ld", a4];
    [v7 addNote:v8];

    [v7 setClassification:6];
    v9 = +[MapsRadarComponent mapsAppNavUIWalkingComponent];
    [v7 setComponent:v9];

    v10 = sub_1008F5C9C();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:

      v17 = +[MapsRadarController sharedInstance];
      v18 = [(PedestrianARDebugMapAnnotationsTask *)self chromeViewController];
      [v17 launchTTRWithRadar:v7 promptTitle:@"there was an error while looking up the elevation of an AR label" fromViewController:v18];

      return;
    }

    v11 = self;
    if (!v11)
    {
      v16 = @"<nil>";
      goto LABEL_13;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    if (objc_opt_respondsToSelector())
    {
      v14 = [(PedestrianARDebugMapAnnotationsTask *)v11 performSelector:"accessibilityIdentifier"];
      v15 = v14;
      if (v14 && ![v14 isEqualToString:v13])
      {
        v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

        goto LABEL_11;
      }
    }

    v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_11:

LABEL_13:
    *buf = 138543362;
    v20 = v16;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR for elevation request failure", buf, 0xCu);

    goto LABEL_14;
  }
}

- (void)mapLayer:(id)a3 activeARWalkingFeatureDidUpdate:(id)a4
{
  v5 = a4;
  v6 = sub_1008F5C9C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 134349314;
    v12 = self;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] VKMapView updated the active feature: %@", &v11, 0x16u);
  }

  v7 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
  v8 = [v7 mapViewDelegate];
  v9 = [v8 currentFeatureSet];
  [v9 addObserver:self];

  v10 = [(PedestrianARDebugMapAnnotationsTask *)self observers];
  [v10 globalFeaturesDidChangeForDataSource:self];
}

- (void)mapLayer:(id)a3 updatedFeatures:(id)a4
{
  v5 = a4;
  v6 = sub_1008F5C9C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 134349314;
    v12 = self;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] VKMapView updated features: %@", &v11, 0x16u);
  }

  v7 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
  v8 = [v7 mapViewDelegate];
  v9 = [v8 currentFeatureSet];
  [v9 addObserver:self];

  v10 = [(PedestrianARDebugMapAnnotationsTask *)self observers];
  [v10 globalFeaturesDidChangeForDataSource:self];
}

- (void)featureSetStateDidChange:(id)a3 previous:(int64_t)a4 current:(int64_t)a5
{
  v10 = a3;
  v6 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
  v7 = [v6 mapViewDelegate];
  v8 = [v7 currentFeatureSet];

  if (v8 == v10)
  {
    v9 = [(PedestrianARDebugMapAnnotationsTask *)self observers];
    [v9 globalFeaturesDidChangeForDataSource:self];
  }

  else
  {
    [v10 removeObserver:self];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PedestrianARDebugMapAnnotationsTask *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(PedestrianARDebugMapAnnotationsTask *)self observers];
  [v5 registerObserver:v4];
}

- (id)globalAnnotations
{
  v3 = objc_alloc_init(NSMutableArray);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
  v5 = [v4 mapViewDelegate];
  v6 = [v5 mapView];
  v7 = [v6 labelMarkers];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    v39 = self;
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
          v13 = [v12 arWalkingFeature];

          if (v13)
          {
            v14 = [v12 arWalkingFeature];
            v15 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
            v16 = [v15 mapViewDelegate];
            v17 = [v16 currentFeature];

            if (v14 == v17)
            {
              v19 = [v12 featureLabelIdentifier];
              v20 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
              v21 = [v20 mapViewDelegate];
              v18 = v19 == [v21 currentIdentifier];
            }

            else
            {
              v18 = 0;
            }

            v22 = [(PedestrianARDebugMapAnnotationsTask *)self annotations];
            v42[0] = _NSConcreteStackBlock;
            v42[1] = 3221225472;
            v42[2] = sub_1008F68A4;
            v42[3] = &unk_10162E2C0;
            v42[4] = v12;
            v43 = v18;
            v23 = sub_100030774(v22, v42);

            if (v23)
            {
              v24 = sub_1008F5C9C();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                v25 = [(PedestrianARCustomFeatureAnnotation *)v23 debugDescription];
                *buf = 134349314;
                v49 = self;
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
                v49 = self;
                v50 = 2112;
                v51 = v28;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}p] Annotation was not present in cache; created a new one: %@", buf, 0x16u);
              }
            }

            v29 = [(PedestrianARCustomFeatureAnnotation *)v23 feature];
            v30 = [v12 arWalkingFeature];
            v31 = [v12 isOccluded];
            v32 = v30;
            v33 = [GEOFeatureStyleAttributes alloc];
            v34 = [v32 type];

            v35 = [v33 initWithAttributes:{5, 3, 65632, v34, 65538, v18, 150, 1, 65594, v31, 0}];
            [v29 setStyleAttributes:v35];
            v3 = v40;
            [v40 addObject:v23];

            self = v39;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v9);
  }

  v36 = self;
  v37 = [v3 copy];
  [(PedestrianARDebugMapAnnotationsTask *)v36 setAnnotations:v37];

  [(PedestrianARDebugMapAnnotationsTask *)v36 _updateDebugRouteAnnotations];

  return v3;
}

- (void)navigationSession:(id)a3 didUpdateRouteCollection:(id)a4
{
  v5 = a4;
  [(PedestrianARDebugMapAnnotationsTask *)self _stopProvidingARAnnotations];
  v8 = [v5 currentRoute];

  if ([v8 transportType] == 2)
  {
    v6 = [(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations];

    if (v6)
    {
      v7 = sub_1008F5C9C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v10 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Navigation re-routed and the new route's transport type is walking", buf, 0xCu);
      }

      [(PedestrianARDebugMapAnnotationsTask *)self _startProvidingARAnnotationsIfNecessary];
    }
  }

  else
  {
  }
}

- (void)navigationSession:(id)a3 didChangeCurrentTransportType:(int64_t)a4
{
  if (a4 != 2)
  {
    v5 = sub_1008F5C9C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134349056;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Navigation changed transport type to non-walking", &v6, 0xCu);
    }

    [(PedestrianARDebugMapAnnotationsTask *)self _stopProvidingARAnnotations];
  }
}

- (void)_updateDebugRouteAnnotations
{
  if ([(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations])
  {
    v3 = [(PedestrianARDebugMapAnnotationsTask *)self annotations];
    v4 = sub_100030774(v3, &stru_10162E298);

    if (!v4)
    {
LABEL_35:

      return;
    }

    v5 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
    v6 = [v5 mapViewDelegate];
    v7 = [v4 labelMarker];
    v8 = [v7 arWalkingFeature];
    v9 = [v6 guidanceInfoForFeature:v8];

    v10 = [v4 labelMarker];
    v11 = [v10 arWalkingFeature];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v13 = [v4 labelMarker];
    v14 = [v13 arWalkingFeature];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();

    v16 = [v4 labelMarker];
    [v16 facingDirection];
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
      v20 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      v21 = [v20 route];
      v22 = [v21 legs];
      v23 = [v22 lastObject];

      v24 = [v23 destinationDisplayInfo];
      v25 = [v24 arInfo];

      v26 = [v25 storefrontFaceGeometrys];
      v27 = [v26 count];

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

      v32 = [v9 arrowLabel];

      if (v32)
      {
        v33 = [v9 arrowLabel];
        v34 = [NSString stringWithFormat:@"%@\n%@", v31, v33];
      }

      else
      {
        v34 = [NSString stringWithFormat:@"%@", v31];
      }
    }

    else
    {
      v35 = [v9 arrowLabel];

      if (v15)
      {
        v36 = @"CARL";
      }

      else
      {
        v36 = @"MARL";
      }

      if (!v35)
      {
        v34 = [NSString stringWithFormat:@"%@ - %@", v36, v19];
        goto LABEL_34;
      }

      v23 = [v9 arrowLabel];
      v34 = [NSString stringWithFormat:@"%@ - %@\n%@", v36, v19, v23];
    }

LABEL_34:
    v37 = [v4 labelMarker];
    v38 = [v37 arWalkingFeature];
    v39 = [v4 isOccluded];
    v40 = v38;
    v41 = [GEOFeatureStyleAttributes alloc];
    v42 = [v40 type];

    v43 = [v41 initWithAttributes:{65632, v42, 150, 1, 65594, v39, 0}];
    v44 = [(PedestrianARDebugMapAnnotationsTask *)self _iOSMapView];
    v45 = [v44 routeContext];

    v46 = [v45 routeInfo];
    v47 = [v46 route];

    v48 = [[GEORouteMatcher alloc] initWithRoute:v47 auditToken:0];
    [v4 coordinate];
    v50 = v49;
    [v4 coordinate];
    v51 = [v48 closestRouteCoordinateForLocationCoordinate:v50];
    v52 = [[VKRouteEtaDescription alloc] initWithEtaText:v34 etaAdvisoryFeatureStyleAttributes:v43 routeEtaType:6];
    v53 = [[VKRouteRangeAnnotationInfo alloc] initWithEtaDescription:v52 start:v51 end:v51];
    v57 = v53;
    v54 = [NSArray arrayWithObjects:&v57 count:1];
    v55 = [v45 routeInfo];
    [v55 setDebugAnnotations:v54];

    goto LABEL_35;
  }
}

- (id)_iOSMapView
{
  v2 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
  v3 = [v2 mapView];
  v4 = [v3 _mapLayer];

  return v4;
}

- (void)_stopProvidingARAnnotations
{
  v3 = sub_1008F5C9C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v9 = 134349056;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Stop providing AR annotations", &v9, 0xCu);
  }

  v4 = +[MapsRadarController sharedInstance];
  [v4 removeAttachmentProvider:self];

  [(PedestrianARDebugMapAnnotationsTask *)self setRenderingView:0];
  v5 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
  [v5 removeFromSuperview];

  [(PedestrianARDebugMapAnnotationsTask *)self setDebugWarningBannerButton:0];
  v6 = [(PedestrianARDebugMapAnnotationsTask *)self _iOSMapView];
  [v6 removeCustomFeatureDataSource:self];
  v7 = [v6 routeContext];
  v8 = [v7 routeInfo];
  [v8 setDebugAnnotations:0];
}

- (void)_startProvidingARAnnotationsIfNecessary
{
  if ([(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations])
  {
    v3 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];

    if (v3)
    {
      v4 = sub_1008F5C9C();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v101 = self;
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
        v101 = self;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}p] Starting to provide AR annotations now", buf, 0xCu);
      }

      v11 = [(PedestrianARDebugMapAnnotationsTask *)self _iOSMapView];
      [v11 addCustomFeatureDataSource:self];

      v12 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      v98 = [v12 currentIOSBasedContext];

      v13 = [PedestrianARRenderingView alloc];
      v14 = [v98 guidanceObserver];
      v15 = [(PedestrianARDebugMapAnnotationsTask *)self navigationService];
      v16 = [(PedestrianARRenderingView *)v13 initWithGuidanceObserver:v14 navigationService:v15];
      [(PedestrianARDebugMapAnnotationsTask *)self setRenderingView:v16];

      v17 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      v18 = [v17 mapViewDelegate];
      [v18 registerObserver:self];

      v19 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      v20 = [v19 mapViewDelegate];
      v21 = [v20 mapView];
      [v21 setARMode:3];

      v22 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      v23 = [v22 mapViewDelegate];
      v24 = [v23 mapView];
      [v24 setARSceneType:0];

      v25 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      v26 = [v25 mapViewDelegate];
      v27 = [v26 mapView];
      [v27 setRendersInBackground:1];

      v28 = [(PedestrianARDebugMapAnnotationsTask *)self navigationSession];
      v29 = [v28 currentRouteCollection];
      v30 = [v29 currentRoute];
      v31 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      [v31 setRoute:v30];

      v32 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      [v32 setShouldGenerateFeatures:1];

      v33 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      [v33 setShouldShowFeatures:1];

      v34 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      v35 = [v34 mapViewDelegate];
      v36 = [v35 mapView];
      [v36 setOpacity:0.0];

      v37 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      v38 = [v37 view];
      v39 = [v38 layer];
      v40 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      v41 = [v40 mapViewDelegate];
      v42 = [v41 mapView];
      [v39 insertSublayer:v42 atIndex:0];

      v43 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      v44 = [v43 view];
      v45 = [v44 window];
      [v45 frame];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v54 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
      v55 = [v54 mapViewDelegate];
      v56 = [v55 mapView];
      [v56 setBounds:{v47, v49, v51, v53}];

      v57 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(PedestrianARDebugMapAnnotationsTask *)self setDebugWarningBannerButton:v57];

      v58 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      [v58 setTranslatesAutoresizingMaskIntoConstraints:0];

      v59 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      v60 = [UIAction actionWithHandler:&stru_10162E258];
      [v59 addAction:v60 forControlEvents:64];

      v61 = +[UIColor redColor];
      v62 = [v61 colorWithAlphaComponent:0.600000024];
      v63 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      [v63 setBackgroundColor:v62];

      v64 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      [v64 setTitle:@"AR nav label simulation active. Tap to file radars." forState:0];

      v65 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      v66 = [v65 titleLabel];
      [v66 setAdjustsFontSizeToFitWidth:1];

      v67 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      v68 = [v67 titleLabel];
      [v68 setMinimumScaleFactor:0.0];

      v69 = +[UIColor whiteColor];
      v70 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      v71 = [v70 titleLabel];
      [v71 setTextColor:v69];

      v72 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      v73 = [v72 layer];
      [v73 setZPosition:3.40282347e38];

      v74 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      v75 = [v74 view];
      v76 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      [v75 addSubview:v76];

      v97 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      v95 = [v97 leadingAnchor];
      v96 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      v94 = [v96 view];
      v93 = [v94 leadingAnchor];
      v92 = [v95 constraintEqualToAnchor:v93];
      v99[0] = v92;
      v91 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      v89 = [v91 trailingAnchor];
      v90 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      v88 = [v90 view];
      v87 = [v88 trailingAnchor];
      v77 = [v89 constraintEqualToAnchor:v87];
      v99[1] = v77;
      v78 = [(PedestrianARDebugMapAnnotationsTask *)self debugWarningBannerButton];
      v79 = [v78 topAnchor];
      v80 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
      v81 = [v80 view];
      v82 = [v81 safeAreaLayoutGuide];
      v83 = [v82 topAnchor];
      v84 = [v79 constraintEqualToAnchor:v83];
      v99[2] = v84;
      v85 = [NSArray arrayWithObjects:v99 count:3];
      [NSLayoutConstraint activateConstraints:v85];

      v86 = [(PedestrianARDebugMapAnnotationsTask *)self observers];
      [v86 globalFeaturesDidChangeForDataSource:self];

      v4 = v98;
    }
  }

  else
  {
    v6 = sub_10006D178();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v101 = "[PedestrianARDebugMapAnnotationsTask _startProvidingARAnnotationsIfNecessary]";
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
        v101 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v4 = sub_1008F5C9C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v101 = self;
      v5 = "[%{public}p] Cannot provide AR annotations";
      goto LABEL_13;
    }
  }
}

- (BOOL)_shouldProvideDebugAnnotations
{
  v3 = [(PedestrianARDebugMapAnnotationsTask *)self chromeViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(PedestrianARDebugMapAnnotationsTask *)self iosBasedChromeViewController];
    v5 = [v4 currentIOSBasedContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(PedestrianARDebugMapAnnotationsTask *)self navigationSession];
      if (v6)
      {
        v7 = [(PedestrianARDebugMapAnnotationsTask *)self navigationSession];
        v8 = [v7 currentTransportType] == 2;
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

- (void)setChromeViewController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  if (WeakRetained != v4)
  {
    v6 = sub_1008F5C9C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_loadWeakRetained(&self->_chromeViewController);
      v13 = 134349570;
      v14 = self;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Transitioning from chrome VC (%@) to (%@)", &v13, 0x20u);
    }

    v8 = objc_loadWeakRetained(&self->_chromeViewController);
    v9 = [v8 mapView];
    v10 = [v9 _mapLayer];
    [v10 removeCustomFeatureDataSource:self];

    v11 = objc_loadWeakRetained(&self->_chromeViewController);
    [v11 removeContextStackObserver:self];

    v12 = objc_storeWeak(&self->_chromeViewController, v4);
    [v4 addContextStackObserver:self];

    [(PedestrianARDebugMapAnnotationsTask *)self _stopProvidingARAnnotations];
    if ([(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations])
    {
      [(PedestrianARDebugMapAnnotationsTask *)self _startProvidingARAnnotationsIfNecessary];
    }
  }
}

- (void)setNavigationSession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_navigationSession);

  if (WeakRetained != v4)
  {
    v6 = sub_1008F5C9C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_loadWeakRetained(&self->_navigationSession);
      v10 = 134349570;
      v11 = self;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Transitioning from navigation session (%@) to (%@)", &v10, 0x20u);
    }

    v8 = objc_loadWeakRetained(&self->_navigationSession);
    [v8 unregisterObserver:self];

    v9 = objc_storeWeak(&self->_navigationSession, v4);
    [v4 registerObserver:self];

    if ([(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations])
    {
      [(PedestrianARDebugMapAnnotationsTask *)self _startProvidingARAnnotationsIfNecessary];
    }
  }
}

- (BOOL)isProvidingARAnnotations
{
  v2 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
  v3 = v2 != 0;

  return v3;
}

- (VKMapView)mapView
{
  if ([(PedestrianARDebugMapAnnotationsTask *)self _shouldProvideDebugAnnotations])
  {
    v3 = [(PedestrianARDebugMapAnnotationsTask *)self renderingView];
    v4 = [v3 mapViewDelegate];
    v5 = [v4 mapView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  v3 = sub_1008F5C9C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = PedestrianARDebugMapAnnotationsTask;
  [(PedestrianARDebugMapAnnotationsTask *)&v4 dealloc];
}

- (PedestrianARDebugMapAnnotationsTask)initWithPlatformController:(id)a3 navigationService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
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

  if (!v7)
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

    objc_storeWeak(&v8->_platformController, v6);
    objc_storeStrong(&v8->_navigationService, a4);
    v10 = +[NSNotificationCenter defaultCenter];
    WeakRetained = objc_loadWeakRetained(&v8->_platformController);
    [v10 addObserver:v8 selector:"platformControllerDidChangeChromeViewControllerNotification:" name:@"PlatformControllerDidChangeChromeViewControllerNotification" object:WeakRetained];

    v12 = objc_loadWeakRetained(&v8->_platformController);
    v13 = [v12 chromeViewController];
    [(PedestrianARDebugMapAnnotationsTask *)v8 setChromeViewController:v13];

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