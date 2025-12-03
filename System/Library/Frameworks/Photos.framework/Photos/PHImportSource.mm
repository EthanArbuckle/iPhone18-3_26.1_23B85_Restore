@interface PHImportSource
- (BOOL)_addSidecarAsset:(id)asset toAsset:(id)toAsset;
- (BOOL)_pairDatSidecar:(id)sidecar withMediaAssetIfHasAdjustments:(id)adjustments orAaeInProcessedAssets:(id)assets;
- (BOOL)batchComplete;
- (BOOL)confirmAsset:(id)asset isBaseOf:(id)of;
- (BOOL)confirmAsset:(id)asset isRenderOf:(id)of;
- (BOOL)confirmAsset:(id)asset isSidecarOfAsset:(id)ofAsset;
- (BOOL)confirmAsset:(id)asset isSocOf:(id)of;
- (BOOL)containsSupportedMediaWithImportExceptions:(id *)exceptions;
- (BOOL)date:(id)date matchesDate:(id)matchesDate;
- (BOOL)isDone;
- (BOOL)isLivePhotoForImportIdentifier:(id)identifier;
- (BOOL)isPairedSidecar:(id)sidecar;
- (BOOL)processPotentialJpegAsset:(id)asset plusRawAsset:(id)rawAsset;
- (BOOL)stalled;
- (PHImportSource)init;
- (id)_adjustmentDataAssetFromAssets:(id)assets;
- (id)_adjustmentSecondaryDataAssetFromAssets:(id)assets;
- (id)_findDatAssetInProcessedAssets:(id)assets toPairWithMediaAsset:(id)asset ifAssetIsAdjustment:(id)adjustment;
- (id)assetsByProcessingItem:(id)item;
- (id)assetsDescription;
- (id)description;
- (id)loadAssetsForLibrary:(id)library allowDuplicates:(BOOL)duplicates order:(int64_t)order batchInterval:(double)interval atEnd:(id)end;
- (id)loadAssetsForLibrary:(id)library allowDuplicates:(BOOL)duplicates order:(int64_t)order batchSize:(unint64_t)size batchInterval:(double)interval atEnd:(id)end;
- (id)nextItem;
- (id)processAssets:(id)assets;
- (void)accessItems:(id)items;
- (void)addImportSourceObserver:(id)observer;
- (void)addItems:(id)items;
- (void)addPairedSidecar:(id)sidecar;
- (void)addRepresentationsForAsset:(id)asset;
- (void)addSourceFileIdentifiersForRemovedFiles:(id)files;
- (void)beginProcessingWithCompletion:(id)completion;
- (void)beginWork;
- (void)dispatchAssetDataRequestAsync:(id)async usingBlock:(id)block;
- (void)endBatch;
- (void)endWork;
- (void)findDuplicatesOfItems:(id)items considerItemsInTheTrash:(BOOL)trash;
- (void)loadSidecarsFor:(id)for;
- (void)notifyObserversUsingBlock:(id)block;
- (void)pauseAssetLoading;
- (void)processNextItems;
- (void)processRepresentation:(id)representation;
- (void)processResource:(id)resource;
- (void)removeAssets:(id)assets;
- (void)removeImportSourceObserver:(id)observer;
- (void)resumeAssetLoading;
- (void)setIsLivePhotoForImportIdentifier:(id)identifier;
- (void)stopAssetLoading;
@end

@implementation PHImportSource

- (id)assetsDescription
{
  selfCopy = self;
  v42 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  assets = [(PHImportSource *)self assets];
  v4 = [(__CFString *)assets countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v4)
  {
    v20 = &stru_1F0FC60C8;
LABEL_27:

    assets = v20;
    goto LABEL_28;
  }

  v5 = v4;
  v25 = selfCopy;
  v26 = 0;
  v33 = 0;
  v34 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v31 = 0;
  v32 = 0;
  v35 = 0;
  obj = assets;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *v38;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v38 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v37 + 1) + 8 * i);
      sidecarAssets = [v11 sidecarAssets];
      v13 = [sidecarAssets count];

      largeRender = [v11 largeRender];
      v15 = largeRender != 0;

      hasAudioAttachment = [v11 hasAudioAttachment];
      if ([v11 isMovie])
      {
        ++v8;
        v7 += v13;
        v6 += v15;
      }

      else if (([v11 isAudio] & 1) == 0)
      {
        if ([v11 isRAW])
        {
          ++v33;
          v30 += v13;
          v29 += v15;
          v28 += hasAudioAttachment;
        }

        else
        {
          v32 += v13;
          ++v34;
          v35 += v15;
          v31 += hasAudioAttachment;
          if ([v11 isJpegPlusRAW])
          {
            ++v27;
          }

          else if ([v11 isLivePhoto])
          {
            ++v26;
            videoComplement = [v11 videoComplement];
            largeRender2 = [videoComplement largeRender];
            v19 = v35;
            if (largeRender2)
            {
              v19 = v35 + 1;
            }

            v35 = v19;
          }
        }
      }
    }

    v5 = [(__CFString *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v5);

  if (v8)
  {
    assets = [&stru_1F0FC60C8 stringByAppendingFormat:@"Movie:\t\t%lu (adj: %lu, render: %lu)\n", v8, v7, v6];
  }

  else
  {
    assets = &stru_1F0FC60C8;
  }

  selfCopy = v25;
  if (v33)
  {
    v21 = [(__CFString *)assets stringByAppendingFormat:@"RAW:\t\t%lu (adj: %lu, render: %lu, audio: %lu)\n", v33, v30, v29, v28];

    assets = v21;
  }

  if (v34)
  {
    v20 = [(__CFString *)assets stringByAppendingFormat:@"Non RAW:\t%lu (adj: %lu, render: %lu, audio: %lu, movie: %lu, raw: %lu)\n", v34, v32, v35, v31, v26, v27];
    goto LABEL_27;
  }

LABEL_28:
  assets2 = [(PHImportSource *)selfCopy assets];
  v23 = -[__CFString stringByAppendingFormat:](assets, "stringByAppendingFormat:", @"Total:\t\t%lu\n", [assets2 count]);

  return v23;
}

- (void)findDuplicatesOfItems:(id)items considerItemsInTheTrash:(BOOL)trash
{
  trashCopy = trash;
  itemsCopy = items;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__44041;
  v9[4] = __Block_byref_object_dispose__44042;
  v10 = 0;
  v7 = [[PHImportDuplicateChecker alloc] initWithLibrary:self->_library];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PHImportSource_findDuplicatesOfItems_considerItemsInTheTrash___block_invoke;
  v8[3] = &unk_1E75A9AE0;
  v8[4] = v9;
  [(PHImportDuplicateChecker *)v7 findDuplicatesOfItems:itemsCopy considerItemsInTrash:trashCopy forEach:0 atEnd:v8];

  _Block_object_dispose(v9, 8);
}

- (void)loadSidecarsFor:(id)for
{
  v38 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v5 = forCopy;
  if (forCopy)
  {
    folders = self->_folders;
    parentFolderPath = [forCopy parentFolderPath];
    LOBYTE(folders) = [(NSMutableSet *)folders containsObject:parentFolderPath];

    if ((folders & 1) == 0)
    {
      [v5 loadSidecarFiles];
      goto LABEL_30;
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    assetsByImportIdentifier = self->_assetsByImportIdentifier;
    importIdentifier = [v5 importIdentifier];
    v11 = [(NSMutableDictionary *)assetsByImportIdentifier objectForKeyedSubscript:importIdentifier];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          if ([v17 isSidecar])
          {
            [v5 addSidecarAsset:v17];
            [v8 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v14);
    }

    if ([v8 count])
    {
      [v12 removeObjectsInArray:v8];
    }

    [v8 removeAllObjects];
    representationsByImportIdentifier = self->_representationsByImportIdentifier;
    importIdentifier2 = [v5 importIdentifier];
    v20 = [(NSMutableDictionary *)representationsByImportIdentifier objectForKeyedSubscript:importIdentifier2];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v27 + 1) + 8 * j);
          if ([v26 isSidecar])
          {
            [v5 addSidecarAsset:v26];
            [v8 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v23);
    }

    if ([v8 count])
    {
      [v21 removeObjectsInArray:v8];
    }
  }

  else
  {
    v8 = PLImportGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "asset was nil", buf, 2u);
    }
  }

LABEL_30:
}

- (BOOL)confirmAsset:(id)asset isSidecarOfAsset:(id)ofAsset
{
  ofAssetCopy = ofAsset;
  v6 = [asset isSidecar] && ((objc_msgSend(ofAssetCopy, "isImage") & 1) != 0 || objc_msgSend(ofAssetCopy, "isMovie"));

  return v6;
}

