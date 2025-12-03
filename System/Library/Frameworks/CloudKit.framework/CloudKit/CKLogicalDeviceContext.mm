@interface CKLogicalDeviceContext
+ (id)defaultContext;
+ (id)deviceContextForTestDeviceReferenceProtocol:(id)protocol;
- (CKLogicalDeviceScopedDaemonProxy)deviceScopedDaemonProxy;
- (CKLogicalDeviceScopedStateManager)deviceScopedStateManager;
- (CKTestDeviceProtocol)testDeviceProtocol;
- (CKThrottleManager)throttleManager;
- (id)_initWithTestDeviceReferenceProtocol:(id)protocol useLiveServer:(BOOL)server;
- (id)deviceScopedPushTopic:(id)topic;
- (int64_t)pushBehavior;
@end

@implementation CKLogicalDeviceContext

- (CKThrottleManager)throttleManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  throttleManager = selfCopy->_throttleManager;
  if (!throttleManager)
  {
    v4 = [CKThrottleManager alloc];
    inited = objc_msgSend_initInternal(v4, v5, v6);
    v8 = selfCopy->_throttleManager;
    selfCopy->_throttleManager = inited;

    throttleManager = selfCopy->_throttleManager;
  }

  v9 = throttleManager;
  objc_sync_exit(selfCopy);

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

+ (id)deviceContextForTestDeviceReferenceProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (protocolCopy && (__sTestOverridesAvailable[0] & 1) != 0)
  {
    v8 = sub_188518C10();
    v11 = objc_msgSend_sharedManager(v8, v9, v10);
    v14 = objc_msgSend_serverReferenceProtocol(protocolCopy, v12, v13);
    v16 = objc_msgSend_existingServerProtocolForReferenceProtocol_(v11, v15, v14);

    if (!v16)
    {
      v35 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v17, v18);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v36, a2, self, @"CKLogicalDeviceContext.m", 50, @"Unexpectedly nil test server from reference %@", protocolCopy);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v22 = objc_msgSend_deviceID(protocolCopy, v20, v21);
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
      v27 = objc_msgSend__initWithTestDeviceReferenceProtocol_useLiveServer_(v28, v32, protocolCopy, v31);
      objc_msgSend_setTestDeviceContext_forDeviceID_(v16, v33, v27, v25);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v27 = objc_msgSend_defaultContext(CKLogicalDeviceContext, v5, v6);
  }

  return v27;
}

- (id)_initWithTestDeviceReferenceProtocol:(id)protocol useLiveServer:(BOOL)server
{
  protocolCopy = protocol;
  v11.receiver = self;
  v11.super_class = CKLogicalDeviceContext;
  v8 = [(CKLogicalDeviceContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_testDeviceReferenceProtocol, protocol);
    v9->_useLiveServer = server;
  }

  return v9;
}

- (CKLogicalDeviceScopedDaemonProxy)deviceScopedDaemonProxy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceScopedDaemonProxy = selfCopy->_deviceScopedDaemonProxy;
  if (!deviceScopedDaemonProxy)
  {
    v4 = [CKLogicalDeviceScopedDaemonProxy alloc];
    v6 = objc_msgSend_initWithDeviceContext_(v4, v5, selfCopy);
    v7 = selfCopy->_deviceScopedDaemonProxy;
    selfCopy->_deviceScopedDaemonProxy = v6;

    deviceScopedDaemonProxy = selfCopy->_deviceScopedDaemonProxy;
  }

  v8 = deviceScopedDaemonProxy;
  objc_sync_exit(selfCopy);

  return v8;
}

- (CKLogicalDeviceScopedStateManager)deviceScopedStateManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceScopedStateManager = selfCopy->_deviceScopedStateManager;
  if (!deviceScopedStateManager)
  {
    v4 = [CKLogicalDeviceScopedStateManager alloc];
    v6 = objc_msgSend_initWithDeviceContext_(v4, v5, selfCopy);
    v7 = selfCopy->_deviceScopedStateManager;
    selfCopy->_deviceScopedStateManager = v6;

    deviceScopedStateManager = selfCopy->_deviceScopedStateManager;
  }

  v8 = deviceScopedStateManager;
  objc_sync_exit(selfCopy);

  return v8;
}

- (CKTestDeviceProtocol)testDeviceProtocol
{
  v44 = *MEMORY[0x1E69E9840];
  if (__sTestOverridesAvailable[0] == 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v5 = objc_msgSend_testDeviceReferenceProtocol(selfCopy, v3, v4);

    if (v5)
    {
      testDeviceProtocol = selfCopy->_testDeviceProtocol;
      if (!testDeviceProtocol)
      {
        v7 = sub_188518C10();
        v10 = objc_msgSend_sharedManager(v7, v8, v9);
        v13 = objc_msgSend_testDeviceReferenceProtocol(selfCopy, v11, v12);
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
            v37 = objc_msgSend_testDeviceReferenceProtocol(selfCopy, v35, v36);
            *buf = 138412290;
            v41 = v37;
            _os_log_error_impl(&dword_1883EA000, v34, OS_LOG_TYPE_ERROR, "Unexpectedly nil test server from reference %@", buf, 0xCu);
          }

          v5 = 0;
          goto LABEL_13;
        }

        v21 = objc_msgSend_testDeviceReferenceProtocol(selfCopy, v19, v20);
        v24 = objc_msgSend_deviceID(v21, v22, v23);
        v39 = 0;
        v26 = objc_msgSend_deviceProtocolWithDeviceID_error_(v18, v25, v24, &v39);
        v27 = v39;
        v28 = selfCopy->_testDeviceProtocol;
        selfCopy->_testDeviceProtocol = v26;

        if (!selfCopy->_testDeviceProtocol)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v29 = ck_log_facility_ck;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v38 = objc_msgSend_testDeviceReferenceProtocol(selfCopy, v30, v31);
            *buf = 138412546;
            v41 = v38;
            v42 = 2112;
            v43 = v27;
            _os_log_error_impl(&dword_1883EA000, v29, OS_LOG_TYPE_ERROR, "Unexpectedly nil test device from reference %@: %@", buf, 0x16u);
          }
        }

        testDeviceProtocol = selfCopy->_testDeviceProtocol;
      }

      v5 = testDeviceProtocol;
    }

LABEL_13:
    objc_sync_exit(selfCopy);

    goto LABEL_15;
  }

  v5 = 0;
LABEL_15:
  v32 = *MEMORY[0x1E69E9840];

  return v5;
}

- (int64_t)pushBehavior
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_testDeviceProtocol(selfCopy, v3, v4);
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_logicalDeviceContextPushBehavior(v5, v6, v7);
  }

  else
  {
    v9 = 1;
  }

  objc_sync_exit(selfCopy);
  return v9;
}

- (id)deviceScopedPushTopic:(id)topic
{
  topicCopy = topic;
  v7 = objc_msgSend_pushBehavior(self, v5, v6);
  v10 = objc_msgSend_testDeviceReferenceProtocol(self, v8, v9);
  v13 = objc_msgSend_deviceID(v10, v11, v12);
  v16 = objc_msgSend_testDeviceReferenceProtocol(self, v14, v15);
  v19 = objc_msgSend_serverReferenceProtocol(v16, v17, v18);
  v22 = objc_msgSend_dataDirectory(v19, v20, v21);
  v25 = objc_msgSend_path(v22, v23, v24);
  v26 = CKPushTopicForPushBehavior(v7, topicCopy, v13, v25);

  return v26;
}

@end