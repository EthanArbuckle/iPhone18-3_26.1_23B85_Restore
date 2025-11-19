@interface ACSURLSession
+ (ACSURLSession)sharedSession;
- (BOOL)_resumeData:(id)a3 toNSURLResumeData:(id *)a4 originalRequest:(id *)a5 currentRequest:(id *)a6 error:(id *)a7;
- (NSDictionary)locateOptions;
- (NSString)description;
- (NSString)sessionDescription;
- (NSURLSessionConfiguration)configuration;
- (id)_downloadTaskWithResumeData:(id)a3 completionHandler:(id)a4;
- (id)_errorWithResumeDataFromError:(id)a3 originalRequest:(id)a4 currentRequest:(id)a5;
- (id)_keyForNSURLTask:(id)a3;
- (id)_linkedLocationWithLocation:(id)a3;
- (id)_onqueue_taskForNSURLTask:(id)a3;
- (id)_onqueue_uniqueTasks;
- (id)_resumeDataWithNSURLResumeData:(id)a3 originalRequest:(id)a4 currentRequest:(id)a5 error:(id *)a6;
- (id)dataTaskWithRequest:(id)a3;
- (id)dataTaskWithRequest:(id)a3 completionHandler:(id)a4;
- (id)dataTaskWithURL:(id)a3;
- (id)dataTaskWithURL:(id)a3 completionHandler:(id)a4;
- (id)downloadTaskWithRequest:(id)a3;
- (id)downloadTaskWithRequest:(id)a3 completionHandler:(id)a4;
- (id)downloadTaskWithURL:(id)a3;
- (id)downloadTaskWithURL:(id)a3 completionHandler:(id)a4;
- (id)uploadTaskWithRequest:(id)a3 fromData:(id)a4;
- (id)uploadTaskWithRequest:(id)a3 fromData:(id)a4 completionHandler:(id)a5;
- (id)uploadTaskWithRequest:(id)a3 fromFile:(id)a4;
- (id)uploadTaskWithRequest:(id)a3 fromFile:(id)a4 completionHandler:(id)a5;
- (id)uploadTaskWithStreamedRequest:(id)a3;
- (void)URLSession:(id)a3 betterRouteDiscoveredForStreamTask:(id)a4;
- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeDownloadTask:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeStreamTask:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 readClosedForStreamTask:(id)a4;
- (void)URLSession:(id)a3 streamTask:(id)a4 didBecomeInputStream:(id)a5 outputStream:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willBeginDelayedRequest:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4;
- (void)URLSession:(id)a3 writeClosedForStreamTask:(id)a4;
- (void)_addTask:(id)a3;
- (void)_cancelDownloadTask:(id)a3 byProducingResumeData:(id)a4;
- (void)_cancelTask:(id)a3;
- (void)_copyAttributesFromNSURLTask:(id)a3 toNSURLTask:(id)a4;
- (void)_dataTask:(id)a3 completedWithData:(id)a4 response:(id)a5 error:(id)a6 completionHandler:(id)a7;
- (void)_downloadTask:(id)a3 completedWithLocation:(id)a4 response:(id)a5 error:(id)a6 completionHandler:(id)a7;
- (void)_locateCachingServerForURL:(id)a3 isUpload:(BOOL)a4 completionHandler:(id)a5;
- (void)_onqueue_addTask:(id)a3 forNSURLTask:(id)a4;
- (void)_onqueue_removeTaskForNSURLTask:(id)a3;
- (void)_onqueue_resumeTask:(id)a3;
- (void)_onqueue_task:(id)a3 willUseCachingServer:(BOOL)a4 newRequest:(id)a5 completionHandler:(id)a6;
- (void)_removeTask:(id)a3;
- (void)_resumeTask:(id)a3;
- (void)_suspendTask:(id)a3;
- (void)dealloc;
- (void)finishTasksAndInvalidate;
- (void)flushWithCompletionHandler:(id)a3;
- (void)getAllTasksWithCompletionHandler:(id)a3;
- (void)getTasksWithCompletionHandler:(id)a3;
- (void)invalidateAndCancel;
- (void)resetWithCompletionHandler:(id)a3;
- (void)setSessionDescription:(id)a3;
@end

@implementation ACSURLSession

+ (ACSURLSession)sharedSession
{
  if (sharedSession_once != -1)
  {
    +[ACSURLSession sharedSession];
  }

  v3 = sharedSession_sharedSession;

  return v3;
}

uint64_t __30__ACSURLSession_sharedSession__block_invoke()
{
  v0 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v1 = [ACSURLSession sessionWithConfiguration:v0 canUseCachingServer:1 locateOptions:0];
  v2 = sharedSession_sharedSession;
  sharedSession_sharedSession = v1;

  v3 = sharedSession_sharedSession;

  return [v3 set_phase:3];
}

- (NSURLSessionConfiguration)configuration
{
  v2 = [(ACSURLSession *)self _nsurlSession];
  v3 = [v2 configuration];

  return v3;
}

- (NSDictionary)locateOptions
{
  v2 = [(ACSURLSession *)self _locateOptions];
  v3 = [v2 copy];

  return v3;
}

- (NSString)sessionDescription
{
  v2 = [(ACSURLSession *)self _nsurlSession];
  v3 = [v2 sessionDescription];

  return v3;
}

- (void)setSessionDescription:(id)a3
{
  v4 = a3;
  v5 = [(ACSURLSession *)self _nsurlSession];
  [v5 setSessionDescription:v4];
}

- (void)finishTasksAndInvalidate
{
  v3 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ACSURLSession_finishTasksAndInvalidate__block_invoke;
  block[3] = &unk_278CC4EA8;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __41__ACSURLSession_finishTasksAndInvalidate__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) canUseCachingServer] && (objc_msgSend(*(a1 + 32), "_phase") || (objc_msgSend(*(a1 + 32), "_tasks"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3)))
  {
    result = [*(a1 + 32) _phase];
    if (result)
    {
      return result;
    }

    v6 = 1;
  }

  else
  {
    v5 = [*(a1 + 32) _nsurlSession];
    [v5 finishTasksAndInvalidate];

    v6 = 2;
  }

  v7 = *(a1 + 32);

  return [v7 set_phase:v6];
}

- (void)invalidateAndCancel
{
  v3 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ACSURLSession_invalidateAndCancel__block_invoke;
  block[3] = &unk_278CC4EA8;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __36__ACSURLSession_invalidateAndCancel__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) canUseCachingServer] && (objc_msgSend(*(a1 + 32), "_phase") || (objc_msgSend(*(a1 + 32), "_tasks"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "count"), v2, v3)))
  {
    if (![*(a1 + 32) _phase] || (result = objc_msgSend(*(a1 + 32), "_phase"), result == 1))
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = [*(a1 + 32) _onqueue_uniqueTasks];
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v15 + 1) + 8 * i) cancel];
          }

          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      v10 = [*(a1 + 32) _nsurlSession];
      [v10 invalidateAndCancel];

      result = [*(a1 + 32) set_phase:2];
    }

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = [*(a1 + 32) _nsurlSession];
    [v12 invalidateAndCancel];

    v13 = *(a1 + 32);
    v14 = *MEMORY[0x277D85DE8];

    return [v13 set_phase:2];
  }

  return result;
}

- (void)resetWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ACSURLSession *)self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ACSURLSession_resetWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CC4ED0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __44__ACSURLSession_resetWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nsurlSession];
  [v2 resetWithCompletionHandler:*(a1 + 40)];
}

- (void)flushWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ACSURLSession *)self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ACSURLSession_flushWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CC4ED0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __44__ACSURLSession_flushWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nsurlSession];
  [v2 flushWithCompletionHandler:*(a1 + 40)];
}

- (void)getTasksWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ACSURLSession *)self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ACSURLSession_getTasksWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CC4ED0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__ACSURLSession_getTasksWithCompletionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = a1;
  v5 = [*(a1 + 32) _onqueue_uniqueTasks];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v12 = v4;
        if ((isKindOfClass & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v3;
          }

          else
          {
            v12 = v2;
          }
        }

        [v12 addObject:v10];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v13 = [*(v19 + 32) _clientDelegateOpQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__ACSURLSession_getTasksWithCompletionHandler___block_invoke_2;
  v20[3] = &unk_278CC4EF8;
  v14 = *(v19 + 40);
  v21 = v2;
  v22 = v3;
  v23 = v4;
  v24 = v14;
  v15 = v4;
  v16 = v3;
  v17 = v2;
  [v13 addOperationWithBlock:v20];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)getAllTasksWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ACSURLSession *)self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ACSURLSession_getAllTasksWithCompletionHandler___block_invoke;
  v7[3] = &unk_278CC4ED0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__ACSURLSession_getAllTasksWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _onqueue_uniqueTasks];
  v3 = [*(a1 + 32) _clientDelegateOpQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__ACSURLSession_getAllTasksWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_278CC4F20;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v3 addOperationWithBlock:v6];
}

- (id)dataTaskWithRequest:(id)a3
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__ACSURLSession_dataTaskWithRequest___block_invoke;
  v8[3] = &unk_278CC4F48;
  v8[4] = self;
  v4 = a3;
  v5 = MEMORY[0x245CDE340](v8);
  v6 = [[ACSURLSessionDataTask alloc] initWithNSURLDataTaskCreator:v5 initialRequest:v4 forSession:self];

  [(ACSURLSession *)self _addTask:v6];

  return v6;
}

id __37__ACSURLSession_dataTaskWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _nsurlSession];
  v5 = [v4 dataTaskWithRequest:v3];

  return v5;
}

- (id)dataTaskWithURL:(id)a3
{
  v4 = [MEMORY[0x277CCAD20] requestWithURL:a3];
  v5 = [(ACSURLSession *)self dataTaskWithRequest:v4];

  return v5;
}

- (id)uploadTaskWithRequest:(id)a3 fromFile:(id)a4
{
  v6 = a4;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __48__ACSURLSession_uploadTaskWithRequest_fromFile___block_invoke;
  v16 = &unk_278CC4F70;
  v17 = self;
  v18 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x245CDE340](&v13);
  v10 = [ACSURLSessionUploadTask alloc];
  v11 = [(ACSURLSessionUploadTask *)v10 initWithNSURLUploadTaskCreator:v9 initialRequest:v8 forSession:self, v13, v14, v15, v16, v17];

  [(ACSURLSession *)self _addTask:v11];

  return v11;
}

id __48__ACSURLSession_uploadTaskWithRequest_fromFile___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v6 = [v5 uploadTaskWithRequest:v4 fromFile:*(a1 + 40)];

  return v6;
}

- (id)uploadTaskWithRequest:(id)a3 fromData:(id)a4
{
  v6 = a4;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __48__ACSURLSession_uploadTaskWithRequest_fromData___block_invoke;
  v16 = &unk_278CC4F70;
  v17 = self;
  v18 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x245CDE340](&v13);
  v10 = [ACSURLSessionUploadTask alloc];
  v11 = [(ACSURLSessionUploadTask *)v10 initWithNSURLUploadTaskCreator:v9 initialRequest:v8 forSession:self, v13, v14, v15, v16, v17];

  [(ACSURLSession *)self _addTask:v11];

  return v11;
}

id __48__ACSURLSession_uploadTaskWithRequest_fromData___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v6 = [v5 uploadTaskWithRequest:v4 fromData:*(a1 + 40)];

  return v6;
}

- (id)uploadTaskWithStreamedRequest:(id)a3
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__ACSURLSession_uploadTaskWithStreamedRequest___block_invoke;
  v8[3] = &unk_278CC4F98;
  v8[4] = self;
  v4 = a3;
  v5 = MEMORY[0x245CDE340](v8);
  v6 = [[ACSURLSessionUploadTask alloc] initWithNSURLUploadTaskCreator:v5 initialRequest:v4 forSession:self];

  [(ACSURLSession *)self _addTask:v6];

  return v6;
}

id __47__ACSURLSession_uploadTaskWithStreamedRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _nsurlSession];
  v5 = [v4 uploadTaskWithStreamedRequest:v3];

  return v5;
}

- (id)downloadTaskWithRequest:(id)a3
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__ACSURLSession_downloadTaskWithRequest___block_invoke;
  v8[3] = &unk_278CC4FC0;
  v8[4] = self;
  v4 = a3;
  v5 = MEMORY[0x245CDE340](v8);
  v6 = [[ACSURLSessionDownloadTask alloc] initWithNSURLDownloadTaskCreator:v5 initialRequest:v4 forSession:self];

  [(ACSURLSession *)self _addTask:v6];

  return v6;
}

id __41__ACSURLSession_downloadTaskWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _nsurlSession];
  v5 = [v4 downloadTaskWithRequest:v3];

  return v5;
}

- (id)downloadTaskWithURL:(id)a3
{
  v4 = [MEMORY[0x277CCAD20] requestWithURL:a3];
  v5 = [(ACSURLSession *)self downloadTaskWithRequest:v4];

  return v5;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11(&dword_2411B8000, v0, v1, "dealloc session %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = [(ACSURLSession *)self _tasks];
  objc_sync_enter(v3);
  v4 = [(ACSURLSession *)self _tasks];
  v5 = [v4 allValues];

  objc_sync_exit(v3);
  v6 = [(ACSURLSession *)self _phase];
  if (v6 >= 4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown phase %d", v6];
  }

  else
  {
    v7 = off_278CC5620[v6];
  }

  v8 = MEMORY[0x277CCAB68];
  v18.receiver = self;
  v18.super_class = ACSURLSession;
  v9 = [(ACSURLSession *)&v18 description];
  v10 = [(ACSURLSession *)self canUseCachingServer];
  v11 = [(ACSURLSession *)self _nsurlSession];
  v12 = [(ACSURLSession *)self _clientDelegate];
  v13 = objc_msgSend(v8, "stringWithFormat:", @"%@ { canUseCachingServer: %d, phase: %@, session: %@, delegate: %p, tasks: ("), v9, v10, v7, v11, v12;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __28__ACSURLSession_description__block_invoke;
  v16[3] = &unk_278CC4FE8;
  v14 = v13;
  v17 = v14;
  [v5 enumerateObjectsUsingBlock:v16];
  [v14 appendString:@" }"]);

  return v14;
}

