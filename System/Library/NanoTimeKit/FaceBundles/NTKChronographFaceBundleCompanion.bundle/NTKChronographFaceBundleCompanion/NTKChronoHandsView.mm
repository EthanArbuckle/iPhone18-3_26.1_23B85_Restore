@interface NTKChronoHandsView
- (CGPoint)lowerDialCenter;
- (CGPoint)upperDialCenter;
- (double)chronoDuration;
- (double)secondsAnimationFPS;
- (double)upperDuration;
- (id)createSecondHandView;
- (id)createTinyBabyHandViewWithColor:(id)color;
- (id)initForDevice:(id)device;
- (id)tinyBabyHandConfiguration;
- (void)_enumerateChronoHandViews:(id)views;
- (void)_enumerateFlybackChronoHands:(id)hands;
- (void)_enumeratePrimaryChronoHands:(id)hands;
- (void)layoutHandViews;
- (void)setMinuteHandUsesManualTime:(BOOL)time;
- (void)setPalette:(id)palette;
- (void)showChronoMode;
- (void)showTimeMode;
- (void)startNewChronoAnimation;
- (void)updateLapHandsVisibility;
@end

@implementation NTKChronoHandsView

- (id)initForDevice:(id)device
{
  v28.receiver = self;
  v28.super_class = NTKChronoHandsView;
  v3 = [(NTKChronoHandsView *)&v28 initForDevice:device];
  if (v3)
  {
    v4 = +[UIColor systemBlueColor];
    v5 = [v3 createTinyBabyHandViewWithColor:v4];
    v6 = v3[7];
    v3[7] = v5;

    v7 = +[UIColor whiteColor];
    v8 = [v3 createTinyBabyHandViewWithColor:v7];
    v9 = v3[6];
    v3[6] = v8;

    v10 = v3[6];
    hourHandView = [v3 hourHandView];
    [v3 insertSubview:v10 belowSubview:hourHandView];

    [v3 insertSubview:v3[5] belowSubview:v3[6]];
    v27.receiver = v3;
    v27.super_class = NTKChronoHandsView;
    createSecondHandView = [(NTKChronoHandsView *)&v27 createSecondHandView];
    v13 = v3[4];
    v3[4] = createSecondHandView;

    v14 = v3[4];
    minuteHandView = [v3 minuteHandView];
    [v3 insertSubview:v14 aboveSubview:minuteHandView];

    v16 = v3[4];
    v17 = +[UIColor systemOrangeColor];
    [v16 setColor:v17];

    [v3[4] setDropShadowsHidden:1];
    v26.receiver = v3;
    v26.super_class = NTKChronoHandsView;
    createSecondHandView2 = [(NTKChronoHandsView *)&v26 createSecondHandView];
    v19 = v3[5];
    v3[5] = createSecondHandView2;

    v20 = v3[5];
    v21 = +[UIColor systemBlueColor];
    [v20 setColor:v21];

    [v3[5] setDropShadowsHidden:1];
    v22 = v3[5];
    [v3[4] bounds];
    [v22 setBounds:?];
    [v3 insertSubview:v3[5] belowSubview:v3[4]];
    secondHandView = [v3 secondHandView];
    hourHandView2 = [v3 hourHandView];
    [v3 insertSubview:secondHandView belowSubview:hourHandView2];

    v3[2] = 0;
  }

  return v3;
}

- (id)createTinyBabyHandViewWithColor:(id)color
{
  colorCopy = color;
  device = [(NTKChronoHandsView *)self device];
  v6 = [NTKHandView alloc];
  tinyBabyHandConfiguration = [(NTKChronoHandsView *)self tinyBabyHandConfiguration];
  v8 = [v6 initWithConfiguration:tinyBabyHandConfiguration forDevice:device maskedShadow:0];

  [v8 anchorPointFromConfiguration];
  v10 = v9;
  v12 = v11;
  layer = [v8 layer];
  [layer setAnchorPoint:{v10, v12}];

  [v8 setColor:colorCopy];
  [v8 setRadialShadowsHidden:1];
  [v8 setDropShadowsHidden:1];

  return v8;
}

- (id)tinyBabyHandConfiguration
{
  device = [(NTKChronoHandsView *)self device];
  v3 = [CLKUIAnalogHandConfiguration defaultSubdialConfigurationForDevice:device];

  return v3;
}

- (id)createSecondHandView
{
  v3 = +[UIColor systemBlueColor];
  v4 = [(NTKChronoHandsView *)self createTinyBabyHandViewWithColor:v3];

  return v4;
}

