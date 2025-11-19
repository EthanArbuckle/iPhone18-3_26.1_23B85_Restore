@interface ControlContainerViewController
- (BOOL)_chromeEnabled;
- (CGRect)lookAroundButtonFrame;
- (ControlContainerViewController)initWithPlatformController:(id)a3;
- (FloatingControlsPresentation)floatingControlsPresentationController;
- (IOSBasedChromeContext)chromeContext;
- (StatusIndicatorView)statusIndicatorView;
- (UIView)passThroughView;
- (UIViewController)viewControllerInActivePresentation;
- (double)_topBannerMaxHeight;
- (id)_mapViewIfCurrent;
- (id)_topBannerViewHorizontalConstraints;
- (id)keyCommands;
- (id)statusBarSupplementaryView;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)venuesManager;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (int64_t)floatingControlsOptions;
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)originalLayoutForViewController:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_cancelAllOngoingGesturesBeingRecognizedInView:(id)a3;
- (void)_captureStatusIndicatorViewTapAction:(int)a3;
- (void)_didTapStatusIndicatorView:(id)a3;
- (void)_offlineMapsStateChanged;
- (void)_setUpdateContentInjectionBlockForController:(id)a3;
- (void)containerStyleManagerDidChangeStyle:(unint64_t)a3;
- (void)containerStyleManagerWillChangeStyle:(unint64_t)a3;
- (void)contentHeightUpdatedWithValue:(double)a3;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)expandPlaceCardController;
- (void)mapView:(id)a3 didBecomePitched:(BOOL)a4;
- (void)mapView:(id)a3 didChangeLookAroundAvailability:(int64_t)a4;
- (void)mapView:(id)a3 didChangeMapType:(unint64_t)a4;
- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5;
- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6;
- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 regionWillChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5;
- (void)mapViewDidChangeVisibleRegion:(id)a3;
- (void)mapViewDidStartUserInteraction:(id)a3;
- (void)presentController:(id)a3 animated:(BOOL)a4 useDefaultContaineeLayout:(BOOL)a5 completion:(id)a6;
- (void)refreshControls;
- (void)removeControllersFromStack:(id)a3;
- (void)replaceCurrentWithController:(id)a3 moveToContaineeLayout:(unint64_t)a4;
- (void)resetState;
- (void)setChromeHidden:(BOOL)a3;
- (void)setChromeViewController:(id)a3;
- (void)statusIndicatorTypeChanged:(unint64_t)a3;
- (void)transitionAlongsideContainee:(id)a3 animated:(BOOL)a4;
- (void)updateContentInjection;
- (void)updateLayoutAnimated:(BOOL)a3;
- (void)updateTopBannerViewWithTopBannerItems:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willPresentContainee:(id)a3 animated:(BOOL)a4;
@end

@implementation ControlContainerViewController

- (int64_t)preferredUserInterfaceStyle
{
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 preferredUserInterfaceStyle];

  return v3;
}

