@interface TransitNavigationTrayViewController
- (BOOL)_updateListContentInsetWithHeight:(double)a3;
- (BOOL)pptTestHasNextStep;
- (BOOL)pptTestMoveToBoardStep;
- (BOOL)pptTestSupportStepping;
- (CGRect)_rectOfRowToKeepVisible;
- (NSNumber)displayedItemIndexForAnalytics;
- (TransitNavigationTrayDelegate)trayDelegate;
- (TransitNavigationTrayViewController)initWithRoute:(id)a3 stepsListDelegate:(id)a4;
- (double)_maximumMediumCardHeight;
- (double)heightForLayout:(unint64_t)a3;
- (id)transitionContextForTransitionController:(id)a3;
- (int64_t)pptTestCurrentStepIndex;
- (void)_endButtonPressed;
- (void)_recordChangeToLayout:(unint64_t)a3;
- (void)_updateHeaderViewForCurrentCardHeight:(double)a3;
- (void)_updateTransitionControllerForTransitionProgressSmallToMedium:(double)a3 mediumToFull:(double)a4;
- (void)_updateTransitionProgressForCurrentCard;
- (void)didChangeContainerStyle:(unint64_t)a3;
- (void)didChangeLayout:(unint64_t)a3;
- (void)headerViewTapped:(id)a3;
- (void)pptTestMoveToNextStep;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBacklightSceneEnvironment;
- (void)updateForClusteredLegSelectedRideIndexChange;
- (void)updateForCurrentDisplayedStepAnimated:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willChangeLayout:(unint64_t)a3;
@end

@implementation TransitNavigationTrayViewController

- (TransitNavigationTrayDelegate)trayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_trayDelegate);

  return WeakRetained;
}

- (NSNumber)displayedItemIndexForAnalytics
{
  v2 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  v3 = [v2 displayedItemIndexForAnalytics];

  return v3;
}

- (void)_recordChangeToLayout:(unint64_t)a3
{
  previousLayoutForTransition = self->_previousLayoutForTransition;
  if (previousLayoutForTransition)
  {
    if (previousLayoutForTransition >= a3)
    {
      if (previousLayoutForTransition <= a3)
      {
        return;
      }

      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v8 = +[MKMapService sharedService];
    v6 = [(TransitNavigationTrayViewController *)self currentUITargetForAnalytics];
    v7 = [(TransitNavigationTrayViewController *)self displayedItemIndexForAnalytics];
    [v8 captureUserAction:v5 onTarget:v6 eventValue:0 transitStep:v7];
  }
}

- (BOOL)pptTestMoveToBoardStep
{
  v2 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  v3 = [v2 pptTestMoveToBoardStep];

  return v3;
}

- (void)pptTestMoveToNextStep
{
  v2 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  [v2 pptTestMoveToNextStep];
}

- (BOOL)pptTestHasNextStep
{
  v2 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  v3 = [v2 pptTestHasNextStep];

  return v3;
}

- (int64_t)pptTestCurrentStepIndex
{
  v2 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  v3 = [v2 pptTestCurrentStepIndex];

  return v3;
}

- (BOOL)pptTestSupportStepping
{
  v2 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  v3 = [v2 pptTestSupportStepping];

  return v3;
}

- (void)_endButtonPressed
{
  v3 = sub_1006E7FF0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "User pressed end button", v5, 2u);
  }

  v4 = [(TransitNavigationTrayViewController *)self trayDelegate];
  [v4 transitNavigationTrayDidTapClose:self];
}

- (double)_maximumMediumCardHeight
{
  v3 = [(ContaineeViewController *)self cardPresentationController];

  if (!v3)
  {
    return 1.79769313e308;
  }

  v4 = [(ContaineeViewController *)self cardPresentationController];
  v5 = [v4 containerStyle];
  if (v5 <= 7 && ((1 << v5) & 0xA3) != 0)
  {

    v6 = [(ContaineeViewController *)self cardPresentationController];
    [v6 availableHeight];
    v8 = v7 * 0.5;
  }

  else
  {

    v6 = [(ContaineeViewController *)self cardPresentationController];
    [v6 availableHeight];
    v8 = v10;
  }

  return v8;
}

