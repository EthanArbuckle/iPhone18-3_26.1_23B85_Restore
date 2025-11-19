@interface APSettingsStorageServer
+ (id)baseServerURL;
- (APSettingsStorageServer)initWithDefaultValues:(id)a3;
- (APSettingsStorageServer)initWithURL:(id)a3 headers:(id)a4 defaultValues:(id)a5;
- (id)valueForKey:(id)a3 error:(id *)a4;
- (void)fetchNewServerData;
- (void)retrieveServerData;
- (void)setValue:(id)a3 forKey:(id)a4 error:(id *)a5;
@end

@implementation APSettingsStorageServer

+ (id)baseServerURL
{
  if ((objc_msgSend_isAppleInternalInstall(APSystemInternal, a2, v2, v3) & 1) == 0)
  {
    v13 = @"https://iadsdk.apple.com/adserver/";
    v10 = 0;
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"%@%@", v18, v13, @"2/client/configuration");
    goto LABEL_15;
  }

  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = objc_msgSend_initWithSuiteName_(v4, v5, @"com.apple.AdPlatforms", v6);
  v10 = objc_msgSend_stringForKey_(v7, v8, @"ServerEnvironment", v9);

  v13 = @"https://iadsdk.apple.com/adserver/";
  if (v10 && (objc_msgSend_isEqualToString_(v10, v11, @"Production", v12) & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v10, v11, @"QE1", v12))
    {
      v16 = kAPServerEnvironmentQE1BaseURL;
LABEL_13:
      v23 = *v16;

      v13 = v23;
      goto LABEL_14;
    }

    if (objc_msgSend_isEqualToString_(v10, v14, @"QE2", v15))
    {
      v16 = kAPServerEnvironmentQE2BaseURL;
      goto LABEL_13;
    }

    if (objc_msgSend_isEqualToString_(v10, v19, @"QE3", v20))
    {
      v16 = kAPServerEnvironmentQE3BaseURL;
      goto LABEL_13;
    }

    if (objc_msgSend_isEqualToString_(v10, v21, @"QE4", v22))
    {
      v16 = kAPServerEnvironmentQE4BaseURL;
      goto LABEL_13;
    }
  }

LABEL_14:
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"%@%@", v12, v13, @"2/client/configuration");
  v24 = LABEL_15:;
  v27 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v25, v24, v26);

  return v27;
}

- (APSettingsStorageServer)initWithDefaultValues:(id)a3
{
  v4 = APLogForCategory(0x2FuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BADC1000, v4, OS_LOG_TYPE_INFO, "This is a no-op. Please use initWithURL:headers:defaultValues: instead.", v6, 2u);
  }

  return self;
}

- (void)fetchNewServerData
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_url(self, a2, v2, v3);
  v9 = objc_msgSend_absoluteString(v5, v6, v7, v8);
  v13 = objc_msgSend_sha256hash(v9, v10, v11, v12);
  v17 = objc_msgSend_now(MEMORY[0x1E695DF00], v14, v15, v16);
  v23 = objc_msgSend_lastUpdate(self, v18, v19, v20);
  if (v23)
  {
    goto LABEL_2;
  }

  v27 = [APStorageManager alloc];
  v30 = objc_msgSend_initWithPathPrefix_(v27, v28, @"s/s", v29);
  v65 = 0;
  v32 = objc_msgSend_fileExistsAtPath_error_(v30, v31, v13, &v65);
  v33 = v65;
  v35 = v33;
  if ((v32 & 1) == 0)
  {

    v23 = 0;
    goto LABEL_12;
  }

  v64 = v33;
  v23 = objc_msgSend_lastModifiedDateForFileAtPath_error_(v30, v34, v13, &v64);
  v36 = v64;

  if (v36)
  {
    v37 = APLogForCategory(0x2FuLL);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v36;
      _os_log_impl(&dword_1BADC1000, v37, OS_LOG_TYPE_ERROR, "Error getting timestamp of file %{private}@. Error: %{public}@", buf, 0x16u);
    }
  }

  if (!v23)
  {
LABEL_12:
    v38 = objc_opt_class();
    objc_sync_enter(v38);
    if (qword_1EDBA41D8)
    {
      if (objc_msgSend_containsObject_(qword_1EDBA41D8, v39, v5, v40))
      {
        objc_sync_exit(v38);

        goto LABEL_18;
      }

      objc_msgSend_addObject_(qword_1EDBA41D8, v41, v5, v42);
    }

    else
    {
      v43 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFA8], v39, v5, v40);
      v44 = qword_1EDBA41D8;
      qword_1EDBA41D8 = v43;
    }

    objc_sync_exit(v38);

    v48 = objc_msgSend_headers(self, v45, v46, v47);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v67 = sub_1BAF01124;
    v68 = sub_1BAF01134;
    v52 = objc_msgSend_sharedAPNetworkClient(APNetworkClient, v49, v50, v51);
    v69 = objc_msgSend_temporarySessionForDaemon(v52, v53, v54, v55);

    v56 = *(*&buf[8] + 40);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = sub_1BAF0113C;
    v60[3] = &unk_1E7F1CC00;
    v60[4] = self;
    v61 = v13;
    v62 = v5;
    v63 = buf;
    v58 = objc_msgSend_GET_headers_withCompletionHandler_(v56, v57, v62, v48, v60);

    _Block_object_dispose(buf, 8);
    goto LABEL_18;
  }

