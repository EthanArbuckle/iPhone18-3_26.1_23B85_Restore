@interface NTKParmesanFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_allowsEditingSliderEditableColorsForSlot:(id)a3;
- (BOOL)_validateEditOption:(id)a3 forMode:(int64_t)a4;
- (BOOL)isPartiallySupportedNumeralSelected;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (CGRect)_timeKeylineFrameForFrame:(CGRect)a3;
- (NTKParmesanFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_contentViewAlphaForEditMode:(int64_t)a3;
- (id)_bottomComplication;
- (id)_colorStyleKeylineViewWithEditOption:(id)a3 slot:(id)a4;
- (id)_compositionKeyForCurrentCompositionWithTimeOption:(int64_t)a3 numerals:(unint64_t)a4;
- (id)_galleryViewWithComposition:(id)a3 timeOption:(int64_t)a4 typeface:(int64_t)a5 numerals:(unint64_t)a6 timePalette:(id)a7 contentEffect:(id)a8;
- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4 selectedSlot:(id)a5;
- (id)_paletteForStyle:(unint64_t)a3;
- (id)_storedPlaceholderName;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5 refreshHandler:(id)a6;
- (id)_swatchKeyForStyle:(int64_t)a3 stylePalette:(id)a4 timePalette:(id)a5 typeface:(int64_t)a6 numerals:(unint64_t)a7 time:(int64_t)a8 compositionSwatchKey:(id)a9;
- (id)_swatchKeyForTypeface:(int64_t)a3 numerals:(unint64_t)a4 palette:(id)a5;
- (id)_timeLabelWithTypeface:(int64_t)a3 numerals:(unint64_t)a4 palette:(id)a5;
- (id)_topComplication;
- (id)createFaceColorPalette;
- (unint64_t)_complicationVisibilityForEditMode:(int64_t)a3;
- (unint64_t)_currentComplicationVisibility;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (unint64_t)complicationVisibilityWithTopComplication:(id)a3 bottomComplication:(id)a4;
- (void)_applyBreathingAndRubberbanding;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyContentEffectColorTransitionFraction:(double)a3;
- (void)_applyDataMode;
- (void)_applyFaceState;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyShowContentForUnadornedSnapshot;
- (void)_applyTimeEffectStyle;
- (void)_applyTimeEffectStyleTransitionFraction:(double)a3;
- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_createStylePaletteIfNeeded;
- (void)_createTimePaletteIfNeeded;
- (void)_faceLibraryDismissed;
- (void)_invalidateComplicationViews;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_reloadComplicationAppearance;
- (void)_setupGallery;
- (void)_setupLibraryDismissedNotification;
- (void)_setupSwatchRefreshHandlerManagerIfNeeded;
- (void)_setupTimeFormatterIfNeeded;
- (void)_setupTimeView;
- (void)_teardownGallery;
- (void)_teardownLibraryDismissedNotification;
- (void)_transitionContentEffectFromStyle:(int64_t)a3 toStyle:(int64_t)a4 progress:(double)a5;
- (void)_unloadSnapshotContentViews;
- (void)_updateContentEffectWithStyle:(int64_t)a3;
- (void)_updateContents;
- (void)_updateForResourceDirectoryChange:(id)a3;
- (void)layoutSubviews;
@end

@implementation NTKParmesanFaceView

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v44 = a3;
  v6 = a4;
  v10 = objc_msgSend_parmesanComplicationFactory(self, v7, v8, v9);
  objc_msgSend_configureComplicationView_forSlot_(v10, v11, v44, v6);

  if (objc_msgSend_isEqualToString_(v6, v12, *MEMORY[0x277D2BF00], v13))
  {
    if (!objc_msgSend_isHidden(v44, v14, v15, v16) || (objc_msgSend_topComplicationVisible(self, v17, v18, v19) & 1) == 0) && ((objc_msgSend_isHidden(v44, v17, v18, v19) & 1) != 0 || (objc_msgSend_topComplicationVisible(self, v20, v21, v22)))
    {
      goto LABEL_15;
    }

    isHidden = objc_msgSend_isHidden(v44, v17, v18, v19);
    objc_msgSend_setTopComplicationVisible_(self, v24, isHidden ^ 1u, v25);
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v6, v14, *MEMORY[0x277D2BED0], v16) || (!objc_msgSend_isHidden(v44, v29, v30, v31) || (objc_msgSend_bottomComplicationVisible(self, v32, v33, v34) & 1) == 0) && ((objc_msgSend_isHidden(v44, v32, v33, v34) & 1) != 0 || (objc_msgSend_bottomComplicationVisible(self, v35, v36, v37) & 1) != 0))
    {
      goto LABEL_15;
    }

    v38 = objc_msgSend_isHidden(v44, v32, v33, v34);
    objc_msgSend_setBottomComplicationVisible_(self, v39, v38 ^ 1u, v40);
  }

  if ((objc_msgSend_editing(self, v26, v27, v28) & 1) == 0)
  {
    objc_msgSend__reloadComplicationAppearance(self, v41, v42, v43);
  }

LABEL_15:
}

- (void)_invalidateComplicationViews
{
  v4.receiver = self;
  v4.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v4 reconfigureComplicationViews];
  v3.receiver = self;
  v3.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v3 invalidateComplicationLayout];
}

- (void)_reloadComplicationAppearance
{
  v5 = objc_msgSend__currentComplicationVisibility(self, a2, v2, v3);
  v11 = objc_msgSend_controller(self, v6, v7, v8);
  objc_msgSend_setComplicationVisibility_(v11, v9, v5, v10);
}

- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6
{
  v10 = a5;
  v11 = a6;
  v37.receiver = self;
  v37.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v37 _applyTransitionFraction:a4 fromComplication:v10 toComplication:v11 slot:a3];
  if (objc_msgSend_isEqualToString_(v11, v12, *MEMORY[0x277D2BF00], v13))
  {
    v17 = v10;
  }

  else
  {
    v17 = objc_msgSend__topComplication(self, v14, v15, v16);
  }

  v20 = v17;
  if (objc_msgSend_isEqualToString_(v11, v18, *MEMORY[0x277D2BED0], v19))
  {
    v24 = v10;
  }

  else
  {
    v24 = objc_msgSend__bottomComplication(self, v21, v22, v23);
  }

  v28 = v24;
  if ((objc_msgSend_editing(self, v25, v26, v27) & 1) == 0)
  {
    v30 = objc_msgSend_complicationVisibilityWithTopComplication_bottomComplication_(self, v29, v20, v28);
    v34 = objc_msgSend_controller(self, v31, v32, v33);
    objc_msgSend_setComplicationVisibility_(v34, v35, v30, v36);
  }
}

- (unint64_t)complicationVisibilityWithTopComplication:(id)a3 bottomComplication:(id)a4
{
  v5 = a4;
  isVisible = objc_msgSend_isVisible(a3, v6, v7, v8);
  v13 = objc_msgSend_isVisible(v5, v10, v11, v12);

  if (isVisible && (v13 & 1) != 0)
  {
    return 3;
  }

  if ((isVisible ^ 1 | v13))
  {
    return (isVisible ^ 1) & v13;
  }

  return 2;
}

