@interface AXIPCServer
- (AXIPCServer)initWithPort:(unsigned int)port serviceRunLoopSource:(__CFRunLoopSource *)source;
- (AXIPCServer)initWithServiceName:(id)name perPidService:(BOOL)service;
- (BOOL)__slowpath__clientWithAuditToken:(id *)token hasRequiredEntitlementFromSet:(id)set;
- (BOOL)_clientHasEntitlementWithPort:(unsigned int)port auditToken:(id *)token message:(id)message completion:(id)completion;
- (BOOL)_handleErrorWithMessage:(id)message outError:(id *)error;
- (BOOL)_hasEntitlement:(id)entitlement entitlements:(id)entitlements clientPort:(unsigned int)port auditToken:(id *)token message:(id)message completion:(id)completion;
- (BOOL)startServerWithError:(id *)error;
- (BOOL)stopServerWithError:(id *)error;
- (NSString)description;
- (id)_clientIdentificationForAuditToken:(id *)token;
- (id)clientInvalidationCallback;
- (id)defaultHandler;
- (void)_addPossibleRequiredEntitlementsToMessageWithKey:(int)key first:(id)first vothers:(char *)vothers;
- (void)_applyCustomQueueSize;
- (void)_handleClientInvalidation:(unsigned int)invalidation;
- (void)_handleClientRegistration:(id)registration;
- (void)_handleIncomingMessage:(id)message securityToken:(id)token auditToken:(id *)auditToken clientPort:(unsigned int)port completion:(id)completion;
- (void)_processValidatedMessage:(id)message completion:(id)completion;
- (void)_registerContext:(id)context forKey:(int)key;
- (void)_startServerThread;
- (void)addPossibleRequiredEntitlement:(id)entitlement forMessageWithKey:(int)key;
- (void)dealloc;
- (void)removeAllHandlersForTarget:(id)target;
- (void)removeHandlerForKey:(int)key;
- (void)removePossibleRequiredEntitlement:(id)entitlement forMessageWithKey:(int)key;
- (void)serverClientRegistrationInvalidated:(id)invalidated;
- (void)setClientInvalidationCallback:(id)callback;
- (void)setDefaultHandler:(id)handler;
- (void)setHandler:(id)handler forKey:(int)key;
- (void)setHandlerWithTarget:(id)target selector:(SEL)selector async:(BOOL)async forKey:(int)key;
- (void)setHandlerWithTarget:(id)target selector:(SEL)selector async:(BOOL)async forKey:(int)key possibleRequiredEntitlements:(id)entitlements;
- (void)setHandlerWithTarget:(id)target selector:(SEL)selector forKey:(int)key possibleRequiredEntitlements:(id)entitlements;
- (void)setServiceRunLoopSource:(__CFRunLoopSource *)source;
@end

@implementation AXIPCServer

- (AXIPCServer)initWithServiceName:(id)name perPidService:(BOOL)service
{
  serviceCopy = service;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = AXIPCServer;
  v7 = [(AXIPCServer *)&v12 init];
  v8 = v7;
  if (v7)
  {
    [(AXIPCServer *)v7 setServiceName:nameCopy];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(AXIPCServer *)v8 setHandlers:dictionary];

    [(AXIPCServer *)v8 setPerPidService:serviceCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(AXIPCServer *)v8 setDelayedMessages:array];
  }

  return v8;
}

