@interface NTKUnity2025FaceView
- (NTKUnity2025FaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_forceUpdateComplicationColor;
- (void)_loadSnapshotContentViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_setUpMetalView;
- (void)_tearDownMetalView;
- (void)_unloadSnapshotContentViews;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKUnity2025FaceView

- (NTKUnity2025FaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = NTKUnity2025FaceView;
  v10 = [(NTKAnalogFaceView *)&v15 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, device);
    v11->_isPaused = 1;
    v12 = [[NTKUnity2025FaceViewComplicationFactory alloc] initForDevice:deviceCopy];
    complicationFactory = v11->_complicationFactory;
    v11->_complicationFactory = v12;

    [(NTKFaceViewComplicationFactory *)v11->_complicationFactory setAlpha:v11 faceView:1.0];
    [(NTKUnity2025FaceView *)v11 setComplicationFactory:v11->_complicationFactory];
    [(NTKUnity2025FaceViewComplicationFactory *)v11->_complicationFactory setFaceView:v11];
  }

  return v11;
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKUnity2025FaceView;
  [(NTKAnalogFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKUnity2025FaceView *)self _setUpMetalView];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKUnity2025FaceView;
  [(NTKAnalogFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKUnity2025FaceView *)self _tearDownMetalView];
}

- (void)_applyFrozen
{
  v2.receiver = self;
  v2.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v2 _applyFrozen];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKUnity2025FaceView;
  dateCopy = date;
  [(NTKUnity2025FaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKUnity2025Quad *)self->_quad setOverrideDate:dateCopy duration:duration, v7.receiver, v7.super_class];
}

- (void)_reorderSwitcherSnapshotView
{
  switcherSnapshotView = [(NTKUnity2025FaceView *)self switcherSnapshotView];

  if (switcherSnapshotView)
  {
    switcherSnapshotView2 = [(NTKUnity2025FaceView *)self switcherSnapshotView];
    [(NTKUnity2025FaceView *)self bringSubviewToFront:switcherSnapshotView2];
  }
}

- (void)_setUpMetalView
{
  v3 = MEMORY[0x277CFA790];
  [(CLKDevice *)self->_device screenBounds];
  v4 = [v3 quadViewWithFrame:@"UT25" identifier:41 options:0 colorSpace:?];
  quadView = self->_quadView;
  self->_quadView = v4;

  [(CLKUIMetalQuadView *)self->_quadView setUserInteractionEnabled:0];
  [(CLKUIMetalQuadView *)self->_quadView setOpaque:1];
  v6 = [[NTKUnity2025Quad alloc] initWithDevice:self->_device];
  quad = self->_quad;
  self->_quad = v6;

  [(CLKUIMetalQuadView *)self->_quadView addQuad:self->_quad];
  contentView = [(NTKUnity2025FaceView *)self contentView];
  [contentView addSubview:self->_quadView];

  [(NTKUnity2025FaceView *)self bounds];
  [(CLKUIMetalQuadView *)self->_quadView setFrame:?];
  v9 = self->_quadView;
  [(NTKUnity2025Quad *)self->_quad deviceFPS];
  [(CLKUIMetalQuadView *)v9 setPreferredFramesPerSecond:v10];
  v11 = self->_quadView;

  MEMORY[0x2821F9670](v11, sel_setPaused_);
}

- (void)_tearDownMetalView
{
  [(CLKUIMetalQuadView *)self->_quadView setDelegate:0];
  [(CLKUIMetalQuadView *)self->_quadView removeQuad:self->_quad];
  quad = self->_quad;
  self->_quad = 0;

  [(CLKUIMetalQuadView *)self->_quadView removeFromSuperview];
  quadView = self->_quadView;
  self->_quadView = 0;
}

- (void)_configureForEditMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = NTKUnity2025FaceView;
  [(NTKAnalogFaceView *)&v6 _configureForEditMode:?];
  if (mode == 10)
  {
    v5 = 4;
  }

  else
  {
    if (mode)
    {
      return;
    }

    v5 = 0;
  }

  [(NTKUnity2025Quad *)self->_quad setState:v5];
}

