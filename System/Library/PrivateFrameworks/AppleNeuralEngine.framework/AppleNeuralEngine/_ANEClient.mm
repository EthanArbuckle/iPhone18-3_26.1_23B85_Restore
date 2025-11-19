@interface _ANEClient
+ (id)sharedConnection;
+ (id)sharedPrivateConnection;
+ (void)initialize;
- (BOOL)beginRealTimeTask;
- (BOOL)compiledModelExistsFor:(id)a3;
- (BOOL)compiledModelExistsMatchingHash:(id)a3;
- (BOOL)echo:(id)a3;
- (BOOL)endRealTimeTask;
- (BOOL)evaluateRealTimeWithModel:(id)a3 options:(id)a4 request:(id)a5 error:(id *)a6;
- (BOOL)isAnetoolRootDaemonConnection;
- (BOOL)isVirtualClient;
- (BOOL)sessionHintWithModel:(id)a3 hint:(id)a4 options:(id)a5 report:(id)a6 error:(id *)a7;
- (_ANEClient)initWithRestrictedAccessAllowed:(BOOL)a3;
- (_ANEDaemonConnection)fastConn;
- (id)connectionForLoadingModel:(id)a3 options:(id)a4;
- (id)connectionUsedForLoadingModel:(id)a3;
- (id)fastConnWithoutLock;
- (void)beginRealTimeTask;
- (void)dealloc;
- (void)endRealTimeTask;
- (void)purgeCompiledModel:(id)a3;
- (void)purgeCompiledModelMatchingHash:(id)a3;
- (void)unmapIOSurfacesWithModel:(id)a3 request:(id)a4;
@end

@implementation _ANEClient

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    +[_ANEClient sharedConnection];
  }

  v3 = sharedConnection_client;

  return v3;
}

- (_ANEDaemonConnection)fastConn
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(_ANEClient *)self fastConnWithoutLock];
  os_unfair_lock_unlock(&self->_lock);
  v5 = gLogger_1;
  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = NSStringFromSelector(a2);
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_1AD246000, v6, OS_LOG_TYPE_INFO, "%@: Using fast connection", &v10, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)fastConnWithoutLock
{
  fastConn = self->_fastConn;
  if (!fastConn)
  {
    if ([(_ANEClient *)self allowRestrictedAccess])
    {
      +[_ANEDaemonConnection daemonConnectionRestricted];
    }

    else
    {
      +[_ANEDaemonConnection daemonConnection];
    }
    v5 = ;
    v6 = self->_fastConn;
    self->_fastConn = v5;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33___ANEClient_fastConnWithoutLock__block_invoke;
    v11[3] = &__block_descriptor_40_e5_v8__0l;
    v11[4] = a2;
    v7 = [(_ANEDaemonConnection *)self->_fastConn daemonConnection];
    [v7 setInterruptionHandler:v11];

    v10[2] = __33___ANEClient_fastConnWithoutLock__block_invoke_10;
    v10[3] = &__block_descriptor_40_e5_v8__0l;
    v10[4] = a2;
    v8 = [(_ANEDaemonConnection *)self->_fastConn daemonConnection:MEMORY[0x1E69E9820]];
    [v8 setInvalidationHandler:v10];

    fastConn = self->_fastConn;
  }

  return fastConn;
}

+ (void)initialize
{
  v2 = +[_ANELog framework];
  v3 = gLogger_1;
  gLogger_1 = v2;

  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E695E0F0] mutableCopy];
  v6 = dispatch_semaphore_create(2);
  [v5 setObject:v6 atIndexedSubscript:0];

  v7 = dispatch_semaphore_create(2);
  [v5 setObject:v7 atIndexedSubscript:1];

  v8 = dispatch_semaphore_create(2);
  [v5 setObject:v8 atIndexedSubscript:2];

  v9 = dispatch_semaphore_create(2);
  [v5 setObject:v9 atIndexedSubscript:3];

  v10 = dispatch_semaphore_create(2);
  [v5 setObject:v10 atIndexedSubscript:4];

  v11 = dispatch_semaphore_create(2);
  [v5 setObject:v11 atIndexedSubscript:5];

  v12 = dispatch_semaphore_create(2);
  [v5 setObject:v12 atIndexedSubscript:6];

  v13 = dispatch_semaphore_create(2);
  [v5 setObject:v13 atIndexedSubscript:7];

  v14 = [v5 copy];
  v15 = gSema;
  gSema = v14;

  objc_autoreleasePoolPop(v4);
}

