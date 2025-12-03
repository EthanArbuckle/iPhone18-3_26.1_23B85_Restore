@interface FPFetchThumbnailsOperation
- (FPFetchThumbnailsOperation)init;
- (FPFetchThumbnailsOperation)initWithItem:(id)item versions:(id)versions desiredSize:(CGSize)size screenScale:(double)scale itemManager:(id)manager;
- (FPFetchThumbnailsOperation)initWithItems:(id)items desiredSize:(CGSize)size screenScale:(double)scale itemManager:(id)manager;
- (void)_perItemCompletionBlockFor:(id)for version:(id)version thumbnailURL:(id)l thumbnailData:(id)data contentType:(id)type metadata:(id)metadata error:(id)error;
- (void)cancel;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
- (void)operation:(id)operation didReceiveProgressInfo:(id)info error:(id)error;
@end

@implementation FPFetchThumbnailsOperation

- (FPFetchThumbnailsOperation)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPFetchThumbnailsOperation.m" lineNumber:280 description:{@"UNREACHABLE: Use FPItemManager to create %@.", objc_opt_class()}];

  return 0;
}

- (FPFetchThumbnailsOperation)initWithItems:(id)items desiredSize:(CGSize)size screenScale:(double)scale itemManager:(id)manager
{
  height = size.height;
  width = size.width;
  v52 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  managerCopy = manager;
  v14 = [itemsCopy count];
  if (!managerCopy || (scale >= 1.0 ? (v15 = v14 == 0) : (v15 = 1), !v15 ? (v16 = width < 1.0) : (v16 = 1), !v16 ? (v17 = height < 1.0) : (v17 = 1), v17))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v41 = objc_opt_class();
    v53.width = width;
    v53.height = height;
    v42 = NSStringFromSize(v53);
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPFetchThumbnailsOperation.m" lineNumber:296 description:{@"invalid parameter to initialize %@ (items:%@, desiredSize:%@, screenScale:%f, itemManager:%@)", v41, itemsCopy, v42, *&scale, managerCopy}];

    selfCopy = 0;
    goto LABEL_30;
  }

  v50.receiver = self;
  v50.super_class = FPFetchThumbnailsOperation;
  v18 = [(FPOperation *)&v50 init];
  if (!v18)
  {
    goto LABEL_28;
  }

  v45 = managerCopy;
  v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  dictionary = v18->_dictionary;
  v18->_dictionary = v19;

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  appLibraryItems = v18->_appLibraryItems;
  v18->_appLibraryItems = v21;

  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  placeHoldersItems = v18->_placeHoldersItems;
  v18->_placeHoldersItems = v23;

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v25 = itemsCopy;
  v26 = [v25 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (!v26)
  {
    goto LABEL_27;
  }

  v27 = v26;
  v28 = *v47;
  do
  {
    for (i = 0; i != v27; ++i)
    {
      if (*v47 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v46 + 1) + 8 * i);
      if ([v30 isPlaceholder])
      {
        v31 = v18->_placeHoldersItems;
LABEL_23:
        [(NSMutableArray *)v31 addObject:v30];
        continue;
      }

      v32 = +[FPAppRegistry sharedRegistry];
      v33 = [v32 promoteItemToAppLibraryIfNeeded:v30];

      if ([v30 isContainer])
      {
        fp_appContainerBundleIdentifier = [v30 fp_appContainerBundleIdentifier];

        if (fp_appContainerBundleIdentifier)
        {
          v31 = v18->_appLibraryItems;
          goto LABEL_23;
        }
      }

      v35 = v18->_dictionary;
      itemID = [v30 itemID];
      [(NSMutableDictionary *)v35 setObject:MEMORY[0x1E695E0F0] forKeyedSubscript:itemID];
    }

    v27 = [v25 countByEnumeratingWithState:&v46 objects:v51 count:16];
  }

  while (v27);
LABEL_27:

  v18->_desiredSize.width = width;
  v18->_desiredSize.height = height;
  v18->_screenScale = scale;
  objc_storeStrong(&v18->_itemManager, manager);
  v37 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  subOperationQueue = v18->_subOperationQueue;
  v18->_subOperationQueue = v37;

  [(NSOperationQueue *)v18->_subOperationQueue setName:@"com.apple.FileProvider.FetchThumbnailsOperation"];
  [(NSOperationQueue *)v18->_subOperationQueue setMaxConcurrentOperationCount:2];
  managerCopy = v45;
