@interface RPDaemonProxy
+ (id)daemonProxy;
- (RPDaemonProxy)init;
- (id)issueSandboxExtensionForClientFileWrite:(id)write;
- (void)captureHandlerWithAudioSample:(id)sample bufferType:(int64_t)type;
- (void)captureHandlerWithSample:(id)sample timingData:(id)data;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)discardInAppRecordingWithHandler:(id)handler;
- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler;
- (void)getSystemBroadcastExtensionInfo:(id)info;
- (void)getSystemBroadcastPickerInfo:(id)info;
- (void)issueSandboxExtensionForMainBundleRead;
- (void)macApplicationDidBecomeActiveWithContextID:(id)d completionHandler:(id)handler;
- (void)macApplicationDidResignActive;
- (void)openControlCenterSystemRecordingView;
- (void)pauseInAppBroadcast;
- (void)pauseInAppCapture;
- (void)pauseInAppRecording;
- (void)recordingDidPause;
- (void)recordingDidStopWithError:(id)error movieURL:(id)l;
- (void)recordingLockInterrupted:(id)interrupted;
- (void)recordingTimerDidUpdate:(id)update;
- (void)reportCameraUsage:(int64_t)usage;
- (void)resumeHQLRWithCompletionHandler:(id)handler;
- (void)resumeInAppBroadcastWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)resumeInAppCaptureWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)resumeInAppClipWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)resumeInAppRecordingWithWindowLayerContextID:(id)d completionHandler:(id)handler;
- (void)resumeSystemBroadcastWithCompletionHandler:(id)handler;
- (void)resumeSystemRecordingWithCompletionHandler:(id)handler;
- (void)saveClipToCameraRoll:(id)roll handler:(id)handler;
- (void)saveVideo:(id)video handler:(id)handler;
- (void)saveVideoToCameraRoll:(id)roll handler:(id)handler;
- (void)setBroadcastURL:(id)l;
- (void)setupBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler;
- (void)setupSystemBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler;
- (void)shouldResumeSessionType:(id)type;
- (void)startHQLRWithSessionInfo:(id)info windowSize:(CGSize)size handler:(id)handler;
- (void)stopAllActiveClients;
- (void)stopClipBufferingWithCompletionHandler:(id)handler;
- (void)stopCurrentActiveSessionWithHandler:(id)handler;
- (void)stopHQLRWithHandler:(id)handler;
- (void)stopInAppBroadcastWithHandler:(id)handler;
- (void)stopInAppCaptureWithHandler:(id)handler;
- (void)stopInAppRecordingWithHandler:(id)handler;
- (void)stopInAppRecordingWithUrl:(id)url handler:(id)handler;
- (void)stopSystemBroadcastWithHandler:(id)handler;
- (void)stopSystemRecordingWithHandler:(id)handler;
- (void)stopSystemRecordingWithURLHandler:(id)handler;
- (void)updateBroadcastServiceInfo:(id)info;
- (void)updateBroadcastURL:(id)l;
- (void)updateScreenRecordingStateWithCurrentState:(id)state;
@end

@implementation RPDaemonProxy

+ (id)daemonProxy
{
  if (daemonProxy_onceToken != -1)
  {
    +[RPDaemonProxy daemonProxy];
  }

  v3 = daemonProxy_daemonProxy;

  return v3;
}

uint64_t __28__RPDaemonProxy_daemonProxy__block_invoke()
{
  daemonProxy_daemonProxy = objc_alloc_init(RPDaemonProxy);

  return MEMORY[0x2821F96F8]();
}

- (RPDaemonProxy)init
{
  v12.receiver = self;
  v12.super_class = RPDaemonProxy;
  v2 = [(RPDaemonProxy *)&v12 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.replayd" options:256];
    [(RPDaemonProxy *)v2 setConnection:v3];

    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D95308];
    [(NSXPCConnection *)v2->_connection setExportedInterface:v4];

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D95280];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connection setDelegate:v2];
    objc_initWeak(&location, v2);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __21__RPDaemonProxy_init__block_invoke;
    v9[3] = &unk_278B623F8;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:v9];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __21__RPDaemonProxy_init__block_invoke_150;
    v7[3] = &unk_278B623F8;
    objc_copyWeak(&v8, &location);
    [(NSXPCConnection *)v2->_connection setInterruptionHandler:v7];
    [(NSXPCConnection *)v2->_connection resume];
    [(RPDaemonProxy *)v2 issueSandboxExtensionForMainBundleRead];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __21__RPDaemonProxy_init__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5814 userInfo:0];
  [WeakRetained recordingDidStopWithError:v3 movieURL:0];
}

