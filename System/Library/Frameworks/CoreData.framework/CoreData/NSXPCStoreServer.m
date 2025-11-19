@interface NSXPCStoreServer
+ (void)initialize;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSQueryGenerationToken)retainedXPCEncodableGenerationTokenForOriginal:(NSQueryGenerationToken *)a1 inContext:(void *)a2;
- (NSQueryGenerationToken)unpackQueryGeneration:(uint64_t)a1 withContext:(void *)a2;
- (id)initForStoreWithURL:(id)a3 usingModel:(id)a4 options:(id)a5 policy:(id)a6;
- (id)initForStoreWithURL:(id)a3 usingModelAtURL:(id)a4 options:(id)a5 policy:(id)a6;
- (id)replacementObjectForXPCConnection:(id)a3 encoder:(id)a4 object:(id)a5;
- (uint64_t)_populateObject:(void *)a1 withValuesFromClient:(void *)a2;
- (uint64_t)setupRecoveryForConnectionContext:(uint64_t)a3 ifNecessary:;
- (void)dealloc;
- (void)errorIsPlausiblyAnSQLiteIssue:(uint64_t)a1;
- (void)handleRequest:(id)a3 reply:(id)a4;
- (void)removeCachesForConnection:(void *)result;
- (void)setErrorHandlingDelegate:(id)a3;
- (void)startListening;
@end

@implementation NSXPCStoreServer

+ (void)initialize
{
  objc_opt_self();
  if (objc_opt_class() == a1)
  {
    _CoreData_XPCDebug = [_PFRoutines integerValueForOverride:?];
  }
}

- (id)initForStoreWithURL:(id)a3 usingModel:(id)a4 options:(id)a5 policy:(id)a6
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (!a3 || !a4)
  {

    v14 = @"model";
    if (!a3)
    {
      v14 = @"storeURL";
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't create server - misconfigured server : %@ is nil", v14];
    goto LABEL_14;
  }

  v11 = [a5 valueForKey:@"NSXPCStoreEntitlementNames"];
  if (!v11)
  {
    v56[0] = @"application-identifier";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    goto LABEL_10;
  }

  v12 = v11;
  if (([v11 containsObject:@"application-identifier"] & 1) == 0)
  {
    v13 = [objc_msgSend(MEMORY[0x1E695DF70] arrayWithArray:{v12), "arrayByAddingObject:", @"application-identifier"}];
LABEL_10:
    v12 = v13;
  }

  v16 = [a5 valueForKey:@"NSXPCStoreServiceName"];
  v17 = [objc_msgSend(a5 valueForKey:{@"NSXPCStoreDaemonize", "BOOLValue"}];
  v18 = v17;
  if (!v16 && v17)
  {

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't create server - misconfigured server : no service name supplied for daemonized server", v43];
LABEL_14:
    [_NSXPCStoreUtilities logMessage:v15 forComponent:?];
    v19 = 0;
    goto LABEL_15;
  }

  v22 = [a5 valueForKey:@"NSXPCStoreListener"];
  if (v22 && v16)
  {
    +[_NSXPCStoreUtilities logMessage:forComponent:](_NSXPCStoreUtilities, [MEMORY[0x1E696AEC0] stringWithFormat:@"Options dictionary contains service name and anonymous listener, defaulting to service name"]);
    v22 = 0;
  }

  v44 = v22;
  v51.receiver = self;
  v51.super_class = NSXPCStoreServer;
  v19 = [(NSXPCStoreServer *)&v51 init];
  if (v19)
  {
    v45 = v18;
    v46 = v16;
    v23 = a4;
    v19->_model = v23;
    if (!v23)
    {
      +[_NSXPCStoreUtilities logMessage:forComponent:](_NSXPCStoreUtilities, [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't create server - unable to load model"]);
      abort();
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    model = v19->_model;
    v25 = [(NSManagedObjectModel *)model countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v48;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v48 != v27)
          {
            objc_enumerationMutation(model);
          }

          v29 = *(*(&v47 + 1) + 8 * i);
          if (v29)
          {

            *(v29 + 48) = 0;
          }
        }

        v26 = [(NSManagedObjectModel *)model countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v26);
    }

    v19->_storeURL = a3;
    v19->_entitlementNames = [v12 copy];
    if (a6)
    {
      v30 = a6;
    }

    else
    {
      v30 = objc_alloc_init(NSXPCStoreServerRequestHandlingPolicy);
    }

    v19->_policy = v30;
    v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:a5];
    v54[0] = @"NSPersistentStoreDeferredLightweightMigrationOptionKey";
    v54[1] = @"NSMigratePersistentStoresAutomaticallyOption";
    v54[2] = @"NSInferMappingModelAutomaticallyOption";
    v54[3] = @"NSPersistentStoreForceLightweightMigrationOption";
    -[NSDictionary removeObjectsForKeys:](v31, "removeObjectsForKeys:", [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4]);
    if ([(NSDictionary *)v31 isEqualToDictionary:a5])
    {
      goto LABEL_44;
    }

    v32 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v53 = a5;
          v34 = "CoreData: error: XPC Store Server - Migration keys have been removed from %@\n";
LABEL_63:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v34, buf, 0xCu);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v53 = a5;
          v34 = "CoreData: warning: XPC Store Server - Migration keys have been removed from %@\n";
          goto LABEL_63;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    _NSCoreDataLog_console(v35, "XPC Store Server - Migration keys have been removed from %@", a5);
    objc_autoreleasePoolPop(v32);
LABEL_44:
    v19->_storeOptions = v31;
    if (v46)
    {
      if (v45)
      {
        v36 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v46];
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v38 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v53 = v46;
              _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error: Attempting to create non-mach listener with service name: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v39 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v53 = v46;
              _os_log_impl(&dword_18565F000, v39, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Attempting to create non-mach listener with service name: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v40 = 1;
        }

        else
        {
          v40 = 8;
        }

        _NSCoreDataLog_console(v40, "Attempting to create non-mach listener with service name: %@", v46);
        objc_autoreleasePoolPop(v37);
        v36 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithServiceName:v46];
      }
    }

    else if (v44)
    {
      v36 = v44;
    }

    else
    {
      v36 = [MEMORY[0x1E696B0D8] serviceListener];
    }

    v19->_listener = v36;
    [(NSXPCListener *)v36 setDelegate:v19];
    v41 = [objc_alloc(MEMORY[0x1E696AE10]) initWithOptions:0];
    v42 = [objc_alloc(MEMORY[0x1E696AE10]) initWithOptions:0];
    v19->_connectionToCoordinatorMap = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v41 valuePointerFunctions:v42 capacity:10];

    v19->_cacheIDtoCoordinatorMap = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

LABEL_15:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)initForStoreWithURL:(id)a3 usingModelAtURL:(id)a4 options:(id)a5 policy:(id)a6
{
  if (a3 && a4)
  {
    v11 = [[NSManagedObjectModel alloc] initWithContentsOfURL:a4];
    v12 = [(NSXPCStoreServer *)self initForStoreWithURL:a3 usingModel:v11 options:a5 policy:a6];
    if (v12)
    {
      v12[2] = a4;
    }
  }

  else
  {

    v13 = @"storeURL";
    if (!a4)
    {
      v13 = @"modelURL";
    }

    +[_NSXPCStoreUtilities logMessage:forComponent:](_NSXPCStoreUtilities, [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't create server - misconfigured server : %@ is nil", v13]);
    return 0;
  }

  return v12;
}

- (void)startListening
{
  v10 = *MEMORY[0x1E69E9840];
  if (+[NSXPCStoreServer debugDefault])
  {
    v3 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v9 = self;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: %@: Listening\n", buf, 0xCu);
        }
      }

      else
      {
        v5 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v9 = self;
          _os_log_impl(&dword_18565F000, v5, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: %@: Listening\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v6 = 1;
    }

    else
    {
      v6 = 8;
    }

    _NSCoreDataLog_console(v6, "%@: Listening", self);
    objc_autoreleasePoolPop(v3);
  }

  [(NSXPCListener *)self->_listener resume];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];

  self->_listener = 0;
  self->_policy = 0;

  self->_connectionToCoordinatorMap = 0;
  self->_cacheIDtoCoordinatorMap = 0;

  self->_modelURL = 0;
  self->_model = 0;

  self->_storeURL = 0;
  self->_storeOptions = 0;

  self->_entitlementNames = 0;
  self->_delegate = 0;
  v3.receiver = self;
  v3.super_class = NSXPCStoreServer;
  [(NSXPCStoreServer *)&v3 dealloc];
}

- (void)setErrorHandlingDelegate:(id)a3
{
  if (self->_delegate != a3)
  {
    v5 = a3;

    self->_delegate = a3;
  }
}

- (void)errorIsPlausiblyAnSQLiteIssue:(uint64_t)a1
{
  result = 0;
  if (a1 && a2)
  {
    result = [objc_msgSend(a2 "userInfo")];
    if (result)
    {
      goto LABEL_8;
    }

    v5 = [objc_msgSend(a2 "userInfo")];
    if (v5)
    {
      result = [v5 userInfo];
    }

    else
    {
      result = [objc_msgSend(a2 "userInfo")];
      if (!result)
      {
        return result;
      }
    }

    result = [result objectForKey:@"NSSQLiteErrorDomain"];
    if (result)
    {
LABEL_8:
      v6 = [result intValue];
      return (v6 == 11 || v6 == 26);
    }
  }

  return result;
}

- (uint64_t)setupRecoveryForConnectionContext:(uint64_t)a3 ifNecessary:
{
  if (result)
  {
    v3 = result;
    result = *(result + 8);
    if (result)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return 0;
      }

      result = [*(v3 + 8) willPerformRecoveryForError:a3 fromContext:a2];
      if (!result)
      {
        return result;
      }

      v6 = *(v3 + 8);
      if (objc_opt_respondsToSelector())
      {
        [*(v3 + 8) performRecoveryForError:a3 fromContext:a2];
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (void)removeCachesForConnection:(void *)result
{
  if (result)
  {
    v3 = result;
    objc_sync_enter(result);
    v4 = objc_autoreleasePoolPush();
    v5 = NSMapGet(*(v3 + 9), a2);
    if (v5 && v5[6] && atomic_fetch_add_explicit(v5 + 5, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) <= 1)
    {
      [*(v3 + 10) removeObjectForKey:?];
    }

    NSMapRemove(*(v3 + 9), a2);
    [a2 setUserInfo:0];
    objc_autoreleasePoolPop(v4);

    return objc_sync_exit(v3);
  }

  return result;
}

void *__47__NSXPCStoreServer_retainedCacheForConnection___block_invoke(uint64_t a1)
{
  if (+[NSXPCStoreServer debugDefault])
  {
    v2 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  Server Connection interrupted.\n", buf, 2u);
        }
      }

      else
      {
        v4 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_18565F000, v4, OS_LOG_TYPE_DEFAULT, "CoreData: XPC:  Server Connection interrupted.\n", v7, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v5 = 1;
    }

    else
    {
      v5 = 8;
    }

    _NSCoreDataLog_console(v5, " Server Connection interrupted.");
    objc_autoreleasePoolPop(v2);
  }

  return [(NSXPCStoreServer *)*(a1 + 32) removeCachesForConnection:?];
}

void *__47__NSXPCStoreServer_retainedCacheForConnection___block_invoke_84(uint64_t a1)
{
  if (+[NSXPCStoreServer debugDefault])
  {
    v2 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  Server Connection invalidated.\n", buf, 2u);
        }
      }

      else
      {
        v4 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_18565F000, v4, OS_LOG_TYPE_DEFAULT, "CoreData: XPC:  Server Connection invalidated.\n", v7, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v5 = 1;
    }

    else
    {
      v5 = 8;
    }

    _NSCoreDataLog_console(v5, " Server Connection invalidated.");
    objc_autoreleasePoolPop(v2);
  }

  return [(NSXPCStoreServer *)*(a1 + 32) removeCachesForConnection:?];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if (a4)
  {
    [a4 auditToken];
  }

  if (+[NSXPCStoreServer debugDefault])
  {
    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = a4;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: %@ - Incoming connection: %@\n", buf, 0x16u);
        }
      }

      else
      {
        v9 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = a4;
          _os_log_impl(&dword_18565F000, v9, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: %@ - Incoming connection: %@\n", buf, 0x16u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v10 = 1;
    }

    else
    {
      v10 = 8;
    }

    _NSCoreDataLog_console(v10, "%@ - Incoming connection: %@", self, a4);
    objc_autoreleasePoolPop(v7);
  }

  if (self)
  {
    v11 = objc_autoreleasePoolPush();
    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v12 = [self->_delegate identifierForConnection:a4];
      objc_sync_enter(self);
      if (v12)
      {
        v13 = [(NSMutableDictionary *)self->_cacheIDtoCoordinatorMap objectForKey:v12];
        if (v13)
        {
          if (!NSMapGet(self->_connectionToCoordinatorMap, a4))
          {
            NSMapInsert(self->_connectionToCoordinatorMap, a4, v13);
            atomic_fetch_add_explicit(&v13->_connections, 1uLL, memory_order_relaxed);
LABEL_32:
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __47__NSXPCStoreServer_retainedCacheForConnection___block_invoke;
            *&buf[24] = &unk_1E6EC1600;
            v36 = self;
            v37 = a4;
            [a4 setInterruptionHandler:buf];
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __47__NSXPCStoreServer_retainedCacheForConnection___block_invoke_84;
            v34[3] = &unk_1E6EC1600;
            v34[4] = self;
            v34[5] = a4;
            [a4 setInvalidationHandler:v34];
          }

LABEL_61:
          objc_sync_exit(self);
          v26 = v13;
          objc_autoreleasePoolPop(v11);
          goto LABEL_62;
        }

        v14 = 0;
LABEL_24:
        v13 = NSMapGet(self->_connectionToCoordinatorMap, a4);
        if (v13)
        {
          goto LABEL_61;
        }

        v15 = self->_model;
        v16 = objc_autoreleasePoolPush();
        if (v15)
        {
          v17 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v15];

          v34[0] = 0;
          if ([(NSPersistentStoreCoordinator *)v17 addPersistentStoreWithType:@"SQLite" configuration:0 URL:self->_storeURL options:self->_storeOptions error:v34])
          {
            objc_autoreleasePoolPop(v16);
            if (v17)
            {
              v13 = [[NSXPCStoreServerPerConnectionCache alloc] initWithCoordinator:v17];

              if ((v14 & 1) == 0)
              {
                [(NSMutableDictionary *)self->_cacheIDtoCoordinatorMap setObject:v13 forKey:v12];
                [(NSXPCStoreServerPerConnectionCache *)v13 setClientIdentifier:v12];
                if (v13)
                {
                  atomic_fetch_add_explicit(&v13->_connections, 1uLL, memory_order_relaxed);
                }
              }

              NSMapInsert(self->_connectionToCoordinatorMap, a4, v13);

              goto LABEL_32;
            }

LABEL_60:
            v13 = 0;
            goto LABEL_61;
          }

          if ([(NSXPCStoreServer *)self errorIsPlausiblyAnSQLiteIssue:?])
          {
            [(NSXPCStoreServer *)self setupRecoveryForConnectionContext:v34[0] ifNecessary:?];
            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't create coordinator - attempting SQLite recovery"];
          }

          else
          {
            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't create coordinator - due to an error - %@", v34[0]];
          }

          [_NSXPCStoreUtilities logMessage:v19 forComponent:?];

          v20 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v21 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v34[0];
                _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to load store: %@\n", buf, 0xCu);
              }
            }

            else
            {
              v24 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v34[0];
                _os_log_impl(&dword_18565F000, v24, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Unable to load store: %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v25 = 1;
          }

          else
          {
            v25 = 8;
          }

          _NSCoreDataLog_console(v25, "Unable to load store: %@", v34[0]);
          objc_autoreleasePoolPop(v20);
        }

        else
        {
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v18 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = self;
                _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: error: %@: Unable to find model\n", buf, 0xCu);
              }
            }

            else
            {
              v22 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = self;
                _os_log_impl(&dword_18565F000, v22, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: %@: Unable to find model\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v23 = 1;
          }

          else
          {
            v23 = 8;
          }

          _NSCoreDataLog_console(v23, "%@: Unable to find model", self);
        }

        objc_autoreleasePoolPop(v16);
        goto LABEL_60;
      }
    }

    else
    {
      objc_sync_enter(self);
      v12 = 0;
    }

    v14 = 1;
    goto LABEL_24;
  }

  v13 = 0;
