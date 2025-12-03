@interface NTKLilypadFaceView
- (NTKLilypadFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_activeClearColorForCurrentColorMode;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadSnapshotContentViews;
- (void)_startClockTimer;
- (void)_stopClockTimer;
- (void)_timeUpdated:(CLKClockTimerDate *)updated;
- (void)_unloadSnapshotContentViews;
- (void)_updateClearColorAndColorMode;
- (void)_updateLocale;
- (void)_updatePausedState;
- (void)_updateTime;
- (void)cleanupAfterEditing;
- (void)layoutSubviews;
- (void)prepareForEditing;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKLilypadFaceView

- (NTKLilypadFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = NTKLilypadFaceView;
  v5 = [(NTKLilypadFaceView *)&v9 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    v5->_isPaused = 1;
    v5->_tritiumProgress = 1.0;
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"_updateLocale" name:NSCurrentLocaleDidChangeNotification object:0];

    [(NTKLilypadFaceView *)v6 _updateLocale];
  }

  return v6;
}

- (void)_updateLocale
{
  v4 = +[NSLocale currentLocale];
  v3 = CLKLocaleIs24HourMode();
  self->_is24HourMode = v3;
  [(NTKLilypadQuad *)self->_quad setIs24hour:v3];
}

- (void)prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKLilypadFaceView;
  [(NTKLilypadFaceView *)&v3 prepareForEditing];
  [(NTKLilypadFaceView *)self _updatePausedState];
}

- (void)cleanupAfterEditing
{
  v3.receiver = self;
  v3.super_class = NTKLilypadFaceView;
  [(NTKLilypadFaceView *)&v3 cleanupAfterEditing];
  [(NTKLilypadFaceView *)self _updatePausedState];
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKLilypadFaceView;
  [(NTKLilypadFaceView *)&v3 _applyFrozen];
  [(NTKLilypadFaceView *)self _updatePausedState];
}

- (void)_applyDataMode
{
  v5.receiver = self;
  v5.super_class = NTKLilypadFaceView;
  [(NTKLilypadFaceView *)&v5 _applyDataMode];
  dataMode = [(NTKLilypadFaceView *)self dataMode];
  if (dataMode <= 5)
  {
    LODWORD(v4) = dword_8808[dataMode];
    [(NTKLilypadQuad *)self->_quad setMotionSuppressed:v4];
  }

  [(NTKLilypadFaceView *)self _updatePausedState];
}

- (void)_updatePausedState
{
  dataMode = [(NTKLilypadFaceView *)self dataMode];
  editing = [(NTKLilypadFaceView *)self editing];
  v5 = [(NTKLilypadFaceView *)self isFrozen]^ 1;
  v6 = ((dataMode & 0xFFFFFFFFFFFFFFFBLL) == 1) & v5 & NTKIsScreenOn() | editing;
  if (v6)
  {
    if (!self->_isPaused)
    {
      return;
    }

    self->_isPaused = 0;
    [(NTKLilypadFaceView *)self _startClockTimer];
  }

  else
  {
    if (self->_isPaused)
    {
      return;
    }

    self->_isPaused = 1;
    [(NTKLilypadFaceView *)self _stopClockTimer];
  }

  quadView = self->_quadView;

  [(CLKUIMetalQuadView *)quadView setPaused:(v6 & 1) == 0];
}

