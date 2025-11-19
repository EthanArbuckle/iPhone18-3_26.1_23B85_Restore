@interface NTKFoghornFaceView
+ (BOOL)_isSixpackComplicationSlot:(id)a3;
+ (id)_sixpackComplicationNames;
+ (id)_snapshotImageForLayoutStyle:(id)a3 bezelStyle:(id)a4 colorPalette:(id)a5 withSelectedOptions:(id)a6 forDevice:(id)a7;
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
+ (void)_applyComplicationsLayoutForDevice:(id)a3 size:(CGSize)a4 circularScale:(double)a5 circularShift:(double)a6 fromTopBottomMargin:(double)a7 fromInterSixpackSpacing:(double)a8 block:(id)a9;
+ (void)_applyComplicationsLayoutForDevice:(id)a3 size:(CGSize)a4 fromBezelStyle:(int64_t)a5 toBezelStyle:(int64_t)a6 progress:(double)a7 block:(id)a8;
+ (void)_drawComplicationsSnapshotInContext:(CGContext *)a3 bezelStyle:(int64_t)a4 layoutStyle:(unint64_t)a5 forDevice:(id)a6;
- (BOOL)_statusIndicatorNeedsOffsetForBezel;
- (CGAffineTransform)_transformForBreathingFraction:(SEL)a3;
- (CGAffineTransform)_transformForRubberBandingFraction:(SEL)a3;
- (NTKFoghornFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_alphaForComplicationSlot:(id)a3 inEditOption:(id)a4 ofEditMode:(int64_t)a5;
- (double)_horizontalPaddingForStatusBar;
- (double)_keylineCornerRadiusForComplicationSlot:(id)a3;
- (double)_verticalPaddingForStatusBar;
- (id)_complicationSlotsHiddenByCurrentConfiguration;
- (id)_multiPalette;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (int64_t)_currentBezelStyle;
- (int64_t)_keylineStyleForComplicationSlot:(id)a3;
- (unint64_t)_currentLayoutStyle;
- (unint64_t)_currentNightModePolicy;
- (unint64_t)_effectiveNightModeForEditMode:(int64_t)a3;
- (void)_applyComplicationColor:(id)a3 withPalette:(id)a4 slot:(id)a5;
- (void)_applyComplicationFont:(id)a3;
- (void)_applyComplicationLayoutRuleForDevice:(id)a3 frame:(CGRect)a4 transform:(CGAffineTransform *)a5 slot:(id)a6 states:(id)a7;
- (void)_applyComplicationsAlphaForTransitionFraction:(double)a3 fromLayoutStyle:(unint64_t)a4 toLayoutStyle:(unint64_t)a5 editMode:(int64_t)a6;
- (void)_applyComplicationsLayoutCircularScale:(double)a3 circularShift:(double)a4 fromTopBottomMargin:(double)a5 fromInterSixpackSpacing:(double)a6 states:(id)a7;
- (void)_applyComplicationsLayoutForComplicationsEditing;
- (void)_applyComplicationsLayoutFromBezelStyle:(int64_t)a3 toBezelStyle:(int64_t)a4 progress:(double)a5;
- (void)_applyDataMode;
- (void)_applyMultiPaletteFractions;
- (void)_applyNightModeFraction:(double)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyPaletteBezelStyle:(int64_t)a3 updateColorsIfNeeded:(BOOL)a4;
- (void)_applyPaletteFromBezelStyle:(int64_t)a3 toBezelStyle:(int64_t)a4 progress:(double)a5 updateColorsIfNeeded:(BOOL)a6;
- (void)_applyPaletteToComplications:(id)a3;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromNightMode:(unint64_t)a4 toNightMode:(unint64_t)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_checkTransforms;
- (void)_checkTransformsForView:(id)a3;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureShowingStatusIndicator;
- (void)_fixLayoutStyle;
- (void)_fixTransforms;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareComplicationsForSnapshotting;
- (void)_prepareForEditing;
- (void)_prepareForStatusChange:(BOOL)a3;
- (void)_reorderSwitcherSnapshotView;
- (void)_setLive:(int64_t)a3;
- (void)_unloadSnapshotContentViews;
- (void)_updateFromPreferences;
- (void)_updateStatusBarColorForNightModeFraction:(double)a3;
- (void)_updateViewColorsWithMultiPalette;
- (void)_updateViewColorsWithPalette:(id)a3;
- (void)dealloc;
- (void)setDataMode:(int64_t)a3;
- (void)setNightMode:(unint64_t)a3;
@end

@implementation NTKFoghornFaceView

- (NTKFoghornFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v22.receiver = self;
  v22.super_class = NTKFoghornFaceView;
  v9 = [(NTKFoghornFaceView *)&v22 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v12 = v9;
  if (v9)
  {
    objc_msgSend_setComplicationFactory_(v9, v10, 0, v11);
    v13 = objc_alloc(MEMORY[0x277D2C080]);
    v16 = objc_msgSend_initWithDevice_(v13, v14, v8, v15);
    complicationsFilterProvider = v12->_complicationsFilterProvider;
    v12->_complicationsFilterProvider = v16;

    v12->_statusIndicatorPolicy = objc_msgSend_statusIndicatorMove(NTKFoghornPreferences, v18, v19, v20) ^ 1;
  }

  return v12;
}

- (void)dealloc
{
  objc_msgSend__setLive_(self, a2, 0, v2);
  v4.receiver = self;
  v4.super_class = NTKFoghornFaceView;
  [(NTKFoghornFaceView *)&v4 dealloc];
}

- (void)setDataMode:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = NTKFoghornFaceView;
  v5 = [(NTKFoghornFaceView *)&v14 dataMode];
  v9 = v5;
  if (a3 == 1 && v5 == 3)
  {
    objc_msgSend__updateAveragePixelLuminance(self, v6, v7, v8);
  }

  v13.receiver = self;
  v13.super_class = NTKFoghornFaceView;
  [(NTKFoghornFaceView *)&v13 setDataMode:a3];
  if (a3 == 1 && v9 != 1)
  {
    objc_msgSend__refreshBezelFromDataSource(self, v10, v11, v12);
  }
}

- (void)_applyDataMode
{
  v9.receiver = self;
  v9.super_class = NTKFoghornFaceView;
  [(NTKFoghornFaceView *)&v9 _applyDataMode];
  v6 = objc_msgSend_dataMode(self, v3, v4, v5);
  objc_msgSend__setLive_(self, v7, v6, v8);
}

- (void)_loadSnapshotContentViews
{
  v72.receiver = self;
  v72.super_class = NTKFoghornFaceView;
  [(NTKFoghornFaceView *)&v72 _loadSnapshotContentViews];
  v3 = [NTKFoghornFaceBezelView alloc];
  objc_msgSend_bounds(self, v4, v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v18 = objc_msgSend_device(self, v15, v16, v17);
  v21 = objc_msgSend_initWithFrame_forDevice_(v3, v19, v18, v20, v8, v10, v12, v14);
  bezelView = self->_bezelView;
  self->_bezelView = v21;

  v26 = objc_msgSend_contentView(self, v23, v24, v25);
  objc_msgSend_addSubview_(v26, v27, self->_bezelView, v28);

  v29 = [NTKFoghornTimeView alloc];
  objc_msgSend_bounds(self, v30, v31, v32);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v44 = objc_msgSend_device(self, v41, v42, v43);
  v47 = objc_msgSend_initWithFrame_forDevice_(v29, v45, v44, v46, v34, v36, v38, v40);

  objc_msgSend_setTimeView_(self, v48, v47, v49);
  v53 = objc_msgSend_timeView(self, v50, v51, v52);
  objc_msgSend_addSubview_(self, v54, v53, v55);

  v59 = objc_msgSend_rootContainerView(self, v56, v57, v58);
  objc_msgSend_bringSubviewToFront_(self, v60, v59, v61);

  v65 = objc_msgSend_rootContainerView(self, v62, v63, v64);
  v69 = objc_msgSend_complicationContainerView(self, v66, v67, v68);
  objc_msgSend_bringSubviewToFront_(v65, v70, v69, v71);
}

- (void)_unloadSnapshotContentViews
{
  v18.receiver = self;
  v18.super_class = NTKFoghornFaceView;
  [(NTKFoghornFaceView *)&v18 _unloadSnapshotContentViews];
  bezelView = self->_bezelView;
  if (bezelView)
  {
    objc_msgSend_removeFromSuperview(bezelView, v3, v4, v5);
    v7 = self->_bezelView;
    self->_bezelView = 0;
  }

  v8 = objc_msgSend_timeView(self, v3, v4, v5);

  if (v8)
  {
    v12 = objc_msgSend_timeView(self, v9, v10, v11);
    objc_msgSend_removeFromSuperview(v12, v13, v14, v15);

    objc_msgSend_setTimeView_(self, v16, 0, v17);
  }
}

- (void)_prepareForEditing
{
  v6.receiver = self;
  v6.super_class = NTKFoghornFaceView;
  [(NTKFoghornFaceView *)&v6 _prepareForEditing];
  objc_msgSend__updateFromPreferences(self, v3, v4, v5);
}

- (void)_checkTransformsForView:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v7 = v3;
  v8 = 0;
  memset(&v13[1], 0, sizeof(CGAffineTransformComponents));
  if (v3)
  {
    objc_msgSend_transform(v3, v4, v5, v6);
    v8 = 0;
  }

  *&v13[0].horizontalShear = v8;
  v13[0].translation = v8;
  v13[0].scale = v8;
  transform = v13[1];
  CGAffineTransformDecompose(v13, &transform);
  if (v13[0].scale.width != 1.0 || v13[0].scale.height != 1.0)
  {
    v10 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      LODWORD(transform.a) = 138412802;
      *(&transform.a + 4) = v11;
      WORD2(transform.b) = 2048;
      *(&transform.b + 6) = v13[0].scale.width;
      HIWORD(transform.c) = 2048;
      transform.d = v13[0].scale.height;
      v12 = v11;
      _os_log_error_impl(&dword_23BE5B000, v10, OS_LOG_TYPE_ERROR, "%@.transform bad scale = %f, %f", &transform, 0x20u);
    }
  }
}