- (void)layoutHandViews
{
  v8.receiver = self;
  v8.super_class = NTKChronoHandsView;
  [(NTKChronoHandsView *)&v8 layoutHandViews];
  [(NTKChronoHandsView *)self bounds];
  v4 = v3 * 0.5;
  [(NTKChronoHandsView *)self bounds];
  v6 = v5 * 0.5;
  [(NTKHandView *)self->_chronoSecondHandView setCenter:v4, v5 * 0.5];
  [(NTKHandView *)self->_chronoFlybackSecondHandView setCenter:v4, v6];
  [(NTKHandView *)self->_chronoMinuteHandView setCenter:self->_upperDialCenter.x, self->_upperDialCenter.y];
  [(NTKHandView *)self->_chronoFlybackMinuteHandView setCenter:self->_upperDialCenter.x, self->_upperDialCenter.y];
  secondHandView = [(NTKChronoHandsView *)self secondHandView];
  [secondHandView setCenter:{self->_lowerDialCenter.x, self->_lowerDialCenter.y}];
}

- (void)setMinuteHandUsesManualTime:(BOOL)time
{
  if (self->_minuteHandUsesManualTime != time)
  {
    self->_minuteHandUsesManualTime = time;
    if (self->_isChronoAnimationRunning)
    {
      [(NTKChronoHandsView *)self startNewChronoAnimation];
    }
  }
}

- (void)showTimeMode
{
  [(NTKChronoHandsView *)self stopChronoAnimation];
  [(NTKChronoHandsView *)self updateLapHandsVisibility];

  [(NTKChronoHandsView *)self _enumeratePrimaryChronoHands:&stru_1C7E0];
}

- (void)showChronoMode
{
  [(NTKChronoHandsView *)self updateLapHandsVisibility];
  if (![(NTKChronoHandsView *)self _stopwatchIsRunning])
  {
    [(NTKChronoHandsView *)self _stopwatchCurrentTime];
    v4 = v3;
    [(NTKChronoHandsView *)self _stopwatchCurrentLapTime];
    v6 = v5;
    [(NTKChronoHandsView *)self chronoDuration];
    v8 = v7;
    [(NTKChronoHandsView *)self upperDuration];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_812C;
    v10[3] = &unk_1C808;
    v10[4] = self;
    v10[5] = v4;
    v10[6] = v8;
    v10[7] = v9;
    v10[8] = v6;
    [UIView animateWithDuration:v10 animations:0.25];
  }
}

- (void)startNewChronoAnimation
{
  [(NTKChronoHandsView *)self chronoDuration];
  v4 = v3;
  [(NTKChronoHandsView *)self upperDuration];
  v6 = v5;
  [(NTKChronoHandsView *)self _stopwatchCurrentTime];
  v8 = v7;
  [(NTKChronoHandsView *)self _stopwatchCurrentLapTime];
  v10 = v9;
  v11 = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
  LODWORD(v12) = 2139095040;
  [v11 setRepeatCount:v12];
  v13 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  [v11 setTimingFunction:v13];

  [v11 setRemovedOnCompletion:0];
  [v11 setFillMode:kCAFillModeForwards];
  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_84A4;
  v36 = &unk_1C830;
  v38 = 0x401921FB54442D18;
  v14 = v11;
  v37 = v14;
  v15 = objc_retainBlock(&v33);
  chronoSecondHandView = self->_chronoSecondHandView;
  v17 = v4;
  *&v18 = v17;
  [(NTKChronoHandsView *)self zRotationForTime:v8 withDuration:v18, v33, v34, v35, v36];
  v20 = v19;
  [(NTKChronoHandsView *)self secondsAnimationFPS];
  (v15[2])(v15, chronoSecondHandView, v20, v4, v21);
  if (self->_minuteHandUsesManualTime)
  {
    v23 = v6;
  }

  else
  {
    chronoMinuteHandView = self->_chronoMinuteHandView;
    v23 = v6;
    *&v22 = v23;
    [(NTKChronoHandsView *)self zRotationForTime:v8 withDuration:v22];
    (v15[2])(v15, chronoMinuteHandView, v25, v6, 15.0);
  }

  chronoFlybackSecondHandView = self->_chronoFlybackSecondHandView;
  *&v22 = v4;
  [(NTKChronoHandsView *)self zRotationForTime:v10 withDuration:v22];
  v28 = v27;
  [(NTKChronoHandsView *)self secondsAnimationFPS];
  (v15[2])(v15, chronoFlybackSecondHandView, v28, v4, v29);
  chronoFlybackMinuteHandView = self->_chronoFlybackMinuteHandView;
  *&v31 = v23;
  [(NTKChronoHandsView *)self zRotationForTime:v10 withDuration:v31];
  (v15[2])(v15, chronoFlybackMinuteHandView, v32, v6, 15.0);
  self->_isChronoAnimationRunning = 1;
}

