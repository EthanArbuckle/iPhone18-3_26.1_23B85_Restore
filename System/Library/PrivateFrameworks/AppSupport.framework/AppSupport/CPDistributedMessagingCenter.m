@interface CPDistributedMessagingCenter
- (BOOL)_isTaskEntitled:(id *)a3;
- (BOOL)_sendMessage:(id)a3 userInfo:(id)a4 receiveReply:(id *)a5 error:(id *)a6 toTarget:(id)a7 selector:(SEL)a8 context:(void *)a9 nonBlocking:(BOOL)a10;
- (BOOL)_sendMessage:(id)a3 userInfoData:(id)a4 oolKey:(id)a5 oolData:(id)a6 makeServer:(BOOL)a7 receiveReply:(id *)a8 nonBlocking:(BOOL)a9 error:(id *)a10;
- (BOOL)doesServerExist;
- (id)_initAnonymousServer;
- (id)_initWithServerName:(id)a3 requireLookupByPID:(BOOL)a4;
- (id)delayReply;
- (id)sendMessageAndReceiveReplyName:(id)a3 userInfo:(id)a4;
- (id)sendMessageAndReceiveReplyName:(id)a3 userInfo:(id)a4 error:(id *)a5;
- (uint64_t)_setupInvalidationSource;
- (unsigned)_sendPort;
- (unsigned)_serverPort;
- (void)_dispatchMessageNamed:(id)a3 userInfo:(id)a4 reply:(id *)a5 auditToken:(id *)a6;
- (void)_sendReplyMessage:(id)a3 portPassing:(BOOL)a4 onMachPort:(unsigned int)a5;
- (void)_setSendPort:(unsigned int)a3;
- (void)_setupInvalidationSource;
- (void)dealloc;
- (void)registerForMessageName:(id)a3 target:(id)a4 selector:(SEL)a5;
- (void)runServerOnCurrentThreadProtectedByEntitlement:(id)a3;
- (void)sendDelayedReply:(id)a3 dictionary:(id)a4;
- (void)sendMessageAndReceiveReplyName:(id)a3 userInfo:(id)a4 toTarget:(id)a5 selector:(SEL)a6 context:(void *)a7;
- (void)stopServer;
- (void)unregisterForMessageName:(id)a3;
@end

@implementation CPDistributedMessagingCenter

- (id)_initWithServerName:(id)a3 requireLookupByPID:(BOOL)a4
{
  v6 = [(CPDistributedMessagingCenter *)self init];
  if (v6)
  {
    v6->_centerName = [a3 copy];
    v6->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v6->_requireLookupByPID = a4;
  }

  return v6;
}

- (id)_initAnonymousServer
{
  v2 = [(CPDistributedMessagingCenter *)self _initWithServerName:0];
  if (v2)
  {
    v3 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, v2 + 16);
    if (v3)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%@ unable to create anonymous server port. Error code: %d", objc_opt_class(), v3}];
    }
  }

  return v2;
}

- (void)dealloc
{
  serverSource = self->_serverSource;
  if (serverSource)
  {
    v4 = CPGetMachPortForMIGServerSource(serverSource);
    CFRunLoopSourceInvalidate(self->_serverSource);
    CFRelease(self->_serverSource);
    if (v4 - 1 <= 0xFFFFFFFD)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], v4, 1u, -1);
    }
  }

  sendPort = self->_sendPort;
  if (sendPort + 1 >= 2)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], sendPort);
  }

  parkedServerPort = self->_parkedServerPort;
  if (parkedServerPort + 1 >= 2)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], parkedServerPort, 1u, -1);
  }

  v7.receiver = self;
  v7.super_class = CPDistributedMessagingCenter;
  [(CPDistributedMessagingCenter *)&v7 dealloc];
}

- (void)_setupInvalidationSource
{
  sendPort = self->_sendPort;
  if ((sendPort + 1) >= 2)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v6 = dispatch_source_create(MEMORY[0x1E69E96E0], sendPort, 1uLL, global_queue);
    if (!v6)
    {
      [(CPDistributedMessagingCenter *)a2 _setupInvalidationSource];
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __56__CPDistributedMessagingCenter__setupInvalidationSource__block_invoke;
    handler[3] = &unk_1E7450C60;
    handler[4] = v6;
    dispatch_source_set_event_handler(v6, handler);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__CPDistributedMessagingCenter__setupInvalidationSource__block_invoke_2;
    v7[3] = &unk_1E7450CE8;
    v7[4] = v6;
    v7[5] = self;
    v7[6] = a2;
    dispatch_source_set_cancel_handler(v6, v7);
    dispatch_resume(v6);
  }
}

