@interface APConfigurationRequester
- (APConfigurationRequester)initWithStorefront:(id)a3;
- (BOOL)_mockConfigurationServerResponseIfNeeded;
- (BOOL)_testingFlag;
- (id)_configurationServerURL;
- (id)_queryItems;
- (id)_requestHost;
- (int64_t)_configurationVersion;
- (void)_httpResponse:(id)a3 session:(id)a4;
- (void)_resetConfigurationForStorefrontChangeIfNeeded;
- (void)_sendCoreAnalyticsWithUpdateStatus:(int64_t)a3 version:(int64_t)a4;
- (void)cancelRequest;
- (void)requestConfigurationWithCompletionHandler:(id)a3;
@end

@implementation APConfigurationRequester

- (APConfigurationRequester)initWithStorefront:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = APConfigurationRequester;
  v6 = [(APConfigurationRequester *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storefront, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_create("com.apple.ap.configurationsystem.response", v9);
    responseQueue = v7->_responseQueue;
    v7->_responseQueue = v10;

    v7->_cancelled = 0;
    v12 = [APConfigurationStorefrontValidator alloc];
    v15 = objc_msgSend_configSystemDirectoryPath(APConfigurationMediator, v13, v14);
    v17 = objc_msgSend_initWithStorefront_configurationPath_(v12, v16, v5, v15);
    storefrontValidator = v7->_storefrontValidator;
    v7->_storefrontValidator = v17;
  }

  return v7;
}

- (id)_requestHost
{
  v2 = @"device-config.pcms.apple.com";
  if (objc_msgSend_isAppleInternalInstall(MEMORY[0x1E69861D0], v3, v4))
  {
    v5 = objc_alloc(MEMORY[0x1E695E000]);
    v7 = objc_msgSend_initWithSuiteName_(v5, v6, *MEMORY[0x1E6986180]);
    v9 = objc_msgSend_stringForKey_(v7, v8, @"configSystemHostEnvironment");
    v11 = v9;
    if (v9)
    {
      if (objc_msgSend_isEqualToString_(v9, v10, @"STG"))
      {
        v13 = kAPConfigSystemURLSTGHost;
LABEL_7:
        v14 = *v13;

        v2 = v14;
        goto LABEL_8;
      }

      if (objc_msgSend_isEqualToString_(v11, v12, @"RVW"))
      {
        v13 = kAPConfigSystemURLRVWHost;
        goto LABEL_7;
      }
    }

LABEL_8:
  }

  return v2;
}

- (void)requestConfigurationWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_msgSend__resetConfigurationForStorefrontChangeIfNeeded(self, v5, v6);
  v9 = objc_msgSend_copy(v4, v7, v8);

  objc_msgSend_setCompletionHandler_(self, v10, v9);
  if ((objc_msgSend__mockConfigurationServerResponseIfNeeded(self, v11, v12) & 1) == 0)
  {
    v15 = objc_msgSend_responseQueue(self, v13, v14);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1CA1D31B0;
    block[3] = &unk_1E8368C98;
    block[4] = self;
    dispatch_async(v15, block);
  }
}

