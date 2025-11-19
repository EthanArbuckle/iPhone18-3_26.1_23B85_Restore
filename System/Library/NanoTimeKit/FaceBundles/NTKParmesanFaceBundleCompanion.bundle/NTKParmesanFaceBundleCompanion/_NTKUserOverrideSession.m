@interface _NTKUserOverrideSession
- (_NTKUserOverrideSession)initWithEditedAsset:(id)a3;
- (id)previewModelForDevice:(id)a3 subsampleFactor:(double)a4;
@end

@implementation _NTKUserOverrideSession

- (_NTKUserOverrideSession)initWithEditedAsset:(id)a3
{
  v157 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v155.receiver = self;
  v155.super_class = _NTKUserOverrideSession;
  v8 = [(_NTKUserOverrideSession *)&v155 init];
  if (!v8)
  {
    goto LABEL_33;
  }

  v9 = objc_msgSend_phAsset(v4, v5, v6, v7);
  v13 = objc_msgSend_ntk_getFullSizePHAssetData(v9, v10, v11, v12);

  if (!v13)
  {
    goto LABEL_37;
  }

  v14 = sub_23BF2AF68(v13);
  if (!objc_msgSend_addOriginalAssetAndMaskData(v4, v15, v16, v17))
  {
    goto LABEL_37;
  }

  v18 = NTKCGImagePropertyOrientationToUIImageOrientation();
  v19 = MEMORY[0x277D2BFA8];
  v23 = objc_msgSend_subsampleFactor(v4, v20, v21, v22);
  v25 = objc_msgSend__subsampledImageWithData_orientation_subsampleFactor_(v19, v24, v13, v18, v23);
  photoImage = v8->_photoImage;
  v8->_photoImage = v25;

  v30 = objc_msgSend_fullSizeMaskData(v4, v27, v28, v29);

  if (v30 && (objc_msgSend_fullSizeMaskData(v4, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), v35 = sub_23BF2B03C(v34), v34, v35))
  {
    v36 = objc_alloc(MEMORY[0x277D3B3D0]);
    v37 = 1;
    v39 = objc_msgSend_initWithMaskImage_orientation_(v36, v38, v35, 1);
    v40 = [_NTKParmesanPreviewValidatorImplementation alloc];
    v43 = objc_msgSend_initWithPFLCValidator_(v40, v41, v39, v42);
    previewValidator = v8->_previewValidator;
    v8->_previewValidator = v43;

    v48 = objc_msgSend_CGImage(v8->_photoImage, v45, v46, v47);
    v49 = sub_23BF2AD4C(v48, v14, v35);
    v51 = objc_msgSend_imageWithCGImage_scale_orientation_(MEMORY[0x277D755B8], v50, v49, 0, 1.0);
    photoImageMasked = v8->_photoImageMasked;
    v8->_photoImageMasked = v51;

    CGImageRelease(v49);
    CGImageRelease(v35);
  }

  else
  {
    v37 = 0;
  }

  v53 = objc_msgSend_userOverrides(v4, v31, v32, v33);
  v57 = objc_msgSend_count(v53, v54, v55, v56);

  if (v57)
  {
    LOBYTE(v61) = 1;
  }

  else
  {
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v62 = objc_msgSend_asset(v4, v58, v59, v60, 0);
    v66 = objc_msgSend_layouts(v62, v63, v64, v65);
    v70 = objc_msgSend_allValues(v66, v67, v68, v69);

    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v151, v156, 16);
    if (v61)
    {
      v75 = *v152;
      while (2)
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v152 != v75)
          {
            objc_enumerationMutation(v70);
          }

          if (objc_msgSend_userEdited(*(*(&v151 + 1) + 8 * i), v72, v73, v74))
          {
            LOBYTE(v61) = 1;
            goto LABEL_20;
          }
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v72, &v151, v156, 16);
        if (v61)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

  v8->_canRevert = v61;
  v77 = objc_msgSend_userOverrides(v4, v58, v59, v60);
  v81 = objc_msgSend_count(v77, v78, v79, v80);

  if (!v81)
  {
    v102 = objc_msgSend_asset(v4, v82, v83, v84);
    v101 = objc_msgSend_preferredLayout(v102, v103, v104, v105);

    if (v101 || (objc_msgSend_originalAsset(v4, v106, v107, v108), v109 = objc_claimAutoreleasedReturnValue(), objc_msgSend_preferredLayout(v109, v110, v111, v112), v101 = objc_claimAutoreleasedReturnValue(), v109, v101))
    {
      v116 = objc_alloc_init(NTKParmesanLayoutUserOverride);
      p_currentOverride = &v8->_currentOverride;
      currentOverride = v8->_currentOverride;
      v8->_currentOverride = v116;

      v122 = objc_msgSend_originalCrop(v101, v119, v120, v121);
      objc_msgSend_cgRect(v122, v123, v124, v125);
      objc_msgSend_setCrop_(v8->_currentOverride, v126, v127, v128);

      v132 = objc_msgSend_timeLayout(v101, v129, v130, v131);
      objc_msgSend_setTimeLayout_(v8->_currentOverride, v133, v132, v134);

      v140 = objc_msgSend_mask(v101, v135, v136, v137);
      if (v140)
      {
        objc_msgSend_setUseDepthEffect_(*p_currentOverride, v138, v37, v139);
      }

      else
      {
        objc_msgSend_setUseDepthEffect_(*p_currentOverride, v138, 0, v139);
      }

      v144 = objc_msgSend_logObject(NTKParmesanFaceBundle, v141, v142, v143);
      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
      {
        sub_23BFF7650(v4, &v8->_currentOverride, v144, v145);
      }

      goto LABEL_32;
    }

    v147 = objc_msgSend_logObject(NTKParmesanFaceBundle, v113, v114, v115);
    if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF771C(v4, v147, v148, v149);
    }