- (unint64_t)_currentComplicationVisibility
{
  v5 = objc_msgSend__topComplication(self, a2, v2, v3);
  v9 = objc_msgSend__bottomComplication(self, v6, v7, v8);
  v11 = objc_msgSend_complicationVisibilityWithTopComplication_bottomComplication_(self, v10, v5, v9);

  return v11;
}

- (id)_topComplication
{
  v4 = objc_msgSend_delegate(self, a2, v2, v3);
  v7 = objc_msgSend_faceViewComplicationForSlot_(v4, v5, *MEMORY[0x277D2BF00], v6);

  return v7;
}

- (id)_bottomComplication
{
  v4 = objc_msgSend_delegate(self, a2, v2, v3);
  v7 = objc_msgSend_faceViewComplicationForSlot_(v4, v5, *MEMORY[0x277D2BED0], v6);

  return v7;
}

- (void)_prepareForEditing
{
  v16.receiver = self;
  v16.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v16 _prepareForEditing];
  v6 = objc_msgSend_controller(self, v3, v4, v5);
  objc_msgSend_prepareForEditing(v6, v7, v8, v9);

  v13 = objc_msgSend_delegate(self, v10, v11, v12);
  objc_msgSend_faceViewWantsCustomKeylineFramesReloadedForEditMode_(v13, v14, 10, v15);
}

- (void)_cleanupAfterEditing
{
  v10.receiver = self;
  v10.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v10 _cleanupAfterEditing];
  v6 = objc_msgSend_controller(self, v3, v4, v5);
  objc_msgSend_cleanupAfterEditing(v6, v7, v8, v9);
}

- (void)_configureForEditMode:(int64_t)a3
{
  v23.receiver = self;
  v23.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v23 _configureForEditMode:?];
  v8 = objc_msgSend_contentView(self, v5, v6, v7);
  objc_msgSend__contentViewAlphaForEditMode_(self, v9, a3, v10);
  objc_msgSend_setAlpha_(v8, v11, v12, v13);

  v16 = objc_msgSend__complicationVisibilityForEditMode_(self, v14, a3, v15);
  v20 = objc_msgSend_controller(self, v17, v18, v19);
  objc_msgSend_setComplicationVisibility_(v20, v21, v16, v22);
}

