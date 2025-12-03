@interface AccessoryEAInterface
+ (id)findNativeEAInterfacesForRegistryID:(unint64_t)d;
+ (void)initializeSessionClose;
- (AccessoryEAInterface)initWithProtocol:(id)protocol endpointUUID:(id)d vid:(unsigned __int16)vid pid:(unsigned __int16)pid eaSessionUUID:(id)iD USBDeviceID:(unint64_t)deviceID;
- (BOOL)closeDataPipes;
- (IOUSBInterfaceStruct942)_createInterfaceFromUSBID:(unint64_t)d;
- (id)_dequeueReadBuffer;
- (id)_dequeueWriteBuffer;
- (void)_acceptSocketCB:(__CFSocket *)b acceptedSock:(int)sock;
- (void)_cancelThread;
- (void)_enqueueWriteBuffer:(id)buffer;
- (void)_readComplete:(id)complete readLength:(unint64_t)length;
- (void)_readSessionDataFromApp;
- (void)_readSessionDataFromUSB;
- (void)_registerListenSocket;
- (void)_run;
- (void)_sendSessionCloseNotification;
- (void)_sendSessionOpenNotification;
- (void)_writeComplete:(id)complete writeLength:(unint64_t)length;
- (void)_writeData:(id)data;
- (void)_writeSessionDataToApp;
- (void)_writeUSBData:(id)data;
- (void)dealloc;
- (void)setDataInHandler:(id)handler;
- (void)shuttingDownSession;
@end

@implementation AccessoryEAInterface

- (AccessoryEAInterface)initWithProtocol:(id)protocol endpointUUID:(id)d vid:(unsigned __int16)vid pid:(unsigned __int16)pid eaSessionUUID:(id)iD USBDeviceID:(unint64_t)deviceID
{
  pidCopy = pid;
  protocolCopy = protocol;
  v38.receiver = self;
  v38.super_class = AccessoryEAInterface;
  v15 = [(iAP2EASession *)&v38 initWithProtocol:protocolCopy endpointUUID:d eaSessionUUID:iD];
  v16 = v15;
  if (v15)
  {
    v15->_listenSockRef = 0;
    v15->_listenSockRls = 0;
    v15->_sockRef = 0;
    v15->_sockRls = 0;
    v15->_sockReadDisabled = 0;
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    writeBufferArray = v16->_writeBufferArray;
    v16->_writeBufferArray = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    readBufferArray = v16->_readBufferArray;
    v16->_readBufferArray = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dataForAppArray = v16->_dataForAppArray;
    v16->_dataForAppArray = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    allWriteBuffers = v16->_allWriteBuffers;
    v16->_allWriteBuffers = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    allReadBuffers = v16->_allReadBuffers;
    v16->_allReadBuffers = v25;

    v16->_deviceID = deviceID;
    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:protocolCopy];
    protocolName = v16->_protocolName;
    v16->_protocolName = v27;

    v16->_vid = vid;
    v16->_pid = pidCopy;
    v29 = pidCopy | (v16->_vid << 16);
    v16->_vidpid = v29;
    if (v29 == 95164176)
    {
      v30 = 1024;
    }

    else
    {
      v30 = 0x20000;
    }

    v31 = 8;
    do
    {
      v32 = [[EAUSBBuffer alloc] initWithSession:v16 bufferSize:v30];
      [(NSMutableArray *)v16->_allReadBuffers addObject:v32];
      [(AccessoryEAInterface *)v16 _enqueueReadBuffer:v32];

      --v31;
    }

    while (v31);
    v33 = 8;
    do
    {
      v34 = [[EAUSBBuffer alloc] initWithSession:v16 bufferSize:v30];
      [(NSMutableArray *)v16->_allWriteBuffers addObject:v34];
      [(AccessoryEAInterface *)v16 _enqueueWriteBuffer:v34];

      --v33;
    }

    while (v33);
    v35 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:v16 selector:sel__run object:0];
    runLoopThread = v16->_runLoopThread;
    v16->_runLoopThread = v35;

    [(NSThread *)v16->_runLoopThread start];
    [(AccessoryEAInterface *)v16 performSelector:sel__registerListenSocket onThread:v16->_runLoopThread withObject:0 waitUntilDone:1];
  }

  return v16;
}

