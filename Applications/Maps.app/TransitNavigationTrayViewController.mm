@interface TransitNavigationTrayViewController
- (BOOL)_updateListContentInsetWithHeight:(double)height;
- (BOOL)pptTestHasNextStep;
- (BOOL)pptTestMoveToBoardStep;
- (BOOL)pptTestSupportStepping;
- (CGRect)_rectOfRowToKeepVisible;
- (NSNumber)displayedItemIndexForAnalytics;
- (TransitNavigationTrayDelegate)trayDelegate;
- (TransitNavigationTrayViewController)initWithRoute:(id)route stepsListDelegate:(id)delegate;
- (double)_maximumMediumCardHeight;
- (double)heightForLayout:(unint64_t)layout;
- (id)transitionContextForTransitionController:(id)controller;
- (int64_t)pptTestCurrentStepIndex;
- (void)_endButtonPressed;
- (void)_recordChangeToLayout:(unint64_t)layout;
- (void)_updateHeaderViewForCurrentCardHeight:(double)height;
- (void)_updateTransitionControllerForTransitionProgressSmallToMedium:(double)medium mediumToFull:(double)full;
- (void)_updateTransitionProgressForCurrentCard;
- (void)didChangeContainerStyle:(unint64_t)style;
- (void)didChangeLayout:(unint64_t)layout;
- (void)headerViewTapped:(id)tapped;
- (void)pptTestMoveToNextStep;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBacklightSceneEnvironment;
- (void)updateForClusteredLegSelectedRideIndexChange;
- (void)updateForCurrentDisplayedStepAnimated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willChangeLayout:(unint64_t)layout;
@end

@implementation TransitNavigationTrayViewController

- (TransitNavigationTrayDelegate)trayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_trayDelegate);

  return WeakRetained;
}

- (NSNumber)displayedItemIndexForAnalytics
{
  dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  displayedItemIndexForAnalytics = [dataSource displayedItemIndexForAnalytics];

  return displayedItemIndexForAnalytics;
}

- (void)_recordChangeToLayout:(unint64_t)layout
{
  previousLayoutForTransition = self->_previousLayoutForTransition;
  if (previousLayoutForTransition)
  {
    if (previousLayoutForTransition >= layout)
    {
      if (previousLayoutForTransition <= layout)
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
    currentUITargetForAnalytics = [(TransitNavigationTrayViewController *)self currentUITargetForAnalytics];
    displayedItemIndexForAnalytics = [(TransitNavigationTrayViewController *)self displayedItemIndexForAnalytics];
    [v8 captureUserAction:v5 onTarget:currentUITargetForAnalytics eventValue:0 transitStep:displayedItemIndexForAnalytics];
  }
}

- (BOOL)pptTestMoveToBoardStep
{
  dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  pptTestMoveToBoardStep = [dataSource pptTestMoveToBoardStep];

  return pptTestMoveToBoardStep;
}

- (void)pptTestMoveToNextStep
{
  dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  [dataSource pptTestMoveToNextStep];
}

- (BOOL)pptTestHasNextStep
{
  dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  pptTestHasNextStep = [dataSource pptTestHasNextStep];

  return pptTestHasNextStep;
}

- (int64_t)pptTestCurrentStepIndex
{
  dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  pptTestCurrentStepIndex = [dataSource pptTestCurrentStepIndex];

  return pptTestCurrentStepIndex;
}

- (BOOL)pptTestSupportStepping
{
  dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  pptTestSupportStepping = [dataSource pptTestSupportStepping];

  return pptTestSupportStepping;
}

- (void)_endButtonPressed
{
  v3 = sub_1006E7FF0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "User pressed end button", v5, 2u);
  }

  trayDelegate = [(TransitNavigationTrayViewController *)self trayDelegate];
  [trayDelegate transitNavigationTrayDidTapClose:self];
}

- (double)_maximumMediumCardHeight
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];

  if (!cardPresentationController)
  {
    return 1.79769313e308;
  }

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController2 containerStyle];
  if (containerStyle <= 7 && ((1 << containerStyle) & 0xA3) != 0)
  {

    cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController3 availableHeight];
    v8 = v7 * 0.5;
  }

  else
  {

    cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController3 availableHeight];
    v8 = v10;
  }

  return v8;
}

