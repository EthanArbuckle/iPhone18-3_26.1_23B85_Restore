@interface AAAbsintheSigner
+ (AAAbsintheSigner)sharedSigner;
+ (id)_contextCreationBlock;
+ (void)_setContextCreationBlock:(id)a3;
- (AAAbsintheContext)context;
- (AAAbsintheSigner)initWithCacheTimeout:(double)a3;
- (id)_contextLock_contextInvalidatingIfNecessary;
- (void)_contextLock_dequeueContextCleanup;
- (void)_contextLock_enqueueContextCleanup;
- (void)_contextQueue_contextWithCompletion:(id)a3;
- (void)_contextWithCompletion:(id)a3;
- (void)_fetchCertificateDataWithCompletion:(id)a3;
- (void)_fetchSessionInfoWithRequestInfo:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)setContext:(id)a3;
- (void)signatureForData:(id)a3 completion:(id)a4;
@end

@implementation AAAbsintheSigner

+ (AAAbsintheSigner)sharedSigner
{
  if (sharedSigner_onceToken != -1)
  {
    +[AAAbsintheSigner sharedSigner];
  }

  v3 = sharedSigner_sharedSigner;

  return v3;
}

uint64_t __32__AAAbsintheSigner_sharedSigner__block_invoke()
{
  sharedSigner_sharedSigner = [[AAAbsintheSigner alloc] initWithCacheTimeout:540.0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_contextCreationBlock
{
  if (_contextCreationBlock_onceToken != -1)
  {
    +[AAAbsintheSigner _contextCreationBlock];
  }

  v2 = _Block_copy(_AAContextCreationBlock);

  return v2;
}

void __41__AAAbsintheSigner__contextCreationBlock__block_invoke()
{
  if (!_AAContextCreationBlock)
  {
    _AAContextCreationBlock = &__block_literal_global_33;
  }
}

AAAbsintheContext *__41__AAAbsintheSigner__contextCreationBlock__block_invoke_2()
{
  v0 = objc_alloc_init(AAAbsintheContext);

  return v0;
}

+ (void)_setContextCreationBlock:(id)a3
{
  v3 = a3;
  v6 = v3;
  if (!v3)
  {
    +[AAAbsintheSigner _setContextCreationBlock:];
    v3 = 0;
  }

  v4 = _Block_copy(v3);
  v5 = _AAContextCreationBlock;
  _AAContextCreationBlock = v4;
}

- (AAAbsintheSigner)initWithCacheTimeout:(double)a3
{
  v13.receiver = self;
  v13.super_class = AAAbsintheSigner;
  v4 = [(AAAbsintheSigner *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_cacheTimeout = a3;
    v6 = +[AAURLSession sharedSession];
    session = v5->_session;
    v5->_session = v6;

    v5->_contextLock._os_unfair_lock_opaque = 0;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.AppleAccount.NACQ", v8);
    contextQueue = v5->_contextQueue;
    v5->_contextQueue = v9;

    contextCache = v5->_contextCache;
    v5->_contextCache = 0;
  }

  return v5;
}

- (void)dealloc
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__AAAbsintheSigner_dealloc__block_invoke;
  v4[3] = &unk_1E7C9A868;
  v4[4] = self;
  os_unfair_lock_lock(&self->_contextLock);
  __27__AAAbsintheSigner_dealloc__block_invoke(v4);
  os_unfair_lock_unlock(&self->_contextLock);
  v3.receiver = self;
  v3.super_class = AAAbsintheSigner;
  [(AAAbsintheSigner *)&v3 dealloc];
}

void __27__AAAbsintheSigner_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 32);
  *(v2 + 32) = 0;
}

- (void)signatureForData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [AAAbsintheSigner signatureForData:completion:];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__AAAbsintheSigner_signatureForData_completion___block_invoke;
  v10[3] = &unk_1E7C9BC28;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(AAAbsintheSigner *)self _contextWithCompletion:v10];
}

