@interface AEMutableAssetPackage
- (AEMutableAssetPackage)initWithAssetIdentifier:(id)a3;
- (id)_copyMetadataFromDisplayAsset:(id)a3;
- (void)addSidecarEntriesFromDictionary:(id)a3;
- (void)beginSupressingLivePhoto;
- (void)endSuppressingLivePhoto;
- (void)expressURLForType:(id)a3;
- (void)removeSidecarObjectForKey:(id)a3;
- (void)removeURLForType:(id)a3;
- (void)replaceURLForType:(id)a3 withURL:(id)a4;
- (void)setMediaOrigin:(int64_t)a3;
- (void)setSidecarObject:(id)a3 forKey:(id)a4;
- (void)storeMetadataFromPHAsset:(id)a3 imageURL:(id)a4 adjustmentURL:(id)a5;
- (void)storeMetadataFromReviewAsset:(id)a3;
- (void)storeURL:(id)a3 forType:(id)a4;
- (void)suppressURLForType:(id)a3;
@end

@implementation AEMutableAssetPackage

- (void)removeSidecarObjectForKey:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(AEAssetPackage *)self _packageContentQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__AEMutableAssetPackage_removeSidecarObjectForKey___block_invoke;
    v8[3] = &unk_278CC76A8;
    v8[4] = self;
    v9 = v4;
    dispatch_barrier_sync(v5, v8);
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

- (void)addSidecarEntriesFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [(AEAssetPackage *)self _packageContentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__AEMutableAssetPackage_addSidecarEntriesFromDictionary___block_invoke;
  v7[3] = &unk_278CC76A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

void __57__AEMutableAssetPackage_addSidecarEntriesFromDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueueSidecar];
  [v2 addEntriesFromDictionary:*(a1 + 40)];
}

- (void)setSidecarObject:(id)a3 forKey:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v9 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = v6;
      v17 = 2114;
      v18 = 0;
      v10 = "Attempting to store a sidecar object %{public}@ for an invalid key %{public}@";
LABEL_8:
      _os_log_impl(&dword_2411DE000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!v6)
  {
    v9 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = 0;
      v17 = 2114;
      v18 = v7;
      v10 = "Attempting to store an invalid sidecar object %{public}@ for key %{public}@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v8 = [(AEAssetPackage *)self _packageContentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__AEMutableAssetPackage_setSidecarObject_forKey___block_invoke;
  block[3] = &unk_278CC7658;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  dispatch_barrier_sync(v8, block);

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
}

void __49__AEMutableAssetPackage_setSidecarObject_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueueSidecar];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)replaceURLForType:(id)a3 withURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AEAssetPackage *)self _packageContentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AEMutableAssetPackage_replaceURLForType_withURL___block_invoke;
  block[3] = &unk_278CC7658;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_barrier_sync(v8, block);
}

void __51__AEMutableAssetPackage_replaceURLForType_withURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueue_finalURLs];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (void)removeURLForType:(id)a3
{
  v4 = a3;
  v5 = [(AEAssetPackage *)self _packageContentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__AEMutableAssetPackage_removeURLForType___block_invoke;
  v7[3] = &unk_278CC76A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

void __42__AEMutableAssetPackage_removeURLForType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueue_finalURLs];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) _contentQueue_suppressedTypes];
  [v3 removeObject:*(a1 + 40)];
}

- (void)storeURL:(id)a3 forType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AEAssetPackage *)self _packageContentQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__AEMutableAssetPackage_storeURL_forType___block_invoke;
  block[3] = &unk_278CC7658;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_sync(v8, block);
}

void __42__AEMutableAssetPackage_storeURL_forType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contentQueue_finalURLs];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  v3 = [*(a1 + 32) _contentQueue_suppressedTypes];
  [v3 removeObject:*(a1 + 48)];
}

- (AEMutableAssetPackage)initWithAssetIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = AEMutableAssetPackage;
  return [(AEAssetPackage *)&v4 initWithAssetIdentifier:a3 durableURLs:0 sidecar:0];
}

