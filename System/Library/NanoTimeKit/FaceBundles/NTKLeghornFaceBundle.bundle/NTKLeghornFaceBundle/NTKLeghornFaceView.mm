@interface NTKLeghornFaceView
+ (id)_snapshotImageForTimeStyle:(id)a3 hiVizStyle:(id)a4 colorPalette:(id)a5 poiFilterEditOption:(id)a6 withSelectedOptions:(id)a7 forDevice:(id)a8;
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
+ (void)_applyComplicationsLayoutForDevice:(id)a3 size:(CGSize)a4 fromHiVizStyle:(unint64_t)a5 toHiVizStyle:(unint64_t)a6 progress:(double)a7 block:(id)a8;
+ (void)_drawComplicationsSnapshotInContext:(CGContext *)a3 hiVizStyle:(unint64_t)a4 forDevice:(id)a5;
- (BOOL)_fadesComplicationSlot:(id)a3 inEditMode:(int64_t)a4;
- (BOOL)_hiVizComplicationContainsPoint:(CGPoint)a3;
- (CGAffineTransform)_transformForBreathingFraction:(SEL)a3;
- (CGAffineTransform)_transformForRubberBandingFraction:(SEL)a3;
- (CGRect)_relativeKeylineFrameForPOIFilterView;
- (NTKLeghornFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_alphaForComplicationSlot:(id)a3 inEditOption:(id)a4 ofEditMode:(int64_t)a5;
- (double)_currentWaypointRadius;
- (double)_keylineCornerRadiusForComplicationSlot:(id)a3;
- (id)_complicationSlotsHiddenByCurrentConfiguration;
- (id)_currentPOIFilter;
- (id)_multiPalette;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (int64_t)_keylineStyleForComplicationSlot:(id)a3;
- (unint64_t)_currentHiVizStyle;
- (unint64_t)_currentNightModePolicy;
- (unint64_t)_effectiveNightModeForEditMode:(int64_t)a3;
- (unint64_t)_hiVizComplicationStyleForDisplayMode:(unint64_t)a3;
- (void)_applyComplicationColor:(id)a3 withPalette:(id)a4 slot:(id)a5;
- (void)_applyComplicationFont:(id)a3;
- (void)_applyComplicationLayoutRuleForDevice:(id)a3 frame:(CGRect)a4 transform:(CGAffineTransform *)a5 slot:(id)a6 states:(id)a7;
- (void)_applyComplicationsAlphaForTransitionFraction:(double)a3 fromHiVizStyle:(unint64_t)a4 toHiVizStyle:(unint64_t)a5 liveDisplayModeFraction:(double)a6 fromLiveDisplayMode:(unint64_t)a7 toLiveDisplayMode:(unint64_t)a8 editMode:(int64_t)a9;
- (void)_applyComplicationsAlphaForTransitionFraction:(double)a3 fromLiveDisplayMode:(unint64_t)a4 toLiveDisplayMode:(unint64_t)a5;
- (void)_applyComplicationsLayoutForComplicationsEditing;
- (void)_applyComplicationsLayoutForHiVizPosition:(unint64_t)a3 states:(id)a4;
- (void)_applyComplicationsLayoutFromHiVizStyle:(unint64_t)a3 toHiVizStyle:(unint64_t)a4 progress:(double)a5;
- (void)_applyDataMode;
- (void)_applyHiVizStyleTransitionFraction:(double)a3 fromDisplayMode:(unint64_t)a4 toDisplayMode:(unint64_t)a5 editMode:(int64_t)a6;
- (void)_applyMultiPaletteFractions;
- (void)_applyNightModeFraction:(double)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyPaletteToComplications:(id)a3;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromHiVizStyle:(unint64_t)a4 toHiVizStyle:(unint64_t)a5 editMode:(int64_t)a6;
- (void)_applyTransitionFraction:(double)a3 fromNightMode:(unint64_t)a4 toNightMode:(unint64_t)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_checkTransforms;
- (void)_checkTransformsForView:(id)a3;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_fixLayoutStyle;
- (void)_fixTransforms;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareComplicationsForSnapshotting;
- (void)_prepareForEditing;
- (void)_reorderSwitcherSnapshotView;
- (void)_setLive:(int64_t)a3;
- (void)_stopDataSource;
- (void)_tearDownPOIFilterView;
- (void)_unloadSnapshotContentViews;
- (void)_updateStatusBarColorForNightModeFraction:(double)a3;
- (void)_updateViewColorsWithMultiPalette;
- (void)_updateViewColorsWithPalette:(id)a3;
- (void)dealloc;
- (void)poiFilterEditorView:(id)a3 didChangePOIFilter:(id)a4;
- (void)populateFaceViewEditOptionsFromFace:(id)a3;
- (void)setDataMode:(int64_t)a3;
- (void)setNightMode:(unint64_t)a3;
@end

@implementation NTKLeghornFaceView

- (void)poiFilterEditorView:(id)a3 didChangePOIFilter:(id)a4
{
  v5 = a4;
  v21 = objc_msgSend_delegate(self, v6, v7);
  v10 = objc_msgSend_face(v21, v8, v9);
  v13 = objc_msgSend_device(self, v11, v12);
  v16 = objc_msgSend_optionWithPOIFilter_forDevice_(NTKLeghornPOIFilterEditOption, v14, v15, v5, v13);

  objc_msgSend_selectOption_forCustomEditMode_slot_(v10, v17, v18, v16, 16, 0);
  objc_msgSend_cleanupAfterTransitionToOption_forCustomEditMode_slot_(self, v19, v20, v16, 16, 0);
}

- (void)_tearDownPOIFilterView
{
  v4 = objc_msgSend__poiFilterView(self, a2, v2);
  if (v4)
  {
    objc_msgSend__removeFaceEditViewSubview_(self, v4, v5, v4);
  }

  MEMORY[0x2821F96F8]();
}

- (CGRect)_relativeKeylineFrameForPOIFilterView
{
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NTKLeghornFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v40[4] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v39.receiver = self;
  v39.super_class = NTKLeghornFaceView;
  v9 = [(NTKLeghornFaceView *)&v39 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    memset(v34, 0, sizeof(v34));
    sub_23BED6564(v8, v34);
    v10 = *&v35 + *&v35;
    v11 = objc_alloc_init(MEMORY[0x277D2BFC8]);
    v12 = objc_alloc(MEMORY[0x277D2C138]);
    v14 = objc_msgSend_initWithFaceView_dialDiameter_device_(v12, v13, v10, v9, v8);
    whistlerComplicationFactory = v9->_whistlerComplicationFactory;
    v9->_whistlerComplicationFactory = v14;

    v16 = v9->_whistlerComplicationFactory;
    v17 = *MEMORY[0x277D2BF10];
    v40[0] = *MEMORY[0x277D2BF08];
    v40[1] = v17;
    v18 = *MEMORY[0x277D2BEE8];
    v40[2] = *MEMORY[0x277D2BEE0];
    v40[3] = v18;
    v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v20, v40, 4);
    objc_msgSend_registerFactory_forSlots_(v11, v22, v23, v16, v21);

    objc_msgSend_setComplicationFactory_(v9, v24, v25, v11);
    v26 = objc_alloc(MEMORY[0x277D2C080]);
    v29 = objc_msgSend_initWithDevice_(v26, v27, v28, v8);
    complicationsFilterProvider = v9->_complicationsFilterProvider;
    v9->_complicationsFilterProvider = v29;

    v9->_statusIndicatorPolicy = objc_msgSend_statusIndicatorMove(NTKFoghornPreferences, v31, v32) ^ 1;
  }

  return v9;
}

