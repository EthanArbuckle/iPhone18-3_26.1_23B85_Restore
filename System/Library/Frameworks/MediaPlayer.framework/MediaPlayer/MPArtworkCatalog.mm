@interface MPArtworkCatalog
+ (id)_artworkCacheForIdentifier:(id)identifier requestingContext:(id)context representationKind:(int64_t)kind;
+ (id)_artworkLoadQueue;
+ (id)_registeredIdentifiableDataSourceAndTokenClasses;
+ (id)artworkCatalogWithDataSourceShortDescription:(id)description dataSourceIdentifier:(id)identifier tokenParameters:(id)parameters;
+ (id)placeholderCatalogWithSymbolName:(id)name;
+ (id)staticArtworkCatalogWithImage:(id)image;
+ (id)staticArtworkCatalogWithRepresentationCollection:(id)collection;
+ (void)_setCacheLimit:(int64_t)limit forCacheIdentifier:(id)identifier requestingContext:(id)context representationKind:(int64_t)kind;
+ (void)_setCachePurgesWhenEnteringBackground:(BOOL)background forCacheIdentifier:(id)identifier requestingContext:(id)context representationKind:(int64_t)kind;
- (BOOL)_isBestRepresentationAvailableForCatalog;
- (BOOL)hasExportableArtworkProperties;
- (BOOL)hasImageOnDisk;
- (BOOL)isArtworkVisuallyIdenticalToCatalog:(id)catalog;
- (BOOL)isEqual:(id)equal;
- (CGSize)fittingSize;
- (CGSize)scaledFittingSize;
- (MPArtworkCatalog)initWithToken:(id)token dataSource:(id)source;
- (MPArtworkDataSource)dataSource;
- (MPArtworkDataSourceVisualIdenticality)visualIdenticalityIdentifier;
- (MPArtworkImageAttachments)imageAttachments;
- (NSCache)cache;
- (NSCache)videoCache;
- (NSUUID)UUID;
- (_MPArtworkCatalogOverlayDelegate)overlayDelegate;
- (id)_existingRepresentationOfKind:(int64_t)kind;
- (id)bestImageFromDisk;
- (id)description;
- (id)destination;
- (id)existingColorAnalysisWithAlgorithm:(int64_t)algorithm;
- (id)requestingContext;
- (int64_t)MP_artworkType;
- (unint64_t)hash;
- (void)_callConfigurationWithRevisionID:(int64_t)d;
- (void)_loadBestRepresentationIfNeededOfKind:(int64_t)kind;
- (void)_loadRepresentationOfKind:(int64_t)kind completionHandler:(id)handler;
- (void)_requestBestRepresentationOfKind:(int64_t)kind completionHandler:(id)handler;
- (void)_setCacheIdentifier:(id)identifier forRequestingContext:(id)context;
- (void)_setDestination:(id)destination isMainThreadBound:(BOOL)bound;
- (void)_setDestination:(id)destination isMainThreadBound:(BOOL)bound forRepresentationKinds:(unint64_t)kinds configurationBlock:(id)block;
- (void)_updateRepresentationOfKind:(int64_t)kind;
- (void)_updateRepresentations;
- (void)_updateWithRepresentation:(id)representation isBestRepresentation:(BOOL)bestRepresentation modelRevisionID:(int64_t)d;
- (void)dealloc;
- (void)requestColorAnalysisWithAlgorithm:(int64_t)algorithm completion:(id)completion;
- (void)requestExportableArtworkPropertiesWithCompletion:(id)completion;
- (void)requestImageWithCompletion:(id)completion;
- (void)requestImageWithCompletionHandler:(id)handler;
- (void)requestRadiosityImageWithCompletionHandler:(id)handler;
- (void)requestVideoWithCompletionHandler:(id)handler;
- (void)setAllowsVideoConstrainedNetworkAccess:(BOOL)access;
- (void)setDestination:(id)destination configurationBlock:(id)block;
- (void)setDestination:(id)destination forRepresentationKinds:(unint64_t)kinds configurationBlock:(id)block;
- (void)setDestination:(id)destination progressiveConfigurationBlock:(id)block;
- (void)setDestinationScale:(double)scale;
- (void)setFittingSize:(CGSize)size;
- (void)setPreferredVideoKind:(int64_t)kind;
@end

@implementation MPArtworkCatalog

- (int64_t)MP_artworkType
{
  token = [(MPArtworkCatalog *)self token];
  artworkType = [token artworkType];

  return artworkType;
}

- (_MPArtworkCatalogOverlayDelegate)overlayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayDelegate);

  return WeakRetained;
}

- (MPArtworkDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)requestingContext
{
  WeakRetained = objc_loadWeakRetained(&self->_requestingContext);

  return WeakRetained;
}

- (id)destination
{
  WeakRetained = objc_loadWeakRetained(&self->_destination);

  return WeakRetained;
}

- (CGSize)fittingSize
{
  width = self->_fittingSize.width;
  height = self->_fittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setDestination:(id)destination progressiveConfigurationBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__MPArtworkCatalog_setDestination_progressiveConfigurationBlock___block_invoke;
  v8[3] = &unk_1E7675BA8;
  v9 = blockCopy;
  v7 = blockCopy;
  [(MPArtworkCatalog *)self setDestination:destination forRepresentationKinds:1 configurationBlock:v8];
}

