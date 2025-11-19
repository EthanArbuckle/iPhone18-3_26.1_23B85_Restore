@interface RAPDisplayedRouteState
- (RAPDisplayedRouteState)initWithStartWaypointTitle:(id)a3 endWaypointTitle:(id)a4 transportType:(int)a5 composedRoute:(id)a6;
@end

@implementation RAPDisplayedRouteState

- (RAPDisplayedRouteState)initWithStartWaypointTitle:(id)a3 endWaypointTitle:(id)a4 transportType:(int)a5 composedRoute:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = RAPDisplayedRouteState;
  v13 = [(RAPDisplayedRouteState *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    startWaypointTitle = v13->_startWaypointTitle;
    v13->_startWaypointTitle = v14;

    v16 = [v11 copy];
    endWaypointTitle = v13->_endWaypointTitle;
    v13->_endWaypointTitle = v16;

    v13->_transportType = a5;
    objc_storeStrong(&v13->_composedRoute, a6);
  }

  return v13;
}

@end