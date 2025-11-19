@interface LookAroundContainerViewController
- (BOOL)_getRatioControls:(double *)a3 scale:(double *)a4 forContentHeightValue:(double)a5;
- (BOOL)_pipHugsLeading;
- (BOOL)_shouldTakePIPViewHeightIntoAccount;
- (BOOL)_shouldTakeSidebarIntoAccount;
- (CGAffineTransform)transformForPIPView:(SEL)a3;
- (CGRect)_sanitizedOriginFrame;
- (CGRect)frameForPIPView;
- (CGRect)lookAroundButtonFrame;
- (CGRect)originFrame;
- (LookAroundContainerViewController)initWithEntryPoint:(id)a3 lookAroundView:(id)a4 showsFullScreen:(BOOL)a5;
- (LookAroundContainerViewControllerAnimationDelegate)animationDelegate;
- (MKMapItem)currentMapItem;
- (NSString)sharingTitle;
- (ShareItemSource)currentShareItemSource;
- (UIEdgeInsets)compassInsets;
- (UIView)passThroughView;
- (double)pipViewWidthIfNeeded;
- (double)sidebarWidthIfNeeded;
- (double)topEdgeInset;
- (id)_createOrReuseLookAroundView:(id)a3 completion:(id)a4;
- (id)_createPlaceCardItemFromMapItem:(id)a3 isMarkedLocation:(BOOL)a4;
- (id)createActivityViewControllerForCurrentContext;
- (id)pipViewController;
- (id)puckViewController;
- (int)_targetForAnalytics;
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)_pipLayout;
- (unint64_t)originalLayoutForViewController:(id)a3;
- (void)_captureActivityCardAnalyticsForUserAction:(int)a3 onTarget:(int)a4;
- (void)_captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5;
- (void)_commonInit;
- (void)_insertPuckViewIntoMapView:(id)a3;
- (void)_removePuckViewFromMapView;
- (void)_reportAnIssue;
- (void)_setModeDidBecomeCurrent;
- (void)_setModeDidResignCurrent;
- (void)_setupForFullScreen;
- (void)_setupForPIP;
- (void)_shareCurrentLocation:(id)a3;
- (void)_showPuckAnimated;
- (void)_showTTRButton:(BOOL)a3;
- (void)_toggleShowingLabels:(BOOL)a3;
- (void)_updateCompassLayout;
- (void)_updateLayoutWithCurrentValue;
- (void)_updateLayoutWithValue:(double)a3;
- (void)_updatePIPLayout;
- (void)_updateTTRButtonState;
- (void)animateFromModeTransition:(id)a3;
- (void)animateToModeTransition:(id)a3;
- (void)animateTransitionToFullScreen:(BOOL)a3;
- (void)contentHeightUpdatedWithValue:(double)a3;
- (void)dealloc;
- (void)dismissTray;
- (void)lookAroundPIPDataCoordinatorDidEndMovingLookAroundView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidStartPanningMapView:(id)a3;
- (void)lookAroundTTRButtonView:(id)a3 didTapTTRButton:(id)a4;
- (void)lookAroundTrayContaineeViewController:(id)a3 didTapToggleLabelsButton:(id)a4;
- (void)lookAroundView:(id)a3 didChangeCameraFrame:(id)a4;
- (void)lookAroundView:(id)a3 didChangeLocationInfo:(id)a4;
- (void)lookAroundView:(id)a3 didDeselectLabelMarker:(id)a4;
- (void)lookAroundView:(id)a3 didSelectLabelMarker:(id)a4;
- (void)lookAroundView:(id)a3 didTapAtPoint:(CGPoint)a4 areaAvailable:(BOOL)a5;
- (void)lookAroundView:(id)a3 didTapLabelMarker:(id)a4;
- (void)lookAroundView:(id)a3 didZoomWithDirection:(int64_t)a4 type:(int64_t)a5;
- (void)lookAroundViewDidPan:(id)a3;
- (void)lookAroundViewDidStartUserInteraction:(id)a3;
- (void)lookAroundViewDidStopUserInteraction:(id)a3;
- (void)lookAroundViewWillChangeLocationInfo:(id)a3;
- (void)mapView:(id)a3 didChangeLookAroundAvailability:(int64_t)a4;
- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 willSelectLabelMarker:(id)a4;
- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5;
- (void)mapViewDidChangeVisibleRegion:(id)a3;
- (void)mapViewDidStartUserInteraction:(id)a3;
- (void)mapViewDidStopUserInteraction:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)popLastViewControllerAnimated:(BOOL)a3;
- (void)prepareForExitWithCompletion:(id)a3;
- (void)presentController:(id)a3 animated:(BOOL)a4 useDefaultContaineeLayout:(BOOL)a5;
- (void)presentTray:(id)a3;
- (void)snapToLayout:(unint64_t)a3;
- (void)updateMapEdgeInsets;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation LookAroundContainerViewController

