@interface MKRoutePolyline
- (id)_stepWithRange:(_NSRange)range;
@end

@implementation MKRoutePolyline

- (id)_stepWithRange:(_NSRange)range
{
  v3 = [[MKRouteStepPolyline alloc] _initWithRoute:self range:range.location, range.length];

  return v3;
}

@end