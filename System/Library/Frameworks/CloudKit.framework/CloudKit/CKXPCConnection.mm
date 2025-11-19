@interface CKXPCConnection
+ (CKXPCConnection)sharedXPCConnection;
+ (NSXPCInterface)CKXPCClientToDaemonMuxerInterface;
+ (NSXPCInterface)CKXPCDaemonToClientMuxerInterface;
- (CKXPCConnection)initWithProcessInfo:(id)a3;
- (NSXPCConnection)connection;
- (int)processIdentifier;
- (void)dealloc;
- (void)getAdopterProcessScopedDaemonProxyCreatorSynchronous:(BOOL)a3 completionHandler:(id)a4;
- (void)getContainerScopedDaemonProxyCreatorForContainerSetupInfo:(id)a3 exportedProxy:(id)a4 synchronous:(BOOL)a5 completionHandler:(id)a6;
- (void)getDaemonTestServerManagerProxyCreatorSynchronous:(BOOL)a3 completionHandler:(id)a4;
- (void)getLogicalDeviceScopedClientProxyCreatorForTestDeviceReferenceProtocol:(id)a3 completionHandler:(id)a4;
- (void)getLogicalDeviceScopedDaemonProxyCreatorForTestDeviceReferenceProtocol:(id)a3 synchronous:(BOOL)a4 completionHandler:(id)a5;
- (void)getProcessScopedClientProxyCreatorWithCompletionHandler:(id)a3;
- (void)getProcessScopedDaemonProxyCreatorSynchronous:(BOOL)a3 completionHandler:(id)a4;
- (void)getSessionAcquisitionDaemonProxyCreatorForSessionAcquisitionSetupInfo:(id)a3 exportedProxy:(id)a4 synchronous:(BOOL)a5 completionHandler:(id)a6;
- (void)invalidate:(id)a3;
@end

@implementation CKXPCConnection

+ (CKXPCConnection)sharedXPCConnection
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_188421F6C;
  v4[3] = &unk_1E70BE980;
  v4[4] = a2;
  v4[5] = a1;
  if (qword_1ED4B6268 != -1)
  {
    dispatch_once(&qword_1ED4B6268, v4);
  }

  v2 = qword_1ED4B6270;

  return v2;
}

- (NSXPCConnection)connection
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_connection;
  v4 = v3;
  if (v2->_hasValidConnection && v3)
  {
    v5 = v3;
  }

  else
  {
    if (qword_1ED4B65C8 != -1)
    {
      dispatch_once(&qword_1ED4B65C8, &unk_1EFA2F448);
    }

    v6 = @"com.apple.cloudd";
    if (objc_msgSend_testingEnabled(v2->_processInfo, v7, v8))
    {
      v11 = @"com.apple.cloudkit.partlycloudd";

      v6 = v11;
    }

    if (objc_msgSend_useDebugServices(v2->_processInfo, v9, v10))
    {
      v13 = objc_msgSend_stringByAppendingString_(v6, v12, @".debug");

      v6 = v13;
    }

    v14 = objc_alloc(MEMORY[0x1E696B0B8]);
    v5 = objc_msgSend_initWithMachServiceName_options_(v14, v15, v6, 0);

    objc_initWeak(&location, v2);
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v51[3] = v5;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = sub_1885AF9DC;
    v49[3] = &unk_1E70BEA20;
    objc_copyWeak(&v50, &location);
    v49[4] = v51;
    objc_msgSend_setInterruptionHandler_(v5, v16, v49);
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = sub_1885AFB58;
    v45 = &unk_1E70BEA48;
    objc_copyWeak(&v48, &location);
    v46 = v2;
    v47 = v51;
    objc_msgSend_setInvalidationHandler_(v5, v17, &v42);
    v20 = objc_msgSend_CKXPCClientToDaemonMuxerInterface(CKXPCConnection, v18, v19, v42, v43, v44, v45);
    objc_msgSend_setRemoteObjectInterface_(v5, v21, v20);

    v24 = objc_msgSend_CKXPCDaemonToClientMuxerInterface(CKXPCConnection, v22, v23);
    objc_msgSend_setExportedInterface_(v5, v25, v24);

    objc_msgSend_setExportedObject_(v5, v26, v2);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v27 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v54 = v5;
      _os_log_impl(&dword_1883EA000, v27, OS_LOG_TYPE_INFO, "Created a new connection: %@", buf, 0xCu);
    }

    objc_msgSend_invalidate(v2->_connection, v28, v29);
    objc_storeStrong(&v2->_connection, v5);
    v2->_hasValidConnection = v5 != 0;
    objc_msgSend_resume(v5, v30, v31);
    v34 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v32, v33);
    v35 = sub_188423430(v34);

    v38 = objc_msgSend_remoteObjectProxy(v5, v36, v37);
    objc_msgSend_noteClientProcessScopedMetadata_(v38, v39, v35);

    objc_destroyWeak(&v48);
    objc_destroyWeak(&v50);
    _Block_object_dispose(v51, 8);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v2);

  v40 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (NSXPCInterface)CKXPCClientToDaemonMuxerInterface
{
  if (qword_1ED4B6280 != -1)
  {
    dispatch_once(&qword_1ED4B6280, &unk_1EFA2F468);
  }

  v3 = qword_1ED4B6278;

  return v3;
}