void __65__MPArtworkCatalog_setDestination_progressiveConfigurationBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 imageRepresentation];

  if (v6)
  {
    v7 = [v5 imageRepresentation];
    v8 = [v7 image];

    [v5 isBestRepresentationForKind:0];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_setCacheIdentifier:(id)identifier forRequestingContext:(id)context
{
  contextCopy = context;
  [(MPArtworkCatalog *)self setCacheIdentifier:identifier];
  [(MPArtworkCatalog *)self setRequestingContext:contextCopy];
}

- (void)_requestBestRepresentationOfKind:(int64_t)kind completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(MPArtworkCatalog *)self _existingRepresentationOfKind:kind];
  if (v7 && (-[MPArtworkCatalog dataSource](self, "dataSource"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isRepresentation:v7 bestRepresentationForArtworkCatalog:self], v8, (v9 & 1) != 0))
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v7, 0);
    }
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__MPArtworkCatalog__requestBestRepresentationOfKind_completionHandler___block_invoke;
    v10[3] = &unk_1E7675D10;
    v10[4] = self;
    kindCopy = kind;
    v11 = handlerCopy;
    [(MPArtworkCatalog *)self _loadRepresentationOfKind:kind completionHandler:v10];
  }
}

void __71__MPArtworkCatalog__requestBestRepresentationOfKind_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[6];
      v11 = 138543874;
      v12 = v8;
      v13 = 2048;
      v14 = v9;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_ERROR, "[MPArtwork] HALTING -- Error loading artwork for catalog: %{public}@ kind: %ld error: %{public}@", &v11, 0x20u);
    }
  }

  v10 = a1[5];
  if (v10 && a1[4])
  {
    (*(v10 + 16))(v10, v5, v6);
  }
}

- (void)_updateWithRepresentation:(id)representation isBestRepresentation:(BOOL)bestRepresentation modelRevisionID:(int64_t)d
{
  bestRepresentationCopy = bestRepresentation;
  representationCopy = representation;
  kind = [representationCopy kind];
  if (kind == 1)
  {
    bestAvailableRepresentationCollection = [(MPArtworkCatalog *)self bestAvailableRepresentationCollection];
    [bestAvailableRepresentationCollection setVideoRepresentation:representationCopy];
  }

  else
  {
    if (kind)
    {
      goto LABEL_6;
    }

    bestAvailableRepresentationCollection = [(MPArtworkCatalog *)self bestAvailableRepresentationCollection];
    [bestAvailableRepresentationCollection setImageRepresentation:representationCopy];
  }

LABEL_6:
  bestAvailableRepresentationCollection2 = [(MPArtworkCatalog *)self bestAvailableRepresentationCollection];
  v11 = 1 << [representationCopy kind];
  if (bestRepresentationCopy)
  {
    v12 = [bestAvailableRepresentationCollection2 bestRepresentationKinds] | v11;
  }

  else
  {
    v12 = [bestAvailableRepresentationCollection2 bestRepresentationKinds] & ~v11;
  }

  [bestAvailableRepresentationCollection2 setBestRepresentationKinds:v12];

  [(MPArtworkCatalog *)self _callConfigurationWithRevisionID:d];
}

- (void)_updateRepresentationOfKind:(int64_t)kind
{
  v7 = [(MPArtworkCatalog *)self _existingRepresentationOfKind:?];
  if (!v7 || (-[MPArtworkCatalog dataSource](self, "dataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isRepresentation:v7 bestRepresentationForArtworkCatalog:self], v5, -[MPArtworkCatalog _updateWithRepresentation:isBestRepresentation:modelRevisionID:](self, "_updateWithRepresentation:isBestRepresentation:modelRevisionID:", v7, v6, self->_modelRevisionID), (v6 & 1) == 0))
  {
    [(MPArtworkCatalog *)self _loadBestRepresentationIfNeededOfKind:kind];
  }
}

- (void)_updateRepresentations
{
  representationKinds = self->_representationKinds;
  if (representationKinds)
  {
    [(MPArtworkCatalog *)self _updateRepresentationOfKind:0];
    representationKinds = self->_representationKinds;
  }

  if ((representationKinds & 2) != 0)
  {

    [(MPArtworkCatalog *)self _updateRepresentationOfKind:1];
  }
}

- (id)_existingRepresentationOfKind:(int64_t)kind
{
  dataSource = [(MPArtworkCatalog *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v6 = [dataSource existingRepresentationOfKind:kind forArtworkCatalog:self];
  }

  else
  {
    if (kind)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = [dataSource existingRepresentationForArtworkCatalog:self];
  }

  v7 = v6;
LABEL_7:

  return v7;
}

- (void)_loadRepresentationOfKind:(int64_t)kind completionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  dataSource = [(MPArtworkCatalog *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    [dataSource loadRepresentationOfKind:kind forArtworkCatalog:self completionHandler:handlerCopy];
  }

  else if (kind)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPArtworkCatalogErrorDomain" code:0 userInfo:0];
    v9 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543874;
      selfCopy = self;
      v12 = 2048;
      kindCopy = kind;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_ERROR, "[MPArtwork] Loaded nil representation -- Error loading artwork for catalog: %{public}@ kind: %ld error: %{public}@", &v10, 0x20u);
    }

    handlerCopy[2](handlerCopy, 0, v8);
  }

  else
  {
    [dataSource loadRepresentationForArtworkCatalog:self completionHandler:handlerCopy];
  }
}

- (void)_loadBestRepresentationIfNeededOfKind:(int64_t)kind
{
  if (![(MPArtworkCatalog *)self isLoadingRepresentation])
  {
    [(MPArtworkCatalog *)self setLoadingRepresentation:1];
    modelRevisionID = self->_modelRevisionID;
    _artworkLoadQueue = [objc_opt_class() _artworkLoadQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__MPArtworkCatalog__loadBestRepresentationIfNeededOfKind___block_invoke;
    v7[3] = &unk_1E7675CE8;
    v7[4] = self;
    v7[5] = kind;
    v7[6] = modelRevisionID;
    [_artworkLoadQueue addOperationWithBlock:v7];
  }
}

void __58__MPArtworkCatalog__loadBestRepresentationIfNeededOfKind___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__MPArtworkCatalog__loadBestRepresentationIfNeededOfKind___block_invoke_2;
  v4[3] = &unk_1E7675CC0;
  objc_copyWeak(&v5, &location);
  v6 = *(a1 + 40);
  [v2 _loadRepresentationOfKind:v3 completionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __58__MPArtworkCatalog__loadBestRepresentationIfNeededOfKind___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = [WeakRetained _existingRepresentationOfKind:*(a1 + 40)];
    v10 = os_log_create("com.apple.amp.mediaplayer", "Artwork");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = 138543874;
      v13 = v8;
      v14 = 2048;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_1A238D000, v10, OS_LOG_TYPE_ERROR, "[MPArtwork] HALTING -- Error loading artwork for catalog: %{public}@ kind: %ld error: %{public}@", &v12, 0x20u);
    }
  }

  else
  {
    v9 = v5;
  }

  [v8 _updateWithRepresentation:v9 isBestRepresentation:1 modelRevisionID:*(a1 + 48)];
  [v8 setLoadingRepresentation:0];
}

