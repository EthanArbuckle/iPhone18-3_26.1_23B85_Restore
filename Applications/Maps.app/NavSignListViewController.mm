@interface NavSignListViewController
- (BOOL)_shouldShowDebugViewController;
- (BOOL)hasElevationGraph;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (Class)cellClassForItemType:(unint64_t)a3;
- (DirectionsElevationGraphView)graphView;
- (NavSignListViewController)initWithSignDelegate:(id)a3;
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
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)_displayStepIndex;
- (unint64_t)_stateForItemIndex:(unint64_t)a3;
- (void)_applyCornerMask;
- (void)_cancelReroute;
- (void)_cleanupStepCountdowns;
- (void)_didPan:(id)a3;
- (void)_didTap:(id)a3;
- (void)_handleNewRoute:(id)a3;
- (void)_insertGraphView;
- (void)_processSignUpdate;
- (void)_reapplySignCountdown;
- (void)_triggerSignListAnalytics;
- (void)_updateActiveStepIndexAnimated:(BOOL)a3;
- (void)_updateCollectionViewBottomInset;
- (void)_updateCurrentManeuverBackground;
- (void)_updateGraphContainerTop;
- (void)_updateGraphViewIfNeeded;
- (void)_updateLaneGuidancePositioning;
- (void)_updateLayoutProgressWithDuration:(double)a3 completion:(id)a4;
- (void)_updateRoute:(id)a3;
- (void)_updateSelectionBackgrounds;
- (void)cell:(id)a3 setPressed:(BOOL)a4;
- (void)clearDragState;
- (void)clearPartialExpansionAnimated:(BOOL)a3;
- (void)clearSelectionAnimated:(BOOL)a3;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)hideVIOLabel:(BOOL)a3;
- (void)loadView;
- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6;
- (void)navigationService:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6;
- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4;
- (void)navigationService:(id)a3 showLaneDirections:(id)a4;
- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4;
- (void)navigationServiceWillReroute:(id)a3;
- (void)reloadDataSource:(id)a3;
- (void)reloadStepIndices:(id)a3 forDataSource:(id)a4;
- (void)reloadUIForDataSource:(id)a3;
- (void)scrollToIndexPath:(id)a3 animated:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setActiveStepIndex:(unint64_t)a3;
- (void)setCardWidth:(double)a3;
- (void)setConnectedToCarPlay:(BOOL)a3 animated:(BOOL)a4;
- (void)setCornerMask:(unint64_t)a3;
- (void)setCornerRadius:(double)a3;
- (void)setDebugViewControllerEnabled:(BOOL)a3;
- (void)setDragging:(BOOL)a3;
- (void)setExpandingCornerMaskingThreshold:(double)a3;
- (void)setLaneGuidanceActive:(BOOL)a3;
- (void)setLayoutProgress:(double)a3;
- (void)setRoute:(id)a3;
- (void)setSelectedStepIndex:(unint64_t)a3;
- (void)setShowingSecondaryManeuver:(BOOL)a3;
- (void)toggleExpansionAnimated:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFooterConstraints;
- (void)updateHeightConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NavSignListViewController

- (RouteStepListDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    v4 = [RouteStepListDataSource alloc];
    v5 = [(NavSignListViewController *)self traitCollection];
    v6 = [(RouteStepListDataSource *)v4 initWithTraitCollection:v5 options:8 metrics:self->_metrics context:1];
    v7 = self->_dataSource;
    self->_dataSource = v6;

    [(RouteStepListDataSource *)self->_dataSource setDelegate:self];
    v8 = [(NavSignListViewController *)self route];
    [(RouteStepListDataSource *)self->_dataSource setRoute:v8];

    [(RouteStepListDataSource *)self->_dataSource setActiveStepIndex:[(NavSignListViewController *)self activeStepIndex]];
    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (void)_processSignUpdate
{
  v3 = [(NavSignListViewController *)self activeStepIndex];
  v4 = [NSIndexPath indexPathForItem:v3 inSection:0];
  v5 = [(NavSignListViewController *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v4];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = sub_100078974();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (isKindOfClass)
  {
    if (v9)
    {
      *buf = 134349314;
      v22 = self;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Updating cell content: %@", buf, 0x16u);
    }

    [v6 redrawContent];
    v10 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self willChangeValueForKey:v10];

    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000807BC;
    v18 = &unk_101661A90;
    v19 = self;
    v20 = v4;
    [UIView performWithoutAnimation:&v15];
    v11 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self didChangeValueForKey:v11, v15, v16, v17, v18, v19];

    v12 = [(NavSignListViewController *)self dataSource];
    v13 = [v12 items];
    v14 = [v13 count] - 1;

    if (v3 == v14)
    {
      [(NavSignListViewController *)self _updateCollectionViewBottomInset];
    }
  }

  else
  {
    if (v9)
    {
      *buf = 134349312;
      v22 = self;
      v23 = 2048;
      v24 = [(NavSignListViewController *)self activeStepIndex];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Cell for active step index (%lu) is not a nav sign maneuver cell; ignoring sign update", buf, 0x16u);
    }
  }
}

- (double)collapsedHeight
{
  [(NavSignListViewController *)self _collapsedSignHeight];
  v4 = v3;
  v5 = [(NavSignListViewController *)self footerView];
  [v5 minimumHeight];
  v7 = v6 + v4;

  return v7;
}

- (id)_displayIndexPath
{
  if (self->_isRerouting)
  {
    v2 = 0;
  }

  else
  {
    v2 = [(NavSignListViewController *)self _displayStepIndex];
  }

  v3 = [NSIndexPath indexPathForRow:v2 inSection:0];

  return v3;
}

- (NavSignListViewControllerDelegate)signDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_signDelegate);

  return WeakRetained;
}

- (double)footerBottomPosition
{
  v3 = [(DirectionsElevationGraphView *)self->_graphView superview];

  if (v3)
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
  v8 = [(NavSignListViewController *)self footerView];
  [v8 currentHeight];
  v10 = v7 + v5 + v9;

  return v10;
}

