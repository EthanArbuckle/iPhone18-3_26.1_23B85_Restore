@interface NTKAtiumFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (NTKAtiumFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (id)_snapshotWithPigment:(id)pigment analogDialShape:(unint64_t)shape size:(CGSize)size scale:(double)scale;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromShape:(unint64_t)shape toShape:(unint64_t)toShape;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_setShape:(unint64_t)shape;
- (void)_setUpMetalView;
- (void)_tearDownMetalView;
- (void)_unloadSnapshotContentViews;
- (void)_updateColors;
- (void)_updateColorsWithInterpolatedPalette:(id)palette;
- (void)_updateComplicationColorsWithPalette:(id)palette;
- (void)_updateContentTransform;
- (void)_updateFaceColorsWithPalette:(id)palette;
- (void)_updateQuadColorsWithPalette:(id)palette forQuad:(id)quad;
- (void)_updateShape;
- (void)atiumQuadDidUpdateAnimatingOverrideDate:(id)date;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKAtiumFaceView

- (NTKAtiumFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = NTKAtiumFaceView;
  v10 = [(NTKAtiumFaceView *)&v15 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, device);
    [NTKAnalogUtilities dialDiameterForDevice:deviceCopy];
    *&v12 = v12;
    v11->_dialDiameter = *&v12;
    v11->_dialDiameterScale = 1.0;
    v13 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initWithFaceView:v11 dialDiameter:deviceCopy device:v11->_dialDiameter];
    [(NTKAtiumFaceView *)v11 setComplicationFactory:v13];
    v11->_breathScaleModifier = 1.0;
    v11->_rubberBandScaleModifier = 1.0;
  }

  return v11;
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKAtiumFaceView;
  [(NTKAtiumFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKAtiumFaceView *)self _setUpMetalView];
  [(NTKAtiumFaceView *)self _updateShape];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKAtiumFaceView;
  [(NTKAtiumFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKAtiumFaceView *)self _tearDownMetalView];
}

- (void)_applyFrozen
{
  v2.receiver = self;
  v2.super_class = NTKAtiumFaceView;
  [(NTKAtiumFaceView *)&v2 _applyFrozen];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKAtiumFaceView;
  dateCopy = date;
  [(NTKAtiumFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKAtiumQuad *)self->_compositeQuad setOverrideDate:dateCopy duration:duration, v7.receiver, v7.super_class];
}

- (void)_reorderSwitcherSnapshotView
{
  switcherSnapshotView = [(NTKAtiumFaceView *)self switcherSnapshotView];

  if (switcherSnapshotView)
  {
    switcherSnapshotView2 = [(NTKAtiumFaceView *)self switcherSnapshotView];
    [(NTKAtiumFaceView *)self bringSubviewToFront:switcherSnapshotView2];
  }
}

- (void)_setUpMetalView
{
  [(CLKDevice *)self->_device screenBounds];
  v3 = [CLKUIMetalQuadView quadViewWithFrame:@"ATM" identifier:0 options:0 colorSpace:?];
  quadView = self->_quadView;
  self->_quadView = v3;

  [(CLKUIMetalQuadView *)self->_quadView setDelegate:self];
  [(CLKUIMetalQuadView *)self->_quadView setUserInteractionEnabled:0];
  [(CLKUIMetalQuadView *)self->_quadView setOpaque:1];
  v5 = [[NTKAtiumQuad alloc] initWithDevice:self->_device];
  compositeQuad = self->_compositeQuad;
  self->_compositeQuad = v5;

  [(NTKAtiumQuad *)self->_compositeQuad setDelegate:self];
  [(CLKUIMetalQuadView *)self->_quadView addQuad:self->_compositeQuad];
  contentView = [(NTKAtiumFaceView *)self contentView];
  [contentView addSubview:self->_quadView];

  [(NTKAtiumFaceView *)self bounds];
  [(CLKUIMetalQuadView *)self->_quadView setFrame:?];
  [(CLKUIMetalQuadView *)self->_quadView setPreferredFramesPerSecond:30];
  v8 = self->_quadView;

  [(CLKUIMetalQuadView *)v8 setPaused:1];
}

