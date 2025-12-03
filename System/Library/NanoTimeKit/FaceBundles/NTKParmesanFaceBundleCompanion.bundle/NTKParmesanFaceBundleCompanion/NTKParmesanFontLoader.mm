@interface NTKParmesanFontLoader
+ (id)_fontVariationAttributesFromDictionary:(id)dictionary;
+ (id)newYorkFontDescriptorWithAttributes:(id)attributes;
+ (id)newYorkSoftFontDescriptorWithAttributes:(id)attributes;
+ (id)softFontDescriptorWithAttributes:(id)attributes;
+ (id)tokyoFontDescriptorWithAttributes:(id)attributes;
@end

@implementation NTKParmesanFontLoader

+ (id)softFontDescriptorWithAttributes:(id)attributes
{
  v4 = qword_27E1E3120;
  attributesCopy = attributes;
  if (v4 != -1)
  {
    sub_23BFF82F0();
  }

  v8 = objc_msgSend__fontVariationAttributesFromDictionary_(self, v5, attributesCopy, v6);

  v10 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v9, v8, *MEMORY[0x277CC4990]);
  v13 = objc_msgSend_fontDescriptorByAddingAttributes_(qword_27E1E3118, v11, v10, v12);

  return v13;
}

+ (id)newYorkFontDescriptorWithAttributes:(id)attributes
{
  v4 = qword_27E1E3130;
  attributesCopy = attributes;
  if (v4 != -1)
  {
    sub_23BFF8304();
  }

  v8 = objc_msgSend__fontVariationAttributesFromDictionary_(self, v5, attributesCopy, v6);

  v10 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v9, v8, *MEMORY[0x277CC4990]);
  v13 = objc_msgSend_fontDescriptorByAddingAttributes_(qword_27E1E3128, v11, v10, v12);

  return v13;
}

+ (id)newYorkSoftFontDescriptorWithAttributes:(id)attributes
{
  v4 = qword_27E1E3140;
  attributesCopy = attributes;
  if (v4 != -1)
  {
    sub_23BFF8318();
  }

  v8 = objc_msgSend__fontVariationAttributesFromDictionary_(self, v5, attributesCopy, v6);

  v10 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v9, v8, *MEMORY[0x277CC4990]);
  v13 = objc_msgSend_fontDescriptorByAddingAttributes_(qword_27E1E3138, v11, v10, v12);

  return v13;
}

+ (id)tokyoFontDescriptorWithAttributes:(id)attributes
{
  v4 = qword_27E1E3150[0];
  attributesCopy = attributes;
  if (v4 != -1)
  {
    sub_23BFF832C();
  }

  v8 = objc_msgSend__fontVariationAttributesFromDictionary_(self, v5, attributesCopy, v6);

  v10 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v9, v8, *MEMORY[0x277CC4990]);
  v13 = objc_msgSend_fontDescriptorByAddingAttributes_(qword_27E1E3148, v11, v10, v12);

  return v13;
}

+ (id)_fontVariationAttributesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
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
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(dictionaryCopy, v4, v8, v5);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

@end