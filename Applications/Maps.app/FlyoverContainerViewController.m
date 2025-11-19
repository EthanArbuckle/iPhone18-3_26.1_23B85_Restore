@interface FlyoverContainerViewController
- (BOOL)prefersStatusBarHidden;
- (FlyoverContainerViewController)initWithMapItem:(id)a3;
- (FlyoverContainerViewControllerDelegate)flyoverDelegate;
- (UIView)passThroughView;
- (double)compassDiameter;
- (id)mapView;
- (int64_t)initialOrientation;
- (unint64_t)originalLayoutForViewController:(id)a3;
- (void)_captureTelemetricEventWithOldKey:(int)a3 newKey:(int)a4;
- (void)_enterFlyover;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)cleanupFlyover;
- (void)dealloc;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)hideChrome:(BOOL)a3 animated:(BOOL)a4;
- (void)mapView:(id)a3 arSessionWasInterrupted:(unint64_t)a4;
- (void)mapView:(id)a3 arTrackingStateDidChange:(unint64_t)a4 reason:(unint64_t)a5;
- (void)mapView:(id)a3 didEncounterARError:(id)a4;
- (void)mapView:(id)a3 didStopFlyoverTourCompleted:(BOOL)a4;
- (void)mapView:(id)a3 flyoverModeDidChange:(int)a4;
- (void)mapView:(id)a3 flyoverTourLabelDidChange:(id)a4;
- (void)mapViewARSessionInterruptionEnded:(id)a3;
- (void)mapViewDidEnterAR:(id)a3;
- (void)mapViewDidExitAR:(id)a3;
- (void)mapViewWillEnterAR:(id)a3;
- (void)mapViewWillStartFlyoverTour:(id)a3;
- (void)stopFlyoverRequestedByBanner:(id)a3;
- (void)updateMapEdgeInsets;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation FlyoverContainerViewController

- (FlyoverContainerViewControllerDelegate)flyoverDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flyoverDelegate);

  return WeakRetained;
}

- (void)stopFlyoverRequestedByBanner:(id)a3
{
  v4 = a3;
  v5 = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
  [v5 flyoverTourCompleted];

  [(FlyoverContainerViewController *)self cleanupFlyover];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007AE338;
  v8[3] = &unk_101661B18;
  v9 = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007AE344;
  v7[3] = &unk_101661738;
  v7[4] = self;
  v6 = v4;
  [UIView animateWithDuration:v8 animations:v7 completion:0.2];
}

- (int64_t)initialOrientation
{
  result = self->_initialOrientation;
  if (!result)
  {
    v4 = [(ContainerViewController *)self chromeViewController];
    v5 = [v4 view];
    v6 = [v5 window];
    v7 = [v6 windowScene];
    self->_initialOrientation = [v7 interfaceOrientation];

    return self->_initialOrientation;
  }

  return result;
}

- (void)_enterFlyover
{
  v3 = +[UIApplication sharedMapsDelegate];
  [v3 setMapsIsShowingTour:1];

  v4 = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
  -[FlyoverContainerViewController setStartViewMode:](self, "setStartViewMode:", [v4 displayedViewMode]);

  v5 = +[VKPlatform sharedPlatform];
  if ([v5 supportsARMode])
  {
    v6 = [(FlyoverContainerViewController *)self mapView];
    v7 = [v6 _mapLayer];
    if ([v7 isFlyoverUnificationEnabled])
    {
      v8 = 6;
    }

    else
    {
      v8 = 5;
    }
  }

  else
  {
    v8 = 6;
  }

  v9 = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
  [v9 updateViewMode:v8 animated:1];

  v10 = [(FlyoverContainerViewController *)self view];

  if (v10)
  {
    [(FlyoverContainerViewController *)self hideChrome:0 animated:1];
    v11 = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
    [v11 viewControllerPresentTray:self];

    if (sub_10000FA08(self) == 5)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1007AE5E4;
      v12[3] = &unk_101661B18;
      v12[4] = self;
      [UIView animateWithDuration:3 delay:v12 options:0 animations:1.0 completion:0.5];
    }
  }
}

