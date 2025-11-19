@interface PHAssetLibraryScopeProperties
+ (id)propertiesToFetch;
- (BOOL)assetIsInOnboardingPreviewState;
- (BOOL)assetIsInPhotosSuggestedPreviewState;
- (BOOL)assetIsPublishedToLibraryScope;
- (PHAssetLibraryScopeProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHAssetLibraryScopeProperties

- (BOOL)assetIsPublishedToLibraryScope
{
  WeakRetained = objc_loadWeakRetained(&self->super._asset);
  if ([WeakRetained participatesInLibraryScope])
  {
    AddToSharedZoneStateFromShareStateValue = PLLibraryScopeAssetGetAddToSharedZoneStateFromShareStateValue();
  }

  else
  {
    AddToSharedZoneStateFromShareStateValue = 0;
  }

  return AddToSharedZoneStateFromShareStateValue;
}

- (BOOL)assetIsInPhotosSuggestedPreviewState
{
  WeakRetained = objc_loadWeakRetained(&self->super._asset);
  v4 = ([WeakRetained participatesInLibraryScope] & 1) == 0 && !-[PHAssetLibraryScopeProperties assetManuallyRejectedByUser](self, "assetManuallyRejectedByUser") && (-[PHAssetLibraryScopeProperties suggestedByClientType](self, "suggestedByClientType") == 1 || -[PHAssetLibraryScopeProperties suggestedByClientType](self, "suggestedByClientType") == 4);

  return v4;
}

- (BOOL)assetIsInOnboardingPreviewState
{
  WeakRetained = objc_loadWeakRetained(&self->super._asset);
  v4 = [WeakRetained participatesInLibraryScope] && !-[PHAssetLibraryScopeProperties assetManuallyRejectedByUser](self, "assetManuallyRejectedByUser") && (PLLibraryScopeAssetGetAddToSharedZoneStateFromShareStateValue() & 1) == 0 && -[PHAssetLibraryScopeProperties suggestedByClientType](self, "suggestedByClientType") == 0;

  return v4;
}

- (PHAssetLibraryScopeProperties)initWithFetchDictionary:(id)a3 asset:(id)a4 prefetched:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PHAssetLibraryScopeProperties;
  v9 = [(PHAssetLibraryScopeProperties *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->super._asset, v8);
    v11 = [v7 objectForKeyedSubscript:@"libraryScopeShareState"];
    v10->_pl_shareState = [v11 integerValue];
  }

  return v10;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_69;

  return v2;
}

void __50__PHAssetLibraryScopeProperties_propertiesToFetch__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"libraryScopeShareState";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_69;
  propertiesToFetch_pl_once_object_69 = v1;
}

@end