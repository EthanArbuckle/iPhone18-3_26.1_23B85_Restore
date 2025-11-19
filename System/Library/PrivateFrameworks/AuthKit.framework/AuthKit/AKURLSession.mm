@interface AKURLSession
+ (id)_createURLSessionUsesAppleIDContext:(BOOL)a3;
+ (id)_urlBagCache;
+ (id)sharedAnisetteFreeURLSession;
+ (id)sharedCacheEnabledAnisetteFreeSession;
+ (id)sharedCacheEnabledURLSession;
+ (id)sharedCacheReliantAnisetteFreeSession;
+ (id)sharedURLSession;
+ (id)sharedURLSessionWithDenyVirtualInterfaces;
+ (void)removeAllCachedResponses;
- (AKURLSession)init;
- (BOOL)_unsafe_retryTaskIfPossible:(id)a3;
- (BOOL)isRecoverableError:(id)a3;
- (id)_URLSession;
- (id)beginAuthenticationDataTaskWithRequest:(id)a3 completionHandler:(id)a4;
- (id)beginDataTaskWithRequest:(id)a3 completionHandler:(id)a4;
- (id)defaultSessionObjectWithConfiguration:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)_unsafe_completeTask:(id)a3 withError:(id)a4;
- (void)cancelDataTask:(id)a3;
@end

@implementation AKURLSession

+ (id)_createURLSessionUsesAppleIDContext:(BOOL)a3
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = objc_alloc_init(AKURLSession);
  [(AKURLSession *)v5 set_usesAppleIDContext:v6];
  v4 = MEMORY[0x1E69E5928](v5);
  objc_storeStrong(&v5, 0);

  return v4;
}

+ (id)sharedURLSession
{
  v11 = a1;
  v10 = a2;
  obj = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __32__AKURLSession_sharedURLSession__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  v9 = a1;
  v13 = &sharedURLSession_onceToken;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedURLSession_sharedURLSession;

  return v2;
}

uint64_t __32__AKURLSession_sharedURLSession__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createURLSessionUsesAppleIDContext:{1, a1, a1}];
  v2 = sharedURLSession_sharedURLSession;
  sharedURLSession_sharedURLSession = v1;
  return MEMORY[0x1E69E5920](v2);
}

+ (id)sharedAnisetteFreeURLSession
{
  v11 = a1;
  v10 = a2;
  obj = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __44__AKURLSession_sharedAnisetteFreeURLSession__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  v9 = a1;
  v13 = &sharedAnisetteFreeURLSession_onceToken;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedAnisetteFreeURLSession_sharedAnisetteFreeURLSession;

  return v2;
}

uint64_t __44__AKURLSession_sharedAnisetteFreeURLSession__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _createURLSessionUsesAppleIDContext:{0, a1, a1}];
  v2 = sharedAnisetteFreeURLSession_sharedAnisetteFreeURLSession;
  sharedAnisetteFreeURLSession_sharedAnisetteFreeURLSession = v1;
  return MEMORY[0x1E69E5920](v2);
}

+ (id)sharedCacheEnabledURLSession
{
  v11 = a1;
  v10 = a2;
  obj = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __44__AKURLSession_sharedCacheEnabledURLSession__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  v9 = a1;
  v13 = &sharedCacheEnabledURLSession_onceToken;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedCacheEnabledURLSession_session;

  return v2;
}

void __44__AKURLSession_sharedCacheEnabledURLSession__block_invoke(id *a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v1 = [a1[4] _createURLSessionUsesAppleIDContext:1];
  v2 = sharedCacheEnabledURLSession_session;
  sharedCacheEnabledURLSession_session = v1;
  MEMORY[0x1E69E5920](v2);
  v8[0] = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  v6 = [a1[4] _urlBagCache];
  [v8[0] setURLCache:?];
  MEMORY[0x1E69E5920](v6);
  [v8[0] setWaitsForConnectivity:1];
  [v8[0] setTimeoutIntervalForResource:0x3CuLL];
  v7 = [[AKAppleIDSession alloc] initWithIdentifier:@"AuthKitURLSession"];
  [v8[0] set_appleIDContext:?];
  MEMORY[0x1E69E5920](v7);
  v3 = [sharedCacheEnabledURLSession_session defaultSessionObjectWithConfiguration:v8[0]];
  v4 = *(sharedCacheEnabledURLSession_session + 8);
  *(sharedCacheEnabledURLSession_session + 8) = v3;
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(v8, 0);
}