void __28__ACSURLSession_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendFormat:@"%p", v5];
}

- (id)_keyForNSURLTask:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 taskIdentifier];

  v8 = [v3 stringWithFormat:@"%@ %lu", v6, v7];

  return v8;
}

- (void)_addTask:(id)a3
{
  v4 = a3;
  v5 = [(ACSURLSession *)self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__ACSURLSession__addTask___block_invoke;
  v7[3] = &unk_278CC5010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __26__ACSURLSession__addTask___block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _phase] == 1 || objc_msgSend(*(a1 + 32), "_phase") == 2)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE648];
    v14[0] = @"session";
    v14[1] = @"task";
    v9 = *(a1 + 40);
    v15[0] = *(a1 + 32);
    v15[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v11 = [v7 exceptionWithName:v8 reason:@"Cannot create a task in an ACSURLSession that has been invalidated" userInfo:v10];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 _nsurlTaskToOrigin];
  [v2 _onqueue_addTask:v3 forNSURLTask:v4];

  v5 = [*(a1 + 40) _nsurlTaskToCachingServer];
  if (v5)
  {
    [*(a1 + 32) _onqueue_addTask:*(a1 + 40) forNSURLTask:v5];
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2821F96F8]();
}

- (void)_onqueue_addTask:(id)a3 forNSURLTask:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(ACSURLSession *)self _queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(ACSURLSession *)self _keyForNSURLTask:v8];
  v11 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = [v8 descriptionWithAddress];
    *buf = 138412802;
    v24 = v7;
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = self;
    _os_log_debug_impl(&dword_2411B8000, v11, OS_LOG_TYPE_DEBUG, "add task %@ for nsurlTask %@ self=%@", buf, 0x20u);
  }

  v12 = [(ACSURLSession *)self _tasks];
  objc_sync_enter(v12);
  v13 = [(ACSURLSession *)self _tasks];
  v14 = [v13 objectForKeyedSubscript:v10];
  v15 = v14 == 0;

  if (!v15)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    v20 = [(ACSURLSession *)self _tasks];
    v21 = [v20 objectForKeyedSubscript:v10];
    v22 = [v8 descriptionWithAddress];
    [v19 handleFailureInMethod:a2 object:self file:@"ACSURLSession.m" lineNumber:363 description:{@"ACSURLSession %@ clobbering ACSURLSessionTask %@ with %@ for NSURLSessionTask %@", self, v21, v7, v22}];
  }

  v16 = [(ACSURLSession *)self _tasks];
  [v16 setObject:v7 forKeyedSubscript:v10];

  objc_sync_exit(v12);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_removeTask:(id)a3
{
  v4 = a3;
  v5 = [(ACSURLSession *)self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__ACSURLSession__removeTask___block_invoke;
  v7[3] = &unk_278CC5010;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __29__ACSURLSession__removeTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nsurlTaskToOrigin];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) _nsurlTaskToOrigin];
    [v3 _onqueue_removeTaskForNSURLTask:v4];
  }

  [*(a1 + 32) set_nsurlTaskToOrigin:0];
  v8 = [*(a1 + 32) _nsurlTaskToCachingServer];
  if (v8)
  {
    [*(a1 + 40) _onqueue_removeTaskForNSURLTask:v8];
    [*(a1 + 32) set_nsurlTaskToCachingServer:0];
  }

  if ([*(a1 + 40) _phase] == 1)
  {
    v5 = [*(a1 + 40) _tasks];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = [*(a1 + 40) _nsurlSession];
      [v7 finishTasksAndInvalidate];

      [*(a1 + 40) set_phase:2];
    }
  }
}

- (void)_onqueue_removeTaskForNSURLTask:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACSURLSession *)self _queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ACSURLSession *)self _keyForNSURLTask:v4];
  v7 = [(ACSURLSession *)self _tasks];
  objc_sync_enter(v7);
  v8 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v15 = [(ACSURLSession *)self _tasks];
    v16 = [v15 objectForKeyedSubscript:v6];
    v17 = [v4 descriptionWithAddress];
    v18 = 138413058;
    v19 = v16;
    v20 = 2112;
    v21 = v17;
    v22 = 2112;
    v23 = self;
    v24 = 2112;
    v25 = v6;
    _os_log_debug_impl(&dword_2411B8000, v8, OS_LOG_TYPE_DEBUG, "remove task %@ for nsurlTask %@ self=%@ key=%@", &v18, 0x2Au);
  }

  v9 = [(ACSURLSession *)self _tasks];
  v10 = [v9 objectForKeyedSubscript:v6];
  v11 = v10 == 0;

  if (v11)
  {
    v12 = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 descriptionWithAddress];
      v18 = 138412802;
      v19 = self;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_2411B8000, v12, OS_LOG_TYPE_DEFAULT, "ACSURLSession %@ missing ACSURLSessionTask for NSURLSessionTask %@; this is normal if the task was canceled. task %@", &v18, 0x20u);
    }
  }

  else
  {
    v12 = [(ACSURLSession *)self _tasks];
    [v12 removeObjectForKey:v6];
  }

  objc_sync_exit(v7);
  v14 = *MEMORY[0x277D85DE8];
}

- (id)_onqueue_taskForNSURLTask:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(ACSURLSession *)self _queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(ACSURLSession *)self _keyForNSURLTask:v5];
  v8 = [(ACSURLSession *)self _tasks];
  objc_sync_enter(v8);
  v9 = [(ACSURLSession *)self _tasks];
  v10 = [v9 objectForKeyedSubscript:v7];

  objc_sync_exit(v8);
  if (v10)
  {
    v11 = [v10 _nsurlTaskToOrigin];
    v12 = [v10 _nsurlTaskToCachingServer];
    v13 = v12;
    if (v11 != v5 && v12 != v5)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      v19 = [v11 descriptionWithAddress];
      v20 = [v13 descriptionWithAddress];
      [v18 handleFailureInMethod:a2 object:self file:@"ACSURLSession.m" lineNumber:428 description:{@"ACSURLSession %@ task %@ != expected %@ or %@", self, v5, v19, v20}];
    }

    v14 = v10;
  }

  else
  {
    v15 = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = self;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_2411B8000, v15, OS_LOG_TYPE_DEFAULT, "ACSURLSession %@ missing ACSURLSessionTask for NSURLSessionTask %@; this is normal if the task was canceled", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_onqueue_uniqueTasks
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(ACSURLSession *)self _queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ACSURLSession *)self _tasks];
  objc_sync_enter(v4);
  v5 = [(ACSURLSession *)self _tasks];
  v6 = [v5 allValues];

  objc_sync_exit(v4);
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (([v8 containsObject:{v13, v16}] & 1) == 0)
        {
          [v7 addObject:v13];
          [v8 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_locateCachingServerForURL:(id)a3 isUpload:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v9 = a5;
  v10 = a3;
  if (![(ACSURLSession *)self canUseCachingServer])
  {
    [ACSURLSession _locateCachingServerForURL:a2 isUpload:self completionHandler:?];
  }

  v11 = [(ACSURLSession *)self _locateOptions];
  v12 = v11;
  if (v5)
  {
    v13 = [v11 mutableCopy];

    v12 = v13;
    if (!v13)
    {
      v12 = [MEMORY[0x277CBEB38] dictionary];
    }

    v14 = [v12 objectForKeyedSubscript:@"capabilities"];
    v15 = [v14 mutableCopy];

    if (!v15)
    {
      v15 = [MEMORY[0x277CBEB38] dictionary];
      [v12 setObject:v15 forKeyedSubscript:@"capabilities"];
    }

    [v15 setObject:*MEMORY[0x277CBED28] forKeyedSubscript:@"import"];
  }

  v16 = [(ACSURLSession *)self _queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __71__ACSURLSession__locateCachingServerForURL_isUpload_completionHandler___block_invoke;
  v18[3] = &unk_278CC5038;
  v19 = v9;
  v17 = v9;
  ACSLocateCachingServer(v10, v12, v16, v18, 30.0);
}

- (void)_onqueue_task:(id)a3 willUseCachingServer:(BOOL)a4 newRequest:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(ACSURLSession *)self _queue];
  dispatch_assert_queue_V2(v13);

  v14 = [(ACSURLSession *)self _clientDelegate];
  v15 = [(ACSURLSession *)self _clientDelegateOpQueue];
  if (objc_opt_respondsToSelector())
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__ACSURLSession__onqueue_task_willUseCachingServer_newRequest_completionHandler___block_invoke;
    v16[3] = &unk_278CC5088;
    v17 = v14;
    v18 = self;
    v19 = v10;
    v22 = a4;
    v20 = v11;
    v21 = v12;
    [v15 addOperationWithBlock:v16];
  }

  else
  {
    (*(v12 + 2))(v12, v11);
  }
}

void __81__ACSURLSession__onqueue_task_willUseCachingServer_newRequest_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 72);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __81__ACSURLSession__onqueue_task_willUseCachingServer_newRequest_completionHandler___block_invoke_2;
  v6[3] = &unk_278CC5060;
  v6[4] = v2;
  v7 = *(a1 + 64);
  [v1 URLSession:v2 task:v4 willUseCachingServer:v3 newRequest:v5 completionHandler:v6];
}

void __81__ACSURLSession__onqueue_task_willUseCachingServer_newRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__ACSURLSession__onqueue_task_willUseCachingServer_newRequest_completionHandler___block_invoke_3;
  v7[3] = &unk_278CC4F20;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)_cancelTask:(id)a3
{
  v4 = a3;
  if ([(ACSURLSession *)self canUseCachingServer])
  {
    v5 = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ACSURLSession _cancelTask:];
    }

    v6 = [(ACSURLSession *)self _queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__ACSURLSession__cancelTask___block_invoke;
    v8[3] = &unk_278CC5010;
    v9 = v4;
    v10 = self;
    dispatch_async(v6, v8);
  }

  else
  {
    v7 = [v4 _nsurlTaskToOrigin];
    [v7 cancel];
  }
}

void __29__ACSURLSession__cancelTask___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) _internalState] == 2)
  {
    v3 = [*(a1 + 40) _logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __29__ACSURLSession__cancelTask___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  else
  {
    v11 = [*v2 _nsurlTaskToCachingServer];
    if (v11 && [*v2 _tryCachingServer])
    {
      [*v2 set_failBackToOrigin:0];
      [v11 cancel];
    }

    else
    {
      v10 = [*v2 _nsurlTaskToOrigin];
      [v10 cancel];
    }
  }
}

- (void)_cancelDownloadTask:(id)a3 byProducingResumeData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke;
  v22[3] = &unk_278CC50B0;
  v22[4] = self;
  v9 = v7;
  v23 = v9;
  v10 = v8;
  v24 = v10;
  v11 = MEMORY[0x245CDE340](v22);
  if ([(ACSURLSession *)self canUseCachingServer])
  {
    v12 = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACSURLSession _cancelDownloadTask:byProducingResumeData:];
    }

    if ([v9 _internalState] == 2)
    {
      v13 = [(ACSURLSession *)self _logHandle];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ACSURLSession _cancelDownloadTask:byProducingResumeData:];
      }

      (*(v10 + 2))(v10, 0);
    }

    v14 = [(ACSURLSession *)self _queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke_122;
    v16[3] = &unk_278CC50D8;
    v21 = a2;
    v17 = v9;
    v18 = self;
    v19 = v11;
    v20 = v10;
    dispatch_async(v14, v16);

    v15 = v17;
  }

  else
  {
    v15 = [v9 _nsurlTaskToOrigin];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [ACSURLSession _cancelDownloadTask:byProducingResumeData:];
    }

    [v15 cancelByProducingResumeData:v11];
  }
}

void __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) originalRequest];
    v6 = [*(a1 + 40) currentRequest];
    v13 = 0;
    v7 = [v4 _resumeDataWithNSURLResumeData:v3 originalRequest:v5 currentRequest:v6 error:&v13];
    v8 = v13;

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"Invalid resume data from NSURL";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v8 = [v9 errorWithDomain:@"_kACSURLSessionErrorDomain" code:1 userInfo:v10];
  }

  v11 = [*(a1 + 32) _logHandle];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke_cold_1();
  }

  v7 = 0;
