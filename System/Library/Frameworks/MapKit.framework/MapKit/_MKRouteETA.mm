@interface _MKRouteETA
+ (id)routeETAWithDistance:(double)distance travelTime:(double)time transportType:(unint64_t)type status:(int)status;
@end

@implementation _MKRouteETA

+ (id)routeETAWithDistance:(double)distance travelTime:(double)time transportType:(unint64_t)type status:(int)status
{
  v10 = objc_alloc_init(self);
  v10[4] = time;
  *(v10 + 3) = type;
  v10[2] = distance;
  v10[5] = CFAbsoluteTimeGetCurrent();
  *(v10 + 2) = status;

  return v10;
}

@end