LABEL_28:
  self = v18;
  selfCopy = self;
LABEL_30:

  v43 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (FPFetchThumbnailsOperation)initWithItem:(id)item versions:(id)versions desiredSize:(CGSize)size screenScale:(double)scale itemManager:(id)manager
{
  height = size.height;
  width = size.width;
  v24 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  versionsCopy = versions;
  v23 = itemCopy;
  v15 = MEMORY[0x1E695DEC8];
  managerCopy = manager;
  v17 = [v15 arrayWithObjects:&v23 count:1];
  v18 = [(FPFetchThumbnailsOperation *)self initWithItems:v17 desiredSize:managerCopy screenScale:width itemManager:height, scale, v23, v24];

  if (v18)
  {
    dictionary = v18->_dictionary;
    itemID = [itemCopy itemID];
    [(NSMutableDictionary *)dictionary setObject:versionsCopy forKeyedSubscript:itemID];
  }

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)main
{
  v49 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = self->_placeHoldersItems;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v5)
  {
    v6 = *v39;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        v9 = fp_current_or_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v8;
          _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ignoring request for %@ because it's a placeholder", &buf, 0xCu);
        }

        itemID = [v8 itemID];
        identifier = [itemID identifier];
        [(FPFetchThumbnailsOperation *)self _perItemCompletionBlockFor:identifier version:0 thumbnailURL:0 thumbnailData:0 contentType:0 metadata:0 error:0];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v5);
  }

  if (self->_subOperations)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPFetchThumbnailsOperation.m" lineNumber:366 description:@"no sub operations should have been crated before this point"];
  }

  array = [MEMORY[0x1E695DF70] array];
  subOperations = self->_subOperations;
  self->_subOperations = array;

  if ([(NSMutableArray *)self->_appLibraryItems count])
  {
    if (self->_desiredSize.width >= self->_desiredSize.height)
    {
      width = self->_desiredSize.width;
    }

    else
    {
      width = self->_desiredSize.height;
    }

    v16 = [[FPFetchAppLibraryIconsOperation alloc] initWithAppLibraryItems:self->_appLibraryItems desiredSize:width screenScale:width, self->_screenScale];
    v17 = v16;
    if (!v16)
    {
      v27 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:{@"can't fetch app-library icons for %@", self->_appLibraryItems}];
      [(FPOperation *)self completedWithResult:0 error:v27];

      goto LABEL_31;
    }

    [(FPFetchAppLibraryIconsOperation *)v16 setDelegate:self];
    [(NSMutableArray *)self->_subOperations addObject:v17];
  }

  if ([(NSMutableDictionary *)self->_dictionary count])
  {
    v18 = [[FPFetchRegularItemThumbnailsOperation alloc] initWithDictionary:self->_dictionary desiredSizeToScale:self->_itemManager itemManager:self->_desiredSize.width * self->_screenScale, self->_screenScale * self->_desiredSize.height];
    v19 = v18;
    if (!v18)
    {
      v28 = MEMORY[0x1E696ABC0];
      allKeys = [(NSMutableDictionary *)self->_dictionary allKeys];
      v30 = [v28 fp_invalidArgumentError:{@"can't fetch thumbnails for %@", allKeys}];

      [(FPOperation *)self completedWithResult:0 error:v30];
      goto LABEL_31;
    }

    [(FPFetchRegularItemThumbnailsOperation *)v18 setDelegate:self];
    [(NSMutableArray *)self->_subOperations addObject:v19];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__4;
  v46 = __Block_byref_object_dispose__4;
  v47 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__FPFetchThumbnailsOperation_main__block_invoke;
  aBlock[3] = &unk_1E793ACF8;
  aBlock[4] = self;
  aBlock[5] = &buf;
  v20 = _Block_copy(aBlock);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __34__FPFetchThumbnailsOperation_main__block_invoke_2;
  v36[3] = &unk_1E793AD20;
  v36[4] = self;
  v36[5] = &buf;
  v21 = [MEMORY[0x1E696AAE0] blockOperationWithBlock:v36];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = self->_subOperations;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v23)
  {
    v24 = *v33;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v32 + 1) + 8 * j);
        [v26 setFinishedBlock:v20];
        [v21 addDependency:v26];
        [(NSOperationQueue *)self->_subOperationQueue addOperation:v26];
      }

      v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v23);
  }

  [(NSOperationQueue *)self->_subOperationQueue addOperation:v21];
  _Block_object_dispose(&buf, 8);

