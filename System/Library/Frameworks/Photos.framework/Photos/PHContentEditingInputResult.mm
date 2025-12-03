@interface PHContentEditingInputResult
- (BOOL)containsValidData;
- (id)description;
- (id)uniformTypeIdentifier;
- (void)addAdjustmentDataResult:(id)result;
- (void)addAdjustmentSecondaryDataResult:(id)result;
- (void)addFlipImageURL:(id)l forAssetResourceType:(int64_t)type;
- (void)addFlipVideoURL:(id)l forAssetResourceType:(int64_t)type;
- (void)addImageResult:(id)result;
- (void)addVideoResult:(id)result;
- (void)mergeInfoDictionaryFromResult:(id)result;
@end

@implementation PHContentEditingInputResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  imageURL = [(PHContentEditingInputResult *)self imageURL];
  videoURL = [(PHContentEditingInputResult *)self videoURL];
  v8 = [v3 stringWithFormat:@"<%@ %p> imageURL: %@, videoURL: %@", v5, self, imageURL, videoURL];

  return v8;
}

- (void)addFlipVideoURL:(id)l forAssetResourceType:(int64_t)type
{
  lCopy = l;
  flipVideoURLs = self->_flipVideoURLs;
  if (!flipVideoURLs)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = self->_flipVideoURLs;
    self->_flipVideoURLs = v7;

    flipVideoURLs = self->_flipVideoURLs;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(NSMutableDictionary *)flipVideoURLs setObject:lCopy forKeyedSubscript:v9];
}

- (void)addFlipImageURL:(id)l forAssetResourceType:(int64_t)type
{
  lCopy = l;
  flipImageURLs = self->_flipImageURLs;
  if (!flipImageURLs)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = self->_flipImageURLs;
    self->_flipImageURLs = v7;

    flipImageURLs = self->_flipImageURLs;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(NSMutableDictionary *)flipImageURLs setObject:lCopy forKeyedSubscript:v9];
}

- (void)addVideoResult:(id)result
{
  objc_storeStrong(&self->_videoResult, result);
  resultCopy = result;
  [(PHContentEditingInputResult *)self mergeInfoDictionaryFromResult:resultCopy];
}

- (void)addImageResult:(id)result
{
  resultCopy = result;
  if (!self->_imageResult)
  {
    v4 = [PHImageResult alloc];
    info = [resultCopy info];
    v6 = [info objectForKeyedSubscript:@"PHImageResultRequestIDKey"];
    v7 = -[PHCompositeMediaResult initWithRequestID:](v4, "initWithRequestID:", [v6 intValue]);
    imageResult = self->_imageResult;
    self->_imageResult = v7;
  }

  imageURL = [resultCopy imageURL];

  if (imageURL)
  {
    imageURL2 = [resultCopy imageURL];
    [(PHImageResult *)self->_imageResult setImageURL:imageURL2];

    uniformTypeIdentifier = [resultCopy uniformTypeIdentifier];
    [(PHImageResult *)self->_imageResult setUniformTypeIdentifier:uniformTypeIdentifier];

    exifOrientation = [resultCopy exifOrientation];
    [(PHImageResult *)self->_imageResult setExifOrientation:exifOrientation];
  }

  if ([resultCopy imageRef])
  {
    -[PHImageResult setImageRef:](self->_imageResult, "setImageRef:", [resultCopy imageRef]);
  }

  [(PHContentEditingInputResult *)self mergeInfoDictionaryFromResult:resultCopy];
}

- (void)addAdjustmentSecondaryDataResult:(id)result
{
  objc_storeStrong(&self->_adjustmentSecondaryDataResult, result);
  resultCopy = result;
  [(PHContentEditingInputResult *)self mergeInfoDictionaryFromResult:resultCopy];
}

- (void)addAdjustmentDataResult:(id)result
{
  resultCopy = result;
  adjustmentData = [resultCopy adjustmentData];
  adjustmentData = self->_adjustmentData;
  self->_adjustmentData = adjustmentData;

  [(PHContentEditingInputResult *)self mergeInfoDictionaryFromResult:resultCopy];
}

- (void)mergeInfoDictionaryFromResult:(id)result
{
  resultCopy = result;
  error = [resultCopy error];
  if (error)
  {
    v5 = error;
    error2 = [(PHContentEditingInputResult *)self error];

    if (!error2)
    {
      error3 = [resultCopy error];
      [(PHContentEditingInputResult *)self setError:error3];
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

- (id)uniformTypeIdentifier
{
  imageResult = self->_imageResult;
  if (imageResult || (imageResult = self->_videoResult) != 0)
  {
    imageResult = [imageResult uniformTypeIdentifier];
    v2 = vars8;
  }

  return imageResult;
}

- (BOOL)containsValidData
{
  imageResult = self->_imageResult;
  if (imageResult)
  {
    containsValidData = [(PHImageResult *)imageResult containsValidData];
    videoResult = self->_videoResult;
  }

  else
  {
    videoResult = self->_videoResult;
    if (!videoResult)
    {
      return videoResult;
    }

    containsValidData = 1;
  }

  if (videoResult)
  {
    v6 = containsValidData == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    LOBYTE(videoResult) = (videoResult == 0) & containsValidData;
  }

  else
  {

    LOBYTE(videoResult) = [(PHCompositeMediaResult *)videoResult containsValidData];
  }

  return videoResult;
}

@end