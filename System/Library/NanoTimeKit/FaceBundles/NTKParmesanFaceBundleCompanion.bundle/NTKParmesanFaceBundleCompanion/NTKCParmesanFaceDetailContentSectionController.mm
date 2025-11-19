@interface NTKCParmesanFaceDetailContentSectionController
- (BOOL)_dynamicEditorHasSelection;
- (BOOL)_handleDidSelectOption:(id)a3;
- (BOOL)canAddFace;
- (BOOL)hasChanges;
- (NTKCParmesanFaceDetailContentSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7 externalAssets:(id)a8;
- (UIViewController)parentViewController;
- (id)_currentEditor;
- (id)_previewNavigationControllerForCurrentEditor;
- (id)cellForEditOption:(id)a3;
- (void)_reloadEditOptionCellContent;
- (void)_setContentForCell:(id)a3 withEditOption:(id)a4;
- (void)_setPhotos:(id)a3;
- (void)_updateSection;
- (void)didSelectRow:(int64_t)a3;
- (void)faceDidChange;
- (void)faceDidChangeResourceDirectory;
- (void)saveChangesWithCompletion:(id)a3;
- (void)setSelectedOptions:(id)a3;
- (void)shuffleSelectionViewController:(id)a3 didFinishWithSelection:(id)a4;
@end

@implementation NTKCParmesanFaceDetailContentSectionController

- (NTKCParmesanFaceDetailContentSectionController)initWithTableViewController:(id)a3 face:(id)a4 inGallery:(BOOL)a5 editOptionCollection:(id)a6 faceView:(id)a7 externalAssets:(id)a8
{
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v20 = a8;
  if (v20)
  {
    v21 = objc_msgSend_filteredCollectionWithObjectsPassingTest_(v16, v18, &unk_284EBA548, v19);
  }

  else
  {
    v21 = v16;
  }

  v22 = v21;
  v28.receiver = self;
  v28.super_class = NTKCParmesanFaceDetailContentSectionController;
  v23 = [(NTKCFaceDetailEditOptionVerticalSectionController *)&v28 initWithTableViewController:v14 face:v15 inGallery:v11 editOptionCollection:v21 faceView:v17];
  v26 = v23;
  if (v23)
  {
    objc_msgSend_setExternalAssets_(v23, v24, v20, v25);
  }

  return v26;
}

- (BOOL)canAddFace
{
  v5 = objc_msgSend_selectedOptions(self, a2, v2, v3);
  v6 = MEMORY[0x277CCABB0];
  v10 = objc_msgSend_collection(self, v7, v8, v9);
  v14 = objc_msgSend_mode(v10, v11, v12, v13);
  v17 = objc_msgSend_numberWithInteger_(v6, v15, v14, v16);
  v20 = objc_msgSend_objectForKeyedSubscript_(v5, v18, v17, v19);

  v24 = objc_msgSend_content(v20, v21, v22, v23);
  if (v24)
  {
    if (v24 != 1)
    {
      v29 = 0;
      goto LABEL_7;
    }

    HasPhotos = objc_msgSend__manualEditorHasPhotos(self, v25, v26, v27);
  }

  else
  {
    HasPhotos = objc_msgSend__dynamicEditorHasSelection(self, v25, v26, v27);
  }

  v29 = HasPhotos;
LABEL_7:

  return v29;
}

- (void)_reloadEditOptionCellContent
{
  v5 = objc_msgSend_collection(self, a2, v2, v3);
  v9 = objc_msgSend_options(v5, v6, v7, v8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23BF10C44;
  v12[3] = &unk_278BA68C0;
  v12[4] = self;
  objc_msgSend_enumerateObjectsUsingBlock_(v9, v10, v12, v11);
}

- (void)_setContentForCell:(id)a3 withEditOption:(id)a4
{
  v43 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    currentContent = self->_currentContent;
    v12 = objc_msgSend_content(v7, v9, v10, v11);
    if (objc_msgSend_content(v7, v13, v14, v15) == 1)
    {
      v17 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v16, @"PARMESAN_CONTENT_EDIT_OPTION_MANUAL", @"Manual content option");
      objc_msgSend_setTitleText_(v43, v18, v17, v19);

      parmesanPhotosEditor = self->_parmesanPhotosEditor;
      if (parmesanPhotosEditor || (parmesanPhotosEditor = self->_imageEditor) != 0)
      {
        v24 = objc_msgSend_photosCount(parmesanPhotosEditor, v20, v21, v22);
        if (v24 >= 1)
        {
          v25 = v24;
          v26 = NTKCCustomizationLocalizedFormat();
          v29 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v27, v26, v28, v25);
          objc_msgSend_setValueText_(v43, v30, v29, v31);

LABEL_10:
          objc_msgSend_setActive_(v43, v41, currentContent == v12, v42);

          goto LABEL_11;
        }
      }

      v38 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v20, @"PARMESAN_CONTENT_EDIT_OPTION_MANUAL_ACTION", @"Manual content action");
    }

    else
    {
      v32 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v16, @"PARMESAN_CONTENT_EDIT_OPTION_DYNAMIC", @"Dynamic content title");
      objc_msgSend_setTitleText_(v43, v33, v32, v34);

      v38 = objc_msgSend_localizedShuffleDescription(self->_albumEditor, v35, v36, v37);
    }

    v26 = v38;
    objc_msgSend_setValueText_(v43, v39, v38, v40);
    goto LABEL_10;
  }

