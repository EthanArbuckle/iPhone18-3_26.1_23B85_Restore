@interface WorkoutChartedDistancePathRenderer
- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context;
@end

@implementation WorkoutChartedDistancePathRenderer

- (void)drawMapRect:(id)rect zoomScale:(double)scale inContext:(CGContext *)context
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v8 = rect.var0.var1;
  v9 = rect.var0.var0;
  contextCopy = context;
  selfCopy = self;
  sub_10028BB5C(contextCopy, v9, v8, var0, var1, scale);
}

@end