void __21__RPDaemonProxy_init__block_invoke_150(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: connection INTERRUPTED", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ReplayKit.RPRecordingErrorDomain" code:-5815 userInfo:0];
  [WeakRetained recordingDidStopWithError:v3 movieURL:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 issueSandboxExtensionForMainBundleRead];
}

- (void)issueSandboxExtensionForMainBundleRead
{
  v7 = *MEMORY[0x277D85DE8];
  if (!__RPLogLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPDaemonProxy issueSandboxExtensionForMainBundleRead]";
    v5 = 1024;
    v6 = 123;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d ", &v3, 0x12u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (id)issueSandboxExtensionForClientFileWrite:(id)write
{
  v19 = *MEMORY[0x277D85DE8];
  path = [write path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  fileSystemRepresentation = [stringByDeletingLastPathComponent fileSystemRepresentation];
  v6 = *MEMORY[0x277D861C0];
  v7 = *MEMORY[0x277D861E8];
  v8 = sandbox_extension_issue_file();
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:4];
    free(v9);
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446722;
      v14 = "[RPDaemonProxy issueSandboxExtensionForClientFileWrite:]";
      v15 = 1024;
      v16 = 149;
      v17 = 2080;
      v18 = fileSystemRepresentation;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Issued sandbox extension for client folder path %s", &v13, 0x1Cu);
    }
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPDaemonProxy issueSandboxExtensionForClientFileWrite:];
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)stopCurrentActiveSessionWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: stopCurrentActiveSessionWithHandler:withHandler:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_154];
  [v5 stopCurrentActiveSessionWithHandler:handlerCopy];
}

void __53__RPDaemonProxy_stopCurrentActiveSessionWithHandler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __53__RPDaemonProxy_stopCurrentActiveSessionWithHandler___block_invoke_cold_1(a2);
  }
}

- (void)stopAllActiveClients
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: stopAllActiveClients:withHandler:", v4, 2u);
  }

  v3 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_156];
  [v3 stopAllActiveClients];
}

void __37__RPDaemonProxy_stopAllActiveClients__block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __37__RPDaemonProxy_stopAllActiveClients__block_invoke_cold_1(a2);
  }
}

void __105__RPDaemonProxy_startInAppRecordingWithContextID_windowSize_microphoneEnabled_cameraEnabled_withHandler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __105__RPDaemonProxy_startInAppRecordingWithContextID_windowSize_microphoneEnabled_cameraEnabled_withHandler___block_invoke_cold_1(a2);
  }
}

- (void)stopInAppRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: stopInAppRecordingWithHandler:withHandler:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_160];
  [v5 stopInAppRecordingWithHandler:handlerCopy];
}

void __47__RPDaemonProxy_stopInAppRecordingWithHandler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __47__RPDaemonProxy_stopInAppRecordingWithHandler___block_invoke_cold_1(a2);
  }
}

- (void)stopInAppRecordingWithUrl:(id)url handler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  urlCopy = url;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446466;
    v13 = "[RPDaemonProxy stopInAppRecordingWithUrl:handler:]";
    v14 = 1024;
    v15 = 209;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v12, 0x12u);
  }

  v8 = [(RPDaemonProxy *)self issueSandboxExtensionForClientFileWrite:urlCopy];
  v9 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_162];
  v10 = v9;
  if (v8)
  {
    [v9 stopInAppRecordingWithUrl:urlCopy extensionToken:v8 handler:handlerCopy];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPDaemonProxy stopInAppRecordingWithUrl:handler:];
    }

    [v10 stopInAppRecordingWithUrl:urlCopy handler:handlerCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __51__RPDaemonProxy_stopInAppRecordingWithUrl_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __51__RPDaemonProxy_stopInAppRecordingWithUrl_handler___block_invoke_cold_1(v2);
  }
}

- (void)discardInAppRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: discardInAppRecordingWithHandler:withHandler:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_164];
  [v5 discardInAppRecordingWithHandler:handlerCopy];
}

void __50__RPDaemonProxy_discardInAppRecordingWithHandler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __50__RPDaemonProxy_discardInAppRecordingWithHandler___block_invoke_cold_1(a2);
  }
}

- (void)pauseInAppRecording
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: pauseInAppRecording:", v4, 2u);
  }

  v3 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_166];
  [v3 pauseInAppRecording];
}

void __36__RPDaemonProxy_pauseInAppRecording__block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __36__RPDaemonProxy_pauseInAppRecording__block_invoke_cold_1(a2);
  }
}

- (void)resumeInAppRecordingWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[RPDaemonProxy resumeInAppRecordingWithWindowLayerContextID:completionHandler:]";
    v12 = 1024;
    v13 = 254;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v10, 0x12u);
  }

  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_168];
  [v8 resumeInAppRecordingWithWindowLayerContextID:dCopy completionHandler:handlerCopy];

  v9 = *MEMORY[0x277D85DE8];
}

