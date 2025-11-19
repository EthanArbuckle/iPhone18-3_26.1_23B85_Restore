@interface ASTNetworking
- (ASTNetworking)initWithSOCKSProxyServer:(id)a3 port:(id)a4;
- (BOOL)_didRefetchProxyServer;
- (BOOL)_isValidEasyRider;
- (BOOL)_verifyMD5ForFileHandle:(id)a3 task:(id)a4;
- (BOOL)_verifyResultOfTask:(id)a3 connection:(id)a4;
- (id)_downloadTaskWithDownloadConnection:(id)a3 error:(id *)a4;
- (id)_sessionConfigurationWithSOCKSProxyServer:(id)a3 port:(id)a4;
- (id)_taskWithConnection:(id)a3 error:(id *)a4;
- (int)_requestTimeInterval;
- (int)networkDisconnectRetryCount;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4;
- (void)_resetSessionToNewProxyServer;
- (void)addConnection:(id)a3;
- (void)cancelConnectionsOfClass:(Class)a3;
- (void)invalidate;
- (void)updateConnectionState:(id)a3 newState:(int64_t)a4;
@end

@implementation ASTNetworking

- (ASTNetworking)initWithSOCKSProxyServer:(id)a3 port:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = ASTNetworking;
  v8 = [(ASTNetworking *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v10 = [(ASTNetworking *)v8 _sessionConfigurationWithSOCKSProxyServer:v6 port:v7];
    v11 = MEMORY[0x277CCAD30];
    v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v13 = [v11 sessionWithConfiguration:v10 delegate:v9 delegateQueue:v12];
    session = v9->_session;
    v9->_session = v13;

    v15 = [MEMORY[0x277CBEB38] dictionary];
    networkStorage = v9->_networkStorage;
    v9->_networkStorage = v15;
  }

  return v9;
}

- (id)_sessionConfigurationWithSOCKSProxyServer:(id)a3 port:(id)a4
{
  v17[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  [v8 setWaitsForConnectivity:1];
  [v8 setTimeoutIntervalForRequest:{-[ASTNetworking _requestTimeInterval](self, "_requestTimeInterval")}];
  if (v6 && v7)
  {
    [v8 setWaitsForConnectivity:0];
    v16[0] = @"SOCKSEnable";
    v16[1] = @"SOCKSPort";
    v17[0] = MEMORY[0x277CBEC38];
    v17[1] = v7;
    v16[2] = @"SOCKSProxy";
    v17[2] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    [v8 setConnectionProxyDictionary:v9];

    v10 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 connectionProxyDictionary];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_240F3C000, v10, OS_LOG_TYPE_DEFAULT, "Configuring SOCKS proxy: %@", &v14, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (int)_requestTimeInterval
{
  if (_requestTimeInterval_onceToken != -1)
  {
    [ASTNetworking _requestTimeInterval];
  }

  if (_requestTimeInterval_requestTimeInSeconds)
  {
    return 60;
  }

  else
  {
    return 0;
  }
}

- (void)addConnection:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(ASTNetworkObject);
  [(ASTNetworkObject *)v5 setConnection:v4];
  v6 = ASTLogHandleForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [v4 request];
    v10 = [v9 allHTTPHeaderFields];
    *buf = 138412546;
    v26 = v7;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "[%@] Request Headers: %@", buf, 0x16u);
  }

  v11 = ASTLogHandleForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = [v4 request];
    v15 = [v14 URL];
    *buf = 138412546;
    v26 = v12;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_240F3C000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Request URL: %@", buf, 0x16u);
  }

  v16 = self;
  objc_sync_enter(v16);
  v17 = [(ASTNetworking *)v16 session];

  if (v17)
  {
    v24 = 0;
    v18 = [(ASTNetworking *)v16 _taskWithConnection:v4 error:&v24];
    v19 = v24;
    if (v18)
    {
      v20 = [(ASTNetworking *)v16 networkStorage];
      [v20 setObject:v5 forKeyedSubscript:v18];

      [v18 resume];
    }

    else
    {
      v21 = [v4 didReceiveResponse];
      (v21)[2](v21, 0, v19);

      v22 = ASTLogHandleForCategory(1);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ASTNetworking addConnection:];
      }
    }
  }

  objc_sync_exit(v16);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)cancelConnectionsOfClass:(Class)a3
{
  v5 = [(ASTNetworking *)self session];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__ASTNetworking_cancelConnectionsOfClass___block_invoke;
  v6[3] = &unk_278CBD0D0;
  v6[4] = self;
  v6[5] = a3;
  [v5 getAllTasksWithCompletionHandler:v6];
}

