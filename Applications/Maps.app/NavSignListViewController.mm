@interface NavSignListViewController
- (BOOL)_shouldShowDebugViewController;
- (BOOL)hasElevationGraph;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (Class)cellClassForItemType:(unint64_t)type;
- (DirectionsElevationGraphView)graphView;
- (NavSignListViewController)initWithSignDelegate:(id)delegate;
- (NavSignListViewControllerDelegate)signDelegate;
- (NavigationDebugViewsController)debugViewController;
- (RouteStepListDataSource)dataSource;
- (double)_collapsedSignHeight;
- (double)_lastSignHeight;
- (double)_signContainerAvailableHeight;
- (double)collapsedHeight;
- (double)footerBottomPosition;
- (id)VIOEnabledHintLabel;
- (id)_displayIndexPath;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)_displayStepIndex;
- (unint64_t)_stateForItemIndex:(unint64_t)index;
- (void)_applyCornerMask;
- (void)_cancelReroute;
- (void)_cleanupStepCountdowns;
- (void)_didPan:(id)pan;
- (void)_didTap:(id)tap;
- (void)_handleNewRoute:(id)route;
- (void)_insertGraphView;
- (void)_processSignUpdate;
- (void)_reapplySignCountdown;
- (void)_triggerSignListAnalytics;
- (void)_updateActiveStepIndexAnimated:(BOOL)animated;
- (void)_updateCollectionViewBottomInset;
- (void)_updateCurrentManeuverBackground;
- (void)_updateGraphContainerTop;
- (void)_updateGraphViewIfNeeded;
- (void)_updateLaneGuidancePositioning;
- (void)_updateLayoutProgressWithDuration:(double)duration completion:(id)completion;
- (void)_updateRoute:(id)route;
- (void)_updateSelectionBackgrounds;
- (void)cell:(id)cell setPressed:(BOOL)pressed;
- (void)clearDragState;
- (void)clearPartialExpansionAnimated:(BOOL)animated;
- (void)clearSelectionAnimated:(BOOL)animated;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)hideVIOLabel:(BOOL)label;
- (void)loadView;
- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info;
- (void)navigationService:(id)service didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver forStepIndex:(unint64_t)index;
- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id;
- (void)navigationService:(id)service showLaneDirections:(id)directions;
- (void)navigationService:(id)service updateSignsWithInfo:(id)info;
- (void)navigationServiceWillReroute:(id)reroute;
- (void)reloadDataSource:(id)source;
- (void)reloadStepIndices:(id)indices forDataSource:(id)source;
- (void)reloadUIForDataSource:(id)source;
- (void)scrollToIndexPath:(id)path animated:(BOOL)animated;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setActiveStepIndex:(unint64_t)index;
- (void)setCardWidth:(double)width;
- (void)setConnectedToCarPlay:(BOOL)play animated:(BOOL)animated;
- (void)setCornerMask:(unint64_t)mask;
- (void)setCornerRadius:(double)radius;
- (void)setDebugViewControllerEnabled:(BOOL)enabled;
- (void)setDragging:(BOOL)dragging;
- (void)setExpandingCornerMaskingThreshold:(double)threshold;
- (void)setLaneGuidanceActive:(BOOL)active;
- (void)setLayoutProgress:(double)progress;
- (void)setRoute:(id)route;
- (void)setSelectedStepIndex:(unint64_t)index;
- (void)setShowingSecondaryManeuver:(BOOL)maneuver;
- (void)toggleExpansionAnimated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFooterConstraints;
- (void)updateHeightConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NavSignListViewController

- (RouteStepListDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    v4 = [RouteStepListDataSource alloc];
    traitCollection = [(NavSignListViewController *)self traitCollection];
    v6 = [(RouteStepListDataSource *)v4 initWithTraitCollection:traitCollection options:8 metrics:self->_metrics context:1];
    v7 = self->_dataSource;
    self->_dataSource = v6;

    [(RouteStepListDataSource *)self->_dataSource setDelegate:self];
    route = [(NavSignListViewController *)self route];
    [(RouteStepListDataSource *)self->_dataSource setRoute:route];

    [(RouteStepListDataSource *)self->_dataSource setActiveStepIndex:[(NavSignListViewController *)self activeStepIndex]];
    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (void)_processSignUpdate
{
  activeStepIndex = [(NavSignListViewController *)self activeStepIndex];
  v4 = [NSIndexPath indexPathForItem:activeStepIndex inSection:0];
  collectionView = [(NavSignListViewController *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:v4];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = sub_100078974();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (isKindOfClass)
  {
    if (v9)
    {
      *buf = 134349314;
      selfCopy3 = self;
      v23 = 2112;
      activeStepIndex2 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Updating cell content: %@", buf, 0x16u);
    }

    [v6 redrawContent];
    v10 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self willChangeValueForKey:v10];

    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000807BC;
    v18 = &unk_101661A90;
    selfCopy2 = self;
    v20 = v4;
    [UIView performWithoutAnimation:&v15];
    v11 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self didChangeValueForKey:v11, v15, v16, v17, v18, selfCopy2];

    dataSource = [(NavSignListViewController *)self dataSource];
    items = [dataSource items];
    v14 = [items count] - 1;

    if (activeStepIndex == v14)
    {
      [(NavSignListViewController *)self _updateCollectionViewBottomInset];
    }
  }

  else
  {
    if (v9)
    {
      *buf = 134349312;
      selfCopy3 = self;
      v23 = 2048;
      activeStepIndex2 = [(NavSignListViewController *)self activeStepIndex];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Cell for active step index (%lu) is not a nav sign maneuver cell; ignoring sign update", buf, 0x16u);
    }
  }
}

- (double)collapsedHeight
{
  [(NavSignListViewController *)self _collapsedSignHeight];
  v4 = v3;
  footerView = [(NavSignListViewController *)self footerView];
  [footerView minimumHeight];
  v7 = v6 + v4;

  return v7;
}

- (id)_displayIndexPath
{
  if (self->_isRerouting)
  {
    _displayStepIndex = 0;
  }

  else
  {
    _displayStepIndex = [(NavSignListViewController *)self _displayStepIndex];
  }

  v3 = [NSIndexPath indexPathForRow:_displayStepIndex inSection:0];

  return v3;
}

- (NavSignListViewControllerDelegate)signDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_signDelegate);

  return WeakRetained;
}

- (double)footerBottomPosition
{
  superview = [(DirectionsElevationGraphView *)self->_graphView superview];

  if (superview)
  {
    [(NavSignListViewController *)self _graphTopPosition];
    v5 = v4 + 92.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(NSLayoutConstraint *)self->_containerViewHeightConstraint constant];
  v7 = v6;
  footerView = [(NavSignListViewController *)self footerView];
  [footerView currentHeight];
  v10 = v7 + v5 + v9;

  return v10;
}

- (double)_collapsedSignHeight
{
  dataSource = [(NavSignListViewController *)self dataSource];
  items = [dataSource items];
  v5 = [items count];

  if (v5)
  {
    _displayIndexPath = [(NavSignListViewController *)self _displayIndexPath];
    collectionView = [(NavSignListViewController *)self collectionView];
    [(NavSignListViewController *)self collectionView:collectionView layout:0 sizeForItemAtIndexPath:_displayIndexPath];
    height = v8;
  }

  else
  {
    height = CGSizeZero.height;
  }

  [(RouteStepListMetrics *)self->_metrics textBottomMargin];
  v11 = v10;
  v12 = 0.0;
  if (self->_vioHintLabelVisible)
  {
    [(UILabel *)self->_vioHintLabel frame];
  }

  return height - v11 + v12;
}

- (unint64_t)_displayStepIndex
{
  if (self->_isRerouting)
  {
    return 0;
  }

  selectedStepIndex = self->_selectedStepIndex;
  if (selectedStepIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return self->_activeStepIndex;
  }

  return selectedStepIndex;
}

- (BOOL)hasElevationGraph
{
  superview = [(DirectionsElevationGraphView *)self->_graphView superview];
  v3 = superview != 0;

  return v3;
}

- (BOOL)_shouldShowDebugViewController
{
  v3 = +[GEOPlatform sharedPlatform];
  if ([v3 isInternalInstall])
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    if ([v4 BOOLForKey:@"PlaybackControls"] && self->_connectedToCarPlay)
    {
      v5 = +[MNNavigationService sharedService];
      if ([v5 simulationType] - 1 >= 4)
      {
        v7 = +[MNNavigationService sharedService];
        isNavigatingFromTrace = [v7 isNavigatingFromTrace];
      }

      else
      {
        isNavigatingFromTrace = 1;
      }
    }

    else
    {
      isNavigatingFromTrace = 0;
    }
  }

  else
  {
    isNavigatingFromTrace = 0;
  }

  return isNavigatingFromTrace;
}

- (void)setDebugViewControllerEnabled:(BOOL)enabled
{
  if (self->_debugViewControllerEnabled != enabled)
  {
    self->_debugViewControllerEnabled = enabled;
    if (enabled)
    {
      debugViewController = [(NavSignListViewController *)self debugViewController];
      debugControlsView = [debugViewController debugControlsView];

      [debugControlsView setTranslatesAutoresizingMaskIntoConstraints:0];
      view = [(NavSignListViewController *)self view];
      [view addSubview:debugControlsView];

      collectionView = [(NavSignListViewController *)self collectionView];
      [collectionView layoutMargins];
      v9 = v8;
      v11 = v10;

      [debugControlsView systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      v13 = v12;
      leadingAnchor = [debugControlsView leadingAnchor];
      leadingAnchor2 = [(UIView *)self->_containerView leadingAnchor];
      v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v9];
      v30[0] = v27;
      trailingAnchor = [debugControlsView trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_containerView trailingAnchor];
      v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v11];
      v30[1] = v15;
      heightAnchor = [debugControlsView heightAnchor];
      v17 = [heightAnchor constraintEqualToConstant:v13];
      v30[2] = v17;
      bottomAnchor = [debugControlsView bottomAnchor];
      topAnchor = [(NavSignFooterView *)self->_footerView topAnchor];
      v20 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-10.0];
      v30[3] = v20;
      v21 = [NSArray arrayWithObjects:v30 count:4];
      [NSLayoutConstraint activateConstraints:v21];

      debugViewController2 = [(NavSignListViewController *)self debugViewController];
      [debugViewController2 didManuallyAddDebugViews];
    }

    else
    {
      debugViewController = self->_debugViewController;
      if (debugViewController)
      {
        debugControlsView2 = [(NavigationDebugViewsController *)debugViewController debugControlsView];
        [debugControlsView2 removeFromSuperview];

        v25 = self->_debugViewController;

        [(NavigationDebugViewsController *)v25 didManuallyRemoveDebugViews];
      }
    }
  }
}

