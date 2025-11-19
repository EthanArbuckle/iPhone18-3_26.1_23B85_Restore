@interface NTKZeusStopwatchComplicationView
- (CGRect)contentFrame;
- (CGRect)padContentFrame:(CGRect)a3;
- (NTKZeusStopwatchComplicationView)initWithBackgroundView:(id)a3;
- (id)_createLabel;
- (void)applyPalette:(id)a3;
- (void)applyTransitionFraction:(double)a3 fromMode:(int64_t)a4 toMode:(int64_t)a5;
- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5;
- (void)blancEditModeApplyPalette:(id)a3;
- (void)layoutSubviews;
- (void)setStopwatchState:(int64_t)a3 elapsedTime:(double)a4 shouldPauseTextCountdown:(BOOL)a5 timeTravelDate:(id)a6;
@end

@implementation NTKZeusStopwatchComplicationView

- (NTKZeusStopwatchComplicationView)initWithBackgroundView:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [NTKZeusComplicationBackgroundView alloc];
    v6 = +[NTKFaceViewRenderingContext sharedRenderingContext];
    v7 = [v6 device];
    v4 = [(NTKZeusComplicationBackgroundView *)v5 initWithDevice:v7];
  }

  v13.receiver = self;
  v13.super_class = NTKZeusStopwatchComplicationView;
  v8 = [(NTKZeusComplicationView *)&v13 initWithBackgroundView:v4];
  v9 = v8;
  if (v8)
  {
    v10 = [(NTKZeusStopwatchComplicationView *)v8 _createLabel];
    label = v9->_label;
    v9->_label = v10;

    [(NTKZeusStopwatchComplicationView *)v9 addSubview:v9->_label];
    [(NTKZeusStopwatchComplicationView *)v9 setStopwatchState:0 elapsedTime:1 shouldPauseTextCountdown:0 timeTravelDate:0.0];
  }

  return v9;
}

- (void)setStopwatchState:(int64_t)a3 elapsedTime:(double)a4 shouldPauseTextCountdown:(BOOL)a5 timeTravelDate:(id)a6
{
  v9 = [NTKDate complicationDate:a3];
  v10 = v9;
  if (a3 == 1)
  {
    v14 = v9;
    v11 = [v9 dateByAddingTimeInterval:-a4];

    v10 = v11;
  }

  v15 = v10;
  v12 = [CLKRelativeDateTextProvider textProviderWithDate:v10 style:2 units:224];
  [v12 setWantsSubseconds:0];
  [v12 setTwoDigitMinuteZeroPadding:1];
  if (a3 != 1)
  {
    v13 = [v15 dateByAddingTimeInterval:a4];
    [v12 setRelativeToDate:v13];
  }

  [v12 setPaused:0];
  [v12 finalize];
  [(CLKUIColoringLabel *)self->_label setTextProvider:v12];
  self->_stopwatchState = a3;
}

- (void)layoutSubviews
{
  [(CLKUIColoringLabel *)self->_label sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  [(NTKZeusStopwatchComplicationView *)self bounds];
  v3 = [(NTKZeusComplicationView *)self device];
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
  v3 = [(CLKUIColoringLabel *)self->_label font];
  [v3 capHeight];

  [(NTKZeusStopwatchComplicationView *)self bounds];
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

- (CGRect)padContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v7 = [(NTKZeusComplicationView *)self device];
  sub_C038(v7, v14);

  v8 = -*v14;
  v9 = -(*(v14 + 1) + *(&v15 + 1));
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  return CGRectInset(*&v10, v8, v9);
}

- (void)applyPalette:(id)a3
{
  v7.receiver = self;
  v7.super_class = NTKZeusStopwatchComplicationView;
  [(NTKZeusComplicationView *)&v7 applyPalette:a3];
  label = self->_label;
  v5 = [(NTKZeusComplicationView *)self palette];
  v6 = [v5 bottomComplication];
  [(CLKUIColoringLabel *)label setTextColor:v6];
}

- (void)blancEditModeApplyPalette:(id)a3
{
  v7.receiver = self;
  v7.super_class = NTKZeusStopwatchComplicationView;
  [(NTKZeusComplicationView *)&v7 blancEditModeApplyPalette:a3];
  label = self->_label;
  v5 = [(NTKZeusComplicationView *)self palette];
  v6 = [v5 editMode];
  [(CLKUIColoringLabel *)label setTextColor:v6];
}

- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5
{
  v13.receiver = self;
  v13.super_class = NTKZeusStopwatchComplicationView;
  v8 = a5;
  v9 = a4;
  [(NTKZeusComplicationView *)&v13 applyTransitionFraction:v9 fromPalette:v8 toPalette:a3];
  v10 = [v9 bottomComplication];

  v11 = [v8 bottomComplication];

  v12 = NTKInterpolateBetweenColors();

  [(CLKUIColoringLabel *)self->_label setTextColor:v12];
}

- (void)applyTransitionFraction:(double)a3 fromMode:(int64_t)a4 toMode:(int64_t)a5
{
  v13.receiver = self;
  v13.super_class = NTKZeusStopwatchComplicationView;
  [NTKZeusComplicationView applyTransitionFraction:"applyTransitionFraction:fromMode:toMode:" fromMode:? toMode:?];
  v12.receiver = self;
  v12.super_class = NTKZeusStopwatchComplicationView;
  v8 = [(NTKZeusComplicationView *)&v12 complicationColorForBlancEditMode:a4];
  v11.receiver = self;
  v11.super_class = NTKZeusStopwatchComplicationView;
  v9 = [(NTKZeusComplicationView *)&v11 complicationColorForBlancEditMode:a5];
  v10 = NTKInterpolateBetweenColors();

  [(CLKUIColoringLabel *)self->_label setTextColor:v10];
}

- (id)_createLabel
{
  v3 = objc_opt_new();
  v4 = [(NTKZeusComplicationView *)self device];
  sub_C038(v4, v13);
  v5 = [CLKFont systemFontOfSize:v14 weight:UIFontWeightMedium];
  v6 = [v5 CLKFontWithMonospacedNumbers];
  [v3 setFont:v6];

  [v3 setUsesTextProviderTintColoring:0];
  v7 = [(NTKZeusComplicationView *)self palette];
  v8 = [v7 bottomComplication];
  [v3 setTextColor:v8];

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