- (NSUUID)UUID
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_UUID)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = self->_UUID;
    self->_UUID = uUID;
  }

  os_unfair_lock_unlock(&self->_lock);
  v5 = self->_UUID;

  return v5;
}

- (NSCache)videoCache
{
  v3 = objc_opt_class();
  cacheIdentifier = [(MPArtworkCatalog *)self cacheIdentifier];
  requestingContext = [(MPArtworkCatalog *)self requestingContext];
  v6 = [v3 _artworkCacheForIdentifier:cacheIdentifier requestingContext:requestingContext representationKind:1];

  return v6;
}

- (NSCache)cache
{
  v3 = objc_opt_class();
  cacheIdentifier = [(MPArtworkCatalog *)self cacheIdentifier];
  requestingContext = [(MPArtworkCatalog *)self requestingContext];
  v6 = [v3 _artworkCacheForIdentifier:cacheIdentifier requestingContext:requestingContext representationKind:0];

  return v6;
}

- (void)requestExportableArtworkPropertiesWithCompletion:(id)completion
{
  completionCopy = completion;
  dataSource = [(MPArtworkCatalog *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__MPArtworkCatalog_requestExportableArtworkPropertiesWithCompletion___block_invoke;
    v7[3] = &unk_1E7675C98;
    v8 = completionCopy;
    [dataSource getExportableArtworkPropertiesForCatalog:self completionHandler:v7];
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPArtworkCatalogErrorDomain" code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v6);
  }
}

- (BOOL)hasExportableArtworkProperties
{
  dataSource = [(MPArtworkCatalog *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dataSource hasExportableArtworkPropertiesForCatalog:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MPArtworkImageAttachments)imageAttachments
{
  dataSource = [(MPArtworkCatalog *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dataSource existingArtworkEffectResultForEffectType:4 catalog:self options:MEMORY[0x1E695E0F8]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)requestRadiosityImageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dataSource = [(MPArtworkCatalog *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([dataSource existingArtworkEffectResultForEffectType:3 catalog:self options:MEMORY[0x1E695E0F8]], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v6);
    }
  }

  else
  {
    token = [(MPArtworkCatalog *)self token];
    _artworkLoadQueue = [objc_opt_class() _artworkLoadQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__MPArtworkCatalog_requestRadiosityImageWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E7681770;
    v12 = token;
    v13 = dataSource;
    selfCopy = self;
    v15 = handlerCopy;
    v10 = token;
    [_artworkLoadQueue addOperationWithBlock:v11];

    v7 = 0;
  }
}

void __63__MPArtworkCatalog_requestRadiosityImageWithCompletionHandler___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__MPArtworkCatalog_requestRadiosityImageWithCompletionHandler___block_invoke_2;
  aBlock[3] = &unk_1E7675C70;
  v13 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v14 = v2;
  v15 = v3;
  v4 = _Block_copy(aBlock);
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__MPArtworkCatalog_requestRadiosityImageWithCompletionHandler___block_invoke_7;
    v10[3] = &unk_1E7675C20;
    v7 = &v11;
    v11 = *(a1 + 56);
    [v5 loadArtworkEffectResultForEffectType:3 catalog:v6 options:MEMORY[0x1E695E0F8] systemEffectHandler:v4 completionHandler:v10];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__MPArtworkCatalog_requestRadiosityImageWithCompletionHandler___block_invoke_8;
    v8[3] = &unk_1E7675C20;
    v7 = &v9;
    v9 = *(a1 + 56);
    v4[2](v4, v8);
  }
}

void __63__MPArtworkCatalog_requestRadiosityImageWithCompletionHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[MPArtworkCatalog alloc] initWithToken:a1[4] dataSource:a1[5]];
  [(MPArtworkCatalog *)v4 setFittingSize:300.0, 300.0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__MPArtworkCatalog_requestRadiosityImageWithCompletionHandler___block_invoke_3;
  v8[3] = &unk_1E7681798;
  v5 = a1[6];
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = v3;
  v7 = v4;
  [(MPArtworkCatalog *)v7 requestImageWithCompletion:v8];
}

void __63__MPArtworkCatalog_requestRadiosityImageWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc_init(MPArtworkResizeUtility);
    [*(a1 + 32) fittingSize];
    v6 = v5;
    v8 = v7;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__MPArtworkCatalog_requestRadiosityImageWithCompletionHandler___block_invoke_4;
    v12[3] = &unk_1E7681798;
    v9 = *(a1 + 48);
    v13 = v4;
    v14 = v9;
    v12[4] = *(a1 + 40);
    v10 = v4;
    v11 = [(MPArtworkResizeUtility *)v10 resizeImage:v3 scaledFittingSize:1 useExactFittingSizeAsDestinationSize:0 saveToDestinationURL:v12 completionHandler:v6, v8];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __63__MPArtworkCatalog_requestRadiosityImageWithCompletionHandler___block_invoke_4(id *a1, id a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1[6] + 2);

    v4();
  }

  else
  {
    v5 = [a2 CGImage];
    v6 = MEMORY[0x1E6999410];
    [a1[4] destinationScale];
    v8 = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__MPArtworkCatalog_requestRadiosityImageWithCompletionHandler___block_invoke_5;
    v9[3] = &unk_1E7675C48;
    v11 = a1[6];
    v10 = a1[5];
    [v6 radiosityImageWithImage:v5 displayScale:v8 completionHandler:v9];
  }
}

