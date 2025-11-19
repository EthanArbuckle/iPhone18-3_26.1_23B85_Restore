@interface NTKCParmesanPreviewViewController
- (CGSize)cutoutSize;
- (NTKCParmesanPreviewViewController)initWithPreviewProvider:(id)a3;
- (NTKCParmesanPreviewViewControllerDelegate)delegate;
- (double)_heightForTimeSelectionItem;
- (double)_heightForTimeSelectionView;
- (id)_symbolForUsingDepthEffect:(BOOL)a3;
- (void)_cancelPressed;
- (void)_changePhotoPressed;
- (void)_didSelectPhotoForChangePhoto:(id)a3;
- (void)_donePressed;
- (void)_hideLoadingLabel;
- (void)_hideLoadingSpinner;
- (void)_loadInitialCropPreview;
- (void)_revertPressed;
- (void)_setCropValidationState:(unint64_t)a3 animated:(BOOL)a4;
- (void)_setPreview:(id)a3 animated:(BOOL)a4;
- (void)_setupCenteredViewWithPhoto:(id)a3 maskedPhoto:(id)a4;
- (void)_showLoadingLabel;
- (void)_showLoadingSpinner;
- (void)_toggleDepthEffectPressed;
- (void)_updateDoneButtonEnabledState;
- (void)_updateNavigationBarItems;
- (void)_updatePreviewForDepthEffect:(BOOL)a3;
- (void)_updateToolbarItems;
- (void)_validatePreview:(id)a3 withCrop:(CGRect)a4 animated:(BOOL)a5;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidSettleFromInteracting:(id)a3;
- (void)scrollViewWillBeginInteraction:(id)a3;
- (void)setDisplayDepthEffect:(BOOL)a3;
- (void)setInitialPreviewState:(unint64_t)a3;
- (void)timeLayoutSelectionController:(id)a3 didChangeSelection:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NTKCParmesanPreviewViewController

- (NTKCParmesanPreviewViewController)initWithPreviewProvider:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = NTKCParmesanPreviewViewController;
  v6 = [(NTKCParmesanPreviewViewController *)&v15 initWithNibName:0 bundle:0];
  v10 = v6;
  if (v6)
  {
    v11 = objc_msgSend_navigationItem(v6, v7, v8, v9);
    objc_msgSend_setHidesBackButton_(v11, v12, 1, v13);

    v10->_initialPreviewState = 0;
    objc_storeStrong(&v10->_previewProvider, a3);
    v10->_cropValidationState = 0;
  }

  return v10;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = objc_msgSend__KVOScrollViewKeys(NTKCParmesanPreviewViewController, a2, v2, v3);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_removeObserver_forKeyPath_context_(self->_scrollView, v8, self, *(*(&v13 + 1) + 8 * v11++), qword_27E1DF950);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v13, v17, 16);
    }

    while (v9);
  }

  v12.receiver = self;
  v12.super_class = NTKCParmesanPreviewViewController;
  [(NTKCParmesanPreviewViewController *)&v12 dealloc];
}