- (void)_checkTransforms
{
  objc_msgSend__checkTransformsForView_(self, a2, self, v2);
  objc_msgSend__checkTransformsForView_(self, v4, self->_bezelView, v5);
  v11 = objc_msgSend_timeView(self, v6, v7, v8);
  objc_msgSend__checkTransformsForView_(self, v9, v11, v10);
}

- (void)_fixTransforms
{
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  v16 = *MEMORY[0x277CBF2C0];
  v15 = v16;
  v17 = v14;
  v18 = *(MEMORY[0x277CBF2C0] + 32);
  v13 = v18;
  objc_msgSend_setTransform_(self, a2, &v16, v2);
  bezelView = self->_bezelView;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  objc_msgSend_setTransform_(bezelView, v5, &v16, v6);
  v10 = objc_msgSend_timeView(self, v7, v8, v9);
  v16 = v15;
  v17 = v14;
  v18 = v13;
  objc_msgSend_setTransform_(v10, v11, &v16, v12);
}

- (void)_fixLayoutStyle
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__currentLayoutStyle(self, a2, v2, v3);
  v9 = objc_msgSend_timeView(self, v6, v7, v8);
  v13 = objc_msgSend_layoutStyle(v9, v10, v11, v12);
  if (v13 != v5)
  {
    v16 = v13;
    v17 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NTKFoghornFaceLayoutStyleString(v16);
      v19 = NTKFoghornFaceLayoutStyleString(v5);
      v21 = 136315650;
      v22 = "[NTKFoghornFaceView _fixLayoutStyle]";
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_23BE5B000, v17, OS_LOG_TYPE_DEFAULT, "%s: force resetting STYLE from %@ to %@", &v21, 0x20u);
    }
  }

  objc_msgSend_setLayoutStyle_(v9, v14, v5, v15);
  objc_msgSend__applyComplicationsAlphaForLayoutStyle_editMode_(self, v20, v5, 0);
}

- (void)_cleanupAfterEditing
{
  v12.receiver = self;
  v12.super_class = NTKFoghornFaceView;
  [(NTKFoghornFaceView *)&v12 _cleanupAfterEditing];
  objc_msgSend__checkTransforms(self, v3, v4, v5);
  objc_msgSend__fixTransforms(self, v6, v7, v8);
  objc_msgSend__fixLayoutStyle(self, v9, v10, v11);
}

- (void)setNightMode:(unint64_t)a3
{
  self->_nightMode = a3;
  v3 = 0.0;
  if (a3 == 1)
  {
    v3 = 1.0;
  }

  self->_nightModeFraction = v3;
  (MEMORY[0x2821F9670])(self, sel__applyMultiPaletteFractions, a3);
}

- (void)_applyNightModeFraction:(double)a3
{
  if (self->_nightModeFraction != a3)
  {
    self->_nightModeFraction = a3;
    if (a3 == 0.0 || a3 == 1.0)
    {
      objc_msgSend__updateAveragePixelLuminance(self, a2, v3, v4);
    }

    MEMORY[0x2821F9670](self, sel__applyMultiPaletteFractions, v3, v4);
  }
}

- (void)_applyTransitionFraction:(double)a3 fromNightMode:(unint64_t)a4 toNightMode:(unint64_t)a5
{
  if (a4 != 2 && a5 != 2)
  {
    objc_msgSend__nightModeActiveFor_(self, a2, a4, a5);
    objc_msgSend__nightModeActiveFor_(self, v7, a5, v8);

    MEMORY[0x2821F9670](self, sel__applyNightModeFraction_, v9, v10);
  }
}

- (void)_updateStatusBarColorForNightModeFraction:(double)a3
{
  if (a3 <= 0.5)
  {
    v18 = fabs(a3);
    if (v18 >= 0.00000011920929)
    {
      v7 = objc_msgSend_blackColor(MEMORY[0x277D75348], a2, v3, v4);
      v22 = objc_msgSend_colorWithAlphaComponent_(v7, v19, v20, v21, a3 + a3);
      statusBarOverrideColor = self->_statusBarOverrideColor;
      self->_statusBarOverrideColor = v22;
    }

    else
    {
      v7 = self->_statusBarOverrideColor;
      self->_statusBarOverrideColor = 0;
    }
  }

  else
  {
    v7 = objc_msgSend_foghornFaceColorPalette(self, a2, v3, v4);
    v11 = objc_msgSend_nightModeStatusBarColor(v7, v8, v9, v10);
    v15 = objc_msgSend_blackColor(MEMORY[0x277D75348], v12, v13, v14);
    v16 = MEMORY[0x23EEBFD00](v15, v11, a3 + -0.5 + a3 + -0.5);
    v17 = self->_statusBarOverrideColor;
    self->_statusBarOverrideColor = v16;

    v18 = a3;
  }

  v29 = objc_msgSend_delegate(self, v24, v25, v26);
  objc_msgSend_faceViewDidChangeStatusBarOverrideColor_(v29, v27, fmin(v18, fabs(a3 + -1.0)) < 0.00000011920929, v28);
}

