@interface MPTiledArtworkDataSource
+ (CGSize)_tileSizeForFittingSize:(CGSize)a3 rows:(unint64_t)a4 columns:(unint64_t)a5 spacing:(double)a6;
+ (id)_errorWithDescription:(id)a3;
+ (id)_loadingRequestForArtworkCatalog:(id)a3;
+ (id)_representationCacheKeyForArtworkCatalog:(id)a3 forAnyRevision:(BOOL)a4;
+ (id)sharedDataSource;
- (BOOL)_hasLoadingRequestForArtworkCatalog:(id)a3;
- (BOOL)isRepresentation:(id)a3 bestRepresentationForArtworkCatalog:(id)a4;
- (MPTiledArtworkDataSource)init;
- (id)existingArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5;
- (id)existingRepresentationForArtworkCatalog:(id)a3;
- (id)visualIdenticalityIdentifierForCatalog:(id)a3;
- (void)_addLoadingRequestForArtworkCatalog:(id)a3;
- (void)_performSyncBlock:(id)a3;
- (void)_removeLoadingRequestForArtworkCatalog:(id)a3;
- (void)cancelLoadingRepresentationForArtworkCatalog:(id)a3;
- (void)loadArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5 systemEffectHandler:(id)a6 completionHandler:(id)a7;
- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4;
@end

@implementation MPTiledArtworkDataSource

- (void)_removeLoadingRequestForArtworkCatalog:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _loadingRequestForArtworkCatalog:v4];

  [(NSCountedSet *)self->_loadingTiledArtworkRequests removeObject:v5];
}

- (void)_performSyncBlock:(id)a3
{
  block = a3;
  if (dispatch_get_specific(_MPTiledArtworkDataSourceQueueSpecificIsAccessQueue))
  {
    if (block)
    {
      block[2]();
    }
  }

  else
  {
    dispatch_sync(self->_loadingTiledArtworkRequestsAccessQueue, block);
  }
}

- (BOOL)_hasLoadingRequestForArtworkCatalog:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _loadingRequestForArtworkCatalog:v4];

  LOBYTE(self) = [(NSCountedSet *)self->_loadingTiledArtworkRequests containsObject:v5];
  return self;
}

- (void)_addLoadingRequestForArtworkCatalog:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _loadingRequestForArtworkCatalog:v4];

  [(NSCountedSet *)self->_loadingTiledArtworkRequests addObject:v5];
}

- (void)loadArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5 systemEffectHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (a3 == 1)
  {
    v17 = [v12 token];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __119__MPTiledArtworkDataSource_loadArtworkEffectResultForEffectType_catalog_options_systemEffectHandler_completionHandler___block_invoke;
    v30[3] = &unk_1E76823C0;
    v30[4] = self;
    v18 = v12;
    v31 = v18;
    [(MPTiledArtworkDataSource *)self _performSyncBlock:v30];
    tilingArtworkCatalogOperationQueue = self->_tilingArtworkCatalogOperationQueue;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __119__MPTiledArtworkDataSource_loadArtworkEffectResultForEffectType_catalog_options_systemEffectHandler_completionHandler___block_invoke_2;
    v23[3] = &unk_1E7675968;
    v23[4] = self;
    v24 = v18;
    v25 = v17;
    v29 = 1;
    v26 = v13;
    v27 = v14;
    v28 = v16;
    v20 = v17;
    [(NSOperationQueue *)tilingArtworkCatalogOperationQueue addOperationWithBlock:v23];
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __119__MPTiledArtworkDataSource_loadArtworkEffectResultForEffectType_catalog_options_systemEffectHandler_completionHandler___block_invoke_5;
    v21[3] = &unk_1E7675C20;
    v22 = v15;
    (*(v14 + 2))(v14, v21);
    v20 = v22;
  }
}

