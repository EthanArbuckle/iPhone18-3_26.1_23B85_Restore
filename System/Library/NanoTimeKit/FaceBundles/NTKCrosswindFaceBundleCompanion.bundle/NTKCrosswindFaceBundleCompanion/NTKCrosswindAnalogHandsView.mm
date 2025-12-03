@interface NTKCrosswindAnalogHandsView
- (double)innerCircleRadius;
- (double)middleCircleRadius;
- (double)outerCircleRadius;
- (id)hourHandConfiguration;
- (id)minuteHandConfiguration;
- (void)_applyDesiredHandExtent:(double)extent toConfiguration:(id)configuration;
@end

@implementation NTKCrosswindAnalogHandsView

- (double)innerCircleRadius
{
  device = [(NTKCrosswindAnalogHandsView *)self device];
  v3 = sub_4248(device, device);

  return v3;
}

- (double)middleCircleRadius
{
  device = [(NTKCrosswindAnalogHandsView *)self device];
  sub_4248(device, device);
  v4 = v3;

  return v4;
}

- (double)outerCircleRadius
{
  v3 = objc_opt_class();
  device = [(NTKCrosswindAnalogHandsView *)self device];
  [v3 outerCircleRadiusForDevice:device];
  v6 = v5;

  return v6;
}

- (id)hourHandConfiguration
{
  v5.receiver = self;
  v5.super_class = NTKCrosswindAnalogHandsView;
  hourHandConfiguration = [(NTKCrosswindAnalogHandsView *)&v5 hourHandConfiguration];
  [(NTKCrosswindAnalogHandsView *)self middleCircleRadius];
  [(NTKCrosswindAnalogHandsView *)self _applyDesiredHandExtent:hourHandConfiguration toConfiguration:?];
  [hourHandConfiguration setDropShadowOpacity:0.0];
  [hourHandConfiguration setRadialShadowOpacity:0.0];

  return hourHandConfiguration;
}

- (id)minuteHandConfiguration
{
  v5.receiver = self;
  v5.super_class = NTKCrosswindAnalogHandsView;
  minuteHandConfiguration = [(NTKCrosswindAnalogHandsView *)&v5 minuteHandConfiguration];
  [(NTKCrosswindAnalogHandsView *)self outerCircleRadius];
  [(NTKCrosswindAnalogHandsView *)self _applyDesiredHandExtent:minuteHandConfiguration toConfiguration:?];
  [minuteHandConfiguration setDropShadowOpacity:0.0];
  [minuteHandConfiguration setRadialShadowOpacity:0.0];

  return minuteHandConfiguration;
}

- (void)_applyDesiredHandExtent:(double)extent toConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy handLength];
  v6 = v5;
  [configurationCopy armLength];
  v8 = v6 + v7;
  [configurationCopy pegRadius];
  v10 = v8 + v9;
  [configurationCopy pegStrokeWidth];
  [configurationCopy setHandLength:v6 + extent - (v10 + v11)];
}

@end