@interface NavigationDebugViewsController
- (BOOL)_isSimulating;
- (NSString)tracePath;
- (NavigationDebugViewsController)initWithDelegate:(id)a3;
- (UIView)debugControlsView;
- (double)debugViewHeight;
- (id)primaryViewControllerForCollapsingSplitViewController:(id)a3;
- (id)primaryViewControllerForExpandingSplitViewController:(id)a3;
- (id)splitViewController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4;
- (void)_addTraceBookmark;
- (void)_dismissModalCameraSnapshotPickerIfNeededAnimated:(BOOL)a3;
- (void)_done;
- (void)_longPressBookmarkGesture:(id)a3;
- (void)_presentCameraSnapshotPickerModallyIfNeededAnimated:(BOOL)a3;
- (void)_setUpCameraSnapshotPickerVCFromWindow:(id)a3;
- (void)_sliderDidEndEditing;
- (void)addDebugViewsToView:(id)a3 layoutGuide:(id)a4 mapView:(id)a5 modalPresentingViewController:(id)a6;
- (void)cameraSnapshotPicker:(id)a3 didSelectCameraSnapshot:(id)a4;
- (void)dealloc;
- (void)didManuallyRemoveDebugViews;
- (void)hideTraceControlsAnimated:(BOOL)a3;
- (void)navigationService:(id)a3 didFinishLoadingTrace:(id)a4;
- (void)navigationService:(id)a3 didPlayTracePosition:(double)a4;
- (void)navigationService:(id)a3 didRecordTraceBookmarkWithID:(unint64_t)a4;
- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5;
- (void)navigationService:(id)a3 didSeekToTracePosition:(double)a4;
- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4;
- (void)navigationServiceDidPauseTrace:(id)a3;
- (void)navigationServiceDidResumeTrace:(id)a3;
- (void)prepareToRunNavigation;
- (void)removeDebugViewsFromView:(id)a3;
- (void)resetHideTraceControlsTimer;
- (void)resetTracePlayer;
- (void)setAutomaticallyHideTraceControls:(BOOL)a3;
- (void)setUpCameraSnapshotPickerVCFromViewController:(id)a3;
- (void)showTraceControls;
- (void)toggleCameraSnapshotPickerVisibility;
- (void)traceControlView:(id)a3 setPlaySpeed:(double)a4;
- (void)traceControlView:(id)a3 setPlaying:(BOOL)a4;
- (void)traceControlViewJumpedBack:(id)a3;
- (void)traceControlViewPressedBookmarksButton:(id)a3;
- (void)traceControlViewPressedSaveCameraSnapshotButton:(id)a3;
- (void)tracePlayer:(id)a3 didPlayAtTime:(double)a4;
- (void)tracePlayer:(id)a3 didSeekToTime:(double)a4 fromTime:(double)a5 location:(id)a6;
- (void)tracePlayerDidPause:(id)a3;
- (void)tracePlayerDidResume:(id)a3;
- (void)tracePlayerDidStart:(id)a3;
- (void)tracePlayerDidStop:(id)a3;
- (void)traceSliderView:(id)a3 editingEndedAtTime:(double)a4;
- (void)traceSliderViewEditingDidBegin:(id)a3;
@end

@implementation NavigationDebugViewsController

- (BOOL)_isSimulating
{
  v2 = +[MNNavigationService sharedService];
  v3 = ([v2 isNavigatingFromTrace] & 1) == 0 && objc_msgSend(v2, "simulationType") && objc_msgSend(v2, "simulationType") != -1;

  return v3;
}

- (void)navigationService:(id)a3 didRecordTraceBookmarkWithID:(unint64_t)a4
{
  [(TraceBookmarkSelector *)self->_traceBookmarkSelector reloadBookmarks];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 BOOLForKey:@"TraceBookmarksAlert"];

  if (v6)
  {
    v11 = [NSString stringWithFormat:@"Bookmark #%lu saved to trace.", a4];
    v7 = +[UIApplication sharedApplication];
    v8 = [v7 delegate];
    v9 = [v8 window];
    v10 = [v9 rootViewController];

    [v10 _maps_presentSimpleAlertWithTitle:@"Bookmark Added" message:v11 dismissalActionTitle:@"OK"];
  }
}

