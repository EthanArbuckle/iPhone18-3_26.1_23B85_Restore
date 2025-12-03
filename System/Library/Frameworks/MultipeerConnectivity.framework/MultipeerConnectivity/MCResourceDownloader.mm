@interface MCResourceDownloader
- (MCResourceDownloader)initWithSession:(id)session resourceUrl:(id)url name:(id)name peerID:(id)d;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)dealloc;
- (void)sendData:(id)data fromByteOffset:(unint64_t)offset;
- (void)syncCloseStreamForSession:(id)session withError:(id)error;
@end

@implementation MCResourceDownloader

- (MCResourceDownloader)initWithSession:(id)session resourceUrl:(id)url name:(id)name peerID:(id)d
{
  v14.receiver = self;
  v14.super_class = MCResourceDownloader;
  v10 = [(MCResourceDownloader *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(MCResourceDownloader *)v10 setSession:session];
    [(MCResourceDownloader *)v11 setResourceName:name];
    [(MCResourceDownloader *)v11 setPeerID:d];
    v12 = [MEMORY[0x277CBABA0] requestWithURL:url];
    -[MCResourceDownloader setUrlSession:](v11, "setUrlSession:", [MEMORY[0x277CBABB8] sessionWithConfiguration:objc_msgSend(MEMORY[0x277CBABC8] delegate:"defaultSessionConfiguration") delegateQueue:{v11, 0}]);
    [(MCResourceDownloader *)v11 setUrlTask:[(NSURLSession *)v11->_urlSession dataTaskWithRequest:v12]];
    [(NSURLSessionDataTask *)v11->_urlTask resume];
  }

  return v11;
}

- (void)dealloc
{
  objc_storeWeak(&self->_session, 0);
  _Block_release(self->_urlResponseHandler);
  v3.receiver = self;
  v3.super_class = MCResourceDownloader;
  [(MCResourceDownloader *)&v3 dealloc];
}

