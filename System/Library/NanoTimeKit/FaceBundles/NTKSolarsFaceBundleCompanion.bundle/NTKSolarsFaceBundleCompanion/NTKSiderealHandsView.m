@interface NTKSiderealHandsView
- (id)hourHandConfiguration;
- (id)initForDevice:(id)a3;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
- (void)layoutSubviews;
@end

@implementation NTKSiderealHandsView

- (id)initForDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKSiderealHandsView;
  v3 = [(NTKSiderealHandsView *)&v6 initForDevice:a3];
  v4 = v3;
  if (v3)
  {
    [v3 setMinuteHandDotDiameter:2.0];
  }

  return v4;
}

- (id)hourHandConfiguration
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = [(NTKSiderealHandsView *)self device];
  sub_1637C(v3, &v7);

  v4 = [(NTKSiderealHandsView *)self device];
  v5 = [CLKUIAnalogHandConfiguration defaultHourConfigurationForDevice:v4];

  [v5 setHandWidth:*&v7];
  [v5 setArmWidth:*(&v7 + 1)];
  [v5 setArmLength:*&v8];
  [v5 setPegRadius:*(&v8 + 1)];
  [v5 setPegStrokeWidth:*&v9];
  [v5 setHandLength:*(&v9 + 1)];
  [v5 setRadialShadowOpacity:0.25];

  return v5;
}

- (id)minuteHandConfiguration
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = [(NTKSiderealHandsView *)self device];
  sub_1637C(v3, &v7);

  v4 = [(NTKSiderealHandsView *)self device];
  v5 = [CLKUIAnalogHandConfiguration defaultMinuteConfigurationForDevice:v4];

  [v5 setHandWidth:*&v7];
  [v5 setArmWidth:*(&v7 + 1)];
  [v5 setArmLength:*&v8];
  [v5 setPegRadius:*(&v8 + 1)];
  [v5 setPegStrokeWidth:*&v9];
  [v5 setHandLength:*&v10];
  [v5 setRadialShadowOpacity:0.25];

  return v5;
}

- (id)secondHandConfiguration
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v3 = [(NTKSiderealHandsView *)self device:0];
  sub_1637C(v3, &v7);

  v4 = [(NTKSiderealHandsView *)self device];
  v5 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:v4];

  [v5 setHandWidth:*(&v8 + 1)];
  [v5 setHandLength:*&v9];
  [v5 setTailLength:*(&v9 + 1)];
  [v5 setPegRadius:*&v10];
  [v5 setPegStrokeWidth:*(&v10 + 1)];
  [v5 setRadialShadowOpacity:0.25];

  return v5;
}

- (void)layoutSubviews
{
  [(NTKSiderealHandsView *)self bounds];
  v4 = v3 * 0.5;
  [(NTKSiderealHandsView *)self bounds];
  v6 = v5 * 0.5;
  v7 = [(NTKSiderealHandsView *)self minuteHandView];
  [v7 setCenter:{v4, v6}];

  v8 = [(NTKSiderealHandsView *)self hourHandView];
  [v8 setCenter:{v4, v6}];

  v9 = [(NTKSiderealHandsView *)self secondHandView];
  [v9 setCenter:{v4, v6}];
}

@end