- (void)_tearDownMetalView
{
  [(CLKUIMetalQuadView *)self->_quadView removeQuad:self->_compositeQuad];
  compositeQuad = self->_compositeQuad;
  self->_compositeQuad = 0;

  [(CLKUIMetalQuadView *)self->_quadView removeFromSuperview];
  quadView = self->_quadView;
  self->_quadView = 0;
}

- (id)createFaceColorPalette
{
  v2 = [[NTKAtiumColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10)
  {
    [(NTKAtiumFaceView *)self _updateColors];
  }

  else if (mode == 15)
  {
    -[NTKAtiumFaceView _setShape:](self, "_setShape:", [optionCopy dialShape]);
  }
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  if (mode > 0xA || ((1 << mode) & 0x403) == 0)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 0.0;
  if (!self->_shape)
  {
    return 1.0;
  }

  return result;
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

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v15.receiver = self;
  v15.super_class = NTKAtiumFaceView;
  [NTKAtiumFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKAtiumFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKAtiumFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  complicationContainerView = [(NTKAtiumFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v9];

  [(NTKAtiumFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKAtiumFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  timeView = [(NTKAtiumFaceView *)self timeView];
  [timeView setAlpha:v12];

  contentView = [(NTKAtiumFaceView *)self contentView];
  [contentView setAlpha:v12];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 10)
  {
    interpolatedColorPalette = [(NTKAtiumFaceView *)self interpolatedColorPalette];
    [(NTKAtiumFaceView *)self _updateColorsWithInterpolatedPalette:interpolatedColorPalette];
  }

  else if (mode == 15)
  {
    -[NTKAtiumFaceView _applyTransitionFraction:fromShape:toShape:](self, "_applyTransitionFraction:fromShape:toShape:", [optionCopy dialShape], objc_msgSend(toOptionCopy, "dialShape"), fraction);
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7.receiver = self;
  v7.super_class = NTKAtiumFaceView;
  [(NTKAtiumFaceView *)&v7 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  NTKLargeElementScaleForBreathingFraction();
  self->_breathScaleModifier = v6;
  [(NTKAtiumFaceView *)self _updateContentTransform];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7.receiver = self;
  v7.super_class = NTKAtiumFaceView;
  [(NTKAtiumFaceView *)&v7 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  NTKScaleForRubberBandingFraction();
  self->_rubberBandScaleModifier = v6;
  [(NTKAtiumFaceView *)self _updateContentTransform];
  NTKAlphaForRubberBandingFraction();
  [(NTKAtiumFaceView *)self setAlpha:?];
}

- (void)_updateContentTransform
{
  v3 = self->_breathScaleModifier * self->_rubberBandScaleModifier;
  memset(&v5, 0, sizeof(v5));
  CGAffineTransformMakeScale(&v5, v3, v3);
  v4 = v5;
  [(NTKAtiumFaceView *)self setTransform:&v4];
}

- (void)_updateColors
{
  colorPalette = [(NTKAtiumFaceView *)self colorPalette];
  [(NTKAtiumFaceView *)self _updateQuadColorsWithPalette:colorPalette forQuad:self->_compositeQuad];
  [(NTKAtiumFaceView *)self _updateFaceColorsWithPalette:colorPalette];
}

- (void)_updateQuadColorsWithPalette:(id)palette forQuad:(id)quad
{
  quadCopy = quad;
  paletteCopy = palette;
  lightColor1 = [paletteCopy lightColor1];
  lightColor2 = [paletteCopy lightColor2];
  lightColor3 = [paletteCopy lightColor3];
  isThreeColor = [paletteCopy isThreeColor];
  [quadCopy setFirstLightColor:lightColor1];
  [quadCopy setSecondLightColor:lightColor2];
  [quadCopy setBackgroundLightColor:lightColor3];
  isRainbow = [paletteCopy isRainbow];
  [quadCopy setRecolorLightingTextureEnabled:((isRainbow | isThreeColor) & 1) == 0];
  [quadCopy setUseRainbowTexture:isRainbow];
  [quadCopy setUseThreeColorTexture:isThreeColor];
  [paletteCopy tritiumMaskMultiplier];
  v12 = v11;

  [quadCopy setTritiumMaskMultiplier:v12];
}

- (void)_updateFaceColorsWithPalette:(id)palette
{
  paletteCopy = palette;
  timeView = [(NTKAtiumFaceView *)self timeView];
  handsColor = [paletteCopy handsColor];
  handsColor2 = [paletteCopy handsColor];
  [timeView applyHourMinuteHandsStrokeColor:handsColor fillColor:handsColor2];

  timeView2 = [(NTKAtiumFaceView *)self timeView];
  v8 = +[UIColor whiteColor];
  [timeView2 applySecondHandColor:v8];

  timeView3 = [(NTKAtiumFaceView *)self timeView];
  minuteHandView = [timeView3 minuteHandView];
  v11 = +[UIColor blackColor];
  [minuteHandView setHandDotColor:v11];

  [(NTKAtiumFaceView *)self _updateComplicationColorsWithPalette:paletteCopy];
}

- (void)_updateComplicationColorsWithPalette:(id)palette
{
  cornerComplicationColor = [palette cornerComplicationColor];
  [(NTKAtiumFaceView *)self setAlternateComplicationColor:cornerComplicationColor];
  [(NTKAtiumFaceView *)self setComplicationColor:cornerComplicationColor];
  [(NTKAtiumFaceView *)self setInterpolatedComplicationColor:cornerComplicationColor];
  [(NTKAtiumFaceView *)self _updateComplicationsWithComplicationColor];
}

- (void)_updateColorsWithInterpolatedPalette:(id)palette
{
  paletteCopy = palette;
  fromPalette = [paletteCopy fromPalette];
  toPalette = [paletteCopy toPalette];
  [paletteCopy transitionFraction];
  v7 = v6;
  [(NTKAtiumFaceView *)self _updateQuadColorsWithPalette:fromPalette forQuad:self->_compositeQuad];
  [(NTKAtiumFaceView *)self _updateFaceColorsWithPalette:paletteCopy];

  lightColor1 = [toPalette lightColor1];
  lightColor2 = [toPalette lightColor2];
  lightColor3 = [toPalette lightColor3];
  isThreeColor = [toPalette isThreeColor];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendFirstLightColor:lightColor1];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendSecondLightColor:lightColor2];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendBackgroundLightColor:lightColor3];
  isRainbow = [toPalette isRainbow];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendRecolorLightingTextureEnabled:((isRainbow | isThreeColor) & 1) == 0];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendUseRainbowTexture:isRainbow];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendUseThreeColorTexture:isThreeColor];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendTransitionFraction:v7];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v7.receiver = self;
  v7.super_class = NTKAtiumFaceView;
  [(NTKAtiumFaceView *)&v7 _configureComplicationView:viewCopy forSlot:slot];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy updateMonochromeColor];
  }
}