- (BOOL)_statusIndicatorNeedsOffsetForBezel
{
  v5 = objc_msgSend_bezelStyle(self->_bezelView, a2, v2, v3);
  if (v5 == 1)
  {
    return self->_statusIndicatorPolicy == 0;
  }

  if (v5)
  {
    return 0;
  }

  v9 = objc_msgSend_timeView(self, v6, v7, v8);
  v13 = objc_msgSend_layoutStyle(v9, v10, v11, v12) < 4;

  return v13;
}

- (double)_verticalPaddingForStatusBar
{
  if (objc_msgSend_bezelStyle(self->_bezelView, a2, v2, v3) && objc_msgSend__statusIndicatorNeedsOffsetForBezel(self, v5, v6, v7))
  {
    v11 = objc_msgSend_device(self, v8, v9, v10);
    v17 = 0u;
    v18 = 0u;
    memset(v16, 0, sizeof(v16));
    sub_23BE78818(v11, v16);
    v12 = *&v17 + *&v17 + *(&v17 + 1);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NTKFoghornFaceView;
    [(NTKFoghornFaceView *)&v15 _verticalPaddingForStatusBar];
    return v13;
  }

  return v12;
}

- (double)_horizontalPaddingForStatusBar
{
  if (objc_msgSend__statusIndicatorNeedsOffsetForBezel(self, a2, v2, v3))
  {
    v8 = objc_msgSend_device(self, v5, v6, v7);
    memset(v21, 0, sizeof(v21));
    sub_23BE78818(v8, v21);
    v9 = MEMORY[0x23EEBFD40](v8);
    v13 = objc_msgSend_bezelStyle(self->_bezelView, v10, v11, v12);
    v14 = v21 + 1;
    if (v13)
    {
      v14 = v21;
    }

    v15 = v9 * *v14;
    v16 = 56;
    if (!v13)
    {
      v16 = 64;
    }

    v17 = (v15 + *(v21 + v16)) * 0.5;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = NTKFoghornFaceView;
    [(NTKFoghornFaceView *)&v20 _horizontalPaddingForStatusBar];
    return v18;
  }

  return v17;
}

- (void)_configureShowingStatusIndicator
{
  if (self->_showingStatus)
  {
    v5 = objc_msgSend__statusIndicatorNeedsOffsetForBezel(self, a2, v2, v3) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  bezelView = self->_bezelView;

  objc_msgSend_setShowingStatusIndicator_(bezelView, a2, v5, v3);
}

- (void)_prepareForStatusChange:(BOOL)a3
{
  if (self->_showingStatus != a3)
  {
    self->_showingStatus = a3;
    objc_msgSend__configureShowingStatusIndicator(self, a2, a3, v3);
  }
}

+ (id)_sixpackComplicationNames
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D2BF00];
  v7[0] = *MEMORY[0x277D2BF08];
  v7[1] = v2;
  v3 = *MEMORY[0x277D2BEE0];
  v7[2] = *MEMORY[0x277D2BF10];
  v7[3] = v3;
  v4 = *MEMORY[0x277D2BEE8];
  v7[4] = *MEMORY[0x277D2BED8];
  v7[5] = v4;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v7, 6);

  return v5;
}

+ (BOOL)_isSixpackComplicationSlot:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend__sixpackComplicationNames(a1, v5, v6, v7);
  v11 = objc_msgSend_containsObject_(v8, v9, v4, v10);

  return v11;
}

- (void)_applyComplicationsLayoutForComplicationsEditing
{
  v7 = objc_msgSend_device(self, a2, v2, v3);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  memset(v8, 0, sizeof(v8));
  sub_23BE78818(v7, v8);
  objc_msgSend__applyComplicationsLayoutCircularScale_circularShift_fromTopBottomMargin_fromInterSixpackSpacing_states_(self, v5, &unk_284EA1530, v6, v12, *&v9, *&v10);
}

- (void)_applyComplicationLayoutRuleForDevice:(id)a3 frame:(CGRect)a4 transform:(CGAffineTransform *)a5 slot:(id)a6 states:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v56 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a6;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = a7;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v51, v55, 16);
  if (v18)
  {
    v22 = v18;
    v23 = *v52;
    v24 = *MEMORY[0x277D768C8];
    v25 = *(MEMORY[0x277D768C8] + 8);
    v26 = *(MEMORY[0x277D768C8] + 16);
    v27 = *(MEMORY[0x277D768C8] + 24);
    v46 = *MEMORY[0x277D2BEF0];
    do
    {
      v28 = 0;
      do
      {
        if (*v52 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v29 = objc_msgSend_integerValue(*(*(&v51 + 1) + 8 * v28), v19, v20, v21, v46);
        v30 = objc_opt_class();
        if (objc_msgSend__isSixpackComplicationSlot_(v30, v31, v16, v32))
        {
          v34 = *&a5->c;
          v48 = *&a5->a;
          v49 = v34;
          v50 = *&a5->tx;
          v35 = objc_msgSend_layoutRuleForDevice_withReferenceFrame_horizontalLayout_verticalLayout_keylinePadding_clip_contentTransform_(MEMORY[0x277D2BFC0], v33, v15, 3, 3, 0, &v48, x, y, width, height, v24, v25, v26, v27);
          objc_msgSend_complicationLayoutforSlot_(self, v36, v16, v37);
        }

        else
        {
          v38 = objc_opt_class();
          if (!objc_msgSend__isMiddleComplicationSlot_(v38, v39, v16, v40))
          {
            goto LABEL_11;
          }

          v41 = *&a5->c;
          v48 = *&a5->a;
          v49 = v41;
          v50 = *&a5->tx;
          v35 = objc_msgSend_layoutRuleForDevice_withReferenceFrame_horizontalLayout_verticalLayout_keylinePadding_clip_contentTransform_(MEMORY[0x277D2BFC0], v19, v15, 3, 3, 0, &v48, x, y, width, height, v24, v25, v26, v27);
          objc_msgSend_complicationLayoutforSlot_(self, v42, v46, v43);
        }
        v44 = ;
        objc_msgSend_setDefaultLayoutRule_forState_(v44, v45, v35, v29);

LABEL_11:
        ++v28;
      }

      while (v22 != v28);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v51, v55, 16);
    }

    while (v22);
  }
}

- (void)_applyComplicationsLayoutFromBezelStyle:(int64_t)a3 toBezelStyle:(int64_t)a4 progress:(double)a5
{
  v9 = objc_msgSend_device(self, a2, a3, a4);
  objc_msgSend_bounds(self, v10, v11, v12);
  v14 = v13;
  v16 = v15;
  v17 = objc_opt_class();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_23BE75874;
  v20[3] = &unk_278B9CB40;
  v20[4] = self;
  v21 = v9;
  v22 = &unk_284EA1548;
  v18 = v9;
  objc_msgSend__applyComplicationsLayoutForDevice_size_fromBezelStyle_toBezelStyle_progress_block_(v17, v19, v18, a3, a4, v20, v14, v16, a5);
}

