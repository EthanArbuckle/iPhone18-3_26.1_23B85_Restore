@interface NTKFoghornFaceFontLoader
+ (CGSize)_discretizedTypographicSizeForTypographicSize:(CGSize)a3;
+ (id)_foghornFaceFontDescriptorWithTypographicSize:(CGSize)a3 weight:(double)a4 stylisticSet:(unint64_t)a5;
+ (id)_fontVariationAttributesForTypographicSize:(CGSize)a3 weight:(double)a4 stylisticSet:(unint64_t)a5;
- (NTKFoghornFaceFontLoader)initWithFontSize:(double)a3;
- (id)_cachedFontWithTypographicSize:(CGSize)a3 weight:(double)a4 horizontalScale:(double)a5 stylisticSet:(unint64_t)a6;
@end

@implementation NTKFoghornFaceFontLoader

- (NTKFoghornFaceFontLoader)initWithFontSize:(double)a3
{
  v9.receiver = self;
  v9.super_class = NTKFoghornFaceFontLoader;
  v4 = [(NTKFoghornFaceFontLoader *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_fontSize = a3;
    v6 = objc_opt_new();
    fontCache = v5->_fontCache;
    v5->_fontCache = v6;
  }

  return v5;
}

- (id)_cachedFontWithTypographicSize:(CGSize)a3 weight:(double)a4 horizontalScale:(double)a5 stylisticSet:(unint64_t)a6
{
  height = a3.height;
  width = a3.width;
  fontSize = self->_fontSize;
  if (a5 < 1.0)
  {
    fontSize = floor(fontSize * a5 + fontSize * a5) * 0.5;
    height = floor((1.0 / a5 + -1.0) * 55.0 / 0.12 + 1.0 / a5 * a3.height);
    width = floor(a3.width + 0.0);
  }

  v12 = objc_opt_class();
  objc_msgSend__discretizedTypographicSizeForTypographicSize_(v12, v13, width, height);
  v15 = v14;
  v16 = v34.height;
  *&v14 = a4;
  v17 = roundf(*&v14);
  v18 = MEMORY[0x277CCACA8];
  v34.width = v15;
  v19 = NSStringFromCGSize(v34);
  v22 = objc_msgSend_stringWithFormat_(v18, v20, v21, @"(%.1f)-(%.1f)-(%@)-(%u)", *&fontSize, *&v17, v19, a6);

  v25 = objc_msgSend_objectForKey_(self->_fontCache, v23, v24, v22);
  if (!v25)
  {
    v26 = objc_opt_class();
    v28 = objc_msgSend__foghornFaceFontDescriptorWithTypographicSize_weight_stylisticSet_(v26, v27, v15, a6, v16, a4);
    v25 = objc_msgSend_fontWithDescriptor_size_(MEMORY[0x277CBBB08], v29, fontSize, v28);
    objc_msgSend_setObject_forKey_(self->_fontCache, v30, v31, v25, v22);
  }

  return v25;
}

+ (CGSize)_discretizedTypographicSizeForTypographicSize:(CGSize)a3
{
  width = a3.width;
  v4 = roundf(width);
  height = a3.height;
  v6 = roundf(height);
  result.height = v6;
  result.width = v4;
  return result;
}

+ (id)_foghornFaceFontDescriptorWithTypographicSize:(CGSize)a3 weight:(double)a4 stylisticSet:(unint64_t)a5
{
  height = a3.height;
  width = a3.width;
  if (qword_27E1DF028 != -1)
  {
    sub_23BEE6B74();
  }

  v10 = objc_msgSend_copy(qword_27E1DF020, a2, a3.width);
  v11 = objc_opt_new();
  v13 = objc_msgSend__fontVariationAttributesForTypographicSize_weight_stylisticSet_(a1, v12, width, a5, height, a4);
  objc_msgSend_setObject_forKey_(v11, v14, v15, v13, *MEMORY[0x277CC4990]);
  v18 = objc_msgSend_fontDescriptorByAddingAttributes_(v10, v16, v17, v11);

  return v18;
}

+ (id)_fontVariationAttributesForTypographicSize:(CGSize)a3 weight:(double)a4 stylisticSet:(unint64_t)a5
{
  width = a3.width;
  height = a3.height;
  v9 = objc_opt_new();
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v10, v11, width);
  v13 = MEMORY[0x277CCABB0];
  v14 = TextToFourCharCode();
  v17 = objc_msgSend_numberWithUnsignedInt_(v13, v15, v16, v14);
  objc_msgSend_setObject_forKey_(v9, v18, v19, v12, v17);

  v22 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v20, v21, height);
  v23 = MEMORY[0x277CCABB0];
  v24 = TextToFourCharCode();
  v27 = objc_msgSend_numberWithUnsignedInt_(v23, v25, v26, v24);
  objc_msgSend_setObject_forKey_(v9, v28, v29, v22, v27);

  v31 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v30, a4);
  v32 = MEMORY[0x277CCABB0];
  v33 = TextToFourCharCode();
  v36 = objc_msgSend_numberWithUnsignedInt_(v32, v34, v35, v33);
  objc_msgSend_setObject_forKey_(v9, v37, v38, v31, v36);

  if (a5)
  {
    v39 = MEMORY[0x277CCABB0];
    v40 = TextToFourCharCode();
    v43 = objc_msgSend_numberWithUnsignedInt_(v39, v41, v42, v40);
    objc_msgSend_setObject_forKey_(v9, v44, v45, MEMORY[0x277CBEC38], v43);
  }

  return v9;
}

@end