- (StatusIndicatorView)statusIndicatorView
{
  statusIndicatorView = self->_statusIndicatorView;
  if (!statusIndicatorView)
  {
    v4 = [[StatusIndicatorView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_statusIndicatorView;
    self->_statusIndicatorView = v4;

    [(StatusIndicatorView *)self->_statusIndicatorView setTarget:self action:"_didTapStatusIndicatorView:"];
    statusIndicatorView = self->_statusIndicatorView;
  }

  return statusIndicatorView;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ControlContainerViewController;
  [(OverlayContainerViewController *)&v5 viewDidLoad];
  v3 = [(ControlContainerViewController *)self statusIndicatorManager];
  [v3 updateIndicatorType];

  v4 = [(OverlayContainerViewController *)self topContentView];
  [v4 setHidden:1];
}

- (int64_t)floatingControlsOptions
{
  if ([(ContainerViewController *)self containerStyle]!= 6)
  {
    v3 = [(ContainerViewController *)self currentViewController];
    v4 = [v3 presentedViewController];
    if ([v4 isBeingDismissed])
    {
    }

    else
    {
      v5 = [(ContainerViewController *)self currentViewController];
      v6 = [v5 presentedViewController];
      v7 = [v6 presentationController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        return 0;
      }
    }
  }

  v10 = [(ContainerViewController *)self currentViewController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(ContainerViewController *)self currentViewController];
    v13 = [v12 floatingControlsOptions];

    return v13;
  }

  else if (sub_10000FA08(self) == 5)
  {
    return 6399;
  }

  else
  {
    return 72;
  }
}

- (id)statusBarSupplementaryView
{
  v3 = [(ControlContainerViewController *)self statusIndicatorView];
  if ([v3 isVisible])
  {
    v4 = [(ControlContainerViewController *)self statusIndicatorView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)refreshControls
{
  v3 = [(ContainerViewController *)self chromeViewController];
  [v3 setNeedsUpdateComponent:@"floatingControls" animated:1];

  v4 = [(ContainerViewController *)self chromeViewController];
  [v4 setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
}

- (void)resetState
{
  coordinator = self->_coordinator;
  v3 = [(ContainerViewController *)self currentViewController];
  [(ActionCoordinator *)coordinator viewControllerClosed:v3 animated:0];
}

- (IOSBasedChromeContext)chromeContext
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeContext);

  return WeakRetained;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = 30;
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    if ([v4 userInterfaceIdiom] == 5)
    {
      v3 = 30;
    }

    else
    {
      v3 = 26;
    }
  }

  return v3;
}

- (BOOL)_chromeEnabled
{
  v2 = +[MKSystemController sharedInstance];
  if ([v2 isInternalInstall])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"__internal__DisableChrome"];

    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_mapViewIfCurrent
{
  v3 = [(ControlContainerViewController *)self chromeContext];
  v4 = [(ContainerViewController *)self chromeViewController];
  v5 = [v4 topIOSBasedContext];

  if (v3 == v5)
  {
    v7 = [(ContainerViewController *)self chromeViewController];
    v6 = [v7 mapView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIViewController)viewControllerInActivePresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerInActivePresentation);

  return WeakRetained;
}

- (FloatingControlsPresentation)floatingControlsPresentationController
{
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 floatingControlsOverlay];

  return v3;
}

- (int)currentMapViewTargetForAnalytics
{
  v3 = [(ControlContainerViewController *)self coordinator];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 currentMapViewTargetForAnalytics];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ControlContainerViewController;
    v4 = [(ContainerViewController *)&v7 currentMapViewTargetForAnalytics];
  }

  v5 = v4;

  return v5;
}

- (int)currentUITargetForAnalytics
{
  v3 = [(ControlContainerViewController *)self coordinator];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 currentUITargetForAnalytics];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ControlContainerViewController;
    v4 = [(ContainerViewController *)&v7 currentUITargetForAnalytics];
  }

  v5 = v4;

  return v5;
}

- (void)_offlineMapsStateChanged
{
  v3 = [(ContainerViewController *)self chromeViewController];
  [v3 setNeedsUpdateComponent:@"lookAroundButton" animated:1];

  v4 = [(ContainerViewController *)self chromeViewController];
  [v4 setNeedsUpdateComponent:@"weatherOverlay" animated:1];

  v5 = [(ContainerViewController *)self chromeViewController];
  [v5 setNeedsUpdateComponent:@"floatingControls" animated:1];
}

- (void)updateTopBannerViewWithTopBannerItems:(id)a3
{
  v4 = a3;
  [(OverlayContainerViewController *)self topEdgeInset];
  v6 = v5;
  v9.receiver = self;
  v9.super_class = ControlContainerViewController;
  [(OverlayContainerViewController *)&v9 updateTopBannerViewWithTopBannerItems:v4];

  if ([(ActionCoordinator *)self->_coordinator isRoutePlanningPresented])
  {
    v7 = [(ControlContainerViewController *)self view];
    [v7 layoutIfNeeded];

    [(OverlayContainerViewController *)self topEdgeInset];
    if (vabdd_f64(v6, v8) > 2.22044605e-16)
    {
      [(ActionCoordinator *)self->_coordinator ensureRoutePlanningContentIsVisible];
    }
  }
}

