@interface OfflineRegionSelectorContext
- (AutocompletePOIMapDownloadHandler)downloadDelegate;
- (BOOL)downloadSelectedOfflineRegion;
- (BOOL)wantsRouteAnnotationsControl;
- (ChromeViewController)chromeViewController;
- (OfflineRegionSelectorContext)initWithRegion:(id)region name:(id)name;
- (OfflineRegionSelectorContext)initWithSubscriptionInfo:(id)info;
- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration;
- (id)desiredCards;
- (void)_commonInit;
- (void)_restoreMapView;
- (void)_saveMapViewConfiguration;
- (void)_setMapRegion:(id)region animated:(BOOL)animated completion:(id)completion;
- (void)_setupMapView;
- (void)_updateZoomRange;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)didAdjustSelectedRegion;
- (void)didAdjustSelectorCropHandle;
- (void)dismiss;
- (void)mapInsetsDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setChromeViewController:(id)controller;
- (void)willAdjustSelectedRegion;
@end

@implementation OfflineRegionSelectorContext

- (AutocompletePOIMapDownloadHandler)downloadDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadDelegate);

  return WeakRetained;
}

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection
{
  v9 = [(OfflineRegionSelectorViewController *)self->_offlineRegionSelectorViewController downloadable:view];
  if (gesture)
  {
    if (gesture != 1)
    {
      return;
    }

    v10 = 386;
  }

  else
  {
    v10 = 377;
  }

  if (v9)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [GEOAPPortal captureUserAction:v10 target:89 value:v11];
}

- (void)didAdjustSelectorCropHandle
{
  if ([(OfflineRegionSelectorViewController *)self->_offlineRegionSelectorViewController downloadable])
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  [GEOAPPortal captureUserAction:386 target:89 value:v2];
}

- (void)didAdjustSelectedRegion
{
  v3 = self->_mapRegion;
  host = [(OfflineRegionSelectorOverlay *)self->_overlay host];

  if (host)
  {
    currentMapRegion = [(OfflineRegionSelectorOverlay *)self->_overlay currentMapRegion];

    v3 = currentMapRegion;
  }

  v6 = (self->_regionSizeCheckGeneration + 1);
  self->_regionSizeCheckGeneration = v6;
  [(GEOCancellable *)self->_currentSizeEstimationRequest cancel];
  objc_initWeak(&location, self);
  v7 = +[MapsOfflineUIHelper sharedHelper];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1009D2698;
  v17[3] = &unk_1016313E8;
  objc_copyWeak(v18, &location);
  v18[1] = v6;
  v17[4] = self;
  v8 = [v7 determineEstimatedSizeForSubscriptionWithRegion:v3 completionHandler:v17];
  currentSizeEstimationRequest = self->_currentSizeEstimationRequest;
  self->_currentSizeEstimationRequest = v8;

  GEOConfigGetDouble();
  v11 = v10;
  if (v10 > 0.0)
  {
    v12 = &_dispatch_main_q;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1009D27BC;
    v15[3] = &unk_10164F5F8;
    objc_copyWeak(v16, &location);
    v16[1] = v6;
    v16[2] = *&v11;
    v13 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v15 block:v11];
    updateRegionSizeTimeoutTimer = self->_updateRegionSizeTimeoutTimer;
    self->_updateRegionSizeTimeoutTimer = v13;

    objc_destroyWeak(v16);
  }

  objc_destroyWeak(v18);
  objc_destroyWeak(&location);
}

- (void)willAdjustSelectedRegion
{
  *&self->_changedRegion = 1;
  [(GCDTimer *)self->_updateRegionSizeTimeoutTimer invalidate];
  updateRegionSizeTimeoutTimer = self->_updateRegionSizeTimeoutTimer;
  self->_updateRegionSizeTimeoutTimer = 0;
}

