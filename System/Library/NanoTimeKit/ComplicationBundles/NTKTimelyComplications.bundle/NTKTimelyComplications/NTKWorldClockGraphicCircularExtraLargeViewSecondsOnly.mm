@interface NTKWorldClockGraphicCircularExtraLargeViewSecondsOnly
+ (id)_createHandsViewForDevice:(id)device;
@end

@implementation NTKWorldClockGraphicCircularExtraLargeViewSecondsOnly

+ (id)_createHandsViewForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKWorldClockRichComplicationHandsExtraLargeViewSecondsOnly alloc] initForDevice:deviceCopy];

  return v4;
}

@end