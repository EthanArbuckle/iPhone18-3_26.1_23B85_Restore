@interface NTKChronoFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_startButtonLayoutConstants;
- (BOOL)_canStartTimeScrubbing;
- (CGPoint)_dateComplicationCenterOffset;
- (CGPoint)_dateComplicationRightAlignment;
- (CGPoint)_lowerSubdialCenter;
- (CGPoint)_upperSubdialCenter;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (NTKChronoFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_buttonAlphaForEditMode:(int64_t)a3;
- (double)_chronoLabelFontSize;
- (double)_handsAlphaForEditMode:(int64_t)a3;
- (double)_keylineCornerRadiusForComplicationSlot:(id)a3;
- (double)_verticalPaddingForStatusBar;
- (id)_dateAccentColorForEditMode:(int64_t)a3;
- (id)_dateComplicationFontForStyle:(unint64_t)a3;
- (id)_dateForegroundColorForEditMode:(int64_t)a3;
- (id)_keylineViewForComplicationSlot:(id)a3;
- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_slotForUtilitySlot:(int64_t)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4;
- (int64_t)_utilitySlotForSlot:(id)a3;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (unint64_t)_layoutStyleForSlot:(id)a3;
- (unint64_t)textLayoutStyleForSlot:(int64_t)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyModeForStopwatchModelAnimated:(BOOL)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyPaletteToTimeView:(id)a3;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTimeScaleToDials:(unint64_t)a3;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationAlphasForFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8;
- (void)_endScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)_enumerateChronoModeViewsWithBlock:(id)a3;
- (void)_enumerateTimeModeViewsWithBlock:(id)a3;
- (void)_layoutForegroundContainerView;
- (void)_layoutStopwatchTimeViews;
- (void)_loadChronoModeViews;
- (void)_loadDialViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_loadTimeModeViews;
- (void)_performWristRaiseAnimation;
- (void)_prepareWristRaiseAnimation;
- (void)_reconsiderStopwatchUpdates;
- (void)_removeModeRelatedUIs;
- (void)_resetLapLabelAfterSplit;
- (void)_setDateComplicationAlpha:(double)a3 animated:(BOOL)a4;
- (void)_showAppropriateModeAnimated:(BOOL)a3;
- (void)_showChronographModeAnimated:(BOOL)a3;
- (void)_showTimeModeAnimated:(BOOL)a3;
- (void)_startScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)_startSessionButtonPressed;
- (void)_unloadDialViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationFactoryWithDateComplicationView:(id)a3;
- (void)_updateDateComplicationPositionIfNecessary;
- (void)_updateStopwatchTimeViewsMaxWidth;
- (void)dealloc;
- (void)fadeStartSessionButtonToAlpha:(double)a3 animated:(BOOL)a4;
- (void)lapAdded;
- (void)layoutSubviews;
- (void)setUserInteractionForButtonsEnabled:(BOOL)a3;
- (void)stateChanged;
- (void)updateStartSessionButtonGlyph;
- (void)updateStartSessionButtonGlyphWithCustomPalette:(id)a3;
@end

@implementation NTKChronoFaceView

- (NTKChronoFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v33.receiver = self;
  v33.super_class = NTKChronoFaceView;
  v9 = [(NTKChronoFaceView *)&v33 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [UIColor colorWithRed:0.68 green:0.71 blue:0.75 alpha:1.0];
    labelColor = v9->_labelColor;
    v9->_labelColor = v10;

    v12 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
    complicationFactory = v9->_complicationFactory;
    v9->_complicationFactory = v12;

    [(NTKUtilityComplicationFactory *)v9->_complicationFactory setDelegate:v9];
    [(NTKUtilityComplicationFactory *)v9->_complicationFactory setAccommodatesTwoTopComplications:0];
    [(NTKUtilityComplicationFactory *)v9->_complicationFactory setFaceView:v9];
    [(NTKChronoFaceView *)v9 setComplicationFactory:v9->_complicationFactory];
    v14 = [(NTKChronoFaceView *)v9 device];
    sub_EF68(v14, v32);
    v15 = v32[0];

    [(NTKUtilityComplicationFactory *)v9->_complicationFactory setNormalSidePadding:v15];
    [(NTKUtilityComplicationFactory *)v9->_complicationFactory setNormalVerticalPadding:v15];
    v16 = [(NTKChronoFaceView *)v9 device];
    sub_EF68(v16, &v31);
    v17 = *(&v31 + 1);

    [(NTKUtilityComplicationFactory *)v9->_complicationFactory setNormalCircularPadding:v17, v17];
    v18 = v9->_complicationFactory;
    v19 = [(NTKChronoFaceView *)v9 device];
    sub_EF68(v19, &v29);
    [(NTKUtilityComplicationFactory *)v18 setSelectedKeylineHeight:v30];

    v20 = v9->_complicationFactory;
    v21 = [(NTKChronoFaceView *)v9 device];
    sub_EF68(v21, &v27);
    [(NTKUtilityComplicationFactory *)v20 setDateKeylineMaxWidth:v28];

    v22 = v9->_complicationFactory;
    v23 = [(NTKChronoFaceView *)v9 device];
    sub_EF68(v23, &v25);
    [(NTKUtilityComplicationFactory *)v22 setDateHorizontalCenterOffset:v26];
  }

  return v9;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v26 layoutSubviews];
  v3 = [(NTKChronoFaceView *)self contentView];
  [v3 bounds];
  CLKRectGetCenter();
  v5 = v4;
  v7 = v6;

  [(UIView *)self->_dialBackgroundView setCenter:v5, v7];
  [(UIView *)self->_dialContainerView setCenter:v5, v7];
  [(UIView *)self->_dialContainerView bounds];
  CLKRectGetCenter();
  v9 = v8;
  v11 = v10;
  [(NTKChronoDialView *)self->_chronoDialView setCenter:?];
  [(NTKChronoDialView *)self->_timeDialView setCenter:v9, v11];
  [(NTKChronoFaceView *)self _upperSubdialCenter];
  [(NTKChronoDialView *)self->_upperSubdialView setCenter:?];
  [(NTKChronoFaceView *)self _lowerSubdialCenter];
  [(NTKChronoDialView *)self->_lowerSubdialView setCenter:?];
  v12 = [(NTKChronoFaceView *)self device];
  sub_F2A0(v12, v24);
  v13 = v25;

  [(NTKChronoFaceView *)self bounds];
  v15 = v14 * 0.5;
  [(NTKChronoFaceView *)self bounds];
  v17 = v16 * 0.5 - v13;
  v18 = [(NTKChronoFaceView *)self timeView];
  [v18 setUpperDialCenter:{v15, v17}];

  [(NTKChronoFaceView *)self bounds];
  v20 = v19 * 0.5;
  [(NTKChronoFaceView *)self bounds];
  v22 = v13 + v21 * 0.5;
  v23 = [(NTKChronoFaceView *)self timeView];
  [v23 setLowerDialCenter:{v20, v22}];
}

- (void)dealloc
{
  [(NTKChronoFaceView *)self _stopStopwatchUpdates];
  v3.receiver = self;
  v3.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v3 dealloc];
}

