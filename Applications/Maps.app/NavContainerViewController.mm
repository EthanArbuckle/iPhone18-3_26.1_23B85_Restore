@interface NavContainerViewController
- (BOOL)_bannerActionShouldDisplay;
- (BOOL)_isPresentingOverlappingContainee;
- (BOOL)_isSecondarySignVisible;
- (BOOL)_shouldShowNavRecenterButton;
- (BOOL)_shouldShowPedestrianARTeachableMomentCard;
- (BOOL)canDisplayJunctionViewInfo;
- (BOOL)hasBigStatusBar;
- (BOOL)isForWalkingNav;
- (BOOL)shouldHideBottomPocketForSidebarContainerStyle:(BOOL)a3;
- (BOOL)shouldHideTray;
- (NavContainerViewController)initWithCoordinator:(id)a3 guidanceObserver:(id)a4 platformController:(id)a5;
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
- (double)maxAvailableHeightForJunctionView:(double)a3;
- (double)maximumSignListHeight;
- (double)nextIdleTimeout:(id)a3;
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
- (unint64_t)layoutForCurrentViewControllerWithStyle:(unint64_t)a3;
- (unint64_t)originalLayoutForViewController:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applyConnectedToCarPlayAnimated:(BOOL)a3;
- (void)_closeBannerAction;
- (void)_containeeDidPresent:(id)a3;
- (void)_containeeLayoutDidChange:(id)a3;
- (void)_containeeLayoutWillChange:(id)a3;
- (void)_containeeWillPresent:(id)a3;
- (void)_drawSecondarySign;
- (void)_hideTemporaryStatusBar;
- (void)_navigationChromeVisibilityChanged;
- (void)_performBannerAction;
- (void)_pinSignAndIndicators;
- (void)_pressedRecenterButton;
- (void)_sceneConnectionsDidChange;
- (void)_setSecondarySignActive:(BOOL)a3;
- (void)_setShowingMidstepLaneGuidance:(BOOL)a3;
- (void)_showPedestrianARFeatureIntroTeachableMomentCardIfNecessary;
- (void)_showPedestrianARRaiseToEnterTeachableMomentCardIfNecessary;
- (void)_showTemporaryStatusBar;
- (void)_teardownViewHierarchy;
- (void)_toggleTraceControls;
- (void)_updateArrivalStateForced:(BOOL)a3;
- (void)_updateBacklightSceneEnvironmentUI;
- (void)_updateChildViewLayouts;
- (void)_updateContaineeHiddenIfNeeded;
- (void)_updateControlsHiddenAnimated:(BOOL)a3;
- (void)_updateIdleTimer;
- (void)_updateIndicatorsLayout;
- (void)_updateJunctionViewLayout;
- (void)_updateNavSignCardWidth;
- (void)_updateNavSignCorners;
- (void)_updateNavSignForArrival:(BOOL)a3 forced:(BOOL)a4;
- (void)_updateNavSignLayout;
- (void)_updateRecenterButtonLayout;
- (void)_updateSecondarySignLayout;
- (void)_updateSignContainerConstraints;
- (void)_updateStatusBarIndicatorLayout;
- (void)applyTransitionWithProgress:(double)a3;
- (void)containerStyleManagerDidChangeStyle:(unint64_t)a3;
- (void)dealloc;
- (void)didTapLaneGuidance;
- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4;
- (void)enterPedestrianAR;
- (void)hideJunctionViewIfNeededAnimated:(BOOL)a3;
- (void)hideJunctionViewTemporarily;
- (void)hideStatusBarIfNeeded;
- (void)idleTimerDidTimeout:(id)a3;
- (void)insertDimmingOverlayForStaleMapEffectWithBlock:(id)a3;
- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)a3;
- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)a3;
- (void)mapViewNavigationCameraHasStartedPanning:(id)a3;
- (void)mapViewNavigationCameraHasStoppedPanning:(id)a3;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4;
- (void)navigationService:(id)a3 showJunctionView:(id)a4;
- (void)navigationService:(id)a3 showLaneDirections:(id)a4;
- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentController:(id)a3 animated:(BOOL)a4 useDefaultContaineeLayout:(BOOL)a5;
- (void)pressedEndNavigationWithSender:(id)a3;
- (void)reportAnIncident;
- (void)sceneWillEnterForeground:(id)a3;
- (void)selectStep:(id)a3;
- (void)setBannerAction:(id)a3 animated:(BOOL)a4;
- (void)setChromeViewController:(id)a3;
- (void)setConnectedToCarPlay:(BOOL)a3 animated:(BOOL)a4;
- (void)setDebugViewControllerEnabled:(BOOL)a3;
- (void)setResumeRouteBannerHidden:(BOOL)a3;
- (void)setRoute:(id)a3;
- (void)setSignListHeight:(double)a3;
- (void)setSignStyle:(unint64_t)a3;
- (void)showJunctionViewIfNeeded;
- (void)showVolumeControlView;
- (void)signListHeightWillChangeAnimated:(BOOL)a3;
- (void)statusBarHeightChanged;
- (void)statusIndicatorTypeChanged:(unint64_t)a3;
- (void)switchToOverviewMode;
- (void)switchToZoomedInMode;
- (void)toggleHeadingMode;
- (void)toggleTemporaryStatusBar;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateJunctionViewAlpha;
- (void)updateLaneGuidanceBackgroundColor;
- (void)updateLayoutAnimated:(BOOL)a3;
- (void)updateSecondaryAlpha;
- (void)updateSignContainerConstraints;
- (void)updateStatusBarColor;
- (void)updatedLaneGuidanceHeight:(double)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToParent;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)vlfContaineeViewControllerDidDisappearNotification:(id)a3;
- (void)vlfSessionTaskWillShowVLFUINotification:(id)a3;
- (void)willBeginDisplayingInSecureLockScreen;
- (void)willDismissNavigationAnimated:(BOOL)a3;
- (void)willDisplayJunctionViewInfo:(id)a3;
- (void)willHideJunctionView;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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

  v10 = [(NavContainerViewController *)self view];
  v7 = [v10 window];
  v8 = [v7 windowScene];
  v9 = [v8 _backlightSceneEnvironment];
  [v9 invalidateAllTimelinesForReason:@"Navigation service received sign info update"];
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
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 preferredUserInterfaceStyle];

  return v3;
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
  v3 = [(ContainerViewController *)self containerStyle];
  if (v3 > 7 || ((1 << v3) & 0xE3) == 0)
  {
    v6 = [(ContainerViewController *)self chromeViewController];
    v7 = [v6 viewport];
    [v7 frame];
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
  v3 = [(ContainerViewController *)self chromeViewController];
  v4 = [v3 viewport];
  [v4 frame];
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
    v10 = [(NavContainerViewController *)self junctionViewController];
    v11 = [v10 view];
    [v11 frame];
    Height = CGRectGetHeight(v14);
  }

  return v7 + MinY + navSignViewControllerCollapsedHeight + Height;
}