- (CGRect)originFrame
{
  x = self->_originFrame.origin.x;
  y = self->_originFrame.origin.y;
  width = self->_originFrame.size.width;
  height = self->_originFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)lookAroundButtonFrame
{
  x = self->_lookAroundButtonFrame.origin.x;
  y = self->_lookAroundButtonFrame.origin.y;
  width = self->_lookAroundButtonFrame.size.width;
  height = self->_lookAroundButtonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (LookAroundContainerViewControllerAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

- (id)createActivityViewControllerForCurrentContext
{
  v3 = [(LookAroundContainerViewController *)self currentShareItemSource];
  if (v3)
  {
    v4 = [[MUActivityViewController alloc] initWithShareItem:v3];
    [v4 setActivityControllerDelegate:self];
    if ([(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
    {
      [v4 setOverrideUserInterfaceStyle:2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ShareItemSource)currentShareItemSource
{
  v3 = [(MKLookAroundView *)self->_lookAroundView muninViewState];
  v4 = [v3 cameraFrame];
  v5 = [(LookAroundContainerViewController *)self lookAroundView];
  v6 = [v5 mapItem];
  if (v6)
  {
    v7 = v6;

LABEL_4:
    v9 = [[LookAroundShareItemSource alloc] initWithMapItem:v7 shareStateProvider:self];
    goto LABEL_5;
  }

  v8 = [(LookAroundContainerViewController *)self lookAroundView];
  v7 = [v8 revGeoMapItem];

  if (v7)
  {
    goto LABEL_4;
  }

  [v4 latitude];
  v12 = v11;
  [v4 longitude];
  v18 = CLLocationCoordinate2DMake(v12, v13);
  latitude = v18.latitude;
  longitude = v18.longitude;
  if (CLLocationCoordinate2DIsValid(v18))
  {
    v16 = [[MKPlacemark alloc] initWithCoordinate:&__NSDictionary0__struct addressDictionary:{latitude, longitude}];
    v7 = [[MKMapItem alloc] initWithPlacemark:v16];

    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (int)_targetForAnalytics
{
  v3 = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen];
  if (isKindOfClass)
  {
    v6 = 1706;
  }

  else
  {
    v6 = 1702;
  }

  if (isKindOfClass)
  {
    v7 = 1707;
  }

  else
  {
    v7 = 1700;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (void)_captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v23 = a5;
  v8 = [(LookAroundContainerViewController *)self dataCoordinator];
  v9 = [v8 mapView];

  v10 = [(LookAroundContainerViewController *)self lookAroundView];
  [v9 centerCoordinate];
  v13 = [[GEOLocation alloc] initWithLatitude:v11 longitude:v12];
  v14 = [v9 camera];
  [v14 heading];
  v16 = v15;
  [v9 _zoomLevel];
  v18 = v17;
  v19 = [v10 visiblePlaceMUIDs];
  v20 = [v19 count];
  if ([v10 showsRoadLabels])
  {
    v21 = 1;
  }

  else
  {
    v21 = [v10 showsPointLabels];
  }

  LOBYTE(v22) = v21;
  [GEOAPPortal captureLookAroundUserAction:v6 onTarget:v5 eventValue:v23 location:v13 heading:v16 zoom:v20 numberPoisInView:v18 labelingShown:v22];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_10192FCB8 == a6)
  {
    [(LookAroundContainerViewController *)self _updateTTRButtonState:a3];
  }
}

- (void)_updateTTRButtonState
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"__internal__HideTapToRadarInMunin"];

  ttrButtonView = self->_ttrButtonView;

  [(LookAroundTTRButtonView *)ttrButtonView setHidden:v4];
}

- (id)_createPlaceCardItemFromMapItem:(id)a3 isMarkedLocation:(BOOL)a4
{
  if (a4)
  {
    v4 = a3;
    v5 = [[SearchResult alloc] initWithMapItem:v4 searchResultType:3 resultIndex:0];

    v6 = [[PlaceCardItem alloc] initWithSearchResult:v5];
  }

  else
  {
    v5 = a3;
    v6 = [[PlaceCardItem alloc] initWithMapItem:v5];
  }

  v7 = v6;

  return v7;
}

- (void)_setModeDidResignCurrent
{
  self->_modeIsCurrent = 0;
  if (!self->_containerIsVisible)
  {
    [(LookAroundContainerViewController *)self _removePuckViewFromMapView];
  }
}

- (void)_setModeDidBecomeCurrent
{
  self->_modeIsCurrent = 1;
  if (self->_containerIsVisible)
  {
    v5 = [(ContainerViewController *)self chromeViewController];
    v4 = [v5 mapView];
    [(LookAroundContainerViewController *)self _insertPuckViewIntoMapView:v4];
  }
}

- (void)_removePuckViewFromMapView
{
  v3 = [(LookAroundContainerViewController *)self puckViewController];
  [v3 willMoveToParentViewController:0];
  v2 = [v3 view];
  [v2 removeFromSuperview];

  [v3 removeFromParentViewController];
}

- (void)_insertPuckViewIntoMapView:(id)a3
{
  v4 = a3;
  v5 = [(LookAroundContainerViewController *)self puckViewController];
  v6 = [(ContainerViewController *)self chromeViewController];
  [v6 addChildViewController:v5];

  v7 = [v5 view];
  [v4 _insertSubviewBelowAnnotationContainerView:v7];

  v8 = [(ContainerViewController *)self chromeViewController];
  [v5 didMoveToParentViewController:v8];

  v9 = [v5 view];
  v18 = [v9 centerXAnchor];
  v10 = [(OverlayContainerViewController *)self overlayView];
  v11 = [v10 centerXAnchor];
  v12 = [v18 constraintEqualToAnchor:v11];
  v19[0] = v12;
  v13 = [v9 centerYAnchor];
  v14 = [(OverlayContainerViewController *)self overlayView];
  v15 = [v14 centerYAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v19[1] = v16;
  v17 = [NSArray arrayWithObjects:v19 count:2];
  [NSLayoutConstraint activateConstraints:v17];
}

- (BOOL)_shouldTakeSidebarIntoAccount
{
  v3 = [(ContainerViewController *)self containerStyle];
  v4 = (v3 > 7) | (0x1Cu >> v3);
  v5 = [(ContainerViewController *)self containerStyle];
  v6 = ((v5 > 7) | (0x5Cu >> v5)) & ![(ContainerViewController *)self chromeHidden];
  if ((v4 & 1) != 0 && v6)
  {
    v7 = [(ContainerViewController *)self currentViewController];
    objc_opt_class();
    LOBYTE(v6) = objc_opt_isKindOfClass();
  }

  return v6 & 1;
}

- (BOOL)_shouldTakePIPViewHeightIntoAccount
{
  v3 = [(ContainerViewController *)self containerStyle];
  v4 = v3 < 8;
  v5 = 0xE3u >> v3;
  v6 = [(ContainerViewController *)self containerStyle]== 1;
  v7 = [(ContainerViewController *)self containerStyle];
  v8 = (v7 > 7) | (0x5Cu >> v7);
  v9 = [(LookAroundContainerViewController *)self _shouldTakeSidebarIntoAccount];
  v10 = v6 | v9;
  v11 = (v4 & v5 & v8 ^ 1) & v10;
  if ((v4 & v5) == 0)
  {
    v11 = v10;
  }

  if ((v4 & v5 & 1) == 0 && (v9 & 1) == 0)
  {
    v12 = [(LookAroundContainerViewController *)self view];
    [v12 bounds];
    v14 = v13;
    v16 = v15;

    sub_100019A44();
    v17 = [(LookAroundPIPViewController *)self->_pipViewController view];
    [v17 bounds];
    UIRectInset();
    v19 = v18;
    v21 = v20;

    v11 = v10;
    if (v16 * 1.20000005 * (v14 - v19) > (v16 - v21) * v14)
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (void)_shareCurrentLocation:(id)a3
{
  v10 = a3;
  [(LookAroundContainerViewController *)self _captureActivityCardAnalyticsForUserAction:6013 onTarget:1701];
  v4 = [(LookAroundContainerViewController *)self createActivityViewControllerForCurrentContext];
  if (v4)
  {
    v5 = +[MKSystemController sharedInstance];
    v6 = [v5 userInterfaceIdiom];

    if (v6)
    {
      v7 = [(LookAroundContainerViewController *)self _popoverController];
      if (v7)
      {

        v8 = 3;
      }

      else if ([(LookAroundContainerViewController *)self _isInPopoverPresentation])
      {
        v8 = 3;
      }

      else
      {
        v8 = 7;
      }

      [v4 setModalPresentationStyle:v8];
    }

    v9 = [v4 popoverPresentationController];
    [v9 setPermittedArrowDirections:15];
    [v9 setSourceView:v10];
    [v10 bounds];
    [v9 setSourceRect:?];
    [(LookAroundContainerViewController *)self _maps_topMostPresentViewController:v4 animated:1 completion:0];
  }
}

- (CGRect)_sanitizedOriginFrame
{
  if (sub_10000FA08(self) == 5)
  {
    [(LookAroundContainerViewController *)self frameForPIPView];
    x = v3;
    y = v5;
    width = v7;
    height = v9;
  }

  else
  {
    p_originFrame = &self->_originFrame;
    x = self->_originFrame.origin.x;
    y = self->_originFrame.origin.y;
    width = self->_originFrame.size.width;
    height = self->_originFrame.size.height;
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    if (CGRectIsEmpty(v35))
    {
      v12 = [(LookAroundContainerViewController *)self view];
      [v12 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v21 = v18 / v20;
      height = 1.0;
      if (v18 / v20 <= 1.0)
      {
        width = 1.0;
        if (v21 > 0.0)
        {
          height = 1.0 / v21;
        }
      }

      else
      {
        width = v18 / v20;
      }

      v36.origin.x = v14;
      v36.origin.y = v16;
      v36.size.width = v18;
      v36.size.height = v20;
      MidX = CGRectGetMidX(v36);
      v23 = v20;
      y = 0.0;
      x = 0.0;
      if (MidX > width * 0.5)
      {
        v24 = v14;
        v25 = v16;
        v26 = v18;
        v27 = CGRectGetMidX(*(&v23 - 3));
        v23 = v20;
        x = v27 - width * 0.5;
      }

      v28 = v14;
      v29 = v16;
      v30 = v18;
      if (CGRectGetMidY(*(&v23 - 3)) > height * 0.5)
      {
        v37.origin.x = v14;
        v37.origin.y = v16;
        v37.size.width = v18;
        v37.size.height = v20;
        y = CGRectGetMidY(v37) - height * 0.5;
      }

      p_originFrame->origin.x = x;
      p_originFrame->origin.y = y;
      p_originFrame->size.width = width;
      p_originFrame->size.height = height;
    }
  }

  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)_reportAnIssue
{
  [(LookAroundContainerViewController *)self _captureActivityCardAnalyticsForUserAction:5013 onTarget:1701];
  v3 = [RAPLookAroundContextImpl alloc];
  v4 = [(LookAroundContainerViewController *)self lookAroundView];
  v7 = [(RAPLookAroundContextImpl *)v3 initWithLookAroundView:v4];

  v5 = [(LookAroundContainerViewController *)self _maps_mapsSceneDelegate];
  v6 = [v5 rapPresenter];
  [v6 presentLookAroundRAPWithContext:v7 completion:0];
}

- (void)_toggleShowingLabels:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = 6067;
  }

  else
  {
    v5 = 6066;
  }

  [(LookAroundContainerViewController *)self _captureActivityCardAnalyticsForUserAction:v5 onTarget:1701];
  v6 = [(LookAroundContainerViewController *)self lookAroundView];
  [v6 setShowsPointLabels:v3];

  v7 = [(LookAroundContainerViewController *)self lookAroundView];
  [v7 setShowsRoadLabels:v3];
}

- (void)_captureActivityCardAnalyticsForUserAction:(int)a3 onTarget:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v7 = [(LookAroundContainerViewController *)self lookAroundView];
  v8 = [v7 mapItem];
  v9 = [v8 _hasMUID];

  v25 = 0;
  if (v5 != 4 && v9)
  {
    v10 = [(LookAroundContainerViewController *)self lookAroundView];
    v11 = [v10 mapItem];
    v25 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v11 _muid]);
  }

  v12 = [(LookAroundContainerViewController *)self lookAroundView];
  [v12 centerCoordinate];
  v15 = [[GEOLocation alloc] initWithLatitude:v13 longitude:v14];
  [v12 presentationYaw];
  v17 = v16;
  v18 = [v12 lookAroundView];
  [v18 trackingZoomScale];
  v20 = v19;
  v21 = [v12 visiblePlaceMUIDs];
  v22 = [v21 count];
  if ([v12 showsRoadLabels])
  {
    v23 = 1;
  }

  else
  {
    v23 = [v12 showsPointLabels];
  }

  LOBYTE(v24) = v23;
  [GEOAPPortal captureLookAroundUserAction:v5 onTarget:v4 eventValue:v25 location:v15 heading:v17 zoom:v22 numberPoisInView:v20 labelingShown:v24];
}

- (NSString)sharingTitle
{
  v3 = [(MKLookAroundView *)self->_lookAroundView mapItem];

  lookAroundView = self->_lookAroundView;
  if (v3)
  {
    v5 = [(MKLookAroundView *)lookAroundView mapItem];
    v6 = [v5 name];
  }

  else
  {
    v6 = [(MKLookAroundView *)lookAroundView locationTitle];
  }

  return v6;
}

- (void)lookAroundViewWillChangeLocationInfo:(id)a3
{
  self->_locationState = 2;
  v4 = a3;
  v5 = [(ContainerViewController *)self currentViewController];
  [(LookAroundActionCoordinator *)self->_actionCoordinator viewControllerGoPreviousState:v5 withSender:v4];
}

- (void)lookAroundView:(id)a3 didDeselectLabelMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100798614();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 134219010;
    v24 = self;
    v25 = 2112;
    v26 = v10;
    v27 = 2048;
    v28 = v6;
    v29 = 2112;
    v30 = v12;
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "<LookAroundContainerViewController: %p> -lookAroundView:<%@: %p> didDeselectLabelMarker:<%@: %p>", buf, 0x34u);
  }

  v13 = [(ContainerViewController *)self currentViewController];
  v14 = dispatch_time(0, 250000000);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100A48580;
  v18[3] = &unk_101656A00;
  v19 = v6;
  v20 = v7;
  v21 = self;
  v22 = v13;
  v15 = v13;
  v16 = v7;
  v17 = v6;
  dispatch_after(v14, &_dispatch_main_q, v18);
}

- (void)lookAroundView:(id)a3 didSelectLabelMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100798614();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v23 = 134219010;
    v24 = self;
    v25 = 2112;
    v26 = v10;
    v27 = 2048;
    v28 = v6;
    v29 = 2112;
    v30 = v12;
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "<LookAroundContainerViewController: %p> -lookAroundView:<%@: %p> didSelectLabelMarker:<%@: %p>", &v23, 0x34u);
  }

  self->_locationState = 3;
  v13 = [[MKMapItem alloc] _initWithLabelMarker:v7];
  v14 = [(LookAroundContainerViewController *)self _createPlaceCardItemFromMapItem:v13 isMarkedLocation:[(MKLookAroundEntryPoint *)self->_entryPoint isMarkedLocation]];
  [v7 calloutAnchorPointWithSnapToPixels:0];
  v16 = v15;
  v18 = v17;
  [v7 lateralCalloutAnchorRect];
  v34 = CGRectOffset(v33, v16, v18);
  [v14 setCalloutAnchorRect:{v34.origin.x, v34.origin.y, v34.size.width, v34.size.height}];
  actionCoordinator = self->_actionCoordinator;
  v20 = [(ContainerViewController *)self currentViewController];
  [(LookAroundActionCoordinator *)actionCoordinator viewController:v20 presentPlaceCardForItem:v14];

  v21 = [v7 styleAttributes];
  if ([v21 isLandmarkPOI])
  {
    v22 = 6071;
  }

  else
  {
    v22 = 1010;
  }

  [(LookAroundContainerViewController *)self _captureActivityCardAnalyticsForUserAction:v22 onTarget:1702];
}