void __56__CPDistributedMessagingCenter__setupInvalidationSource__block_invoke_2(uint64_t a1)
{
  handle = dispatch_source_get_handle(*(a1 + 32));
  [*(*(a1 + 40) + 16) lock];
  v3 = *(a1 + 40);
  if (handle == *(v3 + 24))
  {
    *(v3 + 24) = 0;
    v3 = *(a1 + 40);
  }

  [*(v3 + 16) unlock];
  if (mach_port_deallocate(*MEMORY[0x1E69E9A60], handle))
  {
    __56__CPDistributedMessagingCenter__setupInvalidationSource__block_invoke_2_cold_1(a1, (a1 + 40));
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CPDistributedMessagingCenter__setupInvalidationSource__block_invoke_3;
  block[3] = &unk_1E7450C60;
  block[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  dispatch_release(*(a1 + 32));
}

void __56__CPDistributedMessagingCenter__setupInvalidationSource__block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (unsigned)_sendPort
{
  [(NSLock *)self->_lock lock];
  ptype = 0;
  if (self->_centerName)
  {
    sendPort = self->_sendPort;
    if (sendPort + 1 < 2 || mach_port_type(*MEMORY[0x1E69E9A60], sendPort, &ptype) || (ptype & 0x100000) != 0)
    {
      self->_sendPort = 0;
      requireLookupByPID = self->_requireLookupByPID;
      v5 = *MEMORY[0x1E69E99F8];
      v6 = [(NSString *)self->_centerName UTF8String];
      if (requireLookupByPID)
      {
        targetPID = self->_targetPID;
        v8 = bootstrap_look_up2();
        if (v8)
        {
          NSLog(@"Failed looking up per pid service %d for name %@", v8, self->_centerName);
          self->_sendPort = 0;
        }
      }

      else
      {
        bootstrap_look_up(v5, v6, &self->_sendPort);
      }

      [(CPDistributedMessagingCenter *)self _setupInvalidationSource];
    }
  }

  v9 = self->_sendPort;
  [(NSLock *)self->_lock unlock];
  return v9;
}

- (void)_setSendPort:(unsigned int)a3
{
  [(NSLock *)self->_lock lock];
  if (self->_sendPort - 1 <= 0xFFFFFFFD)
  {
    [(CPDistributedMessagingCenter *)self _setSendPort:a2];
  }

  self->_sendPort = a3;
  [(CPDistributedMessagingCenter *)self _setupInvalidationSource];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)sendMessageAndReceiveReplyName:(id)a3 userInfo:(id)a4
{
  v5 = 0;
  [(CPDistributedMessagingCenter *)self _sendMessage:a3 userInfo:a4 receiveReply:&v5 error:0 toTarget:0 selector:0 context:0];
  return v5;
}

- (id)sendMessageAndReceiveReplyName:(id)a3 userInfo:(id)a4 error:(id *)a5
{
  v6 = 0;
  [(CPDistributedMessagingCenter *)self _sendMessage:a3 userInfo:a4 receiveReply:&v6 error:a5 toTarget:0 selector:0 context:0];
  return v6;
}

- (void)sendMessageAndReceiveReplyName:(id)a3 userInfo:(id)a4 toTarget:(id)a5 selector:(SEL)a6 context:(void *)a7
{
  if (!a5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ target cannont be nil", objc_opt_class()}];
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ selector cannont be nil", objc_opt_class()}];
    goto LABEL_3;
  }

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(CPDistributedMessagingCenter *)self _sendMessage:a3 userInfo:a4 receiveReply:0 error:0 toTarget:a5 selector:a6 context:a7];
}

- (BOOL)_sendMessage:(id)a3 userInfo:(id)a4 receiveReply:(id *)a5 error:(id *)a6 toTarget:(id)a7 selector:(SEL)a8 context:(void *)a9 nonBlocking:(BOOL)a10
{
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ message name cannot be nil", objc_opt_class()}];
  }

  if (a4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = MEMORY[0x1E695DF30];
      v17 = *MEMORY[0x1E695D940];
      v18 = objc_opt_class();
      [v16 raise:v17 format:{@"%@ userInfo is not an NSDictionary: %@ %@", v18, objc_opt_class(), a4}];
    }
  }

  v19 = [a4 objectForKey:@"_kCPDistributedMessagingMagicCenterCreationKeyValue"];
  if (v19 == @"_kCPDistributedMessagingMagicCenterCreationKeyValue")
  {
    a4 = [a4 mutableCopy];
    [a4 removeObjectForKey:@"_kCPDistributedMessagingMagicCenterCreationKeyValue"];
  }

  v37 = 0;
  v38 = 0;
  v20 = dictionaryWithoutLargestNSData(a4, &v38, &v37);
  if (v20)
  {
    v21 = v20;
    v36 = 0;
    v22 = [MEMORY[0x1E696AE40] dataWithPropertyList:v20 format:200 options:0 error:&v36];
    if (!v22)
    {
      v34 = a7;
      v23 = a6;
      v24 = MEMORY[0x1E695DF30];
      v25 = *MEMORY[0x1E695D940];
      v32 = objc_opt_class();
      v26 = v24;
      a6 = v23;
      a7 = v34;
      [v26 raise:v25 format:{@"%@ Unable to serialize userInfo: %@ error: %@", v32, v21, v36}];
    }

    if (a7)
    {
      goto LABEL_12;
    }

LABEL_16:
    LOBYTE(v31) = a10;
    return [(CPDistributedMessagingCenter *)self _sendMessage:a3 userInfoData:v22 oolKey:v38 oolData:v37 makeServer:v19 == @"_kCPDistributedMessagingMagicCenterCreationKeyValue" receiveReply:a5 nonBlocking:v31 error:a6];
  }

  v22 = 0;
  if (!a7)
  {
    goto LABEL_16;
  }

