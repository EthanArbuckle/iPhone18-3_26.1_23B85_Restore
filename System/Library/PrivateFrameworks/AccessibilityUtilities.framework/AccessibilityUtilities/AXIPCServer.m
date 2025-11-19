@interface AXIPCServer
- (AXIPCServer)initWithPort:(unsigned int)a3 serviceRunLoopSource:(__CFRunLoopSource *)a4;
- (AXIPCServer)initWithServiceName:(id)a3 perPidService:(BOOL)a4;
- (BOOL)__slowpath__clientWithAuditToken:(id *)a3 hasRequiredEntitlementFromSet:(id)a4;
- (BOOL)_clientHasEntitlementWithPort:(unsigned int)a3 auditToken:(id *)a4 message:(id)a5 completion:(id)a6;
- (BOOL)_handleErrorWithMessage:(id)a3 outError:(id *)a4;
- (BOOL)_hasEntitlement:(id)a3 entitlements:(id)a4 clientPort:(unsigned int)a5 auditToken:(id *)a6 message:(id)a7 completion:(id)a8;
- (BOOL)startServerWithError:(id *)a3;
- (BOOL)stopServerWithError:(id *)a3;
- (NSString)description;
- (id)_clientIdentificationForAuditToken:(id *)a3;
- (id)clientInvalidationCallback;
- (id)defaultHandler;
- (void)_addPossibleRequiredEntitlementsToMessageWithKey:(int)a3 first:(id)a4 vothers:(char *)a5;
- (void)_applyCustomQueueSize;
- (void)_handleClientInvalidation:(unsigned int)a3;
- (void)_handleClientRegistration:(id)a3;
- (void)_handleIncomingMessage:(id)a3 securityToken:(id)a4 auditToken:(id *)a5 clientPort:(unsigned int)a6 completion:(id)a7;
- (void)_processValidatedMessage:(id)a3 completion:(id)a4;
- (void)_registerContext:(id)a3 forKey:(int)a4;
- (void)_startServerThread;
- (void)addPossibleRequiredEntitlement:(id)a3 forMessageWithKey:(int)a4;
- (void)dealloc;
- (void)removeAllHandlersForTarget:(id)a3;
- (void)removeHandlerForKey:(int)a3;
- (void)removePossibleRequiredEntitlement:(id)a3 forMessageWithKey:(int)a4;
- (void)serverClientRegistrationInvalidated:(id)a3;
- (void)setClientInvalidationCallback:(id)a3;
- (void)setDefaultHandler:(id)a3;
- (void)setHandler:(id)a3 forKey:(int)a4;
- (void)setHandlerWithTarget:(id)a3 selector:(SEL)a4 async:(BOOL)a5 forKey:(int)a6;
- (void)setHandlerWithTarget:(id)a3 selector:(SEL)a4 async:(BOOL)a5 forKey:(int)a6 possibleRequiredEntitlements:(id)a7;
- (void)setHandlerWithTarget:(id)a3 selector:(SEL)a4 forKey:(int)a5 possibleRequiredEntitlements:(id)a6;
- (void)setServiceRunLoopSource:(__CFRunLoopSource *)a3;
@end

@implementation AXIPCServer

- (AXIPCServer)initWithServiceName:(id)a3 perPidService:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v12.receiver = self;
  v12.super_class = AXIPCServer;
  v7 = [(AXIPCServer *)&v12 init];
  v8 = v7;
  if (v7)
  {
    [(AXIPCServer *)v7 setServiceName:v6];
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [(AXIPCServer *)v8 setHandlers:v9];

    [(AXIPCServer *)v8 setPerPidService:v4];
    v10 = [MEMORY[0x1E695DF70] array];
    [(AXIPCServer *)v8 setDelayedMessages:v10];
  }

  return v8;
}

- (AXIPCServer)initWithPort:(unsigned int)a3 serviceRunLoopSource:(__CFRunLoopSource *)a4
{
  v6 = [(AXIPCServer *)self initWithServiceName:0 perPidService:0];
  v7 = v6;
  if (v6)
  {
    v6->_assignedServerPort = a3;
    if (a4)
    {
      v6->_serverRunLoopSource = CFRetain(a4);
    }
  }

  return v7;
}

