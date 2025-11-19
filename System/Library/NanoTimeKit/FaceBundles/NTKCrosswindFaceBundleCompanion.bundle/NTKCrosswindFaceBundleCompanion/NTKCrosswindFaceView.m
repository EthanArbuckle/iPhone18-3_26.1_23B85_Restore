@interface NTKCrosswindFaceView
- (NTKCrosswindFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (id)createFaceColorPalette;
- (id)timeView;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureTimeView:(id)a3;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_unloadSnapshotContentViews;
- (void)_updateColors;
- (void)_updateColorsWithPalette:(id)a3;
- (void)_updateComplicationColorsWithPalette:(id)a3;
- (void)_updateContentTransform;
- (void)_updateFrameRate;
- (void)_updateGradientColorsWithPalette:(id)a3;
- (void)_updateTimeViewColors;
- (void)setDataMode:(int64_t)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKCrosswindFaceView

- (NTKCrosswindFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NTKCrosswindFaceView;
  v9 = [(NTKCrosswindFaceView *)&v13 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    [NTKCrosswindAnalogHandsView outerCircleRadiusForDevice:v8];
    v11 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initWithFaceView:v9 dialDiameter:v8 device:v10 + v10];
    [(NTKCrosswindFaceView *)v9 setComplicationFactory:v11];
  }

  return v9;
}

- (void)_loadSnapshotContentViews
{
  v27.receiver = self;
  v27.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v27 _loadSnapshotContentViews];
  self->_breathScaleModifier = 1.0;
  self->_rubberBandScaleModifier = 1.0;
  self->_lastAppliedTritiumProgress = -1.0;
  v3 = [(NTKCrosswindFaceView *)self timeView];
  v4 = [(NTKCrosswindFaceView *)self contentView];
  [(NTKCrosswindFaceView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NTKCrosswindFaceView *)self device];
  if (!self->_quadView)
  {
    v14 = [CLKUIQuadView quadViewWithFrame:@"Xwnd" identifier:0 options:2 colorSpace:v6, v8, v10, v12];
    quadView = self->_quadView;
    self->_quadView = v14;

    [(CLKUIQuadView *)self->_quadView setOpaque:1];
    v16 = [NTKCrosswindQuad alloc];
    [v13 screenScale];
    v18 = v17;
    v19 = [v3 calendar];
    v20 = [(NTKCrosswindQuad *)v16 initWithScreenScale:v19 calendar:v18];
    quad = self->_quad;
    self->_quad = v20;

    v22 = self->_quad;
    [v3 innerCircleRadius];
    [(NTKCrosswindQuad *)v22 setInnerCircleRadius:?];
    v23 = self->_quad;
    [v3 middleCircleRadius];
    [(NTKCrosswindQuad *)v23 setMiddleCircleRadius:?];
    v24 = self->_quad;
    [v3 outerCircleRadius];
    [(NTKCrosswindQuad *)v24 setOuterCircleRadius:?];
    [(NTKCrosswindQuad *)self->_quad setDelegate:self];
    [(CLKUIQuadView *)self->_quadView addQuad:self->_quad];
    [(CLKUIQuadView *)self->_quadView setDelegate:self];
    [v4 addSubview:self->_quadView];
  }

  if (!self->_cornerView)
  {
    v25 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:v13 forDeviceCornerRadius:{v6, v8, v10, v12}];
    cornerView = self->_cornerView;
    self->_cornerView = v25;

    [v4 addSubview:self->_cornerView];
  }

  [v3 setSecondHandDisabled:1];
  [(NTKCrosswindFaceView *)self _updateColors];
  [(NTKCrosswindFaceView *)self _updateFrameRate];
  [(NTKCrosswindFaceView *)self _updateTimeViewColors];
}

- (void)_unloadSnapshotContentViews
{
  v6.receiver = self;
  v6.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v6 _unloadSnapshotContentViews];
  [(NTKCrosswindQuad *)self->_quad setDelegate:0];
  [(CLKUIQuadView *)self->_quadView setDelegate:0];
  [(CLKUIQuadView *)self->_quadView removeQuad:self->_quad];
  quad = self->_quad;
  self->_quad = 0;

  [(CLKUIQuadView *)self->_quadView removeFromSuperview];
  quadView = self->_quadView;
  self->_quadView = 0;

  [(NTKRoundedCornerOverlayView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v3 _applyFrozen];
  [(NTKCrosswindFaceView *)self _updateFrameRate];
}