void __80__RPDaemonProxy_resumeInAppRecordingWithWindowLayerContextID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __80__RPDaemonProxy_resumeInAppRecordingWithWindowLayerContextID_completionHandler___block_invoke_cold_1(v2);
  }
}

void __103__RPDaemonProxy_startInAppCaptureWithContextID_windowSize_microphoneEnabled_cameraEnabled_withHandler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __103__RPDaemonProxy_startInAppCaptureWithContextID_windowSize_microphoneEnabled_cameraEnabled_withHandler___block_invoke_cold_1(a2);
  }
}

- (void)stopInAppCaptureWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: stopInAppCaptureWithHandler:withHandler:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_172];
  [v5 stopInAppCaptureWithHandler:handlerCopy];
}

void __45__RPDaemonProxy_stopInAppCaptureWithHandler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __45__RPDaemonProxy_stopInAppCaptureWithHandler___block_invoke_cold_1(a2);
  }
}

- (void)pauseInAppCapture
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: pauseInAppCapture", v4, 2u);
  }

  v3 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_174];
  [v3 pauseInAppCapture];
}

void __34__RPDaemonProxy_pauseInAppCapture__block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __34__RPDaemonProxy_pauseInAppCapture__block_invoke_cold_1(a2);
  }
}

- (void)resumeInAppCaptureWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[RPDaemonProxy resumeInAppCaptureWithWindowLayerContextID:completionHandler:]";
    v12 = 1024;
    v13 = 305;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v10, 0x12u);
  }

  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_176];
  [v8 resumeInAppCaptureWithWindowLayerContextID:dCopy completionHandler:handlerCopy];

  v9 = *MEMORY[0x277D85DE8];
}

void __78__RPDaemonProxy_resumeInAppCaptureWithWindowLayerContextID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __78__RPDaemonProxy_resumeInAppCaptureWithWindowLayerContextID_completionHandler___block_invoke_cold_1(v2);
  }
}

- (void)setupBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  infoCopy = info;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: setupBroadcastWithHostBundleID:", v18, 2u);
  }

  v17 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_178];
  [v17 setupBroadcastWithHostBundleID:dCopy broadcastExtensionBundleID:iDCopy broadcastConfigurationData:dataCopy userInfo:infoCopy handler:handlerCopy];
}

void __119__RPDaemonProxy_setupBroadcastWithHostBundleID_broadcastExtensionBundleID_broadcastConfigurationData_userInfo_handler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __119__RPDaemonProxy_setupBroadcastWithHostBundleID_broadcastExtensionBundleID_broadcastConfigurationData_userInfo_handler___block_invoke_cold_1(a2);
  }
}

void __122__RPDaemonProxy_startInAppBroadcastWithContextID_windowSize_microphoneEnabled_cameraEnabled_listenerEndpoint_withHandler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __122__RPDaemonProxy_startInAppBroadcastWithContextID_windowSize_microphoneEnabled_cameraEnabled_listenerEndpoint_withHandler___block_invoke_cold_1(a2);
  }
}

- (void)stopInAppBroadcastWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: stopInAppBroadcastWithHandler:withHandler:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_182];
  [v5 stopInAppBroadcastWithHandler:handlerCopy];
}

void __47__RPDaemonProxy_stopInAppBroadcastWithHandler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __47__RPDaemonProxy_stopInAppBroadcastWithHandler___block_invoke_cold_1(a2);
  }
}

- (void)pauseInAppBroadcast
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: pauseInAppBroadcast:", v4, 2u);
  }

  v3 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_184];
  [v3 pauseInAppBroadcast];
}

void __36__RPDaemonProxy_pauseInAppBroadcast__block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __36__RPDaemonProxy_pauseInAppBroadcast__block_invoke_cold_1(a2);
  }
}

- (void)resumeInAppBroadcastWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[RPDaemonProxy resumeInAppBroadcastWithWindowLayerContextID:completionHandler:]";
    v12 = 1024;
    v13 = 369;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v10, 0x12u);
  }

  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_186];
  [v8 resumeInAppBroadcastWithWindowLayerContextID:dCopy completionHandler:handlerCopy];

  v9 = *MEMORY[0x277D85DE8];
}

void __80__RPDaemonProxy_resumeInAppBroadcastWithWindowLayerContextID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __80__RPDaemonProxy_resumeInAppBroadcastWithWindowLayerContextID_completionHandler___block_invoke_cold_1(v2);
  }
}

