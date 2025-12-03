@interface _ANEClient
+ (id)sharedConnection;
+ (id)sharedPrivateConnection;
+ (void)initialize;
- (BOOL)beginRealTimeTask;
- (BOOL)compiledModelExistsFor:(id)for;
- (BOOL)compiledModelExistsMatchingHash:(id)hash;
- (BOOL)echo:(id)echo;
- (BOOL)endRealTimeTask;
- (BOOL)evaluateRealTimeWithModel:(id)model options:(id)options request:(id)request error:(id *)error;
- (BOOL)isAnetoolRootDaemonConnection;
- (BOOL)isVirtualClient;
- (BOOL)sessionHintWithModel:(id)model hint:(id)hint options:(id)options report:(id)report error:(id *)error;
- (_ANEClient)initWithRestrictedAccessAllowed:(BOOL)allowed;
- (_ANEDaemonConnection)fastConn;
- (id)connectionForLoadingModel:(id)model options:(id)options;
- (id)connectionUsedForLoadingModel:(id)model;
- (id)fastConnWithoutLock;
- (void)beginRealTimeTask;
- (void)dealloc;
- (void)endRealTimeTask;
- (void)purgeCompiledModel:(id)model;
- (void)purgeCompiledModelMatchingHash:(id)hash;
- (void)unmapIOSurfacesWithModel:(id)model request:(id)request;
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
  fastConnWithoutLock = [(_ANEClient *)self fastConnWithoutLock];
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

  return fastConnWithoutLock;
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
    daemonConnection = [(_ANEDaemonConnection *)self->_fastConn daemonConnection];
    [daemonConnection setInterruptionHandler:v11];

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

- (_ANEClient)initWithRestrictedAccessAllowed:(BOOL)allowed
{
  v23.receiver = self;
  v23.super_class = _ANEClient;
  v5 = [(_ANEClient *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v5->_allowRestrictedAccess = allowed;
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

    if (allowed)
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
    daemonConnection = [(_ANEDaemonConnection *)v6->_conn daemonConnection];
    [daemonConnection setInterruptionHandler:v22];

    v21[2] = __46___ANEClient_initWithRestrictedAccessAllowed___block_invoke_6;
    v21[3] = &__block_descriptor_40_e5_v8__0l;
    v21[4] = a2;
    v15 = [(_ANEDaemonConnection *)v6->_conn daemonConnection:MEMORY[0x1E69E9820]];
    [v15 setInvalidationHandler:v21];

    v6->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    connectionsUsedForLoadingModels = v6->_connectionsUsedForLoadingModels;
    v6->_connectionsUsedForLoadingModels = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    connections = v6->_connections;
    v6->_connections = dictionary2;
  }

  return v6;
}

- (void)dealloc
{
  conn = [(_ANEClient *)self conn];
  daemonConnection = [conn daemonConnection];
  [daemonConnection invalidate];

  fastConn = [(_ANEClient *)self fastConn];
  daemonConnection2 = [fastConn daemonConnection];
  [daemonConnection2 invalidate];

  v7.receiver = self;
  v7.super_class = _ANEClient;
  [(_ANEClient *)&v7 dealloc];
}

- (id)connectionForLoadingModel:(id)model options:(id)options
{
  v56 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  if (self->_isRootDaemon)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__3;
    v50 = __Block_byref_object_dispose__3;
    v51 = 0;
    getUUID = [modelCopy getUUID];
    os_unfair_lock_lock(&self->_lock);
    connectionsUsedForLoadingModels = [(_ANEClient *)self connectionsUsedForLoadingModels];
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __48___ANEClient_connectionForLoadingModel_options___block_invoke;
    v42 = &unk_1E79BA4D0;
    v11 = getUUID;
    selfCopy = self;
    v45 = &v46;
    v43 = v11;
    [connectionsUsedForLoadingModels enumerateKeysAndObjectsUsingBlock:&v39];

    if (!v47[5])
    {
      v12 = [optionsCopy objectForKeyedSubscript:kANEFModelTypeKey[0]];
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
        conn = [(_ANEClient *)self conn];
        v20 = v47[5];
        v47[5] = conn;
      }

      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v47[5], v39, v40, v41, v42];
      connections = [(_ANEClient *)self connections];
      v24 = [connections objectForKeyedSubscript:v22];
      v25 = v24 == 0;

      if (v25)
      {
        v26 = v47[5];
        connections2 = [(_ANEClient *)self connections];
        [connections2 setObject:v26 forKeyedSubscript:v22];
      }

      connectionsUsedForLoadingModels2 = [(_ANEClient *)self connectionsUsedForLoadingModels];
      v29 = [connectionsUsedForLoadingModels2 objectForKeyedSubscript:v22];

      if (!v29)
      {
        v29 = [MEMORY[0x1E695DFA8] set];
        connectionsUsedForLoadingModels3 = [(_ANEClient *)self connectionsUsedForLoadingModels];
        [connectionsUsedForLoadingModels3 setObject:v29 forKeyedSubscript:v22];
      }

      [v29 addObject:v11];
    }

    os_unfair_lock_unlock(&self->_lock);
    v31 = v47[5];
    conn2 = [(_ANEClient *)self conn];
    LODWORD(v31) = v31 == conn2;

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

    conn3 = v47[5];
    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v14 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
    {
      [_ANEClient connectionForLoadingModel:v14 options:a2];
    }

    conn3 = [(_ANEClient *)self conn];
  }

  v37 = *MEMORY[0x1E69E9840];

  return conn3;
}