LABEL_8:
  (*(*(a1 + 48) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

void __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke_122(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlTaskToCachingServer];
  if (v3 && [*v2 _tryCachingServer])
  {
    [*v2 set_failBackToOrigin:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke_122_cold_1();
    }

    [v3 cancelByProducingResumeData:*(a1 + 48)];
  }

  else
  {
    v4 = [*v2 _nsurlTaskToOrigin];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 cancelByProducingResumeData:*(a1 + 48)];
    }

    else
    {
      v5 = [*(a1 + 40) _logHandle];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        v10 = [v4 descriptionWithAddress];
        v11 = 138413058;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2112;
        v18 = @"NSURLSessionDownloadTask";
        _os_log_fault_impl(&dword_2411B8000, v5, OS_LOG_TYPE_FAULT, "ACSURLSession %@ unexpected task %@ for nsurlTask %@, expected class %@", &v11, 0x2Au);
      }

      v6 = [*(a1 + 40) _logHandle];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_2411B8000, v6, OS_LOG_TYPE_DEFAULT, "ACSURLSessionDownloadTask _cancelDownloadTask:byProducingResumeData: completing with nil", &v11, 2u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_downloadTaskWithResumeData:(id)a3 completionHandler:(id)a4
{
  v56[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v35 = v6;
  v8 = [(ACSURLSession *)self _resumeData:v6 toNSURLResumeData:&v54 originalRequest:&v53 currentRequest:&v52 error:&v51];
  v9 = v54;
  v37 = v53;
  v10 = v52;
  v36 = v51;
  if (!v8)
  {
    v27 = MEMORY[0x277CBEAD8];
    v55[0] = @"session";
    v55[1] = @"error";
    v56[0] = self;
    v56[1] = v36;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
    v29 = [v27 exceptionWithName:*MEMORY[0x277CBE660] reason:@"Invalid resume data" userInfo:v28];
    v30 = v29;

    objc_exception_throw(v29);
  }

  v11 = [v10 URL];
  v12 = [v11 query];

  if ([v12 hasPrefix:@"source="])
  {
    v13 = 1;
  }

  else
  {
    v13 = [v12 containsString:@"&source="];
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = 0;
  if (v7)
  {
    v14 = v38;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke_2;
    v38[3] = &unk_278CC5178;
    v41[1] = &v45;
    v38[4] = self;
    v32 = v41;
    v41[0] = v7;
    v33 = &v39;
    v39 = v10;
    v6 = &v40;
  }

  else
  {
    v14 = v42;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke;
    v42[3] = &unk_278CC5100;
    v31 = v43;
    v43[0] = v10;
    v43[1] = self;
    v34 = &v44;
  }

  v15 = v9;
  v14[6] = v15;
  v16 = MEMORY[0x245CDE340](v14);
  if (v13)
  {
    v17 = [[ACSURLSessionDownloadTask alloc] initWithNSURLDownloadTaskCreator:v16 initialRequest:v37 forSession:self];
    v18 = v46[5];
    v46[5] = v17;

    v19 = [v46[5] _nsurlTaskForRequest:v10];
    [v46[5] set_nsurlTaskToCachingServer:v19];
    v20 = [v46[5] _nsurlTaskToOrigin];
    v21 = [v46[5] _nsurlTaskToCachingServer];
    [(ACSURLSession *)self _copyAttributesFromNSURLTask:v20 toNSURLTask:v21];
  }

  else
  {
    v22 = [[ACSURLSessionDownloadTask alloc] initWithNSURLDownloadTaskCreator:v16 initialRequest:v10 forSession:self];
    v23 = v46[5];
    v46[5] = v22;

    [v46[5] set_resumedOriginalRequest:v37];
    [v46[5] set_tryCachingServer:0];
  }

  [v46[5] set_suspended:1];
  [(ACSURLSession *)self _addTask:v46[5]];
  v24 = v46[5];

  if (v7)
  {
  }

  else
  {
  }

  _Block_object_dispose(&v45, 8);

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

id __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) _nsurlSession];
  v6 = v5;
  if (v4 == v3)
  {
    [v5 downloadTaskWithResumeData:*(a1 + 48)];
  }

  else
  {
    [v5 downloadTaskWithRequest:v3];
  }
  v7 = ;

  return v7;
}

id __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke_3;
  v12[3] = &unk_278CC5150;
  v12[4] = *(a1 + 32);
  v11 = *(a1 + 56);
  v4 = v11;
  v13 = v11;
  v5 = MEMORY[0x245CDE340](v12);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) _nsurlSession];
  v8 = v7;
  if (v6 == v3)
  {
    [v7 downloadTaskWithResumeData:*(a1 + 48) completionHandler:v5];
  }

  else
  {
    [v7 downloadTaskWithRequest:v3 completionHandler:v5];
  }
  v9 = ;

  return v9;
}

void __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke_4;
    v12[3] = &unk_278CC5128;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v10;
    v14 = v11;
    [v9 _downloadTask:v4 completedWithLocation:a2 response:a3 error:a4 completionHandler:v12];
  }
}

uint64_t __63__ACSURLSession__downloadTaskWithResumeData_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) set_nsurlTaskCreator:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 set_internalState:2];
}

- (void)_suspendTask:(id)a3
{
  v4 = a3;
  if ([(ACSURLSession *)self canUseCachingServer])
  {
    v5 = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ACSURLSession _suspendTask:];
    }

    v6 = [(ACSURLSession *)self _queue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__ACSURLSession__suspendTask___block_invoke;
    v8[3] = &unk_278CC5010;
    v9 = v4;
    v10 = self;
    dispatch_async(v6, v8);
  }

  else
  {
    v7 = [v4 _nsurlTaskToOrigin];
    [v7 suspend];
  }
}

void __30__ACSURLSession__suspendTask___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) _internalState] == 2)
  {
    v3 = [*(a1 + 40) _logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __30__ACSURLSession__suspendTask___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  else
  {
    v11 = [*v2 _nsurlTaskToCachingServer];
    if (v11 && [*v2 _tryCachingServer])
    {
      [v11 suspend];
    }

    else
    {
      v10 = [*v2 _nsurlTaskToOrigin];
      [v10 suspend];
    }

    [*v2 set_suspended:1];
  }
}

- (void)_resumeTask:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACSURLSession *)self canUseCachingServer];
  v6 = [(ACSURLSession *)self _logHandle];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ACSURLSession _resumeTask:];
    }

    if ([v4 _internalState] != 2)
    {
      v12 = [(ACSURLSession *)self _queue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __29__ACSURLSession__resumeTask___block_invoke;
      v14[3] = &unk_278CC5010;
      v14[4] = self;
      v15 = v4;
      dispatch_async(v12, v14);

      goto LABEL_12;
    }

    v8 = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ACSURLSession _resumeTask:];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 originalRequest];
      v10 = [v9 URL];
      v11 = [v10 absoluteString];
      *buf = 138412546;
      v17 = v4;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_2411B8000, v7, OS_LOG_TYPE_DEFAULT, "ACSURLSessionTask %@ for %@ can not use caching server", buf, 0x16u);
    }

    v8 = [v4 _nsurlTaskToOrigin];
    [v8 resume];
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_resumeTask:(id)a3
{
  v4 = a3;
  v5 = [(ACSURLSession *)self _queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 originalRequest];
  v7 = [v6 URL];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __37__ACSURLSession__onqueue_resumeTask___block_invoke;
  v19[3] = &unk_278CC51C8;
  v19[4] = self;
  v8 = v4;
  v20 = v8;
  v9 = v6;
  v21 = v9;
  v10 = MEMORY[0x245CDE340](v19);
  if ([v8 _suspended])
  {
    [v8 set_suspended:0];
    [v8 set_internalState:1];
    v11 = [v8 _nsurlTaskToCachingServer];
    if (v11 && [v8 _tryCachingServer])
    {
      [v11 resume];
    }

    else
    {
      v13 = [v8 _nsurlTaskToOrigin];
      [v13 resume];
    }
  }

  else if (v7 && ([v8 _tryCachingServer] & 1) != 0)
  {
    v12 = [v8 _isUpload];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__ACSURLSession__onqueue_resumeTask___block_invoke_3;
    v14[3] = &unk_278CC51F0;
    v15 = v9;
    v16 = self;
    v17 = v8;
    v18 = v10;
    [(ACSURLSession *)self _locateCachingServerForURL:v7 isUpload:v12 completionHandler:v14];
  }

  else
  {
    v10[2](v10);
  }
}

void __37__ACSURLSession__onqueue_resumeTask___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ACSURLSession__onqueue_resumeTask___block_invoke_2;
  v5[3] = &unk_278CC51A0;
  v5[4] = v3;
  v6 = v2;
  v7 = a1[6];
  [v3 _onqueue_task:v6 willUseCachingServer:0 newRequest:v4 completionHandler:v5];
}

void __37__ACSURLSession__onqueue_resumeTask___block_invoke_2(id *a1, void *a2)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v3 = [a1[4] _queue];
  dispatch_assert_queue_V2(v3);

  if (v12 && [a1[4] _phase] != 2)
  {
    if (a1[6] != v12)
    {
      v6 = MEMORY[0x277CBEAD8];
      v7 = *MEMORY[0x277CBE660];
      v13[0] = @"session";
      v13[1] = @"request";
      v8 = a1[5];
      v14[0] = a1[4];
      v14[1] = v12;
      v13[2] = @"task";
      v14[2] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
      v10 = [v6 exceptionWithName:v7 reason:@"Cannot modify request when not using caching server" userInfo:v9];
      v11 = v10;

      objc_exception_throw(v10);
    }

    v4 = [a1[5] _nsurlTaskToOrigin];
    [v4 resume];
  }

  else
  {
    [a1[5] cancel];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __37__ACSURLSession__onqueue_resumeTask___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) mutableCopy];
    [v7 setURL:v5];
    [v7 setAllowsCellularAccess:0];
    v8 = [v6 objectForKeyedSubscript:@"connectTimeout"];
    v9 = v8;
    if (v8)
    {
      [v8 doubleValue];
      if (v10 < 30.0)
      {
        [v7 _setRequiresShortConnectionTimeout:1];
      }
    }

    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __37__ACSURLSession__onqueue_resumeTask___block_invoke_4;
    v13[3] = &unk_278CC51A0;
    v13[4] = v12;
    v14 = v11;
    v15 = *(a1 + 32);
    [v12 _onqueue_task:v14 willUseCachingServer:1 newRequest:v7 completionHandler:v13];
  }

  else
  {
    [*(a1 + 48) set_tryCachingServer:0];
    (*(*(a1 + 56) + 16))();
  }
}

void __37__ACSURLSession__onqueue_resumeTask___block_invoke_4(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] _queue];
  dispatch_assert_queue_V2(v4);

  if (v3 && [a1[4] _phase] != 2)
  {
    v5 = a1[5];
    if (a1[6] == v3)
    {
      [v5 set_tryCachingServer:0];
      v10 = [a1[5] _nsurlTaskToOrigin];
      [v10 resume];
    }

    else
    {
      v6 = [v5 _nsurlTaskForRequest:v3];
      if (v6)
      {
        [a1[5] set_nsurlTaskToCachingServer:v6];
        v7 = a1[4];
        v8 = [a1[5] _nsurlTaskToOrigin];
        v9 = [a1[5] _nsurlTaskToCachingServer];
        [v7 _copyAttributesFromNSURLTask:v8 toNSURLTask:v9];

        [a1[4] _onqueue_addTask:a1[5] forNSURLTask:v6];
        [v6 resume];
      }

      else
      {
        v11 = [a1[4] _logHandle];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __37__ACSURLSession__onqueue_resumeTask___block_invoke_4_cold_1(v11);
        }

        [a1[5] cancel];
      }
    }
  }

  else
  {
    [a1[5] cancel];
  }
}

- (void)_dataTask:(id)a3 completedWithData:(id)a4 response:(id)a5 error:(id)a6 completionHandler:(id)a7
{
  v42 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v33 = v12;
    v34 = 2048;
    v35 = [v13 length];
    v36 = 2112;
    v37 = v14;
    v38 = 2112;
    v39 = v15;
    v40 = 2112;
    v41 = self;
    _os_log_debug_impl(&dword_2411B8000, v17, OS_LOG_TYPE_DEBUG, "_dataTask:%@ completedWithData:[%ld bytes] response:%@ error:%@ self=%@", buf, 0x34u);
  }

  v18 = [(ACSURLSession *)self _queue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78__ACSURLSession__dataTask_completedWithData_response_error_completionHandler___block_invoke;
  v25[3] = &unk_278CC5240;
  v26 = v12;
  v27 = v15;
  v28 = v14;
  v29 = self;
  v30 = v13;
  v31 = v16;
  v19 = v13;
  v20 = v16;
  v21 = v14;
  v22 = v15;
  v23 = v12;
  dispatch_async(v18, v25);

  v24 = *MEMORY[0x277D85DE8];
}

void __78__ACSURLSession__dataTask_completedWithData_response_error_completionHandler___block_invoke(uint64_t a1)
{
  *&v37[13] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _nsurlTaskToCachingServer];
  if (!v2 || ![*(a1 + 32) _tryCachingServer])
  {
    v10 = 0;
LABEL_28:
    v16 = *(a1 + 56);
    v17 = *(a1 + 40);
    v18 = [*(a1 + 32) originalRequest];
    v19 = [*(a1 + 32) currentRequest];
    v20 = [v16 _errorWithResumeDataFromError:v17 originalRequest:v18 currentRequest:v19];

    v21 = [*(a1 + 56) _clientDelegateOpQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __78__ACSURLSession__dataTask_completedWithData_response_error_completionHandler___block_invoke_144;
    v25[3] = &unk_278CC5218;
    v31 = *(a1 + 72);
    v26 = *(a1 + 64);
    v27 = *(a1 + 48);
    v28 = v20;
    v32 = v10;
    v22 = *(a1 + 32);
    v23 = *(a1 + 56);
    v29 = v22;
    v30 = v23;
    v4 = v20;
    [v21 addOperationWithBlock:v25];

    goto LABEL_29;
  }

  if (![*(a1 + 32) _failBackToOrigin])
  {
LABEL_27:
    v10 = 1;
    goto LABEL_28;
  }

  v3 = [v2 currentRequest];
  v4 = [v3 URL];

  if (*(a1 + 40))
  {
    goto LABEL_5;
  }

  v11 = *(a1 + 48);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [*(a1 + 48) statusCode] < 400)
  {
    cf = 0;
    if (!ACSUpdateCachingServerHealth(v4, 0, 1, &cf))
    {
      v14 = [*(a1 + 56) _logHandle];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v4 absoluteString];
        *buf = 138412802;
        v35 = v15;
        v36 = 1024;
        *v37 = 1;
        v37[2] = 2112;
        *&v37[3] = cf;
        _os_log_impl(&dword_2411B8000, v14, OS_LOG_TYPE_DEFAULT, "ACSUpdateCachingServerHealth(%@, %d) failed: %@", buf, 0x1Cu);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_27;
  }

  if (!*(a1 + 40))
  {
    v5 = [*(a1 + 56) _logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 48) statusCode];
      v13 = [v4 absoluteString];
      *buf = 134218242;
      v35 = v12;
      v36 = 2112;
      *v37 = v13;
      _os_log_impl(&dword_2411B8000, v5, OS_LOG_TYPE_DEFAULT, "HTTP response %ld from %@, failing back to original", buf, 0x16u);
    }

    goto LABEL_7;
  }

