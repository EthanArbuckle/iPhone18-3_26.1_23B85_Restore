@interface ControlContainerViewController
- (BOOL)_chromeEnabled;
- (CGRect)lookAroundButtonFrame;
- (ControlContainerViewController)initWithPlatformController:(id)controller;
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
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)venuesManager;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (int64_t)floatingControlsOptions;
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)originalLayoutForViewController:(id)controller;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_cancelAllOngoingGesturesBeingRecognizedInView:(id)view;
- (void)_captureStatusIndicatorViewTapAction:(int)action;
- (void)_didTapStatusIndicatorView:(id)view;
- (void)_offlineMapsStateChanged;
- (void)_setUpdateContentInjectionBlockForController:(id)controller;
- (void)containerStyleManagerDidChangeStyle:(unint64_t)style;
- (void)containerStyleManagerWillChangeStyle:(unint64_t)style;
- (void)contentHeightUpdatedWithValue:(double)value;
- (void)didTapMapView:(id)view atPoint:(CGPoint)point;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)expandPlaceCardController;
- (void)mapView:(id)view didBecomePitched:(BOOL)pitched;
- (void)mapView:(id)view didChangeLookAroundAvailability:(int64_t)availability;
- (void)mapView:(id)view didChangeMapType:(unint64_t)type;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button;
- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view regionWillChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
- (void)mapViewDidChangeVisibleRegion:(id)region;
- (void)mapViewDidStartUserInteraction:(id)interaction;
- (void)presentController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout completion:(id)completion;
- (void)refreshControls;
- (void)removeControllersFromStack:(id)stack;
- (void)replaceCurrentWithController:(id)controller moveToContaineeLayout:(unint64_t)layout;
- (void)resetState;
- (void)setChromeHidden:(BOOL)hidden;
- (void)setChromeViewController:(id)controller;
- (void)statusIndicatorTypeChanged:(unint64_t)changed;
- (void)transitionAlongsideContainee:(id)containee animated:(BOOL)animated;
- (void)updateContentInjection;
- (void)updateLayoutAnimated:(BOOL)animated;
- (void)updateTopBannerViewWithTopBannerItems:(id)items;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willPresentContainee:(id)containee animated:(BOOL)animated;
@end

@implementation ControlContainerViewController

- (int64_t)preferredUserInterfaceStyle
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  preferredUserInterfaceStyle = [chromeViewController preferredUserInterfaceStyle];

  return preferredUserInterfaceStyle;
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
  statusIndicatorManager = [(ControlContainerViewController *)self statusIndicatorManager];
  [statusIndicatorManager updateIndicatorType];

  topContentView = [(OverlayContainerViewController *)self topContentView];
  [topContentView setHidden:1];
}

- (int64_t)floatingControlsOptions
{
  if ([(ContainerViewController *)self containerStyle]!= 6)
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    presentedViewController = [currentViewController presentedViewController];
    if ([presentedViewController isBeingDismissed])
    {
    }

    else
    {
      currentViewController2 = [(ContainerViewController *)self currentViewController];
      presentedViewController2 = [currentViewController2 presentedViewController];
      presentationController = [presentedViewController2 presentationController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        return 0;
      }
    }
  }

  currentViewController3 = [(ContainerViewController *)self currentViewController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    currentViewController4 = [(ContainerViewController *)self currentViewController];
    floatingControlsOptions = [currentViewController4 floatingControlsOptions];

    return floatingControlsOptions;
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
  statusIndicatorView = [(ControlContainerViewController *)self statusIndicatorView];
  if ([statusIndicatorView isVisible])
  {
    statusIndicatorView2 = [(ControlContainerViewController *)self statusIndicatorView];
  }

  else
  {
    statusIndicatorView2 = 0;
  }

  return statusIndicatorView2;
}

- (void)refreshControls
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"floatingControls" animated:1];

  chromeViewController2 = [(ContainerViewController *)self chromeViewController];
  [chromeViewController2 setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
}

- (void)resetState
{
  coordinator = self->_coordinator;
  currentViewController = [(ContainerViewController *)self currentViewController];
  [(ActionCoordinator *)coordinator viewControllerClosed:currentViewController animated:0];
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
  chromeContext = [(ControlContainerViewController *)self chromeContext];
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  topIOSBasedContext = [chromeViewController topIOSBasedContext];

  if (chromeContext == topIOSBasedContext)
  {
    chromeViewController2 = [(ContainerViewController *)self chromeViewController];
    mapView = [chromeViewController2 mapView];
  }

  else
  {
    mapView = 0;
  }

  return mapView;
}