+ (void)_applyComplicationsLayoutForDevice:(id)a3 size:(CGSize)a4 fromBezelStyle:(int64_t)a5 toBezelStyle:(int64_t)a6 progress:(double)a7 block:(id)a8
{
  height = a4.height;
  width = a4.width;
  v28 = a3;
  v15 = a8;
  memset(v29, 0, sizeof(v29));
  sub_23BE78818(v28, v29);
  if (a5)
  {
    v17 = *v29;
  }

  else
  {
    v17 = *(v29 + 1);
  }

  v18 = 40;
  if (a5)
  {
    v19 = 40;
  }

  else
  {
    v19 = 48;
  }

  if (a5)
  {
    v20 = 56;
  }

  else
  {
    v20 = 64;
  }

  if (a6)
  {
    v21 = *v29;
  }

  else
  {
    v21 = *(v29 + 1);
  }

  if (!a6)
  {
    v18 = 48;
  }

  v22 = *(v29 + v18);
  if (a6)
  {
    v23 = 56;
  }

  else
  {
    v23 = 64;
  }

  v24 = *(v29 + v23);
  if (a5 != a6 && fabs(a7 + -1.0) >= 0.00000011920929)
  {
    if (fabs(a7) < 0.00000011920929)
    {
      objc_msgSend__applyComplicationsLayoutForDevice_size_circularScale_circularShift_fromTopBottomMargin_fromInterSixpackSpacing_block_(a1, v16, v28, v15, width, height, v17, 0.0, *(v29 + v19), *(v29 + v20));
      goto LABEL_24;
    }

    CLKInterpolateBetweenFloatsClipped();
    v21 = v25;
    CLKInterpolateBetweenFloatsClipped();
    v22 = v26;
    CLKInterpolateBetweenFloatsClipped();
    v24 = v27;
  }

  objc_msgSend__applyComplicationsLayoutForDevice_size_circularScale_circularShift_fromTopBottomMargin_fromInterSixpackSpacing_block_(a1, v16, v28, v15, width, height, v21, 0.0, v22, v24);
LABEL_24:
}

- (void)_applyComplicationsLayoutCircularScale:(double)a3 circularShift:(double)a4 fromTopBottomMargin:(double)a5 fromInterSixpackSpacing:(double)a6 states:(id)a7
{
  v12 = a7;
  v16 = objc_msgSend_device(self, v13, v14, v15);
  objc_msgSend_bounds(self, v17, v18, v19);
  v21 = v20;
  v23 = v22;
  v24 = objc_opt_class();
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_23BE75B8C;
  v28[3] = &unk_278B9CB40;
  v28[4] = self;
  v29 = v16;
  v30 = v12;
  v25 = v12;
  v26 = v16;
  objc_msgSend__applyComplicationsLayoutForDevice_size_circularScale_circularShift_fromTopBottomMargin_fromInterSixpackSpacing_block_(v24, v27, v26, v28, v21, v23, a3, a4, a5, a6);
}

+ (void)_applyComplicationsLayoutForDevice:(id)a3 size:(CGSize)a4 circularScale:(double)a5 circularShift:(double)a6 fromTopBottomMargin:(double)a7 fromInterSixpackSpacing:(double)a8 block:(id)a9
{
  width = a4.width;
  v13 = a3;
  v14 = a9;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  sub_23BE78818(v13, &v63);
  v15 = *&v64;
  memset(&v62, 0, sizeof(v62));
  if (a5 == 1.0)
  {
    v16 = *(MEMORY[0x277CBF2C0] + 16);
    *&v62.a = *MEMORY[0x277CBF2C0];
    *&v62.c = v16;
    *&v62.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v62, a5, a5);
  }

  memset(&v61, 0, sizeof(v61));
  v59 = v15;
  if (v15 == a5)
  {
    v61 = v62;
  }

  else
  {
    CGAffineTransformMakeScale(&v61, v15, v15);
  }

  v17 = MEMORY[0x23EEBFD40](v13);
  v18 = MEMORY[0x23EEBFD30](v13);
  v57 = v19;
  v58 = v18;
  v20 = v17 * a5;
  v56 = width * 0.5;
  CLKFloorForDevice();
  v22 = v21;
  CLKCeilForDevice();
  v24 = v23;
  CLKCeilForDevice();
  v26 = v25;
  CLKRoundForDevice();
  v28 = v27;
  CLKFloorForDevice();
  v30 = v29;
  v55 = *(&v64 + 1);
  v31 = objc_opt_class();
  v35 = objc_msgSend__sixpackComplicationNames(v31, v32, v33, v34);
  v39 = objc_msgSend_count(v35, v36, v37, v38);

  if (v39)
  {
    v40 = 0;
    v41 = v39 >> 1;
    do
    {
      v42 = objc_opt_class();
      v46 = objc_msgSend__sixpackComplicationNames(v42, v43, v44, v45);
      v49 = objc_msgSend_objectAtIndexedSubscript_(v46, v47, v40, v48);

      if (v40 % v41 == (v39 >> 1) - 1)
      {
        v50 = v24;
      }

      else
      {
        v50 = v28;
      }

      if (!(v40 % v41))
      {
        v50 = v22;
      }

      if (v40 / v41 == 1)
      {
        v51 = v26;
      }

      else
      {
        v51 = v30;
      }

      v52 = v14[2];
      v60 = v62;
      v52(v14, v49, &v60, v50 + a6, v51 + a6, v20 + a6 * -2.0, v20 + a6 * -2.0);

      ++v40;
    }

    while (v40 != v39);
  }

  v53 = *MEMORY[0x277D2BEF0];
  v54 = v14[2];
  v60 = v61;
  v54(v14, v53, &v60, v56 + v58 * -0.5, v55, v58, v59 * v57);
}

- (void)_loadLayoutRules
{
  v5 = objc_msgSend_bezelStyle(self->_bezelView, a2, v2, v3);
  objc_msgSend__applyComplicationsLayoutFromBezelStyle_toBezelStyle_progress_(self, v6, v5, v5, 1.0);

  MEMORY[0x2821F9670](self, sel__applyComplicationsLayoutForComplicationsEditing, v7, v8);
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = objc_opt_class();
  isSixpackComplicationSlot = objc_msgSend__isSixpackComplicationSlot_(v8, v9, v6, v10);

  v15 = 0x277D2C0D0;
  if (!isSixpackComplicationSlot)
  {
    v15 = 0x277D2C0D8;
  }

  v16 = *v15;
  v17 = objc_msgSend_complicationType(v7, v12, v13, v14);

  objc_msgSend_viewWithLegacyComplicationType_(v16, v18, v17, v19);
  return objc_claimAutoreleasedReturnValue();
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v15.receiver = self;
  v15.super_class = NTKFoghornFaceView;
  v6 = a4;
  v7 = a3;
  [(NTKFoghornFaceView *)&v15 _configureComplicationView:v7 forSlot:v6];
  objc_msgSend__applyComplicationFont_(self, v8, v7, v9, v15.receiver, v15.super_class);
  v13 = objc_msgSend__multiPalette(self, v10, v11, v12);
  objc_msgSend__applyComplicationColor_withPalette_slot_(self, v14, v7, v13, v6);
}

- (int64_t)_keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend__isSixpackComplicationSlot_(v5, v6, v4, v7))
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKFoghornFaceView;
    v8 = [(NTKFoghornFaceView *)&v10 _keylineStyleForComplicationSlot:v4];
  }

  return v8;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x277D2BEF0], v6))
  {
    v10 = MEMORY[0x277D2C078];
    v11 = objc_msgSend_device(self, v7, v8, v9);
    objc_msgSend_cornerRadiusForComplicationFamily_forDevice_(v10, v12, 1, v11);
    v14 = v13;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NTKFoghornFaceView;
    [(NTKFoghornFaceView *)&v17 _keylineCornerRadiusForComplicationSlot:v4];
    v14 = v15;
  }

  return v14;
}

