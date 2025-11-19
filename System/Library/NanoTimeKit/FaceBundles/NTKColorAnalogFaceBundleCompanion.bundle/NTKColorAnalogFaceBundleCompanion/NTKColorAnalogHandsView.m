@interface NTKColorAnalogHandsView
- (id)hourHandConfiguration;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
@end

@implementation NTKColorAnalogHandsView

- (id)hourHandConfiguration
{
  v2 = [(NTKColorAnalogHandsView *)self device];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  sub_7B84(v2, &v5);
  v3 = [CLKUIAnalogHandConfiguration defaultHourConfigurationForDevice:v2];
  [v3 setDropShadowRadius:*&v5];
  [v3 setDropShadowOpacity:*(&v5 + 1)];
  [v3 setRadialShadowRadius:*&v6];
  [v3 setRadialShadowOpacity:*(&v6 + 1)];
  [v3 setDirectionalShadowOffset:v7];

  return v3;
}

- (id)minuteHandConfiguration
{
  v2 = [(NTKColorAnalogHandsView *)self device];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  sub_7B84(v2, v5);
  v3 = [CLKUIAnalogHandConfiguration defaultMinuteConfigurationForDevice:v2];
  [v3 setDropShadowRadius:*&v6];
  [v3 setDropShadowOpacity:*(&v6 + 1)];
  [v3 setRadialShadowRadius:*&v7];
  [v3 setRadialShadowOpacity:*(&v7 + 1)];
  [v3 setDirectionalShadowOffset:v8];

  return v3;
}

- (id)secondHandConfiguration
{
  v2 = [(NTKColorAnalogHandsView *)self device];
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  sub_7B84(v2, v5);
  v3 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:v2];
  [v3 setDropShadowRadius:*&v6];
  [v3 setDropShadowOpacity:*(&v6 + 1)];
  [v3 setRadialShadowRadius:*&v7];
  [v3 setRadialShadowOpacity:*(&v7 + 1)];
  [v3 setDirectionalShadowOffset:v8];

  return v3;
}

@end