- (double)_collapsedSignHeight
{
  v3 = [(NavSignListViewController *)self dataSource];
  v4 = [v3 items];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(NavSignListViewController *)self _displayIndexPath];
    v7 = [(NavSignListViewController *)self collectionView];
    [(NavSignListViewController *)self collectionView:v7 layout:0 sizeForItemAtIndexPath:v6];
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
  v2 = [(DirectionsElevationGraphView *)self->_graphView superview];
  v3 = v2 != 0;

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
        v6 = [v7 isNavigatingFromTrace];
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDebugViewControllerEnabled:(BOOL)a3
{
  if (self->_debugViewControllerEnabled != a3)
  {
    self->_debugViewControllerEnabled = a3;
    if (a3)
    {
      v4 = [(NavSignListViewController *)self debugViewController];
      v5 = [v4 debugControlsView];

      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v6 = [(NavSignListViewController *)self view];
      [v6 addSubview:v5];

      v7 = [(NavSignListViewController *)self collectionView];
      [v7 layoutMargins];
      v9 = v8;
      v11 = v10;

      [v5 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      v13 = v12;
      v29 = [v5 leadingAnchor];
      v28 = [(UIView *)self->_containerView leadingAnchor];
      v27 = [v29 constraintEqualToAnchor:v28 constant:v9];
      v30[0] = v27;
      v26 = [v5 trailingAnchor];
      v14 = [(UIView *)self->_containerView trailingAnchor];
      v15 = [v26 constraintEqualToAnchor:v14 constant:-v11];
      v30[1] = v15;
      v16 = [v5 heightAnchor];
      v17 = [v16 constraintEqualToConstant:v13];
      v30[2] = v17;
      v18 = [v5 bottomAnchor];
      v19 = [(NavSignFooterView *)self->_footerView topAnchor];
      v20 = [v18 constraintEqualToAnchor:v19 constant:-10.0];
      v30[3] = v20;
      v21 = [NSArray arrayWithObjects:v30 count:4];
      [NSLayoutConstraint activateConstraints:v21];

      v22 = [(NavSignListViewController *)self debugViewController];
      [v22 didManuallyAddDebugViews];
    }

    else
    {
      debugViewController = self->_debugViewController;
      if (debugViewController)
      {
        v24 = [(NavigationDebugViewsController *)debugViewController debugControlsView];
        [v24 removeFromSuperview];

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

- (void)scrollToIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NavSignListViewController *)self collectionView];
  v8 = [v7 collectionViewLayout];
  v10 = [v8 layoutAttributesForItemAtIndexPath:v6];

  v9 = [(NavSignListViewController *)self collectionView];
  [v10 frame];
  [v9 setContentOffset:v4 animated:?];
}

- (void)toggleExpansionAnimated:(BOOL)a3
{
  v3 = a3;
  expanded = self->_expanded;
  self->_expanded = !expanded;
  v6 = 1.0;
  if (expanded)
  {
    v6 = 0.0;
  }

  [(NavSignListViewController *)self setLayoutProgress:v6];
  v7 = [(NavSignListViewController *)self signDelegate];
  [v7 signListHeightWillChangeAnimated:v3];

  [(NavSignListViewController *)self hideVIOLabel:0];
  v8 = [(NavSignListViewController *)self collectionView];
  [(NavSignListViewController *)self scrollViewDidScroll:v8];

  [(NavSignListViewController *)self _triggerSignListAnalytics];
  v9 = 0.25;
  if (!v3)
  {
    v9 = 0.0;
  }

  [(NavSignListViewController *)self _updateLayoutProgressWithDuration:0 completion:v9];
  [(NavSignListViewController *)self _updateActiveStepIndexAnimated:v3];
  if (!self->_expanded)
  {
    if ([(NavSignListViewController *)self selectedStepIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [(NavSignListViewController *)self signDelegate];
      [v14 selectStep:0];
    }

    else
    {
      v10 = [(NavSignListViewController *)self dataSource];
      v11 = [v10 items];
      v14 = [v11 objectAtIndexedSubscript:{-[NavSignListViewController selectedStepIndex](self, "selectedStepIndex")}];

      v12 = [(NavSignListViewController *)self signDelegate];
      v13 = [v14 step];
      [v12 selectStep:v13];
    }
  }
}

- (void)_didTap:(id)a3
{
  if ([(NavSignListViewController *)self isConnectedToCarPlay])
  {
    v4 = sub_100078974();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134349056;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] Ignoring tap gesture, CarPlay is connected", &v5, 0xCu);
    }
  }

  else
  {

    [(NavSignListViewController *)self toggleExpansionAnimated:1];
  }
}

- (void)_didPan:(id)a3
{
  v4 = a3;
  if ([(NavSignListViewController *)self isConnectedToCarPlay])
  {
    v5 = sub_100078974();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v27 = 134349056;
      v28 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Ignoring pan gesture, CarPlay is connected", &v27, 0xCu);
    }
  }

  else
  {
    v6 = [(NavSignListViewController *)self footerView];
    [v4 translationInView:v6];
    v8 = v7;

    if ([v4 state] == 3)
    {
      [(NavSignListViewController *)self setDragging:0];
      v9 = [(NavSignListViewController *)self footerView];
      [v4 velocityInView:v9];
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
      v21 = [(NavSignListViewController *)self signDelegate];
      [v21 signListHeightWillChangeAnimated:0];

      v22 = [(NavSignListViewController *)self collectionView];
      [(NavSignListViewController *)self scrollViewDidScroll:v22];

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
      v25 = [(NavSignListViewController *)self signDelegate];
      [v25 signListHeightWillChangeAnimated:0];

      v26 = [(NavSignListViewController *)self collectionView];
      [(NavSignListViewController *)self scrollViewDidScroll:v26];

      [(NavSignListViewController *)self _updateLayoutProgressWithDuration:0 completion:0.0];
    }
  }
}

- (void)_updateCurrentManeuverBackground
{
  if (self->_isRerouting)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NavSignListViewController *)self activeStepIndex];
  }

  v11 = [NSIndexPath indexPathForRow:v3 inSection:0];
  v4 = [(NavSignListViewController *)self collectionView];
  v5 = [v4 cellForItemAtIndexPath:v11];

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

  v6 = [(NavSignListViewController *)self traitCollection];
  v7 = [v6 isLuminanceReduced];

  if ((v7 & 1) == 0)
  {
    v8 = sub_1000808D8();
    [(NavSignListViewController *)self layoutProgress];
    v10 = [v8 colorWithAlphaComponent:v9 * 0.239999995];
    [(MUBlurView *)self->_graphBackgroundView setOverlayColor:v10];
  }
}

- (double)_signContainerAvailableHeight
{
  v3 = [(NavSignListViewController *)self signDelegate];
  [v3 signListAvailableHeight];
  v5 = v4;
  v6 = [(NavSignListViewController *)self footerView];
  [v6 maximumHeight];
  v8 = v5 - v7;

  return v8;
}

- (void)_insertGraphView
{
  graphContainerView = self->_graphContainerView;
  v4 = [(NavSignListViewController *)self graphView];
  [(UIView *)graphContainerView addSubview:v4];

  [(NavSignListViewController *)self _updateGraphContainerTop];
  v20 = [(NavSignListViewController *)self graphView];
  v19 = [v20 leadingAnchor];
  v18 = [(UIView *)self->_graphContainerView leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18 constant:16.0];
  v21[0] = v17;
  v16 = [(NavSignListViewController *)self graphView];
  v15 = [v16 trailingAnchor];
  v5 = [(UIView *)self->_graphContainerView trailingAnchor];
  v6 = [v15 constraintEqualToAnchor:v5 constant:-16.0];
  v21[1] = v6;
  v7 = [(NavSignListViewController *)self graphView];
  v8 = [v7 topAnchor];
  v9 = [(UIView *)self->_graphContainerView topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:16.0];
  v21[2] = v10;
  v11 = [(NavSignListViewController *)self graphView];
  v12 = [v11 heightAnchor];
  v13 = [v12 constraintEqualToConstant:60.0];
  v21[3] = v13;
  v14 = [NSArray arrayWithObjects:v21 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)_updateGraphContainerTop
{
  v3 = [(DirectionsElevationGraphView *)self->_graphView superview];

  graphContainerView = self->_graphContainerView;
  if (v3)
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
  v3 = [(NavSignListViewController *)self route];
  v4 = [v3 elevationProfile];

  v5 = [(DirectionsElevationGraphView *)self->_graphView superview];
  v6 = v5;
  if (v4)
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
  v4 = [(NavSignListViewController *)self collectionView];
  v5 = [v4 indexPathsForVisibleItems];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NavSignListViewController *)self collectionView];
        v12 = [v11 cellForItemAtIndexPath:v10];

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

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)_cleanupStepCountdowns
{
  v3 = [(NavSignListViewController *)self dataSource];
  v4 = [v3 items];

  v5 = [(NavSignListViewController *)self activeStepIndex];
  v6 = objc_opt_new();
  if ([v4 count])
  {
    v7 = 0;
    do
    {
      v8 = [v4 objectAtIndexedSubscript:v7];
      v9 = v8;
      if (v5 != v7)
      {
        v10 = [v8 userInfo];

        if (v10)
        {
          v11 = [NSIndexPath indexPathForItem:v7 inSection:0];
          [v6 addObject:v11];

          [v9 setUserInfo:0];
        }
      }

      ++v7;
    }

    while (v7 < [v4 count]);
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
        v18 = [(NavSignListViewController *)self collectionView];
        v19 = [v18 cellForItemAtIndexPath:v17];

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
  v5 = [(NavSignListViewController *)self footerView];
  [v5 setLayoutProgress:v4];

  v6 = [(NavSignListViewController *)self footerView];
  [v6 currentHeight];
  v8 = v7;

  [(NSLayoutConstraint *)self->_footerHeightConstraint setConstant:v8];
  [(NavSignListViewController *)self _updateGraphContainerTop];
  v9 = [(DirectionsElevationGraphView *)self->_graphView superview];
  if (v9)
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
  v17 = [(NavSignListViewController *)self signDelegate];
  [v17 setSignListHeight:v16 + v8];

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
  v3 = [(NavSignListViewController *)self view];
  v4 = [v3 superview];
  [v4 layoutIfNeeded];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100683790;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [UIView animateWithDuration:117440512 delay:v5 options:0 animations:0.3 completion:0.0];
}

- (void)_updateLayoutProgressWithDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(NavSignListViewController *)self signDelegate];
  v8 = [v7 blockToAnimateAlongWithSignHeightChanges];

  v9 = [(NavSignListViewController *)self view];
  v10 = [v9 superview];
  [v10 layoutIfNeeded];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100683ABC;
  v15[3] = &unk_101661090;
  v15[4] = self;
  v16 = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100683B48;
  v13[3] = &unk_101655D58;
  v13[4] = self;
  v14 = v6;
  v11 = v6;
  v12 = v8;
  [UIView animateWithDuration:117440512 delay:v15 options:v13 animations:a3 completion:0.0];
}