- (double)bottomEdgeInset
{
  v3 = [(ContainerViewController *)self containerStyle];
  if (v3 - 2 < 2)
  {
    v8 = [(NavContainerViewController *)self view];
    [v8 safeAreaInsets];
    v10 = v9;
LABEL_13:

    return v10;
  }

  if (v3 == 1 || v3 == 5)
  {
    v4 = [(ContainerViewController *)self currentViewController];
    v5 = [(NavContainerViewController *)self trafficIncidentAlertCoordinator];
    v6 = [v5 trafficIncidentViewController];
    if (v4 == v6)
    {
      v11 = [(ContainerViewController *)self currentViewController];
      v12 = [v11 cardPresentationController];
      v7 = [v12 containeeLayout] == 5;
    }

    else
    {
      v7 = 0;
    }

    v13 = [(ContainerViewController *)self currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v15 = [(ContainerViewController *)self currentViewController];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v7 || (isKindOfClass & 1) != 0 || (v16 & 1) != 0)
    {
      v8 = [(ContainerViewController *)self currentViewController];
      v18 = [v8 cardPresentationController];
      [v18 cardHeight];
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
  v2 = [(NavContainerViewController *)self coordinator];
  v3 = [v2 trafficIncidentAlertCoordinator];

  return v3;
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
  v2 = [(ContainerViewController *)self currentViewController];
  v3 = v2;
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

  if (!v2)
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

    v50 = self;
    v51 = objc_opt_class();
    v52 = NSStringFromClass(v51);
    if (objc_opt_respondsToSelector())
    {
      v53 = [(NavContainerViewController *)v50 performSelector:"accessibilityIdentifier"];
      v54 = v53;
      if (v53 && ![v53 isEqualToString:v52])
      {
        v55 = [NSString stringWithFormat:@"%@<%p, %@>", v52, v50, v54];

        goto LABEL_37;
      }
    }

    v55 = [NSString stringWithFormat:@"%@<%p>", v52, v50];
LABEL_37:

    *buf = 138543362;
    v67 = v55;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will unhide tray because we've arrived and aren't connected to CarPlay", buf, 0xCu);

    goto LABEL_38;
  }

  v3 = [(NavContainerViewController *)self view];
  [v3 frame];
  Height = CGRectGetHeight(v86);
  v5 = [(ContainerViewController *)self currentViewController];
  v6 = [v5 cardPresentationController];
  [v6 cardHeight];
  v8 = v7;

  [(ContainerViewController *)self statusBarHeight];
  v10 = v9;
  v11 = [(NavContainerViewController *)self navSignViewController];
  [v11 footerBottomPosition];
  v13 = v12 + v10;

  v14 = [(NavContainerViewController *)self laneGuidanceViewController];
  LODWORD(v5) = [v14 hasLaneGuidance];

  if (v5)
  {
    v15 = [(NavContainerViewController *)self laneGuidanceViewController];
    v16 = [v15 view];
    [v16 bounds];
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
  v26 = [(ContainerViewController *)self containerStyle];
  if (v26 > 7 || ((1 << v26) & 0xE3) == 0)
  {
    v25 = self->_junctionViewDisplayed || signListHeight > navSignViewControllerCollapsedHeight;
  }

  v27 = v25 && v22 > v21;
  v28 = [(ContainerViewController *)self containeesHidden];
  v29 = sub_100035E6C();
  v30 = v29;
  if (v27 == v28)
  {
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_44;
    }

    v41 = self;
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    if (objc_opt_respondsToSelector())
    {
      v44 = [(NavContainerViewController *)v41 performSelector:"accessibilityIdentifier"];
      v45 = v44;
      if (v44 && ![v44 isEqualToString:v43])
      {
        v46 = [NSString stringWithFormat:@"%@<%p, %@>", v43, v41, v45];

        goto LABEL_26;
      }
    }

    v46 = [NSString stringWithFormat:@"%@<%p>", v43, v41];
LABEL_26:

    if (v27)
    {
      v47 = "hide";
    }

    else
    {
      v47 = "show";
    }

    v48 = [(ContainerViewController *)v41 containerStyle];
    if (v48 > 7)
    {
      v49 = 1;
    }

    else
    {
      v49 = dword_101216300[v48];
    }

    junctionViewDisplayed = self->_junctionViewDisplayed;
    *buf = 138544642;
    v67 = v46;
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

  v31 = self;
  v32 = objc_opt_class();
  v33 = NSStringFromClass(v32);
  if (objc_opt_respondsToSelector())
  {
    v34 = [(NavContainerViewController *)v31 performSelector:"accessibilityIdentifier"];
    v35 = v34;
    if (v34 && ![v34 isEqualToString:v33])
    {
      v36 = [NSString stringWithFormat:@"%@<%p, %@>", v33, v31, v35];

      goto LABEL_16;
    }
  }

  v36 = [NSString stringWithFormat:@"%@<%p>", v33, v31];
LABEL_16:

  v37 = "show";
  if (v27)
  {
    v37 = "hide";
  }

  v65 = v37;
  v38 = v36;
  v39 = [(ContainerViewController *)v31 containerStyle];
  if (v39 > 7)
  {
    v40 = 1;
  }

  else
  {
    v40 = dword_101216300[v39];
  }

  v64 = v40;
  v56 = v22 > v21;
  v57 = self->_signListHeight;
  [(NavSignListViewController *)v31->_navSignViewController layoutProgress];
  v59 = v58;
  v60 = [(NavSignListViewController *)v31->_navSignViewController isDragging];

  v61 = self->_junctionViewDisplayed;
  *buf = 138545666;
  v67 = v36;
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
  v83 = v60;
  v84 = 1024;
  v85 = v61;
  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Should %s tray because isLandscape: %d, bottomOfSignsIsGreaterThanTopOfTray: %d, signHeightGreaterThanCollapsed: %d (currentHeight: %f, collapsedHeight: %f, layoutProgress: %f, isDragging: %d), junctionViewDisplayed: %d", buf, 0x52u);

LABEL_44:
  return v27;
}

- (void)_updateContaineeHiddenIfNeeded
{
  v19 = [(ContainerViewController *)self currentViewController];
  v3 = [v19 cardPresentationController];
  if (([v3 usingSheetPresentation] & 1) == 0)
  {
LABEL_10:

    return;
  }

  v4 = [(ContainerViewController *)self currentViewController];
  if ([v4 isBeingPresented])
  {
LABEL_9:

    goto LABEL_10;
  }

  v5 = [(ContainerViewController *)self currentViewController];
  if ([v5 isBeingDismissed])
  {
LABEL_8:

    goto LABEL_9;
  }

  v6 = [(NavContainerViewController *)self view];
  v7 = [v6 superview];
  if (!v7)
  {
LABEL_7:

    goto LABEL_8;
  }

  v8 = v7;
  v9 = [(ContainerViewController *)self chromeViewController];
  v10 = [v9 currentIOSBasedContext];
  v11 = [(ContainerViewController *)self chromeContext];
  v12 = v11;
  if (v10 != v11)
  {

    goto LABEL_7;
  }

  v13 = [(NavContainerViewController *)self _isPresentingOverlappingContainee];

  if (v13)
  {
    return;
  }

  v14 = [(NavContainerViewController *)self shouldHideTray];
  cardHidingToken = self->_cardHidingToken;
  if (v14)
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
  v5 = [(NavContainerViewController *)self view];
  [v5 frame];
  Height = CGRectGetHeight(v15);

  v7 = [(ContainerViewController *)self containerStyle];
  if (v7 <= 7 && ((1 << v7) & 0xE3) != 0)
  {
    [(NavContainerViewController *)self _belowSignTopPosition];
    v9 = v8;
    v10 = [(ContainerViewController *)self currentViewController];
    v11 = [v10 view];
    [v11 bounds];
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
  v3 = [(NavContainerViewController *)self traitCollection];
  v4 = [v3 isLuminanceReduced];

  if (v4)
  {
    return;
  }

  v5 = [(NavContainerViewController *)self laneGuidanceViewController];
  if ([v5 hasLaneGuidance])
  {

LABEL_5:
    v8 = sub_1000808D8();
    v9 = [(NavContainerViewController *)self navSignViewController];
    [v9 layoutProgress];
    v19 = [v8 colorWithAlphaComponent:v10 * 0.239999995];
    goto LABEL_6;
  }

  v6 = [(NavContainerViewController *)self navSignViewController];
  v7 = [v6 hasElevationGraph];

  if (v7)
  {
    goto LABEL_5;
  }

  v12 = [(NavContainerViewController *)self navSignViewController];
  [v12 activeStepFadeIn];
  v14 = v13;

  if (v14 <= 0.0)
  {
    v19 = 0;
    goto LABEL_7;
  }

  v8 = sub_1000808D8();
  v9 = [(NavContainerViewController *)self navSignViewController];
  [v9 layoutProgress];
  v16 = v15;
  v17 = [(NavContainerViewController *)self navSignViewController];
  [v17 activeStepFadeIn];
  v19 = [v8 colorWithAlphaComponent:v16 * v18 * 0.239999995];

LABEL_6:
LABEL_7:
  v11 = [(NavContainerViewController *)self iosBasedChromeViewController];
  [v11 setStatusBarAdditionalColor:v19];
}

- (void)_showPedestrianARRaiseToEnterTeachableMomentCardIfNecessary
{
  if ([(NavContainerViewController *)self _shouldShowPedestrianARTeachableMomentCard])
  {
    if (+[PedestrianARRaiseToEnterTeachableMomentContaineeViewController hasShownTeachableMoment])
    {
      v3 = sub_100035E6C();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v17 = 0;
        v4 = "Not showing Pedestrian AR raise to enter teachable moment card because it has already been shown before";
        v5 = &v17;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
      }
    }

    else
    {
      v6 = +[PedestrianARSessionUsageTracker sharedInstance];
      v7 = [(NavContainerViewController *)self route];
      v8 = [v7 uniqueRouteID];
      v9 = [v8 UUIDString];
      v10 = [v6 hasAREverLocalizedForRoute:v9];

      if ((v10 & 1) == 0)
      {
        v3 = sub_100035E6C();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          goto LABEL_8;
        }

        v16 = 0;
        v4 = "Not showing Pedestrian AR raise to enter teachable moment card because the user hasn't localized on the current route yet";
        v5 = &v16;
        goto LABEL_7;
      }

      v11 = +[PedestrianARSessionUsageTracker sharedInstance];
      v12 = [v11 hasARElementRendered];

      v3 = sub_100035E6C();
      v13 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
      if ((v12 & 1) == 0)
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
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Showing the Pedestrian AR raise to enter teachable moment card", v14, 2u);
      }

      v3 = [(NavContainerViewController *)self coordinator];
      [v3 showPedestrianARRaiseToEnterTeachableMomentCard];
    }
  }

  else
  {
    v3 = sub_100035E6C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
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
    v4 = sub_100035E6C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v10 = 0;
    v6 = "Not showing Pedestrian AR feature intro teachable moment card because we should not show any teachable moment cards right now";
    v7 = &v10;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v6, v7, 2u);
    goto LABEL_11;
  }

  v3 = +[PedestrianARFeatureIntroTeachableMomentContaineeViewController shouldShowTeachableMoment];
  v4 = sub_100035E6C();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Showing the Pedestrian AR feature intro teachable moment card", v8, 2u);
  }

  v4 = [(NavContainerViewController *)self coordinator];
  [v4 showPedestrianARFeatureIntroTeachableMomentCard];
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
  v4 = [v3 currentInterruptionKind];

  if (!v4)
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
    if ((v4 - 2) > 0x15)
    {
      v6 = @"kMapsInterruptionDirectionsSafetyWarning";
    }

    else
    {
      v6 = off_101661820[(v4 - 2)];
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
  v3 = [(NavContainerViewController *)self view];
  [v3 layoutIfNeeded];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100FFD288;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [UIView animateWithDuration:117440512 delay:v4 options:0 animations:0.25 completion:0.0];
}

- (void)_updateNavSignForArrival:(BOOL)a3 forced:(BOOL)a4
{
  if (self->_isArrivalState != a3 || a4)
  {
    v5 = a3;
    self->_isArrivalState = a3;
    if (![(NavContainerViewController *)self isConnectedToCarPlay])
    {
      [(UIView *)self->_navSignContainerView setHidden:v5];
    }

    isArrivalState = self->_isArrivalState;
    v8 = [(ContainerViewController *)self currentViewController];
    v9 = [v8 cardPresentationController];
    [v9 setHideGrabber:isArrivalState];

    [(NavContainerViewController *)self _updateControlsHiddenAnimated:1];
    [(NavContainerViewController *)self _updateChildViewLayouts];
    [(NavContainerViewController *)self _updateContaineeHiddenIfNeeded];
    [(ContainerViewController *)self updateMapEdgeInsets];
    v10 = [(NavContainerViewController *)self iosBasedChromeViewController];
    [v10 setNeedsUpdateComponent:@"statusBarStyle" animated:1];

    v11 = [(NavContainerViewController *)self iosBasedChromeViewController];
    [v11 setNeedsUpdateComponent:@"StaleMapEffect" animated:1];

    v12 = [(NavContainerViewController *)self iosBasedChromeViewController];
    [v12 updateComponentsIfNeeded];
  }
}

- (void)_updateArrivalStateForced:(BOOL)a3
{
  v3 = a3;
  v5 = +[MNNavigationService sharedService];
  v7 = [v5 arrivalInfo];

  if (v7)
  {
    v6 = [v7 arrivalState] != 0;
  }

  else
  {
    v6 = 0;
  }

  [(NavContainerViewController *)self _updateNavSignForArrival:v6 forced:v3];
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  if ((MNNavigationServiceStateChangedFromNavigatingToStopped() & 1) != 0 || MNNavigationServiceStateChangedToNavigating())
  {
    v6 = [(NavContainerViewController *)self iosBasedChromeViewController];
    [v6 setNeedsUpdateComponent:@"statusBarStyle" animated:0];
  }
}