LABEL_62:
  if (![(NSXPCStoreServerPerConnectionCache *)v13 coordinator])
  {
    +[_NSXPCStoreUtilities logMessage:forComponent:](_NSXPCStoreUtilities, [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create stack"]);

LABEL_67:
    v31 = 0;
    goto LABEL_68;
  }

  v27 = [NSXPCStoreConnectionInfo alloc];
  entitlementNames = self->_entitlementNames;
  memset(buf, 0, sizeof(buf));
  v29 = [(NSXPCStoreConnectionInfo *)v27 initForToken:buf entitlementNames:entitlementNames cache:v13];

  if (!v29)
  {
    +[_NSXPCStoreUtilities logMessage:forComponent:](_NSXPCStoreUtilities, [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to create connection context"]);
    goto LABEL_67;
  }

  [a4 setDelegate:self];
  [a4 setExportedObject:self];
  [a4 setExportedInterface:{objc_msgSend(MEMORY[0x1E696B0D0], "interfaceWithProtocol:", &unk_1EF440870)}];
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v30 setValue:v29 forKey:@"NSConnectionInfo"];

  [a4 setUserInfo:v30];
  [a4 resume];
  v31 = 1;
LABEL_68:
  objc_autoreleasePoolPop(v6);
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)handleRequest:(id)a3 reply:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v29 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v31 = [MEMORY[0x1E696B0B8] currentConnection];
  v6 = [objc_msgSend(v31 "userInfo")];
  v7 = [[NSXPCStoreServerConnectionContext alloc] initWithConnectionInfo:v6];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3052000000;
  v36 = __Block_byref_object_copy__0;
  v37 = __Block_byref_object_dispose__0;
  v38 = 0;
  if (+[NSXPCStoreServer debugDefault])
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Starting event handler\n", buf, 2u);
        }
      }

      else
      {
        v10 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Starting event handler\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v11 = 1;
    }

    else
    {
      v11 = 8;
    }

    _NSCoreDataLog_console(v11, "Starting event handler");
    objc_autoreleasePoolPop(v8);
  }

  if (+[NSXPCStoreServer debugDefault])
  {
    v12 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v13 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v44 = a3;
          _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: error: XPCStore server handling request: %@\n", buf, 0xCu);
        }
      }

      else
      {
        v14 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = a3;
          _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: XPCStore server handling request: %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v15 = 1;
    }

    else
    {
      v15 = 8;
    }

    _NSCoreDataLog_console(v15, "XPCStore server handling request: %@", a3);
    objc_autoreleasePoolPop(v12);
  }

  v16 = [(NSXPCStoreServerRequestHandlingPolicy *)self->_policy shouldAcceptConnectionsFromClientWithContext:v7];
  v17 = v40;
  *(v40 + 24) = v16;
  v34[5] = 0;
  if ((v17[3] & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Policy rejected connection from client: %@", v31];
    v34[5] = v18;
    [_NSXPCStoreUtilities logMessage:v18 forComponent:?];
  }

  v19 = [(NSXPCStoreServerConnectionContext *)v7 persistentStoreCoordinator];
  v20 = [(NSXPCStoreServerConnectionContext *)v7 managedObjectContext];
  if (!v20)
  {
    v21 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    [(NSManagedObjectContext *)v21 setPersistentStoreCoordinator:v19];
    [(NSManagedObjectContext *)v21 _setDelegate:self];
    if (v21)
    {
      *&v21->_flags |= 0x800000u;
    }

    v22 = [objc_msgSend(v6 "entitlements")];
    if (v22)
    {
      [(NSPersistentStoreCoordinator *)v19 _setXPCBundleIdentifier:v22];
    }

    if (a3)
    {
      v23 = *(a3 + 7);
      if (v23)
      {
        [(NSPersistentStoreCoordinator *)v19 _setXPCProcessName:v23];
      }
    }

    [(NSManagedObjectContext *)v21 setMergePolicy:NSErrorMergePolicy];
    [(NSManagedObjectContext *)v21 setUndoManager:0];
    if (a3 && *(a3 + 5))
    {
      [(NSManagedObjectContext *)v21 setName:?];
    }

    [(NSXPCStoreServerConnectionContext *)v7 setManagedObjectContext:v21];
    v20 = v21;
  }

  if (a3)
  {
    v24 = *(a3 + 5);
    if (v24 && ([v24 isEqual:{-[NSManagedObjectContext name](v20, "name")}] & 1) == 0)
    {
      [(NSManagedObjectContext *)v20 setName:*(a3 + 5)];
    }

    v25 = *(a3 + 6);
    if (v25 && ([v25 isEqual:{-[NSManagedObjectContext transactionAuthor](v20, "transactionAuthor")}] & 1) == 0)
    {
      [(NSManagedObjectContext *)v20 setTransactionAuthor:*(a3 + 6)];
    }

    if (*(a3 + 16) == 1)
    {
      [(NSManagedObjectContext *)v20 _setAllowAncillaryEntities:1];
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__NSXPCStoreServer_handleRequest_reply___block_invoke;
  block[3] = &unk_1E6EC15D8;
  block[4] = 0;
  block[5] = a3;
  block[6] = v20;
  block[7] = v7;
  block[12] = &v39;
  block[13] = &v33;
  block[8] = self;
  block[9] = v31;
  block[10] = v19;
  block[11] = a4;
  v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v27 = v26;
  if (v20)
  {
    [(NSManagedObjectContext *)v20 performBlockAndWait:v26];
  }

  else
  {
    (*(v26 + 2))(v26);
  }

  _Block_release(v27);
  [v29 drain];
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);
  v28 = *MEMORY[0x1E69E9840];
}

void __40__NSXPCStoreServer_handleRequest_reply___block_invoke(uint64_t a1)
{
  v662 = *MEMORY[0x1E69E9840];
  v598 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  self = objc_alloc_init(NSCoreDataXPCMessage);
  v612 = a1;
  v613 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_exception_throw(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_msgSend(objc_msgSend(*(v612 + 48) "persistentStoreCoordinator")];
  [(NSXPCStoreServerConnectionContext *)*(v612 + 56) setActiveStore:v5];
  if (v4 && ([v4 isEqual:{objc_msgSend(v5, "identifier")}] & 1) == 0)
  {
    *(*(*(v612 + 96) + 8) + 24) = 0;
    *(*(*(v612 + 104) + 8) + 40) = [MEMORY[0x1E696AEC0] stringWithFormat:@"Token mismatch"];
    v7 = *(v612 + 64);
    [_NSXPCStoreUtilities logMessage:*(*(*(v612 + 104) + 8) + 40) forComponent:?];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (*(*(*(v612 + 96) + 8) + 24) != 1)
  {
    v13 = 0;
    goto LABEL_1047;
  }

  v8 = *(v612 + 40);
  v597 = v6;
  if (!v8)
  {
LABEL_1144:
    if (+[NSXPCStoreServer debugDefault])
    {
      v573 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(8))
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v575 = *(v612 + 40);
            if (v575)
            {
              LODWORD(v575) = *(v575 + 8);
            }

            v576 = *(v612 + 72);
            *buf = 67109376;
            *&buf[4] = v575;
            *&buf[8] = 2048;
            *&buf[10] = v576;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Illegal input: %u from connection %p\n", buf, 0x12u);
          }
        }

        else
        {
          v577 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v577, OS_LOG_TYPE_DEFAULT))
          {
            v578 = *(v612 + 40);
            if (v578)
            {
              LODWORD(v578) = *(v578 + 8);
            }

            v579 = *(v612 + 72);
            *buf = 67109376;
            *&buf[4] = v578;
            *&buf[8] = 2048;
            *&buf[10] = v579;
            _os_log_impl(&dword_18565F000, v577, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Illegal input: %u from connection %p\n", buf, 0x12u);
          }
        }
      }

      v580 = *(v612 + 40);
      if (_pflogging_catastrophic_mode)
      {
        v581 = 1;
      }

      else
      {
        v581 = 8;
      }

      if (v580)
      {
        LODWORD(v580) = *(v580 + 8);
      }

      _NSCoreDataLog_console(v581, "Illegal input: %u from connection %p", v580, *(v612 + 72));
      objc_autoreleasePoolPop(v573);
    }

    v13 = 0;
    v613 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134070 userInfo:0];
    goto LABEL_1033;
  }

  v9 = v654;
  switch(*(v8 + 8))
  {
    case 1:
      p_superclass = v651;
      if (+[NSXPCStoreServer debugDefault])
      {
        v11 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v12 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: Metadata\n", buf, 2u);
            }
          }

          else
          {
            v126 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v126, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Metadata\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v127 = 1;
        }

        else
        {
          v127 = 8;
        }

        _NSCoreDataLog_console(v127, "Metadata");
        objc_autoreleasePoolPop(v11);
      }

      if (!*(v612 + 64))
      {
        goto LABEL_1137;
      }

      v128 = *(v612 + 56);
      v129 = objc_autoreleasePoolPush();
      v130 = [objc_msgSend(v128 "managedObjectContext")];
      v131 = [objc_msgSend(v130 "persistentStores")];
      if (!v131)
      {
        v132 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v133 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v133, OS_LOG_TYPE_ERROR, "CoreData: error: no store\n", buf, 2u);
            }
          }

          else
          {
            v373 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v373, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v373, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: no store\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v374 = 1;
        }

        else
        {
          v374 = 8;
        }

        _NSCoreDataLog_console(v374, "no store");
        objc_autoreleasePoolPop(v132);
      }

      v375 = [v131 metadata];
      if (+[NSXPCStoreServer debugDefault])
      {
        v376 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v377 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v377, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v375;
              _os_log_error_impl(&dword_18565F000, v377, OS_LOG_TYPE_ERROR, "CoreData: error: Got metadata %@\n", buf, 0xCu);
            }
          }

          else
          {
            v378 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v378, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v375;
              _os_log_impl(&dword_18565F000, v378, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got metadata %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v379 = 1;
        }

        else
        {
          v379 = 8;
        }

        _NSCoreDataLog_console(v379, "Got metadata %@", v375);
        objc_autoreleasePoolPop(v376);
      }

      p_super = [v130 managedObjectModel];
      v659 = 0u;
      v660 = 0u;
      v657 = 0u;
      v658 = 0u;
      v380 = [p_super countByEnumeratingWithState:&v657 objects:buf count:16];
      if (!v380)
      {
        goto LABEL_691;
      }

      v9 = *v658;
LABEL_682:
      v381 = 0;
      while (1)
      {
        if (*v658 != v9)
        {
          objc_enumerationMutation(p_super);
        }

        if (([(NSEntityDescription *)*(*(&v657 + 1) + 8 * v381) _hasAttributesWithFileBackedFutures]& 1) != 0)
        {
          break;
        }

        if (v380 == ++v381)
        {
          v380 = [p_super countByEnumeratingWithState:&v657 objects:buf count:16];
          if (v380)
          {
            goto LABEL_682;
          }

          goto LABEL_691;
        }
      }

      v382 = [v131 fileBackedFuturesDirectory];
      if (v382)
      {
        *&v653[0] = @"NSMetadataKey";
        *(&v653[0] + 1) = @"NSFileBackedFuturePathKey";
        *v654 = v375;
        *&v654[8] = v382;
        v375 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v654 forKeys:v653 count:2];