void __63__MPArtworkCatalog_requestRadiosityImageWithCompletionHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:a2];
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MPArtworkCatalog_requestRadiosityImageWithCompletionHandler___block_invoke_6;
  block[3] = &unk_1E7681568;
  v9 = *(a1 + 40);
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)requestColorAnalysisWithAlgorithm:(int64_t)algorithm completion:(id)completion
{
  v22[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v21 = @"MPArtworkCatalogEffectOptionColorAnalyzerAlgorithm";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:algorithm];
  v22[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  dataSource = [(MPArtworkCatalog *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([dataSource existingArtworkEffectResultForEffectType:1 catalog:self options:v8], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v10);
    }
  }

  else
  {
    token = [(MPArtworkCatalog *)self token];
    _artworkLoadQueue = [objc_opt_class() _artworkLoadQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__MPArtworkCatalog_requestColorAnalysisWithAlgorithm_completion___block_invoke;
    v15[3] = &unk_1E76793C0;
    v16 = token;
    v17 = dataSource;
    selfCopy = self;
    v19 = v8;
    v20 = completionCopy;
    v14 = token;
    [_artworkLoadQueue addOperationWithBlock:v15];

    v11 = 0;
  }
}

void __65__MPArtworkCatalog_requestColorAnalysisWithAlgorithm_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__MPArtworkCatalog_requestColorAnalysisWithAlgorithm_completion___block_invoke_2;
  aBlock[3] = &unk_1E7675BF8;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v2 = _Block_copy(aBlock);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__MPArtworkCatalog_requestColorAnalysisWithAlgorithm_completion___block_invoke_5;
    v9[3] = &unk_1E7675C20;
    v5 = &v10;
    v6 = *(a1 + 56);
    v10 = *(a1 + 64);
    [v3 loadArtworkEffectResultForEffectType:1 catalog:v4 options:v6 systemEffectHandler:v2 completionHandler:v9];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__MPArtworkCatalog_requestColorAnalysisWithAlgorithm_completion___block_invoke_6;
    v7[3] = &unk_1E7675C20;
    v5 = &v8;
    v8 = *(a1 + 64);
    v2[2](v2, v7);
  }
}

void __65__MPArtworkCatalog_requestColorAnalysisWithAlgorithm_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MPArtworkCatalog alloc] initWithToken:*(a1 + 32) dataSource:*(a1 + 40)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__MPArtworkCatalog_requestColorAnalysisWithAlgorithm_completion___block_invoke_3;
  v6[3] = &unk_1E7675B58;
  v7 = v3;
  v5 = v3;
  [(MPArtworkCatalog *)v4 requestImageWithCompletion:v6];
}

void __65__MPArtworkCatalog_requestColorAnalysisWithAlgorithm_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B13B0]) initWithSourceImage:{objc_msgSend(v5, "CGImage")}];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__MPArtworkCatalog_requestColorAnalysisWithAlgorithm_completion___block_invoke_4;
    v9[3] = &unk_1E7675BD0;
    v10 = *(a1 + 32);
    [v7 analyzeWithCompletionHandler:v9];
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }
  }
}

void __65__MPArtworkCatalog_requestColorAnalysisWithAlgorithm_completion___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MPArtworkColorAnalysis translateFromMSVColorAnalysis:?];
    (*(*(a1 + 32) + 16))();
  }
}

- (id)existingColorAnalysisWithAlgorithm:(int64_t)algorithm
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"MPArtworkCatalogEffectOptionColorAnalyzerAlgorithm";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:algorithm];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  dataSource = [(MPArtworkCatalog *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v7 = [dataSource existingArtworkEffectResultForEffectType:1 catalog:self options:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MPArtworkDataSourceVisualIdenticality)visualIdenticalityIdentifier
{
  v13[2] = *MEMORY[0x1E69E9840];
  dataSource = [(MPArtworkCatalog *)self dataSource];
  v4 = [dataSource visualIdenticalityIdentifierForCatalog:self];

  overlayDelegate = [(MPArtworkCatalog *)self overlayDelegate];
  v6 = overlayDelegate;
  if (overlayDelegate)
  {
    v7 = [overlayDelegate overlayVisualIdenticalityForCatalog:self];
    stringRepresentation = [v4 stringRepresentation];
    v13[0] = stringRepresentation;
    stringRepresentation2 = [v7 stringRepresentation];
    v13[1] = stringRepresentation2;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v11 = [v10 componentsJoinedByString:@"/"];
  }

  else
  {
    v11 = v4;
  }

  return v11;
}

- (BOOL)isArtworkVisuallyIdenticalToCatalog:(id)catalog
{
  catalogCopy = catalog;
  dataSource = [(MPArtworkCatalog *)self dataSource];
  dataSource2 = [catalogCopy dataSource];

  if (dataSource == dataSource2)
  {
    visualIdenticalityIdentifier = [(MPArtworkCatalog *)self visualIdenticalityIdentifier];
    visualIdenticalityIdentifier2 = [catalogCopy visualIdenticalityIdentifier];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      stringRepresentation = [visualIdenticalityIdentifier stringRepresentation];
      stringRepresentation2 = [visualIdenticalityIdentifier2 stringRepresentation];
      v7 = [stringRepresentation isEqual:stringRepresentation2];
    }

    else
    {
      v7 = [visualIdenticalityIdentifier isEqual:visualIdenticalityIdentifier2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isBestRepresentationAvailableForCatalog
{
  v3 = ([(MPArtworkCatalog *)self representationKinds]& 1) != 0 && [(MPArtworkRepresentationCollection *)self->_bestAvailableRepresentationCollection isBestRepresentationForKind:0];
  if (([(MPArtworkCatalog *)self representationKinds]& 2) == 0)
  {
    return v3;
  }

  bestAvailableRepresentationCollection = self->_bestAvailableRepresentationCollection;

  return [(MPArtworkRepresentationCollection *)bestAvailableRepresentationCollection isBestRepresentationForKind:1];
}

- (void)_callConfigurationWithRevisionID:(int64_t)d
{
  os_unfair_lock_lock(&self->_lock);
  v4 = _Block_copy(self->_configurationBlock);
  WeakRetained = objc_loadWeakRetained(&self->_destination);
  mainThreadBound = self->_mainThreadBound;
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v7 = WeakRetained == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = WeakRetained;
      v12 = v4;
      msv_dispatch_on_main_queue();

      v8 = v11;
    }

    else
    {
      if (!mainThreadBound)
      {
        (*(v4 + 2))(v4, WeakRetained, self->_bestAvailableRepresentationCollection);
        goto LABEL_11;
      }

      v10 = v4;
      v9 = WeakRetained;
      msv_dispatch_on_main_queue();

      v8 = v10;
    }
  }

LABEL_11:
}

void __53__MPArtworkCatalog__callConfigurationWithRevisionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) artworkCatalog];
  v3 = *(a1 + 40);
  if (v2 == v3)
  {
    v4 = v3[3];
    v5 = *(a1 + 56);

    if (v4 == v5)
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 152));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained artworkCatalog:*(a1 + 40) didConfigureView:*(a1 + 32) withRepresentation:*(*(a1 + 40) + 88)];
  }
}