LABEL_11:
}

- (void)faceDidChange
{
  v6.receiver = self;
  v6.super_class = NTKCParmesanFaceDetailContentSectionController;
  [(NTKCFaceDetailEditOptionVerticalSectionController *)&v6 faceDidChange];
  objc_msgSend__updateSection(self, v3, v4, v5);
}

- (void)faceDidChangeResourceDirectory
{
  v6.receiver = self;
  v6.super_class = NTKCParmesanFaceDetailContentSectionController;
  [(NTKCFaceDetailSectionController *)&v6 faceDidChangeResourceDirectory];
  objc_msgSend__updateSection(self, v3, v4, v5);
}

- (id)cellForEditOption:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc(MEMORY[0x277D2BF98]);
    v8 = objc_msgSend_initWithEditOption_(v5, v6, v4, v7);
    objc_msgSend__setContentForCell_withEditOption_(self, v9, v8, v4);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = NTKCParmesanFaceDetailContentSectionController;
    v8 = [(NTKCFaceDetailEditOptionVerticalSectionController *)&v11 cellForEditOption:v4];
  }

  return v8;
}

- (void)setSelectedOptions:(id)a3
{
  v262.receiver = self;
  v262.super_class = NTKCParmesanFaceDetailContentSectionController;
  v4 = a3;
  [(NTKCFaceDetailEditOptionVerticalSectionController *)&v262 setSelectedOptions:v4];
  v105 = *&self->_parmesanPhotosEditor == 0 && self->_imageEditor == 0;
  v8 = MEMORY[0x277CCABB0];
  v9 = objc_msgSend_collection(self, v5, v6, v7);
  v13 = objc_msgSend_mode(v9, v10, v11, v12);
  v16 = objc_msgSend_numberWithInteger_(v8, v14, v13, v15);
  v19 = objc_msgSend_objectForKeyedSubscript_(v4, v17, v16, v18);

  if (v105 || (v23 = self->_currentContent, v23 != objc_msgSend_content(v19, v20, v21, v22)))
  {
    v24 = objc_msgSend_content(v19, v20, v21, v22);
    self->_currentContent = v24;
    if (self->_externalAssets)
    {
      v28 = 1;
    }

    else
    {
      v28 = v24;
    }

    self->_currentContent = v28;
    v29 = objc_msgSend_logObject(NTKParmesanFaceBundle, v25, v26, v27);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_23BFF6A44(v105, v19, v29);
    }

    currentContent = self->_currentContent;
    if (currentContent)
    {
      if (currentContent == 1)
      {
        if (NTKPeerDeviceHandlesWideLoads())
        {
          objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v34, @"EDIT_MODE_LABEL_CONTENT_OPTION_DESCRIPTION_24", @"Choose xx photos");
        }

        else
        {
          objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v34, @"EDIT_MODE_LABEL_CONTENT_OPTION_DESCRIPTION_06", @"Choose xx photos");
        }
        v35 = ;
        objc_msgSend_setFooter_(self, v36, v35, v37);

        if (v105)
        {
          externalAssets = self->_externalAssets;
          if (externalAssets)
          {
            v42 = objc_msgSend_firstObject(externalAssets, v38, v39, v40);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v44 = [NTKCParmesanPhotosEditor alloc];
              v48 = objc_msgSend_face(self, v45, v46, v47);
              v52 = objc_msgSend_device(v48, v49, v50, v51);
              v54 = objc_msgSend_initWithResourceDirectory_forDevice_(v44, v53, 0, v52);
              parmesanPhotosEditor = self->_parmesanPhotosEditor;
              self->_parmesanPhotosEditor = v54;

              objc_msgSend_addAssetsFromAssetList_(self->_parmesanPhotosEditor, v56, self->_externalAssets, v57);
              v61 = objc_msgSend_delegate(self, v58, v59, v60);
              objc_msgSend_showLoadingIndicator(v61, v62, v63, v64);

              v68 = objc_msgSend_delegate(self, v65, v66, v67);
              objc_msgSend_showLoadingIndicatorWithProgress_(v68, v69, v70, v71, 1.0);

              v72 = self->_parmesanPhotosEditor;
              v261[0] = MEMORY[0x277D85DD0];
              v261[1] = 3221225472;
              v261[2] = sub_23BF119B4;
              v261[3] = &unk_278BA68E8;
              v261[4] = self;
              objc_msgSend_generateGalleryPreviewResourceDirectoryWithCompletion_(v72, v73, v261, v74);
              goto LABEL_58;
            }

            v165 = self->_externalAssets;
            if (v165)
            {
              v166 = objc_msgSend_firstObject(v165, v38, v39, v40);
              objc_opt_class();
              v167 = objc_opt_isKindOfClass();

              if (v167)
              {
                v168 = [NTKParmesanImageEditor alloc];
                v172 = objc_msgSend_face(self, v169, v170, v171);
                v176 = objc_msgSend_device(v172, v173, v174, v175);
                v179 = objc_msgSend_initForDevice_(v168, v177, v176, v178);
                imageEditor = self->_imageEditor;
                self->_imageEditor = v179;

                objc_msgSend_addImages_(self->_imageEditor, v181, self->_externalAssets, v182);
                v183 = self->_imageEditor;
                v260[0] = MEMORY[0x277D85DD0];
                v260[1] = 3221225472;
                v260[2] = sub_23BF11A38;
                v260[3] = &unk_278BA68E8;
                v260[4] = self;
                objc_msgSend_generateGalleryPreviewResourceDirectoryWithCompletion_(v183, v184, v260, v185);
                goto LABEL_58;
              }
            }
          }

          v186 = objc_msgSend_face(self, v38, v39, v40);
          v85 = objc_msgSend_resourceDirectory(v186, v187, v188, v189);

          v190 = [NTKCParmesanPhotosEditor alloc];
          v89 = objc_msgSend_face(self, v191, v192, v193);
          v93 = objc_msgSend_device(v89, v194, v195, v196);
          v198 = objc_msgSend_initWithResourceDirectory_forDevice_(v190, v197, v85, v93);
          v199 = self->_parmesanPhotosEditor;
          self->_parmesanPhotosEditor = v198;

LABEL_41:
          goto LABEL_58;
        }

        if (objc_msgSend_inGallery(self, v38, v39, v40))
        {
          v109 = self->_parmesanPhotosEditor;
          if (!v109)
          {
            v110 = [NTKCParmesanPhotosEditor alloc];
            v114 = objc_msgSend_face(self, v111, v112, v113);
            v118 = objc_msgSend_device(v114, v115, v116, v117);
            v120 = objc_msgSend_initWithResourceDirectory_forDevice_(v110, v119, 0, v118);
            v121 = self->_parmesanPhotosEditor;
            self->_parmesanPhotosEditor = v120;

            v109 = self->_parmesanPhotosEditor;
          }

          v122 = objc_msgSend_galleryPreviewResourceDirectory(v109, v106, v107, v108);

          v126 = self->_parmesanPhotosEditor;
          if (v122)
          {
            v127 = objc_msgSend_galleryPreviewResourceDirectory(v126, v123, v124, v125);
          }

          else
          {
            v200 = objc_msgSend_resourceDirectory(v126, v123, v124, v125);

            v204 = self->_parmesanPhotosEditor;
            if (!v200)
            {
              v259[0] = MEMORY[0x277D85DD0];
              v259[1] = 3221225472;
              v259[2] = sub_23BF11A98;
              v259[3] = &unk_278BA68E8;
              v259[4] = self;
              objc_msgSend_generateGalleryPreviewResourceDirectoryWithCompletion_(v204, v201, v259, v203);
LABEL_49:
              if ((objc_msgSend__manualEditorHasPhotos(self, v222, v223, v224) & 1) == 0)
              {
                objc_msgSend__handleDidSelectActionRowForOption_(self, v30, v19, v32);
              }

              goto LABEL_58;
            }

            v127 = objc_msgSend_resourceDirectory(v204, v201, v202, v203);
          }

          v157 = v127;
          v205 = objc_msgSend_face(self, v128, v129, v130);
          objc_msgSend_setResourceDirectory_(v205, v206, v157, v207);
        }

        else if (self->_externalAssets)
        {
          v157 = objc_msgSend_logObject(NTKParmesanFaceBundle, v106, v107, v108);
          if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
          {
            sub_23BFF6AD0(&self->_parmesanPhotosEditor, self, v157);
          }
        }

        else
        {
          if (!self->_parmesanPhotosEditor)
          {
            v208 = [NTKCParmesanPhotosEditor alloc];
            v212 = objc_msgSend_face(self, v209, v210, v211);
            v216 = objc_msgSend_device(v212, v213, v214, v215);
            v218 = objc_msgSend_initWithResourceDirectory_forDevice_(v208, v217, 0, v216);
            v219 = self->_parmesanPhotosEditor;
            self->_parmesanPhotosEditor = v218;
          }

          v157 = objc_msgSend_face(self, v106, v107, v108);
          objc_msgSend_setResourceDirectory_(v157, v220, 0, v221);
        }

        goto LABEL_49;
      }
    }

    else
    {
      v75 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v30, @"PARMESAN_EDIT_MODE_SYNCED_ALBUM_OPTION_DESCRIPTION", @"Synced Album");
      objc_msgSend_setFooter_(self, v76, v75, v77);

      if (v105)
      {
        v81 = [NTKCParmesanAlbumEditor alloc];
        v85 = objc_msgSend_face(self, v82, v83, v84);
        v89 = objc_msgSend_resourceDirectory(v85, v86, v87, v88);
        v93 = objc_msgSend_face(self, v90, v91, v92);
        v97 = objc_msgSend_device(v93, v94, v95, v96);
        v101 = objc_msgSend_inGallery(self, v98, v99, v100);
        shouldFinalize = objc_msgSend_initWithResourceDirectory_forDevice_shouldFinalize_(v81, v102, v89, v97, v101);
        albumEditor = self->_albumEditor;
        self->_albumEditor = shouldFinalize;

        goto LABEL_41;
      }

      v134 = objc_msgSend_inGallery(self, v78, v79, v80);
      v135 = self->_albumEditor;
      if (!v134)
      {
        if (v135)
        {
          v158 = objc_msgSend_resourceDirectory(v135, v131, v132, v133);
          v162 = objc_msgSend_face(self, v159, v160, v161);
          objc_msgSend_setResourceDirectory_(v162, v163, v158, v164);
        }

        else
        {
          v234 = [NTKCParmesanAlbumEditor alloc];
          v238 = objc_msgSend_face(self, v235, v236, v237);
          v242 = objc_msgSend_device(v238, v239, v240, v241);
          v244 = objc_msgSend_initWithResourceDirectory_forDevice_shouldFinalize_(v234, v243, 0, v242, 1);
          v245 = self->_albumEditor;
          self->_albumEditor = v244;

          v249 = objc_msgSend_delegate(self, v246, v247, v248);
          objc_msgSend_showLoadingIndicator(v249, v250, v251, v252);

          v253 = self->_albumEditor;
          v257[0] = MEMORY[0x277D85DD0];
          v257[1] = 3221225472;
          v257[2] = sub_23BF11C24;
          v257[3] = &unk_278BA6910;
          v257[4] = self;
          v256[0] = MEMORY[0x277D85DD0];
          v256[1] = 3221225472;
          v256[2] = sub_23BF11C78;
          v256[3] = &unk_278BA68E8;
          v256[4] = self;
          objc_msgSend_finalizeWithProgress_completion_(v253, v254, v257, v256);
        }

        v255 = self->_parmesanPhotosEditor;
        self->_parmesanPhotosEditor = 0;

        goto LABEL_58;
      }

      if (!v135)
      {
        v136 = [NTKCParmesanAlbumEditor alloc];
        v140 = objc_msgSend_face(self, v137, v138, v139);
        v144 = objc_msgSend_device(v140, v141, v142, v143);
        v146 = objc_msgSend_initWithResourceDirectory_forDevice_shouldFinalize_(v136, v145, 0, v144, 1);
        v147 = self->_albumEditor;
        self->_albumEditor = v146;

        v135 = self->_albumEditor;
      }

      v148 = objc_msgSend_galleryPreviewResourceDirectory(v135, v131, v132, v133);

      v152 = self->_albumEditor;
      if (v148)
      {
        v153 = objc_msgSend_galleryPreviewResourceDirectory(v152, v149, v150, v151);
      }

      else
      {
        v225 = objc_msgSend_resourceDirectory(v152, v149, v150, v151);

        v229 = self->_albumEditor;
        if (!v225)
        {
          v258[0] = MEMORY[0x277D85DD0];
          v258[1] = 3221225472;
          v258[2] = sub_23BF11BC4;
          v258[3] = &unk_278BA68E8;
          v258[4] = self;
          objc_msgSend_generateGalleryPreviewResourceDirectoryWithCompletion_(v229, v226, v258, v228);
          goto LABEL_58;
        }

        v153 = objc_msgSend_resourceDirectory(v229, v226, v227, v228);
      }

      v230 = v153;
      v231 = objc_msgSend_face(self, v154, v155, v156);
      objc_msgSend_setResourceDirectory_(v231, v232, v230, v233);
    }

