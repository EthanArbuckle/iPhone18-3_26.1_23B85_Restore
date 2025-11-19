@interface FlickerResourceArbiterClientDelegate
- (FlickerResourceArbiterClientDelegate)init;
- (void)cleanup;
- (void)releaseResourceAccess;
- (void)requestResourceAccess;
- (void)resourceAccessResult:(BOOL)a3;
- (void)resourceAccessRevoked;
@end

@implementation FlickerResourceArbiterClientDelegate

- (FlickerResourceArbiterClientDelegate)init
{
  v5.receiver = self;
  v5.super_class = FlickerResourceArbiterClientDelegate;
  v2 = [(FlickerResourceArbiterClientDelegate *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D81FB0]) initWithID:1];
    v2->_arbiterClient = v3;
    [(ResourceArbiterClient *)v3 setDelegate:v2];
    v2->_flickerContext = 0;
  }

  return v2;
}

- (void)cleanup
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)requestResourceAccess
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)releaseResourceAccess
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)resourceAccessResult:(BOOL)a3
{
  v41 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    v5 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = 1;
      _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "FlickerDetector: ArbiterClient resource access granted=%d\n\n", buf, 8u);
    }

    flickerContext = self->_flickerContext;
    if (flickerContext)
    {
      pthread_mutex_lock(&flickerContext->var23);
      if (flickerContext->var22 || (p_var2 = &flickerContext->var2, flickerContext->var2))
      {
LABEL_9:
        pthread_mutex_unlock(&flickerContext->var23);
        return;
      }

      *&inDesc.componentType = xmmword_2249BC1E0;
      inDesc.componentFlagsMask = 0;
      Next = AudioComponentFindNext(0, &inDesc);
      if (!Next)
      {
        v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
        {
          v11 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [FlickerResourceArbiterClientDelegate resourceAccessResult:];
        }

        goto LABEL_43;
      }

      if (AudioComponentInstanceNew(Next, &flickerContext->var2))
      {
        v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
        {
          v10 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [FlickerResourceArbiterClientDelegate resourceAccessResult:];
        }

        goto LABEL_43;
      }

      bzero(buf, 0x28uLL);
      var0 = flickerContext->var0;
      *buf = **(flickerContext->var0 + 1);
      if (*var0 == 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v39 = v13;
      v40 = 32;
      v37 = 1;
      v38 = 4 * v13;
      v36 = 4 * v13;
      v35 = 0x96C70636DLL;
      if (AudioUnitSetProperty(flickerContext->var2, 8u, 2u, 1u, buf, 0x28u))
      {
        v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
        {
          v14 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [FlickerResourceArbiterClientDelegate resourceAccessResult:];
        }

        goto LABEL_43;
      }

      if (AudioUnitSetProperty(flickerContext->var2, 0xEu, 0, 0, &flickerContext->var4, 4u))
      {
        v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
        {
          v15 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [FlickerResourceArbiterClientDelegate resourceAccessResult:];
        }

        goto LABEL_43;
      }

      ioDataSize = 4;
      if (AudioUnitGetProperty(*p_var2, 0xEu, 0, 0, &flickerContext->var4, &ioDataSize))
      {
        v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
        {
          v16 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [FlickerResourceArbiterClientDelegate resourceAccessResult:];
        }

        goto LABEL_43;
      }

      inData[1] = flickerContext;
      v19 = *flickerContext->var0;
      if (v19 <= 5)
      {
        if (v19 > 2)
        {
          goto LABEL_65;
        }

        if (v19 != 1)
        {
          if (v19 == 2)
          {
            v20 = inputCallbackForPenrose;
            goto LABEL_66;
          }

          goto LABEL_65;
        }

        v20 = inputCallbackForHawking;
LABEL_66:
        inData[0] = v20;
        if (AudioUnitSetProperty(*p_var2, 0x7D5u, 0, 0, inData, 0x10u))
        {
          v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
          {
            v21 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v21;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [FlickerResourceArbiterClientDelegate resourceAccessResult:];
          }
        }

        else
        {
          v22 = AudioUnitInitialize(*p_var2);
          if (v22)
          {
            v23 = v22;
            v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
            {
              v24 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v24;
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              [FlickerResourceArbiterClientDelegate resourceAccessResult:];
            }

            if (v23 == 1852794999)
            {
              v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
              {
                v25 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v25;
              }

              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                [FlickerResourceArbiterClientDelegate resourceAccessResult:];
              }
            }
          }

          else
          {
            if (AudioUnitSetProperty(flickerContext->var2, 0x7E6u, 1u, 1u, &flickerContext->var19, 4u))
            {
              v26 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
              {
                v26 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v26;
              }

              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                [FlickerResourceArbiterClientDelegate resourceAccessResult:];
              }
            }

            ioDataSize = 40;
            if (AudioUnitGetProperty(flickerContext->var2, 8u, 2u, 1u, &flickerContext->var3, &ioDataSize))
            {
              v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
              {
                v27 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v27;
              }

              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                [FlickerResourceArbiterClientDelegate resourceAccessResult:];
              }
            }

            else if (!memcmp(&flickerContext->var3, buf, 0x28uLL))
            {
              if ((flickerContext->var3.mFormatFlags & 1) == 0 || flickerContext->var3.mBytesPerFrame == 4 * v39)
              {
                if (AllocateFlickerDetectorBuffers(flickerContext))
                {
                  v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
                  {
                    v29 = os_log_create("com.apple.isp", "general");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v29;
                  }

                  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    [FlickerResourceArbiterClientDelegate resourceAccessResult:];
                  }
                }

                goto LABEL_47;
              }

              v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
              {
                v30 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v30;
              }

              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                [FlickerResourceArbiterClientDelegate resourceAccessResult:];
              }
            }

            else
            {
              v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
              {
                v28 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v28;
              }

              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                [FlickerResourceArbiterClientDelegate resourceAccessResult:];
              }
            }
          }
        }

