@interface CPDistributedNotificationCenter
+ (__CFDictionary)_serverPortToNotificationCenterMap;
+ (id)_serverPortToNotificationCenterMapDispatchQueue;
+ (id)centerForServerPort:(unsigned int)port;
+ (id)centerNamed:(id)named;
+ (void)setCenter:(id)center forServerPort:(unsigned int)port;
- (BOOL)postNotificationName:(id)name userInfo:(id)info toBundleIdentifier:(id)identifier;
- (id)_initWithServerName:(id)name;
- (void)_checkIn;
- (void)_checkOutAndRemoveSource;
- (void)_createReceiveSourceForRunLoop:(__CFRunLoop *)loop;
- (void)_notificationServerWasRestarted;
- (void)_receivedCheckIn:(unsigned int)in auditToken:(id *)token;
- (void)dealloc;
- (void)deliverNotification:(id)notification userInfo:(id)info;
- (void)runServer;
- (void)startDeliveringNotificationsToMainThread;
- (void)startDeliveringNotificationsToRunLoop:(__CFRunLoop *)loop;
- (void)stopDeliveringNotifications;
@end

@implementation CPDistributedNotificationCenter

+ (id)centerNamed:(id)named
{
  if (!named)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ center name cannont be nil", self}];
  }

  pthread_mutex_lock(&centerNamed__instanceLock);
  v5 = centerNamed__centers;
  if (!centerNamed__centers)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    centerNamed__centers = v5;
  }

  v6 = [v5 objectForKey:named];
  if (!v6)
  {
    if ([named lengthOfBytesUsingEncoding:4] >= 0x81)
    {
      pthread_mutex_unlock(&centerNamed__instanceLock);
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ center name cannont be longer than %i UTF8 bytes", self, 128}];
    }

    v6 = [objc_alloc(objc_opt_class()) _initWithServerName:named];
    [centerNamed__centers setObject:v6 forKey:named];
  }

  pthread_mutex_unlock(&centerNamed__instanceLock);
  return v6;
}

+ (id)_serverPortToNotificationCenterMapDispatchQueue
{
  if (_serverPortToNotificationCenterMapDispatchQueue_onceToken != -1)
  {
    +[CPDistributedNotificationCenter _serverPortToNotificationCenterMapDispatchQueue];
  }

  return _serverPortToNotificationCenterMapDispatchQueue_queue;
}

dispatch_queue_t __82__CPDistributedNotificationCenter__serverPortToNotificationCenterMapDispatchQueue__block_invoke()
{
  result = dispatch_queue_create("CPDistributedNotificationCenter server port to notification center queue", 0);
  _serverPortToNotificationCenterMapDispatchQueue_queue = result;
  return result;
}

+ (__CFDictionary)_serverPortToNotificationCenterMap
{
  if (_serverPortToNotificationCenterMap_onceToken != -1)
  {
    +[CPDistributedNotificationCenter _serverPortToNotificationCenterMap];
  }

  return _serverPortToNotificationCenterMap_map;
}

CFMutableDictionaryRef __69__CPDistributedNotificationCenter__serverPortToNotificationCenterMap__block_invoke()
{
  result = CFDictionaryCreateMutable(0, 0, &sNoRetainDictionaryKeyCallbacks, &sNoRetainDictionaryValueCallbacks);
  _serverPortToNotificationCenterMap_map = result;
  return result;
}

+ (void)setCenter:(id)center forServerPort:(unsigned int)port
{
  _serverPortToNotificationCenterMapDispatchQueue = [self _serverPortToNotificationCenterMapDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CPDistributedNotificationCenter_setCenter_forServerPort___block_invoke;
  block[3] = &unk_1E7450C10;
  portCopy = port;
  block[4] = self;
  block[5] = center;
  dispatch_async(_serverPortToNotificationCenterMapDispatchQueue, block);
}

void __59__CPDistributedNotificationCenter_setCenter_forServerPort___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _serverPortToNotificationCenterMap];
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);

    CFDictionarySetValue(v2, v3, v4);
  }
}

+ (id)centerForServerPort:(unsigned int)port
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  _serverPortToNotificationCenterMapDispatchQueue = [self _serverPortToNotificationCenterMapDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CPDistributedNotificationCenter_centerForServerPort___block_invoke;
  block[3] = &unk_1E7450C38;
  block[4] = self;
  block[5] = &v10;
  portCopy = port;
  dispatch_sync(_serverPortToNotificationCenterMapDispatchQueue, block);
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v6;
}