- (UIViewController)viewControllerInActivePresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerInActivePresentation);

  return WeakRetained;
}

- (FloatingControlsPresentation)floatingControlsPresentationController
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  floatingControlsOverlay = [chromeViewController floatingControlsOverlay];

  return floatingControlsOverlay;
}

- (int)currentMapViewTargetForAnalytics
{
  coordinator = [(ControlContainerViewController *)self coordinator];
  if (objc_opt_respondsToSelector())
  {
    currentMapViewTargetForAnalytics = [coordinator currentMapViewTargetForAnalytics];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ControlContainerViewController;
    currentMapViewTargetForAnalytics = [(ContainerViewController *)&v7 currentMapViewTargetForAnalytics];
  }

  v5 = currentMapViewTargetForAnalytics;

  return v5;
}

- (int)currentUITargetForAnalytics
{
  coordinator = [(ControlContainerViewController *)self coordinator];
  if (objc_opt_respondsToSelector())
  {
    currentUITargetForAnalytics = [coordinator currentUITargetForAnalytics];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ControlContainerViewController;
    currentUITargetForAnalytics = [(ContainerViewController *)&v7 currentUITargetForAnalytics];
  }

  v5 = currentUITargetForAnalytics;

  return v5;
}

- (void)_offlineMapsStateChanged
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"lookAroundButton" animated:1];

  chromeViewController2 = [(ContainerViewController *)self chromeViewController];
  [chromeViewController2 setNeedsUpdateComponent:@"weatherOverlay" animated:1];

  chromeViewController3 = [(ContainerViewController *)self chromeViewController];
  [chromeViewController3 setNeedsUpdateComponent:@"floatingControls" animated:1];
}

- (void)updateTopBannerViewWithTopBannerItems:(id)items
{
  itemsCopy = items;
  [(OverlayContainerViewController *)self topEdgeInset];
  v6 = v5;
  v9.receiver = self;
  v9.super_class = ControlContainerViewController;
  [(OverlayContainerViewController *)&v9 updateTopBannerViewWithTopBannerItems:itemsCopy];

  if ([(ActionCoordinator *)self->_coordinator isRoutePlanningPresented])
  {
    view = [(ControlContainerViewController *)self view];
    [view layoutIfNeeded];

    [(OverlayContainerViewController *)self topEdgeInset];
    if (vabdd_f64(v6, v8) > 2.22044605e-16)
    {
      [(ActionCoordinator *)self->_coordinator ensureRoutePlanningContentIsVisible];
    }
  }
}

- (double)_topBannerMaxHeight
{
  traitCollection = [(ControlContainerViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v10.receiver = self;
    v10.super_class = ControlContainerViewController;
    [(OverlayContainerViewController *)&v10 _topBannerMaxHeight];
  }

  else
  {
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    floatingControlsOverlay = [chromeViewController floatingControlsOverlay];
    floatingControlsViewController = [floatingControlsOverlay floatingControlsViewController];

    [floatingControlsViewController floatingButtonsFrame];
    Height = CGRectGetHeight(v11);

    return Height;
  }

  return result;
}

- (id)_topBannerViewHorizontalConstraints
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  floatingControlsOverlay = [chromeViewController floatingControlsOverlay];
  floatingControlsViewController = [floatingControlsOverlay floatingControlsViewController];

  if (floatingControlsViewController)
  {
    topBannerView = [(OverlayContainerViewController *)self topBannerView];
    leadingAnchor = [topBannerView leadingAnchor];
    overlayView = [(OverlayContainerViewController *)self overlayView];
    leadingAnchor2 = [overlayView leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:sub_100019A44()];
    v18[0] = v9;
    topBannerView2 = [(OverlayContainerViewController *)self topBannerView];
    trailingAnchor = [topBannerView2 trailingAnchor];
    floatingButtonLeadingGuide = [floatingControlsViewController floatingButtonLeadingGuide];
    v13 = [trailingAnchor constraintEqualToAnchor:floatingButtonLeadingGuide constant:-sub_100019A44()];
    v18[1] = v13;
    _topBannerViewHorizontalConstraints = [NSArray arrayWithObjects:v18 count:2];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = ControlContainerViewController;
    _topBannerViewHorizontalConstraints = [(OverlayContainerViewController *)&v17 _topBannerViewHorizontalConstraints];
  }

  return _topBannerViewHorizontalConstraints;
}