+ (id)sharedURLSessionWithDenyVirtualInterfaces
{
  v11 = a1;
  v10 = a2;
  obj = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __57__AKURLSession_sharedURLSessionWithDenyVirtualInterfaces__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  v9 = a1;
  v13 = &sharedURLSessionWithDenyVirtualInterfaces_onceToken;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedURLSessionWithDenyVirtualInterfaces_session;

  return v2;
}

void __57__AKURLSession_sharedURLSessionWithDenyVirtualInterfaces__block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v21 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    v11 = v21;
    __os_log_helper_16_0_0(v20);
    _os_log_debug_impl(&dword_193225000, log, v11, "Setting URLSessionConfig for the virtual interfaces", v20, 2u);
  }

  objc_storeStrong(location, 0);
  v1 = [a1[4] _createURLSessionUsesAppleIDContext:1];
  v2 = sharedURLSessionWithDenyVirtualInterfaces_session;
  sharedURLSessionWithDenyVirtualInterfaces_session = v1;
  MEMORY[0x1E69E5920](v2);
  v19 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  [v19 setWaitsForConnectivity:1];
  [v19 setTimeoutIntervalForResource:0x3CuLL];
  v9 = [[AKAppleIDSession alloc] initWithIdentifier:@"AuthKitURLSession"];
  [v19 set_appleIDContext:?];
  MEMORY[0x1E69E5920](v9);
  if (objc_opt_respondsToSelector())
  {
    v18 = _AKLogSystem();
    v17 = 2;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v7 = v18;
      type = v17;
      __os_log_helper_16_0_0(v16);
      _os_log_debug_impl(&dword_193225000, v7, type, "URLSessionConfig disable virtual interfaces", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
    [v19 set_allowsVirtualInterfaces:0];
  }

  else
  {
    v15 = _AKLogSystem();
    v14 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v5 = v15;
      v6 = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_193225000, v5, v6, "URLSessionConfig doesn't respond to _allowsVirtualInterfaces!", v13, 2u);
    }

    objc_storeStrong(&v15, 0);
  }

  v3 = [sharedURLSessionWithDenyVirtualInterfaces_session defaultSessionObjectWithConfiguration:v19];
  v4 = *(sharedURLSessionWithDenyVirtualInterfaces_session + 8);
  *(sharedURLSessionWithDenyVirtualInterfaces_session + 8) = v3;
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&v19, 0);
}

+ (id)sharedCacheEnabledAnisetteFreeSession
{
  v11 = a1;
  v10 = a2;
  obj = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __53__AKURLSession_sharedCacheEnabledAnisetteFreeSession__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  v9 = a1;
  v13 = &sharedCacheEnabledAnisetteFreeSession_onceToken;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedCacheEnabledAnisetteFreeSession_session;

  return v2;
}

void __53__AKURLSession_sharedCacheEnabledAnisetteFreeSession__block_invoke(id *a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v1 = [a1[4] _createURLSessionUsesAppleIDContext:0];
  v2 = sharedCacheEnabledAnisetteFreeSession_session;
  sharedCacheEnabledAnisetteFreeSession_session = v1;
  MEMORY[0x1E69E5920](v2);
  v7[0] = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  v6 = [a1[4] _urlBagCache];
  [v7[0] setURLCache:?];
  MEMORY[0x1E69E5920](v6);
  [v7[0] setWaitsForConnectivity:1];
  [v7[0] setTimeoutIntervalForResource:0x3CuLL];
  v3 = [sharedCacheEnabledAnisetteFreeSession_session defaultSessionObjectWithConfiguration:v7[0]];
  v4 = *(sharedCacheEnabledAnisetteFreeSession_session + 8);
  *(sharedCacheEnabledAnisetteFreeSession_session + 8) = v3;
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(v7, 0);
}