void *__53__MPArtworkCatalog__callConfigurationWithRevisionID___block_invoke_2(void *a1)
{
  result = a1[4];
  if (result[3] == a1[7])
  {
    result = [result _isBestRepresentationAvailableForCatalog];
    if (result)
    {
      v3 = *(a1[6] + 16);

      return v3();
    }
  }

  return result;
}

- (void)_setDestination:(id)destination isMainThreadBound:(BOOL)bound forRepresentationKinds:(unint64_t)kinds configurationBlock:(id)block
{
  boundCopy = bound;
  blockCopy = block;
  [(MPArtworkCatalog *)self _setDestination:destination isMainThreadBound:boundCopy];
  [(MPArtworkCatalog *)self setRepresentationKinds:kinds];
  bestAvailableRepresentationCollection = [(MPArtworkCatalog *)self bestAvailableRepresentationCollection];
  v11 = bestAvailableRepresentationCollection;
  if (kinds)
  {
    [bestAvailableRepresentationCollection setBestRepresentationKinds:{objc_msgSend(bestAvailableRepresentationCollection, "bestRepresentationKinds") & 0xFFFFFFFFFFFFFFFELL}];
  }

  else
  {
    [bestAvailableRepresentationCollection setImageRepresentation:0];
  }

  bestAvailableRepresentationCollection2 = [(MPArtworkCatalog *)self bestAvailableRepresentationCollection];
  v13 = bestAvailableRepresentationCollection2;
  if ((kinds & 2) != 0)
  {
    [bestAvailableRepresentationCollection2 setBestRepresentationKinds:{objc_msgSend(bestAvailableRepresentationCollection2, "bestRepresentationKinds") & 0xFFFFFFFFFFFFFFFDLL}];
  }

  else
  {
    [bestAvailableRepresentationCollection2 setVideoRepresentation:0];
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_configurationBlock == blockCopy)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v14 = [blockCopy copy];
    configurationBlock = self->_configurationBlock;
    self->_configurationBlock = v14;

    os_unfair_lock_unlock(&self->_lock);
    v16 = *MEMORY[0x1E695F060];
    if (*MEMORY[0x1E695F060] == self->_fittingSize.width && (v16 = *(MEMORY[0x1E695F060] + 8), v16 == self->_fittingSize.height))
    {
      [(MPArtworkCatalog *)self _callConfigurationWithRevisionID:self->_modelRevisionID];
    }

    else
    {
      [(MPArtworkCatalog *)self _updateRepresentations];
    }
  }
}

- (void)setDestination:(id)destination forRepresentationKinds:(unint64_t)kinds configurationBlock:(id)block
{
  blockCopy = block;
  destinationCopy = destination;
  objc_opt_class();
  [(MPArtworkCatalog *)self _setDestination:destinationCopy isMainThreadBound:objc_opt_isKindOfClass() & 1 forRepresentationKinds:kinds configurationBlock:blockCopy];
}

- (void)setPreferredVideoKind:(int64_t)kind
{
  if (self->_preferredVideoFormat != kind)
  {
    if ([(MPArtworkCatalog *)self isLoadingRepresentation])
    {
      dataSource = [(MPArtworkCatalog *)self dataSource];
      [dataSource cancelLoadingRepresentationForArtworkCatalog:self];

      [(MPArtworkCatalog *)self setLoadingRepresentation:0];
    }

    self->_preferredVideoFormat = kind;
    ++self->_modelRevisionID;
    os_unfair_lock_lock(&self->_lock);
    configurationBlock = self->_configurationBlock;
    os_unfair_lock_unlock(&self->_lock);
    if (configurationBlock)
    {

      [(MPArtworkCatalog *)self _updateRepresentations];
    }
  }
}