- (void)lookAroundView:(id)a3 didChangeLocationInfo:(id)a4
{
  locationState = self->_locationState;
  if (locationState == 2)
  {
    self->_locationState = 3;
    v6 = [(LookAroundContainerViewController *)self _maps_mapsSceneDelegate:a3];
    [v6 refreshTitle];
  }

  else if (!locationState)
  {
    self->_locationState = 1;
  }

  trayContaineeViewController = self->_trayContaineeViewController;

  [(LookAroundTrayContaineeViewController *)trayContaineeViewController updateLocation:a3];
}

- (void)lookAroundView:(id)a3 didChangeCameraFrame:(id)a4
{
  v6 = a3;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    v5 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v5 coordinateLookAroundViewDidChangeVisibleRegion:v6];
  }
}

- (void)lookAroundViewDidPan:(id)a3
{
  v4 = [(LookAroundContainerViewController *)self _targetForAnalytics];

  [(LookAroundContainerViewController *)self _captureUserAction:6069 onTarget:v4 eventValue:0];
}

- (void)lookAroundView:(id)a3 didZoomWithDirection:(int64_t)a4 type:(int64_t)a5
{
  if (a4 == 1)
  {
    v6 = 1043;
  }

  else
  {
    v6 = 1044;
  }

  v7 = [(LookAroundContainerViewController *)self _targetForAnalytics];

  [(LookAroundContainerViewController *)self _captureUserAction:v6 onTarget:v7 eventValue:0];
}

- (void)lookAroundView:(id)a3 didTapAtPoint:(CGPoint)a4 areaAvailable:(BOOL)a5
{
  v7 = a3;
  if (a5)
  {
    v8 = 6072;
  }

  else
  {
    v9 = [(ContainerViewController *)self currentViewController];
    v10 = dispatch_time(0, 250000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100A48AB4;
    block[3] = &unk_101661A40;
    block[4] = self;
    v13 = v9;
    v14 = v7;
    v11 = v9;
    dispatch_after(v10, &_dispatch_main_q, block);

    v8 = 1061;
  }

  [(LookAroundContainerViewController *)self _captureUserAction:v8 onTarget:[(LookAroundContainerViewController *)self _targetForAnalytics] eventValue:0];
}

- (void)lookAroundView:(id)a3 didTapLabelMarker:(id)a4
{
  v5 = [(LookAroundContainerViewController *)self _targetForAnalytics:a3];

  [(LookAroundContainerViewController *)self _captureUserAction:6072 onTarget:v5 eventValue:0];
}

- (void)lookAroundViewDidStopUserInteraction:(id)a3
{
  v5 = a3;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    v4 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v4 coordinateLookAroundViewDidStopUserInteraction:v5];
  }
}

- (void)lookAroundViewDidStartUserInteraction:(id)a3
{
  v5 = a3;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    v4 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v4 coordinateLookAroundViewDidStartUserInteraction:v5];
  }
}

- (UIView)passThroughView
{
  v3 = [(ContainerViewController *)self chromeViewController];
  v4 = [v3 passThroughView];

  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
  {
    v5 = self->_lookAroundView;

    v4 = v5;
  }

  return v4;
}

- (void)lookAroundTrayContaineeViewController:(id)a3 didTapToggleLabelsButton:(id)a4
{
  if ([(MKLookAroundView *)self->_lookAroundView showsPointLabels:a3])
  {
    v5 = [(MKLookAroundView *)self->_lookAroundView showsRoadLabels]^ 1;
  }

  else
  {
    v5 = 1;
  }

  [(LookAroundContainerViewController *)self _toggleShowingLabels:v5];
}

- (void)lookAroundTTRButtonView:(id)a3 didTapTTRButton:(id)a4
{
  v6 = [(LookAroundContainerViewController *)self actionCoordinator:a3];
  v5 = [(ContainerViewController *)self currentViewController];
  [v6 viewControllerPresentTTR:v5];
}

- (void)mapView:(id)a3 didChangeLookAroundAvailability:(int64_t)a4
{
  v7 = a3;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    v6 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v6 coordinateMapView:v7 didChangeLookAroundAvailability:a4];
  }
}

- (void)mapViewDidChangeVisibleRegion:(id)a3
{
  v8 = a3;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    v4 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v4 coordinateMapViewDidChangeVisibleRegion:v8];
  }

  v5 = [v8 _mapLayer];
  [v5 pitch];
  v7 = v6;

  [(LookAroundPuckViewController *)self->_puckViewController setPitch:v7];
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v6 = a3;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    v5 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v5 coordinateMapViewRegionDidChange:v6];
  }
}

- (void)mapView:(id)a3 willSelectLabelMarker:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
    {
      self->_selectingLabelMarker = 1;
    }

    v8 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v8 coordinateMapView:v7 willSelectLabelMarker:v6];
  }
}

- (void)mapViewDidStopUserInteraction:(id)a3
{
  v5 = a3;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    v4 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v4 coordinateMapViewDidStopUserInteraction:v5];

    self->_isRespondingToPanGesture = 0;
  }
}

- (void)mapViewDidStartUserInteraction:(id)a3
{
  v5 = a3;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    v4 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v4 coordinateMapViewDidStartUserInteraction:v5];
  }
}

- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8
{
  v9 = a7;
  v15 = a3;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    v14 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v14 coordinateMapView:v15 didStopRespondingToGesture:a4 zoomDirection:a5 zoomGestureType:a6 didDecelerate:v9 tiltDirection:a8];
  }
}

- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    self->_isRespondingToPanGesture = a4 == 0;
    v8 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v8 coordinateMapView:v9 willStartRespondingToGesture:a4 animated:v5];
  }
}

