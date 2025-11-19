@interface PHCompositeMediaResult
+ (id)resultWithRequestID:(int)a3 error:(id)a4;
- (BOOL)containsValidData;
- (PHCompositeMediaResult)initWithRequestID:(int)a3;
- (id)_sanitizedError;
- (id)allowedInfoKeys;
- (id)imagePropertiesLoadIfNeeded:(BOOL)a3;
- (id)sanitizedInfoDictionary;
- (unsigned)cgOrientation;
- (void)addInfoFromDictionary:(id)a3;
- (void)setErrorIfNone:(id)a3;
@end

@implementation PHCompositeMediaResult

- (id)sanitizedInfoDictionary
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(NSMutableDictionary *)self->_mutableInfo allKeys];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [(PHCompositeMediaResult *)self allowedInfoKeys];
        v11 = [v10 containsObject:v9];

        if (v11)
        {
          v12 = [(NSMutableDictionary *)self->_mutableInfo objectForKeyedSubscript:v9];
          [v3 setObject:v12 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  if ([(PHCompositeMediaResult *)self isCancelled])
  {
    v13 = [(PHCompositeMediaResult *)self cancelledInfoKey];
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v13];
  }

  if ([(PHCompositeMediaResult *)self isInCloud])
  {
    v14 = [(PHCompositeMediaResult *)self inCloudInfoKey];
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v14];
  }

  v15 = [(PHCompositeMediaResult *)self error];
  IsMediaServerDisconnected = PHErrorIsMediaServerDisconnected();

  if (IsMediaServerDisconnected)
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PHImageResultClientShouldRetryKey"];
  }

  v17 = [(PHCompositeMediaResult *)self _sanitizedError];
  v18 = [(PHCompositeMediaResult *)self errorInfoKey];
  [v3 setObject:v17 forKeyedSubscript:v18];

  return v3;
}

- (id)allowedInfoKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PHCompositeMediaResult_allowedInfoKeys__block_invoke;
  block[3] = &unk_1E75AB270;
  block[4] = self;
  if (allowedInfoKeys_onceToken != -1)
  {
    dispatch_once(&allowedInfoKeys_onceToken, block);
  }

  return allowedInfoKeys_allowedKeys;
}

void __41__PHCompositeMediaResult_allowedInfoKeys__block_invoke(uint64_t a1)
{
  v9[6] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v9[0] = @"PHImageResultRequestIDKey";
  v3 = [*(a1 + 32) errorInfoKey];
  v9[1] = v3;
  v4 = [*(a1 + 32) cancelledInfoKey];
  v9[2] = v4;
  v5 = [*(a1 + 32) inCloudInfoKey];
  v9[3] = v5;
  v9[4] = @"PHImageFileSandboxExtensionTokenKey";
  v9[5] = @"PHImageResultClientShouldRetryKey";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:6];
  v7 = [v2 setWithArray:v6];
  v8 = allowedInfoKeys_allowedKeys;
  allowedInfoKeys_allowedKeys = v7;
}

- (id)_sanitizedError
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(PHCompositeMediaResult *)self error];
  if ([(PHCompositeMediaResult *)self isCancelled])
  {
    v4 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:0];
  }

  else
  {
    if (!v3)
    {
LABEL_6:
      if ([(PHCompositeMediaResult *)self containsValidData]|| [(PHCompositeMediaResult *)self isDegraded])
      {
        v5 = 0;
      }

      else
      {
        v6 = MEMORY[0x1E696ABC0];
        v9 = *MEMORY[0x1E696A578];
        v10[0] = @"Unknown internal error";
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
        v5 = [v6 ph_errorWithDomain:@"PHPhotosErrorDomain" code:-1 userInfo:v7];
      }

      goto LABEL_10;
    }

    v4 = PHPublicImageManagerErrorFromError(v3);
  }

  v5 = v4;

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_10:

  return v5;
}

- (void)setErrorIfNone:(id)a3
{
  v6 = a3;
  v4 = [(PHCompositeMediaResult *)self error];

  v5 = v6;
  if (v6 && !v4)
  {
    [(PHCompositeMediaResult *)self setError:v6];
    v5 = v6;
  }
}

- (void)addInfoFromDictionary:(id)a3
{
  mutableInfo = self->_mutableInfo;
  v5 = a3;
  [(NSMutableDictionary *)mutableInfo addEntriesFromDictionary:v5];
  v6 = [v5 objectForKeyedSubscript:@"PHImageResultIsInCloudKey"];
  -[PHCompositeMediaResult setIsInCloud:](self, "setIsInCloud:", [v6 BOOLValue]);

  v7 = [v5 objectForKeyedSubscript:@"PHImageCancelledKey"];

  -[PHCompositeMediaResult setCancelled:](self, "setCancelled:", [v7 BOOLValue]);
}

- (id)imagePropertiesLoadIfNeeded:(BOOL)a3
{
  if (a3 && !self->_imageProperties)
  {
    v4 = [(PHCompositeMediaResult *)self imageURL];
    if (v4)
    {
      v5 = [MEMORY[0x1E696AC08] defaultManager];
      v6 = [v4 path];
      v7 = [v5 fileExistsAtPath:v6 isDirectory:0];

      if (v7)
      {
        v8 = CGImageSourceCreateWithURL(v4, 0);
        if (v8)
        {
          v9 = v8;
          v10 = [MEMORY[0x1E69BE540] newImagePropertiesFromImageSource:v8];
          imageProperties = self->_imageProperties;
          self->_imageProperties = v10;

          CFRelease(v9);
        }
      }
    }
  }

  v12 = self->_imageProperties;

  return v12;
}

- (unsigned)cgOrientation
{
  v3 = [(PHCompositeMediaResult *)self exifOrientation];

  if (!v3)
  {
    return 1;
  }

  v4 = [(PHCompositeMediaResult *)self exifOrientation];
  v5 = [v4 intValue];

  return v5;
}

- (BOOL)containsValidData
{
  v2 = [(PHCompositeMediaResult *)self error];
  v3 = v2 != 0;

  return v3;
}

- (PHCompositeMediaResult)initWithRequestID:(int)a3
{
  v3 = *&a3;
  v9.receiver = self;
  v9.super_class = PHCompositeMediaResult;
  v4 = [(PHCompositeMediaResult *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutableInfo = v4->_mutableInfo;
    v4->_mutableInfo = v5;

    v7 = [MEMORY[0x1E696AD98] numberWithInt:v3];
    [(NSMutableDictionary *)v4->_mutableInfo setObject:v7 forKeyedSubscript:@"PHImageResultRequestIDKey"];
  }

  return v4;
}

+ (id)resultWithRequestID:(int)a3 error:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [[a1 alloc] initWithRequestID:v4];
  [v7 setError:v6];

  return v7;
}

@end