- (void)statusIndicatorTypeChanged:(unint64_t)changed
{
  v5 = [(ControlContainerViewController *)self _appearState]== 2;
  statusIndicatorView = [(ControlContainerViewController *)self statusIndicatorView];
  [statusIndicatorView setType:changed];

  iosBasedChromeViewController = [(ControlContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarSupplementaryView" animated:v5];
}

- (void)_didTapStatusIndicatorView:(id)view
{
  type = [view type];
  if (type == 8)
  {
    v5 = +[MKMapService sharedService];
    [v5 captureUserAction:390 onTarget:83 eventValue:0];

    coordinator = [(ControlContainerViewController *)self coordinator];
    [coordinator viewControllerShowOfflineMaps:0];
  }

  else if (type == 6)
  {
    [(ControlContainerViewController *)self _captureStatusIndicatorViewTapAction:61];
    coordinator = +[UIApplication sharedMapsDelegate];
    [coordinator promptPreciseLocationOff];
  }

  else
  {
    if (type != 5)
    {
      return;
    }

    coordinator = +[UIApplication sharedMapsDelegate];
    [coordinator promptLocationServicesOff];
  }
}

- (void)_captureStatusIndicatorViewTapAction:(int)action
{
  v3 = *&action;
  currentUITargetForAnalytics = [(ControlContainerViewController *)self currentUITargetForAnalytics];
  if (currentUITargetForAnalytics > 300)
  {
    if ((currentUITargetForAnalytics - 301) < 5 || currentUITargetForAnalytics == 607)
    {
      v5 = 504;
      goto LABEL_6;
    }
  }

  else
  {
    if ((currentUITargetForAnalytics - 8) < 6)
    {
      v5 = 502;
      goto LABEL_6;
    }

    if (currentUITargetForAnalytics == 201)
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

- (void)setChromeHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(ContainerViewController *)self chromeHidden]!= hidden)
  {
    v15.receiver = self;
    v15.super_class = ControlContainerViewController;
    [(ContainerViewController *)&v15 setChromeHidden:hiddenCopy];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    visibleCardViews = [(ContainerViewController *)self visibleCardViews];
    v6 = [visibleCardViews countByEnumeratingWithState:&v11 objects:v16 count:16];
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
            objc_enumerationMutation(visibleCardViews);
          }

          [*(*(&v11 + 1) + 8 * v9) setHidden:hiddenCopy];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [visibleCardViews countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    topContentView = [(OverlayContainerViewController *)self topContentView];
    [topContentView setHidden:hiddenCopy];
  }
}

- (void)didTapMapView:(id)view atPoint:(CGPoint)point
{
  [(ActionCoordinator *)self->_coordinator didTapMapView:view atPoint:point.x, point.y];
  v5 = +[MKSystemController sharedInstance];
  isInternalInstall = [v5 isInternalInstall];

  if (!isInternalInstall)
  {
    return;
  }

  mapSelectionManager = [(ActionCoordinator *)self->_coordinator mapSelectionManager];
  if ([mapSelectionManager hasSelection])
  {
  }

  else
  {
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 BOOLForKey:@"__internal__EnabletapToMinimize"];

    if (v9)
    {
      currentViewController = [(ContainerViewController *)self currentViewController];
      cardPresentationController = [currentViewController cardPresentationController];
      [cardPresentationController wantsLayout:1];

LABEL_7:

      return;
    }
  }

  currentViewController = [(ActionCoordinator *)self->_coordinator mapSelectionManager];
  if ([currentViewController hasSelection])
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
  currentViewController = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    cardPresentationController = [currentViewController2 cardPresentationController];
    [cardPresentationController wantsLayout:2];
  }
}

