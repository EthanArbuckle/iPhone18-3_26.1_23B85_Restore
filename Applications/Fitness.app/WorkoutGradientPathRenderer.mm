@interface WorkoutGradientPathRenderer
- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5;
@end

@implementation WorkoutGradientPathRenderer

- (void)drawMapRect:(id)a3 zoomScale:(double)a4 inContext:(CGContext *)a5
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v8 = a3.var0.var1;
  v9 = a3.var0.var0;
  v11 = a5;
  v12 = self;
  [-[WorkoutGradientPathRenderer overlay](v12 "overlay")];
  v14 = v13;
  v16 = v15;
  swift_unknownObjectRelease();
  v17 = MKRoadWidthAtZoomScale(a4) * 0.666666667;
  [(WorkoutGradientPathRenderer *)v12 applyStrokePropertiesToContext:v11 atZoomScale:a4];
  v18 = v12;
  sub_1005453A0(v11, v18, v9, v8, var0, var1, v17, v14, v16);
}

@end