- (void)lookAroundPIPDataCoordinatorDidEndMovingLookAroundView:(id)a3
{
  v4 = [a3 lookAroundView];
  v8 = [v4 mapItem];

  if (v8)
  {
    v5 = [(LookAroundContainerViewController *)self _createPlaceCardItemFromMapItem:v8 isMarkedLocation:[(MKLookAroundEntryPoint *)self->_entryPoint isMarkedLocation]];
    v6 = [(LookAroundContainerViewController *)self actionCoordinator];
    v7 = [(ContainerViewController *)self currentViewController];
    [v6 viewController:v7 presentPlaceCardForItem:v5];
  }
}

- (void)lookAroundPIPDataCoordinatorDidStartPanningMapView:(id)a3
{
  v7 = a3;
  if (self->_selectingLabelMarker)
  {
    [(MKLookAroundView *)self->_lookAroundView recordTriggerAction:1010];
  }

  else
  {
    self->_locationState = 2;
    v4 = [(ContainerViewController *)self currentViewController];
    actionCoordinator = self->_actionCoordinator;
    v6 = [v7 mapView];
    [(LookAroundActionCoordinator *)actionCoordinator viewControllerGoPreviousState:v4 withSender:v6];

    [(MKLookAroundView *)self->_lookAroundView recordTriggerAction:1001];
  }

  self->_selectingLabelMarker = 0;
}

- (int64_t)preferredUserInterfaceStyle
{
  v3 = [(LookAroundContainerViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 traitCollection];
  v6 = [v5 copy];

  v7 = [v6 userInterfaceStyle];
  if (v7 == 1)
  {
    if ([(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

- (void)updateMapEdgeInsets
{
  if (!self->_modeTransition)
  {
    v3 = [(LookAroundContainerViewController *)self viewIfLoaded];
    if (v3)
    {
      v25 = v3;
      v4 = [(LookAroundContainerViewController *)self view];
      v5 = [v4 superview];
      if (v5 && ![(ContainerViewController *)self preventEdgeInsetsUpdate])
      {
        isRespondingToPanGesture = self->_isRespondingToPanGesture;

        if (isRespondingToPanGesture)
        {
          return;
        }

        [(LookAroundContainerViewController *)self topEdgeInset];
        top = v7;
        [(ContainerViewController *)self bottomEdgeInset];
        bottom = v9;
        [(ContainerViewController *)self leftSafeOffset];
        left = v11;
        [(ContainerViewController *)self rightSafeOffset];
        right = v13;
        [(LookAroundContainerViewController *)self pipViewWidthIfNeeded];
        v16 = v15;
        [(LookAroundContainerViewController *)self sidebarWidthIfNeeded];
        v18 = v17;
        if ([(ContainerViewController *)self chromeHidden])
        {
          top = UIEdgeInsetsZero.top;
          left = UIEdgeInsetsZero.left;
          bottom = UIEdgeInsetsZero.bottom;
          right = UIEdgeInsetsZero.right;
        }

        else
        {
          if (fabs(v16) > 2.22044605e-16)
          {
            if ([(LookAroundContainerViewController *)self _pipHugsLeading])
            {
              left = v16;
            }

            else
            {
              right = v16;
            }
          }

          if (fabs(v18) > 2.22044605e-16)
          {
            v19 = [(LookAroundContainerViewController *)self view];
            v20 = [v19 effectiveUserInterfaceLayoutDirection];

            if (v20 == 1)
            {
              right = v18;
            }

            else
            {
              left = v18;
            }
          }
        }

        v21 = [(ContainerViewController *)self chromeViewController];
        [(ContainerViewController *)self statusBarHeight];
        [v21 setLabelEdgeInsets:?];

        v22 = [(ContainerViewController *)self chromeViewController];
        [(ContainerViewController *)self statusBarHeight];
        [v22 setLabelEdgeWidths:?];

        v23 = [(ContainerViewController *)self chromeViewController];
        v24 = [(ContainerViewController *)self chromeContext];
        [v23 setMapEdgeInsets:0 animated:v24 forContext:{top, left, bottom, right}];

        v25 = [(LookAroundContainerViewController *)self dataCoordinator];
        [v25 synchronizeMapViewIfNeeded];
      }

      else
      {
      }
    }
  }
}

- (double)sidebarWidthIfNeeded
{
  MaxX = 0.0;
  if ([(LookAroundContainerViewController *)self _shouldTakeSidebarIntoAccount])
  {
    v4 = [(LookAroundContainerViewController *)self view];
    v5 = [v4 effectiveUserInterfaceLayoutDirection] == 1;

    if (v5 == [(ContainerViewController *)self stackOnOppositeSide])
    {
      v6 = [(ContainerViewController *)self containerView];
      [v6 frame];
      MaxX = CGRectGetMaxX(v12);
    }

    else
    {
      v6 = [(LookAroundContainerViewController *)self view];
      [v6 bounds];
      v7 = CGRectGetMaxX(v10);
      v8 = [(ContainerViewController *)self containerView];
      [v8 frame];
      MaxX = v7 - CGRectGetMinX(v11);
    }
  }

  return MaxX;
}

- (double)pipViewWidthIfNeeded
{
  v3 = 0.0;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    v4 = [(LookAroundPIPViewController *)self->_pipViewController view];
    v5 = sub_100019A44();
    v6 = [(ContainerViewController *)self containerStyle];
    v7 = (v6 < 8) & (0xE3u >> v6);
    v8 = [(LookAroundContainerViewController *)self _shouldTakeSidebarIntoAccount];
    v9 = [(LookAroundContainerViewController *)self _shouldTakePIPViewHeightIntoAccount];
    if ((v7 & 1) == 0 && (v8 & 1) == 0 && (v9 & 1) == 0)
    {
      if ([(LookAroundContainerViewController *)self _pipHugsLeading])
      {
        [v4 frame];
        v3 = CGRectGetMaxX(v13) + v5;
      }

      else
      {
        v10 = [(LookAroundContainerViewController *)self view];
        [v10 bounds];
        MaxX = CGRectGetMaxX(v14);
        [v4 frame];
        v3 = MaxX + v5 - CGRectGetMinX(v15);
      }
    }
  }

  return v3;
}

- (double)topEdgeInset
{
  v3 = 0.0;
  if (![(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    return v3;
  }

  v4 = sub_100019A44();
  if ([(LookAroundContainerViewController *)self _shouldTakePIPViewHeightIntoAccount]&& [(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
  {
    v5 = [(LookAroundContainerViewController *)self pipViewController];
    v6 = [v5 view];
    [v6 frame];
    v7 = CGRectGetMaxY(v14) + v4;
    [(ContainerViewController *)self statusBarHeight];
    if (v7 <= v8)
    {
      [(ContainerViewController *)self statusBarHeight];
      v3 = v12;
    }

    else
    {
      v9 = [(LookAroundContainerViewController *)self pipViewController];
      v10 = [v9 view];
      [v10 frame];
      v3 = CGRectGetMaxY(v15) + v4;
    }

    return v3;
  }

  [(ContainerViewController *)self statusBarHeight];
  return result;
}

- (BOOL)_pipHugsLeading
{
  v4 = [(LookAroundContainerViewController *)self view];
  v5 = sub_10000FA08(v4);
  if (v5 == 5)
  {
    v2 = [(LookAroundContainerViewController *)self view];
    if (![v2 effectiveUserInterfaceLayoutDirection])
    {
      v7 = 1;
LABEL_9:

      goto LABEL_10;
    }
  }

  v6 = [(LookAroundContainerViewController *)self view];
  if (sub_10000FA08(v6) == 5)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(LookAroundContainerViewController *)self view];
    v7 = [v8 effectiveUserInterfaceLayoutDirection] == 1;
  }

  if (v5 == 5)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (void)presentController:(id)a3 animated:(BOOL)a4 useDefaultContaineeLayout:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
  {
    objc_storeStrong(&self->_trayContaineeViewController, a3);
    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController updateLocation];
    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController setDelegate:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100A49B78;
      v12[3] = &unk_101661B18;
      v12[4] = self;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100A49BD8;
      v11[3] = &unk_101661738;
      v11[4] = self;
      [UIView _animateUsingDefaultDampedSpringWithDelay:2 initialSpringVelocity:v12 options:v11 animations:0.0 completion:0.0];
    }
  }

  v10.receiver = self;
  v10.super_class = LookAroundContainerViewController;
  [(ContainerViewController *)&v10 presentController:v9 animated:v6 useDefaultContaineeLayout:v5];
}

- (void)popLastViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ContainerViewController *)self currentViewController];
  v8.receiver = self;
  v8.super_class = LookAroundContainerViewController;
  [(ContainerViewController *)&v8 popLastViewControllerAnimated:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(LookAroundContainerViewController *)self dataCoordinator];
    v7 = [v6 mapView];
    [v7 _deselectLabelMarkerAnimated:1];

    if (self->_locationState != 2)
    {
      [(MKLookAroundView *)self->_lookAroundView deselectLabelMarker];
    }
  }
}

- (unint64_t)originalLayoutForViewController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (v6 = [(ContainerViewController *)self containerStyle], result = 3, v6 <= 7) && ((1 << v6) & 0xE3) != 0)
  {
    v8 = self->_locationState < 2;
    if ((v8 || (isKindOfClass & 1) == 0) | [(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (void)snapToLayout:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = LookAroundContainerViewController;
  [(ContainerViewController *)&v4 snapToLayout:a3];
  [(LookAroundContainerViewController *)self _updateLayoutWithCurrentValue];
}

- (void)contentHeightUpdatedWithValue:(double)a3
{
  v5.receiver = self;
  v5.super_class = LookAroundContainerViewController;
  [(ContainerViewController *)&v5 contentHeightUpdatedWithValue:?];
  [(LookAroundContainerViewController *)self _updateLayoutWithValue:a3];
}

- (void)dismissTray
{
  if ([(ContainerViewController *)self controllerIsInStack:self->_trayContaineeViewController])
  {
    v3 = [(ContainerViewController *)self currentControllerStack];
    v4 = [v3 mutableCopy];

    [v4 removeObject:self->_trayContaineeViewController];
    [(ContainerViewController *)self setControllerStack:v4 animated:1 completion:0];
  }
}

- (void)presentTray:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
  {
    objc_storeStrong(&self->_trayContaineeViewController, a3);
    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController updateLocation];
    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController setDelegate:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100A4A06C;
      v9[3] = &unk_101661B18;
      v9[4] = self;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100A4A0CC;
      v8[3] = &unk_101661738;
      v8[4] = self;
      [UIView _animateUsingDefaultDampedSpringWithDelay:2 initialSpringVelocity:v9 options:v8 animations:0.0 completion:0.0];
    }
  }

  if (![(ContainerViewController *)self controllerIsInStack:v5])
  {
    v6 = [(ContainerViewController *)self currentControllerStack];
    v7 = [v6 mutableCopy];

    [v7 insertObject:v5 atIndex:0];
    [(ContainerViewController *)self setControllerStack:v7 animated:1 completion:0];
  }
}

- (void)animateTransitionToFullScreen:(BOOL)a3
{
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A4A1EC;
  v8[3] = &unk_101632728;
  v10 = a3;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  v5 = objc_retainBlock(v8);
  v6 = v5;
  if (self->_displayState)
  {
    (v5[2])(v5);
  }

  else
  {
    v7 = dispatch_time(0, 100000000);
    dispatch_after(v7, &_dispatch_main_q, v6);
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)prepareForExitWithCompletion:(id)a3
{
  v8 = a3;
  chromeDeactivationToken = self->_chromeDeactivationToken;
  self->_chromeDeactivationToken = 0;

  v5 = [(ContainerViewController *)self currentViewController];
  v6 = [v5 cardPresentationController];
  v7 = [v6 usingSheetPresentation];

  if (v7)
  {
    if (v8)
    {
      v8[2]();
    }
  }

  else
  {
    [(LookAroundContainerViewController *)self dismissViewControllerAnimated:1 completion:v8];
  }
}

- (void)_showPuckAnimated
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100A4A830;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:&stru_1016326B0 completion:0.449999988];
}

