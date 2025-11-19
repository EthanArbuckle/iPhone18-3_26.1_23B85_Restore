@interface NTKColtanDisplayQuad
- (NTKColtanDisplayQuad)initWithRole:(unint64_t)a3 screenScale:(double)a4;
- (void)_significantTimeChanged;
- (void)_updateRendererHandAngles;
- (void)dealloc;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setOverrideDate:(id)a3 hourRadians:(double)a4 minuteRadians:(double)a5 secondRadians:(double)a6;
- (void)setPalette:(id)a3;
- (void)setupForQuadView:(id)a3;
@end

@implementation NTKColtanDisplayQuad

- (NTKColtanDisplayQuad)initWithRole:(unint64_t)a3 screenScale:(double)a4
{
  v16.receiver = self;
  v16.super_class = NTKColtanDisplayQuad;
  v6 = [(NTKColtanDisplayQuad *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_screenScale = a4;
    v8 = +[CLKUIMetalResourceManager sharedDevice];
    device = v7->_device;
    v7->_device = v8;

    v10 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    calendar = v7->_calendar;
    v7->_calendar = v10;

    v7->_role = a3;
    v7->_opacity = 1.0;
    v7->_quality = 0;
    v12 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    mediaTimingFunction = v7->_mediaTimingFunction;
    v7->_mediaTimingFunction = v12;

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v7 selector:"_significantTimeChanged" name:UIApplicationSignificantTimeChangeNotification object:0];
  }

  return v7;
}

- (void)dealloc
{
  resourceManager = self->_resourceManager;
  if (resourceManager)
  {
    [(NTKColtanResourceManager *)resourceManager removeClient];
    v4 = self->_resourceManager;
    self->_resourceManager = 0;
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];

  v6.receiver = self;
  v6.super_class = NTKColtanDisplayQuad;
  [(NTKColtanDisplayQuad *)&v6 dealloc];
}

- (void)setPalette:(id)a3
{
  v4 = a3;
  v5 = [v4 hourHandInnerColor];
  CLKUIConvertToRGBfFromUIColor();
  *self->_hourHandInnerColor = v6;

  v7 = [v4 hourHandOuterColor];
  CLKUIConvertToRGBfFromUIColor();
  *self->_hourHandOuterColor = v8;

  v9 = [v4 minuteHandInnerColor];
  CLKUIConvertToRGBfFromUIColor();
  *self->_minuteHandInnerColor = v10;

  v11 = [v4 minuteHandOuterColor];
  CLKUIConvertToRGBfFromUIColor();
  *self->_minuteHandOuterColor = v12;

  v13 = [v4 centerGlowColor];
  CLKUIConvertToRGBfFromUIColor();
  *self->_centerGlowColor = v14;

  v15 = [v4 secondHandColor];
  CLKUIConvertToRGBfFromUIColor();
  *self->_secondHandColor = v16;

  v18 = [v4 tickColoration];

  [v18 floatValue];
  self->_tickColoration = v17;
}

- (void)setupForQuadView:(id)a3
{
  v15 = a3;
  [v15 bounds];
  v5 = v4;
  v7 = v6;
  screenScale = self->_screenScale;
  resourceManager = self->_resourceManager;
  if (resourceManager)
  {
    [(NTKColtanResourceManager *)resourceManager removeClient];
    v10 = self->_resourceManager;
    self->_resourceManager = 0;
  }

  v11 = +[NTKColtanResourceManager sharedInstanceWithPixelFormat:](NTKColtanResourceManager, "sharedInstanceWithPixelFormat:", [v15 colorPixelFormat]);
  v12 = self->_resourceManager;
  self->_resourceManager = v11;

  [(NTKColtanResourceManager *)self->_resourceManager addClient];
  v13 = [[NTKColtanRenderer alloc] initWithSize:v5 * screenScale, v7 * screenScale];
  renderer = self->_renderer;
  self->_renderer = v13;

  [(NTKColtanRenderer *)self->_renderer setResourceManager:self->_resourceManager];
  [v15 setPreferredFramesPerSecond:30];
}

