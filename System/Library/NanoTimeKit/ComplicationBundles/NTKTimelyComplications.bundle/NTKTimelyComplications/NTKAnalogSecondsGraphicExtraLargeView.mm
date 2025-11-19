@interface NTKAnalogSecondsGraphicExtraLargeView
+ (id)_newWorldClockViewForDevice:(id)a3;
@end

@implementation NTKAnalogSecondsGraphicExtraLargeView

+ (id)_newWorldClockViewForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKWorldClockGraphicCircularExtraLargeViewSecondsOnly alloc] initWithDevice:v3 smallTickCount:5];

  return v4;
}

@end