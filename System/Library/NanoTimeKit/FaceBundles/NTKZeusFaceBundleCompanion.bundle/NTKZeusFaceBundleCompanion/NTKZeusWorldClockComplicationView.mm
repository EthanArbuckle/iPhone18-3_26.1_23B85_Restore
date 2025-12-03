@interface NTKZeusWorldClockComplicationView
- (CGRect)contentFrame;
- (CGRect)padContentFrame:(CGRect)frame;
- (NTKZeusWorldClockComplicationView)initWithBackgroundView:(id)view;
- (void)_updateLabels;
- (void)applyPalette:(id)palette;
- (void)applyTransitionFraction:(double)fraction fromMode:(int64_t)mode toMode:(int64_t)toMode;
- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette;
- (void)blancEditModeApplyPalette:(id)palette;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setShortCity:(id)city;
- (void)timeFormatterTextDidChange:(id)change;
@end

@implementation NTKZeusWorldClockComplicationView

- (NTKZeusWorldClockComplicationView)initWithBackgroundView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    v5 = [NTKZeusComplicationBackgroundView alloc];
    v6 = +[NTKFaceViewRenderingContext sharedRenderingContext];
    device = [v6 device];
    viewCopy = [(NTKZeusComplicationBackgroundView *)v5 initWithDevice:device];
  }

  v24.receiver = self;
  v24.super_class = NTKZeusWorldClockComplicationView;
  v8 = [(NTKZeusComplicationView *)&v24 initWithBackgroundView:viewCopy];
  if (v8)
  {
    v9 = objc_opt_new();
    timeLabel = v8->_timeLabel;
    v8->_timeLabel = v9;

    v11 = v8->_timeLabel;
    device2 = [(NTKZeusComplicationView *)v8 device];
    sub_C038(device2, v22);
    v13 = [CLKFont systemFontOfSize:v23 weight:UIFontWeightMedium];
    [(UILabel *)v11 setFont:v13];

    [(UILabel *)v8->_timeLabel setTextAlignment:1];
    [(NTKZeusWorldClockComplicationView *)v8 addSubview:v8->_timeLabel];
    v14 = objc_opt_new();
    cityLabel = v8->_cityLabel;
    v8->_cityLabel = v14;

    v16 = v8->_cityLabel;
    font = [(UILabel *)v8->_timeLabel font];
    [(UILabel *)v16 setFont:font];

    v18 = v8->_cityLabel;
    [(UILabel *)v8->_timeLabel alpha];
    [(UILabel *)v18 setAlpha:?];
    [(UILabel *)v8->_cityLabel setTextAlignment:1];
    [(NTKZeusWorldClockComplicationView *)v8 addSubview:v8->_cityLabel];
    [(NTKZeusWorldClockComplicationView *)v8 _updateLabels];
    v19 = objc_opt_new();
    formatter = v8->_formatter;
    v8->_formatter = v19;

    [(CLKTimeFormatter *)v8->_formatter addObserver:v8];
  }

  return v8;
}

