@interface AXIPCClient
+ (id)allClients;
+ (void)initialize;
- (AXIPCClient)initWithPort:(unsigned int)port;
- (AXIPCClient)initWithServiceName:(id)name;
- (BOOL)_handleErrorWithMessage:(id)message machError:(int)error outError:(id *)outError;
- (BOOL)_handleErrorWithMessage:(id)message outError:(id *)error;
- (BOOL)_prepareToSendMessage:(id)message withError:(id *)error prepSuccessHandler:(id)handler;
- (BOOL)_verifyConnectionWithError:(id *)error;
- (BOOL)connectWithError:(id *)error;
- (BOOL)disconnectWithError:(id *)error;
- (BOOL)sendAsyncMessage:(id)message replyOnQueue:(id)queue replyHandler:(id)handler;
- (BOOL)sendAsyncMessage:(id)message withReplyHandler:(id)handler;
- (BOOL)sendSimpleMessage:(id)message synchronizationPort:(unsigned int)port error:(id *)error;
- (BOOL)verifyConnectionExists;
- (NSString)clientIdentifier;
- (__CFRunLoopSource)clientCallbackSource;
- (id)_createRegistrationWithReplyMachPort:(unsigned int)port forAsyncReplyOnQueue:(id)queue responseHandler:(id)handler;
- (id)_descriptionForMachError:(int)error;
- (id)description;
- (id)sendMessage:(id)message withError:(id *)error;
- (unsigned)clientCallbackPort;
- (unsigned)serviceMachPort;
- (void)_attemptToEstablishConnection;
- (void)_commonInit;
- (void)_registerWithServer;
- (void)_sendRegistrationMessageWithRetries:(int)retries;
- (void)_serverDied;
- (void)dealloc;
- (void)establishConnectionWithTimeout:(double)timeout completion:(id)completion;
- (void)setClientIdentifier:(id)identifier;
- (void)setPortDeathHandler:(id)handler;
@end

@implementation AXIPCClient

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___AXIPCClient;
  objc_msgSendSuper2(&v2, sel_initialize);
  if (initialize__AXIPCClientInitializeOnceToken != -1)
  {
    +[AXIPCClient initialize];
  }
}

uint64_t __25__AXIPCClient_initialize__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = AllClientLock;
  AllClientLock = v0;

  AllClients = [MEMORY[0x1E696AE08] weakObjectsPointerArray];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)allClients
{
  [AllClientLock lock];
  allObjects = [AllClients allObjects];
  [AllClientLock unlock];

  return allObjects;
}

- (void)_commonInit
{
  self->_timeout = 0.25;
  [AllClientLock lock];
  [AllClients addPointer:self];
  [AllClientLock unlock];
  array = [MEMORY[0x1E695DF70] array];
  [(AXIPCClient *)self setPostConnectionTasks:array];

  v4 = [objc_alloc(MEMORY[0x1E6988748]) initWithParentClass:objc_opt_class() description:@"connection" appendUUIDToLabel:1];
  [(AXIPCClient *)self setConnectionQueue:v4];
  self->_connectionAttempts = 0;
  self->_clientIdentifierLock._os_unfair_lock_opaque = 0;
  self->_connectionServiceLock._os_unfair_lock_opaque = 0;
}

- (AXIPCClient)initWithServiceName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = AXIPCClient;
  v5 = [(AXIPCClient *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_assignedServerMachPort = 0;
    [(AXIPCClient *)v5 setServiceName:nameCopy];
    [(AXIPCClient *)v6 _commonInit];
  }

  return v6;
}

- (AXIPCClient)initWithPort:(unsigned int)port
{
  v6.receiver = self;
  v6.super_class = AXIPCClient;
  v4 = [(AXIPCClient *)&v6 init];
  if (v4)
  {
    AXIncrefSendRight(port);
    v4->_assignedServerMachPort = port;
    [(AXIPCClient *)v4 _commonInit];
  }

  return v4;
}