- (NavigationDebugViewsController)debugViewController
{
  debugViewController = self->_debugViewController;
  if (!debugViewController)
  {
    v4 = objc_opt_new();
    v5 = self->_debugViewController;
    self->_debugViewController = v4;

    [(NavigationDebugViewsController *)self->_debugViewController setShowTraceControlsForStaleLocations:0];
    [(NavigationDebugViewsController *)self->_debugViewController setAutomaticallyHideTraceControls:0];
    [(NavigationDebugViewsController *)self->_debugViewController setUpCameraSnapshotPickerVCFromViewController:self];
    debugViewController = self->_debugViewController;
  }

  return debugViewController;
}

- (void)_triggerSignListAnalytics
{
  if (self->_expanded)
  {
    v2 = 3004;
  }

  else
  {
    v2 = 140;
  }

  [GEOAPPortal captureUserAction:v2 target:505 value:0];
}

- (void)scrollToIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  collectionView = [(NavSignListViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  v10 = [collectionViewLayout layoutAttributesForItemAtIndexPath:pathCopy];

  collectionView2 = [(NavSignListViewController *)self collectionView];
  [v10 frame];
  [collectionView2 setContentOffset:animatedCopy animated:?];
}

- (void)toggleExpansionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  expanded = self->_expanded;
  self->_expanded = !expanded;
  v6 = 1.0;
  if (expanded)
  {
    v6 = 0.0;
  }

  [(NavSignListViewController *)self setLayoutProgress:v6];
  signDelegate = [(NavSignListViewController *)self signDelegate];
  [signDelegate signListHeightWillChangeAnimated:animatedCopy];

  [(NavSignListViewController *)self hideVIOLabel:0];
  collectionView = [(NavSignListViewController *)self collectionView];
  [(NavSignListViewController *)self scrollViewDidScroll:collectionView];

  [(NavSignListViewController *)self _triggerSignListAnalytics];
  v9 = 0.25;
  if (!animatedCopy)
  {
    v9 = 0.0;
  }

  [(NavSignListViewController *)self _updateLayoutProgressWithDuration:0 completion:v9];
  [(NavSignListViewController *)self _updateActiveStepIndexAnimated:animatedCopy];
  if (!self->_expanded)
  {
    if ([(NavSignListViewController *)self selectedStepIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      signDelegate2 = [(NavSignListViewController *)self signDelegate];
      [signDelegate2 selectStep:0];
    }

    else
    {
      dataSource = [(NavSignListViewController *)self dataSource];
      items = [dataSource items];
      signDelegate2 = [items objectAtIndexedSubscript:{-[NavSignListViewController selectedStepIndex](self, "selectedStepIndex")}];

      signDelegate3 = [(NavSignListViewController *)self signDelegate];
      step = [signDelegate2 step];
      [signDelegate3 selectStep:step];
    }
  }
}

- (void)_didTap:(id)tap
{
  if ([(NavSignListViewController *)self isConnectedToCarPlay])
  {
    v4 = sub_100078974();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Ignoring tap gesture, CarPlay is connected", &v5, 0xCu);
    }
  }

  else
  {

    [(NavSignListViewController *)self toggleExpansionAnimated:1];
  }
}

- (void)_didPan:(id)pan
{
  panCopy = pan;
  if ([(NavSignListViewController *)self isConnectedToCarPlay])
  {
    v5 = sub_100078974();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v27 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Ignoring pan gesture, CarPlay is connected", &v27, 0xCu);
    }
  }

  else
  {
    footerView = [(NavSignListViewController *)self footerView];
    [panCopy translationInView:footerView];
    v8 = v7;

    if ([panCopy state] == 3)
    {
      [(NavSignListViewController *)self setDragging:0];
      footerView2 = [(NavSignListViewController *)self footerView];
      [panCopy velocityInView:footerView2];
      v11 = v10;

      v12 = v8 + v11 * 0.1;
      expanded = self->_expanded;
      [(NavSignListViewController *)self _signContainerAvailableHeight];
      if (expanded)
      {
        v12 = v14 + v12;
        [(NavSignListViewController *)self _signContainerAvailableHeight];
      }

      v15 = v12 / v14;
      [(NavSignListViewController *)self setLayoutProgress:round(v15)];
      v16 = self->_expanded;
      [(NavSignListViewController *)self layoutProgress];
      v18 = v17 > 0.5;
      self->_expanded = v18;
      if (v16 != v18)
      {
        [(NavSignListViewController *)self _triggerSignListAnalytics];
        LOBYTE(v16) = self->_expanded;
      }

      v19 = 1.0 - v15;
      if ((v16 & 1) == 0)
      {
        v19 = v15;
      }

      v20 = v19 * 0.25;
      signDelegate = [(NavSignListViewController *)self signDelegate];
      [signDelegate signListHeightWillChangeAnimated:0];

      collectionView = [(NavSignListViewController *)self collectionView];
      [(NavSignListViewController *)self scrollViewDidScroll:collectionView];

      [(NavSignListViewController *)self _updateLayoutProgressWithDuration:0 completion:v20];
      [(NavSignListViewController *)self _updateActiveStepIndexAnimated:0];
    }

    else
    {
      [(NavSignListViewController *)self setDragging:1];
      v23 = self->_expanded;
      [(NavSignListViewController *)self _signContainerAvailableHeight];
      if (v23)
      {
        v8 = v24 + v8;
        [(NavSignListViewController *)self _signContainerAvailableHeight];
      }

      [(NavSignListViewController *)self setLayoutProgress:v8 / v24];
      signDelegate2 = [(NavSignListViewController *)self signDelegate];
      [signDelegate2 signListHeightWillChangeAnimated:0];

      collectionView2 = [(NavSignListViewController *)self collectionView];
      [(NavSignListViewController *)self scrollViewDidScroll:collectionView2];

      [(NavSignListViewController *)self _updateLayoutProgressWithDuration:0 completion:0.0];
    }
  }
}

- (void)_updateCurrentManeuverBackground
{
  if (self->_isRerouting)
  {
    activeStepIndex = 0;
  }

  else
  {
    activeStepIndex = [(NavSignListViewController *)self activeStepIndex];
  }

  v11 = [NSIndexPath indexPathForRow:activeStepIndex inSection:0];
  collectionView = [(NavSignListViewController *)self collectionView];
  v5 = [collectionView cellForItemAtIndexPath:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NavSignListViewController *)self layoutProgress];
    [v5 setState:1 layoutProgress:?];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NavSignListViewController *)self layoutProgress];
      [v5 setSelectedWithLayoutProgress:?];
    }
  }

  traitCollection = [(NavSignListViewController *)self traitCollection];
  isLuminanceReduced = [traitCollection isLuminanceReduced];

  if ((isLuminanceReduced & 1) == 0)
  {
    v8 = sub_1000808D8();
    [(NavSignListViewController *)self layoutProgress];
    v10 = [v8 colorWithAlphaComponent:v9 * 0.239999995];
    [(MUBlurView *)self->_graphBackgroundView setOverlayColor:v10];
  }
}

- (double)_signContainerAvailableHeight
{
  signDelegate = [(NavSignListViewController *)self signDelegate];
  [signDelegate signListAvailableHeight];
  v5 = v4;
  footerView = [(NavSignListViewController *)self footerView];
  [footerView maximumHeight];
  v8 = v5 - v7;

  return v8;
}