- (CGRect)_rectOfRowToKeepVisible
{
  dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  [dataSource frameOfDisplayedComposedRouteStepCell];
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

- (id)transitionContextForTransitionController:(id)controller
{
  controllerCopy = controller;
  [(TransitNavigationTrayViewController *)self _rectOfRowToKeepVisible];
  Height = CGRectGetHeight(v26);
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController bottomSafeOffset];
  v8 = v7 + Height;

  [(TransitNavigationTrayViewController *)self _maximumMediumCardHeight];
  if (v8 >= v9)
  {
    [(TransitNavigationTrayViewController *)self _maximumMediumCardHeight];
    v8 = v10;
  }

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 availableHeight];
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

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = TransitNavigationTrayViewController;
  changeCopy = change;
  [(MapsThemeViewController *)&v11 traitCollectionDidChange:changeCopy];
  traitCollection = [(TransitNavigationTrayViewController *)self traitCollection];
  v6 = sub_100017FE8(changeCopy, traitCollection);

  if (v6)
  {
    traitCollection2 = [(TransitNavigationTrayViewController *)self traitCollection];
    isLuminanceReduced = [traitCollection2 isLuminanceReduced];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006E84D0;
    v9[3] = &unk_101661AE0;
    v10 = isLuminanceReduced;
    v9[4] = self;
    [UIView _maps_animateForAndromeda:isLuminanceReduced animations:v9];
  }
}

- (void)headerViewTapped:(id)tapped
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (containeeLayout == 3)
  {
    scrollView = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
    [scrollView stopScrollingAndZooming];

    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 wantsMinimizeLayout];
  }

  else
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 wantsExpandLayout];
  }
}

- (double)heightForLayout:(unint64_t)layout
{
  if (layout - 3 < 2)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController availableHeight];
    v4 = v14;
LABEL_9:

    return v4;
  }

  if (layout == 1)
  {
    [(ContaineeViewController *)self headerHeight];
    v16 = v15 + 8.0;
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    v4 = v16 + v17;
    goto LABEL_9;
  }

  v4 = 0.0;
  if (layout == 2)
  {
    traitCollection = [(TransitNavigationTrayViewController *)self traitCollection];
    verticalSizeClass = [traitCollection verticalSizeClass];

    v4 = -1.0;
    if (verticalSizeClass != 1)
    {
      [(TransitNavigationTrayViewController *)self _maximumMediumCardHeight];
      v8 = v7;
      [(TransitNavigationTrayViewController *)self _rectOfRowToKeepVisible];
      v9 = CGRectGetHeight(v25) + 8.0;
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController bottomSafeOffset];
      v12 = v11;
      v13 = 48.0;
      if (v12 >= 48.0)
      {
        verticalSizeClass = [(ContaineeViewController *)self cardPresentationController];
        [verticalSizeClass bottomSafeOffset];
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
        cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
        [cardPresentationController2 bottomSafeOffset];
        if (v21 < 48.0)
        {
          v4 = Height + 56.0;
        }

        else
        {
          cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
          [cardPresentationController3 bottomSafeOffset];
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

- (void)didChangeContainerStyle:(unint64_t)style
{
  v11.receiver = self;
  v11.super_class = TransitNavigationTrayViewController;
  [(ContaineeViewController *)&v11 didChangeContainerStyle:?];
  v5 = (style > 7) | (0x5Cu >> style);
  [(RoutePlanningTransitionController *)self->_transitionController setCardDragEnabled:((style > 7) | (0x5Cu >> style) & 1) == 0];
  dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  v7 = dataSource;
  v8 = v5 & 1;
  if (v5)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  [dataSource setAutomaticallyScrollToDisplayedStep:v8];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsLayout:v9];

  [(TransitNavigationTrayViewController *)self _updateTransitionProgressForCurrentCard];
}

- (void)didChangeLayout:(unint64_t)layout
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
    scrollView = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
    [scrollView setScrollEnabled:layout == 3];
  }

  dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  [dataSource setUseCollapsedDisplayStyle:layout != 3];

  [(TransitNavigationTrayViewController *)self _recordChangeToLayout:layout];
  [(TransitNavigationTrayViewController *)self _updateTransitionProgressForCurrentCard];
}