- (void)shuttingDownSession
{
  v11 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    protocolName = self->_protocolName;
    *buf = 138412290;
    v10 = protocolName;
    _os_log_impl(&dword_2336F5000, v5, OS_LOG_TYPE_DEFAULT, "Shutting down session for NativeEA protocol %@", buf, 0xCu);
  }

  [(AccessoryEAInterface *)self closeDataPipes];
  [(AccessoryEAInterface *)self _sendSessionCloseNotification];
  v8.receiver = self;
  v8.super_class = AccessoryEAInterface;
  [(iAP2EASession *)&v8 shuttingDownSession];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  protocolName = self->_protocolName;
  self->_protocolName = 0;

  writeBufferArray = self->_writeBufferArray;
  self->_writeBufferArray = 0;

  readBufferArray = self->_readBufferArray;
  self->_readBufferArray = 0;

  dataForAppArray = self->_dataForAppArray;
  self->_dataForAppArray = 0;

  allWriteBuffers = self->_allWriteBuffers;
  self->_allWriteBuffers = 0;

  allReadBuffers = self->_allReadBuffers;
  self->_allReadBuffers = 0;

  v9.receiver = self;
  v9.super_class = AccessoryEAInterface;
  [(iAP2EASession *)&v9 dealloc];
}

- (void)setDataInHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x2383AB1E0](self->_dataInHandler);
    v9 = MEMORY[0x2383AB1E0](handlerCopy);
    vidpid = self->_vidpid;
    v14 = 134218496;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 1024;
    v19 = vidpid;
    _os_log_impl(&dword_2336F5000, v7, OS_LOG_TYPE_DEFAULT, "EA Native USB: dataInHandler %p -> %p, vidpid 0x%x", &v14, 0x1Cu);
  }

  v11 = MEMORY[0x2383AB1E0](handlerCopy);
  dataInHandler = self->_dataInHandler;
  self->_dataInHandler = v11;

  if (self->_vidpid == 95164176)
  {
    [(AccessoryEAInterface *)self performSelector:sel__readSessionDataFromUSB onThread:self->_runLoopThread withObject:0 waitUntilDone:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_writeData:(id)data
{
  dataCopy = data;
  _dequeueWriteBuffer = [(AccessoryEAInterface *)self _dequeueWriteBuffer];
  if (_dequeueWriteBuffer)
  {
    v6 = [dataCopy length];
    writeSpaceRemaining = [_dequeueWriteBuffer writeSpaceRemaining];
    if (gLogObjects)
    {
      v8 = gNumLogObjects <= 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = !v8;
    if (v6 <= writeSpaceRemaining)
    {
      if (v9)
      {
        v13 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v13 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(AccessoryEAInterface *)v6 _writeData:v13, v17, v18, v19, v20, v21, v22];
      }

      memcpy([_dequeueWriteBuffer writePtr], objc_msgSend(dataCopy, "bytes"), v6);
      [_dequeueWriteBuffer moveWritePtr:v6];
      if ([_dequeueWriteBuffer dataLength])
      {
        [(AccessoryEAInterface *)self _writeUSBData:_dequeueWriteBuffer];
      }

      else
      {
        [(AccessoryEAInterface *)self _enqueueWriteBuffer:_dequeueWriteBuffer];
      }
    }

    else
    {
      if (v9)
      {
        v10 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v10 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(AccessoryEAInterface *)_dequeueWriteBuffer _writeData:v6, v10];
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 1;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v14 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    else
    {
      v14 = *gLogObjects;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [AccessoryEAInterface _writeData:];
    }
  }
}

- (void)_run
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_registerListenSocket
{
  context.version = 0;
  context.info = self;
  memset(&context.retain, 0, 24);
  _createListenSocket = [(iAP2EASession *)self _createListenSocket];
  self->super._listenSock = _createListenSocket;
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFSocketCreateWithNative(*MEMORY[0x277CBECE8], _createListenSocket, 2uLL, _StaticSockCallback, &context);
  self->_listenSockRef = v5;
  self->_listenSockRls = CFSocketCreateRunLoopSource(v4, v5, 0);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, self->_listenSockRls, *MEMORY[0x277CBF058]);
}

- (void)_acceptSocketCB:(__CFSocket *)b acceptedSock:(int)sock
{
  v16 = 1;
  context.version = 0;
  context.info = self;
  memset(&context.retain, 0, 24);
  self->super._sock = sock;
  v5 = CFSocketCreateWithNative(0, sock, 9uLL, _StaticSockCallback, &context);
  self->_sockRef = v5;
  CFSocketDisableCallBacks(v5, 9uLL);
  self->_sockRls = CFSocketCreateRunLoopSource(*MEMORY[0x277CBECE8], self->_sockRef, 0);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, self->_sockRls, *MEMORY[0x277CBF058]);
  v15 = 0x20000;
  if (setsockopt(self->super._sock, 0xFFFF, 4097, &v15, 4u))
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AccessoryEAInterface _acceptSocketCB:acceptedSock:];
    }

