@interface RouteCreationEditState
+ (id)initialEditStateFromMapItems:(id)items;
+ (id)initialEditStateFromRoute:(id)route;
- (RouteCreationEditState)initWithReason:(unint64_t)reason anchorPoints:(id)points;
- (id)description;
- (id)instanceByAddingAnchorPoint:(id)point;
- (id)instanceByClosingTheLoop;
- (id)instanceByFormingOutAndBackAnchors;
- (id)instanceByRemovingFirstAnchorPoint:(id)point;
- (id)instanceByRemovingLastAnchorPoint:(id)point;
- (id)instanceByReversingAnchorPoints;
- (void)updateWithSuccessfulRoute:(id)route;
@end

@implementation RouteCreationEditState

- (id)description
{
  anchorPoints = [(RouteCreationEditState *)self anchorPoints];
  v3AnchorPoints = [anchorPoints anchorPoints];
  v5 = [v3AnchorPoints _geo_map:&stru_101626D58];

  v6 = objc_opt_class();
  reason = [(RouteCreationEditState *)self reason];
  v8 = [v5 componentsJoinedByString:@"\n\t"];
  v9 = [NSString stringWithFormat:@"<%@:%p reason: %lu, anchor points:\n\t%@\n>", v6, self, reason, v8];

  return v9;
}

- (void)updateWithSuccessfulRoute:(id)route
{
  routeCopy = route;
  anchorPoints = [routeCopy anchorPoints];
  anchorPoints = self->_anchorPoints;
  self->_anchorPoints = anchorPoints;

  persistentData = [routeCopy persistentData];

  routePersistentData = self->_routePersistentData;
  self->_routePersistentData = persistentData;
}

- (id)instanceByClosingTheLoop
{
  anchorPoints = [(RouteCreationEditState *)self anchorPoints];
  v3 = [anchorPoints copy];

  [v3 closeLoop];
  v4 = [objc_alloc(objc_opt_class()) initWithReason:5 anchorPoints:v3];

  return v4;
}

- (id)instanceByFormingOutAndBackAnchors
{
  anchorPoints = [(RouteCreationEditState *)self anchorPoints];
  v3 = [anchorPoints copy];

  [v3 createOutAndBack];
  v4 = [objc_alloc(objc_opt_class()) initWithReason:4 anchorPoints:v3];

  return v4;
}

- (id)instanceByReversingAnchorPoints
{
  anchorPoints = [(RouteCreationEditState *)self anchorPoints];
  v3 = [anchorPoints copy];

  [v3 reverse];
  v4 = [objc_alloc(objc_opt_class()) initWithReason:3 anchorPoints:v3];

  return v4;
}

- (id)instanceByRemovingLastAnchorPoint:(id)point
{
  pointCopy = point;
  anchorPoints = [(RouteCreationEditState *)self anchorPoints];
  v6 = [anchorPoints copy];

  [v6 removeLastAnchorSharingPositionWith:pointCopy];
  v7 = [objc_alloc(objc_opt_class()) initWithReason:2 anchorPoints:v6];

  return v7;
}

- (id)instanceByRemovingFirstAnchorPoint:(id)point
{
  pointCopy = point;
  anchorPoints = [(RouteCreationEditState *)self anchorPoints];
  v6 = [anchorPoints copy];

  [v6 removeFirstAnchorSharingPositionWith:pointCopy];
  v7 = [objc_alloc(objc_opt_class()) initWithReason:2 anchorPoints:v6];

  return v7;
}

- (id)instanceByAddingAnchorPoint:(id)point
{
  pointCopy = point;
  anchorPoints = [(RouteCreationEditState *)self anchorPoints];
  v6 = [anchorPoints copy];

  [v6 appendAnchorPoint:pointCopy];
  v7 = [objc_alloc(objc_opt_class()) initWithReason:1 anchorPoints:v6];

  return v7;
}

- (RouteCreationEditState)initWithReason:(unint64_t)reason anchorPoints:(id)points
{
  pointsCopy = points;
  v12.receiver = self;
  v12.super_class = RouteCreationEditState;
  v7 = [(RouteCreationEditState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_reason = reason;
    v9 = [pointsCopy copy];
    anchorPoints = v8->_anchorPoints;
    v8->_anchorPoints = v9;
  }

  return v8;
}

+ (id)initialEditStateFromMapItems:(id)items
{
  itemsCopy = items;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if ([v10 isCurrentLocation])
        {
          [v10 _coordinate];
          v12 = v11;
          [v10 _coordinate];
          v14 = v13;
          _geoMapItem = [v10 _geoMapItem];
          name = [_geoMapItem name];
          v17 = [GEOComposedRouteAnchorPoint anchorPointWithCoordinate:1 isCurrentLocation:name name:v12, v14, 1.79769313e308];
        }

        else
        {
          v18 = [GEOComposedRouteAnchorPoint alloc];
          _geoMapItem = [v10 _geoMapItem];
          v17 = [v18 initWithMapItem:_geoMapItem];
        }

        [v4 appendAnchorPoint:v17];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = [[self alloc] initWithReason:0 anchorPoints:v4];

  return v19;
}

+ (id)initialEditStateFromRoute:(id)route
{
  anchorPoints = [route anchorPoints];
  v5 = anchorPoints;
  if (anchorPoints)
  {
    v6 = anchorPoints;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  v8 = [[self alloc] initWithReason:0 anchorPoints:v7];

  return v8;
}

@end