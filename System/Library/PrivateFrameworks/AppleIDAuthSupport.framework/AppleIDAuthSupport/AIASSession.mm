@interface AIASSession
- (AIASSession)init;
- (id)getRequest:(id)request;
- (id)requestWithURL:(id)l data:(__CFDictionary *)data clientInfo:(id)info proxiedClientInfo:(id)clientInfo companionClientInfo:(id)companionClientInfo appleITeamId:(id)id appleIClientId:(id)clientId additionalHeaders:(id)self0;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)invalidateAndCancel;
@end

@implementation AIASSession

- (AIASSession)init
{
  v5.receiver = self;
  v5.super_class = AIASSession;
  v2 = [(AIASSession *)&v5 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(AIASSession *)v2 setTaskMap:dictionary];

    [(AIASSession *)v2 setInvalidated:0];
  }

  return v2;
}

- (id)getRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  taskMap = [(AIASSession *)selfCopy taskMap];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(requestCopy, "taskIdentifier")}];
  v8 = [taskMap objectForKeyedSubscript:v7];

  objc_sync_exit(selfCopy);

  return v8;
}

- (id)requestWithURL:(id)l data:(__CFDictionary *)data clientInfo:(id)info proxiedClientInfo:(id)clientInfo companionClientInfo:(id)companionClientInfo appleITeamId:(id)id appleIClientId:(id)clientId additionalHeaders:(id)self0
{
  lCopy = l;
  infoCopy = info;
  clientInfoCopy = clientInfo;
  companionClientInfoCopy = companionClientInfo;
  idCopy = id;
  clientIdCopy = clientId;
  headersCopy = headers;
  v23 = [AIASRequest alloc];
  v40 = infoCopy;
  v24 = infoCopy;
  v25 = clientInfoCopy;
  v26 = companionClientInfoCopy;
  v27 = [(AIASRequest *)v23 initWithURL:lCopy data:data clientInfo:v24 proxiedClientInfo:v25 companionClientInfo:companionClientInfoCopy appleITeamId:idCopy appleIClientId:clientIdCopy additionalHeaders:headersCopy];
  if (v27)
  {
    v39 = lCopy;
    uRLSession = [(AIASSession *)self URLSession];
    [(AIASRequest *)v27 setSession:uRLSession];

    uRLSession2 = [(AIASSession *)self URLSession];
    uRLRequest = [(AIASRequest *)v27 URLRequest];
    v31 = [uRLSession2 dataTaskWithRequest:uRLRequest];
    [(AIASRequest *)v27 setTask:v31];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    taskMap = [(AIASSession *)selfCopy taskMap];
    v34 = MEMORY[0x277CCABB0];
    task = [(AIASRequest *)v27 task];
    v36 = [v34 numberWithUnsignedInteger:{objc_msgSend(task, "taskIdentifier")}];
    [taskMap setObject:v27 forKeyedSubscript:v36];

    objc_sync_exit(selfCopy);
    v37 = v27;
    lCopy = v39;
  }

  return v27;
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  challengeCopy = challenge;
  handlerCopy = handler;
  v11 = [(AIASSession *)self getRequest:task];
  if (!v11)
  {
    goto LABEL_33;
  }

  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v14 = [authenticationMethod isEqualToString:*MEMORY[0x277CBAB00]];

  if (!v14)
  {
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_34;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace2 serverTrust];

  v17 = _AIDASOSLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136446210;
    v32 = "[AIASSession URLSession:task:didReceiveChallenge:completionHandler:]";
    _os_log_impl(&dword_24056C000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: checking pinning", &v31, 0xCu);
  }

  protectionSpace3 = [challengeCopy protectionSpace];
  host = [protectionSpace3 host];
  v31 = 0;
  AppleGSService = SecPolicyCreateAppleGSService();
  if (AppleGSService)
  {
    v21 = AppleGSService;
    if (SecTrustSetPolicies(serverTrust, AppleGSService) || MEMORY[0x245CC49D0](serverTrust, &v31))
    {
      CFRelease(v21);
    }

    else
    {
      v22 = v31;
      CFRelease(v21);
      if (v22 == 1 || v22 == 4)
      {

        goto LABEL_11;
      }
    }
  }

  if (!allowSkipSettingOnInternalHardware(@"AppleIDAuthSupportNoPinning", 0))
  {
    goto LABEL_28;
  }

  SSL = SecPolicyCreateSSL(1u, host);
  if (!SSL)
  {
    goto LABEL_28;
  }

  v28 = SSL;
  if (SecTrustSetPolicies(serverTrust, SSL) || MEMORY[0x245CC49D0](serverTrust, &v31))
  {
    CFRelease(v28);
LABEL_28:

    goto LABEL_29;
  }

  v29 = v31;
  CFRelease(v28);

  if (v29 != 1 && v29 != 4)
  {
LABEL_29:
    v25 = _AIDASOSLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136446210;
      v32 = "[AIASSession URLSession:task:didReceiveChallenge:completionHandler:]";
      v26 = "%{public}s: pinning failed";
      goto LABEL_31;
    }

LABEL_32:

LABEL_33:
    handlerCopy[2](handlerCopy, 2, 0);
    goto LABEL_34;
  }