- (void)navigationService:(id)a3 showJunctionView:(id)a4
{
  self->_junctionViewActive = 1;
  v5 = a4;
  v6 = [[NavJunctionViewInfo alloc] initWithGuidanceJunctionViewInfo:v5];

  v7 = [(NavContainerViewController *)self junctionViewController];
  [v7 setJunctionViewInfo:v6];

  [(NavContainerViewController *)self showJunctionViewIfNeeded];
}

- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4
{
  v5 = [(NavContainerViewController *)self _isSecondarySignVisible:a3];
  [(NavContainerViewController *)self _setShowingMidstepLaneGuidance:0];
  if (v5 != [(NavContainerViewController *)self _isSecondarySignVisible])
  {

    [(NavContainerViewController *)self _drawSecondarySign];
  }
}

- (void)navigationService:(id)a3 showLaneDirections:(id)a4
{
  v5 = a4;
  v6 = [(NavContainerViewController *)self _isSecondarySignVisible];
  v7 = [v5 isForManeuver];

  [(NavContainerViewController *)self _setShowingMidstepLaneGuidance:v7 ^ 1];
  if (v6 != [(NavContainerViewController *)self _isSecondarySignVisible])
  {

    [(NavContainerViewController *)self _drawSecondarySign];
  }
}

- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4
{
  v5 = a4;
  v6 = [(NavContainerViewController *)self _isSecondarySignVisible];
  v7 = [v5 secondarySign];

  [(NavContainerViewController *)self _setSecondarySignActive:v7 != 0];
  if (v6 != [(NavContainerViewController *)self _isSecondarySignVisible])
  {
    [(NavContainerViewController *)self _drawSecondarySign];
  }

  v9 = [(NavContainerViewController *)self traitCollection];
  if ([v9 isLuminanceReduced])
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

- (void)applyTransitionWithProgress:(double)a3
{
  v14.receiver = self;
  v14.super_class = NavContainerViewController;
  [(OverlayContainerViewController *)&v14 applyTransitionWithProgress:?];
  v5 = [(ContainerViewController *)self chromeViewController];
  v6 = [v5 previousTopContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v7 = [(ContainerViewController *)self chromeViewController];
    v8 = [v7 nextTopContext];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }
  }

  [(UIView *)self->_navSignContainerView setAlpha:a3];
  v10 = [(NavContainerViewController *)self indicatorsViewController];
  v11 = [v10 view];
  [v11 setAlpha:a3];

  v12 = [(ContainerViewController *)self currentViewController];
  v13 = [v12 view];
  [v13 setAlpha:a3];
}

- (void)_setShowingMidstepLaneGuidance:(BOOL)a3
{
  self->_isShowingMidstepLaneGuidance = a3;
  v4 = [(NavContainerViewController *)self _isSecondarySignVisible];
  v5 = [(NavContainerViewController *)self navSignViewController];
  [v5 setShowingSecondaryManeuver:v4];
}

- (void)_setSecondarySignActive:(BOOL)a3
{
  self->_secondarySignActive = a3;
  v4 = [(NavContainerViewController *)self _isSecondarySignVisible];
  v5 = [(NavContainerViewController *)self navSignViewController];
  [v5 setShowingSecondaryManeuver:v4];
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

- (double)maxAvailableHeightForJunctionView:(double)a3
{
  [(NavContainerViewController *)self _maxAvailableHeightForJunctionView];
  v4 = 250.0;
  if (v5 < 250.0)
  {
    [(NavContainerViewController *)self _maxAvailableHeightForJunctionView];
    v4 = v6;
  }

  v7 = [(ContainerViewController *)self containerStyle];
  if (v7 <= 7 && ((1 << v7) & 0xE3) != 0 && v4 < 150.0)
  {
    return 0.0;
  }

  return v4;
}

- (double)_indicatorsTrailingInset
{
  v2 = [(NavContainerViewController *)self view];
  [v2 safeAreaInsets];
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
  v3 = [(NavContainerViewController *)self isConnectedToCarPlay];
  v4 = sub_100035E6C();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Ignoring tap gesture, CarPlay is connected", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Toggling nav sign list due to lane guidance tap", v6, 2u);
    }

    v4 = [(NavContainerViewController *)self navSignViewController];
    [v4 toggleExpansionAnimated:1];
  }
}

- (void)updatedLaneGuidanceHeight:(double)a3
{
  v5 = a3 + -8.0;
  if (a3 <= 0.0)
  {
    v5 = 0.0;
  }

  signTopConstraint = self->_signTopConstraint;
  if (a3 <= 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a3 + 8.0;
  }

  [(NSLayoutConstraint *)signTopConstraint setConstant:v5];
  [(NSLayoutConstraint *)self->_laneGuidanceHeightConstraint setConstant:v7];
  [(NavContainerViewController *)self maximumSignListHeight];
  v9 = v8;
  if (fabs(a3) <= 2.22044605e-16)
  {
    v10 = [(NavContainerViewController *)self navSignViewController];
    if ([v10 isExpanded])
    {
      v11 = [(NavContainerViewController *)self navSignViewController];
      v12 = [v11 isDragging];

      if (!v12)
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
  v15 = [(NavContainerViewController *)self navSignViewController];
  [v15 updateFooterConstraints];

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
  v3 = [(NavContainerViewController *)self view];
  [v3 frame];
  Height = CGRectGetHeight(v13);
  [(NavContainerViewController *)self _navSignBottomPosition];
  v6 = v5;

  v7 = [(NavContainerViewController *)self view];
  [v7 safeAreaInsets];
  v9 = v8;

  if (v9 <= 0.0)
  {
    v10 = +[UIDevice currentDevice];
    v11 = [v10 userInterfaceIdiom];

    v9 = 30.0;
    if (v11 == 5)
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

- (void)pressedEndNavigationWithSender:(id)a3
{
  v4 = a3;
  v5 = [(NavContainerViewController *)self coordinator];
  [v5 pressedEndWithSender:v4];
}

- (void)selectStep:(id)a3
{
  v4 = a3;
  v17 = v4;
  if (v4)
  {
    v5 = [v4 stepIndex];
    v6 = [(NavContainerViewController *)self route];
    v7 = [v6 segmentIndexForStepIndex:v5];

    v8 = [(NavContainerViewController *)self mapView];
    [v8 _setRouteContextInspectedSegmentIndex:v7 inspectedStepIndex:v5];

    v9 = sub_100AF171C(v17);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(NavContainerViewController *)self coordinator];
    [v16 viewController:self updateMapRect:{v9, v11, v13, v15}];
  }

  else
  {
    v16 = [(NavContainerViewController *)self coordinator];
    [v16 recenterNavigation];
  }

  [(NavContainerViewController *)self updateLayoutAnimated:1];
}

- (void)updateSignContainerConstraints
{
  v3 = [(NavContainerViewController *)self navSignViewController];
  -[NSLayoutConstraint setActive:](self->_secondarySignBottomConstraint, "setActive:", [v3 isExpanded] ^ 1);

  v4 = [(NavContainerViewController *)self navSignViewController];
  if (([v4 isExpanded] & 1) != 0 || self->_junctionViewDisplayed)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(NavContainerViewController *)self navSignViewController];
    v5 = [v6 isDragging];
  }

  [(NSLayoutConstraint *)self->_signContainerBottomCollapsedConstraint setActive:v5 ^ 1];
  signContainerBottomExpandedConstraint = self->_signContainerBottomExpandedConstraint;

  [(NSLayoutConstraint *)signContainerBottomExpandedConstraint setActive:v5];
}

- (void)signListHeightWillChangeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ContainerViewController *)self currentViewController];
  v6 = [v5 cardPresentationController];
  v7 = [v6 containeeLayout];

  if (v7 == 2)
  {
    v8 = [(ContainerViewController *)self currentViewController];
    v9 = [v8 cardPresentationController];
    [v9 wantsLayout:1];
  }

  v10 = 0.0;
  if (v3)
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
  v3 = [(NavContainerViewController *)self view];
  [v3 frame];
  MaxY = CGRectGetMaxY(v12);
  [(UIView *)self->_navSignContainerView frame];
  MinY = CGRectGetMinY(v13);
  [(NSLayoutConstraint *)self->_signTopConstraint constant];
  v7 = v6;
  v8 = [(NavContainerViewController *)self view];
  [v8 safeAreaInsets];
  v10 = MaxY - (MinY + v7 + v9);

  return v10;
}

- (void)setSignListHeight:(double)a3
{
  [(NavContainerViewController *)self maximumSignListHeight];
  self->_signListHeight = fmin(v5, a3);

  [(NavContainerViewController *)self _updateContaineeHiddenIfNeeded];
}

- (void)_applyConnectedToCarPlayAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = self;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(NavContainerViewController *)v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    connectedToCarPlay = v6->_connectedToCarPlay;
    *buf = 138543618;
    v17 = v11;
    v18 = 1024;
    v19 = connectedToCarPlay;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Applying connectedToCarPlay %d", buf, 0x12u);
  }

  v13 = [(NavContainerViewController *)self navSignViewController];
  [v13 setConnectedToCarPlay:self->_connectedToCarPlay animated:v3];

  if (self->_connectedToCarPlay)
  {
    v14 = +[UIDevice currentDevice];
    [v14 setOrientation:1 animated:v3];
  }

  [(NavContainerViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FFE7F4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setConnectedToCarPlay:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_connectedToCarPlay != a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = sub_100035E6C();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
LABEL_9:

      self->_connectedToCarPlay = v5;
      [(NavContainerViewController *)self _applyConnectedToCarPlayAnimated:v4];
      return;
    }

    v8 = self;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(NavContainerViewController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_8;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_8:

    connectedToCarPlay = self->_connectedToCarPlay;
    *buf = 138543874;
    v16 = v13;
    v17 = 1024;
    v18 = connectedToCarPlay;
    v19 = 1024;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Changing connectedToCarPlay from %d to %d", buf, 0x18u);

    goto LABEL_9;
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v8.receiver = self;
  v8.super_class = NavContainerViewController;
  v4 = a3;
  [(ContainerViewController *)&v8 sceneWillEnterForeground:v4];
  v5 = [v4 object];

  v6 = [(ContainerViewController *)self chromeViewController];
  v7 = [v6 _maps_uiScene];

  if (v5 == v7)
  {
    [(NavContainerViewController *)self _applyConnectedToCarPlayAnimated:0];
  }
}

- (void)_sceneConnectionsDidChange
{
  v3 = [UIApplication _maps_isAnySceneConnectedForRole:_UIWindowSceneSessionRoleCarPlay];

  [(NavContainerViewController *)self setConnectedToCarPlay:v3 animated:1];
}

- (void)vlfContaineeViewControllerDidDisappearNotification:(id)a3
{
  [(UIView *)self->_navSignContainerView setHidden:0];
  v4 = [(NavContainerViewController *)self indicatorsViewController];
  v5 = [v4 view];
  [v5 setHidden:0];

  self->_vlfActive = 0;
  [(NavContainerViewController *)self _updateRecenterButtonLayout];
  v6 = [(NavContainerViewController *)self iosBasedChromeViewController];
  [v6 setNeedsUpdateComponent:@"statusBarStyle" animated:0];
}

- (void)vlfSessionTaskWillShowVLFUINotification:(id)a3
{
  [(UIView *)self->_navSignContainerView setHidden:1];
  v4 = [(NavContainerViewController *)self indicatorsViewController];
  v5 = [v4 view];
  [v5 setHidden:1];

  self->_vlfActive = 1;
  [(NavContainerViewController *)self _updateRecenterButtonLayout];
  v6 = [(NavContainerViewController *)self iosBasedChromeViewController];
  [v6 setNeedsUpdateComponent:@"statusBarStyle" animated:0];
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
  v2 = [(ContainerViewController *)self currentViewController];
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
  v2 = [(NavContainerViewController *)self route];
  v3 = [v2 transportType] - 1;
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

- (void)idleTimerDidTimeout:(id)a3
{
  v4 = [(NavContainerViewController *)self coordinator];
  v5 = [v4 defaultContaineeViewControllerType];

  if (v5 == 1)
  {
    return;
  }

  v6 = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  v7 = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_5:
LABEL_6:

    [(ContainerViewController *)self popLastViewControllerAnimated:1];
    return;
  }

  v8 = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_6;
  }

  v10 = [(ContainerViewController *)self currentViewController];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    v12 = [(NavContainerViewController *)self coordinator];
    [v12 dismissModalContainee];

    v13 = [(NavContainerViewController *)self coordinator];
    [v13 dismissTray];
  }

  else
  {

    [(ContainerViewController *)self setLayoutIfSupported:1 animated:1];
  }
}

- (double)nextIdleTimeout:(id)a3
{
  GEOConfigGetDouble();
  v5 = v4;
  GEOConfigGetDouble();
  v7 = v6;
  v8 = [(ContainerViewController *)self currentViewController];
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
    v4 = [(NavContainerViewController *)self view];
    v5 = [v4 window];
    v6 = [(NavIdleTimeoutTimer *)v3 initWithWindow:v5];
    [(NavContainerViewController *)self setIdleTimer:v6];

    v7 = [(NavContainerViewController *)self idleTimer];
    [v7 setDelegate:self];
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
    v3 = [(NavContainerViewController *)self resumeRouteBanner];
  }

  else
  {
    v4 = [(NavContainerViewController *)self statusIndicatorView];
    if ([v4 isVisible])
    {
      v3 = [(NavContainerViewController *)self statusIndicatorView];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)statusIndicatorTypeChanged:(unint64_t)a3
{
  v5 = [(NavContainerViewController *)self statusIndicatorView];
  [v5 setType:a3];

  v6 = [(NavContainerViewController *)self iosBasedChromeViewController];
  [v6 setNeedsUpdateComponent:@"statusBarStyle" animated:0];

  v7 = [(NavContainerViewController *)self iosBasedChromeViewController];
  [v7 setNeedsUpdateComponent:@"statusBarSupplementaryView" animated:1];

  v8 = [(NavContainerViewController *)self iosBasedChromeViewController];
  [v8 updateComponentsIfNeeded];

  if ([(NavContainerViewController *)self isViewLoaded])
  {
    [(NavContainerViewController *)self _updateNavSignLayout];
    v9 = [(NavContainerViewController *)self navSignViewController];
    [v9 updateHeightConstraints];
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
  v2 = [(NavContainerViewController *)self coordinator];
  [v2 displayVoiceVolumeControl];

  [GEOAPPortal captureUserAction:139 target:505 value:0];
}

- (void)reportAnIncident
{
  v2 = [(NavContainerViewController *)self coordinator];
  [v2 displayIncidentReporting];
}

- (void)enterPedestrianAR
{
  [(GCDTimer *)self->_pedestrianARFeatureIntroTeachableMomentTimer invalidate];
  v3 = [(NavContainerViewController *)self coordinator];
  [v3 enterPedestrianAR];

  [(ContainerViewController *)self setLayoutIfSupported:1 animated:0];
}

- (void)toggleHeadingMode
{
  v3 = [(NavContainerViewController *)self coordinator];
  [v3 toggleLowGuidanceNavigationCameraHeading];

  pedestrianARFeatureIntroTeachableMomentTimer = self->_pedestrianARFeatureIntroTeachableMomentTimer;

  [(GCDTimer *)pedestrianARFeatureIntroTeachableMomentTimer invalidate];
}

- (void)switchToZoomedInMode
{
  v3 = [(NavContainerViewController *)self coordinator];
  [v3 sender:self switchToNavigationCameraMode:0];

  pedestrianARFeatureIntroTeachableMomentTimer = self->_pedestrianARFeatureIntroTeachableMomentTimer;

  [(GCDTimer *)pedestrianARFeatureIntroTeachableMomentTimer invalidate];
}

- (void)switchToOverviewMode
{
  v3 = [(NavContainerViewController *)self coordinator];
  [v3 sender:self switchToNavigationCameraMode:1];

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
    v4 = [(NavContainerBannerAction *)self->_bannerAction title];
    if ([v4 length])
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
  v3 = [(NavContainerViewController *)self bannerAction];
  v4 = [v3 copy];

  [v4 setHidden:1];
  [(NavContainerViewController *)self setBannerAction:v4 animated:1];
}

- (void)_performBannerAction
{
  v3 = [(NavContainerViewController *)self bannerAction];
  v4 = [v3 actionHandler];

  if (v4)
  {
    v5 = [(NavContainerViewController *)self bannerAction];
    v6 = [v5 actionHandler];
    v7 = v6[2]();

    if (v7)
    {

      [(NavContainerViewController *)self setBannerAction:0 animated:1];
    }
  }
}

- (void)setBannerAction:(id)a3 animated:(BOOL)a4
{
  if (self->_bannerAction != a3)
  {
    v4 = a4;
    v6 = [a3 copy];
    bannerAction = self->_bannerAction;
    self->_bannerAction = v6;

    v8 = [(NavContainerBannerAction *)self->_bannerAction title];
    v9 = [(NavContainerViewController *)self resumeRouteBanner];
    [v9 setTitle:v8];

    v10 = [(NavContainerViewController *)self iosBasedChromeViewController];
    [v10 setNeedsUpdateComponent:@"statusBarSupplementaryView" animated:v4];
  }
}

- (BOOL)shouldHideBottomPocketForSidebarContainerStyle:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = NavContainerViewController;
  return [(ContainerViewController *)&v6 shouldHideBottomPocketForSidebarContainerStyle:?]|| self->_hideBottomPocketForSidebarNavigation && a3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = NSStringFromSelector("collapsedHeight");
  v14 = [v10 isEqualToString:v13];

  if (v14)
  {
    v15 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];

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
    [(NavContainerViewController *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
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
  v5 = [(NavContainerViewController *)self view];
  v6 = [v5 subviews];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) setHidden:v4];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)willDismissNavigationAnimated:(BOOL)a3
{
  v3 = 0.0;
  if (a3)
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
  v2 = [(NavContainerViewController *)self route];
  v3 = [v2 transportType] == 2;

  return v3;
}

- (void)setResumeRouteBannerHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(NavContainerViewController *)self resumeRouteBanner];
  v5 = v4;
  if (v3)
  {
    [v4 hideIfNeeded];
  }

  else
  {
    [v4 showIfNeeded];
  }
}

- (void)setSignStyle:(unint64_t)a3
{
  if (self->_signStyle != a3)
  {
    self->_signStyle = a3;
    if ([(NavContainerViewController *)self isViewLoaded])
    {
      v5 = [(NavContainerViewController *)self indicatorsViewController];
      [v5 setIndicatorsType:a3 != 1];

      v6 = [(NavContainerViewController *)self iosBasedChromeViewController];
      [v6 setNeedsUpdateComponent:@"statusBarStyle" animated:0];
    }

    if (a3 == 1)
    {

      [(NavContainerViewController *)self showJunctionViewIfNeeded];
    }

    else
    {

      [(NavContainerViewController *)self hideJunctionViewIfNeeded];
    }
  }
}

- (void)setRoute:(id)a3
{
  v5 = a3;
  if (v5 && self->_route != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_route, a3);
    [(NavContainerViewController *)self _updateRecenterButtonLayout];
    v5 = v6;
  }
}

- (void)_updateControlsHiddenAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NavContainerViewController *)self indicatorsViewController];
  v6 = v5;
  v7 = self->_trayOpen || self->_isPanned || self->_isArrivalState || self->_connectedToCarPlay;
  [v5 setControlsHidden:v7 animated:v3];

  v8 = [(NavContainerViewController *)self indicatorsViewController];
  v9 = self->_isPanned || self->_isArrivalState || self->_connectedToCarPlay;
  v10 = v8;
  [v8 setIndicatorsHidden:v9 animated:v3];
}

- (void)mapViewNavigationCameraDidReturnToDefaultZoom:(id)a3
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

- (void)mapViewNavigationCameraDidLeaveDefaultZoom:(id)a3
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
    v5 = [(ContainerViewController *)self currentViewController];
    v6 = [v5 cardPresentationController];
    [v6 wantsLayout:1];
  }

  [(NavContainerViewController *)self hideJunctionViewIfNeededAnimated:1];
  [(NavContainerViewController *)self _updateControlsHiddenAnimated:1];
}