- (void)dealloc
{
  v32 = *MEMORY[0x1E69E9840];
  [AllClientLock lock];
  [AllClients compact];
  [AllClientLock unlock];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __22__AXIPCClient_dealloc__block_invoke;
  v24 = &unk_1E71EA818;
  selfCopy = self;
  v26 = &v27;
  AX_PERFORM_WITH_LOCK();
  if (!v28[3])
  {
    goto LABEL_17;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = +[AXIPCClient allClients];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v31 count:16];
  if (v4)
  {
    v5 = *v18;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if (v8 != self)
        {
          serverPort = [(AXIPCClient *)v8 serverPort];
          v6 &= serverPort != v28[3];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v17 objects:v31 count:16];
    }

    while (v4);

    if ((v6 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  CFMachPortInvalidate(v28[3]);
LABEL_15:
  v10 = v28[3];
  if (v10)
  {
    CFRelease(v10);
    v28[3] = 0;
  }

LABEL_17:
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __22__AXIPCClient_dealloc__block_invoke_2;
  v15 = &unk_1E71E9B98;
  selfCopy2 = self;
  AX_PERFORM_WITH_LOCK();
  _Block_object_dispose(&v27, 8);
  v11.receiver = self;
  v11.super_class = AXIPCClient;
  [(AXIPCClient *)&v11 dealloc];
}

void __22__AXIPCClient_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    CFRunLoopSourceInvalidate(v3);
    v2 = *(a1 + 32);
    v4 = *(v2 + 48);
    if (v4)
    {
      CFRelease(v4);
      *(*(a1 + 32) + 48) = 0;
      v2 = *(a1 + 32);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = *(v2 + 8);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *(*(a1 + 32) + 8);
  if (v6)
  {
    CFRelease(v6);
    *(*(a1 + 32) + 8) = 0;
  }
}

uint64_t __22__AXIPCClient_dealloc__block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 32) + 16);
  if (v1)
  {
    result = mach_port_deallocate(*MEMORY[0x1E69E9A60], v1);
    if (result)
    {
      return _AXAssert();
    }
  }

  return result;
}

- (id)description
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v9 = MEMORY[0x1E69E9820];
  AX_PERFORM_WITH_LOCK();
  v3 = MEMORY[0x1E696AEC0];
  serviceName = self->_serviceName;
  v5 = v12[5];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_connected];
  v7 = [v3 stringWithFormat:@"AXIPCClient:<%p> Service:%@ ID:%@ connected:%@", self, serviceName, v5, v6, v9, 3221225472, __26__AXIPCClient_description__block_invoke, &unk_1E71EA1D8, self, &v11];

  _Block_object_dispose(&v11, 8);

  return v7;
}

uint64_t __26__AXIPCClient_description__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 40) copy];

  return MEMORY[0x1EEE66BB8]();
}

- (unsigned)serviceMachPort
{
  serverPort = self->_serverPort;
  if (serverPort)
  {
    LODWORD(serverPort) = CFMachPortGetPort(serverPort);
  }

  return serverPort;
}

- (NSString)clientIdentifier
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__7;
  v8 = __Block_byref_object_dispose__7;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

uint64_t __31__AXIPCClient_clientIdentifier__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 40) copy];

  return MEMORY[0x1EEE66BB8]();
}

- (void)setClientIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = AXLogIPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = identifierCopy;
    _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "Setting client identifier %{public}@", buf, 0xCu);
  }

  v7 = MEMORY[0x1E69E9820];
  v8 = identifierCopy;
  v6 = identifierCopy;
  AX_PERFORM_WITH_LOCK();
  [(AXIPCClient *)self _registerWithServer:v7];
}

void __35__AXIPCClient_setClientIdentifier___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v3 = v2 + 1;
  v4 = *(v2[1] + 5);
  if (v1 != v4)
  {
    if (v4)
    {
      v5 = AXLogIPC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __35__AXIPCClient_setClientIdentifier___block_invoke_cold_1((v2 + 1), v2, v5);
      }

      v1 = *v2;
    }

    v6 = [v1 copy];
    v7 = *(*v3 + 40);
    *(*v3 + 40) = v6;
  }
}

- (__CFRunLoopSource)clientCallbackSource
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v6[3];
  if (v2)
  {
    CFAutorelease(v2);
    v3 = v6[3];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v3;
}

CFTypeRef __35__AXIPCClient_clientCallbackSource__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  if (result)
  {
    result = CFRetain(result);
    v3 = *(*(a1 + 32) + 48);
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (unsigned)clientCallbackPort
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __33__AXIPCClient_clientCallbackPort__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 48))
  {
    *(*(*(a1 + 40) + 8) + 24) = MSHGetMachPortFromSource();
  }

  else
  {
    v1 = AXLogIPC();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_18B15E000, v1, OS_LOG_TYPE_INFO, "AX Asked for client callback port but we had not yet registered", v2, 2u);
    }
  }
}

