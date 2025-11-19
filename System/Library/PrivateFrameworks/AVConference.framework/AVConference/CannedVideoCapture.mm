@interface CannedVideoCapture
+ (int)cannedVideoTypeForPath:(id)a3;
+ (int)createPixelBufferPool:(__CVPixelBufferPool *)a3 withWidth:(int)a4 height:(int)a5;
- (CannedVideoCapture)initWithCaptureServer:(id)a3 protocolFunctions:(const tagVCVideoCaptureServerProtocolRealtimeInstanceVTable *)a4 width:(int)a5 height:(int)a6 frameRate:(int)a7 videoSourceToken:(_VCVideoSourceToken)a8 video:(id)a9 isCamera:(BOOL)a10 error:(int *)a11;
- (int)copyColorInfo:(const __CFDictionary *)a3;
- (int)setWidth:(int)a3 height:(int)a4 frameRate:(int)a5;
- (int)startCaptureWithWidth:(int)a3 height:(int)a4 frameRate:(int)a5;
- (int)startPreview;
- (int)stop:(BOOL)a3;
- (void)dealloc;
@end

@implementation CannedVideoCapture

- (CannedVideoCapture)initWithCaptureServer:(id)a3 protocolFunctions:(const tagVCVideoCaptureServerProtocolRealtimeInstanceVTable *)a4 width:(int)a5 height:(int)a6 frameRate:(int)a7 videoSourceToken:(_VCVideoSourceToken)a8 video:(id)a9 isCamera:(BOOL)a10 error:(int *)a11
{
  v12 = *&a7;
  v13 = *&a6;
  v14 = *&a5;
  v47 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316930;
      *&buf[4] = v18;
      v33 = 2080;
      v34 = "[CannedVideoCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:video:isCamera:error:]";
      v35 = 1024;
      v36 = 63;
      v37 = 1024;
      v38 = v14;
      v39 = 1024;
      v40 = v13;
      v41 = 1024;
      v42 = v12;
      v43 = 1024;
      var0 = a8.var0.var0;
      v45 = 2112;
      v46 = a9;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d width=%d, height=%d, frameRate=%d, sourceToken=0x%x, video=%@", buf, 0x3Eu);
    }
  }

  v20 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (!v20)
  {
    [CannedVideoCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:video:isCamera:error:];
LABEL_21:
    v30 = *buf;
    [v20 drain];

    return 0;
  }

  v31.receiver = self;
  v31.super_class = CannedVideoCapture;
  v21 = [(VCVideoCapture *)&v31 initWithCaptureServer:a3 protocolFunctions:a4];
  if (!v21)
  {
    [CannedVideoCapture initWithCaptureServer:buf protocolFunctions:? width:? height:? frameRate:? videoSourceToken:? video:? isCamera:? error:?];
    goto LABEL_21;
  }

  v22 = v21;
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v24 = dispatch_queue_create_with_target_V2("com.apple.AVConference.CannedVideoCapture.captureSessionQueue", 0, CustomRootQueue);
  v22->_captureSessionQueue = v24;
  if (!v24)
  {
    [CannedVideoCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:video:isCamera:error:];
    goto LABEL_21;
  }

  v25 = [[VCCannedVideoCaptureSource alloc] initWithVideo:a9 callbackContext:v22 frameCallback:CannedVideoCapture_OnVideoFrame shouldScaleAndPad:0];
  v22->_captureSource = v25;
  if (!v25)
  {
    [CannedVideoCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:video:isCamera:error:];
    goto LABEL_21;
  }

  [(VCCannedVideoCaptureSource *)v25 setWidth:v14 height:v13];
  [(VCCannedVideoCaptureSource *)v22->_captureSource setFrameRate:v12];
  v26 = malloc_type_calloc(1uLL, 0x60uLL, 0x10000402F8A9FFCuLL);
  v22->_pimpl = v26;
  if (!v26)
  {
    [CannedVideoCapture initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:video:isCamera:error:];
    goto LABEL_21;
  }

  v26[16].var0.var0 = a8.var0.var0;
  if (a10)
  {
    v27 = 0;
  }

  else
  {
    v27 = 3;
  }

  pimpl = v22->_pimpl;
  pimpl->var4.var0 = a10;
  pimpl->var4.var1 = a10;
  *(&pimpl->var4.var1 + 1) = -21846;
  pimpl->var4.var2 = v27;
  *&pimpl->var4.var3 = 2863267840;
  *&pimpl->var4.var6 = -1431655936;
  if (a11)
  {
    *a11 = 0;
  }

  [v20 drain];
  return v22;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  free(self->_pimpl);

  dispatch_release(self->_captureSessionQueue);
  v3.receiver = self;
  v3.super_class = CannedVideoCapture;
  [(VCVideoCapture *)&v3 dealloc];
}