LABEL_24:

    sockRef = self->_sockRef;
    if (sockRef)
    {
      CFSocketInvalidate(sockRef);
      v11 = self->_sockRef;
      if (v11)
      {
        CFRelease(v11);
      }

      self->_sockRef = 0;
    }

    sockRls = self->_sockRls;
    if (sockRls)
    {
      CFRunLoopSourceInvalidate(sockRls);
      v13 = self->_sockRls;
      if (v13)
      {
        CFRelease(v13);
      }

      self->_sockRls = 0;
    }

    return;
  }

  if (setsockopt(self->super._sock, 0xFFFF, 4098, &v15, 4u))
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v7 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AccessoryEAInterface _acceptSocketCB:acceptedSock:];
    }

    goto LABEL_24;
  }

  if (ioctl(self->super._sock, 0x8004667EuLL, &v16) < 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v7 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v7 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AccessoryEAInterface _acceptSocketCB:acceptedSock:];
    }

    goto LABEL_24;
  }

  CFRunLoopSourceInvalidate(self->_listenSockRls);
  CFRelease(self->_listenSockRls);
  self->_listenSockRls = 0;
  CFSocketInvalidate(self->_listenSockRef);
  CFRelease(self->_listenSockRef);
  self->_listenSockRef = 0;
  close(self->super._listenSock);
  self->super._listenSock = -1;
  if (self->super._openPipeToAppAfterAccept)
  {
    [(AccessoryEAInterface *)self _openPipeToApp];
    self->super._openPipeToAppAfterAccept = 0;
  }

  if (self->super._openPipeFromAppAfterAccept)
  {
    [(AccessoryEAInterface *)self _openPipeFromApp];
    self->super._openPipeFromAppAfterAccept = 0;
  }
}

- (BOOL)closeDataPipes
{
  runLoopThread = self->_runLoopThread;
  if (runLoopThread)
  {
    [(NSThread *)runLoopThread cancel];
    [(AccessoryEAInterface *)self performSelector:sel__cancelThread onThread:self->_runLoopThread withObject:0 waitUntilDone:1];
    v4 = self->_runLoopThread;
    self->_runLoopThread = 0;
  }

  return 1;
}

- (void)_cancelThread
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_enqueueWriteBuffer:(id)buffer
{
  [(NSMutableArray *)self->_writeBufferArray addObject:buffer];
  if (self->_sockReadDisabled)
  {
    sockRef = self->_sockRef;
    if (sockRef)
    {

      CFSocketEnableCallBacks(sockRef, 1uLL);
    }
  }
}