- (BOOL)downloadSelectedOfflineRegion
{
  if ([(OfflineRegionSelectorContext *)self shouldUseSessionlessAnalytics])
  {
    v3 = 368;
  }

  else
  {
    v3 = 372;
  }

  if (MapsFeature_IsEnabled_StandaloneWatchOffline() && GEOConfigGetBOOL() && (+[NRPairedDeviceRegistry sharedInstance](NRPairedDeviceRegistry, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), [v4 getActivePairedDeviceExcludingAltAccount], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    v6 = [[NSUUID alloc] initWithUUIDString:@"3B512C1E-F8D5-4FE7-B109-1AD8EF7F924D"];
    v7 = [v5 supportsCapability:v6];

    if (v7)
    {
      v8 = @"watch pending";
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

  [GEOAPPortal captureUserAction:v3 target:89 value:v8];
  if (self->_determinedSupportForCurrentRegion)
  {
    v9 = +[MapsOfflineUIHelper sharedHelper];
    v10 = [v9 alertControllerForInsufficientDiskSpaceForDownloadSize:self->_estimatedSizeInBytes];

    v11 = v10 == 0;
    if (v10)
    {
      v12 = sub_10003D9F4();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        estimatedSizeInBytes = self->_estimatedSizeInBytes;
        LODWORD(buf) = 134217984;
        *(&buf + 4) = estimatedSizeInBytes;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Displaying insufficient disk space alert for attempted download of %{bytes}llu", &buf, 0xCu);
      }

      chromeViewController = [(OfflineRegionSelectorContext *)self chromeViewController];
      [chromeViewController _maps_topMostPresentViewController:v10 animated:1 completion:0];

      goto LABEL_43;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v77 = 0x2020000000;
    v78 = 0;
    currentMapRegion = [(OfflineRegionSelectorOverlay *)self->_overlay currentMapRegion];
    objc_initWeak(&location, self);
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_1009D3078;
    v71[3] = &unk_101631320;
    objc_copyWeak(&v74, &location);
    p_buf = &buf;
    v19 = currentMapRegion;
    v72 = v19;
    v20 = objc_retainBlock(v71);
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_1009D31B0;
    v68[3] = &unk_101631348;
    v68[4] = self;
    v21 = v19;
    v69 = v21;
    v22 = v20;
    v70 = v22;
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1009D32B0;
    v65[3] = &unk_101631398;
    v65[4] = self;
    v23 = objc_retainBlock(v68);
    v66 = v23;
    v67 = &buf;
    v24 = objc_retainBlock(v65);
    if (self->_subscriptionInfo)
    {
      (v23[2])(v23, self->_displayName);
LABEL_42:

      objc_destroyWeak(&v74);
      objc_destroyWeak(&location);

      _Block_object_dispose(&buf, 8);
LABEL_43:

      return v11;
    }

    v25 = [(NSString *)self->_displayName length]!= 0;
    if (self->_changedRegion)
    {
      v26 = v21;
      GEOMapRectForMapRegion();
      rect1 = v27;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v34 = self->_mapRegion;
      GEOMapRectForMapRegion();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v79.origin.x = v29;
      v79.origin.y = v31;
      v79.size.width = rect1;
      v79.size.height = v33;
      v81.origin.x = v36;
      v81.origin.y = v38;
      v81.size.width = v40;
      v81.size.height = v42;
      v80 = MKMapRectIntersection(v79, v81);
      width = v80.size.width;
      height = v80.size.height;
      if (v80.origin.x == MKMapRectNull.origin.x && v80.origin.y == MKMapRectNull.origin.y)
      {
        goto LABEL_27;
      }

      v25 = 0;
      v46 = rect1 * v33;
      if (v46 > 0.0)
      {
        v47 = v40 * v42;
        if (v47 > 0.0)
        {
          GEOConfigGetDouble();
          if (fmin(width * height / v46, width * height / v47) < 1.0 - v48)
          {
LABEL_27:
            v45 = sub_10003D9F4();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              *v64 = 0;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Region changed significantly. Attempting to fetch a new suggested region name", v64, 2u);
            }

            v25 = 0;
            goto LABEL_38;
          }

          v25 = 0;
        }
      }
    }

    if ([(NSString *)self->_displayName length])
    {
      (v24[2])(v24, self->_displayName);
      goto LABEL_42;
    }

    v45 = sub_10003D9F4();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Region had no original display name. Attempting to fetch a suggested region name", v64, 2u);
    }

LABEL_38:

    if ([(NSString *)self->_displayName length])
    {
      displayName = self->_displayName;
    }

    else
    {
      displayName = 0;
    }

    v50 = displayName;
    v51 = +[GEOMapService sharedService];
    v52 = [v51 ticketForOfflineRegionNameSuggestionWithRegion:v21 traits:0];

    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_1009D3434;
    v59[3] = &unk_1016313C0;
    v63 = v25;
    v53 = v50;
    v60 = v53;
    v61 = v21;
    v62 = v24;
    GEOConfigGetDouble();
    v55 = v54;
    v56 = &_dispatch_main_q;
    [v52 submitWithHandler:v59 timeout:v55 networkActivity:0 queue:&_dispatch_main_q];

    goto LABEL_42;
  }

  v15 = sub_10003D9F4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Can not download region until size/support has been determined", &buf, 2u);
  }

  if ([(OfflineRegionSelectorViewController *)self->_offlineRegionSelectorViewController state]== 1)
  {
    updateRegionSizeTimeoutTimer = self->_updateRegionSizeTimeoutTimer;
    if (updateRegionSizeTimeoutTimer)
    {
      [(GCDTimer *)updateRegionSizeTimeoutTimer invalidate];
      v17 = self->_updateRegionSizeTimeoutTimer;
      self->_updateRegionSizeTimeoutTimer = 0;

      [(OfflineRegionSelectorViewController *)self->_offlineRegionSelectorViewController setState:0];
    }
  }

  return 0;
}

