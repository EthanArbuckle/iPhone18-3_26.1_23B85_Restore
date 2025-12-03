@interface ASTNetworking
- (ASTNetworking)initWithSOCKSProxyServer:(id)server port:(id)port;
- (BOOL)_didRefetchProxyServer;
- (BOOL)_isValidEasyRider;
- (BOOL)_verifyMD5ForFileHandle:(id)handle task:(id)task;
- (BOOL)_verifyResultOfTask:(id)task connection:(id)connection;
- (id)_downloadTaskWithDownloadConnection:(id)connection error:(id *)error;
- (id)_sessionConfigurationWithSOCKSProxyServer:(id)server port:(id)port;
- (id)_taskWithConnection:(id)connection error:(id *)error;
- (int)_requestTimeInterval;
- (int)networkDisconnectRetryCount;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity;
- (void)_resetSessionToNewProxyServer;
- (void)addConnection:(id)connection;
- (void)cancelConnectionsOfClass:(Class)class;
- (void)invalidate;
- (void)updateConnectionState:(id)state newState:(int64_t)newState;
@end

@implementation ASTNetworking

- (ASTNetworking)initWithSOCKSProxyServer:(id)server port:(id)port
{
  serverCopy = server;
  portCopy = port;
  v18.receiver = self;
  v18.super_class = ASTNetworking;
  v8 = [(ASTNetworking *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v10 = [(ASTNetworking *)v8 _sessionConfigurationWithSOCKSProxyServer:serverCopy port:portCopy];
    v11 = MEMORY[0x277CCAD30];
    v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v13 = [v11 sessionWithConfiguration:v10 delegate:v9 delegateQueue:v12];
    session = v9->_session;
    v9->_session = v13;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    networkStorage = v9->_networkStorage;
    v9->_networkStorage = dictionary;
  }

  return v9;
}

- (id)_sessionConfigurationWithSOCKSProxyServer:(id)server port:(id)port
{
  v17[3] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  portCopy = port;
  ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  [ephemeralSessionConfiguration setWaitsForConnectivity:1];
  [ephemeralSessionConfiguration setTimeoutIntervalForRequest:{-[ASTNetworking _requestTimeInterval](self, "_requestTimeInterval")}];
  if (serverCopy && portCopy)
  {
    [ephemeralSessionConfiguration setWaitsForConnectivity:0];
    v16[0] = @"SOCKSEnable";
    v16[1] = @"SOCKSPort";
    v17[0] = MEMORY[0x277CBEC38];
    v17[1] = portCopy;
    v16[2] = @"SOCKSProxy";
    v17[2] = serverCopy;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    [ephemeralSessionConfiguration setConnectionProxyDictionary:v9];

    v10 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      connectionProxyDictionary = [ephemeralSessionConfiguration connectionProxyDictionary];
      v14 = 138412290;
      v15 = connectionProxyDictionary;
      _os_log_impl(&dword_240F3C000, v10, OS_LOG_TYPE_DEFAULT, "Configuring SOCKS proxy: %@", &v14, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return ephemeralSessionConfiguration;
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

- (void)addConnection:(id)connection
{
  v29 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = objc_alloc_init(ASTNetworkObject);
  [(ASTNetworkObject *)v5 setConnection:connectionCopy];
  v6 = ASTLogHandleForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    request = [connectionCopy request];
    allHTTPHeaderFields = [request allHTTPHeaderFields];
    *buf = 138412546;
    v26 = v7;
    v27 = 2112;
    v28 = allHTTPHeaderFields;
    _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "[%@] Request Headers: %@", buf, 0x16u);
  }

  v11 = ASTLogHandleForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    request2 = [connectionCopy request];
    v15 = [request2 URL];
    *buf = 138412546;
    v26 = v12;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_240F3C000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Request URL: %@", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  session = [(ASTNetworking *)selfCopy session];

  if (session)
  {
    v24 = 0;
    v18 = [(ASTNetworking *)selfCopy _taskWithConnection:connectionCopy error:&v24];
    v19 = v24;
    if (v18)
    {
      networkStorage = [(ASTNetworking *)selfCopy networkStorage];
      [networkStorage setObject:v5 forKeyedSubscript:v18];

      [v18 resume];
    }

    else
    {
      didReceiveResponse = [connectionCopy didReceiveResponse];
      (didReceiveResponse)[2](didReceiveResponse, 0, v19);

      v22 = ASTLogHandleForCategory(1);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ASTNetworking addConnection:];
      }
    }
  }

  objc_sync_exit(selfCopy);

  v23 = *MEMORY[0x277D85DE8];
}

