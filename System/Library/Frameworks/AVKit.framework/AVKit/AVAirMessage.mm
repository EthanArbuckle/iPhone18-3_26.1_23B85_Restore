@interface AVAirMessage
+ (BOOL)isAirMessagingEnabled;
+ (id)_decompressBodyData:(id)a3 forCompressionAlgorithm:(id)a4;
+ (id)_nameForDataCompressionAlgorithm:(int64_t)a3;
+ (id)buildVersion;
+ (id)commonDictionaryRepresentationKeys;
+ (id)currentAppIdentifier;
+ (id)dictionaryRepresentationCommon;
+ (id)messageWithExternalMetadata:(id)a3 itemIdentifier:(id)a4;
+ (id)messageWithParts:(id)a3;
+ (id)messageWithPosterArtworkMetadata:(id)a3 itemIdentifier:(id)a4;
+ (id)messageWithRequiresLinearPlayback:(BOOL)a3 itemIdentifier:(id)a4;
+ (id)messageWithUserScrubToAssetTime:(double)a3 itemIdentifier:(id)a4;
- (AVAirMessage)initWithMessageType:(unsigned int)a3 itemIdentifier:(id)a4;
- (AVAirMessage)initWithMessageType:(unsigned int)a3 itemIdentifier:(id)a4 dictionaryRepresentation:(id)a5;
- (BOOL)shouldUseJSONForBody;
- (NSData)jsonDataRepresentation;
- (NSDictionary)dictionaryRepresentation;
- (id)allRecognizedKeysForDictionaryRepresentation;
- (id)description;
- (id)headerTextRepresenationForBodyDataLength:(unint64_t)a3 extraHeaders:(id)a4;
- (id)messageDataRepresentation;
- (id)number;
@end

@implementation AVAirMessage

- (id)number
{
  v3 = [(AVAirMessage *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(AVAirMessage *)self value];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)messageDataRepresentation
{
  v36 = *MEMORY[0x1E69E9840];
  if ([(AVAirMessage *)self shouldUseJSONForBody])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(AVAirMessage *)self MIMEType];
    v5 = v4;
    v6 = @"application/octet-stream";
    if (v4)
    {
      v6 = v4;
    }

    v3 = v6;
  }

  if ([(AVAirMessage *)self shouldUseJSONForBody])
  {
    [(AVAirMessage *)self jsonDataRepresentation];
  }

  else
  {
    [(AVAirMessage *)self rawData];
  }
  v7 = ;
  v8 = [AVAirMessage _nameForDataCompressionAlgorithm:0];
  if (v8)
  {
    v25 = 0;
    v9 = [(__CFString *)v7 compressedDataUsingAlgorithm:0 error:&v25];
    v10 = v25;
    if (v9)
    {
      v11 = v9;
      v12 = v7;
      v7 = v11;
    }

    else
    {
      v13 = _avairlog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v29 = "[AVAirMessage messageDataRepresentation]";
        v30 = 2048;
        v31 = 0;
        v32 = 2114;
        v33 = v8;
        v34 = 2114;
        v35 = v10;
        _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s failed to compress data (%ld/%{public}@): %{public}@", buf, 0x2Au);
      }

      v12 = v8;
      v8 = 0;
    }
  }

  v14 = [(__CFString *)v7 length];
  if (v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = &stru_1EFED57D8;
  }

  v27[0] = v15;
  v26[0] = @"compression";
  v26[1] = @"languagetag";
  v16 = [(AVAirMessage *)self extendedLanguageTag];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1EFED57D8;
  }

  v26[2] = @"mimetype";
  if (v3)
  {
    v19 = v3;
  }

  else
  {
    v19 = &stru_1EFED57D8;
  }

  v27[1] = v18;
  v27[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v21 = [(AVAirMessage *)self headerTextRepresenationForBodyDataLength:v14 extraHeaders:v20];

  v22 = [v21 dataUsingEncoding:4 allowLossyConversion:1];
  v23 = [v22 mutableCopy];

  [v23 appendData:v7];

  return v23;
}

