@interface NTKSpectrumAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_hasBezelComplication;
- (BOOL)_needsBezelVisible;
- (NTKSpectrumAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_circularMaskRadiusForDialVisibilityWithFraction:(double)fraction;
- (double)_circularMaskRadiusForShapeTransitionWithFraction:(double)fraction withBounds:(CGRect)bounds showsDial:(BOOL)dial;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_dialAlphaForEditMode:(int64_t)mode;
- (double)_handAlphaForEditMode:(int64_t)mode;
- (double)_swatchMaskRadiusForShape:(unint64_t)shape withBounds:(CGRect)bounds;
- (double)_verticalPaddingForStatusBar;
- (double)bezelComplicationTextWidthInRadius;
- (id)_additonalViewsToApplyDesaturationDuringComplicationEditing;
- (id)_keylineViewForComplicationSlot:(id)slot;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_snapshotWithColorPalette:(id)palette style:(unint64_t)style shape:(unint64_t)shape size:(CGSize)size maskRadius:(double)radius;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (id)utilityBezelComplicationView;
- (int64_t)_complicationPickerStyleForSlot:(id)slot;
- (int64_t)_keylineStyleForComplicationSlot:(id)slot;
- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot;
- (unint64_t)_layoutStyleForSlot:(id)slot;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyColorTransitionWithInterpolatedPalette:(id)palette;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromShape:(unint64_t)shape toShape:(unint64_t)toShape;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
- (void)_configureUIOnColorChange;
- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot;
- (void)_getMinuteHandAngle:(double *)angle andHourAngle:(double *)hourAngle;
- (void)_loadActiveViews;
- (void)_loadCommonViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_reorderSwitcherSnapshotView;
- (void)_setInlayColorForMinuteHand:(id)hand hourHandColor:(id)color;
- (void)_setMasking:(BOOL)masking;
- (void)_setShape:(unint64_t)shape;
- (void)_setStyle:(unint64_t)style;
- (void)_setupCircularMaskForDialVisibilityWithFraction:(double)fraction;
- (void)_setupCircularMaskForShapeTransitionWithFraction:(double)fraction;
- (void)_setupDialView;
- (void)_unloadActiveViews;
- (void)_unloadCommonViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateColor;
- (void)_updateColors;
- (void)_updateDialTicksForBezelText;
- (void)_updateFramerate;
- (void)_updateMasking;
- (void)_updateShape;
- (void)_updateStyle;
- (void)dealloc;
- (void)layoutSubviews;
- (void)quadViewWillDisplay:(id)display forTime:(double)time;
- (void)setDataMode:(int64_t)mode;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)updateColorWithPalette:(id)palette;
@end

@implementation NTKSpectrumAnalogFaceView

- (NTKSpectrumAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = NTKSpectrumAnalogFaceView;
  v9 = [(NTKSpectrumAnalogFaceView *)&v18 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initForDevice:deviceCopy];
    faceViewComplicationFactory = v9->_faceViewComplicationFactory;
    v9->_faceViewComplicationFactory = v10;

    [(NTKWhistlerAnalogFaceViewComplicationFactory *)v9->_faceViewComplicationFactory setUsesNarrowTopSlots:1];
    v12 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    utilityComplicationFactory = v9->_utilityComplicationFactory;
    v9->_utilityComplicationFactory = v12;

    v14 = [(NTKUtilityComplicationFactory *)v9->_utilityComplicationFactory setFaceView:v9];
    v15 = v9->_utilityComplicationFactory;
    sub_5C4C(v14, deviceCopy);
    [(NTKUtilityComplicationFactory *)v15 setBezelKeylineDiameter:v16];
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v2 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v3 layoutSubviews];
  [(NTKSpectrumAnalogFaceView *)self _updateShape];
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKSpectrumAnalogFaceView *)self _loadCommonViews];
  [(NTKSpectrumAnalogFaceView *)self _loadActiveViews];
  [(NTKSpectrumAnalogFaceView *)self _updateColor];
  [(NTKSpectrumAnalogFaceView *)self _updateStyle];
  [(NTKSpectrumAnalogFaceView *)self _updateShape];
  [(NTKSpectrumAnalogFaceView *)self _updateMasking];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKSpectrumAnalogFaceView *)self _unloadActiveViews];
  [(NTKSpectrumAnalogFaceView *)self _unloadCommonViews];
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKSpectrumColorPalette);

  return v2;
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v3 _applyFrozen];
  [(NTKSpectrumAnalogFaceView *)self _updateFramerate];
}

- (void)setDataMode:(int64_t)mode
{
  v4.receiver = self;
  v4.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v4 setDataMode:mode];
  [(NTKSpectrumAnalogFaceView *)self _updateFramerate];
}

- (void)_updateFramerate
{
  if (([(NTKSpectrumAnalogFaceView *)self editing]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    dataMode = [(NTKSpectrumAnalogFaceView *)self dataMode];
    isFrozen = [(NTKSpectrumAnalogFaceView *)self isFrozen];
    v7 = dataMode != 3 && (dataMode & 0xFFFFFFFFFFFFFFFBLL) != 1;
    v3 = (isFrozen & 1) != 0 || v7;
  }

  conicQuadView = self->_conicQuadView;

  [(CLKUIQuadView *)conicQuadView setPaused:v3];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v11 setOverrideDate:dateCopy duration:duration];
  objc_initWeak(&location, self);
  conicActiveQuad = self->_conicActiveQuad;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2CA0;
  v8[3] = &unk_10528;
  objc_copyWeak(&v9, &location);
  [(NTKSpectrumConicQuad *)conicActiveQuad setOverrideDate:dateCopy duration:v8 completion:duration];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_configureTimeView:(id)view
{
  v4.receiver = self;
  v4.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v4 _configureTimeView:view];
  [(NTKSpectrumAnalogFaceView *)self _configureUIOnColorChange];
}

