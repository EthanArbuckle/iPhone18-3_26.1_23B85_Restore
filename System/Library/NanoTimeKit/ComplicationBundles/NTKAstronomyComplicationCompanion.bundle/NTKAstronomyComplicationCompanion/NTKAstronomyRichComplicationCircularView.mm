@interface NTKAstronomyRichComplicationCircularView
- (NTKAstronomyRichComplicationCircularView)init;
@end

@implementation NTKAstronomyRichComplicationCircularView

- (NTKAstronomyRichComplicationCircularView)init
{
  v3.receiver = self;
  v3.super_class = NTKAstronomyRichComplicationCircularView;
  return [(NTKAstronomyRichComplicationBaseCircularView *)&v3 initWithFamily:10];
}

@end