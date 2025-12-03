@interface NavigationDebugViewsController
- (BOOL)_isSimulating;
- (NSString)tracePath;
- (NavigationDebugViewsController)initWithDelegate:(id)delegate;
- (UIView)debugControlsView;
- (double)debugViewHeight;
- (id)primaryViewControllerForCollapsingSplitViewController:(id)controller;
- (id)primaryViewControllerForExpandingSplitViewController:(id)controller;
- (id)splitViewController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController;
- (void)_addTraceBookmark;
- (void)_dismissModalCameraSnapshotPickerIfNeededAnimated:(BOOL)animated;
- (void)_done;
- (void)_longPressBookmarkGesture:(id)gesture;
- (void)_presentCameraSnapshotPickerModallyIfNeededAnimated:(BOOL)animated;
- (void)_setUpCameraSnapshotPickerVCFromWindow:(id)window;
- (void)_sliderDidEndEditing;
- (void)addDebugViewsToView:(id)view layoutGuide:(id)guide mapView:(id)mapView modalPresentingViewController:(id)controller;
- (void)cameraSnapshotPicker:(id)picker didSelectCameraSnapshot:(id)snapshot;
- (void)dealloc;
- (void)didManuallyRemoveDebugViews;
- (void)hideTraceControlsAnimated:(BOOL)animated;
- (void)navigationService:(id)service didFinishLoadingTrace:(id)trace;
- (void)navigationService:(id)service didPlayTracePosition:(double)position;
- (void)navigationService:(id)service didRecordTraceBookmarkWithID:(unint64_t)d;
- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason;
- (void)navigationService:(id)service didSeekToTracePosition:(double)position;
- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location;
- (void)navigationServiceDidPauseTrace:(id)trace;
- (void)navigationServiceDidResumeTrace:(id)trace;
- (void)prepareToRunNavigation;
- (void)removeDebugViewsFromView:(id)view;
- (void)resetHideTraceControlsTimer;
- (void)resetTracePlayer;
- (void)setAutomaticallyHideTraceControls:(BOOL)controls;
- (void)setUpCameraSnapshotPickerVCFromViewController:(id)controller;
- (void)showTraceControls;
- (void)toggleCameraSnapshotPickerVisibility;
- (void)traceControlView:(id)view setPlaySpeed:(double)speed;
- (void)traceControlView:(id)view setPlaying:(BOOL)playing;
- (void)traceControlViewJumpedBack:(id)back;
- (void)traceControlViewPressedBookmarksButton:(id)button;
- (void)traceControlViewPressedSaveCameraSnapshotButton:(id)button;
- (void)tracePlayer:(id)player didPlayAtTime:(double)time;
- (void)tracePlayer:(id)player didSeekToTime:(double)time fromTime:(double)fromTime location:(id)location;
- (void)tracePlayerDidPause:(id)pause;
- (void)tracePlayerDidResume:(id)resume;
- (void)tracePlayerDidStart:(id)start;
- (void)tracePlayerDidStop:(id)stop;
- (void)traceSliderView:(id)view editingEndedAtTime:(double)time;
- (void)traceSliderViewEditingDidBegin:(id)begin;
@end

@implementation NavigationDebugViewsController

- (BOOL)_isSimulating
{
  v2 = +[MNNavigationService sharedService];
  v3 = ([v2 isNavigatingFromTrace] & 1) == 0 && objc_msgSend(v2, "simulationType") && objc_msgSend(v2, "simulationType") != -1;

  return v3;
}

- (void)navigationService:(id)service didRecordTraceBookmarkWithID:(unint64_t)d
{
  [(TraceBookmarkSelector *)self->_traceBookmarkSelector reloadBookmarks];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"TraceBookmarksAlert"];

  if (v6)
  {
    v11 = [NSString stringWithFormat:@"Bookmark #%lu saved to trace.", d];
    v7 = +[UIApplication sharedApplication];
    delegate = [v7 delegate];
    window = [delegate window];
    rootViewController = [window rootViewController];

    [rootViewController _maps_presentSimpleAlertWithTitle:@"Bookmark Added" message:v11 dismissalActionTitle:@"OK"];
  }
}

- (void)navigationService:(id)service didSeekToTracePosition:(double)position
{
  serviceCopy = service;
  if (__PAIR64__(self->_debugViewsWereAdded, self->_traceControlsAreShowing) == 0x100000001)
  {
    v10 = serviceCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained navigationDebugViewsTracePlaybackDidSeek:self];

    if (self->_shouldUpdateLocationPuck)
    {
      puckLocation = self->_puckLocation;
      [(TraceControlView *)self->_traceControlView setPosition:position];
      [(TraceSliderView *)self->_traceSliderView setTraceTime:1 animated:position];
      serviceCopy = v10;
      if (puckLocation)
      {
        v9 = +[MKLocationManager sharedLocationManager];
        [v9 pushLocation:self->_puckLocation];

        serviceCopy = v10;
        self->_shouldUpdateLocationPuck = 0;
      }
    }

    else
    {
      [(TraceControlView *)self->_traceControlView setPosition:position];
      [(TraceSliderView *)self->_traceSliderView setTraceTime:1 animated:position];
      serviceCopy = v10;
    }
  }
}

