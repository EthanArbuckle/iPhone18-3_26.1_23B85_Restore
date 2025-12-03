@interface APNetworkClient
+ (void)createSharedNetworkClientForUnitTest;
+ (void)createSharedNetworkClientWithConfig:(id)config;
- (APNetworkClient)initWithConfig:(id)config;
- (BOOL)cancelTasksForService:(id)service withCompletionHandler:(id)handler;
- (id)GET:(id)t client:(id)client headers:(id)headers withCompletionHandler:(id)handler;
- (id)GET:(id)t headers:(id)headers withService:(id)service andCompletionHandler:(id)handler;
- (id)HEAD:(id)d client:(id)client headers:(id)headers withCompletionHandler:(id)handler;
- (id)HEAD:(id)d headers:(id)headers withService:(id)service andCompletionHandler:(id)handler;
- (id)POST:(id)t client:(id)client headers:(id)headers body:(id)body completionHandler:(id)handler;
- (id)POST:(id)t headers:(id)headers body:(id)body withService:(id)service andCompletionHandler:(id)handler;
- (id)_billedSessionForRequester:(id)requester;
- (id)_createSessionForRequester:(id)requester httpMaximumConnectionsPerHost:(int64_t)host;
- (id)_defaultSessionConfig;
- (id)sendRequest:(id)request;
- (id)sessionForClient:(id)client;
- (id)temporarySessionForClient:(id)client;
- (id)temporarySessionForDaemon;
- (id)urlSessionForService:(id)service;
@end

@implementation APNetworkClient

+ (void)createSharedNetworkClientForUnitTest
{
  v14 = objc_alloc_init(APNetworkClientConfig);
  objc_msgSend_setUseFixedHttpSessionManager_(v14, v3, 0, v4);
  objc_msgSend_setLookBackWindow_(v14, v5, v6, v7, 5.0);
  objc_msgSend_setHttpMaximumConnectionsPerHost_(v14, v8, 4, v9);
  objc_msgSend_setHttpMaximumConnectionsPerHostTempSession_(v14, v10, 1, v11);
  objc_msgSend_createSharedNetworkClientWithConfig_(self, v12, v14, v13);
}

+ (void)createSharedNetworkClientWithConfig:(id)config
{
  if (!qword_1EDBA4108)
  {
    configCopy = config;
    v6 = [APNetworkClient alloc];
    v11 = objc_msgSend_initWithConfig_(v6, v7, configCopy, v8);

    objc_msgSend_setSharedAPNetworkClient_(self, v9, v11, v10);
  }
}

- (APNetworkClient)initWithConfig:(id)config
{
  configCopy = config;
  v36.receiver = self;
  v36.super_class = APNetworkClient;
  v8 = [(APNetworkClient *)&v36 init];
  if (v8)
  {
    if (objc_msgSend_useFixedHttpSessionManager(configCopy, v5, v6, v7))
    {
      v9 = objc_alloc_init(APFixedHTTPSessionManager);
      serviceManager = v8->_serviceManager;
      v8->_serviceManager = v9;

      v11 = APLogForCategory(0x22uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        v12 = "Created fixed HTTP session manager.";
LABEL_7:
        _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_DEBUG, v12, buf, 2u);
      }
    }

    else
    {
      v13 = [APFlexibleHTTPSessionManager alloc];
      objc_msgSend_lookBackWindow(configCopy, v14, v15, v16);
      v18 = v17;
      v22 = objc_msgSend_httpMaximumConnectionsPerHost(configCopy, v19, v20, v21);
      v26 = objc_msgSend_httpMaximumConnectionsPerHostTempSession(configCopy, v23, v24, v25);
      v28 = objc_msgSend_initWithLookBackWindow_httpMaximumConnectionsPerHost_httpMaximumConnectionsPerHostTempSession_(v13, v27, v22, v26, v18);
      v29 = v8->_serviceManager;
      v8->_serviceManager = v28;

      v11 = APLogForCategory(0x22uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        v12 = "Created flexible HTTP session manager.";
        goto LABEL_7;
      }
    }

    objc_initWeak(buf, v8);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1BAF20FE0;
    v33[3] = &unk_1E7F1D430;
    objc_copyWeak(&v34, buf);
    objc_msgSend_setCreateSessionBlock_(v8->_serviceManager, v30, v33, v31);
    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
  }

  return v8;
}

- (id)urlSessionForService:(id)service
{
  v4 = objc_msgSend__billedSessionForRequester_(self, a2, service, v3);
  v8 = objc_msgSend_session(v4, v5, v6, v7);

  return v8;
}

- (BOOL)cancelTasksForService:(id)service withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceCopy = service;
  v11 = objc_msgSend_serviceManager(self, v8, v9, v10);
  v13 = objc_msgSend_cancelTasksForService_withCompletionHandler_(v11, v12, serviceCopy, handlerCopy);

  return v13;
}

- (id)sessionForClient:(id)client
{
  clientCopy = client;
  v8 = objc_msgSend_serviceManager(self, v5, v6, v7);
  v11 = objc_msgSend_sessionForService_(v8, v9, clientCopy, v10);

  return v11;
}