- (BOOL)confirmAsset:(id)asset isBaseOf:(id)of
{
  v18 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  ofCopy = of;
  if (!(assetCopy | ofCopy))
  {
    v10 = PLImportGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134218240;
      v15 = 0;
      v16 = 2048;
      v17 = 0;
      _os_log_impl(&dword_19C86F000, v10, OS_LOG_TYPE_DEBUG, "must provide base (%p) and orig (%p)", &v14, 0x16u);
    }

    goto LABEL_14;
  }

  if (![assetCopy isBase] || (!objc_msgSend(assetCopy, "isImage") || !objc_msgSend(ofCopy, "isImage") || (v8 = objc_msgSend(assetCopy, "isLivePhoto"), v8 != objc_msgSend(ofCopy, "isLivePhoto"))) && (!objc_msgSend(assetCopy, "isMovie") || !objc_msgSend(ofCopy, "isMovie")))
  {
LABEL_14:
    hasAdjustments = 0;
    goto LABEL_15;
  }

  if ([ofCopy hasAdjustments] && (objc_msgSend(ofCopy, "isImage") & 1) != 0)
  {
    largeRender = [ofCopy largeRender];
  }

  else
  {
    largeRender = [ofCopy largeMovieRender];
  }

  v13 = largeRender;

  if (v13)
  {
    hasAdjustments = 1;
  }

  else
  {
    [(PHImportSource *)self loadSidecarsFor:ofCopy];
    hasAdjustments = [ofCopy hasAdjustments];
  }

LABEL_15:

  return hasAdjustments;
}

- (BOOL)confirmAsset:(id)asset isSocOf:(id)of
{
  v21 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  ofCopy = of;
  if (assetCopy | ofCopy)
  {
    if ([assetCopy isSpatialOverCapture] && (objc_msgSend(assetCopy, "isJPEG") && (objc_msgSend(ofCopy, "isJPEG") & 1) != 0 || objc_msgSend(assetCopy, "isHEIF") && (objc_msgSend(ofCopy, "isHEIF") & 1) != 0 || objc_msgSend(assetCopy, "isMovie") && objc_msgSend(ofCopy, "isMovie")))
    {
      isLivePhoto = [ofCopy isLivePhoto];
      if (isLivePhoto == [ofCopy isLivePhoto])
      {
        spatialOverCaptureIdentifier = [assetCopy spatialOverCaptureIdentifier];
        if (spatialOverCaptureIdentifier && (v9 = spatialOverCaptureIdentifier, [ofCopy spatialOverCaptureIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
        {
          spatialOverCaptureIdentifier2 = [assetCopy spatialOverCaptureIdentifier];
          v12 = ofCopy;
        }

        else
        {
          [ofCopy loadMetadataSync];
          spatialOverCaptureIdentifier2 = [ofCopy spatialOverCaptureIdentifier];
          if (!spatialOverCaptureIdentifier2)
          {
            v14 = 0;
            goto LABEL_22;
          }

          [assetCopy loadMetadataSync];
          v12 = assetCopy;
        }

        spatialOverCaptureIdentifier3 = [v12 spatialOverCaptureIdentifier];
        v14 = [spatialOverCaptureIdentifier2 isEqualToString:spatialOverCaptureIdentifier3];

LABEL_22:
        goto LABEL_17;
      }
    }
  }

  else
  {
    v13 = PLImportGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = 134218240;
      v18 = 0;
      v19 = 2048;
      v20 = 0;
      _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "must provide soc (%p) and orig (%p)", &v17, 0x16u);
    }
  }

  v14 = 0;
LABEL_17:

  return v14;
}

- (BOOL)confirmAsset:(id)asset isRenderOf:(id)of
{
  v15 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  ofCopy = of;
  if (!(assetCopy | ofCopy))
  {
    v9 = PLImportGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134218240;
      v12 = 0;
      v13 = 2048;
      v14 = 0;
      _os_log_impl(&dword_19C86F000, v9, OS_LOG_TYPE_DEBUG, "must provide render (%p) and orig (%p)", &v11, 0x16u);
    }

    goto LABEL_13;
  }

  if (![assetCopy isRender] || (!objc_msgSend(assetCopy, "isImage") || (objc_msgSend(ofCopy, "isImage") & 1) == 0 && (objc_msgSend(ofCopy, "isMovie") & 1) == 0) && (!objc_msgSend(assetCopy, "isMovie") || !objc_msgSend(ofCopy, "isMovie")))
  {
LABEL_13:
    hasAdjustments = 0;
    goto LABEL_14;
  }

  if ([ofCopy hasAdjustments])
  {
    hasAdjustments = 1;
  }

  else
  {
    [(PHImportSource *)self loadSidecarsFor:ofCopy];
    hasAdjustments = [ofCopy hasAdjustments];
  }

LABEL_14:

  return hasAdjustments;
}

- (void)setIsLivePhotoForImportIdentifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v7 = PLImportGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v7, OS_LOG_TYPE_DEBUG, "identifier was nil", buf, 2u);
    }

    goto LABEL_23;
  }

  v5 = [(NSMutableDictionary *)self->_importIdentifierToLivePhotoStateMap objectForKeyedSubscript:identifierCopy];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [(NSMutableDictionary *)self->_importIdentifierToLivePhotoStateMap setObject:MEMORY[0x1E695E118] forKeyedSubscript:identifierCopy];
    v7 = [(NSMutableDictionary *)self->_representationsByImportIdentifier objectForKeyedSubscript:identifierCopy];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (!v8)
    {
      v11 = 0;
      v10 = 0;
      goto LABEL_22;
    }

    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v25;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if ([v14 resourceType] == 8)
        {
          v15 = v11;
          v16 = v10;
          v11 = v14;
        }

        else
        {
          v15 = v10;
          v16 = v14;
          if ([v14 resourceType] != 12)
          {
            continue;
          }
        }

        v17 = v14;

        v10 = v16;
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (!v9)
      {
        if (v11 && v10)
        {
          [v11 takeAsVideoComplement:v10];
          v18 = PLImportGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            redactedFileNameDescription = [v10 redactedFileNameDescription];
            v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "resourceType")}];
            v28 = v20;
            v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
            v22 = PHDescriptionsForResourceTypes(v21);
            v23 = [v22 componentsJoinedByString:{@", "}];
            *buf = 138412546;
            v30 = redactedFileNameDescription;
            v31 = 2112;
            v32 = v23;
            _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEBUG, "REMOVING: %@ (%@) as a processed representation", buf, 0x16u);
          }

          [v7 removeObject:v10];
        }

LABEL_22:

LABEL_23:
        break;
      }
    }
  }
}

- (BOOL)processPotentialJpegAsset:(id)asset plusRawAsset:(id)rawAsset
{
  v33 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  rawAssetCopy = rawAsset;
  creationDate = [assetCopy creationDate];
  creationDate2 = [rawAssetCopy creationDate];
  v10 = [(PHImportSource *)self date:creationDate matchesDate:creationDate2];

  if (v10 || ([assetCopy fileCreationDate], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(rawAssetCopy, "fileCreationDate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[PHImportSource date:matchesDate:](self, "date:matchesDate:", v11, v12), v12, v11, v13) || (objc_msgSend(assetCopy, "loadMetadataSync"), objc_msgSend(rawAssetCopy, "loadMetadataSync"), objc_msgSend(assetCopy, "creationDate"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(rawAssetCopy, "creationDate"), v15 = objc_claimAutoreleasedReturnValue(), v16 = -[PHImportSource date:matchesDate:](self, "date:matchesDate:", v14, v15), v15, v14, v16))
  {
    v17 = PLImportGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      redactedFileNameDescription = [rawAssetCopy redactedFileNameDescription];
      redactedFileNameDescription2 = [assetCopy redactedFileNameDescription];
      v29 = 138412546;
      v30 = redactedFileNameDescription;
      v31 = 2112;
      v32 = redactedFileNameDescription2;
      _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "PAIRING: setting %@ as RAW of %@", &v29, 0x16u);
    }

    [assetCopy setRawAsset:rawAssetCopy];
    largeRender = [assetCopy largeRender];

    if (!largeRender)
    {
      largeRender2 = [rawAssetCopy largeRender];
      [assetCopy setLargeRender:largeRender2];

      [rawAssetCopy setLargeRender:0];
    }

    base = [assetCopy base];

    if (!base)
    {
      base2 = [rawAssetCopy base];
      [assetCopy setBase:base2];

      [rawAssetCopy setBase:0];
    }

    audioAsset = [assetCopy audioAsset];

    if (!audioAsset)
    {
      audioAsset2 = [rawAssetCopy audioAsset];
      [assetCopy setAudioAsset:audioAsset2];

      [rawAssetCopy setAudioAsset:0];
    }

    sidecarAssetsByType = [assetCopy sidecarAssetsByType];

    if (!sidecarAssetsByType)
    {
      sidecarAssetsByType2 = [rawAssetCopy sidecarAssetsByType];
      [assetCopy setSidecarAssetsByType:sidecarAssetsByType2];

      [rawAssetCopy setSidecarAssetsByType:0];
    }

    LOBYTE(v16) = 1;
  }

  return v16;
}

- (BOOL)batchComplete
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_processingQueue);
  v3 = self->_batchCount + 1;
  self->_batchCount = v3;
  batchSize = self->_batchSize;
  if (!batchSize)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v9 = v8 - self->_batchStart;
    if (v9 >= self->_batchInterval)
    {
      v11 = PLImportGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        batchInterval = self->_batchInterval;
        v16 = 134218240;
        v17 = v9;
        v18 = 2048;
        v19 = batchInterval;
        _os_log_impl(&dword_19C86F000, v11, OS_LOG_TYPE_DEBUG, "Batch duration: %g, Batch Interval: %g", &v16, 0x16u);
      }

      if (self->_rampBatchInterval)
      {
        v13 = self->_batchInterval;
        if (v13 < 1.0)
        {
          v14 = v13 * 1.5;
          self->_batchInterval = v14;
          if (v14 > 1.0)
          {
            self->_batchInterval = 1.0;
          }
        }
      }

      goto LABEL_14;
    }

    return 0;
  }

  if (v3 < batchSize)
  {
    return 0;
  }

  v5 = PLImportGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    batchCount = self->_batchCount;
    v7 = self->_batchSize;
    v16 = 134218240;
    v17 = *&batchCount;
    v18 = 2048;
    v19 = *&v7;
    _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "END BATCH: batch count (%lu) >= batch size (%lu)", &v16, 0x16u);
  }