LABEL_691:
        v383 = [MEMORY[0x1E696AE40] dataWithPropertyList:v375 format:200 options:0 error:0];
        if (+[NSXPCStoreServer debugDefault])
        {
          v384 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v385 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v385, OS_LOG_TYPE_ERROR))
              {
                *v651 = 138412290;
                v652 = v383;
                _os_log_error_impl(&dword_18565F000, v385, OS_LOG_TYPE_ERROR, "CoreData: error: Which archives to %@\n", v651, 0xCu);
              }
            }

            else
            {
              v386 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v386, OS_LOG_TYPE_DEFAULT))
              {
                *v651 = 138412290;
                v652 = v383;
                _os_log_impl(&dword_18565F000, v386, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which archives to %@\n", v651, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v387 = 1;
          }

          else
          {
            v387 = 8;
          }

          _NSCoreDataLog_console(v387, "Which archives to %@", v383);
          objc_autoreleasePoolPop(v384);
        }

        v388 = v383;
        objc_autoreleasePoolPop(v129);
        v314 = v383;
        goto LABEL_1032;
      }

      v236 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(8))
      {
        if (_pflogging_catastrophic_mode)
        {
          p_super = _PFLogGetLogStream(1);
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            *v654 = 0;
            _os_log_error_impl(&dword_18565F000, p_super, OS_LOG_TYPE_ERROR, "CoreData: error: what on earth happened?\n", v654, 2u);
          }
        }

        else
        {
          p_super = _PFLogGetLogStream(8);
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
          {
            *v654 = 0;
            _os_log_impl(&dword_18565F000, p_super, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: what on earth happened?\n", v654, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v518 = 1;
      }

      else
      {
        v518 = 8;
      }

      _NSCoreDataLog_console(v518, "what on earth happened?");
      objc_autoreleasePoolPop(v236);
LABEL_1009:
      __break(1u);
LABEL_1010:
      v534 = _PFLogGetLogStream(8);
      if (os_log_type_enabled(v534, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = p_super;
        _os_log_impl(&dword_18565F000, v534, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Reopened generation %@\n", buf, 0xCu);
      }

      goto LABEL_1012;
    case 2:
      if (+[NSXPCStoreServer debugDefault])
      {
        v26 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v27 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch\n", buf, 2u);
            }
          }

          else
          {
            v134 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v134, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fetch\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v135 = 1;
        }

        else
        {
          v135 = 8;
        }

        _NSCoreDataLog_console(v135, "Fetch");
        objc_autoreleasePoolPop(v26);
      }

      v136 = *(v612 + 40);
      if (v136)
      {
        v137 = *(v136 + 24);
      }

      else
      {
        v137 = 0;
      }

      v138 = *(v612 + 64);
      if (!v138)
      {
        goto LABEL_1137;
      }

      v139 = *(v612 + 56);
      *v654 = 0;
      contextb = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v140 = MEMORY[0x1E695DFD8];
      v141 = objc_opt_class();
      v142 = objc_opt_class();
      v143 = objc_opt_class();
      v144 = objc_opt_class();
      v145 = [v140 setWithObjects:{v141, v142, v143, v144, objc_opt_class(), 0}];
      v146 = [_NSXPCStoreUtilities decodeSecureArchivedData:v137 usingDelegate:v139 classes:v145];
      if ([v146 count] >= 2 && (v147 = objc_msgSend(v146, "objectAtIndex:", 1)) != 0)
      {
        v148 = [NSXPCStoreServer unpackQueryGeneration:v147 withContext:v139];
        v149 = 1;
      }

      else
      {
        v149 = 0;
        v148 = 0;
      }

      v150 = +[NSFetchRequest decodeFromXPCArchive:withContext:andPolicy:](NSFetchRequest, "decodeFromXPCArchive:withContext:andPolicy:", [v146 firstObject], v139, *(v138 + 64));
      if (+[NSXPCStoreServer debugDefault])
      {
        v151 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v152 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v150;
              _os_log_error_impl(&dword_18565F000, v152, OS_LOG_TYPE_ERROR, "CoreData: error: Got a fetch request %@\n", buf, 0xCu);
            }
          }

          else
          {
            v294 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v294, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v150;
              _os_log_impl(&dword_18565F000, v294, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got a fetch request %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v295 = 1;
        }

        else
        {
          v295 = 8;
        }

        _NSCoreDataLog_console(v295, "Got a fetch request %@", v150);
        objc_autoreleasePoolPop(v151);
      }

      if (v148)
      {
        v296 = 0;
      }

      else
      {
        v296 = v149;
      }

      if (v296 == 1 && +[NSXPCStoreServer debugDefault])
      {
        v297 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v298 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v298, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_error_impl(&dword_18565F000, v298, OS_LOG_TYPE_ERROR, "CoreData: error: Can't fulfill fetch request: can't find query generation: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v428 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v428, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_impl(&dword_18565F000, v428, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Can't fulfill fetch request: can't find query generation: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v429 = 1;
        }

        else
        {
          v429 = 8;
        }

        _NSCoreDataLog_console(v429, "Can't fulfill fetch request: can't find query generation: %@", 0);
        objc_autoreleasePoolPop(v297);
        v430 = MEMORY[0x1E696ABC0];
        *buf = @"unrecognized query generation";
        *&v657 = @"reason";
        *(&v657 + 1) = @"generation";
        *&buf[8] = [MEMORY[0x1E695DFB0] null];
        v431 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v657 count:2];
        v432 = 0;
        v433 = 0;
        *v654 = [v430 errorWithDomain:*MEMORY[0x1E696A250] code:134061 userInfo:v431];
LABEL_1133:
        v570 = *v654;
        [contextb drain];
        v571 = 0;
        v572 = *v654;
        if (*v654)
        {
          v613 = *v654;
        }

        if (v432)
        {
          v314 = v433;
          goto LABEL_1032;
        }

        goto LABEL_1137;
      }

      v299 = [*(v138 + 64) processRequest:v150 fromClientWithContext:v139 error:v654];
      if (+[NSXPCStoreServer debugDefault])
      {
        v300 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v301 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v301, OS_LOG_TYPE_ERROR))
            {
              if (v299)
              {
                v302 = [v299 count];
              }

              else
              {
                v302 = 0;
              }

              *buf = 67109376;
              *&buf[4] = v299 != 0;
              *&buf[8] = 1024;
              *&buf[10] = v302;
              _os_log_error_impl(&dword_18565F000, v301, OS_LOG_TYPE_ERROR, "CoreData: error: Which had result %d (%d)\n", buf, 0xEu);
            }
          }

          else
          {
            v316 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v316, OS_LOG_TYPE_DEFAULT))
            {
              if (v299)
              {
                v317 = [v299 count];
              }

              else
              {
                v317 = 0;
              }

              *buf = 67109376;
              *&buf[4] = v299 != 0;
              *&buf[8] = 1024;
              *&buf[10] = v317;
              _os_log_impl(&dword_18565F000, v316, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which had result %d (%d)\n", buf, 0xEu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          if (v299)
          {
            v550 = [v299 count];
          }

          else
          {
            v550 = 0;
          }

          v551 = 1;
        }

        else
        {
          if (v299)
          {
            v550 = [v299 count];
          }

          else
          {
            v550 = 0;
          }

          v551 = 8;
        }

        _NSCoreDataLog_console(v551, "Which had result %d (%d)", v299 != 0, v550);
        objc_autoreleasePoolPop(v300);
      }

      if (v299)
      {
        v552 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v299];
        v433 = v552;
        if (+[NSXPCStoreServer debugDefault])
        {
          v553 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v554 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v554, OS_LOG_TYPE_ERROR))
              {
                if (v552)
                {
                  v555 = [v552 length];
                }

                else
                {
                  v555 = 0;
                }

                *buf = 67109376;
                *&buf[4] = v552 != 0;
                *&buf[8] = 1024;
                *&buf[10] = v555;
                _os_log_error_impl(&dword_18565F000, v554, OS_LOG_TYPE_ERROR, "CoreData: error: Which archived %d (%d)\n", buf, 0xEu);
              }
            }

            else
            {
              v559 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v559, OS_LOG_TYPE_DEFAULT))
              {
                if (v552)
                {
                  v560 = [v552 length];
                }

                else
                {
                  v560 = 0;
                }

                *buf = 67109376;
                *&buf[4] = v552 != 0;
                *&buf[8] = 1024;
                *&buf[10] = v560;
                _os_log_impl(&dword_18565F000, v559, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which archived %d (%d)\n", buf, 0xEu);
              }
            }
          }

          v567 = v552 != 0;
          if (_pflogging_catastrophic_mode)
          {
            if (v433)
            {
              v568 = [v433 length];
            }

            else
            {
              v568 = 0;
            }

            v569 = 1;
          }

          else
          {
            if (v433)
            {
              v568 = [v433 length];
            }

            else
            {
              v568 = 0;
            }

            v569 = 8;
          }

          _NSCoreDataLog_console(v569, "Which archived %d (%d)", v567, v568);
          objc_autoreleasePoolPop(v553);
        }

        goto LABEL_1132;
      }

      if (*v654)
      {
        if (+[NSXPCStoreServer debugDefault])
        {
          v556 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v557 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v557, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = *v654;
                _os_log_error_impl(&dword_18565F000, v557, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch failed returning error %@\n", buf, 0xCu);
              }
            }

            else
            {
              v561 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v561, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = *v654;
                _os_log_impl(&dword_18565F000, v561, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fetch failed returning error %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v562 = 1;
          }

          else
          {
            v562 = 8;
          }

          _NSCoreDataLog_console(v562, "Fetch failed returning error %@", *v654);
LABEL_1113:
          v433 = 0;
          objc_autoreleasePoolPop(v556);
          v432 = 1;
          goto LABEL_1133;
        }
      }

      else if (+[NSXPCStoreServer debugDefault])
      {
        v556 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v558 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v558, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v558, OS_LOG_TYPE_ERROR, "CoreData: error: Fetch failed with no error.\n", buf, 2u);
            }
          }

          else
          {
            v563 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v563, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v563, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fetch failed with no error.\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v564 = 1;
        }

        else
        {
          v564 = 8;
        }

        _NSCoreDataLog_console(v564, "Fetch failed with no error.");
        goto LABEL_1113;
      }

      v433 = 0;
LABEL_1132:
      v432 = 1;
      goto LABEL_1133;
    case 3:
      if (+[NSXPCStoreServer debugDefault])
      {
        v20 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v21 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: error: Save\n", buf, 2u);
            }
          }

          else
          {
            v81 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v81, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Save\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v82 = 1;
        }

        else
        {
          v82 = 8;
        }

        _NSCoreDataLog_console(v82, "Save");
        objc_autoreleasePoolPop(v20);
      }

      v83 = *(v612 + 40);
      if (v83)
      {
        v84 = *(v83 + 24);
      }

      else
      {
        v84 = 0;
      }

      v595 = *(v612 + 64);
      if (!v595)
      {
        goto LABEL_1137;
      }

      v596 = *(v612 + 56);
      v594 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v642 = 0;
      v85 = [+[_NSXPCStoreUtilities classesForSaveArchive]() setByAddingObjectsFromSet:{objc_msgSend(*(v595 + 64), "allowableClassesForClientWithContext:", v596)}];
      v86 = [_NSXPCStoreUtilities decodeSecureArchivedData:v84 usingDelegate:v596 classes:v85];
      v87 = v86;
      if (!v86)
      {
        v92 = MEMORY[0x1E696ABC0];
        *&v657 = *MEMORY[0x1E696A588];
        *buf = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to unarchive save request with allowed classes: %@", v85];
        v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v657 count:1];
        v94 = [v92 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v93];
LABEL_834:
        v13 = 0;
        v642 = v94;
        goto LABEL_992;
      }

      v88 = [v86 valueForKey:@"NSMetadata"];
      v89 = [v596 managedObjectContext];
      if (+[NSXPCStoreServer debugDefault])
      {
        v90 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v91 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v87;
              _os_log_error_impl(&dword_18565F000, v91, OS_LOG_TYPE_ERROR, "CoreData: error: Got save request: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v340 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v340, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v87;
              _os_log_impl(&dword_18565F000, v340, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got save request: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v341 = 1;
        }

        else
        {
          v341 = 8;
        }

        _NSCoreDataLog_console(v341, "Got save request: %@", v87);
        objc_autoreleasePoolPop(v90);
      }

      if (!v88)
      {
        goto LABEL_806;
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v342 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v343 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v343, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v343, OS_LOG_TYPE_ERROR, "CoreData: error: Updating metadata\n", buf, 2u);
            }
          }

          else
          {
            v434 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v434, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v434, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Updating metadata\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v435 = 1;
        }

        else
        {
          v435 = 8;
        }

        _NSCoreDataLog_console(v435, "Updating metadata");
        objc_autoreleasePoolPop(v342);
      }

      v436 = *(v595 + 64);
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([*(v595 + 64) shouldAcceptMetadataChangesFromClientWithContext:v596] & 1) == 0)
      {
        v94 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134092 userInfo:0];
        goto LABEL_834;
      }

      v437 = [v88 mutableCopy];
      [v437 removeObjectForKey:@"NSStoreUUID"];
      [v437 removeObjectForKey:@"NSStoreType"];
      [v437 removeObjectForKey:@"NSStoreModelVersionHashes"];
      [v437 removeObjectForKey:@"NSStoreModelVersionIdentifiers"];
      [v437 removeObjectForKey:0x1EF3FD3E8];
      [v437 removeObjectForKey:0x1EF3FD408];
      if (v596)
      {
        v438 = v596[4];
      }

      else
      {
        v438 = 0;
      }

      [v438 setMetadata:v437];