void __119__MPTiledArtworkDataSource_loadArtworkEffectResultForEffectType_catalog_options_systemEffectHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __119__MPTiledArtworkDataSource_loadArtworkEffectResultForEffectType_catalog_options_systemEffectHandler_completionHandler___block_invoke_3;
  v9[3] = &unk_1E7681330;
  v9[4] = v2;
  v10 = *(a1 + 40);
  v11 = &v12;
  [v2 _performSyncBlock:v9];
  if ((v13[3] & 1) == 0)
  {
    v3 = [*(a1 + 48) artworkCatalogsWithCount:1];
    v4 = [v3 firstObject];

    v5 = [v4 dataSource];
    if (objc_opt_respondsToSelector())
    {
      [v5 loadArtworkEffectResultForEffectType:*(a1 + 80) catalog:v4 options:*(a1 + 56) systemEffectHandler:*(a1 + 64) completionHandler:*(a1 + 72)];
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __119__MPTiledArtworkDataSource_loadArtworkEffectResultForEffectType_catalog_options_systemEffectHandler_completionHandler___block_invoke_4;
      v7[3] = &unk_1E7675C20;
      v6 = *(a1 + 64);
      v8 = *(a1 + 72);
      (*(v6 + 16))(v6, v7);
    }
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t __119__MPTiledArtworkDataSource_loadArtworkEffectResultForEffectType_catalog_options_systemEffectHandler_completionHandler___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __119__MPTiledArtworkDataSource_loadArtworkEffectResultForEffectType_catalog_options_systemEffectHandler_completionHandler___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _hasLoadingRequestForArtworkCatalog:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result ^ 1;
  if (((result ^ 1) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _removeLoadingRequestForArtworkCatalog:v4];
  }

  return result;
}