- (void)_registerWithServer
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = AXLogIPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    currentThread2 = [MEMORY[0x1E696AF00] currentThread];
    name = [currentThread2 name];
    v7 = MEMORY[0x1E696AD98];
    currentThread3 = [MEMORY[0x1E696AF00] currentThread];
    v9 = [v7 numberWithBool:{objc_msgSend(currentThread3, "isMainThread")}];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXIPCClient shouldRegisterCallbackSourceOnMainRunloop](self, "shouldRegisterCallbackSourceOnMainRunloop")}];
    *buf = 138544386;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = currentThread;
    *&buf[22] = 2114;
    v27 = name;
    v28 = 2114;
    v29 = v9;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "Client (%{public}@) registering with server on thread (%{public}@:name:%{public}@:main:%{public}@). UsesMainThreadRunloop:%{public}@", buf, 0x34u);
  }

  clientIdentifier = [(AXIPCClient *)self clientIdentifier];
  v12 = clientIdentifier == 0;

  if (!v12)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v27) = 0;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __34__AXIPCClient__registerWithServer__block_invoke;
    v23 = &unk_1E71EA1D8;
    selfCopy = self;
    v25 = buf;
    AX_PERFORM_WITH_LOCK();
    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      v19 = 1024;
      v13 = MSHCreateMIGServerSource();
      if (v13)
      {
        v14 = MSHGetMachPortFromSource();
        MEMORY[0x18CFF4250](*MEMORY[0x1E69E9A60], v14, 1, &v19, 4);
        if ([(AXIPCClient *)self shouldRegisterCallbackSourceOnMainRunloop])
        {
          Main = CFRunLoopGetMain();
        }

        else
        {
          Main = CFRunLoopGetCurrent();
        }

        CFRunLoopAddSource(Main, v13, *MEMORY[0x1E695E8D0]);
        v17 = MEMORY[0x1E69E9820];
        AX_PERFORM_WITH_LOCK();
        [(AXIPCClient *)self _sendRegistrationMessageWithRetries:10, v17, 3221225472, __34__AXIPCClient__registerWithServer__block_invoke_110, &unk_1E71EAF98, self, v13];
      }

      else
      {
        v16 = AXLogIPC();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&dword_18B15E000, v16, OS_LOG_TYPE_DEFAULT, "Could not create a server source for the client to register with the server", v18, 2u);
        }
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)_sendRegistrationMessageWithRetries:(int)retries
{
  v26[1] = *MEMORY[0x1E69E9840];
  clientIdentifier = [(AXIPCClient *)self clientIdentifier];
  if (!clientIdentifier)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = @"client identifer was NULL";
    goto LABEL_13;
  }

  if (![(AXIPCClient *)self verifyConnectionExists])
  {
    v15 = AXLogIPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = clientIdentifier;
      _os_log_impl(&dword_18B15E000, v15, OS_LOG_TYPE_DEFAULT, "Could not register with server with client identifier: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = @"Couldn't register as connection did not exist";
LABEL_13:
    v10 = [v13 ax_errorWithDomain:@"AXIPCErrorDomain" description:v14];
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v6 = [AXIPCMessage alloc];
  v7 = AXIPCRegisterClientWithServer;
  v25 = @"identifier";
  v26[0] = clientIdentifier;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v9 = [(AXIPCMessage *)v6 initWithKey:v7 payload:v8];

  v18 = 0;
  [(AXIPCClient *)self sendSimpleMessage:v9 withError:&v18];
  v10 = v18;
  if (v10)
  {
    v11 = AXLogIPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      ax_nonRedundantDescription = [v10 ax_nonRedundantDescription];
      *buf = 138543362;
      v20 = ax_nonRedundantDescription;
      _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_DEFAULT, "Could not register with server: %{public}@", buf, 0xCu);
    }
  }

  if (v10)
  {
LABEL_14:
    v16 = AXLogIPC();
    v17 = v16;
    if (retries < 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(AXIPCClient *)clientIdentifier _sendRegistrationMessageWithRetries:v10, v17];
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v20 = clientIdentifier;
        v21 = 1024;
        retriesCopy = retries;
        v23 = 2114;
        v24 = v10;
        _os_log_impl(&dword_18B15E000, v17, OS_LOG_TYPE_DEFAULT, "Could not register with server for %{public}@. %d tries remaining: %{public}@", buf, 0x1Cu);
      }

      AXPerformBlockOnMainThreadAfterDelay();
    }
  }