- (void)_restoreMapView
{
  offlineMapPreviewModernMapToken = self->_offlineMapPreviewModernMapToken;
  self->_offlineMapPreviewModernMapToken = 0;

  iosChromeViewController = [(OfflineRegionSelectorContext *)self iosChromeViewController];
  displayedViewMode = [iosChromeViewController displayedViewMode];
  savedViewMode = self->_savedViewMode;

  if (displayedViewMode != savedViewMode)
  {
    iosChromeViewController2 = [(OfflineRegionSelectorContext *)self iosChromeViewController];
    [iosChromeViewController2 updateViewMode:self->_savedViewMode animated:0];
  }

  chromeViewController = [(OfflineRegionSelectorContext *)self chromeViewController];
  mapView = [chromeViewController mapView];

  _mapLayer = [mapView _mapLayer];
  [_mapLayer setOfflineRegionSelector:0];

  [(MapViewRestoreProperties *)self->_savedMapViewProperties applyToMapView:mapView animated:0];
}

- (void)_setMapRegion:(id)region animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  regionCopy = region;
  completionCopy = completion;
  chromeViewController = [(OfflineRegionSelectorContext *)self chromeViewController];
  mapView = [chromeViewController mapView];

  GEOMapRectForMapRegion();
  [mapView mapRectThatFits:? edgePadding:?];
  [mapView _setVisibleMapRect:animatedCopy animated:completionCopy completionHandler:?];
}

- (void)_updateZoomRange
{
  chromeViewController = [(OfflineRegionSelectorContext *)self chromeViewController];
  mapView = [chromeViewController mapView];

  [mapView bounds];
  v4 = v3;
  v6 = v5;
  [mapView _edgeInsets];
  v11 = 3052640.66;
  if (v4 - (v9 + v10) > 0.0 && v6 - (v7 + v8) > 0.0 && GEOConfigGetBOOL())
  {
    GEOConfigGetDouble();
    CLLocationCoordinate2DMake(0.0, 0.0);
    MKMapRectMakeWithRadialDistance();
    _MKMapRectThatFits();
    0x4041800000000000 = [MKMapCamera _cameraLookingAtMapRect:0x4041800000000000 forViewSize:0x4041800000000000, 0x4041800000000000, 0x4041800000000000];
    [0x4041800000000000 centerCoordinateDistance];
    v11 = 95394.9663;
    if (v13 > 95394.9663)
    {
      [0x4041800000000000 centerCoordinateDistance];
      v11 = v14;
    }
  }

  v15 = [[MKMapCameraZoomRange alloc] initWithMinCenterCoordinateDistance:95394.9663 maxCenterCoordinateDistance:v11];
  [v15 _setBouncesZoom:1];
  [mapView setCameraZoomRange:v15];
}

