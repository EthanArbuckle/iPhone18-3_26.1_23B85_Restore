@interface NTKPoodleDateComplicationView
- (CGRect)contentFrame;
- (CGRect)padContentFrame:(CGRect)frame;
- (NTKPoodleDateComplicationView)initWithBackgroundView:(id)view;
- (void)_updateLabel;
- (void)applyPalette:(id)palette;
- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette;
- (void)layoutSubviews;
- (void)setDateComplicationText:(id)text withDayRange:(_NSRange)range forDateStyle:(unint64_t)style;
@end

@implementation NTKPoodleDateComplicationView

- (NTKPoodleDateComplicationView)initWithBackgroundView:(id)view
{
  v13.receiver = self;
  v13.super_class = NTKPoodleDateComplicationView;
  v3 = [(NTKZeusComplicationView *)&v13 initWithBackgroundView:view];
  v4 = v3;
  if (v3)
  {
    device = [(NTKZeusComplicationView *)v3 device];
    sub_1F3FC(device, device);
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

- (void)setDateComplicationText:(id)text withDayRange:(_NSRange)range forDateStyle:(unint64_t)style
{
  intValue = [text intValue];
  if (intValue != self->_currentDayNumber)
  {
    self->_currentDayNumber = intValue;

    [(NTKPoodleDateComplicationView *)self _updateLabel];
  }
}

- (void)_updateLabel
{
  label = self->_label;
  v4 = [NSString stringWithFormat:@"%d", self->_currentDayNumber];
  [(UILabel *)label setText:v4];

  v5 = self->_label;
  palette = [(NTKZeusComplicationView *)self palette];
  bottomComplication = [palette bottomComplication];
  [(UILabel *)v5 setTextColor:bottomComplication];

  [(NTKPoodleDateComplicationView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  device = [(NTKZeusComplicationView *)self device];
  [(UILabel *)self->_label sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  [(NTKPoodleDateComplicationView *)self bounds];
  label = self->_label;
  CLKRectCenteredXInRectForDevice();
  [(UILabel *)label setFrame:?];
  [(NTKPoodleDateComplicationView *)self contentFrame];
  v6 = v5;
  v7 = self->_label;
  font = [(UILabel *)v7 font];
  [font capHeight];
  [(UILabel *)v7 _setFirstLineBaselineFrameOriginY:v6 + v9];

  v10.receiver = self;
  v10.super_class = NTKPoodleDateComplicationView;
  [(NTKZeusComplicationView *)&v10 layoutSubviews];
}

- (CGRect)contentFrame
{
  [(UILabel *)self->_label sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  font = [(UILabel *)self->_label font];
  [font capHeight];

  [(NTKPoodleDateComplicationView *)self bounds];
  device = [(NTKZeusComplicationView *)self device];
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

- (void)applyPalette:(id)palette
{
  v4.receiver = self;
  v4.super_class = NTKPoodleDateComplicationView;
  [(NTKZeusComplicationView *)&v4 applyPalette:palette];
  [(NTKPoodleDateComplicationView *)self _updateLabel];
}

- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette
{
  v14.receiver = self;
  v14.super_class = NTKPoodleDateComplicationView;
  toPaletteCopy = toPalette;
  paletteCopy = palette;
  [(NTKZeusComplicationView *)&v14 applyTransitionFraction:paletteCopy fromPalette:toPaletteCopy toPalette:fraction];
  label = self->_label;
  bottomComplication = [paletteCopy bottomComplication];

  bottomComplication2 = [toPaletteCopy bottomComplication];

  v13 = NTKInterpolateBetweenColors();
  [(UILabel *)label setTextColor:v13];
}

@end