+ (id)sharedCacheReliantAnisetteFreeSession
{
  v11 = a1;
  v10 = a2;
  obj = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __53__AKURLSession_sharedCacheReliantAnisetteFreeSession__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  v9 = a1;
  v13 = &sharedCacheReliantAnisetteFreeSession_onceToken;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedCacheReliantAnisetteFreeSession_session;

  return v2;
}

void __53__AKURLSession_sharedCacheReliantAnisetteFreeSession__block_invoke(id *a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v1 = [a1[4] _createURLSessionUsesAppleIDContext:0];
  v2 = sharedCacheReliantAnisetteFreeSession_session;
  sharedCacheReliantAnisetteFreeSession_session = v1;
  MEMORY[0x1E69E5920](v2);
  v7[0] = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  v6 = [a1[4] _urlBagCache];
  [v7[0] setURLCache:?];
  MEMORY[0x1E69E5920](v6);
  [v7[0] setWaitsForConnectivity:0];
  [v7[0] setRequestCachePolicy:3];
  v3 = [sharedCacheReliantAnisetteFreeSession_session defaultSessionObjectWithConfiguration:v7[0]];
  v4 = *(sharedCacheReliantAnisetteFreeSession_session + 8);
  *(sharedCacheReliantAnisetteFreeSession_session + 8) = v3;
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(v7, 0);
}

+ (id)_urlBagCache
{
  v5 = &_urlBagCache_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_5);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = _urlBagCache_cache;

  return v2;
}

void __28__AKURLSession__urlBagCache__block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = +[AKDevice systemContainerCacheURL];
  location = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v12, v11[0]);
    _os_log_impl(&dword_193225000, location, v9, "Initializing URL cache at URL: %@", v12, 0xCu);
  }

  objc_storeStrong(&location, 0);
  if (v11[0])
  {
    v1 = objc_alloc(MEMORY[0x1E695AC38]);
    v2 = [v1 initWithMemoryCapacity:512000 diskCapacity:10000000 directoryURL:v11[0]];
    v3 = _urlBagCache_cache;
    _urlBagCache_cache = v2;
    MEMORY[0x1E69E5920](v3);
  }

  else
  {
    oslog = _AKLogSystem();
    v7 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v4 = oslog;
      v5 = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_error_impl(&dword_193225000, v4, v5, "Failed to generate cache due to missing container path!", v6, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x1E69E9840];
}

+ (void)removeAllCachedResponses
{
  v2 = [a1 _urlBagCache];
  [v2 removeAllCachedResponses];
  MEMORY[0x1E69E5920](v2);
}

- (AKURLSession)init
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = 0;
  v12.receiver = self;
  v12.super_class = AKURLSession;
  v14 = [(AKURLSession *)&v12 init];
  objc_storeStrong(&v14, v14);
  if (v14)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v15, v14);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "AKURLSession %p is initializing...", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tasksByIdentifier = v14->_tasksByIdentifier;
    v14->_tasksByIdentifier = v2;
    MEMORY[0x1E69E5920](tasksByIdentifier);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.authkit.url", v10);
    sessionQueue = v14->_sessionQueue;
    v14->_sessionQueue = v4;
    MEMORY[0x1E69E5920](sessionQueue);
    MEMORY[0x1E69E5920](v10);
    v6 = objc_alloc_init(AKServerBackoffHelper);
    serverBackoffHelper = v14->_serverBackoffHelper;
    v14->_serverBackoffHelper = v6;
    MEMORY[0x1E69E5920](serverBackoffHelper);
  }

  v9 = MEMORY[0x1E69E5928](v14);
  objc_storeStrong(&v14, 0);
  *MEMORY[0x1E69E9840];
  return v9;
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = _AKLogSystem();
  v19 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v25, v21);
    _os_log_error_impl(&dword_193225000, v20, v19, "NSURLSession became invalid with error: %@", v25, 0xCu);
  }

  objc_storeStrong(&v20, 0);
  v18 = [(NSMutableDictionary *)v23->_tasksByIdentifier allValues];
  if ([v18 count])
  {
    oslog = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = oslog;
      v11 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_193225000, v10, v11, "Calling all pending completions.", v15, 2u);
    }

    objc_storeStrong(&oslog, 0);
    memset(__b, 0, sizeof(__b));
    v8 = MEMORY[0x1E69E5928](v18);
    v9 = [v8 countByEnumeratingWithState:__b objects:v24 count:16];
    if (v9)
    {
      v5 = *__b[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(__b[1] + 8 * v6);
        [(AKURLSession *)v23 _unsafe_completeTask:v14 withError:v21];
        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [v8 countByEnumeratingWithState:__b objects:v24 count:16];
          if (!v7)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x1E69E5920](v8);
  }

  objc_storeStrong(&v23->_urlSession, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_URLSession
{
  v13 = self;
  location[1] = a2;
  if (!self->_urlSession)
  {
    location[0] = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_193225000, log, type, "Creating new NSURLSession with default config...", v10, 2u);
    }

    objc_storeStrong(location, 0);
    v9 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
    [v9 setWaitsForConnectivity:1];
    [v9 setTimeoutIntervalForResource:0x3CuLL];
    if ([(AKURLSession *)v13 _usesAppleIDContext])
    {
      v6 = [[AKAppleIDSession alloc] initWithIdentifier:@"AuthKitURLSession"];
      [v9 set_appleIDContext:?];
      MEMORY[0x1E69E5920](v6);
    }

    v2 = [(AKURLSession *)v13 defaultSessionObjectWithConfiguration:v9];
    urlSession = v13->_urlSession;
    v13->_urlSession = v2;
    MEMORY[0x1E69E5920](urlSession);
    objc_storeStrong(&v9, 0);
  }

  v4 = v13->_urlSession;

  return v4;
}