- (double)_topBannerMaxHeight
{
  v3 = [(ControlContainerViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    v10.receiver = self;
    v10.super_class = ControlContainerViewController;
    [(OverlayContainerViewController *)&v10 _topBannerMaxHeight];
  }

  else
  {
    v6 = [(ContainerViewController *)self chromeViewController];
    v7 = [v6 floatingControlsOverlay];
    v8 = [v7 floatingControlsViewController];

    [v8 floatingButtonsFrame];
    Height = CGRectGetHeight(v11);

    return Height;
  }

  return result;
}

- (id)_topBannerViewHorizontalConstraints
{
  v3 = [(ContainerViewController *)self chromeViewController];
  v4 = [v3 floatingControlsOverlay];
  v5 = [v4 floatingControlsViewController];

  if (v5)
  {
    v16 = [(OverlayContainerViewController *)self topBannerView];
    v6 = [v16 leadingAnchor];
    v7 = [(OverlayContainerViewController *)self overlayView];
    v8 = [v7 leadingAnchor];
    v9 = [v6 constraintEqualToAnchor:v8 constant:sub_100019A44()];
    v18[0] = v9;
    v10 = [(OverlayContainerViewController *)self topBannerView];
    v11 = [v10 trailingAnchor];
    v12 = [v5 floatingButtonLeadingGuide];
    v13 = [v11 constraintEqualToAnchor:v12 constant:-sub_100019A44()];
    v18[1] = v13;
    v14 = [NSArray arrayWithObjects:v18 count:2];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = ControlContainerViewController;
    v14 = [(OverlayContainerViewController *)&v17 _topBannerViewHorizontalConstraints];
  }

  return v14;
}

- (void)statusIndicatorTypeChanged:(unint64_t)a3
{
  v5 = [(ControlContainerViewController *)self _appearState]== 2;
  v6 = [(ControlContainerViewController *)self statusIndicatorView];
  [v6 setType:a3];

  v7 = [(ControlContainerViewController *)self iosBasedChromeViewController];
  [v7 setNeedsUpdateComponent:@"statusBarSupplementaryView" animated:v5];
}

- (void)_didTapStatusIndicatorView:(id)a3
{
  v4 = [a3 type];
  if (v4 == 8)
  {
    v5 = +[MKMapService sharedService];
    [v5 captureUserAction:390 onTarget:83 eventValue:0];

    v6 = [(ControlContainerViewController *)self coordinator];
    [v6 viewControllerShowOfflineMaps:0];
  }

  else if (v4 == 6)
  {
    [(ControlContainerViewController *)self _captureStatusIndicatorViewTapAction:61];
    v6 = +[UIApplication sharedMapsDelegate];
    [v6 promptPreciseLocationOff];
  }

  else
  {
    if (v4 != 5)
    {
      return;
    }

    v6 = +[UIApplication sharedMapsDelegate];
    [v6 promptLocationServicesOff];
  }
}

- (void)_captureStatusIndicatorViewTapAction:(int)a3
{
  v3 = *&a3;
  v4 = [(ControlContainerViewController *)self currentUITargetForAnalytics];
  if (v4 > 300)
  {
    if ((v4 - 301) < 5 || v4 == 607)
    {
      v5 = 504;
      goto LABEL_6;
    }
  }

  else
  {
    if ((v4 - 8) < 6)
    {
      v5 = 502;
      goto LABEL_6;
    }

    if (v4 == 201)
    {
      v5 = 501;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = +[MKMapService sharedService];
  [v6 captureUserAction:v3 onTarget:v5 eventValue:0];
}

- (void)setChromeHidden:(BOOL)a3
{
  v3 = a3;
  if ([(ContainerViewController *)self chromeHidden]!= a3)
  {
    v15.receiver = self;
    v15.super_class = ControlContainerViewController;
    [(ContainerViewController *)&v15 setChromeHidden:v3];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(ContainerViewController *)self visibleCardViews];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9) setHidden:v3];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    v10 = [(OverlayContainerViewController *)self topContentView];
    [v10 setHidden:v3];
  }
}

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  [(ActionCoordinator *)self->_coordinator didTapMapView:a3 atPoint:a4.x, a4.y];
  v5 = +[MKSystemController sharedInstance];
  v6 = [v5 isInternalInstall];

  if (!v6)
  {
    return;
  }

  v7 = [(ActionCoordinator *)self->_coordinator mapSelectionManager];
  if ([v7 hasSelection])
  {
  }

  else
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 BOOLForKey:@"__internal__EnabletapToMinimize"];

    if (v9)
    {
      v14 = [(ContainerViewController *)self currentViewController];
      v10 = [v14 cardPresentationController];
      [v10 wantsLayout:1];

LABEL_7:

      return;
    }
  }

  v14 = [(ActionCoordinator *)self->_coordinator mapSelectionManager];
  if ([v14 hasSelection])
  {
    goto LABEL_7;
  }

  v11 = +[NSUserDefaults standardUserDefaults];
  v12 = [v11 BOOLForKey:@"__internal__EnabletapToHide"];

  if (v12)
  {
    v13 = [(ContainerViewController *)self chromeHidden]^ 1;

    [(ControlContainerViewController *)self setChromeHidden:v13];
  }
}

