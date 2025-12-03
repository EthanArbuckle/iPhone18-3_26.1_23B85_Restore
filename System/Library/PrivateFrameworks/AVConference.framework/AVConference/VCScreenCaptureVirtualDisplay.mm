@interface VCScreenCaptureVirtualDisplay
- (VCScreenCaptureVirtualDisplay)initWithDelegate:(id)delegate screenCaptureSourceContext:(const _VCScreenCaptureSourceContext *)context;
- (int)pauseScreenCapture:(BOOL)capture;
- (int)setupCaptureSession:(id)session;
- (int)startScreenCaptureWithConfig:(id)config;
- (int)stopScreenCapture;
- (void)callbackWithEventString:(id)string;
- (void)dealloc;
- (void)finalize;
- (void)shouldClearScreen:(BOOL)screen;
@end

@implementation VCScreenCaptureVirtualDisplay

- (VCScreenCaptureVirtualDisplay)initWithDelegate:(id)delegate screenCaptureSourceContext:(const _VCScreenCaptureSourceContext *)context
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v14 = v7;
      v15 = 2080;
      v16 = "[VCScreenCaptureVirtualDisplay initWithDelegate:screenCaptureSourceContext:]";
      v17 = 1024;
      v18 = 61;
      v19 = 2112;
      delegateCopy = delegate;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d inDelegate=%@", buf, 0x26u);
    }
  }

  v12.receiver = self;
  v12.super_class = VCScreenCaptureVirtualDisplay;
  v9 = [(VCObject *)&v12 init];
  if (v9)
  {
    *(v9 + 21) = delegate;
    cannedScreenCaptureSource = context->cannedScreenCaptureSource;
    *(v9 + 184) = *&context->sinkContext;
    *(v9 + 25) = cannedScreenCaptureSource;
  }

  return v9;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = VCScreenCaptureVirtualDisplay;
  [(VCObject *)&v2 dealloc];
}

- (int)setupCaptureSession:(id)session
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = FigVirtualDisplayProcessorCreate();
  if (v5)
  {
    v22 = v5;
    v20 = -2146893820;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCScreenCaptureVirtualDisplay setupCaptureSession:];
        }
      }

      return v20;
    }

    if (objc_opt_respondsToSelector())
    {
      v23 = [(VCScreenCaptureVirtualDisplay *)self performSelector:sel_logPrefix, 0, 0, 0, 0, 0, 0, 0];
    }

    else
    {
      v23 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v20;
    }

    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return v20;
    }

    *buf = 136316418;
    v35 = v28;
    v36 = 2080;
    v37 = "[VCScreenCaptureVirtualDisplay setupCaptureSession:]";
    v38 = 1024;
    v39 = 84;
    v40 = 2112;
    v41 = v23;
    v42 = 2048;
    selfCopy5 = self;
    v44 = 1024;
    LODWORD(v45) = v22;
    v30 = " [%s] %s:%d %@(%p) FigVirtualDisplayProcessorCreate %d";
LABEL_55:
    _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, v30, buf, 0x36u);
    return v20;
  }

  CMBaseObject = FigVirtualDisplayProcessorGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v7(CMBaseObject, *MEMORY[0x1E6973E48], &unk_1F5798598);
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (session)
        {
          v11 = [objc_msgSend(session description];
        }

        else
        {
          v11 = "<nil>";
        }

        *buf = 136315906;
        v35 = v9;
        v36 = 2080;
        v37 = "[VCScreenCaptureVirtualDisplay setupCaptureSession:]";
        v38 = 1024;
        v39 = 86;
        v40 = 2080;
        v41 = v11;
        v15 = " [%s] %s:%d FigVirtualDisplayProcessorCreate options: %s";
        v16 = v10;
        v17 = 38;
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCScreenCaptureVirtualDisplay *)self performSelector:sel_logPrefix, 0, 0, 0, 0, 0, 0, 0];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (session)
        {
          v14 = [objc_msgSend(session "description")];
        }

        else
        {
          v14 = "<nil>";
        }

        *buf = 136316418;
        v35 = v12;
        v36 = 2080;
        v37 = "[VCScreenCaptureVirtualDisplay setupCaptureSession:]";
        v38 = 1024;
        v39 = 86;
        v40 = 2112;
        v41 = v8;
        v42 = 2048;
        selfCopy5 = self;
        v44 = 2080;
        v45 = v14;
        v15 = " [%s] %s:%d %@(%p) FigVirtualDisplayProcessorCreate options: %s";
        v16 = v13;
        v17 = 58;