- (id)defaultSessionObjectWithConfiguration:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v5 setMaxConcurrentOperationCount:1];
  [v5 setUnderlyingQueue:v7->_sessionQueue];
  v4 = [MEMORY[0x1E695AC78] sessionWithConfiguration:location[0] delegate:v7 delegateQueue:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)beginDataTaskWithRequest:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  if (location[0] && v23)
  {
    v19 = objc_alloc_init(AKURLDataTask);
    queue = v25->_sessionQueue;
    v10 = MEMORY[0x1E69E9820];
    v11 = -1073741824;
    v12 = 0;
    v13 = __59__AKURLSession_beginDataTaskWithRequest_completionHandler___block_invoke;
    v14 = &unk_1E73D4058;
    v15 = MEMORY[0x1E69E5928](location[0]);
    v16 = MEMORY[0x1E69E5928](v25);
    v17 = MEMORY[0x1E69E5928](v19);
    v18 = MEMORY[0x1E69E5928](v23);
    dispatch_async(queue, &v10);
    v26 = MEMORY[0x1E69E5928](v19);
    v20 = 1;
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v22 = _AKLogSystem();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v7 = location[0];
      v8 = MEMORY[0x193B165F0](v23);
      __os_log_helper_16_2_2_8_64_8_64(v27, v7, v8);
      _os_log_error_impl(&dword_193225000, v22, v21, "Asked to begin task with either nil request %@ or completion handler %@", v27, 0x16u);
      MEMORY[0x1E69E5920](v8);
    }

    objc_storeStrong(&v22, 0);
    v26 = 0;
    v20 = 1;
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v4 = v26;

  return v4;
}

void __59__AKURLSession_beginDataTaskWithRequest_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9[2] = a1;
  v9[1] = a1;
  v9[0] = [*(a1 + 32) URL];
  v8 = [v9[0] absoluteString];
  v2 = [*(a1 + 40) _URLSession];
  v7 = [v2 dataTaskWithRequest:*(a1 + 32)];
  MEMORY[0x1E69E5920](v2);
  location = _AKLogSystem();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_66_8_64(v11, v7, v8);
    _os_log_impl(&dword_193225000, location, v5, "Creating task %{public}@ for request at URL: %@", v11, 0x16u);
  }

  objc_storeStrong(&location, 0);
  [*(a1 + 48) setRequest:*(a1 + 32)];
  [*(a1 + 48) setRetryCount:0];
  [*(a1 + 48) setCompletionHandler:*(a1 + 56)];
  [*(a1 + 48) setUnderlyingTask:v7];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "taskIdentifier")}];
  [*(*(a1 + 40) + 24) setObject:*(a1 + 48) forKey:v4];
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_66_8_64(v10, v7, v8);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Resuming task %{public}@ for URL %@", v10, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [v7 resume];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);
  *MEMORY[0x1E69E9840];
}