- (void)mapViewDidStartUserInteraction:(id)interaction
{
  v5.receiver = self;
  v5.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v5 mapViewDidStartUserInteraction:interaction];
  statusIndicatorView = [(ControlContainerViewController *)self statusIndicatorView];
  [statusIndicatorView setProminent:0];
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v13 mapView:viewCopy didChangeUserTrackingMode:mode animated:animatedCopy];
  currentViewController = [(ContainerViewController *)self currentViewController];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    [currentViewController2 mapView:viewCopy didChangeUserTrackingMode:mode animated:animatedCopy];
  }

  searchSessionManager = [(ActionCoordinator *)self->_coordinator searchSessionManager];
  [searchSessionManager clearLastSearchSessionViewport];
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button
{
  buttonCopy = button;
  animatedCopy = animated;
  viewCopy = view;
  currentViewController = [(ContainerViewController *)self currentViewController];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    [currentViewController2 mapView:viewCopy didChangeUserTrackingMode:mode animated:animatedCopy fromTrackingButton:buttonCopy];
  }

  chromeContext = [(ControlContainerViewController *)self chromeContext];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    chromeContext2 = [(ControlContainerViewController *)self chromeContext];
    [chromeContext2 mapView:viewCopy didChangeUserTrackingMode:mode animated:animatedCopy fromTrackingButton:buttonCopy];
  }

  searchSessionManager = [(ActionCoordinator *)self->_coordinator searchSessionManager];
  [searchSessionManager clearLastSearchSessionViewport];
}

- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection
{
  decelerateCopy = decelerate;
  viewCopy = view;
  currentViewController = [(ContainerViewController *)self currentViewController];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    [currentViewController2 mapView:viewCopy didStopRespondingToGesture:gesture zoomDirection:direction zoomGestureType:type didDecelerate:decelerateCopy tiltDirection:tiltDirection];
  }

  chromeContext = [(ControlContainerViewController *)self chromeContext];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    chromeContext2 = [(ControlContainerViewController *)self chromeContext];
    [chromeContext2 mapView:viewCopy didStopRespondingToGesture:gesture zoomDirection:direction zoomGestureType:type didDecelerate:decelerateCopy tiltDirection:tiltDirection];
  }
}

- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  currentViewController = [(ContainerViewController *)self currentViewController];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    [currentViewController2 mapView:viewCopy willStartRespondingToGesture:gesture animated:animatedCopy];
  }
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  v18.receiver = self;
  v18.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v18 mapView:viewCopy regionDidChangeAnimated:animatedCopy];
  currentViewController = [(ContainerViewController *)self currentViewController];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    [currentViewController2 mapView:viewCopy regionDidChangeAnimated:animatedCopy];
  }

  chromeContext = [(ControlContainerViewController *)self chromeContext];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    chromeContext2 = [(ControlContainerViewController *)self chromeContext];
    [chromeContext2 mapView:viewCopy regionDidChangeAnimated:animatedCopy];
  }

  [(ActionCoordinator *)self->_coordinator finishExitFrom3dMode];
  appCoordinator = [(ActionCoordinator *)self->_coordinator appCoordinator];
  [appCoordinator setNeedsUserActivityUpdate];

  [(NSDate *)self->_dateCreated timeIntervalSinceNow];
  v15 = v14;
  [(NSDate *)self->_dateCreated timeIntervalSinceNow];
  if (v15 < 0.0)
  {
    v16 = -v16;
  }

  if (v16 > 5.0)
  {
    statusIndicatorView = [(ControlContainerViewController *)self statusIndicatorView];
    [statusIndicatorView setProminent:0];
  }
}

- (void)mapView:(id)view regionWillChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  currentViewController = [(ContainerViewController *)self currentViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    [currentViewController2 mapView:viewCopy regionDidChangeAnimated:animatedCopy];
  }

  chromeContext = [(ControlContainerViewController *)self chromeContext];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    chromeContext2 = [(ControlContainerViewController *)self chromeContext];
    [chromeContext2 mapView:viewCopy regionWillChangeAnimated:animatedCopy];
  }
}

- (void)mapViewDidChangeVisibleRegion:(id)region
{
  regionCopy = region;
  currentViewController = [(ContainerViewController *)self currentViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    [currentViewController2 mapViewDidChangeVisibleRegion:regionCopy];
  }
}

- (void)mapView:(id)view didChangeMapType:(unint64_t)type
{
  viewCopy = view;
  currentViewController = [(ContainerViewController *)self currentViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    [currentViewController2 mapView:viewCopy didChangeMapType:type];
  }
}

- (void)mapView:(id)view didChangeLookAroundAvailability:(int64_t)availability
{
  v4 = [(ContainerViewController *)self chromeViewController:view];
  [v4 setNeedsUpdateComponent:@"lookAroundButton" animated:1];
}

