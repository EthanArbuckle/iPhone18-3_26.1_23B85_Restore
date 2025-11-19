@interface AAURLSession
+ (AAURLSession)sharedPinningOnlySession;
+ (AAURLSession)sharedPinningSession;
+ (AAURLSession)sharedSession;
+ (AAURLSession)sharedSessionWithNoUrlCache;
+ (AAURLSession)sharedSigningSession;
- (id)_enqueueRequest:(id)a3 completion:(id)a4;
- (id)_initRequiringSigning:(BOOL)a3 requiresPinning:(BOOL)a4 requiresUrlCache:(BOOL)a5;
- (id)bodyTaskWithRequest:(id)a3 completion:(id)a4;
- (id)bodyTaskWithURL:(id)a3 completion:(id)a4;
- (id)dataTaskWithRequest:(id)a3 completion:(id)a4;
- (id)dataTaskWithURL:(id)a3 completion:(id)a4;
- (id)initForProxiedDevice:(id)a3 anisetteDataProvider:(id)a4;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)_sessionQueue_dequeueTask:(id)a3 withResponse:(id)a4 error:(id)a5;
- (void)_sessionQueue_enqueueTask:(id)a3 completion:(id)a4;
- (void)_sessionQueue_updateTask:(id)a3 withData:(id)a4;
- (void)resetSessionCache;
@end

@implementation AAURLSession

+ (AAURLSession)sharedSession
{
  if (sharedSession_onceToken != -1)
  {
    +[AAURLSession sharedSession];
  }

  v3 = sharedSession_sharedSession;

  return v3;
}

+ (AAURLSession)sharedSessionWithNoUrlCache
{
  if (sharedSessionWithNoUrlCache_onceToken != -1)
  {
    +[AAURLSession sharedSessionWithNoUrlCache];
  }

  v3 = sharedSessionWithNoUrlCache_sharedSession;

  return v3;
}

