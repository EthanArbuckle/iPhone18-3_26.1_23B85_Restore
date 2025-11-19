@interface AKSecureSerializationHelper
+ (id)_decodeAttributedStringFromRTFData:(id)a3;
+ (id)_decodeTextAttributesFromRTFData:(id)a3;
+ (id)_encodeAttributedStringAsRTFData:(id)a3;
+ (id)_encodeTextAttributesAsRTFData:(id)a3;
+ (id)dataForSecureCodingCompliantObject:(id)a3 withOptionalKey:(id)a4;
+ (id)decodeColor:(id)a3;
+ (id)decodeFont:(id)a3;
+ (id)decodeTextAttributes:(id)a3;
+ (id)encodeColor:(id)a3;
+ (id)encodeFont:(id)a3;
+ (id)encodeTextAttributes:(id)a3;
+ (id)secureCodingCompliantObjectForData:(id)a3 ofClasses:(id)a4 withOptionalKey:(id)a5;
+ (void)_decodeRTFTextPropertiesWithSecureCoder:(id)a3 annotationTextRTF:(id *)a4 typingAttributesRTF:(id *)a5;
+ (void)_decodeTextPropertiesForAnnotation:(id)a3 withSecureCoder:(id)a4;
+ (void)decodeTextPropertiesOfAnnotation:(id)a3 withSecureCoder:(id)a4;
+ (void)encodeTextPropertiesOfAnnotation:(id)a3 withCoder:(id)a4;
@end

@implementation AKSecureSerializationHelper

+ (id)dataForSecureCodingCompliantObject:(id)a3 withOptionalKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    v9 = *MEMORY[0x277CCA308];
    if (v6)
    {
      v9 = v6;
    }

    v10 = v9;
    [v8 encodeObject:v5 forKey:v10];
    v11 = [v8 encodedData];

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)secureCodingCompliantObjectForData:(id)a3 ofClasses:(id)a4 withOptionalKey:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v7 error:0];
    v12 = *MEMORY[0x277CCA308];
    if (v9)
    {
      v12 = v9;
    }

    v13 = v12;
    v14 = [MEMORY[0x277CBEB98] setWithArray:v8];
    v15 = [v11 decodeObjectOfClasses:v14 forKey:v13];

    [v11 finishDecoding];
    if (!v15)
    {
      v16 = os_log_create("com.apple.annotationkit", "Serialization");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_23F4BCD94(v8, v16, v17, v18, v19, v20, v21, v22);
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

+ (void)encodeTextPropertiesOfAnnotation:(id)a3 withCoder:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v16 annotationText];
  v8 = v7;
  if (v7 && [v7 length])
  {
    v9 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v8];
    v10 = [a1 _encodeAttributedStringAsRTFData:v9];
    [v6 encodeObject:v10 forKey:@"annotationTextRTF"];
    [v6 encodeObject:v9 forKey:@"attributedString"];
  }

  v11 = [v16 foregroundColorSDR];
  [v6 akEncodeColor:v11 forKey:@"foregroundColorSDR"];

  v12 = [v16 foregroundColorHDR];

  if (v12)
  {
    v13 = [v16 foregroundColorHDR];
    [v6 akEncodeColor:v13 forKey:@"foregroundColorHDR"];
  }

  v14 = [v16 typingAttributes];
  v15 = [a1 _encodeTextAttributesAsRTFData:v14];
  [v6 encodeObject:v15 forKey:@"typingAttributesRTF"];
  [v6 encodeObject:v14 forKey:@"typingAttributes"];
}

+ (void)decodeTextPropertiesOfAnnotation:(id)a3 withSecureCoder:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 requiresSecureCoding])
  {
    v8 = [v7 akDecodeColorForKey:@"foregroundColorSDR"];
    [v6 setForegroundColorSDR:v8];

    if ([v7 containsValueForKey:@"foregroundColorHDR"])
    {
      v9 = [v7 akDecodeColorForKey:@"foregroundColorHDR"];
      [v6 setForegroundColorHDR:v9];
    }

    [a1 _decodeTextPropertiesForAnnotation:v6 withSecureCoder:v7];
    v10 = [v6 foregroundColorHDR];

    if (v10)
    {
      v11 = [v6 typingAttributes];
      v12 = [v11 mutableCopy];

      v13 = [v6 foregroundColorHDR];
      [v12 setObject:v13 forKeyedSubscript:@"NSColor"];

      [v6 setTypingAttributes:v12];
    }
  }

  else
  {
    v14 = os_log_create("com.apple.annotationkit", "Serialization");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BCE00();
    }

    [v6 setEditingDisabled:1];
  }
}