- (void)_captureTelemetricEventWithOldKey:(int)a3 newKey:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  trackingStateAndReasonChangesBegan = self->_trackingStateAndReasonChangesBegan;
  v8 = [NSNumber numberWithInt:?];
  v16 = [(NSMutableDictionary *)trackingStateAndReasonChangesBegan objectForKeyedSubscript:v8];

  if (v16)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [v16 doubleValue];
    [GEOAPPortal captureTelemetricEntityCountForEventKey:v5 eventValue:((Current - v10) * 1000.0) eventDetail:0];
    v11 = self->_trackingStateAndReasonChangesBegan;
    v12 = [NSNumber numberWithInt:v5];
    [(NSMutableDictionary *)v11 setObject:0 forKeyedSubscript:v12];
  }

  v13 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
  v14 = self->_trackingStateAndReasonChangesBegan;
  v15 = [NSNumber numberWithInt:v4];
  [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = FlyoverContainerViewController;
  [(ContainerViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1007AE8D8;
  v10[3] = &unk_101657D40;
  objc_copyWeak(&v11, &location);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007AE9E8;
  v8[3] = &unk_101657D40;
  objc_copyWeak(&v9, &location);
  [v7 animateAlongsideTransition:v10 completion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)mapView
{
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (UIView)passThroughView
{
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 passThroughView];

  return v3;
}

- (void)mapView:(id)a3 flyoverTourLabelDidChange:(id)a4
{
  v5 = a4;
  v6 = [(FlyoverContainerViewController *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 5)
  {
    v8 = [(FlyoverContainerViewController *)self flyoverBannerView];
    [v8 setLocationString:v5];
  }

  else
  {
    v9 = [v5 length];
    v10 = [(FlyoverContainerViewController *)self tourLabel];
    v8 = v10;
    if (v9)
    {
      [v10 setText:v5];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1007AED88;
      v17[3] = &unk_101661B18;
      v11 = &v18;
      v18 = v8;
      [UIView animateWithDuration:v17 animations:1.0];
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1007AED94;
      v15[3] = &unk_101661B18;
      v11 = &v16;
      v16 = v10;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1007AEDA0;
      v12[3] = &unk_101661570;
      v13 = v16;
      v14 = v5;
      [UIView animateWithDuration:v15 animations:v12 completion:1.0];
    }
  }
}

- (void)mapView:(id)a3 flyoverModeDidChange:(int)a4
{
  v14 = a3;
  if (a4 == 1)
  {
    if (self->_savedTourLabelText)
    {
      [(FlyoverContainerViewController *)self mapView:v14 flyoverTourLabelDidChange:?];
      savedTourLabelText = self->_savedTourLabelText;
      self->_savedTourLabelText = 0;
    }
  }

  else
  {
    v7 = [(FlyoverContainerViewController *)self tourLabel];
    v8 = [v7 text];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [(FlyoverContainerViewController *)self tourLabel];
      v11 = [v10 text];
      v12 = [v11 copy];
      v13 = self->_savedTourLabelText;
      self->_savedTourLabelText = v12;

      [(FlyoverContainerViewController *)self mapView:v14 flyoverTourLabelDidChange:&stru_1016631F0];
    }
  }

  [(FlyoverStatusView *)self->_statusView setHidden:a4 == 1];
  self->_flyoverMode = a4;
}

- (void)mapView:(id)a3 didStopFlyoverTourCompleted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 _currentFlyoverAnimationID];
  if (v4)
  {
    v8 = +[MKMapService sharedService];
    [v8 captureUserAction:17025 flyoverAnimationID:v7];
  }

  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:17026 flyoverAnimationID:v7];

  [v6 _setCurrentFlyoverAnimationID:0];
  [(FlyoverContainerViewController *)self cleanupFlyover];
  v10 = +[VKPlatform sharedPlatform];
  if ([v10 supportsARMode])
  {
    v11 = [(FlyoverContainerViewController *)self mapView];
    v12 = [v11 _mapLayer];
    v13 = [v12 isFlyoverUnificationEnabled];

    if (!v13 && v4)
    {
      flyoverActionCoordinator = self->_flyoverActionCoordinator;

      [(FlyoverActionCoordinator *)flyoverActionCoordinator flyoverTourCompleted];
      return;
    }
  }

  else
  {
  }

  [(FlyoverActionCoordinator *)self->_flyoverActionCoordinator viewControllerEndFlyover:self];
  v15 = [(FlyoverActionCoordinator *)self->_flyoverActionCoordinator appCoordinator];
  [v15 exitFlyover];
}