const __CFDictionary *__55__CPDistributedNotificationCenter_centerForServerPort___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _serverPortToNotificationCenterMap];
  if (result)
  {
    result = CFDictionaryGetValue(result, *(a1 + 48));
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (id)_initWithServerName:(id)name
{
  v4 = [(CPDistributedNotificationCenter *)self init];
  if (v4)
  {
    v4->_centerName = [name copy];
    v4->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v4->_sendPorts = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  return v4;
}

- (void)dealloc
{
  [(CPDistributedNotificationCenter *)self _checkOutAndRemoveSource];

  CFRelease(self->_sendPorts);
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  v4.receiver = self;
  v4.super_class = CPDistributedNotificationCenter;
  [(CPDistributedNotificationCenter *)&v4 dealloc];
}

- (void)_createReceiveSourceForRunLoop:(__CFRunLoop *)loop
{
  if (!self->_receiveNotificationSource)
  {
    v21 = v3;
    v22 = v4;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _notificationServerWasRestarted, [@"CPDistributedNotificationCenterDidRestartNotification-" stringByAppendingString:self->_centerName], 0, 0);
    name = 0;
    v8 = MEMORY[0x1E69E9A60];
    v9 = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
    if (v9)
    {
      v10 = v9;
      [(NSLock *)self->_lock unlock];
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D930];
      v13 = objc_opt_class();
      [v11 raise:v12 format:{@"%@ unable to allocate notification receive port: %s", v13, mach_error_string(v10)}];
    }

    v19 = 128;
    v14 = MEMORY[0x19A8C29C0](*v8, name, 1, &v19, 1);
    if (v14)
    {
      v15 = v14;
      v16 = objc_opt_class();
      v17 = mach_error_string(v15);
      NSLog(@"Unable to increaase %@ notification receive queue depth: %s", v16, v17);
    }

    v18 = CPCreateMIGServerSourceWithContext(&_CPDNCPDistributedNotification_subsystem, name, 0, self);
    self->_receiveNotificationSource = v18;
    CFRunLoopAddSource(loop, v18, *MEMORY[0x1E695E8D0]);
    if (CFRunLoopGetCurrent() != loop)
    {
      CFRunLoopWakeUp(loop);
    }
  }
}

- (void)_checkIn
{
  if (self->_receiveNotificationSource)
  {
    sp = 0;
    bootstrap_look_up(*MEMORY[0x1E69E99F8], [(NSString *)self->_centerName UTF8String], &sp);
    v3 = sp;
    if (sp - 1 <= 0xFFFFFFFD)
    {
      v4 = CPGetMachPortForMIGServerSource(self->_receiveNotificationSource);
      v5 = CPDNCheckIn(v3, v4);
      if (v5)
      {
        v6 = v5;
        v7 = objc_opt_class();
        centerName = self->_centerName;
        v9 = mach_error_string(v6);
        NSLog(@"Unable to check into %@ notfication center '%@': %s", v7, centerName, v9);
      }

      mach_port_deallocate(*MEMORY[0x1E69E9A60], sp);
    }
  }
}

- (void)_checkOutAndRemoveSource
{
  if (self->_receiveNotificationSource)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, [@"CPDistributedNotificationCenterDidRestartNotification-" stringByAppendingString:self->_centerName], 0);
    v4 = CPGetMachPortForMIGServerSource(self->_receiveNotificationSource);
    CFRunLoopSourceInvalidate(self->_receiveNotificationSource);
    CFRelease(self->_receiveNotificationSource);
    v5 = MEMORY[0x1E69E9A60];
    self->_receiveNotificationSource = 0;
    v6 = *v5;

    mach_port_mod_refs(v6, v4, 1u, -1);
  }
}

- (void)_notificationServerWasRestarted
{
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [(NSLock *)self->_lock lock];
  [(CPDistributedNotificationCenter *)self _checkIn];
  [(NSLock *)self->_lock unlock];
}

- (void)startDeliveringNotificationsToMainThread
{
  Main = CFRunLoopGetMain();

  [(CPDistributedNotificationCenter *)self startDeliveringNotificationsToRunLoop:Main];
}

