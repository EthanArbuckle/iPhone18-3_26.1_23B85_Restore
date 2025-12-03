@interface AKSecureSerializationHelper
+ (id)_decodeAttributedStringFromRTFData:(id)data;
+ (id)_decodeTextAttributesFromRTFData:(id)data;
+ (id)_encodeAttributedStringAsRTFData:(id)data;
+ (id)_encodeTextAttributesAsRTFData:(id)data;
+ (id)dataForSecureCodingCompliantObject:(id)object withOptionalKey:(id)key;
+ (id)decodeColor:(id)color;
+ (id)decodeFont:(id)font;
+ (id)decodeTextAttributes:(id)attributes;
+ (id)encodeColor:(id)color;
+ (id)encodeFont:(id)font;
+ (id)encodeTextAttributes:(id)attributes;
+ (id)secureCodingCompliantObjectForData:(id)data ofClasses:(id)classes withOptionalKey:(id)key;
+ (void)_decodeRTFTextPropertiesWithSecureCoder:(id)coder annotationTextRTF:(id *)f typingAttributesRTF:(id *)tF;
+ (void)_decodeTextPropertiesForAnnotation:(id)annotation withSecureCoder:(id)coder;
+ (void)decodeTextPropertiesOfAnnotation:(id)annotation withSecureCoder:(id)coder;
+ (void)encodeTextPropertiesOfAnnotation:(id)annotation withCoder:(id)coder;
@end

@implementation AKSecureSerializationHelper

+ (id)dataForSecureCodingCompliantObject:(id)object withOptionalKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    v9 = *MEMORY[0x277CCA308];
    if (keyCopy)
    {
      v9 = keyCopy;
    }

    v10 = v9;
    [v8 encodeObject:objectCopy forKey:v10];
    encodedData = [v8 encodedData];

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    encodedData = 0;
  }

  return encodedData;
}

+ (id)secureCodingCompliantObjectForData:(id)data ofClasses:(id)classes withOptionalKey:(id)key
{
  dataCopy = data;
  classesCopy = classes;
  keyCopy = key;
  if (dataCopy)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:0];
    v12 = *MEMORY[0x277CCA308];
    if (keyCopy)
    {
      v12 = keyCopy;
    }

    v13 = v12;
    v14 = [MEMORY[0x277CBEB98] setWithArray:classesCopy];
    v15 = [v11 decodeObjectOfClasses:v14 forKey:v13];

    [v11 finishDecoding];
    if (!v15)
    {
      v16 = os_log_create("com.apple.annotationkit", "Serialization");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_23F4BCD94(classesCopy, v16, v17, v18, v19, v20, v21, v22);
      }
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (void)encodeTextPropertiesOfAnnotation:(id)annotation withCoder:(id)coder
{
  annotationCopy = annotation;
  coderCopy = coder;
  annotationText = [annotationCopy annotationText];
  v8 = annotationText;
  if (annotationText && [annotationText length])
  {
    v9 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v8];
    v10 = [self _encodeAttributedStringAsRTFData:v9];
    [coderCopy encodeObject:v10 forKey:@"annotationTextRTF"];
    [coderCopy encodeObject:v9 forKey:@"attributedString"];
  }

  foregroundColorSDR = [annotationCopy foregroundColorSDR];
  [coderCopy akEncodeColor:foregroundColorSDR forKey:@"foregroundColorSDR"];

  foregroundColorHDR = [annotationCopy foregroundColorHDR];

  if (foregroundColorHDR)
  {
    foregroundColorHDR2 = [annotationCopy foregroundColorHDR];
    [coderCopy akEncodeColor:foregroundColorHDR2 forKey:@"foregroundColorHDR"];
  }

  typingAttributes = [annotationCopy typingAttributes];
  v15 = [self _encodeTextAttributesAsRTFData:typingAttributes];
  [coderCopy encodeObject:v15 forKey:@"typingAttributesRTF"];
  [coderCopy encodeObject:typingAttributes forKey:@"typingAttributes"];
}