void __48__AAAbsintheSigner_signatureForData_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v8 = 0;
    v4 = [a2 cao1NI5PNJBn:v3 error:&v8];
    v5 = v8;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (AAAbsintheContext)context
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__AAAbsintheSigner_context__block_invoke;
  v5[3] = &unk_1E7C9BC50;
  v5[4] = self;
  os_unfair_lock_lock(&self->_contextLock);
  v3 = __27__AAAbsintheSigner_context__block_invoke(v5);
  os_unfair_lock_unlock(&self->_contextLock);

  return v3;
}

- (id)_contextLock_contextInvalidatingIfNecessary
{
  os_unfair_lock_assert_owner(&self->_contextLock);
  v3 = [(AAAbsintheSignerContextCache *)self->_contextCache creationDate];
  [v3 timeIntervalSinceNow];
  v5 = v4;
  v6 = -self->_cacheTimeout;

  if (v5 < v6)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [AAAbsintheSigner _contextLock_contextInvalidatingIfNecessary];
    }

    contextCache = self->_contextCache;
    self->_contextCache = 0;

    [(AAAbsintheSigner *)self _contextLock_dequeueContextCleanup];
  }

  v9 = [(AAAbsintheSignerContextCache *)self->_contextCache context];

  return v9;
}

- (void)setContext:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__AAAbsintheSigner_setContext___block_invoke;
  v6[3] = &unk_1E7C9ADE8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  os_unfair_lock_lock(&self->_contextLock);
  __31__AAAbsintheSigner_setContext___block_invoke(v6);
  os_unfair_lock_unlock(&self->_contextLock);
}

uint64_t __31__AAAbsintheSigner_setContext___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [AAAbsintheSignerContextCache cacheWithContext:?];
    v3 = *(a1 + 40);
    v4 = *(v3 + 32);
    *(v3 + 32) = v2;

    v5 = *(a1 + 40);

    return [v5 _contextLock_enqueueContextCleanup];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;

    v9 = *(a1 + 40);

    return [v9 _contextLock_dequeueContextCleanup];
  }
}

- (void)_contextLock_enqueueContextCleanup
{
  os_unfair_lock_assert_owner(&self->_contextLock);
  contextTimerSource = self->_contextTimerSource;
  if (contextTimerSource)
  {
    dispatch_source_cancel(contextTimerSource);
  }

  objc_initWeak(&location, self);
  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_contextQueue);
  v5 = self->_contextTimerSource;
  self->_contextTimerSource = v4;

  v6 = self->_contextTimerSource;
  [(AAAbsintheSigner *)self cacheTimeout];
  v8 = dispatch_walltime(0, (v7 * 1000000000.0));
  dispatch_source_set_timer(v6, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  v9 = self->_contextTimerSource;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AAAbsintheSigner__contextLock_enqueueContextCleanup__block_invoke;
  v10[3] = &unk_1E7C9A818;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v9, v10);
  dispatch_resume(self->_contextTimerSource);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __54__AAAbsintheSigner__contextLock_enqueueContextCleanup__block_invoke(uint64_t a1)
{
  v2 = _AALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__AAAbsintheSigner__contextLock_enqueueContextCleanup__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setContext:0];
}

- (void)_contextLock_dequeueContextCleanup
{
  os_unfair_lock_assert_owner(&self->_contextLock);
  contextTimerSource = self->_contextTimerSource;
  if (contextTimerSource)
  {
    dispatch_source_cancel(contextTimerSource);
    v4 = self->_contextTimerSource;
    self->_contextTimerSource = 0;
  }
}

- (void)_contextWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [AAAbsintheSigner _contextWithCompletion:];
  }

  v5 = [(AAAbsintheSigner *)self context];
  if (v5)
  {
    v4[2](v4, v5, 0);
  }

  else
  {
    contextQueue = self->_contextQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__AAAbsintheSigner__contextWithCompletion___block_invoke;
    v7[3] = &unk_1E7C9BC78;
    v7[4] = self;
    v8 = v4;
    dispatch_async(contextQueue, v7);
  }
}