- (void)_startScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(NTKChronoFaceView *)self setUserInteractionForButtonsEnabled:0];
  v7.receiver = self;
  v7.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v7 _startScrubbingAnimated:v4 withCompletion:v6];

  [(NTKChronoFaceView *)self fadeStartSessionButtonToAlpha:v4 animated:NTKEditModeDimmedAlpha];
}

- (void)_endScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v6 _endScrubbingAnimated:a3 withCompletion:a4];
  [(NTKChronoFaceView *)self setUserInteractionForButtonsEnabled:1];
  [(NTKChronoFaceView *)self fadeStartSessionButtonToAlpha:v4 animated:1.0];
}

- (CGPoint)_upperSubdialCenter
{
  v3 = [(NTKChronoFaceView *)self device];
  sub_F2A0(v3, v10);
  v4 = v11;

  [(UIView *)self->_dialContainerView bounds];
  v6 = v5 * 0.5;
  [(UIView *)self->_dialContainerView bounds];
  v8 = v7 * 0.5 - v4;
  v9 = v6;
  result.y = v8;
  result.x = v9;
  return result;
}

- (CGPoint)_lowerSubdialCenter
{
  v3 = [(NTKChronoFaceView *)self device];
  sub_F2A0(v3, v10);
  v4 = v11;

  [(UIView *)self->_dialContainerView bounds];
  v6 = v5 * 0.5;
  [(UIView *)self->_dialContainerView bounds];
  v8 = v4 + v7 * 0.5;
  v9 = v6;
  result.y = v8;
  result.x = v9;
  return result;
}

- (void)_applyTimeScaleToDials:(unint64_t)a3
{
  if (!self->_dialContainerView)
  {
    return;
  }

  chronoDialView = self->_chronoDialView;
  if (!chronoDialView)
  {
    goto LABEL_5;
  }

  if ([(NTKChronoDialView *)chronoDialView timescale]!= a3)
  {
    chronoDialView = self->_chronoDialView;
LABEL_5:
    [(NTKChronoDialView *)chronoDialView removeFromSuperview];
    v6 = [(NTKChronoFaceView *)self device];
    v7 = [NTKChronoDialView createDialViewForTimescale:a3 device:v6];
    v8 = self->_chronoDialView;
    self->_chronoDialView = v7;

    v9 = [(NTKChronoFaceView *)self _isStopwatchUIVisible];
    v10 = 1.0;
    if ((v9 & 1) == 0)
    {
      v10 = [(NTKChronoFaceView *)self editing];
    }

    [(NTKChronoDialView *)self->_chronoDialView setAlpha:v10];
    [(NTKChronoDialView *)self->_chronoDialView applyPalette:self->_palette];
    [(UIView *)self->_dialContainerView addSubview:self->_chronoDialView];
  }

  upperSubdialView = self->_upperSubdialView;
  if (upperSubdialView)
  {
    if ([(NTKChronoDialView *)upperSubdialView timescale]== a3)
    {
      return;
    }

    upperSubdialView = self->_upperSubdialView;
  }

  [(NTKChronoDialView *)upperSubdialView removeFromSuperview];
  v12 = [(NTKChronoFaceView *)self device];
  v13 = [NTKChronoDialView createSubdialViewForTimescale:a3 device:v12];
  v14 = self->_upperSubdialView;
  self->_upperSubdialView = v13;

  [(NTKChronoFaceView *)self _upperSubdialCenter];
  [(NTKChronoDialView *)self->_upperSubdialView setCenter:?];
  [(NTKChronoDialView *)self->_upperSubdialView applyPalette:self->_palette];
  dialContainerView = self->_dialContainerView;
  v16 = self->_upperSubdialView;

  [(UIView *)dialContainerView addSubview:v16];
}

- (void)_loadDialViews
{
  v3 = [(NTKChronoFaceView *)self device];
  sub_F2A0(v3, v26);
  v4 = v27;

  if (!self->_dialBackgroundView)
  {
    v5 = [[UIView alloc] initWithFrame:{0.0, 0.0, v4, v4}];
    dialBackgroundView = self->_dialBackgroundView;
    self->_dialBackgroundView = v5;

    v7 = [(UIView *)self->_dialBackgroundView layer];
    [v7 setCornerRadius:v4 * 0.5];

    v8 = [(NTKChronoFaceView *)self contentView];
    [v8 addSubview:self->_dialBackgroundView];
  }

  if (!self->_dialContainerView)
  {
    v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, v4, v4}];
    dialContainerView = self->_dialContainerView;
    self->_dialContainerView = v9;

    v11 = [(UIView *)self->_dialContainerView layer];
    [v11 setShouldRasterize:1];

    v12 = [(NTKChronoFaceView *)self device];
    [v12 screenScale];
    v14 = v13;
    v15 = [(UIView *)self->_dialContainerView layer];
    [v15 setRasterizationScale:v14];

    v16 = [(UIView *)self->_dialContainerView layer];
    [v16 setOpaque:1];

    [(NTKChronoFaceView *)self _applyTimeScaleToDials:self->_timeScale];
    v17 = [(NTKChronoFaceView *)self contentView];
    [v17 insertSubview:self->_dialContainerView aboveSubview:self->_dialBackgroundView];
  }

  if (!self->_timeDialView)
  {
    v18 = [(NTKChronoFaceView *)self device];
    v19 = [NTKChronoDialView createClockDialViewForDevice:v18];
    timeDialView = self->_timeDialView;
    self->_timeDialView = v19;

    [(NTKChronoDialView *)self->_timeDialView setAlpha:([(NTKChronoFaceView *)self _isStopwatchUIVisible]^ 1)];
    [(NTKChronoDialView *)self->_timeDialView applyPalette:self->_palette];
    [(UIView *)self->_dialContainerView addSubview:self->_timeDialView];
  }

  if (!self->_lowerSubdialView)
  {
    v21 = [(NTKChronoFaceView *)self device];
    v22 = [NTKChronoDialView createClockSubdialViewForDevice:v21];
    lowerSubdialView = self->_lowerSubdialView;
    self->_lowerSubdialView = v22;

    [(NTKChronoDialView *)self->_lowerSubdialView applyPalette:self->_palette];
    v24 = self->_dialContainerView;
    v25 = self->_lowerSubdialView;

    [(UIView *)v24 addSubview:v25];
  }
}

- (void)_unloadDialViews
{
  [(NTKChronoDialView *)self->_lowerSubdialView removeFromSuperview];
  lowerSubdialView = self->_lowerSubdialView;
  self->_lowerSubdialView = 0;

  [(NTKChronoDialView *)self->_timeDialView removeFromSuperview];
  timeDialView = self->_timeDialView;
  self->_timeDialView = 0;

  [(NTKChronoDialView *)self->_upperSubdialView removeFromSuperview];
  upperSubdialView = self->_upperSubdialView;
  self->_upperSubdialView = 0;

  [(NTKChronoDialView *)self->_chronoDialView removeFromSuperview];
  chronoDialView = self->_chronoDialView;
  self->_chronoDialView = 0;

  [(UIView *)self->_dialContainerView removeFromSuperview];
  dialContainerView = self->_dialContainerView;
  self->_dialContainerView = 0;

  [(UIView *)self->_dialBackgroundView removeFromSuperview];
  dialBackgroundView = self->_dialBackgroundView;
  self->_dialBackgroundView = 0;
}