- (unint64_t)_complicationVisibilityForEditMode:(int64_t)a3
{
  if (a3 == 1)
  {
    return 3;
  }

  else
  {
    return objc_msgSend__currentComplicationVisibility(self, a2, a3, v3);
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v36.receiver = self;
  v36.super_class = NTKParmesanFaceView;
  [NTKParmesanFaceView _configureForTransitionFraction:sel__configureForTransitionFraction_fromEditMode_toEditMode_ fromEditMode:? toEditMode:?];
  v11 = objc_msgSend__complicationVisibilityForEditMode_(self, v9, a4, v10);
  v14 = objc_msgSend__complicationVisibilityForEditMode_(self, v12, a5, v13);
  v18 = objc_msgSend_controller(self, v15, v16, v17);
  objc_msgSend_transitionFromComplicationVisibility_toComplicationVisibility_progress_(v18, v19, v11, v14, a3);

  objc_msgSend__contentViewAlphaForEditMode_(self, v20, a4, v21);
  v23 = v22;
  objc_msgSend__contentViewAlphaForEditMode_(self, v24, a5, v25);
  v30 = v29;
  if (v23 != v29)
  {
    sub_23BFF9200();
    v30 = v31;
  }

  v32 = objc_msgSend_contentView(self, v26, v27, v28);
  objc_msgSend_setAlpha_(v32, v33, v34, v35, v30);
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4
{
  v11.receiver = self;
  v11.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v11 _cleanupAfterTransitionComplicationSlot:a3 selectedComplication:a4];
  v8 = objc_msgSend_delegate(self, v5, v6, v7);
  objc_msgSend_faceViewWantsCustomKeylineFramesReloadedForEditMode_(v8, v9, 10, v10);
}

- (double)_contentViewAlphaForEditMode:(int64_t)a3
{
  if ((a3 - 13) >= 2)
  {
    result = 1.0;
    if (a3 == 1)
    {
      return *MEMORY[0x277D2BF18];
    }
  }

  else
  {
    isPartiallySupportedNumeralSelected = objc_msgSend_isPartiallySupportedNumeralSelected(self, a2, a3, v3);
    result = *MEMORY[0x277D2BF18];
    if (!isPartiallySupportedNumeralSelected)
    {
      return 1.0;
    }
  }

  return result;
}

- (BOOL)isPartiallySupportedNumeralSelected
{
  v2 = objc_msgSend_optionForCustomEditMode_slot_(self, a2, 19, 0);
  v6 = objc_msgSend_numeralOption(v2, v3, v4, v5);

  v9 = MEMORY[0x277D2C090];

  return objc_msgSend_isPartiallySupported_(v9, v7, v6, v8);
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v58 = a3;
  v8 = a5;
  v12 = v8;
  if (a4 > 13)
  {
    if (a4 == 14)
    {
      v29 = objc_msgSend_time(v58, v9, v10, v11);
      v33 = objc_msgSend_controller(self, v30, v31, v32);
      objc_msgSend_setTimeOption_(v33, v34, v29, v35);

      v39 = objc_msgSend_delegate(self, v36, v37, v38);
      objc_msgSend_faceViewWantsCustomKeylineFramesReloadedForEditMode_(v39, v40, 10, v41);

      goto LABEL_18;
    }

    if (a4 != 15)
    {
      if (a4 != 19)
      {
        goto LABEL_18;
      }

      v20 = objc_msgSend_numeralOption(v58, v9, v10, v11);
      v17 = objc_msgSend_controller(self, v21, v22, v23);
      objc_msgSend_setNumerals_(v17, v24, v20, v25);
      goto LABEL_14;
    }

    v48 = objc_msgSend_style(v58, v9, v10, v11);
    objc_msgSend__updateContentEffectWithStyle_(self, v49, v48, v50);
  }

  else
  {
    if (a4 != 10)
    {
      if (a4 == 12)
      {
        v42 = objc_msgSend_content(v58, v9, v10, v11);
        v17 = objc_msgSend_controller(self, v43, v44, v45);
        objc_msgSend_setContentOption_(v17, v46, v42, v47);
      }

      else
      {
        if (a4 != 13)
        {
          goto LABEL_18;
        }

        v13 = objc_msgSend_typeface(v58, v9, v10, v11);
        v17 = objc_msgSend_controller(self, v14, v15, v16);
        objc_msgSend_setTypeface_(v17, v18, v13, v19);
      }

LABEL_14:

      goto LABEL_18;
    }

    if (objc_msgSend_isEqualToString_(v8, v9, @"time-color", v11))
    {
      objc_msgSend__applyTimeEffectStyle(self, v26, v27, v28);
    }

    else if (objc_msgSend_isEqualToString_(v12, v26, @"style-color", v28))
    {
      v51 = objc_msgSend_optionForCustomEditMode_slot_(self, v9, 15, 0);
      v55 = objc_msgSend_style(v51, v52, v53, v54);

      objc_msgSend__updateContentEffectWithStyle_(self, v56, v55, v57);
    }
  }

LABEL_18:
  objc_msgSend__reloadComplicationAppearance(self, v9, v10, v11);
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v116 = a4;
  v12 = a5;
  v13 = a7;
  v17 = v13;
  if (a6 <= 13)
  {
    if (a6 != 10)
    {
      if (a6 != 13)
      {
        goto LABEL_16;
      }

      v28 = objc_msgSend_typeface(v116, v14, v15, v16);
      v32 = objc_msgSend_typeface(v12, v29, v30, v31);
      v26 = objc_msgSend_controller(self, v33, v34, v35);
      objc_msgSend_transitionFromTypeface_toTypeface_progress_(v26, v36, v28, v32, a3);
      goto LABEL_10;
    }

    if (objc_msgSend_isEqualToString_(v13, v14, @"time-color", v16))
    {
      v54 = objc_opt_class();
      v57 = objc_msgSend_pigmentFromOption_(v54, v55, v116, v56);
      v61 = objc_msgSend_interpolatedTimePalette(self, v58, v59, v60);
      v65 = objc_msgSend_fromPalette(v61, v62, v63, v64);
      objc_msgSend_setPigmentEditOption_(v65, v66, v57, v67);

      v68 = objc_opt_class();
      v71 = objc_msgSend_pigmentFromOption_(v68, v69, v12, v70);
      v75 = objc_msgSend_interpolatedTimePalette(self, v72, v73, v74);
      v79 = objc_msgSend_toPalette(v75, v76, v77, v78);
      objc_msgSend_setPigmentEditOption_(v79, v80, v71, v81);

      objc_msgSend__applyTimeEffectStyleTransitionFraction_(self, v82, v83, v84, a3);
    }

    else if (objc_msgSend_isEqualToString_(v17, v52, @"style-color", v53))
    {
      v85 = objc_opt_class();
      v88 = objc_msgSend_pigmentFromOption_(v85, v86, v116, v87);
      v92 = objc_msgSend_interpolatedStylePalette(self, v89, v90, v91);
      v96 = objc_msgSend_fromPalette(v92, v93, v94, v95);
      objc_msgSend_setPigmentEditOption_(v96, v97, v88, v98);

      v99 = objc_opt_class();
      v102 = objc_msgSend_pigmentFromOption_(v99, v100, v12, v101);
      v106 = objc_msgSend_interpolatedStylePalette(self, v103, v104, v105);
      v110 = objc_msgSend_toPalette(v106, v107, v108, v109);
      objc_msgSend_setPigmentEditOption_(v110, v111, v102, v112);

      objc_msgSend__applyContentEffectColorTransitionFraction_(self, v113, v114, v115, a3);
    }
  }

  else
  {
    if (a6 == 19)
    {
      v37 = objc_msgSend_numeralOption(v116, v14, v15, v16);
      v41 = objc_msgSend_numeralOption(v12, v38, v39, v40);
      v26 = objc_msgSend_controller(self, v42, v43, v44);
      objc_msgSend_transitionFromNumerals_toNumerals_progress_(v26, v45, v37, v41, a3);
LABEL_10:

      goto LABEL_16;
    }

    if (a6 != 15)
    {
      if (a6 != 14)
      {
        goto LABEL_16;
      }

      v18 = objc_msgSend_time(v116, v14, v15, v16);
      v22 = objc_msgSend_time(v12, v19, v20, v21);
      v26 = objc_msgSend_controller(self, v23, v24, v25);
      objc_msgSend_transitionFromTimeOption_toTimeOption_progress_(v26, v27, v18, v22, a3);
      goto LABEL_10;
    }

    v46 = objc_msgSend_style(v116, v14, v15, v16);
    v50 = objc_msgSend_style(v12, v47, v48, v49);
    objc_msgSend__transitionContentEffectFromStyle_toStyle_progress_(self, v51, v46, v50, a3);
  }

LABEL_16:
}

- (CGRect)_timeKeylineFrameForFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = objc_msgSend_controller(self, a2, v3, v4);
  v13 = objc_msgSend_galleryView(v9, v10, v11, v12);
  objc_msgSend_normalizedKeylineRect(v13, v14, v15, v16);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = x + v18 * width;
  v26 = y + v20 * height;
  v27 = width * v22;
  v28 = height * v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  v9 = v6;
  if (a3 != 10)
  {
    goto LABEL_7;
  }

  if (!objc_msgSend_isEqualToString_(v6, v7, @"time-color", v8))
  {
    if (objc_msgSend_isEqualToString_(v9, v10, @"style-color", v11))
    {
      NTKFaceEditingFullscreenKeylineMargin();
      v26 = v25;
      NTKKeylineWidth();
      v28 = -v27;
      objc_msgSend_bounds(self, v29, v30, v31);
      v24 = -(v28 + v26 * 2.0);
      goto LABEL_6;
    }

LABEL_7:
    v40.receiver = self;
    v40.super_class = NTKParmesanFaceView;
    [(NTKParmesanFaceView *)&v40 _relativeKeylineFrameForCustomEditMode:a3 slot:v9];
    goto LABEL_8;
  }

  NTKFaceEditingFullscreenKeylineMargin();
  v13 = v12;
  objc_msgSend_bounds(self, v14, v15, v16);
  objc_msgSend__timeKeylineFrameForFrame_(self, v17, v18, v19);
  v24 = v13 * -0.5;
LABEL_6:
  v41 = CGRectInset(*&v20, v24, v24);
LABEL_8:
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;

  v36 = x;
  v37 = y;
  v38 = width;
  v39 = height;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4 selectedSlot:(id)a5
{
  v8 = a4;
  v11 = a5;
  if (a3 != 10)
  {
LABEL_6:
    v20.receiver = self;
    v20.super_class = NTKParmesanFaceView;
    v14 = [(NTKParmesanFaceView *)&v20 _keylineViewForCustomEditMode:a3 slot:v8 selectedSlot:v11];
    goto LABEL_7;
  }

  if (!objc_msgSend_isEqualToString_(v8, v9, @"time-color", v10))
  {
    if (objc_msgSend_isEqualToString_(v8, v12, @"style-color", v13))
    {
      v16 = objc_msgSend_optionForCustomEditMode_slot_(self, v15, 10, v11);
      v18 = objc_msgSend__colorStyleKeylineViewWithEditOption_slot_(self, v17, v16, v8);

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  NTKKeylineCornerRadiusLarge();
  v14 = NTKKeylineViewWithContinuousCurveCornerRadius();
LABEL_7:
  v18 = v14;
LABEL_8:

  return v18;
}

- (id)_colorStyleKeylineViewWithEditOption:(id)a3 slot:(id)a4
{
  v33.receiver = self;
  v33.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v33 _faceViewFrameForEditMode:10 option:a3 slot:a4];
  objc_msgSend__timeKeylineFrameForFrame_(self, v5, v6, v7, 0.0, 0.0);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = MEMORY[0x277D75208];
  NTKKeylineCornerRadiusLarge();
  v21 = objc_msgSend_bezierPathWithRoundedRect_cornerRadius_(v16, v17, v18, v19, v9, v11, v13, v15, v20);
  v22 = NTKKeylineViewWithFullScreenContinuousCurves();
  v23 = MEMORY[0x277D2C068];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_23BF1B2C8;
  v31[3] = &unk_278BA6C10;
  v32 = v21;
  v24 = v21;
  v27 = objc_msgSend_touchableWithHandler_(v23, v25, v31, v26);
  objc_msgSend_setTouchable_(v22, v28, v27, v29);

  return v22;
}

- (void)_createTimePaletteIfNeeded
{
  v5 = objc_msgSend_timePalette(self, a2, v2, v3);

  if (!v5)
  {
    v9 = objc_msgSend_parmesanPalette(self, v6, v7, v8);
    v13 = objc_msgSend_copy(v9, v10, v11, v12);
    objc_msgSend_setTimePalette_(self, v14, v13, v15);
  }

  v16 = objc_msgSend_interpolatedTimePalette(self, v6, v7, v8);

  if (!v16)
  {
    v17 = objc_alloc(MEMORY[0x277D2C060]);
    v26 = objc_msgSend_timePalette(self, v18, v19, v20);
    v23 = objc_msgSend_initWithColorPalette_(v17, v21, v26, v22);
    objc_msgSend_setInterpolatedTimePalette_(self, v24, v23, v25);
  }
}

- (void)_applyTimeEffectStyle
{
  objc_msgSend__createTimePaletteIfNeeded(self, a2, v2, v3);
  v19 = objc_msgSend_optionForCustomEditMode_slot_(self, v5, 10, @"time-color");
  if (v19)
  {
    v9 = objc_msgSend_timePalette(self, v6, v7, v8);
    objc_msgSend_setPigmentEditOption_(v9, v10, v19, v11);
  }

  v12 = objc_msgSend_controller(self, v6, v7, v8);
  v16 = objc_msgSend_timePalette(self, v13, v14, v15);
  objc_msgSend_updateTimeEffectStyleWithPalette_(v12, v17, v16, v18);
}

- (void)_applyTimeEffectStyleTransitionFraction:(double)a3
{
  v24 = objc_msgSend_controller(self, a2, v3, v4);
  v10 = objc_msgSend_interpolatedTimePalette(self, v7, v8, v9);
  v14 = objc_msgSend_fromPalette(v10, v11, v12, v13);
  v18 = objc_msgSend_interpolatedTimePalette(self, v15, v16, v17);
  v22 = objc_msgSend_toPalette(v18, v19, v20, v21);
  objc_msgSend_transitionTimeEffectFromPalette_toPalette_progress_(v24, v23, v14, v22, a3);
}

- (void)_createStylePaletteIfNeeded
{
  v5 = objc_msgSend_stylePalette(self, a2, v2, v3);

  if (!v5)
  {
    v9 = objc_msgSend_parmesanPalette(self, v6, v7, v8);
    v13 = objc_msgSend_copy(v9, v10, v11, v12);
    objc_msgSend_setStylePalette_(self, v14, v13, v15);
  }

  v16 = objc_msgSend_interpolatedStylePalette(self, v6, v7, v8);

  if (!v16)
  {
    v17 = objc_alloc(MEMORY[0x277D2C060]);
    v26 = objc_msgSend_stylePalette(self, v18, v19, v20);
    v23 = objc_msgSend_initWithColorPalette_(v17, v21, v26, v22);
    objc_msgSend_setInterpolatedStylePalette_(self, v24, v23, v25);
  }
}

- (void)_updateContentEffectWithStyle:(int64_t)a3
{
  objc_msgSend__createStylePaletteIfNeeded(self, a2, a3, v3);
  v26 = objc_msgSend_optionForCustomEditMode_slot_(self, v6, 10, @"style-color");
  if (v26)
  {
    v10 = objc_msgSend_stylePalette(self, v7, v8, v9);
    objc_msgSend_setPigmentEditOption_(v10, v11, v26, v12);
  }

  v13 = [NTKParmesanGalleryContentEffect alloc];
  v17 = objc_msgSend_stylePalette(self, v14, v15, v16);
  v19 = objc_msgSend_initWithStyleOption_palette_(v13, v18, a3, v17);
  v23 = objc_msgSend_controller(self, v20, v21, v22);
  objc_msgSend_setContentEffect_(v23, v24, v19, v25);
}

- (void)_applyContentEffectColorTransitionFraction:(double)a3
{
  v5 = objc_msgSend_optionForCustomEditMode_slot_(self, a2, 15, 0);
  v9 = objc_msgSend_style(v5, v6, v7, v8);

  v13 = objc_msgSend_interpolatedStylePalette(self, v10, v11, v12);
  v36 = objc_msgSend_fromPalette(v13, v14, v15, v16);

  v17 = [NTKParmesanGalleryContentEffect alloc];
  v19 = objc_msgSend_initWithStyleOption_palette_(v17, v18, v9, v36);
  v23 = objc_msgSend_interpolatedStylePalette(self, v20, v21, v22);
  v27 = objc_msgSend_toPalette(v23, v24, v25, v26);

  v28 = [NTKParmesanGalleryContentEffect alloc];
  v30 = objc_msgSend_initWithStyleOption_palette_(v28, v29, v9, v27);
  v34 = objc_msgSend_controller(self, v31, v32, v33);
  objc_msgSend_transitionContentEffectFromEffect_toEffect_progress_(v34, v35, v19, v30, a3);
}

- (void)_transitionContentEffectFromStyle:(int64_t)a3 toStyle:(int64_t)a4 progress:(double)a5
{
  v23 = objc_msgSend__paletteForStyle_(self, a2, a3, a4);
  v9 = [NTKParmesanGalleryContentEffect alloc];
  v11 = objc_msgSend_initWithStyleOption_palette_(v9, v10, a3, v23);
  v14 = objc_msgSend__paletteForStyle_(self, v12, a4, v13);
  v15 = [NTKParmesanGalleryContentEffect alloc];
  v17 = objc_msgSend_initWithStyleOption_palette_(v15, v16, a4, v14);
  v21 = objc_msgSend_controller(self, v18, v19, v20);
  objc_msgSend_transitionContentEffectFromEffect_toEffect_progress_(v21, v22, v11, v17, a5);
}

- (BOOL)_allowsEditingSliderEditableColorsForSlot:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isEqualToString_(v4, v5, @"style-color", v6) && (objc_msgSend_optionForCustomEditMode_slot_(self, v7, 15, 0), v8 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend_style(v8, v9, v10, v11), v8, (v12 & 0xFFFFFFFFFFFFFFFELL) == 2))
  {
    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NTKParmesanFaceView;
    v13 = [(NTKParmesanFaceView *)&v15 _allowsEditingSliderEditableColorsForSlot:v4];
  }

  return v13;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  v9 = v6;
  if (a3 != 10 || !objc_msgSend_isEqualToString_(v6, v7, @"time-color", v8))
  {
    goto LABEL_6;
  }

  v13 = objc_msgSend_controller(self, v10, v11, v12);
  v17 = objc_msgSend_galleryView(v13, v14, v15, v16);
  v21 = objc_msgSend_timeTextAlignment(v17, v18, v19, v20);

  if (v21 == 2)
  {
    v22 = 392;
    goto LABEL_7;
  }

  if (!v21)
  {
    v22 = 416;
  }

  else
  {
LABEL_6:
    v24.receiver = self;
    v24.super_class = NTKParmesanFaceView;
    v22 = [(NTKParmesanFaceView *)&v24 _keylineLabelAlignmentForCustomEditMode:a3 slot:v9];
  }

LABEL_7:

  return v22;
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v14.receiver = self;
  v14.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v14 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 > 0xF || ((1 << a4) & 0x8401) == 0)
  {
    objc_msgSend_setBreathingFraction_(self, v8, v9, v10, a3);
    objc_msgSend__applyBreathingAndRubberbanding(self, v11, v12, v13);
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v17.receiver = self;
  v17.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v17 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 > 0xF || ((1 << a4) & 0x8401) == 0)
  {
    NTKAlphaForRubberBandingFraction();
    objc_msgSend_setAlpha_(self, v8, v9, v10);
    objc_msgSend_setRubberbandingFraction_(self, v11, v12, v13, a3);
    objc_msgSend__applyBreathingAndRubberbanding(self, v14, v15, v16);
  }
}

