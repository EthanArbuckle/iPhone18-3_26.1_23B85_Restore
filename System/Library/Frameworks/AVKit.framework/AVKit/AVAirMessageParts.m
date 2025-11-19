@interface AVAirMessageParts
+ (id)messagePartsWithData:(id)a3 lineSeparator:(id)a4 data:(id)a5 headerBodySeparator:(id)a6 data:(id)a7 bodyLengthKey:(id)a8;
+ (void)registerClass:(Class)a3 forMessageVersion:(id)a4;
- (AVAirMessageParts)initWithVersion:(id)a3 headers:(id)a4 expectedBodyLength:(int64_t)a5 body:(id)a6 extra:(id)a7;
- (BOOL)shouldCallReverseTransformerAgain;
- (Class)_matchingClass;
- (NSArray)repeatedHeaders;
- (NSDictionary)bodyAsJSONDictionary;
- (NSDictionary)uniqueHeaders;
- (NSString)bodyAsUTF8Text;
- (id)airMessage;
- (id)bodyAsJSON;
- (id)decompressBodyUsingAlgorithm:(int64_t)a3;
- (id)decompressBodyUsingNamedAlgorithm:(id)a3;
- (void)_identifyUniqueAndRepeatedHeadersIfNecessary;
@end

@implementation AVAirMessageParts

- (BOOL)shouldCallReverseTransformerAgain
{
  if ([(AVAirMessageParts *)self isIncomplete])
  {
    return 0;
  }

  v4 = [(AVAirMessageParts *)self extraData];
  v3 = [v4 length] != 0;

  return v3;
}

- (id)decompressBodyUsingNamedAlgorithm:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(AVAirMessageParts *)self isIncomplete])
  {
    v5 = 0;
    goto LABEL_17;
  }

  v6 = [v4 lowercaseString];
  if ([v4 length] && !objc_msgSend(v6, "isEqualToString:", @"none"))
  {
    if ([v6 isEqualToString:@"lzfse"])
    {
      v8 = 0;
    }

    else if ([v6 isEqualToString:@"lz4"])
    {
      v8 = 1;
    }

    else if ([v6 isEqualToString:@"zlib"])
    {
      v8 = 3;
    }

    else
    {
      if (([v6 isEqualToString:@"lzma"] & 1) == 0)
      {
        v10 = _avairlog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315394;
          v12 = "[AVAirMessageParts decompressBodyUsingNamedAlgorithm:]";
          v13 = 2114;
          v14 = v4;
          _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s failed to decompress data; algorithm name '%{public}@' is not recognized", &v11, 0x16u);
        }

        v5 = 0;
        goto LABEL_16;
      }

      v8 = 2;
    }

    v7 = [(AVAirMessageParts *)self decompressBodyUsingAlgorithm:v8];
  }

  else
  {
    v7 = [(AVAirMessageParts *)self rawBodyData];
  }

  v5 = v7;
LABEL_16:

LABEL_17:

  return v5;
}

- (id)decompressBodyUsingAlgorithm:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(AVAirMessageParts *)self isIncomplete])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(AVAirMessageParts *)self rawBodyData];
    v5 = v6;
    if ((a3 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v7 = [v6 decompressedDataUsingAlgorithm:a3 error:&v11];
      v8 = v11;

      if (!v7)
      {
        v9 = _avairlog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v13 = "[AVAirMessageParts decompressBodyUsingAlgorithm:]";
          v14 = 2114;
          v15 = v8;
          _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s failed to decompress data (%{public}@)", buf, 0x16u);
        }
      }

      v5 = v7;
    }
  }

  return v5;
}