LABEL_31:
  v31 = *MEMORY[0x1E69E9840];
}

void __34__FPFetchThumbnailsOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    v6 = *(a1 + 32);
    objc_sync_enter(v6);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    objc_sync_exit(v6);

    v5 = v7;
  }
}

- (void)cancel
{
  [(NSMutableArray *)self->_subOperations makeObjectsPerformSelector:sel_cancel];
  v3.receiver = self;
  v3.super_class = FPFetchThumbnailsOperation;
  [(FPOperation *)&v3 cancel];
}

- (void)finishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  thumbnailsFetchCompletionBlock = [(FPFetchThumbnailsOperation *)self thumbnailsFetchCompletionBlock];
  v9 = thumbnailsFetchCompletionBlock;
  if (thumbnailsFetchCompletionBlock)
  {
    (*(thumbnailsFetchCompletionBlock + 16))(thumbnailsFetchCompletionBlock, errorCopy);
    [(FPFetchThumbnailsOperation *)self setThumbnailsFetchCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = FPFetchThumbnailsOperation;
  [(FPOperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

- (void)operation:(id)operation didReceiveProgressInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  if (infoCopy)
  {
    v9 = [infoCopy objectForKeyedSubscript:@"identifier"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [FPFetchThumbnailsOperation operation:didReceiveProgressInfo:error:];
      }

      goto LABEL_43;
    }

    v10 = v9;
    v11 = [infoCopy objectForKeyedSubscript:@"version"];
    if (v11)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = fp_current_or_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [FPFetchThumbnailsOperation operation:didReceiveProgressInfo:error:];
        }

        goto LABEL_41;
      }
    }

    if (errorCopy)
    {
      [(FPFetchThumbnailsOperation *)self _perItemCompletionBlockFor:v10 version:v11 thumbnailURL:0 thumbnailData:0 contentType:0 metadata:0 error:errorCopy];
LABEL_42:

LABEL_43:
      goto LABEL_44;
    }

    v12 = [infoCopy objectForKeyedSubscript:@"thumbnailData"];
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = fp_current_or_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [FPFetchThumbnailsOperation operation:didReceiveProgressInfo:error:];
        }

        goto LABEL_40;
      }
    }

    v13 = [infoCopy objectForKeyedSubscript:@"thumbnailDataURLWrapper"];
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = fp_current_or_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [FPFetchThumbnailsOperation operation:didReceiveProgressInfo:error:];
        }

        goto LABEL_39;
      }
    }

    v14 = [infoCopy objectForKeyedSubscript:@"contentType"];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = fp_current_or_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [FPFetchThumbnailsOperation operation:didReceiveProgressInfo:error:];
        }

        goto LABEL_38;
      }
    }

    v27 = [infoCopy objectForKeyedSubscript:@"thumbnailMetaData"];
    if (v27)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = fp_current_or_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [FPFetchThumbnailsOperation operation:didReceiveProgressInfo:error:];
        }

        v18 = v27;
        goto LABEL_38;
      }
    }

    if (![v14 isEqualToString:@"com.apple.fileprovider.serialized-if-image"])
    {
      v19 = [v13 url];
      [(FPFetchThumbnailsOperation *)self _perItemCompletionBlockFor:v10 version:v11 thumbnailURL:v19 thumbnailData:v12 contentType:v14 metadata:v27 error:0];

      v18 = v27;
LABEL_38:

LABEL_39:
LABEL_40:

LABEL_41:
      goto LABEL_42;
    }

    v28 = 0;
    v15 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:getIFImageClass() fromData:v12 error:&v28];
    v24 = v28;
    v25 = v15;
    if (v15)
    {
      v16 = objc_opt_new();
      [*MEMORY[0x1E6983008] identifier];
      v22 = v26 = v16;
      v17 = _CGImageDestinationCreateWithData(v16, v22);
      v18 = v27;
      if (v17)
      {
        cf = v17;
        _CGImageDestinationAddImage(v17, [v25 CGImage]);
        _CGImageDestinationFinalize(cf);
        CFRelease(cf);
      }

      [(FPFetchThumbnailsOperation *)self _perItemCompletionBlockFor:v10 version:v11 thumbnailURL:0 thumbnailData:v26 contentType:v22 metadata:v27 error:0];
    }

    else
    {
      v26 = fp_current_or_default_log();
      v18 = v27;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v21 = v26;
        [FPFetchThumbnailsOperation operation:didReceiveProgressInfo:error:];
        goto LABEL_37;
      }
    }

    v21 = v26;
