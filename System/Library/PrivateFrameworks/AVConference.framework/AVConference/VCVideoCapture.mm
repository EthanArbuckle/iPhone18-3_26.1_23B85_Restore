@interface VCVideoCapture
- (VCCannedVideoCaptureSource)cannedScreenCaptureSource;
- (VCVideoCapture)initWithCaptureServer:(id)a3 protocolFunctions:(const tagVCVideoCaptureServerProtocolRealtimeInstanceVTable *)a4;
- (unsigned)addSink:(id)a3;
- (unsigned)removeSink:(id)a3;
- (unsigned)sinkCount;
- (void)cleanupSinkEntry:(tagVCVideoCaptureSinkEntry *)a3;
- (void)dealloc;
@end

@implementation VCVideoCapture

- (VCVideoCapture)initWithCaptureServer:(id)a3 protocolFunctions:(const tagVCVideoCaptureServerProtocolRealtimeInstanceVTable *)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VCVideoCapture;
  v6 = [(VCVideoCapture *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_captureServer, a3);
    v7->_protocolFunctions = a4->onCaptureVideoFrame;
    v7->_cannedScreenCaptureSource = 0;
    v8 = VCDefaults_CopyStringValueForKey(@"cannedScreenInputFileName");
    v9 = v8;
    if (v8 && [v8 length])
    {
      v7->_cannedScreenCaptureSource = [[VCCannedVideoCaptureSource alloc] initWithVideo:v9 callbackContext:0 frameCallback:0 shouldScaleAndPad:1];
    }

    v10 = objc_alloc_init(VideoAttributes);
    v7->_localVideoAttributes = v10;
    [(VideoAttributes *)v10 setCamera:3];
    VCSingleLinkedListInitialize(&v7->_sinkList, VCVideoCapture_CompareSinkEntries);
    pthread_mutex_init(&v7->_sinkArrayMutex, 0);
    [(VCVideoCapture *)v7 addSink:[(VCVideoCapture *)v7 captureServer]];
  }

  return v7;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  [(VCVideoCapture *)self removeSink:[(VCVideoCapture *)self captureServer]];
  objc_storeWeak(&self->_captureServer, 0);
  pthread_mutex_destroy(&self->_sinkArrayMutex);
  v3 = VCSingleLinkedListPop(&self->_sinkList);
  if (v3)
  {
    v4 = v3;
    do
    {
      [(VCVideoCapture *)self cleanupSinkEntry:v4];
      free(v4);
      v4 = VCSingleLinkedListPop(&self->_sinkList);
    }

    while (v4);
  }

  v5.receiver = self;
  v5.super_class = VCVideoCapture;
  [(VCVideoCapture *)&v5 dealloc];
}

- (VCCannedVideoCaptureSource)cannedScreenCaptureSource
{
  v2 = self->_cannedScreenCaptureSource;

  return v2;
}

- (unsigned)sinkCount
{
  pthread_mutex_lock(&self->_sinkArrayMutex);
  sinkCount = self->_sinkCount;
  pthread_mutex_unlock(&self->_sinkArrayMutex);
  return sinkCount;
}

- (void)cleanupSinkEntry:(tagVCVideoCaptureSinkEntry *)a3
{
  _Block_release(a3->var2);
  var1 = a3->var1;
}

- (unsigned)addSink:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_sinkArrayMutex);
  LODWORD(v5) = self->_sinkCount;
  if (!a3)
  {
    [(VCVideoCapture *)self addSink:v30];
    LODWORD(v5) = *v30;
    goto LABEL_29;
  }

  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
  if (!v6)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 136315906;
          *&v30[4] = v26;
          *&v30[12] = 2080;
          *&v30[14] = "[VCVideoCapture addSink:]";
          *&v30[22] = 1024;
          LODWORD(v31) = 110;
          WORD2(v31) = 2048;
          *(&v31 + 6) = a3;
          v12 = " [%s] %s:%d Failed to allocate the list entry for sink=%p";
          v13 = v27;
          v14 = 38;
          goto LABEL_22;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v25 = [(VCVideoCapture *)self performSelector:sel_logPrefix];
      }

      else
      {
        v25 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 136316418;
          *&v30[4] = v28;
          *&v30[12] = 2080;
          *&v30[14] = "[VCVideoCapture addSink:]";
          *&v30[22] = 1024;
          LODWORD(v31) = 110;
          WORD2(v31) = 2112;
          *(&v31 + 6) = v25;
          HIWORD(v31) = 2048;
          v32 = self;
          *v33 = 2048;
          *&v33[2] = a3;
          v12 = " [%s] %s:%d %@(%p) Failed to allocate the list entry for sink=%p";
          v13 = v29;
          v14 = 58;
          goto LABEL_22;
        }
      }
    }

    goto LABEL_29;
  }

  v7 = v6;
  v6[1] = a3;
  if (objc_opt_respondsToSelector())
  {
    v7[2] = [a3 copyOnVideoFrameBlock];
  }

  if ((VCSingleLinkedListPush(&self->_sinkList, v7) & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_28;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *v30 = 136315906;
      *&v30[4] = v15;
      *&v30[12] = 2080;
      *&v30[14] = "[VCVideoCapture addSink:]";
      *&v30[22] = 1024;
      LODWORD(v31) = 117;
      WORD2(v31) = 2048;
      *(&v31 + 6) = a3;
      v17 = " [%s] %s:%d VCVideoSink %p was in the array, return directly";
      v18 = v16;
      v19 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCVideoCapture *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_28;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *v30 = 136316418;
      *&v30[4] = v22;
      *&v30[12] = 2080;
      *&v30[14] = "[VCVideoCapture addSink:]";
      *&v30[22] = 1024;
      LODWORD(v31) = 117;
      WORD2(v31) = 2112;
      *(&v31 + 6) = v9;
      HIWORD(v31) = 2048;
      v32 = self;
      *v33 = 2048;
      *&v33[2] = a3;
      v17 = " [%s] %s:%d %@(%p) VCVideoSink %p was in the array, return directly";
      v18 = v23;
      v19 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, v17, v30, v19);
LABEL_28:
    [(VCVideoCapture *)self cleanupSinkEntry:v7, *v30, *&v30[16], v31, v32, *v33];
    free(v7);
    goto LABEL_29;
  }

  v5 = (self->_sinkCount + 1);
  self->_sinkCount = v5;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 136316162;
        *&v30[4] = v10;
        *&v30[12] = 2080;
        *&v30[14] = "[VCVideoCapture addSink:]";
        *&v30[22] = 1024;
        LODWORD(v31) = 122;
        WORD2(v31) = 2048;
        *(&v31 + 6) = a3;
        HIWORD(v31) = 2048;
        v32 = v5;
        v12 = " [%s] %s:%d Add VCVideoSink %p, new array count = %lu";
        v13 = v11;
        v14 = 48;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v30, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCVideoCapture *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 136316674;
        *&v30[4] = v20;
        *&v30[12] = 2080;
        *&v30[14] = "[VCVideoCapture addSink:]";
        *&v30[22] = 1024;
        LODWORD(v31) = 122;
        WORD2(v31) = 2112;
        *(&v31 + 6) = v8;
        HIWORD(v31) = 2048;
        v32 = self;
        *v33 = 2048;
        *&v33[2] = a3;
        *&v33[10] = 2048;
        *&v33[12] = v5;
        v12 = " [%s] %s:%d %@(%p) Add VCVideoSink %p, new array count = %lu";
        v13 = v21;
        v14 = 68;
        goto LABEL_22;
      }
    }
  }

