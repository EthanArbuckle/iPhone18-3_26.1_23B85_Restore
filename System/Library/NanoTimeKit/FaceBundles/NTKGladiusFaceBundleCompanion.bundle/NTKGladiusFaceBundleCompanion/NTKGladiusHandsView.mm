@interface NTKGladiusHandsView
- (NTKGladiusSecondHandLightingDelegate)lightingDelegate;
- (id)createSecondHandView;
- (id)hourHandConfiguration;
- (id)initForDevice:(id)a3;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
- (void)_applyInstantaneousSecondHandTransformForDate:(id)a3;
- (void)_startNewTimeAnimation;
- (void)_stopTimeAnimation;
- (void)applyInstantaneousSecondHandTransformForAngle:(double)a3;
- (void)dealloc;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKGladiusHandsView

- (id)initForDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKGladiusHandsView;
  v3 = [(NTKGladiusHandsView *)&v6 initForDevice:a3];
  v4 = v3;
  if (v3)
  {
    [v3 setSecondHandDotDiameter:3.0];
  }

  return v4;
}

- (void)dealloc
{
  if (self->_timerToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    [v3 stopUpdatesForToken:self->_timerToken];
  }

  v4.receiver = self;
  v4.super_class = NTKGladiusHandsView;
  [(NTKGladiusHandsView *)&v4 dealloc];
}

- (id)secondHandConfiguration
{
  v9.receiver = self;
  v9.super_class = NTKGladiusHandsView;
  v3 = [(NTKGladiusHandsView *)&v9 secondHandConfiguration];
  v4 = [(NTKGladiusHandsView *)self device];
  [v4 screenBounds];
  v6 = v5 * 0.5;
  [NTKGladiusDialView outerEdgeInsetForDevice:v4];
  [v3 setHandLength:v6 - v7];
  [v3 setHandWidth:2.0];
  [v3 setDropShadowOpacity:0.0];
  [v3 setRadialShadowOpacity:0.0];

  return v3;
}

- (id)hourHandConfiguration
{
  v8.receiver = self;
  v8.super_class = NTKGladiusHandsView;
  v3 = [(NTKGladiusHandsView *)&v8 hourHandConfiguration];
  v4 = [(NTKGladiusHandsView *)self device];
  sub_9838(v4, v4);
  [v3 setHandLength:v5];

  v6 = [(NTKGladiusHandsView *)self device];
  [v3 setArmLength:{sub_9838(v6, v6)}];

  [v3 setDropShadowOpacity:0.0];
  [v3 setRadialShadowOpacity:0.0];

  return v3;
}

- (id)minuteHandConfiguration
{
  v8.receiver = self;
  v8.super_class = NTKGladiusHandsView;
  v3 = [(NTKGladiusHandsView *)&v8 minuteHandConfiguration];
  v4 = [(NTKGladiusHandsView *)self device];
  sub_9838(v4, v4);
  [v3 setHandLength:v5];

  v6 = [(NTKGladiusHandsView *)self device];
  [v3 setArmLength:{sub_9838(v6, v6)}];

  [v3 setDropShadowOpacity:0.0];
  [v3 setRadialShadowOpacity:0.0];

  return v3;
}

- (id)createSecondHandView
{
  v3 = [(NTKGladiusHandsView *)self device];
  v4 = [(NTKGladiusHandsView *)self secondHandConfiguration];
  v5 = [[NTKHandView alloc] initWithConfiguration:v4 forDevice:v3 maskedShadow:0];
  [v4 anchorPoint];
  v7 = v6;
  v9 = v8;
  v10 = [v5 layer];
  [v10 setAnchorPoint:{v7, v9}];
  v11 = [v5 handImageView];
  v12 = [v11 layer];

  [v12 setContentsCenter:{0.0, 0.5, 1.0, 0.0}];
  v17[0] = @"bounds";
  v13 = +[NSNull null];
  v17[1] = @"transform";
  v18[0] = v13;
  v14 = +[NSNull null];
  v18[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v12 setActions:v15];

  return v5;
}