- (void)setDataMode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v4 setDataMode:a3];
  [(NTKCrosswindFaceView *)self _updateFrameRate];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v11 setOverrideDate:v6 duration:a4];
  v7 = NTKIdealizedDate();

  if (v7 == v6)
  {
    v8 = NTKCrosswindColorCompositionIdealized();
    v9 = v10;
  }

  else
  {
    v8 = -1;
    v9 = -1;
  }

  [(NTKCrosswindQuad *)self->_quad setOverrideDate:v6 overrideComposition:v8 duration:v9, a4];
}

- (id)timeView
{
  v4.receiver = self;
  v4.super_class = NTKCrosswindFaceView;
  v2 = [(NTKCrosswindFaceView *)&v4 timeView];

  return v2;
}

- (void)_configureTimeView:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v4 _configureTimeView:a3];
  [(NTKCrosswindFaceView *)self _updateTimeViewColors];
}

- (id)createFaceColorPalette
{
  v2 = [[NTKCrosswindColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_loadLayoutRules
{
  v17.receiver = self;
  v17.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v17 _loadLayoutRules];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_18B8;
  v16[3] = &unk_10438;
  v16[4] = self;
  v3 = objc_retainBlock(v16);
  v4 = [(NTKCrosswindFaceView *)self device];
  NTKDefaultCornerComplicationScaleForFullscreenOpaqueFaceForDevice();
  v6 = v5;

  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, v6, v6);
  v7 = v3[2];
  v14 = v15;
  v7(v3, &v14, 0);
  v8 = v3[2];
  v14 = v15;
  v8(v3, &v14, 1);
  v9 = v3[2];
  v12 = *&CGAffineTransformIdentity.c;
  *&v14.a = *&CGAffineTransformIdentity.a;
  v13 = *&v14.a;
  *&v14.c = v12;
  *&v14.tx = *&CGAffineTransformIdentity.tx;
  v11 = *&v14.tx;
  v9(v3, &v14, 3);
  v10 = v3[2];
  *&v14.a = v13;
  *&v14.c = v12;
  *&v14.tx = v11;
  v10(v3, &v14, 2);
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7.receiver = self;
  v7.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v7 _configureComplicationView:v6 forSlot:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 updateMonochromeColor];
  }
}

- (void)_prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v3 _prepareForEditing];
  [(NTKCrosswindFaceView *)self _updateFrameRate];
}

- (void)_cleanupAfterEditing
{
  v3.receiver = self;
  v3.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v3 _cleanupAfterEditing];
  [(NTKCrosswindFaceView *)self _updateFrameRate];
}

