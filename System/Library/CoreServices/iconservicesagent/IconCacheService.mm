@interface IconCacheService
- (BOOL)_isRequestValidForToken:(id *)a3 clientPID:(int)a4 icon:(id)a5;
- (BOOL)_skipCacheForIcon:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (IconCacheService)initWithServiceName:(id)a3;
- (id)generateStoreUnitWithRequest:(id)a3 validationToken:(id *)a4;
- (void)clearAllCachedItemsWithReply:(id)a3;
- (void)clearCache;
- (void)clearCachedItemsForBundeID:(id)a3 reply:(id)a4;
- (void)fetchCacheConfigurationWithReply:(id)a3;
- (void)generateImageWithRequest:(id)a3 reply:(id)a4;
- (void)scheduleCacheOperation:(unint64_t)a3;
- (void)start;
@end

@implementation IconCacheService

- (void)start
{
  obj = self;
  objc_sync_enter(obj);
  cleanupQueue = obj->_cleanupQueue;
  CUISetThemeCleanupQueue();
  if (!obj->_listener)
  {
    v3 = [(IconCacheService *)obj serviceName];

    if (v3)
    {
      v4 = [NSXPCListener alloc];
      v5 = [(IconCacheService *)obj serviceName];
      v6 = [v4 initWithMachServiceName:v5];
      listener = obj->_listener;
      obj->_listener = v6;
    }

    else
    {
      v8 = +[NSXPCListener anonymousListener];
      v5 = obj->_listener;
      obj->_listener = v8;
    }

    [(NSXPCListener *)obj->_listener setDelegate:?];
    [(NSXPCListener *)obj->_listener resume];
  }

  objc_sync_exit(obj);
}

- (IconCacheService)initWithServiceName:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = IconCacheService;
  v5 = [(IconCacheService *)&v32 init];
  if (v5)
  {
    v6 = [v4 copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v6;

    v8 = dispatch_workloop_create("iconservicesagent workloop");
    workLoop = v5->_workLoop;
    v5->_workLoop = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.iconservices.cleanup", v10);
    cleanupQueue = v5->_cleanupQueue;
    v5->_cleanupQueue = v11;

    v13 = [[ISGPUIdleTimer alloc] initWithQueue:v5->_cleanupQueue];
    gpuIdleTimer = v5->_gpuIdleTimer;
    v5->_gpuIdleTimer = v13;

    v15 = +[ISDefaults sharedInstance];
    v16 = [v15 cacheURL];

    v17 = +[ISDefaults sharedInstance];
    v18 = [v17 metalCacheURL];

    v19 = [v18 absoluteURL];
    v20 = [v19 path];
    MTLSetShaderCachePath();

    objc_initWeak(&location, v5);
    v21 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    dispatch_source_set_timer(v21, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000031E0;
    handler[3] = &unk_10000C500;
    objc_copyWeak(&v30, &location);
    dispatch_source_set_event_handler(v21, handler);
    objc_storeStrong(&v5->_clearTimer, v21);
    dispatch_resume(v21);
    clearOperation = v5->_clearOperation;
    v5->_clearOperation = 0;

    v5->_clearOperationLock._os_unfair_lock_opaque = 0;
    v28 = 0;
    v23 = [[ISMutableIconCache alloc] initWithURL:v16 needsGarbageCollection:&v28];
    iconCache = v5->_iconCache;
    v5->_iconCache = v23;

    if (v28 == 1)
    {
      v25 = _ISDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Scheduling garbage collection action", v27, 2u);
      }

      [(IconCacheService *)v5 scheduleCacheOperation:1];
    }

    objc_destroyWeak(&v30);

    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)scheduleCacheOperation:(unint64_t)a3
{
  v4 = [[ClearCacheOperation alloc] initWithCache:self->_iconCache operationType:a3];
  v5 = _ISDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Scheduling: %@ ", &v8, 0xCu);
  }

  os_unfair_lock_lock(&self->_clearOperationLock);
  clearOperation = self->_clearOperation;
  self->_clearOperation = v4;
  v7 = v4;

  os_unfair_lock_unlock(&self->_clearOperationLock);
  dispatch_source_set_timer(self->_clearTimer, 0x3B9ACA00uLL, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
}

- (void)clearCache
{
  os_unfair_lock_lock(&self->_clearOperationLock);
  v3 = self->_clearOperation;
  clearOperation = self->_clearOperation;
  self->_clearOperation = 0;

  os_unfair_lock_unlock(&self->_clearOperationLock);
  if (v3)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000058C4();
    }

    [(ClearCacheOperation *)v3 run];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = _ISDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100005934();
  }

  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ISIconCacheServiceProtocol];
  [v5 setExportedInterface:v7];
  [v5 setExportedObject:self];
  [v5 setInterruptionHandler:&stru_10000C540];
  [v5 setInvalidationHandler:&stru_10000C560];
  [v5 resume];

  return 1;
}