- (int)setWidth:(int)a3 height:(int)a4 frameRate:(int)a5
{
  v5 = *&a5;
  [(VCCannedVideoCaptureSource *)self->_captureSource setWidth:*&a3 height:*&a4];
  [(VCCannedVideoCaptureSource *)self->_captureSource setFrameRate:v5];
  [(VCVideoCaptureServer *)[(VCVideoCapture *)self captureServer] sourceFrameRateDidChange:v5];
  return 0;
}

- (int)copyColorInfo:(const __CFDictionary *)a3
{
  Mutable = CFDictionaryCreateMutable(0, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return -2146893820;
  }

  v5 = Mutable;
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69835B0], @"ITU_R_709_2");
  CFDictionaryAddValue(v5, *MEMORY[0x1E6983878], @"ITU_R_709_2");
  CFDictionaryAddValue(v5, *MEMORY[0x1E69838B8], @"ITU_R_709_2");
  result = 0;
  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

- (int)startPreview
{
  v7[5] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_pimpl->var0);
  pimpl = self->_pimpl;
  if (pimpl->var3)
  {
    pthread_mutex_unlock(&pimpl->var0);
    return -2146893775;
  }

  else
  {
    pimpl->var3 = 1;
    v5 = [(VCCannedVideoCaptureSource *)self->_captureSource start];
    captureSessionQueue = self->_captureSessionQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__CannedVideoCapture_startPreview__block_invoke;
    v7[3] = &unk_1E85F3778;
    v7[4] = self;
    dispatch_async(captureSessionQueue, v7);
    pthread_mutex_unlock(&self->_pimpl->var0);
    return v5;
  }
}

uint64_t __34__CannedVideoCapture_startPreview__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) captureServer];

  return [v1 handleCaptureEvent:@"avCaptureCameraDidStart"];
}

- (int)startCaptureWithWidth:(int)a3 height:(int)a4 frameRate:(int)a5
{
  [(CannedVideoCapture *)self setWidth:*&a3 height:*&a4 frameRate:*&a5];
  pthread_mutex_lock(&self->_pimpl->var0);
  v6 = [(VCCannedVideoCaptureSource *)self->_captureSource start];
  pthread_mutex_unlock(&self->_pimpl->var0);
  return v6;
}

- (int)stop:(BOOL)a3
{
  v3 = a3;
  v10[5] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_pimpl->var0);
  pimpl = self->_pimpl;
  var3 = pimpl->var3;
  if (!var3 || v3)
  {
    [(VCCannedVideoCaptureSource *)self->_captureSource stop];
    captureSessionQueue = self->_captureSessionQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __27__CannedVideoCapture_stop___block_invoke;
    v10[3] = &unk_1E85F3778;
    v10[4] = self;
    dispatch_async(captureSessionQueue, v10);
    pimpl = self->_pimpl;
    LOBYTE(var3) = pimpl->var3;
  }

  pimpl->var3 = var3 && !v3;
  pthread_mutex_unlock(&pimpl->var0);
  return 0;
}

uint64_t __27__CannedVideoCapture_stop___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) captureServer];

  return [v1 handleCaptureEvent:@"avCaptureCameraDidStop"];
}

+ (int)cannedVideoTypeForPath:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(MEMORY[0x1E695DFF8] "URLWithString:"scheme"")])
  {
    return 2;
  }

  v5 = 0;
  if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

+ (int)createPixelBufferPool:(__CVPixelBufferPool *)a3 withWidth:(int)a4 height:(int)a5
{
  v5 = *&a5;
  v13[4] = *MEMORY[0x1E69E9840];
  v12[0] = *MEMORY[0x1E6966208];
  v13[0] = [MEMORY[0x1E696AD98] numberWithInt:*&a4];
  v12[1] = *MEMORY[0x1E69660B8];
  v13[1] = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v12[2] = *MEMORY[0x1E6966130];
  v13[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*"v024"];
  v12[3] = *MEMORY[0x1E69660D8];
  v7 = *MEMORY[0x1E696CF98];
  v10[0] = *MEMORY[0x1E696CF68];
  v10[1] = v7;
  v11[0] = MEMORY[0x1E695E118];
  v11[1] = @"AVConference:CannedVideo";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  return CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, v8, a3);
}

- (void)initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:video:isCamera:error:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate canned video capture implementation", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:video:isCamera:error:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to init capture source", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:video:isCamera:error:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create capture session queue", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

- (void)initWithCaptureServer:(void *)a1 protocolFunctions:width:height:frameRate:videoSourceToken:video:isCamera:error:.cold.4(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      OUTLINED_FUNCTION_0();
      v6 = 69;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to initialize self", &v4, 0x1Cu);
    }
  }

  *a1 = 0;
}

- (void)initWithCaptureServer:protocolFunctions:width:height:frameRate:videoSourceToken:video:isCamera:error:.cold.5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate autorelease pool", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_6_27();
}

@end