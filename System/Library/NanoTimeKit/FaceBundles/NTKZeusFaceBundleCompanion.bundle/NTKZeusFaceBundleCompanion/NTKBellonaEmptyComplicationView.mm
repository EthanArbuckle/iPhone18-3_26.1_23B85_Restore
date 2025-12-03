@interface NTKBellonaEmptyComplicationView
- (NTKBellonaEmptyComplicationView)initWithBackgroundView:(id)view;
@end

@implementation NTKBellonaEmptyComplicationView

- (NTKBellonaEmptyComplicationView)initWithBackgroundView:(id)view
{
  v4.receiver = self;
  v4.super_class = NTKBellonaEmptyComplicationView;
  return [(NTKZeusEmptyComplicationView *)&v4 initWithBackgroundView:view];
}

@end