+ (NSXPCInterface)CKXPCDaemonToClientMuxerInterface
{
  if (qword_1ED4B6290 != -1)
  {
    dispatch_once(&qword_1ED4B6290, &unk_1EFA2F488);
  }

  v3 = qword_1ED4B6288;

  return v3;
}

- (CKXPCConnection)initWithProcessInfo:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = CKXPCConnection;
  v6 = [(CKXPCConnection *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processInfo, a3);
    v8 = [CKProcessScopedDaemonProxy alloc];
    v10 = objc_msgSend_initWithConnection_(v8, v9, v7);
    processScopedDaemonProxy = v7->_processScopedDaemonProxy;
    v7->_processScopedDaemonProxy = v10;

    v12 = [CKAdopterProcessScopedDaemonProxy alloc];
    v14 = objc_msgSend_initWithConnection_(v12, v13, v7);
    adopterProcessScopedDaemonProxy = v7->_adopterProcessScopedDaemonProxy;
    v7->_adopterProcessScopedDaemonProxy = v14;
  }

  return v7;
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (v2)
  {
    invalidationCompletionHandlers = v2->_invalidationCompletionHandlers;
  }

  else
  {
    invalidationCompletionHandlers = 0;
  }

  v4 = invalidationCompletionHandlers;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v12 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v9, &v12, v16, 16);
    }

    while (v6);
  }

  objc_sync_exit(v2);
  v11.receiver = v2;
  v11.super_class = CKXPCConnection;
  [(CKXPCConnection *)&v11 dealloc];
  v10 = *MEMORY[0x1E69E9840];
}

- (int)processIdentifier
{
  v2 = sub_1885AEF1C(self, 0);
  v5 = objc_msgSend_processIdentifier(v2, v3, v4);

  return v5;
}

- (void)getProcessScopedDaemonProxyCreatorSynchronous:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1885AF0BC;
  aBlock[3] = &unk_1E70BC540;
  v7 = v6;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  v9 = sub_1885AF0D4(self, v4, v8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1885AF238;
  v12[3] = &unk_1E70BE908;
  v13 = v7;
  v10 = v7;
  objc_msgSend_getProcessScopedDaemonProxyCreatorWithCompletionHandler_(v9, v11, v12);
}

- (void)getAdopterProcessScopedDaemonProxyCreatorSynchronous:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1885AF370;
  aBlock[3] = &unk_1E70BC540;
  v7 = v6;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  v9 = sub_1885AF0D4(self, v4, v8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1885AF388;
  v12[3] = &unk_1E70BE9A8;
  v13 = v7;
  v10 = v7;
  objc_msgSend_getAdopterProcessScopedDaemonProxyCreatorWithCompletionHandler_(v9, v11, v12);
}

