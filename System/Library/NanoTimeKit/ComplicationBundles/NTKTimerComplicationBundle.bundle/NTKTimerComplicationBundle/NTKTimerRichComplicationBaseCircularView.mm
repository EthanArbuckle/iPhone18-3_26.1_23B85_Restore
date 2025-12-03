@interface NTKTimerRichComplicationBaseCircularView
- (NTKTimerRichComplicationBaseCircularView)initWithFamily:(int64_t)family;
- (void)_applyPausedUpdate;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)_pause;
- (void)_resume;
- (void)_updateDialProgress;
- (void)_updatePausedDialProgress;
- (void)dealloc;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKTimerRichComplicationBaseCircularView

- (NTKTimerRichComplicationBaseCircularView)initWithFamily:(int64_t)family
{
  v48.receiver = self;
  v48.super_class = NTKTimerRichComplicationBaseCircularView;
  v4 = [(NTKTimerRichComplicationBaseCircularView *)&v48 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    p_layoutConstants = &v4->_layoutConstants;
    device = [(NTKTimerRichComplicationBaseCircularView *)v4 device];
    memset(v50, 0, 64);
    memset(location, 0, sizeof(location));
    v8 = location;
    sub_2118(device, location);
    if (family != 10)
    {
      if (family == 12)
      {
        v8 = v50;
      }

      else
      {
        v9 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_69D4(family, v9);
        }

        v8 = location;
      }
    }

    v10 = v8[1];
    v44 = *v8;
    v11 = v8[2];
    v12 = v8[3];
    v45 = v10;
    v46 = v11;
    v47 = v12;
    *&p_layoutConstants->numberTicks = v44;
    *&v5->_layoutConstants.tickSize.height = v10;
    *&v5->_layoutConstants.timerLabelBottom = v11;
    *&v5->_layoutConstants.timerLabelMaxWidth = v12;

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1368;
    v42[3] = &unk_C450;
    v13 = v5;
    v43 = v13;
    v14 = objc_retainBlock(v42);
    v15 = +[UIColor systemOrangeColor];
    v16 = [v15 colorWithAlphaComponent:0.3];
    v17 = (v14[2])(v14, v16);
    v18 = v13[1];
    v13[1] = v17;

    v19 = +[UIColor systemOrangeColor];
    v20 = (v14[2])(v14, v19);
    v21 = v13[2];
    v13[2] = v20;

    v22 = objc_alloc_init(CLKUIColoringLabel);
    v23 = v13[6];
    v13[6] = v22;

    [v13[6] setInTimeTravel:0];
    objc_initWeak(location, v13);
    v24 = v13[6];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1440;
    v40[3] = &unk_C478;
    objc_copyWeak(&v41, location);
    [v24 setNowProvider:v40];
    v25 = v13[6];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_14A0;
    v38[3] = &unk_C4A0;
    objc_copyWeak(&v39, location);
    [v25 setNeedsResizeHandler:v38];
    [v13[6] setMaxWidth:v5->_layoutConstants.timerLabelMaxWidth];
    v26 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v5->_layoutConstants.timerLabelFontSize design:UIFontWeightSemibold];
    cLKFontWithAlternativePunctuation = [v26 CLKFontWithAlternativePunctuation];

    [v13[6] setFont:cLKFontWithAlternativePunctuation];
    v28 = v13[6];
    v29 = +[UIColor whiteColor];
    [v28 setTextColor:v29];

    [v13[6] setHidden:1];
    contentView = [v13 contentView];
    [contentView addSubview:v13[6]];

    device2 = [v13 device];
    v32 = [NTKTimerBundleTimelineEntry fullColorSymbolImageProviderForDevice:device2 withOverridePointSize:v5->_layoutConstants.overridePointSize];
    v33 = v13[4];
    v13[4] = v32;

    v34 = objc_opt_new();
    v35 = v13[5];
    v13[5] = v34;

    contentView2 = [v13 contentView];
    [contentView2 addSubview:v13[5]];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(location);
  }

  return v5;
}

