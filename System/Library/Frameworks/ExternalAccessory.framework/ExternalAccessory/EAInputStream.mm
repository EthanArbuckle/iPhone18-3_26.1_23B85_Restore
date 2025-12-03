@interface EAInputStream
- (BOOL)hasBytesAvailable;
- (EAInputStream)initWithAccessory:(id)accessory forSession:(id)session socket:(int)socket;
- (EAInputStream)initWithAccessoryWithoutSocket:(id)socket forSession:(id)session;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (unint64_t)streamStatus;
- (void)_performAtEndOfStreamValidation;
- (void)_scheduleCallback;
- (void)_streamEventTrigger;
- (void)close;
- (void)dealloc;
- (void)endStream;
- (void)open;
- (void)openCompleted;
- (void)processIncomingAccessoryData:(id)data;
- (void)removeFromRunLoop:(id)loop forMode:(id)mode;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
- (void)setDelegate:(id)delegate;
@end

@implementation EAInputStream

- (EAInputStream)initWithAccessory:(id)accessory forSession:(id)session socket:(int)socket
{
  v11.receiver = self;
  v11.super_class = EAInputStream;
  v8 = [(EAInputStream *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_streamStatus = 0;
    v8->_delegate = v8;
    v8->_accessory = accessory;
    v9->_session = session;
    v9->_statusLock = objc_alloc_init(MEMORY[0x277CCAC60]);
    v9->_runloopLock = objc_alloc_init(MEMORY[0x277CCAC60]);
    v9->_inputFromAccBuffer = 0;
    v9->_useSocket = 1;
    v9->_sockListenSource = 0;
    v9->_sock = socket;
    v9->_zeroBytesReadCount = 0;
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  return v9;
}

- (EAInputStream)initWithAccessoryWithoutSocket:(id)socket forSession:(id)session
{
  v9.receiver = self;
  v9.super_class = EAInputStream;
  v6 = [(EAInputStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_streamStatus = 0;
    v6->_delegate = v6;
    v6->_accessory = socket;
    v7->_session = session;
    v7->_statusLock = objc_alloc_init(MEMORY[0x277CCAC60]);
    v7->_runloopLock = objc_alloc_init(MEMORY[0x277CCAC60]);
    v7->_inputFromAccBuffer = 0;
    v7->_useSocket = 0;
    v7->_sockListenSource = 0;
    v7->_sock = -1;
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  return v7;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(EAInputStream *)self close];

  inputFromAccBuffer = self->_inputFromAccBuffer;
  if (inputFromAccBuffer)
  {
    free(inputFromAccBuffer);
  }

  self->_inputFromAccBuffer = 0;
  if (+[EAAccessoryManager isLoggingEnabled])
  {
    NSLog(&cfstr_Externalaccess_87.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAInputStream.m", "[EAInputStream dealloc]", 113);
  }

  inputFromAccQueue = self->_inputFromAccQueue;
  if (inputFromAccQueue)
  {
    dispatch_release(inputFromAccQueue);
  }

  v5.receiver = self;
  v5.super_class = EAInputStream;
  [(EAInputStream *)&v5 dealloc];
}

- (void)open
{
  v10 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_statusLock lock];
  if (!self->_streamStatus)
  {
    self->_inputFromAccData = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:0x20000];
    self->_inputFromAccCondition = objc_alloc_init(MEMORY[0x277CCA928]);
    v3 = [(EAAccessory *)self->_accessory _protocolIDForProtocolString:[(EASession *)self->_session protocolString]];
    if (v3)
    {
      v4 = v3;
      if (+[EAAccessoryManager isLoggingEnabled])
      {
        NSLog(&cfstr_Externalaccess_88.isa, [(EAAccessory *)self->_accessory _internalConnectionID], [(EASession *)self->_session _sessionID]);
      }

      snprintf(__str, 0x100uLL, "com.apple.%d.%d.%d.listenQueue", -[EAAccessory connectionID](self->_accessory, "connectionID"), [v4 unsignedIntValue], -[EASession _sessionID](self->_session, "_sessionID"));
      v5 = dispatch_queue_create(__str, 0);
      self->_inputFromAccQueue = v5;
      if (self->_useSocket)
      {
        self->_sockListenSource = dispatch_source_create(MEMORY[0x277D85D28], self->_sock, 0, v5);
        self->_inputFromAccBuffer = malloc_type_malloc(0x2000uLL, 0x100004077774924uLL);
        sockListenSource = self->_sockListenSource;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __21__EAInputStream_open__block_invoke;
        handler[3] = &unk_278A4E2F8;
        handler[4] = self;
        dispatch_source_set_event_handler(sockListenSource, handler);
        dispatch_resume(self->_sockListenSource);
        if ([(EAAccessory *)self->_accessory createdByCoreAccessories])
        {
          [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager openSessionFromAccessoryToApp:"openSessionFromAccessoryToApp:", [(EASession *)self->_session EASessionUUID]];
        }

        else
        {
          [(EAAccessory *)self->_accessory _internalConnectionID];
          [v4 unsignedIntValue];
          [(EASession *)self->_session _sessionID];
          IAPAppOpenSessionFromAccessoryToApp();
        }
      }

      self->_streamStatus = 1;
      [(EAInputStream *)self openCompleted];
    }
  }

  [(NSRecursiveLock *)self->_statusLock unlock];
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __21__EAInputStream_open__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 176) lock];
  v2 = *(a1 + 32);
  if (*(v2 + 160) == -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    if (([*(*(a1 + 32) + 168) length] - 122881) > 0xFFFFFFFFFFFDFFFELL)
    {
      v3 = 0x2000;
    }

    else
    {
      v3 = 0x20000 - [*(*(a1 + 32) + 168) length];
      if (v3 < 1)
      {
        goto LABEL_13;
      }
    }

    v4 = recv(*(*(a1 + 32) + 160), *(*(a1 + 32) + 216), v3, 0);
    v5 = v4;
    v6 = *(a1 + 32);
    if (v4)
    {
      *(v6 + 256) = 0;
      if (v4 == -1)
      {
        goto LABEL_13;
      }

      v7 = *(a1 + 32);
      goto LABEL_10;
    }

    ++*(v6 + 256);
    v7 = *(a1 + 32);
    if (*(v7 + 256) >= 16)
    {
      break;
    }

LABEL_10:
    [*(v7 + 168) appendBytes:*(v7 + 216) length:v4];
    if (v5 != 0x2000)
    {
      goto LABEL_13;
    }
  }

  NSLog(&cfstr_Externalaccess_89.isa, 0, [*(v7 + 152) _sessionID], objc_msgSend(*(*(a1 + 32) + 152), "_sessionID"), *(*(a1 + 32) + 256));
  dispatch_source_cancel(*(*(a1 + 32) + 208));
LABEL_13:
  *(*(a1 + 32) + 225) = 1;
  [*(a1 + 32) _scheduleCallback];
  v8 = [*(*(a1 + 32) + 168) length];
  v2 = *(a1 + 32);
  if (v8 >= 0x20000)
  {
    [*(v2 + 176) wait];
    v2 = *(a1 + 32);
  }

LABEL_15:
  v9 = *(v2 + 176);

  return [v9 unlock];
}

