@interface NTKWorldClockGraphicCircularViewSecondsOnly
+ (id)_createHandsViewForDevice:(id)a3;
@end

@implementation NTKWorldClockGraphicCircularViewSecondsOnly

+ (id)_createHandsViewForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKWorldClockRichComplicationHandsViewOnlySeconds alloc] initForDevice:v3];

  return v4;
}

@end