LABEL_12:
  [(NSLock *)self->_lock lock];
  if (!self->_asyncQueue)
  {
    v27 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    self->_asyncQueue = v27;
    [(NSOperationQueue *)v27 setMaxConcurrentOperationCount:1];
  }

  [(NSLock *)self->_lock unlock];
  v28 = [CPDistributedMessagingAsyncOperation alloc];
  LOBYTE(v33) = v19 == @"_kCPDistributedMessagingMagicCenterCreationKeyValue";
  v29 = [(CPDistributedMessagingAsyncOperation *)v28 initWithCenter:self messageName:a3 userInfoData:v22 oolKey:v38 oolData:v37 target:a7 selector:a8 context:a9 makeServer:v33];
  [(NSOperationQueue *)self->_asyncQueue addOperation:v29];

  return 0;
}

- (BOOL)_sendMessage:(id)a3 userInfoData:(id)a4 oolKey:(id)a5 oolData:(id)a6 makeServer:(BOOL)a7 receiveReply:(id *)a8 nonBlocking:(BOOL)a9 error:(id *)a10
{
  v11 = a7;
  v44 = [(CPDistributedMessagingCenter *)self _sendPort];
  v43 = a3;
  v16 = [a3 UTF8String];
  v17 = strlen(v16);
  if (a4)
  {
    v18 = [a4 bytes];
    v19 = [a4 length];
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v18 = 0;
  v19 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v20 = [a5 UTF8String];
  LODWORD(a5) = strlen(v20);
  if (a6)
  {
LABEL_4:
    v21 = [a6 bytes];
    LODWORD(a6) = [a6 length];
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  if (a8)
  {
    v50[0] = 0;
    v49 = 0;
    v48 = 0;
    v47 = 0;
    v46 = 0;
    v45 = 0;
    if (v11)
    {
      v22 = [[CPDistributedMessagingCenter alloc] _initAnonymousServer];
      v23 = CPDMTwoWayMessageWithPortPassing(v44, [v22 _serverPort], v16, v17, v18, v19, v50, &v49, v20, a5, v21, a6, &v48, &v47, &v46, &v45);
    }

    else
    {
      v23 = CPDMTwoWayMessage(v44, v16, v17, v18, v19, v50, &v49, v20, a5, v21, a6, &v48, &v47, &v46, &v45);
      v22 = 0;
    }

    *a8 = 0;
    if (!v23 && v49)
    {
      if (v46)
      {
        v25 = objc_alloc(MEMORY[0x1E696AEC0]);
        v26 = [v25 initWithBytes:v48 length:v47 encoding:4];
        DataFromVMDeallocateBytes = createDataFromVMDeallocateBytes(v46, v45);
        v46 = 0;
        v45 = 0;
      }

      else
      {
        DataFromVMDeallocateBytes = 0;
        v26 = 0;
      }

      v29 = objc_alloc(MEMORY[0x1E695DEF0]);
      v30 = [v29 initWithBytesNoCopy:v50[0] length:v49 freeWhenDone:0];
      if (v26)
      {
        v31 = DataFromVMDeallocateBytes == 0;
      }

      else
      {
        v31 = 1;
      }

      v32 = !v31;
      v33 = !v31 || v22 != 0;
      *a8 = [MEMORY[0x1E696AE40] propertyListWithData:v30 options:v33 format:0 error:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v34 = objc_opt_class();
        NSLog(@"%@ ignoring non-dictionary return type in message named %@", v34, v43);
        *a8 = 0;
      }

      if (v32)
      {
        [*a8 setObject:DataFromVMDeallocateBytes forKey:v26];
      }
    }

    if (v22)
    {
      v35 = *a8;
      if (!*a8)
      {
        v35 = [MEMORY[0x1E695DF90] dictionary];
        *a8 = v35;
      }

      [v35 setObject:v22 forKey:@"_kCPDistributedMessagingMagicCenterCreationKeyValue"];
    }

    v36 = MEMORY[0x1E69E9A60];
    if (v50[0])
    {
      MEMORY[0x19A8C3560](*MEMORY[0x1E69E9A60], v50[0], v49);
    }

    v28 = a10;
    if (v48)
    {
      MEMORY[0x19A8C3560](*v36, v48, v47);
    }

    if (v46)
    {
      MEMORY[0x19A8C3560](*v36, v46, v45);
    }
  }

  else
  {
    if (a9)
    {
      v24 = CPDMNonBlockingMessage(v44, v16, v17, v18, v19, v20, a5, v21, a6, 0);
    }

    else
    {
      v24 = CPDMMessage(v44, v16, v17, v18, v19, v20, a5, v21, a6);
    }

    v23 = v24;
    v28 = a10;
  }

  if (v23)
  {
    if (v23 != -308 && v23 != 268435459 && (v23 != 268435460 || !a9))
    {
      v37 = objc_opt_class();
      centerName = self->_centerName;
      v39 = mach_error_string(v23);
      NSLog(@"Unable to send %@ message named %@ to %@: %s", v37, v43, centerName, v39);
    }

    if (v28)
    {
      v40 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A5A0] code:v23 userInfo:0];
LABEL_55:
      *v28 = v40;
    }
  }

  else if (v28)
  {
    v40 = 0;
    goto LABEL_55;
  }

  return v23 == 0;
}

