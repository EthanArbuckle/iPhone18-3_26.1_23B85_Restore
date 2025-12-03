@interface GCRemoteUserDefaultsProxy
- (BOOL)BOOLForKey:(id)key;
- (BOOL)agentConnectionEstablished;
- (GCRemoteUserDefaultsProxy)init;
- (double)doubleForKey:(id)key;
- (float)floatForKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)dataForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
- (int64_t)integerForKey:(id)key;
- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (void)observeUserDefaultsValueForKeyPath:(id)path change:(id)change;
- (void)postInitialKVONotificationForObservation:(id)observation keyPath:(id)path;
- (void)refreshActiveClient;
- (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setFloat:(float)float forKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation GCRemoteUserDefaultsProxy

- (GCRemoteUserDefaultsProxy)init
{
  v11.receiver = self;
  v11.super_class = GCRemoteUserDefaultsProxy;
  v2 = [(GCRemoteUserDefaultsProxy *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("GCRemoteUserDefaultsProxy", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = objc_opt_new();
    clients = v2->_clients;
    v2->_clients = v7;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_consoleUserDidChange_ name:*MEMORY[0x1E69A0330] object:0];
  }

  return v2;
}

- (BOOL)agentConnectionEstablished
{
  activeClient = [(GCRemoteUserDefaultsProxy *)self activeClient];
  v3 = activeClient != 0;

  return v3;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy objectForKey:];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v9 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_41];

      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__7;
      v17 = __Block_byref_object_dispose__7;
      v18 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_77;
      v12[3] = &unk_1E841AFF8;
      v12[4] = &v13;
      [v9 objectForKey:keyCopy withReply:v12];
      if (gc_isInternalBuild())
      {
        getGCLogger();
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v10 = v14[5];
      _Block_object_dispose(&v13, 8);

LABEL_8:
      goto LABEL_11;
    }

    if (gc_isInternalBuild())
    {
      v9 = getGCLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v10 = 0;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

void __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild())
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1();
  }
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy stringForKey:];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v9 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_80];

      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__7;
      v17 = __Block_byref_object_dispose__7;
      v18 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __42__GCRemoteUserDefaultsProxy_stringForKey___block_invoke_81;
      v12[3] = &unk_1E841B020;
      v12[4] = &v13;
      [v9 stringForKey:keyCopy withReply:v12];
      if (gc_isInternalBuild())
      {
        getGCLogger();
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy stringForKey:];
      }

      v10 = v14[5];
      _Block_object_dispose(&v13, 8);

LABEL_8:
      goto LABEL_11;
    }

    if (gc_isInternalBuild())
    {
      v9 = getGCLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v10 = 0;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

void __42__GCRemoteUserDefaultsProxy_stringForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild())
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1();
  }
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy dataForKey:];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v9 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_84];

      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__7;
      v17 = __Block_byref_object_dispose__7;
      v18 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __40__GCRemoteUserDefaultsProxy_dataForKey___block_invoke_85;
      v12[3] = &unk_1E841B048;
      v12[4] = &v13;
      [v9 dataForKey:keyCopy withReply:v12];
      if (gc_isInternalBuild())
      {
        getGCLogger();
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy dataForKey:];
      }

      v10 = v14[5];
      _Block_object_dispose(&v13, 8);

LABEL_8:
      goto LABEL_11;
    }

    if (gc_isInternalBuild())
    {
      v9 = getGCLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v10 = 0;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

void __40__GCRemoteUserDefaultsProxy_dataForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild())
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1();
  }
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy dictionaryForKey:];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v9 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_88];

      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__7;
      v17 = __Block_byref_object_dispose__7;
      v18 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __46__GCRemoteUserDefaultsProxy_dictionaryForKey___block_invoke_89;
      v12[3] = &unk_1E841B070;
      v12[4] = &v13;
      [v9 dictionaryForKey:keyCopy withReply:v12];
      if (gc_isInternalBuild())
      {
        getGCLogger();
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy dictionaryForKey:];
      }

      v10 = v14[5];
      _Block_object_dispose(&v13, 8);

LABEL_8:
      goto LABEL_11;
    }

    if (gc_isInternalBuild())
    {
      v9 = getGCLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v10 = 0;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

void __46__GCRemoteUserDefaultsProxy_dictionaryForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild())
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1();
  }
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy arrayForKey:];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v9 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_92];

      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__7;
      v17 = __Block_byref_object_dispose__7;
      v18 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __41__GCRemoteUserDefaultsProxy_arrayForKey___block_invoke_93;
      v12[3] = &unk_1E841B098;
      v12[4] = &v13;
      [v9 arrayForKey:keyCopy withReply:v12];
      if (gc_isInternalBuild())
      {
        getGCLogger();
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy arrayForKey:];
      }

      v10 = v14[5];
      _Block_object_dispose(&v13, 8);