- (void)mapView:(id)a3 arTrackingStateDidChange:(unint64_t)a4 reason:(unint64_t)a5
{
  [(FlyoverStatusView *)self->_statusView setTrackingStateReason:a5];
  [GEOAPPortal captureTelemetricEntityCountForEventKey:4001 eventValue:a4 eventDetail:0];
  [GEOAPPortal captureTelemetricEntityCountForEventKey:4002 eventValue:a5 eventDetail:0];
  currentTrackingState = self->_currentTrackingState;
  if (currentTrackingState != a4)
  {
    if (currentTrackingState >= 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = (currentTrackingState + 4011);
    }

    if (a4 >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = (a4 + 4011);
    }

    [(FlyoverContainerViewController *)self _captureTelemetricEventWithOldKey:v9 newKey:v10];
  }

  currentTrackingStateReason = self->_currentTrackingStateReason;
  if (currentTrackingStateReason != a5)
  {
    if (currentTrackingStateReason >= 5)
    {
      v12 = 0;
    }

    else
    {
      v12 = (currentTrackingStateReason + 4021);
    }

    if (a5 >= 5)
    {
      v13 = 0;
    }

    else
    {
      v13 = (a5 + 4021);
    }

    [(FlyoverContainerViewController *)self _captureTelemetricEventWithOldKey:v12 newKey:v13];
  }

  self->_currentTrackingState = a4;
  self->_currentTrackingStateReason = a5;
}

- (void)mapViewARSessionInterruptionEnded:(id)a3
{
  self->_sessionInterruptedReason = 0;
  if (self->_flyoverMode != 1)
  {
    v5 = [a3 _mapLayer];
    [v5 setFlyoverMode:0];

    [(FlyoverStatusView *)self->_statusView setTrackingStateReason:0];

    [(FlyoverContainerViewController *)self _captureTelemetricEventWithOldKey:4025 newKey:4021];
  }
}

- (void)mapView:(id)a3 arSessionWasInterrupted:(unint64_t)a4
{
  if (a4 != 2 && !self->_flyoverMode)
  {
    statusView = self->_statusView;
    v7 = a3;
    [(FlyoverStatusView *)statusView setTrackingStateReason:4];
    currentTrackingStateReason = self->_currentTrackingStateReason;
    if (currentTrackingStateReason >= 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = (currentTrackingStateReason + 4021);
    }

    [(FlyoverContainerViewController *)self _captureTelemetricEventWithOldKey:v9 newKey:4025];
    v10 = [v7 _mapLayer];

    [v10 setFlyoverMode:2];
    v11 = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
    v12 = [v11 isFlyoverRunning];

    if (v12)
    {
      [(FlyoverContainerViewController *)self hideChrome:0 animated:1];
    }
  }

  self->_sessionInterruptedReason = a4;
}

- (void)mapView:(id)a3 didEncounterARError:(id)a4
{
  v5 = [(FlyoverContainerViewController *)self flyoverActionCoordinator:a3];
  [v5 viewControllerEndFlyover:self];

  v7 = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
  v6 = [v7 appCoordinator];
  [v6 exitFlyover];
}

- (void)cleanupFlyover
{
  v3 = +[UIApplication sharedMapsDelegate];
  [v3 setMapsIsShowingTour:0];

  v4 = [(FlyoverContainerViewController *)self startViewMode];
  if (v4 != 6)
  {
    v5 = v4;
    v6 = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
    [v6 updateViewMode:v5 animated:1];
  }
}

- (void)mapViewDidExitAR:(id)a3
{
  [(NSTimer *)self->_flyoverIntroTimer invalidate];
  flyoverIntroTimer = self->_flyoverIntroTimer;
  self->_flyoverIntroTimer = 0;

  v5 = +[VKPlatform sharedPlatform];
  if ([v5 supportsARMode])
  {
    v6 = [(FlyoverContainerViewController *)self mapView];
    v7 = [v6 _mapLayer];
    v8 = [v7 isFlyoverUnificationEnabled];

    if (v8)
    {
      goto LABEL_11;
    }

    currentTrackingState = self->_currentTrackingState;
    if (currentTrackingState >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = (currentTrackingState + 4011);
    }

    [(FlyoverContainerViewController *)self _captureTelemetricEventWithOldKey:v10 newKey:0];
    currentTrackingStateReason = self->_currentTrackingStateReason;
    if (currentTrackingStateReason >= 5)
    {
      v12 = 0;
    }

    else
    {
      v12 = (currentTrackingStateReason + 4021);
    }

    [(FlyoverContainerViewController *)self _captureTelemetricEventWithOldKey:v12 newKey:0];
    v5 = +[MKMapService sharedService];
    [v5 captureUserAction:34 onTarget:646 eventValue:0];
  }

LABEL_11:
  v13 = [(FlyoverContainerViewController *)self flyoverDelegate];
  [v13 viewControllerDidEndFlyover:self];
}

