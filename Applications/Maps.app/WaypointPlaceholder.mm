@interface WaypointPlaceholder
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)description;
- (WaypointPlaceholder)initWithName:(id)name displayableMarker:(id)marker;
- (void)_maps_buildDescriptionWithBlock:(id)block;
@end

@implementation WaypointPlaceholder

- (void)_maps_buildDescriptionWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, @"displayableMarker", self->_displayableMarker);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100CE4DCC;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(WaypointPlaceholder *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(WaypointPlaceholder *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:@"\n"];
  v12 = [NSString stringWithFormat:@"%@ {\n%@\n}", v10, v11];

  return v12;
}

- (NSString)description
{
  selfCopy = self;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100CE501C;
  v17 = &unk_10165DB30;
  v3 = objc_alloc_init(NSMutableArray);
  v18 = v3;
  v4 = objc_retainBlock(&v14);
  [(WaypointPlaceholder *)selfCopy _maps_buildDescriptionWithBlock:v4];
  v5 = selfCopy;
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [(WaypointPlaceholder *)v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9, v14, v15, v16, v17];

        goto LABEL_7;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_7:

    goto LABEL_9;
  }

  v10 = @"<nil>";
LABEL_9:

  v11 = [v3 componentsJoinedByString:{@", "}];
  v12 = [NSString stringWithFormat:@"%@ (%@)", v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if ([(WaypointPlaceholder *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    name = [(WaypointPlaceholder *)v5 name];
    name2 = [(WaypointPlaceholder *)self name];
    if ([name isEqual:name2])
    {
      displayableMarker = self->_displayableMarker;
      displayableMarker = [(WaypointPlaceholder *)v5 displayableMarker];
      v10 = [(SearchResult *)displayableMarker isEqualToSearchResult:displayableMarker forPurpose:1];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (WaypointPlaceholder)initWithName:(id)name displayableMarker:(id)marker
{
  nameCopy = name;
  markerCopy = marker;
  v14.receiver = self;
  v14.super_class = WaypointPlaceholder;
  v8 = [(WaypointPlaceholder *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [markerCopy copy];
    displayableMarker = v8->_displayableMarker;
    v8->_displayableMarker = v11;
  }

  return v8;
}

@end