- (void)_updateActiveStepIndexAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NavSignListViewController *)self dataSource];
  v6 = [v5 items];
  v7 = [v6 count];

  if (v7)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"MapsPPTGuidanceWillUpdateNotifcation" object:0];

    v9 = [(NavSignListViewController *)self view];
    v10 = [v9 superview];
    [v10 layoutIfNeeded];

    v11 = [(NavSignListViewController *)self _displayIndexPath];
    if (v3)
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
    v16 = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100683E94;
    v14[3] = &unk_101661738;
    v14[4] = self;
    v13 = v11;
    [UIView animateWithDuration:117440512 delay:v15 options:v14 animations:v12 completion:0.0];
  }
}

- (void)_updateRoute:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = sub_100078974();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 uniqueRouteID];
      v16 = 134349314;
      v17 = self;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Updating route (%@) from navigation callback", &v16, 0x16u);
    }

    [(NavSignListViewController *)self setRoute:v5];
  }

  else
  {
    v8 = +[MNNavigationService sharedService];
    v9 = +[MNNavigationService sharedService];
    v5 = [v9 route];

    [v8 state];
    IsNavigating = MNNavigationServiceStateIsNavigating();
    v11 = sub_100078974();
    v12 = v11;
    if (IsNavigating)
    {
      v13 = v5 == 0;
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
        v17 = self;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}p] Skipped updating route from navigation service", &v16, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v15 = [v5 uniqueRouteID];
        v16 = 134349314;
        v17 = self;
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}p] Updating route (%@) from navigation service", &v16, 0x16u);
      }

      [(NavSignListViewController *)self setRoute:v5];
    }
  }
}

- (void)_handleNewRoute:(id)a3
{
  self->_isRerouting = 0;
  self->_selectedStepIndex = 0x7FFFFFFFFFFFFFFFLL;
  [(NavSignListViewController *)self _updateRoute:a3];

  [(NavSignListViewController *)self _updateCollectionViewBottomInset];
}

- (void)_cancelReroute
{
  v3 = NSStringFromSelector("collapsedHeight");
  [(NavSignListViewController *)self willChangeValueForKey:v3];

  self->_isRerouting = 0;
  v4 = [(NavSignListViewController *)self collectionView];
  [v4 reloadData];

  [(NavSignListViewController *)self _updateActiveStepIndexAnimated:0];
  v5 = NSStringFromSelector("collapsedHeight");
  [(NavSignListViewController *)self didChangeValueForKey:v5];

  [(NavSignListViewController *)self _updateCollectionViewBottomInset];
}

- (void)navigationServiceWillReroute:(id)a3
{
  if ([a3 arrivalState] == 1)
  {
    v4 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self willChangeValueForKey:v4];

    self->_isRerouting = 1;
    v5 = [(NavSignListViewController *)self collectionView];
    [v5 reloadData];

    [(NavSignListViewController *)self _updateActiveStepIndexAnimated:1];
    v6 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self didChangeValueForKey:v6];

    [(NavSignListViewController *)self _updateCollectionViewBottomInset];
  }
}

- (void)navigationService:(id)a3 hideLaneDirectionsForId:(id)a4
{
  v5 = a4;
  [(NavSignListViewController *)self setLaneGuidanceActive:0];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = self;
  v6 = [(NavSignListViewController *)self dataSource];
  v7 = [v6 items];

  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 userInfo];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v15 = [v12 userInfo];
          v16 = [v15 uniqueID];
          v17 = v5;
          if (!(v5 | v16) || (v18 = v17, v19 = [v16 isEqual:v17], v18, v16, v16, v19))
          {
            [v12 setUserInfo:0];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  v20 = [(NavSignListViewController *)v26 activeStepIndex];
  v21 = [(NavSignListViewController *)v26 dataSource];
  v22 = [v21 items];
  if (v20 >= [v22 count])
  {
    v25 = 0;
  }

  else
  {
    v23 = [(NavSignListViewController *)v26 dataSource];
    v24 = [v23 items];
    v25 = [v24 objectAtIndexedSubscript:v20];
  }

  [v25 setUserInfo:v26->_latestSignGuidance];
  [(NavSignListViewController *)v26 _processSignUpdate];
}

- (void)navigationService:(id)a3 showLaneDirections:(id)a4
{
  v32 = a4;
  v5 = [v32 titles];
  v6 = [v5 count];

  if (v6)
  {
    v7 = v32;
  }

  else
  {
    v31 = [MNGuidanceLaneInfo alloc];
    v8 = [v32 uniqueID];
    v9 = [v32 isForManeuver];
    v10 = [v32 lanes];
    v11 = [(MNGuidanceSignInfo *)self->_latestSignGuidance primarySign];
    v12 = [v11 titles];
    v13 = [v32 instructions];
    v14 = [v32 variableOverrides];
    v15 = [v32 distanceDetailLevel];
    LODWORD(v30) = [v32 composedGuidanceEventIndex];
    v29 = v15;
    v16 = v8;
    v17 = [v31 initWithID:v8 isForManeuver:v9 lanes:v10 titles:v12 instructions:v13 variableOverrides:v14 distanceDetailLevel:v29 composedGuidanceEventIndex:v30];

    v18 = [(MNGuidanceSignInfo *)self->_latestSignGuidance primarySign];
    v19 = [v18 primaryStrings];
    [v17 setPrimaryStrings:v19];

    v7 = v17;
  }

  v33 = v7;
  objc_storeStrong(&self->_latestLaneInfo, v7);
  [(NavSignListViewController *)self setLaneGuidanceActive:1];
  v20 = [(NavSignListViewController *)self activeStepIndex];
  v21 = [(NavSignListViewController *)self dataSource];
  v22 = [v21 items];
  if (v20 >= [v22 count])
  {
    v25 = 0;
  }

  else
  {
    v23 = [(NavSignListViewController *)self dataSource];
    v24 = [v23 items];
    v25 = [v24 objectAtIndexedSubscript:v20];
  }

  v26 = [v25 userInfo];
  if ([v33 isForManeuver] && (latestSignGuidance = self->_latestSignGuidance, v26 != latestSignGuidance) || (objc_msgSend(v33, "isForManeuver") & 1) == 0 && (v28 = objc_msgSend(v33, "isEqual:", v26), latestSignGuidance = v33, (v28 & 1) == 0))
  {
    [v25 setUserInfo:latestSignGuidance];
  }

  [(NavSignListViewController *)self _processSignUpdate];
}

- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6
{
  v15 = a5;
  v7 = [(NavSignListViewController *)self route];
  [v7 distance];
  v9 = v8;
  [v15 distanceRemainingToEndOfLeg];
  if (v9 < v10)
  {
    [(DirectionsElevationGraphView *)self->_graphView setNavigationProgress:0.0];
  }

  else
  {
    v11 = [(NavSignListViewController *)self route];
    [v11 distance];
    v13 = v12;
    [v15 distanceRemainingToEndOfLeg];
    [(DirectionsElevationGraphView *)self->_graphView setNavigationProgress:v13 - v14];
  }
}

- (void)navigationService:(id)a3 didUpdateDistanceUntilManeuver:(double)a4 timeUntilManeuver:(double)a5 forStepIndex:(unint64_t)a6
{
  v9 = [(NavSignListViewController *)self route:a3];
  v10 = [v9 isWalkingOnlyTransitRoute];

  if (v10)
  {
    v11 = [(NavSignListViewController *)self dataSource];
    v12 = [v11 items];
    v13 = [v12 count];

    if (!v13)
    {
      v20 = sub_100078974();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v29 = 134349056;
        v30 = self;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[%{public}p] Our data source is empty; ignoring distance info update", &v29, 0xCu);
      }

      goto LABEL_18;
    }

    v14 = [(NavSignListViewController *)self dataSource];
    v15 = [v14 itemIndexForStepIndex:a6];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    v17 = [(NavSignListViewController *)self activeStepIndex];
    [(NavSignListViewController *)self setActiveStepIndex:v16];
    v18 = [(NavSignListViewController *)self dataSource];
    v19 = [v18 items];
    v20 = [v19 objectAtIndexedSubscript:v16];

    v21 = sub_100078974();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v20 userInfo];
      v29 = 134349314;
      v30 = self;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] Existing item user info: %@", &v29, 0x16u);
    }

    v23 = [v20 userInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v25 = [NSNumber numberWithDouble:a4];
      [v20 setUserInfo:v25];

      [v20 setState:2];
      [(NavSignListViewController *)self _processSignUpdate];
    }

    if (v17 == v16)
    {
      if (self->_expanded || self->_layoutProgress > 0.0)
      {
        v26 = [(NavSignListViewController *)self collectionView];
        [(NavSignListViewController *)self scrollViewDidScroll:v26];

LABEL_18:
        return;
      }

      v27 = self;
      v28 = 0;
    }

    else
    {
      v27 = self;
      v28 = 1;
    }

    [(NavSignListViewController *)v27 _updateActiveStepIndexAnimated:v28];
    goto LABEL_18;
  }
}

- (void)navigationService:(id)a3 updateSignsWithInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100078974();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v36 = 134349314;
    v37 = self;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Got an updated sign info: %@", &v36, 0x16u);
  }

  objc_storeStrong(&self->_latestSignGuidance, a4);
  v9 = [(NavSignListViewController *)self dataSource];
  v10 = [v9 items];
  v11 = [v10 count];

  if (!v11)
  {
    v21 = [v6 route];
    v26 = [(NavSignListViewController *)self route];
    v27 = [v6 navigationState];
    v28 = sub_100078974();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
    if (!v26 && v21 && v27 == 2)
    {
      if (v29)
      {
        v36 = 134349056;
        v37 = self;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}p] Our data source is empty; attempting to recover", &v36, 0xCu);
      }

      [(NavSignListViewController *)self _handleNewRoute:v21];
    }

    else
    {
      if (v29)
      {
        v36 = 134349056;
        v37 = self;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "[%{public}p] Our data source is empty; ignoring sign info update", &v36, 0xCu);
      }
    }

    goto LABEL_26;
  }

  v12 = [(NavSignListViewController *)self activeStepIndex];
  v13 = [(NavSignListViewController *)self dataSource];
  v14 = [v13 items];
  v15 = [v14 count];

  if (v12 < v15)
  {
    v16 = [(NavSignListViewController *)self dataSource];
    v17 = [v16 itemIndexForStepIndex:{objc_msgSend(v7, "stepIndex")}];

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
    }

    v18 = [(NavSignListViewController *)self activeStepIndex];
    [(NavSignListViewController *)self setActiveStepIndex:v17];
    v19 = [(NavSignListViewController *)self dataSource];
    v20 = [v19 items];
    v21 = [v20 objectAtIndexedSubscript:v17];

    v22 = sub_100078974();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v21 userInfo];
      v36 = 134349314;
      v37 = self;
      v38 = 2112;
      v39 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[%{public}p] Existing item user info: %@", &v36, 0x16u);
    }

    v24 = [v21 userInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [v21 setUserInfo:v7];
      [v21 setState:2];
      [(NavSignListViewController *)self _processSignUpdate];
    }

    if (v18 == v17)
    {
      if (self->_expanded || self->_layoutProgress > 0.0)
      {
        v26 = [(NavSignListViewController *)self collectionView];
        [(NavSignListViewController *)self scrollViewDidScroll:v26];
LABEL_26:

        goto LABEL_29;
      }

      v34 = self;
      v35 = 0;
    }

    else
    {
      v34 = self;
      v35 = 1;
    }

    [(NavSignListViewController *)v34 _updateActiveStepIndexAnimated:v35];
    goto LABEL_29;
  }

  v21 = sub_100078974();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v30 = [(NavSignListViewController *)self activeStepIndex];
    v31 = [(NavSignListViewController *)self dataSource];
    v32 = [v31 items];
    v33 = [v32 count];
    v36 = 134349568;
    v37 = self;
    v38 = 2048;
    v39 = v30;
    v40 = 2048;
    v41 = v33;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] The active step index (%lu) is larger than our data source items (%lu); ignoring sign info update", &v36, 0x20u);
  }

LABEL_29:
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(NavSignListViewController *)self view];
  v5 = [v4 window];
  [v5 safeAreaInsets];
  v6 = 20.0;
  if (v7 <= 20.0)
  {
    v8 = [(NavSignListViewController *)self view];
    v9 = [v8 window];
    [v9 safeAreaInsets];
    v6 = v10;
  }

  v11 = [(NavSignListViewController *)self collectionView];
  [v11 contentOffset];
  v13 = v12;

  v21 = [NSIndexPath indexPathForItem:[(NavSignListViewController *)self activeStepIndex] inSection:0];
  v14 = [(NavSignListViewController *)self collectionView];
  v15 = [v14 cellForItemAtIndexPath:v21];

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
  v20 = [(NavSignListViewController *)self signDelegate];
  [v20 signListDidScroll];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v15 = [(NavSignListViewController *)self dataSource];
    v16 = [v15 items];
    v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v10, "row")}];

    v18 = [v17 cellClass];
    if (qword_10195F520 != -1)
    {
      dispatch_once(&qword_10195F520, &stru_101657A70);
    }

    v19 = 160.0;
    if (!byte_10195F518)
    {
      v19 = 200.0;
    }

    [v18 heightForItem:v17 width:cardWidth maximumHeight:v19];
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
      v23 = [v17 cellClass];
      if (qword_10195F520 != -1)
      {
        dispatch_once(&qword_10195F520, &stru_101657A70);
      }

      v24 = 160.0;
      if (!byte_10195F518)
      {
        v24 = 200.0;
      }

      [v23 heightForItem:v17 width:cardWidth maximumHeight:v24];
      v14 = v25;
    }
  }

  v26 = cardWidth;
  v27 = v14;
  result.height = v27;
  result.width = v26;
  return result;
}