- (void)animateToModeTransition:(id)a3
{
  v4 = a3;
  v5 = [(LookAroundContainerViewController *)self view];
  [v5 layoutIfNeeded];

  self->_modeTransition = 1;
  if (self->_showsFullScreen)
  {
    [(LookAroundContainerViewController *)self _setupForFullScreen];
    v6 = [(MKLookAroundView *)self->_lookAroundView mapItem];
    if (v6)
    {
      v7 = [(LookAroundContainerViewController *)self _createPlaceCardItemFromMapItem:v6 isMarkedLocation:[(MKLookAroundEntryPoint *)self->_entryPoint isMarkedLocation]];
      [(LookAroundActionCoordinator *)self->_actionCoordinator viewController:self presentPlaceCardForItem:v7 animated:0];
    }

    v8 = 7;
  }

  else
  {
    [(LookAroundContainerViewController *)self _setupForPIP];
    v8 = 6;
  }

  v9 = [(LookAroundContainerViewController *)self pipViewController];
  v10 = [v9 view];

  v11 = [(LookAroundContainerViewController *)self pipViewController];
  v12 = [v11 cardView];

  v13 = [(LookAroundContainerViewController *)self pipViewController];
  v14 = [v13 floatingButtonsView];

  [v14 setAlpha:0.0];
  [v12 setLayoutStyle:6];
  v15 = [(LookAroundContainerViewController *)self pipViewController];
  v16 = [v15 lookAroundContainerView];

  LOBYTE(v15) = self->_showsFullScreen;
  [(LookAroundContainerViewController *)self frameForPIPView];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100A4AD58;
  v43[3] = &unk_101632690;
  v25 = v12;
  v44 = v25;
  v48 = v8;
  v26 = v10;
  v45 = v26;
  v49 = v18;
  v50 = v20;
  v51 = v22;
  v52 = v24;
  v27 = v14;
  v46 = v27;
  v28 = v16;
  v47 = v28;
  v53 = v15;
  v29 = objc_retainBlock(v43);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100A4ADCC;
  v40[3] = &unk_101661A90;
  v30 = v4;
  v41 = v30;
  v42 = self;
  v31 = objc_retainBlock(v40);
  if ([v30 isAnimated])
  {
    [(LookAroundContainerViewController *)self _sanitizedOriginFrame];
    [v26 setFrame:?];
    v32 = 1.0;
    if (!self->_lookAroundViewOriginalSuperview)
    {
      v32 = 0.0;
    }

    [v26 setAlpha:v32];
    v33 = [(LookAroundContainerViewController *)self puckViewController];
    v34 = [v33 view];
    [v34 setAlpha:0.0];

    [v26 layoutIfNeeded];
    +[CATransaction begin];
    [CATransaction setAnimationDuration:0.449999988];
    v35 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [CATransaction setAnimationTimingFunction:v35];

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100A4AEBC;
    v38[3] = &unk_101661760;
    v39 = v29;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100A4AECC;
    v36[3] = &unk_10165F438;
    v37 = v31;
    [UIView animateWithDuration:v38 animations:v36 completion:0.449999988];
    +[CATransaction commit];
  }

  else
  {
    (v29[2])(v29);
    (v31[2])(v31);
  }
}

- (void)animateFromModeTransition:(id)a3
{
  v4 = a3;
  self->_modeTransition = 1;
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
  v6 = [(LookAroundContainerViewController *)self pipViewController];
  v7 = [v6 view];

  v8 = [(LookAroundContainerViewController *)self pipViewController];
  v9 = [v8 cardView];

  v10 = [v7 layer];
  [v10 setShouldRasterize:1];

  v11 = [(LookAroundContainerViewController *)self pipViewController];
  v12 = [v11 floatingButtonsView];

  v13 = self->_lookAroundView;
  [(MKLookAroundView *)v13 setCompassHidden:1];
  chromeDeactivationToken = self->_chromeDeactivationToken;
  self->_chromeDeactivationToken = 0;

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100A4B27C;
  v32[3] = &unk_101653D50;
  v32[4] = self;
  v15 = v13;
  v33 = v15;
  v16 = v7;
  v34 = v16;
  v17 = v12;
  v35 = v17;
  v18 = v9;
  v36 = v18;
  v19 = objc_retainBlock(v32);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100A4B48C;
  v28[3] = &unk_101661A40;
  v20 = WeakRetained;
  v29 = v20;
  v30 = self;
  v21 = v4;
  v31 = v21;
  v22 = objc_retainBlock(v28);
  if ([v21 isAnimated])
  {
    +[CATransaction begin];
    [CATransaction setAnimationDuration:0.449999988];
    v23 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [CATransaction setAnimationTimingFunction:v23];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100A4B4D4;
    v26[3] = &unk_101661760;
    v27 = v19;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100A4B4E4;
    v24[3] = &unk_10165F438;
    v25 = v22;
    [UIView animateWithDuration:v26 animations:v24 completion:0.449999988];
    +[CATransaction commit];
  }

  else
  {
    (v19[2])(v19);
    (v22[2])(v22);
  }
}

