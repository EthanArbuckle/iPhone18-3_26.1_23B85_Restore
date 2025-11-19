@interface AVVCSessionFactory
+ (id)sharedInstance;
- (AVVCSessionFactory)init;
- (id)_wqCreatePrimarySessionManagerIfNeeded:(id)a3 clientType:(int64_t)a4 error:(id *)a5;
- (id)auxSessionManagers;
- (id)sessionForContext:(id)a3 clientType:(int64_t)a4 error:(id *)a5;
- (id)sessionForContext:(id)a3 error:(id *)a4;
- (id)sessionManagerForContext:(id)a3 clientType:(int64_t)a4 error:(id *)a5;
- (void)_wqCreateAuxSessionAndManagerForDeviceUID:(id)a3 clientType:(int64_t)a4 session:(id *)a5 manager:(id *)a6 error:(id *)a7;
- (void)_wqSessionAndManagerForContext:(id)a3 clientType:(int64_t)a4 session:(id *)a5 manager:(id *)a6 error:(id *)a7;
- (void)cleanupContext:(id)a3;
- (void)releasePrimarySessionManager;
- (void)sessionForContext:(id)a3 clientType:(int64_t)a4 completion:(id)a5;
- (void)sessionManagerForContext:(id)a3 clientType:(int64_t)a4 completion:(id)a5;
@end

@implementation AVVCSessionFactory

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AVVCSessionFactory_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[AVVCSessionFactory sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[AVVCSessionFactory sharedInstance]::onceToken, block);
  }

  v2 = sSharedInstance;

  return v2;
}

- (void)releasePrimarySessionManager
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AVVCSessionFactory_releasePrimarySessionManager__block_invoke;
  block[3] = &unk_1E7EF6628;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

uint64_t __50__AVVCSessionFactory_releasePrimarySessionManager__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  v4 = v2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) primarySessionManager];
    v8 = 136315650;
    v9 = "AVVCSessionFactory.mm";
    v10 = 1024;
    v11 = 351;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Releasing primary session manager (%p)", &v8, 0x1Cu);
  }

LABEL_8:
  result = [*(a1 + 32) setPrimarySessionManager:0];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)auxSessionManagers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1283;
  v10 = __Block_byref_object_dispose__1284;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AVVCSessionFactory_auxSessionManagers__block_invoke;
  v5[3] = &unk_1E7EF5450;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__AVVCSessionFactory_auxSessionManagers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) sessionManagerMap];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)cleanupContext:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__AVVCSessionFactory_cleanupContext___block_invoke;
  v7[3] = &unk_1E7EF53D8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __37__AVVCSessionFactory_cleanupContext___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (contextIsRemora(*(a1 + 32)))
  {
    v2 = [*(a1 + 32) activationDeviceUID];
    if (v2)
    {
      v3 = [*(a1 + 32) activationDeviceUID];
      v4 = [v3 length];

      if (v4)
      {
        v5 = [*(a1 + 40) sessionManagerMap];
        v6 = [*(a1 + 32) activationDeviceUID];
        v7 = [v5 objectForKeyedSubscript:v6];

        v8 = [v7 audioSession];
        if (kAVVCScope)
        {
          v9 = *kAVVCScope;
          if (!v9)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v9 = MEMORY[0x1E69E9C10];
          v16 = MEMORY[0x1E69E9C10];
        }

        v17 = v9;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          CAX4CCString::CAX4CCString(v31, [*(a1 + 32) activationMode]);
          v18 = [*(a1 + 32) activationDeviceUID];
          v19 = [v7 audioSession];
          *buf = 136316418;
          v33 = "AVVCSessionFactory.mm";
          v34 = 1024;
          v35 = 311;
          v36 = 2080;
          v37 = v31;
          v38 = 2112;
          v39 = v18;
          v40 = 2048;
          v41 = v19;
          v42 = 2048;
          v43 = v7;
          _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Clean up context(%s, %@), about to release session(%p) and manager(%p)", buf, 0x3Au);
        }

LABEL_24:
        if (!v8)
        {
          if (kAVVCScope)
          {
            v23 = *kAVVCScope;
            if (!v23)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v23 = MEMORY[0x1E69E9C10];
            v25 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v33 = "AVVCSessionFactory.mm";
            v34 = 1024;
            v35 = 323;
            _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Unexpected missing session when cleaning up context", buf, 0x12u);
          }

          goto LABEL_40;
        }

        v20 = [*(a1 + 40) sessionWillBeDestroyedBlock];
        v21 = v20 == 0;

        if (v21)
        {
LABEL_41:
          v27 = [*(a1 + 40) sessionManagerMap];
          v28 = [*(a1 + 32) activationDeviceUID];
          [v27 setObject:0 forKeyedSubscript:v28];

          goto LABEL_42;
        }

        v22 = [*(a1 + 40) sessionWillBeDestroyedBlock];
        v30 = 0;
        (v22)[2](v22, v7, &v30);
        v23 = v30;

        if (v23)
        {
          if (kAVVCScope)
          {
            v24 = *kAVVCScope;
            if (!v24)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v24 = MEMORY[0x1E69E9C10];
            v26 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v33 = "AVVCSessionFactory.mm";
            v34 = 1024;
            v35 = 318;
            v36 = 2112;
            v37 = v23;
            _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d Unexpected error cleaning up context: %@", buf, 0x1Cu);
          }
        }

LABEL_40:

        goto LABEL_41;
      }
    }

    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    v8 = v11;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v31, [*(a1 + 32) activationMode]);
      v15 = [*(a1 + 32) activationDeviceUID];
      *buf = 136315906;
      v33 = "AVVCSessionFactory.mm";
      v34 = 1024;
      v35 = 328;
      v36 = 2080;
      v37 = v31;
      v38 = 2112;
      v39 = v15;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Can't cleanup because devID is missing in context(%s, %@)", buf, 0x26u);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    v8 = v10;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      CAX4CCString::CAX4CCString(v31, [*(a1 + 32) activationMode]);
      v13 = [*(a1 + 32) activationDeviceUID];
      *buf = 136315906;
      v33 = "AVVCSessionFactory.mm";
      v34 = 1024;
      v35 = 333;
      v36 = 2080;
      v37 = v31;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Nothing to clean up for context(%s, %@)", buf, 0x26u);
    }
  }

  v7 = v8;