- (CGRect)_rectOfRowToKeepVisible
{
  v2 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  [v2 frameOfDisplayedComposedRouteStepCell];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)transitionContextForTransitionController:(id)a3
{
  v4 = a3;
  [(TransitNavigationTrayViewController *)self _rectOfRowToKeepVisible];
  Height = CGRectGetHeight(v26);
  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 bottomSafeOffset];
  v8 = v7 + Height;

  [(TransitNavigationTrayViewController *)self _maximumMediumCardHeight];
  if (v8 >= v9)
  {
    [(TransitNavigationTrayViewController *)self _maximumMediumCardHeight];
    v8 = v10;
  }

  v11 = [(ContaineeViewController *)self cardPresentationController];
  [v11 availableHeight];
  v13 = v12;
  [(ContaineeViewController *)self headerHeight];
  v15 = v14;

  objc_initWeak(&location, self);
  v16 = [RoutePlanningTransitionContext alloc];
  v17 = v13 - v15;
  v18 = self->_previousLayoutForTransition == 3;
  preTransitionContentOffsetY = self->_preTransitionContentOffsetY;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1006E8378;
  v22[3] = &unk_101626DC0;
  objc_copyWeak(&v23, &location);
  v20 = [(RoutePlanningTransitionContext *)v16 initWithFullTableHeight:v18 initiatedFromFullLayout:v22 withInitialOffsetY:v17 heightToFrame:preTransitionContentOffsetY originToFrameHandler:v8];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v20;
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = TransitNavigationTrayViewController;
  v4 = a3;
  [(MapsThemeViewController *)&v11 traitCollectionDidChange:v4];
  v5 = [(TransitNavigationTrayViewController *)self traitCollection];
  v6 = sub_100017FE8(v4, v5);

  if (v6)
  {
    v7 = [(TransitNavigationTrayViewController *)self traitCollection];
    v8 = [v7 isLuminanceReduced];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006E84D0;
    v9[3] = &unk_101661AE0;
    v10 = v8;
    v9[4] = self;
    [UIView _maps_animateForAndromeda:v8 animations:v9];
  }
}

- (void)headerViewTapped:(id)a3
{
  v4 = [(ContaineeViewController *)self cardPresentationController];
  v5 = [v4 containeeLayout];

  if (v5 == 3)
  {
    v6 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
    [v6 stopScrollingAndZooming];

    v7 = [(ContaineeViewController *)self cardPresentationController];
    [v7 wantsMinimizeLayout];
  }

  else
  {
    v7 = [(ContaineeViewController *)self cardPresentationController];
    [v7 wantsExpandLayout];
  }
}

- (double)heightForLayout:(unint64_t)a3
{
  if (a3 - 3 < 2)
  {
    v10 = [(ContaineeViewController *)self cardPresentationController];
    [v10 availableHeight];
    v4 = v14;
LABEL_9:

    return v4;
  }

  if (a3 == 1)
  {
    [(ContaineeViewController *)self headerHeight];
    v16 = v15 + 8.0;
    v10 = [(ContaineeViewController *)self cardPresentationController];
    [v10 bottomSafeOffset];
    v4 = v16 + v17;
    goto LABEL_9;
  }

  v4 = 0.0;
  if (a3 == 2)
  {
    v5 = [(TransitNavigationTrayViewController *)self traitCollection];
    v6 = [v5 verticalSizeClass];

    v4 = -1.0;
    if (v6 != 1)
    {
      [(TransitNavigationTrayViewController *)self _maximumMediumCardHeight];
      v8 = v7;
      [(TransitNavigationTrayViewController *)self _rectOfRowToKeepVisible];
      v9 = CGRectGetHeight(v25) + 8.0;
      v10 = [(ContaineeViewController *)self cardPresentationController];
      [v10 bottomSafeOffset];
      v12 = v11;
      v13 = 48.0;
      if (v12 >= 48.0)
      {
        v6 = [(ContaineeViewController *)self cardPresentationController];
        [v6 bottomSafeOffset];
      }

      if (v8 < v9 + v13)
      {
        [(TransitNavigationTrayViewController *)self _maximumMediumCardHeight];
        v4 = v24;
      }

      else
      {
        [(TransitNavigationTrayViewController *)self _rectOfRowToKeepVisible];
        Height = CGRectGetHeight(v26);
        v20 = [(ContaineeViewController *)self cardPresentationController];
        [v20 bottomSafeOffset];
        if (v21 < 48.0)
        {
          v4 = Height + 56.0;
        }

        else
        {
          v22 = [(ContaineeViewController *)self cardPresentationController];
          [v22 bottomSafeOffset];
          v4 = Height + 8.0 + v23;
        }
      }

      if (v12 >= 48.0)
      {
      }

      goto LABEL_9;
    }
  }

  return v4;
}

