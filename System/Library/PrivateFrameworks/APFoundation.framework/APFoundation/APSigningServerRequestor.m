@interface APSigningServerRequestor
- (APSigningServerRequestor)init;
- (BOOL)_retrieveResponse:(void *)a3 andLength:(unsigned int *)a4 fromData:(id)a5 error:(id *)a6;
- (id)deviceModel;
- (id)systemNameAndVersion;
- (id)userAgentString;
- (void)sendRequest:(id)a3 requestType:(int64_t)a4 completionHandler:(id)a5;
- (void)sendRequestForData:(id)a3 requestType:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation APSigningServerRequestor

- (APSigningServerRequestor)init
{
  v23.receiver = self;
  v23.super_class = APSigningServerRequestor;
  v5 = [(APSigningServerRequestor *)&v23 init];
  if (v5)
  {
    v6 = objc_msgSend_ephemeralSessionConfiguration(MEMORY[0x1E696AF80], v2, v3, v4);
    v9 = objc_msgSend_sessionWithConfiguration_(MEMORY[0x1E696AF78], v7, v6, v8);
    objc_msgSend_setSession_(v5, v10, v9, v11);

    v15 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v12, v13, v14);
    v19 = objc_msgSend_hash(v15, v16, v17, v18);
    objc_msgSend_setServerRequestorId_(v5, v20, v19, v21);
  }

  return v5;
}

- (void)sendRequestForData:(id)a3 requestType:(int64_t)a4 completionHandler:(id)a5
{
  v77[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v10, v11, v12))
  {
    v15 = objc_alloc(MEMORY[0x1E695E000]);
    v18 = objc_msgSend_initWithSuiteName_(v15, v16, @"com.apple.AdPlatforms", v17);
    v21 = objc_msgSend_stringForKey_(v18, v19, @"mockFPDIServerUrl", v20);
    if (objc_msgSend_length(v21, v22, v23, v24))
    {
      v25 = v21;
    }

    else
    {
      v25 = @"https://sas.pcms.apple.com/sas/v1/auth/";
    }
  }

  else
  {
    v25 = @"https://sas.pcms.apple.com/sas/v1/auth/";
  }

  if (a4 == 1301)
  {
    v26 = @"init";
  }

  else
  {
    v26 = @"setup";
  }

  if (a4 == 1301)
  {
    v27 = @"x-apple-auth-init-token";
  }

  else
  {
    v27 = @"x-apple-auth-setup-token";
  }

  v28 = objc_msgSend_stringByAppendingString_(v25, v13, v26, v14);

  v29 = objc_alloc(MEMORY[0x1E696AD68]);
  v32 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v30, v28, v31);
  v34 = objc_msgSend_initWithURL_cachePolicy_timeoutInterval_(v29, v33, v32, 0, 10.0);

  v35 = MEMORY[0x1E696AEC0];
  v39 = objc_msgSend_serverRequestorId(self, v36, v37, v38);
  v42 = objc_msgSend_stringWithFormat_(v35, v40, @"%lu", v41, v39);
  v76[0] = v27;
  v76[1] = @"x-apple-auth-request-id";
  v77[0] = v8;
  v77[1] = v42;
  v76[2] = @"user-agent";
  v46 = objc_msgSend_userAgentString(self, v43, v44, v45);
  v77[2] = v46;
  v48 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v47, v77, v76, 3);

  objc_msgSend_setAllHTTPHeaderFields_(v34, v49, v48, v50);
  objc_msgSend_setHTTPMethod_(v34, v51, @"GET", v52);
  if (!objc_msgSend_isAppleInternalInstall(APSystemInternal, v53, v54, v55))
  {
    goto LABEL_21;
  }

  v71 = v8;
  v57 = objc_alloc_init(APSigningAuthoritySettings);
  v61 = v57;
  if (a4 == 1301)
  {
    v62 = objc_msgSend_contextServerInitDelay(v57, v58, v59, v60);
  }

  else
  {
    if (a4 != 1302)
    {
LABEL_20:

      v8 = v71;
LABEL_21:
      objc_msgSend_sendRequest_requestType_completionHandler_(self, v56, v34, a4, v9);
      goto LABEL_22;
    }

    v62 = objc_msgSend_contextServerSetupDelay(v57, v58, v59, v60);
  }

  v66 = v62;
  v67 = objc_msgSend_unsignedIntValue(v62, v63, v64, v65);

  if (!v67)
  {
    goto LABEL_20;
  }

  v68 = dispatch_time(0, 1000000000 * v67);
  v69 = dispatch_queue_create("com.apple.ap.signingserverrequestor.delayqueue", 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1BAF1A574;
  block[3] = &unk_1E7F1D178;
  block[4] = self;
  v73 = v34;
  v75 = a4;
  v74 = v9;
  dispatch_after(v68, v69, block);

  v8 = v71;
LABEL_22:

  v70 = *MEMORY[0x1E69E9840];
}

