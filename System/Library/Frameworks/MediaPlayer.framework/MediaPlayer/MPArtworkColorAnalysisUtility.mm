@interface MPArtworkColorAnalysisUtility
- (MPArtworkColorAnalysisUtility)initWithQualityOfService:(int64_t)a3;
- (id)performColorAnalysisForImageAtUrl:(id)a3 preferredImageSize:(CGSize)a4 completionHandler:(id)a5;
- (void)cancelColorAnalysis:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation MPArtworkColorAnalysisUtility

- (void)cancelColorAnalysis:(id)a3 withCompletionHandler:(id)a4
{
  v10 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(MPArtworkColorAnalysisUtility *)self artworkColorAnalysisOperations];
  v8 = [v7 objectForKey:v6];

  [v8 cancel];
  if (v10)
  {
    v9 = [v8 error];
    v10[2](v10, v9);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)performColorAnalysisForImageAtUrl:(id)a3 preferredImageSize:(CGSize)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v7)
  {
    v9 = v7;
    os_unfair_lock_lock(&self->_lock);
    v10 = [(MPArtworkColorAnalysisUtility *)self artworkColorAnalysisOperations];
    v11 = [v10 objectForKey:v9];

    os_unfair_lock_unlock(&self->_lock);
    if (v11)
    {
      if (v8)
      {
        v12 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1330] code:2 debugDescription:@"Color analysis operation already in process"];
        v8[2](v8, 0, v12);
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
      v19 = v8;
      v17[4] = self;
      v13 = v9;
      v18 = v13;
      [(MPArtworkColorAnalysisOperation *)v11 setCompletionBlock:v17];
      [(MPArtworkColorAnalysisOperation *)v11 setQualityOfService:[(MPArtworkColorAnalysisUtility *)self qualityOfService]];
      os_unfair_lock_lock(&self->_lock);
      v14 = [(MPArtworkColorAnalysisUtility *)self artworkColorAnalysisOperations];
      [v14 setObject:v11 forKey:v13];

      os_unfair_lock_unlock(&self->_lock);
      v15 = [(MPArtworkColorAnalysisUtility *)self artworkColorAnalysisOperationQueue];
      [v15 addOperation:v11];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1330] code:1 debugDescription:{@"Invalid source image URL=%@", 0}];
    v8[2](v8, 0, v11);
  }

  return v7;
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

- (MPArtworkColorAnalysisUtility)initWithQualityOfService:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = MPArtworkColorAnalysisUtility;
  v4 = [(MPArtworkColorAnalysisUtility *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    [(MPArtworkColorAnalysisUtility *)v4 setQualityOfService:a3];
    v6 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [(MPArtworkColorAnalysisUtility *)v5 setArtworkColorAnalysisOperationQueue:v6];

    v7 = [(MPArtworkColorAnalysisUtility *)v5 artworkColorAnalysisOperationQueue];
    [v7 setQualityOfService:a3];

    v8 = [(MPArtworkColorAnalysisUtility *)v5 artworkColorAnalysisOperationQueue];
    [v8 setName:@"com.apple.mediaplayer.artworkservice.colorAnalysis.OperationQueue"];

    v9 = [(MPArtworkColorAnalysisUtility *)v5 artworkColorAnalysisOperationQueue];
    [v9 setMaxConcurrentOperationCount:5];

    v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    [(MPArtworkColorAnalysisUtility *)v5 setArtworkColorAnalysisOperations:v10];
  }

  return v5;
}

@end