@interface AVCScreenCapturePicker
- (AVCScreenCapturePicker)initWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5;
- (void)dealloc;
- (void)deregisterBlocksForNotifications;
- (void)invalidate;
- (void)registerBlocksForNotifications;
- (void)show;
- (void)showUsingContentStyle:(int64_t)a3;
@end

@implementation AVCScreenCapturePicker

- (AVCScreenCapturePicker)initWithConfiguration:(id)a3 delegate:(id)a4 delegateQueue:(id)a5
{
  v46 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v10;
        v38 = 2080;
        v39 = "[AVCScreenCapturePicker initWithConfiguration:delegate:delegateQueue:]";
        v40 = 1024;
        v41 = 34;
        v12 = " [%s] %s:%d Begin";
        v13 = v11;
        v14 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [(AVCScreenCapturePicker *)self performSelector:sel_logPrefix];
    }

    else
    {
      v9 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v15;
        v38 = 2080;
        v39 = "[AVCScreenCapturePicker initWithConfiguration:delegate:delegateQueue:]";
        v40 = 1024;
        v41 = 34;
        v42 = 2112;
        v43 = v9;
        v44 = 2048;
        v45 = self;
        v12 = " [%s] %s:%d %@(%p) Begin";
        v13 = v16;
        v14 = 48;
        goto LABEL_11;
      }
    }
  }

  if (!a4)
  {
    [AVCScreenCapturePicker initWithConfiguration:delegate:delegateQueue:];
    goto LABEL_44;
  }

  v33.receiver = self;
  v33.super_class = AVCScreenCapturePicker;
  v17 = [(AVCScreenCapturePicker *)&v33 init];
  if (!v17)
  {
    [AVCScreenCapturePicker initWithConfiguration:buf delegate:? delegateQueue:?];
    goto LABEL_44;
  }

  v18 = v17;
  if (a5)
  {
    v17->_screenCapturePickerQueue = a5;
    dispatch_retain(a5);
    if (v18->_screenCapturePickerQueue)
    {
      goto LABEL_16;
    }

LABEL_33:
    [AVCScreenCapturePicker initWithConfiguration:delegate:delegateQueue:];
    goto LABEL_44;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v29 = dispatch_queue_create_with_target_V2("com.apple.AVConference.screenCapture", 0, CustomRootQueue);
  v18->_screenCapturePickerQueue = v29;
  if (!v29)
  {
    goto LABEL_33;
  }

LABEL_16:
  v19 = objc_alloc_init(AVConferenceXPCClient);
  v18->_connection = v19;
  if (!v19)
  {
    [AVCScreenCapturePicker initWithConfiguration:delegate:delegateQueue:];
    goto LABEL_44;
  }

  if (a3 && [a3 pickerClientAuditToken])
  {
    v36 = [a3 pickerClientAuditToken];
    v20 = +[AVCAuditToken serializeAuditTokens:](AVCAuditToken, "serializeAuditTokens:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1]);
    v34 = @"vcScreenCapturePickerAuditToken";
    if (v20)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v34 = @"vcScreenCapturePickerAuditToken";
  }

  v20 = [MEMORY[0x1E695DFB0] null];
LABEL_23:
  v35 = v20;
  v21 = -[AVConferenceXPCClient sendMessageSync:arguments:](v18->_connection, "sendMessageSync:arguments:", "vcScreenCapturePickerInitialize", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1]);
  if (v21 && ![v21 objectForKeyedSubscript:@"ERROR"])
  {
    [(AVCScreenCapturePicker *)v18 registerBlocksForNotifications];
    objc_storeWeak(&v18->_delegate, a4);
    v18->_isValid = 1;
    goto LABEL_26;
  }

  [AVCScreenCapturePicker initWithConfiguration:delegate:delegateQueue:];
LABEL_44:

  v18 = 0;
LABEL_26:
  if (objc_opt_class() == v18)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v23;
        v38 = 2080;
        v39 = "[AVCScreenCapturePicker initWithConfiguration:delegate:delegateQueue:]";
        v40 = 1024;
        v41 = 69;
        v25 = " [%s] %s:%d End";
        v26 = v24;
        v27 = 28;
LABEL_38:
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(AVCScreenCapturePicker *)v18 performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        *&buf[4] = v30;
        v38 = 2080;
        v39 = "[AVCScreenCapturePicker initWithConfiguration:delegate:delegateQueue:]";
        v40 = 1024;
        v41 = 69;
        v42 = 2112;
        v43 = v22;
        v44 = 2048;
        v45 = v18;
        v25 = " [%s] %s:%d %@(%p) End";
        v26 = v31;
        v27 = 48;
        goto LABEL_38;
      }
    }
  }

  return v18;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(AVCScreenCapturePicker *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136316162;
    v14 = v9;
    v15 = 2080;
    v16 = "[AVCScreenCapturePicker dealloc]";
    v17 = 1024;
    v18 = 74;
    v19 = 2112;
    v20 = v3;
    v21 = 2048;
    v22 = self;
    v6 = " [%s] %s:%d %@(%p) ";
    v7 = v10;
    v8 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = v4;
      v15 = 2080;
      v16 = "[AVCScreenCapturePicker dealloc]";
      v17 = 1024;
      v18 = 74;
      v6 = " [%s] %s:%d ";
      v7 = v5;
      v8 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  [(AVCScreenCapturePicker *)self invalidate];

  screenCapturePickerQueue = self->_screenCapturePickerQueue;
  if (screenCapturePickerQueue)
  {
    dispatch_release(screenCapturePickerQueue);
    self->_screenCapturePickerQueue = 0;
  }

  v12.receiver = self;
  v12.super_class = AVCScreenCapturePicker;
  [(AVCScreenCapturePicker *)&v12 dealloc];
}