- (void)_configureForEditMode:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v13 _configureForEditMode:?];
  v5 = [(NTKCrosswindFaceView *)self timeView];
  [(NTKCrosswindFaceView *)self _timeAlphaForEditMode:a3];
  [v5 setAlpha:?];

  v6 = [(NTKCrosswindFaceView *)self contentView];
  [(NTKCrosswindFaceView *)self _contentAlphaForEditMode:a3];
  [v6 setAlpha:?];

  editingComplicationsPalette = self->_editingComplicationsPalette;
  if (a3 == 1)
  {
    if (!editingComplicationsPalette)
    {
      v8 = [(NTKCrosswindFaceView *)self colorPalette];
      v9 = [v8 copy];
      [v9 setIsEditingComplications:1];
      v10 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:v8 toPalette:v9];
      v11 = self->_editingComplicationsPalette;
      self->_editingComplicationsPalette = v10;

      editingComplicationsPalette = self->_editingComplicationsPalette;
    }

    [(NTKInterpolatedColorPalette *)editingComplicationsPalette setTransitionFraction:1.0];
    [(NTKCrosswindFaceView *)self _updateComplicationColorsWithPalette:self->_editingComplicationsPalette];
  }

  else
  {
    self->_editingComplicationsPalette = 0;

    v12 = [(NTKCrosswindFaceView *)self colorPalette];
    [(NTKCrosswindFaceView *)self _updateComplicationColorsWithPalette:v12];
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v16.receiver = self;
  v16.super_class = NTKCrosswindFaceView;
  [NTKCrosswindFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  v8 = [(NTKCrosswindFaceView *)self timeView];
  [(NTKCrosswindFaceView *)self _timeAlphaForEditMode:a4];
  [(NTKCrosswindFaceView *)self _timeAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v8 setAlpha:?];

  v9 = [(NTKCrosswindFaceView *)self contentView];
  [(NTKCrosswindFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKCrosswindFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v9 setAlpha:?];

  editingComplicationsPalette = self->_editingComplicationsPalette;
  if (a4 == 1 || a5 == 1)
  {
    if (!editingComplicationsPalette)
    {
      v12 = [(NTKCrosswindFaceView *)self colorPalette];
      v13 = [v12 copy];
      [v13 setIsEditingComplications:1];
      v14 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:v12 toPalette:v13];
      v15 = self->_editingComplicationsPalette;
      self->_editingComplicationsPalette = v14;
    }

    CLKInterpolateBetweenFloatsClipped();
    [(NTKInterpolatedColorPalette *)self->_editingComplicationsPalette setTransitionFraction:?];
    [(NTKCrosswindFaceView *)self _updateComplicationColorsWithPalette:self->_editingComplicationsPalette];
  }

  else
  {
    self->_editingComplicationsPalette = 0;

    v11 = [(NTKCrosswindFaceView *)self colorPalette];
    [(NTKCrosswindFaceView *)self _updateComplicationColorsWithPalette:v11];
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 10)
  {
    [(NTKCrosswindFaceView *)self _updateColors:a3];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  if (a6 == 10)
  {
    v9 = [(NTKCrosswindFaceView *)self interpolatedColorPalette:a4];
    [(NTKCrosswindFaceView *)self _updateColorsWithPalette:v9];
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v8 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    self->_breathScaleModifier = v7;
    [(NTKCrosswindFaceView *)self _updateContentTransform];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v8 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    NTKScaleForRubberBandingFraction();
    self->_rubberBandScaleModifier = v7;
    [(NTKCrosswindFaceView *)self _updateContentTransform];
    NTKAlphaForRubberBandingFraction();
    [(NTKCrosswindFaceView *)self setAlpha:?];
  }
}

- (void)_updateFrameRate
{
  v3 = [(NTKCrosswindFaceView *)self editing];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(NTKCrosswindFaceView *)self dataMode];
    v6 = [(NTKCrosswindFaceView *)self isFrozen];
    v8 = v5 != 3 && (v5 & 0xFFFFFFFFFFFFFFFBLL) != 1;
    v4 = (v6 & 1) != 0 || v8;
  }

  [(CLKUIQuadView *)self->_quadView setPaused:v4];
  if ((v3 | [(NTKCrosswindQuad *)self->_quad isAnimatingOverrideDate]))
  {
    v9 = 0;
  }

  else
  {
    v10 = [(NTKCrosswindFaceView *)self device];
    v9 = CLKUIAnalogHandsDefaultPreferredFramesPerSecondForDevice();
  }

  quadView = self->_quadView;

  [(CLKUIQuadView *)quadView setPreferredFramesPerSecond:v9];
}

- (void)_updateContentTransform
{
  v3 = self->_breathScaleModifier * self->_rubberBandScaleModifier;
  memset(&v8, 0, sizeof(v8));
  CGAffineTransformMakeScale(&v8, v3, v3);
  v4 = [(NTKCrosswindFaceView *)self contentView];
  v7 = v8;
  [v4 setTransform:&v7];

  v5 = [(NTKCrosswindFaceView *)self timeView];
  v7 = v8;
  [v5 setTransform:&v7];

  v6 = [(NTKCrosswindFaceView *)self complicationContainerView];
  v7 = v8;
  [v6 setTransform:&v7];
}

- (void)_updateColors
{
  v3 = [(NTKCrosswindFaceView *)self colorPalette];
  [(NTKCrosswindFaceView *)self _updateColorsWithPalette:v3];
}

- (void)_updateColorsWithPalette:(id)a3
{
  v4 = a3;
  [(NTKCrosswindFaceView *)self _updateComplicationColorsWithPalette:v4];
  [(NTKCrosswindFaceView *)self _updateGradientColorsWithPalette:v4];
}