LABEL_14:
  self->_batchCount = 0;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_batchStart = v15;
  return 1;
}

- (BOOL)date:(id)date matchesDate:(id)matchesDate
{
  dateCopy = date;
  matchesDateCopy = matchesDate;
  v7 = [matchesDateCopy dateByAddingTimeInterval:-30.0];
  v8 = [matchesDateCopy dateByAddingTimeInterval:30.0];

  v9 = ([dateCopy compare:v7] == 1 || !objc_msgSend(dateCopy, "compare:", v7)) && (objc_msgSend(dateCopy, "compare:", v8) == -1 || objc_msgSend(dateCopy, "compare:", v8) == 0);
  return v9;
}

- (void)removeAssets:(id)assets
{
  assetsCopy = assets;
  processingQueue = self->_processingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__PHImportSource_removeAssets___block_invoke;
  v7[3] = &unk_1E75AAEB0;
  v8 = assetsCopy;
  selfCopy = self;
  v6 = assetsCopy;
  dispatch_async(processingQueue, v7);
}

void __31__PHImportSource_removeAssets___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 200) indexOfObject:v7];
        v9 = *(a1 + 40);
        if (v8 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = [*(v9 + 280) indexOfObject:v7];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [*(*(a1 + 40) + 280) removeObjectAtIndex:v10];
            [v12 addObject:v7];
          }
        }

        else
        {
          [*(v9 + 200) removeObjectAtIndex:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  if ([v12 count])
  {
    v11 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __31__PHImportSource_removeAssets___block_invoke_2;
    v13[3] = &unk_1E75A9AB8;
    v13[4] = v11;
    v14 = v12;
    [v11 notifyObserversUsingBlock:v13];
  }
}

- (void)addSourceFileIdentifiersForRemovedFiles:(id)files
{
  filesCopy = files;
  processingQueue = self->_processingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PHImportSource_addSourceFileIdentifiersForRemovedFiles___block_invoke;
  v7[3] = &unk_1E75AAEB0;
  v7[4] = self;
  v8 = filesCopy;
  v6 = filesCopy;
  dispatch_sync(processingQueue, v7);
}

void __58__PHImportSource_addSourceFileIdentifiersForRemovedFiles___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) removedSourceFileIdentifiers];
  [v2 addObjectsFromArray:*(a1 + 40)];
}

- (void)addItems:(id)items
{
  itemsCopy = items;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__PHImportSource_addItems___block_invoke;
  v6[3] = &unk_1E75AA3F8;
  v8 = &v9;
  v6[4] = self;
  v5 = itemsCopy;
  v7 = v5;
  [(PHImportSource *)self accessItems:v6];
  if (*(v10 + 24) == 1)
  {
    [(PHImportSource *)self processNextItems];
  }

  _Block_object_dispose(&v9, 8);
}

void __27__PHImportSource_addItems___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 248) count] == 0;
  [*(*(a1 + 32) + 248) addObjectsFromArray:*(a1 + 40)];
  v2 = [*(a1 + 32) progress];
  [v2 setTotalUnitCount:{objc_msgSend(v2, "totalUnitCount") + objc_msgSend(*(a1 + 40), "count")}];
}

- (BOOL)stalled
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __25__PHImportSource_stalled__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportSource *)self accessItems:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __25__PHImportSource_stalled__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 248) count];
  *(*(*(a1 + 40) + 8) + 24) = result == 0;
  return result;
}

- (BOOL)isDone
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __24__PHImportSource_isDone__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportSource *)self accessItems:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __24__PHImportSource_isDone__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (*(v2 + 68))
  {
    v3 = 0;
  }

  else
  {
    result = [*(v2 + 248) count];
    v3 = result == 0;
  }

  *(*(*(v1 + 40) + 8) + 24) = v3;
  return result;
}

- (id)nextItem
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__44041;
  v9 = __Block_byref_object_dispose__44042;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__PHImportSource_nextItem__block_invoke;
  v4[3] = &unk_1E75AADC0;
  v4[4] = self;
  v4[5] = &v5;
  [(PHImportSource *)self accessItems:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __26__PHImportSource_nextItem__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 248) count])
  {
    v2 = [*(*(a1 + 32) + 248) objectAtIndexedSubscript:0];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(*(a1 + 32) + 248);

    [v5 removeObjectAtIndex:0];
  }

  else
  {
    v6 = PLImportGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "Nothing to process", v7, 2u);
    }
  }
}

- (void)accessItems:(id)items
{
  itemsCopy = items;
  os_unfair_lock_lock(&self->_itemsLock);
  itemsCopy[2](itemsCopy);

  os_unfair_lock_unlock(&self->_itemsLock);
}

- (BOOL)isLivePhotoForImportIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = [(NSMutableDictionary *)self->_importIdentifierToLivePhotoStateMap objectForKeyedSubscript:?];
    bOOLValue = [v3 BOOLValue];

    return bOOLValue;
  }

  else
  {
    v6 = PLImportGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_19C86F000, v6, OS_LOG_TYPE_DEBUG, "identifier was nil", v7, 2u);
    }

    return 0;
  }
}

- (void)addRepresentationsForAsset:(id)asset
{
  v56 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = assetCopy;
  if (assetCopy)
  {
    if ([assetCopy resourceType] == 1 || objc_msgSend(v4, "resourceType") == 2)
    {
      representationsByImportIdentifier = self->_representationsByImportIdentifier;
      importIdentifier = [v4 importIdentifier];
      v7 = [(NSMutableDictionary *)representationsByImportIdentifier objectForKeyedSubscript:importIdentifier];

      v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v8 = v7;
      v39 = [v8 countByEnumeratingWithState:&v40 objects:v55 count:16];
      if (!v39)
      {
        goto LABEL_38;
      }

      v38 = *v41;
      *&v9 = 138412546;
      v29 = v9;
      v32 = v4;
      while (1)
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v41 != v38)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v40 + 1) + 8 * i);
          v12 = PLImportGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            redactedFileNameDescription = [v4 redactedFileNameDescription];
            v37 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "resourceType")}];
            v46 = v37;
            v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
            v34 = PHDescriptionsForResourceTypes(v35);
            [v34 componentsJoinedByString:{@", "}];
            v13 = v36 = i;
            [v11 redactedFileNameDescription];
            v15 = v14 = v11;
            v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "resourceType")}];
            v45 = v16;
            v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
            PHDescriptionsForResourceTypes(v17);
            v19 = v18 = v8;
            v20 = [v19 componentsJoinedByString:{@", "}];
            *buf = 138413058;
            v48 = redactedFileNameDescription;
            v49 = 2112;
            v50 = v13;
            v51 = 2112;
            v52 = v15;
            v53 = 2112;
            v54 = v20;
            _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "ANALYZING asset: %@ (%@), representation: %@ (%@)", buf, 0x2Au);

            v8 = v18;
            v4 = v32;

            v11 = v14;
            i = v36;
          }

          resourceType = [v11 resourceType];
          if (resourceType > 11)
          {
            switch(resourceType)
            {
              case 12:
                if ([v4 resourceType] != 2)
                {
                  continue;
                }

LABEL_28:
                if (![(PHImportSource *)self confirmAsset:v11 isBaseOf:v4, v29])
                {
                  continue;
                }

                [v4 setBase:v11];
                goto LABEL_35;
              case 13:
                goto LABEL_21;
              case 14:
                if ([v4 resourceType] != 2)
                {
                  continue;
                }

LABEL_21:
                if (![(PHImportSource *)self confirmAsset:v11 isSocOf:v4, v29])
                {
                  continue;
                }

                [v4 setSpatialOverCapture:v11];
LABEL_35:
                [v30 addObject:{v11, v29}];
                continue;
            }

LABEL_30:
            v22 = PLImportGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              redactedFileNameDescription2 = [v11 redactedFileNameDescription];
              v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "resourceType")}];
              v44 = v24;
              v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
              v26 = PHDescriptionsForResourceTypes(v25);
              v27 = [v26 componentsJoinedByString:{@", "}];
              *buf = v29;
              v48 = redactedFileNameDescription2;
              v49 = 2112;
              v50 = v27;
              _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEBUG, "Unexpected representation resource type for %@ (%@)", buf, 0x16u);
            }

            continue;
          }

          switch(resourceType)
          {
            case 5:
              if (([v4 resourceType] == 1 || objc_msgSend(v4, "resourceType") == 2) && -[PHImportSource confirmAsset:isRenderOf:](self, "confirmAsset:isRenderOf:", v11, v4, v29))
              {
                [v4 setLargeRender:v11];
                goto LABEL_35;
              }

              break;
            case 6:
              if ([v4 resourceType] != 2)
              {
                continue;
              }

              [v4 setLargeMovieRender:v11];
              goto LABEL_35;
            case 8:
              if ([v4 resourceType] == 1)
              {
                goto LABEL_28;
              }

              break;
            default:
              goto LABEL_30;
          }
        }

        v39 = [v8 countByEnumeratingWithState:&v40 objects:v55 count:16];
        if (!v39)
        {
LABEL_38:

          redactedFileNameDescription3 = v30;
          [v8 removeObjectsInArray:v30];
          goto LABEL_39;
        }
      }
    }

    v8 = PLImportGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      redactedFileNameDescription3 = [v4 redactedFileNameDescription];
      *buf = 138412290;
      v48 = redactedFileNameDescription3;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "'%@' is not a photo or video, not adding representations", buf, 0xCu);