- (void)dealloc
{
  [(NTKTimerRichComplicationBaseCircularView *)self _pause];
  v3.receiver = self;
  v3.super_class = NTKTimerRichComplicationBaseCircularView;
  [(NTKTimerRichComplicationBaseCircularView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = NTKTimerRichComplicationBaseCircularView;
  [(NTKTimerRichComplicationBaseCircularView *)&v30 layoutSubviews];
  contentView = [(NTKTimerRichComplicationBaseCircularView *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  dialDiameter = self->_layoutConstants.dialDiameter;
  device = [(NTKTimerRichComplicationBaseCircularView *)self device];
  CLKSizeCenteredInRectForDevice();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [(NTKRichComplicationDialView *)self->_backgroundDial setFrame:v15, v17, v19, v21];
  [(NTKRichComplicationDialView *)self->_foregroundDial setFrame:v15, v17, v19, v21];
  [(CLKUIColoringLabel *)self->_timerLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_timerLabel frame];
  v24 = v23;
  if (v22 >= self->_layoutConstants.timerLabelMaxWidth)
  {
    timerLabelMaxWidth = self->_layoutConstants.timerLabelMaxWidth;
  }

  else
  {
    timerLabelMaxWidth = v22;
  }

  timerLabelBottom = self->_layoutConstants.timerLabelBottom;
  font = [(CLKUIColoringLabel *)self->_timerLabel font];
  [font ascender];
  *&v28 = timerLabelBottom - v28;
  v29 = ceilf(*&v28);

  [(CLKUIColoringLabel *)self->_timerLabel setFrame:(v9 - timerLabelMaxWidth) * 0.5, v29, timerLabelMaxWidth, v24];
  [(UIImageView *)self->_timerImageView setFrame:v5, v7, v9, v11];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  if (self->_updateToken)
  {
    textProvider = [(CLKUIColoringLabel *)self->_timerLabel textProvider];
    [textProvider stopUpdatesForToken:self->_updateToken];

    updateToken = self->_updateToken;
    self->_updateToken = 0;
  }

  timerImageProvider = self->_timerImageProvider;
  tintColor = [templateCopy tintColor];
  [(CLKFullColorSymbolImageProvider *)timerImageProvider setTintColor:tintColor];

  timerImageView = self->_timerImageView;
  createSymbolImage = [(CLKFullColorSymbolImageProvider *)self->_timerImageProvider createSymbolImage];
  [(UIImageView *)timerImageView setImage:createSymbolImage];

  [(UIImageView *)self->_timerImageView setContentMode:4];
  metadata = [templateCopy metadata];
  v12 = [metadata objectForKeyedSubscript:@"NTKTimerComplicationMetadataTimerDateKey"];
  timerDate = self->_timerDate;
  self->_timerDate = v12;

  v14 = [metadata objectForKeyedSubscript:@"NTKTimerComplicationMetadataDurationKey"];
  [v14 doubleValue];
  self->_timerDuration = v15;

  v16 = [metadata objectForKeyedSubscript:@"NTKTimerComplicationMetaDataRemainingPausedTimeKey"];
  [v16 doubleValue];
  self->_pausedTimeRemaining = v17;

  v18 = [metadata objectForKeyedSubscript:@"NTKTimerComplicationMetadataTextProviderKey"];
  v19 = [v18 copy];

  v20 = [metadata objectForKeyedSubscript:@"NTKTimerComplicationMetaDataIsDefaultKey"];
  bOOLValue = [v20 BOOLValue];

  v22 = [metadata objectForKeyedSubscript:@"NTKTimerComplicationMetadataStateKey"];
  if ([v22 isEqualToString:@"running"])
  {
    [(NTKTimerRichComplicationBaseCircularView *)self _updateDialProgress];
  }

  else
  {
    if (([v22 isEqualToString:@"paused"] & 1) == 0 && bOOLValue == 1)
    {
      self->_showPlatter = 1;
      [(CLKUIColoringLabel *)self->_timerLabel setTextProvider:0];
      [(CLKUIColoringLabel *)self->_timerLabel setHidden:1];
      [(NTKRichComplicationDialView *)self->_backgroundDial setHidden:1];
      [(NTKRichComplicationDialView *)self->_foregroundDial setHidden:1];
      [(UIImageView *)self->_timerImageView setHidden:0];
      [(NTKTimerRichComplicationBaseCircularView *)self _pause];
      goto LABEL_10;
    }

    [(NTKTimerRichComplicationBaseCircularView *)self _updatePausedDialProgress];
  }

  self->_showPlatter = 0;
  [(CLKUIColoringLabel *)self->_timerLabel setTextProvider:v19];
  [(CLKUIColoringLabel *)self->_timerLabel setHidden:0];
  [(CLKUIColoringLabel *)self->_timerLabel setAlpha:1.0];
  [(NTKRichComplicationDialView *)self->_backgroundDial setHidden:0];
  [(NTKRichComplicationDialView *)self->_foregroundDial setHidden:0];
  [(UIImageView *)self->_timerImageView setHidden:1];
LABEL_10:
  [(NTKTimerRichComplicationBaseCircularView *)self _applyPausedUpdate];
  [(NTKTimerRichComplicationBaseCircularView *)self setNeedsLayout];
  [(NTKTimerRichComplicationBaseCircularView *)self _updatePlatterColor];
}

- (void)_applyPausedUpdate
{
  if ([(NTKTimerRichComplicationBaseCircularView *)self paused])
  {
    [(NTKTimerRichComplicationBaseCircularView *)self _pause];
  }

  else
  {
    [(NTKTimerRichComplicationBaseCircularView *)self _resume];
  }

  paused = [(NTKTimerRichComplicationBaseCircularView *)self paused];
  layer = [(UIImageView *)self->_timerImageView layer];
  [layer setShouldRasterize:paused];
}

- (void)_updatePausedDialProgress
{
  v2 = self->_pausedTimeRemaining / self->_timerDuration;
  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  v3 = fmax(v2, 0.0);
  *&v3 = v3;
  [(NTKRichComplicationDialView *)self->_foregroundDial setProgress:v3];
}

- (void)_updateDialProgress
{
  timerDate = self->_timerDate;
  v4 = +[NSDate date];
  [(NSDate *)timerDate timeIntervalSinceDate:v4];
  v6 = v5;

  v7 = v6 / self->_timerDuration;
  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  v9 = fmax(v7, 0.0);
  foregroundDial = self->_foregroundDial;
  *&v9 = v9;

  [(NTKRichComplicationDialView *)foregroundDial setProgress:v9];
}

- (void)_resume
{
  textProvider = [(CLKUIColoringLabel *)self->_timerLabel textProvider];
  [textProvider setPaused:0];
  if (!self->_updateToken)
  {
    objc_initWeak(&location, self);
    textProvider2 = [(CLKUIColoringLabel *)self->_timerLabel textProvider];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1CA8;
    v7[3] = &unk_C4A0;
    objc_copyWeak(&v8, &location);
    v5 = [textProvider2 startUpdatesWithHandler:v7];
    updateToken = self->_updateToken;
    self->_updateToken = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_pause
{
  textProvider = [(CLKUIColoringLabel *)self->_timerLabel textProvider];
  [textProvider setPaused:1];
  if (self->_updateToken)
  {
    textProvider2 = [(CLKUIColoringLabel *)self->_timerLabel textProvider];
    [textProvider2 stopUpdatesForToken:self->_updateToken];

    updateToken = self->_updateToken;
    self->_updateToken = 0;
  }
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v13.receiver = self;
  v13.super_class = NTKTimerRichComplicationBaseCircularView;
  [(NTKTimerRichComplicationBaseCircularView *)&v13 transitionToMonochromeWithFraction:?];
  filterProvider = [(NTKTimerRichComplicationBaseCircularView *)self filterProvider];
  v6 = [filterProvider filtersForView:self style:-[NTKTimerRichComplicationBaseCircularView _backgroundFilterStyle](self fraction:{"_backgroundFilterStyle"), fraction}];

  if (v6)
  {
    layer = [(UIImageView *)self->_timerImageView layer];
    [layer setFilters:v6];

    layer2 = [(NTKRichComplicationDialView *)self->_backgroundDial layer];
    [layer2 setFilters:v6];

    layer3 = [(NTKRichComplicationDialView *)self->_foregroundDial layer];
    [layer3 setFilters:v6];
  }

  filterProvider2 = [(NTKTimerRichComplicationBaseCircularView *)self filterProvider];
  v11 = [filterProvider2 filtersForView:self style:-[NTKTimerRichComplicationBaseCircularView _foregroundFilterStyle](self fraction:{"_foregroundFilterStyle"), fraction}];

  if (v11)
  {
    layer4 = [(CLKUIColoringLabel *)self->_timerLabel layer];
    [layer4 setFilters:v11];
  }
}

- (void)updateMonochromeColor
{
  v11.receiver = self;
  v11.super_class = NTKTimerRichComplicationBaseCircularView;
  [(NTKTimerRichComplicationBaseCircularView *)&v11 updateMonochromeColor];
  filterProvider = [(NTKTimerRichComplicationBaseCircularView *)self filterProvider];
  v4 = [filterProvider filtersForView:self style:{-[NTKTimerRichComplicationBaseCircularView _backgroundFilterStyle](self, "_backgroundFilterStyle")}];

  if (v4)
  {
    layer = [(UIImageView *)self->_timerImageView layer];
    [layer setFilters:v4];

    layer2 = [(NTKRichComplicationDialView *)self->_backgroundDial layer];
    [layer2 setFilters:v4];

    layer3 = [(NTKRichComplicationDialView *)self->_foregroundDial layer];
    [layer3 setFilters:v4];
  }

  filterProvider2 = [(NTKTimerRichComplicationBaseCircularView *)self filterProvider];
  v9 = [filterProvider2 filtersForView:self style:{-[NTKTimerRichComplicationBaseCircularView _foregroundFilterStyle](self, "_foregroundFilterStyle")}];

  if (v9)
  {
    layer4 = [(CLKUIColoringLabel *)self->_timerLabel layer];
    [layer4 setFilters:v9];
  }
}

@end