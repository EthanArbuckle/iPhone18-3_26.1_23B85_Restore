@interface NCWaypointGuide
- (NCWaypointGuide)initWithIdentifier:(id)a3 name:(id)a4 type:(int64_t)a5;
- (id)fetchWaypoints;
@end

@implementation NCWaypointGuide

- (NCWaypointGuide)initWithIdentifier:(id)a3 name:(id)a4 type:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = NCWaypointGuide;
  v11 = [(NCWaypointGuide *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uuid, a3);
    objc_storeStrong(&v12->_name, a4);
    v12->_type = a5;
  }

  return v12;
}

- (id)fetchWaypoints
{
  v2 = objc_opt_new();

  return v2;
}

@end