- (void)fetchCacheConfigurationWithReply:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [v5 processIdentifier];

  v20 = 0u;
  v21 = 0u;
  v7 = +[NSXPCConnection currentConnection];
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  *buf = v20;
  v25 = v21;
  if (![(IconCacheService *)self _isRequestValidForToken:buf clientPID:v6 icon:0])
  {
    v9 = _ISDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Rejecting cache configuration request from %d. Disallowed!", buf, 8u);
    }

    v4[2](v4, 0);
  }

  v10 = [(IconCacheService *)self iconCache:v20];
  v11 = [v10 cacheURL];
  v12 = [v11 path];

  v13 = [v12 UTF8String];
  if (!realpath_DARWIN_EXTSN(v13, buf))
  {
    v14 = _ISDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v22 = 136315138;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Failed to get the real path for: %s", v22, 0xCu);
    }
  }

  v15 = sandbox_extension_issue_file();
  if (v15)
  {
    v16 = v15;
    v17 = [NSString stringWithUTF8String:v15];
    free(v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_alloc_init(ISIconCacheConfiguration);
  v19 = [NSURL fileURLWithPath:v12];
  [v18 setUrl:v19];

  [v18 setSandboxExtension:v17];
  (v4)[2](v4, v18);
}

- (BOOL)_isRequestValidForToken:(id *)a3 clientPID:(int)a4 icon:(id)a5
{
  v7 = a5;
  v8 = +[LSApplicationWorkspace defaultWorkspace];
  v9 = *&a3->var0[4];
  *buf = *a3->var0;
  *&buf[16] = v9;
  v10 = [v8 mayProcessWithAuditTokenMapDatabase:buf];

  if ((v10 & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (v12 = objc_opt_class(), NSStringFromClass(v12), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v15 = 0;
      goto LABEL_9;
    }

    v14 = v13;
    if ([v13 compare:@"ISBundleIdentifierIcon"])
    {
      v15 = v14;
LABEL_9:
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        v16 = objc_opt_class();
        v14 = NSStringFromClass(v16);

        if (v14 && ![v14 compare:@"ISTypeIcon"])
        {
          v17 = +[UTTypeRecord typeRecordWithIdentifier:](UTTypeRecord, "typeRecordWithIdentifier:", [v7 performSelector:"type"]);
          if ((-[NSObject isCoreType](v17, "isCoreType") & 1) != 0 || (-[NSObject declaringBundleRecord](v17, "declaringBundleRecord"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 developerType], v18, v19 == 1))
          {
            v20 = _ISDefaultLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              sub_100005A8C();
            }

            LOBYTE(v11) = 1;
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v14 = v15;
      }

      v17 = _ISDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Client is not properly entitled or asking for an non-allowable icon", buf, 2u);
      }

LABEL_21:
      LOBYTE(v11) = 0;
LABEL_22:

      goto LABEL_23;
    }

    v17 = [v7 bundleIdentifier];
    v31 = 0;
    v22 = *&a3->var0[4];
    *buf = *a3->var0;
    *&buf[16] = v22;
    v23 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v31];
    v24 = v31;
    if (!v23)
    {
      v27 = _ISDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = a4;
        *&buf[8] = 2112;
        *&buf[10] = v24;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Failed to get record from token for client %d. Error: %@", buf, 0x12u);
      }

      LOBYTE(v11) = 0;
      goto LABEL_41;
    }

    v25 = [v23 bundleIdentifier];
    v26 = [v25 isEqual:v17];

    if (v26)
    {
      v27 = _ISDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_100005A18();
      }

      LOBYTE(v11) = 1;
      goto LABEL_41;
    }

    v30 = 0;
    v28 = [LSBundleRecord bundleRecordWithBundleIdentifier:v17 allowPlaceholder:1 error:&v30];
    v27 = v30;
    v11 = v28 != 0;
    if (v28)
    {
      if ([v28 developerType] != 1)
      {
        LOBYTE(v11) = 0;
        goto LABEL_40;
      }

      v29 = _ISDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        sub_1000059A4();
      }
    }

    else
    {
      v29 = _ISDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v27;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Failed to get record for %@. Error: %@", buf, 0x16u);
      }
    }

