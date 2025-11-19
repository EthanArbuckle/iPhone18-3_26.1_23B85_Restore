@interface NCMapsUserGuide
- (NCMapsUserGuide)initWithIdentifier:(id)a3 name:(id)a4 waypoints:(id)a5;
- (void)deleteWaypoint:(id)a3;
- (void)updateWaypoint:(id)a3;
@end

@implementation NCMapsUserGuide

- (NCMapsUserGuide)initWithIdentifier:(id)a3 name:(id)a4 waypoints:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = NCMapsUserGuide;
  v10 = [(NCWaypointGuide *)&v13 initWithIdentifier:a3 name:a4 type:1];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_waypoints, a5);
  }

  return v11;
}

- (void)updateWaypoint:(id)a3
{
  v4 = a3;
  v5 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_23BD676F4(v4, self, v5, v6);
  }
}

- (void)deleteWaypoint:(id)a3
{
  v4 = a3;
  v5 = NCLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_23BD67798(v4, self, v5, v6);
  }
}

@end