- (void)cancelRequest
{
  v4 = objc_msgSend_responseQueue(self, a2, v2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1CA1D3520;
  block[3] = &unk_1E8368C98;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_httpResponse:(id)a3 session:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v8 = objc_msgSend_valid(v5, v6, v7);
  v9 = APLogForCategory();
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_msgSend_responseStatusCode(v5, v22, v23);
      v27 = objc_msgSend_responseError(v5, v25, v26);
      *v36 = 134218242;
      *&v36[4] = v24;
      *&v36[12] = 2114;
      *&v36[14] = v27;
      _os_log_impl(&dword_1CA1CE000, v10, OS_LOG_TYPE_ERROR, "Received error request. Status Code: %ld Error: %{public}@", v36, 0x16u);
    }

    v30 = objc_msgSend__configurationVersion(self, v28, v29);
    objc_msgSend__sendCoreAnalyticsWithUpdateStatus_version_(self, v31, 1512, v30);
    goto LABEL_16;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v36 = 0;
    _os_log_impl(&dword_1CA1CE000, v10, OS_LOG_TYPE_INFO, "Received response from server.", v36, 2u);
  }

  if (objc_msgSend_responseStatusCode(v5, v11, v12) != 200)
  {
    if (objc_msgSend_responseStatusCode(v5, v13, v14) != 204)
    {
LABEL_16:
      v16 = 0;
      goto LABEL_17;
    }

    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_msgSend__configurationVersion(self, v32, v33);
      *v36 = 134217984;
      *&v36[4] = v34;
      v18 = "Configuration system up to date version %lu.";
      v19 = v17;
      v20 = OS_LOG_TYPE_DEFAULT;
      v21 = 12;
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  v16 = objc_msgSend_responseBody(v5, v13, v14);
  if (!v16)
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      v18 = "Error: Response empty, no config file.";
      v19 = v17;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 2;
LABEL_14:
      _os_log_impl(&dword_1CA1CE000, v19, v20, v18, v36, v21);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

LABEL_17:
  objc_msgSend__runCompletionHandlerWithSuccess_data_(self, v15, v8, v16, *v36);

  v35 = *MEMORY[0x1E69E9840];
}

- (BOOL)_testingFlag
{
  if (!objc_msgSend_isAppleInternalInstall(MEMORY[0x1E69861D0], a2, v2))
  {
    return 0;
  }

  v3 = objc_alloc(MEMORY[0x1E695E000]);
  v5 = objc_msgSend_initWithSuiteName_(v3, v4, *MEMORY[0x1E6986180]);
  v7 = objc_msgSend_objectForKey_(v5, v6, @"APConfigurationSystem.testEnvironment");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v13 = objc_msgSend_BOOLValue(v10, v11, v12);
  }

  else
  {
    v10 = MEMORY[0x1E695E110];
    v13 = objc_msgSend_BOOLValue(MEMORY[0x1E695E110], v8, v9);
  }

  v14 = v13;

  return (v14 & 1) != 0;
}

- (int64_t)_configurationVersion
{
  v2 = [APVersionHelper alloc];
  v3 = objc_alloc_init(APVersionData);
  v5 = objc_msgSend_initWithDatasource_(v2, v4, v3);

  v8 = objc_msgSend_systemVersion(v5, v6, v7);
  return v8;
}

- (id)_queryItems
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend__testingFlag(self, v4, v5))
  {
    v8 = objc_msgSend_queryItemWithName_value_(MEMORY[0x1E696AF60], v6, @"t", @"true");
    objc_msgSend_addObject_(v3, v9, v8);
  }

  if (objc_msgSend_isAppleInternalInstall(MEMORY[0x1E69861D0], v6, v7))
  {
    v12 = objc_msgSend_queryItemWithName_value_(MEMORY[0x1E696AF60], v10, @"ib", @"true");
    objc_msgSend_addObject_(v3, v13, v12);
  }

  v57 = objc_msgSend_locale(MEMORY[0x1E69861C8], v10, v11);
  v56 = objc_msgSend_queryItemWithName_value_(MEMORY[0x1E696AF60], v14, @"l", v57);
  objc_msgSend_addObject_(v3, v15, v56);
  v16 = MEMORY[0x1E696AF60];
  v19 = objc_msgSend_storefront(self, v17, v18);
  v55 = objc_msgSend_queryItemWithName_value_(v16, v20, @"sf", v19);

  objc_msgSend_addObject_(v3, v21, v55);
  v24 = objc_msgSend_modelType(MEMORY[0x1E69861C8], v22, v23);
  v26 = objc_msgSend_queryItemWithName_value_(MEMORY[0x1E696AF60], v25, @"dc", v24);
  objc_msgSend_addObject_(v3, v27, v26);
  v30 = objc_msgSend_shortBuildVersion(MEMORY[0x1E69861C8], v28, v29);
  v32 = objc_msgSend_queryItemWithName_value_(MEMORY[0x1E696AF60], v31, @"b", v30);
  objc_msgSend_addObject_(v3, v33, v32);
  v36 = objc_msgSend_osIdentifier(MEMORY[0x1E69861C8], v34, v35);
  v38 = objc_msgSend_queryItemWithName_value_(MEMORY[0x1E696AF60], v37, @"os", v36);
  objc_msgSend_addObject_(v3, v39, v38);
  v42 = objc_msgSend__configurationVersion(self, v40, v41);
  v43 = MEMORY[0x1E696AF60];
  v45 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v44, v42);
  v48 = objc_msgSend_stringValue(v45, v46, v47);
  v50 = objc_msgSend_queryItemWithName_value_(v43, v49, @"v", v48);

  objc_msgSend_addObject_(v3, v51, v50);
  v53 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v52, v3);

  return v53;
}

