@interface AIASSession
- (AIASSession)init;
- (id)getRequest:(id)a3;
- (id)requestWithURL:(id)a3 data:(__CFDictionary *)a4 clientInfo:(id)a5 proxiedClientInfo:(id)a6 companionClientInfo:(id)a7 appleITeamId:(id)a8 appleIClientId:(id)a9 additionalHeaders:(id)a10;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
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
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [(AIASSession *)v2 setTaskMap:v3];

    [(AIASSession *)v2 setInvalidated:0];
  }

  return v2;
}

- (id)getRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(AIASSession *)v5 taskMap];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "taskIdentifier")}];
  v8 = [v6 objectForKeyedSubscript:v7];

  objc_sync_exit(v5);

  return v8;
}

- (id)requestWithURL:(id)a3 data:(__CFDictionary *)a4 clientInfo:(id)a5 proxiedClientInfo:(id)a6 companionClientInfo:(id)a7 appleITeamId:(id)a8 appleIClientId:(id)a9 additionalHeaders:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = [AIASRequest alloc];
  v40 = v17;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = [(AIASRequest *)v23 initWithURL:v16 data:a4 clientInfo:v24 proxiedClientInfo:v25 companionClientInfo:v19 appleITeamId:v20 appleIClientId:v21 additionalHeaders:v22];
  if (v27)
  {
    v39 = v16;
    v28 = [(AIASSession *)self URLSession];
    [(AIASRequest *)v27 setSession:v28];

    v29 = [(AIASSession *)self URLSession];
    v30 = [(AIASRequest *)v27 URLRequest];
    v31 = [v29 dataTaskWithRequest:v30];
    [(AIASRequest *)v27 setTask:v31];

    v32 = self;
    objc_sync_enter(v32);
    v33 = [(AIASSession *)v32 taskMap];
    v34 = MEMORY[0x277CCABB0];
    v35 = [(AIASRequest *)v27 task];
    v36 = [v34 numberWithUnsignedInteger:{objc_msgSend(v35, "taskIdentifier")}];
    [v33 setObject:v27 forKeyedSubscript:v36];

    objc_sync_exit(v32);
    v37 = v27;
    v16 = v39;
  }

  return v27;
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = [(AIASSession *)self getRequest:a4];
  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = [v9 protectionSpace];
  v13 = [v12 authenticationMethod];
  v14 = [v13 isEqualToString:*MEMORY[0x277CBAB00]];

  if (!v14)
  {
    v10[2](v10, 1, 0);
    goto LABEL_34;
  }

  v15 = [v9 protectionSpace];
  v16 = [v15 serverTrust];

  v17 = _AIDASOSLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136446210;
    v32 = "[AIASSession URLSession:task:didReceiveChallenge:completionHandler:]";
    _os_log_impl(&dword_24056C000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: checking pinning", &v31, 0xCu);
  }

  v18 = [v9 protectionSpace];
  v19 = [v18 host];
  v31 = 0;
  AppleGSService = SecPolicyCreateAppleGSService();
  if (AppleGSService)
  {
    v21 = AppleGSService;
    if (SecTrustSetPolicies(v16, AppleGSService) || MEMORY[0x245CC49D0](v16, &v31))
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

  SSL = SecPolicyCreateSSL(1u, v19);
  if (!SSL)
  {
    goto LABEL_28;
  }

  v28 = SSL;
  if (SecTrustSetPolicies(v16, SSL) || MEMORY[0x245CC49D0](v16, &v31))
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
    v10[2](v10, 2, 0);
    goto LABEL_34;
  }

LABEL_11:
  if ([v11 context] && (checkChannelBindings(v16, objc_msgSend(v11, "context")) & 1) == 0)
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

  v24 = [MEMORY[0x277CBAB80] credentialForTrust:v16];
  (v10)[2](v10, 0, v24);

LABEL_34:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [(AIASSession *)self getRequest:a4];
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
      v17 = [v7 length];
      _os_log_impl(&dword_24056C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: %@ got more data: %lu bytes", &v12, 0x20u);
    }

    v10 = [v8 data];
    [v10 appendData:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AIASSession *)self getRequest:v9];
  if (v11)
  {
    v12 = [v9 description];
    [v11 setNetworkTaskDescription:v12];

    v13 = _AIDASOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v11 networkTaskDescription];
      v22 = 136446978;
      v23 = "[AIASSession URLSession:task:didCompleteWithError:]";
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_24056C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: %@: %@: %@", &v22, 0x2Au);
    }

    v15 = [v11 session];
    v16 = v15 == v8;

    if (v16)
    {
      if (v10)
      {
        [v11 setError:v10];
      }

      else
      {
        [v11 setSuccess:1];
      }

      v18 = [v11 sema];
      dispatch_semaphore_signal(v18);

      v17 = self;
      objc_sync_enter(v17);
      v19 = [(AIASSession *)v17 taskMap];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "taskIdentifier")}];
      [v19 removeObjectForKey:v20];

      objc_sync_exit(v17);
    }

    else
    {
      v17 = _AIDASOSLog();
      if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 136446210;
        v23 = "[AIASSession URLSession:task:didCompleteWithError:]";
        _os_log_impl(&dword_24056C000, &v17->super, OS_LOG_TYPE_DEFAULT, "%{public}s: got reply after we abandoned the request", &v22, 0xCu);
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
    v2 = [(AIASSession *)obj URLSession];
    [v2 invalidateAndCancel];

    [(AIASSession *)obj setInvalidated:1];
  }

  objc_sync_exit(obj);
}

@end