LABEL_8:
      goto LABEL_11;
    }

    if (gc_isInternalBuild())
    {
      v9 = getGCLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v10 = 0;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

void __41__GCRemoteUserDefaultsProxy_arrayForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild())
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1();
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  activeClient = [(GCRemoteUserDefaultsProxy *)self activeClient];
  [activeClient setObject:objectCopy forKey:keyCopy];
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy BOOLForKey:];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v9 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_96];

      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __40__GCRemoteUserDefaultsProxy_BOOLForKey___block_invoke_97;
      v11[3] = &unk_1E841B0C0;
      v11[4] = &v12;
      [v9 BOOLForKey:keyCopy withReply:v11];
      if (gc_isInternalBuild())
      {
        getGCLogger();
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy BOOLForKey:];
      }

      LOBYTE(agentConnectionEstablished) = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
    }

    else
    {
      if (!gc_isInternalBuild())
      {
        LOBYTE(agentConnectionEstablished) = 0;
        goto LABEL_11;
      }

      v9 = getGCLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      LOBYTE(agentConnectionEstablished) = 0;
    }
  }

LABEL_11:

  return agentConnectionEstablished & 1;
}

void __40__GCRemoteUserDefaultsProxy_BOOLForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild())
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1();
  }
}

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  v7 = 0.0;
  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy doubleForKey:];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v10 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_100];

      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __42__GCRemoteUserDefaultsProxy_doubleForKey___block_invoke_101;
      v12[3] = &unk_1E841B0E8;
      v12[4] = &v13;
      [v10 doubleForKey:keyCopy withReply:v12];
      if (gc_isInternalBuild())
      {
        getGCLogger();
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy doubleForKey:];
      }

      v7 = v14[3];
      _Block_object_dispose(&v13, 8);
    }

    else
    {
      if (!gc_isInternalBuild())
      {
        goto LABEL_10;
      }

      v10 = getGCLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }
    }
  }

LABEL_10:

  return v7;
}

void __42__GCRemoteUserDefaultsProxy_doubleForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild())
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1();
  }
}

- (void)setDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  activeClient = [(GCRemoteUserDefaultsProxy *)self activeClient];
  [activeClient setDouble:keyCopy forKey:double];
}

- (float)floatForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  v7 = 0.0;
  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy floatForKey:];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v10 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_104_0];

      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __41__GCRemoteUserDefaultsProxy_floatForKey___block_invoke_105;
      v12[3] = &unk_1E841B110;
      v12[4] = &v13;
      [v10 floatForKey:keyCopy withReply:v12];
      if (gc_isInternalBuild())
      {
        getGCLogger();
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy floatForKey:];
      }

      v7 = v14[6];
      _Block_object_dispose(&v13, 8);
    }

    else
    {
      if (!gc_isInternalBuild())
      {
        goto LABEL_10;
      }

      v10 = getGCLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }
    }
  }

LABEL_10:

  return v7;
}

void __41__GCRemoteUserDefaultsProxy_floatForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild())
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1();
  }
}

- (void)setFloat:(float)float forKey:(id)key
{
  keyCopy = key;
  activeClient = [(GCRemoteUserDefaultsProxy *)self activeClient];
  *&v7 = float;
  [activeClient setFloat:keyCopy forKey:v7];
}

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (!agentConnectionEstablished)
  {
    goto LABEL_10;
  }

  if (gc_isInternalBuild())
  {
    [GCRemoteUserDefaultsProxy integerForKey:];
  }

  activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

  if (!activeClient)
  {
    if (gc_isInternalBuild())
    {
      v9 = getGCLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v10 = 0;
      goto LABEL_8;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
  v9 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_108_0];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__GCRemoteUserDefaultsProxy_integerForKey___block_invoke_109;
  v12[3] = &unk_1E841B138;
  v12[4] = &v13;
  [v9 integerForKey:keyCopy withReply:v12];
  if (gc_isInternalBuild())
  {
    getGCLogger();
    objc_claimAutoreleasedReturnValue();
    [GCRemoteUserDefaultsProxy integerForKey:];
  }

  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
LABEL_8:

LABEL_11:
  return v10;
}

void __43__GCRemoteUserDefaultsProxy_integerForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild())
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1();
  }
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  activeClient = [(GCRemoteUserDefaultsProxy *)self activeClient];
  [activeClient setInteger:integer forKey:keyCopy];
}

