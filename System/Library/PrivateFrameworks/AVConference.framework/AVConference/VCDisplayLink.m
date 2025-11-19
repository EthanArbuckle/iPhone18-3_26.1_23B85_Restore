@interface VCDisplayLink
- (BOOL)activate;
- (BOOL)ensureDisplayIsReady;
- (VCDisplayLink)initWithHandler:(id)a3 preferredFrameRate:(float)a4;
- (VCDisplayLink)initWithHandler:(id)a3 threadPriority:(unsigned int)a4 threadOptions:(unsigned int)a5 threadIdentifier:(id)a6 preferredFrameRate:(float)a7;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)displayLinkTick:(id)a3;
- (void)handleWaitToRunTimeout;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)runDisplayLinkThreadWithStopRequested:(BOOL *)a3;
@end

@implementation VCDisplayLink

- (VCDisplayLink)initWithHandler:(id)a3 preferredFrameRate:(float)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCDisplayLink;
  v6 = [(VCObject *)&v11 init];
  if (!v6)
  {
    return v6;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v7;
      v13 = 2080;
      v14 = "[VCDisplayLink initWithHandler:preferredFrameRate:]";
      v15 = 1024;
      v16 = 71;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d initializing VCDisplayLink[%p]", buf, 0x26u);
    }
  }

  if (!a3)
  {
    [VCDisplayLink initWithHandler:v6 preferredFrameRate:buf];
    return *buf;
  }

  v6->_handler = _Block_copy(a3);
  v9 = [MEMORY[0x1E6979330] displayLinkWithTarget:v6 selector:sel_displayLinkTick_];
  v6->_caDisplayLink = v9;
  if (!v9)
  {
    [VCDisplayLink initWithHandler:v6 preferredFrameRate:buf];
    return *buf;
  }

  if (a4 != 0.0)
  {
    v20 = CAFrameRateRangeMake(a4, a4, a4);
    [(CADisplayLink *)v6->_caDisplayLink setPreferredFrameRateRange:*&v20.minimum, *&v20.maximum, *&v20.preferred];
  }

  v6->_state = 1;
  return v6;
}

- (BOOL)activate
{
  v11 = *MEMORY[0x1E69E9840];
  [(VCObject *)self lock];
  if (self->_state != 1)
  {
    [(VCDisplayLink *)&self->_state activate];
    v5 = v9;
    goto LABEL_8;
  }

  self->_state = 2;
  thread = self->_thread;
  if (!thread)
  {
    caDisplayLink = self->_caDisplayLink;
    v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)caDisplayLink addToRunLoop:v7 forMode:*MEMORY[0x1E695D918]];
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  if ((VCRealTimeThread_Start(thread) & 1) == 0)
  {
    [(VCDisplayLink *)&self->_state activate];
    v5 = v10;
    goto LABEL_8;
  }

  v4 = dispatch_time(0, 1000000000);
  if (!dispatch_semaphore_wait(self->_waitToRunSemaphore, v4))
  {
    goto LABEL_7;
  }

  [(VCDisplayLink *)self handleWaitToRunTimeout];
  v5 = 0;
LABEL_8:
  [(VCObject *)self unlock];
  return v5;
}

- (void)handleWaitToRunTimeout
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 151;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Timed out waiting for runLoop to run", v2);
}

- (void)deactivate
{
  [(VCObject *)self lock];
  if (self->_state == 2)
  {
    self->_state = 3;
    [(CADisplayLink *)self->_caDisplayLink invalidate];
    if (self->_thread)
    {
      v3 = [(NSRunLoop *)self->_runLoop getCFRunLoop];
      if (v3)
      {
        CFRunLoopStop(v3);
      }

      VCRealTimeThread_Finalize(self->_thread);
      self->_thread = 0;
    }

    handler = self->_handler;
    if (handler)
    {
      _Block_release(handler);
      self->_handler = 0;
    }
  }

  [(VCObject *)self unlock];
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[VCDisplayLink dealloc]";
      v12 = 1024;
      v13 = 182;
      v14 = 2048;
      v15 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d dealloc VCDisplayLink[%p]", buf, 0x26u);
    }
  }

  [(VCDisplayLink *)self deactivate];
  thread = self->_thread;
  if (thread)
  {
    VCRealTimeThread_Finalize(thread);
    self->_thread = 0;
  }

  self->_caDisplayLink = 0;
  waitToRunSemaphore = self->_waitToRunSemaphore;
  if (waitToRunSemaphore)
  {
    dispatch_release(waitToRunSemaphore);
  }

  v7.receiver = self;
  v7.super_class = VCDisplayLink;
  [(VCObject *)&v7 dealloc];
}

- (void)runDisplayLinkThreadWithStopRequested:(BOOL *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_state == 2)
  {
    self->_runLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    waitToRunSemaphore = self->_waitToRunSemaphore;
    context.version = 0;
    context.info = waitToRunSemaphore;
    context.retain = MEMORY[0x1E695D7C8];
    context.release = MEMORY[0x1E695D7C0];
    context.copyDescription = 0;
    v6 = CFRunLoopObserverCreate(*MEMORY[0x1E695E480], 1uLL, 0, 0, _VCDisplayLinkRunLoopObserverCallBack, &context);
    if (v6)
    {
      v7 = v6;
      v8 = [(NSRunLoop *)self->_runLoop getCFRunLoop];
      v9 = *MEMORY[0x1E695E8E0];
      CFRunLoopAddObserver(v8, v7, *MEMORY[0x1E695E8E0]);
      [(CADisplayLink *)self->_caDisplayLink addToRunLoop:self->_runLoop forMode:*MEMORY[0x1E695D918]];
      CFRunLoopRun();
      CFRunLoopRemoveObserver([(NSRunLoop *)self->_runLoop getCFRunLoop], v7, v9);
      CFRelease(v7);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v14 = v10;
          v15 = 2080;
          v16 = "[VCDisplayLink runDisplayLinkThreadWithStopRequested:]";
          v17 = 1024;
          v18 = 219;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stopping VCDisplayLink thread", buf, 0x1Cu);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCDisplayLink runDisplayLinkThreadWithStopRequested:];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCDisplayLink runDisplayLinkThreadWithStopRequested:];
    }
  }

  *a3 = 1;
}

