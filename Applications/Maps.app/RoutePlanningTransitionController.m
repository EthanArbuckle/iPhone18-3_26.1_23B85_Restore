@interface RoutePlanningTransitionController
- (BOOL)_shouldDragCardForPanEvent;
- (ContaineeProtocol)delegate;
- (RoutePlanningTransitionController)initWithScrollView:(id)a3;
- (UIScrollView)scrollView;
- (double)_pinnedScrollY;
- (double)_scrollYForFullHeight;
- (double)_scrollYForMediumHeight;
- (double)_tableHeight;
- (void)_getScrollY:(double *)a3 forTableHeight:(double)a4;
- (void)_initiateCardDragIfNeededWithInitialVerticalTranslation:(double)a3;
- (void)_panGestureRecognizerAction:(id)a3;
- (void)_resetValuesToStartTransitionFromTableHeight:(double)a3;
- (void)_terminateCardDragIfNeeded;
- (void)_updateScrollYForFullHeightIfNeeded;
- (void)_updateScrollYForMediumHeightIfNeeded:(BOOL)a3;
- (void)dealloc;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setCardDragEnabled:(BOOL)a3;
- (void)setForceMinimumScrollViewHeight:(BOOL)a3;
- (void)setTransitioning:(BOOL)a3;
- (void)startTransition;
- (void)stopTransition;
- (void)updateTransitionWithHeight:(double)a3;
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
  v5 = [(RoutePlanningTransitionController *)self scrollView];
  UIRoundToViewScale();
  v7 = v6;

  v8 = [(RoutePlanningTransitionController *)self isTransitioning];
  v9 = v8;
  if (!v8)
  {
    v2 = [(RoutePlanningTransitionController *)self delegate];
    v3 = [v2 transitionContextForTransitionController:self];
    [v3 tableViewHeightForFullLayout];
  }

  v10 = [(RoutePlanningTransitionController *)self scrollView];
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

    v13 = [(RoutePlanningTransitionController *)self scrollView];
    v14 = [v13 panGestureRecognizer];
    v15 = [(RoutePlanningTransitionController *)self scrollView];
    [v14 translationInView:v15];
    v17 = v16;

    goto LABEL_11;
  }

  v18 = [(RoutePlanningTransitionController *)self scrollView];
  v19 = [v18 panGestureRecognizer];
  v20 = [(RoutePlanningTransitionController *)self scrollView];
  [v19 translationInView:v20];
  v22 = v21;

  if (v22 <= 0.0)
  {
    return 0;
  }

  v13 = [(RoutePlanningTransitionController *)self scrollView];
  [v13 contentOffset];
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
    v3 = [(RoutePlanningTransitionController *)self scrollView];
    v4 = [v3 showsVerticalScrollIndicator];

    if ((v4 & 1) == 0)
    {
      v5 = [(RoutePlanningTransitionController *)self scrollView];
      [v5 setShowsVerticalScrollIndicator:1];
    }
  }
}

- (void)_initiateCardDragIfNeededWithInitialVerticalTranslation:(double)a3
{
  if (!self->_isPinningScrollY)
  {
    self->_isPinningScrollY = 1;
    self->_scrollViewPanGestureTranslationBeforeCardDrag = a3;
    v4 = [(RoutePlanningTransitionController *)self scrollView];
    v5 = [v4 showsVerticalScrollIndicator];

    if (v5)
    {
      v6 = [(RoutePlanningTransitionController *)self scrollView];
      [v6 setShowsVerticalScrollIndicator:0];
    }
  }
}