- (void)viewDidLoad
{
  v278 = *MEMORY[0x277D85DE8];
  v276.receiver = self;
  v276.super_class = NTKCParmesanPreviewViewController;
  [(NTKCParmesanPreviewViewController *)&v276 viewDidLoad];
  v6 = objc_msgSend_navigationController(self, v3, v4, v5);
  objc_msgSend_setNavigationBarHidden_(v6, v7, 1, v8);

  v12 = objc_msgSend_navigationController(self, v9, v10, v11);
  objc_msgSend_setToolbarHidden_(v12, v13, 0, v14);

  v18 = objc_msgSend_systemBlackColor(MEMORY[0x277D75348], v15, v16, v17);
  v22 = objc_msgSend_view(self, v19, v20, v21);
  objc_msgSend_setBackgroundColor_(v22, v23, v18, v24);

  v25 = objc_opt_new();
  infoContainer = self->_infoContainer;
  self->_infoContainer = v25;

  v27 = objc_opt_new();
  contentContainer = self->_contentContainer;
  self->_contentContainer = v27;

  v32 = objc_msgSend_view(self, v29, v30, v31);
  objc_msgSend_addSubview_(v32, v33, self->_contentContainer, v34);

  v38 = objc_msgSend_view(self, v35, v36, v37);
  objc_msgSend_addSubview_(v38, v39, self->_infoContainer, v40);

  objc_msgSend_setUserInteractionEnabled_(self->_infoContainer, v41, 0, v42);
  v46 = objc_msgSend_view(self, v43, v44, v45);
  objc_msgSend_bounds(v46, v47, v48, v49);
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  v58 = objc_alloc(MEMORY[0x277D2BF70]);
  v62 = objc_msgSend_initWithFrame_(v58, v59, v60, v61, v51, v53, v55, v57);
  scrollView = self->_scrollView;
  self->_scrollView = v62;

  objc_msgSend_setNtk_delegate_(self->_scrollView, v64, self, v65);
  objc_msgSend_setMinimumZoomScale_(self->_scrollView, v66, v67, v68, 0.1);
  objc_msgSend_setClipsToBounds_(self->_scrollView, v69, 0, v70);
  objc_msgSend_setIsAccessibilityElement_(self->_scrollView, v71, 1, v72);
  objc_msgSend_setAccessibilityTraits_(self->_scrollView, v73, *MEMORY[0x277D765B8], v74);
  v76 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v75, @"PARMESAN_AX_CROP_AREA_LABEL", @"Accessibility label for crop area when editing layout.");
  objc_msgSend_setAccessibilityLabel_(self->_scrollView, v77, v76, v78);

  v80 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v79, @"PARMESAN_AX_CROP_AREA_HINT", @"Accessibility hint for crop area when editing layout.");
  objc_msgSend_setAccessibilityHint_(self->_scrollView, v81, v80, v82);

  v274 = 0u;
  v275 = 0u;
  v272 = 0u;
  v273 = 0u;
  v86 = objc_msgSend__KVOScrollViewKeys(NTKCParmesanPreviewViewController, v83, v84, v85, 0);
  v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v87, &v272, v277, 16);
  if (v88)
  {
    v90 = v88;
    v91 = *v273;
    do
    {
      for (i = 0; i != v90; ++i)
      {
        if (*v273 != v91)
        {
          objc_enumerationMutation(v86);
        }

        objc_msgSend_addObserver_forKeyPath_options_context_(self->_scrollView, v89, self, *(*(&v272 + 1) + 8 * i), 0, qword_27E1DF950);
      }

      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v86, v89, &v272, v277, 16);
    }

    while (v90);
  }

  v93 = [_NTKCParmesanOverlayScrollView alloc];
  v97 = objc_msgSend_initWithFrame_(v93, v94, v95, v96, v51, v53, v55, v57);
  overlayScrollView = self->_overlayScrollView;
  self->_overlayScrollView = v97;

  v102 = objc_msgSend_clearColor(MEMORY[0x277D75348], v99, v100, v101);
  objc_msgSend_setBackgroundColor_(self->_overlayScrollView, v103, v102, v104);

  objc_msgSend_setUserInteractionEnabled_(self->_overlayScrollView, v105, 0, v106);
  if (objc_msgSend_Parmesan_canCrop(self->_previewProvider, v107, v108, v109))
  {
    objc_msgSend_Parmesan_minimumNormalizedCropSize(self->_previewProvider, v110, v111, v112);
    v117 = 1.0 / v116;
    v119 = 1.0 / v118;
    if (v117 >= v119)
    {
      v117 = v119;
    }

    objc_msgSend_setMaximumZoomRatio_(self->_scrollView, v113, v114, v115, v117);
    objc_msgSend_maximumZoomRatio(self->_scrollView, v120, v121, v122);
    objc_msgSend_setMaximumZoomRatio_(self->_overlayScrollView, v123, v124, v125);
  }

  else
  {
    objc_msgSend_setMaximumZoomRatio_(self->_scrollView, v110, v111, v112, 1.0);
    objc_msgSend_maximumZoomRatio(self->_scrollView, v128, v129, v130);
    objc_msgSend_setMaximumZoomRatio_(self->_overlayScrollView, v131, v132, v133);
    objc_msgSend_setScrollEnabled_(self->_scrollView, v134, 0, v135);
    v139 = objc_msgSend_leadingButton(self->_navigationBar, v136, v137, v138);
    objc_msgSend_setEnabled_(v139, v140, 0, v141);
  }

  objc_msgSend_addSubview_(self->_contentContainer, v126, self->_scrollView, v127);
  objc_msgSend__loadInitialCropPreview(self, v142, v143, v144);
  v145 = objc_opt_new();
  timeContainer = self->_timeContainer;
  self->_timeContainer = v145;

  objc_msgSend_setUserInteractionEnabled_(self->_timeContainer, v147, 0, v148);
  objc_msgSend_setAccessibilityElementsHidden_(self->_timeContainer, v149, 1, v150);
  objc_msgSend_addSubview_(self->_contentContainer, v151, self->_timeContainer, v152);
  v153 = [NTKParmesanTimeLayout alloc];
  v155 = objc_msgSend_initWithAlignment_scale_(v153, v154, 1, 3);
  v156 = [NTKParmesanTimeView alloc];
  v157 = *MEMORY[0x277CBF3A0];
  v158 = *(MEMORY[0x277CBF3A0] + 8);
  v159 = *(MEMORY[0x277CBF3A0] + 16);
  v160 = *(MEMORY[0x277CBF3A0] + 24);
  v163 = objc_msgSend_initWithFrame_layout_(v156, v161, v155, v162, *MEMORY[0x277CBF3A0], v158, v159, v160);
  time = self->_time;
  self->_time = v163;

  v165 = self->_time;
  v169 = objc_msgSend_faceDate(MEMORY[0x277D2BFD8], v166, v167, v168);
  objc_msgSend_setOverrideDate_duration_(v165, v170, v169, v171, 0.0);

  objc_msgSend_setHidden_(self->_time, v172, 1, v173);
  objc_msgSend_addSubview_(self->_timeContainer, v174, self->_time, v175);
  objc_msgSend_insertSubview_aboveSubview_(self->_contentContainer, v176, self->_overlayScrollView, self->_timeContainer);
  v180 = objc_msgSend_layer(MEMORY[0x277CD9F90], v177, v178, v179);
  mask = self->_mask;
  self->_mask = v180;

  objc_msgSend_setFillRule_(self->_mask, v182, *MEMORY[0x277CDA248], v183);
  v187 = objc_msgSend_colorWithWhite_alpha_(MEMORY[0x277D75348], v184, v185, v186, 0.0, 0.6);
  v188 = v187;
  v192 = objc_msgSend_CGColor(v188, v189, v190, v191);
  objc_msgSend_setFillColor_(self->_mask, v193, v192, v194);

  v198 = objc_msgSend_layer(self->_contentContainer, v195, v196, v197);
  objc_msgSend_addSublayer_(v198, v199, self->_mask, v200);

  v201 = objc_opt_new();
  placementGuideContainer = self->_placementGuideContainer;
  self->_placementGuideContainer = v201;

  objc_msgSend_setAlpha_(self->_placementGuideContainer, v203, v204, v205, 0.0);
  objc_msgSend_setUserInteractionEnabled_(self->_placementGuideContainer, v206, 0, v207);
  objc_msgSend_addSubview_(self->_infoContainer, v208, self->_placementGuideContainer, v209);
  v210 = objc_opt_new();
  placementGuideLabel = self->_placementGuideLabel;
  self->_placementGuideLabel = v210;

  v215 = objc_msgSend_systemFontOfSize_weight_(MEMORY[0x277D74300], v212, v213, v214, 16.0, *MEMORY[0x277D74418]);
  objc_msgSend_setFont_(self->_placementGuideLabel, v216, v215, v217);

  objc_msgSend_setTextAlignment_(self->_placementGuideLabel, v218, 1, v219);
  v221 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v220, @"MANUAL_LAYOUT_PLACEMENT_GUIDE_INVALID", &stru_284EC2B20);
  objc_msgSend_setText_(self->_placementGuideLabel, v222, v221, v223);

  v227 = objc_msgSend_systemRedColor(MEMORY[0x277D75348], v224, v225, v226);
  objc_msgSend_setTextColor_(self->_placementGuideLabel, v228, v227, v229);

  objc_msgSend_addSubview_(self->_placementGuideContainer, v230, self->_placementGuideLabel, v231);
  v232 = [NTKParmesanEditorNavigationBar alloc];
  v236 = objc_msgSend_initWithFrame_(v232, v233, v234, v235, v157, v158, v159, v160);
  navigationBar = self->_navigationBar;
  self->_navigationBar = v236;

  v241 = objc_msgSend_view(self, v238, v239, v240);
  objc_msgSend_addSubview_(v241, v242, self->_navigationBar, v243);

  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->_navigationBar, v244, 0, v245);
  objc_msgSend_constrainToSuperviewWithEdges_insets_useLayoutMargins_(self->_navigationBar, v246, 11, 0, *MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));
  v248 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v247, @"MANUAL_LAYOUT_TITLE", @"Title for manual layout page.");
  v252 = objc_msgSend_titleLabel(self->_navigationBar, v249, v250, v251);
  objc_msgSend_setText_(v252, v253, v248, v254);

  v256 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v255, @"MANUAL_LAYOUT_INSTRUCTIONS", @"Instructive text shown under the title during manual layout.");
  v260 = objc_msgSend_descriptionLabel(self->_navigationBar, v257, v258, v259);
  objc_msgSend_setText_(v260, v261, v256, v262);

  objc_msgSend__updateNavigationBarItems(self, v263, v264, v265);
  objc_msgSend__updateDoneButtonEnabledState(self, v266, v267, v268);
  objc_msgSend__updateToolbarItems(self, v269, v270, v271);
}