- (void)navigationService:(id)service didPlayTracePosition:(double)position
{
  serviceCopy = service;
  if (__PAIR64__(self->_debugViewsWereAdded, self->_traceControlsAreShowing) == 0x100000001)
  {
    v7 = serviceCopy;
    [(TraceSliderView *)self->_traceSliderView setTraceTime:0 animated:position];
    [(TraceControlView *)self->_traceControlView setPosition:position];
    serviceCopy = v7;
  }
}

- (void)navigationServiceDidResumeTrace:(id)trace
{
  if (self->_debugViewsWereAdded)
  {
    traceControlView = self->_traceControlView;
    v5 = +[MNNavigationService sharedService];
    -[TraceControlView setIsPlaying:](traceControlView, "setIsPlaying:", [v5 traceIsPlaying]);

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(v5) = objc_opt_respondsToSelector();

    if (v5)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 navigationDebugViewsTracePlaybackDidResume:self];
    }
  }
}

- (void)navigationServiceDidPauseTrace:(id)trace
{
  if (self->_debugViewsWereAdded)
  {
    traceControlView = self->_traceControlView;
    v5 = +[MNNavigationService sharedService];
    -[TraceControlView setIsPlaying:](traceControlView, "setIsPlaying:", [v5 traceIsPlaying]);

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(v5) = objc_opt_respondsToSelector();

    if (v5)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 navigationDebugViewsTracePlaybackDidPause:self];
    }
  }
}

- (void)navigationService:(id)service didFinishLoadingTrace:(id)trace
{
  v5 = [MNNavigationService sharedService:service];
  [v5 traceDuration];
  [(TraceSliderView *)self->_traceSliderView setTraceLength:?];
}

- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason
{
  rerouteCopy = reroute;
  if ([(NavigationDebugViewsController *)self _isSimulating])
  {
    [rerouteCopy distance];
    [(TraceSliderView *)self->_traceSliderView setTraceLength:?];
  }
}

- (void)navigationService:(id)service didUpdateMatchedLocation:(id)location
{
  locationCopy = location;
  if ([(NavigationDebugViewsController *)self _isSimulating])
  {
    routeMatch = [locationCopy routeMatch];
    route = [routeMatch route];
    routeMatch2 = [locationCopy routeMatch];
    [route distanceFromStartToRouteCoordinate:{objc_msgSend(routeMatch2, "routeCoordinate")}];
    v9 = v8;

    [(TraceControlView *)self->_traceControlView setPosition:v9];
    [(TraceSliderView *)self->_traceSliderView setTraceTime:0 animated:v9];
  }
}

- (void)cameraSnapshotPicker:(id)picker didSelectCameraSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  tracePlayer = [(NavigationDebugViewsController *)self tracePlayer];
  [tracePlayer pause];

  puckLocation = [snapshotCopy puckLocation];
  puckLocation = self->_puckLocation;
  self->_puckLocation = puckLocation;

  if (self->_puckLocation)
  {
    self->_shouldUpdateLocationPuck = 1;
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100F71C44;
  v18 = &unk_101661A90;
  selfCopy = self;
  v9 = snapshotCopy;
  v20 = v9;
  [UIView animateWithDuration:0x20000 delay:&v15 options:0 animations:0.33 completion:0.0];
  v10 = [(NavigationDebugViewsController *)self tracePlayer:v15];
  [v9 tracePlaybackTimeFraction];
  v12 = v11;
  tracePlayer2 = [(NavigationDebugViewsController *)self tracePlayer];
  [tracePlayer2 duration];
  [v10 jumpToTime:v14 * v12];

  if (self->_isPresentingModallyPickerVC)
  {
    [(NavigationDebugViewsController *)self _done];
  }
}

- (NSString)tracePath
{
  trace = self->_trace;
  if (trace)
  {
    tracePath = [(MNTrace *)trace tracePath];
  }

  else
  {
    v4 = +[MNNavigationService sharedService];
    tracePath = [v4 tracePath];
  }

  return tracePath;
}

- (void)_dismissModalCameraSnapshotPickerIfNeededAnimated:(BOOL)animated
{
  if (self->_isPresentingModallyPickerVC)
  {
    v6[5] = v3;
    v6[6] = v4;
    modalCameraSnapshotPickerVC = self->_modalCameraSnapshotPickerVC;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100F71DAC;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    [(UINavigationController *)modalCameraSnapshotPickerVC dismissViewControllerAnimated:animated completion:v6];
  }
}

- (void)_presentCameraSnapshotPickerModallyIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(NavigationDebugViewsController *)self _dismissModalCameraSnapshotPickerIfNeededAnimated:0];
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);
  if (WeakRetained)
  {
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_modalPresentingViewController);

    if (!v6)
    {
      return;
    }
  }

  self->_isPresentingModallyPickerVC = 1;
  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_done"];
  navigationItem = [(NavigationCameraSnapshotPickerViewController *)self->_cameraSnapshotPickerVC navigationItem];
  [navigationItem setLeftBarButtonItem:v7];

  v9 = [[UINavigationController alloc] initWithRootViewController:self->_cameraSnapshotPickerVC];
  modalCameraSnapshotPickerVC = self->_modalCameraSnapshotPickerVC;
  self->_modalCameraSnapshotPickerVC = v9;

  tracePlayer = [(NavigationDebugViewsController *)self tracePlayer];
  [tracePlayer pause];

  v12 = objc_loadWeakRetained(&self->_modalPresentingViewController);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->_mainViewController);
  }

  v18 = v14;

  v15 = objc_loadWeakRetained(&self->_modalPresentingViewController);
  if (v18 == v15)
  {

    v17 = v18;
  }

  else
  {
    if (![(NavigationDebugSplitViewController *)self->_splitViewController isCollapsed])
    {

      goto LABEL_14;
    }

    preferredDisplayMode = [(NavigationDebugSplitViewController *)self->_splitViewController preferredDisplayMode];

    v17 = v18;
    if (preferredDisplayMode == 1)
    {
      goto LABEL_15;
    }
  }

  v18 = v17;
  [v17 presentViewController:self->_modalCameraSnapshotPickerVC animated:animatedCopy completion:0];