uint64_t __119__MPTiledArtworkDataSource_loadArtworkEffectResultForEffectType_catalog_options_systemEffectHandler_completionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)existingArtworkEffectResultForEffectType:(int64_t)a3 catalog:(id)a4 options:(id)a5
{
  v7 = a5;
  if (a3 == 1)
  {
    v8 = [a4 token];
    if ([v8 hasExistingArtworkCatalogsWithCount:1])
    {
      v9 = [v8 existingArtworkCatalogsWithCount:1];
      v10 = [v9 firstObject];

      v11 = [v10 dataSource];
      if (objc_opt_respondsToSelector())
      {
        v12 = [v11 existingArtworkEffectResultForEffectType:1 catalog:v10 options:v7];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)visualIdenticalityIdentifierForCatalog:(id)a3
{
  v3 = [a3 token];
  v4 = [MPTiledArtworkRepresentationCacheKey alloc];
  v5 = [(MPTiledArtworkRepresentationCacheKey *)v4 initWithTiledArtworkRequest:v3 scaledFittingSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  return v5;
}

- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 token];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = [v8 numberOfRows];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = [v8 numberOfColumns];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = v34[3] * v38[3];
  v9 = [v8 revisionIdentifier];
  [v8 tileSpacing];
  v11 = v10;
  if (!v30[3])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Tiled artwork count cannot be 0."];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke;
  v27[3] = &unk_1E76823C0;
  v27[4] = self;
  v12 = v6;
  v28 = v12;
  [(MPTiledArtworkDataSource *)self _performSyncBlock:v27];
  tilingArtworkCatalogOperationQueue = self->_tilingArtworkCatalogOperationQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_2;
  v18[3] = &unk_1E7675940;
  v18[4] = self;
  v14 = v12;
  v19 = v14;
  v15 = v7;
  v22 = v15;
  v16 = v8;
  v20 = v16;
  v23 = &v29;
  v24 = &v37;
  v25 = &v33;
  v17 = v9;
  v21 = v17;
  v26 = v11;
  [(NSOperationQueue *)tilingArtworkCatalogOperationQueue addOperationWithBlock:v18];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

void __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_2(uint64_t a1)
{
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v2 = *(a1 + 32);
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_3;
  v92[3] = &unk_1E7681330;
  v92[4] = v2;
  v93 = *(a1 + 40);
  v94 = &v95;
  [v2 _performSyncBlock:v92];
  if (*(v96 + 24) != 1)
  {
    v3 = [*(a1 + 48) artworkCatalogsWithCount:*(*(*(a1 + 72) + 8) + 24)];
    v4 = [v3 count];
    if (v4 < *(*(*(a1 + 72) + 8) + 24))
    {
      if (!v4)
      {
        v15 = [objc_opt_class() _errorWithDescription:@"No artwork catalogs were found"];
        (*(*(a1 + 64) + 16))();
LABEL_39:

        goto LABEL_40;
      }

      *(*(*(a1 + 80) + 8) + 24) = 1;
      *(*(*(a1 + 88) + 8) + 24) = 1;
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    v5 = [*(a1 + 40) cache];
    v6 = v5;
    if (!v5)
    {
      v6 = *(*(a1 + 32) + 32);
    }

    v61 = v6;

    v7 = [objc_opt_class() _representationCacheKeyForArtworkCatalog:*(a1 + 40) forAnyRevision:1];
    v60 = v7;
    if (v7)
    {
      v8 = [v61 objectForKey:v7];
      v9 = [v8 representationToken];
      v10 = [v9 tileArtworkVisualIdenticalityIdentifiers];
      if (v10)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (*(*(*(a1 + 72) + 8) + 24))
        {
          v12 = 0;
          while (1)
          {
            v13 = [v3 objectAtIndex:v12];
            [v13 setRenderHint:{objc_msgSend(*(a1 + 40), "renderHint")}];
            v14 = [v13 visualIdenticalityIdentifier];
            if (!v14)
            {
              break;
            }

            [v11 addObject:v14];

            if (++v12 >= *(*(*(a1 + 72) + 8) + 24))
            {
              goto LABEL_17;
            }
          }

          v11 = 0;
        }

LABEL_17:
        if ([v11 isEqualToArray:v10])
        {
          v16 = [*(a1 + 40) visualIdenticalityIdentifier];
          [v8 representationSize];
          v18 = v17;
          v20 = v19;
          v21 = [v8 image];
          v22 = [MPArtworkRepresentation representationForVisualIdentity:v16 withSize:v21 image:v18, v20];

          v23 = objc_alloc_init(MPTiledArtworkRepresentationToken);
          [(MPTiledArtworkRepresentationToken *)v23 setTileArtworkVisualIdenticalityIdentifiers:v10];
          [(MPTiledArtworkRepresentationToken *)v23 setRevisionIdentifier:*(a1 + 56)];
          [v22 setRepresentationToken:v23];
          v15 = v61;
          v24 = [objc_opt_class() _representationCacheKeyForArtworkCatalog:*(a1 + 40) forAnyRevision:0];
          if (v24)
          {
            [v61 setObject:v22 forKey:v24];
          }

          [v61 setObject:v22 forKey:v60];
          (*(*(a1 + 64) + 16))();

          v25 = v60;
LABEL_38:

          goto LABEL_39;
        }
      }
    }

    v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(*(*(a1 + 72) + 8) + 24)];
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(*(*(a1 + 72) + 8) + 24)];
    v28 = dispatch_queue_create("com.apple.MediaPlayer.MPTiledArtworkDataSource.loadingTileDataAccessQueue", 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_4;
    block[3] = &unk_1E7681330;
    v91 = *(a1 + 72);
    v29 = v26;
    v89 = v29;
    v30 = v27;
    v90 = v30;
    dispatch_sync(v28, block);
    v31 = dispatch_group_create();
    [*(a1 + 40) destinationScale];
    if (v32 <= 0.00000011920929)
    {
      v33 = 1.0;
    }

    else
    {
      v33 = v32;
    }

    [*(a1 + 40) scaledFittingSize];
    v35 = v34;
    v37 = v36;
    MSVGetMaximumScreenSize();
    if (v38 < v39)
    {
      v38 = v39;
    }

    v40 = v38;
    if (v35 >= v40)
    {
      v41 = v40;
    }

    else
    {
      v41 = v35;
    }

    if (v37 >= v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = v37;
    }

    v43 = v41 / v33;
    v44 = v42 / v33;
    [objc_opt_class() _tileSizeForFittingSize:*(*(*(a1 + 80) + 8) + 24) rows:*(*(*(a1 + 88) + 8) + 24) columns:v41 / v33 spacing:{v42 / v33, *(a1 + 96)}];
    v47 = v45;
    v48 = v46;
    v58 = v42;
    v59 = v41;
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      v49 = 0;
      v50 = ceil(v45 * 1.77777778);
      v51 = ceil(v46 * 1.77777778);
      do
      {
        dispatch_group_enter(v31);
        v52 = [v3 objectAtIndexedSubscript:v49];
        [v52 setRenderHint:{objc_msgSend(*(a1 + 40), "renderHint")}];
        [v52 setFittingSize:{v50, v51}];
        [v52 setDestinationScale:v33];
        objc_initWeak(&location, v52);
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_5;
        v81[3] = &unk_1E76758A0;
        objc_copyWeak(v86, &location);
        v82 = v28;
        v83 = v29;
        v86[1] = v49;
        v84 = v30;
        v85 = v31;
        [v52 requestImageWithCompletion:v81];

        objc_destroyWeak(v86);
        objc_destroyWeak(&location);

        ++v49;
      }

      while (v49 < *(*(*(a1 + 72) + 8) + 24));
    }

    v53 = *(a1 + 32);
    v54 = *(v53 + 24);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_7;
    v62[3] = &unk_1E7675918;
    v63 = v28;
    v64 = v29;
    v65 = v30;
    v66 = v53;
    v55 = *(a1 + 64);
    v73 = v33;
    v74 = v43;
    v56 = *(a1 + 72);
    v71 = v55;
    v72 = v56;
    v75 = v44;
    v76 = v47;
    v57 = *(a1 + 96);
    v77 = v48;
    v78 = v57;
    v67 = *(a1 + 40);
    v79 = v59;
    v80 = v58;
    v68 = *(a1 + 56);
    v15 = v61;
    v69 = v61;
    v25 = v60;
    v70 = v60;
    v10 = v30;
    v9 = v29;
    v8 = v28;
    dispatch_group_notify(v31, v54, v62);

    v11 = v89;
    goto LABEL_38;
  }

  v3 = [objc_opt_class() _errorWithDescription:@"Tiling artwork request was cancelled"];
  (*(*(a1 + 64) + 16))();
LABEL_40:

  _Block_object_dispose(&v95, 8);
}

uint64_t __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _hasLoadingRequestForArtworkCatalog:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result ^ 1;
  if (((result ^ 1) & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _removeLoadingRequestForArtworkCatalog:v4];
  }

  return result;
}

