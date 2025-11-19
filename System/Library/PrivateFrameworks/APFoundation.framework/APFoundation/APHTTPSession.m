@interface APHTTPSession
- (APHTTPSession)init;
- (APHTTPSession)initWithSessionConfiguration:(id)a3;
- (BOOL)sendFakeResponseForRequest:(id)a3;
- (id)GET:(id)a3 headers:(id)a4 withCompletionHandler:(id)a5;
- (id)HEAD:(id)a3 headers:(id)a4 withCompletionHandler:(id)a5;
- (id)POST:(id)a3 headers:(id)a4 body:(id)a5 withCompletionHandler:(id)a6;
- (id)sendRequest:(id)a3;
- (void)cancelTaskWithCompletionHandler:(id)a3;
@end

@implementation APHTTPSession

- (APHTTPSession)init
{

  return 0;
}

- (APHTTPSession)initWithSessionConfiguration:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = APHTTPSession;
  v8 = [(APHTTPSession *)&v16 init];
  if (v8)
  {
    v9 = objc_msgSend__sourceApplicationBundleIdentifier(v4, v5, v6, v7);
    name = v8->_name;
    v8->_name = v9;

    v13 = objc_msgSend_sessionWithConfiguration_(MEMORY[0x1E696AF78], v11, v4, v12);
    session = v8->_session;
    v8->_session = v13;
  }

  return v8;
}

- (void)cancelTaskWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_session(self, v5, v6, v7);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1BAF05744;
  v12[3] = &unk_1E7F1CC98;
  v13 = v4;
  v9 = v4;
  objc_msgSend_getTasksWithCompletionHandler_(v8, v10, v12, v11);
}

- (id)sendRequest:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696AD68];
  v9 = objc_msgSend_URL(v4, v6, v7, v8);
  v12 = objc_msgSend_requestWithURL_(v5, v10, v9, v11);

  v16 = objc_msgSend_HTTPMethod(v4, v13, v14, v15);
  if (v16 > 2)
  {
    v53 = 0;
  }

  else
  {
    objc_msgSend_setHTTPMethod_(v12, v17, off_1E7F1CD08[v16], v18);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v22 = objc_msgSend_allHTTPHeaderFields(v4, v19, v20, v21);
    v26 = objc_msgSend_keyEnumerator(v22, v23, v24, v25);

    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v71, v77, 16);
    if (v28)
    {
      v32 = v28;
      v33 = *v72;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v72 != v33)
          {
            objc_enumerationMutation(v26);
          }

          v35 = *(*(&v71 + 1) + 8 * i);
          v36 = objc_msgSend_allHTTPHeaderFields(v4, v29, v30, v31);
          v39 = objc_msgSend_objectForKeyedSubscript_(v36, v37, v35, v38);
          objc_msgSend_addValue_forHTTPHeaderField_(v12, v40, v39, v35);
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v71, v77, 16);
      }

      while (v32);
    }

    v44 = objc_msgSend_HTTPBody(v4, v41, v42, v43);
    objc_msgSend_setHTTPBody_(v12, v45, v44, v46);

    if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v47, v48, v49) && objc_msgSend_sendFakeResponseForRequest_(self, v50, v4, v51))
    {
      v52 = APLogForCategory(0x22uLL);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v76 = v12;
        _os_log_impl(&dword_1BADC1000, v52, OS_LOG_TYPE_INFO, "APHTTPRequest will not be sent (error code will be returned): %{public}@", buf, 0xCu);
      }

      v53 = 0;
    }

    else
    {
      v54 = APLogForCategory(0x22uLL);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v76 = v12;
        _os_log_impl(&dword_1BADC1000, v54, OS_LOG_TYPE_INFO, "APHTTPRequest is about to be sent: %{public}@", buf, 0xCu);
      }

      v58 = objc_msgSend_completionHandler(v4, v55, v56, v57);
      v62 = objc_msgSend_session(self, v59, v60, v61);
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = sub_1BAF05C48;
      v69[3] = &unk_1E7F1CCC0;
      v70 = v58;
      v52 = v58;
      v53 = objc_msgSend_dataTaskWithRequest_completionHandler_(v62, v63, v12, v69);

      objc_msgSend_resume(v53, v64, v65, v66);
    }
  }

  v67 = *MEMORY[0x1E69E9840];

  return v53;
}

- (id)GET:(id)a3 headers:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [APHTTPRequest alloc];
  v13 = objc_msgSend_initWithURL_HTTPMethod_HTTPHeaders_HTTPBody_serviceName_completionHandler_(v11, v12, v10, 0, v9, 0, 0, v8);

  v16 = objc_msgSend_sendRequest_(self, v14, v13, v15);

  return v16;
}

- (id)POST:(id)a3 headers:(id)a4 body:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [APHTTPRequest alloc];
  v16 = objc_msgSend_initWithURL_HTTPMethod_HTTPHeaders_HTTPBody_serviceName_completionHandler_(v14, v15, v13, 2, v12, v11, 0, v10);

  v19 = objc_msgSend_sendRequest_(self, v17, v16, v18);

  return v19;
}

- (id)HEAD:(id)a3 headers:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [APHTTPRequest alloc];
  v13 = objc_msgSend_initWithURL_HTTPMethod_HTTPHeaders_HTTPBody_serviceName_completionHandler_(v11, v12, v10, 1, v9, 0, 0, v8);

  v16 = objc_msgSend_sendRequest_(self, v14, v13, v15);

  return v16;
}

- (BOOL)sendFakeResponseForRequest:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_allHTTPHeaderFields(v3, v4, v5, v6);
  v10 = objc_msgSend_objectForKey_(v7, v8, @"debug-http-status", v9);

  v14 = objc_msgSend_allHTTPHeaderFields(v3, v11, v12, v13);
  v17 = objc_msgSend_objectForKey_(v14, v15, @"debug-communication-code", v16);

  if (objc_msgSend_length(v10, v18, v19, v20) || objc_msgSend_length(v17, v21, v22, v23))
  {
    v24 = dispatch_queue_create("com.apple.ap.fake-response", 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1BAF06090;
    block[3] = &unk_1E7F1CCE8;
    v28 = v10;
    v29 = v3;
    v30 = v17;
    dispatch_async(v24, block);

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end