@interface NTKWorldClockGraphicCircularExtraLargeViewSeconds
+ (id)_createHandsViewForDevice:(id)device;
@end

@implementation NTKWorldClockGraphicCircularExtraLargeViewSeconds

+ (id)_createHandsViewForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKWorldClockRichComplicationHandsExtraLargeViewSeconds alloc] initForDevice:deviceCopy];

  return v4;
}

@end