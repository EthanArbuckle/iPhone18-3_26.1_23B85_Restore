@interface WorkoutChartedDistancePathRenderer
- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5;
@end

@implementation WorkoutChartedDistancePathRenderer

- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v8 = a3.var0.var1;
  v9 = a3.var0.var0;
  v11 = a5;
  v12 = self;
  sub_10028BB5C(v11, v9, v8, var0, var1, a4);
}

@end