- (void)_applyBreathingAndRubberbanding
{
  objc_msgSend_breathingFraction(self, a2, v2, v3);
  NTKLargeElementScaleForBreathingFraction();
  v6 = v5;
  objc_msgSend_rubberbandingFraction(self, v7, v8, v9);
  NTKScaleForRubberBandingFraction();
  CGAffineTransformMakeScale(&v14, v6 * v10, v6 * v10);
  v13 = v14;
  objc_msgSend_setTransform_(self, v11, &v13, v12);
}

- (NTKParmesanFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v17.receiver = self;
  v17.super_class = NTKParmesanFaceView;
  v9 = [(NTKParmesanFaceView *)&v17 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [NTKParmesanFaceViewComplicationFactory alloc];
    v12 = objc_msgSend_initWithFaceView_device_(v10, v11, v9, v8);
    v13 = *(v9 + 110);
    *(v9 + 110) = v12;

    objc_msgSend_setComplicationFactory_(v9, v14, *(v9 + 110), v15);
  }

  return v9;
}

- (void)_loadSnapshotContentViews
{
  v28.receiver = self;
  v28.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v28 _loadSnapshotContentViews];
  v6 = objc_msgSend_blackColor(MEMORY[0x277D75348], v3, v4, v5);
  objc_msgSend_setBackgroundColor_(self, v7, v6, v8);

  objc_msgSend__setupGallery(self, v9, v10, v11);
  objc_msgSend__setupTimeView(self, v12, v13, v14);
  objc_msgSend__setupTapControl(self, v15, v16, v17);
  objc_msgSend__setupLibraryDismissedNotification(self, v18, v19, v20);
  objc_msgSend__updateContents(self, v21, v22, v23);
  v27.receiver = self;
  v27.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v27 invalidateComplicationLayout];
  objc_msgSend_layoutIfNeeded(self, v24, v25, v26);
}