LABEL_58:
    objc_msgSend__reloadEditOptionCellContent(self, v30, v31, v32);
  }
}

- (void)didSelectRow:(int64_t)a3
{
  v6 = objc_msgSend_optionAtIndex_(self, a2, a3, v3);
  v9 = objc_msgSend__handleDidSelectOption_(self, v7, v6, v8);

  if (v9)
  {
    v14 = objc_msgSend_delegate(self, v10, v11, v12);
    objc_msgSend_editOptionSection_didSelectOptionAtIndex_(v14, v13, self, a3);
  }
}

- (BOOL)_handleDidSelectOption:(id)a3
{
  v4 = a3;
  if (objc_msgSend_content(v4, v5, v6, v7) || self->_currentContent != 1 || (objc_msgSend_inGallery(self, v8, v9, v10) & 1) != 0 || self->_canDeleteCustomPhotos)
  {
    if (objc_msgSend_content(v4, v8, v9, v10) == 1)
    {
      if ((objc_msgSend__manualEditorHasPhotos(self, v11, v12, v13) & 1) == 0)
      {
        v68 = MEMORY[0x277D2BFA0];
        v69 = NTKMaxParmesanPhotos();
        v17 = objc_msgSend_parmesanConfigurationWithLimit_(v68, v70, v69, v71);
        v72 = MEMORY[0x277D2BFA0];
        v76 = objc_msgSend_parentViewController(self, v73, v74, v75);
        v108[0] = MEMORY[0x277D85DD0];
        v108[1] = 3221225472;
        v108[2] = sub_23BF12344;
        v108[3] = &unk_278BA6960;
        v108[4] = self;
        objc_msgSend_presentPhotosAddControllerFromViewController_configuration_withCompletion_(v72, v77, v76, v17, v108);

        goto LABEL_16;
      }

      v17 = objc_msgSend__previewNavigationControllerForCurrentEditor(self, v14, v15, v16);
      objc_msgSend_setPreviewDelegate_(v17, v18, self, v19);
      v23 = objc_msgSend_parentViewController(self, v20, v21, v22);
      objc_msgSend_presentViewController_animated_completion_(v23, v24, v17, 1, 0);
    }

    else
    {
      if (objc_msgSend_content(v4, v11, v12, v13))
      {
LABEL_17:
        self->_canDeleteCustomPhotos = 0;
        objc_msgSend__reloadEditOptionCellContent(self, v25, v26, v27);
        v78 = 1;
        goto LABEL_18;
      }

      v28 = objc_msgSend_logObject(NTKParmesanFaceBundle, v25, v26, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v107 = 0;
        _os_log_impl(&dword_23BF0C000, v28, OS_LOG_TYPE_DEFAULT, "Settings up collection view controller", v107, 2u);
      }

      if (!self->_albumEditor)
      {
        v29 = [NTKCParmesanAlbumEditor alloc];
        v33 = objc_msgSend_face(self, v30, v31, v32);
        v37 = objc_msgSend_device(v33, v34, v35, v36);
        shouldFinalize = objc_msgSend_initWithResourceDirectory_forDevice_shouldFinalize_(v29, v38, 0, v37, 1);
        albumEditor = self->_albumEditor;
        self->_albumEditor = shouldFinalize;

        v44 = objc_msgSend_face(self, v41, v42, v43);
        objc_msgSend_setResourceDirectory_(v44, v45, 0, v46);
      }

      v47 = [NTKParmesanShuffleSelectionFlowController alloc];
      v48 = self->_albumEditor;
      v52 = objc_msgSend_face(self, v49, v50, v51);
      v56 = objc_msgSend_inGallery(self, v53, v54, v55);
      v17 = objc_msgSend_initWithEditor_face_inGallery_(v47, v57, v48, v52, v56);

      objc_msgSend_setDelegate_(v17, v58, self, v59);
      v60 = objc_alloc(MEMORY[0x277D757A0]);
      v23 = objc_msgSend_initWithRootViewController_(v60, v61, v17, v62);
      v66 = objc_msgSend_parentViewController(self, v63, v64, v65);
      objc_msgSend_presentViewController_animated_completion_(v66, v67, v23, 1, 0);
    }

LABEL_16:
    goto LABEL_17;
  }

  if (objc_msgSend_content(v4, v8, v9, v10))
  {
    v81 = 0;
    objc_msgSend_alertControllerWithTitle_message_preferredStyle_(MEMORY[0x277D75110], v80, 0, 0, 0);
  }

  else
  {
    v81 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v80, @"PARMESAN_ALERT_WILL_DELETE_MANUAL_PHOTOS_MESSAGE", @"confirm delete prompt");
    objc_msgSend_alertControllerWithTitle_message_preferredStyle_(MEMORY[0x277D75110], v82, 0, v81, 0);
  }
  v83 = ;
  if (objc_msgSend_photosCount(self->_parmesanPhotosEditor, v84, v85, v86) == 1)
  {
    objc_msgSend_stringByAppendingString_(@"PHOTOS_DELETE_BUTTON", v87, @"_SINGULAR", v88);
  }

  else
  {
    objc_msgSend_stringByAppendingString_(@"PHOTOS_DELETE_BUTTON", v87, @"_PLURAL", v88);
  }
  v89 = ;
  v90 = NTKCCustomizationLocalizedString();

  v91 = MEMORY[0x277D750F8];
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = sub_23BF12254;
  v109[3] = &unk_278BA6938;
  v109[4] = self;
  v110 = v4;
  v93 = objc_msgSend_actionWithTitle_style_handler_(v91, v92, v90, 2, v109);
  objc_msgSend_addAction_(v83, v94, v93, v95);
  v96 = MEMORY[0x277D750F8];
  v97 = NTKCCustomizationLocalizedString();
  v99 = objc_msgSend_actionWithTitle_style_handler_(v96, v98, v97, 1, 0);

  objc_msgSend_addAction_(v83, v100, v99, v101);
  v105 = objc_msgSend_parentViewController(self, v102, v103, v104);
  objc_msgSend_presentViewController_animated_completion_(v105, v106, v83, 1, 0);

  v78 = 0;