void __42__ASTNetworking_cancelConnectionsOfClass___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [*(a1 + 32) networkStorage];
        v10 = [v9 objectForKeyedSubscript:v8];

        v11 = [v10 connection];
        v12 = *(a1 + 40);
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [v8 cancel];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v53[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ASTNetworking URLSession:v8 task:v9 didCompleteWithError:?];
  }

  v10 = [(ASTNetworking *)self networkStorage];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (!v11)
  {
    v28 = MEMORY[0x277CBEC10];
    goto LABEL_36;
  }

  v12 = [v11 connection];
  v13 = [v7 response];
  if (v13)
  {
    v14 = v13;
    v15 = [v7 response];
    v16 = [v15 statusCode];

    if (v16 == 200)
    {
      [(ASTNetworking *)self updateConnectionState:v12 newState:0];
      v17 = ASTLogHandleForCategory(2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v7 response];
        v19 = [v18 allHeaderFields];
        *buf = 138412290;
        v47 = v19;
        _os_log_impl(&dword_240F3C000, v17, OS_LOG_TYPE_DEFAULT, "Response Headers: %@", buf, 0xCu);
      }

      v20 = [v11 receivedData];
      if (v20)
      {
        v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v20 encoding:4];
        v22 = ASTLogHandleForCategory(3);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v7 currentRequest];
          v24 = [v23 URL];
          *buf = 138412546;
          v47 = v24;
          v48 = 2112;
          v49 = v21;
          _os_log_impl(&dword_240F3C000, v22, OS_LOG_TYPE_DEFAULT, "URL: %@\nResponse Body: %@", buf, 0x16u);
        }

        v25 = +[ASTTestAutomation sharedInstance];
        v26 = [v25 testAutomationEnabled];

        if (v26)
        {
          v52 = @"payload";
          v53[0] = v21;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
          [ASTTestAutomation postServerResponse:v27];
        }

        v45 = v8;
        v28 = [ASTEncodingUtilities parseJSONResponseWithData:v20 error:&v45];
        v29 = v45;

        if (v28 && ![ASTConnectionUtilities isValidResponse:v28])
        {
          v30 = ASTLogHandleForCategory(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [ASTNetworking URLSession:task:didCompleteWithError:];
          }

          v28 = 0;
        }

        v8 = v29;
      }

      else
      {
        v28 = MEMORY[0x277CBEC10];
      }

      goto LABEL_28;
    }
  }

  v31 = [v7 response];
  v32 = [v31 statusCode];

  v33 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v41 = [v7 originalRequest];
    v42 = [v41 URL];
    *buf = 138412802;
    v47 = v42;
    v48 = 2048;
    v49 = v32;
    v50 = 2112;
    v51 = v8;
    _os_log_error_impl(&dword_240F3C000, v33, OS_LOG_TYPE_ERROR, "%@ responded with status code %ld, error: %@", buf, 0x20u);
  }

  if (!+[ASTConnectionUtilities didEncounterNetworkDisconnectionError:](ASTConnectionUtilities, "didEncounterNetworkDisconnectionError:", v8) || (-[ASTNetworking updateConnectionState:newState:](self, "updateConnectionState:newState:", v12, 1), ![v12 retryOnNetworkDisconnected]))
  {
    v28 = 0;
LABEL_28:
    v35 = 0;
    goto LABEL_29;
  }

  [v12 setNetworkDisconnectedRetryCount:{objc_msgSend(v12, "networkDisconnectedRetryCount") + 1}];
  v34 = [v12 networkDisconnectedRetryCount];
  v28 = 0;
  v35 = v34 < [(ASTNetworking *)self networkDisconnectRetryCount];
LABEL_29:
  [(ASTNetworking *)self _verifyResultOfTask:v7 connection:v12];
  v36 = [(ASTNetworking *)self networkStorage];
  [v36 removeObjectForKey:v7];

  if (v35)
  {
    if ([(ASTNetworking *)self _isValidEasyRider]&& [(ASTNetworking *)self _didRefetchProxyServer])
    {
      [(ASTNetworking *)self _resetSessionToNewProxyServer];
    }

    v37 = dispatch_time(0, 3000000000);
    v38 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__ASTNetworking_URLSession_task_didCompleteWithError___block_invoke;
    block[3] = &unk_278CBCF18;
    block[4] = self;
    v44 = v12;
    dispatch_after(v37, v38, block);
  }

  else
  {
    v39 = [v12 didReceiveResponse];
    (v39)[2](v39, v28, v8);
  }

