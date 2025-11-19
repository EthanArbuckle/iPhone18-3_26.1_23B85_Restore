@interface NTKColtanAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (NTKColtanAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_circularMaskDiameterForShape:(unint64_t)a3 withBounds:(CGRect)a4;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_dialAlphaForEditMode:(int64_t)a3;
- (double)_tickOpacityForDensity:(unint64_t)a3;
- (double)_verticalPaddingForStatusBar;
- (id)_snapshotWithPigment:(id)a3 density:(unint64_t)a4 analogDialShape:(unint64_t)a5 size:(CGSize)a6 scale:(double)a7;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (int64_t)_editMode;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyComplicationAlphaTransitionFraction:(double)a3 fromAlpha:(double)a4 toAlpha:(double)a5;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyShowsCanonicalContent;
- (void)_applyTransitionFraction:(double)a3 fromDensity:(unint64_t)a4 toDensity:(unint64_t)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_applyTransitionFraction:(double)a3 fromShape:(unint64_t)a4 toShape:(unint64_t)a5;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadActiveViews;
- (void)_loadCommonViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_setDensity:(unint64_t)a3;
- (void)_setMasking:(BOOL)a3;
- (void)_setShape:(unint64_t)a3;
- (void)_setTickOpacity:(double)a3;
- (void)_setupCircularMaskForShapeTransitionWithFraction:(double)a3;
- (void)_unloadActiveViews;
- (void)_unloadCommonViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateFramerate;
- (void)_updateMasking;
- (void)_updateShape;
- (void)setDataMode:(int64_t)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)updateColorsWithPalette:(id)a3;
@end

@implementation NTKColtanAnalogFaceView

- (NTKColtanAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NTKColtanAnalogFaceView;
  v9 = [(NTKColtanAnalogFaceView *)&v13 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initForDevice:v8];
    faceViewComplicationFactory = v9->_faceViewComplicationFactory;
    v9->_faceViewComplicationFactory = v10;

    [(NTKWhistlerAnalogFaceViewComplicationFactory *)v9->_faceViewComplicationFactory setUsesNarrowTopSlots:1];
  }

  return v9;
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKColtanAnalogFaceView;
  [(NTKColtanAnalogFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKColtanAnalogFaceView *)self _loadCommonViews];
  [(NTKColtanAnalogFaceView *)self _loadActiveViews];
  [(NTKColtanAnalogFaceView *)self _updateShape];
  [(NTKColtanAnalogFaceView *)self _updateMasking];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKColtanAnalogFaceView;
  [(NTKColtanAnalogFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKColtanAnalogFaceView *)self _unloadActiveViews];
  [(NTKColtanAnalogFaceView *)self _unloadCommonViews];
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKColtanAnalogFaceView;
  [(NTKColtanAnalogFaceView *)&v3 _applyFrozen];
  [(NTKColtanAnalogFaceView *)self _updateFramerate];
}

- (void)setDataMode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = NTKColtanAnalogFaceView;
  [(NTKColtanAnalogFaceView *)&v4 setDataMode:a3];
  [(NTKColtanAnalogFaceView *)self _updateFramerate];
}

- (void)_applyShowsCanonicalContent
{
  v15.receiver = self;
  v15.super_class = NTKColtanAnalogFaceView;
  [(NTKColtanAnalogFaceView *)&v15 _applyShowsCanonicalContent];
  if ([(NTKColtanAnalogFaceView *)self showsCanonicalContent])
  {
    v3 = [(NTKColtanDisplayQuad *)self->_displayActiveQuad quadView];
    [(NTKColtanAnalogFaceView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(NTKColtanAnalogFaceView *)self device];
    [v12 screenScale];
    v14 = [v3 snapshotInRect:v5 scale:v7 time:{v9, v11, v13, 0.0}];
  }
}

- (void)_updateFramerate
{
  if ([(NTKColtanAnalogFaceView *)self editing])
  {
    v3 = [(NTKColtanAnalogFaceView *)self _editMode]== &dword_C;
  }

  else
  {
    v4 = [(NTKColtanAnalogFaceView *)self dataMode];
    v5 = [(NTKColtanAnalogFaceView *)self isFrozen];
    v7 = v4 != 3 && (v4 & 0xFFFFFFFFFFFFFFFBLL) != 1;
    v3 = (v5 & 1) != 0 || v7;
  }

  displayQuadView = self->_displayQuadView;

  [(CLKUIQuadView *)displayQuadView setPaused:v3];
}

- (int64_t)_editMode
{
  [(NTKColtanAnalogFaceView *)self editModeTransitionFraction];
  if (v3 <= 0.5)
  {

    return [(NTKColtanAnalogFaceView *)self fromEditMode];
  }

  else
  {

    return [(NTKColtanAnalogFaceView *)self toEditMode];
  }
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = NTKColtanAnalogFaceView;
  v6 = a3;
  [(NTKColtanAnalogFaceView *)&v7 setOverrideDate:v6 duration:a4];
  [(NTKColtanDisplayQuad *)self->_displayActiveQuad setOverrideDate:v6 duration:a4, v7.receiver, v7.super_class];
}

- (void)_loadLayoutRules
{
  v3 = [(NTKColtanAnalogFaceView *)self device];
  sub_63A8(v3, v3);
  v5 = v4;

  faceViewComplicationFactory = self->_faceViewComplicationFactory;

  [(NTKWhistlerAnalogFaceViewComplicationFactory *)faceViewComplicationFactory loadLayoutRulesForFaceView:self dialDiameter:v5];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:v6 forSlot:a4 faceView:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 updateMonochromeColor];
  }
}

