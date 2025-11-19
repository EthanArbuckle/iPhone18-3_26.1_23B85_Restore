@interface RouteUpdatingTaskResult
+ (id)resultWithRouteID:(id)a3 transitUpdate:(id)a4;
@end

@implementation RouteUpdatingTaskResult

+ (id)resultWithRouteID:(id)a3 transitUpdate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setRouteID:v7];

  [v8 setTransitUpdate:v6];

  return v8;
}

@end