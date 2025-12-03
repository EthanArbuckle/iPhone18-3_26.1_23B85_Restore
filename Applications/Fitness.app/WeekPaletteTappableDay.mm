@interface WeekPaletteTappableDay
- (WeekPaletteTappableDay)init;
- (void)layoutSubviews;
- (void)setCircleHidden:(BOOL)hidden updateCircleColor:(BOOL)color;
- (void)setFont:(id)font textColor:(id)color;
- (void)setTextColorHighlighted:(BOOL)highlighted;
@end

@implementation WeekPaletteTappableDay

- (WeekPaletteTappableDay)init
{
  v12.receiver = self;
  v12.super_class = WeekPaletteTappableDay;
  v2 = [(WeekPaletteTappableDay *)&v12 init];
  if (v2)
  {
    v3 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    circle = v2->_circle;
    v2->_circle = v7;

    [(UIView *)v2->_circle setAlpha:0.0];
    [(WeekPaletteTappableDay *)v2 addSubview:v2->_circle];
    v9 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    weekDayLabel = v2->_weekDayLabel;
    v2->_weekDayLabel = v9;

    [(UILabel *)v2->_weekDayLabel setTextAlignment:1];
    [(WeekPaletteTappableDay *)v2 addSubview:v2->_weekDayLabel];
  }

  return v2;
}

- (void)setFont:(id)font textColor:(id)color
{
  fontCopy = font;
  colorCopy = color;
  dayFont = self->_dayFont;
  self->_dayFont = fontCopy;
  v11 = fontCopy;

  dayTextColor = self->_dayTextColor;
  self->_dayTextColor = colorCopy;
  v10 = colorCopy;

  [(UILabel *)self->_weekDayLabel setFont:v11];
  [(UILabel *)self->_weekDayLabel setTextColor:v10];
}

- (void)setTextColorHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {
    v4 = +[ARUIMetricColors energyColors];
    nonGradientTextColor = [v4 nonGradientTextColor];
    v6 = [nonGradientTextColor colorWithAlphaComponent:0.99];
  }

  else
  {
    v6 = self->_dayTextColor;
  }

  [(UILabel *)self->_weekDayLabel setTextColor:v6];
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = WeekPaletteTappableDay;
  [(WeekPaletteTappableDay *)&v23 layoutSubviews];
  [(WeekPaletteTappableDay *)self bounds];
  v4 = v3;
  [(WeekPaletteTappableDay *)self bounds];
  if (vabdd_f64(v4, v5) >= 2.0)
  {
    layer = [(UIView *)self->_circle layer];
    [layer setCornerRadius:8.0];

    [(WeekPaletteTappableDay *)self bounds];
    [(UIView *)self->_circle setFrame:?];
    [(WeekPaletteTappableDay *)self bounds];
    MidX = CGRectGetMidX(v26);
    [(WeekPaletteTappableDay *)self bounds];
    [(UIView *)self->_circle setCenter:MidX, CGRectGetMidY(v27)];
  }

  else
  {
    [(WeekPaletteTappableDay *)self bounds];
    v7 = v6;
    v8 = v6 * 0.5;
    layer2 = [(UIView *)self->_circle layer];
    [layer2 setCornerRadius:v8];

    [(UIView *)self->_circle setFrame:0.0, 0.0, v7, v7];
  }

  v12 = [NSAttributedString alloc];
  text = [(UILabel *)self->_weekDayLabel text];
  dayFont = self->_dayFont;
  v24 = NSFontAttributeName;
  v25 = dayFont;
  v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v16 = [v12 initWithString:text attributes:v15];

  [(WeekPaletteTappableDay *)self bounds];
  [v16 boundingRectWithSize:0 options:0 context:{v17, 1.79769313e308}];
  v29 = CGRectIntegral(v28);
  width = v29.size.width;
  height = v29.size.height;
  [(WeekPaletteTappableDay *)self bounds:v29.origin.x];
  UIRoundToViewScale();
  v21 = v20;
  [(WeekPaletteTappableDay *)self bounds];
  UIRoundToViewScale();
  [(UILabel *)self->_weekDayLabel setFrame:v21, v22, width, height];
}

- (void)setCircleHidden:(BOOL)hidden updateCircleColor:(BOOL)color
{
  hiddenCopy = hidden;
  if (hidden)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  circle = [(WeekPaletteTappableDay *)self circle];
  [circle setAlpha:v7];

  if (color)
  {
    v9 = +[ARUIMetricColors energyColors];
    nonGradientTextColor = [v9 nonGradientTextColor];

    v10 = nonGradientTextColor;
  }

  else
  {
    v10 = +[UIColor secondaryLabelColor];
  }

  v14 = v10;
  [(UIView *)self->_circle setBackgroundColor:v10];
  if (hiddenCopy)
  {
    v11 = self->_dayTextColor;
  }

  else
  {
    v11 = [UIColor colorWithWhite:1.0 alpha:0.99];
  }

  v12 = v11;
  [(UILabel *)self->_weekDayLabel setTextColor:v11];
}

@end