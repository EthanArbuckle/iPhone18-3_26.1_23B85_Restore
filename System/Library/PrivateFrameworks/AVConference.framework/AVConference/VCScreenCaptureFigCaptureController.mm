@interface VCScreenCaptureFigCaptureController
- (VCScreenCaptureFigCaptureController)initWithDelegate:(id)delegate screenCaptureSourceContext:(const _VCScreenCaptureSourceContext *)context;
- (int)pauseScreenCapture:(BOOL)capture;
- (int)startScreenCaptureWithConfig:(id)config;
- (int)stopScreenCapture;
- (void)callbackWithEventString:(id)string;
- (void)dealloc;
- (void)finalize;
- (void)screenCaptureController:(id)controller didFailWithStatus:(int)status;
- (void)screenCaptureController:(id)controller didReceiveSampleBuffer:(opaqueCMSampleBuffer *)buffer transformFlags:(unint64_t)flags;
- (void)screenCaptureControllerDidReceiveClearScreen:(id)screen;
- (void)screenCaptureControllerMediaServicesWereReset:(id)reset;
- (void)screenCaptureControllerWasPreempted:(id)preempted;
- (void)setIsRunning:(BOOL)running;
- (void)shouldClearScreen:(BOOL)screen;
@end

@implementation VCScreenCaptureFigCaptureController

- (VCScreenCaptureFigCaptureController)initWithDelegate:(id)delegate screenCaptureSourceContext:(const _VCScreenCaptureSourceContext *)context
{
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = v7;
      v16 = 2080;
      v17 = "[VCScreenCaptureFigCaptureController initWithDelegate:screenCaptureSourceContext:]";
      v18 = 1024;
      v19 = 42;
      v20 = 2112;
      delegateCopy = delegate;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d inDelegate=%@", buf, 0x26u);
    }
  }

  v13.receiver = self;
  v13.super_class = VCScreenCaptureFigCaptureController;
  v9 = [(VCObject *)&v13 init];
  if (v9)
  {
    *(v9 + 21) = delegate;
    cannedScreenCaptureSource = context->cannedScreenCaptureSource;
    *(v9 + 264) = *&context->sinkContext;
    *(v9 + 35) = cannedScreenCaptureSource;
    pthread_mutex_init(v9 + 3, 0);
    v9[256] = 0;
    v11 = context->cannedScreenCaptureSource;
    if (v11)
    {
      [(VCCannedVideoCaptureSource *)v11 setContext:v9 frameCallback:_VCScreenCaptureFigCaptureController_OnVideoFrame];
    }
  }

  return v9;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  pthread_mutex_destroy(&self->_stateMutex);
  v3.receiver = self;
  v3.super_class = VCScreenCaptureFigCaptureController;
  [(VCObject *)&v3 dealloc];
}

- (int)startScreenCaptureWithConfig:(id)config
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = v5;
      v12 = 2080;
      v13 = "[VCScreenCaptureFigCaptureController startScreenCaptureWithConfig:]";
      v14 = 1024;
      v15 = 62;
      v16 = 2112;
      configCopy = config;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Starting with config=%@", &v10, 0x26u);
    }
  }

  if (self->_frameCallback.cannedScreenCaptureSource)
  {
    [(VCScreenCaptureSourceDelegate *)self->_delegate screenCaptureSourceConfigCannedCapture];
    start = [(VCCannedVideoCaptureSource *)self->_frameCallback.cannedScreenCaptureSource start];
  }

  else
  {
    captureControllerSession = self->_captureControllerSession;
    if (!captureControllerSession)
    {
      captureControllerSession = [MEMORY[0x1E6970AD0] screenCaptureControllerWithFigVirtualDisplayOptions:config];
      self->_captureControllerSession = captureControllerSession;
    }

    [(FigScreenCaptureController *)captureControllerSession setDelegate:self];
    [(FigScreenCaptureController *)self->_captureControllerSession startCapture];
    start = 0;
  }

  [(VCScreenCaptureFigCaptureController *)self setIsRunning:1];
  return start;
}

- (int)stopScreenCapture
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCScreenCaptureFigCaptureController stopScreenCapture]";
      v10 = 1024;
      v11 = 79;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stopping", &v6, 0x1Cu);
    }
  }

  if (self->_frameCallback.cannedScreenCaptureSource)
  {
    [(VCScreenCaptureFigCaptureController *)self setIsRunning:0];
    return [(VCCannedVideoCaptureSource *)self->_frameCallback.cannedScreenCaptureSource stop];
  }

  else if (self->_captureControllerSession)
  {
    [(VCScreenCaptureFigCaptureController *)self setIsRunning:0];
    [(FigScreenCaptureController *)self->_captureControllerSession stopCapture];
    [(FigScreenCaptureController *)self->_captureControllerSession setDelegate:0];

    result = 0;
    self->_captureControllerSession = 0;
  }

  else
  {
    return 0;
  }

  return result;
}

