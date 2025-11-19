@interface NTKBellonaFaceView
- (CGRect)_lowerComplicationFrame;
- (double)_horizontalPaddingForStatusBar;
- (double)_lowerComplicationVerticalOffset;
- (double)_numeralsViewAlphaForEditMode:(int64_t)a3;
- (double)_timeViewAlphaForEditMode:(int64_t)a3;
- (double)_verticalPaddingForStatusBar;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_handleNotification;
- (void)_handleTimeUpdate:(CLKClockTimerDate *)a3;
- (void)_loadLayoutRules;
- (void)_loadLogoImageView;
- (void)_loadSnapshotContentViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_setStatusBarIconShadowNeeded:(BOOL)a3;
- (void)_startMinuteUpdate;
- (void)_startSecondUpdate;
- (void)_startSubsecondUpdate;
- (void)_stopTimerUpdate;
- (void)_unloadLogoImageView;
- (void)_unloadSnapshotContentViews;
- (void)_updateAlphasForHourChangeWithNow:(CLKClockTimerDate *)a3;
- (void)_updateBackgroundColorWithPalette:(id)a3;
- (void)_updateComplicationColorForPalette:(id)a3 slot:(id)a4 view:(id)a5;
- (void)_updateDateComplicationColorsWithPalette:(id)a3 forView:(id)a4;
- (void)_updateFaceViewForDateComplicationVisibility;
- (void)_updateHour;
- (void)_updateViewColorsWithPalette:(id)a3;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
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
    v4 = [(NTKBellonaFaceView *)self device];
    v5 = [(NTKBellonaNumeralsView *)v3 initWithDevice:v4];
    numeralsView = self->_numeralsView;
    self->_numeralsView = v5;

    v7 = [(NTKBellonaFaceView *)self contentView];
    [v7 addSubview:self->_numeralsView];
  }

  [(NTKBellonaFaceView *)self _updateFaceViewForDateComplicationVisibility];
  [(NTKBellonaFaceView *)self _loadLogoImageView];
  v8 = [(NTKBellonaFaceView *)self timeView];
  v9 = +[UIColor whiteColor];
  v10 = +[UIColor blackColor];
  [v8 applyHourMinuteHandsStrokeColor:v9 fillColor:v10];

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
  v3 = [(NTKBellonaFaceView *)self switcherSnapshotView];

  if (v3)
  {
    v4 = [(NTKBellonaFaceView *)self switcherSnapshotView];
    [(NTKBellonaFaceView *)self bringSubviewToFront:v4];
  }
}

