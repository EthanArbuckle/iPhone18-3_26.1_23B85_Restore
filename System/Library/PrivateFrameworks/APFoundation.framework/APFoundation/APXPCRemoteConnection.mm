@interface APXPCRemoteConnection
+ (id)connectionFor:(id)for;
+ (id)connectionForMachService:(id)service;
+ (id)sharedConnectionFor:(id)for;
+ (id)sharedConnections;
+ (void)addSharedConnection:(id)connection forMachService:(id)service;
+ (void)removeSharedConnectionForMachService:(id)service;
- (APXPCRemoteConnection)initWithDelegate:(id)delegate;
- (NSXPCConnection)xpcConnection;
- (void)addDelegate:(id)delegate;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)decreaseConnectionCount;
- (void)increaseConnectionCount;
- (void)invalidateForDelegate:(id)delegate;
- (void)removeDelegate:(id)delegate;
@end

@implementation APXPCRemoteConnection

- (NSXPCConnection)xpcConnection
{
  v111 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_unfairLock(self, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);
  if (self->_xpcConnection)
  {
LABEL_19:
    objc_msgSend_unlock(v5, v9, v10, v11);
    v93 = self->_xpcConnection;
    goto LABEL_20;
  }

  v12 = APLogForCategory(0x39uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v108 = objc_opt_class();
    v109 = 2114;
    selfCopy = self;
    v13 = v108;
    _os_log_impl(&dword_1BADC1000, v12, OS_LOG_TYPE_INFO, "[%{private}@] Creating a new NSXPCConnection for %{public}@", buf, 0x16u);
  }

  v17 = objc_msgSend_delegates(self, v14, v15, v16);
  v21 = objc_msgSend_firstObject(v17, v18, v19, v20);

  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x1E696B0B8]);
    v23 = objc_opt_class();
    v27 = objc_msgSend_machService(v23, v24, v25, v26);
    v29 = objc_msgSend_initWithMachServiceName_options_(v22, v28, v27, 4096);
    xpcConnection = self->_xpcConnection;
    self->_xpcConnection = v29;

    v31 = MEMORY[0x1E696B0D0];
    v35 = objc_msgSend_remoteObjectInterface(v21, v32, v33, v34);
    v38 = objc_msgSend_interfaceWithProtocol_(v31, v36, v35, v37);

    if (objc_opt_respondsToSelector())
    {
      v41 = APLogForCategory(0x39uLL);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = objc_opt_class();
        *buf = 138477827;
        v108 = v42;
        v43 = v42;
        _os_log_impl(&dword_1BADC1000, v41, OS_LOG_TYPE_INFO, "[%{private}@] Extending remote selectors to allow collection classes to pass data.", buf, 0xCu);
      }

      objc_msgSend_extendCollectionClassesForRemoteInterface_(v21, v44, v38, v45);
    }

    objc_msgSend_setRemoteObjectInterface_(self->_xpcConnection, v39, v38, v40);
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v52 = objc_msgSend_exportedInterface(v21, v46, v47, v48);
      if (v52)
      {
        v53 = objc_msgSend_exportedObject(v21, v49, v50, v51);
        v54 = v53 == 0;

        if (!v54)
        {
          v58 = MEMORY[0x1E696B0D0];
          v59 = objc_msgSend_exportedInterface(v21, v55, v56, v57);
          v62 = objc_msgSend_interfaceWithProtocol_(v58, v60, v59, v61);
          objc_msgSend_setExportedInterface_(self->_xpcConnection, v63, v62, v64);

          v65 = MEMORY[0x1E696B0D0];
          v69 = objc_msgSend_exportedInterface(v21, v66, v67, v68);
          v72 = objc_msgSend_interfaceWithProtocol_(v65, v70, v69, v71);

          if (objc_opt_respondsToSelector())
          {
            v75 = APLogForCategory(0x39uLL);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
            {
              v76 = objc_opt_class();
              *buf = 138477827;
              v108 = v76;
              v77 = v76;
              _os_log_impl(&dword_1BADC1000, v75, OS_LOG_TYPE_INFO, "[%{private}@] Extending exported selectors to allow collection classes to pass data.", buf, 0xCu);
            }

            objc_msgSend_extendCollectionClassesForExportedInterface_(v21, v78, v72, v79);
          }

          objc_msgSend_setExportedInterface_(self->_xpcConnection, v73, v72, v74);
          v83 = objc_msgSend_exportedObject(v21, v80, v81, v82);
          objc_msgSend_setExportedObject_(self->_xpcConnection, v84, v83, v85);
        }
      }
    }

    objc_initWeak(buf, self);
    v105[0] = MEMORY[0x1E69E9820];
    v105[1] = 3221225472;
    v105[2] = sub_1BAF1E49C;
    v105[3] = &unk_1E7F1CF68;
    objc_copyWeak(&v106, buf);
    objc_msgSend_setInterruptionHandler_(self->_xpcConnection, v86, v105, v87);
    v100 = MEMORY[0x1E69E9820];
    v101 = 3221225472;
    v102 = sub_1BADC57F4;
    v103 = &unk_1E7F1CF68;
    objc_copyWeak(&v104, buf);
    objc_msgSend_setInvalidationHandler_(self->_xpcConnection, v88, &v100, v89);
    objc_msgSend_resume(self->_xpcConnection, v90, v91, v92, v100, v101, v102, v103);
    objc_destroyWeak(&v104);
    objc_destroyWeak(&v106);
    objc_destroyWeak(buf);

    goto LABEL_19;
  }

  v96 = APLogForCategory(0x39uLL);
  if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1BADC1000, v96, OS_LOG_TYPE_ERROR, "There are no known delegates. Returning a nil xpc connection as no one can handle the messages.", buf, 2u);
  }

  objc_msgSend_unlock(v5, v97, v98, v99);
  v93 = 0;