LABEL_20:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }
  }

  selfCopy3 = self;
  v18 = FigVirtualDisplaySinkConduitCreate();
  if (v18)
  {
    v24 = v18;
    if (objc_opt_class() == self)
    {
      v20 = -2146893820;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCScreenCaptureVirtualDisplay setupCaptureSession:];
        }
      }

      return v20;
    }

    if (objc_opt_respondsToSelector())
    {
      selfCopy3 = [(VCScreenCaptureVirtualDisplay *)self performSelector:sel_logPrefix, selfCopy3];
    }

    else
    {
      selfCopy3 = &stru_1F570E008;
    }

    v20 = -2146893820;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v20;
    }

    v31 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return v20;
    }

    *buf = 136316418;
    v35 = v31;
    v36 = 2080;
    v37 = "[VCScreenCaptureVirtualDisplay setupCaptureSession:]";
    v38 = 1024;
    v39 = 94;
    v40 = 2112;
    v41 = selfCopy3;
    v42 = 2048;
    selfCopy5 = self;
    v44 = 1024;
    LODWORD(v45) = v24;
    v30 = " [%s] %s:%d %@(%p) FigVirtualDisplaySinkConduitCreate %d";
    goto LABEL_55;
  }

  FigVirtualDisplaySourceScreenGetCurrent();
  v19 = FigVirtualDisplaySessionCreateWithComponents();
  if (!v19)
  {
    return 0;
  }

  v26 = v19;
  if (objc_opt_class() == self)
  {
    v20 = -2146893820;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCScreenCaptureVirtualDisplay setupCaptureSession:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      selfCopy32 = [(VCScreenCaptureVirtualDisplay *)self performSelector:sel_logPrefix, selfCopy3];
    }

    else
    {
      selfCopy32 = &stru_1F570E008;
    }

    v20 = -2146893820;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v35 = v32;
        v36 = 2080;
        v37 = "[VCScreenCaptureVirtualDisplay setupCaptureSession:]";
        v38 = 1024;
        v39 = 97;
        v40 = 2112;
        v41 = selfCopy32;
        v42 = 2048;
        selfCopy5 = self;
        v44 = 1024;
        LODWORD(v45) = v26;
        v30 = " [%s] %s:%d %@(%p) FigVirtualDisplaySessionCreateWithComponents %d";
        goto LABEL_55;
      }
    }
  }

  return v20;
}