uint64_t __43__AAURLSession_sharedSessionWithNoUrlCache__block_invoke()
{
  sharedSessionWithNoUrlCache_sharedSession = [[AAURLSession alloc] _initRequiringSigning:0 requiresPinning:0 requiresUrlCache:0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __29__AAURLSession_sharedSession__block_invoke()
{
  sharedSession_sharedSession = [[AAURLSession alloc] _initRequiringSigning:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (AAURLSession)sharedSigningSession
{
  if (sharedSigningSession_onceToken != -1)
  {
    +[AAURLSession sharedSigningSession];
  }

  v3 = sharedSigningSession_sharedSession;

  return v3;
}

uint64_t __36__AAURLSession_sharedSigningSession__block_invoke()
{
  sharedSigningSession_sharedSession = [[AAURLSession alloc] _initRequiringSigning:1];

  return MEMORY[0x1EEE66BB8]();
}

+ (AAURLSession)sharedPinningSession
{
  if (sharedPinningSession_onceToken != -1)
  {
    +[AAURLSession sharedPinningSession];
  }

  v3 = sharedPinningSession_sharedSession;

  return v3;
}

uint64_t __36__AAURLSession_sharedPinningSession__block_invoke()
{
  sharedPinningSession_sharedSession = [[AAURLSession alloc] _initRequiringSigning:1 requiresPinning:1];

  return MEMORY[0x1EEE66BB8]();
}

+ (AAURLSession)sharedPinningOnlySession
{
  if (sharedPinningOnlySession_onceToken != -1)
  {
    +[AAURLSession sharedPinningOnlySession];
  }

  v3 = sharedPinningOnlySession_sharedSession;

  return v3;
}

uint64_t __40__AAURLSession_sharedPinningOnlySession__block_invoke()
{
  sharedPinningOnlySession_sharedSession = [[AAURLSession alloc] _initRequiringSigning:0 requiresPinning:1];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initRequiringSigning:(BOOL)a3 requiresPinning:(BOOL)a4 requiresUrlCache:(BOOL)a5
{
  v32 = *MEMORY[0x1E69E9840];
  if (_AAURLSessionRegisterProtocol_onceToken != -1)
  {
    [AAURLSession _initRequiringSigning:requiresPinning:requiresUrlCache:];
  }

  v25.receiver = self;
  v25.super_class = AAURLSession;
  v9 = [(AAURLSession *)&v25 init];
  v10 = v9;
  if (v9)
  {
    v9->_requiresSigning = a3;
    v9->_requiresICSSPinning = a4;
    v9->_requiresUrlCache = a5;
    v11 = [[_AAURLSessionDelegate alloc] initWithDelegate:v9];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.AppleAccount.SessionQ", v12);
    sessionQueue = v10->_sessionQueue;
    v10->_sessionQueue = v13;

    v15 = _AAURLSessionCreateSession(v11, v10->_sessionQueue, v10->_requiresSigning, v10->_requiresUrlCache);
    session = v10->_session;
    v10->_session = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingSessionOperations = v10->_pendingSessionOperations;
    v10->_pendingSessionOperations = v17;

    v19 = _AALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = @"NO";
      requiresSigning = v10->_requiresSigning;
      if (v10->_requiresUrlCache)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      *buf = 138412802;
      if (requiresSigning)
      {
        v20 = @"YES";
      }

      v27 = v22;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "AAURLSession initiated with _requiresUrlCache: %@, _requiresSigning: %@, _requiresICSSPinning: %@", buf, 0x20u);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)initForProxiedDevice:(id)a3 anisetteDataProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_AAURLSessionRegisterProtocol_onceToken != -1)
  {
    [AAURLSession _initRequiringSigning:requiresPinning:requiresUrlCache:];
  }

  v22.receiver = self;
  v22.super_class = AAURLSession;
  v8 = [(AAURLSession *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v8->_requiresSigning = 0;
    v10 = [[_AAURLSessionDelegate alloc] initWithDelegate:v8];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.AppleAccount.SessionQ", v11);
    sessionQueue = v9->_sessionQueue;
    v9->_sessionQueue = v12;

    v14 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
    [v14 setWaitsForConnectivity:1];
    [v14 setTimeoutIntervalForResource:60.0];
    v15 = objc_alloc_init(MEMORY[0x1E698DCC8]);
    [v15 setPairedDevice:v6];
    [v15 setAnisetteDataProvider:v7];
    [v14 set_appleIDContext:v15];
    v16 = [MEMORY[0x1E696ADC8] aa_operationQueueWithUnderlyingQueue:v9->_sessionQueue];
    v17 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v14 delegate:v10 delegateQueue:v16];
    session = v9->_session;
    v9->_session = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingSessionOperations = v9->_pendingSessionOperations;
    v9->_pendingSessionOperations = v19;
  }

  return v9;
}

- (void)resetSessionCache
{
  v3 = _AAURLSessionSharedCache(self->_requiresUrlCache);
  [v3 removeAllCachedResponses];
  v4 = dispatch_semaphore_create(0);
  session = self->_session;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__AAURLSession_resetSessionCache__block_invoke;
  v7[3] = &unk_1E7C9A868;
  v8 = v4;
  v6 = v4;
  [(NSURLSession *)session resetWithCompletionHandler:v7];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)dataTaskWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAURLSession dataTaskWithURL:completion:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [AAURLSession dataTaskWithURL:completion:];
LABEL_3:
  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AAURLSession dataTaskWithURL:completion:];
  }

  v10 = [MEMORY[0x1E695AC68] requestWithURL:v6];
  v11 = [(AAURLSession *)self dataTaskWithRequest:v10 completion:v8];

  return v11;
}

- (id)dataTaskWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAURLSession dataTaskWithRequest:completion:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [AAURLSession dataTaskWithRequest:completion:];
LABEL_3:
  v9 = [(AAURLSession *)self _enqueueRequest:v6 completion:v8];

  return v9;
}

- (id)bodyTaskWithURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAURLSession bodyTaskWithURL:completion:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [AAURLSession bodyTaskWithURL:completion:];
LABEL_3:
  v9 = [MEMORY[0x1E695AC68] requestWithURL:v6];
  v10 = [(AAURLSession *)self bodyTaskWithRequest:v9 completion:v8];

  return v10;
}

