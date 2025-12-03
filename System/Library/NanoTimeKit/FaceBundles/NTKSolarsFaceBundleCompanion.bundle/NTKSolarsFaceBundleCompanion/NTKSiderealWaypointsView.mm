@interface NTKSiderealWaypointsView
- (NTKSiderealWaypointsView)initWithFrame:(CGRect)frame orbitDiameter:(double)diameter dialDiameter:(double)dialDiameter waypoints:(id)waypoints;
- (id)_newSeparatorLineForWaypoint:(id)waypoint;
- (id)_newWaypointView;
- (void)_updateSeparatorLines;
- (void)setWaypoints:(id)waypoints;
@end

@implementation NTKSiderealWaypointsView

- (NTKSiderealWaypointsView)initWithFrame:(CGRect)frame orbitDiameter:(double)diameter dialDiameter:(double)dialDiameter waypoints:(id)waypoints
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  waypointsCopy = waypoints;
  v39.receiver = self;
  v39.super_class = NTKSiderealWaypointsView;
  height = [(NTKSiderealWaypointsView *)&v39 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    height->_orbitDiameter = diameter;
    height->_dialDiameter = dialDiameter;
    height->_waypointDiameter = 3.5;
    v16 = [UIView alloc];
    [(NTKSiderealWaypointsView *)v15 bounds];
    v17 = [v16 initWithFrame:?];
    orbitContainerView = v15->_orbitContainerView;
    v15->_orbitContainerView = v17;

    [(UIView *)v15->_orbitContainerView setAlpha:0.25];
    [(UIView *)v15->_orbitContainerView setOpaque:0];
    [(UIView *)v15->_orbitContainerView setUserInteractionEnabled:0];
    layer = [(UIView *)v15->_orbitContainerView layer];
    [layer setAllowsGroupOpacity:1];

    layer2 = [(UIView *)v15->_orbitContainerView layer];
    [layer2 setAllowsGroupBlending:1];

    layer3 = [(UIView *)v15->_orbitContainerView layer];
    [layer3 setCompositingFilter:kCAFilterScreenBlendMode];

    [(NTKSiderealWaypointsView *)v15 addSubview:v15->_orbitContainerView];
    v22 = [[NTKBezierPathView alloc] initWithFrame:{0.0, 0.0, diameter, diameter}];
    [v22 bounds];
    v23 = [UIBezierPath bezierPathWithOvalInRect:?];
    [v23 setLineWidth:1.0];
    [v22 setPath:v23];
    v24 = [UIColor colorWithRed:0.8 green:0.941176471 blue:1.0 alpha:1.0];
    [v22 setPathColor:v24];

    [(NTKSiderealWaypointsView *)v15 bounds];
    CLKRectGetCenter();
    [v22 setCenter:?];
    [(UIView *)v15->_orbitContainerView addSubview:v22];
    v25 = +[NSMutableArray array];
    separatorLines = v15->_separatorLines;
    v15->_separatorLines = v25;

    v27 = [UIView alloc];
    [(NTKSiderealWaypointsView *)v15 bounds];
    v28 = [v27 initWithFrame:?];
    separatorLinesContainer = v15->_separatorLinesContainer;
    v15->_separatorLinesContainer = v28;

    v30 = v15->_separatorLinesContainer;
    [(UIView *)v15->_orbitContainerView center];
    [(UIView *)v30 setCenter:?];
    CGAffineTransformMakeRotation(&v38, 1.57079633);
    v31 = v15->_separatorLinesContainer;
    v37 = v38;
    [(UIView *)v31 setTransform:&v37];
    [(UIView *)v15->_orbitContainerView addSubview:v15->_separatorLinesContainer];
    v32 = [UIView alloc];
    [(NTKSiderealWaypointsView *)v15 bounds];
    v33 = [v32 initWithFrame:?];
    waypointContainerView = v15->_waypointContainerView;
    v15->_waypointContainerView = v33;

    v35 = v15->_waypointContainerView;
    [(UIView *)v15->_orbitContainerView center];
    [(UIView *)v35 setCenter:?];
    [(UIView *)v15->_orbitContainerView addSubview:v15->_waypointContainerView];
    [(NTKSiderealWaypointsView *)v15 setWaypoints:waypointsCopy];
  }

  return v15;
}

- (void)setWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  objc_storeStrong(&self->_waypoints, waypoints);
  subviews = [(UIView *)self->_waypointContainerView subviews];
  [subviews makeObjectsPerformSelector:"removeFromSuperview"];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_waypoints;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        _newWaypointView = [(NTKSiderealWaypointsView *)self _newWaypointView];
        orbitDiameter = self->_orbitDiameter;
        [(NTKSiderealWaypointsView *)self bounds];
        CLKRectGetCenter();
        [v11 degree];
        CLKDegreesToRadians();
        NTKPointOnCircle();
        [_newWaypointView setCenter:?];
        [(UIView *)self->_waypointContainerView addSubview:_newWaypointView];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(NTKSiderealWaypointsView *)self _updateSeparatorLines];
}

- (void)_updateSeparatorLines
{
  [(NSMutableArray *)self->_separatorLines enumerateObjectsUsingBlock:&stru_2C8A0];
  [(NSMutableArray *)self->_separatorLines removeAllObjects];
  waypoints = self->_waypoints;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_2008;
  v15[3] = &unk_2C8C8;
  v16 = &off_2DEF0;
  v4 = [(NSArray *)waypoints indexesOfObjectsPassingTest:v15];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)self->_waypoints objectsAtIndexes:v4, 0];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NTKSiderealWaypointsView *)self _newSeparatorLineForWaypoint:*(*(&v11 + 1) + 8 * v9)];
        [(NSMutableArray *)self->_separatorLines addObject:v10];
        [(UIView *)self->_separatorLinesContainer addSubview:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)_newWaypointView
{
  v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, self->_waypointDiameter, self->_waypointDiameter}];
  layer = [v3 layer];
  [layer setCornerRadius:self->_waypointDiameter * 0.5];

  v5 = [UIColor colorWithRed:0.8 green:0.941176471 blue:1.0 alpha:1.0];
  [v3 setBackgroundColor:v5];

  return v3;
}

- (id)_newSeparatorLineForWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  v5 = +[UIBezierPath bezierPath];
  [(NTKSiderealWaypointsView *)self bounds];
  CLKRectGetCenter();
  [v5 moveToPoint:?];
  dialDiameter = self->_dialDiameter;
  [(NTKSiderealWaypointsView *)self bounds];
  CLKRectGetCenter();
  [waypointCopy degree];

  CLKDegreesToRadians();
  NTKPointOnCircle();
  [v5 addLineToPoint:?];
  v7 = +[CLKDevice currentDevice];
  [v7 screenScale];
  [v5 setLineWidth:1.0 / v8];

  v9 = [NTKBezierPathView alloc];
  [(NTKSiderealWaypointsView *)self bounds];
  v10 = [v9 initWithFrame:?];
  [v10 setPath:v5];
  v11 = [UIColor colorWithRed:0.8 green:0.941176471 blue:1.0 alpha:0.25];
  [v10 setPathColor:v11];

  return v10;
}

@end