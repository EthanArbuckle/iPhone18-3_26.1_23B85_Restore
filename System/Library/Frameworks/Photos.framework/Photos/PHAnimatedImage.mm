@interface PHAnimatedImage
+ (int64_t)requestAnimatedImageWithURL:(id)l options:(id)options completion:(id)completion;
+ (void)cancelAnimatedImageRequest:(int64_t)request;
- (PHAnimatedImage)initWithURL:(id)l cachingStrategy:(int64_t)strategy useSharedDecoding:(BOOL)decoding;
- (void)_initializePropertiesWithAnimatedImage:(id)image;
@end

@implementation PHAnimatedImage

- (void)_initializePropertiesWithAnimatedImage:(id)image
{
  imageCopy = image;
  self->_frameCount = [imageCopy frameCount];
  self->_loopCount = [imageCopy loopCount];
  [imageCopy duration];
  self->_duration = v5;
  [imageCopy pixelSize];
  v7 = v6;
  v9 = v8;

  self->_pixelWidth = v7;
  self->_pixelHeight = v9;
}

- (PHAnimatedImage)initWithURL:(id)l cachingStrategy:(int64_t)strategy useSharedDecoding:(BOOL)decoding
{
  decodingCopy = decoding;
  v8 = MEMORY[0x1E69C0640];
  lCopy = l;
  v10 = [[v8 alloc] initWithURL:lCopy cachingStrategy:strategy useGlobalDecodeQueue:decodingCopy];

  if (v10)
  {
    v15.receiver = self;
    v15.super_class = PHAnimatedImage;
    v11 = [(PHAnimatedImage *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_pf_animatedImage, v10);
      [(PHAnimatedImage *)v12 _initializePropertiesWithAnimatedImage:v12->_pf_animatedImage];
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)cancelAnimatedImageRequest:(int64_t)request
{
  v3 = [_PHAnimatedImageLoadOperation _removeOperation:request];
  [v3 cancel];
}

+ (int64_t)requestAnimatedImageWithURL:(id)l options:(id)options completion:(id)completion
{
  lCopy = l;
  optionsCopy = options;
  completionCopy = completion;
  v10 = completionCopy;
  v11 = 0;
  if (lCopy && completionCopy)
  {
    v12 = optionsCopy;
    if (!v12)
    {
      v12 = objc_alloc_init(PHAnimatedImageRequestOptions);
    }

    v13 = +[_PHAnimatedImageLoadOperation _animatedImageSharedLoadingQueue];
    v11 = +[_PHAnimatedImageLoadOperation nextRequestID];
    if ([(PHAnimatedImageRequestOptions *)v12 allowPreCaching])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    v15 = [[_PHAnimatedImageLoadOperation alloc] initWithURL:lCopy cachingStrategy:v14 useSharedDecoding:[(PHAnimatedImageRequestOptions *)v12 useSharedImageDecoding]];
    objc_initWeak(&location, v15);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __66__PHAnimatedImage_requestAnimatedImageWithURL_options_completion___block_invoke;
    v20 = &unk_1E75A3D28;
    v22[1] = v11;
    v21 = v10;
    objc_copyWeak(v22, &location);
    [(_PHAnimatedImageLoadOperation *)v15 setCompletionBlock:&v17];
    [_PHAnimatedImageLoadOperation _registerOperation:v15 forRequestID:v11, v17, v18, v19, v20];
    [v13 addOperation:v15];
    objc_destroyWeak(v22);

    objc_destroyWeak(&location);
  }

  return v11;
}

void __66__PHAnimatedImage_requestAnimatedImageWithURL_options_completion___block_invoke(uint64_t a1)
{
  v2 = [_PHAnimatedImageLoadOperation _removeOperation:*(a1 + 48)];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained animatedImage];
  (*(v3 + 16))(v3, v4);
}

@end