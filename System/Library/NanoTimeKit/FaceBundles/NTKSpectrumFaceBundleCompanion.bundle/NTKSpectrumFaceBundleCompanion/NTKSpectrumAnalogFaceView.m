@interface NTKSpectrumAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_hasBezelComplication;
- (BOOL)_needsBezelVisible;
- (NTKSpectrumAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_circularMaskRadiusForDialVisibilityWithFraction:(double)a3;
- (double)_circularMaskRadiusForShapeTransitionWithFraction:(double)a3 withBounds:(CGRect)a4 showsDial:(BOOL)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_dialAlphaForEditMode:(int64_t)a3;
- (double)_handAlphaForEditMode:(int64_t)a3;
- (double)_swatchMaskRadiusForShape:(unint64_t)a3 withBounds:(CGRect)a4;
- (double)_verticalPaddingForStatusBar;
- (double)bezelComplicationTextWidthInRadius;
- (id)_additonalViewsToApplyDesaturationDuringComplicationEditing;
- (id)_keylineViewForComplicationSlot:(id)a3;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_snapshotWithColorPalette:(id)a3 style:(unint64_t)a4 shape:(unint64_t)a5 size:(CGSize)a6 maskRadius:(double)a7;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (id)utilityBezelComplicationView;
- (int64_t)_complicationPickerStyleForSlot:(id)a3;
- (int64_t)_keylineStyleForComplicationSlot:(id)a3;
- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4;
- (unint64_t)_layoutStyleForSlot:(id)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyColorTransitionWithInterpolatedPalette:(id)a3;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_applyTransitionFraction:(double)a3 fromShape:(unint64_t)a4 toShape:(unint64_t)a5;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureTimeView:(id)a3;
- (void)_configureUIOnColorChange;
- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8;
- (void)_getMinuteHandAngle:(double *)a3 andHourAngle:(double *)a4;
- (void)_loadActiveViews;
- (void)_loadCommonViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_reorderSwitcherSnapshotView;
- (void)_setInlayColorForMinuteHand:(id)a3 hourHandColor:(id)a4;
- (void)_setMasking:(BOOL)a3;
- (void)_setShape:(unint64_t)a3;
- (void)_setStyle:(unint64_t)a3;
- (void)_setupCircularMaskForDialVisibilityWithFraction:(double)a3;
- (void)_setupCircularMaskForShapeTransitionWithFraction:(double)a3;
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
- (void)quadViewWillDisplay:(id)a3 forTime:(double)a4;
- (void)setDataMode:(int64_t)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)updateColorWithPalette:(id)a3;
@end

@implementation NTKSpectrumAnalogFaceView

- (NTKSpectrumAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v18.receiver = self;
  v18.super_class = NTKSpectrumAnalogFaceView;
  v9 = [(NTKSpectrumAnalogFaceView *)&v18 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initForDevice:v8];
    faceViewComplicationFactory = v9->_faceViewComplicationFactory;
    v9->_faceViewComplicationFactory = v10;

    [(NTKWhistlerAnalogFaceViewComplicationFactory *)v9->_faceViewComplicationFactory setUsesNarrowTopSlots:1];
    v12 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
    utilityComplicationFactory = v9->_utilityComplicationFactory;
    v9->_utilityComplicationFactory = v12;

    v14 = [(NTKUtilityComplicationFactory *)v9->_utilityComplicationFactory setFaceView:v9];
    v15 = v9->_utilityComplicationFactory;
    sub_5C4C(v14, v8);
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

- (void)setDataMode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v4 setDataMode:a3];
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
    v4 = [(NTKSpectrumAnalogFaceView *)self dataMode];
    v5 = [(NTKSpectrumAnalogFaceView *)self isFrozen];
    v7 = v4 != 3 && (v4 & 0xFFFFFFFFFFFFFFFBLL) != 1;
    v3 = (v5 & 1) != 0 || v7;
  }

  conicQuadView = self->_conicQuadView;

  [(CLKUIQuadView *)conicQuadView setPaused:v3];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v11 setOverrideDate:v6 duration:a4];
  objc_initWeak(&location, self);
  conicActiveQuad = self->_conicActiveQuad;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2CA0;
  v8[3] = &unk_10528;
  objc_copyWeak(&v9, &location);
  [(NTKSpectrumConicQuad *)conicActiveQuad setOverrideDate:v6 duration:v8 completion:a4];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_configureTimeView:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v4 _configureTimeView:a3];
  [(NTKSpectrumAnalogFaceView *)self _configureUIOnColorChange];
}