- (id)bodyTaskWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAURLSession bodyTaskWithRequest:completion:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [AAURLSession bodyTaskWithRequest:completion:];
LABEL_3:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__AAURLSession_bodyTaskWithRequest_completion___block_invoke;
  v12[3] = &unk_1E7C9BD18;
  v13 = v8;
  v9 = v8;
  v10 = [(AAURLSession *)self dataTaskWithRequest:v6 completion:v12];

  return v10;
}

void __47__AAURLSession_bodyTaskWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    objc_opt_class();
    v9 = v7;
    if (objc_opt_isKindOfClass())
    {
      v10 = MEMORY[0x1E6985E00];
      v11 = [v9 MIMEType];
      v12 = [v10 dictionaryFromObject:v17 ofType:v11];

      if (([v9 statusCode] - 200) > 0x63)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v15 = *(a1 + 32);
        if (isKindOfClass)
        {
          [MEMORY[0x1E696ABC0] aa_errorWithServerResponse:v12];
        }

        else
        {
          [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402 underlyingError:v8];
        }
        v16 = ;
        (*(v15 + 16))(v15, 0, v9, v16);
      }

      else
      {
        (*(*(a1 + 32) + 16))();
      }
    }

    else
    {

      v13 = *(a1 + 32);
      v9 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402 underlyingError:v8];
      (*(v13 + 16))(v13, 0, 0, v9);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)_enqueueRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    [AAURLSession _enqueueRequest:completion:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [AAURLSession _enqueueRequest:completion:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [(NSURLSession *)self->_session dataTaskWithRequest:v6];
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AAURLSession__enqueueRequest_completion___block_invoke;
  block[3] = &unk_1E7C9A898;
  block[4] = self;
  v11 = v9;
  v17 = v11;
  v18 = v8;
  v12 = v8;
  dispatch_async(sessionQueue, block);
  v13 = v18;
  v14 = v11;

  return v11;
}

- (void)_sessionQueue_enqueueTask:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAURLSession _sessionQueue_enqueueTask:completion:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [AAURLSession _sessionQueue_enqueueTask:completion:];
LABEL_3:
  dispatch_assert_queue_V2(self->_sessionQueue);
  v9 = [_AAURLSessionOperation operationWithCompletion:v8];
  [(NSMutableDictionary *)self->_pendingSessionOperations setObject:v9 forKeyedSubscript:v6];

  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AAURLSession _sessionQueue_enqueueTask:completion:];
  }
}

- (void)_sessionQueue_updateTask:(id)a3 withData:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AAURLSession _sessionQueue_updateTask:withData:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [AAURLSession _sessionQueue_updateTask:withData:];
LABEL_3:
  dispatch_assert_queue_V2(self->_sessionQueue);
  v7 = [(NSMutableDictionary *)self->_pendingSessionOperations objectForKeyedSubscript:v8];
  [v7 appendData:v6];
}

- (void)_sessionQueue_dequeueTask:(id)a3 withResponse:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [AAURLSession _sessionQueue_dequeueTask:withResponse:error:];
  }

  v12 = v10;
  v13 = v11;
  if ((v12 != 0) != (v13 == 0))
  {
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid exclusivity not satisfying: response ^ error" userInfo:0];
    objc_exception_throw(v17);
  }

  v14 = v13;

  dispatch_assert_queue_V2(self->_sessionQueue);
  v15 = [(NSMutableDictionary *)self->_pendingSessionOperations aaf_removeObjectForKey:v9];
  if (!v15)
  {
    [AAURLSession _sessionQueue_dequeueTask:a2 withResponse:self error:v9];
  }

  v16 = _AALogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [AAURLSession _sessionQueue_dequeueTask:withResponse:error:];
  }

  [v15 invokeCompletionWithResponse:v12 error:v14];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (v10)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_8:
    [AAURLSession URLSession:dataTask:didReceiveData:];
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [AAURLSession URLSession:dataTask:didReceiveData:];
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v9)
  {
    goto LABEL_4;
  }

LABEL_9:
  [AAURLSession URLSession:dataTask:didReceiveData:];