LABEL_21:
}

void __51__AXIPCClient__sendRegistrationMessageWithRetries___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _sendRegistrationMessageWithRetries:(*(a1 + 40) - 1)];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)verifyConnectionExists
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(AXIPCClient *)self isConnected])
  {
    return 1;
  }

  v8 = 0;
  v3 = [(AXIPCClient *)self connectWithError:&v8];
  v4 = v8;
  if (!v3)
  {
    v5 = AXLogIPC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      ax_nonRedundantDescription = [v4 ax_nonRedundantDescription];
      *buf = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = ax_nonRedundantDescription;
      _os_log_impl(&dword_18B15E000, v5, OS_LOG_TYPE_DEFAULT, "client could not connect to new service: %{public}@ %{public}@", buf, 0x16u);
    }
  }

  return v3;
}

- (BOOL)connectWithError:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  serviceName = [(AXIPCClient *)self serviceName];
  if (![serviceName length] && !self->_assignedServerMachPort)
  {
    v6 = 0;
    v7 = @"Client could not connect. Was initialized with an empty service name.";
    goto LABEL_19;
  }

  if ([(AXIPCClient *)self isConnected])
  {
    v6 = 0;
    v7 = @"Client could not connect. It is already connected";
    goto LABEL_19;
  }

  assignedServerMachPort = self->_assignedServerMachPort;
  sp = assignedServerMachPort;
  if (assignedServerMachPort)
  {
    v6 = 0;
  }

  else
  {
    usesPerPidLookup = [(AXIPCClient *)self usesPerPidLookup];
    v10 = *MEMORY[0x1E69E99F8];
    uTF8String = [serviceName UTF8String];
    if (usesPerPidLookup)
    {
      [(AXIPCClient *)self pid];
      v12 = bootstrap_look_up2();
    }

    else
    {
      v12 = bootstrap_look_up(v10, uTF8String, &sp);
    }

    v6 = v12;
    assignedServerMachPort = sp;
    if (!sp || v12)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find server for service: %@. bootstrap error: %s", serviceName, bootstrap_strerror(v12)];
      assignedServerMachPort = sp;
      if (!sp)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  v7 = 0;
LABEL_14:
  v13 = CFMachPortCreateWithPort(*MEMORY[0x1E695E480], assignedServerMachPort, 0, 0, 0);
  self->_serverPort = v13;
  if (v13)
  {
    CFMachPortSetInvalidationCallBack(v13, AXIPCClient_handlePortInvalidCallback);
    v14 = AXLogIPC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      serverPort = self->_serverPort;
      *buf = 138543618;
      v20 = serverPort;
      v21 = 1024;
      v22 = sp;
      _os_log_impl(&dword_18B15E000, v14, OS_LOG_TYPE_INFO, "Connected to server: %{public}@ %d", buf, 0x12u);
    }

    [(AXIPCClient *)self setConnected:1];
    [(AXIPCClient *)self _registerWithServer];
  }

  else
  {

    v7 = @"Could not make mach port";
  }

LABEL_19:
  v16 = [(AXIPCClient *)self _handleErrorWithMessage:v7 machError:v6 outError:error];

  return !v16;
}

- (BOOL)disconnectWithError:(id *)error
{
  if ([(AXIPCClient *)self isConnected])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9 = MEMORY[0x1E69E9820];
    AX_PERFORM_WITH_LOCK();
    v5 = v11[3];
    if (v5)
    {
      CFMachPortInvalidate(v5);
      v6 = v11[3];
      if (v6)
      {
        CFRelease(v6);
        v11[3] = 0;
      }
    }

    [(AXIPCClient *)self setConnected:0, v9, 3221225472, __35__AXIPCClient_disconnectWithError___block_invoke, &unk_1E71EA1D8, self, &v10];
    _Block_object_dispose(&v10, 8);
    v7 = 0;
  }

  else
  {
    v7 = @"Client could not disconnect. It is already disconnected";
  }

  return ![(AXIPCClient *)self _handleErrorWithMessage:v7 outError:error];
}

