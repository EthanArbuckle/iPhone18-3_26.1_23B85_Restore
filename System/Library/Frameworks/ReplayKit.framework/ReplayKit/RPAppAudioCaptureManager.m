@interface RPAppAudioCaptureManager
+ (AudioStreamBasicDescription)audioStreamBasicDescriptionWithStereo:(SEL)a3;
+ (AudioStreamBasicDescription)descriptionForHQLR;
- (BOOL)handleStartAudioQueueFailed:(int)a3 didFailHandler:(id)a4;
- (RPAppAudioCaptureManager)init;
- (id)newAudioTapForAudioCaptureConfig:(id)a3;
- (void)startWithConfig:(id)a3 outputHandler:(id)a4 didStartHandler:(id)a5;
- (void)stop;
@end

@implementation RPAppAudioCaptureManager

+ (AudioStreamBasicDescription)audioStreamBasicDescriptionWithStereo:(SEL)a3
{
  retstr->mSampleRate = 44100.0;
  *&retstr->mFormatID = 0xE6C70636DLL;
  if (a4)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  retstr->mBytesPerFrame = v4;
  retstr->mChannelsPerFrame = v5;
  retstr->mBytesPerPacket = v4;
  retstr->mFramesPerPacket = 1;
  *&retstr->mBitsPerChannel = 16;
  return result;
}

+ (AudioStreamBasicDescription)descriptionForHQLR
{
  v7 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:1 channels:0 interleaved:48000.0];
  v4 = [v7 streamDescription];
  v5 = *(v4 + 16);
  *&retstr->mSampleRate = *v4;
  *&retstr->mBytesPerPacket = v5;
  *&retstr->mBitsPerChannel = *(v4 + 32);

  return result;
}

- (RPAppAudioCaptureManager)init
{
  v10.receiver = self;
  v10.super_class = RPAppAudioCaptureManager;
  v2 = [(RPAppAudioCaptureManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ReplayKit.AppAudioCaptureQueue", 0);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = *(v2 + 2);
    *(v2 + 2) = 0;

    [RPAppAudioCaptureManager audioStreamBasicDescriptionWithStereo:1];
    *(v2 + 56) = v7;
    *(v2 + 72) = v8;
    *(v2 + 11) = v9;
    +[RPAppAudioCaptureManager descriptionForHQLR];
    *(v2 + 6) = v7;
    *(v2 + 7) = v8;
    *(v2 + 16) = v9;
    v2[160] = 0;
  }

  return v2;
}

- (BOOL)handleStartAudioQueueFailed:(int)a3 didFailHandler:(id)a4
{
  v5 = a4;
  if (a3)
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPAppAudioCaptureManager handleStartAudioQueueFailed:didFailHandler:];
      if (!v5)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    if (v5)
    {
LABEL_5:
      v6 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5803 userInfo:0];
      v5[2](v5, v6);
    }
  }

LABEL_6:

  return a3 != 0;
}

- (void)startWithConfig:(id)a3 outputHandler:(id)a4 didStartHandler:(id)a5
{
  var2 = a3.var2;
  v7 = *&a3.var0;
  v9 = a4;
  v10 = a5;
  audioDispatchQueue = self->_audioDispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3254779904;
  block[2] = __74__RPAppAudioCaptureManager_startWithConfig_outputHandler_didStartHandler___block_invoke;
  block[3] = &unk_284D75748;
  block[4] = self;
  v16 = v9;
  v18 = v7;
  v19 = var2;
  v17 = v10;
  v12 = v10;
  v13 = var2;
  v14 = v9;
  dispatch_async(audioDispatchQueue, block);
}