- (void)_loadChronoModeViews
{
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  memset(v42, 0, sizeof(v42));
  v3 = [(NTKChronoFaceView *)self device];
  sub_F2A0(v3, v42);

  v4 = *&v43;
  if (!self->_pauseButton)
  {
    v5 = [CLKUIChronoButton alloc];
    v6 = [v5 initWithDiameter:*(&v45 + 1)];
    pauseButton = self->_pauseButton;
    self->_pauseButton = v6;

    [(CLKUIChronoButton *)self->_pauseButton addTarget:self action:"_pauseButtonPressed" forControlEvents:64];
    [(CLKUIChronoButton *)self->_pauseButton setTouchEdgeInsets:v4, v4, v4, v4];
    v8 = [(NTKChronoFaceView *)self foregroundContainerView];
    [v8 addSubview:self->_pauseButton];
  }

  if (!self->_lapResetButton)
  {
    v9 = [CLKUIChronoButton alloc];
    v10 = [v9 initWithDiameter:*(&v45 + 1)];
    lapResetButton = self->_lapResetButton;
    self->_lapResetButton = v10;

    v12 = [UIColor colorWithRed:0.949019608 green:0.956862745 blue:0.988235294 alpha:1.0];
    [(CLKUIChronoButton *)self->_lapResetButton setColor:v12];

    v13 = [UIColor colorWithWhite:1.0 alpha:0.27];
    [(CLKUIChronoButton *)self->_lapResetButton setHighlightColor:v13];

    v14 = [(CLKUIChronoButton *)self->_lapResetButton color];
    [(CLKUIChronoButton *)self->_lapResetButton setRingColor:v14];

    [(CLKUIChronoButton *)self->_lapResetButton addTarget:self action:"_lapResetButtonPressed" forControlEvents:64];
    [(CLKUIChronoButton *)self->_lapResetButton setTouchEdgeInsets:v4, v4, v4, v4];
    v15 = [(NTKChronoFaceView *)self foregroundContainerView];
    [v15 addSubview:self->_lapResetButton];
  }

  [(NTKChronoFaceView *)self _chronoLabelFontSize];
  v17 = v16;
  objc_initWeak(&location, self);
  if (!self->_totalTimeLabel)
  {
    v18 = [(NTKChronoFaceView *)self _timeLabelWithFontSize:v17];
    totalTimeLabel = self->_totalTimeLabel;
    self->_totalTimeLabel = v18;

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_AE20;
    v39[3] = &unk_1C8C0;
    objc_copyWeak(&v40, &location);
    [(CLKUIColoringLabel *)self->_totalTimeLabel setNowProvider:v39];
    v20 = [(NTKChronoFaceView *)self foregroundContainerView];
    [v20 addSubview:self->_totalTimeLabel];

    objc_destroyWeak(&v40);
  }

  if (!self->_totalLabel)
  {
    v21 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    totalLabel = self->_totalLabel;
    self->_totalLabel = v21;

    v23 = [CLKFont systemFontOfSize:v17];
    v24 = [v23 CLKFontWithMonospacedNumbers];
    [(UILabel *)self->_totalLabel setFont:v24];

    v25 = +[UIColor clearColor];
    [(UILabel *)self->_totalLabel setBackgroundColor:v25];

    [(UILabel *)self->_totalLabel setTextColor:self->_labelColor];
    v26 = [NTKChronographFaceBundle localizedStringForKey:@"CHRONO_TOTAL" comment:@"TOTAL"];
    [(UILabel *)self->_totalLabel setText:v26];

    [(UILabel *)self->_totalLabel sizeToFit];
    v27 = [(NTKChronoFaceView *)self foregroundContainerView];
    [v27 addSubview:self->_totalLabel];
  }

  if (!self->_lapLabel)
  {
    v28 = [[_LapLabel alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    lapLabel = self->_lapLabel;
    self->_lapLabel = v28;

    v30 = [CLKFont systemFontOfSize:v17];
    v31 = [v30 CLKFontWithMonospacedNumbers];
    [(_LapLabel *)self->_lapLabel setFont:v31];

    v32 = +[UIColor clearColor];
    [(_LapLabel *)self->_lapLabel setBackgroundColor:v32];

    [(_LapLabel *)self->_lapLabel setTextColor:self->_labelColor];
    v33 = [(NTKChronoFaceView *)self foregroundContainerView];
    [v33 addSubview:self->_lapLabel];
  }

  if (!self->_lapTimeLabel)
  {
    v34 = [(NTKChronoFaceView *)self _timeLabelWithFontSize:v17];
    lapTimeLabel = self->_lapTimeLabel;
    self->_lapTimeLabel = v34;

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_AE90;
    v37[3] = &unk_1C8C0;
    objc_copyWeak(&v38, &location);
    [(CLKUIColoringLabel *)self->_lapTimeLabel setNowProvider:v37];
    v36 = [(NTKChronoFaceView *)self foregroundContainerView];
    [v36 addSubview:self->_lapTimeLabel];

    objc_destroyWeak(&v38);
  }

  objc_destroyWeak(&location);
}

- (double)_chronoLabelFontSize
{
  v2 = [(NTKChronoFaceView *)self device];
  if ([v2 sizeClass])
  {
    v3 = 13.5;
  }

  else
  {
    v3 = 12.5;
  }

  return v3;
}

- (void)_loadTimeModeViews
{
  v3 = [(NTKChronoFaceView *)self device];
  sub_F2A0(v3, v10);
  v4 = v11;

  if (!self->_startSessionButton)
  {
    v5 = [NTKStopwatchButton alloc];
    v6 = [(NTKChronoFaceView *)self device];
    v7 = [(NTKStopwatchButton *)v5 initWithFrame:v6 forDevice:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    startSessionButton = self->_startSessionButton;
    self->_startSessionButton = v7;

    [(NTKStopwatchButton *)self->_startSessionButton addTarget:self action:"_startSessionButtonPressed" forControlEvents:1];
    [(NTKStopwatchButton *)self->_startSessionButton setTouchEdgeInsets:v4, v4, v4, v4];
    v9 = [(NTKChronoFaceView *)self foregroundContainerView];
    [v9 addSubview:self->_startSessionButton];
  }
}

- (void)_loadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v4 _loadSnapshotContentViews];
  [(NTKChronoFaceView *)self _loadDialViews];
  [(NTKChronoFaceView *)self _showAppropriateModeAnimated:0];
  v3 = [(NTKChronoFaceView *)self delegate];
  [v3 faceViewWantsUnadornedSnapshotViewRemoved];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKChronoFaceView *)self _unloadDialViews];
  [(NTKChronoFaceView *)self _removeModeRelatedUIs];
  [(NTKChronoFaceView *)self _stopStopwatchUpdates];
  self->_currentMode = 0;
}