LABEL_36:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a4;
  v12 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(ASTNetworking *)v12 URLSession:v13 task:v14 didReceiveChallenge:v15 completionHandler:v16, v17, v18, v19];
  }

  v20 = [(ASTNetworking *)self networkStorage];
  v21 = [v20 objectForKeyedSubscript:v11];

  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = [v21 connection];
  v23 = [v9 protectionSpace];
  v24 = [v23 authenticationMethod];
  v25 = [v24 isEqualToString:*MEMORY[0x277CCA720]];

  if (!v25)
  {

LABEL_8:
    v10[2](v10, 1, 0);
    goto LABEL_13;
  }

  v26 = [v9 protectionSpace];
  v27 = +[ASTConnectionUtilities trustIsValidWithProtectionSpace:rootOfTrust:](ASTConnectionUtilities, "trustIsValidWithProtectionSpace:rootOfTrust:", v26, [v22 rootOfTrust]);

  if (v27)
  {
    v28 = MEMORY[0x277CCACF0];
    v29 = [v9 protectionSpace];
    v30 = [v28 credentialForTrust:{objc_msgSend(v29, "serverTrust")}];

    (v10)[2](v10, 0, v30);
  }

  else
  {
    v31 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [ASTNetworking URLSession:task:didReceiveChallenge:completionHandler:];
    }

    v10[2](v10, 2, 0);
  }

LABEL_13:
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v11 = a4;
  v12 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(ASTNetworking *)v12 URLSession:v13 task:v14 didSendBodyData:v15 totalBytesSent:v16 totalBytesExpectedToSend:v17, v18, v19];
  }

  v20 = [(ASTNetworking *)self networkStorage];
  v21 = [v20 objectForKeyedSubscript:v11];

  if (v21)
  {
    v22 = [v21 connection];
    [(ASTNetworking *)self updateConnectionState:v22 newState:0];
    v23 = [v22 delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [v22 delegate];
      [v25 connection:v22 didSendBodyData:a5 totalBytesSent:a6 totalBytesExpected:a7];
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(ASTNetworking *)v9 URLSession:v10 task:v11 needNewBodyStream:v12, v13, v14, v15, v16];
  }

  v17 = [(ASTNetworking *)self networkStorage];
  v18 = [v17 objectForKeyedSubscript:v8];

  if (v18)
  {
    v19 = [v18 connection];
    if ([v19 conformsToProtocol:&unk_2852DC4E0])
    {
      v20 = MEMORY[0x277CBEAE0];
      v21 = [v19 fileSteamLocationURL];
      v22 = [v20 inputStreamWithURL:v21];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v7[2](v7, v22);
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v9 = a6;
  v10 = a7;
  v11 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(ASTNetworking *)v11 URLSession:v12 task:v13 willPerformHTTPRedirection:v14 newRequest:v15 completionHandler:v16, v17, v18];
  }

  v19 = v9;
  v20 = v19;
  v21 = v19;
  if (a5)
  {

    v21 = 0;
  }

  v10[2](v10, v21);
}

- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ASTNetworking *)v6 URLSession:v7 taskIsWaitingForConnectivity:v8, v9, v10, v11, v12, v13];
  }

  v14 = [(ASTNetworking *)self networkStorage];
  v15 = [v14 objectForKeyedSubscript:v5];

  if (v15)
  {
    v16 = [v15 connection];

    if (v16)
    {
      v17 = ASTLogHandleForCategory(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v15 connection];
        v21 = 138412546;
        v22 = v15;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&dword_240F3C000, v17, OS_LOG_TYPE_DEFAULT, "Setting connection state to disconnected for network object {%@} with connection {%@}", &v21, 0x16u);
      }

      v19 = [v15 connection];
      [(ASTNetworking *)self updateConnectionState:v19 newState:1];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(ASTNetworking *)v11 URLSession:v12 dataTask:v13 didReceiveData:v14, v15, v16, v17, v18];
  }

  v19 = [(ASTNetworking *)self networkStorage];
  v20 = [v19 objectForKeyedSubscript:v9];

  if (v20)
  {
    v21 = [v20 connection];
    [(ASTNetworking *)self updateConnectionState:v21 newState:0];
    if ([v21 conformsToProtocol:&unk_2852DACF0])
    {
      v22 = v21;
      v23 = [v22 destinationFileHandle];
      [v23 writeData:v10];
    }

    else
    {
      v24 = [v20 receivedData];

      if (!v24)
      {
        v25 = [MEMORY[0x277CBEB28] data];
        [v20 setReceivedData:v25];
      }

      v22 = [v20 receivedData];
      [v22 appendData:v10];
    }
  }
}