- (void)dealloc
{
  if ([(AXIPCServer *)self isRunning])
  {
    [(AXIPCServer *)self stopServerWithError:0];
  }

  v3.receiver = self;
  v3.super_class = AXIPCServer;
  [(AXIPCServer *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = AXIPCServer;
  v4 = [(AXIPCServer *)&v10 description];
  v5 = [(AXIPCServer *)self serviceName];
  v6 = [(AXIPCServer *)self isRunning];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"%@. Serivce Name:%@. Running:%@ Server Port:%d. Clients:%@. Entitlements:%@. RunLoopSource:%p", v4, v5, v7, self->_serverPort, self->_connectedClients, self->_entitlements, self->_serverRunLoopSource];

  return v8;
}

- (void)setServiceRunLoopSource:(__CFRunLoopSource *)a3
{
  if (self->_serverRunLoopSource)
  {
    _AXAssert();
  }

  if (a3)
  {
    CFRetain(a3);
  }

  self->_serverRunLoopSource = a3;
}

- (id)defaultHandler
{
  defaultHandler = self->_defaultHandler;
  if (!defaultHandler)
  {
    v4 = [&__block_literal_global_16 copy];
    v5 = self->_defaultHandler;
    self->_defaultHandler = v4;

    defaultHandler = self->_defaultHandler;
  }

  v6 = _Block_copy(defaultHandler);

  return v6;
}

uint64_t __29__AXIPCServer_defaultHandler__block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A message was received that could not be understood: %@", a2];
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:@"AXIPCMessageHandlerException" reason:v2 userInfo:0];
  if (v3)
  {
    v4 = AXLogIPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = v3;
      _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_DEFAULT, "AX: %{public}@", buf, 0xCu);
    }
  }

  return 0;
}

- (void)setDefaultHandler:(id)a3
{
  v4 = a3;
  defaultHandler = self->_defaultHandler;
  if (defaultHandler != v4)
  {
    v8 = v4;
    if (defaultHandler)
    {
      self->_defaultHandler = 0;

      v4 = v8;
    }

    if (v4)
    {
      v6 = [v8 copy];
      v7 = self->_defaultHandler;
      self->_defaultHandler = v6;

      v4 = v8;
    }
  }
}

- (id)clientInvalidationCallback
{
  v2 = _Block_copy(self->_clientInvalidationHandler);

  return v2;
}

- (void)setClientInvalidationCallback:(id)a3
{
  v4 = a3;
  clientInvalidationHandler = self->_clientInvalidationHandler;
  if (clientInvalidationHandler != v4)
  {
    v8 = v4;
    if (clientInvalidationHandler)
    {
      self->_clientInvalidationHandler = 0;

      v4 = v8;
    }

    if (v4)
    {
      v6 = [v8 copy];
      v7 = self->_clientInvalidationHandler;
      self->_clientInvalidationHandler = v6;

      v4 = v8;
    }
  }
}

- (BOOL)startServerWithError:(id *)a3
{
  v5 = [(AXIPCServer *)self serviceName];
  if ([v5 length])
  {
  }

  else
  {
    assignedServerPort = self->_assignedServerPort;

    if (!assignedServerPort)
    {
      v7 = @"Cannot start server. Service name was empty";
      return ![(AXIPCServer *)self _handleErrorWithMessage:v7 outError:a3];
    }
  }

  if ([(AXIPCServer *)self isRunning])
  {
    v7 = @"Cannot start server. It is already running.";
  }

  else
  {
    [(AXIPCServer *)self _startServerThread];
    v7 = 0;
  }

  return ![(AXIPCServer *)self _handleErrorWithMessage:v7 outError:a3];
}

- (BOOL)stopServerWithError:(id *)a3
{
  if ([(AXIPCServer *)self isRunning])
  {
    serverRunLoopSource = self->_serverRunLoopSource;
    if (serverRunLoopSource)
    {
      CFRunLoopSourceInvalidate(serverRunLoopSource);
      CFRelease(self->_serverRunLoopSource);
      self->_serverRunLoopSource = 0;
    }

    [(AXIPCServer *)self setRunning:0];
    AXIPCServerSetServerPort(self->_serverPort, 0);
    v6 = 0;
  }

  else
  {
    v6 = @"Cannot stop server. It is not running.";
  }

  return ![(AXIPCServer *)self _handleErrorWithMessage:v6 outError:a3];
}