- (void)_loadLayoutRules
{
  [(NTKChronoFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24[0] = NTKComplicationSlotTopLeft;
  v24[1] = NTKComplicationSlotBottomLeft;
  v24[2] = NTKComplicationSlotBottomRight;
  v11 = [NSArray arrayWithObjects:v24 count:3, 0];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [(NTKChronoFaceView *)self complicationLayoutforSlot:v16];
        [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v17 forSlot:[(NTKChronoFaceView *)self _utilitySlotForSlot:v16] withBounds:v4, v6, v8, v10];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }

  v18 = NTKComplicationSlotDate;
  v19 = [(NTKChronoFaceView *)self complicationLayoutforSlot:NTKComplicationSlotDate];
  [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v19 forSlot:[(NTKChronoFaceView *)self _utilitySlotForSlot:v18] withBounds:v4, v6, v8, v10];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_startButtonLayoutConstants
{
  v2 = [(NTKChronoFaceView *)self device];
  v3 = sub_F908(v2, v2);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (void)_layoutForegroundContainerView
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v3 = [(NTKChronoFaceView *)self device];
  sub_F2A0(v3, &v15);

  v4 = [(NTKChronoFaceView *)self foregroundContainerView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  [(NTKChronoFaceView *)self _startButtonLayoutConstants];
  [(NTKStopwatchButton *)self->_startSessionButton ntk_setBoundsAndPositionFromFrame:v6 - v9 - v10, v9, v10, v10];
  v11 = *(&v21 + 1);
  v12 = *(&v18 + 1);
  v13 = v6 - *(&v18 + 1) - *(&v21 + 1);
  [(CLKUIChronoButton *)self->_pauseButton ntk_setBoundsAndPositionFromFrame:v13, *(&v18 + 1), *(&v21 + 1), *(&v21 + 1)];
  [(CLKUIChronoButton *)self->_lapResetButton ntk_setBoundsAndPositionFromFrame:v13, v8 - v12 - v11, v11, v11];
  [(UILabel *)self->_totalLabel bounds];
  [(UILabel *)self->_totalLabel ntk_setBoundsAndPositionFromFrame:*(&v15 + 1), *&v16];
  [(_LapLabel *)self->_lapLabel bounds];
  [(_LapLabel *)self->_lapLabel ntk_setBoundsAndPositionFromFrame:*(&v16 + 1), v8 - v14 - *&v17];

  [(NTKChronoFaceView *)self _layoutStopwatchTimeViews];
}

- (void)_layoutStopwatchTimeViews
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  v3 = [(NTKChronoFaceView *)self device];
  sub_F2A0(v3, v25);

  v4 = [(NTKChronoFaceView *)self foregroundContainerView];
  [v4 bounds];
  v6 = v5;

  [(CLKUIColoringLabel *)self->_totalTimeLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_totalTimeLabel bounds];
  v8 = v7;
  v10 = v9;
  v11 = [(NTKChronoFaceView *)self device];
  CLKFloorForDevice();
  v13 = v12;

  [(UILabel *)self->_totalLabel frame];
  MaxX = CGRectGetMaxX(v32);
  v15 = *&v27;
  v16 = MaxX + *&v27;
  if (v13 >= v16)
  {
    v16 = v13;
  }

  [(CLKUIColoringLabel *)self->_totalTimeLabel ntk_setBoundsAndPositionFromFrame:v16, *v25, v8, v10];
  [(CLKUIColoringLabel *)self->_lapTimeLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_lapTimeLabel bounds];
  v18 = v17;
  v20 = v19;
  v21 = [(NTKChronoFaceView *)self device];
  CLKFloorForDevice();
  v23 = v22;

  [(_LapLabel *)self->_lapLabel frame];
  v24 = v15 + CGRectGetMaxX(v33);
  if (v23 >= v24)
  {
    v24 = v23;
  }

  [(CLKUIColoringLabel *)self->_lapTimeLabel ntk_setBoundsAndPositionFromFrame:v24, v6 - v20 - *(&v26 + 1), v18, v20];

  [(NTKChronoFaceView *)self _updateStopwatchTimeViewsMaxWidth];
}

- (void)_updateStopwatchTimeViewsMaxWidth
{
  [(UILabel *)self->_totalLabel frame];
  MaxX = CGRectGetMaxX(v10);
  [(_LapLabel *)self->_lapLabel frame];
  v4 = CGRectGetMaxX(v11);
  v5 = [(NTKChronoFaceView *)self foregroundContainerView];
  [v5 bounds];
  v7 = v6;

  [(CLKUIColoringLabel *)self->_totalTimeLabel setMaxWidth:v7 - MaxX];
  lapTimeLabel = self->_lapTimeLabel;

  [(CLKUIColoringLabel *)lapTimeLabel setMaxWidth:v7 - v4];
}

- (BOOL)_canStartTimeScrubbing
{
  v2 = [(NTKChronoFaceView *)self timeView];
  v3 = v2 == 0;

  return v3;
}

- (int64_t)_utilitySlotForSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:NTKComplicationSlotTopLeft])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:NTKComplicationSlotBottomLeft])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:NTKComplicationSlotBottomRight])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:NTKComplicationSlotDate])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_slotForUtilitySlot:(int64_t)a3
{
  v4 = 0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v5 = &NTKComplicationSlotBottomRight;
    }

    else
    {
      if (a3 != 12)
      {
        goto LABEL_11;
      }

      v5 = &NTKComplicationSlotDate;
    }
  }

  else if (a3 == 1)
  {
    v5 = &NTKComplicationSlotTopLeft;
  }

  else
  {
    if (a3 != 3)
    {
      goto LABEL_11;
    }

    v5 = &NTKComplicationSlotBottomLeft;
  }

  v4 = *v5;
LABEL_11:

  return v4;
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  complicationFactory = self->_complicationFactory;
  v9 = a5;
  v10 = a3;
  v11 = [(NTKUtilityComplicationFactory *)complicationFactory newViewForComplication:v10 family:a4 forSlot:[(NTKChronoFaceView *)self _utilitySlotForSlot:v9]];

  [(NTKChronoFaceView *)self _configureComplicationView:v11 forSlot:v9];
  LODWORD(v10) = [v9 isEqualToString:NTKComplicationSlotDate];

  if (v10)
  {
    [v11 sizeToFit];
  }

  return v11;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v12 _configureComplicationView:v6 forSlot:v7];
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v8 = v6;
    [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundAlphaForEditing:[(NTKChronoFaceView *)self editing]];
    [v8 setForegroundAlpha:?];
    [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundImageAlphaForEditing:[(NTKChronoFaceView *)self editing]];
    [v8 setForegroundImageAlpha:?];
    [v8 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKChronoFaceView _utilitySlotForSlot:](self, "_utilitySlotForSlot:", v7))}];
    if ([v7 isEqualToString:NTKComplicationSlotDate])
    {
      if (([(NTKChronoFaceView *)self editing]& 1) != 0)
      {
        v9 = +[UIColor whiteColor];
        [v8 setForegroundColor:v9];

        +[UIColor whiteColor];
      }

      else
      {
        v10 = [(NTKChronoPalette *)self->_palette labelColor];
        [v8 setForegroundColor:v10];

        [(NTKChronoPalette *)self->_palette dateComplicationColor];
      }
      v11 = ;
      [v8 setAccentColor:v11];

      [(NTKChronoFaceView *)self _updateComplicationFactoryWithDateComplicationView:v8];
    }
  }
}

- (unint64_t)_layoutStyleForSlot:(id)a3
{
  if ([a3 isEqualToString:NTKComplicationSlotDate])
  {
    return 0;
  }

  v5 = [(NTKChronoFaceView *)self device];
  v4 = [v5 deviceCategory] != &dword_0 + 1;

  return v4;
}

- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8
{
  v16 = a8;
  if ([(NTKChronoFaceView *)self _layoutStyleForSlot:?]== &dword_0 + 1)
  {
    v14 = [(NTKChronoFaceView *)self _utilitySlotForSlot:v16];
    v15 = [(NTKChronoFaceView *)self device];
    [NTKUtilityComplicationFactory curvedCircleRadius:a3 centerAngle:a4 maxAngularWidth:a5 circleCenter:a6 interior:a7 forSlot:v14 forDevice:v15];
  }
}

- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4
{
  complicationFactory = self->_complicationFactory;
  v6 = [(NTKChronoFaceView *)self _utilitySlotForSlot:a4];

  return [(NTKUtilityComplicationFactory *)complicationFactory layoutOverrideForComplicationType:a3 inSlot:v6];
}

- (id)_keylineViewForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKUtilityComplicationFactory *)self->_complicationFactory keylineViewForSlot:[(NTKChronoFaceView *)self _utilitySlotForSlot:v4]];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKChronoFaceView;
    v7 = [(NTKChronoFaceView *)&v10 _keylineViewForComplicationSlot:v4];
  }

  v8 = v7;

  return v8;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:NTKComplicationSlotDate])
  {
    NTKKeylineCornerRadiusSmall();
  }

  else
  {
    [(NTKUtilityComplicationFactory *)self->_complicationFactory keylineCornerRadiusForSlot:[(NTKChronoFaceView *)self _utilitySlotForSlot:v4]];
  }

  v6 = v5;

  return v6;
}

- (void)_configureForEditMode:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v7 _configureForEditMode:?];
  v5 = [(NTKChronoFaceView *)self timeView];
  [(NTKChronoFaceView *)self _handsAlphaForEditMode:a3];
  [v5 setAlpha:?];

  [(NTKChronoFaceView *)self _configureComplicationAlphasForFraction:a3 fromEditMode:a3 toEditMode:0.0];
  v6 = [(UIView *)self->_dialContainerView layer];
  [v6 setShouldRasterize:a3 == 0];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v10.receiver = self;
  v10.super_class = NTKChronoFaceView;
  [NTKChronoFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  v9 = [(NTKChronoFaceView *)self timeView];
  [(NTKChronoFaceView *)self _handsAlphaForEditMode:a4];
  [(NTKChronoFaceView *)self _handsAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v9 setAlpha:?];

  [(NTKChronoFaceView *)self _configureComplicationAlphasForFraction:a4 fromEditMode:a5 toEditMode:a3];
}

- (void)_configureComplicationAlphasForFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [(NTKChronoFaceView *)self _buttonAlphaForEditMode:?];
  [(NTKChronoFaceView *)self _buttonAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKStopwatchButton *)self->_startSessionButton setAlpha:?];
  [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundAlphaForTransitionFraction:a4 fromEditMode:a5 toEditMode:a3];
  v10 = v9;
  [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundImageAlphaForTransitionFraction:a4 fromEditMode:a5 toEditMode:a3];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_C12C;
  v12[3] = &unk_1C8E8;
  v12[5] = v10;
  v12[6] = v11;
  v12[4] = self;
  v12[7] = a4;
  v12[8] = a5;
  *&v12[9] = a3;
  [(NTKChronoFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v12];
  if (a4 == 11 || a5 == 11)
  {
    CLKCompressFraction();
    [(NTKChronoDialView *)self->_timeDialView setAlpha:?];
    CLKCompressFraction();
    [(NTKChronoDialView *)self->_chronoDialView setAlpha:?];
    [(NTKChronoDialView *)self->_chronoDialView setHidden:0];
  }
}

- (double)_buttonAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (!a3)
  {
    return 1.0;
  }

  return result;
}

- (double)_handsAlphaForEditMode:(int64_t)a3
{
  if (a3 == 11)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (a3 == 1)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 11)
  {
    v5 = [(NTKChronoFaceView *)self device:11];
    sub_F2A0(v5, v25);

    v6 = [(NTKChronoFaceView *)self timeView];
    [v6 center];
    v7 = [(NTKChronoFaceView *)self device];
    CLKRectCenteredAboutPointForDevice();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = NTKChronoFaceView;
    [(NTKChronoFaceView *)&v24 _relativeKeylineFrameForCustomEditMode:a3 slot:a4];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
  }

  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)_dateForegroundColorForEditMode:(int64_t)a3
{
  if (a3 == 1)
  {
    +[UIColor whiteColor];
  }

  else
  {
    [(NTKChronoPalette *)self->_palette labelColor];
  }
  v3 = ;

  return v3;
}

- (id)_dateAccentColorForEditMode:(int64_t)a3
{
  if (a3 == 1)
  {
    +[UIColor whiteColor];
  }

  else
  {
    [(NTKChronoPalette *)self->_palette dateComplicationColor];
  }
  v3 = ;

  return v3;
}

- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 11)
  {
    [(NTKChronoFaceView *)self _faceEditingScaleForEditMode:11 slot:a4];
    v5 = [(NTKChronoFaceView *)self device];
    sub_F2A0(v5, v9);
    v6 = NTKKeylineViewWithCircle();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKChronoFaceView;
    v6 = [(NTKChronoFaceView *)&v8 _keylineViewForCustomEditMode:a3 slot:a4];
  }

  return v6;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 11)
  {
    return 148;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKChronoFaceView;
  return [(NTKChronoFaceView *)&v7 _keylineLabelAlignmentForCustomEditMode:a3 slot:a4];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v21.receiver = self;
  v21.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v21 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  NTKLargeElementScaleForBreathingFraction();
  memset(&v20, 0, sizeof(v20));
  CGAffineTransformMakeScale(&v20, v7, v7);
  v8 = a4 & 0xFFFFFFFFFFFFFFFELL;
  v9 = [(NTKChronoFaceView *)self timeView];
  v10 = v9;
  if (v8 == 10)
  {
    v19 = v20;
    [v9 setTransform:&v19];

    v11 = [(NTKChronoFaceView *)self contentView];
    v19 = v20;
    [v11 setTransform:&v19];

    v12 = [(NTKChronoFaceView *)self dialComplicationContainerView];
    v13 = v12;
    *&v19.a = *&v20.a;
    *&v19.c = *&v20.c;
    v14 = *&v20.tx;
  }

  else
  {
    v17 = *&CGAffineTransformIdentity.c;
    *&v19.a = *&CGAffineTransformIdentity.a;
    v18 = *&v19.a;
    *&v19.c = v17;
    *&v19.tx = *&CGAffineTransformIdentity.tx;
    v16 = *&v19.tx;
    [v9 setTransform:&v19];

    v15 = [(NTKChronoFaceView *)self contentView];
    *&v19.a = v18;
    *&v19.c = v17;
    *&v19.tx = v16;
    [v15 setTransform:&v19];

    v12 = [(NTKChronoFaceView *)self dialComplicationContainerView];
    v13 = v12;
    *&v19.a = v18;
    *&v19.c = v17;
    v14 = v16;
  }

  *&v19.tx = v14;
  [v12 setTransform:&v19];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v16.receiver = self;
  v16.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v16 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeScale(&v15, v12, v12);
    v13 = [(NTKChronoFaceView *)self timeView];
    v14 = v15;
    [v13 setTransform:&v14];

    v11 = [(NTKChronoFaceView *)self contentView];
    v9 = v11;
    v14 = v15;
    v10 = &v14;
  }

  else
  {
    if (a4 != 11)
    {
      return;
    }

    NTKScaleForRubberBandingFraction();
    v8 = v7;
    v9 = [(NTKChronoFaceView *)self contentView];
    CGAffineTransformMakeScale(&v15, v8, v8);
    v10 = &v15;
    v11 = v9;
  }

  [v11 setTransform:{v10, *&v14.a, *&v14.c, *&v14.tx}];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v13 _applyOption:v8 forCustomEditMode:a4 slot:a5];
  if (a4 == 11)
  {
    v12 = [v8 timeScale];
    self->_timeScale = v12;
    [(NTKChronoFaceView *)self _applyTimeScaleToDials:v12];
    v11 = [(NTKChronoFaceView *)self timeView];
    [v11 setTimeScale:v12];
    goto LABEL_5;
  }

  if (a4 == 10)
  {
    v9 = [(NTKChronoFaceView *)self device];
    v10 = [(NTKChronoFaceView *)self faceColorPalette];
    v11 = [NTKChronoPalette paletteForDevice:v9 withFaceColorPalette:v10];

    [(NTKChronoFaceView *)self _applyPaletteToTimeView:v11];
    [(NTKChronoFaceView *)self updateStartSessionButtonGlyph];
LABEL_5:
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v34.receiver = self;
  v34.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v34 _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:a7 slot:a3];
  if (a6 == 11)
  {
    v23 = [v12 timeScale];
    v24 = [v13 timeScale];
    if (a3 >= 0.5)
    {
      v27 = v24;
      CLKMapFractionIntoRange();
      v26 = v28;
      v23 = v27;
    }

    else
    {
      CLKMapFractionIntoRange();
      v26 = v25;
    }

    [(NTKChronoFaceView *)self _applyTimeScaleToDials:v23];
    CLKMapFractionIntoRange();
    v30 = v29;
    [(UIView *)self->_dialContainerView setAlpha:v26];
    CGAffineTransformMakeScale(&v33, v30, v30);
    dialContainerView = self->_dialContainerView;
    v32 = v33;
    [(UIView *)dialContainerView setTransform:&v32];
  }

  else if (a6 == 10)
  {
    v14 = [(NTKChronoFaceView *)self device];
    v15 = [(NTKChronoFaceView *)self interpolatedColorPalette];
    v16 = [v15 fromPalette];
    v17 = [NTKChronoPalette paletteForDevice:v14 withFaceColorPalette:v16];

    v18 = [(NTKChronoFaceView *)self device];
    v19 = [(NTKChronoFaceView *)self interpolatedColorPalette];
    v20 = [v19 toPalette];
    v21 = [NTKChronoPalette paletteForDevice:v18 withFaceColorPalette:v20];

    v22 = [NTKChronoPalette interpolationFromPalette:v17 toPalette:v21 fraction:a3];
    [(NTKChronoFaceView *)self _applyPaletteToTimeView:v22];
    [(NTKChronoFaceView *)self updateStartSessionButtonGlyph];
  }
}

- (void)updateStartSessionButtonGlyph
{
  v3 = [(NTKChronoPalette *)self->_palette glyphColor];
  [(NTKStopwatchButton *)self->_startSessionButton setGlyphColor:v3];

  v4 = [(NTKChronoPalette *)self->_palette glyphBackgroundColor];
  [(NTKStopwatchButton *)self->_startSessionButton setGlyphBackgroundColor:v4];
}

- (void)updateStartSessionButtonGlyphWithCustomPalette:(id)a3
{
  v4 = a3;
  v5 = [v4 glyphColor];
  [(NTKStopwatchButton *)self->_startSessionButton setGlyphColor:v5];

  v6 = [v4 glyphBackgroundColor];

  [(NTKStopwatchButton *)self->_startSessionButton setGlyphBackgroundColor:v6];
}

- (void)setUserInteractionForButtonsEnabled:(BOOL)a3
{
  v3 = a3;
  [(NTKStopwatchButton *)self->_startSessionButton setUserInteractionEnabled:?];
  [(CLKUIChronoButton *)self->_pauseButton setUserInteractionEnabled:v3];
  lapResetButton = self->_lapResetButton;

  [(CLKUIChronoButton *)lapResetButton setUserInteractionEnabled:v3];
}

- (void)fadeStartSessionButtonToAlpha:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_CE44;
  v7[3] = &unk_1C910;
  objc_copyWeak(v8, &location);
  v8[1] = *&a3;
  v6 = objc_retainBlock(v7);
  if (v4)
  {
    [UIControl performWithoutAnimation:v6];
  }

  else
  {
    [UIControl animateWithDuration:v6 animations:0.0];
  }

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)_applyDataMode
{
  v5.receiver = self;
  v5.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v5 _applyDataMode];
  [(NTKChronoFaceView *)self _showAppropriateModeAnimated:0];
  v3 = [(NTKChronoFaceView *)self dataMode];
  v4 = 0;
  if (v3 == &dword_0 + 1)
  {
    v4 = [(NTKChronoFaceView *)self timeScrubbing]^ 1;
  }

  [(NTKChronoFaceView *)self setUserInteractionForButtonsEnabled:v4];
  [(NTKChronoFaceView *)self _reconsiderStopwatchUpdates];
  [(NTKChronoFaceView *)self _synchronizeChronoTimeLabelsWithStopwatch];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 11)
  {
    return &off_1DFF0;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = v8;
  if (a4 == 11)
  {
    v10 = v8;
    v11 = [a5 objectForKeyedSubscript:&off_1DB00];
    if (!qword_234C8)
    {
      v12 = objc_opt_new();
      v13 = qword_234C8;
      qword_234C8 = v12;
    }

    v14 = [NSString stringWithFormat:@"%@-%@", v10, v11];
    v15 = [qword_234C8 objectForKey:v14];
    if (!v15)
    {
      v61 = v14;
      v16 = [(NTKChronoFaceView *)self faceColorPalette];
      v17 = [v16 copy];

      v18 = [NTKFaceColorPaletteConfiguration alloc];
      v62 = v11;
      v19 = [v11 pigmentEditOption];
      v20 = [v18 initWithPigmentEditOption:v19];
      [v17 setConfiguration:v20];

      v21 = [(NTKChronoFaceView *)self device];
      v60 = v17;
      v22 = [NTKChronoPalette paletteForDevice:v21 withFaceColorPalette:v17];

      v23 = [NTKChronographFaceBundle imageWithName:@"Swatch-Chrono-Background"];
      v24 = [v22 backgroundColor];
      v25 = [v23 _flatImageWithColor:v24];

      v26 = [v10 timeScale];
      v63 = v10;
      if (v26 > 3)
      {
        v27 = 0;
      }

      else
      {
        v27 = *(&off_1CAF0 + v26);
      }

      v28 = [@"Swatch-Chrono-" stringByAppendingString:v27];
      v59 = [v28 stringByAppendingString:@"-Ticks"];
      v29 = [NTKChronographFaceBundle imageWithName:v59];
      v30 = [v22 foregroundColor];
      v53 = [v29 _flatImageWithColor:v30];

      v58 = CLKLocaleNumberSystemPrefix();
      v56 = v28;
      v57 = [v28 stringByAppendingFormat:@"-Numbers-%@", v58];
      v31 = [NTKChronographFaceBundle imageWithName:v57];
      v32 = [v22 labelColor];
      v33 = [v31 _flatImageWithColor:v32];

      v34 = NTKImageNamed();
      v35 = [v22 inlayColor];
      v36 = [v34 _flatImageWithColor:v35];

      v37 = NTKImageNamed();
      v55 = v22;
      v38 = [v22 foregroundColor];
      v39 = [v37 _flatImageWithColor:v38];

      v54 = [v28 stringByAppendingString:@"-Second"];
      v40 = [NTKChronographFaceBundle imageWithName:v54];
      v41 = [v22 chronoHandColor];
      v42 = [v40 _flatImageWithColor:v41];

      v43 = [UIGraphicsImageRenderer alloc];
      [v25 size];
      v44 = v25;
      v45 = [v43 initWithSize:?];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_D494;
      v65[3] = &unk_1C938;
      v66 = v44;
      v67 = v53;
      v68 = v33;
      v69 = v36;
      v70 = v39;
      v71 = v42;
      v46 = v42;
      v47 = v39;
      v48 = v36;
      v49 = v33;
      v50 = v53;
      v51 = v44;
      v15 = [v45 imageWithActions:v65];
      v14 = v61;
      [qword_234C8 setObject:v15 forKey:v61];

      v11 = v62;
      v10 = v63;
    }
  }

  else
  {
    v64.receiver = self;
    v64.super_class = NTKChronoFaceView;
    v15 = [(NTKChronoFaceView *)&v64 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:a5];
  }

  return v15;
}

