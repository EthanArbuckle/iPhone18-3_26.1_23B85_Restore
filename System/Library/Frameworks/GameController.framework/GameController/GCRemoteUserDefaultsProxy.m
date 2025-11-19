@interface GCRemoteUserDefaultsProxy
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)agentConnectionEstablished;
- (GCRemoteUserDefaultsProxy)init;
- (double)doubleForKey:(id)a3;
- (float)floatForKey:(id)a3;
- (id)arrayForKey:(id)a3;
- (id)dataForKey:(id)a3;
- (id)dictionaryForKey:(id)a3;
- (id)objectForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (int64_t)integerForKey:(id)a3;
- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (void)observeUserDefaultsValueForKeyPath:(id)a3 change:(id)a4;
- (void)postInitialKVONotificationForObservation:(id)a3 keyPath:(id)a4;
- (void)refreshActiveClient;
- (void)removeObserver:(id)a3 forKeyPath:(id)a4 context:(void *)a5;
- (void)setDouble:(double)a3 forKey:(id)a4;
- (void)setFloat:(float)a3 forKey:(id)a4;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
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

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v2 selector:sel_consoleUserDidChange_ name:*MEMORY[0x1E69A0330] object:0];
  }

  return v2;
}

- (BOOL)agentConnectionEstablished
{
  v2 = [(GCRemoteUserDefaultsProxy *)self activeClient];
  v3 = v2 != 0;

  return v3;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(GCRemoteUserDefaultsProxy *)v5 agentConnectionEstablished];
  objc_sync_exit(v5);

  if (v6)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy objectForKey:];
    }

    v7 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];

    if (v7)
    {
      v8 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];
      v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_41];

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
      [v9 objectForKey:v4 withReply:v12];
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

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(GCRemoteUserDefaultsProxy *)v5 agentConnectionEstablished];
  objc_sync_exit(v5);

  if (v6)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy stringForKey:];
    }

    v7 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];

    if (v7)
    {
      v8 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];
      v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_80];

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
      [v9 stringForKey:v4 withReply:v12];
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

- (id)dataForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(GCRemoteUserDefaultsProxy *)v5 agentConnectionEstablished];
  objc_sync_exit(v5);

  if (v6)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy dataForKey:];
    }

    v7 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];

    if (v7)
    {
      v8 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];
      v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_84];

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
      [v9 dataForKey:v4 withReply:v12];
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

- (id)dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(GCRemoteUserDefaultsProxy *)v5 agentConnectionEstablished];
  objc_sync_exit(v5);

  if (v6)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy dictionaryForKey:];
    }

    v7 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];

    if (v7)
    {
      v8 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];
      v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_88];

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
      [v9 dictionaryForKey:v4 withReply:v12];
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

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(GCRemoteUserDefaultsProxy *)v5 agentConnectionEstablished];
  objc_sync_exit(v5);

  if (v6)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy arrayForKey:];
    }

    v7 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];

    if (v7)
    {
      v8 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];
      v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_92];

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
      [v9 arrayForKey:v4 withReply:v12];
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

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GCRemoteUserDefaultsProxy *)self activeClient];
  [v8 setObject:v7 forKey:v6];
}

- (BOOL)BOOLForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(GCRemoteUserDefaultsProxy *)v5 agentConnectionEstablished];
  objc_sync_exit(v5);

  if (v6)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy BOOLForKey:];
    }

    v7 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];

    if (v7)
    {
      v8 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];
      v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_96];

      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __40__GCRemoteUserDefaultsProxy_BOOLForKey___block_invoke_97;
      v11[3] = &unk_1E841B0C0;
      v11[4] = &v12;
      [v9 BOOLForKey:v4 withReply:v11];
      if (gc_isInternalBuild())
      {
        getGCLogger();
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy BOOLForKey:];
      }

      LOBYTE(v6) = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
    }

    else
    {
      if (!gc_isInternalBuild())
      {
        LOBYTE(v6) = 0;
        goto LABEL_11;
      }

      v9 = getGCLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      LOBYTE(v6) = 0;
    }
  }

