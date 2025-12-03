@interface BSSharedMemoryStore
+ (id)deserializeDataOfClass:(Class)class withSerializedFromData:(id)data;
+ (void)_unlinkAllForIdentifier:(id)identifier;
- (BSSharedMemoryStore)init;
- (BSSharedMemoryStore)initWithIdentifier:(id)identifier dataClass:(Class)class;
- (BSSharedMemoryStoreData)data;
- (unsigned)_lastState;
- (void)_setFailureModeForNextWrite:(unsigned __int8)write;
- (void)dealloc;
- (void)invalidate;
- (void)setData:(id)data;
@end

@implementation BSSharedMemoryStore

- (BSSharedMemoryStore)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"BSSharedMemoryStore.m" lineNumber:103 description:@"init is not allowed on BSSharedMemoryStore"];

  return 0;
}

- (BSSharedMemoryStore)initWithIdentifier:(id)identifier dataClass:(Class)class
{
  v51 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v40 = v24;
      v41 = 2114;
      v42 = v26;
      v43 = 2048;
      selfCopy2 = self;
      v45 = 2114;
      v46 = @"BSSharedMemoryStore.m";
      v47 = 1024;
      v48 = 108;
      v49 = 2114;
      v50 = v23;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    qword_1EAD33B00 = [v23 UTF8String];
    __break(0);
    JUMPOUT(0x18FF2A9FCLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v40 = v29;
      v41 = 2114;
      v42 = v31;
      v43 = 2048;
      selfCopy2 = self;
      v45 = 2114;
      v46 = @"BSSharedMemoryStore.m";
      v47 = 1024;
      v48 = 108;
      v49 = 2114;
      v50 = v28;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    qword_1EAD33B00 = [v28 UTF8String];
    __break(0);
    JUMPOUT(0x18FF2AB04);
  }

  if ([identifierCopy length])
  {
    if (class)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSSharedMemoryStore.m" lineNumber:109 description:{@"identifier is too short : %@", identifierCopy}];

    if (class)
    {
      goto LABEL_5;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"BSSharedMemoryStore.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"dataClass"}];

LABEL_5:
  v38.receiver = self;
  v38.super_class = BSSharedMemoryStore;
  v8 = [(BSSharedMemoryStore *)&v38 init];
  v9 = v8;
  if (v8)
  {
    _initializePath(v8->_queue_path.path, identifierCopy);
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v9->_queue_path];
    basePath = v9->_basePath;
    v9->_basePath = v10;

    v12 = [@"com.apple.baseboard.shm-store:" stringByAppendingString:v9->_basePath];
    v13 = +[BSDispatchQueueAttributes serial];
    v14 = [v13 serviceClass:25];
    v15 = BSDispatchQueueCreate(v12, v14);
    queue = v9->_queue;
    v9->_queue = v15;

    queue_data = v9->_queue_data;
    v9->_queue_data = 0;

    *&v9->_queue_lastState = 0x1000000;
    os_unfair_lock_lock(&__allShmsLock);
    if ([__allShms containsObject:v9->_basePath])
    {
      os_unfair_lock_unlock(&__allShmsLock);
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:v9 file:@"BSSharedMemoryStore.m" lineNumber:127 description:{@"%@: competing with another shm for the same buffers", v9->_basePath}];
    }

    else
    {
      if (__allShms)
      {
        [__allShms addObject:v9->_basePath];
      }

      else
      {
        v19 = [MEMORY[0x1E695DFA8] setWithObject:v9->_basePath];
        v20 = __allShms;
        __allShms = v19;
      }

      os_unfair_lock_unlock(&__allShmsLock);
    }

    v9->_queue_invalidated = 0;
    v21 = v9->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__BSSharedMemoryStore_initWithIdentifier_dataClass___block_invoke;
    block[3] = &unk_1E72CAED8;
    v36 = v9;
    classCopy = class;
    dispatch_async(v21, block);
  }

  return v9;
}