- (void)mapViewDidEnterAR:(id)a3
{
  v4 = a3;
  v5 = +[MKMapService sharedService];
  v6 = [v4 mapRegion];
  [v4 _zoomLevel];
  v8 = v7;
  v9 = [v4 mapType];
  v10 = 1;
  if (v9 > 2)
  {
    if (v9 > 101)
    {
      if (v9 == 102)
      {
        goto LABEL_15;
      }

      if (v9 == 104)
      {
        v10 = 4;
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (v9 != 3)
    {
      if (v9 != 4)
      {
        goto LABEL_14;
      }

LABEL_9:
      v10 = 3;
      goto LABEL_15;
    }

LABEL_13:
    v10 = 2;
    goto LABEL_15;
  }

  switch(v9)
  {
    case 0:
      goto LABEL_15;
    case 1:
      goto LABEL_13;
    case 2:
      goto LABEL_9;
  }

LABEL_14:
  v10 = 0;
LABEL_15:
  [v5 captureUserAction:33 onTarget:646 eventValue:0 mapRegion:v6 zoomLevel:v10 mapType:v8];

  [(FlyoverContainerViewController *)self _enterFlyover];
  v11 = [v4 _mapLayer];
  v12 = [(ContainerViewController *)self chromeViewController];
  v13 = [v12 view];
  v14 = [v13 window];
  v15 = [v14 windowScene];
  v16 = [v15 interfaceOrientation];
  v17 = 0;
  if ((v16 - 1) <= 3)
  {
    v17 = qword_101213570[(v16 - 1)];
  }

  [v11 setARInterfaceOrientation:v17];

  v18 = [(FlyoverContainerViewController *)self view];

  if (v18)
  {
    objc_initWeak(&location, self);
    v19 = [NSDate dateWithTimeIntervalSinceNow:5.0];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1007AF7B4;
    v26 = &unk_101661BC8;
    objc_copyWeak(&v27, &location);
    v20 = [NSTimer _maps_scheduledTimerWithFireDate:v19 block:&v23];
    flyoverIntroTimer = self->_flyoverIntroTimer;
    self->_flyoverIntroTimer = v20;

    v22 = [(FlyoverContainerViewController *)self flyoverDelegate:v23];
    [v22 viewControllerDidStartFlyover:self];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (void)mapViewWillStartFlyoverTour:(id)a3
{
  v4 = a3;
  v5 = +[MKMapService sharedService];
  v6 = [v4 _currentFlyoverAnimationID];

  [v5 captureUserAction:17028 flyoverAnimationID:v6];
  v7 = +[VKPlatform sharedPlatform];
  if ([v7 supportsARMode])
  {
    v8 = [(FlyoverContainerViewController *)self mapView];
    v9 = [v8 _mapLayer];
    v10 = [v9 isFlyoverUnificationEnabled];

    if (!v10)
    {
      return;
    }
  }

  else
  {
  }

  [(FlyoverContainerViewController *)self _enterFlyover];
  v11 = [(FlyoverContainerViewController *)self flyoverDelegate];
  [v11 viewControllerDidStartFlyover:self];
}

- (void)mapViewWillEnterAR:(id)a3
{
  v10 = [a3 _mapLayer];
  v4 = [(ContainerViewController *)self chromeViewController];
  v5 = [v4 view];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v7 interfaceOrientation] - 1;
  if (v8 > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_101213570[v8];
  }

  [v10 setARInterfaceOrientation:v9];
}

- (void)updateMapEdgeInsets
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1007AFA98;
  v2[3] = &unk_101661B18;
  v2[4] = self;
  [UIView animateWithDuration:v2 animations:&stru_101629FA0 completion:0.25];
}

- (BOOL)prefersStatusBarHidden
{
  if ([(ContainerViewController *)self chromeHidden])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = FlyoverContainerViewController;
  return [(FlyoverContainerViewController *)&v4 prefersStatusBarHidden];
}

- (void)hideChrome:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(ContainerViewController *)self chromeHidden]!= a3)
  {
    [(ContainerViewController *)self setChromeHidden:v5];
    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    if (byte_10195DF08 == 1)
    {

      [(ContainerViewController *)self setContaineesHidden:v5];
    }

    else
    {
      [(ContainerViewController *)self visibleCardViews];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1007AFD4C;
      v13[3] = &unk_101661A90;
      v7 = v13[4] = self;
      v14 = v7;
      v8 = objc_retainBlock(v13);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1007AFF20;
      v12[3] = &unk_101661738;
      v12[4] = self;
      v9 = objc_retainBlock(v12);
      v10 = [(FlyoverContainerViewController *)self view];
      [v10 endEditing:1];

      v11 = [(FlyoverContainerViewController *)self view];
      [v11 setUserInteractionEnabled:0];

      if (v4)
      {
        [UIView animateWithDuration:v8 animations:v9 completion:0.25];
      }

      else
      {
        (v8[2])(v8);
        (v9[2])(v9, 1);
      }
    }
  }
}

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v7 = [(ContainerViewController *)self currentViewController];
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___MapViewResponderHandling])
  {
    [v7 didTapMapView:v10 atPoint:{x, y}];
  }

  v8 = [(FlyoverContainerViewController *)self flyoverActionCoordinator];
  v9 = [v8 isFlyoverRunning];

  if (v9)
  {
    [(FlyoverContainerViewController *)self hideChrome:[(ContainerViewController *)self chromeHidden]^ 1 animated:1];
  }
}