- (void)cancelDataTask:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  queue = v12->_sessionQueue;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __31__AKURLSession_cancelDataTask___block_invoke;
  v8 = &unk_1E73D4080;
  v9 = MEMORY[0x1E69E5928](location[0]);
  v10 = MEMORY[0x1E69E5928](v12);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __31__AKURLSession_cancelDataTask___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v8 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v4 request];
    __os_log_helper_16_2_2_8_66_8_64(v10, v4, v5);
    _os_log_error_impl(&dword_193225000, location[0], v8, "Cancelling task %{public}@ for request %@", v10, 0x16u);
    MEMORY[0x1E69E5920](v5);
  }

  objc_storeStrong(location, 0);
  if (![*(a1 + 32) canceledOrCompleted])
  {
    v7 = [*(a1 + 32) underlyingTask];
    if ([v7 state])
    {
      if ([v7 state] == 3)
      {
        v2 = *(a1 + 40);
        v1 = *(a1 + 32);
        v3 = [v1 lastRetryError];
        [v2 _unsafe_completeTask:v1 withError:?];
        MEMORY[0x1E69E5920](v3);
      }
    }

    else
    {
      [v7 cancel];
    }

    objc_storeStrong(&v7, 0);
  }

  *MEMORY[0x1E69E9840];
}

- (void)_unsafe_completeTask:(id)a3 withError:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = MEMORY[0x1E696AD98];
  v6 = [location[0] underlyingTask];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "taskIdentifier")}];
  MEMORY[0x1E69E5920](v6);
  [(NSMutableDictionary *)v10->_tasksByIdentifier removeObjectForKey:v7];
  [location[0] _completeWithError:v8];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  if (v17)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "taskIdentifier")}];
    v11 = [(NSMutableDictionary *)v20->_tasksByIdentifier objectForKey:v12];
    v10 = [v11 receivedData];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF88]);
      MEMORY[0x1E69E5920](0);
      [v11 setReceivedData:v10];
    }

    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_66(v21, v18);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Aggregating received data for task: %{public}@", v21, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [v10 appendData:v17];
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    v13 = 0;
  }

  else
  {
    v16 = _AKLogSystem();
    v15 = 16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_error_impl(&dword_193225000, log, type, "The data parameter is nil!", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v13 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16 = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_66_8_64(v21, v18, v17);
    _os_log_impl(&dword_193225000, v16, v15, "Task %{public}@ completed! Error: %@", v21, 0x16u);
  }

  objc_storeStrong(&v16, 0);
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "taskIdentifier")}];
  v13 = [(NSMutableDictionary *)v20->_tasksByIdentifier objectForKey:v14];
  v12 = 0;
  if (v17 && [(AKURLSession *)v20 isRecoverableError:v17])
  {
    oslog = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = oslog;
      v6 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_impl(&dword_193225000, v5, v6, "Error is recoverable. Checking if retry is possible.", v9, 2u);
    }

    objc_storeStrong(&oslog, 0);
    [v13 setLastRetryError:v17];
    v12 = [(AKURLSession *)v20 _unsafe_retryTaskIfPossible:v13];
  }

  if (!v12)
  {
    [(AKURLSession *)v20 _unsafe_completeTask:v13 withError:v17];
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)isRecoverableError:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] domain];
  v5 = [v4 isEqualToString:*MEMORY[0x1E696A978]];
  MEMORY[0x1E69E5920](v4);
  if (v5)
  {
    v7 = [location[0] code] == -997 || objc_msgSend(location[0], "code") == -1005 || objc_msgSend(location[0], "code") == -1001 || objc_msgSend(location[0], "code") == -1009;
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  return v7;
}

