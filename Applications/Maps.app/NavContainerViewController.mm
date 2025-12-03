@interface NavContainerViewController
- (BOOL)_bannerActionShouldDisplay;
- (BOOL)_isPresentingOverlappingContainee;
- (BOOL)_isSecondarySignVisible;
- (BOOL)_shouldShowNavRecenterButton;
- (BOOL)_shouldShowPedestrianARTeachableMomentCard;
- (BOOL)canDisplayJunctionViewInfo;
- (BOOL)hasBigStatusBar;
- (BOOL)isForWalkingNav;
- (BOOL)shouldHideBottomPocketForSidebarContainerStyle:(BOOL)style;
- (BOOL)shouldHideTray;
- (NavContainerViewController)initWithCoordinator:(id)coordinator guidanceObserver:(id)observer platformController:(id)controller;
- (NavIndicatorsViewController)indicatorsViewController;
- (NavJunctionViewController)junctionViewController;
- (NavLaneGuidanceViewController)laneGuidanceViewController;
- (NavSecondarySignViewController)secondarySignViewController;
- (NavSignListViewController)navSignViewController;
- (NavTrafficIncidentAlertCoordination)trafficIncidentAlertCoordinator;
- (NavigationDebugViewsController)debugViewsController;
- (StatusIndicatorView)statusIndicatorView;
- (UIView)passThroughView;
- (double)_indicatorsTrailingInset;
- (double)_junctionViewTopPosition;
- (double)_maxAvailableHeightForJunctionView;
- (double)_usedPortraitTopSpace;
- (double)availableHeight;
- (double)bottomEdgeInset;
- (double)junctionViewAlpha;
- (double)maxAvailableHeightForJunctionView:(double)view;
- (double)maximumSignListHeight;
- (double)nextIdleTimeout:(id)timeout;
- (double)secondarySignAlpha;
- (double)signListAvailableHeight;
- (double)topEdgeInset;
- (id)blockToAnimateAlongWithSignHeightChanges;
- (id)mapView;
- (id)statusBarBackgroundViewStyle;
- (id)statusBarSupplementaryView;
- (int)currentMapViewTargetForAnalytics;
- (int)currentUITargetForAnalytics;
- (int64_t)preferredStatusBarStyle;
- (int64_t)preferredUserInterfaceStyle;
- (unint64_t)layoutForCurrentViewControllerWithStyle:(unint64_t)style;
- (unint64_t)originalLayoutForViewController:(id)controller;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applyConnectedToCarPlayAnimated:(BOOL)animated;
- (void)_closeBannerAction;
- (void)_containeeDidPresent:(id)present;
- (void)_containeeLayoutDidChange:(id)change;
- (void)_containeeLayoutWillChange:(id)change;
- (void)_containeeWillPresent:(id)present;
- (void)_drawSecondarySign;
- (void)_hideTemporaryStatusBar;
- (void)_navigationChromeVisibilityChanged;
- (void)_performBannerAction;
- (void)_pinSignAndIndicators;
- (void)_pressedRecenterButton;
- (void)_sceneConnectionsDidChange;
- (void)_setSecondarySignActive:(BOOL)active;
- (void)_setShowingMidstepLaneGuidance:(BOOL)guidance;
- (void)_showPedestrianARFeatureIntroTeachableMomentCardIfNecessary;
- (void)_showPedestrianARRaiseToEnterTeachableMomentCardIfNecessary;
- (void)_showTemporaryStatusBar;
- (void)_teardownViewHierarchy;
- (void)_toggleTraceControls;
- (void)_updateArrivalStateForced:(BOOL)forced;
- (void)_updateBacklightSceneEnvironmentUI;
- (void)_updateChildViewLayouts;
- (void)_updateContaineeHiddenIfNeeded;
- (void)_updateControlsHiddenAnimated:(BOOL)animated;
- (void)_updateIdleTimer;
- (void)_updateIndicatorsLayout;
- (void)_updateJunctionViewLayout;
- (void)_updateNavSignCardWidth;
- (void)_updateNavSignCorners;
- (void)_updateNavSignForArrival:(BOOL)arrival forced:(BOOL)forced;
- (void)_updateNavSignLayout;
- (void)_updateRecenterButtonLayout;
- (void)_updateSecondarySignLayout;
- (void)_updateSignContainerConstraints;
- (void)_updateStatusBarIndicatorLayout;
- (void)applyTransitionWithProgress:(double)progress;
- (void)containerStyleManagerDidChangeStyle:(unint64_t)style;
- (void)dealloc;
- (void)didTapLaneGuidance;
- (void)didTapMapView:(id)view atPoint:(CGPoint)point;
- (void)enterPedestrianAR;
- (void)hideJunctionViewIfNeededAnimated:(BOOL)animated;
- (void)hideJunctionViewTemporarily;
- (void)hideStatusBarIfNeeded;
- (void)idleTimerDidTimeout:(id)timeout;
- (void)insertDimmingOverlayForStaleMapEffectWithBlock:(id)block;
- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)zoom;
- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)zoom;
- (void)mapViewNavigationCameraHasStartedPanning:(id)panning;
- (void)mapViewNavigationCameraHasStoppedPanning:(id)panning;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id;
- (void)navigationService:(id)service showJunctionView:(id)view;
- (void)navigationService:(id)service showLaneDirections:(id)directions;
- (void)navigationService:(id)service updateSignsWithInfo:(id)info;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)presentController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout;
- (void)pressedEndNavigationWithSender:(id)sender;
- (void)reportAnIncident;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)selectStep:(id)step;
- (void)setBannerAction:(id)action animated:(BOOL)animated;
- (void)setChromeViewController:(id)controller;
- (void)setConnectedToCarPlay:(BOOL)play animated:(BOOL)animated;
- (void)setDebugViewControllerEnabled:(BOOL)enabled;
- (void)setResumeRouteBannerHidden:(BOOL)hidden;
- (void)setRoute:(id)route;
- (void)setSignListHeight:(double)height;
- (void)setSignStyle:(unint64_t)style;
- (void)showJunctionViewIfNeeded;
- (void)showVolumeControlView;
- (void)signListHeightWillChangeAnimated:(BOOL)animated;
- (void)statusBarHeightChanged;
- (void)statusIndicatorTypeChanged:(unint64_t)changed;
- (void)switchToOverviewMode;
- (void)switchToZoomedInMode;
- (void)toggleHeadingMode;
- (void)toggleTemporaryStatusBar;
- (void)traitCollectionDidChange:(id)change;
- (void)updateJunctionViewAlpha;
- (void)updateLaneGuidanceBackgroundColor;
- (void)updateLayoutAnimated:(BOOL)animated;
- (void)updateSecondaryAlpha;
- (void)updateSignContainerConstraints;
- (void)updateStatusBarColor;
- (void)updatedLaneGuidanceHeight:(double)height;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToParent;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)vlfContaineeViewControllerDidDisappearNotification:(id)notification;
- (void)vlfSessionTaskWillShowVLFUINotification:(id)notification;
- (void)willBeginDisplayingInSecureLockScreen;
- (void)willDismissNavigationAnimated:(BOOL)animated;
- (void)willDisplayJunctionViewInfo:(id)info;
- (void)willHideJunctionView;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation NavContainerViewController

- (void)_updateBacklightSceneEnvironmentUI
{
  if (GEOConfigGetBOOL())
  {
    lastBacklightSceneUpdateDate = self->_lastBacklightSceneUpdateDate;
    if (lastBacklightSceneUpdateDate)
    {
      [(NSDate *)lastBacklightSceneUpdateDate timeIntervalSinceNow];
      if (v4 > -0.9)
      {
        return;
      }
    }

    v5 = objc_opt_new();
    v6 = self->_lastBacklightSceneUpdateDate;
    self->_lastBacklightSceneUpdateDate = v5;
  }

  view = [(NavContainerViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _backlightSceneEnvironment = [windowScene _backlightSceneEnvironment];
  [_backlightSceneEnvironment invalidateAllTimelinesForReason:@"Navigation service received sign info update"];
}

- (BOOL)_isSecondarySignVisible
{
  if (self->_junctionViewActive)
  {
    return 0;
  }

  else
  {
    return self->_isShowingMidstepLaneGuidance || self->_secondarySignActive;
  }
}

- (int64_t)preferredUserInterfaceStyle
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  preferredUserInterfaceStyle = [chromeViewController preferredUserInterfaceStyle];

  return preferredUserInterfaceStyle;
}

- (NavSignListViewController)navSignViewController
{
  navSignViewController = self->_navSignViewController;
  if (!navSignViewController)
  {
    v4 = [[NavSignListViewController alloc] initWithSignDelegate:self];
    v5 = self->_navSignViewController;
    self->_navSignViewController = v4;

    v6 = _UISolariumEnabled();
    v7 = 38.0;
    if (!v6)
    {
      v7 = 10.0;
    }

    [(NavSignListViewController *)self->_navSignViewController setCornerRadius:v7];
    [(NavSignListViewController *)self->_navSignViewController collapsedHeight];
    self->_navSignViewControllerCollapsedHeight = v8;
    navSignViewController = self->_navSignViewController;
  }

  return navSignViewController;
}

- (double)_junctionViewTopPosition
{
  junctionViewDisplayed = self->_junctionViewDisplayed;
  [(NavContainerViewController *)self _navSignBottomPosition];
  v5 = v4;
  if (!junctionViewDisplayed)
  {
    [(NavContainerViewController *)self maxAvailableHeightForJunctionView:0.0];
    return v5 - v6;
  }

  return v5;
}

- (double)topEdgeInset
{
  containerStyle = [(ContainerViewController *)self containerStyle];
  if (containerStyle > 7 || ((1 << containerStyle) & 0xE3) == 0)
  {
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    viewport = [chromeViewController viewport];
    [viewport frame];
    MinY = CGRectGetMinY(v10);

    return MinY;
  }

  else
  {

    [(NavContainerViewController *)self _usedPortraitTopSpace];
  }

  return result;
}

- (double)_usedPortraitTopSpace
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  viewport = [chromeViewController viewport];
  [viewport frame];
  MinY = CGRectGetMinY(v13);

  [(NSLayoutConstraint *)self->_laneGuidanceHeightConstraint constant];
  v7 = v6;
  Height = 0.0;
  navSignViewControllerCollapsedHeight = 0.0;
  if (![(UIView *)self->_navSignContainerView isHidden])
  {
    navSignViewControllerCollapsedHeight = self->_navSignViewControllerCollapsedHeight;
  }

  if (self->_junctionViewDisplayed)
  {
    junctionViewController = [(NavContainerViewController *)self junctionViewController];
    view = [junctionViewController view];
    [view frame];
    Height = CGRectGetHeight(v14);
  }

  return v7 + MinY + navSignViewControllerCollapsedHeight + Height;
}

- (double)bottomEdgeInset
{
  containerStyle = [(ContainerViewController *)self containerStyle];
  if (containerStyle - 2 < 2)
  {
    view = [(NavContainerViewController *)self view];
    [view safeAreaInsets];
    v10 = v9;
LABEL_13:

    return v10;
  }

  if (containerStyle == 1 || containerStyle == 5)
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    trafficIncidentAlertCoordinator = [(NavContainerViewController *)self trafficIncidentAlertCoordinator];
    trafficIncidentViewController = [trafficIncidentAlertCoordinator trafficIncidentViewController];
    if (currentViewController == trafficIncidentViewController)
    {
      currentViewController2 = [(ContainerViewController *)self currentViewController];
      cardPresentationController = [currentViewController2 cardPresentationController];
      v7 = [cardPresentationController containeeLayout] == 5;
    }

    else
    {
      v7 = 0;
    }

    currentViewController3 = [(ContainerViewController *)self currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    currentViewController4 = [(ContainerViewController *)self currentViewController];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v7 || (isKindOfClass & 1) != 0 || (v16 & 1) != 0)
    {
      view = [(ContainerViewController *)self currentViewController];
      cardPresentationController2 = [view cardPresentationController];
      [cardPresentationController2 cardHeight];
      v10 = v19;

      goto LABEL_13;
    }
  }

  v21.receiver = self;
  v21.super_class = NavContainerViewController;
  [(ContainerViewController *)&v21 bottomEdgeInset];
  return v17;
}

- (NavTrafficIncidentAlertCoordination)trafficIncidentAlertCoordinator
{
  coordinator = [(NavContainerViewController *)self coordinator];
  trafficIncidentAlertCoordinator = [coordinator trafficIncidentAlertCoordinator];

  return trafficIncidentAlertCoordinator;
}

- (NavLaneGuidanceViewController)laneGuidanceViewController
{
  laneGuidanceViewController = self->_laneGuidanceViewController;
  if (!laneGuidanceViewController)
  {
    v4 = [[NavLaneGuidanceViewController alloc] initWithDelegate:self blurGroup:@"NavSignBlur"];
    v5 = self->_laneGuidanceViewController;
    self->_laneGuidanceViewController = v4;

    [(NavLaneGuidanceViewController *)self->_laneGuidanceViewController setCornerMask:3];
    v6 = _UISolariumEnabled();
    v7 = 38.0;
    if (!v6)
    {
      v7 = 10.0;
    }

    [(NavLaneGuidanceViewController *)self->_laneGuidanceViewController setCornerRadius:v7];
    laneGuidanceViewController = self->_laneGuidanceViewController;
  }

  return laneGuidanceViewController;
}

- (BOOL)_isPresentingOverlappingContainee
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  v3 = currentViewController;
  if (qword_10195FA28 != -1)
  {
    dispatch_once(&qword_10195FA28, &stru_101661780);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  if (!currentViewController)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = [qword_10195FA20 containsObject:objc_opt_class()];
LABEL_6:

  return v4;
}

