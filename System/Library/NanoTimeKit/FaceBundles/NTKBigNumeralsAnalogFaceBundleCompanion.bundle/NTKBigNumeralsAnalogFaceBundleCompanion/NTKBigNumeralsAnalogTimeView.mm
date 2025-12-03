@interface NTKBigNumeralsAnalogTimeView
- (id)createHourHandView;
- (id)createMinuteHandView;
- (id)createSecondHandView;
- (id)hourHandConfiguration;
- (id)initForDevice:(id)device;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
- (void)layoutSubviews;
@end

@implementation NTKBigNumeralsAnalogTimeView

- (id)initForDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NTKBigNumeralsAnalogTimeView;
  v3 = [(NTKBigNumeralsAnalogTimeView *)&v6 initForDevice:device];
  v4 = v3;
  if (v3)
  {
    [v3 setMinuteHandDotDiameter:5.0];
  }

  return v4;
}

- (id)hourHandConfiguration
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  device = [(NTKBigNumeralsAnalogTimeView *)self device];
  sub_33B0(device, &v7);

  device2 = [(NTKBigNumeralsAnalogTimeView *)self device];
  v5 = [CLKUIAnalogHandConfiguration defaultHourConfigurationForDevice:device2];

  [v5 setHandWidth:*(&v7 + 1)];
  [v5 setArmWidth:*&v8];
  [v5 setArmLength:*(&v8 + 1)];
  [v5 setPegRadius:*&v9];
  [v5 setPegStrokeWidth:*(&v9 + 1)];
  [v5 setHandLength:*&v10];
  [v5 setRadialShadowOpacity:0.35];
  [v5 setDropShadowRadius:9.0];
  [v5 setInlayInsetRadius:*&v7];
  [v5 setExcludePeg:1];

  return v5;
}

- (id)minuteHandConfiguration
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  device = [(NTKBigNumeralsAnalogTimeView *)self device];
  sub_33B0(device, &v7);

  device2 = [(NTKBigNumeralsAnalogTimeView *)self device];
  v5 = [CLKUIAnalogHandConfiguration defaultMinuteConfigurationForDevice:device2];

  [v5 setHandWidth:*(&v7 + 1)];
  [v5 setArmWidth:*&v8];
  [v5 setArmLength:*(&v8 + 1)];
  [v5 setPegRadius:*&v9];
  [v5 setPegStrokeWidth:*(&v9 + 1)];
  [v5 setHandLength:*(&v10 + 1)];
  [v5 setRadialShadowOpacity:0.35];
  [v5 setDropShadowRadius:9.0];
  [v5 setInlayInsetRadius:*&v7];

  return v5;
}

- (id)secondHandConfiguration
{
  v10 = 0.0;
  v8 = 0u;
  v9 = 0u;
  v3 = [(NTKBigNumeralsAnalogTimeView *)self device:0];
  sub_33B0(v3, &v7);

  device = [(NTKBigNumeralsAnalogTimeView *)self device];
  v5 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:device];

  [v5 setHandWidth:*&v8];
  [v5 setHandLength:*(&v8 + 1)];
  [v5 setTailLength:*&v9];
  [v5 setPegRadius:*(&v9 + 1)];
  [v5 setPegStrokeWidth:v10];
  [v5 setRadialShadowOpacity:0.5];
  [v5 setRoundedSecondHand:1];

  return v5;
}

- (id)createHourHandView
{
  v5.receiver = self;
  v5.super_class = NTKBigNumeralsAnalogTimeView;
  createHourHandView = [(NTKBigNumeralsAnalogTimeView *)&v5 createHourHandView];
  [(NTKBigNumeralsAnalogTimeView *)self _largeHandAlpha];
  [createHourHandView setAlpha:?];

  return createHourHandView;
}

- (id)createMinuteHandView
{
  v5.receiver = self;
  v5.super_class = NTKBigNumeralsAnalogTimeView;
  createMinuteHandView = [(NTKBigNumeralsAnalogTimeView *)&v5 createMinuteHandView];
  [(NTKBigNumeralsAnalogTimeView *)self _largeHandAlpha];
  [createMinuteHandView setAlpha:?];

  return createMinuteHandView;
}

- (id)createSecondHandView
{
  v5.receiver = self;
  v5.super_class = NTKBigNumeralsAnalogTimeView;
  createSecondHandView = [(NTKBigNumeralsAnalogTimeView *)&v5 createSecondHandView];
  v3 = +[UIColor systemOrangeColor];
  [createSecondHandView setColor:v3];

  return createSecondHandView;
}

- (void)layoutSubviews
{
  [(NTKBigNumeralsAnalogTimeView *)self bounds];
  v4 = v3 * 0.5;
  [(NTKBigNumeralsAnalogTimeView *)self bounds];
  v6 = v5 * 0.5;
  minuteHandView = [(NTKBigNumeralsAnalogTimeView *)self minuteHandView];
  [minuteHandView setCenter:{v4, v6}];

  hourHandView = [(NTKBigNumeralsAnalogTimeView *)self hourHandView];
  [hourHandView setCenter:{v4, v6}];

  secondHandView = [(NTKBigNumeralsAnalogTimeView *)self secondHandView];
  [secondHandView setCenter:{v4, v6}];

  [(NTKBigNumeralsAnalogTimeView *)self layoutShadowViews];
}

@end