- (void)syncCloseStreamForSession:(id)session withError:(id)error
{
  v7 = [objc_msgSend(session "peerStates")];
  v8 = [objc_msgSend(v7 "outgoingStreams")];
  if (v8)
  {
    v9 = v8;
    [session syncSendXDataStreamCloseFromSenderToPID:-[MCPeerID pid](self->_peerID streamID:"pid") closeReason:{objc_msgSend(v8, "streamID"), 2 * (error != 0)}];
    peerID = self->_peerID;

    [session syncCloseOutgoingStream:v9 forPeer:peerID state:v7 error:error shouldTriggerCancelProgress:0];
  }

  else
  {
    v11 = [objc_msgSend(v7 "outgoingStreamRequests")];
    if ([v11 completionHandler])
    {
      callbackQueue = [session callbackQueue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __60__MCResourceDownloader_syncCloseStreamForSession_withError___block_invoke;
      v13[3] = &unk_278B43C60;
      v13[4] = v11;
      v13[5] = error;
      dispatch_async(callbackQueue, v13);
    }

    [objc_msgSend(v7 "outgoingStreamRequests")];
  }
}

uint64_t __60__MCResourceDownloader_syncCloseStreamForSession_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 16))(v2, *(a1 + 40));
  v3 = *(a1 + 32);

  return [v3 setCompletionHandler:0];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = [(MCResourceDownloader *)self session:session];
  v9 = mcs_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    sessionCopy = session;
    v15 = 2112;
    errorCopy = error;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "URL session[%@] did complete with error [%@].", buf, 0x16u);
  }

  if (error && v8)
  {
    syncQueue = [(MCSession *)v8 syncQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__MCResourceDownloader_URLSession_task_didCompleteWithError___block_invoke;
    block[3] = &unk_278B43C88;
    block[4] = self;
    block[5] = v8;
    block[6] = error;
    dispatch_async(syncQueue, block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __61__MCResourceDownloader_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) syncCloseStreamForSession:*(a1 + 40) withError:*(a1 + 48)];
  v2 = *(a1 + 40);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = mcs_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    taskCopy = task;
    v18 = 2112;
    responseCopy = response;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "URLSession received task[%@] response[%@].", buf, 0x16u);
  }

  session = [(MCResourceDownloader *)self session];
  if (session)
  {
    v12 = session;
    syncQueue = [(MCSession *)session syncQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__MCResourceDownloader_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke;
    block[3] = &unk_278B43CB0;
    block[4] = v12;
    block[5] = self;
    block[7] = task;
    block[8] = handler;
    block[6] = response;
    dispatch_async(syncQueue, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __81__MCResourceDownloader_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [objc_msgSend(*(a1 + 32) "peerStates")];
  v3 = [objc_msgSend(v2 "outgoingStreamRequests")];
  v4 = mcs_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    *buf = 138412802;
    v14 = v5;
    v15 = 2112;
    v16 = [v3 name];
    v17 = 1024;
    v18 = [v3 streamID];
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Streaming: received HTTP response [%@] stream name [%@] streamID [%08X].", buf, 0x1Cu);
  }

  v6 = [*(a1 + 48) statusCode];
  v7 = *(a1 + 64);
  if (v6 == 200)
  {
    *(*(a1 + 40) + 24) = _Block_copy(v7);
    if (![*(a1 + 56) countOfBytesExpectedToReceive])
    {
      [v3 setProgressUnbounded:1];
    }

    [objc_msgSend(v3 "progress")];
    [*(a1 + 32) syncStartStreamWithName:*(*(a1 + 40) + 40) toPeer:*(*(a1 + 40) + 48) mcFD:0xFFFFFFFFLL isResource:1];
  }

  else
  {
    v7[2](v7, 0);
    v8 = [MEMORY[0x277CBAB48] localizedStringForStatusCode:v6];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MCSession" code:6 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v8, *MEMORY[0x277CCA450])}];
    if ([v3 completionHandler])
    {
      v10 = [*(a1 + 32) callbackQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __81__MCResourceDownloader_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_173;
      v12[3] = &unk_278B43C60;
      v12[4] = v3;
      v12[5] = v9;
      dispatch_async(v10, v12);
    }

    [objc_msgSend(v2 "outgoingStreamRequests")];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __81__MCResourceDownloader_URLSession_dataTask_didReceiveResponse_completionHandler___block_invoke_173(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 16))(v2, *(a1 + 40));
  v3 = *(a1 + 32);

  return [v3 setCompletionHandler:0];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = mcs_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    taskCopy = task;
    v17 = 1024;
    v18 = [data length];
    _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "URLSession received task[%@] bytes[%d].", buf, 0x12u);
  }

  [(NSURLSessionDataTask *)self->_urlTask suspend];
  session = [(MCResourceDownloader *)self session];
  if (session)
  {
    v10 = session;
    if ([data length])
    {
      [(MCResourceDownloader *)self sendData:data fromByteOffset:0];
    }

    else
    {
      syncQueue = [(MCSession *)v10 syncQueue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __59__MCResourceDownloader_URLSession_dataTask_didReceiveData___block_invoke;
      v14[3] = &unk_278B43C60;
      v14[4] = self;
      v14[5] = v10;
      dispatch_async(syncQueue, v14);
    }
  }

  else
  {
    v11 = mcs_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MCResourceDownloader URLSession:dataTask:didReceiveData:];
    }

    [(NSURLSessionDataTask *)self->_urlTask cancel];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __59__MCResourceDownloader_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) syncCloseStreamForSession:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"MCSession", 0, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"No data.", *MEMORY[0x277CCA450]))}];
  v2 = *(a1 + 40);
}