- (void)didChangeContainerStyle:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = TransitNavigationTrayViewController;
  [(ContaineeViewController *)&v11 didChangeContainerStyle:?];
  v5 = (a3 > 7) | (0x5Cu >> a3);
  [(RoutePlanningTransitionController *)self->_transitionController setCardDragEnabled:((a3 > 7) | (0x5Cu >> a3) & 1) == 0];
  v6 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  v7 = v6;
  v8 = v5 & 1;
  if (v5)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  [v6 setAutomaticallyScrollToDisplayedStep:v8];

  v10 = [(ContaineeViewController *)self cardPresentationController];
  [v10 wantsLayout:v9];

  [(TransitNavigationTrayViewController *)self _updateTransitionProgressForCurrentCard];
}

- (void)didChangeLayout:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = TransitNavigationTrayViewController;
  [(ContaineeViewController *)&v7 didChangeLayout:?];
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08)
  {
    v5 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
    [v5 setScrollEnabled:a3 == 3];
  }

  v6 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  [v6 setUseCollapsedDisplayStyle:a3 != 3];

  [(TransitNavigationTrayViewController *)self _recordChangeToLayout:a3];
  [(TransitNavigationTrayViewController *)self _updateTransitionProgressForCurrentCard];
}

- (void)willChangeLayout:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = TransitNavigationTrayViewController;
  [(ContaineeViewController *)&v6 willChangeLayout:?];
  if (a3 <= 2)
  {
    v5 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
    [v5 collapseAllItems];
  }
}

- (void)updateBacklightSceneEnvironment
{
  v3 = [(TransitNavigationTrayViewController *)self traitCollection];
  v4 = [v3 isLuminanceReduced];

  if (v4)
  {
    v8 = [(TransitNavigationTrayViewController *)self view];
    v5 = [v8 window];
    v6 = [v5 windowScene];
    v7 = [v6 _backlightSceneEnvironment];
    [v7 invalidateAllTimelinesForReason:@"TransitNavigationTray didReceiveUpdate"];
  }
}

- (void)updateForCurrentDisplayedStepAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 containeeLayout];

  if (v6 == 2)
  {
    v7 = [(ContaineeViewController *)self cardPresentationController];
    [v7 cardHeight];
    v9 = v8;

    [(TransitNavigationTrayViewController *)self heightForLayout:2];
    v11 = vabdd_f64(v9, v10);
    v12 = sub_1006E7FF0();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v11 <= 2.22044605e-16)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "updateForCurrentDisplayedStep: need to scroll in place", buf, 2u);
      }

      [(TransitNavigationTrayViewController *)self _rectOfRowToKeepVisible];
      v17 = v16;
      v19 = v18;
      v15 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
      [v15 setContentOffset:v3 animated:{v17, v19}];
    }

    else
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "updateForCurrentDisplayedStep: need to reload current tray height", buf, 2u);
      }

      if (v3)
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1006E8D14;
        v20[3] = &unk_101661B18;
        v20[4] = self;
        [UIView animateWithDuration:v20 animations:0.25];
        return;
      }

      v15 = [(ContaineeViewController *)self cardPresentationController];
      [v15 updateHeightForCurrentLayout];
    }
  }

  else
  {
    v14 = sub_1006E7FF0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "updateForCurrentDisplayedStep: need to switch to Medium layout", buf, 2u);
    }

    v15 = [(ContaineeViewController *)self cardPresentationController];
    [v15 wantsLayout:2 animated:v3];
  }
}

- (void)updateForClusteredLegSelectedRideIndexChange
{
  v2 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  [v2 updateForClusteredLegSelectedRideIndexChange];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = TransitNavigationTrayViewController;
  [(ContaineeViewController *)&v8 viewWillAppear:a3];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  v5 = [v4 containerStyle];
  v6 = (v5 > 7) | (0x5Cu >> v5);

  [(RoutePlanningTransitionController *)self->_transitionController setCardDragEnabled:(v6 & 1) == 0];
  v7 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  [v7 setAutomaticallyScrollToDisplayedStep:v6 & 1];
}

