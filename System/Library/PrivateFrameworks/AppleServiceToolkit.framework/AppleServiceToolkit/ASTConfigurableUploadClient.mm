@interface ASTConfigurableUploadClient
- (ASTConfigurableUploadClient)initWithASTSession:(id)session withDelegate:(id)delegate;
- (ASTConfigurableUploadClient)initWithASTSession:(id)session withURLSession:(id)lSession withURLRequestFactory:(id)factory withDelegate:(id)delegate;
- (ASTConfigurableUploadClient)initWithURLSession:(id)session withURLRequestFactory:(id)factory withDelegate:(id)delegate;
- (ASTSession)session;
- (ASTUploadClientDelegate)delegate;
- (NSArray)uploadStatus;
- (unint64_t)uploadWithObject:(id)object andExtra:(id)extra;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)cancelAll;
- (void)cancelUploadWithId:(unint64_t)id;
- (void)uploadTaskDidComplete:(unint64_t)complete withResponse:(id)response andError:(id)error;
@end

@implementation ASTConfigurableUploadClient

- (NSArray)uploadStatus
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  taskMap = [(ASTConfigurableUploadClient *)self taskMap];
  allValues = [taskMap allValues];

  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        metaInfo = [*(*(&v14 + 1) + 8 * i) metaInfo];
        [array addObject:metaInfo];
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [array copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (ASTConfigurableUploadClient)initWithASTSession:(id)session withURLSession:(id)lSession withURLRequestFactory:(id)factory withDelegate:(id)delegate
{
  sessionCopy = session;
  lSessionCopy = lSession;
  factoryCopy = factory;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = ASTConfigurableUploadClient;
  v14 = [(ASTConfigurableUploadClient *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_session, sessionCopy);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskMap = v15->_taskMap;
    v15->_taskMap = v16;

    objc_storeStrong(&v15->_urlFactory, factory);
    if (lSessionCopy)
    {
      v18 = lSessionCopy;
      urlSession = v15->_urlSession;
      v15->_urlSession = v18;
    }

    else
    {
      v20 = MEMORY[0x277CCAD30];
      urlSession = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
      v21 = [v20 sessionWithConfiguration:urlSession delegate:v15 delegateQueue:0];
      v22 = v15->_urlSession;
      v15->_urlSession = v21;
    }

    objc_storeWeak(&v15->_delegate, delegateCopy);
    v23 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_240F3C000, v23, OS_LOG_TYPE_DEFAULT, "[Uploader] Started a new upload session on AST Session", v25, 2u);
    }
  }

  return v15;
}

- (ASTConfigurableUploadClient)initWithASTSession:(id)session withDelegate:(id)delegate
{
  sessionCopy = session;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = ASTConfigurableUploadClient;
  v8 = [(ASTConfigurableUploadClient *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_session, sessionCopy);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskMap = v9->_taskMap;
    v9->_taskMap = v10;

    v12 = MEMORY[0x277CCAD30];
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v14 = [v12 sessionWithConfiguration:defaultSessionConfiguration delegate:v9 delegateQueue:0];
    urlSession = v9->_urlSession;
    v9->_urlSession = v14;

    objc_storeWeak(&v9->_delegate, delegateCopy);
    v16 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_240F3C000, v16, OS_LOG_TYPE_DEFAULT, "[Uploader] Started a new upload session on AST Session", v18, 2u);
    }
  }

  return v9;
}

- (ASTConfigurableUploadClient)initWithURLSession:(id)session withURLRequestFactory:(id)factory withDelegate:(id)delegate
{
  sessionCopy = session;
  factoryCopy = factory;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = ASTConfigurableUploadClient;
  v11 = [(ASTConfigurableUploadClient *)&v23 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_session, 0);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskMap = v12->_taskMap;
    v12->_taskMap = v13;

    objc_storeStrong(&v12->_urlFactory, factory);
    if (sessionCopy)
    {
      v15 = sessionCopy;
      urlSession = v12->_urlSession;
      v12->_urlSession = v15;
    }

    else
    {
      v17 = MEMORY[0x277CCAD30];
      urlSession = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
      v18 = [v17 sessionWithConfiguration:urlSession delegate:v12 delegateQueue:0];
      v19 = v12->_urlSession;
      v12->_urlSession = v18;
    }

    objc_storeWeak(&v12->_delegate, delegateCopy);
    v20 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_240F3C000, v20, OS_LOG_TYPE_DEFAULT, "[Uploader] Started a new upload session on AST Session", v22, 2u);
    }
  }

  return v12;
}