- (void)_updateNavigationBarItems
{
  isRevertable = objc_msgSend_isRevertable(self->_currentPreview, a2, v2, v3);
  v9 = objc_msgSend_didInteractWithCropView(self, v6, v7, v8);
  v13 = objc_msgSend_trailingButton(self->_navigationBar, v10, v11, v12);
  objc_msgSend_removeTarget_action_forControlEvents_(v13, v14, 0, 0, 64);

  v19 = objc_msgSend_trailingButton(self->_navigationBar, v15, v16, v17);
  if ((v9 & 1) != 0 || !isRevertable)
  {
    v33 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v18, @"MANUAL_LAYOUT_SAVE_BUTTON", @"Title for saving the photo layout.");
    objc_msgSend_setTitle_forState_(v19, v34, v33, 0);

    v25 = objc_msgSend_trailingButton(self->_navigationBar, v35, v36, v37);
    v29 = objc_msgSend_tintColor(MEMORY[0x277D75348], v38, v39, v40);
    objc_msgSend_setTintColor_(v25, v41, v29, v42);
    v32 = &selRef__donePressed;
  }

  else
  {
    v20 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v18, @"MANUAL_LAYOUT_REVERT_BUTTON", @"Title for reverting back to original layout.");
    objc_msgSend_setTitle_forState_(v19, v21, v20, 0);

    v25 = objc_msgSend_trailingButton(self->_navigationBar, v22, v23, v24);
    v29 = objc_msgSend_systemRedColor(MEMORY[0x277D75348], v26, v27, v28);
    objc_msgSend_setTintColor_(v25, v30, v29, v31);
    v32 = &selRef__revertPressed;
  }

  v46 = objc_msgSend_trailingButton(self->_navigationBar, v43, v44, v45);
  objc_msgSend_addTarget_action_forControlEvents_(v46, v47, self, *v32, 64);

  v51 = objc_msgSend_leadingButton(self->_navigationBar, v48, v49, v50);
  v53 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v52, @"MANUAL_LAYOUT_CANCEL_BUTTON", @"Button for discarding layout changes.");
  objc_msgSend_setTitle_forState_(v51, v54, v53, 0);

  v58 = objc_msgSend_leadingButton(self->_navigationBar, v55, v56, v57);
  v62 = objc_msgSend_allTargets(v58, v59, v60, v61);
  v65 = objc_msgSend_containsObject_(v62, v63, self, v64);

  if ((v65 & 1) == 0)
  {
    v69 = objc_msgSend_leadingButton(self->_navigationBar, v66, v67, v68);
    objc_msgSend_addTarget_action_forControlEvents_(v69, v70, self, sel__cancelPressed, 64);
  }

  v77 = objc_msgSend_leadingButton(self->_navigationBar, v66, v67, v68);
  canCrop = objc_msgSend_Parmesan_canCrop(self->_previewProvider, v71, v72, v73);
  objc_msgSend_setEnabled_(v77, v75, canCrop, v76);
}

- (void)_updateToolbarItems
{
  v34[3] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_Parmesan_canAddPhotoAssets(self->_previewProvider, a2, v2, v3))
  {
    v8 = objc_msgSend_maskedPhoto(self->_currentPreview, v5, v6, v7);

    if (v8)
    {
      v11 = objc_msgSend__symbolForUsingDepthEffect_(self, v9, self->_displayDepthEffect, v10);
      v14 = objc_msgSend_systemImageNamed_(MEMORY[0x277D755B8], v12, v11, v13);
      v15 = objc_alloc(MEMORY[0x277D751E0]);
      v18 = objc_msgSend_initWithImage_style_target_action_(v15, v16, v14, 0, self, sel__toggleDepthEffectPressed);
      if (self->_displayDepthEffect)
      {
        objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v17, @"PARMESAN_AX_DEPTH_EFFECT_ON", @"Accessibility label for depth effect on icon.");
      }

      else
      {
        objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v17, @"PARMESAN_AX_DEPTH_EFFECT_OFF", @"Accessibility label for depth effect off icon.");
      }
      v21 = ;
      objc_msgSend_setAccessibilityLabel_(v14, v22, v21, v23);

      v27 = objc_msgSend_flexibleSpaceItem(MEMORY[0x277D751E0], v24, v25, v26);
      v31 = objc_msgSend_flexibleSpaceItem(MEMORY[0x277D751E0], v28, v29, v30, v27, v18);
      v34[2] = v31;
      v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v32, v34, 3);

      objc_msgSend_setToolbarItems_animated_(self, v33, v20, 0);
    }

    else
    {
      v20 = 0;
      objc_msgSend_setToolbarItems_animated_(self, v9, 0, 0);
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];

    objc_msgSend_setToolbarItems_animated_(self, v5, v19, 0);
  }
}