- (double)_verticalPaddingForStatusBar
{
  v2 = [(NTKChronoFaceView *)self device];
  if ([v2 sizeClass])
  {
    v3 = 2.5;
  }

  else
  {
    v3 = 2.0;
  }

  return v3;
}

- (void)_prepareWristRaiseAnimation
{
  v5.receiver = self;
  v5.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v5 _prepareWristRaiseAnimation];
  memset(&v4, 0, sizeof(v4));
  CGAffineTransformMakeScale(&v4, 0.1, 0.1);
  v3 = v4;
  [(CLKUIChronoButton *)self->_pauseButton setTransform:&v3];
  v3 = v4;
  [(CLKUIChronoButton *)self->_lapResetButton setTransform:&v3];
}

- (void)_performWristRaiseAnimation
{
  v6.receiver = self;
  v6.super_class = NTKChronoFaceView;
  [(NTKChronoFaceView *)&v6 _performWristRaiseAnimation];
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_D788;
  v3[3] = &unk_1C960;
  objc_copyWeak(&v4, &location);
  [UIView animateWithDuration:0x20000 delay:v3 options:0 animations:0.2 completion:0.1];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (unint64_t)textLayoutStyleForSlot:(int64_t)a3
{
  v4 = [(NTKChronoFaceView *)self _slotForUtilitySlot:a3];
  v5 = [(NTKChronoFaceView *)self layoutStyleForSlot:v4];

  return v5;
}

- (id)_dateComplicationFontForStyle:(unint64_t)a3
{
  if (a3 == 4)
  {
    v3 = [CLKFont systemFontOfSize:15.0];
  }

  else
  {
    v4 = [(NTKChronoFaceView *)self device];
    v5 = [v4 sizeClass];
    v6 = 11.0;
    if (!v5)
    {
      v6 = 10.0;
    }

    v3 = [CLKFont systemFontOfSize:v6 weight:UIFontWeightMedium];
  }

  return v3;
}

- (void)_startSessionButtonPressed
{
  [(NTKChronoFaceView *)self startStop];

  [(NTKChronoFaceView *)self _showAppropriateModeAnimated:1];
}

- (void)_enumerateTimeModeViewsWithBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_DA10;
  v5[3] = &unk_1C988;
  v4 = a3;
  v6 = v4;
  [(NTKChronoFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
  if (self->_startSessionButton)
  {
    v4[2](v4);
  }

  if (self->_timeDialView)
  {
    v4[2](v4);
  }
}

- (void)_enumerateChronoModeViewsWithBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_pauseButton)
  {
    v4[2](v4);
    v4 = v5;
  }

  if (self->_lapResetButton)
  {
    v4[2](v5);
    v4 = v5;
  }

  if (self->_lapTimeLabel)
  {
    v4[2](v5);
    v4 = v5;
  }

  if (self->_totalTimeLabel)
  {
    v4[2](v5);
    v4 = v5;
  }

  if (self->_lapLabel)
  {
    v4[2](v5);
    v4 = v5;
  }

  if (self->_totalLabel)
  {
    v4[2](v5);
    v4 = v5;
  }

  if (self->_chronoDialView)
  {
    v4[2](v5);
    v4 = v5;
  }
}

- (void)_showAppropriateModeAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(NTKChronoFaceView *)self shouldShowUnsnapshotableContent])
  {
    v5 = [(NTKChronoFaceView *)self dataMode];
    if (v5 <= 5)
    {
      if (((1 << v5) & 0x39) != 0)
      {
        if (([(NTKChronoFaceView *)self editing]& 1) == 0)
        {

          [(NTKChronoFaceView *)self _showTimeModeAnimated:v3];
        }
      }

      else
      {

        [(NTKChronoFaceView *)self _applyModeForStopwatchModelAnimated:v3];
      }
    }
  }
}

- (void)_applyModeForStopwatchModelAnimated:(BOOL)a3
{
  v3 = a3;
  if (([(NTKChronoFaceView *)self editing]& 1) == 0)
  {

    [(NTKChronoFaceView *)self _showTimeModeAnimated:v3];
  }
}