void __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_4(void *a1)
{
  if (*(*(a1[6] + 8) + 24))
  {
    v2 = 0;
    do
    {
      v3 = a1[4];
      v4 = [MEMORY[0x1E695DFB0] null];
      [v3 addObject:v4];

      v5 = a1[5];
      v6 = [MEMORY[0x1E695DFB0] null];
      [v5 addObject:v6];

      ++v2;
    }

    while (v2 < *(*(a1[6] + 8) + 24));
  }
}

void __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_7(uint64_t a1)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__1140;
  v44 = __Block_byref_object_dispose__1141;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__1140;
  v38 = __Block_byref_object_dispose__1141;
  v39 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_23;
  block[3] = &unk_1E767FE70;
  v32 = &v40;
  v2 = *(a1 + 32);
  v30 = *(a1 + 40);
  v33 = &v34;
  v31 = *(a1 + 48);
  dispatch_sync(v2, block);
  v3 = v41[5];
  v4 = [MEMORY[0x1E695DFB0] null];
  LODWORD(v3) = [v3 containsObject:v4];

  if (v3)
  {
    v5 = [objc_opt_class() _errorWithDescription:{@"Artwork catalogs found, but at least one had an empty image"}];
    (*(*(a1 + 96) + 16))();
  }

  else
  {
    v6 = [MEMORY[0x1E69DCA80] preferredFormat];
    [v6 setOpaque:0];
    [v6 setScale:*(a1 + 112)];
    v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v6 format:{*(a1 + 120), *(a1 + 128)}];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_2_29;
    v24[3] = &unk_1E76758C8;
    v8 = *(a1 + 104);
    v25 = *(a1 + 136);
    v24[4] = v8;
    v24[5] = &v40;
    v9 = *(a1 + 152);
    v26 = *(a1 + 112);
    v27 = v9;
    v28 = *(a1 + 120);
    v5 = [v7 imageWithActions:v24];
    if (v5)
    {
      v11 = [*(a1 + 64) visualIdenticalityIdentifier];
      v12 = [MPArtworkRepresentation representationForVisualIdentity:v11 withSize:v5 image:*(a1 + 160), *(a1 + 168)];

      v13 = objc_alloc_init(MPTiledArtworkRepresentationToken);
      v14 = v35[5];
      v15 = [MEMORY[0x1E695DFB0] null];
      LOBYTE(v14) = [v14 containsObject:v15];

      if ((v14 & 1) == 0)
      {
        [(MPTiledArtworkRepresentationToken *)v13 setTileArtworkVisualIdenticalityIdentifiers:v35[5]];
      }

      [(MPTiledArtworkRepresentationToken *)v13 setRevisionIdentifier:*(a1 + 72)];
      [v12 setRepresentationToken:v13];
      v16 = [objc_opt_class() _representationCacheKeyForArtworkCatalog:*(a1 + 64) forAnyRevision:0];
      if (v16)
      {
        [*(a1 + 80) setObject:v12 forKey:v16];
      }

      if (*(a1 + 88))
      {
        [*(a1 + 80) setObject:v12 forKey:?];
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_3_31;
      v19[3] = &unk_1E76758F0;
      v17 = v12;
      v20 = v17;
      v18 = v16;
      v21 = v18;
      v22 = *(a1 + 88);
      v23 = *(a1 + 80);
      [v5 prepareForDisplayWithCompletionHandler:v19];
    }

    else
    {
      v17 = 0;
    }

    (*(*(a1 + 96) + 16))(*(a1 + 96), v17, 0, v10);
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
}