- (void)_updateComplicationColorsWithPalette:(id)a3
{
  v13 = a3;
  v4 = [v13 resolvedComplicationColor];
  [(NTKCrosswindFaceView *)self setAlternateComplicationColor:v4];
  [(NTKCrosswindFaceView *)self setComplicationColor:v4];
  [(NTKCrosswindFaceView *)self setInterpolatedComplicationColor:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v13;
    v6 = [v5 toPalette];
    if ([v6 isTritium])
    {
      [v5 transitionFraction];
      v8 = v7;

      if (v8 > 0.0)
      {
        v9 = [v5 baseLayerBackground];
        v10 = +[UIColor blackColor];
        v11 = CLKInterpolateBetweenColors();

        v12 = CLKInterpolateBetweenColors();
        [(NTKCrosswindFaceView *)self setComplicationBackgroundColor:v12];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v9 = [v13 baseLayerBackground];
  [(NTKCrosswindFaceView *)self setComplicationBackgroundColor:v9];
LABEL_7:

  [(NTKCrosswindFaceView *)self _updateComplicationsWithComplicationColor];
}

- (void)_updateGradientColorsWithPalette:(id)a3
{
  v4 = a3;
  v35 = [(NTKCrosswindFaceView *)self quad];
  v5 = [v4 baseLayerBackground];
  v6 = [v4 baseLayerForeground];
  [v35 setBaseLayerBackgroundColor:v5 baseLayerForegroundColor:v6];

  v7 = [v4 fromColor1];
  v8 = [v4 midColor1];
  v9 = [v4 toColor1];
  [v35 setFromColor:v7 midColor:v8 toColor:v9 forGradientIndex:0];

  v10 = [v4 fromColor2];
  v11 = [v4 midColor2];
  v12 = [v4 toColor2];
  [v35 setFromColor:v10 midColor:v11 toColor:v12 forGradientIndex:1];

  v13 = [v4 fromColor3];
  v14 = [v4 midColor3];
  v15 = [v4 toColor3];
  [v35 setFromColor:v13 midColor:v14 toColor:v15 forGradientIndex:2];

  v16 = [v4 fromColor4];
  v17 = [v4 midColor4];
  v18 = [v4 toColor4];
  [v35 setFromColor:v16 midColor:v17 toColor:v18 forGradientIndex:3];

  v19 = [v4 outermostFromColor1];
  v20 = [v4 outermostMidColor1];
  v21 = [v4 outermostToColor1];
  [v35 setOutermostFromColor:v19 midColor:v20 toColor:v21 forGradientIndex:0];

  v22 = [v4 outermostFromColor2];
  v23 = [v4 outermostMidColor2];
  v24 = [v4 outermostToColor2];
  [v35 setOutermostFromColor:v22 midColor:v23 toColor:v24 forGradientIndex:1];

  v25 = [v4 outermostFromColor3];
  v26 = [v4 outermostMidColor3];
  v27 = [v4 outermostToColor3];
  [v35 setOutermostFromColor:v25 midColor:v26 toColor:v27 forGradientIndex:2];

  v28 = [v4 outermostFromColor4];
  v29 = [v4 outermostMidColor4];
  v30 = [v4 outermostToColor4];
  [v35 setOutermostFromColor:v28 midColor:v29 toColor:v30 forGradientIndex:3];

  v31 = [v4 handInlay1];
  [v35 setHandInlayColor:v31 forGradientIndex:0];

  v32 = [v4 handInlay2];
  [v35 setHandInlayColor:v32 forGradientIndex:1];

  v33 = [v4 handInlay3];
  [v35 setHandInlayColor:v33 forGradientIndex:2];

  v34 = [v4 handInlay4];

  [v35 setHandInlayColor:v34 forGradientIndex:3];
}

- (void)_updateTimeViewColors
{
  v9 = [(NTKCrosswindFaceView *)self quad];
  v3 = [v9 minuteHandInlayColor];
  v4 = [v9 hourHandInlayColor];
  v5 = [v9 minuteHandDotColor];
  v6 = [(NTKCrosswindFaceView *)self timeView];
  v7 = [v6 minuteHandView];
  v8 = [v6 hourHandView];
  [v7 setInlayColor:v3];
  [v8 setInlayColor:v4];
  [v7 setHandDotColor:v5];
}

- (double)_contentAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

@end