- (void)expandPlaceCardController
{
  v3 = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(ContainerViewController *)self currentViewController];
    v5 = [v6 cardPresentationController];
    [v5 wantsLayout:2];
  }
}

- (void)mapViewDidStartUserInteraction:(id)a3
{
  v5.receiver = self;
  v5.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v5 mapViewDidStartUserInteraction:a3];
  v4 = [(ControlContainerViewController *)self statusIndicatorView];
  [v4 setProminent:0];
}

- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v13.receiver = self;
  v13.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v13 mapView:v8 didChangeUserTrackingMode:a4 animated:v5];
  v9 = [(ContainerViewController *)self currentViewController];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(ContainerViewController *)self currentViewController];
    [v11 mapView:v8 didChangeUserTrackingMode:a4 animated:v5];
  }

  v12 = [(ActionCoordinator *)self->_coordinator searchSessionManager];
  [v12 clearLastSearchSessionViewport];
}

- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v17 = a3;
  v10 = [(ContainerViewController *)self currentViewController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(ContainerViewController *)self currentViewController];
    [v12 mapView:v17 didChangeUserTrackingMode:a4 animated:v7 fromTrackingButton:v6];
  }

  v13 = [(ControlContainerViewController *)self chromeContext];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(ControlContainerViewController *)self chromeContext];
    [v15 mapView:v17 didChangeUserTrackingMode:a4 animated:v7 fromTrackingButton:v6];
  }

  v16 = [(ActionCoordinator *)self->_coordinator searchSessionManager];
  [v16 clearLastSearchSessionViewport];
}

- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8
{
  v9 = a7;
  v20 = a3;
  v14 = [(ContainerViewController *)self currentViewController];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(ContainerViewController *)self currentViewController];
    [v16 mapView:v20 didStopRespondingToGesture:a4 zoomDirection:a5 zoomGestureType:a6 didDecelerate:v9 tiltDirection:a8];
  }

  v17 = [(ControlContainerViewController *)self chromeContext];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [(ControlContainerViewController *)self chromeContext];
    [v19 mapView:v20 didStopRespondingToGesture:a4 zoomDirection:a5 zoomGestureType:a6 didDecelerate:v9 tiltDirection:a8];
  }
}

- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = [(ContainerViewController *)self currentViewController];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(ContainerViewController *)self currentViewController];
    [v10 mapView:v11 willStartRespondingToGesture:a4 animated:v5];
  }
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v18.receiver = self;
  v18.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v18 mapView:v6 regionDidChangeAnimated:v4];
  v7 = [(ContainerViewController *)self currentViewController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(ContainerViewController *)self currentViewController];
    [v9 mapView:v6 regionDidChangeAnimated:v4];
  }

  v10 = [(ControlContainerViewController *)self chromeContext];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(ControlContainerViewController *)self chromeContext];
    [v12 mapView:v6 regionDidChangeAnimated:v4];
  }

  [(ActionCoordinator *)self->_coordinator finishExitFrom3dMode];
  v13 = [(ActionCoordinator *)self->_coordinator appCoordinator];
  [v13 setNeedsUserActivityUpdate];

  [(NSDate *)self->_dateCreated timeIntervalSinceNow];
  v15 = v14;
  [(NSDate *)self->_dateCreated timeIntervalSinceNow];
  if (v15 < 0.0)
  {
    v16 = -v16;
  }

  if (v16 > 5.0)
  {
    v17 = [(ControlContainerViewController *)self statusIndicatorView];
    [v17 setProminent:0];
  }
}

- (void)mapView:(id)a3 regionWillChangeAnimated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [(ContainerViewController *)self currentViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(ContainerViewController *)self currentViewController];
    [v8 mapView:v12 regionDidChangeAnimated:v4];
  }

  v9 = [(ControlContainerViewController *)self chromeContext];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(ControlContainerViewController *)self chromeContext];
    [v11 mapView:v12 regionWillChangeAnimated:v4];
  }
}

- (void)mapViewDidChangeVisibleRegion:(id)a3
{
  v7 = a3;
  v4 = [(ContainerViewController *)self currentViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ContainerViewController *)self currentViewController];
    [v6 mapViewDidChangeVisibleRegion:v7];
  }
}

- (void)mapView:(id)a3 didChangeMapType:(unint64_t)a4
{
  v9 = a3;
  v6 = [(ContainerViewController *)self currentViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(ContainerViewController *)self currentViewController];
    [v8 mapView:v9 didChangeMapType:a4];
  }
}

- (void)mapView:(id)a3 didChangeLookAroundAvailability:(int64_t)a4
{
  v4 = [(ContainerViewController *)self chromeViewController:a3];
  [v4 setNeedsUpdateComponent:@"lookAroundButton" animated:1];
}

- (void)mapView:(id)a3 didBecomePitched:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v5 mapView:a3 didBecomePitched:a4];
  [(ActionCoordinator *)self->_coordinator finishExitFrom3dMode];
}

- (void)_cancelAllOngoingGesturesBeingRecognizedInView:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 gestureRecognizers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isEnabled])
        {
          [v8 setEnabled:0];
          [v8 setEnabled:1];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (UIView)passThroughView
{
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 passThroughView];

  return v3;
}

- (void)updateContentInjection
{
  v2 = [(ContainerViewController *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    [v2 removeContentFromMapView];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 addContentToMapView];
  }
}

- (void)_setUpdateContentInjectionBlockForController:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = v4;
    objc_initWeak(&location, self);
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_1008F2AF4;
    v9 = &unk_101632C48;
    objc_copyWeak(&v10, &location);
    [v5 setUpdateContentInjection:&v6];
    [v5 addContentToMapView];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)transitionAlongsideContainee:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = ControlContainerViewController;
  v6 = a3;
  [(ContainerViewController *)&v9 transitionAlongsideContainee:v6 animated:v4];
  v7 = [(ContainerViewController *)self chromeViewController:v9.receiver];
  v8 = [v6 transitionCoordinator];

  [v7 updateComponentsIfNeededWithTansitionCoordinator:v8];
}