- (id)temporarySessionForClient:(id)client
{
  clientCopy = client;
  v8 = objc_msgSend_serviceManager(self, v5, v6, v7);
  v11 = objc_msgSend_temporarySessionForService_(v8, v9, clientCopy, v10);

  return v11;
}

- (id)temporarySessionForDaemon
{
  v4 = objc_msgSend_serviceManager(self, a2, v2, v3);
  v7 = objc_msgSend_temporarySessionForService_(v4, v5, @"com.apple.ap.promotedcontentd", v6);

  return v7;
}

- (id)sendRequest:(id)request
{
  requestCopy = request;
  v8 = objc_msgSend_serviceName(requestCopy, v5, v6, v7);
  v11 = objc_msgSend__billedSessionForRequester_(self, v9, v8, v10);

  v14 = objc_msgSend_sendRequest_(v11, v12, requestCopy, v13);

  return v14;
}

- (id)GET:(id)t client:(id)client headers:(id)headers withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  headersCopy = headers;
  tCopy = t;
  v15 = objc_msgSend__billedSessionForRequester_(self, v13, client, v14);
  v17 = objc_msgSend_GET_headers_withCompletionHandler_(v15, v16, tCopy, headersCopy, handlerCopy);

  return v17;
}

- (id)POST:(id)t client:(id)client headers:(id)headers body:(id)body completionHandler:(id)handler
{
  handlerCopy = handler;
  bodyCopy = body;
  headersCopy = headers;
  tCopy = t;
  v18 = objc_msgSend__billedSessionForRequester_(self, v16, client, v17);
  v20 = objc_msgSend_POST_headers_body_withCompletionHandler_(v18, v19, tCopy, headersCopy, bodyCopy, handlerCopy);

  return v20;
}

- (id)HEAD:(id)d client:(id)client headers:(id)headers withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  headersCopy = headers;
  dCopy = d;
  v15 = objc_msgSend__billedSessionForRequester_(self, v13, client, v14);
  v17 = objc_msgSend_HEAD_headers_withCompletionHandler_(v15, v16, dCopy, headersCopy, handlerCopy);

  return v17;
}

- (id)GET:(id)t headers:(id)headers withService:(id)service andCompletionHandler:(id)handler
{
  handlerCopy = handler;
  headersCopy = headers;
  tCopy = t;
  v15 = objc_msgSend__billedSessionForRequester_(self, v13, service, v14);
  v17 = objc_msgSend_GET_headers_withCompletionHandler_(v15, v16, tCopy, headersCopy, handlerCopy);

  return v17;
}

- (id)POST:(id)t headers:(id)headers body:(id)body withService:(id)service andCompletionHandler:(id)handler
{
  handlerCopy = handler;
  bodyCopy = body;
  headersCopy = headers;
  tCopy = t;
  v18 = objc_msgSend__billedSessionForRequester_(self, v16, service, v17);
  v20 = objc_msgSend_POST_headers_body_withCompletionHandler_(v18, v19, tCopy, headersCopy, bodyCopy, handlerCopy);

  return v20;
}

- (id)HEAD:(id)d headers:(id)headers withService:(id)service andCompletionHandler:(id)handler
{
  handlerCopy = handler;
  headersCopy = headers;
  dCopy = d;
  v15 = objc_msgSend__billedSessionForRequester_(self, v13, service, v14);
  v17 = objc_msgSend_HEAD_headers_withCompletionHandler_(v15, v16, dCopy, headersCopy, handlerCopy);

  return v17;
}

- (id)_billedSessionForRequester:(id)requester
{
  requesterCopy = requester;
  v8 = objc_msgSend_serviceManager(self, v5, v6, v7);
  v11 = objc_msgSend_sessionForService_(v8, v9, requesterCopy, v10);

  return v11;
}

- (id)_createSessionForRequester:(id)requester httpMaximumConnectionsPerHost:(int64_t)host
{
  requesterCopy = requester;
  v10 = objc_msgSend__defaultSessionConfig(self, v7, v8, v9);
  objc_msgSend_set_sourceApplicationBundleIdentifier_(v10, v11, requesterCopy, v12);

  if (host >= 1)
  {
    objc_msgSend_setHTTPMaximumConnectionsPerHost_(v10, v13, host, v14);
  }

  v15 = [APHTTPSession alloc];
  v18 = objc_msgSend_initWithSessionConfiguration_(v15, v16, v10, v17);

  return v18;
}

- (id)_defaultSessionConfig
{
  v4 = objc_msgSend_ephemeralSessionConfiguration(MEMORY[0x1E696AF80], a2, v2, v3);
  v5 = objc_alloc(MEMORY[0x1E696AF18]);
  v7 = objc_msgSend_initWithMemoryCapacity_diskCapacity_diskPath_(v5, v6, 0, 0, 0);
  objc_msgSend_setURLCache_(v4, v8, v7, v9);

  return v4;
}

@end