LABEL_11:

  return v6 & 1;
}

void __40__GCRemoteUserDefaultsProxy_BOOLForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild())
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1();
  }
}

- (double)doubleForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(GCRemoteUserDefaultsProxy *)v5 agentConnectionEstablished];
  objc_sync_exit(v5);

  v7 = 0.0;
  if (v6)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy doubleForKey:];
    }

    v8 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];

    if (v8)
    {
      v9 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];
      v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_100];

      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __42__GCRemoteUserDefaultsProxy_doubleForKey___block_invoke_101;
      v12[3] = &unk_1E841B0E8;
      v12[4] = &v13;
      [v10 doubleForKey:v4 withReply:v12];
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

- (void)setDouble:(double)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(GCRemoteUserDefaultsProxy *)self activeClient];
  [v7 setDouble:v6 forKey:a3];
}

- (float)floatForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(GCRemoteUserDefaultsProxy *)v5 agentConnectionEstablished];
  objc_sync_exit(v5);

  v7 = 0.0;
  if (v6)
  {
    if (gc_isInternalBuild())
    {
      [GCRemoteUserDefaultsProxy floatForKey:];
    }

    v8 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];

    if (v8)
    {
      v9 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];
      v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_104_0];

      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __41__GCRemoteUserDefaultsProxy_floatForKey___block_invoke_105;
      v12[3] = &unk_1E841B110;
      v12[4] = &v13;
      [v10 floatForKey:v4 withReply:v12];
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

- (void)setFloat:(float)a3 forKey:(id)a4
{
  v6 = a4;
  v8 = [(GCRemoteUserDefaultsProxy *)self activeClient];
  *&v7 = a3;
  [v8 setFloat:v6 forKey:v7];
}

- (int64_t)integerForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(GCRemoteUserDefaultsProxy *)v5 agentConnectionEstablished];
  objc_sync_exit(v5);

  if (!v6)
  {
    goto LABEL_10;
  }

  if (gc_isInternalBuild())
  {
    [GCRemoteUserDefaultsProxy integerForKey:];
  }

  v7 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];

  if (!v7)
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

  v8 = [(GCRemoteUserDefaultsProxy *)v5 activeClient];
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_108_0];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__GCRemoteUserDefaultsProxy_integerForKey___block_invoke_109;
  v12[3] = &unk_1E841B138;
  v12[4] = &v13;
  [v9 integerForKey:v4 withReply:v12];
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

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(GCRemoteUserDefaultsProxy *)self activeClient];
  [v7 setInteger:a3 forKey:v6];
}

- (void)postInitialKVONotificationForObservation:(id)a3 keyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(GCRemoteUserDefaultsProxy *)v8 agentConnectionEstablished];
  objc_sync_exit(v8);

  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:&unk_1F4E8F1B8 forKeyedSubscript:*MEMORY[0x1E696A4E8]];
  if (([v6 options] & 4) != 0)
  {
    v12 = [(GCRemoteUserDefaultsProxy *)v8 objectForKey:v7];
    if (!v12)
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v10 setObject:v14 forKeyedSubscript:*MEMORY[0x1E696A4F0]];

LABEL_13:
      goto LABEL_14;
    }

    v13 = MEMORY[0x1E696A4F0];
LABEL_12:
    [v10 setObject:v12 forKeyedSubscript:*v13];
    goto LABEL_13;
  }

  if ([v6 options])
  {
    v11 = [(GCRemoteUserDefaultsProxy *)v8 objectForKey:v7];
    if (v11)
    {
      [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A4F0]];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v10 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696A4F0]];
    }

    if (([v6 options] & 2) != 0)
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      v13 = MEMORY[0x1E696A500];
      goto LABEL_12;
    }
  }