- (AXIPCServer)initWithPort:(unsigned int)port serviceRunLoopSource:(__CFRunLoopSource *)source
{
  v6 = [(AXIPCServer *)self initWithServiceName:0 perPidService:0];
  v7 = v6;
  if (v6)
  {
    v6->_assignedServerPort = port;
    if (source)
    {
      v6->_serverRunLoopSource = CFRetain(source);
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
  serviceName = [(AXIPCServer *)self serviceName];
  isRunning = [(AXIPCServer *)self isRunning];
  v7 = @"NO";
  if (isRunning)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"%@. Serivce Name:%@. Running:%@ Server Port:%d. Clients:%@. Entitlements:%@. RunLoopSource:%p", v4, serviceName, v7, self->_serverPort, self->_connectedClients, self->_entitlements, self->_serverRunLoopSource];

  return v8;
}

- (void)setServiceRunLoopSource:(__CFRunLoopSource *)source
{
  if (self->_serverRunLoopSource)
  {
    _AXAssert();
  }

  if (source)
  {
    CFRetain(source);
  }

  self->_serverRunLoopSource = source;
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

- (void)setDefaultHandler:(id)handler
{
  handlerCopy = handler;
  defaultHandler = self->_defaultHandler;
  if (defaultHandler != handlerCopy)
  {
    v8 = handlerCopy;
    if (defaultHandler)
    {
      self->_defaultHandler = 0;

      handlerCopy = v8;
    }

    if (handlerCopy)
    {
      v6 = [v8 copy];
      v7 = self->_defaultHandler;
      self->_defaultHandler = v6;

      handlerCopy = v8;
    }
  }
}

- (id)clientInvalidationCallback
{
  v2 = _Block_copy(self->_clientInvalidationHandler);

  return v2;
}

- (void)setClientInvalidationCallback:(id)callback
{
  callbackCopy = callback;
  clientInvalidationHandler = self->_clientInvalidationHandler;
  if (clientInvalidationHandler != callbackCopy)
  {
    v8 = callbackCopy;
    if (clientInvalidationHandler)
    {
      self->_clientInvalidationHandler = 0;

      callbackCopy = v8;
    }

    if (callbackCopy)
    {
      v6 = [v8 copy];
      v7 = self->_clientInvalidationHandler;
      self->_clientInvalidationHandler = v6;

      callbackCopy = v8;
    }
  }
}

- (BOOL)startServerWithError:(id *)error
{
  serviceName = [(AXIPCServer *)self serviceName];
  if ([serviceName length])
  {
  }

  else
  {
    assignedServerPort = self->_assignedServerPort;

    if (!assignedServerPort)
    {
      v7 = @"Cannot start server. Service name was empty";
      return ![(AXIPCServer *)self _handleErrorWithMessage:v7 outError:error];
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

  return ![(AXIPCServer *)self _handleErrorWithMessage:v7 outError:error];
}

- (BOOL)stopServerWithError:(id *)error
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

  return ![(AXIPCServer *)self _handleErrorWithMessage:v6 outError:error];
}

- (void)setHandler:(id)handler forKey:(int)key
{
  v4 = *&key;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v4];
    v7 = [[AXIPCServerMessageHandlerContext alloc] initWithHandler:handlerCopy];
    handlers = [(AXIPCServer *)self handlers];
    [handlers setObject:v7 forKey:v6];
  }

  else
  {
    [(AXIPCServer *)self removeHandlerForKey:v4];
  }
}

- (void)removeHandlerForKey:(int)key
{
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*&key];
  handlers = [(AXIPCServer *)self handlers];
  [handlers removeObjectForKey:v5];
}

- (void)_registerContext:(id)context forKey:(int)key
{
  v4 = *&key;
  v6 = MEMORY[0x1E696AD98];
  contextCopy = context;
  v9 = [[v6 alloc] initWithInt:v4];
  handlers = [(AXIPCServer *)self handlers];
  [handlers setObject:contextCopy forKey:v9];
}

