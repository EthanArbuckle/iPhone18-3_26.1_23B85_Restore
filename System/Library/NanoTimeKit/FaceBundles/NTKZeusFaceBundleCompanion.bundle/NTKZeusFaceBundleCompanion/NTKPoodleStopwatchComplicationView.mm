@interface NTKPoodleStopwatchComplicationView
- (CGRect)padContentFrame:(CGRect)frame;
- (NTKPoodleStopwatchComplicationView)initWithBackgroundView:(id)view;
@end

@implementation NTKPoodleStopwatchComplicationView

- (NTKPoodleStopwatchComplicationView)initWithBackgroundView:(id)view
{
  v4.receiver = self;
  v4.super_class = NTKPoodleStopwatchComplicationView;
  return [(NTKZeusStopwatchComplicationView *)&v4 initWithBackgroundView:view];
}

- (CGRect)padContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  device = [(NTKZeusComplicationView *)self device];
  v8 = sub_1EDA8(device, x, y, width, height);
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