LABEL_806:
      v439 = [v87 valueForKey:@"deleted"];
      v599 = [v87 valueForKey:@"inserted"];
      contextd = [v87 valueForKey:@"updated"];
      v440 = [v87 valueForKey:@"locked"];
      v441 = [MEMORY[0x1E695DF70] array];
      v640 = 0u;
      v641 = 0u;
      v638 = 0u;
      v639 = 0u;
      v442 = [v439 countByEnumeratingWithState:&v638 objects:buf count:16];
      if (v442)
      {
        v443 = *v639;
        do
        {
          for (i = 0; i != v442; ++i)
          {
            if (*v639 != v443)
            {
              objc_enumerationMutation(v439);
            }

            [v441 addObject:{objc_msgSend(*(*(&v638 + 1) + 8 * i), "objectAtIndex:", 0)}];
          }

          v442 = [v439 countByEnumeratingWithState:&v638 objects:buf count:16];
        }

        while (v442);
      }

      v636 = 0u;
      v637 = 0u;
      v634 = 0u;
      v635 = 0u;
      v445 = [contextd countByEnumeratingWithState:&v634 objects:&v657 count:16];
      if (v445)
      {
        v446 = *v635;
        do
        {
          for (j = 0; j != v445; ++j)
          {
            if (*v635 != v446)
            {
              objc_enumerationMutation(contextd);
            }

            [v441 addObject:{objc_msgSend(*(*(&v634 + 1) + 8 * j), "objectAtIndex:", 0)}];
          }

          v445 = [contextd countByEnumeratingWithState:&v634 objects:&v657 count:16];
        }

        while (v445);
      }

      v632 = 0u;
      v633 = 0u;
      v630 = 0u;
      v631 = 0u;
      v448 = [v440 countByEnumeratingWithState:&v630 objects:v654 count:16];
      obj = v439;
      if (v448)
      {
        v449 = *v631;
        do
        {
          for (k = 0; k != v448; ++k)
          {
            if (*v631 != v449)
            {
              objc_enumerationMutation(v440);
            }

            [v441 addObject:{objc_msgSend(*(*(&v630 + 1) + 8 * k), "objectAtIndex:", 0)}];
          }

          v448 = [v440 countByEnumeratingWithState:&v630 objects:v654 count:16];
        }

        while (v448);
      }

      [_PFRoutines fetchHeterogeneousCollectionByObjectIDs:v441 intoContext:v89];
      objc_opt_self();
      if (+[NSXPCStoreServer debugDefault])
      {
        v451 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v452 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v452, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v653[0]) = 138412290;
              *(v653 + 4) = v440;
              _os_log_error_impl(&dword_18565F000, v452, OS_LOG_TYPE_ERROR, "CoreData: error: Locking objects :%@\n", v653, 0xCu);
            }
          }

          else
          {
            v453 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v453, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v653[0]) = 138412290;
              *(v653 + 4) = v440;
              _os_log_impl(&dword_18565F000, v453, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Locking objects :%@\n", v653, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v454 = 1;
        }

        else
        {
          v454 = 8;
        }

        _NSCoreDataLog_console(v454, "Locking objects :%@", v440);
        objc_autoreleasePoolPop(v451);
      }

      v628 = 0u;
      v629 = 0u;
      v626 = 0u;
      v627 = 0u;
      v455 = [v440 countByEnumeratingWithState:&v626 objects:v653 count:16];
      if (v455)
      {
        v456 = *v627;
        do
        {
          v457 = 0;
          do
          {
            if (*v627 != v456)
            {
              objc_enumerationMutation(v440);
            }

            v458 = *(*(&v626 + 1) + 8 * v457);
            v459 = objc_autoreleasePoolPush();
            v460 = [v458 objectAtIndex:0];
            if (v89)
            {
              v461 = _PFRetainedObjectIDCore(v89, v460, 0, 1);
            }

            else
            {
              v461 = 0;
            }

            [v461 willAccessValueForKey:0];
            if ([v461 isDeleted])
            {
              if (+[NSXPCStoreServer debugDefault])
              {
                v462 = objc_autoreleasePoolPush();
                _pflogInitialize(8);
                if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v463 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v463, OS_LOG_TYPE_ERROR))
                    {
                      *v651 = 138412290;
                      v652 = v461;
                      _os_log_error_impl(&dword_18565F000, v463, OS_LOG_TYPE_ERROR, "CoreData: error: Not locking %@ because it's not in the db\n", v651, 0xCu);
                    }
                  }

                  else
                  {
                    v466 = _PFLogGetLogStream(8);
                    if (os_log_type_enabled(v466, OS_LOG_TYPE_DEFAULT))
                    {
                      *v651 = 138412290;
                      v652 = v461;
                      _os_log_impl(&dword_18565F000, v466, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Not locking %@ because it's not in the db\n", v651, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v467 = 1;
                }

                else
                {
                  v467 = 8;
                }

                _NSCoreDataLog_console(v467, "Not locking %@ because it's not in the db", v461);
                objc_autoreleasePoolPop(v462);
              }
            }

            else
            {
              if (+[NSXPCStoreServer debugDefault])
              {
                v464 = objc_autoreleasePoolPush();
                _pflogInitialize(8);
                if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v465 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v465, OS_LOG_TYPE_ERROR))
                    {
                      *v651 = 138412290;
                      v652 = v461;
                      _os_log_error_impl(&dword_18565F000, v465, OS_LOG_TYPE_ERROR, "CoreData: error: Locking %@\n", v651, 0xCu);
                    }
                  }

                  else
                  {
                    v468 = _PFLogGetLogStream(8);
                    if (os_log_type_enabled(v468, OS_LOG_TYPE_DEFAULT))
                    {
                      *v651 = 138412290;
                      v652 = v461;
                      _os_log_impl(&dword_18565F000, v468, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Locking %@\n", v651, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v469 = 1;
                }

                else
                {
                  v469 = 8;
                }

                _NSCoreDataLog_console(v469, "Locking %@", v461);
                objc_autoreleasePoolPop(v464);
              }

              [v461 _setVersionReference__:{objc_msgSend(objc_msgSend(v458, "objectAtIndex:", 1), "unsignedIntegerValue")}];
              [v89 detectConflictsForObject:v461];
            }

            objc_autoreleasePoolPop(v459);
            ++v457;
          }

          while (v455 != v457);
          v470 = [v440 countByEnumeratingWithState:&v626 objects:v653 count:16];
          v455 = v470;
        }

        while (v470);
      }

      v624 = 0u;
      v625 = 0u;
      v622 = 0u;
      v623 = 0u;
      v471 = [obj countByEnumeratingWithState:&v622 objects:v651 count:16];
      if (!v471)
      {
        goto LABEL_916;
      }

      v472 = 0;
      v473 = 0;
      v474 = *v623;
      v604 = *MEMORY[0x1E696A250];
      do
      {
        v475 = 0;
        do
        {
          if (*v623 != v474)
          {
            objc_enumerationMutation(obj);
          }

          v476 = *(*(&v622 + 1) + 8 * v475);
          v477 = objc_autoreleasePoolPush();
          v478 = [v476 objectAtIndex:0];
          v479 = [v478 entity];
          if (v473 != v479)
          {
            v472 = [*(v595 + 64) restrictingWritePredicateForEntity:v479 fromClientWithContext:v596];
            v473 = v479;
          }

          if (!v472)
          {
            v483 = [MEMORY[0x1E696ABC0] errorWithDomain:v604 code:134092 userInfo:0];
LABEL_901:
            v484 = 0;
            v642 = v483;
            goto LABEL_911;
          }

          if ([MEMORY[0x1E696AE18] predicateWithValue:0] == v472)
          {
            v483 = [MEMORY[0x1E696ABC0] errorWithDomain:v604 code:134030 userInfo:0];
            goto LABEL_901;
          }

          if (v89)
          {
            v480 = _PFRetainedObjectIDCore(v89, v478, 0, 1);
          }

          else
          {
            v480 = 0;
          }

          [v480 willAccessValueForKey:0];
          if (([v480 isDeleted] & 1) == 0)
          {
            [v480 _setVersionReference__:{objc_msgSend(objc_msgSend(v476, "objectAtIndex:", 1), "unsignedIntegerValue")}];
            [NSXPCStoreServer _populateObject:v480 withValuesFromClient:v476];
            if ([MEMORY[0x1E696AE18] predicateWithValue:1] != v472 && (objc_msgSend(v472, "evaluateWithObject:", v480) & 1) == 0)
            {
              v642 = [MEMORY[0x1E696ABC0] errorWithDomain:v604 code:134030 userInfo:0];

              v484 = 0;
              goto LABEL_911;
            }

            if (+[NSXPCStoreServer debugDefault])
            {
              v481 = objc_autoreleasePoolPush();
              _pflogInitialize(8);
              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v482 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v482, OS_LOG_TYPE_ERROR))
                  {
                    *v649 = 138412290;
                    v650 = v480;
                    _os_log_error_impl(&dword_18565F000, v482, OS_LOG_TYPE_ERROR, "CoreData: error: Deleting object :%@\n", v649, 0xCu);
                  }
                }

                else
                {
                  v485 = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(v485, OS_LOG_TYPE_DEFAULT))
                  {
                    *v649 = 138412290;
                    v650 = v480;
                    _os_log_impl(&dword_18565F000, v485, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Deleting object :%@\n", v649, 0xCu);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v486 = 1;
              }

              else
              {
                v486 = 8;
              }

              _NSCoreDataLog_console(v486, "Deleting object :%@", v480);
              objc_autoreleasePoolPop(v481);
            }

            [v89 deleteObject:v480];
          }

          v484 = 1;
LABEL_911:
          objc_autoreleasePoolPop(v477);
          if (!v484)
          {
            v13 = 0;
            goto LABEL_992;
          }

          ++v475;
        }

        while (v471 != v475);
        v487 = [obj countByEnumeratingWithState:&v622 objects:v651 count:16];
        v471 = v487;
      }

      while (v487);
LABEL_916:
      v605 = [MEMORY[0x1E695DF70] array];
      obja = [MEMORY[0x1E695DF70] array];
      v488 = [MEMORY[0x1E695DF70] array];
      v620 = 0u;
      v621 = 0u;
      v618 = 0u;
      v619 = 0u;
      v489 = [v599 countByEnumeratingWithState:&v618 objects:v649 count:16];
      if (v489)
      {
        v490 = *v619;
        do
        {
          for (m = 0; m != v489; ++m)
          {
            if (*v619 != v490)
            {
              objc_enumerationMutation(v599);
            }

            v492 = *(*(&v618 + 1) + 8 * m);
            v493 = objc_autoreleasePoolPush();
            v494 = [v492 objectAtIndex:0];
            [v488 addObject:v494];
            v495 = -[NSManagedObject initWithEntity:insertIntoManagedObjectContext:]([NSManagedObject alloc], "initWithEntity:insertIntoManagedObjectContext:", [v494 entity], v89);
            [obja addObject:v495];
            if (+[NSXPCStoreServer debugDefault])
            {
              v496 = objc_autoreleasePoolPush();
              _pflogInitialize(8);
              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v497 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v497, OS_LOG_TYPE_ERROR))
                  {
                    *v647 = 138412290;
                    v648 = v494;
                    _os_log_error_impl(&dword_18565F000, v497, OS_LOG_TYPE_ERROR, "CoreData: error: Inserting object with ID %@\n", v647, 0xCu);
                  }
                }

                else
                {
                  v498 = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(v498, OS_LOG_TYPE_DEFAULT))
                  {
                    *v647 = 138412290;
                    v648 = v494;
                    _os_log_impl(&dword_18565F000, v498, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Inserting object with ID %@\n", v647, 0xCu);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v499 = 1;
              }

              else
              {
                v499 = 8;
              }

              _NSCoreDataLog_console(v499, "Inserting object with ID %@", v494);
              objc_autoreleasePoolPop(v496);
            }

            [v605 addObject:v495];

            objc_autoreleasePoolPop(v493);
          }

          v489 = [v599 countByEnumeratingWithState:&v618 objects:v649 count:16];
        }

        while (v489);
      }

      v500 = [v605 count];
      if (v500)
      {
        for (n = 0; n != v500; ++n)
        {
          v502 = objc_autoreleasePoolPush();
          v503 = [v599 objectAtIndex:n];
          v504 = [v605 objectAtIndex:n];
          [v504 _setVersionReference__:{objc_msgSend(objc_msgSend(v503, "objectAtIndex:", 1), "unsignedIntegerValue")}];
          [NSXPCStoreServer _populateObject:v504 withValuesFromClient:v503];
          objc_autoreleasePoolPop(v502);
        }
      }

      v616 = 0u;
      v617 = 0u;
      v614 = 0u;
      v615 = 0u;
      v505 = [contextd countByEnumeratingWithState:&v614 objects:v647 count:16];
      if (v505)
      {
        v506 = *v615;
        do
        {
          v507 = 0;
          do
          {
            if (*v615 != v506)
            {
              objc_enumerationMutation(contextd);
            }

            v508 = *(*(&v614 + 1) + 8 * v507);
            v509 = objc_autoreleasePoolPush();
            v510 = [v508 objectAtIndex:0];
            if (v89)
            {
              v511 = _PFRetainedObjectIDCore(v89, v510, 0, 1);
            }

            else
            {
              v511 = 0;
            }

            [v511 willAccessValueForKey:0];
            [v511 _setVersionReference__:{objc_msgSend(objc_msgSend(v508, "objectAtIndex:", 1), "unsignedIntegerValue")}];
            [NSXPCStoreServer _populateObject:v511 withValuesFromClient:v508];

            objc_autoreleasePoolPop(v509);
            ++v507;
          }

          while (v505 != v507);
          v512 = [contextd countByEnumeratingWithState:&v614 objects:v647 count:16];
          v505 = v512;
        }

        while (v512);
      }

      [v89 processPendingChanges];
      v513 = [(NSManagedObjectContext *)v89 _newSaveRequestForCurrentState];
      if (+[NSXPCStoreServer debugDefault])
      {
        v514 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v515 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v515, OS_LOG_TYPE_ERROR))
            {
              *v643 = 138412290;
              v644 = v513;
              _os_log_error_impl(&dword_18565F000, v515, OS_LOG_TYPE_ERROR, "CoreData: error: Made save request: %@\n", v643, 0xCu);
            }
          }

          else
          {
            v524 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v524, OS_LOG_TYPE_DEFAULT))
            {
              *v643 = 138412290;
              v644 = v513;
              _os_log_impl(&dword_18565F000, v524, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Made save request: %@\n", v643, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v525 = 1;
        }

        else
        {
          v525 = 8;
        }

        _NSCoreDataLog_console(v525, "Made save request: %@", v513);
        objc_autoreleasePoolPop(v514);
      }

      v13 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [*(v595 + 64) processRequest:v513 fromClientWithContext:v596 error:&v642]);
LABEL_992:
      v526 = v642;
      [v594 drain];
      v527 = v13;
      v528 = 0;
      if (v642)
      {
        v613 = v642;
      }

      v529 = v642;