- (void)_loadLayoutRules
{
  v3 = [(NTKSpectrumAnalogFaceView *)self device];
  sub_5C4C(v3, v3);
  v5 = v4;

  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory loadLayoutRulesForFaceView:self dialDiameter:v5];
  v7 = [(NTKSpectrumAnalogFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBezel];
  utilityComplicationFactory = self->_utilityComplicationFactory;
  [(NTKSpectrumAnalogFaceView *)self bounds];
  [NTKUtilityComplicationFactory configureComplicationLayout:"configureComplicationLayout:forSlot:bounds:dialDiameter:" forSlot:v7 bounds:11 dialDiameter:?];
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  if (a4 == 3)
  {
    return [NTKUtilityComplicationFactory newViewForComplication:"newViewForComplication:family:forSlot:" family:a3 forSlot:?];
  }

  else
  {
    return [NTKWhistlerAnalogFaceViewComplicationFactory newLegacyViewForComplication:"newLegacyViewForComplication:family:slot:faceView:" family:a3 slot:? faceView:?];
  }
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:NTKComplicationSlotBezel] && objc_msgSend(v6, "conformsToProtocol:", &OBJC_PROTOCOL___NTKUtilityFlatComplicationView))
  {
    v12.receiver = self;
    v12.super_class = NTKSpectrumAnalogFaceView;
    [(NTKSpectrumAnalogFaceView *)&v12 _configureComplicationView:v6 forSlot:v7];
    v8 = v6;
    [v8 setDelegate:self];
    [v8 updateMonochromeColor];
    utilityComplicationFactory = self->_utilityComplicationFactory;
    v10 = [(NTKSpectrumAnalogFaceView *)self device];
    sub_5C4C(v10, v10);
    [(NTKUtilityComplicationFactory *)utilityComplicationFactory configureComplicationView:v8 forSlot:v7 dialDiameter:v11];
  }

  else
  {
    [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:v6 forSlot:v7 faceView:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 updateMonochromeColor];
  }
}

- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4
{
  v6 = a4;
  if ([v6 isEqualToString:NTKComplicationSlotBezel])
  {
    v7 = [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory layoutOverrideForComplicationType:a3 inSlot:11];
  }

  else
  {
    v7 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory legacyLayoutOverrideforComplicationType:a3 slot:v6 faceView:self];
  }

  v8 = v7;

  return v8;
}

- (double)_verticalPaddingForStatusBar
{
  v2 = [(NTKSpectrumAnalogFaceView *)self device];
  v3 = sub_5C4C(v2, v2);

  return v3;
}

- (id)_keylineViewForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotBezel])
  {
    utilityComplicationFactory = self->_utilityComplicationFactory;
    v6 = [(NTKSpectrumAnalogFaceView *)self device];
    sub_5C4C(v6, v6);
    v8 = [(NTKUtilityComplicationFactory *)utilityComplicationFactory keylineViewForSlot:11 dialDiameter:v7];
  }

  else
  {
    v8 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory keylineViewForComplicationSlot:v4];
  }

  return v8;
}