- (BOOL)shouldHideTray
{
  if (self->_isArrivalState && ![(NavContainerViewController *)self isConnectedToCarPlay])
  {
    v30 = sub_100035E6C();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
LABEL_38:
      v27 = 0;
      goto LABEL_44;
    }

    selfCopy = self;
    v51 = objc_opt_class();
    v52 = NSStringFromClass(v51);
    if (objc_opt_respondsToSelector())
    {
      v53 = [(NavContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v54 = v53;
      if (v53 && ![v53 isEqualToString:v52])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v52, selfCopy, v54];

        goto LABEL_37;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v52, selfCopy];
LABEL_37:

    *buf = 138543362;
    v67 = selfCopy;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will unhide tray because we've arrived and aren't connected to CarPlay", buf, 0xCu);

    goto LABEL_38;
  }

  view = [(NavContainerViewController *)self view];
  [view frame];
  Height = CGRectGetHeight(v86);
  currentViewController = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  [cardPresentationController cardHeight];
  v8 = v7;

  [(ContainerViewController *)self statusBarHeight];
  v10 = v9;
  navSignViewController = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController footerBottomPosition];
  v13 = v12 + v10;

  laneGuidanceViewController = [(NavContainerViewController *)self laneGuidanceViewController];
  LODWORD(currentViewController) = [laneGuidanceViewController hasLaneGuidance];

  if (currentViewController)
  {
    laneGuidanceViewController2 = [(NavContainerViewController *)self laneGuidanceViewController];
    view2 = [laneGuidanceViewController2 view];
    [view2 bounds];
    v13 = CGRectGetHeight(v87) + v13;
  }

  v17 = 0.0;
  if (self->_junctionViewDisplayed)
  {
    [(NavContainerViewController *)self _navSignBottomPosition];
    v19 = v18;
    [(NavContainerViewController *)self maxAvailableHeightForJunctionView:0.0];
    v17 = v20 + v19;
  }

  v21 = Height - v8;
  v22 = fmax(v13, v17);
  navSignViewControllerCollapsedHeight = self->_navSignViewControllerCollapsedHeight;
  signListHeight = self->_signListHeight;
  v25 = signListHeight > navSignViewControllerCollapsedHeight;
  containerStyle = [(ContainerViewController *)self containerStyle];
  if (containerStyle > 7 || ((1 << containerStyle) & 0xE3) == 0)
  {
    v25 = self->_junctionViewDisplayed || signListHeight > navSignViewControllerCollapsedHeight;
  }

  v27 = v25 && v22 > v21;
  containeesHidden = [(ContainerViewController *)self containeesHidden];
  v29 = sub_100035E6C();
  v30 = v29;
  if (v27 == containeesHidden)
  {
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_44;
    }

    selfCopy2 = self;
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    if (objc_opt_respondsToSelector())
    {
      v44 = [(NavContainerViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v45 = v44;
      if (v44 && ![v44 isEqualToString:v43])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v43, selfCopy2, v45];

        goto LABEL_26;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v43, selfCopy2];
LABEL_26:

    if (v27)
    {
      v47 = "hide";
    }

    else
    {
      v47 = "show";
    }

    containerStyle2 = [(ContainerViewController *)selfCopy2 containerStyle];
    if (containerStyle2 > 7)
    {
      v49 = 1;
    }

    else
    {
      v49 = dword_101216300[containerStyle2];
    }

    junctionViewDisplayed = self->_junctionViewDisplayed;
    *buf = 138544642;
    v67 = selfCopy2;
    v68 = 2080;
    v69 = v47;
    v70 = 1024;
    v71 = v49;
    v72 = 1024;
    v73 = v22 > v21;
    v74 = 1024;
    v75 = signListHeight > navSignViewControllerCollapsedHeight;
    v76 = 1024;
    LODWORD(v77) = junctionViewDisplayed;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "[%{public}@] Should %s tray because isLandscape: %d, bottomOfSignsIsGreaterThanTopOfTray: %d, signHeightGreaterThanCollapsed: %d, junctionViewDisplayed: %d", buf, 0x2Eu);

    goto LABEL_44;
  }

  if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_44;
  }

  selfCopy3 = self;
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  if (objc_opt_respondsToSelector())
  {
    v34 = [(NavContainerViewController *)selfCopy3 performSelector:"accessibilityIdentifier"];
    v35 = v34;
    if (v34 && ![v34 isEqualToString:v33])
    {
      selfCopy3 = [NSString stringWithFormat:@"%@<%p, %@>", v33, selfCopy3, v35];

      goto LABEL_16;
    }
  }

  selfCopy3 = [NSString stringWithFormat:@"%@<%p>", v33, selfCopy3];
LABEL_16:

  v37 = "show";
  if (v27)
  {
    v37 = "hide";
  }

  v65 = v37;
  v38 = selfCopy3;
  containerStyle3 = [(ContainerViewController *)selfCopy3 containerStyle];
  if (containerStyle3 > 7)
  {
    v40 = 1;
  }

  else
  {
    v40 = dword_101216300[containerStyle3];
  }

  v64 = v40;
  v56 = v22 > v21;
  v57 = self->_signListHeight;
  [(NavSignListViewController *)selfCopy3->_navSignViewController layoutProgress];
  v59 = v58;
  isDragging = [(NavSignListViewController *)selfCopy3->_navSignViewController isDragging];

  v61 = self->_junctionViewDisplayed;
  *buf = 138545666;
  v67 = selfCopy3;
  v68 = 2080;
  v69 = v65;
  v70 = 1024;
  v71 = v64;
  v72 = 1024;
  v73 = v56;
  v74 = 1024;
  v75 = signListHeight > navSignViewControllerCollapsedHeight;
  v76 = 2048;
  v77 = v57;
  v78 = 2048;
  v79 = navSignViewControllerCollapsedHeight;
  v80 = 2048;
  v81 = v59;
  v82 = 1024;
  v83 = isDragging;
  v84 = 1024;
  v85 = v61;
  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Should %s tray because isLandscape: %d, bottomOfSignsIsGreaterThanTopOfTray: %d, signHeightGreaterThanCollapsed: %d (currentHeight: %f, collapsedHeight: %f, layoutProgress: %f, isDragging: %d), junctionViewDisplayed: %d", buf, 0x52u);

LABEL_44:
  return v27;
}

- (void)_updateContaineeHiddenIfNeeded
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  if (([cardPresentationController usingSheetPresentation] & 1) == 0)
  {
LABEL_10:

    return;
  }

  currentViewController2 = [(ContainerViewController *)self currentViewController];
  if ([currentViewController2 isBeingPresented])
  {
LABEL_9:

    goto LABEL_10;
  }

  currentViewController3 = [(ContainerViewController *)self currentViewController];
  if ([currentViewController3 isBeingDismissed])
  {
LABEL_8:

    goto LABEL_9;
  }

  view = [(NavContainerViewController *)self view];
  superview = [view superview];
  if (!superview)
  {
LABEL_7:

    goto LABEL_8;
  }

  v8 = superview;
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  currentIOSBasedContext = [chromeViewController currentIOSBasedContext];
  chromeContext = [(ContainerViewController *)self chromeContext];
  v12 = chromeContext;
  if (currentIOSBasedContext != chromeContext)
  {

    goto LABEL_7;
  }

  _isPresentingOverlappingContainee = [(NavContainerViewController *)self _isPresentingOverlappingContainee];

  if (_isPresentingOverlappingContainee)
  {
    return;
  }

  shouldHideTray = [(NavContainerViewController *)self shouldHideTray];
  cardHidingToken = self->_cardHidingToken;
  if (shouldHideTray)
  {
    if (cardHidingToken)
    {
      goto LABEL_20;
    }

    cardHidingToken = [(ContainerViewController *)self chromeViewController];
    v16 = [cardHidingToken acquireCardHidingTokenForReason:@"Displaying expanded navigation steps list"];
    v17 = self->_cardHidingToken;
    self->_cardHidingToken = v16;
  }

  else
  {
    if (!cardHidingToken)
    {
      goto LABEL_20;
    }

    self->_cardHidingToken = 0;
  }

LABEL_20:
  if (self->_signListHeight > self->_navSignViewControllerCollapsedHeight)
  {
    pedestrianARFeatureIntroTeachableMomentTimer = self->_pedestrianARFeatureIntroTeachableMomentTimer;

    [(GCDTimer *)pedestrianARFeatureIntroTeachableMomentTimer invalidate];
  }
}

- (double)_maxAvailableHeightForJunctionView
{
  [(ContainerViewController *)self statusBarHeight];
  v4 = v3;
  view = [(NavContainerViewController *)self view];
  [view frame];
  Height = CGRectGetHeight(v15);

  containerStyle = [(ContainerViewController *)self containerStyle];
  if (containerStyle <= 7 && ((1 << containerStyle) & 0xE3) != 0)
  {
    [(NavContainerViewController *)self _belowSignTopPosition];
    v9 = v8;
    currentViewController = [(ContainerViewController *)self currentViewController];
    view2 = [currentViewController view];
    [view2 bounds];
    v12 = CGRectGetHeight(v16);

    return Height + -110.0 - (v4 + v9 + v12);
  }

  else
  {
    [(NavContainerViewController *)self _belowSignTopPosition];
    return Height + -8.0 - (v4 + v14);
  }
}

- (void)updateStatusBarColor
{
  traitCollection = [(NavContainerViewController *)self traitCollection];
  isLuminanceReduced = [traitCollection isLuminanceReduced];

  if (isLuminanceReduced)
  {
    return;
  }

  laneGuidanceViewController = [(NavContainerViewController *)self laneGuidanceViewController];
  if ([laneGuidanceViewController hasLaneGuidance])
  {

LABEL_5:
    v8 = sub_1000808D8();
    navSignViewController = [(NavContainerViewController *)self navSignViewController];
    [navSignViewController layoutProgress];
    v19 = [v8 colorWithAlphaComponent:v10 * 0.239999995];
    goto LABEL_6;
  }

  navSignViewController2 = [(NavContainerViewController *)self navSignViewController];
  hasElevationGraph = [navSignViewController2 hasElevationGraph];

  if (hasElevationGraph)
  {
    goto LABEL_5;
  }

  navSignViewController3 = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController3 activeStepFadeIn];
  v14 = v13;

  if (v14 <= 0.0)
  {
    v19 = 0;
    goto LABEL_7;
  }

  v8 = sub_1000808D8();
  navSignViewController = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController layoutProgress];
  v16 = v15;
  navSignViewController4 = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController4 activeStepFadeIn];
  v19 = [v8 colorWithAlphaComponent:v16 * v18 * 0.239999995];

LABEL_6:
LABEL_7:
  iosBasedChromeViewController = [(NavContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setStatusBarAdditionalColor:v19];
}

- (void)_showPedestrianARRaiseToEnterTeachableMomentCardIfNecessary
{
  if ([(NavContainerViewController *)self _shouldShowPedestrianARTeachableMomentCard])
  {
    if (+[PedestrianARRaiseToEnterTeachableMomentContaineeViewController hasShownTeachableMoment])
    {
      coordinator = sub_100035E6C();
      if (os_log_type_enabled(coordinator, OS_LOG_TYPE_INFO))
      {
        v17 = 0;
        v4 = "Not showing Pedestrian AR raise to enter teachable moment card because it has already been shown before";
        v5 = &v17;
LABEL_7:
        _os_log_impl(&_mh_execute_header, coordinator, OS_LOG_TYPE_INFO, v4, v5, 2u);
      }
    }

    else
    {
      v6 = +[PedestrianARSessionUsageTracker sharedInstance];
      route = [(NavContainerViewController *)self route];
      uniqueRouteID = [route uniqueRouteID];
      uUIDString = [uniqueRouteID UUIDString];
      v10 = [v6 hasAREverLocalizedForRoute:uUIDString];

      if ((v10 & 1) == 0)
      {
        coordinator = sub_100035E6C();
        if (!os_log_type_enabled(coordinator, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        v16 = 0;
        v4 = "Not showing Pedestrian AR raise to enter teachable moment card because the user hasn't localized on the current route yet";
        v5 = &v16;
        goto LABEL_7;
      }

      v11 = +[PedestrianARSessionUsageTracker sharedInstance];
      hasARElementRendered = [v11 hasARElementRendered];

      coordinator = sub_100035E6C();
      v13 = os_log_type_enabled(coordinator, OS_LOG_TYPE_INFO);
      if ((hasARElementRendered & 1) == 0)
      {
        if (!v13)
        {
          goto LABEL_8;
        }

        v15 = 0;
        v4 = "Not showing Pedestrian AR raise to enter teachable moment card because the user hasn't seen an AR element yet";
        v5 = &v15;
        goto LABEL_7;
      }

      if (v13)
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, coordinator, OS_LOG_TYPE_INFO, "Showing the Pedestrian AR raise to enter teachable moment card", v14, 2u);
      }

      coordinator = [(NavContainerViewController *)self coordinator];
      [coordinator showPedestrianARRaiseToEnterTeachableMomentCard];
    }
  }

  else
  {
    coordinator = sub_100035E6C();
    if (os_log_type_enabled(coordinator, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v4 = "Not showing Pedestrian AR raise to enter teachable moment card because we should not show any teachable moment cards right now";
      v5 = buf;
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)_showPedestrianARFeatureIntroTeachableMomentCardIfNecessary
{
  if (![(NavContainerViewController *)self _shouldShowPedestrianARTeachableMomentCard])
  {
    coordinator = sub_100035E6C();
    if (!os_log_type_enabled(coordinator, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v10 = 0;
    v6 = "Not showing Pedestrian AR feature intro teachable moment card because we should not show any teachable moment cards right now";
    v7 = &v10;
LABEL_10:
    _os_log_impl(&_mh_execute_header, coordinator, OS_LOG_TYPE_INFO, v6, v7, 2u);
    goto LABEL_11;
  }

  v3 = +[PedestrianARFeatureIntroTeachableMomentContaineeViewController shouldShowTeachableMoment];
  coordinator = sub_100035E6C();
  v5 = os_log_type_enabled(coordinator, OS_LOG_TYPE_INFO);
  if ((v3 & 1) == 0)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    *buf = 0;
    v6 = "Not showing Pedestrian AR feature intro teachable moment card because it is not eligible to be shown";
    v7 = buf;
    goto LABEL_10;
  }

  if (v5)
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, coordinator, OS_LOG_TYPE_INFO, "Showing the Pedestrian AR feature intro teachable moment card", v8, 2u);
  }

  coordinator = [(NavContainerViewController *)self coordinator];
  [coordinator showPedestrianARFeatureIntroTeachableMomentCard];
LABEL_11:
}

- (BOOL)_shouldShowPedestrianARTeachableMomentCard
{
  if (!self->_pedestrianARSessionStateManager)
  {
    v5 = sub_100035E6C();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }

    LOWORD(v11) = 0;
    v7 = "Not showing Pedestrian AR teachable moment card because the feature is not enabled";
    goto LABEL_17;
  }

  v3 = +[UIApplication sharedMapsDelegate];
  currentInterruptionKind = [v3 currentInterruptionKind];

  if (!currentInterruptionKind)
  {
    if (([(ContainerViewController *)self containerStyle]& 0xFFFFFFFFFFFFFFFDLL) == 4)
    {
      v5 = sub_100035E6C();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      LOWORD(v11) = 0;
      v7 = "Not showing Pedestrian AR teachable moment card because the phone is in landscape";
    }

    else
    {
      if ([(PedestrianARSessionStateManager *)self->_pedestrianARSessionStateManager shouldShowPedestrianAR])
      {
        return 1;
      }

      v5 = sub_100035E6C();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      LOWORD(v11) = 0;
      v7 = "Not showing the Pedestrian AR teachable moment card because the feature is not available right now";
    }

LABEL_17:
    v9 = v5;
    v10 = 2;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v7, &v11, v10);
    goto LABEL_19;
  }

  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if ((currentInterruptionKind - 2) > 0x15)
    {
      v6 = @"kMapsInterruptionDirectionsSafetyWarning";
    }

    else
    {
      v6 = off_101661820[(currentInterruptionKind - 2)];
    }

    v11 = 138412290;
    v12 = v6;
    v7 = "Not showing Pedestrian AR teachable moment card because there is currently an interruption present: %@";
    v9 = v5;
    v10 = 12;
    goto LABEL_18;
  }

LABEL_19:

  return 0;
}

- (void)_drawSecondarySign
{
  view = [(NavContainerViewController *)self view];
  [view layoutIfNeeded];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100FFD288;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [UIView animateWithDuration:117440512 delay:v4 options:0 animations:0.25 completion:0.0];
}