- (void)willChangeLayout:(unint64_t)layout
{
  v6.receiver = self;
  v6.super_class = TransitNavigationTrayViewController;
  [(ContaineeViewController *)&v6 willChangeLayout:?];
  if (layout <= 2)
  {
    dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
    [dataSource collapseAllItems];
  }
}

- (void)updateBacklightSceneEnvironment
{
  traitCollection = [(TransitNavigationTrayViewController *)self traitCollection];
  isLuminanceReduced = [traitCollection isLuminanceReduced];

  if (isLuminanceReduced)
  {
    view = [(TransitNavigationTrayViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    _backlightSceneEnvironment = [windowScene _backlightSceneEnvironment];
    [_backlightSceneEnvironment invalidateAllTimelinesForReason:@"TransitNavigationTray didReceiveUpdate"];
  }
}

- (void)updateForCurrentDisplayedStepAnimated:(BOOL)animated
{
  animatedCopy = animated;
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (containeeLayout == 2)
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 cardHeight];
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
      scrollView = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
      [scrollView setContentOffset:animatedCopy animated:{v17, v19}];
    }

    else
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "updateForCurrentDisplayedStep: need to reload current tray height", buf, 2u);
      }

      if (animatedCopy)
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1006E8D14;
        v20[3] = &unk_101661B18;
        v20[4] = self;
        [UIView animateWithDuration:v20 animations:0.25];
        return;
      }

      scrollView = [(ContaineeViewController *)self cardPresentationController];
      [scrollView updateHeightForCurrentLayout];
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

    scrollView = [(ContaineeViewController *)self cardPresentationController];
    [scrollView wantsLayout:2 animated:animatedCopy];
  }
}

- (void)updateForClusteredLegSelectedRideIndexChange
{
  dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  [dataSource updateForClusteredLegSelectedRideIndexChange];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = TransitNavigationTrayViewController;
  [(ContaineeViewController *)&v8 viewWillAppear:appear];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];
  v6 = (containerStyle > 7) | (0x5Cu >> containerStyle);

  [(RoutePlanningTransitionController *)self->_transitionController setCardDragEnabled:(v6 & 1) == 0];
  dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
  [dataSource setAutomaticallyScrollToDisplayedStep:v6 & 1];
}

- (void)_updateHeaderViewForCurrentCardHeight:(double)height
{
  scrollView = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  if ([scrollView isDragging])
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
  view = [(TransitNavigationTrayViewController *)self view];
  UIRoundToViewScale();
  v9 = v8;

  [(NSLayoutConstraint *)self->_headerBottomConstraint constant];
  if (vabdd_f64(v9, v10) > 2.22044605e-16)
  {
    [(NSLayoutConstraint *)self->_headerBottomConstraint setConstant:v9];
    containerHeaderView = self->_containerHeaderView;

    [(ContainerHeaderView *)containerHeaderView setAlpha:height];
  }
}

- (void)_updateTransitionControllerForTransitionProgressSmallToMedium:(double)medium mediumToFull:(double)full
{
  scrollView = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  isDragging = [scrollView isDragging];

  if (isDragging)
  {
    return;
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController2 containerStyle];

  if (fabs(full) <= 2.22044605e-16)
  {
    v30 = containeeLayout == 2;
LABEL_6:
    if ((containeeLayout - 1) > 1)
    {
      v11 = 0;
    }

    else
    {
      v12 = fabs(medium + -1.0) > 2.22044605e-16;
      v11 = fabs(medium) > 2.22044605e-16 && v12;
    }

    goto LABEL_11;
  }

  v30 = containeeLayout == 2;
  if (fabs(full + -1.0) <= 2.22044605e-16)
  {
    goto LABEL_6;
  }

  v11 = 1;
LABEL_11:
  previousLayoutForTransition = self->_previousLayoutForTransition;
  previousStyleForTransition = self->_previousStyleForTransition;
  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController3 cardHeight];
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
    if (previousLayoutForTransition == containeeLayout)
    {
      v22 = @"NO";
    }

    else
    {
      v22 = @"YES";
    }

    v23 = v22;
    if (previousStyleForTransition == containerStyle)
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
    fullCopy = full;
    v35 = 2048;
    mediumCopy = medium;
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

  if (previousLayoutForTransition == containeeLayout)
  {
    v27 = v11;
  }

  else
  {
    v27 = 1;
  }

  if (previousStyleForTransition != containerStyle)
  {
    v27 = 1;
  }

  if ((v27 | v18))
  {
    [(RoutePlanningTransitionController *)self->_transitionController setTransitioning:1];
  }

  if (!(v11 & 1 | ![(RoutePlanningTransitionController *)self->_transitionController isTransitioning]))
  {
    dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
    [dataSource setUseCollapsedDisplayStyle:containeeLayout != 3];
  }

  if ([(RoutePlanningTransitionController *)self->_transitionController isTransitioning])
  {
    [(RoutePlanningTransitionController *)self->_transitionController updateTransitionWithHeight:v17];
  }

  if ((v11 & 1) == 0)
  {
    self->_previousLayoutForTransition = containeeLayout;
    self->_previousStyleForTransition = containerStyle;
    if (v30 && vabdd_f64(v17, self->_previousMediumTransitionHeight) > 2.22044605e-16)
    {
      self->_previousMediumTransitionHeight = v17;
    }

    [(RoutePlanningTransitionController *)self->_transitionController setTransitioning:0];
  }
}

