@interface GEOFeatureStyleAttributesCache
+ (GEOFeatureStyleAttributesCache)sharedInstance;
- (GEOFeatureStyleAttributesCache)init;
- (id)fillColorForStyleAttributes:(id)attributes key:(id)key;
- (id)glyphColorForStyleAttributes:(id)attributes key:(id)key;
- (id)imageForStyleAttributes:(id)attributes key:(id)key;
- (void)imageAndColorsForStyleAttributes:(id)attributes image:(id *)image glyphColor:(id *)color fillColor:(id *)fillColor;
- (void)imageAndColorsForStyleAttributes:(id)attributes key:(id)key image:(id *)image glyphColor:(id *)color fillColor:(id *)fillColor;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DF5A8);
  if (!WeakRetained)
  {
    WeakRetained = objc_opt_new();
    objc_storeWeak(&qword_27E1DF5A8, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (id)imageForStyleAttributes:(id)attributes key:(id)key
{
  attributesCopy = attributes;
  keyCopy = key;
  v8 = keyCopy;
  if (attributesCopy && keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_imageCache, v10, v11, v8);
    if (!v13)
    {
      v13 = objc_msgSend_imageForStyle_size_forScale_format_transparent_(MEMORY[0x277CD4E08], v12, selfCopy->_screenScale, attributesCopy, 0, 1, 1);
      if (v13)
      {
        objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_imageCache, v14, v15, v13, v8);
      }
    }

    objc_sync_exit(selfCopy);
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

- (id)glyphColorForStyleAttributes:(id)attributes key:(id)key
{
  attributesCopy = attributes;
  keyCopy = key;
  v8 = keyCopy;
  if (attributesCopy && keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_glyphColorCache, v10, v11, v8);
    if (!v13)
    {
      v14 = objc_msgSend_newGlyphColorForStyleAttributes_forScale_(MEMORY[0x277CD4E08], v12, selfCopy->_screenScale, attributesCopy);
      v13 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v15, v16, v14);
      if (v13)
      {
        objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_glyphColorCache, v17, v18, v13, v8);
      }
    }

    objc_sync_exit(selfCopy);
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

- (id)fillColorForStyleAttributes:(id)attributes key:(id)key
{
  attributesCopy = attributes;
  keyCopy = key;
  v8 = keyCopy;
  if (attributesCopy && keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_fillColorCache, v10, v11, v8);
    if (!v13)
    {
      v14 = objc_msgSend_newFillColorForStyleAttributes_forScale_(MEMORY[0x277CD4E08], v12, selfCopy->_screenScale, attributesCopy);
      v13 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v15, v16, v14);
      if (v13)
      {
        objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_fillColorCache, v17, v18, v13, v8);
      }
    }

    objc_sync_exit(selfCopy);
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

- (void)imageAndColorsForStyleAttributes:(id)attributes key:(id)key image:(id *)image glyphColor:(id *)color fillColor:(id *)fillColor
{
  attributesCopy = attributes;
  keyCopy = key;
  v14 = keyCopy;
  if (attributesCopy && keyCopy)
  {
    screenScale = self->_screenScale;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v20 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_imageCache, v17, v18, v14);
    if (!v20)
    {
      v20 = objc_msgSend_imageForStyle_size_forScale_format_transparent_(MEMORY[0x277CD4E08], v19, screenScale, attributesCopy, 0, 1, 1);
      if (v20)
      {
        objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_imageCache, v19, v21, v20, v14);
      }
    }

    v23 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_fillColorCache, v19, v21, v14);
    if (!v23)
    {
      v25 = objc_msgSend_newFillColorForStyleAttributes_forScale_(MEMORY[0x277CD4E08], v22, screenScale, attributesCopy);
      v23 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v26, v27, v25);
      if (v23)
      {
        objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_fillColorCache, v22, v24, v23, v14);
      }
    }

    v29 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_glyphColorCache, v22, v24, v14);
    if (!v29)
    {
      v30 = objc_msgSend_newGlyphColorForStyleAttributes_forScale_(MEMORY[0x277CD4E08], v28, screenScale, attributesCopy);
      v29 = objc_msgSend_colorWithCGColor_(MEMORY[0x277D75348], v31, v32, v30);
      if (v29)
      {
        objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_glyphColorCache, v33, v34, v29, v14);
      }
    }

    objc_sync_exit(selfCopy);

    if (image)
    {
      v35 = v20;
      *image = v20;
    }

    if (color)
    {
      v36 = v29;
      *color = v29;
    }

    if (fillColor)
    {
      v37 = v23;
      *fillColor = v23;
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

- (void)imageAndColorsForStyleAttributes:(id)attributes image:(id *)image glyphColor:(id *)color fillColor:(id *)fillColor
{
  attributesCopy = attributes;
  v13 = objc_msgSend_keyForStyleAttributes_(GEOFeatureStyleAttributesCache, v11, v12, attributesCopy);
  v16 = v13;
  if (v13 && objc_msgSend_length(v13, v14, v15))
  {
    objc_msgSend_imageAndColorsForStyleAttributes_key_image_glyphColor_fillColor_(self, v17, v18, attributesCopy, v16, image, color, fillColor);
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