- (int64_t)_keylineStyleForComplicationSlot:(id)a3
{
  v4 = NTKComplicationSlotBezel;
  v5 = a3;
  if ([v5 isEqualToString:v4])
  {
    v9.receiver = self;
    v9.super_class = NTKSpectrumAnalogFaceView;
    v6 = [(NTKSpectrumAnalogFaceView *)&v9 _keylineStyleForComplicationSlot:v5];
  }

  else
  {
    v6 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory keylineStyleForComplicationSlot:v5];
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
  v3 = [(NTKSpectrumAnalogFaceView *)self _needsBezelVisible];
  [(NTKSpectrumAnalogDialView *)self->_dialView setHidden:v3 ^ 1];
  v4 = 0.0;
  if (v3)
  {
    v4 = 1.0;
  }

  [(NTKSpectrumAnalogDialView *)self->_dialView setAlpha:v4];

  [(NTKSpectrumAnalogFaceView *)self _updateFramerate];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v10 = a3;
  v8 = a5;
  switch(a4)
  {
    case 15:
      -[NTKSpectrumAnalogFaceView _setStyle:](self, "_setStyle:", [v10 style]);
      break;
    case 12:
      -[NTKSpectrumAnalogFaceView _setShape:](self, "_setShape:", [v10 dialShape]);
      break;
    case 10:
      tritiumDimming = self->_tritiumDimming;
      self->_tritiumDimming = 0;

      [(NTKSpectrumAnalogFaceView *)self _updateColors];
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
    case 15:
      -[NTKSpectrumAnalogFaceView _applyTransitionFraction:fromStyle:toStyle:](self, "_applyTransitionFraction:fromStyle:toStyle:", [v15 style], objc_msgSend(v12, "style"), a3);
      break;
    case 12:
      -[NTKSpectrumAnalogFaceView _applyTransitionFraction:fromShape:toShape:](self, "_applyTransitionFraction:fromShape:toShape:", [v15 dialShape], objc_msgSend(v12, "dialShape"), a3);
      break;
    case 10:
      v14 = [(NTKSpectrumAnalogFaceView *)self interpolatedColorPalette];
      [(NTKSpectrumAnalogFaceView *)self _applyColorTransitionWithInterpolatedPalette:v14];

      break;
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v8 = [(NTKSpectrumAnalogFaceView *)self timeView];
  [(NTKSpectrumAnalogFaceView *)self _handAlphaForEditMode:a4];
  [(NTKSpectrumAnalogFaceView *)self _handAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v8 setAlpha:?];

  conicQuadView = self->_conicQuadView;
  [(NTKSpectrumAnalogFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKSpectrumAnalogFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(CLKUIQuadView *)conicQuadView setAlpha:?];
  v10 = [(NTKSpectrumAnalogFaceView *)self complicationContainerView];
  [(NTKSpectrumAnalogFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKSpectrumAnalogFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v10 setAlpha:?];

  dialView = self->_dialView;
  [(NTKSpectrumAnalogFaceView *)self _dialAlphaForEditMode:a4];
  [(NTKSpectrumAnalogFaceView *)self _dialAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();

  [(NTKSpectrumAnalogDialView *)dialView setAlpha:?];
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4
{
  v5.receiver = self;
  v5.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v5 _cleanupAfterTransitionComplicationSlot:a3 selectedComplication:a4];
  [(NTKSpectrumAnalogFaceView *)self _updateDialTicksForBezelText];
}

- (double)_dialAlphaForEditMode:(int64_t)a3
{
  v3 = 0.0;
  if (a3 != 1 && [(NTKSpectrumAnalogFaceView *)self _needsBezelVisible])
  {
    if (a3 == 12 || a3 == 15)
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

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  result = 0.0;
  if (!self->_shape)
  {
    v4 = a3 == 12 || a3 == 15;
    result = NTKEditModeDimmedAlpha;
    if (!v4)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v19.receiver = self;
  v19.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v19 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 <= 0xF && ((1 << a4) & 0x9400) != 0)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeScale(&v18, v7, v7);
    v8 = [(NTKSpectrumAnalogFaceView *)self contentView];
    v17 = v18;
    [v8 setTransform:&v17];

    v9 = [(NTKSpectrumAnalogFaceView *)self timeView];
    v17 = v18;
    [v9 setTransform:&v17];

    v10 = [(NTKSpectrumAnalogFaceView *)self dialComplicationContainerView];
    v17 = v18;
    [v10 setTransform:&v17];

    NTKAlphaForRubberBandingFraction();
    v12 = v11;
    [(NTKSpectrumAnalogFaceView *)self _contentAlphaForEditMode:a4];
    v14 = v12 * v13;
    v15 = [(NTKSpectrumAnalogFaceView *)self contentView];
    [v15 setAlpha:v14];

    v16 = [(NTKSpectrumAnalogFaceView *)self dialComplicationContainerView];
    [v16 setAlpha:v14];
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v14.receiver = self;
  v14.super_class = NTKSpectrumAnalogFaceView;
  [(NTKSpectrumAnalogFaceView *)&v14 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 <= 0xF && ((1 << a4) & 0x9400) != 0)
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
    v10 = [(NTKSpectrumAnalogFaceView *)self timeView];
    v12 = v13;
    [v10 setTransform:&v12];

    v11 = [(NTKSpectrumAnalogFaceView *)self dialComplicationContainerView];
    v12 = v13;
    [v11 setTransform:&v12];
  }
}

- (unint64_t)_layoutStyleForSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotBezel])
  {
    v5 = &dword_0 + 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKSpectrumAnalogFaceView;
    v5 = [(NTKSpectrumAnalogFaceView *)&v7 _layoutStyleForSlot:v4];
  }

  return v5;
}

- (int64_t)_complicationPickerStyleForSlot:(id)a3
{
  v4 = NTKComplicationSlotBezel;
  v5 = a3;
  if ([v5 isEqualToString:v4])
  {
    v9.receiver = self;
    v9.super_class = NTKSpectrumAnalogFaceView;
    v6 = [(NTKSpectrumAnalogFaceView *)&v9 _complicationPickerStyleForSlot:v5];
  }

  else
  {
    v6 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory complicationPickerStyleForSlot:v5];
  }

  v7 = v6;

  return v7;
}

- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8
{
  v24 = a8;
  if ([v24 isEqualToString:NTKComplicationSlotBezel] && -[NTKSpectrumAnalogFaceView _layoutStyleForSlot:](self, "_layoutStyleForSlot:", v24) == &dword_0 + 1)
  {
    if (a3)
    {
      v13 = [(NTKSpectrumAnalogFaceView *)self device];
      sub_5C4C(v13, v13);
      v15 = v14;

      [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory bezelComplicationRadiusWithDialDiameter:v15];
      *a3 = v16 + v16;
    }

    if (a5)
    {
      [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory bezelComplicationMaxAngularWidth];
      *a5 = v17;
    }

    if (a6)
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
      a6->x = MidX;
      a6->y = MidY;
    }

    if (a7)
    {
      *a7 = 0;
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
  v3 = [(NTKSpectrumAnalogFaceView *)self palette];
  v4 = [v3 fromColor];
  v5 = [v3 toColor];
  v6 = [v3 complicationColor];
  [(NTKSpectrumAnalogFaceView *)self setComplicationColor:v6];
  v16 = 0.0;
  v17 = 0.0;
  [(NTKSpectrumAnalogFaceView *)self _getMinuteHandAngle:&v17 andHourAngle:&v16];
  v7 = [NSNumber numberWithDouble:v17];
  v8 = [v3 minuteHandInlayAtAngle:v7];

  v9 = [NSNumber numberWithDouble:v16];
  v10 = [v3 hourHandInlayAtAngle:v9];

  [(NTKSpectrumAnalogFaceView *)self _setInlayColorForMinuteHand:v8 hourHandColor:v10];
  v11 = [v3 is3ComponentsGradient];
  conicActiveQuad = self->_conicActiveQuad;
  if (v11)
  {
    v13 = [v3 midColor];
    [(NTKSpectrumConicQuad *)conicActiveQuad setFromColor:v4 toColor:v5 midColor:v13 interpolation:1];
  }

  else
  {
    [(NTKSpectrumConicQuad *)self->_conicActiveQuad setFromColor:v4 toColor:v5];
  }

  v14 = self->_conicActiveQuad;
  v15 = [v3 overlayOpacity];
  [v15 floatValue];
  [(NTKSpectrumConicQuad *)v14 setOverlayOpacity:?];
}

- (void)_updateColors
{
  [(NTKSpectrumAnalogFaceView *)self _configureUIOnColorChange];

  [(NTKSpectrumAnalogFaceView *)self _updateColor];
}

- (void)_setInlayColorForMinuteHand:(id)a3 hourHandColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(NTKSpectrumAnalogFaceView *)self timeView];
  v8 = [v11 minuteHandView];
  [v8 setInlayColor:v7];

  v9 = [v11 minuteHandView];
  [v9 setHandDotColor:v7];

  v10 = [v11 hourHandView];
  [v10 setInlayColor:v6];
}

- (void)_getMinuteHandAngle:(double *)a3 andHourAngle:(double *)a4
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
    v16 = [(NTKSpectrumConicQuad *)v15 overrideDate];
    if (!v16)
    {
      v16 = +[NTKDate faceDate];
    }

    v17 = [(NTKSpectrumConicQuad *)v15 calendar];
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

  if (a3)
  {
    *a3 = (1.0 - v12);
  }

  if (a4)
  {
    *a4 = (1.0 - v13);
  }
}