LABEL_4:
  dispatch_assert_queue_V2(self->_sessionQueue);
  [(AAURLSession *)self _sessionQueue_updateTask:v8 withData:v9];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (!v11)
  {
    [AAURLSession URLSession:didBecomeInvalidWithError:];
  }

  dispatch_assert_queue_V2(self->_sessionQueue);
  if (self->_session != v11)
  {
    [(AAURLSession *)a2 URLSession:v11 didBecomeInvalidWithError:?];
  }

  [(NSMutableDictionary *)self->_pendingSessionOperations enumerateKeysAndObjectsUsingBlock:&__block_literal_global_202];
  v8 = [[_AAURLSessionDelegate alloc] initWithDelegate:self];
  v9 = _AAURLSessionCreateSession(v8, self->_sessionQueue, self->_requiresSigning, self->_requiresUrlCache);
  session = self->_session;
  self->_session = v9;
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v10 = a5;
  if (self->_requiresICSSPinning)
  {
    v7 = a4;
    v8 = objc_opt_new();
    v9 = [v8 validateCertificateTrustWithChallenge:v7 type:2];
  }

  else
  {
    v9 = 1;
  }

  v10[2](v10, v9, 0);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  if (!v17)
  {
    [AAURLSession URLSession:task:didCompleteWithError:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_14:
    [AAURLSession URLSession:task:didCompleteWithError:];
    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_3:
  dispatch_assert_queue_V2(self->_sessionQueue);
  v10 = [v8 response];
  v11 = v10;
  if (v9 || !v10)
  {
    [(AAURLSession *)self _sessionQueue_dequeueTask:v8 withResponse:0 error:v9];
  }

  else
  {
    objc_opt_class();
    v12 = v11;
    if (objc_opt_isKindOfClass())
    {
      v13 = self;
      v14 = v8;
      v15 = v12;
      v16 = 0;
    }

    else
    {

      v12 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402 underlyingError:0];
      v13 = self;
      v14 = v8;
      v15 = 0;
      v16 = v12;
    }

    [(AAURLSession *)v13 _sessionQueue_dequeueTask:v14 withResponse:v15 error:v16];
  }
}

- (void)dataTaskWithURL:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"url" object:? file:? lineNumber:? description:?];
}

- (void)dataTaskWithURL:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)dataTaskWithURL:completion:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, v0, v1, "Creating data task with URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dataTaskWithRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)dataTaskWithRequest:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)bodyTaskWithURL:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"url" object:? file:? lineNumber:? description:?];
}

- (void)bodyTaskWithURL:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)bodyTaskWithRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)bodyTaskWithRequest:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)_enqueueRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)_enqueueRequest:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)_sessionQueue_enqueueTask:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"task" object:? file:? lineNumber:? description:?];
}

- (void)_sessionQueue_enqueueTask:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)_sessionQueue_enqueueTask:completion:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, v0, v1, "Enqueued dataTask %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_sessionQueue_updateTask:withData:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"task" object:? file:? lineNumber:? description:?];
}

- (void)_sessionQueue_updateTask:withData:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

- (void)_sessionQueue_dequeueTask:withResponse:error:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"task" object:? file:? lineNumber:? description:?];
}

- (void)_sessionQueue_dequeueTask:(uint64_t)a1 withResponse:(uint64_t)a2 error:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"AAURLSession.m" lineNumber:405 description:{@"Failed to find handler for task: %@", a3}];
}

- (void)_sessionQueue_dequeueTask:withResponse:error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, v0, v1, "Dequeued dataTask %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:dataTask:didReceiveData:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"session" object:? file:? lineNumber:? description:?];
}

- (void)URLSession:dataTask:didReceiveData:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"task" object:? file:? lineNumber:? description:?];
}

- (void)URLSession:dataTask:didReceiveData:.cold.3()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

- (void)URLSession:didBecomeInvalidWithError:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"session" object:? file:? lineNumber:? description:?];
}

- (void)URLSession:(uint64_t)a3 didBecomeInvalidWithError:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"AAURLSession.m" lineNumber:430 description:{@"Received invalidation for unexpected session (%@)!", a3}];
}

- (void)URLSession:task:didCompleteWithError:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"session" object:? file:? lineNumber:? description:?];
}

- (void)URLSession:task:didCompleteWithError:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"task" object:? file:? lineNumber:? description:?];
}

@end