- (BOOL)_unsafe_retryTaskIfPossible:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = &_unsafe_retryTaskIfPossible__onceToken;
  v34 = 0;
  objc_storeStrong(&v34, &__block_literal_global_97);
  if (*v35 != -1)
  {
    dispatch_once(v35, v34);
  }

  objc_storeStrong(&v34, 0);
  v30 = [location[0] request];
  if (v30)
  {
    v26 = [location[0] retryCount];
    v25 = _AKLogSystem();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v26];
      __os_log_helper_16_2_1_8_64(v38, v10);
      _os_log_impl(&dword_193225000, v25, v24, "This request has been retried %@ times.", v38, 0xCu);
      MEMORY[0x1E69E5920](v10);
    }

    objc_storeStrong(&v25, 0);
    v9 = v26;
    if (v9 < [_unsafe_retryTaskIfPossible__retryIntervals count])
    {
      v7 = [_unsafe_retryTaskIfPossible__retryIntervals objectAtIndexedSubscript:v26];
      v8 = [v7 integerValue];
      MEMORY[0x1E69E5920](v7);
      v21 = v8;
      v20 = _AKLogSystem();
      v19 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
        __os_log_helper_16_2_1_8_64(v36, v6);
        _os_log_impl(&dword_193225000, v20, v19, "Will retry in %@ second(s)...", v36, 0xCu);
        MEMORY[0x1E69E5920](v6);
      }

      objc_storeStrong(&v20, 0);
      when = dispatch_time(0, (v21 * 1000000000.0));
      queue = v32->_sessionQueue;
      v11 = MEMORY[0x1E69E9820];
      v12 = -1073741824;
      v13 = 0;
      v14 = __44__AKURLSession__unsafe_retryTaskIfPossible___block_invoke_101;
      v15 = &unk_1E73D40A8;
      v16 = MEMORY[0x1E69E5928](location[0]);
      v17 = MEMORY[0x1E69E5928](v32);
      v18[0] = MEMORY[0x1E69E5928](v30);
      v18[1] = v26;
      dispatch_after(when, queue, &v11);
      v33 = 1;
      v27 = 1;
      objc_storeStrong(v18, 0);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      v23 = _AKLogSystem();
      v22 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_66(v37, location[0]);
        _os_log_error_impl(&dword_193225000, v23, v22, "Retry count has been exceeded! %{public}@", v37, 0xCu);
      }

      objc_storeStrong(&v23, 0);
      v33 = 0;
      v27 = 1;
    }
  }

  else
  {
    v29 = _AKLogSystem();
    v28 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v39, location[0]);
      _os_log_error_impl(&dword_193225000, v29, v28, "Cannot retry a nil request from task: %@", v39, 0xCu);
    }

    objc_storeStrong(&v29, 0);
    v33 = 0;
    v27 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v33 & 1;
}

void __44__AKURLSession__unsafe_retryTaskIfPossible___block_invoke_101(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v9[2] = a1;
  v9[1] = a1;
  if (([*(a1 + 32) canceledOrCompleted] & 1) == 0)
  {
    v9[0] = [*(a1 + 32) underlyingTask];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9[0], "taskIdentifier")}];
    [*(*(a1 + 40) + 24) removeObjectForKey:v8];
    v2 = [*(a1 + 40) _URLSession];
    v7 = [v2 dataTaskWithRequest:*(a1 + 48)];
    MEMORY[0x1E69E5920](v2);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "taskIdentifier")}];
    [*(a1 + 32) setUnderlyingTask:v7];
    [*(*(a1 + 40) + 24) setObject:*(a1 + 32) forKey:v6];
    v5 = *(a1 + 56) + 1;
    [*(a1 + 32) setRetryCount:v5];
    [*(a1 + 32) setReceivedData:0];
    location = _AKLogSystem();
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
      __os_log_helper_16_2_2_8_64_8_66(v10, v1, v7);
      _os_log_impl(&dword_193225000, location, OS_LOG_TYPE_DEFAULT, "Retry attempt #%@: resuming task %{public}@...", v10, 0x16u);
      MEMORY[0x1E69E5920](v1);
    }

    objc_storeStrong(&location, 0);
    [v7 resume];
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(v9, 0);
  }

  *MEMORY[0x1E69E9840];
}