- (void)_loadLayoutRules
{
  device = [(NTKSpectrumAnalogFaceView *)self device];
  sub_5C4C(device, device);
  v5 = v4;

  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory loadLayoutRulesForFaceView:self dialDiameter:v5];
  v7 = [(NTKSpectrumAnalogFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBezel];
  utilityComplicationFactory = self->_utilityComplicationFactory;
  [(NTKSpectrumAnalogFaceView *)self bounds];
  [NTKUtilityComplicationFactory configureComplicationLayout:"configureComplicationLayout:forSlot:bounds:dialDiameter:" forSlot:v7 bounds:11 dialDiameter:?];
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  if (family == 3)
  {
    return [NTKUtilityComplicationFactory newViewForComplication:"newViewForComplication:family:forSlot:" family:complication forSlot:?];
  }

  else
  {
    return [NTKWhistlerAnalogFaceViewComplicationFactory newLegacyViewForComplication:"newLegacyViewForComplication:family:slot:faceView:" family:complication slot:? faceView:?];
  }
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotBezel] && objc_msgSend(viewCopy, "conformsToProtocol:", &OBJC_PROTOCOL___NTKUtilityFlatComplicationView))
  {
    v12.receiver = self;
    v12.super_class = NTKSpectrumAnalogFaceView;
    [(NTKSpectrumAnalogFaceView *)&v12 _configureComplicationView:viewCopy forSlot:slotCopy];
    v8 = viewCopy;
    [v8 setDelegate:self];
    [v8 updateMonochromeColor];
    utilityComplicationFactory = self->_utilityComplicationFactory;
    device = [(NTKSpectrumAnalogFaceView *)self device];
    sub_5C4C(device, device);
    [(NTKUtilityComplicationFactory *)utilityComplicationFactory configureComplicationView:v8 forSlot:slotCopy dialDiameter:v11];
  }

  else
  {
    [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:viewCopy forSlot:slotCopy faceView:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy updateMonochromeColor];
  }
}

- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotBezel])
  {
    v7 = [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory layoutOverrideForComplicationType:type inSlot:11];
  }

  else
  {
    v7 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory legacyLayoutOverrideforComplicationType:type slot:slotCopy faceView:self];
  }

  v8 = v7;

  return v8;
}

- (double)_verticalPaddingForStatusBar
{
  device = [(NTKSpectrumAnalogFaceView *)self device];
  v3 = sub_5C4C(device, device);

  return v3;
}

- (id)_keylineViewForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotBezel])
  {
    utilityComplicationFactory = self->_utilityComplicationFactory;
    device = [(NTKSpectrumAnalogFaceView *)self device];
    sub_5C4C(device, device);
    v8 = [(NTKUtilityComplicationFactory *)utilityComplicationFactory keylineViewForSlot:11 dialDiameter:v7];
  }

  else
  {
    v8 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory keylineViewForComplicationSlot:slotCopy];
  }

  return v8;
}

- (int64_t)_keylineStyleForComplicationSlot:(id)slot
{
  v4 = NTKComplicationSlotBezel;
  slotCopy = slot;
  if ([slotCopy isEqualToString:v4])
  {
    v9.receiver = self;
    v9.super_class = NTKSpectrumAnalogFaceView;
    v6 = [(NTKSpectrumAnalogFaceView *)&v9 _keylineStyleForComplicationSlot:slotCopy];
  }

  else
  {
    v6 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory keylineStyleForComplicationSlot:slotCopy];
  }

  v7 = v6;

  return v7;
}

- (void)_prepareForEditing
{
  [(NTKSpectrumAnalogDialView *)self->_dialView prepareForEdit];
  [(NTKSpectrumAnalogFaceView *)self _updateDialTicksForBezelText];

  [(NTKSpectrumAnalogFaceView *)self _updateFramerate];
}