- (void)mapViewNavigationCameraHasStoppedPanning:(id)a3
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

- (void)mapViewNavigationCameraHasStartedPanning:(id)a3
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
    v5 = [(ContainerViewController *)self currentViewController];
    v6 = [v5 cardPresentationController];
    [v6 wantsLayout:1];
  }

  [(NavContainerViewController *)self hideJunctionViewIfNeededAnimated:1];
  [(NavContainerViewController *)self _updateControlsHiddenAnimated:1];
}

- (double)availableHeight
{
  v3 = [(ContainerViewController *)self containerStyle];
  if (v3 > 6)
  {
    goto LABEL_13;
  }

  if (((1 << v3) & 0x54) != 0)
  {
    v4 = +[UIDevice currentDevice];
    if ([v4 userInterfaceIdiom] == 1)
    {

      goto LABEL_9;
    }

    v16 = +[UIDevice currentDevice];
    v17 = [v16 userInterfaceIdiom];

    if (v17 == 5)
    {
LABEL_9:
      v5 = [(NavContainerViewController *)self view];
      [v5 bounds];
      v19 = v18;
      v8 = [(OverlayContainerViewController *)self topContentView];
      [v8 frame];
      MaxY = CGRectGetMaxY(v33);
      [(NavContainerViewController *)self edgePadding];
      v22 = v21 + MaxY;
      v11 = 0.0;
      if (v19 >= v22)
      {
        v12 = [(NavContainerViewController *)self view];
        [v12 bounds];
        v24 = v23;
        v25 = [(OverlayContainerViewController *)self topContentView];
        [v25 frame];
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

  if (((1 << v3) & 0x22) == 0)
  {
    goto LABEL_13;
  }

  v5 = [(NavContainerViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v8 = [(OverlayContainerViewController *)self topContentView];
  [v8 frame];
  v9 = CGRectGetMaxY(v31);
  v10 = v7 + 8.0;
  v11 = 0.0;
  if (v10 >= v9)
  {
    v12 = [(NavContainerViewController *)self view];
    [v12 bounds];
    v14 = v13;
    v15 = [(OverlayContainerViewController *)self topContentView];
    [v15 frame];
    v11 = v14 + 8.0 - CGRectGetMaxY(v32);

LABEL_11:
  }

LABEL_12:

  return v11;
}

- (void)containerStyleManagerDidChangeStyle:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = NavContainerViewController;
  [(ContainerViewController *)&v8 containerStyleManagerDidChangeStyle:?];
  v5 = [(NavContainerViewController *)self coordinator];
  v6 = [(NavContainerViewController *)self traitCollection];
  [v5 updateCameraForTraits:v6 containerStyle:a3];

  [(NavContainerViewController *)self _updateChildViewLayouts];
  v7 = [(NavContainerViewController *)self iosBasedChromeViewController];
  [v7 setNeedsUpdateComponent:@"statusBarStyle" animated:0];

  if ([(NavContainerViewController *)self canDisplayJunctionViewInfo])
  {
    [(NavContainerViewController *)self showJunctionViewIfNeeded];
  }

  else
  {
    [(NavContainerViewController *)self hideJunctionViewIfNeededAnimated:1];
  }
}

- (void)presentController:(id)a3 animated:(BOOL)a4 useDefaultContaineeLayout:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(NavContainerViewController *)self coordinator];
  v10 = [v9 isShowingFullScreenDirectionsList];

  v11 = sub_100035E6C();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Showing expanded nav sign; skipping presentation of %@", buf, 0xCu);
    }
  }

  else
  {
    if (v12)
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Presenting controller: %@", buf, 0xCu);
    }

    v13.receiver = self;
    v13.super_class = NavContainerViewController;
    [(ContainerViewController *)&v13 presentController:v8 animated:v6 useDefaultContaineeLayout:v5];
  }
}

- (unint64_t)originalLayoutForViewController:(id)a3
{
  v4 = a3;
  v5 = [(ContainerViewController *)self currentViewController];
  v6 = [v5 cardPresentationController];
  v7 = [v6 defaultContaineeLayout];

  if (!v7)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (v9 = v4, v10 = -[ContainerViewController containerStyle](self, "containerStyle"), -[NavContainerViewController traitCollection](self, "traitCollection"), v11 = objc_claimAutoreleasedReturnValue(), v7 = [v9 defaultLayoutForContainerStyle:v10 traitCollection:v11], v9, v11, !v7))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }
      }
    }
  }

  return v7;
}

- (void)updateLayoutAnimated:(BOOL)a3
{
  v3 = a3;
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
  if (v3)
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
    v3 = [(UIView *)self->_navSignContainerView topAnchor];
    v4 = [(ContainerViewController *)self chromeViewController];
    v5 = [v4 viewportLayoutGuide];
    v6 = [v5 topAnchor];
    v7 = [v3 constraintEqualToAnchor:v6];
    signContainerTopConstraint = self->_signContainerTopConstraint;
    self->_signContainerTopConstraint = v7;

    v9 = [(UIView *)self->_navSignContainerView bottomAnchor];
    v10 = [(NavContainerViewController *)self view];
    v11 = [v10 bottomAnchor];
    v12 = [v9 constraintLessThanOrEqualToAnchor:v11];
    signContainerBottomCollapsedConstraint = self->_signContainerBottomCollapsedConstraint;
    self->_signContainerBottomCollapsedConstraint = v12;

    v14 = [(UIView *)self->_navSignContainerView bottomAnchor];
    v15 = [(NavContainerViewController *)self view];
    v16 = [v15 bottomAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    signContainerBottomExpandedConstraint = self->_signContainerBottomExpandedConstraint;
    self->_signContainerBottomExpandedConstraint = v17;

    v19 = [(UIView *)self->_navSignContainerView leadingAnchor];
    v20 = [(NavContainerViewController *)self view];
    v21 = [v20 leadingAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    signContainerLeadingConstraint = self->_signContainerLeadingConstraint;
    self->_signContainerLeadingConstraint = v22;

    v24 = [(ContainerViewController *)self containerView];
    v25 = [v24 widthAnchor];
    v26 = [(UIView *)self->_navSignContainerView widthAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
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

- (void)_containeeDidPresent:(id)a3
{
  suppressedContainee = self->_suppressedContainee;
  self->_suppressedContainee = 0;
}

- (void)_containeeWillPresent:(id)a3
{
  v10 = a3;
  if ([(PassThroughViewController *)self hasParentView]&& self->_layoutSetup)
  {
    v4 = [v10 userInfo];
    v5 = [v4 objectForKeyedSubscript:@"ContainerContainee"];

    v6 = [v5 viewIfLoaded];
    v7 = [v6 window];

    if (v7)
    {
      v8 = [v5 cardPresentationController];
      v9 = [v8 containeeLayout];
    }

    else
    {
      v9 = [(NavContainerViewController *)self originalLayoutForViewController:v5];
    }

    self->_trayOpen = v9 > 1;
    [(NavContainerViewController *)self _updateControlsHiddenAnimated:+[UIView areAnimationsEnabled]];
  }
}

- (void)_containeeLayoutDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"ContainerContainee"];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"ContainerLayout"];
  v9 = [v8 unsignedIntegerValue];

  v10 = sub_10002A8B8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138543874;
    v14 = self;
    v15 = 2114;
    v16 = v6;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ containee: %{public}@ didChangeTo: %lu", &v13, 0x20u);
  }

  if ([(PassThroughViewController *)self hasParentView])
  {
    if (self->_layoutSetup)
    {
      v11 = [(ContainerViewController *)self currentViewController];

      if (v6 == v11)
      {
        suppressedContainee = self->_suppressedContainee;
        self->_suppressedContainee = 0;

        [(NavContainerViewController *)self _updateControlsHiddenAnimated:+[UIView areAnimationsEnabled]];
      }
    }
  }
}