- (void)_setupMapView
{
  chromeViewController = [(OfflineRegionSelectorContext *)self chromeViewController];
  mapView = [chromeViewController mapView];

  iosChromeViewController = [(OfflineRegionSelectorContext *)self iosChromeViewController];
  v5 = [iosChromeViewController acquireModernMapTokenForReason:4];
  offlineMapPreviewModernMapToken = self->_offlineMapPreviewModernMapToken;
  self->_offlineMapPreviewModernMapToken = v5;

  iosChromeViewController2 = [(OfflineRegionSelectorContext *)self iosChromeViewController];
  if ([iosChromeViewController2 displayedViewMode])
  {
    iosChromeViewController3 = [(OfflineRegionSelectorContext *)self iosChromeViewController];
    displayedViewMode = [iosChromeViewController3 displayedViewMode];

    if (displayedViewMode == 3)
    {
      goto LABEL_5;
    }

    iosChromeViewController2 = [(OfflineRegionSelectorContext *)self iosChromeViewController];
    [iosChromeViewController2 updateViewMode:0 animated:0];
  }

LABEL_5:
  [mapView setRotateEnabled:0];
  [mapView setPitchEnabled:0];
  [mapView _setOfflineRegionVisibility:1];
  _mapLayer = [mapView _mapLayer];
  [_mapLayer setOfflineRegionSelector:1];

  [(OfflineRegionSelectorContext *)self _updateZoomRange];
  [(OfflineRegionSelectorContext *)self _setMapRegion:self->_mapRegion animated:0];
  chromeViewController2 = [(OfflineRegionSelectorContext *)self chromeViewController];
  overlayController = [chromeViewController2 overlayController];
  overlay = self->_overlay;
  chromeViewController3 = [(OfflineRegionSelectorContext *)self chromeViewController];
  viewportLayoutGuide = [chromeViewController3 viewportLayoutGuide];
  [overlayController addOverlay:overlay inLayoutGuide:viewportLayoutGuide];
}

- (void)_saveMapViewConfiguration
{
  chromeViewController = [(OfflineRegionSelectorContext *)self chromeViewController];
  mapView = [chromeViewController mapView];

  v4 = [[MapViewRestoreProperties alloc] initFromMapView:mapView];
  savedMapViewProperties = self->_savedMapViewProperties;
  self->_savedMapViewProperties = v4;

  iosChromeViewController = [(OfflineRegionSelectorContext *)self iosChromeViewController];
  self->_savedViewMode = [iosChromeViewController displayedViewMode];
}

- (void)dismiss
{
  iosChromeViewController = [(OfflineRegionSelectorContext *)self iosChromeViewController];
  v4 = [iosChromeViewController isCurrentContext:self];

  iosChromeViewController2 = [(OfflineRegionSelectorContext *)self iosChromeViewController];
  v6 = iosChromeViewController2;
  if (v4)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1009D3E88;
    v14[3] = &unk_101661B18;
    v14[4] = self;
    [iosChromeViewController2 popContextAnimated:1 completion:v14];

    dismissalBlock = [(OfflineRegionSelectorContext *)self dismissalBlock];

    if (dismissalBlock)
    {
      if (self->_didDownloadRegion)
      {
        downloadedMapRegion = self->_downloadedMapRegion;
      }

      else
      {
        downloadedMapRegion = 0;
      }

      v11 = downloadedMapRegion;
      dismissalBlock2 = [(OfflineRegionSelectorContext *)self dismissalBlock];
      (dismissalBlock2)[2](dismissalBlock2, v11);
    }
  }

  else
  {
    contexts = [iosChromeViewController2 contexts];
    v13 = [contexts mutableCopy];

    [v13 removeObject:self];
    iosChromeViewController3 = [(OfflineRegionSelectorContext *)self iosChromeViewController];
    [iosChromeViewController3 setContexts:v13 animated:0 completion:0];
  }
}