- (void)_loadLayoutRules
{
  v17.receiver = self;
  v17.super_class = NTKAtiumFaceView;
  [(NTKAtiumFaceView *)&v17 _loadLayoutRules];
  [(CLKDevice *)self->_device sizeClass];
  if (CLKDeviceCategoryForSizeClass() != 5)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_3438;
    v16[3] = &unk_C588;
    v16[4] = self;
    v3 = objc_retainBlock(v16);
    device = [(NTKAtiumFaceView *)self device];
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
}

- (void)_setShape:(unint64_t)shape
{
  if (self->_shape != shape)
  {
    self->_shape = shape;
    [(NTKAtiumFaceView *)self _updateShape];
  }
}

- (void)_updateShape
{
  if (![(NTKAtiumFaceView *)self editing])
  {
    complicationContainerView = [(NTKAtiumFaceView *)self complicationContainerView];
    v4 = complicationContainerView;
    v5 = 0.0;
    if (!self->_shape)
    {
      v5 = 1.0;
    }

    [complicationContainerView setAlpha:v5];
  }

  shape = self->_shape;
  if (shape == 1)
  {
    dialDiameter = self->_dialDiameter + self->_dialDiameter;
  }

  else
  {
    if (shape)
    {
      return;
    }

    dialDiameter = self->_dialDiameter;
  }

  v8 = (dialDiameter * self->_dialDiameterScale);
  compositeQuad = self->_compositeQuad;

  [(NTKAtiumQuad *)compositeQuad setDialSize:v8];
}

