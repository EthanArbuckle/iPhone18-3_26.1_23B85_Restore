@interface NTKParmesanImageEditor
- (BOOL)_writeItems:(id)a3 toResourceDirectory:(id)a4;
- (BOOL)addImages:(id)a3;
- (BOOL)savePreview:(id)a3 forPhotoAtIndex:(int64_t)a4;
- (CGRect)_defaultCropForImage:(id)a3;
- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)a3;
- (NSArray)imageIdentifiers;
- (id)_cropPreviewModelFromItem:(id)a3;
- (id)_defaultLayoutFromImage:(id)a3;
- (id)_encodeAndCopyImageItems:(id)a3 toResourceDirectory:(id)a4;
- (id)_itemForIdentifier:(id)a3;
- (id)_itemWithDefaultLayoutFromImage:(id)a3;
- (id)_saveImage:(id)a3 withIdentifier:(id)a4 toDirectory:(id)a5;
- (id)initForDevice:(id)a3;
- (void)deletePhotoAtIndex:(int64_t)a3;
- (void)finalizeWithProgress:(id)a3 completion:(id)a4;
- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)a3;
- (void)movePhotoAtIndex:(int64_t)a3 toIndex:(int64_t)a4;
- (void)previewOfLibraryPhotoAtIndex:(int64_t)a3 completion:(id)a4;
- (void)resetCropOfPhotoAtIndex:(int64_t)a3 completion:(id)a4;
- (void)setImageOrder:(id)a3;
- (void)thumbnailInfoForPhotoAtIndex:(int64_t)a3 completion:(id)a4;
@end

@implementation NTKParmesanImageEditor

- (id)initForDevice:(id)a3
{
  v9.receiver = self;
  v9.super_class = NTKParmesanImageEditor;
  v3 = [(NTKCompanionResourceDirectoryEditor *)&v9 initWithResourceDirectory:0 forDevice:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    items = v3->_items;
    v3->_items = v4;

    objc_msgSend_setState_(v3, v6, 1, v7);
  }

  return v3;
}

- (NSArray)imageIdentifiers
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v7 = objc_msgSend_count(self->_items, v4, v5, v6);
  v10 = objc_msgSend_initWithCapacity_(v3, v8, v7, v9);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = self->_items;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v28, 16);
  if (v13)
  {
    v17 = v13;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v11);
        }

        v20 = objc_msgSend_identifier(*(*(&v24 + 1) + 8 * i), v14, v15, v16, v24);
        objc_msgSend_addObject_(v10, v21, v20, v22);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v24, v28, 16);
    }

    while (v17);
  }

  return v10;
}

- (id)_itemForIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_items;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v10)
  {
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = objc_msgSend_identifier(v13, v7, v8, v9, v19);
        isEqualToString = objc_msgSend_isEqualToString_(v14, v15, v4, v16);

        if (isEqualToString)
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v19, v23, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (BOOL)addImages:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_setState_(self, v5, 2, v6);
  v10 = objc_opt_new();
  if (self->_previewIsValid)
  {
    self->_previewIsValid = objc_msgSend_count(self->_items, v7, v8, v9) != 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v4;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v25, v29, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = objc_msgSend__itemWithDefaultLayoutFromImage_(self, v14, *(*(&v25 + 1) + 8 * v18), v15, v25);
        objc_msgSend_addObject_(v10, v20, v19, v21);

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v25, v29, 16);
    }

    while (v16);
  }

  objc_msgSend_addObjectsFromArray_(self->_items, v22, v10, v23);
  return 1;
}

- (void)deletePhotoAtIndex:(int64_t)a3
{
  objc_msgSend_removeObjectAtIndex_(self->_items, a2, a3, v3);
  if (self->_previewIsValid)
  {
    self->_previewIsValid = a3 != 0;
  }

  objc_msgSend_setState_(self, v6, 2, v7);
}