void __52__BSSharedMemoryStore_initWithIdentifier_dataClass___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  *(v2 + 24 + *(v2 + 56)) = 49;
  v4 = BSShmLoad((v2 + 24), *(a1 + 40), &v31 + 1, &v31);
  v30 = 0;
  v5 = (*v3 + 24);
  v5[*(*v3 + 56)] = 50;
  v6 = BSShmLoad(v5, *(a1 + 40), &v30 + 1, &v30);
  v7 = v6;
  if (v4 && v6)
  {
    if (HIBYTE(v31) == HIBYTE(v30))
    {
      goto LABEL_12;
    }

LABEL_6:
    objc_storeStrong((*(a1 + 32) + 64), v4);
    if (HIBYTE(v31))
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    *(*(a1 + 32) + 72) = v8;
    v9 = 1;
    if (v30)
    {
      v10 = 0;
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  if (!v6)
  {
    v25 = *(a1 + 32);
    v26 = *(v25 + 64);
    *(v25 + 64) = 0;

    v12 = 0;
    v9 = 0;
    v11 = 1;
    goto LABEL_15;
  }

LABEL_12:
  objc_storeStrong((*(a1 + 32) + 64), v6);
  v11 = 0;
  v9 = 2;
  if (HIBYTE(v30))
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

LABEL_15:
  *(*(a1 + 32) + 72) = v12;
  if (v31 == 1)
  {
    v13 = *(a1 + 32);
    *(v13 + 24 + *(v13 + 56)) = 49;
    BSShmDelete((v13 + 24), 0);
    if ((v11 & v30 & 1) == 0)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if ((v11 & v30 & 1) == 0)
  {
    if (v11)
    {
      v14 = BSLogSharedMemory();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v18 = *(*(a1 + 32) + 16);
      *buf = 138412290;
      v33 = v18;
      v19 = "%@: initializing to nil";
      v20 = v14;
      v21 = OS_LOG_TYPE_DEFAULT;
      v22 = 12;
LABEL_30:
      _os_log_impl(&dword_18FEF6000, v20, v21, v19, buf, v22);
      goto LABEL_31;
    }

LABEL_28:
    v14 = BSLogSharedMemory();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_31;
    }

    v23 = *(*(a1 + 32) + 16);
    *buf = 138412546;
    v33 = v23;
    v34 = 1024;
    LODWORD(v35) = v9;
    v19 = "%@: restored from buffer %i";
    v20 = v14;
    v21 = OS_LOG_TYPE_INFO;
    v22 = 18;
    goto LABEL_30;
  }

LABEL_21:
  v10 = 1;
LABEL_22:
  v16 = *(a1 + 32);
  *(v16 + 24 + *(v16 + 56)) = 50;
  BSShmDelete((v16 + 24), 0);
  if (!v10)
  {
LABEL_18:
    v14 = BSLogSharedMemory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*(a1 + 32) + 16);
      *buf = 138412546;
      v33 = v15;
      v34 = 1024;
      LODWORD(v35) = v9;
      _os_log_error_impl(&dword_18FEF6000, v14, OS_LOG_TYPE_ERROR, "%@: resolved to restore from buffer %i", buf, 0x12u);
    }

    goto LABEL_31;
  }

LABEL_23:
  v14 = BSLogSharedMemory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    v17 = *(*(a1 + 32) + 16);
    *buf = 138412290;
    v33 = v17;
    _os_log_fault_impl(&dword_18FEF6000, v14, OS_LOG_TYPE_FAULT, "%@: failed to restore from buffers", buf, 0xCu);
  }

LABEL_31:

  if (*(*(a1 + 32) + 64))
  {
    v24 = BSLogSharedMemory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 32);
      v28 = *(v27 + 16);
      v29 = *(v27 + 64);
      *buf = 138412546;
      v33 = v28;
      v34 = 2112;
      v35 = v29;
      _os_log_debug_impl(&dword_18FEF6000, v24, OS_LOG_TYPE_DEBUG, "%@: loaded data = %@", buf, 0x16u);
    }
  }
}

- (void)dealloc
{
  if (!self->_queue_invalidated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSSharedMemoryStore.m" lineNumber:207 description:@"must invalidate before dealloc"];
  }

  v5.receiver = self;
  v5.super_class = BSSharedMemoryStore;
  [(BSSharedMemoryStore *)&v5 dealloc];
}

- (void)invalidate
{
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__BSSharedMemoryStore_invalidate__block_invoke;
  v3[3] = &unk_1E72CAF00;
  v3[4] = self;
  v3[5] = a2;
  dispatch_async_and_wait(queue, v3);
}

void __33__BSSharedMemoryStore_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 75) & 1) == 0)
  {
    *(v1 + 75) = 1;
    os_unfair_lock_lock(&__allShmsLock);
    if ([__allShms containsObject:*(*(a1 + 32) + 16)])
    {
      [__allShms removeObject:*(*(a1 + 32) + 16)];
      if (![__allShms count])
      {
        v3 = __allShms;
        __allShms = 0;
      }

      os_unfair_lock_unlock(&__allShmsLock);
    }

    else
    {
      os_unfair_lock_unlock(&__allShmsLock);
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:*(a1 + 40) object:*(*(a1 + 32) + 16) file:? lineNumber:? description:?];
    }
  }
}