LABEL_29:
  pthread_mutex_unlock(&self->_sinkArrayMutex);
  return v5;
}

- (unsigned)removeSink:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_sinkArrayMutex);
  LODWORD(v5) = self->_sinkCount;
  if (!a3)
  {
    [(VCVideoCapture *)self removeSink:buf];
    LODWORD(v5) = *buf;
    goto LABEL_18;
  }

  v25[0] = 0;
  v25[1] = a3;
  v25[2] = 0;
  v6 = VCSingleLinkedListRemove(&self->_sinkList, v25);
  if (v6)
  {
    v7 = v6;
    v5 = (self->_sinkCount - 1);
    self->_sinkCount = v5;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_17;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 136316162;
      v27 = v10;
      v28 = 2080;
      v29 = "[VCVideoCapture removeSink:]";
      v30 = 1024;
      v31 = 139;
      v32 = 2048;
      v33 = a3;
      v34 = 2048;
      v35 = v5;
      v12 = " [%s] %s:%d Remove VCVideoSink %p, new array count = %lu";
      v13 = v11;
      v14 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCVideoCapture *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_17;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 136316674;
      v27 = v15;
      v28 = 2080;
      v29 = "[VCVideoCapture removeSink:]";
      v30 = 1024;
      v31 = 139;
      v32 = 2112;
      v33 = v8;
      v34 = 2048;
      v35 = self;
      v36 = 2048;
      v37 = a3;
      v38 = 2048;
      v39 = v5;
      v12 = " [%s] %s:%d %@(%p) Remove VCVideoSink %p, new array count = %lu";
      v13 = v16;
      v14 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_17:
    [(VCVideoCapture *)self cleanupSinkEntry:v7];
    free(v7);
    goto LABEL_18;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v27 = v18;
        v28 = 2080;
        v29 = "[VCVideoCapture removeSink:]";
        v30 = 1024;
        v31 = 143;
        v32 = 2048;
        v33 = a3;
        v20 = " [%s] %s:%d VCVideoSink %p was not in the array, nothing to remove";
        v21 = v19;
        v22 = 38;
LABEL_26:
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(VCVideoCapture *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v27 = v23;
        v28 = 2080;
        v29 = "[VCVideoCapture removeSink:]";
        v30 = 1024;
        v31 = 143;
        v32 = 2112;
        v33 = v9;
        v34 = 2048;
        v35 = self;
        v36 = 2048;
        v37 = a3;
        v20 = " [%s] %s:%d %@(%p) VCVideoSink %p was not in the array, nothing to remove";
        v21 = v24;
        v22 = 58;
        goto LABEL_26;
      }
    }
  }

LABEL_18:
  pthread_mutex_unlock(&self->_sinkArrayMutex);
  return v5;
}

uint64_t __VCVideoCapture_DistributeVideoFrame_block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(v2 + 16);
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    return v5(v2, v3, &v13, v4);
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    v10 = *v9;
    v12 = *(v9 + 4);
    v11 = v10;
    return [v7 onVideoFrame:v8 frameTime:&v13 attribute:&v11];
  }
}

- (void)addSink:(_DWORD *)a3 .cold.1(void *a1, int a2, _DWORD *a3)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_32();
LABEL_10:
        _os_log_impl(v6, v7, v8, v9, v10, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [a1 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_3_41();
        goto LABEL_10;
      }
    }
  }

  *a3 = a2;
}

- (void)removeSink:(_DWORD *)a3 .cold.1(void *a1, int a2, _DWORD *a3)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_32();
LABEL_10:
        _os_log_impl(v6, v7, v8, v9, v10, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [a1 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_3_41();
        goto LABEL_10;
      }
    }
  }

  *a3 = a2;
}

@end