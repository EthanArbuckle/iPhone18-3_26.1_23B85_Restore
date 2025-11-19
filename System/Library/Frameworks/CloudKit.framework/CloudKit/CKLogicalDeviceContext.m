@interface CKLogicalDeviceContext
+ (id)defaultContext;
+ (id)deviceContextForTestDeviceReferenceProtocol:(id)a3;
- (CKLogicalDeviceScopedDaemonProxy)deviceScopedDaemonProxy;
- (CKLogicalDeviceScopedStateManager)deviceScopedStateManager;
- (CKTestDeviceProtocol)testDeviceProtocol;
- (CKThrottleManager)throttleManager;
- (id)_initWithTestDeviceReferenceProtocol:(id)a3 useLiveServer:(BOOL)a4;
- (id)deviceScopedPushTopic:(id)a3;
- (int64_t)pushBehavior;
@end

@implementation CKLogicalDeviceContext

- (CKThrottleManager)throttleManager
{
  v2 = self;
  objc_sync_enter(v2);
  throttleManager = v2->_throttleManager;
  if (!throttleManager)
  {
    v4 = [CKThrottleManager alloc];
    inited = objc_msgSend_initInternal(v4, v5, v6);
    v8 = v2->_throttleManager;
    v2->_throttleManager = inited;

    throttleManager = v2->_throttleManager;
  }

  v9 = throttleManager;
  objc_sync_exit(v2);

  return v9;
}

+ (id)defaultContext
{
  if (qword_1ED4B6568 != -1)
  {
    dispatch_once(&qword_1ED4B6568, &unk_1EFA30790);
  }

  v3 = qword_1ED4B6570;

  return v3;
}

+ (id)deviceContextForTestDeviceReferenceProtocol:(id)a3
{
  v7 = a3;
  if (v7 && (__sTestOverridesAvailable[0] & 1) != 0)
  {
    v8 = sub_188518C10();
    v11 = objc_msgSend_sharedManager(v8, v9, v10);
    v14 = objc_msgSend_serverReferenceProtocol(v7, v12, v13);
    v16 = objc_msgSend_existingServerProtocolForReferenceProtocol_(v11, v15, v14);

    if (!v16)
    {
      v35 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v17, v18);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v36, a2, a1, @"CKLogicalDeviceContext.m", 50, @"Unexpectedly nil test server from reference %@", v7);
    }

    v19 = a1;
    objc_sync_enter(v19);
    v22 = objc_msgSend_deviceID(v7, v20, v21);
    v23 = v22;
    v24 = @"NO_DEVICE_ID";
    if (v22)
    {
      v24 = v22;
    }

    v25 = v24;

    v27 = objc_msgSend_testDeviceContextForDeviceID_(v16, v26, v25);
    if (!v27)
    {
      v28 = [CKLogicalDeviceContext alloc];
      v31 = objc_msgSend_useLiveServer(v16, v29, v30);
      v27 = objc_msgSend__initWithTestDeviceReferenceProtocol_useLiveServer_(v28, v32, v7, v31);
      objc_msgSend_setTestDeviceContext_forDeviceID_(v16, v33, v27, v25);
    }

    objc_sync_exit(v19);
  }

  else
  {
    v27 = objc_msgSend_defaultContext(CKLogicalDeviceContext, v5, v6);
  }

  return v27;
}

- (id)_initWithTestDeviceReferenceProtocol:(id)a3 useLiveServer:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CKLogicalDeviceContext;
  v8 = [(CKLogicalDeviceContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_testDeviceReferenceProtocol, a3);
    v9->_useLiveServer = a4;
  }

  return v9;
}

- (CKLogicalDeviceScopedDaemonProxy)deviceScopedDaemonProxy
{
  v2 = self;
  objc_sync_enter(v2);
  deviceScopedDaemonProxy = v2->_deviceScopedDaemonProxy;
  if (!deviceScopedDaemonProxy)
  {
    v4 = [CKLogicalDeviceScopedDaemonProxy alloc];
    v6 = objc_msgSend_initWithDeviceContext_(v4, v5, v2);
    v7 = v2->_deviceScopedDaemonProxy;
    v2->_deviceScopedDaemonProxy = v6;

    deviceScopedDaemonProxy = v2->_deviceScopedDaemonProxy;
  }

  v8 = deviceScopedDaemonProxy;
  objc_sync_exit(v2);

  return v8;
}