- (void)postInitialKVONotificationForObservation:(id)observation keyPath:(id)path
{
  observationCopy = observation;
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (!agentConnectionEstablished)
  {
    goto LABEL_17;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:&unk_1F4E8F1B8 forKeyedSubscript:*MEMORY[0x1E696A4E8]];
  if (([observationCopy options] & 4) != 0)
  {
    null3 = [(GCRemoteUserDefaultsProxy *)selfCopy objectForKey:pathCopy];
    if (!null3)
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v10 setObject:null forKeyedSubscript:*MEMORY[0x1E696A4F0]];

LABEL_13:
      goto LABEL_14;
    }

    v13 = MEMORY[0x1E696A4F0];
LABEL_12:
    [v10 setObject:null3 forKeyedSubscript:*v13];
    goto LABEL_13;
  }

  if ([observationCopy options])
  {
    v11 = [(GCRemoteUserDefaultsProxy *)selfCopy objectForKey:pathCopy];
    if (v11)
    {
      [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A4F0]];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [v10 setObject:null2 forKeyedSubscript:*MEMORY[0x1E696A4F0]];
    }

    if (([observationCopy options] & 2) != 0)
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      v13 = MEMORY[0x1E696A500];
      goto LABEL_12;
    }
  }

LABEL_14:
  if (gc_isInternalBuild())
  {
    [GCRemoteUserDefaultsProxy postInitialKVONotificationForObservation:keyPath:];
  }

  observer = [observationCopy observer];
  [observer observeValueForKeyPath:pathCopy ofObject:selfCopy change:v10 context:{objc_msgSend(observationCopy, "context")}];

LABEL_17:
}

- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  v25 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (gc_isInternalBuild())
  {
    v18 = getGCLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 138412802;
      v20 = observerCopy;
      v21 = 2112;
      v22 = pathCopy;
      v23 = 2048;
      contextCopy = context;
      _os_log_impl(&dword_1D2CD5000, v18, OS_LOG_TYPE_INFO, "GCRemoteUserDefaultsProxy - addObserver:%@ forKeyPath:%@ context:%lu", &v19, 0x20u);
    }
  }

  v13 = [(NSMutableDictionary *)selfCopy->_observers objectForKeyedSubscript:pathCopy];
  v14 = [v13 mutableCopy];

  if (!v14)
  {
    v14 = objc_opt_new();
    if ([(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished])
    {
      activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      [activeClient observeKeyPath:pathCopy];
    }

    if (gc_isInternalBuild())
    {
      getGCLogger();
      objc_claimAutoreleasedReturnValue();
      [GCRemoteUserDefaultsProxy addObserver:forKeyPath:options:context:];
    }
  }

  v16 = [[GCObservation alloc] initWithObserver:observerCopy options:options context:context];
  [v14 addObject:v16];
  [(NSMutableDictionary *)selfCopy->_observers setObject:v14 forKeyedSubscript:pathCopy];
  if (([(GCObservation *)v16 options]& 4) != 0)
  {
    [(GCRemoteUserDefaultsProxy *)selfCopy postInitialKVONotificationForObservation:v16 keyPath:pathCopy];
  }

  if (gc_isInternalBuild())
  {
    getGCLogger();
    objc_claimAutoreleasedReturnValue();
    [GCRemoteUserDefaultsProxy addObserver:forKeyPath:options:context:];
  }

  objc_sync_exit(selfCopy);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context
{
  v25 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(NSMutableDictionary *)selfCopy->_observers objectForKeyedSubscript:pathCopy];
  v12 = [v11 mutableCopy];

  if (gc_isInternalBuild())
  {
    v18 = getGCLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v20 = 138412802;
      *&v20[4] = observerCopy;
      v21 = 2112;
      v22 = pathCopy;
      v23 = 2048;
      contextCopy = context;
      _os_log_impl(&dword_1D2CD5000, v18, OS_LOG_TYPE_INFO, "GCRemoteUserDefaultsProxy - removeObserver %@ forKeyPath %@ context %lu", v20, 0x20u);
    }
  }

  if (v12)
  {
    v13 = [[GCObservation alloc] initWithObserver:observerCopy options:0 context:0];
    if ([v12 containsObject:v13])
    {
      [v12 removeObject:v13];
      v14 = [v12 count];
      observers = selfCopy->_observers;
      if (v14)
      {
        [(NSMutableDictionary *)observers setObject:v12 forKeyedSubscript:pathCopy];
      }

      else
      {
        [(NSMutableDictionary *)observers removeObjectForKey:pathCopy];
        if ([(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished])
        {
          activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
          [activeClient stopObservingKeyPath:pathCopy];
        }

        if (gc_isInternalBuild())
        {
          getGCLogger();
          objc_claimAutoreleasedReturnValue();
          [GCRemoteUserDefaultsProxy removeObserver:forKeyPath:context:];
        }
      }

      if (!gc_isInternalBuild())
      {
        goto LABEL_15;
      }

      v19 = getGCLogger();
      [GCRemoteUserDefaultsProxy removeObserver:v19 forKeyPath:&selfCopy->_observers context:v20];
      goto LABEL_21;
    }

    if (gc_isInternalBuild())
    {
      getGCLogger();
      objc_claimAutoreleasedReturnValue();
      [GCRemoteUserDefaultsProxy removeObserver:forKeyPath:context:];
LABEL_21:
    }

LABEL_15:

    goto LABEL_16;
  }

  if (gc_isInternalBuild())
  {
    getGCLogger();
    objc_claimAutoreleasedReturnValue();
    [GCRemoteUserDefaultsProxy removeObserver:forKeyPath:context:];
    v13 = *v20;
    goto LABEL_15;
  }

LABEL_16:

  objc_sync_exit(selfCopy);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)observeUserDefaultsValueForKeyPath:(id)path change:(id)change
{
  v24 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_observers objectForKeyedSubscript:pathCopy];
  v10 = v9;
  if (v9 && [v9 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          observer = [v15 observer];
          [observer observeValueForKeyPath:pathCopy ofObject:selfCopy change:changeCopy context:{objc_msgSend(v15, "context")}];
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }
  }

  else if (gc_isInternalBuild())
  {
    v18 = getGCLogger();
    [GCRemoteUserDefaultsProxy observeUserDefaultsValueForKeyPath:v18 change:?];
  }

  objc_sync_exit(selfCopy);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)refreshActiveClient
{
  OUTLINED_FUNCTION_8_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v0 = v1;
}