- (id)connectionUsedForLoadingModel:(id)model
{
  modelCopy = model;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  getUUID = [modelCopy getUUID];
  os_unfair_lock_lock(&self->_lock);
  connectionsUsedForLoadingModels = [(_ANEClient *)self connectionsUsedForLoadingModels];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44___ANEClient_connectionUsedForLoadingModel___block_invoke;
  v10[3] = &unk_1E79BA4D0;
  v7 = getUUID;
  selfCopy = self;
  v13 = &v14;
  v11 = v7;
  [connectionsUsedForLoadingModels enumerateKeysAndObjectsUsingBlock:v10];

  os_unfair_lock_unlock(&self->_lock);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (BOOL)compiledModelExistsFor:(id)for
{
  v41 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v6 = mach_continuous_time();
  v7 = os_signpost_id_generate(gLogger_1);
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    v10 = [virtualClient2 compiledModelExistsFor:forCopy];
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
    if (forCopy)
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
      [forCopy string_id];
      kdebug_trace();
      v14 = gLogger_1;
      v15 = v14;
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        string_id = [forCopy string_id];
        *buf = 134217984;
        v40 = string_id;
        _os_signpost_emit_with_name_impl(&dword_1AD246000, v15, OS_SIGNPOST_EVENT, v7, "_ANEF_COMPILED_MODEL_EXISTS", "model.string_id:%llu", buf, 0xCu);
      }

      fastConn = [(_ANEClient *)self fastConn];
      v18 = fastConn;
      if (fastConn)
      {
        conn = fastConn;
      }

      else
      {
        conn = [(_ANEClient *)self conn];
      }

      v20 = conn;

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __37___ANEClient_compiledModelExistsFor___block_invoke;
      v27[3] = &unk_1E79BA598;
      v31 = a2;
      v21 = forCopy;
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

- (void)purgeCompiledModel:(id)model
{
  v37 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v6 = mach_continuous_time();
  v7 = os_signpost_id_generate(gLogger_1);
  [modelCopy string_id];
  kdebug_trace();
  v8 = gLogger_1;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [modelCopy string_id];
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v9, OS_SIGNPOST_EVENT, v7, "_ANEF_PURGE_COMPILED_MODEL", "model.string_id:%llu", &buf, 0xCu);
  }

  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    [virtualClient2 purgeCompiledModel:modelCopy];
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
    if (modelCopy)
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
      conn = [(_ANEClient *)self conn];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __33___ANEClient_purgeCompiledModel___block_invoke;
      v20[3] = &unk_1E79BA5C0;
      p_buf = &buf;
      v24 = a2;
      v22 = &v26;
      v16 = modelCopy;
      v21 = v16;
      v25 = v7;
      [conn purgeCompiledModel:v16 withReply:v20];

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