- (void)setHandler:(id)a3 forKey:(int)a4
{
  v4 = *&a4;
  v9 = a3;
  if (v9)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v4];
    v7 = [[AXIPCServerMessageHandlerContext alloc] initWithHandler:v9];
    v8 = [(AXIPCServer *)self handlers];
    [v8 setObject:v7 forKey:v6];
  }

  else
  {
    [(AXIPCServer *)self removeHandlerForKey:v4];
  }
}

- (void)removeHandlerForKey:(int)a3
{
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*&a3];
  v4 = [(AXIPCServer *)self handlers];
  [v4 removeObjectForKey:v5];
}

- (void)_registerContext:(id)a3 forKey:(int)a4
{
  v4 = *&a4;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v9 = [[v6 alloc] initWithInt:v4];
  v8 = [(AXIPCServer *)self handlers];
  [v8 setObject:v7 forKey:v9];
}

- (void)_addPossibleRequiredEntitlementsToMessageWithKey:(int)a3 first:(id)a4 vothers:(char *)a5
{
  v6 = *&a3;
  v8 = a4;
  [(AXIPCServer *)self addPossibleRequiredEntitlement:v8 forMessageWithKey:v6];
  v12 = a5 + 8;
  v9 = *a5;
  if (v9)
  {
    v10 = v9;
    do
    {
      [(AXIPCServer *)self addPossibleRequiredEntitlement:v10 forMessageWithKey:v6];

      v11 = v12;
      v12 += 8;
      v10 = *v11;
    }

    while (v10);
  }
}

- (void)setHandlerWithTarget:(id)a3 selector:(SEL)a4 async:(BOOL)a5 forKey:(int)a6
{
  v6 = *&a6;
  v7 = a5;
  v11 = a3;
  if (v11 && a4)
  {
    v10 = [[AXIPCServerMessageHandlerContext alloc] initWithTarget:v11 selector:a4 async:v7];
    [(AXIPCServer *)self _registerContext:v10 forKey:v6];
  }

  else
  {
    [(AXIPCServer *)self removeHandlerForKey:v6];
  }
}

- (void)setHandlerWithTarget:(id)a3 selector:(SEL)a4 forKey:(int)a5 possibleRequiredEntitlements:(id)a6
{
  v6 = *&a5;
  v10 = a6;
  [(AXIPCServer *)self setHandlerWithTarget:a3 selector:a4 forKey:v6];
  if (v10)
  {
    [(AXIPCServer *)self _addPossibleRequiredEntitlementsToMessageWithKey:v6 first:v10 vothers:&v11];
  }
}

- (void)setHandlerWithTarget:(id)a3 selector:(SEL)a4 async:(BOOL)a5 forKey:(int)a6 possibleRequiredEntitlements:(id)a7
{
  v7 = *&a6;
  v8 = a5;
  v12 = a7;
  [(AXIPCServer *)self setHandlerWithTarget:a3 selector:a4 async:v8 forKey:v7];
  if (v12)
  {
    [(AXIPCServer *)self _addPossibleRequiredEntitlementsToMessageWithKey:v7 first:v12 vothers:&v13];
  }
}

- (void)removeAllHandlersForTarget:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  v5 = [(AXIPCServer *)self handlers];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__AXIPCServer_removeAllHandlersForTarget___block_invoke;
  v15[3] = &unk_1E71EB098;
  v6 = v4;
  v16 = v6;
  v17 = &v18;
  [v5 enumerateKeysAndObjectsUsingBlock:v15];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v19[5];
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v24 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [v5 removeObjectForKey:{*(*(&v11 + 1) + 8 * v10++), v11}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v24 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v18, 8);
}

void __42__AXIPCServer_removeAllHandlersForTarget___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = [a3 target];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (!v7)
    {
      v8 = objc_opt_new();
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v7 addObject:v11];
  }
}

- (void)addPossibleRequiredEntitlement:(id)a3 forMessageWithKey:(int)a4
{
  v4 = *&a4;
  v10 = a3;
  if (!self->_entitlements)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    entitlements = self->_entitlements;
    self->_entitlements = v6;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v9 = [(NSMutableDictionary *)self->_entitlements objectForKey:v8];
  if (!v9)
  {
    v9 = objc_opt_new();
    [(NSMutableDictionary *)self->_entitlements setObject:v9 forKey:v8];
  }

  [v9 addObject:v10];
}