- (void)_insertGraphView
{
  graphContainerView = self->_graphContainerView;
  graphView = [(NavSignListViewController *)self graphView];
  [(UIView *)graphContainerView addSubview:graphView];

  [(NavSignListViewController *)self _updateGraphContainerTop];
  graphView2 = [(NavSignListViewController *)self graphView];
  leadingAnchor = [graphView2 leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_graphContainerView leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v21[0] = v17;
  graphView3 = [(NavSignListViewController *)self graphView];
  trailingAnchor = [graphView3 trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_graphContainerView trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v21[1] = v6;
  graphView4 = [(NavSignListViewController *)self graphView];
  topAnchor = [graphView4 topAnchor];
  topAnchor2 = [(UIView *)self->_graphContainerView topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v21[2] = v10;
  graphView5 = [(NavSignListViewController *)self graphView];
  heightAnchor = [graphView5 heightAnchor];
  v13 = [heightAnchor constraintEqualToConstant:60.0];
  v21[3] = v13;
  v14 = [NSArray arrayWithObjects:v21 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)_updateGraphContainerTop
{
  superview = [(DirectionsElevationGraphView *)self->_graphView superview];

  graphContainerView = self->_graphContainerView;
  if (superview)
  {
    [(UIView *)graphContainerView setAlpha:1.0];
    [(NavSignListViewController *)self _graphTopPosition];
  }

  else
  {
    [(UIView *)graphContainerView setAlpha:0.0];
    v5 = -92.0;
  }

  graphTopConstraint = self->_graphTopConstraint;

  [(NSLayoutConstraint *)graphTopConstraint setConstant:v5];
}

- (void)_updateGraphViewIfNeeded
{
  route = [(NavSignListViewController *)self route];
  elevationProfile = [route elevationProfile];

  superview = [(DirectionsElevationGraphView *)self->_graphView superview];
  v6 = superview;
  if (elevationProfile)
  {

    if (v6)
    {
      return;
    }

    [(NavSignListViewController *)self _insertGraphView];
  }

  else
  {

    if (!v6)
    {
      return;
    }

    [(DirectionsElevationGraphView *)self->_graphView removeFromSuperview];
    graphView = self->_graphView;
    self->_graphView = 0;

    [(NavSignListViewController *)self _updateGraphContainerTop];
  }

  [(NavSignListViewController *)self _applyCornerMask];
}

- (void)_updateSelectionBackgrounds
{
  v3 = [NSIndexPath indexPathForRow:[(NavSignListViewController *)self activeStepIndex] inSection:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  collectionView = [(NavSignListViewController *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        collectionView2 = [(NavSignListViewController *)self collectionView];
        v12 = [collectionView2 cellForItemAtIndexPath:v10];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v3 isEqual:v10];
          v14 = 0.0;
          if (v13)
          {
            [(NavSignListViewController *)self layoutProgress];
          }

          [v12 setSelectedWithLayoutProgress:v14];
        }
      }

      v7 = [indexPathsForVisibleItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)_cleanupStepCountdowns
{
  dataSource = [(NavSignListViewController *)self dataSource];
  items = [dataSource items];

  activeStepIndex = [(NavSignListViewController *)self activeStepIndex];
  v6 = objc_opt_new();
  if ([items count])
  {
    v7 = 0;
    do
    {
      v8 = [items objectAtIndexedSubscript:v7];
      v9 = v8;
      if (activeStepIndex != v7)
      {
        userInfo = [v8 userInfo];

        if (userInfo)
        {
          v11 = [NSIndexPath indexPathForItem:v7 inSection:0];
          [v6 addObject:v11];

          [v9 setUserInfo:0];
        }
      }

      ++v7;
    }

    while (v7 < [items count]);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        collectionView = [(NavSignListViewController *)self collectionView];
        v19 = [collectionView cellForItemAtIndexPath:v17];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v19 redrawContent];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }
}

- (void)updateHeightConstraints
{
  [(NavSignListViewController *)self layoutProgress];
  v4 = v3;
  footerView = [(NavSignListViewController *)self footerView];
  [footerView setLayoutProgress:v4];

  footerView2 = [(NavSignListViewController *)self footerView];
  [footerView2 currentHeight];
  v8 = v7;

  [(NSLayoutConstraint *)self->_footerHeightConstraint setConstant:v8];
  [(NavSignListViewController *)self _updateGraphContainerTop];
  superview = [(DirectionsElevationGraphView *)self->_graphView superview];
  if (superview)
  {
    v10 = 92.0;
  }

  else
  {
    v10 = 0.0;
  }

  [(NavSignListViewController *)self _collapsedSignHeight];
  v12 = v11;
  [(NavSignListViewController *)self _signContainerAvailableHeight];
  v14 = v13 - v10;
  [(NavSignListViewController *)self layoutProgress];
  v16 = v12 + v14 * v15;
  [(NSLayoutConstraint *)self->_containerViewHeightConstraint setConstant:v16];
  [(NSLayoutConstraint *)self->_gradientViewTopConstraint setConstant:v12];
  [(NavSignListViewController *)self layoutProgress];
  [(MUGradientView *)self->_gradientView setAlpha:?];
  signDelegate = [(NavSignListViewController *)self signDelegate];
  [signDelegate setSignListHeight:v16 + v8];

  if (self->_expanded)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    footerView = self->_footerView;
  }

  else
  {
    footerView = self->_footerView;
    top = -30.0;
    left = 0.0;
    bottom = 0.0;
    right = 0.0;
  }

  [(NavSignFooterView *)footerView _setTouchInsets:top, left, bottom, right];
  [(NavSignListViewController *)self _updateCurrentManeuverBackground];

  [(NavSignListViewController *)self _updateCollectionViewBottomInset];
}

- (void)_updateLaneGuidancePositioning
{
  view = [(NavSignListViewController *)self view];
  superview = [view superview];
  [superview layoutIfNeeded];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100683790;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [UIView animateWithDuration:117440512 delay:v5 options:0 animations:0.3 completion:0.0];
}

- (void)_updateLayoutProgressWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  signDelegate = [(NavSignListViewController *)self signDelegate];
  blockToAnimateAlongWithSignHeightChanges = [signDelegate blockToAnimateAlongWithSignHeightChanges];

  view = [(NavSignListViewController *)self view];
  superview = [view superview];
  [superview layoutIfNeeded];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100683ABC;
  v15[3] = &unk_101661090;
  v15[4] = self;
  v16 = blockToAnimateAlongWithSignHeightChanges;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100683B48;
  v13[3] = &unk_101655D58;
  v13[4] = self;
  v14 = completionCopy;
  v11 = completionCopy;
  v12 = blockToAnimateAlongWithSignHeightChanges;
  [UIView animateWithDuration:117440512 delay:v15 options:v13 animations:duration completion:0.0];
}

- (void)_updateActiveStepIndexAnimated:(BOOL)animated
{
  animatedCopy = animated;
  dataSource = [(NavSignListViewController *)self dataSource];
  items = [dataSource items];
  v7 = [items count];

  if (v7)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"MapsPPTGuidanceWillUpdateNotifcation" object:0];

    view = [(NavSignListViewController *)self view];
    superview = [view superview];
    [superview layoutIfNeeded];

    _displayIndexPath = [(NavSignListViewController *)self _displayIndexPath];
    if (animatedCopy)
    {
      v12 = 0.25;
    }

    else
    {
      v12 = 0.0;
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100683D64;
    v15[3] = &unk_101661A90;
    v15[4] = self;
    v16 = _displayIndexPath;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100683E94;
    v14[3] = &unk_101661738;
    v14[4] = self;
    v13 = _displayIndexPath;
    [UIView animateWithDuration:117440512 delay:v15 options:v14 animations:v12 completion:0.0];
  }
}

- (void)_updateRoute:(id)route
{
  routeCopy = route;
  if (routeCopy)
  {
    route = routeCopy;
    v6 = sub_100078974();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      uniqueRouteID = [route uniqueRouteID];
      v16 = 134349314;
      selfCopy3 = self;
      v18 = 2112;
      v19 = uniqueRouteID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Updating route (%@) from navigation callback", &v16, 0x16u);
    }

    [(NavSignListViewController *)self setRoute:route];
  }

  else
  {
    v8 = +[MNNavigationService sharedService];
    v9 = +[MNNavigationService sharedService];
    route = [v9 route];

    [v8 state];
    IsNavigating = MNNavigationServiceStateIsNavigating();
    v11 = sub_100078974();
    v12 = v11;
    if (IsNavigating)
    {
      v13 = route == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = 134349056;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}p] Skipped updating route from navigation service", &v16, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        uniqueRouteID2 = [route uniqueRouteID];
        v16 = 134349314;
        selfCopy3 = self;
        v18 = 2112;
        v19 = uniqueRouteID2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Updating route (%@) from navigation service", &v16, 0x16u);
      }

      [(NavSignListViewController *)self setRoute:route];
    }
  }
}

- (void)_handleNewRoute:(id)route
{
  self->_isRerouting = 0;
  self->_selectedStepIndex = 0x7FFFFFFFFFFFFFFFLL;
  [(NavSignListViewController *)self _updateRoute:route];

  [(NavSignListViewController *)self _updateCollectionViewBottomInset];
}

- (void)_cancelReroute
{
  v3 = NSStringFromSelector("collapsedHeight");
  [(NavSignListViewController *)self willChangeValueForKey:v3];

  self->_isRerouting = 0;
  collectionView = [(NavSignListViewController *)self collectionView];
  [collectionView reloadData];

  [(NavSignListViewController *)self _updateActiveStepIndexAnimated:0];
  v5 = NSStringFromSelector("collapsedHeight");
  [(NavSignListViewController *)self didChangeValueForKey:v5];

  [(NavSignListViewController *)self _updateCollectionViewBottomInset];
}

- (void)navigationServiceWillReroute:(id)reroute
{
  if ([reroute arrivalState] == 1)
  {
    v4 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self willChangeValueForKey:v4];

    self->_isRerouting = 1;
    collectionView = [(NavSignListViewController *)self collectionView];
    [collectionView reloadData];

    [(NavSignListViewController *)self _updateActiveStepIndexAnimated:1];
    v6 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self didChangeValueForKey:v6];

    [(NavSignListViewController *)self _updateCollectionViewBottomInset];
  }
}

- (void)navigationService:(id)service hideLaneDirectionsForId:(id)id
{
  idCopy = id;
  [(NavSignListViewController *)self setLaneGuidanceActive:0];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  dataSource = [(NavSignListViewController *)self dataSource];
  items = [dataSource items];

  v8 = [items countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(items);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        userInfo = [v12 userInfo];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          userInfo2 = [v12 userInfo];
          uniqueID = [userInfo2 uniqueID];
          v17 = idCopy;
          if (!(idCopy | uniqueID) || (v18 = v17, v19 = [uniqueID isEqual:v17], v18, uniqueID, uniqueID, v19))
          {
            [v12 setUserInfo:0];
          }
        }
      }

      v9 = [items countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  activeStepIndex = [(NavSignListViewController *)selfCopy activeStepIndex];
  dataSource2 = [(NavSignListViewController *)selfCopy dataSource];
  items2 = [dataSource2 items];
  if (activeStepIndex >= [items2 count])
  {
    v25 = 0;
  }

  else
  {
    dataSource3 = [(NavSignListViewController *)selfCopy dataSource];
    items3 = [dataSource3 items];
    v25 = [items3 objectAtIndexedSubscript:activeStepIndex];
  }

  [v25 setUserInfo:selfCopy->_latestSignGuidance];
  [(NavSignListViewController *)selfCopy _processSignUpdate];
}

- (void)navigationService:(id)service showLaneDirections:(id)directions
{
  directionsCopy = directions;
  titles = [directionsCopy titles];
  v6 = [titles count];

  if (v6)
  {
    v7 = directionsCopy;
  }

  else
  {
    v31 = [MNGuidanceLaneInfo alloc];
    uniqueID = [directionsCopy uniqueID];
    isForManeuver = [directionsCopy isForManeuver];
    lanes = [directionsCopy lanes];
    primarySign = [(MNGuidanceSignInfo *)self->_latestSignGuidance primarySign];
    titles2 = [primarySign titles];
    instructions = [directionsCopy instructions];
    variableOverrides = [directionsCopy variableOverrides];
    distanceDetailLevel = [directionsCopy distanceDetailLevel];
    LODWORD(v30) = [directionsCopy composedGuidanceEventIndex];
    v29 = distanceDetailLevel;
    v16 = uniqueID;
    v17 = [v31 initWithID:uniqueID isForManeuver:isForManeuver lanes:lanes titles:titles2 instructions:instructions variableOverrides:variableOverrides distanceDetailLevel:v29 composedGuidanceEventIndex:v30];

    primarySign2 = [(MNGuidanceSignInfo *)self->_latestSignGuidance primarySign];
    primaryStrings = [primarySign2 primaryStrings];
    [v17 setPrimaryStrings:primaryStrings];

    v7 = v17;
  }

  v33 = v7;
  objc_storeStrong(&self->_latestLaneInfo, v7);
  [(NavSignListViewController *)self setLaneGuidanceActive:1];
  activeStepIndex = [(NavSignListViewController *)self activeStepIndex];
  dataSource = [(NavSignListViewController *)self dataSource];
  items = [dataSource items];
  if (activeStepIndex >= [items count])
  {
    v25 = 0;
  }

  else
  {
    dataSource2 = [(NavSignListViewController *)self dataSource];
    items2 = [dataSource2 items];
    v25 = [items2 objectAtIndexedSubscript:activeStepIndex];
  }

  userInfo = [v25 userInfo];
  if ([v33 isForManeuver] && (latestSignGuidance = self->_latestSignGuidance, userInfo != latestSignGuidance) || (objc_msgSend(v33, "isForManeuver") & 1) == 0 && (v28 = objc_msgSend(v33, "isEqual:", userInfo), latestSignGuidance = v33, (v28 & 1) == 0))
  {
    [v25 setUserInfo:latestSignGuidance];
  }

  [(NavSignListViewController *)self _processSignUpdate];
}

- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info
{
  distanceCopy = distance;
  route = [(NavSignListViewController *)self route];
  [route distance];
  v9 = v8;
  [distanceCopy distanceRemainingToEndOfLeg];
  if (v9 < v10)
  {
    [(DirectionsElevationGraphView *)self->_graphView setNavigationProgress:0.0];
  }

  else
  {
    route2 = [(NavSignListViewController *)self route];
    [route2 distance];
    v13 = v12;
    [distanceCopy distanceRemainingToEndOfLeg];
    [(DirectionsElevationGraphView *)self->_graphView setNavigationProgress:v13 - v14];
  }
}

- (void)navigationService:(id)service didUpdateDistanceUntilManeuver:(double)maneuver timeUntilManeuver:(double)untilManeuver forStepIndex:(unint64_t)index
{
  v9 = [(NavSignListViewController *)self route:service];
  isWalkingOnlyTransitRoute = [v9 isWalkingOnlyTransitRoute];

  if (isWalkingOnlyTransitRoute)
  {
    dataSource = [(NavSignListViewController *)self dataSource];
    items = [dataSource items];
    v13 = [items count];

    if (!v13)
    {
      v20 = sub_100078974();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v29 = 134349056;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}p] Our data source is empty; ignoring distance info update", &v29, 0xCu);
      }

      goto LABEL_18;
    }

    dataSource2 = [(NavSignListViewController *)self dataSource];
    v15 = [dataSource2 itemIndexForStepIndex:index];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    activeStepIndex = [(NavSignListViewController *)self activeStepIndex];
    [(NavSignListViewController *)self setActiveStepIndex:v16];
    dataSource3 = [(NavSignListViewController *)self dataSource];
    items2 = [dataSource3 items];
    v20 = [items2 objectAtIndexedSubscript:v16];

    v21 = sub_100078974();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      userInfo = [v20 userInfo];
      v29 = 134349314;
      selfCopy2 = self;
      v31 = 2112;
      v32 = userInfo;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Existing item user info: %@", &v29, 0x16u);
    }

    userInfo2 = [v20 userInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v25 = [NSNumber numberWithDouble:maneuver];
      [v20 setUserInfo:v25];

      [v20 setState:2];
      [(NavSignListViewController *)self _processSignUpdate];
    }

    if (activeStepIndex == v16)
    {
      if (self->_expanded || self->_layoutProgress > 0.0)
      {
        collectionView = [(NavSignListViewController *)self collectionView];
        [(NavSignListViewController *)self scrollViewDidScroll:collectionView];

LABEL_18:
        return;
      }

      selfCopy4 = self;
      v28 = 0;
    }

    else
    {
      selfCopy4 = self;
      v28 = 1;
    }

    [(NavSignListViewController *)selfCopy4 _updateActiveStepIndexAnimated:v28];
    goto LABEL_18;
  }
}

- (void)navigationService:(id)service updateSignsWithInfo:(id)info
{
  serviceCopy = service;
  infoCopy = info;
  v8 = sub_100078974();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v36 = 134349314;
    selfCopy7 = self;
    v38 = 2112;
    v39 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Got an updated sign info: %@", &v36, 0x16u);
  }

  objc_storeStrong(&self->_latestSignGuidance, info);
  dataSource = [(NavSignListViewController *)self dataSource];
  items = [dataSource items];
  v11 = [items count];

  if (!v11)
  {
    route = [serviceCopy route];
    route2 = [(NavSignListViewController *)self route];
    navigationState = [serviceCopy navigationState];
    v28 = sub_100078974();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
    if (!route2 && route && navigationState == 2)
    {
      if (v29)
      {
        v36 = 134349056;
        selfCopy7 = self;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}p] Our data source is empty; attempting to recover", &v36, 0xCu);
      }

      [(NavSignListViewController *)self _handleNewRoute:route];
    }

    else
    {
      if (v29)
      {
        v36 = 134349056;
        selfCopy7 = self;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}p] Our data source is empty; ignoring sign info update", &v36, 0xCu);
      }
    }

    goto LABEL_26;
  }

  activeStepIndex = [(NavSignListViewController *)self activeStepIndex];
  dataSource2 = [(NavSignListViewController *)self dataSource];
  items2 = [dataSource2 items];
  v15 = [items2 count];

  if (activeStepIndex < v15)
  {
    dataSource3 = [(NavSignListViewController *)self dataSource];
    v17 = [dataSource3 itemIndexForStepIndex:{objc_msgSend(infoCopy, "stepIndex")}];

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
    }

    activeStepIndex2 = [(NavSignListViewController *)self activeStepIndex];
    [(NavSignListViewController *)self setActiveStepIndex:v17];
    dataSource4 = [(NavSignListViewController *)self dataSource];
    items3 = [dataSource4 items];
    route = [items3 objectAtIndexedSubscript:v17];

    v22 = sub_100078974();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      userInfo = [route userInfo];
      v36 = 134349314;
      selfCopy7 = self;
      v38 = 2112;
      v39 = userInfo;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}p] Existing item user info: %@", &v36, 0x16u);
    }

    userInfo2 = [route userInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [route setUserInfo:infoCopy];
      [route setState:2];
      [(NavSignListViewController *)self _processSignUpdate];
    }

    if (activeStepIndex2 == v17)
    {
      if (self->_expanded || self->_layoutProgress > 0.0)
      {
        route2 = [(NavSignListViewController *)self collectionView];
        [(NavSignListViewController *)self scrollViewDidScroll:route2];
LABEL_26:

        goto LABEL_29;
      }

      selfCopy6 = self;
      v35 = 0;
    }

    else
    {
      selfCopy6 = self;
      v35 = 1;
    }

    [(NavSignListViewController *)selfCopy6 _updateActiveStepIndexAnimated:v35];
    goto LABEL_29;
  }

  route = sub_100078974();
  if (os_log_type_enabled(route, OS_LOG_TYPE_INFO))
  {
    activeStepIndex3 = [(NavSignListViewController *)self activeStepIndex];
    dataSource5 = [(NavSignListViewController *)self dataSource];
    items4 = [dataSource5 items];
    v33 = [items4 count];
    v36 = 134349568;
    selfCopy7 = self;
    v38 = 2048;
    v39 = activeStepIndex3;
    v40 = 2048;
    v41 = v33;
    _os_log_impl(&_mh_execute_header, route, OS_LOG_TYPE_INFO, "[%{public}p] The active step index (%lu) is larger than our data source items (%lu); ignoring sign info update", &v36, 0x20u);
  }

LABEL_29:
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(NavSignListViewController *)self view];
  window = [view window];
  [window safeAreaInsets];
  v6 = 20.0;
  if (v7 <= 20.0)
  {
    view2 = [(NavSignListViewController *)self view];
    window2 = [view2 window];
    [window2 safeAreaInsets];
    v6 = v10;
  }

  collectionView = [(NavSignListViewController *)self collectionView];
  [collectionView contentOffset];
  v13 = v12;

  v21 = [NSIndexPath indexPathForItem:[(NavSignListViewController *)self activeStepIndex] inSection:0];
  collectionView2 = [(NavSignListViewController *)self collectionView];
  v15 = [collectionView2 cellForItemAtIndexPath:v21];

  v16 = 0.0;
  if (v15)
  {
    [v15 frame];
    if (v13 >= v17 - v6)
    {
      if (v13 >= v17)
      {
        v19 = v17 + v18;
        v16 = 1.0;
        if (v13 >= v17 + v18)
        {
          v16 = 0.0;
          if (v13 < v19 + 20.0)
          {
            v16 = (v19 - v13) * 0.05 + 1.0;
          }
        }
      }

      else
      {
        v16 = (v13 - (v17 - v6)) / v6;
      }
    }
  }

  self->_activeStepFadeIn = v16;
  signDelegate = [(NavSignListViewController *)self signDelegate];
  [signDelegate signListDidScroll];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  layoutCopy = layout;
  pathCopy = path;
  computedWidth = self->_computedWidth;
  if (computedWidth)
  {
    [(NSNumber *)computedWidth cgFloatValue];
    cardWidth = v12;
  }

  else
  {
    cardWidth = self->_cardWidth;
  }

  if (self->_isRerouting)
  {
    v14 = 96.0;
  }

  else
  {
    dataSource = [(NavSignListViewController *)self dataSource];
    items = [dataSource items];
    v17 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    cellClass = [v17 cellClass];
    if (qword_10195F520 != -1)
    {
      dispatch_once(&qword_10195F520, &stru_101657A70);
    }

    v19 = 160.0;
    if (!byte_10195F518)
    {
      v19 = 200.0;
    }

    [cellClass heightForItem:v17 width:cardWidth maximumHeight:v19];
    v21 = v20;
    if (qword_10195F520 != -1)
    {
      dispatch_once(&qword_10195F520, &stru_101657A70);
    }

    v22 = 200.0;
    if (byte_10195F518)
    {
      v22 = 160.0;
    }

    if (v21 >= v22)
    {
      if (byte_10195F518)
      {
        v14 = 160.0;
      }

      else
      {
        v14 = 200.0;
      }
    }

    else
    {
      cellClass2 = [v17 cellClass];
      if (qword_10195F520 != -1)
      {
        dispatch_once(&qword_10195F520, &stru_101657A70);
      }

      v24 = 160.0;
      if (!byte_10195F518)
      {
        v24 = 200.0;
      }

      [cellClass2 heightForItem:v17 width:cardWidth maximumHeight:v24];
      v14 = v25;
    }
  }

  v26 = cardWidth;
  v27 = v14;
  result.height = v27;
  result.width = v26;
  return result;
}

- (unint64_t)_stateForItemIndex:(unint64_t)index
{
  if ([(NavSignListViewController *)self activeStepIndex]> index)
  {
    return 0;
  }

  if ([(NavSignListViewController *)self activeStepIndex]== index)
  {
    return 1;
  }

  return 2;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [pathCopy row];
    dataSource = [(NavSignListViewController *)self dataSource];
    items = [dataSource items];
    v12 = [items objectAtIndexedSubscript:v9];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1006855EC;
    v14[3] = &unk_10165EB08;
    v15 = v12;
    selfCopy = self;
    v17 = cellCopy;
    v18 = v9;
    v13 = v12;
    [UIView performWithoutAnimation:v14];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  if (self->_isRerouting)
  {
    pathCopy = path;
    viewCopy = view;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

    [v10 startAnimating];
    [(NavSignListViewController *)self layoutProgress];
    [v10 setSelectedWithLayoutProgress:?];
  }

  else
  {
    pathCopy2 = path;
    viewCopy2 = view;
    v13 = [pathCopy2 row];
    dataSource = [(NavSignListViewController *)self dataSource];
    items = [dataSource items];
    v16 = [items objectAtIndexedSubscript:v13];

    v17 = NSStringFromClass([v16 cellClass]);
    v18 = [viewCopy2 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:pathCopy2];

    [v16 setShowsHairline:{-[NavSignListViewController _showsHairlineForItemIndex:](self, "_showsHairlineForItemIndex:", v13)}];
    [v18 setItem:v16];
    if ([(NavSignListViewController *)self isLaneGuidanceActive])
    {
      v19 = v13 == [(NavSignListViewController *)self activeStepIndex];
    }

    else
    {
      v19 = 0;
    }

    [v18 setHideManeuverArrow:v19];
    v20 = [(NavSignListViewController *)self _stateForItemIndex:v13];
    [(NavSignListViewController *)self layoutProgress];
    [v18 setState:v20 layoutProgress:?];
    [v18 setDelegate:self];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1006858F8;
    v22[3] = &unk_101661B18;
    v10 = v18;
    v23 = v10;
    [UIView performWithoutAnimation:v22];
  }

  return v10;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (self->_isRerouting)
  {
    return 1;
  }

  v5 = [(NavSignListViewController *)self dataSource:view];
  items = [v5 items];
  v7 = [items count];

  return v7;
}