- (BOOL)compiledModelExistsMatchingHash:(id)hash
{
  v39 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
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

  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    v12 = [virtualClient2 compiledModelExistsMatchingHash:hashCopy];

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
  if (!hashCopy)
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
  fastConn = [(_ANEClient *)self fastConn];
  v16 = fastConn;
  if (fastConn)
  {
    conn = fastConn;
  }

  else
  {
    conn = [(_ANEClient *)self conn];
  }

  v18 = conn;

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __46___ANEClient_compiledModelExistsMatchingHash___block_invoke;
  v26[3] = &unk_1E79BA5E8;
  v26[4] = &v27;
  v26[5] = buf;
  v26[6] = a2;
  v26[7] = v7;
  [v18 compiledModelExistsMatchingHash:hashCopy withReply:v26];
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

- (void)purgeCompiledModelMatchingHash:(id)hash
{
  v29 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  v6 = mach_continuous_time();
  v7 = os_signpost_id_generate(gLogger_1);
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    [virtualClient2 purgeCompiledModelMatchingHash:hashCopy];
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
    if (hashCopy)
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

      conn = [(_ANEClient *)self conn];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __45___ANEClient_purgeCompiledModelMatchingHash___block_invoke;
      v21[3] = &unk_1E79BA5E8;
      v21[4] = &v24;
      v21[5] = v22;
      v21[6] = a2;
      v21[7] = v7;
      [conn purgeCompiledModelMatchingHash:hashCopy withReply:v21];

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

- (void)unmapIOSurfacesWithModel:(id)model request:(id)request
{
  v38 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  requestCopy = request;
  v9 = mach_continuous_time();
  v10 = os_signpost_id_generate(gLogger_1);
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
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

    if (modelCopy)
    {
      if (requestCopy)
      {
        mapper = [modelCopy mapper];
        v14 = gLogger_1;
        if (mapper)
        {
          if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
          {
            [_ANEClient mapIOSurfacesWithModel:request:cacheInference:error:];
          }

          [modelCopy string_id];
          kdebug_trace();
          v15 = gLogger_1;
          v16 = v15;
          if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
          {
            *buf = 134217984;
            string_id = [modelCopy string_id];
            _os_signpost_emit_with_name_impl(&dword_1AD246000, v16, OS_SIGNPOST_EVENT, v10, "_ANEF_IOSURFACES_UNMAP", "model.string_id:%llu", buf, 0xCu);
          }

          v31 = 0;
          v17 = mapper;
          v18 = [mapper unmapIOSurfacesWithModel:modelCopy request:requestCopy error:&v31];
          v29 = v31;
          v19 = gLogger_1;
          if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_DEBUG))
          {
            v27 = v19;
            v28 = NSStringFromSelector(a2);
            *buf = 138412802;
            string_id = v28;
            v34 = 1024;
            v35 = v18;
            v36 = 2112;
            v37 = v29;
            _os_log_debug_impl(&dword_1AD246000, v27, OS_LOG_TYPE_DEBUG, "%@: success=%d : err=%@", buf, 0x1Cu);
          }

          [modelCopy string_id];
          kdebug_trace();
          v20 = gLogger_1;
          v21 = v20;
          if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {

            v23 = gLogger_1;
            mapper = v17;
          }

          else
          {
            if (os_signpost_enabled(v20))
            {
              string_id2 = [modelCopy string_id];
              *buf = 134218240;
              string_id = string_id2;
              v34 = 1024;
              v35 = v18;
              _os_signpost_emit_with_name_impl(&dword_1AD246000, v21, OS_SIGNPOST_EVENT, v10, "_ANEF_IOSURFACES_UNMAP", "model.string_id:%llu ok:%u", buf, 0x12u);
            }

            v23 = gLogger_1;
            mapper = v17;
            if (os_signpost_enabled(v23))
            {
              *buf = 134349056;
              string_id = v9;
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
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    beginRealTimeTask = [virtualClient2 beginRealTimeTask];

    return beginRealTimeTask;
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
      conn = [(_ANEClient *)self conn];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __31___ANEClient_beginRealTimeTask__block_invoke;
      v11[3] = &unk_1E79BA610;
      v11[4] = &v12;
      v11[5] = a2;
      [conn beginRealTimeTaskWithReply:v11];

      v9 = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
    }

    return v9 & 1;
  }
}

- (BOOL)endRealTimeTask
{
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    endRealTimeTask = [virtualClient2 endRealTimeTask];

    return endRealTimeTask;
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
      conn = [(_ANEClient *)self conn];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __29___ANEClient_endRealTimeTask__block_invoke;
      v11[3] = &unk_1E79BA610;
      v11[4] = &v12;
      v11[5] = a2;
      [conn endRealTimeTaskWithReply:v11];

      v9 = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
    }

    return v9 & 1;
  }
}

- (BOOL)evaluateRealTimeWithModel:(id)model options:(id)options request:(id)request error:(id *)error
{
  requestCopy = request;
  optionsCopy = options;
  modelCopy = model;
  LOBYTE(error) = [(_ANEClient *)self doEvaluateDirectWithModel:modelCopy options:optionsCopy request:requestCopy qos:+[_ANEQoSMapper error:"aneRealTimeTaskQoS"], error];

  return error;
}

- (BOOL)isVirtualClient
{
  virtualClient = [(_ANEClient *)self virtualClient];
  v3 = virtualClient != 0;

  return v3;
}

- (BOOL)echo:(id)echo
{
  echoCopy = echo;
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    v8 = [virtualClient2 echo:echoCopy];
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
    conn = [(_ANEClient *)self conn];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __19___ANEClient_echo___block_invoke;
    v12[3] = &unk_1E79BA610;
    v12[4] = &v13;
    v12[5] = a2;
    [conn echo:echoCopy withReply:v12];

    v8 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  return v8 & 1;
}

- (BOOL)isAnetoolRootDaemonConnection
{
  v19 = *MEMORY[0x1E69E9840];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  processInfo2 = [MEMORY[0x1E696AE30] processInfo];
  arguments = [processInfo2 arguments];

  if ([processName isEqualToString:@"anetool"])
  {
    if ([arguments count])
    {
      v7 = 0;
      do
      {
        v8 = [arguments objectAtIndexedSubscript:v7];
        if ([v8 isEqualToString:@"-u"] && v7 < objc_msgSend(arguments, "count") - 1)
        {
          v9 = [arguments objectAtIndexedSubscript:++v7];
          bOOLValue = [v9 BOOLValue];

          if (bOOLValue)
          {
            goto LABEL_12;
          }
        }

        else
        {

          ++v7;
        }
      }

      while (v7 < [arguments count]);
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

- (BOOL)sessionHintWithModel:(id)model hint:(id)hint options:(id)options report:(id)report error:(id *)error
{
  modelCopy = model;
  hintCopy = hint;
  optionsCopy = options;
  reportCopy = report;
  virtualClient = [(_ANEClient *)self virtualClient];

  if (virtualClient)
  {
    virtualClient2 = [(_ANEClient *)self virtualClient];
    LOBYTE(error) = [virtualClient2 sessionHintWithModel:modelCopy hint:hintCopy options:optionsCopy report:reportCopy error:error];

    goto LABEL_19;
  }

  if (+[_ANEDeviceInfo isVirtualMachine])
  {
    v19 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient doEnqueueSetsWithModel:v19 outputSet:? options:? qos:? error:?];
      if (!error)
      {
        goto LABEL_19;
      }
    }

    else if (!error)
    {
      goto LABEL_19;
    }

    v20 = NSStringFromSelector(a2);
    v21 = [_ANEErrors hostTooOld:v20];
LABEL_18:
    *error = v21;

    LOBYTE(error) = 0;
    goto LABEL_19;
  }

  if (!modelCopy)
  {
    v24 = +[_ANELog common];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient sessionHintWithModel:a2 hint:? options:? report:? error:?];
    }

    goto LABEL_16;
  }

  if (!hintCopy)
  {
    v24 = +[_ANELog common];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient sessionHintWithModel:a2 hint:? options:? report:? error:?];
    }