- (void)getLogicalDeviceScopedDaemonProxyCreatorForTestDeviceReferenceProtocol:(id)a3 synchronous:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1885AF4DC;
  aBlock[3] = &unk_1E70BC540;
  v9 = v8;
  v18 = v9;
  v10 = a3;
  v11 = _Block_copy(aBlock);
  v12 = sub_1885AF0D4(self, v5, v11);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1885AF4F4;
  v15[3] = &unk_1E70BE9D0;
  v16 = v9;
  v13 = v9;
  objc_msgSend_getLogicalDeviceScopedDaemonProxyCreatorForTestDeviceReferenceProtocol_completionHandler_(v12, v14, v10, v15);
}

- (void)getContainerScopedDaemonProxyCreatorForContainerSetupInfo:(id)a3 exportedProxy:(id)a4 synchronous:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1885AF600;
  aBlock[3] = &unk_1E70BC540;
  v18 = v10;
  v11 = v10;
  v12 = a4;
  v13 = a3;
  v14 = _Block_copy(aBlock);
  v15 = sub_1885AF0D4(self, v6, v14);
  objc_msgSend_getContainerScopedDaemonProxyCreatorForSetupInfo_containerScopedClientProxy_completionHandler_(v15, v16, v13, v12, v11);
}

- (void)getSessionAcquisitionDaemonProxyCreatorForSessionAcquisitionSetupInfo:(id)a3 exportedProxy:(id)a4 synchronous:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v10 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1885AF710;
  aBlock[3] = &unk_1E70BC540;
  v18 = v10;
  v11 = v10;
  v12 = a4;
  v13 = a3;
  v14 = _Block_copy(aBlock);
  v15 = sub_1885AF0D4(self, v6, v14);
  objc_msgSend_getSessionAcquisitionDaemonProxyCreatorForSessionAcquisitionSetupInfo_sessionAcquisitionClientProxy_completionHandler_(v15, v16, v13, v12, v11);
}

- (void)getDaemonTestServerManagerProxyCreatorSynchronous:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v9 = a4;
  if ((__sTestOverridesAvailable[0] & 1) == 0)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CKXPCConnection.m", 126, @"Test hooks aren't supported in this process");
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1885AF8A8;
  aBlock[3] = &unk_1E70BC540;
  v10 = v9;
  v20 = v10;
  v11 = _Block_copy(aBlock);
  v12 = sub_1885AF0D4(self, v4, v11);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1885AF8C0;
  v17[3] = &unk_1E70BE9F8;
  v18 = v10;
  v13 = v10;
  objc_msgSend_getDaemonTestServerManagerProxyCreatorWithCompletionHandler_(v12, v14, v17);
}

- (void)getLogicalDeviceScopedClientProxyCreatorForTestDeviceReferenceProtocol:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7 = objc_msgSend_deviceContextForTestDeviceReferenceProtocol_(CKLogicalDeviceContext, v6, a3);
  v10 = objc_msgSend_deviceScopedStateManager(v7, v8, v9);

  v5[2](v5, v10);
}

- (void)getProcessScopedClientProxyCreatorWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v5, v6);
  (*(a3 + 2))(v4, v7);
}

- (void)invalidate:(id)a3
{
  v4 = a3;
  v16 = 0;
  v7 = sub_1885AEF1C(self, &v16);
  if (v16)
  {
    if (v4)
    {
      v8 = self;
      objc_sync_enter(v8);
      if (!v8 || (invalidationCompletionHandlers = v8->_invalidationCompletionHandlers) == 0)
      {
        v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10);
        sub_1885AFDF4(v8, v12);

        if (v8)
        {
          invalidationCompletionHandlers = v8->_invalidationCompletionHandlers;
        }

        else
        {
          invalidationCompletionHandlers = 0;
        }
      }

      v13 = invalidationCompletionHandlers;
      v14 = _Block_copy(v4);
      objc_msgSend_addObject_(v13, v15, v14);

      objc_sync_exit(v8);
    }

    objc_msgSend_invalidate(v7, v5, v6);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }
}

@end