- (void)willPresentContainee:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v8 willPresentContainee:a3 animated:?];
  v6 = [(ContainerViewController *)self chromeViewController];
  [v6 setNeedsUpdateComponent:@"lookAroundButton" animated:v4];

  v7 = [(ContainerViewController *)self chromeViewController];
  [v7 setNeedsUpdateComponent:@"weatherOverlay" animated:v4];
}

- (void)replaceCurrentWithController:(id)a3 moveToContaineeLayout:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ContainerViewController *)self currentViewController];

  v8.receiver = self;
  v8.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v8 replaceCurrentWithController:v6 moveToContaineeLayout:a4];
  if (v7 != v6)
  {
    [(ControlContainerViewController *)self _setUpdateContentInjectionBlockForController:v6];
  }
}

- (void)removeControllersFromStack:(id)a3
{
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 conformsToProtocol:&OBJC_PROTOCOL___ContaineeContentInjection])
        {
          [v8 removeContentFromMapView];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)presentController:(id)a3 animated:(BOOL)a4 useDefaultContaineeLayout:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = [(ContainerViewController *)self currentViewController];
  v13 = [(ContainerViewController *)self currentViewController];

  v15.receiver = self;
  v15.super_class = ControlContainerViewController;
  [(OverlayContainerViewController *)&v15 presentController:v10 animated:v8 useDefaultContaineeLayout:v7 completion:v11];

  if (v13 != v10)
  {
    if (v12)
    {
      v14 = [(ControlContainerViewController *)self statusIndicatorView];
      [v14 setProminent:0];
    }

    [(ControlContainerViewController *)self _setUpdateContentInjectionBlockForController:v10];
  }

  [(ControlContainerViewController *)self refreshControls];
}

- (void)containerStyleManagerDidChangeStyle:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v9 containerStyleManagerDidChangeStyle:a3];
  v4 = [(ContainerViewController *)self currentViewController];
  v5 = [v4 conformsToProtocol:&OBJC_PROTOCOL___FloatingControlsProtocol];

  if (v5)
  {
    [(ControlContainerViewController *)self refreshControls];
    v6 = [(ContainerViewController *)self chromeViewController];
    [v6 setNeedsUpdateComponent:@"weatherOverlay" animated:1];

    v7 = [(ContainerViewController *)self chromeViewController];
    [v7 setNeedsUpdateComponent:@"lookAroundButton" animated:1];

    v8 = [(ControlContainerViewController *)self statusIndicatorView];
    [v8 setProminent:0];
  }
}

- (void)containerStyleManagerWillChangeStyle:(unint64_t)a3
{
  v3.receiver = self;
  v3.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v3 containerStyleManagerWillChangeStyle:a3];
}

- (unint64_t)originalLayoutForViewController:(id)a3
{
  v4 = a3;
  v5 = [(ContainerViewController *)self currentViewController];
  if (v5)
  {
    v6 = [(ContainerViewController *)self currentViewController];
    v7 = [v6 cardPresentationController];
    v8 = [v7 defaultContaineeLayout];
  }

  else
  {
    v6 = [v4 cardPresentationController];
    v8 = [v6 defaultContaineeLayout];
  }

  if (!v8)
  {
    if ([(ContainerViewController *)self containerStyle]== 5 || [(ContainerViewController *)self containerStyle]== 4)
    {
      v8 = 3;
    }

    else if ([(ContainerViewController *)self containerStyle]== 6)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }
  }

  return v8;
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 != 1 || ([(ControlContainerViewController *)self presentedViewController], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) == 0))
  {
    v9.receiver = self;
    v9.super_class = ControlContainerViewController;
    [(ControlContainerViewController *)&v9 dismissViewControllerAnimated:v4 completion:v6];
  }
}

- (void)_applicationDidBecomeActive:(id)a3
{
  if ([(ActionCoordinator *)self->_coordinator isRoutePlanningPresented])
  {
    v4 = [(ControlContainerViewController *)self view];
    [v4 frame];
    v5 = CGRectEqualToRect(v7, self->_frameWhenEnteringBackground);

    if (!v5)
    {
      [(ActionCoordinator *)self->_coordinator ensureRoutePlanningContentIsVisible];
    }
  }

  size = CGRectZero.size;
  self->_frameWhenEnteringBackground.origin = CGRectZero.origin;
  self->_frameWhenEnteringBackground.size = size;
}

