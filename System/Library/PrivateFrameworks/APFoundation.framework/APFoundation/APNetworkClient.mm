@interface APNetworkClient
+ (void)createSharedNetworkClientForUnitTest;
+ (void)createSharedNetworkClientWithConfig:(id)a3;
- (APNetworkClient)initWithConfig:(id)a3;
- (BOOL)cancelTasksForService:(id)a3 withCompletionHandler:(id)a4;
- (id)GET:(id)a3 client:(id)a4 headers:(id)a5 withCompletionHandler:(id)a6;
- (id)GET:(id)a3 headers:(id)a4 withService:(id)a5 andCompletionHandler:(id)a6;
- (id)HEAD:(id)a3 client:(id)a4 headers:(id)a5 withCompletionHandler:(id)a6;
- (id)HEAD:(id)a3 headers:(id)a4 withService:(id)a5 andCompletionHandler:(id)a6;
- (id)POST:(id)a3 client:(id)a4 headers:(id)a5 body:(id)a6 completionHandler:(id)a7;
- (id)POST:(id)a3 headers:(id)a4 body:(id)a5 withService:(id)a6 andCompletionHandler:(id)a7;
- (id)_billedSessionForRequester:(id)a3;
- (id)_createSessionForRequester:(id)a3 httpMaximumConnectionsPerHost:(int64_t)a4;
- (id)_defaultSessionConfig;
- (id)sendRequest:(id)a3;
- (id)sessionForClient:(id)a3;
- (id)temporarySessionForClient:(id)a3;
- (id)temporarySessionForDaemon;
- (id)urlSessionForService:(id)a3;
@end

@implementation APNetworkClient

+ (void)createSharedNetworkClientForUnitTest
{
  v14 = objc_alloc_init(APNetworkClientConfig);
  objc_msgSend_setUseFixedHttpSessionManager_(v14, v3, 0, v4);
  objc_msgSend_setLookBackWindow_(v14, v5, v6, v7, 5.0);
  objc_msgSend_setHttpMaximumConnectionsPerHost_(v14, v8, 4, v9);
  objc_msgSend_setHttpMaximumConnectionsPerHostTempSession_(v14, v10, 1, v11);
  objc_msgSend_createSharedNetworkClientWithConfig_(a1, v12, v14, v13);
}

+ (void)createSharedNetworkClientWithConfig:(id)a3
{
  if (!qword_1EDBA4108)
  {
    v5 = a3;
    v6 = [APNetworkClient alloc];
    v11 = objc_msgSend_initWithConfig_(v6, v7, v5, v8);

    objc_msgSend_setSharedAPNetworkClient_(a1, v9, v11, v10);
  }
}

- (APNetworkClient)initWithConfig:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = APNetworkClient;
  v8 = [(APNetworkClient *)&v36 init];
  if (v8)
  {
    if (objc_msgSend_useFixedHttpSessionManager(v4, v5, v6, v7))
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
      objc_msgSend_lookBackWindow(v4, v14, v15, v16);
      v18 = v17;
      v22 = objc_msgSend_httpMaximumConnectionsPerHost(v4, v19, v20, v21);
      v26 = objc_msgSend_httpMaximumConnectionsPerHostTempSession(v4, v23, v24, v25);
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

- (id)urlSessionForService:(id)a3
{
  v4 = objc_msgSend__billedSessionForRequester_(self, a2, a3, v3);
  v8 = objc_msgSend_session(v4, v5, v6, v7);

  return v8;
}

- (BOOL)cancelTasksForService:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_serviceManager(self, v8, v9, v10);
  v13 = objc_msgSend_cancelTasksForService_withCompletionHandler_(v11, v12, v7, v6);

  return v13;
}

- (id)sessionForClient:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_serviceManager(self, v5, v6, v7);
  v11 = objc_msgSend_sessionForService_(v8, v9, v4, v10);

  return v11;
}

- (id)temporarySessionForClient:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_serviceManager(self, v5, v6, v7);
  v11 = objc_msgSend_temporarySessionForService_(v8, v9, v4, v10);

  return v11;
}

- (id)temporarySessionForDaemon
{
  v4 = objc_msgSend_serviceManager(self, a2, v2, v3);
  v7 = objc_msgSend_temporarySessionForService_(v4, v5, @"com.apple.ap.promotedcontentd", v6);

  return v7;
}

- (id)sendRequest:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_serviceName(v4, v5, v6, v7);
  v11 = objc_msgSend__billedSessionForRequester_(self, v9, v8, v10);

  v14 = objc_msgSend_sendRequest_(v11, v12, v4, v13);

  return v14;
}

- (id)GET:(id)a3 client:(id)a4 headers:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v15 = objc_msgSend__billedSessionForRequester_(self, v13, a4, v14);
  v17 = objc_msgSend_GET_headers_withCompletionHandler_(v15, v16, v12, v11, v10);

  return v17;
}

- (id)POST:(id)a3 client:(id)a4 headers:(id)a5 body:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v18 = objc_msgSend__billedSessionForRequester_(self, v16, a4, v17);
  v20 = objc_msgSend_POST_headers_body_withCompletionHandler_(v18, v19, v15, v14, v13, v12);

  return v20;
}

- (id)HEAD:(id)a3 client:(id)a4 headers:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v15 = objc_msgSend__billedSessionForRequester_(self, v13, a4, v14);
  v17 = objc_msgSend_HEAD_headers_withCompletionHandler_(v15, v16, v12, v11, v10);

  return v17;
}

- (id)GET:(id)a3 headers:(id)a4 withService:(id)a5 andCompletionHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v15 = objc_msgSend__billedSessionForRequester_(self, v13, a5, v14);
  v17 = objc_msgSend_GET_headers_withCompletionHandler_(v15, v16, v12, v11, v10);

  return v17;
}

- (id)POST:(id)a3 headers:(id)a4 body:(id)a5 withService:(id)a6 andCompletionHandler:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v18 = objc_msgSend__billedSessionForRequester_(self, v16, a6, v17);
  v20 = objc_msgSend_POST_headers_body_withCompletionHandler_(v18, v19, v15, v14, v13, v12);

  return v20;
}

- (id)HEAD:(id)a3 headers:(id)a4 withService:(id)a5 andCompletionHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v15 = objc_msgSend__billedSessionForRequester_(self, v13, a5, v14);
  v17 = objc_msgSend_HEAD_headers_withCompletionHandler_(v15, v16, v12, v11, v10);

  return v17;
}

- (id)_billedSessionForRequester:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_serviceManager(self, v5, v6, v7);
  v11 = objc_msgSend_sessionForService_(v8, v9, v4, v10);

  return v11;
}

- (id)_createSessionForRequester:(id)a3 httpMaximumConnectionsPerHost:(int64_t)a4
{
  v6 = a3;
  v10 = objc_msgSend__defaultSessionConfig(self, v7, v8, v9);
  objc_msgSend_set_sourceApplicationBundleIdentifier_(v10, v11, v6, v12);

  if (a4 >= 1)
  {
    objc_msgSend_setHTTPMaximumConnectionsPerHost_(v10, v13, a4, v14);
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