- (id)createFaceColorPalette
{
  v2 = [(NTKFaceColorPalette *)[NTKUnity2025ColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v12.receiver = self;
  v12.super_class = NTKUnity2025FaceView;
  [NTKAnalogFaceView _configureForTransitionFraction:sel__configureForTransitionFraction_fromEditMode_toEditMode_ fromEditMode:? toEditMode:?];
  v9 = *MEMORY[0x277D2BF18];
  if (mode == 1)
  {
    v10 = *MEMORY[0x277D2BF18];
  }

  else
  {
    v10 = 1.0;
  }

  if (editMode != 1)
  {
    v9 = 1.0;
  }

  fractionCopy = fraction;
  [(CLKUIMetalQuadView *)self->_quadView setAlpha:fminf(fmaxf(v10, v9), v10 + ((v9 - v10) * fractionCopy))];
}

- (void)_forceUpdateComplicationColor
{
  [(NTKUnity2025Quad *)self->_quad complicationForegroundColor];
  v7 = [MEMORY[0x277D75348] colorWithRed:v5 green:v3 blue:v4 alpha:1.0];
  [(NTKUnity2025FaceView *)self setComplicationColor:v7];
  [(NTKUnity2025FaceView *)self setInterpolatedComplicationColor:v7];
  v6 = NTKColorByBrightening();
  [(NTKUnity2025FaceView *)self setAlternateComplicationColor:v6];
  [(NTKUnity2025FaceView *)self enumerateComplicationDisplayWrappersWithBlock:&unk_284EDCAC0];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v25 = v13;
    v26 = v10;
    v27 = v9;
    v28 = v8;
    v29 = v7;
    toOptionCopy = toOption;
    effectiveOptionName = [option effectiveOptionName];
    v20 = NTKUnity2025SettingIndexFromColorwayName(effectiveOptionName);

    effectiveOptionName2 = [toOptionCopy effectiveOptionName];

    v22 = NTKUnity2025SettingIndexFromColorwayName(effectiveOptionName2);
    if (v20 == v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = 5;
    }

    [(NTKUnity2025Quad *)self->_quad setState:v23, v14, v25, v26, v27, v28, v29, v11];
    *&v24 = fraction;
    [(NTKUnity2025Quad *)self->_quad morphBetweenColorways:v20 index1:v22 index2:v24];

    [(NTKUnity2025FaceView *)self _forceUpdateComplicationColor];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v12.receiver = self;
  v12.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v12 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  if (mode == 10)
  {
    effectiveOptionName = [optionCopy effectiveOptionName];
    v10 = NTKUnity2025SettingIndexFromColorwayName(effectiveOptionName);

    state = [(NTKUnity2025Quad *)self->_quad state];
    [(NTKUnity2025Quad *)self->_quad morphBetweenColorways:v10 index1:v10 index2:0.0];
    [(NTKUnity2025Quad *)self->_quad setState:state];
    [(NTKUnity2025FaceView *)self _forceUpdateComplicationColor];
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v10.receiver = self;
  v10.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v10 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v9, v7, v7);
    v8 = v9;
    [(NTKUnity2025FaceView *)self setTransform:&v8];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v15.receiver = self;
  v15.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v15 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    NTKScaleForRubberBandingFraction();
    v8 = v7;
    NTKAlphaForRubberBandingFraction();
    v10 = v9;
    rootContainerView = [(NTKUnity2025FaceView *)self rootContainerView];
    CGAffineTransformMakeScale(&v13, v8, v8);
    CGAffineTransformTranslate(&v14, &v13, 0.0, 1.0);
    [rootContainerView setTransform:&v14];

    rootContainerView2 = [(NTKUnity2025FaceView *)self rootContainerView];
    [rootContainerView2 setAlpha:v10];
  }
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKUnity2025FaceView;
  [(NTKAnalogFaceView *)&v4 _cleanupAfterEditing];
  complicationContainerView = [(NTKUnity2025FaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:1.0];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v10 _configureComplicationView:viewCopy forSlot:slot];
  if ([viewCopy conformsToProtocol:&unk_284EFC1E0])
  {
    v7 = viewCopy;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v7 setPlatterColor:clearColor];

    if (objc_opt_respondsToSelector())
    {
      v9 = [MEMORY[0x277D75210] effectWithStyle:16];
      [v7 setPlatterVisualEffect:v9];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy transitionToMonochromeWithFraction:1.0];
  }
}

@end