- (void)setAllowsVideoConstrainedNetworkAccess:(BOOL)access
{
  if (self->_allowsVideoConstrainedNetworkAccess != access)
  {
    if ([(MPArtworkCatalog *)self isLoadingRepresentation])
    {
      dataSource = [(MPArtworkCatalog *)self dataSource];
      [dataSource cancelLoadingRepresentationForArtworkCatalog:self];

      [(MPArtworkCatalog *)self setLoadingRepresentation:0];
    }

    self->_allowsVideoConstrainedNetworkAccess = access;
    ++self->_modelRevisionID;
    bestAvailableRepresentationCollection = [(MPArtworkCatalog *)self bestAvailableRepresentationCollection];
    [bestAvailableRepresentationCollection resetForRepresentationKinds:2];

    os_unfair_lock_lock(&self->_lock);
    configurationBlock = self->_configurationBlock;
    os_unfair_lock_unlock(&self->_lock);
    if (configurationBlock)
    {

      [(MPArtworkCatalog *)self _updateRepresentations];
    }
  }
}

- (void)requestVideoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__MPArtworkCatalog_requestVideoWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7675B80;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(MPArtworkCatalog *)self _requestBestRepresentationOfKind:1 completionHandler:v6];
}

void __54__MPArtworkCatalog_requestVideoWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 video];
  (*(v2 + 16))(v2, v3);
}

- (void)setDestination:(id)destination configurationBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MPArtworkCatalog_setDestination_configurationBlock___block_invoke;
  v8[3] = &unk_1E7675BA8;
  v9 = blockCopy;
  v7 = blockCopy;
  [(MPArtworkCatalog *)self setDestination:destination forRepresentationKinds:1 configurationBlock:v8];
}

void __54__MPArtworkCatalog_setDestination_configurationBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 32))
  {
    v5 = a2;
    v6 = [a3 imageRepresentation];
    v7 = [v6 image];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_setDestination:(id)destination isMainThreadBound:(BOOL)bound
{
  destinationCopy = destination;
  WeakRetained = objc_loadWeakRetained(&self->_destination);

  if (WeakRetained != destinationCopy)
  {
    v8 = objc_loadWeakRetained(&self->_destination);
    objc_storeWeak(&self->_destination, destinationCopy);
    self->_mainThreadBound = bound;
    v9 = objc_loadWeakRetained(&self->_overlayDelegate);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (objc_opt_respondsToSelector())
      {
        [v9 artworkCatalog:self willConfigureView:destinationCopy];
      }

      artworkCatalog = [destinationCopy artworkCatalog];
      objc_setAssociatedObject(destinationCopy, MPArtworkCatalogAssociatedObjectKey, self, 1);
      if (artworkCatalog && artworkCatalog != self)
      {
        [(MPArtworkCatalog *)artworkCatalog _clearDestination];
        v11 = objc_loadWeakRetained(&artworkCatalog->_overlayDelegate);
        if (objc_opt_respondsToSelector())
        {
          [v11 artworkCatalog:artworkCatalog didClearFromView:destinationCopy];
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__MPArtworkCatalog__setDestination_isMainThreadBound___block_invoke;
      block[3] = &unk_1E76800A0;
      v13 = v8;
      selfCopy = self;
      v15 = v9;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      objc_setAssociatedObject(v8, MPArtworkCatalogAssociatedObjectKey, 0, 0);
    }
  }
}

void __54__MPArtworkCatalog__setDestination_isMainThreadBound___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));

  if (v2 != WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      [*(a1 + 48) artworkCatalog:*(a1 + 40) didClearFromView:*(a1 + 32)];
    }

    v4 = [*(a1 + 32) artworkCatalog];
    v5 = *(a1 + 40);

    if (v4 == v5)
    {
      v6 = *(a1 + 32);
      v7 = MPArtworkCatalogAssociatedObjectKey;

      objc_setAssociatedObject(v6, v7, 0, 0);
    }
  }
}

- (BOOL)hasImageOnDisk
{
  dataSource = [(MPArtworkCatalog *)self dataSource];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dataSource hasExistingRepresentationOnDiskForArtworkCatalog:self];
  }

  else
  {
    bestImageFromDisk = [(MPArtworkCatalog *)self bestImageFromDisk];
    v4 = bestImageFromDisk != 0;
  }

  return v4;
}

- (id)bestImageFromDisk
{
  dataSource = [(MPArtworkCatalog *)self dataSource];
  v4 = [dataSource existingRepresentationForArtworkCatalog:self];

  image = [v4 image];

  return image;
}

- (void)requestImageWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MPArtworkCatalog_requestImageWithCompletion___block_invoke;
  v6[3] = &unk_1E7675B80;
  v7 = completionCopy;
  v5 = completionCopy;
  [(MPArtworkCatalog *)self _requestBestRepresentationOfKind:0 completionHandler:v6];
}

void __47__MPArtworkCatalog_requestImageWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 image];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)requestImageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__MPArtworkCatalog_requestImageWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7675B58;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(MPArtworkCatalog *)self requestImageWithCompletion:v6];
}

- (void)setFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_fittingSize.width != size.width || self->_fittingSize.height != size.height)
  {
    token = [(MPArtworkCatalog *)self token];
    if (objc_opt_respondsToSelector())
    {
      [token setFittingSize:{width, height}];
    }

    if ([(MPArtworkCatalog *)self isLoadingRepresentation])
    {
      dataSource = [(MPArtworkCatalog *)self dataSource];
      [dataSource cancelLoadingRepresentationForArtworkCatalog:self];

      [(MPArtworkCatalog *)self setLoadingRepresentation:0];
    }

    self->_fittingSize.width = width;
    self->_fittingSize.height = height;
    ++self->_modelRevisionID;
    bestAvailableRepresentationCollection = [(MPArtworkCatalog *)self bestAvailableRepresentationCollection];
    [bestAvailableRepresentationCollection resetForRepresentationKinds:3];

    os_unfair_lock_lock(&self->_lock);
    configurationBlock = self->_configurationBlock;
    os_unfair_lock_unlock(&self->_lock);
    if (configurationBlock)
    {
      [(MPArtworkCatalog *)self _updateRepresentations];
    }
  }
}