- (id)_dequeueWriteBuffer
{
  if ([(NSMutableArray *)self->_writeBufferArray count])
  {
    v3 = [(NSMutableArray *)self->_writeBufferArray objectAtIndex:0];
    [(NSMutableArray *)self->_writeBufferArray removeObjectAtIndex:0];
    [v3 reset];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_dequeueReadBuffer
{
  if ([(NSMutableArray *)self->_readBufferArray count])
  {
    v3 = [(NSMutableArray *)self->_readBufferArray objectAtIndex:0];
    [(NSMutableArray *)self->_readBufferArray removeObjectAtIndex:0];
    [v3 reset];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_readSessionDataFromApp
{
  v26 = *MEMORY[0x277D85DE8];
  _dequeueWriteBuffer = [(AccessoryEAInterface *)self _dequeueWriteBuffer];
  if (_dequeueWriteBuffer)
  {
    v5 = _dequeueWriteBuffer;
    v6 = MEMORY[0x277D86220];
    *&v4 = 134218240;
    v19 = v4;
    while (1)
    {
      v7 = recv(self->super._sock, [v5 writePtr], objc_msgSend(v5, "writeSpaceRemaining"), 0);
      v8 = gLogObjects;
      v9 = gNumLogObjects;
      if (gLogObjects)
      {
        v10 = gNumLogObjects <= 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = !v10;
      if (v7 <= 0)
      {
        if (v11)
        {
          v15 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v23 = v8;
            v24 = 1024;
            v25 = v9;
            _os_log_error_impl(&dword_2336F5000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v16 = v6;
          v15 = v6;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [(AccessoryEAInterface *)&v20 _readSessionDataFromApp];
        }

LABEL_27:
        if (![v5 dataLength])
        {
          [(AccessoryEAInterface *)self _enqueueWriteBuffer:v5];

          goto LABEL_32;
        }

        [(AccessoryEAInterface *)self _writeUSBData:v5];
        _dequeueWriteBuffer2 = [(AccessoryEAInterface *)self _dequeueWriteBuffer];

        v5 = _dequeueWriteBuffer2;
        if (!_dequeueWriteBuffer2)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v12 = v7;
        if (v11)
        {
          v13 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v23 = v8;
            v24 = 1024;
            v25 = v9;
            _os_log_error_impl(&dword_2336F5000, v6, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v14 = v6;
          v13 = v6;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v23 = v12;
          _os_log_debug_impl(&dword_2336F5000, v13, OS_LOG_TYPE_DEBUG, "EA Native USB:  read %zd bytes from app", buf, 0xCu);
        }

        [v5 moveWritePtr:v12];
        if (![v5 writeSpaceRemaining])
        {
          goto LABEL_27;
        }
      }
    }
  }

  CFSocketDisableCallBacks(self->_sockRef, 1uLL);
  self->_sockReadDisabled = 1;
LABEL_32:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_writeUSBData:(id)data
{
  dataCopy = data;
  if (![dataCopy writeAttempts] || !objc_msgSend(dataCopy, "dataLength"))
  {
    goto LABEL_10;
  }

  do
  {
    [dataCopy attemptWrite];
    v4 = ((*self->_usbInterface)->WritePipeAsyncTO)(self->_usbInterface, self->_outPipe, [dataCopy readPtr], objc_msgSend(dataCopy, "dataLength"), 5000, 15000, _StaticUSBWriteComplete, dataCopy);
    if (!v4)
    {
      break;
    }

    v5 = v4;
    [dataCopy setUsbError:v4];
    if (v5 != -536854449 || [(AccessoryEAInterface *)self _clearPipeStall:self->_outPipe])
    {
      goto LABEL_10;
    }
  }

  while ([dataCopy writeAttempts] && objc_msgSend(dataCopy, "dataLength"));
  if (![dataCopy writeAttempts] || !objc_msgSend(dataCopy, "dataLength"))
  {
LABEL_10:
    [(AccessoryEAInterface *)self _writeComplete:dataCopy writeLength:0];
  }
}

- (void)_writeComplete:(id)complete writeLength:(unint64_t)length
{
  completeCopy = complete;
  [completeCopy moveReadPtr:length];
  if ([completeCopy usbError])
  {
    if ([completeCopy writeAttempts])
    {
      [(AccessoryEAInterface *)self _writeUSBData:completeCopy];
      goto LABEL_6;
    }

    NSLog(&cfstr_WriteTimedout.isa);
  }

  [(AccessoryEAInterface *)self _enqueueWriteBuffer:completeCopy];
LABEL_6:
}

- (void)_readSessionDataFromUSB
{
  _dequeueReadBuffer = [(AccessoryEAInterface *)self _dequeueReadBuffer];
  if (_dequeueReadBuffer)
  {
    while (1)
    {
      v7 = _dequeueReadBuffer;
      v4 = ((*self->_usbInterface)->ReadPipeAsync)(self->_usbInterface, self->_inPipe, [_dequeueReadBuffer writePtr], objc_msgSend(v7, "writeSpaceRemaining"), _StaticUSBReadComplete, v7);
      if (v4)
      {
        v5 = v4;
        NSLog(&cfstr_SUX.isa, "[AccessoryEAInterface _readSessionDataFromUSB]", 1119, v4);
        if (v5 == -536854449)
        {
          if ([(AccessoryEAInterface *)self _clearPipeStall:self->_inPipe])
          {
            break;
          }
        }

        if (((*self->_usbInterface)->ReadPipeAsync)(self->_usbInterface, self->_inPipe, [v7 writePtr], objc_msgSend(v7, "writeSpaceRemaining"), _StaticUSBReadComplete, v7))
        {
          break;
        }
      }

      _dequeueReadBuffer2 = [(AccessoryEAInterface *)self _dequeueReadBuffer];

      _dequeueReadBuffer = _dequeueReadBuffer2;
      if (!_dequeueReadBuffer2)
      {
        return;
      }
    }

    [(AccessoryEAInterface *)self _enqueueReadBuffer:v7];
  }
}

- (void)_readComplete:(id)complete readLength:(unint64_t)length
{
  completeCopy = complete;
  if ([completeCopy usbError])
  {
    [(AccessoryEAInterface *)self _enqueueReadBuffer:completeCopy];
    [(AccessoryEAInterface *)self _readSessionDataFromUSB];
    sockRef = self->_sockRef;
    if (sockRef)
    {
      CFSocketEnableCallBacks(sockRef, 8uLL);
    }
  }

  else
  {
    [completeCopy moveWritePtr:length];
    [(NSMutableArray *)self->_dataForAppArray insertObject:completeCopy atIndex:[(NSMutableArray *)self->_dataForAppArray count]];
    [(AccessoryEAInterface *)self _writeSessionDataToApp];
  }
}

- (void)_writeSessionDataToApp
{
  dataLength = [a2 dataLength];
  *self = 134217984;
  *a3 = dataLength;
  _os_log_debug_impl(&dword_2336F5000, a4, OS_LOG_TYPE_DEBUG, "EA Native USB: send %lu bytes to dataInHandler", self, 0xCu);
}

- (IOUSBInterfaceStruct942)_createInterfaceFromUSBID:(unint64_t)d
{
  v60 = *MEMORY[0x277D85DE8];
  v55 = 0;
  v4 = *MEMORY[0x277CD28A0];
  v5 = IORegistryEntryIDMatching(d);
  MatchingService = IOServiceGetMatchingService(v4, v5);
  if (!MatchingService)
  {
    v11 = 0;
    goto LABEL_78;
  }

  v7 = MatchingService;
  theInterface = 0;
  theScore = 0;
  v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
  v9 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v10 = IOCreatePlugInInterfaceForService(v7, v8, v9, &theInterface, &theScore);
  v11 = 0;
  v12 = theInterface;
  if (v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = theInterface == 0;
  }

  if (!v13)
  {
    v52 = 0;
    QueryInterface = (*theInterface)->QueryInterface;
    v15 = *MEMORY[0x277CBED08];
    byte7 = 0xE08C7C05778B8B87;
    v17 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x277CBED08], 1u, 0xA2u, 0xD0u, 0xE9u, 0x42u, 0xF6u, 0x4Au, 0x87u, 0x8Bu, 0x8Bu, 0x77u, 5u, 0x7Cu, 0x8Cu, 0xE0u, 0xCEu);
    v18 = CFUUIDGetUUIDBytes(v17);
    v19 = (QueryInterface)(v12, *&v18.byte0, *&v18.byte8, &v52);
    if (((*theInterface)->Release)(theInterface))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v20 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v20 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [AccessoryEAInterface _createInterfaceFromUSBID:];
      }
    }

    v11 = 0;
    if (!v19)
    {
      if (v52)
      {
        v51 = 0x100F000FFLL;
        iterator = 0;
        if ((*(*v52 + 224))(v52, &v51, &iterator) || !iterator)
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v38 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
            }

            v38 = MEMORY[0x277D86220];
            v39 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [AccessoryEAInterface _createInterfaceFromUSBID:];
          }
        }

        else
        {
          v22 = IOIteratorNext(iterator);
          if (v22)
          {
            v23 = v22;
            v11 = 0;
            v24 = MEMORY[0x277D86220];
            do
            {
              v25 = CFUUIDGetConstantUUIDWithBytes(v15, 1u, 0xA2u, 0xD0u, 0xE9u, 0x42u, 0xF6u, 0x4Au, byte7, BYTE1(byte7), BYTE2(byte7), BYTE3(byte7), BYTE4(byte7), BYTE5(byte7), BYTE6(byte7), HIBYTE(byte7), 0xCEu);
              v26 = CFUUIDGetConstantUUIDWithBytes(0, 0xBCu, 0xEAu, 0xADu, 0xDCu, 0x88u, 0x4Du, 0x4Fu, 0x27u, 0x83u, 0x40u, 0x36u, 0xD6u, 0x9Fu, 0xABu, 0x90u, 0xF6u);
              InterfaceAndNameString = usbUtil_getInterfaceAndNameString(v7, v25, v23, v26, &v55);
              v28 = InterfaceAndNameString;
              if (InterfaceAndNameString && [InterfaceAndNameString isEqualToString:self->_protocolName])
              {
                v11 = v55;
              }

              else if (((*v55)->Release)(v55))
              {
                v29 = byte7;
                v30 = gLogObjects;
                v31 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v32 = *gLogObjects;
                }

                else
                {
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    v57 = v30;
                    v58 = 1024;
                    v59 = v31;
                    _os_log_error_impl(&dword_2336F5000, v24, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v33 = v24;
                  v32 = v24;
                }

                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  [(AccessoryEAInterface *)&v48 _createInterfaceFromUSBID:v49];
                }

                byte7 = v29;
              }

              if (IOObjectRelease(v23))
              {
                v34 = gLogObjects;
                v35 = gNumLogObjects;
                if (gLogObjects && gNumLogObjects >= 1)
                {
                  v36 = *gLogObjects;
                }

                else
                {
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134218240;
                    v57 = v34;
                    v58 = 1024;
                    v59 = v35;
                    _os_log_error_impl(&dword_2336F5000, v24, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                  }

                  v37 = v24;
                  v36 = v24;
                }

                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  [(AccessoryEAInterface *)&v46 _createInterfaceFromUSBID:v47];
                }
              }

              v23 = IOIteratorNext(iterator);
            }

            while (v23);
            goto LABEL_58;
          }
        }

        v11 = 0;
LABEL_58:
        if ((*(*v52 + 24))(v52))
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v40 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
            }

            v40 = MEMORY[0x277D86220];
            v41 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            [AccessoryEAInterface _createInterfaceFromUSBID:];
          }
        }
      }
    }
  }

  if (IOObjectRelease(v7))
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v42 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v42 = MEMORY[0x277D86220];
      v43 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [AccessoryEAInterface _createInterfaceFromUSBID:];
    }
  }