- (_ANEClient)initWithRestrictedAccessAllowed:(BOOL)a3
{
  v23.receiver = self;
  v23.super_class = _ANEClient;
  v5 = [(_ANEClient *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v5->_allowRestrictedAccess = a3;
    v7 = +[_ANEVirtualClient sharedConnection];
    virtualClient = v6->_virtualClient;
    v6->_virtualClient = v7;

    if (!v6->_virtualClient)
    {
      v9 = gLogger_1;
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
      {
        [_ANEClient initWithRestrictedAccessAllowed:v9];
      }
    }

    if (a3)
    {
      +[_ANEDaemonConnection daemonConnectionRestricted];
    }

    else
    {
      +[_ANEDaemonConnection daemonConnection];
    }
    v10 = ;
    conn = v6->_conn;
    v6->_conn = v10;

    v6->_isRootDaemon = 1;
    v12 = [_ANEQoSMapper dispatchQueueArrayByMappingPrioritiesWithTag:@"com.apple.anef"];
    priorityQ = v6->_priorityQ;
    v6->_priorityQ = v12;

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke;
    v22[3] = &__block_descriptor_40_e5_v8__0l;
    v22[4] = a2;
    v14 = [(_ANEDaemonConnection *)v6->_conn daemonConnection];
    [v14 setInterruptionHandler:v22];

    v21[2] = __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_6;
    v21[3] = &__block_descriptor_40_e5_v8__0l;
    v21[4] = a2;
    v15 = [(_ANEDaemonConnection *)v6->_conn daemonConnection:MEMORY[0x1E69E9820]];
    [v15 setInvalidationHandler:v21];

    v6->_lock._os_unfair_lock_opaque = 0;
    v16 = [MEMORY[0x1E695DF90] dictionary];
    connectionsUsedForLoadingModels = v6->_connectionsUsedForLoadingModels;
    v6->_connectionsUsedForLoadingModels = v16;

    v18 = [MEMORY[0x1E695DF90] dictionary];
    connections = v6->_connections;
    v6->_connections = v18;
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(_ANEClient *)self conn];
  v4 = [v3 daemonConnection];
  [v4 invalidate];

  v5 = [(_ANEClient *)self fastConn];
  v6 = [v5 daemonConnection];
  [v6 invalidate];

  v7.receiver = self;
  v7.super_class = _ANEClient;
  [(_ANEClient *)&v7 dealloc];
}

- (id)connectionForLoadingModel:(id)a3 options:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (self->_isRootDaemon)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__3;
    v50 = __Block_byref_object_dispose__3;
    v51 = 0;
    v9 = [v7 getUUID];
    os_unfair_lock_lock(&self->_lock);
    v10 = [(_ANEClient *)self connectionsUsedForLoadingModels];
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __48___ANEClient_connectionForLoadingModel_options___block_invoke;
    v42 = &unk_1E79BA4D0;
    v11 = v9;
    v44 = self;
    v45 = &v46;
    v43 = v11;
    [v10 enumerateKeysAndObjectsUsingBlock:&v39];

    if (!v47[5])
    {
      v12 = [v8 objectForKeyedSubscript:kANEFModelTypeKey[0]];
      v13 = [v12 isEqualToString:kANEFModelPreCompiledValue[0]];

      if (v13)
      {
        [(_ANEClient *)self fastConnWithoutLock];
      }

      else
      {
        [(_ANEClient *)self conn];
      }
      v16 = ;
      objc_storeStrong(v47 + 5, v16);

      v17 = v47;
      v18 = v47[5];
      if (v18)
      {
        v19 = v18;
        v20 = v17[5];
        v17[5] = v19;
      }

      else
      {
        v21 = [(_ANEClient *)self conn];
        v20 = v47[5];
        v47[5] = v21;
      }

      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v47[5], v39, v40, v41, v42];
      v23 = [(_ANEClient *)self connections];
      v24 = [v23 objectForKeyedSubscript:v22];
      v25 = v24 == 0;

      if (v25)
      {
        v26 = v47[5];
        v27 = [(_ANEClient *)self connections];
        [v27 setObject:v26 forKeyedSubscript:v22];
      }

      v28 = [(_ANEClient *)self connectionsUsedForLoadingModels];
      v29 = [v28 objectForKeyedSubscript:v22];

      if (!v29)
      {
        v29 = [MEMORY[0x1E695DFA8] set];
        v30 = [(_ANEClient *)self connectionsUsedForLoadingModels];
        [v30 setObject:v29 forKeyedSubscript:v22];
      }

      [v29 addObject:v11];
    }

    os_unfair_lock_unlock(&self->_lock);
    v31 = v47[5];
    v32 = [(_ANEClient *)self conn];
    LODWORD(v31) = v31 == v32;

    v33 = gLogger_1;
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
    if (v31)
    {
      if (v34)
      {
        v36 = NSStringFromSelector(a2);
        *buf = 138412546;
        v53 = v36;
        v54 = 2112;
        v55 = v11;
        _os_log_impl(&dword_1AD246000, v33, OS_LOG_TYPE_INFO, "%@: Using default connection for loading modelUUID=%@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      v35 = NSStringFromSelector(a2);
      *buf = 138412546;
      v53 = v35;
      v54 = 2112;
      v55 = v11;
      _os_log_impl(&dword_1AD246000, v33, OS_LOG_TYPE_INFO, "%@: Using fast connection for loading modelUUID=%@", buf, 0x16u);
    }

    v15 = v47[5];
    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v14 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
    {
      [_ANEClient connectionForLoadingModel:v14 options:a2];
    }

    v15 = [(_ANEClient *)self conn];
  }

  v37 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)connectionUsedForLoadingModel:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v5 = [v4 getUUID];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(_ANEClient *)self connectionsUsedForLoadingModels];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44___ANEClient_connectionUsedForLoadingModel___block_invoke;
  v10[3] = &unk_1E79BA4D0;
  v7 = v5;
  v12 = self;
  v13 = &v14;
  v11 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  os_unfair_lock_unlock(&self->_lock);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (BOOL)compiledModelExistsFor:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = mach_continuous_time();
  v7 = os_signpost_id_generate(gLogger_1);
  v8 = [(_ANEClient *)self virtualClient];

  if (v8)
  {
    v9 = [(_ANEClient *)self virtualClient];
    v10 = [v9 compiledModelExistsFor:v5];
  }

  else if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v11 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v11 compiledModelExistsFor:a2];
    }

    v10 = 0;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = gLogger_1;
    if (v5)
    {
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
      {
        [_ANEClient compiledModelExistsFor:];
      }

      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x3032000000;
      v33[3] = __Block_byref_object_copy__3;
      v33[4] = __Block_byref_object_dispose__3;
      v34 = 0;
      [v5 string_id];
      kdebug_trace();
      v14 = gLogger_1;
      v15 = v14;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        v16 = [v5 string_id];
        *buf = 134217984;
        v40 = v16;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v15, OS_SIGNPOST_EVENT, v7, "_ANEF_COMPILED_MODEL_EXISTS", "model.string_id:%llu", buf, 0xCu);
      }

      v17 = [(_ANEClient *)self fastConn];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = [(_ANEClient *)self conn];
      }

      v20 = v19;

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __37___ANEClient_compiledModelExistsFor___block_invoke;
      v27[3] = &unk_1E79BA598;
      v31 = a2;
      v21 = v5;
      v28 = v21;
      v29 = &v35;
      v30 = v33;
      v32 = v7;
      [v20 compiledModelExistsFor:v21 withReply:v27];
      [v21 string_id];
      v22 = *(v36 + 24);
      kdebug_trace();
      v23 = gLogger_1;
      v24 = v23;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 134349056;
        v40 = v6;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v24, OS_SIGNPOST_EVENT, v7, "_ANEF_COMPILED_MODEL_EXISTS", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
      }

      v10 = *(v36 + 24);
      _Block_object_dispose(v33, 8);

      _Block_object_dispose(&v35, 8);
    }

    else
    {
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
      {
        [(_ANEClient *)v13 compiledModelExistsFor:a2];
      }

      v10 = 0;
    }

    objc_autoreleasePoolPop(v12);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (void)purgeCompiledModel:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = mach_continuous_time();
  v7 = os_signpost_id_generate(gLogger_1);
  [v5 string_id];
  kdebug_trace();
  v8 = gLogger_1;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v5 string_id];
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v9, OS_SIGNPOST_EVENT, v7, "_ANEF_PURGE_COMPILED_MODEL", "model.string_id:%llu", &buf, 0xCu);
  }

  v10 = [(_ANEClient *)self virtualClient];

  if (v10)
  {
    v11 = [(_ANEClient *)self virtualClient];
    [v11 purgeCompiledModel:v5];
  }

  else if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v13 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v13 purgeCompiledModel:a2];
    }
  }

  else
  {
    v14 = gLogger_1;
    if (v5)
    {
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
      {
        [_ANEClient purgeCompiledModel:];
      }

      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__3;
      v35 = __Block_byref_object_dispose__3;
      v36 = 0;
      v15 = [(_ANEClient *)self conn];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __33___ANEClient_purgeCompiledModel___block_invoke;
      v20[3] = &unk_1E79BA5C0;
      p_buf = &buf;
      v24 = a2;
      v22 = &v26;
      v16 = v5;
      v21 = v16;
      v25 = v7;
      [v15 purgeCompiledModel:v16 withReply:v20];

      [v16 string_id];
      v17 = *(v27 + 24);
      kdebug_trace();
      v18 = gLogger_1;
      v19 = v18;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        *v30 = 134349056;
        v31 = v6;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v19, OS_SIGNPOST_EVENT, v7, "_ANEF_PURGE_COMPILED_MODEL", "%{public, signpost.description:begin_time}llu ", v30, 0xCu);
      }

      _Block_object_dispose(&buf, 8);
      _Block_object_dispose(&v26, 8);
    }

    else if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v14 purgeCompiledModel:a2];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)compiledModelExistsMatchingHash:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = mach_continuous_time();
  v7 = os_signpost_id_generate(gLogger_1);
  kdebug_trace();
  v8 = gLogger_1;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 67109120;
    *&buf[4] = 0;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v9, OS_SIGNPOST_EVENT, v7, "_ANEF_COMPILED_MODEL_EXISTS", "%u", buf, 8u);
  }

  v10 = [(_ANEClient *)self virtualClient];

  if (v10)
  {
    v11 = [(_ANEClient *)self virtualClient];
    v12 = [v11 compiledModelExistsMatchingHash:v5];

    goto LABEL_25;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v13 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v13 compiledModelExistsMatchingHash:a2];
    }

