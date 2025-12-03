@interface NTKCrosswindFaceView
- (NTKCrosswindFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (id)createFaceColorPalette;
- (id)timeView;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_unloadSnapshotContentViews;
- (void)_updateColors;
- (void)_updateColorsWithPalette:(id)palette;
- (void)_updateComplicationColorsWithPalette:(id)palette;
- (void)_updateContentTransform;
- (void)_updateFrameRate;
- (void)_updateGradientColorsWithPalette:(id)palette;
- (void)_updateTimeViewColors;
- (void)setDataMode:(int64_t)mode;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKCrosswindFaceView

- (NTKCrosswindFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = NTKCrosswindFaceView;
  v9 = [(NTKCrosswindFaceView *)&v13 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    [NTKCrosswindAnalogHandsView outerCircleRadiusForDevice:deviceCopy];
    v11 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initWithFaceView:v9 dialDiameter:deviceCopy device:v10 + v10];
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
  timeView = [(NTKCrosswindFaceView *)self timeView];
  contentView = [(NTKCrosswindFaceView *)self contentView];
  [(NTKCrosswindFaceView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  device = [(NTKCrosswindFaceView *)self device];
  if (!self->_quadView)
  {
    v14 = [CLKUIQuadView quadViewWithFrame:@"Xwnd" identifier:0 options:2 colorSpace:v6, v8, v10, v12];
    quadView = self->_quadView;
    self->_quadView = v14;

    [(CLKUIQuadView *)self->_quadView setOpaque:1];
    v16 = [NTKCrosswindQuad alloc];
    [device screenScale];
    v18 = v17;
    calendar = [timeView calendar];
    v20 = [(NTKCrosswindQuad *)v16 initWithScreenScale:calendar calendar:v18];
    quad = self->_quad;
    self->_quad = v20;

    v22 = self->_quad;
    [timeView innerCircleRadius];
    [(NTKCrosswindQuad *)v22 setInnerCircleRadius:?];
    v23 = self->_quad;
    [timeView middleCircleRadius];
    [(NTKCrosswindQuad *)v23 setMiddleCircleRadius:?];
    v24 = self->_quad;
    [timeView outerCircleRadius];
    [(NTKCrosswindQuad *)v24 setOuterCircleRadius:?];
    [(NTKCrosswindQuad *)self->_quad setDelegate:self];
    [(CLKUIQuadView *)self->_quadView addQuad:self->_quad];
    [(CLKUIQuadView *)self->_quadView setDelegate:self];
    [contentView addSubview:self->_quadView];
  }

  if (!self->_cornerView)
  {
    v25 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:device forDeviceCornerRadius:{v6, v8, v10, v12}];
    cornerView = self->_cornerView;
    self->_cornerView = v25;

    [contentView addSubview:self->_cornerView];
  }

  [timeView setSecondHandDisabled:1];
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

- (void)setDataMode:(int64_t)mode
{
  v4.receiver = self;
  v4.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v4 setDataMode:mode];
  [(NTKCrosswindFaceView *)self _updateFrameRate];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v11 setOverrideDate:dateCopy duration:duration];
  v7 = NTKIdealizedDate();

  if (v7 == dateCopy)
  {
    v8 = NTKCrosswindColorCompositionIdealized();
    v9 = v10;
  }

  else
  {
    v8 = -1;
    v9 = -1;
  }

  [(NTKCrosswindQuad *)self->_quad setOverrideDate:dateCopy overrideComposition:v8 duration:v9, duration];
}

- (id)timeView
{
  v4.receiver = self;
  v4.super_class = NTKCrosswindFaceView;
  timeView = [(NTKCrosswindFaceView *)&v4 timeView];

  return timeView;
}

- (void)_configureTimeView:(id)view
{
  v4.receiver = self;
  v4.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v4 _configureTimeView:view];
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
  device = [(NTKCrosswindFaceView *)self device];
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

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v7.receiver = self;
  v7.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v7 _configureComplicationView:viewCopy forSlot:slot];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy updateMonochromeColor];
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

