@interface AKAppleIDSession
- (AKAppleIDSession)init;
- (AKAppleIDSession)initWithCoder:(id)coder;
- (AKAppleIDSession)initWithIdentifier:(id)identifier;
- (BOOL)_canHandleAnisetteURLResponse:(id)response;
- (BOOL)shouldDenyRequestForURL:(id)l task:(id)task;
- (id)_generateAppleIDHeadersForRequest:(id)request error:(id *)error;
- (id)_genericAppleIDHeadersDictionaryForRequest:(id)request;
- (id)_nativeAnisetteController;
- (id)_pairedDeviceAnisetteController;
- (id)appleIDHeadersForRequest:(id)request;
- (id)copyWithZone:(_NSZone *)zone;
- (id)relevantHTTPStatusCodes;
- (void)URLSession:(id)session task:(id)task getAppleIDHeadersForResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task getAppleIDRequestOrHeadersForResponse:(id)response completionHandler:(id)handler;
- (void)_generateAppleIDHeadersForSessionTask:(id)task withCompletion:(id)completion;
- (void)_handleAnisetteReprovisionWithRequestURL:(id)l anisetteController:(id)controller completion:(id)completion;
- (void)_handleAnisetteURLResponse:(id)response forRequest:(id)request withCompletion:(id)completion;
- (void)_handleURLSwitchingResponse:(id)response forRequest:(id)request withCompletion:(id)completion;
- (void)_reportOnRequest:(id)request response:(id)response attestationData:(id)data;
- (void)_resetDeviceIdentityWithCompletion:(id)completion;
- (void)appleIDHeadersForRequest:(id)request completion:(id)completion;
- (void)appleIDHeadersUsingAnisetteWithCompletion:(id)completion;
- (void)appleIDHeadersWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)handleResponse:(id)response forRequest:(id)request shouldRetry:(BOOL *)retry;
@end

@implementation AKAppleIDSession

- (AKAppleIDSession)init
{
  v4 = 0;
  v4 = [(AKAppleIDSession *)self initWithIdentifier:?];
  v3 = MEMORY[0x1E69E5928]();
  objc_storeStrong(&v4, 0);
  return v3;
}

- (id)relevantHTTPStatusCodes
{
  selfCopy = self;
  v3 = a2;
  return [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F07B4F88, &unk_1F07B4FA0, &unk_1F07B4FB8, &unk_1F07B4FD0, &unk_1F07B4FE8, &unk_1F07B5000, &unk_1F07B5018, 0}];
}

- (id)_nativeAnisetteController
{
  [(NSLock *)self->_anisetteControllerLock lock];
  if (!self->_nativeAnisetteController)
  {
    v2 = objc_alloc_init(AKAnisetteProvisioningController);
    nativeAnisetteController = self->_nativeAnisetteController;
    self->_nativeAnisetteController = v2;
    MEMORY[0x1E69E5920](nativeAnisetteController);
  }

  [(NSLock *)self->_anisetteControllerLock unlock];
  v4 = self->_nativeAnisetteController;

  return v4;
}

- (id)_pairedDeviceAnisetteController
{
  [(NSLock *)self->_anisetteControllerLock lock];
  if (!self->_pairedDeviceAnisetteController && self->_pairedDevice)
  {
    v2 = [[AKAnisetteProvisioningController alloc] initForDevice:self->_pairedDevice provider:self->_anisetteDataProvider];
    pairedDeviceAnisetteController = self->_pairedDeviceAnisetteController;
    self->_pairedDeviceAnisetteController = v2;
    MEMORY[0x1E69E5920](pairedDeviceAnisetteController);
  }

  [(NSLock *)self->_anisetteControllerLock unlock];
  v4 = self->_pairedDeviceAnisetteController;

  return v4;
}

- (AKAppleIDSession)initWithIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v3 = selfCopy;
  selfCopy = 0;
  v10.receiver = v3;
  v10.super_class = AKAppleIDSession;
  selfCopy = [(AKAppleIDSession *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] copy];
    serviceID = selfCopy->_serviceID;
    selfCopy->_serviceID = v4;
    MEMORY[0x1E69E5920](serviceID);
    v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
    anisetteControllerLock = selfCopy->_anisetteControllerLock;
    selfCopy->_anisetteControllerLock = v6;
    MEMORY[0x1E69E5920](anisetteControllerLock);
    [(NSLock *)selfCopy->_anisetteControllerLock setName:@"AKAnisetteControllerLock"];
  }

  v9 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (AKAppleIDSession)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v14.receiver = v3;
  v14.super_class = AKAppleIDSession;
  selfCopy = [(AKAppleIDSession *)&v14 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_serviceID"];
    serviceID = selfCopy->_serviceID;
    selfCopy->_serviceID = v4;
    MEMORY[0x1E69E5920](serviceID);
    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_pairedDevice"];
    pairedDevice = selfCopy->_pairedDevice;
    selfCopy->_pairedDevice = v6;
    MEMORY[0x1E69E5920](pairedDevice);
    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_proxiedAnisetteData"];
    proxiedAnisetteData = selfCopy->_proxiedAnisetteData;
    selfCopy->_proxiedAnisetteData = v8;
    MEMORY[0x1E69E5920](proxiedAnisetteData);
    v10 = objc_alloc_init(MEMORY[0x1E696AD10]);
    anisetteControllerLock = selfCopy->_anisetteControllerLock;
    selfCopy->_anisetteControllerLock = v10;
    MEMORY[0x1E69E5920](anisetteControllerLock);
    [(NSLock *)selfCopy->_anisetteControllerLock setName:@"AKAnisetteControllerLock"];
  }

  v13 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_serviceID forKey:@"_serviceID"];
  [location[0] encodeObject:selfCopy->_pairedDevice forKey:@"_pairedDevice"];
  [location[0] encodeObject:selfCopy->_proxiedAnisetteData forKey:@"_proxiedAnisetteData"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v7[2] = a2;
  v7[1] = zone;
  v7[0] = [[AKAppleIDSession alloc] initWithIdentifier:self->_serviceID];
  objc_storeStrong(v7[0] + 7, selfCopy->_anisetteDataProvider);
  objc_storeStrong(v7[0] + 6, selfCopy->_pairedDevice);
  v3 = [(AKAnisetteData *)selfCopy->_proxiedAnisetteData copy];
  v4 = *(v7[0] + 4);
  *(v7[0] + 4) = v3;
  MEMORY[0x1E69E5920](v4);
  v6 = MEMORY[0x1E69E5928](v7[0]);
  objc_storeStrong(v7, 0);
  return v6;
}

