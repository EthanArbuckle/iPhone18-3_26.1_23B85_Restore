@interface YearMonthTransitionMonthView
- (CGRect)_adjustFrame:(CGRect)frame;
- (CGRect)monthFrame;
- (CGRect)monthFrameInMonthView;
- (CGRect)monthLabelFrame;
- (NSString)monthLabelText;
- (UIColor)monthLabelColor;
@end

@implementation YearMonthTransitionMonthView

- (CGRect)monthFrame
{
  [(YearMonthTransitionMonthView *)self frame];

  [(YearMonthTransitionMonthView *)self _adjustFrame:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)monthFrameInMonthView
{
  [(YearMonthTransitionMonthView *)self bounds];

  [(YearMonthTransitionMonthView *)self _adjustFrame:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_adjustFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  +[YearMonthTransitionView _monthHeaderHeight];
  v8 = y + v7 + -8.0;
  v9 = height - v7 + -4.0;
  v10 = x;
  v11 = width;
  result.size.height = v9;
  result.size.width = v11;
  result.origin.y = v8;
  result.origin.x = v10;
  return result;
}

- (CGRect)monthLabelFrame
{
  weekViews = [(YearMonthTransitionMonthView *)self weekViews];
  v4 = [weekViews objectAtIndex:0];

  monthLabel = [(YearMonthTransitionMonthView *)self monthLabel];
  [monthLabel frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(YearMonthTransitionMonthView *)self convertRect:v4 fromView:v7, v9, v11, v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (NSString)monthLabelText
{
  monthLabel = [(YearMonthTransitionMonthView *)self monthLabel];
  text = [monthLabel text];

  return text;
}

- (UIColor)monthLabelColor
{
  monthLabel = [(YearMonthTransitionMonthView *)self monthLabel];
  textColor = [monthLabel textColor];

  return textColor;
}

@end