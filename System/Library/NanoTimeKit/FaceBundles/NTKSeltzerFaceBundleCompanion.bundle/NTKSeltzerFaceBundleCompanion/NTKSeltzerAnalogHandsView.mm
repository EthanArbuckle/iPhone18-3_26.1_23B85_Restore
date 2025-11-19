@interface NTKSeltzerAnalogHandsView
- (id)initForDevice:(id)a3;
- (id)secondHandConfiguration;
@end

@implementation NTKSeltzerAnalogHandsView

- (id)initForDevice:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NTKSeltzerAnalogHandsView;
  v5 = [(NTKSeltzerAnalogHandsView *)&v9 initForDevice:v4];
  v6 = v5;
  if (v5)
  {
    sub_4BE8(v5, v4);
    [v6 setMinuteHandDotDiameter:v7];
  }

  return v6;
}

- (id)secondHandConfiguration
{
  v6.receiver = self;
  v6.super_class = NTKSeltzerAnalogHandsView;
  v3 = [(NTKSeltzerAnalogHandsView *)&v6 secondHandConfiguration];
  v4 = [(NTKSeltzerAnalogHandsView *)self device];
  [v3 setHandLength:{sub_4BE8(v4, v4)}];

  return v3;
}

@end