@interface RAPInstructionDetailRouteCellProvider
- (RAPInstructionDetailRouteCellProvider)initWithRoute:(id)route;
- (id)directionStepCellForTableView:(id)view step:(id)step;
- (id)transitDirectionsCellForTableView:(id)view item:(id)item;
- (void)_calculateLeadingInstructionMarginForTableView:(id)view;
- (void)registerCellsForTableView:(id)view;
@end

@implementation RAPInstructionDetailRouteCellProvider

- (void)_calculateLeadingInstructionMarginForTableView:(id)view
{
  [view bounds];
  dataSource = self->_dataSource;

  [(TransitDirectionsStepsListDataSource *)dataSource recalculateLeadingInstructionMarginForWidth:v4];
}

- (id)transitDirectionsCellForTableView:(id)view item:(id)item
{
  viewCopy = view;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [NSIndexPath indexPathWithIndex:1];
    v9 = [TransitDirectionsCell dequeueCellForListItem:itemCopy fromTableView:viewCopy atIndexPath:v8];
    [(RAPInstructionDetailRouteCellProvider *)self _calculateLeadingInstructionMarginForTableView:viewCopy];
    [(TransitDirectionsStepsListDataSource *)self->_dataSource leadingInstructionMargin];
    [v9 setLeadingInstructionMargin:?];
    [v9 configureWithItem:itemCopy];
    [v9 setAccessoryType:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stepView = [v9 stepView];
      detailButton = [stepView detailButton];
      [detailButton setTitle:0 forState:0];
    }
  }

  else
  {
    v12 = [MKTableViewCell alloc];
    v13 = objc_opt_class();
    v8 = NSStringFromClass(v13);
    v9 = [v12 initWithStyle:0 reuseIdentifier:v8];
  }

  return v9;
}

- (id)directionStepCellForTableView:(id)view step:(id)step
{
  viewCopy = view;
  stepCopy = step;
  steps = [(GEOComposedRoute *)self->_route steps];
  firstObject = [steps firstObject];

  steps2 = [(GEOComposedRoute *)self->_route steps];
  lastObject = [steps2 lastObject];

  if (firstObject == stepCopy || lastObject == stepCopy)
  {
    v13 = +[DirectionsStartEndTableViewCell reuseIdentifier];
    v17 = [viewCopy dequeueReusableCellWithIdentifier:v13];

    _maps_directionsWaypoints = [(GEOComposedRoute *)self->_route _maps_directionsWaypoints];
    v15 = _maps_directionsWaypoints;
    if (firstObject == stepCopy)
    {
      [_maps_directionsWaypoints firstObject];
    }

    else
    {
      [_maps_directionsWaypoints lastObject];
    }
    v22 = ;
    [v17 configureForWaypoint:v22 route:self->_route selectedVehicle:0 displayedInRoutePlanning:0];
  }

  else
  {
    v16 = +[(DirectionsStepTableViewCell *)RAPDirectionsTableViewCell];
    v17 = [viewCopy dequeueReusableCellWithIdentifier:v16];

    geoStep = [stepCopy geoStep];
    if ([geoStep hasManeuverType])
    {
      geoStep2 = [stepCopy geoStep];
      v20 = [geoStep2 maneuverType] != 0;
    }

    else
    {
      v20 = 0;
    }

    [v17 setRoute:self->_route step:stepCopy stepIndex:objc_msgSend(stepCopy alignToLeftEdgeIfNoManeuverSign:"stepIndex") size:{v20, 4}];
    [viewCopy bounds];
    [v17 updateHeightForWidth:v21];
  }

  return v17;
}

- (void)registerCellsForTableView:(id)view
{
  viewCopy = view;
  [TransitDirectionsCell registerCellsForTableView:viewCopy];
  v4 = objc_opt_class();
  v5 = +[(DirectionsStepTableViewCell *)RAPDirectionsTableViewCell];
  [viewCopy registerClass:v4 forCellReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = +[DirectionsStartEndTableViewCell reuseIdentifier];
  [viewCopy registerClass:v6 forCellReuseIdentifier:v7];
}

- (RAPInstructionDetailRouteCellProvider)initWithRoute:(id)route
{
  routeCopy = route;
  v11.receiver = self;
  v11.super_class = RAPInstructionDetailRouteCellProvider;
  v6 = [(RAPInstructionDetailRouteCellProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_route, route);
    v8 = [[TransitDirectionsStepsListDataSource alloc] initWithRoute:routeCopy];
    dataSource = v7->_dataSource;
    v7->_dataSource = v8;
  }

  return v7;
}

@end