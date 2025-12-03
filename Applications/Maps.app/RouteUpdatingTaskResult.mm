@interface RouteUpdatingTaskResult
+ (id)resultWithRouteID:(id)d transitUpdate:(id)update;
@end

@implementation RouteUpdatingTaskResult

+ (id)resultWithRouteID:(id)d transitUpdate:(id)update
{
  updateCopy = update;
  dCopy = d;
  v8 = objc_alloc_init(self);
  [v8 setRouteID:dCopy];

  [v8 setTransitUpdate:updateCopy];

  return v8;
}

@end