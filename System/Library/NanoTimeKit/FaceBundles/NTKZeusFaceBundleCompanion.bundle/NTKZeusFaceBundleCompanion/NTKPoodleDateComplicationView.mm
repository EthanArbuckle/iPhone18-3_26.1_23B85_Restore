@interface NTKPoodleDateComplicationView
- (CGRect)contentFrame;
- (CGRect)padContentFrame:(CGRect)a3;
- (NTKPoodleDateComplicationView)initWithBackgroundView:(id)a3;
- (void)_updateLabel;
- (void)applyPalette:(id)a3;
- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5;
- (void)layoutSubviews;
- (void)setDateComplicationText:(id)a3 withDayRange:(_NSRange)a4 forDateStyle:(unint64_t)a5;
@end

@implementation NTKPoodleDateComplicationView

- (NTKPoodleDateComplicationView)initWithBackgroundView:(id)a3
{
  v13.receiver = self;
  v13.super_class = NTKPoodleDateComplicationView;
  v3 = [(NTKZeusComplicationView *)&v13 initWithBackgroundView:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(NTKZeusComplicationView *)v3 device];
    sub_1F3FC(v5, v5);
    v7 = v6;

    v8 = objc_opt_new();
    label = v4->_label;
    v4->_label = v8;

    v10 = +[NTKZeusFontLoader clipperFontDescriptor];
    v11 = [UIFont fontWithDescriptor:v10 size:v7];
    [(UILabel *)v4->_label setFont:v11];
    [(UILabel *)v4->_label setTextAlignment:1];
    [(NTKPoodleDateComplicationView *)v4 addSubview:v4->_label];
  }

  return v4;
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

- (void)setDateComplicationText:(id)a3 withDayRange:(_NSRange)a4 forDateStyle:(unint64_t)a5
{
  v6 = [a3 intValue];
  if (v6 != self->_currentDayNumber)
  {
    self->_currentDayNumber = v6;

    [(NTKPoodleDateComplicationView *)self _updateLabel];
  }
}

- (void)_updateLabel
{
  label = self->_label;
  v4 = [NSString stringWithFormat:@"%d", self->_currentDayNumber];
  [(UILabel *)label setText:v4];

  v5 = self->_label;
  v6 = [(NTKZeusComplicationView *)self palette];
  v7 = [v6 bottomComplication];
  [(UILabel *)v5 setTextColor:v7];

  [(NTKPoodleDateComplicationView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v3 = [(NTKZeusComplicationView *)self device];
  [(UILabel *)self->_label sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  [(NTKPoodleDateComplicationView *)self bounds];
  label = self->_label;
  CLKRectCenteredXInRectForDevice();
  [(UILabel *)label setFrame:?];
  [(NTKPoodleDateComplicationView *)self contentFrame];
  v6 = v5;
  v7 = self->_label;
  v8 = [(UILabel *)v7 font];
  [v8 capHeight];
  [(UILabel *)v7 _setFirstLineBaselineFrameOriginY:v6 + v9];

  v10.receiver = self;
  v10.super_class = NTKPoodleDateComplicationView;
  [(NTKZeusComplicationView *)&v10 layoutSubviews];
}

- (CGRect)contentFrame
{
  [(UILabel *)self->_label sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  v3 = [(UILabel *)self->_label font];
  [v3 capHeight];

  [(NTKPoodleDateComplicationView *)self bounds];
  v4 = [(NTKZeusComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)applyPalette:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKPoodleDateComplicationView;
  [(NTKZeusComplicationView *)&v4 applyPalette:a3];
  [(NTKPoodleDateComplicationView *)self _updateLabel];
}

- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5
{
  v14.receiver = self;
  v14.super_class = NTKPoodleDateComplicationView;
  v8 = a5;
  v9 = a4;
  [(NTKZeusComplicationView *)&v14 applyTransitionFraction:v9 fromPalette:v8 toPalette:a3];
  label = self->_label;
  v11 = [v9 bottomComplication];

  v12 = [v8 bottomComplication];

  v13 = NTKInterpolateBetweenColors();
  [(UILabel *)label setTextColor:v13];
}

@end