- (CKLogicalDeviceScopedStateManager)deviceScopedStateManager
{
  v2 = self;
  objc_sync_enter(v2);
  deviceScopedStateManager = v2->_deviceScopedStateManager;
  if (!deviceScopedStateManager)
  {
    v4 = [CKLogicalDeviceScopedStateManager alloc];
    v6 = objc_msgSend_initWithDeviceContext_(v4, v5, v2);
    v7 = v2->_deviceScopedStateManager;
    v2->_deviceScopedStateManager = v6;

    deviceScopedStateManager = v2->_deviceScopedStateManager;
  }

  v8 = deviceScopedStateManager;
  objc_sync_exit(v2);

  return v8;
}

- (CKTestDeviceProtocol)testDeviceProtocol
{
  v44 = *MEMORY[0x1E69E9840];
  if (__sTestOverridesAvailable[0] == 1)
  {
    v2 = self;
    objc_sync_enter(v2);
    v5 = objc_msgSend_testDeviceReferenceProtocol(v2, v3, v4);

    if (v5)
    {
      testDeviceProtocol = v2->_testDeviceProtocol;
      if (!testDeviceProtocol)
      {
        v7 = sub_188518C10();
        v10 = objc_msgSend_sharedManager(v7, v8, v9);
        v13 = objc_msgSend_testDeviceReferenceProtocol(v2, v11, v12);
        v16 = objc_msgSend_serverReferenceProtocol(v13, v14, v15);
        v18 = objc_msgSend_existingServerProtocolForReferenceProtocol_(v10, v17, v16);

        if (!v18)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v34 = ck_log_facility_ck;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v37 = objc_msgSend_testDeviceReferenceProtocol(v2, v35, v36);
            *buf = 138412290;
            v41 = v37;
            _os_log_error_impl(&dword_1883EA000, v34, OS_LOG_TYPE_ERROR, "Unexpectedly nil test server from reference %@", buf, 0xCu);
          }

          v5 = 0;
          goto LABEL_13;
        }

        v21 = objc_msgSend_testDeviceReferenceProtocol(v2, v19, v20);
        v24 = objc_msgSend_deviceID(v21, v22, v23);
        v39 = 0;
        v26 = objc_msgSend_deviceProtocolWithDeviceID_error_(v18, v25, v24, &v39);
        v27 = v39;
        v28 = v2->_testDeviceProtocol;
        v2->_testDeviceProtocol = v26;

        if (!v2->_testDeviceProtocol)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v29 = ck_log_facility_ck;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v38 = objc_msgSend_testDeviceReferenceProtocol(v2, v30, v31);
            *buf = 138412546;
            v41 = v38;
            v42 = 2112;
            v43 = v27;
            _os_log_error_impl(&dword_1883EA000, v29, OS_LOG_TYPE_ERROR, "Unexpectedly nil test device from reference %@: %@", buf, 0x16u);
          }
        }

        testDeviceProtocol = v2->_testDeviceProtocol;
      }

      v5 = testDeviceProtocol;
    }

LABEL_13:
    objc_sync_exit(v2);

    goto LABEL_15;
  }

  v5 = 0;
LABEL_15:
  v32 = *MEMORY[0x1E69E9840];

  return v5;
}

- (int64_t)pushBehavior
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_testDeviceProtocol(v2, v3, v4);
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_logicalDeviceContextPushBehavior(v5, v6, v7);
  }

  else
  {
    v9 = 1;
  }

  objc_sync_exit(v2);
  return v9;
}

- (id)deviceScopedPushTopic:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_pushBehavior(self, v5, v6);
  v10 = objc_msgSend_testDeviceReferenceProtocol(self, v8, v9);
  v13 = objc_msgSend_deviceID(v10, v11, v12);
  v16 = objc_msgSend_testDeviceReferenceProtocol(self, v14, v15);
  v19 = objc_msgSend_serverReferenceProtocol(v16, v17, v18);
  v22 = objc_msgSend_dataDirectory(v19, v20, v21);
  v25 = objc_msgSend_path(v22, v23, v24);
  v26 = CKPushTopicForPushBehavior(v7, v4, v13, v25);

  return v26;
}

@end