- (void)_showTTRButton:(BOOL)a3
{
  v3 = a3;
  v5 = +[MKSystemController sharedInstance];
  v6 = [v5 isInternalInstall];

  if (v6)
  {
    if (v3 && (-[MKLookAroundView window](self->_lookAroundView, "window"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, -[MKLookAroundView window](self->_lookAroundView, "window"), v9 = objc_claimAutoreleasedReturnValue(), -[OverlayContainerViewController overlayView](self, "overlayView"), v10 = objc_claimAutoreleasedReturnValue(), [v10 window], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v8, v9 == v11))
    {
      if (self->_ttrButtonView)
      {
        goto LABEL_8;
      }

      v14 = objc_alloc_init(LookAroundTTRButtonView);
      ttrButtonView = self->_ttrButtonView;
      self->_ttrButtonView = v14;

      [(LookAroundTTRButtonView *)self->_ttrButtonView setDelegate:self];
      [(LookAroundTTRButtonView *)self->_ttrButtonView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(LookAroundTTRButtonView *)self->_ttrButtonView setTag:MKLookAroundTTRButtonTag];
      [(MKLookAroundView *)self->_lookAroundView addSubview:self->_ttrButtonView];
      v16 = [(LookAroundContainerViewController *)self traitCollection];
      v17 = [v16 userInterfaceIdiom];

      if (v17 == 5)
      {
        v18 = -76.0;
      }

      else
      {
        v18 = -16.0;
      }

      v29 = [(LookAroundTTRButtonView *)self->_ttrButtonView bottomAnchor];
      v30 = [(OverlayContainerViewController *)self overlayView];
      v19 = [v30 safeAreaLayoutGuide];
      v20 = [v19 bottomAnchor];
      v21 = [(LookAroundTTRButtonView *)v29 constraintEqualToAnchor:v20 constant:-16.0];
      v31[0] = v21;
      v22 = [(LookAroundTTRButtonView *)self->_ttrButtonView trailingAnchor];
      v23 = [(OverlayContainerViewController *)self overlayView];
      v24 = [v23 safeAreaLayoutGuide];
      v25 = [v24 trailingAnchor];
      v26 = [v22 constraintEqualToAnchor:v25 constant:v18];
      v31[1] = v26;
      v27 = [NSArray arrayWithObjects:v31 count:2];
      [v28 activateConstraints:v27];

      v13 = v29;
    }

    else
    {
      v12 = self->_ttrButtonView;
      if (!v12)
      {
LABEL_8:
        [(LookAroundContainerViewController *)self _updateTTRButtonState];
        return;
      }

      [(LookAroundTTRButtonView *)v12 removeFromSuperview];
      v13 = self->_ttrButtonView;
      self->_ttrButtonView = 0;
    }

    goto LABEL_8;
  }
}

- (void)_setupForPIP
{
  if (self->_displayState != 2)
  {
    v3 = [(ContainerViewController *)self chromeViewController];
    v4 = ([v3 displayedViewMode] - 1) & 0xFFFFFFFFFFFFFFFALL;

    if (!v4)
    {
      v5 = [(ContainerViewController *)self chromeViewController];
      [v5 updateViewMode:0 animated:0];
    }

    v6 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v6 addObserver:self];

    v7 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v7 setNeedsLookAroundAvailabilityUpdate];

    v8 = [(LookAroundContainerViewController *)self puckViewController];
    v9 = [v8 view];
    [v9 setAlpha:1.0];

    v10 = [(LookAroundContainerViewController *)self puckViewController];
    v11 = [v10 view];
    [v11 setHidden:0];

    v12 = [(LookAroundContainerViewController *)self pipViewController];
    [v12 setShowsMinimizedButton:0];

    self->_showsLabels = [(MKLookAroundView *)self->_lookAroundView showsPointLabels];
    [(MKLookAroundView *)self->_lookAroundView setShowsPointLabels:0];
    [(MKLookAroundView *)self->_lookAroundView setShowsRoadLabels:0];
    v13 = [(ContainerViewController *)self containerView];
    [v13 setUserInteractionEnabled:0];

    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController setVisible:0 animated:1];
    [(LookAroundContainerViewController *)self dismissTray];
    v14 = [(LookAroundContainerViewController *)self pipViewController];
    v15 = [v14 view];
    [v15 setAccessibilityIdentifier:@"LookAroundPiPView"];

    self->_displayState = 2;
    v16 = [(ContainerViewController *)self chromeViewController];
    [v16 setNeedsUserInterfaceAppearanceUpdate];

    v17 = [(ContainerViewController *)self chromeViewController];
    [v17 setNeedsUpdateComponent:@"floatingControls" animated:0];

    [(OverlayContainerViewController *)self updateTheme];
  }
}

- (void)_setupForFullScreen
{
  if (self->_displayState != 1)
  {
    v3 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v3 removeObserver:self];

    v4 = [(LookAroundContainerViewController *)self puckViewController];
    v5 = [v4 view];
    [v5 setAlpha:0.0];

    v6 = [(LookAroundContainerViewController *)self puckViewController];
    v7 = [v6 view];
    [v7 setHidden:1];

    v8 = [(LookAroundContainerViewController *)self pipViewController];
    [v8 setShowsMinimizedButton:1];

    [(MKLookAroundView *)self->_lookAroundView setShowsPointLabels:self->_showsLabels];
    [(MKLookAroundView *)self->_lookAroundView setShowsRoadLabels:self->_showsLabels];
    [(MKLookAroundView *)self->_lookAroundView setUserInteractionEnabled:1];
    v9 = self->_trayContaineeViewController != 0;
    v10 = [(ContainerViewController *)self containerView];
    [v10 setUserInteractionEnabled:v9];

    v11 = [(LookAroundContainerViewController *)self pipViewController];
    v12 = [v11 view];
    [v12 setAccessibilityIdentifier:@"LookAroundFullScreenView"];

    [(LookAroundTrayContaineeViewController *)self->_trayContaineeViewController setVisible:1 animated:1];
    [(LookAroundActionCoordinator *)self->_actionCoordinator viewControllerPresentTray:self showsFullScreen:1 usingLookAroundView:self->_lookAroundView];
    self->_displayState = 1;
    v13 = [(ContainerViewController *)self chromeViewController];
    [v13 setNeedsUserInterfaceAppearanceUpdate];

    v14 = [(ContainerViewController *)self chromeViewController];
    [v14 setNeedsUpdateComponent:@"floatingControls" animated:0];

    [(OverlayContainerViewController *)self updateTheme];
  }
}

- (BOOL)_getRatioControls:(double *)a3 scale:(double *)a4 forContentHeightValue:(double)a5
{
  if (([(ContainerViewController *)self containerStyle]& 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    goto LABEL_9;
  }

  v9 = [(ContainerViewController *)self currentViewController];
  [v9 heightForLayout:1];
  v11 = v10;

  v12 = [(ContainerViewController *)self currentViewController];
  [v12 heightForLayout:2];
  v14 = v13;

  if (v14 == v11)
  {
    return 0;
  }

  if (v11 < a5)
  {
    v16 = fmin(fmax((fmin(v14, a5) - v11) / (v14 - v11), 0.0), 1.0);
    if (a3)
    {
      *a3 = v16;
    }

    if (!a4)
    {
      return 1;
    }

    v17 = fmin(fmax(v16 * -0.699999988 + 1.0, 0.300000012), 1.0);
  }

  else
  {
LABEL_9:
    if (a3)
    {
      *a3 = 0.0;
    }

    v17 = 1.0;
    if (!a4)
    {
      return 1;
    }
  }

  *a4 = v17;
  return 1;
}

- (void)_updateLayoutWithCurrentValue
{
  v5 = [(ContainerViewController *)self currentViewController];
  v3 = [v5 view];
  [v3 frame];
  [(LookAroundContainerViewController *)self _updateLayoutWithValue:v4];
}

- (void)_updateLayoutWithValue:(double)a3
{
  v9 = 0x3FF0000000000000;
  v10 = 0.0;
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
  {
    v5 = 0.0;
    v6 = 1.0;
  }

  else
  {
    [(LookAroundContainerViewController *)self _getRatioControls:&v10 scale:&v9 forContentHeightValue:a3];
    v6 = *&v9;
    v5 = v10;
  }

  self->_currentDragRatio = v5;
  self->_currentDragScale = v6;
  if (!self->_modeTransition)
  {
    v7 = 1.0 - v5;
    v8 = [(LookAroundPIPViewController *)self->_pipViewController floatingButtonsView];
    [v8 setAlpha:v7];
  }

  [(LookAroundContainerViewController *)self _updatePIPLayout];
}

- (CGAffineTransform)transformForPIPView:(SEL)a3
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = *&CGAffineTransformIdentity.c;
  v18 = *&CGAffineTransformIdentity.a;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v17;
  v16 = *&CGAffineTransformIdentity.tx;
  *&retstr->tx = v16;
  result = [(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen];
  if ((result & 1) == 0)
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v11 = CGRectGetWidth(v21);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v12 = CGRectGetHeight(v22);
    currentDragScale = self->_currentDragScale;
    if (currentDragScale < 1.0)
    {
      *&v20.a = v18;
      *&v20.c = v17;
      *&v20.tx = v16;
      CGAffineTransformTranslate(retstr, &v20, -((v11 - currentDragScale * v11) * 0.5), -(v12 * ((v11 - currentDragScale * v11) * 0.5)) / v11);
      v14 = *&retstr->c;
      *&v19.a = *&retstr->a;
      *&v19.c = v14;
      *&v19.tx = *&retstr->tx;
      result = CGAffineTransformScale(&v20, &v19, currentDragScale, currentDragScale);
      v15 = *&v20.c;
      *&retstr->a = *&v20.a;
      *&retstr->c = v15;
      *&retstr->tx = *&v20.tx;
    }
  }

  return result;
}

