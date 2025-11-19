@interface NTKWorldClockGraphicCircularViewSeconds
+ (id)_createHandsViewForDevice:(id)a3;
@end

@implementation NTKWorldClockGraphicCircularViewSeconds

+ (id)_createHandsViewForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKWorldClockRichComplicationHandsViewSeconds alloc] initForDevice:v3];

  return v4;
}

@end