- (void)close
{
  [(NSRecursiveLock *)self->_statusLock lock];
  streamStatus = self->_streamStatus;
  v4 = streamStatus > 5;
  v5 = (1 << streamStatus) & 0x25;
  if (!v4 && v5 != 0)
  {
    self->_streamStatus = 6;
  }

  [(NSRecursiveLock *)self->_statusLock unlock];
  self->_sock = -1;
  [(NSCondition *)self->_inputFromAccCondition lock];
  if (self->_sockListenSource)
  {
    if (+[EAAccessoryManager isLoggingEnabled])
    {
      NSLog(&cfstr_Externalaccess_90.isa);
    }

    dispatch_source_cancel(self->_sockListenSource);
    dispatch_release(self->_sockListenSource);
    self->_sockListenSource = 0;
    if (+[EAAccessoryManager isLoggingEnabled])
    {
      NSLog(&cfstr_Externalaccess_91.isa);
    }
  }

  self->_inputFromAccData = 0;
  [(NSCondition *)self->_inputFromAccCondition signal];
  [(NSCondition *)self->_inputFromAccCondition unlock];

  self->_accessory = 0;
  [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager closeInputStreamForEASessionUUID:"closeInputStreamForEASessionUUID:", [(EASession *)self->_session EASessionUUID]];
  [(EASession *)self->_session _streamClosed];

  self->_session = 0;
  [(NSRecursiveLock *)self->_runloopLock lock];
  runLoopSource = self->_runLoopSource;
  if (runLoopSource)
  {
    CFRunLoopSourceInvalidate(runLoopSource);
    self->_runLoopSource = 0;
  }

  runLoop = self->_runLoop;
  if (runLoop)
  {
    CFRelease(runLoop);
    self->_runLoop = 0;
  }

  runloopLock = self->_runloopLock;

  [(NSRecursiveLock *)runloopLock unlock];
}