uint64_t __35__AXIPCClient_disconnectWithError___block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 8);
  *(*(result + 32) + 8) = 0;
  return result;
}

- (BOOL)_verifyConnectionWithError:(id *)error
{
  if (self->_serverPort)
  {
    if ([(AXIPCClient *)self isConnected])
    {
      v5 = 0;
    }

    else
    {
      v5 = @"Could not verify connection. client is not connected";
    }
  }

  else
  {
    v5 = @"Could not verify connection. server port was nil";
  }

  return ![(AXIPCClient *)self _handleErrorWithMessage:v5 outError:error];
}

- (BOOL)_prepareToSendMessage:(id)message withError:(id *)error prepSuccessHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  if ([(AXIPCClient *)self _verifyConnectionWithError:error])
  {
    if (messageCopy)
    {
      v26 = 0;
      v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:messageCopy requiringSecureCoding:1 error:&v26];
    }

    else
    {
      v10 = 0;
    }

    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17 = MEMORY[0x1E69E9820];
    AX_PERFORM_WITH_LOCK();
    v12 = *(v19 + 6);
    if (v12)
    {
      v11 = handlerCopy[2](handlerCopy, v12, *(v23 + 6), v10);
    }

    else
    {
      v13 = MEMORY[0x1E696AEC0];
      serviceName = [(AXIPCClient *)self serviceName];
      v15 = [v13 stringWithFormat:@"Could not send simple message (%@). server port is NULL [%@]", serviceName, messageCopy, v17, 3221225472, __66__AXIPCClient__prepareToSendMessage_withError_prepSuccessHandler___block_invoke, &unk_1E71EB278, self, &v18, &v22];
      [(AXIPCClient *)self _handleErrorWithMessage:v15 outError:error];

      v11 = 0;
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __66__AXIPCClient__prepareToSendMessage_withError_prepSuccessHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 8);
  if (v3)
  {
    *(*(a1[5] + 8) + 24) = CFMachPortGetPort(v3);
    v2 = a1[4];
  }

  result = *(v2 + 48);
  if (result)
  {
    result = MSHGetMachPortFromSource();
  }

  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)sendSimpleMessage:(id)message synchronizationPort:(unsigned int)port error:(id *)error
{
  messageCopy = message;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__AXIPCClient_sendSimpleMessage_synchronizationPort_error___block_invoke;
  v11[3] = &unk_1E71EB2A0;
  portCopy = port;
  v11[4] = self;
  v12 = messageCopy;
  errorCopy = error;
  v9 = messageCopy;
  LOBYTE(error) = [(AXIPCClient *)self _prepareToSendMessage:v9 withError:error prepSuccessHandler:v11];

  return error;
}

BOOL __59__AXIPCClient_sendSimpleMessage_synchronizationPort_error___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 56);
  v9 = [v7 bytes];
  v10 = [v7 length];
  if (v8)
  {
    v11 = _AXIPCSimpleSendDataWithFencePort(a2, a3, v8, 0, v9, v10);
  }

  else
  {
    v11 = _AXIPCSimpleSendData(a2, a3, 0, v9, v10);
  }

  v12 = v11;
  if (v11)
  {
    v13 = *(a1 + 32);
    v14 = MEMORY[0x1E696AEC0];
    v15 = [v13 serviceName];
    v16 = [v14 stringWithFormat:@"Could not send simple message (%@). Port:%d. Error:%d (0x%x). \n%@", v15, a2, v12, v12, *(a1 + 40)];
    [v13 _handleErrorWithMessage:v16 machError:v12 outError:*(a1 + 48)];
  }

  return v12 == 0;
}