- (int)pauseScreenCapture:(BOOL)capture
{
  captureCopy = capture;
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = "Resuming";
      v10 = v5;
      v9 = 136315906;
      v12 = "[VCScreenCaptureFigCaptureController pauseScreenCapture:]";
      v11 = 2080;
      if (captureCopy)
      {
        v7 = "Pausing";
      }

      v13 = 1024;
      v14 = 95;
      v15 = 2080;
      v16 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d shouldPause=%s", &v9, 0x26u);
    }
  }

  if (captureCopy)
  {
    [(VCScreenCaptureFigCaptureController *)self setIsRunning:0];
    [(FigScreenCaptureController *)self->_captureControllerSession suspendCapture];
  }

  else
  {
    [(VCScreenCaptureFigCaptureController *)self setIsRunning:1];
    [(FigScreenCaptureController *)self->_captureControllerSession resumeCapture];
  }

  return 0;
}

- (void)finalize
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCScreenCaptureFigCaptureController finalize]";
      v9 = 1024;
      v10 = 107;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Finalizing", &v5, 0x1Cu);
    }
  }

  [(VCScreenCaptureFigCaptureController *)self stopScreenCapture];

  self->_delegate = 0;
  self->_frameCallback.sinkContext = 0;
  self->_frameCallback.sinkCallback = 0;
}

- (void)setIsRunning:(BOOL)running
{
  pthread_mutex_lock(&self->_stateMutex);
  self->_isRunning = running;

  pthread_mutex_unlock(&self->_stateMutex);
}

- (void)screenCaptureController:(id)controller didReceiveSampleBuffer:(opaqueCMSampleBuffer *)buffer transformFlags:(unint64_t)flags
{
  v23 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_stateMutex);
  isRunning = self->_isRunning;
  if (!buffer || ((sinkCallback = self->_frameCallback.sinkCallback) != 0 ? (v10 = !isRunning) : (v10 = 1), v10))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315906;
        v16 = v11;
        v17 = 2080;
        v18 = "[VCScreenCaptureFigCaptureController screenCaptureController:didReceiveSampleBuffer:transformFlags:]";
        v19 = 1024;
        v20 = 135;
        v21 = 1024;
        v22 = isRunning;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Callback is missing a sample buffer, isRunning=%d", &v15, 0x22u);
      }
    }
  }

  else
  {
    sinkCallback(self->_frameCallback.sinkContext, buffer, flags);
    if (self->_shouldClearScreen)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136315650;
          v16 = v13;
          v17 = 2080;
          v18 = "[VCScreenCaptureFigCaptureController screenCaptureController:didReceiveSampleBuffer:transformFlags:]";
          v19 = 1024;
          v20 = 130;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Clear screen state unset", &v15, 0x1Cu);
        }
      }

      self->_shouldClearScreen = 0;
      [(VCScreenCaptureFigCaptureController *)self shouldClearScreen:0];
    }
  }

  pthread_mutex_unlock(&self->_stateMutex);
}

- (void)screenCaptureController:(id)controller didFailWithStatus:(int)status
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCScreenCaptureFigCaptureController screenCaptureController:didFailWithStatus:]";
      v12 = 1024;
      v13 = 141;
      v14 = 1024;
      statusCopy = status;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d didStart with status=%d", &v8, 0x22u);
    }
  }

  if (status)
  {
    [(VCScreenCaptureFigCaptureController *)self setIsRunning:0];
    [(VCScreenCaptureFigCaptureController *)self callbackWithEventString:@"vcScreenCaptureFailStart"];
  }
}

- (void)screenCaptureControllerWasPreempted:(id)preempted
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCScreenCaptureFigCaptureController screenCaptureControllerWasPreempted:]";
      v10 = 1024;
      v11 = 151;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Was preempted", &v6, 0x1Cu);
    }
  }

  [(VCScreenCaptureFigCaptureController *)self callbackWithEventString:@"vcScreenCaptureFailPreempt"];
}

- (void)screenCaptureControllerMediaServicesWereReset:(id)reset
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_stateMutex);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCScreenCaptureFigCaptureController screenCaptureControllerMediaServicesWereReset:]";
      v10 = 1024;
      v11 = 157;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Services were reset", &v6, 0x1Cu);
    }
  }

  if (VCFeatureFlagManager_DaemonCrashRecovery())
  {
    if (self->_isRunning)
    {
      [(FigScreenCaptureController *)self->_captureControllerSession stopCapture];
      [(FigScreenCaptureController *)self->_captureControllerSession startCapture];
    }
  }

  else
  {
    [(VCScreenCaptureFigCaptureController *)self callbackWithEventString:@"vcScreenCaptureFailServerDied"];
  }

  pthread_mutex_unlock(&self->_stateMutex);
}

- (void)screenCaptureControllerDidReceiveClearScreen:(id)screen
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v4;
      v8 = 2080;
      v9 = "[VCScreenCaptureFigCaptureController screenCaptureControllerDidReceiveClearScreen:]";
      v10 = 1024;
      v11 = 171;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Clear screen state set", &v6, 0x1Cu);
    }
  }

  self->_shouldClearScreen = 1;
  [(VCScreenCaptureFigCaptureController *)self shouldClearScreen:1];
}

- (void)shouldClearScreen:(BOOL)screen
{
  delegate = self->_delegate;
  if (delegate)
  {
    [(VCScreenCaptureSourceDelegate *)delegate screenCaptureSourceShouldClearScreen:screen];
  }
}

- (void)callbackWithEventString:(id)string
{
  delegate = self->_delegate;
  if (delegate)
  {
    [(VCScreenCaptureSourceDelegate *)delegate screenCaptureSourceProcessEventString:string];
  }
}

@end