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
  objc_msgSend__discretizedTypographicSizeForTypographicSize_(v12, v13, v14, v15, width, height);
  v17 = v16;
  v18 = v37.height;
  *&v16 = a4;
  v19 = roundf(*&v16);
  v20 = MEMORY[0x277CCACA8];
  v37.width = v17;
  v21 = NSStringFromCGSize(v37);
  v24 = objc_msgSend_stringWithFormat_(v20, v22, @"(%.1f)-(%.1f)-(%@)-(%u)", v23, *&fontSize, *&v19, v21, a6);

  v27 = objc_msgSend_objectForKey_(self->_fontCache, v25, v24, v26);
  if (!v27)
  {
    v28 = objc_opt_class();
    v31 = objc_msgSend__foghornFaceFontDescriptorWithTypographicSize_weight_stylisticSet_(v28, v29, a6, v30, v17, v18, a4);
    v27 = objc_msgSend_fontWithDescriptor_size_(MEMORY[0x277CBBB08], v32, v31, v33, fontSize);
    objc_msgSend_setObject_forKey_(self->_fontCache, v34, v27, v24);
  }

  return v27;
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
  if (qword_27E1DCAB8 != -1)
  {
    sub_23BE7D2E4();
  }

  v11 = objc_msgSend_copy(qword_27E1DCAB0, a2, a5, v5);
  v12 = objc_opt_new();
  v15 = objc_msgSend__fontVariationAttributesForTypographicSize_weight_stylisticSet_(a1, v13, a5, v14, width, height, a4);
  objc_msgSend_setObject_forKey_(v12, v16, v15, *MEMORY[0x277CC4990]);
  v19 = objc_msgSend_fontDescriptorByAddingAttributes_(v11, v17, v12, v18);

  return v19;
}

+ (id)_fontVariationAttributesForTypographicSize:(CGSize)a3 weight:(double)a4 stylisticSet:(unint64_t)a5
{
  width = a3.width;
  height = a3.height;
  v9 = objc_opt_new();
  v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v10, width, v11);
  v13 = MEMORY[0x277CCABB0];
  v14 = TextToFourCharCode();
  v17 = objc_msgSend_numberWithUnsignedInt_(v13, v15, v14, v16);
  objc_msgSend_setObject_forKey_(v9, v18, v12, v17);

  v21 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v19, height, v20);
  v22 = MEMORY[0x277CCABB0];
  v23 = TextToFourCharCode();
  v26 = objc_msgSend_numberWithUnsignedInt_(v22, v24, v23, v25);
  objc_msgSend_setObject_forKey_(v9, v27, v21, v26);

  v31 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v28, v29, v30, a4);
  v32 = MEMORY[0x277CCABB0];
  v33 = TextToFourCharCode();
  v36 = objc_msgSend_numberWithUnsignedInt_(v32, v34, v33, v35);
  objc_msgSend_setObject_forKey_(v9, v37, v31, v36);

  if (a5)
  {
    v38 = MEMORY[0x277CCABB0];
    v39 = TextToFourCharCode();
    v42 = objc_msgSend_numberWithUnsignedInt_(v38, v40, v39, v41);
    objc_msgSend_setObject_forKey_(v9, v43, MEMORY[0x277CBEC38], v42);
  }

  return v9;
}

@end