LABEL_43:
        DisposeAudioCaptureSession(flickerContext);
        v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
        {
          v17 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v17;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [FlickerResourceArbiterClientDelegate resourceAccessResult:];
        }

LABEL_47:
        if (*p_var2 && AudioOutputUnitStart(*p_var2))
        {
          v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
          {
            v18 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [FlickerResourceArbiterClientDelegate resourceAccessResult:];
          }
        }

        goto LABEL_9;
      }

      if (v19 <= 7)
      {
        if (v19 == 6)
        {
          v20 = inputCallbackForGrimaldi;
          goto LABEL_66;
        }
      }

      else if (v19 != 8)
      {
        if (v19 != 9)
        {
          if (v19 == 10)
          {
            v20 = inputCallbackForGrimaldiHighFreq;
            goto LABEL_66;
          }

          goto LABEL_65;
        }

        v20 = inputCallbackForGrimaldi_iPad;
        goto LABEL_66;
      }

LABEL_65:
      v20 = inputCallbackForPenrose2;
      goto LABEL_66;
    }

    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
    {
      v8 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FlickerResourceArbiterClientDelegate resourceAccessResult:];
    }
  }
}

- (void)resourceAccessRevoked
{
  v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v3 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2247DB000, v3, OS_LOG_TYPE_DEFAULT, "FlickerDetector: ArbiterClient resource access revoked \n\n", v4, 2u);
  }

  StopAudioCaptureSession(self->_flickerContext);
  [(FlickerResourceArbiterClientDelegate *)self releaseResourceAccess];
}

- (void)resourceAccessResult:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)resourceAccessResult:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)resourceAccessResult:.cold.3()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)resourceAccessResult:.cold.4()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)resourceAccessResult:.cold.5()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)resourceAccessResult:.cold.6()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)resourceAccessResult:.cold.7()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)resourceAccessResult:.cold.8()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)resourceAccessResult:.cold.9()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)resourceAccessResult:.cold.10()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)resourceAccessResult:.cold.13()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)resourceAccessResult:.cold.15()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)resourceAccessResult:.cold.16()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end