- (id)sendMessage:(id)message withError:(id *)error
{
  messageCopy = message;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__AXIPCClient_sendMessage_withError___block_invoke;
  v12[3] = &unk_1E71EB2C8;
  v12[4] = self;
  v14 = &v16;
  v7 = messageCopy;
  v13 = v7;
  errorCopy = error;
  v8 = [(AXIPCClient *)self _prepareToSendMessage:v7 withError:error prepSuccessHandler:v12];
  v9 = v17;
  if (!v8 && v17[5])
  {
    _AXAssert();
    v9 = v17;
  }

  v10 = v9[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __37__AXIPCClient_sendMessage_withError___block_invoke(uint64_t a1, uint64_t a2, int a3, id a4)
{
  v23 = 0;
  v22 = 0;
  v8 = (*(*(a1 + 32) + 32) * 1000.0);
  v9 = a4;
  v10 = a4;
  v11 = [v10 bytes];
  v12 = [v10 length];

  v13 = _AXIPCSendData(a2, a3, v8, v11, v12, &v23, &v22);
  if (v13)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = [*(a1 + 32) serviceName];
    v16 = [v14 stringWithFormat:@"Could not send message (%@). Port:%d. Error:%d (0x%x). Timeout:%f(%d). \n%@\n", v15, a2, v13, v13, *(*(a1 + 32) + 32), v8, *(a1 + 40)];
  }

  else
  {
    if (!v22)
    {
      v16 = 0;
      goto LABEL_8;
    }

    v15 = [MEMORY[0x1E695DEF0] dataWithBytes:v23 length:?];
    MEMORY[0x18CFF4C60](*MEMORY[0x1E69E9A60], v23, v22);
    v17 = [AXIPCMessage archivedMessageFromData:v15];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v16 = 0;
    }

    else
    {
      v16 = @"Reply data could not be converted into a message";
    }
  }

LABEL_8:
  v20 = [*(a1 + 32) _handleErrorWithMessage:v16 machError:v13 outError:*(a1 + 56)];

  return v20 ^ 1u;
}

- (BOOL)sendAsyncMessage:(id)message withReplyHandler:(id)handler
{
  v7 = dispatch_get_global_queue(0, 0);
  LOBYTE(handler) = [(AXIPCClient *)self sendAsyncMessage:message replyOnQueue:v7 replyHandler:handler];

  return handler;
}

- (BOOL)sendAsyncMessage:(id)message replyOnQueue:(id)queue replyHandler:(id)handler
{
  messageCopy = message;
  queueCopy = queue;
  handlerCopy = handler;
  v27 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__AXIPCClient_sendAsyncMessage_replyOnQueue_replyHandler___block_invoke;
  v22[3] = &unk_1E71EB2F0;
  v22[4] = self;
  v11 = queueCopy;
  v23 = v11;
  v12 = handlerCopy;
  v25 = v12;
  v13 = messageCopy;
  v24 = v13;
  v26 = &v27;
  v14 = [(AXIPCClient *)self _prepareToSendMessage:v13 withError:&v27 prepSuccessHandler:v22];
  v15 = v27;
  if (!v14 && !v27)
  {
    _AXAssert();
    v15 = v27;
  }

  if (v15)
  {
    v16 = v15;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __58__AXIPCClient_sendAsyncMessage_replyOnQueue_replyHandler___block_invoke_2;
    v19[3] = &unk_1E71EA390;
    v20 = v16;
    v21 = v12;
    v17 = v16;
    dispatch_async(v11, v19);
  }

  return v14;
}

BOOL __58__AXIPCClient_sendAsyncMessage_replyOnQueue_replyHandler___block_invoke(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = a4;
  name = 0;
  v8 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not allocate reply port: %d", v8];
    if (v10)
    {
LABEL_3:
      [*(a1 + 32) _handleErrorWithMessage:v10 machError:v9 outError:*(a1 + 64)];
    }
  }

  else
  {
    v12 = [*(a1 + 32) _createRegistrationWithReplyMachPort:name forAsyncReplyOnQueue:*(a1 + 40) responseHandler:*(a1 + 56)];
    v9 = _AXIPCSendDataWithAsyncReply(a2, a3, name, 0, [v7 bytes], objc_msgSend(v7, "length"));
    if (v9)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v9];
      v14 = MEMORY[0x1E696AEC0];
      v15 = [*(a1 + 32) serviceName];
      v16 = [*(a1 + 48) description];
      v17 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
      v10 = [v14 stringWithFormat:@"Could not send message (%@). Port:%d. Error:%@.  %@\n", v15, a2, v13, v17];

      [v12 initialSendAborted];
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      goto LABEL_3;
    }
  }

  return v10 == 0;
}

- (id)_createRegistrationWithReplyMachPort:(unsigned int)port forAsyncReplyOnQueue:(id)queue responseHandler:(id)handler
{
  v6 = *&port;
  handlerCopy = handler;
  queueCopy = queue;
  v9 = [[AXIPCOutstandingAsyncRequest alloc] initWithReplyPort:v6 handlerQueue:queueCopy handler:handlerCopy];

  [(AXIPCOutstandingAsyncRequest *)v9 registerAndListenForResponse];

  return v9;
}