- (unint64_t)_pipLayout
{
  v3 = [(LookAroundContainerViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  Height = CGRectGetHeight(v23);
  if (sub_10000FA08(self))
  {
    v13 = 0;
  }

  else
  {
    v14 = [(LookAroundContainerViewController *)self traitCollection];
    if ([v14 horizontalSizeClass] == 1)
    {
      v15 = [(LookAroundContainerViewController *)self traitCollection];
      v13 = [v15 verticalSizeClass] == 1;
    }

    else
    {
      v13 = 0;
    }
  }

  v16 = [(ContainerViewController *)self currentViewController];
  if (v16)
  {
    v17 = [(ContainerViewController *)self currentViewController];
    objc_opt_class();
    v18 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v18 = 0;
  }

  if (v13 || (-[LookAroundContainerViewController traitCollection](self, "traitCollection"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 horizontalSizeClass], v19, v20 == 2))
  {
    v21 = 2;
    if ((v18 & 1) == 0)
    {
      v21 = 3;
    }

    if (Height > 500.0)
    {
      return v18 & 1;
    }

    else
    {
      return v21;
    }
  }

  else if (Height <= 500.0)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

- (CGRect)frameForPIPView
{
  v3 = [(LookAroundContainerViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = sub_100019A44();
  if ([(LookAroundContainerViewController *)self isDisplayingLookAroundFullScreen])
  {
    Height = v11;
    v14 = v7;
    goto LABEL_26;
  }

  v15 = [(LookAroundContainerViewController *)self _pipHugsLeading];
  v16 = [(LookAroundContainerViewController *)self view];
  [v16 safeAreaInsets];
  v17 = -3.0;
  if (v18 == 0.0)
  {
    v17 = -v12;
  }

  v71 = v17;

  if (sub_10000FA08(self) == 5)
  {
    v73.origin.x = v5;
    v73.origin.y = v7;
    v73.size.width = v9;
    v73.size.height = v11;
    v19 = ceil(CGRectGetWidth(v73));
    Width = v19 * 0.4;
    v21 = [(LookAroundContainerViewController *)self view];
    [v21 safeAreaInsets];
    v72 = v22 + v12;

    Height = ceil(v19 * 0.25);
  }

  else
  {
    [(ContainerViewController *)self topEdgePadding];
    v72 = v23;
    v74.origin.x = v5;
    v74.origin.y = v7;
    v74.size.width = v9;
    v74.size.height = v11;
    Height = CGRectGetHeight(v74);
    v24 = [(LookAroundContainerViewController *)self _pipLayout];
    Width = 0.0;
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v82.origin.x = v5;
        v82.origin.y = v7;
        v82.size.width = v9;
        v82.size.height = v11;
        Width = ceil(CGRectGetWidth(v82) * 0.479999989);
        [(ContainerViewController *)self statusBarHeight];
        v70 = v45;
        v46 = [(LookAroundContainerViewController *)self view];
        [v46 safeAreaInsets];
        v67 = v47;

        v48 = [(LookAroundContainerViewController *)self view];
        [v48 safeAreaInsets];
        v50 = -3.0;
        if (v67 == 0.0)
        {
          v50 = -v12;
        }

        Height = Height + v50 - (v12 + v70 + v49);

        goto LABEL_21;
      }

      if (v24 != 4)
      {
        v26 = v71;
        if (v24 == 5)
        {
          v77.origin.x = v5;
          v77.origin.y = v7;
          v77.size.width = v9;
          v77.size.height = v11;
          Width = CGRectGetWidth(v77);
          v78.origin.x = v5;
          v78.origin.y = v7;
          v78.size.width = v9;
          v78.size.height = v11;
          Height = ceil(CGRectGetHeight(v78) * 0.349999994);
        }

        goto LABEL_22;
      }

      v83.origin.x = v5;
      v83.origin.y = v7;
      v83.size.width = v9;
      v83.size.height = v11;
      Width = CGRectGetWidth(v83);
      v25 = Height * 0.400000006;
    }

    else
    {
      if (v24 >= 2)
      {
        v26 = v71;
        if (v24 == 2)
        {
          v27 = [(ContainerViewController *)self currentViewController];
          v28 = [v27 view];

          [v28 frame];
          v30 = v29;
          v32 = v31;
          v65 = v34;
          v68 = v33;
          v35 = [(LookAroundContainerViewController *)self view];
          [v28 convertRect:v35 toView:{v30, v32, v68, v65}];
          v37 = v36;
          v39 = v38;
          v64 = v41;
          v66 = v40;

          v79.origin.x = v5;
          v79.origin.y = v7;
          v79.size.width = v9;
          v79.size.height = v11;
          v69 = CGRectGetWidth(v79);
          v80.origin.x = v37;
          v80.origin.y = v39;
          v80.size.height = v64;
          v80.size.width = v66;
          MaxX = CGRectGetMaxX(v80);
          v43 = [(LookAroundContainerViewController *)self view];
          [v43 safeAreaInsets];
          Width = v71 + v69 - (v12 + v44 + MaxX);

          v81.origin.x = v5;
          v81.origin.y = v7;
          v81.size.width = v9;
          v81.size.height = v11;
          Height = ceil(CGRectGetHeight(v81) * 0.400000006);
        }

        goto LABEL_22;
      }

      v75.origin.x = v5;
      v75.origin.y = v7;
      v75.size.width = v9;
      v75.size.height = v11;
      Width = fmin(ceil(CGRectGetWidth(v75) * 0.479999989), 630.0);
      v76.origin.x = v5;
      v76.origin.y = v7;
      v76.size.width = v9;
      v76.size.height = v11;
      v25 = CGRectGetHeight(v76) * 0.400000006;
    }

    Height = fmin(ceil(v25), 390.0);
  }

LABEL_21:
  v26 = v71;
LABEL_22:
  v51 = v5;
  v52 = v7;
  v53 = v9;
  v54 = v11;
  if (v15)
  {
    MinX = CGRectGetMinX(*&v51);
    v56 = [(LookAroundContainerViewController *)self view];
    [v56 safeAreaInsets];
    v58 = v57 + MinX;
  }

  else
  {
    v59 = CGRectGetMaxX(*&v51);
    v56 = [(LookAroundContainerViewController *)self view];
    [v56 safeAreaInsets];
    v58 = v59 - (Width + v60);
  }

  v9 = v26 - v12 + Width;
  v5 = v58 + v12;
  v14 = v72;
LABEL_26:
  v61 = v5;
  v62 = v9;
  v63 = Height;
  result.size.height = v63;
  result.size.width = v62;
  result.origin.y = v14;
  result.origin.x = v61;
  return result;
}

- (void)_updatePIPLayout
{
  if (!self->_modeTransition)
  {
    [(LookAroundContainerViewController *)self frameForPIPView];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    v7 = CGRectGetWidth(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v8 = CGRectGetHeight(v24);
    memset(&v22, 0, sizeof(v22));
    [(LookAroundContainerViewController *)self transformForPIPView:x, y, width, height];
    v9 = [(LookAroundPIPViewController *)self->_pipViewController view];
    v10 = v9;
    if (v9)
    {
      [v9 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v20 = v22;
    v11 = CGAffineTransformEqualToTransform(&t1, &v20);
    [v10 bounds];
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v26.size.width = v7;
    v26.size.height = v8;
    v12 = CGRectEqualToRect(v25, v26);
    if (self->_viewWillTransitionToSize.width == CGSizeZero.width && self->_viewWillTransitionToSize.height == CGSizeZero.height)
    {
      v16 = 0;
      if (!v10)
      {
LABEL_18:

        return;
      }
    }

    else
    {
      v14 = [(LookAroundContainerViewController *)self view];
      [v14 bounds];
      v16 = v15 > self->_viewWillTransitionToSize.width;

      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (!self->_isRespondingToPanGesture && !v16 && (!v11 || !v12 || self->_forceUpdatePIPLayout))
    {
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      if (!CGRectEqualToRect(self->_previousPIPFrame, v27))
      {
        v17 = *&CGAffineTransformIdentity.c;
        *&t1.a = *&CGAffineTransformIdentity.a;
        *&t1.c = v17;
        *&t1.tx = *&CGAffineTransformIdentity.tx;
        [v10 setTransform:&t1];
        [v10 setFrame:{x, y, width, height}];
        self->_previousPIPFrame.origin.x = x;
        self->_previousPIPFrame.origin.y = y;
        self->_previousPIPFrame.size.width = width;
        self->_previousPIPFrame.size.height = height;
      }

      t1 = v22;
      [v10 setTransform:&t1];
      [(LookAroundContainerViewController *)self updateMapEdgeInsets];
      t1 = v22;
      IsIdentity = CGAffineTransformIsIdentity(&t1);
      v19 = [(LookAroundPIPViewController *)self->_pipViewController lookAroundContainerView];
      [v19 setUserInteractionEnabled:IsIdentity];

      [(UITapGestureRecognizer *)self->_pipViewTapGestureRecognizer setEnabled:IsIdentity ^ 1];
    }

    goto LABEL_18;
  }
}

- (void)_updateCompassLayout
{
  if (!self->_modeTransition && self->_pipViewController)
  {
    [(LookAroundContainerViewController *)self compassInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(ContainerViewController *)self chromeViewController];
    v12 = [v11 mapView];
    [v12 _setCompassInsets:{v4, v6, v8, v10}];

    v16 = self->_lookAroundView;
    [(MKLookAroundView *)v16 compassInsets];
    v13 = [(LookAroundPIPViewController *)self->_pipViewController floatingButtonsView];
    [v13 frame];
    v15 = v14 + 32.0;

    [(MKLookAroundView *)v16 setCompassInsets:v15, 16.0, 16.0, 16.0];
  }
}

- (UIEdgeInsets)compassInsets
{
  v3 = [(ContainerViewController *)self chromeViewController];
  v4 = [v3 mapView];
  [v4 _compassInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (sub_10000FA08(self) != 5)
  {
    v6 = sub_100019A44();
    v13 = [(LookAroundContainerViewController *)self view];
    [v13 safeAreaInsets];
    v12 = v14 + sub_100019A44();

    if ([(LookAroundContainerViewController *)self isDisplayingLookAroundPIP])
    {
      v15 = [(LookAroundPIPViewController *)self->_pipViewController view];
      [v15 bounds];
      UIRectInset();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = [(LookAroundContainerViewController *)self _pipLayout];
      if (v24)
      {
        if (v24 == 3)
        {
          v12 = sub_100019A44();
        }
      }

      else
      {
        v29.origin.x = v17;
        v29.origin.y = v19;
        v29.size.width = v21;
        v29.size.height = v23;
        v12 = v12 - CGRectGetWidth(v29);
        v30.origin.x = v17;
        v30.origin.y = v19;
        v30.size.width = v21;
        v30.size.height = v23;
        v6 = CGRectGetHeight(v30) + v6;
      }
    }
  }

  v25 = v6;
  v26 = v8;
  v27 = v10;
  v28 = v12;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v10.receiver = self;
  v10.super_class = LookAroundContainerViewController;
  v6 = a4;
  [(ContainerViewController *)&v10 willTransitionToTraitCollection:a3 withTransitionCoordinator:v6];
  v7 = [(LookAroundContainerViewController *)self dataCoordinator];
  [v7 pause];

  v8[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A4CBB8;
  v9[3] = &unk_101661710;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A4CC18;
  v8[3] = &unk_101661710;
  [v6 animateAlongsideTransition:v9 completion:v8];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v11.receiver = self;
  v11.super_class = LookAroundContainerViewController;
  v7 = a4;
  [(ContainerViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(LookAroundContainerViewController *)self dataCoordinator];
  [v8 pause];

  self->_viewWillTransitionToSize.width = width;
  self->_viewWillTransitionToSize.height = height;
  v9[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100A4CD94;
  v10[3] = &unk_101661710;
  v10[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100A4CDF4;
  v9[3] = &unk_101661710;
  [v7 animateAlongsideTransition:v10 completion:v9];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = LookAroundContainerViewController;
  [(ContainerViewController *)&v5 viewDidDisappear:a3];
  [(LookAroundContainerViewController *)self _showTTRButton:0];
  self->_containerIsVisible = 0;
  if (!self->_modeIsCurrent)
  {
    [(LookAroundContainerViewController *)self _removePuckViewFromMapView];
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"LookAroundTrayContaineeViewControllerDidDisappear" object:self userInfo:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = LookAroundContainerViewController;
  [(OverlayContainerViewController *)&v7 viewDidAppear:a3];
  self->_containerIsVisible = 1;
  if (self->_modeIsCurrent)
  {
    v4 = [(ContainerViewController *)self chromeViewController];
    v5 = [v4 mapView];
    [(LookAroundContainerViewController *)self _insertPuckViewIntoMapView:v5];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"LookAroundTrayContaineeViewControllerDidAppear" object:self userInfo:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LookAroundContainerViewController;
  [(OverlayContainerViewController *)&v3 viewDidLoad];
  [(LookAroundActionCoordinator *)self->_actionCoordinator viewControllerPresentLookAround:self showsFullScreen:self->_showsFullScreen];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = LookAroundContainerViewController;
  [(OverlayContainerViewController *)&v3 viewDidLayoutSubviews];
  [(LookAroundContainerViewController *)self _updateCompassLayout];
  [(LookAroundContainerViewController *)self _updateLayoutWithCurrentValue];
}

- (id)pipViewController
{
  pipViewController = self->_pipViewController;
  if (!pipViewController)
  {
    v4 = [LookAroundPIPViewController alloc];
    v5 = [(LookAroundContainerViewController *)self dataCoordinator];
    v6 = [(LookAroundPIPViewController *)v4 initWithDataCoordinator:v5 lookAroundView:self->_lookAroundView];
    v7 = self->_pipViewController;
    self->_pipViewController = v6;

    v8 = [(LookAroundContainerViewController *)self actionCoordinator];
    [(LookAroundPIPViewController *)self->_pipViewController setActionCoordinator:v8];

    v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handlePIPViewTap:"];
    pipViewTapGestureRecognizer = self->_pipViewTapGestureRecognizer;
    self->_pipViewTapGestureRecognizer = v9;

    v11 = [(LookAroundPIPViewController *)self->_pipViewController view];
    [v11 addGestureRecognizer:self->_pipViewTapGestureRecognizer];

    [(ContainerViewController *)self addChildViewController:self->_pipViewController];
    v12 = [(LookAroundContainerViewController *)self view];
    v13 = [(LookAroundPIPViewController *)self->_pipViewController view];
    v14 = [(OverlayContainerViewController *)self topContentView];
    [v12 insertSubview:v13 aboveSubview:v14];

    [(LookAroundPIPViewController *)self->_pipViewController didMoveToParentViewController:self];
    pipViewController = self->_pipViewController;
  }

  return pipViewController;
}

- (id)puckViewController
{
  puckViewController = self->_puckViewController;
  if (!puckViewController)
  {
    v4 = objc_alloc_init(LookAroundPuckViewController);
    v5 = self->_puckViewController;
    self->_puckViewController = v4;

    v6 = [(LookAroundPuckViewController *)self->_puckViewController view];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(LookAroundContainerViewController *)self dataCoordinator];
    [v7 addObserver:self->_puckViewController];

    puckViewController = self->_puckViewController;
  }

  return puckViewController;
}

- (MKMapItem)currentMapItem
{
  p_lookAroundView = &self->_lookAroundView;
  if (([(MKLookAroundView *)self->_lookAroundView hasEnteredLookAround]& 1) == 0)
  {
    p_lookAroundView = &self->_entryPoint;
  }

  v4 = [(MKLookAroundView *)*p_lookAroundView mapItem];

  return v4;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"__internal__HideTapToRadarInMunin" context:off_10192FCB8];

  v4.receiver = self;
  v4.super_class = LookAroundContainerViewController;
  [(LookAroundContainerViewController *)&v4 dealloc];
}

- (LookAroundContainerViewController)initWithEntryPoint:(id)a3 lookAroundView:(id)a4 showsFullScreen:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v26.receiver = self;
  v26.super_class = LookAroundContainerViewController;
  v11 = [(ContainerViewController *)&v26 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    [(LookAroundContainerViewController *)v11 _commonInit];
    objc_storeStrong(&v12->_entryPoint, a3);
    v12->_showsFullScreen = a5;
    v13 = [[LookAroundActionCoordinator alloc] initWithContainerViewController:v12];
    actionCoordinator = v12->_actionCoordinator;
    v12->_actionCoordinator = v13;

    objc_initWeak(&location, v12);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100A4D590;
    v22[3] = &unk_101632668;
    objc_copyWeak(&v24, &location);
    v23 = v9;
    v15 = [(LookAroundContainerViewController *)v12 _createOrReuseLookAroundView:v10 completion:v22];
    lookAroundView = v12->_lookAroundView;
    v12->_lookAroundView = v15;

    v17 = [(MKLookAroundView *)v12->_lookAroundView superview];
    lookAroundViewOriginalSuperview = v12->_lookAroundViewOriginalSuperview;
    v12->_lookAroundViewOriginalSuperview = v17;

    v19 = [(LookAroundContainerViewController *)v12 traitCollection];
    v20 = [v19 userInterfaceIdiom];

    if (v20 == 5)
    {
      [(ContainerViewController *)v12 setStackOnOppositeSide:1];
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (id)_createOrReuseLookAroundView:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    v9 = [[MKLookAroundView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v9 setCompassHidden:1];
    [v9 setShowsPointLabels:self->_showsLabels];
    [v9 setShowsRoadLabels:self->_showsLabels];
  }

  if (v7)
  {
    v7[2](v7, v9);
  }

  return v9;
}

- (void)_commonInit
{
  self->_showsLabels = 1;
  self->_currentDragRatio = 0.0;
  self->_currentDragScale = 1.0;
  self->_displayState = 0;
  self->_locationState = 0;
  v3 = [[LookAroundActionCoordinator alloc] initWithContainerViewController:self];
  actionCoordinator = self->_actionCoordinator;
  self->_actionCoordinator = v3;

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 addObserver:self forKeyPath:@"__internal__HideTapToRadarInMunin" options:1 context:off_10192FCB8];
}

@end