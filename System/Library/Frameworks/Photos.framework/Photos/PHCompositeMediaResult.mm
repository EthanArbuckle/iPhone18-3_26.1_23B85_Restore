@interface PHCompositeMediaResult
+ (id)resultWithRequestID:(int)d error:(id)error;
- (BOOL)containsValidData;
- (PHCompositeMediaResult)initWithRequestID:(int)d;
- (id)_sanitizedError;
- (id)allowedInfoKeys;
- (id)imagePropertiesLoadIfNeeded:(BOOL)needed;
- (id)sanitizedInfoDictionary;
- (unsigned)cgOrientation;
- (void)addInfoFromDictionary:(id)dictionary;
- (void)setErrorIfNone:(id)none;
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
  allKeys = [(NSMutableDictionary *)self->_mutableInfo allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        allowedInfoKeys = [(PHCompositeMediaResult *)self allowedInfoKeys];
        v11 = [allowedInfoKeys containsObject:v9];

        if (v11)
        {
          v12 = [(NSMutableDictionary *)self->_mutableInfo objectForKeyedSubscript:v9];
          [v3 setObject:v12 forKeyedSubscript:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  if ([(PHCompositeMediaResult *)self isCancelled])
  {
    cancelledInfoKey = [(PHCompositeMediaResult *)self cancelledInfoKey];
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:cancelledInfoKey];
  }

  if ([(PHCompositeMediaResult *)self isInCloud])
  {
    inCloudInfoKey = [(PHCompositeMediaResult *)self inCloudInfoKey];
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:inCloudInfoKey];
  }

  error = [(PHCompositeMediaResult *)self error];
  IsMediaServerDisconnected = PHErrorIsMediaServerDisconnected();

  if (IsMediaServerDisconnected)
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PHImageResultClientShouldRetryKey"];
  }

  _sanitizedError = [(PHCompositeMediaResult *)self _sanitizedError];
  errorInfoKey = [(PHCompositeMediaResult *)self errorInfoKey];
  [v3 setObject:_sanitizedError forKeyedSubscript:errorInfoKey];

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
  error = [(PHCompositeMediaResult *)self error];
  if ([(PHCompositeMediaResult *)self isCancelled])
  {
    v4 = [MEMORY[0x1E696ABC0] ph_errorWithDomain:@"PHPhotosErrorDomain" code:3072 userInfo:0];
  }

  else
  {
    if (!error)
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

    v4 = PHPublicImageManagerErrorFromError(error);
  }

  v5 = v4;

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_10:

  return v5;
}

- (void)setErrorIfNone:(id)none
{
  noneCopy = none;
  error = [(PHCompositeMediaResult *)self error];

  v5 = noneCopy;
  if (noneCopy && !error)
  {
    [(PHCompositeMediaResult *)self setError:noneCopy];
    v5 = noneCopy;
  }
}

- (void)addInfoFromDictionary:(id)dictionary
{
  mutableInfo = self->_mutableInfo;
  dictionaryCopy = dictionary;
  [(NSMutableDictionary *)mutableInfo addEntriesFromDictionary:dictionaryCopy];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"PHImageResultIsInCloudKey"];
  -[PHCompositeMediaResult setIsInCloud:](self, "setIsInCloud:", [v6 BOOLValue]);

  v7 = [dictionaryCopy objectForKeyedSubscript:@"PHImageCancelledKey"];

  -[PHCompositeMediaResult setCancelled:](self, "setCancelled:", [v7 BOOLValue]);
}

- (id)imagePropertiesLoadIfNeeded:(BOOL)needed
{
  if (needed && !self->_imageProperties)
  {
    imageURL = [(PHCompositeMediaResult *)self imageURL];
    if (imageURL)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [imageURL path];
      v7 = [defaultManager fileExistsAtPath:path isDirectory:0];

      if (v7)
      {
        v8 = CGImageSourceCreateWithURL(imageURL, 0);
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
  exifOrientation = [(PHCompositeMediaResult *)self exifOrientation];

  if (!exifOrientation)
  {
    return 1;
  }

  exifOrientation2 = [(PHCompositeMediaResult *)self exifOrientation];
  intValue = [exifOrientation2 intValue];

  return intValue;
}

- (BOOL)containsValidData
{
  error = [(PHCompositeMediaResult *)self error];
  v3 = error != 0;

  return v3;
}

- (PHCompositeMediaResult)initWithRequestID:(int)d
{
  v3 = *&d;
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

+ (id)resultWithRequestID:(int)d error:(id)error
{
  v4 = *&d;
  errorCopy = error;
  v7 = [[self alloc] initWithRequestID:v4];
  [v7 setError:errorCopy];

  return v7;
}

@end