- (Class)cellClassForItemType:(unint64_t)type
{
  if (type == 1)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_reapplySignCountdown
{
  activeStepIndex = self->_activeStepIndex;
  items = [(RouteStepListDataSource *)self->_dataSource items];
  v5 = [items count];

  if (activeStepIndex < v5)
  {
    if (![(NavSignListViewController *)self isLaneGuidanceActive]|| (p_latestSignGuidance = &self->_latestLaneInfo, [(MNGuidanceLaneInfo *)self->_latestLaneInfo isForManeuver]))
    {
      p_latestSignGuidance = &self->_latestSignGuidance;
    }

    v9 = *p_latestSignGuidance;
    items2 = [(RouteStepListDataSource *)self->_dataSource items];
    v8 = [items2 objectAtIndexedSubscript:activeStepIndex];
    [v8 setUserInfo:v9];
  }
}

- (void)reloadStepIndices:(id)indices forDataSource:(id)source
{
  if (!self->_isRerouting)
  {
    indicesCopy = indices;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100685BA4;
    v8[3] = &unk_101656938;
    v9 = objc_opt_new();
    v6 = v9;
    [indicesCopy enumerateIndexesUsingBlock:v8];

    collectionView = [(NavSignListViewController *)self collectionView];
    [collectionView reloadItemsAtIndexPaths:v6];
  }
}

- (void)reloadUIForDataSource:(id)source
{
  v4 = NSStringFromSelector("collapsedHeight");
  [(NavSignListViewController *)self willChangeValueForKey:v4];

  [(NavSignListViewController *)self _reapplySignCountdown];
  collectionView = [(NavSignListViewController *)self collectionView];
  [collectionView reloadData];

  v6 = NSStringFromSelector("collapsedHeight");
  [(NavSignListViewController *)self didChangeValueForKey:v6];

  [(NavSignListViewController *)self _updateActiveStepIndexAnimated:0];
}

- (void)reloadDataSource:(id)source
{
  v4 = NSStringFromSelector("collapsedHeight");
  [(NavSignListViewController *)self willChangeValueForKey:v4];

  dataSource = [(NavSignListViewController *)self dataSource];
  v6 = +[MNNavigationService sharedService];
  v7 = [dataSource itemIndexForStepIndex:{objc_msgSend(v6, "stepIndex")}];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  self->_activeStepIndex = v8;
  [(NavSignListViewController *)self _reapplySignCountdown];
  collectionView = [(NavSignListViewController *)self collectionView];
  [collectionView reloadData];

  [(RouteStepListDataSource *)self->_dataSource setActiveStepIndex:self->_activeStepIndex];
  v10 = NSStringFromSelector("collapsedHeight");
  [(NavSignListViewController *)self didChangeValueForKey:v10];

  [(NavSignListViewController *)self _updateActiveStepIndexAnimated:0];
}

- (void)cell:(id)cell setPressed:(BOOL)pressed
{
  cellCopy = cell;
  if (GEOConfigGetBOOL() && self->_expanded)
  {
    if (pressed)
    {
      [cellCopy setSelectedWithLayoutProgress:1.0];
      collectionView = [(NavSignListViewController *)self collectionView];
      v8 = [collectionView indexPathForCell:cellCopy];

      if (v8)
      {
        v9 = [v8 row];
        if (v9 != [(NavSignListViewController *)self activeStepIndex])
        {
          selfCopy3 = self;
          v11 = v9;
LABEL_14:
          [(NavSignListViewController *)selfCopy3 setSelectedStepIndex:v11];

          goto LABEL_15;
        }
      }

      else
      {
        v14 = sub_100078974();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = 134349314;
          selfCopy2 = self;
          v17 = 2112;
          v18 = cellCopy;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}p] Selected cell: %@ but no indexPath available", &v15, 0x16u);
        }
      }

      selfCopy3 = self;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    state = [cellCopy state];
    v13 = 0.0;
    if (state == 1)
    {
      v13 = 1.0;
    }

    [cellCopy setSelectedWithLayoutProgress:v13];
    [(NavSignListViewController *)self setSelectedStepIndex:0x7FFFFFFFFFFFFFFFLL];
  }

LABEL_15:
}

- (void)_updateCollectionViewBottomInset
{
  viewIfLoaded = [(NavSignListViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];

  if (window)
  {
    collectionView = [(NavSignListViewController *)self collectionView];
    [collectionView contentInset];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    collectionView2 = [(NavSignListViewController *)self collectionView];
    [collectionView2 frame];
    Height = CGRectGetHeight(v18);
    [(NavSignListViewController *)self _lastSignHeight];
    v15 = Height - v14;

    collectionView3 = [(NavSignListViewController *)self collectionView];
    [collectionView3 setContentInset:{v7, v9, v15, v11}];
  }
}

- (void)clearPartialExpansionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(NavSignListViewController *)self isDragging])
  {
    [(NavSignListViewController *)self layoutProgress];
    v6 = v5;
    v8 = fabs(v5) <= 2.22044605e-16;
    v7 = fabs(v5 + -1.0);
    v8 = v8 || v7 <= 2.22044605e-16;
    if (!v8)
    {
      v9 = sub_100078974();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v6 <= 0.5)
      {
        v11 = 0.0;
        if (v10)
        {
          *buf = 134349056;
          selfCopy2 = self;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Clearing partial expansion by force collapsing the list", buf, 0xCu);
        }

        v12 = 0;
      }

      else
      {
        v11 = 1.0;
        if (v10)
        {
          *buf = 134349056;
          selfCopy2 = self;
          v12 = 1;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Clearing partial expansion by forcing full expansion", buf, 0xCu);
        }

        else
        {
          v12 = 1;
        }
      }

      self->_expanded = v12;
      [(NavSignListViewController *)self setLayoutProgress:v11];
      v13 = 1.0 - v6;
      if (v6 <= 0.5)
      {
        v13 = v6;
      }

      v14 = v13 * 0.25;
      if (animatedCopy)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0.0;
      }

      signDelegate = [(NavSignListViewController *)self signDelegate];
      [signDelegate signListHeightWillChangeAnimated:animatedCopy];

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10068626C;
      v17[3] = &unk_101661AE0;
      v17[4] = self;
      v18 = animatedCopy;
      [(NavSignListViewController *)self _updateLayoutProgressWithDuration:v17 completion:v15];
    }
  }
}

- (void)clearDragState
{
  if ([(NavSignListViewController *)self isDragging])
  {
    v3 = sub_100078974();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 134349056;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%{public}p] Drag state was leaked as true! Removing...", &v4, 0xCu);
    }

    [(NavSignListViewController *)self setDragging:0];
  }
}

- (void)clearSelectionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(NavSignListViewController *)self setSelectedStepIndex:0x7FFFFFFFFFFFFFFFLL];

  [(NavSignListViewController *)self _updateActiveStepIndexAnimated:animatedCopy];
}

- (void)updateFooterConstraints
{
  if (self->_expanded)
  {
    signDelegate = [(NavSignListViewController *)self signDelegate];
    [signDelegate signListHeight];
    v5 = v4;
    footerView = [(NavSignListViewController *)self footerView];
    [footerView currentHeight];
    [(NSLayoutConstraint *)self->_containerViewHeightConstraint setConstant:v5 - v7];
  }
}

- (void)setLaneGuidanceActive:(BOOL)active
{
  if (self->_laneGuidanceActive != active)
  {
    self->_laneGuidanceActive = active;
    [(NavSignListViewController *)self _updateLaneGuidancePositioning];
  }
}

- (double)_lastSignHeight
{
  dataSource = [(NavSignListViewController *)self dataSource];
  items = [dataSource items];
  v5 = [items count];

  if (!v5)
  {
    return CGSizeZero.height;
  }

  if (self->_isRerouting)
  {
    v6 = 0;
  }

  else
  {
    dataSource2 = [(NavSignListViewController *)self dataSource];
    items2 = [dataSource2 items];
    v6 = [items2 count] - 1;
  }

  v10 = [NSIndexPath indexPathForRow:v6 inSection:0];
  collectionView = [(NavSignListViewController *)self collectionView];
  [(NavSignListViewController *)self collectionView:collectionView layout:0 sizeForItemAtIndexPath:v10];
  v7 = v12;

  return v7;
}

- (void)setConnectedToCarPlay:(BOOL)play animated:(BOOL)animated
{
  if (self->_connectedToCarPlay != play)
  {
    animatedCopy = animated;
    playCopy = play;
    self->_connectedToCarPlay = play;
    v7 = sub_100078974();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      selfCopy = self;
      v17 = 1024;
      v18 = playCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] setConnectedToCarPlay: %d", buf, 0x12u);
    }

    if (self->_expanded != playCopy)
    {
      [(NavSignListViewController *)self toggleExpansionAnimated:animatedCopy];
    }

    v8 = 0.0;
    v10 = 3221225472;
    v9 = _NSConcreteStackBlock;
    v11 = sub_100686708;
    v12 = &unk_101661AE0;
    if (animatedCopy)
    {
      v8 = 0.25;
    }

    selfCopy2 = self;
    v14 = playCopy;
    [UIView animateWithDuration:117440512 delay:&v9 options:0 animations:v8 completion:0.0];
    [(NavSignListViewController *)self setDebugViewControllerEnabled:[(NavSignListViewController *)self _shouldShowDebugViewController:v9]];
  }
}