- (void)startDeliveringNotificationsToRunLoop:(__CFRunLoop *)loop
{
  [(NSLock *)self->_lock lock];
  ++self->_startCount;
  if (!self->_receiveNotificationSource)
  {
    [(CPDistributedNotificationCenter *)self _createReceiveSourceForRunLoop:loop];
    [(CPDistributedNotificationCenter *)self _checkIn];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)stopDeliveringNotifications
{
  [(NSLock *)self->_lock lock];
  startCount = self->_startCount;
  if (!startCount || (v4 = startCount - 1, (self->_startCount = v4) == 0))
  {
    [(CPDistributedNotificationCenter *)self _checkOutAndRemoveSource];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)deliverNotification:(id)notification userInfo:(id)info
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotificationName:notification object:self userInfo:info];
}

- (void)runServer
{
  [(NSLock *)self->_lock lock];
  v3 = MEMORY[0x1E695D940];
  if (self->_isServer)
  {
    [(NSLock *)self->_lock unlock];
    [MEMORY[0x1E695DF30] raise:*v3 format:{@"Already a %@ server for '%@'", objc_opt_class(), self->_centerName}];
  }

  uTF8String = [(NSString *)self->_centerName UTF8String];
  sp = 0;
  v5 = MEMORY[0x1E69E99F8];
  v6 = bootstrap_check_in(*MEMORY[0x1E69E99F8], uTF8String, &sp);
  v7 = MEMORY[0x1E69E9A60];
  if (v6 && !mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &sp) && !mach_port_insert_right(*v7, sp, sp, 0x14u))
  {
    v8 = *v5;
    bootstrap_register2();
    mach_port_deallocate(*v7, sp);
  }

  if (sp - 1 > 0xFFFFFFFD)
  {
    [(NSLock *)self->_lock unlock];
    [MEMORY[0x1E695DF30] raise:*v3 format:{@"%@ unable to register for '%@'", objc_opt_class(), self->_centerName}];
  }

  else
  {
    v17 = 128;
    v9 = MEMORY[0x19A8C29C0](*v7);
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_class();
      v12 = mach_error_string(v10);
      NSLog(@"Unable to increaase %@ notification server queue depth: %s", v11, v12);
    }

    queue = self->_queue;
    if (queue)
    {
      dispatch_release(queue);
    }

    self->_queue = dispatch_queue_create("CPDistributedNotificationCenter", 0);
    [CPDistributedNotificationCenter setCenter:self forServerPort:sp];
    v14 = dispatch_source_create(MEMORY[0x1E69E96D8], sp, 0, self->_queue);
    if (!v14)
    {
      dispatch_release(self->_queue);
      self->_queue = 0;
      [(NSLock *)self->_lock unlock];
      [MEMORY[0x1E695DF30] raise:*v3 format:{@"%@ unable to create server queue for '%@'", objc_opt_class(), self->_centerName}];
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __44__CPDistributedNotificationCenter_runServer__block_invoke;
    handler[3] = &unk_1E7450C60;
    handler[4] = v14;
    dispatch_source_set_event_handler(v14, handler);
    dispatch_resume(v14);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, [@"CPDistributedNotificationCenterDidRestartNotification-" stringByAppendingString:self->_centerName], 0, 0, 0);
    self->_isServer = 1;
  }

  [(NSLock *)self->_lock unlock];
}