LABEL_14:
  v17 = v18;
LABEL_15:
}

- (void)_done
{
  [(NavigationDebugViewsController *)self _dismissModalCameraSnapshotPickerIfNeededAnimated:1];
  splitViewController = self->_splitViewController;

  [(NavigationDebugSplitViewController *)splitViewController setPreferredDisplayMode:1];
}

- (id)primaryViewControllerForCollapsingSplitViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);

  return WeakRetained;
}

- (id)splitViewController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController
{
  [(NavigationDebugViewsController *)self _dismissModalCameraSnapshotPickerIfNeededAnimated:0, viewController];
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);

  return WeakRetained;
}

- (id)primaryViewControllerForExpandingSplitViewController:(id)controller
{
  v4 = objc_alloc_init(UIViewController);
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [(UINavigationController *)self->_modalCameraSnapshotPickerVC setViewControllers:v5];

  navigationItem = [(NavigationCameraSnapshotPickerViewController *)self->_cameraSnapshotPickerVC navigationItem];
  [navigationItem setLeftBarButtonItem:0];

  cameraSnapshotPickerVC = self->_cameraSnapshotPickerVC;

  return cameraSnapshotPickerVC;
}

- (void)toggleCameraSnapshotPickerVisibility
{
  if ([(NavigationDebugSplitViewController *)self->_splitViewController preferredDisplayMode]== 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(NavigationDebugSplitViewController *)self->_splitViewController setPreferredDisplayMode:v3];

  [(NavigationDebugViewsController *)self _presentCameraSnapshotPickerModallyIfNeededAnimated:1];
}

- (void)traceSliderView:(id)view editingEndedAtTime:(double)time
{
  v17 = +[MNNavigationService sharedService];
  if ([(NavigationDebugViewsController *)self _isSimulating])
  {
    route = [v17 route];
    [route distance];
    v9 = time / v8;
    v10 = 1.0;
    if (time / v8 < 1.0)
    {
      route2 = [v17 route];
      [route2 distance];
      v12 = 0.0;
      if (time / v11 < 0.0)
      {
        goto LABEL_7;
      }
    }

    route3 = [v17 route];
    [route3 distance];
    if (time / v14 < 1.0)
    {
      route4 = [v17 route];
      [route4 distance];
      v10 = time / v16;
    }

    v12 = v10;
    if (v9 < 1.0)
    {
LABEL_7:

      v10 = v12;
    }

    [v17 setSimulationPosition:v10];
  }

  else
  {
    [v17 setTracePosition:time];
  }

  [(NavigationDebugViewsController *)self _sliderDidEndEditing];
}

- (void)_sliderDidEndEditing
{
  if (self->_shouldResumeTracePlayer)
  {
    v3 = +[MNNavigationService sharedService];
    [v3 setTraceIsPlaying:1];
  }

  [(NavigationDebugViewsController *)self resetHideTraceControlsTimer];
}

- (void)traceSliderViewEditingDidBegin:(id)begin
{
  v6 = +[MNNavigationService sharedService];
  if ([v6 traceIsPlaying])
  {
    self->_shouldResumeTracePlayer = 1;
  }

  else
  {
    isSimulationPlaying = self->_isSimulationPlaying;
    self->_shouldResumeTracePlayer = isSimulationPlaying;
    v5 = v6;
    if (!isSimulationPlaying)
    {
      goto LABEL_5;
    }
  }

  [v6 setTraceIsPlaying:0];
  v5 = v6;
LABEL_5:
}