- (void)_unloadSnapshotContentViews
{
  v15.receiver = self;
  v15.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v15 _unloadSnapshotContentViews];
  objc_msgSend__teardownLibraryDismissedNotification(self, v3, v4, v5);
  objc_msgSend__teardownTapControl(self, v6, v7, v8);
  objc_msgSend__teardownTimeView(self, v9, v10, v11);
  objc_msgSend__teardownGallery(self, v12, v13, v14);
}

- (void)_setupGallery
{
  v5 = objc_msgSend_currentFaceState(self, a2, v2, v3);
  previousFaceState = self->_previousFaceState;
  self->_previousFaceState = v5;

  v7 = [NTKParmesanGalleryContentEffect alloc];
  v11 = objc_msgSend_parmesanPalette(self, v8, v9, v10);
  v84 = objc_msgSend_initWithStyleOption_palette_(v7, v12, 0, v11);

  v13 = [NTKParmesanGalleryController alloc];
  objc_msgSend_bounds(self, v14, v15, v16);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v28 = objc_msgSend_device(self, v25, v26, v27);
  v30 = objc_msgSend_initWithFrame_device_faceState_contentEffect_(v13, v29, v28, self->_previousFaceState, v84, v18, v20, v22, v24);
  controller = self->_controller;
  self->_controller = v30;

  v38 = objc_msgSend__storedPlaceholderName(self, v32, v33, v34);
  if (v38)
  {
    objc_msgSend_setPlaceholderName_(self->_controller, v35, v38, v37);
  }

  v39 = objc_msgSend_contentView(self, v35, v36, v37);
  v43 = objc_msgSend_galleryView(self->_controller, v40, v41, v42);
  objc_msgSend_addSubview_(v39, v44, v43, v45);

  parmesanComplicationFactory = self->_parmesanComplicationFactory;
  v50 = objc_msgSend_galleryView(self->_controller, v47, v48, v49);
  objc_msgSend_setTransitionDelegate_(v50, v51, parmesanComplicationFactory, v52);

  v56 = objc_msgSend_complicationContainerView(self, v53, v54, v55);
  objc_msgSend_removeFromSuperview(v56, v57, v58, v59);
  v63 = objc_msgSend_galleryView(self->_controller, v60, v61, v62);
  v67 = objc_msgSend_complicationVibrantEffectView(v63, v64, v65, v66);
  objc_msgSend_addMaskingSubview_(v67, v68, v56, v69);

  v73 = objc_msgSend_rootContainerView(self, v70, v71, v72);
  v77 = objc_msgSend_galleryView(self->_controller, v74, v75, v76);
  v81 = objc_msgSend_complicationVibrantEffectView(v77, v78, v79, v80);
  objc_msgSend_addSubview_(v73, v82, v81, v83);
}

- (void)_teardownGallery
{
  v5 = objc_msgSend_galleryView(self->_controller, a2, v2, v3);
  objc_msgSend_removeFromSuperview(v5, v6, v7, v8);

  controller = self->_controller;
  self->_controller = 0;
}

- (void)_setupTimeView
{
  v11 = objc_msgSend_galleryView(self->_controller, a2, v2, v3);
  v8 = objc_msgSend_face_timeView(v11, v5, v6, v7);
  objc_msgSend_setTimeView_(self, v9, v8, v10);
}

- (void)_setupLibraryDismissedNotification
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_addObserver_selector_name_object_(v6, v5, self, sel__faceLibraryDismissed, *MEMORY[0x277D2BF38], 0);
}

- (void)_teardownLibraryDismissedNotification
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_removeObserver_(v7, v5, self, v6);
}

- (void)_applyShowContentForUnadornedSnapshot
{
  v13.receiver = self;
  v13.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v13 _applyShowContentForUnadornedSnapshot];
  v6 = objc_msgSend_timeView(self, v3, v4, v5);
  v10 = objc_msgSend_showContentForUnadornedSnapshot(self, v7, v8, v9);
  objc_msgSend_setHidden_(v6, v11, v10, v12);
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v2 layoutSubviews];
}