- (void)setPortDeathHandler:(id)handler
{
  handlerCopy = handler;
  portDeathHandler = self->_portDeathHandler;
  if (portDeathHandler != handlerCopy)
  {
    v8 = handlerCopy;
    if (portDeathHandler)
    {
      self->_portDeathHandler = 0;

      handlerCopy = v8;
    }

    if (handlerCopy)
    {
      v6 = [v8 copy];
      v7 = self->_portDeathHandler;
      self->_portDeathHandler = v6;

      handlerCopy = v8;
    }
  }
}

- (void)_serverDied
{
  [(AXIPCClient *)self setConnected:0];
  portDeathHandler = [(AXIPCClient *)self portDeathHandler];

  if (portDeathHandler)
  {
    portDeathHandler2 = [(AXIPCClient *)self portDeathHandler];
    portDeathHandler2[2]();
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  AX_PERFORM_WITH_LOCK();
  v5 = v8[3];
  if (v5)
  {
    CFMachPortInvalidate(v5);
    v6 = v8[3];
    if (v6)
    {
      CFRelease(v6);
      v8[3] = 0;
    }
  }

  _Block_object_dispose(&v7, 8);
}

void __26__AXIPCClient__serverDied__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    CFRunLoopSourceInvalidate(v3);
    v2 = *(a1 + 32);
    v4 = *(v2 + 48);
    if (v4)
    {
      CFRelease(v4);
      *(*(a1 + 32) + 48) = 0;
      v2 = *(a1 + 32);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = *(v2 + 8);
  *(*(a1 + 32) + 8) = 0;
}

- (void)_attemptToEstablishConnection
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = &unk_1EFE97600;
  _os_log_error_impl(&dword_18B15E000, log, OS_LOG_TYPE_ERROR, "A connection to the server could not be made after %{public}@s. Calling timeout blocks", &v1, 0xCu);
}

- (void)establishConnectionWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(AXIPCClient *)self isConnected])
    {
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      connectionQueue = [(AXIPCClient *)self connectionQueue];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __57__AXIPCClient_establishConnectionWithTimeout_completion___block_invoke;
      v8[3] = &unk_1E71EB318;
      timeoutCopy = timeout;
      v8[4] = self;
      v9 = completionCopy;
      [connectionQueue performSynchronousWritingBlock:v8];
    }
  }
}

void __57__AXIPCClient_establishConnectionWithTimeout_completion___block_invoke(uint64_t a1)
{
  v2 = [AXPostConnectionTask alloc];
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) connectionQueue];
  v8 = [(AXPostConnectionTask *)v2 initWithConnectBlock:v4 timeout:v5 accessQueue:v3];

  v6 = [*(a1 + 32) postConnectionTasks];
  [v6 addObject:v8];

  v7 = *(a1 + 32);
  if (!v7[7])
  {
    [v7 _attemptToEstablishConnection];
  }
}

- (BOOL)_handleErrorWithMessage:(id)message machError:(int)error outError:(id *)outError
{
  v6 = *&error;
  v7 = [(AXIPCClient *)self _handleErrorWithMessage:message outError:outError];
  v8 = v7;
  if (outError && v7 && *outError)
  {
    userInfo = [*outError userInfo];
    v10 = [userInfo mutableCopy];

    v11 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    [v10 setObject:v11 forKeyedSubscript:@"AXIPCErrorKeyMachError"];

    v12 = MEMORY[0x1E696ABC0];
    domain = [*outError domain];
    *outError = [v12 errorWithDomain:domain code:objc_msgSend(*outError userInfo:{"code"), v10}];
  }

  return v8;
}