- (void)viewDidLayoutSubviews
{
  v199.receiver = self;
  v199.super_class = NTKCParmesanPreviewViewController;
  [(NTKCParmesanPreviewViewController *)&v199 viewDidLayoutSubviews];
  v6 = objc_msgSend_view(self, v3, v4, v5);
  objc_msgSend_bounds(v6, v7, v8, v9);
  objc_msgSend_setFrame_(self->_infoContainer, v10, v11, v12);

  v16 = objc_msgSend_view(self, v13, v14, v15);
  objc_msgSend_bounds(v16, v17, v18, v19);
  objc_msgSend_setFrame_(self->_contentContainer, v20, v21, v22);

  objc_msgSend_frame(self->_navigationBar, v23, v24, v25);
  MaxY = CGRectGetMaxY(v200);
  objc_msgSend__heightForTimeSelectionView(self, v26, v27, v28);
  v30 = v29;
  v34 = objc_msgSend_previewProvider(self, v31, v32, v33);
  objc_msgSend_Parmesan_screenBounds(v34, v35, v36, v37);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v49 = objc_msgSend_previewProvider(self, v46, v47, v48);
  objc_msgSend_Parmesan_screenCornerRadius(v49, v50, v51, v52);
  v196 = v53;

  objc_msgSend_cutoutSize(self, v54, v55, v56);
  v58 = v57;
  v60 = v59;
  v201.origin.x = v39;
  v201.origin.y = v41;
  v201.size.width = v43;
  v201.size.height = v45;
  v61 = v58 / CGRectGetWidth(v201);
  v202.origin.x = v39;
  v202.origin.y = v41;
  v202.size.width = v43;
  v202.size.height = v45;
  v65 = v60 / CGRectGetHeight(v202);
  if (v61 >= v65)
  {
    v65 = v61;
  }

  self->_timeContainerScale = v65;
  v66 = objc_msgSend_view(self, v62, v63, v64);
  objc_msgSend_bounds(v66, v67, v68, v69);
  v71 = v70;
  v75 = objc_msgSend_view(self, v72, v73, v74);
  objc_msgSend_safeAreaInsets(v75, v76, v77, v78);
  v80 = v71 - v79 - v30;
  objc_msgSend_frame(self->_navigationBar, v81, v82, v83);
  v84 = v80 - CGRectGetMaxY(v203);

  v88 = objc_msgSend_view(self, v85, v86, v87);
  objc_msgSend_bounds(v88, v89, v90, v91);
  v93 = v92;

  objc_msgSend_setFrame_(self->_scrollView, v94, v95, v96, 0.0, MaxY, v93, v84);
  v97 = *MEMORY[0x277D768C8];
  v98 = *(MEMORY[0x277D768C8] + 8);
  v100 = *(MEMORY[0x277D768C8] + 16);
  v99 = *(MEMORY[0x277D768C8] + 24);
  objc_msgSend_setContentInset_(self->_scrollView, v101, v102, v103, *MEMORY[0x277D768C8], v98, v100, v99);
  objc_msgSend_setFrame_(self->_overlayScrollView, v104, v105, v106, 0.0, MaxY, v93, v84);
  objc_msgSend_setContentInset_(self->_overlayScrollView, v107, v108, v109, v97, v98, v100, v99);
  v110 = v84;
  UIRectCenteredIntegralRectScale();
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v118 = v117;
  v122 = objc_msgSend_view(self, v119, v120, v121, 0);
  objc_msgSend_bounds(v122, v123, v124, v125);
  v127 = v126;
  v131 = objc_msgSend_view(self, v128, v129, v130);
  objc_msgSend_bounds(v131, v132, v133, v134);
  objc_msgSend_setFrame_(self->_mask, v135, v136, v137, 0.0, 0.0, v127);

  v138 = MEMORY[0x277D75208];
  objc_msgSend_frame(self->_mask, v139, v140, v141);
  v145 = objc_msgSend_bezierPathWithRect_(v138, v142, v143, v144);
  v149 = objc_msgSend_bezierPathWithRoundedRect_cornerRadius_(MEMORY[0x277D75208], v146, v147, v148, v112, v114, v116, v118, v196);
  objc_msgSend_appendPath_(v145, v150, v149, v151);

  v152 = v145;
  v156 = objc_msgSend_CGPath(v152, v153, v154, v155);
  objc_msgSend_setPath_(self->_mask, v157, v156, v158);
  v162 = objc_msgSend_view(self, v159, v160, v161);
  v204.origin.x = v112;
  v204.origin.y = v114;
  v204.size.width = v116;
  v204.size.height = v118;
  v205 = UIAccessibilityConvertFrameToScreenCoordinates(v204, v162);
  objc_msgSend_setAccessibilityFrame_(self->_scrollView, v163, v164, v165, v205.origin.x, v205.origin.y, v205.size.width, v205.size.height);

  timeContainer = self->_timeContainer;
  v167 = *(MEMORY[0x277CBF2C0] + 16);
  *&v198.a = *MEMORY[0x277CBF2C0];
  *&v198.c = v167;
  *&v198.tx = *(MEMORY[0x277CBF2C0] + 32);
  objc_msgSend_setTransform_(timeContainer, v168, &v198, v169);
  UIRectCenteredIntegralRectScale();
  objc_msgSend_setFrame_(self->_timeContainer, v170, v171, v172, 0);
  CGAffineTransformMakeScale(&v197, self->_timeContainerScale, self->_timeContainerScale);
  v173 = self->_timeContainer;
  v198 = v197;
  objc_msgSend_setTransform_(v173, v174, &v198, v175);
  objc_msgSend_bounds(self->_timeContainer, v176, v177, v178);
  objc_msgSend_setFrame_(self->_time, v179, v180, v181);
  objc_msgSend_setMinimumDisplaySize_withCropRectCushion_(self->_scrollView, v182, v183, v184, v116, v118, *MEMORY[0x277D3B3B8]);
  objc_msgSend_setFrame_(self->_placementGuideContainer, v185, v186, v187, 0.0, MaxY, v93, v110);
  objc_msgSend_frame(self->_navigationBar, v188, v189, v190);
  v191 = CGRectGetMaxY(v206);
  objc_msgSend_setFrame_(self->_placementGuideLabel, v192, v193, v194, 0.0, 0.0, v93, v114 - v191);
}

- (CGSize)cutoutSize
{
  v5 = objc_msgSend_previewProvider(self, a2, v2, v3);
  objc_msgSend_Parmesan_screenBounds(v5, v6, v7, v8);
  v10 = v9;
  v12 = v11;

  v16 = objc_msgSend_view(self, v13, v14, v15);
  v20 = objc_msgSend_window(v16, v17, v18, v19);
  objc_msgSend_bounds(v20, v21, v22, v23);
  v25 = v24;

  v26 = v25 * 0.26;
  v27 = v10 / v12 * (v25 * 0.26);
  result.height = v26;
  result.width = v27;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = NTKCParmesanPreviewViewController;
  [(NTKCParmesanPreviewViewController *)&v3 viewWillAppear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = NTKCParmesanPreviewViewController;
  [(NTKCParmesanPreviewViewController *)&v10 viewDidDisappear:a3];
  v7 = objc_msgSend_delegate(self, v4, v5, v6);
  objc_msgSend_ParmesanPreviewViewControllerDidDismiss_(v7, v8, self, v9);
}

- (void)_loadInitialCropPreview
{
  objc_msgSend_setInitialPreviewState_(self, a2, 1, v2);
  objc_initWeak(&location, self);
  previewProvider = self->_previewProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23BF14AD0;
  v7[3] = &unk_278BA69B0;
  objc_copyWeak(&v8, &location);
  objc_msgSend_Parmesan_getPreviewWithCompletion_(previewProvider, v5, v7, v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)setInitialPreviewState:(unint64_t)a3
{
  self->_initialPreviewState = a3;
  if (a3 == 3)
  {
    objc_msgSend__hideLoadingSpinner(self, a2, 3, v3);
    objc_msgSend__hideLoadingLabel(self, v20, v21, v22);
LABEL_9:

    objc_msgSend__updateNavigationBarItems(self, v14, v15, v16);
    return;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      return;
    }

    v5 = objc_msgSend_trailingButton(self->_navigationBar, a2, 1, v3);
    objc_msgSend_setEnabled_(v5, v6, 0, v7);

    objc_msgSend__showLoadingLabel(self, v8, v9, v10);
    objc_msgSend__showLoadingSpinner(self, v11, v12, v13);
    goto LABEL_9;
  }

  objc_msgSend__hideLoadingSpinner(self, a2, 2, v3);
  v23 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v17, @"MANUAL_LAYOUT_LOADING_IMAGE_ERROR_MESSAGE", @"Something went wrong.");
  objc_msgSend_setText_(self->_loadingLabel, v18, v23, v19);
}