- (void)_startNewTimeAnimation
{
  v42.receiver = self;
  v42.super_class = NTKGladiusHandsView;
  [(NTKGladiusHandsView *)&v42 _startNewTimeAnimation];
  if ([(NTKGladiusHandsView *)self _canRunTimeAnimation])
  {
    v40 = 0;
    v41 = 0;
    v39 = 0.0;
    v3 = [(NTKGladiusHandsView *)self displayTime];
    v4 = [(NTKGladiusHandsView *)self secondHandConfiguration];
    [v4 handLength];
    v6 = v5;
    v35 = v4;
    [v4 tailLength];
    v8 = v6 + v7;
    v9 = [(NTKGladiusHandsView *)self secondHandView];
    v10 = [v9 handImageView];
    v11 = [v10 layer];

    [v11 bounds];
    [v11 setBounds:?];
    v12 = [NSMutableArray arrayWithCapacity:240];
    v13 = [NSMutableArray arrayWithCapacity:240];
    v14 = [NSMutableArray arrayWithCapacity:240];
    v15 = 0;
    v16 = CLKUIAnalogHandsDurationForSecondsAnimation;
    v17 = CLKUIAnalogHandsDurationForSecondsAnimation / 240.0;
    v18 = 0.0;
    do
    {
      v19 = [v3 dateByAddingTimeInterval:v17 * v18];
      v20 = [(NTKGladiusHandsView *)self calendar];
      NTKHourMinuteSecondAnglesForTime();

      [(NTKGladiusStretchySecondHandData *)self->_stretchySecondHandData sampleAtAngle:0 includeBaseRadius:v39];
      v22 = v21;
      *&v21 = v15 / 240.0;
      v23 = [NSNumber numberWithFloat:v21];
      [v14 addObject:v23];

      v24 = [NSNumber numberWithDouble:v8 + v22];
      [v12 addObject:v24];

      v25 = [NSNumber numberWithDouble:v22 * -0.5];
      [v13 addObject:v25];

      v18 = v18 + 1.0;
      ++v15;
    }

    while (v15 != 241);
    v26 = [CAKeyframeAnimation animationWithKeyPath:@"bounds.size.height"];
    [v26 setDuration:v16];
    v27 = [(NTKGladiusHandsView *)self device];
    [(NTKGladiusHandsView *)self _timeAnimationFramesPerSecondForDevice:v27];
    [v26 setFrameInterval:1.0 / v28];

    [v26 setValues:v12];
    [v26 setKeyTimes:v14];
    [v11 addAnimation:v26 forKey:@"length"];
    v29 = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.y"];
    [v26 duration];
    [v29 setDuration:?];
    [v26 frameInterval];
    [v29 setFrameInterval:?];
    [v29 setValues:v13];
    [v29 setKeyTimes:v14];
    [v11 addAnimation:v29 forKey:@"offset"];
    WeakRetained = objc_loadWeakRetained(&self->_lightingDelegate);
    [WeakRetained startSecondHandLightingAnimationAtDate:v3];

    if (self->_timerToken)
    {
      v31 = +[CLKClockTimer sharedInstance];
      [v31 stopUpdatesForToken:self->_timerToken];
    }

    objc_initWeak(&location, self);
    v32 = +[CLKClockTimer sharedInstance];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_93B8;
    v36[3] = &unk_209E0;
    objc_copyWeak(&v37, &location);
    v33 = [v32 startUpdatesWithUpdateFrequency:2 withHandler:v36 identificationLog:&stru_20A00];
    timerToken = self->_timerToken;
    self->_timerToken = v33;

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }
}

- (void)_stopTimeAnimation
{
  v12.receiver = self;
  v12.super_class = NTKGladiusHandsView;
  [(NTKGladiusHandsView *)&v12 _stopTimeAnimation];
  v3 = [(NTKGladiusHandsView *)self secondHandView];
  v4 = [v3 handImageView];
  v5 = [v4 layer];

  v6 = [v5 animationKeys];
  v7 = [v6 count];

  if (v7)
  {
    [v5 removeAllAnimations];
    v8 = [(NTKGladiusHandsView *)self displayTime];
    [(NTKGladiusHandsView *)self _applyInstantaneousSecondHandTransformForDate:v8];
    WeakRetained = objc_loadWeakRetained(&self->_lightingDelegate);
    [WeakRetained stopSecondHandLightingAnimation];

    if (self->_timerToken)
    {
      v10 = +[CLKClockTimer sharedInstance];
      [v10 stopUpdatesForToken:self->_timerToken];

      timerToken = self->_timerToken;
      self->_timerToken = 0;
    }
  }
}

- (void)_applyInstantaneousSecondHandTransformForDate:(id)a3
{
  v4 = a3;
  v5 = [(NTKGladiusHandsView *)self calendar];
  NTKHourMinuteSecondAnglesForTime();

  [(NTKGladiusHandsView *)self applyInstantaneousSecondHandTransformForAngle:0.0];
}

- (void)applyInstantaneousSecondHandTransformForAngle:(double)a3
{
  [(NTKGladiusStretchySecondHandData *)self->_stretchySecondHandData sampleAtAngle:0 includeBaseRadius:a3];
  v5 = v4;
  v6 = [(NTKGladiusHandsView *)self secondHandConfiguration];
  [v6 handLength];
  [v6 tailLength];
  v7 = [(NTKGladiusHandsView *)self secondHandView];
  v8 = [v7 handImageView];
  v9 = [v8 layer];

  [v9 bounds];
  [v9 setBounds:?];
  CATransform3DMakeTranslation(&v11, 0.0, v5 * -0.5, 0.0);
  v10 = v11;
  [v9 setTransform:&v10];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7.receiver = self;
  v7.super_class = NTKGladiusHandsView;
  [(NTKGladiusHandsView *)&v7 setOverrideDate:v6 duration:a4];
  if (a4 == 0.0)
  {
    [(NTKGladiusHandsView *)self _applyInstantaneousSecondHandTransformForDate:v6];
  }
}

- (NTKGladiusSecondHandLightingDelegate)lightingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lightingDelegate);

  return WeakRetained;
}

@end