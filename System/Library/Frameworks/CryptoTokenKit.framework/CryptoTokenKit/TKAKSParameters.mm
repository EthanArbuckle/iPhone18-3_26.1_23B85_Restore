@interface TKAKSParameters
+ (void)_dumpPlist:(id)plist into:(id)into;
- (NSData)data;
- (TKAKSParameters)initWithParameters:(id)parameters;
- (const)bytes;
- (id)description;
- (unint64_t)length;
- (void)data;
- (void)dealloc;
- (void)setData:(id)data forKey:(unsigned int)key;
- (void)setNumber:(int64_t)number forKey:(unsigned int)key;
@end

@implementation TKAKSParameters

- (void)dealloc
{
  aks_params_free();
  v3.receiver = self;
  v3.super_class = TKAKSParameters;
  [(TKAKSParameters *)&v3 dealloc];
}

- (const)bytes
{
  data = [(TKAKSParameters *)self data];
  bytes = [data bytes];

  return bytes;
}

- (NSData)data
{
  encoded = self->_encoded;
  if (!encoded)
  {
    v10 = 0;
    v11 = 0;
    v4 = MEMORY[0x1E12D5030](self->_params, &v11, &v10);
    if (v4)
    {
      v5 = v4;
      v6 = TK_LOG_sepkey_0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [TKAKSParameters data];
      }

      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"failed to get DER-encoded aks_params_t (err=%d)", v5}];
    }

    v7 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v11 length:v10];
    v8 = self->_encoded;
    self->_encoded = v7;

    encoded = self->_encoded;
  }

  return encoded;
}

- (unint64_t)length
{
  data = [(TKAKSParameters *)self data];
  v3 = [data length];

  return v3;
}

+ (void)_dumpPlist:(id)plist into:(id)into
{
  v41 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  intoCopy = into;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = intoCopy;
    v9 = plistCopy;
LABEL_13:
    [v8 appendString:v9];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = plistCopy;
    bytes = [(__CFString *)v10 bytes];
    if ([(__CFString *)v10 length])
    {
      v12 = 0;
      do
      {
        [intoCopy appendFormat:@"%02x", *(bytes + v12++)];
      }

      while (v12 < [(__CFString *)v10 length]);
    }

    goto LABEL_14;
  }

  v13 = CFGetTypeID(plistCopy);
  if (v13 == CFBooleanGetTypeID())
  {
    if (CFEqual(plistCopy, *MEMORY[0x1E695E4D0]))
    {
      v9 = @"true";
    }

    else
    {
      v9 = @"false";
    }

LABEL_12:
    v8 = intoCopy;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [intoCopy appendFormat:@"%@", plistCopy];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [intoCopy appendString:@"["];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = plistCopy;
    v16 = [(__CFString *)v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      v19 = 1;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          if ((v19 & 1) == 0)
          {
            [intoCopy appendString:{@", "}];
          }

          [self _dumpPlist:v21 into:intoCopy];
          v19 = 0;
        }

        v17 = [(__CFString *)v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
        v19 = 0;
      }

      while (v17);
    }

    v9 = @"]";
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [intoCopy appendString:@"{"];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = plistCopy;
    v22 = plistCopy;
    v23 = [(__CFString *)v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 1;
      v26 = *v32;
      do
      {
        v27 = 0;
        do
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v31 + 1) + 8 * v27);
          if ((v25 & 1) == 0)
          {
            [intoCopy appendString:{@", "}];
          }

          [self _dumpPlist:v28 into:intoCopy];
          [intoCopy appendString:@":"];
          if (_dumpPlist_into__onceToken != -1)
          {
            +[TKAKSParameters _dumpPlist:into:];
          }

          if ([_dumpPlist_into__deniedKeys containsObject:v28])
          {
            [intoCopy appendFormat:@"###"];
          }

          else
          {
            v29 = [(__CFString *)v22 objectForKeyedSubscript:v28];
            [self _dumpPlist:v29 into:intoCopy];
          }

          v25 = 0;
          ++v27;
        }

        while (v24 != v27);
        v24 = [(__CFString *)v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
        v25 = 0;
      }

      while (v24);
    }

    [intoCopy appendString:@"}"];
    plistCopy = v30;
  }

LABEL_14:

  v14 = *MEMORY[0x1E69E9840];
}

void __35__TKAKSParameters__dumpPlist_into___block_invoke()
{
  v0 = _dumpPlist_into__deniedKeys;
  _dumpPlist_into__deniedKeys = &unk_1F5A85228;
}

- (id)description
{
  v3 = [@"<AKSp:" mutableCopy];
  data = [(TKAKSParameters *)self data];
  v5 = [(TKTLVRecord *)TKBERTLVRecord recordFromData:data];
  propertyList = [v5 propertyList];

  if (propertyList)
  {
    [objc_opt_class() _dumpPlist:propertyList into:v3];
  }

  else
  {
    data2 = [(TKAKSParameters *)self data];
    bytes = [data2 bytes];

    data3 = [(TKAKSParameters *)self data];
    v10 = [data3 length];

    if (v10)
    {
      v11 = 0;
      do
      {
        [v3 appendFormat:@"%02x", *(bytes + v11++)];
        data4 = [(TKAKSParameters *)self data];
        v13 = [data4 length];
      }

      while (v11 < v13);
    }
  }

  [v3 appendString:@">"];
  v14 = [v3 copy];

  return v14;
}

- (TKAKSParameters)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v7.receiver = self;
  v7.super_class = TKAKSParameters;
  v5 = [(TKAKSParameters *)&v7 init];
  if (v5)
  {
    [parametersCopy bytes];
    [parametersCopy length];
    v5->_params = aks_params_create();
  }

  return v5;
}

- (void)setData:(id)data forKey:(unsigned int)key
{
  params = self->_params;
  dataCopy = data;
  dataCopy2 = data;
  [dataCopy2 bytes];
  [dataCopy2 length];

  aks_params_set_data();
  encoded = self->_encoded;
  self->_encoded = 0;
}

- (void)setNumber:(int64_t)number forKey:(unsigned int)key
{
  params = self->_params;
  aks_params_set_number();
  encoded = self->_encoded;
  self->_encoded = 0;
}

- (void)data
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_1DF413000, v0, OS_LOG_TYPE_ERROR, "failed to get DER-encoded aks_params_t (err=%d)", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

@end