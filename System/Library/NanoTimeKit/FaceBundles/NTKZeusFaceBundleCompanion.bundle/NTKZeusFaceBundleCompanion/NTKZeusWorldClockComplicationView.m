@interface NTKZeusWorldClockComplicationView
- (CGRect)contentFrame;
- (CGRect)padContentFrame:(CGRect)a3;
- (NTKZeusWorldClockComplicationView)initWithBackgroundView:(id)a3;
- (void)_updateLabels;
- (void)applyPalette:(id)a3;
- (void)applyTransitionFraction:(double)a3 fromMode:(int64_t)a4 toMode:(int64_t)a5;
- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5;
- (void)blancEditModeApplyPalette:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setShortCity:(id)a3;
- (void)timeFormatterTextDidChange:(id)a3;
@end

@implementation NTKZeusWorldClockComplicationView

- (NTKZeusWorldClockComplicationView)initWithBackgroundView:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [NTKZeusComplicationBackgroundView alloc];
    v6 = +[NTKFaceViewRenderingContext sharedRenderingContext];
    v7 = [v6 device];
    v4 = [(NTKZeusComplicationBackgroundView *)v5 initWithDevice:v7];
  }

  v24.receiver = self;
  v24.super_class = NTKZeusWorldClockComplicationView;
  v8 = [(NTKZeusComplicationView *)&v24 initWithBackgroundView:v4];
  if (v8)
  {
    v9 = objc_opt_new();
    timeLabel = v8->_timeLabel;
    v8->_timeLabel = v9;

    v11 = v8->_timeLabel;
    v12 = [(NTKZeusComplicationView *)v8 device];
    sub_C038(v12, v22);
    v13 = [CLKFont systemFontOfSize:v23 weight:UIFontWeightMedium];
    [(UILabel *)v11 setFont:v13];

    [(UILabel *)v8->_timeLabel setTextAlignment:1];
    [(NTKZeusWorldClockComplicationView *)v8 addSubview:v8->_timeLabel];
    v14 = objc_opt_new();
    cityLabel = v8->_cityLabel;
    v8->_cityLabel = v14;

    v16 = v8->_cityLabel;
    v17 = [(UILabel *)v8->_timeLabel font];
    [(UILabel *)v16 setFont:v17];

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
  v3 = [(NTKZeusComplicationView *)self device];
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
  sub_C038(v3, v18);
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
  v10 = [(UILabel *)v9 font];
  [v10 capHeight];
  [(UILabel *)v9 _setFirstLineBaselineFrameOriginY:v8 + v11];

  v12 = self->_cityLabel;
  [(UILabel *)self->_timeLabel _firstLineBaselineFrameOriginY];
  v14 = v13 + *&v19;
  v15 = [(UILabel *)self->_cityLabel font];
  [v15 capHeight];
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
  v4 = [(UILabel *)self->_timeLabel font];
  [v4 capHeight];
  v5 = [(NTKZeusComplicationView *)self device];
  sub_C038(v5, &v19);

  [(NTKZeusWorldClockComplicationView *)self bounds];
  v6 = [(NTKZeusComplicationView *)self device];
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

- (CGRect)padContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setShortCity:(id)a3
{
  [(UILabel *)self->_cityLabel setText:a3];

  [(NTKZeusWorldClockComplicationView *)self setNeedsLayout];
}

- (void)timeFormatterTextDidChange:(id)a3
{
  timeLabel = self->_timeLabel;
  v5 = [a3 timeText];
  [(UILabel *)timeLabel setText:v5];

  [(NTKZeusWorldClockComplicationView *)self setNeedsLayout];
}

- (void)_updateLabels
{
  timeLabel = self->_timeLabel;
  v4 = [(NTKZeusComplicationView *)self palette];
  v5 = [v4 bottomComplication];
  [(UILabel *)timeLabel setTextColor:v5];

  cityLabel = self->_cityLabel;
  v8 = [(NTKZeusComplicationView *)self palette];
  v7 = [v8 bottomComplication];
  [(UILabel *)cityLabel setTextColor:v7];
}

- (void)applyPalette:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKZeusWorldClockComplicationView;
  [(NTKZeusComplicationView *)&v4 applyPalette:a3];
  [(NTKZeusWorldClockComplicationView *)self _updateLabels];
}

- (void)blancEditModeApplyPalette:(id)a3
{
  v10.receiver = self;
  v10.super_class = NTKZeusWorldClockComplicationView;
  [(NTKZeusComplicationView *)&v10 blancEditModeApplyPalette:a3];
  timeLabel = self->_timeLabel;
  v5 = [(NTKZeusComplicationView *)self palette];
  v6 = [v5 editMode];
  [(UILabel *)timeLabel setTextColor:v6];

  cityLabel = self->_cityLabel;
  v8 = [(NTKZeusComplicationView *)self palette];
  v9 = [v8 editMode];
  [(UILabel *)cityLabel setTextColor:v9];
}

- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5
{
  v13.receiver = self;
  v13.super_class = NTKZeusWorldClockComplicationView;
  v8 = a5;
  v9 = a4;
  [(NTKZeusComplicationView *)&v13 applyTransitionFraction:v9 fromPalette:v8 toPalette:a3];
  v10 = [v9 bottomComplication];

  v11 = [v8 bottomComplication];

  v12 = NTKInterpolateBetweenColors();

  [(UILabel *)self->_timeLabel setTextColor:v12];
  [(UILabel *)self->_cityLabel setTextColor:v12];
}

- (void)applyTransitionFraction:(double)a3 fromMode:(int64_t)a4 toMode:(int64_t)a5
{
  v13.receiver = self;
  v13.super_class = NTKZeusWorldClockComplicationView;
  [NTKZeusComplicationView applyTransitionFraction:"applyTransitionFraction:fromMode:toMode:" fromMode:? toMode:?];
  v12.receiver = self;
  v12.super_class = NTKZeusWorldClockComplicationView;
  v8 = [(NTKZeusComplicationView *)&v12 complicationColorForBlancEditMode:a4];
  v11.receiver = self;
  v11.super_class = NTKZeusWorldClockComplicationView;
  v9 = [(NTKZeusComplicationView *)&v11 complicationColorForBlancEditMode:a5];
  v10 = NTKInterpolateBetweenColors();

  [(UILabel *)self->_timeLabel setTextColor:v10];
  [(UILabel *)self->_cityLabel setTextColor:v10];
}

@end