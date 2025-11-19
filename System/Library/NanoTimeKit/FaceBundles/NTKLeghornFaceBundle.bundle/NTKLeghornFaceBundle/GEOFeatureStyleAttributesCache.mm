@interface GEOFeatureStyleAttributesCache
+ (GEOFeatureStyleAttributesCache)sharedInstance;
- (GEOFeatureStyleAttributesCache)init;
- (id)fillColorForStyleAttributes:(id)a3 key:(id)a4;
- (id)glyphColorForStyleAttributes:(id)a3 key:(id)a4;
- (id)imageForStyleAttributes:(id)a3 key:(id)a4;
- (void)imageAndColorsForStyleAttributes:(id)a3 image:(id *)a4 glyphColor:(id *)a5 fillColor:(id *)a6;
- (void)imageAndColorsForStyleAttributes:(id)a3 key:(id)a4 image:(id *)a5 glyphColor:(id *)a6 fillColor:(id *)a7;
@end

@implementation GEOFeatureStyleAttributesCache

- (GEOFeatureStyleAttributesCache)init
{
  v16.receiver = self;
  v16.super_class = GEOFeatureStyleAttributesCache;
  v2 = [(GEOFeatureStyleAttributesCache *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    imageCache = v2->_imageCache;
    v2->_imageCache = v3;

    v5 = objc_opt_new();
    glyphColorCache = v2->_glyphColorCache;
    v2->_glyphColorCache = v5;

    v7 = objc_opt_new();
    fillColorCache = v2->_fillColorCache;
    v2->_fillColorCache = v7;

    v11 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v9, v10);
    objc_msgSend_scale(v11, v12, v13);
    v2->_screenScale = v14;
  }

  return v2;
}

+ (GEOFeatureStyleAttributesCache)sharedInstance
{
  v2 = a1;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DF5A8);
  if (!WeakRetained)
  {
    WeakRetained = objc_opt_new();
    objc_storeWeak(&qword_27E1DF5A8, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

- (id)imageForStyleAttributes:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = self;
    objc_sync_enter(v9);
    v13 = objc_msgSend_objectForKeyedSubscript_(v9->_imageCache, v10, v11, v8);
    if (!v13)
    {
      v13 = objc_msgSend_imageForStyle_size_forScale_format_transparent_(MEMORY[0x277CD4E08], v12, v9->_screenScale, v6, 0, 1, 1);
      if (v13)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v9->_imageCache, v14, v15, v13, v8);
      }
    }

    objc_sync_exit(v9);
  }

  else
  {
    v16 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE70EC();
    }

    v13 = 0;
  }

  return v13;
}

- (id)glyphColorForStyleAttributes:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = self;
    objc_sync_enter(v9);
    v13 = objc_msgSend_objectForKeyedSubscript_(v9->_glyphColorCache, v10, v11, v8);
    if (!v13)
    {
      v14 = objc_msgSend_newGlyphColorForStyleAttributes_forScale_(MEMORY[0x277CD4E08], v12, v9->_screenScale, v6);
      v13 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v15, v16, v14);
      if (v13)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v9->_glyphColorCache, v17, v18, v13, v8);
      }
    }

    objc_sync_exit(v9);
  }

  else
  {
    v19 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE7160();
    }

    v13 = 0;
  }

  return v13;
}

- (id)fillColorForStyleAttributes:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = self;
    objc_sync_enter(v9);
    v13 = objc_msgSend_objectForKeyedSubscript_(v9->_fillColorCache, v10, v11, v8);
    if (!v13)
    {
      v14 = objc_msgSend_newFillColorForStyleAttributes_forScale_(MEMORY[0x277CD4E08], v12, v9->_screenScale, v6);
      v13 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v15, v16, v14);
      if (v13)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v9->_fillColorCache, v17, v18, v13, v8);
      }
    }

    objc_sync_exit(v9);
  }

  else
  {
    v19 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE71D4();
    }

    v13 = 0;
  }

  return v13;
}

- (void)imageAndColorsForStyleAttributes:(id)a3 key:(id)a4 image:(id *)a5 glyphColor:(id *)a6 fillColor:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = v13;
  if (v12 && v13)
  {
    screenScale = self->_screenScale;
    v16 = self;
    objc_sync_enter(v16);
    v20 = objc_msgSend_objectForKeyedSubscript_(v16->_imageCache, v17, v18, v14);
    if (!v20)
    {
      v20 = objc_msgSend_imageForStyle_size_forScale_format_transparent_(MEMORY[0x277CD4E08], v19, screenScale, v12, 0, 1, 1);
      if (v20)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v16->_imageCache, v19, v21, v20, v14);
      }
    }

    v23 = objc_msgSend_objectForKeyedSubscript_(v16->_fillColorCache, v19, v21, v14);
    if (!v23)
    {
      v25 = objc_msgSend_newFillColorForStyleAttributes_forScale_(MEMORY[0x277CD4E08], v22, screenScale, v12);
      v23 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v26, v27, v25);
      if (v23)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v16->_fillColorCache, v22, v24, v23, v14);
      }
    }

    v29 = objc_msgSend_objectForKeyedSubscript_(v16->_glyphColorCache, v22, v24, v14);
    if (!v29)
    {
      v30 = objc_msgSend_newGlyphColorForStyleAttributes_forScale_(MEMORY[0x277CD4E08], v28, screenScale, v12);
      v29 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v31, v32, v30);
      if (v29)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v16->_glyphColorCache, v33, v34, v29, v14);
      }
    }

    objc_sync_exit(v16);

    if (a5)
    {
      v35 = v20;
      *a5 = v20;
    }

    if (a6)
    {
      v36 = v29;
      *a6 = v29;
    }

    if (a7)
    {
      v37 = v23;
      *a7 = v23;
    }
  }

  else
  {
    v38 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE7248();
    }
  }
}

- (void)imageAndColorsForStyleAttributes:(id)a3 image:(id *)a4 glyphColor:(id *)a5 fillColor:(id *)a6
{
  v10 = a3;
  v13 = objc_msgSend_keyForStyleAttributes_(GEOFeatureStyleAttributesCache, v11, v12, v10);
  v16 = v13;
  if (v13 && objc_msgSend_length(v13, v14, v15))
  {
    objc_msgSend_imageAndColorsForStyleAttributes_key_image_glyphColor_fillColor_(self, v17, v18, v10, v16, a4, a5, a6);
  }

  else
  {
    v19 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE72BC();
    }
  }
}

@end