- (void)invalidate
{
  v4[5] = *MEMORY[0x1E69E9840];
  screenCapturePickerQueue = self->_screenCapturePickerQueue;
  if (screenCapturePickerQueue)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __36__AVCScreenCapturePicker_invalidate__block_invoke;
    v4[3] = &unk_1E85F3778;
    v4[4] = self;
    dispatch_sync(screenCapturePickerQueue, v4);
  }
}

uint64_t __36__AVCScreenCapturePicker_invalidate__block_invoke(uint64_t result)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (*(v1 + 32) == 1)
  {
    v2 = result;
    *(v1 + 32) = 0;
    if (objc_opt_class() == *(result + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *v12 = 136315650;
      *&v12[4] = v4;
      *&v12[12] = 2080;
      *&v12[14] = "[AVCScreenCapturePicker invalidate]_block_invoke";
      *&v12[22] = 1024;
      LODWORD(v13) = 86;
      v6 = " [%s] %s:%d invalidating";
      v7 = v5;
      v8 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*(v2 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v11 = *(v2 + 32);
      *v12 = 136316162;
      *&v12[4] = v9;
      *&v12[12] = 2080;
      *&v12[14] = "[AVCScreenCapturePicker invalidate]_block_invoke";
      *&v12[22] = 1024;
      LODWORD(v13) = 86;
      WORD2(v13) = 2112;
      *(&v13 + 6) = v3;
      HIWORD(v13) = 2048;
      v14 = v11;
      v6 = " [%s] %s:%d %@(%p) invalidating";
      v7 = v10;
      v8 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v12, v8);
LABEL_13:
    [*(v2 + 32) deregisterBlocksForNotifications];
    objc_storeWeak((*(v2 + 32) + 24), 0);
    return [*(*(v2 + 32) + 16) sendMessageSync:"vcScreenCapturePickerTerminate"];
  }

  return result;
}

- (void)show
{
  v3[5] = *MEMORY[0x1E69E9840];
  screenCapturePickerQueue = self->_screenCapturePickerQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__AVCScreenCapturePicker_show__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(screenCapturePickerQueue, v3);
}

uint64_t __30__AVCScreenCapturePicker_show__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (*(result + 32) == 1)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return [*(*(a1 + 32) + 16) sendMessageSync:{"vcScreenCapturePickerShow", *v12, *&v12[16], v13, v14}];
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [*(*(a1 + 32) + 16) sendMessageSync:{"vcScreenCapturePickerShow", *v12, *&v12[16], v13, v14}];
      }

      *v12 = 136315650;
      *&v12[4] = v4;
      *&v12[12] = 2080;
      *&v12[14] = "[AVCScreenCapturePicker show]_block_invoke";
      *&v12[22] = 1024;
      LODWORD(v13) = 103;
      v6 = " [%s] %s:%d ";
      v7 = v5;
      v8 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return [*(*(a1 + 32) + 16) sendMessageSync:{"vcScreenCapturePickerShow", *v12, *&v12[16], v13, v14}];
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return [*(*(a1 + 32) + 16) sendMessageSync:{"vcScreenCapturePickerShow", *v12, *&v12[16], v13, v14}];
      }

      v11 = *(a1 + 32);
      *v12 = 136316162;
      *&v12[4] = v9;
      *&v12[12] = 2080;
      *&v12[14] = "[AVCScreenCapturePicker show]_block_invoke";
      *&v12[22] = 1024;
      LODWORD(v13) = 103;
      WORD2(v13) = 2112;
      *(&v13 + 6) = v3;
      HIWORD(v13) = 2048;
      v14 = v11;
      v6 = " [%s] %s:%d %@(%p) ";
      v7 = v10;
      v8 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v12, v8);
    return [*(*(a1 + 32) + 16) sendMessageSync:{"vcScreenCapturePickerShow", *v12, *&v12[16], v13, v14}];
  }

  return result;
}