void __132__RPDaemonProxy_startSystemRecordingWithContextID_windowSize_microphoneEnabled_cameraEnabled_mixedRealityCameraEnabled_withHandler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __132__RPDaemonProxy_startSystemRecordingWithContextID_windowSize_microphoneEnabled_cameraEnabled_mixedRealityCameraEnabled_withHandler___block_invoke_cold_1(a2);
  }
}

- (void)stopSystemRecordingWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: stopSystemRecordingWithHandler:withHandler:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_190];
  [v5 stopSystemRecordingWithHandler:handlerCopy];
}

void __48__RPDaemonProxy_stopSystemRecordingWithHandler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __48__RPDaemonProxy_stopSystemRecordingWithHandler___block_invoke_cold_1(a2);
  }
}

- (void)stopSystemRecordingWithURLHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPDaemonProxy stopSystemRecordingWithURLHandler:]";
    v9 = 1024;
    v10 = 410;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v7, 0x12u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_192];
  [v5 stopSystemRecordingWithURLHandler:handlerCopy];

  v6 = *MEMORY[0x277D85DE8];
}

void __51__RPDaemonProxy_stopSystemRecordingWithURLHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __51__RPDaemonProxy_stopSystemRecordingWithURLHandler___block_invoke_cold_1(v2);
  }
}

- (void)resumeSystemRecordingWithCompletionHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPDaemonProxy resumeSystemRecordingWithCompletionHandler:]";
    v9 = 1024;
    v10 = 425;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v7, 0x12u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_194];
  [v5 resumeSystemRecordingWithCompletionHandler:handlerCopy];

  v6 = *MEMORY[0x277D85DE8];
}

void __60__RPDaemonProxy_resumeSystemRecordingWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __60__RPDaemonProxy_resumeSystemRecordingWithCompletionHandler___block_invoke_cold_1(v2);
  }
}

- (void)setupSystemBroadcastWithHostBundleID:(id)d broadcastExtensionBundleID:(id)iD broadcastConfigurationData:(id)data userInfo:(id)info handler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  infoCopy = info;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: setupSystemBroadcastWithHostBundleID:withHandler:", v18, 2u);
  }

  v17 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_196];
  [v17 setupSystemBroadcastWithHostBundleID:dCopy broadcastExtensionBundleID:iDCopy broadcastConfigurationData:dataCopy userInfo:infoCopy handler:handlerCopy];
}

void __125__RPDaemonProxy_setupSystemBroadcastWithHostBundleID_broadcastExtensionBundleID_broadcastConfigurationData_userInfo_handler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __125__RPDaemonProxy_setupSystemBroadcastWithHostBundleID_broadcastExtensionBundleID_broadcastConfigurationData_userInfo_handler___block_invoke_cold_1(a2);
  }
}

void __149__RPDaemonProxy_startSystemBroadcastWithContextID_windowSize_microphoneEnabled_cameraEnabled_mixedRealityCameraEnabled_listenerEndpoint_withHandler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __149__RPDaemonProxy_startSystemBroadcastWithContextID_windowSize_microphoneEnabled_cameraEnabled_mixedRealityCameraEnabled_listenerEndpoint_withHandler___block_invoke_cold_1(a2);
  }
}

- (void)stopSystemBroadcastWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: stopSystemBroadcastWithHandler:withHandler:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_200];
  [v5 stopSystemBroadcastWithHandler:handlerCopy];
}

void __48__RPDaemonProxy_stopSystemBroadcastWithHandler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __48__RPDaemonProxy_stopSystemBroadcastWithHandler___block_invoke_cold_1(a2);
  }
}

- (void)resumeSystemBroadcastWithCompletionHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPDaemonProxy resumeSystemBroadcastWithCompletionHandler:]";
    v9 = 1024;
    v10 = 478;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v7, 0x12u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_202];
  [v5 resumeSystemBroadcastWithCompletionHandler:handlerCopy];

  v6 = *MEMORY[0x277D85DE8];
}

void __60__RPDaemonProxy_resumeSystemBroadcastWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __60__RPDaemonProxy_resumeSystemBroadcastWithCompletionHandler___block_invoke_cold_1(v2);
  }
}