+ (id)encodeColor:(id)a3
{
  v4 = [a3 colorUsingSRGBColorSpace];
  v5 = [v4 CGColor];
  v6 = [MEMORY[0x277CBF730] colorWithCGColor:v5];
  v7 = [a1 dataForSecureCodingCompliantObject:v6 withOptionalKey:0];

  return v7;
}

+ (id)decodeColor:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [a1 secureCodingCompliantObjectForData:v4 ofClasses:v5 withOptionalKey:0];

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

+ (id)encodeFont:(id)a3
{
  v4 = [a3 fontDescriptor];
  v5 = [a1 dataForSecureCodingCompliantObject:v4 withOptionalKey:0];

  return v5;
}

+ (id)decodeFont:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9[0] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [a1 secureCodingCompliantObjectForData:v4 ofClasses:v5 withOptionalKey:0];

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

+ (id)encodeTextAttributes:(id)a3
{
  if (a3)
  {
    v4 = [a1 _encodeTextAttributesAsRTFData:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)decodeTextAttributes:(id)a3
{
  if (a3)
  {
    v4 = [a1 _decodeTextAttributesFromRTFData:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)_decodeTextPropertiesForAnnotation:(id)a3 withSecureCoder:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 akSerializationVersion] < 1)
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
  [a1 _decodeRTFTextPropertiesWithSecureCoder:v7 annotationTextRTF:&v24 typingAttributesRTF:&v23];
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

    [v6 setEditingDisabled:1];
    goto LABEL_17;
  }

  v10 = v9;
  if (v8)
  {
    v11 = [a1 _decodeAttributedStringFromRTFData:v8];
    if (v11)
    {
      v12 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithAttributedString:v11];
      [v6 setAnnotationText:v12];
    }
  }

  v13 = [a1 _decodeTextAttributesFromRTFData:v10];
  if (v13)
  {
    [v6 setTypingAttributes:v13];
  }

LABEL_17:
  v16 = [v6 typingAttributes];
  if (!v16 || (v17 = v16, [v6 typingAttributes], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v17, !v19))
  {
    v20 = [v6 annotationText];

    if (v20)
    {
      v21 = [v6 annotationText];
      v22 = [v21 attributesAtIndex:0 effectiveRange:0];
      [v6 setTypingAttributes:v22];
    }

    else
    {
      v21 = +[AKAttributeController defaultTextAttributes];
      [v6 setTypingAttributes:v21];
    }
  }
}

+ (void)_decodeRTFTextPropertiesWithSecureCoder:(id)a3 annotationTextRTF:(id *)a4 typingAttributesRTF:(id *)a5
{
  v11 = a3;
  if ([v11 containsValueForKey:@"annotationTextRTF"])
  {
    v7 = [v11 decodeObjectOfClass:objc_opt_class() forKey:@"annotationTextRTF"];
  }

  else
  {
    v7 = 0;
  }

  if (![v11 containsValueForKey:@"typingAttributesRTF"])
  {
    v8 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = [v11 decodeObjectOfClass:objc_opt_class() forKey:@"typingAttributesRTF"];
  if (a4)
  {
LABEL_8:
    v9 = v7;
    *a4 = v7;
  }

LABEL_9:
  if (a5)
  {
    v10 = v8;
    *a5 = v8;
  }
}

+ (id)_encodeAttributedStringAsRTFData:(id)a3
{
  v28[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CCAB48];
    v4 = a3;
    v5 = [[v3 alloc] initWithAttributedString:v4];
    v6 = [v4 length];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_23F417708;
    v25[3] = &unk_278C7B680;
    v7 = v5;
    v26 = v7;
    [v4 enumerateAttributesInRange:0 options:v6 usingBlock:{0x100000, v25}];

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

+ (id)_decodeAttributedStringFromRTFData:(id)a3
{
  v31[3] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v3 = MEMORY[0x277CCA898];
  v4 = a3;
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
  v11 = [v5 initWithData:v4 options:v10 documentAttributes:0 error:&v29];

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

+ (id)_encodeTextAttributesAsRTFData:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCA898];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:@"a" attributes:v5];

    v7 = [a1 _encodeAttributedStringAsRTFData:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_decodeTextAttributesFromRTFData:(id)a3
{
  v3 = [a1 _decodeAttributedStringFromRTFData:a3];
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