- (int)startScreenCaptureWithConfig:(id)config
{
  v40 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v29 = v5;
      v30 = 2080;
      v31 = "[VCScreenCaptureVirtualDisplay startScreenCaptureWithConfig:]";
      v32 = 1024;
      v33 = 110;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Starting FigVirtualDisplay Screen Capture", buf, 0x1Cu);
    }
  }

  session = self->_session;
  if (session)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v8(session);
    }

    v9 = self->_session;
    if (v9)
    {
      CFRelease(v9);
      self->_session = 0;
    }
  }

  v10 = [(VCScreenCaptureVirtualDisplay *)self setupCaptureSession:config];
  if (v10)
  {
    [(VCScreenCaptureVirtualDisplay *)v10 startScreenCaptureWithConfig:buf];
    return *buf;
  }

  v11 = self->_session;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62__VCScreenCaptureVirtualDisplay_startScreenCaptureWithConfig___block_invoke;
  v27[3] = &unk_1E85F4A20;
  v27[4] = self;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v12)
  {
    v13 = v12(v11, config, v27);
    if (!v13)
    {
      v14 = self->_session;
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v15)
      {
        v16 = v15(v14);
        if (!v16)
        {
          return 0;
        }

        v20 = v16;
      }

      else
      {
        v20 = -12782;
      }

      if (objc_opt_class() != self)
      {
        if (objc_opt_respondsToSelector())
        {
          v21 = [(VCScreenCaptureVirtualDisplay *)self performSelector:sel_logPrefix];
        }

        else
        {
          v21 = &stru_1F570E008;
        }

        v17 = -2146893820;
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return v17;
        }

        v25 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return v17;
        }

        *buf = 136316418;
        v29 = v25;
        v30 = 2080;
        v31 = "[VCScreenCaptureVirtualDisplay startScreenCaptureWithConfig:]";
        v32 = 1024;
        v33 = 133;
        v34 = 2112;
        v35 = v21;
        v36 = 2048;
        selfCopy2 = self;
        v38 = 1024;
        v39 = v20;
        v24 = " [%s] %s:%d %@(%p) FigVirtualDisplaySessionGetStartStatus %d";
LABEL_38:
        _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x36u);
        return v17;
      }

      v17 = -2146893820;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCScreenCaptureVirtualDisplay startScreenCaptureWithConfig:];
        }
      }

      return v17;
    }

    v18 = v13;
  }

  else
  {
    v18 = -12782;
  }

  if (objc_opt_class() == self)
  {
    v17 = -2146893820;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCScreenCaptureVirtualDisplay startScreenCaptureWithConfig:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [(VCScreenCaptureVirtualDisplay *)self performSelector:sel_logPrefix];
    }

    else
    {
      v19 = &stru_1F570E008;
    }

    v17 = -2146893820;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v29 = v22;
        v30 = 2080;
        v31 = "[VCScreenCaptureVirtualDisplay startScreenCaptureWithConfig:]";
        v32 = 1024;
        v33 = 129;
        v34 = 2112;
        v35 = v19;
        v36 = 2048;
        selfCopy2 = self;
        v38 = 1024;
        v39 = v18;
        v24 = " [%s] %s:%d %@(%p) FigVirtualDisplaySessionStart failed %d";
        goto LABEL_38;
      }
    }
  }

  return v17;
}

void __62__VCScreenCaptureVirtualDisplay_startScreenCaptureWithConfig___block_invoke(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!a2)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v18 = 136315650;
      v19 = v10;
      v20 = 2080;
      v21 = "[VCScreenCaptureVirtualDisplay startScreenCaptureWithConfig:]_block_invoke";
      v22 = 1024;
      v23 = 123;
      v12 = " [%s] %s:%d startPreview FigVirtualDisplaySessionStart succeeded";
      v13 = v11;
      v14 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v17 = *(a1 + 32);
      v18 = 136316162;
      v19 = v15;
      v20 = 2080;
      v21 = "[VCScreenCaptureVirtualDisplay startScreenCaptureWithConfig:]_block_invoke";
      v22 = 1024;
      v23 = 123;
      v24 = 2112;
      v25 = v6;
      v26 = 2048;
      v27 = v17;
      v12 = " [%s] %s:%d %@(%p) startPreview FigVirtualDisplaySessionStart succeeded";
      v13 = v16;
      v14 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
    return;
  }

  [v3 callbackWithEventString:@"vcScreenCaptureFailStart"];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __62__VCScreenCaptureVirtualDisplay_startScreenCaptureWithConfig___block_invoke_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v18 = 136316418;
        v19 = v7;
        v20 = 2080;
        v21 = "[VCScreenCaptureVirtualDisplay startScreenCaptureWithConfig:]_block_invoke";
        v22 = 1024;
        v23 = 126;
        v24 = 2112;
        v25 = v5;
        v26 = 2048;
        v27 = v9;
        v28 = 1024;
        v29 = a2;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) startPreview FigVirtualDisplaySessionStart error %d", &v18, 0x36u);
      }
    }
  }
}

