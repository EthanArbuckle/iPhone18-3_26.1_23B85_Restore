@interface NTKBellonaFaceView
- (CGRect)_lowerComplicationFrame;
- (double)_horizontalPaddingForStatusBar;
- (double)_lowerComplicationVerticalOffset;
- (double)_numeralsViewAlphaForEditMode:(int64_t)mode;
- (double)_timeViewAlphaForEditMode:(int64_t)mode;
- (double)_verticalPaddingForStatusBar;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_handleNotification;
- (void)_handleTimeUpdate:(CLKClockTimerDate *)update;
- (void)_loadLayoutRules;
- (void)_loadLogoImageView;
- (void)_loadSnapshotContentViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_setStatusBarIconShadowNeeded:(BOOL)needed;
- (void)_startMinuteUpdate;
- (void)_startSecondUpdate;
- (void)_startSubsecondUpdate;
- (void)_stopTimerUpdate;
- (void)_unloadLogoImageView;
- (void)_unloadSnapshotContentViews;
- (void)_updateAlphasForHourChangeWithNow:(CLKClockTimerDate *)now;
- (void)_updateBackgroundColorWithPalette:(id)palette;
- (void)_updateComplicationColorForPalette:(id)palette slot:(id)slot view:(id)view;
- (void)_updateDateComplicationColorsWithPalette:(id)palette forView:(id)view;
- (void)_updateFaceViewForDateComplicationVisibility;
- (void)_updateHour;
- (void)_updateViewColorsWithPalette:(id)palette;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKBellonaFaceView

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKBellonaColorPalette);

  return v2;
}

- (void)_loadSnapshotContentViews
{
  v12.receiver = self;
  v12.super_class = NTKBellonaFaceView;
  [(NTKBellonaFaceView *)&v12 _loadSnapshotContentViews];
  if (!self->_numeralsView)
  {
    v3 = [NTKBellonaNumeralsView alloc];
    device = [(NTKBellonaFaceView *)self device];
    v5 = [(NTKBellonaNumeralsView *)v3 initWithDevice:device];
    numeralsView = self->_numeralsView;
    self->_numeralsView = v5;

    contentView = [(NTKBellonaFaceView *)self contentView];
    [contentView addSubview:self->_numeralsView];
  }

  [(NTKBellonaFaceView *)self _updateFaceViewForDateComplicationVisibility];
  [(NTKBellonaFaceView *)self _loadLogoImageView];
  timeView = [(NTKBellonaFaceView *)self timeView];
  v9 = +[UIColor whiteColor];
  v10 = +[UIColor blackColor];
  [timeView applyHourMinuteHandsStrokeColor:v9 fillColor:v10];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_handleNotification" name:UIApplicationSignificantTimeChangeNotification object:0];
  [v11 addObserver:self selector:"_handleNotification" name:NSCalendarDayChangedNotification object:0];
  [(NTKBellonaFaceView *)self _updateHour];
}

- (void)_unloadSnapshotContentViews
{
  [(NTKBellonaFaceView *)self _unloadLogoImageView];
  v4.receiver = self;
  v4.super_class = NTKBellonaFaceView;
  [(NTKBellonaFaceView *)&v4 _unloadSnapshotContentViews];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];
  [v3 removeObserver:self name:NSCalendarDayChangedNotification object:0];
  [(NTKBellonaFaceView *)self _stopTimerUpdate];
}

- (void)_reorderSwitcherSnapshotView
{
  switcherSnapshotView = [(NTKBellonaFaceView *)self switcherSnapshotView];

  if (switcherSnapshotView)
  {
    switcherSnapshotView2 = [(NTKBellonaFaceView *)self switcherSnapshotView];
    [(NTKBellonaFaceView *)self bringSubviewToFront:switcherSnapshotView2];
  }
}