- (NSDictionary)bodyAsJSONDictionary
{
  v2 = [(AVAirMessageParts *)self bodyAsJSON];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)bodyAsJSON
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(AVAirMessageParts *)self isIncomplete])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(AVAirMessageParts *)self uncompressedBodyData];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [(AVAirMessageParts *)self rawBodyData];
    }

    v7 = v6;

    v11 = 0;
    v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:4 error:&v11];
    v8 = v11;
    if (!v3)
    {
      v9 = _avairlog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[AVAirMessageParts bodyAsJSON]";
        v14 = 2114;
        v15 = v8;
        _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s JSON deserialization failed: %{public}@", buf, 0x16u);
      }
    }
  }

  return v3;
}

- (NSString)bodyAsUTF8Text
{
  if ([(AVAirMessageParts *)self isIncomplete])
  {
    v3 = [(AVAirMessageParts *)self rawBodyData];

    if (!v3)
    {
      goto LABEL_9;
    }

    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [(AVAirMessageParts *)self rawBodyData];
    v6 = v4;
  }

  else
  {
    v7 = [(AVAirMessageParts *)self uncompressedBodyData];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [(AVAirMessageParts *)self rawBodyData];
    }

    v5 = v9;

    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  }

  v3 = [v6 initWithData:v5 encoding:4];

LABEL_9:

  return v3;
}

- (NSArray)repeatedHeaders
{
  [(AVAirMessageParts *)self _identifyUniqueAndRepeatedHeadersIfNecessary];
  repeatedHeaders = self->_repeatedHeaders;

  return repeatedHeaders;
}

- (NSDictionary)uniqueHeaders
{
  [(AVAirMessageParts *)self _identifyUniqueAndRepeatedHeadersIfNecessary];
  uniqueHeaders = self->_uniqueHeaders;

  return uniqueHeaders;
}

- (void)_identifyUniqueAndRepeatedHeadersIfNecessary
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_uniqueHeaders)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [(AVAirMessageParts *)self headers];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v10 key];
          v12 = [v11 lowercaseString];

          v13 = [(NSDictionary *)v3 objectForKeyedSubscript:v12];

          if (v13)
          {
            [(NSArray *)v4 addObject:v10];
          }

          else
          {
            v14 = [v10 value];
            [(NSDictionary *)v3 setObject:v14 forKeyedSubscript:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    uniqueHeaders = self->_uniqueHeaders;
    self->_uniqueHeaders = v3;
    v16 = v3;

    repeatedHeaders = self->_repeatedHeaders;
    self->_repeatedHeaders = v4;
  }
}

- (AVAirMessageParts)initWithVersion:(id)a3 headers:(id)a4 expectedBodyLength:(int64_t)a5 body:(id)a6 extra:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = AVAirMessageParts;
  v16 = [(AVAirMessageParts *)&v27 init];
  if (v16)
  {
    v17 = [v12 copy];
    version = v16->_version;
    v16->_version = v17;

    v19 = [v13 copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v16->_headers, v21);

    v22 = [v14 copy];
    rawBodyData = v16->_rawBodyData;
    v16->_rawBodyData = v22;

    v24 = [v15 copy];
    extraData = v16->_extraData;
    v16->_extraData = v24;

    v16->_isIncomplete = v14 == 0;
    v16->_expectedBodyLength = a5;
  }

  return v16;
}

