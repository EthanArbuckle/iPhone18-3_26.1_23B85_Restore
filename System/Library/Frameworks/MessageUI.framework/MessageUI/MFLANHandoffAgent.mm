@interface MFLANHandoffAgent
- (MFLANHandoffAgent)init;
- (id)_getDeviceHostname;
- (id)startServerWithCompletion:(id)a3;
- (void)_cleanupRunLoopSource;
- (void)_cleanupSocket;
- (void)_socketListenerRunLoop;
- (void)connectToServerWithContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)stopServer;
@end

@implementation MFLANHandoffAgent

- (MFLANHandoffAgent)init
{
  v3.receiver = self;
  v3.super_class = MFLANHandoffAgent;
  return [(MFLANHandoffAgent *)&v3 init];
}

- (void)dealloc
{
  _Block_release(self->_connectCallbackBlock);
  [(MFLANHandoffAgent *)self stopServer];
  v3.receiver = self;
  v3.super_class = MFLANHandoffAgent;
  [(MFLANHandoffAgent *)&v3 dealloc];
}

- (id)_getDeviceHostname
{
  v9 = 0;
  v2 = getifaddrs(&v9);
  v3 = 0;
  v4 = v9;
  if (!v2 && v9)
  {
    v5 = v9;
    while (1)
    {
      ifa_addr = v5->ifa_addr;
      if (ifa_addr->sa_family == 2 && !strcmp(v5->ifa_name, "en0"))
      {
        break;
      }

      v5 = v5->ifa_next;
      if (!v5)
      {
        v3 = 0;
        goto LABEL_9;
      }
    }

    v7.s_addr = *&ifa_addr->sa_data[2];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:inet_ntoa(v7)];
    v4 = v9;
  }

LABEL_9:
  MEMORY[0x1BFB4B750](v4);
  return v3;
}

- (void)_socketListenerRunLoop
{
  v3 = objc_autoreleasePoolPush();
  if (!self->_serverRunLoopSource)
  {
    self->_serverRunLoopSource = CFSocketCreateRunLoopSource(0, self->_socket, 0);
  }

  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, self->_serverRunLoopSource, *MEMORY[0x1E695E8E0]);
  CFRunLoopRun();
  self->_serverRunning = 0;
  [(MFLANHandoffAgent *)self _cleanupRunLoopSource];

  objc_autoreleasePoolPop(v3);
}

- (void)_cleanupRunLoopSource
{
  if (self->_serverRunLoopSource)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, self->_serverRunLoopSource, *MEMORY[0x1E695E8E0]);
    CFRelease(self->_serverRunLoopSource);
    self->_serverRunLoopSource = 0;
  }
}

- (void)_cleanupSocket
{
  socket = self->_socket;
  if (socket)
  {
    CFSocketInvalidate(socket);
    CFRelease(self->_socket);
    self->_socket = 0;
  }
}

- (void)stopServer
{
  [(MFLANHandoffAgent *)self _cleanupRunLoopSource];
  [(MFLANHandoffAgent *)self _cleanupSocket];
  self->_serverRunning = 0;

  self->_handoffContext = 0;
}

- (id)startServerWithCompletion:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (self->_serverRunning)
  {
    return self->_handoffContext;
  }

  context.version = 0;
  memset(&context.retain, 0, 24);
  context.info = self;
  v5 = CFSocketCreate(0, 2, 1, 6, 2uLL, _serverSocketConnectCallback, &context);
  self->_socket = v5;
  if (!v5)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MFLANHandoffAgent startServerWithCompletion:v10];
    }

    return self->_handoffContext;
  }

  Native = CFSocketGetNative(v5);
  v20 = 1;
  setsockopt(Native, 0xFFFF, 4, &v20, 1u);
  v19 = 16;
  *bytes = 528;
  v28 = 0;
  v7 = CFDataCreate(0, bytes, 16);
  v8 = CFSocketSetAddress(self->_socket, v7);
  CFRelease(v7);
  if (v8)
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MFLANHandoffAgent *)v8 startServerWithCompletion:v9];
    }

    return self->_handoffContext;
  }

  v11 = [(MFLANHandoffAgent *)self _getDeviceHostname];
  if (v11)
  {
    v12 = v11;
    *&v26.sa_len = 0xAAAAAAAAAAAAAAAALL;
    *&v26.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
    v13 = CFSocketGetNative(self->_socket);
    getsockname(v13, &v26, &v19);
    v14 = bswap32(*v26.sa_data) >> 16;
    v15 = objc_alloc_init(MFLANHandoffContext);
    self->_handoffContext = v15;
    [(MFLANHandoffContext *)v15 setHost:v12];
    [(MFLANHandoffContext *)self->_handoffContext setPort:v14];
    v16 = MFLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = v12;
      v24 = 1024;
      v25 = v14;
      _os_log_impl(&dword_1BE819000, v16, OS_LOG_TYPE_INFO, "#Hand-Off [LAN] Successfully created server socket (%@:%d).", buf, 0x12u);
    }

    self->_connectCallbackBlock = _Block_copy(a3);
    [MEMORY[0x1E696AF00] detachNewThreadSelector:sel__socketListenerRunLoop toTarget:self withObject:0];
    return self->_handoffContext;
  }

  v18 = MFLogGeneral();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [MFLANHandoffAgent startServerWithCompletion:v18];
  }

  return 0;
}

- (void)connectToServerWithContext:(id)a3 completion:(id)a4
{
  v6 = [a3 host];
  v7 = [a3 port];
  if (v6)
  {
    v8 = v7;
    if (v7)
    {
      v10 = 0xAAAAAAAAAAAAAAAALL;
      readStream = 0xAAAAAAAAAAAAAAAALL;
      CFStreamCreatePairWithSocketToHost(*MEMORY[0x1E695E480], v6, v7, &readStream, &v10);
      if (readStream && v10)
      {
        (*(a4 + 2))(a4);
      }

      else
      {
        v9 = MFLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(MFLANHandoffAgent *)v6 connectToServerWithContext:v8 completion:v9];
        }
      }
    }
  }
}

- (void)startServerWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1BE819000, a2, OS_LOG_TYPE_ERROR, "#Hand-Off [LAN] Failed to bind server socket [%ld]", &v2, 0xCu);
}

- (void)connectToServerWithContext:(os_log_t)log completion:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "#Hand-Off [LAN] Error creating read/write streams for host: %@:%d", &v3, 0x12u);
}

@end