- (id)beginAuthenticationDataTaskWithRequest:(id)a3 completionHandler:(id)a4
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  if ([(AKServerBackoffHelper *)v31->_serverBackoffHelper shouldBackoffRequest:location[0]])
  {
    if (v29)
    {
      v10 = v29;
      v11 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7120];
      v10[2](v10, 0);
      MEMORY[0x1E69E5920](v11);
    }

    v32 = 0;
    v28 = 1;
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 838860800;
    v24 = 48;
    v25 = __Block_byref_object_copy__0;
    v26 = __Block_byref_object_dispose__0;
    v27 = 0;
    v9 = v31;
    v8 = location[0];
    v13 = MEMORY[0x1E69E9820];
    v14 = -1073741824;
    v15 = 0;
    v16 = __73__AKURLSession_beginAuthenticationDataTaskWithRequest_completionHandler___block_invoke;
    v17 = &unk_1E73D40D0;
    v20[1] = &v21;
    v20[0] = MEMORY[0x1E69E5928](v29);
    v18 = MEMORY[0x1E69E5928](v31);
    v19 = MEMORY[0x1E69E5928](location[0]);
    v4 = [(AKURLSession *)v9 beginDataTaskWithRequest:v8 completionHandler:&v13];
    v5 = v22[5];
    v22[5] = v4;
    MEMORY[0x1E69E5920](v5);
    v32 = MEMORY[0x1E69E5928](v22[5]);
    v28 = 1;
    _Block_object_dispose(&v21, 8);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(v20, 0);
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  v6 = v32;

  return v6;
}