- (void)dealloc
{
  objc_msgSend__setLive_(self, a2, v2, 0);
  v4.receiver = self;
  v4.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v4 dealloc];
}

- (void)setDataMode:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = NTKLeghornFaceView;
  v5 = [(NTKLeghornFaceView *)&v12 dataMode];
  v8 = v5;
  if (a3 == 1 && v5 == 3)
  {
    objc_msgSend__updateAveragePixelLuminance(self, v6, v7);
  }

  v11.receiver = self;
  v11.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v11 setDataMode:a3];
  if (a3 == 1 && v8 != 1)
  {
    objc_msgSend__refreshBezelFromDataSource(self, v9, v10);
  }
}

- (void)_applyDataMode
{
  v8.receiver = self;
  v8.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v8 _applyDataMode];
  v5 = objc_msgSend_dataMode(self, v3, v4);
  objc_msgSend__setLive_(self, v6, v7, v5);
}

- (void)_loadSnapshotContentViews
{
  v85.receiver = self;
  v85.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v85 _loadSnapshotContentViews];
  v3 = [NTKCircularBezelView alloc];
  objc_msgSend_bounds(self, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = objc_msgSend_device(self, v14, v6);
  v17 = objc_msgSend_initWithFrame_forDevice_(v3, v16, v7, v15, v9, v11, v13);
  bezelView = self->_bezelView;
  self->_bezelView = v17;

  v21 = objc_msgSend_contentView(self, v19, v20);
  objc_msgSend_addSubview_(v21, v22, v23, self->_bezelView);

  v24 = [NTKLeghornTimeView alloc];
  objc_msgSend_bounds(self, v25, v26);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = objc_msgSend_device(self, v35, v27);
  v38 = objc_msgSend_initWithFrame_forDevice_(v24, v37, v28, v36, v30, v32, v34);

  objc_msgSend_setTimeView_(self, v39, v40, v38);
  v43 = objc_msgSend_timeView(self, v41, v42);
  objc_msgSend_addSubview_(self, v44, v45, v43);

  v46 = objc_alloc(MEMORY[0x277D2C0E0]);
  objc_msgSend_bounds(self, v47, v48);
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = objc_msgSend_device(self, v57, v49);
  v60 = objc_msgSend_initWithFrame_forDeviceCornerRadius_(v46, v59, v50, v58, v52, v54, v56);
  cornerView = self->_cornerView;
  self->_cornerView = v60;

  v64 = objc_msgSend_contentView(self, v62, v63);
  objc_msgSend_addSubview_(v64, v65, v66, self->_cornerView);

  v69 = objc_msgSend_rootContainerView(self, v67, v68);
  objc_msgSend_bringSubviewToFront_(self, v70, v71, v69);

  v74 = objc_msgSend_rootContainerView(self, v72, v73);
  v77 = objc_msgSend_complicationContainerView(self, v75, v76);
  objc_msgSend_bringSubviewToFront_(v74, v78, v79, v77);

  v82 = objc_msgSend_timeView(self, v80, v81);
  objc_msgSend_bringSubviewToFront_(self, v83, v84, v82);
}

- (void)_unloadSnapshotContentViews
{
  v15.receiver = self;
  v15.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v15 _unloadSnapshotContentViews];
  bezelView = self->_bezelView;
  if (bezelView)
  {
    objc_msgSend_removeFromSuperview(bezelView, v3, v4);
    v6 = self->_bezelView;
    self->_bezelView = 0;
  }

  v7 = objc_msgSend_timeView(self, v3, v4);

  if (v7)
  {
    v10 = objc_msgSend_timeView(self, v8, v9);
    objc_msgSend_removeFromSuperview(v10, v11, v12);

    objc_msgSend_setTimeView_(self, v13, v14, 0);
  }
}

- (void)_prepareForEditing
{
  v7.receiver = self;
  v7.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v7 _prepareForEditing];
  objc_msgSend__setupPOIFilterView(self, v3, v4);
  objc_msgSend__updateFromPreferences(self, v5, v6);
}

- (void)_checkTransformsForView:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v5 = v3;
  v6 = 0;
  memset(&v11[1], 0, sizeof(CGAffineTransformComponents));
  if (v3)
  {
    objc_msgSend_transform(v3, v4, 0.0);
    v6 = 0;
  }

  *&v11[0].horizontalShear = v6;
  v11[0].translation = v6;
  v11[0].scale = v6;
  transform = v11[1];
  CGAffineTransformDecompose(v11, &transform);
  if (v11[0].scale.width != 1.0 || v11[0].scale.height != 1.0)
  {
    v8 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      LODWORD(transform.a) = 138412802;
      *(&transform.a + 4) = v9;
      WORD2(transform.b) = 2048;
      *(&transform.b + 6) = v11[0].scale.width;
      HIWORD(transform.c) = 2048;
      transform.d = v11[0].scale.height;
      v10 = v9;
      _os_log_error_impl(&dword_23BEB1000, v8, OS_LOG_TYPE_ERROR, "%@.transform bad scale = %f, %f", &transform, 0x20u);
    }
  }
}

- (void)_checkTransforms
{
  objc_msgSend__checkTransformsForView_(self, a2, v2, self);
  objc_msgSend__checkTransformsForView_(self, v4, v5, self->_bezelView);
  v10 = objc_msgSend_timeView(self, v6, v7);
  objc_msgSend__checkTransformsForView_(self, v8, v9, v10);
}

- (void)_fixTransforms
{
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  v12 = *MEMORY[0x277CBF2C0];
  v11 = v12;
  v13 = v10;
  v14 = *(MEMORY[0x277CBF2C0] + 32);
  v9 = v14;
  objc_msgSend_setTransform_(self, a2, *&v14, &v12);
  bezelView = self->_bezelView;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend_setTransform_(bezelView, v4, *&v9, &v12);
  v7 = objc_msgSend_timeView(self, v5, v6);
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend_setTransform_(v7, v8, *&v9, &v12);
}

