@interface NTKDolomiteFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (NTKDolomiteFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options refreshHandler:(id)handler;
- (id)createFaceColorPalette;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyPauseStateToActiveContentViewIfNecessary;
- (void)_applyStyle:(unint64_t)style;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_loadActiveViews;
- (void)_prepareForEditing;
- (void)_setNumeral:(unint64_t)numeral;
- (void)_setStatusBarIconShadowNeeded:(BOOL)needed;
- (void)_setStyle:(unint64_t)style;
- (void)_timerSecondFired:(int)fired;
- (void)_unloadActiveViews;
- (void)_updateColorsWithPalette:(id)palette;
- (void)dealloc;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKDolomiteFaceView

- (NTKDolomiteFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = NTKDolomiteFaceView;
  v9 = [(NTKDolomiteFaceView *)&v22 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [NTKDolomiteNumeralEditOption defaultOptionForDevice:deviceCopy];
    v9->_numeral = [v10 numeral];

    v11 = [NTKDolomiteStyleEditOption defaultOptionForDevice:deviceCopy];
    v9->_style = [v11 style];

    objc_initWeak(&location, v9);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1704;
    v19[3] = &unk_D5C430;
    objc_copyWeak(&v20, &location);
    v12 = objc_retainBlock(v19);
    dateDefaultProvider = v9->_dateDefaultProvider;
    v9->_dateDefaultProvider = v12;

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1774;
    v17[3] = &unk_D5C430;
    objc_copyWeak(&v18, &location);
    v14 = objc_retainBlock(v17);
    dateOverrideProvider = v9->_dateOverrideProvider;
    v9->_dateOverrideProvider = v14;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)dealloc
{
  [(NTKDolomiteFaceView *)self _stopTimer];
  v3.receiver = self;
  v3.super_class = NTKDolomiteFaceView;
  [(NTKDolomiteFaceView *)&v3 dealloc];
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKDolomiteFaceView;
  [(NTKDolomiteFaceView *)&v3 _applyFrozen];
  [(NTKDolomiteFaceView *)self _applyPauseStateToActiveContentViewIfNecessary];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v8 = _NTKLoggingObjectForDomain();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (dateCopy)
  {
    if (v9)
    {
      overrideDate = self->_overrideDate;
      v21 = 136315906;
      v22 = "[NTKDolomiteFaceView setOverrideDate:duration:]";
      v23 = 2112;
      v24 = dateCopy;
      v25 = 2112;
      v26 = overrideDate;
      v27 = 2048;
      durationCopy = duration;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%s] Setting override date to: %@ from: %@, duration: %f", &v21, 0x2Au);
    }

    objc_storeStrong(&self->_overrideDate, date);
    p_isShowOverride = &self->_isShowOverride;
    if (!self->_isShowOverride)
    {
      v12 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315138;
        v22 = "[NTKDolomiteFaceView setOverrideDate:duration:]";
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[%s] Updating date for _contentOverrideView", &v21, 0xCu);
      }

      [(NTKDolomiteContentView *)self->_contentOverrideView updateDate];
      v13 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    if (v9)
    {
      v21 = 136315138;
      v22 = "[NTKDolomiteFaceView setOverrideDate:duration:]";
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[%s] Override date unset", &v21, 0xCu);
    }

    p_isShowOverride = &self->_isShowOverride;
    if (self->_isShowOverride)
    {
      v13 = 0;
LABEL_12:
      *p_isShowOverride = v13;
      layer = [(NTKDolomiteContentView *)self->_contentOverrideView layer];
      v15 = layer;
      if (duration <= 0.0)
      {
        [layer removeAnimationForKey:@"fade"];
        v20 = 0.0;
        if (dateCopy)
        {
          *&v20 = 1.0;
        }

        [v15 setOpacity:v20];
      }

      else
      {
        v16 = [CABasicAnimation animationWithKeyPath:@"opacity"];
        v17 = v16;
        if (dateCopy)
        {
          v18 = &off_D5CDB8;
        }

        else
        {
          v18 = &off_D5CDC8;
        }

        if (dateCopy)
        {
          v19 = &off_D5CDC8;
        }

        else
        {
          v19 = &off_D5CDB8;
        }

        [v16 setFromValue:v18];
        [v17 setToValue:v19];
        [v17 setFillMode:kCAFillModeBoth];
        [v17 setDuration:duration];
        [v17 setRemovedOnCompletion:0];
        [v15 addAnimation:v17 forKey:@"fade"];
      }
    }
  }
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
    v5[2] = sub_1C8C;
    v5[3] = &unk_D5C458;
    objc_copyWeak(&v6, v7);
    dispatch_async(&_dispatch_main_q, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(v7);
  }
}

- (void)_timerSecondFired:(int)fired
{
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[NTKDolomiteFaceView _timerSecondFired:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%s] Updating date for _contentActiveView", &v5, 0xCu);
  }

  [(NTKDolomiteContentView *)self->_contentActiveView updateDate];
}