- (void)_applyDataMode
{
  v5.receiver = self;
  v5.super_class = NTKBellonaFaceView;
  [(NTKBellonaFaceView *)&v5 _applyDataMode];
  v3 = [(NTKBellonaFaceView *)self dataMode];
  if ((v3 - 2) < 4 || v3 == 0)
  {
    [(NTKBellonaFaceView *)self _stopTimerUpdate];
  }

  else if (v3 == &dword_0 + 1)
  {
    [(NTKBellonaFaceView *)self _updateHour];
  }
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7 = a3;
  v9.receiver = self;
  v9.super_class = NTKBellonaFaceView;
  [(NTKBellonaFaceView *)&v9 setOverrideDate:v7 duration:a4];
  if (![(NSDate *)self->_overrideDate isEqualToDate:v7])
  {
    objc_storeStrong(&self->_overrideDate, a3);
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
  v3 = [(NTKBellonaFaceView *)self currentDisplayDate];
  if (v3)
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

  v5 = [(NTKBellonaFaceView *)self palette];
  v6 = [v5 beige];
  [(UIImageView *)self->_logoImageView setTintColor:v6];

  v7 = [(NTKBellonaFaceView *)self contentView];
  [v7 addSubview:self->_logoImageView];
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
  v3 = [(NTKBellonaFaceView *)self device];
  sub_19EE4(v3, &v7);

  v4 = *(&v8 + 1);
  v5 = *&v9;
  [(NTKBellonaFaceView *)self bounds];
  v6 = (CGRectGetMidX(v17) - v4) * 0.5;
  [(NTKBellonaFaceView *)self bounds];
  [(UIImageView *)self->_logoImageView setFrame:v6, (CGRectGetMidY(v18) - v5) * 0.5, *(&v7 + 1), *&v8];
}

- (void)_updateViewColorsWithPalette:(id)a3
{
  v4 = a3;
  v5 = [(NTKBellonaFaceView *)self timeView];
  v6 = [v5 secondHandView];
  v7 = [v4 secondHandColor];
  [v6 setColor:v7];

  v8 = [(NTKBellonaFaceView *)self timeView];
  v9 = [v8 hourHandView];
  v10 = [v4 handStroke];
  [v9 setColor:v10];

  v11 = [(NTKBellonaFaceView *)self timeView];
  v12 = [v11 minuteHandView];
  v13 = [v4 handStroke];
  [v12 setColor:v13];

  v14 = [(NTKBellonaFaceView *)self timeView];
  v15 = [v4 handInlay];
  [v14 setInlayColor:v15];

  v16 = [(NTKBellonaFaceView *)self timeView];
  v17 = [v16 minuteHandView];
  v18 = [v4 minuteHandDot];
  [v17 setHandDotColor:v18];

  [(NTKBellonaNumeralsView *)self->_numeralsView updateDigitsWithPalette:v4];
  v19 = [v4 beige];

  [(UIImageView *)self->_logoImageView setTintColor:v19];
}

- (void)_updateBackgroundColorWithPalette:(id)a3
{
  numeralsView = self->_numeralsView;
  v5 = a3;
  [(NTKBellonaNumeralsView *)numeralsView updateBackgroundWithPalette:v5];
  v9 = [v5 background];

  [(NTKBellonaNumeralsView *)self->_numeralsView alpha];
  if (v6 >= 1.0)
  {
    [(NTKBellonaFaceView *)self setComplicationBackgroundColor:v9];
  }

  else
  {
    v7 = +[UIColor blackColor];
    v8 = CLKInterpolateBetweenColors();
    [(NTKBellonaFaceView *)self setComplicationBackgroundColor:v8];
  }

  [(NTKBellonaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&stru_450D0];
}

- (void)_updateComplicationColorForPalette:(id)a3 slot:(id)a4 view:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (NTKComplicationSlotBottomCenter == v8)
  {
    v10 = [v14 beige];
    [(NTKBellonaFaceView *)self setComplicationColor:v10];
    [(NTKBellonaFaceView *)self setInterpolatedComplicationColor:v10];
    v11 = [v14 complicationSecondaryColor];
    [(NTKBellonaFaceView *)self setAlternateComplicationColor:v11];

    v12 = v9;
    [v12 updateMonochromeColor];
    v13 = +[UIColor clearColor];
    [v12 setPlatterColor:v13];
  }

  else if (NTKComplicationSlotDate == v8)
  {
    [(NTKBellonaFaceView *)self _updateDateComplicationColorsWithPalette:v14 forView:v9];
  }
}

- (void)_updateDateComplicationColorsWithPalette:(id)a3 forView:(id)a4
{
  v7 = a4;
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___NTKZeudleComplicationDisplay])
  {
    v5 = v7;
    v6 = [(NTKBellonaFaceView *)self palette];
    [v5 applyPalette:v6];
  }
}

