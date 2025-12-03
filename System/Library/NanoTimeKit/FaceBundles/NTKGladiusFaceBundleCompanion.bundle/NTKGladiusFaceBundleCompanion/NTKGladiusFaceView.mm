@interface NTKGladiusFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (NTKGladiusFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_contentViewAlphaForEditMode:(int64_t)mode;
- (double)_editingFractionForEditMode:(int64_t)mode;
- (double)_nightFractionForLight:(unint64_t)light;
- (id)_hourMinuteHandStrokeColorForLight:(unint64_t)light;
- (id)_secondHandColorForLight:(unint64_t)light;
- (id)_swatchForStyleOption:(id)option lightOption:(id)lightOption colorOption:(id)colorOption;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyNightFraction;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyPalette:(id)palette forTritium:(BOOL)tritium;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_getComplicationColorsTop:(id *)top bottom:(id *)bottom palette:(id)palette nightFraction:(double)fraction editingFraction:(double)editingFraction;
- (void)_getComplicationColorsTop:(id *)top bottom:(id *)bottom palette:(id)palette nightFraction:(double)fraction editingFraction:(double)editingFraction secondHandAngle:(double)angle;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_unloadSnapshotContentViews;
- (void)_updateBottomComplicationWithColor:(id)color;
- (void)_updateDateOverrideAnimationWithStopTime:(double)time;
- (void)_updateNightFraction;
- (void)_updateTopComplicationWithColor:(id)color;
- (void)lightSpillCoordinator:(id)coordinator wantsUpdateForAngle:(double)angle;
- (void)overrideAnimationApplier:(double)applier zRotation:(double)rotation forHandView:(id)view;
- (void)overrideZRotation:(double)rotation forHandView:(id)view;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKGladiusFaceView

- (NTKGladiusFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = NTKGladiusFaceView;
  v9 = [(NTKGladiusFaceView *)&v22 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = objc_alloc_init(NTKCompositeComplicationFactory);
    v11 = [NTKFullscreenSubdialComplicationFactory alloc];
    device = [(NTKGladiusFaceView *)v9 device];
    v13 = [v11 initForDevice:device];

    [v13 setCircularComplicationDistanceFromCenter:{sub_52E8(objc_msgSend(v13, "setFaceView:", v9), deviceCopy)}];
    [v13 setAlpha:v9 faceView:1.0];
    [v10 registerFactory:v13 forSlot:NTKComplicationSlotSubdialBottom];
    v14 = objc_alloc_init(NTKSimpleTextFaceViewComplicationFactory);
    [v14 setFaceView:v9];
    [v10 registerFactory:v14 forSlot:NTKComplicationSlotSubdialTop];
    [(NTKGladiusFaceView *)v9 setComplicationFactory:v10];
    v15 = [[NTKGladiusSolarDataSource alloc] initWithDevice:deviceCopy];
    dataSource = v9->_dataSource;
    v9->_dataSource = v15;

    v17 = [[_TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData alloc] initWithDevice:deviceCopy];
    stretchySecondHandData = v9->_stretchySecondHandData;
    v9->_stretchySecondHandData = v17;

    v19 = [[_TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator alloc] initWithDevice:deviceCopy];
    lightSpillCoordinator = v9->_lightSpillCoordinator;
    v9->_lightSpillCoordinator = v19;

    [(NTKGladiusLightSpillCoordinator *)v9->_lightSpillCoordinator setUpdateDelegate:v9];
  }

  return v9;
}

- (void)_reorderSwitcherSnapshotView
{
  switcherSnapshotView = [(NTKGladiusFaceView *)self switcherSnapshotView];

  if (switcherSnapshotView)
  {
    switcherSnapshotView2 = [(NTKGladiusFaceView *)self switcherSnapshotView];
    [(NTKGladiusFaceView *)self bringSubviewToFront:switcherSnapshotView2];
  }
}

- (void)_loadSnapshotContentViews
{
  v42.receiver = self;
  v42.super_class = NTKGladiusFaceView;
  [(NTKGladiusFaceView *)&v42 _loadSnapshotContentViews];
  v3 = [UIView alloc];
  contentView = [(NTKGladiusFaceView *)self contentView];
  [contentView bounds];
  v5 = [v3 initWithFrame:?];
  backgroundContainerView = self->_backgroundContainerView;
  self->_backgroundContainerView = v5;

  contentView2 = [(NTKGladiusFaceView *)self contentView];
  [contentView2 addSubview:self->_backgroundContainerView];

  stretchySecondHandData = self->_stretchySecondHandData;
  timeView = [(NTKGladiusFaceView *)self timeView];
  [timeView setStretchySecondHandData:stretchySecondHandData];

  timeView2 = [(NTKGladiusFaceView *)self timeView];
  [timeView2 setDelegate:self];

  v11 = [CLKUIMetalQuadView alloc];
  contentView3 = [(NTKGladiusFaceView *)self contentView];
  [contentView3 bounds];
  v13 = [v11 initWithFrame:@"Glds" identifier:4 options:0 colorSpace:?];
  lightingQuadView = self->_lightingQuadView;
  self->_lightingQuadView = v13;

  [(CLKUIMetalQuadView *)self->_lightingQuadView setOpaque:1];
  v15 = [_TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad alloc];
  device = [(NTKGladiusFaceView *)self device];
  v17 = [(NTKGladiusQuad *)v15 initWithDevice:device stretchySecondHandData:self->_stretchySecondHandData];
  lightingQuad = self->_lightingQuad;
  self->_lightingQuad = v17;

  [(CLKUIMetalQuadView *)self->_lightingQuadView addQuad:self->_lightingQuad];
  [(CLKUIMetalQuadView *)self->_lightingQuadView setPreferredFramesPerSecond:30];
  [(CLKUIMetalQuadView *)self->_lightingQuadView setPaused:0];
  [(UIView *)self->_backgroundContainerView addSubview:self->_lightingQuadView];
  v19 = [NTKGladiusDialView alloc];
  device2 = [(NTKGladiusFaceView *)self device];
  style = self->_style;
  colorPalette = [(NTKGladiusFaceView *)self colorPalette];
  v23 = [(NTKGladiusDialView *)v19 initWithDevice:device2 style:style palette:colorPalette];
  dialView = self->_dialView;
  self->_dialView = v23;

  [(NTKGladiusDialView *)self->_dialView setLightSpillCoordinator:self->_lightSpillCoordinator];
  contentView4 = [(NTKGladiusFaceView *)self contentView];
  [contentView4 addSubview:self->_dialView];

  lightSpillCoordinator = self->_lightSpillCoordinator;
  timeView3 = [(NTKGladiusFaceView *)self timeView];
  [timeView3 setLightingDelegate:lightSpillCoordinator];

  v28 = [NTKRoundedCornerOverlayView alloc];
  contentView5 = [(NTKGladiusFaceView *)self contentView];
  [contentView5 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  device3 = [(NTKGladiusFaceView *)self device];
  v39 = [v28 initWithFrame:device3 forDeviceCornerRadius:{v31, v33, v35, v37}];
  cornerOverlayView = self->_cornerOverlayView;
  self->_cornerOverlayView = v39;

  contentView6 = [(NTKGladiusFaceView *)self contentView];
  [contentView6 addSubview:self->_cornerOverlayView];
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

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = NTKGladiusFaceView;
  [(NTKGladiusFaceView *)&v15 setOverrideDate:dateCopy duration:duration];
  objc_storeStrong(&self->_overrideDate, date);
  [(NTKGladiusQuad *)self->_lightingQuad setOverrideDate:dateCopy duration:duration];
  [(NTKGladiusLightSpillCoordinator *)self->_lightSpillCoordinator setOverrideDate:dateCopy duration:duration];
  if (duration > 0.0)
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
    *&v13[1] = Current + duration;
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

- (void)_updateDateOverrideAnimationWithStopTime:(double)time
{
  if (CFAbsoluteTimeGetCurrent() > time && self->_overrideDateAnimationTimerToken)
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
  currentDisplayDate = [(NTKGladiusFaceView *)self currentDisplayDate];
  [(NTKGladiusSolarDataSource *)dataSource updateNightFractionForDate:currentDisplayDate];

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
  timeView = [(NTKGladiusFaceView *)self timeView];
  v8 = [(NTKGladiusFaceView *)self _secondHandColorForLight:self->_light];
  [timeView applySecondHandColor:v8];

  timeView2 = [(NTKGladiusFaceView *)self timeView];
  v10 = [(NTKGladiusFaceView *)self _hourMinuteHandStrokeColorForLight:self->_light];
  colorPalette = [(NTKGladiusFaceView *)self colorPalette];
  hourMinuteHandInlay = [colorPalette hourMinuteHandInlay];
  [timeView2 applyHourMinuteHandsStrokeColor:v10 fillColor:hourMinuteHandInlay];

  v16 = 0;
  v17 = 0;
  colorPalette2 = [(NTKGladiusFaceView *)self colorPalette];
  [(NTKGladiusFaceView *)self _getComplicationColorsTop:&v17 bottom:&v16 palette:colorPalette2 nightFraction:v4 editingFraction:0.0];
  v14 = v17;
  v15 = v16;

  [(NTKGladiusFaceView *)self _updateTopComplicationWithColor:v14];
  [(NTKGladiusFaceView *)self _updateBottomComplicationWithColor:v15];
}

- (double)_nightFractionForLight:(unint64_t)light
{
  switch(light)
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

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v27.receiver = self;
  v27.super_class = NTKGladiusFaceView;
  [(NTKGladiusFaceView *)&v27 _configureComplicationView:viewCopy forSlot:slot];
  editing = [(NTKGladiusFaceView *)self editing];
  v25 = 0;
  v26 = 0;
  colorPalette = [(NTKGladiusFaceView *)self colorPalette];
  [(NTKGladiusFaceView *)self _nightFractionForLight:self->_light];
  v10 = v9;
  [(NTKGladiusFaceView *)self _editingFractionForEditMode:editing];
  [(NTKGladiusFaceView *)self _getComplicationColorsTop:&v26 bottom:&v25 palette:colorPalette nightFraction:v10 editingFraction:v11];
  v12 = v26;
  v13 = v25;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cLKFontWithAlternativePunctuation = v12;
    [(NTKGladiusFaceView *)self setComplicationColor:cLKFontWithAlternativePunctuation];
    [(NTKGladiusFaceView *)self setInterpolatedComplicationColor:cLKFontWithAlternativePunctuation];
    v15 = viewCopy;
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
    v17 = viewCopy;
    v18 = v12;
    label = [v17 label];
    [label setTextColor:v18];

    font = [v17 font];
    [font pointSize];
    v21 = [CLKFont systemFontOfSize:"systemFontOfSize:weight:design:" weight:CLKRoundedFontDesignName design:?];

    cLKFontWithAlternativePunctuation = [v21 CLKFontWithAlternativePunctuation];

LABEL_10:
    [v17 setFont:cLKFontWithAlternativePunctuation];
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = viewCopy;
    v22 = v12;
    font2 = [v17 font];
    [font2 pointSize];
    v24 = [CLKFont systemFontOfSize:"systemFontOfSize:weight:design:" weight:CLKRoundedFontDesignName design:?];
    cLKFontWithAlternativePunctuation = [v24 CLKFontWithAlternativePunctuation];

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
  device = [(NTKGladiusFaceView *)self device];
  sub_52E8(device, device);
  v6 = v5;

  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeScale(&v9, v6, v6);
  v8 = [(NTKGladiusFaceView *)self complicationLayoutforSlot:v3];
  v7 = v8;
  NTKEnumerateComplicationStates();
}

- (void)lightSpillCoordinator:(id)coordinator wantsUpdateForAngle:(double)angle
{
  v8 = 0;
  v9 = 0;
  colorPalette = [(NTKGladiusFaceView *)self colorPalette];
  [(NTKGladiusFaceView *)self _nightFractionForLight:self->_light];
  [NTKGladiusFaceView _getComplicationColorsTop:"_getComplicationColorsTop:bottom:palette:nightFraction:editingFraction:secondHandAngle:" bottom:&v9 palette:&v8 nightFraction:colorPalette editingFraction:? secondHandAngle:?];
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

- (void)_applyPalette:(id)palette forTritium:(BOOL)tritium
{
  paletteCopy = palette;
  if (!tritium)
  {
    [(NTKGladiusDialView *)self->_dialView setPalette:paletteCopy];
  }

  [(NTKGladiusFaceView *)self _nightFractionForLight:self->_light];
  v8 = v7;
  [(NTKGladiusFaceView *)self _colorFractionForNightFraction:?];
  [(NTKGladiusQuad *)self->_lightingQuad setShadowDensity:v8];
  lightingQuad = self->_lightingQuad;
  background = [paletteCopy background];
  [(NTKGladiusQuad *)lightingQuad setColor:background];

  hourMinuteHandStrokeDay = [paletteCopy hourMinuteHandStrokeDay];
  hourMinuteHandStrokeNight = [paletteCopy hourMinuteHandStrokeNight];
  v13 = NTKInterpolateBetweenColors();

  timeView = [(NTKGladiusFaceView *)self timeView];
  hourMinuteHandInlay = [paletteCopy hourMinuteHandInlay];
  [timeView applyHourMinuteHandsStrokeColor:v13 fillColor:hourMinuteHandInlay];

  timeView2 = [(NTKGladiusFaceView *)self timeView];
  secondHandDay = [paletteCopy secondHandDay];
  secondHandNight = [paletteCopy secondHandNight];
  v19 = NTKInterpolateBetweenColors();
  [timeView2 applySecondHandColor:v19];

  timeView3 = [(NTKGladiusFaceView *)self timeView];
  secondHandView = [timeView3 secondHandView];
  [secondHandView setHandDotColor:v13];

  v24 = 0;
  v25 = 0;
  [(NTKGladiusFaceView *)self _getComplicationColorsTop:&v25 bottom:&v24 palette:paletteCopy nightFraction:v8 editingFraction:0.0];
  v22 = v25;
  v23 = v24;
  [(NTKGladiusFaceView *)self _updateTopComplicationWithColor:v22];
  [(NTKGladiusFaceView *)self _updateBottomComplicationWithColor:v23];
}

- (void)_getComplicationColorsTop:(id *)top bottom:(id *)bottom palette:(id)palette nightFraction:(double)fraction editingFraction:(double)editingFraction
{
  paletteCopy = palette;
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

  [(NTKGladiusFaceView *)self _getComplicationColorsTop:top bottom:bottom palette:paletteCopy nightFraction:fraction editingFraction:editingFraction secondHandAngle:0.0];
}

- (void)_getComplicationColorsTop:(id *)top bottom:(id *)bottom palette:(id)palette nightFraction:(double)fraction editingFraction:(double)editingFraction secondHandAngle:(double)angle
{
  paletteCopy = palette;
  [(NTKGladiusFaceView *)self _colorFractionForNightFraction:fraction];
  editing = [paletteCopy editing];
  topComplicationDay = [paletteCopy topComplicationDay];
  topComplicationNight = [paletteCopy topComplicationNight];
  v16 = NTKInterpolateBetweenColors();

  bottomComplicationDay = [paletteCopy bottomComplicationDay];
  bottomComplicationNight = [paletteCopy bottomComplicationNight];

  v19 = NTKInterpolateBetweenColors();

  v20 = cos(angle + -0.261799388) * 0.5 + 0.5;
  v21 = +[UIColor whiteColor];
  pow(v20, 4.0);
  v22 = NTKInterpolateBetweenColors();

  v23 = +[UIColor whiteColor];
  pow(1.0 - v20, 4.0);
  v24 = NTKInterpolateBetweenColors();

  *top = NTKInterpolateBetweenColors();
  *bottom = NTKInterpolateBetweenColors();
}

- (void)_updateTopComplicationWithColor:(id)color
{
  colorCopy = color;
  v4 = [(NTKGladiusFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotSubdialTop];
  display = [v4 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    label = [display label];
    [label setTextColor:colorCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [display setTextColor:colorCopy];
    }
  }
}

- (void)_updateBottomComplicationWithColor:(id)color
{
  colorCopy = color;
  v4 = [(NTKGladiusFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotSubdialBottom];
  display = [v4 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKGladiusFaceView *)self setComplicationColor:colorCopy];
    [(NTKGladiusFaceView *)self setInterpolatedComplicationColor:colorCopy];
    [display updateMonochromeColor];
  }
}

- (id)_secondHandColorForLight:(unint64_t)light
{
  colorPalette = [(NTKGladiusFaceView *)self colorPalette];
  secondHandDay = [colorPalette secondHandDay];
  colorPalette2 = [(NTKGladiusFaceView *)self colorPalette];
  secondHandNight = [colorPalette2 secondHandNight];
  [(NTKGladiusFaceView *)self _nightFractionForLight:light];
  [(NTKGladiusFaceView *)self _colorFractionForNightFraction:?];
  v9 = NTKInterpolateBetweenColors();

  return v9;
}

- (id)_hourMinuteHandStrokeColorForLight:(unint64_t)light
{
  colorPalette = [(NTKGladiusFaceView *)self colorPalette];
  hourMinuteHandStrokeDay = [colorPalette hourMinuteHandStrokeDay];
  colorPalette2 = [(NTKGladiusFaceView *)self colorPalette];
  hourMinuteHandStrokeNight = [colorPalette2 hourMinuteHandStrokeNight];
  [(NTKGladiusFaceView *)self _nightFractionForLight:light];
  [(NTKGladiusFaceView *)self _colorFractionForNightFraction:?];
  v9 = NTKInterpolateBetweenColors();

  return v9;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      colorPalette = [(NTKGladiusFaceView *)self colorPalette];
      [(NTKGladiusFaceView *)self _applyPalette:colorPalette];

      break;
    case 12:
      self->_light = [optionCopy light];
      [(NTKGladiusFaceView *)self _applyNightFraction];
      break;
    case 15:
      style = [optionCopy style];
      self->_style = style;
      [(NTKGladiusDialView *)self->_dialView setStyle:style];
      break;
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      interpolatedColorPalette = [(NTKGladiusFaceView *)self interpolatedColorPalette];
      [(NTKGladiusFaceView *)self _applyPalette:interpolatedColorPalette];
      goto LABEL_10;
    case 12:
      light = [optionCopy light];
      light2 = [toOptionCopy light];
      if (light == light2)
      {
        break;
      }

      v21 = light2;
      [(NTKGladiusFaceView *)self _nightFractionForLight:light];
      [(NTKGladiusFaceView *)self _nightFractionForLight:v21];
      CLKInterpolateBetweenFloatsClipped();
      v23 = v22;
      [(NTKGladiusQuad *)self->_lightingQuad setShadowDensity:?];
      [(NTKGladiusFaceView *)self _colorFractionForNightFraction:v23];
      [(NTKGladiusDialView *)self->_dialView setColorFraction:?];
      v24 = [(NTKGladiusFaceView *)self _hourMinuteHandStrokeColorForLight:light];
      v25 = [(NTKGladiusFaceView *)self _hourMinuteHandStrokeColorForLight:v21];
      interpolatedColorPalette = NTKInterpolateBetweenColors();

      timeView = [(NTKGladiusFaceView *)self timeView];
      colorPalette = [(NTKGladiusFaceView *)self colorPalette];
      hourMinuteHandInlay = [colorPalette hourMinuteHandInlay];
      [timeView applyHourMinuteHandsStrokeColor:interpolatedColorPalette fillColor:hourMinuteHandInlay];

      timeView2 = [(NTKGladiusFaceView *)self timeView];
      secondHandView = [timeView2 secondHandView];
      [secondHandView setHandDotColor:interpolatedColorPalette];

      timeView3 = [(NTKGladiusFaceView *)self timeView];
      v33 = [(NTKGladiusFaceView *)self _secondHandColorForLight:light];
      v34 = [(NTKGladiusFaceView *)self _secondHandColorForLight:v21];
      v35 = NTKInterpolateBetweenColors();
      [timeView3 applySecondHandColor:v35];

      v42 = 0;
      v43 = 0;
      colorPalette2 = [(NTKGladiusFaceView *)self colorPalette];
      [(NTKGladiusFaceView *)self _getComplicationColorsTop:&v43 bottom:&v42 palette:colorPalette2 nightFraction:v23 editingFraction:0.0];
      v37 = v43;
      v38 = v42;

      [(NTKGladiusFaceView *)self _updateTopComplicationWithColor:v37];
      [(NTKGladiusFaceView *)self _updateBottomComplicationWithColor:v38];

LABEL_10:
      break;
    case 15:
      style = [optionCopy style];
      style2 = [toOptionCopy style];
      if (style != style2)
      {
        if (fraction >= 0.5)
        {
          v39 = style2;
          CLKMapFractionIntoRange();
          v18 = v40;
          style = v39;
        }

        else
        {
          CLKMapFractionIntoRange();
          v18 = v17;
        }

        CLKMapFractionIntoRange();
        memset(&v45, 0, sizeof(v45));
        CGAffineTransformMakeScale(&v45, v41, v41);
        [(NTKGladiusDialView *)self->_dialView setStyle:style];
        [(NTKGladiusDialView *)self->_dialView setAlpha:v18];
        v44 = v45;
        [(NTKGladiusDialView *)self->_dialView setTransform:&v44];
      }

      break;
  }
}

- (void)_configureForEditMode:(int64_t)mode
{
  [(NTKGladiusFaceView *)self _contentViewAlphaForEditMode:?];
  v6 = v5;
  timeView = [(NTKGladiusFaceView *)self timeView];
  [timeView setAlpha:v6];

  contentView = [(NTKGladiusFaceView *)self contentView];
  [contentView setAlpha:v6];

  v15 = 0;
  v16 = 0;
  colorPalette = [(NTKGladiusFaceView *)self colorPalette];
  [(NTKGladiusFaceView *)self _nightFractionForLight:self->_light];
  v11 = v10;
  [(NTKGladiusFaceView *)self _editingFractionForEditMode:mode];
  [(NTKGladiusFaceView *)self _getComplicationColorsTop:&v16 bottom:&v15 palette:colorPalette nightFraction:v11 editingFraction:v12];
  v13 = v16;
  v14 = v15;

  [(NTKGladiusFaceView *)self _updateTopComplicationWithColor:v13];
  [(NTKGladiusFaceView *)self _updateBottomComplicationWithColor:v14];
}

- (double)_editingFractionForEditMode:(int64_t)mode
{
  result = 0.0;
  if (mode == 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKGladiusFaceView *)self _contentViewAlphaForEditMode:?];
  [(NTKGladiusFaceView *)self _contentViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  timeView = [(NTKGladiusFaceView *)self timeView];
  [timeView setAlpha:v9];

  contentView = [(NTKGladiusFaceView *)self contentView];
  [contentView setAlpha:v9];

  v18 = 0;
  v19 = 0;
  colorPalette = [(NTKGladiusFaceView *)self colorPalette];
  [(NTKGladiusFaceView *)self _nightFractionForLight:self->_light];
  v14 = v13;
  [(NTKGladiusFaceView *)self _editingFractionForEditMode:mode];
  [(NTKGladiusFaceView *)self _editingFractionForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKGladiusFaceView *)self _getComplicationColorsTop:&v19 bottom:&v18 palette:colorPalette nightFraction:v14 editingFraction:v15];
  v16 = v19;
  v17 = v18;

  [(NTKGladiusFaceView *)self _updateTopComplicationWithColor:v16];
  [(NTKGladiusFaceView *)self _updateBottomComplicationWithColor:v17];
}

- (double)_contentViewAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode)
  {
    self->_breathingFraction = fraction;
    [(NTKGladiusFaceView *)self _applyBreathingAndRubberbanding:mode];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode)
  {
    self->_rubberbandingFraction = fraction;
    [(NTKGladiusFaceView *)self _applyBreathingAndRubberbanding:mode];
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
  timeView = [(NTKGladiusFaceView *)self timeView];
  v13 = v14;
  [timeView setTransform:&v13];

  v12 = v15;
  contentView = [(NTKGladiusFaceView *)self contentView];
  v13 = v12;
  [contentView setTransform:&v13];

  v11 = v15;
  complicationContainerView = [(NTKGladiusFaceView *)self complicationContainerView];
  v13 = v11;
  [complicationContainerView setTransform:&v13];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  deviceCopy = device;
  if (options == 15)
  {
    v7 = &off_216C8;
  }

  else if (options == 12)
  {
    v7 = &off_216E0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS___NTKGladiusFaceView;
    v7 = objc_msgSendSuper2(&v9, "_swatchForEditModeDependsOnOptions:forDevice:", options, deviceCopy);
  }

  return v7;
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  v10 = optionsCopy;
  if (mode == 12)
  {
    v11 = [optionsCopy objectForKeyedSubscript:&off_21500];
    v14 = optionCopy;
    v15 = [v10 objectForKeyedSubscript:&off_214E8];
    v13 = [(NTKGladiusFaceView *)self _swatchForStyleOption:v11 lightOption:v14 colorOption:v15];

    goto LABEL_5;
  }

  if (mode == 15)
  {
    v11 = [optionsCopy objectForKeyedSubscript:&off_214D0];
    v12 = [v10 objectForKeyedSubscript:&off_214E8];
    v13 = [(NTKGladiusFaceView *)self _swatchForStyleOption:optionCopy lightOption:v11 colorOption:v12];

LABEL_5:
    goto LABEL_7;
  }

  v17.receiver = self;
  v17.super_class = NTKGladiusFaceView;
  v13 = [(NTKGladiusFaceView *)&v17 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
LABEL_7:

  return v13;
}

- (id)_swatchForStyleOption:(id)option lightOption:(id)lightOption colorOption:(id)colorOption
{
  optionCopy = option;
  lightOptionCopy = lightOption;
  colorOptionCopy = colorOption;
  if (qword_2A3B0 != -1)
  {
    sub_128CC();
  }

  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [optionCopy style]);
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [lightOptionCopy light]);
  identifier = [colorOptionCopy identifier];
  v14 = [NSString stringWithFormat:@"%@-%@-%@", v11, v12, identifier];

  v15 = [qword_2A3A8 objectForKey:v14];
  if (!v15)
  {
    v16 = [NTKGladiusFaceView alloc];
    device = [(NTKGladiusFaceView *)self device];
    v18 = [(NTKGladiusFaceView *)v16 initWithFaceStyle:44 forDevice:device clientIdentifier:0];

    [(NTKGladiusFaceView *)self bounds];
    [(NTKGladiusFaceView *)v18 setBounds:?];
    [(NTKGladiusFaceView *)v18 _loadSnapshotContentViews];
    [(NTKGladiusFaceView *)v18 setOption:optionCopy forCustomEditMode:15 slot:0];
    [(NTKGladiusFaceView *)v18 setOption:lightOptionCopy forCustomEditMode:12 slot:0];
    [(NTKGladiusFaceView *)v18 setOption:colorOptionCopy forCustomEditMode:10 slot:0];
    v19 = NTKIdealizedDate();
    [(NTKGladiusFaceView *)v18 setOverrideDate:v19 duration:0.0];

    lightingQuadView = v18->_lightingQuadView;
    [(NTKGladiusFaceView *)v18 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    device2 = [(NTKGladiusFaceView *)self device];
    [device2 screenScale];
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

- (void)overrideZRotation:(double)rotation forHandView:(id)view
{
  viewCopy = view;
  timeView = [(NTKGladiusFaceView *)self timeView];
  secondHandView = [timeView secondHandView];

  if (secondHandView == viewCopy)
  {
    timeView2 = [(NTKGladiusFaceView *)self timeView];
    [timeView2 applyInstantaneousSecondHandTransformForAngle:rotation];
  }
}

- (void)overrideAnimationApplier:(double)applier zRotation:(double)rotation forHandView:(id)view
{
  viewCopy = view;
  timeView = [(NTKGladiusFaceView *)self timeView];
  secondHandView = [timeView secondHandView];

  if (secondHandView == viewCopy)
  {
    timeView2 = [(NTKGladiusFaceView *)self timeView];
    [timeView2 applyInstantaneousSecondHandTransformForAngle:rotation];
  }
}

@end