@interface NTKExactitudesMiniClockView
- (NTKExactitudesMiniClockView)initWithDevice:(id)a3 clockTimer:(id)a4;
- (id)_dummyColors;
- (id)_hourHandInlayColorForConfiguration:(id)a3 enteringAOD:(BOOL)a4;
- (id)_hourHandOutlineColorForConfiguration:(id)a3 enteringAOD:(BOOL)a4;
- (id)_minuteHandInlayColorForConfiguration:(id)a3 enteringAOD:(BOOL)a4;
- (id)_minuteHandOutlineColorForConfiguration:(id)a3 enteringAOD:(BOOL)a4;
- (void)_applyColorsToHandsViewWithConfiguration:(id)a3;
- (void)layoutSubviews;
- (void)setConfiguration:(id)a3;
- (void)traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation NTKExactitudesMiniClockView

- (NTKExactitudesMiniClockView)initWithDevice:(id)a3 clockTimer:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = NTKExactitudesMiniClockView;
  v7 = [(NTKExactitudesMiniClockView *)&v14 initWithDevice:v6 clockTimer:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [(NTKExactitudesMiniClockView *)v7 _dummyColors];
    v10 = [NTKExactitudesFaceDialsView alloc];
    [(NTKExactitudesMiniClockView *)v8 bounds];
    v11 = [(NTKExactitudesFaceDialsView *)v10 initForMiniClockWithFrame:v6 device:v9 colorsWrapper:?];
    dials = v8->_dials;
    v8->_dials = v11;

    [(NTKExactitudesMiniClockView *)v8 insertSubview:v8->_dials atIndex:0];
  }

  return v8;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKExactitudesMiniClockView;
  [(NTKExactitudesMiniClockView *)&v3 layoutSubviews];
  [(NTKExactitudesMiniClockView *)self bounds];
  CLKRectGetCenter();
  [(NTKExactitudesFaceDialsView *)self->_dials setCenter:?];
}

- (void)setConfiguration:(id)a3
{
  v9.receiver = self;
  v9.super_class = NTKExactitudesMiniClockView;
  v4 = a3;
  [(NTKExactitudesMiniClockView *)&v9 setConfiguration:v4];
  dials = self->_dials;
  v6 = [v4 colorsWrapper];
  [(NTKExactitudesFaceDialsView *)dials setColorsWrapper:v6];

  v7 = [v4 backgroundOn];
  v8 = 0.0;
  if (v7)
  {
    v8 = 1.0;
  }

  [(NTKExactitudesFaceDialsView *)self->_dials allDialsSetBackgroundStyleTransitionProgress:v8];
  [(NTKExactitudesMiniClockView *)self _applyColorsToHandsViewWithConfiguration:v4];
}

- (void)traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(NTKExactitudesMiniClockView *)self traitCollection];
  v7 = [v6 activeAppearance];
  v8 = [v5 activeAppearance];

  if (v7 != v8)
  {
    v9 = [(NTKExactitudesMiniClockView *)self traitCollection];
    v10 = [v9 activeAppearance];
    v11 = v10 == 0;

    v25 = [(NTKExactitudesMiniClockView *)self configuration];
    v12 = [(NTKExactitudesMiniClockView *)self handsView];
    v13 = [(NTKExactitudesMiniClockView *)self _hourHandInlayColorForConfiguration:v25 enteringAOD:v11];
    v14 = [(NTKExactitudesMiniClockView *)self _hourHandOutlineColorForConfiguration:v25 enteringAOD:v11];
    v15 = [(NTKExactitudesMiniClockView *)self _minuteHandInlayColorForConfiguration:v25 enteringAOD:v11];
    v16 = [(NTKExactitudesMiniClockView *)self _minuteHandOutlineColorForConfiguration:v25 enteringAOD:v11];
    if (v10)
    {
      v17 = v15;
    }

    else
    {
      v17 = +[UIColor blackColor];
    }

    v18 = v17;
    [v12 setHourInlayColor:v13];
    [v12 setMinuteInlayColor:v15];
    v19 = [v12 minuteHandView];
    [v19 setColor:v16];

    v20 = [v12 hourHandView];
    [v20 setColor:v14];

    v21 = [v12 minuteHandView];
    [v21 setHandDotColor:v18];

    if (v10)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = 0.0;
    }

    v23 = [v12 secondHandView];
    [v23 setAlpha:v22];

    if ([v25 backgroundOn])
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 0.0;
    }

    if (!v10)
    {
      v24 = 0.0;
    }

    [(NTKExactitudesFaceDialsView *)self->_dials allDialsSetBackgroundStyleTransitionProgress:v24];
  }
}

- (void)_applyColorsToHandsViewWithConfiguration:(id)a3
{
  v4 = a3;
  v16 = +[UIColor blackColor];
  if ([v4 backgroundOn])
  {
    v5 = 0.85;
  }

  else
  {
    v5 = 0.5;
  }

  v6 = [(NTKExactitudesMiniClockView *)self handsView];
  v7 = [v4 hourHandOutlineColor];
  v8 = [v4 hourHandInlayColor];
  [v6 applyHourHandColor:v7 inlayColor:v8 backdropInlayColor:v16 alpha:v5];
  v9 = [v4 minuteHandOutlineColor];
  v10 = [v4 minuteHandInlayColor];
  [v6 applyMinuteHandColor:v9 inlayColor:v10 backdropInlayColor:v16 alpha:v5];
  v11 = [v4 secondHandColor];
  [v6 applySecondHandColor:v11];
  v12 = [v4 handDotColor];

  v13 = [v6 hourHandView];
  [v13 setHandDotColor:v12];

  v14 = [v6 minuteHandView];
  [v14 setHandDotColor:v12];

  v15 = [v6 secondHandView];
  [v15 setHandDotColor:v12];
}

- (id)_dummyColors
{
  v2 = +[UIColor whiteColor];
  v3 = +[UIColor whiteColor];
  v4 = +[UIColor whiteColor];
  v5 = +[UIColor whiteColor];
  v6 = [[NTKExactitudesFaceDialColorsWrapper alloc] initWithHourColor:v4 minuteColor:v3 secondColor:v2 foregroundColor:v5];

  return v6;
}

- (id)_hourHandInlayColorForConfiguration:(id)a3 enteringAOD:(BOOL)a4
{
  if (a4)
  {
    [a3 inactiveHourHandInlayColor];
  }

  else
  {
    [a3 hourHandInlayColor];
  }
  v4 = ;

  return v4;
}

- (id)_minuteHandInlayColorForConfiguration:(id)a3 enteringAOD:(BOOL)a4
{
  if (a4)
  {
    [a3 inactiveMinuteHandInlayColor];
  }

  else
  {
    [a3 minuteHandInlayColor];
  }
  v4 = ;

  return v4;
}

- (id)_hourHandOutlineColorForConfiguration:(id)a3 enteringAOD:(BOOL)a4
{
  if (a4)
  {
    [a3 inactiveHourHandOutlineColor];
  }

  else
  {
    [a3 hourHandOutlineColor];
  }
  v4 = ;

  return v4;
}

- (id)_minuteHandOutlineColorForConfiguration:(id)a3 enteringAOD:(BOOL)a4
{
  if (a4)
  {
    [a3 inactiveMinuteHandOutlineColor];
  }

  else
  {
    [a3 minuteHandOutlineColor];
  }
  v4 = ;

  return v4;
}

@end