- (void)traceControlViewPressedSaveCameraSnapshotButton:(id)button
{
  buttonCopy = button;
  tracePath = [(NavigationDebugViewsController *)self tracePath];

  if (!tracePath)
  {
    goto LABEL_25;
  }

  mapView = [(NavigationDebugViewsController *)self mapView];
  _mapLayer = [mapView _mapLayer];

  if (!_mapLayer)
  {
    goto LABEL_25;
  }

  mapView2 = [(NavigationDebugViewsController *)self mapView];
  _mapLayer2 = [mapView2 _mapLayer];

  if (!_mapLayer2)
  {
    goto LABEL_25;
  }

  v10 = +[MKMapCamera camera];
  mapView3 = [(NavigationDebugViewsController *)self mapView];
  [mapView3 centerCoordinate];
  [v10 setCenterCoordinate:?];

  mapView4 = [(NavigationDebugViewsController *)self mapView];
  _mapLayer3 = [mapView4 _mapLayer];
  [_mapLayer3 yaw];
  [v10 setHeading:?];

  mapView5 = [(NavigationDebugViewsController *)self mapView];
  _mapLayer4 = [mapView5 _mapLayer];
  [_mapLayer4 pitch];
  [v10 setPitch:?];

  mapView6 = [(NavigationDebugViewsController *)self mapView];
  _mapLayer5 = [mapView6 _mapLayer];
  [_mapLayer5 altitude];
  [v10 setAltitude:?];

  tracePlayer = [(NavigationDebugViewsController *)self tracePlayer];
  [tracePlayer duration];
  v19 = 0.0;
  v20 = 0.0;
  if (v21 > 0.0)
  {
    tracePlayer2 = [(NavigationDebugViewsController *)self tracePlayer];
    [tracePlayer2 position];
    v24 = v23;
    tracePlayer3 = [(NavigationDebugViewsController *)self tracePlayer];
    [tracePlayer3 duration];
    v20 = v24 / v26;
  }

  v27 = fmin(v20, 1.0);
  if (v20 <= 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v27;
  }

  v29 = [MNLocation alloc];
  mapView7 = [(NavigationDebugViewsController *)self mapView];
  userLocation = [mapView7 userLocation];
  location = [userLocation location];
  v33 = [v29 initWithRawLocation:location];

  v34 = [[NavigationCameraSnapshot alloc] initWithCamera:v10 tracePlaybackTimeFraction:v33 puckLocation:v28];
  mapView8 = [(NavigationDebugViewsController *)self mapView];
  v36 = [mapView8 snapshotViewAfterScreenUpdates:0];

  mapView9 = [(NavigationDebugViewsController *)self mapView];
  window = [mapView9 window];

  mapView10 = [(NavigationDebugViewsController *)self mapView];
  [mapView10 bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  mapView11 = [(NavigationDebugViewsController *)self mapView];
  [window convertRect:mapView11 fromView:{v41, v43, v45, v47}];
  [v36 setFrame:?];

  [window addSubview:v36];
  [v36 bounds];
  v50 = v49;
  if (v49 > 0.0)
  {
    mapView10 = [buttonCopy viewCameraSnapshotsButton];
    [mapView10 bounds];
    v52 = v51;
    [v36 bounds];
    v19 = v52 / (v53 + v53);
  }

  [v36 bounds];
  v55 = v54;
  if (v54 <= 0.0)
  {
    v59 = 0.0;
  }

  else
  {
    mapView11 = [buttonCopy viewCameraSnapshotsButton];
    [mapView11 bounds];
    v57 = v56;
    [v36 bounds];
    v59 = v57 / (v58 + v58);
  }

  [v36 bounds];
  if (v19 >= v59)
  {
    v62 = 0.0;
    if (v60 > 0.0)
    {
      viewCameraSnapshotsButton = [buttonCopy viewCameraSnapshotsButton];
      [viewCameraSnapshotsButton bounds];
      v65 = v68;
      [v36 bounds];
      goto LABEL_19;
    }
  }

  else
  {
    v62 = 0.0;
    if (v61 > 0.0)
    {
      viewCameraSnapshotsButton = [buttonCopy viewCameraSnapshotsButton];
      [viewCameraSnapshotsButton bounds];
      v65 = v64;
      [v36 bounds];
      v67 = v66;
LABEL_19:
      v62 = v65 / (v67 + v67);
    }
  }

  if (v55 > 0.0)
  {
  }

  if (v50 > 0.0)
  {
  }

  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100F7292C;
  v76[3] = &unk_10165EB08;
  v77 = v36;
  v78 = window;
  v79 = buttonCopy;
  v80 = v62;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100F72A5C;
  v72[3] = &unk_10165EB30;
  v73 = v77;
  v74 = v34;
  selfCopy = self;
  v69 = v34;
  v70 = v77;
  v71 = window;
  [UIView animateWithDuration:0x20000 delay:v76 options:v72 animations:0.3 completion:0.0];

LABEL_25:
}

- (void)traceControlViewPressedBookmarksButton:(id)button
{
  buttonCopy = button;
  traceBookmarkSelector = self->_traceBookmarkSelector;
  if (!traceBookmarkSelector)
  {
    v5 = [[TraceBookmarkSelector alloc] initWithStyle:0];
    v6 = self->_traceBookmarkSelector;
    self->_traceBookmarkSelector = v5;

    [(TraceBookmarkSelector *)self->_traceBookmarkSelector setModalPresentationStyle:2];
    [(TraceBookmarkSelector *)self->_traceBookmarkSelector setDelegate:self];
    traceBookmarkSelector = self->_traceBookmarkSelector;
  }

  [(TraceBookmarkSelector *)traceBookmarkSelector reloadBookmarks];
  v7 = [[UINavigationController alloc] initWithRootViewController:self->_traceBookmarkSelector];
  WeakRetained = objc_loadWeakRetained(&self->_modalPresentingViewController);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_mainViewController);
  }

  v11 = v10;

  [v11 _maps_topMostPresentViewController:v7 animated:1 completion:0];
  [(NavigationDebugViewsController *)self resetHideTraceControlsTimer];
}