- (void)startHQLRWithSessionInfo:(id)info windowSize:(CGSize)size handler:(id)handler
{
  height = size.height;
  width = size.width;
  infoCopy = info;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: startHQLRWithContextID:withHandler:", v21, 2u);
  }

  v11 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_204];
  v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:infoCopy];
  v13 = [infoCopy objectForKeyedSubscript:@"saveToDestination"];
  v14 = [v13 isEqualToString:@"com.apple.replaykit.saveToURL"];

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = [infoCopy objectForKeyedSubscript:@"fileURL"];
  if (v15)
  {
    v16 = v15;
    v17 = [MEMORY[0x277CBEBC0] URLWithString:v15];
    v18 = [(RPDaemonProxy *)self issueSandboxExtensionForClientFileWrite:v17];

    if (v18)
    {
      [v12 setObject:v18 forKeyedSubscript:@"hqlrSandboxTokenForFileURL"];

LABEL_7:
      [v11 startHQLRWithSessionInfo:v12 windowSize:handlerCopy handler:{width, height}];
      goto LABEL_16;
    }

    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPDaemonProxy startHQLRWithSessionInfo:windowSize:handler:];
    }

    v20 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5835 userInfo:0];
    handlerCopy[2](handlerCopy, v20);
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPDaemonProxy startHQLRWithSessionInfo:windowSize:handler:];
    }

    v19 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5834 userInfo:0];
    handlerCopy[2](handlerCopy, v19);
  }

LABEL_16:
}

void __61__RPDaemonProxy_startHQLRWithSessionInfo_windowSize_handler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __61__RPDaemonProxy_startHQLRWithSessionInfo_windowSize_handler___block_invoke_cold_1(a2);
  }
}

- (void)stopHQLRWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: stopSystemRecordingWithHandler:withHandler:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_220];
  [v5 stopHQLRWithHandler:handlerCopy];
}

void __37__RPDaemonProxy_stopHQLRWithHandler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __48__RPDaemonProxy_stopSystemRecordingWithHandler___block_invoke_cold_1(a2);
  }
}

- (void)resumeHQLRWithCompletionHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPDaemonProxy resumeHQLRWithCompletionHandler:]";
    v9 = 1024;
    v10 = 541;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v7, 0x12u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_222];
  [v5 resumeHQLRWithCompletionHandler:handlerCopy];

  v6 = *MEMORY[0x277D85DE8];
}

void __49__RPDaemonProxy_resumeHQLRWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __49__RPDaemonProxy_resumeHQLRWithCompletionHandler___block_invoke_cold_1(v2);
  }
}

- (void)getSystemBroadcastExtensionInfo:(id)info
{
  infoCopy = info;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: getSystemBroadcastExtensionInfo:", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_224];
  [v5 getSystemBroadcastExtensionInfo:infoCopy];
}

void __49__RPDaemonProxy_getSystemBroadcastExtensionInfo___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __119__RPDaemonProxy_setupBroadcastWithHostBundleID_broadcastExtensionBundleID_broadcastConfigurationData_userInfo_handler___block_invoke_cold_1(a2);
  }
}

void __62__RPDaemonProxy_consumeSandboxExtension_processNewConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __62__RPDaemonProxy_consumeSandboxExtension_processNewConnection___block_invoke_cold_1(v2);
  }
}

- (void)macApplicationDidResignActive
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: macApplicationDidResignActive:", v4, 2u);
  }

  v3 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_228];
  [v3 macApplicationDidResignActive];
}

void __46__RPDaemonProxy_macApplicationDidResignActive__block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __46__RPDaemonProxy_macApplicationDidResignActive__block_invoke_cold_1(a2);
  }
}

- (void)macApplicationDidBecomeActiveWithContextID:(id)d completionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[RPDaemonProxy macApplicationDidBecomeActiveWithContextID:completionHandler:]";
    v12 = 1024;
    v13 = 591;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v10, 0x12u);
  }

  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_230];
  [v8 macApplicationDidBecomeActiveWithContextID:dCopy completionHandler:handlerCopy];

  v9 = *MEMORY[0x277D85DE8];
}

void __78__RPDaemonProxy_macApplicationDidBecomeActiveWithContextID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __78__RPDaemonProxy_macApplicationDidBecomeActiveWithContextID_completionHandler___block_invoke_cold_1(v2);
  }
}

- (void)saveVideo:(id)video handler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  videoCopy = video;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446466;
    v13 = "[RPDaemonProxy saveVideo:handler:]";
    v14 = 1024;
    v15 = 620;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v12, 0x12u);
  }

  v8 = [(RPDaemonProxy *)self issueSandboxExtensionForClientFileWrite:videoCopy];
  v9 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_232];
  v10 = v9;
  if (v8)
  {
    [v9 saveVideo:videoCopy extensionToken:v8 handler:handlerCopy];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPDaemonProxy saveVideo:handler:];
    }

    [v10 saveVideo:videoCopy handler:handlerCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __35__RPDaemonProxy_saveVideo_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __35__RPDaemonProxy_saveVideo_handler___block_invoke_cold_1(v2);
  }
}

- (void)saveVideoToCameraRoll:(id)roll handler:(id)handler
{
  rollCopy = roll;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: saveVideoToCameraRoll:", v9, 2u);
  }

  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_234];
  [v8 saveVideoToCameraRoll:rollCopy handler:handlerCopy];
}