- (void)removePossibleRequiredEntitlement:(id)a3 forMessageWithKey:(int)a4
{
  v4 = *&a4;
  v10 = a3;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v7 = [(NSMutableDictionary *)self->_entitlements objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    [v7 removeObject:v10];
    if (![v8 count])
    {
      [(NSMutableDictionary *)self->_entitlements removeObjectForKey:v6];
      if (![(NSMutableDictionary *)self->_entitlements count])
      {
        entitlements = self->_entitlements;
        self->_entitlements = 0;
      }
    }
  }
}

- (BOOL)_clientHasEntitlementWithPort:(unsigned int)a3 auditToken:(id *)a4 message:(id)a5 completion:(id)a6
{
  v8 = *&a3;
  v31 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = [v10 key];
  entitlements = self->_entitlements;
  v14 = [MEMORY[0x1E696AD98] numberWithInt:v12];
  v15 = [(NSMutableDictionary *)entitlements objectForKey:v14];
  v16 = [v15 copy];

  if ([v16 count])
  {
    connectedClients = self->_connectedClients;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __75__AXIPCServer__clientHasEntitlementWithPort_auditToken_message_completion___block_invoke;
    v28[3] = &__block_descriptor_36_e12_B24__0_8_B16l;
    v29 = v8;
    v18 = [(NSMutableSet *)connectedClients objectsPassingTest:v28];
    v19 = [v18 anyObject];

    v20 = *&a4->var0[4];
    *buf = *a4->var0;
    *&buf[16] = v20;
    v21 = [(AXIPCServer *)self _hasEntitlement:v19 entitlements:v16 clientPort:v8 auditToken:buf message:v10 completion:v11];
    if (!v21)
    {
      v22 = AXLogIPC();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = *&a4->var0[4];
        *buf = *a4->var0;
        *&buf[16] = v24;
        v25 = [(AXIPCServer *)self _clientIdentificationForAuditToken:buf];
        v26 = [v16 description];
        v27 = [v26 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
        *buf = 138543874;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = v10;
        *&buf[22] = 2114;
        *&buf[24] = v27;
        _os_log_error_impl(&dword_18B15E000, v22, OS_LOG_TYPE_ERROR, "Client (%{public}@) does not have required entitlement for message: %{public}@. \nNeeds one of:%{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

BOOL __75__AXIPCServer__clientHasEntitlementWithPort_auditToken_message_completion___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 port];
  v6 = *(a1 + 32);
  if (v5 == v6)
  {
    *a3 = 1;
  }

  return v5 == v6;
}

- (BOOL)_hasEntitlement:(id)a3 entitlements:(id)a4 clientPort:(unsigned int)a5 auditToken:(id *)a6 message:(id)a7 completion:(id)a8
{
  v77 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v43 = a7;
  v44 = a8;
  v45 = v14;
  v42 = v13;
  if (v13)
  {
    if (!self->_validSecurityTokens)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      validSecurityTokens = self->_validSecurityTokens;
      self->_validSecurityTokens = v15;
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v18)
    {
      v19 = *v68;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v68 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = [(NSMutableDictionary *)self->_validSecurityTokens objectForKey:*(*(&v67 + 1) + 8 * i)];
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a5];
          v23 = [v21 containsObject:v22];

          if (v23)
          {

            v33 = 1;
            goto LABEL_36;
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v67 objects:v76 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__AXIPCServer__hasEntitlement_entitlements_clientPort_auditToken_message_completion___block_invoke;
    aBlock[3] = &unk_1E71EB0E0;
    v24 = *&a6->var0[4];
    v65 = *a6->var0;
    v66 = v24;
    aBlock[4] = self;
    v48 = _Block_copy(aBlock);
    *&buf = 0;
    *(&buf + 1) = &buf;
    *&v75 = 0x2020000000;
    BYTE8(v75) = 0;
    v25 = [(AXIPCServer *)self delayedMessages];
    v26 = [[AXIPCDelayedMessage alloc] initWithMessage:v43 completion:v44];
    [v25 addObject:v26];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v17;
    v27 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
    if (v27)
    {
      v47 = *v61;
      while (2)
      {
        v28 = 0;
        do
        {
          if (*v61 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v60 + 1) + 8 * v28);
          Current = CFRunLoopGetCurrent();
          v56 = 0;
          v57 = &v56;
          v58 = 0x2020000000;
          v59 = 0;
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __85__AXIPCServer__hasEntitlement_entitlements_clientPort_auditToken_message_completion___block_invoke_142;
          v55[3] = &unk_1E71EAF98;
          v55[4] = self;
          v55[5] = Current;
          if (_hasEntitlement_entitlements_clientPort_auditToken_message_completion__onceToken != -1)
          {
            dispatch_once(&_hasEntitlement_entitlements_clientPort_auditToken_message_completion__onceToken, v55);
          }

          v31 = _hasEntitlement_entitlements_clientPort_auditToken_message_completion__SecurityCheckQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __85__AXIPCServer__hasEntitlement_entitlements_clientPort_auditToken_message_completion___block_invoke_2;
          block[3] = &unk_1E71EB108;
          p_buf = &buf;
          v32 = v48;
          block[4] = v29;
          v51 = v32;
          v53 = &v56;
          v54 = Current;
          dispatch_async(v31, block);
          while ((v57[3] & 1) == 0)
          {
            CFRunLoopRunSpecific();
          }

          if (*(*(&buf + 1) + 24) == 1)
          {
            v38 = [(NSMutableDictionary *)self->_validSecurityTokens objectForKey:v29];
            if (!v38)
            {
              v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [(NSMutableDictionary *)self->_validSecurityTokens setObject:v38 forKey:v29];
            }

            v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a5];
            [v38 addObject:v39];

            v40 = AXLogIPC();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              *v71 = 138412290;
              v72 = v29;
              _os_log_debug_impl(&dword_18B15E000, v40, OS_LOG_TYPE_DEBUG, "Client does have entitlement: %@", v71, 0xCu);
            }

            _Block_object_dispose(&v56, 8);
            goto LABEL_35;
          }

          _Block_object_dispose(&v56, 8);
          ++v28;
        }

        while (v28 != v27);
        v27 = [obj countByEnumeratingWithState:&v60 objects:v73 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

LABEL_35:

    v33 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v34 = AXLogIPC();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = *&a6->var0[4];
      buf = *a6->var0;
      v75 = v35;
      v36 = [(AXIPCServer *)self _clientIdentificationForAuditToken:&buf];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v36;
      _os_log_impl(&dword_18B15E000, v34, OS_LOG_TYPE_INFO, "taking entitlement slowpath for %{public}@", &buf, 0xCu);
    }

    v37 = *&a6->var0[4];
    buf = *a6->var0;
    v75 = v37;
    v33 = [(AXIPCServer *)self __slowpath__clientWithAuditToken:&buf hasRequiredEntitlementFromSet:v14];
  }

LABEL_36:

  return v33 & 1;
}

BOOL __85__AXIPCServer__hasEntitlement_entitlements_clientPort_auditToken_message_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *MEMORY[0x1E695E480];
  v5 = *(a1 + 56);
  *token.val = *(a1 + 40);
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &token);
  if (v6)
  {
    v7 = v6;
    error = 0;
    v8 = SecTaskCopyValueForEntitlement(v6, v3, &error);
    if (error)
    {
      v9 = AXLogIPC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 56);
        *token.val = *(a1 + 40);
        *&token.val[4] = v14;
        v15 = [v13 _clientIdentificationForAuditToken:&token];
        token.val[0] = 138543618;
        *&token.val[1] = v15;
        LOWORD(token.val[3]) = 2112;
        *(&token.val[3] + 2) = error;
        _os_log_error_impl(&dword_18B15E000, v9, OS_LOG_TYPE_ERROR, "(fast path) error getting entitlements for task %{public}@: %@", &token, 0x16u);
      }
    }

    if (v8)
    {
      v10 = CFGetTypeID(v8);
      v11 = v10 == CFBooleanGetTypeID() && CFBooleanGetValue(v8) != 0;
      CFRelease(v8);
    }

    else
    {
      v11 = 0;
    }

    if (error)
    {
      CFRelease(error);
      error = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __85__AXIPCServer__hasEntitlement_entitlements_clientPort_auditToken_message_completion___block_invoke_142(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("AccessibilitySecurityCheckQueue", v2);
  v4 = _hasEntitlement_entitlements_clientPort_auditToken_message_completion__SecurityCheckQueue;
  _hasEntitlement_entitlements_clientPort_auditToken_message_completion__SecurityCheckQueue = v3;

  memset(&v5, 0, 72);
  v5.info = *(a1 + 32);
  v5.perform = _passiveEventHandler;
  _hasEntitlement_entitlements_clientPort_auditToken_message_completion__SourceRef = CFRunLoopSourceCreate(0, 0, &v5);
  CFRunLoopAddSource(*(a1 + 40), _hasEntitlement_entitlements_clientPort_auditToken_message_completion__SourceRef, *MEMORY[0x1E695E8E0]);
}

void __85__AXIPCServer__hasEntitlement_entitlements_clientPort_auditToken_message_completion___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 40) + 16))();
  CFRunLoopSourceSignal(_hasEntitlement_entitlements_clientPort_auditToken_message_completion__SourceRef);
  CFRunLoopWakeUp(*(a1 + 64));
  *(*(*(a1 + 56) + 8) + 24) = 1;
}

