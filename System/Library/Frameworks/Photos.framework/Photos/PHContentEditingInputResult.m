@interface PHContentEditingInputResult
- (BOOL)containsValidData;
- (id)description;
- (id)uniformTypeIdentifier;
- (void)addAdjustmentDataResult:(id)a3;
- (void)addAdjustmentSecondaryDataResult:(id)a3;
- (void)addFlipImageURL:(id)a3 forAssetResourceType:(int64_t)a4;
- (void)addFlipVideoURL:(id)a3 forAssetResourceType:(int64_t)a4;
- (void)addImageResult:(id)a3;
- (void)addVideoResult:(id)a3;
- (void)mergeInfoDictionaryFromResult:(id)a3;
@end

@implementation PHContentEditingInputResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PHContentEditingInputResult *)self imageURL];
  v7 = [(PHContentEditingInputResult *)self videoURL];
  v8 = [v3 stringWithFormat:@"<%@ %p> imageURL: %@, videoURL: %@", v5, self, v6, v7];

  return v8;
}

- (void)addFlipVideoURL:(id)a3 forAssetResourceType:(int64_t)a4
{
  v10 = a3;
  flipVideoURLs = self->_flipVideoURLs;
  if (!flipVideoURLs)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = self->_flipVideoURLs;
    self->_flipVideoURLs = v7;

    flipVideoURLs = self->_flipVideoURLs;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)flipVideoURLs setObject:v10 forKeyedSubscript:v9];
}

- (void)addFlipImageURL:(id)a3 forAssetResourceType:(int64_t)a4
{
  v10 = a3;
  flipImageURLs = self->_flipImageURLs;
  if (!flipImageURLs)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = self->_flipImageURLs;
    self->_flipImageURLs = v7;

    flipImageURLs = self->_flipImageURLs;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)flipImageURLs setObject:v10 forKeyedSubscript:v9];
}

- (void)addVideoResult:(id)a3
{
  objc_storeStrong(&self->_videoResult, a3);
  v5 = a3;
  [(PHContentEditingInputResult *)self mergeInfoDictionaryFromResult:v5];
}

- (void)addImageResult:(id)a3
{
  v13 = a3;
  if (!self->_imageResult)
  {
    v4 = [PHImageResult alloc];
    v5 = [v13 info];
    v6 = [v5 objectForKeyedSubscript:@"PHImageResultRequestIDKey"];
    v7 = -[PHCompositeMediaResult initWithRequestID:](v4, "initWithRequestID:", [v6 intValue]);
    imageResult = self->_imageResult;
    self->_imageResult = v7;
  }

  v9 = [v13 imageURL];

  if (v9)
  {
    v10 = [v13 imageURL];
    [(PHImageResult *)self->_imageResult setImageURL:v10];

    v11 = [v13 uniformTypeIdentifier];
    [(PHImageResult *)self->_imageResult setUniformTypeIdentifier:v11];

    v12 = [v13 exifOrientation];
    [(PHImageResult *)self->_imageResult setExifOrientation:v12];
  }

  if ([v13 imageRef])
  {
    -[PHImageResult setImageRef:](self->_imageResult, "setImageRef:", [v13 imageRef]);
  }

  [(PHContentEditingInputResult *)self mergeInfoDictionaryFromResult:v13];
}

- (void)addAdjustmentSecondaryDataResult:(id)a3
{
  objc_storeStrong(&self->_adjustmentSecondaryDataResult, a3);
  v5 = a3;
  [(PHContentEditingInputResult *)self mergeInfoDictionaryFromResult:v5];
}

- (void)addAdjustmentDataResult:(id)a3
{
  v6 = a3;
  v4 = [v6 adjustmentData];
  adjustmentData = self->_adjustmentData;
  self->_adjustmentData = v4;

  [(PHContentEditingInputResult *)self mergeInfoDictionaryFromResult:v6];
}

- (void)mergeInfoDictionaryFromResult:(id)a3
{
  v8 = a3;
  v4 = [v8 error];
  if (v4)
  {
    v5 = v4;
    v6 = [(PHContentEditingInputResult *)self error];

    if (!v6)
    {
      v7 = [v8 error];
      [(PHContentEditingInputResult *)self setError:v7];
    }
  }

  if ([v8 isInCloud])
  {
    [(PHCompositeMediaResult *)self setIsInCloud:1];
  }

  if ([v8 isCancelled])
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
    v4 = [(PHImageResult *)imageResult containsValidData];
    videoResult = self->_videoResult;
  }

  else
  {
    videoResult = self->_videoResult;
    if (!videoResult)
    {
      return videoResult;
    }

    v4 = 1;
  }

  if (videoResult)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    LOBYTE(videoResult) = (videoResult == 0) & v4;
  }

  else
  {

    LOBYTE(videoResult) = [(PHCompositeMediaResult *)videoResult containsValidData];
  }

  return videoResult;
}

@end