- (unint64_t)_stateForItemIndex:(unint64_t)a3
{
  if ([(NavSignListViewController *)self activeStepIndex]> a3)
  {
    return 0;
  }

  if ([(NavSignListViewController *)self activeStepIndex]== a3)
  {
    return 1;
  }

  return 2;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 row];
    v10 = [(NavSignListViewController *)self dataSource];
    v11 = [v10 items];
    v12 = [v11 objectAtIndexedSubscript:v9];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1006855EC;
    v14[3] = &unk_10165EB08;
    v15 = v12;
    v16 = self;
    v17 = v7;
    v18 = v9;
    v13 = v12;
    [UIView performWithoutAnimation:v14];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  if (self->_isRerouting)
  {
    v6 = a4;
    v7 = a3;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v6];

    [v10 startAnimating];
    [(NavSignListViewController *)self layoutProgress];
    [v10 setSelectedWithLayoutProgress:?];
  }

  else
  {
    v11 = a4;
    v12 = a3;
    v13 = [v11 row];
    v14 = [(NavSignListViewController *)self dataSource];
    v15 = [v14 items];
    v16 = [v15 objectAtIndexedSubscript:v13];

    v17 = NSStringFromClass([v16 cellClass]);
    v18 = [v12 dequeueReusableCellWithReuseIdentifier:v17 forIndexPath:v11];

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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (self->_isRerouting)
  {
    return 1;
  }

  v5 = [(NavSignListViewController *)self dataSource:a3];
  v6 = [v5 items];
  v7 = [v6 count];

  return v7;
}

- (Class)cellClassForItemType:(unint64_t)a3
{
  if (a3 == 1)
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
  v4 = [(RouteStepListDataSource *)self->_dataSource items];
  v5 = [v4 count];

  if (activeStepIndex < v5)
  {
    if (![(NavSignListViewController *)self isLaneGuidanceActive]|| (p_latestSignGuidance = &self->_latestLaneInfo, [(MNGuidanceLaneInfo *)self->_latestLaneInfo isForManeuver]))
    {
      p_latestSignGuidance = &self->_latestSignGuidance;
    }

    v9 = *p_latestSignGuidance;
    v7 = [(RouteStepListDataSource *)self->_dataSource items];
    v8 = [v7 objectAtIndexedSubscript:activeStepIndex];
    [v8 setUserInfo:v9];
  }
}

- (void)reloadStepIndices:(id)a3 forDataSource:(id)a4
{
  if (!self->_isRerouting)
  {
    v5 = a3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100685BA4;
    v8[3] = &unk_101656938;
    v9 = objc_opt_new();
    v6 = v9;
    [v5 enumerateIndexesUsingBlock:v8];

    v7 = [(NavSignListViewController *)self collectionView];
    [v7 reloadItemsAtIndexPaths:v6];
  }
}

- (void)reloadUIForDataSource:(id)a3
{
  v4 = NSStringFromSelector("collapsedHeight");
  [(NavSignListViewController *)self willChangeValueForKey:v4];

  [(NavSignListViewController *)self _reapplySignCountdown];
  v5 = [(NavSignListViewController *)self collectionView];
  [v5 reloadData];

  v6 = NSStringFromSelector("collapsedHeight");
  [(NavSignListViewController *)self didChangeValueForKey:v6];

  [(NavSignListViewController *)self _updateActiveStepIndexAnimated:0];
}

- (void)reloadDataSource:(id)a3
{
  v4 = NSStringFromSelector("collapsedHeight");
  [(NavSignListViewController *)self willChangeValueForKey:v4];

  v5 = [(NavSignListViewController *)self dataSource];
  v6 = +[MNNavigationService sharedService];
  v7 = [v5 itemIndexForStepIndex:{objc_msgSend(v6, "stepIndex")}];

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
  v9 = [(NavSignListViewController *)self collectionView];
  [v9 reloadData];

  [(RouteStepListDataSource *)self->_dataSource setActiveStepIndex:self->_activeStepIndex];
  v10 = NSStringFromSelector("collapsedHeight");
  [(NavSignListViewController *)self didChangeValueForKey:v10];

  [(NavSignListViewController *)self _updateActiveStepIndexAnimated:0];
}

- (void)cell:(id)a3 setPressed:(BOOL)a4
{
  v6 = a3;
  if (GEOConfigGetBOOL() && self->_expanded)
  {
    if (a4)
    {
      [v6 setSelectedWithLayoutProgress:1.0];
      v7 = [(NavSignListViewController *)self collectionView];
      v8 = [v7 indexPathForCell:v6];

      if (v8)
      {
        v9 = [v8 row];
        if (v9 != [(NavSignListViewController *)self activeStepIndex])
        {
          v10 = self;
          v11 = v9;
LABEL_14:
          [(NavSignListViewController *)v10 setSelectedStepIndex:v11];

          goto LABEL_15;
        }
      }

      else
      {
        v14 = sub_100078974();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = 134349314;
          v16 = self;
          v17 = 2112;
          v18 = v6;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}p] Selected cell: %@ but no indexPath available", &v15, 0x16u);
        }
      }

      v10 = self;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    v12 = [v6 state];
    v13 = 0.0;
    if (v12 == 1)
    {
      v13 = 1.0;
    }

    [v6 setSelectedWithLayoutProgress:v13];
    [(NavSignListViewController *)self setSelectedStepIndex:0x7FFFFFFFFFFFFFFFLL];
  }

LABEL_15:
}

- (void)_updateCollectionViewBottomInset
{
  v3 = [(NavSignListViewController *)self viewIfLoaded];
  v4 = [v3 window];

  if (v4)
  {
    v5 = [(NavSignListViewController *)self collectionView];
    [v5 contentInset];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(NavSignListViewController *)self collectionView];
    [v12 frame];
    Height = CGRectGetHeight(v18);
    [(NavSignListViewController *)self _lastSignHeight];
    v15 = Height - v14;

    v16 = [(NavSignListViewController *)self collectionView];
    [v16 setContentInset:{v7, v9, v15, v11}];
  }
}

- (void)clearPartialExpansionAnimated:(BOOL)a3
{
  v3 = a3;
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
          v20 = self;
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
          v20 = self;
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
      if (v3)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0.0;
      }

      v16 = [(NavSignListViewController *)self signDelegate];
      [v16 signListHeightWillChangeAnimated:v3];

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10068626C;
      v17[3] = &unk_101661AE0;
      v17[4] = self;
      v18 = v3;
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
      v5 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%{public}p] Drag state was leaked as true! Removing...", &v4, 0xCu);
    }

    [(NavSignListViewController *)self setDragging:0];
  }
}

- (void)clearSelectionAnimated:(BOOL)a3
{
  v3 = a3;
  [(NavSignListViewController *)self setSelectedStepIndex:0x7FFFFFFFFFFFFFFFLL];

  [(NavSignListViewController *)self _updateActiveStepIndexAnimated:v3];
}

- (void)updateFooterConstraints
{
  if (self->_expanded)
  {
    v8 = [(NavSignListViewController *)self signDelegate];
    [v8 signListHeight];
    v5 = v4;
    v6 = [(NavSignListViewController *)self footerView];
    [v6 currentHeight];
    [(NSLayoutConstraint *)self->_containerViewHeightConstraint setConstant:v5 - v7];
  }
}

- (void)setLaneGuidanceActive:(BOOL)a3
{
  if (self->_laneGuidanceActive != a3)
  {
    self->_laneGuidanceActive = a3;
    [(NavSignListViewController *)self _updateLaneGuidancePositioning];
  }
}

