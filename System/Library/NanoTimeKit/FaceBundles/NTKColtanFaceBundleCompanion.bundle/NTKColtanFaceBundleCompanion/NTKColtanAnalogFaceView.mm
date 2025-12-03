@interface NTKColtanAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (NTKColtanAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_circularMaskDiameterForShape:(unint64_t)shape withBounds:(CGRect)bounds;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_dialAlphaForEditMode:(int64_t)mode;
- (double)_tickOpacityForDensity:(unint64_t)density;
- (double)_verticalPaddingForStatusBar;
- (id)_snapshotWithPigment:(id)pigment density:(unint64_t)density analogDialShape:(unint64_t)shape size:(CGSize)size scale:(double)scale;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (int64_t)_editMode;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyComplicationAlphaTransitionFraction:(double)fraction fromAlpha:(double)alpha toAlpha:(double)toAlpha;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyShowsCanonicalContent;
- (void)_applyTransitionFraction:(double)fraction fromDensity:(unint64_t)density toDensity:(unint64_t)toDensity;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromShape:(unint64_t)shape toShape:(unint64_t)toShape;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadActiveViews;
- (void)_loadCommonViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_setDensity:(unint64_t)density;
- (void)_setMasking:(BOOL)masking;
- (void)_setShape:(unint64_t)shape;
- (void)_setTickOpacity:(double)opacity;
- (void)_setupCircularMaskForShapeTransitionWithFraction:(double)fraction;
- (void)_unloadActiveViews;
- (void)_unloadCommonViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateFramerate;
- (void)_updateMasking;
- (void)_updateShape;
- (void)setDataMode:(int64_t)mode;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)updateColorsWithPalette:(id)palette;
@end

@implementation NTKColtanAnalogFaceView

- (NTKColtanAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = NTKColtanAnalogFaceView;
  v9 = [(NTKColtanAnalogFaceView *)&v13 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initForDevice:deviceCopy];
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

- (void)setDataMode:(int64_t)mode
{
  v4.receiver = self;
  v4.super_class = NTKColtanAnalogFaceView;
  [(NTKColtanAnalogFaceView *)&v4 setDataMode:mode];
  [(NTKColtanAnalogFaceView *)self _updateFramerate];
}

- (void)_applyShowsCanonicalContent
{
  v15.receiver = self;
  v15.super_class = NTKColtanAnalogFaceView;
  [(NTKColtanAnalogFaceView *)&v15 _applyShowsCanonicalContent];
  if ([(NTKColtanAnalogFaceView *)self showsCanonicalContent])
  {
    quadView = [(NTKColtanDisplayQuad *)self->_displayActiveQuad quadView];
    [(NTKColtanAnalogFaceView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    device = [(NTKColtanAnalogFaceView *)self device];
    [device screenScale];
    v14 = [quadView snapshotInRect:v5 scale:v7 time:{v9, v11, v13, 0.0}];
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
    dataMode = [(NTKColtanAnalogFaceView *)self dataMode];
    isFrozen = [(NTKColtanAnalogFaceView *)self isFrozen];
    v7 = dataMode != 3 && (dataMode & 0xFFFFFFFFFFFFFFFBLL) != 1;
    v3 = (isFrozen & 1) != 0 || v7;
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

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKColtanAnalogFaceView;
  dateCopy = date;
  [(NTKColtanAnalogFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKColtanDisplayQuad *)self->_displayActiveQuad setOverrideDate:dateCopy duration:duration, v7.receiver, v7.super_class];
}

- (void)_loadLayoutRules
{
  device = [(NTKColtanAnalogFaceView *)self device];
  sub_63A8(device, device);
  v5 = v4;

  faceViewComplicationFactory = self->_faceViewComplicationFactory;

  [(NTKWhistlerAnalogFaceViewComplicationFactory *)faceViewComplicationFactory loadLayoutRulesForFaceView:self dialDiameter:v5];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:viewCopy forSlot:slot faceView:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy updateMonochromeColor];
  }
}

- (double)_verticalPaddingForStatusBar
{
  device = [(NTKColtanAnalogFaceView *)self device];
  v3 = sub_63A8(device, device);

  return v3;
}

- (void)_configureForEditMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = NTKColtanAnalogFaceView;
  [(NTKColtanAnalogFaceView *)&v6 _configureForEditMode:?];
  v5 = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    v5 = 1.0;
  }

  [(CLKUIQuadView *)self->_displayQuadView setAlpha:v5];
  [(NTKColtanAnalogFaceView *)self _updateFramerate];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v13.receiver = self;
  v13.super_class = NTKColtanAnalogFaceView;
  [NTKColtanAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKColtanAnalogFaceView *)self _dialAlphaForEditMode:mode];
  [(NTKColtanAnalogFaceView *)self _dialAlphaForEditMode:editMode];
  displayQuadView = self->_displayQuadView;
  CLKInterpolateBetweenFloatsClipped();
  [(CLKUIQuadView *)displayQuadView setAlpha:?];
  [(NTKColtanAnalogFaceView *)self _complicationAlphaForEditMode:mode];
  v11 = v10;
  [(NTKColtanAnalogFaceView *)self _complicationAlphaForEditMode:editMode];
  [(NTKColtanAnalogFaceView *)self _applyComplicationAlphaTransitionFraction:fraction fromAlpha:v11 toAlpha:v12];
}