void __74__RPAppAudioCaptureManager_startWithConfig_outputHandler_didStartHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v31 = "[RPAppAudioCaptureManager startWithConfig:outputHandler:didStartHandler:]_block_invoke";
    v32 = 1024;
    v33 = 292;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v2 = MEMORY[0x23EE8E4E0](*(a1 + 40));
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  v5 = *(v3 + 16);
  *(v3 + 16) = v2;

  *(*(a1 + 32) + 32) = malloc_type_malloc(0xA0uLL, 0x1020040115CD000uLL);
  v6 = *(*(a1 + 32) + 32);
  v7 = 56;
  if (*(a1 + 56) == 3)
  {
    v7 = 96;
  }

  v8 = *v4 + v7;
  v9 = *(v8 + 4);
  v10 = *(v8 + 1);
  *(v6 + 8) = *v8;
  *(v6 + 40) = v9;
  *(v6 + 24) = v10;
  v11 = *v4;
  v12 = MEMORY[0x277CC0898];
  *(v11 + 136) = *MEMORY[0x277CC0898];
  *(v11 + 19) = *(v12 + 16);
  LODWORD(v11) = *(a1 + 56);
  v13 = v11 == 3;
  v14 = v11 != 3;
  v15 = v13;
  *(*v4 + 160) = v15;
  if (([*v4 handleStartAudioQueueFailed:AudioQueueNewInput((*(*v4 + 4) + 8) didFailHandler:{handleInputBuffer, *v4, 0, 0, v14 << 11, *(*v4 + 4)), *(a1 + 48)}] & 1) == 0)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v31 = "[RPAppAudioCaptureManager startWithConfig:outputHandler:didStartHandler:]_block_invoke";
      v32 = 1024;
      v33 = 314;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Created Audio Queue Input", buf, 0x12u);
    }

    if (*(a1 + 56) == 3)
    {
      goto LABEL_14;
    }

    v21 = *(a1 + 32);
    v22 = *(a1 + 56);
    v23 = *(a1 + 64);
    if (v21)
    {
      v24 = [v21 newAudioTapForAudioCaptureConfig:{v22, v23}];
      if (v24)
      {
        v25 = v24;
        if (([*(a1 + 32) handleStartAudioQueueFailed:AudioQueueSetProperty(**(*(a1 + 32) + 32) didFailHandler:{0x71746F62u, v24, 8u), *(a1 + 48)}] & 1) == 0)
        {
          if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v31 = "[RPAppAudioCaptureManager startWithConfig:outputHandler:didStartHandler:]_block_invoke";
            v32 = 1024;
            v33 = 327;
            _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully set Audio Queue Process Tap", buf, 0x12u);
          }

LABEL_14:
          ioDataSize = 40;
          if (([*(a1 + 32) handleStartAudioQueueFailed:AudioQueueGetProperty(**(*(a1 + 32) + 32) didFailHandler:{0x61716674u, (*(*(a1 + 32) + 32) + 8), &ioDataSize), *(a1 + 48)}] & 1) == 0)
          {
            *(*(*v4 + 4) + 136) = 4096;
            for (i = 48; i != 128; i += 8)
            {
              AudioQueueAllocateBuffer(**(*v4 + 4), *(*(*v4 + 4) + 136), (*(*v4 + 4) + i));
              AudioQueueEnqueueBuffer(**(*v4 + 4), *(*(*v4 + 4) + i), 0, 0);
            }

            *(*(*(a1 + 32) + 32) + 144) = 0;
            *(*(*(a1 + 32) + 32) + 152) = 1;
            if (([*(a1 + 32) handleStartAudioQueueFailed:AudioQueueAddPropertyListener(**(*(a1 + 32) + 32) didFailHandler:{0x6171726Eu, isRunningListenerCallback, *(a1 + 32)), *(a1 + 48)}] & 1) == 0)
            {
              v17 = AudioQueueStart(**(*v4 + 4), 0);
              if (v17 == -66665)
              {
                if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446466;
                  v31 = "[RPAppAudioCaptureManager startWithConfig:outputHandler:didStartHandler:]_block_invoke";
                  v32 = 1024;
                  v33 = 359;
                  _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d AudioQueueStart retry after can not start yet error", buf, 0x12u);
                }

                sleep(1u);
                v17 = AudioQueueStart(**(*v4 + 4), 0);
              }

              if (([*(a1 + 32) handleStartAudioQueueFailed:v17 didFailHandler:*(a1 + 48)] & 1) == 0)
              {
                if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446466;
                  v31 = "[RPAppAudioCaptureManager startWithConfig:outputHandler:didStartHandler:]_block_invoke";
                  v32 = 1024;
                  v33 = 367;
                  _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Successfully started Audio Queue Recording", buf, 0x12u);
                }

                v18 = MEMORY[0x23EE8E4E0](*(a1 + 48));
                v19 = *(a1 + 32);
                v20 = *(v19 + 24);
                *(v19 + 24) = v18;
              }
            }
          }

          goto LABEL_41;
        }

LABEL_40:

        goto LABEL_41;
      }
    }

    else
    {
    }

    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __74__RPAppAudioCaptureManager_startWithConfig_outputHandler_didStartHandler___block_invoke_cold_1((a1 + 32));
    }

    v26 = *(a1 + 48);
    v27 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5803 userInfo:0];
    (*(v26 + 16))(v26, v27);

    v25 = 0;
    goto LABEL_40;
  }

LABEL_41:
  v28 = *MEMORY[0x277D85DE8];
}

void __45__RPAppAudioCaptureManager_resumeWithConfig___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2 && __RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5833 userInfo:0];
    v5 = 136446722;
    v6 = "[RPAppAudioCaptureManager resumeWithConfig:]_block_invoke";
    v7 = 1024;
    v8 = 385;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Error: %@", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  audioDispatchQueue = self->_audioDispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__RPAppAudioCaptureManager_stop__block_invoke;
  block[3] = &unk_278B61B70;
  block[4] = self;
  dispatch_sync(audioDispatchQueue, block);
}