LABEL_78:
  v44 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)findNativeEAInterfacesForRegistryID:(unint64_t)d
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = 0x2812FF000uLL;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *gLogObjects;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_2336F5000, v8, OS_LOG_TYPE_DEFAULT, "Looking for Native USB EA interfaces with parent registry ID 0x%llX", buf, 0xCu);
  }

  v9 = *MEMORY[0x277CD28A0];
  v10 = IORegistryEntryIDMatching(d);
  MatchingService = IOServiceGetMatchingService(v9, v10);
  if (MatchingService)
  {
    v12 = MatchingService;
    theInterface = 0;
    theScore = 0;
    v13 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
    v14 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
    v15 = IOCreatePlugInInterfaceForService(v12, v13, v14, &theInterface, &theScore);
    if (IOObjectRelease(v12))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v16 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v16 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [AccessoryEAInterface _createInterfaceFromUSBID:];
      }
    }

    if (!v15)
    {
      v18 = theInterface;
      if (theInterface)
      {
        v49 = 0;
        QueryInterface = (*theInterface)->QueryInterface;
        v20 = *MEMORY[0x277CBED08];
        v21 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x277CBED08], 1u, 0xA2u, 0xD0u, 0xE9u, 0x42u, 0xF6u, 0x4Au, 0x87u, 0x8Bu, 0x8Bu, 0x77u, 5u, 0x7Cu, 0x8Cu, 0xE0u, 0xCEu);
        v22 = CFUUIDGetUUIDBytes(v21);
        v23 = (QueryInterface)(v18, *&v22.byte0, *&v22.byte8, &v49);
        if (((*theInterface)->Release)(theInterface))
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v24 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
            }

            v24 = MEMORY[0x277D86220];
            v25 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [AccessoryEAInterface _createInterfaceFromUSBID:];
          }
        }

        if (!v23 && v49)
        {
          v48 = 0x100F000FFLL;
          iterator = 0;
          if ((*(*v49 + 224))(v49, &v48, &iterator) || !iterator)
          {
            if (gLogObjects && gNumLogObjects >= 1)
            {
              v37 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
              }

              v37 = MEMORY[0x277D86220];
              v38 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [AccessoryEAInterface _createInterfaceFromUSBID:];
            }
          }

          else
          {
            v26 = IOIteratorNext(iterator);
            if (v26)
            {
              v27 = v26;
              v28 = MEMORY[0x277D86220];
              do
              {
                v29 = CFUUIDGetConstantUUIDWithBytes(v20, 1u, 0xA2u, 0xD0u, 0xE9u, 0x42u, 0xF6u, 0x4Au, 0x87u, 0x8Bu, 0x8Bu, 0x77u, 5u, 0x7Cu, 0x8Cu, 0xE0u, 0xCEu);
                v30 = CFUUIDGetConstantUUIDWithBytes(0, 0xBCu, 0xEAu, 0xADu, 0xDCu, 0x88u, 0x4Du, 0x4Fu, 0x27u, 0x83u, 0x40u, 0x36u, 0xD6u, 0x9Fu, 0xABu, 0x90u, 0xF6u);
                InterfaceAndNameString = usbUtil_getInterfaceAndNameString(v12, v29, v27, v30, 0);
                if (InterfaceAndNameString)
                {
                  v32 = v5;
                  v33 = *(v5 + 1880);
                  v34 = gNumLogObjects;
                  if (v33 && gNumLogObjects >= 1)
                  {
                    v35 = *v33;
                  }

                  else
                  {
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134218240;
                      dCopy = v33;
                      v54 = 1024;
                      v55 = v34;
                      _os_log_error_impl(&dword_2336F5000, v28, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    }

                    v36 = v28;
                    v35 = v28;
                  }

                  v5 = v32;
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    dCopy = InterfaceAndNameString;
                    _os_log_impl(&dword_2336F5000, v35, OS_LOG_TYPE_DEFAULT, "Found interfaceNameString %@", buf, 0xCu);
                  }

                  [v4 addObject:InterfaceAndNameString];
                }

                v27 = IOIteratorNext(iterator);
              }

              while (v27);
            }
          }

          if ((*(*v49 + 24))(v49))
          {
            v39 = *(v5 + 1880);
            if (v39 && gNumLogObjects >= 1)
            {
              v40 = *v39;
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
              }

              v40 = MEMORY[0x277D86220];
              v41 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              [AccessoryEAInterface _createInterfaceFromUSBID:];
            }
          }
        }
      }
    }
  }

  v42 = *(v5 + 1880);
  if (v42 && gNumLogObjects >= 1)
  {
    v43 = *v42;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
    }

    v43 = MEMORY[0x277D86220];
    v44 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    dCopy = v4;
    _os_log_impl(&dword_2336F5000, v43, OS_LOG_TYPE_DEFAULT, "Native EA endpoint protocols found: %@", buf, 0xCu);
  }

  if (![v4 count])
  {

    v4 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_sendSessionOpenNotification
{
  v13 = *MEMORY[0x277D85DE8];
  if (!_totalNumberOpenNativeSessions++)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 1;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v5 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_2336F5000, v5, OS_LOG_TYPE_DEFAULT, "Created first EA Native Session, post notification", &v11, 2u);
    }

    EANativeSessionStatus = -1;
    if (notify_register_check("com.apple.accessories.ea.native.sessionStatusChanged", &EANativeSessionStatus))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v6 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v6 = MEMORY[0x277D86220];
        v8 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = "com.apple.accessories.ea.native.sessionStatusChanged";
        _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_DEFAULT, "Failed to register for %s notification!", &v11, 0xCu);
      }
    }

    else
    {
      notify_set_state(EANativeSessionStatus, 1uLL);
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v7 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v7 = MEMORY[0x277D86220];
        v9 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v11 = 136315138;
        v12 = "com.apple.accessories.ea.native.sessionStatusChanged";
        _os_log_impl(&dword_2336F5000, v7, OS_LOG_TYPE_INFO, "Post notification %s with state 1!", &v11, 0xCu);
      }

      notify_post("com.apple.accessories.ea.native.sessionStatusChanged");
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendSessionCloseNotification
{
  v12 = *MEMORY[0x277D85DE8];
  if (!--_totalNumberOpenNativeSessions)
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 1;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v4 = MEMORY[0x277D86220];
      v3 = MEMORY[0x277D86220];
    }

    else
    {
      v4 = *gLogObjects;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_2336F5000, v4, OS_LOG_TYPE_DEFAULT, "No more EA Native Sessions, post notification", &v10, 2u);
    }

    EANativeSessionStatus = -1;
    if (notify_register_check("com.apple.accessories.ea.native.sessionStatusChanged", &EANativeSessionStatus))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v5 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v5 = MEMORY[0x277D86220];
        v7 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        v11 = "com.apple.accessories.ea.native.sessionStatusChanged";
        _os_log_impl(&dword_2336F5000, v5, OS_LOG_TYPE_DEFAULT, "Failed to register for %s notification!", &v10, 0xCu);
      }
    }

    else
    {
      notify_set_state(EANativeSessionStatus, 0);
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v6 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
        }

        v6 = MEMORY[0x277D86220];
        v8 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = 136315138;
        v11 = "com.apple.accessories.ea.native.sessionStatusChanged";
        _os_log_impl(&dword_2336F5000, v6, OS_LOG_TYPE_INFO, "Post notification %s with state 0!", &v10, 0xCu);
      }

      notify_post("com.apple.accessories.ea.native.sessionStatusChanged");
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)initializeSessionClose
{
  v9 = *MEMORY[0x277D85DE8];
  if (initializeSessionClose_onceToken != -1)
  {
    +[AccessoryEAInterface initializeSessionClose];
  }

  EANativeSessionStatus = -1;
  if (notify_register_check("com.apple.accessories.ea.native.sessionStatusChanged", &EANativeSessionStatus))
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v2 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v2 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "com.apple.accessories.ea.native.sessionStatusChanged";
      _os_log_impl(&dword_2336F5000, v2, OS_LOG_TYPE_DEFAULT, "Failed to register for %s notification!", &v7, 0xCu);
    }
  }

  else
  {
    notify_set_state(EANativeSessionStatus, 0);
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v3 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryUSBBillboardDeviceListener startDetectUSBBillboardDevice];
      }

      v3 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "com.apple.accessories.ea.native.sessionStatusChanged";
      _os_log_impl(&dword_2336F5000, v3, OS_LOG_TYPE_INFO, "Post initial notification %s with state 0!", &v7, 0xCu);
    }

    notify_post("com.apple.accessories.ea.native.sessionStatusChanged");
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_writeData:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0(&dword_2336F5000, a2, a3, "EA Native USB:  read %zd bytes from app", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_writeData:(NSObject *)a3 .cold.4(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218240;
  v6 = a2;
  v7 = 2048;
  v8 = [a1 writeSpaceRemaining];
  _os_log_error_impl(&dword_2336F5000, a3, OS_LOG_TYPE_ERROR, "EA Native USB: read bytes from app, TOO Many Bytes!!! numberOfBytesRead %zd vs %lu", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_writeData:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_acceptSocketCB:acceptedSock:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_acceptSocketCB:acceptedSock:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_acceptSocketCB:acceptedSock:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createInterfaceFromUSBID:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createInterfaceFromUSBID:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createInterfaceFromUSBID:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createInterfaceFromUSBID:.cold.10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end