- (void)setDelegate:(id)delegate
{
  if (delegate)
  {
    selfCopy = delegate;
  }

  else
  {
    selfCopy = self;
  }

  self->_delegate = selfCopy;
}

- (void)scheduleInRunLoop:(id)loop forMode:(id)mode
{
  [(NSRecursiveLock *)self->_runloopLock lock];
  if (!self->_runLoopSource)
  {
    getCFRunLoop = [loop getCFRunLoop];
    self->_runLoop = getCFRunLoop;
    CFRetain(getCFRunLoop);
    v10.version = 0;
    memset(&v10.retain, 0, 56);
    v10.info = self;
    v10.perform = __streamEventTrigger_0;
    runLoopSource = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &v10);
    self->_runLoopSource = runLoopSource;
    if (!runLoopSource)
    {
      [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
      runLoopSource = self->_runLoopSource;
    }

    CFRunLoopAddSource(self->_runLoop, runLoopSource, mode);
    CFRelease(self->_runLoopSource);
  }

  [(NSRecursiveLock *)self->_runloopLock unlock];
}

- (void)removeFromRunLoop:(id)loop forMode:(id)mode
{
  [(NSRecursiveLock *)self->_runloopLock lock];
  if (self->_runLoopSource)
  {
    CFRunLoopRemoveSource([loop getCFRunLoop], self->_runLoopSource, mode);
    self->_runLoopSource = 0;
  }

  runLoop = self->_runLoop;
  if (runLoop)
  {
    CFRelease(runLoop);
    self->_runLoop = 0;
  }

  runloopLock = self->_runloopLock;

  [(NSRecursiveLock *)runloopLock unlock];
}

- (unint64_t)streamStatus
{
  [(EAInputStream *)self _performAtEndOfStreamValidation];
  [(NSRecursiveLock *)self->_statusLock lock];
  streamStatus = self->_streamStatus;
  [(NSRecursiveLock *)self->_statusLock unlock];
  return streamStatus;
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  [(NSRecursiveLock *)self->_statusLock lock];
  if (self->_streamStatus == 2)
  {
    [(NSCondition *)self->_inputFromAccCondition lock];
    v7 = [(NSMutableData *)self->_inputFromAccData length];
    if (v7)
    {
      v8 = v7;
      if (v7 >= length)
      {
        lengthCopy = length;
      }

      else
      {
        lengthCopy = v7;
      }

      [(NSMutableData *)self->_inputFromAccData getBytes:read length:lengthCopy];
      [(NSMutableData *)self->_inputFromAccData replaceBytesInRange:0 withBytes:lengthCopy length:0, 0];
      if (v8 >= 0x20000 && length != 0)
      {
        [(NSCondition *)self->_inputFromAccCondition signal];
      }
    }

    else
    {
      lengthCopy = 0;
    }

    [(NSCondition *)self->_inputFromAccCondition unlock];
  }

  else
  {
    lengthCopy = 0;
  }

  [(NSRecursiveLock *)self->_statusLock unlock];
  return lengthCopy;
}

- (BOOL)hasBytesAvailable
{
  [(NSRecursiveLock *)self->_statusLock lock];
  if (self->_streamStatus == 2)
  {
    [(NSCondition *)self->_inputFromAccCondition lock];
    v3 = [(NSMutableData *)self->_inputFromAccData length]!= 0;
    [(NSCondition *)self->_inputFromAccCondition unlock];
  }

  else
  {
    v3 = 0;
  }

  [(NSRecursiveLock *)self->_statusLock unlock];
  return v3;
}