- (void)_applyPauseStateToActiveContentViewIfNecessary
{
  isFrozen = [(NTKDolomiteFaceView *)self isFrozen];
  if (self->_isPaused != isFrozen)
  {
    v4 = isFrozen;
    self->_isPaused = isFrozen;
    if (isFrozen)
    {
      [(NTKDolomiteFaceView *)self _stopTimer];
    }

    else
    {
      [(NTKDolomiteFaceView *)self _startTimer];
    }

    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[NTKDolomiteFaceView _applyPauseStateToActiveContentViewIfNecessary]";
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%s] Updating date for _contentActiveView, isPaused: %d", &v6, 0x12u);
    }

    [(NTKDolomiteContentView *)self->_contentActiveView setPaused:v4];
    [(NTKDolomiteContentView *)self->_contentActiveView updateDate];
    [(NTKDolomiteContentView *)self->_contentOverrideView forceColorRefresh:[(NTKDolomiteFaceView *)self dataMode]== &dword_0 + 2];
  }
}

- (id)createFaceColorPalette
{
  v2 = [[NTKDolomiteColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_updateColorsWithPalette:(id)palette
{
  contentActiveView = self->_contentActiveView;
  paletteCopy = palette;
  [(NTKDolomiteContentView *)contentActiveView setPalette:paletteCopy];
  [(NTKDolomiteContentView *)self->_contentOverrideView setPalette:paletteCopy];
}

- (void)_prepareForEditing
{
  [(NTKDolomiteContentView *)self->_contentActiveView setIsEditing:1];
  [(NTKDolomiteContentView *)self->_contentOverrideView setIsEditing:1];
  v8.receiver = self;
  v8.super_class = NTKDolomiteFaceView;
  [(NTKDolomiteFaceView *)&v8 _prepareForEditing];
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    overrideDate = self->_overrideDate;
    specifierDate = self->_specifierDate;
    *buf = 136315650;
    v10 = "[NTKDolomiteFaceView _prepareForEditing]";
    v11 = 2112;
    v12 = overrideDate;
    v13 = 2112;
    v14 = specifierDate;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%s] Setting specifier date: %@ from: %@", buf, 0x20u);
  }

  objc_storeStrong(&self->_specifierDate, self->_overrideDate);
  layer = [(NTKDolomiteContentView *)self->_contentOverrideView layer];
  [layer removeAnimationForKey:@"fade"];
  LODWORD(v7) = 1.0;
  [layer setOpacity:v7];
  [(NTKDolomiteFaceView *)self _applyPauseStateToActiveContentViewIfNecessary];
}

- (void)_cleanupAfterEditing
{
  [(NTKDolomiteContentView *)self->_contentActiveView setIsEditing:0];
  [(NTKDolomiteContentView *)self->_contentOverrideView setIsEditing:0];
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[NTKDolomiteFaceView _cleanupAfterEditing]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[%s] Unsetting specifier date", buf, 0xCu);
  }

  specifierDate = self->_specifierDate;
  self->_specifierDate = 0;

  v7.receiver = self;
  v7.super_class = NTKDolomiteFaceView;
  [(NTKDolomiteFaceView *)&v7 _cleanupAfterEditing];
  [(NTKDolomiteFaceView *)self _applyStyle:[(NTKDolomiteContentView *)self->_contentActiveView style]];
  layer = [(NTKDolomiteContentView *)self->_contentOverrideView layer];
  LODWORD(v6) = 1.0;
  [layer setOpacity:v6];
  [(NTKDolomiteFaceView *)self _applyPauseStateToActiveContentViewIfNecessary];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v10.receiver = self;
  v10.super_class = NTKDolomiteFaceView;
  [(NTKDolomiteFaceView *)&v10 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  switch(mode)
  {
    case 10:
      _palette = [(NTKDolomiteFaceView *)self _palette];
      [(NTKDolomiteFaceView *)self _updateColorsWithPalette:_palette];

      break;
    case 15:
      -[NTKDolomiteFaceView _setStyle:](self, "_setStyle:", [optionCopy style]);
      break;
    case 19:
      -[NTKDolomiteFaceView _setNumeral:](self, "_setNumeral:", [optionCopy numeral]);
      break;
  }
}

- (void)_setNumeral:(unint64_t)numeral
{
  if (self->_numeral != numeral)
  {
    self->_numeral = numeral;
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[NTKDolomiteFaceView _setNumeral:]";
      v8 = 2048;
      numeralCopy = numeral;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%s] Updating date, numeral: %lu", &v6, 0x16u);
    }

    [(NTKDolomiteContentView *)self->_contentActiveView setNumeral:self->_numeral];
    [(NTKDolomiteContentView *)self->_contentActiveView updateDate];
    [(NTKDolomiteContentView *)self->_contentOverrideView setNumeral:self->_numeral];
    [(NTKDolomiteContentView *)self->_contentOverrideView updateDate];
  }
}