- (void)_showLoadingSpinner
{
  if (!self->_loadingSpinner)
  {
    v3 = objc_alloc(MEMORY[0x277D750E8]);
    v6 = objc_msgSend_initWithActivityIndicatorStyle_(v3, v4, 100, v5);
    loadingSpinner = self->_loadingSpinner;
    self->_loadingSpinner = v6;

    objc_msgSend_startAnimating(self->_loadingSpinner, v8, v9, v10);
  }

  v11 = objc_alloc(MEMORY[0x277D751E0]);
  v20 = objc_msgSend_initWithCustomView_(v11, v12, self->_loadingSpinner, v13);
  v17 = objc_msgSend_navigationItem(self, v14, v15, v16);
  objc_msgSend_setRightBarButtonItem_(v17, v18, v20, v19);
}

- (void)_hideLoadingSpinner
{
  v5 = objc_msgSend_navigationItem(self, a2, v2, v3);
  objc_msgSend_setRightBarButtonItem_(v5, v6, 0, v7);

  objc_msgSend_stopAnimating(self->_loadingSpinner, v8, v9, v10);
  loadingSpinner = self->_loadingSpinner;
  self->_loadingSpinner = 0;
}

- (void)_showLoadingLabel
{
  v157[2] = *MEMORY[0x277D85DE8];
  if (!self->_loadingView)
  {
    objc_msgSend_cutoutSize(self, a2, v2, v3);
    v8 = objc_msgSend_view(self, v5, v6, v7);
    objc_msgSend_bounds(v8, v9, v10, v11);
    UIRectCenteredIntegralRectScale();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v23 = objc_msgSend_navigationController(self, v20, v21, v22, 0);
    v27 = objc_msgSend_view(v23, v24, v25, v26);
    objc_msgSend_safeAreaInsets(v27, v28, v29, v30);
    v32 = v31;
    v36 = objc_msgSend_navigationController(self, v33, v34, v35);
    v40 = objc_msgSend_view(v36, v37, v38, v39);
    objc_msgSend_safeAreaInsets(v40, v41, v42, v43);
    v45 = v32 - v44;

    v158.origin.x = v13;
    v158.origin.y = v15;
    v158.size.width = v17;
    v158.size.height = v19;
    v159 = CGRectOffset(v158, 0.0, v45);
    x = v159.origin.x;
    y = v159.origin.y;
    width = v159.size.width;
    height = v159.size.height;
    v50 = objc_alloc(MEMORY[0x277D756B8]);
    v54 = objc_msgSend_initWithFrame_(v50, v51, v52, v53, x, y, width, height);
    loadingLabel = self->_loadingLabel;
    self->_loadingLabel = v54;

    v58 = objc_msgSend_preferredFontForTextStyle_(MEMORY[0x277D74300], v56, *MEMORY[0x277D76918], v57);
    objc_msgSend_setFont_(self->_loadingLabel, v59, v58, v60);

    v62 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v61, @"MANUAL_LAYOUT_LOADING_IMAGE_MESSAGE", @"Loading Image...");
    objc_msgSend_setText_(self->_loadingLabel, v63, v62, v64);

    objc_msgSend_setTextAlignment_(self->_loadingLabel, v65, 1, v66);
    v70 = objc_msgSend_secondaryLabelColor(MEMORY[0x277D75348], v67, v68, v69);
    objc_msgSend_setTextColor_(self->_loadingLabel, v71, v70, v72);

    v73 = objc_alloc(MEMORY[0x277D750E8]);
    v155 = objc_msgSend_initWithActivityIndicatorStyle_(v73, v74, 100, v75);
    v76 = objc_alloc(MEMORY[0x277D75A68]);
    v157[0] = self->_loadingLabel;
    v157[1] = v155;
    v78 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v77, v157, 2);
    v81 = objc_msgSend_initWithArrangedSubviews_(v76, v79, v78, v80);

    loadingView = self->_loadingView;
    self->_loadingView = v81;
    v83 = v81;

    objc_msgSend_setAxis_(v83, v84, 1, v85);
    objc_msgSend_setAlignment_(v83, v86, 3, v87);
    objc_msgSend_setSpacing_(v83, v88, v89, v90, 8.0);
    objc_msgSend_addSubview_(self->_infoContainer, v91, self->_loadingView, v92);
    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->_loadingView, v93, 0, v94);
    v148 = MEMORY[0x277CCAAD0];
    v154 = objc_msgSend_centerYAnchor(self->_loadingView, v95, v96, v97);
    v153 = objc_msgSend_centerYAnchor(self->_infoContainer, v98, v99, v100);
    v152 = objc_msgSend_constraintEqualToAnchor_(v154, v101, v153, v102);
    v156[0] = v152;
    v151 = objc_msgSend_centerXAnchor(self->_loadingView, v103, v104, v105);
    v150 = objc_msgSend_centerXAnchor(self->_infoContainer, v106, v107, v108);
    v149 = objc_msgSend_constraintEqualToAnchor_(v151, v109, v150, v110);
    v156[1] = v149;
    v114 = objc_msgSend_widthAnchor(self->_loadingView, v111, v112, v113);
    v118 = objc_msgSend_safeAreaLayoutGuide(self->_infoContainer, v115, v116, v117);
    v122 = objc_msgSend_widthAnchor(v118, v119, v120, v121);
    v125 = objc_msgSend_constraintLessThanOrEqualToAnchor_(v114, v123, v122, v124);
    v156[2] = v125;
    v129 = objc_msgSend_heightAnchor(self->_loadingView, v126, v127, v128);
    v133 = objc_msgSend_safeAreaLayoutGuide(self->_infoContainer, v130, v131, v132);
    v137 = objc_msgSend_heightAnchor(v133, v134, v135, v136);
    v140 = objc_msgSend_constraintLessThanOrEqualToAnchor_(v129, v138, v137, v139);
    v156[3] = v140;
    v142 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v141, v156, 4);
    objc_msgSend_activateConstraints_(v148, v143, v142, v144);

    objc_msgSend_startAnimating(v155, v145, v146, v147);
  }
}

- (void)_hideLoadingLabel
{
  objc_msgSend_removeFromSuperview(self->_loadingView, a2, v2, v3);
  loadingView = self->_loadingView;
  self->_loadingView = 0;
}