- (void)updateLapHandsVisibility
{
  v3 = [(NTKChronoHandsView *)self _stopwatchIsStopped]|| [(NTKChronoHandsView *)self _stopwatchLapCount]< 1 || [(NTKChronoHandsView *)self dataMode]!= &dword_0 + 1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8764;
  v4[3] = &unk_1C870;
  v5 = v3;
  [(NTKChronoHandsView *)self _enumerateFlybackChronoHands:v4];
}

- (void)setPalette:(id)palette
{
  if (self->_palette != palette)
  {
    self->_palette = palette;
    paletteCopy = palette;
    foregroundColor = [paletteCopy foregroundColor];
    minuteHandView = [(NTKChronoHandsView *)self minuteHandView];
    [minuteHandView setColor:foregroundColor];

    hourHandView = [(NTKChronoHandsView *)self hourHandView];
    [hourHandView setColor:foregroundColor];

    secondHandView = [(NTKChronoHandsView *)self secondHandView];
    [secondHandView setColor:foregroundColor];

    chronoHandColor = [paletteCopy chronoHandColor];
    [(NTKHandView *)self->_chronoSecondHandView setColor:chronoHandColor];
    [(NTKHandView *)self->_chronoMinuteHandView setColor:chronoHandColor];
    showsShadows = [paletteCopy showsShadows];
    minuteHandView2 = [(NTKChronoHandsView *)self minuteHandView];
    [minuteHandView2 setShadowsHidden:showsShadows ^ 1];

    hourHandView2 = [(NTKChronoHandsView *)self hourHandView];
    [hourHandView2 setShadowsHidden:showsShadows ^ 1];

    chronoSecondHandView = [(NTKChronoHandsView *)self chronoSecondHandView];
    [chronoSecondHandView setShadowsHidden:showsShadows ^ 1];

    chronoFlybackSecondHandView = [(NTKChronoHandsView *)self chronoFlybackSecondHandView];
    [chronoFlybackSecondHandView setShadowsHidden:showsShadows ^ 1];

    chronoSecondHandView2 = [(NTKChronoHandsView *)self chronoSecondHandView];
    backgroundColor = [paletteCopy backgroundColor];
    [chronoSecondHandView2 setHandDotColor:backgroundColor];

    chronoFlybackSecondHandView2 = [(NTKChronoHandsView *)self chronoFlybackSecondHandView];
    backgroundColor2 = [paletteCopy backgroundColor];
    [chronoFlybackSecondHandView2 setHandDotColor:backgroundColor2];

    inlayColor = [paletteCopy inlayColor];

    [(NTKChronoHandsView *)self setInlayColor:inlayColor];
  }
}

- (void)_enumerateChronoHandViews:(id)views
{
  viewsCopy = views;
  [(NTKChronoHandsView *)self _enumeratePrimaryChronoHands:viewsCopy];
  [(NTKChronoHandsView *)self _enumerateFlybackChronoHands:viewsCopy];
}

- (void)_enumeratePrimaryChronoHands:(id)hands
{
  v4 = (hands + 16);
  v5 = *(hands + 2);
  handsCopy = hands;
  v5();
  (*v4)(handsCopy, self->_chronoMinuteHandView);
}

- (void)_enumerateFlybackChronoHands:(id)hands
{
  v4 = (hands + 16);
  v5 = *(hands + 2);
  handsCopy = hands;
  v5();
  (*v4)(handsCopy, self->_chronoFlybackMinuteHandView);
}

- (double)chronoDuration
{
  timeScale = self->_timeScale;
  result = 0.0;
  if (timeScale <= 3)
  {
    return dbl_14580[timeScale];
  }

  return result;
}

- (double)upperDuration
{
  timeScale = self->_timeScale;
  result = 0.0;
  if (timeScale <= 3)
  {
    return dbl_145A0[timeScale];
  }

  return result;
}

- (double)secondsAnimationFPS
{
  timeScale = self->_timeScale;
  result = 0.0;
  if (timeScale <= 3)
  {
    return dbl_145C0[timeScale];
  }

  return result;
}

- (CGPoint)upperDialCenter
{
  x = self->_upperDialCenter.x;
  y = self->_upperDialCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lowerDialCenter
{
  x = self->_lowerDialCenter.x;
  y = self->_lowerDialCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end