LABEL_5:
  v5 = [*(a1 + 56) _logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = [v4 absoluteString];
    *buf = 138412546;
    v35 = v6;
    v36 = 2112;
    *v37 = v7;
    _os_log_impl(&dword_2411B8000, v5, OS_LOG_TYPE_DEFAULT, "Error %@ from %@, failing back to original", buf, 0x16u);
  }

LABEL_7:

  cf = 0;
  if (!ACSUpdateCachingServerHealth(v4, 0, 0, &cf))
  {
    v8 = [*(a1 + 56) _logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 absoluteString];
      *buf = 138412802;
      v35 = v9;
      v36 = 1024;
      *v37 = 0;
      v37[2] = 2112;
      *&v37[3] = cf;
      _os_log_impl(&dword_2411B8000, v8, OS_LOG_TYPE_DEFAULT, "ACSUpdateCachingServerHealth(%@, %d) failed: %@", buf, 0x1Cu);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  [*(a1 + 32) set_nsurlTaskToCachingServer:0];
  [*(a1 + 56) _onqueue_removeTaskForNSURLTask:v2];
  [*(a1 + 32) set_tryCachingServer:0];
  [*(a1 + 56) _onqueue_resumeTask:*(a1 + 32)];
LABEL_29:

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __78__ACSURLSession__dataTask_completedWithData_response_error_completionHandler___block_invoke_144(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  (*(*(a1 + 72) + 16))();
  if (*(a1 + 80) == 1)
  {
    v5 = [*(a1 + 56) _nsurlTaskToOrigin];
    [v5 cancel];
  }

  v7 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v6 _removeTask:v7];
}

- (void)_downloadTask:(id)a3 completedWithLocation:(id)a4 response:(id)a5 error:(id)a6 completionHandler:(id)a7
{
  v59 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v50 = v12;
    v51 = 2112;
    v52 = v13;
    v53 = 2112;
    v54 = v14;
    v55 = 2112;
    v56 = v15;
    v57 = 2112;
    v58 = self;
    _os_log_debug_impl(&dword_2411B8000, v17, OS_LOG_TYPE_DEBUG, "_downloadTask:%@ completedWithLocation:%@ response:%@ error:%@ self=%@", buf, 0x34u);
  }

  if (v13)
  {
    v18 = [(ACSURLSession *)self _linkedLocationWithLocation:v13];
    if (!v18)
    {
      v33 = MEMORY[0x277CBEAD8];
      v34 = *MEMORY[0x277CBE648];
      v47[0] = @"session";
      v47[1] = @"downloadTask";
      v48[0] = self;
      v48[1] = v12;
      v47[2] = @"location";
      v48[2] = v13;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
      v36 = [v33 exceptionWithName:v34 reason:@"ACSURLSession needs a non-reference file URL to a file" userInfo:v35];
      v37 = v36;

      objc_exception_throw(v36);
    }

    v19 = v18;
    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v46 = 0;
    v21 = [v20 linkItemAtURL:v13 toURL:v19 error:&v46];
    v22 = v46;

    if ((v21 & 1) == 0)
    {
      v23 = [(ACSURLSession *)self _logHandle];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v38 = [v13 path];
        v31 = [v19 path];
        *buf = 138412802;
        v50 = v38;
        v51 = 2112;
        v52 = v31;
        v32 = v31;
        v53 = 2112;
        v54 = v22;
        _os_log_error_impl(&dword_2411B8000, v23, OS_LOG_TYPE_ERROR, "ACSURLSession can not link %@ to %@: %@", buf, 0x20u);
      }

      if (!v15)
      {
        v15 = v22;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v24 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__ACSURLSession__downloadTask_completedWithLocation_response_error_completionHandler___block_invoke;
  block[3] = &unk_278CC5240;
  v40 = v12;
  v41 = v15;
  v42 = v14;
  v43 = self;
  v44 = v19;
  v45 = v16;
  v25 = v19;
  v26 = v16;
  v27 = v14;
  v28 = v15;
  v29 = v12;
  dispatch_async(v24, block);

  v30 = *MEMORY[0x277D85DE8];
}

void __86__ACSURLSession__downloadTask_completedWithLocation_response_error_completionHandler___block_invoke(uint64_t a1)
{
  *&v38[13] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _nsurlTaskToCachingServer];
  if (!v2 || ![*(a1 + 32) _tryCachingServer])
  {
    v11 = 0;
LABEL_29:
    v17 = *(a1 + 56);
    v18 = *(a1 + 40);
    v19 = [*(a1 + 32) originalRequest];
    v20 = [*(a1 + 32) currentRequest];
    v21 = [v17 _errorWithResumeDataFromError:v18 originalRequest:v19 currentRequest:v20];

    v22 = [*(a1 + 56) _clientDelegateOpQueue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __86__ACSURLSession__downloadTask_completedWithLocation_response_error_completionHandler___block_invoke_155;
    v26[3] = &unk_278CC5218;
    v32 = *(a1 + 72);
    v27 = *(a1 + 64);
    v28 = *(a1 + 48);
    v29 = v21;
    v33 = v11;
    v23 = *(a1 + 32);
    v24 = *(a1 + 56);
    v30 = v23;
    v31 = v24;
    v10 = v21;
    [v22 addOperationWithBlock:v26];

    goto LABEL_30;
  }

  if (![*(a1 + 32) _failBackToOrigin])
  {
LABEL_28:
    v11 = 1;
    goto LABEL_29;
  }

  v3 = [v2 currentRequest];
  v4 = [v3 URL];

  if (*(a1 + 40))
  {
    goto LABEL_5;
  }

  v12 = *(a1 + 48);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [*(a1 + 48) statusCode] < 400)
  {
    cf = 0;
    if (!ACSUpdateCachingServerHealth(v4, 0, 1, &cf))
    {
      v15 = [*(a1 + 56) _logHandle];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v4 absoluteString];
        *buf = 138412802;
        v36 = v16;
        v37 = 1024;
        *v38 = 1;
        v38[2] = 2112;
        *&v38[3] = cf;
        _os_log_impl(&dword_2411B8000, v15, OS_LOG_TYPE_DEFAULT, "ACSUpdateCachingServerHealth(%@, %d) failed: %@", buf, 0x1Cu);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_28;
  }

  if (*(a1 + 40))
  {
LABEL_5:
    v5 = [*(a1 + 56) _logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [v4 absoluteString];
      *buf = 138412546;
      v36 = v6;
      v37 = 2112;
      *v38 = v7;
      _os_log_impl(&dword_2411B8000, v5, OS_LOG_TYPE_DEFAULT, "Error %@ from %@, failing back to original", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v5 = [*(a1 + 56) _logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 48) statusCode];
    v14 = [v4 absoluteString];
    *buf = 134218242;
    v36 = v13;
    v37 = 2112;
    *v38 = v14;
    _os_log_impl(&dword_2411B8000, v5, OS_LOG_TYPE_DEFAULT, "HTTP response %ld from %@, failing back to original", buf, 0x16u);
  }

LABEL_7:

  cf = 0;
  if (!ACSUpdateCachingServerHealth(v4, 0, 0, &cf))
  {
    v8 = [*(a1 + 56) _logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 absoluteString];
      *buf = 138412802;
      v36 = v9;
      v37 = 1024;
      *v38 = 0;
      v38[2] = 2112;
      *&v38[3] = cf;
      _os_log_impl(&dword_2411B8000, v8, OS_LOG_TYPE_DEFAULT, "ACSUpdateCachingServerHealth(%@, %d) failed: %@", buf, 0x1Cu);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  [*(a1 + 32) set_nsurlTaskToCachingServer:0];
  [*(a1 + 56) _onqueue_removeTaskForNSURLTask:v2];
  [*(a1 + 32) set_tryCachingServer:0];
  [*(a1 + 56) _onqueue_resumeTask:*(a1 + 32)];

  if (*(a1 + 64))
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    [v10 removeItemAtURL:*(a1 + 64) error:0];
LABEL_30:
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __86__ACSURLSession__downloadTask_completedWithLocation_response_error_completionHandler___block_invoke_155(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  (*(*(a1 + 72) + 16))();
  if (*(a1 + 32))
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    [v5 removeItemAtURL:*(a1 + 32) error:0];
  }

  if (*(a1 + 80) == 1)
  {
    v6 = [*(a1 + 56) _nsurlTaskToOrigin];
    [v6 cancel];
  }

  v8 = *(a1 + 56);
  v7 = *(a1 + 64);

  return [v7 _removeTask:v8];
}

- (id)_resumeDataWithNSURLResumeData:(id)a3 originalRequest:(id)a4 currentRequest:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = MEMORY[0x277CBEB38];
  v12 = a5;
  v13 = a4;
  v14 = [v11 dictionary];
  [v14 setObject:&unk_2852F3390 forKeyedSubscript:@"_kACSURLSessionResumeDataVersionKey"];
  if (v10)
  {
    [v14 setObject:v10 forKeyedSubscript:@"_kACSURLSessionResumeDataNSURLResumeDataKey"];
  }

  v15 = [(ACSURLSession *)self _locateOptions];

  if (v15)
  {
    v16 = [(ACSURLSession *)self _locateOptions];
    [v14 setObject:v16 forKeyedSubscript:@"_kACSURLSessionResumeDataLocateOptionsKey"];
  }

  v17 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  v18 = *MEMORY[0x277CCA308];
  [v17 encodeObject:v13 forKey:*MEMORY[0x277CCA308]];

  v19 = [v17 encodedData];
  [v14 setObject:v19 forKeyedSubscript:@"_kACSURLSessionResumeDataOriginalRequestKey"];
  v20 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v20 encodeObject:v12 forKey:v18];

  v21 = [v20 encodedData];
  [v14 setObject:v21 forKeyedSubscript:@"_kACSURLSessionResumeDataCurrentRequestKey"];
  v22 = [MEMORY[0x277CCAC58] dataWithPropertyList:v14 format:100 options:0 error:a6];

  return v22;
}