- (void)showUsingContentStyle:(int64_t)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  screenCapturePickerQueue = self->_screenCapturePickerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AVCScreenCapturePicker_showUsingContentStyle___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(screenCapturePickerQueue, block);
}

uint64_t __48__AVCScreenCapturePicker_showUsingContentStyle___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (*(result + 32) == 1)
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136315650;
      v15 = v4;
      v16 = 2080;
      v17 = "[AVCScreenCapturePicker showUsingContentStyle:]_block_invoke";
      v18 = 1024;
      v19 = 112;
      v6 = " [%s] %s:%d ";
      v7 = v5;
      v8 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_13;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v11 = *(a1 + 32);
      *buf = 136316162;
      v15 = v9;
      v16 = 2080;
      v17 = "[AVCScreenCapturePicker showUsingContentStyle:]_block_invoke";
      v18 = 1024;
      v19 = 112;
      v20 = 2112;
      v21 = v3;
      v22 = 2048;
      v23 = v11;
      v6 = " [%s] %s:%d %@(%p) ";
      v7 = v10;
      v8 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
LABEL_13:
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{*(a1 + 40), @"vcScreenCaptureAttributesContentStyle"}];
    return [*(*(a1 + 32) + 16) sendMessageSync:"vcScreenCapturePickerShowUsingContentStyle" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v13, &v12, 1)}];
  }

  return result;
}

- (void)registerBlocksForNotifications
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVCScreenCapturePicker_registerBlocksForNotifications__block_invoke;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcScreenCapturePickerDidSelectAttributes" block:v5 queue:self->_screenCapturePickerQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__AVCScreenCapturePicker_registerBlocksForNotifications__block_invoke_45;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcScreenCapturePickerDidCancel" block:v4 queue:self->_screenCapturePickerQueue];
}

void __56__AVCScreenCapturePicker_registerBlocksForNotifications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) strong];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [v5 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return;
  }

  if (objc_opt_class() != v6)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [v6 performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_14;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *v20 = 136316418;
    *&v20[4] = v14;
    *&v20[12] = 2080;
    *&v20[14] = "[AVCScreenCapturePicker registerBlocksForNotifications]_block_invoke";
    *&v20[22] = 1024;
    LODWORD(v21) = 129;
    WORD2(v21) = 2112;
    *(&v21 + 6) = v8;
    HIWORD(v21) = 2048;
    v22 = v6;
    LOWORD(v23) = 2112;
    *(&v23 + 2) = a3;
    v11 = " [%s] %s:%d %@(%p) received callback for didSelectAttributes error=%@";
    v12 = v15;
    v13 = 58;
    goto LABEL_13;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 136315906;
      *&v20[4] = v9;
      *&v20[12] = 2080;
      *&v20[14] = "[AVCScreenCapturePicker registerBlocksForNotifications]_block_invoke";
      *&v20[22] = 1024;
      LODWORD(v21) = 129;
      WORD2(v21) = 2112;
      *(&v21 + 6) = a3;
      v11 = " [%s] %s:%d received callback for didSelectAttributes error=%@";
      v12 = v10;
      v13 = 38;
LABEL_13:
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, v20, v13);
    }
  }