- (BOOL)shouldDenyRequestForURL:(id)l task:(id)task
{
  v27 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v21 = 0;
  objc_storeStrong(&v21, task);
  v12 = +[AKDevice currentDevice];
  isInternalBuild = [v12 isInternalBuild];
  MEMORY[0x1E69E5920](v12);
  if ((isInternalBuild & 1) == 0)
  {
    goto LABEL_14;
  }

  v20 = _AKTrafficLogSubsystem();
  v19 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    absoluteString = [location[0] absoluteString];
    __os_log_helper_16_2_2_8_64_8_66(v26, absoluteString, v21);
    _os_log_debug_impl(&dword_193225000, v20, v19, "Checking for deny listing URL:%@ Task: %{public}@ ...", v26, 0x16u);
    MEMORY[0x1E69E5920](absoluteString);
  }

  objc_storeStrong(&v20, 0);
  v9 = +[AKConfiguration sharedConfiguration];
  v18 = [v9 configurationValueForKey:@"com.apple.authkit.anisette.deny.url"];
  MEMORY[0x1E69E5920](v9);
  if (v18)
  {
    v17 = _AKTrafficLogSubsystem();
    v16 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v25, v18);
      _os_log_debug_impl(&dword_193225000, v17, v16, "Anisette deny url is set: %@", v25, 0xCu);
    }

    objc_storeStrong(&v17, 0);
  }

  v6 = v18;
  absoluteString2 = [location[0] absoluteString];
  v8 = [v6 isEqualToString:?];
  MEMORY[0x1E69E5920](absoluteString2);
  if (v8)
  {
    oslog = _AKTrafficLogSubsystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      absoluteString3 = [location[0] absoluteString];
      __os_log_helper_16_2_2_8_64_8_66(v24, absoluteString3, v21);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Denying Anisette to URL:%@ Task: %{public}@ ...", v24, 0x16u);
      MEMORY[0x1E69E5920](absoluteString3);
    }

    objc_storeStrong(&oslog, 0);
    v23 = 1;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong(&v18, 0);
  if (!v14)
  {
LABEL_14:
    v23 = 0;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v23 & 1;
}

- (void)URLSession:(id)session task:(id)task getAppleIDRequestOrHeadersForResponse:(id)response completionHandler:(id)handler
{
  v51 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v47 = 0;
  objc_storeStrong(&v47, task);
  v46 = 0;
  objc_storeStrong(&v46, response);
  v45 = 0;
  objc_storeStrong(&v45, handler);
  originalRequest = [v47 originalRequest];
  v44 = [originalRequest URL];
  MEMORY[0x1E69E5920](originalRequest);
  if ([(AKAppleIDSession *)selfCopy shouldDenyRequestForURL:v44 task:v47])
  {
    (*(v45 + 2))(v45, 0, 0);
    v43 = 1;
  }

  else if (v46)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = MEMORY[0x1E69E5928](v46);
      if ([v34 statusCode] == 434 || objc_msgSend(v34, "statusCode") == 433)
      {
        v10 = selfCopy;
        v9 = v34;
        originalRequest2 = [v47 originalRequest];
        v25 = MEMORY[0x1E69E9820];
        v26 = -1073741824;
        v27 = 0;
        v28 = __92__AKAppleIDSession_URLSession_task_getAppleIDRequestOrHeadersForResponse_completionHandler___block_invoke_58;
        v29 = &unk_1E73D7CD0;
        v30 = MEMORY[0x1E69E5928](v44);
        v31 = MEMORY[0x1E69E5928](v47);
        v32 = MEMORY[0x1E69E5928](selfCopy);
        v33 = MEMORY[0x1E69E5928](v45);
        [(AKAppleIDSession *)v10 _handleAnisetteURLResponse:v9 forRequest:originalRequest2 withCompletion:&v25];
        MEMORY[0x1E69E5920](originalRequest2);
        objc_storeStrong(&v33, 0);
        objc_storeStrong(&v32, 0);
        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v30, 0);
      }

      else if ([v34 statusCode] == 435)
      {
        v7 = selfCopy;
        v6 = v34;
        originalRequest3 = [v47 originalRequest];
        v18 = MEMORY[0x1E69E9820];
        v19 = -1073741824;
        v20 = 0;
        v21 = __92__AKAppleIDSession_URLSession_task_getAppleIDRequestOrHeadersForResponse_completionHandler___block_invoke_2;
        v22 = &unk_1E73D7CF8;
        v23 = MEMORY[0x1E69E5928](v44);
        v24 = MEMORY[0x1E69E5928](v45);
        [(AKAppleIDSession *)v7 _handleURLSwitchingResponse:v6 forRequest:originalRequest3 withCompletion:&v18];
        MEMORY[0x1E69E5920](originalRequest3);
        objc_storeStrong(&v24, 0);
        objc_storeStrong(&v23, 0);
      }

      objc_storeStrong(&v34, 0);
      v43 = 0;
    }

    else
    {
      v36 = _AKTrafficLogSubsystem();
      v35 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_66(v50, v44, v47);
        _os_log_debug_impl(&dword_193225000, v36, v35, "Not going to do anything with non-HTTP response from URL: %@ Task: %{public}@.", v50, 0x16u);
      }

      objc_storeStrong(&v36, 0);
      (*(v45 + 2))(v45, 0, 0);
      v43 = 1;
    }
  }

  else
  {
    v13 = selfCopy;
    v12 = v47;
    v37 = MEMORY[0x1E69E9820];
    v38 = -1073741824;
    v39 = 0;
    v40 = __92__AKAppleIDSession_URLSession_task_getAppleIDRequestOrHeadersForResponse_completionHandler___block_invoke;
    v41 = &unk_1E73D7CA8;
    v42 = MEMORY[0x1E69E5928](v45);
    [(AKAppleIDSession *)v13 _generateAppleIDHeadersForSessionTask:v12 withCompletion:&v37];
    v43 = 1;
    objc_storeStrong(&v42, 0);
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __92__AKAppleIDSession_URLSession_task_getAppleIDRequestOrHeadersForResponse_completionHandler___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __92__AKAppleIDSession_URLSession_task_getAppleIDRequestOrHeadersForResponse_completionHandler___block_invoke_58(uint64_t *a1, char a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v13 = a2;
  location[1] = a1;
  if (a2)
  {
    location[0] = _AKTrafficLogSubsystem();
    v11 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_66(v15, a1[4], a1[5]);
      _os_log_debug_impl(&dword_193225000, location[0], v11, "Trying to get new Anisette headers to retry request for URL:%@ Task: %{public}@ ...", v15, 0x16u);
    }

    objc_storeStrong(location, 0);
    v3 = a1[6];
    v2 = a1[5];
    v5 = MEMORY[0x1E69E9820];
    v6 = -1073741824;
    v7 = 0;
    v8 = __92__AKAppleIDSession_URLSession_task_getAppleIDRequestOrHeadersForResponse_completionHandler___block_invoke_59;
    v9 = &unk_1E73D7CA8;
    v10 = MEMORY[0x1E69E5928](a1[7]);
    [v3 _generateAppleIDHeadersForSessionTask:v2 withCompletion:&v5];
    objc_storeStrong(&v10, 0);
  }

  else
  {
    (*(a1[7] + 16))();
  }

  *MEMORY[0x1E69E9840];
}