- (void)processIncomingAccessoryData:(id)data
{
  if (self->_streamStatus - 2 > 2)
  {
    NSLog(&cfstr_Externalaccess_92.isa, a2, data, self->_streamStatus);
  }

  else
  {
    dataCopy = data;
    inputFromAccQueue = self->_inputFromAccQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__EAInputStream_processIncomingAccessoryData___block_invoke;
    block[3] = &unk_278A4E390;
    block[4] = self;
    block[5] = data;
    dispatch_async(inputFromAccQueue, block);
  }
}

void __46__EAInputStream_processIncomingAccessoryData___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 176) lock];
  [*(*(a1 + 32) + 168) appendData:*(a1 + 40)];
  *(*(a1 + 32) + 225) = 1;
  [*(a1 + 32) _scheduleCallback];
  if ([*(*(a1 + 32) + 168) length] >= 0x20000)
  {
    [*(*(a1 + 32) + 176) wait];
  }

  [*(*(a1 + 32) + 176) unlock];
  v2 = *(a1 + 40);
}

- (void)openCompleted
{
  [(NSRecursiveLock *)self->_statusLock lock];
  if (self->_streamStatus == 1)
  {
    self->_streamStatus = 2;
    [(EAInputStream *)self _scheduleCallback];
  }

  statusLock = self->_statusLock;

  [(NSRecursiveLock *)statusLock unlock];
}

- (void)endStream
{
  [(NSRecursiveLock *)self->_statusLock lock];
  if (self->_streamStatus - 2 <= 2)
  {
    self->_streamStatus = 5;
    [(EAInputStream *)self _scheduleCallback];
    [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager closeInputStreamForEASessionUUID:"closeInputStreamForEASessionUUID:", [(EASession *)self->_session EASessionUUID]];
  }

  statusLock = self->_statusLock;

  [(NSRecursiveLock *)statusLock unlock];
}

- (void)_performAtEndOfStreamValidation
{
  [(NSRecursiveLock *)self->_statusLock lock];
  if (self->_streamStatus == 2 && ![(EAAccessory *)self->_accessory isConnected])
  {
    self->_streamStatus = 5;
    [(EAInputStream *)self _scheduleCallback];
  }

  statusLock = self->_statusLock;

  [(NSRecursiveLock *)statusLock unlock];
}

- (void)_streamEventTrigger
{
  selfCopy = self;
  v10 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v4 = self->_inputFromAccCondition;
  v5 = self->_statusLock;
  [(NSRecursiveLock *)self->_statusLock lock];
  if (!self->_isOpenCompletedEventSent && self->_streamStatus == 2)
  {
    self->_isOpenCompletedEventSent = 1;
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      [self->_delegate stream:self handleEvent:1];
    }
  }

  if (!self->_isAtEndEventSent && self->_streamStatus == 5)
  {
    self->_isAtEndEventSent = 1;
    v7 = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      [self->_delegate stream:self handleEvent:16];
    }
  }

  [(NSCondition *)self->_inputFromAccCondition lock];
  if ([(NSMutableData *)self->_inputFromAccData length])
  {
    hasNewBytesAvailable = self->_hasNewBytesAvailable;
    self->_hasNewBytesAvailable = 0;
    [(NSCondition *)self->_inputFromAccCondition unlock];
    if (hasNewBytesAvailable)
    {
      v9 = self->_delegate;
      if (objc_opt_respondsToSelector())
      {
        [self->_delegate stream:self handleEvent:2];
      }
    }
  }

  else
  {
    self->_hasNewBytesAvailable = 0;
    [(NSCondition *)self->_inputFromAccCondition unlock];
  }

  [(NSRecursiveLock *)self->_statusLock unlock];
}

- (void)_scheduleCallback
{
  v3 = self->_runloopLock;
  [(NSRecursiveLock *)self->_runloopLock lock];
  runLoopSource = self->_runLoopSource;
  if (runLoopSource)
  {
    CFRunLoopSourceSignal(runLoopSource);
    runLoop = self->_runLoop;
    if (runLoop)
    {
      CFRunLoopWakeUp(runLoop);
    }

    else
    {
      NSLog(&cfstr_Externalaccess_86.isa, "/Library/Caches/com.apple.xbs/Sources/ExternalAccessory/EAInputStream.m", "[EAInputStream _scheduleCallback]", 531);
    }
  }

  [(NSRecursiveLock *)self->_runloopLock unlock];
  runloopLock = self->_runloopLock;
}

@end