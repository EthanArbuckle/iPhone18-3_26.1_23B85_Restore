@interface ASTConfigurableUploadClient
- (ASTConfigurableUploadClient)initWithASTSession:(id)a3 withDelegate:(id)a4;
- (ASTConfigurableUploadClient)initWithASTSession:(id)a3 withURLSession:(id)a4 withURLRequestFactory:(id)a5 withDelegate:(id)a6;
- (ASTConfigurableUploadClient)initWithURLSession:(id)a3 withURLRequestFactory:(id)a4 withDelegate:(id)a5;
- (ASTSession)session;
- (ASTUploadClientDelegate)delegate;
- (NSArray)uploadStatus;
- (unint64_t)uploadWithObject:(id)a3 andExtra:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)cancelAll;
- (void)cancelUploadWithId:(unint64_t)a3;
- (void)uploadTaskDidComplete:(unint64_t)a3 withResponse:(id)a4 andError:(id)a5;
@end

@implementation ASTConfigurableUploadClient

- (NSArray)uploadStatus
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(ASTConfigurableUploadClient *)self taskMap];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) metaInfo];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v3 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (ASTConfigurableUploadClient)initWithASTSession:(id)a3 withURLSession:(id)a4 withURLRequestFactory:(id)a5 withDelegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = ASTConfigurableUploadClient;
  v14 = [(ASTConfigurableUploadClient *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_session, v10);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskMap = v15->_taskMap;
    v15->_taskMap = v16;

    objc_storeStrong(&v15->_urlFactory, a5);
    if (v11)
    {
      v18 = v11;
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

    objc_storeWeak(&v15->_delegate, v13);
    v23 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_240F3C000, v23, OS_LOG_TYPE_DEFAULT, "[Uploader] Started a new upload session on AST Session", v25, 2u);
    }
  }

  return v15;
}

- (ASTConfigurableUploadClient)initWithASTSession:(id)a3 withDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = ASTConfigurableUploadClient;
  v8 = [(ASTConfigurableUploadClient *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_session, v6);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskMap = v9->_taskMap;
    v9->_taskMap = v10;

    v12 = MEMORY[0x277CCAD30];
    v13 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v14 = [v12 sessionWithConfiguration:v13 delegate:v9 delegateQueue:0];
    urlSession = v9->_urlSession;
    v9->_urlSession = v14;

    objc_storeWeak(&v9->_delegate, v7);
    v16 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_240F3C000, v16, OS_LOG_TYPE_DEFAULT, "[Uploader] Started a new upload session on AST Session", v18, 2u);
    }
  }

  return v9;
}

- (ASTConfigurableUploadClient)initWithURLSession:(id)a3 withURLRequestFactory:(id)a4 withDelegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

    objc_storeStrong(&v12->_urlFactory, a4);
    if (v8)
    {
      v15 = v8;
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

    objc_storeWeak(&v12->_delegate, v10);
    v20 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_240F3C000, v20, OS_LOG_TYPE_DEFAULT, "[Uploader] Started a new upload session on AST Session", v22, 2u);
    }
  }

  return v12;
}