LABEL_16:

    if (!error)
    {
      goto LABEL_19;
    }

    v20 = NSStringFromSelector(a2);
    v21 = [_ANEErrors badArgumentForMethod:v20];
    goto LABEL_18;
  }

  program = [modelCopy program];
  v23 = program;
  if (program)
  {
    LOBYTE(error) = [program processSessionHint:hintCopy options:optionsCopy report:reportCopy error:error];
  }

  else
  {
    v26 = gLogger_1;
    if (os_log_type_enabled(gLogger_1, OS_LOG_TYPE_ERROR))
    {
      [_ANEClient sessionHintWithModel:v26 hint:? options:? report:? error:?];
    }

    if ([hintCopy isEqualToString:kANEFHintSessionInfo])
    {
      LOBYTE(error) = 1;
      if (reportCopy)
      {
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
        [reportCopy setObject:v27 forKeyedSubscript:kANEFHintReportSessionStatusKey];
      }
    }

    else if (error)
    {
      v28 = NSStringFromSelector(a2);
      *error = [_ANEErrors invalidModelErrorForMethod:v28];

      LOBYTE(error) = 0;
    }
  }

LABEL_19:
  return error;
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
  selfCopy = self;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_9(&dword_1AD246000, v5, v6, "%@: Virtual Machine environment detected but no virtualClient available.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)endRealTimeTask
{
  v13 = *MEMORY[0x1E69E9840];
  selfCopy = self;
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