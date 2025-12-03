@interface NTKPoodleEmptyComplicationView
- (NTKPoodleEmptyComplicationView)initWithBackgroundView:(id)view;
@end

@implementation NTKPoodleEmptyComplicationView

- (NTKPoodleEmptyComplicationView)initWithBackgroundView:(id)view
{
  v4.receiver = self;
  v4.super_class = NTKPoodleEmptyComplicationView;
  return [(NTKZeusEmptyComplicationView *)&v4 initWithBackgroundView:view];
}

@end