- (unsigned)_serverPort
{
  [(NSLock *)self->_lock lock];
  serverSource = self->_serverSource;
  if (serverSource)
  {
    parkedServerPort = CPGetMachPortForMIGServerSource(serverSource);
  }

  else
  {
    parkedServerPort = self->_parkedServerPort;
  }

  [(NSLock *)self->_lock unlock];
  return parkedServerPort;
}

- (void)runServerOnCurrentThreadProtectedByEntitlement:(id)a3
{
  [(NSLock *)self->_lock lock];
  v5 = MEMORY[0x1E695D940];
  if (self->_serverSource)
  {
    [(NSLock *)self->_lock unlock];
    [MEMORY[0x1E695DF30] raise:*v5 format:{@"Already a %@ server for %@", objc_opt_class(), self->_centerName}];
  }

  sp = 0;
  if (self->_parkedServerPort + 1 >= 2)
  {
    sp = self->_parkedServerPort;
    self->_parkedServerPort = 0;
    goto LABEL_12;
  }

  v6 = [(NSString *)self->_centerName UTF8String];
  v7 = MEMORY[0x1E69E99F8];
  if (self->_requireLookupByPID)
  {
    if (!bootstrap_check_in2())
    {
      goto LABEL_12;
    }
  }

  else if (!bootstrap_check_in(*MEMORY[0x1E69E99F8], v6, &sp))
  {
    goto LABEL_12;
  }

  v8 = MEMORY[0x1E69E9A60];
  if (!mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &sp) && !mach_port_insert_right(*v8, sp, sp, 0x14u))
  {
    requireLookupByPID = self->_requireLookupByPID;
    v10 = *v7;
    bootstrap_register2();
    mach_port_deallocate(*v8, sp);
  }