LABEL_1033:
      if (+[NSXPCStoreServer debugDefault])
      {
        v539 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v540 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v540, OS_LOG_TYPE_ERROR))
            {
              *v643 = 0;
              _os_log_error_impl(&dword_18565F000, v540, OS_LOG_TYPE_ERROR, "CoreData: error: Done event handler\n", v643, 2u);
            }
          }

          else
          {
            v541 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v541, OS_LOG_TYPE_DEFAULT))
            {
              *v643 = 0;
              _os_log_impl(&dword_18565F000, v541, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Done event handler\n", v643, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v542 = 1;
        }

        else
        {
          v542 = 8;
        }

        _NSCoreDataLog_console(v542, "Done event handler");
        objc_autoreleasePoolPop(v539);
      }

      if (*(*(*(v612 + 96) + 8) + 24))
      {
        v544 = v613;
        if (v613)
        {
          if ([(NSXPCStoreServer *)*(v612 + 64) errorIsPlausiblyAnSQLiteIssue:v613])
          {
            if ([(NSXPCStoreServer *)*(v612 + 64) setupRecoveryForConnectionContext:v613 ifNecessary:?])
            {
              v546 = @"SQLite error on server: %@, recovery being attempted";
            }

            else
            {
              v546 = @"SQLite error on server: %@, no recovery being attempted";
            }

            *(*(*(v612 + 104) + 8) + 40) = [MEMORY[0x1E696AEC0] stringWithFormat:v546, v613];
            v547 = *(v612 + 64);
            [_NSXPCStoreUtilities logMessage:*(*(*(v612 + 104) + 8) + 40) forComponent:?];
          }

LABEL_1049:
          v545 = 2;
        }

        else if (v13)
        {
          v545 = 0;
        }

        else
        {
          v548 = MEMORY[0x1E696ABC0];
          v549 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"request failed (no result forKey:{no error)", @"Problem"}];
          v13 = 0;
          v613 = [v548 errorWithDomain:*MEMORY[0x1E696A250] code:134070 userInfo:v549];
          v545 = 8;
        }
      }

      else
      {
        v6 = v597;
LABEL_1047:
        v543 = *MEMORY[0x1E696A250];
        if (v6)
        {
          v613 = [MEMORY[0x1E696ABC0] errorWithDomain:v543 code:134095 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"request failed, store identifier mismatch", @"Problem"}];
          goto LABEL_1049;
        }

        v613 = [MEMORY[0x1E696ABC0] errorWithDomain:v543 code:134070 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"request failed, insufficient permission", @"Problem"}];
        v545 = 1;
      }

      if (self)
      {
        self->_messageCode = v545;
        objc_setProperty_nonatomic(self, v544, v13, 24);
      }

      if (v613)
      {
        v613 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v613];
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v583 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v584 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v584, OS_LOG_TYPE_ERROR))
            {
              *v643 = 134218240;
              v644 = self;
              v645 = 2048;
              v646 = v613;
              _os_log_error_impl(&dword_18565F000, v584, OS_LOG_TYPE_ERROR, "CoreData: error: Sending reply %p, %p\n", v643, 0x16u);
            }
          }

          else
          {
            v585 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v585, OS_LOG_TYPE_DEFAULT))
            {
              *v643 = 134218240;
              v644 = self;
              v645 = 2048;
              v646 = v613;
              _os_log_impl(&dword_18565F000, v585, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Sending reply %p, %p\n", v643, 0x16u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v586 = 1;
        }

        else
        {
          v586 = 8;
        }

        _NSCoreDataLog_console(v586, "Sending reply %p, %p", self, v613);
        objc_autoreleasePoolPop(v583);
      }

      v587 = v613;
      [*(v612 + 48) reset];

      [v598 drain];
      v588 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      (*(*(v612 + 88) + 16))();
      if (+[NSXPCStoreServer debugDefault])
      {
        v589 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v590 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v590, OS_LOG_TYPE_ERROR))
            {
              *v643 = 0;
              _os_log_error_impl(&dword_18565F000, v590, OS_LOG_TYPE_ERROR, "CoreData: error: Sent reply\n", v643, 2u);
            }
          }

          else
          {
            v591 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v591, OS_LOG_TYPE_DEFAULT))
            {
              *v643 = 0;
              _os_log_impl(&dword_18565F000, v591, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Sent reply\n", v643, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v592 = 1;
        }

        else
        {
          v592 = 8;
        }

        _NSCoreDataLog_console(v592, "Sent reply");
        objc_autoreleasePoolPop(v589);
      }

      [v588 drain];
      v613 = 0;
      v593 = *MEMORY[0x1E69E9840];
      return;
    case 4:
      if (+[NSXPCStoreServer debugDefault])
      {
        v36 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v37 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v37, OS_LOG_TYPE_ERROR, "CoreData: error: OID\n", buf, 2u);
            }
          }

          else
          {
            v187 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v187, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: OID\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v188 = 1;
        }

        else
        {
          v188 = 8;
        }

        _NSCoreDataLog_console(v188, "OID");
        objc_autoreleasePoolPop(v36);
      }

      v189 = *(v612 + 40);
      if (v189)
      {
        v190 = *(v189 + 24);
      }

      else
      {
        v190 = 0;
      }

      v191 = *(v612 + 64);
      if (!v191)
      {
        goto LABEL_488;
      }

      v192 = *(v612 + 56);
      v193 = objc_autoreleasePoolPush();
      v194 = MEMORY[0x1E695DFD8];
      v195 = objc_opt_class();
      v196 = objc_opt_class();
      v197 = objc_opt_class();
      v198 = [v194 setWithObjects:{v195, v196, v197, objc_opt_class(), 0}];
      v199 = [_NSXPCStoreUtilities decodeSecureArchivedData:v190 usingDelegate:v192 classes:v198];
      v200 = v199;
      objc_autoreleasePoolPop(v193);
      if (+[NSXPCStoreServer debugDefault])
      {
        v201 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v202 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v199;
              _os_log_error_impl(&dword_18565F000, v202, OS_LOG_TYPE_ERROR, "CoreData: error: Got oid  request for %@\n", buf, 0xCu);
            }
          }

          else
          {
            v266 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v199;
              _os_log_impl(&dword_18565F000, v266, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got oid  request for %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v267 = 1;
        }

        else
        {
          v267 = 8;
        }

        _NSCoreDataLog_console(v267, "Got oid  request for %@", v199);
        objc_autoreleasePoolPop(v201);
      }

      v268 = [(NSXPCStoreServerRequestHandlingPolicy *)*(v191 + 64) processObtainRequest:v199 inContext:v192 error:&v613];
      if (+[NSXPCStoreServer debugDefault])
      {
        v269 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v270 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v270, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v268;
              _os_log_error_impl(&dword_18565F000, v270, OS_LOG_TYPE_ERROR, "CoreData: error: Returning result %@\n", buf, 0xCu);
            }
          }

          else
          {
            v303 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v268;
              _os_log_impl(&dword_18565F000, v303, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Returning result %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v304 = 1;
        }

        else
        {
          v304 = 8;
        }

        _NSCoreDataLog_console(v304, "Returning result %@", v268);
        objc_autoreleasePoolPop(v269);
      }

      if (!v268)
      {
        goto LABEL_488;
      }

      v305 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v268];
      goto LABEL_1031;
    case 5:
      if (+[NSXPCStoreServer debugDefault])
      {
        v38 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v39 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v39, OS_LOG_TYPE_ERROR, "CoreData: error: Fault\n", buf, 2u);
            }
          }

          else
          {
            v203 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v203, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fault\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v204 = 1;
        }

        else
        {
          v204 = 8;
        }

        _NSCoreDataLog_console(v204, "Fault");
        objc_autoreleasePoolPop(v38);
      }

      v205 = *(v612 + 40);
      if (v205)
      {
        v206 = *(v205 + 24);
      }

      else
      {
        v206 = 0;
      }

      v207 = *(v612 + 64);
      if (!v207)
      {
        goto LABEL_1137;
      }

      v208 = *(v612 + 56);
      *v654 = 0;
      contextc = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v209 = MEMORY[0x1E695DFD8];
      v210 = objc_opt_class();
      v211 = objc_opt_class();
      v212 = objc_opt_class();
      v213 = objc_opt_class();
      v214 = [v209 setWithObjects:{v210, v211, v212, v213, objc_opt_class(), 0}];
      v215 = [_NSXPCStoreUtilities decodeSecureArchivedData:v206 usingDelegate:v208 classes:v214];
      if ([v215 count] >= 2 && (v216 = objc_msgSend(v215, "objectAtIndex:", 1)) != 0)
      {
        v217 = [NSXPCStoreServer unpackQueryGeneration:v216 withContext:v208];
        v218 = 1;
      }

      else
      {
        v218 = 0;
        v217 = 0;
      }

      v219 = [v215 firstObject];
      if (+[NSXPCStoreServer debugDefault])
      {
        v220 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v221 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v219;
              _os_log_error_impl(&dword_18565F000, v221, OS_LOG_TYPE_ERROR, "CoreData: error: Attempting to fire fault for %@\n", buf, 0xCu);
            }
          }

          else
          {
            v271 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v219;
              _os_log_impl(&dword_18565F000, v271, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Attempting to fire fault for %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v272 = 1;
        }

        else
        {
          v272 = 8;
        }

        _NSCoreDataLog_console(v272, "Attempting to fire fault for %@", v219);
        objc_autoreleasePoolPop(v220);
      }

      if (v217)
      {
        v273 = 0;
      }

      else
      {
        v273 = v218;
      }

      if (v273 == 1 && +[NSXPCStoreServer debugDefault])
      {
        v274 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v275 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_error_impl(&dword_18565F000, v275, OS_LOG_TYPE_ERROR, "CoreData: error: Can't fulfill fault request: can't find query generation: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v414 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v414, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_impl(&dword_18565F000, v414, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Can't fulfill fault request: can't find query generation: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v415 = 1;
        }

        else
        {
          v415 = 8;
        }

        _NSCoreDataLog_console(v415, "Can't fulfill fault request: can't find query generation: %@", 0);
        objc_autoreleasePoolPop(v274);
        v416 = MEMORY[0x1E696ABC0];
        *buf = @"unrecognized query generation";
        *&v657 = @"reason";
        *(&v657 + 1) = @"generation";
        v417 = [MEMORY[0x1E695DFB0] null];
        *&v658 = @"target";
        *&buf[8] = v417;
        *&buf[16] = v219;
        v418 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v657 count:3];
        v282 = [v416 errorWithDomain:*MEMORY[0x1E696A250] code:134061 userInfo:v418];
      }

      else
      {
        v276 = [v208 managedObjectContext];
        [v276 setStalenessInterval:0.0];
        v277 = [objc_msgSend(v276 "persistentStoreCoordinator")];
        if (v277)
        {
          v278 = [*(v207 + 64) processFaultForObjectWithID:v277 fromClientWithContext:v208 error:v654];
          if (v278)
          {
            v279 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v278];
          }

          else
          {
            v279 = 0;
          }

          v283 = 1;
LABEL_778:
          v419 = *v654;
          [contextc drain];
          if (*v654)
          {
            v613 = *v654;
          }

          v420 = *v654;
          if (v283)
          {
            v314 = v279;
LABEL_1032:
            v13 = v314;
            goto LABEL_1033;
          }

LABEL_1137:
          v13 = 0;
          goto LABEL_1033;
        }

        v280 = MEMORY[0x1E696ABC0];
        v281 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"missing objectID" forKey:@"reason"];
        v282 = [v280 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v281];
      }

      v283 = 0;
      v279 = 0;
      *v654 = v282;
      goto LABEL_778;
    case 6:
      if (+[NSXPCStoreServer debugDefault])
      {
        v22 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v23 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: Rel fault\n", buf, 2u);
            }
          }

          else
          {
            v95 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v95, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Rel fault\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v96 = 1;
        }

        else
        {
          v96 = 8;
        }

        _NSCoreDataLog_console(v96, "Rel fault");
        objc_autoreleasePoolPop(v22);
      }

      v97 = *(v612 + 40);
      if (v97)
      {
        v98 = *(v97 + 24);
      }

      else
      {
        v98 = 0;
      }

      v602 = *(v612 + 64);
      if (!v602)
      {
        goto LABEL_1137;
      }

      v99 = *(v612 + 56);
      *&v653[0] = 0;
      contexta = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v100 = MEMORY[0x1E695DFD8];
      v101 = objc_opt_class();
      v102 = objc_opt_class();
      v103 = objc_opt_class();
      v104 = objc_opt_class();
      v105 = objc_opt_class();
      v106 = [v100 setWithObjects:{v101, v102, v103, v104, v105, objc_opt_class(), 0}];
      v107 = [_NSXPCStoreUtilities decodeSecureArchivedData:v98 usingDelegate:v99 classes:v106];
      v108 = [v107 firstObject];
      if ([v107 count] >= 2 && (v109 = objc_msgSend(v107, "objectAtIndex:", 1)) != 0)
      {
        v110 = [NSXPCStoreServer unpackQueryGeneration:v109 withContext:v99];
        v111 = 1;
      }

      else
      {
        v111 = 0;
        v110 = 0;
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v112 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v113 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v108;
              _os_log_error_impl(&dword_18565F000, v113, OS_LOG_TYPE_ERROR, "CoreData: error: Got relationship fault request: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v284 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v108;
              _os_log_impl(&dword_18565F000, v284, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got relationship fault request: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v285 = 1;
        }

        else
        {
          v285 = 8;
        }

        _NSCoreDataLog_console(v285, "Got relationship fault request: %@", v108);
        objc_autoreleasePoolPop(v112);
      }

      if (v110)
      {
        v286 = 0;
      }

      else
      {
        v286 = v111;
      }

      if (v286 == 1 && +[NSXPCStoreServer debugDefault])
      {
        v287 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v288 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v288, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_error_impl(&dword_18565F000, v288, OS_LOG_TYPE_ERROR, "CoreData: error: Can't fulfill relationship fault request: can't find query generation: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v421 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v421, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_impl(&dword_18565F000, v421, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Can't fulfill relationship fault request: can't find query generation: %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v422 = 1;
        }

        else
        {
          v422 = 8;
        }

        _NSCoreDataLog_console(v422, "Can't fulfill relationship fault request: can't find query generation: %@", 0);
        objc_autoreleasePoolPop(v287);
        v423 = MEMORY[0x1E696ABC0];
        *buf = @"unrecognized query generation";
        *&v657 = @"reason";
        *(&v657 + 1) = @"generation";
        v424 = [MEMORY[0x1E695DFB0] null];
        *&v658 = @"request";
        *&buf[8] = v424;
        *&buf[16] = v108;
        v425 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v657 count:3];
        v323 = [v423 errorWithDomain:*MEMORY[0x1E696A250] code:134061 userInfo:v425];
      }

      else
      {
        v289 = [v99 managedObjectContext];
        [v289 setStalenessInterval:0.0];
        v290 = [objc_msgSend(v289 "persistentStoreCoordinator")];
        v291 = [v108 valueForKey:@"relationship"];
        if (+[NSXPCStoreServer debugDefault])
        {
          v292 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v293 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = v290;
                *&buf[12] = 2112;
                *&buf[14] = v291;
                _os_log_error_impl(&dword_18565F000, v293, OS_LOG_TYPE_ERROR, "CoreData: error: Attempting to fire fault for %@, %@\n", buf, 0x16u);
              }
            }

            else
            {
              v318 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v318, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v290;
                *&buf[12] = 2112;
                *&buf[14] = v291;
                _os_log_impl(&dword_18565F000, v318, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Attempting to fire fault for %@, %@\n", buf, 0x16u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v319 = 1;
          }

          else
          {
            v319 = 8;
          }

          _NSCoreDataLog_console(v319, "Attempting to fire fault for %@, %@", v290, v291);
          objc_autoreleasePoolPop(v292);
        }

        if (v290)
        {
          p_super = [*(v602 + 64) processFaultForRelationshipWithName:v291 onObjectWithID:v290 fromClientWithContext:v99 error:v653];
          if (p_super)
          {
            v603 = v291;
            v320 = objc_alloc_init(MEMORY[0x1E695DF70]);
            if ([MEMORY[0x1E695DFB0] null] == p_super)
            {
              [v320 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [p_super URIRepresentation];
              }

              else
              {
                v659 = 0u;
                v660 = 0u;
                v657 = 0u;
                v658 = 0u;
                v326 = [p_super countByEnumeratingWithState:&v657 objects:buf count:16];
                if (v326)
                {
                  v327 = *v658;
                  do
                  {
                    for (ii = 0; ii != v326; ++ii)
                    {
                      if (*v658 != v327)
                      {
                        objc_enumerationMutation(p_super);
                      }

                      v329 = *(*(&v657 + 1) + 8 * ii);
                      p_superclass = objc_autoreleasePoolPush();
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v236 = objc_autoreleasePoolPush();
                        _pflogInitialize(8);
                        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                        {
                          if (_pflogging_catastrophic_mode)
                          {
                            p_super = _PFLogGetLogStream(1);
                            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
                            {
                              v519 = objc_opt_class();
                              *v654 = 138412290;
                              *&v654[4] = v519;
                              _os_log_error_impl(&dword_18565F000, p_super, OS_LOG_TYPE_ERROR, "CoreData: error: Wrong in all kinds of ways. Less colloquially, that should be an object ID, but it's an instance of %@ instead\n", v654, 0xCu);
                            }
                          }

                          else
                          {
                            p_super = _PFLogGetLogStream(8);
                            if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
                            {
                              v582 = objc_opt_class();
                              *v654 = 138412290;
                              *&v654[4] = v582;
                              _os_log_impl(&dword_18565F000, p_super, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Wrong in all kinds of ways. Less colloquially, that should be an object ID, but it's an instance of %@ instead\n", v654, 0xCu);
                            }
                          }
                        }

                        if (_pflogging_catastrophic_mode)
                        {
                          v520 = objc_opt_class();
                          v521 = 1;
                        }

                        else
                        {
                          v520 = objc_opt_class();
                          v521 = 8;
                        }

                        _NSCoreDataLog_console(v521, "Wrong in all kinds of ways. Less colloquially, that should be an object ID, but it's an instance of %@ instead", v520);
                        objc_autoreleasePoolPop(v236);
                        goto LABEL_1009;
                      }

                      [v320 addObject:{objc_msgSend(v329, "URIRepresentation")}];
                      objc_autoreleasePoolPop(p_superclass);
                    }

                    v326 = [p_super countByEnumeratingWithState:&v657 objects:buf count:16];
                  }

                  while (v326);
                }
              }
            }

            if (+[NSXPCStoreServer debugDefault])
            {
              v330 = objc_autoreleasePoolPush();
              _pflogInitialize(8);
              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v331 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v331, OS_LOG_TYPE_ERROR))
                  {
                    *v654 = 138412802;
                    *&v654[4] = v290;
                    *&v654[12] = 2112;
                    *&v654[14] = v603;
                    v655 = 2112;
                    v656 = v320;
                    _os_log_error_impl(&dword_18565F000, v331, OS_LOG_TYPE_ERROR, "CoreData: error: Fired relationship fault %@ - %@, returning values: %@\n", v654, 0x20u);
                  }
                }

                else
                {
                  v522 = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(v522, OS_LOG_TYPE_DEFAULT))
                  {
                    *v654 = 138412802;
                    *&v654[4] = v290;
                    *&v654[12] = 2112;
                    *&v654[14] = v603;
                    v655 = 2112;
                    v656 = v320;
                    _os_log_impl(&dword_18565F000, v522, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Fired relationship fault %@ - %@, returning values: %@\n", v654, 0x20u);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v523 = 1;
              }

              else
              {
                v523 = 8;
              }

              _NSCoreDataLog_console(v523, "Fired relationship fault %@ - %@, returning values: %@", v290, v603, v320);
              objc_autoreleasePoolPop(v330);
            }

            v427 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v320];
          }

          else
          {
            if (+[NSXPCStoreServer debugDefault])
            {
              v324 = objc_autoreleasePoolPush();
              _pflogInitialize(8);
              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  v325 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    *&buf[4] = v290;
                    *&buf[12] = 2112;
                    *&buf[14] = v291;
                    _os_log_error_impl(&dword_18565F000, v325, OS_LOG_TYPE_ERROR, "CoreData: error: Attempted to fire relationship fault %@ - %@, no such luck\n", buf, 0x16u);
                  }
                }

                else
                {
                  v530 = _PFLogGetLogStream(8);
                  if (os_log_type_enabled(v530, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *&buf[4] = v290;
                    *&buf[12] = 2112;
                    *&buf[14] = v291;
                    _os_log_impl(&dword_18565F000, v530, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Attempted to fire relationship fault %@ - %@, no such luck\n", buf, 0x16u);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v531 = 1;
              }

              else
              {
                v531 = 8;
              }

              _NSCoreDataLog_console(v531, "Attempted to fire relationship fault %@ - %@, no such luck", v290, v291);
              objc_autoreleasePoolPop(v324);
            }

            v427 = 0;
          }

          v426 = 1;
LABEL_1003:
          v532 = *&v653[0];
          [contexta drain];
          if (*&v653[0])
          {
            v613 = *&v653[0];
          }

          v533 = *&v653[0];
          if (v426)
          {
            v314 = v427;
            goto LABEL_1032;
          }

          goto LABEL_1137;
        }

        v321 = MEMORY[0x1E696ABC0];
        v322 = [MEMORY[0x1E695DF20] dictionaryWithObject:v108 forKey:@"originalRequest"];
        v323 = [v321 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v322];
      }

      v426 = 0;
      v427 = 0;
      *&v653[0] = v323;
      goto LABEL_1003;
    case 7:
      if (+[NSXPCStoreServer debugDefault])
      {
        v28 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v29 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v29, OS_LOG_TYPE_ERROR, "CoreData: error: Request notification name\n", buf, 2u);
            }
          }

          else
          {
            v153 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v153, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Request notification name\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v154 = 1;
        }

        else
        {
          v154 = 8;
        }

        _NSCoreDataLog_console(v154, "Request notification name");
        objc_autoreleasePoolPop(v28);
      }

      if (!*(v612 + 64))
      {
        goto LABEL_1137;
      }

      v155 = *(v612 + 56);
      v156 = objc_autoreleasePoolPush();
      v157 = [objc_msgSend(objc_msgSend(objc_msgSend(v155 "managedObjectContext")];
      if (!v157)
      {
        v158 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v159 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v159, OS_LOG_TYPE_ERROR, "CoreData: error: no store\n", buf, 2u);
            }
          }

          else
          {
            v389 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v389, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: no store\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v390 = 1;
        }

        else
        {
          v390 = 8;
        }

        _NSCoreDataLog_console(v390, "no store");
        objc_autoreleasePoolPop(v158);
      }

      v391 = [_PFRoutines _remoteChangeNotificationNameForStore:v157];
      *v654 = @"notificationName";
      *&v657 = v391;
      v392 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v657 forKeys:v654 count:1];
      if (+[NSXPCStoreServer debugDefault])
      {
        v393 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v394 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v394, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v392;
              _os_log_error_impl(&dword_18565F000, v394, OS_LOG_TYPE_ERROR, "CoreData: error: Got pull changes result %@\n", buf, 0xCu);
            }
          }

          else
          {
            v395 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v395, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v392;
              _os_log_impl(&dword_18565F000, v395, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got pull changes result %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v396 = 1;
        }

        else
        {
          v396 = 8;
        }

        _NSCoreDataLog_console(v396, "Got pull changes result %@", v392);
        objc_autoreleasePoolPop(v393);
      }

      v397 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v392];
      if (+[NSXPCStoreServer debugDefault])
      {
        v398 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v399 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v399, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v397;
              _os_log_error_impl(&dword_18565F000, v399, OS_LOG_TYPE_ERROR, "CoreData: error: Which archives to %@\n", buf, 0xCu);
            }
          }

          else
          {
            v400 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v400, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v397;
              _os_log_impl(&dword_18565F000, v400, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which archives to %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v401 = 1;
        }

        else
        {
          v401 = 8;
        }

        _NSCoreDataLog_console(v401, "Which archives to %@", v397);
        objc_autoreleasePoolPop(v398);
      }

      objc_autoreleasePoolPop(v156);
      v314 = v397;
      goto LABEL_1032;
    case 9:
      if (+[NSXPCStoreServer debugDefault])
      {
        v30 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v31 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: error: Query generation\n", buf, 2u);
            }
          }

          else
          {
            v160 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v160, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Query generation\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v161 = 1;
        }

        else
        {
          v161 = 8;
        }

        _NSCoreDataLog_console(v161, "Query generation");
        objc_autoreleasePoolPop(v30);
      }

      if (!*(v612 + 64))
      {
        goto LABEL_488;
      }

      v162 = *(v612 + 56);
      v9 = objc_autoreleasePoolPush();
      v163 = [v162 persistentStoreCoordinator];
      v164 = [v163 _retainedCurrentQueryGeneration:0];
      v165 = [objc_msgSend(v163 "persistentStores")];
      if (!v165)
      {
        v166 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v167 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v167, OS_LOG_TYPE_ERROR, "CoreData: error: no store\n", buf, 2u);
            }
          }

          else
          {
            v402 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v402, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v402, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: no store\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v403 = 1;
        }

        else
        {
          v403 = 8;
        }

        _NSCoreDataLog_console(v403, "no store");
        objc_autoreleasePoolPop(v166);
      }

      v404 = [(_NSQueryGenerationToken *)v164 _generationalComponentForStore:v165];
      v405 = [NSXPCStoreServer retainedXPCEncodableGenerationTokenForOriginal:v404 inContext:v162];
      if (+[NSXPCStoreServer debugDefault])
      {
        v406 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v407 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v407, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v164;
              _os_log_error_impl(&dword_18565F000, v407, OS_LOG_TYPE_ERROR, "CoreData: error: Got queryGeneration %@\n", buf, 0xCu);
            }
          }

          else
          {
            v408 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v408, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v164;
              _os_log_impl(&dword_18565F000, v408, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got queryGeneration %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v409 = 1;
        }

        else
        {
          v409 = 8;
        }

        _NSCoreDataLog_console(v409, "Got queryGeneration %@", v164);
        objc_autoreleasePoolPop(v406);
      }

      v305 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v405];
      if (!+[NSXPCStoreServer debugDefault])
      {
        goto LABEL_1030;
      }

      v369 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v410 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v410, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v305;
            _os_log_error_impl(&dword_18565F000, v410, OS_LOG_TYPE_ERROR, "CoreData: error: Which archives to %@\n", buf, 0xCu);
          }
        }

        else
        {
          v411 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v411, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v305;
            _os_log_impl(&dword_18565F000, v411, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which archives to %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v372 = 1;
      }

      else
      {
        v372 = 8;
      }

      goto LABEL_661;
    case 0xALL:
      if (+[NSXPCStoreServer debugDefault])
      {
        v42 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v43 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: error: Query generation release\n", buf, 2u);
            }
          }

          else
          {
            v243 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v243, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Query generation release\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v244 = 1;
        }

        else
        {
          v244 = 8;
        }

        _NSCoreDataLog_console(v244, "Query generation release");
        objc_autoreleasePoolPop(v42);
      }

      v245 = *(v612 + 40);
      if (v245)
      {
        v246 = *(v245 + 24);
      }

      else
      {
        v246 = 0;
      }

      if (!*(v612 + 64))
      {
        goto LABEL_488;
      }

      v247 = *(v612 + 56);
      v9 = objc_autoreleasePoolPush();
      v248 = MEMORY[0x1E695DFD8];
      v249 = objc_opt_class();
      v250 = objc_opt_class();
      v251 = [v248 setWithObjects:{v249, v250, objc_opt_class(), 0}];
      v252 = [_NSXPCStoreUtilities decodeSecureArchivedData:v246 usingDelegate:v247 classes:v251];
      if (v252)
      {
        -[NSXPCStoreServerPerConnectionCache releaseQueryGenerationForRemoteGeneration:]([v247 cache], *(v252 + 24));
      }

      else
      {
        v253 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v254 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v254, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_error_impl(&dword_18565F000, v254, OS_LOG_TYPE_ERROR, "CoreData: error: Attempting to free nothing (or too many things) %@\n", buf, 0xCu);
            }
          }

          else
          {
            v412 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v412, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_impl(&dword_18565F000, v412, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Attempting to free nothing (or too many things) %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v413 = 1;
        }

        else
        {
          v413 = 8;
        }

        _NSCoreDataLog_console(v413, "Attempting to free nothing (or too many things) %@", 0);
        objc_autoreleasePoolPop(v253);
      }

      v305 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:?];
      goto LABEL_1030;
    case 0xBLL:
      if (+[NSXPCStoreServer debugDefault])
      {
        v40 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v41 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v41, OS_LOG_TYPE_ERROR, "CoreData: error: Query generation reopen\n", buf, 2u);
            }
          }

          else
          {
            v222 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v222, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Query generation reopen\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v223 = 1;
        }

        else
        {
          v223 = 8;
        }

        _NSCoreDataLog_console(v223, "Query generation reopen");
        objc_autoreleasePoolPop(v40);
      }

      v224 = *(v612 + 40);
      if (v224)
      {
        v225 = *(v224 + 24);
      }

      else
      {
        v225 = 0;
      }

      if (!*(v612 + 64))
      {
        goto LABEL_488;
      }

      v226 = *(v612 + 56);
      v9 = objc_autoreleasePoolPush();
      p_superclass = NSCloudKitMirroringRequestManager.superclass;
      v227 = MEMORY[0x1E695DFD8];
      v228 = objc_opt_class();
      v229 = objc_opt_class();
      v230 = [v227 setWithObjects:{v228, v229, objc_opt_class(), 0}];
      v231 = [_NSXPCStoreUtilities decodeSecureArchivedData:v225 usingDelegate:v226 classes:v230];
      v232 = v231;
      if (v231)
      {
        v233 = *(v231 + 24);
        v234 = -[NSXPCStoreServerPerConnectionCache localGenerationForRemoteGeneration:]([v226 cache], v233);
        if (v234)
        {
          p_super = [NSXPCStoreServer retainedXPCEncodableGenerationTokenForOriginal:v234 inContext:v226];
          goto LABEL_1017;
        }

        v238 = -[NSPersistentStoreCoordinator _reopenQueryGenerationWithIdentifier:inStoreWithIdentifier:error:]([v226 persistentStoreCoordinator], v233, objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v226, "persistentStoreCoordinator"), "persistentStores"), "firstObject"), "identifier"), 0);
        v239 = v238;
        if (v238)
        {
          v240 = [NSXPCStoreServer retainedXPCEncodableGenerationTokenForOriginal:v238 inContext:v226];
          p_super = &v240->super;
          if (v240)
          {
            isa = v240[3].super.isa;
          }

          else
          {
            isa = 0;
          }

          -[NSXPCStoreServerPerConnectionCache registerQueryGeneration:forRemoteGeneration:]([v226 cache], v239, isa);
          if (!+[NSXPCStoreServer debugDefault])
          {
            goto LABEL_1017;
          }

          v236 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (!_pflogging_catastrophic_mode)
            {
              goto LABEL_1010;
            }

            v242 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v242, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = p_super;
              _os_log_error_impl(&dword_18565F000, v242, OS_LOG_TYPE_ERROR, "CoreData: error: Reopened generation %@\n", buf, 0xCu);
            }
          }