LABEL_39:
    }
  }

  else
  {
    v8 = PLImportGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v8, OS_LOG_TYPE_DEBUG, "'asset' was nil", buf, 2u);
    }
  }
}

- (void)processResource:(id)resource
{
  v118 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  if (resourceCopy)
  {
    v5 = resourceCopy;
    v79 = objc_alloc_init(MEMORY[0x1E695DF70]);
    assetsByImportIdentifier = self->_assetsByImportIdentifier;
    importIdentifier = [v5 importIdentifier];
    v8 = [(NSMutableDictionary *)assetsByImportIdentifier objectForKeyedSubscript:importIdentifier];

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = v8;
    selfCopy = self;
    v89 = [obj countByEnumeratingWithState:&v97 objects:v117 count:16];
    if (v89)
    {
      v9 = *v98;
      v80 = *v98;
      while (1)
      {
        v10 = 0;
        do
        {
          if (*v98 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v97 + 1) + 8 * v10);
          v12 = PLImportGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            redactedFileNameDescription = [v5 redactedFileNameDescription];
            v84 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject resourceType](v5, "resourceType")}];
            v108 = v84;
            [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
            v83 = v87 = v5;
            v13 = PHDescriptionsForResourceTypes(v83);
            v85 = v10;
            v14 = [v13 componentsJoinedByString:{@", "}];
            redactedFileNameDescription2 = [v11 redactedFileNameDescription];
            v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "resourceType")}];
            v107 = v16;
            v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
            v18 = PHDescriptionsForResourceTypes(v17);
            v19 = [v18 componentsJoinedByString:{@", "}];
            *buf = 138413058;
            v110 = redactedFileNameDescription;
            v111 = 2112;
            v112 = v14;
            v113 = 2112;
            v114 = redactedFileNameDescription2;
            v115 = 2112;
            v116 = v19;
            _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "ANALYZING asset: %@ (%@), processed: %@ (%@)", buf, 0x2Au);

            v9 = v80;
            self = selfCopy;

            v5 = v87;
            v10 = v85;
          }

          resourceType = [v11 resourceType];
          if (resourceType <= 15)
          {
            switch(resourceType)
            {
              case 1:
                resourceType2 = [v5 resourceType];
                if (resourceType2 > 15)
                {
                  if ((resourceType2 - 16) < 2)
                  {
                    goto LABEL_40;
                  }

                  if (resourceType2 == 110)
                  {
                    goto LABEL_36;
                  }
                }

                else
                {
                  switch(resourceType2)
                  {
                    case 2:
                      if (![v5 isVideoComplementOf:v11])
                      {
                        goto LABEL_56;
                      }

                      importIdentifier2 = [v5 importIdentifier];
                      [(PHImportSource *)self setIsLivePhotoForImportIdentifier:importIdentifier2];

LABEL_54:
                      goto LABEL_55;
                    case 3:
                      audioAsset = [v11 audioAsset];

                      if (audioAsset)
                      {
                        goto LABEL_56;
                      }

                      [v11 setAudioAsset:v5];
                      goto LABEL_54;
                    case 7:
                      goto LABEL_40;
                  }
                }

                if (-[NSObject isRAW](v5, "isRAW") && [v11 isJPEG])
                {
                  if ([(PHImportSource *)self processPotentialJpegAsset:v11 plusRawAsset:v5])
                  {
                    goto LABEL_54;
                  }
                }

                else if (-[NSObject isJPEG](v5, "isJPEG") && [v11 isRAW] && -[PHImportSource processPotentialJpegAsset:plusRawAsset:](self, "processPotentialJpegAsset:plusRawAsset:", v5, v11))
                {
                  goto LABEL_20;
                }

                break;
              case 2:
                resourceType3 = [v5 resourceType];
                if (resourceType3 <= 15)
                {
                  if (resourceType3 != 1)
                  {
                    if (resourceType3 != 7)
                    {
                      break;
                    }

LABEL_40:
                    if (![(PHImportSource *)self _addSidecarAsset:v5 toAsset:v11])
                    {
                      break;
                    }

                    v25 = [(PHImportSource *)self _findDatAssetInProcessedAssets:obj toPairWithMediaAsset:v11 ifAssetIsAdjustment:v5];
                    if (v25)
                    {
                      [v79 addObject:v25];
                    }

LABEL_55:
                    v5 = 0;
                    break;
                  }

                  if ([v11 isVideoComplementOf:v5])
                  {
                    importIdentifier3 = [v5 importIdentifier];
                    [(PHImportSource *)self setIsLivePhotoForImportIdentifier:importIdentifier3];

LABEL_20:
                    [v79 addObject:v11];
                  }
                }

                else
                {
                  if (resourceType3 == 16 || resourceType3 == 18)
                  {
                    goto LABEL_40;
                  }

                  if (resourceType3 == 110)
                  {
LABEL_36:
                    if ([(PHImportSource *)self _pairDatSidecar:v5 withMediaAssetIfHasAdjustments:v11 orAaeInProcessedAssets:obj])
                    {
                      goto LABEL_54;
                    }
                  }
                }

                break;
              case 7:
LABEL_17:
                if (([v5 resourceType]== 1 || [v5 resourceType]== 2) && [(PHImportSource *)self _addSidecarAsset:v11 toAsset:v5])
                {
                  goto LABEL_20;
                }

                break;
              default:
LABEL_26:
                v22 = PLImportGetLog();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                {
                  redactedFileNameDescription3 = [v11 redactedFileNameDescription];
                  *buf = 138412290;
                  v110 = redactedFileNameDescription3;
                  _os_log_impl(&dword_19C86F000, v22, OS_LOG_TYPE_DEBUG, "Unexpected asset resource type for %@", buf, 0xCu);
                }

                break;
            }
          }

          else
          {
            if ((resourceType - 16) < 3)
            {
              goto LABEL_17;
            }

            if (resourceType != 110)
            {
              goto LABEL_26;
            }

            if ([(PHImportSource *)self _pairDatSidecar:v11 withMediaAssetIfHasAdjustments:v5 orAaeInProcessedAssets:obj])
            {
              goto LABEL_20;
            }
          }

LABEL_56:
          ++v10;
        }

        while (v89 != v10);
        v29 = [obj countByEnumeratingWithState:&v97 objects:v117 count:16];
        v89 = v29;
        if (!v29)
        {

          if (!v5)
          {
            goto LABEL_100;
          }

          goto LABEL_68;
        }
      }
    }