LABEL_42:

LABEL_43:
  v29 = *MEMORY[0x1E69E9840];
}

- (id)sessionManagerForContext:(id)a3 clientType:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1283;
  v28 = __Block_byref_object_dispose__1284;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1283;
  v22 = __Block_byref_object_dispose__1284;
  v23 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AVVCSessionFactory_sessionManagerForContext_clientType_error___block_invoke;
  block[3] = &unk_1E7EF5428;
  block[4] = self;
  v10 = v8;
  v14 = v10;
  v15 = &v24;
  v16 = &v18;
  v17 = a4;
  dispatch_sync(workQueue, block);
  if (a5)
  {
    *a5 = v19[5];
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __64__AVVCSessionFactory_sessionManagerForContext_clientType_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  v5 = a1[8];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  obj = v4;
  [v2 _wqSessionAndManagerForContext:v1 clientType:v5 session:0 manager:&obj error:&v7];
  objc_storeStrong((v3 + 40), obj);
  objc_storeStrong((v6 + 40), v7);
}

- (void)sessionManagerForContext:(id)a3 clientType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  workQueue = self->_workQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__AVVCSessionFactory_sessionManagerForContext_clientType_completion___block_invoke;
  v13[3] = &unk_1E7EF5400;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(workQueue, v13);
}

void __69__AVVCSessionFactory_sessionManagerForContext_clientType_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v8 = 0;
  v9 = 0;
  [v2 _wqSessionAndManagerForContext:v3 clientType:v4 session:0 manager:&v9 error:&v8];
  v5 = v9;
  v6 = v8;
  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

- (id)sessionForContext:(id)a3 clientType:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1283;
  v28 = __Block_byref_object_dispose__1284;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1283;
  v22 = __Block_byref_object_dispose__1284;
  v23 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AVVCSessionFactory_sessionForContext_clientType_error___block_invoke;
  block[3] = &unk_1E7EF5428;
  block[4] = self;
  v10 = v8;
  v14 = v10;
  v15 = &v24;
  v16 = &v18;
  v17 = a4;
  dispatch_sync(workQueue, block);
  if (a5)
  {
    *a5 = v19[5];
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __57__AVVCSessionFactory_sessionForContext_clientType_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  v5 = a1[8];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  obj = v4;
  [v2 _wqSessionAndManagerForContext:v1 clientType:v5 session:&obj manager:0 error:&v7];
  objc_storeStrong((v3 + 40), obj);
  objc_storeStrong((v6 + 40), v7);
}