- (void)mapView:(id)view didBecomePitched:(BOOL)pitched
{
  v5.receiver = self;
  v5.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v5 mapView:view didBecomePitched:pitched];
  [(ActionCoordinator *)self->_coordinator finishExitFrom3dMode];
}

- (void)_cancelAllOngoingGesturesBeingRecognizedInView:(id)view
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  gestureRecognizers = [view gestureRecognizers];
  v4 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(gestureRecognizers);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isEnabled])
        {
          [v8 setEnabled:0];
          [v8 setEnabled:1];
        }
      }

      v5 = [gestureRecognizers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (UIView)passThroughView
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  passThroughView = [chromeViewController passThroughView];

  return passThroughView;
}

- (void)updateContentInjection
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  if (objc_opt_respondsToSelector())
  {
    [currentViewController removeContentFromMapView];
  }

  if (objc_opt_respondsToSelector())
  {
    [currentViewController addContentToMapView];
  }
}

- (void)_setUpdateContentInjectionBlockForController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    v5 = controllerCopy;
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

- (void)transitionAlongsideContainee:(id)containee animated:(BOOL)animated
{
  animatedCopy = animated;
  v9.receiver = self;
  v9.super_class = ControlContainerViewController;
  containeeCopy = containee;
  [(ContainerViewController *)&v9 transitionAlongsideContainee:containeeCopy animated:animatedCopy];
  v7 = [(ContainerViewController *)self chromeViewController:v9.receiver];
  transitionCoordinator = [containeeCopy transitionCoordinator];

  [v7 updateComponentsIfNeededWithTansitionCoordinator:transitionCoordinator];
}

- (void)willPresentContainee:(id)containee animated:(BOOL)animated
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v8 willPresentContainee:containee animated:?];
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  [chromeViewController setNeedsUpdateComponent:@"lookAroundButton" animated:animatedCopy];

  chromeViewController2 = [(ContainerViewController *)self chromeViewController];
  [chromeViewController2 setNeedsUpdateComponent:@"weatherOverlay" animated:animatedCopy];
}

- (void)replaceCurrentWithController:(id)controller moveToContaineeLayout:(unint64_t)layout
{
  controllerCopy = controller;
  currentViewController = [(ContainerViewController *)self currentViewController];

  v8.receiver = self;
  v8.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v8 replaceCurrentWithController:controllerCopy moveToContaineeLayout:layout];
  if (currentViewController != controllerCopy)
  {
    [(ControlContainerViewController *)self _setUpdateContentInjectionBlockForController:controllerCopy];
  }
}

- (void)removeControllersFromStack:(id)stack
{
  stackCopy = stack;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [stackCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(stackCopy);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 conformsToProtocol:&OBJC_PROTOCOL___ContaineeContentInjection])
        {
          [v8 removeContentFromMapView];
        }
      }

      v5 = [stackCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)presentController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout completion:(id)completion
{
  layoutCopy = layout;
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  currentViewController = [(ContainerViewController *)self currentViewController];
  currentViewController2 = [(ContainerViewController *)self currentViewController];

  v15.receiver = self;
  v15.super_class = ControlContainerViewController;
  [(OverlayContainerViewController *)&v15 presentController:controllerCopy animated:animatedCopy useDefaultContaineeLayout:layoutCopy completion:completionCopy];

  if (currentViewController2 != controllerCopy)
  {
    if (currentViewController)
    {
      statusIndicatorView = [(ControlContainerViewController *)self statusIndicatorView];
      [statusIndicatorView setProminent:0];
    }

    [(ControlContainerViewController *)self _setUpdateContentInjectionBlockForController:controllerCopy];
  }

  [(ControlContainerViewController *)self refreshControls];
}

- (void)containerStyleManagerDidChangeStyle:(unint64_t)style
{
  v9.receiver = self;
  v9.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v9 containerStyleManagerDidChangeStyle:style];
  currentViewController = [(ContainerViewController *)self currentViewController];
  v5 = [currentViewController conformsToProtocol:&OBJC_PROTOCOL___FloatingControlsProtocol];

  if (v5)
  {
    [(ControlContainerViewController *)self refreshControls];
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    [chromeViewController setNeedsUpdateComponent:@"weatherOverlay" animated:1];

    chromeViewController2 = [(ContainerViewController *)self chromeViewController];
    [chromeViewController2 setNeedsUpdateComponent:@"lookAroundButton" animated:1];

    statusIndicatorView = [(ControlContainerViewController *)self statusIndicatorView];
    [statusIndicatorView setProminent:0];
  }
}

