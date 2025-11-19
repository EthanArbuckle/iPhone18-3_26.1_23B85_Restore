@interface RouteOverviewFieldsView
- (RouteOverviewFieldsView)initWithDelegate:(id)a3 waypointInfoProvider:(id)a4 editingMode:(unint64_t)a5;
- (RouteOverviewFieldsViewDelegate)delegate;
- (double)estimatedHeight;
- (void)_addRefinementsBar;
- (void)_pressedTiming;
- (void)_removeRefinementsBar;
- (void)_setEstimatedHeight:(double)a3;
- (void)collapseWaypointsIfNeeded;
- (void)expandWaypointsIfNeeded;
- (void)reset;
- (void)setHasRefinementsBar:(BOOL)a3;
- (void)setNeedsUpdateRefinements;
- (void)setNeedsUpdateWaypointsList;
- (void)updateRefinements;
- (void)updateWaypointsList;
@end

@implementation RouteOverviewFieldsView

- (RouteOverviewFieldsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_removeRefinementsBar
{
  [(RouteOverviewFieldsView *)self _setEstimatedHeight:0.0];
  [(RoutePlanningRefinementBarView *)self->_refinementBarView removeFromSuperview];
  waypointListViewBottomConstraint = self->_waypointListViewBottomConstraint;

  [(NSLayoutConstraint *)waypointListViewBottomConstraint setActive:1];
}

- (void)_addRefinementsBar
{
  [(RouteOverviewFieldsView *)self addSubview:self->_refinementBarView];
  [(RouteOverviewFieldsView *)self _setEstimatedHeight:0.0];
  [(NSLayoutConstraint *)self->_waypointListViewBottomConstraint setActive:0];
  +[_TtC4Maps23MapsDesignConstantsShim discreteListRowSpacing];
  v4 = v3;
  v17 = [(RoutePlanningRefinementBarView *)self->_refinementBarView leadingAnchor];
  v16 = [(RouteOverviewFieldsView *)self leadingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v18[0] = v15;
  v5 = [(RoutePlanningRefinementBarView *)self->_refinementBarView trailingAnchor];
  v6 = [(RouteOverviewFieldsView *)self trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v18[1] = v7;
  v8 = [(RoutePlanningRefinementBarView *)self->_refinementBarView topAnchor];
  v9 = [(RoutePlanningWaypointListView *)self->_waypointListView bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v4];
  v18[2] = v10;
  v11 = [(RoutePlanningRefinementBarView *)self->_refinementBarView bottomAnchor];
  v12 = [(RouteOverviewFieldsView *)self bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v18[3] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)_pressedTiming
{
  v3 = [(RouteOverviewFieldsView *)self delegate];
  [v3 didTapTimingInFieldsView:self];
}

- (void)reset
{
  [(RouteOverviewFieldsView *)self _setEstimatedHeight:0.0];
  [(RoutePlanningWaypointListView *)self->_waypointListView setWaypoints:&__NSArray0__struct];
  [(RoutePlanningWaypointListView *)self->_waypointListView collapseStopsIfNeeded];
  [(RoutePlanningRefinementBarView *)self->_refinementBarView setRefinements:&__NSArray0__struct];
  refinementBarView = self->_refinementBarView;

  [(RoutePlanningRefinementBarView *)refinementBarView resetScrollPosition];
}

- (void)collapseWaypointsIfNeeded
{
  [(RouteOverviewFieldsView *)self _setEstimatedHeight:0.0];
  waypointListView = self->_waypointListView;

  [(RoutePlanningWaypointListView *)waypointListView collapseStopsIfNeeded];
}

- (void)expandWaypointsIfNeeded
{
  [(RouteOverviewFieldsView *)self _setEstimatedHeight:0.0];
  waypointListView = self->_waypointListView;

  [(RoutePlanningWaypointListView *)waypointListView expandStopsIfNeeded];
}

- (double)estimatedHeight
{
  result = self->_estimatedHeight;
  if (result <= 0.0)
  {
    [(RouteOverviewFieldsView *)self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
    [(RouteOverviewFieldsView *)self _setEstimatedHeight:v4];
    return self->_estimatedHeight;
  }

  return result;
}

- (void)setHasRefinementsBar:(BOOL)a3
{
  if (self->_hasRefinementsBar != a3)
  {
    self->_hasRefinementsBar = a3;
    if (a3)
    {
      [(RouteOverviewFieldsView *)self _addRefinementsBar];
    }

    else
    {
      [(RouteOverviewFieldsView *)self _removeRefinementsBar];
    }
  }
}

- (void)setNeedsUpdateRefinements
{
  if (!self->_refinementsUpdateTimer)
  {
    objc_initWeak(&location, self);
    v3 = &_dispatch_main_q;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100D4B65C;
    v6[3] = &unk_1016616E8;
    objc_copyWeak(&v7, &location);
    v4 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v6 block:2.22044605e-16];
    refinementsUpdateTimer = self->_refinementsUpdateTimer;
    self->_refinementsUpdateTimer = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)updateRefinements
{
  refinementsUpdateTimer = self->_refinementsUpdateTimer;
  if (refinementsUpdateTimer)
  {
    [(GCDTimer *)refinementsUpdateTimer invalidate];
    v4 = self->_refinementsUpdateTimer;
    self->_refinementsUpdateTimer = 0;
  }

  v5 = [(RouteOverviewFieldsView *)self delegate];
  if ([v5 transportTypeForFieldsView:self] == 4)
  {
    v6 = GEOConfigGetBOOL() ^ 1;
  }

  else
  {
    v6 = 1;
  }

  [(RouteOverviewFieldsView *)self setHasRefinementsBar:v6];
  [(RouteOverviewFieldsView *)self _setEstimatedHeight:0.0];
  v8 = [(RouteOverviewFieldsView *)self delegate];
  v7 = [v8 currentRefinementsForFieldsView:self];
  [(RoutePlanningRefinementBarView *)self->_refinementBarView setRefinements:v7];
}

- (void)setNeedsUpdateWaypointsList
{
  if (!self->_waypointsListUpdateTimer)
  {
    objc_initWeak(&location, self);
    v3 = &_dispatch_main_q;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100D4B8A8;
    v6[3] = &unk_1016616E8;
    objc_copyWeak(&v7, &location);
    v4 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v6 block:2.22044605e-16];
    waypointsListUpdateTimer = self->_waypointsListUpdateTimer;
    self->_waypointsListUpdateTimer = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)updateWaypointsList
{
  waypointsListUpdateTimer = self->_waypointsListUpdateTimer;
  if (waypointsListUpdateTimer)
  {
    [(GCDTimer *)waypointsListUpdateTimer invalidate];
    v4 = self->_waypointsListUpdateTimer;
    self->_waypointsListUpdateTimer = 0;
  }

  [(RouteOverviewFieldsView *)self _setEstimatedHeight:0.0];
  v5 = [(RouteOverviewFieldsView *)self overrideWaypoints];
  if (v5)
  {
    p_waypointListView = &self->_waypointListView;
    [(RoutePlanningWaypointListView *)self->_waypointListView setWaypoints:v5];
  }

  else
  {
    v7 = [(RouteOverviewFieldsView *)self delegate];
    v8 = [v7 waypointsForFieldsView:self];
    p_waypointListView = &self->_waypointListView;
    [(RoutePlanningWaypointListView *)self->_waypointListView setWaypoints:v8];
  }

  v9 = [(RouteOverviewFieldsView *)self delegate];
  v10 = [v9 transportTypeForFieldsView:self];
  v11 = 0;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      if (v10 != 5)
      {
        goto LABEL_18;
      }

      IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
      goto LABEL_17;
    }
  }

  else
  {
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_18;
      }

      IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
      goto LABEL_17;
    }

    if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
    {
      v11 = 1;
      goto LABEL_18;
    }
  }

  IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
LABEL_17:
  v11 = IsEnabled_Maps420;
LABEL_18:
  [(RoutePlanningWaypointListView *)*p_waypointListView setMprEnabled:v11];

  v13 = *p_waypointListView;

  [(RoutePlanningWaypointListView *)v13 refreshWaypointDisplay];
}

- (void)_setEstimatedHeight:(double)a3
{
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "RouteOverviewFieldsView set estimatedHeight %f", &v6, 0xCu);
  }

  self->_estimatedHeight = a3;
}