- (BOOL)shouldUseJSONForBody
{
  v3 = [(AVAirMessage *)self rawData];
  if (v3)
  {
    v4 = [(AVAirMessage *)self array];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v6 = [(AVAirMessage *)self dictionary];
      if (v6)
      {
        v5 = 1;
      }

      else
      {
        v7 = [(AVAirMessage *)self value];
        v5 = v7 != 0;
      }
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)headerTextRepresenationForBodyDataLength:(unint64_t)a3 extraHeaders:(id)a4
{
  v39[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithObject:@"AVKitAir/1"];
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v38[0] = @"length";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v10 = [v9 stringValue];
  v39[0] = v10;
  v38[1] = @"messagetype";
  v11 = v6;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AVAirMessage type](self, "type")}];
  v13 = [v12 stringValue];
  v39[1] = v13;
  v38[2] = @"item";
  v14 = [(AVAirMessage *)self itemIdentifier];
  v15 = v14;
  v16 = @"nil";
  if (v14)
  {
    v16 = v14;
  }

  v39[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
  v18 = [v8 initWithDictionary:v17];

  if ([v11 count])
  {
    v19 = [v11 airMessageCanonicalForm];
    [v18 addEntriesFromDictionary:v19];
  }

  v32 = v11;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v33 + 1) + 8 * i);
        v26 = MEMORY[0x1E696AEC0];
        v27 = [v20 objectForKeyedSubscript:v25];
        v28 = [v26 stringWithFormat:@"%@:%@", v25, v27];
        [v7 addObject:v28];
      }

      v22 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v22);
  }

  v29 = [v7 componentsJoinedByString:@"\n"];
  v30 = [v29 stringByAppendingString:@"\n\n"];

  return v30;
}

- (NSData)jsonDataRepresentation
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(AVAirMessage *)self dictionaryRepresentation];
  if (v3)
  {
    v8 = 0;
    v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:&v8];
    v5 = v8;
    if (!v4)
    {
      v6 = _avairlog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v10 = "[AVAirMessage jsonDataRepresentation]";
        v11 = 2114;
        v12 = self;
        v13 = 2114;
        v14 = v5;
        _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s failed to serialize %{public}@ to JSON (%{public}@)", buf, 0x20u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AVAirMessage *)self dictionaryRepresentation];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = MEMORY[0x1E696AEC0];
        if ([(__CFString *)v11 length])
        {
          v13 = v11;
        }

        else
        {
          v13 = @"''";
        }

        v14 = [v4 objectForKeyedSubscript:v11];
        v15 = [v12 stringWithFormat:@" %@: %@", v13, v14];
        [v3 addObject:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = [v3 componentsJoinedByString:{@", \n"}];
  v18 = [v16 stringWithFormat:@"{\n%@\n}", v17];

  return v18;
}

- (id)allRecognizedKeysForDictionaryRepresentation
{
  v2 = +[AVAirMessage commonDictionaryRepresentationKeys];
  v3 = [v2 arrayByAddingObjectsFromArray:&unk_1EFF12E90];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [objc_opt_class() dictionaryRepresentationCommon];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AVAirMessage type](self, "type")}];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  v5 = [(AVAirMessage *)self itemIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"item"];

  v6 = [(AVAirMessage *)self value];
  [v3 setObject:v6 forKeyedSubscript:@"v"];

  v7 = [(AVAirMessage *)self array];

  if (v7)
  {
    v8 = [(AVAirMessage *)self array];
    v9 = [v8 count];

    if (!v9)
    {
      [v3 setObject:MEMORY[0x1E695E0F0] forKeyedSubscript:@"a"];
      goto LABEL_9;
    }

    v10 = [(AVAirMessage *)self array];
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = objc_opt_class();

    LOBYTE(v11) = objc_opt_respondsToSelector();
    v13 = [(AVAirMessage *)self array];
    v14 = v13;
    if (v11)
    {
      v15 = [v12 airRepresentationForArray:v13];
      [v3 setObject:v15 forKeyedSubscript:@"a"];
    }

    else
    {
      v16 = [v13 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_9;
      }

      v14 = [(AVAirMessage *)self array];
      [v3 setObject:v14 forKeyedSubscript:@"a"];
    }
  }

LABEL_9:
  v18 = [(AVAirMessage *)self dictionary];
  [v3 setObject:v18 forKeyedSubscript:@"d"];

  v19 = [(AVAirMessage *)self rawData];

  if (v19)
  {
    v20 = [(AVAirMessage *)self rawData];
    v21 = [v20 base64EncodedStringWithOptions:32];

    [v3 setObject:v21 forKeyedSubscript:@"raw"];
  }

  return v3;
}