- (void)_contextQueue_contextWithCompletion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [AAAbsintheSigner _contextQueue_contextWithCompletion:];
  }

  dispatch_assert_queue_V2(self->_contextQueue);
  v5 = [(AAAbsintheSigner *)self context];
  if (v5)
  {
    v4[2](v4, v5, 0);
  }

  else
  {
    v6 = _AASignpostLogSystem();
    v7 = _AASignpostCreate(v6);
    v9 = v8;

    v10 = _AASignpostLogSystem();
    v11 = v10;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "InitializeAbsinthe", " enableTelemetry=YES ", buf, 2u);
    }

    v12 = _AASignpostLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v25 = v7;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: InitializeAbsinthe  enableTelemetry=YES ", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke;
    aBlock[3] = &unk_1E7C9BCA0;
    v22 = v7;
    v23 = v9;
    aBlock[4] = self;
    v13 = v4;
    v21 = v13;
    v14 = _Block_copy(aBlock);
    dispatch_suspend(self->_contextQueue);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_58;
    v17[3] = &unk_1E7C9BCF0;
    v17[4] = self;
    v18 = v14;
    v19 = v13;
    v15 = v14;
    [(AAAbsintheSigner *)self _fetchCertificateDataWithCompletion:v17];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if ((v7 != 0) != (v8 == 0))
  {
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid exclusivity not satisfying: context ^ error" userInfo:0];
    objc_exception_throw(v23);
  }

  v9 = v8;

  Nanoseconds = _AASignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v11 = _AASignpostLogSystem();
  v12 = v11;
  v13 = *(a1 + 48);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = _AAErrorUnderlyingError(v9);
    v24 = 67240192;
    LODWORD(v25) = [v14 code];
    _os_signpost_emit_with_name_impl(&dword_1B6F6A000, v12, OS_SIGNPOST_INTERVAL_END, v13, "InitializeAbsinthe", " Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 8u);
  }

  v15 = _AASignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = *(a1 + 48);
    v18 = _AAErrorUnderlyingError(v9);
    v19 = [v18 code];
    v24 = 134218496;
    v25 = v17;
    v26 = 2048;
    v27 = v16;
    v28 = 1026;
    v29 = v19;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: InitializeAbsinthe  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v24, 0x1Cu);
  }

  v20 = _AALogSystem();
  v21 = v20;
  if (v7)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_cold_2();
    }

    [*(a1 + 32) setContext:v7];
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_cold_1();
    }
  }

  dispatch_resume(*(*(a1 + 32) + 16));
  (*(*(a1 + 40) + 16))();

  v22 = *MEMORY[0x1E69E9840];
}

void __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_58_cold_1();
    }

    v8 = +[AAAbsintheSigner _contextCreationBlock];
    v9 = v8[2]();

    v21 = 0;
    v10 = [v9 TgBfoO2wtF5L:v5 error:&v21];
    v11 = v21;
    v12 = _AALogSystem();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_58_cold_2();
      }

      v14 = *(a1 + 32);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_59;
      v18[3] = &unk_1E7C9BCC8;
      v19 = v9;
      v20 = *(a1 + 40);
      [v14 _fetchSessionInfoWithRequestInfo:v10 completion:v18];
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_58_cold_3();
      }

      (*(*(a1 + 40) + 16))();
    }

LABEL_16:
    goto LABEL_17;
  }

  v15 = _AALogSystem();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (!v6)
  {
    if (v16)
    {
      __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_58_cold_5();
    }

    v17 = *(a1 + 48);
    v9 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402];
    (*(v17 + 16))(v17, 0, v9);
    goto LABEL_16;
  }

  if (v16)
  {
    __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_58_cold_4();
  }

  (*(*(a1 + 40) + 16))();
LABEL_17:
}