void __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = [WeakRetained visualIdenticalityIdentifier];
  if (v3 | v5)
  {
    v6 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_6;
    block[3] = &unk_1E7677500;
    v10 = v3;
    v7 = *(a1 + 40);
    v8 = *(a1 + 72);
    v11 = v7;
    v14 = v8;
    v12 = v5;
    v13 = *(a1 + 48);
    dispatch_sync(v6, block);
  }

  dispatch_group_leave(*(a1 + 56));
}

uint64_t __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_6(uint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    result = [*(result + 40) replaceObjectAtIndex:*(result + 64) withObject:?];
  }

  if (v1[6])
  {
    v2 = v1[7];
    v3 = v1[8];

    return [v2 replaceObjectAtIndex:v3 withObject:?];
  }

  return result;
}

void __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_23(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 40) copy];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_2_29(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v2 = 0;
    v4 = *MEMORY[0x1E695EFF8];
    v3 = *(MEMORY[0x1E695EFF8] + 8);
    do
    {
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSaveGState(CurrentContext);
      v9.origin.x = v4;
      v9.origin.y = v3;
      v9.size.width = *(a1 + 48);
      v9.size.height = *(a1 + 56);
      UIRectClip(v9);
      v6 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndex:v2];
      [v6 size];
      [v6 size];
      [v6 size];
      [v6 size];
      UIRectGetCenter();
      UIRectCenteredAboutPointScale();
      [v6 drawInRect:?];
      v7 = *(a1 + 72);
      v4 = v4 + *(a1 + 48) + v7;
      if (v4 >= *(a1 + 80))
      {
        v3 = v7 + v3 + *(a1 + 56);
        v4 = 0.0;
      }

      v8 = UIGraphicsGetCurrentContext();
      CGContextRestoreGState(v8);

      ++v2;
    }

    while (v2 < *(*(*(a1 + 32) + 8) + 24));
  }
}

