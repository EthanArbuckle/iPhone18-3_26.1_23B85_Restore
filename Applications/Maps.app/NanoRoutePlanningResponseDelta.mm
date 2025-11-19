@interface NanoRoutePlanningResponseDelta
+ (id)everythingChanged;
- (id)description;
@end

@implementation NanoRoutePlanningResponseDelta

- (id)description
{
  v13.receiver = self;
  v13.super_class = NanoRoutePlanningResponseDelta;
  v3 = [(NanoRoutePlanningResponseDelta *)&v13 description];
  if ([(NanoRoutePlanningResponseDelta *)self routesChanged])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = v4;
  if ([(NanoRoutePlanningResponseDelta *)self selectedRouteChanged])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = v6;
  if ([(NanoRoutePlanningResponseDelta *)self routeRevisionsChanged])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  if ([(NanoRoutePlanningResponseDelta *)self selectedRideIndexesChanged])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [NSString stringWithFormat:@"%@ <routesChanged: %@, selectedRouteChanged: %@, routeRevisionsChanged: %@, selectedRideIndexesChanged: %@>", v3, v5, v7, v9, v10];

  return v11;
}

+ (id)everythingChanged
{
  v2 = objc_alloc_init(a1);
  [v2 setRoutesChanged:1];
  [v2 setSelectedRouteChanged:1];
  [v2 setRouteRevisionsChanged:1];
  [v2 setSelectedRideIndexesChanged:1];

  return v2;
}

@end