- (AVAirMessage)initWithMessageType:(unsigned int)a3 itemIdentifier:(id)a4 dictionaryRepresentation:(id)a5
{
  v6 = *&a3;
  v68 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v62.receiver = self;
  v62.super_class = AVAirMessage;
  v10 = [(AVAirMessage *)&v62 init];
  v11 = v10;
  if (!v10)
  {
LABEL_61:
    v51 = v11;
    goto LABEL_62;
  }

  if (v6 == 999)
  {
    v12 = [v9 objectForKeyedSubscript:@"type"];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v9 objectForKeyedSubscript:@"type"];
      v11->_type = [v13 integerValue];
      p_type = &v11->_type;
    }

    else
    {
      v11->_type = 999;
      p_type = &v11->_type;
    }

    v6 = *p_type;
  }

  else
  {
    v10->_type = v6;
    p_type = &v10->_type;
  }

  if (v6 <= 299)
  {
    if (v6 != 100 && v6 != 200 && v6 != 210)
    {
      goto LABEL_63;
    }

    goto LABEL_19;
  }

  if (v6 > 499)
  {
    if (v6 != 500 && v6 != 999)
    {
      goto LABEL_63;
    }

LABEL_19:
    if (v8)
    {
      v15 = 0;
      v16 = v8;
    }

    else
    {
      v6 = [v9 objectForKeyedSubscript:@"item"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v9 objectForKeyedSubscript:@"item"];
        v15 = 1;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }
    }

    v17 = [v16 copy];
    itemIdentifier = v11->_itemIdentifier;
    v11->_itemIdentifier = v17;

    if (v15)
    {
    }

    if (!v8)
    {
    }

    v19 = [v9 objectForKeyedSubscript:@"v"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v21 = [v9 objectForKeyedSubscript:@"v"];
    }

    else
    {
      v21 = 0;
    }

    v22 = [v21 copy];
    value = v11->_value;
    v11->_value = v22;

    if (isKindOfClass)
    {
    }

    v24 = [v9 objectForKeyedSubscript:@"a"];
    objc_opt_class();
    v25 = objc_opt_isKindOfClass();
    if (v25)
    {
      v26 = [v9 objectForKeyedSubscript:@"a"];
    }

    else
    {
      v26 = 0;
    }

    v27 = [v26 copy];
    array = v11->_array;
    v11->_array = v27;

    if (v25)
    {
    }

    v29 = [v9 objectForKeyedSubscript:@"d"];
    objc_opt_class();
    v30 = objc_opt_isKindOfClass();
    if (v30)
    {
      v31 = [v9 objectForKeyedSubscript:@"d"];
    }

    else
    {
      v31 = 0;
    }

    v32 = [v31 copy];
    dictionary = v11->_dictionary;
    v11->_dictionary = v32;

    if (v30)
    {
    }

    v34 = [v9 objectForKeyedSubscript:@"raw"];
    objc_opt_class();
    v57 = v8;
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v36 = 0;
        goto LABEL_49;
      }

      v35 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v34 options:0];
    }

    v36 = v35;
LABEL_49:

    rawData = v11->_rawData;
    v11->_rawData = v36;

    v38 = [v9 mutableCopy];
    v39 = MEMORY[0x1E695DFD8];
    v55 = v11;
    v40 = [(AVAirMessage *)v11 allRecognizedKeysForDictionaryRepresentation];
    v41 = [v39 setWithArray:v40];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = v9;
    v42 = [v9 allKeys];
    v43 = [v42 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v59;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v59 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v58 + 1) + 8 * i);
          if (([v41 containsObject:v47] & 1) == 0)
          {
            v48 = _avairlog();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v64 = "[AVAirMessage initWithMessageType:itemIdentifier:dictionaryRepresentation:]";
              v65 = 2114;
              v66 = v47;
              _os_log_impl(&dword_18B49C000, v48, OS_LOG_TYPE_DEFAULT, "%s removing unrecognized key '%{public}@'", buf, 0x16u);
            }

            [v38 setObject:0 forKeyedSubscript:v47];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v44);
    }

    v49 = [v38 copy];
    v11 = v55;
    initialRepresentation = v55->_initialRepresentation;
    v55->_initialRepresentation = v49;

    v9 = v56;
    v8 = v57;
    goto LABEL_61;
  }

  if (v6 == 300 || v6 == 400)
  {
    goto LABEL_19;
  }

LABEL_63:
  v53 = _avairlog();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = *p_type;
    *buf = 136315394;
    v64 = "[AVAirMessage initWithMessageType:itemIdentifier:dictionaryRepresentation:]";
    v65 = 1024;
    LODWORD(v66) = v54;
    _os_log_impl(&dword_18B49C000, v53, OS_LOG_TYPE_DEFAULT, "%s incoming message type %d is unrecognized!", buf, 0x12u);
  }

  v51 = 0;