void __82__MPTiledArtworkDataSource_loadRepresentationForArtworkCatalog_completionHandler___block_invoke_3_31(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v6 = [*(a1 + 32) representationWithPreparedImage:a2];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v3;
LABEL_6:
    [*(a1 + 56) setObject:v6 forKey:v4];

    v5 = v6;
    goto LABEL_7;
  }

  v4 = *(a1 + 48);
  v5 = v6;
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (void)cancelLoadingRepresentationForArtworkCatalog:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__MPTiledArtworkDataSource_cancelLoadingRepresentationForArtworkCatalog___block_invoke;
  v6[3] = &unk_1E76823C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MPTiledArtworkDataSource *)self _performSyncBlock:v6];
}

- (id)existingRepresentationForArtworkCatalog:(id)a3
{
  v4 = a3;
  v5 = [v4 cache];
  tiledArtworkRepresentationFallbackCache = v5;
  if (!v5)
  {
    tiledArtworkRepresentationFallbackCache = self->_tiledArtworkRepresentationFallbackCache;
  }

  v7 = tiledArtworkRepresentationFallbackCache;

  v8 = [objc_opt_class() _representationCacheKeyForArtworkCatalog:v4 forAnyRevision:0];
  if (!v8 || ([(NSCache *)v7 objectForKey:v8], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [objc_opt_class() _representationCacheKeyForArtworkCatalog:v4 forAnyRevision:1];
    v9 = [(NSCache *)v7 objectForKey:v10];
  }

  return v9;
}

- (BOOL)isRepresentation:(id)a3 bestRepresentationForArtworkCatalog:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 representationSize];
  v8 = v7;
  v10 = v9;
  [v6 scaledFittingSize];
  v12 = v11;
  v14 = v13;
  MSVGetMaximumScreenSize();
  if (v15 < v16)
  {
    v15 = v16;
  }

  v17 = v15;
  if (v12 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v12;
  }

  if (vabdd_f64(v8, v18) >= 0.00000011920929)
  {
    goto LABEL_12;
  }

  if (v14 < v17)
  {
    v17 = v14;
  }

  if (vabdd_f64(v10, v17) >= 0.00000011920929)
  {
LABEL_12:
    v23 = 0;
  }

  else
  {
    v19 = [v6 token];
    v20 = [v19 revisionIdentifier];
    if (v20)
    {
      v21 = [v5 representationToken];
      v22 = [v21 revisionIdentifier];
      v23 = [v22 isEqual:v20];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23;
}

- (MPTiledArtworkDataSource)init
{
  v14.receiver = self;
  v14.super_class = MPTiledArtworkDataSource;
  v2 = [(MPTiledArtworkDataSource *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    tilingArtworkCatalogOperationQueue = v2->_tilingArtworkCatalogOperationQueue;
    v2->_tilingArtworkCatalogOperationQueue = v3;

    [(NSOperationQueue *)v2->_tilingArtworkCatalogOperationQueue setName:@"com.apple.MediaPlayer.MPTiledArtworkDataSource.TilingArtworkCatalogOperationQueue"];
    [(NSOperationQueue *)v2->_tilingArtworkCatalogOperationQueue setMaxConcurrentOperationCount:5];
    v5 = dispatch_queue_create("com.apple.MediaPlayer.MPTiledArtworkDataSource.LoadingTiledArtworkRequestsQueue", 0);
    loadingTiledArtworkRequestsAccessQueue = v2->_loadingTiledArtworkRequestsAccessQueue;
    v2->_loadingTiledArtworkRequestsAccessQueue = v5;

    v7 = dispatch_queue_create("com.apple.MediaPlayer.MPTiledArtworkDataSource.RenderingTiledArtworkRequestsQueue", 0);
    renderingTiledArtworkRequestsQueue = v2->_renderingTiledArtworkRequestsQueue;
    v2->_renderingTiledArtworkRequestsQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    tiledArtworkRepresentationFallbackCache = v2->_tiledArtworkRepresentationFallbackCache;
    v2->_tiledArtworkRepresentationFallbackCache = v9;

    [(NSCache *)v2->_tiledArtworkRepresentationFallbackCache setCountLimit:50];
    v11 = objc_alloc_init(MEMORY[0x1E696AB50]);
    loadingTiledArtworkRequests = v2->_loadingTiledArtworkRequests;
    v2->_loadingTiledArtworkRequests = v11;
  }

  return v2;
}

+ (CGSize)_tileSizeForFittingSize:(CGSize)a3 rows:(unint64_t)a4 columns:(unint64_t)a5 spacing:(double)a6
{
  v6 = (a3.width - (a5 - 1) * a6) / a5;
  v7 = (a3.height - (a4 - 1) * a6) / a4;
  result.height = v7;
  result.width = v6;
  return result;
}

+ (id)_loadingRequestForArtworkCatalog:(id)a3
{
  v3 = a3;
  v4 = [v3 token];
  [v3 scaledFittingSize];
  v6 = v5;
  v8 = v7;

  MSVGetMaximumScreenSize();
  if (v9 < v10)
  {
    v9 = v10;
  }

  v11 = v9;
  if (v6 >= v11)
  {
    v6 = v11;
  }

  if (v8 >= v11)
  {
    v8 = v11;
  }

  v12 = [[MPTiledArtworkRepresentationCacheKey alloc] initWithTiledArtworkRequest:v4 scaledFittingSize:v6, v8];

  return v12;
}

+ (id)_errorWithDescription:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E696A278];
  v9[0] = a3;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPTiledArtworkError" code:0 userInfo:v5];

  return v6;
}

