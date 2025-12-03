@interface RAPDisplayedRouteState
- (RAPDisplayedRouteState)initWithStartWaypointTitle:(id)title endWaypointTitle:(id)waypointTitle transportType:(int)type composedRoute:(id)route;
@end

@implementation RAPDisplayedRouteState

- (RAPDisplayedRouteState)initWithStartWaypointTitle:(id)title endWaypointTitle:(id)waypointTitle transportType:(int)type composedRoute:(id)route
{
  titleCopy = title;
  waypointTitleCopy = waypointTitle;
  routeCopy = route;
  v19.receiver = self;
  v19.super_class = RAPDisplayedRouteState;
  v13 = [(RAPDisplayedRouteState *)&v19 init];
  if (v13)
  {
    v14 = [titleCopy copy];
    startWaypointTitle = v13->_startWaypointTitle;
    v13->_startWaypointTitle = v14;

    v16 = [waypointTitleCopy copy];
    endWaypointTitle = v13->_endWaypointTitle;
    v13->_endWaypointTitle = v16;

    v13->_transportType = type;
    objc_storeStrong(&v13->_composedRoute, route);
  }

  return v13;
}

@end