- (void)containerStyleManagerWillChangeStyle:(unint64_t)style
{
  v3.receiver = self;
  v3.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v3 containerStyleManagerWillChangeStyle:style];
}

- (unint64_t)originalLayoutForViewController:(id)controller
{
  controllerCopy = controller;
  currentViewController = [(ContainerViewController *)self currentViewController];
  if (currentViewController)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    cardPresentationController = [currentViewController2 cardPresentationController];
    defaultContaineeLayout = [cardPresentationController defaultContaineeLayout];
  }

  else
  {
    currentViewController2 = [controllerCopy cardPresentationController];
    defaultContaineeLayout = [currentViewController2 defaultContaineeLayout];
  }

  if (!defaultContaineeLayout)
  {
    if ([(ContainerViewController *)self containerStyle]== 5 || [(ContainerViewController *)self containerStyle]== 4)
    {
      defaultContaineeLayout = 3;
    }

    else if ([(ContainerViewController *)self containerStyle]== 6)
    {
      defaultContaineeLayout = 3;
    }

    else
    {
      defaultContaineeLayout = 2;
    }
  }

  return defaultContaineeLayout;
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 != 1 || ([(ControlContainerViewController *)self presentedViewController], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) == 0))
  {
    v9.receiver = self;
    v9.super_class = ControlContainerViewController;
    [(ControlContainerViewController *)&v9 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
  }
}

- (void)_applicationDidBecomeActive:(id)active
{
  if ([(ActionCoordinator *)self->_coordinator isRoutePlanningPresented])
  {
    view = [(ControlContainerViewController *)self view];
    [view frame];
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

- (void)_applicationDidEnterBackground:(id)background
{
  p_frameWhenEnteringBackground = &self->_frameWhenEnteringBackground;
  viewIfLoaded = [(ControlContainerViewController *)self viewIfLoaded];
  [viewIfLoaded frame];
  p_frameWhenEnteringBackground->origin.x = v4;
  p_frameWhenEnteringBackground->origin.y = v5;
  p_frameWhenEnteringBackground->size.width = v6;
  p_frameWhenEnteringBackground->size.height = v7;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = sub_10004B334();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v26 = coordinatorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "ControlContainer viewWillTransitionToSize %@", buf, 0xCu);
  }

  v24.receiver = self;
  v24.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v24 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  view = [(ControlContainerViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (![windowScene activationState] || objc_msgSend(windowScene, "activationState") == 1)
  {
    chromeContext = [(ControlContainerViewController *)self chromeContext];
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    topIOSBasedContext = [chromeViewController topIOSBasedContext];

    if (chromeContext == topIOSBasedContext)
    {
      chromeViewController2 = [(ContainerViewController *)self chromeViewController];
      mapView = [chromeViewController2 mapView];

      [mapView centerCoordinate];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1008F3540;
      v20[3] = &unk_10162E238;
      v22 = v17;
      v23 = v18;
      v20[4] = self;
      v21 = mapView;
      v19 = mapView;
      [coordinatorCopy animateAlongsideTransition:&stru_10162E210 completion:v20];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ControlContainerViewController;
  [(OverlayContainerViewController *)&v5 viewDidAppear:appear];
  currentViewController = [(ContainerViewController *)self currentViewController];

  if (!currentViewController)
  {
    [(ActionCoordinator *)self->_coordinator viewControllerClosed:0 animated:1];
  }
}

- (void)contentHeightUpdatedWithValue:(double)value
{
  v27.receiver = self;
  v27.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v27 contentHeightUpdatedWithValue:?];
  containerStyle = [(ContainerViewController *)self containerStyle];
  currentViewController = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  usingSheetPresentation = [cardPresentationController usingSheetPresentation];

  if (usingSheetPresentation)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    cardPresentationController2 = [currentViewController2 cardPresentationController];
    containerStyle = [cardPresentationController2 containerStyle];
  }

  v11 = 1.0;
  if ((containerStyle | 4) != 5)
  {
    goto LABEL_14;
  }

  _mapViewIfCurrent = [(ControlContainerViewController *)self _mapViewIfCurrent];
  userTrackingMode = [_mapViewIfCurrent userTrackingMode];

  if (userTrackingMode == 1)
  {
    _mapViewIfCurrent2 = [(ControlContainerViewController *)self _mapViewIfCurrent];
    [_mapViewIfCurrent2 setUserTrackingMode:0];
  }

  if (containerStyle == 5)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  currentViewController3 = [(ContainerViewController *)self currentViewController];
  [currentViewController3 heightForLayout:v15];
  v18 = v17;

  if (v18 != value)
  {
    statusIndicatorView = [(ControlContainerViewController *)self statusIndicatorView];
    [statusIndicatorView setProminent:0];
  }

  currentViewController4 = [(ContainerViewController *)self currentViewController];
  [currentViewController4 heightForLayout:3];
  v22 = v21;

  if (v22 != v18)
  {
    if (v18 < value)
    {
      _mapViewIfCurrent3 = [(ControlContainerViewController *)self _mapViewIfCurrent];
      [_mapViewIfCurrent3 setCompassEnabled:0];

      v11 = 1.0 - fmin(fmax((value - v18) / (v18 * 0.100000024), 0.0), 1.0);
    }

LABEL_14:
    topBannerView = [(OverlayContainerViewController *)self topBannerView];
    [topBannerView setAlpha:v11];

    chromeViewController = [(ContainerViewController *)self chromeViewController];
    userLocationView = [chromeViewController userLocationView];
    [userLocationView setVlfCalloutAlpha:v11];
  }
}

- (void)updateLayoutAnimated:(BOOL)animated
{
  v11.receiver = self;
  v11.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v11 updateLayoutAnimated:animated];
  if ([(ContainerViewController *)self containeeLayout]== 3 || [(ContainerViewController *)self containeeLayout]== 4)
  {
    v6 = 0;
  }

  else
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    cardPresentationController = [currentViewController cardPresentationController];
    if (![cardPresentationController takesAvailableHeight])
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

  containerStyle = [(ContainerViewController *)self containerStyle];
  if (containerStyle > 7 || ((1 << containerStyle) & 0xA3) == 0)
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
    beginStoppingEffects = [mapSuspendedEffectsToken beginStoppingEffects];
    v10 = self->_mapSuspendedEffectsToken;
    self->_mapSuspendedEffectsToken = beginStoppingEffects;

LABEL_15:
  }
}