void __47__RPDaemonProxy_saveVideoToCameraRoll_handler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __47__RPDaemonProxy_saveVideoToCameraRoll_handler___block_invoke_cold_1(a2);
  }
}

- (void)saveClipToCameraRoll:(id)roll handler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  rollCopy = roll;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446466;
    v13 = "[RPDaemonProxy saveClipToCameraRoll:handler:]";
    v14 = 1024;
    v15 = 655;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v12, 0x12u);
  }

  v8 = [(RPDaemonProxy *)self issueSandboxExtensionForClientFileWrite:rollCopy];
  v9 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_236];
  v10 = v9;
  if (v8)
  {
    [v9 saveClipToCameraRoll:rollCopy extensionToken:v8 handler:handlerCopy];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPDaemonProxy saveClipToCameraRoll:handler:];
    }

    [v10 saveClipToCameraRoll:rollCopy handler:handlerCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __46__RPDaemonProxy_saveClipToCameraRoll_handler___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __46__RPDaemonProxy_saveClipToCameraRoll_handler___block_invoke_cold_1(a2);
  }
}

- (void)reportCameraUsage:(int64_t)usage
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: reportFrontCameraUsage", v6, 2u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_238];
  [v5 reportCameraUsage:usage];
}

void __35__RPDaemonProxy_reportCameraUsage___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __35__RPDaemonProxy_reportCameraUsage___block_invoke_cold_1(a2);
  }
}

void __38__RPDaemonProxy_setMicrophoneEnabled___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __38__RPDaemonProxy_setMicrophoneEnabled___block_invoke_cold_1(v2);
  }
}

- (void)getSystemBroadcastPickerInfo:(id)info
{
  v11 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPDaemonProxy getSystemBroadcastPickerInfo:]";
    v9 = 1024;
    v10 = 697;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v7, 0x12u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_242];
  [v5 getSystemBroadcastPickerInfo:infoCopy];

  v6 = *MEMORY[0x277D85DE8];
}

void __46__RPDaemonProxy_getSystemBroadcastPickerInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __46__RPDaemonProxy_getSystemBroadcastPickerInfo___block_invoke_cold_1(v2);
  }
}

void __63__RPDaemonProxy_setBroadcastPickerPreferredExt_showsMicButton___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __63__RPDaemonProxy_setBroadcastPickerPreferredExt_showsMicButton___block_invoke_cold_1(v2);
  }
}

- (void)openControlCenterSystemRecordingView
{
  v9 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPDaemonProxy openControlCenterSystemRecordingView]";
    v7 = 1024;
    v8 = 716;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v5, 0x12u);
  }

  v3 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_246];
  [v3 openControlCenterSystemRecordingView];

  v4 = *MEMORY[0x277D85DE8];
}

void __53__RPDaemonProxy_openControlCenterSystemRecordingView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __53__RPDaemonProxy_openControlCenterSystemRecordingView__block_invoke_cold_1(v2);
  }
}

void __55__RPDaemonProxy_updateProcessIDForAudioCaptureWithPID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __55__RPDaemonProxy_updateProcessIDForAudioCaptureWithPID___block_invoke_cold_1(v2);
  }
}

- (void)updateScreenRecordingStateWithCurrentState:(id)state
{
  stateCopy = state;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: updateScreenRecordingStateWithCurrentState", v5, 2u);
  }

  v4 = +[RPScreenRecorder sharedRecorder];
  [v4 updateScreenRecordingStateWithCurrentState:stateCopy];
}

- (void)recordingDidStopWithError:(id)error movieURL:(id)l
{
  errorCopy = error;
  lCopy = l;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: recordingDidStopWithError:movieURL:", v8, 2u);
  }

  v7 = +[RPScreenRecorder sharedRecorder];
  [v7 recordingDidStopWithError:errorCopy movieURL:lCopy];
}

- (void)shouldResumeSessionType:(id)type
{
  typeCopy = type;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: shouldResumeSessionType", v5, 2u);
  }

  v4 = +[RPScreenRecorder sharedRecorder];
  [v4 shouldResumeSessionType:typeCopy];
}

- (void)recordingDidPause
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: recordingDidPause", v3, 2u);
  }

  v2 = +[RPScreenRecorder sharedRecorder];
  [v2 recordingDidPause];
}

- (void)updateBroadcastServiceInfo:(id)info
{
  infoCopy = info;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: updateBroadcastServiceInfo:", v5, 2u);
  }

  v4 = +[RPScreenRecorder sharedRecorder];
  [v4 clientDidUpdateBroadcastServiceInfo:infoCopy];
}