- (void)_updateHeaderViewForCurrentCardHeight:(double)a3
{
  v5 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  if ([v5 isDragging])
  {
    previousLayoutForTransition = self->_previousLayoutForTransition;

    if (previousLayoutForTransition == 3)
    {
      return;
    }
  }

  else
  {
  }

  [(ContainerHeaderView *)self->_containerHeaderView bounds];
  CGRectGetHeight(v13);
  v7 = [(TransitNavigationTrayViewController *)self view];
  UIRoundToViewScale();
  v9 = v8;

  [(NSLayoutConstraint *)self->_headerBottomConstraint constant];
  if (vabdd_f64(v9, v10) > 2.22044605e-16)
  {
    [(NSLayoutConstraint *)self->_headerBottomConstraint setConstant:v9];
    containerHeaderView = self->_containerHeaderView;

    [(ContainerHeaderView *)containerHeaderView setAlpha:a3];
  }
}

- (void)_updateTransitionControllerForTransitionProgressSmallToMedium:(double)a3 mediumToFull:(double)a4
{
  v7 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  v8 = [v7 isDragging];

  if (v8)
  {
    return;
  }

  v9 = [(ContaineeViewController *)self cardPresentationController];
  v32 = [v9 containeeLayout];

  v10 = [(ContaineeViewController *)self cardPresentationController];
  v31 = [v10 containerStyle];

  if (fabs(a4) <= 2.22044605e-16)
  {
    v30 = v32 == 2;
LABEL_6:
    if ((v32 - 1) > 1)
    {
      v11 = 0;
    }

    else
    {
      v12 = fabs(a3 + -1.0) > 2.22044605e-16;
      v11 = fabs(a3) > 2.22044605e-16 && v12;
    }

    goto LABEL_11;
  }

  v30 = v32 == 2;
  if (fabs(a4 + -1.0) <= 2.22044605e-16)
  {
    goto LABEL_6;
  }

  v11 = 1;
LABEL_11:
  previousLayoutForTransition = self->_previousLayoutForTransition;
  previousStyleForTransition = self->_previousStyleForTransition;
  v15 = [(ContaineeViewController *)self cardPresentationController];
  [v15 cardHeight];
  v17 = v16;

  v18 = 0;
  if (v30 && (v11 & 1) == 0)
  {
    v18 = vabdd_f64(self->_previousMediumTransitionHeight, v17) > 2.22044605e-16;
  }

  v19 = sub_1006E7FF0();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    if (v11)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = v20;
    if (previousLayoutForTransition == v32)
    {
      v22 = @"NO";
    }

    else
    {
      v22 = @"YES";
    }

    v23 = v22;
    if (previousStyleForTransition == v31)
    {
      v24 = @"NO";
    }

    else
    {
      v24 = @"YES";
    }

    v29 = v24;
    if (v18)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v26 = v25;
    *buf = 134219522;
    v34 = a4;
    v35 = 2048;
    v36 = a3;
    v37 = 2048;
    v38 = v17;
    v39 = 2112;
    v40 = v21;
    v41 = 2112;
    v42 = v23;
    v43 = 2112;
    v44 = v29;
    v45 = 2112;
    v46 = v26;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Updating transition controller (progressM-F: %#.5lf, progressS-M: %#.5lf, cardHeight: %lf, transitioning: %@, layoutChanged: %@, styleChanged: %@, currentMediumChangedInPlace: %@)", buf, 0x48u);
  }

  if (previousLayoutForTransition == v32)
  {
    v27 = v11;
  }

  else
  {
    v27 = 1;
  }

  if (previousStyleForTransition != v31)
  {
    v27 = 1;
  }

  if ((v27 | v18))
  {
    [(RoutePlanningTransitionController *)self->_transitionController setTransitioning:1];
  }

  if (!(v11 & 1 | ![(RoutePlanningTransitionController *)self->_transitionController isTransitioning]))
  {
    v28 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
    [v28 setUseCollapsedDisplayStyle:v32 != 3];
  }

  if ([(RoutePlanningTransitionController *)self->_transitionController isTransitioning])
  {
    [(RoutePlanningTransitionController *)self->_transitionController updateTransitionWithHeight:v17];
  }

  if ((v11 & 1) == 0)
  {
    self->_previousLayoutForTransition = v32;
    self->_previousStyleForTransition = v31;
    if (v30 && vabdd_f64(v17, self->_previousMediumTransitionHeight) > 2.22044605e-16)
    {
      self->_previousMediumTransitionHeight = v17;
    }

    [(RoutePlanningTransitionController *)self->_transitionController setTransitioning:0];
  }
}