- (CGSize)scaledFittingSize
{
  width = self->_fittingSize.width;
  height = self->_fittingSize.height;
  destinationScale = self->_destinationScale;
  if (destinationScale > 0.00000011920929 && (width != *&MPArtworkCatalogOriginalSize || height != *(&MPArtworkCatalogOriginalSize + 1)))
  {
    CGAffineTransformMakeScale(&v13, destinationScale, self->_destinationScale);
    v7 = height * v13.c;
    height = height * v13.d + v13.b * width;
    width = v7 + v13.a * width;
  }

  WeakRetained = objc_loadWeakRetained(&self->_overlayDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained overlayScaledFittingSizeForCatalog:self scaledFittingSize:{width, height}];
    width = v9;
    height = v10;
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setDestinationScale:(double)scale
{
  scaleCopy = scale;
  if (scale == 0.0)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    scaleCopy = v6;
  }

  if (self->_destinationScale != scaleCopy)
  {
    token = [(MPArtworkCatalog *)self token];
    if (objc_opt_respondsToSelector())
    {
      [token setDestinationScale:scaleCopy];
    }

    if ([(MPArtworkCatalog *)self isLoadingRepresentation])
    {
      dataSource = [(MPArtworkCatalog *)self dataSource];
      [dataSource cancelLoadingRepresentationForArtworkCatalog:self];

      [(MPArtworkCatalog *)self setLoadingRepresentation:0];
    }

    self->_destinationScale = scaleCopy;
    ++self->_modelRevisionID;
    bestAvailableRepresentationCollection = [(MPArtworkCatalog *)self bestAvailableRepresentationCollection];
    [bestAvailableRepresentationCollection resetForRepresentationKinds:3];

    os_unfair_lock_lock(&self->_lock);
    configurationBlock = self->_configurationBlock;
    os_unfair_lock_unlock(&self->_lock);
    if (configurationBlock)
    {
      [(MPArtworkCatalog *)self _updateRepresentations];
    }
  }
}

- (id)description
{
  destination = [(MPArtworkCatalog *)self destination];
  if (-[MPArtworkCatalog isMainThreadBound](self, "isMainThreadBound") && ([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p [redacted description due to non-main thread]>", objc_opt_class(), destination];
  }

  else
  {
    v4 = [destination description];
  }

  v5 = v4;
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  token = [(MPArtworkCatalog *)self token];
  [(MPArtworkCatalog *)self fittingSize];
  v9 = NSStringFromCGSize(v14);
  [(MPArtworkCatalog *)self destinationScale];
  v11 = [v6 stringWithFormat:@"<%@: %p token=%@ fittingSize=%@ destinationScale=%lf destination=%@>", v7, self, token, v9, v10, v5];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MPArtworkCatalog *)self isArtworkVisuallyIdenticalToCatalog:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [self->_token hash];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = [WeakRetained hash];

  return v5 ^ v3;
}

- (void)dealloc
{
  if ([(MPArtworkCatalog *)self isLoadingRepresentation])
  {
    dataSource = [(MPArtworkCatalog *)self dataSource];
    [dataSource cancelLoadingRepresentationForArtworkCatalog:self];
  }

  v4.receiver = self;
  v4.super_class = MPArtworkCatalog;
  [(MPArtworkCatalog *)&v4 dealloc];
}

- (MPArtworkCatalog)initWithToken:(id)token dataSource:(id)source
{
  tokenCopy = token;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = MPArtworkCatalog;
  v9 = [(MPArtworkCatalog *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_token, token);
    objc_storeWeak(&v10->_dataSource, sourceCopy);
    v10->_destinationScale = 1.0;
    v10->_fittingSize = MPArtworkCatalogOriginalSize;
    v10->_representationKinds = 1;
    v11 = [MPArtworkRepresentationCollection collectionWithImageRepresentation:0 videoRepresentation:0 bestRepresentationKinds:2];
    bestAvailableRepresentationCollection = v10->_bestAvailableRepresentationCollection;
    v10->_bestAvailableRepresentationCollection = v11;
  }

  return v10;
}

+ (void)_setCachePurgesWhenEnteringBackground:(BOOL)background forCacheIdentifier:(id)identifier requestingContext:(id)context representationKind:(int64_t)kind
{
  backgroundCopy = background;
  v7 = [self _artworkCacheForIdentifier:identifier requestingContext:context representationKind:kind];
  [v7 setEvictsObjectsWhenApplicationEntersBackground:backgroundCopy];
}

+ (void)_setCacheLimit:(int64_t)limit forCacheIdentifier:(id)identifier requestingContext:(id)context representationKind:(int64_t)kind
{
  v7 = [self _artworkCacheForIdentifier:identifier requestingContext:context representationKind:kind];
  [v7 setCountLimit:limit];
}

+ (id)_artworkLoadQueue
{
  if (_artworkLoadQueue_onceToken != -1)
  {
    dispatch_once(&_artworkLoadQueue_onceToken, &__block_literal_global_82);
  }

  v3 = _artworkLoadQueue___artworkLoadQueue;

  return v3;
}

uint64_t __37__MPArtworkCatalog__artworkLoadQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = _artworkLoadQueue___artworkLoadQueue;
  _artworkLoadQueue___artworkLoadQueue = v0;

  v2 = _artworkLoadQueue___artworkLoadQueue;

  return [v2 setMaxConcurrentOperationCount:20];
}