- (BOOL)_handleErrorWithMessage:(id)message outError:(id *)error
{
  v12 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (messageCopy)
  {
    v6 = AXLogIPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v11 = messageCopy;
      _os_log_impl(&dword_18B15E000, v6, OS_LOG_TYPE_INFO, "AX IPC Client: %{public}@", buf, 0xCu);
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

- (id)_descriptionForMachError:(int)error
{
  if (error > 15871)
  {
    switch(error)
    {
      case 268435457:
        v5 = @"MACH_SEND_IN_PROGRESS";

        break;
      case 268435458:
        v5 = @"MACH_SEND_INVALID_DATA";

        break;
      case 268435459:
        v5 = @"MACH_SEND_INVALID_DEST";

        break;
      case 268435460:
        v5 = @"MACH_SEND_TIMED_OUT";

        break;
      case 268435461:
      case 268435462:
      case 268435474:
      case 268435475:
      case 268435476:
        goto LABEL_35;
      case 268435463:
        v5 = @"MACH_SEND_INTERRUPTED";

        break;
      case 268435464:
        v5 = @"MACH_SEND_MSG_TOO_SMALL";

        break;
      case 268435465:
        v5 = @"MACH_SEND_INVALID_REPLY";

        break;
      case 268435466:
        v5 = @"MACH_SEND_INVALID_RIGHT";

        break;
      case 268435467:
        v5 = @"MACH_SEND_INVALID_NOTIFY";

        break;
      case 268435468:
        v5 = @"MACH_SEND_INVALID_MEMORY";

        break;
      case 268435469:
        v5 = @"MACH_SEND_NO_BUFFER";

        break;
      case 268435470:
        v5 = @"MACH_SEND_TOO_LARGE";

        break;
      case 268435471:
        v5 = @"MACH_SEND_INVALID_TYPE";

        break;
      case 268435472:
        v5 = @"MACH_SEND_INVALID_HEADER";

        break;
      case 268435473:
        v5 = @"MACH_SEND_INVALID_TRAILER";

        break;
      case 268435477:
        v5 = @"MACH_SEND_INVALID_RT_OOL_SIZE";

        break;
      default:
        switch(error)
        {
          case 268451841:
            v5 = @"MACH_RCV_IN_PROGRESS";

            break;
          case 268451842:
          case 268451844:
          case 268451856:
            goto LABEL_35;
          case 268451843:
            v5 = @"MACH_RCV_TIMED_OUT";

            break;
          case 268451845:
            v5 = @"MACH_RCV_INTERRUPTED";

            break;
          case 268451846:
            v5 = @"MACH_RCV_PORT_CHANGED";

            break;
          case 268451847:
            v5 = @"MACH_RCV_INVALID_NOTIFY";

            break;
          case 268451848:
            v5 = @"MACH_RCV_INVALID_DATA";

            break;
          case 268451849:
            v5 = @"MACH_RCV_PORT_DIED";

            break;
          case 268451850:
            v5 = @"MACH_RCV_IN_SET";

            break;
          case 268451851:
            v5 = @"MACH_RCV_HEADER_ERROR";

            break;
          case 268451852:
            v5 = @"MACH_RCV_BODY_ERROR";

            break;
          case 268451853:
            v5 = @"MACH_RCV_INVALID_TYPE";

            break;
          case 268451854:
            v5 = @"MACH_RCV_SCATTER_SMALL";

            break;
          case 268451855:
            v5 = @"MACH_RCV_INVALID_TRAILER";

            break;
          case 268451857:
            v5 = @"MACH_RCV_IN_PROGRESS_TIMED";

            break;
          default:
            if (error != 15872)
            {
              goto LABEL_35;
            }

            v5 = @"MACH_MSG_MASK";

            break;
        }

        break;
    }
  }

  else if (error <= 2047)
  {
    if (error)
    {
      if (error != 1024)
      {
LABEL_35:
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown mach error :%d (0x%x)", *&error, *&error, v3];

        return v5;
      }

      v5 = @"MACH_MSG_VM_KERNEL";
    }

    else
    {
      v5 = @"MACH_MSG_SUCCESS";
    }
  }

  else
  {
    switch(error)
    {
      case 0x800:
        v5 = @"MACH_MSG_IPC_KERNEL";

        break;
      case 0x1000:
        v5 = @"MACH_MSG_VM_SPACE";

        break;
      case 0x2000:
        v5 = @"MACH_MSG_IPC_SPACE";

        return v5;
      default:
        goto LABEL_35;
    }
  }

  return v5;
}

void __35__AXIPCClient_setClientIdentifier___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(*a1 + 40);
  *&v3[12] = 2114;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_0_6(&dword_18B15E000, a2, a3, "Why are you setting the client identifier twice? Old: %{public}@, New: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

- (void)_sendRegistrationMessageWithRetries:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_6(&dword_18B15E000, a2, a3, "Exhausted registration attempts for %{public}@: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end