+ (void)decodeTextPropertiesOfAnnotation:(id)annotation withSecureCoder:(id)coder
{
  annotationCopy = annotation;
  coderCopy = coder;
  if ([coderCopy requiresSecureCoding])
  {
    v8 = [coderCopy akDecodeColorForKey:@"foregroundColorSDR"];
    [annotationCopy setForegroundColorSDR:v8];

    if ([coderCopy containsValueForKey:@"foregroundColorHDR"])
    {
      v9 = [coderCopy akDecodeColorForKey:@"foregroundColorHDR"];
      [annotationCopy setForegroundColorHDR:v9];
    }

    [self _decodeTextPropertiesForAnnotation:annotationCopy withSecureCoder:coderCopy];
    foregroundColorHDR = [annotationCopy foregroundColorHDR];

    if (foregroundColorHDR)
    {
      typingAttributes = [annotationCopy typingAttributes];
      v12 = [typingAttributes mutableCopy];

      foregroundColorHDR2 = [annotationCopy foregroundColorHDR];
      [v12 setObject:foregroundColorHDR2 forKeyedSubscript:@"NSColor"];

      [annotationCopy setTypingAttributes:v12];
    }
  }

  else
  {
    v14 = os_log_create("com.apple.annotationkit", "Serialization");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BCE00();
    }

    [annotationCopy setEditingDisabled:1];
  }
}

+ (id)encodeColor:(id)color
{
  colorUsingSRGBColorSpace = [color colorUsingSRGBColorSpace];
  cGColor = [colorUsingSRGBColorSpace CGColor];
  v6 = [MEMORY[0x277CBF730] colorWithCGColor:cGColor];
  v7 = [self dataForSecureCodingCompliantObject:v6 withOptionalKey:0];

  return v7;
}

+ (id)decodeColor:(id)color
{
  v9[1] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v9[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [self secureCodingCompliantObjectForData:colorCopy ofClasses:v5 withOptionalKey:0];

  if (v6 && [v6 isMemberOfClass:objc_opt_class()])
  {
    v7 = [MEMORY[0x277D75348] akColorWithCIColor:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)encodeFont:(id)font
{
  fontDescriptor = [font fontDescriptor];
  v5 = [self dataForSecureCodingCompliantObject:fontDescriptor withOptionalKey:0];

  return v5;
}

+ (id)decodeFont:(id)font
{
  v9[1] = *MEMORY[0x277D85DE8];
  fontCopy = font;
  v9[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [self secureCodingCompliantObjectForData:fontCopy ofClasses:v5 withOptionalKey:0];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)encodeTextAttributes:(id)attributes
{
  if (attributes)
  {
    v4 = [self _encodeTextAttributesAsRTFData:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)decodeTextAttributes:(id)attributes
{
  if (attributes)
  {
    v4 = [self _decodeTextAttributesFromRTFData:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)_decodeTextPropertiesForAnnotation:(id)annotation withSecureCoder:(id)coder
{
  annotationCopy = annotation;
  coderCopy = coder;
  if ([annotationCopy akSerializationVersion] < 1)
  {
    v14 = os_log_create("com.apple.annotationkit", "Serialization");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BCE00();
    }

    goto LABEL_16;
  }

  v23 = 0;
  v24 = 0;
  [self _decodeRTFTextPropertiesWithSecureCoder:coderCopy annotationTextRTF:&v24 typingAttributesRTF:&v23];
  v8 = v24;
  v9 = v23;
  if (!v9)
  {
    v15 = os_log_create("com.apple.annotationkit", "Serialization");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BCE34(v15);
    }

    v14 = os_log_create("com.apple.annotationkit", "Serialization");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BCE00();
    }

LABEL_16:

    [annotationCopy setEditingDisabled:1];
    goto LABEL_17;
  }

  v10 = v9;
  if (v8)
  {
    v11 = [self _decodeAttributedStringFromRTFData:v8];
    if (v11)
    {
      v12 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithAttributedString:v11];
      [annotationCopy setAnnotationText:v12];
    }
  }

  v13 = [self _decodeTextAttributesFromRTFData:v10];
  if (v13)
  {
    [annotationCopy setTypingAttributes:v13];
  }

LABEL_17:
  typingAttributes = [annotationCopy typingAttributes];
  if (!typingAttributes || (v17 = typingAttributes, [annotationCopy typingAttributes], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v17, !v19))
  {
    annotationText = [annotationCopy annotationText];

    if (annotationText)
    {
      annotationText2 = [annotationCopy annotationText];
      v22 = [annotationText2 attributesAtIndex:0 effectiveRange:0];
      [annotationCopy setTypingAttributes:v22];
    }

    else
    {
      annotationText2 = +[AKAttributeController defaultTextAttributes];
      [annotationCopy setTypingAttributes:annotationText2];
    }
  }
}

+ (void)_decodeRTFTextPropertiesWithSecureCoder:(id)coder annotationTextRTF:(id *)f typingAttributesRTF:(id *)tF
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"annotationTextRTF"])
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"annotationTextRTF"];
  }

  else
  {
    v7 = 0;
  }

  if (![coderCopy containsValueForKey:@"typingAttributesRTF"])
  {
    v8 = 0;
    if (!f)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typingAttributesRTF"];
  if (f)
  {
LABEL_8:
    v9 = v7;
    *f = v7;
  }

LABEL_9:
  if (tF)
  {
    v10 = v8;
    *tF = v8;
  }
}

