@interface QLThumbnailGenerationQueue
+ (id)sharedInstance;
- (QLThumbnailGenerationQueue)init;
- (void)enqueueThumbnailGenerationIfNeededForDocumentAtURL:(id)l atBackgroundPriority:(BOOL)priority completionHandler:(id)handler;
- (void)noteThumbnailGenerationQueuedExternallyForDocumentAtURL:(id)l;
@end

@implementation QLThumbnailGenerationQueue

- (QLThumbnailGenerationQueue)init
{
  v8.receiver = self;
  v8.super_class = QLThumbnailGenerationQueue;
  v2 = [(QLThumbnailGenerationQueue *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    queue = v2->_queue;
    v2->_queue = v3;

    [(NSOperationQueue *)v2->_queue setName:@"com.apple.quicklook.thumbnailgeneration"];
    [(NSOperationQueue *)v2->_queue setQualityOfService:9];
    [(NSOperationQueue *)v2->_queue setMaxConcurrentOperationCount:1];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queuedURLs = v2->_queuedURLs;
    v2->_queuedURLs = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__QLThumbnailGenerationQueue_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_once_0[0] != -1)
  {
    dispatch_once(sharedInstance_once_0, block);
  }

  v2 = sSharedInstance;

  return v2;
}

uint64_t __44__QLThumbnailGenerationQueue_sharedInstance__block_invoke(uint64_t a1)
{
  sSharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (void)enqueueThumbnailGenerationIfNeededForDocumentAtURL:(id)l atBackgroundPriority:(BOOL)priority completionHandler:(id)handler
{
  priorityCopy = priority;
  lCopy = l;
  handlerCopy = handler;
  v10 = qltLogHandles[0];
  if (!qltLogHandles[0])
  {
    QLTInitLogging();
    v10 = qltLogHandles[0];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [QLThumbnailGenerationQueue enqueueThumbnailGenerationIfNeededForDocumentAtURL:lCopy atBackgroundPriority:v10 completionHandler:handlerCopy];
  }

  v11 = MEMORY[0x1E696AAE0];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __120__QLThumbnailGenerationQueue_enqueueThumbnailGenerationIfNeededForDocumentAtURL_atBackgroundPriority_completionHandler___block_invoke;
  v20 = &unk_1E836A940;
  selfCopy = self;
  v22 = lCopy;
  v24 = priorityCopy;
  v23 = handlerCopy;
  v12 = handlerCopy;
  v13 = lCopy;
  v14 = [v11 blockOperationWithBlock:&v17];
  v15 = v14;
  if (priorityCopy)
  {
    v16 = 9;
  }

  else
  {
    v16 = 25;
  }

  [v14 setQualityOfService:{v16, v17, v18, v19, v20, selfCopy}];
  [(NSOperationQueue *)self->_queue addOperation:v15];
}

void __120__QLThumbnailGenerationQueue_enqueueThumbnailGenerationIfNeededForDocumentAtURL_atBackgroundPriority_completionHandler___block_invoke(id *a1)
{
  v1 = a1;
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] queuedURLs];
  v3 = v1 + 40;
  v4 = [v2 objectForKeyedSubscript:*(v1 + 5)];

  v5 = qltLogHandles[0];
  if (!v4)
  {
    if (!qltLogHandles[0])
    {
      QLTInitLogging();
      v5 = qltLogHandles[0];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __120__QLThumbnailGenerationQueue_enqueueThumbnailGenerationIfNeededForDocumentAtURL_atBackgroundPriority_completionHandler___block_invoke_cold_2(v5);
    }

    v7 = [[QLThumbnailStoreRetrievalOperation alloc] initWithDocumentAtURL:*(v1 + 5)];
    [(QLThumbnailStoreRetrievalOperation *)v7 setGenerateThumbnailsAtBackgroundPriority:v1[56]];
    objc_initWeak(&location, v7);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __120__QLThumbnailGenerationQueue_enqueueThumbnailGenerationIfNeededForDocumentAtURL_atBackgroundPriority_completionHandler___block_invoke_5;
    v18 = &unk_1E836A918;
    objc_copyWeak(&v21, &location);
    v19 = *(v1 + 4);
    v20 = *(v1 + 5);
    [(QLThumbnailStoreRetrievalOperation *)v7 setCompletionBlock:&v15];
    if (v1[56])
    {
      v9 = 9;
    }

    else
    {
      v9 = 25;
    }

    [(QLThumbnailStoreRetrievalOperation *)v7 setQualityOfService:v9, v15, v16, v17, v18, v19];
    v10 = [*(v1 + 4) queue];
    [v10 addOperation:v7];

    v11 = [*(v1 + 4) queuedURLs];
    v12 = *(v1 + 6);
    if (v12)
    {
      v1 = _Block_copy(*(v1 + 6));
      v23[0] = v1;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    [v11 setObject:v13 forKey:*v3];
    if (v12)
    {
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    goto LABEL_21;
  }

  if (!qltLogHandles[0])
  {
    QLTInitLogging();
    v5 = qltLogHandles[0];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __120__QLThumbnailGenerationQueue_enqueueThumbnailGenerationIfNeededForDocumentAtURL_atBackgroundPriority_completionHandler___block_invoke_cold_1(v1 + 5, v5);
  }

  v6 = *(v1 + 6);
  if (v6)
  {
    v7 = _Block_copy(v6);
    v8 = [v4 arrayByAddingObject:v7];
    [*(*(v1 + 4) + 16) setObject:v8 forKeyedSubscript:*(v1 + 5)];

LABEL_21:
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __120__QLThumbnailGenerationQueue_enqueueThumbnailGenerationIfNeededForDocumentAtURL_atBackgroundPriority_completionHandler___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 addition];
  v6 = [v5 additionSize];

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 thumbnailWasJustAutomaticallyGenerated];

  v9 = qltLogHandles[0];
  if (!qltLogHandles[0])
  {
    QLTInitLogging();
    v9 = qltLogHandles[0];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __120__QLThumbnailGenerationQueue_enqueueThumbnailGenerationIfNeededForDocumentAtURL_atBackgroundPriority_completionHandler___block_invoke_5_cold_1(v9, (a1 + 48));
  }

  v10 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __120__QLThumbnailGenerationQueue_enqueueThumbnailGenerationIfNeededForDocumentAtURL_atBackgroundPriority_completionHandler___block_invoke_6;
  v13[3] = &unk_1E836A8F0;
  v11 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v17 = v8;
  v15 = v3;
  v16 = v6;
  v14 = v11;
  v12 = v3;
  [v10 addOperationWithBlock:v13];
}

void __120__QLThumbnailGenerationQueue_enqueueThumbnailGenerationIfNeededForDocumentAtURL_atBackgroundPriority_completionHandler___block_invoke_6(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) queuedURLs];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 64);
        v10 = *(a1 + 48);
        v9 = *(a1 + 56);
        (*(*(*(&v13 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 32) queuedURLs];
  [v11 removeObjectForKey:*(a1 + 40)];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)noteThumbnailGenerationQueuedExternallyForDocumentAtURL:(id)l
{
  lCopy = l;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__QLThumbnailGenerationQueue_noteThumbnailGenerationQueuedExternallyForDocumentAtURL___block_invoke;
  v7[3] = &unk_1E8369BD0;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  [(NSOperationQueue *)queue addOperationWithBlock:v7];
}

void __86__QLThumbnailGenerationQueue_noteThumbnailGenerationQueuedExternallyForDocumentAtURL___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];

  if (!v2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 16);
    v5 = MEMORY[0x1E695E0F0];

    [v4 setObject:v5 forKeyedSubscript:v3];
  }
}

- (void)enqueueThumbnailGenerationIfNeededForDocumentAtURL:(uint64_t)a1 atBackgroundPriority:(void *)a2 completionHandler:(const void *)a3 .cold.1(uint64_t a1, void *a2, const void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v12 = _Block_copy(a3);
  OUTLINED_FUNCTION_0_6(&dword_1CA1E7000, v5, v6, "Will queue for %@ and completion block %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

void __120__QLThumbnailGenerationQueue_enqueueThumbnailGenerationIfNeededForDocumentAtURL_atBackgroundPriority_completionHandler___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1CA1E7000, a2, OS_LOG_TYPE_DEBUG, "%@ already queued, adding completion block", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __120__QLThumbnailGenerationQueue_enqueueThumbnailGenerationIfNeededForDocumentAtURL_atBackgroundPriority_completionHandler___block_invoke_5_cold_1(void *a1, id *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  WeakRetained = objc_loadWeakRetained(a2);
  OUTLINED_FUNCTION_0_6(&dword_1CA1E7000, v5, v6, "Retrieval operation %@ finished with error %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

@end