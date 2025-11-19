@interface NTKParmesanFaceViewComplicationFactory
+ ($F24F406B2B787EFB06265DBA3D28CBD5)transitionFadeInRange;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)transitionFadeOutRange;
+ (int64_t)parmesanSlotForSlot:(id)a3 alignment:(int64_t)a4;
- (CGSize)_edgeGapForState:(int64_t)a3;
- (NTKFaceView)faceView;
- (NTKParmesanFaceViewComplicationFactory)initWithFaceView:(id)a3 device:(id)a4;
- (double)_keylinePaddingForState:(int64_t)a3;
- (id)_slotForParmesanSlot:(int64_t)a3;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)newViewForComplication:(id)a3 family:(int64_t)a4 forSlot:(id)a5;
- (void)_applyAlignmentForLayout:(id)a3;
- (void)_setPlacementforComplicationView:(id)a3;
- (void)configureComplicationLayout:(id)a3 forParmesanSlot:(int64_t)a4 withBounds:(CGRect)a5 forState:(int64_t)a6;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)loadLayoutRules;
- (void)transitioningFromParmesanTimeLayout:(id)a3 toParmesanTimeLayout:(id)a4 withProgress:(double)a5;
@end

@implementation NTKParmesanFaceViewComplicationFactory

- (NTKParmesanFaceViewComplicationFactory)initWithFaceView:(id)a3 device:(id)a4
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = NTKParmesanFaceViewComplicationFactory;
  v8 = [(NTKFaceViewComplicationFactory *)&v18 initForDevice:v7];
  v11 = v8;
  if (v8)
  {
    objc_msgSend_setFaceView_(v8, v9, v6, v10);
    objc_storeStrong(&v11->_device, a4);
    v12 = *MEMORY[0x277D2BED0];
    v19[0] = *MEMORY[0x277D2BF00];
    v19[1] = v12;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v19, 2);
    objc_msgSend_setSupportedComplicationSlots_(v11, v15, v14, v16);

    v11->_alignment = 0;
  }

  return v11;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = MEMORY[0x277D74410];
  if (isKindOfClass)
  {
    v8 = v5;
    objc_msgSend__setPlacementforComplicationView_(self, v9, v8, v10);
    v14 = objc_msgSend_device(self, v11, v12, v13);
    NTKUtilityComplicationFontSize();
    objc_msgSend_setFontSize_(v8, v15, v16, v17);

    v21 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v18, v19, v20);
    objc_msgSend_setForegroundColor_(v8, v22, v21, v23);

    objc_msgSend_setForegroundAlpha_(v8, v24, v25, v26, 1.0);
    objc_msgSend_setFontWeight_(v8, v27, v28, v29, *v7);
    objc_msgSend_setUseRoundedFontDesign_(v8, v30, 0, v31);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v5;
    objc_msgSend_setTextLayoutStyle_(v32, v33, 0, v34);
    v38 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v35, v36, v37);
    objc_msgSend_setTextColor_(v32, v39, v38, v40);

    v44 = objc_msgSend_device(self, v41, v42, v43);
    NTKUtilityComplicationFontSize();
    objc_msgSend_setFontSize_(v32, v45, v46, v47);

    objc_msgSend_setFontWeight_(v32, v48, v49, v50, *v7);
    if (CLKLayoutIsRTL())
    {
      objc_msgSend_setImagePlacement_(v32, v51, 2, v52);
    }

    else
    {
      objc_msgSend_setImagePlacement_(v32, v51, 1, v52);
    }

    v56 = objc_msgSend_device(self, v53, v54, v55);
    NTKUtilityComplicationLabelImagePadding();
    objc_msgSend_setImagePadding_(v32, v57, v58, v59);

    v63 = objc_msgSend_device(self, v60, v61, v62);
    _UtilitarianFlatImageSizeForDevice();

    objc_msgSend_setImageMaxSize_(v32, v64, v65, v66, 0.0, 0.0);
    alignment = self->_alignment;
    if (alignment <= 2)
    {
      objc_msgSend_setTextAlignment_(v32, v67, qword_23C0010E0[alignment], v68);
    }
  }
}