LABEL_18:

  return v78;
}

- (id)_previewNavigationControllerForCurrentEditor
{
  if (self->_parmesanPhotosEditor)
  {
    v5 = [NTKCParmesanFacePreviewNavigationController alloc];
    v9 = objc_msgSend_face(self, v6, v7, v8);
    v13 = objc_msgSend_faceView(self, v10, v11, v12);
    parmesanPhotosEditor = self->_parmesanPhotosEditor;
    v18 = objc_msgSend_inGallery(self, v15, v16, v17);
    v20 = objc_msgSend_initWithFace_faceView_editor_inGallery_(v5, v19, v9, v13, parmesanPhotosEditor, v18);
LABEL_5:
    v34 = v20;

    goto LABEL_6;
  }

  if (self->_imageEditor)
  {
    v21 = [NTKCParmesanFacePreviewNavigationController alloc];
    v9 = objc_msgSend_face(self, v22, v23, v24);
    v13 = objc_msgSend_faceView(self, v25, v26, v27);
    imageEditor = self->_imageEditor;
    v32 = objc_msgSend_inGallery(self, v29, v30, v31);
    v20 = objc_msgSend_initWithFace_faceView_imageEditor_inGallery_(v21, v33, v9, v13, imageEditor, v32);
    goto LABEL_5;
  }

  v36 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, v2, v3);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    sub_23BFF6B7C(v36);
  }

  v34 = 0;
