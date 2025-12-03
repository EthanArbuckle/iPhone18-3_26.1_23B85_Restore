@interface NTKWorldClockGraphicCircularViewSeconds
+ (id)_createHandsViewForDevice:(id)device;
@end

@implementation NTKWorldClockGraphicCircularViewSeconds

+ (id)_createHandsViewForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKWorldClockRichComplicationHandsViewSeconds alloc] initForDevice:deviceCopy];

  return v4;
}

@end