- (id)_storedPlaceholderName
{
  v5 = objc_msgSend_placeholderCustomDataKey(NTKParmesanGalleryPlaceholderDataSource, a2, v2, v3);
  v9 = objc_msgSend_delegate(self, v6, v7, v8);
  v12 = objc_msgSend_faceViewDidRequestCustomDataForKey_(v9, v10, v5, v11);

  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_updateForResourceDirectoryChange:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v21 _updateForResourceDirectoryChange:v4];
  v8 = objc_msgSend_resourceDirectory(self, v5, v6, v7);
  v9 = NTKEqualStrings();

  if ((v9 & 1) == 0)
  {
    v13 = objc_msgSend_logObject(NTKParmesanFaceBundle, v10, v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_msgSend_resourceDirectory(self, v14, v15, v16);
      *buf = 138412546;
      v23 = v4;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_23BF0C000, v13, OS_LOG_TYPE_DEFAULT, "_updateForResourceDirectoryChange: change resource directory from %@ to %@", buf, 0x16u);
    }

    objc_msgSend__updateContents(self, v18, v19, v20);
  }
}

- (void)_updateContents
{
  controller = self->_controller;
  if (controller)
  {
    v6 = objc_msgSend_resourceDirectory(self, a2, v2, v3);
    objc_msgSend_setResourceDirectory_(controller, v7, v6, v8);

    v11 = self->_controller;

    MEMORY[0x2821F9670](v11, sel_loadCurrentComposition, v9, v10);
  }
}

- (void)_applyDataMode
{
  v6.receiver = self;
  v6.super_class = NTKParmesanFaceView;
  [(NTKParmesanFaceView *)&v6 _applyDataMode];
  objc_msgSend__applyFaceState(self, v3, v4, v5);
}

- (void)_applyFaceState
{
  obj = objc_msgSend_currentFaceState(self, a2, v2, v3);
  if ((objc_msgSend_isEqual_(self->_previousFaceState, v5, obj, v6) & 1) == 0)
  {
    objc_msgSend_setFaceState_(self->_controller, v7, obj, v8);
    objc_msgSend_dataMode(self, v9, v10, v11);
    objc_storeStrong(&self->_previousFaceState, obj);
  }
}

- (void)_faceLibraryDismissed
{
  if (objc_msgSend_dataMode(self, a2, v2, v3) == 1)
  {
    v11 = objc_msgSend_galleryView(self->_controller, v5, v6, v7);
    objc_msgSend_enableTimeChangeAnimations(v11, v8, v9, v10);
  }
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKParmesanColorPalette);

  return v2;
}

- (id)_paletteForStyle:(unint64_t)a3
{
  v6 = objc_msgSend_stylePalette(self, a2, a3, v3);
  v10 = objc_msgSend_copy(v6, v7, v8, v9);

  v14 = objc_msgSend_delegate(self, v11, v12, v13);
  v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v15, a3, v16);
  v21 = objc_msgSend_stringValue(v17, v18, v19, v20);
  v24 = objc_msgSend_faceViewDidRequestCustomDataForKey_(v14, v22, v21, v23);

  if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend_pigmentNamed_(MEMORY[0x277D2C0B0], v25, v24, v26), (v29 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v30 = [NTKParmesanPigmentProviderCoordinator alloc];
    v33 = objc_msgSend_initWithSelectedStyle_(v30, v31, a3, v32);
    v29 = objc_msgSend_defaultColorOptionForSlot_(v33, v34, @"style-color", v35);
    v39 = objc_msgSend_JSONObjectRepresentation(v29, v36, v37, v38);
    v43 = objc_msgSend_delegate(self, v40, v41, v42);
    v46 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v44, a3, v45);
    v50 = objc_msgSend_stringValue(v46, v47, v48, v49);
    objc_msgSend_faceViewDidUpdateCustomData_forKey_(v43, v51, v39, v50);
  }

  objc_msgSend_setPigmentEditOption_(v10, v27, v29, v28);

  return v10;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if ((a3 - 12) > 7)
  {
    return 0;
  }

  else
  {
    return qword_278BA7568[a3 - 12];
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5 refreshHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ((objc_msgSend__needCustomSwatchImageForEditMode_(self, v13, a4, v14) & 1) == 0)
  {
    v335.receiver = self;
    v335.super_class = NTKParmesanFaceView;
    v65 = [(NTKParmesanFaceView *)&v335 _swatchImageForEditOption:v10 mode:a4 withSelectedOptions:v11];
LABEL_12:
    v66 = v65;
    goto LABEL_53;
  }

  objc_msgSend__setupSwatchRefreshHandlerManagerIfNeeded(self, v15, v16, v17);
  objc_msgSend__setupTimeFormatterIfNeeded(self, v18, v19, v20);
  if ((objc_msgSend__validateEditOption_forMode_(self, v21, v10, a4) & 1) == 0)
  {
    v334.receiver = self;
    v334.super_class = NTKParmesanFaceView;
    v65 = [(NTKParmesanFaceView *)&v334 _swatchImageForEditOption:v10 mode:a4 withSelectedOptions:v11 refreshHandler:v12];
    goto LABEL_12;
  }

  v25 = 0;
  if (a4 > 14)
  {
    if (a4 == 15)
    {
      v99 = objc_msgSend_controller(self, v22, v23, v24);
      v323 = objc_msgSend_typeface(v99, v100, v101, v102);

      v106 = objc_msgSend_controller(self, v103, v104, v105);
      v110 = objc_msgSend_numerals(v106, v107, v108, v109);

      v319 = objc_msgSend_style(v10, v111, v112, v113);
      v51 = objc_msgSend__paletteForStyle_(self, v114, v319, v115);
      v119 = objc_msgSend_controller(self, v116, v117, v118);
      v123 = objc_msgSend_timeOption(v119, v120, v121, v122);

      v125 = objc_msgSend__compositionKeyForCurrentCompositionWithTimeOption_numerals_(self, v124, v123, v110);
      v129 = objc_msgSend_timePalette(self, v126, v127, v128);
      v25 = objc_msgSend__swatchKeyForStyle_stylePalette_timePalette_typeface_numerals_time_compositionSwatchKey_(self, v130, v319, v51, v129, v323, v110, v123, v125);

      goto LABEL_25;
    }

    if (a4 != 19)
    {
      goto LABEL_26;
    }

    v67 = objc_msgSend_controller(self, v22, v23, v24);
    v71 = objc_msgSend_typeface(v67, v68, v69, v70);

    v75 = objc_msgSend_numeralOption(v10, v72, v73, v74);
    if (objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v76, v75, v77))
    {
      v81 = 0;
    }

    else
    {
      v81 = v71;
    }

    v51 = objc_msgSend_timePalette(self, v78, v79, v80);
    objc_msgSend__swatchKeyForTypeface_numerals_palette_(self, v82, v81, v75, v51);
  }

  else
  {
    if (a4 != 13)
    {
      if (a4 != 14)
      {
        goto LABEL_26;
      }

      v26 = objc_msgSend_controller(self, v22, v23, v24);
      v322 = objc_msgSend_typeface(v26, v27, v28, v29);

      v33 = objc_msgSend_controller(self, v30, v31, v32);
      v37 = objc_msgSend_numerals(v33, v34, v35, v36);

      v41 = objc_msgSend_controller(self, v38, v39, v40);
      v45 = objc_msgSend_contentEffect(v41, v42, v43, v44);
      v318 = objc_msgSend_styleOption(v45, v46, v47, v48);

      v51 = objc_msgSend__paletteForStyle_(self, v49, v318, v50);
      v55 = objc_msgSend_time(v10, v52, v53, v54);
      if (objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v56, v37, v57))
      {
        v37 = 0;
        objc_msgSend__compositionKeyForCurrentCompositionWithTimeOption_numerals_(self, v58, v55, 0);
      }

      else
      {
        objc_msgSend__compositionKeyForCurrentCompositionWithTimeOption_numerals_(self, v58, v55, v37);
      }
      v59 = ;
      v63 = objc_msgSend_timePalette(self, v60, v61, v62);
      v25 = objc_msgSend__swatchKeyForStyle_stylePalette_timePalette_typeface_numerals_time_compositionSwatchKey_(self, v64, v318, v51, v63, v322, v37, v55, v59);

      goto LABEL_25;
    }

    v83 = objc_msgSend_controller(self, v22, v23, v24);
    v87 = objc_msgSend_numerals(v83, v84, v85, v86);

    v91 = objc_msgSend_typeface(v10, v88, v89, v90);
    if (objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v92, v87, v93))
    {
      v97 = 0;
    }

    else
    {
      v97 = v87;
    }

    v51 = objc_msgSend_timePalette(self, v94, v95, v96);
    objc_msgSend__swatchKeyForTypeface_numerals_palette_(self, v98, v91, v97, v51);
  }
  v25 = ;