LABEL_6:

  return v34;
}

- (void)_setPhotos:(id)a3
{
  objc_msgSend_addAssetsFromUIImagePicker_(self->_parmesanPhotosEditor, a2, a3, v3);
  objc_msgSend__updateSection(self, v5, v6, v7);
  if (objc_msgSend_inGallery(self, v8, v9, v10))
  {
    v14 = objc_msgSend_delegate(self, v11, v12, v13);
    objc_msgSend_showLoadingIndicator(v14, v15, v16, v17);

    v21 = objc_msgSend_delegate(self, v18, v19, v20);
    objc_msgSend_showLoadingIndicatorWithProgress_(v21, v22, v23, v24, 1.0);

    parmesanPhotosEditor = self->_parmesanPhotosEditor;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_23BF125C0;
    v28[3] = &unk_278BA68E8;
    v28[4] = self;
    objc_msgSend_generateGalleryPreviewResourceDirectoryWithCompletion_(parmesanPhotosEditor, v26, v28, v27);
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_saveChangesWithCompletion_, 0, v13);
  }
}

- (BOOL)_dynamicEditorHasSelection
{
  v4 = objc_msgSend_shuffleSelection(self->_albumEditor, a2, v2, v3);
  v5 = v4 != 0;

  return v5;
}

- (id)_currentEditor
{
  currentContent = self->_currentContent;
  if (!currentContent)
  {
    v5 = &OBJC_IVAR___NTKCParmesanFaceDetailContentSectionController__albumEditor;
    goto LABEL_6;
  }

  if (currentContent == 1)
  {
    parmesanPhotosEditor = self->_parmesanPhotosEditor;
    if (parmesanPhotosEditor)
    {
      goto LABEL_7;
    }

    v5 = &OBJC_IVAR___NTKCParmesanFaceDetailContentSectionController__imageEditor;
LABEL_6:
    parmesanPhotosEditor = *(&self->super.super.super.super.isa + *v5);
LABEL_7:
    v6 = parmesanPhotosEditor;

    return v6;
  }

  v6 = 0;

  return v6;
}

