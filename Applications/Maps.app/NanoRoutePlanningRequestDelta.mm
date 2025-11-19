@interface NanoRoutePlanningRequestDelta
+ (id)everythingChanged;
@end

@implementation NanoRoutePlanningRequestDelta

+ (id)everythingChanged
{
  v2 = objc_alloc_init(a1);
  [v2 setWaypointsChanged:1];
  [v2 setTransportTypeChanged:1];

  return v2;
}

@end