- (void)loadLayoutRules
{
  v4 = objc_msgSend_faceView(self, a2, v2, v3);
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    NTKEnumerateComplicationStates();
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF715C(v6);
    }
  }
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = MEMORY[0x277D2C120];
  v9 = a5;
  v10 = a3;
  v14 = objc_msgSend_complicationType(v10, v11, v12, v13);
  v17 = objc_msgSend_smallComplicationViewForType_(v8, v15, v14, v16);
  v19 = objc_msgSend_newViewForComplication_family_forSlot_(self, v18, v10, a4, v9);

  return v19;
}

- (id)newViewForComplication:(id)a3 family:(int64_t)a4 forSlot:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (objc_msgSend_complicationType(v8, v10, v11, v12) == 56)
  {
    v16 = objc_alloc(MEMORY[0x277D2C150]);
    v19 = objc_msgSend_initWithFamily_(v16, v17, a4, v18);
    objc_msgSend_configureComplicationView_forSlot_(self, v20, v19, v9);
  }

  else
  {
    v21 = MEMORY[0x277D2C120];
    v22 = objc_msgSend_complicationType(v8, v13, v14, v15);
    v19 = objc_msgSend_smallComplicationViewForType_(v21, v23, v22, v24);
  }

  return v19;
}

- (id)_slotForParmesanSlot:(int64_t)a3
{
  if (a3 > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(&unk_278BA6CD0 + a3);
  }

  return v4;
}

- (void)configureComplicationLayout:(id)a3 forParmesanSlot:(int64_t)a4 withBounds:(CGRect)a5 forState:(int64_t)a6
{
  height = a5.size.height;
  width = a5.size.width;
  v13 = objc_msgSend_faceView(self, a2, a3, a4, a5.origin.x, a5.origin.y);
  if (v13)
  {
    objc_msgSend__keylinePaddingForState_(self, v11, a6, v12);
    v15 = v14;
    objc_msgSend__edgeGapForState_(self, v16, a6, v17);
    v19 = v15 + v18;
    v21 = v15 + v20;
    sub_23BF1D5AC(self->_device, v42);
    v22 = v43;
    sub_23BF1D5AC(self->_device, v42);
    v23 = v44;
    sub_23BF1D5AC(self->_device, v42);
    v27 = 0;
    v28 = height - v23;
    v29 = width - v22;
    v30 = 0.0;
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v30 = v28 - v21;
        v19 = v29 - v19;
      }

      else
      {
        if (a4 == 4)
        {
          v30 = v21 + v45;
          goto LABEL_19;
        }

        v31 = 0.0;
        if (a4 != 5)
        {
          goto LABEL_21;
        }

        v30 = v28 - v21;
      }
    }

    else
    {
      if (!a4)
      {
        v30 = v21 + v45;
        v19 = v29 * 0.5;
        goto LABEL_19;
      }

      if (a4 != 1)
      {
        v31 = 0.0;
        if (a4 == 2)
        {
          v30 = v21 + v45;
          v19 = v29 - v19;
LABEL_19:
          v33 = MEMORY[0x277D2BF00];
          goto LABEL_20;
        }

LABEL_21:
        v34 = MEMORY[0x277D2BFC0];
        v35 = objc_msgSend_device(self, v24, v25, v26);
        v37 = objc_msgSend_layoutRuleForDevice_withReferenceFrame_horizontalLayout_verticalLayout_keylinePadding_clip_(v34, v36, v35, 3, 3, 1, v31, v30, v22, v23, v15, v15, v15, v15);

        v40 = objc_msgSend_complicationLayoutforSlot_(v13, v38, v27, v39);
        objc_msgSend_setDefaultLayoutRule_forState_(v40, v41, v37, a6);

        goto LABEL_22;
      }

      v30 = v28 - v21;
      v19 = v29 * 0.5;
    }

    v33 = MEMORY[0x277D2BED0];
LABEL_20:
    v27 = *v33;
    v31 = v19;
    goto LABEL_21;
  }

  v32 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_23BFF71A0(v32);
  }

