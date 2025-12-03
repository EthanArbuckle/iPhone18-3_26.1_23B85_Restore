@interface NCWaypointGuide
- (NCWaypointGuide)initWithIdentifier:(id)identifier name:(id)name type:(int64_t)type;
- (id)fetchWaypoints;
@end

@implementation NCWaypointGuide

- (NCWaypointGuide)initWithIdentifier:(id)identifier name:(id)name type:(int64_t)type
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = NCWaypointGuide;
  v11 = [(NCWaypointGuide *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uuid, identifier);
    objc_storeStrong(&v12->_name, name);
    v12->_type = type;
  }

  return v12;
}

- (id)fetchWaypoints
{
  v2 = objc_opt_new();

  return v2;
}

@end