- (void)_applyComplicationFont:(id)a3
{
  v31 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_display(v31, v4, v5, v6);
    objc_msgSend__applyComplicationFont_(self, v8, v7, v9);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setFontStyle_(v31, v10, 3, v11);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = MEMORY[0x277CBBB08];
        v13 = v31;
        v17 = objc_msgSend_font(v13, v14, v15, v16);
        objc_msgSend_pointSize(v17, v18, v19, v20);
        v24 = objc_msgSend_foghornSimpleComplicationFontOfSize_(v12, v21, v22, v23);
        v28 = objc_msgSend_CLKFontWithAlternativePunctuation(v24, v25, v26, v27);
        objc_msgSend_setFont_(v13, v29, v28, v30);
      }
    }
  }
}

- (void)_applyComplicationColor:(id)a3 withPalette:(id)a4 slot:(id)a5
{
  v86 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_msgSend_display(v86, v10, v11, v12);
    objc_msgSend__applyComplicationColor_withPalette_slot_(self, v14, v13, v8, v9);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = objc_msgSend_complicationAccentColor(v8, v15, v16, v17);
      objc_msgSend_setAccentColor_(self->_complicationsFilterProvider, v19, v18, v20);

      v24 = objc_msgSend_complicationNonAccentColor(v8, v21, v22, v23);
      objc_msgSend_setNonAccentColor_(self->_complicationsFilterProvider, v25, v24, v26);

      v13 = v86;
      if (objc_msgSend_conformsToProtocol_(v13, v27, &unk_28A9F43D8, v28))
      {
        nightModeFraction = self->_nightModeFraction;
        v33 = fmin(nightModeFraction / 0.4, 1.0);
        v34 = fmax(nightModeFraction + -0.4, 0.0) / 0.6;
        v35 = MEMORY[0x277D75348];
        v36 = v13;
        v40 = objc_msgSend_colorWithRed_green_blue_alpha_(v35, v37, v38, v39, 0.188235294, 0.0470588235, 0.0352941176, 1.0);
        v44 = objc_msgSend_clearColor(MEMORY[0x277D75348], v41, v42, v43);
        v45 = MEMORY[0x23EEBFD00](v44, v40, v34);

        objc_msgSend_setTintedFraction_(v36, v46, v47, v48, v33);
        objc_msgSend_setTintedPlatterColor_(v36, v49, v45, v50);
      }

      v51 = objc_msgSend_isNightModeF(v8, v29, v30, v31);
      objc_msgSend_floatValue(v51, v52, v53, v54);
      v56 = v55;

      v60 = objc_msgSend_isMulticolorF(v8, v57, v58, v59);
      objc_msgSend_floatValue(v60, v61, v62, v63);
      v65 = 1.0 - v64;

      v69 = v56;
      if (v65 > v56)
      {
        v69 = v65;
      }

      if (v69 == 1.0)
      {
        objc_msgSend_updateMonochromeColor(v13, v66, v67, v68);
      }

      else
      {
        objc_msgSend_transitionToMonochromeWithFraction_(v13, v66, v67, v68);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = v86;
        v13 = objc_msgSend_simpleTextComplicationColor(v8, v71, v72, v73);
        v77 = objc_msgSend_label(v70, v74, v75, v76);

        objc_msgSend_setTextColor_(v77, v78, v13, v79);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_16;
        }

        v80 = v86;
        v13 = objc_msgSend_simpleTextComplicationColor(v8, v81, v82, v83);
        objc_msgSend_setTextColor_(v80, v84, v13, v85);
      }
    }
  }

LABEL_16:
}

- (void)_applyPaletteToComplications:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23BE76678;
  v8[3] = &unk_278B9CB68;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  objc_msgSend_enumerateComplicationDisplayWrappersWithBlock_(self, v6, v8, v7);
}

- (void)_updateViewColorsWithMultiPalette
{
  v7 = objc_msgSend__multiPalette(self, a2, v2, v3);
  objc_msgSend__updateViewColorsWithPalette_(self, v5, v7, v6);
}

- (void)_updateViewColorsWithPalette:(id)a3
{
  v4 = a3;
  objc_msgSend__applyPaletteToComplications_(self, v5, v4, v6);
  objc_msgSend_activate(MEMORY[0x277CD9FF0], v7, v8, v9);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v10, v11, v12);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v13, 1, v14);
  v41 = objc_msgSend_timeView(self, v15, v16, v17);
  v21 = objc_msgSend_timeMinutesColor(v4, v18, v19, v20);
  objc_msgSend_setMinutesColor_(v41, v22, v21, v23);

  v27 = objc_msgSend_timeSecondsColor(v4, v24, v25, v26);
  objc_msgSend_setSecondsColor_(v41, v28, v27, v29);

  objc_msgSend_setNeedsDisplay(v41, v30, v31, v32);
  objc_msgSend_setColorPalette_(self->_bezelView, v33, v4, v34);

  objc_msgSend__updateStatusBarColorForNightModeFraction_(self, v35, v36, v37, self->_nightModeFraction);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v38, v39, v40);
}

- (void)_applyPaletteFromBezelStyle:(int64_t)a3 toBezelStyle:(int64_t)a4 progress:(double)a5 updateColorsIfNeeded:(BOOL)a6
{
  v6 = a6;
  v46 = objc_msgSend_interpolatedColorPalette(self, a2, a3, a4);
  v14 = objc_msgSend_fromPalette(v46, v11, v12, v13);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v14;
    if (objc_msgSend_isMulticolor(v18, v19, v20, v21))
    {
      v25 = objc_msgSend_bezelStyle(v18, v22, v23, v24) != a3 && v6;
    }

    else
    {
      v25 = 0;
    }

    objc_msgSend_setBezelStyle_(v18, v22, a3, v24);
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_msgSend_toPalette(v46, v15, v16, v17);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v26;
    if (objc_msgSend_isMulticolor(v30, v31, v32, v33) && objc_msgSend_bezelStyle(v30, v34, v35, v36) != a4)
    {
      v25 = v6;
    }

    objc_msgSend_setBezelStyle_(v30, v34, a4, v36);
  }

  objc_msgSend_transitionFraction(v46, v27, v28, v29);
  if (v40 == a5)
  {
    if (!v25)
    {
      goto LABEL_20;
    }
  }

  else
  {
    objc_msgSend_setTransitionFraction_(v46, v37, v38, v39, a5);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  if ((objc_msgSend__nightModeActive(self, v37, v38, v39) & 1) == 0)
  {
    objc_msgSend_setTransitionFraction_(v46, v41, v42, v43, a5);
    objc_msgSend__updateViewColorsWithPalette_(self, v44, v46, v45);
  }

LABEL_20:
}

- (void)_applyPaletteBezelStyle:(int64_t)a3 updateColorsIfNeeded:(BOOL)a4
{
  v4 = a4;
  v24 = objc_msgSend_faceColorPalette(self, a2, a3, a4);
  if (objc_msgSend_isMulticolor(v24, v7, v8, v9))
  {
    v13 = objc_msgSend_bezelStyle(v24, v10, v11, v12);
    objc_msgSend_setBezelStyle_(v24, v14, a3, v15);
    objc_msgSend__applyPaletteFromBezelStyle_toBezelStyle_progress_updateColorsIfNeeded_(self, v16, a3, a3, 0, 1.0);
    if (v13 != a3 && v4 && (objc_msgSend__nightModeActive(self, v17, v18, v19) & 1) == 0)
    {
      objc_msgSend__updateViewColorsWithMultiPalette(self, v20, v21, v22);
    }
  }

  else
  {
    objc_msgSend_setBezelStyle_(v24, v10, a3, v12);
    objc_msgSend__applyPaletteFromBezelStyle_toBezelStyle_progress_updateColorsIfNeeded_(self, v23, a3, a3, 0, 1.0);
  }
}

- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5
{
  v12 = objc_msgSend_interpolatedColorPalette(self, a2, a4, a5);
  objc_msgSend_setTransitionFraction_(v12, v7, v8, v9, a3);
  objc_msgSend__updateViewColorsWithPalette_(self, v10, v12, v11);
}

- (void)_applyMultiPaletteFractions
{
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v2, v3, self->_tritiumFraction);
  v21[0] = v5;
  v9 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, v7, v8, self->_nightModeFraction);
  v21[1] = v9;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v21, 2);

  v15 = objc_msgSend__multiPalette(self, v12, v13, v14);
  objc_msgSend_setTransitionFractions_(v15, v16, v11, v17);

  objc_msgSend__updateViewColorsWithMultiPalette(self, v18, v19, v20);
}

- (void)_applyComplicationsAlphaForTransitionFraction:(double)a3 fromLayoutStyle:(unint64_t)a4 toLayoutStyle:(unint64_t)a5 editMode:(int64_t)a6
{
  CLKInterpolateBetweenFloatsClipped();
  v8 = v7;
  CLKInterpolateBetweenFloatsClipped();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23BE76CF8;
  v12[3] = &unk_278B9CB90;
  v12[4] = self;
  v12[5] = v9;
  v12[6] = v8;
  objc_msgSend_enumerateComplicationDisplayWrappersWithBlock_(self, v10, v12, v11);
}

- (unint64_t)_currentLayoutStyle
{
  v2 = objc_msgSend_optionForCustomEditMode_slot_(self, a2, 15, 0);
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_layoutStyle(v2, v3, v4, v5);
  }

  return v6;
}

- (int64_t)_currentBezelStyle
{
  v2 = objc_msgSend_optionForCustomEditMode_slot_(self, a2, 12, 0);
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_bezelStyle(v2, v3, v4, v5);
  }

  return v6;
}

- (unint64_t)_currentNightModePolicy
{
  v2 = objc_msgSend_optionForCustomEditMode_slot_(self, a2, 18, 0);
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_nightMode(v2, v3, v4, v5);
  }

  return v6;
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v87 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v74 = objc_msgSend_localizedName(v11, v14, v15, v16);
    v78 = objc_msgSend_localizedName(v12, v75, v76, v77);
    v79 = 136315906;
    v80 = "[NTKFoghornFaceView _applyTransitionFraction:fromOption:toOption:forCustomEditMode:slot:]";
    v81 = 2048;
    v82 = a3;
    v83 = 2112;
    v84 = v74;
    v85 = 2112;
    v86 = v78;
    _os_log_debug_impl(&dword_23BE5B000, v13, OS_LOG_TYPE_DEBUG, "%s: fraction = %f fromOption = %@ toOption = %@", &v79, 0x2Au);
  }

  if (a6 > 14)
  {
    if (a6 == 18)
    {
      v68 = objc_msgSend_nightMode(v11, v17, v18, v19);
      v72 = objc_msgSend_nightMode(v12, v69, v70, v71);
      objc_msgSend__applyTransitionFraction_fromNightMode_toNightMode_(self, v73, v68, v72, a3);
    }

    else if (a6 == 15)
    {
      v36 = v12;
      v37 = v11;
      v41 = objc_msgSend_timeView(self, v38, v39, v40);
      v45 = objc_msgSend_layoutStyle(v37, v42, v43, v44);
      v49 = objc_msgSend_layoutStyle(v36, v46, v47, v48);
      objc_msgSend_setLayoutFromStyle_toStyle_progress_(v41, v50, v45, v49, a3);

      v54 = objc_msgSend_layoutStyle(v37, v51, v52, v53);
      v58 = objc_msgSend_layoutStyle(v36, v55, v56, v57);

      objc_msgSend__applyComplicationsAlphaForTransitionFraction_fromLayoutStyle_toLayoutStyle_editMode_(self, v59, v54, v58, 15, a3);
    }
  }

  else if (a6 == 10)
  {
    v60 = v12;
    v61 = v11;
    v65 = objc_msgSend__currentBezelStyle(self, v62, v63, v64);
    objc_msgSend__applyPaletteBezelStyle_updateColorsIfNeeded_(self, v66, v65, 0);
    objc_msgSend__applyTransitionFraction_fromColor_toColor_(self, v67, v61, v60, a3);
  }

  else if (a6 == 12)
  {
    v20 = v12;
    v24 = objc_msgSend_bezelStyle(v11, v21, v22, v23);
    v31 = objc_msgSend_bezelStyle(v20, v25, v26, v27);
    if ((v24 != 0) != (v31 != 0))
    {
      v32 = objc_msgSend_timeView(self, v28, v29, v30);
      objc_msgSend_setFromInset_toInset_progress_(v32, v33, v24 != 0, v31 != 0, a3);
    }

    objc_msgSend__applyPaletteFromBezelStyle_toBezelStyle_progress_updateColorsIfNeeded_(self, v28, v24, v31, 1, a3);
    objc_msgSend_setBezelFromStyle_toStyle_progress_(self->_bezelView, v34, v24, v31, a3);
    objc_msgSend__applyComplicationsLayoutFromBezelStyle_toBezelStyle_progress_(self, v35, v24, v31, a3);
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v89 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v74 = objc_msgSend_dataMode(self, v9, v10, v11);
    v78 = objc_msgSend_localizedName(v7, v75, v76, v77);
    v79 = 136316162;
    v80 = "[NTKFoghornFaceView _applyOption:forCustomEditMode:slot:]";
    v81 = 2048;
    v82 = self;
    v83 = 2048;
    v84 = v74;
    v85 = 2112;
    v86 = v78;
    v87 = 1024;
    v88 = a4;
    _os_log_debug_impl(&dword_23BE5B000, v8, OS_LOG_TYPE_DEBUG, "%s(%p): dataMode = %ld option = %@ mode = %u", &v79, 0x30u);
  }

  if (a4 > 14)
  {
    if (a4 == 18)
    {
      v66 = objc_msgSend_nightMode(v7, v12, v13, v14);
      objc_msgSend_setNightMode_(self, v67, v66, v68);
      v72 = objc_msgSend__currentLayoutStyle(self, v69, v70, v71);
      objc_msgSend__applyComplicationsAlphaForLayoutStyle_editMode_(self, v73, v72, 18);
    }

    else if (a4 == 15)
    {
      v37 = v7;
      v41 = objc_msgSend_timeView(self, v38, v39, v40);
      v45 = objc_msgSend_layoutStyle(v37, v42, v43, v44);
      objc_msgSend_setLayoutStyle_(v41, v46, v45, v47);

      v51 = objc_msgSend_layoutStyle(v37, v48, v49, v50);
      objc_msgSend__applyComplicationsAlphaForLayoutStyle_editMode_(self, v52, v51, 15);
    }
  }

  else if (a4 == 10)
  {
    v53 = objc_msgSend__currentBezelStyle(self, v12, v13, v14);
    objc_msgSend__applyPaletteBezelStyle_updateColorsIfNeeded_(self, v54, v53, 0);
    v58 = objc_msgSend_interpolatedColorPalette(self, v55, v56, v57);
    objc_msgSend_setTransitionFraction_(v58, v59, v60, v61, 1.0);

    multiPalette = self->_multiPalette;
    self->_multiPalette = 0;

    objc_msgSend__updateViewColorsWithMultiPalette(self, v63, v64, v65);
  }

  else if (a4 == 12)
  {
    v15 = objc_msgSend_bezelStyle(v7, v12, v13, v14);
    v19 = objc_msgSend_timeView(self, v16, v17, v18);
    objc_msgSend_setInset_(v19, v20, v15 != 0, v21);

    objc_msgSend__applyPaletteBezelStyle_updateColorsIfNeeded_(self, v22, v15, 0);
    objc_msgSend_setBezelStyle_(self->_bezelView, v23, v15, v24);
    v28 = objc_msgSend_interpolatedColorPalette(self, v25, v26, v27);
    objc_msgSend_setTransitionFraction_(v28, v29, v30, v31, 1.0);

    v32 = self->_multiPalette;
    self->_multiPalette = 0;

    objc_msgSend__updateViewColorsWithMultiPalette(self, v33, v34, v35);
    objc_msgSend__applyComplicationsLayoutFromBezelStyle_toBezelStyle_progress_(self, v36, v15, v15, 1.0);
  }
}

