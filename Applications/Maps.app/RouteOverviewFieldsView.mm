@interface RouteOverviewFieldsView
- (RouteOverviewFieldsView)initWithDelegate:(id)delegate waypointInfoProvider:(id)provider editingMode:(unint64_t)mode;
- (RouteOverviewFieldsViewDelegate)delegate;
- (double)estimatedHeight;
- (void)_addRefinementsBar;
- (void)_pressedTiming;
- (void)_removeRefinementsBar;
- (void)_setEstimatedHeight:(double)height;
- (void)collapseWaypointsIfNeeded;
- (void)expandWaypointsIfNeeded;
- (void)reset;
- (void)setHasRefinementsBar:(BOOL)bar;
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
  leadingAnchor = [(RoutePlanningRefinementBarView *)self->_refinementBarView leadingAnchor];
  leadingAnchor2 = [(RouteOverviewFieldsView *)self leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v18[0] = v15;
  trailingAnchor = [(RoutePlanningRefinementBarView *)self->_refinementBarView trailingAnchor];
  trailingAnchor2 = [(RouteOverviewFieldsView *)self trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v18[1] = v7;
  topAnchor = [(RoutePlanningRefinementBarView *)self->_refinementBarView topAnchor];
  bottomAnchor = [(RoutePlanningWaypointListView *)self->_waypointListView bottomAnchor];
  v10 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:v4];
  v18[2] = v10;
  bottomAnchor2 = [(RoutePlanningRefinementBarView *)self->_refinementBarView bottomAnchor];
  bottomAnchor3 = [(RouteOverviewFieldsView *)self bottomAnchor];
  v13 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v18[3] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)_pressedTiming
{
  delegate = [(RouteOverviewFieldsView *)self delegate];
  [delegate didTapTimingInFieldsView:self];
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

- (void)setHasRefinementsBar:(BOOL)bar
{
  if (self->_hasRefinementsBar != bar)
  {
    self->_hasRefinementsBar = bar;
    if (bar)
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

  delegate = [(RouteOverviewFieldsView *)self delegate];
  if ([delegate transportTypeForFieldsView:self] == 4)
  {
    v6 = GEOConfigGetBOOL() ^ 1;
  }

  else
  {
    v6 = 1;
  }

  [(RouteOverviewFieldsView *)self setHasRefinementsBar:v6];
  [(RouteOverviewFieldsView *)self _setEstimatedHeight:0.0];
  delegate2 = [(RouteOverviewFieldsView *)self delegate];
  v7 = [delegate2 currentRefinementsForFieldsView:self];
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
  overrideWaypoints = [(RouteOverviewFieldsView *)self overrideWaypoints];
  if (overrideWaypoints)
  {
    p_waypointListView = &self->_waypointListView;
    [(RoutePlanningWaypointListView *)self->_waypointListView setWaypoints:overrideWaypoints];
  }

  else
  {
    delegate = [(RouteOverviewFieldsView *)self delegate];
    v8 = [delegate waypointsForFieldsView:self];
    p_waypointListView = &self->_waypointListView;
    [(RoutePlanningWaypointListView *)self->_waypointListView setWaypoints:v8];
  }

  delegate2 = [(RouteOverviewFieldsView *)self delegate];
  v10 = [delegate2 transportTypeForFieldsView:self];
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

- (void)_setEstimatedHeight:(double)height
{
  v5 = sub_100798A3C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    heightCopy = height;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "RouteOverviewFieldsView set estimatedHeight %f", &v6, 0xCu);
  }

  self->_estimatedHeight = height;
}

- (RouteOverviewFieldsView)initWithDelegate:(id)delegate waypointInfoProvider:(id)provider editingMode:(unint64_t)mode
{
  delegateCopy = delegate;
  providerCopy = provider;
  v43.receiver = self;
  v43.super_class = RouteOverviewFieldsView;
  v10 = [(RouteOverviewFieldsView *)&v43 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v12 = [RoutePlanningWaypointListView alloc];
    v13 = [delegateCopy waypointsForFieldsView:v11];
    v41 = providerCopy;
    v14 = [(RoutePlanningWaypointListView *)v12 initWithWaypoints:v13 editingMode:mode delegate:delegateCopy waypointInfoProvider:providerCopy];
    waypointListView = v11->_waypointListView;
    v11->_waypointListView = v14;

    v16 = [delegateCopy transportTypeForFieldsView:v11];
    v17 = 0;
    v42 = delegateCopy;
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
        bottomAnchor = [(RoutePlanningWaypointListView *)v11->_waypointListView bottomAnchor];
        bottomAnchor2 = [(RouteOverviewFieldsView *)v11 bottomAnchor];
        v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        waypointListViewBottomConstraint = v11->_waypointListViewBottomConstraint;
        v11->_waypointListViewBottomConstraint = v21;

        topAnchor = [(RoutePlanningWaypointListView *)v11->_waypointListView topAnchor];
        topAnchor2 = [(RouteOverviewFieldsView *)v11 topAnchor];
        v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v44[0] = v24;
        leadingAnchor = [(RoutePlanningWaypointListView *)v11->_waypointListView leadingAnchor];
        leadingAnchor2 = [(RouteOverviewFieldsView *)v11 leadingAnchor];
        v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
        v44[1] = v27;
        trailingAnchor = [(RoutePlanningWaypointListView *)v11->_waypointListView trailingAnchor];
        trailingAnchor2 = [(RouteOverviewFieldsView *)v11 trailingAnchor];
        v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-0.0];
        v44[2] = v30;
        v31 = [NSArray arrayWithObjects:v44 count:3];
        [NSLayoutConstraint activateConstraints:v31];

        v32 = [_TtC4Maps30RoutePlanningRefinementBarView alloc];
        delegate = [(RouteOverviewFieldsView *)v11 delegate];
        v34 = [delegate currentRefinementsForFieldsView:v11];
        delegateCopy = v42;
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
        providerCopy = v41;
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