LABEL_62:

  return v51;
}

- (AVAirMessage)initWithMessageType:(unsigned int)a3 itemIdentifier:(id)a4
{
  v6 = a4;
  if (+[AVAirMessage isAirMessagingEnabled])
  {
    v13.receiver = self;
    v13.super_class = AVAirMessage;
    v7 = [(AVAirMessage *)&v13 init];
    v8 = v7;
    if (v7)
    {
      v7->_type = a3;
      v9 = [v6 copy];
      itemIdentifier = v8->_itemIdentifier;
      v8->_itemIdentifier = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)messageWithParts:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 expectedBodyLength] < 0 || (objc_msgSend(v3, "isIncomplete") & 1) != 0 || (objc_msgSend(v3, "uncompressedBodyData"), v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v9 = 0;
    goto LABEL_7;
  }

  v5 = [v3 bodyAsJSONDictionary];
  v6 = [v3 uncompressedBodyData];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v3 rawBodyData];
  }

  v11 = v8;

  v12 = [v3 rawBodyData];
  v13 = [v12 length];

  if (v13 && !v5 && !v11)
  {
    v14 = _avairlog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315138;
      v28 = "+[AVAirMessage messageWithParts:]";
      _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s error: json deserialization failed", &v27, 0xCu);
    }

    v9 = 0;
    goto LABEL_26;
  }

  v15 = [v3 uniqueHeaders];
  v16 = [v15 objectForKeyedSubscript:@"messagetype"];
  v17 = [v16 intValue];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = 999;
  }

  v19 = [v3 uniqueHeaders];
  v20 = [v19 objectForKeyedSubscript:@"item"];

  v21 = [v3 uniqueHeaders];
  v22 = [v21 objectForKeyedSubscript:@"response-status"];

  if (v22)
  {
    v23 = [AVAirMessageResponse responseWithParts:v3];
  }

  else
  {
    v24 = [AVAirMessage alloc];
    if (!v5)
    {
      v9 = [(AVAirMessage *)v24 initWithMessageType:v18 itemIdentifier:v20];
      [(AVAirMessage *)v9 setRawData:v11];
      v25 = [v3 uniqueHeaders];
      v26 = [v25 objectForKeyedSubscript:@"mimetype"];
      [(AVAirMessage *)v9 setMIMEType:v26];

      goto LABEL_25;
    }

    v23 = [(AVAirMessage *)v24 initWithMessageType:v18 itemIdentifier:v20 dictionaryRepresentation:v5];
  }

  v9 = v23;
LABEL_25:

LABEL_26:
LABEL_7:

  return v9;
}

+ (id)messageWithPosterArtworkMetadata:(id)a3 itemIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithMessageType:210 itemIdentifier:v6];

  v9 = [v7 dataValue];
  [v8 setRawData:v9];

  v10 = [v7 extendedLanguageTag];

  [v8 setExtendedLanguageTag:v10];

  return v8;
}

+ (id)messageWithExternalMetadata:(id)a3 itemIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithMessageType:200 itemIdentifier:v6];

  [v8 setArray:v7];

  return v8;
}

+ (id)messageWithUserScrubToAssetTime:(double)a3 itemIdentifier:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithMessageType:500 itemIdentifier:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v7 setValue:v8];

  return v7;
}

+ (id)messageWithRequiresLinearPlayback:(BOOL)a3 itemIdentifier:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [[a1 alloc] initWithMessageType:100 itemIdentifier:v6];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v7 setValue:v8];

  return v7;
}

+ (id)_nameForDataCompressionAlgorithm:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 < 4)
  {
    return off_1E7208380[a3];
  }

  if (a3 < 0)
  {
    return @"none";
  }

  v5 = _avairlog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[AVAirMessage _nameForDataCompressionAlgorithm:]";
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s This code has not been updated to handle algorithm %ld!", &v6, 0x16u);
  }

  return 0;
}