LABEL_1012:
          if (_pflogging_catastrophic_mode)
          {
            v535 = 1;
          }

          else
          {
            v535 = 8;
          }

          _NSCoreDataLog_console(v535, "Reopened generation %@", p_super);
LABEL_1016:
          objc_autoreleasePoolPop(v236);
LABEL_1017:
          v305 = [(_NSXPCStoreUtilities *)p_superclass + 2872 newSecureArchivedDataWithRootObject:?];

          if (+[NSXPCStoreServer debugDefault])
          {
            v369 = objc_autoreleasePoolPush();
            _pflogInitialize(8);
            if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v536 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v536, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *&buf[4] = v305;
                  _os_log_error_impl(&dword_18565F000, v536, OS_LOG_TYPE_ERROR, "CoreData: error: Which archives to %@\n", buf, 0xCu);
                }
              }

              else
              {
                v537 = _PFLogGetLogStream(8);
                if (os_log_type_enabled(v537, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v305;
                  _os_log_impl(&dword_18565F000, v537, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which archives to %@\n", buf, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v538 = 1;
            }

            else
            {
              v538 = 8;
            }

            _NSCoreDataLog_console(v538, "Which archives to %@", v305);
LABEL_1029:
            objc_autoreleasePoolPop(v369);
          }

LABEL_1030:
          objc_autoreleasePoolPop(v9);
LABEL_1031:
          v314 = v305;
          goto LABEL_1032;
        }

        if (+[NSXPCStoreServer debugDefault])
        {
          v236 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v315 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v315, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v232;
                _os_log_error_impl(&dword_18565F000, v315, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to reopen generation %@\n", buf, 0xCu);
              }
            }

            else
            {
              v565 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v565, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v232;
                _os_log_impl(&dword_18565F000, v565, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Unable to reopen generation %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v566 = 1;
          }

          else
          {
            v566 = 8;
          }

          _NSCoreDataLog_console(v566, "Unable to reopen generation %@", v232);
LABEL_962:
          p_super = 0;
          goto LABEL_1016;
        }
      }

      else if (+[NSXPCStoreServer debugDefault])
      {
        v236 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v237 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_error_impl(&dword_18565F000, v237, OS_LOG_TYPE_ERROR, "CoreData: error: Bad parameter to reopen generation %@\n", buf, 0xCu);
            }
          }

          else
          {
            v516 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v516, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = 0;
              _os_log_impl(&dword_18565F000, v516, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Bad parameter to reopen generation %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v517 = 1;
        }

        else
        {
          v517 = 8;
        }

        _NSCoreDataLog_console(v517, "Bad parameter to reopen generation %@", 0);
        goto LABEL_962;
      }

      p_super = 0;
      goto LABEL_1017;
    case 0xCLL:
      if (+[NSXPCStoreServer debugDefault])
      {
        v16 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v17 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: error: Batch delete\n", buf, 2u);
            }
          }

          else
          {
            v57 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v57, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Batch delete\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v58 = 1;
        }

        else
        {
          v58 = 8;
        }

        _NSCoreDataLog_console(v58, "Batch delete");
        objc_autoreleasePoolPop(v16);
      }

      v59 = *(v612 + 40);
      if (v59)
      {
        v60 = *(v59 + 24);
      }

      else
      {
        v60 = 0;
      }

      v61 = *(v612 + 64);
      if (!v61)
      {
        goto LABEL_488;
      }

      v62 = *(v612 + 56);
      *&v657 = 0;
      v63 = objc_autoreleasePoolPush();
      v64 = [NSBatchDeleteRequest decodeFromXPCArchive:v60 withContext:v62 withPolicy:*(v61 + 64)];
      if (v64)
      {
        v52 = [*(v61 + 64) processRequest:v64 fromClientWithContext:v62 error:&v657];
        if (+[NSXPCStoreServer debugDefault])
        {
          v65 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v66 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v52;
                _os_log_error_impl(&dword_18565F000, v66, OS_LOG_TYPE_ERROR, "CoreData: error: Which had result %@\n", buf, 0xCu);
              }
            }

            else
            {
              v334 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v334, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v52;
                _os_log_impl(&dword_18565F000, v334, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which had result %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v335 = 1;
          }

          else
          {
            v335 = 8;
          }

          _NSCoreDataLog_console(v335, "Which had result %@", v52);
          objc_autoreleasePoolPop(v65);
        }

        if (v52)
        {
          v52 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [v52 result]);
        }
      }

      else
      {
        v67 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v68 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v68, OS_LOG_TYPE_ERROR, "CoreData: error: Nil batch delete request\n", buf, 2u);
            }
          }

          else
          {
            v350 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v350, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v350, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil batch delete request\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v351 = 1;
        }

        else
        {
          v351 = 8;
        }

        _NSCoreDataLog_console(v351, "Nil batch delete request");
        objc_autoreleasePoolPop(v67);
        v52 = 0;
      }

      v352 = v657;
      objc_autoreleasePoolPop(v63);
      if (v657)
      {
        v613 = v657;
      }

      goto LABEL_631;
    case 0xDLL:
      if (+[NSXPCStoreServer debugDefault])
      {
        v24 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v25 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: error: Persistent history\n", buf, 2u);
            }
          }

          else
          {
            v114 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v114, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Persistent history\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v115 = 1;
        }

        else
        {
          v115 = 8;
        }

        _NSCoreDataLog_console(v115, "Persistent history");
        objc_autoreleasePoolPop(v24);
      }

      v116 = *(v612 + 40);
      if (v116)
      {
        v117 = *(v116 + 24);
      }

      else
      {
        v117 = 0;
      }

      v118 = *(v612 + 64);
      if (!v118)
      {
        goto LABEL_488;
      }

      v119 = *(v612 + 56);
      *&v657 = 0;
      v120 = objc_autoreleasePoolPush();
      v121 = [NSPersistentHistoryChangeRequest decodeFromXPCArchive:v117 withContext:v119 withPolicy:*(v118 + 64)];
      if (v121)
      {
        v52 = [*(v118 + 64) processRequest:v121 fromClientWithContext:v119 error:&v657];
        if (+[NSXPCStoreServer debugDefault])
        {
          v122 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v123 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v52;
                _os_log_error_impl(&dword_18565F000, v123, OS_LOG_TYPE_ERROR, "CoreData: error: Which had result %@\n", buf, 0xCu);
              }
            }

            else
            {
              v336 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v336, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v52;
                _os_log_impl(&dword_18565F000, v336, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which had result %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v337 = 1;
          }

          else
          {
            v337 = 8;
          }

          _NSCoreDataLog_console(v337, "Which had result %@", v52);
          objc_autoreleasePoolPop(v122);
        }

        if (v52)
        {
          v52 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [v52 result]);
        }
      }

      else
      {
        v124 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v125 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v125, OS_LOG_TYPE_ERROR, "CoreData: error: Nil persistent history request\n", buf, 2u);
            }
          }

          else
          {
            v353 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v353, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v353, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil persistent history request\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v354 = 1;
        }

        else
        {
          v354 = 8;
        }

        _NSCoreDataLog_console(v354, "Nil persistent history request");
        objc_autoreleasePoolPop(v124);
        v52 = 0;
      }

      v355 = v657;
      objc_autoreleasePoolPop(v120);
      if (v657)
      {
        v613 = v657;
      }

      goto LABEL_631;
    case 0xELL:
      if (+[NSXPCStoreServer debugDefault])
      {
        v18 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v19 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: error: Persistent history token\n", buf, 2u);
            }
          }

          else
          {
            v69 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v69, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Persistent history token\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v70 = 1;
        }

        else
        {
          v70 = 8;
        }

        _NSCoreDataLog_console(v70, "Persistent history token");
        objc_autoreleasePoolPop(v18);
      }

      v71 = *(v612 + 40);
      if (v71)
      {
        v72 = *(v71 + 24);
      }

      else
      {
        v72 = 0;
      }

      if (!*(v612 + 64))
      {
        goto LABEL_1137;
      }

      v73 = *(v612 + 56);
      context = objc_autoreleasePoolPush();
      v74 = [v73 persistentStoreCoordinator];
      v75 = MEMORY[0x1E695DFD8];
      v76 = objc_opt_class();
      v77 = [v75 setWithObjects:{v76, objc_opt_class(), 0}];
      v78 = [_NSXPCStoreUtilities decodeSecureArchivedData:v72 usingDelegate:v73 classes:v77];
      if (+[NSXPCStoreServer debugDefault])
      {
        v79 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v80 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v78;
              _os_log_error_impl(&dword_18565F000, v80, OS_LOG_TYPE_ERROR, "CoreData: error: Server received history token payload - %@\n", buf, 0xCu);
            }
          }

          else
          {
            v255 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v78;
              _os_log_impl(&dword_18565F000, v255, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Server received history token payload - %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v256 = 1;
        }

        else
        {
          v256 = 8;
        }

        _NSCoreDataLog_console(v256, "Server received history token payload - %@", v78);
        objc_autoreleasePoolPop(v79);
      }

      if (![v78 count])
      {
        goto LABEL_394;
      }

      v257 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v78, "count")}];
      v659 = 0u;
      v660 = 0u;
      v657 = 0u;
      v658 = 0u;
      v258 = [v74 persistentStores];
      v259 = [v258 countByEnumeratingWithState:&v657 objects:buf count:16];
      if (v259)
      {
        v260 = *v658;
        do
        {
          for (jj = 0; jj != v259; ++jj)
          {
            if (*v658 != v260)
            {
              objc_enumerationMutation(v258);
            }

            v262 = *(*(&v657 + 1) + 8 * jj);
            if ([v78 containsObject:{objc_msgSend(v262, "identifier")}])
            {
              [v257 addObject:v262];
            }
          }

          v259 = [v258 countByEnumeratingWithState:&v657 objects:buf count:16];
        }

        while (v259);
      }

      if ([v257 count])
      {
        v263 = [v74 currentPersistentHistoryTokenFromStores:v257];
      }

      else
      {
LABEL_394:
        v263 = 0;
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v264 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v265 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
            {
              *v654 = 138412290;
              *&v654[4] = v263;
              _os_log_error_impl(&dword_18565F000, v265, OS_LOG_TYPE_ERROR, "CoreData: error: Server sending back historyToken %@\n", v654, 0xCu);
            }
          }

          else
          {
            v306 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
            {
              *v654 = 138412290;
              *&v654[4] = v263;
              _os_log_impl(&dword_18565F000, v306, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Server sending back historyToken %@\n", v654, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v307 = 1;
        }

        else
        {
          v307 = 8;
        }

        _NSCoreDataLog_console(v307, "Server sending back historyToken %@", v263);
        objc_autoreleasePoolPop(v264);
      }

      v308 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [v263 storeTokens]);
      if (+[NSXPCStoreServer debugDefault])
      {
        v309 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v310 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v310, OS_LOG_TYPE_ERROR))
            {
              *v654 = 138412290;
              *&v654[4] = v308;
              _os_log_error_impl(&dword_18565F000, v310, OS_LOG_TYPE_ERROR, "CoreData: error: Server historyToken archived to %@\n", v654, 0xCu);
            }
          }

          else
          {
            v311 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v311, OS_LOG_TYPE_DEFAULT))
            {
              *v654 = 138412290;
              *&v654[4] = v308;
              _os_log_impl(&dword_18565F000, v311, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Server historyToken archived to %@\n", v654, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v312 = 1;
        }

        else
        {
          v312 = 8;
        }

        _NSCoreDataLog_console(v312, "Server historyToken archived to %@", v308);
        objc_autoreleasePoolPop(v309);
      }

      objc_autoreleasePoolPop(context);
      v313 = 0;
      v314 = v308;
      goto LABEL_1032;
    case 0xFLL:
      if (+[NSXPCStoreServer debugDefault])
      {
        v14 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v15 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: Batch update\n", buf, 2u);
            }
          }

          else
          {
            v44 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v44, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Batch update\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v45 = 1;
        }

        else
        {
          v45 = 8;
        }

        _NSCoreDataLog_console(v45, "Batch update");
        objc_autoreleasePoolPop(v14);
      }

      v46 = *(v612 + 40);
      if (v46)
      {
        v47 = *(v46 + 24);
      }

      else
      {
        v47 = 0;
      }

      v48 = *(v612 + 64);
      if (!v48)
      {
        goto LABEL_1137;
      }

      v49 = *(v612 + 56);
      *&v657 = 0;
      v50 = objc_autoreleasePoolPush();
      v51 = [NSBatchUpdateRequest decodeFromXPCArchive:v47 withContext:v49 withPolicy:*(v48 + 64)];
      if (v51)
      {
        v52 = [*(v48 + 64) processRequest:v51 fromClientWithContext:v49 error:&v657];
        if (+[NSXPCStoreServer debugDefault])
        {
          v53 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v54 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v52;
                _os_log_error_impl(&dword_18565F000, v54, OS_LOG_TYPE_ERROR, "CoreData: error: Which had result %@\n", buf, 0xCu);
              }
            }

            else
            {
              v332 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v332, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v52;
                _os_log_impl(&dword_18565F000, v332, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which had result %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v333 = 1;
          }

          else
          {
            v333 = 8;
          }

          _NSCoreDataLog_console(v333, "Which had result %@", v52);
          objc_autoreleasePoolPop(v53);
        }

        if (v52)
        {
          v52 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [v52 result]);
        }
      }

      else
      {
        v55 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v56 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v56, OS_LOG_TYPE_ERROR, "CoreData: error: Nil batch update request\n", buf, 2u);
            }
          }

          else
          {
            v344 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v344, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v344, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil batch update request\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v345 = 1;
        }

        else
        {
          v345 = 8;
        }

        _NSCoreDataLog_console(v345, "Nil batch update request");
        objc_autoreleasePoolPop(v55);
        v346 = MEMORY[0x1E696ABC0];
        *v654 = *MEMORY[0x1E696A588];
        *buf = @"Unable to decode request, ensure policy allows for updated class values";
        v347 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v654 count:1];
        v348 = [v346 errorWithDomain:*MEMORY[0x1E696A250] code:134070 userInfo:v347];
        v52 = 0;
        *&v657 = v348;
      }

      v349 = v657;
      objc_autoreleasePoolPop(v50);
      if (v657)
      {
        v613 = v657;
      }

      goto LABEL_631;
    case 0x10:
      if (+[NSXPCStoreServer debugDefault])
      {
        v32 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v33 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v33, OS_LOG_TYPE_ERROR, "CoreData: error: Batch insert\n", buf, 2u);
            }
          }

          else
          {
            v168 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v168, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Batch insert\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v169 = 1;
        }

        else
        {
          v169 = 8;
        }

        _NSCoreDataLog_console(v169, "Batch insert");
        objc_autoreleasePoolPop(v32);
      }

      v170 = *(v612 + 40);
      if (v170)
      {
        v171 = *(v170 + 24);
      }

      else
      {
        v171 = 0;
      }

      v172 = *(v612 + 64);
      if (!v172)
      {
        goto LABEL_1137;
      }

      v173 = *(v612 + 56);
      *&v657 = 0;
      v174 = objc_autoreleasePoolPush();
      v175 = [NSBatchInsertRequest decodeFromXPCArchive:v171 withContext:v173 withPolicy:*(v172 + 64)];
      if (v175)
      {
        v52 = [*(v172 + 64) processRequest:v175 fromClientWithContext:v173 error:&v657];
        if (+[NSXPCStoreServer debugDefault])
        {
          v176 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v177 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v52;
                _os_log_error_impl(&dword_18565F000, v177, OS_LOG_TYPE_ERROR, "CoreData: error: Which had result %@\n", buf, 0xCu);
              }
            }

            else
            {
              v338 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v52;
                _os_log_impl(&dword_18565F000, v338, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which had result %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v339 = 1;
          }

          else
          {
            v339 = 8;
          }

          _NSCoreDataLog_console(v339, "Which had result %@", v52);
          objc_autoreleasePoolPop(v176);
        }

        if (v52)
        {
          v52 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [v52 result]);
        }
      }

      else
      {
        v178 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v179 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v179, OS_LOG_TYPE_ERROR, "CoreData: error: Nil batch insert request\n", buf, 2u);
            }
          }

          else
          {
            v356 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v356, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v356, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Nil batch insert request\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v357 = 1;
        }

        else
        {
          v357 = 8;
        }

        _NSCoreDataLog_console(v357, "Nil batch insert request");
        objc_autoreleasePoolPop(v178);
        v358 = MEMORY[0x1E696ABC0];
        *v654 = *MEMORY[0x1E696A588];
        *buf = @"Unable to decode request, ensure policy allows for inserted class values";
        v359 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v654 count:1];
        v360 = [v358 errorWithDomain:*MEMORY[0x1E696A250] code:134070 userInfo:v359];
        v52 = 0;
        *&v657 = v360;
      }

      v361 = v657;
      objc_autoreleasePoolPop(v174);
      if (v657)
      {
        v613 = v657;
      }

