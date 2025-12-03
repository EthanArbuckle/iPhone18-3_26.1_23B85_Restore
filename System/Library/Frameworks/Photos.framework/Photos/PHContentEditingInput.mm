@interface PHContentEditingInput
- (AVAsset)audiovisualAsset;
- (PHContentEditingInput)initWithAppropriateURL:(id)l;
- (UTType)contentType;
- (id)description;
- (void)consumeSandboxExtensionToken:(id)token;
- (void)dealloc;
- (void)loadFullSizeImageDataWithCompletionHandler:(id)handler;
- (void)requestFullSizeImageURLWithCompletionHandler:(id)handler;
- (void)setVideoURL:(id)l;
@end

@implementation PHContentEditingInput

- (id)description
{
  v11.receiver = self;
  v11.super_class = PHContentEditingInput;
  v3 = [(PHContentEditingInput *)&v11 description];
  mediaType = [(PHContentEditingInput *)self mediaType];
  mediaSubtypes = [(PHContentEditingInput *)self mediaSubtypes];
  creationDate = [(PHContentEditingInput *)self creationDate];
  location = [(PHContentEditingInput *)self location];
  adjustmentData = [(PHContentEditingInput *)self adjustmentData];
  v9 = [v3 stringByAppendingFormat:@" mediaType=%ld/%ld, creationDate=%@, location=%d, adjustmentData=%@", mediaType, mediaSubtypes, creationDate, location != 0, adjustmentData];

  return v9;
}

- (UTType)contentType
{
  uniformTypeIdentifier = [(PHContentEditingInput *)self uniformTypeIdentifier];

  if (uniformTypeIdentifier)
  {
    v4 = MEMORY[0x1E69C08F0];
    uniformTypeIdentifier2 = [(PHContentEditingInput *)self uniformTypeIdentifier];
    v6 = [v4 typeWithIdentifier:uniformTypeIdentifier2];
    v7 = v6;
    v8 = *MEMORY[0x1E6982D60];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __43__PHContentEditingInput__invalidateAVAsset__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 removeObserver:*(a1 + 32) name:*MEMORY[0x1E6987370] object:*(*(a1 + 32) + 32)];

    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }
}

- (AVAsset)audiovisualAsset
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__39542;
  v8 = __Block_byref_object_dispose__39543;
  v9 = 0;
  pl_dispatch_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __41__PHContentEditingInput_audiovisualAsset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4];
  if (!v3)
  {
    v4 = [v2 videoURL];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:v4 options:0];
      v6 = *(a1 + 32);
      v7 = *(v6 + 32);
      *(v6 + 32) = v5;

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:*(a1 + 32) selector:sel__invalidateAVAsset name:*MEMORY[0x1E6987370] object:*(*(a1 + 32) + 32)];
    }

    v3 = *(*(a1 + 32) + 32);
  }

  v9 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v9, v3);
}

- (void)setVideoURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (self->_videoURL != lCopy)
  {
    v8 = lCopy;
    lCopy = [lCopy isEqual:?];
    v5 = v8;
    if ((lCopy & 1) == 0)
    {
      v6 = [v8 copy];
      videoURL = self->_videoURL;
      self->_videoURL = v6;

      lCopy = [(PHContentEditingInput *)self _invalidateAVAsset];
      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](lCopy, v5);
}

- (void)consumeSandboxExtensionToken:(id)token
{
  tokenCopy = token;
  v9 = tokenCopy;
  if (!self->_sandboxExtensionHandles)
  {
    array = [MEMORY[0x1E695DF70] array];
    sandboxExtensionHandles = self->_sandboxExtensionHandles;
    self->_sandboxExtensionHandles = array;

    tokenCopy = v9;
  }

  if ([tokenCopy length])
  {
    v7 = MEMORY[0x1E696AD98];
    [v9 UTF8String];
    v8 = [v7 numberWithLongLong:sandbox_extension_consume()];
    [(NSMutableArray *)self->_sandboxExtensionHandles addObject:v8];
  }
}

- (void)requestFullSizeImageURLWithCompletionHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    fullSizeImageURL = [(PHContentEditingInput *)self fullSizeImageURL];
    (*(handler + 2))(handlerCopy, fullSizeImageURL, [(PHContentEditingInput *)self fullSizeImageOrientation]);
  }
}

- (void)loadFullSizeImageDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PHContentEditingInput_loadFullSizeImageDataWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E75A93B8;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(PHContentEditingInput *)self requestFullSizeImageURLWithCompletionHandler:v6];
}

void __68__PHContentEditingInput_loadFullSizeImageDataWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a2 options:1 error:0];
  (*(*(a1 + 32) + 16))();
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_sandboxExtensionHandles;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7) integerValue];
        sandbox_extension_release();
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v9.receiver = self;
  v9.super_class = PHContentEditingInput;
  [(PHContentEditingInput *)&v9 dealloc];
}

- (PHContentEditingInput)initWithAppropriateURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = PHContentEditingInput;
  v6 = [(PHContentEditingInput *)&v10 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.photos.contenteditinginput.avasset", 0);
    avAssetIsolationQueue = v6->_avAssetIsolationQueue;
    v6->_avAssetIsolationQueue = v7;

    objc_storeStrong(&v6->_appropriateURLForDerivingRenderedContentURLs, l);
  }

  return v6;
}

@end