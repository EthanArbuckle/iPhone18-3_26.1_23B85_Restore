@interface NTKCrosswindAnalogHandsView
- (double)innerCircleRadius;
- (double)middleCircleRadius;
- (double)outerCircleRadius;
- (id)hourHandConfiguration;
- (id)minuteHandConfiguration;
- (void)_applyDesiredHandExtent:(double)a3 toConfiguration:(id)a4;
@end

@implementation NTKCrosswindAnalogHandsView

- (double)innerCircleRadius
{
  v2 = [(NTKCrosswindAnalogHandsView *)self device];
  v3 = sub_4248(v2, v2);

  return v3;
}

- (double)middleCircleRadius
{
  v2 = [(NTKCrosswindAnalogHandsView *)self device];
  sub_4248(v2, v2);
  v4 = v3;

  return v4;
}

- (double)outerCircleRadius
{
  v3 = objc_opt_class();
  v4 = [(NTKCrosswindAnalogHandsView *)self device];
  [v3 outerCircleRadiusForDevice:v4];
  v6 = v5;

  return v6;
}

- (id)hourHandConfiguration
{
  v5.receiver = self;
  v5.super_class = NTKCrosswindAnalogHandsView;
  v3 = [(NTKCrosswindAnalogHandsView *)&v5 hourHandConfiguration];
  [(NTKCrosswindAnalogHandsView *)self middleCircleRadius];
  [(NTKCrosswindAnalogHandsView *)self _applyDesiredHandExtent:v3 toConfiguration:?];
  [v3 setDropShadowOpacity:0.0];
  [v3 setRadialShadowOpacity:0.0];

  return v3;
}

- (id)minuteHandConfiguration
{
  v5.receiver = self;
  v5.super_class = NTKCrosswindAnalogHandsView;
  v3 = [(NTKCrosswindAnalogHandsView *)&v5 minuteHandConfiguration];
  [(NTKCrosswindAnalogHandsView *)self outerCircleRadius];
  [(NTKCrosswindAnalogHandsView *)self _applyDesiredHandExtent:v3 toConfiguration:?];
  [v3 setDropShadowOpacity:0.0];
  [v3 setRadialShadowOpacity:0.0];

  return v3;
}

- (void)_applyDesiredHandExtent:(double)a3 toConfiguration:(id)a4
{
  v12 = a4;
  [v12 handLength];
  v6 = v5;
  [v12 armLength];
  v8 = v6 + v7;
  [v12 pegRadius];
  v10 = v8 + v9;
  [v12 pegStrokeWidth];
  [v12 setHandLength:v6 + a3 - (v10 + v11)];
}

@end