- (BSSharedMemoryStoreData)data
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__BSSharedMemoryStore_data__block_invoke;
  v5[3] = &unk_1E72CAF28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = [v7[5] copyWithZone:0];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy copyWithZone:0];
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__BSSharedMemoryStore_setData___block_invoke;
  v8[3] = &unk_1E72CACC0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __31__BSSharedMemoryStore_setData___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 64);
  if (v3 == v2 || ([v3 isEqual:?] & 1) != 0)
  {
    return;
  }

  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  if (!*(v4 + 64))
  {
    v6 = 0;
    goto LABEL_7;
  }

  *(v4 + 24 + *(v4 + 56)) = 0x32313231u >> (8 * (v5 & 3));
  if (BSShmStore((v4 + 24), *(*(a1 + 32) + 64), (v5 >> 1) & 1, (*(a1 + 32) + 73)))
  {
    v6 = (v5 & 3) + 1;
LABEL_7:
    v7 = BSLogSharedMemory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 32);
      v17 = *(v16 + 16);
      v18 = *(v16 + 64);
      v22 = 138412546;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      _os_log_debug_impl(&dword_18FEF6000, v7, OS_LOG_TYPE_DEBUG, "%@: stored data = %@", &v22, 0x16u);
    }

    *(*(a1 + 32) + 72) = v6;
    v8 = *(a1 + 32);
    if (v8[73] == 1)
    {
      v8[73] = 0;
      v9 = BSLogSharedMemory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v20 = 0x3231323100uLL >> (8 * v5);
        if (v5 >= 5)
        {
          LOBYTE(v20) = 0;
        }

        *(v19 + 24 + *(v19 + 56)) = v20;
        v22 = 136315138;
        v23 = v19 + 24;
        _os_log_error_impl(&dword_18FEF6000, v9, OS_LOG_TYPE_ERROR, "%s: simulating failure to purge old buffer", &v22, 0xCu);
      }

LABEL_11:

      return;
    }

    if (v5)
    {
      v10 = v8 + 24;
      v11 = 0x3231323100uLL >> (8 * v5);
      if (v5 >= 5)
      {
        LOBYTE(v11) = 0;
      }

      v10[v8[56]] = v11;
      BSShmDelete(v10, 0);
    }

    return;
  }

  if (v5)
  {
    v9 = BSLogSharedMemory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v21 = *(*(a1 + 32) + 16);
      v22 = 138412290;
      v23 = v21;
      _os_log_fault_impl(&dword_18FEF6000, v9, OS_LOG_TYPE_FAULT, "%@: data desynced with shm", &v22, 0xCu);
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 32);
  v13 = OS_LOG_TYPE_INFO;
  if ((*(v12 + 74) & 1) == 0)
  {
    *(v12 + 74) = 1;
    v13 = OS_LOG_TYPE_FAULT;
  }

  v14 = BSLogSharedMemory();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = *(*(a1 + 32) + 16);
    v22 = 138412290;
    v23 = v15;
    _os_log_impl(&dword_18FEF6000, v14, v13, "%@: failed to write new workspace connections state to shm - are we sandboxed?", &v22, 0xCu);
  }
}

+ (id)deserializeDataOfClass:(Class)class withSerializedFromData:(id)data
{
  v73 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v8 = dataCopy;
  if (class)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSSharedMemoryStore.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"dataClass"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"BSSharedMemoryStore.m" lineNumber:279 description:{@"Invalid parameter not satisfying: %@", @"source"}];

LABEL_3:
  serializedDataLength = [v8 serializedDataLength];
  v10 = serializedDataLength;
  if (serializedDataLength >= 0x7FFFFFFFFFFFFFF0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSSharedMemoryStore deserializeDataOfClass:withSerializedFromData:]"];
    [currentHandler3 handleFailureInFunction:v29 file:@"BSSharedMemoryStore.m" lineNumber:287 description:@"shmLength out of range"];
  }

  else if (!serializedDataLength)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v11 = malloc_type_malloc(v10, 0xEF036D3FuLL);
  if (!v11)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSSharedMemoryStore deserializeDataOfClass:withSerializedFromData:]"];
    [currentHandler4 handleFailureInFunction:v31 file:@"BSSharedMemoryStore.m" lineNumber:291 description:@"failed to allocate serializing buffers"];
  }

  bzero(v11, v10);