- (double)_verticalPaddingForStatusBar
{
  v2 = [(NTKColtanAnalogFaceView *)self device];
  v3 = sub_63A8(v2, v2);

  return v3;
}

- (void)_configureForEditMode:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = NTKColtanAnalogFaceView;
  [(NTKColtanAnalogFaceView *)&v6 _configureForEditMode:?];
  v5 = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    v5 = 1.0;
  }

  [(CLKUIQuadView *)self->_displayQuadView setAlpha:v5];
  [(NTKColtanAnalogFaceView *)self _updateFramerate];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v13.receiver = self;
  v13.super_class = NTKColtanAnalogFaceView;
  [NTKColtanAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKColtanAnalogFaceView *)self _dialAlphaForEditMode:a4];
  [(NTKColtanAnalogFaceView *)self _dialAlphaForEditMode:a5];
  displayQuadView = self->_displayQuadView;
  CLKInterpolateBetweenFloatsClipped();
  [(CLKUIQuadView *)displayQuadView setAlpha:?];
  [(NTKColtanAnalogFaceView *)self _complicationAlphaForEditMode:a4];
  v11 = v10;
  [(NTKColtanAnalogFaceView *)self _complicationAlphaForEditMode:a5];
  [(NTKColtanAnalogFaceView *)self _applyComplicationAlphaTransitionFraction:a3 fromAlpha:v11 toAlpha:v12];
}

- (void)_applyComplicationAlphaTransitionFraction:(double)a3 fromAlpha:(double)a4 toAlpha:(double)a5
{
  v5 = [(NTKColtanAnalogFaceView *)self complicationContainerView];
  CLKInterpolateBetweenFloatsClipped();
  [v5 setAlpha:?];
}

- (double)_dialAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  if (a3 > 1)
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

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v10 = a3;
  v8 = a5;
  switch(a4)
  {
    case 10:
      v9 = [(NTKColtanAnalogFaceView *)self palette];
      [(NTKColtanAnalogFaceView *)self updateColorsWithPalette:v9];

      break;
    case 11:
      -[NTKColtanAnalogFaceView _setDensity:](self, "_setDensity:", [v10 density]);
      break;
    case 12:
      -[NTKColtanAnalogFaceView _setShape:](self, "_setShape:", [v10 dialShape]);
      break;
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v15 = a4;
  v12 = a5;
  v13 = a7;
  switch(a6)
  {
    case 10:
      v14 = [(NTKColtanAnalogFaceView *)self interpolatedColorPalette];
      [(NTKColtanAnalogFaceView *)self updateColorsWithPalette:v14];

      break;
    case 11:
      -[NTKColtanAnalogFaceView _applyTransitionFraction:fromDensity:toDensity:](self, "_applyTransitionFraction:fromDensity:toDensity:", [v15 density], objc_msgSend(v12, "density"), a3);
      break;
    case 12:
      -[NTKColtanAnalogFaceView _applyTransitionFraction:fromShape:toShape:](self, "_applyTransitionFraction:fromShape:toShape:", [v15 dialShape], objc_msgSend(v12, "dialShape"), a3);
      break;
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v13.receiver = self;
  v13.super_class = NTKColtanAnalogFaceView;
  [(NTKColtanAnalogFaceView *)&v13 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if ([(NTKColtanAnalogFaceView *)self _shouldApplyBreathingForEditMode:a4])
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v12, 0, sizeof(v12));
    CGAffineTransformMakeScale(&v12, v7, v7);
    displayQuadView = self->_displayQuadView;
    v11 = v12;
    [(CLKUIQuadView *)displayQuadView setTransform:&v11];
    cornerView = self->_cornerView;
    v11 = v12;
    [(UIView *)cornerView setTransform:&v11];
    v10 = [(NTKColtanAnalogFaceView *)self timeView];
    v11 = v12;
    [v10 setTransform:&v11];
  }
}

