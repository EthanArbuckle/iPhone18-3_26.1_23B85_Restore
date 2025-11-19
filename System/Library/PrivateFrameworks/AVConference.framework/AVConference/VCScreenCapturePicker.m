@interface VCScreenCapturePicker
- (VCScreenCapturePicker)initWithDelegate:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setActive:(BOOL)a3;
- (void)setRepickingAllowed:(BOOL)a3;
- (void)showWithStream:(id)a3;
- (void)showWithStream:(id)a3 usingContentStyle:(int64_t)a4;
@end

@implementation VCScreenCapturePicker

- (VCScreenCapturePicker)initWithDelegate:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCScreenCapturePicker;
  v4 = [(VCObject *)&v9 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_delegate, a3);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v7 = dispatch_queue_create_with_target_V2("com.apple.avconference.ScreenCapturePicker.observerQueue", 0, CustomRootQueue);
    v5->_delegateQueue = v7;
    if (!v7)
    {
      [VCScreenCapturePicker initWithDelegate:v5];
      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = v4;
        v16 = 2080;
        v17 = "[VCScreenCapturePicker dealloc]";
        v18 = 1024;
        v19 = 94;
        v6 = " [%s] %s:%d Begin";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCScreenCapturePicker *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v15 = v9;
        v16 = 2080;
        v17 = "[VCScreenCapturePicker dealloc]";
        v18 = 1024;
        v19 = 94;
        v20 = 2112;
        v21 = v3;
        v22 = 2048;
        v23 = self;
        v6 = " [%s] %s:%d %@(%p) Begin";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  pickerUpdateSemaphore = self->_pickerUpdateSemaphore;
  if (pickerUpdateSemaphore)
  {
    dispatch_release(pickerUpdateSemaphore);
  }

  [(VCScreenCapturePicker *)self invalidate];
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  v13.receiver = self;
  v13.super_class = VCScreenCapturePicker;
  [(VCObject *)&v13 dealloc];
}

- (void)invalidate
{
  v3[5] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__VCScreenCapturePicker_invalidate__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(delegateQueue, v3);
}

id __35__VCScreenCapturePicker_invalidate__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v3;
        v14 = 2080;
        v15 = "[VCScreenCapturePicker invalidate]_block_invoke";
        v16 = 1024;
        v17 = 103;
        v5 = " [%s] %s:%d ";
        v6 = v4;
        v7 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, &v12, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v12 = 136316162;
        v13 = v8;
        v14 = 2080;
        v15 = "[VCScreenCapturePicker invalidate]_block_invoke";
        v16 = 1024;
        v17 = 103;
        v18 = 2112;
        v19 = v2;
        v20 = 2048;
        v21 = v10;
        v5 = " [%s] %s:%d %@(%p) ";
        v6 = v9;
        v7 = 48;
        goto LABEL_11;
      }
    }
  }

  result = objc_storeWeak((*(a1 + 32) + 176), 0);
  *(*(a1 + 32) + 200) = 0;
  return result;
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCScreenCapturePicker setActive:]";
        v17 = 1024;
        v18 = 117;
        v19 = 1024;
        LODWORD(v20) = v3;
        v8 = " [%s] %s:%d Setting picker to active=%d";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCScreenCapturePicker *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCScreenCapturePicker setActive:]";
        v17 = 1024;
        v18 = 117;
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        v22 = self;
        v23 = 1024;
        v24 = v3;
        v8 = " [%s] %s:%d %@(%p) Setting picker to active=%d";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }

  self->_active = v3;
}

- (void)showWithStream:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCScreenCapturePicker showWithStream:]";
        v17 = 1024;
        v18 = 130;
        v19 = 2112;
        v20 = a3;
        v8 = " [%s] %s:%d stream=%@";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCScreenCapturePicker *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCScreenCapturePicker showWithStream:]";
        v17 = 1024;
        v18 = 130;
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        v22 = self;
        v23 = 2112;
        v24 = a3;
        v8 = " [%s] %s:%d %@(%p) stream=%@";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (void)showWithStream:(id)a3 usingContentStyle:(int64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315906;
        v15 = v7;
        v16 = 2080;
        v17 = "[VCScreenCapturePicker showWithStream:usingContentStyle:]";
        v18 = 1024;
        v19 = 146;
        v20 = 2112;
        v21 = a3;
        v9 = " [%s] %s:%d stream=%@";
        v10 = v8;
        v11 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v14, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCScreenCapturePicker *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316418;
        v15 = v12;
        v16 = 2080;
        v17 = "[VCScreenCapturePicker showWithStream:usingContentStyle:]";
        v18 = 1024;
        v19 = 146;
        v20 = 2112;
        v21 = v6;
        v22 = 2048;
        v23 = self;
        v24 = 2112;
        v25 = a3;
        v9 = " [%s] %s:%d %@(%p) stream=%@";
        v10 = v13;
        v11 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (void)setRepickingAllowed:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315906;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCScreenCapturePicker setRepickingAllowed:]";
        v17 = 1024;
        v18 = 161;
        v19 = 1024;
        LODWORD(v20) = v3;
        v8 = " [%s] %s:%d Setting repicking=%d";
        v9 = v7;
        v10 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCScreenCapturePicker *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136316418;
        v14 = v11;
        v15 = 2080;
        v16 = "[VCScreenCapturePicker setRepickingAllowed:]";
        v17 = 1024;
        v18 = 161;
        v19 = 2112;
        v20 = v5;
        v21 = 2048;
        v22 = self;
        v23 = 1024;
        v24 = v3;
        v8 = " [%s] %s:%d %@(%p) Setting repicking=%d";
        v9 = v12;
        v10 = 54;
        goto LABEL_11;
      }
    }
  }
}

- (void)initWithDelegate:(void *)a1 .cold.1(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_10;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v10 = 136315650;
    v11 = v3;
    OUTLINED_FUNCTION_0_11();
    v5 = " [%s] %s:%d could no create dispatch queue";
    v6 = v4;
    v7 = 28;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, v5, &v10, v7);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = v8;
      OUTLINED_FUNCTION_0_11();
      v12 = 2112;
      v13 = v2;
      v14 = 2048;
      v15 = a1;
      v5 = " [%s] %s:%d %@(%p) could no create dispatch queue";
      v6 = v9;
      v7 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
}

@end