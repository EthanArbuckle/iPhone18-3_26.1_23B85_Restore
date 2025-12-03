@interface TKTokenWatcher
- (TKTokenWatcher)initWithCTKDConnection:(id)connection;
- (TKTokenWatcher)initWithEndpoint:(id)endpoint;
- (TKTokenWatcher)initWithInsertionHandler:(void *)insertionHandler;
- (TKTokenWatcherTokenInfo)tokenInfoForTokenID:(NSString *)tokenID;
- (void)addRemovalHandler:(void *)removalHandler forTokenID:(NSString *)tokenID;
- (void)dealloc;
- (void)insertedToken:(id)token;
- (void)removeAllTokens;
- (void)removedToken:(id)token;
- (void)setInsertionHandler:(void *)insertionHandler;
- (void)startWatching;
@end

@implementation TKTokenWatcher

- (void)startWatching
{
  ctkdConnection = self->_ctkdConnection;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__TKTokenWatcher_startWatching__block_invoke;
  v4[3] = &unk_1E86B8380;
  v4[4] = self;
  v3 = [(TKCTKDConnection *)ctkdConnection withError:0 invoke:v4];
}

uint64_t __31__TKTokenWatcher_startWatching__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__TKTokenWatcher_startWatching__block_invoke_2;
  v3[3] = &unk_1E86B7598;
  v3[4] = *(a1 + 32);
  [a2 startWatchingWithReply:v3];
  return 0;
}

void __31__TKTokenWatcher_startWatching__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 firstObject];
        if (v10)
        {
          v11 = *(*(a1 + 32) + 16);
          v12 = [v9 firstObject];
          v13 = [v11 objectForKeyedSubscript:v12];
          LODWORD(v11) = v13 == 0;

          if (v11)
          {
            [*(a1 + 32) insertedToken:v9];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  v14 = *MEMORY[0x1E69E9840];
}

- (TKTokenWatcher)initWithCTKDConnection:(id)connection
{
  connectionCopy = connection;
  v22.receiver = self;
  v22.super_class = TKTokenWatcher;
  v5 = [(TKTokenWatcher *)&v22 init];
  if (v5)
  {
    if (connectionCopy)
    {
      v6 = connectionCopy;
    }

    else
    {
      v6 = objc_alloc_init(TKCTKDConnection);
    }

    ctkdConnection = v5->_ctkdConnection;
    v5->_ctkdConnection = v6;

    v8 = [[TKTokenWatcherProxy alloc] initWithWatcher:v5];
    [(TKCTKDConnection *)v5->_ctkdConnection setExportedObject:v8];

    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A8DC50];
    [(TKCTKDConnection *)v5->_ctkdConnection setExportedInterface:v9];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    removalHandlers = v5->_removalHandlers;
    v5->_removalHandlers = dictionary;

    v12 = [MEMORY[0x1E695E0F8] mutableCopy];
    tokenInfos = v5->_tokenInfos;
    v5->_tokenInfos = v12;

    [(TKTokenWatcher *)v5 startWatching];
    objc_initWeak(&location, v5);
    uTF8String = [@"com.apple.ctkd.watcher-started" UTF8String];
    v15 = dispatch_queue_create("server-start-notify-q", 0);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __41__TKTokenWatcher_initWithCTKDConnection___block_invoke;
    v19[3] = &unk_1E86B83A8;
    objc_copyWeak(&v20, &location);
    v16 = notify_register_dispatch(uTF8String, &v5->_notifyToken, v15, v19);

    if (v16)
    {
      v17 = TK_LOG_watcher();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(TKTokenWatcher *)v16 initWithCTKDConnection:v17];
      }
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __41__TKTokenWatcher_initWithCTKDConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startWatching];
}

- (TKTokenWatcher)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [[TKCTKDConnection alloc] initWithCTKDEndpoint:endpointCopy targetUID:0];

  v6 = [(TKTokenWatcher *)self initWithCTKDConnection:v5];
  return v6;
}

- (void)dealloc
{
  notify_cancel(self->_notifyToken);
  [(TKCTKDConnection *)self->_ctkdConnection invalidate];
  v3.receiver = self;
  v3.super_class = TKTokenWatcher;
  [(TKTokenWatcher *)&v3 dealloc];
}

