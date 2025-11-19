@interface NTKChronoHandsView
- (CGPoint)lowerDialCenter;
- (CGPoint)upperDialCenter;
- (double)chronoDuration;
- (double)secondsAnimationFPS;
- (double)upperDuration;
- (id)createSecondHandView;
- (id)createTinyBabyHandViewWithColor:(id)a3;
- (id)initForDevice:(id)a3;
- (id)tinyBabyHandConfiguration;
- (void)_enumerateChronoHandViews:(id)a3;
- (void)_enumerateFlybackChronoHands:(id)a3;
- (void)_enumeratePrimaryChronoHands:(id)a3;
- (void)layoutHandViews;
- (void)setMinuteHandUsesManualTime:(BOOL)a3;
- (void)setPalette:(id)a3;
- (void)showChronoMode;
- (void)showTimeMode;
- (void)startNewChronoAnimation;
- (void)updateLapHandsVisibility;
@end

@implementation NTKChronoHandsView

- (id)initForDevice:(id)a3
{
  v28.receiver = self;
  v28.super_class = NTKChronoHandsView;
  v3 = [(NTKChronoHandsView *)&v28 initForDevice:a3];
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
    v11 = [v3 hourHandView];
    [v3 insertSubview:v10 belowSubview:v11];

    [v3 insertSubview:v3[5] belowSubview:v3[6]];
    v27.receiver = v3;
    v27.super_class = NTKChronoHandsView;
    v12 = [(NTKChronoHandsView *)&v27 createSecondHandView];
    v13 = v3[4];
    v3[4] = v12;

    v14 = v3[4];
    v15 = [v3 minuteHandView];
    [v3 insertSubview:v14 aboveSubview:v15];

    v16 = v3[4];
    v17 = +[UIColor systemOrangeColor];
    [v16 setColor:v17];

    [v3[4] setDropShadowsHidden:1];
    v26.receiver = v3;
    v26.super_class = NTKChronoHandsView;
    v18 = [(NTKChronoHandsView *)&v26 createSecondHandView];
    v19 = v3[5];
    v3[5] = v18;

    v20 = v3[5];
    v21 = +[UIColor systemBlueColor];
    [v20 setColor:v21];

    [v3[5] setDropShadowsHidden:1];
    v22 = v3[5];
    [v3[4] bounds];
    [v22 setBounds:?];
    [v3 insertSubview:v3[5] belowSubview:v3[4]];
    v23 = [v3 secondHandView];
    v24 = [v3 hourHandView];
    [v3 insertSubview:v23 belowSubview:v24];

    v3[2] = 0;
  }

  return v3;
}

- (id)createTinyBabyHandViewWithColor:(id)a3
{
  v4 = a3;
  v5 = [(NTKChronoHandsView *)self device];
  v6 = [NTKHandView alloc];
  v7 = [(NTKChronoHandsView *)self tinyBabyHandConfiguration];
  v8 = [v6 initWithConfiguration:v7 forDevice:v5 maskedShadow:0];

  [v8 anchorPointFromConfiguration];
  v10 = v9;
  v12 = v11;
  v13 = [v8 layer];
  [v13 setAnchorPoint:{v10, v12}];

  [v8 setColor:v4];
  [v8 setRadialShadowsHidden:1];
  [v8 setDropShadowsHidden:1];

  return v8;
}

- (id)tinyBabyHandConfiguration
{
  v2 = [(NTKChronoHandsView *)self device];
  v3 = [CLKUIAnalogHandConfiguration defaultSubdialConfigurationForDevice:v2];

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
  v7 = [(NTKChronoHandsView *)self secondHandView];
  [v7 setCenter:{self->_lowerDialCenter.x, self->_lowerDialCenter.y}];
}

- (void)setMinuteHandUsesManualTime:(BOOL)a3
{
  if (self->_minuteHandUsesManualTime != a3)
  {
    self->_minuteHandUsesManualTime = a3;
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

- (void)setPalette:(id)a3
{
  if (self->_palette != a3)
  {
    self->_palette = a3;
    v5 = a3;
    v20 = [v5 foregroundColor];
    v6 = [(NTKChronoHandsView *)self minuteHandView];
    [v6 setColor:v20];

    v7 = [(NTKChronoHandsView *)self hourHandView];
    [v7 setColor:v20];

    v8 = [(NTKChronoHandsView *)self secondHandView];
    [v8 setColor:v20];

    v9 = [v5 chronoHandColor];
    [(NTKHandView *)self->_chronoSecondHandView setColor:v9];
    [(NTKHandView *)self->_chronoMinuteHandView setColor:v9];
    v10 = [v5 showsShadows];
    v11 = [(NTKChronoHandsView *)self minuteHandView];
    [v11 setShadowsHidden:v10 ^ 1];

    v12 = [(NTKChronoHandsView *)self hourHandView];
    [v12 setShadowsHidden:v10 ^ 1];

    v13 = [(NTKChronoHandsView *)self chronoSecondHandView];
    [v13 setShadowsHidden:v10 ^ 1];

    v14 = [(NTKChronoHandsView *)self chronoFlybackSecondHandView];
    [v14 setShadowsHidden:v10 ^ 1];

    v15 = [(NTKChronoHandsView *)self chronoSecondHandView];
    v16 = [v5 backgroundColor];
    [v15 setHandDotColor:v16];

    v17 = [(NTKChronoHandsView *)self chronoFlybackSecondHandView];
    v18 = [v5 backgroundColor];
    [v17 setHandDotColor:v18];

    v19 = [v5 inlayColor];

    [(NTKChronoHandsView *)self setInlayColor:v19];
  }
}

- (void)_enumerateChronoHandViews:(id)a3
{
  v4 = a3;
  [(NTKChronoHandsView *)self _enumeratePrimaryChronoHands:v4];
  [(NTKChronoHandsView *)self _enumerateFlybackChronoHands:v4];
}

- (void)_enumeratePrimaryChronoHands:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_chronoMinuteHandView);
}

- (void)_enumerateFlybackChronoHands:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_chronoFlybackMinuteHandView);
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