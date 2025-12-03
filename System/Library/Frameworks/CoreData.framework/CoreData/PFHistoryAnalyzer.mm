@interface PFHistoryAnalyzer
- (PFHistoryAnalyzer)initWithOptions:(id)options;
- (id)instantiateNewAnalyzerContextForChangesInStore:(id)store;
- (uint64_t)streamProcessedChangesForStore:(void *)store inContext:(uint64_t)context sinceLastHistoryToken:(uint64_t)token contextHandler:(void *)handler error:;
- (void)dealloc;
@end

@implementation PFHistoryAnalyzer

- (PFHistoryAnalyzer)initWithOptions:(id)options
{
  v7.receiver = self;
  v7.super_class = PFHistoryAnalyzer;
  v4 = [(PFHistoryAnalyzer *)&v7 init];
  if (v4)
  {
    if (options)
    {
      v5 = [options copy];
    }

    else
    {
      v5 = objc_alloc_init(PFHistoryAnalyzerOptions);
    }

    v4->_options = v5;
  }

  return v4;
}

- (void)dealloc
{
  self->_options = 0;
  v3.receiver = self;
  v3.super_class = PFHistoryAnalyzer;
  [(PFHistoryAnalyzer *)&v3 dealloc];
}

- (id)instantiateNewAnalyzerContextForChangesInStore:(id)store
{
  v4 = [PFHistoryAnalyzerContext alloc];
  options = self->_options;

  return [(PFHistoryAnalyzerContext *)v4 initWithOptions:options];
}

- (uint64_t)streamProcessedChangesForStore:(void *)store inContext:(uint64_t)context sinceLastHistoryToken:(uint64_t)token contextHandler:(void *)handler error:
{
  v35 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3052000000;
    v28 = __Block_byref_object_copy__53;
    v29 = __Block_byref_object_dispose__53;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3052000000;
    v18 = __Block_byref_object_copy__53;
    v19 = __Block_byref_object_dispose__53;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __105__PFHistoryAnalyzer_streamProcessedChangesForStore_inContext_sinceLastHistoryToken_contextHandler_error___block_invoke;
    v14[3] = &unk_1E6EC5850;
    v14[4] = self;
    v14[5] = context;
    v14[6] = a2;
    v14[7] = store;
    v14[8] = token;
    v14[9] = &v25;
    v14[10] = &v21;
    v14[11] = &v15;
    [store performBlockAndWait:v14];
    if ((v22[3] & 1) == 0)
    {
      v10 = v16[5];
      if (v10)
      {
        objc_exception_throw(v10);
      }

      v11 = v26[5];
      if (v11)
      {
        if (handler)
        {
          *handler = v11;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFHistoryAnalyzer.m";
          v33 = 1024;
          v34 = 300;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v13 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFHistoryAnalyzer.m";
          v33 = 1024;
          v34 = 300;
          _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }
    }

    v26[5] = 0;
    v7 = *(v22 + 24);
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void __105__PFHistoryAnalyzer_streamProcessedChangesForStore_inContext_sinceLastHistoryToken_contextHandler_error___block_invoke(uint64_t a1)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v46 = 0;
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (!v3)
    {
      v3 = 20;
    }
  }

  else
  {
    v3 = 20;
  }

  v38 = v3;
  v41 = *(a1 + 40);
  v4 = 0;
  v5 = 1;
  while ((v5 & 1) != 0)
  {
    context = objc_autoreleasePoolPush();
    v6 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:v41];
    [(NSPersistentHistoryChangeRequest *)v6 setFetchBatchSize:20];
    [(NSPersistentHistoryChangeRequest *)v6 setFetchLimit:v38];
    [(NSPersistentHistoryChangeRequest *)v6 setUseQueryGenerationToken:1];
    [(NSPersistentHistoryChangeRequest *)v6 setResultType:5];
    v49[0] = *(a1 + 48);
    -[NSPersistentStoreRequest setAffectedStores:](v6, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1]);
    v7 = [*(a1 + 56) executeRequest:v6 error:&v46];
    if (!v7)
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      v5 = 0;
      *(*(*(a1 + 72) + 8) + 40) = v46;
      goto LABEL_58;
    }

    if (!v4)
    {
      v4 = [*(a1 + 32) instantiateNewAnalyzerContextForChangesInStore:*(a1 + 48)];
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = [v7 result];
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (!v9)
    {
      if (*(*(*(a1 + 80) + 8) + 24))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }

    v37 = v7;
    v39 = 0;
    v10 = *v43;
    do
    {
      v11 = 0;
      do
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v42 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        if (([*(a1 + 32) processTransaction:v12 withContext:v4 error:*(*(a1 + 72) + 8) + 40] & 1) == 0)
        {
          if (!*(*(*(a1 + 72) + 8) + 40))
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: History transaction processing failed but didn't return an error\n", buf, 2u);
            }

            v20 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: History transaction processing failed but didn't return an error", buf, 2u);
            }
          }