- (BOOL)_updateListContentInsetWithHeight:(double)a3
{
  v4 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  v5 = [v4 isDragging];

  if (v5)
  {
    return 0;
  }

  [(NSLayoutConstraint *)self->_headerBottomConstraint constant];
  [(TransitDirectionsListViewController *)self->_listViewController _heightOfFinalRow];
  v6 = [(TransitNavigationTrayViewController *)self view];
  UIRoundToViewScale();
  v8 = v7;

  v9 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  [v9 contentInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if (vabdd_f64(v8, v15) <= 2.22044605e-16)
  {
    return 0;
  }

  v18 = sub_1006E7FF0();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v21 = 134218240;
    v22 = v15;
    v23 = 2048;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Updating contentInset.bottom (prev: %#.5lf, new: %#.5lf)", &v21, 0x16u);
  }

  v19 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  [v19 setContentInset:{v11, v13, v8, v17}];

  return 1;
}

- (void)_updateTransitionProgressForCurrentCard
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  v4 = [v3 containerStyle];
  if (v4 > 7 || ((1 << v4) & 0xA3) == 0)
  {
    v8 = 1.0;
    v10 = 1.0;
  }

  else
  {

    v6 = [(ContaineeViewController *)self cardPresentationController];
    [v6 transitionProgressToAscendingLayoutFromLayout:1];
    v8 = v7;

    v3 = [(ContaineeViewController *)self cardPresentationController];
    [v3 transitionProgressToAscendingLayoutFromLayout:2];
    v10 = v9;
  }

  v11 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  [v11 contentOffset];
  if (v12 <= 0.0)
  {
    self->_preTransitionContentOffsetY = 0.0;
  }

  else
  {
    v13 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
    [v13 contentOffset];
    self->_preTransitionContentOffsetY = v14;
  }

  [(TransitNavigationTrayViewController *)self _updateHeaderViewForCurrentCardHeight:v10];
  v15 = [(ContaineeViewController *)self cardPresentationController];
  [v15 cardHeight];
  [(TransitNavigationTrayViewController *)self _updateListContentInsetWithHeight:?];

  [(TransitNavigationTrayViewController *)self _updateTransitionControllerForTransitionProgressSmallToMedium:v8 mediumToFull:v10];

  [(TransitNavigationTrayViewController *)self _updateListBackgroundAlphaForCurrentCardHeight:v10];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = TransitNavigationTrayViewController;
  [(ContaineeViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(ContaineeViewController *)self cardPresentationController];
  if ([v3 containeeLayout] != 2)
  {
    goto LABEL_4;
  }

  v4 = fabs(self->_previousMediumTransitionHeight);

  if (v4 <= 2.22044605e-16)
  {
    v3 = [(ContaineeViewController *)self cardPresentationController];
    [v3 cardHeight];
    self->_previousMediumTransitionHeight = v5;
LABEL_4:
  }

  [(TransitNavigationTrayViewController *)self _updateTransitionProgressForCurrentCard];
}

- (void)viewWillLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = TransitNavigationTrayViewController;
  [(TransitNavigationTrayViewController *)&v11 viewWillLayoutSubviews];
  if (!self->_hasForcedInitialContaineeHeight)
  {
    v3 = [(ContaineeViewController *)self cardPresentationController];

    if (v3)
    {
      v4 = [(ContaineeViewController *)self cardPresentationController];
      self->_previousLayoutForTransition = [v4 containeeLayout];

      v5 = [(ContaineeViewController *)self cardPresentationController];
      self->_previousStyleForTransition = [v5 containerStyle];

      if (qword_10195DF00 != -1)
      {
        dispatch_once(&qword_10195DF00, &stru_1016303F0);
      }

      if (byte_10195DF08)
      {
        v6 = self->_previousLayoutForTransition == 3;
        v7 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
        [v7 setScrollEnabled:v6];
      }

      v8 = self->_previousLayoutForTransition != 3;
      v9 = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
      [v9 setUseCollapsedDisplayStyle:v8];

      [(TransitNavigationTrayViewController *)self _rectOfRowToKeepVisible];
      if (CGRectGetHeight(v12) > 0.0)
      {
        self->_hasForcedInitialContaineeHeight = 1;
        v10 = [(ContaineeViewController *)self cardPresentationController];
        [v10 updateHeightForCurrentLayout];
      }
    }
  }
}