- (BOOL)_resumeData:(id)a3 toNSURLResumeData:(id *)a4 originalRequest:(id *)a5 currentRequest:(id *)a6 error:(id *)a7
{
  v68[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  if (!v12)
  {
    v18 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277CCA450];
    v68[0] = @"Invalid resume data";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v14 = [v18 errorWithDomain:@"_kACSURLSessionErrorDomain" code:1 userInfo:v13];
    goto LABEL_11;
  }

  v62 = 0;
  v13 = [MEMORY[0x277CCAC58] propertyListWithData:v12 options:1 format:0 error:&v62];
  v14 = v62;
  if (!v13)
  {
LABEL_11:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_32;
  }

  v55 = a7;
  v15 = [v13 objectForKeyedSubscript:@"_kACSURLSessionResumeDataVersionKey"];
  v16 = [v13 objectForKeyedSubscript:@"_kACSURLSessionResumeDataNSURLResumeDataKey"];
  v59 = [v13 objectForKeyedSubscript:@"_kACSURLSessionResumeDataLocateOptionsKey"];
  v58 = [v13 objectForKeyedSubscript:@"_kACSURLSessionResumeDataOriginalRequestKey"];
  v57 = [v13 objectForKeyedSubscript:@"_kACSURLSessionResumeDataCurrentRequestKey"];
  v53 = v13;
  v54 = v16;
  if (v15 && ([v15 isEqual:&unk_2852F3390] & 1) != 0)
  {
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v17 = [(ACSURLSession *)self _locateOptions];
    if (v59)
    {
      if (![v59 isEqual:v17])
      {
        goto LABEL_28;
      }
    }

    else if (v17)
    {
      goto LABEL_28;
    }

    if (v58)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && v57)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (v59)
        {
        }

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_29;
        }

        v51 = v15;
        if (_resumeData_toNSURLResumeData_originalRequest_currentRequest_error__classesOnce != -1)
        {
          [ACSURLSession _resumeData:toNSURLResumeData:originalRequest:currentRequest:error:];
        }

        v61 = 0;
        v33 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v58 error:&v61];
        v34 = v61;
        v35 = *MEMORY[0x277CCA308];
        v36 = [v33 decodeObjectOfClasses:_resumeData_toNSURLResumeData_originalRequest_currentRequest_error__classes forKey:*MEMORY[0x277CCA308]];
        v50 = v33;
        [v33 finishDecoding];
        v56 = v36;
        if (v36 && ([v36 URL], v37 = objc_claimAutoreleasedReturnValue(), v37, v37))
        {
          v60 = v34;
          v38 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v57 error:&v60];
          v52 = v60;

          v19 = [v38 decodeObjectOfClasses:_resumeData_toNSURLResumeData_originalRequest_currentRequest_error__classes forKey:v35];
          v49 = v38;
          [v38 finishDecoding];
          if (v19)
          {
            v39 = [v19 URL];

            if (v39)
            {
              a7 = v55;
LABEL_53:
              v31 = v14;

              v14 = v50;
              v15 = v51;
              v25 = v52;
              goto LABEL_31;
            }
          }

          v48 = [MEMORY[0x277CBEB38] dictionary];
          [v48 setObject:@"Invalid resume data" forKeyedSubscript:*MEMORY[0x277CCA450]];
          [v48 setObject:v13 forKeyedSubscript:@"resumeDict"];
          a7 = v55;
          if (v52)
          {
            [v48 setObject:v52 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
          }

          [v48 setObject:v56 forKeyedSubscript:@"originalRequest"];
          if (v19)
          {
            [v48 setObject:v19 forKeyedSubscript:@"currentRequest"];
          }

          v47 = [MEMORY[0x277CCA9B8] errorWithDomain:@"_kACSURLSessionErrorDomain" code:5 userInfo:v48];

          v14 = v48;
        }

        else
        {
          v46 = [MEMORY[0x277CBEB38] dictionary];
          [v46 setObject:@"Invalid resume data" forKeyedSubscript:*MEMORY[0x277CCA450]];
          [v46 setObject:v13 forKeyedSubscript:@"resumeDict"];
          if (v34)
          {
            [v46 setObject:v34 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
          }

          a7 = v55;
          if (v36)
          {
            [v46 setObject:v36 forKeyedSubscript:@"originalRequest"];
          }

          v49 = v46;
          v47 = [MEMORY[0x277CCA9B8] errorWithDomain:@"_kACSURLSessionErrorDomain" code:4 userInfo:v46];
          v19 = 0;
          v52 = v34;
        }

        v14 = v47;
        goto LABEL_53;
      }

      if (!v59)
      {
LABEL_29:
        v40 = MEMORY[0x277CCA9B8];
        v63[0] = *MEMORY[0x277CCA450];
        v63[1] = @"resumeDict";
        v64[0] = @"Invalid resume data";
        v64[1] = v13;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
        v31 = [v40 errorWithDomain:@"_kACSURLSessionErrorDomain" code:3 userInfo:v25];
        v19 = 0;
        v56 = 0;
        goto LABEL_30;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  v22 = MEMORY[0x277CCA9B8];
  v65[0] = *MEMORY[0x277CCA450];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown resume data version %@", v15];
  v24 = v13;
  v25 = v23;
  v65[1] = @"resumeDict";
  v66[0] = v23;
  v66[1] = v24;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
  v26 = v12;
  v27 = a4;
  v28 = a6;
  v30 = v29 = a5;
  v31 = [v22 errorWithDomain:@"_kACSURLSessionErrorDomain" code:2 userInfo:v30];

  v19 = 0;
  v56 = 0;
  v14 = v30;
  a5 = v29;
  a6 = v28;
  a4 = v27;
  v12 = v26;
LABEL_30:
  a7 = v55;
LABEL_31:

  v14 = v31;
  v13 = v53;
  v21 = v54;
  v20 = v56;
LABEL_32:

  if (v14)
  {
    v41 = v14;
    a6 = a7;
    if (a7)
    {
LABEL_34:
      *a6 = v41;
    }
  }

  else
  {
    if (a4)
    {
      v44 = v21;
      *a4 = v21;
    }

    if (a5)
    {
      v45 = v20;
      *a5 = v20;
    }

    v41 = v19;
    if (a6)
    {
      goto LABEL_34;
    }
  }

  v42 = *MEMORY[0x277D85DE8];
  return v14 == 0;
}

uint64_t __84__ACSURLSession__resumeData_toNSURLResumeData_originalRequest_currentRequest_error___block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v9 = _resumeData_toNSURLResumeData_originalRequest_currentRequest_error__classes;
  _resumeData_toNSURLResumeData_originalRequest_currentRequest_error__classes = v8;

  result = objc_opt_class();
  if (result)
  {
    v11 = [MEMORY[0x277D6A758] knownSZExtractorImplementations];
    if (v11)
    {
      [_resumeData_toNSURLResumeData_originalRequest_currentRequest_error__classes unionSet:v11];
    }

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)_errorWithResumeDataFromError:(id)a3 originalRequest:(id)a4 currentRequest:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [v8 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA788]];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = 0;
      v13 = [(ACSURLSession *)self _resumeDataWithNSURLResumeData:v12 originalRequest:v9 currentRequest:v10 error:&v22];
      v14 = v22;
      if (v13)
      {
        v15 = [v11 mutableCopy];
        [v15 setObject:v13 forKeyedSubscript:@"NSURLSessionDownloadTaskResumeData"];
        v16 = MEMORY[0x277CCA9B8];
        v17 = [v8 domain];
        v18 = [v16 errorWithDomain:v17 code:objc_msgSend(v8 userInfo:{"code"), v15}];
      }

      else
      {
        v19 = [(ACSURLSession *)self _logHandle];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v14;
          _os_log_impl(&dword_2411B8000, v19, OS_LOG_TYPE_DEFAULT, "ACSURLSession failed to convert resume data: %@", buf, 0xCu);
        }

        v18 = v8;
      }
    }

    else
    {
      v18 = v8;
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_linkedLocationWithLocation:(id)a3
{
  v3 = a3;
  v4 = [v3 path];
  v5 = [v4 mutableCopy];

  v6 = [v5 rangeOfString:@"/" options:4];
  v8 = v7;
  if (![v3 isFileURL])
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  if (([v3 isFileReferenceURL] & 1) == 0 && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v6 + v8 < [v5 length])
    {
      [v5 insertString:@"ACS~" atIndex:v6 + v8];
      v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (void)_copyAttributesFromNSURLTask:(id)a3 toNSURLTask:(id)a4
{
  v9 = a4;
  v5 = a3;
  [v9 setCountOfBytesClientExpectsToSend:{objc_msgSend(v5, "countOfBytesClientExpectsToSend")}];
  [v9 setCountOfBytesClientExpectsToReceive:{objc_msgSend(v5, "countOfBytesClientExpectsToReceive")}];
  [v5 priority];
  v7 = v6;

  LODWORD(v8) = v7;
  [v9 setPriority:v8];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = self;
    _os_log_debug_impl(&dword_2411B8000, v9, OS_LOG_TYPE_DEBUG, "URLSession:%@ didBecomeInvalidWithError:%@ self=%@", buf, 0x20u);
  }

  v10 = [(ACSURLSession *)self _queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke;
  v14[3] = &unk_278CC5268;
  v15 = v7;
  v16 = self;
  v17 = v8;
  v18 = a2;
  v11 = v8;
  v12 = v7;
  dispatch_async(v10, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = [*(a1 + 40) _nsurlSession];

  if (v2 != v4)
  {
    __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke_cold_1();
  }

  v5 = [*v3 _clientDelegate];
  v6 = [*v3 _clientDelegateOpQueue];
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke_2;
    v10[3] = &unk_278CC51C8;
    v7 = v5;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    [v6 addOperationWithBlock:v10];
  }

  else
  {
    [*v3 set_clientDelegate:0];
    [*v3 set_clientDelegateOpQueue:0];
    [*v3 set_nsurlSession:0];
  }
}

void __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) URLSession:*(a1 + 40) didBecomeInvalidWithError:*(a1 + 48)];
  v2 = [*(a1 + 40) _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke_3;
  block[3] = &unk_278CC4EA8;
  block[4] = *(a1 + 40);
  dispatch_async(v2, block);
}

uint64_t __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) set_clientDelegate:0];
  [*(a1 + 32) set_clientDelegateOpQueue:0];
  v2 = *(a1 + 32);

  return [v2 set_nsurlSession:0];
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = self;
    _os_log_debug_impl(&dword_2411B8000, v12, OS_LOG_TYPE_DEBUG, "URLSession:%@ didReceiveChallenge:%@ self=%@", buf, 0x20u);
  }

  v13 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke;
  block[3] = &unk_278CC5308;
  block[4] = self;
  v19 = v9;
  v21 = v11;
  v22 = a2;
  v20 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v11;
  dispatch_async(v13, block);

  v17 = *MEMORY[0x277D85DE8];
}

void __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke_2;
      v14[3] = &unk_278CC52B8;
      v8 = v15;
      v9 = v6;
      v10 = *(a1 + 32);
      v15[0] = v9;
      v15[1] = v10;
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      [v7 addOperationWithBlock:v14];
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke_4;
      v12[3] = &unk_278CC52E0;
      v8 = &v13;
      v13 = *(a1 + 56);
      [v7 addOperationWithBlock:v12];
    }
  }

  else
  {
    v11 = *(*(a1 + 56) + 16);

    v11();
  }
}

void __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke_3;
  v4[3] = &unk_278CC5290;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 URLSession:v2 didReceiveChallenge:v3 completionHandler:v4];
}

- (void)URLSession:(id)a3 task:(id)a4 willBeginDelayedRequest:(id)a5 completionHandler:(id)a6
{
  v20[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE648];
  v19[0] = @"session";
  v19[1] = @"nsurlTask";
  v20[0] = self;
  v20[1] = v11;
  v19[2] = @"request";
  v20[2] = v12;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v17 = [v14 exceptionWithName:v15 reason:@"ACSURLSession does not support background sessions" userInfo:v16];
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v8 descriptionWithAddress];
    *buf = 138412802;
    v20 = v7;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = self;
    _os_log_debug_impl(&dword_2411B8000, v9, OS_LOG_TYPE_DEBUG, "URLSession:%@ taskIsWaitingForConnectivity:%@ self=%@", buf, 0x20u);
  }

  v10 = [(ACSURLSession *)self _queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__ACSURLSession_URLSession_taskIsWaitingForConnectivity___block_invoke;
  v15[3] = &unk_278CC5268;
  v15[4] = self;
  v16 = v7;
  v17 = v8;
  v18 = a2;
  v11 = v8;
  v12 = v7;
  dispatch_async(v10, v15);

  v13 = *MEMORY[0x277D85DE8];
}

void __57__ACSURLSession_URLSession_taskIsWaitingForConnectivity___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __57__ACSURLSession_URLSession_taskIsWaitingForConnectivity___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v9 = v8;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __57__ACSURLSession_URLSession_taskIsWaitingForConnectivity___block_invoke_2;
        v13[3] = &unk_278CC51C8;
        v10 = v6;
        v11 = *v2;
        v14 = v10;
        v15 = v11;
        v16 = v9;
        v12 = v9;
        [v7 addOperationWithBlock:v13];
      }
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v44 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v26 = [v14 descriptionWithAddress];
    *buf = 138413314;
    v35 = v13;
    v36 = 2112;
    v37 = v26;
    v38 = 2112;
    v39 = v15;
    v40 = 2112;
    v41 = v16;
    v42 = 2112;
    v43 = self;
    _os_log_debug_impl(&dword_2411B8000, v18, OS_LOG_TYPE_DEBUG, "URLSession:%@ task:%@ willPerformHTTPRedirection:%@ newRequest:%@ self=%@", buf, 0x34u);
  }

  v19 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke;
  block[3] = &unk_278CC5358;
  block[4] = self;
  v28 = v13;
  v32 = v17;
  v33 = a2;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = v17;
  dispatch_async(v19, block);

  v25 = *MEMORY[0x277D85DE8];
}

void __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_3;
        v16[3] = &unk_278CC5330;
        v9 = v17;
        v10 = v6;
        v11 = *(a1 + 32);
        v17[0] = v10;
        v17[1] = v11;
        v18 = v8;
        v19 = *(a1 + 56);
        v20 = *(a1 + 64);
        v21 = *(a1 + 72);
        [v7 addOperationWithBlock:v16];
      }

      else
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_2;
        v22[3] = &unk_278CC52E0;
        v9 = &v23;
        v23 = *(a1 + 72);
        [v7 addOperationWithBlock:v22];
      }
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_4;
      v13[3] = &unk_278CC4F20;
      v15 = *(a1 + 72);
      v14 = *(a1 + 64);
      [v7 addOperationWithBlock:v13];

      v8 = v15;
    }
  }

  else
  {
    v12 = *(*(a1 + 72) + 16);

    v12();
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v22 = [v12 descriptionWithAddress];
    *buf = 138413058;
    v30 = v11;
    v31 = 2112;
    v32 = v22;
    v33 = 2112;
    v34 = v13;
    v35 = 2112;
    v36 = self;
    _os_log_debug_impl(&dword_2411B8000, v15, OS_LOG_TYPE_DEBUG, "URLSession:%@ task:%@ didReceiveChallenge:%@ self=%@", buf, 0x2Au);
  }

  v16 = [(ACSURLSession *)self _queue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke;
  v23[3] = &unk_278CC53D0;
  v23[4] = self;
  v24 = v11;
  v27 = v14;
  v28 = a2;
  v25 = v12;
  v26 = v13;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v14;
  dispatch_async(v16, v23);

  v21 = *MEMORY[0x277D85DE8];
}

void __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_3;
        v15[3] = &unk_278CC53A8;
        v9 = v16;
        v10 = v6;
        v11 = *(a1 + 32);
        v16[0] = v10;
        v16[1] = v11;
        v17 = v8;
        v18 = *(a1 + 56);
        v19 = *(a1 + 64);
        [v7 addOperationWithBlock:v15];
      }

      else
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_2;
        v20[3] = &unk_278CC52E0;
        v9 = &v21;
        v21 = *(a1 + 64);
        [v7 addOperationWithBlock:v20];
      }
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_5;
      v13[3] = &unk_278CC52E0;
      v14 = *(a1 + 64);
      [v7 addOperationWithBlock:v13];
      v8 = v14;
    }
  }

  else
  {
    v12 = *(*(a1 + 64) + 16);

    v12();
  }
}

void __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_4;
  v6[3] = &unk_278CC5380;
  v7 = v4;
  v8 = *(a1 + 64);
  [v2 URLSession:v3 task:v7 didReceiveChallenge:v5 completionHandler:v6];
}

