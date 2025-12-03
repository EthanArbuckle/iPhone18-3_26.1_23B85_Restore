@interface RoutePlanningTransitionController
- (BOOL)_shouldDragCardForPanEvent;
- (ContaineeProtocol)delegate;
- (RoutePlanningTransitionController)initWithScrollView:(id)view;
- (UIScrollView)scrollView;
- (double)_pinnedScrollY;
- (double)_scrollYForFullHeight;
- (double)_scrollYForMediumHeight;
- (double)_tableHeight;
- (void)_getScrollY:(double *)y forTableHeight:(double)height;
- (void)_initiateCardDragIfNeededWithInitialVerticalTranslation:(double)translation;
- (void)_panGestureRecognizerAction:(id)action;
- (void)_resetValuesToStartTransitionFromTableHeight:(double)height;
- (void)_terminateCardDragIfNeeded;
- (void)_updateScrollYForFullHeightIfNeeded;
- (void)_updateScrollYForMediumHeightIfNeeded:(BOOL)needed;
- (void)dealloc;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setCardDragEnabled:(BOOL)enabled;
- (void)setForceMinimumScrollViewHeight:(BOOL)height;
- (void)setTransitioning:(BOOL)transitioning;
- (void)startTransition;
- (void)stopTransition;
- (void)updateTransitionWithHeight:(double)height;
@end

@implementation RoutePlanningTransitionController