- (void)_applyComplicationAlphaTransitionFraction:(double)fraction fromAlpha:(double)alpha toAlpha:(double)toAlpha
{
  complicationContainerView = [(NTKColtanAnalogFaceView *)self complicationContainerView];
  CLKInterpolateBetweenFloatsClipped();
  [complicationContainerView setAlpha:?];
}

- (double)_dialAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  if (mode > 1)
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

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      palette = [(NTKColtanAnalogFaceView *)self palette];
      [(NTKColtanAnalogFaceView *)self updateColorsWithPalette:palette];

      break;
    case 11:
      -[NTKColtanAnalogFaceView _setDensity:](self, "_setDensity:", [optionCopy density]);
      break;
    case 12:
      -[NTKColtanAnalogFaceView _setShape:](self, "_setShape:", [optionCopy dialShape]);
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
      interpolatedColorPalette = [(NTKColtanAnalogFaceView *)self interpolatedColorPalette];
      [(NTKColtanAnalogFaceView *)self updateColorsWithPalette:interpolatedColorPalette];

      break;
    case 11:
      -[NTKColtanAnalogFaceView _applyTransitionFraction:fromDensity:toDensity:](self, "_applyTransitionFraction:fromDensity:toDensity:", [optionCopy density], objc_msgSend(toOptionCopy, "density"), fraction);
      break;
    case 12:
      -[NTKColtanAnalogFaceView _applyTransitionFraction:fromShape:toShape:](self, "_applyTransitionFraction:fromShape:toShape:", [optionCopy dialShape], objc_msgSend(toOptionCopy, "dialShape"), fraction);
      break;
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v13.receiver = self;
  v13.super_class = NTKColtanAnalogFaceView;
  [(NTKColtanAnalogFaceView *)&v13 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if ([(NTKColtanAnalogFaceView *)self _shouldApplyBreathingForEditMode:mode])
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
    timeView = [(NTKColtanAnalogFaceView *)self timeView];
    v11 = v12;
    [timeView setTransform:&v11];
  }
}