- (void)_addPossibleRequiredEntitlementsToMessageWithKey:(int)key first:(id)first vothers:(char *)vothers
{
  v6 = *&key;
  firstCopy = first;
  [(AXIPCServer *)self addPossibleRequiredEntitlement:firstCopy forMessageWithKey:v6];
  v12 = vothers + 8;
  v9 = *vothers;
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

- (void)setHandlerWithTarget:(id)target selector:(SEL)selector async:(BOOL)async forKey:(int)key
{
  v6 = *&key;
  asyncCopy = async;
  targetCopy = target;
  if (targetCopy && selector)
  {
    v10 = [[AXIPCServerMessageHandlerContext alloc] initWithTarget:targetCopy selector:selector async:asyncCopy];
    [(AXIPCServer *)self _registerContext:v10 forKey:v6];
  }

  else
  {
    [(AXIPCServer *)self removeHandlerForKey:v6];
  }
}

- (void)setHandlerWithTarget:(id)target selector:(SEL)selector forKey:(int)key possibleRequiredEntitlements:(id)entitlements
{
  v6 = *&key;
  entitlementsCopy = entitlements;
  [(AXIPCServer *)self setHandlerWithTarget:target selector:selector forKey:v6];
  if (entitlementsCopy)
  {
    [(AXIPCServer *)self _addPossibleRequiredEntitlementsToMessageWithKey:v6 first:entitlementsCopy vothers:&v11];
  }
}

- (void)setHandlerWithTarget:(id)target selector:(SEL)selector async:(BOOL)async forKey:(int)key possibleRequiredEntitlements:(id)entitlements
{
  v7 = *&key;
  asyncCopy = async;
  entitlementsCopy = entitlements;
  [(AXIPCServer *)self setHandlerWithTarget:target selector:selector async:asyncCopy forKey:v7];
  if (entitlementsCopy)
  {
    [(AXIPCServer *)self _addPossibleRequiredEntitlementsToMessageWithKey:v7 first:entitlementsCopy vothers:&v13];
  }
}

- (void)removeAllHandlersForTarget:(id)target
{
  v25 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  handlers = [(AXIPCServer *)self handlers];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__AXIPCServer_removeAllHandlersForTarget___block_invoke;
  v15[3] = &unk_1E71EB098;
  v6 = targetCopy;
  v16 = v6;
  v17 = &v18;
  [handlers enumerateKeysAndObjectsUsingBlock:v15];
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

        [handlers removeObjectForKey:{*(*(&v11 + 1) + 8 * v10++), v11}];
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

- (void)addPossibleRequiredEntitlement:(id)entitlement forMessageWithKey:(int)key
{
  v4 = *&key;
  entitlementCopy = entitlement;
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

  [v9 addObject:entitlementCopy];
}

- (void)removePossibleRequiredEntitlement:(id)entitlement forMessageWithKey:(int)key
{
  v4 = *&key;
  entitlementCopy = entitlement;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v7 = [(NSMutableDictionary *)self->_entitlements objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    [v7 removeObject:entitlementCopy];
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

- (BOOL)_clientHasEntitlementWithPort:(unsigned int)port auditToken:(id *)token message:(id)message completion:(id)completion
{
  v8 = *&port;
  v31 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  completionCopy = completion;
  v12 = [messageCopy key];
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
    anyObject = [v18 anyObject];

    v20 = *&token->var0[4];
    *buf = *token->var0;
    *&buf[16] = v20;
    v21 = [(AXIPCServer *)self _hasEntitlement:anyObject entitlements:v16 clientPort:v8 auditToken:buf message:messageCopy completion:completionCopy];
    if (!v21)
    {
      v22 = AXLogIPC();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = *&token->var0[4];
        *buf = *token->var0;
        *&buf[16] = v24;
        v25 = [(AXIPCServer *)self _clientIdentificationForAuditToken:buf];
        v26 = [v16 description];
        v27 = [v26 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
        *buf = 138543874;
        *&buf[4] = v25;
        *&buf[12] = 2114;
        *&buf[14] = messageCopy;
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

- (BOOL)_hasEntitlement:(id)entitlement entitlements:(id)entitlements clientPort:(unsigned int)port auditToken:(id *)token message:(id)message completion:(id)completion
{
  v77 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  entitlementsCopy = entitlements;
  messageCopy = message;
  completionCopy = completion;
  v45 = entitlementsCopy;
  v42 = entitlementCopy;
  if (entitlementCopy)
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
    v17 = entitlementsCopy;
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
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:port];
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
    v24 = *&token->var0[4];
    v65 = *token->var0;
    v66 = v24;
    aBlock[4] = self;
    v48 = _Block_copy(aBlock);
    *&buf = 0;
    *(&buf + 1) = &buf;
    *&v75 = 0x2020000000;
    BYTE8(v75) = 0;
    delayedMessages = [(AXIPCServer *)self delayedMessages];
    v26 = [[AXIPCDelayedMessage alloc] initWithMessage:messageCopy completion:completionCopy];
    [delayedMessages addObject:v26];

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

            v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:port];
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
      v35 = *&token->var0[4];
      buf = *token->var0;
      v75 = v35;
      v36 = [(AXIPCServer *)self _clientIdentificationForAuditToken:&buf];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v36;
      _os_log_impl(&dword_18B15E000, v34, OS_LOG_TYPE_INFO, "taking entitlement slowpath for %{public}@", &buf, 0xCu);
    }

    v37 = *&token->var0[4];
    buf = *token->var0;
    v75 = v37;
    v33 = [(AXIPCServer *)self __slowpath__clientWithAuditToken:&buf hasRequiredEntitlementFromSet:entitlementsCopy];
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

- (BOOL)__slowpath__clientWithAuditToken:(id *)token hasRequiredEntitlementFromSet:(id)set
{
  v32 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v6 = *MEMORY[0x1E695E480];
  v7 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(v6, &token);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = setCopy;
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
            v20 = *&token->var0[4];
            *token.val = *token->var0;
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

- (void)_handleClientInvalidation:(unsigned int)invalidation
{
  v38 = *MEMORY[0x1E69E9840];
  connectedClients = self->_connectedClients;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __41__AXIPCServer__handleClientInvalidation___block_invoke;
  v31[3] = &__block_descriptor_36_e12_B24__0_8_B16l;
  invalidationCopy = invalidation;
  v5 = [(NSMutableSet *)connectedClients objectsPassingTest:v31];
  anyObject = [v5 anyObject];

  if (anyObject)
  {
    clientInvalidationHandler = self->_clientInvalidationHandler;
    if (clientInvalidationHandler)
    {
      port = [anyObject port];
      identifier = [anyObject identifier];
      clientInvalidationHandler[2](clientInvalidationHandler, port, identifier);
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
          v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(anyObject, "port")}];
          v18 = [v16 containsObject:v17];

          if (v18)
          {
            v19 = AXLogIPC();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              identifier2 = [anyObject identifier];
              *buf = v25;
              v34 = v15;
              v35 = 2114;
              v36 = identifier2;
              _os_log_impl(&dword_18B15E000, v19, OS_LOG_TYPE_INFO, "Cleaned up cached validation entitlement for %{public}@ = %{public}@", buf, 0x16u);
            }

            v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(anyObject, "port")}];
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
      identifier3 = [anyObject identifier];
      *buf = 138543362;
      v34 = identifier3;
      _os_log_impl(&dword_18B15E000, v22, OS_LOG_TYPE_INFO, "Client disconnected %{public}@", buf, 0xCu);
    }

    [(NSMutableSet *)self->_connectedClients removeObject:anyObject];
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
  v3 = *self;
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

- (void)serverClientRegistrationInvalidated:(id)invalidated
{
  port = [invalidated port];

  [(AXIPCServer *)self _handleClientInvalidation:port];
}

- (void)_handleClientRegistration:(id)registration
{
  registrationCopy = registration;
  if (!self->_connectedClients)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    connectedClients = self->_connectedClients;
    self->_connectedClients = v5;
  }

  clientPort = [registrationCopy clientPort];
  payload = [registrationCopy payload];
  v9 = [payload objectForKey:@"identifier"];

  if (![registrationCopy clientPort] || objc_msgSend(registrationCopy, "clientPort") == -1)
  {
    v10 = AXLogIPC();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      [AXIPCServer _handleClientRegistration:registrationCopy];
    }
  }

  else
  {
    v10 = [[AXIPCServerClientRegistration alloc] initWithPort:clientPort identifier:v9];
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

- (void)_handleIncomingMessage:(id)message securityToken:(id)token auditToken:(id *)auditToken clientPort:(unsigned int)port completion:(id)completion
{
  v7 = *&port;
  completionCopy = completion;
  if (completionCopy)
  {
    v12 = completionCopy;
  }

  else
  {
    v12 = &__block_literal_global_150;
  }

  v13 = [AXIPCMessage archivedMessageFromData:message];
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
    v17 = *&auditToken->var0[4];
    v21 = *auditToken->var0;
    v22 = v17;
    if ([(AXIPCServer *)self _clientHasEntitlementWithPort:v7 auditToken:&v21 message:v15 completion:v12])
    {
      if ([v15 processedMessage])
      {
        v16[2](v16, 1);
      }

      else
      {
        v20 = *&auditToken->var0[4];
        v21 = *auditToken->var0;
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

- (void)_processValidatedMessage:(id)message completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  completionCopy = completion;
  [messageCopy setProcessedMessage:1];
  v8 = [messageCopy key];
  if (v8 == AXIPCRegisterClientWithServer)
  {
    [(AXIPCServer *)self _handleClientRegistration:messageCopy];
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(messageCopy, "key")}];
    handlers = [(AXIPCServer *)self handlers];
    v11 = [handlers objectForKey:v9];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__AXIPCServer__processValidatedMessage_completion___block_invoke;
    aBlock[3] = &unk_1E71EB1A0;
    v24 = completionCopy;
    v12 = _Block_copy(aBlock);
    target = [v11 target];
    selector = [v11 selector];
    if (target && (v15 = selector) != 0)
    {
      if (objc_opt_respondsToSelector())
      {
        async = [v11 async];
        v17 = [target methodForSelector:v15];
        if (async)
        {
          v18 = _Block_copy(v12);
          v19 = v17(target, v15, messageCopy, v18);
        }

        else
        {
          v18 = (v17)(target, v15, messageCopy);
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
      handler = [v11 handler];
      if (!handler)
      {
        v21 = AXLogIPC();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [messageCopy key];
          *buf = 67109120;
          v26 = v22;
          _os_log_impl(&dword_18B15E000, v21, OS_LOG_TYPE_DEFAULT, "Warning: no handler was for message key: (%d). Falling back to default handler", buf, 8u);
        }

        handler = [(AXIPCServer *)self defaultHandler];
      }

      v18 = (handler)[2](handler, messageCopy);
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

- (BOOL)_handleErrorWithMessage:(id)message outError:(id *)error
{
  messageCopy = message;
  if (messageCopy)
  {
    v6 = AXLogIPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AXIPCServer _handleErrorWithMessage:outError:];
    }

    if (error)
    {
      v7 = [MEMORY[0x1E69887C8] errorWithDescription:{@"%@", messageCopy}];
LABEL_8:
      v8 = v7;
      *error = v8;
    }
  }

  else if (error)
  {
    v7 = 0;
    goto LABEL_8;
  }

  return messageCopy != 0;
}

- (id)_clientIdentificationForAuditToken:(id *)token
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:token->var0[5]];
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