- (void)traceControlView:(id)view setPlaySpeed:(double)speed
{
  v7 = +[MNNavigationService sharedService];
  if ([(NavigationDebugViewsController *)self _isSimulating])
  {
    [v7 setSimulationSpeedMultiplier:speed];
  }

  else
  {
    [v7 setTracePlaybackSpeed:speed];
  }

  [(TraceSliderView *)self->_traceSliderView setPlaySpeed:speed];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationDebugViewsTracePlaybackSpeedDidChange:self speedMultiplier:speed];

  [(NavigationDebugViewsController *)self resetHideTraceControlsTimer];
}

- (void)traceControlViewJumpedBack:(id)back
{
  v11 = +[MNNavigationService sharedService];
  if ([(NavigationDebugViewsController *)self _isSimulating])
  {
    route = [v11 route];
    [route distance];
    v6 = v5;

    remainingDistanceInfo = [v11 remainingDistanceInfo];
    [remainingDistanceInfo distanceRemainingToEndOfRoute];
    v9 = v8 + -30.0;

    [v11 setSimulationPosition:{fmin(fmax(v9 / v6, 0.0), 1.0)}];
  }

  else
  {
    [v11 tracePosition];
    [v11 setTracePosition:v10 + -30.0];
  }

  [(NavigationDebugViewsController *)self resetHideTraceControlsTimer];
}

- (void)traceControlView:(id)view setPlaying:(BOOL)playing
{
  playingCopy = playing;
  v7 = +[MNNavigationService sharedService];
  if ([(NavigationDebugViewsController *)self _isSimulating])
  {
    self->_isSimulationPlaying = playingCopy;
    v6 = 0.0;
    if (playingCopy)
    {
      [(TraceSliderView *)self->_traceSliderView playSpeed];
    }

    [v7 setSimulationSpeedMultiplier:v6];
  }

  else
  {
    [v7 setTraceIsPlaying:playingCopy];
  }

  [(NavigationDebugViewsController *)self resetHideTraceControlsTimer];
}

- (void)tracePlayer:(id)player didPlayAtTime:(double)time
{
  if (self->_debugViewsWereAdded)
  {
    [(TraceSliderView *)self->_traceSliderView setTraceTime:1 animated:?];
    traceControlView = self->_traceControlView;

    [(TraceControlView *)traceControlView setPosition:time];
  }
}

- (void)tracePlayer:(id)player didSeekToTime:(double)time fromTime:(double)fromTime location:(id)location
{
  if (self->_debugViewsWereAdded)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained navigationDebugViewsTracePlaybackDidSeek:self];

    if (self->_shouldUpdateLocationPuck)
    {
      puckLocation = self->_puckLocation;
      [(TraceControlView *)self->_traceControlView setPosition:time];
      [(TraceSliderView *)self->_traceSliderView setTraceTime:0 animated:time];
      if (puckLocation)
      {
        v10 = +[MKLocationManager sharedLocationManager];
        [v10 pushLocation:self->_puckLocation];

        self->_shouldUpdateLocationPuck = 0;
      }
    }

    else
    {
      [(TraceControlView *)self->_traceControlView setPosition:time];
      traceSliderView = self->_traceSliderView;

      [(TraceSliderView *)traceSliderView setTraceTime:0 animated:time];
    }
  }
}

- (void)tracePlayerDidResume:(id)resume
{
  if (self->_debugViewsWereAdded)
  {
    traceControlView = self->_traceControlView;
    tracePlayer = [(NavigationDebugViewsController *)self tracePlayer];
    if ([tracePlayer isPlaying])
    {
      tracePlayer2 = [(NavigationDebugViewsController *)self tracePlayer];
      -[TraceControlView setIsPlaying:](traceControlView, "setIsPlaying:", [tracePlayer2 isPaused] ^ 1);
    }

    else
    {
      [(TraceControlView *)traceControlView setIsPlaying:0];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 navigationDebugViewsTracePlaybackDidResume:self];
    }
  }
}

- (void)tracePlayerDidPause:(id)pause
{
  if (self->_debugViewsWereAdded)
  {
    traceControlView = self->_traceControlView;
    tracePlayer = [(NavigationDebugViewsController *)self tracePlayer];
    if ([tracePlayer isPlaying])
    {
      tracePlayer2 = [(NavigationDebugViewsController *)self tracePlayer];
      -[TraceControlView setIsPlaying:](traceControlView, "setIsPlaying:", [tracePlayer2 isPaused] ^ 1);
    }

    else
    {
      [(TraceControlView *)traceControlView setIsPlaying:0];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 navigationDebugViewsTracePlaybackDidPause:self];
    }
  }
}

- (void)tracePlayerDidStop:(id)stop
{
  if (self->_debugViewsWereAdded)
  {
    [(NavigationDebugViewsController *)self hideTraceControls];
  }
}

- (void)tracePlayerDidStart:(id)start
{
  if (self->_debugViewsWereAdded)
  {
    [(NavigationDebugViewsController *)self showTraceControls];
  }
}

- (void)_addTraceBookmark
{
  v4 = +[MNNavigationService sharedService];
  if (+[UIApplication _maps_isAnyApplicationOrCarPlayApplicationSceneForeground])
  {
    v2 = _UICreateScreenUIImage();
    v3 = UIImagePNGRepresentation(v2);
    [v4 recordTraceBookmarkAtCurrentPositionWthScreenshotData:v3];
  }
}

- (void)_longPressBookmarkGesture:(id)gesture
{
  if ([gesture state] == 1)
  {

    [(NavigationDebugViewsController *)self _addTraceBookmark];
  }
}