- (unint64_t)_effectiveNightModeForEditMode:(int64_t)a3
{
  result = 0;
  if (a3 != 1 && a3 != 10)
  {
    return objc_msgSend__nightModeActive(self, a2, a3, v3);
  }

  return result;
}

- (double)_alphaForComplicationSlot:(id)a3 inEditOption:(id)a4 ofEditMode:(int64_t)a5
{
  v8 = a3;
  v12 = a4;
  if (a5 == 15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = objc_msgSend_layoutStyle(v12, v9, v10, v11);
  }

  else
  {
    v13 = objc_msgSend__currentLayoutStyle(self, v9, v10, v11);
  }

  v14 = v13;
  v15 = objc_opt_class();
  if (objc_msgSend__isSixpackComplicationSlot_(v15, v16, v8, v17))
  {
    v18 = 0.0;
    if (v14 > 3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = objc_opt_class();
    v18 = 1.0;
    if (!objc_msgSend__isMiddleComplicationSlot_(v19, v20, v8, v21))
    {
      goto LABEL_13;
    }

    v18 = 0.0;
    if (v14 > 1)
    {
      goto LABEL_13;
    }
  }

  if (a5 == 15 || (v18 = 1.0, a5 == 12))
  {
    v18 = *MEMORY[0x277D2BF18];
  }

LABEL_13:

  return v18;
}

- (id)_complicationSlotsHiddenByCurrentConfiguration
{
  v5 = objc_msgSend__currentLayoutStyle(self, a2, v2, v3);
  if (v5 > 3)
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_msgSend_delegate(self, v6, v7, v8);
    v14 = objc_msgSend_faceViewComplicationSlots(v10, v11, v12, v13);
    v17 = objc_msgSend_setWithArray_(v9, v15, v14, v16);
  }

  else
  {
    if (v5 > 1)
    {
      objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v6, *MEMORY[0x277D2BEF0], v8);
    }

    else
    {
      objc_msgSend_set(MEMORY[0x277CBEB98], v6, v7, v8);
    }
    v17 = ;
  }

  return v17;
}

- (void)_prepareComplicationsForSnapshotting
{
  v5 = objc_msgSend__currentLayoutStyle(self, a2, v2, v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23BE77748;
  v8[3] = &unk_278B9CBB8;
  v8[4] = self;
  v9 = v5 < 4;
  v10 = v5 < 2;
  objc_msgSend_enumerateComplicationDisplayWrappersWithBlock_(self, v6, v8, v7);
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v17.receiver = self;
  v17.super_class = NTKFoghornFaceView;
  [(NTKFoghornFaceView *)&v17 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    objc_msgSend__transformForRubberBandingFraction_(self, v8, v9, v10, a3);
    objc_msgSend_setTransform_(self, v11, &v16, v12);
    NTKAlphaForRubberBandingFraction();
    objc_msgSend_setAlpha_(self, v13, v14, v15);
  }
}

- (CGAffineTransform)_transformForBreathingFraction:(SEL)a3
{
  NTKLargeElementScaleForBreathingFraction();

  return CGAffineTransformMakeScale(retstr, v5, v5);
}

- (CGAffineTransform)_transformForRubberBandingFraction:(SEL)a3
{
  NTKScaleForRubberBandingFraction();

  return CGAffineTransformMakeScale(retstr, v5, v5);
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if ((a3 - 10) > 8)
  {
    return 0;
  }

  else
  {
    return qword_278B9CC28[a3 - 10];
  }
}

+ (void)_drawComplicationsSnapshotInContext:(CGContext *)a3 bezelStyle:(int64_t)a4 layoutStyle:(unint64_t)a5 forDevice:(id)a6
{
  v10 = a6;
  if (a5 <= 3)
  {
    v11 = a5 < 2;
    CGContextSaveGState(a3);
    v15 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v12, v13, v14, 0.9, 0.05);
    v16 = v15;
    v20 = objc_msgSend_CGColor(v16, v17, v18, v19);
    CGContextSetFillColorWithColor(a3, v20);

    objc_msgSend_screenBounds(v10, v21, v22, v23);
    v25 = v24;
    v27 = v26;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_23BE77A54;
    v29[3] = &unk_278B9CBE0;
    v33 = 1;
    v31 = a1;
    v32 = a3;
    v34 = v11;
    v30 = v10;
    objc_msgSend__applyComplicationsLayoutForDevice_size_fromBezelStyle_toBezelStyle_progress_block_(a1, v28, v30, a4, a4, v29, v25, v27, 1.0);
    CGContextRestoreGState(a3);
  }
}

+ (id)_snapshotImageForLayoutStyle:(id)a3 bezelStyle:(id)a4 colorPalette:(id)a5 withSelectedOptions:(id)a6 forDevice:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v18 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v15, v16, v17);
  objc_msgSend_scale(v18, v19, v20, v21);
  v23 = v22;

  objc_msgSend_screenBounds(v14, v24, v25, v26);
  v28 = v27;
  v30 = v29;
  v31 = objc_opt_new();
  objc_msgSend_setScale_(v31, v32, v33, v34, v23);
  v35 = objc_alloc(MEMORY[0x277D75560]);
  v38 = objc_msgSend_initWithSize_format_(v35, v36, v31, v37, v28, v30);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_23BE77D44;
  v47[3] = &unk_278B9CC08;
  v52 = v28;
  v53 = v30;
  v54 = a1;
  v48 = v12;
  v49 = v11;
  v50 = v14;
  v51 = v13;
  v39 = v13;
  v40 = v14;
  v41 = v11;
  v42 = v12;
  v45 = objc_msgSend_imageWithActions_(v38, v43, v47, v44);

  return v45;
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v11 = a5;
  v12 = 0;
  if (a4 <= 14)
  {
    if (a4 == 10)
    {
      v13 = 0;
      v12 = 0;
      v14 = v8;
    }

    else
    {
      v13 = v8;
      v14 = 0;
      v15 = 0;
      if (a4 != 12)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v15 = v12;
    v16 = v8;
    v12 = v13;
    goto LABEL_10;
  }

  if (a4 == 15)
  {
    v18 = v8;
    v12 = 0;
    v15 = 0;
    v14 = 0;
    if (v18)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v15 = 0;
  v14 = 0;
  if (a4 == 18)
  {
    v13 = 0;
    v14 = 0;
    v12 = v8;
    goto LABEL_9;
  }

LABEL_10:
  v17 = objc_msgSend_objectForKeyedSubscript_(v11, v9, &unk_284EA12F0, v10);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v12)
  {
    if (v15)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_19:
  v20 = objc_msgSend_objectForKeyedSubscript_(v11, v9, &unk_284EA12A8, v10);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v20;
  }

  else
  {
    v12 = 0;
  }

  if (v15)
  {
LABEL_15:
    if (v14)
    {
      goto LABEL_16;
    }

LABEL_27:
    v22 = objc_msgSend_objectForKeyedSubscript_(v11, v9, &unk_284EA12C0, v10);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v22;
    }

    else
    {
      v14 = 0;
    }

    if (!v18)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_23:
  v21 = objc_msgSend_objectForKeyedSubscript_(v11, v9, &unk_284EA12D8, v10);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v21;
  }

  else
  {
    v15 = 0;
  }

  if (!v14)
  {
    goto LABEL_27;
  }