void __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 2)
  {
    [*(a1 + 32) set_failBackToOrigin:0];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = [v10 descriptionWithAddress];
    *buf = 138412802;
    v25 = v9;
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = self;
    _os_log_debug_impl(&dword_2411B8000, v12, OS_LOG_TYPE_DEBUG, "URLSession:%@ task:%@ needNewBodyStream self=%@", buf, 0x20u);
  }

  v13 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke;
  block[3] = &unk_278CC5308;
  block[4] = self;
  v20 = v9;
  v22 = v11;
  v23 = a2;
  v21 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v11;
  dispatch_async(v13, block);

  v17 = *MEMORY[0x277D85DE8];
}

void __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nsurlSession];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) _nsurlSession];

    if (v3 != v4)
    {
      __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_cold_1();
    }

    v5 = [*(a1 + 32) _clientDelegate];
    v6 = [*(a1 + 32) _clientDelegateOpQueue];
    v7 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
    if (v7)
    {
      if (objc_opt_respondsToSelector())
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_3;
        v16[3] = &unk_278CC52B8;
        v8 = v17;
        v9 = v5;
        v10 = *(a1 + 32);
        v17[0] = v9;
        v17[1] = v10;
        v18 = v7;
        v19 = *(a1 + 56);
        [v6 addOperationWithBlock:v16];

        v11 = v18;
      }

      else
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_5;
        v13[3] = &unk_278CC4ED0;
        v8 = &v14;
        v14 = v7;
        v15 = *(a1 + 56);
        [v6 addOperationWithBlock:v13];
        v11 = v15;
      }
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_2;
      v20[3] = &unk_278CC52E0;
      v8 = &v21;
      v21 = *(a1 + 56);
      [v6 addOperationWithBlock:v20];
    }
  }

  else
  {
    v12 = *(*(a1 + 56) + 16);

    v12();
  }
}

void __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_4;
  v5[3] = &unk_278CC53F8;
  v6 = v4;
  v7 = *(a1 + 56);
  [v2 URLSession:v3 task:v6 needNewBodyStream:v5];
}

void __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    [*(a1 + 32) set_failBackToOrigin:0];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) set_failBackToOrigin:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v14 descriptionWithAddress];
    *buf = 138413570;
    v29 = v13;
    v30 = 2112;
    v31 = v20;
    v32 = 2048;
    v33 = a5;
    v34 = 2048;
    v35 = a6;
    v36 = 2048;
    v37 = a7;
    v38 = 2112;
    v39 = self;
    _os_log_debug_impl(&dword_2411B8000, v15, OS_LOG_TYPE_DEBUG, "URLSession:%@ task:%@ didSendBodyData:%lld totalBytesSent:%lld totalBytesExpectedToSend:%lld self=%@", buf, 0x3Eu);
  }

  v16 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ACSURLSession_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke;
  block[3] = &unk_278CC5448;
  block[4] = self;
  v22 = v13;
  v23 = v14;
  v24 = a2;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v17 = v14;
  v18 = v13;
  dispatch_async(v16, block);

  v19 = *MEMORY[0x277D85DE8];
}

void __89__ACSURLSession_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __89__ACSURLSession_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v9 = v8;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __89__ACSURLSession_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke_2;
        v13[3] = &unk_278CC5420;
        v10 = v6;
        v11 = *(a1 + 32);
        v14 = v10;
        v15 = v11;
        v16 = v9;
        v17 = *(a1 + 64);
        v18 = *(a1 + 80);
        v12 = v9;
        [v7 addOperationWithBlock:v13];
      }
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = [v10 descriptionWithAddress];
    *buf = 138413058;
    v25 = v9;
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = self;
    _os_log_debug_impl(&dword_2411B8000, v12, OS_LOG_TYPE_DEBUG, "URLSession:%@ task:%@ didFinishCollectingMetrics:%@ self=%@", buf, 0x2Au);
  }

  v13 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ACSURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke;
  block[3] = &unk_278CC5498;
  block[4] = self;
  v20 = v9;
  v22 = v11;
  v23 = a2;
  v21 = v10;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(v13, block);

  v17 = *MEMORY[0x277D85DE8];
}

void __60__ACSURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __60__ACSURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v9 = v8;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __60__ACSURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_2;
        v13[3] = &unk_278CC5470;
        v10 = v6;
        v11 = *(a1 + 32);
        v14 = v10;
        v15 = v11;
        v16 = v9;
        v17 = *(a1 + 56);
        v12 = v9;
        [v7 addOperationWithBlock:v13];
      }
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = [v10 descriptionWithAddress];
    *buf = 138413058;
    v25 = v9;
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = self;
    _os_log_debug_impl(&dword_2411B8000, v12, OS_LOG_TYPE_DEBUG, "URLSession:%@ task:%@ didCompleteWithError:%@ self=%@", buf, 0x2Au);
  }

  v13 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ACSURLSession_URLSession_task_didCompleteWithError___block_invoke;
  block[3] = &unk_278CC5498;
  block[4] = self;
  v20 = v9;
  v22 = v11;
  v23 = a2;
  v21 = v10;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(v13, block);

  v17 = *MEMORY[0x277D85DE8];
}

void __54__ACSURLSession_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  *&v49[13] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __54__ACSURLSession_URLSession_task_didCompleteWithError___block_invoke_cold_1();
    }

    v6 = [*(a1 + 48) response];
    v7 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
    v8 = v7;
    if (!v7)
    {
      goto LABEL_30;
    }

    v9 = [v7 _nsurlTaskToCachingServer];
    if (*(a1 + 48) == v9 && [v8 _tryCachingServer])
    {
      if ([v8 _failBackToOrigin])
      {
        v10 = [v9 currentRequest];
        v11 = [v10 URL];

        v12 = *(a1 + 56);
        if (v12 || !v6)
        {
          goto LABEL_13;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 statusCode] >= 400)
        {
          v12 = *(a1 + 56);
LABEL_13:
          v13 = [*v2 _logHandle];
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          if (v12)
          {
            if (v14)
            {
              v15 = *(a1 + 56);
              v16 = [v11 absoluteString];
              *buf = 138412546;
              v47 = v15;
              v48 = 2112;
              *v49 = v16;
              _os_log_impl(&dword_2411B8000, v13, OS_LOG_TYPE_DEFAULT, "Error %@ from %@, failing back to original", buf, 0x16u);
            }
          }

          else if (v14)
          {
            v34 = [v6 statusCode];
            v35 = [v11 absoluteString];
            *buf = 134218242;
            v47 = v34;
            v48 = 2112;
            *v49 = v35;
            _os_log_impl(&dword_2411B8000, v13, OS_LOG_TYPE_DEFAULT, "HTTP response %ld from %@, failing back to original", buf, 0x16u);
          }

          cf = 0;
          if (!ACSUpdateCachingServerHealth(v11, 0, 0, &cf))
          {
            v36 = [*v2 _logHandle];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = [v11 absoluteString];
              *buf = 138412802;
              v47 = v37;
              v48 = 1024;
              *v49 = 0;
              v49[2] = 2112;
              *&v49[3] = cf;
              _os_log_impl(&dword_2411B8000, v36, OS_LOG_TYPE_DEFAULT, "ACSUpdateCachingServerHealth(%@, %d) failed: %@", buf, 0x1Cu);
            }
          }

          if (cf)
          {
            CFRelease(cf);
          }

          [v8 set_nsurlTaskToCachingServer:0];
          [*v2 _onqueue_removeTaskForNSURLTask:v9];
          [v8 set_tryCachingServer:0];
          [*v2 _onqueue_resumeTask:v8];
LABEL_29:

LABEL_30:
          goto LABEL_31;
        }

        cf = 0;
        if (!ACSUpdateCachingServerHealth(v11, 0, 1, &cf))
        {
          v32 = [*v2 _logHandle];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v11 absoluteString];
            *buf = 138412802;
            v47 = v33;
            v48 = 1024;
            *v49 = 1;
            v49[2] = 2112;
            *&v49[3] = cf;
            _os_log_impl(&dword_2411B8000, v32, OS_LOG_TYPE_DEFAULT, "ACSUpdateCachingServerHealth(%@, %d) failed: %@", buf, 0x1Cu);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v11 = *(a1 + 56);
    if (!v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v8;
        v11 = [v18 _deferredLinkError];

        if (v11)
        {
          v11 = [v18 _deferredLinkError];
          [v18 set_deferredLinkError:0];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    v19 = [*v2 _clientDelegate];
    v20 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v21 = *v2;
      [v8 originalRequest];
      v38 = v17;
      v22 = v6;
      v24 = v23 = v9;
      v25 = [v8 currentRequest];
      v26 = [v21 _errorWithResumeDataFromError:v11 originalRequest:v24 currentRequest:v25];

      v9 = v23;
      v6 = v22;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __54__ACSURLSession_URLSession_task_didCompleteWithError___block_invoke_211;
      v39[3] = &unk_278CC54C0;
      v27 = v19;
      v28 = *v2;
      v40 = v27;
      v41 = v28;
      v42 = v8;
      v43 = v26;
      v44 = v38;
      v29 = v26;
      [v20 addOperationWithBlock:v39];
    }

    else
    {
      if (v17)
      {
        v30 = [v8 _nsurlTaskToOrigin];
        [v30 cancel];
      }

      [*v2 _removeTask:v8];
    }

    goto LABEL_29;
  }

LABEL_31:
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __54__ACSURLSession_URLSession_task_didCompleteWithError___block_invoke_211(uint64_t a1)
{
  [*(a1 + 32) URLSession:*(a1 + 40) task:*(a1 + 48) didCompleteWithError:*(a1 + 56)];
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 48) _nsurlTaskToOrigin];
    [v2 cancel];
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _removeTask:v4];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v13;
    v34 = 2112;
    v35 = self;
    _os_log_debug_impl(&dword_2411B8000, v15, OS_LOG_TYPE_DEBUG, "URLSession:%@ dataTask:%@ didReceiveResponse:%@ self=%@", buf, 0x2Au);
  }

  v16 = [(ACSURLSession *)self _queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
  v22[3] = &unk_278CC53D0;
  v22[4] = self;
  v23 = v11;
  v26 = v14;
  v27 = a2;
  v24 = v12;
  v25 = v13;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v14;
  dispatch_async(v16, v22);

  v21 = *MEMORY[0x277D85DE8];
}

void __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_cold_1();
    }

    v6 = [*(a1 + 32) _clientDelegate];
    v7 = [*(a1 + 32) _clientDelegateOpQueue];
    v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
    if (!v8)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2;
      v35[3] = &unk_278CC52E0;
      v36 = *(a1 + 64);
      [v7 addOperationWithBlock:v35];
      v9 = v36;
LABEL_25:

      v22 = *MEMORY[0x277D85DE8];
      return;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_cold_2();
    }

    v9 = v8;
    v10 = [v9 _nsurlTaskToCachingServer];
    if (*(a1 + 48) == v10 && [v9 _tryCachingServer] && (v11 = *(a1 + 56), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(*(a1 + 56), "statusCode") >= 400)
    {
      if ([v9 _failBackToOrigin])
      {
        v12 = [*v2 _logHandle];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*(a1 + 56) statusCode];
          v14 = [*(a1 + 56) URL];
          v15 = [v14 absoluteString];
          *buf = 134218242;
          v38 = v13;
          v39 = 2112;
          v40 = v15;
          _os_log_impl(&dword_2411B8000, v12, OS_LOG_TYPE_DEFAULT, "HTTP response %ld from %@, canceling to fail back to original", buf, 0x16u);
        }
      }

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_215;
      v33[3] = &unk_278CC52E0;
      v16 = &v34;
      v34 = *(a1 + 64);
      v17 = v33;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2_218;
        v28[3] = &unk_278CC53A8;
        v16 = v29;
        v20 = v6;
        v21 = *(a1 + 32);
        v29[0] = v20;
        v29[1] = v21;
        v30 = v9;
        v31 = *(a1 + 56);
        v32 = *(a1 + 64);
        [v7 addOperationWithBlock:v28];

LABEL_24:
        goto LABEL_25;
      }

      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_4;
      v26 = &unk_278CC52E0;
      v16 = &v27;
      v27 = *(a1 + 64);
      v17 = &v23;
    }

    [v7 addOperationWithBlock:{v17, v23, v24, v25, v26, v27}];
    goto LABEL_24;
  }

  v18 = *(*(a1 + 64) + 16);
  v19 = *MEMORY[0x277D85DE8];

  v18();
}

void __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_2_218(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_3;
  v6[3] = &unk_278CC54E8;
  v6[4] = v3;
  v7 = v4;
  v8 = *(a1 + 64);
  [v2 URLSession:v3 dataTask:v7 didReceiveResponse:v5 completionHandler:v6];
}

uint64_t __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (a2 == 3)
    {
      v3 = MEMORY[0x277CBEAD8];
      v4 = *MEMORY[0x277CBE648];
      v12[0] = @"session";
      v12[1] = @"task";
      v5 = *(a1 + 40);
      v13[0] = *(a1 + 32);
      v13[1] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
      v7 = [v3 exceptionWithName:v4 reason:@"ACSURLSession does not support stream tasks" userInfo:v6];
      v8 = v7;

      objc_exception_throw(v7);
    }
  }

  else
  {
    [*(a1 + 40) set_failBackToOrigin:0];
  }

  v9 = *(*(a1 + 48) + 16);
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeDownloadTask:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = self;
    _os_log_debug_impl(&dword_2411B8000, v12, OS_LOG_TYPE_DEBUG, "URLSession:%@ dataTask:%@ didBecomeDownloadTask:%@ self=%@", buf, 0x2Au);
  }

  v13 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke;
  block[3] = &unk_278CC5498;
  block[4] = self;
  v19 = v9;
  v21 = v11;
  v22 = a2;
  v20 = v10;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(v13, block);

  v17 = *MEMORY[0x277D85DE8];
}