- (void)_updateRendererHandAngles
{
  v3 = CACurrentMediaTime();
  endOverrideTime = self->_endOverrideTime;
  overrideDate = self->_overrideDate;
  if (v3 >= endOverrideTime)
  {
    if (!overrideDate)
    {
      v12 = +[NTKDate faceDate];
      calendar = self->_calendar;
      NTKHourMinuteSecondAnglesForTime();

      v7 = 0.0 / 6.2832;
      v8 = v7;
      HIDWORD(v9) = 0;
      *&v9 = v7;
      goto LABEL_9;
    }
  }

  else if (!overrideDate)
  {
    goto LABEL_6;
  }

  [(NTKColtanRenderer *)self->_renderer resetTemporalAccumulation];
  endOverrideTime = self->_endOverrideTime;
LABEL_6:
  v6 = (v3 - self->_startOverrideTime) / (endOverrideTime - self->_startOverrideTime);
  *&v6 = v6;
  if (*&v6 > 1.0)
  {
    *&v6 = 1.0;
  }

  [(CAMediaTimingFunction *)self->_mediaTimingFunction _solveForInput:v6];
  v7 = self->_startSecondAngle + ((self->_endSecondAngle - self->_startSecondAngle) * *&v9);
  v8 = self->_startMinuteAngle + ((self->_endMinuteAngle - self->_startMinuteAngle) * *&v9);
  *&v9 = self->_startHourAngle + ((self->_endHourAngle - self->_startHourAngle) * *&v9);
LABEL_9:
  *&v9 = *&v9 * 6.2832;
  [(NTKColtanRenderer *)self->_renderer setHourAngle:v9];
  *&v10 = v8 * 6.2832;
  [(NTKColtanRenderer *)self->_renderer setMinuteAngle:v10];
  *&v11 = v7 * 6.2832;
  [(NTKColtanRenderer *)self->_renderer setSecondAngle:v11];
}

- (void)setOverrideDate:(id)a3 hourRadians:(double)a4 minuteRadians:(double)a5 secondRadians:(double)a6
{
  v12 = a3;
  if (v12)
  {
    objc_storeStrong(&self->_overrideDate, a3);
    v11 = CACurrentMediaTime();
    self->_startOverrideTime = v11;
    self->_endOverrideTime = v11;
    *&v11 = a6;
    *&v11 = (*&v11 / 6.2832) - floor((*&v11 / 6.2832));
    self->_startSecondAngle = *&v11;
    self->_endSecondAngle = *&v11;
    *&v11 = a5;
    *&v11 = (*&v11 / 6.2832) - floor((*&v11 / 6.2832));
    self->_startMinuteAngle = *&v11;
    self->_endMinuteAngle = *&v11;
    *&v11 = a4;
    *&v11 = (*&v11 / 6.2832) - floor((*&v11 / 6.2832));
    self->_startHourAngle = *&v11;
    self->_endHourAngle = *&v11;
  }

  else
  {
    [(NTKColtanDisplayQuad *)self setOverrideDate:0 duration:0.0];
  }
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7 = a3;
  overrideDate = self->_overrideDate;
  if ((NTKEqualObjects() & 1) == 0)
  {
    v9 = +[NTKDate faceDate];
    v10 = v9;
    v11 = self->_overrideDate;
    if (!v11)
    {
      v11 = v9;
    }

    v12 = v11;
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = [v10 dateByAddingTimeInterval:a4];
    }

    v14 = v13;
    v15 = CACurrentMediaTime();
    self->_startOverrideTime = v15;
    self->_endOverrideTime = v15 + a4;
    objc_storeStrong(&self->_overrideDate, a3);
    calendar = self->_calendar;
    NTKHourMinuteSecondAnglesForTime();
    v17 = (0.0 / 6.2832) - floor((0.0 / 6.2832));
    self->_startSecondAngle = v17;
    self->_startMinuteAngle = v17;
    self->_startHourAngle = v17;
    v18 = self->_calendar;
    NTKHourMinuteSecondAnglesForTime();
    v19 = (0.0 / 6.2832) - floor((0.0 / 6.2832));
    self->_endSecondAngle = v19;
    self->_endMinuteAngle = v19;
    self->_endHourAngle = v19;
    startSecondAngle = self->_startSecondAngle;
    endSecondAngle = self->_endSecondAngle;
    if (vabds_f32(startSecondAngle, endSecondAngle) > 0.5)
    {
      v22 = startSecondAngle <= 0.5;
      v23 = -1.0;
      if (!v22)
      {
        v23 = 1.0;
      }

      self->_endSecondAngle = endSecondAngle + v23;
    }

    startMinuteAngle = self->_startMinuteAngle;
    endMinuteAngle = self->_endMinuteAngle;
    if (vabds_f32(startMinuteAngle, endMinuteAngle) > 0.5)
    {
      v26 = -1.0;
      if (startMinuteAngle > 0.5)
      {
        v26 = 1.0;
      }

      self->_endMinuteAngle = endMinuteAngle + v26;
    }

    startHourAngle = self->_startHourAngle;
    endHourAngle = self->_endHourAngle;
    if (vabds_f32(startHourAngle, endHourAngle) > 0.5)
    {
      v22 = startHourAngle <= 0.5;
      v29 = -1.0;
      if (!v22)
      {
        v29 = 1.0;
      }

      self->_endHourAngle = endHourAngle + v29;
    }
  }
}

- (void)_significantTimeChanged
{
  v3 = +[NSTimeZone systemTimeZone];
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(NSCalendar *)self->_calendar timeZone];
    v8 = [v7 name];
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%@ received significant time change with current timezone: %@", &v14, 0x16u);
  }

  [(NSCalendar *)self->_calendar setTimeZone:v3];
  v9 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [(NSCalendar *)self->_calendar timeZone];
    v13 = [v12 name];
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%@ did set new timezone after significant time change to: %@", &v14, 0x16u);
  }
}

@end