@interface NTKGladiusFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (NTKGladiusFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_contentViewAlphaForEditMode:(int64_t)a3;
- (double)_editingFractionForEditMode:(int64_t)a3;
- (double)_nightFractionForLight:(unint64_t)a3;
- (id)_hourMinuteHandStrokeColorForLight:(unint64_t)a3;
- (id)_secondHandColorForLight:(unint64_t)a3;
- (id)_swatchForStyleOption:(id)a3 lightOption:(id)a4 colorOption:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyNightFraction;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyPalette:(id)a3 forTritium:(BOOL)a4;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_getComplicationColorsTop:(id *)a3 bottom:(id *)a4 palette:(id)a5 nightFraction:(double)a6 editingFraction:(double)a7;
- (void)_getComplicationColorsTop:(id *)a3 bottom:(id *)a4 palette:(id)a5 nightFraction:(double)a6 editingFraction:(double)a7 secondHandAngle:(double)a8;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_unloadSnapshotContentViews;
- (void)_updateBottomComplicationWithColor:(id)a3;
- (void)_updateDateOverrideAnimationWithStopTime:(double)a3;
- (void)_updateNightFraction;
- (void)_updateTopComplicationWithColor:(id)a3;
- (void)lightSpillCoordinator:(id)a3 wantsUpdateForAngle:(double)a4;
- (void)overrideAnimationApplier:(double)a3 zRotation:(double)a4 forHandView:(id)a5;
- (void)overrideZRotation:(double)a3 forHandView:(id)a4;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKGladiusFaceView

- (NTKGladiusFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v22.receiver = self;
  v22.super_class = NTKGladiusFaceView;
  v9 = [(NTKGladiusFaceView *)&v22 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = objc_alloc_init(NTKCompositeComplicationFactory);
    v11 = [NTKFullscreenSubdialComplicationFactory alloc];
    v12 = [(NTKGladiusFaceView *)v9 device];
    v13 = [v11 initForDevice:v12];

    [v13 setCircularComplicationDistanceFromCenter:{sub_52E8(objc_msgSend(v13, "setFaceView:", v9), v8)}];
    [v13 setAlpha:v9 faceView:1.0];
    [v10 registerFactory:v13 forSlot:NTKComplicationSlotSubdialBottom];
    v14 = objc_alloc_init(NTKSimpleTextFaceViewComplicationFactory);
    [v14 setFaceView:v9];
    [v10 registerFactory:v14 forSlot:NTKComplicationSlotSubdialTop];
    [(NTKGladiusFaceView *)v9 setComplicationFactory:v10];
    v15 = [[NTKGladiusSolarDataSource alloc] initWithDevice:v8];
    dataSource = v9->_dataSource;
    v9->_dataSource = v15;

    v17 = [[_TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData alloc] initWithDevice:v8];
    stretchySecondHandData = v9->_stretchySecondHandData;
    v9->_stretchySecondHandData = v17;

    v19 = [[_TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator alloc] initWithDevice:v8];
    lightSpillCoordinator = v9->_lightSpillCoordinator;
    v9->_lightSpillCoordinator = v19;

    [(NTKGladiusLightSpillCoordinator *)v9->_lightSpillCoordinator setUpdateDelegate:v9];
  }

  return v9;
}

- (void)_reorderSwitcherSnapshotView
{
  v3 = [(NTKGladiusFaceView *)self switcherSnapshotView];

  if (v3)
  {
    v4 = [(NTKGladiusFaceView *)self switcherSnapshotView];
    [(NTKGladiusFaceView *)self bringSubviewToFront:v4];
  }
}

- (void)_loadSnapshotContentViews
{
  v42.receiver = self;
  v42.super_class = NTKGladiusFaceView;
  [(NTKGladiusFaceView *)&v42 _loadSnapshotContentViews];
  v3 = [UIView alloc];
  v4 = [(NTKGladiusFaceView *)self contentView];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];
  backgroundContainerView = self->_backgroundContainerView;
  self->_backgroundContainerView = v5;

  v7 = [(NTKGladiusFaceView *)self contentView];
  [v7 addSubview:self->_backgroundContainerView];

  stretchySecondHandData = self->_stretchySecondHandData;
  v9 = [(NTKGladiusFaceView *)self timeView];
  [v9 setStretchySecondHandData:stretchySecondHandData];

  v10 = [(NTKGladiusFaceView *)self timeView];
  [v10 setDelegate:self];

  v11 = [CLKUIMetalQuadView alloc];
  v12 = [(NTKGladiusFaceView *)self contentView];
  [v12 bounds];
  v13 = [v11 initWithFrame:@"Glds" identifier:4 options:0 colorSpace:?];
  lightingQuadView = self->_lightingQuadView;
  self->_lightingQuadView = v13;

  [(CLKUIMetalQuadView *)self->_lightingQuadView setOpaque:1];
  v15 = [_TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad alloc];
  v16 = [(NTKGladiusFaceView *)self device];
  v17 = [(NTKGladiusQuad *)v15 initWithDevice:v16 stretchySecondHandData:self->_stretchySecondHandData];
  lightingQuad = self->_lightingQuad;
  self->_lightingQuad = v17;

  [(CLKUIMetalQuadView *)self->_lightingQuadView addQuad:self->_lightingQuad];
  [(CLKUIMetalQuadView *)self->_lightingQuadView setPreferredFramesPerSecond:30];
  [(CLKUIMetalQuadView *)self->_lightingQuadView setPaused:0];
  [(UIView *)self->_backgroundContainerView addSubview:self->_lightingQuadView];
  v19 = [NTKGladiusDialView alloc];
  v20 = [(NTKGladiusFaceView *)self device];
  style = self->_style;
  v22 = [(NTKGladiusFaceView *)self colorPalette];
  v23 = [(NTKGladiusDialView *)v19 initWithDevice:v20 style:style palette:v22];
  dialView = self->_dialView;
  self->_dialView = v23;

  [(NTKGladiusDialView *)self->_dialView setLightSpillCoordinator:self->_lightSpillCoordinator];
  v25 = [(NTKGladiusFaceView *)self contentView];
  [v25 addSubview:self->_dialView];

  lightSpillCoordinator = self->_lightSpillCoordinator;
  v27 = [(NTKGladiusFaceView *)self timeView];
  [v27 setLightingDelegate:lightSpillCoordinator];

  v28 = [NTKRoundedCornerOverlayView alloc];
  v29 = [(NTKGladiusFaceView *)self contentView];
  [v29 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [(NTKGladiusFaceView *)self device];
  v39 = [v28 initWithFrame:v38 forDeviceCornerRadius:{v31, v33, v35, v37}];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = v39;

  v41 = [(NTKGladiusFaceView *)self contentView];
  [v41 addSubview:self->_cornerOverlayView];
}

- (void)_unloadSnapshotContentViews
{
  [(NTKGladiusDialView *)self->_dialView removeFromSuperview];
  dialView = self->_dialView;
  self->_dialView = 0;

  [(NTKRoundedCornerOverlayView *)self->_cornerOverlayView removeFromSuperview];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = 0;

  [(CLKUIMetalQuadView *)self->_lightingQuadView removeAllQuads];
  [(CLKUIMetalQuadView *)self->_lightingQuadView removeFromSuperview];
  lightingQuadView = self->_lightingQuadView;
  self->_lightingQuadView = 0;

  lightingQuad = self->_lightingQuad;
  self->_lightingQuad = 0;

  [(UIView *)self->_backgroundContainerView removeFromSuperview];
  backgroundContainerView = self->_backgroundContainerView;
  self->_backgroundContainerView = 0;

  v8.receiver = self;
  v8.super_class = NTKGladiusFaceView;
  [(NTKGladiusFaceView *)&v8 _unloadSnapshotContentViews];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = NTKGladiusFaceView;
  [(NTKGladiusFaceView *)&v15 setOverrideDate:v7 duration:a4];
  objc_storeStrong(&self->_overrideDate, a3);
  [(NTKGladiusQuad *)self->_lightingQuad setOverrideDate:v7 duration:a4];
  [(NTKGladiusLightSpillCoordinator *)self->_lightSpillCoordinator setOverrideDate:v7 duration:a4];
  if (a4 > 0.0)
  {
    [(CLKUIMetalQuadView *)self->_lightingQuadView setPreferredFramesPerSecond:60];
    Current = CFAbsoluteTimeGetCurrent();
    objc_initWeak(&location, self);
    v9 = +[CLKClockTimer sharedInstance];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2FA8;
    v12[3] = &unk_20880;
    objc_copyWeak(v13, &location);
    *&v13[1] = Current + a4;
    v10 = [v9 startUpdatesWithUpdateFrequency:4 withHandler:v12 identificationLog:&stru_208C0];
    overrideDateAnimationTimerToken = self->_overrideDateAnimationTimerToken;
    self->_overrideDateAnimationTimerToken = v10;

    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }

  if (([(NTKGladiusFaceView *)self editing]& 1) == 0)
  {
    [(NTKGladiusFaceView *)self _updateNightFraction];
  }
}

- (void)_updateDateOverrideAnimationWithStopTime:(double)a3
{
  if (CFAbsoluteTimeGetCurrent() > a3 && self->_overrideDateAnimationTimerToken)
  {
    v4 = +[CLKClockTimer sharedInstance];
    [v4 stopUpdatesForToken:self->_overrideDateAnimationTimerToken];

    overrideDateAnimationTimerToken = self->_overrideDateAnimationTimerToken;
    self->_overrideDateAnimationTimerToken = 0;

    [(CLKUIMetalQuadView *)self->_lightingQuadView setPreferredFramesPerSecond:30];
  }

  lightSpillCoordinator = self->_lightSpillCoordinator;

  [(NTKGladiusLightSpillCoordinator *)lightSpillCoordinator updateLightingOverride];
}

- (void)_updateNightFraction
{
  dataSource = self->_dataSource;
  v4 = [(NTKGladiusFaceView *)self currentDisplayDate];
  [(NTKGladiusSolarDataSource *)dataSource updateNightFractionForDate:v4];

  [(NTKGladiusFaceView *)self _applyNightFraction];
}

- (void)_applyNightFraction
{
  [(NTKGladiusFaceView *)self _nightFractionForLight:self->_light];
  v4 = v3;
  [(NTKGladiusFaceView *)self _colorFractionForNightFraction:?];
  v6 = v5;
  [(NTKGladiusQuad *)self->_lightingQuad setShadowDensity:v4];
  [(NTKGladiusDialView *)self->_dialView setColorFraction:v6];
  v7 = [(NTKGladiusFaceView *)self timeView];
  v8 = [(NTKGladiusFaceView *)self _secondHandColorForLight:self->_light];
  [v7 applySecondHandColor:v8];

  v9 = [(NTKGladiusFaceView *)self timeView];
  v10 = [(NTKGladiusFaceView *)self _hourMinuteHandStrokeColorForLight:self->_light];
  v11 = [(NTKGladiusFaceView *)self colorPalette];
  v12 = [v11 hourMinuteHandInlay];
  [v9 applyHourMinuteHandsStrokeColor:v10 fillColor:v12];

  v16 = 0;
  v17 = 0;
  v13 = [(NTKGladiusFaceView *)self colorPalette];
  [(NTKGladiusFaceView *)self _getComplicationColorsTop:&v17 bottom:&v16 palette:v13 nightFraction:v4 editingFraction:0.0];
  v14 = v17;
  v15 = v16;

  [(NTKGladiusFaceView *)self _updateTopComplicationWithColor:v14];
  [(NTKGladiusFaceView *)self _updateBottomComplicationWithColor:v15];
}

- (double)_nightFractionForLight:(unint64_t)a3
{
  switch(a3)
  {
    case 2uLL:
      v3 = &NTKGladiusNightTimeFraction;
      return *v3;
    case 1uLL:
      v3 = &NTKGladiusDayTimeFraction;
      return *v3;
    case 0uLL:
      [(NTKGladiusSolarDataSource *)self->_dataSource nightFraction];
      break;
  }

  return result;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v27.receiver = self;
  v27.super_class = NTKGladiusFaceView;
  [(NTKGladiusFaceView *)&v27 _configureComplicationView:v6 forSlot:a4];
  v7 = [(NTKGladiusFaceView *)self editing];
  v25 = 0;
  v26 = 0;
  v8 = [(NTKGladiusFaceView *)self colorPalette];
  [(NTKGladiusFaceView *)self _nightFractionForLight:self->_light];
  v10 = v9;
  [(NTKGladiusFaceView *)self _editingFractionForEditMode:v7];
  [(NTKGladiusFaceView *)self _getComplicationColorsTop:&v26 bottom:&v25 palette:v8 nightFraction:v10 editingFraction:v11];
  v12 = v26;
  v13 = v25;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v12;
    [(NTKGladiusFaceView *)self setComplicationColor:v14];
    [(NTKGladiusFaceView *)self setInterpolatedComplicationColor:v14];
    v15 = v6;
    [v15 updateMonochromeColor];
    if (objc_opt_respondsToSelector())
    {
      v16 = +[UIColor clearColor];
      [v15 setPlatterColor:v16];
    }

    if (objc_opt_respondsToSelector())
    {
      [v15 setTintedFraction:1.0];
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v6;
    v18 = v12;
    v19 = [v17 label];
    [v19 setTextColor:v18];

    v20 = [v17 font];
    [v20 pointSize];
    v21 = [CLKFont systemFontOfSize:"systemFontOfSize:weight:design:" weight:CLKRoundedFontDesignName design:?];

    v14 = [v21 CLKFontWithAlternativePunctuation];

LABEL_10:
    [v17 setFont:v14];
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v6;
    v22 = v12;
    v23 = [v17 font];
    [v23 pointSize];
    v24 = [CLKFont systemFontOfSize:"systemFontOfSize:weight:design:" weight:CLKRoundedFontDesignName design:?];
    v14 = [v24 CLKFontWithAlternativePunctuation];

    [v17 setTextColor:v22];
    goto LABEL_10;
  }

LABEL_12:
}

- (void)_loadLayoutRules
{
  v10.receiver = self;
  v10.super_class = NTKGladiusFaceView;
  [(NTKGladiusFaceView *)&v10 _loadLayoutRules];
  v3 = NTKComplicationSlotSubdialBottom;
  v4 = [(NTKGladiusFaceView *)self device];
  sub_52E8(v4, v4);
  v6 = v5;

  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeScale(&v9, v6, v6);
  v8 = [(NTKGladiusFaceView *)self complicationLayoutforSlot:v3];
  v7 = v8;
  NTKEnumerateComplicationStates();
}

- (void)lightSpillCoordinator:(id)a3 wantsUpdateForAngle:(double)a4
{
  v8 = 0;
  v9 = 0;
  v5 = [(NTKGladiusFaceView *)self colorPalette];
  [(NTKGladiusFaceView *)self _nightFractionForLight:self->_light];
  [NTKGladiusFaceView _getComplicationColorsTop:"_getComplicationColorsTop:bottom:palette:nightFraction:editingFraction:secondHandAngle:" bottom:&v9 palette:&v8 nightFraction:v5 editingFraction:? secondHandAngle:?];
  v6 = v9;
  v7 = v8;

  [(NTKGladiusFaceView *)self _updateTopComplicationWithColor:v6];
  [(NTKGladiusFaceView *)self _updateBottomComplicationWithColor:v7];
}

- (id)createFaceColorPalette
{
  v2 = [[NTKGladiusColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_applyPalette:(id)a3 forTritium:(BOOL)a4
{
  v6 = a3;
  if (!a4)
  {
    [(NTKGladiusDialView *)self->_dialView setPalette:v6];
  }

  [(NTKGladiusFaceView *)self _nightFractionForLight:self->_light];
  v8 = v7;
  [(NTKGladiusFaceView *)self _colorFractionForNightFraction:?];
  [(NTKGladiusQuad *)self->_lightingQuad setShadowDensity:v8];
  lightingQuad = self->_lightingQuad;
  v10 = [v6 background];
  [(NTKGladiusQuad *)lightingQuad setColor:v10];

  v11 = [v6 hourMinuteHandStrokeDay];
  v12 = [v6 hourMinuteHandStrokeNight];
  v13 = NTKInterpolateBetweenColors();

  v14 = [(NTKGladiusFaceView *)self timeView];
  v15 = [v6 hourMinuteHandInlay];
  [v14 applyHourMinuteHandsStrokeColor:v13 fillColor:v15];

  v16 = [(NTKGladiusFaceView *)self timeView];
  v17 = [v6 secondHandDay];
  v18 = [v6 secondHandNight];
  v19 = NTKInterpolateBetweenColors();
  [v16 applySecondHandColor:v19];

  v20 = [(NTKGladiusFaceView *)self timeView];
  v21 = [v20 secondHandView];
  [v21 setHandDotColor:v13];

  v24 = 0;
  v25 = 0;
  [(NTKGladiusFaceView *)self _getComplicationColorsTop:&v25 bottom:&v24 palette:v6 nightFraction:v8 editingFraction:0.0];
  v22 = v25;
  v23 = v24;
  [(NTKGladiusFaceView *)self _updateTopComplicationWithColor:v22];
  [(NTKGladiusFaceView *)self _updateBottomComplicationWithColor:v23];
}

- (void)_getComplicationColorsTop:(id *)a3 bottom:(id *)a4 palette:(id)a5 nightFraction:(double)a6 editingFraction:(double)a7
{
  v12 = a5;
  overrideDate = self->_overrideDate;
  v14 = overrideDate;
  if (!overrideDate)
  {
    v14 = +[NTKDate faceDate];
  }

  v15 = +[NSCalendar currentCalendar];
  CLKHourMinuteSecondAnglesForTime();

  if (!overrideDate)
  {
  }

  [(NTKGladiusFaceView *)self _getComplicationColorsTop:a3 bottom:a4 palette:v12 nightFraction:a6 editingFraction:a7 secondHandAngle:0.0];
}

- (void)_getComplicationColorsTop:(id *)a3 bottom:(id *)a4 palette:(id)a5 nightFraction:(double)a6 editingFraction:(double)a7 secondHandAngle:(double)a8
{
  v13 = a5;
  [(NTKGladiusFaceView *)self _colorFractionForNightFraction:a6];
  v25 = [v13 editing];
  v14 = [v13 topComplicationDay];
  v15 = [v13 topComplicationNight];
  v16 = NTKInterpolateBetweenColors();

  v17 = [v13 bottomComplicationDay];
  v18 = [v13 bottomComplicationNight];

  v19 = NTKInterpolateBetweenColors();

  v20 = cos(a8 + -0.261799388) * 0.5 + 0.5;
  v21 = +[UIColor whiteColor];
  pow(v20, 4.0);
  v22 = NTKInterpolateBetweenColors();

  v23 = +[UIColor whiteColor];
  pow(1.0 - v20, 4.0);
  v24 = NTKInterpolateBetweenColors();

  *a3 = NTKInterpolateBetweenColors();
  *a4 = NTKInterpolateBetweenColors();
}

- (void)_updateTopComplicationWithColor:(id)a3
{
  v7 = a3;
  v4 = [(NTKGladiusFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotSubdialTop];
  v5 = [v4 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 label];
    [v6 setTextColor:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setTextColor:v7];
    }
  }
}

- (void)_updateBottomComplicationWithColor:(id)a3
{
  v6 = a3;
  v4 = [(NTKGladiusFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotSubdialBottom];
  v5 = [v4 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKGladiusFaceView *)self setComplicationColor:v6];
    [(NTKGladiusFaceView *)self setInterpolatedComplicationColor:v6];
    [v5 updateMonochromeColor];
  }
}

- (id)_secondHandColorForLight:(unint64_t)a3
{
  v5 = [(NTKGladiusFaceView *)self colorPalette];
  v6 = [v5 secondHandDay];
  v7 = [(NTKGladiusFaceView *)self colorPalette];
  v8 = [v7 secondHandNight];
  [(NTKGladiusFaceView *)self _nightFractionForLight:a3];
  [(NTKGladiusFaceView *)self _colorFractionForNightFraction:?];
  v9 = NTKInterpolateBetweenColors();

  return v9;
}

- (id)_hourMinuteHandStrokeColorForLight:(unint64_t)a3
{
  v5 = [(NTKGladiusFaceView *)self colorPalette];
  v6 = [v5 hourMinuteHandStrokeDay];
  v7 = [(NTKGladiusFaceView *)self colorPalette];
  v8 = [v7 hourMinuteHandStrokeNight];
  [(NTKGladiusFaceView *)self _nightFractionForLight:a3];
  [(NTKGladiusFaceView *)self _colorFractionForNightFraction:?];
  v9 = NTKInterpolateBetweenColors();

  return v9;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v11 = a3;
  v8 = a5;
  switch(a4)
  {
    case 10:
      v10 = [(NTKGladiusFaceView *)self colorPalette];
      [(NTKGladiusFaceView *)self _applyPalette:v10];

      break;
    case 12:
      self->_light = [v11 light];
      [(NTKGladiusFaceView *)self _applyNightFraction];
      break;
    case 15:
      v9 = [v11 style];
      self->_style = v9;
      [(NTKGladiusDialView *)self->_dialView setStyle:v9];
      break;
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  switch(a6)
  {
    case 10:
      v26 = [(NTKGladiusFaceView *)self interpolatedColorPalette];
      [(NTKGladiusFaceView *)self _applyPalette:v26];
      goto LABEL_10;
    case 12:
      v19 = [v12 light];
      v20 = [v13 light];
      if (v19 == v20)
      {
        break;
      }

      v21 = v20;
      [(NTKGladiusFaceView *)self _nightFractionForLight:v19];
      [(NTKGladiusFaceView *)self _nightFractionForLight:v21];
      CLKInterpolateBetweenFloatsClipped();
      v23 = v22;
      [(NTKGladiusQuad *)self->_lightingQuad setShadowDensity:?];
      [(NTKGladiusFaceView *)self _colorFractionForNightFraction:v23];
      [(NTKGladiusDialView *)self->_dialView setColorFraction:?];
      v24 = [(NTKGladiusFaceView *)self _hourMinuteHandStrokeColorForLight:v19];
      v25 = [(NTKGladiusFaceView *)self _hourMinuteHandStrokeColorForLight:v21];
      v26 = NTKInterpolateBetweenColors();

      v27 = [(NTKGladiusFaceView *)self timeView];
      v28 = [(NTKGladiusFaceView *)self colorPalette];
      v29 = [v28 hourMinuteHandInlay];
      [v27 applyHourMinuteHandsStrokeColor:v26 fillColor:v29];

      v30 = [(NTKGladiusFaceView *)self timeView];
      v31 = [v30 secondHandView];
      [v31 setHandDotColor:v26];

      v32 = [(NTKGladiusFaceView *)self timeView];
      v33 = [(NTKGladiusFaceView *)self _secondHandColorForLight:v19];
      v34 = [(NTKGladiusFaceView *)self _secondHandColorForLight:v21];
      v35 = NTKInterpolateBetweenColors();
      [v32 applySecondHandColor:v35];

      v42 = 0;
      v43 = 0;
      v36 = [(NTKGladiusFaceView *)self colorPalette];
      [(NTKGladiusFaceView *)self _getComplicationColorsTop:&v43 bottom:&v42 palette:v36 nightFraction:v23 editingFraction:0.0];
      v37 = v43;
      v38 = v42;

      [(NTKGladiusFaceView *)self _updateTopComplicationWithColor:v37];
      [(NTKGladiusFaceView *)self _updateBottomComplicationWithColor:v38];

LABEL_10:
      break;
    case 15:
      v15 = [v12 style];
      v16 = [v13 style];
      if (v15 != v16)
      {
        if (a3 >= 0.5)
        {
          v39 = v16;
          CLKMapFractionIntoRange();
          v18 = v40;
          v15 = v39;
        }

        else
        {
          CLKMapFractionIntoRange();
          v18 = v17;
        }

        CLKMapFractionIntoRange();
        memset(&v45, 0, sizeof(v45));
        CGAffineTransformMakeScale(&v45, v41, v41);
        [(NTKGladiusDialView *)self->_dialView setStyle:v15];
        [(NTKGladiusDialView *)self->_dialView setAlpha:v18];
        v44 = v45;
        [(NTKGladiusDialView *)self->_dialView setTransform:&v44];
      }

      break;
  }
}

- (void)_configureForEditMode:(int64_t)a3
{
  [(NTKGladiusFaceView *)self _contentViewAlphaForEditMode:?];
  v6 = v5;
  v7 = [(NTKGladiusFaceView *)self timeView];
  [v7 setAlpha:v6];

  v8 = [(NTKGladiusFaceView *)self contentView];
  [v8 setAlpha:v6];

  v15 = 0;
  v16 = 0;
  v9 = [(NTKGladiusFaceView *)self colorPalette];
  [(NTKGladiusFaceView *)self _nightFractionForLight:self->_light];
  v11 = v10;
  [(NTKGladiusFaceView *)self _editingFractionForEditMode:a3];
  [(NTKGladiusFaceView *)self _getComplicationColorsTop:&v16 bottom:&v15 palette:v9 nightFraction:v11 editingFraction:v12];
  v13 = v16;
  v14 = v15;

  [(NTKGladiusFaceView *)self _updateTopComplicationWithColor:v13];
  [(NTKGladiusFaceView *)self _updateBottomComplicationWithColor:v14];
}

- (double)_editingFractionForEditMode:(int64_t)a3
{
  result = 0.0;
  if (a3 == 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [(NTKGladiusFaceView *)self _contentViewAlphaForEditMode:?];
  [(NTKGladiusFaceView *)self _contentViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  v10 = [(NTKGladiusFaceView *)self timeView];
  [v10 setAlpha:v9];

  v11 = [(NTKGladiusFaceView *)self contentView];
  [v11 setAlpha:v9];

  v18 = 0;
  v19 = 0;
  v12 = [(NTKGladiusFaceView *)self colorPalette];
  [(NTKGladiusFaceView *)self _nightFractionForLight:self->_light];
  v14 = v13;
  [(NTKGladiusFaceView *)self _editingFractionForEditMode:a4];
  [(NTKGladiusFaceView *)self _editingFractionForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKGladiusFaceView *)self _getComplicationColorsTop:&v19 bottom:&v18 palette:v12 nightFraction:v14 editingFraction:v15];
  v16 = v19;
  v17 = v18;

  [(NTKGladiusFaceView *)self _updateTopComplicationWithColor:v16];
  [(NTKGladiusFaceView *)self _updateBottomComplicationWithColor:v17];
}

- (double)_contentViewAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4)
  {
    self->_breathingFraction = a3;
    [(NTKGladiusFaceView *)self _applyBreathingAndRubberbanding:a4];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4)
  {
    self->_rubberbandingFraction = a3;
    [(NTKGladiusFaceView *)self _applyBreathingAndRubberbanding:a4];
    NTKAlphaForRubberBandingFraction();

    [(NTKGladiusFaceView *)self setAlpha:?];
  }
}

- (void)_applyBreathingAndRubberbanding
{
  breathingFraction = self->_breathingFraction;
  NTKLargeElementScaleForBreathingFraction();
  v5 = v4;
  rubberbandingFraction = self->_rubberbandingFraction;
  NTKScaleForRubberBandingFraction();
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, v5 * v7, v5 * v7);
  v14 = v15;
  v8 = [(NTKGladiusFaceView *)self timeView];
  v13 = v14;
  [v8 setTransform:&v13];

  v12 = v15;
  v9 = [(NTKGladiusFaceView *)self contentView];
  v13 = v12;
  [v9 setTransform:&v13];

  v11 = v15;
  v10 = [(NTKGladiusFaceView *)self complicationContainerView];
  v13 = v11;
  [v10 setTransform:&v13];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if (a3 == 15)
  {
    v7 = &off_216C8;
  }

  else if (a3 == 12)
  {
    v7 = &off_216E0;
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___NTKGladiusFaceView;
    v7 = objc_msgSendSuper2(&v9, "_swatchForEditModeDependsOnOptions:forDevice:", a3, v6);
  }

  return v7;
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 12)
  {
    v11 = [v9 objectForKeyedSubscript:&off_21500];
    v14 = v8;
    v15 = [v10 objectForKeyedSubscript:&off_214E8];
    v13 = [(NTKGladiusFaceView *)self _swatchForStyleOption:v11 lightOption:v14 colorOption:v15];

    goto LABEL_5;
  }

  if (a4 == 15)
  {
    v11 = [v9 objectForKeyedSubscript:&off_214D0];
    v12 = [v10 objectForKeyedSubscript:&off_214E8];
    v13 = [(NTKGladiusFaceView *)self _swatchForStyleOption:v8 lightOption:v11 colorOption:v12];

LABEL_5:
    goto LABEL_7;
  }

  v17.receiver = self;
  v17.super_class = NTKGladiusFaceView;
  v13 = [(NTKGladiusFaceView *)&v17 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
LABEL_7:

  return v13;
}

- (id)_swatchForStyleOption:(id)a3 lightOption:(id)a4 colorOption:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_2A3B0 != -1)
  {
    sub_128CC();
  }

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 style]);
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 light]);
  v13 = [v10 identifier];
  v14 = [NSString stringWithFormat:@"%@-%@-%@", v11, v12, v13];

  v15 = [qword_2A3A8 objectForKey:v14];
  if (!v15)
  {
    v16 = [NTKGladiusFaceView alloc];
    v17 = [(NTKGladiusFaceView *)self device];
    v18 = [(NTKGladiusFaceView *)v16 initWithFaceStyle:44 forDevice:v17 clientIdentifier:0];

    [(NTKGladiusFaceView *)self bounds];
    [(NTKGladiusFaceView *)v18 setBounds:?];
    [(NTKGladiusFaceView *)v18 _loadSnapshotContentViews];
    [(NTKGladiusFaceView *)v18 setOption:v8 forCustomEditMode:15 slot:0];
    [(NTKGladiusFaceView *)v18 setOption:v9 forCustomEditMode:12 slot:0];
    [(NTKGladiusFaceView *)v18 setOption:v10 forCustomEditMode:10 slot:0];
    v19 = NTKIdealizedDate();
    [(NTKGladiusFaceView *)v18 setOverrideDate:v19 duration:0.0];

    lightingQuadView = v18->_lightingQuadView;
    [(NTKGladiusFaceView *)v18 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [(NTKGladiusFaceView *)self device];
    [v29 screenScale];
    v31 = [(CLKUIMetalQuadView *)lightingQuadView snapshotInRect:v22 scale:v24 time:v26, v28, v30, 0.0];

    v32 = [UIGraphicsImageRenderer alloc];
    [(NTKGladiusFaceView *)v18 bounds];
    v33 = [v32 initWithBounds:?];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_4FF0;
    v37[3] = &unk_20950;
    v38 = v31;
    v39 = v18;
    v34 = v18;
    v35 = v31;
    v15 = [v33 imageWithActions:v37];
    [qword_2A3A8 setObject:v15 forKey:v14];
  }

  return v15;
}

- (void)overrideZRotation:(double)a3 forHandView:(id)a4
{
  v6 = a4;
  v7 = [(NTKGladiusFaceView *)self timeView];
  v8 = [v7 secondHandView];

  if (v8 == v6)
  {
    v9 = [(NTKGladiusFaceView *)self timeView];
    [v9 applyInstantaneousSecondHandTransformForAngle:a3];
  }
}

- (void)overrideAnimationApplier:(double)a3 zRotation:(double)a4 forHandView:(id)a5
{
  v7 = a5;
  v8 = [(NTKGladiusFaceView *)self timeView];
  v9 = [v8 secondHandView];

  if (v9 == v7)
  {
    v10 = [(NTKGladiusFaceView *)self timeView];
    [v10 applyInstantaneousSecondHandTransformForAngle:a4];
  }
}

@end