LABEL_16:
    v12 = 0;
    goto LABEL_25;
  }

  v14 = gLogger_1;
  if (!v5)
  {
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v14 compiledModelExistsMatchingHash:a2];
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
  {
    [_ANEClient compiledModelExistsMatchingHash:];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__3;
  v37 = __Block_byref_object_dispose__3;
  v38 = 0;
  v15 = [(_ANEClient *)self fastConn];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [(_ANEClient *)self conn];
  }

  v18 = v17;

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __46___ANEClient_compiledModelExistsMatchingHash___block_invoke;
  v26[3] = &unk_1E79BA5E8;
  v26[4] = &v27;
  v26[5] = buf;
  v26[6] = a2;
  v26[7] = v7;
  [v18 compiledModelExistsMatchingHash:v5 withReply:v26];
  v19 = *(v28 + 24);
  kdebug_trace();
  v20 = gLogger_1;
  v21 = v20;
  if (v7 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v23 = gLogger_1;
  }

  else
  {
    if (os_signpost_enabled(v20))
    {
      v22 = *(v28 + 24);
      *v31 = 67109376;
      *v32 = 0;
      *&v32[4] = 1024;
      *&v32[6] = v22;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v21, OS_SIGNPOST_EVENT, v7, "_ANEF_COMPILED_MODEL_EXISTS", "%u success:%u", v31, 0xEu);
    }

    v23 = gLogger_1;
    if (os_signpost_enabled(v23))
    {
      *v31 = 134349056;
      *v32 = v6;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v23, OS_SIGNPOST_EVENT, v7, "_ANEF_COMPILED_MODEL_EXISTS", "%{public, signpost.description:begin_time}llu ", v31, 0xCu);
    }
  }

  v12 = *(v28 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v27, 8);