- (void)_fixLayoutStyle
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend__currentHiVizStyle(self, a2, v2);
  if (objc_msgSend_hiVizComplicationStyle(self->_bezelView, v5, v6) != v4)
  {
    v8 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NTKLeghornHiVizComplicationStyleString(v9);
      v12 = NTKLeghornHiVizComplicationStyleString(v11);
      v15 = 136315650;
      v16 = "[NTKLeghornFaceView _fixLayoutStyle]";
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_23BEB1000, v8, OS_LOG_TYPE_DEFAULT, "%s: force resetting STYLE from %@ to %@", &v15, 0x20u);
    }
  }

  objc_msgSend__applyComplicationsLayoutFromHiVizStyle_toHiVizStyle_progress_(self, v7, 1.0, v4, v4);
  objc_msgSend__applyComplicationsAlphaForHiVizStyle_editMode_(self, v13, v14, v4, 0);
}

- (void)_cleanupAfterEditing
{
  v11.receiver = self;
  v11.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v11 _cleanupAfterEditing];
  objc_msgSend__tearDownPOIFilterView(self, v3, v4);
  objc_msgSend__checkTransforms(self, v5, v6);
  objc_msgSend__fixTransforms(self, v7, v8);
  objc_msgSend__fixLayoutStyle(self, v9, v10);
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
  MEMORY[0x2821F9670](v3);
}

- (void)_applyNightModeFraction:(double)a3
{
  if (self->_nightModeFraction != a3)
  {
    self->_nightModeFraction = a3;
    if (a3 == 0.0 || a3 == 1.0)
    {
      objc_msgSend__updateAveragePixelLuminance(self, a2, a3);
    }

    MEMORY[0x2821F9670](a3);
  }
}

- (void)_applyTransitionFraction:(double)a3 fromNightMode:(unint64_t)a4 toNightMode:(unint64_t)a5
{
  if (a4 != 2 && a5 != 2)
  {
    v8 = objc_msgSend__nightModeActiveFor_(self, a2, a3);
    v11 = v8 ^ objc_msgSend__nightModeActiveFor_(self, v9, v10, a5);
    v12 = 0.0;
    if (v8)
    {
      v12 = 1.0;
    }

    v13 = 1.0 - a3;
    if (!v8)
    {
      v13 = a3;
    }

    if (v11)
    {
      v12 = v13;
    }

    MEMORY[0x2821F9670](v12);
  }
}

- (void)_updateStatusBarColorForNightModeFraction:(double)a3
{
  if (a3 <= 0.5)
  {
    v14 = fabs(a3);
    if (v14 >= 0.00000011920929)
    {
      v5 = objc_msgSend_blackColor(MEMORY[0x277D75348], a2, 0.00000011920929);
      v16 = objc_msgSend_colorWithAlphaComponent_(v5, v15, a3 + a3);
      statusBarOverrideColor = self->_statusBarOverrideColor;
      self->_statusBarOverrideColor = v16;
    }

    else
    {
      v5 = self->_statusBarOverrideColor;
      self->_statusBarOverrideColor = 0;
    }
  }

  else
  {
    v5 = objc_msgSend_leghornFaceColorPalette(self, a2, 0.5);
    v8 = objc_msgSend_nightModeStatusBarColor(v5, v6, v7);
    v11 = objc_msgSend_blackColor(MEMORY[0x277D75348], v9, v10);
    v12 = MEMORY[0x23EEC10C0](v11, v8, a3 + -0.5 + a3 + -0.5);
    v13 = self->_statusBarOverrideColor;
    self->_statusBarOverrideColor = v12;

    v14 = a3;
  }

  v22 = objc_msgSend_delegate(self, v18, v19);
  v20 = fmin(v14, fabs(a3 + -1.0));
  objc_msgSend_faceViewDidChangeStatusBarOverrideColor_(v22, v21, v20, v20 < 0.00000011920929);
}

- (void)_applyComplicationsLayoutForComplicationsEditing
{
  v5 = objc_msgSend__currentHiVizStyle(self, a2, v2);

  objc_msgSend__applyComplicationsLayoutForHiVizPosition_states_(self, v4, v6, v5, &unk_284EB72B8);
}

- (void)_applyComplicationLayoutRuleForDevice:(id)a3 frame:(CGRect)a4 transform:(CGAffineTransform *)a5 slot:(id)a6 states:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v51 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a6;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = a7;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, 0.0, &v46, v50, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v47;
    v22 = *(MEMORY[0x277D768C8] + 8);
    v42 = v22;
    v43 = *MEMORY[0x277D768C8];
    v23 = *(MEMORY[0x277D768C8] + 16);
    v24 = *(MEMORY[0x277D768C8] + 24);
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v47 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v26 = objc_msgSend_integerValue(*(*(&v46 + 1) + 8 * i), v19, v22);
        v27 = objc_opt_class();
        if (objc_msgSend__isHiVizComplicationSlot_(v27, v28, v29, v16))
        {
          CDGraphicExtraLargeComplicationContentDiameter();
          v31 = v30;
          v52.origin.x = x;
          v52.origin.y = y;
          v52.size.width = width;
          v52.size.height = height;
          MidX = CGRectGetMidX(v52);
          v53.origin.x = x;
          v53.origin.y = y;
          v53.size.width = width;
          v53.size.height = height;
          MidY = CGRectGetMidY(v53);
          v34 = *&a5->c;
          v45[0] = *&a5->a;
          v45[1] = v34;
          v45[2] = *&a5->tx;
          v36 = objc_msgSend_layoutRuleForDevice_withReferenceFrame_horizontalLayout_verticalLayout_keylinePadding_clip_contentTransform_(MEMORY[0x277D2BFC0], v35, MidX - v31 * 0.5, v15, 3, 3, 0, v45, MidY - v31 * 0.5, v31, v31, v43, v42, v23, v24);
          v39 = objc_msgSend_complicationLayoutforSlot_(self, v37, v38, v16);
          objc_msgSend_setDefaultLayoutRule_forState_(v39, v40, v41, v36, v26);
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, v22, &v46, v50, 16);
    }

    while (v20);
  }
}