- (void)_cleanupAfterEditing
{
  [(NTKSpectrumAnalogDialView *)self->_dialView cleanupAfterEdit];
  [(NTKSpectrumAnalogFaceView *)self _updateDialTicksForBezelText];
  _needsBezelVisible = [(NTKSpectrumAnalogFaceView *)self _needsBezelVisible];
  [(NTKSpectrumAnalogDialView *)self->_dialView setHidden:_needsBezelVisible ^ 1];
  v4 = 0.0;
  if (_needsBezelVisible)
  {
    v4 = 1.0;
  }

  [(NTKSpectrumAnalogDialView *)self->_dialView setAlpha:v4];

  [(NTKSpectrumAnalogFaceView *)self _updateFramerate];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  switch(mode)
  {
    case 15:
      -[NTKSpectrumAnalogFaceView _setStyle:](self, "_setStyle:", [optionCopy style]);
      break;
    case 12:
      -[NTKSpectrumAnalogFaceView _setShape:](self, "_setShape:", [optionCopy dialShape]);
      break;
    case 10:
      tritiumDimming = self->_tritiumDimming;
      self->_tritiumDimming = 0;

      [(NTKSpectrumAnalogFaceView *)self _updateColors];
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
    case 15:
      -[NTKSpectrumAnalogFaceView _applyTransitionFraction:fromStyle:toStyle:](self, "_applyTransitionFraction:fromStyle:toStyle:", [optionCopy style], objc_msgSend(toOptionCopy, "style"), fraction);
      break;
    case 12:
      -[NTKSpectrumAnalogFaceView _applyTransitionFraction:fromShape:toShape:](self, "_applyTransitionFraction:fromShape:toShape:", [optionCopy dialShape], objc_msgSend(toOptionCopy, "dialShape"), fraction);
      break;
    case 10:
      interpolatedColorPalette = [(NTKSpectrumAnalogFaceView *)self interpolatedColorPalette];
      [(NTKSpectrumAnalogFaceView *)self _applyColorTransitionWithInterpolatedPalette:interpolatedColorPalette];

      break;
  }
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  timeView = [(NTKSpectrumAnalogFaceView *)self timeView];
  [(NTKSpectrumAnalogFaceView *)self _handAlphaForEditMode:mode];
  [(NTKSpectrumAnalogFaceView *)self _handAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];

  conicQuadView = self->_conicQuadView;
  [(NTKSpectrumAnalogFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKSpectrumAnalogFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(CLKUIQuadView *)conicQuadView setAlpha:?];
  complicationContainerView = [(NTKSpectrumAnalogFaceView *)self complicationContainerView];
  [(NTKSpectrumAnalogFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKSpectrumAnalogFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [complicationContainerView setAlpha:?];

  dialView = self->_dialView;
  [(NTKSpectrumAnalogFaceView *)self _dialAlphaForEditMode:mode];
  [(NTKSpectrumAnalogFaceView *)self _dialAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();

  [(NTKSpectrumAnalogDialView *)dialView setAlpha:?];
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication
{
  v5.receiver = self;
  v5.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v5 _cleanupAfterTransitionComplicationSlot:slot selectedComplication:complication];
  [(NTKSpectrumAnalogFaceView *)self _updateDialTicksForBezelText];
}

- (double)_dialAlphaForEditMode:(int64_t)mode
{
  v3 = 0.0;
  if (mode != 1 && [(NTKSpectrumAnalogFaceView *)self _needsBezelVisible])
  {
    if (mode == 12 || mode == 15)
    {
      return NTKEditModeDimmedAlpha;
    }

    else
    {
      return 1.0;
    }
  }

  return v3;
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  result = 0.0;
  if (!self->_shape)
  {
    v4 = mode == 12 || mode == 15;
    result = NTKEditModeDimmedAlpha;
    if (!v4)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v19.receiver = self;
  v19.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v19 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode <= 0xF && ((1 << mode) & 0x9400) != 0)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeScale(&v18, v7, v7);
    contentView = [(NTKSpectrumAnalogFaceView *)self contentView];
    v17 = v18;
    [contentView setTransform:&v17];

    timeView = [(NTKSpectrumAnalogFaceView *)self timeView];
    v17 = v18;
    [timeView setTransform:&v17];

    dialComplicationContainerView = [(NTKSpectrumAnalogFaceView *)self dialComplicationContainerView];
    v17 = v18;
    [dialComplicationContainerView setTransform:&v17];

    NTKAlphaForRubberBandingFraction();
    v12 = v11;
    [(NTKSpectrumAnalogFaceView *)self _contentAlphaForEditMode:mode];
    v14 = v12 * v13;
    contentView2 = [(NTKSpectrumAnalogFaceView *)self contentView];
    [contentView2 setAlpha:v14];

    dialComplicationContainerView2 = [(NTKSpectrumAnalogFaceView *)self dialComplicationContainerView];
    [dialComplicationContainerView2 setAlpha:v14];
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v14.receiver = self;
  v14.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v14 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode <= 0xF && ((1 << mode) & 0x9400) != 0)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, v7, v7);
    conicQuadView = self->_conicQuadView;
    v12 = v13;
    [(CLKUIQuadView *)conicQuadView setTransform:&v12];
    cornerView = self->_cornerView;
    v12 = v13;
    [(UIView *)cornerView setTransform:&v12];
    timeView = [(NTKSpectrumAnalogFaceView *)self timeView];
    v12 = v13;
    [timeView setTransform:&v12];

    dialComplicationContainerView = [(NTKSpectrumAnalogFaceView *)self dialComplicationContainerView];
    v12 = v13;
    [dialComplicationContainerView setTransform:&v12];
  }
}

- (unint64_t)_layoutStyleForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotBezel])
  {
    v5 = &dword_0 + 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKSpectrumAnalogFaceView;
    v5 = [(NTKSpectrumAnalogFaceView *)&v7 _layoutStyleForSlot:slotCopy];
  }

  return v5;
}

- (int64_t)_complicationPickerStyleForSlot:(id)slot
{
  v4 = NTKComplicationSlotBezel;
  slotCopy = slot;
  if ([slotCopy isEqualToString:v4])
  {
    v9.receiver = self;
    v9.super_class = NTKSpectrumAnalogFaceView;
    v6 = [(NTKSpectrumAnalogFaceView *)&v9 _complicationPickerStyleForSlot:slotCopy];
  }

  else
  {
    v6 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory complicationPickerStyleForSlot:slotCopy];
  }

  v7 = v6;

  return v7;
}

- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotBezel] && -[NTKSpectrumAnalogFaceView _layoutStyleForSlot:](self, "_layoutStyleForSlot:", slotCopy) == &dword_0 + 1)
  {
    if (radius)
    {
      device = [(NTKSpectrumAnalogFaceView *)self device];
      sub_5C4C(device, device);
      v15 = v14;

      [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory bezelComplicationRadiusWithDialDiameter:v15];
      *radius = v16 + v16;
    }

    if (width)
    {
      [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory bezelComplicationMaxAngularWidth];
      *width = v17;
    }

    if (center)
    {
      [(NTKSpectrumAnalogFaceView *)self bounds];
      x = v26.origin.x;
      y = v26.origin.y;
      width = v26.size.width;
      height = v26.size.height;
      MidX = CGRectGetMidX(v26);
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      MidY = CGRectGetMidY(v27);
      center->x = MidX;
      center->y = MidY;
    }

    if (interior)
    {
      *interior = 0;
    }
  }

  _objc_release_x1();
}

- (id)_additonalViewsToApplyDesaturationDuringComplicationEditing
{
  dialView = self->_dialView;
  v2 = [NSArray arrayWithObjects:&dialView count:1];

  return v2;
}

- (void)_updateColor
{
  palette = [(NTKSpectrumAnalogFaceView *)self palette];
  fromColor = [palette fromColor];
  toColor = [palette toColor];
  complicationColor = [palette complicationColor];
  [(NTKSpectrumAnalogFaceView *)self setComplicationColor:complicationColor];
  v16 = 0.0;
  v17 = 0.0;
  [(NTKSpectrumAnalogFaceView *)self _getMinuteHandAngle:&v17 andHourAngle:&v16];
  v7 = [NSNumber numberWithDouble:v17];
  v8 = [palette minuteHandInlayAtAngle:v7];

  v9 = [NSNumber numberWithDouble:v16];
  v10 = [palette hourHandInlayAtAngle:v9];

  [(NTKSpectrumAnalogFaceView *)self _setInlayColorForMinuteHand:v8 hourHandColor:v10];
  is3ComponentsGradient = [palette is3ComponentsGradient];
  conicActiveQuad = self->_conicActiveQuad;
  if (is3ComponentsGradient)
  {
    midColor = [palette midColor];
    [(NTKSpectrumConicQuad *)conicActiveQuad setFromColor:fromColor toColor:toColor midColor:midColor interpolation:1];
  }

  else
  {
    [(NTKSpectrumConicQuad *)self->_conicActiveQuad setFromColor:fromColor toColor:toColor];
  }

  v14 = self->_conicActiveQuad;
  overlayOpacity = [palette overlayOpacity];
  [overlayOpacity floatValue];
  [(NTKSpectrumConicQuad *)v14 setOverlayOpacity:?];
}

- (void)_updateColors
{
  [(NTKSpectrumAnalogFaceView *)self _configureUIOnColorChange];

  [(NTKSpectrumAnalogFaceView *)self _updateColor];
}

- (void)_setInlayColorForMinuteHand:(id)hand hourHandColor:(id)color
{
  colorCopy = color;
  handCopy = hand;
  timeView = [(NTKSpectrumAnalogFaceView *)self timeView];
  minuteHandView = [timeView minuteHandView];
  [minuteHandView setInlayColor:handCopy];

  minuteHandView2 = [timeView minuteHandView];
  [minuteHandView2 setHandDotColor:handCopy];

  hourHandView = [timeView hourHandView];
  [hourHandView setInlayColor:colorCopy];
}

- (void)_getMinuteHandAngle:(double *)angle andHourAngle:(double *)hourAngle
{
  v7 = CACurrentMediaTime();
  endOverrideTime = self->_endOverrideTime;
  if (v7 >= endOverrideTime)
  {
    conicActiveQuad = self->_conicActiveQuad;
    if (!conicActiveQuad)
    {
      conicActiveQuad = self->_conicInactiveQuad;
    }

    v15 = conicActiveQuad;
    overrideDate = [(NTKSpectrumConicQuad *)v15 overrideDate];
    if (!overrideDate)
    {
      overrideDate = +[NTKDate faceDate];
    }

    calendar = [(NTKSpectrumConicQuad *)v15 calendar];
    NTKHourMinuteSecondAnglesForTime();

    v12 = 0.0 / 6.2832;
    v13 = v12;
  }

  else
  {
    v9 = (v7 - self->_startOverrideTime) / (endOverrideTime - self->_startOverrideTime);
    if (v9 > 1.0)
    {
      v9 = 1.0;
    }

    v10 = self->_startMinuteAngle + ((self->_endMinuteAngle - self->_startMinuteAngle) * v9);
    v11 = self->_startHourAngle + ((self->_endHourAngle - self->_startHourAngle) * v9);
    if (v10 < 0.0)
    {
      v10 = v10 + 1.0;
    }

    if (v10 <= 1.0)
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 + -1.0;
    }

    if (v11 < 0.0)
    {
      v11 = v11 + 1.0;
    }

    if (v11 <= 1.0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 + -1.0;
    }
  }

  if (angle)
  {
    *angle = (1.0 - v12);
  }

  if (hourAngle)
  {
    *hourAngle = (1.0 - v13);
  }
}

