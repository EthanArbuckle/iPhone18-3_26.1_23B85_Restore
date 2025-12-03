@interface NTKGladiusHandsView
- (NTKGladiusSecondHandLightingDelegate)lightingDelegate;
- (id)createSecondHandView;
- (id)hourHandConfiguration;
- (id)initForDevice:(id)device;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
- (void)_applyInstantaneousSecondHandTransformForDate:(id)date;
- (void)_startNewTimeAnimation;
- (void)_stopTimeAnimation;
- (void)applyInstantaneousSecondHandTransformForAngle:(double)angle;
- (void)dealloc;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKGladiusHandsView

- (id)initForDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NTKGladiusHandsView;
  v3 = [(NTKGladiusHandsView *)&v6 initForDevice:device];
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
  secondHandConfiguration = [(NTKGladiusHandsView *)&v9 secondHandConfiguration];
  device = [(NTKGladiusHandsView *)self device];
  [device screenBounds];
  v6 = v5 * 0.5;
  [NTKGladiusDialView outerEdgeInsetForDevice:device];
  [secondHandConfiguration setHandLength:v6 - v7];
  [secondHandConfiguration setHandWidth:2.0];
  [secondHandConfiguration setDropShadowOpacity:0.0];
  [secondHandConfiguration setRadialShadowOpacity:0.0];

  return secondHandConfiguration;
}

- (id)hourHandConfiguration
{
  v8.receiver = self;
  v8.super_class = NTKGladiusHandsView;
  hourHandConfiguration = [(NTKGladiusHandsView *)&v8 hourHandConfiguration];
  device = [(NTKGladiusHandsView *)self device];
  sub_9838(device, device);
  [hourHandConfiguration setHandLength:v5];

  device2 = [(NTKGladiusHandsView *)self device];
  [hourHandConfiguration setArmLength:{sub_9838(device2, device2)}];

  [hourHandConfiguration setDropShadowOpacity:0.0];
  [hourHandConfiguration setRadialShadowOpacity:0.0];

  return hourHandConfiguration;
}

- (id)minuteHandConfiguration
{
  v8.receiver = self;
  v8.super_class = NTKGladiusHandsView;
  minuteHandConfiguration = [(NTKGladiusHandsView *)&v8 minuteHandConfiguration];
  device = [(NTKGladiusHandsView *)self device];
  sub_9838(device, device);
  [minuteHandConfiguration setHandLength:v5];

  device2 = [(NTKGladiusHandsView *)self device];
  [minuteHandConfiguration setArmLength:{sub_9838(device2, device2)}];

  [minuteHandConfiguration setDropShadowOpacity:0.0];
  [minuteHandConfiguration setRadialShadowOpacity:0.0];

  return minuteHandConfiguration;
}

- (id)createSecondHandView
{
  device = [(NTKGladiusHandsView *)self device];
  secondHandConfiguration = [(NTKGladiusHandsView *)self secondHandConfiguration];
  v5 = [[NTKHandView alloc] initWithConfiguration:secondHandConfiguration forDevice:device maskedShadow:0];
  [secondHandConfiguration anchorPoint];
  v7 = v6;
  v9 = v8;
  layer = [v5 layer];
  [layer setAnchorPoint:{v7, v9}];
  handImageView = [v5 handImageView];
  layer2 = [handImageView layer];

  [layer2 setContentsCenter:{0.0, 0.5, 1.0, 0.0}];
  v17[0] = @"bounds";
  v13 = +[NSNull null];
  v17[1] = @"transform";
  v18[0] = v13;
  v14 = +[NSNull null];
  v18[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  [layer2 setActions:v15];

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
    displayTime = [(NTKGladiusHandsView *)self displayTime];
    secondHandConfiguration = [(NTKGladiusHandsView *)self secondHandConfiguration];
    [secondHandConfiguration handLength];
    v6 = v5;
    v35 = secondHandConfiguration;
    [secondHandConfiguration tailLength];
    v8 = v6 + v7;
    secondHandView = [(NTKGladiusHandsView *)self secondHandView];
    handImageView = [secondHandView handImageView];
    layer = [handImageView layer];

    [layer bounds];
    [layer setBounds:?];
    v12 = [NSMutableArray arrayWithCapacity:240];
    v13 = [NSMutableArray arrayWithCapacity:240];
    v14 = [NSMutableArray arrayWithCapacity:240];
    v15 = 0;
    v16 = CLKUIAnalogHandsDurationForSecondsAnimation;
    v17 = CLKUIAnalogHandsDurationForSecondsAnimation / 240.0;
    v18 = 0.0;
    do
    {
      v19 = [displayTime dateByAddingTimeInterval:v17 * v18];
      calendar = [(NTKGladiusHandsView *)self calendar];
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
    device = [(NTKGladiusHandsView *)self device];
    [(NTKGladiusHandsView *)self _timeAnimationFramesPerSecondForDevice:device];
    [v26 setFrameInterval:1.0 / v28];

    [v26 setValues:v12];
    [v26 setKeyTimes:v14];
    [layer addAnimation:v26 forKey:@"length"];
    v29 = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.y"];
    [v26 duration];
    [v29 setDuration:?];
    [v26 frameInterval];
    [v29 setFrameInterval:?];
    [v29 setValues:v13];
    [v29 setKeyTimes:v14];
    [layer addAnimation:v29 forKey:@"offset"];
    WeakRetained = objc_loadWeakRetained(&self->_lightingDelegate);
    [WeakRetained startSecondHandLightingAnimationAtDate:displayTime];

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
  secondHandView = [(NTKGladiusHandsView *)self secondHandView];
  handImageView = [secondHandView handImageView];
  layer = [handImageView layer];

  animationKeys = [layer animationKeys];
  v7 = [animationKeys count];

  if (v7)
  {
    [layer removeAllAnimations];
    displayTime = [(NTKGladiusHandsView *)self displayTime];
    [(NTKGladiusHandsView *)self _applyInstantaneousSecondHandTransformForDate:displayTime];
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

- (void)_applyInstantaneousSecondHandTransformForDate:(id)date
{
  dateCopy = date;
  calendar = [(NTKGladiusHandsView *)self calendar];
  NTKHourMinuteSecondAnglesForTime();

  [(NTKGladiusHandsView *)self applyInstantaneousSecondHandTransformForAngle:0.0];
}

- (void)applyInstantaneousSecondHandTransformForAngle:(double)angle
{
  [(NTKGladiusStretchySecondHandData *)self->_stretchySecondHandData sampleAtAngle:0 includeBaseRadius:angle];
  v5 = v4;
  secondHandConfiguration = [(NTKGladiusHandsView *)self secondHandConfiguration];
  [secondHandConfiguration handLength];
  [secondHandConfiguration tailLength];
  secondHandView = [(NTKGladiusHandsView *)self secondHandView];
  handImageView = [secondHandView handImageView];
  layer = [handImageView layer];

  [layer bounds];
  [layer setBounds:?];
  CATransform3DMakeTranslation(&v11, 0.0, v5 * -0.5, 0.0);
  v10 = v11;
  [layer setTransform:&v10];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v7.receiver = self;
  v7.super_class = NTKGladiusHandsView;
  [(NTKGladiusHandsView *)&v7 setOverrideDate:dateCopy duration:duration];
  if (duration == 0.0)
  {
    [(NTKGladiusHandsView *)self _applyInstantaneousSecondHandTransformForDate:dateCopy];
  }
}

- (NTKGladiusSecondHandLightingDelegate)lightingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lightingDelegate);

  return WeakRetained;
}

@end