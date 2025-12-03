@interface PPKPayloadEncryption
+ (id)sharedInstance;
- (PPKPayloadEncryption)init;
- (_BYTE)encryptData:(_BYTE *)data;
- (id)decryptData:(_BYTE *)data;
- (void)initializeKey;
@end

@implementation PPKPayloadEncryption

+ (id)sharedInstance
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PPKPayloadEncryption_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v1 = _sharedInstance;

  return v1;
}

void __38__PPKPayloadEncryption_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _sharedInstance;
  _sharedInstance = v1;
}

- (PPKPayloadEncryption)init
{
  v3.receiver = self;
  v3.super_class = PPKPayloadEncryption;
  result = [(PPKPayloadEncryption *)&v3 init];
  if (result)
  {
    *&result->_keyInitialized = 0;
  }

  return result;
}

- (void)initializeKey
{
  v40[7] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_keyInitialized)
  {
    selfCopy->_haveKey = 0;
    result = 0;
    v3 = *MEMORY[0x1E697AFF8];
    v4 = *MEMORY[0x1E697B008];
    v5 = *MEMORY[0x1E697B310];
    v39[0] = *MEMORY[0x1E697AFF8];
    v39[1] = v5;
    v6 = *MEMORY[0x1E695E4D0];
    v29 = v4;
    v40[0] = v4;
    v40[1] = v6;
    v7 = *MEMORY[0x1E697ABD0];
    v8 = *MEMORY[0x1E697AEB0];
    v39[2] = *MEMORY[0x1E697ABD0];
    v39[3] = v8;
    v40[2] = @"com.apple.Markup";
    v40[3] = v6;
    v9 = *MEMORY[0x1E697AE88];
    v10 = *MEMORY[0x1E697AC30];
    v39[4] = *MEMORY[0x1E697AE88];
    v39[5] = v10;
    v30 = v10;
    v40[4] = @"Sketch Service Privacy";
    v40[5] = @"Sketch Service";
    v11 = *MEMORY[0x1E697B260];
    v39[6] = *MEMORY[0x1E697B260];
    v12 = *MEMORY[0x1E697B270];
    v40[6] = *MEMORY[0x1E697B270];
    query = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:7];
    v13 = SecItemCopyMatching(query, &result);
    v14 = v13;
    if (v13 == -25300)
    {
      generateRandomKey(selfCopy->_key);
      v18 = [MEMORY[0x1E695DEF0] dataWithBytes:selfCopy->_key length:16];
      v19 = [v18 base64EncodedDataWithOptions:0];

      v37[0] = v3;
      v37[1] = v9;
      v38[0] = v29;
      v38[1] = @"Sketch Service Privacy";
      v37[2] = *MEMORY[0x1E697ADC8];
      v37[3] = v7;
      v38[2] = @"Sketch Service Privacy";
      v38[3] = @"com.apple.Markup";
      v38[4] = v6;
      v20 = *MEMORY[0x1E697ACC8];
      v37[4] = v8;
      v37[5] = v20;
      v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"Used for the encryption of image edit state metadata for the Markup service. Deletion will make it impossible for Markup to modify annotations that were previously placed on an image using Markup." value:&stru_1F4F6DB60 table:@"PPKPayloadEncryption"];
      v38[5] = v22;
      v38[6] = @"Sketch Service";
      v23 = *MEMORY[0x1E697B3C0];
      v37[6] = v30;
      v37[7] = v23;
      v38[7] = v19;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:8];

      cf = 0;
      v25 = SecItemAdd(v24, &cf);
      if (v25)
      {
        v26 = +[PPKImageWriter log];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *v34 = 134217984;
          *&v34[4] = v25;
          _os_log_impl(&dword_1D38C4000, v26, OS_LOG_TYPE_DEFAULT, "Couldn't add key to keychain! [osErr:%ld]", v34, 0xCu);
        }
      }

      else
      {
        selfCopy->_haveKey = 1;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v15 = v19;
    }

    else if (v13)
    {
      v15 = +[PPKImageWriter log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 134218242;
        *&v34[4] = v14;
        v35 = 2112;
        v36 = &stru_1F4F6DB60;
        _os_log_impl(&dword_1D38C4000, v15, OS_LOG_TYPE_DEFAULT, "SecItemCopyMatching() returned error %ld: %@", v34, 0x16u);
      }
    }

    else
    {
      v15 = [result mutableCopy];
      v16 = [v15 objectForKey:v30];
      v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:query];
      [v17 removeObjectForKey:v5];
      [v17 setObject:v6 forKey:*MEMORY[0x1E697B318]];
      [v17 setObject:v12 forKey:v11];
      [v17 setObject:v29 forKey:v3];
      [v17 setValue:v16 forKey:v30];
      *v34 = 0;
      if (!SecItemCopyMatching(v17, v34))
      {
        v27 = *v34;
        if (*v34)
        {
          v28 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedData:*v34 options:0];

          if (v28)
          {
            [v28 getBytes:selfCopy->_key length:16];
            selfCopy->_haveKey = 1;
          }
        }
      }
    }

    selfCopy->_keyInitialized = 1;
  }

  objc_sync_exit(selfCopy);
}