- (void)_showTimeModeAnimated:(BOOL)a3
{
  if (self->_currentMode != 1)
  {
    v3 = a3;
    self->_currentMode = 1;
    [(NTKChronoFaceView *)self _loadDialViews];
    [(NTKChronoFaceView *)self _loadTimeModeViews];
    v5 = 0.0;
    if (v3)
    {
      [(NTKChronoFaceView *)self _loadChronoModeViews];
      v5 = 0.2;
    }

    v6 = [(NTKChronoFaceView *)self delegate];
    [v6 faceViewWantsStatusBarHidden:0 animated:v3];

    [(NTKChronoFaceView *)self _enumerateTimeModeViewsWithBlock:&stru_1C9C8];
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_DE90;
    v14[3] = &unk_1C960;
    objc_copyWeak(&v15, &location);
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_DF18;
    v11 = &unk_1CA50;
    objc_copyWeak(&v13, &location);
    v12 = self;
    [UIView animateWithDuration:v14 animations:&v8 completion:v5];
    [(NTKChronoFaceView *)self _setDateComplicationAlpha:v3 animated:1.0, v8, v9, v10, v11];
    v7 = [(NTKChronoFaceView *)self timeView];
    [v7 showTimeMode];

    [(NTKChronoFaceView *)self _reconsiderStopwatchUpdates];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_showChronographModeAnimated:(BOOL)a3
{
  v3 = a3;
  if (self->_currentMode != 2)
  {
    self->_currentMode = 2;
    [(NTKChronoFaceView *)self _loadChronoModeViews];
    v5 = 0.0;
    if (v3)
    {
      [(NTKChronoFaceView *)self _loadTimeModeViews];
      v5 = 0.2;
    }

    v6 = [(NTKChronoFaceView *)self delegate];
    [v6 faceViewWantsStatusBarHidden:1 animated:0];

    [(NTKChronoFaceView *)self _enumerateChronoModeViewsWithBlock:&stru_1CA70];
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_E284;
    v18[3] = &unk_1C960;
    objc_copyWeak(&v19, &location);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_E2F4;
    v15 = &unk_1CA50;
    objc_copyWeak(&v17, &location);
    v16 = self;
    [UIView animateWithDuration:v18 animations:&v12 completion:v5];
    v7 = [(NTKChronoFaceView *)self timeView:v12];
    [v7 showChronoMode];

    [(NTKChronoFaceView *)self _reconsiderStopwatchUpdates];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  v8 = [UIColor colorWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  v9 = [UIColor colorWithRed:0.0156862745 green:0.870588235 blue:0.443137255 alpha:1.0];
  pauseButton = self->_pauseButton;
  v11 = v8;
  [(CLKUIChronoButton *)pauseButton setColor:v11];
  [(CLKUIChronoButton *)self->_pauseButton setSwapColor:v9];
  [(CLKUIChronoButton *)self->_pauseButton setRingColor:v11];

  [(CLKUIChronoButton *)self->_pauseButton setRingSwapColor:v9];
  [(NTKChronoFaceView *)self _setDateComplicationAlpha:v3 animated:0.3];
}

- (void)_reconsiderStopwatchUpdates
{
  if ([(NTKChronoFaceView *)self dataMode]== &dword_0 + 1 && self->_currentMode == 2)
  {

    [(NTKChronoFaceView *)self _startStopwatchUpdates];
  }

  else
  {

    [(NTKChronoFaceView *)self _stopStopwatchUpdates];
  }
}

- (void)_resetLapLabelAfterSplit
{
  v3 = +[UIColor whiteColor];
  [(CLKUIColoringLabel *)self->_lapTimeLabel setTextColor:v3];

  [(NTKChronoFaceView *)self _synchronizeChronoTimeLabelsWithStopwatch];
}

- (void)_applyPaletteToTimeView:(id)a3
{
  v13 = a3;
  objc_storeStrong(&self->_palette, a3);
  v5 = [(NTKChronoFaceView *)self timeView];
  [v5 setPalette:v13];

  dialBackgroundView = self->_dialBackgroundView;
  v7 = [v13 backgroundColor];
  [(UIView *)dialBackgroundView setBackgroundColor:v7];

  [(NTKChronoDialView *)self->_timeDialView applyPalette:v13];
  [(NTKChronoDialView *)self->_chronoDialView applyPalette:v13];
  [(NTKChronoDialView *)self->_upperSubdialView applyPalette:v13];
  [(NTKChronoDialView *)self->_lowerSubdialView applyPalette:v13];
  v8 = [(NTKChronoFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
  v9 = [v8 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [v13 labelColor];
    [v10 setForegroundColor:v11];

    v12 = [v13 dateComplicationColor];
    [v10 setAccentColor:v12];
  }
}

- (void)_setDateComplicationAlpha:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_E728;
  v8[3] = &unk_1C910;
  objc_copyWeak(v9, &location);
  v9[1] = *&a3;
  v6 = objc_retainBlock(v8);
  v7 = v6;
  if (v4)
  {
    [UIView animateWithDuration:v6 animations:0.1];
  }

  else
  {
    (v6[2])(v6);
  }

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)stateChanged
{
  v4 = [(NTKChronoFaceView *)self timeView];
  v3 = [v4 overrideDate];
  [(NTKChronoFaceView *)self setOverrideDate:v3 duration:0.0];
}

- (void)lapAdded
{
  v3 = [(NTKChronoFaceView *)self timeView];
  [v3 updateLapHandsVisibility];

  [(NTKChronoFaceView *)self _layoutStopwatchTimeViews];
}

- (CGPoint)_dateComplicationRightAlignment
{
  v2 = [(NTKChronoFaceView *)self device];
  sub_EF68(v2, &v6);
  v3 = v7;

  v4 = 0.0;
  v5 = v3;
  result.y = v4;
  result.x = v5;
  return result;
}

- (CGPoint)_dateComplicationCenterOffset
{
  v2 = [(NTKChronoFaceView *)self device];
  sub_EF68(v2, &v6);
  v3 = v7;

  v4 = 0.0;
  v5 = v3;
  result.y = v4;
  result.x = v5;
  return result;
}

- (void)_updateDateComplicationPositionIfNecessary
{
  v3 = [(NTKChronoFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
  v4 = [v3 display];

  [(NTKChronoFaceView *)self _updateComplicationFactoryWithDateComplicationView:v4];
}

- (void)_updateComplicationFactoryWithDateComplicationView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v19 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
      v6 = v5;
      if ([v19 dateStyle] == &dword_4 && !-[NTKChronoFaceView editing](self, "editing"))
      {
        [(NTKChronoFaceView *)self _dateComplicationRightAlignment];
        v11 = v10;
        v9 = v12;
        [(NTKChronoFaceView *)self bounds];
        v7 = v13 * 0.5 - (v6 * 0.5 + v11);
      }

      else
      {
        [(NTKChronoFaceView *)self _dateComplicationCenterOffset];
        v9 = v8;
      }

      [(NTKUtilityComplicationFactory *)self->_complicationFactory setDateHorizontalCenterOffset:v7];
      [(NTKUtilityComplicationFactory *)self->_complicationFactory setDateVerticalCenterOffset:v9];
      complicationFactory = self->_complicationFactory;
      v15 = NTKComplicationSlotDate;
      v16 = [(NTKChronoFaceView *)self complicationLayoutforSlot:NTKComplicationSlotDate];
      v17 = [(NTKChronoFaceView *)self _utilitySlotForSlot:v15];
      [(NTKChronoFaceView *)self bounds];
      [(NTKUtilityComplicationFactory *)complicationFactory configureComplicationLayout:v16 forSlot:v17 withBounds:?];

      v18 = [(NTKChronoFaceView *)self delegate];
      [v18 faceViewWantsComplicationKeylineFramesReloaded];
    }
  }

  _objc_release_x1();
}

- (void)_removeModeRelatedUIs
{
  [(NTKStopwatchButton *)self->_startSessionButton removeFromSuperview];
  startSessionButton = self->_startSessionButton;
  self->_startSessionButton = 0;

  [(CLKUIChronoButton *)self->_pauseButton removeFromSuperview];
  pauseButton = self->_pauseButton;
  self->_pauseButton = 0;

  [(CLKUIChronoButton *)self->_lapResetButton removeFromSuperview];
  lapResetButton = self->_lapResetButton;
  self->_lapResetButton = 0;

  [(CLKUIColoringLabel *)self->_totalTimeLabel removeFromSuperview];
  totalTimeLabel = self->_totalTimeLabel;
  self->_totalTimeLabel = 0;

  [(UILabel *)self->_totalLabel removeFromSuperview];
  totalLabel = self->_totalLabel;
  self->_totalLabel = 0;

  [(_LapLabel *)self->_lapLabel removeFromSuperview];
  lapLabel = self->_lapLabel;
  self->_lapLabel = 0;

  [(CLKUIColoringLabel *)self->_lapTimeLabel removeFromSuperview];
  lapTimeLabel = self->_lapTimeLabel;
  self->_lapTimeLabel = 0;
}

@end