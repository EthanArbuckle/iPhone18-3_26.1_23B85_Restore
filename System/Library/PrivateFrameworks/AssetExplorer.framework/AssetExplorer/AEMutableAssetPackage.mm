@interface AEMutableAssetPackage
- (AEMutableAssetPackage)initWithAssetIdentifier:(id)identifier;
- (id)_copyMetadataFromDisplayAsset:(id)asset;
- (void)addSidecarEntriesFromDictionary:(id)dictionary;
- (void)beginSupressingLivePhoto;
- (void)endSuppressingLivePhoto;
- (void)expressURLForType:(id)type;
- (void)removeSidecarObjectForKey:(id)key;
- (void)removeURLForType:(id)type;
- (void)replaceURLForType:(id)type withURL:(id)l;
- (void)setMediaOrigin:(int64_t)origin;
- (void)setSidecarObject:(id)object forKey:(id)key;
- (void)storeMetadataFromPHAsset:(id)asset imageURL:(id)l adjustmentURL:(id)rL;
- (void)storeMetadataFromReviewAsset:(id)asset;
- (void)storeURL:(id)l forType:(id)type;
- (void)suppressURLForType:(id)type;
@end

@implementation AEMutableAssetPackage

- (void)removeSidecarObjectForKey:(id)key
{
  v12 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (keyCopy)
  {
    _packageContentQueue = [(AEAssetPackage *)self _packageContentQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__AEMutableAssetPackage_removeSidecarObjectForKey___block_invoke;
    v8[3] = &unk_278CC76A8;
    v8[4] = self;
    v9 = keyCopy;
    dispatch_barrier_sync(_packageContentQueue, v8);
  }

  else
  {
    v6 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = 0;
      _os_log_impl(&dword_2411DE000, v6, OS_LOG_TYPE_ERROR, "Attempting to remove a sidecar object for an invalid key %{public}@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __51__AEMutableAssetPackage_removeSidecarObjectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueueSidecar];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)addSidecarEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  _packageContentQueue = [(AEAssetPackage *)self _packageContentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__AEMutableAssetPackage_addSidecarEntriesFromDictionary___block_invoke;
  v7[3] = &unk_278CC76A8;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  dispatch_barrier_sync(_packageContentQueue, v7);
}

void __57__AEMutableAssetPackage_addSidecarEntriesFromDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueueSidecar];
  [v2 addEntriesFromDictionary:*(a1 + 40)];
}

- (void)setSidecarObject:(id)object forKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  if (!keyCopy)
  {
    v9 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = objectCopy;
      v17 = 2114;
      v18 = 0;
      v10 = "Attempting to store a sidecar object %{public}@ for an invalid key %{public}@";
LABEL_8:
      _os_log_impl(&dword_2411DE000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!objectCopy)
  {
    v9 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = 0;
      v17 = 2114;
      v18 = keyCopy;
      v10 = "Attempting to store an invalid sidecar object %{public}@ for key %{public}@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  _packageContentQueue = [(AEAssetPackage *)self _packageContentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__AEMutableAssetPackage_setSidecarObject_forKey___block_invoke;
  block[3] = &unk_278CC7658;
  block[4] = self;
  v13 = objectCopy;
  v14 = keyCopy;
  dispatch_barrier_sync(_packageContentQueue, block);

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
}

void __49__AEMutableAssetPackage_setSidecarObject_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueueSidecar];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)replaceURLForType:(id)type withURL:(id)l
{
  typeCopy = type;
  lCopy = l;
  _packageContentQueue = [(AEAssetPackage *)self _packageContentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AEMutableAssetPackage_replaceURLForType_withURL___block_invoke;
  block[3] = &unk_278CC7658;
  block[4] = self;
  v12 = lCopy;
  v13 = typeCopy;
  v9 = typeCopy;
  v10 = lCopy;
  dispatch_barrier_sync(_packageContentQueue, block);
}

void __51__AEMutableAssetPackage_replaceURLForType_withURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueue_finalURLs];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)removeURLForType:(id)type
{
  typeCopy = type;
  _packageContentQueue = [(AEAssetPackage *)self _packageContentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__AEMutableAssetPackage_removeURLForType___block_invoke;
  v7[3] = &unk_278CC76A8;
  v7[4] = self;
  v8 = typeCopy;
  v6 = typeCopy;
  dispatch_barrier_sync(_packageContentQueue, v7);
}

void __42__AEMutableAssetPackage_removeURLForType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueue_finalURLs];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) _contentQueue_suppressedTypes];
  [v3 removeObject:*(a1 + 40)];
}