+ (id)_decompressBodyData:(id)a3 forCompressionAlgorithm:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 lowercaseString];
  if (![v6 length] || (objc_msgSend(v7, "isEqualToString:", @"none") & 1) == 0)
  {
    v9 = v5;
    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"lzfse"])
  {
    v8 = 0;
LABEL_12:
    v14 = 0;
    v9 = [v5 decompressedDataUsingAlgorithm:v8 error:&v14];
    v10 = v14;
    if (!v9)
    {
      v11 = _avairlog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = "+[AVAirMessage _decompressBodyData:forCompressionAlgorithm:]";
        v17 = 2114;
        v18 = v6;
        v19 = 2114;
        v20 = v10;
        _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s failed to decompress data (%{public}@ algorithm): %{public}@", buf, 0x20u);
      }
    }

    goto LABEL_17;
  }

  if ([v7 isEqualToString:@"lz4"])
  {
    v8 = 1;
    goto LABEL_12;
  }

  if ([v7 isEqualToString:@"zlib"])
  {
    v8 = 3;
    goto LABEL_12;
  }

  if ([v7 isEqualToString:@"lzma"])
  {
    v8 = 2;
    goto LABEL_12;
  }

  v13 = _avairlog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "+[AVAirMessage _decompressBodyData:forCompressionAlgorithm:]";
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s failed to decompress data; algorithm name '%{public}@' is not recognized", buf, 0x16u);
  }

  v9 = 0;
LABEL_17:

  return v9;
}

+ (BOOL)isAirMessagingEnabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.avkit"];
  v3 = [v2 objectForKey:@"airmessaging"];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:@"airmessaging"];

  v6 = [MEMORY[0x1E696AE30] processInfo];
  v7 = [v6 environment];
  v8 = [v7 objectForKeyedSubscript:@"airmessaging"];

  if (v3)
  {
    v9 = [v3 BOOLValue];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (v5)
  {
LABEL_3:
    v9 = [v5 BOOLValue];
  }

LABEL_4:
  if (v8)
  {
    v9 = [v8 BOOLValue];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __37__AVAirMessage_isAirMessagingEnabled__block_invoke;
  v15[3] = &unk_1E7208360;
  v19 = v9;
  v16 = v3;
  v17 = v5;
  v18 = v8;
  v10 = isAirMessagingEnabled_onceToken;
  v11 = v8;
  v12 = v5;
  v13 = v3;
  if (v10 != -1)
  {
    dispatch_once(&isAirMessagingEnabled_onceToken, v15);
  }

  return v9;
}

void __37__AVAirMessage_isAirMessagingEnabled__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _avairlog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (*(a1 + 56))
    {
      v3 = @"YES";
    }

    v6 = *(a1 + 48);
    v7 = 136316162;
    v8 = "+[AVAirMessage isAirMessagingEnabled]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_18B49C000, v2, OS_LOG_TYPE_DEFAULT, "%s isAirMessageEnabled %@; global %@; app %@; environ %{public}@", &v7, 0x34u);
  }
}

+ (id)commonDictionaryRepresentationKeys
{
  if (commonDictionaryRepresentationKeys_onceToken != -1)
  {
    dispatch_once(&commonDictionaryRepresentationKeys_onceToken, &__block_literal_global_56_13259);
  }

  v3 = commonDictionaryRepresentationKeys__keys;

  return v3;
}

void __50__AVAirMessage_commonDictionaryRepresentationKeys__block_invoke()
{
  v2 = +[AVAirMessage dictionaryRepresentationCommon];
  v0 = [v2 allKeys];
  v1 = commonDictionaryRepresentationKeys__keys;
  commonDictionaryRepresentationKeys__keys = v0;
}

+ (id)dictionaryRepresentationCommon
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setObject:@"com.apple.avkit" forKeyedSubscript:@"sender"];
  v3 = [objc_opt_class() currentOSIdentifier];
  [v2 setObject:v3 forKeyedSubscript:@"os"];

  v4 = [objc_opt_class() buildVersion];
  [v2 setObject:v4 forKeyedSubscript:@"build"];

  v5 = [objc_opt_class() currentAppIdentifier];
  [v2 setObject:v5 forKeyedSubscript:@"app"];

  return v2;
}

+ (id)buildVersion
{
  if (buildVersion_onceToken != -1)
  {
    dispatch_once(&buildVersion_onceToken, &__block_literal_global_13273);
  }

  v3 = buildVersion__build;

  return v3;
}

void __28__AVAirMessage_buildVersion__block_invoke()
{
  size = 0;
  if (sysctlbyname("kern.osversion", 0, &size, 0, 0))
  {
    v0 = 1;
  }

  else
  {
    v0 = size == 0;
  }

  if (!v0)
  {
    v1 = malloc_type_malloc(size, 0x100004077774924uLL);
    sysctlbyname("kern.osversion", v1, &size, 0, 0);
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
    v3 = buildVersion__build;
    buildVersion__build = v2;

    free(v1);
  }
}

+ (id)currentAppIdentifier
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

@end