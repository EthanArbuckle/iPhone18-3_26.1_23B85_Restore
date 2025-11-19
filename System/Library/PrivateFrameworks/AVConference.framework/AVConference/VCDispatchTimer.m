@interface VCDispatchTimer
- (VCDispatchTimer)initWithIntervalMilliseconds:(unsigned int)a3 callbackBlock:(id)a4 clientQueue:(id)a5;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation VCDispatchTimer

- (VCDispatchTimer)initWithIntervalMilliseconds:(unsigned int)a3 callbackBlock:(id)a4 clientQueue:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VCDispatchTimer;
  v8 = [(VCObject *)&v18 init];
  if (v8)
  {
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a5);
    v8->_timer = v9;
    if (v9)
    {
      v8->_callbackBlock = _Block_copy(a4);
      v8->_intervalMilliseconds = a3;
      v10 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:v8];
      timer = v8->_timer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __74__VCDispatchTimer_initWithIntervalMilliseconds_callbackBlock_clientQueue___block_invoke;
      handler[3] = &unk_1E85F3778;
      handler[4] = v10;
      dispatch_source_set_event_handler(timer, handler);
      v12 = v8->_timer;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __74__VCDispatchTimer_initWithIntervalMilliseconds_callbackBlock_clientQueue___block_invoke_5;
      v16[3] = &unk_1E85F40E0;
      v16[4] = v10;
      v16[5] = v12;
      dispatch_source_set_cancel_handler(v12, v16);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCDispatchTimer initWithIntervalMilliseconds:v13 callbackBlock:v14 clientQueue:?];
        }
      }

      return 0;
    }
  }

  return v8;
}

void __74__VCDispatchTimer_initWithIntervalMilliseconds_callbackBlock_clientQueue___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) strong];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  if ([v1 isRunning])
  {
    v3 = *([v2 callbackBlock] + 16);

    v3();
    return;
  }

  if (objc_opt_class() == v2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v12 = 136315650;
    v13 = v5;
    v14 = 2080;
    v15 = "[VCDispatchTimer initWithIntervalMilliseconds:callbackBlock:clientQueue:]_block_invoke";
    v16 = 1024;
    v17 = 65;
    v7 = " [%s] %s:%d timer is not running. ignoring timeout.";
    v8 = v6;
    v9 = 28;
LABEL_16:
    _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v12, v9);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [v2 performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316162;
      v13 = v10;
      v14 = 2080;
      v15 = "[VCDispatchTimer initWithIntervalMilliseconds:callbackBlock:clientQueue:]_block_invoke";
      v16 = 1024;
      v17 = 65;
      v18 = 2112;
      v19 = v4;
      v20 = 2048;
      v21 = v2;
      v7 = " [%s] %s:%d %@(%p) timer is not running. ignoring timeout.";
      v8 = v11;
      v9 = 48;
      goto LABEL_16;
    }
  }
}

void __74__VCDispatchTimer_initWithIntervalMilliseconds_callbackBlock_clientQueue___block_invoke_5(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) strong];
  v2 = objc_opt_class();
  if (v2 == [*(a1 + 32) strong])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v14 = 136315906;
        v15 = v4;
        v16 = 2080;
        v17 = "[VCDispatchTimer initWithIntervalMilliseconds:callbackBlock:clientQueue:]_block_invoke";
        v18 = 1024;
        v19 = 70;
        v20 = 2048;
        v21 = v6;
        v7 = " [%s] %s:%d timer=%p has been cancelled";
        v8 = v5;
        v9 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
      }
    }
  }

  else
  {
    [*(a1 + 32) strong];
    if (objc_opt_respondsToSelector())
    {
      v3 = [objc_msgSend(*(a1 + 32) "strong")];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) strong];
        v13 = *(a1 + 40);
        v14 = 136316418;
        v15 = v10;
        v16 = 2080;
        v17 = "[VCDispatchTimer initWithIntervalMilliseconds:callbackBlock:clientQueue:]_block_invoke";
        v18 = 1024;
        v19 = 70;
        v20 = 2112;
        v21 = v3;
        v22 = 2048;
        v23 = v12;
        v24 = 2048;
        v25 = v13;
        v7 = " [%s] %s:%d %@(%p) timer=%p has been cancelled";
        v8 = v11;
        v9 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (void)dealloc
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self->_running)
  {
    dispatch_resume(self->_timer);
  }

  dispatch_source_cancel(self->_timer);
  if (!dispatch_source_testcancel(self->_timer))
  {
    v3 = MEMORY[0x1E6986650];
    do
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          continue;
        }

        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *v3;
        if (!os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          continue;
        }

        timer = self->_timer;
        *buf = 136315906;
        v26 = v11;
        v27 = 2080;
        v28 = "[VCDispatchTimer dealloc]";
        v29 = 1024;
        v30 = 82;
        v31 = 2048;
        v32 = timer;
        v8 = v12;
        v9 = " [%s] %s:%d timer=%p is waiting to be test cancelled";
        v10 = 38;
      }

      else
      {
        v4 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v4 = [(VCDispatchTimer *)self performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          continue;
        }

        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *v3;
        if (!os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          continue;
        }

        v7 = self->_timer;
        *buf = 136316418;
        v26 = v5;
        v27 = 2080;
        v28 = "[VCDispatchTimer dealloc]";
        v29 = 1024;
        v30 = 82;
        v31 = 2112;
        v32 = v4;
        v33 = 2048;
        v34 = self;
        v35 = 2048;
        v36 = v7;
        v8 = v6;
        v9 = " [%s] %s:%d %@(%p) timer=%p is waiting to be test cancelled";
        v10 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
    }

    while (!dispatch_source_testcancel(self->_timer));
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = self->_timer;
        *buf = 136315906;
        v26 = v15;
        v27 = 2080;
        v28 = "[VCDispatchTimer dealloc]";
        v29 = 1024;
        v30 = 84;
        v31 = 2048;
        v32 = v17;
        v18 = " [%s] %s:%d timer=%p has been test cancelled";
        v19 = v16;
        v20 = 38;
LABEL_26:
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCDispatchTimer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = self->_timer;
        *buf = 136316418;
        v26 = v21;
        v27 = 2080;
        v28 = "[VCDispatchTimer dealloc]";
        v29 = 1024;
        v30 = 84;
        v31 = 2112;
        v32 = v14;
        v33 = 2048;
        v34 = self;
        v35 = 2048;
        v36 = v23;
        v18 = " [%s] %s:%d %@(%p) timer=%p has been test cancelled";
        v19 = v22;
        v20 = 58;
        goto LABEL_26;
      }
    }
  }

  _Block_release(self->_callbackBlock);
  dispatch_release(self->_timer);
  v24.receiver = self;
  v24.super_class = VCDispatchTimer;
  [(VCObject *)&v24 dealloc];
}

- (void)start
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "[VCDispatchTimer start]";
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d started a timer=%p that was already running", v2, *v3, "[VCDispatchTimer start]" >> 16, v4);
}

- (void)stop
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "[VCDispatchTimer stop]";
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d stopped a timer=%p that was already stop", v2, *v3, "[VCDispatchTimer stop]" >> 16, v4);
}

- (void)initWithIntervalMilliseconds:(uint64_t)a1 callbackBlock:(NSObject *)a2 clientQueue:.cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCDispatchTimer initWithIntervalMilliseconds:callbackBlock:clientQueue:]";
  v6 = 1024;
  v7 = 49;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create dispatch timer", &v2, 0x1Cu);
}

@end