LABEL_25:

  v24 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

- (void)purgeCompiledModelMatchingHash:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = mach_continuous_time();
  v7 = os_signpost_id_generate(gLogger_1);
  v8 = [(_ANEClient *)self virtualClient];

  if (v8)
  {
    v9 = [(_ANEClient *)self virtualClient];
    [v9 purgeCompiledModelMatchingHash:v5];
  }

  else if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v11 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v11 purgeCompiledModelMatchingHash:a2];
    }
  }

  else
  {
    v12 = gLogger_1;
    if (v5)
    {
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
      {
        [_ANEClient purgeCompiledModelMatchingHash:];
      }

      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v22[0] = 0;
      v22[1] = v22;
      v22[2] = 0x3032000000;
      v22[3] = __Block_byref_object_copy__3;
      v22[4] = __Block_byref_object_dispose__3;
      v23 = 0;
      kdebug_trace();
      v13 = gLogger_1;
      v14 = v13;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *buf = 67109120;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v14, OS_SIGNPOST_EVENT, v7, "_ANEF_PURGE_COMPILED_MODEL", "%u", buf, 8u);
      }

      v15 = [(_ANEClient *)self conn];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __45___ANEClient_purgeCompiledModelMatchingHash___block_invoke;
      v21[3] = &unk_1E79BA5E8;
      v21[4] = &v24;
      v21[5] = v22;
      v21[6] = a2;
      v21[7] = v7;
      [v15 purgeCompiledModelMatchingHash:v5 withReply:v21];

      v16 = *(v25 + 24);
      kdebug_trace();
      v17 = gLogger_1;
      v18 = v17;
      if (v7 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v20 = gLogger_1;
      }

      else
      {
        if (os_signpost_enabled(v17))
        {
          v19 = *(v25 + 24);
          *buf = 67109376;
          *&buf[8] = 1024;
          *&buf[10] = v19;
          _os_signpost_emit_with_name_impl(&dword_1AD246000, v18, OS_SIGNPOST_EVENT, v7, "_ANEF_PURGE_COMPILED_MODEL", "%u ok:%u", buf, 0xEu);
        }

        v20 = gLogger_1;
        if (os_signpost_enabled(v20))
        {
          *buf = 134349056;
          *&buf[4] = v6;
          _os_signpost_emit_with_name_impl(&dword_1AD246000, v20, OS_SIGNPOST_EVENT, v7, "_ANEF_PURGE_COMPILED_MODEL", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
        }
      }

      _Block_object_dispose(v22, 8);
      _Block_object_dispose(&v24, 8);
    }

    else if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v12 purgeCompiledModelMatchingHash:a2];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unmapIOSurfacesWithModel:(id)a3 request:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = mach_continuous_time();
  v10 = os_signpost_id_generate(gLogger_1);
  v11 = [(_ANEClient *)self virtualClient];

  if (v11)
  {
    v12 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      [_ANEClient unmapIOSurfacesWithModel:v12 request:?];
    }
  }

  else
  {
    if (+[_ANEDeviceInfo isVirtualMachine])
    {
      v12 = gLogger_1;
      if (!os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      goto LABEL_3;
    }

    if (v7)
    {
      if (v8)
      {
        v13 = [v7 mapper];
        v14 = gLogger_1;
        if (v13)
        {
          if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
          {
            [_ANEClient mapIOSurfacesWithModel:request:cacheInference:error:];
          }

          [v7 string_id];
          kdebug_trace();
          v15 = gLogger_1;
          v16 = v15;
          if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
          {
            *buf = 134217984;
            v33 = [v7 string_id];
            _os_signpost_emit_with_name_impl(&dword_1AD246000, v16, OS_SIGNPOST_EVENT, v10, "_ANEF_IOSURFACES_UNMAP", "model.string_id:%llu", buf, 0xCu);
          }

          v31 = 0;
          v17 = v13;
          v18 = [v13 unmapIOSurfacesWithModel:v7 request:v8 error:&v31];
          v29 = v31;
          v19 = gLogger_1;
          if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
          {
            v27 = v19;
            v28 = NSStringFromSelector(a2);
            *buf = 138412802;
            v33 = v28;
            v34 = 1024;
            v35 = v18;
            v36 = 2112;
            v37 = v29;
            _os_log_debug_impl(&dword_1AD246000, v27, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", buf, 0x1Cu);
          }

          [v7 string_id];
          kdebug_trace();
          v20 = gLogger_1;
          v21 = v20;
          if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {

            v23 = gLogger_1;
            v13 = v17;
          }

          else
          {
            if (os_signpost_enabled(v20))
            {
              v22 = [v7 string_id];
              *buf = 134218240;
              v33 = v22;
              v34 = 1024;
              v35 = v18;
              _os_signpost_emit_with_name_impl(&dword_1AD246000, v21, OS_SIGNPOST_EVENT, v10, "_ANEF_IOSURFACES_UNMAP", "model.string_id:%llu ok:%u", buf, 0x12u);
            }

            v23 = gLogger_1;
            v13 = v17;
            if (os_signpost_enabled(v23))
            {
              *buf = 134349056;
              v33 = v9;
              _os_signpost_emit_with_name_impl(&dword_1AD246000, v23, OS_SIGNPOST_EVENT, v10, "_ANEF_IOSURFACES_UNMAP", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
            }
          }
        }

        else if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
        {
          [_ANEClient mapIOSurfacesWithModel:v14 request:? cacheInference:? error:?];
        }
      }

      else
      {
        v25 = gLogger_1;
        if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
        {
          [_ANEClient mapIOSurfacesWithModel:v25 request:? cacheInference:? error:?];
        }
      }
    }

    else
    {
      v24 = gLogger_1;
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
      {
        [_ANEClient mapIOSurfacesWithModel:v24 request:? cacheInference:? error:?];
      }
    }
  }

LABEL_31:

  v26 = *MEMORY[0x1E69E9840];
}

+ (id)sharedPrivateConnection
{
  if (sharedPrivateConnection_onceToken != -1)
  {
    +[_ANEClient sharedPrivateConnection];
  }

  v3 = sharedPrivateConnection_client;

  return v3;
}

- (BOOL)beginRealTimeTask
{
  v4 = [(_ANEClient *)self virtualClient];

  if (v4)
  {
    v5 = [(_ANEClient *)self virtualClient];
    v6 = [v5 beginRealTimeTask];

    return v6;
  }

  else
  {
    if (+[_ANEDeviceInfo isVirtualMachine])
    {
      v8 = gLogger_1;
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
      {
        [(_ANEClient *)v8 beginRealTimeTask];
      }

      v9 = 0;
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v10 = [(_ANEClient *)self conn];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __31___ANEClient_beginRealTimeTask__block_invoke;
      v11[3] = &unk_1E79BA610;
      v11[4] = &v12;
      v11[5] = a2;
      [v10 beginRealTimeTaskWithReply:v11];

      v9 = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
    }

    return v9 & 1;
  }
}

- (BOOL)endRealTimeTask
{
  v4 = [(_ANEClient *)self virtualClient];

  if (v4)
  {
    v5 = [(_ANEClient *)self virtualClient];
    v6 = [v5 endRealTimeTask];

    return v6;
  }

  else
  {
    if (+[_ANEDeviceInfo isVirtualMachine])
    {
      v8 = gLogger_1;
      if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
      {
        [(_ANEClient *)v8 endRealTimeTask];
      }

      v9 = 0;
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v10 = [(_ANEClient *)self conn];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __29___ANEClient_endRealTimeTask__block_invoke;
      v11[3] = &unk_1E79BA610;
      v11[4] = &v12;
      v11[5] = a2;
      [v10 endRealTimeTaskWithReply:v11];

      v9 = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
    }

    return v9 & 1;
  }
}

- (BOOL)evaluateRealTimeWithModel:(id)a3 options:(id)a4 request:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  LOBYTE(a6) = [(_ANEClient *)self doEvaluateDirectWithModel:v12 options:v11 request:v10 qos:+[_ANEQoSMapper error:"aneRealTimeTaskQoS"], a6];

  return a6;
}

- (BOOL)isVirtualClient
{
  v2 = [(_ANEClient *)self virtualClient];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)echo:(id)a3
{
  v5 = a3;
  v6 = [(_ANEClient *)self virtualClient];

  if (v6)
  {
    v7 = [(_ANEClient *)self virtualClient];
    v8 = [v7 echo:v5];
  }

  else if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v9 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [(_ANEClient *)v9 echo:a2];
    }

    v8 = 0;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v10 = [(_ANEClient *)self conn];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __19___ANEClient_echo___block_invoke;
    v12[3] = &unk_1E79BA610;
    v12[4] = &v13;
    v12[5] = a2;
    [v10 echo:v5 withReply:v12];

    v8 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  return v8 & 1;
}