- (void)_sendCoreAnalyticsWithUpdateStatus:(int64_t)a3 version:(int64_t)a4
{
  v20[3] = *MEMORY[0x1E69E9840];
  v19[0] = @"ClientConfigVersion";
  v6 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, a4);
  v20[0] = v6;
  v19[1] = @"StatusCode";
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v7, a3);
  v20[1] = v8;
  v19[2] = @"TestingFlag";
  v9 = MEMORY[0x1E696AD98];
  v12 = objc_msgSend__testingFlag(self, v10, v11);
  v14 = objc_msgSend_numberWithBool_(v9, v13, v12);
  v20[2] = v14;
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v20, v19, 3);

  objc_msgSend_sendEvent_customPayload_(MEMORY[0x1E6986188], v17, @"ConfigurationSystemRequest", v16);
  v18 = *MEMORY[0x1E69E9840];
}

- (id)_configurationServerURL
{
  v3 = objc_alloc_init(MEMORY[0x1E696AF20]);
  objc_msgSend_setScheme_(v3, v4, @"https");
  v7 = objc_msgSend__requestHost(self, v5, v6);
  objc_msgSend_setHost_(v3, v8, v7);

  objc_msgSend_setPath_(v3, v9, @"/transform-service/1/config");
  v12 = objc_msgSend__queryItems(self, v10, v11);
  objc_msgSend_setQueryItems_(v3, v13, v12);

  v16 = objc_msgSend_URL(v3, v14, v15);

  return v16;
}

- (void)_resetConfigurationForStorefrontChangeIfNeeded
{
  v3 = objc_msgSend_storefrontValidator(self, a2, v2);
  v6 = objc_msgSend_configurationNeedsReset(v3, v4, v5);

  if (v6)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1CA1CE000, v7, OS_LOG_TYPE_INFO, "Storefront change detected, reseting configuration.", v11, 2u);
    }

    v8 = objc_alloc_init(APConfigurationStorage);
    objc_msgSend_resetConfigurationSystem(v8, v9, v10);
  }
}

- (BOOL)_mockConfigurationServerResponseIfNeeded
{
  v20 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_isAppleInternalInstall(MEMORY[0x1E69861D0], a2, v2))
  {
    goto LABEL_7;
  }

  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v6 = objc_msgSend_initWithSuiteName_(v4, v5, *MEMORY[0x1E6986180]);
  v8 = objc_msgSend_stringForKey_(v6, v7, @"configurationSystemPayloadOverride");
  if (!objc_msgSend_length(v8, v9, v10))
  {

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v11 = APLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    v19 = v8;
    _os_log_impl(&dword_1CA1CE000, v11, OS_LOG_TYPE_INFO, "Using canned data: %@", &v18, 0xCu);
  }

  v13 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v12, v8);
  v14 = 1;
  objc_msgSend__runCompletionHandlerWithSuccess_data_(self, v15, 1, v13);

LABEL_8:
  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

@end