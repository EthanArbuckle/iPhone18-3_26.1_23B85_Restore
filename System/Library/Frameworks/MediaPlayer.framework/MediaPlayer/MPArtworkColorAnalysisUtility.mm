@interface MPArtworkColorAnalysisUtility
- (MPArtworkColorAnalysisUtility)initWithQualityOfService:(int64_t)service;
- (id)performColorAnalysisForImageAtUrl:(id)url preferredImageSize:(CGSize)size completionHandler:(id)handler;
- (void)cancelColorAnalysis:(id)analysis withCompletionHandler:(id)handler;
@end

@implementation MPArtworkColorAnalysisUtility

- (void)cancelColorAnalysis:(id)analysis withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  analysisCopy = analysis;
  os_unfair_lock_lock(&self->_lock);
  artworkColorAnalysisOperations = [(MPArtworkColorAnalysisUtility *)self artworkColorAnalysisOperations];
  v8 = [artworkColorAnalysisOperations objectForKey:analysisCopy];

  [v8 cancel];
  if (handlerCopy)
  {
    error = [v8 error];
    handlerCopy[2](handlerCopy, error);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)performColorAnalysisForImageAtUrl:(id)url preferredImageSize:(CGSize)size completionHandler:(id)handler
{
  urlCopy = url;
  handlerCopy = handler;
  if (urlCopy)
  {
    v9 = urlCopy;
    os_unfair_lock_lock(&self->_lock);
    artworkColorAnalysisOperations = [(MPArtworkColorAnalysisUtility *)self artworkColorAnalysisOperations];
    v11 = [artworkColorAnalysisOperations objectForKey:v9];

    os_unfair_lock_unlock(&self->_lock);
    if (v11)
    {
      if (handlerCopy)
      {
        v12 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1330] code:2 debugDescription:@"Color analysis operation already in process"];
        handlerCopy[2](handlerCopy, 0, v12);
      }
    }

    else
    {
      v11 = [[MPArtworkColorAnalysisOperation alloc] initWithURL:v9];
      objc_initWeak(&location, v11);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __104__MPArtworkColorAnalysisUtility_performColorAnalysisForImageAtUrl_preferredImageSize_completionHandler___block_invoke;
      v17[3] = &unk_1E7675628;
      objc_copyWeak(&v20, &location);
      v19 = handlerCopy;
      v17[4] = self;
      v13 = v9;
      v18 = v13;
      [(MPArtworkColorAnalysisOperation *)v11 setCompletionBlock:v17];
      [(MPArtworkColorAnalysisOperation *)v11 setQualityOfService:[(MPArtworkColorAnalysisUtility *)self qualityOfService]];
      os_unfair_lock_lock(&self->_lock);
      artworkColorAnalysisOperations2 = [(MPArtworkColorAnalysisUtility *)self artworkColorAnalysisOperations];
      [artworkColorAnalysisOperations2 setObject:v11 forKey:v13];

      os_unfair_lock_unlock(&self->_lock);
      artworkColorAnalysisOperationQueue = [(MPArtworkColorAnalysisUtility *)self artworkColorAnalysisOperationQueue];
      [artworkColorAnalysisOperationQueue addOperation:v11];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1330] code:1 debugDescription:{@"Invalid source image URL=%@", 0}];
    handlerCopy[2](handlerCopy, 0, v11);
  }

  return urlCopy;
}

void __104__MPArtworkColorAnalysisUtility_performColorAnalysisForImageAtUrl_preferredImageSize_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained colorAnalysis];
  v3 = [WeakRetained error];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v2, v3);
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v5 = [*(a1 + 32) artworkColorAnalysisOperations];
  [v5 removeObjectForKey:*(a1 + 40)];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

- (MPArtworkColorAnalysisUtility)initWithQualityOfService:(int64_t)service
{
  v12.receiver = self;
  v12.super_class = MPArtworkColorAnalysisUtility;
  v4 = [(MPArtworkColorAnalysisUtility *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    [(MPArtworkColorAnalysisUtility *)v4 setQualityOfService:service];
    v6 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(MPArtworkColorAnalysisUtility *)v5 setArtworkColorAnalysisOperationQueue:v6];

    artworkColorAnalysisOperationQueue = [(MPArtworkColorAnalysisUtility *)v5 artworkColorAnalysisOperationQueue];
    [artworkColorAnalysisOperationQueue setQualityOfService:service];

    artworkColorAnalysisOperationQueue2 = [(MPArtworkColorAnalysisUtility *)v5 artworkColorAnalysisOperationQueue];
    [artworkColorAnalysisOperationQueue2 setName:@"com.apple.mediaplayer.artworkservice.colorAnalysis.OperationQueue"];

    artworkColorAnalysisOperationQueue3 = [(MPArtworkColorAnalysisUtility *)v5 artworkColorAnalysisOperationQueue];
    [artworkColorAnalysisOperationQueue3 setMaxConcurrentOperationCount:5];

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    [(MPArtworkColorAnalysisUtility *)v5 setArtworkColorAnalysisOperations:strongToStrongObjectsMapTable];
  }

  return v5;
}

@end