- (void)_setupCenteredViewWithPhoto:(id)a3 maskedPhoto:(id)a4
{
  v167[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v12 = v8;
  v13 = self->_currentBackgroundImage != v7 || self->_currentForegroundImage != v8;
  v14 = objc_msgSend_centeredView(self->_scrollView, v9, v10, v11);

  if (v13)
  {
    objc_storeStrong(&self->_currentBackgroundImage, a3);
    objc_storeStrong(&self->_currentForegroundImage, a4);
    v18 = objc_alloc(MEMORY[0x277D755E8]);
    v21 = objc_msgSend_initWithImage_(v18, v19, v7, v20);
    objc_msgSend_setCenteredView_(self->_scrollView, v22, v21, v23);

    objc_msgSend_setHidden_(self->_overlayScrollView, v24, v12 == 0, v25);
    if (v12)
    {
      v26 = objc_alloc(MEMORY[0x277D755E8]);
      v29 = objc_msgSend_initWithImage_(v26, v27, v12, v28);
      objc_msgSend_setCenteredView_(self->_overlayScrollView, v30, v29, v31);
    }
  }

  if (!v14)
  {
    objc_msgSend_Parmesan_screenBounds(self->_previewProvider, v15, v16, v17);
    v33 = v32;
    v35 = v34;
    objc_msgSend_Parmesan_screenCornerRadius(self->_previewProvider, v36, v37, v38);
    v40 = v39;
    objc_msgSend__heightForTimeSelectionItem(self, v41, v42, v43);
    v45 = v44;
    v46 = [NTKParmesanTimeLayoutSelectionViewController alloc];
    v50 = objc_msgSend_allLayouts(NTKParmesanTimeLayout, v47, v48, v49);
    v53 = objc_msgSend_initWithLayoutOptions_itemHeight_deviceSize_deviceScreenRadius_(v46, v51, v50, v52, v45, v33, v35, v40);

    v54 = BPSBridgeTintColor();
    v58 = objc_msgSend_view(v53, v55, v56, v57);
    objc_msgSend_setTintColor_(v58, v59, v54, v60);

    objc_msgSend_addChildViewController_(self, v61, v53, v62);
    v66 = objc_msgSend_view(self, v63, v64, v65);
    v70 = objc_msgSend_view(v53, v67, v68, v69);
    objc_msgSend_addSubview_(v66, v71, v70, v72);

    objc_msgSend_didMoveToParentViewController_(v53, v73, self, v74);
    timeLayoutSelectionViewController = self->_timeLayoutSelectionViewController;
    self->_timeLayoutSelectionViewController = v53;
    v163 = v53;

    objc_msgSend_setDelegate_(self->_timeLayoutSelectionViewController, v76, self, v77);
    objc_msgSend_bottomPadding(NTKParmesanTimeLayoutSelectionViewController, v78, v79, v80);
    v82 = v81;
    v86 = objc_msgSend_view(self->_timeLayoutSelectionViewController, v83, v84, v85);
    v90 = objc_msgSend_clearColor(MEMORY[0x277D75348], v87, v88, v89);
    objc_msgSend_setBackgroundColor_(v86, v91, v90, v92);

    objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v86, v93, 0, v94);
    v156 = MEMORY[0x277CCAAD0];
    v162 = objc_msgSend_leadingAnchor(v86, v95, v96, v97);
    v164 = objc_msgSend_view(self, v98, v99, v100);
    v161 = objc_msgSend_safeAreaLayoutGuide(v164, v101, v102, v103);
    v160 = objc_msgSend_leadingAnchor(v161, v104, v105, v106);
    v159 = objc_msgSend_constraintEqualToAnchor_(v162, v107, v160, v108);
    v167[0] = v159;
    v157 = objc_msgSend_trailingAnchor(v86, v109, v110, v111);
    v158 = objc_msgSend_view(self, v112, v113, v114);
    v155 = objc_msgSend_safeAreaLayoutGuide(v158, v115, v116, v117);
    objc_msgSend_trailingAnchor(v155, v118, v119, v120);
    v121 = v166 = v7;
    objc_msgSend_constraintEqualToAnchor_(v157, v122, v121, v123);
    v124 = v165 = v12;
    v167[1] = v124;
    v128 = objc_msgSend_bottomAnchor(v86, v125, v126, v127);
    v132 = objc_msgSend_view(self, v129, v130, v131);
    v136 = objc_msgSend_safeAreaLayoutGuide(v132, v133, v134, v135);
    v140 = objc_msgSend_bottomAnchor(v136, v137, v138, v139);
    v143 = objc_msgSend_constraintEqualToAnchor_constant_(v128, v141, v140, v142, -v82);
    v167[2] = v143;
    v145 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v144, v167, 3);
    objc_msgSend_activateConstraints_(v156, v146, v145, v147);

    v12 = v165;
    v7 = v166;

    v151 = objc_msgSend_view(self, v148, v149, v150);
    objc_msgSend_setNeedsLayout(v151, v152, v153, v154);
  }
}

- (double)_heightForTimeSelectionItem
{
  v4 = objc_msgSend_navigationController(self, a2, v2, v3);
  v8 = objc_msgSend_presentingViewController(v4, v5, v6, v7);
  v12 = objc_msgSend_view(v8, v9, v10, v11);

  objc_msgSend_bounds(v12, v13, v14, v15);
  v17 = v16 * 0.09;

  return v17;
}