- (CGSize)minimumNormalizedCropSizeForPhotoAtIndex:(int64_t)a3
{
  v4 = objc_msgSend_objectAtIndexedSubscript_(self->_items, a2, a3, v3);
  v8 = objc_msgSend_image(v4, v5, v6, v7);

  objc_msgSend_size(v8, v9, v10, v11);
  v13 = v12;
  objc_msgSend_size(v8, v14, v15, v16);
  v18 = *(MEMORY[0x277D3B3C0] + 8) / v17;
  if (*MEMORY[0x277D3B3C0] / v13 <= 1.0)
  {
    v19 = *MEMORY[0x277D3B3C0] / v13;
  }

  else
  {
    v19 = 1.0;
  }

  if (v18 <= 1.0)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = v19;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)movePhotoAtIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  v14 = objc_msgSend_objectAtIndexedSubscript_(self->_items, a2, a3, a4);
  objc_msgSend_removeObjectAtIndex_(self->_items, v7, a3, v8);
  objc_msgSend_insertObject_atIndex_(self->_items, v9, v14, a4 - (a4 > a3));
  if (self->_previewIsValid)
  {
    if (a3)
    {
      v12 = a4 == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = !v12;
    self->_previewIsValid = v13;
  }

  objc_msgSend_setState_(self, v10, 2, v11);
}

- (void)setImageOrder:(id)a3
{
  v4 = a3;
  if (objc_msgSend_state(self, v5, v6, v7) && objc_msgSend_state(self, v8, v9, v10) <= 2)
  {
    v14 = objc_msgSend_count(self->_items, v11, v12, v13);
    if (v14 == objc_msgSend_count(v4, v15, v16, v17))
    {
      v21 = objc_msgSend_firstObject(self->_items, v18, v19, v20);
      v25 = objc_msgSend_identifier(v21, v22, v23, v24);

      v29 = objc_msgSend_firstObject(v4, v26, v27, v28);
      v32 = v29;
      v33 = (v25 | v29) == 0;
      if (v25)
      {
        v34 = v29 == 0;
      }

      else
      {
        v34 = 1;
      }

      if (v34)
      {
        isEqualToString = 0;
      }

      else
      {
        isEqualToString = objc_msgSend_isEqualToString_(v25, v30, v29, v31);
      }

      if (self->_previewIsValid)
      {
        self->_previewIsValid = (v33 | isEqualToString) & 1;
      }

      v37 = objc_opt_new();
      v48 = 0;
      v49 = &v48;
      v50 = 0x2020000000;
      v51 = 0;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = sub_23BF17C1C;
      v45[3] = &unk_278BA6AC8;
      v45[4] = self;
      v47 = &v48;
      v38 = v37;
      v46 = v38;
      objc_msgSend_enumerateObjectsUsingBlock_(v4, v39, v45, v40);
      if (*(v49 + 24) == 1)
      {
        objc_msgSend_setState_(self, v41, 2, v42);
      }

      items = self->_items;
      self->_items = v38;
      v44 = v38;

      _Block_object_dispose(&v48, 8);
    }

    else
    {
      v25 = objc_msgSend_logObject(NTKParmesanFaceBundle, v18, v19, v20);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF6D64(v4, &self->_items, v25, v35);
      }
    }
  }
}

- (void)previewOfLibraryPhotoAtIndex:(int64_t)a3 completion:(id)a4
{
  items = self->_items;
  v7 = a4;
  v13 = objc_msgSend_objectAtIndexedSubscript_(items, v8, a3, v9);
  v12 = objc_msgSend__cropPreviewModelFromItem_(self, v10, v13, v11);
  v7[2](v7, v12, 0);
}

- (void)resetCropOfPhotoAtIndex:(int64_t)a3 completion:(id)a4
{
  items = self->_items;
  v7 = a4;
  v24 = objc_msgSend_objectAtIndexedSubscript_(items, v8, a3, v9);
  v13 = objc_msgSend_image(v24, v10, v11, v12);
  v16 = objc_msgSend__defaultLayoutFromImage_(self, v14, v13, v15);

  objc_msgSend_setLayout_(v24, v17, v16, v18);
  objc_msgSend_setCanRevert_(v24, v19, 0, v20);
  v23 = objc_msgSend__cropPreviewModelFromItem_(self, v21, v24, v22);
  v7[2](v7, v23, 0);
}