void __92__AKAppleIDSession_URLSession_task_getAppleIDRequestOrHeadersForResponse_completionHandler___block_invoke_59(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __92__AKAppleIDSession_URLSession_task_getAppleIDRequestOrHeadersForResponse_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9[1] = a1;
  if (location[0])
  {
    v9[0] = _AKLogSystem();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      v4 = [location[0] URL];
      __os_log_helper_16_2_2_8_64_8_64(v13, v3, v4);
      _os_log_impl(&dword_193225000, v9[0], v8, "Redirecting urlRequest from URL: %@ to alternate URL: %@", v13, 0x16u);
      MEMORY[0x1E69E5920](v4);
    }

    objc_storeStrong(v9, 0);
    (*(a1[5] + 16))();
  }

  else
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v12, v10);
      _os_log_error_impl(&dword_193225000, v7, OS_LOG_TYPE_ERROR, "Url Switch request failed with error: %@, ignoring URL Switch", v12, 0xCu);
    }

    objc_storeStrong(&v7, 0);
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)session task:(id)task getAppleIDHeadersForResponse:(id)response completionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v36 = 0;
  objc_storeStrong(&v36, task);
  v35 = 0;
  objc_storeStrong(&v35, response);
  v34 = 0;
  objc_storeStrong(&v34, handler);
  originalRequest = [v36 originalRequest];
  v33 = [originalRequest URL];
  MEMORY[0x1E69E5920](originalRequest);
  if ([(AKAppleIDSession *)selfCopy shouldDenyRequestForURL:v33 task:v36])
  {
    (*(v34 + 2))(v34, 0, 0);
    v32 = 1;
  }

  else if (v35)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = selfCopy;
      v6 = v35;
      originalRequest2 = [v36 originalRequest];
      v15 = MEMORY[0x1E69E9820];
      v16 = -1073741824;
      v17 = 0;
      v18 = __83__AKAppleIDSession_URLSession_task_getAppleIDHeadersForResponse_completionHandler___block_invoke_62;
      v19 = &unk_1E73D7CD0;
      v20 = MEMORY[0x1E69E5928](v33);
      v21 = MEMORY[0x1E69E5928](v36);
      v22 = MEMORY[0x1E69E5928](selfCopy);
      v23 = MEMORY[0x1E69E5928](v34);
      [(AKAppleIDSession *)v7 _handleAnisetteURLResponse:v6 forRequest:originalRequest2 withCompletion:&v15];
      MEMORY[0x1E69E5920](originalRequest2);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      v32 = 0;
    }

    else
    {
      v25 = _AKTrafficLogSubsystem();
      v24 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_66(v39, v33, v36);
        _os_log_debug_impl(&dword_193225000, v25, v24, "Not going to do anything with non-HTTP response from URL: %@ Task: %{public}@.", v39, 0x16u);
      }

      objc_storeStrong(&v25, 0);
      (*(v34 + 2))(v34, 0, 0);
      v32 = 1;
    }
  }

  else
  {
    v10 = selfCopy;
    v9 = v36;
    v26 = MEMORY[0x1E69E9820];
    v27 = -1073741824;
    v28 = 0;
    v29 = __83__AKAppleIDSession_URLSession_task_getAppleIDHeadersForResponse_completionHandler___block_invoke;
    v30 = &unk_1E73D7CA8;
    v31 = MEMORY[0x1E69E5928](v34);
    [(AKAppleIDSession *)v10 _generateAppleIDHeadersForSessionTask:v9 withCompletion:&v26];
    v32 = 1;
    objc_storeStrong(&v31, 0);
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __83__AKAppleIDSession_URLSession_task_getAppleIDHeadersForResponse_completionHandler___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __83__AKAppleIDSession_URLSession_task_getAppleIDHeadersForResponse_completionHandler___block_invoke_62(uint64_t *a1, char a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v13 = a2;
  location[1] = a1;
  if (a2)
  {
    location[0] = _AKTrafficLogSubsystem();
    v11 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_66(v15, a1[4], a1[5]);
      _os_log_debug_impl(&dword_193225000, location[0], v11, "Trying to get new Anisette headers to retry request for URL:%@ Task: %{public}@ ...", v15, 0x16u);
    }

    objc_storeStrong(location, 0);
    v3 = a1[6];
    v2 = a1[5];
    v5 = MEMORY[0x1E69E9820];
    v6 = -1073741824;
    v7 = 0;
    v8 = __83__AKAppleIDSession_URLSession_task_getAppleIDHeadersForResponse_completionHandler___block_invoke_63;
    v9 = &unk_1E73D7CA8;
    v10 = MEMORY[0x1E69E5928](a1[7]);
    [v3 _generateAppleIDHeadersForSessionTask:v2 withCompletion:&v5];
    objc_storeStrong(&v10, 0);
  }

  else
  {
    (*(a1[7] + 16))();
  }

  *MEMORY[0x1E69E9840];
}