- (double)_heightForTimeSelectionView
{
  objc_msgSend__heightForTimeSelectionItem(self, a2, v2, v3);

  MEMORY[0x2821F9670](NTKParmesanTimeLayoutSelectionViewController, sel_totalHeightForPreviewHeight_, v4, v5);
  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (qword_27E1DF950 == a6)
  {
    if (objc_msgSend_isEqualToString_(a3, a2, @"bounds", a4, a5))
    {
      objc_msgSend_zoomScale(self->_scrollView, v7, v8, v9);
      objc_msgSend_setZoomScale_animated_(self->_overlayScrollView, v10, 0, v11);
      objc_msgSend_contentInset(self->_scrollView, v12, v13, v14);
      objc_msgSend_setContentInset_(self->_overlayScrollView, v15, v16, v17);
      objc_msgSend_bounds(self->_scrollView, v18, v19, v20);
      overlayScrollView = self->_overlayScrollView;

      MEMORY[0x2821F9670](overlayScrollView, sel_setBounds_, v21, v22);
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = NTKCParmesanPreviewViewController;
    [(NTKCParmesanPreviewViewController *)&v24 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)scrollViewWillBeginInteraction:(id)a3
{
  objc_msgSend_setDidInteractWithCropView_(self, a2, 1, v3);
  v8 = objc_msgSend_currentPreview(self, v5, v6, v7);
  objc_msgSend_cropRect(self->_scrollView, v9, v10, v11);
  objc_msgSend__validatePreview_withCrop_animated_(self, v12, v8, 0);

  objc_msgSend__updateNavigationBarItems(self, v13, v14, v15);
}

- (void)scrollViewDidScroll:(id)a3
{
  v9 = objc_msgSend_currentPreview(self, a2, a3, v3);
  objc_msgSend_cropRect(self->_scrollView, v5, v6, v7);
  objc_msgSend__validatePreview_withCrop_animated_(self, v8, v9, 0);
}

- (void)scrollViewDidSettleFromInteracting:(id)a3
{
  v5 = objc_msgSend_currentPreview(self, a2, a3, v3);
  objc_msgSend_cropRect(self->_scrollView, v6, v7, v8);
  x = v9;
  y = v11;
  width = v13;
  height = v15;
  photoScale = self->_photoScale;
  if (photoScale != 0.0)
  {
    CGAffineTransformMakeScale(&v44, photoScale, self->_photoScale);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v46 = CGRectApplyAffineTransform(v45, &v44);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
  }

  v18 = [NTKParmesanCrop alloc];
  v22 = objc_msgSend_initWithRect_(v18, v19, v20, v21, x, y, width, height);
  v23 = [NTKParmesanCropPreviewModel alloc];
  v27 = objc_msgSend_photo(v5, v24, v25, v26);
  v31 = objc_msgSend_maskedPhoto(v5, v28, v29, v30);
  v35 = objc_msgSend_previewValidator(v5, v32, v33, v34);
  v39 = objc_msgSend_timeLayout(v5, v36, v37, v38);
  v43 = 1;
  v41 = objc_msgSend_initWithPhoto_maskedPhoto_previewValidator_crop_timeLayout_useDepthEffect_revertable_(v23, v40, v27, v31, v35, v22, v39, self->_displayDepthEffect, v43);

  objc_msgSend__setPreview_animated_(self, v42, v41, 1);
}

- (void)_setPreview:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  objc_storeStrong(&self->_currentPreview, a3);
  self->_displayDepthEffect = objc_msgSend_useDepthEffect(v6, v7, v8, v9);
  if (objc_msgSend_isHidden(self->_time, v10, v11, v12))
  {
    objc_msgSend_setHidden_(self->_time, v13, 0, v15);
  }

  v16 = objc_msgSend_crop(v6, v13, v14, v15);
  objc_msgSend_cgRect(v16, v17, v18, v19);
  x = v20;
  y = v22;
  width = v24;
  height = v26;

  v31 = objc_msgSend_photo(v6, v28, v29, v30);
  v35 = objc_msgSend_maskedPhoto(v6, v32, v33, v34);
  objc_msgSend_scale(v31, v36, v37, v38);
  self->_photoScale = v39;
  objc_msgSend__setupCenteredViewWithPhoto_maskedPhoto_(self, v40, v31, v35);
  v46 = objc_msgSend_timeLayout(v6, v41, v42, v43);
  if (v46)
  {
    objc_msgSend_updateTimeLayout_(self->_time, v44, v46, v45);
    objc_msgSend_setSelectedLayout_(self->_timeLayoutSelectionViewController, v47, v46, v48);
  }

  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  if (!CGRectIsEmpty(v69))
  {
    photoScale = self->_photoScale;
    if (photoScale != 0.0)
    {
      CGAffineTransformMakeScale(&v68, 1.0 / photoScale, 1.0 / photoScale);
      v70.origin.x = x;
      v70.origin.y = y;
      v70.size.width = width;
      v70.size.height = height;
      v71 = CGRectApplyAffineTransform(v70, &v68);
      x = v71.origin.x;
      y = v71.origin.y;
      width = v71.size.width;
      height = v71.size.height;
    }
  }

  objc_msgSend_setCropRect_(self->_scrollView, v49, v50, v51, x, y, width, height);
  objc_msgSend_setCropRect_(self->_overlayScrollView, v53, v54, v55, x, y, width, height);
  objc_msgSend__updatePreviewForDepthEffect_(self, v56, self->_displayDepthEffect, v57);
  objc_msgSend__updateNavigationBarItems(self, v58, v59, v60);
  objc_msgSend__updateToolbarItems(self, v61, v62, v63);
  objc_msgSend__validatePreview_withCrop_animated_(self, v64, v6, 0, x, y, width, height);
  objc_msgSend__updateAllButtonStates(self, v65, v66, v67);
}

- (void)_setCropValidationState:(unint64_t)a3 animated:(BOOL)a4
{
  self->_cropValidationState = a3;
  v5 = 0.0;
  block[1] = 3221225472;
  block[0] = MEMORY[0x277D85DD0];
  block[2] = sub_23BF15E04;
  block[3] = &unk_278BA6A00;
  v10 = a4;
  if (a3 == 1)
  {
    v5 = 1.0;
  }

  block[4] = self;
  *&block[5] = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_msgSend__updateDoneButtonEnabledState(self, v6, v7, v8);
}

- (void)_validatePreview:(id)a3 withCrop:(CGRect)a4 animated:(BOOL)a5
{
  v5 = a5;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v13 = v9;
  if (self->_displayDepthEffect)
  {
    v14 = objc_msgSend_photo(v9, v10, v11, v12);
    objc_msgSend_size(v14, v15, v16, v17);
    v19 = v18;
    v21 = v20;

    objc_msgSend_zoomScale(self->_scrollView, v22, v23, v24);
    v26 = v25;
    v30 = objc_msgSend_layout(self->_time, v27, v28, v29);
    objc_msgSend_normalizedTimeRectWithoutComplications(v30, v31, v32, v33);
    v35 = v34;
    v37 = v36;
    v39 = v38;
    dy = y;
    v41 = v40;

    objc_msgSend_bounds(self->_time, v42, v43, v44);
    v46 = v35 * v45;
    objc_msgSend_bounds(self->_time, v47, v48, v49);
    v51 = v37 * v50;
    objc_msgSend_bounds(self->_time, v52, v53, v54);
    v56 = v39 * v55;
    objc_msgSend_bounds(self->_time, v57, v58, v59);
    v61 = v41 * v60;
    CGAffineTransformMakeScale(&v79, self->_timeContainerScale, self->_timeContainerScale);
    v80.origin.x = v46;
    v80.origin.y = v51;
    v80.size.width = v56;
    v80.size.height = v61;
    v81 = CGRectApplyAffineTransform(v80, &v79);
    v62 = v81.origin.x;
    v63 = v81.origin.y;
    width = v81.size.width;
    height = v81.size.height;
    CGAffineTransformMakeScale(&v79, 1.0 / v26, 1.0 / v26);
    v82.origin.x = v62;
    v82.origin.y = v63;
    v82.size.width = width;
    v82.size.height = height;
    v83 = CGRectApplyAffineTransform(v82, &v79);
    v84 = CGRectOffset(v83, x, dy);
    v66 = v84.origin.x / v19;
    v67 = v84.origin.y / v21;
    v68 = v84.size.width / v19;
    v69 = v84.size.height / v21;
    v73 = objc_msgSend_previewValidator(v13, v70, v71, v72);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_23BF160E4;
    v77[3] = &unk_278BA6A28;
    v77[4] = self;
    v78 = v5;
    objc_msgSend_validateTimeLabel_completion_(v73, v74, v77, v75, v66, v67, v68, v69);
  }

  else
  {
    objc_msgSend__setCropValidationState_animated_(self, v10, 0, v5);
  }
}

- (void)_updateDoneButtonEnabledState
{
  isDragging = objc_msgSend_isDragging(self->_scrollView, a2, v2, v3);
  isDecelerating = objc_msgSend_isDecelerating(self->_scrollView, v6, v7, v8);
  cropValidationState = self->_cropValidationState;
  initialPreviewState = self->_initialPreviewState;
  v15 = objc_msgSend_trailingButton(self->_navigationBar, v12, v13, v14);
  v20 = v15;
  v19 = cropValidationState != 1 && initialPreviewState == 3;
  if (isDecelerating)
  {
    v19 = 0;
  }

  if (isDragging)
  {
    objc_msgSend_setEnabled_(v15, v16, 0, v17);
  }

  else
  {
    objc_msgSend_setEnabled_(v15, v16, v19, v17);
  }
}

- (void)_cancelPressed
{
  if (objc_msgSend_didInteractWithCropView(self, a2, v2, v3))
  {
    v8 = objc_msgSend_alertControllerWithTitle_message_preferredStyle_(MEMORY[0x277D75110], v5, 0, 0, 0);
    v10 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v9, @"MANUAL_LAYOUT_CANCEL_ALERT_TITLE", @"Discard Changes");
    v12 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v11, @"MANUAL_LAYOUT_CANCEL_ALERT_BUTTON", @"Cancel");
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_23BF1637C;
    v29[3] = &unk_278BA6A50;
    v29[4] = self;
    v14 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v13, v10, 0, v29);
    objc_msgSend_addAction_(v8, v15, v14, v16);

    v18 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v17, v12, 1, 0);
    objc_msgSend_addAction_(v8, v19, v18, v20);

    v24 = objc_msgSend_parentViewController(self, v21, v22, v23);
    objc_msgSend_presentViewController_animated_completion_(v24, v25, v8, 1, 0);
  }

  else
  {
    v28 = objc_msgSend_delegate(self, v5, v6, v7);
    objc_msgSend_ParmesanPreviewViewControllerWantsToCancel_(v28, v26, self, v27);
  }
}