- (void)_applyDataMode
{
  v5.receiver = self;
  v5.super_class = NTKBellonaFaceView;
  [(NTKBellonaFaceView *)&v5 _applyDataMode];
  dataMode = [(NTKBellonaFaceView *)self dataMode];
  if ((dataMode - 2) < 4 || dataMode == 0)
  {
    [(NTKBellonaFaceView *)self _stopTimerUpdate];
  }

  else if (dataMode == &dword_0 + 1)
  {
    [(NTKBellonaFaceView *)self _updateHour];
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = NTKBellonaFaceView;
  [(NTKBellonaFaceView *)&v9 setOverrideDate:dateCopy duration:duration];
  if (![(NSDate *)self->_overrideDate isEqualToDate:dateCopy])
  {
    objc_storeStrong(&self->_overrideDate, date);
    if (self->_overrideDate)
    {
      CLKClockTimerDateForDate();
      [(NTKBellonaFaceView *)self _updateAlphasForHourChangeWithNow:v8];
    }

    else
    {
      [(NTKBellonaFaceView *)self _updateHour];
    }
  }
}

- (void)_handleNotification
{
  if (+[NSThread isMainThread])
  {

    [(NTKBellonaFaceView *)self _updateHour];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_17E94;
    block[3] = &unk_44E50;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_updateHour
{
  currentDisplayDate = [(NTKBellonaFaceView *)self currentDisplayDate];
  if (currentDisplayDate)
  {
    CLKClockTimerDateForDate();
  }

  else
  {
    CLKClockTimerDateForNow();
  }

  v12 = v10;
  v13 = v11;
  v4 = v9;
  v5 = v4;
  v6 = v4;
  v7 = v10;
  v8 = v11;
  if (self)
  {
    [(NTKBellonaFaceView *)self _handleTimeUpdate:&v6];
  }

  else
  {
  }
}

- (void)_loadLogoImageView
{
  v8 = [NTKBellonaFaceBundle imageWithName:@"BellonaLogo"];
  v3 = [[UIImageView alloc] initWithImage:v8];
  logoImageView = self->_logoImageView;
  self->_logoImageView = v3;

  palette = [(NTKBellonaFaceView *)self palette];
  beige = [palette beige];
  [(UIImageView *)self->_logoImageView setTintColor:beige];

  contentView = [(NTKBellonaFaceView *)self contentView];
  [contentView addSubview:self->_logoImageView];
}

- (void)_unloadLogoImageView
{
  [(UIImageView *)self->_logoImageView removeFromSuperview];
  logoImageView = self->_logoImageView;
  self->_logoImageView = 0;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = NTKBellonaFaceView;
  [(NTKBellonaFaceView *)&v16 layoutSubviews];
  [(NTKBellonaFaceView *)self _updateFaceViewForDateComplicationVisibility];
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  device = [(NTKBellonaFaceView *)self device];
  sub_19EE4(device, &v7);

  v4 = *(&v8 + 1);
  v5 = *&v9;
  [(NTKBellonaFaceView *)self bounds];
  v6 = (CGRectGetMidX(v17) - v4) * 0.5;
  [(NTKBellonaFaceView *)self bounds];
  [(UIImageView *)self->_logoImageView setFrame:v6, (CGRectGetMidY(v18) - v5) * 0.5, *(&v7 + 1), *&v8];
}

- (void)_updateViewColorsWithPalette:(id)palette
{
  paletteCopy = palette;
  timeView = [(NTKBellonaFaceView *)self timeView];
  secondHandView = [timeView secondHandView];
  secondHandColor = [paletteCopy secondHandColor];
  [secondHandView setColor:secondHandColor];

  timeView2 = [(NTKBellonaFaceView *)self timeView];
  hourHandView = [timeView2 hourHandView];
  handStroke = [paletteCopy handStroke];
  [hourHandView setColor:handStroke];

  timeView3 = [(NTKBellonaFaceView *)self timeView];
  minuteHandView = [timeView3 minuteHandView];
  handStroke2 = [paletteCopy handStroke];
  [minuteHandView setColor:handStroke2];

  timeView4 = [(NTKBellonaFaceView *)self timeView];
  handInlay = [paletteCopy handInlay];
  [timeView4 setInlayColor:handInlay];

  timeView5 = [(NTKBellonaFaceView *)self timeView];
  minuteHandView2 = [timeView5 minuteHandView];
  minuteHandDot = [paletteCopy minuteHandDot];
  [minuteHandView2 setHandDotColor:minuteHandDot];

  [(NTKBellonaNumeralsView *)self->_numeralsView updateDigitsWithPalette:paletteCopy];
  beige = [paletteCopy beige];

  [(UIImageView *)self->_logoImageView setTintColor:beige];
}

- (void)_updateBackgroundColorWithPalette:(id)palette
{
  numeralsView = self->_numeralsView;
  paletteCopy = palette;
  [(NTKBellonaNumeralsView *)numeralsView updateBackgroundWithPalette:paletteCopy];
  background = [paletteCopy background];

  [(NTKBellonaNumeralsView *)self->_numeralsView alpha];
  if (v6 >= 1.0)
  {
    [(NTKBellonaFaceView *)self setComplicationBackgroundColor:background];
  }

  else
  {
    v7 = +[UIColor blackColor];
    v8 = CLKInterpolateBetweenColors();
    [(NTKBellonaFaceView *)self setComplicationBackgroundColor:v8];
  }

  [(NTKBellonaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&stru_450D0];
}

- (void)_updateComplicationColorForPalette:(id)palette slot:(id)slot view:(id)view
{
  paletteCopy = palette;
  slotCopy = slot;
  viewCopy = view;
  if (NTKComplicationSlotBottomCenter == slotCopy)
  {
    beige = [paletteCopy beige];
    [(NTKBellonaFaceView *)self setComplicationColor:beige];
    [(NTKBellonaFaceView *)self setInterpolatedComplicationColor:beige];
    complicationSecondaryColor = [paletteCopy complicationSecondaryColor];
    [(NTKBellonaFaceView *)self setAlternateComplicationColor:complicationSecondaryColor];

    v12 = viewCopy;
    [v12 updateMonochromeColor];
    v13 = +[UIColor clearColor];
    [v12 setPlatterColor:v13];
  }

  else if (NTKComplicationSlotDate == slotCopy)
  {
    [(NTKBellonaFaceView *)self _updateDateComplicationColorsWithPalette:paletteCopy forView:viewCopy];
  }
}

- (void)_updateDateComplicationColorsWithPalette:(id)palette forView:(id)view
{
  viewCopy = view;
  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKZeudleComplicationDisplay])
  {
    v5 = viewCopy;
    palette = [(NTKBellonaFaceView *)self palette];
    [v5 applyPalette:palette];
  }
}

- (void)_configureForEditMode:(int64_t)mode
{
  [(NTKBellonaFaceView *)self _timeViewAlphaForEditMode:?];
  v6 = v5;
  [(NTKBellonaFaceView *)self _numeralsViewAlphaForEditMode:mode];
  v8 = v7;
  timeView = [(NTKBellonaFaceView *)self timeView];
  [timeView setAlpha:v6];

  [(NTKBellonaNumeralsView *)self->_numeralsView setAlpha:v8];
  palette = [(NTKBellonaFaceView *)self palette];
  [(NTKBellonaFaceView *)self _updateBackgroundColorWithPalette:palette];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKBellonaFaceView *)self _timeViewAlphaForEditMode:?];
  [(NTKBellonaFaceView *)self _timeViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  [(NTKBellonaFaceView *)self _numeralsViewAlphaForEditMode:mode];
  [(NTKBellonaFaceView *)self _numeralsViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v11 = v10;
  timeView = [(NTKBellonaFaceView *)self timeView];
  [timeView setAlpha:v9];

  [(NTKBellonaNumeralsView *)self->_numeralsView setAlpha:v11];
  palette = [(NTKBellonaFaceView *)self palette];
  [(NTKBellonaFaceView *)self _updateBackgroundColorWithPalette:palette];
}

- (double)_timeViewAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_numeralsViewAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (!mode)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    self->_breathingFraction = fraction;
    [(NTKBellonaFaceView *)self _applyBreathingAndRubberbanding:10];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    self->_rubberbandingFraction = fraction;
    [(NTKBellonaFaceView *)self _applyBreathingAndRubberbanding:mode];
    NTKAlphaForRubberBandingFraction();

    [(NTKBellonaFaceView *)self setAlpha:?];
  }
}