- (BOOL)__slowpath__clientWithAuditToken:(id *)a3 hasRequiredEntitlementFromSet:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = *MEMORY[0x1E695E480];
  v7 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(v6, &token);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        error = 0;
        v15 = SecTaskCopyValueForEntitlement(v8, v14, &error);
        if (v15)
        {
          v16 = v15;
          v17 = CFGetTypeID(v15);
          v18 = v17 == CFBooleanGetTypeID() && CFBooleanGetValue(v16) != 0;
          CFRelease(v16);
        }

        else
        {
          v18 = 0;
        }

        if (error)
        {
          v19 = AXLogIPC();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = *&a3->var0[4];
            *token.val = *a3->var0;
            *&token.val[4] = v20;
            v21 = [(AXIPCServer *)self _clientIdentificationForAuditToken:&token];
            token.val[0] = 138543618;
            *&token.val[1] = v21;
            LOWORD(token.val[3]) = 2112;
            *(&token.val[3] + 2) = error;
            _os_log_error_impl(&dword_18B15E000, v19, OS_LOG_TYPE_ERROR, "(slow path) error getting entitlements for task %{public}@: %@", &token, 0x16u);
          }

          if (error)
          {
            CFRelease(error);
          }
        }

        if (v18)
        {
          v22 = 1;
          goto LABEL_22;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_22:

  if (v8)
  {
    CFRelease(v8);
  }

  return v22;
}