- (BOOL)savePreview:(id)a3 forPhotoAtIndex:(int64_t)a4
{
  v136 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v10 = objc_msgSend_logObject(NTKParmesanFaceBundle, v7, v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v135 = a4;
    _os_log_impl(&dword_23BF0C000, v10, OS_LOG_TYPE_DEFAULT, "savePreview:%ld", buf, 0xCu);
  }

  if (objc_msgSend_state(self, v11, v12, v13) && objc_msgSend_state(self, v14, v15, v16) <= 2)
  {
    v21 = objc_msgSend_logObject(NTKParmesanFaceBundle, v17, v18, v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_23BFF6E88(v6, v21);
    }

    v24 = objc_msgSend_objectAtIndexedSubscript_(self->_items, v22, a4, v23);
    v28 = objc_msgSend_image(v24, v25, v26, v27);
    objc_msgSend__defaultCropForImage_(self, v29, v28, v30);
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v42 = objc_msgSend_default(NTKParmesanTimeLayout, v39, v40, v41);
    v46 = objc_msgSend_crop(v6, v43, v44, v45);
    objc_msgSend_cgRect(v46, v47, v48, v49);
    v139.origin.x = v32;
    v139.origin.y = v34;
    v139.size.width = v36;
    v139.size.height = v38;
    if (CGRectEqualToRect(v137, v139))
    {
      v53 = objc_msgSend_timeLayout(v6, v50, v51, v52);
      isEqual = objc_msgSend_isEqual_(v53, v54, v42, v55);

      if (isEqual)
      {
LABEL_13:
        v60 = objc_msgSend_layout(v24, v57, v58, v59);
        v64 = objc_msgSend_timeLayout(v60, v61, v62, v63);
        v68 = objc_msgSend_timeLayout(v6, v65, v66, v67);
        if (objc_msgSend_isEqual_(v64, v69, v68, v70))
        {
          objc_msgSend_layout(v24, v71, v72, v73);
          v74 = v133 = v42;
          objc_msgSend_crop(v74, v75, v76, v77);
          v79 = v78;
          v81 = v80;
          v83 = v82;
          v85 = v84;
          v89 = objc_msgSend_crop(v6, v86, v87, v88);
          objc_msgSend_cgRect(v89, v90, v91, v92);
          v140.origin.x = v93;
          v140.origin.y = v94;
          v140.size.width = v95;
          v140.size.height = v96;
          v138.origin.x = v79;
          v138.origin.y = v81;
          v138.size.width = v83;
          v138.size.height = v85;
          v97 = CGRectEqualToRect(v138, v140);

          v42 = v133;
          if (v97)
          {
LABEL_20:

            v20 = 1;
            goto LABEL_21;
          }
        }

        else
        {
        }

        if (self->_previewIsValid)
        {
          self->_previewIsValid = a4 != 0;
        }

        objc_msgSend_setState_(self, v98, 2, v99);
        v103 = objc_msgSend_crop(v6, v100, v101, v102);
        objc_msgSend_cgRect(v103, v104, v105, v106);
        v108 = v107;
        v110 = v109;
        v112 = v111;
        v114 = v113;
        v118 = objc_msgSend_layout(v24, v115, v116, v117);
        objc_msgSend_setCrop_(v118, v119, v120, v121, v108, v110, v112, v114);

        v125 = objc_msgSend_timeLayout(v6, v122, v123, v124);
        v129 = objc_msgSend_layout(v24, v126, v127, v128);
        objc_msgSend_setTimeLayout_(v129, v130, v125, v131);

        goto LABEL_20;
      }
    }

    else
    {
    }

    objc_msgSend_setCanRevert_(v24, v57, 1, v59);
    goto LABEL_13;
  }

  v20 = 0;
LABEL_21:

  return v20;
}