LABEL_20:

  v94 = *MEMORY[0x1E69E9840];

  return v93;
}

- (void)increaseConnectionCount
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_numClients;
  objc_sync_exit(obj);
}

+ (id)sharedConnections
{
  if (qword_1EDBA4BE8 != -1)
  {
    sub_1BADC4028();
  }

  v3 = qword_1EDBA4BF8;

  return v3;
}

- (void)connectionInvalidated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_msgSend_delegates(selfCopy, v3, v4, v5);
  v10 = objc_msgSend_copy(v6, v7, v8, v9);

  objc_sync_exit(selfCopy);
  queue = selfCopy->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1BADC5534;
  block[3] = &unk_1E7F1CE98;
  v14 = v10;
  v12 = v10;
  dispatch_async(queue, block);
}

- (void)decreaseConnectionCount
{
  obj = self;
  objc_sync_enter(obj);
  --obj->_numClients;
  objc_sync_exit(obj);
}

- (void)dealloc
{
  v3 = objc_opt_class();
  objc_msgSend_removeSharedConnectionForMachService_(v3, v4, self->_machService, v5);
  v6.receiver = self;
  v6.super_class = APXPCRemoteConnection;
  [(APXPCRemoteConnection *)&v6 dealloc];
}

+ (id)connectionFor:(id)for
{
  v13 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v4 = APLogForCategory(0x39uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = forCopy;
    _os_log_impl(&dword_1BADC1000, v4, OS_LOG_TYPE_INFO, "A new connection will be established for %{public}@", &v11, 0xCu);
  }

  v5 = [APXPCRemoteConnection alloc];
  v8 = objc_msgSend_initWithDelegate_(v5, v6, forCopy, v7);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)sharedConnectionFor:(id)for
{
  v27 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v4 = APLogForCategory(0x39uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v25 = 138543362;
    v26 = forCopy;
    _os_log_impl(&dword_1BADC1000, v4, OS_LOG_TYPE_INFO, "The shared connection will be used for %{public}@", &v25, 0xCu);
  }

  v5 = objc_opt_class();
  v9 = objc_msgSend_machService(v5, v6, v7, v8);
  v10 = objc_opt_class();
  v13 = objc_msgSend_connectionForMachService_(v10, v11, v9, v12);
  if (v13)
  {
    v16 = v13;
    objc_msgSend_addDelegate_(v13, v14, forCopy, v15);
  }

  else
  {
    v17 = [APXPCRemoteConnection alloc];
    v16 = objc_msgSend_initWithDelegate_(v17, v18, forCopy, v19);
    v20 = objc_opt_class();
    objc_msgSend_addSharedConnection_forMachService_(v20, v21, v16, v9);
  }

  v22 = v16;

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (void)addSharedConnection:(id)connection forMachService:(id)service
{
  connectionCopy = connection;
  serviceCopy = service;
  v6 = objc_opt_class();
  v10 = objc_msgSend_sharedConnections(v6, v7, v8, v9);
  objc_sync_enter(v10);
  v11 = objc_opt_class();
  v15 = objc_msgSend_sharedConnections(v11, v12, v13, v14);
  objc_msgSend_setObject_forKey_(v15, v16, connectionCopy, serviceCopy);

  objc_sync_exit(v10);
}

+ (id)connectionForMachService:(id)service
{
  serviceCopy = service;
  v4 = objc_opt_class();
  v8 = objc_msgSend_sharedConnections(v4, v5, v6, v7);
  objc_sync_enter(v8);
  v9 = objc_opt_class();
  v13 = objc_msgSend_sharedConnections(v9, v10, v11, v12);
  v16 = objc_msgSend_objectForKey_(v13, v14, serviceCopy, v15);

  objc_sync_exit(v8);

  return v16;
}

+ (void)removeSharedConnectionForMachService:(id)service
{
  serviceCopy = service;
  v3 = objc_opt_class();
  v7 = objc_msgSend_sharedConnections(v3, v4, v5, v6);
  objc_sync_enter(v7);
  v8 = objc_opt_class();
  v12 = objc_msgSend_sharedConnections(v8, v9, v10, v11);
  objc_msgSend_removeObjectForKey_(v12, v13, serviceCopy, v14);

  objc_sync_exit(v7);
}

- (void)invalidateForDelegate:(id)delegate
{
  v35 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v5 = APLogForCategory(0x39uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v31 = 138543362;
    v32 = delegateCopy;
    _os_log_impl(&dword_1BADC1000, v5, OS_LOG_TYPE_INFO, "Request to invalidate the connection from %{public}@", &v31, 0xCu);
  }

  objc_msgSend_removeDelegate_(self, v6, delegateCopy, v7);
  if (!self->_numClients)
  {
    v8 = APLogForCategory(0x39uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v14 = objc_msgSend_machService(self, v11, v12, v13);
      v31 = 138478083;
      v32 = v10;
      v33 = 2114;
      v34 = v14;
      _os_log_impl(&dword_1BADC1000, v8, OS_LOG_TYPE_INFO, "[%{private}@] No more clients exist for the xpc connection to %{public}@. Invalidating the connection.", &v31, 0x16u);
    }

    v18 = objc_msgSend_unfairLock(self, v15, v16, v17);
    objc_msgSend_lock(v18, v19, v20, v21);
    objc_msgSend_invalidate(self->_xpcConnection, v22, v23, v24);
    objc_msgSend_setXpcConnection_(self, v25, 0, v26);
    objc_msgSend_unlock(v18, v27, v28, v29);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (APXPCRemoteConnection)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v29.receiver = self;
  v29.super_class = APXPCRemoteConnection;
  v5 = [(APXPCRemoteConnection *)&v29 init];
  v6 = v5;
  if (v5)
  {
    v5->_numClients = 0;
    v7 = objc_opt_class();
    v11 = objc_msgSend_machService(v7, v8, v9, v10);
    machService = v6->_machService;
    v6->_machService = v11;

    v16 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15);
    delegates = v6->_delegates;
    v6->_delegates = v16;

    v18 = [APUnfairLock alloc];
    v21 = objc_msgSend_initWithOptions_(v18, v19, 0, v20);
    unfairLock = v6->_unfairLock;
    v6->_unfairLock = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.ap.promotedcontentd.remoteconnection.queue", v23);
    queue = v6->_queue;
    v6->_queue = v24;

    objc_msgSend_addDelegate_(v6, v26, delegateCopy, v27);
  }

  return v6;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_addObject_(selfCopy->_delegates, v5, delegateCopy, v6);
  objc_msgSend_increaseConnectionCount(selfCopy, v7, v8, v9);
  objc_sync_exit(selfCopy);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_removeObject_(selfCopy->_delegates, v5, delegateCopy, v6);
  objc_msgSend_decreaseConnectionCount(selfCopy, v7, v8, v9);
  objc_sync_exit(selfCopy);
}

- (void)connectionInterrupted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_msgSend_delegates(selfCopy, v3, v4, v5);
  v10 = objc_msgSend_copy(v6, v7, v8, v9);

  objc_sync_exit(selfCopy);
  queue = selfCopy->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1BAF1E95C;
  block[3] = &unk_1E7F1CE98;
  v14 = v10;
  v12 = v10;
  dispatch_async(queue, block);
}

@end