- (void)expressURLForType:(id)a3
{
  v4 = a3;
  v5 = [(AEAssetPackage *)self _packageContentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__AEMutableAssetPackage_AEURLSuppression__expressURLForType___block_invoke;
  v7[3] = &unk_278CC76A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
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

- (void)suppressURLForType:(id)a3
{
  v4 = a3;
  v5 = [(AEAssetPackage *)self _packageContentQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__AEMutableAssetPackage_AEURLSuppression__suppressURLForType___block_invoke;
  v7[3] = &unk_278CC76A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
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

- (void)storeMetadataFromPHAsset:(id)a3 imageURL:(id)a4 adjustmentURL:(id)a5
{
  v27 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(AEMutableAssetPackage *)self _copyMetadataFromDisplayAsset:v27];
  [v27 isMediaSubtype:1024];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v27, "mediaSubtypes")}];
  [v10 setValue:v11 forKey:@"AEAssetPackageDisplayMediaSubtypes"];

  if (v8)
  {
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v8 path];
    v14 = [v12 fileExistsAtPath:v13];

    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v8 options:1 error:0];
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

  v19 = [v27 isHighFramerateVideo];
  if (v9 && v19)
  {
    v20 = [objc_alloc(MEMORY[0x277D3B518]) initWithURL:v9];
    if ([v20 isRecognizedFormat])
    {
      v21 = [v20 propertyListDictionary];
      [v10 setValue:v21 forKey:@"com.apple.video.slomo"];
    }
  }

  if ([v27 playbackStyle] == 5 && objc_msgSend(v27, "mediaType") == 1)
  {
    [v10 setValue:&unk_2852F95A8 forKey:@"AEAssetPackageDisplayMediaType"];
    v22 = [v10 objectForKey:@"AEAssetPackageDisplayMediaSubtypes"];

    if (v22)
    {
      v23 = [v10 objectForKey:@"AEAssetPackageDisplayMediaSubtypes"];
      v24 = [v23 unsignedIntegerValue];

      v25 = MEMORY[0x277CCABB0];
    }

    else
    {
      v25 = MEMORY[0x277CCABB0];
      v24 = [v27 mediaSubtypes];
    }

    v26 = [v25 numberWithUnsignedInteger:v24 & 0xFFFFFFFFFFFFFFF7];
    [v10 setValue:v26 forKey:@"AEAssetPackageDisplayMediaSubtypes"];
  }

  [(AEMutableAssetPackage *)self addSidecarEntriesFromDictionary:v10];
}

- (void)storeMetadataFromReviewAsset:(id)a3
{
  v10 = a3;
  v4 = [(AEMutableAssetPackage *)self _copyMetadataFromDisplayAsset:v10];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "mediaSubtypes")}];
  [v4 setValue:v5 forKey:@"AEAssetPackageDisplayMediaSubtypes"];

  v6 = [v10 providedImageMetadata];
  [v4 setValue:v6 forKey:@"AEAssetPackageDisplayImageMetadata"];

  v7 = [v10 assetAdjustments];
  v8 = [v7 propertyListDictionary];
  if (v8)
  {
    if (([v10 mediaSubtypes] & 0x20000) != 0)
    {
      v9 = @"com.apple.video.slomo";
    }

    else
    {
      v9 = @"com.apple.assetexplorer.editedadjustments";
    }

    [v4 setValue:v8 forKey:v9];
  }

  [(AEMutableAssetPackage *)self addSidecarEntriesFromDictionary:v4];
}

- (id)_copyMetadataFromDisplayAsset:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "mediaType")}];
  [v4 setValue:v5 forKey:@"AEAssetPackageDisplayMediaType"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "pixelWidth")}];
  [v4 setValue:v6 forKey:@"AEAssetPackageDisplayPixelWidth"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "pixelHeight")}];
  [v4 setValue:v7 forKey:@"AEAssetPackageDisplayPixelHeight"];

  v8 = MEMORY[0x277CCABB0];
  [v3 duration];
  v9 = [v8 numberWithDouble:?];
  [v4 setValue:v9 forKey:@"AEAssetPackageDisplayDuration"];

  v10 = [v3 creationDate];
  [v4 setValue:v10 forKey:@"AEAssetPackageDisplayCreationDate"];

  v11 = [v3 modificationDate];
  [v4 setValue:v11 forKey:@"AEAssetPackageDisplayModificationDate"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isPhotoIrisPlaceholder")}];
  [v4 setValue:v12 forKey:@"AEAssetPackageDisplayIsLivePhotoPlaceholder"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "hasPhotoColorAdjustments")}];
  [v4 setValue:v13 forKey:@"AEAssetPackageDisplayHasPhotoColorAdjustments"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "playbackStyle")}];
  [v4 setValue:v14 forKey:@"AEAssetPackageDisplayPlaybackStyle"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v3, "playbackVariation")}];
  [v4 setValue:v15 forKey:@"AEAssetPackageDisplayPlaybackVariation"];

  memset(&v24, 0, sizeof(v24));
  if (v3)
  {
    [v3 photoIrisStillDisplayTime];
    v16 = MEMORY[0x277CBECE8];
    if (v24.flags)
    {
      v17 = *MEMORY[0x277CBECE8];
      time = v24;
      v18 = CMTimeCopyAsDictionary(&time, v17);
      [v4 setValue:v18 forKey:@"AEAssetPackageDisplayLivePhotoStillDisplayTime"];
    }

    memset(&time, 0, sizeof(time));
    [v3 photoIrisVideoDuration];
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
  v3 = [*MEMORY[0x277CE1E00] identifier];
  [(AEMutableAssetPackage *)self expressURLForType:v3];
}

- (void)beginSupressingLivePhoto
{
  v3 = *MEMORY[0x277CE1E00];
  v4 = [*MEMORY[0x277CE1E00] identifier];
  v6 = [(AEAssetPackage *)self currentURLForType:v4];

  if (v6)
  {
    v5 = [v3 identifier];
    [(AEMutableAssetPackage *)self suppressURLForType:v5];
  }
}

- (void)setMediaOrigin:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(AEMutableAssetPackage *)self setSidecarObject:v4 forKey:@"AEAssetPackageMediaOrigin"];
}

@end