LABEL_14:
  if (gc_isInternalBuild())
  {
    [GCRemoteUserDefaultsProxy postInitialKVONotificationForObservation:keyPath:];
  }

  v16 = [v6 observer];
  [v16 observeValueForKeyPath:v7 ofObject:v8 change:v10 context:{objc_msgSend(v6, "context")}];

LABEL_17:
}

- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = self;
  objc_sync_enter(v12);
  if (gc_isInternalBuild())
  {
    v18 = getGCLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 138412802;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2048;
      v24 = a6;
      _os_log_impl(&dword_1D2CD5000, v18, OS_LOG_TYPE_INFO, "GCRemoteUserDefaultsProxy - addObserver:%@ forKeyPath:%@ context:%lu", &v19, 0x20u);
    }
  }

  v13 = [(NSMutableDictionary *)v12->_observers objectForKeyedSubscript:v11];
  v14 = [v13 mutableCopy];

  if (!v14)
  {
    v14 = objc_opt_new();
    if ([(GCRemoteUserDefaultsProxy *)v12 agentConnectionEstablished])
    {
      v15 = [(GCRemoteUserDefaultsProxy *)v12 activeClient];
      [v15 observeKeyPath:v11];
    }

    if (gc_isInternalBuild())
    {
      getGCLogger();
      objc_claimAutoreleasedReturnValue();
      [GCRemoteUserDefaultsProxy addObserver:forKeyPath:options:context:];
    }
  }

  v16 = [[GCObservation alloc] initWithObserver:v10 options:a5 context:a6];
  [v14 addObject:v16];
  [(NSMutableDictionary *)v12->_observers setObject:v14 forKeyedSubscript:v11];
  if (([(GCObservation *)v16 options]& 4) != 0)
  {
    [(GCRemoteUserDefaultsProxy *)v12 postInitialKVONotificationForObservation:v16 keyPath:v11];
  }

  if (gc_isInternalBuild())
  {
    getGCLogger();
    objc_claimAutoreleasedReturnValue();
    [GCRemoteUserDefaultsProxy addObserver:forKeyPath:options:context:];
  }

  objc_sync_exit(v12);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3 forKeyPath:(id)a4 context:(void *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)v10->_observers objectForKeyedSubscript:v9];
  v12 = [v11 mutableCopy];

  if (gc_isInternalBuild())
  {
    v18 = getGCLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *v20 = 138412802;
      *&v20[4] = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2048;
      v24 = a5;
      _os_log_impl(&dword_1D2CD5000, v18, OS_LOG_TYPE_INFO, "GCRemoteUserDefaultsProxy - removeObserver %@ forKeyPath %@ context %lu", v20, 0x20u);
    }
  }

  if (v12)
  {
    v13 = [[GCObservation alloc] initWithObserver:v8 options:0 context:0];
    if ([v12 containsObject:v13])
    {
      [v12 removeObject:v13];
      v14 = [v12 count];
      observers = v10->_observers;
      if (v14)
      {
        [(NSMutableDictionary *)observers setObject:v12 forKeyedSubscript:v9];
      }

      else
      {
        [(NSMutableDictionary *)observers removeObjectForKey:v9];
        if ([(GCRemoteUserDefaultsProxy *)v10 agentConnectionEstablished])
        {
          v16 = [(GCRemoteUserDefaultsProxy *)v10 activeClient];
          [v16 stopObservingKeyPath:v9];
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
      [GCRemoteUserDefaultsProxy removeObserver:v19 forKeyPath:&v10->_observers context:v20];
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

  objc_sync_exit(v10);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)observeUserDefaultsValueForKeyPath:(id)a3 change:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)v8->_observers objectForKeyedSubscript:v6];
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
          v16 = [v15 observer];
          [v16 observeValueForKeyPath:v6 ofObject:v8 change:v7 context:{objc_msgSend(v15, "context")}];
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

  objc_sync_exit(v8);
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