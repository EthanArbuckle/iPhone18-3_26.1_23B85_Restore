@interface NTKAnalogSecondsGraphicExtraLargeView
+ (id)_newWorldClockViewForDevice:(id)device;
@end

@implementation NTKAnalogSecondsGraphicExtraLargeView

+ (id)_newWorldClockViewForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKWorldClockGraphicCircularExtraLargeViewSecondsOnly alloc] initWithDevice:deviceCopy smallTickCount:5];

  return v4;
}

@end