- (ContaineeProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (BOOL)_shouldDragCardForPanEvent
{
  if (![(RoutePlanningTransitionController *)self isCardDragEnabled])
  {
    return 0;
  }

  [(RoutePlanningTransitionController *)self _tableHeight];
  scrollView = [(RoutePlanningTransitionController *)self scrollView];
  UIRoundToViewScale();
  v7 = v6;

  isTransitioning = [(RoutePlanningTransitionController *)self isTransitioning];
  v9 = isTransitioning;
  if (!isTransitioning)
  {
    delegate = [(RoutePlanningTransitionController *)self delegate];
    v3 = [delegate transitionContextForTransitionController:self];
    [v3 tableViewHeightForFullLayout];
  }

  scrollView2 = [(RoutePlanningTransitionController *)self scrollView];
  UIRoundToViewScale();
  v12 = v11;

  if ((v9 & 1) == 0)
  {
  }

  if (v7 < v12)
  {
    if (v7 != 0.0)
    {
      return 1;
    }

    scrollView3 = [(RoutePlanningTransitionController *)self scrollView];
    panGestureRecognizer = [scrollView3 panGestureRecognizer];
    scrollView4 = [(RoutePlanningTransitionController *)self scrollView];
    [panGestureRecognizer translationInView:scrollView4];
    v17 = v16;

    goto LABEL_11;
  }

  scrollView5 = [(RoutePlanningTransitionController *)self scrollView];
  panGestureRecognizer2 = [scrollView5 panGestureRecognizer];
  scrollView6 = [(RoutePlanningTransitionController *)self scrollView];
  [panGestureRecognizer2 translationInView:scrollView6];
  v22 = v21;

  if (v22 <= 0.0)
  {
    return 0;
  }

  scrollView3 = [(RoutePlanningTransitionController *)self scrollView];
  [scrollView3 contentOffset];
  v17 = v23;
LABEL_11:
  v24 = v17 <= 0.0;

  return v24;
}

- (void)_terminateCardDragIfNeeded
{
  if (self->_isPinningScrollY)
  {
    self->_isPinningScrollY = 0;
    self->_scrollViewPanGestureTranslationBeforeCardDrag = 0.0;
    scrollView = [(RoutePlanningTransitionController *)self scrollView];
    showsVerticalScrollIndicator = [scrollView showsVerticalScrollIndicator];

    if ((showsVerticalScrollIndicator & 1) == 0)
    {
      scrollView2 = [(RoutePlanningTransitionController *)self scrollView];
      [scrollView2 setShowsVerticalScrollIndicator:1];
    }
  }
}

- (void)_initiateCardDragIfNeededWithInitialVerticalTranslation:(double)translation
{
  if (!self->_isPinningScrollY)
  {
    self->_isPinningScrollY = 1;
    self->_scrollViewPanGestureTranslationBeforeCardDrag = translation;
    scrollView = [(RoutePlanningTransitionController *)self scrollView];
    showsVerticalScrollIndicator = [scrollView showsVerticalScrollIndicator];

    if (showsVerticalScrollIndicator)
    {
      scrollView2 = [(RoutePlanningTransitionController *)self scrollView];
      [scrollView2 setShowsVerticalScrollIndicator:0];
    }
  }
}

- (void)_panGestureRecognizerAction:(id)action
{
  actionCopy = action;
  state = [actionCopy state];
  if ((state - 3) < 2)
  {
    self->_isPanningTable = 0;
    goto LABEL_7;
  }

  if (state == 2)
  {
    if ([(RoutePlanningTransitionController *)self _shouldDragCardForPanEvent])
    {
LABEL_9:
      scrollView = [(RoutePlanningTransitionController *)self scrollView];
      [actionCopy translationInView:scrollView];
      [(RoutePlanningTransitionController *)self _initiateCardDragIfNeededWithInitialVerticalTranslation:v6];

      goto LABEL_10;
    }

LABEL_7:
    [(RoutePlanningTransitionController *)self _terminateCardDragIfNeeded];
    goto LABEL_10;
  }

  if (state == 1)
  {
    self->_isPanningTable = 1;
    if ([(RoutePlanningTransitionController *)self _shouldDragCardForPanEvent])
    {
      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)_getScrollY:(double *)y forTableHeight:(double)height
{
  if (y)
  {
    [(RoutePlanningTransitionController *)self _updateScrollYForMediumHeightIfNeeded:1];
    heightOfRowToKeepVisible = self->_heightOfRowToKeepVisible;
    if (heightOfRowToKeepVisible <= height)
    {
      scrollViewHeightForFullLayout = self->_scrollViewHeightForFullLayout;
      if (scrollViewHeightForFullLayout > heightOfRowToKeepVisible)
      {
        v17 = (height - heightOfRowToKeepVisible) / (scrollViewHeightForFullLayout - heightOfRowToKeepVisible);
        v18 = sub_100848440();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = self->_heightOfRowToKeepVisible;
          v20 = self->_scrollViewHeightForFullLayout;
          v29 = 134219008;
          v30 = v17 * 100.0;
          v31 = 2048;
          heightCopy = height;
          v33 = 2048;
          v34 = v19;
          v35 = 2048;
          v36 = v20;
          v37 = 2048;
          v38 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "percentMediumToFull (table is taller): percentMediumToFull: %3.1lf%% | [(%#.5lf - %1.5lf) / (%#.5lf - %#.5lf)]", &v29, 0x34u);
        }

        [(RoutePlanningTransitionController *)self _scrollYForMediumHeight];
        v22 = v21;
        [(RoutePlanningTransitionController *)self _scrollYForFullHeight];
        v24 = v23;
        *y = v22 + (v23 - v22) * v17;
        v9 = sub_100848440();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_19;
        }

        v25 = *y;
        v29 = 134219008;
        v30 = v25;
        v31 = 2048;
        heightCopy = v22;
        v33 = 2048;
        v34 = v17;
        v35 = 2048;
        v36 = v24;
        v37 = 2048;
        v38 = v22;
        v11 = "scrollY (table is taller): scrollY: %#.5lf | [%#.5lf + %1.2lf * (%#.5lf - %#.5lf)]";
        v12 = v9;
        v13 = OS_LOG_TYPE_DEBUG;
        v26 = 52;
        goto LABEL_18;
      }

      [(RoutePlanningTransitionController *)self _scrollYForMediumHeight];
      *y = v27;
      v9 = sub_100848440();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v28 = *y;
        v29 = 134217984;
        v30 = v28;
        v11 = "scrollY (table is taller, but scrollViewHeight is smaller than heightToKeepVisible): %#.5lf";
        v12 = v9;
        v13 = OS_LOG_TYPE_FAULT;
        goto LABEL_17;
      }
    }

    else
    {
      [(RoutePlanningTransitionController *)self _scrollYForMediumHeight];
      *y = v8;
      v9 = sub_100848440();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *y;
        v29 = 134217984;
        v30 = v10;
        v11 = "scrollY (cell is taller): %#.5lf";
        v12 = v9;
        v13 = OS_LOG_TYPE_DEBUG;
LABEL_17:
        v26 = 12;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v12, v13, v11, &v29, v26);
      }
    }