- (void)_handleClientInvalidation:(unsigned int)a3
{
  v38 = *MEMORY[0x1E69E9840];
  connectedClients = self->_connectedClients;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __41__AXIPCServer__handleClientInvalidation___block_invoke;
  v31[3] = &__block_descriptor_36_e12_B24__0_8_B16l;
  v32 = a3;
  v5 = [(NSMutableSet *)connectedClients objectsPassingTest:v31];
  v6 = [v5 anyObject];

  if (v6)
  {
    clientInvalidationHandler = self->_clientInvalidationHandler;
    if (clientInvalidationHandler)
    {
      v8 = [v6 port];
      v9 = [v6 identifier];
      clientInvalidationHandler[2](clientInvalidationHandler, v8, v9);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = self->_validSecurityTokens;
    v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v28;
      *&v11 = 138543618;
      v25 = v11;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = [(NSMutableDictionary *)self->_validSecurityTokens objectForKey:v15, v25];
          v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "port")}];
          v18 = [v16 containsObject:v17];

          if (v18)
          {
            v19 = AXLogIPC();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [v6 identifier];
              *buf = v25;
              v34 = v15;
              v35 = 2114;
              v36 = v20;
              _os_log_impl(&dword_18B15E000, v19, OS_LOG_TYPE_INFO, "Cleaned up cached validation entitlement for %{public}@ = %{public}@", buf, 0x16u);
            }

            v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "port")}];
            [v16 removeObject:v21];
          }
        }

        v12 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v12);
    }

    v22 = AXLogIPC();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v6 identifier];
      *buf = 138543362;
      v34 = v23;
      _os_log_impl(&dword_18B15E000, v22, OS_LOG_TYPE_INFO, "Client disconnected %{public}@", buf, 0xCu);
    }

    [(NSMutableSet *)self->_connectedClients removeObject:v6];
  }

  else
  {
    v24 = AXLogIPC();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18B15E000, v24, OS_LOG_TYPE_INFO, "We don't have a record of this client being registered. Strange that we got an invalidation.", buf, 2u);
    }
  }
}