LABEL_37:
    v146 = 0;
    goto LABEL_38;
  }

  v85 = objc_msgSend_userOverrides(v4, v82, v83, v84);
  v86 = MEMORY[0x277CCABB0];
  EditedUserOverride = objc_msgSend_lastEditedUserOverride(v4, v87, v88, v89);
  v93 = objc_msgSend_numberWithInteger_(v86, v91, EditedUserOverride, v92);
  v96 = objc_msgSend_objectForKeyedSubscript_(v85, v94, v93, v95);
  v97 = v8->_currentOverride;
  v8->_currentOverride = v96;

  v101 = objc_msgSend_logObject(NTKParmesanFaceBundle, v98, v99, v100);
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
  {
    sub_23BFF75D4();
  }

LABEL_32:

LABEL_33:
  v146 = v8;
LABEL_38:

  return v146;
}

- (id)previewModelForDevice:(id)a3 subsampleFactor:(double)a4
{
  v7 = objc_msgSend_currentOverride(self, a2, a3, v4);
  objc_msgSend_crop(v7, v8, v9, v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  CGAffineTransformMakeScale(&v64, 1.0 / a4, 1.0 / a4);
  v66.origin.x = v12;
  v66.origin.y = v14;
  v66.size.width = v16;
  v66.size.height = v18;
  v67 = CGRectApplyAffineTransform(v66, &v64);
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;

  v23 = [NTKParmesanCropPreviewModel alloc];
  v27 = objc_msgSend_photoImage(self, v24, v25, v26);
  v31 = objc_msgSend_photoImageMasked(self, v28, v29, v30);
  v35 = objc_msgSend_previewValidator(self, v32, v33, v34);
  v36 = [NTKParmesanCrop alloc];
  v40 = objc_msgSend_initWithRect_(v36, v37, v38, v39, x, y, width, height);
  v44 = objc_msgSend_currentOverride(self, v41, v42, v43);
  v48 = objc_msgSend_timeLayout(v44, v45, v46, v47);
  v52 = objc_msgSend_currentOverride(self, v49, v50, v51);
  v56 = objc_msgSend_useDepthEffect(v52, v53, v54, v55);
  canRevert = objc_msgSend_canRevert(self, v57, v58, v59);
  v61 = objc_msgSend_initWithPhoto_maskedPhoto_previewValidator_crop_timeLayout_useDepthEffect_revertable_(v23, v60, v27, v31, v35, v40, v48, v56, canRevert);

  return v61;
}

@end