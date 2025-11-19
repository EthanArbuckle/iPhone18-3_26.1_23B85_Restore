@interface NTKPoodleWorldClockComplicationView
- (CGRect)padContentFrame:(CGRect)a3;
- (NTKPoodleWorldClockComplicationView)initWithBackgroundView:(id)a3;
@end

@implementation NTKPoodleWorldClockComplicationView

- (NTKPoodleWorldClockComplicationView)initWithBackgroundView:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKPoodleWorldClockComplicationView;
  return [(NTKZeusWorldClockComplicationView *)&v4 initWithBackgroundView:a3];
}

- (CGRect)padContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(NTKZeusComplicationView *)self device];
  v8 = sub_1EDA8(v7, x, y, width, height);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

@end