- (unint64_t)uploadWithObject:(id)a3 andExtra:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASTConfigurableUploadClient *)self urlFactory];
  v9 = [v8 urlRequest];

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
    v11 = v6;
    v12 = [(ASTConfigurableUploadClient *)self urlSession];
    v13 = [v12 uploadTaskWithRequest:v9 fromFile:v11 completionHandler:v10];

    v14 = [ASTUploadItem alloc];
    v15 = [v9 URL];
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
    v27 = [v7 allKeys];
    if ([v27 containsObject:@"name"])
    {
      [v7 objectForKeyedSubscript:@"name"];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v62 = ;

    v28 = [v7 allKeys];
    v59 = v26;
    if ([v28 containsObject:@"id"])
    {
      [v7 objectForKeyedSubscript:@"id"];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v61 = ;

    v29 = [v7 allKeys];
    v56 = v10;
    if ([v29 containsObject:@"sig"])
    {
      [v7 objectForKeyedSubscript:@"sig"];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v60 = ;

    v30 = [v7 allKeys];
    if ([v30 containsObject:@"pubKeyDigest"])
    {
      [v7 objectForKeyedSubscript:@"pubKeyDigest"];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v31 = ;
    v32 = v9;

    v33 = [v7 allKeys];
    if ([v33 containsObject:@"cert"])
    {
      [v7 objectForKeyedSubscript:@"cert"];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v34 = ;

    v35 = [v68[5] metaInfo];
    [v35 setObject:v61 forKeyedSubscript:@"id"];

    v36 = [v68[5] metaInfo];
    [v36 setObject:v62 forKeyedSubscript:@"name"];

    v37 = [v68[5] metaInfo];
    [v37 setObject:v60 forKeyedSubscript:@"sig"];

    v38 = [v68[5] metaInfo];
    [v38 setObject:v31 forKeyedSubscript:@"pubKeyDigest"];

    v39 = [v68[5] metaInfo];
    [v39 setObject:v34 forKeyedSubscript:@"cert"];

    v40 = [v68[5] metaInfo];
    [v40 setObject:@"QUEUED" forKeyedSubscript:@"status"];

    v41 = [v68[5] metaInfo];
    [v41 setObject:v59 forKeyedSubscript:@"size"];

    v42 = [v32 URL];
    v43 = [v42 absoluteString];
    v44 = [v68[5] metaInfo];
    [v44 setObject:v43 forKeyedSubscript:@"uploadUrl"];

    v45 = [(ASTConfigurableUploadClient *)self taskMap];
    [v45 setObject:v68[5] forKey:v58];

    [v13 resume];
    v46 = [v68[5] metaInfo];
    [v46 setObject:@"UPLOADING" forKeyedSubscript:@"status"];

    v47 = [(ASTConfigurableUploadClient *)self delegate];
    if (v47)
    {
      v48 = [(ASTConfigurableUploadClient *)self delegate];
      v49 = objc_opt_respondsToSelector();

      if (v49)
      {
        v50 = [(ASTConfigurableUploadClient *)self delegate];
        v51 = [v13 taskIdentifier];
        v52 = [v32 URL];
        [v50 ASTUploadClient:self didStartFileUploadWithId:v51 andUrl:v52];
      }
    }

    v53 = [v13 taskIdentifier];

    v9 = v32;
    v10 = v57;
    v54 = v59;
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v6;
    v21 = [(ASTConfigurableUploadClient *)self urlSession];
    v13 = [v21 uploadTaskWithRequest:v9 fromData:v20 completionHandler:v10];

    v22 = [ASTUploadItem alloc];
    v23 = [v9 URL];
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
  v53 = -1;
LABEL_27:

  _Block_object_dispose(&v67, 8);
  return v53;
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

- (void)cancelUploadWithId:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [(ASTConfigurableUploadClient *)self taskMap];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7)
  {
    v8 = [v7 task];
    [v8 cancel];

    v9 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 task];
      v11 = [v10 originalRequest];
      v12 = [v11 URL];
      v15 = 134218242;
      v16 = a3;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_240F3C000, v9, OS_LOG_TYPE_DEFAULT, "[Uploader] Canceled task for upload file [%li - %@]", &v15, 0x16u);
    }

    v13 = [(ASTConfigurableUploadClient *)self taskMap];
    [v13 removeObjectForKey:v5];
  }

  else
  {
    v13 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = a3;
      _os_log_impl(&dword_240F3C000, v13, OS_LOG_TYPE_DEFAULT, "[Uploader] No task exist for upload file (%li), failed to cancel", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)uploadTaskDidComplete:(unint64_t)a3 withResponse:(id)a4 andError:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(ASTConfigurableUploadClient *)self taskMap];
  v52 = a3;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v12 = [v10 objectForKeyedSubscript:v11];

  v13 = [v12 destinationUrl];
  v14 = @"FAILED";
  v15 = v8;
  v16 = v15;
  if (!v15)
  {
    v53 = v14;
    if (v9)
    {
      goto LABEL_40;
    }

LABEL_9:
    if (v12)
    {
      [v12 setIsComplete:1];
    }

    v19 = [v12 metaInfo];
    [v19 setObject:v53 forKeyedSubscript:@"status"];
    goto LABEL_45;
  }

  v17 = [v15 statusCode];
  if (v17 <= 403)
  {
    if (v17 <= 399)
    {
      switch(v17)
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

    switch(v17)
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

  if (v17 > 499)
  {
    switch(v17)
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

  if (v17 == 404)
  {
    v18 = @"Upload failed with status: %ld. Item not found.";
    goto LABEL_34;
  }

  if (v17 == 410)
  {
    v18 = @"Upload failed with status: %ld. Version mismatch.";
    goto LABEL_34;
  }

  if (v17 != 499)
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
    v24 = v13;
    v25 = v9;
    v26 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v16, "statusCode")}];
    v59[1] = @"errorDetails";
    v60[0] = v26;
    v60[1] = v20;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    v28 = [v22 errorWithDomain:@"ASTErrorDomain" code:-5000 userInfo:v27];

    v13 = v24;
    v14 = v23;
    v12 = v51;

    v9 = v28;
  }

  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_40:
  if (v12)
  {
    [v12 setIsFailed:1];
  }

  v29 = [v12 metaInfo];
  [v29 setObject:v14 forKeyedSubscript:@"status"];

  v30 = [(ASTConfigurableUploadClient *)self delegate];
  if (v30)
  {
    v31 = v30;
    v32 = [(ASTConfigurableUploadClient *)self delegate];
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      v19 = [(ASTConfigurableUploadClient *)self delegate];
      [v19 ASTUploadClient:self fileUploadWasInterrupted:v52 andUrl:v13 withError:v9];
LABEL_45:
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v34 = [(ASTConfigurableUploadClient *)self taskMap];
  v35 = [v34 allValues];

  v36 = [v35 countByEnumeratingWithState:&v54 objects:v58 count:16];
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
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v54 + 1) + 8 * i);
        if (([v40 isComplete] & 1) == 0 && !objc_msgSend(v40, "isFailed"))
        {
          v41 = v9;
          v42 = 0;
          goto LABEL_58;
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }
  }

  v41 = v9;

  v42 = 1;
  v35 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240F3C000, v35, OS_LOG_TYPE_DEFAULT, "[Uploader] All upload tasks completed", buf, 2u);
    v42 = 1;
  }

