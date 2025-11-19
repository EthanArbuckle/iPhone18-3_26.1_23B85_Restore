@interface MKRoutePolyline
- (id)_stepWithRange:(_NSRange)a3;
@end

@implementation MKRoutePolyline

- (id)_stepWithRange:(_NSRange)a3
{
  v3 = [[MKRouteStepPolyline alloc] _initWithRoute:self range:a3.location, a3.length];

  return v3;
}

@end