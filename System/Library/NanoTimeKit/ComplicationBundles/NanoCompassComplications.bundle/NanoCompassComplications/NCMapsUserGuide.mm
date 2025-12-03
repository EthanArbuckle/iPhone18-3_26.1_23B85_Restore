@interface NCMapsUserGuide
- (NCMapsUserGuide)initWithIdentifier:(id)identifier name:(id)name waypoints:(id)waypoints;
- (void)deleteWaypoint:(id)waypoint;
- (void)updateWaypoint:(id)waypoint;
@end

@implementation NCMapsUserGuide

- (NCMapsUserGuide)initWithIdentifier:(id)identifier name:(id)name waypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  v13.receiver = self;
  v13.super_class = NCMapsUserGuide;
  v10 = [(NCWaypointGuide *)&v13 initWithIdentifier:identifier name:name type:1];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_waypoints, waypoints);
  }

  return v11;
}

- (void)updateWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  v5 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_23BD676F4(waypointCopy, self, v5, v6);
  }
}

- (void)deleteWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  v5 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_23BD67798(waypointCopy, self, v5, v6);
  }
}

@end