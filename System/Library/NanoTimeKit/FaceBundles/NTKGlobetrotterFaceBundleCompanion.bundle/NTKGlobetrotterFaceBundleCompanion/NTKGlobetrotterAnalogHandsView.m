@interface NTKGlobetrotterAnalogHandsView
- (id)hourHandConfiguration;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
@end

@implementation NTKGlobetrotterAnalogHandsView

- (id)hourHandConfiguration
{
  v2 = [(NTKGlobetrotterAnalogHandsView *)self device];
  v3 = [CLKUIAnalogHandConfiguration defaultHourConfigurationForDevice:v2];
  [v3 setHandLength:{sub_3AC0(v3, v2)}];

  return v3;
}

- (id)minuteHandConfiguration
{
  v2 = [(NTKGlobetrotterAnalogHandsView *)self device];
  v3 = [CLKUIAnalogHandConfiguration defaultMinuteConfigurationForDevice:v2];
  sub_3AC0(v3, v2);
  [v3 setHandLength:v4];

  return v3;
}

- (id)secondHandConfiguration
{
  v2 = [(NTKGlobetrotterAnalogHandsView *)self device];
  v3 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:v2];
  sub_3AC0(v3, v2);
  [v3 setHandLength:v4];

  return v3;
}

@end