LABEL_631:
      v362 = v657;
      v314 = v52;
      goto LABEL_1032;
    case 0x11:
      if (+[NSXPCStoreServer debugDefault])
      {
        v34 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(8))
        {
          if (_pflogging_catastrophic_mode)
          {
            v35 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: error: Query generation active connections\n", buf, 2u);
            }
          }

          else
          {
            v180 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v180, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Query generation active connections\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v181 = 1;
        }

        else
        {
          v181 = 8;
        }

        _NSCoreDataLog_console(v181, "Query generation active connections");
        objc_autoreleasePoolPop(v34);
      }

      if (!*(v612 + 64))
      {
LABEL_488:
        v13 = 0;
        goto LABEL_1033;
      }

      v182 = *(v612 + 56);
      v9 = objc_autoreleasePoolPush();
      v183 = [objc_msgSend(objc_msgSend(v182 "persistentStoreCoordinator")];
      if (v183)
      {
        v184 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v183, "_hasActiveGenerations")}];
      }

      else
      {
        v185 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v186 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v186, OS_LOG_TYPE_ERROR, "CoreData: error: no store\n", buf, 2u);
            }
          }

          else
          {
            v363 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v363, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v363, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: no store\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v364 = 1;
        }

        else
        {
          v364 = 8;
        }

        _NSCoreDataLog_console(v364, "no store");
        objc_autoreleasePoolPop(v185);
        v184 = &unk_1EF435A58;
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v365 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v366 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v366, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v184;
              _os_log_error_impl(&dword_18565F000, v366, OS_LOG_TYPE_ERROR, "CoreData: error: Got active connections %@\n", buf, 0xCu);
            }
          }

          else
          {
            v367 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v367, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v184;
              _os_log_impl(&dword_18565F000, v367, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Got active connections %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v368 = 1;
        }

        else
        {
          v368 = 8;
        }

        _NSCoreDataLog_console(v368, "Got active connections %@", v184);
        objc_autoreleasePoolPop(v365);
      }

      v305 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v184];
      if (!+[NSXPCStoreServer debugDefault])
      {
        goto LABEL_1030;
      }

      v369 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v370 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v370, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v305;
            _os_log_error_impl(&dword_18565F000, v370, OS_LOG_TYPE_ERROR, "CoreData: error: Which archives to %@\n", buf, 0xCu);
          }
        }

        else
        {
          v371 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v371, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v305;
            _os_log_impl(&dword_18565F000, v371, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which archives to %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v372 = 1;
      }

      else
      {
        v372 = 8;
      }

LABEL_661:
      _NSCoreDataLog_console(v372, "Which archives to %@", v305);
      goto LABEL_1029;
    default:
      goto LABEL_1144;
  }
}