- (void)sessionForContext:(id)a3 clientType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  workQueue = self->_workQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__AVVCSessionFactory_sessionForContext_clientType_completion___block_invoke;
  v13[3] = &unk_1E7EF5400;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(workQueue, v13);
}

void __62__AVVCSessionFactory_sessionForContext_clientType_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v8 = 0;
  v9 = 0;
  [v2 _wqSessionAndManagerForContext:v3 clientType:v4 session:&v9 manager:0 error:&v8];
  v5 = v9;
  v6 = v8;
  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

- (id)sessionForContext:(id)a3 error:(id *)a4
{
  v4 = [(AVVCSessionFactory *)self sessionForContext:a3 clientType:1 error:a4];

  return v4;
}

- (void)_wqSessionAndManagerForContext:(id)a3 clientType:(int64_t)a4 session:(id *)a5 manager:(id *)a6 error:(id *)a7
{
  v55 = *MEMORY[0x1E69E9840];
  v12 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  if (contextIsRemora(v12))
  {
    v13 = [(AVVCContextSettings *)v12 activationDeviceUID];
    if (v13)
    {
      v14 = [(AVVCContextSettings *)v12 activationDeviceUID];
      v15 = [v14 length];

      if (v15)
      {
        sessionManagerMap = self->_sessionManagerMap;
        v17 = [(AVVCContextSettings *)v12 activationDeviceUID];
        v18 = [(NSMutableDictionary *)sessionManagerMap objectForKeyedSubscript:v17];

        v19 = [v18 audioSession];
        v20 = v19;
        if (!v19 || !v18)
        {
          v40 = v18;
          v41 = v19;
          [(AVVCSessionFactory *)self _wqCreateAuxSessionAndManagerForDeviceUID:v12 clientType:a4 session:&v41 manager:&v40 error:a7];
          v21 = v41;

          v22 = v40;
          v18 = v22;
          v20 = v21;
        }

        goto LABEL_18;
      }
    }

    if (kAVVCScope)
    {
      v25 = *kAVVCScope;
      if (!v25)
      {
LABEL_17:
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
        v18 = 0;
        *a7 = v20 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "AVVCSessionFactory.mm";
      v45 = 1024;
      v46 = 200;
      _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d _wqSessionForContext: activationDeviceUID must be specified for this mode", buf, 0x12u);
    }

    goto LABEL_17;
  }

  v23 = [MEMORY[0x1E698D708] sharedInstance];
  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = __86__AVVCSessionFactory__wqSessionAndManagerForContext_clientType_session_manager_error___block_invoke;
  v37 = &unk_1E7EF53D8;
  v20 = v23;
  v38 = v20;
  v24 = v12;
  v39 = v24;
  if ([AVVCSessionFactory _wqSessionAndManagerForContext:clientType:session:manager:error:]::onceToken != -1)
  {
    dispatch_once(&[AVVCSessionFactory _wqSessionAndManagerForContext:clientType:session:manager:error:]::onceToken, &v34);
  }

  v18 = [(AVVCSessionFactory *)self _wqCreatePrimarySessionManagerIfNeeded:v24 clientType:a4 error:a7, v34, v35, v36, v37];

LABEL_18:
  if (kAVVCScope)
  {
    v27 = *kAVVCScope;
    if (!v27)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = MEMORY[0x1E69E9C10];
    v28 = MEMORY[0x1E69E9C10];
  }

  v29 = v27;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    CAX4CCString::CAX4CCString(v42, [(AVVCContextSettings *)v12 activationMode]);
    v30 = [(AVVCContextSettings *)v12 activationDeviceUID];
    *buf = 136316418;
    v44 = "AVVCSessionFactory.mm";
    v45 = 1024;
    v46 = 217;
    v47 = 2048;
    v48 = v20;
    v49 = 2048;
    v50 = v18;
    v51 = 2080;
    v52 = v42;
    v53 = 2112;
    v54 = v30;
    _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d retrieved session (%p) and sessionManager (%p) for context(%s, %@)", buf, 0x3Au);
  }

LABEL_25:
  if (a5)
  {
    v31 = v20;
    *a5 = v20;
  }

  if (a6)
  {
    v32 = v18;
    *a6 = v18;
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __86__AVVCSessionFactory__wqSessionAndManagerForContext_clientType_session_manager_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  v4 = v2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    CAX4CCString::CAX4CCString(v8, [*(a1 + 40) activationMode]);
    v6 = [*(a1 + 40) activationDeviceUID];
    *buf = 136316162;
    v10 = "AVVCSessionFactory.mm";
    v11 = 1024;
    v12 = 211;
    v13 = 2048;
    v14 = v5;
    v15 = 2080;
    v16 = v8;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d First time primary session (%p) retrieved. Context(%s, %@)", buf, 0x30u);
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
}

- (id)_wqCreatePrimarySessionManagerIfNeeded:(id)a3 clientType:(int64_t)a4 error:(id *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  primarySessionManager = self->_primarySessionManager;
  if (!primarySessionManager)
  {
    v10 = [AVVCSessionManager alloc];
    v11 = [MEMORY[0x1E698D708] sharedInstance];
    v12 = [(AVVCSessionManager *)v10 initWithSession:v11];
    v13 = self->_primarySessionManager;
    self->_primarySessionManager = v12;

    v14 = [(AVVCSessionManager *)self->_primarySessionManager setupOneTimeSessionSettingsForClient:a4];
    if (a5 && v14)
    {
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:0];
    }

    if (kAVVCScope)
    {
      v15 = *kAVVCScope;
      if (!v15)
      {
LABEL_12:
        primarySessionManager = self->_primarySessionManager;
        goto LABEL_13;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    v17 = v15;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_primarySessionManager;
      CAX4CCString::CAX4CCString(v23, [v8 activationMode]);
      v19 = [v8 activationDeviceUID];
      *buf = 136316162;
      v25 = "AVVCSessionFactory.mm";
      v26 = 1024;
      v27 = 175;
      v28 = 2048;
      v29 = v18;
      v30 = 2080;
      v31 = v23;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created primary session manager (%p) and setup onetime settings for context(%s, %@)", buf, 0x30u);
    }

    goto LABEL_12;
  }

LABEL_13:
  v20 = primarySessionManager;

  v21 = *MEMORY[0x1E69E9840];
  return primarySessionManager;
}

- (void)_wqCreateAuxSessionAndManagerForDeviceUID:(id)a3 clientType:(int64_t)a4 session:(id *)a5 manager:(id *)a6 error:(id *)a7
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  if ((caulk::product::get_device_class(v10) == 4 || ((v11 = MGGetSInt32Answer(), v12 = MGGetBoolAnswer(), v11 == 7) ? (v13 = 1) : (v13 = v12), v13 == 1)) && (MGGetBoolAnswer() & 1) == 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = [MEMORY[0x1E698D708] auxiliarySession];
  }

  sessionManagerMap = self->_sessionManagerMap;
  v16 = [v9 activationDeviceUID];
  v17 = [(NSMutableDictionary *)sessionManagerMap objectForKeyedSubscript:v16];

  if (v17)
  {
    if (kAVVCScope)
    {
      v18 = *kAVVCScope;
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    v20 = v18;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = self->_sessionManagerMap;
      v56 = [v9 activationDeviceUID];
      v22 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:v56];
      v23 = self->_sessionManagerMap;
      v24 = [v9 activationDeviceUID];
      v25 = [(NSMutableDictionary *)v23 objectForKeyedSubscript:v24];
      v26 = [v25 audioSession];
      CAX4CCString::CAX4CCString(v60, [v9 activationMode]);
      v27 = [v9 activationDeviceUID];
      *buf = 136316418;
      v62 = "AVVCSessionFactory.mm";
      v63 = 1024;
      v64 = 129;
      v65 = 2048;
      v66 = v22;
      v67 = 2048;
      v68 = v26;
      v69 = 2080;
      v70 = v60;
      v71 = 2112;
      v72 = v27;
      _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d _wqCreateAuxSessionAndManagerForDeviceUID: unexpected existing session manager(%p) audioSession(%p) for context(%s, %@)", buf, 0x3Au);
    }
  }