void __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _AALogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_59_cold_1();
    }

    v9 = *(a1 + 32);
    v16 = 0;
    v10 = [v9 R6XtwiyjL3q2:v5 error:&v16];
    v11 = v16;
    v12 = _AALogSystem();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_59_cold_3();
      }

      v14 = *(a1 + 32);
      v15 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_59_cold_2();
      }

      v15 = *(*(a1 + 40) + 16);
    }

    v15();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_59_cold_4();
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_fetchCertificateDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFF8] aa_URLWithEndpoint:@"qualifyCert"];
  session = self->_session;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__AAAbsintheSigner__fetchCertificateDataWithCompletion___block_invoke;
  v9[3] = &unk_1E7C9BD18;
  v10 = v4;
  v7 = v4;
  v8 = [(AAURLSession *)session dataTaskWithURL:v5 completion:v9];
  [v8 resume];
}

void __56__AAAbsintheSigner__fetchCertificateDataWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __56__AAAbsintheSigner__fetchCertificateDataWithCompletion___block_invoke_cold_1();
  }

  if (v8)
  {
    objc_opt_class();
    v11 = v8;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if ([v12 statusCode] == 200)
    {
      v14 = *(a1 + 32);
      if (v7)
      {
        (*(v14 + 16))(v14, v7, 0);
LABEL_16:

        goto LABEL_17;
      }

      v16 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402 underlyingError:v9];
      (*(v14 + 16))(v14, 0, v16);
    }

    else
    {
      v15 = *(a1 + 32);
      v16 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402 underlyingError:v9];
      (*(v15 + 16))(v15, 0, v16);
    }

    goto LABEL_16;
  }

  v13 = *(a1 + 32);
  if (!v9)
  {
    v12 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402];
    (*(v13 + 16))(v13, 0, v12);
    goto LABEL_16;
  }

  (*(v13 + 16))(v13, 0, v9);
LABEL_17:
}

- (void)_fetchSessionInfoWithRequestInfo:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DFF8];
  v8 = a3;
  v9 = [v7 aa_URLWithEndpoint:@"qualifySession"];
  v10 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v9];
  v11 = [v8 base64EncodedStringWithOptions:0];

  [v10 setValue:v11 forHTTPHeaderField:@"X-MMe-Nas-Session"];
  session = self->_session;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__AAAbsintheSigner__fetchSessionInfoWithRequestInfo_completion___block_invoke;
  v15[3] = &unk_1E7C9BD40;
  v16 = v6;
  v13 = v6;
  v14 = [(AAURLSession *)session bodyTaskWithRequest:v10 completion:v15];
  [v14 resume];
}

void __64__AAAbsintheSigner__fetchSessionInfoWithRequestInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __64__AAAbsintheSigner__fetchSessionInfoWithRequestInfo_completion___block_invoke_cold_1();
  }

  objc_opt_class();
  v11 = v7;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_8:
    v14 = *(a1 + 32);
    if (v9)
    {
      (*(v14 + 16))(v14, 0, v9);
    }

    else
    {
      v15 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402];
      (*(v14 + 16))(v14, 0, v15);
    }

    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  v12 = [v11 objectForKeyedSubscript:@"session-info"];
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v13 options:0];
    v17 = *(a1 + 32);
    if (v16)
    {
      (*(v17 + 16))(v17, v16, 0);
    }

    else
    {
      v19 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402 underlyingError:v9];
      (*(v17 + 16))(v17, 0, v19);
    }
  }

  else
  {
    v18 = *(a1 + 32);
    v16 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4402 underlyingError:v9];
    (*(v18 + 16))(v18, 0, v16);
  }

LABEL_18:
}

+ (void)_setContextCreationBlock:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"contextCreationBlock" object:? file:? lineNumber:? description:?];
}

- (void)signatureForData:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)_contextWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)_contextQueue_contextWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to initialize NAC session, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_58_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to fetch request info %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_58_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to fetch certificate with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_59_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to establish key with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__AAAbsintheSigner__contextQueue_contextWithCompletion___block_invoke_59_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to fetch session info with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__AAAbsintheSigner__fetchCertificateDataWithCompletion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "Certificate fetch responded with %@ - %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __64__AAAbsintheSigner__fetchSessionInfoWithRequestInfo_completion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_1B6F6A000, v0, v1, "Session fetch responded with %@ - %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end