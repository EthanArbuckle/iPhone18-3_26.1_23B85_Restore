@interface NTKWorldClockGraphicCircularExtraLargeViewSeconds
+ (id)_createHandsViewForDevice:(id)a3;
@end

@implementation NTKWorldClockGraphicCircularExtraLargeViewSeconds

+ (id)_createHandsViewForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKWorldClockRichComplicationHandsExtraLargeViewSeconds alloc] initForDevice:v3];

  return v4;
}

@end