- (void)_updateNavSignForArrival:(BOOL)arrival forced:(BOOL)forced
{
  if (self->_isArrivalState != arrival || forced)
  {
    arrivalCopy = arrival;
    self->_isArrivalState = arrival;
    if (![(NavContainerViewController *)self isConnectedToCarPlay])
    {
      [(UIView *)self->_navSignContainerView setHidden:arrivalCopy];
    }

    isArrivalState = self->_isArrivalState;
    currentViewController = [(ContainerViewController *)self currentViewController];
    cardPresentationController = [currentViewController cardPresentationController];
    [cardPresentationController setHideGrabber:isArrivalState];

    [(NavContainerViewController *)self _updateControlsHiddenAnimated:1];
    [(NavContainerViewController *)self _updateChildViewLayouts];
    [(NavContainerViewController *)self _updateContaineeHiddenIfNeeded];
    [(ContainerViewController *)self updateMapEdgeInsets];
    iosBasedChromeViewController = [(NavContainerViewController *)self iosBasedChromeViewController];
    [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarStyle" animated:1];

    iosBasedChromeViewController2 = [(NavContainerViewController *)self iosBasedChromeViewController];
    [iosBasedChromeViewController2 setNeedsUpdateComponent:@"StaleMapEffect" animated:1];

    iosBasedChromeViewController3 = [(NavContainerViewController *)self iosBasedChromeViewController];
    [iosBasedChromeViewController3 updateComponentsIfNeeded];
  }
}

- (void)_updateArrivalStateForced:(BOOL)forced
{
  forcedCopy = forced;
  v5 = +[MNNavigationService sharedService];
  arrivalInfo = [v5 arrivalInfo];

  if (arrivalInfo)
  {
    v6 = [arrivalInfo arrivalState] != 0;
  }

  else
  {
    v6 = 0;
  }

  [(NavContainerViewController *)self _updateNavSignForArrival:v6 forced:forcedCopy];
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if ((MNNavigationServiceStateChangedFromNavigatingToStopped() & 1) != 0 || MNNavigationServiceStateChangedToNavigating())
  {
    iosBasedChromeViewController = [(NavContainerViewController *)self iosBasedChromeViewController];
    [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarStyle" animated:0];
  }
}

- (void)navigationService:(id)service showJunctionView:(id)view
{
  self->_junctionViewActive = 1;
  viewCopy = view;
  v6 = [[NavJunctionViewInfo alloc] initWithGuidanceJunctionViewInfo:viewCopy];

  junctionViewController = [(NavContainerViewController *)self junctionViewController];
  [junctionViewController setJunctionViewInfo:v6];

  [(NavContainerViewController *)self showJunctionViewIfNeeded];
}

- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id
{
  v5 = [(NavContainerViewController *)self _isSecondarySignVisible:service];
  [(NavContainerViewController *)self _setShowingMidstepLaneGuidance:0];
  if (v5 != [(NavContainerViewController *)self _isSecondarySignVisible])
  {

    [(NavContainerViewController *)self _drawSecondarySign];
  }
}

- (void)navigationService:(id)service showLaneDirections:(id)directions
{
  directionsCopy = directions;
  _isSecondarySignVisible = [(NavContainerViewController *)self _isSecondarySignVisible];
  isForManeuver = [directionsCopy isForManeuver];

  [(NavContainerViewController *)self _setShowingMidstepLaneGuidance:isForManeuver ^ 1];
  if (_isSecondarySignVisible != [(NavContainerViewController *)self _isSecondarySignVisible])
  {

    [(NavContainerViewController *)self _drawSecondarySign];
  }
}

- (void)navigationService:(id)service updateSignsWithInfo:(id)info
{
  infoCopy = info;
  _isSecondarySignVisible = [(NavContainerViewController *)self _isSecondarySignVisible];
  secondarySign = [infoCopy secondarySign];

  [(NavContainerViewController *)self _setSecondarySignActive:secondarySign != 0];
  if (_isSecondarySignVisible != [(NavContainerViewController *)self _isSecondarySignVisible])
  {
    [(NavContainerViewController *)self _drawSecondarySign];
  }

  traitCollection = [(NavContainerViewController *)self traitCollection];
  if ([traitCollection isLuminanceReduced])
  {
    BOOL = GEOConfigGetBOOL();

    if ((BOOL & 1) == 0)
    {

      [(NavContainerViewController *)self _updateBacklightSceneEnvironmentUI];
    }
  }

  else
  {
  }
}

- (void)applyTransitionWithProgress:(double)progress
{
  v14.receiver = self;
  v14.super_class = NavContainerViewController;
  [(OverlayContainerViewController *)&v14 applyTransitionWithProgress:?];
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  previousTopContext = [chromeViewController previousTopContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    chromeViewController2 = [(ContainerViewController *)self chromeViewController];
    nextTopContext = [chromeViewController2 nextTopContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }
  }

  [(UIView *)self->_navSignContainerView setAlpha:progress];
  indicatorsViewController = [(NavContainerViewController *)self indicatorsViewController];
  view = [indicatorsViewController view];
  [view setAlpha:progress];

  currentViewController = [(ContainerViewController *)self currentViewController];
  view2 = [currentViewController view];
  [view2 setAlpha:progress];
}

- (void)_setShowingMidstepLaneGuidance:(BOOL)guidance
{
  self->_isShowingMidstepLaneGuidance = guidance;
  _isSecondarySignVisible = [(NavContainerViewController *)self _isSecondarySignVisible];
  navSignViewController = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController setShowingSecondaryManeuver:_isSecondarySignVisible];
}

- (void)_setSecondarySignActive:(BOOL)active
{
  self->_secondarySignActive = active;
  _isSecondarySignVisible = [(NavContainerViewController *)self _isSecondarySignVisible];
  navSignViewController = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController setShowingSecondaryManeuver:_isSecondarySignVisible];
}

- (void)hideJunctionViewTemporarily
{
  [(NavContainerViewController *)self hideJunctionViewIfNeededAnimated:1];
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100FFDB40;
  v6[3] = &unk_1016616E8;
  objc_copyWeak(&v7, &location);
  v4 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v6 block:10.0];
  junctionViewTimer = self->_junctionViewTimer;
  self->_junctionViewTimer = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (double)maxAvailableHeightForJunctionView:(double)view
{
  [(NavContainerViewController *)self _maxAvailableHeightForJunctionView];
  v4 = 250.0;
  if (v5 < 250.0)
  {
    [(NavContainerViewController *)self _maxAvailableHeightForJunctionView];
    v4 = v6;
  }

  containerStyle = [(ContainerViewController *)self containerStyle];
  if (containerStyle <= 7 && ((1 << containerStyle) & 0xE3) != 0 && v4 < 150.0)
  {
    return 0.0;
  }

  return v4;
}

- (double)_indicatorsTrailingInset
{
  view = [(NavContainerViewController *)self view];
  [view safeAreaInsets];
  v4 = v3;

  result = 0.0;
  if (v4 > 0.0)
  {
    return 16.0;
  }

  return result;
}

- (void)didTapLaneGuidance
{
  isConnectedToCarPlay = [(NavContainerViewController *)self isConnectedToCarPlay];
  navSignViewController = sub_100035E6C();
  v5 = os_log_type_enabled(navSignViewController, OS_LOG_TYPE_INFO);
  if (isConnectedToCarPlay)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, navSignViewController, OS_LOG_TYPE_INFO, "Ignoring tap gesture, CarPlay is connected", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, navSignViewController, OS_LOG_TYPE_INFO, "Toggling nav sign list due to lane guidance tap", v6, 2u);
    }

    navSignViewController = [(NavContainerViewController *)self navSignViewController];
    [navSignViewController toggleExpansionAnimated:1];
  }
}

- (void)updatedLaneGuidanceHeight:(double)height
{
  v5 = height + -8.0;
  if (height <= 0.0)
  {
    v5 = 0.0;
  }

  signTopConstraint = self->_signTopConstraint;
  if (height <= 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = height + 8.0;
  }

  [(NSLayoutConstraint *)signTopConstraint setConstant:v5];
  [(NSLayoutConstraint *)self->_laneGuidanceHeightConstraint setConstant:v7];
  [(NavContainerViewController *)self maximumSignListHeight];
  v9 = v8;
  if (fabs(height) <= 2.22044605e-16)
  {
    navSignViewController = [(NavContainerViewController *)self navSignViewController];
    if ([navSignViewController isExpanded])
    {
      navSignViewController2 = [(NavContainerViewController *)self navSignViewController];
      isDragging = [navSignViewController2 isDragging];

      if (!isDragging)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  [(NavContainerViewController *)self signListHeight];
  if (v13 < v9)
  {
    [(NavContainerViewController *)self signListHeight];
    v9 = v14;
  }

LABEL_13:
  [(NavContainerViewController *)self setSignListHeight:v9];
  navSignViewController3 = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController3 updateFooterConstraints];

  [(NavContainerViewController *)self _indicatorsTopPosition];
  [(NSLayoutConstraint *)self->_portraitIndicatorsTopConstraint setConstant:?];
  [(NavContainerViewController *)self _secondarySignTopPosition];
  [(NSLayoutConstraint *)self->_secondarySignTopConstraint setConstant:?];
  [(NavContainerViewController *)self _junctionViewTopPosition];
  [(NSLayoutConstraint *)self->_junctionViewTopConstraint setConstant:?];
  [(ContainerViewController *)self updateMapEdgeInsets];

  [(NavContainerViewController *)self _updateNavSignLayout];
}

- (double)signListAvailableHeight
{
  view = [(NavContainerViewController *)self view];
  [view frame];
  Height = CGRectGetHeight(v13);
  [(NavContainerViewController *)self _navSignBottomPosition];
  v6 = v5;

  view2 = [(NavContainerViewController *)self view];
  [view2 safeAreaInsets];
  v9 = v8;

  if (v9 <= 0.0)
  {
    v10 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v10 userInterfaceIdiom];

    v9 = 30.0;
    if (userInterfaceIdiom == 5)
    {
      v9 = sub_100019A44();
    }
  }

  return Height - (v6 + v9);
}

- (id)blockToAnimateAlongWithSignHeightChanges
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100FFE004;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (void)pressedEndNavigationWithSender:(id)sender
{
  senderCopy = sender;
  coordinator = [(NavContainerViewController *)self coordinator];
  [coordinator pressedEndWithSender:senderCopy];
}

- (void)selectStep:(id)step
{
  stepCopy = step;
  v17 = stepCopy;
  if (stepCopy)
  {
    stepIndex = [stepCopy stepIndex];
    route = [(NavContainerViewController *)self route];
    v7 = [route segmentIndexForStepIndex:stepIndex];

    mapView = [(NavContainerViewController *)self mapView];
    [mapView _setRouteContextInspectedSegmentIndex:v7 inspectedStepIndex:stepIndex];

    v9 = sub_100AF171C(v17);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    coordinator = [(NavContainerViewController *)self coordinator];
    [coordinator viewController:self updateMapRect:{v9, v11, v13, v15}];
  }

  else
  {
    coordinator = [(NavContainerViewController *)self coordinator];
    [coordinator recenterNavigation];
  }

  [(NavContainerViewController *)self updateLayoutAnimated:1];
}

- (void)updateSignContainerConstraints
{
  navSignViewController = [(NavContainerViewController *)self navSignViewController];
  -[NSLayoutConstraint setActive:](self->_secondarySignBottomConstraint, "setActive:", [navSignViewController isExpanded] ^ 1);

  navSignViewController2 = [(NavContainerViewController *)self navSignViewController];
  if (([navSignViewController2 isExpanded] & 1) != 0 || self->_junctionViewDisplayed)
  {
    isDragging = 1;
  }

  else
  {
    navSignViewController3 = [(NavContainerViewController *)self navSignViewController];
    isDragging = [navSignViewController3 isDragging];
  }

  [(NSLayoutConstraint *)self->_signContainerBottomCollapsedConstraint setActive:isDragging ^ 1];
  signContainerBottomExpandedConstraint = self->_signContainerBottomExpandedConstraint;

  [(NSLayoutConstraint *)signContainerBottomExpandedConstraint setActive:isDragging];
}

- (void)signListHeightWillChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  currentViewController = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (containeeLayout == 2)
  {
    currentViewController2 = [(ContainerViewController *)self currentViewController];
    cardPresentationController2 = [currentViewController2 cardPresentationController];
    [cardPresentationController2 wantsLayout:1];
  }

  v10 = 0.0;
  if (animatedCopy)
  {
    v10 = 0.25;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100FFE3AC;
  v11[3] = &unk_101661B18;
  v11[4] = self;
  [UIView animateWithDuration:117440512 delay:v11 options:0 animations:v10 completion:0.0];
}

- (double)maximumSignListHeight
{
  view = [(NavContainerViewController *)self view];
  [view frame];
  MaxY = CGRectGetMaxY(v12);
  [(UIView *)self->_navSignContainerView frame];
  MinY = CGRectGetMinY(v13);
  [(NSLayoutConstraint *)self->_signTopConstraint constant];
  v7 = v6;
  view2 = [(NavContainerViewController *)self view];
  [view2 safeAreaInsets];
  v10 = MaxY - (MinY + v7 + v9);

  return v10;
}

- (void)setSignListHeight:(double)height
{
  [(NavContainerViewController *)self maximumSignListHeight];
  self->_signListHeight = fmin(v5, height);

  [(NavContainerViewController *)self _updateContaineeHiddenIfNeeded];
}

- (void)_applyConnectedToCarPlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(NavContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v8, selfCopy, v10];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v8, selfCopy];
LABEL_8:

LABEL_10:
    connectedToCarPlay = selfCopy->_connectedToCarPlay;
    *buf = 138543618;
    v17 = selfCopy;
    v18 = 1024;
    v19 = connectedToCarPlay;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Applying connectedToCarPlay %d", buf, 0x12u);
  }

  navSignViewController = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController setConnectedToCarPlay:self->_connectedToCarPlay animated:animatedCopy];

  if (self->_connectedToCarPlay)
  {
    v14 = +[UIDevice currentDevice];
    [v14 setOrientation:1 animated:animatedCopy];
  }

  [(NavContainerViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FFE7F4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setConnectedToCarPlay:(BOOL)play animated:(BOOL)animated
{
  if (self->_connectedToCarPlay != play)
  {
    animatedCopy = animated;
    playCopy = play;
    v7 = sub_100035E6C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      self->_connectedToCarPlay = playCopy;
      [(NavContainerViewController *)self _applyConnectedToCarPlayAnimated:animatedCopy];
      return;
    }

    selfCopy = self;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(NavContainerViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_8:

    connectedToCarPlay = self->_connectedToCarPlay;
    *buf = 138543874;
    v16 = selfCopy;
    v17 = 1024;
    v18 = connectedToCarPlay;
    v19 = 1024;
    v20 = playCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Changing connectedToCarPlay from %d to %d", buf, 0x18u);

    goto LABEL_9;
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v8.receiver = self;
  v8.super_class = NavContainerViewController;
  foregroundCopy = foreground;
  [(ContainerViewController *)&v8 sceneWillEnterForeground:foregroundCopy];
  object = [foregroundCopy object];

  chromeViewController = [(ContainerViewController *)self chromeViewController];
  _maps_uiScene = [chromeViewController _maps_uiScene];

  if (object == _maps_uiScene)
  {
    [(NavContainerViewController *)self _applyConnectedToCarPlayAnimated:0];
  }
}

- (void)_sceneConnectionsDidChange
{
  v3 = [UIApplication _maps_isAnySceneConnectedForRole:_UIWindowSceneSessionRoleCarPlay];

  [(NavContainerViewController *)self setConnectedToCarPlay:v3 animated:1];
}

- (void)vlfContaineeViewControllerDidDisappearNotification:(id)notification
{
  [(UIView *)self->_navSignContainerView setHidden:0];
  indicatorsViewController = [(NavContainerViewController *)self indicatorsViewController];
  view = [indicatorsViewController view];
  [view setHidden:0];

  self->_vlfActive = 0;
  [(NavContainerViewController *)self _updateRecenterButtonLayout];
  iosBasedChromeViewController = [(NavContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarStyle" animated:0];
}

- (void)vlfSessionTaskWillShowVLFUINotification:(id)notification
{
  [(UIView *)self->_navSignContainerView setHidden:1];
  indicatorsViewController = [(NavContainerViewController *)self indicatorsViewController];
  view = [indicatorsViewController view];
  [view setHidden:1];

  self->_vlfActive = 1;
  [(NavContainerViewController *)self _updateRecenterButtonLayout];
  iosBasedChromeViewController = [(NavContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarStyle" animated:0];
}

- (void)willBeginDisplayingInSecureLockScreen
{
  v3.receiver = self;
  v3.super_class = NavContainerViewController;
  [(ContainerViewController *)&v3 willBeginDisplayingInSecureLockScreen];
  [(NavContainerViewController *)self hideStatusBarIfNeeded];
  [(NavContainerViewController *)self setIdleTimer:0];
}

- (int)currentMapViewTargetForAnalytics
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 506;
  }

  else
  {
    return 505;
  }
}

- (int)currentUITargetForAnalytics
{
  route = [(NavContainerViewController *)self route];
  v3 = [route transportType] - 1;
  if (v3 > 4)
  {
    v4 = 401;
  }

  else
  {
    v4 = dword_101216320[v3];
  }

  return v4;
}

- (void)idleTimerDidTimeout:(id)timeout
{
  coordinator = [(NavContainerViewController *)self coordinator];
  defaultContaineeViewControllerType = [coordinator defaultContaineeViewControllerType];

  if (defaultContaineeViewControllerType == 1)
  {
    return;
  }

  currentViewController = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  currentViewController2 = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_5:
LABEL_6:

    [(ContainerViewController *)self popLastViewControllerAnimated:1];
    return;
  }

  currentViewController3 = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_6;
  }

  currentViewController4 = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    coordinator2 = [(NavContainerViewController *)self coordinator];
    [coordinator2 dismissModalContainee];

    coordinator3 = [(NavContainerViewController *)self coordinator];
    [coordinator3 dismissTray];
  }

  else
  {

    [(ContainerViewController *)self setLayoutIfSupported:1 animated:1];
  }
}

- (double)nextIdleTimeout:(id)timeout
{
  GEOConfigGetDouble();
  v5 = v4;
  GEOConfigGetDouble();
  v7 = v6;
  currentViewController = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v7;
  }

  return v5;
}

- (void)_updateIdleTimer
{
  if ([(PassThroughViewController *)self hasParentView]&& [(ContainerViewController *)self containeeLayout]!= 1)
  {
    v3 = [NavIdleTimeoutTimer alloc];
    view = [(NavContainerViewController *)self view];
    window = [view window];
    v6 = [(NavIdleTimeoutTimer *)v3 initWithWindow:window];
    [(NavContainerViewController *)self setIdleTimer:v6];

    idleTimer = [(NavContainerViewController *)self idleTimer];
    [idleTimer setDelegate:self];
  }

  else
  {

    [(NavContainerViewController *)self setIdleTimer:0];
  }
}

- (id)statusBarSupplementaryView
{
  if ([(NavContainerViewController *)self _bannerActionShouldDisplay])
  {
    resumeRouteBanner = [(NavContainerViewController *)self resumeRouteBanner];
  }

  else
  {
    statusIndicatorView = [(NavContainerViewController *)self statusIndicatorView];
    if ([statusIndicatorView isVisible])
    {
      resumeRouteBanner = [(NavContainerViewController *)self statusIndicatorView];
    }

    else
    {
      resumeRouteBanner = 0;
    }
  }

  return resumeRouteBanner;
}

- (void)statusIndicatorTypeChanged:(unint64_t)changed
{
  statusIndicatorView = [(NavContainerViewController *)self statusIndicatorView];
  [statusIndicatorView setType:changed];

  iosBasedChromeViewController = [(NavContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarStyle" animated:0];

  iosBasedChromeViewController2 = [(NavContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController2 setNeedsUpdateComponent:@"statusBarSupplementaryView" animated:1];

  iosBasedChromeViewController3 = [(NavContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController3 updateComponentsIfNeeded];

  if ([(NavContainerViewController *)self isViewLoaded])
  {
    [(NavContainerViewController *)self _updateNavSignLayout];
    navSignViewController = [(NavContainerViewController *)self navSignViewController];
    [navSignViewController updateHeightConstraints];
  }
}

- (StatusIndicatorView)statusIndicatorView
{
  statusIndicatorView = self->_statusIndicatorView;
  if (!statusIndicatorView)
  {
    v4 = [[StatusIndicatorView alloc] initForLimitedMode:1];
    v5 = self->_statusIndicatorView;
    self->_statusIndicatorView = v4;

    statusIndicatorView = self->_statusIndicatorView;
  }

  return statusIndicatorView;
}

- (void)showVolumeControlView
{
  coordinator = [(NavContainerViewController *)self coordinator];
  [coordinator displayVoiceVolumeControl];

  [GEOAPPortal captureUserAction:139 target:505 value:0];
}

- (void)reportAnIncident
{
  coordinator = [(NavContainerViewController *)self coordinator];
  [coordinator displayIncidentReporting];
}

- (void)enterPedestrianAR
{
  [(GCDTimer *)self->_pedestrianARFeatureIntroTeachableMomentTimer invalidate];
  coordinator = [(NavContainerViewController *)self coordinator];
  [coordinator enterPedestrianAR];

  [(ContainerViewController *)self setLayoutIfSupported:1 animated:0];
}

- (void)toggleHeadingMode
{
  coordinator = [(NavContainerViewController *)self coordinator];
  [coordinator toggleLowGuidanceNavigationCameraHeading];

  pedestrianARFeatureIntroTeachableMomentTimer = self->_pedestrianARFeatureIntroTeachableMomentTimer;

  [(GCDTimer *)pedestrianARFeatureIntroTeachableMomentTimer invalidate];
}

- (void)switchToZoomedInMode
{
  coordinator = [(NavContainerViewController *)self coordinator];
  [coordinator sender:self switchToNavigationCameraMode:0];

  pedestrianARFeatureIntroTeachableMomentTimer = self->_pedestrianARFeatureIntroTeachableMomentTimer;

  [(GCDTimer *)pedestrianARFeatureIntroTeachableMomentTimer invalidate];
}

- (void)switchToOverviewMode
{
  coordinator = [(NavContainerViewController *)self coordinator];
  [coordinator sender:self switchToNavigationCameraMode:1];

  pedestrianARFeatureIntroTeachableMomentTimer = self->_pedestrianARFeatureIntroTeachableMomentTimer;

  [(GCDTimer *)pedestrianARFeatureIntroTeachableMomentTimer invalidate];
}

- (BOOL)_bannerActionShouldDisplay
{
  if ([(NavContainerBannerAction *)self->_bannerAction hidden])
  {
    return 0;
  }

  else
  {
    title = [(NavContainerBannerAction *)self->_bannerAction title];
    if ([title length])
    {
      v3 = !self->_junctionViewActive;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_closeBannerAction
{
  bannerAction = [(NavContainerViewController *)self bannerAction];
  v4 = [bannerAction copy];

  [v4 setHidden:1];
  [(NavContainerViewController *)self setBannerAction:v4 animated:1];
}

- (void)_performBannerAction
{
  bannerAction = [(NavContainerViewController *)self bannerAction];
  actionHandler = [bannerAction actionHandler];

  if (actionHandler)
  {
    bannerAction2 = [(NavContainerViewController *)self bannerAction];
    actionHandler2 = [bannerAction2 actionHandler];
    v7 = actionHandler2[2]();

    if (v7)
    {

      [(NavContainerViewController *)self setBannerAction:0 animated:1];
    }
  }
}

- (void)setBannerAction:(id)action animated:(BOOL)animated
{
  if (self->_bannerAction != action)
  {
    animatedCopy = animated;
    v6 = [action copy];
    bannerAction = self->_bannerAction;
    self->_bannerAction = v6;

    title = [(NavContainerBannerAction *)self->_bannerAction title];
    resumeRouteBanner = [(NavContainerViewController *)self resumeRouteBanner];
    [resumeRouteBanner setTitle:title];

    iosBasedChromeViewController = [(NavContainerViewController *)self iosBasedChromeViewController];
    [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarSupplementaryView" animated:animatedCopy];
  }
}

- (BOOL)shouldHideBottomPocketForSidebarContainerStyle:(BOOL)style
{
  v6.receiver = self;
  v6.super_class = NavContainerViewController;
  return [(ContainerViewController *)&v6 shouldHideBottomPocketForSidebarContainerStyle:?]|| self->_hideBottomPocketForSidebarNavigation && style;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = NSStringFromSelector("collapsedHeight");
  v14 = [pathCopy isEqualToString:v13];

  if (v14)
  {
    v15 = [changeCopy objectForKeyedSubscript:NSKeyValueChangeNewKey];

    [v15 getValue:&self->_navSignViewControllerCollapsedHeight];
    navSignViewControllerCollapsedHeight = self->_navSignViewControllerCollapsedHeight;
    [(NavContainerViewController *)self signListHeight];
    if (navSignViewControllerCollapsedHeight <= v17)
    {
      [(NavContainerViewController *)self signListHeight];
    }

    else
    {
      v18 = self->_navSignViewControllerCollapsedHeight;
    }

    [(NavContainerViewController *)self setSignListHeight:v18];
    [(NavContainerViewController *)self _indicatorsTopPosition];
    [(NSLayoutConstraint *)self->_portraitIndicatorsTopConstraint setConstant:?];
    [(NavContainerViewController *)self _secondarySignTopPosition];
    [(NSLayoutConstraint *)self->_secondarySignTopConstraint setConstant:?];
    [(NavContainerViewController *)self updateSecondaryAlpha];
    [(NavContainerViewController *)self updateJunctionViewAlpha];
    [(NavContainerViewController *)self _updateNavSignCorners];
    [(NavContainerViewController *)self _junctionViewTopPosition];
    [(NSLayoutConstraint *)self->_junctionViewTopConstraint setConstant:?];
    [(ContainerViewController *)self updateMapEdgeInsets];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = NavContainerViewController;
    [(NavContainerViewController *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_navigationChromeVisibilityChanged
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"__internal__hideChromeInNavigation"];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  view = [(NavContainerViewController *)self view];
  subviews = [view subviews];

  v7 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v11 + 1) + 8 * v10) setHidden:v4];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)willDismissNavigationAnimated:(BOOL)animated
{
  v3 = 0.0;
  if (animated)
  {
    v3 = 0.25;
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100FFFBD0;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100FFFCC4;
  v4[3] = &unk_101661738;
  v4[4] = self;
  [UIView animateWithDuration:117440512 delay:v5 options:v4 animations:v3 completion:0.0];
}

- (BOOL)isForWalkingNav
{
  route = [(NavContainerViewController *)self route];
  v3 = [route transportType] == 2;

  return v3;
}

- (void)setResumeRouteBannerHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  resumeRouteBanner = [(NavContainerViewController *)self resumeRouteBanner];
  v5 = resumeRouteBanner;
  if (hiddenCopy)
  {
    [resumeRouteBanner hideIfNeeded];
  }

  else
  {
    [resumeRouteBanner showIfNeeded];
  }
}

- (void)setSignStyle:(unint64_t)style
{
  if (self->_signStyle != style)
  {
    self->_signStyle = style;
    if ([(NavContainerViewController *)self isViewLoaded])
    {
      indicatorsViewController = [(NavContainerViewController *)self indicatorsViewController];
      [indicatorsViewController setIndicatorsType:style != 1];

      iosBasedChromeViewController = [(NavContainerViewController *)self iosBasedChromeViewController];
      [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarStyle" animated:0];
    }

    if (style == 1)
    {

      [(NavContainerViewController *)self showJunctionViewIfNeeded];
    }

    else
    {

      [(NavContainerViewController *)self hideJunctionViewIfNeeded];
    }
  }
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  if (routeCopy && self->_route != routeCopy)
  {
    v6 = routeCopy;
    objc_storeStrong(&self->_route, route);
    [(NavContainerViewController *)self _updateRecenterButtonLayout];
    routeCopy = v6;
  }
}

- (void)_updateControlsHiddenAnimated:(BOOL)animated
{
  animatedCopy = animated;
  indicatorsViewController = [(NavContainerViewController *)self indicatorsViewController];
  v6 = indicatorsViewController;
  v7 = self->_trayOpen || self->_isPanned || self->_isArrivalState || self->_connectedToCarPlay;
  [indicatorsViewController setControlsHidden:v7 animated:animatedCopy];

  indicatorsViewController2 = [(NavContainerViewController *)self indicatorsViewController];
  v9 = self->_isPanned || self->_isArrivalState || self->_connectedToCarPlay;
  v10 = indicatorsViewController2;
  [indicatorsViewController2 setIndicatorsHidden:v9 animated:animatedCopy];
}

- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)zoom
{
  v4 = sub_100035E6C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Panning] mapViewNavigationCameraDidReturnToDefaultZoom:", v5, 2u);
  }

  self->_isPanned = 0;
  [(NavContainerViewController *)self updateLayoutAnimated:1];
  [(NavContainerViewController *)self showJunctionViewIfNeeded];
  [(NavContainerViewController *)self _updateControlsHiddenAnimated:1];
}

- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)zoom
{
  v4 = sub_100035E6C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Panning] mapViewNavigationCameraDidLeaveDefaultZoom:", v7, 2u);
  }

  self->_isPanned = 1;
  [(NavContainerViewController *)self updateLayoutAnimated:1];
  if (self->_trayOpen && [(ContainerViewController *)self containerStyle]!= 7)
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    cardPresentationController = [currentViewController cardPresentationController];
    [cardPresentationController wantsLayout:1];
  }

  [(NavContainerViewController *)self hideJunctionViewIfNeededAnimated:1];
  [(NavContainerViewController *)self _updateControlsHiddenAnimated:1];
}

- (void)mapViewNavigationCameraHasStoppedPanning:(id)panning
{
  v4 = sub_100035E6C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Panning] mapViewNavigationCameraHasStoppedPanning:", v5, 2u);
  }

  self->_isPanned = 0;
  [(NavContainerViewController *)self updateLayoutAnimated:1];
  [(NavContainerViewController *)self showJunctionViewIfNeeded];
  [(NavContainerViewController *)self _updateControlsHiddenAnimated:1];
}

- (void)mapViewNavigationCameraHasStartedPanning:(id)panning
{
  v4 = sub_100035E6C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Panning] mapViewNavigationCameraHasStartedPanning:", v7, 2u);
  }

  self->_isPanned = 1;
  [(NavContainerViewController *)self updateLayoutAnimated:1];
  if (self->_trayOpen && [(ContainerViewController *)self containerStyle]!= 7)
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    cardPresentationController = [currentViewController cardPresentationController];
    [cardPresentationController wantsLayout:1];
  }

  [(NavContainerViewController *)self hideJunctionViewIfNeededAnimated:1];
  [(NavContainerViewController *)self _updateControlsHiddenAnimated:1];
}

- (double)availableHeight
{
  containerStyle = [(ContainerViewController *)self containerStyle];
  if (containerStyle > 6)
  {
    goto LABEL_13;
  }

  if (((1 << containerStyle) & 0x54) != 0)
  {
    v4 = +[UIDevice currentDevice];
    if ([v4 userInterfaceIdiom] == 1)
    {

      goto LABEL_9;
    }

    v16 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v16 userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
LABEL_9:
      view = [(NavContainerViewController *)self view];
      [view bounds];
      v19 = v18;
      topContentView = [(OverlayContainerViewController *)self topContentView];
      [topContentView frame];
      MaxY = CGRectGetMaxY(v33);
      [(NavContainerViewController *)self edgePadding];
      v22 = v21 + MaxY;
      v11 = 0.0;
      if (v19 >= v22)
      {
        view2 = [(NavContainerViewController *)self view];
        [view2 bounds];
        v24 = v23;
        topContentView2 = [(OverlayContainerViewController *)self topContentView];
        [topContentView2 frame];
        v26 = CGRectGetMaxY(v34);
        [(NavContainerViewController *)self edgePadding];
        v11 = v24 - (v26 + v27);

        goto LABEL_11;
      }

      goto LABEL_12;
    }

LABEL_13:
    v30.receiver = self;
    v30.super_class = NavContainerViewController;
    [(ContainerViewController *)&v30 availableHeight];
    return v28;
  }

  if (((1 << containerStyle) & 0x22) == 0)
  {
    goto LABEL_13;
  }

  view = [(NavContainerViewController *)self view];
  [view bounds];
  v7 = v6;
  topContentView = [(OverlayContainerViewController *)self topContentView];
  [topContentView frame];
  v9 = CGRectGetMaxY(v31);
  v10 = v7 + 8.0;
  v11 = 0.0;
  if (v10 >= v9)
  {
    view2 = [(NavContainerViewController *)self view];
    [view2 bounds];
    v14 = v13;
    topContentView3 = [(OverlayContainerViewController *)self topContentView];
    [topContentView3 frame];
    v11 = v14 + 8.0 - CGRectGetMaxY(v32);

LABEL_11:
  }

