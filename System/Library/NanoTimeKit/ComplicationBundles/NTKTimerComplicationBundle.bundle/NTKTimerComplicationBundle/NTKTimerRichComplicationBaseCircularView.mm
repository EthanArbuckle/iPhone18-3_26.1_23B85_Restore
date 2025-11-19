@interface NTKTimerRichComplicationBaseCircularView
- (NTKTimerRichComplicationBaseCircularView)initWithFamily:(int64_t)a3;
- (void)_applyPausedUpdate;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)_pause;
- (void)_resume;
- (void)_updateDialProgress;
- (void)_updatePausedDialProgress;
- (void)dealloc;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKTimerRichComplicationBaseCircularView

- (NTKTimerRichComplicationBaseCircularView)initWithFamily:(int64_t)a3
{
  v48.receiver = self;
  v48.super_class = NTKTimerRichComplicationBaseCircularView;
  v4 = [(NTKTimerRichComplicationBaseCircularView *)&v48 initWithFamily:?];
  v5 = v4;
  if (v4)
  {
    p_layoutConstants = &v4->_layoutConstants;
    v7 = [(NTKTimerRichComplicationBaseCircularView *)v4 device];
    memset(v50, 0, 64);
    memset(location, 0, sizeof(location));
    v8 = location;
    sub_2118(v7, location);
    if (a3 != 10)
    {
      if (a3 == 12)
      {
        v8 = v50;
      }

      else
      {
        v9 = _NTKLoggingObjectForDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_69D4(a3, v9);
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
    v27 = [v26 CLKFontWithAlternativePunctuation];

    [v13[6] setFont:v27];
    v28 = v13[6];
    v29 = +[UIColor whiteColor];
    [v28 setTextColor:v29];

    [v13[6] setHidden:1];
    v30 = [v13 contentView];
    [v30 addSubview:v13[6]];

    v31 = [v13 device];
    v32 = [NTKTimerBundleTimelineEntry fullColorSymbolImageProviderForDevice:v31 withOverridePointSize:v5->_layoutConstants.overridePointSize];
    v33 = v13[4];
    v13[4] = v32;

    v34 = objc_opt_new();
    v35 = v13[5];
    v13[5] = v34;

    v36 = [v13 contentView];
    [v36 addSubview:v13[5]];

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
  v3 = [(NTKTimerRichComplicationBaseCircularView *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  dialDiameter = self->_layoutConstants.dialDiameter;
  v13 = [(NTKTimerRichComplicationBaseCircularView *)self device];
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
  v27 = [(CLKUIColoringLabel *)self->_timerLabel font];
  [v27 ascender];
  *&v28 = timerLabelBottom - v28;
  v29 = ceilf(*&v28);

  [(CLKUIColoringLabel *)self->_timerLabel setFrame:(v9 - timerLabelMaxWidth) * 0.5, v29, timerLabelMaxWidth, v24];
  [(UIImageView *)self->_timerImageView setFrame:v5, v7, v9, v11];
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v23 = a3;
  if (self->_updateToken)
  {
    v5 = [(CLKUIColoringLabel *)self->_timerLabel textProvider];
    [v5 stopUpdatesForToken:self->_updateToken];

    updateToken = self->_updateToken;
    self->_updateToken = 0;
  }

  timerImageProvider = self->_timerImageProvider;
  v8 = [v23 tintColor];
  [(CLKFullColorSymbolImageProvider *)timerImageProvider setTintColor:v8];

  timerImageView = self->_timerImageView;
  v10 = [(CLKFullColorSymbolImageProvider *)self->_timerImageProvider createSymbolImage];
  [(UIImageView *)timerImageView setImage:v10];

  [(UIImageView *)self->_timerImageView setContentMode:4];
  v11 = [v23 metadata];
  v12 = [v11 objectForKeyedSubscript:@"NTKTimerComplicationMetadataTimerDateKey"];
  timerDate = self->_timerDate;
  self->_timerDate = v12;

  v14 = [v11 objectForKeyedSubscript:@"NTKTimerComplicationMetadataDurationKey"];
  [v14 doubleValue];
  self->_timerDuration = v15;

  v16 = [v11 objectForKeyedSubscript:@"NTKTimerComplicationMetaDataRemainingPausedTimeKey"];
  [v16 doubleValue];
  self->_pausedTimeRemaining = v17;

  v18 = [v11 objectForKeyedSubscript:@"NTKTimerComplicationMetadataTextProviderKey"];
  v19 = [v18 copy];

  v20 = [v11 objectForKeyedSubscript:@"NTKTimerComplicationMetaDataIsDefaultKey"];
  v21 = [v20 BOOLValue];

  v22 = [v11 objectForKeyedSubscript:@"NTKTimerComplicationMetadataStateKey"];
  if ([v22 isEqualToString:@"running"])
  {
    [(NTKTimerRichComplicationBaseCircularView *)self _updateDialProgress];
  }

  else
  {
    if (([v22 isEqualToString:@"paused"] & 1) == 0 && v21 == 1)
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

  v3 = [(NTKTimerRichComplicationBaseCircularView *)self paused];
  v4 = [(UIImageView *)self->_timerImageView layer];
  [v4 setShouldRasterize:v3];
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
  v3 = [(CLKUIColoringLabel *)self->_timerLabel textProvider];
  [v3 setPaused:0];
  if (!self->_updateToken)
  {
    objc_initWeak(&location, self);
    v4 = [(CLKUIColoringLabel *)self->_timerLabel textProvider];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1CA8;
    v7[3] = &unk_C4A0;
    objc_copyWeak(&v8, &location);
    v5 = [v4 startUpdatesWithHandler:v7];
    updateToken = self->_updateToken;
    self->_updateToken = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_pause
{
  v5 = [(CLKUIColoringLabel *)self->_timerLabel textProvider];
  [v5 setPaused:1];
  if (self->_updateToken)
  {
    v3 = [(CLKUIColoringLabel *)self->_timerLabel textProvider];
    [v3 stopUpdatesForToken:self->_updateToken];

    updateToken = self->_updateToken;
    self->_updateToken = 0;
  }
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v13.receiver = self;
  v13.super_class = NTKTimerRichComplicationBaseCircularView;
  [(NTKTimerRichComplicationBaseCircularView *)&v13 transitionToMonochromeWithFraction:?];
  v5 = [(NTKTimerRichComplicationBaseCircularView *)self filterProvider];
  v6 = [v5 filtersForView:self style:-[NTKTimerRichComplicationBaseCircularView _backgroundFilterStyle](self fraction:{"_backgroundFilterStyle"), a3}];

  if (v6)
  {
    v7 = [(UIImageView *)self->_timerImageView layer];
    [v7 setFilters:v6];

    v8 = [(NTKRichComplicationDialView *)self->_backgroundDial layer];
    [v8 setFilters:v6];

    v9 = [(NTKRichComplicationDialView *)self->_foregroundDial layer];
    [v9 setFilters:v6];
  }

  v10 = [(NTKTimerRichComplicationBaseCircularView *)self filterProvider];
  v11 = [v10 filtersForView:self style:-[NTKTimerRichComplicationBaseCircularView _foregroundFilterStyle](self fraction:{"_foregroundFilterStyle"), a3}];

  if (v11)
  {
    v12 = [(CLKUIColoringLabel *)self->_timerLabel layer];
    [v12 setFilters:v11];
  }
}

- (void)updateMonochromeColor
{
  v11.receiver = self;
  v11.super_class = NTKTimerRichComplicationBaseCircularView;
  [(NTKTimerRichComplicationBaseCircularView *)&v11 updateMonochromeColor];
  v3 = [(NTKTimerRichComplicationBaseCircularView *)self filterProvider];
  v4 = [v3 filtersForView:self style:{-[NTKTimerRichComplicationBaseCircularView _backgroundFilterStyle](self, "_backgroundFilterStyle")}];

  if (v4)
  {
    v5 = [(UIImageView *)self->_timerImageView layer];
    [v5 setFilters:v4];

    v6 = [(NTKRichComplicationDialView *)self->_backgroundDial layer];
    [v6 setFilters:v4];

    v7 = [(NTKRichComplicationDialView *)self->_foregroundDial layer];
    [v7 setFilters:v4];
  }

  v8 = [(NTKTimerRichComplicationBaseCircularView *)self filterProvider];
  v9 = [v8 filtersForView:self style:{-[NTKTimerRichComplicationBaseCircularView _foregroundFilterStyle](self, "_foregroundFilterStyle")}];

  if (v9)
  {
    v10 = [(CLKUIColoringLabel *)self->_timerLabel layer];
    [v10 setFilters:v9];
  }
}

@end