- (double)_lastSignHeight
{
  v3 = [(NavSignListViewController *)self dataSource];
  v4 = [v3 items];
  v5 = [v4 count];

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
    v8 = [(NavSignListViewController *)self dataSource];
    v9 = [v8 items];
    v6 = [v9 count] - 1;
  }

  v10 = [NSIndexPath indexPathForRow:v6 inSection:0];
  v11 = [(NavSignListViewController *)self collectionView];
  [(NavSignListViewController *)self collectionView:v11 layout:0 sizeForItemAtIndexPath:v10];
  v7 = v12;

  return v7;
}

- (void)setConnectedToCarPlay:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_connectedToCarPlay != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_connectedToCarPlay = a3;
    v7 = sub_100078974();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349312;
      v16 = self;
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] setConnectedToCarPlay: %d", buf, 0x12u);
    }

    if (self->_expanded != v5)
    {
      [(NavSignListViewController *)self toggleExpansionAnimated:v4];
    }

    v8 = 0.0;
    v10 = 3221225472;
    v9 = _NSConcreteStackBlock;
    v11 = sub_100686708;
    v12 = &unk_101661AE0;
    if (v4)
    {
      v8 = 0.25;
    }

    v13 = self;
    v14 = v5;
    [UIView animateWithDuration:117440512 delay:&v9 options:0 animations:v8 completion:0.0];
    [(NavSignListViewController *)self setDebugViewControllerEnabled:[(NavSignListViewController *)self _shouldShowDebugViewController:v9]];
  }
}

- (void)_applyCornerMask
{
  cornerMask = self->_cornerMask;
  v4 = [(NavSignListViewController *)self hasElevationGraph];
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

  if (v4)
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

    v13 = [(MUBlurView *)self->_backgroundView layer];
    v14 = v13;
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
    v13 = [(MUBlurView *)self->_backgroundView layer];
    v14 = v13;
    *&v21 = v8;
    *(&v21 + 1) = v8;
    *&v22 = v9;
    *(&v22 + 1) = v9;
    v23 = v7;
    v24 = v7;
    v25 = cornerRadius;
  }

  v26 = cornerRadius;
  [v13 setCornerRadii:&v21];

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

  v20 = [(MUBlurView *)self->_graphBackgroundView layer];
  v21 = 0u;
  v22 = 0u;
  v23 = v15;
  v24 = v15;
  v25 = v19;
  v26 = v19;
  [v20 setCornerRadii:&v21];
}

- (void)setExpandingCornerMaskingThreshold:(double)a3
{
  if (self->_expandingCornerMaskingThreshold != a3)
  {
    self->_expandingCornerMaskingThreshold = a3;
    [(NavSignListViewController *)self _applyCornerMask];
  }
}

- (void)setCornerMask:(unint64_t)a3
{
  if (self->_cornerMask != a3)
  {
    self->_cornerMask = a3;
    [(NavSignListViewController *)self _applyCornerMask];
  }
}

- (void)setCornerRadius:(double)a3
{
  if (vabdd_f64(self->_cornerRadius, a3) > 2.22044605e-16)
  {
    self->_cornerRadius = a3;
    [(NavSignListViewController *)self _applyCornerMask];
  }
}

- (void)setActiveStepIndex:(unint64_t)a3
{
  if (self->_activeStepIndex != a3)
  {
    v5 = sub_100078974();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 134349312;
      v11 = self;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating active step index: %lu", &v10, 0x16u);
    }

    selectedStepIndex = self->_selectedStepIndex;
    v7 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self willChangeValueForKey:v7];

    self->_selectedStepIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->_activeStepIndex = a3;
    [(RouteStepListDataSource *)self->_dataSource setActiveStepIndex:a3];
    v8 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self didChangeValueForKey:v8];

    if (selectedStepIndex != self->_selectedStepIndex)
    {
      v9 = [(NavSignListViewController *)self signDelegate];
      [v9 selectStep:0];
    }
  }
}

- (void)setSelectedStepIndex:(unint64_t)a3
{
  if (self->_selectedStepIndex != a3)
  {
    v5 = sub_100078974();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 134349312;
      v9 = self;
      v10 = 2048;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Updating selected step index: %lu", &v8, 0x16u);
    }

    v6 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self willChangeValueForKey:v6];

    self->_selectedStepIndex = a3;
    v7 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self didChangeValueForKey:v7];
  }
}

- (void)setLayoutProgress:(double)a3
{
  v3 = fmin(fmax(a3, 0.0), 1.0);
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
    v6 = [(NavSignListViewController *)self theme];
    v7 = [v6 navSignMinorTextColor];
    [(UILabel *)self->_vioHintLabel setTextColor:v7];

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

- (void)setDragging:(BOOL)a3
{
  if (self->_dragging != a3)
  {
    v3 = a3;
    v5 = sub_100078974();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      dragging = self->_dragging;
      v7 = 134349568;
      v8 = self;
      v9 = 1024;
      v10 = dragging;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] Changing dragging from: %d to %d", &v7, 0x18u);
    }

    self->_dragging = v3;
  }
}

- (void)setCardWidth:(double)a3
{
  if (vabdd_f64(a3, self->_cardWidth) > 2.22044605e-16)
  {
    self->_cardWidth = a3;
    computedWidth = self->_computedWidth;
    if (computedWidth)
    {
      [(NSNumber *)computedWidth cgFloatValue];
      if (vabdd_f64(v6, a3) > 2.22044605e-16)
      {
        v7 = [(NavSignListViewController *)self view];
        [v7 setNeedsLayout];

        v8 = [(NavSignListViewController *)self view];
        [v8 layoutIfNeeded];
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
    v5 = [(NavSignListViewController *)self traitCollection];
    v6 = -[DirectionsElevationGraphConfiguration initWithUseType:userInterfaceIdiom:](v4, "initWithUseType:userInterfaceIdiom:", 2, [v5 userInterfaceIdiom]);

    v7 = [[DirectionsElevationGraphView alloc] initWithConfiguration:v6];
    v8 = self->_graphView;
    self->_graphView = v7;

    [(DirectionsElevationGraphView *)self->_graphView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DirectionsElevationGraphView *)self->_graphView setOverrideUserInterfaceStyle:2];
    v9 = self->_graphView;
    v10 = [(NavSignListViewController *)self route];
    v11 = [v10 elevationProfile];
    v12 = [(NavSignListViewController *)self route];
    [v12 distance];
    [(DirectionsElevationGraphView *)v9 setElevationProfile:v11 routeLength:?];

    graphView = self->_graphView;
  }

  return graphView;
}

- (void)setShowingSecondaryManeuver:(BOOL)a3
{
  if (self->_showingSecondaryManeuver != a3)
  {
    v3 = a3;
    v5 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self willChangeValueForKey:v5];

    self->_showingSecondaryManeuver = v3;
    v6 = [(NavSignListViewController *)self footerView];
    [v6 setShowingSecondaryManeuver:v3];

    v7 = NSStringFromSelector("collapsedHeight");
    [(NavSignListViewController *)self didChangeValueForKey:v7];

    [(NavSignListViewController *)self updateHeightConstraints];
  }
}