LABEL_12:

  return v11;
}

- (void)containerStyleManagerDidChangeStyle:(unint64_t)style
{
  v8.receiver = self;
  v8.super_class = NavContainerViewController;
  [(ContainerViewController *)&v8 containerStyleManagerDidChangeStyle:?];
  coordinator = [(NavContainerViewController *)self coordinator];
  traitCollection = [(NavContainerViewController *)self traitCollection];
  [coordinator updateCameraForTraits:traitCollection containerStyle:style];

  [(NavContainerViewController *)self _updateChildViewLayouts];
  iosBasedChromeViewController = [(NavContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarStyle" animated:0];

  if ([(NavContainerViewController *)self canDisplayJunctionViewInfo])
  {
    [(NavContainerViewController *)self showJunctionViewIfNeeded];
  }

  else
  {
    [(NavContainerViewController *)self hideJunctionViewIfNeededAnimated:1];
  }
}

- (void)presentController:(id)controller animated:(BOOL)animated useDefaultContaineeLayout:(BOOL)layout
{
  layoutCopy = layout;
  animatedCopy = animated;
  controllerCopy = controller;
  coordinator = [(NavContainerViewController *)self coordinator];
  isShowingFullScreenDirectionsList = [coordinator isShowingFullScreenDirectionsList];

  v11 = sub_100035E6C();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (isShowingFullScreenDirectionsList)
  {
    if (v12)
    {
      *buf = 138412290;
      v15 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Showing expanded nav sign; skipping presentation of %@", buf, 0xCu);
    }
  }

  else
  {
    if (v12)
    {
      *buf = 138412290;
      v15 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Presenting controller: %@", buf, 0xCu);
    }

    v13.receiver = self;
    v13.super_class = NavContainerViewController;
    [(ContainerViewController *)&v13 presentController:controllerCopy animated:animatedCopy useDefaultContaineeLayout:layoutCopy];
  }
}

- (unint64_t)originalLayoutForViewController:(id)controller
{
  controllerCopy = controller;
  currentViewController = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  defaultContaineeLayout = [cardPresentationController defaultContaineeLayout];

  if (!defaultContaineeLayout)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v9 = controllerCopy, v10 = -[ContainerViewController containerStyle](self, "containerStyle"), -[NavContainerViewController traitCollection](self, "traitCollection"), v11 = objc_claimAutoreleasedReturnValue(), defaultContaineeLayout = [v9 defaultLayoutForContainerStyle:v10 traitCollection:v11], v9, v11, !defaultContaineeLayout))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        defaultContaineeLayout = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          defaultContaineeLayout = 1;
        }

        else
        {
          defaultContaineeLayout = 2;
        }
      }
    }
  }

  return defaultContaineeLayout;
}

- (void)updateLayoutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v10.receiver = self;
  v10.super_class = NavContainerViewController;
  [(ContainerViewController *)&v10 updateLayoutAnimated:?];
  [(ContainerViewController *)self updateContaineeStackState];
  [(NavContainerViewController *)self _updateIdleTimer];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_101000964;
  v9[3] = &unk_101661B18;
  v9[4] = self;
  v5 = objc_retainBlock(v9);
  v6 = v5;
  if (animatedCopy)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1010009C4;
    v7[3] = &unk_101661760;
    v8 = v5;
    [UIView _animateUsingDefaultTimingWithOptions:4 animations:v7 completion:0];
  }

  else
  {
    (v5[2])(v5);
  }
}

- (void)_pinSignAndIndicators
{
  if (![(NSLayoutConstraint *)self->_signContainerTopConstraint isActive])
  {
    topAnchor = [(UIView *)self->_navSignContainerView topAnchor];
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    viewportLayoutGuide = [chromeViewController viewportLayoutGuide];
    topAnchor2 = [viewportLayoutGuide topAnchor];
    v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
    signContainerTopConstraint = self->_signContainerTopConstraint;
    self->_signContainerTopConstraint = v7;

    bottomAnchor = [(UIView *)self->_navSignContainerView bottomAnchor];
    view = [(NavContainerViewController *)self view];
    bottomAnchor2 = [view bottomAnchor];
    v12 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    signContainerBottomCollapsedConstraint = self->_signContainerBottomCollapsedConstraint;
    self->_signContainerBottomCollapsedConstraint = v12;

    bottomAnchor3 = [(UIView *)self->_navSignContainerView bottomAnchor];
    view2 = [(NavContainerViewController *)self view];
    bottomAnchor4 = [view2 bottomAnchor];
    v17 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    signContainerBottomExpandedConstraint = self->_signContainerBottomExpandedConstraint;
    self->_signContainerBottomExpandedConstraint = v17;

    leadingAnchor = [(UIView *)self->_navSignContainerView leadingAnchor];
    view3 = [(NavContainerViewController *)self view];
    leadingAnchor2 = [view3 leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    signContainerLeadingConstraint = self->_signContainerLeadingConstraint;
    self->_signContainerLeadingConstraint = v22;

    containerView = [(ContainerViewController *)self containerView];
    widthAnchor = [containerView widthAnchor];
    widthAnchor2 = [(UIView *)self->_navSignContainerView widthAnchor];
    v27 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    signContainerWidthConstraint = self->_signContainerWidthConstraint;
    self->_signContainerWidthConstraint = v27;

    v29 = self->_signContainerLeadingConstraint;
    v32[0] = self->_signContainerTopConstraint;
    v32[1] = v29;
    v30 = self->_signContainerBottomCollapsedConstraint;
    v32[2] = self->_signContainerWidthConstraint;
    v32[3] = v30;
    v31 = [NSArray arrayWithObjects:v32 count:4];
    [NSLayoutConstraint activateConstraints:v31];

    [(NavContainerViewController *)self _updateSignContainerConstraints];
  }
}

- (void)_containeeDidPresent:(id)present
{
  suppressedContainee = self->_suppressedContainee;
  self->_suppressedContainee = 0;
}

- (void)_containeeWillPresent:(id)present
{
  presentCopy = present;
  if ([(PassThroughViewController *)self hasParentView]&& self->_layoutSetup)
  {
    userInfo = [presentCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"ContainerContainee"];

    viewIfLoaded = [v5 viewIfLoaded];
    window = [viewIfLoaded window];

    if (window)
    {
      cardPresentationController = [v5 cardPresentationController];
      containeeLayout = [cardPresentationController containeeLayout];
    }

    else
    {
      containeeLayout = [(NavContainerViewController *)self originalLayoutForViewController:v5];
    }

    self->_trayOpen = containeeLayout > 1;
    [(NavContainerViewController *)self _updateControlsHiddenAnimated:+[UIView areAnimationsEnabled]];
  }
}

- (void)_containeeLayoutDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"ContainerContainee"];

  userInfo2 = [changeCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:@"ContainerLayout"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = sub_10002A8B8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138543874;
    selfCopy = self;
    v15 = 2114;
    v16 = v6;
    v17 = 2048;
    v18 = unsignedIntegerValue;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ containee: %{public}@ didChangeTo: %lu", &v13, 0x20u);
  }

  if ([(PassThroughViewController *)self hasParentView])
  {
    if (self->_layoutSetup)
    {
      currentViewController = [(ContainerViewController *)self currentViewController];

      if (v6 == currentViewController)
      {
        suppressedContainee = self->_suppressedContainee;
        self->_suppressedContainee = 0;

        [(NavContainerViewController *)self _updateControlsHiddenAnimated:+[UIView areAnimationsEnabled]];
      }
    }
  }
}

- (void)_containeeLayoutWillChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"ContainerContainee"];

  userInfo2 = [changeCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:@"ContainerLayout"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = sub_10002A8B8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138543874;
    selfCopy = self;
    v15 = 2114;
    v16 = v6;
    v17 = 2048;
    v18 = unsignedIntegerValue;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ containee: %{public}@ willChangeTo: %lu", &v13, 0x20u);
  }

  if ([(PassThroughViewController *)self hasParentView])
  {
    if (self->_layoutSetup)
    {
      self->_trayOpen = unsignedIntegerValue > 1;
      if (v6 != self->_suppressedContainee)
      {
        if (unsignedIntegerValue >= 2)
        {
          navSignViewController = [(NavContainerViewController *)self navSignViewController];
          [navSignViewController clearDragState];
        }

        navSignViewController2 = [(NavContainerViewController *)self navSignViewController];
        [navSignViewController2 clearPartialExpansionAnimated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];

        [(NavContainerViewController *)self _updateControlsHiddenAnimated:+[UIView areAnimationsEnabled]];
        [(GCDTimer *)self->_pedestrianARFeatureIntroTeachableMomentTimer invalidate];
      }
    }
  }
}

- (unint64_t)layoutForCurrentViewControllerWithStyle:(unint64_t)style
{
  if ([(ContainerViewController *)self containeeLayout])
  {

    return [(ContainerViewController *)self containeeLayout];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NavContainerViewController;
    return [(ContainerViewController *)&v6 layoutForCurrentViewControllerWithStyle:style];
  }
}

- (void)_updateStatusBarIndicatorLayout
{
  if (_UISolariumEnabled())
  {
    statusIndicatorView = self->_statusIndicatorView;
    preferredStatusBarStyle = [(NavContainerViewController *)self preferredStatusBarStyle];
    v5 = statusIndicatorView;
  }

  else
  {
    containerStyle = [(ContainerViewController *)self containerStyle];
    if (containerStyle <= 7 && ((1 << containerStyle) & 0xE3) != 0 && !self->_isArrivalState)
    {
      v5 = self->_statusIndicatorView;
      preferredStatusBarStyle = 1;
    }

    else
    {
      v7 = +[MapsLightLevelController sharedController];
      if ([v7 shouldUseNightMode])
      {
        v8 = 1;
      }

      else
      {
        v8 = 3;
      }

      v5 = self->_statusIndicatorView;
      preferredStatusBarStyle = v8;
    }
  }

  [(StatusIndicatorView *)v5 updateWithStatusBarStyle:preferredStatusBarStyle];
}

- (void)_updateRecenterButtonLayout
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  nextTopContext = [chromeViewController nextTopContext];

  if (!nextTopContext || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4 = 0.0, (isKindOfClass & 1) != 0))
  {
    _shouldShowNavRecenterButton = [(NavContainerViewController *)self _shouldShowNavRecenterButton];
    v4 = 0.0;
    if (_shouldShowNavRecenterButton)
    {
      v4 = 1.0;
    }
  }

  [(UIButton *)self->_recenterButton setAlpha:v4];
}

- (void)_updateIndicatorsLayout
{
  [(NavContainerViewController *)self _indicatorsTopPosition];
  [(NSLayoutConstraint *)self->_portraitIndicatorsTopConstraint setConstant:?];
  [(NavContainerViewController *)self _indicatorsTrailingInset];
  [(NSLayoutConstraint *)self->_landscapeIndicatorsTrailingConstraint setConstant:?];
  containerStyle = [(ContainerViewController *)self containerStyle];
  if (containerStyle > 7)
  {
    v5 = &OBJC_IVAR___NavContainerViewController__landscapeIndicatorsConstraints;
    v4 = &OBJC_IVAR___NavContainerViewController__portraitIndicatorsConstraints;
  }

  else
  {
    v4 = off_1016617A0[containerStyle];
    v5 = off_1016617E0[containerStyle];
  }

  [NSLayoutConstraint deactivateConstraints:*(&self->super.super.super.super.super.super.super.isa + *v4)];
  v6 = *(&self->super.super.super.super.super.super.super.isa + *v5);

  [NSLayoutConstraint activateConstraints:v6];
}

- (void)_updateJunctionViewLayout
{
  [(NavContainerViewController *)self _junctionViewTopPosition];
  [(NSLayoutConstraint *)self->_junctionViewTopConstraint setConstant:?];
  [(NavContainerViewController *)self maxAvailableHeightForJunctionView:0.0];
  v4 = v3;
  junctionViewController = [(NavContainerViewController *)self junctionViewController];
  [junctionViewController setAvailableHeight:v4];

  containerStyle = [(ContainerViewController *)self containerStyle];
  v7 = 12;
  if (containerStyle <= 7 && ((1 << containerStyle) & 0xE3) != 0)
  {
    if ([(NavContainerViewController *)self _shouldAlwaysRoundOuterSignCorners])
    {
      v7 = 12;
    }

    else
    {
      v7 = 0;
    }
  }

  junctionViewController2 = [(NavContainerViewController *)self junctionViewController];
  view = [junctionViewController2 view];
  layer = [view layer];
  [layer setMaskedCorners:v7];
}

- (void)_updateSecondarySignLayout
{
  [(NavContainerViewController *)self _secondarySignTopPosition];
  secondarySignTopConstraint = self->_secondarySignTopConstraint;

  [(NSLayoutConstraint *)secondarySignTopConstraint setConstant:?];
}

- (void)_updateNavSignCardWidth
{
  containerStyleManager = [(ContainerViewController *)self containerStyleManager];
  [containerStyleManager containerWidth];
  v4 = v3;
  [(NSLayoutConstraint *)self->_signContainerWidthConstraint constant];
  v6 = v4 - v5;
  navSignViewController = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController setCardWidth:v6];
}

- (void)_updateNavSignCorners
{
  laneGuidanceViewController = [(NavContainerViewController *)self laneGuidanceViewController];
  hasLaneGuidance = [laneGuidanceViewController hasLaneGuidance];

  if (hasLaneGuidance)
  {
    v5 = 0;
  }

  else
  {
    v5 = 3;
  }

  junctionViewController = [(NavContainerViewController *)self junctionViewController];
  view = [junctionViewController view];
  [view alpha];
  v9 = v8;

  if (v9 >= 0.5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v5 | 0xC;
  }

  navSignViewController = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController setCornerMask:v10];
}

- (void)_updateNavSignLayout
{
  [(NavContainerViewController *)self _updateNavSignCardWidth];

  [(NavContainerViewController *)self _updateNavSignCorners];
}