LABEL_19:

    return;
  }

  v14 = sub_10006D178();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v29 = 136315650;
    v30 = COERCE_DOUBLE("[RoutePlanningTransitionController _getScrollY:forTableHeight:]");
    v31 = 2080;
    heightCopy = COERCE_DOUBLE("RoutePlanningTransitionController.m");
    v33 = 1024;
    LODWORD(v34) = 324;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v29, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[NSThread callStackSymbols];
      v15 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v29 = 138412290;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@", &v29, 0xCu);
    }

    goto LABEL_19;
  }
}

- (void)_updateScrollYForFullHeightIfNeeded
{
  if (![(RoutePlanningTransitionContext *)self->_context initiatedFromFullLayout])
  {
    scrollYForMediumHeight = self->_scrollYForMediumHeight;
    if (self->_showMaximumContentWhenExpanding)
    {
      scrollViewHeightForFullLayout = self->_scrollViewHeightForFullLayout;
      v5 = self->_heightOfRowToKeepVisible + scrollYForMediumHeight;
      v6 = v5 - scrollViewHeightForFullLayout;
      v7 = v5 <= scrollViewHeightForFullLayout;
      scrollYForMediumHeight = 0.0;
      if (!v7)
      {
        scrollYForMediumHeight = v6;
      }
    }

    self->_scrollYForFullHeight = scrollYForMediumHeight;
  }
}

- (void)_resetValuesToStartTransitionFromTableHeight:(double)height
{
  [(RoutePlanningTransitionContext *)self->_context heightToFrame];
  self->_heightOfRowToKeepVisible = v4;
  [(RoutePlanningTransitionContext *)self->_context currentFrameOrigin];
  self->_scrollYForMediumHeight = v5;
  [(RoutePlanningTransitionContext *)self->_context tableViewHeightForFullLayout];
  self->_scrollViewHeightForFullLayout = v6;
  if ([(RoutePlanningTransitionContext *)self->_context initiatedFromFullLayout])
  {
    [(RoutePlanningTransitionContext *)self->_context initialOffsetY];
    self->_scrollYForFullHeight = v7;
  }

  else
  {
    [(RoutePlanningTransitionController *)self _updateScrollYForFullHeightIfNeeded];
  }

  initiatedFromFullLayout = [(RoutePlanningTransitionContext *)self->_context initiatedFromFullLayout];
  v9 = 24;
  if (initiatedFromFullLayout)
  {
    v9 = 32;
  }

  *&self->_pinnedScrollY = *(&self->super.isa + v9);
  v10 = sub_100848440();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    heightOfRowToKeepVisible = self->_heightOfRowToKeepVisible;
    scrollViewHeightForFullLayout = self->_scrollViewHeightForFullLayout;
    scrollYForMediumHeight = self->_scrollYForMediumHeight;
    initiatedFromFullLayout2 = [(RoutePlanningTransitionContext *)self->_context initiatedFromFullLayout];
    v15 = @"NO";
    if (initiatedFromFullLayout2)
    {
      v15 = @"YES";
    }

    v16 = v15;
    scrollYForFullHeight = self->_scrollYForFullHeight;
    pinnedScrollY = self->_pinnedScrollY;
    v19 = 134219266;
    v20 = heightOfRowToKeepVisible;
    v21 = 2048;
    v22 = scrollYForMediumHeight;
    v23 = 2048;
    v24 = scrollViewHeightForFullLayout;
    v25 = 2112;
    v26 = v16;
    v27 = 2048;
    v28 = scrollYForFullHeight;
    v29 = 2048;
    v30 = pinnedScrollY;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Reset values: heightOfRowToKeepVisible: %#.5lf, scrollYForMediumHeight: %#.5lf, scrollViewHeightForFullLayout: %#.5lf, initiatedFromFullLayout: %@, scrollYForFullHeight: %#.5lf, pinnedScrollY: %#.5lf", &v19, 0x3Eu);
  }
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  if ([(RoutePlanningTransitionController *)self isTransitioning]&& self->_isPinningScrollY)
  {
    [deceleratingCopy stopScrollingAndZooming];
    v5 = sub_100848440();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      pinnedScrollY = self->_pinnedScrollY;
      v8 = 134217984;
      v9 = pinnedScrollY;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Decelerating. Setting contentOffset to pinnedScrollY: %#.5lf", &v8, 0xCu);
    }

    [(RoutePlanningTransitionController *)self _pinnedScrollY];
    [deceleratingCopy setContentOffset:{0.0, v7}];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  draggingCopy = dragging;
  if (![(RoutePlanningTransitionController *)self isTransitioning])
  {
    v9 = +[MKMapService sharedService];
    if (y <= 0.0)
    {
      v10 = 7;
    }

    else
    {
      v10 = 8;
    }

    delegate = [(RoutePlanningTransitionController *)self delegate];
    [v9 captureUserAction:v10 onTarget:objc_msgSend(delegate eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  if ([(RoutePlanningTransitionController *)self isTransitioning]&& offset && self->_isPinningScrollY)
  {
    [(RoutePlanningTransitionController *)self _pinnedScrollY];
    v13 = v12;
    [draggingCopy setContentOffset:{0.0, v12}];
    offset->x = 0.0;
    offset->y = v13;
    v14 = sub_100848440();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      pinnedScrollY = self->_pinnedScrollY;
      v16 = 134217984;
      v17 = pinnedScrollY;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Will end dragging. Providing target offset of pinnedScrollY: %#.5lf", &v16, 0xCu);
    }
  }
}

- (void)setForceMinimumScrollViewHeight:(BOOL)height
{
  heightCopy = height;
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1)
  {
    scrollViewMinimumHeightConstraint = self->_scrollViewMinimumHeightConstraint;

    [(NSLayoutConstraint *)scrollViewMinimumHeightConstraint setActive:heightCopy];
  }
}

