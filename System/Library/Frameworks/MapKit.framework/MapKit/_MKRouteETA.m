@interface _MKRouteETA
+ (id)routeETAWithDistance:(double)a3 travelTime:(double)a4 transportType:(unint64_t)a5 status:(int)a6;
@end

@implementation _MKRouteETA

+ (id)routeETAWithDistance:(double)a3 travelTime:(double)a4 transportType:(unint64_t)a5 status:(int)a6
{
  v10 = objc_alloc_init(a1);
  v10[4] = a4;
  *(v10 + 3) = a5;
  v10[2] = a3;
  v10[5] = CFAbsoluteTimeGetCurrent();
  *(v10 + 2) = a6;

  return v10;
}

@end