void __83__AKAppleIDSession_URLSession_task_getAppleIDHeadersForResponse_completionHandler___block_invoke_63(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (id)appleIDHeadersForRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v4 = [(AKAppleIDSession *)selfCopy _generateAppleIDHeadersForRequest:location[0] error:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)appleIDHeadersForRequest:(id)request completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  v8 = 0;
  v6 = 0;
  v5 = [(AKAppleIDSession *)selfCopy _generateAppleIDHeadersForRequest:location[0] error:&v6];
  objc_storeStrong(&v8, v6);
  v7 = v5;
  if (v9)
  {
    (*(v9 + 2))(v9, v7, v8);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)appleIDHeadersWithCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v21 = [(AKAppleIDSession *)selfCopy _genericAppleIDHeadersDictionaryForRequest:0];
  v20 = 0;
  _nativeAnisetteController = [(AKAppleIDSession *)selfCopy _nativeAnisetteController];
  v18 = v20;
  v10 = [_nativeAnisetteController attestationDataForRequestData:0 error:&v18];
  objc_storeStrong(&v20, v18);
  v19 = v10;
  MEMORY[0x1E69E5920](_nativeAnisetteController);
  if (v20)
  {
    v17 = _AKTrafficLogSubsystem();
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v24, v20);
      _os_log_error_impl(&dword_193225000, v17, v16, "Unable to create headers! Error: %@", v24, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 0, v20);
    }

    v15 = 1;
  }

  else
  {
    v14 = _AKTrafficLogSubsystem();
    v13 = 2;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v8 = v14;
      v9 = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_debug_impl(&dword_193225000, v8, v9, "Creating header data from Anisette.", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    [(AKAppleIDSession *)selfCopy _reportOnRequest:0 response:0 attestationData:v19];
    attestationHeaders = [v19 attestationHeaders];
    MEMORY[0x1E69E5920](attestationHeaders);
    if (attestationHeaders)
    {
      v5 = v21;
      attestationHeaders2 = [v19 attestationHeaders];
      [v5 addEntriesFromDictionary:?];
      MEMORY[0x1E69E5920](attestationHeaders2);
    }

    if (location[0])
    {
      v3 = location[0];
      v4 = [v21 copy];
      v3[2]();
      MEMORY[0x1E69E5920](v4);
    }

    v15 = 0;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)appleIDHeadersUsingAnisetteWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v19 = [(AKAppleIDSession *)selfCopy _genericAppleIDHeadersDictionaryForRequest:0];
  v18 = 0;
  _nativeAnisetteController = [(AKAppleIDSession *)selfCopy _nativeAnisetteController];
  v16 = v18;
  v7 = [_nativeAnisetteController anisetteDataWithError:&v16];
  objc_storeStrong(&v18, v16);
  v17 = v7;
  MEMORY[0x1E69E5920](_nativeAnisetteController);
  if (v18)
  {
    v15 = _AKTrafficLogSubsystem();
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v22, v18);
      _os_log_error_impl(&dword_193225000, v15, v14, "Unable to create headers! Error: %@", v22, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 0, v18);
    }

    v13 = 1;
  }

  else
  {
    v12 = _AKTrafficLogSubsystem();
    v11 = 2;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v5 = v12;
      v6 = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_debug_impl(&dword_193225000, v5, v6, "Creating header data from Anisette.", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    if (v17)
    {
      v9 = [MEMORY[0x1E695AC18] ak_anisetteHeadersWithData:v17];
      if (v9)
      {
        [v19 addEntriesFromDictionary:v9];
      }

      objc_storeStrong(&v9, 0);
    }

    if (location[0])
    {
      v3 = location[0];
      v4 = [v19 copy];
      v3[2]();
      MEMORY[0x1E69E5920](v4);
    }

    v13 = 0;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)handleResponse:(id)response forRequest:(id)request shouldRetry:(BOOL *)retry
{
  v31 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v27 = 0;
  objc_storeStrong(&v27, request);
  retryCopy = retry;
  v21 = 0;
  v22 = &v21;
  v23 = 0x20000000;
  v24 = 32;
  v25 = 0;
  if ([(AKAppleIDSession *)selfCopy _canHandleAnisetteURLResponse:location[0]])
  {
    v18 = dispatch_semaphore_create(0);
    v7 = selfCopy;
    v5 = location[0];
    v6 = v27;
    v12 = MEMORY[0x1E69E9820];
    v13 = -1073741824;
    v14 = 0;
    v15 = __58__AKAppleIDSession_handleResponse_forRequest_shouldRetry___block_invoke;
    v16 = &unk_1E73D7D20;
    v17[1] = &v21;
    v17[0] = MEMORY[0x1E69E5928](v18);
    [(AKAppleIDSession *)v7 _handleAnisetteURLResponse:v5 forRequest:v6 withCompletion:&v12];
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    objc_storeStrong(v17, 0);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v20 = _AKTrafficLogSubsystem();
    v19 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(location[0], "statusCode")}];
      v8 = [v27 URL];
      __os_log_helper_16_2_2_8_64_8_64(v30, v9, v8);
      _os_log_debug_impl(&dword_193225000, v20, v19, "No handling for HTTP status code %@ in response for URL %@", v30, 0x16u);
      MEMORY[0x1E69E5920](v8);
      MEMORY[0x1E69E5920](v9);
    }

    objc_storeStrong(&v20, 0);
  }

  if (retryCopy)
  {
    *retryCopy = v22[3] & 1;
  }

  _Block_object_dispose(&v21, 8);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_genericAppleIDHeadersDictionaryForRequest:(id)request
{
  v16[1] = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = 0;
  v11 = [location[0] valueForHTTPHeaderField:@"X-Apple-I-Client-Time"];
  if (v11 && [v11 length])
  {
    v15 = @"X-Apple-I-Client-Time";
    v16[0] = v11;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v4 = v12;
    v12 = v3;
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    ak_clientTimeHeader = [MEMORY[0x1E695AC18] ak_clientTimeHeader];
    v6 = v12;
    v12 = ak_clientTimeHeader;
    MEMORY[0x1E69E5920](v6);
  }

  if ([v12 count])
  {
    [v13 addEntriesFromDictionary:v12];
  }

  ak_localeHeader = [MEMORY[0x1E695AC18] ak_localeHeader];
  if ([ak_localeHeader count])
  {
    [v13 addEntriesFromDictionary:ak_localeHeader];
  }

  ak_timeZoneHeader = [MEMORY[0x1E695AC18] ak_timeZoneHeader];
  if ([ak_timeZoneHeader count])
  {
    [v13 addEntriesFromDictionary:ak_timeZoneHeader];
  }

  v8 = MEMORY[0x1E69E5928](v13);
  objc_storeStrong(&ak_timeZoneHeader, 0);
  objc_storeStrong(&ak_localeHeader, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_generateAppleIDHeadersForRequest:(id)request error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v33[1] = error;
  v33[0] = [(AKAppleIDSession *)selfCopy _genericAppleIDHeadersDictionaryForRequest:location[0]];
  v32 = [location[0] URL];
  v31 = 0;
  v4 = [AKAttestationRequestData alloc];
  v30 = [(AKAttestationRequestData *)v4 initWithRequest:location[0] requiredHeaders:0];
  _nativeAnisetteController = [(AKAppleIDSession *)selfCopy _nativeAnisetteController];
  v28 = v31;
  v13 = [_nativeAnisetteController attestationDataForRequestData:v30 error:&v28];
  objc_storeStrong(&v31, v28);
  v29 = v13;
  MEMORY[0x1E69E5920](_nativeAnisetteController);
  if (v31)
  {
    v27 = _AKTrafficLogSubsystem();
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v39, v32, v31);
      _os_log_error_impl(&dword_193225000, v27, v26, "Unable to append header for request %@! Error: %@", v39, 0x16u);
    }

    objc_storeStrong(&v27, 0);
  }

  else
  {
    v25 = _AKTrafficLogSubsystem();
    v24 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v38, v32);
      _os_log_debug_impl(&dword_193225000, v25, v24, "Passing along decorated request for: %@", v38, 0xCu);
    }

    objc_storeStrong(&v25, 0);
  }

  if (v29)
  {
    [(AKAppleIDSession *)selfCopy _reportOnRequest:location[0] response:0 attestationData:v29];
    v10 = v33[0];
    attestationHeaders = [v29 attestationHeaders];
    [v10 addEntriesFromDictionary:?];
    MEMORY[0x1E69E5920](attestationHeaders);
  }

  if (selfCopy->_proxiedAnisetteData)
  {
    v23 = _AKTrafficLogSubsystem();
    v22 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v37, v32);
      _os_log_debug_impl(&dword_193225000, v23, v22, "Using proxied Anisette data for headers to URL: %@.", v37, 0xCu);
    }

    objc_storeStrong(&v23, 0);
    v21 = [MEMORY[0x1E695AC18] ak_proxiedHeadersForDevice:selfCopy->_pairedDevice anisetteData:selfCopy->_proxiedAnisetteData];
    if (v21)
    {
      [v33[0] addEntriesFromDictionary:v21];
    }

    objc_storeStrong(&v21, 0);
  }

  else
  {
    _pairedDeviceAnisetteController = [(AKAppleIDSession *)selfCopy _pairedDeviceAnisetteController];
    MEMORY[0x1E69E5920](_pairedDeviceAnisetteController);
    if (_pairedDeviceAnisetteController)
    {
      v20 = _AKTrafficLogSubsystem();
      v19 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v36, v32);
        _os_log_debug_impl(&dword_193225000, v20, v19, "Fetching paired device Anisette data for headers to URL: %@.", v36, 0xCu);
      }

      objc_storeStrong(&v20, 0);
      v18 = 0;
      _pairedDeviceAnisetteController2 = [(AKAppleIDSession *)selfCopy _pairedDeviceAnisetteController];
      obj = v18;
      v7 = [_pairedDeviceAnisetteController2 anisetteDataForURLRequest:location[0] error:&obj];
      objc_storeStrong(&v18, obj);
      v17 = v7;
      MEMORY[0x1E69E5920](_pairedDeviceAnisetteController2);
      if (v17)
      {
        v15 = [MEMORY[0x1E695AC18] ak_proxiedHeadersForDevice:selfCopy->_pairedDevice anisetteData:v17];
        if (v15)
        {
          [v33[0] addEntriesFromDictionary:v15];
        }

        objc_storeStrong(&v15, 0);
      }

      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
    }
  }

  v6 = [v33[0] copy];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_generateAppleIDHeadersForSessionTask:(id)task withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  v25 = 0;
  objc_storeStrong(&v25, completion);
  originalRequest = [location[0] originalRequest];
  v17[1] = MEMORY[0x1E69E9820];
  v18 = -1073741824;
  v19 = 0;
  v20 = __73__AKAppleIDSession__generateAppleIDHeadersForSessionTask_withCompletion___block_invoke;
  v21 = &unk_1E73D7D48;
  v22 = MEMORY[0x1E69E5928](v25);
  v23 = MEMORY[0x193B165F0]();
  v4 = [AKAttestationRequestData alloc];
  v17[0] = [(AKAttestationRequestData *)v4 initWithRequest:originalRequest requiredHeaders:0];
  _nativeAnisetteController = [(AKAppleIDSession *)selfCopy _nativeAnisetteController];
  v6 = v17[0];
  v8 = MEMORY[0x1E69E9820];
  v9 = -1073741824;
  v10 = 0;
  v11 = __73__AKAppleIDSession__generateAppleIDHeadersForSessionTask_withCompletion___block_invoke_2;
  v12 = &unk_1E73D7DC0;
  v13 = MEMORY[0x1E69E5928](originalRequest);
  v14 = MEMORY[0x1E69E5928](location[0]);
  v15 = MEMORY[0x1E69E5928](selfCopy);
  v16 = MEMORY[0x1E69E5928](v23);
  [_nativeAnisetteController attestationDataForRequestData:v6 completion:?];
  MEMORY[0x1E69E5920](_nativeAnisetteController);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v17, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&originalRequest, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

