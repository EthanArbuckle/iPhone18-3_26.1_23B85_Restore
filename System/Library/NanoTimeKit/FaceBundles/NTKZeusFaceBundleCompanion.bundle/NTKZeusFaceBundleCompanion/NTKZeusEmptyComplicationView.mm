@interface NTKZeusEmptyComplicationView
- (NTKZeusEmptyComplicationView)initWithBackgroundView:(id)view;
@end

@implementation NTKZeusEmptyComplicationView

- (NTKZeusEmptyComplicationView)initWithBackgroundView:(id)view
{
  v6.receiver = self;
  v6.super_class = NTKZeusEmptyComplicationView;
  v3 = [(NTKZeusComplicationView *)&v6 initWithBackgroundView:view];
  v4 = v3;
  if (v3)
  {
    [(NTKZeusEmptyComplicationView *)v3 setHidden:1];
  }

  return v4;
}

@end