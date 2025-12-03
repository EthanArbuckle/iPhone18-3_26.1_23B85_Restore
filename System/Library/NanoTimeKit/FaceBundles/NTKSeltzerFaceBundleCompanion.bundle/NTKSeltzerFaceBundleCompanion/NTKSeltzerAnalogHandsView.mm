@interface NTKSeltzerAnalogHandsView
- (id)initForDevice:(id)device;
- (id)secondHandConfiguration;
@end

@implementation NTKSeltzerAnalogHandsView

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = NTKSeltzerAnalogHandsView;
  v5 = [(NTKSeltzerAnalogHandsView *)&v9 initForDevice:deviceCopy];
  v6 = v5;
  if (v5)
  {
    sub_4BE8(v5, deviceCopy);
    [v6 setMinuteHandDotDiameter:v7];
  }

  return v6;
}

- (id)secondHandConfiguration
{
  v6.receiver = self;
  v6.super_class = NTKSeltzerAnalogHandsView;
  secondHandConfiguration = [(NTKSeltzerAnalogHandsView *)&v6 secondHandConfiguration];
  device = [(NTKSeltzerAnalogHandsView *)self device];
  [secondHandConfiguration setHandLength:{sub_4BE8(device, device)}];

  return secondHandConfiguration;
}

@end