- (void)thumbnailInfoForPhotoAtIndex:(int64_t)a3 completion:(id)a4
{
  items = self->_items;
  v6 = a4;
  v28 = objc_msgSend_objectAtIndexedSubscript_(items, v7, a3, v8);
  v12 = objc_msgSend_image(v28, v9, v10, v11);
  v16 = objc_msgSend_layout(v28, v13, v14, v15);
  v20 = objc_msgSend_timeLayout(v16, v17, v18, v19);
  v24 = objc_msgSend_layout(v28, v21, v22, v23);
  objc_msgSend_crop(v24, v25, v26, v27);
  v6[2](v6, v12, v20);
}

- (id)_itemWithDefaultLayoutFromImage:(id)a3
{
  v4 = a3;
  v5 = [NTKParmesanImageEditorItem alloc];
  v8 = objc_msgSend__defaultLayoutFromImage_(self, v6, v4, v7);
  v10 = objc_msgSend_initWithImage_layout_(v5, v9, v4, v8);

  return v10;
}

- (id)_defaultLayoutFromImage:(id)a3
{
  objc_msgSend__defaultCropForImage_(self, a2, a3, v3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_new();
  objc_msgSend_setCrop_(v12, v13, v14, v15, v5, v7, v9, v11);
  v19 = objc_msgSend_default(NTKParmesanTimeLayout, v16, v17, v18);
  objc_msgSend_setTimeLayout_(v12, v20, v19, v21);

  objc_msgSend_setUseDepthEffect_(v12, v22, 0, v23);

  return v12;
}

- (CGRect)_defaultCropForImage:(id)a3
{
  v3 = *MEMORY[0x277D3B3C0] / *(MEMORY[0x277D3B3C0] + 8);
  v4 = a3;
  objc_msgSend_size(v4, v5, v6, v7);
  v9 = v8;
  objc_msgSend_size(v4, v10, v11, v12);
  v14 = v13;

  if (v3 * v14 >= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v3 * v14;
  }

  v16 = fmax((v9 - v15) * 0.5, 0.0);
  v17 = v9 / v3;
  if (v9 / v3 >= v14)
  {
    v17 = v14;
  }

  v18 = fmax((v14 - v17) * 0.5, 0.0);
  result.size.height = v17;
  result.size.width = v15;
  result.origin.y = v18;
  result.origin.x = v16;
  return result;
}

- (id)_cropPreviewModelFromItem:(id)a3
{
  v3 = a3;
  v4 = [NTKParmesanCrop alloc];
  v8 = objc_msgSend_layout(v3, v5, v6, v7);
  objc_msgSend_crop(v8, v9, v10, v11);
  v15 = objc_msgSend_initWithRect_(v4, v12, v13, v14);

  v16 = [NTKParmesanCropPreviewModel alloc];
  v20 = objc_msgSend_image(v3, v17, v18, v19);
  v24 = objc_msgSend_layout(v3, v21, v22, v23);
  v28 = objc_msgSend_timeLayout(v24, v25, v26, v27);
  canRevert = objc_msgSend_canRevert(v3, v29, v30, v31);

  v36 = canRevert;
  v34 = objc_msgSend_initWithPhoto_maskedPhoto_previewValidator_crop_timeLayout_useDepthEffect_revertable_(v16, v33, v20, 0, 0, v15, v28, 0, v36);

  return v34;
}

- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = objc_msgSend_count(self->_items, v9, v10, v11);
    *buf = 136315394;
    *&buf[4] = "[NTKParmesanImageEditor generateGalleryPreviewResourceDirectoryWithCompletion:]";
    *&buf[12] = 2048;
    *&buf[14] = v12;
    _os_log_impl(&dword_23BF0C000, v8, OS_LOG_TYPE_INFO, "%s, items %lu", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = sub_23BF188B0;
  v41 = sub_23BF188C0;
  v42 = 0;
  v16 = objc_msgSend_state(self, v13, v14, v15);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_23BF188C8;
  aBlock[3] = &unk_278BA6B18;
  v37 = buf;
  v38 = v16;
  aBlock[4] = self;
  v17 = v4;
  v36 = v17;
  v18 = _Block_copy(aBlock);
  if (objc_msgSend_state(self, v19, v20, v21) >= 2 && objc_msgSend_state(self, v22, v23, v24) <= 2)
  {
    if (!self->_previewIsValid)
    {
      objc_msgSend_setState_(self, v25, 3, v27);
      v31 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23BF18A74;
      block[3] = &unk_278BA6B40;
      v34 = buf;
      block[4] = self;
      v33 = v18;
      dispatch_async(v31, block);

      goto LABEL_7;
    }

    v29 = objc_msgSend_galleryPreviewResourceDirectory(self, v25, v26, v27);
    v30 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v29;

    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  (*(v18 + 2))(v18, v28);
LABEL_7:

  _Block_object_dispose(buf, 8);
}

- (void)finalizeWithProgress:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v9 = objc_msgSend_logObject(NTKParmesanFaceBundle, v6, v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = objc_msgSend_count(self->_items, v10, v11, v12);
    *buf = 136315394;
    v33 = "[NTKParmesanImageEditor finalizeWithProgress:completion:]";
    v34 = 2048;
    v35 = v13;
    _os_log_impl(&dword_23BF0C000, v9, OS_LOG_TYPE_INFO, "%s, items %lu", buf, 0x16u);
  }

  if (objc_msgSend_state(self, v14, v15, v16) >= 2 && objc_msgSend_state(self, v17, v18, v19) < 3)
  {
    objc_msgSend_setState_(self, v20, 4, v21);
    v24 = self->_items;
    v25 = dispatch_get_global_queue(2, 0);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_23BF18E04;
    v27[3] = &unk_278BA6BE0;
    v28 = v24;
    v29 = v5;
    v27[4] = self;
    v23 = v24;
    v26 = v5;
    dispatch_async(v25, v27);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BF18DF0;
    block[3] = &unk_278BA6B68;
    v31 = v5;
    v22 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v23 = v31;
  }
}

- (BOOL)_writeItems:(id)a3 toResourceDirectory:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_logObject(NTKParmesanFaceBundle, v8, v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v33 = 134218242;
    v34 = objc_msgSend_count(v6, v12, v13, v14);
    v35 = 2114;
    v36 = v7;
    _os_log_impl(&dword_23BF0C000, v11, OS_LOG_TYPE_INFO, "Writing %lu image items to %{public}@", &v33, 0x16u);
  }

  v16 = objc_msgSend__encodeAndCopyImageItems_toResourceDirectory_(self, v15, v6, v7);
  v20 = v16;
  if (!v16 || (v21 = objc_msgSend_count(v16, v17, v18, v19), v21 != objc_msgSend_count(v6, v22, v23, v24)))
  {
    v30 = objc_msgSend_logObject(NTKParmesanFaceBundle, v17, v18, v19);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF6F54();
    }

    goto LABEL_10;
  }

  v25 = NTKPhotosWriteImageListWithVersion();
  v29 = objc_msgSend_logObject(NTKParmesanFaceBundle, v26, v27, v28);
  v30 = v29;
  if ((v25 & 1) == 0)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF6F14();
    }