LABEL_17:
  v28 = objc_alloc(MEMORY[0x1E695DF20]);
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "activationMode")}];
  v30 = [v9 activationDeviceUID];
  v31 = [v28 initWithObjectsAndKeys:{v29, @"activation trigger", v30, @"activation device uid", 0}];

  [v14 setActivationContext:v31 error:a7];
  if (*a7 && [*a7 code])
  {
    if (kAVVCScope)
    {
      v32 = *kAVVCScope;
      if (!v32)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    v34 = v32;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [*a7 code];
      *buf = 136315650;
      v62 = "AVVCSessionFactory.mm";
      v63 = 1024;
      v64 = 140;
      v65 = 1024;
      LODWORD(v66) = v35;
      _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d _wqCreateAuxSessionAndManagerForDeviceUID: setActivationContext returned error(%d)", buf, 0x18u);
    }
  }

LABEL_26:
  v36 = [[AVVCSessionManager alloc] initWithSession:v14];
  [(AVVCSessionManager *)v36 setupOneTimeSessionSettingsForClient:a4];
  v37 = self->_sessionManagerMap;
  v38 = [v9 activationDeviceUID];
  v39 = [(NSMutableDictionary *)v37 objectForKeyedSubscript:v38];
  LOBYTE(v37) = v39 == 0;

  if (v37)
  {
    goto LABEL_34;
  }

  if (kAVVCScope)
  {
    v40 = *kAVVCScope;
    if (!v40)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v40 = MEMORY[0x1E69E9C10];
    v41 = MEMORY[0x1E69E9C10];
  }

  v42 = v40;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = self->_sessionManagerMap;
    v44 = [v9 activationDeviceUID];
    v45 = [(NSMutableDictionary *)v43 objectForKeyedSubscript:v44];
    *buf = 136315650;
    v62 = "AVVCSessionFactory.mm";
    v63 = 1024;
    v64 = 146;
    v65 = 2048;
    v66 = v45;
    _os_log_impl(&dword_1BA5AC000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d _wqCreateAuxSessionAndManagerForDeviceUID: unexpected existing sessionManager(%p)", buf, 0x1Cu);
  }