LABEL_22:
}

- (CGSize)_edgeGapForState:(int64_t)a3
{
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
    {
      v4 = objc_msgSend_device(self, a2, 1, v3);
      sub_23BF1D5AC(v4, &v9);
      v5 = v11;
    }

    else
    {
      v4 = objc_msgSend_device(self, a2, a3, v3);
      sub_23BF1D5AC(v4, &v9);
      v5 = v10;
    }
  }

  else
  {
    v4 = objc_msgSend_device(self, a2, a3, v3);
    sub_23BF1D5AC(v4, &v9);
    v5 = v12;
  }

  v8 = v5;

  v7 = *(&v8 + 1);
  v6 = *&v8;
  result.height = v7;
  result.width = v6;
  return result;
}

- (double)_keylinePaddingForState:(int64_t)a3
{
  v3 = 0.0;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    NTKKeylineWidth();
    v6 = v5;
    v10 = objc_msgSend_device(self, v7, v8, v9);
    sub_23BF1D5AC(v10, v12);
    v3 = v6 + v12[0];
  }

  return v3;
}

- (void)_setPlacementforComplicationView:(id)a3
{
  v4 = a3;
  v8 = v4;
  alignment = self->_alignment;
  if (alignment == 2)
  {
    objc_msgSend_setPlacement_(v4, v5, 2, v6);
  }

  else
  {
    objc_msgSend_setPlacement_(v4, v5, 8 * (alignment == 1), v6);
  }
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)transitionFadeOutRange
{
  v2 = 0.0;
  v3 = 0.5;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)transitionFadeInRange
{
  v2 = 0.5;
  v3 = 1.0;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (void)transitioningFromParmesanTimeLayout:(id)a3 toParmesanTimeLayout:(id)a4 withProgress:(double)a5
{
  v20 = a3;
  v8 = a4;
  if (a5 >= 0.5)
  {
    v9 = v8;
  }

  else
  {
    v9 = v20;
  }

  v10 = v9;
  v14 = objc_msgSend__complicationAlignment(v10, v11, v12, v13);
  if (v14 != objc_msgSend_alignment(self, v15, v16, v17))
  {
    objc_msgSend__applyAlignmentForLayout_(self, v18, v10, v19);
  }
}

- (void)_applyAlignmentForLayout:(id)a3
{
  v5 = objc_msgSend__complicationAlignment(a3, a2, a3, v3);
  objc_msgSend_setAlignment_(self, v6, v5, v7);
  v14 = objc_msgSend_faceView(self, v8, v9, v10);
  objc_msgSend__invalidateComplicationViews(v14, v11, v12, v13);
}

+ (int64_t)parmesanSlotForSlot:(id)a3 alignment:(int64_t)a4
{
  v5 = a3;
  v6 = *MEMORY[0x277D2BF00];
  isEqualToString = objc_msgSend_isEqualToString_(v5, v7, *MEMORY[0x277D2BF00], v8);
  if (a4 || (isEqualToString & 1) == 0)
  {
    v13 = *MEMORY[0x277D2BED0];
    v14 = objc_msgSend_isEqualToString_(v5, v10, *MEMORY[0x277D2BED0], v11);
    if (a4 || (v14 & 1) == 0)
    {
      v17 = objc_msgSend_isEqualToString_(v5, v15, v6, v16);
      if (a4 == 1 && (v17 & 1) != 0)
      {
        v12 = 2;
      }

      else
      {
        v20 = objc_msgSend_isEqualToString_(v5, v18, v13, v19);
        if (a4 == 1 && (v20 & 1) != 0)
        {
          v12 = 3;
        }

        else
        {
          v23 = objc_msgSend_isEqualToString_(v5, v21, v6, v22);
          if (a4 == 2 && (v23 & 1) != 0)
          {
            v12 = 4;
          }

          else if (((a4 == 2) & objc_msgSend_isEqualToString_(v5, v24, v13, v25)) != 0)
          {
            v12 = 5;
          }

          else
          {
            v12 = 0;
          }
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

@end