- (BOOL)_updateListContentInsetWithHeight:(double)height
{
  scrollView = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  isDragging = [scrollView isDragging];

  if (isDragging)
  {
    return 0;
  }

  [(NSLayoutConstraint *)self->_headerBottomConstraint constant];
  [(TransitDirectionsListViewController *)self->_listViewController _heightOfFinalRow];
  view = [(TransitNavigationTrayViewController *)self view];
  UIRoundToViewScale();
  v8 = v7;

  scrollView2 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  [scrollView2 contentInset];
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

  scrollView3 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  [scrollView3 setContentInset:{v11, v13, v8, v17}];

  return 1;
}

- (void)_updateTransitionProgressForCurrentCard
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];
  if (containerStyle > 7 || ((1 << containerStyle) & 0xA3) == 0)
  {
    v8 = 1.0;
    v10 = 1.0;
  }

  else
  {

    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 transitionProgressToAscendingLayoutFromLayout:1];
    v8 = v7;

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController transitionProgressToAscendingLayoutFromLayout:2];
    v10 = v9;
  }

  scrollView = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  [scrollView contentOffset];
  if (v12 <= 0.0)
  {
    self->_preTransitionContentOffsetY = 0.0;
  }

  else
  {
    scrollView2 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
    [scrollView2 contentOffset];
    self->_preTransitionContentOffsetY = v14;
  }

  [(TransitNavigationTrayViewController *)self _updateHeaderViewForCurrentCardHeight:v10];
  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController3 cardHeight];
  [(TransitNavigationTrayViewController *)self _updateListContentInsetWithHeight:?];

  [(TransitNavigationTrayViewController *)self _updateTransitionControllerForTransitionProgressSmallToMedium:v8 mediumToFull:v10];

  [(TransitNavigationTrayViewController *)self _updateListBackgroundAlphaForCurrentCardHeight:v10];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = TransitNavigationTrayViewController;
  [(ContaineeViewController *)&v6 viewDidLayoutSubviews];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  if ([cardPresentationController containeeLayout] != 2)
  {
    goto LABEL_4;
  }

  v4 = fabs(self->_previousMediumTransitionHeight);

  if (v4 <= 2.22044605e-16)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController cardHeight];
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
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];

    if (cardPresentationController)
    {
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      self->_previousLayoutForTransition = [cardPresentationController2 containeeLayout];

      cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
      self->_previousStyleForTransition = [cardPresentationController3 containerStyle];

      if (qword_10195DF00 != -1)
      {
        dispatch_once(&qword_10195DF00, &stru_1016303F0);
      }

      if (byte_10195DF08)
      {
        v6 = self->_previousLayoutForTransition == 3;
        scrollView = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
        [scrollView setScrollEnabled:v6];
      }

      v8 = self->_previousLayoutForTransition != 3;
      dataSource = [(TransitDirectionsListViewController *)self->_listViewController dataSource];
      [dataSource setUseCollapsedDisplayStyle:v8];

      [(TransitNavigationTrayViewController *)self _rectOfRowToKeepVisible];
      if (CGRectGetHeight(v12) > 0.0)
      {
        self->_hasForcedInitialContaineeHeight = 1;
        cardPresentationController4 = [(ContaineeViewController *)self cardPresentationController];
        [cardPresentationController4 updateHeightForCurrentLayout];
      }
    }
  }
}