- (void)_containeeLayoutWillChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"ContainerContainee"];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"ContainerLayout"];
  v9 = [v8 unsignedIntegerValue];

  v10 = sub_10002A8B8();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 138543874;
    v14 = self;
    v15 = 2114;
    v16 = v6;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@ containee: %{public}@ willChangeTo: %lu", &v13, 0x20u);
  }

  if ([(PassThroughViewController *)self hasParentView])
  {
    if (self->_layoutSetup)
    {
      self->_trayOpen = v9 > 1;
      if (v6 != self->_suppressedContainee)
      {
        if (v9 >= 2)
        {
          v11 = [(NavContainerViewController *)self navSignViewController];
          [v11 clearDragState];
        }

        v12 = [(NavContainerViewController *)self navSignViewController];
        [v12 clearPartialExpansionAnimated:{+[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled")}];

        [(NavContainerViewController *)self _updateControlsHiddenAnimated:+[UIView areAnimationsEnabled]];
        [(GCDTimer *)self->_pedestrianARFeatureIntroTeachableMomentTimer invalidate];
      }
    }
  }
}

- (unint64_t)layoutForCurrentViewControllerWithStyle:(unint64_t)a3
{
  if ([(ContainerViewController *)self containeeLayout])
  {

    return [(ContainerViewController *)self containeeLayout];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NavContainerViewController;
    return [(ContainerViewController *)&v6 layoutForCurrentViewControllerWithStyle:a3];
  }
}

- (void)_updateStatusBarIndicatorLayout
{
  if (_UISolariumEnabled())
  {
    statusIndicatorView = self->_statusIndicatorView;
    v4 = [(NavContainerViewController *)self preferredStatusBarStyle];
    v5 = statusIndicatorView;
  }

  else
  {
    v6 = [(ContainerViewController *)self containerStyle];
    if (v6 <= 7 && ((1 << v6) & 0xE3) != 0 && !self->_isArrivalState)
    {
      v5 = self->_statusIndicatorView;
      v4 = 1;
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
      v4 = v8;
    }
  }

  [(StatusIndicatorView *)v5 updateWithStatusBarStyle:v4];
}

- (void)_updateRecenterButtonLayout
{
  v3 = [(ContainerViewController *)self chromeViewController];
  v7 = [v3 nextTopContext];

  if (!v7 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4 = 0.0, (isKindOfClass & 1) != 0))
  {
    v6 = [(NavContainerViewController *)self _shouldShowNavRecenterButton];
    v4 = 0.0;
    if (v6)
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
  v3 = [(ContainerViewController *)self containerStyle];
  if (v3 > 7)
  {
    v5 = &OBJC_IVAR___NavContainerViewController__landscapeIndicatorsConstraints;
    v4 = &OBJC_IVAR___NavContainerViewController__portraitIndicatorsConstraints;
  }

  else
  {
    v4 = off_1016617A0[v3];
    v5 = off_1016617E0[v3];
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
  v5 = [(NavContainerViewController *)self junctionViewController];
  [v5 setAvailableHeight:v4];

  v6 = [(ContainerViewController *)self containerStyle];
  v7 = 12;
  if (v6 <= 7 && ((1 << v6) & 0xE3) != 0)
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

  v10 = [(NavContainerViewController *)self junctionViewController];
  v8 = [v10 view];
  v9 = [v8 layer];
  [v9 setMaskedCorners:v7];
}

- (void)_updateSecondarySignLayout
{
  [(NavContainerViewController *)self _secondarySignTopPosition];
  secondarySignTopConstraint = self->_secondarySignTopConstraint;

  [(NSLayoutConstraint *)secondarySignTopConstraint setConstant:?];
}

- (void)_updateNavSignCardWidth
{
  v8 = [(ContainerViewController *)self containerStyleManager];
  [v8 containerWidth];
  v4 = v3;
  [(NSLayoutConstraint *)self->_signContainerWidthConstraint constant];
  v6 = v4 - v5;
  v7 = [(NavContainerViewController *)self navSignViewController];
  [v7 setCardWidth:v6];
}

- (void)_updateNavSignCorners
{
  v3 = [(NavContainerViewController *)self laneGuidanceViewController];
  v4 = [v3 hasLaneGuidance];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 3;
  }

  v6 = [(NavContainerViewController *)self junctionViewController];
  v7 = [v6 view];
  [v7 alpha];
  v9 = v8;

  if (v9 >= 0.5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v5 | 0xC;
  }

  v11 = [(NavContainerViewController *)self navSignViewController];
  [v11 setCornerMask:v10];
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
  v3 = [(NavContainerViewController *)self resumeRouteBanner];
  [v3 showIfNeeded];

  [(NavContainerViewController *)self _updateContaineeHiddenIfNeeded];
}

- (void)hideJunctionViewIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  junctionViewDisplayed = self->_junctionViewDisplayed;
  self->_junctionViewDisplayed = 0;
  junctionViewTimer = self->_junctionViewTimer;
  self->_junctionViewTimer = 0;

  if (junctionViewDisplayed)
  {
    v7 = [(NavContainerViewController *)self view];
    [v7 layoutIfNeeded];

    v8 = 0.0;
    if (v3)
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
    v4 = [(NavContainerViewController *)self resumeRouteBanner];
    [v4 hideIfNeeded];

    LOBYTE(v4) = self->_junctionViewDisplayed;
    self->_junctionViewDisplayed = 1;
    [(NavContainerViewController *)self updateJunctionViewAlpha];
    if ((v4 & 1) == 0)
    {
      v5 = [(NavContainerViewController *)self view];
      [v5 layoutIfNeeded];

      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_101001BC4;
      v6[3] = &unk_101661B18;
      v6[4] = self;
      [UIView animateWithDuration:117440512 delay:v6 options:0 animations:0.25 completion:0.0];
    }
  }
}

- (void)willDisplayJunctionViewInfo:(id)a3
{
  if (a3)
  {
    self->_junctionViewActive = 1;
    v4 = [(NavContainerViewController *)self resumeRouteBanner];
    [v4 hideIfNeeded];

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
    v3 = [(NavContainerViewController *)self coordinator];
    if (([v3 isDisplayingTrafficIncident] & 1) != 0 || self->_trayOpen || self->_isPanned || -[NavContainerViewController signStyle](self, "signStyle") != 1)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v4 = [(NavContainerViewController *)self coordinator];
      v5 = [v4 isShowingFullScreenDirectionsList] ^ 1;
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
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 passThroughView];

  return v3;
}

- (void)_pressedRecenterButton
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:4001 onTarget:-[NavContainerViewController currentMapViewTargetForAnalytics](self eventValue:{"currentMapViewTargetForAnalytics"), 0}];

  v4 = [(NavContainerViewController *)self navSignViewController];
  [v4 clearSelectionAnimated:1];

  v5 = [(NavContainerViewController *)self coordinator];
  [v5 recenterNavigation];

  [(NavContainerViewController *)self updateLayoutAnimated:1];
}