- (void)_applyCornerMask
{
  cornerMask = self->_cornerMask;
  hasElevationGraph = [(NavSignListViewController *)self hasElevationGraph];
  v5 = self->_cornerMask;
  if (v5)
  {
    cornerRadius = self->_cornerRadius;
  }

  else
  {
    cornerRadius = 0.0;
  }

  if ((v5 & 2) != 0)
  {
    v7 = self->_cornerRadius;
  }

  else
  {
    v7 = 0.0;
  }

  if ((v5 & 4) != 0)
  {
    v8 = self->_cornerRadius;
  }

  else
  {
    v8 = 0.0;
  }

  if ((v5 & 8) != 0)
  {
    v9 = self->_cornerRadius;
  }

  else
  {
    v9 = 0.0;
  }

  if (hasElevationGraph)
  {
    layoutProgress = self->_layoutProgress;
    width = cornerRadius;
    v12 = v7;
    if (layoutProgress > 0.0)
    {
      if (fabs(layoutProgress + -1.0) <= 2.22044605e-16)
      {
        width = CGSizeZero.width;
        cornerRadius = CGSizeZero.height;
        v7 = cornerRadius;
        v12 = CGSizeZero.width;
      }

      else
      {
        cornerRadius = self->_cornerRadius - layoutProgress * self->_cornerRadius;
        width = cornerRadius;
        v7 = cornerRadius;
        v12 = cornerRadius;
      }
    }

    layer = [(MUBlurView *)self->_backgroundView layer];
    v14 = layer;
    *&v21 = v8;
    *(&v21 + 1) = v8;
    *&v22 = v9;
    *(&v22 + 1) = v9;
    v23 = v12;
    v24 = v7;
    v25 = width;
  }

  else
  {
    layer = [(MUBlurView *)self->_backgroundView layer];
    v14 = layer;
    *&v21 = v8;
    *(&v21 + 1) = v8;
    *&v22 = v9;
    *(&v22 + 1) = v9;
    v23 = v7;
    v24 = v7;
    v25 = cornerRadius;
  }

  v26 = cornerRadius;
  [layer setCornerRadii:&v21];

  v15 = 0.0;
  if (cornerMask)
  {
    v16 = self->_cornerRadius;
  }

  else
  {
    v16 = 0.0;
  }

  if ((cornerMask & 2) != 0)
  {
    v17 = self->_cornerRadius;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = [(UIView *)self->_graphContainerView layer:v21];
  v21 = 0u;
  v22 = 0u;
  v23 = v17;
  v24 = v17;
  v25 = v16;
  v26 = v16;
  [v18 setCornerRadii:&v21];

  if (cornerMask)
  {
    v19 = self->_cornerRadius;
  }

  else
  {
    v19 = 0.0;
  }

  if ((cornerMask & 2) != 0)
  {
    v15 = self->_cornerRadius;
  }

  layer2 = [(MUBlurView *)self->_graphBackgroundView layer];
  v21 = 0u;
  v22 = 0u;
  v23 = v15;
  v24 = v15;
  v25 = v19;
  v26 = v19;
  [layer2 setCornerRadii:&v21];
}

- (void)setExpandingCornerMaskingThreshold:(double)threshold
{
  if (self->_expandingCornerMaskingThreshold != threshold)
  {
    self->_expandingCornerMaskingThreshold = threshold;
    [(NavSignListViewController *)self _applyCornerMask];
  }
}

- (void)setCornerMask:(unint64_t)mask
{
  if (self->_cornerMask != mask)
  {
    self->_cornerMask = mask;
    [(NavSignListViewController *)self _applyCornerMask];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (vabdd_f64(self->_cornerRadius, radius) > 2.22044605e-16)
  {
    self->_cornerRadius = radius;
    [(NavSignListViewController *)self _applyCornerMask];
  }
}

- (void)setActiveStepIndex:(unint64_t)index
{
  if (self->_activeStepIndex != index)
  {
    v5 = sub_100078974();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 134349312;
      selfCopy = self;
      v12 = 2048;
      indexCopy = index;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating active step index: %lu", &v10, 0x16u);
    }

    selectedStepIndex = self->_selectedStepIndex;
    v7 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self willChangeValueForKey:v7];

    self->_selectedStepIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->_activeStepIndex = index;
    [(RouteStepListDataSource *)self->_dataSource setActiveStepIndex:index];
    v8 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self didChangeValueForKey:v8];

    if (selectedStepIndex != self->_selectedStepIndex)
    {
      signDelegate = [(NavSignListViewController *)self signDelegate];
      [signDelegate selectStep:0];
    }
  }
}

- (void)setSelectedStepIndex:(unint64_t)index
{
  if (self->_selectedStepIndex != index)
  {
    v5 = sub_100078974();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 134349312;
      selfCopy = self;
      v10 = 2048;
      indexCopy = index;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating selected step index: %lu", &v8, 0x16u);
    }

    v6 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self willChangeValueForKey:v6];

    self->_selectedStepIndex = index;
    v7 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self didChangeValueForKey:v7];
  }
}

- (void)setLayoutProgress:(double)progress
{
  v3 = fmin(fmax(progress, 0.0), 1.0);
  if (vabdd_f64(self->_layoutProgress, v3) > 2.22044605e-16)
  {
    self->_layoutProgress = v3;
    [(NavSignListViewController *)self _applyCornerMask];
  }
}

- (id)VIOEnabledHintLabel
{
  vioHintLabel = self->_vioHintLabel;
  if (!vioHintLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_vioHintLabel;
    self->_vioHintLabel = v4;

    [(UILabel *)self->_vioHintLabel setClipsToBounds:1];
    [(UILabel *)self->_vioHintLabel setNumberOfLines:0];
    [(UILabel *)self->_vioHintLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    theme = [(NavSignListViewController *)self theme];
    navSignMinorTextColor = [theme navSignMinorTextColor];
    [(UILabel *)self->_vioHintLabel setTextColor:navSignMinorTextColor];

    [(UILabel *)self->_vioHintLabel setTextAlignment:1];
    v8 = [UIFont _maps_systemFontWithFixedSize:17.0];
    [(UILabel *)self->_vioHintLabel setFont:v8];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Walking_Navigation_Hint_Enhanced_Accuracy_On" value:@"localized string not found" table:0];
    [(UILabel *)self->_vioHintLabel setText:v10];

    LODWORD(v11) = 1148846080;
    [(UILabel *)self->_vioHintLabel setContentCompressionResistancePriority:1 forAxis:v11];
    vioHintLabel = self->_vioHintLabel;
  }

  return vioHintLabel;
}

- (void)setDragging:(BOOL)dragging
{
  if (self->_dragging != dragging)
  {
    draggingCopy = dragging;
    v5 = sub_100078974();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      dragging = self->_dragging;
      v7 = 134349568;
      selfCopy = self;
      v9 = 1024;
      draggingCopy2 = dragging;
      v11 = 1024;
      v12 = draggingCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Changing dragging from: %d to %d", &v7, 0x18u);
    }

    self->_dragging = draggingCopy;
  }
}

- (void)setCardWidth:(double)width
{
  if (vabdd_f64(width, self->_cardWidth) > 2.22044605e-16)
  {
    self->_cardWidth = width;
    computedWidth = self->_computedWidth;
    if (computedWidth)
    {
      [(NSNumber *)computedWidth cgFloatValue];
      if (vabdd_f64(v6, width) > 2.22044605e-16)
      {
        view = [(NavSignListViewController *)self view];
        [view setNeedsLayout];

        view2 = [(NavSignListViewController *)self view];
        [view2 layoutIfNeeded];
      }
    }
  }
}

- (DirectionsElevationGraphView)graphView
{
  graphView = self->_graphView;
  if (!graphView)
  {
    v4 = [DirectionsElevationGraphConfiguration alloc];
    traitCollection = [(NavSignListViewController *)self traitCollection];
    v6 = -[DirectionsElevationGraphConfiguration initWithUseType:userInterfaceIdiom:](v4, "initWithUseType:userInterfaceIdiom:", 2, [traitCollection userInterfaceIdiom]);

    v7 = [[DirectionsElevationGraphView alloc] initWithConfiguration:v6];
    v8 = self->_graphView;
    self->_graphView = v7;

    [(DirectionsElevationGraphView *)self->_graphView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DirectionsElevationGraphView *)self->_graphView setOverrideUserInterfaceStyle:2];
    v9 = self->_graphView;
    route = [(NavSignListViewController *)self route];
    elevationProfile = [route elevationProfile];
    route2 = [(NavSignListViewController *)self route];
    [route2 distance];
    [(DirectionsElevationGraphView *)v9 setElevationProfile:elevationProfile routeLength:?];

    graphView = self->_graphView;
  }

  return graphView;
}