+ (id)messagePartsWithData:(id)a3 lineSeparator:(id)a4 data:(id)a5 headerBodySeparator:(id)a6 data:(id)a7 bodyLengthKey:(id)a8
{
  v65 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = [v13 length];
  if (v18 >= 0x400)
  {
    v19 = 1024;
  }

  else
  {
    v19 = v18;
  }

  v20 = [v13 rangeOfData:v15 options:0 range:{0, v19}];
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    v57 = a1;
    v24 = [v13 subdataWithRange:{0, v20}];
    v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v24 encoding:4];
    if ([v58 length])
    {
      v25 = [v13 rangeOfData:v16 options:0 range:{v22, objc_msgSend(v13, "length") - v22}];
      if (v26)
      {
        v54 = v26;
        v55 = v25;
        if (v25 <= v22 + v23)
        {
          v27 = 0;
        }

        else
        {
          v27 = [v13 subdataWithRange:{v22 + v23, v25 - (v22 + v23)}];
        }

        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v27 encoding:4];
        if (v29 || ![v27 length])
        {
          v56 = v13;
          v53 = v14;
          v30 = [v29 componentsSeparatedByString:{v14, v29, v27, v24, v16, v15}];
          v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          obj = v30;
          v32 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v61;
            v35 = -1;
            do
            {
              for (i = 0; i != v33; ++i)
              {
                if (*v61 != v34)
                {
                  objc_enumerationMutation(obj);
                }

                v37 = [[AVStringPair alloc] initWithString:*(*(&v60 + 1) + 8 * i) separatedByString:@":"];
                [v31 addObject:v37];
                if ([(AVStringPair *)v37 keyEquals:v17])
                {
                  v38 = [(AVStringPair *)v37 value];
                  v35 = [v38 integerValue];
                }
              }

              v33 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
            }

            while (v33);
          }

          else
          {
            v35 = -1;
          }

          v39 = v55 + v54;
          v40 = [v56 length];
          v41 = v40 - (v55 + v54);
          if (v35 >= 0)
          {
            v42 = v35;
          }

          else
          {
            v42 = v40 - v39;
          }

          if (v42 >= v41)
          {
            v43 = v40 - v39;
          }

          else
          {
            v43 = v42;
          }

          v44 = [v56 subdataWithRange:{v39, v43}];
          if (v42 >= v41)
          {
            v45 = 0;
          }

          else
          {
            v45 = [v56 subdataWithRange:{v43 + v39, v41 - v43}];
          }

          v46 = [[v57 alloc] initWithVersion:v58 headers:v31 expectedBodyLength:v35 body:v44 extra:v45];
          v28 = v46;
          v14 = v53;
          if (v41 < v42)
          {
            [v46 _setIncomplete];
          }

          v13 = v56;
          v16 = v51;
          v15 = v52;
          v27 = v49;
          v24 = v50;
          v29 = v48;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = [[a1 alloc] initWithVersion:v58 headers:0 expectedBodyLength:-1 body:0 extra:0];
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else if ([v13 length] <= 0x400)
  {
    v28 = [[a1 alloc] initWithVersion:0 headers:0 expectedBodyLength:-1 body:0 extra:0];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)airMessage
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(AVAirMessageParts *)self _matchingClass];
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      v5 = [(objc_class *)v4 messageWithParts:self];
      goto LABEL_10;
    }

    v6 = _avairlog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromClass(v4);
      v10 = 136315394;
      v11 = "[AVAirMessageParts(AVAirMessages) airMessage]";
      v12 = 2114;
      v13 = v7;
      v8 = "%s class %{public}@ does not implement messageWithParts:";
      goto LABEL_8;
    }
  }

  else
  {
    v6 = _avairlog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(AVAirMessageParts *)self version];
      v10 = 136315394;
      v11 = "[AVAirMessageParts(AVAirMessages) airMessage]";
      v12 = 2114;
      v13 = v7;
      v8 = "%s no class registered for version '%{public}@'";
LABEL_8:
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, v8, &v10, 0x16u);
    }
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (Class)_matchingClass
{
  v2 = [(AVAirMessageParts *)self version];
  if (v2)
  {
    v3 = [_registeredMessageClasses objectForKeyedSubscript:v2];
    v4 = v3;
    if (v3)
    {
      v5 = NSClassFromString(v3);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)registerClass:(Class)a3 forMessageVersion:(id)a4
{
  v5 = registerClass_forMessageVersion__onceToken;
  v6 = a4;
  if (v5 != -1)
  {
    dispatch_once(&registerClass_forMessageVersion__onceToken, &__block_literal_global_190);
  }

  v7 = NSStringFromClass(a3);
  [_registeredMessageClasses setObject:v7 forKeyedSubscript:v6];
}

uint64_t __68__AVAirMessageParts_AVAirMessages__registerClass_forMessageVersion___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _registeredMessageClasses;
  _registeredMessageClasses = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end