void __73__AKAppleIDSession__generateAppleIDHeadersForSessionTask_withCompletion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a1[4])
  {
    v2 = (a1[4] + 16);
    v3 = [location[0] copy];
    (*v2)();
    MEMORY[0x1E69E5920](v3);
  }

  objc_storeStrong(location, 0);
}

void __73__AKAppleIDSession__generateAppleIDHeadersForSessionTask_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v29 = 0;
  objc_storeStrong(&v29, a3);
  v28[1] = a1;
  v28[0] = [*(a1 + 32) URL];
  if (v29)
  {
    v27 = _AKTrafficLogSubsystem();
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_64_8_66_8_64(v33, v28[0], *(a1 + 40), v29);
      _os_log_error_impl(&dword_193225000, v27, v26, "Unable to append header for request %@! Task %{public}@ Error: %@.", v33, 0x20u);
    }

    objc_storeStrong(&v27, 0);
  }

  else
  {
    v25 = _AKTrafficLogSubsystem();
    v24 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_66(v32, v28[0], *(a1 + 40));
      _os_log_debug_impl(&dword_193225000, v25, v24, "Passing along decorated request for URL: %@ Task %{public}@.", v32, 0x16u);
    }

    objc_storeStrong(&v25, 0);
  }

  v23 = [*(a1 + 48) _genericAppleIDHeadersDictionaryForRequest:*(a1 + 32)];
  v6 = [location[0] attestationHeaders];
  MEMORY[0x1E69E5920](v6);
  if (v6)
  {
    [*(a1 + 48) _reportOnRequest:*(a1 + 32) response:0 attestationData:location[0]];
    v5 = [location[0] attestationHeaders];
    [v23 addEntriesFromDictionary:?];
    MEMORY[0x1E69E5920](v5);
  }

  if (*(*(a1 + 48) + 32))
  {
    v22 = _AKTrafficLogSubsystem();
    v21 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_66(v31, v28[0], *(a1 + 40));
      _os_log_debug_impl(&dword_193225000, v22, v21, "Using proxied Anisette data for headers to URL: %@ Task %{public}@.", v31, 0x16u);
    }

    objc_storeStrong(&v22, 0);
    v20 = [MEMORY[0x1E695AC18] ak_proxiedHeadersForDevice:*(*(a1 + 48) + 48) anisetteData:*(*(a1 + 48) + 32)];
    if (v20)
    {
      [v23 addEntriesFromDictionary:v20];
    }

    (*(*(a1 + 56) + 16))();
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v4 = [*(a1 + 48) _pairedDeviceAnisetteController];
    MEMORY[0x1E69E5920](v4);
    if (v4)
    {
      queue = dispatch_get_global_queue(25, 0);
      v9 = MEMORY[0x1E69E9820];
      v10 = -1073741824;
      v11 = 0;
      v12 = __73__AKAppleIDSession__generateAppleIDHeadersForSessionTask_withCompletion___block_invoke_70;
      v13 = &unk_1E73D7D98;
      v14 = MEMORY[0x1E69E5928](v28[0]);
      v15 = MEMORY[0x1E69E5928](*(a1 + 40));
      v16 = MEMORY[0x1E69E5928](*(a1 + 48));
      v17 = MEMORY[0x1E69E5928](*(a1 + 32));
      v18 = MEMORY[0x1E69E5928](v23);
      v19 = MEMORY[0x1E69E5928](*(a1 + 56));
      dispatch_async(queue, &v9);
      MEMORY[0x1E69E5920](queue);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v14, 0);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDSession__generateAppleIDHeadersForSessionTask_withCompletion___block_invoke_70(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKTrafficLogSubsystem();
  v12 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_66(v14, *(a1 + 32), *(a1 + 40));
    _os_log_debug_impl(&dword_193225000, location[0], v12, "Fetching paired device Anisette data for headers to URL: %@. Task: %{public}@.", v14, 0x16u);
  }

  objc_storeStrong(location, 0);
  v2 = [*(a1 + 48) _pairedDeviceAnisetteController];
  v1 = *(a1 + 56);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __73__AKAppleIDSession__generateAppleIDHeadersForSessionTask_withCompletion___block_invoke_71;
  v8 = &unk_1E73D7D70;
  v9 = MEMORY[0x1E69E5928](*(a1 + 48));
  v10 = MEMORY[0x1E69E5928](*(a1 + 64));
  v11 = MEMORY[0x1E69E5928](*(a1 + 72));
  [v2 anisetteDataForURLRequest:v1 completion:&v4];
  MEMORY[0x1E69E5920](v2);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDSession__generateAppleIDHeadersForSessionTask_withCompletion___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  if (location[0])
  {
    v6[0] = [MEMORY[0x1E695AC18] ak_proxiedHeadersForDevice:*(*(a1 + 32) + 48) anisetteData:location[0]];
    if (v6[0])
    {
      [*(a1 + 40) addEntriesFromDictionary:v6[0]];
    }

    objc_storeStrong(v6, 0);
  }

  v3 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_canHandleAnisetteURLResponse:(id)response
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  statusCode = [location[0] statusCode];
  v4 = 1;
  if (statusCode != 431)
  {
    v4 = 1;
    if (statusCode != 434)
    {
      v4 = 1;
      if (statusCode != 433)
      {
        v4 = 1;
        if (statusCode != 441)
        {
          v4 = 1;
          if (statusCode != 443)
          {
            v4 = statusCode == 442;
          }
        }
      }
    }
  }

  objc_storeStrong(location, 0);
  return v4 || statusCode == 444;
}