- (void)viewDidLoad
{
  v79.receiver = self;
  v79.super_class = TransitNavigationTrayViewController;
  [(ContaineeViewController *)&v79 viewDidLoad];
  view = [(TransitNavigationTrayViewController *)self view];
  [view setAccessibilityIdentifier:@"TransitNavigationTray"];

  scrollView = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  [scrollView setContentInsetAdjustmentBehavior:2];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setFirstCard:1];

  [(TransitNavigationTrayViewController *)self addChildViewController:self->_listViewController];
  view2 = [(TransitDirectionsListViewController *)self->_listViewController view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view2 setClipsToBounds:1];
  view3 = [(TransitNavigationTrayViewController *)self view];
  [view3 addSubview:view2];

  [(TransitDirectionsListViewController *)self->_listViewController didMoveToParentViewController:self];
  v8 = [[ContainerHeaderView alloc] initWithCardButtonType:1];
  containerHeaderView = self->_containerHeaderView;
  self->_containerHeaderView = v8;

  [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_containerHeaderView setButtonHidden:1];
  title = [(TransitNavigationTrayViewController *)self title];
  [(ContainerHeaderView *)self->_containerHeaderView setTitle:title];

  v11 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle2 weight:UIFontWeightBold];
  [(ContainerHeaderView *)self->_containerHeaderView setCustomTitleFont:v11];

  [(ContainerHeaderView *)self->_containerHeaderView setDelegate:self];
  LODWORD(v12) = 1148846080;
  [(ContainerHeaderView *)self->_containerHeaderView setContentHuggingPriority:1 forAxis:v12];
  view4 = [(TransitNavigationTrayViewController *)self view];
  [view4 addSubview:self->_containerHeaderView];

  v14 = +[UIButton _maps_cardButtonCloseButton];
  endButton = self->_endButton;
  self->_endButton = v14;

  [(UIButton *)self->_endButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_endButton setAccessibilityIdentifier:@"TransitNavigationEndButton"];
  [(UIButton *)self->_endButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_endButton addTarget:self action:"_endButtonPressed" forControlEvents:64];
  view5 = [(TransitNavigationTrayViewController *)self view];
  [view5 addSubview:self->_endButton];

  v78 = objc_alloc_init(NSMutableArray);
  bottomAnchor = [(ContainerHeaderView *)self->_containerHeaderView bottomAnchor];
  view6 = [(TransitNavigationTrayViewController *)self view];
  topAnchor = [view6 topAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:topAnchor];
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
  heightAnchor = [(ContainerHeaderView *)self->_containerHeaderView heightAnchor];
  LODWORD(v23) = 1132068864;
  v75 = [heightAnchor constraintEqualToConstant:v22 priority:v23];
  v80[1] = v75;
  heightAnchor2 = [(ContainerHeaderView *)self->_containerHeaderView heightAnchor];
  v73 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:v22];
  v80[2] = v73;
  leadingAnchor = [(ContainerHeaderView *)self->_containerHeaderView leadingAnchor];
  view7 = [(TransitNavigationTrayViewController *)self view];
  leadingAnchor2 = [view7 leadingAnchor];
  v69 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v80[3] = v69;
  view8 = [(TransitNavigationTrayViewController *)self view];
  trailingAnchor = [view8 trailingAnchor];
  trailingAnchor2 = [(ContainerHeaderView *)self->_containerHeaderView trailingAnchor];
  v65 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v80[4] = v65;
  topAnchor2 = [view2 topAnchor];
  bottomAnchor2 = [(ContainerHeaderView *)self->_containerHeaderView bottomAnchor];
  v62 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2];
  v80[5] = v62;
  leadingAnchor3 = [view2 leadingAnchor];
  view9 = [(TransitNavigationTrayViewController *)self view];
  leadingAnchor4 = [view9 leadingAnchor];
  v58 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v80[6] = v58;
  view10 = [(TransitNavigationTrayViewController *)self view];
  trailingAnchor3 = [view10 trailingAnchor];
  v77 = view2;
  trailingAnchor4 = [view2 trailingAnchor];
  v54 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v80[7] = v54;
  view11 = [(TransitNavigationTrayViewController *)self view];
  bottomAnchor3 = [view11 bottomAnchor];
  bottomAnchor4 = [view2 bottomAnchor];
  v50 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v80[8] = v50;
  topAnchor3 = [(UIButton *)self->_endButton topAnchor];
  view12 = [(TransitNavigationTrayViewController *)self view];
  topAnchor4 = [view12 topAnchor];
  v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:16.0];
  v80[9] = v46;
  trailingAnchor5 = [(UIButton *)self->_endButton trailingAnchor];
  view13 = [(TransitNavigationTrayViewController *)self view];
  trailingAnchor6 = [view13 trailingAnchor];
  v27 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  v80[10] = v27;
  view14 = [(TransitNavigationTrayViewController *)self view];
  bottomAnchor5 = [view14 bottomAnchor];
  bottomAnchor6 = [(UIButton *)self->_endButton bottomAnchor];
  v31 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6];
  v80[11] = v31;
  v32 = [NSArray arrayWithObjects:v80 count:12];
  [v78 addObjectsFromArray:v32];

  [NSLayoutConstraint activateConstraints:v78];
  v33 = [RoutePlanningTransitionController alloc];
  scrollView2 = [(TransitDirectionsListViewController *)self->_listViewController scrollView];
  v35 = [(RoutePlanningTransitionController *)v33 initWithScrollView:scrollView2];
  transitionController = self->_transitionController;
  self->_transitionController = v35;

  [(RoutePlanningTransitionController *)self->_transitionController setDelegate:self];
  [(RoutePlanningTransitionController *)self->_transitionController setShowMaximumContentWhenExpanding:0];
  [(TransitDirectionsListViewController *)self->_listViewController setScrollViewDelegate:self->_transitionController];
  [(TransitNavigationTrayViewController *)self _updateHeaderViewForCurrentCardHeight:0.0];
  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 cardHeight];
  [(TransitNavigationTrayViewController *)self _updateListContentInsetWithHeight:?];

  v38 = [UIView alloc];
  view15 = [(TransitNavigationTrayViewController *)self view];
  [view15 bounds];
  v40 = [v38 initWithFrame:?];
  lowLuminanceBackgroundView = self->_lowLuminanceBackgroundView;
  self->_lowLuminanceBackgroundView = v40;

  [(UIView *)self->_lowLuminanceBackgroundView setAlpha:0.0];
  v42 = sub_100A5FDCC();
  [(UIView *)self->_lowLuminanceBackgroundView setBackgroundColor:v42];

  [(UIView *)self->_lowLuminanceBackgroundView setAutoresizingMask:18];
  view16 = [(TransitNavigationTrayViewController *)self view];
  v44 = self->_lowLuminanceBackgroundView;
  view17 = [(TransitDirectionsListViewController *)self->_listViewController view];
  [view16 insertSubview:v44 belowSubview:view17];
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = TransitNavigationTrayViewController;
  titleCopy = title;
  [(TransitNavigationTrayViewController *)&v5 setTitle:titleCopy];
  [(ContainerHeaderView *)self->_containerHeaderView setTitle:titleCopy, v5.receiver, v5.super_class];
}

- (TransitNavigationTrayViewController)initWithRoute:(id)route stepsListDelegate:(id)delegate
{
  routeCopy = route;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = TransitNavigationTrayViewController;
  v8 = [(TransitNavigationTrayViewController *)&v17 initWithNibName:0 bundle:0];
  if (v8)
  {
    destination = [routeCopy destination];
    navDisplayName = [destination navDisplayName];
    [(TransitNavigationTrayViewController *)v8 setTitle:navDisplayName];

    cardPresentationController = [(ContaineeViewController *)v8 cardPresentationController];
    [cardPresentationController setHideContentInSmallLayout:0];

    v12 = [[TransitDirectionsListViewController alloc] initWithRoute:routeCopy forNavigation:1];
    listViewController = v8->_listViewController;
    v8->_listViewController = v12;

    dataSource = [(TransitDirectionsListViewController *)v8->_listViewController dataSource];
    [dataSource setDelegate:delegateCopy];

    dataSource2 = [(TransitDirectionsListViewController *)v8->_listViewController dataSource];
    [dataSource2 setAutomaticallyScrollToDisplayedStep:0];
  }

  return v8;
}

@end