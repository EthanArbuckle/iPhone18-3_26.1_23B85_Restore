@interface PHLivePhotoResult
- (BOOL)containsValidData;
- (id)allowedInfoKeys;
- (id)sanitizedInfoDictionary;
- (void)_mergeInfoDictionaryFromResult:(id)result;
- (void)addImageResult:(id)result;
- (void)addVideoResult:(id)result;
@end

@implementation PHLivePhotoResult

- (void)addVideoResult:(id)result
{
  resultCopy = result;
  if (self->_videoResult)
  {
    v6 = PLImageManagerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Cannot set more than 1 video on a live photo result", v7, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_videoResult, result);
    [(PHLivePhotoResult *)self _mergeInfoDictionaryFromResult:resultCopy];
  }
}

- (void)addImageResult:(id)result
{
  resultCopy = result;
  if (self->_imageResult)
  {
    v6 = PLImageManagerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_ERROR, "Cannot set more than 1 image on a live photo result", v7, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_imageResult, result);
    [(PHLivePhotoResult *)self _mergeInfoDictionaryFromResult:resultCopy];
  }
}

- (void)_mergeInfoDictionaryFromResult:(id)result
{
  resultCopy = result;
  error = [resultCopy error];
  if (error)
  {
    v5 = error;
    error2 = [(PHCompositeMediaResult *)self error];

    if (!error2)
    {
      error3 = [resultCopy error];
      [(PHCompositeMediaResult *)self setError:error3];
    }
  }

  if ([resultCopy isInCloud])
  {
    [(PHCompositeMediaResult *)self setIsInCloud:1];
  }

  if ([resultCopy isCancelled])
  {
    [(PHCompositeMediaResult *)self setCancelled:1];
  }
}

- (id)sanitizedInfoDictionary
{
  v6.receiver = self;
  v6.super_class = PHLivePhotoResult;
  sanitizedInfoDictionary = [(PHCompositeMediaResult *)&v6 sanitizedInfoDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[PHLivePhotoResult isDegraded](self, "isDegraded")}];
  [sanitizedInfoDictionary setObject:v4 forKeyedSubscript:@"PHImageResultIsDegradedKey"];

  return sanitizedInfoDictionary;
}

- (id)allowedInfoKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PHLivePhotoResult_allowedInfoKeys__block_invoke;
  block[3] = &unk_1E75AB270;
  block[4] = self;
  if (allowedInfoKeys_onceToken_40790 != -1)
  {
    dispatch_once(&allowedInfoKeys_onceToken_40790, block);
  }

  return allowedInfoKeys_allowedKeys_40791;
}

void __36__PHLivePhotoResult_allowedInfoKeys__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DFA8]);
  v7.receiver = *(a1 + 32);
  v7.super_class = PHLivePhotoResult;
  v3 = objc_msgSendSuper2(&v7, sel_allowedInfoKeys);
  v4 = [v2 initWithSet:v3];

  v8[0] = @"PHImageResultIsDegradedKey";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v4 addObjectsFromArray:v5];

  v6 = allowedInfoKeys_allowedKeys_40791;
  allowedInfoKeys_allowedKeys_40791 = v4;
}

- (BOOL)containsValidData
{
  if (![(PHCompositeMediaResult *)self->_imageResult containsValidData]&& self->_requiresImageResult)
  {
    return 0;
  }

  videoResult = self->_videoResult;

  return [(PHCompositeMediaResult *)videoResult containsValidData];
}

@end