- (BOOL)_hiVizComplicationContainsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_msgSend__currentHiVizStyle(self, a2, a3.x);
  if (v6)
  {
    v8 = v6;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    v9 = objc_msgSend_device(self, v7, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    sub_23BED6564(v9, &v18);

    objc_msgSend_bounds(self, v10, v11);
    v13 = v12;
    v15 = v14;
    v16 = v20;
    v24 = 0.0;
    v25 = 0.0;
    v23 = 0.0;
    NTKCircularBezelViewHiVizComplicationCenterAndScaleFromHiVizStyleToHiVizStyle(v8, v8, &v24, &v23, *(&v19 + 1), *&v20, 1.0);
    LOBYTE(v6) = sqrt((v15 * 0.5 - v25 - y) * (v15 * 0.5 - v25 - y) + (v13 * 0.5 + v24 - x) * (v13 * 0.5 + v24 - x)) <= *(&v16 + 1) * v23;
  }

  return v6;
}

+ (void)_applyComplicationsLayoutForDevice:(id)a3 size:(CGSize)a4 fromHiVizStyle:(unint64_t)a5 toHiVizStyle:(unint64_t)a6 progress:(double)a7 block:(id)a8
{
  height = a4.height;
  width = a4.width;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  v14 = a8;
  sub_23BED6564(a3, v24);
  v16 = v26;
  v15 = *&v27;
  v23.a = 0.0;
  v23.b = 0.0;
  v22.a = 0.0;
  NTKCircularBezelViewHiVizComplicationCenterAndScaleFromHiVizStyleToHiVizStyle(a5, a6, &v23.a, &v22.a, *(&v25 + 1), *&v26, a7);
  v17 = width * 0.5 + v23.a - *(&v16 + 1) * v22.a;
  v18 = height * 0.5 - v23.b - *(&v16 + 1) * v22.a;
  v19 = *(&v16 + 1) * v22.a + *(&v16 + 1) * v22.a;
  memset(&v23, 0, sizeof(v23));
  CGAffineTransformMakeScale(&v23, v15 * v22.a, v15 * v22.a);
  v20 = *MEMORY[0x277D2BEF0];
  v21 = v14[2];
  v22 = v23;
  v21(v14, v20, &v22, v17, v18, v19, v19);
}

- (void)_applyComplicationsLayoutFromHiVizStyle:(unint64_t)a3 toHiVizStyle:(unint64_t)a4 progress:(double)a5
{
  v9 = objc_msgSend_device(self, a2, a5);
  objc_msgSend_bounds(self, v10, v11);
  v13 = v12;
  v15 = v14;
  v16 = objc_opt_class();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_23BED3BAC;
  v19[3] = &unk_278BA1360;
  v19[4] = self;
  v20 = v9;
  v21 = &unk_284EB72D0;
  v17 = v9;
  objc_msgSend__applyComplicationsLayoutForDevice_size_fromHiVizStyle_toHiVizStyle_progress_block_(v16, v18, v13, v17, a3, a4, v19, v15, a5);
}

- (void)_applyComplicationsLayoutForHiVizPosition:(unint64_t)a3 states:(id)a4
{
  v6 = a4;
  v9 = objc_msgSend_device(self, v7, v8);
  objc_msgSend_bounds(self, v10, v11);
  v13 = v12;
  v15 = v14;
  v16 = objc_opt_class();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_23BED3D04;
  v20[3] = &unk_278BA1360;
  v20[4] = self;
  v21 = v9;
  v22 = v6;
  v17 = v6;
  v18 = v9;
  objc_msgSend__applyComplicationsLayoutForDevice_size_fromHiVizStyle_toHiVizStyle_progress_block_(v16, v19, v13, v18, a3, a3, v20, v15, 1.0);
}

- (void)_loadLayoutRules
{
  v8.receiver = self;
  v8.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v8 _loadLayoutRules];
  v5 = objc_msgSend__currentHiVizStyle(self, v3, v4);
  objc_msgSend__applyComplicationsLayoutForHiVizPosition_states_(self, v6, v7, v5, &unk_284EB72E8);
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v6.receiver = self;
  v6.super_class = NTKLeghornFaceView;
  return [(NTKLeghornFaceView *)&v6 _newLegacyViewForComplication:a3 family:a4 slot:a5];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v15.receiver = self;
  v15.super_class = NTKLeghornFaceView;
  v6 = a4;
  v7 = a3;
  [(NTKLeghornFaceView *)&v15 _configureComplicationView:v7 forSlot:v6];
  objc_msgSend__applyComplicationFont_(self, v8, v9, v7, v15.receiver, v15.super_class);
  v12 = objc_msgSend__multiPalette(self, v10, v11);
  objc_msgSend__applyComplicationColor_withPalette_slot_(self, v13, v14, v7, v12, v6);
}

- (int64_t)_keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend__isHiVizComplicationSlot_(v5, v6, v7, v4))
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKLeghornFaceView;
    v8 = [(NTKLeghornFaceView *)&v10 _keylineStyleForComplicationSlot:v4];
  }

  return v8;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend__isHiVizComplicationSlot_(v5, v6, v7, v4))
  {
    v10 = MEMORY[0x277D2C078];
    v11 = objc_msgSend_device(self, v8, v9);
    objc_msgSend_cornerRadiusForComplicationFamily_forDevice_(v10, v12, v13, 1, v11);
    v15 = v14;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = NTKLeghornFaceView;
    [(NTKLeghornFaceView *)&v18 _keylineCornerRadiusForComplicationSlot:v4];
    v15 = v16;
  }

  return v15;
}

- (void)populateFaceViewEditOptionsFromFace:(id)a3
{
  objc_storeStrong(&self->_face, a3);
  v5 = a3;
  v6.receiver = self;
  v6.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v6 populateFaceViewEditOptionsFromFace:v5];
}

- (void)_applyComplicationFont:(id)a3
{
  v26 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_display(v26, v4, v5);
    objc_msgSend__applyComplicationFont_(self, v7, v8, v6);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_setFontStyle_(v26, v9, v10, 3);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = MEMORY[0x277CBBB08];
        v12 = v26;
        v15 = objc_msgSend_font(v12, v13, v14);
        objc_msgSend_pointSize(v15, v16, v17);
        v20 = objc_msgSend_foghornSimpleComplicationFontOfSize_(v11, v18, v19);
        v23 = objc_msgSend_CLKFontWithAlternativePunctuation(v20, v21, v22);
        objc_msgSend_setFont_(v12, v24, v25, v23);
      }
    }
  }
}