- (void)_updateShape
{
  _needsBezelVisible = [(NTKSpectrumAnalogFaceView *)self _needsBezelVisible];
  delegate = [(NTKSpectrumAnalogFaceView *)self delegate];
  [delegate faceViewDidChangeWantsStatusBarIconShadow];

  shape = self->_shape;
  if (([(NTKSpectrumAnalogFaceView *)self editing]& 1) == 0)
  {
    complicationContainerView = [(NTKSpectrumAnalogFaceView *)self complicationContainerView];
    v7 = complicationContainerView;
    if (shape)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    if (shape)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    [complicationContainerView setAlpha:v8];

    [(UIView *)self->_cornerView setAlpha:v9];
    if (_needsBezelVisible)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    [(NTKSpectrumAnalogDialView *)self->_dialView setAlpha:v10];
  }

  if (shape == 1)
  {

    [(NTKSpectrumAnalogFaceView *)self _setupCircularMaskForShapeTransitionWithFraction:0.0];
  }

  else if (!shape)
  {
    v11 = 0.0;
    if (_needsBezelVisible)
    {
      v11 = 1.0;
    }

    [(NTKSpectrumAnalogFaceView *)self _setupCircularMaskForDialVisibilityWithFraction:v11];
  }
}

- (void)_setShape:(unint64_t)shape
{
  if (self->_shape != shape)
  {
    self->_shape = shape;
    [(NTKSpectrumAnalogFaceView *)self _updateShape];
  }
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

  complicationContainerView = [(NTKSpectrumAnalogFaceView *)self complicationContainerView];
  v9 = fractionCopy * fractionCopy * NTKEditModeDimmedAlpha;
  [complicationContainerView setAlpha:v9];

  [(NTKSpectrumAnalogDialView *)self->_dialView setAlpha:v9];
  [(UIView *)self->_cornerView setAlpha:1.0 - fractionCopy];

  [(NTKSpectrumAnalogFaceView *)self _setupCircularMaskForShapeTransitionWithFraction:fractionCopy];
}

- (void)_updateStyle
{
  [(NTKSpectrumConicQuad *)self->_conicActiveQuad setStyle:self->_style];
  conicInactiveQuad = self->_conicInactiveQuad;
  style = self->_style;

  [(NTKSpectrumConicQuad *)conicInactiveQuad setStyle:style];
}

- (void)_setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(NTKSpectrumAnalogFaceView *)self _updateStyle];
  }
}

- (void)updateColorWithPalette:(id)palette
{
  paletteCopy = palette;
  overlayOpacity = [paletteCopy overlayOpacity];
  [overlayOpacity floatValue];
  v7 = v6;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    is3ComponentsGradient = [paletteCopy is3ComponentsGradient];
    conicActiveQuad = self->_conicActiveQuad;
    fromColor = [paletteCopy fromColor];
    toColor = [paletteCopy toColor];
    if (is3ComponentsGradient)
    {
      midColor = [paletteCopy midColor];
      [(NTKSpectrumConicQuad *)conicActiveQuad setFromColor:fromColor toColor:toColor midColor:midColor interpolation:1];
    }

    else
    {
      [(NTKSpectrumConicQuad *)conicActiveQuad setFromColor:fromColor toColor:toColor];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = paletteCopy;
      fromPalette = [v14 fromPalette];
      toPalette = [v14 toPalette];
      if (([fromPalette is3ComponentsGradient] & 1) != 0 || objc_msgSend(toPalette, "is3ComponentsGradient"))
      {
        fromColor2 = [fromPalette fromColor];
        midColor2 = [fromPalette midColor];
        toColor2 = [fromPalette toColor];
        fromColor3 = [toPalette fromColor];
        midColor3 = [toPalette midColor];
        [toPalette toColor];
        v39 = toColor2;
        v43 = v40 = fromColor2;
        if (!midColor2 || (v22 = NTKFaceColorPaletteNotFoundColor, midColor2 == NTKFaceColorPaletteNotFoundColor))
        {
          CLKUIConvertToRGBfFromUIColor();
          v38 = v23;
          CLKUIConvertToRGBfFromUIColor();
          v24 = CLKUIConvertToUIColorFromRGBf();

          v22 = NTKFaceColorPaletteNotFoundColor;
          midColor2 = v24;
        }

        v41 = toPalette;
        v42 = fromPalette;
        if (!midColor3 || midColor3 == v22)
        {
          CLKUIConvertToRGBfFromUIColor();
          v38 = v25;
          CLKUIConvertToRGBfFromUIColor();
          v26 = CLKUIConvertToUIColorFromRGBf();

          midColor3 = v26;
        }

        [v14 transitionFraction];
        v27 = NTKInterpolateBetweenColors();
        v28 = self->_conicActiveQuad;
        fromColor4 = [v14 fromColor];
        toColor3 = [v14 toColor];
        [(NTKSpectrumConicQuad *)v28 setFromColor:fromColor4 toColor:toColor3 midColor:v27 interpolation:1];

        toPalette = v41;
        fromPalette = v42;
        fromColor5 = v40;
      }

      else
      {
        v32 = self->_conicActiveQuad;
        fromColor5 = [v14 fromColor];
        midColor2 = [v14 toColor];
        [(NTKSpectrumConicQuad *)v32 setFromColor:fromColor5 toColor:midColor2];
      }
    }
  }

  LODWORD(v13) = v7;
  [(NTKSpectrumConicQuad *)self->_conicActiveQuad setOverlayOpacity:v13];
  complicationColor = [paletteCopy complicationColor];
  [(NTKSpectrumAnalogFaceView *)self setComplicationColor:complicationColor];

  v44 = 0.0;
  v45 = 0.0;
  [(NTKSpectrumAnalogFaceView *)self _getMinuteHandAngle:&v45 andHourAngle:&v44];
  v34 = [NSNumber numberWithDouble:v45];
  v35 = [paletteCopy minuteHandInlayAtAngle:v34];
  v36 = [NSNumber numberWithDouble:v44];
  v37 = [paletteCopy hourHandInlayAtAngle:v36];
  [(NTKSpectrumAnalogFaceView *)self _setInlayColorForMinuteHand:v35 hourHandColor:v37];

  [(NTKSpectrumAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&stru_10568];
}