- (void)updateBroadcastURL:(id)l
{
  lCopy = l;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: updateBroadcastURL:", v9, 2u);
  }

  v4 = +[RPScreenRecorder sharedRecorder];
  activeBroadcastController = [v4 activeBroadcastController];

  [activeBroadcastController setBroadcastURL:lCopy];
  delegate = [activeBroadcastController delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [activeBroadcastController delegate];
    [delegate2 broadcastController:activeBroadcastController didUpdateBroadcastURL:lCopy];
  }
}

- (void)captureHandlerWithSample:(id)sample timingData:(id)data
{
  v13 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  dataCopy = data;
  if (!__RPLogLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPDaemonProxy captureHandlerWithSample:timingData:]";
    v11 = 1024;
    v12 = 788;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d ", &v9, 0x12u);
  }

  v7 = +[RPScreenRecorder sharedRecorder];
  [v7 captureHandlerWithSample:sampleCopy timingData:dataCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)captureHandlerWithAudioSample:(id)sample bufferType:(int64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  if (!__RPLogLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446466;
    v9 = "[RPDaemonProxy captureHandlerWithAudioSample:bufferType:]";
    v10 = 1024;
    v11 = 795;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d ", &v8, 0x12u);
  }

  v6 = +[RPScreenRecorder sharedRecorder];
  [v6 captureHandlerWithAudioSample:sampleCopy bufferType:type];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)recordingLockInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: recordingLockInterrupted:", v5, 2u);
  }

  v4 = +[RPScreenRecorder sharedRecorder];
  [v4 recordingLockInterrupted:interruptedCopy];
}

- (void)recordingTimerDidUpdate:(id)update
{
  updateCopy = update;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPDaemonProxy: recordingTimerDidUpdate:", v5, 2u);
  }

  v4 = +[RPScreenRecorder sharedRecorder];
  [v4 recordingTimerDidUpdate:updateCopy];
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  v15 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  invocationCopy = invocation;
  if (replyCopy)
  {
    if (!__RPLogLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136446466;
      v12 = "[RPDaemonProxy connection:handleInvocation:isReply:]";
      v13 = 1024;
      v14 = 819;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d received reply for invocation", &v11, 0x12u);
    }

    [invocationCopy retainArguments];
  }

  else if (!__RPLogLevel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446466;
    v12 = "[RPDaemonProxy connection:handleInvocation:isReply:]";
    v13 = 1024;
    v14 = 825;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [DEBUG] %{public}s:%d did not receive reply for invocation", &v11, 0x12u);
  }

  [invocationCopy invoke];
  null = [MEMORY[0x277CBEB68] null];
  [invocationCopy setTarget:null];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setBroadcastURL:(id)l
{
  connection = self->_connection;
  lCopy = l;
  v5 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_254];
  [v5 setBroadcastURL:lCopy];
}

void __33__RPDaemonProxy_setBroadcastURL___block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __33__RPDaemonProxy_setBroadcastURL___block_invoke_cold_1(a2);
  }
}

void __114__RPDaemonProxy_startClipBufferingWithContextID_windowSize_microphoneEnabled_cameraEnabled_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __114__RPDaemonProxy_startClipBufferingWithContextID_windowSize_microphoneEnabled_cameraEnabled_withCompletionHandler___block_invoke_cold_1(v2);
  }
}

- (void)stopClipBufferingWithCompletionHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[RPDaemonProxy stopClipBufferingWithCompletionHandler:]";
    v9 = 1024;
    v10 = 856;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v7, 0x12u);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_258];
  [v5 stopClipBufferingWithCompletionHandler:handlerCopy];

  v6 = *MEMORY[0x277D85DE8];
}

void __56__RPDaemonProxy_stopClipBufferingWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __56__RPDaemonProxy_stopClipBufferingWithCompletionHandler___block_invoke_cold_1(v2);
  }
}

- (void)exportClipToURL:(id)l duration:(double)duration completionHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446466;
    v15 = "[RPDaemonProxy exportClipToURL:duration:completionHandler:]";
    v16 = 1024;
    v17 = 869;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v14, 0x12u);
  }

  v10 = [(RPDaemonProxy *)self issueSandboxExtensionForClientFileWrite:lCopy];
  v11 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_260];
  v12 = v11;
  if (v10)
  {
    [v11 exportClipToURL:lCopy duration:v10 extensionToken:handlerCopy completionHandler:duration];
  }

  else
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPDaemonProxy exportClipToURL:duration:completionHandler:];
    }

    [v12 exportClipToURL:lCopy duration:handlerCopy completionHandler:duration];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __60__RPDaemonProxy_exportClipToURL_duration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __60__RPDaemonProxy_exportClipToURL_duration_completionHandler___block_invoke_cold_1(v2);
  }
}

