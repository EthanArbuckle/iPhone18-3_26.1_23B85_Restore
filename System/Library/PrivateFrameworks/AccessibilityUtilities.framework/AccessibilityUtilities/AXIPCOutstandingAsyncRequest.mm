@interface AXIPCOutstandingAsyncRequest
+ (id)lookupByPort:(unsigned int)a3;
+ (void)initialize;
+ (void)registerOutstandingRequest:(id)a3;
+ (void)unregisterByPort:(unsigned int)a3;
- (AXIPCOutstandingAsyncRequest)initWithReplyPort:(unsigned int)a3 handlerQueue:(id)a4 handler:(id)a5;
- (void)_responseReceived:(id)a3;
- (void)dealloc;
- (void)initialSendAborted;
- (void)rawResponseReceived:(id)a3;
- (void)registerAndListenForResponse;
- (void)sendOnceRightDestroyed;
@end

@implementation AXIPCOutstandingAsyncRequest

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___AXIPCOutstandingAsyncRequest;
  objc_msgSendSuper2(&v2, sel_initialize);
  if (initialize_token != -1)
  {
    +[AXIPCOutstandingAsyncRequest initialize];
  }
}

uint64_t __42__AXIPCOutstandingAsyncRequest_initialize__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = OutstandingAsyncRequestsLock;
  OutstandingAsyncRequestsLock = v0;

  AllOutstandingAsyncRequests = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)lookupByPort:(unsigned int)a3
{
  [OutstandingAsyncRequestsLock lock];
  v4 = AllOutstandingAsyncRequests;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKey:v5];

  v7 = AXRetainAutorelease(v6);
  [OutstandingAsyncRequestsLock unlock];

  return v6;
}

+ (void)unregisterByPort:(unsigned int)a3
{
  [OutstandingAsyncRequestsLock lock];
  v4 = AllOutstandingAsyncRequests;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v4 removeObjectForKey:v5];

  v6 = OutstandingAsyncRequestsLock;

  [v6 unlock];
}

+ (void)registerOutstandingRequest:(id)a3
{
  v3 = OutstandingAsyncRequestsLock;
  v4 = a3;
  [v3 lock];
  v5 = AllOutstandingAsyncRequests;
  v6 = [v4 replyPort];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  [v5 setObject:v4 forKey:v7];

  v8 = OutstandingAsyncRequestsLock;

  [v8 unlock];
}

- (AXIPCOutstandingAsyncRequest)initWithReplyPort:(unsigned int)a3 handlerQueue:(id)a4 handler:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = AXIPCOutstandingAsyncRequest;
  v11 = [(AXIPCOutstandingAsyncRequest *)&v16 init];
  if (v11)
  {
    if (a3 - 1 >= 0xFFFFFFFE)
    {
      _AXAssert();
    }

    v12 = MSHCreateMIGServerSource();
    v11->_replyMachPortSource = v12;
    if (v12)
    {
      MSHMIGSourceSetSendOnceCallback();
      v11->_replyPort = a3;
      objc_storeStrong(&v11->_replyQueue, a4);
      v13 = [v10 copy];
      replyHandler = v11->_replyHandler;
      v11->_replyHandler = v13;
    }

    else
    {
      replyHandler = v11;
      v11 = 0;
    }
  }

  return v11;
}

- (void)dealloc
{
  replyHandler = self->_replyHandler;
  self->_replyHandler = 0;

  replyMachPortSource = self->_replyMachPortSource;
  if (replyMachPortSource)
  {
    CFRunLoopSourceInvalidate(replyMachPortSource);
    v5 = self->_replyMachPortSource;
    if (v5)
    {
      CFRelease(v5);
      self->_replyMachPortSource = 0;
    }
  }

  replyPort = self->_replyPort;
  if (replyPort + 1 >= 2)
  {
    v7 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], replyPort, 1u, -1);
    if (v7)
    {
      v8 = v7;
      v9 = mach_error_string(v7);
      v12 = "[AXIPCOutstandingAsyncRequest dealloc]";
      v13 = self->_replyPort;
      v10 = v8;
      v11 = v9;
      _AXAssert();
    }

    self->_replyPort = 0;
  }

  v14.receiver = self;
  v14.super_class = AXIPCOutstandingAsyncRequest;
  [(AXIPCOutstandingAsyncRequest *)&v14 dealloc:v10];
}

- (void)registerAndListenForResponse
{
  [objc_opt_class() registerOutstandingRequest:self];
  Main = CFRunLoopGetMain();
  v4 = [(AXIPCOutstandingAsyncRequest *)self replyMachPortSource];
  v5 = *MEMORY[0x1E695E8D0];

  CFRunLoopAddSource(Main, v4, v5);
}

- (void)_responseReceived:(id)a3
{
  v4 = a3;
  [(AXIPCOutstandingAsyncRequest *)self replyMachPortSource];
  MSHMIGSourceSetSendOnceCallback();
  [objc_opt_class() unregisterByPort:{-[AXIPCOutstandingAsyncRequest replyPort](self, "replyPort")}];
  v5 = [(AXIPCOutstandingAsyncRequest *)self replyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AXIPCOutstandingAsyncRequest__responseReceived___block_invoke;
  v7[3] = &unk_1E71EA128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__AXIPCOutstandingAsyncRequest__responseReceived___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) replyHandler];
  (*(v2 + 2))(v2, *(a1 + 40), 0);
}

- (void)rawResponseReceived:(id)a3
{
  v4 = [AXIPCMessage archivedMessageFromData:a3];
  [(AXIPCOutstandingAsyncRequest *)self _responseReceived:v4];
}

- (void)sendOnceRightDestroyed
{
  [objc_opt_class() unregisterByPort:{-[AXIPCOutstandingAsyncRequest replyPort](self, "replyPort")}];
  v3 = [(AXIPCOutstandingAsyncRequest *)self replyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AXIPCOutstandingAsyncRequest_sendOnceRightDestroyed__block_invoke;
  block[3] = &unk_1E71E9B98;
  block[4] = self;
  dispatch_async(v3, block);
}

void __54__AXIPCOutstandingAsyncRequest_sendOnceRightDestroyed__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E69887C8] errorWithDescription:{@"reply send-once right was destroyed, so this async request (%@) will never receive a reply.", *(a1 + 32)}];
  v2 = [*(a1 + 32) replyHandler];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, 0, v4);
  }
}

- (void)initialSendAborted
{
  v3 = objc_opt_class();
  v4 = [(AXIPCOutstandingAsyncRequest *)self replyPort];

  [v3 unregisterByPort:v4];
}

@end