- (void)_applyTransitionFraction:(double)fraction fromShape:(unint64_t)shape toShape:(unint64_t)toShape
{
  v6 = 0.0;
  if (!shape)
  {
    v6 = 1.0;
    fraction = 1.0 - fraction;
  }

  if (shape == toShape)
  {
    fractionCopy = v6;
  }

  else
  {
    fractionCopy = fraction;
  }

  [(NTKAtiumQuad *)self->_compositeQuad setDialSize:self->_dialDiameter * 2.0 - fractionCopy * self->_dialDiameter];
  complicationContainerView = [(NTKAtiumFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:fractionCopy * NTKEditModeDimmedAlpha];
}

- (void)atiumQuadDidUpdateAnimatingOverrideDate:(id)date
{
  isAnimatingOverrideDate = [date isAnimatingOverrideDate];
  quadView = self->_quadView;
  if (isAnimatingOverrideDate)
  {
    v6 = 0;
  }

  else
  {
    v6 = 30;
  }

  v7 = self->_quadView;

  [(CLKUIMetalQuadView *)v7 setPreferredFramesPerSecond:v6];
}

- (id)_snapshotWithPigment:(id)pigment analogDialShape:(unint64_t)shape size:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  y = CGPointZero.y;
  pigmentCopy = pigment;
  height = [CLKUIQuadView quadViewWithFrame:@"Atm" identifier:CGPointZero.x, y, width, height];
  v14 = [[NTKAtiumQuad alloc] initWithDevice:self->_device];
  [(NTKAtiumQuad *)v14 setOpaque:1];
  faceColorPalette = [(NTKAtiumFaceView *)self faceColorPalette];
  [faceColorPalette setPigmentEditOption:pigmentCopy];

  [(NTKAtiumFaceView *)self _updateQuadColorsWithPalette:faceColorPalette forQuad:v14];
  [(NTKAtiumQuad *)v14 setShadowStrength:0.0];
  if (shape == 1)
  {
    dialDiameter = self->_dialDiameter + self->_dialDiameter;
  }

  else
  {
    if (shape)
    {
      goto LABEL_6;
    }

    dialDiameter = self->_dialDiameter;
  }

  [(NTKAtiumQuad *)v14 setDialSize:dialDiameter];
LABEL_6:
  [height addQuad:v14];
  v17 = [height snapshotInRect:CGPointZero.x scale:y time:{width, height, scale, 0.0}];
  v18 = [[UIImageView alloc] initWithFrame:{CGPointZero.x, y, width, height}];
  [v18 setImage:v17];
  v19 = [NTKRoundedCornerOverlayView alloc];
  device = [(NTKAtiumFaceView *)self device];
  v21 = [v19 initWithFrame:device forDeviceCornerRadius:{CGPointZero.x, y, width, height}];

  [v18 addSubview:v21];
  v26.width = width;
  v26.height = height;
  UIGraphicsBeginImageContextWithOptions(v26, 0, 0.0);
  layer = [v18 layer];
  [layer renderInContext:UIGraphicsGetCurrentContext()];

  v23 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v23;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 15)
  {
    return &off_CCD8;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  if (mode == 15)
  {
    if (!qword_12000)
    {
      v10 = objc_opt_new();
      v11 = qword_12000;
      qword_12000 = v10;
    }

    v12 = [optionsCopy objectForKeyedSubscript:&off_CB78];
    v13 = [optionsCopy objectForKeyedSubscript:&off_CB60];
    v14 = optionCopy;

    v15 = [NSString stringWithFormat:@"%@-%@", v14, v13];
    v16 = [qword_12000 objectForKey:v15];
    if (!v16)
    {
      v17 = [objc_opt_class() pigmentFromOption:v13];
      dialShape = [v14 dialShape];
      [(NTKAtiumFaceView *)self frame];
      v20 = v19;
      v22 = v21;
      [(CLKDevice *)self->_device screenScale];
      v16 = [(NTKAtiumFaceView *)self _snapshotWithPigment:v17 analogDialShape:dialShape size:v20 scale:v22, v23];

      [qword_12000 setObject:v16 forKey:v15];
    }
  }

  else
  {
    v25.receiver = self;
    v25.super_class = NTKAtiumFaceView;
    v16 = [(NTKAtiumFaceView *)&v25 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v16;
}

@end