- (TKTokenWatcher)initWithInsertionHandler:(void *)insertionHandler
{
  v4 = insertionHandler;
  v5 = [(TKTokenWatcher *)self init];
  v6 = v5;
  if (v5)
  {
    serverConnection = [(TKCTKDConnection *)v5->_ctkdConnection serverConnection];
    _queue = [serverConnection _queue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__TKTokenWatcher_initWithInsertionHandler___block_invoke;
    v10[3] = &unk_1E86B72D8;
    v11 = v6;
    v12 = v4;
    dispatch_async(_queue, v10);
  }

  return v6;
}

- (void)setInsertionHandler:(void *)insertionHandler
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = insertionHandler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = MEMORY[0x1E12D5690](v4);
  v7 = selfCopy->_insertionHandler;
  selfCopy->_insertionHandler = v6;

  if (selfCopy->_insertionHandler)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = selfCopy->_tokenInfos;
    v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          (*(selfCopy->_insertionHandler + 2))(selfCopy->_insertionHandler);
          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addRemovalHandler:(void *)removalHandler forTokenID:(NSString *)tokenID
{
  v11 = removalHandler;
  v6 = tokenID;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMutableDictionary *)selfCopy->_tokenInfos objectForKeyedSubscript:v6];

  if (v8)
  {
    removalHandlers = selfCopy->_removalHandlers;
    v10 = MEMORY[0x1E12D5690](v11);
    [(NSMutableDictionary *)removalHandlers setObject:v10 forKey:v6];
  }

  else
  {
    v11[2](v11, v6);
  }

  objc_sync_exit(selfCopy);
}

- (void)insertedToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [[TKTokenWatcherTokenInfo alloc] initWithTokenInfo:tokenCopy];
  v6 = NSStringFromSelector(sel_tokenIDs);
  [(TKTokenWatcher *)selfCopy willChangeValueForKey:v6];

  tokenInfos = selfCopy->_tokenInfos;
  tokenID = [(TKTokenWatcherTokenInfo *)v5 tokenID];
  [(NSMutableDictionary *)tokenInfos setObject:v5 forKeyedSubscript:tokenID];

  v9 = NSStringFromSelector(sel_tokenIDs);
  [(TKTokenWatcher *)selfCopy didChangeValueForKey:v9];

  insertionHandler = selfCopy->_insertionHandler;
  if (insertionHandler)
  {
    tokenID2 = [(TKTokenWatcherTokenInfo *)v5 tokenID];
    insertionHandler[2](insertionHandler, tokenID2);
  }

  objc_sync_exit(selfCopy);
}

- (void)removedToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_tokenInfos objectForKeyedSubscript:tokenCopy];

  if (v5)
  {
    v6 = NSStringFromSelector(sel_tokenIDs);
    [(TKTokenWatcher *)selfCopy willChangeValueForKey:v6];

    [(NSMutableDictionary *)selfCopy->_tokenInfos removeObjectForKey:tokenCopy];
    v7 = NSStringFromSelector(sel_tokenIDs);
    [(TKTokenWatcher *)selfCopy didChangeValueForKey:v7];

    v8 = [(NSMutableDictionary *)selfCopy->_removalHandlers objectForKey:tokenCopy];
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8, tokenCopy);
      [(NSMutableDictionary *)selfCopy->_removalHandlers removeObjectForKey:tokenCopy];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)removeAllTokens
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableDictionary *)selfCopy->_tokenInfos count])
  {
    v3 = [(NSMutableDictionary *)selfCopy->_tokenInfos copy];
    v4 = NSStringFromSelector(sel_tokenIDs);
    [(TKTokenWatcher *)selfCopy willChangeValueForKey:v4];

    [(NSMutableDictionary *)selfCopy->_tokenInfos removeAllObjects];
    v5 = NSStringFromSelector(sel_tokenIDs);
    [(TKTokenWatcher *)selfCopy didChangeValueForKey:v5];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allKeys = [v3 allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)selfCopy->_removalHandlers objectForKey:v10];
          v12 = v11;
          if (v11)
          {
            (*(v11 + 16))(v11, v10);
            [(NSMutableDictionary *)selfCopy->_removalHandlers removeObjectForKey:v10];
          }
        }

        v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v13 = TK_LOG_watcher();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(TKTokenWatcher *)v13 removeAllTokens];
    }
  }

  objc_sync_exit(selfCopy);

  v14 = *MEMORY[0x1E69E9840];
}

- (TKTokenWatcherTokenInfo)tokenInfoForTokenID:(NSString *)tokenID
{
  v4 = tokenID;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_tokenInfos objectForKeyedSubscript:v4];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)initWithCTKDConnection:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = @"com.apple.ctkd.watcher-started";
  v5 = 1024;
  v6 = a1;
  _os_log_error_impl(&dword_1DF413000, a2, OS_LOG_TYPE_ERROR, "registering notification '%@' failed with status %u", &v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

@end