LABEL_68:
    if ([v5 isAudio])
    {
      audioByImportIdentifier = self->_audioByImportIdentifier;
      importIdentifier4 = [v5 importIdentifier];
      v32 = [(NSMutableDictionary *)audioByImportIdentifier objectForKeyedSubscript:importIdentifier4];

      if (!v32)
      {
        v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v33 = self->_audioByImportIdentifier;
        importIdentifier5 = [v5 importIdentifier];
        [(NSMutableDictionary *)v33 setObject:v32 forKeyedSubscript:importIdentifier5];
      }

      v35 = PLImportGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        redactedFileNameDescription4 = [v5 redactedFileNameDescription];
        v37 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject resourceType](v5, "resourceType")}];
        v106 = v37;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
        v39 = PHDescriptionsForResourceTypes(v38);
        v40 = [v39 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v110 = redactedFileNameDescription4;
        v111 = 2112;
        v112 = v40;
        _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_DEBUG, "ADDING: %@ (%@) as a processed asset", buf, 0x16u);
      }

      [v32 addObject:v5];
    }

    else
    {
      if ([v5 resourceType]== 1)
      {
        v41 = self->_audioByImportIdentifier;
        importIdentifier6 = [v5 importIdentifier];
        v43 = [(NSMutableDictionary *)v41 objectForKeyedSubscript:importIdentifier6];
        v44 = [v43 copy];

        memset(v96, 0, sizeof(v96));
        v45 = v44;
        if ([v45 countByEnumeratingWithState:v96 objects:v105 count:16])
        {
          v46 = **(&v96[0] + 1);
          [v5 setAudioAsset:**(&v96[0] + 1)];
          v47 = PLImportGetLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            redactedFileNameDescription5 = [v46 redactedFileNameDescription];
            v49 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v46, "resourceType")}];
            v104 = v49;
            v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
            v51 = PHDescriptionsForResourceTypes(v50);
            v52 = [v51 componentsJoinedByString:{@", "}];
            *buf = 138412546;
            v110 = redactedFileNameDescription5;
            v111 = 2112;
            v112 = v52;
            _os_log_impl(&dword_19C86F000, v47, OS_LOG_TYPE_DEBUG, "REMOVING: %@ (%@) as a processed asset", buf, 0x16u);
          }

          v53 = selfCopy->_audioByImportIdentifier;
          importIdentifier7 = [v5 importIdentifier];
          v55 = [(NSMutableDictionary *)v53 objectForKeyedSubscript:importIdentifier7];
          v56 = v46;
          self = selfCopy;
          [v55 removeObject:v56];
        }
      }

      if (!obj)
      {
        array = [MEMORY[0x1E695DF70] array];
        v58 = self->_assetsByImportIdentifier;
        importIdentifier8 = [v5 importIdentifier];
        obj = array;
        [(NSMutableDictionary *)v58 setObject:array forKeyedSubscript:importIdentifier8];
      }

      if (([v79 containsObject:v5] & 1) == 0)
      {
        v60 = PLImportGetLog();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          redactedFileNameDescription6 = [v5 redactedFileNameDescription];
          v62 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject resourceType](v5, "resourceType")}];
          v103 = v62;
          v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
          v64 = PHDescriptionsForResourceTypes(v63);
          v65 = [v64 componentsJoinedByString:{@", "}];
          *buf = 138412546;
          v110 = redactedFileNameDescription6;
          v111 = 2112;
          v112 = v65;
          _os_log_impl(&dword_19C86F000, v60, OS_LOG_TYPE_DEBUG, "ADDING: %@ (%@) as a processed asset", buf, 0x16u);
        }

        if ([v5 isSidecar])
        {
          [obj insertObject:v5 atIndex:0];
        }

        else
        {
          [obj addObject:v5];
        }
      }

      v88 = v5;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v66 = v79;
      v67 = [v66 countByEnumeratingWithState:&v92 objects:v102 count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v93;
        v86 = *v93;
        do
        {
          v70 = 0;
          v90 = v68;
          do
          {
            if (*v93 != v69)
            {
              objc_enumerationMutation(v66);
            }

            v71 = *(*(&v92 + 1) + 8 * v70);
            v72 = PLImportGetLog();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
            {
              redactedFileNameDescription7 = [v71 redactedFileNameDescription];
              v74 = v66;
              v75 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v71, "resourceType")}];
              v101 = v75;
              v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
              v77 = PHDescriptionsForResourceTypes(v76);
              v78 = [v77 componentsJoinedByString:{@", "}];
              *buf = 138412546;
              v110 = redactedFileNameDescription7;
              v111 = 2112;
              v112 = v78;
              _os_log_impl(&dword_19C86F000, v72, OS_LOG_TYPE_DEBUG, "REMOVING: %@ (%@) as a processed asset", buf, 0x16u);

              v66 = v74;
              v68 = v90;

              v69 = v86;
            }

            [obj removeObject:v71];
            ++v70;
          }

          while (v68 != v70);
          v68 = [v66 countByEnumeratingWithState:&v92 objects:v102 count:16];
        }

        while (v68);
      }

      if ([v66 count])
      {
        [(PHImportSource *)selfCopy removeAssets:v66];
      }

      v5 = v88;
    }

LABEL_100:
  }

  else
  {
    v5 = PLImportGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v5, OS_LOG_TYPE_DEBUG, "'asset' was nil", buf, 2u);
    }
  }
}

- (BOOL)_pairDatSidecar:(id)sidecar withMediaAssetIfHasAdjustments:(id)adjustments orAaeInProcessedAssets:(id)assets
{
  sidecarCopy = sidecar;
  adjustmentsCopy = adjustments;
  v10 = [(PHImportSource *)self _adjustmentDataAssetFromAssets:assets];
  v11 = (v10 || [adjustmentsCopy hasAdjustments]) && -[PHImportSource _addSidecarAsset:toAsset:](self, "_addSidecarAsset:toAsset:", sidecarCopy, adjustmentsCopy);

  return v11;
}

- (id)_findDatAssetInProcessedAssets:(id)assets toPairWithMediaAsset:(id)asset ifAssetIsAdjustment:(id)adjustment
{
  assetsCopy = assets;
  assetCopy = asset;
  if ([adjustment resourceType] == 7)
  {
    v10 = [(PHImportSource *)self _adjustmentSecondaryDataAssetFromAssets:assetsCopy];
    if ([(PHImportSource *)self _addSidecarAsset:v10 toAsset:assetCopy])
    {
      goto LABEL_5;
    }
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (id)_adjustmentSecondaryDataAssetFromAssets:(id)assets
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  assetsCopy = assets;
  v4 = [assetsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 resourceType] == 110)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [assetsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_adjustmentDataAssetFromAssets:(id)assets
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  assetsCopy = assets;
  v4 = [assetsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 resourceType] == 7)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [assetsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)_addSidecarAsset:(id)asset toAsset:(id)toAsset
{
  assetCopy = asset;
  toAssetCopy = toAsset;
  if (assetCopy && [(PHImportSource *)self confirmAsset:assetCopy isSidecarOfAsset:toAssetCopy])
  {
    [toAssetCopy addSidecarAsset:assetCopy];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)processRepresentation:(id)representation
{
  v86 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if (!representationCopy)
  {
    v12 = PLImportGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v12, OS_LOG_TYPE_DEBUG, "'asset' was nil", buf, 2u);
    }

    goto LABEL_58;
  }

  v5 = representationCopy;
  representationsByImportIdentifier = self->_representationsByImportIdentifier;
  importIdentifier = [representationCopy importIdentifier];
  v8 = [(NSMutableDictionary *)representationsByImportIdentifier objectForKeyedSubscript:importIdentifier];
  v9 = [v8 copy];

  selfCopy = self;
  v10 = self->_representationsByImportIdentifier;
  importIdentifier2 = [v5 importIdentifier];
  v57 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:importIdentifier2];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v12 = v9;
  v65 = [v12 countByEnumeratingWithState:&v66 objects:v85 count:16];
  if (!v65)
  {
    goto LABEL_50;
  }

  v64 = *v67;
  v59 = v12;
  v60 = v5;
LABEL_4:
  v13 = 0;
  while (1)
  {
    if (*v67 != v64)
    {
      objc_enumerationMutation(v12);
    }

    v14 = *(*(&v66 + 1) + 8 * v13);
    v15 = PLImportGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      redactedFileNameDescription = [v5 redactedFileNameDescription];
      v63 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject resourceType](v5, "resourceType")}];
      v76 = v63;
      v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
      v61 = PHDescriptionsForResourceTypes(v62);
      v17 = [v61 componentsJoinedByString:{@", "}];
      redactedFileNameDescription2 = [v14 redactedFileNameDescription];
      v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "resourceType")}];
      v75 = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
      PHDescriptionsForResourceTypes(v20);
      v22 = v21 = v14;
      v23 = [v22 componentsJoinedByString:{@", "}];
      *buf = 138413058;
      v78 = redactedFileNameDescription;
      v79 = 2112;
      v80 = v17;
      v81 = 2112;
      v82 = redactedFileNameDescription2;
      v83 = 2112;
      v84 = v23;
      _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "ANALYZING asset: %@ (%@), processed: %@ (%@)", buf, 0x2Au);

      v14 = v21;
      v5 = v60;

      v12 = v59;
    }

    resourceType = [v14 resourceType];
    if (resourceType > 11)
    {
      break;
    }

    if (resourceType == 5)
    {
      if ([v5 resourceType]!= 6)
      {
        goto LABEL_35;
      }

LABEL_34:
      if ([v5 isVideoComplementOf:v14])
      {
        importIdentifier3 = [v5 importIdentifier];
        [(PHImportSource *)selfCopy setIsLivePhotoForImportIdentifier:importIdentifier3];

        goto LABEL_41;
      }

      goto LABEL_35;
    }

    if (resourceType == 6)
    {
      if (-[NSObject resourceType](v5, "resourceType") == 5 && [v14 isVideoComplementOf:v5])
      {
        importIdentifier4 = [v5 importIdentifier];
        [(PHImportSource *)selfCopy setIsLivePhotoForImportIdentifier:importIdentifier4];

        v45 = PLImportGetLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          redactedFileNameDescription3 = [v14 redactedFileNameDescription];
          v40 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "resourceType")}];
          v74 = v40;
          v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
          v42 = PHDescriptionsForResourceTypes(v41);
          v43 = [v42 componentsJoinedByString:{@", "}];
          *buf = 138412546;
          v78 = redactedFileNameDescription3;
          v79 = 2112;
          v80 = v43;
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      goto LABEL_35;
    }

    if (resourceType != 8)
    {
      goto LABEL_27;
    }

    if ([v5 resourceType]== 12)
    {
      importIdentifier5 = [v5 importIdentifier];
      v26 = [(PHImportSource *)selfCopy isLivePhotoForImportIdentifier:importIdentifier5];

      if (v26)
      {
        [v14 takeAsVideoComplement:v5];
LABEL_41:

        v5 = v12;
        array = v57;
        goto LABEL_57;
      }
    }

