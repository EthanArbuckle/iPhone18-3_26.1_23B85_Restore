@interface NTKGlobetrotterAnalogHandsView
- (id)hourHandConfiguration;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
@end

@implementation NTKGlobetrotterAnalogHandsView

- (id)hourHandConfiguration
{
  device = [(NTKGlobetrotterAnalogHandsView *)self device];
  v3 = [CLKUIAnalogHandConfiguration defaultHourConfigurationForDevice:device];
  [v3 setHandLength:{sub_3AC0(v3, device)}];

  return v3;
}

- (id)minuteHandConfiguration
{
  device = [(NTKGlobetrotterAnalogHandsView *)self device];
  v3 = [CLKUIAnalogHandConfiguration defaultMinuteConfigurationForDevice:device];
  sub_3AC0(v3, device);
  [v3 setHandLength:v4];

  return v3;
}

- (id)secondHandConfiguration
{
  device = [(NTKGlobetrotterAnalogHandsView *)self device];
  v3 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:device];
  sub_3AC0(v3, device);
  [v3 setHandLength:v4];

  return v3;
}

@end