- (BOOL)postNotificationName:(id)name userInfo:(id)info toBundleIdentifier:(id)identifier
{
  nameCopy = name;
  v32[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (!self->_isServer)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Must be running %@ '%@' server to send post notifications", objc_opt_class(), selfCopy->_centerName}];
  }

  if (!nameCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ message name cannont be nil", objc_opt_class()}];
  }

  v7 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v29 = v7;
  if (info)
  {
    v8 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D940];
      v11 = objc_opt_class();
      [v9 raise:v10 format:{@"Notification %@ userInfo is not an NSDictionary: %@ %@", v11, objc_opt_class(), info}];
    }

    v32[0] = 0;
    v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:info format:200 options:0 error:v32];
    if (!v12)
    {

      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ Unable to serialize userInfo: %@ error: %@", objc_opt_class(), info, v32[0]}];
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = selfCopy;
  [(NSLock *)selfCopy->_lock lock];
  Count = CFDictionaryGetCount(selfCopy->_sendPorts);
  v15 = Count;
  v16 = (&v28 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v16;
  if ((8 * Count) >= 0x200)
  {
    v18 = 512;
  }

  else
  {
    v18 = 8 * Count;
  }

  bzero(&v28 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  CFDictionaryGetKeysAndValues(v13->_sendPorts, v16, v16);
  [(NSLock *)v13->_lock unlock];
  uTF8String = [nameCopy UTF8String];
  v20 = strlen(uTF8String);
  if (v12)
  {
    bytes = [v12 bytes];
    LODWORD(v12) = [v12 length];
  }

  else
  {
    bytes = 0;
  }

  if (v15 < 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0;
    do
    {
      if (!identifier || [*v17 isEqual:identifier])
      {
        v23 = CPDNDeliverNotification(*v16, uTF8String, v20, bytes, v12);
        if (v23 != -308)
        {
          if (v23)
          {
            if (v23 != 268435459)
            {
              centerName = selfCopy->_centerName;
              v25 = mach_error_string(v23);
              NSLog(@"Unable to deliver %@ notification to port %@: %s", nameCopy, centerName, v25);
            }
          }

          else
          {
            v22 = 1;
          }
        }
      }

      ++v16;
      ++v17;
      --v15;
    }

    while (v15);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v22 & 1;
}

- (void)_receivedCheckIn:(unsigned int)in auditToken:(id *)token
{
  [(NSLock *)self->_lock lock];
  inCopy = in;
  if (CFDictionaryContainsKey(self->_sendPorts, in))
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], in);
  }

  else
  {
    v8 = CPCopyBundleIdentifierFromAuditToken();
    v9 = *MEMORY[0x1E695E738];
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = *MEMORY[0x1E695E738];
    }

    CFDictionarySetValue(self->_sendPorts, inCopy, v10);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__CPDistributedNotificationCenter__receivedCheckIn_auditToken___block_invoke;
    block[3] = &unk_1E7450C88;
    block[4] = v8;
    block[5] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    global_queue = dispatch_get_global_queue(0, 0);
    v12 = dispatch_source_create(MEMORY[0x1E69E96E0], inCopy, 1uLL, global_queue);
    if (!v12)
    {
      [CPDistributedNotificationCenter _receivedCheckIn:a2 auditToken:self];
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __63__CPDistributedNotificationCenter__receivedCheckIn_auditToken___block_invoke_2;
    handler[3] = &unk_1E7450C60;
    handler[4] = v12;
    dispatch_source_set_event_handler(v12, handler);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __63__CPDistributedNotificationCenter__receivedCheckIn_auditToken___block_invoke_3;
    v13[3] = &unk_1E7450CB0;
    v13[4] = v12;
    v13[5] = self;
    v13[7] = a2;
    v13[8] = inCopy;
    v13[6] = v8;
    dispatch_source_set_cancel_handler(v12, v13);
    dispatch_resume(v12);
  }

  [(NSLock *)self->_lock unlock];
}

void __63__CPDistributedNotificationCenter__receivedCheckIn_auditToken___block_invoke(uint64_t a1)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (*(a1 + 32))
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{*(a1 + 32), @"CPBundleIdentifier", 0}];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v3 = v2;
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

void __63__CPDistributedNotificationCenter__receivedCheckIn_auditToken___block_invoke_3(uint64_t a1)
{
  handle = dispatch_source_get_handle(*(a1 + 32));
  if (mach_port_deallocate(*MEMORY[0x1E69E9A60], handle))
  {
    __63__CPDistributedNotificationCenter__receivedCheckIn_auditToken___block_invoke_3_cold_1(a1);
  }

  [*(*(a1 + 40) + 16) lock];
  CFDictionaryRemoveValue(*(*(a1 + 40) + 40), *(a1 + 64));
  [*(*(a1 + 40) + 16) unlock];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__CPDistributedNotificationCenter__receivedCheckIn_auditToken___block_invoke_4;
  v3[3] = &unk_1E7450C88;
  v4 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  dispatch_release(*(a1 + 32));
}

void __63__CPDistributedNotificationCenter__receivedCheckIn_auditToken___block_invoke_4(uint64_t a1)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (*(a1 + 32))
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{*(a1 + 32), @"CPBundleIdentifier", 0}];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v3 = v2;
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

uint64_t __63__CPDistributedNotificationCenter__receivedCheckIn_auditToken___block_invoke_3_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);

  return [v2 handleFailureInMethod:v3 object:v4 file:@"CPDistributedNotificationCenter.m" lineNumber:512 description:@"failed to deallocate dead name"];
}

@end