- (BOOL)isAnetoolRootDaemonConnection
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 processName];

  v5 = [MEMORY[0x1E696AE30] processInfo];
  v6 = [v5 arguments];

  if ([v4 isEqualToString:@"anetool"])
  {
    if ([v6 count])
    {
      v7 = 0;
      do
      {
        v8 = [v6 objectAtIndexedSubscript:v7];
        if ([v8 isEqualToString:@"-u"] && v7 < objc_msgSend(v6, "count") - 1)
        {
          v9 = [v6 objectAtIndexedSubscript:++v7];
          v10 = [v9 BOOLValue];

          if (v10)
          {
            goto LABEL_12;
          }
        }

        else
        {

          ++v7;
        }
      }

      while (v7 < [v6 count]);
    }

    v11 = gLogger_1;
    v12 = 1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_INFO))
    {
      v13 = v11;
      v14 = NSStringFromSelector(a2);
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&dword_1AD246000, v13, OS_LOG_TYPE_INFO, "%@: Yes", &v17, 0xCu);
    }
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)sessionHintWithModel:(id)a3 hint:(id)a4 options:(id)a5 report:(id)a6 error:(id *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = [(_ANEClient *)self virtualClient];

  if (v17)
  {
    v18 = [(_ANEClient *)self virtualClient];
    LOBYTE(a7) = [v18 sessionHintWithModel:v13 hint:v14 options:v15 report:v16 error:a7];

    goto LABEL_19;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v19 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doEnqueueSetsWithModel:v19 outputSet:? options:? qos:? error:?];
      if (!a7)
      {
        goto LABEL_19;
      }
    }

    else if (!a7)
    {
      goto LABEL_19;
    }

    v20 = NSStringFromSelector(a2);
    v21 = [_ANEErrors hostTooOld:v20];