- (id)replacementObjectForXPCConnection:(id)a3 encoder:(id)a4 object:(id)a5
{
  v6 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [NSXPCStoreManagedObjectArchivingToken alloc];
    a5 = [a5 objectID];
LABEL_5:
    v8 = -[NSXPCStoreManagedObjectArchivingToken initWithURI:](v7, "initWithURI:", [a5 URIRepresentation]);
    objc_autoreleasePoolPop(v6);

    return v8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [NSXPCStoreManagedObjectArchivingToken alloc];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (+[NSQueryGenerationToken currentQueryGenerationToken]== a5)
    {
      a5 = @"current";
    }

    else if (+[NSQueryGenerationToken unpinnedQueryGenerationToken]== a5)
    {
      a5 = @"unpinned";
    }

    else
    {
      +[NSQueryGenerationToken nostoresQueryGenerationToken];
    }
  }

  objc_autoreleasePoolPop(v6);
  return a5;
}

- (NSQueryGenerationToken)retainedXPCEncodableGenerationTokenForOriginal:(NSQueryGenerationToken *)a1 inContext:(void *)a2
{
  v4 = objc_autoreleasePoolPush();
  if (+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken, "currentQueryGenerationToken") == a1 || +[NSQueryGenerationToken unpinnedQueryGenerationToken]== a1)
  {
    v9 = a1;
    goto LABEL_13;
  }

  if (+[NSQueryGenerationToken nostoresQueryGenerationToken]== a1)
  {
    v9 = 0;
    goto LABEL_13;
  }

  if (a1)
  {
    isa = a1[2].super.isa;
    if (isa)
    {
      WeakRetained = objc_loadWeakRetained(isa + 1);
    }

    else
    {
      WeakRetained = 0;
    }

    v7 = [_NSXPCQueryGenerationToken alloc];
    v8 = a1[3].super.isa;
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_9;
  }

  v7 = [_NSXPCQueryGenerationToken alloc];
  WeakRetained = 0;
  v8 = 0;
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_8:
  v9 = [(_NSQueryGenerationToken *)v7 initWithValue:v8 store:WeakRetained freeValueOnDealloc:0];
LABEL_9:

  v10 = [a2 cache];
  if (a1)
  {
    v11 = a1[3].super.isa;
  }

  else
  {
    v11 = 0;
  }

  [(NSXPCStoreServerPerConnectionCache *)v10 registerQueryGeneration:a1 forRemoteGeneration:v11];
LABEL_13:
  objc_autoreleasePoolPop(v4);
  return v9;
}

- (NSQueryGenerationToken)unpackQueryGeneration:(uint64_t)a1 withContext:(void *)a2
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if ([@"current" isEqual:a1])
  {
    v5 = +[NSQueryGenerationToken currentQueryGenerationToken];
  }

  else if ([@"unpinned" isEqual:a1])
  {
    v5 = +[NSQueryGenerationToken unpinnedQueryGenerationToken];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (a1)
    {
      v7 = *(a1 + 24);
    }

    else
    {
      v7 = 0;
    }

    v8 = -[NSXPCStoreServerPerConnectionCache localGenerationForRemoteGeneration:]([a2 cache], v7);
    if (!v8)
    {
      v9 = [a2 persistentStoreCoordinator];
      v10 = a1 ? *(a1 + 8) : 0;
      v8 = [(NSPersistentStoreCoordinator *)v9 _reopenQueryGenerationWithIdentifier:v7 inStoreWithIdentifier:v10 error:0];
      if (v8)
      {
        -[NSXPCStoreServerPerConnectionCache registerQueryGeneration:forRemoteGeneration:]([a2 cache], v8, v7);
        v8 = -[NSXPCStoreServerPerConnectionCache localGenerationForRemoteGeneration:]([a2 cache], v7);
      }
    }

    v11 = v8;
    objc_autoreleasePoolPop(v6);
    v5 = v8;
  }

  v12 = v5;
  if (v5)
  {
    v20 = 0;
    if (([objc_msgSend(a2 "managedObjectContext")] & 1) == 0 && +[NSXPCStoreServer debugDefault](NSXPCStoreServer, "debugDefault"))
    {
      v13 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v22 = a1;
            v23 = 2112;
            v24 = v12;
            v25 = 2112;
            v26 = v20;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to set query generation on context: %@ -> %@ (%@)\n", buf, 0x20u);
          }
        }

        else
        {
          v16 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v22 = a1;
            v23 = 2112;
            v24 = v12;
            v25 = 2112;
            v26 = v20;
            _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Failed to set query generation on context: %@ -> %@ (%@)\n", buf, 0x20u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v17 = 1;
      }

      else
      {
        v17 = 8;
      }

      _NSCoreDataLog_console(v17, "Failed to set query generation on context: %@ -> %@ (%@)", a1, v12, v20);
      objc_autoreleasePoolPop(v13);
      v12 = 0;
    }

    v18 = v12;
    objc_autoreleasePoolPop(v4);
    result = v12;
  }

  else
  {
    objc_autoreleasePoolPop(v4);
    result = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_populateObject:(void *)a1 withValuesFromClient:(void *)a2
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v5 = [a1 managedObjectContext];
  v6 = [a1 entity];
  [a1 _setVersionReference__:{objc_msgSend(objc_msgSend(a2, "objectAtIndex:", 1), "longLongValue")}];
  v61 = a2;
  v60 = [a2 objectAtIndex:2];
  v52 = v4;
  if (v6)
  {
    v7 = v6[14];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_msgSend(v6 "propertiesByName")];
  v9 = v7[6];
  v10 = v7[7];
  v58 = [MEMORY[0x1E695DFB0] null];
  v11 = v9 < v10 + v9;
  v54 = v8;
  if (v9 < v10 + v9)
  {
    v55 = v7;
    v12 = v8;
    v13 = 0;
    v14 = v10 + 3;
    v15 = 3;
    v16 = (v12 + 8 * v9);
    while (1)
    {
      v17 = [*v16 name];
      v18 = [v61 objectAtIndex:v15];
      if (v18 != v60)
      {
        v19 = v18;
        v20 = [a1 valueForKey:v17];
        if (v20 != v19 && ([v20 isEqual:v19] & 1) == 0)
        {
          break;
        }
      }

      if ((v13 & 1) == 0)
      {
        v21 = [a1 valueForKey:v17];
LABEL_14:
        [a1 setValue:v21 forKey:v17];
      }

      ++v15;
      ++v16;
      v13 = 1;
      if (!--v10)
      {
        v8 = v54;
        v7 = v55;
        goto LABEL_18;
      }
    }

    if (v58 == v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19;
    }

    goto LABEL_14;
  }

  v14 = 3;
LABEL_18:
  v22 = v7[12];
  v23 = v7[13];
  v53 = a1;
  if (v22 >= v23 + v22)
  {
    goto LABEL_32;
  }

  v56 = v23 + v14;
  v24 = (v8 + 8 * v22);
  do
  {
    v25 = [*v24 name];
    v26 = [v61 objectAtIndex:v14];
    if (v26 == v60 || (v27 = v26, v28 = [a1 valueForKey:v25], v28 == v27) || (objc_msgSend(v28, "isEqual:", v27) & 1) != 0)
    {
      if (v11)
      {
        goto LABEL_29;
      }

      v29 = [a1 valueForKey:v25];
    }

    else
    {
      if (v58 == v27)
      {
        v30 = 0;
        goto LABEL_28;
      }

      v29 = [v5 existingObjectWithID:v27 error:0];
    }

    v30 = v29;
LABEL_28:
    [a1 setValue:v30 forKey:v25];
LABEL_29:
    ++v14;
    ++v24;
    v11 = 1;
    --v23;
  }

  while (v23);
  v14 = v56;
LABEL_32:
  v32 = v7[14];
  v31 = v7[15];
  if (v32 < v31 + v32)
  {
    v57 = v31 + v14;
    do
    {
      v33 = objc_autoreleasePoolPush();
      v34 = [*(v8 + 8 * v32) name];
      v35 = [v61 objectAtIndex:v14];
      if (v60 == [v35 objectAtIndex:0])
      {
        if (!v11)
        {
          [v53 setValue:objc_msgSend(v53 forKey:{"valueForKey:", v34), v34}];
        }

        v11 = 1;
      }

      else
      {
        v36 = [v35 objectAtIndex:0];
        v37 = [v35 objectAtIndex:1];
        v59 = [v53 mutableSetValueForKey:v34];
        if ([v36 count])
        {
          v38 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v39 = [v36 countByEnumeratingWithState:&v66 objects:v71 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v67;
            do
            {
              v42 = 0;
              do
              {
                if (*v67 != v41)
                {
                  objc_enumerationMutation(v36);
                }

                v43 = [v5 existingObjectWithID:*(*(&v66 + 1) + 8 * v42) error:0];
                if (v43)
                {
                  [v38 addObject:v43];
                }

                ++v42;
              }

              while (v40 != v42);
              v40 = [v36 countByEnumeratingWithState:&v66 objects:v71 count:16];
            }

            while (v40);
          }

          [v59 unionSet:v38];

          v11 = 1;
          v8 = v54;
        }

        if ([v37 count])
        {
          v44 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v45 = [v37 countByEnumeratingWithState:&v62 objects:v70 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v63;
            do
            {
              v48 = 0;
              do
              {
                if (*v63 != v47)
                {
                  objc_enumerationMutation(v37);
                }

                v49 = [v5 existingObjectWithID:*(*(&v62 + 1) + 8 * v48) error:0];
                if (v49)
                {
                  [v44 addObject:v49];
                }

                ++v48;
              }

              while (v46 != v48);
              v46 = [v37 countByEnumeratingWithState:&v62 objects:v70 count:16];
            }

            while (v46);
          }

          [v59 minusSet:v44];

          v11 = 1;
          v8 = v54;
        }
      }

      ++v14;
      objc_autoreleasePoolPop(v33);
      ++v32;
    }

    while (v14 != v57);
  }

  result = [v52 drain];
  v51 = *MEMORY[0x1E69E9840];
  return result;
}

@end