- (void)_updateSection
{
  objc_msgSend__reloadEditOptionCellContent(self, a2, v2, v3);
  v10 = objc_msgSend_delegate(self, v5, v6, v7);
  objc_msgSend_sectionDidUpdate_(v10, v8, self, v9);
}

- (BOOL)hasChanges
{
  v4 = objc_msgSend__currentEditor(self, a2, v2, v3);
  v8 = objc_msgSend_state(v4, v5, v6, v7) == 2;

  return v8;
}

- (void)saveChangesWithCompletion:(id)a3
{
  v4 = a3;
  if (objc_msgSend_hasChanges(self, v5, v6, v7))
  {
    v14 = objc_msgSend__currentEditor(self, v8, v9, v10);
    if (v14)
    {
      v15 = objc_msgSend_delegate(self, v11, v12, v13);
      objc_msgSend_showLoadingIndicator(v15, v16, v17, v18);

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_23BF12A74;
      v22[3] = &unk_278BA6910;
      v22[4] = self;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_23BF12AC8;
      v20[3] = &unk_278BA6988;
      v20[4] = self;
      v21 = v4;
      objc_msgSend_finalizeWithProgress_completion_(v14, v19, v22, v20);
    }

    else if (v4)
    {
      v4[2](v4);
    }
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (void)shuffleSelectionViewController:(id)a3 didFinishWithSelection:(id)a4
{
  v117 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_logObject(NTKParmesanFaceBundle, v8, v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_msgSend_description(v7, v12, v13, v14);
    *buf = 138412290;
    v116 = v15;
    _os_log_impl(&dword_23BF0C000, v11, OS_LOG_TYPE_DEFAULT, "Shuffle selection did finish with user selection =  %@", buf, 0xCu);
  }

  v19 = objc_msgSend_manualSelection(v7, v16, v17, v18);
  v23 = objc_msgSend_count(v19, v20, v21, v22);

  if (v23)
  {
    v27 = objc_msgSend_logObject(NTKParmesanFaceBundle, v24, v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v116 = v7;
      _os_log_impl(&dword_23BF0C000, v27, OS_LOG_TYPE_DEFAULT, "shuffleSelection:didFinish: selected manual photos, switching editors: %@", buf, 0xCu);
    }

    self->_currentContent = 1;
    v28 = [NTKCParmesanPhotosEditor alloc];
    v32 = objc_msgSend_face(self, v29, v30, v31);
    v36 = objc_msgSend_device(v32, v33, v34, v35);
    v38 = objc_msgSend_initWithResourceDirectory_forDevice_(v28, v37, 0, v36);
    parmesanPhotosEditor = self->_parmesanPhotosEditor;
    self->_parmesanPhotosEditor = v38;

    v40 = MEMORY[0x277CD97A8];
    v105 = v7;
    v44 = objc_msgSend_manualSelection(v7, v41, v42, v43);
    v46 = objc_msgSend_fetchAssetsWithLocalIdentifiers_options_(v40, v45, v44, 0);

    v111 = 0u;
    v112 = 0u;
    v110 = 0u;
    v109 = 0u;
    v47 = v46;
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v109, v114, 16);
    if (v49)
    {
      v51 = v49;
      v52 = *v110;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v110 != v52)
          {
            objc_enumerationMutation(v47);
          }

          v54 = self->_parmesanPhotosEditor;
          v113 = *(*(&v109 + 1) + 8 * i);
          v55 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v50, &v113, 1);
          objc_msgSend_addAssetsFromAssetList_(v54, v56, v55, v57);
        }

        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v50, &v109, v114, 16);
      }

      while (v51);
    }

    v58 = self->_parmesanPhotosEditor;
    v7 = v105;
  }

  else
  {
    v59 = objc_msgSend_editor(v6, v24, v25, v26);
    self->_currentContent = 0;
    v47 = v59;
    v63 = objc_msgSend_logObject(NTKParmesanFaceBundle, v60, v61, v62);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v67 = objc_msgSend_shuffleSelection(v47, v64, v65, v66);
      *buf = 138412290;
      v116 = v67;
      _os_log_impl(&dword_23BF0C000, v63, OS_LOG_TYPE_DEFAULT, "shuffleSelection:didFinish: album editor updated with selection: %@", buf, 0xCu);
    }

    v58 = v47;
  }

  v71 = objc_msgSend_face(self, v68, v69, v70);
  currentContent = self->_currentContent;
  v76 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], v73, v74, v75);
  v78 = objc_msgSend_optionWithContent_device_(NTKParmesanContentEditOption, v77, currentContent, v76);
  objc_msgSend_selectOption_forCustomEditMode_slot_(v71, v79, v78, 12, 0);

  if (objc_msgSend_state(v58, v80, v81, v82) != 1)
  {
    v86 = objc_msgSend_inGallery(self, v83, v84, v85);
    v90 = objc_msgSend_delegate(self, v87, v88, v89);
    objc_msgSend_showLoadingIndicator(v90, v91, v92, v93);

    if (v86)
    {
      v97 = objc_msgSend_delegate(self, v94, v95, v96);
      objc_msgSend_showLoadingIndicatorWithProgress_(v97, v98, v99, v100, 1.0);

      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = sub_23BF13150;
      v108[3] = &unk_278BA68E8;
      v108[4] = self;
      objc_msgSend_generateGalleryPreviewResourceDirectoryWithCompletion_(v58, v101, v108, v102);
    }

    else
    {
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = sub_23BF131D0;
      v107[3] = &unk_278BA6910;
      v107[4] = self;
      v106[0] = MEMORY[0x277D85DD0];
      v106[1] = 3221225472;
      v106[2] = sub_23BF13224;
      v106[3] = &unk_278BA68E8;
      v106[4] = self;
      objc_msgSend_finalizeWithProgress_completion_(v58, v94, v107, v106);
    }
  }

  v103 = objc_msgSend_parentViewController(self, v83, v84, v85);
  objc_msgSend_dismissViewControllerAnimated_completion_(v103, v104, 1, 0);
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end