LABEL_16:
  if (!v18)
  {
LABEL_37:
    v51.receiver = self;
    v51.super_class = NTKFoghornFaceView;
    v49 = [(NTKFoghornFaceView *)&v51 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v11];
    goto LABEL_38;
  }

LABEL_31:
  if (!v12 || !v15 || !v14)
  {
    goto LABEL_37;
  }

  v23 = objc_msgSend_foghornFaceColorPalette(self, v9, v19, v10);
  v27 = objc_msgSend_copy(v23, v24, v25, v26);

  objc_msgSend_setPigmentEditOption_(v27, v28, v14, v29);
  v33 = objc_msgSend_bezelStyle(v12, v30, v31, v32);
  objc_msgSend_setBezelStyle_(v27, v34, v33, v35);
  if (objc_msgSend_nightMode(v15, v36, v37, v38) == 1)
  {
    v42 = objc_msgSend_nightModeColorPalette(v27, v39, v40, v41);

    v27 = v42;
  }

  v43 = objc_opt_class();
  v47 = objc_msgSend_device(self, v44, v45, v46);
  v49 = objc_msgSend__snapshotImageForLayoutStyle_bezelStyle_colorPalette_withSelectedOptions_forDevice_(v43, v48, v18, v12, v27, v11, v47);

LABEL_38:

  return v49;
}

- (void)_reorderSwitcherSnapshotView
{
  v12.receiver = self;
  v12.super_class = NTKFoghornFaceView;
  [(NTKFoghornFaceView *)&v12 _reorderSwitcherSnapshotView];
  v6 = objc_msgSend__currentLayoutStyle(self, v3, v4, v5);
  v10 = objc_msgSend_toEditMode(self, v7, v8, v9);
  objc_msgSend__applyComplicationsAlphaForLayoutStyle_editMode_(self, v11, v6, v10);
}

- (void)_setLive:(int64_t)a3
{
  v5 = a3 - 1;
  v6 = a3 != 1;
  v30 = objc_msgSend_timeView(self, a2, a3, v3);
  objc_msgSend_setFrozen_(v30, v7, v6, v8);
  if (v5 > 1)
  {
    objc_msgSend__ensureDataSourceForDataType_(self, v9, 0, v11);
    objc_msgSend_setShowingStatusIndicator_(self->_bezelView, v25, 0, v26);
    objc_msgSend_setToSnapshotValues(self->_bezelView, v27, v28, v29);
  }

  else
  {
    v12 = objc_msgSend_bezelStyle(self->_bezelView, v9, v10, v11);
    objc_msgSend__ensureDataSourceForDataType_(self, v13, v12, v14);
    v18 = objc_msgSend_delegate(self, v15, v16, v17);
    objc_msgSend_faceViewDidChangePaddingForStatusBar(v18, v19, v20, v21);

    objc_msgSend__configureShowingStatusIndicator(self, v22, v23, v24);
  }
}

- (id)createFaceColorPalette
{
  v2 = [NTKFoghornFaceColorPalette alloc];
  v3 = objc_opt_class();
  v6 = objc_msgSend_initWithFaceClass_(v2, v4, v3, v5);

  return v6;
}

- (id)_multiPalette
{
  v56[4] = *MEMORY[0x277D85DE8];
  if (!self->_multiPalette)
  {
    v5 = objc_msgSend_foghornFaceColorPalette(self, a2, v2, v3);
    v9 = objc_msgSend_nightModeColorPalette(v5, v6, v7, v8);

    v10 = objc_alloc(MEMORY[0x277D2C088]);
    v14 = objc_msgSend_foghornFaceColorPalette(self, v11, v12, v13);
    v56[0] = v14;
    v18 = objc_msgSend_foghornFaceColorPalette(self, v15, v16, v17);
    v22 = objc_msgSend_tritiumPalette(v18, v19, v20, v21);
    v56[1] = v22;
    v56[2] = v9;
    v26 = objc_msgSend_tritiumPalette(v9, v23, v24, v25);
    v56[3] = v26;
    v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v27, v56, 4);
    v31 = objc_msgSend_initWithPalettes_(v10, v29, v28, v30);
    multiPalette = self->_multiPalette;
    self->_multiPalette = v31;
  }

  v33 = objc_msgSend__nightModeInterpolator(self, a2, v2, v3);
  v34 = MEMORY[0x23EEC00D0]();
  v38 = objc_msgSend_colorInterpolators(self->_multiPalette, v35, v36, v37);
  objc_msgSend_setObject_atIndexedSubscript_(v38, v39, v34, 1);

  v43 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v40, v41, v42, self->_tritiumFraction);
  v55[0] = v43;
  v47 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v44, v45, v46, self->_nightModeFraction);
  v55[1] = v47;
  v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v48, v55, 2);

  objc_msgSend_setTransitionFractions_(self->_multiPalette, v50, v49, v51);
  v52 = self->_multiPalette;
  v53 = v52;

  return v52;
}

- (void)_updateFromPreferences
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_timeView(self, a2, v2, v3);
  v8 = objc_msgSend_timeViewUseStretchAnimation(NTKFoghornPreferences, v5, v6, v7);
  if (objc_msgSend_animationStyle(v4, v9, v10, v11) != v8)
  {
    v15 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_msgSend_animationStyle(v4, v16, v17, v18);
      v20 = NTKFoghornTimeViewAnimationStyleString(v19);
      v21 = NTKFoghornTimeViewAnimationStyleString(v8);
      v37 = 138412546;
      v38 = v20;
      v39 = 2112;
      v40 = v21;
      _os_log_impl(&dword_23BE5B000, v15, OS_LOG_TYPE_DEFAULT, "updating timeView animationStyle from: %@ to: %@", &v37, 0x16u);
    }

    objc_msgSend_setAnimationStyle_(v4, v22, v8, v23);
  }

  v24 = objc_msgSend_timeViewAnimationSnapStyle(NTKFoghornPreferences, v12, v13, v14);
  if (objc_msgSend_animationSnapStyle(v4, v25, v26, v27) != v24)
  {
    v28 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_msgSend_animationSnapStyle(v4, v29, v30, v31);
      v33 = NTKFoghornTimeViewAnimationSnapStyleString(v32);
      v34 = NTKFoghornTimeViewAnimationSnapStyleString(v24);
      v37 = 138412546;
      v38 = v33;
      v39 = 2112;
      v40 = v34;
      _os_log_impl(&dword_23BE5B000, v28, OS_LOG_TYPE_DEFAULT, "updating timeView animationSnapStyle from: %@ to: %@", &v37, 0x16u);
    }

    objc_msgSend_setAnimationSnapStyle_(v4, v35, v24, v36);
  }
}

@end