LABEL_25:

LABEL_26:
  v131 = objc_msgSend_swatchRefreshHandlerManager(self, v22, v23, v24);
  v135 = objc_msgSend_copy(v12, v132, v133, v134);
  objc_msgSend_setHandler_forKey_(v131, v136, v135, v25);

  v139 = objc_msgSend_cachedSwatchForKey_(MEMORY[0x277D2C108], v137, v25, v138);
  v66 = v139;
  if (!v139)
  {
    objc_msgSend_sizeForSwatchStyle_(MEMORY[0x277D2BFE8], v140, 3, v141);
    if (a4 > 14)
    {
      if (a4 == 15)
      {
        v321 = v10;
        v248 = objc_msgSend_style(v321, v245, v246, v247);
        v317 = objc_msgSend__paletteForStyle_(self, v249, v248, v250);
        v254 = objc_msgSend_controller(self, v251, v252, v253);
        v314 = objc_msgSend_numerals(v254, v255, v256, v257);

        v261 = objc_msgSend_controller(self, v258, v259, v260);
        v265 = objc_msgSend_timeOption(v261, v262, v263, v264);

        v266 = [NTKParmesanGalleryContentEffect alloc];
        v325 = objc_msgSend_initWithStyleOption_palette_(v266, v267, v248, v317);
        isPartiallySupported = objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v268, v314, v269);
        v274 = 3;
        if (!isPartiallySupported)
        {
          v274 = v265;
        }

        v311 = v274;
        v315 = objc_msgSend_controller(self, v271, v272, v273);
        v309 = objc_msgSend_currentComposition(v315, v275, v276, v277);
        v312 = objc_msgSend_controller(self, v278, v279, v280);
        v308 = objc_msgSend_typeface(v312, v281, v282, v283);
        v287 = objc_msgSend_controller(self, v284, v285, v286);
        v291 = objc_msgSend_numerals(v287, v288, v289, v290);
        v295 = objc_msgSend_timePalette(self, v292, v293, v294);
        v182 = objc_msgSend__galleryViewWithComposition_timeOption_typeface_numerals_timePalette_contentEffect_(self, v296, v309, v311, v308, v291, v295, v325);

        v297 = MEMORY[0x277D2BFE8];
        v301 = objc_msgSend_swatchStyle(v321, v298, v299, v300);

        objc_msgSend_sizeForSwatchStyle_(v297, v302, v301, v303);
        v191 = v304;
        v193 = v305;

        v194 = v317;
LABEL_49:

        v244 = 0;
LABEL_50:
        if (v182)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_23BF35F2C;
          block[3] = &unk_278BA7548;
          v331 = v191;
          v332 = v193;
          v327 = v182;
          v328 = self;
          v329 = v25;
          v333 = v244;
          v330 = v12;
          v306 = v182;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }

        goto LABEL_52;
      }

      if (a4 != 19)
      {
        goto LABEL_52;
      }

      v195 = v10;
      v199 = objc_msgSend_numeralOption(v195, v196, v197, v198);
      v203 = objc_msgSend_controller(self, v200, v201, v202);
      v207 = objc_msgSend_typeface(v203, v204, v205, v206);

      if (objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v208, v199, v209))
      {
        v213 = 0;
      }

      else
      {
        v213 = v207;
      }

      v214 = objc_msgSend_timePalette(self, v210, v211, v212);
      objc_msgSend__timeLabelWithTypeface_numerals_palette_(self, v215, v213, v199, v214);
    }

    else
    {
      if (a4 != 13)
      {
        if (a4 != 14)
        {
          goto LABEL_52;
        }

        v324 = v10;
        v146 = objc_msgSend_time(v324, v143, v144, v145);
        v150 = objc_msgSend_controller(self, v147, v148, v149);
        v154 = objc_msgSend_numerals(v150, v151, v152, v153);

        if (objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v155, v154, v156))
        {
          v160 = 0;
        }

        else
        {
          v160 = v154;
        }

        v313 = v160;
        v161 = objc_msgSend_controller(self, v157, v158, v159);
        v320 = objc_msgSend_compositionForCurrentAssetWithTimeOption_numerals_(v161, v162, v146, v160);

        v316 = objc_msgSend_controller(self, v163, v164, v165);
        v310 = objc_msgSend_typeface(v316, v166, v167, v168);
        v172 = objc_msgSend_timePalette(self, v169, v170, v171);
        v176 = objc_msgSend_controller(self, v173, v174, v175);
        v180 = objc_msgSend_contentEffect(v176, v177, v178, v179);
        v182 = objc_msgSend__galleryViewWithComposition_timeOption_typeface_numerals_timePalette_contentEffect_(self, v181, v320, v146, v310, v313, v172, v180);

        v183 = MEMORY[0x277D2BFE8];
        v187 = objc_msgSend_swatchStyle(v324, v184, v185, v186);

        objc_msgSend_sizeForSwatchStyle_(v183, v188, v187, v189);
        v191 = v190;
        v193 = v192;
        v194 = v320;
        goto LABEL_49;
      }

      v195 = v10;
      v219 = objc_msgSend_typeface(v195, v216, v217, v218);
      v223 = objc_msgSend_controller(self, v220, v221, v222);
      v227 = objc_msgSend_numerals(v223, v224, v225, v226);

      if (objc_msgSend_isPartiallySupported_(NTKParmesanNumeralsEditOption, v228, v227, v229))
      {
        v233 = 0;
      }

      else
      {
        v233 = v227;
      }

      v214 = objc_msgSend_timePalette(self, v230, v231, v232);
      objc_msgSend__timeLabelWithTypeface_numerals_palette_(self, v234, v219, v233, v214);
    }
    v182 = ;

    v235 = MEMORY[0x277D2BFE8];
    v239 = objc_msgSend_swatchStyle(v195, v236, v237, v238);

    objc_msgSend_sizeForSwatchStyle_(v235, v240, v239, v241);
    v191 = v242;
    v193 = v243;
    v244 = 1;
    goto LABEL_50;
  }

  v142 = v139;