- (void)dealloc
{
  [(CLKTimeFormatter *)self->_formatter removeObserver:self];
  v3.receiver = self;
  v3.super_class = NTKZeusWorldClockComplicationView;
  [(NTKZeusWorldClockComplicationView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  device = [(NTKZeusComplicationView *)self device];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  sub_C038(device, v18);
  height = CGSizeZero.height;
  [(UILabel *)self->_timeLabel sizeThatFits:CGSizeZero.width, height];
  [(UILabel *)self->_cityLabel sizeThatFits:CGSizeZero.width, height];
  [(NTKZeusWorldClockComplicationView *)self bounds];
  timeLabel = self->_timeLabel;
  CLKRectCenteredXInRectForDevice();
  [(UILabel *)timeLabel setFrame:?];
  cityLabel = self->_cityLabel;
  CLKRectCenteredXInRectForDevice();
  [(UILabel *)cityLabel setFrame:?];
  [(NTKZeusWorldClockComplicationView *)self contentFrame];
  v8 = v7;
  v9 = self->_timeLabel;
  font = [(UILabel *)v9 font];
  [font capHeight];
  [(UILabel *)v9 _setFirstLineBaselineFrameOriginY:v8 + v11];

  v12 = self->_cityLabel;
  [(UILabel *)self->_timeLabel _firstLineBaselineFrameOriginY];
  v14 = v13 + *&v19;
  font2 = [(UILabel *)self->_cityLabel font];
  [font2 capHeight];
  [(UILabel *)v12 _setFirstLineBaselineFrameOriginY:v14 + v16];

  v17.receiver = self;
  v17.super_class = NTKZeusWorldClockComplicationView;
  [(NTKZeusComplicationView *)&v17 layoutSubviews];
}

- (CGRect)contentFrame
{
  height = CGSizeZero.height;
  [(UILabel *)self->_timeLabel sizeThatFits:CGSizeZero.width, height];
  [(UILabel *)self->_cityLabel sizeThatFits:CGSizeZero.width, height];
  font = [(UILabel *)self->_timeLabel font];
  [font capHeight];
  device = [(NTKZeusComplicationView *)self device];
  sub_C038(device, &v19);

  [(NTKZeusWorldClockComplicationView *)self bounds];
  device2 = [(NTKZeusComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v8 = v7;
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

- (CGRect)padContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NTKZeusComplicationView *)self device:0];
  sub_C038(v7, &v14);

  v8 = -*&v15;
  v9 = -(*(&v15 + 1) + *(&v16 + 1));
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  return CGRectInset(*&v10, v8, v9);
}

- (void)setShortCity:(id)city
{
  [(UILabel *)self->_cityLabel setText:city];

  [(NTKZeusWorldClockComplicationView *)self setNeedsLayout];
}

- (void)timeFormatterTextDidChange:(id)change
{
  timeLabel = self->_timeLabel;
  timeText = [change timeText];
  [(UILabel *)timeLabel setText:timeText];

  [(NTKZeusWorldClockComplicationView *)self setNeedsLayout];
}

- (void)_updateLabels
{
  timeLabel = self->_timeLabel;
  palette = [(NTKZeusComplicationView *)self palette];
  bottomComplication = [palette bottomComplication];
  [(UILabel *)timeLabel setTextColor:bottomComplication];

  cityLabel = self->_cityLabel;
  palette2 = [(NTKZeusComplicationView *)self palette];
  bottomComplication2 = [palette2 bottomComplication];
  [(UILabel *)cityLabel setTextColor:bottomComplication2];
}

- (void)applyPalette:(id)palette
{
  v4.receiver = self;
  v4.super_class = NTKZeusWorldClockComplicationView;
  [(NTKZeusComplicationView *)&v4 applyPalette:palette];
  [(NTKZeusWorldClockComplicationView *)self _updateLabels];
}

- (void)blancEditModeApplyPalette:(id)palette
{
  v10.receiver = self;
  v10.super_class = NTKZeusWorldClockComplicationView;
  [(NTKZeusComplicationView *)&v10 blancEditModeApplyPalette:palette];
  timeLabel = self->_timeLabel;
  palette = [(NTKZeusComplicationView *)self palette];
  editMode = [palette editMode];
  [(UILabel *)timeLabel setTextColor:editMode];

  cityLabel = self->_cityLabel;
  palette2 = [(NTKZeusComplicationView *)self palette];
  editMode2 = [palette2 editMode];
  [(UILabel *)cityLabel setTextColor:editMode2];
}

- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette
{
  v13.receiver = self;
  v13.super_class = NTKZeusWorldClockComplicationView;
  toPaletteCopy = toPalette;
  paletteCopy = palette;
  [(NTKZeusComplicationView *)&v13 applyTransitionFraction:paletteCopy fromPalette:toPaletteCopy toPalette:fraction];
  bottomComplication = [paletteCopy bottomComplication];

  bottomComplication2 = [toPaletteCopy bottomComplication];

  v12 = NTKInterpolateBetweenColors();

  [(UILabel *)self->_timeLabel setTextColor:v12];
  [(UILabel *)self->_cityLabel setTextColor:v12];
}

- (void)applyTransitionFraction:(double)fraction fromMode:(int64_t)mode toMode:(int64_t)toMode
{
  v13.receiver = self;
  v13.super_class = NTKZeusWorldClockComplicationView;
  [NTKZeusComplicationView applyTransitionFraction:"applyTransitionFraction:fromMode:toMode:" fromMode:? toMode:?];
  v12.receiver = self;
  v12.super_class = NTKZeusWorldClockComplicationView;
  v8 = [(NTKZeusComplicationView *)&v12 complicationColorForBlancEditMode:mode];
  v11.receiver = self;
  v11.super_class = NTKZeusWorldClockComplicationView;
  v9 = [(NTKZeusComplicationView *)&v11 complicationColorForBlancEditMode:toMode];
  v10 = NTKInterpolateBetweenColors();

  [(UILabel *)self->_timeLabel setTextColor:v10];
  [(UILabel *)self->_cityLabel setTextColor:v10];
}

@end