- (void)setRoute:(id)a3
{
  v5 = a3;
  if (self->_route != v5)
  {
    v6 = sub_100078974();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(GEOComposedRoute *)v5 uniqueRouteID];
      v10 = 134349314;
      v11 = self;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Got a new route: %@", &v10, 0x16u);
    }

    objc_storeStrong(&self->_route, a3);
    [(RouteStepListDataSource *)self->_dataSource setRoute:v5];
    graphView = self->_graphView;
    v9 = [(GEOComposedRoute *)v5 elevationProfile];
    [(GEOComposedRoute *)v5 distance];
    [(DirectionsElevationGraphView *)graphView setElevationProfile:v9 routeLength:?];

    [(DirectionsElevationGraphView *)self->_graphView setNavigationProgress:0.0];
    [(NavSignListViewController *)self _updateGraphViewIfNeeded];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v12.receiver = self;
  v12.super_class = NavSignListViewController;
  v4 = a3;
  [(NavSignListViewController *)&v12 traitCollectionDidChange:v4];
  v5 = [(NavSignListViewController *)self traitCollection];
  v6 = sub_100017FE8(v4, v5);

  v7 = [(NavSignListViewController *)self traitCollection];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 isLuminanceReduced];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100687428;
    v10[3] = &unk_101661AE0;
    v11 = v9;
    v10[4] = self;
    [UIView _maps_animateForAndromeda:v9 animations:v10];
    [(NavSignListViewController *)self _updateSelectionBackgrounds];
  }

  else
  {
    [(RouteStepListDataSource *)self->_dataSource setTraitCollection:v7];
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
  v3 = [(NavSignListViewController *)self footerView];
  [v3 maximumHeight];
  [(NSLayoutConstraint *)self->_gradientViewBottomConstraint setConstant:-v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NavSignListViewController;
  [(NavSignListViewController *)&v4 viewDidAppear:a3];
  [PPTNotificationCenter postNotificationIfNeededWithName:@"MapsTestingMapsRegionUpdatedWithGuidanceStep" object:self userInfo:0];
  [(NavSignListViewController *)self _applyCornerMask];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NavSignListViewController;
  [(NavSignListViewController *)&v5 viewDidDisappear:?];
  [(NavSignListViewController *)self setDragging:0];
  [(NavSignListViewController *)self clearPartialExpansionAnimated:v3];
}

- (void)hideVIOLabel:(BOOL)a3
{
  if (self->_vioHintLabelVisible)
  {
    v3 = a3;
    v5 = [(NavSignListViewController *)self signDelegate];
    [v5 signListHeightWillChangeAnimated:v3];

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
    v10 = [(UICollectionView *)self->_collectionView topAnchor];
    v11 = [(UIView *)self->_containerView topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    collectionViewTopConstraint = self->_collectionViewTopConstraint;
    self->_collectionViewTopConstraint = v12;

    [(NSLayoutConstraint *)self->_collectionViewTopConstraint setActive:1];
    objc_initWeak(&location, self);
    if (v3)
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v25.receiver = self;
  v25.super_class = NavSignListViewController;
  [(NavSignListViewController *)&v25 viewWillAppear:?];
  if (!self->_firstSetupDone)
  {
    self->_firstSetupDone = 1;
    v5 = +[MNNavigationService sharedService];
    [v5 registerObserver:self];

    v6 = +[MNNavigationService sharedService];
    v7 = [v6 route];

    v8 = sub_100078974();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 name];
      v10 = [v7 uniqueRouteID];
      v11 = [v7 stepsCount];
      *buf = 134349826;
      v27 = self;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      v32 = 2048;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] Setting up sign list with route %@ (%@) with steps %lu", buf, 0x2Au);
    }

    [(NavSignListViewController *)self setRoute:v7];
    v12 = [(NavSignListViewController *)self dataSource];
    v13 = +[MNNavigationService sharedService];
    v14 = [v12 itemIndexForStepIndex:{objc_msgSend(v13, "stepIndex")}];

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
    v17 = [(NavSignListViewController *)self collectionView];
    [v17 setScrollEnabled:expanded];

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
  [(NavSignListViewController *)self clearPartialExpansionAnimated:v3];
}

- (void)viewDidLoad
{
  v188.receiver = self;
  v188.super_class = NavSignListViewController;
  [(NavSignListViewController *)&v188 viewDidLoad];
  v3 = [(NavSignListViewController *)self view];
  v4 = [v3 layer];
  [v4 setMasksToBounds:1];

  v5 = [(NavSignListViewController *)self view];
  [v5 setClipsToBounds:1];

  BOOL = GEOConfigGetBOOL();
  LODWORD(v4) = _UISolariumEnabled();
  v7 = [MUBlurView alloc];
  if (v4)
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
  v8 = [obj layer];
  [v8 setMasksToBounds:1];

  v9 = sub_100A5FD30();
  [obj setNonBlurredColor:v9];

  [obj setBlurGroupName:@"NavSignBlur"];
  [obj setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [(NavSignListViewController *)self view];
  [v10 addSubview:obj];

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
  v15 = [(NavSignListViewController *)self view];
  [v15 addSubview:self->_graphContainerView];

  LODWORD(v15) = _UISolariumEnabled();
  v16 = [MUBlurView alloc];
  if (v15)
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
  v23 = [(UIView *)self->_containerView layer];
  [v23 setMasksToBounds:1];

  [(UIView *)self->_containerView setAccessibilityIdentifier:@"NavSignListContainerView"];
  v24 = self->_containerView;
  v25 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_didTap:"];
  [(UIView *)v24 addGestureRecognizer:v25];

  v26 = [(NavSignListViewController *)self view];
  [v26 addSubview:self->_containerView];

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
  v43 = [(MUGradientView *)self->_gradientView layer];
  [v43 setMasksToBounds:1];

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
  v51 = [(NavSignFooterView *)v50 initWithFrame:v185 action:CGRectZero.origin.x, y, width, height];
  footerView = self->_footerView;
  self->_footerView = v51;

  [(NavSignFooterView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v53 = self->_footerView;
  v54 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_didTap:"];
  [(NavSignFooterView *)v53 addGestureRecognizer:v54];

  v55 = self->_footerView;
  v56 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"_didPan:"];
  [(NavSignFooterView *)v55 addGestureRecognizer:v56];

  v57 = [(NavSignListViewController *)self view];
  [v57 addSubview:self->_footerView];

  v58 = [(UICollectionView *)self->_collectionView topAnchor];
  v59 = [(UIView *)self->_containerView topAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];
  collectionViewTopConstraint = self->_collectionViewTopConstraint;
  self->_collectionViewTopConstraint = v60;

  v62 = +[MNNavigationService sharedService];
  v179 = [v62 route];

  if (v179 && [v179 transportType] == 2 && +[VIOSessionTask isVIOModeEnabled](VIOSessionTask, "isVIOModeEnabled"))
  {
    v63 = self->_containerView;
    v64 = [(NavSignListViewController *)self VIOEnabledHintLabel];
    [(UIView *)v63 addSubview:v64];

    self->_vioHintLabelVisible = 1;
    v65 = [(UILabel *)self->_vioHintLabel topAnchor];
    v66 = [(UIView *)self->_containerView topAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];
    vioHintLabelTopConstraint = self->_vioHintLabelTopConstraint;
    self->_vioHintLabelTopConstraint = v67;

    v69 = [(UICollectionView *)self->_collectionView topAnchor];
    v70 = [(UILabel *)self->_vioHintLabel bottomAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];
    v72 = self->_collectionViewTopConstraint;
    self->_collectionViewTopConstraint = v71;

    v190[0] = self->_vioHintLabelTopConstraint;
    v177 = [(UILabel *)self->_vioHintLabel leadingAnchor];
    v175 = [(UIView *)self->_containerView leadingAnchor];
    v73 = [v177 constraintEqualToAnchor:v175 constant:8.0];
    v190[1] = v73;
    v74 = [(UILabel *)self->_vioHintLabel trailingAnchor];
    v75 = [(UIView *)self->_containerView trailingAnchor];
    v76 = [v74 constraintEqualToAnchor:v75 constant:-8.0];
    v190[2] = v76;
    v77 = [(UILabel *)self->_vioHintLabel heightAnchor];
    v78 = [v77 constraintGreaterThanOrEqualToConstant:30.0];
    v190[3] = v78;
    v136 = [NSArray arrayWithObjects:v190 count:4];
  }

  else
  {
    v136 = &__NSArray0__struct;
  }

  v79 = [(UIView *)self->_graphContainerView topAnchor];
  v80 = [(NavSignListViewController *)self view];
  v81 = [v80 topAnchor];
  v82 = [v79 constraintEqualToAnchor:v81 constant:-92.0];
  graphTopConstraint = self->_graphTopConstraint;
  self->_graphTopConstraint = v82;

  v84 = [(UIView *)self->_containerView heightAnchor];
  v85 = [v84 constraintEqualToConstant:110.0];
  containerViewHeightConstraint = self->_containerViewHeightConstraint;
  self->_containerViewHeightConstraint = v85;

  LODWORD(v87) = 1148829696;
  [(NSLayoutConstraint *)self->_containerViewHeightConstraint setPriority:v87];
  v88 = [(MUGradientView *)self->_gradientView topAnchor];
  v89 = [(UIView *)self->_containerView topAnchor];
  v90 = [v88 constraintEqualToAnchor:v89 constant:110.0];
  gradientViewTopConstraint = self->_gradientViewTopConstraint;
  self->_gradientViewTopConstraint = v90;

  v92 = [(MUGradientView *)self->_gradientView bottomAnchor];
  v93 = [(UICollectionView *)self->_collectionView bottomAnchor];
  [(NavSignFooterView *)self->_footerView maximumHeight];
  v95 = [v92 constraintEqualToAnchor:v93 constant:-v94];
  gradientViewBottomConstraint = self->_gradientViewBottomConstraint;
  self->_gradientViewBottomConstraint = v95;

  v97 = [(NavSignFooterView *)self->_footerView heightAnchor];
  [(NavSignFooterView *)self->_footerView minimumHeight];
  v98 = [v97 constraintEqualToConstant:?];
  footerHeightConstraint = self->_footerHeightConstraint;
  self->_footerHeightConstraint = v98;

  v176 = [(UIView *)self->_graphContainerView leadingAnchor];
  v178 = [(NavSignListViewController *)self view];
  v174 = [v178 leadingAnchor];
  v173 = [v176 constraintEqualToAnchor:v174];
  v189[0] = v173;
  v171 = [(UIView *)self->_graphContainerView trailingAnchor];
  v172 = [(NavSignListViewController *)self view];
  v170 = [v172 trailingAnchor];
  v169 = [v171 constraintEqualToAnchor:v170];
  v100 = self->_graphTopConstraint;
  v189[1] = v169;
  v189[2] = v100;
  v168 = [(UIView *)self->_graphContainerView heightAnchor];
  v167 = [v168 constraintEqualToConstant:92.0];
  v189[3] = v167;
  v166 = [(MUBlurView *)self->_graphBackgroundView leadingAnchor];
  v165 = [(UIView *)self->_graphContainerView leadingAnchor];
  v164 = [v166 constraintEqualToAnchor:v165];
  v189[4] = v164;
  v163 = [(MUBlurView *)self->_graphBackgroundView trailingAnchor];
  v162 = [(UIView *)self->_graphContainerView trailingAnchor];
  v161 = [v163 constraintEqualToAnchor:v162];
  v189[5] = v161;
  v160 = [(MUBlurView *)self->_graphBackgroundView topAnchor];
  v159 = [(UIView *)self->_graphContainerView topAnchor];
  v158 = [v160 constraintEqualToAnchor:v159];
  v189[6] = v158;
  v182 = [(MUBlurView *)self->_graphBackgroundView bottomAnchor];
  v157 = [(UIView *)self->_graphContainerView bottomAnchor];
  v156 = [v182 constraintEqualToAnchor:v157];
  v189[7] = v156;
  v154 = [(UIView *)self->_containerView leadingAnchor];
  v155 = [(NavSignListViewController *)self view];
  v153 = [v155 leadingAnchor];
  v152 = [v154 constraintEqualToAnchor:v153];
  v189[8] = v152;
  v150 = [(UIView *)self->_containerView trailingAnchor];
  v151 = [(NavSignListViewController *)self view];
  v149 = [v151 trailingAnchor];
  v148 = [v150 constraintEqualToAnchor:v149];
  v189[9] = v148;
  v147 = [(UIView *)self->_containerView topAnchor];
  v184 = [(UIView *)self->_graphContainerView bottomAnchor];
  v146 = [v147 constraintEqualToAnchor:v184];
  v101 = self->_containerViewHeightConstraint;
  v189[10] = v146;
  v189[11] = v101;
  v145 = [obj leadingAnchor];
  v144 = [(UIView *)self->_containerView leadingAnchor];
  v143 = [v145 constraintEqualToAnchor:v144];
  v189[12] = v143;
  v142 = [obj trailingAnchor];
  v141 = [(UIView *)self->_containerView trailingAnchor];
  v140 = [v142 constraintEqualToAnchor:v141];
  v189[13] = v140;
  v139 = [obj topAnchor];
  v138 = [(UIView *)self->_containerView topAnchor];
  v137 = [v139 constraintEqualToAnchor:v138];
  v189[14] = v137;
  v135 = [obj bottomAnchor];
  v134 = [(NavSignFooterView *)self->_footerView bottomAnchor];
  v133 = [v135 constraintEqualToAnchor:v134];
  v189[15] = v133;
  v132 = [(UICollectionView *)self->_collectionView leadingAnchor];
  v131 = [(UIView *)self->_containerView leadingAnchor];
  v130 = [v132 constraintEqualToAnchor:v131];
  v189[16] = v130;
  v129 = [(UICollectionView *)self->_collectionView trailingAnchor];
  v128 = [(UIView *)self->_containerView trailingAnchor];
  v127 = [v129 constraintEqualToAnchor:v128];
  v102 = self->_collectionViewTopConstraint;
  v189[17] = v127;
  v189[18] = v102;
  v125 = [(UICollectionView *)self->_collectionView bottomAnchor];
  v126 = [(NavSignListViewController *)self view];
  v124 = [v126 bottomAnchor];
  v123 = [v125 constraintEqualToAnchor:v124];
  v189[19] = v123;
  v122 = [(MUGradientView *)self->_gradientView leadingAnchor];
  v121 = [(UIView *)self->_containerView leadingAnchor];
  v120 = [v122 constraintEqualToAnchor:v121];
  v189[20] = v120;
  v181 = [(MUGradientView *)self->_gradientView trailingAnchor];
  v119 = [(UIView *)self->_containerView trailingAnchor];
  v118 = [v181 constraintEqualToAnchor:v119];
  v103 = self->_gradientViewTopConstraint;
  v189[21] = v118;
  v189[22] = v103;
  v189[23] = self->_gradientViewBottomConstraint;
  v116 = [(NavSignFooterView *)self->_footerView leadingAnchor];
  v117 = [(NavSignListViewController *)self view];
  v115 = [v117 leadingAnchor];
  v114 = [v116 constraintEqualToAnchor:v115];
  v189[24] = v114;
  v104 = [(NavSignFooterView *)self->_footerView trailingAnchor];
  v105 = [(NavSignListViewController *)self view];
  v106 = [v105 trailingAnchor];
  v107 = [v104 constraintEqualToAnchor:v106];
  v189[25] = v107;
  v108 = [(NavSignFooterView *)self->_footerView topAnchor];
  v109 = [(UIView *)self->_containerView bottomAnchor];
  v110 = [v108 constraintEqualToAnchor:v109];
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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NavSignListViewController;
  [(NavSignListViewController *)&v4 dealloc];
}

- (NavSignListViewController)initWithSignDelegate:(id)a3
{
  v4 = a3;
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

    objc_storeWeak(&v5->_signDelegate, v4);
    v9 = +[RouteStepListMetrics navSignMetrics];
    metrics = v5->_metrics;
    v5->_metrics = v9;

    v5->_selectedStepIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

@end