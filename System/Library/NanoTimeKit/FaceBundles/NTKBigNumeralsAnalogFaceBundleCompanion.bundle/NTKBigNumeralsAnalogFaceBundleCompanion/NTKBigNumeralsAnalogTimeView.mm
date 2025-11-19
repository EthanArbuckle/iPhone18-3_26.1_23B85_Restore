@interface NTKBigNumeralsAnalogTimeView
- (id)createHourHandView;
- (id)createMinuteHandView;
- (id)createSecondHandView;
- (id)hourHandConfiguration;
- (id)initForDevice:(id)a3;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
- (void)layoutSubviews;
@end

@implementation NTKBigNumeralsAnalogTimeView

- (id)initForDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKBigNumeralsAnalogTimeView;
  v3 = [(NTKBigNumeralsAnalogTimeView *)&v6 initForDevice:a3];
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
  v3 = [(NTKBigNumeralsAnalogTimeView *)self device];
  sub_33B0(v3, &v7);

  v4 = [(NTKBigNumeralsAnalogTimeView *)self device];
  v5 = [CLKUIAnalogHandConfiguration defaultHourConfigurationForDevice:v4];

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
  v3 = [(NTKBigNumeralsAnalogTimeView *)self device];
  sub_33B0(v3, &v7);

  v4 = [(NTKBigNumeralsAnalogTimeView *)self device];
  v5 = [CLKUIAnalogHandConfiguration defaultMinuteConfigurationForDevice:v4];

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

  v4 = [(NTKBigNumeralsAnalogTimeView *)self device];
  v5 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:v4];

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
  v3 = [(NTKBigNumeralsAnalogTimeView *)&v5 createHourHandView];
  [(NTKBigNumeralsAnalogTimeView *)self _largeHandAlpha];
  [v3 setAlpha:?];

  return v3;
}

- (id)createMinuteHandView
{
  v5.receiver = self;
  v5.super_class = NTKBigNumeralsAnalogTimeView;
  v3 = [(NTKBigNumeralsAnalogTimeView *)&v5 createMinuteHandView];
  [(NTKBigNumeralsAnalogTimeView *)self _largeHandAlpha];
  [v3 setAlpha:?];

  return v3;
}

- (id)createSecondHandView
{
  v5.receiver = self;
  v5.super_class = NTKBigNumeralsAnalogTimeView;
  v2 = [(NTKBigNumeralsAnalogTimeView *)&v5 createSecondHandView];
  v3 = +[UIColor systemOrangeColor];
  [v2 setColor:v3];

  return v2;
}

- (void)layoutSubviews
{
  [(NTKBigNumeralsAnalogTimeView *)self bounds];
  v4 = v3 * 0.5;
  [(NTKBigNumeralsAnalogTimeView *)self bounds];
  v6 = v5 * 0.5;
  v7 = [(NTKBigNumeralsAnalogTimeView *)self minuteHandView];
  [v7 setCenter:{v4, v6}];

  v8 = [(NTKBigNumeralsAnalogTimeView *)self hourHandView];
  [v8 setCenter:{v4, v6}];

  v9 = [(NTKBigNumeralsAnalogTimeView *)self secondHandView];
  [v9 setCenter:{v4, v6}];

  [(NTKBigNumeralsAnalogTimeView *)self layoutShadowViews];
}

@end