- (unint64_t)uploadWithObject:(id)object andExtra:(id)extra
{
  objectCopy = object;
  extraCopy = extra;
  urlFactory = [(ASTConfigurableUploadClient *)self urlFactory];
  urlRequest = [urlFactory urlRequest];

  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__3;
  v71 = __Block_byref_object_dispose__3;
  v72 = 0;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __57__ASTConfigurableUploadClient_uploadWithObject_andExtra___block_invoke;
  v66[3] = &unk_278CBD650;
  v66[4] = self;
  v66[5] = &v67;
  v10 = MEMORY[0x245CD5130](v66);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objectCopy;
    urlSession = [(ASTConfigurableUploadClient *)self urlSession];
    v13 = [urlSession uploadTaskWithRequest:urlRequest fromFile:v11 completionHandler:v10];

    v14 = [ASTUploadItem alloc];
    v15 = [urlRequest URL];
    v16 = [(ASTUploadItem *)v14 initWithDestinationUrl:v15 andSourceUrl:v11 andTask:v13];
    v17 = v68[5];
    v68[5] = v16;

    v65 = 0;
    v18 = *MEMORY[0x277CBE838];
    v64 = 0;
    [v11 getResourceValue:&v65 forKey:v18 error:&v64];
    v19 = v65;
LABEL_5:
    v26 = v19;

    v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "taskIdentifier")}];
    allKeys = [extraCopy allKeys];
    if ([allKeys containsObject:@"name"])
    {
      [extraCopy objectForKeyedSubscript:@"name"];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v62 = ;

    allKeys2 = [extraCopy allKeys];
    v59 = v26;
    if ([allKeys2 containsObject:@"id"])
    {
      [extraCopy objectForKeyedSubscript:@"id"];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v61 = ;

    allKeys3 = [extraCopy allKeys];
    v56 = v10;
    if ([allKeys3 containsObject:@"sig"])
    {
      [extraCopy objectForKeyedSubscript:@"sig"];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v60 = ;

    allKeys4 = [extraCopy allKeys];
    if ([allKeys4 containsObject:@"pubKeyDigest"])
    {
      [extraCopy objectForKeyedSubscript:@"pubKeyDigest"];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v31 = ;
    v32 = urlRequest;

    allKeys5 = [extraCopy allKeys];
    if ([allKeys5 containsObject:@"cert"])
    {
      [extraCopy objectForKeyedSubscript:@"cert"];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v34 = ;

    metaInfo = [v68[5] metaInfo];
    [metaInfo setObject:v61 forKeyedSubscript:@"id"];

    metaInfo2 = [v68[5] metaInfo];
    [metaInfo2 setObject:v62 forKeyedSubscript:@"name"];

    metaInfo3 = [v68[5] metaInfo];
    [metaInfo3 setObject:v60 forKeyedSubscript:@"sig"];

    metaInfo4 = [v68[5] metaInfo];
    [metaInfo4 setObject:v31 forKeyedSubscript:@"pubKeyDigest"];

    metaInfo5 = [v68[5] metaInfo];
    [metaInfo5 setObject:v34 forKeyedSubscript:@"cert"];

    metaInfo6 = [v68[5] metaInfo];
    [metaInfo6 setObject:@"QUEUED" forKeyedSubscript:@"status"];

    metaInfo7 = [v68[5] metaInfo];
    [metaInfo7 setObject:v59 forKeyedSubscript:@"size"];

    v42 = [v32 URL];
    absoluteString = [v42 absoluteString];
    metaInfo8 = [v68[5] metaInfo];
    [metaInfo8 setObject:absoluteString forKeyedSubscript:@"uploadUrl"];

    taskMap = [(ASTConfigurableUploadClient *)self taskMap];
    [taskMap setObject:v68[5] forKey:v58];

    [v13 resume];
    metaInfo9 = [v68[5] metaInfo];
    [metaInfo9 setObject:@"UPLOADING" forKeyedSubscript:@"status"];

    delegate = [(ASTConfigurableUploadClient *)self delegate];
    if (delegate)
    {
      delegate2 = [(ASTConfigurableUploadClient *)self delegate];
      v49 = objc_opt_respondsToSelector();

      if (v49)
      {
        delegate3 = [(ASTConfigurableUploadClient *)self delegate];
        taskIdentifier = [v13 taskIdentifier];
        v52 = [v32 URL];
        [delegate3 ASTUploadClient:self didStartFileUploadWithId:taskIdentifier andUrl:v52];
      }
    }

    taskIdentifier2 = [v13 taskIdentifier];

    urlRequest = v32;
    v10 = v57;
    v54 = v59;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = objectCopy;
    urlSession2 = [(ASTConfigurableUploadClient *)self urlSession];
    v13 = [urlSession2 uploadTaskWithRequest:urlRequest fromData:v20 completionHandler:v10];

    v22 = [ASTUploadItem alloc];
    v23 = [urlRequest URL];
    v24 = [(ASTUploadItem *)v22 initWithDestinationUrl:v23 andSourceData:v20 andTask:v13];
    v25 = v68[5];
    v68[5] = v24;

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "length")}];
    goto LABEL_5;
  }

  v54 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240F3C000, v54, OS_LOG_TYPE_DEFAULT, "[Uploader] Failed to create task for upload file", buf, 2u);
  }

  v13 = 0;
  taskIdentifier2 = -1;
