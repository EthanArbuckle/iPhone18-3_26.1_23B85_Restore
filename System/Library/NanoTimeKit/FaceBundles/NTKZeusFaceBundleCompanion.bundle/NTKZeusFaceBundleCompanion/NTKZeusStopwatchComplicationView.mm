@interface NTKZeusStopwatchComplicationView
- (CGRect)contentFrame;
- (CGRect)padContentFrame:(CGRect)frame;
- (NTKZeusStopwatchComplicationView)initWithBackgroundView:(id)view;
- (id)_createLabel;
- (void)applyPalette:(id)palette;
- (void)applyTransitionFraction:(double)fraction fromMode:(int64_t)mode toMode:(int64_t)toMode;
- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette;
- (void)blancEditModeApplyPalette:(id)palette;
- (void)layoutSubviews;
- (void)setStopwatchState:(int64_t)state elapsedTime:(double)time shouldPauseTextCountdown:(BOOL)countdown timeTravelDate:(id)date;
@end

@implementation NTKZeusStopwatchComplicationView

- (NTKZeusStopwatchComplicationView)initWithBackgroundView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    v5 = [NTKZeusComplicationBackgroundView alloc];
    v6 = +[NTKFaceViewRenderingContext sharedRenderingContext];
    device = [v6 device];
    viewCopy = [(NTKZeusComplicationBackgroundView *)v5 initWithDevice:device];
  }

  v13.receiver = self;
  v13.super_class = NTKZeusStopwatchComplicationView;
  v8 = [(NTKZeusComplicationView *)&v13 initWithBackgroundView:viewCopy];
  v9 = v8;
  if (v8)
  {
    _createLabel = [(NTKZeusStopwatchComplicationView *)v8 _createLabel];
    label = v9->_label;
    v9->_label = _createLabel;

    [(NTKZeusStopwatchComplicationView *)v9 addSubview:v9->_label];
    [(NTKZeusStopwatchComplicationView *)v9 setStopwatchState:0 elapsedTime:1 shouldPauseTextCountdown:0 timeTravelDate:0.0];
  }

  return v9;
}

- (void)setStopwatchState:(int64_t)state elapsedTime:(double)time shouldPauseTextCountdown:(BOOL)countdown timeTravelDate:(id)date
{
  v9 = [NTKDate complicationDate:state];
  v10 = v9;
  if (state == 1)
  {
    v14 = v9;
    v11 = [v9 dateByAddingTimeInterval:-time];

    v10 = v11;
  }

  v15 = v10;
  v12 = [CLKRelativeDateTextProvider textProviderWithDate:v10 style:2 units:224];
  [v12 setWantsSubseconds:0];
  [v12 setTwoDigitMinuteZeroPadding:1];
  if (state != 1)
  {
    v13 = [v15 dateByAddingTimeInterval:time];
    [v12 setRelativeToDate:v13];
  }

  [v12 setPaused:0];
  [v12 finalize];
  [(CLKUIColoringLabel *)self->_label setTextProvider:v12];
  self->_stopwatchState = state;
}

- (void)layoutSubviews
{
  [(CLKUIColoringLabel *)self->_label sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  [(NTKZeusStopwatchComplicationView *)self bounds];
  device = [(NTKZeusComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CLKUIColoringLabel *)self->_label setFrame:v5, v7, v9, v11];
  v12.receiver = self;
  v12.super_class = NTKZeusStopwatchComplicationView;
  [(NTKZeusComplicationView *)&v12 layoutSubviews];
}

- (CGRect)contentFrame
{
  [(CLKUIColoringLabel *)self->_label sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  font = [(CLKUIColoringLabel *)self->_label font];
  [font capHeight];

  [(NTKZeusStopwatchComplicationView *)self bounds];
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

- (CGRect)padContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  device = [(NTKZeusComplicationView *)self device];
  sub_C038(device, v14);

  v8 = -*v14;
  v9 = -(*(v14 + 1) + *(&v15 + 1));
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  return CGRectInset(*&v10, v8, v9);
}

- (void)applyPalette:(id)palette
{
  v7.receiver = self;
  v7.super_class = NTKZeusStopwatchComplicationView;
  [(NTKZeusComplicationView *)&v7 applyPalette:palette];
  label = self->_label;
  palette = [(NTKZeusComplicationView *)self palette];
  bottomComplication = [palette bottomComplication];
  [(CLKUIColoringLabel *)label setTextColor:bottomComplication];
}

- (void)blancEditModeApplyPalette:(id)palette
{
  v7.receiver = self;
  v7.super_class = NTKZeusStopwatchComplicationView;
  [(NTKZeusComplicationView *)&v7 blancEditModeApplyPalette:palette];
  label = self->_label;
  palette = [(NTKZeusComplicationView *)self palette];
  editMode = [palette editMode];
  [(CLKUIColoringLabel *)label setTextColor:editMode];
}

- (void)applyTransitionFraction:(double)fraction fromPalette:(id)palette toPalette:(id)toPalette
{
  v13.receiver = self;
  v13.super_class = NTKZeusStopwatchComplicationView;
  toPaletteCopy = toPalette;
  paletteCopy = palette;
  [(NTKZeusComplicationView *)&v13 applyTransitionFraction:paletteCopy fromPalette:toPaletteCopy toPalette:fraction];
  bottomComplication = [paletteCopy bottomComplication];

  bottomComplication2 = [toPaletteCopy bottomComplication];

  v12 = NTKInterpolateBetweenColors();

  [(CLKUIColoringLabel *)self->_label setTextColor:v12];
}

- (void)applyTransitionFraction:(double)fraction fromMode:(int64_t)mode toMode:(int64_t)toMode
{
  v13.receiver = self;
  v13.super_class = NTKZeusStopwatchComplicationView;
  [NTKZeusComplicationView applyTransitionFraction:"applyTransitionFraction:fromMode:toMode:" fromMode:? toMode:?];
  v12.receiver = self;
  v12.super_class = NTKZeusStopwatchComplicationView;
  v8 = [(NTKZeusComplicationView *)&v12 complicationColorForBlancEditMode:mode];
  v11.receiver = self;
  v11.super_class = NTKZeusStopwatchComplicationView;
  v9 = [(NTKZeusComplicationView *)&v11 complicationColorForBlancEditMode:toMode];
  v10 = NTKInterpolateBetweenColors();

  [(CLKUIColoringLabel *)self->_label setTextColor:v10];
}

- (id)_createLabel
{
  v3 = objc_opt_new();
  device = [(NTKZeusComplicationView *)self device];
  sub_C038(device, v13);
  v5 = [CLKFont systemFontOfSize:v14 weight:UIFontWeightMedium];
  cLKFontWithMonospacedNumbers = [v5 CLKFontWithMonospacedNumbers];
  [v3 setFont:cLKFontWithMonospacedNumbers];

  [v3 setUsesTextProviderTintColoring:0];
  palette = [(NTKZeusComplicationView *)self palette];
  bottomComplication = [palette bottomComplication];
  [v3 setTextColor:bottomComplication];

  [v3 setTextAlignment:1];
  [v3 setInTimeTravel:0];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_AF3C;
  v10[3] = &unk_44D80;
  objc_copyWeak(&v11, &location);
  [v3 setNeedsResizeHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v3;
}

@end