- (void)_startClockTimer
{
  objc_initWeak(&location, self);
  v3 = +[CLKClockTimer sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_23D0;
  v6[3] = &unk_C420;
  objc_copyWeak(&v7, &location);
  v4 = [v3 startUpdatesWithUpdateFrequency:4 withHandler:v6 identificationLog:&stru_C460];
  clockTimerToken = self->_clockTimerToken;
  self->_clockTimerToken = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_stopClockTimer
{
  v3 = +[CLKClockTimer sharedInstance];
  [v3 stopUpdatesForToken:self->_clockTimerToken];

  clockTimerToken = self->_clockTimerToken;
  self->_clockTimerToken = 0;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v8.receiver = self;
  v8.super_class = NTKLilypadFaceView;
  [(NTKLilypadFaceView *)&v8 setOverrideDate:dateCopy duration:duration];
  overrideDate = self->_overrideDate;
  self->_overrideDate = dateCopy;

  [(NTKLilypadFaceView *)self _updateTime];
}

- (void)_timeUpdated:(CLKClockTimerDate *)updated
{
  p_currentDate = &self->_currentDate;
  objc_storeStrong(&self->_currentDate.now, updated->now);
  v6 = *&updated->hour;
  *&p_currentDate->second = *&updated->second;
  *&p_currentDate->hour = v6;
  [(NTKLilypadFaceView *)self _updateTime];
  now = updated->now;
}

- (void)_updateTime
{
  if (self->_overrideDate)
  {
    CLKClockTimerDateForDate();
    v2 = v33;
    LODWORD(hour) = v34;
    LODWORD(minute) = v36;
    second = v37;
    subsecond = v38;
    goto LABEL_9;
  }

  p_currentDate = &self->_currentDate;
  now = self->_currentDate.now;
  v9 = +[NTKTimeOffsetManager sharedManager];
  v10 = v9;
  if (!now)
  {
    faceDisplayTime = [v9 faceDisplayTime];
    goto LABEL_7;
  }

  [v9 timeOffset];
  v12 = v11;

  if (v12 > 0.0)
  {
    v10 = +[NTKTimeOffsetManager sharedManager];
    faceDisplayTime = [v10 displayTimeForRealTime:p_currentDate->now];
LABEL_7:
    v14 = faceDisplayTime;

    CLKClockTimerDateForDate();
    v2 = v33;
    LODWORD(hour) = v34;
    LODWORD(minute) = v36;
    second = v37;
    subsecond = v38;

    goto LABEL_9;
  }

  v2 = p_currentDate->now;
  hour = p_currentDate->hour;
  minute = p_currentDate->minute;
  second = p_currentDate->second;
  subsecond = p_currentDate->subsecond;
LABEL_9:
  if (second == 59)
  {
    v29 = hour;
    hour = +[NSCalendar currentCalendar];
    v15 = [hour components:128 fromDate:v2];
    [v15 setSecond:0];
    v16 = +[NSCalendar currentCalendar];
    v17 = [v16 nextDateAfterDate:v2 matchingComponents:v15 options:1024];

    CLKClockTimerDateForDate();
    v18 = v33;
    v19 = v34;
    v20 = v36;

    v21 = subsecond;
    v22 = v21;
    LODWORD(hour) = v29;
  }

  else
  {
    v18 = v2;
    v22 = 0.0;
    v20 = minute;
    v19 = hour;
  }

  v23 = pow(v22, 3.0);
  selfCopy2 = self;
  if (self->_is24HourMode)
  {
    v25 = hour;
    v26 = v2;
  }

  else
  {
    v32 = v2;
    CLKClockTimerDateConvertTo12Hour();
    v26 = v33;

    v25 = v34;
    LODWORD(minute) = v36;
    v31 = v18;
    CLKClockTimerDateConvertTo12Hour();
    v18 = 0;
    v33 = 0;

    v19 = v34;
    v20 = v36;
    selfCopy2 = self;
  }

  quad = selfCopy2->_quad;
  v28 = v23 * -2.0 + v22 * v22 * 3.0;
  v33 = __PAIR64__(minute, v25);
  v34 = v19;
  v35 = v20;
  *&v36 = v28;
  [(NTKLilypadQuad *)quad setTime:&v33];
}

- (double)_activeClearColorForCurrentColorMode
{
  *&a2 = 1.0 - *(self + 96);
  *&result = vdupq_lane_s32(*&a2, 0).u64[0];
  return result;
}

- (void)_loadSnapshotContentViews
{
  v32.receiver = self;
  v32.super_class = NTKLilypadFaceView;
  [(NTKLilypadFaceView *)&v32 _loadSnapshotContentViews];
  v3 = +[UIColor blackColor];
  [(NTKLilypadFaceView *)self setBackgroundColor:v3];

  device = [(NTKLilypadFaceView *)self device];
  [device screenBounds];
  v5 = [CLKUIQuadView quadViewWithFrame:@"Lily" identifier:0 options:0 colorSpace:?];
  quadView = self->_quadView;
  self->_quadView = v5;

  [(NTKLilypadFaceView *)self _activeClearColorForCurrentColorMode];
  [(CLKUIMetalQuadView *)self->_quadView setClearColor:v10, v7, v8, v9];
  v11 = [NTKLilypadQuad alloc];
  device2 = [(NTKLilypadFaceView *)self device];
  v13 = [(NTKLilypadQuad *)v11 initWithDevice:device2];
  quad = self->_quad;
  self->_quad = v13;

  [(CLKUIMetalQuadView *)self->_quadView addQuad:self->_quad];
  [(CLKUIMetalQuadView *)self->_quadView setOpaque:1];
  [(NTKLilypadQuad *)self->_quad setIs24hour:self->_is24HourMode];
  contentView = [(NTKLilypadFaceView *)self contentView];
  [contentView addSubview:self->_quadView];

  [(CLKUIMetalQuadView *)self->_quadView setPreferredFramesPerSecond:60];
  [(CLKUIMetalQuadView *)self->_quadView setPaused:1];
  v16 = self->_quad;
  [(NTKLilypadFaceView *)self _activeClearColorForCurrentColorMode];
  [(NTKLilypadQuad *)v16 setColorMode:?];
  v17 = [NTKRoundedCornerOverlayView alloc];
  contentView2 = [(NTKLilypadFaceView *)self contentView];
  [contentView2 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  device3 = [(NTKLilypadFaceView *)self device];
  v28 = [v17 initWithFrame:device3 forDeviceCornerRadius:{v20, v22, v24, v26}];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = v28;

  contentView3 = [(NTKLilypadFaceView *)self contentView];
  [contentView3 addSubview:self->_cornerOverlayView];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self->_quadView, sub_2B84, @"com.apple.nanotimekit.lilypad.screenshot", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  [(NTKLilypadFaceView *)self setNeedsLayout];
}

- (void)_unloadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKLilypadFaceView;
  [(NTKLilypadFaceView *)&v5 _unloadSnapshotContentViews];
  [(CLKUIMetalQuadView *)self->_quadView removeFromSuperview];
  quadView = self->_quadView;
  self->_quadView = 0;

  [(NTKRoundedCornerOverlayView *)self->_cornerOverlayView removeFromSuperview];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = 0;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKLilypadFaceView;
  [(NTKLilypadFaceView *)&v3 layoutSubviews];
  [(NTKLilypadFaceView *)self bounds];
  [(CLKUIMetalQuadView *)self->_quadView setFrame:?];
}

- (void)_updateClearColorAndColorMode
{
  [(NTKLilypadFaceView *)self _activeClearColorForCurrentColorMode];
  v5 = vmulq_n_f32(v3, self->_tritiumProgress);
  [(CLKUIMetalQuadView *)self->_quadView setClearColor:v5.f32[0], v5.f32[1], v5.f32[2], 1.0];
  quad = self->_quad;

  [(NTKLilypadQuad *)quad setColorMode:*v5.i64];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    LODWORD(self->_activeColorMode) = dword_8800[[option backgroundStyle] == 0];

    [(NTKLilypadFaceView *)self _updateClearColorAndColorMode];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    toOptionCopy = toOption;
    v11 = dword_8800[[option backgroundStyle] == 0];
    backgroundStyle = [toOptionCopy backgroundStyle];

    v13 = *&dword_8800[backgroundStyle == 0];
    CLKInterpolateBetweenFloatsUnclipped();
    *&v14 = v14;
    self->_activeColorMode = *&v14;

    [(NTKLilypadFaceView *)self _updateClearColorAndColorMode];
  }
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode < 2)
  {
    return 1.0;
  }

  return result;
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  complicationContainerView = [(NTKLilypadFaceView *)self complicationContainerView];
  [(NTKLilypadFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKLilypadFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [complicationContainerView setAlpha:?];
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  if (mode == 15)
  {
    if (qword_11348 != -1)
    {
      sub_63BC();
    }

    v10 = optionCopy;
    v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 backgroundStyle]);
    v12 = [NSString stringWithFormat:@"%@", v11];

    v13 = [qword_11340 objectForKey:v12];
    if (!v13)
    {
      v14 = [NTKLilypadFaceView alloc];
      device = [(NTKLilypadFaceView *)self device];
      v16 = [(NTKLilypadFaceView *)v14 initWithFaceStyle:44 forDevice:device clientIdentifier:0];

      [(NTKLilypadFaceView *)self bounds];
      [v16 setFrame:?];
      [v16 _loadSnapshotContentViews];
      [v16 setOption:v10 forCustomEditMode:15 slot:0];
      v17 = NTKIdealizedDate();
      [v16 setOverrideDate:v17 duration:0.0];

      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v10 swatchStyle]);
      v19 = v18;
      v21 = v20;
      [(NTKLilypadFaceView *)self bounds];
      v22 = CGRectGetHeight(v29) / v21;
      device2 = [(NTKLilypadFaceView *)self device];
      [device2 screenScale];
      v25 = v22 * v24;

      v13 = [v16[1] snapshotInRect:0.0 scale:0.0 time:{v19, v21, v25, 0.0}];
      [qword_11340 setObject:v13 forKey:v12];
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = NTKLilypadFaceView;
    v13 = [(NTKLilypadFaceView *)&v27 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v13;
}

@end