LABEL_27:

  _Block_object_dispose(&v67, 8);
  return taskIdentifier2;
}

void __57__ASTConfigurableUploadClient_uploadWithObject_andExtra___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(*(*(a1 + 40) + 8) + 40) task];
    v10 = [v9 taskIdentifier];
    v11 = [v6 URL];
    v15 = 134218754;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[Uploader] Completed upload task for upload file [%li - %@] with response: %@ and error: %@.", &v15, 0x2Au);
  }

  v12 = *(a1 + 32);
  v13 = [*(*(*(a1 + 40) + 8) + 40) task];
  [v12 uploadTaskDidComplete:objc_msgSend(v13 withResponse:"taskIdentifier") andError:{v6, v7}];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cancelUploadWithId:(unint64_t)id
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  taskMap = [(ASTConfigurableUploadClient *)self taskMap];
  v7 = [taskMap objectForKeyedSubscript:v5];

  if (v7)
  {
    task = [v7 task];
    [task cancel];

    v9 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      task2 = [v7 task];
      originalRequest = [task2 originalRequest];
      v12 = [originalRequest URL];
      v15 = 134218242;
      idCopy2 = id;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_240F3C000, v9, OS_LOG_TYPE_DEFAULT, "[Uploader] Canceled task for upload file [%li - %@]", &v15, 0x16u);
    }

    taskMap2 = [(ASTConfigurableUploadClient *)self taskMap];
    [taskMap2 removeObjectForKey:v5];
  }

  else
  {
    taskMap2 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(taskMap2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      idCopy2 = id;
      _os_log_impl(&dword_240F3C000, taskMap2, OS_LOG_TYPE_DEFAULT, "[Uploader] No task exist for upload file (%li), failed to cancel", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)uploadTaskDidComplete:(unint64_t)complete withResponse:(id)response andError:(id)error
{
  v63 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  taskMap = [(ASTConfigurableUploadClient *)self taskMap];
  completeCopy = complete;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:complete];
  v12 = [taskMap objectForKeyedSubscript:v11];

  destinationUrl = [v12 destinationUrl];
  v14 = @"FAILED";
  v15 = responseCopy;
  v16 = v15;
  if (!v15)
  {
    v53 = v14;
    if (errorCopy)
    {
      goto LABEL_40;
    }

LABEL_9:
    if (v12)
    {
      [v12 setIsComplete:1];
    }

    metaInfo = [v12 metaInfo];
    [metaInfo setObject:v53 forKeyedSubscript:@"status"];
    goto LABEL_45;
  }

  statusCode = [v15 statusCode];
  if (statusCode <= 403)
  {
    if (statusCode <= 399)
    {
      switch(statusCode)
      {
        case 200:
          v53 = @"SUCCESSFUL";

          v18 = @"Upload complete with status: %ld";
          goto LABEL_35;
        case 202:
          v53 = @"SUCCESSFUL";

          v18 = @"Upload complete with status: %ld. Item was added to an async scan queue.";
          goto LABEL_35;
        case 204:
          v53 = @"SUCCESSFUL";

          v18 = @"Upload complete with status: %ld. Item was previously added to an async scan queue.";
          goto LABEL_35;
      }

      goto LABEL_33;
    }

    switch(statusCode)
    {
      case 400:
        v18 = @"Upload failed with status: %ld. Bad request made.";
        goto LABEL_34;
      case 401:
        v18 = @"Upload failed with status: %ld. Unauthorized access.";
        goto LABEL_34;
      case 403:
        v18 = @"Upload failed with status: %ld. Action is forbidden.";
        goto LABEL_34;
    }

LABEL_33:
    v18 = @"Upload failed with status: %ld. Unhandled response from server.";
    goto LABEL_34;
  }

  if (statusCode > 499)
  {
    switch(statusCode)
    {
      case 500:
        v18 = @"Upload failed with status: %ld. Remote server error.";
        goto LABEL_34;
      case 502:
        v18 = @"Upload failed with status: %ld. Bad gateway.";
        goto LABEL_34;
      case 503:
        v18 = @"Upload failed with status: %ld. Remote server unavailable.";
        goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (statusCode == 404)
  {
    v18 = @"Upload failed with status: %ld. Item not found.";
    goto LABEL_34;
  }

  if (statusCode == 410)
  {
    v18 = @"Upload failed with status: %ld. Version mismatch.";
    goto LABEL_34;
  }

  if (statusCode != 499)
  {
    goto LABEL_33;
  }

  v18 = @"Upload failed with status: %ld. Client timed out.";
LABEL_34:
  v53 = v14;
LABEL_35:
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:v18, objc_msgSend(v16, "statusCode")];
  v21 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v20;
    _os_log_impl(&dword_240F3C000, v21, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if (([(__CFString *)v53 isEqualToString:@"SUCCESSFUL"]& 1) == 0)
  {
    v22 = MEMORY[0x277CCA9B8];
    v59[0] = @"httpResponseCode";
    v51 = v12;
    v23 = v14;
    v24 = destinationUrl;
    v25 = errorCopy;
    v26 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v16, "statusCode")}];
    v59[1] = @"errorDetails";
    v60[0] = v26;
    v60[1] = v20;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v28 = [v22 errorWithDomain:@"ASTErrorDomain" code:-5000 userInfo:v27];

    destinationUrl = v24;
    v14 = v23;
    v12 = v51;

    errorCopy = v28;
  }

  if (!errorCopy)
  {
    goto LABEL_9;
  }

LABEL_40:
  if (v12)
  {
    [v12 setIsFailed:1];
  }

  metaInfo2 = [v12 metaInfo];
  [metaInfo2 setObject:v14 forKeyedSubscript:@"status"];

  delegate = [(ASTConfigurableUploadClient *)self delegate];
  if (delegate)
  {
    v31 = delegate;
    delegate2 = [(ASTConfigurableUploadClient *)self delegate];
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      metaInfo = [(ASTConfigurableUploadClient *)self delegate];
      [metaInfo ASTUploadClient:self fileUploadWasInterrupted:completeCopy andUrl:destinationUrl withError:errorCopy];
LABEL_45:
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  taskMap2 = [(ASTConfigurableUploadClient *)self taskMap];
  allValues = [taskMap2 allValues];

  v36 = [allValues countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v55;
    while (2)
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v55 != v38)
        {
          objc_enumerationMutation(allValues);
        }

        v40 = *(*(&v54 + 1) + 8 * i);
        if (([v40 isComplete] & 1) == 0 && !objc_msgSend(v40, "isFailed"))
        {
          v41 = errorCopy;
          v42 = 0;
          goto LABEL_58;
        }
      }

      v37 = [allValues countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }
  }

  v41 = errorCopy;

  v42 = 1;
  allValues = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(allValues, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240F3C000, allValues, OS_LOG_TYPE_DEFAULT, "[Uploader] All upload tasks completed", buf, 2u);
    v42 = 1;
  }