- (BOOL)_shouldShowNavRecenterButton
{
  v3 = [(ContainerViewController *)self currentViewController];
  v4 = [v3 cardPresentationController];
  if ([v4 containeeLayout] == 1)
  {
    v5 = [(NavContainerViewController *)self coordinator];
    v6 = ([v5 shouldShowNavRecenterButton] & 1) != 0 || self->_isPanned;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_toggleTraceControls
{
  v3 = [(NavContainerViewController *)self debugViewsController];
  if (v3)
  {
    v4 = v3;
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 BOOLForKey:@"PlaybackControls"];

    if (v6)
    {
      v7 = [(NavContainerViewController *)self debugViewsController];
      v8 = [v7 isShowingTraceControls];

      v9 = [(NavContainerViewController *)self debugViewsController];
      v10 = v9;
      if (v8)
      {
        [v9 hideTraceControlsAnimated:1];
      }

      else
      {
        [v9 showTraceControls];
      }
    }
  }
}

- (void)setDebugViewControllerEnabled:(BOOL)a3
{
  if (self->_debugViewControllerEnabled == a3)
  {
    return;
  }

  v4 = a3;
  self->_debugViewControllerEnabled = a3;
  v6 = [(ContainerViewController *)self chromeViewController];
  v13 = [v6 mapView];

  if (!v4)
  {
    v9 = [(NavContainerViewController *)self debugViewsController];
    v10 = [(OverlayContainerViewController *)self overlayView];
    [v9 removeDebugViewsFromView:v10];
    goto LABEL_6;
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"PlaybackControls"];

  if (v8)
  {
    v9 = [(NavContainerViewController *)self debugViewsController];
    v10 = [(OverlayContainerViewController *)self overlayView];
    v11 = [(OverlayContainerViewController *)self innerLayoutGuide];
    v12 = [(ContainerViewController *)self chromeViewController];
    [v9 addDebugViewsToView:v10 layoutGuide:v11 mapView:v13 modalPresentingViewController:v12];

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

- (void)didTapMapView:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  [(NavContainerViewController *)self toggleTemporaryStatusBar];
  if ([(NavContainerViewController *)self debugViewControllerEnabled])
  {
    [(NavContainerViewController *)self _toggleTraceControls];
  }

  v7 = [(ContainerViewController *)self currentViewController];
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___MapViewResponderHandling])
  {
    [v7 didTapMapView:v9 atPoint:{x, y}];
  }

  v8 = [(NavContainerViewController *)self indicatorsViewController];
  [v8 didTapMapView:v9 atPoint:{x, y}];

  [(NavContainerViewController *)self hideJunctionViewTemporarily];
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = NavContainerViewController;
  v4 = a3;
  [(ContainerViewController *)&v11 traitCollectionDidChange:v4];
  v5 = [(NavContainerViewController *)self traitCollection];
  v6 = sub_100017FE8(v4, v5);

  if (v6)
  {
    v7 = [(NavContainerViewController *)self traitCollection];
    v8 = [v7 isLuminanceReduced];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_101002358;
    v9[3] = &unk_101661AE0;
    v10 = v8;
    v9[4] = self;
    [UIView _maps_animateForAndromeda:v8 animations:v9];
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
  v3 = [(NavContainerViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;

  if (v5 > 0.0)
  {
    v6 = +[UIApplication sharedApplication];
    v7 = [v6 userInterfaceLayoutDirection];

    v8 = [(NavContainerViewController *)self view];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    rect = v15;

    v16 = [(NavContainerViewController *)self view];
    v17 = v16;
    v18 = UIRectCornerRadiiZero[1];
    v19 = UIRectCornerRadiiZero[2];
    v20 = UIRectCornerRadiiZero[3];
    if (v7 == 1)
    {
      [v16 _rectTuckedAgainstBoundingPathEdge:8 withSize:1.0 cornerRadii:UIRectCornerRadiiZero[0] minimumPadding:{v18, v19, v20, 0.0}];
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

      v31 = [(NavContainerViewController *)self view];
      [v31 safeAreaInsets];
      v29 = v32;
    }

    else
    {
      [v16 _rectTuckedAgainstBoundingPathEdge:2 withSize:1.0 cornerRadii:UIRectCornerRadiiZero[0] minimumPadding:{v18, v19, v20, 0.0}];
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

      v31 = [(NavContainerViewController *)self view];
      [v31 safeAreaInsets];
      v29 = v50;
    }

LABEL_12:
    signContainerLeadingConstraint = self->_signContainerLeadingConstraint;
    v40 = v29;
    goto LABEL_13;
  }

  v33 = [(NavContainerViewController *)self view];
  v34 = [v33 traitCollection];
  v35 = [v34 verticalSizeClass];

  v36 = [(NavContainerViewController *)self view];
  v37 = [v36 traitCollection];
  v38 = [v37 horizontalSizeClass];

  if (v35 == 1)
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
    if (v38 == 1)
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
    v53 = [(NavContainerViewController *)self view];
    [v53 safeAreaInsets];
    v55 = v54;

    if (v55 == 0.0)
    {
      v52 = sub_100019A44();
    }
  }

  signContainerTopConstraint = self->_signContainerTopConstraint;

  [(NSLayoutConstraint *)signContainerTopConstraint setConstant:v52];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = NavContainerViewController;
  v7 = a4;
  [(ContainerViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_101002920;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = NavContainerViewController;
  v6 = a3;
  [(ContainerViewController *)&v8 willTransitionToTraitCollection:v6 withTransitionCoordinator:a4];
  v7 = [(NavContainerViewController *)self coordinator:v8.receiver];
  [v7 updateCameraForTraits:v6 containerStyle:{-[ContainerViewController containerStyle](self, "containerStyle")}];

  [(NavContainerViewController *)self _updateChildViewLayouts];
  [(NavContainerViewController *)self setShowingTemporaryStatusBar:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = NavContainerViewController;
  [(ContainerViewController *)&v6 viewDidDisappear:a3];
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

- (void)viewDidAppear:(BOOL)a3
{
  v16.receiver = self;
  v16.super_class = NavContainerViewController;
  [(OverlayContainerViewController *)&v16 viewDidAppear:a3];
  v4 = [(NavContainerViewController *)self coordinator];
  [v4 presentWithContainerViewController:self];

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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = NavContainerViewController;
  [(ContainerViewController *)&v8 viewWillAppear:?];
  v5 = [(NavContainerViewController *)self iosBasedChromeViewController];
  [v5 setNeedsUpdateComponent:@"statusBarStyle" animated:v3];

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
  v3 = [(NavContainerViewController *)self indicatorsViewController];
  v4 = [v3 view];
  [v4 removeFromSuperview];

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
    v4 = [(NavContainerViewController *)self secondarySignViewController];
    v5 = [v4 view];
    [v5 bounds];
    if (CGRectGetMidY(v14) >= 0.0)
    {
      v6 = [(NavContainerViewController *)self secondarySignViewController];
      v7 = [v6 view];
      [v7 bounds];
      MidY = CGRectGetMidY(v15);
    }
  }

  if (self->_junctionViewDisplayed)
  {
    v8 = [(NavContainerViewController *)self junctionViewController];
    v9 = [v8 view];
    [v9 bounds];
    if (MidY <= CGRectGetMidY(v16))
    {
      v10 = [(NavContainerViewController *)self junctionViewController];
      v11 = [v10 view];
      [v11 bounds];
      MidY = CGRectGetMidY(v17);
    }
  }

  v12 = [(NavContainerViewController *)self navSignViewController];
  [v12 setExpandingCornerMaskingThreshold:MidY];
}

- (void)viewDidMoveToParent
{
  self->_layoutSetup = 1;
  [(NavContainerViewController *)self _updateSignContainerConstraints];
  v3 = [(NavContainerViewController *)self indicatorsViewController];
  v4 = [v3 view];

  v5 = [v4 topAnchor];
  v6 = [(ContainerViewController *)self chromeViewController];
  v7 = [v6 viewportLayoutGuide];
  v8 = [v7 topAnchor];
  v9 = [v5 constraintEqualToAnchor:v8];
  portraitIndicatorsTopConstraint = self->_portraitIndicatorsTopConstraint;
  self->_portraitIndicatorsTopConstraint = v9;

  v45 = [v4 leadingAnchor];
  v47 = [(NavContainerViewController *)self view];
  v43 = [v47 safeAreaLayoutGuide];
  v42 = [v43 leadingAnchor];
  v41 = [v45 constraintEqualToAnchor:v42];
  v52[0] = v41;
  v49 = v4;
  v11 = [v4 trailingAnchor];
  v12 = [(NavContainerViewController *)self view];
  v13 = [v12 safeAreaLayoutGuide];
  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];
  v16 = self->_portraitIndicatorsTopConstraint;
  v52[1] = v15;
  v52[2] = v16;
  v17 = [v4 bottomAnchor];
  v18 = [(NavContainerViewController *)self view];
  v19 = [v18 bottomAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  v52[3] = v20;
  v21 = [NSArray arrayWithObjects:v52 count:4];
  portraitIndicatorsConstraints = self->_portraitIndicatorsConstraints;
  self->_portraitIndicatorsConstraints = v21;

  v23 = [v49 trailingAnchor];
  v24 = [(NavContainerViewController *)self view];
  v25 = [v24 safeAreaLayoutGuide];
  v26 = [v25 trailingAnchor];
  v27 = [v23 constraintEqualToAnchor:v26];
  landscapeIndicatorsTrailingConstraint = self->_landscapeIndicatorsTrailingConstraint;
  self->_landscapeIndicatorsTrailingConstraint = v27;

  v48 = [v49 leadingAnchor];
  v46 = [(UIView *)self->_navSignContainerView trailingAnchor];
  v44 = [v48 constraintEqualToAnchor:v46];
  v29 = self->_landscapeIndicatorsTrailingConstraint;
  v51[0] = v44;
  v51[1] = v29;
  v30 = [v49 topAnchor];
  v31 = [(ContainerViewController *)self chromeViewController];
  v32 = [v31 viewportLayoutGuide];
  v33 = [v32 topAnchor];
  v34 = [v30 constraintEqualToAnchor:v33];
  v51[2] = v34;
  v35 = [v49 bottomAnchor];
  v36 = [(NavContainerViewController *)self view];
  v37 = [v36 bottomAnchor];
  v38 = [v35 constraintEqualToAnchor:v37];
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
  v3 = [(NavContainerViewController *)self laneGuidanceViewController];
  v4 = [v3 view];

  v5 = [(NavContainerViewController *)self laneGuidanceViewController];
  [(ContainerViewController *)self addChildViewController:v5];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v183 = v4;
  v6 = [v4 heightAnchor];
  v7 = [v6 constraintEqualToConstant:0.0];
  laneGuidanceHeightConstraint = self->_laneGuidanceHeightConstraint;
  self->_laneGuidanceHeightConstraint = v7;

  v9 = [(NavContainerViewController *)self laneGuidanceViewController];
  [v9 didMoveToParentViewController:self];

  v10 = [(NavContainerViewController *)self navSignViewController];
  v11 = [v10 view];

  v12 = [(NavContainerViewController *)self navSignViewController];
  [(ContainerViewController *)self addChildViewController:v12];

  v182 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  self->_observingCollapsedHeight = 1;
  v13 = [(NavContainerViewController *)self navSignViewController];
  [v13 didMoveToParentViewController:self];

  v14 = [(NavContainerViewController *)self navSignViewController];
  v15 = NSStringFromSelector("collapsedHeight");
  [v14 addObserver:self forKeyPath:v15 options:1 context:0];

  [(NavContainerViewController *)self _updateNavSignCardWidth];
  v16 = [(NavContainerViewController *)self secondarySignViewController];
  v17 = [v16 view];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [(NavContainerViewController *)self secondarySignViewController];
  [(ContainerViewController *)self addChildViewController:v18];

  v19 = [(NavContainerViewController *)self secondarySignViewController];
  [v19 didMoveToParentViewController:self];

  v181 = v17;
  [v17 setOverrideUserInterfaceStyle:1];
  v20 = [(NavContainerViewController *)self secondarySignViewController];
  if (_UISolariumEnabled())
  {
    v21 = 38.0;
  }

  else
  {
    v21 = 10.0;
  }

  [v20 setCornerRadius:v21];

  v22 = [(NavContainerViewController *)self junctionViewController];
  v23 = [v22 view];

  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v23 setAlpha:0.0];
  v24 = [(NavContainerViewController *)self junctionViewController];
  [(ContainerViewController *)self addChildViewController:v24];

  v25 = [(NavContainerViewController *)self junctionViewController];
  [v25 didMoveToParentViewController:self];

  if (_UISolariumEnabled())
  {
    v26 = 38.0;
  }

  else
  {
    v26 = 10.0;
  }

  v180 = v23;
  [v23 _setContinuousCornerRadius:v26];
  v27 = [(NavContainerViewController *)self indicatorsViewController];
  v28 = [v27 view];

  v179 = v28;
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [(NavContainerViewController *)self indicatorsViewController];
  [(ContainerViewController *)self addChildViewController:v29];

  v30 = [(NavContainerViewController *)self indicatorsViewController];
  [v30 didMoveToParentViewController:self];

  v31 = [(ContainerViewController *)self chromeViewController];
  v32 = [(NavContainerViewController *)self indicatorsViewController];
  [v31 registerAdditionalMapViewDelegate:v32];

  v33 = [(NavContainerViewController *)self statusIndicatorManager];
  [v33 updateIndicatorType];

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
    v49 = [v46 background];
    [v49 setBackgroundColor:v48];

    v50 = [v46 background];
    [v50 setCornerRadius:30.0];

    [v46 setCornerStyle:-1];
    v51 = [(UIButton *)self->_recenterButton layer];
    LODWORD(v52) = 1045220557;
    [v51 setShadowOpacity:v52];

    height = CGSizeZero.height;
    v54 = [(UIButton *)self->_recenterButton layer];
    [v54 setShadowOffset:{CGSizeZero.width, height}];

    v55 = [(UIButton *)self->_recenterButton layer];
    [v55 setShadowRadius:1.0];

    v56 = [(UIButton *)self->_recenterButton layer];
    [v56 setShadowPathIsBounds:1];

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

    v59 = [v46 background];
    [v59 setCornerRadius:30.0];

    [(UIButton *)self->_recenterButton setConfiguration:v46];
  }

  v60 = +[NSBundle mainBundle];
  v61 = [v60 localizedStringForKey:@"[Navigation] Recenter" value:@"localized string not found" table:0];
  [(UIButton *)self->_recenterButton setAccessibilityLabel:v61];

  [(UIButton *)self->_recenterButton addTarget:self action:"_pressedRecenterButton" forControlEvents:64];
  v62 = [(UIButton *)self->_recenterButton layer];
  [v62 setCornerRadius:30.0];

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

  v66 = [(NavContainerViewController *)self view];
  [v66 insertSubview:self->_recenterButton atIndex:0];

  v67 = [[NavContainerResumeRouteControl alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  resumeRouteBanner = self->_resumeRouteBanner;
  self->_resumeRouteBanner = v67;

  v69 = [(NavContainerViewController *)self resumeRouteBanner];
  [v69 setTranslatesAutoresizingMaskIntoConstraints:0];

  v70 = [(NavContainerViewController *)self resumeRouteBanner];
  [v70 addTarget:self action:"_performBannerAction" forControlEvents:64];

  v71 = [(NavContainerViewController *)self resumeRouteBanner];
  [v71 addTarget:self action:"_closeBannerAction" forControlEvents:0x1000000];

  v72 = +[GEOPlatform sharedPlatform];
  v73 = [v72 isInternalInstall];

  if (v73)
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

  v82 = [(UIView *)self->_navSignContainerView layer];
  *v184 = v81;
  *&v184[1] = v81;
  *&v184[2] = v81;
  *&v184[3] = v81;
  *&v184[4] = v81;
  *&v184[5] = v81;
  *&v184[6] = v81;
  *&v184[7] = v81;
  [v82 setCornerRadii:v184];

  v83 = [(UIView *)self->_navSignContainerView layer];
  [v83 setCornerCurve:kCACornerCurveContinuous];

  v84 = [(UIView *)self->_navSignContainerView layer];
  [v84 setMasksToBounds:1];

  [(UIView *)self->_navSignContainerView addSubview:v182];
  v85 = self->_navSignContainerView;
  v86 = [(NavContainerViewController *)self secondarySignViewController];
  v87 = [v86 view];
  [(UIView *)v85 addSubview:v87];

  v88 = self->_navSignContainerView;
  v89 = [(NavContainerViewController *)self junctionViewController];
  v90 = [v89 view];
  [(UIView *)v88 addSubview:v90];

  [(UIView *)self->_navSignContainerView addSubview:v183];
  v91 = [(NavContainerViewController *)self view];
  v92 = [(NavContainerViewController *)self indicatorsViewController];
  v93 = [v92 view];
  [v91 insertSubview:v93 aboveSubview:self->_recenterButton];

  v94 = [(NavContainerViewController *)self view];
  v95 = self->_navSignContainerView;
  v96 = [(NavContainerViewController *)self indicatorsViewController];
  v97 = [v96 view];
  [v94 insertSubview:v95 aboveSubview:v97];

  v98 = [v182 topAnchor];
  v99 = [(UIView *)self->_navSignContainerView topAnchor];
  v100 = [v98 constraintEqualToAnchor:v99];
  signTopConstraint = self->_signTopConstraint;
  self->_signTopConstraint = v100;

  v102 = [v181 topAnchor];
  v103 = [(UIView *)self->_navSignContainerView topAnchor];
  v104 = [v102 constraintEqualToAnchor:v103];
  secondarySignTopConstraint = self->_secondarySignTopConstraint;
  self->_secondarySignTopConstraint = v104;

  v106 = [v181 bottomAnchor];
  v107 = [(UIView *)self->_navSignContainerView bottomAnchor];
  v108 = [v106 constraintEqualToAnchor:v107];
  secondarySignBottomConstraint = self->_secondarySignBottomConstraint;
  self->_secondarySignBottomConstraint = v108;

  v110 = [v180 topAnchor];
  v111 = [(UIView *)self->_navSignContainerView topAnchor];
  v112 = [v110 constraintEqualToAnchor:v111];
  junctionViewTopConstraint = self->_junctionViewTopConstraint;
  self->_junctionViewTopConstraint = v112;

  v114 = [v183 leadingAnchor];
  v176 = [(UIView *)self->_navSignContainerView leadingAnchor];
  v177 = v114;
  v175 = [v114 constraintEqualToAnchor:?];
  v186[0] = v175;
  v115 = [v183 trailingAnchor];
  v173 = [(UIView *)self->_navSignContainerView trailingAnchor];
  v174 = v115;
  v172 = [v115 constraintEqualToAnchor:?];
  v186[1] = v172;
  v116 = [v183 topAnchor];
  v170 = [(UIView *)self->_navSignContainerView topAnchor];
  v171 = v116;
  v117 = [v116 constraintEqualToAnchor:?];
  v118 = self->_laneGuidanceHeightConstraint;
  v178 = v117;
  v186[2] = v117;
  v186[3] = v118;
  v119 = [v182 leadingAnchor];
  v168 = [(UIView *)self->_navSignContainerView leadingAnchor];
  v169 = v119;
  v167 = [v119 constraintEqualToAnchor:?];
  v186[4] = v167;
  v120 = [v182 widthAnchor];
  v165 = [(UIView *)self->_navSignContainerView widthAnchor];
  v166 = v120;
  v121 = [v120 constraintEqualToAnchor:?];
  v122 = self->_signTopConstraint;
  v164 = v121;
  v186[5] = v121;
  v186[6] = v122;
  v123 = [v182 bottomAnchor];
  v124 = [(UIView *)self->_navSignContainerView bottomAnchor];
  LODWORD(v125) = 1148829696;
  v126 = 0.0;
  v162 = v124;
  v163 = v123;
  v161 = [v123 constraintEqualToAnchor:0.0 constant:v125 priority:?];
  v186[7] = v161;
  v127 = [v181 leadingAnchor];
  v159 = [(UIView *)self->_navSignContainerView leadingAnchor];
  v160 = v127;
  v158 = [v127 constraintEqualToAnchor:?];
  v186[8] = v158;
  v128 = [v181 trailingAnchor];
  [(UIView *)self->_navSignContainerView trailingAnchor];
  v155 = v157 = v128;
  v129 = [v128 constraintEqualToAnchor:?];
  v130 = self->_secondarySignTopConstraint;
  v156 = v129;
  v186[9] = v129;
  v186[10] = v130;
  v186[11] = self->_secondarySignBottomConstraint;
  v131 = [v180 leadingAnchor];
  v152 = [(UIView *)self->_navSignContainerView leadingAnchor];
  v153 = v131;
  v151 = [v131 constraintEqualToAnchor:?];
  v186[12] = v151;
  v132 = [v180 trailingAnchor];
  v149 = [(UIView *)self->_navSignContainerView trailingAnchor];
  v150 = v132;
  v133 = [v132 constraintEqualToAnchor:?];
  v134 = self->_junctionViewTopConstraint;
  v154 = v133;
  v186[13] = v133;
  v186[14] = v134;
  v135 = [(UIButton *)self->_recenterButton leadingAnchor];
  v147 = [(OverlayContainerViewController *)self innerLayoutGuide];
  [v147 leadingAnchor];
  v146 = v148 = v135;
  v145 = [v135 constraintEqualToAnchor:?];
  v186[15] = v145;
  v136 = [(UIButton *)self->_recenterButton bottomAnchor];
  v137 = [(OverlayContainerViewController *)self innerLayoutGuide];
  v138 = [v137 bottomAnchor];
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

  v139 = [v136 constraintEqualToAnchor:v138 constant:v126];
  v186[16] = v139;
  v140 = [(UIButton *)self->_recenterButton widthAnchor];
  v141 = [v140 constraintEqualToConstant:60.0];
  v186[17] = v141;
  v142 = [(UIButton *)self->_recenterButton heightAnchor];
  v143 = [v142 constraintEqualToConstant:60.0];
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
  v6 = [(NavContainerViewController *)self junctionViewController];
  v5 = [v6 view];
  [v5 setAlpha:v4];
}

- (void)updateLaneGuidanceBackgroundColor
{
  v3 = [(NavContainerViewController *)self traitCollection];
  v4 = [v3 isLuminanceReduced];

  if ((v4 & 1) == 0)
  {
    v8 = [(NavContainerViewController *)self navSignViewController];
    [v8 layoutProgress];
    v6 = v5;
    v7 = [(NavContainerViewController *)self laneGuidanceViewController];
    [v7 setLayoutProgress:v6];
  }
}

- (double)secondarySignAlpha
{
  v3 = [(NavContainerViewController *)self _isSecondarySignVisible];
  result = 0.0;
  if (v3)
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
  v6 = [(NavContainerViewController *)self secondarySignViewController];
  v5 = [v6 view];
  [v5 setAlpha:v4];
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
    v7 = [(NavContainerViewController *)self theme];
    v8 = [v7 statusBarStyle];

    return v8;
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
  v3 = [(NavContainerViewController *)self navSignViewController];
  [v3 updateFooterConstraints];

  v4 = [(NavContainerViewController *)self view];
  [v4 layoutIfNeeded];
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
  v2 = [(NavContainerViewController *)self view];
  [v2 safeAreaInsets];
  v4 = v3 > 40.0;

  return v4;
}

- (id)mapView
{
  v2 = [(ContainerViewController *)self chromeViewController];
  v3 = [v2 mapView];

  return v3;
}

- (NavIndicatorsViewController)indicatorsViewController
{
  indicatorsViewController = self->_indicatorsViewController;
  if (!indicatorsViewController)
  {
    v4 = [NavIndicatorsViewController alloc];
    v5 = [(NavContainerViewController *)self platformController];
    v6 = [v5 pedestrianARSessionStateManager];
    v7 = [(NavIndicatorsViewController *)v4 initWithDelegate:self pedestrianARSessionStateManager:v6];
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

    v6 = [(NavSecondarySignViewController *)self->_secondarySignViewController view];
    v7 = [v6 layer];
    [v7 setContinuousCorners:1];

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

- (void)insertDimmingOverlayForStaleMapEffectWithBlock:(id)a3
{
  if (self->_isArrivalState)
  {
    v5 = a3;
    v6 = [(NavContainerViewController *)self view];
    v10 = (*(a3 + 2))(v5, v6);

    v7 = [(NavContainerViewController *)self view];
    v8 = [(NavIndicatorsViewController *)self->_indicatorsViewController view];
    [v7 insertSubview:v10 belowSubview:v8];
  }

  else
  {
    indicatorsViewController = self->_indicatorsViewController;
    v10 = a3;
    [(NavIndicatorsViewController *)indicatorsViewController insertDimmingOverlayForStaleMapEffectWithBlock:?];
  }
}

- (void)setChromeViewController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super.super._chromeViewController);
  [WeakRetained unregisterAdditionalMapViewDelegate:self->_indicatorsViewController];

  v7.receiver = self;
  v7.super_class = NavContainerViewController;
  [(ContainerViewController *)&v7 setChromeViewController:v4];
  v6 = [(NavContainerViewController *)self indicatorsViewController];
  [v4 registerAdditionalMapViewDelegate:v6];
}

- (void)dealloc
{
  v3 = +[MapsLightLevelController sharedController];
  [v3 removeObserver:self];

  if (self->_observingCollapsedHeight)
  {
    v4 = [(NavContainerViewController *)self navSignViewController];
    v5 = NSStringFromSelector("collapsedHeight");
    [v4 removeObserver:self forKeyPath:v5];
  }

  v6.receiver = self;
  v6.super_class = NavContainerViewController;
  [(NavContainerViewController *)&v6 dealloc];
}

- (NavContainerViewController)initWithCoordinator:(id)a3 guidanceObserver:(id)a4 platformController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = NavContainerViewController;
  v11 = [(ContainerViewController *)&v23 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_guidanceObserver, a4);
    v12->_signStyle = 1;
    objc_storeStrong(&v12->_platformController, a5);
    [(NavContainerViewController *)v12 setCoordinator:v8];
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

    v20 = [(PlatformController *)v12->_platformController pedestrianARSessionStateManager];
    pedestrianARSessionStateManager = v12->_pedestrianARSessionStateManager;
    v12->_pedestrianARSessionStateManager = v20;
  }

  return v12;
}

@end