- (void)setShowingSecondaryManeuver:(BOOL)maneuver
{
  if (self->_showingSecondaryManeuver != maneuver)
  {
    maneuverCopy = maneuver;
    v5 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self willChangeValueForKey:v5];

    self->_showingSecondaryManeuver = maneuverCopy;
    footerView = [(NavSignListViewController *)self footerView];
    [footerView setShowingSecondaryManeuver:maneuverCopy];

    v7 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self didChangeValueForKey:v7];

    [(NavSignListViewController *)self updateHeightConstraints];
  }
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    v6 = sub_100078974();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      uniqueRouteID = [(GEOComposedRoute *)routeCopy uniqueRouteID];
      v10 = 134349314;
      selfCopy = self;
      v12 = 2112;
      v13 = uniqueRouteID;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Got a new route: %@", &v10, 0x16u);
    }

    objc_storeStrong(&self->_route, route);
    [(RouteStepListDataSource *)self->_dataSource setRoute:routeCopy];
    graphView = self->_graphView;
    elevationProfile = [(GEOComposedRoute *)routeCopy elevationProfile];
    [(GEOComposedRoute *)routeCopy distance];
    [(DirectionsElevationGraphView *)graphView setElevationProfile:elevationProfile routeLength:?];

    [(DirectionsElevationGraphView *)self->_graphView setNavigationProgress:0.0];
    [(NavSignListViewController *)self _updateGraphViewIfNeeded];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v12.receiver = self;
  v12.super_class = NavSignListViewController;
  changeCopy = change;
  [(NavSignListViewController *)&v12 traitCollectionDidChange:changeCopy];
  traitCollection = [(NavSignListViewController *)self traitCollection];
  v6 = sub_100017FE8(changeCopy, traitCollection);

  traitCollection2 = [(NavSignListViewController *)self traitCollection];
  v8 = traitCollection2;
  if (v6)
  {
    isLuminanceReduced = [traitCollection2 isLuminanceReduced];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100687428;
    v10[3] = &unk_101661AE0;
    v11 = isLuminanceReduced;
    v10[4] = self;
    [UIView _maps_animateForAndromeda:isLuminanceReduced animations:v10];
    [(NavSignListViewController *)self _updateSelectionBackgrounds];
  }

  else
  {
    [(RouteStepListDataSource *)self->_dataSource setTraitCollection:traitCollection2];
  }
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = NavSignListViewController;
  [(NavSignListViewController *)&v10 viewDidLayoutSubviews];
  [(NavSignListViewController *)self _applyCornerMask];
  computedWidth = self->_computedWidth;
  if (!computedWidth)
  {
    cardWidth = self->_cardWidth;
    goto LABEL_5;
  }

  [(NSNumber *)computedWidth cgFloatValue];
  v5 = v4;
  cardWidth = self->_cardWidth;
  if (vabdd_f64(v5, cardWidth) > 2.22044605e-16)
  {
LABEL_5:
    v7 = [NSNumber numberWithDouble:cardWidth];
    v8 = self->_computedWidth;
    self->_computedWidth = v7;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100687774;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = NavSignListViewController;
  [(NavSignListViewController *)&v5 viewSafeAreaInsetsDidChange];
  [(NavSignListViewController *)self updateHeightConstraints];
  footerView = [(NavSignListViewController *)self footerView];
  [footerView maximumHeight];
  [(NSLayoutConstraint *)self->_gradientViewBottomConstraint setConstant:-v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = NavSignListViewController;
  [(NavSignListViewController *)&v4 viewDidAppear:appear];
  [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingMapsRegionUpdatedWithGuidanceStep" object:self userInfo:0];
  [(NavSignListViewController *)self _applyCornerMask];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = NavSignListViewController;
  [(NavSignListViewController *)&v5 viewDidDisappear:?];
  [(NavSignListViewController *)self setDragging:0];
  [(NavSignListViewController *)self clearPartialExpansionAnimated:disappearCopy];
}

- (void)hideVIOLabel:(BOOL)label
{
  if (self->_vioHintLabelVisible)
  {
    labelCopy = label;
    signDelegate = [(NavSignListViewController *)self signDelegate];
    [signDelegate signListHeightWillChangeAnimated:labelCopy];

    v6 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self willChangeValueForKey:v6];

    self->_vioHintLabelVisible = 0;
    v7 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self didChangeValueForKey:v7];

    vioHintLabelDismissTimer = self->_vioHintLabelDismissTimer;
    self->_vioHintLabelDismissTimer = 0;

    [(UILabel *)self->_vioHintLabel frame];
    [(NSLayoutConstraint *)self->_vioHintLabelTopConstraint setConstant:-v9];
    [(NSLayoutConstraint *)self->_collectionViewTopConstraint setActive:0];
    topAnchor = [(UICollectionView *)self->_collectionView topAnchor];
    topAnchor2 = [(UIView *)self->_containerView topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    collectionViewTopConstraint = self->_collectionViewTopConstraint;
    self->_collectionViewTopConstraint = v12;

    [(NSLayoutConstraint *)self->_collectionViewTopConstraint setActive:1];
    objc_initWeak(&location, self);
    if (labelCopy)
    {
      v14 = 0.5;
    }

    else
    {
      v14 = 0.0;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100687C00;
    v17[3] = &unk_101661B18;
    v17[4] = self;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100687C68;
    v15[3] = &unk_1016619A8;
    objc_copyWeak(&v16, &location);
    [UIView animateWithDuration:117440512 delay:v17 options:v15 animations:v14 completion:0.0];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v25.receiver = self;
  v25.super_class = NavSignListViewController;
  [(NavSignListViewController *)&v25 viewWillAppear:?];
  if (!self->_firstSetupDone)
  {
    self->_firstSetupDone = 1;
    v5 = +[MNNavigationService sharedService];
    [v5 registerObserver:self];

    v6 = +[MNNavigationService sharedService];
    route = [v6 route];

    v8 = sub_100078974();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      name = [route name];
      uniqueRouteID = [route uniqueRouteID];
      stepsCount = [route stepsCount];
      *buf = 134349826;
      selfCopy = self;
      v28 = 2112;
      v29 = name;
      v30 = 2112;
      v31 = uniqueRouteID;
      v32 = 2048;
      v33 = stepsCount;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Setting up sign list with route %@ (%@) with steps %lu", buf, 0x2Au);
    }

    [(NavSignListViewController *)self setRoute:route];
    dataSource = [(NavSignListViewController *)self dataSource];
    v13 = +[MNNavigationService sharedService];
    v14 = [dataSource itemIndexForStepIndex:{objc_msgSend(v13, "stepIndex")}];

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    [(NavSignListViewController *)self setActiveStepIndex:v15];
    expanded = self->_expanded;
    collectionView = [(NavSignListViewController *)self collectionView];
    [collectionView setScrollEnabled:expanded];

    [(NavSignListViewController *)self _updateActiveStepIndexAnimated:0];
    [(NavSignListViewController *)self setDebugViewControllerEnabled:[(NavSignListViewController *)self _shouldShowDebugViewController]];
    if (self->_vioHintLabelVisible)
    {
      objc_initWeak(buf, self);
      GEOConfigGetDouble();
      v19 = v18;
      v20 = &_dispatch_main_q;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100688014;
      v23[3] = &unk_1016616E8;
      objc_copyWeak(&v24, buf);
      v21 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v23 block:v19];
      vioHintLabelDismissTimer = self->_vioHintLabelDismissTimer;
      self->_vioHintLabelDismissTimer = v21;

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }

  [(NavSignListViewController *)self setDragging:0];
  [(NavSignListViewController *)self clearPartialExpansionAnimated:appearCopy];
}

- (void)viewDidLoad
{
  v188.receiver = self;
  v188.super_class = NavSignListViewController;
  [(NavSignListViewController *)&v188 viewDidLoad];
  view = [(NavSignListViewController *)self view];
  layer = [view layer];
  [layer setMasksToBounds:1];

  view2 = [(NavSignListViewController *)self view];
  [view2 setClipsToBounds:1];

  BOOL = GEOConfigGetBOOL();
  LODWORD(layer) = _UISolariumEnabled();
  v7 = [MUBlurView alloc];
  if (layer)
  {
    obj = [v7 initGlassBlurWithTintColor:0 glassStyle:BOOL];
    [obj setStyle:0];
  }

  else
  {
    obj = [v7 initWithBlurEffectStyle:19];
    [obj setStyle:2];
  }

  [obj setOverrideUserInterfaceStyle:2];
  [obj setClipsToBounds:1];
  layer2 = [obj layer];
  [layer2 setMasksToBounds:1];

  v9 = sub_100A5FD30();
  [obj setNonBlurredColor:v9];

  [obj setBlurGroupName:@"NavSignBlur"];
  [obj setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(NavSignListViewController *)self view];
  [view3 addSubview:obj];

  objc_storeStrong(&self->_backgroundView, obj);
  v11 = objc_opt_new();
  graphContainerView = self->_graphContainerView;
  self->_graphContainerView = v11;

  [(UIView *)self->_graphContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = self->_graphContainerView;
  v14 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_didTap:"];
  [(UIView *)v13 addGestureRecognizer:v14];

  [(UIView *)self->_graphContainerView setAccessibilityIdentifier:@"GraphContainerView"];
  [(UIView *)self->_graphContainerView _maps_applyGlassGroup];
  view4 = [(NavSignListViewController *)self view];
  [view4 addSubview:self->_graphContainerView];

  LODWORD(view4) = _UISolariumEnabled();
  v16 = [MUBlurView alloc];
  if (view4)
  {
    v17 = [v16 initGlassBlurWithTintColor:0 glassStyle:BOOL];
    v18 = 0;
  }

  else
  {
    v17 = [v16 initWithBlurEffectStyle:19];
    v18 = 2;
  }

  graphBackgroundView = self->_graphBackgroundView;
  self->_graphBackgroundView = v17;

  [(MUBlurView *)self->_graphBackgroundView setStyle:v18];
  [(MUBlurView *)self->_graphBackgroundView setOverrideUserInterfaceStyle:2];
  v20 = sub_100A5FD30();
  [(MUBlurView *)self->_graphBackgroundView setNonBlurredColor:v20];

  [(MUBlurView *)self->_graphBackgroundView setBlurGroupName:@"NavSignBlur"];
  [(MUBlurView *)self->_graphBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_graphContainerView addSubview:self->_graphBackgroundView];
  v21 = objc_opt_new();
  containerView = self->_containerView;
  self->_containerView = v21;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containerView setClipsToBounds:1];
  layer3 = [(UIView *)self->_containerView layer];
  [layer3 setMasksToBounds:1];

  [(UIView *)self->_containerView setAccessibilityIdentifier:@"NavSignListContainerView"];
  v24 = self->_containerView;
  v25 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_didTap:"];
  [(UIView *)v24 addGestureRecognizer:v25];

  view5 = [(NavSignListViewController *)self view];
  [view5 addSubview:self->_containerView];

  v180 = objc_opt_new();
  [v180 setMinimumLineSpacing:0.0];
  [v180 setMinimumInteritemSpacing:0.0];
  v27 = [UICollectionView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v31 = [v27 initWithFrame:v180 collectionViewLayout:{CGRectZero.origin.x, y, width, height}];
  collectionView = self->_collectionView;
  self->_collectionView = v31;

  v33 = [(NavSignListViewController *)self cellClassForItemType:1];
  v34 = self->_collectionView;
  v35 = NSStringFromClass(v33);
  [(UICollectionView *)v34 registerClass:v33 forCellWithReuseIdentifier:v35];

  v36 = self->_collectionView;
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = NSStringFromClass(v38);
  [(UICollectionView *)v36 registerClass:v37 forCellWithReuseIdentifier:v39];

  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = +[UIColor clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v40];

  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setShowsVerticalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)self->_collectionView setContentInsetAdjustmentBehavior:2];
  [(UICollectionView *)self->_collectionView setDelaysContentTouches:0];
  [(UICollectionView *)self->_collectionView setAccessibilityIdentifier:@"NavSignListCollectionView"];
  [(UICollectionView *)self->_collectionView _setHiddenPocketEdges:15];
  [(UIView *)self->_containerView addSubview:self->_collectionView];
  v41 = objc_opt_new();
  gradientView = self->_gradientView;
  self->_gradientView = v41;

  [(MUGradientView *)self->_gradientView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUGradientView *)self->_gradientView setUserInteractionEnabled:0];
  [(MUGradientView *)self->_gradientView setClipsToBounds:1];
  layer4 = [(MUGradientView *)self->_gradientView layer];
  [layer4 setMasksToBounds:1];

  v44 = sub_100A5FD30();
  v45 = [v44 colorWithAlphaComponent:0.0];
  v191[0] = v45;
  v46 = sub_100A5FD30();
  v47 = [v46 colorWithAlphaComponent:0.25];
  v191[1] = v47;
  v48 = sub_100A5FD30();
  v191[2] = v48;
  v49 = [NSArray arrayWithObjects:v191 count:3];
  [(MUGradientView *)self->_gradientView setColors:v49];

  [(UIView *)self->_containerView addSubview:self->_gradientView];
  objc_initWeak(&location, self);
  v50 = [NavSignFooterView alloc];
  v185[0] = _NSConcreteStackBlock;
  v185[1] = 3221225472;
  v185[2] = sub_1006894D0;
  v185[3] = &unk_101661B98;
  objc_copyWeak(&v186, &location);
  height = [(NavSignFooterView *)v50 initWithFrame:v185 action:CGRectZero.origin.x, y, width, height];
  footerView = self->_footerView;
  self->_footerView = height;

  [(NavSignFooterView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v53 = self->_footerView;
  v54 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_didTap:"];
  [(NavSignFooterView *)v53 addGestureRecognizer:v54];

  v55 = self->_footerView;
  v56 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"_didPan:"];
  [(NavSignFooterView *)v55 addGestureRecognizer:v56];

  view6 = [(NavSignListViewController *)self view];
  [view6 addSubview:self->_footerView];

  topAnchor = [(UICollectionView *)self->_collectionView topAnchor];
  topAnchor2 = [(UIView *)self->_containerView topAnchor];
  v60 = [topAnchor constraintEqualToAnchor:topAnchor2];
  collectionViewTopConstraint = self->_collectionViewTopConstraint;
  self->_collectionViewTopConstraint = v60;

  v62 = +[MNNavigationService sharedService];
  route = [v62 route];

  if (route && [route transportType] == 2 && +[VIOSessionTask isVIOModeEnabled](VIOSessionTask, "isVIOModeEnabled"))
  {
    v63 = self->_containerView;
    vIOEnabledHintLabel = [(NavSignListViewController *)self VIOEnabledHintLabel];
    [(UIView *)v63 addSubview:vIOEnabledHintLabel];

    self->_vioHintLabelVisible = 1;
    topAnchor3 = [(UILabel *)self->_vioHintLabel topAnchor];
    topAnchor4 = [(UIView *)self->_containerView topAnchor];
    v67 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    vioHintLabelTopConstraint = self->_vioHintLabelTopConstraint;
    self->_vioHintLabelTopConstraint = v67;

    topAnchor5 = [(UICollectionView *)self->_collectionView topAnchor];
    bottomAnchor = [(UILabel *)self->_vioHintLabel bottomAnchor];
    v71 = [topAnchor5 constraintEqualToAnchor:bottomAnchor];
    v72 = self->_collectionViewTopConstraint;
    self->_collectionViewTopConstraint = v71;

    v190[0] = self->_vioHintLabelTopConstraint;
    leadingAnchor = [(UILabel *)self->_vioHintLabel leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_containerView leadingAnchor];
    v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
    v190[1] = v73;
    trailingAnchor = [(UILabel *)self->_vioHintLabel trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_containerView trailingAnchor];
    v76 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
    v190[2] = v76;
    heightAnchor = [(UILabel *)self->_vioHintLabel heightAnchor];
    v78 = [heightAnchor constraintGreaterThanOrEqualToConstant:30.0];
    v190[3] = v78;
    v136 = [NSArray arrayWithObjects:v190 count:4];
  }

  else
  {
    v136 = &__NSArray0__struct;
  }

  topAnchor6 = [(UIView *)self->_graphContainerView topAnchor];
  view7 = [(NavSignListViewController *)self view];
  topAnchor7 = [view7 topAnchor];
  v82 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:-92.0];
  graphTopConstraint = self->_graphTopConstraint;
  self->_graphTopConstraint = v82;

  heightAnchor2 = [(UIView *)self->_containerView heightAnchor];
  v85 = [heightAnchor2 constraintEqualToConstant:110.0];
  containerViewHeightConstraint = self->_containerViewHeightConstraint;
  self->_containerViewHeightConstraint = v85;

  LODWORD(v87) = 1148829696;
  [(NSLayoutConstraint *)self->_containerViewHeightConstraint setPriority:v87];
  topAnchor8 = [(MUGradientView *)self->_gradientView topAnchor];
  topAnchor9 = [(UIView *)self->_containerView topAnchor];
  v90 = [topAnchor8 constraintEqualToAnchor:topAnchor9 constant:110.0];
  gradientViewTopConstraint = self->_gradientViewTopConstraint;
  self->_gradientViewTopConstraint = v90;

  bottomAnchor2 = [(MUGradientView *)self->_gradientView bottomAnchor];
  bottomAnchor3 = [(UICollectionView *)self->_collectionView bottomAnchor];
  [(NavSignFooterView *)self->_footerView maximumHeight];
  v95 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-v94];
  gradientViewBottomConstraint = self->_gradientViewBottomConstraint;
  self->_gradientViewBottomConstraint = v95;

  heightAnchor3 = [(NavSignFooterView *)self->_footerView heightAnchor];
  [(NavSignFooterView *)self->_footerView minimumHeight];
  v98 = [heightAnchor3 constraintEqualToConstant:?];
  footerHeightConstraint = self->_footerHeightConstraint;
  self->_footerHeightConstraint = v98;

  leadingAnchor3 = [(UIView *)self->_graphContainerView leadingAnchor];
  view8 = [(NavSignListViewController *)self view];
  leadingAnchor4 = [view8 leadingAnchor];
  v173 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v189[0] = v173;
  trailingAnchor3 = [(UIView *)self->_graphContainerView trailingAnchor];
  view9 = [(NavSignListViewController *)self view];
  trailingAnchor4 = [view9 trailingAnchor];
  v169 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v100 = self->_graphTopConstraint;
  v189[1] = v169;
  v189[2] = v100;
  heightAnchor4 = [(UIView *)self->_graphContainerView heightAnchor];
  v167 = [heightAnchor4 constraintEqualToConstant:92.0];
  v189[3] = v167;
  leadingAnchor5 = [(MUBlurView *)self->_graphBackgroundView leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_graphContainerView leadingAnchor];
  v164 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v189[4] = v164;
  trailingAnchor5 = [(MUBlurView *)self->_graphBackgroundView trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_graphContainerView trailingAnchor];
  v161 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v189[5] = v161;
  topAnchor10 = [(MUBlurView *)self->_graphBackgroundView topAnchor];
  topAnchor11 = [(UIView *)self->_graphContainerView topAnchor];
  v158 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
  v189[6] = v158;
  bottomAnchor4 = [(MUBlurView *)self->_graphBackgroundView bottomAnchor];
  bottomAnchor5 = [(UIView *)self->_graphContainerView bottomAnchor];
  v156 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v189[7] = v156;
  leadingAnchor7 = [(UIView *)self->_containerView leadingAnchor];
  view10 = [(NavSignListViewController *)self view];
  leadingAnchor8 = [view10 leadingAnchor];
  v152 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v189[8] = v152;
  trailingAnchor7 = [(UIView *)self->_containerView trailingAnchor];
  view11 = [(NavSignListViewController *)self view];
  trailingAnchor8 = [view11 trailingAnchor];
  v148 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v189[9] = v148;
  topAnchor12 = [(UIView *)self->_containerView topAnchor];
  bottomAnchor6 = [(UIView *)self->_graphContainerView bottomAnchor];
  v146 = [topAnchor12 constraintEqualToAnchor:bottomAnchor6];
  v101 = self->_containerViewHeightConstraint;
  v189[10] = v146;
  v189[11] = v101;
  leadingAnchor9 = [obj leadingAnchor];
  leadingAnchor10 = [(UIView *)self->_containerView leadingAnchor];
  v143 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v189[12] = v143;
  trailingAnchor9 = [obj trailingAnchor];
  trailingAnchor10 = [(UIView *)self->_containerView trailingAnchor];
  v140 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v189[13] = v140;
  topAnchor13 = [obj topAnchor];
  topAnchor14 = [(UIView *)self->_containerView topAnchor];
  v137 = [topAnchor13 constraintEqualToAnchor:topAnchor14];
  v189[14] = v137;
  bottomAnchor7 = [obj bottomAnchor];
  bottomAnchor8 = [(NavSignFooterView *)self->_footerView bottomAnchor];
  v133 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v189[15] = v133;
  leadingAnchor11 = [(UICollectionView *)self->_collectionView leadingAnchor];
  leadingAnchor12 = [(UIView *)self->_containerView leadingAnchor];
  v130 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v189[16] = v130;
  trailingAnchor11 = [(UICollectionView *)self->_collectionView trailingAnchor];
  trailingAnchor12 = [(UIView *)self->_containerView trailingAnchor];
  v127 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  v102 = self->_collectionViewTopConstraint;
  v189[17] = v127;
  v189[18] = v102;
  bottomAnchor9 = [(UICollectionView *)self->_collectionView bottomAnchor];
  view12 = [(NavSignListViewController *)self view];
  bottomAnchor10 = [view12 bottomAnchor];
  v123 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
  v189[19] = v123;
  leadingAnchor13 = [(MUGradientView *)self->_gradientView leadingAnchor];
  leadingAnchor14 = [(UIView *)self->_containerView leadingAnchor];
  v120 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
  v189[20] = v120;
  trailingAnchor13 = [(MUGradientView *)self->_gradientView trailingAnchor];
  trailingAnchor14 = [(UIView *)self->_containerView trailingAnchor];
  v118 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
  v103 = self->_gradientViewTopConstraint;
  v189[21] = v118;
  v189[22] = v103;
  v189[23] = self->_gradientViewBottomConstraint;
  leadingAnchor15 = [(NavSignFooterView *)self->_footerView leadingAnchor];
  view13 = [(NavSignListViewController *)self view];
  leadingAnchor16 = [view13 leadingAnchor];
  v114 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16];
  v189[24] = v114;
  trailingAnchor15 = [(NavSignFooterView *)self->_footerView trailingAnchor];
  view14 = [(NavSignListViewController *)self view];
  trailingAnchor16 = [view14 trailingAnchor];
  v107 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16];
  v189[25] = v107;
  topAnchor15 = [(NavSignFooterView *)self->_footerView topAnchor];
  bottomAnchor11 = [(UIView *)self->_containerView bottomAnchor];
  v110 = [topAnchor15 constraintEqualToAnchor:bottomAnchor11];
  v111 = self->_footerHeightConstraint;
  v189[26] = v110;
  v189[27] = v111;
  v112 = [NSArray arrayWithObjects:v189 count:28];
  v113 = [v112 arrayByAddingObjectsFromArray:v136];
  [NSLayoutConstraint activateConstraints:v113];

  [(NavSignListViewController *)self _applyCornerMask];
  objc_destroyWeak(&v186);
  objc_destroyWeak(&location);
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(NavSignListViewController *)self setView:v3];
}

- (void)dealloc
{
  v3 = sub_100078974();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NavSignListViewController;
  [(NavSignListViewController *)&v4 dealloc];
}

- (NavSignListViewController)initWithSignDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = NavSignListViewController;
  v5 = [(NavSignListViewController *)&v12 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = sub_100078974();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [(NavSignListViewController *)v5 setAccessibilityIdentifier:v8];

    objc_storeWeak(&v5->_signDelegate, delegateCopy);
    v9 = +[RouteStepListMetrics navSignMetrics];
    metrics = v5->_metrics;
    v5->_metrics = v9;

    v5->_selectedStepIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

@end