LABEL_58:

  delegate3 = [(ASTConfigurableUploadClient *)self delegate];

  if (delegate3)
  {
    delegate4 = [(ASTConfigurableUploadClient *)self delegate];
    v45 = objc_opt_respondsToSelector();

    if (v45)
    {
      delegate5 = [(ASTConfigurableUploadClient *)self delegate];
      [delegate5 ASTUploadClient:self didCompleteFileUploadWithId:completeCopy andUrl:destinationUrl];
    }

    if (v42)
    {
      delegate6 = [(ASTConfigurableUploadClient *)self delegate];
      v48 = objc_opt_respondsToSelector();

      if (v48)
      {
        delegate7 = [(ASTConfigurableUploadClient *)self delegate];
        [delegate7 ASTUploadClientDidCompleteFileUpload:self];
      }
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)cancelAll
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  taskMap = [(ASTConfigurableUploadClient *)self taskMap];
  allValues = [taskMap allValues];

  v4 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 isComplete] & 1) == 0)
        {
          task = [v8 task];
          [task cancel];

          [v8 setIsComplete:1];
          metaInfo = [v8 metaInfo];
          [metaInfo setObject:@"UPLOADING" forKeyedSubscript:@"status"];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  taskMap = [(ASTConfigurableUploadClient *)self taskMap];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(taskCopy, "taskIdentifier")}];
  v9 = [taskMap objectForKeyedSubscript:v8];

  v10 = ASTUploadStatusSuccessful;
  if (error)
  {
    v10 = ASTUploadStatusUploading;
  }

  v11 = *v10;
  metaInfo = [v9 metaInfo];
  [metaInfo setObject:v11 forKeyedSubscript:@"status"];

  if (!error)
  {
    delegate = [(ASTConfigurableUploadClient *)self delegate];
    if (delegate)
    {
      v14 = delegate;
      delegate2 = [(ASTConfigurableUploadClient *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        delegate3 = [(ASTConfigurableUploadClient *)self delegate];
        taskIdentifier = [taskCopy taskIdentifier];
        originalRequest = [taskCopy originalRequest];
        v20 = [originalRequest URL];
        [delegate3 ASTUploadClient:self fileUploadWasInterrupted:taskIdentifier andUrl:v20 withError:0];
      }
    }
  }
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  taskCopy = task;
  delegate = [(ASTConfigurableUploadClient *)self delegate];
  if (delegate)
  {
    v12 = delegate;
    delegate2 = [(ASTConfigurableUploadClient *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate3 = [(ASTConfigurableUploadClient *)self delegate];
      taskIdentifier = [taskCopy taskIdentifier];
      originalRequest = [taskCopy originalRequest];
      v18 = [originalRequest URL];
      [delegate3 ASTUploadClient:self fileUploadStatusForId:taskIdentifier andUrl:v18 didSendBodyData:data totalBytesSent:sent totalBytesExpectedToSend:send];
    }
  }
}

- (ASTSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (ASTUploadClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end