BOOL __41__AXIPCServer__handleClientInvalidation___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 port];
  v6 = *(a1 + 32);
  if (v5 == v6)
  {
    *a3 = 1;
  }

  return v5 == v6;
}

- (void)_applyCustomQueueSize
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_18B15E000, log, OS_LOG_TYPE_ERROR, "could not set custom queue size to %u: 0x%08x", v4, 0xEu);
}

- (void)_startServerThread
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)serverClientRegistrationInvalidated:(id)a3
{
  v4 = [a3 port];

  [(AXIPCServer *)self _handleClientInvalidation:v4];
}

- (void)_handleClientRegistration:(id)a3
{
  v4 = a3;
  if (!self->_connectedClients)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    connectedClients = self->_connectedClients;
    self->_connectedClients = v5;
  }

  v7 = [v4 clientPort];
  v8 = [v4 payload];
  v9 = [v8 objectForKey:@"identifier"];

  if (![v4 clientPort] || objc_msgSend(v4, "clientPort") == -1)
  {
    v10 = AXLogIPC();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      [AXIPCServer _handleClientRegistration:v4];
    }
  }

  else
  {
    v10 = [[AXIPCServerClientRegistration alloc] initWithPort:v7 identifier:v9];
    if ([(NSMutableSet *)self->_connectedClients containsObject:v10])
    {
      v11 = AXLogIPC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_DEFAULT, "Clients only need to register once!", v12, 2u);
      }
    }

    else
    {
      [(AXIPCServerClientRegistration *)v10 setDelegate:self];
      [(NSMutableSet *)self->_connectedClients addObject:v10];
    }
  }
}

- (void)_handleIncomingMessage:(id)a3 securityToken:(id)a4 auditToken:(id *)a5 clientPort:(unsigned int)a6 completion:(id)a7
{
  v7 = *&a6;
  v11 = a7;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &__block_literal_global_150;
  }

  v13 = [AXIPCMessage archivedMessageFromData:a3];
  v14 = v13;
  if (v13)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__AXIPCServer__handleIncomingMessage_securityToken_auditToken_clientPort_completion___block_invoke_152;
    aBlock[3] = &unk_1E71EB178;
    aBlock[4] = self;
    v15 = v13;
    v24 = v15;
    v16 = _Block_copy(aBlock);
    v17 = *&a5->var0[4];
    v21 = *a5->var0;
    v22 = v17;
    if ([(AXIPCServer *)self _clientHasEntitlementWithPort:v7 auditToken:&v21 message:v15 completion:v12])
    {
      if ([v15 processedMessage])
      {
        v16[2](v16, 1);
      }

      else
      {
        v20 = *&a5->var0[4];
        v21 = *a5->var0;
        v22 = v20;
        [v15 setAuditToken:&v21];
        [v15 setClientPort:v7];
        if (((v16[2])(v16, 0) & 1) == 0)
        {
          [(AXIPCServer *)self _processValidatedMessage:v15 completion:v12];
        }
      }
    }

    else
    {
      v16[2](v16, 1);
      v19 = AXLogIPC();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_18B15E000, v19, OS_LOG_TYPE_DEFAULT, "Not privileged to communicate", &v21, 2u);
      }

      v12[2](v12, 0);
    }
  }

  else
  {
    v18 = AXLogIPC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_18B15E000, v18, OS_LOG_TYPE_DEFAULT, "Server could not handle received message.  inData could not be unarchived to a message object", &v21, 2u);
    }

    v12[2](v12, 0);
  }
}