LABEL_9:
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 1;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __69__BSSharedMemoryStore_deserializeDataOfClass_withSerializedFromData___block_invoke;
  v47[3] = &unk_1E72CAF50;
  v13 = currentThread;
  v48 = v13;
  v49 = &v62;
  v52 = v10;
  v53 = v11;
  v50 = &v58;
  v51 = &v54;
  v14 = [v8 serializeToWriter:v47];
  *(v63 + 24) = 0;
  if (v14)
  {
    if (*(v55 + 24))
    {
      v15 = BSLogSharedMemory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v70) = 138412290;
        *(&v70 + 4) = v8;
        v16 = "data serialized but it tried to serialize more than it declared necessary : %@";
LABEL_47:
        _os_log_error_impl(&dword_18FEF6000, v15, OS_LOG_TYPE_ERROR, v16, &v70, 0xCu);
      }
    }

    else
    {
      if (v59[3] == v10)
      {
        goto LABEL_20;
      }

      v15 = BSLogSharedMemory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v70) = 138412290;
        *(&v70 + 4) = v8;
        v16 = "data serialized but it serialized less than it declared necessary : %@";
        goto LABEL_47;
      }
    }

LABEL_20:
    *&v70 = 0;
    *(&v70 + 1) = &v70;
    v71 = 0x2020000000;
    v72 = 1;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __69__BSSharedMemoryStore_deserializeDataOfClass_withSerializedFromData___block_invoke_60;
    v32[3] = &unk_1E72CAF78;
    v33 = v13;
    v34 = &v70;
    v37 = v10;
    v38 = v11;
    v35 = &v43;
    v36 = &v39;
    v18 = [(objc_class *)class deserializeFromReader:v32];
    *(*(&v70 + 1) + 24) = 0;
    if (v18)
    {
      if (*(v40 + 24))
      {
        v19 = BSLogSharedMemory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v67 = v8;
          v68 = 2112;
          v69 = v18;
          _os_log_debug_impl(&dword_18FEF6000, v19, OS_LOG_TYPE_DEBUG, "data deserialized but it tried to over read : data=%@ deserialized=%@", buf, 0x16u);
        }
      }

      else
      {
        if (v44[3] == v10)
        {
LABEL_42:

          _Block_object_dispose(&v39, 8);
          _Block_object_dispose(&v43, 8);
          _Block_object_dispose(&v70, 8);
          goto LABEL_43;
        }

        v19 = BSLogSharedMemory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v67 = v8;
          v68 = 2112;
          v69 = v18;
          _os_log_impl(&dword_18FEF6000, v19, OS_LOG_TYPE_INFO, "data deserialized but it didn't read everything : data=%@ deserialized=%@", buf, 0x16u);
        }
      }

LABEL_41:

      goto LABEL_42;
    }

    if (*(v40 + 24))
    {
      v19 = BSLogSharedMemory();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      *buf = 138412290;
      v67 = v8;
      v22 = "data failed to deserialize (maybe because it tried to over read) : data=%@";
    }

    else
    {
      v23 = v44[3];
      v19 = BSLogSharedMemory();
      v24 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (v23 == v10)
      {
        if (!v24)
        {
          goto LABEL_41;
        }

        *buf = 138412290;
        v67 = v8;
        v22 = "data failed to deserialize (external reason) : data=%@";
      }

      else
      {
        if (!v24)
        {
          goto LABEL_41;
        }

        *buf = 138412290;
        v67 = v8;
        v22 = "data failed to deserialize (maybe because it didn't read everything) : data=%@";
      }
    }

    _os_log_error_impl(&dword_18FEF6000, v19, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
    goto LABEL_41;
  }

  if (*(v55 + 24))
  {
    v17 = BSLogSharedMemory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v70) = 138412290;
      *(&v70 + 4) = v8;
      _os_log_error_impl(&dword_18FEF6000, v17, OS_LOG_TYPE_ERROR, "data failed to serialize (maybe because it tried to write more than it declared up front) : %@", &v70, 0xCu);
    }
  }

  else
  {
    v20 = v59[3];
    v17 = BSLogSharedMemory();
    v21 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (v20 == v10)
    {
      if (v21)
      {
        LODWORD(v70) = 138412290;
        *(&v70 + 4) = v8;
        _os_log_error_impl(&dword_18FEF6000, v17, OS_LOG_TYPE_ERROR, "data failed to serialize (external reason) : %@", &v70, 0xCu);
      }
    }

    else if (v21)
    {
      LODWORD(v70) = 138412290;
      *(&v70 + 4) = v8;
      _os_log_error_impl(&dword_18FEF6000, v17, OS_LOG_TYPE_ERROR, "data failed to serialize (maybe because it tried to write less than it declared up front) : %@", &v70, 0xCu);
    }
  }

  v18 = 0;