LABEL_2:
  objc_msgSend_timeIntervalSinceDate_(v17, v21, v23, v22);
  if (v26 > 3600.0)
  {
    goto LABEL_12;
  }

  objc_msgSend_setDidFetchFromServer_(self, v24, 0, v25);
LABEL_18:

  v59 = *MEMORY[0x1E69E9840];
}

- (void)retrieveServerData
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [APStorageManager alloc];
  v6 = objc_msgSend_initWithPathPrefix_(v3, v4, @"s/s", v5);
  v10 = objc_msgSend_url(self, v7, v8, v9);
  v14 = objc_msgSend_absoluteString(v10, v11, v12, v13);
  v18 = objc_msgSend_sha256hash(v14, v15, v16, v17);
  v39 = 0;
  v20 = objc_msgSend_fileExistsAtPath_error_(v6, v19, v18, &v39);
  v21 = v39;
  if (v21)
  {
    v25 = v21;
    v26 = APLogForCategory(0x2FuLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v41 = v18;
      v42 = 2114;
      v43 = v25;
      _os_log_impl(&dword_1BADC1000, v26, OS_LOG_TYPE_ERROR, "Error determining status of file %{private}@. Error: %{public}@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  if (v20)
  {
    v26 = objc_msgSend_lock(self, v22, v23, v24);
    objc_msgSend_lock(v26, v27, v28, v29);
    v38 = 0;
    v31 = objc_msgSend_objectStoredAtPath_error_(v6, v30, v18, &v38);
    v25 = v38;
    objc_msgSend_setServerData_(self, v32, v31, v33);

    objc_msgSend_unlock(v26, v34, v35, v36);
LABEL_6:
  }

  objc_msgSend_fetchNewServerData(self, v22, v23, v24);

  v37 = *MEMORY[0x1E69E9840];
}

- (APSettingsStorageServer)initWithURL:(id)a3 headers:(id)a4 defaultValues:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = APSettingsStorageServer;
  v12 = [(APSettingsStorageServer *)&v28 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, a3);
    objc_storeStrong(&v13->_headers, a4);
    v17 = objc_msgSend_copy(v11, v14, v15, v16);
    defaults = v13->_defaults;
    v13->_defaults = v17;

    v13->_didFetchFromServer = 1;
    v19 = [APUnfairLock alloc];
    v22 = objc_msgSend_initWithOptions_(v19, v20, 1, v21);
    lock = v13->_lock;
    v13->_lock = v22;

    objc_msgSend_retrieveServerData(v13, v24, v25, v26);
  }

  return v13;
}

- (id)valueForKey:(id)a3 error:(id *)a4
{
  v5 = objc_msgSend_lastNamespacedComponent(a3, a2, a3, a4);
  v9 = objc_msgSend_lock(self, v6, v7, v8);
  objc_msgSend_lock(v9, v10, v11, v12);
  v16 = objc_msgSend_serverData(self, v13, v14, v15);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v21 = objc_msgSend_serverData(self, v18, v19, v20);
    v24 = objc_msgSend_objectForKey_(v21, v22, v5, v23);

    objc_msgSend_unlock(v9, v25, v26, v27);
    if (v24)
    {
      goto LABEL_9;
    }
  }

  else
  {
    objc_msgSend_unlock(v9, v18, v19, v20);
  }

  v31 = objc_msgSend_defaults(self, v28, v29, v30);
  v24 = objc_msgSend_objectForKey_(v31, v32, v5, v33);

  if (!v24)
  {
    v34 = APLogForCategory(0x2FuLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_impl(&dword_1BADC1000, v34, OS_LOG_TYPE_ERROR, "Request for server data not complete and no default values provided. Try again later.", v36, 2u);
    }

    v24 = 0;
  }

LABEL_9:

  return v24;
}

- (void)setValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Settings with server storage is read only. You should not be trying to overwrite server provided data. Now generating simulated crash.", a4, a5);
  APSimulateCrash(5, v5, 0);
}

@end