LABEL_35:
    if (v65 == ++v13)
    {
      v65 = [v12 countByEnumeratingWithState:&v66 objects:v85 count:16];
      if (v65)
      {
        goto LABEL_4;
      }

      goto LABEL_50;
    }
  }

  if (resourceType != 12)
  {
    if (resourceType != 13)
    {
      if (resourceType == 14)
      {
        if (-[NSObject resourceType](v5, "resourceType") == 13 && [v14 isVideoComplementOf:v5])
        {
          importIdentifier6 = [v5 importIdentifier];
          [(PHImportSource *)selfCopy setIsLivePhotoForImportIdentifier:importIdentifier6];

          v45 = PLImportGetLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            redactedFileNameDescription3 = [v14 redactedFileNameDescription];
            v40 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "resourceType")}];
            v72 = v40;
            v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
            v42 = PHDescriptionsForResourceTypes(v41);
            v43 = [v42 componentsJoinedByString:{@", "}];
            *buf = 138412546;
            v78 = redactedFileNameDescription3;
            v79 = 2112;
            v80 = v43;
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        goto LABEL_35;
      }

LABEL_27:
      v29 = PLImportGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        redactedFileNameDescription4 = [v14 redactedFileNameDescription];
        v31 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "resourceType")}];
        v71 = v31;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
        v33 = PHDescriptionsForResourceTypes(v32);
        v34 = [v33 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v78 = redactedFileNameDescription4;
        v79 = 2112;
        v80 = v34;
        _os_log_impl(&dword_19C86F000, v29, OS_LOG_TYPE_DEBUG, "Unexpected representation resource type for %@ (%@)", buf, 0x16u);
      }

      goto LABEL_35;
    }

    if ([v5 resourceType]== 14)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if ([v5 resourceType]!= 8)
  {
    goto LABEL_35;
  }

  importIdentifier7 = [v5 importIdentifier];
  v28 = [(PHImportSource *)selfCopy isLivePhotoForImportIdentifier:importIdentifier7];

  if (!v28)
  {
    goto LABEL_35;
  }

  [v5 takeAsVideoComplement:v14];
  v45 = PLImportGetLog();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    redactedFileNameDescription3 = [v14 redactedFileNameDescription];
    v40 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "resourceType")}];
    v73 = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
    v42 = PHDescriptionsForResourceTypes(v41);
    v43 = [v42 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v78 = redactedFileNameDescription3;
    v79 = 2112;
    v80 = v43;
LABEL_48:
    _os_log_impl(&dword_19C86F000, v45, OS_LOG_TYPE_DEBUG, "REMOVING: %@ (%@) as a processed representation", buf, 0x16u);
  }

LABEL_49:

  [v57 removeObject:v14];
LABEL_50:

  array = v57;
  if (!v57)
  {
    array = [MEMORY[0x1E695DF70] array];
    v48 = selfCopy->_representationsByImportIdentifier;
    importIdentifier8 = [v5 importIdentifier];
    [(NSMutableDictionary *)v48 setObject:array forKeyedSubscript:importIdentifier8];
  }

  v50 = PLImportGetLog();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    redactedFileNameDescription5 = [v5 redactedFileNameDescription];
    [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject resourceType](v5, "resourceType")}];
    v53 = v52 = array;
    v70 = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
    v55 = PHDescriptionsForResourceTypes(v54);
    v56 = [v55 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v78 = redactedFileNameDescription5;
    v79 = 2112;
    v80 = v56;
    _os_log_impl(&dword_19C86F000, v50, OS_LOG_TYPE_DEBUG, "ADDING: %@ (%@) as a processed representation", buf, 0x16u);

    array = v52;
  }

  if ([v5 isRender])
  {
    [array insertObject:v5 atIndex:0];
  }

  else
  {
    [array addObject:v5];
  }

LABEL_57:

LABEL_58:
}

- (id)processAssets:(id)assets
{
  v54 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if (assetsCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = assetsCopy;
    v6 = assetsCopy;
    v7 = [v6 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v44;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v44 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v43 + 1) + 8 * i);
          importIdentifier = [v11 importIdentifier];

          if (importIdentifier)
          {
            if ([v11 isRepresentation])
            {
              [(PHImportSource *)self processRepresentation:v11];
            }

            else
            {
              [(PHImportSource *)self processResource:v11];
            }

            [v5 addObject:v11];
          }

          else
          {
            v13 = PLImportGetLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              redactedFileNameDescription = [v11 redactedFileNameDescription];
              v15 = MEMORY[0x1E69BF220];
              parentFolderPath = [v11 parentFolderPath];
              v17 = [v15 descriptionWithPath:parentFolderPath];
              *buf = 138412546;
              v50 = redactedFileNameDescription;
              v51 = 2112;
              v52 = v17;
              _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_ERROR, "Invalid import identifier for %@ (parent path: %@)", buf, 0x16u);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v8);
    }

    v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v18 = v5;
    v19 = [v18 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v40;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v39 + 1) + 8 * j);
          if (([v23 isSidecar] & 1) == 0)
          {
            if ([v23 isPrimary])
            {
              [v34 addObject:v23];
            }

            assetsByImportIdentifier = self->_assetsByImportIdentifier;
            importIdentifier2 = [v23 importIdentifier];
            v26 = [(NSMutableDictionary *)assetsByImportIdentifier objectForKeyedSubscript:importIdentifier2];

            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v27 = v26;
            v28 = [v27 countByEnumeratingWithState:&v35 objects:v47 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v36;
              do
              {
                for (k = 0; k != v29; ++k)
                {
                  if (*v36 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  [(PHImportSource *)self addRepresentationsForAsset:*(*(&v35 + 1) + 8 * k)];
                }

                v29 = [v27 countByEnumeratingWithState:&v35 objects:v47 count:16];
              }

              while (v29);
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v20);
    }

    assetsCopy = v33;
  }

  else
  {
    v18 = PLImportGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEBUG, "'assets' was nil", buf, 2u);
    }

    v34 = 0;
  }

  return v34;
}

- (BOOL)isPairedSidecar:(id)sidecar
{
  sidecarCopy = sidecar;
  pairedSidecarsByImportIdentifier = [(PHImportSource *)self pairedSidecarsByImportIdentifier];
  importIdentifier = [sidecarCopy importIdentifier];
  v7 = [pairedSidecarsByImportIdentifier objectForKeyedSubscript:importIdentifier];
  allValues = [v7 allValues];
  v9 = [sidecarCopy url];

  path = [v9 path];
  v11 = [allValues containsObject:path];

  return v11;
}

- (void)addPairedSidecar:(id)sidecar
{
  sidecarCopy = sidecar;
  importIdentifier = [sidecarCopy importIdentifier];
  pairedSidecarsByImportIdentifier = [(PHImportSource *)self pairedSidecarsByImportIdentifier];
  v6 = [pairedSidecarsByImportIdentifier objectForKeyedSubscript:importIdentifier];

  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
    pairedSidecarsByImportIdentifier2 = [(PHImportSource *)self pairedSidecarsByImportIdentifier];
    [pairedSidecarsByImportIdentifier2 setObject:v6 forKeyedSubscript:importIdentifier];
  }

  v8 = [sidecarCopy url];
  path = [v8 path];
  v10 = MEMORY[0x1E696AD98];
  resourceType = [sidecarCopy resourceType];

  v12 = [v10 numberWithInteger:resourceType];
  [v6 setObject:path forKeyedSubscript:v12];
}

