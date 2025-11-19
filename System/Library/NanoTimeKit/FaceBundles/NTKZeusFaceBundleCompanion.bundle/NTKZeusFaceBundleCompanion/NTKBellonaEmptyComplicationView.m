@interface NTKBellonaEmptyComplicationView
- (NTKBellonaEmptyComplicationView)initWithBackgroundView:(id)a3;
@end

@implementation NTKBellonaEmptyComplicationView

- (NTKBellonaEmptyComplicationView)initWithBackgroundView:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKBellonaEmptyComplicationView;
  return [(NTKZeusEmptyComplicationView *)&v4 initWithBackgroundView:a3];
}

@end