LABEL_52:

LABEL_53:

  return v66;
}

- (id)_compositionKeyForCurrentCompositionWithTimeOption:(int64_t)a3 numerals:(unint64_t)a4
{
  v6 = objc_msgSend_controller(self, a2, a3, a4);
  v8 = objc_msgSend_compositionForCurrentAssetWithTimeOption_numerals_(v6, v7, a3, a4);

  if (v8)
  {
    v12 = objc_msgSend_swatchKey(v8, v9, v10, v11);
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v9, a3, v11);
    v12 = objc_msgSend_stringWithFormat_(v13, v15, @"empty-composition-%@", v16, v14);
  }

  return v12;
}

- (id)_swatchKeyForTypeface:(int64_t)a3 numerals:(unint64_t)a4 palette:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v12 = objc_msgSend_numberWithInteger_(v8, v10, a3, v11);
  v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v13, a4, v14);
  v19 = objc_msgSend_identifier(v9, v16, v17, v18);

  v22 = objc_msgSend_stringWithFormat_(v7, v20, @"parmesan-typeface-%@-numerals-%@-palette-%@", v21, v12, v15, v19);

  return v22;
}

- (id)_swatchKeyForStyle:(int64_t)a3 stylePalette:(id)a4 timePalette:(id)a5 typeface:(int64_t)a6 numerals:(unint64_t)a7 time:(int64_t)a8 compositionSwatchKey:(id)a9
{
  v43 = MEMORY[0x277CCACA8];
  v14 = MEMORY[0x277CCABB0];
  v15 = a9;
  v16 = a5;
  v17 = a4;
  v20 = objc_msgSend_numberWithInteger_(v14, v18, a3, v19);
  v24 = objc_msgSend_identifier(v17, v21, v22, v23);

  v28 = objc_msgSend_identifier(v16, v25, v26, v27);

  v31 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v29, a6, v30);
  v34 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v32, a7, v33);
  v37 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v35, a8, v36);
  v40 = objc_msgSend_stringWithFormat_(v43, v38, @"parmesan-%@-%@-%@-%@-%@-%@-%@", v39, v20, v24, v28, v31, v34, v37, v15);

  return v40;
}

- (id)_timeLabelWithTypeface:(int64_t)a3 numerals:(unint64_t)a4 palette:(id)a5
{
  v8 = MEMORY[0x277D2BFE8];
  v9 = a5;
  objc_msgSend_sizeForSwatchStyle_(v8, v10, 4, v11);
  v13 = v12;
  v15 = v14;
  v16 = *MEMORY[0x277CBF348];
  v17 = *(MEMORY[0x277CBF348] + 8);
  v18 = CLKLocaleNumberSystemFromNumeralOption();
  v22 = objc_msgSend_swatchTimeFormatter(self, v19, v20, v21);
  objc_msgSend_setForcedNumberSystem_(v22, v23, v18, v24);

  v28 = objc_msgSend_swatchTimeFormatter(self, v25, v26, v27);
  v29 = NTKIdealizedDate();
  objc_msgSend_setOverrideDate_(v28, v30, v29, v31);

  v32 = [NTKParmesanSwatchTimeLabel alloc];
  v36 = objc_msgSend_initWithFrame_(v32, v33, v34, v35, v16, v17, v13, v15);
  v37 = [NTKParmesanTimeLayout alloc];
  v39 = objc_msgSend_initWithAlignment_scale_(v37, v38, 0, 1);
  v43 = objc_msgSend_device(self, v40, v41, v42);
  objc_msgSend_prepareForSwatchWithLayout_typeface_complicationVisibility_palette_numerals_device_(v36, v44, v39, a3, 0, v9, a4, v43);

  v48 = objc_msgSend_swatchTimeFormatter(self, v45, v46, v47);
  v52 = objc_msgSend_timeText(v48, v49, v50, v51);
  objc_msgSend_setText_(v36, v53, v52, v54);

  objc_msgSend_setFrame_(v36, v55, v56, v57, v16, v17, v13, v15);
  objc_msgSend_layoutIfNeeded(v36, v58, v59, v60);
  objc_msgSend_setNeedsDisplay(v36, v61, v62, v63);

  return v36;
}

- (id)_galleryViewWithComposition:(id)a3 timeOption:(int64_t)a4 typeface:(int64_t)a5 numerals:(unint64_t)a6 timePalette:(id)a7 contentEffect:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a3;
  v17 = [NTKParmesanGalleryView alloc];
  objc_msgSend_bounds(self, v18, v19, v20);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v32 = objc_msgSend_device(self, v29, v30, v31);
  v36 = objc_msgSend_timeLayout(v16, v33, v34, v35);
  v38 = objc_msgSend_initWithFrame_device_typeface_numerals_timeOption_timeLayout_timePalette_(v17, v37, v32, a5, a6, a4, v36, v15, v22, v24, v26, v28);

  objc_msgSend_setIsGeneratingSwatch_(v38, v39, 1, v40);
  v44 = objc_msgSend_face_timeView(v38, v41, v42, v43);
  v45 = NTKIdealizedDate();
  objc_msgSend_setOverrideDate_duration_(v44, v46, v45, v47, 0.0);

  objc_msgSend_setComposition_(v38, v48, v16, v49);
  objc_msgSend_setContentEffect_(v38, v50, v14, v51);

  objc_msgSend_setNeedsLayout(v38, v52, v53, v54);
  objc_msgSend_setNeedsDisplay(v38, v55, v56, v57);

  return v38;
}

- (void)_setupSwatchRefreshHandlerManagerIfNeeded
{
  v5 = objc_msgSend_swatchRefreshHandlerManager(self, a2, v2, v3);

  if (!v5)
  {
    v8 = objc_alloc_init(MEMORY[0x277D2C100]);
    objc_msgSend_setSwatchRefreshHandlerManager_(self, v6, v8, v7);
  }
}

- (void)_setupTimeFormatterIfNeeded
{
  v5 = objc_msgSend_swatchTimeFormatter(self, a2, v2, v3);

  if (!v5)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBBBA8]);
    objc_msgSend_setSwatchTimeFormatter_(self, v6, v8, v7);
  }
}

- (BOOL)_validateEditOption:(id)a3 forMode:(int64_t)a4
{
  v5 = a3;
  if (a4 - 13) <= 6 && ((0x47u >> (a4 - 13)))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end