LABEL_14:
  v16 = [a2 objectForKeyedSubscript:{@"vcScreenCaptureAttributesError", *v20, *&v20[16], v21, v22, v23}];
  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(v16 code:"objectForKeyedSubscript:" userInfo:{@"vcScreenCaptureAttributesErrorDomain", objc_msgSend(objc_msgSend(v16, "objectForKeyedSubscript:", @"vcScreenCaptureAttributesErrorCode", "intValue"), objc_msgSend(v16, "objectForKeyedSubscript:", @"vcScreenCaptureAttributesErrorUserInfo"}];
    v18 = objc_alloc_init(AVCScreenCaptureAttributes);
  }

  else
  {
    v18 = [[AVCScreenCaptureAttributes alloc] initWithConfiguration:a2];
    v17 = 0;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = a3;
  }

  [v7 picker:v6 didSelectAttributes:v18 error:v19];
}

uint64_t __56__AVCScreenCapturePicker_registerBlocksForNotifications__block_invoke_45(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) strong];
  if (result)
  {
    v4 = result;
    v5 = [result delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v6 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcScreenCaptureCaptureSourceID", "integerValue"}];
      if (objc_opt_class() == v4)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          return [v5 picker:v4 didCancelForCaptureSourceID:{v6, *v15, *&v15[16], v16, v17, v18}];
        }

        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return [v5 picker:v4 didCancelForCaptureSourceID:{v6, *v15, *&v15[16], v16, v17, v18}];
        }

        *v15 = 136315906;
        *&v15[4] = v8;
        *&v15[12] = 2080;
        *&v15[14] = "[AVCScreenCapturePicker registerBlocksForNotifications]_block_invoke";
        *&v15[22] = 1024;
        LODWORD(v16) = 156;
        WORD2(v16) = 2048;
        *(&v16 + 6) = v6;
        v10 = " [%s] %s:%d received callback for didCancel captureSourceID=%ld";
        v11 = v9;
        v12 = 38;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [v4 performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          return [v5 picker:v4 didCancelForCaptureSourceID:{v6, *v15, *&v15[16], v16, v17, v18}];
        }

        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return [v5 picker:v4 didCancelForCaptureSourceID:{v6, *v15, *&v15[16], v16, v17, v18}];
        }

        *v15 = 136316418;
        *&v15[4] = v13;
        *&v15[12] = 2080;
        *&v15[14] = "[AVCScreenCapturePicker registerBlocksForNotifications]_block_invoke";
        *&v15[22] = 1024;
        LODWORD(v16) = 156;
        WORD2(v16) = 2112;
        *(&v16 + 6) = v7;
        HIWORD(v16) = 2048;
        v17 = v4;
        LOWORD(v18) = 2048;
        *(&v18 + 2) = v6;
        v10 = " [%s] %s:%d %@(%p) received callback for didCancel captureSourceID=%ld";
        v11 = v14;
        v12 = 58;
      }

      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, v15, v12);
      return [v5 picker:v4 didCancelForCaptureSourceID:{v6, *v15, *&v15[16], v16, v17, v18}];
    }
  }

  return result;
}

- (void)deregisterBlocksForNotifications
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcScreenCapturePickerDidSelectAttributes"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcScreenCapturePickerDidCancel"];
}

- (void)initWithConfiguration:delegate:delegateQueue:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_7();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *v0 = v1;
}

- (void)initWithConfiguration:delegate:delegateQueue:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [v1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = v1;
}

- (void)initWithConfiguration:delegate:delegateQueue:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [v1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = v1;
}

- (void)initWithConfiguration:(void *)a1 delegate:delegateQueue:.cold.4(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!objc_opt_class())
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

    v9 = 136315650;
    v10 = v3;
    OUTLINED_FUNCTION_0();
    v11 = 38;
    v5 = " [%s] %s:%d Failed to allocate super instance";
    v6 = v4;
    v7 = 28;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, v5, &v9, v7);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [0 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      v11 = 38;
      v12 = 2112;
      v13 = v2;
      v14 = 2048;
      v15 = 0;
      v5 = " [%s] %s:%d %@(%p) Failed to allocate super instance";
      v6 = v8;
      v7 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  *a1 = 0;
}

- (void)initWithConfiguration:delegate:delegateQueue:.cold.5()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_7();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [v1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = v1;
}

@end