+ (id)_representationCacheKeyForArtworkCatalog:(id)a3 forAnyRevision:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 token];
  v7 = [v6 entityIdentifier];
  if (v7)
  {
    v8 = [v6 namespaceIdentifier];

    if (v8)
    {
      [v5 scaledFittingSize];
      v10 = v9;
      v12 = v11;
      MSVGetMaximumScreenSize();
      if (v13 < v14)
      {
        v13 = v14;
      }

      v15 = v13;
      if (v10 >= v15)
      {
        v10 = v15;
      }

      if (v12 >= v15)
      {
        v12 = v15;
      }

      if (a4)
      {
        v16 = [v6 revisionIdentifier];

        if (v16)
        {
          v17 = [v6 copy];
          [v17 setRevisionIdentifier:0];
        }

        else
        {
          v17 = v6;
        }

        v7 = [[MPTiledArtworkRepresentationCacheKey alloc] initWithTiledArtworkRequest:v17 scaledFittingSize:v10, v12];
      }

      else
      {
        v7 = [[MPTiledArtworkRepresentationCacheKey alloc] initWithTiledArtworkRequest:v6 scaledFittingSize:v10, v12];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)sharedDataSource
{
  if (sharedDataSource_sOnceToken != -1)
  {
    dispatch_once(&sharedDataSource_sOnceToken, &__block_literal_global_1172);
  }

  v3 = sharedDataSource_sSharedDataSource;

  return v3;
}

void __44__MPTiledArtworkDataSource_sharedDataSource__block_invoke()
{
  v0 = objc_alloc_init(MPTiledArtworkDataSource);
  v1 = sharedDataSource_sSharedDataSource;
  sharedDataSource_sSharedDataSource = v0;
}

@end