- (void)_applyStyle:(unint64_t)style
{
  self->_style = style;
  v5 = 2 * (style == 1);
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[NTKDolomiteFaceView _applyStyle:]";
    v9 = 2048;
    styleCopy = style;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[%s] Updating date, style: %lu, background: %lu", &v7, 0x20u);
  }

  [(NTKDolomiteContentView *)self->_contentActiveView setStyle:style];
  [(NTKDolomiteContentView *)self->_contentActiveView setBackgroundStyle:v5];
  [(NTKDolomiteContentView *)self->_contentActiveView updateDate];
  [(NTKDolomiteContentView *)self->_contentOverrideView setStyle:style];
  [(NTKDolomiteContentView *)self->_contentOverrideView setBackgroundStyle:v5];
  [(NTKDolomiteContentView *)self->_contentOverrideView updateDate];
  [(NTKDolomiteFaceView *)self _setStatusBarIconShadowNeeded:style == 0];
}

- (void)_setStyle:(unint64_t)style
{
  if ([(NTKDolomiteContentView *)self->_contentActiveView style]!= style || [(NTKDolomiteContentView *)self->_contentOverrideView style]!= style)
  {
    [(NTKDolomiteFaceView *)self _applyStyle:style];
  }

  self->_style = style;
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  switch(mode)
  {
    case 19:
      numeral = [optionCopy numeral];
      numeral2 = [toOptionCopy numeral];
      if (numeral == numeral2)
      {
        [(NTKDolomiteFaceView *)self _setNumeral:numeral];
        contentOverrideView = self->_contentOverrideView;
        v26 = 1.0;
      }

      else
      {
        if (fraction >= 0.5)
        {
          v31 = numeral2;
          CLKMapFractionIntoRange();
          v28 = v32;
          numeral = v31;
        }

        else
        {
          CLKMapFractionIntoRange();
          v28 = v27;
        }

        [(NTKDolomiteFaceView *)self _setNumeral:numeral];
        contentOverrideView = self->_contentOverrideView;
        v26 = v28;
      }

      [(NTKDolomiteContentView *)contentOverrideView setDigitFadeFraction:v26];
      break;
    case 15:
      style = [optionCopy style];
      style2 = [toOptionCopy style];
      layer = [(NTKDolomiteContentView *)self->_contentOverrideView layer];
      interpolatedColorPalette = layer;
      HIDWORD(v19) = 1058682594;
      if (fraction >= 0.0001 && style != style2)
      {
        HIDWORD(v19) = 1072693038;
        if (fraction <= 0.9999)
        {
          v29 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v34 = "[NTKDolomiteFaceView _applyTransitionFraction:fromOption:toOption:forCustomEditMode:slot:]";
            v35 = 2048;
            v36 = style;
            v37 = 2048;
            v38 = style2;
            v39 = 2048;
            v40 = 2 * (style == &dword_0 + 1);
            v41 = 2048;
            v42 = 2 * (style2 == &dword_0 + 1);
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "[%s] Updating date (style: %lu->%lu, background: %lu->%lu)", buf, 0x34u);
          }

          [(NTKDolomiteContentView *)self->_contentActiveView setStyle:style];
          [(NTKDolomiteContentView *)self->_contentActiveView setBackgroundStyle:2 * (style == &dword_0 + 1)];
          [(NTKDolomiteContentView *)self->_contentActiveView updateDate];
          [(NTKDolomiteContentView *)self->_contentOverrideView setStyle:style2];
          [(NTKDolomiteContentView *)self->_contentOverrideView setBackgroundStyle:2 * (style2 == &dword_0 + 1)];
          [(NTKDolomiteContentView *)self->_contentOverrideView updateDate];
          *&v30 = fraction;
          [interpolatedColorPalette setOpacity:v30];
          CLKMapFractionIntoRange();
          v21 = self->_contentOverrideView;
          goto LABEL_22;
        }

        style = style2;
      }

      LODWORD(v19) = 1.0;
      [layer setOpacity:v19];
      [(NTKDolomiteFaceView *)self _setStyle:style];
      v21 = self->_contentOverrideView;
      v22 = 1.0;