LABEL_12:
  if (sp - 1 > 0xFFFFFFFD)
  {
    [(NSLock *)self->_lock unlock];
    centerName = self->_centerName;
    v13 = MEMORY[0x1E695DF30];
    v14 = *v5;
    v15 = objc_opt_class();
    if (centerName)
    {
      [v13 raise:v14 format:{@"%@ unable to register for '%@'", v15, self->_centerName}];
    }

    else
    {
      [v13 raise:v14 format:{@"%@ unable to create server for invalid right: %i", v15, sp}];
    }
  }

  else
  {
    self->_serverSource = CPCreateMIGServerSourceWithContext(_CPDMCPDistributedMessaging_subsystem, sp, 0, self);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, self->_serverSource, *MEMORY[0x1E695E8D0]);
    self->_requiredEntitlement = [a3 copy];
  }

  [(NSLock *)self->_lock unlock];
}

- (void)stopServer
{
  serverSource = self->_serverSource;
  if (serverSource)
  {
    v6 = self;
    v4 = CPGetMachPortForMIGServerSource(serverSource);
    CFRunLoopSourceInvalidate(v6->_serverSource);
    CFRelease(v6->_serverSource);
    v5 = v6;
    v6->_serverSource = 0;
    if (v4 - 1 <= 0xFFFFFFFD)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], v4, 1u, -1);
      v5 = v6;
    }
  }
}

- (void)registerForMessageName:(id)a3 target:(id)a4 selector:(SEL)a5
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_10:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ target cannont be nil", objc_opt_class()}];
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ message name cannont be nil", objc_opt_class()}];
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (a5)
  {
    goto LABEL_4;
  }

LABEL_11:
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ selector cannont be nil", objc_opt_class()}];
LABEL_4:
  v10 = [[CPDistributedMessagingCallout alloc] initWithTarget:a4 selector:a5];
  [(NSLock *)self->_lock lock];
  callouts = self->_callouts;
  if (!callouts)
  {
    callouts = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_callouts = callouts;
  }

  [(NSMutableDictionary *)callouts setObject:v10 forKey:a3];
  [(NSLock *)self->_lock unlock];
}

- (id)delayReply
{
  if (!self->_currentCallout)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"%@ delayReply cannot be called outside of a callout", objc_opt_class()}];
  }

  if (self->_delayedReply)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"%@ delayReply cannot be called more than once in a single callout: %@", objc_opt_class(), self->_currentCallout}];
  }

  replyPort = self->_replyPort;
  if (!replyPort)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"%@ delayReply cannot be called when servicing a one-way message during callout: %@", objc_opt_class(), self->_currentCallout}];
    replyPort = self->_replyPort;
  }

  if (replyPort == -1)
  {
    v6 = objc_opt_class();
    NSLog(@"%@ delayReply is about to return nil because the peer seems to have died.", v6);
    return 0;
  }

  else
  {
    self->_delayedReply = 1;
    v4 = [[CPDistributedMessagingDelayedReplyContext alloc] initWithReplyPort:self->_replyPort portPassing:self->_portPassing];

    return v4;
  }
}

- (void)sendDelayedReply:(id)a3 dictionary:(id)a4
{
  -[CPDistributedMessagingCenter _sendReplyMessage:portPassing:onMachPort:](self, "_sendReplyMessage:portPassing:onMachPort:", a4, [a3 portPassing], objc_msgSend(a3, "replyPort"));

  [a3 setReplyPort:0];
}