LABEL_58:

  v43 = [(ASTConfigurableUploadClient *)self delegate];

  if (v43)
  {
    v44 = [(ASTConfigurableUploadClient *)self delegate];
    v45 = objc_opt_respondsToSelector();

    if (v45)
    {
      v46 = [(ASTConfigurableUploadClient *)self delegate];
      [v46 ASTUploadClient:self didCompleteFileUploadWithId:v52 andUrl:v13];
    }

    if (v42)
    {
      v47 = [(ASTConfigurableUploadClient *)self delegate];
      v48 = objc_opt_respondsToSelector();

      if (v48)
      {
        v49 = [(ASTConfigurableUploadClient *)self delegate];
        [v49 ASTUploadClientDidCompleteFileUpload:self];
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
  v2 = [(ASTConfigurableUploadClient *)self taskMap];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 isComplete] & 1) == 0)
        {
          v9 = [v8 task];
          [v9 cancel];

          [v8 setIsComplete:1];
          v10 = [v8 metaInfo];
          [v10 setObject:@"UPLOADING" forKeyedSubscript:@"status"];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v21 = a4;
  v7 = [(ASTConfigurableUploadClient *)self taskMap];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "taskIdentifier")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = ASTUploadStatusSuccessful;
  if (a5)
  {
    v10 = ASTUploadStatusUploading;
  }

  v11 = *v10;
  v12 = [v9 metaInfo];
  [v12 setObject:v11 forKeyedSubscript:@"status"];

  if (!a5)
  {
    v13 = [(ASTConfigurableUploadClient *)self delegate];
    if (v13)
    {
      v14 = v13;
      v15 = [(ASTConfigurableUploadClient *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [(ASTConfigurableUploadClient *)self delegate];
        v18 = [v21 taskIdentifier];
        v19 = [v21 originalRequest];
        v20 = [v19 URL];
        [v17 ASTUploadClient:self fileUploadWasInterrupted:v18 andUrl:v20 withError:0];
      }
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v19 = a4;
  v11 = [(ASTConfigurableUploadClient *)self delegate];
  if (v11)
  {
    v12 = v11;
    v13 = [(ASTConfigurableUploadClient *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(ASTConfigurableUploadClient *)self delegate];
      v16 = [v19 taskIdentifier];
      v17 = [v19 originalRequest];
      v18 = [v17 URL];
      [v15 ASTUploadClient:self fileUploadStatusForId:v16 andUrl:v18 didSendBodyData:a5 totalBytesSent:a6 totalBytesExpectedToSend:a7];
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