- (unint64_t)originalLayoutForViewController:(id)a3
{
  v3 = +[VKPlatform sharedPlatform];
  if ([v3 supportsARMode])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (double)compassDiameter
{
  v2 = [(FlyoverContainerViewController *)self mapView];
  [v2 _compassDiameter];
  v4 = v3;

  return v4;
}

- (void)_setupConstraints
{
  v3 = +[VKPlatform sharedPlatform];
  v4 = [v3 supportsARMode];

  v5 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  if (v4)
  {
    v40 = [(FlyoverStatusView *)self->_statusView topAnchor];
    v6 = [(FlyoverContainerViewController *)self view];
    v7 = [v6 safeAreaLayoutGuide];
    v8 = [v7 topAnchor];
    v9 = [v40 constraintEqualToAnchor:v8 constant:6.0];
    v43[0] = v9;
    v10 = [(FlyoverStatusView *)self->_statusView centerXAnchor];
    v11 = [(FlyoverContainerViewController *)self view];
    v12 = [v11 centerXAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v43[1] = v13;
    v14 = [NSArray arrayWithObjects:v43 count:2];
    [NSLayoutConstraint activateConstraints:v14];

    v5 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  }

  v15 = [(FlyoverContainerViewController *)self traitCollection];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 5)
  {
    v17 = [(FlyoverBannerView *)self->_flyoverBannerView bottomAnchor];
    v18 = [(FlyoverContainerViewController *)self view];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:-8.0];
    v42[0] = v20;
    v21 = [(FlyoverBannerView *)self->_flyoverBannerView centerXAnchor];
    v22 = [(OverlayContainerViewController *)self innerLayoutGuide];
    v23 = [v22 centerXAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v42[1] = v24;
    v25 = [v5[286] arrayWithObjects:v42 count:2];
    [NSLayoutConstraint activateConstraints:v25];
  }

  else
  {
    v38 = [(UILabel *)self->_tourLabel leadingAnchor];
    v39 = [(OverlayContainerViewController *)self innerLayoutGuide];
    v37 = [v39 leadingAnchor];
    v36 = [v38 constraintGreaterThanOrEqualToAnchor:v37];
    v41[0] = v36;
    v33 = [(UILabel *)self->_tourLabel trailingAnchor];
    v35 = [(OverlayContainerViewController *)self innerLayoutGuide];
    v23 = [v35 trailingAnchor];
    v24 = [v33 constraintLessThanOrEqualToAnchor:v23];
    v41[1] = v24;
    v25 = [(UILabel *)self->_tourLabel centerXAnchor];
    v34 = [(OverlayContainerViewController *)self innerLayoutGuide];
    v26 = [v34 centerXAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v41[2] = v27;
    v28 = [(UILabel *)self->_tourLabel bottomAnchor];
    v29 = [(OverlayContainerViewController *)self overlayView];
    v30 = [v29 bottomAnchor];
    v31 = [v28 constraintEqualToAnchor:v30 constant:-15.0];
    v41[3] = v31;
    v32 = [v5[286] arrayWithObjects:v41 count:4];
    [NSLayoutConstraint activateConstraints:v32];

    v21 = v33;
    v20 = v36;

    v22 = v35;
    v19 = v37;

    v18 = v39;
    v17 = v38;
  }
}

- (void)_setupViews
{
  v3 = [(FlyoverContainerViewController *)self view];
  [v3 setAccessibilityIdentifier:@"FlyoverContainerView"];

  v4 = +[VKPlatform sharedPlatform];
  v5 = [v4 supportsARMode];

  if (v5)
  {
    v6 = [[FlyoverStatusView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    statusView = self->_statusView;
    self->_statusView = v6;

    [(FlyoverStatusView *)self->_statusView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(FlyoverContainerViewController *)self view];
    [v8 addSubview:self->_statusView];
  }

  v9 = [(FlyoverContainerViewController *)self traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 5)
  {
    v11 = [[FlyoverBannerView alloc] initWithDelegate:self];
    p_flyoverBannerView = &self->_flyoverBannerView;
    flyoverBannerView = self->_flyoverBannerView;
    self->_flyoverBannerView = v11;

    [(FlyoverBannerView *)self->_flyoverBannerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FlyoverBannerView *)self->_flyoverBannerView setAlpha:0.0];
    [(FlyoverContainerViewController *)self view];
  }

  else
  {
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    p_flyoverBannerView = &self->_tourLabel;
    tourLabel = self->_tourLabel;
    self->_tourLabel = v14;

    [(UILabel *)self->_tourLabel setAlpha:0.0];
    [(UILabel *)self->_tourLabel setAdjustsFontSizeToFitWidth:1];
    v16 = [UIFont boldSystemFontOfSize:22.0];
    [(UILabel *)self->_tourLabel setFont:v16];

    [(UILabel *)self->_tourLabel setMinimumScaleFactor:0.5];
    [(UILabel *)self->_tourLabel setNumberOfLines:1];
    v17 = +[UIColor blackColor];
    v18 = [v17 colorWithAlphaComponent:0.5];
    [(UILabel *)self->_tourLabel setShadowColor:v18];

    [(UILabel *)self->_tourLabel setShadowOffset:-1.0, 1.0];
    [(UILabel *)self->_tourLabel setTextAlignment:1];
    v19 = +[UIColor whiteColor];
    [(UILabel *)self->_tourLabel setTextColor:v19];

    [(UILabel *)self->_tourLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_tourLabel setAccessibilityIdentifier:@"FlyoverTourLabel"];
    [(OverlayContainerViewController *)self overlayView];
  }
  v20 = ;
  [v20 addSubview:*p_flyoverBannerView];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = FlyoverContainerViewController;
  [(OverlayContainerViewController *)&v4 viewDidAppear:a3];
  [(FlyoverContainerViewController *)self hideChrome:1 animated:0];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = FlyoverContainerViewController;
  [(OverlayContainerViewController *)&v4 viewDidLoad];
  v3 = [(OverlayContainerViewController *)self topContentView];
  [v3 setHidden:1];

  [(FlyoverContainerViewController *)self _setupViews];
  [(FlyoverContainerViewController *)self _setupConstraints];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationWillResignActiveNotification object:0];

  v4.receiver = self;
  v4.super_class = FlyoverContainerViewController;
  [(FlyoverContainerViewController *)&v4 dealloc];
}

- (FlyoverContainerViewController)initWithMapItem:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = FlyoverContainerViewController;
  v6 = [(ContainerViewController *)&v12 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = [[FlyoverActionCoordinator alloc] initWithContainerViewController:v6];
    flyoverActionCoordinator = v6->_flyoverActionCoordinator;
    v6->_flyoverActionCoordinator = v7;

    v6->_initialOrientation = 0;
    objc_storeStrong(&v6->_mapItem, a3);
    v6->_sessionInterruptedReason = 0;
    v9 = objc_alloc_init(NSMutableDictionary);
    trackingStateAndReasonChangesBegan = v6->_trackingStateAndReasonChangesBegan;
    v6->_trackingStateAndReasonChangesBegan = v9;
  }

  return v6;
}

@end