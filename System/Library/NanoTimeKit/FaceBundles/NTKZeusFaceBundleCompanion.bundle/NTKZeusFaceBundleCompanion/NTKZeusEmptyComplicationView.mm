@interface NTKZeusEmptyComplicationView
- (NTKZeusEmptyComplicationView)initWithBackgroundView:(id)a3;
@end

@implementation NTKZeusEmptyComplicationView

- (NTKZeusEmptyComplicationView)initWithBackgroundView:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKZeusEmptyComplicationView;
  v3 = [(NTKZeusComplicationView *)&v6 initWithBackgroundView:a3];
  v4 = v3;
  if (v3)
  {
    [(NTKZeusEmptyComplicationView *)v3 setHidden:1];
  }

  return v4;
}

@end