- (void)didManuallyRemoveDebugViews
{
  [(NSTimer *)self->_hideTraceControlTimer invalidate];
  [(NavigationDebugViewsController *)self setHideTraceControlTimer:0];
  if (self->_nonsplitRootViewController)
  {
    if (self->_splitViewController)
    {
      WeakRetained = objc_loadWeakRetained(&self->_window);

      if (WeakRetained)
      {
        nonsplitRootViewController = self->_nonsplitRootViewController;
        v5 = objc_loadWeakRetained(&self->_mainViewController);
        [(UINavigationController *)nonsplitRootViewController pushViewController:v5 animated:0];

        v6 = self->_nonsplitRootViewController;
        v7 = objc_loadWeakRetained(&self->_window);
        [v7 setRootViewController:v6];

        v8 = self->_nonsplitRootViewController;
        self->_nonsplitRootViewController = 0;

        splitViewController = self->_splitViewController;
        self->_splitViewController = 0;

        objc_storeWeak(&self->_mainViewController, 0);
        cameraSnapshotPickerVC = self->_cameraSnapshotPickerVC;
        self->_cameraSnapshotPickerVC = 0;
      }
    }
  }

  traceControlView = self->_traceControlView;
  self->_traceControlView = 0;

  traceSliderView = self->_traceSliderView;
  self->_traceSliderView = 0;

  debugControlsView = self->_debugControlsView;
  self->_debugControlsView = 0;

  [(TraceBookmarkSelector *)self->_traceBookmarkSelector setDelegate:0];
  traceBookmarkSelector = self->_traceBookmarkSelector;
  self->_traceBookmarkSelector = 0;

  [(NavigationDebugViewsController *)self setMapView:0];
  *&self->_traceControlsAreShowing = 0;
}

- (void)removeDebugViewsFromView:(id)view
{
  viewCopy = view;
  [(NavigationDebugViewsController *)self hideTraceControls];
  [(UIView *)self->_debugControlsView removeFromSuperview];
  [viewCopy removeGestureRecognizer:self->_bookmarkGestureRecognizer];
  [viewCopy removeGestureRecognizer:self->_oldBookmarkGestureRecognizer];

  [(NavigationDebugViewsController *)self didManuallyRemoveDebugViews];
}

- (void)_setUpCameraSnapshotPickerVCFromWindow:(id)window
{
  windowCopy = window;
  v5 = windowCopy;
  if (windowCopy)
  {
    rootViewController = [windowCopy rootViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      rootViewController2 = [v5 rootViewController];
      nonsplitRootViewController = self->_nonsplitRootViewController;
      self->_nonsplitRootViewController = rootViewController2;

      v10 = objc_alloc_init(NavigationDebugSplitViewController);
      splitViewController = self->_splitViewController;
      self->_splitViewController = v10;

      v12 = [[NavigationCameraSnapshotPickerViewController alloc] initWithDelegate:self];
      cameraSnapshotPickerVC = self->_cameraSnapshotPickerVC;
      self->_cameraSnapshotPickerVC = v12;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        topViewController = [(UINavigationController *)self->_nonsplitRootViewController topViewController];
        p_mainViewController = &self->_mainViewController;
        objc_storeWeak(&self->_mainViewController, topViewController);
      }

      else
      {
        p_mainViewController = &self->_mainViewController;
        objc_storeWeak(&self->_mainViewController, self->_nonsplitRootViewController);
      }

      v18[0] = self->_cameraSnapshotPickerVC;
      WeakRetained = objc_loadWeakRetained(p_mainViewController);
      v18[1] = WeakRetained;
      v17 = [NSArray arrayWithObjects:v18 count:2];
      [(NavigationDebugSplitViewController *)self->_splitViewController setViewControllers:v17];

      [(NavigationDebugSplitViewController *)self->_splitViewController setDelegate:self];
      [(NavigationDebugSplitViewController *)self->_splitViewController setPresentsWithGesture:0];
      [(NavigationDebugSplitViewController *)self->_splitViewController setPreferredDisplayMode:1];
      [(NavigationDebugSplitViewController *)self->_splitViewController setPreferredPrimaryColumnWidthFraction:0.370000005];
      [v5 setRootViewController:self->_splitViewController];
      objc_storeWeak(&self->_window, v5);
    }
  }
}

- (void)setUpCameraSnapshotPickerVCFromViewController:(id)controller
{
  obj = controller;
  v4 = [[NavigationCameraSnapshotPickerViewController alloc] initWithDelegate:self];
  cameraSnapshotPickerVC = self->_cameraSnapshotPickerVC;
  self->_cameraSnapshotPickerVC = v4;

  objc_storeWeak(&self->_modalPresentingViewController, obj);
}

