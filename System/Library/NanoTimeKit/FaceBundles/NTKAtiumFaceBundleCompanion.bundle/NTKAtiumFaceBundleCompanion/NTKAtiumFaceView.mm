@interface NTKAtiumFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (NTKAtiumFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (id)_snapshotWithPigment:(id)a3 analogDialShape:(unint64_t)a4 size:(CGSize)a5 scale:(double)a6;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_applyTransitionFraction:(double)a3 fromShape:(unint64_t)a4 toShape:(unint64_t)a5;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_setShape:(unint64_t)a3;
- (void)_setUpMetalView;
- (void)_tearDownMetalView;
- (void)_unloadSnapshotContentViews;
- (void)_updateColors;
- (void)_updateColorsWithInterpolatedPalette:(id)a3;
- (void)_updateComplicationColorsWithPalette:(id)a3;
- (void)_updateContentTransform;
- (void)_updateFaceColorsWithPalette:(id)a3;
- (void)_updateQuadColorsWithPalette:(id)a3 forQuad:(id)a4;
- (void)_updateShape;
- (void)atiumQuadDidUpdateAnimatingOverrideDate:(id)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKAtiumFaceView

- (NTKAtiumFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v9 = a4;
  v15.receiver = self;
  v15.super_class = NTKAtiumFaceView;
  v10 = [(NTKAtiumFaceView *)&v15 initWithFaceStyle:a3 forDevice:v9 clientIdentifier:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, a4);
    [NTKAnalogUtilities dialDiameterForDevice:v9];
    *&v12 = v12;
    v11->_dialDiameter = *&v12;
    v11->_dialDiameterScale = 1.0;
    v13 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initWithFaceView:v11 dialDiameter:v9 device:v11->_dialDiameter];
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

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = NTKAtiumFaceView;
  v6 = a3;
  [(NTKAtiumFaceView *)&v7 setOverrideDate:v6 duration:a4];
  [(NTKAtiumQuad *)self->_compositeQuad setOverrideDate:v6 duration:a4, v7.receiver, v7.super_class];
}