void __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_cold_1();
    }

    v6 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_cold_2();
      }

      v7 = v6;
      v8 = [*(a1 + 56) currentRequest];
      if ([v7 _tryCachingServer])
      {
        v9 = [v7 originalRequest];
      }

      else
      {
        v9 = v8;
      }

      v10 = v9;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_2;
      v39[3] = &unk_278CC5100;
      v11 = v8;
      v40 = v11;
      v12 = *(a1 + 56);
      v13 = *(a1 + 32);
      v41 = v12;
      v42 = v13;
      v31 = MEMORY[0x245CDE340](v39);
      v32 = v10;
      v14 = [[ACSURLSessionDownloadTask alloc] initWithNSURLDownloadTaskCreator:v31 initialRequest:v10 forSession:*(a1 + 32)];
      v15 = *(a1 + 32);
      v16 = [(ACSURLSessionTask *)v14 _nsurlTaskToOrigin];
      [v15 _onqueue_addTask:v14 forNSURLTask:v16];

      v17 = *(a1 + 48);
      v18 = [v7 _nsurlTaskToCachingServer];

      if (v17 == v18)
      {
        v30 = [(ACSURLSessionTask *)v14 _nsurlTaskForRequest:v11];
        [(ACSURLSessionTask *)v14 set_nsurlTaskToCachingServer:v30];
        v19 = *v2;
        v20 = [(ACSURLSessionTask *)v14 _nsurlTaskToOrigin];
        [(ACSURLSessionTask *)v14 _nsurlTaskToCachingServer];
        v21 = v6;
        v22 = v7;
        v24 = v23 = v11;
        [v19 _copyAttributesFromNSURLTask:v20 toNSURLTask:v24];

        v11 = v23;
        v7 = v22;
        v6 = v21;

        -[ACSURLSessionTask set_suspended:](v14, "set_suspended:", [v7 _suspended]);
        [*v2 _onqueue_addTask:v14 forNSURLTask:v30];
      }

      else
      {
        [(ACSURLSessionTask *)v14 set_tryCachingServer:0];
      }

      v25 = [*v2 _clientDelegate];
      v26 = [*v2 _clientDelegateOpQueue];
      if (objc_opt_respondsToSelector())
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_3;
        v33[3] = &unk_278CC54C0;
        v27 = v25;
        v28 = *v2;
        v34 = v27;
        v35 = v28;
        v36 = v7;
        v37 = v14;
        v38 = v17 == v18;
        [v26 addOperationWithBlock:v33];
      }

      else
      {
        if (v17 == v18)
        {
          v29 = [v7 _nsurlTaskToOrigin];
          [v29 cancel];
        }

        [*v2 _removeTask:v7];
      }
    }
  }
}

id __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = a2;
    v4 = [v2 _nsurlSession];
    v5 = [v4 downloadTaskWithRequest:v3];
  }

  return v5;
}

uint64_t __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) URLSession:*(a1 + 40) dataTask:*(a1 + 48) didBecomeDownloadTask:*(a1 + 56)];
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 48) _nsurlTaskToOrigin];
    [v2 cancel];
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 _removeTask:v4];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeStreamTask:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ACSURLSession_URLSession_dataTask_didBecomeStreamTask___block_invoke;
  block[3] = &unk_278CC5498;
  block[4] = self;
  v17 = v9;
  v19 = v11;
  v20 = a2;
  v18 = v10;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, block);
}

void __57__ACSURLSession_URLSession_dataTask_didBecomeStreamTask___block_invoke(uint64_t a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __57__ACSURLSession_URLSession_dataTask_didBecomeStreamTask___block_invoke_cold_1();
    }

    v6 = (a1 + 48);
    v7 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
    if (v7)
    {
      v9 = v7;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __57__ACSURLSession_URLSession_dataTask_didBecomeStreamTask___block_invoke_cold_2();
      }

      v10 = v9;
      [*v2 _onqueue_removeTaskForNSURLTask:*v6];
      v11 = *v6;
      v12 = [v10 _nsurlTaskToCachingServer];

      if (v11 == v12)
      {
        v13 = *v2;
        v14 = [v10 _nsurlTaskToOrigin];
        [v13 _onqueue_removeTaskForNSURLTask:v14];
      }

      v15 = MEMORY[0x277CBEAD8];
      v16 = *MEMORY[0x277CBE648];
      v17 = *(a1 + 32);
      v22[0] = @"session";
      v22[1] = @"nsurlTask";
      v18 = *(a1 + 56);
      v23[0] = v17;
      v23[1] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
      v20 = [v15 exceptionWithName:v16 reason:@"ACSURLSession does not support stream tasks" userInfo:v19];
      v21 = v20;

      objc_exception_throw(v20);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    v27 = 2048;
    v28 = [v11 length];
    v29 = 2112;
    v30 = self;
    _os_log_debug_impl(&dword_2411B8000, v12, OS_LOG_TYPE_DEBUG, "URLSession:%@ dataTask:%@ didReceiveData:[%ld bytes] self=%@", buf, 0x2Au);
  }

  v13 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke;
  block[3] = &unk_278CC5498;
  block[4] = self;
  v19 = v9;
  v21 = v11;
  v22 = a2;
  v20 = v10;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(v13, block);

  v17 = *MEMORY[0x277D85DE8];
}

void __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v9 = v8;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke_cold_2();
        }

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke_2;
        v13[3] = &unk_278CC5470;
        v10 = v6;
        v11 = *(a1 + 32);
        v14 = v10;
        v15 = v11;
        v16 = v9;
        v17 = *(a1 + 56);
        v12 = v9;
        [v7 addOperationWithBlock:v13];
      }
    }
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v13;
    v34 = 2112;
    v35 = self;
    _os_log_debug_impl(&dword_2411B8000, v15, OS_LOG_TYPE_DEBUG, "URLSession:%@ dataTask:%@ willCacheResponse:%@ self=%@", buf, 0x2Au);
  }

  v16 = [(ACSURLSession *)self _queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke;
  v22[3] = &unk_278CC53D0;
  v22[4] = self;
  v23 = v11;
  v26 = v14;
  v27 = a2;
  v24 = v12;
  v25 = v13;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v14;
  dispatch_async(v16, v22);

  v21 = *MEMORY[0x277D85DE8];
}

void __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_cold_2();
        }

        v9 = v8;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_3;
        v17[3] = &unk_278CC53A8;
        v10 = v18;
        v11 = v6;
        v12 = *(a1 + 32);
        v18[0] = v11;
        v18[1] = v12;
        v19 = v9;
        v20 = *(a1 + 56);
        v21 = *(a1 + 64);
        [v7 addOperationWithBlock:v17];
      }

      else
      {
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_2;
        v22[3] = &unk_278CC52E0;
        v10 = &v23;
        v23 = *(a1 + 64);
        [v7 addOperationWithBlock:v22];
      }
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_4;
      v14[3] = &unk_278CC4F20;
      v16 = *(a1 + 64);
      v15 = *(a1 + 56);
      [v7 addOperationWithBlock:v14];

      v8 = v16;
    }
  }

  else
  {
    v13 = *(*(a1 + 64) + 16);

    v13();
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v10 response];
    *buf = 138413314;
    v44 = v9;
    v45 = 2112;
    v46 = v10;
    v47 = 2112;
    v48 = v11;
    v49 = 2112;
    v50 = v25;
    v51 = 2112;
    v52 = self;
    _os_log_debug_impl(&dword_2411B8000, v12, OS_LOG_TYPE_DEBUG, "URLSession:%@ downloadTask:%@ didFinishDownloadingToURL:%@ response=%@ self=%@", buf, 0x34u);
  }

  v13 = [(ACSURLSession *)self _linkedLocationWithLocation:v11];
  if (!v13)
  {
    v29 = MEMORY[0x277CBEAD8];
    v30 = *MEMORY[0x277CBE648];
    v41[0] = @"session";
    v41[1] = @"nsurlTask";
    v42[0] = self;
    v42[1] = v10;
    v41[2] = @"location";
    v42[2] = v11;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
    v32 = [v29 exceptionWithName:v30 reason:@"ACSURLSession needs a non-reference file URL to a file" userInfo:v31];
    v33 = v32;

    objc_exception_throw(v32);
  }

  v14 = v13;
  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v40 = 0;
  v16 = [v15 linkItemAtURL:v11 toURL:v14 error:&v40];
  v17 = v40;

  if ((v16 & 1) == 0)
  {
    v18 = [(ACSURLSession *)self _logHandle];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v26 = [v11 path];
      v27 = [v14 path];
      *buf = 138412802;
      v44 = v26;
      v45 = 2112;
      v46 = v27;
      v28 = v27;
      v47 = 2112;
      v48 = v17;
      _os_log_error_impl(&dword_2411B8000, v18, OS_LOG_TYPE_ERROR, "ACSURLSession can not link %@ to %@: %@", buf, 0x20u);
    }
  }

  v19 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke;
  block[3] = &unk_278CC5510;
  block[4] = self;
  v35 = v14;
  v36 = v9;
  v37 = v10;
  v38 = v17;
  v39 = a2;
  v20 = v17;
  v21 = v10;
  v22 = v9;
  v23 = v14;
  dispatch_async(v19, block);

  v24 = *MEMORY[0x277D85DE8];
}

void __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke_cold_1();
    }

    v6 = [*(a1 + 56) response];
    v7 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 56)];
    if (!v7)
    {
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      [v8 removeItemAtURL:*(a1 + 40) error:0];
LABEL_25:

      v19 = *MEMORY[0x277D85DE8];
      return;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke_cold_2();
    }

    v8 = v7;
    v9 = [v8 _nsurlTaskToCachingServer];
    if (*(a1 + 56) == v9 && [v8 _tryCachingServer] && objc_msgSend(v8, "_failBackToOrigin") && (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(v6, "statusCode") >= 400))
    {
      v10 = [*v2 _logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v6 statusCode];
        v12 = [v6 URL];
        v13 = [v12 absoluteString];
        *buf = 134218242;
        v27 = v11;
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&dword_2411B8000, v10, OS_LOG_TYPE_DEFAULT, "HTTP response %ld from %@, ignoring to fail back to original", buf, 0x16u);
      }

      v14 = [MEMORY[0x277CCAA00] defaultManager];
      [v14 removeItemAtURL:*(a1 + 40) error:0];
    }

    else
    {
      if (*(a1 + 64))
      {
        [v8 set_deferredLinkError:?];
LABEL_24:

        goto LABEL_25;
      }

      v16 = [*(a1 + 32) _clientDelegate];
      v14 = [*(a1 + 32) _clientDelegateOpQueue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke_232;
      v21[3] = &unk_278CC5470;
      v17 = *(a1 + 32);
      v22 = v16;
      v23 = v17;
      v24 = v8;
      v25 = *(a1 + 40);
      v18 = v16;
      [v14 addOperationWithBlock:v21];
    }

    goto LABEL_24;
  }

  v20 = [MEMORY[0x277CCAA00] defaultManager];
  [v20 removeItemAtURL:*(a1 + 40) error:0];
  v15 = *MEMORY[0x277D85DE8];
}

void __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke_232(uint64_t a1)
{
  [*(a1 + 32) URLSession:*(a1 + 40) downloadTask:*(a1 + 48) didFinishDownloadingToURL:*(a1 + 56)];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtURL:*(a1 + 56) error:0];
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413570;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    v31 = 2048;
    v32 = a5;
    v33 = 2048;
    v34 = a6;
    v35 = 2048;
    v36 = a7;
    v37 = 2112;
    v38 = self;
    _os_log_debug_impl(&dword_2411B8000, v15, OS_LOG_TYPE_DEBUG, "URLSession:%@ downloadTask:%@ didWriteData:%lld totalBytesWritten:%lld totalBytesExpectedToWrite:%lld self=%@", buf, 0x3Eu);
  }

  v16 = [(ACSURLSession *)self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke;
  block[3] = &unk_278CC5448;
  block[4] = self;
  v21 = v13;
  v22 = v14;
  v23 = a2;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v17 = v14;
  v18 = v13;
  dispatch_async(v16, block);

  v19 = *MEMORY[0x277D85DE8];
}

void __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v9 = v8;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke_cold_2();
        }

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke_2;
        v13[3] = &unk_278CC5420;
        v10 = v6;
        v11 = *(a1 + 32);
        v14 = v10;
        v15 = v11;
        v16 = v9;
        v17 = *(a1 + 64);
        v18 = *(a1 + 80);
        v12 = v9;
        [v7 addOperationWithBlock:v13];
      }
    }
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = [(ACSURLSession *)self _logHandle];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 2048;
    v29 = a5;
    v30 = 2048;
    v31 = a6;
    v32 = 2112;
    v33 = self;
    _os_log_debug_impl(&dword_2411B8000, v13, OS_LOG_TYPE_DEBUG, "URLSession:%@ downloadTask:%@ didResumeAtOffset:%lld expectedTotalBytes:%lld self=%@", buf, 0x34u);
  }

  v14 = [(ACSURLSession *)self _queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke;
  v18[3] = &unk_278CC5420;
  v18[4] = self;
  v19 = v11;
  v20 = v12;
  v21 = a2;
  v22 = a5;
  v23 = a6;
  v15 = v12;
  v16 = v11;
  dispatch_async(v14, v18);

  v17 = *MEMORY[0x277D85DE8];
}