- (void)addDebugViewsToView:(id)view layoutGuide:(id)guide mapView:(id)mapView modalPresentingViewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  mapViewCopy = mapView;
  guideCopy = guide;
  debugControlsView = [(NavigationDebugViewsController *)self debugControlsView];
  [debugControlsView setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = debugControlsView;
  v31 = viewCopy;
  [viewCopy addSubview:debugControlsView];
  leadingAnchor = [(UIView *)self->_debugControlsView leadingAnchor];
  leadingAnchor2 = [guideCopy leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[0] = v14;
  trailingAnchor = [(UIView *)self->_debugControlsView trailingAnchor];
  trailingAnchor2 = [guideCopy trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v32[1] = v17;
  bottomAnchor = [(UIView *)self->_debugControlsView bottomAnchor];
  bottomAnchor2 = [guideCopy bottomAnchor];

  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v32[2] = v20;
  v21 = [NSArray arrayWithObjects:v32 count:3];
  [NSLayoutConstraint activateConstraints:v21];

  bookmarkGestureRecognizer = self->_bookmarkGestureRecognizer;
  if (!bookmarkGestureRecognizer)
  {
    v23 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"_longPressBookmarkGesture:"];
    v24 = self->_bookmarkGestureRecognizer;
    self->_bookmarkGestureRecognizer = v23;

    [(UILongPressGestureRecognizer *)self->_bookmarkGestureRecognizer setAllowableMovement:100.0];
    [(UILongPressGestureRecognizer *)self->_bookmarkGestureRecognizer setDelegate:self];
    [(UILongPressGestureRecognizer *)self->_bookmarkGestureRecognizer setMinimumPressDuration:2.0];
    v25 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_threeFingerTapBookmarkGesture:"];
    oldBookmarkGestureRecognizer = self->_oldBookmarkGestureRecognizer;
    self->_oldBookmarkGestureRecognizer = v25;

    [(UITapGestureRecognizer *)self->_oldBookmarkGestureRecognizer setNumberOfTouchesRequired:3];
    bookmarkGestureRecognizer = self->_bookmarkGestureRecognizer;
  }

  [v31 addGestureRecognizer:bookmarkGestureRecognizer];
  [v31 addGestureRecognizer:self->_oldBookmarkGestureRecognizer];
  [(NavigationDebugViewsController *)self setMapView:mapViewCopy];

  [(NavigationDebugViewsController *)self setUpCameraSnapshotPickerVCFromViewController:controllerCopy];
  [(NavigationDebugViewsController *)self didManuallyAddDebugViews];
  if ([(NavigationDebugViewsController *)self automaticallyHideTraceControls])
  {
    [(NavigationDebugViewsController *)self hideTraceControls];
  }
}

- (UIView)debugControlsView
{
  debugControlsView = self->_debugControlsView;
  if (!debugControlsView)
  {
    v4 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v9 = self->_debugControlsView;
    self->_debugControlsView = v8;

    v10 = [UIColor colorWithWhite:0.0 alpha:0.5];
    [(UIView *)self->_debugControlsView setBackgroundColor:v10];

    layer = [(UIView *)self->_debugControlsView layer];
    [layer setCornerRadius:10.0];

    _isSimulating = [(NavigationDebugViewsController *)self _isSimulating];
    v13 = +[MNNavigationService sharedService];
    if (([v13 isNavigatingFromTrace] & 1) != 0 || _isSimulating)
    {
      height = [[TraceControlView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      traceControlView = self->_traceControlView;
      self->_traceControlView = height;

      [(TraceControlView *)self->_traceControlView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(TraceControlView *)self->_traceControlView setDelegate:self];
      GEOConfigGetDouble();
      if (v16 > 0.0)
      {
        [(TraceControlView *)self->_traceControlView setPlaySpeed:?];
      }

      [(TraceControlView *)self->_traceControlView setIsPlaying:1];
      self->_isSimulationPlaying = _isSimulating;
      [(TraceControlView *)self->_traceControlView setUseDistanceAsPosition:_isSimulating];
      [(TraceControlView *)self->_traceControlView setPosition:0.0];
      [(UIView *)self->_debugControlsView addSubview:self->_traceControlView];
      height2 = [[TraceSliderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      traceSliderView = self->_traceSliderView;
      self->_traceSliderView = height2;

      if (_isSimulating)
      {
        route = [v13 route];
        [route distance];
        [(TraceSliderView *)self->_traceSliderView setTraceLength:?];
      }

      else
      {
        [v13 traceDuration];
        [(TraceSliderView *)self->_traceSliderView setTraceLength:?];
      }

      [(TraceControlView *)self->_traceControlView playSpeed];
      [(TraceSliderView *)self->_traceSliderView setPlaySpeed:?];
      [(TraceSliderView *)self->_traceSliderView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(TraceSliderView *)self->_traceSliderView setDelegate:self];
      LODWORD(v20) = 1148846080;
      [(TraceSliderView *)self->_traceSliderView setContentHuggingPriority:1 forAxis:v20];
      LODWORD(v21) = 1148846080;
      [(TraceSliderView *)self->_traceSliderView setContentCompressionResistancePriority:1 forAxis:v21];
      v22 = self->_traceSliderView;
      [v13 tracePosition];
      [(TraceSliderView *)v22 setTraceTime:?];
      [(UIView *)self->_debugControlsView addSubview:self->_traceSliderView];
      topAnchor = [(TraceSliderView *)self->_traceSliderView topAnchor];
      topAnchor2 = [(UIView *)self->_debugControlsView topAnchor];
      v43 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
      v46[0] = v43;
      leadingAnchor = [(TraceSliderView *)self->_traceSliderView leadingAnchor];
      leadingAnchor2 = [(UIView *)self->_debugControlsView leadingAnchor];
      v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v46[1] = v40;
      trailingAnchor = [(TraceSliderView *)self->_traceSliderView trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_debugControlsView trailingAnchor];
      v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v46[2] = v37;
      bottomAnchor = [(TraceControlView *)self->_traceControlView bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_debugControlsView bottomAnchor];
      v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
      v46[3] = v34;
      leadingAnchor3 = [(TraceControlView *)self->_traceControlView leadingAnchor];
      leadingAnchor4 = [(UIView *)self->_debugControlsView leadingAnchor];
      v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v46[4] = v23;
      trailingAnchor3 = [(TraceControlView *)self->_traceControlView trailingAnchor];
      trailingAnchor4 = [(UIView *)self->_debugControlsView trailingAnchor];
      v26 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v46[5] = v26;
      bottomAnchor3 = [(TraceSliderView *)self->_traceSliderView bottomAnchor];
      topAnchor3 = [(TraceControlView *)self->_traceControlView topAnchor];
      v29 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:-4.0];
      v46[6] = v29;
      v30 = [NSArray arrayWithObjects:v46 count:7];
      [NSLayoutConstraint activateConstraints:v30];
    }

    debugControlsView = self->_debugControlsView;
  }

  return debugControlsView;
}

- (double)debugViewHeight
{
  result = 0.0;
  if (self->_debugViewsWereAdded)
  {
    [(UIView *)self->_debugControlsView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height, v2, v3];
    return v5;
  }

  return result;
}

- (void)hideTraceControlsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  hideTraceControlTimer = self->_hideTraceControlTimer;
  if (hideTraceControlTimer)
  {
    [(NSTimer *)hideTraceControlTimer invalidate];
    [(NavigationDebugViewsController *)self setHideTraceControlTimer:0];
  }

  if (![(TraceSliderView *)self->_traceSliderView isSliderEditing]&& self->_traceControlsAreShowing)
  {
    self->_traceControlsAreShowing = 0;
    v6 = 0.3;
    if (!animatedCopy)
    {
      v6 = 0.0;
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100F73FDC;
    v7[3] = &unk_101661B18;
    v7[4] = self;
    [UIView animateWithDuration:v7 animations:v6];
  }
}

- (void)resetHideTraceControlsTimer
{
  hideTraceControlTimer = self->_hideTraceControlTimer;
  if (hideTraceControlTimer)
  {
    [(NSTimer *)hideTraceControlTimer invalidate];
  }

  if (self->_automaticallyHideTraceControls && self->_traceControlsAreShowing)
  {
    v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"hideTraceControls" selector:0 userInfo:0 repeats:5.0];
    [(NavigationDebugViewsController *)self setHideTraceControlTimer:v4];
  }
}

- (void)setAutomaticallyHideTraceControls:(BOOL)controls
{
  if (self->_automaticallyHideTraceControls != controls)
  {
    self->_automaticallyHideTraceControls = controls;
    [(NavigationDebugViewsController *)self resetHideTraceControlsTimer];
  }
}

- (void)resetTracePlayer
{
  [(MNTracePlayer *)self->_tracePlayer unregisterObserver:self];
  tracePlayer = self->_tracePlayer;
  self->_tracePlayer = 0;
}

- (void)showTraceControls
{
  if (!self->_traceControlsAreShowing)
  {
    self->_traceControlsAreShowing = 1;
    traceSliderView = self->_traceSliderView;
    v4 = +[MNNavigationService sharedService];
    [v4 tracePosition];
    [(TraceSliderView *)traceSliderView setTraceTime:?];

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100F74210;
    v6[3] = &unk_101661B18;
    v6[4] = self;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100F74220;
    v5[3] = &unk_101661738;
    v5[4] = self;
    [UIView animateWithDuration:v6 animations:v5 completion:0.3];
  }
}

- (void)prepareToRunNavigation
{
  [(TraceControlView *)self->_traceControlView setIsPlaying:1];
  traceControlView = self->_traceControlView;

  [(TraceControlView *)traceControlView setPlaySpeed:1.0];
}

- (void)dealloc
{
  [(NavigationDebugViewsController *)self resetTracePlayer];
  [(TraceControlView *)self->_traceControlView setDelegate:0];
  [(TraceSliderView *)self->_traceSliderView setDelegate:0];
  [(UILongPressGestureRecognizer *)self->_bookmarkGestureRecognizer setDelegate:0];
  [(NSTimer *)self->_hideTraceControlTimer invalidate];
  v3 = +[MNNavigationService sharedService];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = NavigationDebugViewsController;
  [(NavigationDebugViewsController *)&v4 dealloc];
}

- (NavigationDebugViewsController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = NavigationDebugViewsController;
  v5 = [(NavigationDebugViewsController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    [(MNTracePlayer *)v6->_tracePlayer registerObserver:v6];
    trace = [(MNTracePlayer *)v6->_tracePlayer trace];
    trace = v6->_trace;
    v6->_trace = trace;

    v9 = [[MNTraceBookmarkRecorder alloc] initWithTrace:v6->_trace];
    bookmarkRecorder = v6->_bookmarkRecorder;
    v6->_bookmarkRecorder = v9;

    [(NavigationDebugViewsController *)v6 setAutomaticallyHideTraceControls:1];
    v6->_showTraceControlsForStaleLocations = 1;
    v11 = +[MNNavigationService sharedService];
    [v11 registerObserver:v6];
    v12 = v6;
  }

  return v6;
}

@end