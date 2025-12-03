@interface NTKAnalogTimeGraphicExtraLargeView
+ (id)_newWorldClockViewForDevice:(id)device;
@end

@implementation NTKAnalogTimeGraphicExtraLargeView

+ (id)_newWorldClockViewForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKWorldClockGraphicCircularExtraLargeViewSeconds alloc] initWithDevice:deviceCopy smallTickCount:5];

  return v4;
}

@end