- (int)stopScreenCapture
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = v3;
      v13 = 2080;
      v14 = "[VCScreenCaptureVirtualDisplay stopScreenCapture]";
      v15 = 1024;
      v16 = 140;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stopping FigVirtualDisplay Screen Capture", &v11, 0x1Cu);
    }
  }

  session = self->_session;
  if (session)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {
      v6(session);
    }

    v7 = self->_session;
    if (v7)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }

      v9 = self->_session;
      if (v9)
      {
        CFRelease(v9);
        self->_session = 0;
      }
    }
  }

  return 0;
}

- (int)pauseScreenCapture:(BOOL)capture
{
  captureCopy = capture;
  v23 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = "Resuming";
      v16 = v5;
      v15 = 136315906;
      v18 = "[VCScreenCaptureVirtualDisplay pauseScreenCapture:]";
      v17 = 2080;
      if (captureCopy)
      {
        v7 = "Pausing";
      }

      v19 = 1024;
      v20 = 150;
      v21 = 2080;
      v22 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s FigVirtualDisplay Screen Capture", &v15, 0x26u);
    }
  }

  session = self->_session;
  if (session)
  {
    v9 = *(CMBaseObjectGetVTable() + 16);
    if (captureCopy)
    {
      v10 = *(v9 + 24);
      if (v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = *(v9 + 32);
      if (v10)
      {
LABEL_16:
        v10(session);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = "Resuming";
      v15 = 136315906;
      v16 = v11;
      v17 = 2080;
      v18 = "[VCScreenCaptureVirtualDisplay pauseScreenCapture:]";
      if (captureCopy)
      {
        v13 = "Pausing";
      }

      v19 = 1024;
      v20 = 158;
      v21 = 2080;
      v22 = v13;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s FigVirtualDisplay Screen Capture ignored due to nil session", &v15, 0x26u);
    }
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
      v8 = "[VCScreenCaptureVirtualDisplay finalize]";
      v9 = 1024;
      v10 = 164;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Finalizing FigVirtualDisplay Screen Capture", &v5, 0x1Cu);
    }
  }

  [(VCScreenCaptureVirtualDisplay *)self stopScreenCapture];

  self->_delegate = 0;
  self->_frameCallback.sinkContext = 0;
  self->_frameCallback.sinkCallback = 0;
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

- (void)setupCaptureSession:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d FigVirtualDisplayProcessorCreate %d", v2, v3, v4, v5);
}

- (void)setupCaptureSession:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d FigVirtualDisplaySinkConduitCreate %d", v2, v3, v4, v5);
}

- (void)setupCaptureSession:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d FigVirtualDisplaySessionCreateWithComponents %d", v2, v3, v4, v5);
}

- (void)startScreenCaptureWithConfig:(int)a1 .cold.1(int a1, _DWORD *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315906;
      v8 = v4;
      v9 = 2080;
      OUTLINED_FUNCTION_6();
      v10 = 119;
      v11 = v6;
      v12 = a1;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Setup Screen Capture failed error=%d", &v7, 0x22u);
    }
  }

  *a2 = a1;
}

- (void)startScreenCaptureWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d FigVirtualDisplaySessionGetStartStatus %d", v2, v3, v4, v5);
}

- (void)startScreenCaptureWithConfig:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d FigVirtualDisplaySessionStart failed %d", v2, v3, v4, v5);
}

void __62__VCScreenCaptureVirtualDisplay_startScreenCaptureWithConfig___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d startPreview FigVirtualDisplaySessionStart error %d", v2, v3, v4, v5);
}

@end