LABEL_18:
    *a7 = v21;

    LOBYTE(a7) = 0;
    goto LABEL_19;
  }

  if (!v13)
  {
    v24 = +[_ANELog common];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient sessionHintWithModel:a2 hint:? options:? report:? error:?];
    }

    goto LABEL_16;
  }

  if (!v14)
  {
    v24 = +[_ANELog common];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient sessionHintWithModel:a2 hint:? options:? report:? error:?];
    }

LABEL_16:

    if (!a7)
    {
      goto LABEL_19;
    }

    v20 = NSStringFromSelector(a2);
    v21 = [_ANEErrors badArgumentForMethod:v20];
    goto LABEL_18;
  }

  v22 = [v13 program];
  v23 = v22;
  if (v22)
  {
    LOBYTE(a7) = [v22 processSessionHint:v14 options:v15 report:v16 error:a7];
  }

  else
  {
    v26 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient sessionHintWithModel:v26 hint:? options:? report:? error:?];
    }

    if ([v14 isEqualToString:kANEFHintSessionInfo])
    {
      LOBYTE(a7) = 1;
      if (v16)
      {
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
        [v16 setObject:v27 forKeyedSubscript:kANEFHintReportSessionStatusKey];
      }
    }

    else if (a7)
    {
      v28 = NSStringFromSelector(a2);
      *a7 = [_ANEErrors invalidModelErrorForMethod:v28];

      LOBYTE(a7) = 0;
    }
  }