void __73__AKURLSession_beginAuthenticationDataTaskWithRequest_completionHandler___block_invoke(NSObject *a1, void *a2, void *a3, void *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v50 = 0;
  objc_storeStrong(&v50, a3);
  v49 = 0;
  objc_storeStrong(&v49, a4);
  v48[1] = a1;
  if (v49)
  {
    v48[0] = _AKLogSystem();
    v47 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v48[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_66_8_64(v60, *(*(a1[7].isa + 1) + 40), v49);
      _os_log_error_impl(&dword_193225000, v48[0], v47, "Request failed for task: %{public}@ error: %@", v60, 0x16u);
    }

    objc_storeStrong(v48, 0);
    isa = a1[6].isa;
    v24 = MEMORY[0x1E696ABC0];
    v58 = *MEMORY[0x1E696AA08];
    v59 = v49;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v26 = [v24 errorWithDomain:@"AKAuthenticationError" code:-7029 userInfo:?];
    (*(isa + 2))(isa, 0);
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](v27);
    objc_storeStrong((*(a1[7].isa + 1) + 40), 0);
    v46 = 1;
  }

  else
  {
    v45 = MEMORY[0x1E69E5928](v50);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = *(a1[4].isa + 4);
      v21 = [v45 allHeaderFields];
      [v20 configureFromHeaderFields:?];
      MEMORY[0x1E69E5920](v21);
      v42 = [v45 statusCode];
      oslog = _AKLogSystem();
      v40 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(a1[7].isa + 1) + 40);
        v19 = [MEMORY[0x1E696AD98] numberWithInteger:v42];
        __os_log_helper_16_2_2_8_66_8_66(v56, v18, v19);
        _os_log_impl(&dword_193225000, oslog, v40, "Task %{public}@ Request completed with HTTP status code: %{public}@", v56, 0x16u);
        MEMORY[0x1E69E5920](v19);
      }

      objc_storeStrong(&oslog, 0);
      if (v42 == 200)
      {
        (*(a1[6].isa + 2))();
        objc_storeStrong((*(a1[7].isa + 1) + 40), 0);
        v46 = 0;
      }

      else
      {
        v39 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AKAuthenticationServerError" code:v42 userInfo:0];
        v38 = _AKLogSystem();
        v37 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_64(v55, v50);
          _os_log_impl(&dword_193225000, v38, v37, "Task response: %@", v55, 0xCu);
        }

        objc_storeStrong(&v38, 0);
        v36 = _AKLogSystem();
        v35 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v36;
          v16 = v35;
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:location[0] encoding:4];
          v34 = MEMORY[0x1E69E5928](v17);
          __os_log_helper_16_2_1_8_64(v54, v34);
          _os_log_impl(&dword_193225000, v15, v16, "Task data: %@", v54, 0xCu);
          MEMORY[0x1E69E5920](v17);
          objc_storeStrong(&v34, 0);
        }

        objc_storeStrong(&v36, 0);
        switch(v42)
        {
          case 412:
          case 451:
          case 250:
            (*(a1[6].isa + 2))();
            break;
          case 409:
            v13 = a1[6].isa;
            v12 = v45;
            v14 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7052 underlyingError:v39];
            (*(v13 + 2))(v13, 0, v12);
            MEMORY[0x1E69E5920](v14);
            break;
          case 401:
            v33 = _AKLogSystem();
            v32 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_66(v53, *(*(a1[7].isa + 1) + 40));
              _os_log_error_impl(&dword_193225000, v33, v32, "Task %{public}@ Server responded with authentication error", v53, 0xCu);
            }

            objc_storeStrong(&v33, 0);
            v10 = a1[6].isa;
            v11 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7026 underlyingError:v39];
            (*(v10 + 2))(v10, 0);
            MEMORY[0x1E69E5920](v11);
            break;
          default:
            v8 = +[AKFeatureManager sharedManager];
            v9 = 0;
            if ([v8 isServerBackoffEnabled])
            {
              v9 = v42 == 503;
            }

            MEMORY[0x1E69E5920](v8);
            if (v9)
            {
              v31 = _AKLogSystem();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_1_8_66(v52, *(*(a1[7].isa + 1) + 40));
                _os_log_error_impl(&dword_193225000, v31, OS_LOG_TYPE_ERROR, "Task %{public}@ Server responded with authentication error", v52, 0xCu);
              }

              objc_storeStrong(&v31, 0);
              [*(a1[4].isa + 4) reportTelemetryForRequest:a1[5].isa backoffType:2];
              v6 = a1[6].isa;
              v7 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7120 underlyingError:v39];
              (*(v6 + 2))(v6, 0);
              MEMORY[0x1E69E5920](v7);
            }

            else
            {
              v4 = a1[6].isa;
              v5 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7029 underlyingError:v39];
              (*(v4 + 2))(v4, 0);
              MEMORY[0x1E69E5920](v5);
            }

            break;
        }

        objc_storeStrong((*(a1[7].isa + 1) + 40), 0);
        v46 = 1;
        objc_storeStrong(&v39, 0);
      }
    }

    else
    {
      v44 = _AKLogSystem();
      v43 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_66(v57, *(*(a1[7].isa + 1) + 40));
        _os_log_error_impl(&dword_193225000, v44, v43, "Task %{public}@ Request response not of expected class!", v57, 0xCu);
      }

      objc_storeStrong(&v44, 0);
      v22 = a1[6].isa;
      v23 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7029];
      (*(v22 + 2))(v22, 0);
      MEMORY[0x1E69E5920](v23);
      objc_storeStrong((*(a1[7].isa + 1) + 40), 0);
      v46 = 1;
    }

    objc_storeStrong(&v45, 0);
    if (!v46)
    {
      v46 = 0;
    }
  }

  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v29 = 0;
  objc_storeStrong(&v29, a5);
  v20 = [v30 protectionSpace];
  v19 = [v20 host];
  v21 = [v19 containsString:@"icloud.com"];
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](v20);
  if (v21)
  {
    v28 = _AKLogSystem();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      log = v28;
      type = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_impl(&dword_193225000, log, type, "Detected an iCloud URL request, will not perform IdMS cert validation.", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    (*(v29 + 2))(v29, 1, 0);
  }

  else
  {
    v13 = [v30 protectionSpace];
    v12 = [v13 authenticationMethod];
    v14 = [v12 isEqualToString:*MEMORY[0x1E695AB80]];
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v13);
    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }

    v10 = [v30 protectionSpace];
    v7 = [v10 serverTrust];
    v9 = [v30 protectionSpace];
    v8 = [v9 host];
    v11 = [AKCertificatePinning isValidCertificateTrust:v7 forHostname:?];
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    v25 = v11;
    if (v11)
    {
LABEL_10:
      (*(v29 + 2))(v29, 1, 0);
    }

    else
    {
      v24 = _AKLogSystem();
      v23 = 16;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v5 = v24;
        v6 = v23;
        __os_log_helper_16_0_0(v22);
        _os_log_error_impl(&dword_193225000, v5, v6, "Server cert validity check failed!", v22, 2u);
      }

      objc_storeStrong(&v24, 0);
      (*(v29 + 2))(v29, 2, 0);
    }
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

@end