- (void)navigationService:(id)a3 didSeekToTracePosition:(double)a4
{
  v6 = a3;
  if (__PAIR64__(self->_debugViewsWereAdded, self->_traceControlsAreShowing) == 0x100000001)
  {
    v10 = v6;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained navigationDebugViewsTracePlaybackDidSeek:self];

    if (self->_shouldUpdateLocationPuck)
    {
      puckLocation = self->_puckLocation;
      [(TraceControlView *)self->_traceControlView setPosition:a4];
      [(TraceSliderView *)self->_traceSliderView setTraceTime:1 animated:a4];
      v6 = v10;
      if (puckLocation)
      {
        v9 = +[MKLocationManager sharedLocationManager];
        [v9 pushLocation:self->_puckLocation];

        v6 = v10;
        self->_shouldUpdateLocationPuck = 0;
      }
    }

    else
    {
      [(TraceControlView *)self->_traceControlView setPosition:a4];
      [(TraceSliderView *)self->_traceSliderView setTraceTime:1 animated:a4];
      v6 = v10;
    }
  }
}

- (void)navigationService:(id)a3 didPlayTracePosition:(double)a4
{
  v6 = a3;
  if (__PAIR64__(self->_debugViewsWereAdded, self->_traceControlsAreShowing) == 0x100000001)
  {
    v7 = v6;
    [(TraceSliderView *)self->_traceSliderView setTraceTime:0 animated:a4];
    [(TraceControlView *)self->_traceControlView setPosition:a4];
    v6 = v7;
  }
}

- (void)navigationServiceDidResumeTrace:(id)a3
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

- (void)navigationServiceDidPauseTrace:(id)a3
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

- (void)navigationService:(id)a3 didFinishLoadingTrace:(id)a4
{
  v5 = [MNNavigationService sharedService:a3];
  [v5 traceDuration];
  [(TraceSliderView *)self->_traceSliderView setTraceLength:?];
}

- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5
{
  v6 = a4;
  if ([(NavigationDebugViewsController *)self _isSimulating])
  {
    [v6 distance];
    [(TraceSliderView *)self->_traceSliderView setTraceLength:?];
  }
}

- (void)navigationService:(id)a3 didUpdateMatchedLocation:(id)a4
{
  v10 = a4;
  if ([(NavigationDebugViewsController *)self _isSimulating])
  {
    v5 = [v10 routeMatch];
    v6 = [v5 route];
    v7 = [v10 routeMatch];
    [v6 distanceFromStartToRouteCoordinate:{objc_msgSend(v7, "routeCoordinate")}];
    v9 = v8;

    [(TraceControlView *)self->_traceControlView setPosition:v9];
    [(TraceSliderView *)self->_traceSliderView setTraceTime:0 animated:v9];
  }
}

- (void)cameraSnapshotPicker:(id)a3 didSelectCameraSnapshot:(id)a4
{
  v5 = a4;
  v6 = [(NavigationDebugViewsController *)self tracePlayer];
  [v6 pause];

  v7 = [v5 puckLocation];
  puckLocation = self->_puckLocation;
  self->_puckLocation = v7;

  if (self->_puckLocation)
  {
    self->_shouldUpdateLocationPuck = 1;
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100F71C44;
  v18 = &unk_101661A90;
  v19 = self;
  v9 = v5;
  v20 = v9;
  [UIView animateWithDuration:0x20000 delay:&v15 options:0 animations:0.33 completion:0.0];
  v10 = [(NavigationDebugViewsController *)self tracePlayer:v15];
  [v9 tracePlaybackTimeFraction];
  v12 = v11;
  v13 = [(NavigationDebugViewsController *)self tracePlayer];
  [v13 duration];
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
    v3 = [(MNTrace *)trace tracePath];
  }

  else
  {
    v4 = +[MNNavigationService sharedService];
    v3 = [v4 tracePath];
  }

  return v3;
}

- (void)_dismissModalCameraSnapshotPickerIfNeededAnimated:(BOOL)a3
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
    [(UINavigationController *)modalCameraSnapshotPickerVC dismissViewControllerAnimated:a3 completion:v6];
  }
}

- (void)_presentCameraSnapshotPickerModallyIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
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
  v8 = [(NavigationCameraSnapshotPickerViewController *)self->_cameraSnapshotPickerVC navigationItem];
  [v8 setLeftBarButtonItem:v7];

  v9 = [[UINavigationController alloc] initWithRootViewController:self->_cameraSnapshotPickerVC];
  modalCameraSnapshotPickerVC = self->_modalCameraSnapshotPickerVC;
  self->_modalCameraSnapshotPickerVC = v9;

  v11 = [(NavigationDebugViewsController *)self tracePlayer];
  [v11 pause];

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

    v16 = [(NavigationDebugSplitViewController *)self->_splitViewController preferredDisplayMode];

    v17 = v18;
    if (v16 == 1)
    {
      goto LABEL_15;
    }
  }

  v18 = v17;
  [v17 presentViewController:self->_modalCameraSnapshotPickerVC animated:v3 completion:0];
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

- (id)primaryViewControllerForCollapsingSplitViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);

  return WeakRetained;
}

- (id)splitViewController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4
{
  [(NavigationDebugViewsController *)self _dismissModalCameraSnapshotPickerIfNeededAnimated:0, a4];
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);

  return WeakRetained;
}

- (id)primaryViewControllerForExpandingSplitViewController:(id)a3
{
  v4 = objc_alloc_init(UIViewController);
  v9 = v4;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [(UINavigationController *)self->_modalCameraSnapshotPickerVC setViewControllers:v5];

  v6 = [(NavigationCameraSnapshotPickerViewController *)self->_cameraSnapshotPickerVC navigationItem];
  [v6 setLeftBarButtonItem:0];

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

- (void)traceSliderView:(id)a3 editingEndedAtTime:(double)a4
{
  v17 = +[MNNavigationService sharedService];
  if ([(NavigationDebugViewsController *)self _isSimulating])
  {
    v7 = [v17 route];
    [v7 distance];
    v9 = a4 / v8;
    v10 = 1.0;
    if (a4 / v8 < 1.0)
    {
      v4 = [v17 route];
      [v4 distance];
      v12 = 0.0;
      if (a4 / v11 < 0.0)
      {
        goto LABEL_7;
      }
    }

    v13 = [v17 route];
    [v13 distance];
    if (a4 / v14 < 1.0)
    {
      v15 = [v17 route];
      [v15 distance];
      v10 = a4 / v16;
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
    [v17 setTracePosition:a4];
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

- (void)traceSliderViewEditingDidBegin:(id)a3
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

- (void)traceControlViewPressedSaveCameraSnapshotButton:(id)a3
{
  v4 = a3;
  v5 = [(NavigationDebugViewsController *)self tracePath];

  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = [(NavigationDebugViewsController *)self mapView];
  v7 = [v6 _mapLayer];

  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = [(NavigationDebugViewsController *)self mapView];
  v9 = [v8 _mapLayer];

  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = +[MKMapCamera camera];
  v11 = [(NavigationDebugViewsController *)self mapView];
  [v11 centerCoordinate];
  [v10 setCenterCoordinate:?];

  v12 = [(NavigationDebugViewsController *)self mapView];
  v13 = [v12 _mapLayer];
  [v13 yaw];
  [v10 setHeading:?];

  v14 = [(NavigationDebugViewsController *)self mapView];
  v15 = [v14 _mapLayer];
  [v15 pitch];
  [v10 setPitch:?];

  v16 = [(NavigationDebugViewsController *)self mapView];
  v17 = [v16 _mapLayer];
  [v17 altitude];
  [v10 setAltitude:?];

  v18 = [(NavigationDebugViewsController *)self tracePlayer];
  [v18 duration];
  v19 = 0.0;
  v20 = 0.0;
  if (v21 > 0.0)
  {
    v22 = [(NavigationDebugViewsController *)self tracePlayer];
    [v22 position];
    v24 = v23;
    v25 = [(NavigationDebugViewsController *)self tracePlayer];
    [v25 duration];
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
  v30 = [(NavigationDebugViewsController *)self mapView];
  v31 = [v30 userLocation];
  v32 = [v31 location];
  v33 = [v29 initWithRawLocation:v32];

  v34 = [[NavigationCameraSnapshot alloc] initWithCamera:v10 tracePlaybackTimeFraction:v33 puckLocation:v28];
  v35 = [(NavigationDebugViewsController *)self mapView];
  v36 = [v35 snapshotViewAfterScreenUpdates:0];

  v37 = [(NavigationDebugViewsController *)self mapView];
  v38 = [v37 window];

  v39 = [(NavigationDebugViewsController *)self mapView];
  [v39 bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [(NavigationDebugViewsController *)self mapView];
  [v38 convertRect:v48 fromView:{v41, v43, v45, v47}];
  [v36 setFrame:?];

  [v38 addSubview:v36];
  [v36 bounds];
  v50 = v49;
  if (v49 > 0.0)
  {
    v39 = [v4 viewCameraSnapshotsButton];
    [v39 bounds];
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
    v48 = [v4 viewCameraSnapshotsButton];
    [v48 bounds];
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
      v63 = [v4 viewCameraSnapshotsButton];
      [v63 bounds];
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
      v63 = [v4 viewCameraSnapshotsButton];
      [v63 bounds];
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
  v78 = v38;
  v79 = v4;
  v80 = v62;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100F72A5C;
  v72[3] = &unk_10165EB30;
  v73 = v77;
  v74 = v34;
  v75 = self;
  v69 = v34;
  v70 = v77;
  v71 = v38;
  [UIView animateWithDuration:0x20000 delay:v76 options:v72 animations:0.3 completion:0.0];

LABEL_25:
}

- (void)traceControlViewPressedBookmarksButton:(id)a3
{
  v12 = a3;
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

- (void)traceControlView:(id)a3 setPlaySpeed:(double)a4
{
  v7 = +[MNNavigationService sharedService];
  if ([(NavigationDebugViewsController *)self _isSimulating])
  {
    [v7 setSimulationSpeedMultiplier:a4];
  }

  else
  {
    [v7 setTracePlaybackSpeed:a4];
  }

  [(TraceSliderView *)self->_traceSliderView setPlaySpeed:a4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationDebugViewsTracePlaybackSpeedDidChange:self speedMultiplier:a4];

  [(NavigationDebugViewsController *)self resetHideTraceControlsTimer];
}

- (void)traceControlViewJumpedBack:(id)a3
{
  v11 = +[MNNavigationService sharedService];
  if ([(NavigationDebugViewsController *)self _isSimulating])
  {
    v4 = [v11 route];
    [v4 distance];
    v6 = v5;

    v7 = [v11 remainingDistanceInfo];
    [v7 distanceRemainingToEndOfRoute];
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

- (void)traceControlView:(id)a3 setPlaying:(BOOL)a4
{
  v4 = a4;
  v7 = +[MNNavigationService sharedService];
  if ([(NavigationDebugViewsController *)self _isSimulating])
  {
    self->_isSimulationPlaying = v4;
    v6 = 0.0;
    if (v4)
    {
      [(TraceSliderView *)self->_traceSliderView playSpeed];
    }

    [v7 setSimulationSpeedMultiplier:v6];
  }

  else
  {
    [v7 setTraceIsPlaying:v4];
  }

  [(NavigationDebugViewsController *)self resetHideTraceControlsTimer];
}

- (void)tracePlayer:(id)a3 didPlayAtTime:(double)a4
{
  if (self->_debugViewsWereAdded)
  {
    [(TraceSliderView *)self->_traceSliderView setTraceTime:1 animated:?];
    traceControlView = self->_traceControlView;

    [(TraceControlView *)traceControlView setPosition:a4];
  }
}

- (void)tracePlayer:(id)a3 didSeekToTime:(double)a4 fromTime:(double)a5 location:(id)a6
{
  if (self->_debugViewsWereAdded)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained navigationDebugViewsTracePlaybackDidSeek:self];

    if (self->_shouldUpdateLocationPuck)
    {
      puckLocation = self->_puckLocation;
      [(TraceControlView *)self->_traceControlView setPosition:a4];
      [(TraceSliderView *)self->_traceSliderView setTraceTime:0 animated:a4];
      if (puckLocation)
      {
        v10 = +[MKLocationManager sharedLocationManager];
        [v10 pushLocation:self->_puckLocation];

        self->_shouldUpdateLocationPuck = 0;
      }
    }

    else
    {
      [(TraceControlView *)self->_traceControlView setPosition:a4];
      traceSliderView = self->_traceSliderView;

      [(TraceSliderView *)traceSliderView setTraceTime:0 animated:a4];
    }
  }
}

- (void)tracePlayerDidResume:(id)a3
{
  if (self->_debugViewsWereAdded)
  {
    traceControlView = self->_traceControlView;
    v5 = [(NavigationDebugViewsController *)self tracePlayer];
    if ([v5 isPlaying])
    {
      v6 = [(NavigationDebugViewsController *)self tracePlayer];
      -[TraceControlView setIsPlaying:](traceControlView, "setIsPlaying:", [v6 isPaused] ^ 1);
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

- (void)tracePlayerDidPause:(id)a3
{
  if (self->_debugViewsWereAdded)
  {
    traceControlView = self->_traceControlView;
    v5 = [(NavigationDebugViewsController *)self tracePlayer];
    if ([v5 isPlaying])
    {
      v6 = [(NavigationDebugViewsController *)self tracePlayer];
      -[TraceControlView setIsPlaying:](traceControlView, "setIsPlaying:", [v6 isPaused] ^ 1);
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

- (void)tracePlayerDidStop:(id)a3
{
  if (self->_debugViewsWereAdded)
  {
    [(NavigationDebugViewsController *)self hideTraceControls];
  }
}

- (void)tracePlayerDidStart:(id)a3
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

- (void)_longPressBookmarkGesture:(id)a3
{
  if ([a3 state] == 1)
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

- (void)removeDebugViewsFromView:(id)a3
{
  v4 = a3;
  [(NavigationDebugViewsController *)self hideTraceControls];
  [(UIView *)self->_debugControlsView removeFromSuperview];
  [v4 removeGestureRecognizer:self->_bookmarkGestureRecognizer];
  [v4 removeGestureRecognizer:self->_oldBookmarkGestureRecognizer];

  [(NavigationDebugViewsController *)self didManuallyRemoveDebugViews];
}

- (void)_setUpCameraSnapshotPickerVCFromWindow:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 rootViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [v5 rootViewController];
      nonsplitRootViewController = self->_nonsplitRootViewController;
      self->_nonsplitRootViewController = v8;

      v10 = objc_alloc_init(NavigationDebugSplitViewController);
      splitViewController = self->_splitViewController;
      self->_splitViewController = v10;

      v12 = [[NavigationCameraSnapshotPickerViewController alloc] initWithDelegate:self];
      cameraSnapshotPickerVC = self->_cameraSnapshotPickerVC;
      self->_cameraSnapshotPickerVC = v12;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [(UINavigationController *)self->_nonsplitRootViewController topViewController];
        p_mainViewController = &self->_mainViewController;
        objc_storeWeak(&self->_mainViewController, v14);
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

- (void)setUpCameraSnapshotPickerVCFromViewController:(id)a3
{
  obj = a3;
  v4 = [[NavigationCameraSnapshotPickerViewController alloc] initWithDelegate:self];
  cameraSnapshotPickerVC = self->_cameraSnapshotPickerVC;
  self->_cameraSnapshotPickerVC = v4;

  objc_storeWeak(&self->_modalPresentingViewController, obj);
}

- (void)addDebugViewsToView:(id)a3 layoutGuide:(id)a4 mapView:(id)a5 modalPresentingViewController:(id)a6
{
  v10 = a3;
  v29 = a6;
  v28 = a5;
  v11 = a4;
  v12 = [(NavigationDebugViewsController *)self debugControlsView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = v12;
  v31 = v10;
  [v10 addSubview:v12];
  v27 = [(UIView *)self->_debugControlsView leadingAnchor];
  v13 = [v11 leadingAnchor];
  v14 = [v27 constraintEqualToAnchor:v13];
  v32[0] = v14;
  v15 = [(UIView *)self->_debugControlsView trailingAnchor];
  v16 = [v11 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v32[1] = v17;
  v18 = [(UIView *)self->_debugControlsView bottomAnchor];
  v19 = [v11 bottomAnchor];

  v20 = [v18 constraintEqualToAnchor:v19];
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
  [(NavigationDebugViewsController *)self setMapView:v28];

  [(NavigationDebugViewsController *)self setUpCameraSnapshotPickerVCFromViewController:v29];
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

    v11 = [(UIView *)self->_debugControlsView layer];
    [v11 setCornerRadius:10.0];

    v12 = [(NavigationDebugViewsController *)self _isSimulating];
    v13 = +[MNNavigationService sharedService];
    if (([v13 isNavigatingFromTrace] & 1) != 0 || v12)
    {
      v14 = [[TraceControlView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      traceControlView = self->_traceControlView;
      self->_traceControlView = v14;

      [(TraceControlView *)self->_traceControlView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(TraceControlView *)self->_traceControlView setDelegate:self];
      GEOConfigGetDouble();
      if (v16 > 0.0)
      {
        [(TraceControlView *)self->_traceControlView setPlaySpeed:?];
      }

      [(TraceControlView *)self->_traceControlView setIsPlaying:1];
      self->_isSimulationPlaying = v12;
      [(TraceControlView *)self->_traceControlView setUseDistanceAsPosition:v12];
      [(TraceControlView *)self->_traceControlView setPosition:0.0];
      [(UIView *)self->_debugControlsView addSubview:self->_traceControlView];
      v17 = [[TraceSliderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
      traceSliderView = self->_traceSliderView;
      self->_traceSliderView = v17;

      if (v12)
      {
        v19 = [v13 route];
        [v19 distance];
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
      v45 = [(TraceSliderView *)self->_traceSliderView topAnchor];
      v44 = [(UIView *)self->_debugControlsView topAnchor];
      v43 = [v45 constraintEqualToAnchor:v44 constant:8.0];
      v46[0] = v43;
      v42 = [(TraceSliderView *)self->_traceSliderView leadingAnchor];
      v41 = [(UIView *)self->_debugControlsView leadingAnchor];
      v40 = [v42 constraintEqualToAnchor:v41];
      v46[1] = v40;
      v39 = [(TraceSliderView *)self->_traceSliderView trailingAnchor];
      v38 = [(UIView *)self->_debugControlsView trailingAnchor];
      v37 = [v39 constraintEqualToAnchor:v38];
      v46[2] = v37;
      v36 = [(TraceControlView *)self->_traceControlView bottomAnchor];
      v35 = [(UIView *)self->_debugControlsView bottomAnchor];
      v34 = [v36 constraintEqualToAnchor:v35 constant:-8.0];
      v46[3] = v34;
      v33 = [(TraceControlView *)self->_traceControlView leadingAnchor];
      v32 = [(UIView *)self->_debugControlsView leadingAnchor];
      v23 = [v33 constraintEqualToAnchor:v32];
      v46[4] = v23;
      v24 = [(TraceControlView *)self->_traceControlView trailingAnchor];
      v25 = [(UIView *)self->_debugControlsView trailingAnchor];
      v26 = [v24 constraintEqualToAnchor:v25];
      v46[5] = v26;
      v27 = [(TraceSliderView *)self->_traceSliderView bottomAnchor];
      v28 = [(TraceControlView *)self->_traceControlView topAnchor];
      v29 = [v27 constraintEqualToAnchor:v28 constant:-4.0];
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

- (void)hideTraceControlsAnimated:(BOOL)a3
{
  v3 = a3;
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
    if (!v3)
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

- (void)setAutomaticallyHideTraceControls:(BOOL)a3
{
  if (self->_automaticallyHideTraceControls != a3)
  {
    self->_automaticallyHideTraceControls = a3;
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

- (NavigationDebugViewsController)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NavigationDebugViewsController;
  v5 = [(NavigationDebugViewsController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    [(MNTracePlayer *)v6->_tracePlayer registerObserver:v6];
    v7 = [(MNTracePlayer *)v6->_tracePlayer trace];
    trace = v6->_trace;
    v6->_trace = v7;

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