- (void)cancelConnectionsOfClass:(Class)class
{
  session = [(ASTNetworking *)self session];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__ASTNetworking_cancelConnectionsOfClass___block_invoke;
  v6[3] = &unk_278CBD0D0;
  v6[4] = self;
  v6[5] = class;
  [session getAllTasksWithCompletionHandler:v6];
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

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v53[1] = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  v9 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ASTNetworking URLSession:errorCopy task:v9 didCompleteWithError:?];
  }

  networkStorage = [(ASTNetworking *)self networkStorage];
  v11 = [networkStorage objectForKeyedSubscript:taskCopy];

  if (!v11)
  {
    v28 = MEMORY[0x277CBEC10];
    goto LABEL_36;
  }

  connection = [v11 connection];
  response = [taskCopy response];
  if (response)
  {
    v14 = response;
    response2 = [taskCopy response];
    statusCode = [response2 statusCode];

    if (statusCode == 200)
    {
      [(ASTNetworking *)self updateConnectionState:connection newState:0];
      v17 = ASTLogHandleForCategory(2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        response3 = [taskCopy response];
        allHeaderFields = [response3 allHeaderFields];
        *buf = 138412290;
        v47 = allHeaderFields;
        _os_log_impl(&dword_240F3C000, v17, OS_LOG_TYPE_DEFAULT, "Response Headers: %@", buf, 0xCu);
      }

      receivedData = [v11 receivedData];
      if (receivedData)
      {
        v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:receivedData encoding:4];
        v22 = ASTLogHandleForCategory(3);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          currentRequest = [taskCopy currentRequest];
          v24 = [currentRequest URL];
          *buf = 138412546;
          v47 = v24;
          v48 = 2112;
          v49 = v21;
          _os_log_impl(&dword_240F3C000, v22, OS_LOG_TYPE_DEFAULT, "URL: %@\nResponse Body: %@", buf, 0x16u);
        }

        v25 = +[ASTTestAutomation sharedInstance];
        testAutomationEnabled = [v25 testAutomationEnabled];

        if (testAutomationEnabled)
        {
          v52 = @"payload";
          v53[0] = v21;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
          [ASTTestAutomation postServerResponse:v27];
        }

        v45 = errorCopy;
        v28 = [ASTEncodingUtilities parseJSONResponseWithData:receivedData error:&v45];
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

        errorCopy = v29;
      }

      else
      {
        v28 = MEMORY[0x277CBEC10];
      }

      goto LABEL_28;
    }
  }

  response4 = [taskCopy response];
  statusCode2 = [response4 statusCode];

  v33 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    originalRequest = [taskCopy originalRequest];
    v42 = [originalRequest URL];
    *buf = 138412802;
    v47 = v42;
    v48 = 2048;
    v49 = statusCode2;
    v50 = 2112;
    v51 = errorCopy;
    _os_log_error_impl(&dword_240F3C000, v33, OS_LOG_TYPE_ERROR, "%@ responded with status code %ld, error: %@", buf, 0x20u);
  }

  if (!+[ASTConnectionUtilities didEncounterNetworkDisconnectionError:](ASTConnectionUtilities, "didEncounterNetworkDisconnectionError:", errorCopy) || (-[ASTNetworking updateConnectionState:newState:](self, "updateConnectionState:newState:", connection, 1), ![connection retryOnNetworkDisconnected]))
  {
    v28 = 0;
LABEL_28:
    v35 = 0;
    goto LABEL_29;
  }

  [connection setNetworkDisconnectedRetryCount:{objc_msgSend(connection, "networkDisconnectedRetryCount") + 1}];
  networkDisconnectedRetryCount = [connection networkDisconnectedRetryCount];
  v28 = 0;
  v35 = networkDisconnectedRetryCount < [(ASTNetworking *)self networkDisconnectRetryCount];
LABEL_29:
  [(ASTNetworking *)self _verifyResultOfTask:taskCopy connection:connection];
  networkStorage2 = [(ASTNetworking *)self networkStorage];
  [networkStorage2 removeObjectForKey:taskCopy];

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
    v44 = connection;
    dispatch_after(v37, v38, block);
  }

  else
  {
    didReceiveResponse = [connection didReceiveResponse];
    (didReceiveResponse)[2](didReceiveResponse, v28, errorCopy);
  }

