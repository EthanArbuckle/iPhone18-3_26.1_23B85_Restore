@interface NTKParmesanFontLoader
+ (id)_fontVariationAttributesFromDictionary:(id)a3;
+ (id)newYorkFontDescriptorWithAttributes:(id)a3;
+ (id)newYorkSoftFontDescriptorWithAttributes:(id)a3;
+ (id)softFontDescriptorWithAttributes:(id)a3;
+ (id)tokyoFontDescriptorWithAttributes:(id)a3;
@end

@implementation NTKParmesanFontLoader

+ (id)softFontDescriptorWithAttributes:(id)a3
{
  v4 = qword_27E1E3120;
  v7 = a3;
  if (v4 != -1)
  {
    sub_23BFF82F0();
  }

  v8 = objc_msgSend__fontVariationAttributesFromDictionary_(a1, v5, v7, v6);

  v10 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v9, v8, *MEMORY[0x277CC4990]);
  v13 = objc_msgSend_fontDescriptorByAddingAttributes_(qword_27E1E3118, v11, v10, v12);

  return v13;
}

+ (id)newYorkFontDescriptorWithAttributes:(id)a3
{
  v4 = qword_27E1E3130;
  v7 = a3;
  if (v4 != -1)
  {
    sub_23BFF8304();
  }

  v8 = objc_msgSend__fontVariationAttributesFromDictionary_(a1, v5, v7, v6);

  v10 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v9, v8, *MEMORY[0x277CC4990]);
  v13 = objc_msgSend_fontDescriptorByAddingAttributes_(qword_27E1E3128, v11, v10, v12);

  return v13;
}

+ (id)newYorkSoftFontDescriptorWithAttributes:(id)a3
{
  v4 = qword_27E1E3140;
  v7 = a3;
  if (v4 != -1)
  {
    sub_23BFF8318();
  }

  v8 = objc_msgSend__fontVariationAttributesFromDictionary_(a1, v5, v7, v6);

  v10 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v9, v8, *MEMORY[0x277CC4990]);
  v13 = objc_msgSend_fontDescriptorByAddingAttributes_(qword_27E1E3138, v11, v10, v12);

  return v13;
}

+ (id)tokyoFontDescriptorWithAttributes:(id)a3
{
  v4 = qword_27E1E3150[0];
  v7 = a3;
  if (v4 != -1)
  {
    sub_23BFF832C();
  }

  v8 = objc_msgSend__fontVariationAttributesFromDictionary_(a1, v5, v7, v6);

  v10 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v9, v8, *MEMORY[0x277CC4990]);
  v13 = objc_msgSend_fontDescriptorByAddingAttributes_(qword_27E1E3148, v11, v10, v12);

  return v13;
}

+ (id)_fontVariationAttributesFromDictionary:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_23BF32EC0;
  v13 = sub_23BF32ED0;
  v14 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23BF32ED8;
  v8[3] = &unk_278BA7430;
  v8[4] = &v9;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v3, v4, v8, v5);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end