- (void)sendData:(id)data fromByteOffset:(unint64_t)offset
{
  v31 = *MEMORY[0x277D85DE8];
  session = [(MCResourceDownloader *)self session];
  if (session)
  {
    v8 = session;
    v9 = [objc_msgSend(-[NSMutableDictionary objectForKey:](-[MCSession peerStates](session "peerStates")];
    [v9 setSourceSuspended:1];
    v21[1] = v21;
    v10 = (v21 - ((AGPSessionMaximumSegmentSize(1) + 15) & 0x1FFFFFFF0));
    *v10 = bswap32([v9 streamID]);
    LODWORD(v11) = AGPSessionMaximumSegmentSize(1) - 4;
    v12 = [data length];
    v13 = v12 - offset;
    if (v12 - offset >= v11)
    {
      v11 = v11;
    }

    else
    {
      v11 = v12 - offset;
    }

    memcpy(v10 + 1, ([data bytes] + offset), v11);
    v14 = mcs_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      name = [v9 name];
      *buf = 138412802;
      v26 = name;
      v27 = 2048;
      v28 = v11;
      v29 = 2048;
      v30 = v13;
      _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "Streaming: Outgoing HTTP download stream segment [%@]: %ld bytes to send (total %ld).", buf, 0x20u);
    }

    *buf = 0;
    v24 = [(MCPeerID *)self->_peerID pid];
    agpSession = [(MCSession *)v8 agpSession];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__MCResourceDownloader_sendData_fromByteOffset___block_invoke;
    v23[3] = &unk_278B43CD8;
    v23[8] = v11;
    v23[9] = v13;
    v23[4] = v9;
    v23[5] = self;
    v23[10] = offset;
    v23[6] = data;
    v23[7] = v8;
    if (AGPSessionSendTo(agpSession, &v24, 1, v10, v11 + 4, buf, 0, 0xAu, 1, v23))
    {
      v17 = mcs_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [MCResourceDownloader sendData:buf fromByteOffset:?];
      }

      syncQueue = [(MCSession *)v8 syncQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__MCResourceDownloader_sendData_fromByteOffset___block_invoke_177;
      block[3] = &unk_278B43C60;
      block[4] = self;
      block[5] = v8;
      dispatch_async(syncQueue, block);
    }
  }

  else
  {
    v19 = mcs_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MCResourceDownloader URLSession:dataTask:didReceiveData:];
    }

    [(NSURLSessionDataTask *)self->_urlTask cancel];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __48__MCResourceDownloader_sendData_fromByteOffset___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) progress])
  {
    v2 = [*(a1 + 32) progressUnbounded];
    v3 = [*(a1 + 32) progress];
    v4 = v3;
    if (v2)
    {
      v5 = [v3 totalUnitCount];
      v6 = v5 - [objc_msgSend(*(a1 + 32) "progress")];
      v4 = [*(a1 + 32) progress];
      v7 = ([v4 completedUnitCount] + v6 * 0.05);
    }

    else
    {
      v7 = *(a1 + 64) + [v3 completedUnitCount];
    }

    [v4 setCompletedUnitCount:v7];
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 40);
  if (*(a1 + 72) == v8)
  {
    if ([v9[2] state] == 3)
    {
      v10 = [*(a1 + 56) syncQueue];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __48__MCResourceDownloader_sendData_fromByteOffset___block_invoke_2;
      v12[3] = &unk_278B43C60;
      v11 = *(a1 + 56);
      v12[4] = *(a1 + 40);
      v12[5] = v11;
      dispatch_async(v10, v12);
    }

    else
    {
      [*(*(a1 + 40) + 16) resume];
      [*(a1 + 32) setSourceSuspended:0];
    }
  }

  else
  {
    [v9 sendData:*(a1 + 48) fromByteOffset:*(a1 + 80) + v8];
  }
}

void __48__MCResourceDownloader_sendData_fromByteOffset___block_invoke_177(uint64_t a1)
{
  [*(a1 + 32) syncCloseStreamForSession:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", @"MCSession", 0, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Send failure.", *MEMORY[0x277CCA450]))}];
  v2 = *(a1 + 40);
}

- (void)URLSession:dataTask:didReceiveData:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendData:(unsigned int *)a1 fromByteOffset:.cold.1(unsigned int *a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

@end