- (void)endWork
{
  v76 = *MEMORY[0x1E69E9840];
  v2 = PLImportGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v67 = "[PHImportSource endWork]";
    _os_log_impl(&dword_19C86F000, v2, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v3 = MEMORY[0x1E695DF70];
  v4 = [(NSMutableDictionary *)self->_representationsByImportIdentifier count];
  v5 = v3;
  selfCopy2 = self;
  v7 = [v5 arrayWithCapacity:v4];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  allValues = [(NSMutableDictionary *)self->_representationsByImportIdentifier allValues];
  v9 = [allValues countByEnumeratingWithState:&v62 objects:v75 count:16];
  v46 = v7;
  if (v9)
  {
    v10 = v9;
    v11 = *v63;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v63 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v62 + 1) + 8 * i);
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v58 objects:v74 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v59;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v59 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v58 + 1) + 8 * j);
              [v46 addObject:v19];
              if ([v19 isImage])
              {
                [v19 setResourceType:1];
                if ([v19 isLivePhoto])
                {
                  videoComplement = [v19 videoComplement];
                  [videoComplement setResourceType:9];
                }
              }

              else if ([v19 isMovie])
              {
                [v19 setResourceType:2];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v58 objects:v74 count:16];
          }

          while (v16);
        }

        v7 = v46;
        if ([v46 count])
        {
          options = [(PHImportSource *)self options];
          allowDuplicates = [options allowDuplicates];

          if ((allowDuplicates & 1) == 0)
          {
            [(PHImportSource *)self findDuplicatesOfItems:v46 considerItemsInTheTrash:1];
          }
        }
      }

      v10 = [allValues countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    assets = [(PHImportSource *)self assets];
    [assets addObjectsFromArray:v7];

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __25__PHImportSource_endWork__block_invoke;
    v56[3] = &unk_1E75A9AB8;
    v56[4] = self;
    v57 = v7;
    [(PHImportSource *)self notifyObserversUsingBlock:v56];
    [(NSMutableDictionary *)self->_representationsByImportIdentifier removeAllObjects];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = self->_audioByImportIdentifier;
  v44 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v52 objects:v73 count:16];
  if (v44)
  {
    v43 = *v53;
    do
    {
      v24 = 0;
      do
      {
        if (*v53 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v24;
        v25 = *(*(&v52 + 1) + 8 * v24);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v26 = [(NSMutableDictionary *)selfCopy2->_audioByImportIdentifier objectForKeyedSubscript:v25];
        v27 = [v26 countByEnumeratingWithState:&v48 objects:v72 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v49;
          do
          {
            for (k = 0; k != v28; ++k)
            {
              if (*v49 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v48 + 1) + 8 * k);
              v32 = MEMORY[0x1E696ABC0];
              fileName = [v31 fileName];
              v34 = [v32 ph_genericErrorWithLocalizedDescription:{@"Unsupported: %@ was not an audio sidecar for any other resource", fileName}];

              v35 = [v31 url];
              path = [v35 path];
              v37 = [(PHImportExceptionRecorder *)self addExceptionWithType:0 path:path underlyingError:v34 file:"/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoKit/Sources/Import/PHImportSource.m" line:481];
            }

            v28 = [v26 countByEnumeratingWithState:&v48 objects:v72 count:16];
          }

          while (v28);
        }

        v24 = v45 + 1;
        selfCopy2 = self;
      }

      while (v45 + 1 != v44);
      v44 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v52 objects:v73 count:16];
    }

    while (v44);
  }

  v38 = PLImportGetLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = objc_opt_class();
    assets2 = [(PHImportSource *)selfCopy2 assets];
    v41 = [assets2 count];
    *buf = 138543874;
    v67 = v39;
    v68 = 2048;
    v69 = selfCopy2;
    v70 = 2048;
    v71 = v41;
    _os_log_impl(&dword_19C86F000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p> loaded %lu assets", buf, 0x20u);
  }
}

- (void)endBatch
{
  v68 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_processingQueue);
  v46 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_processed, "count")}];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v3 = self->_processed;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v58;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v58 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v57 + 1) + 8 * i);
        removedSourceFileIdentifiers = [(PHImportSource *)self removedSourceFileIdentifiers];
        uuid = [v8 uuid];
        if ([removedSourceFileIdentifiers containsObject:uuid])
        {
        }

        else
        {
          v11 = [(NSMutableArray *)self->_assets containsObject:v8];

          if ((v11 & 1) == 0)
          {
            [v46 addObject:v8];
          }
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v5);
  }

  v12 = v46;
  if ([v46 count])
  {
    options = [(PHImportSource *)self options];
    allowDuplicates = [options allowDuplicates];

    if ((allowDuplicates & 1) == 0)
    {
      [(PHImportSource *)self findDuplicatesOfItems:v46 considerItemsInTheTrash:1];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = v46;
      v15 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v54;
        v43 = *v54;
        do
        {
          v18 = 0;
          v44 = v16;
          do
          {
            if (*v54 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v53 + 1) + 8 * v18);
            if ([v19 isDuplicate])
            {
              duplicates = [v19 duplicates];
              v21 = [PHImportDuplicateChecker duplicatesFromResults:duplicates forLibrary:self->_library];

              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v22 = v21;
              v23 = [v22 countByEnumeratingWithState:&v49 objects:v65 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v50;
                while (2)
                {
                  for (j = 0; j != v24; ++j)
                  {
                    if (*v50 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = *(*(&v49 + 1) + 8 * j);
                    uuid2 = [v19 uuid];
                    uuid3 = [v27 uuid];
                    v30 = [uuid2 isEqualToString:uuid3];

                    if (v30)
                    {
                      uUID = [MEMORY[0x1E696AFB0] UUID];
                      uUIDString = [uUID UUIDString];
                      [v19 setUuid:uUIDString];

                      goto LABEL_30;
                    }
                  }

                  v24 = [v22 countByEnumeratingWithState:&v49 objects:v65 count:16];
                  if (v24)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_30:

              v17 = v43;
              v16 = v44;
            }

            v33 = PLImportGetLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              uuid4 = [v19 uuid];
              duplicates2 = [v19 duplicates];
              v36 = [PHImportDuplicateChecker duplicatesFromResults:duplicates2 forLibrary:self->_library];
              *buf = 138412546;
              v62 = uuid4;
              v63 = 2112;
              v64 = v36;
              _os_log_impl(&dword_19C86F000, v33, OS_LOG_TYPE_DEBUG, "asset: %@\n duplicates: %@", buf, 0x16u);
            }

            ++v18;
          }

          while (v18 != v16);
          v16 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
        }

        while (v16);
      }

      v12 = v46;
    }
  }

  v37 = PLImportGetLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v38 = [v12 count];
    *buf = 136315394;
    v62 = "[PHImportSource endBatch]";
    v63 = 2048;
    v64 = v38;
    _os_log_impl(&dword_19C86F000, v37, OS_LOG_TYPE_DEBUG, "%s (%lu)", buf, 0x16u);
  }

  if ([v12 count])
  {
    assets = [(PHImportSource *)self assets];
    [assets addObjectsFromArray:v12];

    v40 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__PHImportSource_endBatch__block_invoke;
    block[3] = &unk_1E75AAEB0;
    block[4] = self;
    v48 = v12;
    dispatch_async(v40, block);
  }

  v41 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_processed, "count")}];
  processed = self->_processed;
  self->_processed = v41;
}

void __26__PHImportSource_endBatch__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __26__PHImportSource_endBatch__block_invoke_2;
  v2[3] = &unk_1E75A9AB8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 notifyObserversUsingBlock:v2];
}

- (id)assetsByProcessingItem:(id)item
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PHImportSource.m" lineNumber:404 description:@"Abstract Base Class Method"];

  return 0;
}

- (void)processNextItems
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PHImportSource_processNextItems__block_invoke;
  block[3] = &unk_1E75AB270;
  block[4] = self;
  dispatch_async(processingQueue, block);
}

void __34__PHImportSource_processNextItems__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) progress];
  v3 = [v2 isCancelled];

  if ((v3 & 1) == 0)
  {
    do
    {
      v4 = [*(a1 + 32) nextItem];
      if (!v4)
      {
        break;
      }

      v5 = v4;
      v6 = [*(a1 + 32) assetsByProcessingItem:v4];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v28;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v28 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v27 + 1) + 8 * i);
            if (([*(*(a1 + 32) + 200) containsObject:v11] & 1) == 0)
            {
              [*(*(a1 + 32) + 200) addObject:v11];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v8);
      }

      if ([*(a1 + 32) batchComplete])
      {
        [*(a1 + 32) endBatch];
      }

      v12 = [*(a1 + 32) progress];
      v13 = [v12 isCancelled];
    }

    while (!v13);
  }

  v14 = [*(a1 + 32) isDone];
  v15 = *(a1 + 32);
  if (v14)
  {
    [v15 endBatch];
    [*(a1 + 32) endWork];
    v16 = PLImportGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [*(a1 + 32) assets];
      v18 = [v17 count];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v20 = v19 - *(*(a1 + 32) + 56);
      *buf = 134218240;
      v32 = v18;
      v33 = 2048;
      v34 = v20;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEBUG, "-----===== Time to load %lu assets: %g =====-----", buf, 0x16u);
    }
  }

  else
  {
    v21 = [v15 progress];
    v22 = [v21 isCancelled];

    if (!v22)
    {
      return;
    }
  }

  v23 = [*(a1 + 32) completion];

  if (v23)
  {
    v24 = [*(a1 + 32) completion];
    v25 = [*(a1 + 32) assets];
    v26 = [*(a1 + 32) exceptions];
    (v24)[2](v24, v25, v26);

    [*(a1 + 32) setCompletion:0];
  }
}

- (void)beginProcessingWithCompletion:(id)completion
{
  v7 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = PLImportGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[PHImportSource beginProcessingWithCompletion:]";
    _os_log_impl(&dword_19C86F000, v4, OS_LOG_TYPE_DEBUG, "%s", &v5, 0xCu);
  }

  completionCopy[2](completionCopy);
}