- (void)updateConnectionState:(id)a3 newState:(int64_t)a4
{
  v9 = a3;
  v5 = [v9 state];
  [v9 setState:a4];
  if (v5 != [v9 state])
  {
    v6 = [v9 delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [v9 delegate];
      [v8 connection:v9 connectionStateChanged:{objc_msgSend(v9, "state")}];
    }
  }
}

- (void)invalidate
{
  v3 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "Invalidate current NSURLSession.", v6, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(ASTNetworking *)v4 session];
  [v5 finishTasksAndInvalidate];

  [(ASTNetworking *)v4 setSession:0];
  objc_sync_exit(v4);
}

- (id)_taskWithConnection:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 conformsToProtocol:&unk_2852DACF0])
  {
    v7 = [(ASTNetworking *)self _downloadTaskWithDownloadConnection:v6 error:a4];
  }

  else
  {
    v8 = [v6 conformsToProtocol:&unk_2852DC4E0];
    v9 = [(ASTNetworking *)self session];
    v10 = [v6 request];
    if (v8)
    {
      [v9 uploadTaskWithStreamedRequest:v10];
    }

    else
    {
      [v9 dataTaskWithRequest:v10];
    }
    v7 = ;
  }

  return v7;
}

- (id)_downloadTaskWithDownloadConnection:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 destinationFileHandle];

  if (v7)
  {
    v8 = [v6 destinationFileHandle];
    v9 = [v8 isOpenForUpdating];

    if (v9)
    {
      v10 = [v6 destinationFileHandle];
      [v10 truncateFileAtOffset:0];

      v11 = [(ASTNetworking *)self session];
      v12 = [v6 request];
      v13 = [v11 dataTaskWithRequest:v12];

      goto LABEL_12;
    }

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-3000 userInfo:0];
    }

    v14 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ASTNetworking _downloadTaskWithDownloadConnection:error:];
    }
  }

  else
  {
    v14 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ASTNetworking _downloadTaskWithDownloadConnection:error:];
    }
  }

  v13 = 0;
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)_verifyResultOfTask:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 conformsToProtocol:&unk_2852DACF0])
  {
    v8 = [v7 destinationFileHandle];
    v9 = [(ASTNetworking *)self _verifyMD5ForFileHandle:v8 task:v6];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_verifyMD5ForFileHandle:(id)a3 task:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 synchronizeFile];
  v7 = [ASTConnectionUtilities MD5HeaderValueForTask:v6];
  if (v7)
  {
    v8 = [ASTEncodingUtilities MD5ForFileHandle:v5];
    if (![v8 caseInsensitiveCompare:v7])
    {

      v10 = 1;
      goto LABEL_10;
    }

    v9 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASTNetworking _verifyMD5ForFileHandle:task:];
    }
  }

  else
  {
    v8 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ASTNetworking _verifyMD5ForFileHandle:task:];
    }
  }

  [v5 truncateFileAtOffset:0];
  v10 = 0;
LABEL_10:

  return v10;
}

- (int)networkDisconnectRetryCount
{
  if (networkDisconnectRetryCount_onceToken != -1)
  {
    [ASTNetworking networkDisconnectRetryCount];
  }

  return networkDisconnectRetryCount_networkDisconnectRetryCount;
}

void __44__ASTNetworking_networkDisconnectRetryCount__block_invoke()
{
  networkDisconnectRetryCount_networkDisconnectRetryCount = 200;
  v0 = MGCopyAnswer();
  if ([v0 intValue] == 7)
  {
    networkDisconnectRetryCount_networkDisconnectRetryCount = 10;
  }
}

- (BOOL)_isValidEasyRider
{
  if (_isValidEasyRider_onceToken != -1)
  {
    [ASTNetworking _isValidEasyRider];
  }

  return _isValidEasyRider_isEasyRider;
}

