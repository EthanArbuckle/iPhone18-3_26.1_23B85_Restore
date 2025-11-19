@interface NTKUnity2025FaceView
- (NTKUnity2025FaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_forceUpdateComplicationColor;
- (void)_loadSnapshotContentViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_setUpMetalView;
- (void)_tearDownMetalView;
- (void)_unloadSnapshotContentViews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKUnity2025FaceView

- (NTKUnity2025FaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v9 = a4;
  v15.receiver = self;
  v15.super_class = NTKUnity2025FaceView;
  v10 = [(NTKAnalogFaceView *)&v15 initWithFaceStyle:a3 forDevice:v9 clientIdentifier:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, a4);
    v11->_isPaused = 1;
    v12 = [[NTKUnity2025FaceViewComplicationFactory alloc] initForDevice:v9];
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

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = NTKUnity2025FaceView;
  v6 = a3;
  [(NTKUnity2025FaceView *)&v7 setOverrideDate:v6 duration:a4];
  [(NTKUnity2025Quad *)self->_quad setOverrideDate:v6 duration:a4, v7.receiver, v7.super_class];
}

- (void)_reorderSwitcherSnapshotView
{
  v3 = [(NTKUnity2025FaceView *)self switcherSnapshotView];

  if (v3)
  {
    v4 = [(NTKUnity2025FaceView *)self switcherSnapshotView];
    [(NTKUnity2025FaceView *)self bringSubviewToFront:v4];
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
  v8 = [(NTKUnity2025FaceView *)self contentView];
  [v8 addSubview:self->_quadView];

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

- (void)_configureForEditMode:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = NTKUnity2025FaceView;
  [(NTKAnalogFaceView *)&v6 _configureForEditMode:?];
  if (a3 == 10)
  {
    v5 = 4;
  }

  else
  {
    if (a3)
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

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v12.receiver = self;
  v12.super_class = NTKUnity2025FaceView;
  [NTKAnalogFaceView _configureForTransitionFraction:sel__configureForTransitionFraction_fromEditMode_toEditMode_ fromEditMode:? toEditMode:?];
  v9 = *MEMORY[0x277D2BF18];
  if (a4 == 1)
  {
    v10 = *MEMORY[0x277D2BF18];
  }

  else
  {
    v10 = 1.0;
  }

  if (a5 != 1)
  {
    v9 = 1.0;
  }

  v11 = a3;
  [(CLKUIMetalQuadView *)self->_quadView setAlpha:fminf(fmaxf(v10, v9), v10 + ((v9 - v10) * v11))];
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

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  if (a6 == 10)
  {
    v25 = v13;
    v26 = v10;
    v27 = v9;
    v28 = v8;
    v29 = v7;
    v18 = a5;
    v19 = [a4 effectiveOptionName];
    v20 = NTKUnity2025SettingIndexFromColorwayName(v19);

    v21 = [v18 effectiveOptionName];

    v22 = NTKUnity2025SettingIndexFromColorwayName(v21);
    if (v20 == v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = 5;
    }

    [(NTKUnity2025Quad *)self->_quad setState:v23, v14, v25, v26, v27, v28, v29, v11];
    *&v24 = a3;
    [(NTKUnity2025Quad *)self->_quad morphBetweenColorways:v20 index1:v22 index2:v24];

    [(NTKUnity2025FaceView *)self _forceUpdateComplicationColor];
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v12 _applyOption:v8 forCustomEditMode:a4 slot:a5];
  if (a4 == 10)
  {
    v9 = [v8 effectiveOptionName];
    v10 = NTKUnity2025SettingIndexFromColorwayName(v9);

    v11 = [(NTKUnity2025Quad *)self->_quad state];
    [(NTKUnity2025Quad *)self->_quad morphBetweenColorways:v10 index1:v10 index2:0.0];
    [(NTKUnity2025Quad *)self->_quad setState:v11];
    [(NTKUnity2025FaceView *)self _forceUpdateComplicationColor];
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v10.receiver = self;
  v10.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v10 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v9, v7, v7);
    v8 = v9;
    [(NTKUnity2025FaceView *)self setTransform:&v8];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v15.receiver = self;
  v15.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v15 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    NTKScaleForRubberBandingFraction();
    v8 = v7;
    NTKAlphaForRubberBandingFraction();
    v10 = v9;
    v11 = [(NTKUnity2025FaceView *)self rootContainerView];
    CGAffineTransformMakeScale(&v13, v8, v8);
    CGAffineTransformTranslate(&v14, &v13, 0.0, 1.0);
    [v11 setTransform:&v14];

    v12 = [(NTKUnity2025FaceView *)self rootContainerView];
    [v12 setAlpha:v10];
  }
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKUnity2025FaceView;
  [(NTKAnalogFaceView *)&v4 _cleanupAfterEditing];
  v3 = [(NTKUnity2025FaceView *)self complicationContainerView];
  [v3 setAlpha:1.0];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = NTKUnity2025FaceView;
  [(NTKUnity2025FaceView *)&v10 _configureComplicationView:v6 forSlot:a4];
  if ([v6 conformsToProtocol:&unk_284EFC1E0])
  {
    v7 = v6;
    v8 = [MEMORY[0x277D75348] clearColor];
    [v7 setPlatterColor:v8];

    if (objc_opt_respondsToSelector())
    {
      v9 = [MEMORY[0x277D75210] effectWithStyle:16];
      [v7 setPlatterVisualEffect:v9];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 transitionToMonochromeWithFraction:1.0];
  }
}

@end