LABEL_40:
LABEL_41:

    goto LABEL_22;
  }

  LOBYTE(v11) = 1;
LABEL_23:

  return v11;
}

- (void)generateImageWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_transaction_create();
  v9 = +[NSXPCConnection currentConnection];
  v10 = [v9 processIdentifier];

  v30 = 0u;
  v29 = 0u;
  v11 = +[NSXPCConnection currentConnection];
  v12 = v11;
  if (v11)
  {
    [v11 auditToken];
  }

  else
  {
    v30 = 0u;
    v29 = 0u;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003FB0;
  block[3] = &unk_10000C588;
  v26 = v10;
  v22 = v6;
  v23 = self;
  v27 = v29;
  v28 = v30;
  v24 = v8;
  v25 = v7;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v17 = [(IconCacheService *)self workLoop];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100004588;
  v19[3] = &unk_10000C5B0;
  v19[4] = self;
  v20 = v16;
  v18 = v16;
  [NSXPCConnection _handoffCurrentReplyToQueue:v17 block:v19];
}

- (void)clearCachedItemsForBundeID:(id)a3 reply:(id)a4
{
  v7 = a4;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(IconCacheService *)self scheduleCacheOperation:v6];
  v7[2](v7, 1, 0);
}

- (void)clearAllCachedItemsWithReply:(id)a3
{
  v4 = a3;
  [(IconCacheService *)self scheduleCacheOperation:2];
  v4[2](v4, 1, 0);
}

- (BOOL)_skipCacheForIcon:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (v4 = objc_opt_class(), NSStringFromClass(v4), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 compare:@"ISLayeredIcon"] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)generateStoreUnitWithRequest:(id)a3 validationToken:(id *)a4
{
  v6 = a3;
  v7 = [v6 icon];
  v8 = [v6 imageDescriptor];
  v9 = [v8 digest];
  v40 = 0;
  v10 = [v6 generateImageReturningRecordIdentifiers:&v40];

  v11 = v40;
  v12 = [v10 bitmapData];
  v13 = [v7 digest];
  v14 = [v10 validationToken];
  v39 = a4;
  *a4 = v14;
  v15 = [v14 bytes];
  v16 = _ISDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    if (v15)
    {
      sub_100005CEC(v15, buf, v7, v16);
    }

    else
    {
      sub_100005D94(buf, v7, v16);
    }
  }

  if ([(IconCacheService *)self _skipCacheForIcon:v7])
  {
    v17 = [ISStoreUnit storeUnitWithData:v12];
  }

  else
  {
    v18 = [(IconCacheService *)self iconCache];
    [v18 store];
    v37 = v8;
    v19 = v13;
    v20 = v11;
    v22 = v21 = v9;
    v17 = [v22 addUnitWithData:v12];

    v9 = v21;
    v11 = v20;
    v13 = v19;
    v8 = v37;
  }

  if ([v17 isValid] && !-[IconCacheService _skipCacheForIcon:](self, "_skipCacheForIcon:", v7))
  {
    [v8 scale];
    v24 = v23;
    [v10 iconSize];
    v26 = v25;
    [v10 minimumSize];
    v28 = v27;
    [v10 iconSize];
    v30 = v29;
    v31 = [v10 largest];
    v58 = 0;
    if (v31)
    {
      v30 = 1.79769313e308;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    *buf = 0u;
    *&v53 = v26;
    *(&v53 + 1) = v24;
    [v9 getUUIDBytes:{&v53 + 12, v13}];
    *&v52 = v28;
    *(&v52 + 1) = v30;
    [v38 getUUIDBytes:buf];
    v32 = [v17 UUID];
    [v32 getUUIDBytes:&v54 + 12];

    [*v39 getBytes:&v55 + 12 length:40];
    v33 = [(IconCacheService *)self iconCache];
    [v33 registerRecordIdentifiers:v11 asSourceForUnit:v17];

    v34 = [(IconCacheService *)self iconCache];
    v35 = [v34 mutableStoreIndex];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100004B38;
    v41[3] = &unk_10000C600;
    v41[4] = self;
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v43 = *buf;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v42 = v38;
    [v35 performBlock:v41];

    v13 = v38;
  }

  return v17;
}

@end