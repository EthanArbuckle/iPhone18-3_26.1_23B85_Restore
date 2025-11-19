@interface NTKWorldClockGraphicCircularExtraLargeViewSecondsOnly
+ (id)_createHandsViewForDevice:(id)a3;
@end

@implementation NTKWorldClockGraphicCircularExtraLargeViewSecondsOnly

+ (id)_createHandsViewForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKWorldClockRichComplicationHandsExtraLargeViewSecondsOnly alloc] initForDevice:v3];

  return v4;
}

@end