- (void)_handleAnisetteURLResponse:(id)response forRequest:(id)request withCompletion:(id)completion
{
  v93 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v85 = 0;
  objc_storeStrong(&v85, request);
  v84 = 0;
  objc_storeStrong(&v84, completion);
  v83 = [v85 URL];
  v33 = +[AKConfiguration sharedConfiguration];
  shouldEnableAttestationLogging = [v33 shouldEnableAttestationLogging];
  MEMORY[0x1E69E5920](v33);
  if (shouldEnableAttestationLogging == 1)
  {
    v82 = _AKTrafficLogSubsystem();
    v81 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v92, location[0], v83);
      _os_log_debug_impl(&dword_193225000, v82, v81, "Handling response %@ for URL %@...", v92, 0x16u);
    }

    objc_storeStrong(&v82, 0);
  }

  allHeaderFields = [location[0] allHeaderFields];
  v80 = [allHeaderFields objectForKey:@"x-apple-server-time"];
  MEMORY[0x1E69E5920](allHeaderFields);
  if ([v80 length])
  {
    _nativeAnisetteController = [(AKAppleIDSession *)selfCopy _nativeAnisetteController];
    [_nativeAnisetteController setTimeAdjustmentWithServerTime:v80 completion:&__block_literal_global_34];
    MEMORY[0x1E69E5920](_nativeAnisetteController);
  }

  if ([(AKAppleIDSession *)selfCopy _canHandleAnisetteURLResponse:location[0]])
  {
    v76 = MEMORY[0x1E69E5928](location[0]);
    v75 = 0;
    allHeaderFields2 = [v76 allHeaderFields];
    v25 = [allHeaderFields2 objectForKey:@"X-Apple-I-MD-Cmd-Target"];
    v27 = [v25 isEqual:@"paired"];
    MEMORY[0x1E69E5920](v25);
    MEMORY[0x1E69E5920](allHeaderFields2);
    v74 = v27;
    if (v27)
    {
      _pairedDeviceAnisetteController = [(AKAppleIDSession *)selfCopy _pairedDeviceAnisetteController];
    }

    else
    {
      _pairedDeviceAnisetteController = [(AKAppleIDSession *)selfCopy _nativeAnisetteController];
    }

    v6 = v75;
    v75 = _pairedDeviceAnisetteController;
    MEMORY[0x1E69E5920](v6);
    if (v75)
    {
      statusCode = [location[0] statusCode];
      switch(statusCode)
      {
        case 433:
          v12 = v75;
          host = [v83 host];
          v49 = MEMORY[0x1E69E9820];
          v50 = -1073741824;
          v51 = 0;
          v52 = __73__AKAppleIDSession__handleAnisetteURLResponse_forRequest_withCompletion___block_invoke_84;
          v53 = &unk_1E73D7DE8;
          v54 = MEMORY[0x1E69E5928](selfCopy);
          v55 = MEMORY[0x1E69E5928](v83);
          v56 = MEMORY[0x1E69E5928](v75);
          v57 = MEMORY[0x1E69E5928](v84);
          [v12 shouldAllowReprovisionForHostName:host completion:&v49];
          MEMORY[0x1E69E5920](host);
          v77 = 2;
          objc_storeStrong(&v57, 0);
          objc_storeStrong(&v56, 0);
          objc_storeStrong(&v55, 0);
          objc_storeStrong(&v54, 0);
          break;
        case 434:
          v70 = _AKTrafficLogSubsystem();
          v69 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_2_4_0_8_64(v89, 434, v83);
            _os_log_debug_impl(&dword_193225000, v70, v69, "Sync status code (%d) received for URL: %@", v89, 0x12u);
          }

          objc_storeStrong(&v70, 0);
          allHeaderFields3 = [v76 allHeaderFields];
          v68 = [allHeaderFields3 objectForKey:@"X-Apple-I-MD-DATA"];
          MEMORY[0x1E69E5920](allHeaderFields3);
          aaf_toBase64DecodedData = [v68 aaf_toBase64DecodedData];
          if (aaf_toBase64DecodedData)
          {
            v15 = v75;
            v14 = aaf_toBase64DecodedData;
            v58 = MEMORY[0x1E69E9820];
            v59 = -1073741824;
            v60 = 0;
            v61 = __73__AKAppleIDSession__handleAnisetteURLResponse_forRequest_withCompletion___block_invoke_82;
            v62 = &unk_1E73D3B38;
            v63 = MEMORY[0x1E69E5928](v84);
            [v15 syncWithSIMData:v14 completion:&v58];
            objc_storeStrong(&v63, 0);
          }

          else
          {
            v66 = _AKLogSystem();
            v65 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              v16 = v66;
              v17 = v65;
              __os_log_helper_16_0_0(v64);
              _os_log_error_impl(&dword_193225000, v16, v17, "HTTP 434 without sync data received!", v64, 2u);
            }

            objc_storeStrong(&v66, 0);
            (*(v84 + 2))();
          }

          v77 = 2;
          objc_storeStrong(&aaf_toBase64DecodedData, 0);
          objc_storeStrong(&v68, 0);
          break;
        case 441:
          _nativeAnisetteController2 = [(AKAppleIDSession *)selfCopy _nativeAnisetteController];
          v42 = MEMORY[0x1E69E9820];
          v43 = -1073741824;
          v44 = 0;
          v45 = __73__AKAppleIDSession__handleAnisetteURLResponse_forRequest_withCompletion___block_invoke_85;
          v46 = &unk_1E73D7E10;
          v48 = MEMORY[0x1E69E5928](v84);
          v47 = MEMORY[0x1E69E5928](v83);
          [_nativeAnisetteController2 resetDeviceIdentityWithCompletion:&v42];
          MEMORY[0x1E69E5920](_nativeAnisetteController2);
          v77 = 2;
          objc_storeStrong(&v47, 0);
          objc_storeStrong(&v48, 0);
          break;
        case 442:
          oslog = _AKLogSystem();
          v40 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v9 = oslog;
            v10 = v40;
            __os_log_helper_16_0_0(v39);
            _os_log_error_impl(&dword_193225000, v9, v10, "The host certificate for the device is invalid. It needs to be renewed to proceed.", v39, 2u);
          }

          objc_storeStrong(&oslog, 0);
          (*(v84 + 2))();
          break;
        case 443:
          [v80 length];
          (*(v84 + 2))();
          break;
        case 444:
          v38 = _AKLogSystem();
          v37 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v7 = v38;
            v8 = v37;
            __os_log_helper_16_0_0(v36);
            _os_log_error_impl(&dword_193225000, v7, v8, "The BAA device token is invalid. It needs to be renewed asynchronously.", v36, 2u);
          }

          objc_storeStrong(&v38, 0);
          [v75 refreshBAADeviceTokenWithCompletion:&__block_literal_global_88];
          (*(v84 + 2))();
          break;
        default:
          v35 = _AKLogSystem();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_0_1_8_0(v88, [location[0] statusCode]);
            _os_log_error_impl(&dword_193225000, v35, OS_LOG_TYPE_ERROR, "Unhandled status code (%ld). Not retrying.", v88, 0xCu);
          }

          objc_storeStrong(&v35, 0);
          (*(v84 + 2))();
          break;
      }

      [(AKAppleIDSession *)selfCopy _reportOnRequest:0 response:location[0] attestationData:?];
      v77 = 0;
    }

    else
    {
      v73 = _AKTrafficLogSubsystem();
      v72 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v21 = v73;
        v22 = v72;
        v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v76, "statusCode")}];
        v20 = v83;
        allHeaderFields4 = [v76 allHeaderFields];
        v71 = MEMORY[0x1E69E5928](allHeaderFields4);
        __os_log_helper_16_2_3_8_64_8_64_8_64(v90, v24, v20, v71);
        _os_log_error_impl(&dword_193225000, v21, v22, "No instance of AKAnisetteProvisioningController to handle HTTP code %@ in response to %@ %@.", v90, 0x20u);
        MEMORY[0x1E69E5920](allHeaderFields4);
        MEMORY[0x1E69E5920](v24);
        objc_storeStrong(&v71, 0);
      }

      objc_storeStrong(&v73, 0);
      (*(v84 + 2))();
      v77 = 1;
    }

    objc_storeStrong(&v75, 0);
    objc_storeStrong(&v76, 0);
  }

  else
  {
    v79 = _AKTrafficLogSubsystem();
    v78 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(location[0], "statusCode")}];
      __os_log_helper_16_2_2_8_64_8_64(v91, v28, v83);
      _os_log_debug_impl(&dword_193225000, v79, v78, "No handling for HTTP status code %@ in response for URL %@", v91, 0x16u);
      MEMORY[0x1E69E5920](v28);
    }

    objc_storeStrong(&v79, 0);
    (*(v84 + 2))();
    v77 = 1;
  }

  objc_storeStrong(&v80, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v84, 0);
  objc_storeStrong(&v85, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDSession__handleAnisetteURLResponse_forRequest_withCompletion___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_DEFAULT, "Time updated with error - %@", v5, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDSession__handleAnisetteURLResponse_forRequest_withCompletion___block_invoke_82(void *a1, char a2, id obj)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v9[1] = a1;
  if (v11)
  {
    v9[0] = _AKTrafficLogSubsystem();
    v8 = 2;
    if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEBUG))
    {
      log = v9[0];
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_193225000, log, type, "Anisette sync was successful!", v7, 2u);
    }

    objc_storeStrong(v9, 0);
    (*(a1[4] + 16))();
  }

  else
  {
    oslog = _AKTrafficLogSubsystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, location);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Anisette sync failed! Error: %@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDSession__handleAnisetteURLResponse_forRequest_withCompletion___block_invoke_84(uint64_t a1, char a2, id obj)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v8[1] = a1;
  if (v10)
  {
    [*(a1 + 32) _handleAnisetteReprovisionWithRequestURL:*(a1 + 40) anisetteController:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v8[0] = _AKTrafficLogSubsystem();
    v7 = 16;
    if (os_log_type_enabled(v8[0], OS_LOG_TYPE_ERROR))
    {
      log = v8[0];
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_error_impl(&dword_193225000, log, type, "Reprovision not allowed, the requesting URL is not a GS endpoint.", v6, 2u);
    }

    objc_storeStrong(v8, 0);
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(&location, 0);
}

void __73__AKAppleIDSession__handleAnisetteURLResponse_forRequest_withCompletion___block_invoke_85(uint64_t *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6[1] = a1;
  if (location[0])
  {
    v6[0] = _AKLogSystem();
    v5 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v6[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v9, location[0]);
      _os_log_error_impl(&dword_193225000, v6[0], v5, "Could not reset the BAA certs for renewal. Error: %@, not retrying", v9, 0xCu);
    }

    objc_storeStrong(v6, 0);
    (*(a1[5] + 16))();
    v4 = 1;
  }

  else
  {
    oslog = _AKTrafficLogSubsystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v8, a1[4]);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Trying to get new attestation headers to retry request for URL:%@", v8, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[5] + 16))();
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __73__AKAppleIDSession__handleAnisetteURLResponse_forRequest_withCompletion___block_invoke_86(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

- (void)_handleAnisetteReprovisionWithRequestURL:(id)l anisetteController:(id)controller completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v23 = 0;
  objc_storeStrong(&v23, controller);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  v21 = _AKTrafficLogSubsystem();
  v20 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_4_0_8_64(v25, 433, location[0]);
    _os_log_debug_impl(&dword_193225000, v21, v20, "Reprovision status code (%d) received for URL: %@", v25, 0x12u);
  }

  objc_storeStrong(&v21, 0);
  v19 = [MEMORY[0x1E696ABC0] ak_errorWithCode:433];
  v18 = [MEMORY[0x1E696ABC0] ak_generalErrorWithCode:-8022 errorDomain:@"AKAnisetteError" underlyingError:v19];
  v17 = [MEMORY[0x1E6985DB0] ak_analyticsEventWithEventName:@"com.apple.authkit.midInvalidated" error:v18];
  host = [location[0] host];
  [v17 setObject:? forKeyedSubscript:?];
  MEMORY[0x1E69E5920](host);
  v6 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
  [v6 sendEvent:v17];
  MEMORY[0x1E69E5920](v6);
  v7 = v23;
  v10 = MEMORY[0x1E69E9820];
  v11 = -1073741824;
  v12 = 0;
  v13 = __91__AKAppleIDSession__handleAnisetteReprovisionWithRequestURL_anisetteController_completion___block_invoke;
  v14 = &unk_1E73D7E38;
  v16 = MEMORY[0x1E69E5928](v22);
  v15 = MEMORY[0x1E69E5928](v23);
  [v7 eraseWithCompletion:&v10];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __91__AKAppleIDSession__handleAnisetteReprovisionWithRequestURL_anisetteController_completion___block_invoke(void *a1, char a2, id obj)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = a1;
  v19 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v17[1] = a1;
  if (v19)
  {
    v15 = _AKTrafficLogSubsystem();
    v14 = 2;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v4 = v15;
      v5 = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_debug_impl(&dword_193225000, v4, v5, "Erased Anisette data successfully. Time to provision!", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
    v3 = a1[4];
    v7 = MEMORY[0x1E69E9820];
    v8 = -1073741824;
    v9 = 0;
    v10 = __91__AKAppleIDSession__handleAnisetteReprovisionWithRequestURL_anisetteController_completion___block_invoke_92;
    v11 = &unk_1E73D3B38;
    v12 = MEMORY[0x1E69E5928](a1[5]);
    [v3 provisionWithCompletion:&v7];
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v17[0] = _AKTrafficLogSubsystem();
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v21, location);
      _os_log_error_impl(&dword_193225000, v17[0], v16, "Unable to reprovision because Anisette data could not be erased! Error: %@", v21, 0xCu);
    }

    objc_storeStrong(v17, 0);
    (*(a1[5] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

void __91__AKAppleIDSession__handleAnisetteReprovisionWithRequestURL_anisetteController_completion___block_invoke_92(void *a1, char a2, id obj)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v12 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v10[1] = a1;
  if (v12)
  {
    oslog = _AKTrafficLogSubsystem();
    v7 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v3 = oslog;
      v4 = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_debug_impl(&dword_193225000, v3, v4, "Successfully provisioned new Anisette data.", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[4] + 16))();
  }

  else
  {
    v10[0] = _AKTrafficLogSubsystem();
    v9 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v14, location);
      _os_log_error_impl(&dword_193225000, v10[0], v9, "Provisioning new Anisette data failed! Error: %@", v14, 0xCu);
    }

    objc_storeStrong(v10, 0);
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_handleURLSwitchingResponse:(id)response forRequest:(id)request withCompletion:(id)completion
{
  v48 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v44 = 0;
  objc_storeStrong(&v44, request);
  v43 = 0;
  objc_storeStrong(&v43, completion);
  v42 = [v44 URL];
  v41 = _AKLogSystem();
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v47, location[0], v42);
    _os_log_impl(&dword_193225000, v41, v40, "Handling response %@ for URL %@...", v47, 0x16u);
  }

  objc_storeStrong(&v41, 0);
  v39 = _AKLogSystem();
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_4_0_8_64(v46, 435, v42);
    _os_log_impl(&dword_193225000, v39, v38, "URL Switching state code (%d) received for URL: %@", v46, 0x12u);
  }

  objc_storeStrong(&v39, 0);
  v37 = [v44 mutableCopy];
  v11 = [v37 ak_valueForEncodedHeaderWithKey:@"X-Apple-I-UrlSwitch-Info"];
  v36 = [v11 componentsSeparatedByString:@":"];
  MEMORY[0x1E69E5920](v11);
  if ([v36 count] >= 2)
  {
    firstObject = [v36 firstObject];
    lastObject = [v36 lastObject];
    v28 = [location[0] valueForHTTPHeaderField:@"X-Apple-I-Data"];
    if ([v28 length])
    {
      v23 = [AKURLBag bagForAltDSID:firstObject];
      v6 = v23;
      v5 = v28;
      v14 = MEMORY[0x1E69E9820];
      v15 = -1073741824;
      v16 = 0;
      v17 = __74__AKAppleIDSession__handleURLSwitchingResponse_forRequest_withCompletion___block_invoke;
      v18 = &unk_1E73D7E60;
      v19 = MEMORY[0x1E69E5928](v23);
      v20 = MEMORY[0x1E69E5928](lastObject);
      v22 = MEMORY[0x1E69E5928](v43);
      v21 = MEMORY[0x1E69E5928](v37);
      [v6 forceUpdateBagWithUrlSwitchData:v5 completion:&v14];
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v23, 0);
      v31 = 0;
    }

    else
    {
      v27 = _AKLogSystem();
      v26 = 16;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v7 = v27;
        v8 = v26;
        __os_log_helper_16_0_0(v25);
        _os_log_error_impl(&dword_193225000, v7, v8, "No Value found for Response URLSwitch data header ignoring URL Switching request", v25, 2u);
      }

      objc_storeStrong(&v27, 0);
      v24 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7087];
      (*(v43 + 2))(v43, 0, v24);
      v31 = 1;
      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&lastObject, 0);
    objc_storeStrong(&firstObject, 0);
  }

  else
  {
    v35 = _AKLogSystem();
    v34 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v9 = v35;
      v10 = v34;
      __os_log_helper_16_0_0(v33);
      _os_log_error_impl(&dword_193225000, v9, v10, "No Value found for URLSwitching header ignoring URL Switching request", v33, 2u);
    }

    objc_storeStrong(&v35, 0);
    v32 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7087];
    (*(v43 + 2))(v43, 0, v32);
    v31 = 1;
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __74__AKAppleIDSession__handleURLSwitchingResponse_forRequest_withCompletion___block_invoke(uint64_t a1, char a2, id obj)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v15 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v13[1] = a1;
  if (v15)
  {
    v13[0] = [*(a1 + 32) urlAtKey:*(a1 + 40)];
    if (v13[0])
    {
      [*(a1 + 48) setURL:v13[0]];
      v3 = *(a1 + 48);
      (*(*(a1 + 56) + 16))();
      v8 = 1;
    }

    else
    {
      v12 = _AKLogSystem();
      v11 = 16;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        log = v12;
        type = v11;
        __os_log_helper_16_0_0(v10);
        _os_log_error_impl(&dword_193225000, log, type, "No URL found for UrlKey after URLBag update, ignoring URL Switching request", v10, 2u);
      }

      objc_storeStrong(&v12, 0);
      v9 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7088];
      (*(*(a1 + 56) + 16))();
      v8 = 1;
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(v13, 0);
  }

  else
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v17, location);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "URLBag failed to update with error: %@, ignoring URL Switching request", v17, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    (*(*(a1 + 56) + 16))();
    v8 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_reportOnRequest:(id)request response:(id)response attestationData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v30 = 0;
  objc_storeStrong(&v30, response);
  v29 = 0;
  objc_storeStrong(&v29, data);
  v20 = +[AKDevice currentDevice];
  isInternalBuild = [v20 isInternalBuild];
  MEMORY[0x1E69E5920](v20);
  if (isInternalBuild)
  {
    v27 = 0;
    v26 = objc_opt_new();
    if (location[0] || v29)
    {
      v12 = [location[0] URL];
      host = [v12 host];
      [v26 setEndPointVIP:?];
      MEMORY[0x1E69E5920](host);
      MEMORY[0x1E69E5920](v12);
      hTTPMethod = [location[0] HTTPMethod];
      [v26 setRequestMethod:?];
      MEMORY[0x1E69E5920](hTTPMethod);
      hTTPBody = [location[0] HTTPBody];
      [v26 setBodySize:{objc_msgSend(hTTPBody, "length")}];
      MEMORY[0x1E69E5920](hTTPBody);
      v25 = 0;
      v15 = MEMORY[0x1E696ACB0];
      attestationHeaders = [v29 attestationHeaders];
      v23 = v25;
      v16 = [v15 dataWithJSONObject:? options:? error:?];
      objc_storeStrong(&v25, v23);
      v24 = v16;
      MEMORY[0x1E69E5920](attestationHeaders);
      if (!v25)
      {
        v5 = [v24 length];
        [v26 setHeaderSize:v5];
      }

      v27 = 1;
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
    }

    else if (v30)
    {
      v10 = [v30 URL];
      host2 = [v10 host];
      [v26 setEndPointVIP:?];
      MEMORY[0x1E69E5920](host2);
      MEMORY[0x1E69E5920](v10);
      statusCode = [v30 statusCode];
      v27 = [v30 statusCode] / 100 != 2;
      v8 = [v30 URL];
      host3 = [v8 host];
      [v26 setEndPointVIP:?];
      MEMORY[0x1E69E5920](host3);
      MEMORY[0x1E69E5920](v8);
      [v26 setErrorCode:statusCode];
      [v26 setErrorDomain:@"AKAuthenticationServerError"];
    }

    if (v27)
    {
      _nativeAnisetteController = [(AKAppleIDSession *)selfCopy _nativeAnisetteController];
      [_nativeAnisetteController postAttestationAnalytics:v26 completion:&__block_literal_global_100];
      MEMORY[0x1E69E5920](_nativeAnisetteController);
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    objc_storeStrong(&v26, 0);
  }

  else
  {
    v28 = 1;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

void __62__AKAppleIDSession__reportOnRequest_response_attestationData___block_invoke(NSObject *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v5, location[0]);
      _os_log_error_impl(&dword_193225000, oslog[0], OS_LOG_TYPE_ERROR, "Error posting attestation analytics - %@", v5, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)_resetDeviceIdentityWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _nativeAnisetteController = [(AKAppleIDSession *)selfCopy _nativeAnisetteController];
  [_nativeAnisetteController resetDeviceIdentityWithCompletion:location[0]];
  MEMORY[0x1E69E5920](_nativeAnisetteController);
  objc_storeStrong(location, 0);
}

@end