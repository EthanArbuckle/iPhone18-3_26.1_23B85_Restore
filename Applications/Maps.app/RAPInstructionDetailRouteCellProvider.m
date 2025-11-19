@interface RAPInstructionDetailRouteCellProvider
- (RAPInstructionDetailRouteCellProvider)initWithRoute:(id)a3;
- (id)directionStepCellForTableView:(id)a3 step:(id)a4;
- (id)transitDirectionsCellForTableView:(id)a3 item:(id)a4;
- (void)_calculateLeadingInstructionMarginForTableView:(id)a3;
- (void)registerCellsForTableView:(id)a3;
@end

@implementation RAPInstructionDetailRouteCellProvider

- (void)_calculateLeadingInstructionMarginForTableView:(id)a3
{
  [a3 bounds];
  dataSource = self->_dataSource;

  [(TransitDirectionsStepsListDataSource *)dataSource recalculateLeadingInstructionMarginForWidth:v4];
}

- (id)transitDirectionsCellForTableView:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [NSIndexPath indexPathWithIndex:1];
    v9 = [TransitDirectionsCell dequeueCellForListItem:v7 fromTableView:v6 atIndexPath:v8];
    [(RAPInstructionDetailRouteCellProvider *)self _calculateLeadingInstructionMarginForTableView:v6];
    [(TransitDirectionsStepsListDataSource *)self->_dataSource leadingInstructionMargin];
    [v9 setLeadingInstructionMargin:?];
    [v9 configureWithItem:v7];
    [v9 setAccessoryType:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 stepView];
      v11 = [v10 detailButton];
      [v11 setTitle:0 forState:0];
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

- (id)directionStepCellForTableView:(id)a3 step:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GEOComposedRoute *)self->_route steps];
  v9 = [v8 firstObject];

  v10 = [(GEOComposedRoute *)self->_route steps];
  v11 = [v10 lastObject];

  if (v9 == v7 || v11 == v7)
  {
    v13 = +[DirectionsStartEndTableViewCell reuseIdentifier];
    v17 = [v6 dequeueReusableCellWithIdentifier:v13];

    v14 = [(GEOComposedRoute *)self->_route _maps_directionsWaypoints];
    v15 = v14;
    if (v9 == v7)
    {
      [v14 firstObject];
    }

    else
    {
      [v14 lastObject];
    }
    v22 = ;
    [v17 configureForWaypoint:v22 route:self->_route selectedVehicle:0 displayedInRoutePlanning:0];
  }

  else
  {
    v16 = +[(DirectionsStepTableViewCell *)RAPDirectionsTableViewCell];
    v17 = [v6 dequeueReusableCellWithIdentifier:v16];

    v18 = [v7 geoStep];
    if ([v18 hasManeuverType])
    {
      v19 = [v7 geoStep];
      v20 = [v19 maneuverType] != 0;
    }

    else
    {
      v20 = 0;
    }

    [v17 setRoute:self->_route step:v7 stepIndex:objc_msgSend(v7 alignToLeftEdgeIfNoManeuverSign:"stepIndex") size:{v20, 4}];
    [v6 bounds];
    [v17 updateHeightForWidth:v21];
  }

  return v17;
}

- (void)registerCellsForTableView:(id)a3
{
  v3 = a3;
  [TransitDirectionsCell registerCellsForTableView:v3];
  v4 = objc_opt_class();
  v5 = +[(DirectionsStepTableViewCell *)RAPDirectionsTableViewCell];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = +[DirectionsStartEndTableViewCell reuseIdentifier];
  [v3 registerClass:v6 forCellReuseIdentifier:v7];
}

- (RAPInstructionDetailRouteCellProvider)initWithRoute:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = RAPInstructionDetailRouteCellProvider;
  v6 = [(RAPInstructionDetailRouteCellProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_route, a3);
    v8 = [[TransitDirectionsStepsListDataSource alloc] initWithRoute:v5];
    dataSource = v7->_dataSource;
    v7->_dataSource = v8;
  }

  return v7;
}

@end