LABEL_19:
  return a7;
}

- (void)initWithRestrictedAccessAllowed:(void *)a1 .cold.1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_5_4(&dword_1AD246000, v5, v6, "%@: ANEVirtualClient Not available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)connectionForLoadingModel:(void *)a1 options:(const char *)a2 .cold.1(void *a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)compileModel:(void *)a1 options:(const char *)a2 qos:error:.cold.1(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)compileModel:(void *)a1 options:(const char *)a2 qos:error:.cold.2(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doUnloadModel:(uint64_t)a3 options:qos:error:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_8(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_1AD246000, v5, OS_LOG_TYPE_ERROR, "%@: model=%@ was not loaded by the client.", v4, 0x16u);
}

- (void)doUnloadModel:(void *)a1 options:(const char *)a2 qos:error:.cold.2(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doUnloadModel:(void *)a1 options:(const char *)a2 qos:error:.cold.3(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)compiledModelExistsFor:.cold.1()
{
  OUTLINED_FUNCTION_12_1();
  v10 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)compiledModelExistsFor:(void *)a1 .cold.2(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)compiledModelExistsFor:(void *)a1 .cold.3(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)purgeCompiledModel:.cold.1()
{
  OUTLINED_FUNCTION_12_1();
  v10 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)purgeCompiledModel:(void *)a1 .cold.2(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)purgeCompiledModel:(void *)a1 .cold.3(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)compiledModelExistsMatchingHash:.cold.1()
{
  OUTLINED_FUNCTION_12_1();
  v10 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)compiledModelExistsMatchingHash:(void *)a1 .cold.2(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil modelHash", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)compiledModelExistsMatchingHash:(void *)a1 .cold.3(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)purgeCompiledModelMatchingHash:.cold.1()
{
  OUTLINED_FUNCTION_12_1();
  v10 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)purgeCompiledModelMatchingHash:(void *)a1 .cold.2(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil modelHash", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)purgeCompiledModelMatchingHash:(void *)a1 .cold.3(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)mapIOSurfacesWithModel:request:cacheInference:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v11 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_9_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)mapIOSurfacesWithModel:(void *)a1 request:cacheInference:error:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)mapIOSurfacesWithModel:(void *)a1 request:cacheInference:error:.cold.3(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: nil _ANEProgramIOSurfacesMapper", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)mapIOSurfacesWithModel:(void *)a1 request:cacheInference:error:.cold.4(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: nil _ANERequest", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)mapIOSurfacesWithModel:(void *)a1 request:cacheInference:error:.cold.5(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)unmapIOSurfacesWithModel:(void *)a1 request:.cold.1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: No support in VM", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)beginRealTimeTask
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)endRealTimeTask
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doLoadModel:options:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_12_1();
  v10 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)doLoadModel:(void *)a1 options:(const char *)a2 qos:error:.cold.2(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doLoadModel:(void *)a1 options:(const char *)a2 qos:error:.cold.3(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doLoadModelNewInstance:options:modelInstParams:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_12_1();
  v10 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)doLoadModelNewInstance:(void *)a1 options:(const char *)a2 modelInstParams:qos:error:.cold.2(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doLoadModelNewInstance:(void *)a1 options:(const char *)a2 modelInstParams:qos:error:.cold.3(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doPrepareChainingWithModel:(void *)a1 options:(const char *)a2 chainingReq:qos:error:.cold.1(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: does not support virtual client yet", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doPrepareChainingWithModel:(void *)a1 options:(const char *)a2 chainingReq:qos:error:.cold.3(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doPrepareChainingWithModel:(void *)a1 options:(const char *)a2 chainingReq:qos:error:.cold.4(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: nil _ANEModel", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doEnqueueSetsWithModel:(void *)a1 outputSet:options:qos:error:.cold.1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: does not support virtual client yet", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doEnqueueSetsWithModel:outputSet:options:qos:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v12 = *MEMORY[0x1E69E9840];
  v3 = v2;
  v4 = OUTLINED_FUNCTION_4_0();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_8_0() program];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doEnqueueSetsWithModel:(void *)a1 outputSet:options:qos:error:.cold.3(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)doBuffersReadyWithModel:inputBuffers:options:qos:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v12 = *MEMORY[0x1E69E9840];
  v3 = v2;
  v4 = OUTLINED_FUNCTION_4_0();
  NSStringFromSelector(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_8_0() program];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)reportEvaluateFailure:failureReason:qIdx:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7(&dword_1AD246000, v5, v6, "%@: model=%@ was not loaded by the client.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)echo:(void *)a1 .cold.1(void *a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)sessionHintWithModel:(void *)a1 hint:options:report:error:.cold.1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_8_0();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_0(&dword_1AD246000, v5, v6, "%@: Program not loaded", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)sessionHintWithModel:(const char *)a1 hint:options:report:error:.cold.2(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v2, v3, "%@: Missing hint", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)sessionHintWithModel:(const char *)a1 hint:options:report:error:.cold.3(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v2, v3, "%@: Missing model", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end