LABEL_22:
      [(NTKDolomiteContentView *)v21 setDigitFadeFraction:v22];
      goto LABEL_23;
    case 10:
      interpolatedColorPalette = [(NTKDolomiteFaceView *)self interpolatedColorPalette];
      [(NTKDolomiteFaceView *)self _updateColorsWithPalette:interpolatedColorPalette];
LABEL_23:

      break;
  }
}

- (void)_loadActiveViews
{
  [(NTKDolomiteFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  device = [(NTKDolomiteFaceView *)self device];
  contentView = [(NTKDolomiteFaceView *)self contentView];
  v31 = 2 * (self->_style == 1);
  v13 = [NTKDolomiteContentView alloc];
  numeral = self->_numeral;
  style = self->_style;
  _palette = [(NTKDolomiteFaceView *)self _palette];
  LOWORD(v29) = self->_is24HourMode;
  v17 = [(NTKDolomiteContentView *)v13 initWithFrame:0 role:numeral numeral:style style:_palette palette:v31 backgroundStyle:0 digitStyle:v5 dateProvider:v7 is24HourMode:v9 forceDynamicIndexZero:v11 contentOption:self->_dateDefaultProvider device:v29, 0, device];
  contentActiveView = self->_contentActiveView;
  self->_contentActiveView = v17;

  v19 = [NTKDolomiteContentView alloc];
  v20 = self->_numeral;
  v21 = self->_style;
  _palette2 = [(NTKDolomiteFaceView *)self _palette];
  BYTE1(v30) = 1;
  LOBYTE(v30) = self->_is24HourMode;
  v23 = [(NTKDolomiteContentView *)v19 initWithFrame:0 role:v20 numeral:v21 style:_palette2 palette:v31 backgroundStyle:0 digitStyle:v5 dateProvider:v7 is24HourMode:v9 forceDynamicIndexZero:v11 contentOption:self->_dateOverrideProvider device:v30, 0, device];
  contentOverrideView = self->_contentOverrideView;
  self->_contentOverrideView = v23;

  [(NTKDolomiteContentView *)self->_contentOverrideView setPaused:1];
  LOBYTE(v2) = self->_isShowOverride;
  layer = [(NTKDolomiteContentView *)self->_contentOverrideView layer];
  *&v26 = v2;
  [layer setOpacity:v26];
  v27 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:device forDeviceCornerRadius:{v5, v7, v9, v11}];
  cornerView = self->_cornerView;
  self->_cornerView = v27;

  [contentView addSubview:self->_contentActiveView];
  [contentView bringSubviewToFront:self->_contentActiveView];
  [contentView insertSubview:self->_contentOverrideView aboveSubview:self->_contentActiveView];
  [contentView insertSubview:self->_cornerView aboveSubview:self->_contentOverrideView];
}

- (void)_unloadActiveViews
{
  [(NTKDolomiteContentView *)self->_contentActiveView removeFromSuperview];
  contentActiveView = self->_contentActiveView;
  self->_contentActiveView = 0;

  [(NTKDolomiteContentView *)self->_contentOverrideView removeFromSuperview];
  contentOverrideView = self->_contentOverrideView;
  self->_contentOverrideView = 0;

  [(NTKRoundedCornerOverlayView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_D5D0F8;
  if (options != 15)
  {
    v4 = 0;
  }

  if (options == 19)
  {
    return &off_D5D0E0;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options refreshHandler:(id)handler
{
  optionCopy = option;
  optionsCopy = options;
  handlerCopy = handler;
  if (mode == 15)
  {
    v14 = optionCopy;
    v13 = [optionsCopy objectForKeyedSubscript:&off_D5CE48];
    goto LABEL_5;
  }

  if (mode == 19)
  {
    v13 = optionCopy;
    v14 = [optionsCopy objectForKeyedSubscript:&off_D5CE30];
LABEL_5:
    v15 = [optionsCopy objectForKeyedSubscript:&off_D5CE18];
    v16 = [NSString stringWithFormat:@"%@-%@-%@", v13, v14, v15];
    v17 = [NTKSwatchRenderer cachedSwatchForKey:v16];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      device = [(NTKDolomiteFaceView *)self device];
      v20 = [[NTKDolomiteFaceView alloc] initWithFaceStyle:44 forDevice:device clientIdentifier:0];
      [(NTKDolomiteFaceView *)self frame];
      [(NTKDolomiteFaceView *)v20 setFrame:?];
      [(NTKDolomiteFaceView *)v20 _loadSnapshotContentViews];
      [(NTKDolomiteFaceView *)v20 setOption:v13 forCustomEditMode:19 slot:0];
      [(NTKDolomiteFaceView *)v20 setOption:v14 forCustomEditMode:15 slot:0];
      [(NTKDolomiteFaceView *)v20 setOption:v15 forCustomEditMode:10 slot:0];
      v21 = NTKIdealizedDate();
      [(NTKDolomiteFaceView *)v20 setOverrideDate:v21 duration:0.0];

      [(NTKDolomiteFaceView *)v20 layoutIfNeeded];
      [(NTKDolomiteFaceView *)v20 setNeedsDisplay];
      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [optionCopy swatchStyle]);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_2FC4;
      block[3] = &unk_D5C480;
      v33 = v22;
      v34 = v23;
      v29 = v20;
      v30 = device;
      v31 = v16;
      v32 = handlerCopy;
      v24 = device;
      v25 = v20;
      dispatch_async(&_dispatch_main_q, block);
    }

    goto LABEL_10;
  }

  v18 = objc_opt_new();
LABEL_10:

  return v18;
}

@end