+ (id)_encodeAttributedStringAsRTFData:(id)data
{
  v28[3] = *MEMORY[0x277D85DE8];
  if (data)
  {
    v3 = MEMORY[0x277CCAB48];
    dataCopy = data;
    v5 = [[v3 alloc] initWithAttributedString:dataCopy];
    v6 = [dataCopy length];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_23F417708;
    v25[3] = &unk_278C7B680;
    v7 = v5;
    v26 = v7;
    [dataCopy enumerateAttributesInRange:0 options:v6 usingBlock:{0x100000, v25}];

    v8 = [v7 length];
    v9 = *MEMORY[0x277D74090];
    v28[0] = *MEMORY[0x277D74130];
    v10 = *MEMORY[0x277D74140];
    v27[0] = v9;
    v27[1] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v28[1] = v11;
    v27[2] = *MEMORY[0x277D74168];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v28[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
    v24 = 0;
    v14 = [v7 dataFromRange:0 documentAttributes:v8 error:{v13, &v24}];
    v15 = v24;

    if (v15)
    {
      v16 = os_log_create("com.apple.annotationkit", "Serialization");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_23F4BCEB8(v15, v16, v17, v18, v19, v20, v21, v22);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_decodeAttributedStringFromRTFData:(id)data
{
  v31[3] = *MEMORY[0x277D85DE8];
  if (!data)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v3 = MEMORY[0x277CCA898];
  dataCopy = data;
  v5 = [v3 alloc];
  v6 = *MEMORY[0x277D74090];
  v31[0] = *MEMORY[0x277D74130];
  v7 = *MEMORY[0x277D74140];
  v30[0] = v6;
  v30[1] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v31[1] = v8;
  v30[2] = *MEMORY[0x277D74168];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v31[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v29 = 0;
  v11 = [v5 initWithData:dataCopy options:v10 documentAttributes:0 error:&v29];

  v12 = v29;
  if (v12)
  {
    v13 = os_log_create("com.apple.annotationkit", "Serialization");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_23F4BCF38(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    v20 = 0;
    v21 = v11;
  }

  else
  {
    if (!v11)
    {
      v20 = 0;
      goto LABEL_12;
    }

    v21 = [v11 mutableCopy];
    v22 = [v21 attributesAtIndex:0 effectiveRange:0];
    v13 = [v22 mutableCopy];

    v23 = *MEMORY[0x277D741E8];
    v24 = [v13 objectForKeyedSubscript:*MEMORY[0x277D741E8]];

    if (v24)
    {
      [v13 removeObjectForKey:v23];
    }

    v25 = *MEMORY[0x277D74118];
    v26 = [v13 objectForKeyedSubscript:*MEMORY[0x277D74118]];
    v27 = [v26 mutableCopy];

    [v27 setDefaultTabInterval:0.0];
    [v27 setAllowsDefaultTighteningForTruncation:1];
    [v13 setObject:v27 forKeyedSubscript:v25];
    [v21 setAttributes:v13 range:{0, objc_msgSend(v21, "length")}];
    v20 = [v21 copy];
  }

LABEL_12:
LABEL_13:

  return v20;
}

+ (id)_encodeTextAttributesAsRTFData:(id)data
{
  if (data)
  {
    v4 = MEMORY[0x277CCA898];
    dataCopy = data;
    v6 = [[v4 alloc] initWithString:@"a" attributes:dataCopy];

    v7 = [self _encodeAttributedStringAsRTFData:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_decodeTextAttributesFromRTFData:(id)data
{
  v3 = [self _decodeAttributedStringFromRTFData:data];
  v4 = v3;
  if (v3)
  {
    if ([v3 length] == 1)
    {
      v5 = [v4 attributesAtIndex:0 effectiveRange:0];
      goto LABEL_8;
    }

    v6 = os_log_create("com.apple.annotationkit", "Serialization");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BCFA4();
    }

    v4 = 0;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

@end