LABEL_10:
    v31 = 0;
    goto LABEL_11;
  }

  v31 = 1;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    LOWORD(v33) = 0;
    _os_log_impl(&dword_23BF0C000, v30, OS_LOG_TYPE_INFO, "Successfully wrote items", &v33, 2u);
  }

LABEL_11:

  return v31;
}

- (id)_encodeAndCopyImageItems:(id)a3 toResourceDirectory:(id)a4
{
  v122 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = v5;
  v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v116, v121, 16);
  if (v105)
  {
    v104 = *v117;
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    v111 = v6;
    v103 = v7;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v117 != v104)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v116 + 1) + 8 * v11);
        v13 = objc_opt_class();
        v17 = objc_msgSend_image(v12, v14, v15, v16);
        v110 = v12;
        v21 = objc_msgSend_layout(v12, v18, v19, v20);
        objc_msgSend_crop(v21, v22, v23, v24);
        v27 = objc_msgSend__cropAndScaleUIImage_cropRect_outputSize_(v13, v25, v17, v26);

        v28 = MEMORY[0x277CCACA8];
        v32 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v29, v30, v31);
        v36 = objc_msgSend_UUIDString(v32, v33, v34, v35);
        v39 = objc_msgSend_stringWithFormat_(v28, v37, @"TransientImage-%@", v38, v36);

        v41 = objc_msgSend__saveImage_withIdentifier_toDirectory_(self, v40, v27, v39, v6);
        if (!v41)
        {

          v99 = obj;
          v100 = 0;
          goto LABEL_18;
        }

        v45 = v41;
        v107 = v39;
        v109 = v11;
        objc_msgSend_size(v27, v42, v43, v44);
        v47 = v46;
        v108 = v27;
        objc_msgSend_size(v27, v48, v49, v50);
        v52 = v51;
        v53 = [NTKParmesanCrop alloc];
        v57 = objc_msgSend_initWithRect_(v53, v54, v55, v56, 0.0, 0.0, v47, v52);
        v58 = objc_opt_new();
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v62 = objc_msgSend_allLayouts(NTKParmesanTimeLayout, v59, v60, v61);
        v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v112, v120, 16);
        if (v64)
        {
          v65 = v64;
          v66 = *v113;
          do
          {
            for (i = 0; i != v65; ++i)
            {
              if (*v113 != v66)
              {
                objc_enumerationMutation(v62);
              }

              v68 = *(*(&v112 + 1) + 8 * i);
              v69 = [NTKParmesanAssetLayout alloc];
              v71 = objc_msgSend_initWithOriginalCrop_baseImageName_mask_timeLayout_colorAnalysis_imageAOTBrightness_userEdited_(v69, v70, v57, v45, 0, v68, 0, 0, 0.0);
              objc_msgSend_setObject_forKey_(v58, v72, v71, v68);
            }

            v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v73, &v112, v120, 16);
          }

          while (v65);
        }

        v76 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v74, v111, v75);
        v77 = [NTKParmesanAsset alloc];
        v81 = objc_msgSend_date(MEMORY[0x277CBEAA8], v78, v79, v80);
        v85 = objc_msgSend_layout(v110, v82, v83, v84);
        v89 = objc_msgSend_timeLayout(v85, v86, v87, v88);
        v91 = objc_msgSend_initWithLocalIdentifier_modificationDate_presentationSize_videoInfo_resourceDirectory_preferredTimeLayout_layouts_accessibilityDescription_(v77, v90, v107, v81, 0, v76, v89, v58, v9, v10, 0);

        v95 = objc_msgSend_asDictionary(v91, v92, v93, v94);
        v7 = v103;
        objc_msgSend_addObject_(v103, v96, v95, v97);

        v6 = v111;
        v11 = v109 + 1;
      }

      while (v109 + 1 != v105);
      v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v98, &v116, v121, 16);
      if (v105)
      {
        continue;
      }

      break;
    }
  }

  v99 = obj;

  v100 = v7;
LABEL_18:

  return v100;
}

- (id)_saveImage:(id)a3 withIdentifier:(id)a4 toDirectory:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277CCACA8];
  v10 = a3;
  v13 = objc_msgSend_stringWithFormat_(v9, v11, @"base_%@.heic", v12, v7);
  v14 = UIImageHEICRepresentation(v10);

  if (v14)
  {
    v18 = objc_msgSend_stringByAppendingPathComponent_(v8, v15, v13, v17);
    v22 = objc_msgSend_logObject(NTKParmesanFaceBundle, v19, v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v35 = v18;
      _os_log_impl(&dword_23BF0C000, v22, OS_LOG_TYPE_INFO, "Saving image to %{public}@", buf, 0xCu);
    }

    v33 = 0;
    objc_msgSend_writeToFile_options_error_(v14, v23, v18, 0, &v33);
    v27 = v33;
    if (v27)
    {
      v28 = objc_msgSend_logObject(NTKParmesanFaceBundle, v24, v25, v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF6F94(v27, v28, v29, v30);
      }
    }

    v31 = v13;
  }

  else
  {
    v27 = objc_msgSend_logObject(NTKParmesanFaceBundle, v15, v16, v17);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF702C();
    }

    v31 = 0;
  }

  return v31;
}

@end