- (void)_applyComplicationColor:(id)a3 withPalette:(id)a4 slot:(id)a5
{
  v80 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_msgSend_display(v80, v10, v11);
    objc_msgSend__applyComplicationColor_withPalette_slot_(self, v13, v14, v12, v8, v9);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = objc_msgSend_complicationAccentColor(v8, v15, v16);
      objc_msgSend_setAccentColor_(self->_complicationsFilterProvider, v18, v19, v17);

      v22 = objc_msgSend_complicationNonAccentColor(v8, v20, v21);
      objc_msgSend_setNonAccentColor_(self->_complicationsFilterProvider, v23, v24, v22);

      v12 = v80;
      if (objc_msgSend_conformsToProtocol_(v12, v25, v26, &unk_28AA14B10))
      {
        v29 = v12;
        v32 = objc_msgSend_isFullScreen(v8, v30, v31);
        objc_msgSend_doubleValue(v32, v33, v34);
        v36 = v35;

        if (v36 <= 0.5)
        {
          nightModeFraction = self->_nightModeFraction;
          v57 = fmin(nightModeFraction / 0.4, 1.0);
          v58 = fmax(nightModeFraction + -0.4, 0.0) / 0.6;
          v40 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v37, 0.188235294, 0.0470588235, 0.0352941176, 1.0);
          v61 = objc_msgSend_clearColor(MEMORY[0x277D75348], v59, v60);
          v62 = MEMORY[0x23EEC10C0](v61, v40, v58);

          objc_msgSend_setTintedFraction_(v29, v63, v57);
          objc_msgSend_setTintedPlatterColor_(v29, v64, v65, v62);
        }

        else
        {
          objc_msgSend_setTintedFraction_(v29, v37, 1.0);
          v40 = objc_msgSend_clearColor(MEMORY[0x277D75348], v38, v39);
          objc_msgSend_setTintedPlatterColor_(v29, v41, v42, v40);
        }
      }

      v66 = objc_msgSend_isNightModeF(v8, v27, v28);
      objc_msgSend_floatValue(v66, v67, v68);
      v70 = v69;

      v73 = objc_msgSend_isMulticolorF(v8, v71, v72);
      objc_msgSend_floatValue(v73, v74, v75);
      v77 = 1.0 - v76;

      v79 = v70;
      if (v77 > v70)
      {
        v79 = v77;
      }

      if (v79 == 1.0)
      {
        objc_msgSend_updateMonochromeColor(v12, v78, v79);
      }

      else
      {
        objc_msgSend_transitionToMonochromeWithFraction_(v12, v78, v79);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = v80;
        v12 = objc_msgSend_simpleTextComplicationColor(v8, v44, v45);
        v48 = objc_msgSend_label(v43, v46, v47);

        objc_msgSend_setTextColor_(v48, v49, v50, v12);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_19;
        }

        v51 = v80;
        v12 = objc_msgSend_simpleTextComplicationColor(v8, v52, v53);
        objc_msgSend_setTextColor_(v51, v54, v55, v12);
      }
    }
  }

LABEL_19:
}

- (void)_applyPaletteToComplications:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23BED4578;
  v8[3] = &unk_278BA1388;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  objc_msgSend_enumerateComplicationDisplayWrappersWithBlock_(self, v6, v7, v8);
}

- (void)_updateViewColorsWithMultiPalette
{
  v6 = objc_msgSend__multiPalette(self, a2, v2);
  objc_msgSend__updateViewColorsWithPalette_(self, v4, v5, v6);
}

- (void)_updateViewColorsWithPalette:(id)a3
{
  v4 = a3;
  objc_msgSend__applyPaletteToComplications_(self, v5, v6, v4);
  objc_msgSend_activate(MEMORY[0x277CD9FF0], v7, v8);
  objc_msgSend_begin(MEMORY[0x277CD9FF0], v9, v10);
  objc_msgSend_setDisableActions_(MEMORY[0x277CD9FF0], v11, v12, 1);
  v24 = objc_msgSend_timeView(self, v13, v14);
  objc_msgSend_setPalette_(v24, v15, v16, v4);
  objc_msgSend_setNeedsDisplay(v24, v17, v18);
  objc_msgSend_setColorPalette_(self->_bezelView, v19, v20, v4);

  objc_msgSend__updateStatusBarColorForNightModeFraction_(self, v21, self->_nightModeFraction);
  objc_msgSend_commit(MEMORY[0x277CD9FF0], v22, v23);
}

- (void)_applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5
{
  v10 = objc_msgSend_interpolatedColorPalette(self, a2, a3, a4, a5);
  objc_msgSend_setTransitionFraction_(v10, v7, a3);
  objc_msgSend__updateViewColorsWithPalette_(self, v8, v9, v10);
}

- (void)_applyMultiPaletteFractions
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, self->_tritiumFraction);
  v16[0] = v3;
  v5 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v4, self->_nightModeFraction);
  v16[1] = v5;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, v7, v16, 2);

  v11 = objc_msgSend__multiPalette(self, v9, v10);
  objc_msgSend_setTransitionFractions_(v11, v12, v13, v8);

  objc_msgSend__updateViewColorsWithMultiPalette(self, v14, v15);
}

- (void)_applyComplicationsAlphaForTransitionFraction:(double)a3 fromHiVizStyle:(unint64_t)a4 toHiVizStyle:(unint64_t)a5 liveDisplayModeFraction:(double)a6 fromLiveDisplayMode:(unint64_t)a7 toLiveDisplayMode:(unint64_t)a8 editMode:(int64_t)a9
{
  if ((a9 - 14) >= 3)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = *MEMORY[0x277D2BF18];
  }

  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  CLKInterpolateBetweenFloatsClipped();
  v14 = v13;
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  CLKInterpolateBetweenFloatsClipped();
  v19 = v18 < 1.0;
  v20 = v12 * v18;
  v21 = v14 * v18;
  v22 = v16 * v18;
  if (v18 >= 1.0)
  {
    v21 = v14;
  }

  v25[0] = MEMORY[0x277D85DD0];
  v23 = v10 * v18;
  if (!v19)
  {
    v22 = v16;
    v20 = v12;
  }

  v25[1] = 3221225472;
  v25[2] = sub_23BED4994;
  v25[3] = &unk_278BA13B0;
  v25[4] = self;
  *&v25[5] = v20;
  *&v25[6] = v21;
  if (!v19)
  {
    v23 = v10;
  }

  *&v25[7] = v22;
  *&v25[8] = v23;
  objc_msgSend_enumerateComplicationDisplayWrappersWithBlock_(self, v17, v23, v25, *&a6);
}

- (void)_applyComplicationsAlphaForTransitionFraction:(double)a3 fromLiveDisplayMode:(unint64_t)a4 toLiveDisplayMode:(unint64_t)a5
{
  objc_msgSend__currentHiVizStyle(self, a2, a3);

  MEMORY[0x2821F9670](1.0);
}

- (unint64_t)_currentHiVizStyle
{
  v3 = objc_msgSend_optionForCustomEditMode_slot_(self, a2, v2, 14, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_hiVizStyle(v3, v4, v5);
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (unint64_t)_currentNightModePolicy
{
  v3 = objc_msgSend_optionForCustomEditMode_slot_(self, a2, v2, 18, 0);
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_nightMode(v3, v4, v5);
  }

  return v6;
}

- (id)_currentPOIFilter
{
  v3 = objc_msgSend_optionForCustomEditMode_slot_(self, a2, v2, 16, 0);
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_poiFilter(v3, v4, v5);
  }

  return v6;
}