void __32__RPAppAudioCaptureManager_stop__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v14 = "[RPAppAudioCaptureManager stop]_block_invoke";
    v15 = 1024;
    v16 = 392;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d ", buf, 0x12u);
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  if (v5)
  {
    if (*(v5 + 152))
    {
      *(v5 + 152) = 0;
      if (AudioQueueStop(**(*(a1 + 32) + 32), 1u))
      {
        if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __32__RPAppAudioCaptureManager_stop__block_invoke_cold_1();
        }
      }

      else
      {
        if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v14 = "[RPAppAudioCaptureManager stop]_block_invoke";
          v15 = 1024;
          v16 = 407;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Audio Queue successfully stopped", buf, 0x12u);
        }

        v6 = 48;
        v7 = MEMORY[0x277D86220];
        do
        {
          v8 = AudioQueueFreeBuffer(**(*(a1 + 32) + 32), *(*(*(a1 + 32) + 32) + v6));
          if (v8)
          {
            v9 = __RPLogLevel > 2;
          }

          else
          {
            v9 = 1;
          }

          if (!v9)
          {
            v10 = v8;
            if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v14 = "[RPAppAudioCaptureManager stop]_block_invoke";
              v15 = 1024;
              v16 = 414;
              v17 = 1024;
              v18 = v10;
              _os_log_error_impl(&dword_23A863000, v7, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d AudioQueueFreeBuffer error: %i", buf, 0x18u);
            }
          }

          v6 += 8;
        }

        while (v6 != 128);
        if (AudioQueueDispose(**(*(a1 + 32) + 32), 1u))
        {
          if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            __32__RPAppAudioCaptureManager_stop__block_invoke_cold_2();
          }
        }

        else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v14 = "[RPAppAudioCaptureManager stop]_block_invoke";
          v15 = 1024;
          v16 = 420;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Audio Queue has been disposed", buf, 0x12u);
        }
      }
    }

    AudioQueueRemovePropertyListener(**(*(a1 + 32) + 32), 0x6171726Eu, isRunningListenerCallback, *(a1 + 32));
    free(*(*(a1 + 32) + 32));
    *(*(a1 + 32) + 32) = 0;
    v4 = *(a1 + 32);
  }

  v11 = *(v4 + 48);
  *(v4 + 48) = 0;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)newAudioTapForAudioCaptureConfig:(id)a3
{
  var2 = a3.var2;
  v4 = *&a3.var0;
  v5 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:&self->_audioBasicDescription];
  if (!v5)
  {
    [(RPAppAudioCaptureManager *)&v13 newAudioTapForAudioCaptureConfig:?];
    goto LABEL_25;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v6 = [objc_alloc(MEMORY[0x277CBA618]) initScreenSharingTapWithFormat:v5];
      goto LABEL_18;
    }

    if (v4 == 3)
    {
      v7 = __RPLogLevel;
      if (__RPLogLevel > 1)
      {
        goto LABEL_12;
      }

      [RPAppAudioCaptureManager newAudioTapForAudioCaptureConfig:];
    }
  }

  else
  {
    if (!v4)
    {
      v6 = [objc_alloc(MEMORY[0x277CBA618]) initProcessTapWithFormat:v5 PID:HIDWORD(v4)];
      goto LABEL_18;
    }

    if (v4 == 1)
    {
      if (!var2)
      {
        [(RPAppAudioCaptureManager *)&v13 newAudioTapForAudioCaptureConfig:?];
        goto LABEL_25;
      }

      v6 = [objc_alloc(MEMORY[0x277CBA618]) initPreSpatialSceneIdentifierTapWithFormat:v5 sceneIdentifier:var2];
LABEL_18:
      v8 = v6;
      if (v6)
      {
        v10 = [objc_alloc(MEMORY[0x277CBA610]) initWithTapDescription:v6];
        v11 = v10;
        if (v10)
        {
          [v10 setScreenSharingHost:1];
          v9 = v11;
          goto LABEL_21;
        }

        [(RPAppAudioCaptureManager *)v8 newAudioTapForAudioCaptureConfig:&v14];
LABEL_25:
        v8 = v13;
        v9 = v14;
        goto LABEL_21;
      }
    }
  }

  v7 = __RPLogLevel;
LABEL_12:
  if (v7 <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPAppAudioCaptureManager newAudioTapForAudioCaptureConfig:];
  }

  v8 = 0;
  v9 = 0;
LABEL_21:

  return v9;
}

- (void)handleStartAudioQueueFailed:didFailHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__RPAppAudioCaptureManager_startWithConfig_outputHandler_didStartHandler___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void __32__RPAppAudioCaptureManager_stop__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void __32__RPAppAudioCaptureManager_stop__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)newAudioTapForAudioCaptureConfig:(void *)a1 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  }

  *a2 = 0;
  *a1 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

- (void)newAudioTapForAudioCaptureConfig:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v7, v8, v9, v10, v11, 0x12u);
  }

  *a3 = 0;
  *a2 = a1;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)newAudioTapForAudioCaptureConfig:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    v2 = 474;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Returning nil audio tap for none type", v1, 0x12u);
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)newAudioTapForAudioCaptureConfig:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)newAudioTapForAudioCaptureConfig:(void *)a1 .cold.5(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  }

  *a2 = 0;
  *a1 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

@end