LABEL_37:

    goto LABEL_38;
  }

LABEL_44:
}

- (void)_perItemCompletionBlockFor:(id)for version:(id)version thumbnailURL:(id)l thumbnailData:(id)data contentType:(id)type metadata:(id)metadata error:(id)error
{
  forCopy = for;
  versionCopy = version;
  lCopy = l;
  dataCopy = data;
  typeCopy = type;
  metadataCopy = metadata;
  errorCopy = error;
  if (([(FPFetchThumbnailsOperation *)self isCancelled]& 1) == 0)
  {
    perThumbnailCompletionBlock = [(FPFetchThumbnailsOperation *)self perThumbnailCompletionBlock];
    if (perThumbnailCompletionBlock)
    {

LABEL_5:
      callbackQueue = [(FPOperation *)self callbackQueue];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __119__FPFetchThumbnailsOperation__perItemCompletionBlockFor_version_thumbnailURL_thumbnailData_contentType_metadata_error___block_invoke;
      v25[3] = &unk_1E793AD48;
      v25[4] = self;
      v26 = dataCopy;
      v27 = lCopy;
      v28 = forCopy;
      v29 = typeCopy;
      v30 = errorCopy;
      v31 = versionCopy;
      v32 = metadataCopy;
      dispatch_async(callbackQueue, v25);

      goto LABEL_6;
    }

    perThumbnailWithVersionCompletionBlock = [(FPFetchThumbnailsOperation *)self perThumbnailWithVersionCompletionBlock];

    if (perThumbnailWithVersionCompletionBlock)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
}

void __119__FPFetchThumbnailsOperation__perItemCompletionBlockFor_version_thumbnailURL_thumbnailData_contentType_metadata_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) perThumbnailCompletionBlock];

  if (v2)
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        v7 = [v3 startAccessingSecurityScopedResource];
        v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:*(a1 + 48) options:1 error:0];
        if (v7)
        {
          v9 = v3;
          [*(a1 + 48) stopAccessingSecurityScopedResource];
          v3 = v9;
        }
      }
    }

    v8 = v3;
    v4 = [*(a1 + 32) perThumbnailCompletionBlock];
    (v4)[2](v4, *(a1 + 56), v8, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    v5 = [*(a1 + 32) perThumbnailWithVersionCompletionBlock];

    if (!v5)
    {
      return;
    }

    v6 = [*(a1 + 32) perThumbnailWithVersionCompletionBlock];
    v6[2](v6, *(a1 + 56), *(a1 + 80), *(a1 + 48), *(a1 + 64), *(a1 + 88), *(a1 + 72));

    if (!*(a1 + 48))
    {
      return;
    }

    v8 = [MEMORY[0x1E696AC08] defaultManager];
    [v8 removeItemAtURL:*(a1 + 48) error:0];
  }
}

- (void)operation:didReceiveProgressInfo:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)operation:didReceiveProgressInfo:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)operation:didReceiveProgressInfo:error:.cold.3()
{
  OUTLINED_FUNCTION_3();
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)operation:didReceiveProgressInfo:error:.cold.4()
{
  OUTLINED_FUNCTION_3();
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)operation:didReceiveProgressInfo:error:.cold.5()
{
  OUTLINED_FUNCTION_3();
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)operation:didReceiveProgressInfo:error:.cold.6()
{
  OUTLINED_FUNCTION_3();
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)operation:didReceiveProgressInfo:error:.cold.7()
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end