- (double)_currentWaypointRadius
{
  objc_msgSend_waypointRadius(self->_face, a2, v2);
  if (result < 50.0)
  {

    objc_msgSend_defaultWaypointRadius(NTKLeghornFace, v3, result);
  }

  return result;
}

- (void)_applyTransitionFraction:(double)a3 fromHiVizStyle:(unint64_t)a4 toHiVizStyle:(unint64_t)a5 editMode:(int64_t)a6
{
  objc_msgSend_setFromHiVizComplicationStyle_toHiVizComplicationStyle_fraction_(self->_bezelView, a2, a3);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v12 = objc_msgSend_device(self, v11, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  sub_23BED6564(v12, &v27);

  objc_msgSend_bounds(self, v13, v14);
  v16 = v15;
  v18 = v17;
  v19 = v29;
  v33 = 0.0;
  v34 = 0.0;
  v32 = 0.0;
  NTKCircularBezelViewHiVizComplicationCenterAndScaleFromHiVizStyleToHiVizStyle(a4, a5, &v33, &v32, *(&v28 + 1), *&v29, a3);
  v20 = v16 * 0.5 + v33 - *(&v19 + 1) * v32;
  v21 = v18 * 0.5 - v34 - *(&v19 + 1) * v32;
  v22 = *(&v19 + 1) * v32 + *(&v19 + 1) * v32;
  v24 = objc_msgSend_normalComplicationDisplayWrapperForSlot_(self, v23, *(&v19 + 1) * v32, *MEMORY[0x277D2BEF0]);
  objc_msgSend_setFrame_(v24, v25, v20, v21, v22, v22);
  if (fabs(a3) < 2.22044605e-16 || fabs(a3 + -1.0) < 2.22044605e-16)
  {
    objc_msgSend__applyComplicationsLayoutFromHiVizStyle_toHiVizStyle_progress_(self, v26, a3, a4, a5);
  }

  objc_msgSend__applyComplicationsAlphaForTransitionFraction_fromHiVizStyle_toHiVizStyle_editMode_(self, v26, a3, a4, a5, a6);
}

- (unint64_t)_hiVizComplicationStyleForDisplayMode:(unint64_t)a3
{
  if (a3 != 3 && a3)
  {
    return 0;
  }

  else
  {
    return objc_msgSend__currentHiVizStyle(self, a2, v3);
  }
}

- (void)_applyHiVizStyleTransitionFraction:(double)a3 fromDisplayMode:(unint64_t)a4 toDisplayMode:(unint64_t)a5 editMode:(int64_t)a6
{
  v10 = objc_msgSend__hiVizComplicationStyleForDisplayMode_(self, a2, a3, a4);
  v14 = objc_msgSend__hiVizComplicationStyleForDisplayMode_(self, v11, v12, a5);

  objc_msgSend__applyTransitionFraction_fromHiVizStyle_toHiVizStyle_editMode_(self, v13, a3, v10, v14, a6);
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v52 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v40 = objc_msgSend_localizedName(v11, v14, v15);
    v43 = objc_msgSend_localizedName(v12, v41, v42);
    v44 = 136315906;
    v45 = "[NTKLeghornFaceView _applyTransitionFraction:fromOption:toOption:forCustomEditMode:slot:]";
    v46 = 2048;
    v47 = a3;
    v48 = 2112;
    v49 = v40;
    v50 = 2112;
    v51 = v43;
    _os_log_debug_impl(&dword_23BEB1000, v13, OS_LOG_TYPE_DEBUG, "%s: fraction = %f fromOption = %@ toOption = %@", &v44, 0x2Au);
  }

  if (a6 > 14)
  {
    if (a6 == 18)
    {
      v35 = objc_msgSend_nightMode(v11, v16, v17);
      v38 = objc_msgSend_nightMode(v12, v36, v37);
      objc_msgSend__applyTransitionFraction_fromNightMode_toNightMode_(self, v39, a3, v35, v38);
    }

    else if (a6 == 15)
    {
      v26 = objc_msgSend_timeView(self, v16, v17);
      v27 = v12;
      v30 = objc_msgSend_timeStyle(v11, v28, v29);
      v33 = objc_msgSend_timeStyle(v27, v31, v32);

      objc_msgSend_applyTransitionFraction_fromStyle_toStyle_(v26, v34, a3, v30, v33);
    }
  }

  else if (a6 == 10)
  {
    objc_msgSend__applyTransitionFraction_fromColor_toColor_(self, v16, a3, v11, v12);
  }

  else if (a6 == 14)
  {
    v18 = v12;
    v21 = objc_msgSend_hiVizStyle(v11, v19, v20);
    v24 = objc_msgSend_hiVizStyle(v18, v22, v23);

    objc_msgSend__applyTransitionFraction_fromHiVizStyle_toHiVizStyle_editMode_(self, v25, a3, v21, v24, 14);
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v40 = objc_msgSend_dataMode(self, v9, v10);
    v43 = objc_msgSend_localizedName(v7, v41, v42);
    v44 = 136316162;
    v45 = "[NTKLeghornFaceView _applyOption:forCustomEditMode:slot:]";
    v46 = 2048;
    v47 = self;
    v48 = 2048;
    v49 = v40;
    v50 = 2112;
    v51 = v43;
    v52 = 1024;
    v53 = a4;
    _os_log_debug_impl(&dword_23BEB1000, v8, OS_LOG_TYPE_DEBUG, "%s(%p): dataMode = %ld option = %@ mode = %u", &v44, 0x30u);
  }

  if (a4 <= 14)
  {
    if (a4 == 10)
    {
      v35 = objc_msgSend_interpolatedColorPalette(self, v11, v12);
      objc_msgSend_setTransitionFraction_(v35, v36, 1.0);

      multiPalette = self->_multiPalette;
      self->_multiPalette = 0;

      objc_msgSend__updateViewColorsWithMultiPalette(self, v38, v39);
    }

    else if (a4 == 14)
    {
      v19 = objc_msgSend_hiVizStyle(v7, v11, v12);
      objc_msgSend__applyTransitionFraction_fromHiVizStyle_toHiVizStyle_editMode_(self, v20, 1.0, v19, v19, 14);
    }
  }

  else
  {
    switch(a4)
    {
      case 18:
        v21 = objc_msgSend_nightMode(v7, v11, v12);
        objc_msgSend_setNightMode_(self, v22, v23, v21);
        v26 = objc_msgSend__currentHiVizStyle(self, v24, v25);
        objc_msgSend__applyComplicationsAlphaForHiVizStyle_editMode_(self, v27, v28, v26, 18);
        break;
      case 16:
        v29 = objc_msgSend_poiFilter(v7, v11, v12);
        v32 = objc_msgSend__poiFilterView(self, v30, v31);
        objc_msgSend_setPoiFilter_(v32, v33, v34, v29);

        break;
      case 15:
        v13 = objc_msgSend_timeView(self, v11, v12);
        v16 = objc_msgSend_timeStyle(v7, v14, v15);
        objc_msgSend_setTimeStyle_(v13, v17, v18, v16);

        break;
    }
  }
}