+ (id)_artworkCacheForIdentifier:(id)identifier requestingContext:(id)context representationKind:(int64_t)kind
{
  identifierCopy = identifier;
  contextCopy = context;
  v9 = contextCopy;
  if (!contextCopy)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v10 = contextCopy;
  objc_sync_enter(v10);
  if (kind == 1)
  {
    dictionary = objc_getAssociatedObject(v10, MPArtworkVideoCachesAssociatedObjectKey);
    if (dictionary)
    {
      goto LABEL_10;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    objc_setAssociatedObject(v10, MPArtworkVideoCachesAssociatedObjectKey, dictionary, 1);
  }

  else
  {
    if (kind)
    {
      dictionary = 0;
      goto LABEL_13;
    }

    dictionary = objc_getAssociatedObject(v10, MPArtworkImageCachesAssociatedObjectKey);
    if (dictionary)
    {
      goto LABEL_10;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    objc_setAssociatedObject(v10, MPArtworkImageCachesAssociatedObjectKey, dictionary, 1);
  }

  if (dictionary)
  {
LABEL_10:
    v12 = [dictionary objectForKeyedSubscript:identifierCopy];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      [dictionary setObject:v12 forKeyedSubscript:identifierCopy];
    }

    goto LABEL_14;
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  objc_sync_exit(v10);
LABEL_15:

  return v12;
}

+ (id)artworkCatalogWithDataSourceShortDescription:(id)description dataSourceIdentifier:(id)identifier tokenParameters:(id)parameters
{
  v35 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  identifierCopy = identifier;
  parametersCopy = parameters;
  _registeredIdentifiableDataSourceAndTokenClasses = [self _registeredIdentifiableDataSourceAndTokenClasses];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = [_registeredIdentifiableDataSourceAndTokenClasses countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v12)
  {
    v15 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v13 = v12;
  selfCopy = self;
  v28 = parametersCopy;
  v29 = identifierCopy;
  v14 = 0;
  v15 = 0;
  v16 = *v31;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v31 != v16)
      {
        objc_enumerationMutation(_registeredIdentifiableDataSourceAndTokenClasses);
      }

      v18 = *(*(&v30 + 1) + 8 * i);
      artworkDataSourceShortDescription = [v18 artworkDataSourceShortDescription];
      v20 = artworkDataSourceShortDescription;
      if (artworkDataSourceShortDescription == descriptionCopy)
      {

LABEL_10:
        v14 = [_registeredIdentifiableDataSourceAndTokenClasses objectForKey:v18];
        v15 = v18;
        continue;
      }

      v21 = [artworkDataSourceShortDescription isEqual:descriptionCopy];

      if (v21)
      {
        goto LABEL_10;
      }
    }

    v13 = [_registeredIdentifiableDataSourceAndTokenClasses countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v13);
  if (!v15)
  {
    parametersCopy = v28;
    identifierCopy = v29;
    self = selfCopy;
    goto LABEL_18;
  }

  parametersCopy = v28;
  identifierCopy = v29;
  self = selfCopy;
  if (!v14)
  {
LABEL_18:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Identifiable data source with short description %@ is not properly registered.", descriptionCopy}];
  }

  v22 = [v15 artworkDataSourceWithIdentifier:identifierCopy];
  v23 = [v14 artworkTokenWithParameters:parametersCopy];
  v24 = v23;
  v25 = 0;
  if (v22 && v23)
  {
    v25 = [[self alloc] initWithToken:v23 dataSource:v22];
  }

  return v25;
}

+ (id)_registeredIdentifiableDataSourceAndTokenClasses
{
  if (_registeredIdentifiableDataSourceAndTokenClasses_sRegisteredIdentifiableDataSourceAndTokenClassesOnceToken != -1)
  {
    dispatch_once(&_registeredIdentifiableDataSourceAndTokenClasses_sRegisteredIdentifiableDataSourceAndTokenClassesOnceToken, &__block_literal_global_2097);
  }

  v3 = _registeredIdentifiableDataSourceAndTokenClasses_sRegisteredIdentifiableDataSourceAndTokenClasses;

  return v3;
}

uint64_t __68__MPArtworkCatalog__registeredIdentifiableDataSourceAndTokenClasses__block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v1 = _registeredIdentifiableDataSourceAndTokenClasses_sRegisteredIdentifiableDataSourceAndTokenClasses;
  _registeredIdentifiableDataSourceAndTokenClasses_sRegisteredIdentifiableDataSourceAndTokenClasses = v0;

  v2 = _registeredIdentifiableDataSourceAndTokenClasses_sRegisteredIdentifiableDataSourceAndTokenClasses;
  v3 = objc_opt_class();
  [v2 setObject:v3 forKey:objc_opt_class()];
  v4 = _registeredIdentifiableDataSourceAndTokenClasses_sRegisteredIdentifiableDataSourceAndTokenClasses;
  v5 = objc_opt_class();
  v6 = objc_opt_class();

  return [v4 setObject:v5 forKey:v6];
}

+ (id)placeholderCatalogWithSymbolName:(id)name
{
  nameCopy = name;
  v4 = [MPArtworkCatalog alloc];
  v5 = +[_MPArtworkCatalogPlaceholderDataSource sharedDataSource];
  v6 = [(MPArtworkCatalog *)v4 initWithToken:nameCopy dataSource:v5];

  return v6;
}

+ (id)staticArtworkCatalogWithRepresentationCollection:(id)collection
{
  if (collection)
  {
    collectionCopy = collection;
    v4 = [MPArtworkCatalog alloc];
    v5 = +[_MPArtworkCatalogStaticDataSource sharedDataSource];
    v6 = [(MPArtworkCatalog *)v4 initWithToken:collectionCopy dataSource:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)staticArtworkCatalogWithImage:(id)image
{
  imageCopy = image;
  v5 = objc_alloc_init(_MPStaticArtworkVisualIdenticalityIdentifier);
  imageCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lx", imageCopy];
  [(_MPStaticArtworkVisualIdenticalityIdentifier *)v5 setImageArtworkIdentifier:imageCopy];

  v7 = [MPArtworkRepresentation representationForVisualIdentity:v5 withSize:imageCopy image:MPArtworkCatalogOriginalSize];

  v8 = [MPArtworkRepresentationCollection collectionWithImageRepresentation:v7 videoRepresentation:0];
  v9 = [self staticArtworkCatalogWithRepresentationCollection:v8];

  return v9;
}

@end