- (void)_donePressed
{
  v7 = objc_msgSend_delegate(self, a2, v2, v3);
  objc_msgSend_ParmesanPreviewViewControllerWantsToSave_(v7, v5, self, v6);
}

- (void)_revertPressed
{
  v3 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, a2, @"MANUAL_LAYOUT_REVERT_ALERT_TITLE", @"Revert to original will…");
  v5 = objc_msgSend_alertControllerWithTitle_message_preferredStyle_(MEMORY[0x277D75110], v4, 0, v3, 0);
  v7 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v6, @"MANUAL_LAYOUT_REVERT_ALERT_BUTTON", @"Revert to Original");
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D750F8];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = sub_23BF165F4;
  v23 = &unk_278BA6A78;
  objc_copyWeak(&v24, &location);
  v10 = objc_msgSend_actionWithTitle_style_handler_(v8, v9, v7, 2, &v20);
  objc_msgSend_addAction_(v5, v11, v10, v12, v20, v21, v22, v23);

  v14 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v13, @"MANUAL_LAYOUT_CANCEL_ALERT_BUTTON", @"Cancel");
  v16 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v15, v14, 1, 0);
  objc_msgSend_addAction_(v5, v17, v16, v18);

  objc_msgSend_presentViewController_animated_completion_(self, v19, v5, 1, 0);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_changePhotoPressed
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23BF0C000, v3, OS_LOG_TYPE_INFO, "User tapped Change Photo", buf, 2u);
  }

  v6 = objc_msgSend_parmesanConfigurationWithLimit_(MEMORY[0x277D2BFA0], v4, 1, v5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23BF168A0;
  v8[3] = &unk_278BA6960;
  v8[4] = self;
  objc_msgSend_presentPhotosAddControllerFromViewController_configuration_withCompletion_(MEMORY[0x277D2BFA0], v7, self, v6, v8);
}

- (void)_didSelectPhotoForChangePhoto:(id)a3
{
  v4 = a3;
  previewProvider = self->_previewProvider;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23BF16A94;
  v8[3] = &unk_278BA6AA0;
  v9 = v4;
  v10 = self;
  v6 = v4;
  objc_msgSend_Parmesan_changePhotoWithAsset_completion_(previewProvider, v7, v6, v8);
}

- (void)_toggleDepthEffectPressed
{
  v5 = objc_msgSend_displayDepthEffect(self, a2, v2, v3) ^ 1;

  MEMORY[0x2821F9670](self, sel_setDisplayDepthEffect_, v5, v6);
}

- (id)_symbolForUsingDepthEffect:(BOOL)a3
{
  if (a3)
  {
    return @"square.3.layers.3d";
  }

  else
  {
    return @"square.3.layers.3d.slash";
  }
}

- (void)setDisplayDepthEffect:(BOOL)a3
{
  if (self->_displayDepthEffect != a3)
  {
    v4 = a3;
    self->_displayDepthEffect = a3;
    v6 = [NTKParmesanCropPreviewModel alloc];
    v10 = objc_msgSend_photo(self->_currentPreview, v7, v8, v9);
    v14 = objc_msgSend_maskedPhoto(self->_currentPreview, v11, v12, v13);
    v18 = objc_msgSend_previewValidator(self->_currentPreview, v15, v16, v17);
    v22 = objc_msgSend_crop(self->_currentPreview, v19, v20, v21);
    v26 = objc_msgSend_timeLayout(self->_currentPreview, v23, v24, v25);
    isRevertable = objc_msgSend_isRevertable(self->_currentPreview, v27, v28, v29);
    v33 = objc_msgSend_initWithPhoto_maskedPhoto_previewValidator_crop_timeLayout_useDepthEffect_revertable_(v6, v30, v10, v14, v18, v22, v26, v4, isRevertable);

    objc_msgSend__setPreview_animated_(self, v31, v33, 0);
  }
}

- (void)_updatePreviewForDepthEffect:(BOOL)a3
{
  if (a3)
  {
    objc_msgSend_setAlpha_(self->_overlayScrollView, a2, a3, v3, 1.0);
  }

  else
  {
    objc_msgSend_setAlpha_(self->_overlayScrollView, a2, a3, v3, 0.0);
  }
}

- (void)timeLayoutSelectionController:(id)a3 didChangeSelection:(id)a4
{
  v32 = a4;
  v10 = objc_msgSend_currentPreview(self, v5, v6, v7);
  if (v10)
  {
    objc_msgSend_setDidInteractWithCropView_(self, v8, 1, v9);
    v11 = [NTKParmesanCropPreviewModel alloc];
    v15 = objc_msgSend_photo(v10, v12, v13, v14);
    v19 = objc_msgSend_maskedPhoto(v10, v16, v17, v18);
    v23 = objc_msgSend_previewValidator(v10, v20, v21, v22);
    v27 = objc_msgSend_crop(v10, v24, v25, v26);
    v31 = 1;
    v29 = objc_msgSend_initWithPhoto_maskedPhoto_previewValidator_crop_timeLayout_useDepthEffect_revertable_(v11, v28, v15, v19, v23, v27, v32, self->_displayDepthEffect, v31);

    objc_msgSend__setPreview_animated_(self, v30, v29, 1);
  }
}

- (NTKCParmesanPreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end