- (unint64_t)_effectiveNightModeForEditMode:(int64_t)a3
{
  result = 0;
  if (a3 != 1 && a3 != 10)
  {
    return objc_msgSend__nightModeActive(self, a2, v3);
  }

  return result;
}

- (double)_alphaForComplicationSlot:(id)a3 inEditOption:(id)a4 ofEditMode:(int64_t)a5
{
  v7 = a3;
  v10 = objc_msgSend__currentHiVizStyle(self, v8, v9);
  v11 = objc_opt_class();
  if (objc_msgSend__isHiVizComplicationSlot_(v11, v12, v13, v7))
  {
    v14 = *MEMORY[0x277D2BF18];
    if ((a5 - 15) >= 2)
    {
      v14 = 1.0;
    }

    v15 = v10 == 0;
LABEL_13:
    if (v15)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v14;
    }

    goto LABEL_16;
  }

  v16 = objc_opt_class();
  if (objc_msgSend__isLowerRightComplicationSlot_(v16, v17, v18, v7))
  {
    v14 = *MEMORY[0x277D2BF18];
    if ((a5 - 14) >= 3)
    {
      v14 = 1.0;
    }

    v15 = v10 == 2;
    goto LABEL_13;
  }

  v19 = objc_opt_class();
  isLowerLeftComplicationSlot = objc_msgSend__isLowerLeftComplicationSlot_(v19, v20, v21, v7);
  v14 = *MEMORY[0x277D2BF18];
  if (isLowerLeftComplicationSlot)
  {
    if ((a5 - 14) >= 3)
    {
      v14 = 1.0;
    }

    v15 = v10 == 1;
    goto LABEL_13;
  }

  if ((a5 - 14) >= 3)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = *MEMORY[0x277D2BF18];
  }

LABEL_16:

  return v23;
}

- (BOOL)_fadesComplicationSlot:(id)a3 inEditMode:(int64_t)a4
{
  if (a4 == 15)
  {
    return 1;
  }

  if (a4 != 14)
  {
    return 0;
  }

  v4 = a3;
  v5 = objc_opt_class();
  isHiVizComplicationSlot = objc_msgSend__isHiVizComplicationSlot_(v5, v6, v7, v4);

  return isHiVizComplicationSlot ^ 1;
}

- (id)_complicationSlotsHiddenByCurrentConfiguration
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend__currentHiVizStyle(self, a2, v3);
  if (v4 == 2)
  {
    v7 = MEMORY[0x277CBEB98];
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v6, &v12, 1, *MEMORY[0x277D2BEE8], v13, v14[0]);
  }

  else if (v4 == 1)
  {
    v7 = MEMORY[0x277CBEB98];
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v6, &v13, 1, v12, *MEMORY[0x277D2BEE0], v14[0]);
  }

  else
  {
    if (v4)
    {
      goto LABEL_8;
    }

    v7 = MEMORY[0x277CBEB98];
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v6, v14, 1, v12, v13, *MEMORY[0x277D2BEF0]);
  }
  v8 = ;
  v2 = objc_msgSend_setWithArray_(v7, v9, v10, v8);

LABEL_8:

  return v2;
}

- (void)_prepareComplicationsForSnapshotting
{
  v4 = objc_msgSend__currentHiVizStyle(self, a2, v2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_23BED5654;
  v6[3] = &unk_278BA13D8;
  v6[4] = self;
  v6[5] = v4;
  objc_msgSend_enumerateComplicationDisplayWrappersWithBlock_(self, v5, COERCE_DOUBLE(3221225472), v6);
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v14.receiver = self;
  v14.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v14 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    objc_msgSend__transformForRubberBandingFraction_(self, v8, a3);
    objc_msgSend_setTransform_(self, v9, v10, &v13);
    NTKAlphaForRubberBandingFraction();
    objc_msgSend_setAlpha_(self, v11, v12);
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
    return qword_278BA1440[a3 - 10];
  }
}

+ (void)_drawComplicationsSnapshotInContext:(CGContext *)a3 hiVizStyle:(unint64_t)a4 forDevice:(id)a5
{
  v8 = a5;
  CGContextSaveGState(a3);
  v10 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v9, 0.9, 0.05);
  v11 = v10;
  v14 = objc_msgSend_CGColor(v11, v12, v13);
  CGContextSetFillColorWithColor(a3, v14);

  objc_msgSend_screenBounds(v8, v15, v16);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_23BED5944;
  v20[3] = &unk_278BA13F8;
  v20[4] = a1;
  v20[5] = a4;
  v20[6] = a3;
  objc_msgSend__applyComplicationsLayoutForDevice_size_fromHiVizStyle_toHiVizStyle_progress_block_(a1, v17, v18, v8, a4, a4, v20, v19, 1.0);

  CGContextRestoreGState(a3);
}