void __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) _nsurlSession];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) _nsurlSession];

    if (v4 != v5)
    {
      __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke_cold_1();
    }

    v6 = [*v2 _clientDelegate];
    v7 = [*v2 _clientDelegateOpQueue];
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) _onqueue_taskForNSURLTask:*(a1 + 48)];
      if (v8)
      {
        v9 = v8;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke_cold_2();
        }

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke_2;
        v13[3] = &unk_278CC5538;
        v10 = v6;
        v11 = *(a1 + 32);
        v14 = v10;
        v15 = v11;
        v16 = v9;
        v17 = *(a1 + 64);
        v12 = v9;
        [v7 addOperationWithBlock:v13];
      }
    }
  }
}

- (void)URLSession:(id)a3 readClosedForStreamTask:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE648];
  v13[0] = @"session";
  v13[1] = @"nsurlTask";
  v14[0] = self;
  v14[1] = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v8 exceptionWithName:v9 reason:@"ACSURLSession does not support stream tasks" userInfo:v10];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)URLSession:(id)a3 writeClosedForStreamTask:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE648];
  v13[0] = @"session";
  v13[1] = @"nsurlTask";
  v14[0] = self;
  v14[1] = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v8 exceptionWithName:v9 reason:@"ACSURLSession does not support stream tasks" userInfo:v10];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)URLSession:(id)a3 betterRouteDiscoveredForStreamTask:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE648];
  v13[0] = @"session";
  v13[1] = @"nsurlTask";
  v14[0] = self;
  v14[1] = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [v8 exceptionWithName:v9 reason:@"ACSURLSession does not support stream tasks" userInfo:v10];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)URLSession:(id)a3 streamTask:(id)a4 didBecomeInputStream:(id)a5 outputStream:(id)a6
{
  v20[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE648];
  v19[0] = @"session";
  v19[1] = @"nsurlTask";
  v20[0] = self;
  v20[1] = v11;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v17 = [v14 exceptionWithName:v15 reason:@"ACSURLSession does not support stream tasks" userInfo:v16];
  v18 = v17;

  objc_exception_throw(v17);
}

- (id)dataTaskWithRequest:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  if (v8)
  {
    v10 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke_2;
    v16[3] = &unk_278CC55B0;
    v16[4] = self;
    v17[1] = &v19;
    v4 = v17;
    v17[0] = v8;
  }

  else
  {
    v10 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke;
    v18[3] = &unk_278CC4F48;
    v18[4] = self;
  }

  v11 = MEMORY[0x245CDE340](v10);
  v12 = [[ACSURLSessionDataTask alloc] initWithNSURLDataTaskCreator:v11 initialRequest:v7 forSession:self];
  v13 = v20[5];
  v20[5] = v12;

  [(ACSURLSession *)self _addTask:v20[5]];
  v14 = v20[5];

  if (v9)
  {
  }

  _Block_object_dispose(&v19, 8);

  return v14;
}

id __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _nsurlSession];
  v5 = [v4 dataTaskWithRequest:v3];

  return v5;
}

id __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke_3;
  v10[3] = &unk_278CC5588;
  v10[4] = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = v9;
  v11 = v9;
  v7 = [v5 dataTaskWithRequest:v4 completionHandler:v10];

  return v7;
}

void __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke_4;
    v12[3] = &unk_278CC5560;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v10;
    v14 = v11;
    [v9 _dataTask:v4 completedWithData:a2 response:a3 error:a4 completionHandler:v12];
  }
}

uint64_t __93__ACSURLSession_ACSURLSessionAsynchronousConvenience__dataTaskWithRequest_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) set_nsurlTaskCreator:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 set_internalState:2];
}

- (id)dataTaskWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x277CCAD20];
  v7 = a4;
  v8 = [v6 requestWithURL:a3];
  v9 = [(ACSURLSession *)self dataTaskWithRequest:v8 completionHandler:v7];

  return v9;
}

- (id)uploadTaskWithRequest:(id)a3 fromFile:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  if (v10)
  {
    v11 = v20;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke_2;
    v20[3] = &unk_278CC55D8;
    v20[4] = self;
    v12 = &v21;
    v21 = v9;
    v22[1] = &v25;
    v13 = v22;
    v14 = v10;
  }

  else
  {
    v11 = v23;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke;
    v23[3] = &unk_278CC4F70;
    v23[4] = self;
    v13 = &v24;
    v14 = v9;
    v12 = &v24;
  }

  *v13 = v14;
  v15 = MEMORY[0x245CDE340](v11);
  v16 = [[ACSURLSessionUploadTask alloc] initWithNSURLUploadTaskCreator:v15 initialRequest:v8 forSession:self];
  v17 = v26[5];
  v26[5] = v16;

  [(ACSURLSession *)self _addTask:v26[5]];
  v18 = v26[5];

  if (v10)
  {
  }

  _Block_object_dispose(&v25, 8);

  return v18;
}

id __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v6 = [v5 uploadTaskWithRequest:v4 fromFile:*(a1 + 40)];

  return v6;
}

id __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke_3;
  v11[3] = &unk_278CC5588;
  v6 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v7 = v10;
  v12 = v10;
  v8 = [v5 uploadTaskWithRequest:v4 fromFile:v6 completionHandler:v11];

  return v8;
}

void __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke_4;
    v12[3] = &unk_278CC5560;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v10;
    v14 = v11;
    [v9 _dataTask:v4 completedWithData:a2 response:a3 error:a4 completionHandler:v12];
  }
}

uint64_t __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromFile_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) set_nsurlTaskCreator:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 set_internalState:2];
}

- (id)uploadTaskWithRequest:(id)a3 fromData:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  if (v10)
  {
    v11 = v20;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke_2;
    v20[3] = &unk_278CC55D8;
    v20[4] = self;
    v12 = &v21;
    v21 = v9;
    v22[1] = &v25;
    v13 = v22;
    v14 = v10;
  }

  else
  {
    v11 = v23;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke;
    v23[3] = &unk_278CC4F70;
    v23[4] = self;
    v13 = &v24;
    v14 = v9;
    v12 = &v24;
  }

  *v13 = v14;
  v15 = MEMORY[0x245CDE340](v11);
  v16 = [[ACSURLSessionUploadTask alloc] initWithNSURLUploadTaskCreator:v15 initialRequest:v8 forSession:self];
  v17 = v26[5];
  v26[5] = v16;

  [(ACSURLSession *)self _addTask:v26[5]];
  v18 = v26[5];

  if (v10)
  {
  }

  _Block_object_dispose(&v25, 8);

  return v18;
}

id __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v6 = [v5 uploadTaskWithRequest:v4 fromData:*(a1 + 40)];

  return v6;
}

id __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke_3;
  v11[3] = &unk_278CC5588;
  v6 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v7 = v10;
  v12 = v10;
  v8 = [v5 uploadTaskWithRequest:v4 fromData:v6 completionHandler:v11];

  return v8;
}

void __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke_4;
    v12[3] = &unk_278CC5560;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v10;
    v14 = v11;
    [v9 _dataTask:v4 completedWithData:a2 response:a3 error:a4 completionHandler:v12];
  }
}

uint64_t __104__ACSURLSession_ACSURLSessionAsynchronousConvenience__uploadTaskWithRequest_fromData_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) set_nsurlTaskCreator:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 set_internalState:2];
}

- (id)downloadTaskWithRequest:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  if (v8)
  {
    v10 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke_2;
    v16[3] = &unk_278CC5600;
    v16[4] = self;
    v17[1] = &v19;
    v4 = v17;
    v17[0] = v8;
  }

  else
  {
    v10 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke;
    v18[3] = &unk_278CC4FC0;
    v18[4] = self;
  }

  v11 = MEMORY[0x245CDE340](v10);
  v12 = [[ACSURLSessionDownloadTask alloc] initWithNSURLDownloadTaskCreator:v11 initialRequest:v7 forSession:self];
  v13 = v20[5];
  v20[5] = v12;

  [(ACSURLSession *)self _addTask:v20[5]];
  v14 = v20[5];

  if (v9)
  {
  }

  _Block_object_dispose(&v19, 8);

  return v14;
}

id __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _nsurlSession];
  v5 = [v4 downloadTaskWithRequest:v3];

  return v5;
}

id __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _nsurlSession];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke_3;
  v10[3] = &unk_278CC5150;
  v10[4] = *(a1 + 32);
  v9 = *(a1 + 40);
  v6 = v9;
  v11 = v9;
  v7 = [v5 downloadTaskWithRequest:v4 completionHandler:v10];

  return v7;
}

void __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke_4;
    v12[3] = &unk_278CC5128;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v10;
    v14 = v11;
    [v9 _downloadTask:v4 completedWithLocation:a2 response:a3 error:a4 completionHandler:v12];
  }
}

uint64_t __97__ACSURLSession_ACSURLSessionAsynchronousConvenience__downloadTaskWithRequest_completionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) set_nsurlTaskCreator:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(*(a1 + 40) + 8) + 40);

  return [v4 set_internalState:2];
}

- (id)downloadTaskWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x277CCAD20];
  v7 = a4;
  v8 = [v6 requestWithURL:a3];
  v9 = [(ACSURLSession *)self downloadTaskWithRequest:v8 completionHandler:v7];

  return v9;
}

- (void)initWithConfiguration:canUseCachingServer:locateOptions:delegate:delegateQueue:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11(&dword_2411B8000, v0, v1, "new session %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_locateCachingServerForURL:(const char *)a1 isUpload:(uint64_t)a2 completionHandler:.cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"ACSURLSession.m" lineNumber:456 description:{@"ACSURLSession %@ invalid use of %@", a2, v4}];
}

- (void)_cancelTask:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(&dword_2411B8000, v0, v1, "_cancelTask:%@ self=%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __29__ACSURLSession__cancelTask___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_11(&dword_2411B8000, a2, a3, "_cancelTask:%@ task already completed", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_cancelDownloadTask:byProducingResumeData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [v3 descriptionWithAddress];
  [v4 handleFailureInMethod:v2 object:v1 file:@"ACSURLSession.m" lineNumber:539 description:{@"ACSURLSession %@ unexpected task %@ for nsurlTask %@, expected class %@", v1, v0, v5, @"NSURLSessionDownloadTask"}];
}

- (void)_cancelDownloadTask:byProducingResumeData:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(&dword_2411B8000, v0, v1, "_cancelDownloadTask:%@ self=%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_cancelDownloadTask:byProducingResumeData:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11(&dword_2411B8000, v0, v1, "_cancelDownloadTask:%@ task already completed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12();
  _os_log_fault_impl(&dword_2411B8000, v0, OS_LOG_TYPE_FAULT, "ACSURLSession failed to convert resume data: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __59__ACSURLSession__cancelDownloadTask_byProducingResumeData___block_invoke_122_cold_1()
{
  OUTLINED_FUNCTION_2();
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v3 = *(v2 + 64);
  v4 = *(v2 + 40);
  v5 = *v1;
  v6 = [v0 descriptionWithAddress];
  [OUTLINED_FUNCTION_6(v6 v7];
}

- (void)_suspendTask:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(&dword_2411B8000, v0, v1, "_suspendTask:%@ self=%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __30__ACSURLSession__suspendTask___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_11(&dword_2411B8000, a2, a3, "_suspendTask:%@ task already completed", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_resumeTask:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(&dword_2411B8000, v0, v1, "_resumeTask:%@ self=%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_resumeTask:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11(&dword_2411B8000, v0, v1, "_resumeTask:%@ task is aleady completed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__ACSURLSession_URLSession_didBecomeInvalidWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(v1 + 56);
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v3 v4];
}

void __66__ACSURLSession_URLSession_didReceiveChallenge_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __57__ACSURLSession_URLSession_taskIsWaitingForConnectivity___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(v1 + 56);
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v3 v4];
}

void __89__ACSURLSession_URLSession_task_willPerformHTTPRedirection_newRequest_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(v1 + 80);
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v3 v4];
}

void __71__ACSURLSession_URLSession_task_didReceiveChallenge_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(v1 + 72);
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v3 v4];
}

void __51__ACSURLSession_URLSession_task_needNewBodyStream___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __89__ACSURLSession_URLSession_task_didSendBodyData_totalBytesSent_totalBytesExpectedToSend___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(v1 + 56);
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v3 v4];
}

void __60__ACSURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __54__ACSURLSession_URLSession_task_didCompleteWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(v1 + 72);
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v3 v4];
}

void __74__ACSURLSession_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_10() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __59__ACSURLSession_URLSession_dataTask_didBecomeDownloadTask___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_9() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __57__ACSURLSession_URLSession_dataTask_didBecomeStreamTask___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __57__ACSURLSession_URLSession_dataTask_didBecomeStreamTask___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_9() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v1 v2];
}

void __52__ACSURLSession_URLSession_dataTask_didReceiveData___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_9() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(v1 + 72);
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v3 v4];
}

void __73__ACSURLSession_URLSession_dataTask_willCacheResponse_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_10() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(v1 + 72);
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v3 v4];
}

void __67__ACSURLSession_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_10() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(v1 + 56);
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v3 v4];
}

void __98__ACSURLSession_URLSession_downloadTask_didWriteData_totalBytesWritten_totalBytesExpectedToWrite___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_14() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

void __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v12 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(v1 + 56);
  [OUTLINED_FUNCTION_4() _nsurlSession];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_5(v3 v4];
}

void __78__ACSURLSession_URLSession_downloadTask_didResumeAtOffset_expectedTotalBytes___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v0 = [OUTLINED_FUNCTION_14() descriptionWithAddress];
  OUTLINED_FUNCTION_13();
  [OUTLINED_FUNCTION_6(v1 v2];
}

@end