- (void)_updateShape
{
  delegate = [(NTKColtanAnalogFaceView *)self delegate];
  [delegate faceViewDidChangeWantsStatusBarIconShadow];

  shape = self->_shape;
  if (([(NTKColtanAnalogFaceView *)self editing]& 1) == 0)
  {
    complicationContainerView = [(NTKColtanAnalogFaceView *)self complicationContainerView];
    v6 = complicationContainerView;
    v7 = 0.0;
    if (!shape)
    {
      v7 = 1.0;
    }

    [complicationContainerView setAlpha:v7];
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

- (void)_setShape:(unint64_t)shape
{
  if (self->_shape != shape)
  {
    self->_shape = shape;
    [(NTKColtanAnalogFaceView *)self _updateShape];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromShape:(unint64_t)shape toShape:(unint64_t)toShape
{
  if (shape)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  fractionCopy = 1.0 - fraction;
  if (shape)
  {
    fractionCopy = fraction;
  }

  if (shape == toShape)
  {
    fractionCopy = v9;
  }

  [(NTKColtanAnalogFaceView *)self _setupCircularMaskForShapeTransitionWithFraction:fractionCopy];
  if ([(NTKColtanAnalogFaceView *)self editing])
  {
    v11 = 12;
  }

  else
  {
    v11 = 0;
  }

  [(NTKColtanAnalogFaceView *)self _complicationAlphaForEditMode:v11];
  if (shape == 1)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  if (toShape == 1)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v12;
  }

  [(NTKColtanAnalogFaceView *)self _applyComplicationAlphaTransitionFraction:fraction fromAlpha:v13 toAlpha:v14];
}

- (void)_updateMasking
{
  v3 = *(self + 56);
  [(NTKColtanDisplayQuad *)self->_displayActiveQuad setMasking:v3 & 1];
  [(NTKColtanDisplayQuad *)self->_displayInactiveQuad setMasking:v3 & 1];
  displayQuadView = self->_displayQuadView;

  [(CLKUIQuadView *)displayQuadView setOpaque:(v3 & 1) == 0];
}

- (void)_setMasking:(BOOL)masking
{
  v3 = *(self + 56);
  if ((v3 & 1) != masking)
  {
    *(self + 56) = v3 & 0xFE | masking;
    [(NTKColtanAnalogFaceView *)self _updateMasking];
  }
}

- (double)_circularMaskDiameterForShape:(unint64_t)shape withBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v6 = [(NTKColtanAnalogFaceView *)self device:bounds.origin.x];
  sub_63A8(v6, v6);
  if (shape == 1)
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

- (void)_setupCircularMaskForShapeTransitionWithFraction:(double)fraction
{
  device = [(NTKColtanAnalogFaceView *)self device];
  [device screenBounds];
  [(NTKColtanAnalogFaceView *)self _circularMaskDiameterForShape:0 withBounds:?];
  v6 = v5;
  if (([(NTKColtanAnalogFaceView *)self editing]& 1) == 0)
  {
    if (fraction >= 1.0)
    {
      [device screenScale];
      v8 = v6 * 0.5 * v7;
      v9 = v8;
      *&v8 = v9;
      [(NTKColtanDisplayQuad *)self->_displayActiveQuad setMaskRadius:v8];
      *&v10 = v9;
      [(NTKColtanDisplayQuad *)self->_displayInactiveQuad setMaskRadius:v10];
    }

    [(NTKColtanAnalogFaceView *)self _setMasking:fraction >= 1.0];
  }
}

- (id)createFaceColorPalette
{
  v2 = [[NTKColtanColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)updateColorsWithPalette:(id)palette
{
  paletteCopy = palette;
  primaryComplicationColor = [paletteCopy primaryComplicationColor];
  [(NTKColtanAnalogFaceView *)self setComplicationColor:primaryComplicationColor];

  primaryComplicationColor2 = [paletteCopy primaryComplicationColor];
  [(NTKColtanAnalogFaceView *)self setAlternateComplicationColor:primaryComplicationColor2];

  secondaryComplicationColor = [paletteCopy secondaryComplicationColor];
  [(NTKColtanAnalogFaceView *)self setInterpolatedComplicationColor:secondaryComplicationColor];

  [(NTKColtanDisplayQuad *)self->_displayActiveQuad setPalette:paletteCopy];
  [(NTKColtanDisplayQuad *)self->_displayInactiveQuad setPalette:paletteCopy];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_588C;
  v8[3] = &unk_10450;
  v8[4] = self;
  [(NTKColtanAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v8];
}

- (void)_setDensity:(unint64_t)density
{
  [(NTKColtanAnalogFaceView *)self _tickOpacityForDensity:density];

  [(NTKColtanAnalogFaceView *)self _setTickOpacity:?];
}

- (void)_applyTransitionFraction:(double)fraction fromDensity:(unint64_t)density toDensity:(unint64_t)toDensity
{
  [(NTKColtanAnalogFaceView *)self _tickOpacityForDensity:density];
  [(NTKColtanAnalogFaceView *)self _tickOpacityForDensity:toDensity];
  CLKInterpolateBetweenFloatsClipped();

  [(NTKColtanAnalogFaceView *)self _setTickOpacity:?];
}

- (double)_tickOpacityForDensity:(unint64_t)density
{
  result = 0.0;
  if (density == 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_setTickOpacity:(double)opacity
{
  opacityCopy = opacity;
  v5 = opacity > 0.0;
  [(NTKColtanDisplayQuad *)self->_displayActiveQuad setDensity:v5];
  [(NTKColtanDisplayQuad *)self->_displayInactiveQuad setDensity:v5];
  *&opacityCopy = opacityCopy;
  LODWORD(v6) = LODWORD(opacityCopy);
  [(NTKColtanDisplayQuad *)self->_displayActiveQuad setTickOpacity:v6];
  LODWORD(v7) = LODWORD(opacityCopy);
  [(NTKColtanDisplayQuad *)self->_displayInactiveQuad setTickOpacity:v7];
  device = [(NTKColtanAnalogFaceView *)self device];
  displayQuadView = self->_displayQuadView;
  [device screenBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [device screenScale];
  v18 = [(CLKUIQuadView *)displayQuadView snapshotInRect:v10 scale:v12 time:v14, v16, v17, 0.0];
}

- (id)_snapshotWithPigment:(id)pigment density:(unint64_t)density analogDialShape:(unint64_t)shape size:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  y = CGPointZero.y;
  pigmentCopy = pigment;
  height = [CLKUIQuadView quadViewWithFrame:@"Colt" identifier:CGPointZero.x, y, width, height];
  v16 = [[NTKColtanDisplayQuad alloc] initWithRole:0 screenScale:scale];
  [(NTKColtanDisplayQuad *)v16 setOpaque:1];
  [(NTKColtanDisplayQuad *)v16 setDensity:density];
  [(NTKColtanAnalogFaceView *)self _tickOpacityForDensity:density];
  *&v17 = v17;
  [(NTKColtanDisplayQuad *)v16 setTickOpacity:v17];
  createFaceColorPalette = [(NTKColtanAnalogFaceView *)self createFaceColorPalette];
  [createFaceColorPalette setPigmentEditOption:pigmentCopy];

  [(NTKColtanDisplayQuad *)v16 setPalette:createFaceColorPalette];
  v19 = NTKIdealizedDate();
  [(NTKColtanDisplayQuad *)v16 setOverrideDate:v19 duration:0.0];

  if (!shape)
  {
    [(NTKColtanAnalogFaceView *)self _circularMaskDiameterForShape:0 withBounds:CGPointZero.x, y, width, height];
    v21 = v20 * 0.5 * scale;
    *&v21 = v21;
    [(NTKColtanDisplayQuad *)v16 setMaskRadius:v21];
    [(NTKColtanDisplayQuad *)v16 setMasking:1];
  }

  [height addQuad:v16];
  v22 = [height snapshotInRect:CGPointZero.x scale:y time:{width, height, scale, 0.0}];
  v23 = [[UIImageView alloc] initWithFrame:{CGPointZero.x, y, width, height}];
  [v23 setImage:v22];
  v24 = [NTKRoundedCornerOverlayView alloc];
  device = [(NTKColtanAnalogFaceView *)self device];
  v26 = [v24 initWithFrame:device forDeviceCornerRadius:{CGPointZero.x, y, width, height}];

  [v23 addSubview:v26];
  v31.width = width;
  v31.height = height;
  UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
  layer = [v23 layer];
  [layer renderInContext:UIGraphicsGetCurrentContext()];

  v28 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v28;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_10C50;
  if (options != 12)
  {
    v4 = 0;
  }

  if (options == 11)
  {
    return &off_10C38;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  if ((mode - 11) > 1)
  {
    v30.receiver = self;
    v30.super_class = NTKColtanAnalogFaceView;
    v19 = [(NTKColtanAnalogFaceView *)&v30 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  else
  {
    if (!qword_16B60)
    {
      v10 = objc_opt_new();
      v11 = qword_16B60;
      qword_16B60 = v10;
    }

    v12 = [optionsCopy objectForKeyedSubscript:&off_10A78];
    v13 = [optionsCopy objectForKeyedSubscript:&off_10A48];
    v14 = [optionsCopy objectForKeyedSubscript:&off_10A60];
    v15 = optionCopy;
    if (mode == 11)
    {
      v16 = v12;
    }

    else
    {
      v16 = v13;
    }

    if (mode == 11)
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
      density = [v17 density];
      dialShape = [v13 dialShape];
      [(NTKColtanAnalogFaceView *)self frame];
      v23 = v22;
      v25 = v24;
      v26 = +[UIScreen mainScreen];
      [v26 nativeScale];
      v19 = [(NTKColtanAnalogFaceView *)self _snapshotWithPigment:v29 density:density analogDialShape:dialShape size:v23 scale:v25, v27];

      [qword_16B60 setObject:v19 forKey:v18];
    }
  }

  return v19;
}

- (void)_loadCommonViews
{
  timeView = [(NTKColtanAnalogFaceView *)self timeView];
  secondHandView = [timeView secondHandView];
  [secondHandView setHidden:1];

  [timeView setHidden:1];
  [(NTKColtanAnalogFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [CLKUIQuadView quadViewWithFrame:@"Colt" identifier:?];
  displayQuadView = self->_displayQuadView;
  self->_displayQuadView = v12;

  contentView = [(NTKColtanAnalogFaceView *)self contentView];
  v15 = [NTKRoundedCornerOverlayView alloc];
  device = [(NTKColtanAnalogFaceView *)self device];
  v17 = [v15 initWithFrame:device forDeviceCornerRadius:{v5, v7, v9, v11}];
  cornerView = self->_cornerView;
  self->_cornerView = v17;

  [contentView addSubview:self->_cornerView];
  [contentView addSubview:self->_displayQuadView];
  [contentView bringSubviewToFront:self->_displayQuadView];
  [contentView bringSubviewToFront:self->_cornerView];
  [contentView setUserInteractionEnabled:0];
  rootContainerView = [(NTKColtanAnalogFaceView *)self rootContainerView];
  [rootContainerView bringSubviewToFront:contentView];
  complicationContainerView = [(NTKColtanAnalogFaceView *)self complicationContainerView];
  [rootContainerView bringSubviewToFront:complicationContainerView];
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
  device = [(NTKColtanAnalogFaceView *)self device];
  [device screenScale];
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