LABEL_36:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  taskCopy = task;
  v12 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(ASTNetworking *)v12 URLSession:v13 task:v14 didReceiveChallenge:v15 completionHandler:v16, v17, v18, v19];
  }

  networkStorage = [(ASTNetworking *)self networkStorage];
  v21 = [networkStorage objectForKeyedSubscript:taskCopy];

  if (!v21)
  {
    goto LABEL_8;
  }

  connection = [v21 connection];
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v25 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

  if (!v25)
  {

LABEL_8:
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_13;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  v27 = +[ASTConnectionUtilities trustIsValidWithProtectionSpace:rootOfTrust:](ASTConnectionUtilities, "trustIsValidWithProtectionSpace:rootOfTrust:", protectionSpace2, [connection rootOfTrust]);

  if (v27)
  {
    v28 = MEMORY[0x277CCACF0];
    protectionSpace3 = [challengeCopy protectionSpace];
    v30 = [v28 credentialForTrust:{objc_msgSend(protectionSpace3, "serverTrust")}];

    (handlerCopy)[2](handlerCopy, 0, v30);
  }

  else
  {
    v31 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [ASTNetworking URLSession:task:didReceiveChallenge:completionHandler:];
    }

    handlerCopy[2](handlerCopy, 2, 0);
  }

LABEL_13:
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  taskCopy = task;
  v12 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(ASTNetworking *)v12 URLSession:v13 task:v14 didSendBodyData:v15 totalBytesSent:v16 totalBytesExpectedToSend:v17, v18, v19];
  }

  networkStorage = [(ASTNetworking *)self networkStorage];
  v21 = [networkStorage objectForKeyedSubscript:taskCopy];

  if (v21)
  {
    connection = [v21 connection];
    [(ASTNetworking *)self updateConnectionState:connection newState:0];
    delegate = [connection delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      delegate2 = [connection delegate];
      [delegate2 connection:connection didSendBodyData:data totalBytesSent:sent totalBytesExpected:send];
    }
  }
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  streamCopy = stream;
  taskCopy = task;
  v9 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(ASTNetworking *)v9 URLSession:v10 task:v11 needNewBodyStream:v12, v13, v14, v15, v16];
  }

  networkStorage = [(ASTNetworking *)self networkStorage];
  v18 = [networkStorage objectForKeyedSubscript:taskCopy];

  if (v18)
  {
    connection = [v18 connection];
    if ([connection conformsToProtocol:&unk_2852DC4E0])
    {
      v20 = MEMORY[0x277CBEAE0];
      fileSteamLocationURL = [connection fileSteamLocationURL];
      v22 = [v20 inputStreamWithURL:fileSteamLocationURL];
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

  streamCopy[2](streamCopy, v22);
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v11 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(ASTNetworking *)v11 URLSession:v12 task:v13 willPerformHTTPRedirection:v14 newRequest:v15 completionHandler:v16, v17, v18];
  }

  v19 = requestCopy;
  v20 = v19;
  v21 = v19;
  if (redirection)
  {

    v21 = 0;
  }

  handlerCopy[2](handlerCopy, v21);
}

- (void)URLSession:(id)session taskIsWaitingForConnectivity:(id)connectivity
{
  v25 = *MEMORY[0x277D85DE8];
  connectivityCopy = connectivity;
  v6 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ASTNetworking *)v6 URLSession:v7 taskIsWaitingForConnectivity:v8, v9, v10, v11, v12, v13];
  }

  networkStorage = [(ASTNetworking *)self networkStorage];
  v15 = [networkStorage objectForKeyedSubscript:connectivityCopy];

  if (v15)
  {
    connection = [v15 connection];

    if (connection)
    {
      v17 = ASTLogHandleForCategory(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        connection2 = [v15 connection];
        v21 = 138412546;
        v22 = v15;
        v23 = 2112;
        v24 = connection2;
        _os_log_impl(&dword_240F3C000, v17, OS_LOG_TYPE_DEFAULT, "Setting connection state to disconnected for network object {%@} with connection {%@}", &v21, 0x16u);
      }

      connection3 = [v15 connection];
      [(ASTNetworking *)self updateConnectionState:connection3 newState:1];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  v11 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(ASTNetworking *)v11 URLSession:v12 dataTask:v13 didReceiveData:v14, v15, v16, v17, v18];
  }

  networkStorage = [(ASTNetworking *)self networkStorage];
  v20 = [networkStorage objectForKeyedSubscript:taskCopy];

  if (v20)
  {
    connection = [v20 connection];
    [(ASTNetworking *)self updateConnectionState:connection newState:0];
    if ([connection conformsToProtocol:&unk_2852DACF0])
    {
      receivedData2 = connection;
      destinationFileHandle = [receivedData2 destinationFileHandle];
      [destinationFileHandle writeData:dataCopy];
    }

    else
    {
      receivedData = [v20 receivedData];

      if (!receivedData)
      {
        data = [MEMORY[0x277CBEB28] data];
        [v20 setReceivedData:data];
      }

      receivedData2 = [v20 receivedData];
      [receivedData2 appendData:dataCopy];
    }
  }
}

