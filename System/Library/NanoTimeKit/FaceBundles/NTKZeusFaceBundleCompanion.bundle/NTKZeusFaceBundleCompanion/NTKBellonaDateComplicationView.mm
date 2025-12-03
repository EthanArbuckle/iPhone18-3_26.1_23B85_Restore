@interface NTKBellonaDateComplicationView
- (CGRect)contentFrame;
- (CGRect)padContentFrame:(CGRect)frame;
- (NTKBellonaDateComplicationView)initWithBackgroundView:(id)view;
- (void)_updateLabel;
- (void)applyPalette:(id)palette;
- (void)layoutSubviews;
- (void)setDateComplicationText:(id)text withDayRange:(_NSRange)range forDateStyle:(unint64_t)style;
@end

@implementation NTKBellonaDateComplicationView

- (NTKBellonaDateComplicationView)initWithBackgroundView:(id)view
{
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = NTKBellonaDateComplicationView;
  v6 = [(NTKZeusComplicationView *)&v16 initWithBackgroundView:viewCopy];
  v7 = v6;
  if (v6)
  {
    v15 = 0.0;
    v8 = [(NTKZeusComplicationView *)v6 device:0];
    sub_1C090(v8, &v14);

    objc_storeStrong(&v7->_backgroundView, view);
    v9 = objc_opt_new();
    label = v7->_label;
    v7->_label = v9;

    v11 = +[NTKZeusFontLoader capeCodFontDescriptor];
    v12 = [UIFont fontWithDescriptor:v11 size:v15];
    [(UILabel *)v7->_label setFont:v12];
    [(UILabel *)v7->_label setTextAlignment:1];
    [(NTKBellonaDateComplicationView *)v7 addSubview:v7->_label];
  }

  return v7;
}

- (void)applyPalette:(id)palette
{
  v4.receiver = self;
  v4.super_class = NTKBellonaDateComplicationView;
  [(NTKZeusComplicationView *)&v4 applyPalette:palette];
  [(NTKBellonaDateComplicationView *)self _updateLabel];
}

- (CGRect)padContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  device = [(NTKZeusComplicationView *)self device];
  LODWORD(selfCopy) = selfCopy->_currentDayNumber;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_1C090(device, &v18);
  v9 = &v18 + 1;
  if (selfCopy < 10)
  {
    v9 = &v18;
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectInset(v21, -*v9, -*(&v19 + 1));
  v10 = v22.origin.x;
  v11 = v22.origin.y;
  v12 = v22.size.width;
  v13 = v22.size.height;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)setDateComplicationText:(id)text withDayRange:(_NSRange)range forDateStyle:(unint64_t)style
{
  intValue = [text intValue];
  if (intValue != self->_currentDayNumber)
  {
    self->_currentDayNumber = intValue;

    [(NTKBellonaDateComplicationView *)self _updateLabel];
  }
}

- (void)_updateLabel
{
  label = self->_label;
  v4 = [NSString stringWithFormat:@"%d", self->_currentDayNumber];
  [(UILabel *)label setText:v4];

  v5 = self->_label;
  palette = [(NTKZeusComplicationView *)self palette];
  beige = [palette beige];
  [(UILabel *)v5 setTextColor:beige];

  [(NTKBellonaDateComplicationView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  device = [(NTKZeusComplicationView *)self device];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  sub_1C090(device, &v14);
  [(UILabel *)self->_label sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  [(NTKBellonaDateComplicationView *)self bounds];
  label = self->_label;
  CLKRectCenteredXInRectForDevice();
  [(UILabel *)label setFrame:?];
  currentDayNumber = self->_currentDayNumber;
  if (currentDayNumber == 1 || (currentDayNumber - 10) <= 9)
  {
    [(UILabel *)self->_label frame];
    [(UILabel *)self->_label setFrame:v7 - *&v15];
  }

  [(NTKBellonaDateComplicationView *)self contentFrame];
  v9 = v8;
  v10 = self->_label;
  font = [(UILabel *)v10 font];
  [font capHeight];
  [(UILabel *)v10 _setFirstLineBaselineFrameOriginY:v9 + v12];

  v13.receiver = self;
  v13.super_class = NTKBellonaDateComplicationView;
  [(NTKZeusComplicationView *)&v13 layoutSubviews];
}

- (CGRect)contentFrame
{
  [(UILabel *)self->_label sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  font = [(UILabel *)self->_label font];
  [font capHeight];

  [(NTKBellonaDateComplicationView *)self bounds];
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

@end