- (void)_configureForEditMode:(int64_t)a3
{
  [(NTKBellonaFaceView *)self _timeViewAlphaForEditMode:?];
  v6 = v5;
  [(NTKBellonaFaceView *)self _numeralsViewAlphaForEditMode:a3];
  v8 = v7;
  v9 = [(NTKBellonaFaceView *)self timeView];
  [v9 setAlpha:v6];

  [(NTKBellonaNumeralsView *)self->_numeralsView setAlpha:v8];
  v10 = [(NTKBellonaFaceView *)self palette];
  [(NTKBellonaFaceView *)self _updateBackgroundColorWithPalette:v10];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [(NTKBellonaFaceView *)self _timeViewAlphaForEditMode:?];
  [(NTKBellonaFaceView *)self _timeViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  [(NTKBellonaFaceView *)self _numeralsViewAlphaForEditMode:a4];
  [(NTKBellonaFaceView *)self _numeralsViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v11 = v10;
  v12 = [(NTKBellonaFaceView *)self timeView];
  [v12 setAlpha:v9];

  [(NTKBellonaNumeralsView *)self->_numeralsView setAlpha:v11];
  v13 = [(NTKBellonaFaceView *)self palette];
  [(NTKBellonaFaceView *)self _updateBackgroundColorWithPalette:v13];
}

- (double)_timeViewAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_numeralsViewAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (!a3)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 10)
  {
    self->_breathingFraction = a3;
    [(NTKBellonaFaceView *)self _applyBreathingAndRubberbanding:10];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 10)
  {
    self->_rubberbandingFraction = a3;
    [(NTKBellonaFaceView *)self _applyBreathingAndRubberbanding:a4];
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

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 10)
  {
    v14[11] = v5;
    v14[12] = v6;
    v8 = [(NTKBellonaFaceView *)self timeView:a3];
    v9 = [v8 secondHandView];
    v10 = [(NTKBellonaFaceView *)self palette];
    v11 = [v10 secondHandColor];
    [v9 setColor:v11];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_18A3C;
    v14[3] = &unk_450F8;
    v14[4] = self;
    [(NTKBellonaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v14];
    v12 = [(NTKBellonaFaceView *)self palette];
    [(NTKBellonaFaceView *)self _updateViewColorsWithPalette:v12];

    v13 = [(NTKBellonaFaceView *)self palette];
    [(NTKBellonaFaceView *)self _updateBackgroundColorWithPalette:v13];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  if (a6 == 10)
  {
    v12[7] = v7;
    v12[8] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_18C50;
    v12[3] = &unk_450F8;
    v12[4] = self;
    [(NTKBellonaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v12, a5, a6, a7];
    v10 = [(NTKBellonaFaceView *)self interpolatedColorPalette];
    [(NTKBellonaFaceView *)self _updateViewColorsWithPalette:v10];

    v11 = [(NTKBellonaFaceView *)self interpolatedColorPalette];
    [(NTKBellonaFaceView *)self _updateBackgroundColorWithPalette:v11];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6
{
  v6.receiver = self;
  v6.super_class = NTKBellonaFaceView;
  [(NTKBellonaFaceView *)&v6 _applyTransitionFraction:a4 fromComplication:a5 toComplication:a6 slot:a3];
}

- (double)_lowerComplicationVerticalOffset
{
  v2 = [(NTKBellonaFaceView *)self device];
  sub_19EE4(v2, v5);
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

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v6 = NTKComplicationSlotDate;
  v7 = a3;
  if ([a5 isEqualToString:v6])
  {
    v8 = [v7 complicationType];

    [NTKBellonaComplicationView viewForComplicationType:v8];
  }

  else
  {
    v10 = [v7 complicationType];

    [NTKRichComplicationCircularBaseView viewWithLegacyComplicationType:v10];
  }

  return objc_claimAutoreleasedReturnValue();
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v9 = a3;
  v6 = NTKComplicationSlotDate;
  v7 = a4;
  if ([v7 isEqualToString:v6] && objc_msgSend(v9, "conformsToProtocol:", &OBJC_PROTOCOL___NTKBellonaNumeralsDelegate))
  {
    [(NTKBellonaNumeralsView *)self->_numeralsView setBackgroundView:v9];
  }

  v8 = [(NTKBellonaFaceView *)self palette];
  [(NTKBellonaFaceView *)self _updateComplicationColorForPalette:v8 slot:v7 view:v9];
}

- (void)_loadLayoutRules
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  v2 = [(NTKBellonaFaceView *)self device];
  sub_19EE4(v2, v3);

  NTKEnumerateComplicationStates();
}

- (void)_updateFaceViewForDateComplicationVisibility
{
  v3 = [(NTKBellonaFaceView *)self delegate];
  -[NTKBellonaNumeralsView setDateIsOn:](self->_numeralsView, "setDateIsOn:", [v3 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotDate] ^ 1);
}

- (void)_setStatusBarIconShadowNeeded:(BOOL)a3
{
  if (self->_isStatusBarIconShadowNeeded != a3)
  {
    v7[3] = v3;
    v7[4] = v4;
    self->_isStatusBarIconShadowNeeded = a3;
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
  v2 = [(NTKBellonaFaceView *)self device];
  CLKValueForDeviceMetrics();
  v4 = v3;

  return v4;
}

- (double)_horizontalPaddingForStatusBar
{
  v2 = [(NTKBellonaFaceView *)self device];
  sub_19EE4(v2, v5);
  v3 = v5[0];

  return v3;
}

- (void)_handleTimeUpdate:(CLKClockTimerDate *)a3
{
  if (a3->var2 == 59)
  {
    if (a3->var3 < 0x3A)
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

  v14 = a3->var0;
  v13 = *&a3->var3;
  v15 = *&a3->var1;
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

- (void)_updateAlphasForHourChangeWithNow:(CLKClockTimerDate *)a3
{
  v5 = [(NTKBellonaFaceView *)self device];
  v13 = 0.0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_19EE4(v5, v11);

  var3 = a3->var3;
  v7 = var3;
  if (!var3)
  {
    v7 = 60.0;
  }

  overrideDate = self->_overrideDate;
  if (overrideDate || (v9 = a3->var4 + v7, v9 < *(&v12 + 1)) || v9 > v13 || a3->var2 != 59)
  {
    [(NTKBellonaNumeralsView *)self->_numeralsView hourChangeAnimationFromNow:a3->var1 withFraction:overrideDate == 0 timeChanged:overrideDate != 0 overrideDate:1.0];
  }

  else
  {
    CLKMapFractionIntoRange();
    [(NTKBellonaNumeralsView *)self->_numeralsView hourChangeAnimationFromNow:a3->var1 withFraction:0 timeChanged:0 overrideDate:?];
  }

  var0 = a3->var0;
}

@end