- (RouteAnnotationsConfiguration)routeAnnotationsConfiguration
{
  route = [(OfflineRegionSelectorContext *)self route];

  if (route)
  {
    v4 = [RouteAnnotationsMutableConfiguration alloc];
    route2 = [(OfflineRegionSelectorContext *)self route];
    v6 = [(RouteAnnotationsConfiguration *)v4 initWithRoute:route2];

    [(RouteAnnotationsConfiguration *)v6 setRouteTrafficFeaturesActive:0];
    v7 = [(RouteAnnotationsMutableConfiguration *)v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)wantsRouteAnnotationsControl
{
  route = [(OfflineRegionSelectorContext *)self route];
  v3 = route != 0;

  return v3;
}

- (void)mapInsetsDidChangeAnimated:(BOOL)animated
{
  changedRegion = self->_changedRegion;
  currentMapRegion = [(OfflineRegionSelectorOverlay *)self->_overlay currentMapRegion];
  [(OfflineRegionSelectorContext *)self _setMapRegion:currentMapRegion animated:0];
  [(OfflineRegionSelectorOverlay *)self->_overlay setMapRegion:currentMapRegion];
  [(OfflineRegionSelectorContext *)self _updateZoomRange];
  self->_changedRegion = changedRegion;
}

- (id)desiredCards
{
  v3 = +[NSMutableArray array];
  v4 = v3;
  if (self->_offlineRegionSelectorViewController)
  {
    [v3 addObject:?];
  }

  return v4;
}

- (void)setChromeViewController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_storeWeak(&self->_chromeViewController, controllerCopy);
  [(OfflineRegionSelectorOverlay *)self->_overlay setMapViewProvider:controllerCopy];
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  nextTopContext = [controllerCopy nextTopContext];
  objc_opt_class();
  self->_aboutToBecomeBaseMode = objc_opt_isKindOfClass() & 1;
  [(GEOCancellable *)self->_currentSizeEstimationRequest cancel];
  currentSizeEstimationRequest = self->_currentSizeEstimationRequest;
  self->_currentSizeEstimationRequest = 0;

  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1009D4314;
  v12[3] = &unk_101661B98;
  objc_copyWeak(&v13, &location);
  [animationCopy addPreparation:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1009D4394;
  v10[3] = &unk_1016619A8;
  objc_copyWeak(&v11, &location);
  [animationCopy addCompletion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1009D4568;
  v10[3] = &unk_101661B98;
  objc_copyWeak(&v11, &location);
  [animationCopy addPreparation:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1009D45AC;
  v8[3] = &unk_1016619A8;
  objc_copyWeak(&v9, &location);
  [animationCopy addCompletion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_commonInit
{
  v3 = objc_alloc_init(OfflineRegionSelectorViewController);
  offlineRegionSelectorViewController = self->_offlineRegionSelectorViewController;
  self->_offlineRegionSelectorViewController = v3;

  [(OfflineRegionSelectorViewController *)self->_offlineRegionSelectorViewController setDelegate:self];
  v5 = [[OfflineRegionSelectorOverlay alloc] initWithRegion:self->_mapRegion];
  overlay = self->_overlay;
  self->_overlay = v5;

  v7 = self->_overlay;

  [(OfflineRegionSelectorOverlay *)v7 setRegionSelectorDelegate:self];
}

- (OfflineRegionSelectorContext)initWithSubscriptionInfo:(id)info
{
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = OfflineRegionSelectorContext;
  v6 = [(OfflineRegionSelectorContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionInfo, info);
    subscription = [infoCopy subscription];
    region = [subscription region];
    mapRegion = v7->_mapRegion;
    v7->_mapRegion = region;

    [(OfflineRegionSelectorContext *)v7 _commonInit];
  }

  return v7;
}

- (OfflineRegionSelectorContext)initWithRegion:(id)region name:(id)name
{
  regionCopy = region;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = OfflineRegionSelectorContext;
  v9 = [(OfflineRegionSelectorContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapRegion, region);
    objc_storeStrong(&v10->_displayName, name);
    [(OfflineRegionSelectorContext *)v10 _commonInit];
  }

  return v10;
}

@end