- (void)_applicationDidEnterBackground:(id)a3
{
  p_frameWhenEnteringBackground = &self->_frameWhenEnteringBackground;
  v8 = [(ControlContainerViewController *)self viewIfLoaded];
  [v8 frame];
  p_frameWhenEnteringBackground->origin.x = v4;
  p_frameWhenEnteringBackground->origin.y = v5;
  p_frameWhenEnteringBackground->size.width = v6;
  p_frameWhenEnteringBackground->size.height = v7;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = sub_10004B334();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "ControlContainer viewWillTransitionToSize %@", buf, 0xCu);
  }

  v24.receiver = self;
  v24.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v24 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v9 = [(ControlContainerViewController *)self view];
  v10 = [v9 window];
  v11 = [v10 windowScene];

  if (![v11 activationState] || objc_msgSend(v11, "activationState") == 1)
  {
    v12 = [(ControlContainerViewController *)self chromeContext];
    v13 = [(ContainerViewController *)self chromeViewController];
    v14 = [v13 topIOSBasedContext];

    if (v12 == v14)
    {
      v15 = [(ContainerViewController *)self chromeViewController];
      v16 = [v15 mapView];

      [v16 centerCoordinate];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1008F3540;
      v20[3] = &unk_10162E238;
      v22 = v17;
      v23 = v18;
      v20[4] = self;
      v21 = v16;
      v19 = v16;
      [v7 animateAlongsideTransition:&stru_10162E210 completion:v20];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ControlContainerViewController;
  [(OverlayContainerViewController *)&v5 viewDidAppear:a3];
  v4 = [(ContainerViewController *)self currentViewController];

  if (!v4)
  {
    [(ActionCoordinator *)self->_coordinator viewControllerClosed:0 animated:1];
  }
}

- (void)contentHeightUpdatedWithValue:(double)a3
{
  v27.receiver = self;
  v27.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v27 contentHeightUpdatedWithValue:?];
  v5 = [(ContainerViewController *)self containerStyle];
  v6 = [(ContainerViewController *)self currentViewController];
  v7 = [v6 cardPresentationController];
  v8 = [v7 usingSheetPresentation];

  if (v8)
  {
    v9 = [(ContainerViewController *)self currentViewController];
    v10 = [v9 cardPresentationController];
    v5 = [v10 containerStyle];
  }

  v11 = 1.0;
  if ((v5 | 4) != 5)
  {
    goto LABEL_14;
  }

  v12 = [(ControlContainerViewController *)self _mapViewIfCurrent];
  v13 = [v12 userTrackingMode];

  if (v13 == 1)
  {
    v14 = [(ControlContainerViewController *)self _mapViewIfCurrent];
    [v14 setUserTrackingMode:0];
  }

  if (v5 == 5)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = [(ContainerViewController *)self currentViewController];
  [v16 heightForLayout:v15];
  v18 = v17;

  if (v18 != a3)
  {
    v19 = [(ControlContainerViewController *)self statusIndicatorView];
    [v19 setProminent:0];
  }

  v20 = [(ContainerViewController *)self currentViewController];
  [v20 heightForLayout:3];
  v22 = v21;

  if (v22 != v18)
  {
    if (v18 < a3)
    {
      v23 = [(ControlContainerViewController *)self _mapViewIfCurrent];
      [v23 setCompassEnabled:0];

      v11 = 1.0 - fmin(fmax((a3 - v18) / (v18 * 0.100000024), 0.0), 1.0);
    }

LABEL_14:
    v24 = [(OverlayContainerViewController *)self topBannerView];
    [v24 setAlpha:v11];

    v25 = [(ContainerViewController *)self chromeViewController];
    v26 = [v25 userLocationView];
    [v26 setVlfCalloutAlpha:v11];
  }
}