- (void)_configureForEditMode:(int64_t)mode
{
  v13.receiver = self;
  v13.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v13 _configureForEditMode:?];
  timeView = [(NTKCrosswindFaceView *)self timeView];
  [(NTKCrosswindFaceView *)self _timeAlphaForEditMode:mode];
  [timeView setAlpha:?];

  contentView = [(NTKCrosswindFaceView *)self contentView];
  [(NTKCrosswindFaceView *)self _contentAlphaForEditMode:mode];
  [contentView setAlpha:?];

  editingComplicationsPalette = self->_editingComplicationsPalette;
  if (mode == 1)
  {
    if (!editingComplicationsPalette)
    {
      colorPalette = [(NTKCrosswindFaceView *)self colorPalette];
      v9 = [colorPalette copy];
      [v9 setIsEditingComplications:1];
      v10 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:colorPalette toPalette:v9];
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

    colorPalette2 = [(NTKCrosswindFaceView *)self colorPalette];
    [(NTKCrosswindFaceView *)self _updateComplicationColorsWithPalette:colorPalette2];
  }
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v16.receiver = self;
  v16.super_class = NTKCrosswindFaceView;
  [NTKCrosswindFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  timeView = [(NTKCrosswindFaceView *)self timeView];
  [(NTKCrosswindFaceView *)self _timeAlphaForEditMode:mode];
  [(NTKCrosswindFaceView *)self _timeAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];

  contentView = [(NTKCrosswindFaceView *)self contentView];
  [(NTKCrosswindFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKCrosswindFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [contentView setAlpha:?];

  editingComplicationsPalette = self->_editingComplicationsPalette;
  if (mode == 1 || editMode == 1)
  {
    if (!editingComplicationsPalette)
    {
      colorPalette = [(NTKCrosswindFaceView *)self colorPalette];
      v13 = [colorPalette copy];
      [v13 setIsEditingComplications:1];
      v14 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:colorPalette toPalette:v13];
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

    colorPalette2 = [(NTKCrosswindFaceView *)self colorPalette];
    [(NTKCrosswindFaceView *)self _updateComplicationColorsWithPalette:colorPalette2];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    [(NTKCrosswindFaceView *)self _updateColors:option];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v9 = [(NTKCrosswindFaceView *)self interpolatedColorPalette:option];
    [(NTKCrosswindFaceView *)self _updateColorsWithPalette:v9];
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v8 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    self->_breathScaleModifier = v7;
    [(NTKCrosswindFaceView *)self _updateContentTransform];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8.receiver = self;
  v8.super_class = NTKCrosswindFaceView;
  [(NTKCrosswindFaceView *)&v8 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
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
  editing = [(NTKCrosswindFaceView *)self editing];
  if (editing)
  {
    v4 = 0;
  }

  else
  {
    dataMode = [(NTKCrosswindFaceView *)self dataMode];
    isFrozen = [(NTKCrosswindFaceView *)self isFrozen];
    v8 = dataMode != 3 && (dataMode & 0xFFFFFFFFFFFFFFFBLL) != 1;
    v4 = (isFrozen & 1) != 0 || v8;
  }

  [(CLKUIQuadView *)self->_quadView setPaused:v4];
  if ((editing | [(NTKCrosswindQuad *)self->_quad isAnimatingOverrideDate]))
  {
    v9 = 0;
  }

  else
  {
    device = [(NTKCrosswindFaceView *)self device];
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
  contentView = [(NTKCrosswindFaceView *)self contentView];
  v7 = v8;
  [contentView setTransform:&v7];

  timeView = [(NTKCrosswindFaceView *)self timeView];
  v7 = v8;
  [timeView setTransform:&v7];

  complicationContainerView = [(NTKCrosswindFaceView *)self complicationContainerView];
  v7 = v8;
  [complicationContainerView setTransform:&v7];
}

- (void)_updateColors
{
  colorPalette = [(NTKCrosswindFaceView *)self colorPalette];
  [(NTKCrosswindFaceView *)self _updateColorsWithPalette:colorPalette];
}

- (void)_updateColorsWithPalette:(id)palette
{
  paletteCopy = palette;
  [(NTKCrosswindFaceView *)self _updateComplicationColorsWithPalette:paletteCopy];
  [(NTKCrosswindFaceView *)self _updateGradientColorsWithPalette:paletteCopy];
}

- (void)_updateComplicationColorsWithPalette:(id)palette
{
  paletteCopy = palette;
  resolvedComplicationColor = [paletteCopy resolvedComplicationColor];
  [(NTKCrosswindFaceView *)self setAlternateComplicationColor:resolvedComplicationColor];
  [(NTKCrosswindFaceView *)self setComplicationColor:resolvedComplicationColor];
  [(NTKCrosswindFaceView *)self setInterpolatedComplicationColor:resolvedComplicationColor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = paletteCopy;
    toPalette = [v5 toPalette];
    if ([toPalette isTritium])
    {
      [v5 transitionFraction];
      v8 = v7;

      if (v8 > 0.0)
      {
        baseLayerBackground = [v5 baseLayerBackground];
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

  baseLayerBackground = [paletteCopy baseLayerBackground];
  [(NTKCrosswindFaceView *)self setComplicationBackgroundColor:baseLayerBackground];
LABEL_7:

  [(NTKCrosswindFaceView *)self _updateComplicationsWithComplicationColor];
}

- (void)_updateGradientColorsWithPalette:(id)palette
{
  paletteCopy = palette;
  quad = [(NTKCrosswindFaceView *)self quad];
  baseLayerBackground = [paletteCopy baseLayerBackground];
  baseLayerForeground = [paletteCopy baseLayerForeground];
  [quad setBaseLayerBackgroundColor:baseLayerBackground baseLayerForegroundColor:baseLayerForeground];

  fromColor1 = [paletteCopy fromColor1];
  midColor1 = [paletteCopy midColor1];
  toColor1 = [paletteCopy toColor1];
  [quad setFromColor:fromColor1 midColor:midColor1 toColor:toColor1 forGradientIndex:0];

  fromColor2 = [paletteCopy fromColor2];
  midColor2 = [paletteCopy midColor2];
  toColor2 = [paletteCopy toColor2];
  [quad setFromColor:fromColor2 midColor:midColor2 toColor:toColor2 forGradientIndex:1];

  fromColor3 = [paletteCopy fromColor3];
  midColor3 = [paletteCopy midColor3];
  toColor3 = [paletteCopy toColor3];
  [quad setFromColor:fromColor3 midColor:midColor3 toColor:toColor3 forGradientIndex:2];

  fromColor4 = [paletteCopy fromColor4];
  midColor4 = [paletteCopy midColor4];
  toColor4 = [paletteCopy toColor4];
  [quad setFromColor:fromColor4 midColor:midColor4 toColor:toColor4 forGradientIndex:3];

  outermostFromColor1 = [paletteCopy outermostFromColor1];
  outermostMidColor1 = [paletteCopy outermostMidColor1];
  outermostToColor1 = [paletteCopy outermostToColor1];
  [quad setOutermostFromColor:outermostFromColor1 midColor:outermostMidColor1 toColor:outermostToColor1 forGradientIndex:0];

  outermostFromColor2 = [paletteCopy outermostFromColor2];
  outermostMidColor2 = [paletteCopy outermostMidColor2];
  outermostToColor2 = [paletteCopy outermostToColor2];
  [quad setOutermostFromColor:outermostFromColor2 midColor:outermostMidColor2 toColor:outermostToColor2 forGradientIndex:1];

  outermostFromColor3 = [paletteCopy outermostFromColor3];
  outermostMidColor3 = [paletteCopy outermostMidColor3];
  outermostToColor3 = [paletteCopy outermostToColor3];
  [quad setOutermostFromColor:outermostFromColor3 midColor:outermostMidColor3 toColor:outermostToColor3 forGradientIndex:2];

  outermostFromColor4 = [paletteCopy outermostFromColor4];
  outermostMidColor4 = [paletteCopy outermostMidColor4];
  outermostToColor4 = [paletteCopy outermostToColor4];
  [quad setOutermostFromColor:outermostFromColor4 midColor:outermostMidColor4 toColor:outermostToColor4 forGradientIndex:3];

  handInlay1 = [paletteCopy handInlay1];
  [quad setHandInlayColor:handInlay1 forGradientIndex:0];

  handInlay2 = [paletteCopy handInlay2];
  [quad setHandInlayColor:handInlay2 forGradientIndex:1];

  handInlay3 = [paletteCopy handInlay3];
  [quad setHandInlayColor:handInlay3 forGradientIndex:2];

  handInlay4 = [paletteCopy handInlay4];

  [quad setHandInlayColor:handInlay4 forGradientIndex:3];
}

- (void)_updateTimeViewColors
{
  quad = [(NTKCrosswindFaceView *)self quad];
  minuteHandInlayColor = [quad minuteHandInlayColor];
  hourHandInlayColor = [quad hourHandInlayColor];
  minuteHandDotColor = [quad minuteHandDotColor];
  timeView = [(NTKCrosswindFaceView *)self timeView];
  minuteHandView = [timeView minuteHandView];
  hourHandView = [timeView hourHandView];
  [minuteHandView setInlayColor:minuteHandInlayColor];
  [hourHandView setInlayColor:hourHandInlayColor];
  [minuteHandView setHandDotColor:minuteHandDotColor];
}

- (double)_contentAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

@end