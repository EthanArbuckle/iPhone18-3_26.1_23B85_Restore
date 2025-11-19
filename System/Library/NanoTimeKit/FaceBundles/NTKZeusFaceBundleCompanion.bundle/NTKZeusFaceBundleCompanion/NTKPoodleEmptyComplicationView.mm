@interface NTKPoodleEmptyComplicationView
- (NTKPoodleEmptyComplicationView)initWithBackgroundView:(id)a3;
@end

@implementation NTKPoodleEmptyComplicationView

- (NTKPoodleEmptyComplicationView)initWithBackgroundView:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKPoodleEmptyComplicationView;
  return [(NTKZeusEmptyComplicationView *)&v4 initWithBackgroundView:a3];
}

@end