- (void)storeURL:(id)l forType:(id)type
{
  lCopy = l;
  typeCopy = type;
  _packageContentQueue = [(AEAssetPackage *)self _packageContentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__AEMutableAssetPackage_storeURL_forType___block_invoke;
  block[3] = &unk_278CC7658;
  block[4] = self;
  v12 = lCopy;
  v13 = typeCopy;
  v9 = typeCopy;
  v10 = lCopy;
  dispatch_barrier_sync(_packageContentQueue, block);
}

void __42__AEMutableAssetPackage_storeURL_forType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueue_finalURLs];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  v3 = [*(a1 + 32) _contentQueue_suppressedTypes];
  [v3 removeObject:*(a1 + 48)];
}

- (AEMutableAssetPackage)initWithAssetIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = AEMutableAssetPackage;
  return [(AEAssetPackage *)&v4 initWithAssetIdentifier:identifier durableURLs:0 sidecar:0];
}

- (void)expressURLForType:(id)type
{
  typeCopy = type;
  _packageContentQueue = [(AEAssetPackage *)self _packageContentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__AEMutableAssetPackage_AEURLSuppression__expressURLForType___block_invoke;
  v7[3] = &unk_278CC76A8;
  v7[4] = self;
  v8 = typeCopy;
  v6 = typeCopy;
  dispatch_barrier_sync(_packageContentQueue, v7);
}

void __61__AEMutableAssetPackage_AEURLSuppression__expressURLForType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueue_suppressedTypes];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) _contentQueue_suppressedTypes];
    [v4 removeObject:*(a1 + 40)];
  }
}

- (void)suppressURLForType:(id)type
{
  typeCopy = type;
  _packageContentQueue = [(AEAssetPackage *)self _packageContentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__AEMutableAssetPackage_AEURLSuppression__suppressURLForType___block_invoke;
  v7[3] = &unk_278CC76A8;
  v7[4] = self;
  v8 = typeCopy;
  v6 = typeCopy;
  dispatch_barrier_sync(_packageContentQueue, v7);
}

void __62__AEMutableAssetPackage_AEURLSuppression__suppressURLForType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueue_finalURLs];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v3 = [*(a1 + 32) _contentQueue_suppressedTypes];
    [v3 addObject:*(a1 + 40)];
  }
}

- (void)storeMetadataFromPHAsset:(id)asset imageURL:(id)l adjustmentURL:(id)rL
{
  assetCopy = asset;
  lCopy = l;
  rLCopy = rL;
  v10 = [(AEMutableAssetPackage *)self _copyMetadataFromDisplayAsset:assetCopy];
  [assetCopy isMediaSubtype:1024];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(assetCopy, "mediaSubtypes")}];
  [v10 setValue:v11 forKey:@"AEAssetPackageDisplayMediaSubtypes"];

  if (lCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [lCopy path];
    v14 = [defaultManager fileExistsAtPath:path];

    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:lCopy options:1 error:0];
      if ([(__CFData *)v15 length])
      {
        v16 = CGImageSourceCreateWithData(v15, 0);
        if (v16)
        {
          v17 = v16;
          v18 = CGImageSourceCopyProperties(v16, 0);
          [v10 setValue:v18 forKey:@"AEAssetPackageDisplayImageMetadata"];
          CFRelease(v17);
        }
      }
    }
  }

  isHighFramerateVideo = [assetCopy isHighFramerateVideo];
  if (rLCopy && isHighFramerateVideo)
  {
    v20 = [objc_alloc(MEMORY[0x277D3B518]) initWithURL:rLCopy];
    if ([v20 isRecognizedFormat])
    {
      propertyListDictionary = [v20 propertyListDictionary];
      [v10 setValue:propertyListDictionary forKey:@"com.apple.video.slomo"];
    }
  }

  if ([assetCopy playbackStyle] == 5 && objc_msgSend(assetCopy, "mediaType") == 1)
  {
    [v10 setValue:&unk_2852F95A8 forKey:@"AEAssetPackageDisplayMediaType"];
    v22 = [v10 objectForKey:@"AEAssetPackageDisplayMediaSubtypes"];

    if (v22)
    {
      v23 = [v10 objectForKey:@"AEAssetPackageDisplayMediaSubtypes"];
      unsignedIntegerValue = [v23 unsignedIntegerValue];

      v25 = MEMORY[0x277CCABB0];
    }

    else
    {
      v25 = MEMORY[0x277CCABB0];
      unsignedIntegerValue = [assetCopy mediaSubtypes];
    }

    0xFFFFFFFFFFFFFFF7 = [v25 numberWithUnsignedInteger:unsignedIntegerValue & 0xFFFFFFFFFFFFFFF7];
    [v10 setValue:0xFFFFFFFFFFFFFFF7 forKey:@"AEAssetPackageDisplayMediaSubtypes"];
  }

  [(AEMutableAssetPackage *)self addSidecarEntriesFromDictionary:v10];
}