- (void)sendRequest:(id)a3 requestType:(int64_t)a4 completionHandler:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349056;
    v36 = a4;
    _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_DEBUG, "Attempt to send network request of type %{public}ld.", buf, 0xCu);
  }

  v14 = objc_msgSend_date(MEMORY[0x1E695DF00], v11, v12, v13);
  v18 = objc_msgSend_session(self, v15, v16, v17);
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = sub_1BAF1A718;
  v30 = &unk_1E7F1D1A0;
  v31 = v14;
  v32 = self;
  v33 = v8;
  v34 = a4;
  v19 = v8;
  v20 = v14;
  v22 = objc_msgSend_dataTaskWithRequest_completionHandler_(v18, v21, v9, &v27);

  objc_msgSend_resume(v22, v23, v24, v25, v27, v28, v29, v30);
  v26 = *MEMORY[0x1E69E9840];
}

- (BOOL)_retrieveResponse:(void *)a3 andLength:(unsigned int *)a4 fromData:(id)a5 error:(id *)a6
{
  v46[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696AEC0];
  v10 = a5;
  v11 = [v9 alloc];
  v13 = objc_msgSend_initWithData_encoding_(v11, v12, v10, 4);

  objc_opt_class();
  v16 = v13;
  if (!v16)
  {
    if (a6)
    {
      v28 = MEMORY[0x1E696ABC0];
      v45 = @"reason";
      v29 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%@ is nil", v15, @"Encoded result string");
      v46[0] = v29;
      v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v46, &v45, 1);
      *a6 = objc_msgSend_errorWithDomain_code_userInfo_(v28, v32, @"com.apple.ap.signingServerRequestor", 6200, v31);
LABEL_8:
    }

LABEL_9:

    v27 = 0;
    goto LABEL_10;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a6)
    {
      v33 = MEMORY[0x1E696ABC0];
      v43 = @"reason";
      v34 = MEMORY[0x1E696AEC0];
      v35 = objc_opt_class();
      v29 = NSStringFromClass(v35);
      v31 = objc_msgSend_stringWithFormat_(v34, v36, @"%@ is of the wrong type (%@)", v37, @"Encoded result string", v29);
      v44 = v31;
      v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v38, &v44, &v43, 1);
      *a6 = objc_msgSend_errorWithDomain_code_userInfo_(v33, v40, @"com.apple.ap.signingServerRequestor", 6200, v39);

      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v17 = objc_alloc(MEMORY[0x1E695DEF0]);
  v19 = objc_msgSend_initWithBase64EncodedString_options_(v17, v18, v16, 0);
  v20 = v19;
  *a3 = objc_msgSend_bytes(v20, v21, v22, v23);
  *a4 = objc_msgSend_length(v19, v24, v25, v26);

  v27 = 1;
LABEL_10:

  v41 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)userAgentString
{
  v5 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, v2, v3);
  v9 = objc_msgSend_bundleIdentifier(v5, v6, v7, v8);

  v10 = MEMORY[0x1E696AEC0];
  v14 = objc_msgSend_deviceModel(self, v11, v12, v13);
  v18 = objc_msgSend_systemNameAndVersion(self, v15, v16, v17);
  v21 = objc_msgSend_stringWithFormat_(v10, v19, @"%@ %@; %@", v20, v14, v18, v9);;

  return v21;
}

- (id)systemNameAndVersion
{
  v16 = 0uLL;
  v4 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, v2, v3);
  v8 = v4;
  if (v4)
  {
    objc_msgSend_operatingSystemVersion(v4, v5, v6, v7);
  }

  else
  {
    v16 = 0uLL;
  }

  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"%ld.%ld.%ld", v10, v16, 0);
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"%@ %@", v13, @"iOS", v11);

  return v14;
}

- (id)deviceModel
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (sysctlbyname("hw.machine", 0, &v17, 0, 0))
  {
    v2 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *__error();
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 136446722;
      v19 = "hw.machine";
      v20 = 1026;
      v21 = v3;
      v22 = 2082;
      v23 = v5;
    }

    v6 = @"unknown";
  }

  else
  {
    v7 = &v16 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (sysctlbyname("hw.machine", v7, &v17, 0, 0))
    {
      v10 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *__error();
        v12 = __error();
        v13 = strerror(*v12);
        *buf = 136446722;
        v19 = "hw.machine";
        v20 = 1026;
        v21 = v11;
        v22 = 2080;
        v23 = v13;
      }

      v6 = @"unknown";
    }

    else
    {
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, v7, v9);
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

@end