LABEL_43:
  free(v11);

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);

  return v18;
}

uint64_t __69__BSSharedMemoryStore_deserializeDataOfClass_withSerializedFromData___block_invoke(void *a1, const void *a2, size_t a3)
{
  v6 = a1[4];
  v7 = [MEMORY[0x1E696AF00] currentThread];

  if (v6 != v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSSharedMemoryStore deserializeDataOfClass:withSerializedFromData:]_block_invoke"];
    [v13 handleFailureInFunction:v14 file:@"BSSharedMemoryStore.m" lineNumber:299 description:@"writeBlock cannot be called on a different thread"];
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSSharedMemoryStore deserializeDataOfClass:withSerializedFromData:]_block_invoke"];
    [v15 handleFailureInFunction:v16 file:@"BSSharedMemoryStore.m" lineNumber:300 description:@"writeBlock must be called in scope"];
  }

  v8 = a1[8];
  v9 = v8 - a3;
  if (v8 >= a3 && (v10 = *(*(a1[6] + 8) + 24), v10 <= v9))
  {
    if (a3)
    {
      memcpy((a1[9] + v10), a2, a3);
      *(*(a1[6] + 8) + 24) += a3;
    }

    return 1;
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
    v11 = __error();
    result = 0;
    *v11 = 28;
  }

  return result;
}

uint64_t __69__BSSharedMemoryStore_deserializeDataOfClass_withSerializedFromData___block_invoke_60(void *a1, void *a2, size_t a3)
{
  if (!a2)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSSharedMemoryStore deserializeDataOfClass:withSerializedFromData:]_block_invoke"];
    [v13 handleFailureInFunction:v14 file:@"BSSharedMemoryStore.m" lineNumber:328 description:@"buf cannot be nil"];
  }

  v6 = a1[4];
  v7 = [MEMORY[0x1E696AF00] currentThread];

  if (v6 != v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSSharedMemoryStore deserializeDataOfClass:withSerializedFromData:]_block_invoke"];
    [v15 handleFailureInFunction:v16 file:@"BSSharedMemoryStore.m" lineNumber:329 description:@"readBlock cannot be called on a different thread"];
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BSSharedMemoryStore deserializeDataOfClass:withSerializedFromData:]_block_invoke"];
    [v17 handleFailureInFunction:v18 file:@"BSSharedMemoryStore.m" lineNumber:330 description:@"readBlock must be called in scope"];
  }

  v8 = a1[8];
  v9 = v8 - a3;
  if (v8 >= a3 && (v10 = *(*(a1[6] + 8) + 24), v10 <= v9))
  {
    if (a3)
    {
      memcpy(a2, (a1[9] + v10), a3);
      *(*(a1[6] + 8) + 24) += a3;
    }

    return 1;
  }

  else
  {
    *(*(a1[7] + 8) + 24) = 1;
    v11 = __error();
    result = 0;
    *v11 = 14;
  }

  return result;
}

- (unsigned)_lastState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__BSSharedMemoryStore__lastState__block_invoke;
  v5[3] = &unk_1E72CAF28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setFailureModeForNextWrite:(unsigned __int8)write
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__BSSharedMemoryStore__setFailureModeForNextWrite___block_invoke;
  v4[3] = &unk_1E72CAFA0;
  v4[4] = self;
  writeCopy = write;
  dispatch_async_and_wait(queue, v4);
}

+ (void)_unlinkAllForIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      *&buf[24] = self;
      v17 = 2114;
      v18 = @"BSSharedMemoryStore.m";
      v19 = 1024;
      v20 = 393;
      v21 = 2114;
      v22 = v6;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    qword_1EAD33B00 = [v6 UTF8String];
    __break(0);
    JUMPOUT(0x18FF2D274);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      *&buf[22] = 2048;
      *&buf[24] = self;
      v17 = 2114;
      v18 = @"BSSharedMemoryStore.m";
      v19 = 1024;
      v20 = 393;
      v21 = 2114;
      v22 = v11;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v15 = v11;
    qword_1EAD33B00 = [v11 UTF8String];
    __break(0);
    JUMPOUT(0x18FF2D37CLL);
  }

  LOBYTE(v17) = 0;
  memset(buf, 0, sizeof(buf));
  _initializePath(buf, identifierCopy);
  buf[v17] = 49;
  BSShmDelete(buf, 1);
  buf[v17] = 50;
  BSShmDelete(buf, 1);
}

@end