- (void)objectForKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)objectForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(v2))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)stringForKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)stringForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(v2))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)dataForKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)dataForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(v2))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)dictionaryForKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)dictionaryForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(v2))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)arrayForKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)arrayForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(v2))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)BOOLForKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)BOOLForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(*v1 + 24);
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)doubleForKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)doubleForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(v3))
  {
    v5 = *(*v1 + 24);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)floatForKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)floatForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(v3))
  {
    v10 = *(*v1 + 24);
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)integerForKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)integerForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(v3))
  {
    v5 = *(*v1 + 24);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)postInitialKVONotificationForObservation:keyPath:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v1, v2, OS_LOG_TYPE_INFO, v3, v4, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:forKeyPath:options:context:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_10_6(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v3, v4, OS_LOG_TYPE_INFO, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:forKeyPath:options:context:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(v3))
  {
    v5 = *v1;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:forKeyPath:context:.cold.1()
{
  OUTLINED_FUNCTION_8_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    OUTLINED_FUNCTION_11_6(&dword_1D2CD5000, v1, v3, "GCRemoteUserDefaultsProxy - trying to remove an observer that doesn't exist!", v4);
  }

  *v0 = v1;
}

- (void)removeObserver:forKeyPath:context:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_10_6(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v3, v4, OS_LOG_TYPE_INFO, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(NSObject *)a1 forKeyPath:(uint64_t *)a2 context:(NSObject *)a3 .cold.3(NSObject *a1, uint64_t *a2, NSObject **a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(a1))
  {
    v8 = *a2;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v9, v10, v11, v12, v13, 0xCu);
  }

  *a3 = a1;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:forKeyPath:context:.cold.4()
{
  OUTLINED_FUNCTION_8_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    OUTLINED_FUNCTION_11_6(&dword_1D2CD5000, v1, v3, "GCRemoteUserDefaultsProxy - trying to remove an observer that doesn't exist.", v4);
  }

  *v0 = v1;
}

- (void)observeUserDefaultsValueForKeyPath:(NSObject *)a1 change:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_11_6(v2, v3, v4, v5, v6);
  }
}

- (void)userDefaultsCheckIn:effectiveUserIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_10_6(v2))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v3, v4, OS_LOG_TYPE_INFO, v5, v6, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)userDefaultsCheckIn:effectiveUserIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_10_6(v3))
  {
    v4 = *v1;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v5, v6, OS_LOG_TYPE_INFO, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)userDefaultsCheckIn:effectiveUserIdentifier:.cold.3()
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_11_6(v1, v2, v3, v4, v5);
  }
}

- (void)userDefaultsCheckIn:effectiveUserIdentifier:.cold.4()
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_11_6(v1, v2, v3, v4, v5);
  }
}

@end