- (void)_updateShape
{
  v3 = [(NTKColtanAnalogFaceView *)self delegate];
  [v3 faceViewDidChangeWantsStatusBarIconShadow];

  shape = self->_shape;
  if (([(NTKColtanAnalogFaceView *)self editing]& 1) == 0)
  {
    v5 = [(NTKColtanAnalogFaceView *)self complicationContainerView];
    v6 = v5;
    v7 = 0.0;
    if (!shape)
    {
      v7 = 1.0;
    }

    [v5 setAlpha:v7];
  }

  if (shape)
  {
    if (shape != 1)
    {
      return;
    }

    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  [(NTKColtanAnalogFaceView *)self _setupCircularMaskForShapeTransitionWithFraction:v8];
}

- (void)_setShape:(unint64_t)a3
{
  if (self->_shape != a3)
  {
    self->_shape = a3;
    [(NTKColtanAnalogFaceView *)self _updateShape];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromShape:(unint64_t)a4 toShape:(unint64_t)a5
{
  if (a4)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = 1.0 - a3;
  if (a4)
  {
    v10 = a3;
  }

  if (a4 == a5)
  {
    v10 = v9;
  }

  [(NTKColtanAnalogFaceView *)self _setupCircularMaskForShapeTransitionWithFraction:v10];
  if ([(NTKColtanAnalogFaceView *)self editing])
  {
    v11 = 12;
  }

  else
  {
    v11 = 0;
  }

  [(NTKColtanAnalogFaceView *)self _complicationAlphaForEditMode:v11];
  if (a4 == 1)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  if (a5 == 1)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v12;
  }

  [(NTKColtanAnalogFaceView *)self _applyComplicationAlphaTransitionFraction:a3 fromAlpha:v13 toAlpha:v14];
}

- (void)_updateMasking
{
  v3 = *(self + 56);
  [(NTKColtanDisplayQuad *)self->_displayActiveQuad setMasking:v3 & 1];
  [(NTKColtanDisplayQuad *)self->_displayInactiveQuad setMasking:v3 & 1];
  displayQuadView = self->_displayQuadView;

  [(CLKUIQuadView *)displayQuadView setOpaque:(v3 & 1) == 0];
}

- (void)_setMasking:(BOOL)a3
{
  v3 = *(self + 56);
  if ((v3 & 1) != a3)
  {
    *(self + 56) = v3 & 0xFE | a3;
    [(NTKColtanAnalogFaceView *)self _updateMasking];
  }
}

- (double)_circularMaskDiameterForShape:(unint64_t)a3 withBounds:(CGRect)a4
{
  width = a4.size.width;
  v6 = [(NTKColtanAnalogFaceView *)self device:a4.origin.x];
  sub_63A8(v6, v6);
  if (a3 == 1)
  {
    v8 = v7 + v7;
  }

  else
  {
    v8 = v7;
  }

  [v6 screenBounds];
  v10 = v8 * (width / v9);

  return v10;
}

- (void)_setupCircularMaskForShapeTransitionWithFraction:(double)a3
{
  v11 = [(NTKColtanAnalogFaceView *)self device];
  [v11 screenBounds];
  [(NTKColtanAnalogFaceView *)self _circularMaskDiameterForShape:0 withBounds:?];
  v6 = v5;
  if (([(NTKColtanAnalogFaceView *)self editing]& 1) == 0)
  {
    if (a3 >= 1.0)
    {
      [v11 screenScale];
      v8 = v6 * 0.5 * v7;
      v9 = v8;
      *&v8 = v9;
      [(NTKColtanDisplayQuad *)self->_displayActiveQuad setMaskRadius:v8];
      *&v10 = v9;
      [(NTKColtanDisplayQuad *)self->_displayInactiveQuad setMaskRadius:v10];
    }

    [(NTKColtanAnalogFaceView *)self _setMasking:a3 >= 1.0];
  }
}

- (id)createFaceColorPalette
{
  v2 = [[NTKColtanColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)updateColorsWithPalette:(id)a3
{
  v4 = a3;
  v5 = [v4 primaryComplicationColor];
  [(NTKColtanAnalogFaceView *)self setComplicationColor:v5];

  v6 = [v4 primaryComplicationColor];
  [(NTKColtanAnalogFaceView *)self setAlternateComplicationColor:v6];

  v7 = [v4 secondaryComplicationColor];
  [(NTKColtanAnalogFaceView *)self setInterpolatedComplicationColor:v7];

  [(NTKColtanDisplayQuad *)self->_displayActiveQuad setPalette:v4];
  [(NTKColtanDisplayQuad *)self->_displayInactiveQuad setPalette:v4];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_588C;
  v8[3] = &unk_10450;
  v8[4] = self;
  [(NTKColtanAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v8];
}

- (void)_setDensity:(unint64_t)a3
{
  [(NTKColtanAnalogFaceView *)self _tickOpacityForDensity:a3];

  [(NTKColtanAnalogFaceView *)self _setTickOpacity:?];
}

- (void)_applyTransitionFraction:(double)a3 fromDensity:(unint64_t)a4 toDensity:(unint64_t)a5
{
  [(NTKColtanAnalogFaceView *)self _tickOpacityForDensity:a4];
  [(NTKColtanAnalogFaceView *)self _tickOpacityForDensity:a5];
  CLKInterpolateBetweenFloatsClipped();

  [(NTKColtanAnalogFaceView *)self _setTickOpacity:?];
}

- (double)_tickOpacityForDensity:(unint64_t)a3
{
  result = 0.0;
  if (a3 == 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_setTickOpacity:(double)a3
{
  v3 = a3;
  v5 = a3 > 0.0;
  [(NTKColtanDisplayQuad *)self->_displayActiveQuad setDensity:v5];
  [(NTKColtanDisplayQuad *)self->_displayInactiveQuad setDensity:v5];
  *&v3 = v3;
  LODWORD(v6) = LODWORD(v3);
  [(NTKColtanDisplayQuad *)self->_displayActiveQuad setTickOpacity:v6];
  LODWORD(v7) = LODWORD(v3);
  [(NTKColtanDisplayQuad *)self->_displayInactiveQuad setTickOpacity:v7];
  v19 = [(NTKColtanAnalogFaceView *)self device];
  displayQuadView = self->_displayQuadView;
  [v19 screenBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v19 screenScale];
  v18 = [(CLKUIQuadView *)displayQuadView snapshotInRect:v10 scale:v12 time:v14, v16, v17, 0.0];
}

- (id)_snapshotWithPigment:(id)a3 density:(unint64_t)a4 analogDialShape:(unint64_t)a5 size:(CGSize)a6 scale:(double)a7
{
  height = a6.height;
  width = a6.width;
  y = CGPointZero.y;
  v14 = a3;
  v15 = [CLKUIQuadView quadViewWithFrame:@"Colt" identifier:CGPointZero.x, y, width, height];
  v16 = [[NTKColtanDisplayQuad alloc] initWithRole:0 screenScale:a7];
  [(NTKColtanDisplayQuad *)v16 setOpaque:1];
  [(NTKColtanDisplayQuad *)v16 setDensity:a4];
  [(NTKColtanAnalogFaceView *)self _tickOpacityForDensity:a4];
  *&v17 = v17;
  [(NTKColtanDisplayQuad *)v16 setTickOpacity:v17];
  v18 = [(NTKColtanAnalogFaceView *)self createFaceColorPalette];
  [v18 setPigmentEditOption:v14];

  [(NTKColtanDisplayQuad *)v16 setPalette:v18];
  v19 = NTKIdealizedDate();
  [(NTKColtanDisplayQuad *)v16 setOverrideDate:v19 duration:0.0];

  if (!a5)
  {
    [(NTKColtanAnalogFaceView *)self _circularMaskDiameterForShape:0 withBounds:CGPointZero.x, y, width, height];
    v21 = v20 * 0.5 * a7;
    *&v21 = v21;
    [(NTKColtanDisplayQuad *)v16 setMaskRadius:v21];
    [(NTKColtanDisplayQuad *)v16 setMasking:1];
  }

  [v15 addQuad:v16];
  v22 = [v15 snapshotInRect:CGPointZero.x scale:y time:{width, height, a7, 0.0}];
  v23 = [[UIImageView alloc] initWithFrame:{CGPointZero.x, y, width, height}];
  [v23 setImage:v22];
  v24 = [NTKRoundedCornerOverlayView alloc];
  v25 = [(NTKColtanAnalogFaceView *)self device];
  v26 = [v24 initWithFrame:v25 forDeviceCornerRadius:{CGPointZero.x, y, width, height}];

  [v23 addSubview:v26];
  v31.width = width;
  v31.height = height;
  UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
  v27 = [v23 layer];
  [v27 renderInContext:UIGraphicsGetCurrentContext()];

  v28 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v28;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_10C50;
  if (a3 != 12)
  {
    v4 = 0;
  }

  if (a3 == 11)
  {
    return &off_10C38;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ((a4 - 11) > 1)
  {
    v30.receiver = self;
    v30.super_class = NTKColtanAnalogFaceView;
    v19 = [(NTKColtanAnalogFaceView *)&v30 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  else
  {
    if (!qword_16B60)
    {
      v10 = objc_opt_new();
      v11 = qword_16B60;
      qword_16B60 = v10;
    }

    v12 = [v9 objectForKeyedSubscript:&off_10A78];
    v13 = [v9 objectForKeyedSubscript:&off_10A48];
    v14 = [v9 objectForKeyedSubscript:&off_10A60];
    v15 = v8;
    if (a4 == 11)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    if (a4 == 11)
    {
      v17 = v15;
    }

    else
    {
      v13 = v15;
      v17 = v12;
    }

    v18 = [NSString stringWithFormat:@"%@-%@-%@", v17, v13, v14];
    v19 = [qword_16B60 objectForKey:v18];
    if (!v19)
    {
      v29 = [objc_opt_class() pigmentFromOption:v14];
      v20 = [v17 density];
      v21 = [v13 dialShape];
      [(NTKColtanAnalogFaceView *)self frame];
      v23 = v22;
      v25 = v24;
      v26 = +[UIScreen mainScreen];
      [v26 nativeScale];
      v19 = [(NTKColtanAnalogFaceView *)self _snapshotWithPigment:v29 density:v20 analogDialShape:v21 size:v23 scale:v25, v27];

      [qword_16B60 setObject:v19 forKey:v18];
    }
  }

  return v19;
}

- (void)_loadCommonViews
{
  v21 = [(NTKColtanAnalogFaceView *)self timeView];
  v3 = [v21 secondHandView];
  [v3 setHidden:1];

  [v21 setHidden:1];
  [(NTKColtanAnalogFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [CLKUIQuadView quadViewWithFrame:@"Colt" identifier:?];
  displayQuadView = self->_displayQuadView;
  self->_displayQuadView = v12;

  v14 = [(NTKColtanAnalogFaceView *)self contentView];
  v15 = [NTKRoundedCornerOverlayView alloc];
  v16 = [(NTKColtanAnalogFaceView *)self device];
  v17 = [v15 initWithFrame:v16 forDeviceCornerRadius:{v5, v7, v9, v11}];
  cornerView = self->_cornerView;
  self->_cornerView = v17;

  [v14 addSubview:self->_cornerView];
  [v14 addSubview:self->_displayQuadView];
  [v14 bringSubviewToFront:self->_displayQuadView];
  [v14 bringSubviewToFront:self->_cornerView];
  [v14 setUserInteractionEnabled:0];
  v19 = [(NTKColtanAnalogFaceView *)self rootContainerView];
  [v19 bringSubviewToFront:v14];
  v20 = [(NTKColtanAnalogFaceView *)self complicationContainerView];
  [v19 bringSubviewToFront:v20];
}

- (void)_unloadCommonViews
{
  [(CLKUIQuadView *)self->_displayQuadView removeFromSuperview];
  displayQuadView = self->_displayQuadView;
  self->_displayQuadView = 0;

  [(UIView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;
}

- (void)_loadActiveViews
{
  v3 = [NTKColtanDisplayQuad alloc];
  v4 = [(NTKColtanAnalogFaceView *)self device];
  [v4 screenScale];
  v5 = [(NTKColtanDisplayQuad *)v3 initWithRole:0 screenScale:?];
  displayActiveQuad = self->_displayActiveQuad;
  self->_displayActiveQuad = v5;

  [(NTKColtanDisplayQuad *)self->_displayActiveQuad setOpaque:0];
  [(CLKUIQuadView *)self->_displayQuadView addQuad:self->_displayActiveQuad];
  displayQuadView = self->_displayQuadView;

  [(CLKUIQuadView *)displayQuadView setDelegate:self];
}

- (void)_unloadActiveViews
{
  [(CLKUIQuadView *)self->_displayQuadView setDelegate:0];
  [(CLKUIQuadView *)self->_displayQuadView removeQuad:self->_displayActiveQuad];
  displayActiveQuad = self->_displayActiveQuad;
  self->_displayActiveQuad = 0;
}

@end