- (void)_updateShape
{
  v3 = [(NTKSpectrumAnalogFaceView *)self _needsBezelVisible];
  v4 = [(NTKSpectrumAnalogFaceView *)self delegate];
  [v4 faceViewDidChangeWantsStatusBarIconShadow];

  shape = self->_shape;
  if (([(NTKSpectrumAnalogFaceView *)self editing]& 1) == 0)
  {
    v6 = [(NTKSpectrumAnalogFaceView *)self complicationContainerView];
    v7 = v6;
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

    [v6 setAlpha:v8];

    [(UIView *)self->_cornerView setAlpha:v9];
    if (v3)
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
    if (v3)
    {
      v11 = 1.0;
    }

    [(NTKSpectrumAnalogFaceView *)self _setupCircularMaskForDialVisibilityWithFraction:v11];
  }
}

- (void)_setShape:(unint64_t)a3
{
  if (self->_shape != a3)
  {
    self->_shape = a3;
    [(NTKSpectrumAnalogFaceView *)self _updateShape];
  }
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

  v8 = [(NTKSpectrumAnalogFaceView *)self complicationContainerView];
  v9 = v7 * v7 * NTKEditModeDimmedAlpha;
  [v8 setAlpha:v9];

  [(NTKSpectrumAnalogDialView *)self->_dialView setAlpha:v9];
  [(UIView *)self->_cornerView setAlpha:1.0 - v7];

  [(NTKSpectrumAnalogFaceView *)self _setupCircularMaskForShapeTransitionWithFraction:v7];
}

- (void)_updateStyle
{
  [(NTKSpectrumConicQuad *)self->_conicActiveQuad setStyle:self->_style];
  conicInactiveQuad = self->_conicInactiveQuad;
  style = self->_style;

  [(NTKSpectrumConicQuad *)conicInactiveQuad setStyle:style];
}

- (void)_setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(NTKSpectrumAnalogFaceView *)self _updateStyle];
  }
}

- (void)updateColorWithPalette:(id)a3
{
  v4 = a3;
  v5 = [v4 overlayOpacity];
  [v5 floatValue];
  v7 = v6;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 is3ComponentsGradient];
    conicActiveQuad = self->_conicActiveQuad;
    v10 = [v4 fromColor];
    v11 = [v4 toColor];
    if (v8)
    {
      v12 = [v4 midColor];
      [(NTKSpectrumConicQuad *)conicActiveQuad setFromColor:v10 toColor:v11 midColor:v12 interpolation:1];
    }

    else
    {
      [(NTKSpectrumConicQuad *)conicActiveQuad setFromColor:v10 toColor:v11];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v4;
      v15 = [v14 fromPalette];
      v16 = [v14 toPalette];
      if (([v15 is3ComponentsGradient] & 1) != 0 || objc_msgSend(v16, "is3ComponentsGradient"))
      {
        v17 = [v15 fromColor];
        v18 = [v15 midColor];
        v19 = [v15 toColor];
        v20 = [v16 fromColor];
        v21 = [v16 midColor];
        [v16 toColor];
        v39 = v19;
        v43 = v40 = v17;
        if (!v18 || (v22 = NTKFaceColorPaletteNotFoundColor, v18 == NTKFaceColorPaletteNotFoundColor))
        {
          CLKUIConvertToRGBfFromUIColor();
          v38 = v23;
          CLKUIConvertToRGBfFromUIColor();
          v24 = CLKUIConvertToUIColorFromRGBf();

          v22 = NTKFaceColorPaletteNotFoundColor;
          v18 = v24;
        }

        v41 = v16;
        v42 = v15;
        if (!v21 || v21 == v22)
        {
          CLKUIConvertToRGBfFromUIColor();
          v38 = v25;
          CLKUIConvertToRGBfFromUIColor();
          v26 = CLKUIConvertToUIColorFromRGBf();

          v21 = v26;
        }

        [v14 transitionFraction];
        v27 = NTKInterpolateBetweenColors();
        v28 = self->_conicActiveQuad;
        v29 = [v14 fromColor];
        v30 = [v14 toColor];
        [(NTKSpectrumConicQuad *)v28 setFromColor:v29 toColor:v30 midColor:v27 interpolation:1];

        v16 = v41;
        v15 = v42;
        v31 = v40;
      }

      else
      {
        v32 = self->_conicActiveQuad;
        v31 = [v14 fromColor];
        v18 = [v14 toColor];
        [(NTKSpectrumConicQuad *)v32 setFromColor:v31 toColor:v18];
      }
    }
  }

  LODWORD(v13) = v7;
  [(NTKSpectrumConicQuad *)self->_conicActiveQuad setOverlayOpacity:v13];
  v33 = [v4 complicationColor];
  [(NTKSpectrumAnalogFaceView *)self setComplicationColor:v33];

  v44 = 0.0;
  v45 = 0.0;
  [(NTKSpectrumAnalogFaceView *)self _getMinuteHandAngle:&v45 andHourAngle:&v44];
  v34 = [NSNumber numberWithDouble:v45];
  v35 = [v4 minuteHandInlayAtAngle:v34];
  v36 = [NSNumber numberWithDouble:v44];
  v37 = [v4 hourHandInlayAtAngle:v36];
  [(NTKSpectrumAnalogFaceView *)self _setInlayColorForMinuteHand:v35 hourHandColor:v37];

  [(NTKSpectrumAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&stru_10568];
}