LABEL_11:
  if ([v11 context] && (checkChannelBindings(serverTrust, objc_msgSend(v11, "context")) & 1) == 0)
  {
    v25 = _AIDASOSLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 136446210;
      v32 = "[AIASSession URLSession:task:didReceiveChallenge:completionHandler:]";
      v26 = "%{public}s: channel bindings failed";
LABEL_31:
      _os_log_impl(&dword_24056C000, v25, OS_LOG_TYPE_DEFAULT, v26, &v31, 0xCu);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v23 = _AIDASOSLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136446210;
    v32 = "[AIASSession URLSession:task:didReceiveChallenge:completionHandler:]";
    _os_log_impl(&dword_24056C000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s: use credentials", &v31, 0xCu);
  }

  v24 = [MEMORY[0x277CBAB80] credentialForTrust:serverTrust];
  (handlerCopy)[2](handlerCopy, 0, v24);

LABEL_34:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v8 = [(AIASSession *)self getRequest:task];
  if (v8)
  {
    v9 = _AIDASOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446722;
      v13 = "[AIASSession URLSession:dataTask:didReceiveData:]";
      v14 = 2112;
      v15 = v8;
      v16 = 2048;
      v17 = [dataCopy length];
      _os_log_impl(&dword_24056C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: %@ got more data: %lu bytes", &v12, 0x20u);
    }

    data = [v8 data];
    [data appendData:dataCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = [(AIASSession *)self getRequest:taskCopy];
  if (v11)
  {
    v12 = [taskCopy description];
    [v11 setNetworkTaskDescription:v12];

    v13 = _AIDASOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      networkTaskDescription = [v11 networkTaskDescription];
      v22 = 136446978;
      v23 = "[AIASSession URLSession:task:didCompleteWithError:]";
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = networkTaskDescription;
      v28 = 2112;
      v29 = errorCopy;
      _os_log_impl(&dword_24056C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: %@: %@: %@", &v22, 0x2Au);
    }

    session = [v11 session];
    v16 = session == sessionCopy;

    if (v16)
    {
      if (errorCopy)
      {
        [v11 setError:errorCopy];
      }

      else
      {
        [v11 setSuccess:1];
      }

      sema = [v11 sema];
      dispatch_semaphore_signal(sema);

      selfCopy = self;
      objc_sync_enter(selfCopy);
      taskMap = [(AIASSession *)selfCopy taskMap];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(taskCopy, "taskIdentifier")}];
      [taskMap removeObjectForKey:v20];

      objc_sync_exit(selfCopy);
    }

    else
    {
      selfCopy = _AIDASOSLog();
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136446210;
        v23 = "[AIASSession URLSession:task:didCompleteWithError:]";
        _os_log_impl(&dword_24056C000, &selfCopy->super, OS_LOG_TYPE_DEFAULT, "%{public}s: got reply after we abandoned the request", &v22, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAndCancel
{
  obj = self;
  objc_sync_enter(obj);
  if (![(AIASSession *)obj invalidated])
  {
    uRLSession = [(AIASSession *)obj URLSession];
    [uRLSession invalidateAndCancel];

    [(AIASSession *)obj setInvalidated:1];
  }

  objc_sync_exit(obj);
}

@end