- (void)updateTransitionWithHeight:(double)height
{
  if (self->_isPinningScrollY)
  {
    if (![(RoutePlanningTransitionContext *)self->_context initiatedFromFullLayout]|| !self->_isPanningTable || [(RoutePlanningTransitionController *)self _shouldDragCardForPanEvent])
    {
      scrollView = [(RoutePlanningTransitionController *)self scrollView];
      [scrollView layoutIfNeeded];

      v5 = sub_100848440();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        pinnedScrollY = self->_pinnedScrollY;
        *buf = 134217984;
        v28 = pinnedScrollY;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Update. Setting contentOffset to pinnedScrollY: %#.5lf", buf, 0xCu);
      }

      [(RoutePlanningTransitionController *)self _pinnedScrollY];
      v8 = v7;
      scrollView2 = [(RoutePlanningTransitionController *)self scrollView];
      [scrollView2 setContentOffset:{0.0, v8}];
    }
  }

  else
  {
    [(RoutePlanningTransitionController *)self _tableHeight];
    v26 = 0;
    [(RoutePlanningTransitionController *)self _getScrollY:&v26 forTableHeight:?];
    scrollView3 = [(RoutePlanningTransitionController *)self scrollView];
    UIRoundToViewScale();
    v12 = v11;

    scrollView4 = [(RoutePlanningTransitionController *)self scrollView];
    [scrollView4 contentOffset];
    v15 = v14;

    scrollView5 = [(RoutePlanningTransitionController *)self scrollView];
    v17 = vabdd_f64(v12, v15);
    traitCollection = [scrollView5 traitCollection];
    [traitCollection displayScale];
    v19 = 1.0;
    if (v20 >= 1.0)
    {
      traitCollection2 = [scrollView5 traitCollection];
      [traitCollection2 displayScale];
      v19 = v22;
    }

    scrollView7 = sub_100848440();
    v24 = os_log_type_enabled(scrollView7, OS_LOG_TYPE_DEBUG);
    if (v17 <= 1.0 / v19)
    {
      if (v24)
      {
        *buf = 134218240;
        v28 = v12;
        v29 = 2048;
        v30 = v26;
        _os_log_impl(&_mh_execute_header, scrollView7, OS_LOG_TYPE_DEBUG, "Update. No change to contentOffset.y: %#.5lf (unrounded: %#.5lf)", buf, 0x16u);
      }
    }

    else
    {
      if (v24)
      {
        *buf = 134218496;
        v28 = v12;
        v29 = 2048;
        v30 = v26;
        v31 = 2048;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, scrollView7, OS_LOG_TYPE_DEBUG, "Update. Setting contentOffset to %#.5lf (unrounded: %#.5lf, previous: %#.5lf)", buf, 0x20u);
      }

      scrollView6 = [(RoutePlanningTransitionController *)self scrollView];
      [scrollView6 layoutIfNeeded];

      scrollView7 = [(RoutePlanningTransitionController *)self scrollView];
      [scrollView7 setContentOffset:0.0, v12];
    }
  }
}

- (void)_updateScrollYForMediumHeightIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  [(RoutePlanningTransitionContext *)self->_context currentFrameOrigin];
  v6 = v5;
  if (self->_scrollYForMediumHeight != v5)
  {
    v7 = sub_100848440();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      scrollYForMediumHeight = self->_scrollYForMediumHeight;
      v14 = 134218240;
      v15 = scrollYForMediumHeight;
      v16 = 2048;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Updating scrollYForMediumHeight (prev: %#.5lf, new: %#.5lf)", &v14, 0x16u);
    }

    self->_scrollYForMediumHeight = v6;
    [(RoutePlanningTransitionController *)self _updateScrollYForFullHeightIfNeeded];
    if (neededCopy)
    {
      initiatedFromFullLayout = [(RoutePlanningTransitionContext *)self->_context initiatedFromFullLayout];
      v10 = 24;
      if (initiatedFromFullLayout)
      {
        v10 = 32;
      }

      v11 = *(&self->super.isa + v10);
      if (vabdd_f64(v11, self->_pinnedScrollY) > 2.22044605e-16)
      {
        v12 = sub_100848440();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          pinnedScrollY = self->_pinnedScrollY;
          v14 = 134218240;
          v15 = pinnedScrollY;
          v16 = 2048;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Updating pinnedScrollY (prev: %#.5lf, new: %#.5lf)", &v14, 0x16u);
        }

        self->_pinnedScrollY = v11;
      }
    }
  }
}

- (void)stopTransition
{
  if (self->_context)
  {
    v3 = sub_100848440();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Stopping transition", &v23, 2u);
    }

    [(NSLayoutConstraint *)self->_scrollViewMinimumHeightConstraint setActive:0];
    scrollViewMinimumHeightConstraint = self->_scrollViewMinimumHeightConstraint;
    self->_scrollViewMinimumHeightConstraint = 0;

    delegate = [(RoutePlanningTransitionController *)self delegate];
    [delegate transitionControllerWillFinish:self];

    if (self->_isPanningTable)
    {
      goto LABEL_5;
    }

    [(RoutePlanningTransitionController *)self _tableHeight];
    v8 = v7;
    if (![(RoutePlanningTransitionContext *)self->_context initiatedFromFullLayout]|| ![(RoutePlanningTransitionController *)self _isClosestToFullHeight:v8])
    {
      [(RoutePlanningTransitionController *)self _updateScrollYForMediumHeightIfNeeded:0];
      if ([(RoutePlanningTransitionController *)self _isClosestToFullHeight:v8])
      {
        [(RoutePlanningTransitionController *)self _scrollYForFullHeight];
      }

      else
      {
        [(RoutePlanningTransitionController *)self _scrollYForMediumHeight];
      }

      v10 = v9;
      scrollView = [(RoutePlanningTransitionController *)self scrollView];
      [scrollView contentOffset];
      v13 = v12;

      scrollView2 = [(RoutePlanningTransitionController *)self scrollView];
      v15 = vabdd_f64(v13, v10);
      traitCollection = [scrollView2 traitCollection];
      [traitCollection displayScale];
      v17 = 1.0;
      if (v18 >= 1.0)
      {
        traitCollection2 = [scrollView2 traitCollection];
        [traitCollection2 displayScale];
        v17 = v20;
      }

      if (v15 > 1.0 / v17)
      {
        v21 = sub_100848440();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v23 = 134218240;
          v24 = v10;
          v25 = 2048;
          v26 = v13;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Setting final offset: %#.5lf (current: %#.5lf)", &v23, 0x16u);
        }

        scrollView3 = [(RoutePlanningTransitionController *)self scrollView];
        [scrollView3 setContentOffset:1 animated:{0.0, v10}];
      }

LABEL_5:
      context = self->_context;
      self->_context = 0;
    }
  }
}