- (void)updateConnectionState:(id)state newState:(int64_t)newState
{
  stateCopy = state;
  state = [stateCopy state];
  [stateCopy setState:newState];
  if (state != [stateCopy state])
  {
    delegate = [stateCopy delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [stateCopy delegate];
      [delegate2 connection:stateCopy connectionStateChanged:{objc_msgSend(stateCopy, "state")}];
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  session = [(ASTNetworking *)selfCopy session];
  [session finishTasksAndInvalidate];

  [(ASTNetworking *)selfCopy setSession:0];
  objc_sync_exit(selfCopy);
}

- (id)_taskWithConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  if ([connectionCopy conformsToProtocol:&unk_2852DACF0])
  {
    v7 = [(ASTNetworking *)self _downloadTaskWithDownloadConnection:connectionCopy error:error];
  }

  else
  {
    v8 = [connectionCopy conformsToProtocol:&unk_2852DC4E0];
    session = [(ASTNetworking *)self session];
    request = [connectionCopy request];
    if (v8)
    {
      [session uploadTaskWithStreamedRequest:request];
    }

    else
    {
      [session dataTaskWithRequest:request];
    }
    v7 = ;
  }

  return v7;
}

- (id)_downloadTaskWithDownloadConnection:(id)connection error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  destinationFileHandle = [connectionCopy destinationFileHandle];

  if (destinationFileHandle)
  {
    destinationFileHandle2 = [connectionCopy destinationFileHandle];
    isOpenForUpdating = [destinationFileHandle2 isOpenForUpdating];

    if (isOpenForUpdating)
    {
      destinationFileHandle3 = [connectionCopy destinationFileHandle];
      [destinationFileHandle3 truncateFileAtOffset:0];

      session = [(ASTNetworking *)self session];
      request = [connectionCopy request];
      v13 = [session dataTaskWithRequest:request];

      goto LABEL_12;
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-3000 userInfo:0];
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

- (BOOL)_verifyResultOfTask:(id)task connection:(id)connection
{
  taskCopy = task;
  connectionCopy = connection;
  if ([connectionCopy conformsToProtocol:&unk_2852DACF0])
  {
    destinationFileHandle = [connectionCopy destinationFileHandle];
    v9 = [(ASTNetworking *)self _verifyMD5ForFileHandle:destinationFileHandle task:taskCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_verifyMD5ForFileHandle:(id)handle task:(id)task
{
  handleCopy = handle;
  taskCopy = task;
  [handleCopy synchronizeFile];
  v7 = [ASTConnectionUtilities MD5HeaderValueForTask:taskCopy];
  if (v7)
  {
    v8 = [ASTEncodingUtilities MD5ForFileHandle:handleCopy];
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

  [handleCopy truncateFileAtOffset:0];
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
    proxyServer = [MEMORY[0x277CF97E8] proxyServer];
    server = [proxyServer server];
    port = [proxyServer port];
    v5 = port;
    if (server)
    {
      v6 = port == 0;
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
    sOCKSProxyServer = [v8 SOCKSProxyServer];
    if ([sOCKSProxyServer isEqualToString:server])
    {
      sOCKSProxyPort = [v8 SOCKSProxyPort];
      v11 = [sOCKSProxyPort isEqualToNumber:v5];

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

    [v8 setSOCKSProxyServer:server];
    [v8 setSOCKSProxyPort:v5];
    v12 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = +[ASTEnvironment currentEnvironment];
      sOCKSProxyServer2 = [v13 SOCKSProxyServer];
      v15 = +[ASTEnvironment currentEnvironment];
      sOCKSProxyPort2 = [v15 SOCKSProxyPort];
      v19 = 138412546;
      v20 = sOCKSProxyServer2;
      v21 = 2112;
      v22 = sOCKSProxyPort2;
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
  sOCKSProxyServer = [v4 SOCKSProxyServer];

  v6 = +[ASTEnvironment currentEnvironment];
  sOCKSProxyPort = [v6 SOCKSProxyPort];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(ASTNetworking *)selfCopy _sessionConfigurationWithSOCKSProxyServer:sOCKSProxyServer port:sOCKSProxyPort];
  v10 = MEMORY[0x277CCAD30];
  v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v12 = [v10 sessionWithConfiguration:v9 delegate:selfCopy delegateQueue:v11];
  [(ASTNetworking *)selfCopy setSession:v12];

  v13 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    session = [(ASTNetworking *)selfCopy session];
    v16 = 138412802;
    v17 = session;
    v18 = 2112;
    v19 = sOCKSProxyServer;
    v20 = 2112;
    v21 = sOCKSProxyPort;
    _os_log_impl(&dword_240F3C000, v13, OS_LOG_TYPE_DEFAULT, "New session[%@] is created with proxy server %@, %@ ", &v16, 0x20u);
  }

  objc_sync_exit(selfCopy);
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