LABEL_27:
          *(*(*(a1 + 80) + 8) + 24) = 0;
          v21 = *(*(*(a1 + 72) + 8) + 40);
LABEL_38:
          v25 = 0;
          goto LABEL_39;
        }

        v14 = *(*(a1 + 32) + 8);
        if (!v14 || (v15 = *(v14 + 24)) == 0)
        {
LABEL_34:
          v25 = 1;
          goto LABEL_39;
        }

        if (v4)
        {
          if (v4[7] > v15)
          {
            v16 = objc_autoreleasePoolPush();
            if ([v4 finishProcessing:*(*(a1 + 72) + 8) + 40])
            {
              v17 = *(*(a1 + 72) + 8);
              if ((*(*(a1 + 64) + 16))())
              {

                v18 = [*(a1 + 32) instantiateNewAnalyzerContextForChangesInStore:*(a1 + 48)];
                v39 = 1;
                v4 = v18;
                v41 = [v12 token];
              }

              else
              {
                v27 = *(*(*(a1 + 72) + 8) + 40);
                *(*(*(a1 + 80) + 8) + 24) = 0;
              }
            }

            else
            {
              *(*(*(a1 + 80) + 8) + 24) = 0;
              v26 = *(*(*(a1 + 72) + 8) + 40);
            }

            objc_autoreleasePoolPop(v16);
            goto LABEL_38;
          }

          if (v15 >> 21 > 4)
          {
            goto LABEL_34;
          }

          v22 = v4[3];
        }

        else
        {
          v22 = 0;
          if (v15 >= 0xA00000)
          {
            v25 = 1;
            v4 = 0;
            goto LABEL_39;
          }
        }

        if ([v22 count] < 0x3E8)
        {
          goto LABEL_34;
        }

        if (![v4 finishProcessing:*(*(a1 + 72) + 8) + 40])
        {
          goto LABEL_27;
        }

        v23 = *(*(a1 + 72) + 8);
        if ((*(*(a1 + 64) + 16))())
        {

          v24 = [*(a1 + 32) instantiateNewAnalyzerContextForChangesInStore:*(a1 + 48)];
          v25 = 0;
          v39 = 1;
          v4 = v24;
          v41 = [v12 token];
        }

        else
        {
          v28 = *(*(*(a1 + 72) + 8) + 40);
          v25 = 0;
          *(*(*(a1 + 80) + 8) + 24) = 0;
        }

LABEL_39:
        objc_autoreleasePoolPop(v13);
        if (!v25)
        {
          goto LABEL_46;
        }

        ++v11;
      }

      while (v9 != v11);
      v29 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
      v9 = v29;
    }

    while (v29);
LABEL_46:
    if (*(*(*(a1 + 80) + 8) + 24))
    {
      if (v39)
      {
        [*(a1 + 56) reset];
        v5 = 1;
        goto LABEL_58;
      }

      v7 = v37;
LABEL_53:
      v30 = *(*(a1 + 32) + 8);
      if ((!v30 || !*(v30 + 16)) && [objc_msgSend(v7 "result")] == v38)
      {

        v31 = [objc_msgSend(objc_msgSend(v7 "result")];
        v5 = 1;
        v41 = v31;
        goto LABEL_58;
      }
    }

LABEL_57:
    v5 = 0;
LABEL_58:
    objc_autoreleasePoolPop(context);
  }

  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v32 = objc_autoreleasePoolPush();
    if (![v4 finishProcessing:*(*(a1 + 72) + 8) + 40] || (!v4 ? (v33 = 0) : (v33 = v4[4]), objc_msgSend(v33, "count") && (v34 = *(*(a1 + 72) + 8), ((*(*(a1 + 64) + 16))() & 1) == 0)))
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      v35 = *(*(*(a1 + 72) + 8) + 40);
    }

    objc_autoreleasePoolPop(v32);
  }

  v36 = *MEMORY[0x1E69E9840];
}

@end