- (void)startTransition
{
  delegate = [(RoutePlanningTransitionController *)self delegate];
  v4 = [delegate transitionContextForTransitionController:self];
  context = self->_context;
  self->_context = v4;

  delegate2 = [(RoutePlanningTransitionController *)self delegate];
  [delegate2 transitionControllerWillStart:self];

  [(RoutePlanningTransitionController *)self _tableHeight];
  [(RoutePlanningTransitionController *)self _resetValuesToStartTransitionFromTableHeight:?];
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  v7 = byte_10195DF08;
  scrollView = [(RoutePlanningTransitionController *)self scrollView];
  heightAnchor = [scrollView heightAnchor];
  v10 = heightAnchor;
  heightOfRowToKeepVisible = self->_heightOfRowToKeepVisible;
  if (v7)
  {
    v12 = [heightAnchor constraintEqualToConstant:heightOfRowToKeepVisible];
    scrollViewMinimumHeightConstraint = self->_scrollViewMinimumHeightConstraint;
    self->_scrollViewMinimumHeightConstraint = v12;
  }

  else
  {
    v14 = [heightAnchor constraintGreaterThanOrEqualToConstant:heightOfRowToKeepVisible];
    v15 = self->_scrollViewMinimumHeightConstraint;
    self->_scrollViewMinimumHeightConstraint = v14;

    [(NSLayoutConstraint *)self->_scrollViewMinimumHeightConstraint setActive:1];
  }

  v16 = sub_100848440();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = self->_context;
    v18 = 138412290;
    v19 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Starting transition with %@", &v18, 0xCu);
  }
}

- (double)_pinnedScrollY
{
  pinnedScrollY = self->_pinnedScrollY;
  scrollView = [(RoutePlanningTransitionController *)self scrollView];
  [scrollView contentInset];
  v5 = pinnedScrollY - v4;

  return v5;
}

- (double)_scrollYForFullHeight
{
  scrollYForFullHeight = self->_scrollYForFullHeight;
  scrollView = [(RoutePlanningTransitionController *)self scrollView];
  [scrollView contentInset];
  v5 = scrollYForFullHeight - v4;

  return v5;
}

- (double)_scrollYForMediumHeight
{
  scrollYForMediumHeight = self->_scrollYForMediumHeight;
  scrollView = [(RoutePlanningTransitionController *)self scrollView];
  [scrollView contentInset];
  v5 = scrollYForMediumHeight - v4;

  return v5;
}

- (double)_tableHeight
{
  scrollView = [(RoutePlanningTransitionController *)self scrollView];
  [scrollView bounds];
  Height = CGRectGetHeight(v9);
  scrollView2 = [(RoutePlanningTransitionController *)self scrollView];
  [scrollView2 contentInset];
  v7 = Height - v6;

  return v7;
}

- (void)setCardDragEnabled:(BOOL)enabled
{
  if (self->_cardDragEnabled != enabled)
  {
    self->_cardDragEnabled = enabled;
    if (!enabled)
    {
      [(RoutePlanningTransitionController *)self _terminateCardDragIfNeeded];
    }
  }
}

- (void)setTransitioning:(BOOL)transitioning
{
  if (self->_transitioning != transitioning)
  {
    self->_transitioning = transitioning;
    if (transitioning)
    {
      [(RoutePlanningTransitionController *)self startTransition];
    }

    else
    {
      [(RoutePlanningTransitionController *)self stopTransition];
    }
  }
}

- (RoutePlanningTransitionController)initWithScrollView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = RoutePlanningTransitionController;
  v5 = [(RoutePlanningTransitionController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_showMaximumContentWhenExpanding = 1;
    objc_storeWeak(&v5->_scrollView, viewCopy);
    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    if ((byte_10195DF08 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&v6->_scrollView);
      panGestureRecognizer = [WeakRetained panGestureRecognizer];
      [panGestureRecognizer addTarget:v6 action:"_panGestureRecognizerAction:"];
    }

    v9 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(RoutePlanningTransitionController *)self stopTransition];
  v3.receiver = self;
  v3.super_class = RoutePlanningTransitionController;
  [(RoutePlanningTransitionController *)&v3 dealloc];
}

@end