- (void)_applyBreathingAndRubberbanding
{
  NTKLargeElementScaleForBreathingFraction();
  v4 = v3;
  NTKScaleForRubberBandingFraction();
  memset(&v7, 0, sizeof(v7));
  CGAffineTransformMakeScale(&v7, v4 * v5, v4 * v5);
  v6 = v7;
  [(NTKBellonaFaceView *)self setTransform:&v6];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v14[11] = v5;
    v14[12] = v6;
    v8 = [(NTKBellonaFaceView *)self timeView:option];
    secondHandView = [v8 secondHandView];
    palette = [(NTKBellonaFaceView *)self palette];
    secondHandColor = [palette secondHandColor];
    [secondHandView setColor:secondHandColor];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_18A3C;
    v14[3] = &unk_450F8;
    v14[4] = self;
    [(NTKBellonaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v14];
    palette2 = [(NTKBellonaFaceView *)self palette];
    [(NTKBellonaFaceView *)self _updateViewColorsWithPalette:palette2];

    palette3 = [(NTKBellonaFaceView *)self palette];
    [(NTKBellonaFaceView *)self _updateBackgroundColorWithPalette:palette3];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v12[7] = v7;
    v12[8] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_18C50;
    v12[3] = &unk_450F8;
    v12[4] = self;
    [(NTKBellonaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v12, toOption, mode, slot];
    interpolatedColorPalette = [(NTKBellonaFaceView *)self interpolatedColorPalette];
    [(NTKBellonaFaceView *)self _updateViewColorsWithPalette:interpolatedColorPalette];

    interpolatedColorPalette2 = [(NTKBellonaFaceView *)self interpolatedColorPalette];
    [(NTKBellonaFaceView *)self _updateBackgroundColorWithPalette:interpolatedColorPalette2];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot
{
  v6.receiver = self;
  v6.super_class = NTKBellonaFaceView;
  [(NTKBellonaFaceView *)&v6 _applyTransitionFraction:complication fromComplication:toComplication toComplication:slot slot:fraction];
}

- (double)_lowerComplicationVerticalOffset
{
  device = [(NTKBellonaFaceView *)self device];
  sub_19EE4(device, v5);
  v3 = v6;

  return v3;
}

- (CGRect)_lowerComplicationFrame
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NTKBellonaFaceView *)self device:0];
  sub_19EE4(v3, &v13);

  [(NTKBellonaFaceView *)self _lowerComplicationVerticalOffset];
  v5 = v4;
  [(NTKBellonaFaceView *)self bounds];
  v7 = v6 * 0.5;
  [(NTKBellonaFaceView *)self bounds];
  v9 = *&v14;
  v10 = v7 - *&v14 * 0.5;
  v11 = v5 + v8 * 0.5 - *&v14 * 0.5;
  v12 = *&v14;
  result.size.height = v12;
  result.size.width = v9;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  v6 = NTKComplicationSlotDate;
  complicationCopy = complication;
  if ([slot isEqualToString:v6])
  {
    complicationType = [complicationCopy complicationType];

    [NTKBellonaComplicationView viewForComplicationType:complicationType];
  }

  else
  {
    complicationType2 = [complicationCopy complicationType];

    [NTKRichComplicationCircularBaseView viewWithLegacyComplicationType:complicationType2];
  }

  return objc_claimAutoreleasedReturnValue();
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v6 = NTKComplicationSlotDate;
  slotCopy = slot;
  if ([slotCopy isEqualToString:v6] && objc_msgSend(viewCopy, "conformsToProtocol:", &OBJC_PROTOCOL___NTKBellonaNumeralsDelegate))
  {
    [(NTKBellonaNumeralsView *)self->_numeralsView setBackgroundView:viewCopy];
  }

  palette = [(NTKBellonaFaceView *)self palette];
  [(NTKBellonaFaceView *)self _updateComplicationColorForPalette:palette slot:slotCopy view:viewCopy];
}

