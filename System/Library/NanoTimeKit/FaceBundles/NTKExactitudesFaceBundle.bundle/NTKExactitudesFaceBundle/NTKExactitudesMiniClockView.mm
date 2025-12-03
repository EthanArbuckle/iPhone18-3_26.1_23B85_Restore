@interface NTKExactitudesMiniClockView
- (NTKExactitudesMiniClockView)initWithDevice:(id)device clockTimer:(id)timer;
- (id)_dummyColors;
- (id)_hourHandInlayColorForConfiguration:(id)configuration enteringAOD:(BOOL)d;
- (id)_hourHandOutlineColorForConfiguration:(id)configuration enteringAOD:(BOOL)d;
- (id)_minuteHandInlayColorForConfiguration:(id)configuration enteringAOD:(BOOL)d;
- (id)_minuteHandOutlineColorForConfiguration:(id)configuration enteringAOD:(BOOL)d;
- (void)_applyColorsToHandsViewWithConfiguration:(id)configuration;
- (void)layoutSubviews;
- (void)setConfiguration:(id)configuration;
- (void)traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
@end

@implementation NTKExactitudesMiniClockView

- (NTKExactitudesMiniClockView)initWithDevice:(id)device clockTimer:(id)timer
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NTKExactitudesMiniClockView;
  v7 = [(NTKExactitudesMiniClockView *)&v14 initWithDevice:deviceCopy clockTimer:timer];
  v8 = v7;
  if (v7)
  {
    _dummyColors = [(NTKExactitudesMiniClockView *)v7 _dummyColors];
    v10 = [NTKExactitudesFaceDialsView alloc];
    [(NTKExactitudesMiniClockView *)v8 bounds];
    v11 = [(NTKExactitudesFaceDialsView *)v10 initForMiniClockWithFrame:deviceCopy device:_dummyColors colorsWrapper:?];
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

- (void)setConfiguration:(id)configuration
{
  v9.receiver = self;
  v9.super_class = NTKExactitudesMiniClockView;
  configurationCopy = configuration;
  [(NTKExactitudesMiniClockView *)&v9 setConfiguration:configurationCopy];
  dials = self->_dials;
  colorsWrapper = [configurationCopy colorsWrapper];
  [(NTKExactitudesFaceDialsView *)dials setColorsWrapper:colorsWrapper];

  backgroundOn = [configurationCopy backgroundOn];
  v8 = 0.0;
  if (backgroundOn)
  {
    v8 = 1.0;
  }

  [(NTKExactitudesFaceDialsView *)self->_dials allDialsSetBackgroundStyleTransitionProgress:v8];
  [(NTKExactitudesMiniClockView *)self _applyColorsToHandsViewWithConfiguration:configurationCopy];
}

- (void)traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(NTKExactitudesMiniClockView *)self traitCollection];
  activeAppearance = [traitCollection activeAppearance];
  activeAppearance2 = [collectionCopy activeAppearance];

  if (activeAppearance != activeAppearance2)
  {
    traitCollection2 = [(NTKExactitudesMiniClockView *)self traitCollection];
    activeAppearance3 = [traitCollection2 activeAppearance];
    v11 = activeAppearance3 == 0;

    configuration = [(NTKExactitudesMiniClockView *)self configuration];
    handsView = [(NTKExactitudesMiniClockView *)self handsView];
    v13 = [(NTKExactitudesMiniClockView *)self _hourHandInlayColorForConfiguration:configuration enteringAOD:v11];
    v14 = [(NTKExactitudesMiniClockView *)self _hourHandOutlineColorForConfiguration:configuration enteringAOD:v11];
    v15 = [(NTKExactitudesMiniClockView *)self _minuteHandInlayColorForConfiguration:configuration enteringAOD:v11];
    v16 = [(NTKExactitudesMiniClockView *)self _minuteHandOutlineColorForConfiguration:configuration enteringAOD:v11];
    if (activeAppearance3)
    {
      v17 = v15;
    }

    else
    {
      v17 = +[UIColor blackColor];
    }

    v18 = v17;
    [handsView setHourInlayColor:v13];
    [handsView setMinuteInlayColor:v15];
    minuteHandView = [handsView minuteHandView];
    [minuteHandView setColor:v16];

    hourHandView = [handsView hourHandView];
    [hourHandView setColor:v14];

    minuteHandView2 = [handsView minuteHandView];
    [minuteHandView2 setHandDotColor:v18];

    if (activeAppearance3)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = 0.0;
    }

    secondHandView = [handsView secondHandView];
    [secondHandView setAlpha:v22];

    if ([configuration backgroundOn])
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 0.0;
    }

    if (!activeAppearance3)
    {
      v24 = 0.0;
    }

    [(NTKExactitudesFaceDialsView *)self->_dials allDialsSetBackgroundStyleTransitionProgress:v24];
  }
}

- (void)_applyColorsToHandsViewWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v16 = +[UIColor blackColor];
  if ([configurationCopy backgroundOn])
  {
    v5 = 0.85;
  }

  else
  {
    v5 = 0.5;
  }

  handsView = [(NTKExactitudesMiniClockView *)self handsView];
  hourHandOutlineColor = [configurationCopy hourHandOutlineColor];
  hourHandInlayColor = [configurationCopy hourHandInlayColor];
  [handsView applyHourHandColor:hourHandOutlineColor inlayColor:hourHandInlayColor backdropInlayColor:v16 alpha:v5];
  minuteHandOutlineColor = [configurationCopy minuteHandOutlineColor];
  minuteHandInlayColor = [configurationCopy minuteHandInlayColor];
  [handsView applyMinuteHandColor:minuteHandOutlineColor inlayColor:minuteHandInlayColor backdropInlayColor:v16 alpha:v5];
  secondHandColor = [configurationCopy secondHandColor];
  [handsView applySecondHandColor:secondHandColor];
  handDotColor = [configurationCopy handDotColor];

  hourHandView = [handsView hourHandView];
  [hourHandView setHandDotColor:handDotColor];

  minuteHandView = [handsView minuteHandView];
  [minuteHandView setHandDotColor:handDotColor];

  secondHandView = [handsView secondHandView];
  [secondHandView setHandDotColor:handDotColor];
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

- (id)_hourHandInlayColorForConfiguration:(id)configuration enteringAOD:(BOOL)d
{
  if (d)
  {
    [configuration inactiveHourHandInlayColor];
  }

  else
  {
    [configuration hourHandInlayColor];
  }
  v4 = ;

  return v4;
}

- (id)_minuteHandInlayColorForConfiguration:(id)configuration enteringAOD:(BOOL)d
{
  if (d)
  {
    [configuration inactiveMinuteHandInlayColor];
  }

  else
  {
    [configuration minuteHandInlayColor];
  }
  v4 = ;

  return v4;
}

- (id)_hourHandOutlineColorForConfiguration:(id)configuration enteringAOD:(BOOL)d
{
  if (d)
  {
    [configuration inactiveHourHandOutlineColor];
  }

  else
  {
    [configuration hourHandOutlineColor];
  }
  v4 = ;

  return v4;
}

- (id)_minuteHandOutlineColorForConfiguration:(id)configuration enteringAOD:(BOOL)d
{
  if (d)
  {
    [configuration inactiveMinuteHandOutlineColor];
  }

  else
  {
    [configuration minuteHandOutlineColor];
  }
  v4 = ;

  return v4;
}

@end