- (void)storeMetadataFromReviewAsset:(id)asset
{
  assetCopy = asset;
  v4 = [(AEMutableAssetPackage *)self _copyMetadataFromDisplayAsset:assetCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(assetCopy, "mediaSubtypes")}];
  [v4 setValue:v5 forKey:@"AEAssetPackageDisplayMediaSubtypes"];

  providedImageMetadata = [assetCopy providedImageMetadata];
  [v4 setValue:providedImageMetadata forKey:@"AEAssetPackageDisplayImageMetadata"];

  assetAdjustments = [assetCopy assetAdjustments];
  propertyListDictionary = [assetAdjustments propertyListDictionary];
  if (propertyListDictionary)
  {
    if (([assetCopy mediaSubtypes] & 0x20000) != 0)
    {
      v9 = @"com.apple.video.slomo";
    }

    else
    {
      v9 = @"com.apple.assetexplorer.editedadjustments";
    }

    [v4 setValue:propertyListDictionary forKey:v9];
  }

  [(AEMutableAssetPackage *)self addSidecarEntriesFromDictionary:v4];
}

- (id)_copyMetadataFromDisplayAsset:(id)asset
{
  assetCopy = asset;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(assetCopy, "mediaType")}];
  [v4 setValue:v5 forKey:@"AEAssetPackageDisplayMediaType"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(assetCopy, "pixelWidth")}];
  [v4 setValue:v6 forKey:@"AEAssetPackageDisplayPixelWidth"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(assetCopy, "pixelHeight")}];
  [v4 setValue:v7 forKey:@"AEAssetPackageDisplayPixelHeight"];

  v8 = MEMORY[0x277CCABB0];
  [assetCopy duration];
  v9 = [v8 numberWithDouble:?];
  [v4 setValue:v9 forKey:@"AEAssetPackageDisplayDuration"];

  creationDate = [assetCopy creationDate];
  [v4 setValue:creationDate forKey:@"AEAssetPackageDisplayCreationDate"];

  modificationDate = [assetCopy modificationDate];
  [v4 setValue:modificationDate forKey:@"AEAssetPackageDisplayModificationDate"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(assetCopy, "isPhotoIrisPlaceholder")}];
  [v4 setValue:v12 forKey:@"AEAssetPackageDisplayIsLivePhotoPlaceholder"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(assetCopy, "hasPhotoColorAdjustments")}];
  [v4 setValue:v13 forKey:@"AEAssetPackageDisplayHasPhotoColorAdjustments"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(assetCopy, "playbackStyle")}];
  [v4 setValue:v14 forKey:@"AEAssetPackageDisplayPlaybackStyle"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(assetCopy, "playbackVariation")}];
  [v4 setValue:v15 forKey:@"AEAssetPackageDisplayPlaybackVariation"];

  memset(&v24, 0, sizeof(v24));
  if (assetCopy)
  {
    [assetCopy photoIrisStillDisplayTime];
    v16 = MEMORY[0x277CBECE8];
    if (v24.flags)
    {
      v17 = *MEMORY[0x277CBECE8];
      time = v24;
      v18 = CMTimeCopyAsDictionary(&time, v17);
      [v4 setValue:v18 forKey:@"AEAssetPackageDisplayLivePhotoStillDisplayTime"];
    }

    memset(&time, 0, sizeof(time));
    [assetCopy photoIrisVideoDuration];
    if (time.flags)
    {
      v19 = *v16;
      v22 = time;
      v20 = CMTimeCopyAsDictionary(&v22, v19);
      [v4 setValue:v20 forKey:@"AEAssetPackageDisplayLivePhotoVideoDuration"];
    }
  }

  return v4;
}

- (void)endSuppressingLivePhoto
{
  identifier = [*MEMORY[0x277CE1E00] identifier];
  [(AEMutableAssetPackage *)self expressURLForType:identifier];
}

- (void)beginSupressingLivePhoto
{
  v3 = *MEMORY[0x277CE1E00];
  identifier = [*MEMORY[0x277CE1E00] identifier];
  v6 = [(AEAssetPackage *)self currentURLForType:identifier];

  if (v6)
  {
    identifier2 = [v3 identifier];
    [(AEMutableAssetPackage *)self suppressURLForType:identifier2];
  }
}

- (void)setMediaOrigin:(int64_t)origin
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:origin];
  [(AEMutableAssetPackage *)self setSidecarObject:v4 forKey:@"AEAssetPackageMediaOrigin"];
}

@end