- (void)_loadLayoutRules
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  device = [(NTKBellonaFaceView *)self device];
  sub_19EE4(device, v3);

  NTKEnumerateComplicationStates();
}

- (void)_updateFaceViewForDateComplicationVisibility
{
  delegate = [(NTKBellonaFaceView *)self delegate];
  -[NTKBellonaNumeralsView setDateIsOn:](self->_numeralsView, "setDateIsOn:", [delegate faceViewComplicationIsEmptyForSlot:NTKComplicationSlotDate] ^ 1);
}

- (void)_setStatusBarIconShadowNeeded:(BOOL)needed
{
  if (self->_isStatusBarIconShadowNeeded != needed)
  {
    v7[3] = v3;
    v7[4] = v4;
    self->_isStatusBarIconShadowNeeded = needed;
    objc_initWeak(v7, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_19440;
    v5[3] = &unk_44D80;
    objc_copyWeak(&v6, v7);
    dispatch_async(&_dispatch_main_q, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(v7);
  }
}

- (double)_verticalPaddingForStatusBar
{
  device = [(NTKBellonaFaceView *)self device];
  CLKValueForDeviceMetrics();
  v4 = v3;

  return v4;
}

- (double)_horizontalPaddingForStatusBar
{
  device = [(NTKBellonaFaceView *)self device];
  sub_19EE4(device, v5);
  v3 = v5[0];

  return v3;
}

- (void)_handleTimeUpdate:(CLKClockTimerDate *)update
{
  if (update->var2 == 59)
  {
    if (update->var3 < 0x3A)
    {
      if (!self->_secondToken)
      {
        [(NTKBellonaFaceView *)self _startSecondUpdate];
      }

      v10 = +[CLKClockTimer sharedInstance];
      p_minuteToken = &self->_minuteToken;
      [v10 stopUpdatesForToken:self->_minuteToken];

      v7 = +[CLKClockTimer sharedInstance];
      p_subsecondToken = &self->_subsecondToken;
      [v7 stopUpdatesForToken:self->_subsecondToken];
    }

    else
    {
      if (!self->_subsecondToken)
      {
        [(NTKBellonaFaceView *)self _startSubsecondUpdate];
      }

      v5 = +[CLKClockTimer sharedInstance];
      p_minuteToken = &self->_minuteToken;
      [v5 stopUpdatesForToken:self->_minuteToken];

      v7 = +[CLKClockTimer sharedInstance];
      p_subsecondToken = &self->_secondToken;
      [v7 stopUpdatesForToken:self->_secondToken];
    }
  }

  else
  {
    if (!self->_minuteToken)
    {
      [(NTKBellonaFaceView *)self _startMinuteUpdate];
    }

    v9 = +[CLKClockTimer sharedInstance];
    p_minuteToken = &self->_secondToken;
    [v9 stopUpdatesForToken:self->_secondToken];

    v7 = +[CLKClockTimer sharedInstance];
    p_subsecondToken = &self->_subsecondToken;
    [v7 stopUpdatesForToken:self->_subsecondToken];
  }

  v11 = *p_minuteToken;
  *p_minuteToken = 0;

  v12 = *p_subsecondToken;
  *p_subsecondToken = 0;

  v14 = update->var0;
  v13 = *&update->var3;
  v15 = *&update->var1;
  v16 = v13;
  [(NTKBellonaFaceView *)self _updateAlphasForHourChangeWithNow:&v14];
}

- (void)_startMinuteUpdate
{
  objc_initWeak(&location, self);
  v3 = +[CLKClockTimer sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_19834;
  v6[3] = &unk_45148;
  objc_copyWeak(&v7, &location);
  v4 = [v3 startUpdatesWithUpdateFrequency:0 withHandler:v6 identificationLog:&stru_45188];
  minuteToken = self->_minuteToken;
  self->_minuteToken = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_startSecondUpdate
{
  objc_initWeak(&location, self);
  v3 = +[CLKClockTimer sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_199E4;
  v6[3] = &unk_45148;
  objc_copyWeak(&v7, &location);
  v4 = [v3 startUpdatesWithUpdateFrequency:1 withHandler:v6 identificationLog:&stru_451A8];
  secondToken = self->_secondToken;
  self->_secondToken = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_startSubsecondUpdate
{
  objc_initWeak(&location, self);
  v3 = +[CLKClockTimer sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_19B94;
  v6[3] = &unk_45148;
  objc_copyWeak(&v7, &location);
  v4 = [v3 startUpdatesWithUpdateFrequency:2 withHandler:v6 identificationLog:&stru_451C8];
  subsecondToken = self->_subsecondToken;
  self->_subsecondToken = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_stopTimerUpdate
{
  v3 = +[CLKClockTimer sharedInstance];
  [v3 stopUpdatesForToken:self->_minuteToken];

  minuteToken = self->_minuteToken;
  self->_minuteToken = 0;

  v5 = +[CLKClockTimer sharedInstance];
  [v5 stopUpdatesForToken:self->_secondToken];

  secondToken = self->_secondToken;
  self->_secondToken = 0;

  v7 = +[CLKClockTimer sharedInstance];
  [v7 stopUpdatesForToken:self->_subsecondToken];

  subsecondToken = self->_subsecondToken;
  self->_subsecondToken = 0;
}

- (void)_updateAlphasForHourChangeWithNow:(CLKClockTimerDate *)now
{
  device = [(NTKBellonaFaceView *)self device];
  v13 = 0.0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_19EE4(device, v11);

  var3 = now->var3;
  v7 = var3;
  if (!var3)
  {
    v7 = 60.0;
  }

  overrideDate = self->_overrideDate;
  if (overrideDate || (v9 = now->var4 + v7, v9 < *(&v12 + 1)) || v9 > v13 || now->var2 != 59)
  {
    [(NTKBellonaNumeralsView *)self->_numeralsView hourChangeAnimationFromNow:now->var1 withFraction:overrideDate == 0 timeChanged:overrideDate != 0 overrideDate:1.0];
  }

  else
  {
    CLKMapFractionIntoRange();
    [(NTKBellonaNumeralsView *)self->_numeralsView hourChangeAnimationFromNow:now->var1 withFraction:0 timeChanged:0 overrideDate:?];
  }

  var0 = now->var0;
}

@end