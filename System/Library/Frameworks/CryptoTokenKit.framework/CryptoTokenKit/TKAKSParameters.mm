@interface TKAKSParameters
+ (void)_dumpPlist:(id)a3 into:(id)a4;
- (NSData)data;
- (TKAKSParameters)initWithParameters:(id)a3;
- (const)bytes;
- (id)description;
- (unint64_t)length;
- (void)data;
- (void)dealloc;
- (void)setData:(id)a3 forKey:(unsigned int)a4;
- (void)setNumber:(int64_t)a3 forKey:(unsigned int)a4;
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
  v2 = [(TKAKSParameters *)self data];
  v3 = [v2 bytes];

  return v3;
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
  v2 = [(TKAKSParameters *)self data];
  v3 = [v2 length];

  return v3;
}

+ (void)_dumpPlist:(id)a3 into:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = v6;
LABEL_13:
    [v8 appendString:v9];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    v11 = [(__CFString *)v10 bytes];
    if ([(__CFString *)v10 length])
    {
      v12 = 0;
      do
      {
        [v7 appendFormat:@"%02x", *(v11 + v12++)];
      }

      while (v12 < [(__CFString *)v10 length]);
    }

    goto LABEL_14;
  }

  v13 = CFGetTypeID(v6);
  if (v13 == CFBooleanGetTypeID())
  {
    if (CFEqual(v6, *MEMORY[0x1E695E4D0]))
    {
      v9 = @"true";
    }

    else
    {
      v9 = @"false";
    }

LABEL_12:
    v8 = v7;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 appendFormat:@"%@", v6];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 appendString:@"["];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v15 = v6;
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
            [v7 appendString:{@", "}];
          }

          [a1 _dumpPlist:v21 into:v7];
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
    [v7 appendString:@"{"];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = v6;
    v22 = v6;
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
            [v7 appendString:{@", "}];
          }

          [a1 _dumpPlist:v28 into:v7];
          [v7 appendString:@":"];
          if (_dumpPlist_into__onceToken != -1)
          {
            +[TKAKSParameters _dumpPlist:into:];
          }

          if ([_dumpPlist_into__deniedKeys containsObject:v28])
          {
            [v7 appendFormat:@"###"];
          }

          else
          {
            v29 = [(__CFString *)v22 objectForKeyedSubscript:v28];
            [a1 _dumpPlist:v29 into:v7];
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

    [v7 appendString:@"}"];
    v6 = v30;
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
  v4 = [(TKAKSParameters *)self data];
  v5 = [(TKTLVRecord *)TKBERTLVRecord recordFromData:v4];
  v6 = [v5 propertyList];

  if (v6)
  {
    [objc_opt_class() _dumpPlist:v6 into:v3];
  }

  else
  {
    v7 = [(TKAKSParameters *)self data];
    v8 = [v7 bytes];

    v9 = [(TKAKSParameters *)self data];
    v10 = [v9 length];

    if (v10)
    {
      v11 = 0;
      do
      {
        [v3 appendFormat:@"%02x", *(v8 + v11++)];
        v12 = [(TKAKSParameters *)self data];
        v13 = [v12 length];
      }

      while (v11 < v13);
    }
  }

  [v3 appendString:@">"];
  v14 = [v3 copy];

  return v14;
}

- (TKAKSParameters)initWithParameters:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TKAKSParameters;
  v5 = [(TKAKSParameters *)&v7 init];
  if (v5)
  {
    [v4 bytes];
    [v4 length];
    v5->_params = aks_params_create();
  }

  return v5;
}

- (void)setData:(id)a3 forKey:(unsigned int)a4
{
  params = self->_params;
  v7 = a3;
  v8 = a3;
  [v8 bytes];
  [v8 length];

  aks_params_set_data();
  encoded = self->_encoded;
  self->_encoded = 0;
}

- (void)setNumber:(int64_t)a3 forKey:(unsigned int)a4
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