- (void)beginWork
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLImportGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v6 = "[PHImportSource beginWork]";
    _os_log_impl(&dword_19C86F000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__PHImportSource_beginWork__block_invoke;
  v4[3] = &unk_1E75AB270;
  v4[4] = self;
  [(PHImportSource *)self beginProcessingWithCompletion:v4];
}

uint64_t __27__PHImportSource_beginWork__block_invoke(uint64_t a1)
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 56) = v2;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 208) = v3;
  v4 = *(a1 + 32);

  return [v4 processNextItems];
}

- (BOOL)containsSupportedMediaWithImportExceptions:(id *)exceptions
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)dispatchAssetDataRequestAsync:(id)async usingBlock:(id)block
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)stopAssetLoading
{
  controlQueue = self->_controlQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PHImportSource_stopAssetLoading__block_invoke;
  block[3] = &unk_1E75AB270;
  block[4] = self;
  dispatch_sync(controlQueue, block);
}

uint64_t __34__PHImportSource_stopAssetLoading__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOpen:0];
  result = [*(a1 + 32) stalled];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 processNextItems];
  }

  return result;
}

- (void)resumeAssetLoading
{
  controlQueue = self->_controlQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PHImportSource_resumeAssetLoading__block_invoke;
  block[3] = &unk_1E75AB270;
  block[4] = self;
  dispatch_sync(controlQueue, block);
}

void __36__PHImportSource_resumeAssetLoading__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progress];
  v3 = [v2 isPaused];

  if (v3)
  {
    v4 = [*(a1 + 32) processingQueue];
    dispatch_resume(v4);
  }
}

- (void)pauseAssetLoading
{
  controlQueue = self->_controlQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PHImportSource_pauseAssetLoading__block_invoke;
  block[3] = &unk_1E75AB270;
  block[4] = self;
  dispatch_sync(controlQueue, block);
}

void __35__PHImportSource_pauseAssetLoading__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) progress];
  if (([v4 isPaused]& 1) == 0)
  {
    v2 = [*(a1 + 32) progress];
    v3 = [v2 isCancelled];

    if (v3)
    {
      return;
    }

    v4 = [*(a1 + 32) processingQueue];
    dispatch_suspend(v4);
  }
}

- (id)loadAssetsForLibrary:(id)library allowDuplicates:(BOOL)duplicates order:(int64_t)order batchSize:(unint64_t)size batchInterval:(double)interval atEnd:(id)end
{
  v42 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  endCopy = end;
  v17 = PLImportGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v39 = objc_opt_class();
    v40 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p> loading assets", buf, 0x16u);
  }

  objc_storeStrong(&self->_library, library);
  photoLibraryBundle = [libraryCopy photoLibraryBundle];
  timeZoneLookup = [photoLibraryBundle timeZoneLookup];
  timeZoneLookup = self->_timeZoneLookup;
  self->_timeZoneLookup = timeZoneLookup;

  v21 = _Block_copy(endCopy);
  completion = self->_completion;
  self->_completion = v21;

  self->_batchSize = size;
  intervalCopy = 0.25;
  if (interval != 0.0)
  {
    intervalCopy = interval;
  }

  self->_batchInterval = intervalCopy;
  self->_rampBatchInterval = interval <= 0.0;
  self->_assetLoadOrder = order;
  v24 = MEMORY[0x1E696AE38];
  items = [(PHImportSource *)self items];
  v26 = [v24 discreteProgressWithTotalUnitCount:{objc_msgSend(items, "count")}];

  [v26 setCancellable:1];
  objc_initWeak(buf, self);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __91__PHImportSource_loadAssetsForLibrary_allowDuplicates_order_batchSize_batchInterval_atEnd___block_invoke;
  v36[3] = &unk_1E75A9A90;
  objc_copyWeak(&v37, buf);
  [v26 setCancellationHandler:v36];
  [v26 setPausable:1];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __91__PHImportSource_loadAssetsForLibrary_allowDuplicates_order_batchSize_batchInterval_atEnd___block_invoke_2;
  v34[3] = &unk_1E75A9A90;
  objc_copyWeak(&v35, buf);
  [v26 setPausingHandler:v34];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __91__PHImportSource_loadAssetsForLibrary_allowDuplicates_order_batchSize_batchInterval_atEnd___block_invoke_3;
  v32[3] = &unk_1E75A9A90;
  objc_copyWeak(&v33, buf);
  [v26 setResumingHandler:v32];
  [v26 setCancellable:1];
  [(PHImportSource *)self setProgress:v26];
  v27 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__PHImportSource_loadAssetsForLibrary_allowDuplicates_order_batchSize_batchInterval_atEnd___block_invoke_4;
  block[3] = &unk_1E75AA650;
  block[4] = self;
  duplicatesCopy = duplicates;
  dispatch_async(v27, block);

  progress = [(PHImportSource *)self progress];
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(buf);

  return progress;
}

void __91__PHImportSource_loadAssetsForLibrary_allowDuplicates_order_batchSize_batchInterval_atEnd___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained stopAssetLoading];
    WeakRetained = v2;
  }
}

void __91__PHImportSource_loadAssetsForLibrary_allowDuplicates_order_batchSize_batchInterval_atEnd___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained pauseAssetLoading];
    WeakRetained = v2;
  }
}

void __91__PHImportSource_loadAssetsForLibrary_allowDuplicates_order_batchSize_batchInterval_atEnd___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained resumeAssetLoading];
    WeakRetained = v2;
  }
}

uint64_t __91__PHImportSource_loadAssetsForLibrary_allowDuplicates_order_batchSize_batchInterval_atEnd___block_invoke_4(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) setOptions:v2];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) options];
  [v4 setAllowDuplicates:v3];

  v5 = *(a1 + 32);

  return [v5 beginWork];
}

- (id)loadAssetsForLibrary:(id)library allowDuplicates:(BOOL)duplicates order:(int64_t)order batchInterval:(double)interval atEnd:(id)end
{
  if (interval == 0.0)
  {
    interval = 0.0;
  }

  return [(PHImportSource *)self loadAssetsForLibrary:library allowDuplicates:duplicates order:order batchSize:0 batchInterval:end atEnd:interval];
}

- (void)notifyObserversUsingBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_lock(&self->_observersLock);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)removeImportSourceObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)addImportSourceObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(PHImportSource *)self name];
  v6 = [v3 stringWithFormat:@"<%@: %p name = %@>", v4, self, name];;

  return v6;
}

- (PHImportSource)init
{
  v43 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = PHImportSource;
  v2 = [(PHImportExceptionRecorder *)&v38 init];
  if (v2)
  {
    v3 = objc_opt_new();
    uUIDString = [v3 UUIDString];
    uuid = v2->_uuid;
    v2->_uuid = uUIDString;

    v6 = objc_opt_new();
    items = v2->_items;
    v2->_items = v6;

    v8 = objc_opt_new();
    assets = v2->_assets;
    v2->_assets = v8;

    v2->_batchSize = 0;
    v2->_batchCount = 0;
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetsByImportIdentifier = v2->_assetsByImportIdentifier;
    v2->_assetsByImportIdentifier = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    representationsByImportIdentifier = v2->_representationsByImportIdentifier;
    v2->_representationsByImportIdentifier = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    audioByImportIdentifier = v2->_audioByImportIdentifier;
    v2->_audioByImportIdentifier = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pairedSidecarsByImportIdentifier = v2->_pairedSidecarsByImportIdentifier;
    v2->_pairedSidecarsByImportIdentifier = v16;

    v18 = objc_opt_new();
    processed = v2->_processed;
    v2->_processed = v18;

    v20 = objc_opt_new();
    duplicateAssets = v2->_duplicateAssets;
    v2->_duplicateAssets = v20;

    v22 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v23 = dispatch_queue_create("dup path collection", v22);
    dupPathCollectionQueue = v2->_dupPathCollectionQueue;
    v2->_dupPathCollectionQueue = v23;

    v25 = dispatch_queue_create("control queue", v22);
    controlQueue = v2->_controlQueue;
    v2->_controlQueue = v25;

    v27 = dispatch_queue_create("processing queue", v22);
    processingQueue = v2->_processingQueue;
    v2->_processingQueue = v27;

    v2->_itemsLock._os_unfair_lock_opaque = 0;
    v29 = objc_opt_new();
    removedSourceFileIdentifiers = v2->_removedSourceFileIdentifiers;
    v2->_removedSourceFileIdentifiers = v29;

    v2->_sourceAccessState = 2;
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    importIdentifierToLivePhotoStateMap = v2->_importIdentifierToLivePhotoStateMap;
    v2->_importIdentifierToLivePhotoStateMap = v31;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v2->_observersLock._os_unfair_lock_opaque = 0;
    v35 = PLImportGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_opt_class();
      *buf = 138543618;
      v40 = v36;
      v41 = 2048;
      v42 = v2;
      _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_DEFAULT, "Creating %{public}@ <%p>", buf, 0x16u);
    }
  }

  return v2;
}

@end