- (id)venuesManager
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  venuesManager = [chromeViewController venuesManager];

  return venuesManager;
}

- (void)setChromeViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = ControlContainerViewController;
  [(ContainerViewController *)&v4 setChromeViewController:controller];
  [(ActionCoordinator *)self->_coordinator setContainerViewController:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(_MKMapViewSuspendedEffectsToken *)self->_mapSuspendedEffectsToken invalidate];
  mapSuspendedEffectsToken = self->_mapSuspendedEffectsToken;
  self->_mapSuspendedEffectsToken = 0;

  v6.receiver = self;
  v6.super_class = ControlContainerViewController;
  [(OverlayContainerViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  currentViewController = [(ContainerViewController *)self currentViewController];
  v8 = [currentViewController targetForAction:action withSender:senderCopy];

  if (!v8)
  {
    v10.receiver = self;
    v10.super_class = ControlContainerViewController;
    v8 = [(ControlContainerViewController *)&v10 targetForAction:action withSender:senderCopy];
  }

  return v8;
}

- (id)keyCommands
{
  v14.receiver = self;
  v14.super_class = ControlContainerViewController;
  keyCommands = [(ControlContainerViewController *)&v14 keyCommands];
  v4 = keyCommands;
  if (keyCommands)
  {
    v5 = keyCommands;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = v5;

  _mapViewIfCurrent = [(ControlContainerViewController *)self _mapViewIfCurrent];
  isFocused = [_mapViewIfCurrent isFocused];

  if (isFocused)
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    keyCommands2 = [currentViewController keyCommands];
    v11 = keyCommands2;
    if (!keyCommands2)
    {
      keyCommands2 = &__NSArray0__struct;
    }

    v12 = [keyCommands2 arrayByAddingObjectsFromArray:v6];

    v6 = v12;
  }

  return v6;
}

- (ControlContainerViewController)initWithPlatformController:(id)controller
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = ControlContainerViewController;
  v6 = [(ContainerViewController *)&v15 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_platformController, controller);
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
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  floatingControlsOverlay = [chromeViewController floatingControlsOverlay];
  floatingControlsViewController = [floatingControlsOverlay floatingControlsViewController];
  [floatingControlsViewController lookAroundButtonFrame];
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