- (void)unregisterForMessageName:(id)a3
{
  [(NSLock *)self->_lock lock];
  callouts = self->_callouts;
  if (a3)
  {
    v6 = [(NSMutableDictionary *)callouts objectForKey:a3];
    [(NSMutableDictionary *)self->_callouts removeObjectForKey:a3];
  }

  else
  {
    v7 = [(NSMutableDictionary *)callouts allValues];
    [(NSMutableDictionary *)self->_callouts removeAllObjects];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (BOOL)doesServerExist
{
  v3 = [(CPDistributedMessagingCenter *)self _sendPort];
  if (v3)
  {
    LOBYTE(v3) = [(CPDistributedMessagingCenter *)self _sendPort]!= -1;
  }

  return v3;
}

- (void)_dispatchMessageNamed:(id)a3 userInfo:(id)a4 reply:(id *)a5 auditToken:(id *)a6
{
  [(NSLock *)self->_lock lock];
  v15 = [(NSMutableDictionary *)self->_callouts objectForKey:a3];
  if (!self->_centerName)
  {
    v11 = self;
  }

  [(NSLock *)self->_lock unlock];
  if (!v15)
  {
    v13 = objc_opt_class();
    NSLog(@"%@ ignoring message named %@ since no target and selector are registered", v13, a3);
    return;
  }

  self->_currentCallout = v15;
  *a5 = [-[CPDistributedMessagingCallout target](v15 "target")];
  self->_currentCallout = 0;
  if (self->_delayedReply && ![(CPDistributedMessagingCallout *)v15 returnsVoid])
  {
    if (*a5)
    {
      v12 = @"%@ ignoring non-nil return from message named %@, which has requested a delayed reply";
      goto LABEL_13;
    }
  }

  else
  {
    if ([(CPDistributedMessagingCallout *)v15 returnsVoid])
    {
LABEL_14:
      *a5 = 0;
      goto LABEL_15;
    }

    if (*a5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = @"%@ ignoring non-dictionary return type in message named %@";
LABEL_13:
        v14 = objc_opt_class();
        NSLog(v12, v14, a3);
        goto LABEL_14;
      }
    }
  }

LABEL_15:
}

- (void)_sendReplyMessage:(id)a3 portPassing:(BOOL)a4 onMachPort:(unsigned int)a5
{
  v6 = a4;
  if (a3)
  {
    v17 = 0;
    v18 = 0;
    v7 = dictionaryWithoutLargestNSData(a3, &v18, &v17);
    if (v18)
    {
      v8 = [v18 UTF8String];
      v9 = strlen(v8);
      v10 = v17;
      v11 = [v17 bytes];
      v12 = [v10 length];
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v11 = 0;
      v12 = 0;
    }

    v16 = 0;
    v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:&v16];
    if (!v13)
    {
      NSLog(@"Unable to serialize userInfo: %@. Ignoring.", v16);
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v14 = [v13 length];
  v15 = [v13 bytes];
  if (v6)
  {
    CPDMTwoWayMessageReplyWithPortPassing(a5, 0, v15, v14, v8, v9, v11, v12);
  }

  else
  {
    CPDMTwoWayMessageReply(a5, 0, v15, v14, v8, v9, v11, v12);
  }
}

- (BOOL)_isTaskEntitled:(id *)a3
{
  if (!self->_requiredEntitlement)
  {
    return 1;
  }

  v4 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (v5)
  {
    v6 = v5;
    *token.val = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, self->_requiredEntitlement, &token);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      v10 = v9 == CFBooleanGetTypeID() && CFBooleanGetValue(v8) != 0;
      CFRelease(v8);
    }

    else
    {
      v10 = 0;
    }

    if (*token.val)
    {
      v12 = objc_opt_class();
      NSLog(@"%@ unable to get entitlements for client task. Error: %@", v12, *token.val);
      CFRelease(*token.val);
    }

    CFRelease(v6);
  }

  else
  {
    v11 = objc_opt_class();
    NSLog(@"%@ unable to create security task from audit token", v11);
    return 0;
  }

  return v10;
}

- (uint64_t)_setupInvalidationSource
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"CPDistributedMessagingCenter.m" lineNumber:316 description:@"unable to monitor server port for invalidation"];
}

uint64_t __56__CPDistributedMessagingCenter__setupInvalidationSource__block_invoke_2_cold_1(uint64_t a1, uint64_t *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = *(a1 + 48);
  v6 = *a2;

  return [v4 handleFailureInMethod:v5 object:v6 file:@"CPDistributedMessagingCenter.m" lineNumber:339 description:@"failed to deallocate dead name"];
}

@end