- (void)_applyColorTransitionWithInterpolatedPalette:(id)a3
{
  v4 = a3;
  [(NTKSpectrumAnalogFaceView *)self updateColorWithPalette:v4];
  [v4 transitionFraction];
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
  v3 = [(NTKSpectrumAnalogFaceView *)self palette];
  [(NTKSpectrumAnalogFaceView *)self updateColorWithPalette:v3];
}

- (double)_handAlphaForEditMode:(int64_t)a3
{
  if (a3)
  {
    v3 = a3 == 10;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3 || a3 == 12;
  result = 0.1;
  if (v4)
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

- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6
{
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = NTKSpectrumAnalogFaceView;
  v12 = a6;
  [(NTKSpectrumAnalogFaceView *)&v17 _applyTransitionFraction:v10 fromComplication:v11 toComplication:v12 slot:a3];
  v13 = NTKComplicationSlotBezel;

  if (v13 == v12)
  {
    if (![v10 complicationType] || (v15 = objc_msgSend(v11, "complicationType"), v14 = 1.0, !v15))
    {
      if ([v10 complicationType] || objc_msgSend(v11, "complicationType"))
      {
        v16 = [v11 complicationType];
        v14 = 1.0 - a3;
        if (v16)
        {
          v14 = a3;
        }
      }

      else
      {
        v14 = 0.0;
      }
    }

    [(NTKSpectrumAnalogFaceView *)self applyTransitionToCircularDialWithBezelFraction:v14];
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
  v2 = [(NTKSpectrumAnalogFaceView *)self delegate];
  v3 = [v2 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBezel];

  return v3 ^ 1;
}

- (void)quadViewWillDisplay:(id)a3 forTime:(double)a4
{
  v5 = [(NTKSpectrumAnalogFaceView *)self palette:a3];
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
  v2 = [(NTKSpectrumAnalogFaceView *)self utilityBezelComplicationView];
  [v2 textWidthInRadians];
  v4 = v3;

  return v4;
}

- (id)utilityBezelComplicationView
{
  v2 = [(NTKSpectrumAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBezel];
  v3 = [v2 display];
  if ([v3 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityFlatComplicationView])
  {
    v4 = v3;
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

- (void)_setMasking:(BOOL)a3
{
  v3 = *(self + 80);
  if ((v3 & 1) != a3)
  {
    *(self + 80) = v3 & 0xFE | a3;
    [(NTKSpectrumAnalogFaceView *)self _updateMasking];
  }
}

- (double)_circularMaskRadiusForShapeTransitionWithFraction:(double)a3 withBounds:(CGRect)a4 showsDial:(BOOL)a5
{
  width = a4.size.width;
  v6 = [(NTKSpectrumAnalogFaceView *)self device];
  [v6 screenBounds];
  v8 = width / v7;
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9 * v8 * 0.5;

  return v10;
}

- (void)_setupCircularMaskForShapeTransitionWithFraction:(double)a3
{
  if (a3 <= 0.0)
  {

    [(NTKSpectrumAnalogFaceView *)self _setMasking:0];
  }

  else
  {
    v4 = a3;
    v5 = [(NTKSpectrumAnalogFaceView *)self _hasBezelComplication];
    [(NTKSpectrumAnalogFaceView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(NTKSpectrumAnalogFaceView *)self device];
    [v14 screenScale];
    v16 = v15;

    [(NTKSpectrumAnalogFaceView *)self _circularMaskRadiusForShapeTransitionWithFraction:v5 withBounds:v4 showsDial:v7, v9, v11, v13];
    *&v4 = v16 * v17;
    [(NTKSpectrumAnalogFaceView *)self _setMasking:1];
    LODWORD(v18) = LODWORD(v4);
    [(NTKSpectrumConicQuad *)self->_conicActiveQuad setMaskRadius:v18];
    conicInactiveQuad = self->_conicInactiveQuad;
    LODWORD(v20) = LODWORD(v4);

    [(NTKSpectrumConicQuad *)conicInactiveQuad setMaskRadius:v20];
  }
}

- (double)_circularMaskRadiusForDialVisibilityWithFraction:(double)a3
{
  v3 = [(NTKSpectrumAnalogFaceView *)self device];
  sub_5C4C(v3, v3);
  CLKInterpolateBetweenFloatsClipped();
  v5 = v4 * 0.5;

  return v5;
}

- (void)_setupCircularMaskForDialVisibilityWithFraction:(double)a3
{
  v5 = [(NTKSpectrumAnalogFaceView *)self device];
  [v5 screenScale];
  v7 = v6;

  [(NTKSpectrumAnalogFaceView *)self _circularMaskRadiusForDialVisibilityWithFraction:a3];
  *&a3 = v7 * v8;
  [(NTKSpectrumAnalogFaceView *)self _setMasking:1];
  LODWORD(v9) = LODWORD(a3);
  [(NTKSpectrumConicQuad *)self->_conicActiveQuad setMaskRadius:v9];
  conicInactiveQuad = self->_conicInactiveQuad;
  LODWORD(v11) = LODWORD(a3);

  [(NTKSpectrumConicQuad *)conicInactiveQuad setMaskRadius:v11];
}

- (void)_reorderSwitcherSnapshotView
{
  v3 = [(NTKSpectrumAnalogFaceView *)self switcherSnapshotView];

  if (v3)
  {
    v4 = [(NTKSpectrumAnalogFaceView *)self switcherSnapshotView];
    [(NTKSpectrumAnalogFaceView *)self bringSubviewToFront:v4];
  }
}

- (void)_setupDialView
{
  if (!self->_dialView)
  {
    v19 = [(NTKSpectrumAnalogFaceView *)self contentView];
    v3 = [(NTKSpectrumAnalogFaceView *)self device];
    sub_5C4C(v3, v3);

    [v19 bounds];
    v4 = [(NTKSpectrumAnalogFaceView *)self device];
    CLKSizeCenteredInRectForDevice();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [NTKSpectrumAnalogDialView alloc];
    v14 = [(NTKSpectrumAnalogFaceView *)self device];
    v15 = [(NTKSpectrumAnalogDialView *)v13 initWithFrame:v14 forDevice:v6, v8, v10, v12];
    dialView = self->_dialView;
    self->_dialView = v15;

    [v19 addSubview:self->_dialView];
    [v19 sendSubviewToBack:self->_dialView];
    v17 = self->_dialView;
    v18 = +[UIColor clearColor];
    [(NTKSpectrumAnalogDialView *)v17 setBackgroundColor:v18];
  }
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_11108;
  if (a3 != 12)
  {
    v4 = 0;
  }

  if (a3 == 15)
  {
    return &off_110F0;
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
  if (!qword_16658)
  {
    v10 = objc_opt_new();
    v11 = qword_16658;
    qword_16658 = v10;
  }

  if (a4 == 15 || a4 == 12)
  {
    v12 = [v9 objectForKeyedSubscript:&off_10BB8];
    v13 = [v12 pigmentEditOption];

    if (a4 == 12)
    {
      v14 = [v9 objectForKeyedSubscript:&off_10BE8];
      v15 = v8;
    }

    else
    {
      v14 = v8;
      v15 = [v9 objectForKeyedSubscript:&off_10BD0];
    }

    v17 = v15;
    v18 = [v13 identifier];
    v19 = [NSString stringWithFormat:@"shape-%@-%@-%@", v18, v14, v17];

    v16 = [qword_16658 objectForKey:v19];
    v20 = [v17 dialShape];
    if (!v16)
    {
      v21 = v20;
      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v17 swatchStyle]);
      v23 = v22;
      v25 = v24;
      v26 = [(NTKSpectrumAnalogFaceView *)self palette];
      v27 = [v26 copy];

      [v27 setPigmentEditOption:v13];
      v28 = [v14 style];
      [(NTKSpectrumAnalogFaceView *)self _swatchMaskRadiusForShape:v21 withBounds:CGPointZero.x, CGPointZero.y, v23, v25];
      v16 = [(NTKSpectrumAnalogFaceView *)self _snapshotWithColorPalette:v27 style:v28 shape:v21 size:v23 maskRadius:v25, v29];
      [qword_16658 setObject:v16 forKey:v19];
    }
  }

  else
  {
    v31.receiver = self;
    v31.super_class = NTKSpectrumAnalogFaceView;
    v16 = [(NTKSpectrumAnalogFaceView *)&v31 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v16;
}

- (double)_swatchMaskRadiusForShape:(unint64_t)a3 withBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = 0.0;
  if (!a3)
  {
    v8 = 1.0;
  }

  [(NTKSpectrumAnalogFaceView *)self _circularMaskRadiusForShapeTransitionWithFraction:0 withBounds:v8 showsDial:x, y, width, height];
  return result;
}

- (id)_snapshotWithColorPalette:(id)a3 style:(unint64_t)a4 shape:(unint64_t)a5 size:(CGSize)a6 maskRadius:(double)a7
{
  height = a6.height;
  width = a6.width;
  v12 = a3;
  y = CGPointZero.y;
  v14 = [CLKUIQuadView quadViewWithFrame:@"Spec" identifier:CGPointZero.x, y, width, height];
  v15 = +[UIScreen mainScreen];
  [v15 scale];
  v17 = v16;

  v18 = [[NTKSpectrumConicQuad alloc] initWithRole:0 screenScale:v17];
  v19 = [v12 fromColor];
  v20 = [v12 toColor];
  [v18 setStyle:a4];
  if ([v12 is3ComponentsGradient])
  {
    v21 = [v12 fromColor];
    v22 = [v12 toColor];
    v23 = [v12 midColor];
    [v18 setFromColor:v21 toColor:v22 midColor:v23 interpolation:1];
  }

  else
  {
    [v18 setFromColor:v19 toColor:v20];
  }

  v24 = [v12 overlayOpacity];
  [v24 floatValue];
  [v18 setOverlayOpacity:?];

  if (!a5)
  {
    [v18 setMasking:1];
    v25 = v17 * a7;
    *&v25 = v17 * a7;
    [v18 setMaskRadius:v25];
    [v14 setOpaque:0];
  }

  [v14 addQuad:v18];
  v26 = [v14 snapshotInRect:CGPointZero.x scale:y time:{width, height, v17, 0.0}];

  return v26;
}

- (void)_loadCommonViews
{
  v22 = [(NTKSpectrumAnalogFaceView *)self timeView];
  v3 = [v22 secondHandView];
  [v3 setHidden:1];

  [(NTKSpectrumAnalogFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [CLKUIQuadView quadViewWithFrame:@"Spec" identifier:?];
  conicQuadView = self->_conicQuadView;
  self->_conicQuadView = v12;

  v14 = [(NTKSpectrumAnalogFaceView *)self contentView];
  v15 = [NTKRoundedCornerOverlayView alloc];
  v16 = [(NTKSpectrumAnalogFaceView *)self device];
  v17 = [v15 initWithFrame:v16 forDeviceCornerRadius:{v5, v7, v9, v11}];
  cornerView = self->_cornerView;
  self->_cornerView = v17;

  [v14 addSubview:self->_cornerView];
  [v14 addSubview:self->_conicQuadView];
  [v14 bringSubviewToFront:self->_conicQuadView];
  [v14 bringSubviewToFront:self->_cornerView];
  [v14 setUserInteractionEnabled:0];
  v19 = [v14 layer];
  [v19 setAllowsHitTesting:0];

  [(NTKSpectrumAnalogFaceView *)self _setupDialView];
  [(NTKSpectrumAnalogFaceView *)self _configureUIOnColorChange];
  [(NTKSpectrumAnalogFaceView *)self _updateDialTicksForBezelText];
  v20 = [(NTKSpectrumAnalogFaceView *)self rootContainerView];
  [v20 bringSubviewToFront:v14];
  v21 = [(NTKSpectrumAnalogFaceView *)self complicationContainerView];
  [v20 sendSubviewToBack:v21];
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
  v4 = [(NTKSpectrumAnalogFaceView *)self device];
  [v4 screenScale];
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