- (void)resumeInAppClipWithWindowLayerContextID:(id)d completionHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[RPDaemonProxy resumeInAppClipWithWindowLayerContextID:completionHandler:]";
    v12 = 1024;
    v13 = 889;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", &v10, 0x12u);
  }

  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_262];
  [v8 resumeInAppClipWithWindowLayerContextID:dCopy completionHandler:handlerCopy];

  v9 = *MEMORY[0x277D85DE8];
}

void __75__RPDaemonProxy_resumeInAppClipWithWindowLayerContextID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __75__RPDaemonProxy_resumeInAppClipWithWindowLayerContextID_completionHandler___block_invoke_cold_1(v2);
  }
}

- (void)issueSandboxExtensionForClientFileWrite:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__RPDaemonProxy_stopCurrentActiveSessionWithHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __37__RPDaemonProxy_stopAllActiveClients__block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __105__RPDaemonProxy_startInAppRecordingWithContextID_windowSize_microphoneEnabled_cameraEnabled_withHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__RPDaemonProxy_stopInAppRecordingWithHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)stopInAppRecordingWithUrl:handler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__RPDaemonProxy_stopInAppRecordingWithUrl_handler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__RPDaemonProxy_discardInAppRecordingWithHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __36__RPDaemonProxy_pauseInAppRecording__block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __80__RPDaemonProxy_resumeInAppRecordingWithWindowLayerContextID_completionHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __103__RPDaemonProxy_startInAppCaptureWithContextID_windowSize_microphoneEnabled_cameraEnabled_withHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__RPDaemonProxy_stopInAppCaptureWithHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __34__RPDaemonProxy_pauseInAppCapture__block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__RPDaemonProxy_resumeInAppCaptureWithWindowLayerContextID_completionHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __119__RPDaemonProxy_setupBroadcastWithHostBundleID_broadcastExtensionBundleID_broadcastConfigurationData_userInfo_handler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __122__RPDaemonProxy_startInAppBroadcastWithContextID_windowSize_microphoneEnabled_cameraEnabled_listenerEndpoint_withHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__RPDaemonProxy_stopInAppBroadcastWithHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __36__RPDaemonProxy_pauseInAppBroadcast__block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __80__RPDaemonProxy_resumeInAppBroadcastWithWindowLayerContextID_completionHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __132__RPDaemonProxy_startSystemRecordingWithContextID_windowSize_microphoneEnabled_cameraEnabled_mixedRealityCameraEnabled_withHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__RPDaemonProxy_stopSystemRecordingWithHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__RPDaemonProxy_stopSystemRecordingWithURLHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__RPDaemonProxy_resumeSystemRecordingWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __125__RPDaemonProxy_setupSystemBroadcastWithHostBundleID_broadcastExtensionBundleID_broadcastConfigurationData_userInfo_handler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __149__RPDaemonProxy_startSystemBroadcastWithContextID_windowSize_microphoneEnabled_cameraEnabled_mixedRealityCameraEnabled_listenerEndpoint_withHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__RPDaemonProxy_stopSystemBroadcastWithHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__RPDaemonProxy_resumeSystemBroadcastWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)startHQLRWithSessionInfo:windowSize:handler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startHQLRWithSessionInfo:windowSize:handler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__RPDaemonProxy_startHQLRWithSessionInfo_windowSize_handler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__RPDaemonProxy_resumeHQLRWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__RPDaemonProxy_consumeSandboxExtension_processNewConnection___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__RPDaemonProxy_macApplicationDidResignActive__block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__RPDaemonProxy_macApplicationDidBecomeActiveWithContextID_completionHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveVideo:handler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __35__RPDaemonProxy_saveVideo_handler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__RPDaemonProxy_saveVideoToCameraRoll_handler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveClipToCameraRoll:handler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__RPDaemonProxy_saveClipToCameraRoll_handler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __35__RPDaemonProxy_reportCameraUsage___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__RPDaemonProxy_setMicrophoneEnabled___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__RPDaemonProxy_getSystemBroadcastPickerInfo___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__RPDaemonProxy_setBroadcastPickerPreferredExt_showsMicButton___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__RPDaemonProxy_openControlCenterSystemRecordingView__block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__RPDaemonProxy_updateProcessIDForAudioCaptureWithPID___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __33__RPDaemonProxy_setBroadcastURL___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __114__RPDaemonProxy_startClipBufferingWithContextID_windowSize_microphoneEnabled_cameraEnabled_withCompletionHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__RPDaemonProxy_stopClipBufferingWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)exportClipToURL:duration:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__RPDaemonProxy_exportClipToURL_duration_completionHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__RPDaemonProxy_resumeInAppClipWithWindowLayerContextID_completionHandler___block_invoke_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

@end