- (void)displayLinkTick:(id)a3
{
  if (self->_handler)
  {
    [a3 timestamp];
    [a3 targetTimestamp];
    [a3 duration];
    (*(self->_handler + 2))();
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v21 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:{@"refreshRate", a4, a5, a6}])
  {
    [-[CADisplayLink display](self->_caDisplayLink "display")];
    v8 = v7;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v9;
        v15 = 2080;
        v16 = "[VCDisplayLink observeValueForKeyPath:ofObject:change:context:]";
        v17 = 1024;
        v18 = 238;
        v19 = 2048;
        v20 = v8;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RefreshRate = %f", &v13, 0x26u);
      }
    }

    if (v8 == 0.0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315650;
          v14 = v11;
          v15 = 2080;
          v16 = "[VCDisplayLink observeValueForKeyPath:ofObject:change:context:]";
          v17 = 1024;
          v18 = 242;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Refresh rate still 0, continue to wait", &v13, 0x1Cu);
        }
      }
    }

    else
    {
      dispatch_semaphore_signal(self->_waitToRunSemaphore);
    }
  }
}

- (VCDisplayLink)initWithHandler:(id)a3 threadPriority:(unsigned int)a4 threadOptions:(unsigned int)a5 threadIdentifier:(id)a6 preferredFrameRate:(float)a7
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = [(VCDisplayLink *)self initWithHandler:a3 preferredFrameRate:?];
  if (v10)
  {
    v11 = dispatch_semaphore_create(0);
    v10->_waitToRunSemaphore = v11;
    if (v11)
    {
      v12 = VCRealTimeThread_Initialize(a4, _VCDisplayLinkThread, v10, [a6 UTF8String], a5);
      v10->_thread = v12;
      if (v12)
      {
        if ([(VCDisplayLink *)v10 ensureDisplayIsReady])
        {
          return v10;
        }

        return 0;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v19 = 136315650;
      v20 = v18;
      OUTLINED_FUNCTION_0();
      v21 = 98;
      v17 = " [%s] %s:%d VCRealTimeThread_Initialize failed";
    }

    else
    {

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v19 = 136315650;
      v20 = v14;
      OUTLINED_FUNCTION_0();
      v21 = 95;
      v17 = " [%s] %s:%d dispatch_semaphore_create failed";
    }

    OUTLINED_FUNCTION_26(&dword_1DB56E000, v15, v16, v17, &v19);
    return 0;
  }

  return v10;
}

- (BOOL)ensureDisplayIsReady
{
  v29 = *MEMORY[0x1E69E9840];
  [-[CADisplayLink display](self->_caDisplayLink "display")];
  v5 = v4;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v7 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_4_16())
    {
      *v25 = 136315906;
      *&v25[4] = v2;
      OUTLINED_FUNCTION_1_11();
      v26 = 110;
      v27 = 2048;
      v28 = v5;
      OUTLINED_FUNCTION_16();
      _os_log_impl(v8, v9, v10, v11, v12, 0x26u);
    }
  }

  if (v5 != 0.0)
  {
    return 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_4_16())
    {
      *v25 = 136315650;
      *&v25[4] = v2;
      OUTLINED_FUNCTION_1_11();
      v26 = 113;
      OUTLINED_FUNCTION_16();
      _os_log_impl(v13, v14, v15, v16, v17, 0x1Cu);
    }
  }

  v18 = 1;
  [-[CADisplayLink display](self->_caDisplayLink display];
  v19 = dispatch_time(0, 1000000000);
  v20 = dispatch_semaphore_wait(self->_waitToRunSemaphore, v19);
  [-[CADisplayLink display](self->_caDisplayLink "display")];
  if (v20)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *v25 = 136315650;
        *&v25[4] = v22;
        OUTLINED_FUNCTION_1_11();
        v26 = 120;
        OUTLINED_FUNCTION_26(&dword_1DB56E000, v23, v24, " [%s] %s:%d Timed out waiting for display refresh rate update", v25);
      }
    }

    return 0;
  }

  return v18;
}

- (void)initWithHandler:(void *)a1 preferredFrameRate:(void *)a2 .cold.1(void *a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v3, v4, " [%s] %s:%d Failed to create CADisplayLink", v5, v6, v7, v8, v9);
    }
  }

  *a2 = 0;
}

- (void)initWithHandler:(void *)a1 preferredFrameRate:(void *)a2 .cold.2(void *a1, void *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v3, v4, " [%s] %s:%d nil displayLinkTickHandler", v5, v6, v7, v8, v9);
    }
  }

  *a2 = 0;
}

- (void)activate
{
  *a1 = 1;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v3, v4, " [%s] %s:%d VCRealTimeThread_Start failed", v5, v6, v7, v8, v9);
    }
  }

  *a2 = 0;
}

- (void)runDisplayLinkThreadWithStopRequested:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 196;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Not activated", v2);
}

- (void)runDisplayLinkThreadWithStopRequested:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 206;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d CFRunLoopObserverCreate failed", v2);
}

@end