LABEL_34:
  v46 = self->_sessionManagerMap;
  v47 = [v9 activationDeviceUID];
  [(NSMutableDictionary *)v46 setObject:v36 forKeyedSubscript:v47];

  if (kAVVCScope)
  {
    v48 = *kAVVCScope;
    if (!v48)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v48 = MEMORY[0x1E69E9C10];
    v49 = MEMORY[0x1E69E9C10];
  }

  v50 = v48;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    CAX4CCString::CAX4CCString(v60, [v9 activationMode]);
    v51 = [v9 activationDeviceUID];
    *buf = 136316418;
    v62 = "AVVCSessionFactory.mm";
    v63 = 1024;
    v64 = 150;
    v65 = 2048;
    v66 = v14;
    v67 = 2048;
    v68 = v36;
    v69 = 2080;
    v70 = v60;
    v71 = 2112;
    v72 = v51;
    _os_log_impl(&dword_1BA5AC000, v50, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created aux session (%p) and session manager (%p) and setup onetime settings for context(%s, %@)", buf, 0x3Au);
  }

LABEL_41:
  sessionWasCreatedBlock = self->_sessionWasCreatedBlock;
  if (sessionWasCreatedBlock)
  {
    sessionWasCreatedBlock[2](sessionWasCreatedBlock, v36, a7);
  }

  if (a5)
  {
    v53 = v14;
    *a5 = v14;
  }

  if (a6)
  {
    v54 = v36;
    *a6 = v36;
  }

  v55 = *MEMORY[0x1E69E9840];
}

- (AVVCSessionFactory)init
{
  v9.receiver = self;
  v9.super_class = AVVCSessionFactory;
  v2 = [(AVVCSessionFactory *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("AVVCSessionFactory Work Queue", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sessionManagerMap = v2->_sessionManagerMap;
    v2->_sessionManagerMap = v6;
  }

  return v2;
}

void __36__AVVCSessionFactory_sharedInstance__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sSharedInstance;
  sSharedInstance = v1;

  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "AVVCSessionFactory.mm";
    v8 = 1024;
    v9 = 71;
    v10 = 2048;
    v11 = sSharedInstance;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created AVVCSessionFactory (%p)", &v6, 0x1Cu);
  }

LABEL_8:
  v5 = *MEMORY[0x1E69E9840];
}

@end