BOOL __85__AXIPCServer__handleIncomingMessage_securityToken_auditToken_clientPort_completion___block_invoke_152(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) delayedMessages];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__AXIPCServer__handleIncomingMessage_securityToken_auditToken_clientPort_completion___block_invoke_2;
  v22[3] = &unk_1E71EB150;
  v23 = *(a1 + 40);
  v5 = [v4 indexOfObjectPassingTest:v22];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a2)
    {
      v6 = [*(a1 + 32) delayedMessages];
      [v6 removeObjectAtIndex:v5];
    }

    if (!v5)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [*(a1 + 32) delayedMessages];
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            v13 = *(a1 + 32);
            v14 = [v12 message];
            v15 = [v12 completion];
            [v13 _processValidatedMessage:v14 completion:v15];
          }

          v9 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
        }

        while (v9);
      }

      v16 = [*(a1 + 32) delayedMessages];
      [v16 removeAllObjects];
    }
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

BOOL __85__AXIPCServer__handleIncomingMessage_securityToken_auditToken_clientPort_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 message];
  v4 = [v3 uniqueID];
  v5 = v4 == [*(a1 + 32) uniqueID];

  return v5;
}

- (void)_processValidatedMessage:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 setProcessedMessage:1];
  v8 = [v6 key];
  if (v8 == AXIPCRegisterClientWithServer)
  {
    [(AXIPCServer *)self _handleClientRegistration:v6];
    v7[2](v7, 0);
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v6, "key")}];
    v10 = [(AXIPCServer *)self handlers];
    v11 = [v10 objectForKey:v9];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__AXIPCServer__processValidatedMessage_completion___block_invoke;
    aBlock[3] = &unk_1E71EB1A0;
    v24 = v7;
    v12 = _Block_copy(aBlock);
    v13 = [v11 target];
    v14 = [v11 selector];
    if (v13 && (v15 = v14) != 0)
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = [v11 async];
        v17 = [v13 methodForSelector:v15];
        if (v16)
        {
          v18 = _Block_copy(v12);
          v19 = v17(v13, v15, v6, v18);
        }

        else
        {
          v18 = (v17)(v13, v15, v6);
          (*(v12 + 2))(v12, v18);
        }
      }

      else
      {
        v18 = AXLogIPC();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [AXIPCServer _processValidatedMessage:v15 completion:?];
        }
      }
    }

    else
    {
      v20 = [v11 handler];
      if (!v20)
      {
        v21 = AXLogIPC();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v6 key];
          *buf = 67109120;
          v26 = v22;
          _os_log_impl(&dword_18B15E000, v21, OS_LOG_TYPE_DEFAULT, "Warning: no handler was for message key: (%d). Falling back to default handler", buf, 8u);
        }

        v20 = [(AXIPCServer *)self defaultHandler];
      }

      v18 = (v20)[2](v20, v6);
      (*(v12 + 2))(v12, v18);
    }
  }
}

void __51__AXIPCServer__processValidatedMessage_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v12 = 0;
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v12];
    v4 = v12;
    if (v4)
    {
      v5 = [MEMORY[0x1E69887F8] sharedInstance];
      v6 = [v5 ignoreLogging];

      if ((v6 & 1) == 0)
      {
        v7 = [MEMORY[0x1E69887F8] identifier];
        v8 = AXLoggerForFacility();

        v9 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = AXColorizeFormatLog();
          v11 = _AXStringForArgs();
          if (os_log_type_enabled(v8, v9))
          {
            *buf = 138543362;
            v14 = v11;
            _os_log_impl(&dword_18B15E000, v8, v9, "%{public}@", buf, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

- (BOOL)_handleErrorWithMessage:(id)a3 outError:(id *)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = AXLogIPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXIPCServer _handleErrorWithMessage:outError:];
    }

    if (a4)
    {
      v7 = [MEMORY[0x1E69887C8] errorWithDescription:{@"%@", v5}];
LABEL_8:
      v8 = v7;
      *a4 = v8;
    }
  }

  else if (a4)
  {
    v7 = 0;
    goto LABEL_8;
  }

  return v5 != 0;
}

- (id)_clientIdentificationForAuditToken:(id *)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:a3->var0[5]];
  v5 = [v3 stringWithFormat:@"PID:%@", v4];

  return v5;
}

- (void)_processValidatedMessage:(const char *)a1 completion:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_5(&dword_18B15E000, v2, v3, "target does not respond to selector: %@", v4, v5, v6, v7, v8);
}

- (void)_handleErrorWithMessage:outError:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end