- (void)_reorderSwitcherSnapshotView
{
  v3 = [(NTKAtiumFaceView *)self switcherSnapshotView];

  if (v3)
  {
    v4 = [(NTKAtiumFaceView *)self switcherSnapshotView];
    [(NTKAtiumFaceView *)self bringSubviewToFront:v4];
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
  v7 = [(NTKAtiumFaceView *)self contentView];
  [v7 addSubview:self->_quadView];

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

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v9 = a3;
  v8 = a5;
  if (a4 == 10)
  {
    [(NTKAtiumFaceView *)self _updateColors];
  }

  else if (a4 == 15)
  {
    -[NTKAtiumFaceView _setShape:](self, "_setShape:", [v9 dialShape]);
  }
}

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  if (a3 > 0xA || ((1 << a3) & 0x403) == 0)
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

- (double)_contentAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v15.receiver = self;
  v15.super_class = NTKAtiumFaceView;
  [NTKAtiumFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKAtiumFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKAtiumFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  v10 = [(NTKAtiumFaceView *)self complicationContainerView];
  [v10 setAlpha:v9];

  [(NTKAtiumFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKAtiumFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  v13 = [(NTKAtiumFaceView *)self timeView];
  [v13 setAlpha:v12];

  v14 = [(NTKAtiumFaceView *)self contentView];
  [v14 setAlpha:v12];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v15 = a4;
  v12 = a5;
  v13 = a7;
  if (a6 == 10)
  {
    v14 = [(NTKAtiumFaceView *)self interpolatedColorPalette];
    [(NTKAtiumFaceView *)self _updateColorsWithInterpolatedPalette:v14];
  }

  else if (a6 == 15)
  {
    -[NTKAtiumFaceView _applyTransitionFraction:fromShape:toShape:](self, "_applyTransitionFraction:fromShape:toShape:", [v15 dialShape], objc_msgSend(v12, "dialShape"), a3);
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7.receiver = self;
  v7.super_class = NTKAtiumFaceView;
  [(NTKAtiumFaceView *)&v7 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  NTKLargeElementScaleForBreathingFraction();
  self->_breathScaleModifier = v6;
  [(NTKAtiumFaceView *)self _updateContentTransform];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7.receiver = self;
  v7.super_class = NTKAtiumFaceView;
  [(NTKAtiumFaceView *)&v7 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
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
  v3 = [(NTKAtiumFaceView *)self colorPalette];
  [(NTKAtiumFaceView *)self _updateQuadColorsWithPalette:v3 forQuad:self->_compositeQuad];
  [(NTKAtiumFaceView *)self _updateFaceColorsWithPalette:v3];
}

- (void)_updateQuadColorsWithPalette:(id)a3 forQuad:(id)a4
{
  v5 = a4;
  v6 = a3;
  v13 = [v6 lightColor1];
  v7 = [v6 lightColor2];
  v8 = [v6 lightColor3];
  v9 = [v6 isThreeColor];
  [v5 setFirstLightColor:v13];
  [v5 setSecondLightColor:v7];
  [v5 setBackgroundLightColor:v8];
  v10 = [v6 isRainbow];
  [v5 setRecolorLightingTextureEnabled:((v10 | v9) & 1) == 0];
  [v5 setUseRainbowTexture:v10];
  [v5 setUseThreeColorTexture:v9];
  [v6 tritiumMaskMultiplier];
  v12 = v11;

  [v5 setTritiumMaskMultiplier:v12];
}

- (void)_updateFaceColorsWithPalette:(id)a3
{
  v12 = a3;
  v4 = [(NTKAtiumFaceView *)self timeView];
  v5 = [v12 handsColor];
  v6 = [v12 handsColor];
  [v4 applyHourMinuteHandsStrokeColor:v5 fillColor:v6];

  v7 = [(NTKAtiumFaceView *)self timeView];
  v8 = +[UIColor whiteColor];
  [v7 applySecondHandColor:v8];

  v9 = [(NTKAtiumFaceView *)self timeView];
  v10 = [v9 minuteHandView];
  v11 = +[UIColor blackColor];
  [v10 setHandDotColor:v11];

  [(NTKAtiumFaceView *)self _updateComplicationColorsWithPalette:v12];
}

- (void)_updateComplicationColorsWithPalette:(id)a3
{
  v4 = [a3 cornerComplicationColor];
  [(NTKAtiumFaceView *)self setAlternateComplicationColor:v4];
  [(NTKAtiumFaceView *)self setComplicationColor:v4];
  [(NTKAtiumFaceView *)self setInterpolatedComplicationColor:v4];
  [(NTKAtiumFaceView *)self _updateComplicationsWithComplicationColor];
}

- (void)_updateColorsWithInterpolatedPalette:(id)a3
{
  v4 = a3;
  v13 = [v4 fromPalette];
  v5 = [v4 toPalette];
  [v4 transitionFraction];
  v7 = v6;
  [(NTKAtiumFaceView *)self _updateQuadColorsWithPalette:v13 forQuad:self->_compositeQuad];
  [(NTKAtiumFaceView *)self _updateFaceColorsWithPalette:v4];

  v8 = [v5 lightColor1];
  v9 = [v5 lightColor2];
  v10 = [v5 lightColor3];
  v11 = [v5 isThreeColor];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendFirstLightColor:v8];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendSecondLightColor:v9];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendBackgroundLightColor:v10];
  v12 = [v5 isRainbow];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendRecolorLightingTextureEnabled:((v12 | v11) & 1) == 0];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendUseRainbowTexture:v12];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendUseThreeColorTexture:v11];
  [(NTKAtiumQuad *)self->_compositeQuad setBlendTransitionFraction:v7];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7.receiver = self;
  v7.super_class = NTKAtiumFaceView;
  [(NTKAtiumFaceView *)&v7 _configureComplicationView:v6 forSlot:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 updateMonochromeColor];
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
    v4 = [(NTKAtiumFaceView *)self device];
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

- (void)_setShape:(unint64_t)a3
{
  if (self->_shape != a3)
  {
    self->_shape = a3;
    [(NTKAtiumFaceView *)self _updateShape];
  }
}

- (void)_updateShape
{
  if (![(NTKAtiumFaceView *)self editing])
  {
    v3 = [(NTKAtiumFaceView *)self complicationContainerView];
    v4 = v3;
    v5 = 0.0;
    if (!self->_shape)
    {
      v5 = 1.0;
    }

    [v3 setAlpha:v5];
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

- (void)_applyTransitionFraction:(double)a3 fromShape:(unint64_t)a4 toShape:(unint64_t)a5
{
  v6 = 0.0;
  if (!a4)
  {
    v6 = 1.0;
    a3 = 1.0 - a3;
  }

  if (a4 == a5)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  [(NTKAtiumQuad *)self->_compositeQuad setDialSize:self->_dialDiameter * 2.0 - v7 * self->_dialDiameter];
  v8 = [(NTKAtiumFaceView *)self complicationContainerView];
  [v8 setAlpha:v7 * NTKEditModeDimmedAlpha];
}

- (void)atiumQuadDidUpdateAnimatingOverrideDate:(id)a3
{
  v4 = [a3 isAnimatingOverrideDate];
  quadView = self->_quadView;
  if (v4)
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

- (id)_snapshotWithPigment:(id)a3 analogDialShape:(unint64_t)a4 size:(CGSize)a5 scale:(double)a6
{
  height = a5.height;
  width = a5.width;
  y = CGPointZero.y;
  v12 = a3;
  v13 = [CLKUIQuadView quadViewWithFrame:@"Atm" identifier:CGPointZero.x, y, width, height];
  v14 = [[NTKAtiumQuad alloc] initWithDevice:self->_device];
  [(NTKAtiumQuad *)v14 setOpaque:1];
  v15 = [(NTKAtiumFaceView *)self faceColorPalette];
  [v15 setPigmentEditOption:v12];

  [(NTKAtiumFaceView *)self _updateQuadColorsWithPalette:v15 forQuad:v14];
  [(NTKAtiumQuad *)v14 setShadowStrength:0.0];
  if (a4 == 1)
  {
    dialDiameter = self->_dialDiameter + self->_dialDiameter;
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    dialDiameter = self->_dialDiameter;
  }

  [(NTKAtiumQuad *)v14 setDialSize:dialDiameter];
LABEL_6:
  [v13 addQuad:v14];
  v17 = [v13 snapshotInRect:CGPointZero.x scale:y time:{width, height, a6, 0.0}];
  v18 = [[UIImageView alloc] initWithFrame:{CGPointZero.x, y, width, height}];
  [v18 setImage:v17];
  v19 = [NTKRoundedCornerOverlayView alloc];
  v20 = [(NTKAtiumFaceView *)self device];
  v21 = [v19 initWithFrame:v20 forDeviceCornerRadius:{CGPointZero.x, y, width, height}];

  [v18 addSubview:v21];
  v26.width = width;
  v26.height = height;
  UIGraphicsBeginImageContextWithOptions(v26, 0, 0.0);
  v22 = [v18 layer];
  [v22 renderInContext:UIGraphicsGetCurrentContext()];

  v23 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v23;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 15)
  {
    return &off_CCD8;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 15)
  {
    if (!qword_12000)
    {
      v10 = objc_opt_new();
      v11 = qword_12000;
      qword_12000 = v10;
    }

    v12 = [v9 objectForKeyedSubscript:&off_CB78];
    v13 = [v9 objectForKeyedSubscript:&off_CB60];
    v14 = v8;

    v15 = [NSString stringWithFormat:@"%@-%@", v14, v13];
    v16 = [qword_12000 objectForKey:v15];
    if (!v16)
    {
      v17 = [objc_opt_class() pigmentFromOption:v13];
      v18 = [v14 dialShape];
      [(NTKAtiumFaceView *)self frame];
      v20 = v19;
      v22 = v21;
      [(CLKDevice *)self->_device screenScale];
      v16 = [(NTKAtiumFaceView *)self _snapshotWithPigment:v17 analogDialShape:v18 size:v20 scale:v22, v23];

      [qword_12000 setObject:v16 forKey:v15];
    }
  }

  else
  {
    v25.receiver = self;
    v25.super_class = NTKAtiumFaceView;
    v16 = [(NTKAtiumFaceView *)&v25 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v16;
}

@end