- (void)_updateChildViewLayouts
{
  if ([(PassThroughViewController *)self hasParentView])
  {
    if (self->_layoutSetup)
    {
      [(NavContainerViewController *)self _updateNavSignLayout];
      [(NavContainerViewController *)self _updateSecondarySignLayout];
      [(NavContainerViewController *)self _updateJunctionViewLayout];
      [(NavContainerViewController *)self _updateIndicatorsLayout];
      [(NavContainerViewController *)self _updateRecenterButtonLayout];
      [(NavContainerViewController *)self _updateStatusBarIndicatorLayout];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10100179C;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)willHideJunctionView
{
  self->_junctionViewActive = 0;
  resumeRouteBanner = [(NavContainerViewController *)self resumeRouteBanner];
  [resumeRouteBanner showIfNeeded];

  [(NavContainerViewController *)self _updateContaineeHiddenIfNeeded];
}

- (void)hideJunctionViewIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  junctionViewDisplayed = self->_junctionViewDisplayed;
  self->_junctionViewDisplayed = 0;
  junctionViewTimer = self->_junctionViewTimer;
  self->_junctionViewTimer = 0;

  if (junctionViewDisplayed)
  {
    view = [(NavContainerViewController *)self view];
    [view layoutIfNeeded];

    v8 = 0.0;
    if (animatedCopy)
    {
      v8 = 0.25;
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_101001980;
    v10[3] = &unk_101661B18;
    v10[4] = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_101001A48;
    v9[3] = &unk_101661738;
    v9[4] = self;
    [UIView animateWithDuration:117440512 delay:v10 options:v9 animations:v8 completion:0.0];
  }
}

- (void)showJunctionViewIfNeeded
{
  junctionViewTimer = self->_junctionViewTimer;
  self->_junctionViewTimer = 0;

  if ([(NavContainerViewController *)self canDisplayJunctionViewInfo])
  {
    resumeRouteBanner = [(NavContainerViewController *)self resumeRouteBanner];
    [resumeRouteBanner hideIfNeeded];

    LOBYTE(resumeRouteBanner) = self->_junctionViewDisplayed;
    self->_junctionViewDisplayed = 1;
    [(NavContainerViewController *)self updateJunctionViewAlpha];
    if ((resumeRouteBanner & 1) == 0)
    {
      view = [(NavContainerViewController *)self view];
      [view layoutIfNeeded];

      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_101001BC4;
      v6[3] = &unk_101661B18;
      v6[4] = self;
      [UIView animateWithDuration:117440512 delay:v6 options:0 animations:0.25 completion:0.0];
    }
  }
}

- (void)willDisplayJunctionViewInfo:(id)info
{
  if (info)
  {
    self->_junctionViewActive = 1;
    resumeRouteBanner = [(NavContainerViewController *)self resumeRouteBanner];
    [resumeRouteBanner hideIfNeeded];

    [(NavContainerViewController *)self _updateContaineeHiddenIfNeeded];
  }

  else
  {

    [(NavContainerViewController *)self willHideJunctionView];
  }
}

- (BOOL)canDisplayJunctionViewInfo
{
  if (self->_junctionViewActive)
  {
    coordinator = [(NavContainerViewController *)self coordinator];
    if (([coordinator isDisplayingTrafficIncident] & 1) != 0 || self->_trayOpen || self->_isPanned || -[NavContainerViewController signStyle](self, "signStyle") != 1)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      coordinator2 = [(NavContainerViewController *)self coordinator];
      v5 = [coordinator2 isShowingFullScreenDirectionsList] ^ 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (UIView)passThroughView
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  passThroughView = [chromeViewController passThroughView];

  return passThroughView;
}

- (void)_pressedRecenterButton
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:4001 onTarget:-[NavContainerViewController currentMapViewTargetForAnalytics](self eventValue:{"currentMapViewTargetForAnalytics"), 0}];

  navSignViewController = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController clearSelectionAnimated:1];

  coordinator = [(NavContainerViewController *)self coordinator];
  [coordinator recenterNavigation];

  [(NavContainerViewController *)self updateLayoutAnimated:1];
}

- (BOOL)_shouldShowNavRecenterButton
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  cardPresentationController = [currentViewController cardPresentationController];
  if ([cardPresentationController containeeLayout] == 1)
  {
    coordinator = [(NavContainerViewController *)self coordinator];
    v6 = ([coordinator shouldShowNavRecenterButton] & 1) != 0 || self->_isPanned;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_toggleTraceControls
{
  debugViewsController = [(NavContainerViewController *)self debugViewsController];
  if (debugViewsController)
  {
    v4 = debugViewsController;
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 BOOLForKey:@"PlaybackControls"];

    if (v6)
    {
      debugViewsController2 = [(NavContainerViewController *)self debugViewsController];
      isShowingTraceControls = [debugViewsController2 isShowingTraceControls];

      debugViewsController3 = [(NavContainerViewController *)self debugViewsController];
      v10 = debugViewsController3;
      if (isShowingTraceControls)
      {
        [debugViewsController3 hideTraceControlsAnimated:1];
      }

      else
      {
        [debugViewsController3 showTraceControls];
      }
    }
  }
}

- (void)setDebugViewControllerEnabled:(BOOL)enabled
{
  if (self->_debugViewControllerEnabled == enabled)
  {
    return;
  }

  enabledCopy = enabled;
  self->_debugViewControllerEnabled = enabled;
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  if (!enabledCopy)
  {
    debugViewsController = [(NavContainerViewController *)self debugViewsController];
    overlayView = [(OverlayContainerViewController *)self overlayView];
    [debugViewsController removeDebugViewsFromView:overlayView];
    goto LABEL_6;
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"PlaybackControls"];

  if (v8)
  {
    debugViewsController = [(NavContainerViewController *)self debugViewsController];
    overlayView = [(OverlayContainerViewController *)self overlayView];
    innerLayoutGuide = [(OverlayContainerViewController *)self innerLayoutGuide];
    chromeViewController2 = [(ContainerViewController *)self chromeViewController];
    [debugViewsController addDebugViewsToView:overlayView layoutGuide:innerLayoutGuide mapView:mapView modalPresentingViewController:chromeViewController2];

LABEL_6:
  }
}

- (NavigationDebugViewsController)debugViewsController
{
  debugViewsController = self->_debugViewsController;
  if (!debugViewsController)
  {
    v4 = [[NavigationDebugViewsController alloc] initWithDelegate:0];
    [(NavigationDebugViewsController *)v4 setShowTraceControlsForStaleLocations:0];
    v5 = self->_debugViewsController;
    self->_debugViewsController = v4;

    debugViewsController = self->_debugViewsController;
  }

  return debugViewsController;
}