- (void)_applyColorTransitionWithInterpolatedPalette:(id)palette
{
  paletteCopy = palette;
  [(NTKSpectrumAnalogFaceView *)self updateColorWithPalette:paletteCopy];
  [paletteCopy transitionFraction];
  v6 = v5;

  v7 = fabs(v6 + -0.5);
  v8 = 0.0;
  if (v7 <= 0.5)
  {
    v8 = -((v7 + v7) * (v7 + v7)) * ((v7 + v7) * -2.0 + 3.0) + 1.0;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_48F0;
  v9[3] = &unk_10588;
  *&v9[4] = (1.0 - v8) * 0.075 + 0.925;
  [(NTKSpectrumAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v9];
}

- (void)_configureUIOnColorChange
{
  palette = [(NTKSpectrumAnalogFaceView *)self palette];
  [(NTKSpectrumAnalogFaceView *)self updateColorWithPalette:palette];
}

- (double)_handAlphaForEditMode:(int64_t)mode
{
  if (mode)
  {
    v3 = mode == 10;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3 || mode == 12;
  result = 0.1;
  if (v4)
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

- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot
{
  complicationCopy = complication;
  toComplicationCopy = toComplication;
  v17.receiver = self;
  v17.super_class = NTKSpectrumAnalogFaceView;
  slotCopy = slot;
  [(NTKSpectrumAnalogFaceView *)&v17 _applyTransitionFraction:complicationCopy fromComplication:toComplicationCopy toComplication:slotCopy slot:fraction];
  v13 = NTKComplicationSlotBezel;

  if (v13 == slotCopy)
  {
    if (![complicationCopy complicationType] || (v15 = objc_msgSend(toComplicationCopy, "complicationType"), fractionCopy = 1.0, !v15))
    {
      if ([complicationCopy complicationType] || objc_msgSend(toComplicationCopy, "complicationType"))
      {
        complicationType = [toComplicationCopy complicationType];
        fractionCopy = 1.0 - fraction;
        if (complicationType)
        {
          fractionCopy = fraction;
        }
      }

      else
      {
        fractionCopy = 0.0;
      }
    }

    [(NTKSpectrumAnalogFaceView *)self applyTransitionToCircularDialWithBezelFraction:fractionCopy];
  }
}

- (BOOL)_needsBezelVisible
{
  result = [(NTKSpectrumAnalogFaceView *)self _hasBezelComplication];
  if (self->_shape)
  {
    return 0;
  }

  return result;
}

- (BOOL)_hasBezelComplication
{
  delegate = [(NTKSpectrumAnalogFaceView *)self delegate];
  v3 = [delegate faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBezel];

  return v3 ^ 1;
}

- (void)quadViewWillDisplay:(id)display forTime:(double)time
{
  v5 = [(NTKSpectrumAnalogFaceView *)self palette:display];
  if (CACurrentMediaTime() < self->_endOverrideTime || ([(NTKSpectrumAnalogFaceView *)self editing]& 1) == 0)
  {
    if ([v5 isRainbowColor])
    {
      v10 = 0.0;
      v11 = 0.0;
      [(NTKSpectrumAnalogFaceView *)self _getMinuteHandAngle:&v11 andHourAngle:&v10];
      v6 = [NSNumber numberWithDouble:v11];
      v7 = [v5 minuteHandInlayAtAngle:v6];
      v8 = [NSNumber numberWithDouble:v10];
      v9 = [v5 hourHandInlayAtAngle:v8];
      [(NTKSpectrumAnalogFaceView *)self _setInlayColorForMinuteHand:v7 hourHandColor:v9];
    }
  }
}

- (void)_updateDialTicksForBezelText
{
  [(NTKSpectrumAnalogFaceView *)self bezelComplicationTextWidthInRadius];
  dialView = self->_dialView;

  [(NTKSpectrumAnalogDialView *)dialView transitTicksWithInitialBezelTextWidthInRadius:v3 finalBezelTextWidthInRadius:v3 fraction:1.0];
}

- (double)bezelComplicationTextWidthInRadius
{
  utilityBezelComplicationView = [(NTKSpectrumAnalogFaceView *)self utilityBezelComplicationView];
  [utilityBezelComplicationView textWidthInRadians];
  v4 = v3;

  return v4;
}

- (id)utilityBezelComplicationView
{
  v2 = [(NTKSpectrumAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBezel];
  display = [v2 display];
  if ([display conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityFlatComplicationView])
  {
    v4 = display;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateMasking
{
  v3 = *(self + 80);
  [(NTKSpectrumConicQuad *)self->_conicActiveQuad setMasking:v3 & 1];
  [(NTKSpectrumConicQuad *)self->_conicInactiveQuad setMasking:v3 & 1];
  conicQuadView = self->_conicQuadView;

  [(CLKUIQuadView *)conicQuadView setOpaque:(v3 & 1) == 0];
}

- (void)_setMasking:(BOOL)masking
{
  v3 = *(self + 80);
  if ((v3 & 1) != masking)
  {
    *(self + 80) = v3 & 0xFE | masking;
    [(NTKSpectrumAnalogFaceView *)self _updateMasking];
  }
}

- (double)_circularMaskRadiusForShapeTransitionWithFraction:(double)fraction withBounds:(CGRect)bounds showsDial:(BOOL)dial
{
  width = bounds.size.width;
  device = [(NTKSpectrumAnalogFaceView *)self device];
  [device screenBounds];
  v8 = width / v7;
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9 * v8 * 0.5;

  return v10;
}

- (void)_setupCircularMaskForShapeTransitionWithFraction:(double)fraction
{
  if (fraction <= 0.0)
  {

    [(NTKSpectrumAnalogFaceView *)self _setMasking:0];
  }

  else
  {
    fractionCopy = fraction;
    _hasBezelComplication = [(NTKSpectrumAnalogFaceView *)self _hasBezelComplication];
    [(NTKSpectrumAnalogFaceView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    device = [(NTKSpectrumAnalogFaceView *)self device];
    [device screenScale];
    v16 = v15;

    [(NTKSpectrumAnalogFaceView *)self _circularMaskRadiusForShapeTransitionWithFraction:_hasBezelComplication withBounds:fractionCopy showsDial:v7, v9, v11, v13];
    *&fractionCopy = v16 * v17;
    [(NTKSpectrumAnalogFaceView *)self _setMasking:1];
    LODWORD(v18) = LODWORD(fractionCopy);
    [(NTKSpectrumConicQuad *)self->_conicActiveQuad setMaskRadius:v18];
    conicInactiveQuad = self->_conicInactiveQuad;
    LODWORD(v20) = LODWORD(fractionCopy);

    [(NTKSpectrumConicQuad *)conicInactiveQuad setMaskRadius:v20];
  }
}

- (double)_circularMaskRadiusForDialVisibilityWithFraction:(double)fraction
{
  device = [(NTKSpectrumAnalogFaceView *)self device];
  sub_5C4C(device, device);
  CLKInterpolateBetweenFloatsClipped();
  v5 = v4 * 0.5;

  return v5;
}

- (void)_setupCircularMaskForDialVisibilityWithFraction:(double)fraction
{
  device = [(NTKSpectrumAnalogFaceView *)self device];
  [device screenScale];
  v7 = v6;

  [(NTKSpectrumAnalogFaceView *)self _circularMaskRadiusForDialVisibilityWithFraction:fraction];
  *&fraction = v7 * v8;
  [(NTKSpectrumAnalogFaceView *)self _setMasking:1];
  LODWORD(v9) = LODWORD(fraction);
  [(NTKSpectrumConicQuad *)self->_conicActiveQuad setMaskRadius:v9];
  conicInactiveQuad = self->_conicInactiveQuad;
  LODWORD(v11) = LODWORD(fraction);

  [(NTKSpectrumConicQuad *)conicInactiveQuad setMaskRadius:v11];
}

- (void)_reorderSwitcherSnapshotView
{
  switcherSnapshotView = [(NTKSpectrumAnalogFaceView *)self switcherSnapshotView];

  if (switcherSnapshotView)
  {
    switcherSnapshotView2 = [(NTKSpectrumAnalogFaceView *)self switcherSnapshotView];
    [(NTKSpectrumAnalogFaceView *)self bringSubviewToFront:switcherSnapshotView2];
  }
}

- (void)_setupDialView
{
  if (!self->_dialView)
  {
    contentView = [(NTKSpectrumAnalogFaceView *)self contentView];
    device = [(NTKSpectrumAnalogFaceView *)self device];
    sub_5C4C(device, device);

    [contentView bounds];
    device2 = [(NTKSpectrumAnalogFaceView *)self device];
    CLKSizeCenteredInRectForDevice();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [NTKSpectrumAnalogDialView alloc];
    device3 = [(NTKSpectrumAnalogFaceView *)self device];
    v15 = [(NTKSpectrumAnalogDialView *)v13 initWithFrame:device3 forDevice:v6, v8, v10, v12];
    dialView = self->_dialView;
    self->_dialView = v15;

    [contentView addSubview:self->_dialView];
    [contentView sendSubviewToBack:self->_dialView];
    v17 = self->_dialView;
    v18 = +[UIColor clearColor];
    [(NTKSpectrumAnalogDialView *)v17 setBackgroundColor:v18];
  }
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_11108;
  if (options != 12)
  {
    v4 = 0;
  }

  if (options == 15)
  {
    return &off_110F0;
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
  if (!qword_16658)
  {
    v10 = objc_opt_new();
    v11 = qword_16658;
    qword_16658 = v10;
  }

  if (mode == 15 || mode == 12)
  {
    v12 = [optionsCopy objectForKeyedSubscript:&off_10BB8];
    pigmentEditOption = [v12 pigmentEditOption];

    if (mode == 12)
    {
      v14 = [optionsCopy objectForKeyedSubscript:&off_10BE8];
      v15 = optionCopy;
    }

    else
    {
      v14 = optionCopy;
      v15 = [optionsCopy objectForKeyedSubscript:&off_10BD0];
    }

    v17 = v15;
    identifier = [pigmentEditOption identifier];
    v19 = [NSString stringWithFormat:@"shape-%@-%@-%@", identifier, v14, v17];

    v16 = [qword_16658 objectForKey:v19];
    dialShape = [v17 dialShape];
    if (!v16)
    {
      v21 = dialShape;
      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v17 swatchStyle]);
      v23 = v22;
      v25 = v24;
      palette = [(NTKSpectrumAnalogFaceView *)self palette];
      v27 = [palette copy];

      [v27 setPigmentEditOption:pigmentEditOption];
      style = [v14 style];
      [(NTKSpectrumAnalogFaceView *)self _swatchMaskRadiusForShape:v21 withBounds:CGPointZero.x, CGPointZero.y, v23, v25];
      v16 = [(NTKSpectrumAnalogFaceView *)self _snapshotWithColorPalette:v27 style:style shape:v21 size:v23 maskRadius:v25, v29];
      [qword_16658 setObject:v16 forKey:v19];
    }
  }

  else
  {
    v31.receiver = self;
    v31.super_class = NTKSpectrumAnalogFaceView;
    v16 = [(NTKSpectrumAnalogFaceView *)&v31 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v16;
}

- (double)_swatchMaskRadiusForShape:(unint64_t)shape withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = 0.0;
  if (!shape)
  {
    v8 = 1.0;
  }

  [(NTKSpectrumAnalogFaceView *)self _circularMaskRadiusForShapeTransitionWithFraction:0 withBounds:v8 showsDial:x, y, width, height];
  return result;
}

- (id)_snapshotWithColorPalette:(id)palette style:(unint64_t)style shape:(unint64_t)shape size:(CGSize)size maskRadius:(double)radius
{
  height = size.height;
  width = size.width;
  paletteCopy = palette;
  y = CGPointZero.y;
  height = [CLKUIQuadView quadViewWithFrame:@"Spec" identifier:CGPointZero.x, y, width, height];
  v15 = +[UIScreen mainScreen];
  [v15 scale];
  v17 = v16;

  v18 = [[NTKSpectrumConicQuad alloc] initWithRole:0 screenScale:v17];
  fromColor = [paletteCopy fromColor];
  toColor = [paletteCopy toColor];
  [v18 setStyle:style];
  if ([paletteCopy is3ComponentsGradient])
  {
    fromColor2 = [paletteCopy fromColor];
    toColor2 = [paletteCopy toColor];
    midColor = [paletteCopy midColor];
    [v18 setFromColor:fromColor2 toColor:toColor2 midColor:midColor interpolation:1];
  }

  else
  {
    [v18 setFromColor:fromColor toColor:toColor];
  }

  overlayOpacity = [paletteCopy overlayOpacity];
  [overlayOpacity floatValue];
  [v18 setOverlayOpacity:?];

  if (!shape)
  {
    [v18 setMasking:1];
    v25 = v17 * radius;
    *&v25 = v17 * radius;
    [v18 setMaskRadius:v25];
    [height setOpaque:0];
  }

  [height addQuad:v18];
  v26 = [height snapshotInRect:CGPointZero.x scale:y time:{width, height, v17, 0.0}];

  return v26;
}

- (void)_loadCommonViews
{
  timeView = [(NTKSpectrumAnalogFaceView *)self timeView];
  secondHandView = [timeView secondHandView];
  [secondHandView setHidden:1];

  [(NTKSpectrumAnalogFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [CLKUIQuadView quadViewWithFrame:@"Spec" identifier:?];
  conicQuadView = self->_conicQuadView;
  self->_conicQuadView = v12;

  contentView = [(NTKSpectrumAnalogFaceView *)self contentView];
  v15 = [NTKRoundedCornerOverlayView alloc];
  device = [(NTKSpectrumAnalogFaceView *)self device];
  v17 = [v15 initWithFrame:device forDeviceCornerRadius:{v5, v7, v9, v11}];
  cornerView = self->_cornerView;
  self->_cornerView = v17;

  [contentView addSubview:self->_cornerView];
  [contentView addSubview:self->_conicQuadView];
  [contentView bringSubviewToFront:self->_conicQuadView];
  [contentView bringSubviewToFront:self->_cornerView];
  [contentView setUserInteractionEnabled:0];
  layer = [contentView layer];
  [layer setAllowsHitTesting:0];

  [(NTKSpectrumAnalogFaceView *)self _setupDialView];
  [(NTKSpectrumAnalogFaceView *)self _configureUIOnColorChange];
  [(NTKSpectrumAnalogFaceView *)self _updateDialTicksForBezelText];
  rootContainerView = [(NTKSpectrumAnalogFaceView *)self rootContainerView];
  [rootContainerView bringSubviewToFront:contentView];
  complicationContainerView = [(NTKSpectrumAnalogFaceView *)self complicationContainerView];
  [rootContainerView sendSubviewToBack:complicationContainerView];
}

- (void)_unloadCommonViews
{
  [(NTKSpectrumAnalogDialView *)self->_dialView removeFromSuperview];
  dialView = self->_dialView;
  self->_dialView = 0;

  [(CLKUIQuadView *)self->_conicQuadView removeFromSuperview];
  conicQuadView = self->_conicQuadView;
  self->_conicQuadView = 0;

  [(UIView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;
}

- (void)_loadActiveViews
{
  v3 = [NTKSpectrumConicQuad alloc];
  device = [(NTKSpectrumAnalogFaceView *)self device];
  [device screenScale];
  v5 = [v3 initWithRole:0 screenScale:?];
  conicActiveQuad = self->_conicActiveQuad;
  self->_conicActiveQuad = v5;

  [(NTKSpectrumConicQuad *)self->_conicActiveQuad setOpaque:0];
  [(CLKUIQuadView *)self->_conicQuadView addQuad:self->_conicActiveQuad];
  conicQuadView = self->_conicQuadView;

  [(CLKUIQuadView *)conicQuadView setDelegate:self];
}

- (void)_unloadActiveViews
{
  [(CLKUIQuadView *)self->_conicQuadView setDelegate:0];
  [(CLKUIQuadView *)self->_conicQuadView removeQuad:self->_conicActiveQuad];
  conicActiveQuad = self->_conicActiveQuad;
  self->_conicActiveQuad = 0;
}

@end