- (RouteOverviewFieldsView)initWithDelegate:(id)a3 waypointInfoProvider:(id)a4 editingMode:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v43.receiver = self;
  v43.super_class = RouteOverviewFieldsView;
  v10 = [(RouteOverviewFieldsView *)&v43 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v8);
    v12 = [RoutePlanningWaypointListView alloc];
    v13 = [v8 waypointsForFieldsView:v11];
    v41 = v9;
    v14 = [(RoutePlanningWaypointListView *)v12 initWithWaypoints:v13 editingMode:a5 delegate:v8 waypointInfoProvider:v9];
    waypointListView = v11->_waypointListView;
    v11->_waypointListView = v14;

    v16 = [v8 transportTypeForFieldsView:v11];
    v17 = 0;
    v42 = v8;
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        if (v16 == 5)
        {
          IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
          goto LABEL_13;
        }

LABEL_14:
        [(RoutePlanningWaypointListView *)v11->_waypointListView setMprEnabled:v17];
        [(RoutePlanningWaypointListView *)v11->_waypointListView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(RouteOverviewFieldsView *)v11 addSubview:v11->_waypointListView];
        _UISolariumEnabled();
        v19 = [(RoutePlanningWaypointListView *)v11->_waypointListView bottomAnchor];
        v20 = [(RouteOverviewFieldsView *)v11 bottomAnchor];
        v21 = [v19 constraintEqualToAnchor:v20];
        waypointListViewBottomConstraint = v11->_waypointListViewBottomConstraint;
        v11->_waypointListViewBottomConstraint = v21;

        v40 = [(RoutePlanningWaypointListView *)v11->_waypointListView topAnchor];
        v23 = [(RouteOverviewFieldsView *)v11 topAnchor];
        v24 = [v40 constraintEqualToAnchor:v23];
        v44[0] = v24;
        v25 = [(RoutePlanningWaypointListView *)v11->_waypointListView leadingAnchor];
        v26 = [(RouteOverviewFieldsView *)v11 leadingAnchor];
        v27 = [v25 constraintEqualToAnchor:v26 constant:0.0];
        v44[1] = v27;
        v28 = [(RoutePlanningWaypointListView *)v11->_waypointListView trailingAnchor];
        v29 = [(RouteOverviewFieldsView *)v11 trailingAnchor];
        v30 = [v28 constraintEqualToAnchor:v29 constant:-0.0];
        v44[2] = v30;
        v31 = [NSArray arrayWithObjects:v44 count:3];
        [NSLayoutConstraint activateConstraints:v31];

        v32 = [_TtC4Maps30RoutePlanningRefinementBarView alloc];
        v33 = [(RouteOverviewFieldsView *)v11 delegate];
        v34 = [v33 currentRefinementsForFieldsView:v11];
        v8 = v42;
        v35 = [(RoutePlanningRefinementBarView *)v32 initWithDelegate:v42 refinements:v34];
        refinementBarView = v11->_refinementBarView;
        v11->_refinementBarView = v35;

        [(RoutePlanningRefinementBarView *)v11->_refinementBarView setTranslatesAutoresizingMaskIntoConstraints:0];
        LODWORD(v37) = 1148846080;
        [(RoutePlanningRefinementBarView *)v11->_refinementBarView setContentHuggingPriority:1 forAxis:v37];
        LODWORD(v38) = 1148846080;
        [(RoutePlanningRefinementBarView *)v11->_refinementBarView setContentCompressionResistancePriority:1 forAxis:v38];
        [(RouteOverviewFieldsView *)v11 _addRefinementsBar];
        v11->_hasRefinementsBar = 1;
        v9 = v41;
        goto LABEL_15;
      }
    }

    else
    {
      if (v16)
      {
        if (v16 == 1)
        {
          IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
LABEL_13:
          v17 = IsEnabled_Maps420;
          goto LABEL_14;
        }

        goto LABEL_14;
      }

      if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
      {
        v17 = 1;
        goto LABEL_14;
      }
    }

    IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
    goto LABEL_13;
  }

LABEL_15:

  return v11;
}

@end