void __34__ASTNetworking__isValidEasyRider__block_invoke()
{
  if ([MEMORY[0x277CF97E8] isCheckerBoardActive])
  {
    v0 = [MEMORY[0x277CF97E8] proxyServer];

    if (v0)
    {
      _isValidEasyRider_isEasyRider = 1;
      v1 = ASTLogHandleForCategory(1);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        *v2 = 0;
        _os_log_impl(&dword_240F3C000, v1, OS_LOG_TYPE_DEFAULT, "Valid EasyRider mode.", v2, 2u);
      }
    }
  }
}

- (BOOL)_didRefetchProxyServer
{
  v23 = *MEMORY[0x277D85DE8];
  if (+[ASTLinking isCheckerBoardServicesFrameworkAvailable](ASTLinking, "isCheckerBoardServicesFrameworkAvailable") && [MEMORY[0x277CF97E8] isCheckerBoardActive])
  {
    v2 = [MEMORY[0x277CF97E8] proxyServer];
    v3 = [v2 server];
    v4 = [v2 port];
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v8 = +[ASTEnvironment currentEnvironment];
    v9 = [v8 SOCKSProxyServer];
    if ([v9 isEqualToString:v3])
    {
      v10 = [v8 SOCKSProxyPort];
      v11 = [v10 isEqualToNumber:v5];

      if (v11)
      {
        v7 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
    }

    [v8 setSOCKSProxyServer:v3];
    [v8 setSOCKSProxyPort:v5];
    v12 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = +[ASTEnvironment currentEnvironment];
      v14 = [v13 SOCKSProxyServer];
      v15 = +[ASTEnvironment currentEnvironment];
      v16 = [v15 SOCKSProxyPort];
      v19 = 138412546;
      v20 = v14;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_240F3C000, v12, OS_LOG_TYPE_DEFAULT, "Refetch ASTEnvironment to %@, %@", &v19, 0x16u);
    }

    v7 = 1;
    goto LABEL_17;
  }

  v7 = 0;
LABEL_19:
  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_resetSessionToNewProxyServer
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "Resetting session to new proxy server.", &v16, 2u);
  }

  [(ASTNetworking *)self invalidate];
  v4 = +[ASTEnvironment currentEnvironment];
  v5 = [v4 SOCKSProxyServer];

  v6 = +[ASTEnvironment currentEnvironment];
  v7 = [v6 SOCKSProxyPort];

  v8 = self;
  objc_sync_enter(v8);
  v9 = [(ASTNetworking *)v8 _sessionConfigurationWithSOCKSProxyServer:v5 port:v7];
  v10 = MEMORY[0x277CCAD30];
  v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v12 = [v10 sessionWithConfiguration:v9 delegate:v8 delegateQueue:v11];
  [(ASTNetworking *)v8 setSession:v12];

  v13 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(ASTNetworking *)v8 session];
    v16 = 138412802;
    v17 = v14;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_240F3C000, v13, OS_LOG_TYPE_DEFAULT, "New session[%@] is created with proxy server %@, %@ ", &v16, 0x20u);
  }

  objc_sync_exit(v8);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)addConnection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a1 task:(NSObject *)a2 didCompleteWithError:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[ASTNetworking URLSession:task:didCompleteWithError:]";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_240F3C000, a2, OS_LOG_TYPE_DEBUG, "%s; %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:task:didCompleteWithError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a3 task:(uint64_t)a4 didReceiveChallenge:(uint64_t)a5 completionHandler:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_240F3C000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:task:didReceiveChallenge:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)URLSession:(uint64_t)a3 task:(uint64_t)a4 didSendBodyData:(uint64_t)a5 totalBytesSent:(uint64_t)a6 totalBytesExpectedToSend:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_240F3C000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a3 task:(uint64_t)a4 needNewBodyStream:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_240F3C000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a3 task:(uint64_t)a4 willPerformHTTPRedirection:(uint64_t)a5 newRequest:(uint64_t)a6 completionHandler:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_240F3C000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a3 taskIsWaitingForConnectivity:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_240F3C000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(uint64_t)a3 dataTask:(uint64_t)a4 didReceiveData:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_240F3C000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:dataTask:didReceiveData:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_downloadTaskWithDownloadConnection:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_downloadTaskWithDownloadConnection:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_downloadTaskWithDownloadConnection:error:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_verifyMD5ForFileHandle:task:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_verifyMD5ForFileHandle:task:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_verifyMD5ForFileHandle:task:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end