- (void)updateLayoutAnimated:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v11 updateLayoutAnimated:a3];
  if ([(ContainerViewController *)self containeeLayout]== 3 || [(ContainerViewController *)self containeeLayout]== 4)
  {
    v6 = 0;
  }

  else
  {
    v3 = [(ContainerViewController *)self currentViewController];
    v4 = [v3 cardPresentationController];
    if (![v4 takesAvailableHeight])
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

  v7 = [(ContainerViewController *)self containerStyle];
  if (v7 > 7 || ((1 << v7) & 0xA3) == 0)
  {
    if ((v6 & 1) == 0)
    {
LABEL_14:
      [(_MKMapViewSuspendedEffectsToken *)self->_mapSuspendedEffectsToken invalidate];
      mapSuspendedEffectsToken = self->_mapSuspendedEffectsToken;
      self->_mapSuspendedEffectsToken = 0;
      goto LABEL_15;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v6)
  {
  }

  if (!self->_mapSuspendedEffectsToken)
  {
    mapSuspendedEffectsToken = [(ControlContainerViewController *)self _mapViewIfCurrent];
    v9 = [mapSuspendedEffectsToken beginStoppingEffects];
    v10 = self->_mapSuspendedEffectsToken;
    self->_mapSuspendedEffectsToken = v9;

LABEL_15:
  }
}

- (id)venuesManager
{
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 venuesManager];

  return v3;
}

- (void)setChromeViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v4 setChromeViewController:a3];
  [(ActionCoordinator *)self->_coordinator setContainerViewController:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(_MKMapViewSuspendedEffectsToken *)self->_mapSuspendedEffectsToken invalidate];
  mapSuspendedEffectsToken = self->_mapSuspendedEffectsToken;
  self->_mapSuspendedEffectsToken = 0;

  v6.receiver = self;
  v6.super_class = ControlContainerViewController;
  [(OverlayContainerViewController *)&v6 viewWillDisappear:v3];
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(ContainerViewController *)self currentViewController];
  v8 = [v7 targetForAction:a3 withSender:v6];

  if (!v8)
  {
    v10.receiver = self;
    v10.super_class = ControlContainerViewController;
    v8 = [(ControlContainerViewController *)&v10 targetForAction:a3 withSender:v6];
  }

  return v8;
}

- (id)keyCommands
{
  v14.receiver = self;
  v14.super_class = ControlContainerViewController;
  v3 = [(ControlContainerViewController *)&v14 keyCommands];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = v5;

  v7 = [(ControlContainerViewController *)self _mapViewIfCurrent];
  v8 = [v7 isFocused];

  if (v8)
  {
    v9 = [(ContainerViewController *)self currentViewController];
    v10 = [v9 keyCommands];
    v11 = v10;
    if (!v10)
    {
      v10 = &__NSArray0__struct;
    }

    v12 = [v10 arrayByAddingObjectsFromArray:v6];

    v6 = v12;
  }

  return v6;
}

- (ControlContainerViewController)initWithPlatformController:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = ControlContainerViewController;
  v6 = [(ContainerViewController *)&v15 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platformController, a3);
    v8 = [objc_alloc(objc_msgSend(objc_opt_class() "actionCoordinatorClass"))];
    coordinator = v7->_coordinator;
    v7->_coordinator = v8;

    v7->_dateCreated = +[NSDate now];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v7 selector:"_applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v7 selector:"_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v7 selector:"_offlineMapsStateChanged" name:@"UsingOfflineMapsStateChangedNotification" object:0];

    v13 = [[StatusIndicatorManager alloc] initWithDelegate:v7];
    [(ControlContainerViewController *)v7 setStatusIndicatorManager:v13];
  }

  return v7;
}

- (CGRect)lookAroundButtonFrame
{
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 floatingControlsOverlay];
  v4 = [v3 floatingControlsViewController];
  [v4 lookAroundButtonFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end