- (void)_panGestureRecognizerAction:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if ((v4 - 3) < 2)
  {
    self->_isPanningTable = 0;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    if ([(RoutePlanningTransitionController *)self _shouldDragCardForPanEvent])
    {
LABEL_9:
      v5 = [(RoutePlanningTransitionController *)self scrollView];
      [v7 translationInView:v5];
      [(RoutePlanningTransitionController *)self _initiateCardDragIfNeededWithInitialVerticalTranslation:v6];

      goto LABEL_10;
    }

LABEL_7:
    [(RoutePlanningTransitionController *)self _terminateCardDragIfNeeded];
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    self->_isPanningTable = 1;
    if ([(RoutePlanningTransitionController *)self _shouldDragCardForPanEvent])
    {
      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)_getScrollY:(double *)a3 forTableHeight:(double)a4
{
  if (a3)
  {
    [(RoutePlanningTransitionController *)self _updateScrollYForMediumHeightIfNeeded:1];
    heightOfRowToKeepVisible = self->_heightOfRowToKeepVisible;
    if (heightOfRowToKeepVisible <= a4)
    {
      scrollViewHeightForFullLayout = self->_scrollViewHeightForFullLayout;
      if (scrollViewHeightForFullLayout > heightOfRowToKeepVisible)
      {
        v17 = (a4 - heightOfRowToKeepVisible) / (scrollViewHeightForFullLayout - heightOfRowToKeepVisible);
        v18 = sub_100848440();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = self->_heightOfRowToKeepVisible;
          v20 = self->_scrollViewHeightForFullLayout;
          v29 = 134219008;
          v30 = v17 * 100.0;
          v31 = 2048;
          v32 = a4;
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
        *a3 = v22 + (v23 - v22) * v17;
        v9 = sub_100848440();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_19;
        }

        v25 = *a3;
        v29 = 134219008;
        v30 = v25;
        v31 = 2048;
        v32 = v22;
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
      *a3 = v27;
      v9 = sub_100848440();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v28 = *a3;
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
      *a3 = v8;
      v9 = sub_100848440();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *a3;
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
    v32 = COERCE_DOUBLE("RoutePlanningTransitionController.m");
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

- (void)_resetValuesToStartTransitionFromTableHeight:(double)a3
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

  v8 = [(RoutePlanningTransitionContext *)self->_context initiatedFromFullLayout];
  v9 = 24;
  if (v8)
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
    v14 = [(RoutePlanningTransitionContext *)self->_context initiatedFromFullLayout];
    v15 = @"NO";
    if (v14)
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

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v4 = a3;
  if ([(RoutePlanningTransitionController *)self isTransitioning]&& self->_isPinningScrollY)
  {
    [v4 stopScrollingAndZooming];
    v5 = sub_100848440();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      pinnedScrollY = self->_pinnedScrollY;
      v8 = 134217984;
      v9 = pinnedScrollY;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Decelerating. Setting contentOffset to pinnedScrollY: %#.5lf", &v8, 0xCu);
    }

    [(RoutePlanningTransitionController *)self _pinnedScrollY];
    [v4 setContentOffset:{0.0, v7}];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v8 = a3;
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

    v11 = [(RoutePlanningTransitionController *)self delegate];
    [v9 captureUserAction:v10 onTarget:objc_msgSend(v11 eventValue:{"currentUITargetForAnalytics"), 0}];
  }

  if ([(RoutePlanningTransitionController *)self isTransitioning]&& a5 && self->_isPinningScrollY)
  {
    [(RoutePlanningTransitionController *)self _pinnedScrollY];
    v13 = v12;
    [v8 setContentOffset:{0.0, v12}];
    a5->x = 0.0;
    a5->y = v13;
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

- (void)setForceMinimumScrollViewHeight:(BOOL)a3
{
  v3 = a3;
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1)
  {
    scrollViewMinimumHeightConstraint = self->_scrollViewMinimumHeightConstraint;

    [(NSLayoutConstraint *)scrollViewMinimumHeightConstraint setActive:v3];
  }
}

- (void)updateTransitionWithHeight:(double)a3
{
  if (self->_isPinningScrollY)
  {
    if (![(RoutePlanningTransitionContext *)self->_context initiatedFromFullLayout]|| !self->_isPanningTable || [(RoutePlanningTransitionController *)self _shouldDragCardForPanEvent])
    {
      v4 = [(RoutePlanningTransitionController *)self scrollView];
      [v4 layoutIfNeeded];

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
      v9 = [(RoutePlanningTransitionController *)self scrollView];
      [v9 setContentOffset:{0.0, v8}];
    }
  }

  else
  {
    [(RoutePlanningTransitionController *)self _tableHeight];
    v26 = 0;
    [(RoutePlanningTransitionController *)self _getScrollY:&v26 forTableHeight:?];
    v10 = [(RoutePlanningTransitionController *)self scrollView];
    UIRoundToViewScale();
    v12 = v11;

    v13 = [(RoutePlanningTransitionController *)self scrollView];
    [v13 contentOffset];
    v15 = v14;

    v16 = [(RoutePlanningTransitionController *)self scrollView];
    v17 = vabdd_f64(v12, v15);
    v18 = [v16 traitCollection];
    [v18 displayScale];
    v19 = 1.0;
    if (v20 >= 1.0)
    {
      v21 = [v16 traitCollection];
      [v21 displayScale];
      v19 = v22;
    }

    v23 = sub_100848440();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    if (v17 <= 1.0 / v19)
    {
      if (v24)
      {
        *buf = 134218240;
        v28 = v12;
        v29 = 2048;
        v30 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Update. No change to contentOffset.y: %#.5lf (unrounded: %#.5lf)", buf, 0x16u);
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
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Update. Setting contentOffset to %#.5lf (unrounded: %#.5lf, previous: %#.5lf)", buf, 0x20u);
      }

      v25 = [(RoutePlanningTransitionController *)self scrollView];
      [v25 layoutIfNeeded];

      v23 = [(RoutePlanningTransitionController *)self scrollView];
      [v23 setContentOffset:0.0, v12];
    }
  }
}

- (void)_updateScrollYForMediumHeightIfNeeded:(BOOL)a3
{
  v3 = a3;
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
    if (v3)
    {
      v9 = [(RoutePlanningTransitionContext *)self->_context initiatedFromFullLayout];
      v10 = 24;
      if (v9)
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

    v5 = [(RoutePlanningTransitionController *)self delegate];
    [v5 transitionControllerWillFinish:self];

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
      v11 = [(RoutePlanningTransitionController *)self scrollView];
      [v11 contentOffset];
      v13 = v12;

      v14 = [(RoutePlanningTransitionController *)self scrollView];
      v15 = vabdd_f64(v13, v10);
      v16 = [v14 traitCollection];
      [v16 displayScale];
      v17 = 1.0;
      if (v18 >= 1.0)
      {
        v19 = [v14 traitCollection];
        [v19 displayScale];
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

        v22 = [(RoutePlanningTransitionController *)self scrollView];
        [v22 setContentOffset:1 animated:{0.0, v10}];
      }

LABEL_5:
      context = self->_context;
      self->_context = 0;
    }
  }
}

- (void)startTransition
{
  v3 = [(RoutePlanningTransitionController *)self delegate];
  v4 = [v3 transitionContextForTransitionController:self];
  context = self->_context;
  self->_context = v4;

  v6 = [(RoutePlanningTransitionController *)self delegate];
  [v6 transitionControllerWillStart:self];

  [(RoutePlanningTransitionController *)self _tableHeight];
  [(RoutePlanningTransitionController *)self _resetValuesToStartTransitionFromTableHeight:?];
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  v7 = byte_10195DF08;
  v8 = [(RoutePlanningTransitionController *)self scrollView];
  v9 = [v8 heightAnchor];
  v10 = v9;
  heightOfRowToKeepVisible = self->_heightOfRowToKeepVisible;
  if (v7)
  {
    v12 = [v9 constraintEqualToConstant:heightOfRowToKeepVisible];
    scrollViewMinimumHeightConstraint = self->_scrollViewMinimumHeightConstraint;
    self->_scrollViewMinimumHeightConstraint = v12;
  }

  else
  {
    v14 = [v9 constraintGreaterThanOrEqualToConstant:heightOfRowToKeepVisible];
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
  v3 = [(RoutePlanningTransitionController *)self scrollView];
  [v3 contentInset];
  v5 = pinnedScrollY - v4;

  return v5;
}

- (double)_scrollYForFullHeight
{
  scrollYForFullHeight = self->_scrollYForFullHeight;
  v3 = [(RoutePlanningTransitionController *)self scrollView];
  [v3 contentInset];
  v5 = scrollYForFullHeight - v4;

  return v5;
}

- (double)_scrollYForMediumHeight
{
  scrollYForMediumHeight = self->_scrollYForMediumHeight;
  v3 = [(RoutePlanningTransitionController *)self scrollView];
  [v3 contentInset];
  v5 = scrollYForMediumHeight - v4;

  return v5;
}

- (double)_tableHeight
{
  v3 = [(RoutePlanningTransitionController *)self scrollView];
  [v3 bounds];
  Height = CGRectGetHeight(v9);
  v5 = [(RoutePlanningTransitionController *)self scrollView];
  [v5 contentInset];
  v7 = Height - v6;

  return v7;
}

- (void)setCardDragEnabled:(BOOL)a3
{
  if (self->_cardDragEnabled != a3)
  {
    self->_cardDragEnabled = a3;
    if (!a3)
    {
      [(RoutePlanningTransitionController *)self _terminateCardDragIfNeeded];
    }
  }
}

- (void)setTransitioning:(BOOL)a3
{
  if (self->_transitioning != a3)
  {
    self->_transitioning = a3;
    if (a3)
    {
      [(RoutePlanningTransitionController *)self startTransition];
    }

    else
    {
      [(RoutePlanningTransitionController *)self stopTransition];
    }
  }
}

- (RoutePlanningTransitionController)initWithScrollView:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RoutePlanningTransitionController;
  v5 = [(RoutePlanningTransitionController *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_showMaximumContentWhenExpanding = 1;
    objc_storeWeak(&v5->_scrollView, v4);
    if (qword_10195DF00 != -1)
    {
      dispatch_once(&qword_10195DF00, &stru_1016303F0);
    }

    if ((byte_10195DF08 & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&v6->_scrollView);
      v8 = [WeakRetained panGestureRecognizer];
      [v8 addTarget:v6 action:"_panGestureRecognizerAction:"];
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