+ (id)_snapshotImageForTimeStyle:(id)a3 hiVizStyle:(id)a4 colorPalette:(id)a5 poiFilterEditOption:(id)a6 withSelectedOptions:(id)a7 forDevice:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v20 = objc_msgSend_hiVizStyle(a4, v17, v18);
  if (v15)
  {
    v22 = objc_msgSend_poiFilter(v15, v19, v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v19, v21);
  objc_msgSend_scale(v23, v24, v25);
  v27 = v26;

  objc_msgSend_screenBounds(v16, v28, v29);
  v31 = v30;
  v33 = v32;
  v34 = objc_opt_new();
  objc_msgSend_setScale_(v34, v35, v27);
  v36 = objc_alloc(MEMORY[0x277D75560]);
  v38 = objc_msgSend_initWithSize_format_(v36, v37, v31, v34, v33);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = sub_23BED5BE8;
  v47[3] = &unk_278BA1420;
  v52 = v31;
  v53 = v33;
  v48 = v14;
  v49 = v22;
  v50 = v16;
  v51 = v13;
  v54 = v20;
  v55 = a1;
  v39 = v13;
  v40 = v16;
  v41 = v22;
  v42 = v14;
  v45 = objc_msgSend_imageWithActions_(v38, v43, v44, v47);

  return v45;
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v10 = a5;
  v12 = 0;
  v46 = v8;
  if (a4 > 14)
  {
    if (a4 == 15)
    {
      v17 = v8;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      if (v17)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    if (a4 == 16)
    {
      v16 = 0;
      v12 = 0;
      v14 = 0;
      v15 = v8;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      if (a4 != 18)
      {
        goto LABEL_14;
      }

      v16 = 0;
      v14 = 0;
      v15 = 0;
      v12 = v46;
    }

    goto LABEL_13;
  }

  if (a4 == 10)
  {
    v16 = 0;
    v12 = 0;
    v15 = 0;
    v14 = v8;
    goto LABEL_13;
  }

  v16 = v8;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  if (a4 == 14)
  {
LABEL_13:
    v13 = v12;
    v18 = v46;
    v12 = v16;
  }

LABEL_14:
  v19 = objc_msgSend_objectForKeyedSubscript_(v10, v9, v11, &unk_284EB7648);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v19;
  }

  else
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v13)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_23:
  v20 = objc_msgSend_objectForKeyedSubscript_(v10, v9, v11, &unk_284EB75D0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v20;
  }

  else
  {
    v12 = 0;
  }

  if (v13)
  {
LABEL_19:
    if (v14)
    {
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_27:
  v21 = objc_msgSend_objectForKeyedSubscript_(v10, v9, v11, &unk_284EB7618);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v21;
  }

  else
  {
    v13 = 0;
  }

  if (v14)
  {
LABEL_20:
    if (v15)
    {
      goto LABEL_21;
    }

LABEL_35:
    v23 = objc_msgSend_objectForKeyedSubscript_(v10, v9, v11, &unk_284EB7630);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v23;
    }

    else
    {
      v15 = 0;
    }

    if (!v17)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

LABEL_31:
  v22 = objc_msgSend_objectForKeyedSubscript_(v10, v9, v11, &unk_284EB7600);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v22;
  }

  else
  {
    v14 = 0;
  }

  if (!v15)
  {
    goto LABEL_35;
  }

LABEL_21:
  if (!v17)
  {
LABEL_45:
    v47.receiver = self;
    v47.super_class = NTKLeghornFaceView;
    v44 = v46;
    v43 = [(NTKLeghornFaceView *)&v47 _swatchImageForEditOption:v46 mode:a4 withSelectedOptions:v10];
    goto LABEL_46;
  }

LABEL_39:
  if (!v12 || !v13 || !v14)
  {
    goto LABEL_45;
  }

  v24 = objc_msgSend_leghornFaceColorPalette(self, v9, v11);
  v27 = objc_msgSend_copy(v24, v25, v26);

  objc_msgSend_setPigmentEditOption_(v27, v28, v29, v14);
  objc_msgSend_setBezelStyle_(v27, v30, v31, 0);
  if (objc_msgSend_nightMode(v13, v32, v33) == 1)
  {
    v36 = objc_msgSend_nightModeColorPalette(v27, v34, v35);

    v27 = v36;
  }

  v37 = objc_opt_class();
  v40 = objc_msgSend_device(self, v38, v39);
  v43 = objc_msgSend__snapshotImageForTimeStyle_hiVizStyle_colorPalette_poiFilterEditOption_withSelectedOptions_forDevice_(v37, v41, v42, v17, v12, v27, v15, v10, v40);

  v44 = v46;
LABEL_46:

  return v43;
}

- (void)_reorderSwitcherSnapshotView
{
  v11.receiver = self;
  v11.super_class = NTKLeghornFaceView;
  [(NTKLeghornFaceView *)&v11 _reorderSwitcherSnapshotView];
  v5 = objc_msgSend__currentHiVizStyle(self, v3, v4);
  v8 = objc_msgSend_toEditMode(self, v6, v7);
  objc_msgSend__applyComplicationsAlphaForHiVizStyle_editMode_(self, v9, v10, v5, v8);
}

- (void)_stopDataSource
{
  objc_msgSend_stop(self->_dataSource, a2, v2);
  dataSource = self->_dataSource;
  self->_dataSource = 0;
}

- (void)_setLive:(int64_t)a3
{
  v5 = a3 - 1;
  v6 = a3 != 1;
  v16 = objc_msgSend_timeView(self, a2, v3);
  objc_msgSend_setFrozen_(v16, v7, v8, v6);
  if (v5 > 1)
  {
    objc_msgSend__stopDataSource(self, v9, v10);
    v13 = objc_msgSend__currentPOIFilter(self, v11, v12);
    objc_msgSend_setToSnapshotValuesWithPOIFilter_(self->_bezelView, v14, v15, v13);
  }

  else
  {
    objc_msgSend__ensureDataSource(self, v9, v10);
  }
}

- (id)createFaceColorPalette
{
  v2 = [NTKLeghornFaceColorPalette alloc];
  v3 = objc_opt_class();
  v6 = objc_msgSend_initWithFaceClass_(v2, v4, v5, v3);

  return v6;
}

- (id)_multiPalette
{
  v48[4] = *MEMORY[0x277D85DE8];
  if (!self->_multiPalette)
  {
    v4 = objc_msgSend_leghornFaceColorPalette(self, a2, v2);
    v7 = objc_msgSend_nightModeColorPalette(v4, v5, v6);

    v8 = objc_alloc(MEMORY[0x277D2C088]);
    v11 = objc_msgSend_leghornFaceColorPalette(self, v9, v10);
    v48[0] = v11;
    v14 = objc_msgSend_leghornFaceColorPalette(self, v12, v13);
    v17 = objc_msgSend_tritiumPalette(v14, v15, v16);
    v48[1] = v17;
    v48[2] = v7;
    v20 = objc_msgSend_tritiumPalette(v7, v18, v19);
    v48[3] = v20;
    v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v22, v48, 4);
    v26 = objc_msgSend_initWithPalettes_(v8, v24, v25, v23);
    multiPalette = self->_multiPalette;
    self->_multiPalette = v26;
  }

  v28 = objc_msgSend__nightModeInterpolator(self, a2, v2);
  v29 = MEMORY[0x23EEC15B0]();
  v32 = objc_msgSend_colorInterpolators(self->_multiPalette, v30, v31);
  objc_msgSend_setObject_atIndexedSubscript_(v32, v33, v34, v29, 1);

  v36 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v35, self->_tritiumFraction);
  v47[0] = v36;
  v38 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v37, self->_nightModeFraction);
  v47[1] = v38;
  v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, v40, v47, 2);

  objc_msgSend_setTransitionFractions_(self->_multiPalette, v42, v43, v41);
  v44 = self->_multiPalette;
  v45 = v44;

  return v44;
}

@end