- (void)didTapMapView:(id)view atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  [(NavContainerViewController *)self toggleTemporaryStatusBar];
  if ([(NavContainerViewController *)self debugViewControllerEnabled])
  {
    [(NavContainerViewController *)self _toggleTraceControls];
  }

  currentViewController = [(ContainerViewController *)self currentViewController];
  if ([currentViewController conformsToProtocol:&OBJC_PROTOCOL___MapViewResponderHandling])
  {
    [currentViewController didTapMapView:viewCopy atPoint:{x, y}];
  }

  indicatorsViewController = [(NavContainerViewController *)self indicatorsViewController];
  [indicatorsViewController didTapMapView:viewCopy atPoint:{x, y}];

  [(NavContainerViewController *)self hideJunctionViewTemporarily];
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = NavContainerViewController;
  changeCopy = change;
  [(ContainerViewController *)&v11 traitCollectionDidChange:changeCopy];
  traitCollection = [(NavContainerViewController *)self traitCollection];
  v6 = sub_100017FE8(changeCopy, traitCollection);

  if (v6)
  {
    traitCollection2 = [(NavContainerViewController *)self traitCollection];
    isLuminanceReduced = [traitCollection2 isLuminanceReduced];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_101002358;
    v9[3] = &unk_101661AE0;
    v10 = isLuminanceReduced;
    v9[4] = self;
    [UIView _maps_animateForAndromeda:isLuminanceReduced animations:v9];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (![(NavContainerViewController *)self isConnectedToCarPlay])
  {
    return 30;
  }

  if (qword_10195CC58 != -1)
  {
    dispatch_once(&qword_10195CC58, &stru_101623B10);
  }

  if (byte_10195CC50)
  {
    return 2;
  }

  else
  {
    return 6;
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = NavContainerViewController;
  [(ContainerViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(NavContainerViewController *)self _updateIndicatorsLayout];
  [(NavContainerViewController *)self _updateSignContainerConstraints];
}

- (void)_updateSignContainerConstraints
{
  view = [(NavContainerViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;

  if (v5 > 0.0)
  {
    v6 = +[UIApplication sharedApplication];
    userInterfaceLayoutDirection = [v6 userInterfaceLayoutDirection];

    view2 = [(NavContainerViewController *)self view];
    [view2 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    rect = v15;

    view3 = [(NavContainerViewController *)self view];
    v17 = view3;
    v18 = UIRectCornerRadiiZero[1];
    v19 = UIRectCornerRadiiZero[2];
    v20 = UIRectCornerRadiiZero[3];
    if (userInterfaceLayoutDirection == 1)
    {
      [view3 _rectTuckedAgainstBoundingPathEdge:8 withSize:1.0 cornerRadii:UIRectCornerRadiiZero[0] minimumPadding:{v18, v19, v20, 0.0}];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v61.origin.x = v22;
      v61.origin.y = v24;
      v61.size.width = v26;
      v61.size.height = v28;
      v29 = 23.0;
      if (CGRectIsNull(v61))
      {
        goto LABEL_12;
      }

      v62.origin.x = v10;
      v62.origin.y = v12;
      v62.size.width = v14;
      v62.size.height = rect;
      MaxX = CGRectGetMaxX(v62);
      v63.origin.x = v22;
      v63.origin.y = v24;
      v63.size.width = v26;
      v63.size.height = v28;
      if (MaxX == CGRectGetMaxX(v63))
      {
        goto LABEL_12;
      }

      view4 = [(NavContainerViewController *)self view];
      [view4 safeAreaInsets];
      v29 = v32;
    }

    else
    {
      [view3 _rectTuckedAgainstBoundingPathEdge:2 withSize:1.0 cornerRadii:UIRectCornerRadiiZero[0] minimumPadding:{v18, v19, v20, 0.0}];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v64.origin.x = v42;
      v64.origin.y = v44;
      v64.size.width = v46;
      v64.size.height = v48;
      v29 = 23.0;
      if (CGRectIsNull(v64))
      {
        goto LABEL_12;
      }

      v65.origin.x = v42;
      v65.origin.y = v44;
      v65.size.width = v46;
      v65.size.height = v48;
      MinX = CGRectGetMinX(v65);
      v66.origin.x = v10;
      v66.origin.y = v12;
      v66.size.width = v14;
      v66.size.height = rect;
      if (MinX == CGRectGetMinX(v66))
      {
        goto LABEL_12;
      }

      view4 = [(NavContainerViewController *)self view];
      [view4 safeAreaInsets];
      v29 = v50;
    }

LABEL_12:
    signContainerLeadingConstraint = self->_signContainerLeadingConstraint;
    v40 = v29;
    goto LABEL_13;
  }

  view5 = [(NavContainerViewController *)self view];
  traitCollection = [view5 traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];

  view6 = [(NavContainerViewController *)self view];
  traitCollection2 = [view6 traitCollection];
  horizontalSizeClass = [traitCollection2 horizontalSizeClass];

  if (verticalSizeClass == 1)
  {
    signContainerLeadingConstraint = self->_signContainerLeadingConstraint;
    v40 = 8.0;
LABEL_13:
    [(NSLayoutConstraint *)signContainerLeadingConstraint setConstant:v40];
    v51 = 0.0;
    goto LABEL_14;
  }

  if (_UISolariumEnabled())
  {
    [(NSLayoutConstraint *)self->_signContainerLeadingConstraint setConstant:6.0];
    [(NSLayoutConstraint *)self->_signContainerLeadingConstraint constant];
    v51 = v57 + v57;
  }

  else
  {
    v58 = 10.0;
    v51 = 0.0;
    if (horizontalSizeClass == 1)
    {
      v58 = 0.0;
    }

    [(NSLayoutConstraint *)self->_signContainerLeadingConstraint setConstant:v58];
  }

LABEL_14:
  [(NSLayoutConstraint *)self->_signContainerWidthConstraint setConstant:v51];
  [(NavContainerViewController *)self _updateNavSignCardWidth];
  v52 = 0.0;
  if (_UISolariumEnabled())
  {
    view7 = [(NavContainerViewController *)self view];
    [view7 safeAreaInsets];
    v55 = v54;

    if (v55 == 0.0)
    {
      v52 = sub_100019A44();
    }
  }

  signContainerTopConstraint = self->_signContainerTopConstraint;

  [(NSLayoutConstraint *)signContainerTopConstraint setConstant:v52];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = NavContainerViewController;
  coordinatorCopy = coordinator;
  [(ContainerViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_101002920;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = NavContainerViewController;
  collectionCopy = collection;
  [(ContainerViewController *)&v8 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  v7 = [(NavContainerViewController *)self coordinator:v8.receiver];
  [v7 updateCameraForTraits:collectionCopy containerStyle:{-[ContainerViewController containerStyle](self, "containerStyle")}];

  [(NavContainerViewController *)self _updateChildViewLayouts];
  [(NavContainerViewController *)self setShowingTemporaryStatusBar:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = NavContainerViewController;
  [(ContainerViewController *)&v6 viewDidDisappear:disappear];
  [(NavContainerViewController *)self setDebugViewControllerEnabled:0];
  [(NavContainerViewController *)self setIdleTimer:0];
  [(GCDTimer *)self->_pedestrianARFeatureIntroTeachableMomentTimer invalidate];
  temporaryStatusBarHidingTimer = self->_temporaryStatusBarHidingTimer;
  if (temporaryStatusBarHidingTimer)
  {
    [(NSTimer *)temporaryStatusBarHidingTimer invalidate];
    v5 = self->_temporaryStatusBarHidingTimer;
    self->_temporaryStatusBarHidingTimer = 0;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = NavContainerViewController;
  [(OverlayContainerViewController *)&v16 viewDidAppear:appear];
  coordinator = [(NavContainerViewController *)self coordinator];
  [coordinator presentWithContainerViewController:self];

  [(NavContainerViewController *)self setDebugViewControllerEnabled:1];
  [(NavContainerViewController *)self _updateIdleTimer];
  if ([(NavContainerViewController *)self isForWalkingNav])
  {
    if (self->_pedestrianARFeatureIntroTeachableMomentTimer || !+[PedestrianARFeatureIntroTeachableMomentContaineeViewController shouldShowTeachableMoment])
    {
      objc_initWeak(&location, self);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_101002D1C;
      block[3] = &unk_101661B98;
      objc_copyWeak(&v12, &location);
      dispatch_async(&_dispatch_main_q, block);
      v10 = &v12;
    }

    else
    {
      objc_initWeak(&location, self);
      GEOConfigGetDouble();
      v6 = v5;
      v7 = &_dispatch_main_q;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_101002CDC;
      v13[3] = &unk_1016616E8;
      objc_copyWeak(&v14, &location);
      v8 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v13 block:v6];
      pedestrianARFeatureIntroTeachableMomentTimer = self->_pedestrianARFeatureIntroTeachableMomentTimer;
      self->_pedestrianARFeatureIntroTeachableMomentTimer = v8;

      v10 = &v14;
    }

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }

  [(NavContainerViewController *)self _updateContaineeHiddenIfNeeded];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = NavContainerViewController;
  [(ContainerViewController *)&v8 viewWillAppear:?];
  iosBasedChromeViewController = [(NavContainerViewController *)self iosBasedChromeViewController];
  [iosBasedChromeViewController setNeedsUpdateComponent:@"statusBarStyle" animated:appearCopy];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_sceneConnectionsDidChange" name:UISceneWillConnectNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_sceneConnectionsDidChange" name:UISceneDidDisconnectNotification object:0];

  [(NavContainerViewController *)self setConnectedToCarPlay:[UIApplication animated:"_maps_isAnySceneConnectedForRole:" _maps_isAnySceneConnectedForRole:?], 0];
  [(NavContainerViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)_teardownViewHierarchy
{
  [(UIView *)self->_navSignContainerView removeFromSuperview];
  indicatorsViewController = [(NavContainerViewController *)self indicatorsViewController];
  view = [indicatorsViewController view];
  [view removeFromSuperview];

  self->_layoutSetup = 0;
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = NavContainerViewController;
  [(OverlayContainerViewController *)&v13 viewDidLayoutSubviews];
  MidY = 0.0;
  if ([(NavContainerViewController *)self _isSecondarySignVisible])
  {
    secondarySignViewController = [(NavContainerViewController *)self secondarySignViewController];
    view = [secondarySignViewController view];
    [view bounds];
    if (CGRectGetMidY(v14) >= 0.0)
    {
      secondarySignViewController2 = [(NavContainerViewController *)self secondarySignViewController];
      view2 = [secondarySignViewController2 view];
      [view2 bounds];
      MidY = CGRectGetMidY(v15);
    }
  }

  if (self->_junctionViewDisplayed)
  {
    junctionViewController = [(NavContainerViewController *)self junctionViewController];
    view3 = [junctionViewController view];
    [view3 bounds];
    if (MidY <= CGRectGetMidY(v16))
    {
      junctionViewController2 = [(NavContainerViewController *)self junctionViewController];
      view4 = [junctionViewController2 view];
      [view4 bounds];
      MidY = CGRectGetMidY(v17);
    }
  }

  navSignViewController = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController setExpandingCornerMaskingThreshold:MidY];
}

- (void)viewDidMoveToParent
{
  self->_layoutSetup = 1;
  [(NavContainerViewController *)self _updateSignContainerConstraints];
  indicatorsViewController = [(NavContainerViewController *)self indicatorsViewController];
  view = [indicatorsViewController view];

  topAnchor = [view topAnchor];
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  viewportLayoutGuide = [chromeViewController viewportLayoutGuide];
  topAnchor2 = [viewportLayoutGuide topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  portraitIndicatorsTopConstraint = self->_portraitIndicatorsTopConstraint;
  self->_portraitIndicatorsTopConstraint = v9;

  leadingAnchor = [view leadingAnchor];
  view2 = [(NavContainerViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v52[0] = v41;
  v49 = view;
  trailingAnchor = [view trailingAnchor];
  view3 = [(NavContainerViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v16 = self->_portraitIndicatorsTopConstraint;
  v52[1] = v15;
  v52[2] = v16;
  bottomAnchor = [view bottomAnchor];
  view4 = [(NavContainerViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v52[3] = v20;
  v21 = [NSArray arrayWithObjects:v52 count:4];
  portraitIndicatorsConstraints = self->_portraitIndicatorsConstraints;
  self->_portraitIndicatorsConstraints = v21;

  trailingAnchor3 = [v49 trailingAnchor];
  view5 = [(NavContainerViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide3 trailingAnchor];
  v27 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  landscapeIndicatorsTrailingConstraint = self->_landscapeIndicatorsTrailingConstraint;
  self->_landscapeIndicatorsTrailingConstraint = v27;

  leadingAnchor3 = [v49 leadingAnchor];
  trailingAnchor5 = [(UIView *)self->_navSignContainerView trailingAnchor];
  v44 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor5];
  v29 = self->_landscapeIndicatorsTrailingConstraint;
  v51[0] = v44;
  v51[1] = v29;
  topAnchor3 = [v49 topAnchor];
  chromeViewController2 = [(ContainerViewController *)self chromeViewController];
  viewportLayoutGuide2 = [chromeViewController2 viewportLayoutGuide];
  topAnchor4 = [viewportLayoutGuide2 topAnchor];
  v34 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v51[2] = v34;
  bottomAnchor3 = [v49 bottomAnchor];
  view6 = [(NavContainerViewController *)self view];
  bottomAnchor4 = [view6 bottomAnchor];
  v38 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v51[3] = v38;
  v39 = [NSArray arrayWithObjects:v51 count:4];
  landscapeIndicatorsConstraints = self->_landscapeIndicatorsConstraints;
  self->_landscapeIndicatorsConstraints = v39;

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1010034E8;
  v50[3] = &unk_101661B18;
  v50[4] = self;
  [UIView performWithoutAnimation:v50];
  [(NavContainerViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(NavContainerViewController *)self _updateArrivalStateForced:1];
}

- (void)viewDidLoad
{
  v185.receiver = self;
  v185.super_class = NavContainerViewController;
  [(OverlayContainerViewController *)&v185 viewDidLoad];
  [CATransaction setFrameStallSkipRequest:1];
  laneGuidanceViewController = [(NavContainerViewController *)self laneGuidanceViewController];
  view = [laneGuidanceViewController view];

  laneGuidanceViewController2 = [(NavContainerViewController *)self laneGuidanceViewController];
  [(ContainerViewController *)self addChildViewController:laneGuidanceViewController2];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v183 = view;
  heightAnchor = [view heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:0.0];
  laneGuidanceHeightConstraint = self->_laneGuidanceHeightConstraint;
  self->_laneGuidanceHeightConstraint = v7;

  laneGuidanceViewController3 = [(NavContainerViewController *)self laneGuidanceViewController];
  [laneGuidanceViewController3 didMoveToParentViewController:self];

  navSignViewController = [(NavContainerViewController *)self navSignViewController];
  view2 = [navSignViewController view];

  navSignViewController2 = [(NavContainerViewController *)self navSignViewController];
  [(ContainerViewController *)self addChildViewController:navSignViewController2];

  v182 = view2;
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  self->_observingCollapsedHeight = 1;
  navSignViewController3 = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController3 didMoveToParentViewController:self];

  navSignViewController4 = [(NavContainerViewController *)self navSignViewController];
  v15 = NSStringFromSelector("collapsedHeight");
  [navSignViewController4 addObserver:self forKeyPath:v15 options:1 context:0];

  [(NavContainerViewController *)self _updateNavSignCardWidth];
  secondarySignViewController = [(NavContainerViewController *)self secondarySignViewController];
  view3 = [secondarySignViewController view];

  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
  secondarySignViewController2 = [(NavContainerViewController *)self secondarySignViewController];
  [(ContainerViewController *)self addChildViewController:secondarySignViewController2];

  secondarySignViewController3 = [(NavContainerViewController *)self secondarySignViewController];
  [secondarySignViewController3 didMoveToParentViewController:self];

  v181 = view3;
  [view3 setOverrideUserInterfaceStyle:1];
  secondarySignViewController4 = [(NavContainerViewController *)self secondarySignViewController];
  if (_UISolariumEnabled())
  {
    v21 = 38.0;
  }

  else
  {
    v21 = 10.0;
  }

  [secondarySignViewController4 setCornerRadius:v21];

  junctionViewController = [(NavContainerViewController *)self junctionViewController];
  view4 = [junctionViewController view];

  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view4 setAlpha:0.0];
  junctionViewController2 = [(NavContainerViewController *)self junctionViewController];
  [(ContainerViewController *)self addChildViewController:junctionViewController2];

  junctionViewController3 = [(NavContainerViewController *)self junctionViewController];
  [junctionViewController3 didMoveToParentViewController:self];

  if (_UISolariumEnabled())
  {
    v26 = 38.0;
  }

  else
  {
    v26 = 10.0;
  }

  v180 = view4;
  [view4 _setContinuousCornerRadius:v26];
  indicatorsViewController = [(NavContainerViewController *)self indicatorsViewController];
  view5 = [indicatorsViewController view];

  v179 = view5;
  [view5 setTranslatesAutoresizingMaskIntoConstraints:0];
  indicatorsViewController2 = [(NavContainerViewController *)self indicatorsViewController];
  [(ContainerViewController *)self addChildViewController:indicatorsViewController2];

  indicatorsViewController3 = [(NavContainerViewController *)self indicatorsViewController];
  [indicatorsViewController3 didMoveToParentViewController:self];

  chromeViewController = [(ContainerViewController *)self chromeViewController];
  indicatorsViewController4 = [(NavContainerViewController *)self indicatorsViewController];
  [chromeViewController registerAdditionalMapViewDelegate:indicatorsViewController4];

  statusIndicatorManager = [(NavContainerViewController *)self statusIndicatorManager];
  [statusIndicatorManager updateIndicatorType];

  v34 = objc_opt_new();
  recenterButton = self->_recenterButton;
  self->_recenterButton = v34;

  [(UIButton *)self->_recenterButton setTranslatesAutoresizingMaskIntoConstraints:0];
  if (_UISolariumEnabled())
  {
    v36 = self->_recenterButton;
    v37 = [UIImage systemImageNamed:@"location.fill"];
    [(UIButton *)v36 setImage:v37 forState:0];

    v38 = self->_recenterButton;
    v39 = +[UIColor systemBlueColor];
    v187 = v39;
    v40 = [NSArray arrayWithObjects:&v187 count:1];
    v41 = [UIImageSymbolConfiguration configurationWithPaletteColors:v40];
    v42 = [UIFont systemFontOfSize:28.0 weight:UIFontWeightRegular];
    v43 = [UIImageSymbolConfiguration configurationWithFont:v42];
    v44 = [v41 configurationByApplyingConfiguration:v43];
    [(UIButton *)v38 setPreferredSymbolConfiguration:v44 forImageInState:0];

    if (GEOConfigGetBOOL())
    {
      v45 = [UIColor colorNamed:@"NavigationMaterialColor"];
      [(UIButton *)self->_recenterButton setBackgroundColor:v45];
    }

    else
    {
      [(UIButton *)self->_recenterButton _maps_applyGlassBackgroundForButton:1 buttonBackgroundType:0];
    }
  }

  else
  {
    v46 = +[UIButtonConfiguration borderlessButtonConfiguration];
    v47 = [UIImageSymbolConfiguration configurationWithPointSize:5 weight:22.0];
    [v46 setPreferredSymbolConfigurationForImage:v47];

    v48 = [UIColor colorNamed:@"NavigationMaterialColor"];
    background = [v46 background];
    [background setBackgroundColor:v48];

    background2 = [v46 background];
    [background2 setCornerRadius:30.0];

    [v46 setCornerStyle:-1];
    layer = [(UIButton *)self->_recenterButton layer];
    LODWORD(v52) = 1045220557;
    [layer setShadowOpacity:v52];

    height = CGSizeZero.height;
    layer2 = [(UIButton *)self->_recenterButton layer];
    [layer2 setShadowOffset:{CGSizeZero.width, height}];

    layer3 = [(UIButton *)self->_recenterButton layer];
    [layer3 setShadowRadius:1.0];

    layer4 = [(UIButton *)self->_recenterButton layer];
    [layer4 setShadowPathIsBounds:1];

    if (_UISolariumEnabled())
    {
      +[UIColor blackColor];
    }

    else
    {
      +[UIColor systemBlueColor];
    }
    v57 = ;
    [(UIButton *)self->_recenterButton setTintColor:v57];

    v58 = [UIImage systemImageNamed:@"location.fill"];
    [v46 setImage:v58];

    background3 = [v46 background];
    [background3 setCornerRadius:30.0];

    [(UIButton *)self->_recenterButton setConfiguration:v46];
  }

  v60 = +[NSBundle mainBundle];
  v61 = [v60 localizedStringForKey:@"[Navigation] Recenter" value:@"localized string not found" table:0];
  [(UIButton *)self->_recenterButton setAccessibilityLabel:v61];

  [(UIButton *)self->_recenterButton addTarget:self action:"_pressedRecenterButton" forControlEvents:64];
  layer5 = [(UIButton *)self->_recenterButton layer];
  [layer5 setCornerRadius:30.0];

  v63 = _UISolariumEnabled();
  v64 = -8.0;
  if (v63)
  {
    v64 = -5.0;
  }

  [(UIButton *)self->_recenterButton _setTouchInsets:v64, -16.0, v64, -16.0];
  [(UIButton *)self->_recenterButton setAccessibilityIdentifier:@"RecenterButton"];
  v65 = +[UIColor systemBlueColor];
  [(UIButton *)self->_recenterButton setTintColor:v65];

  view6 = [(NavContainerViewController *)self view];
  [view6 insertSubview:self->_recenterButton atIndex:0];

  v67 = [[NavContainerResumeRouteControl alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  resumeRouteBanner = self->_resumeRouteBanner;
  self->_resumeRouteBanner = v67;

  resumeRouteBanner = [(NavContainerViewController *)self resumeRouteBanner];
  [resumeRouteBanner setTranslatesAutoresizingMaskIntoConstraints:0];

  resumeRouteBanner2 = [(NavContainerViewController *)self resumeRouteBanner];
  [resumeRouteBanner2 addTarget:self action:"_performBannerAction" forControlEvents:64];

  resumeRouteBanner3 = [(NavContainerViewController *)self resumeRouteBanner];
  [resumeRouteBanner3 addTarget:self action:"_closeBannerAction" forControlEvents:0x1000000];

  v72 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v72 isInternalInstall];

  if (isInternalInstall)
  {
    v74 = +[NSNotificationCenter defaultCenter];
    [v74 addObserver:self selector:"_navigationChromeVisibilityChanged" name:@"__internal__hideChromeInNavigation" object:0];
  }

  v75 = +[NSNotificationCenter defaultCenter];
  [v75 addObserver:self selector:"_containeeLayoutWillChange:" name:@"ContainerWillChangeLayoutNotification" object:0];

  v76 = +[NSNotificationCenter defaultCenter];
  [v76 addObserver:self selector:"_containeeLayoutDidChange:" name:@"ContainerDidChangeLayoutNotification" object:0];

  v77 = +[NSNotificationCenter defaultCenter];
  [v77 addObserver:self selector:"_containeeWillPresent:" name:@"ContainerWillPresentContaineeNotification" object:0];

  v78 = +[NSNotificationCenter defaultCenter];
  [v78 addObserver:self selector:"_containeeDidPresent:" name:@"ContainerDidPresentContaineeNotification" object:0];

  v79 = objc_opt_new();
  navSignContainerView = self->_navSignContainerView;
  self->_navSignContainerView = v79;

  [(UIView *)self->_navSignContainerView setAccessibilityIdentifier:@"NavSignContainerView"];
  [(UIView *)self->_navSignContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_navSignContainerView setClipsToBounds:1];
  [(UIView *)self->_navSignContainerView setOverrideUserInterfaceStyle:2];
  [(UIView *)self->_navSignContainerView _maps_applyGlassGroup];
  if (_UISolariumEnabled())
  {
    v81 = 38.0;
  }

  else
  {
    v81 = 10.0;
  }

  layer6 = [(UIView *)self->_navSignContainerView layer];
  *v184 = v81;
  *&v184[1] = v81;
  *&v184[2] = v81;
  *&v184[3] = v81;
  *&v184[4] = v81;
  *&v184[5] = v81;
  *&v184[6] = v81;
  *&v184[7] = v81;
  [layer6 setCornerRadii:v184];

  layer7 = [(UIView *)self->_navSignContainerView layer];
  [layer7 setCornerCurve:kCACornerCurveContinuous];

  layer8 = [(UIView *)self->_navSignContainerView layer];
  [layer8 setMasksToBounds:1];

  [(UIView *)self->_navSignContainerView addSubview:v182];
  v85 = self->_navSignContainerView;
  secondarySignViewController5 = [(NavContainerViewController *)self secondarySignViewController];
  view7 = [secondarySignViewController5 view];
  [(UIView *)v85 addSubview:view7];

  v88 = self->_navSignContainerView;
  junctionViewController4 = [(NavContainerViewController *)self junctionViewController];
  view8 = [junctionViewController4 view];
  [(UIView *)v88 addSubview:view8];

  [(UIView *)self->_navSignContainerView addSubview:v183];
  view9 = [(NavContainerViewController *)self view];
  indicatorsViewController5 = [(NavContainerViewController *)self indicatorsViewController];
  view10 = [indicatorsViewController5 view];
  [view9 insertSubview:view10 aboveSubview:self->_recenterButton];

  view11 = [(NavContainerViewController *)self view];
  v95 = self->_navSignContainerView;
  indicatorsViewController6 = [(NavContainerViewController *)self indicatorsViewController];
  view12 = [indicatorsViewController6 view];
  [view11 insertSubview:v95 aboveSubview:view12];

  topAnchor = [v182 topAnchor];
  topAnchor2 = [(UIView *)self->_navSignContainerView topAnchor];
  v100 = [topAnchor constraintEqualToAnchor:topAnchor2];
  signTopConstraint = self->_signTopConstraint;
  self->_signTopConstraint = v100;

  topAnchor3 = [v181 topAnchor];
  topAnchor4 = [(UIView *)self->_navSignContainerView topAnchor];
  v104 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  secondarySignTopConstraint = self->_secondarySignTopConstraint;
  self->_secondarySignTopConstraint = v104;

  bottomAnchor = [v181 bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_navSignContainerView bottomAnchor];
  v108 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  secondarySignBottomConstraint = self->_secondarySignBottomConstraint;
  self->_secondarySignBottomConstraint = v108;

  topAnchor5 = [v180 topAnchor];
  topAnchor6 = [(UIView *)self->_navSignContainerView topAnchor];
  v112 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  junctionViewTopConstraint = self->_junctionViewTopConstraint;
  self->_junctionViewTopConstraint = v112;

  leadingAnchor = [v183 leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_navSignContainerView leadingAnchor];
  v177 = leadingAnchor;
  v175 = [leadingAnchor constraintEqualToAnchor:?];
  v186[0] = v175;
  trailingAnchor = [v183 trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_navSignContainerView trailingAnchor];
  v174 = trailingAnchor;
  v172 = [trailingAnchor constraintEqualToAnchor:?];
  v186[1] = v172;
  topAnchor7 = [v183 topAnchor];
  topAnchor8 = [(UIView *)self->_navSignContainerView topAnchor];
  v171 = topAnchor7;
  v117 = [topAnchor7 constraintEqualToAnchor:?];
  v118 = self->_laneGuidanceHeightConstraint;
  v178 = v117;
  v186[2] = v117;
  v186[3] = v118;
  leadingAnchor3 = [v182 leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_navSignContainerView leadingAnchor];
  v169 = leadingAnchor3;
  v167 = [leadingAnchor3 constraintEqualToAnchor:?];
  v186[4] = v167;
  widthAnchor = [v182 widthAnchor];
  widthAnchor2 = [(UIView *)self->_navSignContainerView widthAnchor];
  v166 = widthAnchor;
  v121 = [widthAnchor constraintEqualToAnchor:?];
  v122 = self->_signTopConstraint;
  v164 = v121;
  v186[5] = v121;
  v186[6] = v122;
  bottomAnchor3 = [v182 bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_navSignContainerView bottomAnchor];
  LODWORD(v125) = 1148829696;
  v126 = 0.0;
  v162 = bottomAnchor4;
  v163 = bottomAnchor3;
  v161 = [bottomAnchor3 constraintEqualToAnchor:0.0 constant:v125 priority:?];
  v186[7] = v161;
  leadingAnchor5 = [v181 leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_navSignContainerView leadingAnchor];
  v160 = leadingAnchor5;
  v158 = [leadingAnchor5 constraintEqualToAnchor:?];
  v186[8] = v158;
  trailingAnchor3 = [v181 trailingAnchor];
  [(UIView *)self->_navSignContainerView trailingAnchor];
  v155 = v157 = trailingAnchor3;
  v129 = [trailingAnchor3 constraintEqualToAnchor:?];
  v130 = self->_secondarySignTopConstraint;
  v156 = v129;
  v186[9] = v129;
  v186[10] = v130;
  v186[11] = self->_secondarySignBottomConstraint;
  leadingAnchor7 = [v180 leadingAnchor];
  leadingAnchor8 = [(UIView *)self->_navSignContainerView leadingAnchor];
  v153 = leadingAnchor7;
  v151 = [leadingAnchor7 constraintEqualToAnchor:?];
  v186[12] = v151;
  trailingAnchor4 = [v180 trailingAnchor];
  trailingAnchor5 = [(UIView *)self->_navSignContainerView trailingAnchor];
  v150 = trailingAnchor4;
  v133 = [trailingAnchor4 constraintEqualToAnchor:?];
  v134 = self->_junctionViewTopConstraint;
  v154 = v133;
  v186[13] = v133;
  v186[14] = v134;
  leadingAnchor9 = [(UIButton *)self->_recenterButton leadingAnchor];
  innerLayoutGuide = [(OverlayContainerViewController *)self innerLayoutGuide];
  [innerLayoutGuide leadingAnchor];
  v146 = v148 = leadingAnchor9;
  v145 = [leadingAnchor9 constraintEqualToAnchor:?];
  v186[15] = v145;
  bottomAnchor5 = [(UIButton *)self->_recenterButton bottomAnchor];
  innerLayoutGuide2 = [(OverlayContainerViewController *)self innerLayoutGuide];
  bottomAnchor6 = [innerLayoutGuide2 bottomAnchor];
  if (_UISolariumEnabled())
  {
    if (_UISolariumEnabled())
    {
      v126 = -10.0;
    }

    else
    {
      v126 = -16.0;
    }
  }

  v139 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:v126];
  v186[16] = v139;
  widthAnchor3 = [(UIButton *)self->_recenterButton widthAnchor];
  v141 = [widthAnchor3 constraintEqualToConstant:60.0];
  v186[17] = v141;
  heightAnchor2 = [(UIButton *)self->_recenterButton heightAnchor];
  v143 = [heightAnchor2 constraintEqualToConstant:60.0];
  v186[18] = v143;
  v144 = [NSArray arrayWithObjects:v186 count:19];
  [NSLayoutConstraint activateConstraints:v144];

  self->_hideBottomPocketForSidebarNavigation = GEOConfigGetBOOL();
}

- (double)junctionViewAlpha
{
  result = 0.0;
  if (self->_junctionViewDisplayed)
  {
    [(NavContainerViewController *)self signListHeight];
    v4 = 0.0;
    if (v5 > self->_navSignViewControllerCollapsedHeight)
    {
      [(NavContainerViewController *)self signListHeight];
      v4 = (v6 - self->_navSignViewControllerCollapsedHeight) * 0.025;
    }

    return 1.0 - fmin(v4, 1.0);
  }

  return result;
}

- (void)updateJunctionViewAlpha
{
  [(NavContainerViewController *)self junctionViewAlpha];
  v4 = v3;
  junctionViewController = [(NavContainerViewController *)self junctionViewController];
  view = [junctionViewController view];
  [view setAlpha:v4];
}

- (void)updateLaneGuidanceBackgroundColor
{
  traitCollection = [(NavContainerViewController *)self traitCollection];
  isLuminanceReduced = [traitCollection isLuminanceReduced];

  if ((isLuminanceReduced & 1) == 0)
  {
    navSignViewController = [(NavContainerViewController *)self navSignViewController];
    [navSignViewController layoutProgress];
    v6 = v5;
    laneGuidanceViewController = [(NavContainerViewController *)self laneGuidanceViewController];
    [laneGuidanceViewController setLayoutProgress:v6];
  }
}

- (double)secondarySignAlpha
{
  _isSecondarySignVisible = [(NavContainerViewController *)self _isSecondarySignVisible];
  result = 0.0;
  if (_isSecondarySignVisible)
  {
    [(NavContainerViewController *)self signListHeight];
    v5 = 0.0;
    if (v6 > self->_navSignViewControllerCollapsedHeight)
    {
      [(NavContainerViewController *)self signListHeight];
      v5 = (v7 - self->_navSignViewControllerCollapsedHeight) * 0.015625;
    }

    return 1.0 - fmin(v5, 1.0);
  }

  return result;
}

- (void)updateSecondaryAlpha
{
  [(NavContainerViewController *)self secondarySignAlpha];
  v4 = v3;
  secondarySignViewController = [(NavContainerViewController *)self secondarySignViewController];
  view = [secondarySignViewController view];
  [view setAlpha:v4];
}

- (id)statusBarBackgroundViewStyle
{
  if (self->_vlfActive || _UISolariumEnabled())
  {
    goto LABEL_10;
  }

  v3 = +[UIDevice currentDevice];
  if ([v3 userInterfaceIdiom] == 1)
  {
    goto LABEL_9;
  }

  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == 5 || (v5 = -[ContainerViewController containerStyle](self, "containerStyle"), v5 > 7) || ((1 << v5) & 0xE3) == 0 || -[ContainerViewController containerStyle](self, "containerStyle") == 7)
  {

LABEL_9:
LABEL_10:
    v6 = [StatusBarBackgroundViewStyle defaultBlurredStyleWithDefaultColorProvider:&stru_1016309F0];
    goto LABEL_11;
  }

  if (self->_isArrivalState)
  {
    connectedToCarPlay = self->_connectedToCarPlay;

    if (!connectedToCarPlay)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v6 = [[StatusBarBackgroundViewStyle alloc] initWithBlurStyle:19 groupName:@"NavSignBlur" defaultColorProvider:&stru_1016616C0 disableBlur:1];
LABEL_11:

  return v6;
}

- (int64_t)preferredStatusBarStyle
{
  if (self->_vlfActive)
  {
    return 0;
  }

  v4 = +[UIDevice currentDevice];
  if ([v4 userInterfaceIdiom] == 1)
  {
    goto LABEL_9;
  }

  v5 = +[UIDevice currentDevice];
  if ([v5 userInterfaceIdiom] == 5 || (v6 = -[ContainerViewController containerStyle](self, "containerStyle"), v6 > 7) || ((1 << v6) & 0xE3) == 0 || -[ContainerViewController containerStyle](self, "containerStyle") == 7 || self->_isArrivalState && !self->_connectedToCarPlay)
  {

LABEL_9:
LABEL_10:
    theme = [(NavContainerViewController *)self theme];
    statusBarStyle = [theme statusBarStyle];

    return statusBarStyle;
  }

  v9 = _UISolariumEnabled();

  if (v9)
  {
    goto LABEL_10;
  }

  return 1;
}

- (void)statusBarHeightChanged
{
  navSignViewController = [(NavContainerViewController *)self navSignViewController];
  [navSignViewController updateFooterConstraints];

  view = [(NavContainerViewController *)self view];
  [view layoutIfNeeded];
}

- (void)hideStatusBarIfNeeded
{
  if ([(NavContainerViewController *)self showingTemporaryStatusBar])
  {

    [(NavContainerViewController *)self _hideTemporaryStatusBar];
  }
}

- (void)toggleTemporaryStatusBar
{
  if ([(NavContainerViewController *)self showingTemporaryStatusBar])
  {

    [(NavContainerViewController *)self _hideTemporaryStatusBar];
  }

  else
  {

    [(NavContainerViewController *)self _showTemporaryStatusBar];
  }
}

- (void)_hideTemporaryStatusBar
{
  if (![(NavContainerViewController *)self hasBigStatusBar])
  {
    [(NavContainerViewController *)self setShowingTemporaryStatusBar:0];
    [(NSTimer *)self->_temporaryStatusBarHidingTimer invalidate];
    temporaryStatusBarHidingTimer = self->_temporaryStatusBarHidingTimer;
    self->_temporaryStatusBarHidingTimer = 0;

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_101004E70;
    v4[3] = &unk_101661B18;
    v4[4] = self;
    [UIView animateWithDuration:117440512 delay:v4 options:0 animations:0.25 completion:0.0];
  }
}

- (void)_showTemporaryStatusBar
{
  if (![(NavContainerViewController *)self hasBigStatusBar])
  {
    [(NavContainerViewController *)self setShowingTemporaryStatusBar:1];
    v3 = [NSTimer scheduledTimerWithTimeInterval:self target:"_hideTemporaryStatusBar" selector:0 userInfo:0 repeats:5.0];
    temporaryStatusBarHidingTimer = self->_temporaryStatusBarHidingTimer;
    self->_temporaryStatusBarHidingTimer = v3;

    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_101004FE0;
    v5[3] = &unk_101661B18;
    v5[4] = self;
    [UIView animateWithDuration:117440512 delay:v5 options:0 animations:0.25 completion:0.0];
  }
}

- (BOOL)hasBigStatusBar
{
  view = [(NavContainerViewController *)self view];
  [view safeAreaInsets];
  v4 = v3 > 40.0;

  return v4;
}

- (id)mapView
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  return mapView;
}

- (NavIndicatorsViewController)indicatorsViewController
{
  indicatorsViewController = self->_indicatorsViewController;
  if (!indicatorsViewController)
  {
    v4 = [NavIndicatorsViewController alloc];
    platformController = [(NavContainerViewController *)self platformController];
    pedestrianARSessionStateManager = [platformController pedestrianARSessionStateManager];
    v7 = [(NavIndicatorsViewController *)v4 initWithDelegate:self pedestrianARSessionStateManager:pedestrianARSessionStateManager];
    v8 = self->_indicatorsViewController;
    self->_indicatorsViewController = v7;

    indicatorsViewController = self->_indicatorsViewController;
  }

  return indicatorsViewController;
}

- (NavSecondarySignViewController)secondarySignViewController
{
  secondarySignViewController = self->_secondarySignViewController;
  if (!secondarySignViewController)
  {
    v4 = objc_opt_new();
    v5 = self->_secondarySignViewController;
    self->_secondarySignViewController = v4;

    view = [(NavSecondarySignViewController *)self->_secondarySignViewController view];
    layer = [view layer];
    [layer setContinuousCorners:1];

    secondarySignViewController = self->_secondarySignViewController;
  }

  return secondarySignViewController;
}

- (NavJunctionViewController)junctionViewController
{
  junctionViewController = self->_junctionViewController;
  if (!junctionViewController)
  {
    v4 = objc_opt_new();
    v5 = self->_junctionViewController;
    self->_junctionViewController = v4;

    [(NavJunctionViewController *)self->_junctionViewController setDelegate:self];
    junctionViewController = self->_junctionViewController;
  }

  return junctionViewController;
}

- (void)insertDimmingOverlayForStaleMapEffectWithBlock:(id)block
{
  if (self->_isArrivalState)
  {
    blockCopy = block;
    view = [(NavContainerViewController *)self view];
    blockCopy2 = (*(block + 2))(blockCopy, view);

    view2 = [(NavContainerViewController *)self view];
    view3 = [(NavIndicatorsViewController *)self->_indicatorsViewController view];
    [view2 insertSubview:blockCopy2 belowSubview:view3];
  }

  else
  {
    indicatorsViewController = self->_indicatorsViewController;
    blockCopy2 = block;
    [(NavIndicatorsViewController *)indicatorsViewController insertDimmingOverlayForStaleMapEffectWithBlock:?];
  }
}

- (void)setChromeViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->super.super._chromeViewController);
  [WeakRetained unregisterAdditionalMapViewDelegate:self->_indicatorsViewController];

  v7.receiver = self;
  v7.super_class = NavContainerViewController;
  [(ContainerViewController *)&v7 setChromeViewController:controllerCopy];
  indicatorsViewController = [(NavContainerViewController *)self indicatorsViewController];
  [controllerCopy registerAdditionalMapViewDelegate:indicatorsViewController];
}

- (void)dealloc
{
  v3 = +[MapsLightLevelController sharedController];
  [v3 removeObserver:self];

  if (self->_observingCollapsedHeight)
  {
    navSignViewController = [(NavContainerViewController *)self navSignViewController];
    v5 = NSStringFromSelector("collapsedHeight");
    [navSignViewController removeObserver:self forKeyPath:v5];
  }

  v6.receiver = self;
  v6.super_class = NavContainerViewController;
  [(NavContainerViewController *)&v6 dealloc];
}

- (NavContainerViewController)initWithCoordinator:(id)coordinator guidanceObserver:(id)observer platformController:(id)controller
{
  coordinatorCopy = coordinator;
  observerCopy = observer;
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = NavContainerViewController;
  v11 = [(ContainerViewController *)&v23 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_guidanceObserver, observer);
    v12->_signStyle = 1;
    objc_storeStrong(&v12->_platformController, controller);
    [(NavContainerViewController *)v12 setCoordinator:coordinatorCopy];
    v13 = [[StatusIndicatorManager alloc] initWithDelegate:v12];
    [(NavContainerViewController *)v12 setStatusIndicatorManager:v13];

    v14 = +[MapsLightLevelController sharedController];
    [v14 addObserver:v12];

    v15 = +[MNNavigationService sharedService];
    [v15 registerObserver:v12];

    if (GEOConfigGetBOOL())
    {
      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:v12 selector:"_updateBacklightSceneEnvironmentUI" name:@"NavContainerShouldUpdateBacklightSceneEnvironmentNotification" object:0];
    }

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v12 selector:"vlfSessionTaskWillShowVLFUINotification:" name:@"VLFSessionTaskWillShowVLFUINotification" object:0];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v12 selector:"vlfContaineeViewControllerDidDisappearNotification:" name:@"VLFContaineeViewControllerDidDisappearNotification" object:0];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v12 selector:"statusBarHeightChanged" name:@"IOSBasedChromeStatusBarHeightDidUpdateNotification" object:0];

    pedestrianARSessionStateManager = [(PlatformController *)v12->_platformController pedestrianARSessionStateManager];
    pedestrianARSessionStateManager = v12->_pedestrianARSessionStateManager;
    v12->_pedestrianARSessionStateManager = pedestrianARSessionStateManager;
  }

  return v12;
}

@end