- (_BYTE)encryptData:(_BYTE *)data
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (!data)
  {
    goto LABEL_22;
  }

  if (!v4)
  {
    v35 = +[PPKImageWriter log];
    if (OUTLINED_FUNCTION_3(v35))
    {
      LOWORD(__buf) = 0;
LABEL_16:
      OUTLINED_FUNCTION_1();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
    }

LABEL_17:

    data = 0;
    goto LABEL_22;
  }

  if ((data[8] & 1) == 0)
  {
    [data initializeKey];
  }

  v6 = data[9];
  v7 = +[PPKImageWriter log];
  v8 = OUTLINED_FUNCTION_3(v7);
  if ((v6 & 1) == 0)
  {
    if (v8)
    {
      LOWORD(__buf) = 0;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v8)
  {
    __buf = 134217984;
    v55 = [v5 length];
    OUTLINED_FUNCTION_1();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
  }

  generateRandomKey(&__buf);
  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:&__buf length:16];
  v15 = [v5 length];
  v16 = [v14 length] + v15;
  v17 = (v16 + 31) & 0xFFFFFFFFFFFFFFF0;
  v18 = [MEMORY[0x1E695DF88] dataWithCapacity:v17];
  [v18 appendData:v14];
  [v18 appendData:v5];
  [v18 setLength:v17];
  v52 = 0;
  mutableBytes = [v18 mutableBytes];
  dataOuta = [v18 mutableBytes];
  OUTLINED_FUNCTION_2();
  v26 = CCCrypt(v20, v21, v22, v23, v24, v25, mutableBytes, v16, dataOuta, v17, &v52);
  v27 = +[PPKImageWriter log];
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    if (v28)
    {
      v53 = v26;
      OUTLINED_FUNCTION_0(&dword_1D38C4000, v29, v30, "PPKPayloadEncryption: Failed to encrypt with error code: %ld", v31, v32, v33, v34, dataOut, dataOutAvailable, v51, v52, 0);
    }

    data = 0;
  }

  else
  {
    if (v28)
    {
      HIDWORD(v53) = [v18 length] >> 32;
      OUTLINED_FUNCTION_0(&dword_1D38C4000, v41, v42, "PPKPayloadEncryption: %lu bytes encrypted", v43, v44, v45, v46, dataOut, dataOutAvailable, v51, v52, 0);
    }

    data = v18;
  }

LABEL_22:

  return data;
}

- (id)decryptData:(_BYTE *)data
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (!data)
  {
    goto LABEL_19;
  }

  if (!v4 || ![v4 length])
  {
    v33 = +[PPKImageWriter log];
    if (OUTLINED_FUNCTION_3(v33))
    {
      *buf = 0;
LABEL_17:
      OUTLINED_FUNCTION_1();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
    }

LABEL_18:

LABEL_19:
    v32 = 0;
    goto LABEL_20;
  }

  if ((data[8] & 1) == 0)
  {
    [data initializeKey];
  }

  v6 = data[9];
  v7 = +[PPKImageWriter log];
  v8 = OUTLINED_FUNCTION_3(v7);
  if ((v6 & 1) == 0)
  {
    if (v8)
    {
      *buf = 0;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v8)
  {
    *buf = 134217984;
    v52 = [v5 length];
    OUTLINED_FUNCTION_1();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
  }

  v50 = 0;
  v14 = malloc_type_malloc([v5 length], 0x5086D5AuLL);
  bytes = [v5 bytes];
  v16 = [v5 length] - 16;
  dataOutAvailablea = [v5 length] - 16;
  OUTLINED_FUNCTION_2();
  v23 = CCCrypt(v17, v18, v19, v20, v21, v22, bytes, v16, v14, dataOutAvailablea, &v50);
  if (v23)
  {
    v24 = v23;
    v25 = +[PPKImageWriter log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v52 = v24;
      OUTLINED_FUNCTION_0(&dword_1D38C4000, v26, v27, "PPKPayloadEncryption: Failed to decrypt with error code: %ld", v28, v29, v30, v31, dataOut, dataOutAvailable, v49, v50, 0);
    }

    v32 = 0;
  }

  else
  {
    v32 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 + 16 length:v50 - 16];
    v25 = +[PPKImageWriter log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      HIDWORD(v52) = [v32 length] >> 32;
      OUTLINED_FUNCTION_0(&dword_1D38C4000, v40, v41, "PPKPayloadEncryption: %lu bytes decrypted", v42, v43, v44, v45, dataOut, dataOutAvailable, v49, v50, 0);
    }
  }

  free(v14);
LABEL_20:

  return v32;
}

@end