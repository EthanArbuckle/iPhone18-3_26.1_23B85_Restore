@interface EKConferenceInvalidationRecord
- (void)finishWithURL:(id)a3 error:(id)a4;
- (void)generateNewValidURLForOriginalURL:(id)a3;
@end

@implementation EKConferenceInvalidationRecord

- (void)generateNewValidURLForOriginalURL:(id)a3
{
  v4 = a3;
  if (generateNewValidURLForOriginalURL__onceToken != -1)
  {
    [EKConferenceInvalidationRecord generateNewValidURLForOriginalURL:];
  }

  v5 = generateNewValidURLForOriginalURL__generationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__EKConferenceInvalidationRecord_generateNewValidURLForOriginalURL___block_invoke_2;
  v7[3] = &unk_1E7801378;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [EKConferenceUtils _findRoomTypeForURL:v6 queue:v5 completionHandler:v7];
}

void __68__EKConferenceInvalidationRecord_generateNewValidURLForOriginalURL___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.eventkit.ConferenceCreationQueue", v2);
  v1 = generateNewValidURLForOriginalURL__generationQueue;
  generateNewValidURLForOriginalURL__generationQueue = v0;
}

void __68__EKConferenceInvalidationRecord_generateNewValidURLForOriginalURL___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__EKConferenceInvalidationRecord_generateNewValidURLForOriginalURL___block_invoke_3;
    v7[3] = &unk_1E7801350;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v5;
    [EKVirtualConference virtualConferenceForRoomType:a2 completion:v7 queue:generateNewValidURLForOriginalURL__generationQueue];
  }

  else
  {
    v6 = *(a1 + 32);

    [v6 finishWithURL:0 error:a3];
  }
}

void __68__EKConferenceInvalidationRecord_generateNewValidURLForOriginalURL___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [a2 joinMethods];
    v5 = [v4 firstObject];
    v6 = [v5 URL];

    v7 = [objc_opt_class() logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1A805E000, v7, OS_LOG_TYPE_DEFAULT, "Generated URL %@ to replace %@", &v12, 0x16u);
    }

    [*(a1 + 32) finishWithURL:v6 error:0];
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *MEMORY[0x1E69E9840];

    [v10 finishWithURL:0 error:a3];
  }
}

- (void)finishWithURL:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&_invalidationLock);
  objc_storeStrong(&self->_validURL, a3);
  v9 = self->_waitingCompletionHandlers;
  waitingCompletionHandlers = self->_waitingCompletionHandlers;
  self->_waitingCompletionHandlers = 0;

  v11 = [(NSMutableSet *)self->_replacementForURLs copy];
  os_unfair_lock_unlock(&_invalidationLock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v9;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(*(&v18 + 1) + 8 * v16) + 16))(*(*(&v18 + 1) + 8 * v16));
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end