@interface RouteCreationEditState
+ (id)initialEditStateFromMapItems:(id)a3;
+ (id)initialEditStateFromRoute:(id)a3;
- (RouteCreationEditState)initWithReason:(unint64_t)a3 anchorPoints:(id)a4;
- (id)description;
- (id)instanceByAddingAnchorPoint:(id)a3;
- (id)instanceByClosingTheLoop;
- (id)instanceByFormingOutAndBackAnchors;
- (id)instanceByRemovingFirstAnchorPoint:(id)a3;
- (id)instanceByRemovingLastAnchorPoint:(id)a3;
- (id)instanceByReversingAnchorPoints;
- (void)updateWithSuccessfulRoute:(id)a3;
@end

@implementation RouteCreationEditState

- (id)description
{
  v3 = [(RouteCreationEditState *)self anchorPoints];
  v4 = [v3 anchorPoints];
  v5 = [v4 _geo_map:&stru_101626D58];

  v6 = objc_opt_class();
  v7 = [(RouteCreationEditState *)self reason];
  v8 = [v5 componentsJoinedByString:@"\n\t"];
  v9 = [NSString stringWithFormat:@"<%@:%p reason: %lu, anchor points:\n\t%@\n>", v6, self, v7, v8];

  return v9;
}

- (void)updateWithSuccessfulRoute:(id)a3
{
  v4 = a3;
  v5 = [v4 anchorPoints];
  anchorPoints = self->_anchorPoints;
  self->_anchorPoints = v5;

  v7 = [v4 persistentData];

  routePersistentData = self->_routePersistentData;
  self->_routePersistentData = v7;
}

- (id)instanceByClosingTheLoop
{
  v2 = [(RouteCreationEditState *)self anchorPoints];
  v3 = [v2 copy];

  [v3 closeLoop];
  v4 = [objc_alloc(objc_opt_class()) initWithReason:5 anchorPoints:v3];

  return v4;
}

- (id)instanceByFormingOutAndBackAnchors
{
  v2 = [(RouteCreationEditState *)self anchorPoints];
  v3 = [v2 copy];

  [v3 createOutAndBack];
  v4 = [objc_alloc(objc_opt_class()) initWithReason:4 anchorPoints:v3];

  return v4;
}

- (id)instanceByReversingAnchorPoints
{
  v2 = [(RouteCreationEditState *)self anchorPoints];
  v3 = [v2 copy];

  [v3 reverse];
  v4 = [objc_alloc(objc_opt_class()) initWithReason:3 anchorPoints:v3];

  return v4;
}

- (id)instanceByRemovingLastAnchorPoint:(id)a3
{
  v4 = a3;
  v5 = [(RouteCreationEditState *)self anchorPoints];
  v6 = [v5 copy];

  [v6 removeLastAnchorSharingPositionWith:v4];
  v7 = [objc_alloc(objc_opt_class()) initWithReason:2 anchorPoints:v6];

  return v7;
}

- (id)instanceByRemovingFirstAnchorPoint:(id)a3
{
  v4 = a3;
  v5 = [(RouteCreationEditState *)self anchorPoints];
  v6 = [v5 copy];

  [v6 removeFirstAnchorSharingPositionWith:v4];
  v7 = [objc_alloc(objc_opt_class()) initWithReason:2 anchorPoints:v6];

  return v7;
}

- (id)instanceByAddingAnchorPoint:(id)a3
{
  v4 = a3;
  v5 = [(RouteCreationEditState *)self anchorPoints];
  v6 = [v5 copy];

  [v6 appendAnchorPoint:v4];
  v7 = [objc_alloc(objc_opt_class()) initWithReason:1 anchorPoints:v6];

  return v7;
}

- (RouteCreationEditState)initWithReason:(unint64_t)a3 anchorPoints:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = RouteCreationEditState;
  v7 = [(RouteCreationEditState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_reason = a3;
    v9 = [v6 copy];
    anchorPoints = v8->_anchorPoints;
    v8->_anchorPoints = v9;
  }

  return v8;
}

+ (id)initialEditStateFromMapItems:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
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
          v15 = [v10 _geoMapItem];
          v16 = [v15 name];
          v17 = [GEOComposedRouteAnchorPoint anchorPointWithCoordinate:1 isCurrentLocation:v16 name:v12, v14, 1.79769313e308];
        }

        else
        {
          v18 = [GEOComposedRouteAnchorPoint alloc];
          v15 = [v10 _geoMapItem];
          v17 = [v18 initWithMapItem:v15];
        }

        [v4 appendAnchorPoint:v17];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = [[a1 alloc] initWithReason:0 anchorPoints:v4];

  return v19;
}

+ (id)initialEditStateFromRoute:(id)a3
{
  v4 = [a3 anchorPoints];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  v8 = [[a1 alloc] initWithReason:0 anchorPoints:v7];

  return v8;
}

@end