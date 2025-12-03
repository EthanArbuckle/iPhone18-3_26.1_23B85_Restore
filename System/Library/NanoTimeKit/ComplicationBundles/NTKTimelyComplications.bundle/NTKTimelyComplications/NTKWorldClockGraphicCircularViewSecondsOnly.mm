@interface NTKWorldClockGraphicCircularViewSecondsOnly
+ (id)_createHandsViewForDevice:(id)device;
@end

@implementation NTKWorldClockGraphicCircularViewSecondsOnly

+ (id)_createHandsViewForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKWorldClockRichComplicationHandsViewOnlySeconds alloc] initForDevice:deviceCopy];

  return v4;
}

@end