- (void)viewDidLoad
{
  v79.receiver = self;
  v79.super_class = TransitNavigationTrayViewController;
  [(ContaineeViewController *)&v79 viewDidLoad];
  v3 = [(TransitNavigationTrayViewController *)self view];
  [v3 setAccessibilityIdentifier:@"TransitNavigationTray"];

  v4 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  [v4 setContentInsetAdjustmentBehavior:2];

  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 setFirstCard:1];

  [(TransitNavigationTrayViewController *)self addChildViewController:self->_listViewController];
  v6 = [(TransitDirectionsListViewController *)self->_listViewController view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setClipsToBounds:1];
  v7 = [(TransitNavigationTrayViewController *)self view];
  [v7 addSubview:v6];

  [(TransitDirectionsListViewController *)self->_listViewController didMoveToParentViewController:self];
  v8 = [[ContainerHeaderView alloc] initWithCardButtonType:1];
  containerHeaderView = self->_containerHeaderView;
  self->_containerHeaderView = v8;

  [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_containerHeaderView setButtonHidden:1];
  v10 = [(TransitNavigationTrayViewController *)self title];
  [(ContainerHeaderView *)self->_containerHeaderView setTitle:v10];

  v11 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle2 weight:UIFontWeightBold];
  [(ContainerHeaderView *)self->_containerHeaderView setCustomTitleFont:v11];

  [(ContainerHeaderView *)self->_containerHeaderView setDelegate:self];
  LODWORD(v12) = 1148846080;
  [(ContainerHeaderView *)self->_containerHeaderView setContentHuggingPriority:1 forAxis:v12];
  v13 = [(TransitNavigationTrayViewController *)self view];
  [v13 addSubview:self->_containerHeaderView];

  v14 = +[UIButton _maps_cardButtonCloseButton];
  endButton = self->_endButton;
  self->_endButton = v14;

  [(UIButton *)self->_endButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_endButton setAccessibilityIdentifier:@"TransitNavigationEndButton"];
  [(UIButton *)self->_endButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_endButton addTarget:self action:"_endButtonPressed" forControlEvents:64];
  v16 = [(TransitNavigationTrayViewController *)self view];
  [v16 addSubview:self->_endButton];

  v78 = objc_alloc_init(NSMutableArray);
  v17 = [(ContainerHeaderView *)self->_containerHeaderView bottomAnchor];
  v18 = [(TransitNavigationTrayViewController *)self view];
  v19 = [v18 topAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  headerBottomConstraint = self->_headerBottomConstraint;
  self->_headerBottomConstraint = v20;

  if (_UISolariumEnabled())
  {
    v22 = 72.0;
  }

  else
  {
    v22 = 60.0;
  }

  v80[0] = self->_headerBottomConstraint;
  v76 = [(ContainerHeaderView *)self->_containerHeaderView heightAnchor];
  LODWORD(v23) = 1132068864;
  v75 = [v76 constraintEqualToConstant:v22 priority:v23];
  v80[1] = v75;
  v74 = [(ContainerHeaderView *)self->_containerHeaderView heightAnchor];
  v73 = [v74 constraintGreaterThanOrEqualToConstant:v22];
  v80[2] = v73;
  v71 = [(ContainerHeaderView *)self->_containerHeaderView leadingAnchor];
  v72 = [(TransitNavigationTrayViewController *)self view];
  v70 = [v72 leadingAnchor];
  v69 = [v71 constraintEqualToAnchor:v70];
  v80[3] = v69;
  v68 = [(TransitNavigationTrayViewController *)self view];
  v67 = [v68 trailingAnchor];
  v66 = [(ContainerHeaderView *)self->_containerHeaderView trailingAnchor];
  v65 = [v67 constraintEqualToAnchor:v66];
  v80[4] = v65;
  v64 = [v6 topAnchor];
  v63 = [(ContainerHeaderView *)self->_containerHeaderView bottomAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v80[5] = v62;
  v60 = [v6 leadingAnchor];
  v61 = [(TransitNavigationTrayViewController *)self view];
  v59 = [v61 leadingAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v80[6] = v58;
  v57 = [(TransitNavigationTrayViewController *)self view];
  v56 = [v57 trailingAnchor];
  v77 = v6;
  v55 = [v6 trailingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v80[7] = v54;
  v53 = [(TransitNavigationTrayViewController *)self view];
  v52 = [v53 bottomAnchor];
  v51 = [v6 bottomAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v80[8] = v50;
  v48 = [(UIButton *)self->_endButton topAnchor];
  v49 = [(TransitNavigationTrayViewController *)self view];
  v47 = [v49 topAnchor];
  v46 = [v48 constraintEqualToAnchor:v47 constant:16.0];
  v80[9] = v46;
  v24 = [(UIButton *)self->_endButton trailingAnchor];
  v25 = [(TransitNavigationTrayViewController *)self view];
  v26 = [v25 trailingAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:-16.0];
  v80[10] = v27;
  v28 = [(TransitNavigationTrayViewController *)self view];
  v29 = [v28 bottomAnchor];
  v30 = [(UIButton *)self->_endButton bottomAnchor];
  v31 = [v29 constraintGreaterThanOrEqualToAnchor:v30];
  v80[11] = v31;
  v32 = [NSArray arrayWithObjects:v80 count:12];
  [v78 addObjectsFromArray:v32];

  [NSLayoutConstraint activateConstraints:v78];
  v33 = [RoutePlanningTransitionController alloc];
  v34 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  v35 = [(RoutePlanningTransitionController *)v33 initWithScrollView:v34];
  transitionController = self->_transitionController;
  self->_transitionController = v35;

  [(RoutePlanningTransitionController *)self->_transitionController setDelegate:self];
  [(RoutePlanningTransitionController *)self->_transitionController setShowMaximumContentWhenExpanding:0];
  [(TransitDirectionsListViewController *)self->_listViewController setScrollViewDelegate:self->_transitionController];
  [(TransitNavigationTrayViewController *)self _updateHeaderViewForCurrentCardHeight:0.0];
  v37 = [(ContaineeViewController *)self cardPresentationController];
  [v37 cardHeight];
  [(TransitNavigationTrayViewController *)self _updateListContentInsetWithHeight:?];

  v38 = [UIView alloc];
  v39 = [(TransitNavigationTrayViewController *)self view];
  [v39 bounds];
  v40 = [v38 initWithFrame:?];
  lowLuminanceBackgroundView = self->_lowLuminanceBackgroundView;
  self->_lowLuminanceBackgroundView = v40;

  [(UIView *)self->_lowLuminanceBackgroundView setAlpha:0.0];
  v42 = sub_100A5FDCC();
  [(UIView *)self->_lowLuminanceBackgroundView setBackgroundColor:v42];

  [(UIView *)self->_lowLuminanceBackgroundView setAutoresizingMask:18];
  v43 = [(TransitNavigationTrayViewController *)self view];
  v44 = self->_lowLuminanceBackgroundView;
  v45 = [(TransitDirectionsListViewController *)self->_listViewController view];
  [v43 insertSubview:v44 belowSubview:v45];
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = TransitNavigationTrayViewController;
  v4 = a3;
  [(TransitNavigationTrayViewController *)&v5 setTitle:v4];
  [(ContainerHeaderView *)self->_containerHeaderView setTitle:v4, v5.receiver, v5.super_class];
}

- (TransitNavigationTrayViewController)initWithRoute:(id)a3 stepsListDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = TransitNavigationTrayViewController;
  v8 = [(TransitNavigationTrayViewController *)&v17 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [v6 destination];
    v10 = [v9 navDisplayName];
    [(TransitNavigationTrayViewController *)v8 setTitle:v10];

    v11 = [(ContaineeViewController *)v8 cardPresentationController];
    [v11 setHideContentInSmallLayout:0];

    v12 = [[TransitDirectionsListViewController alloc] initWithRoute:v6 forNavigation:1];
    listViewController = v8->_listViewController;
    v8->_listViewController = v12;

    v14 = [(TransitDirectionsListViewController *)v8->_listViewController dataSource];
    [v14 setDelegate:v7];

    v15 = [(TransitDirectionsListViewController *)v8->_listViewController dataSource];
    [v15 setAutomaticallyScrollToDisplayedStep:0];
  }

  return v8;
}

@end