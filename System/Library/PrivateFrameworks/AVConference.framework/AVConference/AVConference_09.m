void VideoPacketBuffer_SetRoundTripTime(uint64_t a1, double a2)
{
  if (a1)
  {
    pthread_mutex_lock((a1 + 400));
    VCNACKGenerator_UpdateRTT(*(a1 + 155136), a2);
    *(a1 + 496) = a2;

    pthread_mutex_unlock((a1 + 400));
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoPacketBuffer_SetRoundTripTime_cold_1();
    }
  }
}

char *_VideoPacketBuffer_CreateNewOnePacket(uint64_t a1, uint64_t a2, int a3, __int16 a4, __int16 a5, __int16 a6)
{
  v12 = VCMemoryPool_Alloc(*(a1 + 155072));
  if (!v12)
  {
    _VideoPacketBuffer_CreateNewOnePacket_cold_2();
LABEL_12:
    VCMemoryPool_Free(*(a1 + 155072), v12);
    return 0;
  }

  if ((VideoPacketBuffer_CreateBlockBufferForPacket(a1, v12) & 1) == 0)
  {
    _VideoPacketBuffer_CreateNewOnePacket_cold_1();
    goto LABEL_12;
  }

  v13 = a4 - a6;
  if (a3)
  {
    v14 = -2080374784;
  }

  else
  {
    v14 = 0x80000000;
  }

  if (a3)
  {
    v13 = 0;
  }

  *v12 = v13 + a5;
  *(v12 + 1) = *(a2 + 20);
  *(v12 + 6) = 1;
  *(v12 + 8) = v14 & 0xFC00FFFF | ((a4 & 0x3FF) << 16) | *(a2 + 106) & 0x10;
  *(v12 + 17) = *(a2 + 104);
  *(v12 + 20) = 2;
  *(v12 + 8) = xmmword_1DBD47EC0;
  *(v12 + 13) = 0;
  return v12;
}

uint64_t VideoPacketBuffer_CreateBlockBufferForPacket(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = (a2 + 120);
  v5 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x5DCuLL, *(a1 + 155088), 0, 0, 0x5DCuLL, 1u, (a2 + 120));
  if (v5)
  {
    v6 = v5;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      *buf = 136316162;
      v15 = v7;
      v16 = 2080;
      v17 = "VideoPacketBuffer_CreateBlockBufferForPacket";
      v18 = 1024;
      v19 = 562;
      v20 = 2048;
      v21 = a1;
      v22 = 1024;
      v23 = v6;
      _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Failed to create block buffer with error %d", buf, 0x2Cu);
    }

    return 0;
  }

  else
  {
    DataPointer = CMBlockBufferGetDataPointer(*(a2 + 120), 0, 0, 0, (a2 + 136));
    if (DataPointer)
    {
      v11 = DataPointer;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v15 = v12;
          v16 = 2080;
          v17 = "VideoPacketBuffer_CreateBlockBufferForPacket";
          v18 = 1024;
          v19 = 568;
          v20 = 2048;
          v21 = a1;
          v22 = 1024;
          v23 = v11;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Failed to get data pointer with error %d", buf, 0x2Cu);
        }
      }

      result = *v4;
      if (*v4)
      {
        CFRelease(result);
        result = 0;
        *v4 = 0;
      }
    }

    else
    {
      *(a2 + 128) = CMBlockBufferGetDataLength(*(a2 + 120));
      return 1;
    }
  }

  return result;
}

void _VideoPacketBuffer_FreeFrameFromBuffer(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  v4 = *a2;
  if (*a2)
  {
    if (v4 == a3)
    {
LABEL_6:
      *a2 = v4[14];
      _VideoPacketBuffer_FreeFrame(a1, a3);
      if (a4)
      {
        --*a4;
      }
    }

    else
    {
      while (1)
      {
        v6 = v4;
        v4 = v4[14];
        if (!v4)
        {
          break;
        }

        if (v4 == a3)
        {
          a2 = v6 + 14;
          goto LABEL_6;
        }
      }
    }
  }
}

void _VCVideoPacketBuffer_FinalizeGOBLengthAdjustement(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (*a1)
  {
    if (*(a1 + 16) == 4 || (sourceBytes = bswap32(*(a1 + 16) - 4), CMBlockBufferReplaceDataBytes(&sourceBytes, v2, *(a1 + 8), 4uLL), (v2 = *a1) != 0))
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

BOOL _VideoReceiver_HandlePrecedingLossOnBaseLayerOfTemporalStream(uint64_t a1, uint64_t a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v4 = a1 + 151552;
  if (*(a1 + 155120) != 1)
  {
    return 1;
  }

  v7 = *(a2 + 150);
  v8 = *(a1 + 155124);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v8 == v7 || a3 != 0)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a2 + 5);
        v14 = *(a2 + 16);
        v15 = *(a2 + 150);
        v26 = 136316930;
        v27 = v11;
        v28 = 2080;
        v29 = "_VideoReceiver_HandlePrecedingLossOnBaseLayerOfTemporalStream";
        v30 = 1024;
        v31 = 2721;
        v32 = 2048;
        v33 = a1;
        v34 = 1024;
        v35 = a3;
        v36 = 1024;
        v37 = v13;
        v38 = 1024;
        v39 = v14;
        v40 = 1024;
        v41 = v15;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Exiting base layer preceding loss state. isRefreshFrame=%d isBaseLayerStream=%d timestamp=%u frameSequenceNumber=%u", &v26, 0x3Eu);
      }
    }

    *(v4 + 3568) = 0;
    return 1;
  }

  if (ErrorLogLevelForModule < 8)
  {
    return 0;
  }

  v17 = VRTraceErrorLogLevelToCSTR();
  v18 = *MEMORY[0x1E6986650];
  v19 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    result = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v20 = *(a2 + 5);
      v21 = *(a2 + 16);
      v22 = *(a2 + 150);
      v26 = 136316930;
      v27 = v17;
      v28 = 2080;
      v29 = "_VideoReceiver_HandlePrecedingLossOnBaseLayerOfTemporalStream";
      v30 = 1024;
      v31 = 2724;
      v32 = 2048;
      v33 = a1;
      v34 = 1024;
      v35 = 0;
      v36 = 1024;
      v37 = v20;
      v38 = 1024;
      v39 = v21;
      v40 = 1024;
      v41 = v22;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] VPB is still in preceding loss state, dropping this frame. isRefreshFrame=%d isBaseLayerStream=%d timestamp=%u frameSequenceNumber=%u", &v26, 0x3Eu);
      return 0;
    }
  }

  else
  {
    result = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v23 = *(a2 + 5);
      v24 = *(a2 + 16);
      v25 = *(a2 + 150);
      v26 = 136316930;
      v27 = v17;
      v28 = 2080;
      v29 = "_VideoReceiver_HandlePrecedingLossOnBaseLayerOfTemporalStream";
      v30 = 1024;
      v31 = 2724;
      v32 = 2048;
      v33 = a1;
      v34 = 1024;
      v35 = 0;
      v36 = 1024;
      v37 = v23;
      v38 = 1024;
      v39 = v24;
      v40 = 1024;
      v41 = v25;
      _os_log_debug_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] VPB is still in preceding loss state, dropping this frame. isRefreshFrame=%d isBaseLayerStream=%d timestamp=%u frameSequenceNumber=%u", &v26, 0x3Eu);
      return 0;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_36_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Cu);
}

void OUTLINED_FUNCTION_37_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x2Cu);
}

uint64_t VideoDecoder_Create(uint64_t *a1, uint64_t a2)
{
  v2 = 2147745793;
  if (a2)
  {
    if (*(a2 + 24) || *(a2 + 32))
    {
      v5 = malloc_type_calloc(1uLL, 0x100uLL, 0x10F00404103C51FuLL);
      if (v5)
      {
        v6 = v5;
        pthread_mutex_init((v5 + 112), 0);
        *v6 = *(a2 + 8);
        *(v6 + 2) = VCReporting_GetDynamicReportingModuleID();
        *(v6 + 3) = 0;
        if (*(a2 + 16) == 1)
        {
          *(v6 + 5) |= 4u;
        }

        if (*(a2 + 17) == 1)
        {
          *(v6 + 5) |= 1u;
        }

        v6[224] = *(a2 + 64);
        *(v6 + 184) = *(a2 + 24);
        *(v6 + 25) = *(a2 + 40);
        *(v6 + 53) = *(a2 + 48);
        *(v6 + 27) = *(a2 + 56);
        *(v6 + 232) = *(a2 + 72);
        *(v6 + 31) = *(a2 + 88);
        Handle = CreateHandle();
        *a1 = Handle;
        if (Handle == 0xFFFFFFFFLL)
        {
          free(v6);
          return 2147745797;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 2147745795;
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoDecoder_Create_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoDecoder_Create_cold_2();
    }
  }

  return v2;
}

uint64_t VideoDecoder_Destroy()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2147745794;
  }

  v1 = v0;
  CheckOutHandleDebug();
  v2 = *(v1 + 40);
  if (v2)
  {
    free(v2);
  }

  VideoDecoder_DecompClose(v1);
  pthread_mutex_destroy((v1 + 112));
  free(v1);
  return 0;
}

void VideoDecoder_DecompClose(uint64_t a1)
{
  if (*(a1 + 12))
  {
    VCPDecompressionSessionWaitForAsynchronousFrames();
    v2 = *(a1 + 248);
    if (v2)
    {
      v2(*(a1 + 232));
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 24) = 0;
    FigFormatDescriptionRelease();
    *(a1 + 32) = 0;
    *(a1 + 12) = 0;
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    VCMemoryPool_Destroy(v4);
    *(a1 + 176) = 0;
  }
}

void VideoDecoder_SetDecoderSpecification(__CFDictionary *a1)
{
  v2 = VCFeatureFlagManager_UseAvconferencedOniOSSpecficFeatures();
  if (a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = VCAudioSessionCMS_SessionReference();
      if (v3)
      {
        v4 = *MEMORY[0x1E69841E8];

        CFDictionarySetValue(a1, v4, v3);
      }
    }
  }
}

uint64_t VideoDecoder_NewFormat_InitDecoder(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v131 = *MEMORY[0x1E69E9840];
  v3 = 2147745793;
  if (!a2 || !a3)
  {
    return v3;
  }

  if (*(a2 + 8) == 100)
  {
    v7 = 1752589105;
  }

  else
  {
    v7 = 1635148593;
  }

  v8 = CheckInHandleDebug();
  if (!v8)
  {
    return 2147745794;
  }

  v9 = v8;
  pthread_mutex_lock((v8 + 112));
  VideoDecoder_DecompClose(v9);
  v10 = *(a2 + 12);
  *(v9 + 16) = 1;
  *(v9 + 56) = *(a2 + 20);
  v11 = CFPreferencesCopyAppValue(@"FaceTimeDecoder", @"com.apple.VideoConference");
  if (v11)
  {
    v12 = v11;
    if (CFStringCompare(v11, @"hw", 0) == kCFCompareEqualTo)
    {
      *(v9 + 16) = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = "VideoDecoder_NewFormat_InitDecoder";
          v118 = 1024;
          v119 = 691;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d 'com.apple.VideoConference FaceTimeDecoder hw' forcing hardware decode", buf, 0x1Cu);
        }
      }
    }

    if (CFStringCompare(v12, @"sw", 0) == kCFCompareEqualTo)
    {
      *(v9 + 16) = 2;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = "VideoDecoder_NewFormat_InitDecoder";
          v118 = 1024;
          v119 = 695;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d 'com.apple.VideoConference FaceTimeDecoder sw' forcing software decode", buf, 0x1Cu);
        }
      }
    }

    CFRelease(v12);
  }

  if ((v10 & 1) == 0)
  {
    v21 = *(v9 + 40);
    if (v21)
    {
      free(v21);
      *(v9 + 40) = 0;
    }

    v22 = *a3;
    v23 = **(a3 + 8);
    v24 = malloc_type_calloc(1uLL, v23, 0xDBE01490uLL);
    *(v9 + 40) = v24;
    if (v24)
    {
      memcpy(v24, v22, v23);
      *(v9 + 48) = v23;
    }

    goto LABEL_32;
  }

  if (!v10)
  {
LABEL_32:
    v110 = 0xAAAAAAAAAAAAAAAALL;
    v111 = 0xAAAAAAAAAAAAAAAALL;
    formatDescriptionOut = 0;
    v25 = *MEMORY[0x1E695E480];
    v26 = *(v9 + 40);
    v27 = *(v9 + 48);
    SystemEncoding = CFStringGetSystemEncoding();
    if (CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionData(v25, v26, v27, SystemEncoding, 0, &formatDescriptionOut))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoDecoder_NewFormat_InitDecoder_cold_4();
        }
      }
    }

    else
    {
      v29 = *(v9 + 32);
      if (v29)
      {
        CFRelease(v29);
      }

      *(v9 + 32) = formatDescriptionOut;
    }

    Dimensions = CMVideoFormatDescriptionGetDimensions(*(v9 + 32));
    *(v9 + 60) = Dimensions;
    v31 = *(a3 + 16);
    if (v31)
    {
      *v31 = Dimensions.width;
    }

    v32 = *(a3 + 24);
    if (v32)
    {
      *v32 = Dimensions.height;
    }

    *(v9 + 68) = CMFormatDescriptionGetMediaSubType(*(v9 + 32));
    Extensions = CMFormatDescriptionGetExtensions(*(v9 + 32));
    if (Extensions)
    {
      v34 = Extensions;
      v35 = *MEMORY[0x1E6965D88];
      if (!CFDictionaryContainsKey(Extensions, *MEMORY[0x1E6965D88]))
      {
        *buf = 0xAAAAAAAAAAAAAAAALL;
        MutableCopy = CFDictionaryCreateMutableCopy(v25, 0, v34);
        CFDictionarySetValue(MutableCopy, v35, *MEMORY[0x1E6965DB8]);
        CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F50]);
        CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FD0]);
        if (CMVideoFormatDescriptionCreate(v25, *(v9 + 68), *(v9 + 60), *(v9 + 64), MutableCopy, buf))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              VideoDecoder_NewFormat_InitDecoder_cold_5();
            }
          }
        }

        else
        {
          FigFormatDescriptionRelease();
          *(v9 + 32) = *buf;
        }

        CFRelease(MutableCopy);
      }
    }

LABEL_61:
    if (*(v9 + 16) == 2)
    {
      *(v9 + 68) = 1718908515;
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_69;
      }

      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }

      *buf = 136315650;
      *&buf[4] = v38;
      *&buf[12] = 2080;
      *&buf[14] = "VideoDecoder_NewFormat_InitDecoder";
      v118 = 1024;
      v119 = 849;
      v40 = " [%s] %s:%d Using Software Video Decoder";
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_69;
      }

      v41 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_69;
      }

      *buf = 136315650;
      *&buf[4] = v41;
      *&buf[12] = 2080;
      *&buf[14] = "VideoDecoder_NewFormat_InitDecoder";
      v118 = 1024;
      v119 = 851;
      v40 = " [%s] %s:%d Using Hardware Video Decoder";
    }

    _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, v40, buf, 0x1Cu);
LABEL_69:
    v42 = *MEMORY[0x1E695E480];
    v43 = MEMORY[0x1E695E9D8];
    v44 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v46 = CFDictionaryCreate(0, 0, 0, 0, v43, v44);
    if (v46)
    {
      v47 = v46;
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D8], v46);
      CFRelease(v47);
    }

    v48 = CFDictionaryCreateMutable(v42, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v49 = VCFeatureFlagManager_UseOutOfProcessVideoDecoding();
    v50 = MEMORY[0x1E695E4D0];
    if (!v49)
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v52 = MEMORY[0x1E6983A78];
      if (ErrorLogLevelForModule <= 6)
      {
        v56 = *MEMORY[0x1E6983A78];
      }

      else
      {
        v53 = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x1E6986650];
        v55 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
        v56 = *v52;
        if (v55)
        {
          *buf = 136315906;
          *&buf[4] = v53;
          *&buf[12] = 2080;
          *&buf[14] = "VideoDecoder_NewFormat_InitDecoder";
          v118 = 1024;
          v119 = 866;
          v120 = 2112;
          *v121 = v56;
          _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Adding kVTDecompressionSessionOption_AllowClientProcessDecode=%@ to decoderSpecification", buf, 0x26u);
        }

        v50 = MEMORY[0x1E695E4D0];
      }

      CFDictionarySetValue(v48, v56, *v50);
    }

    if (*(v9 + 212))
    {
      v57 = CFNumberCreate(v42, kCFNumberIntType, (v9 + 212));
      CFDictionarySetValue(v48, @"DecPixelFormat", v57);
      if (v57)
      {
        CFRelease(v57);
      }
    }

    if (*(v9 + 224) == 1)
    {
      CFDictionarySetValue(v48, @"EncodeMVHEVC", *v50);
    }

    VideoDecoder_SetDecoderSpecification(v48);
    v58 = CFStringCreateWithCString(0, *a2, 0);
    CFDictionarySetValue(v48, @"NegotiationDetails", v58);
    if (v58)
    {
      CFRelease(v58);
    }

    FigCFDictionarySetInt64();
    v110 = VideoDecoder_VTDecompressionCallback;
    v111 = a1;
    v59 = VCPDecompressionSessionCreate();
    if (v48)
    {
      CFRelease(v48);
    }

    if (*(v9 + 224) == 1)
    {
      VCPDecompressionSessionSetMultiImageCallback();
      *buf = 0;
      *&buf[8] = 0;
      if (FigVideoFormatDescriptionGetMVHEVCVideoLayerIDs())
      {
        v60 = CFNumberCreate(v42, kCFNumberSInt64Type, buf);
        v61 = CFNumberCreate(v42, kCFNumberSInt64Type, &buf[8]);
        v62 = CFArrayCreateMutable(v42, 2, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(v62, v60);
        CFArrayAppendValue(v62, v61);
        VCPDecompressionSessionSetProperty();
        if (v60)
        {
          CFRelease(v60);
        }

        if (v61)
        {
          CFRelease(v61);
        }

        if (v62)
        {
          CFRelease(v62);
        }
      }

      else
      {
        VideoDecoder_NewFormat_InitDecoder_cold_6();
      }
    }

    v63 = VRTraceGetErrorLogLevelForModule();
    if (v59)
    {
      if (v63 >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoDecoder_NewFormat_InitDecoder_cold_7();
        }
      }

      VideoUtil_PrintFormatDesc(*(v9 + 32));
      CFRelease(Mutable);
      *(v9 + 12) = 0;
      v3 = -v59 | 0xA0040000;
    }

    else
    {
      if (v63 >= 7)
      {
        v64 = VRTraceErrorLogLevelToCSTR();
        v65 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v66 = *(v9 + 24);
          v67 = *(v9 + 60);
          v68 = *(v9 + 64);
          v69 = FourccToCStr(*(v9 + 68));
          v70 = *a2;
          v71 = *(v9 + 200);
          *buf = 136317442;
          *&buf[4] = v64;
          *&buf[12] = 2080;
          *&buf[14] = "VideoDecoder_NewFormat_InitDecoder";
          v118 = 1024;
          v119 = 912;
          v120 = 2048;
          *v121 = v9;
          *&v121[8] = 2048;
          *&v121[10] = v66;
          *&v121[18] = 1024;
          v122 = v67;
          v123 = 1024;
          v124 = v68;
          v125 = 2080;
          v126 = v69;
          v127 = 2080;
          v128 = v70;
          v129 = 1024;
          v130 = v71;
          _os_log_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_RX][FLS] Created decoder=%p session=%p width=%d height=%d codec=%s featureListString=%s videoReceiverHandle=0x%x", buf, 0x56u);
        }
      }

      v72 = *(v9 + 240);
      if (v72)
      {
        v72(*(v9 + 232), *(v9 + 24));
      }

      v73 = CFNumberCreate(0, kCFNumberIntType, (a2 + 24));
      if (v73)
      {
        v74 = v73;
        VCPDecompressionSessionSetProperty();
        CFRelease(v74);
      }

      VCPDecompressionSessionSetProperty();
      _VideoDecoder_ApplyMLSettings(v9, *(a2 + 16));
      *&buf[8] = 0;
      *buf = 0;
      snprintf(buf, 0xCuLL, "%d", *(a2 + 8));
      reportingLog();
      CFRelease(Mutable);
      v3 = 0;
      *(v9 + 12) = 1;
    }

    *(v9 + 176) = VCMemoryPool_CreateTyped(0x40uLL, 0x1000040A2E3E7D0);
    goto LABEL_109;
  }

  v17 = *(v9 + 40);
  if (v17)
  {
    free(v17);
    *(v9 + 40) = 0;
  }

  v18 = **(a3 + 8) + 64;
  *(v9 + 48) = v18;
  v19 = (v9 + 48);
  v20 = malloc_type_calloc(v18, 1uLL, 0x100004077774924uLL);
  *(v9 + 40) = v20;
  if (v20)
  {
    v3 = 2147745796;
    if (gksVCPParseParameterSetsAndCreateConfigurationRecord() || (v37 = *v19) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoDecoder_NewFormat_InitDecoder_cold_2();
        }
      }

      pthread_mutex_unlock((v9 + 112));
      goto LABEL_110;
    }

    v110 = 0xAAAAAAAAAAAAAAAALL;
    v111 = 0xAAAAAAAAAAAAAAAALL;
    formatDescriptionOut = 0;
    *(v9 + 68) = v7;
    if (ReadCodecConfigParams(*(a2 + 8), v7, *(v9 + 40), v37, (v9 + 60), (v9 + 64), 0, 0, 0) << 16)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoDecoder_NewFormat_InitDecoder_cold_1();
        }
      }

LABEL_109:
      pthread_mutex_unlock((v9 + 112));
LABEL_110:
      CheckOutHandleDebug();
      return v3;
    }

    v76 = *(a2 + 8);
    if (v76 == 100)
    {
      if (*(v9 + 224) != 1 || (v77 = *(a2 + 40)) == 0)
      {
        v77 = **(a3 + 8);
      }

      DeserializedHEVCParameterSetsFromInputBuffer = VideoUtil_CreateDeserializedHEVCParameterSetsFromInputBuffer(*a3, v77);
      goto LABEL_172;
    }

    v115 = 1;
    v116 = 1;
    v114 = 1;
    v79 = ReadCodecConfigParams(v76, *(v9 + 68), *(v9 + 40), *(v9 + 48), (v9 + 60), (v9 + 64), &v116, &v115, &v114);
    if (v79 << 16)
    {
      v80 = v79;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v81 = VRTraceErrorLogLevelToCSTR();
        v82 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = v81;
          *&buf[12] = 2080;
          *&buf[14] = "recreateFormatDescription";
          v118 = 1024;
          v119 = 443;
          v120 = 1024;
          *v121 = 443;
          *&v121[4] = 2048;
          *&v121[6] = v9;
          *&v121[14] = 1024;
          *&v121[16] = v80;
          _os_log_error_impl(&dword_1DB56E000, v82, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoDecoder.c:%d: (%p) ReadCodecConfigParams: error: %X", buf, 0x32u);
        }
      }

      goto LABEL_171;
    }

    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"forceHDR10ColorInfo", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      if (AppBooleanValue)
      {
        v115 = 16;
        v116 = 9;
        v114 = 9;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v84 = VRTraceErrorLogLevelToCSTR();
          v85 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v84;
            *&buf[12] = 2080;
            *&buf[14] = "recreateFormatDescription";
            v118 = 1024;
            v119 = 454;
            v86 = " [%s] %s:%d ITU_R_2020 HDR color settings applied on the decoder";
LABEL_129:
            _os_log_impl(&dword_1DB56E000, v85, OS_LOG_TYPE_DEFAULT, v86, buf, 0x1Cu);
          }
        }
      }

      else
      {
        v115 = 16;
        v116 = 12;
        v114 = 1;
        if (VRTraceGetErrorLogLevelForModule() > 6)
        {
          v87 = VRTraceErrorLogLevelToCSTR();
          v85 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = "recreateFormatDescription";
            v118 = 1024;
            v119 = 459;
            v86 = " [%s] %s:%d P3_D65 HDR color settings applied on the decoder";
            goto LABEL_129;
          }
        }
      }
    }

    v88 = 0;
    if (v116 < 6)
    {
      if (v116 == 1)
      {
        v89 = MEMORY[0x1E6965DB8];
      }

      else
      {
        if (v116 != 5)
        {
          goto LABEL_142;
        }

        v89 = MEMORY[0x1E6965DA0];
      }
    }

    else
    {
      switch(v116)
      {
        case 6:
          v89 = MEMORY[0x1E6965DD8];
          break;
        case 9:
          v89 = MEMORY[0x1E695FFC0];
          break;
        case 12:
          v89 = MEMORY[0x1E695FFD0];
          break;
        default:
          goto LABEL_142;
      }
    }

    v88 = *v89;
LABEL_142:
    v90 = 0;
    if (v115 <= 5)
    {
      if (v115 != 1 && v115 != 2)
      {
LABEL_153:
        v92 = 0;
        if (v114 > 6)
        {
          if (v114 == 7)
          {
            v93 = MEMORY[0x1E6965FF0];
            goto LABEL_162;
          }

          if (v114 == 9)
          {
            v93 = MEMORY[0x1E6960188];
            goto LABEL_162;
          }
        }

        else
        {
          if (v114 == 1)
          {
            v93 = MEMORY[0x1E6965FD0];
            goto LABEL_162;
          }

          if (v114 == 6)
          {
            v93 = MEMORY[0x1E6965FC8];
LABEL_162:
            v92 = *v93;
          }
        }

        v112 = 0xAAAAAAAAAAAAAAAALL;
        v94 = *MEMORY[0x1E695E480];
        DeserializedHEVCParameterSetsFromInputBuffer = CFDataCreate(*MEMORY[0x1E695E480], *(v9 + 40), *(v9 + 48));
        if (!DeserializedHEVCParameterSetsFromInputBuffer)
        {
          goto LABEL_172;
        }

        v95 = DeserializedHEVCParameterSetsFromInputBuffer;
        TypeID = CFDataGetTypeID();
        if (TypeID == CFGetTypeID(v95))
        {
          value = v90;
          v97 = CFDictionaryCreateMutable(v94, 1, 0, 0);
          CFDictionarySetValue(v97, @"avcC", v95);
          v98 = CFDictionaryCreateMutable(v94, 0, 0, 0);
          CFDictionarySetValue(v98, *MEMORY[0x1E6965D88], v88);
          CFDictionarySetValue(v98, *MEMORY[0x1E6965F30], value);
          CFDictionarySetValue(v98, *MEMORY[0x1E6965F98], v92);
          CFDictionarySetValue(v98, *MEMORY[0x1E69600A0], v97);
          v99 = CMVideoFormatDescriptionCreate(v94, *(v9 + 68), *(v9 + 60), *(v9 + 64), v98, &v112);
          if (v99)
          {
            v100 = v99;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v101 = VRTraceErrorLogLevelToCSTR();
              v102 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316418;
                *&buf[4] = v101;
                *&buf[12] = 2080;
                *&buf[14] = "recreateFormatDescription";
                v118 = 1024;
                v119 = 537;
                v120 = 1024;
                *v121 = 537;
                *&v121[4] = 2048;
                *&v121[6] = v9;
                *&v121[14] = 1024;
                *&v121[16] = v100;
                _os_log_error_impl(&dword_1DB56E000, v102, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoDecoder.c:%d: (%p) FigVideoFormatDescriptionCreate: error: %X", buf, 0x32u);
              }
            }
          }

          CFRelease(v95);
          CFRelease(v97);
          CFRelease(v98);
          DeserializedHEVCParameterSetsFromInputBuffer = v112;
          goto LABEL_172;
        }

        CFRelease(v95);
LABEL_171:
        DeserializedHEVCParameterSetsFromInputBuffer = 0;
LABEL_172:
        formatDescriptionOut = DeserializedHEVCParameterSetsFromInputBuffer;
        if (DeserializedHEVCParameterSetsFromInputBuffer)
        {
          FigFormatDescriptionRelease();
          *(v9 + 32) = formatDescriptionOut;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v103 = VRTraceErrorLogLevelToCSTR();
            v104 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v105 = FourccToCStr(*(v9 + 68));
              v106 = *(v9 + 60);
              v107 = *(v9 + 64);
              *buf = 136316418;
              *&buf[4] = v103;
              *&buf[12] = 2080;
              *&buf[14] = "VideoDecoder_NewFormat_InitDecoder";
              v118 = 1024;
              v119 = 783;
              v120 = 2080;
              *v121 = v105;
              *&v121[8] = 1024;
              *&v121[10] = v106;
              *&v121[14] = 1024;
              *&v121[16] = v107;
              _os_log_impl(&dword_1DB56E000, v104, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Recreated format description: %s, %d, %d", buf, 0x32u);
            }
          }

          **(a3 + 16) = *(v9 + 60);
          **(a3 + 24) = *(v9 + 64);
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (v115 == 16)
      {
        v91 = MEMORY[0x1E6960158];
        goto LABEL_152;
      }

      if (v115 == 7)
      {
        v91 = MEMORY[0x1E6965F68];
        goto LABEL_152;
      }

      if (v115 != 6)
      {
        goto LABEL_153;
      }
    }

    v91 = MEMORY[0x1E6965F50];
LABEL_152:
    v90 = *v91;
    goto LABEL_153;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoDecoder_NewFormat_InitDecoder_cold_3();
    }
  }

  pthread_mutex_unlock((v9 + 112));
  CheckOutHandleDebug();
  return 2147745795;
}

void VideoDecoder_VTDecompressionCallback(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, void *a5, CMTime *a6)
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = CheckInHandleDebug();
  if (!v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoDecoder_VTDecompressionCallback_cold_2();
      }
    }

    return;
  }

  v11 = v10;
  if (a5)
  {
    CFRetain(a5);
    TypeID = CVPixelBufferGetTypeID();
    if (TypeID == CFGetTypeID(a5) && a2[42] == 1)
    {
      v22 = CVPixelBufferRetain(a5);
      v23 = 1;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    CFRelease(a5);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v57 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      v25 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *a2;
          v27 = a2[42];
          v28 = *(a2 + 12);
          v29 = *(a2 + 2);
          v30 = HIDWORD(*(a2 + 2));
          LODWORD(buf.value) = 136316930;
          *(&buf.value + 4) = v57;
          LOWORD(buf.flags) = 2080;
          *(&buf.flags + 2) = "VideoDecoder_VTDecompressionCallback";
          HIWORD(buf.epoch) = 1024;
          v59 = 292;
          v60 = 1024;
          v61 = v26;
          v62 = 1024;
          v63 = v27;
          v64 = 1024;
          *v65 = v28;
          *&v65[4] = 2048;
          *&v65[6] = v29;
          *&v65[14] = 2048;
          *&v65[16] = v30;
          _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Decoder returned frame with RTPTimestamp=%u, showFrame=%d, streamID=%d, decoding-order=%llu, tileID=%llu", &buf, 0x42u);
        }
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        VideoDecoder_VTDecompressionCallback_cold_1();
      }
    }

    *(v11 + 208) = 0;
    if (v23)
    {
      if (CVBufferGetAttachment(a5, @"HIDTimeStamp", 0))
      {
        FigCFNumberGetUInt64();
      }

      v32 = 1;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v12 = *(v10 + 56);
    if (v12 == 1)
    {
      if (a2)
      {
        v13 = a2[42];
        v14 = a2[42] ? 3 : 5;
        if (v14 <= VRTraceGetErrorLogLevelForModule())
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          v17 = *MEMORY[0x1E6986650];
          if (v13)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = *(a2 + 12);
              v19 = a2[42];
              v20 = *a2;
              LODWORD(buf.value) = 136316418;
              *(&buf.value + 4) = v15;
              LOWORD(buf.flags) = 2080;
              *(&buf.flags + 2) = "VideoDecoder_VTDecompressionCallback";
              HIWORD(buf.epoch) = 1024;
              v59 = 297;
              v60 = 1024;
              v61 = v18;
              v62 = 1024;
              v63 = v19;
              v64 = 1024;
              *v65 = v20;
              _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCPDecompressionSession: Decoder returned a NULL frame for streamID=%d, showFrame=%d, RTPTimestamp=%u", &buf, 0x2Eu);
            }
          }

          else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v43 = *(a2 + 12);
            v44 = a2[42];
            v45 = *a2;
            LODWORD(buf.value) = 136316418;
            *(&buf.value + 4) = v15;
            LOWORD(buf.flags) = 2080;
            *(&buf.flags + 2) = "VideoDecoder_VTDecompressionCallback";
            HIWORD(buf.epoch) = 1024;
            v59 = 297;
            v60 = 1024;
            v61 = v43;
            v62 = 1024;
            v63 = v44;
            v64 = 1024;
            *v65 = v45;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCPDecompressionSession: Decoder returned a NULL frame for streamID=%d, showFrame=%d, RTPTimestamp=%u", &buf, 0x2Eu);
          }
        }
      }

      goto LABEL_25;
    }

    v31 = *(v10 + 208) + 1;
    *(v10 + 208) = v31;
    if (v31 < v12)
    {
LABEL_25:
      v32 = 0;
      v22 = 0;
      goto LABEL_40;
    }

    if (a2)
    {
      v33 = a2[42];
      v34 = a2[42] ? 3 : 5;
      if (v34 <= VRTraceGetErrorLogLevelForModule())
      {
        v46 = VRTraceErrorLogLevelToCSTR();
        v47 = *MEMORY[0x1E6986650];
        v48 = *MEMORY[0x1E6986650];
        if (v33)
        {
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = a2[42];
            v50 = *a2;
            v51 = *(a2 + 2);
            v52 = HIDWORD(*(a2 + 2));
            LODWORD(buf.value) = 136316674;
            *(&buf.value + 4) = v46;
            LOWORD(buf.flags) = 2080;
            *(&buf.flags + 2) = "VideoDecoder_VTDecompressionCallback";
            HIWORD(buf.epoch) = 1024;
            v59 = 305;
            v60 = 1024;
            v61 = v49;
            v62 = 1024;
            v63 = v50;
            v64 = 2048;
            *v65 = v51;
            *&v65[8] = 2048;
            *&v65[10] = v52;
            _os_log_error_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCPDecompressionSession: Decoder returned a NULL frame with showFrame=%d, RTPTimestamp=%u, decoding-order=%llu, tileID=%llu", &buf, 0x3Cu);
          }
        }

        else if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v53 = a2[42];
          v54 = *a2;
          v55 = *(a2 + 2);
          v56 = HIDWORD(*(a2 + 2));
          LODWORD(buf.value) = 136316674;
          *(&buf.value + 4) = v46;
          LOWORD(buf.flags) = 2080;
          *(&buf.flags + 2) = "VideoDecoder_VTDecompressionCallback";
          HIWORD(buf.epoch) = 1024;
          v59 = 305;
          v60 = 1024;
          v61 = v53;
          v62 = 1024;
          v63 = v54;
          v64 = 2048;
          *v65 = v55;
          *&v65[8] = 2048;
          *&v65[10] = v56;
          _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCPDecompressionSession: Decoder returned a NULL frame with showFrame=%d, RTPTimestamp=%u, decoding-order=%llu, tileID=%llu", &buf, 0x3Cu);
        }
      }
    }

    v32 = 0;
    v22 = 0;
    *(v11 + 208) = 0;
  }

LABEL_40:
  buf = *a6;
  CMTimeGetSeconds(&buf);
  kdebug_trace();
  if (a3)
  {
    _VideoDecoder_ReportStatus(*v11, a3);
    if (a3 == -17694)
    {
      a2[44] = 1;
    }

    a2[43] = a2[49] ^ 1;
    a2[42] = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v38 = *(a2 + 12);
        v39 = a2[43];
        v40 = a2[49];
        LODWORD(buf.value) = 136316674;
        *(&buf.value + 4) = v36;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "VideoDecoder_VTDecompressionCallback";
        HIWORD(buf.epoch) = 1024;
        v59 = 330;
        v60 = 1024;
        v61 = a3;
        v62 = 1024;
        v63 = v38;
        v64 = 1024;
        *v65 = v39;
        *&v65[4] = 1024;
        *&v65[6] = v40;
        _os_log_error_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failure status=%d for streamId=%d, requestIntra=%d, isNonBaseLayerOfTemporalStream=%d", &buf, 0x34u);
      }
    }
  }

  else if (v32 && a2[42] == 1)
  {
    _VideoDecoder_SetAttachmentDictionary(v11, a2, 0, v22);
    if (a2[45] == 1)
    {
      v35 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, a2 + 46);
      CVBufferSetAttachment(v22, @"FramePriority", v35, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v35);
    }

    goto LABEL_51;
  }

  a2[42] = 0;
LABEL_51:
  v41 = *(v11 + 184);
  v42 = *(v11 + 200);
  buf = *a6;
  v41(v42, v22, a2, &buf);
  if (!_VideoDecoder_ShouldSkipReleasingDecodingArgs(v22))
  {
    VCMemoryPool_Free(*(v11 + 176), a2);
  }

  CVPixelBufferRelease(v22);
  CheckOutHandleDebug();
}

void _VideoDecoder_ApplyMLSettings(uint64_t a1, char a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E4C0];
  v5 = *MEMORY[0x1E695E4D0];
  if ((a2 & 0xA) != 0)
  {
    v6 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v6 = *MEMORY[0x1E695E4C0];
  }

  VCPDecompressionSessionSetProperty();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316162;
      v17 = v7;
      v18 = 2080;
      v19 = "_VideoDecoder_ApplyMLSettings";
      v20 = 1024;
      v21 = 224;
      v22 = 2048;
      v23 = a1;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] kVCPDecompressionPropertyKey_MLEnhance=%@", &v16, 0x30u);
    }
  }

  if ((a2 & 4) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  VCPDecompressionSessionSetProperty();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316162;
      v17 = v10;
      v18 = 2080;
      v19 = "_VideoDecoder_ApplyMLSettings";
      v20 = 1024;
      v21 = 228;
      v22 = 2048;
      v23 = a1;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] kVCPDecompressionPropertyKey_MLVideoEnhance=%@", &v16, 0x30u);
    }
  }

  if ((a2 & 8) != 0)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (v6)
  {
    v13 = v12 == v5;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    VCPDecompressionSessionSetProperty();
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136316162;
        v17 = v14;
        v18 = 2080;
        v19 = "_VideoDecoder_ApplyMLSettings";
        v20 = 1024;
        v21 = 233;
        v22 = 2048;
        v23 = a1;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] kVCPDecompressionPropertyKey_Disable270ML4xScaler=%@", &v16, 0x30u);
      }
    }
  }
}

uint64_t VideoDecoder_IsFormatCompatible_SPSPPS(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, _DWORD *a6, _DWORD *a7)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v11 = 2147745824;
  v12 = CheckInHandleDebug();
  if (!v12)
  {
    return 2147745794;
  }

  v13 = v12;
  if (*(v12 + 72) == a5 && *(v12 + 40) && *(v12 + 48))
  {
    v20[0] = *a4 + 64;
    MEMORY[0x1EEE9AC00](v12);
    v16 = (v15 + 79) & 0xFFFFFFFFFFFFFFF0;
    v17 = v20 - v16;
    if (v14)
    {
      memset(v20 - v16, 170, v14);
    }

    if (!gksVCPParseParameterSetsAndCreateConfigurationRecord())
    {
      v18 = *(v13 + 48);
      if (v18 == v20[0] && !memcmp(*(v13 + 40), v17, v18))
      {
        v11 = 0;
        *a6 = *(v13 + 60);
        *a7 = *(v13 + 64);
      }
    }
  }

  CheckOutHandleDebug();
  return v11;
}

uint64_t VideoDecoder_IsFormatCompatible_ImgDesc(uint64_t a1, const void *a2, int a3, int a4)
{
  v7 = 2147745824;
  v8 = CheckInHandleDebug();
  if (!v8)
  {
    return 2147745794;
  }

  v9 = v8;
  if (*(v8 + 72) == a4)
  {
    v10 = *(v8 + 40);
    if (v10)
    {
      if (a2)
      {
        v11 = *(v9 + 48);
        if (v11)
        {
          v12 = v11 == a3;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          if (!memcmp(v10, a2, v11))
          {
            v7 = 0;
          }

          else
          {
            v7 = 2147745824;
          }
        }
      }
    }
  }

  CheckOutHandleDebug();
  return v7;
}

uint64_t VideoDecoder_DecodeFrame(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, BOOL *a5, void *a6, __int128 *a7)
{
  destination[1] = *MEMORY[0x1E69E9840];
  value_low = 2147745793;
  cf = 0;
  v13 = CheckInHandleDebug();
  if (!v13)
  {
    return 2147745794;
  }

  if (*(v13 + 12))
  {
    v66 = a4;
    v67 = a5;
    v14 = VCMemoryPool_Alloc(*(v13 + 176));
    v15 = a7[3];
    v17 = *a7;
    v16 = a7[1];
    *(v14 + 2) = a7[2];
    *(v14 + 3) = v15;
    *v14 = v17;
    *(v14 + 1) = v16;
    valuePtr = 0;
    v18 = CMGetAttachment(a6, @"rtpTimestsamp", 0);
    if (v18)
    {
      CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr);
      *v14 = valuePtr;
    }

    v70 = 0;
    v19 = CMGetAttachment(a6, @"subFrameIndentifier", 0);
    if (v19)
    {
      CFNumberGetValue(v19, kCFNumberSInt64Type, &v70);
      *(v14 + 2) = v70;
    }

    v69 = 0;
    v20 = CMGetAttachment(a6, @"InterleavedStreamIndex", 0);
    if (v20)
    {
      CFNumberGetValue(v20, kCFNumberIntType, &v69);
      *(v14 + 28) = v69;
    }

    v68 = 0;
    v21 = CMGetAttachment(a6, @"FramePriority", 0);
    if (v21)
    {
      CFNumberGetValue(v21, kCFNumberSInt8Type, &v68);
      v14[45] = 1;
      v14[46] = v68;
    }

    kdebug_trace();
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      v24 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *v14;
          v26 = v14[42];
          v27 = *(v14 + 12);
          v28 = *(v14 + 28);
          v29 = HIDWORD(*(v14 + 2));
          v30 = *(v14 + 2);
          v31 = v14[48];
          LODWORD(buf.duration.value) = 136317442;
          *(&buf.duration.value + 4) = v22;
          LOWORD(buf.duration.flags) = 2080;
          *(&buf.duration.flags + 2) = "VideoDecoder_DecodeFrame";
          HIWORD(buf.duration.epoch) = 1024;
          LODWORD(buf.presentationTimeStamp.value) = 1154;
          WORD2(buf.presentationTimeStamp.value) = 1024;
          *(&buf.presentationTimeStamp.value + 6) = v25;
          HIWORD(buf.presentationTimeStamp.timescale) = 1024;
          buf.presentationTimeStamp.flags = v26;
          LOWORD(buf.presentationTimeStamp.epoch) = 1024;
          *(&buf.presentationTimeStamp.epoch + 2) = v27;
          HIWORD(buf.presentationTimeStamp.epoch) = 1024;
          LODWORD(buf.decodeTimeStamp.value) = v28;
          WORD2(buf.decodeTimeStamp.value) = 2048;
          *(&buf.decodeTimeStamp.value + 6) = v29;
          HIWORD(buf.decodeTimeStamp.flags) = 2048;
          buf.decodeTimeStamp.epoch = v30;
          v76 = 1024;
          v77 = v31;
          _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Decode frame with RTPTimestamp=%u, showFrame %d, streamID %d, interleavedStreamIndex=%u, tileID %llu, decoding order %llu, canStopVideoStall=%d", &buf, 0x4Eu);
        }
      }

      else if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        VideoDecoder_DecodeFrame_cold_1();
      }
    }

    if (!FigSampleBufferGetDecryptor())
    {
      goto LABEL_57;
    }

    destination[0] = 0xAAAAAAAAAAAAAAAALL;
    blockBufferOut = 0;
    DataBuffer = CMSampleBufferGetDataBuffer(a6);
    if (!DataBuffer)
    {
      VideoDecoder_DecodeFrame_cold_13();
      value_low = LODWORD(buf.duration.value);
      goto LABEL_54;
    }

    v33 = DataBuffer;
    if (CMBlockBufferCopyDataBytes(DataBuffer, 0, 8uLL, destination))
    {
      VideoDecoder_DecodeFrame_cold_2();
    }

    else
    {
      if (HIDWORD(destination[0]) != -1547639150)
      {
        value_low = 0;
        goto LABEL_54;
      }

      DataLength = CMBlockBufferGetDataLength(v33);
      if (DataLength)
      {
        v35 = DataLength;
        v36 = bswap32(destination[0]);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v65 = VRTraceErrorLogLevelToCSTR();
          v37 = *MEMORY[0x1E6986650];
          v38 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.duration.value) = 136315906;
              *(&buf.duration.value + 4) = v65;
              LOWORD(buf.duration.flags) = 2080;
              *(&buf.duration.flags + 2) = "_VideoDecoder_RemoveImgDesc_CompressedFrameBuffer";
              HIWORD(buf.duration.epoch) = 1024;
              LODWORD(buf.presentationTimeStamp.value) = 1076;
              WORD2(buf.presentationTimeStamp.value) = 2048;
              *(&buf.presentationTimeStamp.value + 6) = v35;
              _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Removing ImgDesc from sample buffer data of size=%zu", &buf, 0x26u);
            }
          }

          else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            VideoDecoder_DecodeFrame_cold_3();
          }
        }

        if (v35 > v36 + 4)
        {
          sampleSizeArray = v35 - (v36 + 4);
          if (CMBlockBufferCreateWithBufferReference(0, v33, v36 + 4, sampleSizeArray, 0, &blockBufferOut))
          {
            VideoDecoder_DecodeFrame_cold_5();
            goto LABEL_54;
          }

          FormatDescription = CMSampleBufferGetFormatDescription(a6);
          if (!FormatDescription)
          {
            VideoDecoder_DecodeFrame_cold_11();
            goto LABEL_54;
          }

          v40 = FormatDescription;
          buf.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
          *&v41 = 0xAAAAAAAAAAAAAAAALL;
          *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&buf.presentationTimeStamp.timescale = v41;
          *&buf.decodeTimeStamp.value = v41;
          *&buf.duration.value = v41;
          *&buf.duration.epoch = v41;
          if (CMSampleBufferGetSampleTimingInfo(a6, 0, &buf))
          {
            VideoDecoder_DecodeFrame_cold_6();
          }

          else
          {
            if (!CMSampleBufferCreate(0, blockBufferOut, 1u, 0, 0, v40, 1, 1, &buf, 1, &sampleSizeArray, &cf))
            {
              v42 = cf;
              if (!cf)
              {
                goto LABEL_54;
              }

              SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a6, 1u);
              if (SampleAttachmentsArray)
              {
                v44 = SampleAttachmentsArray;
                if (!CFArrayGetCount(SampleAttachmentsArray))
                {
LABEL_41:
                  v48 = *MEMORY[0x1E695E480];
                  v49 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], a6, 1u);
                  if (v49)
                  {
                    v50 = v49;
                    CMSetAttachments(v42, v49, 1u);
                    CFRelease(v50);
                  }

                  v51 = CMCopyDictionaryOfAttachments(v48, a6, 0);
                  if (v51)
                  {
                    v52 = v51;
                    CMSetAttachments(v42, v51, 0);
                    CFRelease(v52);
                  }

                  if (FigSampleBufferGetDecryptor())
                  {
                    FigSampleBufferSetDecryptor();
                  }

                  if (VRTraceGetErrorLogLevelForModule() >= 8)
                  {
                    v53 = VRTraceErrorLogLevelToCSTR();
                    v54 = *MEMORY[0x1E6986650];
                    v55 = *MEMORY[0x1E6986650];
                    if (*MEMORY[0x1E6986640] == 1)
                    {
                      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                      {
                        *v78 = 136316162;
                        v79 = v53;
                        v80 = 2080;
                        v81 = "_VideoDecoder_RemoveImgDesc_CompressedFrameBuffer";
                        v82 = 1024;
                        v83 = 1101;
                        v84 = 2048;
                        v85 = sampleSizeArray;
                        v86 = 2112;
                        v87 = cf;
                        _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Input compressed frame buffer (%zu) bytes replaced with %@", v78, 0x30u);
                      }
                    }

                    else if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                    {
                      *v78 = 136316162;
                      v79 = v53;
                      v80 = 2080;
                      v81 = "_VideoDecoder_RemoveImgDesc_CompressedFrameBuffer";
                      v82 = 1024;
                      v83 = 1101;
                      v84 = 2048;
                      v85 = sampleSizeArray;
                      v86 = 2112;
                      v87 = cf;
                      _os_log_debug_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Input compressed frame buffer (%zu) bytes replaced with %@", v78, 0x30u);
                    }
                  }

                  value_low = 0;
                  goto LABEL_54;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(v44, 0);
                v46 = CMSampleBufferGetSampleAttachmentsArray(v42, 1u);
                if (v46)
                {
                  v47 = CFArrayGetValueAtIndex(v46, 0);
                  CFDictionaryApplyFunction(ValueAtIndex, _VideoDecoder_CopyDictionary, v47);
                  goto LABEL_41;
                }

                VideoDecoder_DecodeFrame_cold_8();
              }

              else
              {
                VideoDecoder_DecodeFrame_cold_9();
              }

              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  VideoDecoder_DecodeFrame_cold_10();
                }
              }

LABEL_54:
              if (blockBufferOut)
              {
                CFRelease(blockBufferOut);
              }

              if (value_low)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    VideoDecoder_DecodeFrame_cold_14();
                  }
                }

                goto LABEL_74;
              }

LABEL_57:
              v56 = VCPDecompressionSessionDecodeFrame();
              v57 = v56;
              v58 = v56 << 16;
              v59 = v56;
              if (v56 << 16 <= -587792385)
              {
                if (v58 != -1159593984 && v58 != -846004224)
                {
                  goto LABEL_68;
                }
              }

              else if (v58 != -587792384)
              {
                if (!v58)
                {
LABEL_71:
                  if (v57)
                  {
                    value_low = -v59 | 0xA0040000;
                  }

                  else
                  {
                    value_low = 0;
                  }

                  goto LABEL_74;
                }

                if (v58 != -6553600)
                {
LABEL_68:
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v61 = VRTraceErrorLogLevelToCSTR();
                    v62 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      v64 = *(v14 + 12);
                      LODWORD(buf.duration.value) = 136316418;
                      *(&buf.duration.value + 4) = v61;
                      LOWORD(buf.duration.flags) = 2080;
                      *(&buf.duration.flags + 2) = "VideoDecoder_DecodeFrame";
                      HIWORD(buf.duration.epoch) = 1024;
                      LODWORD(buf.presentationTimeStamp.value) = 1177;
                      WORD2(buf.presentationTimeStamp.value) = 1024;
                      *(&buf.presentationTimeStamp.value + 6) = 1177;
                      HIWORD(buf.presentationTimeStamp.timescale) = 1024;
                      buf.presentationTimeStamp.flags = v59;
                      LOWORD(buf.presentationTimeStamp.epoch) = 1024;
                      *(&buf.presentationTimeStamp.epoch + 2) = v64;
                      _os_log_error_impl(&dword_1DB56E000, v62, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoDecoder.c:%d: VCPDecompressionSessionDecodeFrame: error: %d for stream %d", &buf, 0x2Eu);
                    }
                  }

                  goto LABEL_71;
                }
              }

              *a3 = 1;
              *v66 = 1;
              *v67 = v58 == -1159593984;
              goto LABEL_68;
            }

            VideoDecoder_DecodeFrame_cold_7();
          }

          value_low = *v78;
          goto LABEL_54;
        }

        VideoDecoder_DecodeFrame_cold_4(&buf);
      }

      else
      {
        VideoDecoder_DecodeFrame_cold_12();
      }
    }

    value_low = LODWORD(buf.duration.value);
    goto LABEL_54;
  }

  value_low = 2147745809;
LABEL_74:
  if (cf)
  {
    CFRelease(cf);
  }

  CheckOutHandleDebug();
  return value_low;
}

uint64_t VideoDecoder_GetFormatDescription(uint64_t a1, void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147745794;
  }

  *a2 = *(v3 + 32);
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoDecoder_GetBufferPool()
{
  if (!CheckInHandleDebug())
  {
    return 2147745794;
  }

  VCPDecompressionSessionCopyProperty();
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoDecoder_SetShouldEnableFaceZoom()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2147745794;
  }

  v1 = v0;
  pthread_mutex_lock((v0 + 112));
  if (*(v1 + 24))
  {
    VCPDecompressionSessionSetProperty();
  }

  pthread_mutex_unlock((v1 + 112));
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoDecoder_SetShouldEnableMLEnhance(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147745794;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 112));
  if (*(v4 + 24))
  {
    _VideoDecoder_ApplyMLSettings(v4, a2);
  }

  pthread_mutex_unlock((v4 + 112));
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoDecoder_IsLastSubframe(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = 2147745796;
  v8 = CheckInHandleDebug();
  if (v8)
  {
    if (a4)
    {
      *a4 = 0;
      if (a2)
      {
        if (*(v8 + 24))
        {
          v9 = VCPDecompressionSessionCheckIfLastSubFrame();
          if (v9 << 16)
          {
            v10 = v9;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v11 = VRTraceErrorLogLevelToCSTR();
              v12 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v14 = 136316162;
                v15 = v11;
                v16 = 2080;
                v17 = "VideoDecoder_IsLastSubframe";
                v18 = 1024;
                v19 = 1280;
                v20 = 1024;
                v21 = v10;
                v22 = 1024;
                v23 = a3;
                _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error: %d calling VCPDecompressionSessionCheckIfLastSubFrame for tileIndex %u", &v14, 0x28u);
              }
            }
          }

          else
          {
            v7 = 0;
          }

          goto LABEL_11;
        }

        VideoDecoder_IsLastSubframe_cold_1(a3, &v14);
      }

      else
      {
        VideoDecoder_IsLastSubframe_cold_2(a3, &v14);
      }
    }

    else
    {
      VideoDecoder_IsLastSubframe_cold_3(a3, &v14);
    }

    v7 = v14;
LABEL_11:
    CheckOutHandleDebug();
    return v7;
  }

  return 2147745794;
}

uint64_t _VideoDecoder_ReportStatus(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 170, 12);
  __sprintf_chk(v3, 0, 0xCuLL, "%d", a2);
  return reportingLog();
}

void _VideoDecoder_SetAttachmentDictionary(uint64_t a1, uint64_t a2, const void *a3, __CVBuffer *a4)
{
  v8 = *MEMORY[0x1E695E480];
  v9 = MEMORY[0x1E695E9D8];
  v10 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = *(a1 + 60);
  v12 = *(a1 + 64);
  v14 = CFDictionaryCreateMutable(v8, 0, v9, v10);
  v15 = v14;
  if (v14)
  {
    setIntValue(v14, @"VCPixelBufferLeftX", 0);
    setIntValue(v15, @"VCPixelBufferTopY", 0);
    setIntValue(v15, @"VCPixelBufferWidth", v13);
    setIntValue(v15, @"VCPixelBufferHeight", v12);
  }

  v16 = CFStringCreateWithFormat(v8, 0, @"%d", *(a2 + 32));
  CFDictionarySetValue(Mutable, v16, v15);
  if (a3)
  {
    CMSetAttachment(a3, @"VCPixelBufferAttributes", Mutable, 1u);
  }

  if (a4)
  {
    CVBufferSetAttachment(a4, @"VCPixelBufferAttributes", Mutable, kCVAttachmentMode_ShouldPropagate);
  }

  CFRelease(v16);
  CFRelease(v15);

  CFRelease(Mutable);
}

void setIntValue(__CFDictionary *a1, const void *a2, int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void VideoDecoder_VTDecompressionMultiImageCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4, opaqueCMSampleBuffer *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = CheckInHandleDebug();
  if (v8)
  {
    v9 = v8;
    v10 = *MEMORY[0x1E6960C70];
    v11 = *(MEMORY[0x1E6960C70] + 8);
    v12 = *(MEMORY[0x1E6960C70] + 16);
    if (!a2)
    {
      VideoDecoder_VTDecompressionMultiImageCallback_cold_5(v10, v12, &v32, &v33, &time, v11);
      value = v32;
      epoch = v33;
      v15 = *&time.value;
      goto LABEL_18;
    }

    v13 = *(a2 + 42);
    *(a2 + 42) = 0;
    if (a5)
    {
      CMSampleBufferGetPresentationTimeStamp(&time, a5);
      value = time.value;
      v15 = *&time.timescale;
      epoch = time.epoch;
      FormatDescription = CMSampleBufferGetFormatDescription(a5);
      if (FormatDescription)
      {
        if (CMFormatDescriptionGetMediaType(FormatDescription) == 1952606066)
        {
          if (!a3)
          {
            *(a2 + 42) = v13;
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v18 = VRTraceErrorLogLevelToCSTR();
              v19 = *MEMORY[0x1E6986650];
              v20 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = *a2;
                  v22 = *(a2 + 42);
                  LODWORD(time.value) = 136316162;
                  *(&time.value + 4) = v18;
                  LOWORD(time.flags) = 2080;
                  *(&time.flags + 2) = "VideoDecoder_VTDecompressionMultiImageCallback";
                  HIWORD(time.epoch) = 1024;
                  v35 = 182;
                  v36 = 1024;
                  v37 = v21;
                  v38 = 1024;
                  v39 = v22;
                  _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Decoder returned frame with RTPTimestamp=%u, showFrame %d", &time, 0x28u);
                }
              }

              else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                v25 = *a2;
                v26 = *(a2 + 42);
                LODWORD(time.value) = 136316162;
                *(&time.value + 4) = v18;
                LOWORD(time.flags) = 2080;
                *(&time.flags + 2) = "VideoDecoder_VTDecompressionMultiImageCallback";
                HIWORD(time.epoch) = 1024;
                v35 = 182;
                v36 = 1024;
                v37 = v25;
                v38 = 1024;
                v39 = v26;
                _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Decoder returned frame with RTPTimestamp=%u, showFrame %d", &time, 0x28u);
              }
            }

            *(v9 + 208) = 0;
            _VideoDecoder_SetAttachmentDictionary(v9, a2, a5, 0);
            goto LABEL_17;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              VideoDecoder_VTDecompressionMultiImageCallback_cold_2();
            }
          }

          goto LABEL_33;
        }

        VideoDecoder_VTDecompressionMultiImageCallback_cold_1(value, epoch, &v32, &v33, &time, v15);
      }

      else
      {
        VideoDecoder_VTDecompressionMultiImageCallback_cold_3(value, epoch, &v32, &v33, &time, v15);
      }
    }

    else
    {
      VideoDecoder_VTDecompressionMultiImageCallback_cold_4(v10, v12, &v32, &v33, &time, v11);
    }

    value = v32;
    epoch = v33;
    v15 = *&time.value;
    if (!a3)
    {
LABEL_17:
      time.value = value;
      *&time.timescale = v15;
      time.epoch = epoch;
      CMTimeGetSeconds(&time);
      kdebug_trace();
LABEL_18:
      v23 = *(v9 + 192);
      if (v23)
      {
        v24 = *(v9 + 200);
        time.value = value;
        *&time.timescale = v15;
        time.epoch = epoch;
        v23(v24, a5, a2, &time);
      }

      if (a2)
      {
        VCMemoryPool_Free(*(v9 + 176), a2);
      }

      CheckOutHandleDebug();
      return;
    }

LABEL_33:
    _VideoDecoder_ReportStatus(*v9, a3);
    if (a3 == -17694)
    {
      *(a2 + 44) = 1;
    }

    *(a2 + 42) = 256;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v29 = *(a2 + 24);
        v30 = *(a2 + 43);
        v31 = *(a2 + 49);
        LODWORD(time.value) = 136316674;
        *(&time.value + 4) = v27;
        LOWORD(time.flags) = 2080;
        *(&time.flags + 2) = "VideoDecoder_VTDecompressionMultiImageCallback";
        HIWORD(time.epoch) = 1024;
        v35 = 195;
        v36 = 1024;
        v37 = a3;
        v38 = 1024;
        v39 = v29;
        v40 = 1024;
        v41 = v30;
        v42 = 1024;
        v43 = v31;
        _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failure status=%d for streamId=%d, requestIntra=%d, isNonBaseLayerOfTemporalStream=%d", &time, 0x34u);
      }
    }

    goto LABEL_17;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoDecoder_VTDecompressionMultiImageCallback_cold_6();
    }
  }
}

void OUTLINED_FUNCTION_9_11()
{
  *v2 = v5;
  *v1 = v4;
  *v0 = v3;
}

void OUTLINED_FUNCTION_14_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void _VCAnsweringMachine_PullAudioSamples(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  Timestamp = VCAudioBufferList_GetTimestamp(a2);
  v5 = a1 + 200;
  v6 = CMSimpleQueueDequeue(*(a1 + 200));
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = *(a1 + 208);
      if (v8)
      {
        CFRelease(v8);
      }

      *(a1 + 208) = *v7;
      *(a1 + 220) = v7[2];
      *(a1 + 296) = 1;
      free(v7);
      v7 = CMSimpleQueueDequeue(*v5);
    }

    while (v7);
  }

  v9 = *(a1 + 224);
  if (*(a1 + 208) && *(a1 + 216) >= *(a1 + 220) || ((v9 >> 3) & 1) != 0)
  {
    if ((v9 & 8) == 0)
    {
      *(a1 + 224) = v9 | 8;
      reportingGenericEvent();
    }

    v10 = 1;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      v13 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 296);
          *buf = 136316674;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = "_VCAnsweringMachine_ShouldInject";
          *&buf[22] = 1024;
          LODWORD(v32) = 125;
          WORD2(v32) = 1024;
          *(&v32 + 6) = 0;
          WORD5(v32) = 1024;
          HIDWORD(v32) = 0;
          v33 = 0x400000000000400;
          v34 = v14;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stop audio injection! shouldInject={BOOL}%d initialAnnouncementInjection={BOOL}%d subsequentAnnouncementInjection={BOOL}%d hasPendingAnnouncementAsset={BOOL}%d", buf, 0x34u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        _VCAnsweringMachine_PullAudioSamples_cold_1(v11, a1, v12);
      }
    }

    v10 = 0;
  }

  if (*(a1 + 208))
  {
    v15 = *(a1 + 216);
    if (v15 < *(a1 + 220))
    {
      *(a1 + 216) = v15 + 1;
    }
  }

  if (v10)
  {
    v30 = 0;
    v16 = *(a1 + 224);
    VCAudioInjector_InjectSamples(*(a1 + 208), a2, 0, &v30);
    v17 = v30;
    *(a1 + 224) |= v30;
    if (v16)
    {
      if (v17 && *(a1 + 296) == 1)
      {
        *(a1 + 296) = 0;
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_38;
        }

        v27 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        v28 = *(a1 + 296);
        *buf = 136315906;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = "_VCAnsweringMachine_HandleAudioInjection";
        *&buf[22] = 1024;
        LODWORD(v32) = 152;
        WORD2(v32) = 1024;
        *(&v32 + 6) = v28;
        v21 = " [%s] %s:%d Subsequent announcement complete. hasPendingAnnouncementAsset={BOOL}%d";
        goto LABEL_37;
      }
    }

    else if (v17)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_38;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      v20 = *(a1 + 296);
      *buf = 136315906;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = "_VCAnsweringMachine_HandleAudioInjection";
      *&buf[22] = 1024;
      LODWORD(v32) = 147;
      WORD2(v32) = 1024;
      *(&v32 + 6) = v20;
      v21 = " [%s] %s:%d Initial announcement complete. hasPendingAnnouncementAsset={BOOL}%d";
LABEL_37:
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0x22u);
LABEL_38:
      v29 = *(a1 + 176);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___VCAnsweringMachine_DispatchFinishAnnouncementNotice_block_invoke;
      *&v32 = &unk_1E85F37C8;
      LOBYTE(v34) = 1;
      *(&v32 + 1) = a1;
      v33 = 0;
      dispatch_async(v29, buf);
    }
  }

  else
  {
    SampleCount = VCAudioBufferList_GetSampleCount(a2);
    HostTime = VCAudioBufferList_GetHostTime(a2);
    VCAudioBufferList_AppendSilence(a2, Timestamp, SampleCount, HostTime);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      v26 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = "_VCAnsweringMachine_PullAudioSamples";
          *&buf[22] = 1024;
          LODWORD(v32) = 170;
          WORD2(v32) = 1024;
          *(&v32 + 6) = 0;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stopping injection and zero the buffer! shouldInject={BOOL}%d", buf, 0x22u);
        }
      }

      else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        _VCAnsweringMachine_PullAudioSamples_cold_2();
      }
    }
  }

  *(v5 + 28) = Timestamp;
  *(v5 + 32) = VCAudioBufferList_GetAveragePower(a2);
}

void _VCAnsweringMachine_PushAudioSamples(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  Timestamp = VCAudioBufferList_GetTimestamp(a2);
  *(a1 + 252) = Timestamp;
  v5 = *(a1 + 248);
  if ((*(a1 + 224) & 3) != 0 && (v5 & 0x10) == 0)
  {
    *(a1 + 248) = v5 | 0x10;
    VCAudioMachineLearningCoordinator_SetReadyForCaptioning(*(a1 + 240), 1);
    reportingGenericEvent();
    v5 = *(a1 + 248);
  }

  if ((v5 & 0x20) == 0 && (*(a1 + 224) & 5) != 0 && *(a1 + 264))
  {
    VCMediaRecorder_ClearHistoryBuffer(*(a1 + 264));
    *(a1 + 248) |= 0x20u;
    v7 = *(a1 + 252);
    v8 = *(a1 + 176);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___VCAnsweringMachine_StartMediaRecording_block_invoke;
    block[3] = &unk_1E85F5E60;
    block[4] = a1;
    v10 = vextq_s8(*(a1 + 272), *(a1 + 272), 8uLL);
    v11 = v7;
    dispatch_async(v8, block);
  }

  VCMediaRecorder_AddLocalAudioSampleBuffer(*(a1 + 264), a2, Timestamp);
  *(a1 + 256) = VCAudioBufferList_GetAveragePower(a2);
}

BOOL VCAudioDecoderList_GetDecoderSettings(uint64_t a1, int a2, int a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *a1;
    v9 = 1;
    v10 = *(a1 + 8);
    v11 = 1;
    while (*v8 != a2 || v8[1] != a3)
    {
      v11 = v9 < v7;
      v8 += 10;
      ++v9;
      if (!--v10)
      {
        goto LABEL_6;
      }
    }

    *a4 = v8;
  }

  else
  {
LABEL_6:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v15 = 136316418;
        v16 = v12;
        v17 = 2080;
        v18 = "VCAudioDecoderList_GetDecoderSettings";
        v19 = 1024;
        v20 = 25;
        v21 = 2048;
        v22 = a1;
        v23 = 1024;
        v24 = a2;
        v25 = 1024;
        v26 = a3;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Audio decoder (%p) received a packet with unknown payload=%d networkPayload=%d", &v15, 0x32u);
      }
    }

    return 0;
  }

  return v11;
}

void VCAudioDecoderList_Cleanup(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 8;
      v6 = MEMORY[0x1E6986650];
      do
      {
        if (*(*a1 + v5))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v7 = VRTraceErrorLogLevelToCSTR();
            v8 = *v6;
            if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
            {
              v9 = *(*a1 + v5);
              *buf = 136316418;
              v11 = v7;
              v12 = 2080;
              v13 = "VCAudioDecoderList_Cleanup";
              v14 = 1024;
              v15 = 33;
              v16 = 2048;
              v17 = a1;
              v18 = 2048;
              v19 = v9;
              v20 = 1024;
              v21 = v4;
              _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found existing audio receiver (%p) decoder (%p) at index %u. Release decoder.", buf, 0x36u);
            }
          }

          SoundDec_Destroy(*(*a1 + v5));
          v3 = *(a1 + 8);
        }

        ++v4;
        v5 += 40;
      }

      while (v4 < v3);
      v2 = *a1;
    }

    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

uint64_t VCAudioDecoderList_SetMagicCookieForPayload(uint64_t a1, int a2, int a3, void *a4, UInt32 a5)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8[0] = 0;
    result = VCAudioDecoderList_GetDecoderSettings(a1, a2, a3, v8);
    if (result)
    {
      return SoundDec_SetMagicCookie(*(v8[0] + 8), a4, a5);
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioDecoderList_SetMagicCookieForPayload_cold_1();
      }
    }

    return 56;
  }

  return result;
}

uint64_t VCAudioDecoderList_GetEVSHeaderFormat(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = *(a1 + 36);
    if (*a1 == 98 && a2 == 107 && (*(a1 + 17) & 1) != 0)
    {
      if (*(a1 + 16))
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    VCAudioDecoderList_GetEVSHeaderFormat_cold_1(&v4);
    return v4;
  }

  return result;
}

uint64_t VCAudioDecoderList_Setup(uint64_t a1, uint64_t *a2)
{
  v85 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v4 = *(a2 + 2);
  if (!v4)
  {
    v6 = 0;
    goto LABEL_49;
  }

  v5 = malloc_type_calloc(v4, 0x28uLL, 0x10200404FFF9C0CuLL);
  if (!v5)
  {
    v26 = 2150105091;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioDecoderList_Setup_cold_1();
      }
    }

    return v26;
  }

  v6 = v5;
  if (!*(a2 + 2))
  {
    goto LABEL_49;
  }

  v7 = 0;
  v8 = 0;
  v50 = 0;
  v51 = 0;
  do
  {
    v55 = 393219;
    v9 = *a2;
    v10 = (*a2 + v7);
    v11 = &v6[v7];
    v12 = *v10;
    *v11 = *v10;
    *(v11 + 8) = *(v10 + 5);
    v11[28] = *(v10 + 16);
    v11[36] = *(v10 + 25);
    *(v11 + 5) = *(v10 + 2);
    v13 = v12;
    if (v12 > 107)
    {
      if (v12 == 108)
      {
        if (*(v9 + v7 + 24))
        {
          v13 = 107;
        }

        else
        {
          v13 = 108;
        }
      }

      else if (v12 == 117)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v57 = v16;
            v58 = 2080;
            v59 = "VCAudioDecoderList_Setup";
            v60 = 1024;
            v61 = 105;
            _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skip creating decoder for DTMF", buf, 0x1Cu);
          }
        }

        v51 = &v6[v7];
        goto LABEL_41;
      }

      goto LABEL_24;
    }

    if (v12 != 13)
    {
      if (v12 == 98)
      {
        if (*(v9 + v7 + 17) == 1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v57 = v14;
              v58 = 2080;
              v59 = "VCAudioDecoderList_Setup";
              v60 = 1024;
              v61 = 118;
              _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Overriding AMR payload with EVS Decoder", buf, 0x1Cu);
            }
          }

          v13 = 107;
        }

        else
        {
          v13 = 98;
        }
      }

LABEL_24:
      v50 = &v6[v7];
    }

    v18 = &v6[v7];
    RTPPayloads_PayloadProperties(0, *(a2 + 16), (a2 + 2), *(*a2 + v7 + 28), v13, 0, &v6[v7 + 16], 0, &v55);
    v19 = *a2;
    v20 = *(*a2 + v7 + 32);
    if (!v20)
    {
      v20 = VCPayloadUtils_CodecSamplesPerFrameWithSampleRate(v13, *(v18 + 4));
      v19 = *a2;
    }

    v21 = *(v19 + v7 + 28);
    if (v21)
    {
      v22 = v20 / v21;
    }

    else
    {
      VCPayloadUtils_BlockSizeForPayload(v13, *(v18 + 4));
      v22 = v23;
      v19 = *a2;
    }

    v54 = 0xAAAAAAAAAAAAAAAALL;
    memset(&v53[16], 170, 32);
    *v53 = xmmword_1DBD48020;
    v24 = *(a2 + 2);
    *&v53[8] = *(a2 + 1);
    memset(v52, 0, sizeof(v52));
    *v53 = 0;
    *&v53[24] = v24;
    *&v53[40] = a2[6];
    LOBYTE(v54) = *(a2 + 68);
    *(&v54 + 1) = *(a2 + 69);
    SoundDec_FormatASBD(v55, v52, v20, *(a2 + 11), *(v19 + v7 + 12), v22);
    v25 = &v6[v7];
    v26 = SoundDec_Create(&v6[v7 + 8], v52);
    v83 = 0u;
    v84 = 0u;
    *__str = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    *v77 = 0u;
    v78 = 0u;
    FormatToCStr(v52, __str, 0x40uLL);
    FormatToCStr(&v53[8], v77, 0x40uLL);
    if ((v26 & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3 && (v47 = VRTraceErrorLogLevelToCSTR(), v48 = *MEMORY[0x1E6986650], os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
        v49 = *(a2 + 14);
        *buf = 136317954;
        v57 = v47;
        v58 = 2080;
        v59 = "VCAudioDecoderList_Setup";
        v60 = 1024;
        v61 = 138;
        v62 = 1024;
        *v63 = v26;
        *&v63[4] = 2048;
        *&v63[6] = a1;
        *&v63[14] = 1024;
        *&v63[16] = v54;
        *v64 = 2080;
        *&v64[2] = __str;
        *v65 = 1024;
        *&v65[2] = v13;
        *v66 = 2080;
        *&v66[2] = v77;
        v67 = 2048;
        *v68 = v22;
        *&v68[8] = 1024;
        *v69 = v20;
        *&v69[4] = 1024;
        *v70 = v49;
        _os_log_error_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_ERROR, " [%s] %s:%d SoundDec_Create failed(%08X) for audio receiver (%p). outOfProcess=%{BOOL}d encodedFormat=%s payload=%u internalFormat=%s codecSecondsPerFrame=%f, codecSamplesPerFrame=%u, internalSamplesPerFrame=%u", buf, 0x62u);
        if (v7)
        {
          goto LABEL_60;
        }
      }

      else
      {
        for (; v7; v7 -= 40)
        {
LABEL_60:
          SoundDec_Destroy(*&v6[v7 - 32]);
        }
      }

      free(v6);
      return v26;
    }

    if ((SoundDec_ShouldRampDownMissingPackets(*(v25 + 1), v25 + 6) & 0x80000000) != 0)
    {
      *(v25 + 6) = 1;
    }

    SoundDec_SetAMRPayloadFormat(*(v25 + 1), *(*a2 + v7 + 16));
    EVSHeaderFormat = VCAudioDecoderList_GetEVSHeaderFormat(*a2 + v7, v13);
    SoundDec_SetEVSFormatHandling(*(v25 + 1), EVSHeaderFormat);
    SoundDec_SetAACELDPacketLossConcealmentAlgorithm(*(v25 + 1));
    if (*(*a2 + v7 + 25) == 1)
    {
      SoundDec_SetOpusInBandFecEnabled(*(v25 + 1), 1);
      *(v25 + 6) = 0;
    }

    if (v13 == 111)
    {
      SoundDec_SetEVSAudioCodecBandwidth(*(v25 + 1), 0);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a2 + 14);
        v31 = *(a2 + 16);
        v32 = (*a2 + v7);
        v33 = *(v32 + 16);
        v34 = *v32;
        v35 = v32[1];
        v37 = v32[2];
        v36 = v32[3];
        LODWORD(v32) = *(v32 + 17);
        *buf = 136318978;
        v57 = v28;
        v58 = 2080;
        v59 = "VCAudioDecoderList_Setup";
        v60 = 1024;
        v61 = 165;
        v62 = 2080;
        *v63 = __str;
        *&v63[8] = 2080;
        *&v63[10] = v77;
        *&v63[18] = 2048;
        *v64 = v22;
        *&v64[8] = 1024;
        *v65 = v30;
        *&v65[4] = 1024;
        *v66 = v31;
        *&v66[4] = 1024;
        *&v66[6] = v33;
        v67 = 1024;
        *v68 = v34;
        *&v68[4] = 1024;
        *&v68[6] = v13;
        *v69 = 1024;
        *&v69[2] = v35;
        *v70 = 1024;
        *&v70[2] = v36;
        v71 = 1024;
        v72 = v37;
        v73 = 1024;
        v74 = v32;
        v75 = 1024;
        v76 = EVSHeaderFormat;
        _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d encodedFormat=%s internalFormat=%s codecSecondsPerFrame=%f internalBlockSize=%d useRTC=%d amrOctetAligned=%d payload=%d selectedPayload=%d networkPayload=%d flags=%d codecBlockSize=%d forceEVSWideBandforAMR=%d headerFormat=%d", buf, 0x76u);
      }
    }

    v11 = v51;
LABEL_41:
    ++v8;
    v7 += 40;
  }

  while (v8 < *(a2 + 2));
  if (v11)
  {
    if (v50)
    {
      *(v11 + 4) = *(v50 + 4);
      v11[28] = v50[28];
      *(v11 + 5) = *(v50 + 5);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v40 = v11[28];
          v41 = *(v11 + 4);
          v42 = *(v11 + 5);
          *buf = 136316418;
          v57 = v38;
          v58 = 2080;
          v59 = "VCAudioDecoderList_Setup";
          v60 = 1024;
          v61 = 173;
          v62 = 1024;
          *v63 = v41;
          *&v63[4] = 1024;
          *&v63[6] = v40;
          *&v63[10] = 1024;
          *&v63[12] = v42;
          _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Updated DTMF sampleRate=%d isOctedAligned=%d convertedSamples=%d", buf, 0x2Eu);
        }
      }
    }
  }

LABEL_49:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v43 = VRTraceErrorLogLevelToCSTR();
    v44 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(a2 + 2);
      *buf = 136316162;
      v57 = v43;
      v58 = 2080;
      v59 = "VCAudioDecoderList_Setup";
      v60 = 1024;
      v61 = 177;
      v62 = 2048;
      *v63 = a1;
      *&v63[8] = 1024;
      *&v63[10] = v45;
      _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Update audio receiver (%p) decoders: count=%u", buf, 0x2Cu);
    }
  }

  VCAudioDecoderList_Cleanup(a1);
  v26 = 0;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v6;
  return v26;
}

BOOL VCAudioDecoderList_GetSpeechCodecBundleData(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a4 && *a4 && *(a4 + 8))
    {
      v6[0] = 0;
      result = VCAudioDecoderList_GetDecoderSettings(a1, a2, a3, v6);
      if (!result)
      {
        return result;
      }

      if ((SoundDec_GetSpeechCodecBundleData(*(v6[0] + 8), a4) & 0x80000000) == 0)
      {
        return 1;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        VCAudioDecoderList_GetSpeechCodecBundleData_cold_1();
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VCAudioDecoderList_GetSpeechCodecBundleData_cold_2();
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCAudioDecoderList_GetSpeechCodecBundleData_cold_3();
  }

  return 0;
}

uint64_t VCAudioDecoderList_IsDTXFrame(uint64_t a1, uint64_t a2, _DWORD *a3, _BYTE *a4, _BYTE *a5)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCAudioDecoderList_IsDTXFrame_cold_5();
LABEL_22:
    v11 = v32;
    return v11 & 1;
  }

  if (!a2)
  {
    VCAudioDecoderList_IsDTXFrame_cold_4();
    goto LABEL_22;
  }

  if (!a3)
  {
    VCAudioDecoderList_IsDTXFrame_cold_3();
    goto LABEL_22;
  }

  if (!a4)
  {
    VCAudioDecoderList_IsDTXFrame_cold_2();
    goto LABEL_22;
  }

  if (!a5)
  {
    VCAudioDecoderList_IsDTXFrame_cold_1();
    goto LABEL_22;
  }

  v10 = VCPayloadUtils_SupportsReceiveSideInactiveAudioFrameDetection(*a2, *(a2 + 20), *(a2 + 21));
  if (*a2 != 13)
  {
    if ((VCPayloadUtils_supportsInternalDTXForPayload(*a2) | v10))
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v51 = v12;
      v52 = v12;
      v49 = v12;
      v50 = v12;
      v53 = 0xAAAAAAAAAAAAAAAALL;
      v48 = v12;
      v47 = v12;
      v46 = v12;
      v45 = v12;
      v44 = v12;
      v43 = v12;
      v42 = v12;
      v41 = v12;
      v40 = v12;
      v39 = v12;
      v38 = v12;
      v37 = v12;
      v35 = v12;
      v36 = v12;
      v33 = v12;
      v34 = v12;
      v32 = *(a2 + 8);
      LODWORD(v33) = *(a2 + 16);
      if (VCAudioDecoderList_GetSpeechCodecBundleData(a1, *a2, *(a2 + 4), &v32))
      {
        if (DWORD2(v34))
        {
          v13 = &v32 + 20 * (DWORD2(v34) - 1);
          v14 = *(v13 + 9);
          v15 = v13[40];
          v16 = (v14 == 0) & ~v10;
          v11 = v15 | v16;
          *a3 = v14;
          *a4 = v15 & 1;
          *a5 = v16;
          return v11 & 1;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v20 = *(a2 + 8);
            v21 = *(a2 + 16);
            v22 = 136316162;
            v23 = v17;
            v24 = 2080;
            v25 = "VCAudioDecoderList_IsDTXFrame";
            v26 = 1024;
            v27 = 242;
            v28 = 2048;
            v29 = v20;
            v30 = 1024;
            v31 = v21;
            _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d No packets in the bundle data [%p, %u]", &v22, 0x2Cu);
          }
        }
      }
    }

    v11 = 0;
    return v11 & 1;
  }

  v11 = 1;
  return v11 & 1;
}

double _VCConnectionLegacy_SourceDestinationInfo(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 288);
  v4 = *(v3 + 20);
  if (v4)
  {
    v5 = *(v3 + 26);
  }

  else
  {
    v5 = 0;
  }

  VCSDInfoConstructWithIPPorts(v3 + 28, v3 + 148, v4 != 0, v5, v10);
  v6 = v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v6;
  *(a2 + 96) = v15;
  *(a2 + 112) = v16;
  v7 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v9;
  return result;
}

uint64_t _VCConnectionLegacy_IsRemoteOnCellular(uint64_t a1)
{
  v2 = IsIPPORTValid();
  v3 = 68;
  if (!v2)
  {
    v3 = 148;
  }

  return (*(*(a1 + 288) + v3) >> 2) & 1;
}

BOOL _VCConnectionLegacy_MatchesSourceDestinationInfo(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a2 == 5)
  {
    v3 = nw_connection_copy_endpoint(*(a2 + 8));
    address = nw_endpoint_get_address(v3);
    v11 = 0;
    v12 = 0;
    sa_family = address->sa_family;
    v6 = sa_family == 30;
    if (sa_family == 30)
    {
      v7 = *&address->sa_data[6];
      v11 = *&address->sa_data[10];
      v12 = *&address[1].sa_data[2];
    }

    else
    {
      v7 = 0;
      if (sa_family == 2)
      {
        v7 = *&address->sa_data[2];
      }
    }

    port = nw_endpoint_get_port(v3);
    nw_release(v3);
    *v13 = v6;
    *&v13[12] = 0;
    *&v13[4] = 0;
    *&v13[20] = v7;
    *&v13[24] = v11;
    LODWORD(v14) = v12;
    HIDWORD(v14) = port;
  }

  else
  {
    v8 = *(a2 + 64);
    *v13 = *(a2 + 48);
    *&v13[16] = v8;
    v14 = *(a2 + 80);
  }

  return VCConnectionLegacy_IsRemoteIPPort(a1, v13);
}

BOOL _VCConnectionLegacy_Equal(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 288);
  v3 = *(v2 + 20);
  v4 = *(a2 + 288);
  v5 = *(v4 + 20);
  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v3 | v5 || (*(v2 + 148) & 1) != (*(v4 + 148) & 1))
    {
      return 0;
    }

    if (*(v2 + 148))
    {
      if (*(v2 + 168) != *(v4 + 168) || *(v2 + 176) != *(v4 + 176))
      {
        return 0;
      }
    }

    else if (*(v2 + 168) != *(v4 + 168))
    {
      return 0;
    }

    if (*(v2 + 184) != *(v4 + 184) || (*(v2 + 108) & 1) != (*(v4 + 108) & 1))
    {
      return 0;
    }

    if (*(v2 + 108))
    {
      if (*(v2 + 128) != *(v4 + 128) || *(v2 + 136) != *(v4 + 136))
      {
        return 0;
      }
    }

    else if (*(v2 + 128) != *(v4 + 128))
    {
      return 0;
    }

    v7 = *(v2 + 144);
    v8 = *(v4 + 144);
  }

  else
  {
    v7 = *(v2 + 26);
    v8 = *(v4 + 26);
  }

  return v7 == v8;
}

uint64_t _VCConnectionLegacy_LocalCellTech(uint64_t a1)
{
  result = VCConnection_IsLocalOnCellular(a1);
  if (result)
  {
    return *(*(a1 + 288) + 280);
  }

  return result;
}

uint64_t _VCConnectionLegacy_SetLocalCellTech(uint64_t a1, int a2)
{
  result = VCConnection_IsLocalOnCellular(a1);
  if (result)
  {
    *(*(a1 + 288) + 280) = a2;
  }

  return result;
}

uint64_t _VCConnectionLegacy_RemoteCellTech(uint64_t a1)
{
  result = VCConnection_IsRemoteOnCellular(a1);
  if (result)
  {
    return *(*(a1 + 288) + 284);
  }

  return result;
}

uint64_t _VCConnectionLegacy_SetRemoteCellTech(uint64_t a1, int a2)
{
  result = VCConnection_IsRemoteOnCellular(a1);
  if (result)
  {
    *(*(a1 + 288) + 284) = a2;
  }

  return result;
}

CFStringRef _VCConnectionLegacy_CopyDescription(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[15] = v2;
  v11[14] = v2;
  v11[13] = v2;
  v11[11] = v2;
  v11[12] = v2;
  v11[9] = v2;
  v11[10] = v2;
  v11[7] = v2;
  v11[8] = v2;
  v11[5] = v2;
  v11[6] = v2;
  v11[3] = v2;
  v11[4] = v2;
  v11[1] = v2;
  v11[2] = v2;
  v10[15] = v2;
  v11[0] = v2;
  v10[13] = v2;
  v10[14] = v2;
  v10[11] = v2;
  v10[12] = v2;
  v10[9] = v2;
  v10[10] = v2;
  v10[7] = v2;
  v10[8] = v2;
  v10[5] = v2;
  v10[6] = v2;
  v10[3] = v2;
  v10[4] = v2;
  v10[1] = v2;
  v10[2] = v2;
  v9[15] = v2;
  v10[0] = v2;
  v9[13] = v2;
  v9[14] = v2;
  v9[11] = v2;
  v9[12] = v2;
  v9[9] = v2;
  v9[10] = v2;
  v9[7] = v2;
  v9[8] = v2;
  v9[5] = v2;
  v9[6] = v2;
  v9[3] = v2;
  v9[4] = v2;
  v9[1] = v2;
  v9[2] = v2;
  v8[15] = v2;
  v9[0] = v2;
  v8[13] = v2;
  v8[14] = v2;
  v8[11] = v2;
  v8[12] = v2;
  v8[9] = v2;
  v8[10] = v2;
  v8[7] = v2;
  v8[8] = v2;
  v8[5] = v2;
  v8[6] = v2;
  v8[3] = v2;
  v8[4] = v2;
  v8[1] = v2;
  v8[2] = v2;
  v8[0] = v2;
  _VCConnectionLegacy_IPPortToString(*(a1 + 288) + 28, v11);
  _VCConnectionLegacy_IPPortToString(*(a1 + 288) + 108, v10);
  _VCConnectionLegacy_IPPortToString(*(a1 + 288) + 148, v9);
  _VCConnectionLegacy_IPPortToString(*(a1 + 288) + 68, v8);
  v3 = *MEMORY[0x1E695E480];
  if (VCConnection_IsRelay(a1))
  {
    v4 = "RELAY";
  }

  else
  {
    v4 = "NOT RELAY";
  }

  if (VCConnection_IsLocalOnWiFi(a1))
  {
    v5 = "WiFi";
  }

  else
  {
    v5 = "Cell";
  }

  if (VCConnection_IsRemoteOnWiFi(a1))
  {
    v6 = "WiFi";
  }

  else
  {
    v6 = "Cell";
  }

  return CFStringCreateWithFormat(v3, 0, @"[%s %s(%s)<>%s<===>%s<>%s(%s)]", v4, v11, v5, v10, v9, v8, v6);
}

BOOL _VCConnectionLegacy_IsRemoteOnWiFiOrWired(uint64_t a1)
{
  v2 = IsIPPORTValid();
  v3 = 68;
  if (!v2)
  {
    v3 = 148;
  }

  return (*(*(a1 + 288) + v3) & 4) == 0;
}

BOOL _VCConnectionLegacy_IsRemoteOnWiFi(uint64_t a1)
{
  v2 = IsIPPORTValid();
  v3 = 68;
  if (!v2)
  {
    v3 = 148;
  }

  return (*(*(a1 + 288) + v3) & 4) == 0;
}

BOOL _VCConnectionLegacy_IsRemoteOnWired(uint64_t a1)
{
  v2 = IsIPPORTValid();
  v3 = 68;
  if (!v2)
  {
    v3 = 148;
  }

  return (*(*(a1 + 288) + v3) & 4) == 0;
}

uint64_t _VCConnectionLegacy_IsOnSameInterfacesWithConnection(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a1[36];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a2 && v4)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136316162;
          v20 = v6;
          v21 = 2080;
          v22 = "_VCConnectionLegacy_IsOnSameInterfacesWithConnection";
          v23 = 1024;
          v24 = 231;
          v25 = 2080;
          v26 = [objc_msgSend(a1 "description")];
          v27 = 2080;
          v28 = [objc_msgSend(a2 "description")];
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: isOnSameInterfacesWithConnection: %s vs. %s", &v19, 0x30u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v19 = 136316162;
        v20 = v6;
        v21 = 2080;
        v22 = "_VCConnectionLegacy_IsOnSameInterfacesWithConnection";
        v23 = 1024;
        v24 = 231;
        v25 = 2080;
        v26 = [objc_msgSend(a1 "description")];
        v27 = 2080;
        v28 = [objc_msgSend(a2 "description")];
        _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCConnection: isOnSameInterfacesWithConnection: %s vs. %s", &v19, 0x30u);
      }
    }

    IsLocalOnWiFi = VCConnection_IsLocalOnWiFi(a1);
    if (IsLocalOnWiFi == VCConnection_IsLocalOnWiFi(a2))
    {
      IsRemoteOnWiFi = VCConnection_IsRemoteOnWiFi(a1);
      v12 = IsRemoteOnWiFi ^ VCConnection_IsRemoteOnWiFi(a2) ^ 1;
    }

    else
    {
      v12 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      v17 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136315906;
          v20 = v15;
          v21 = 2080;
          v22 = "_VCConnectionLegacy_IsOnSameInterfacesWithConnection";
          v23 = 1024;
          v24 = 234;
          v25 = 1024;
          LODWORD(v26) = v12;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: isOnSameInterfacesWithConnection: %{BOOL}d", &v19, 0x22u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        _VCConnectionLegacy_IsOnSameInterfacesWithConnection_cold_2();
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 136315650;
          v20 = v9;
          v21 = 2080;
          v22 = "_VCConnectionLegacy_IsOnSameInterfacesWithConnection";
          v23 = 1024;
          v24 = 227;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: isOnSameInterfacesWithConnection: NO", &v19, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        _VCConnectionLegacy_IsOnSameInterfacesWithConnection_cold_1();
      }
    }

    return 0;
  }

  return v12;
}

uint64_t _VCConnectionLegacy_ReportingIPVersion(uint64_t a1)
{
  if (*(*(a1 + 288) + 108))
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

BOOL VCConnectionLegacy_IsRemoteIPPort(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return 0;
    }

    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v22 = 136316162;
    v23 = v6;
    v24 = 2080;
    v25 = "VCConnectionLegacy_IsRemoteIPPort";
    v26 = 1024;
    v27 = 181;
    v28 = 2048;
    v29 = a1;
    v30 = 2048;
    v31 = a2;
    v8 = " [%s] %s:%d nil instance=%p or remoteIPPort=%p passed";
    v9 = v7;
    v10 = 48;
    goto LABEL_11;
  }

  v4 = *(a1 + 288);
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return 0;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    v13 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] != 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        VCConnectionLegacy_IsRemoteIPPort_cold_2();
      }

      return 0;
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v22 = 136315650;
    v23 = v11;
    v24 = 2080;
    v25 = "VCConnectionLegacy_IsRemoteIPPort";
    v26 = 1024;
    v27 = 185;
    v8 = " [%s] %s:%d VCConnection: isRemoteIPPort: NO";
    v9 = v12;
    v10 = 28;
LABEL_11:
    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v22, v10);
    return 0;
  }

  v5 = *a2 & 1;
  if ((*(v4 + 68) & 1) != v5)
  {
    goto LABEL_23;
  }

  if (*(v4 + 68))
  {
    if (*(v4 + 88) != *(a2 + 20) || *(v4 + 96) != *(a2 + 28))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 88) != *(a2 + 20))
  {
    goto LABEL_23;
  }

  if (*(v4 + 104) == *(a2 + 36))
  {
    v15 = 1;
    goto LABEL_32;
  }

LABEL_23:
  if ((*(v4 + 188) & 1) == v5)
  {
    if (v5)
    {
      if (*(v4 + 208) == *(a2 + 20) && *(v4 + 216) == *(a2 + 28))
      {
        goto LABEL_26;
      }
    }

    else if (*(v4 + 208) == *(a2 + 20))
    {
LABEL_26:
      v15 = *(v4 + 224) == *(a2 + 36);
      goto LABEL_32;
    }
  }

  v15 = 0;
LABEL_32:
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    v19 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = "NO";
        v23 = v17;
        v22 = 136315906;
        v25 = "VCConnectionLegacy_IsRemoteIPPort";
        v24 = 2080;
        if (v15)
        {
          v20 = "YES";
        }

        v26 = 1024;
        v27 = 191;
        v28 = 2080;
        v29 = v20;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCConnection: isRemoteIPPort: %s", &v22, 0x26u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      VCConnectionLegacy_IsRemoteIPPort_cold_1();
    }
  }

  return v15;
}

uint64_t _VCConnectionLegacy_IPPortToString(uint64_t a1, char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[14] = v4;
  *v14 = v4;
  *v15 = v4;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  FillSockAddrStorage();
  return snprintf(a2, 0x100uLL, "%s:%d", v14, *(a1 + 36));
}

uint64_t _VideoReceiver_UpdateMediaControlInfo(uint64_t a1)
{
  v1 = a1;
  v23 = *MEMORY[0x1E69E9840];
  v2 = a1 + 40900;
  if (a1)
  {
    v3 = *(a1 + 40904);
    if (!v3 || (a1 = *(v3 + 80)) == 0)
    {
      a1 = *(v2 + 1484);
    }
  }

  Version = VCMediaControlInfoGeneratorGetVersion(a1);
  v5 = (*(v1 + 1333) & 1) != 0 || *v2 == 0;
  v6 = Version > 1 && v5;
  if (*(v1 + 1334) > 1u)
  {
    v6 = *(v1 + 1334);
  }

  *(v2 + 2388) = v6;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v2 + 2388);
      v13 = 136316162;
      v14 = v7;
      v15 = 2080;
      v16 = "_VideoReceiver_UpdateMediaControlInfo";
      v17 = 1024;
      v18 = 578;
      v19 = 2048;
      v20 = v1;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] FEC Negotiated header version=%d", &v13, 0x2Cu);
    }
  }

  v10 = *(v2 + 4);
  if (!v10 || (v11 = *(v10 + 80)) == 0)
  {
    v11 = *(v2 + 1484);
  }

  result = VCMediaControlInfoGeneratorGetFECFeedbackVersion(v11);
  *(v2 + 2400) = result;
  return result;
}

void _VideoReceiver_DecoderCallback(uint64_t a1, __CVBuffer *a2, __int128 *a3, uint64_t a4)
{
  v99 = *MEMORY[0x1E69E9840];
  v91 = 0;
  v90 = 1;
  v8 = CheckInHandleDebug();
  if (v8)
  {
    v9 = v8;
    v89 = a1;
    v10 = v8 + 40928;
    ++*(v8 + 42788);
    v11 = CVBufferCopyAttachment(a2, @"MLEnhancedStats", 0);
    if (v11)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      if (v13 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryContainsKey(v12, @"MLEnhancedMode"))
        {
          Value = CFDictionaryGetValue(v12, @"MLEnhancedMode");
          *valuePtr = 0;
          CFNumberGetValue(Value, kCFNumberSInt32Type, valuePtr);
          if (*valuePtr >= 4u)
          {
            _VideoReceiver_DecoderCallback_cold_1();
          }

          else
          {
            if (*valuePtr)
            {
              ++*(v10 + 1862);
            }

            else
            {
              v15 = *(v10 + 1184) + 1;
              *(v10 + 1184) = v15;
              if (v15 == 5 && (*(v10 + 1188) & 1) == 0)
              {
                reportingSymptom();
                *(v10 + 1188) = 1;
              }
            }

            v16 = CFDictionaryGetValue(v12, @"ModelInputWidth");
            v17 = CFDictionaryGetValue(v12, @"ModelOutputWidth");
            v18 = CFDictionaryGetValue(v12, @"ModelInputHeight");
            v19 = CFDictionaryGetValue(v12, @"ModelOutputHeight");
            v95 = 0;
            v94 = 0;
            v93 = 0;
            v92 = 0;
            if (v16 && v18)
            {
              CFNumberGetValue(v16, kCFNumberSInt32Type, &v95);
              CFNumberGetValue(v18, kCFNumberSInt32Type, &v94);
            }

            if (v17)
            {
              CFNumberGetValue(v17, kCFNumberSInt32Type, &v93);
              CFNumberGetValue(v19, kCFNumberSInt32Type, &v92);
            }

            v20 = v9 + 280 * *valuePtr + 40992;
            VideoResolutionForDimensions = VCAggregatorUtils_GetVideoResolutionForDimensions();
            v22 = VCAggregatorUtils_GetVideoResolutionForDimensions();
            ++*(v20 + 4 * VideoResolutionForDimensions);
            ++*(v20 + 4 * v22 + 140);
          }
        }

        else
        {
          _VideoReceiver_DecoderCallback_cold_2();
        }
      }

      CFRelease(v12);
    }

    v23 = CMGetAttachment(a2, @"PropagatableAttachments", 0);
    if (v23)
    {
      v24 = CFDictionaryGetValue(v23, @"wpar");
      if (v24)
      {
        v25 = v24;
        IOSurface = CVPixelBufferGetIOSurface(a2);
        IOSurfaceSetValue(IOSurface, @"wpar", v25);
        Length = CFDataGetLength(v25);
        v28 = Length;
        MEMORY[0x1EEE9AC00](Length);
        v30 = &v88 - ((v29 + 15) & 0x1FFFFFFF0);
        if (v29)
        {
          memset(&v88 - ((v29 + 15) & 0x1FFFFFFF0), 170, v29);
        }

        v100.location = 0;
        v100.length = v28;
        CFDataGetBytes(v25, v100, v30);
        IOSurfaceSetDataProperty();
      }
    }

    Width = CVPixelBufferGetWidth(a2);
    Height = CVPixelBufferGetHeight(a2);
    if (a2)
    {
      v33 = Width;
      v34 = Height;
      if (*(v10 + 1648) != Width || *(v10 + 1656) != v34)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v36 = VRTraceErrorLogLevelToCSTR();
          v37 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v38 = *(v10 + 1648);
            v39 = *(v10 + 1656);
            *valuePtr = 136316674;
            *&valuePtr[4] = v36;
            *&valuePtr[12] = 2080;
            *&valuePtr[14] = "_VideoReceiver_DecoderCallback";
            *&valuePtr[22] = 1024;
            LODWORD(v97) = 998;
            WORD2(v97) = 2048;
            *(&v97 + 6) = v38;
            HIWORD(v97) = 2048;
            *&v98[0] = v39;
            WORD4(v98[0]) = 2048;
            *(v98 + 10) = v33;
            WORD1(v98[1]) = 2048;
            *(&v98[1] + 4) = v34;
            _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d decoded frame size changed from %fx%f to %fx%f", valuePtr, 0x44u);
          }
        }

        *(v10 + 1648) = v33;
        *(v10 + 1656) = v34;
      }
    }

    *(v10 + 1480) += VideoUtil_GetDecodedFrameSEINaluOverheadBytes(a2);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      v42 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = *a3;
          v44 = *(a3 + 48);
          *valuePtr = 136316418;
          *&valuePtr[4] = v40;
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "_VideoReceiver_DecoderCallback";
          *&valuePtr[22] = 1024;
          LODWORD(v97) = 1004;
          WORD2(v97) = 2048;
          *(&v97 + 6) = v9;
          HIWORD(v97) = 1024;
          LODWORD(v98[0]) = v43;
          WORD2(v98[0]) = 1024;
          *(v98 + 6) = v44;
          _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] RTPTimestamp=%u canStopVideoStall=%d", valuePtr, 0x32u);
        }
      }

      else if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v69 = *a3;
        v70 = *(a3 + 48);
        *valuePtr = 136316418;
        *&valuePtr[4] = v40;
        *&valuePtr[12] = 2080;
        *&valuePtr[14] = "_VideoReceiver_DecoderCallback";
        *&valuePtr[22] = 1024;
        LODWORD(v97) = 1004;
        WORD2(v97) = 2048;
        *(&v97 + 6) = v9;
        HIWORD(v97) = 1024;
        LODWORD(v98[0]) = v69;
        WORD2(v98[0]) = 1024;
        *(v98 + 6) = v70;
        _os_log_debug_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] RTPTimestamp=%u canStopVideoStall=%d", valuePtr, 0x32u);
      }
    }

    v45 = *(v10 + 2232);
    *valuePtr = *a4;
    *&valuePtr[16] = *(a4 + 16);
    if (!VCVideoReceiverDecodedFrame_Create(v45, &v91, 0, a2, a3, valuePtr))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v85 = VRTraceErrorLogLevelToCSTR();
        v86 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v87 = *a3;
          *valuePtr = 136316162;
          *&valuePtr[4] = v85;
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "_VideoReceiver_DecoderCallback";
          *&valuePtr[22] = 1024;
          LODWORD(v97) = 1007;
          WORD2(v97) = 2048;
          *(&v97 + 6) = v9;
          HIWORD(v97) = 1024;
          LODWORD(v98[0]) = v87;
          _os_log_error_impl(&dword_1DB56E000, v86, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Unable to create VCVideoReceiverDecodedFrame for frame with timestamp=%u", valuePtr, 0x2Cu);
        }
      }

      goto LABEL_113;
    }

    if (!v91 || *(a3 + 50) != 1 || (*(a3 + 43) & 1) != 0)
    {
LABEL_111:
      if ((_VideoReceiver_EnqueueDecodedFrameForDisplay(v89, v9, a3, &v91, &v90) & 1) == 0)
      {
        _VideoReceiver_DecoderCallback_cold_4();
      }

LABEL_113:
      _VideoReceiver_CheckAndRequestKeyFrame(v9, v91);
      if (v91)
      {
        if (v90 == 1)
        {
          VCVideoReceiverDecodedFrame_Destroy(&v91);
        }
      }

      CheckOutHandleDebug();
      return;
    }

    v46 = *(v10 + 2016);
    if (*(v10 + 2016))
    {
      v47 = 7;
    }

    else
    {
      v47 = 8;
    }

    if (v47 <= VRTraceGetErrorLogLevelForModule())
    {
      v48 = VRTraceErrorLogLevelToCSTR();
      if (v46)
      {
        v49 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_57;
        }

LABEL_54:
        v51 = *(a3 + 13);
        v52 = *(a3 + 12);
        v53 = *(a3 + 47);
        v54 = *(a3 + 4);
        *valuePtr = 136316674;
        *&valuePtr[4] = v48;
        *&valuePtr[12] = 2080;
        *&valuePtr[14] = "_VideoReceiver_DecoderCallback";
        *&valuePtr[22] = 1024;
        LODWORD(v97) = 1011;
        WORD2(v97) = 1024;
        *(&v97 + 6) = v51;
        WORD5(v97) = 1024;
        HIDWORD(v97) = v52;
        LOWORD(v98[0]) = 1024;
        *(v98 + 2) = v53;
        WORD3(v98[0]) = 2048;
        *(&v98[0] + 1) = v54;
        _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d Sending LTR ACK with timestamp=%d decodedargs->streamID=%u, decodedargs->isOneToOne=%u streamToken=%ld", valuePtr, 0x38u);
        goto LABEL_57;
      }

      v49 = *MEMORY[0x1E6986650];
      v50 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        _VideoReceiver_DecoderCallback_cold_3();
      }
    }

LABEL_57:
    Stream = _VideoReceiver_GetStream(v9, *(a3 + 12), *(a3 + 47));
    v56 = *(a3 + 13);
    v57 = micro();
    v95 = v56;
    if (!v56)
    {
      goto LABEL_111;
    }

    v58 = v57;
    LOBYTE(v94) = 0;
    IsSafeViewMode = VideoTransmitter_IsSafeViewMode(*v10, &v94);
    v60 = *(v10 + 2016);
    if (*(v10 + 2016))
    {
      v61 = 7;
    }

    else
    {
      v61 = 8;
    }

    if (*(v10 + 2547) & 1) != 0 || (IsSafeViewMode & 0x80000000) == 0 && (v94)
    {
      v62 = 1;
    }

    else
    {
      v62 = *(Stream + 102);
    }

    if (v61 <= VRTraceGetErrorLogLevelForModule())
    {
      v63 = VRTraceErrorLogLevelToCSTR();
      if (v60)
      {
        v64 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
LABEL_72:
          v66 = *(v10 + 2547);
          v67 = *(Stream + 102);
          v68 = Stream[26];
          *valuePtr = 136316930;
          *&valuePtr[4] = v63;
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "_VideoReceiver_SendLTRACK";
          *&valuePtr[22] = 1024;
          LODWORD(v97) = 3073;
          WORD2(v97) = 2048;
          *(&v97 + 6) = v9;
          HIWORD(v97) = 1024;
          LODWORD(v98[0]) = v66;
          WORD2(v98[0]) = 1024;
          *(v98 + 6) = v94;
          WORD5(v98[0]) = 1024;
          HIDWORD(v98[0]) = v67;
          LOWORD(v98[1]) = 1024;
          *(&v98[1] + 2) = v68;
          _os_log_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] forceRTCPForLTRPACK=%d, isSafeView=%d, isRTCPForLTRPAckEnabled=%d, ltrAckRTCPPacketType=%d", valuePtr, 0x3Eu);
          if ((v62 & 1) == 0)
          {
LABEL_99:
            if (v61 <= VRTraceGetErrorLogLevelForModule())
            {
              v81 = VRTraceErrorLogLevelToCSTR();
              if (v60)
              {
                v82 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
LABEL_105:
                  *valuePtr = 136316162;
                  *&valuePtr[4] = v81;
                  *&valuePtr[12] = 2080;
                  *&valuePtr[14] = "_VideoReceiver_SendLTRACK";
                  *&valuePtr[22] = 1024;
                  LODWORD(v97) = 3093;
                  WORD2(v97) = 2048;
                  *(&v97 + 6) = v9;
                  HIWORD(v97) = 1024;
                  LODWORD(v98[0]) = v56;
                  _os_log_impl(&dword_1DB56E000, v82, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Sending VideoTransmitter LTRP ACK for %d", valuePtr, 0x2Cu);
                }
              }

              else
              {
                v82 = *MEMORY[0x1E6986650];
                v83 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] != 1)
                {
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
                  {
                    *valuePtr = 136316162;
                    *&valuePtr[4] = v81;
                    *&valuePtr[12] = 2080;
                    *&valuePtr[14] = "_VideoReceiver_SendLTRACK";
                    *&valuePtr[22] = 1024;
                    LODWORD(v97) = 3093;
                    WORD2(v97) = 2048;
                    *(&v97 + 6) = v9;
                    HIWORD(v97) = 1024;
                    LODWORD(v98[0]) = v56;
                    _os_log_debug_impl(&dword_1DB56E000, v82, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Sending VideoTransmitter LTRP ACK for %d", valuePtr, 0x2Cu);
                  }

                  goto LABEL_108;
                }

                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_105;
                }
              }
            }

LABEL_108:
            v84 = *(v9 + 1664);
            if (v84)
            {
              v84(*(v9 + 1656), v56);
            }

            VideoTransmitter_SendLTRACK(*v10, v56);
            goto LABEL_111;
          }

LABEL_76:
          if (Stream[26] == 2 || *(v10 + 2547) == 1)
          {
            if (v61 <= VRTraceGetErrorLogLevelForModule())
            {
              v71 = VRTraceErrorLogLevelToCSTR();
              if (v60)
              {
                v72 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
LABEL_88:
                  *valuePtr = 136316162;
                  *&valuePtr[4] = v71;
                  *&valuePtr[12] = 2080;
                  *&valuePtr[14] = "_VideoReceiver_SendLTRACK";
                  *&valuePtr[22] = 1024;
                  LODWORD(v97) = 3077;
                  WORD2(v97) = 2048;
                  *(&v97 + 6) = v9;
                  HIWORD(v97) = 1024;
                  LODWORD(v98[0]) = v56;
                  _os_log_impl(&dword_1DB56E000, v72, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Received RTCP request to send PSFB LTRP ACK for timestamp=%u", valuePtr, 0x2Cu);
                }
              }

              else
              {
                v72 = *MEMORY[0x1E6986650];
                v75 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] != 1)
                {
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                  {
                    *valuePtr = 136316162;
                    *&valuePtr[4] = v71;
                    *&valuePtr[12] = 2080;
                    *&valuePtr[14] = "_VideoReceiver_SendLTRACK";
                    *&valuePtr[22] = 1024;
                    LODWORD(v97) = 3077;
                    WORD2(v97) = 2048;
                    *(&v97 + 6) = v9;
                    HIWORD(v97) = 1024;
                    LODWORD(v98[0]) = v56;
                    _os_log_debug_impl(&dword_1DB56E000, v72, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Received RTCP request to send PSFB LTRP ACK for timestamp=%u", valuePtr, 0x2Cu);
                  }

                  goto LABEL_91;
                }

                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_88;
                }
              }
            }

LABEL_91:
            _VideoReceiver_SendRTCPResiliencyInfo(v9, Stream, v56, 1, 0, 0, v58);
            goto LABEL_111;
          }

          if (v61 > VRTraceGetErrorLogLevelForModule())
          {
            goto LABEL_97;
          }

          v73 = VRTraceErrorLogLevelToCSTR();
          if (v60)
          {
            v74 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
LABEL_94:
              *valuePtr = 136316162;
              *&valuePtr[4] = v73;
              *&valuePtr[12] = 2080;
              *&valuePtr[14] = "_VideoReceiver_SendLTRACK";
              *&valuePtr[22] = 1024;
              LODWORD(v97) = 3080;
              WORD2(v97) = 2048;
              *(&v97 + 6) = v9;
              HIWORD(v97) = 1024;
              LODWORD(v98[0]) = v56;
              _os_log_impl(&dword_1DB56E000, v74, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Sending RTCP APP LTRP ACK for timestamp=%u", valuePtr, 0x2Cu);
            }
          }

          else
          {
            v74 = *MEMORY[0x1E6986650];
            v76 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] != 1)
            {
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
              {
                *valuePtr = 136316162;
                *&valuePtr[4] = v73;
                *&valuePtr[12] = 2080;
                *&valuePtr[14] = "_VideoReceiver_SendLTRACK";
                *&valuePtr[22] = 1024;
                LODWORD(v97) = 3080;
                WORD2(v97) = 2048;
                *(&v97 + 6) = v9;
                HIWORD(v97) = 1024;
                LODWORD(v98[0]) = v56;
                _os_log_debug_impl(&dword_1DB56E000, v74, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Sending RTCP APP LTRP ACK for timestamp=%u", valuePtr, 0x2Cu);
              }

              goto LABEL_97;
            }

            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_94;
            }
          }

LABEL_97:
          v95 = bswap32(v56);
          memset(v98, 0, sizeof(v98));
          v97 = 0u;
          *valuePtr = 0x500000002;
          *&valuePtr[8] = &v95;
          *&valuePtr[16] = 4;
          v77 = micro();
          _VideoReceiver_SendRTCP(v9, Stream, valuePtr, 0, v77);
          ++Stream[1071];
          goto LABEL_111;
        }
      }

      else
      {
        v64 = *MEMORY[0x1E6986650];
        v65 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_72;
          }
        }

        else if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v78 = *(v10 + 2547);
          v79 = *(Stream + 102);
          v80 = Stream[26];
          *valuePtr = 136316930;
          *&valuePtr[4] = v63;
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "_VideoReceiver_SendLTRACK";
          *&valuePtr[22] = 1024;
          LODWORD(v97) = 3073;
          WORD2(v97) = 2048;
          *(&v97 + 6) = v9;
          HIWORD(v97) = 1024;
          LODWORD(v98[0]) = v78;
          WORD2(v98[0]) = 1024;
          *(v98 + 6) = v94;
          WORD5(v98[0]) = 1024;
          HIDWORD(v98[0]) = v79;
          LOWORD(v98[1]) = 1024;
          *(&v98[1] + 2) = v80;
          _os_log_debug_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] forceRTCPForLTRPACK=%d, isSafeView=%d, isRTCPForLTRPAckEnabled=%d, ltrAckRTCPPacketType=%d", valuePtr, 0x3Eu);
          if ((v62 & 1) == 0)
          {
            goto LABEL_99;
          }

          goto LABEL_76;
        }
      }
    }

    if ((v62 & 1) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_76;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VideoReceiver_DecoderCallback_cold_5();
    }
  }
}

unsigned int *_VideoReceiver_GetStream(unsigned int *a1, int a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  if (!v5)
  {
LABEL_13:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v13 = 136316162;
        v14 = v11;
        v15 = 2080;
        v16 = "_VideoReceiver_GetStream";
        v17 = 1024;
        v18 = 1905;
        v19 = 2048;
        v20 = a1;
        v21 = 1024;
        v22 = a2;
        _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] unknown streamID:%d", &v13, 0x2Cu);
      }
    }

    return 0;
  }

  v6 = 0;
  v7 = a1 + 427;
  while (1)
  {
    result = &a1[1088 * v6 + 424];
    if (a3)
    {
      if (*(result + 69))
      {
        return result;
      }

      goto LABEL_12;
    }

    if (*result == a2 || *(result + 1) == a2)
    {
      return result;
    }

    v9 = result[2];
    v10 = v7;
    if (v9)
    {
      break;
    }

LABEL_12:
    ++v6;
    v7 += 1088;
    if (v6 == v5)
    {
      goto LABEL_13;
    }
  }

  while (*v10 != a2 && *(v10 + 9) != a2)
  {
    v10 = (v10 + 2);
    if (!--v9)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t _VideoReceiver_EnqueueDecodedFrameForDisplay(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, _BYTE *a5)
{
  v109 = *MEMORY[0x1E69E9840];
  *a5 = 1;
  if (*(a2 + 1558) == 1 && *(a2 + 1568) == 1)
  {
    pthread_mutex_lock((a2 + 43056));
  }

  v10 = *a4;
  if (*(a2 + 1335) != 1)
  {
    if (*(a2 + 1688))
    {
      _VideoReceiver_EnqueueDecodedFrameForDisplay_cold_1(a2, buf);
      goto LABEL_102;
    }

    if (*(v10 + 67) == 1)
    {
      _VideoReceiver_UpdateVideoStallStatus(a2, 1);
    }

    _VideoReceiver_ShowFrame(a2, v10);
LABEL_90:
    v73 = 1;
    goto LABEL_91;
  }

  if (*(a2 + 1306) <= 1u && (*(a2 + 1558) != 1 || *(a2 + 1568) != 1) || *(v10 + 16) || *(v10 + 8))
  {
    _VideoReceiver_GetStream(a2, *(v10 + 48), *(v10 + 71));
    v94 = a3;
    if (*(a2 + 1558) == 1 && *(a2 + 1568) == 1)
    {
      if (*(a2 + 43508) == 1)
      {
        v17 = *(a2 + 43016);
        if (v17)
        {
          if ((*(v10 + 24) - v17) >= 0x7FFFFFFF)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v18 = VRTraceErrorLogLevelToCSTR();
              v19 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v20 = *(v10 + 24);
                v21 = *(v10 + 28);
                v22 = *(a2 + 43016);
                v23 = *(a2 + 43504);
                v24 = *(v10 + 80);
                *buf = 136317186;
                v96 = v18;
                v97 = 2080;
                v98 = "_VideoReceiver_ShouldEnqueueForDisplayToQueueInOrder";
                v99 = 1024;
                v100 = 590;
                v101 = 2048;
                v102 = a2;
                v103 = 1024;
                v104 = v20;
                v105 = 1024;
                LODWORD(v106) = v21;
                WORD2(v106) = 1024;
                *(&v106 + 6) = v22;
                WORD5(v106) = 1024;
                HIDWORD(v106) = v23;
                *v107 = 1024;
                *&v107[2] = v24;
                _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Can't enqueue a frame for display in the past: timestamp=%d, frameSequenceNumber=%d, showFrameRTPTimestamp=%u, numFramesInMultiImageQueueForDisplay=%d, streamIndex=%d", buf, 0x44u);
              }
            }

            v25 = 0;
            ++*(a2 + 42780);
            goto LABEL_76;
          }
        }
      }

      v33 = *(a2 + 43496);
      if (v33)
      {
        v34 = 0;
        v35 = *(v10 + 24);
        while (1)
        {
          v36 = v33;
          v33 = *(v33 + 112);
          v37 = v33 && v35 < *(v33 + 24);
          if (!(v34 & 1 | (v35 > *(v36 + 24))))
          {
            break;
          }

          if (v35 <= *(v36 + 24))
          {
            v34 = 1;
            if (!v33)
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (!v33)
            {
              v37 = 1;
            }

            v34 = 1;
            if (v37)
            {
LABEL_43:
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v91 = VRTraceErrorLogLevelToCSTR();
                v38 = *MEMORY[0x1E6986650];
                v39 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] == 1)
                {
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                  {
                    v40 = *(v10 + 28);
                    v41 = *(v36 + 28);
                    if (v33)
                    {
                      v42 = *(v33 + 28);
                    }

                    else
                    {
                      v42 = -1;
                    }

                    v64 = *(v10 + 80);
                    *buf = 136316930;
                    v96 = v91;
                    v97 = 2080;
                    v98 = "_VideoReceiver_EnqueueDecodedFrameForDisplayToQueueInOrder";
                    v99 = 1024;
                    v100 = 631;
                    v101 = 2048;
                    v102 = a2;
                    v103 = 1024;
                    v104 = v40;
                    v105 = 1024;
                    LODWORD(v106) = v41;
                    WORD2(v106) = 1024;
                    *(&v106 + 6) = v42;
                    WORD5(v106) = 1024;
                    HIDWORD(v106) = v64;
                    _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Inserting at the end of queue for display: frameSequenceNumber=%d before=%d newAfter=%d streamIndex=%d", buf, 0x3Eu);
                  }
                }

                else if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  v55 = *(v10 + 28);
                  v56 = *(v36 + 28);
                  if (v33)
                  {
                    v57 = *(v33 + 28);
                  }

                  else
                  {
                    v57 = -1;
                  }

                  v78 = *(v10 + 80);
                  *buf = 136316930;
                  v96 = v91;
                  v97 = 2080;
                  v98 = "_VideoReceiver_EnqueueDecodedFrameForDisplayToQueueInOrder";
                  v99 = 1024;
                  v100 = 631;
                  v101 = 2048;
                  v102 = a2;
                  v103 = 1024;
                  v104 = v55;
                  v105 = 1024;
                  LODWORD(v106) = v56;
                  WORD2(v106) = 1024;
                  *(&v106 + 6) = v57;
                  WORD5(v106) = 1024;
                  HIDWORD(v106) = v78;
                  _os_log_debug_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Inserting at the end of queue for display: frameSequenceNumber=%d before=%d newAfter=%d streamIndex=%d", buf, 0x3Eu);
                }
              }

              *(v10 + 112) = *(v36 + 112);
              *(v36 + 112) = v10;
              goto LABEL_74;
            }
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v92 = VRTraceErrorLogLevelToCSTR();
          v47 = *MEMORY[0x1E6986650];
          v48 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = *(v10 + 28);
              v50 = *(v36 + 28);
              if (v33)
              {
                v51 = *(v33 + 28);
              }

              else
              {
                v51 = -1;
              }

              v63 = *(v10 + 80);
              *buf = 136316930;
              v96 = v92;
              v97 = 2080;
              v98 = "_VideoReceiver_EnqueueDecodedFrameForDisplayToQueueInOrder";
              v99 = 1024;
              v100 = 625;
              v101 = 2048;
              v102 = a2;
              v103 = 1024;
              v104 = v49;
              v105 = 1024;
              LODWORD(v106) = v50;
              WORD2(v106) = 1024;
              *(&v106 + 6) = v51;
              WORD5(v106) = 1024;
              HIDWORD(v106) = v63;
              _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Inserting frame at queue for display HEAD: frameSequenceNumber=%d before=%d newAfter=%d streamIndex=%d", buf, 0x3Eu);
            }
          }

          else if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            v52 = *(v10 + 28);
            v53 = *(v36 + 28);
            if (v33)
            {
              v54 = *(v33 + 28);
            }

            else
            {
              v54 = -1;
            }

            v77 = *(v10 + 80);
            *buf = 136316930;
            v96 = v92;
            v97 = 2080;
            v98 = "_VideoReceiver_EnqueueDecodedFrameForDisplayToQueueInOrder";
            v99 = 1024;
            v100 = 625;
            v101 = 2048;
            v102 = a2;
            v103 = 1024;
            v104 = v52;
            v105 = 1024;
            LODWORD(v106) = v53;
            WORD2(v106) = 1024;
            *(&v106 + 6) = v54;
            WORD5(v106) = 1024;
            HIDWORD(v106) = v77;
            _os_log_debug_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Inserting frame at queue for display HEAD: frameSequenceNumber=%d before=%d newAfter=%d streamIndex=%d", buf, 0x3Eu);
          }
        }

        *(v10 + 112) = *(a2 + 43496);
        *(a2 + 43496) = v10;
      }

      else
      {
        *(v10 + 112) = 0;
        *(a2 + 43496) = v10;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v79 = VRTraceErrorLogLevelToCSTR();
          v80 = *MEMORY[0x1E6986650];
          v81 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              v82 = *(v10 + 28);
              v83 = *(v10 + 80);
              *buf = 136316418;
              v96 = v79;
              v97 = 2080;
              v98 = "_VideoReceiver_EnqueueDecodedFrameForDisplayToQueueInOrder";
              v99 = 1024;
              v100 = 643;
              v101 = 2048;
              v102 = a2;
              v103 = 1024;
              v104 = v82;
              v105 = 1024;
              LODWORD(v106) = v83;
              _os_log_impl(&dword_1DB56E000, v80, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Queue for display empty: adding frame with frameSequenceNumber=%d streamIndex=%d", buf, 0x32u);
            }
          }

          else if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            v84 = *(v10 + 28);
            v85 = *(v10 + 80);
            *buf = 136316418;
            v96 = v79;
            v97 = 2080;
            v98 = "_VideoReceiver_EnqueueDecodedFrameForDisplayToQueueInOrder";
            v99 = 1024;
            v100 = 643;
            v101 = 2048;
            v102 = a2;
            v103 = 1024;
            v104 = v84;
            v105 = 1024;
            LODWORD(v106) = v85;
            _os_log_debug_impl(&dword_1DB56E000, v80, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Queue for display empty: adding frame with frameSequenceNumber=%d streamIndex=%d", buf, 0x32u);
          }
        }
      }

LABEL_74:
      ++*(a2 + 43504);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        v28 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(v10 + 48);
            v30 = *(v10 + 80);
            v31 = *(v10 + 40);
            v32 = *(v10 + 24);
            *buf = 136316930;
            v96 = v26;
            v97 = 2080;
            v98 = "_VideoReceiver_EnqueueDecodedForDisplayToSimpleQueue";
            v99 = 1024;
            v100 = 651;
            v101 = 2048;
            v102 = a2;
            v103 = 1024;
            v104 = v29;
            v105 = 1024;
            LODWORD(v106) = v30;
            WORD2(v106) = 2048;
            *(&v106 + 6) = v31;
            HIWORD(v106) = 1024;
            *v107 = v32;
            _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] for streamID=%u enqueue frame for display. interleavedStreamIndex=%u subframe=%llu RTPTimestamp=%u", buf, 0x42u);
          }
        }

        else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          v59 = *(v10 + 48);
          v60 = *(v10 + 80);
          v61 = *(v10 + 40);
          v62 = *(v10 + 24);
          *buf = 136316930;
          v96 = v26;
          v97 = 2080;
          v98 = "_VideoReceiver_EnqueueDecodedForDisplayToSimpleQueue";
          v99 = 1024;
          v100 = 651;
          v101 = 2048;
          v102 = a2;
          v103 = 1024;
          v104 = v59;
          v105 = 1024;
          LODWORD(v106) = v60;
          WORD2(v106) = 2048;
          *(&v106 + 6) = v61;
          HIWORD(v106) = 1024;
          *v107 = v62;
          _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] for streamID=%u enqueue frame for display. interleavedStreamIndex=%u subframe=%llu RTPTimestamp=%u", buf, 0x42u);
        }
      }

      v43 = CMSimpleQueueEnqueue(*(a2 + 43048), v10);
      if (v43)
      {
        v44 = v43;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v45 = VRTraceErrorLogLevelToCSTR();
          v46 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v89 = *(v10 + 48);
            v90 = *(v10 + 40);
            v93 = *(v10 + 24);
            Count = CMSimpleQueueGetCount(*(a2 + 43048));
            *buf = 136317186;
            v96 = v45;
            v97 = 2080;
            v98 = "_VideoReceiver_EnqueueDecodedForDisplayToSimpleQueue";
            v99 = 1024;
            v100 = 655;
            v101 = 2048;
            v102 = a2;
            v103 = 1024;
            v104 = v89;
            v105 = 2048;
            *&v106 = v90;
            WORD4(v106) = 1024;
            *(&v106 + 10) = v93;
            HIWORD(v106) = 1024;
            *v107 = v44;
            *&v107[4] = 1024;
            v108 = Count;
            _os_log_error_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] for streamID=%d failed to enqueue frame for display. subframe=%llu RTPTimestamp=%u status=%d count=%d", buf, 0x48u);
          }
        }

        if ((*(a2 + 43020) & 1) == 0)
        {
          *(a2 + 43020) = 1;
          VCUtil_GenerateDiagnostics(0, 0, "VideoReceiver failed to enqueue frame into frameQueueForDisplay", 1u);
        }

        v25 = 0;
LABEL_76:
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v65 = VRTraceErrorLogLevelToCSTR();
          v66 = *MEMORY[0x1E6986650];
          v67 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = *(v10 + 24);
              *buf = 136316418;
              v96 = v65;
              v97 = 2080;
              v98 = "_VideoReceiver_EnqueueDecodedFrameForDisplay";
              v99 = 1024;
              v100 = 847;
              v101 = 2048;
              v102 = a2;
              v103 = 1024;
              v104 = v25;
              v105 = 1024;
              LODWORD(v106) = v68;
              _os_log_impl(&dword_1DB56E000, v66, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Finished _VideoReceiver_EnqueueForDisplay, result=%d RTPTimestamp=%u", buf, 0x32u);
              if ((v25 & 1) == 0)
              {
LABEL_80:
                _VideoReceiver_EnqueueDecodedFrameForDisplay_cold_2(a2, v10 + 24, buf);
LABEL_102:
                v73 = buf[0];
                goto LABEL_91;
              }

              goto LABEL_83;
            }
          }

          else if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            v75 = *(v10 + 24);
            *buf = 136316418;
            v96 = v65;
            v97 = 2080;
            v98 = "_VideoReceiver_EnqueueDecodedFrameForDisplay";
            v99 = 1024;
            v100 = 847;
            v101 = 2048;
            v102 = a2;
            v103 = 1024;
            v104 = v25;
            v105 = 1024;
            LODWORD(v106) = v75;
            _os_log_debug_impl(&dword_1DB56E000, v66, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Finished _VideoReceiver_EnqueueForDisplay, result=%d RTPTimestamp=%u", buf, 0x32u);
            if ((v25 & 1) == 0)
            {
              goto LABEL_80;
            }

LABEL_83:
            kdebug_trace();
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v69 = VRTraceErrorLogLevelToCSTR();
              v70 = *MEMORY[0x1E6986650];
              v71 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                {
                  v72 = *v94;
                  *buf = 136316162;
                  v96 = v69;
                  v97 = 2080;
                  v98 = "_VideoReceiver_EnqueueDecodedFrameForDisplay";
                  v99 = 1024;
                  v100 = 851;
                  v101 = 2048;
                  v102 = a2;
                  v103 = 1024;
                  v104 = v72;
                  _os_log_impl(&dword_1DB56E000, v70, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Calling VCVideoPlayer_QueueAlarmForDisplay, RTPTimestamp=%u", buf, 0x2Cu);
                }
              }

              else if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
              {
                v76 = *v94;
                *buf = 136316162;
                v96 = v69;
                v97 = 2080;
                v98 = "_VideoReceiver_EnqueueDecodedFrameForDisplay";
                v99 = 1024;
                v100 = 851;
                v101 = 2048;
                v102 = a2;
                v103 = 1024;
                v104 = v76;
                _os_log_debug_impl(&dword_1DB56E000, v70, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Calling VCVideoPlayer_QueueAlarmForDisplay, RTPTimestamp=%u", buf, 0x2Cu);
              }
            }

            VCVideoPlayer_QueueAlarmForDisplay(*(a2 + 40976), VideoReceiver_VideoAlarmForDisplay, a1, *(v10 + 24), *(v10 + 28), *(v10 + 67), *(v10 + 32));
            *a5 = 0;
            *a4 = 0;
            goto LABEL_90;
          }
        }

        if ((v25 & 1) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_83;
      }
    }

    v25 = 1;
    goto LABEL_76;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    v13 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(v10 + 24);
        v15 = *(v10 + 67);
        v16 = *(v10 + 66);
        *buf = 136316674;
        v96 = v11;
        v97 = 2080;
        v98 = "_VideoReceiver_EnqueueDecodedFrameForDisplay";
        v99 = 1024;
        v100 = 837;
        v101 = 2048;
        v102 = a2;
        v103 = 1024;
        v104 = v14;
        v105 = 1024;
        LODWORD(v106) = v15;
        WORD2(v106) = 1024;
        *(&v106 + 6) = v16;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Empty frame from decoder for display with RTPTimestamp=%u requestIntra=%d showFrame=%d", buf, 0x38u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v86 = *(v10 + 24);
      v87 = *(v10 + 67);
      v88 = *(v10 + 66);
      *buf = 136316674;
      v96 = v11;
      v97 = 2080;
      v98 = "_VideoReceiver_EnqueueDecodedFrameForDisplay";
      v99 = 1024;
      v100 = 837;
      v101 = 2048;
      v102 = a2;
      v103 = 1024;
      v104 = v86;
      v105 = 1024;
      LODWORD(v106) = v87;
      WORD2(v106) = 1024;
      *(&v106 + 6) = v88;
      _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Empty frame from decoder for display with RTPTimestamp=%u requestIntra=%d showFrame=%d", buf, 0x38u);
    }
  }

  v73 = 0;
LABEL_91:
  if (*(a2 + 1558) == 1 && *(a2 + 1568) == 1)
  {
    pthread_mutex_unlock((a2 + 43056));
  }

  return v73;
}

void _VideoReceiver_CheckAndRequestKeyFrame(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 && *(a2 + 67) == 1)
  {
    if (*(a1 + 1558) == 1 && *(a1 + 1568) == 1)
    {
      StreamWithStreamIndex = _VideoReceiver_GetStreamWithStreamIndex(a1, *(a2 + 80));
    }

    else if (*(a1 + 1306) < 2u)
    {
      StreamWithStreamIndex = _VideoReceiver_GetStream(a1, *(a2 + 48), *(a2 + 71));
    }

    else
    {
      StreamWithStreamIndex = _VideoReceiver_GetStreamWithTileIndex(a1, *(a2 + 44));
    }

    if (StreamWithStreamIndex)
    {
      v5 = *(a2 + 24);
      v6 = *(StreamWithStreamIndex + 100);
      v7 = *(a2 + 68);

      _VideoReceiver_DecoderRequestKeyFrame(a1, StreamWithStreamIndex, 0x12u, v5, v6, v7);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = *(a2 + 48);
        v11 = 136316162;
        v12 = v8;
        v13 = 2080;
        v14 = "_VideoReceiver_CheckAndRequestKeyFrame";
        v15 = 1024;
        v16 = 2399;
        v17 = 2048;
        v18 = a1;
        v19 = 1024;
        v20 = v10;
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Unable to find the VCVideoReceiverStream matching streamID=%d", &v11, 0x2Cu);
      }
    }
  }
}

int32x2_t *VideoReceiver_IncrementFIRCount(uint64_t a1, int a2)
{
  result = CheckInHandleDebug();
  if (result)
  {
    result[5342] = vadd_s32(result[5342], 0x100000001);
    if (a2 == 3)
    {
      ++result[5343].i32[0];
    }

    return CheckOutHandleDebug();
  }

  return result;
}

uint64_t _VideoReceiver_HandleSendRTCPSuccess(uint64_t a1, _BYTE *a2, double a3)
{
  result = CheckInHandleDebug();
  if (result)
  {
    *(result + 42472) = a3;
    if ((*a2 & 0x48) != 0)
    {
      ReportingEventDictionary = _VideoReceiver_CreateReportingEventDictionary(result);
      reportingVideoStreamEvent();
      VideoReceiver_IncrementFIRCount(a1, -1);
      if (ReportingEventDictionary)
      {
        CFRelease(ReportingEventDictionary);
      }
    }

    return CheckOutHandleDebug();
  }

  return result;
}

__CFDictionary *_VideoReceiver_CreateReportingEventDictionary(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = FourccToCStr(*(a1 + 1392));
    v5 = CFStringCreateWithCString(v2, v4, 0x8000100u);
    v6 = FourccToCStr(*(a1 + 1392));
    v7 = CFStringCreateWithCString(v2, v6, 0x8000100u);
    if (v5)
    {
      CFDictionaryAddValue(Mutable, @"VCMSStreamGroup", v5);
      CFRelease(v5);
    }

    if (v7)
    {
      CFDictionaryAddValue(Mutable, @"VCSPUUID", v7);
      CFRelease(v7);
    }
  }

  else
  {
    _VideoReceiver_CreateReportingEventDictionary_cold_1();
  }

  return Mutable;
}

void _VideoReceiver_SendRTCP(uint64_t a1, uint64_t a2, __int128 *a3, int a4, double a5)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a4 == 0;
  }

  if (!v5)
  {
    v8 = *(a2 + 48);
    v9 = a1 + 40960;
    v10 = *(a2 + 144);
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v16 = 0;
    v11 = RTCPCopySendControlParameters(a3, &v46, *(a1 + 43144), &v16);
    if (v11 < 0)
    {
      v13 = v11;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v35 = v14;
          v36 = 2080;
          v37 = "_VideoReceiver_SendRTCP";
          v38 = 1024;
          v39 = 2018;
          v40 = 1024;
          v41 = 2018;
          v42 = 2048;
          v43 = a1;
          v44 = 1024;
          v45 = v13;
          _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoReceiver.c:%d: VideoReceiver[%p] deep copy of rtcp send control params failed (%08X)", buf, 0x32u);
        }
      }
    }

    else
    {
      v12 = *(v9 + 1520);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___VideoReceiver_SendRTCP_block_invoke;
      block[3] = &__block_descriptor_tmp_6;
      v26 = v54;
      v27 = v55;
      v22 = v50;
      v23 = v51;
      v24 = v52;
      v25 = v53;
      v18 = v46;
      v19 = v47;
      v20 = v48;
      v21 = v49;
      v28 = v56;
      v29 = v8;
      v30 = a1;
      v31 = v10;
      v32 = a5;
      v33 = v16;
      dispatch_async(v12, block);
    }
  }
}

void _VideoReceiver_HandleDataBuffer(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = a1 + 40960;
  value = *a3;
  if (*(a1 + 43473) != 1)
  {
LABEL_7:
    v14[0] = 0;
    v13 = 1;
    memset(&v12, 170, sizeof(v12));
    CMSampleBufferGetPresentationTimeStamp(&v12, value);
    v10 = *(v7 + 2200);
    v11 = v12;
    if (VCVideoReceiverDecodedFrame_Create(v10, v14, value, 0, a4, &v11.value))
    {
      if ((_VideoReceiver_EnqueueDecodedFrameForDisplay(*(a2 + 144), a1, a4, v14, &v13) & 1) == 0)
      {
        _VideoReceiver_HandleDataBuffer_cold_2();
      }
    }

    else
    {
      _VideoReceiver_HandleDataBuffer_cold_1();
    }

    if (v14[0])
    {
      if (v13 == 1)
      {
        VCVideoReceiverDecodedFrame_Destroy(v14);
      }
    }

    return;
  }

  v12.value = 0;
  if ((VCSignalDecoder_DecodeFrame(*(a1 + 43544), value, &v12) & 0x80000000) == 0)
  {
    value = v12.value;
    if (v12.value)
    {
      ++*(v7 + 1828);
      if (*a3)
      {
        CFRelease(*a3);
        value = v12.value;
      }

      *a3 = value;
      goto LABEL_7;
    }
  }

  _VideoReceiver_DecoderRequestKeyFrame(a1, a2, 0x11u, *a4, *(a2 + 100), *(a4 + 44));
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VideoReceiver_HandleDataBuffer_cold_3();
    }
  }
}

void _VideoReceiver_DecoderRequestKeyFrame(uint64_t a1, unsigned __int16 *a2, unsigned int a3, int a4, int a5, int a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a5 & a6;
  if ((a5 & a6) != 0)
  {
    v10 = 27;
  }

  else
  {
    v10 = a3;
  }

  if (*(a2 + 70) == 1 && ((v11 = a4 - *(a1 + 43368)) != 0 ? (v12 = v11 >= 0x7FFFFFFF) : (v12 = 1), v12))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 43368);
        v23 = *a2;
        v24 = kVCKeyFrameRequestReasonStrings_0[v10];
        v25 = *(a2 + 70);
        v26 = v23 == a2[2];
        v27 = 136317442;
        v28 = v20;
        v29 = 2080;
        v30 = "_VideoReceiver_RequestKeyFrame";
        v31 = 1024;
        v32 = 2259;
        v33 = 2048;
        v34 = a1;
        v35 = 1024;
        v36 = a4;
        v37 = 1024;
        v38 = v22;
        v39 = 1024;
        *v40 = v23;
        *&v40[4] = 2080;
        *&v40[6] = v24;
        v41 = 1024;
        v42 = v25;
        v43 = 1024;
        v44 = v26;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Decoder requested a key frame for timestamp=%u, when a more recent key frame with timestamp=%u has already been assembled, skipping FIR. Stream %u reason=%s isTemporalScaledStream=%d isBaseLayer=%d", &v27, 0x4Eu);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = *a2;
        v16 = kVCKeyFrameRequestReasonStrings_0[v10];
        v17 = *(a2 + 70);
        v18 = v15 == a2[2];
        v27 = 136317186;
        v28 = v13;
        v29 = 2080;
        v30 = "_VideoReceiver_RequestKeyFrame";
        v31 = 1024;
        v32 = 2261;
        v33 = 2048;
        v34 = a1;
        v35 = 1024;
        v36 = a4;
        v37 = 1024;
        v38 = v15;
        v39 = 2080;
        *v40 = v16;
        *&v40[8] = 1024;
        *&v40[10] = v17;
        v41 = 1024;
        v42 = v18;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Requested key frame for timestamp=%u stream=%u reason=%s isTemporalScaledStream=%d isBaseLayer=%d", &v27, 0x48u);
      }
    }

    pthread_mutex_lock((a1 + 42256));
    VideoPacketBuffer_NeedRefreshFrame(*(a2 + 16), 1, 0, v10);
    pthread_mutex_unlock((a1 + 42256));
    v19 = micro();
    _VideoReceiver_DecoderNeedsRefresh(a1, a2, v9 & 1, v10, v19);
  }
}

uint64_t _VideoReceiver_DecryptFrame(uint64_t a1, OpaqueCMBlockBuffer *a2, CMBlockBufferRef *a3)
{
  if (!a1)
  {
    return 2149515265;
  }

  v4 = VCSFrameCryptorH264_Decrypt(*(a1 + 4288), a2, a3);
  if ((v4 & 0x80000000) != 0)
  {
    _VideoReceiver_DecryptFrame_cold_1();
  }

  RTPProcessDecryptionStatusChange(*(a1 + 48), v4 >= 0);
  return v4;
}

uint64_t VideoReceiver_SetTargetStreamID(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149515266;
  }

  v4 = v3;
  v5 = v3 + 36864;
  if (*(v3 + 40888) != a2 || *(v3 + 40894) != 1)
  {
    Stream = _VideoReceiver_GetStream(v3, a2, *(v3 + 77));
    if (!Stream)
    {
      VideoReceiver_SetTargetStreamID_cold_1();
      v6 = v16;
      goto LABEL_22;
    }

    v8 = Stream;
    if ((*(Stream + 70) & 1) != 0 || *(v5 + 4022) != 1)
    {
      v11 = 0;
    }

    else
    {
      v9 = *(v5 + 4016);
      v11 = v9 == a2 && v9 != *(v5 + 4024);
    }

    _VideoReceiver_UpdateStreamSwitchContextForTargetStream(v4, a2, *(Stream + 1), *(Stream + 2));
    if (*(v5 + 4022) != 1)
    {
      goto LABEL_20;
    }

    v12 = 40888;
    if (*(v8 + 70))
    {
      v12 = 40892;
    }

    v13 = 40880;
    if (*(v8 + 70))
    {
      v13 = 40884;
    }

    if (*(v4 + v13) != *(v4 + v12))
    {
      if (((*(v8 + 64) | v11) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
LABEL_20:
      if (!v11)
      {
LABEL_21:
        v6 = 0;
LABEL_22:
        CheckOutHandleDebug();
        return v6;
      }
    }

    v15 = micro();
    _VideoReceiver_SendFIR(v4, v8, 0, 25, v15);
    goto LABEL_21;
  }

  CheckOutHandleDebug();
  return 0;
}

void _VideoReceiver_UpdateStreamSwitchContextForTargetStream(uint64_t a1, __int16 a2, __int16 a3, __int16 a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1 + 36864;
  *(a1 + 40888) = a2;
  *(a1 + 40892) = a4;
  *(a1 + 40890) = a3;
  *(a1 + 40894) = 1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 1296);
      v9 = *(v5 + 4024);
      v10 = *(v5 + 4028);
      v11 = 136316674;
      v12 = v6;
      v13 = 2080;
      v14 = "_VideoReceiver_UpdateStreamSwitchContextForTargetStream";
      v15 = 1024;
      v16 = 4215;
      v17 = 2048;
      v18 = a1;
      v19 = 2048;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = v10;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] participantId[%llu]: Setting target stream info. targetStreamID=%d, targetBaseStreamID=%d", &v11, 0x3Cu);
    }
  }
}

uint64_t VideoReceiver_SetShouldEnableFaceZoom(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149515266;
  }

  v4 = v3;
  v5 = v3 + 40960;
  if (*(v3 + 1568) == 1)
  {
    if (*(v3 + 1572))
    {
      v6 = 0;
      v7 = v3 + 6032;
      do
      {
        VideoDecoder_SetShouldEnableFaceZoom();
        ++v6;
        v7 += 4352;
      }

      while (v6 < *(v4 + 1572));
    }
  }

  else
  {
    VideoDecoder_SetShouldEnableFaceZoom();
  }

  *(v5 + 2232) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoReceiver_SetShouldEnableMLEnhance(uint64_t a1, int a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149515266;
  }

  v6 = v5;
  v7 = *v5;
  if (v7)
  {
    v8 = v5;
    while (*(v8 + 848) != a2)
    {
      v8 += 1088;
      if (!--v7)
      {
        goto LABEL_17;
      }
    }

    if (*(v8 + 1804) != a3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136316418;
          v14 = v9;
          v15 = 2080;
          v16 = "VideoReceiver_SetShouldEnableMLEnhance";
          v17 = 1024;
          v18 = 4331;
          v19 = 2048;
          v20 = v6;
          v21 = 1024;
          v22 = a3;
          v23 = 1024;
          v24 = a2;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] ML Enhance setting shouldEnableMLEnhance=%u on streamID=%u", &v13, 0x32u);
        }
      }

      *(v8 + 1804) = a3;
      if (*(v6 + 20440) == a2)
      {
        if (a3)
        {
          v11 = 2 * (v8[452] & 7);
        }

        else
        {
          LOBYTE(v11) = 0;
        }

        VideoDecoder_SetShouldEnableMLEnhance(*(v8 + 754), v11);
      }
    }
  }

LABEL_17:
  CheckOutHandleDebug();
  return 0;
}

void _VideoReceiver_ProcessRTTStatistics(unsigned int *a1, _DWORD *a2)
{
  if (*a2 == 3)
  {
    v3 = (a2[13] << (*(a1 + 40896) ^ 1)) / 1000.0;
    if (v3 != 0.0)
    {
      v4 = *a1;
      if (v4)
      {
        v5 = 0;
        v6 = 456;
        do
        {
          v7 = *&a1[v6];
          if (v7)
          {
            VideoPacketBuffer_SetRoundTripTime(v7, v3);
            v4 = *a1;
          }

          ++v5;
          v6 += 1088;
        }

        while (v5 < v4);
      }
    }
  }
}

void _VideoReceiver_UnregisterStatistics(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a1 + 40960;
  VCRateControlUnregisterStatisticsChangeHandler(*(a1 + 43152), 3, *(a1 + 43388));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v2 + 2192);
      v6 = *(v2 + 2428);
      v7 = 136316418;
      v8 = v3;
      v9 = 2080;
      v10 = "_VideoReceiver_UnregisterStatistics";
      v11 = 1024;
      v12 = 4580;
      v13 = 2048;
      v14 = a1;
      v15 = 2048;
      v16 = v5;
      v17 = 1024;
      v18 = v6;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Unregistered statisticsCollector[%p] with index=%d", &v7, 0x36u);
    }
  }
}

void _VideoReceiver_RegisterStatistics(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1404) == 1)
  {
    v2 = a1 + 40960;
    if (*(a1 + 43388) != -1)
    {
      _VideoReceiver_UnregisterStatistics(a1);
    }

    v3 = *(v2 + 2192);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___VideoReceiver_RegisterStatistics_block_invoke;
    v8[3] = &__block_descriptor_tmp_7_0;
    v8[4] = a1;
    *(v2 + 2428) = VCRateControlRegisterStatisticsChangeHandler(v3, 3, v8);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v2 + 2192);
        v7 = *(v2 + 2428);
        *buf = 136316418;
        v10 = v4;
        v11 = 2080;
        v12 = "_VideoReceiver_RegisterStatistics";
        v13 = 1024;
        v14 = 4591;
        v15 = 2048;
        v16 = a1;
        v17 = 2048;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Registered statisticsCollector[%p] with index=%d", buf, 0x36u);
      }
    }
  }
}

uint64_t _VideoReceiver_ResetReportingInfoOnModeSwitch(uint64_t a1)
{
  v2 = a1 + 40936;
  *(a1 + 42864) = 0;
  *(a1 + 42840) = 0u;
  *(a1 + 42872) = 0u;
  pthread_mutex_lock((a1 + 42192));
  if (*v2 != 0xFFFFFFFFLL)
  {
    SummerReset();
  }

  if (*(v2 + 8) != 0xFFFFFFFFLL)
  {
    SummerReset();
  }

  if (*(v2 + 16) != 0xFFFFFFFFLL)
  {
    SummerReset();
  }

  if (*(v2 + 24) != 0xFFFFFFFFLL)
  {
    SummerReset();
  }

  if (*(v2 + 32) != 0xFFFFFFFFLL)
  {
    SummerReset();
  }

  result = pthread_mutex_unlock((a1 + 42192));
  v4 = 0;
  *(v2 + 1854) = 0;
  *(v2 + 1176) = 0;
  v5 = (a1 + 40992);
  do
  {
    v6 = 35;
    v7 = v5;
    do
    {
      *v7 = 0;
      v7[35] = 0;
      ++v7;
      --v6;
    }

    while (v6);
    ++v4;
    v5 += 70;
  }

  while (v4 != 4);
  return result;
}

FILE **_VideoReceiver_SwitchIntoOneToOne(uint64_t a1, int a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a1 + 40896;
  *(a1 + 40900) = *(a3 + 96);
  *(a1 + 40896) = a2;
  _VideoReceiver_UnregisterStatistics(a1);
  v7 = *(v6 + 2256);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a3 + 88);
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  *(v6 + 2256) = v8;
  _VideoReceiver_RegisterStatistics(a1);
  _VideoReceiver_UpdateMediaControlInfo(a1);
  *(a1 + 1329) = *(a3 + 100);
  v9 = *(a1 + 1680);
  if (v9)
  {
    v9(*(a1 + 1624), *(a3 + 96));
  }

  if (*(a1 + 1404) == 1)
  {
    _VideoReceiver_ReportRTXConfiguration(a1);
  }

  if (*(a3 + 102) == 1 && *(a3 + 104) == 2 || (*(v6 + 2579) & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    if ((*(a3 + 101) & 1) == 0)
    {
      v12 = *MEMORY[0x1E695E480];
      goto LABEL_16;
    }

    v10 = 0;
  }

  v11 = *(a3 + 101);
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v31 = v11;
  v14 = CFNumberCreate(v12, kCFNumberIntType, &v31);
  CFDictionaryAddValue(Mutable, @"RtcpForLoss", v14);
  CFRelease(v14);
  v31 = v10;
  v15 = CFNumberCreate(v12, kCFNumberIntType, &v31);
  CFDictionaryAddValue(Mutable, @"RtcpForLtrAck", v15);
  CFRelease(v15);
  reportingFeatureConfigEvent();
  CFRelease(Mutable);
LABEL_16:
  _VideoReceiver_ResetReportingInfoOnModeSwitch(a1);
  VCNACKGenerator_SetRTXPacketDetectionEnabled(*(v6 + 2480), a2);
  v16 = *(a3 + 124);
  *(a1 + 1334) = v16;
  *(v6 + 2392) = v16;
  *(a1 + 1556) = *(a3 + 126);
  v17 = CFDictionaryCreateMutable(v12, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v31 = v16;
  v18 = CFNumberCreate(v12, kCFNumberIntType, &v31);
  CFDictionaryAddValue(v17, @"FecHeaderVer", v18);
  CFRelease(v18);
  v31 = 2;
  v19 = CFNumberCreate(v12, kCFNumberIntType, &v31);
  CFDictionaryAddValue(v17, @"VCMSDirection", v19);
  CFRelease(v19);
  reportingFeatureConfigEvent();
  CFRelease(v17);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(v6 + 2392);
      v29 = *(a1 + 1556);
      v31 = 136316418;
      v32 = v26;
      v33 = 2080;
      v34 = "_VideoReceiver_SwitchIntoOneToOne";
      v35 = 1024;
      v36 = 4686;
      v37 = 2048;
      v38 = a1;
      v39 = 1024;
      v40 = v28;
      v41 = 1024;
      v42 = v29;
      _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] FEC Negotiated header version=%d, fecLossFeedbackBitfieldLength=%u", &v31, 0x32u);
    }
  }

  return VRDump_SwitchMode(*(v6 + 2520), a2, v20, v21, v22, v23, v24, v25);
}

void _VideoReceiver_ReportRTXConfiguration(unsigned __int8 *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  LODWORD(valuePtr) = a1[1404];
  v4 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"NacksRTXEnabled", v4);
  CFRelease(v4);
  LODWORD(valuePtr) = a1[1420];
  v5 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"NacksRTXDelayedEnabled", v5);
  CFRelease(v5);
  LOBYTE(v6) = a1[1408];
  valuePtr = v6;
  v7 = CFNumberCreate(v2, kCFNumberFloat32Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"NacksRTXConfigVersion", v7);
  CFRelease(v7);
  reportingFeatureConfigEvent();
  CFRelease(Mutable);
}

int64x2_t _VideoReceiver_AddFECStatsPerFrameSize(int64x2_t *a1, int64x2_t *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a2 + 1;
    v5 = a1 + 1;
    do
    {
      v6 = *v5;
      v5[-1] = vaddq_s64(v5[-1], v4[-1]);
      v7 = *v4;
      v4 += 2;
      result = vaddq_s64(v6, v7);
      *v5 = result;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

int32x4_t _VideoReceiver_AddFECStats(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = (a2 + 20);
    v5 = (a1 + 20);
    do
    {
      *(&v5[-2] + 12) = vaddq_s64(*(&v5[-2] + 12), *(&v4[-2] + 12));
      result = vaddq_s32(*v5, *v4);
      *v5 = result;
      v5[-1].i32[3] += v4->i32[1] + v4->i32[0] + v4->i32[2] + v4->i32[3];
      v4 += 3;
      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _VideoReceiver_GetVPBStats(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v45 = *MEMORY[0x1E69E9840];
  if (!v1)
  {
    _VideoReceiver_GetVPBStats_cold_3(&__dst);
    return __dst.u32[0];
  }

  v4 = v2;
  if (!v2)
  {
    _VideoReceiver_GetVPBStats_cold_2(&__dst);
    return __dst.u32[0];
  }

  v5 = v3;
  if (!v3)
  {
    _VideoReceiver_GetVPBStats_cold_1(&__dst);
    return __dst.u32[0];
  }

  v6 = v1;
  if (*v1)
  {
    v7 = 0;
    v28 = v2 + 49152;
    v29 = v1 + 424;
    v8 = (v2 + 51220);
    v9 = v2 + 9248;
    v27 = v2 + 9604;
    v26 = v2 + 30412;
    do
    {
      v10 = &v29[1088 * v7];
      v11 = *(v10 + 16);
      if (v11)
      {
        bzero(&__dst, 0xC820uLL);
        VideoPacketBuffer_GetStatistics(v11, &__dst);
        *v4 = vaddq_s32(*v4, __dst);
        *(v4 + 9544) = v35 + *(v4 + 9544);
        *(v4 + 9568) = vadd_s32(*(v4 + 9568), v37);
        *(v4 + 9576) += v38;
        *(v4 + 9600) += v40;
        *(v4 + 9592) = vadd_s32(*(v4 + 9592), v39);
        *v8 = vadd_s32(*v8, v43);
        v12 = 2363;
        *(v28 + 2076) += v44;
        do
        {
          *(v4 + 4 * v12) += __dst.i32[v12];
          ++v12;
        }

        while (v12 != 2386);
        v13 = *(v4 + 9560);
        if (v13 <= v36)
        {
          v13 = v36;
        }

        *(v4 + 9560) = v13;
        _VideoReceiver_AddFECStats(v4 + 496, &v33, 0x65u);
        _VideoReceiver_AddFECStats(v4 + 16, &v32, 0xAu);
        _VideoReceiver_AddFECStatsPerFrameSize((v4 + 5344), v34, 0x7Au);
        for (i = 0; i != 102; ++i)
        {
          v15 = *(v9 + i * 2);
          if (v15 <= v34[244].u16[i])
          {
            LOWORD(v15) = v34[244].i16[i];
          }

          *(v9 + i * 2) = v15;
        }

        v16 = 0;
        v17 = v27;
        v18 = &v41;
        do
        {
          for (j = 0; j != 204; j += 2)
          {
            *(v17 + j) += *(v18 + j);
          }

          ++v16;
          v18 += 51;
          v17 += 204;
        }

        while (v16 != 102);
        v20 = 0;
        v21 = v26;
        v22 = &v42;
        do
        {
          for (k = 0; k != 204; k += 2)
          {
            *(v21 + k) += *(v22 + k);
          }

          ++v20;
          v22 += 51;
          v21 += 204;
        }

        while (v20 != 102);
      }

      v24 = *(v4 + 9576);
      if (v24)
      {
        *(v4 + 9552) = *(v4 + 9544) / v24;
      }

      v30 = 0;
      __dst.i32[0] = 0;
      RTPGetRecvStats(*(v10 + 6), &__dst, &v30);
      *v5 += __dst.i32[0];
      ++v7;
    }

    while (v7 < *v6);
  }

  return 0;
}

void _VideoReceiver_ReportVideoPlayerStatsForReporting(uint64_t a1, __CFDictionary *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      LODWORD(v17[0]) = *(a1 + 144);
      v4 = *MEMORY[0x1E695E480];
      v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, v17);
      CFDictionaryAddValue(a2, @"VPAVTDCount", v5);
      CFRelease(v5);
      v17[0] = *(a1 + 128);
      v6 = CFNumberCreate(v4, kCFNumberDoubleType, v17);
      CFDictionaryAddValue(a2, @"VPAVTDSum", v6);
      CFRelease(v6);
      v17[0] = *(a1 + 136);
      v7 = CFNumberCreate(v4, kCFNumberDoubleType, v17);
      CFDictionaryAddValue(a2, @"VPAVTDAbsSum", v7);
      CFRelease(v7);
      v17[0] = *(a1 + 120);
      v8 = CFNumberCreate(v4, kCFNumberDoubleType, v17);
      CFDictionaryAddValue(a2, @"VPAVTDMax", v8);
      CFRelease(v8);
      v17[0] = *(a1 + 112);
      v9 = CFNumberCreate(v4, kCFNumberDoubleType, v17);
      CFDictionaryAddValue(a2, @"VPAVTDMin", v9);
      CFRelease(v9);
      LODWORD(v17[0]) = *(a1 + 104);
      v10 = CFNumberCreate(v4, kCFNumberIntType, v17);
      CFDictionaryAddValue(a2, @"VPAVSOCount", v10);
      CFRelease(v10);
      v17[0] = *(a1 + 88);
      v11 = CFNumberCreate(v4, kCFNumberDoubleType, v17);
      CFDictionaryAddValue(a2, @"VPAVSOSum", v11);
      CFRelease(v11);
      v17[0] = *(a1 + 96);
      v12 = CFNumberCreate(v4, kCFNumberDoubleType, v17);
      CFDictionaryAddValue(a2, @"VPAVSOAbsSum", v12);
      CFRelease(v12);
      v17[0] = *(a1 + 80);
      v13 = CFNumberCreate(v4, kCFNumberDoubleType, v17);
      CFDictionaryAddValue(a2, @"VPAVSOMax", v13);
      CFRelease(v13);
      v17[0] = *(a1 + 72);
      v14 = CFNumberCreate(v4, kCFNumberDoubleType, v17);
      CFDictionaryAddValue(a2, @"VPAVSOMin", v14);
      CFRelease(v14);
      LODWORD(v17[0]) = *(a1 + 152);
      v15 = CFNumberCreate(v4, kCFNumberIntType, v17);
      CFDictionaryAddValue(a2, @"VPDECAC", v15);
      CFRelease(v15);
      LODWORD(v17[0]) = *(a1 + 156);
      v16 = CFNumberCreate(v4, kCFNumberIntType, v17);
      CFDictionaryAddValue(a2, @"VPDISAC", v16);
      CFRelease(v16);
    }
  }
}

void _VideoReceiver_AddMLStatsToReportingDictionary(uint64_t a1, __CFDictionary *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = a1 + 40960;
  valuePtr = *(a1 + 42790);
  v4 = *MEMORY[0x1E695E480];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a2, @"DecOutMLEnhancedFrameCnt", v5);
  CFRelease(v5);
  v6 = 0;
  for (i = (a1 + 40992); ; i += 70)
  {
    v8 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(v4, 35, MEMORY[0x1E695E9C0]);
    v10 = CFArrayCreateMutable(v4, 35, v8);
    v11 = v10;
    if (!Mutable || v10 == 0)
    {
      break;
    }

    v13 = 0;
    v14 = i;
    do
    {
      v15 = CFNumberCreate(v4, kCFNumberIntType, v14);
      v16 = CFNumberCreate(v4, kCFNumberIntType, v14 + 35);
      CFArraySetValueAtIndex(Mutable, v13, v15);
      CFArraySetValueAtIndex(v11, v13, v16);
      if (v15)
      {
        CFRelease(v15);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      *v14 = 0;
      v14[35] = 0;
      ++v13;
      ++v14;
    }

    while (v13 != 35);
    v17 = CFStringCreateWithFormat(v4, 0, @"%@_%d", @"DecOutMLEnhancedHistInputRes", v6);
    v18 = CFStringCreateWithFormat(v4, 0, @"%@_%d", @"DecOutMLEnhancedHistOutputRes", v6);
    CFDictionaryAddValue(a2, v17, Mutable);
    CFDictionaryAddValue(a2, v18, v11);
    if (v17)
    {
      CFRelease(v17);
    }

    CFRelease(Mutable);
    if (v18)
    {
      CFRelease(v18);
    }

    CFRelease(v11);
    if (++v6 == 4)
    {
      *(v19 + 1152) = 0;
      return;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void VideoReceiverConfig_CleanupFeatureStrings(_DWORD *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 0;
    v4 = 16;
    do
    {
      v5 = *&a1[v4];
      if (v5)
      {
        CFRelease(v5);
        *&a1[v4] = 0;
        v2 = *a1;
      }

      ++v3;
      v4 += 32;
    }

    while (v3 < v2);
  }

  *a1 = 0;
}

uint64_t _VideoReceiver_CloseSummers(uint64_t a1)
{
  v1 = (a1 + 40936);
  if (*(a1 + 40936) != 0xFFFFFFFFLL)
  {
    SummerCloseHandle();
  }

  if (v1[1] != 0xFFFFFFFFLL)
  {
    SummerCloseHandle();
  }

  if (v1[4] != 0xFFFFFFFFLL)
  {
    SummerCloseHandle();
  }

  if (v1[2] != 0xFFFFFFFFLL)
  {
    SummerCloseHandle();
  }

  result = v1[3];
  if (result != 0xFFFFFFFFLL)
  {

    return SummerCloseHandle();
  }

  return result;
}

uint64_t _VideoReceiver_CreateSummers(uint64_t *a1)
{
  if ((SummerCreateHandle(a1 + 5117, 400) & 0x80000000) == 0 && (SummerCreateHandle(a1 + 5118, 400) & 0x80000000) == 0 && (SummerCreateHandle(a1 + 5121, 400) & 0x80000000) == 0 && (SummerCreateHandle(a1 + 5119, 400) & 0x80000000) == 0 && (SummerCreateHandle(a1 + 5120, 400) & 0x80000000) == 0)
  {
    return 1;
  }

  _VideoReceiver_CloseSummers(a1);
  return 0;
}

uint64_t VideoReceiver_CreateHandle(uint64_t *a1, _BYTE *a2, const void *a3, _OWORD *a4, const void *a5)
{
  v145 = *MEMORY[0x1E69E9840];
  v5 = 2149515265;
  if (!*a2 || (a2[1339] & 1) == 0 && !*(a2 + 350))
  {
    return v5;
  }

  v10 = malloc_type_calloc(1uLL, 0xAA20uLL, 0x10E0040483DFA3EuLL);
  if (!v10)
  {
    return 2149515267;
  }

  v11 = v10;
  v12 = v10 + 40864;
  memcpy(v10, a2, 0x658uLL);
  v13 = *(v11 + 172);
  if (v13)
  {
    CFRetain(v13);
  }

  v14 = *(v11 + 173);
  if (v14)
  {
    CFRetain(v14);
  }

  v132 = a2;
  v129 = a1;
  *(v12 + 9) = *(v11 + 290);
  if (*v11)
  {
    v15 = 0;
    v16 = (v11 + 80);
    v17 = (v11 + 5984);
    v5 = 2;
    while (1)
    {
      v18 = *(v16 - 2);
      if (v18)
      {
        CFRetain(v18);
      }

      if (*v16)
      {
        v5 = VCSFrameCryptorH264_Create(*v16, v17);
        v19 = *v11;
        if (v5)
        {
          if (*v11)
          {
            v36 = 0;
            v37 = (v11 + 5984);
            do
            {
              VCSFrameCryptorH264_Destroy(v37);
              ++v36;
              v37 += 544;
            }

            while (v36 < *v11);
          }

          goto LABEL_118;
        }
      }

      else
      {
        v19 = *v11;
      }

      ++v15;
      v16 += 16;
      v17 += 544;
      if (v15 >= v19)
      {
        goto LABEL_21;
      }
    }
  }

  v5 = 2;
LABEL_21:
  if (VCDefaults_GetBoolValueForKey(@"SupportsOneToOneMode", 0) || *(v12 + 9) || (v11[1329] & 1) != 0)
  {
    if (*(v132 + 303))
    {
      IsInternalOSInstalled = VRTraceIsInternalOSInstalled();
    }

    else
    {
      IsInternalOSInstalled = 0;
    }

    *(v11 + 303) = IsInternalOSInstalled;
    v11[1308] = VCDefaults_GetBoolValueForKey(@"forceUseInternalRTPThreading", v132[1308]);
    v11[1338] = VCDefaults_GetBoolValueForKey(@"enableDynamicVideoJitterBufferModeChange", 0);
    if (*(v132 + 291) == 2)
    {
      v21 = 16;
    }

    else
    {
      v21 = 5;
    }

    *(v11 + 681) = v21;
    v11[1405] = VCDefaults_GetBoolValueForKey(@"useRTTForFIRThrottling", 0);
    if (*(v11 + 190) == 0.0)
    {
      *(v11 + 190) = VCDefaults_GetDoubleValueForKey(@"noVideoDisplayFailSafeTimeout", 5.0);
    }

    v22 = *(v11 + 168);
    if (v22)
    {
      v22 = CFRetain(v22);
    }

    *(v12 + 190) = v22;
    _VideoReceiver_UpdateMediaControlInfo(v11);
    *(v12 + 615) = *(v132 + 339);
    if (a3)
    {
      v23 = CFRetain(a3);
    }

    else
    {
      v23 = 0;
    }

    *(v12 + 191) = v23;
    *(v12 + 580) = VCReporting_GetDynamicReportingModuleID();
    reportingInheritModuleSpecificInfoFromParent();
    *(v11 + 210) = *(v132 + 161);
    *(v11 + 205) = *(v132 + 156);
    *(v11 + 206) = *(v132 + 158);
    *(v11 + 1624) = *(v132 + 77);
    *(v11 + 207) = 0;
    *(v11 + 104) = *(v132 + 1272);
    *(v12 + 14) = 0xFFFFFFFFLL;
    *(v12 + 15) = 0xFFFFFFFFLL;
    *(v12 + 8) = 0xFFFFFFFFLL;
    *(v12 + 1700) = 0;
    *(v12 + 500) = 0;
    *(v12 + 254) = 0;
    *(v12 + 540) = 0;
    v12[2164] = 0;
    *(v11 + 2654) = 0u;
    *(v11 + 42840) = 0u;
    *(v11 + 2676) = 0u;
    *(v11 + 42872) = 0u;
    *(v12 + 246) = 0x7FEFFFFFFFFFFFFFLL;
    *(v12 + 207) = micro();
    *(v12 + 310) = 0x3FD0000000000000;
    v12[2561] = 1;
    *(v12 + 322) = 0;
    v12[2610] = 1;
    *(v12 + 1194) = 0;
    v12[2328] = v132[1220];
    *(v12 + 308) = 0;
    *(v12 + 309) = (2 * *(v11 + 681));
    v12[56] = 0;
    *(v12 + 631) = -1;
    *(v12 + 511) = 0;
    v12[2584] = _os_feature_enabled_impl();
    *(v12 + 324) = 0x7FF8000000000000;
    v12[2611] = 0;
    v24 = *MEMORY[0x1E695E480];
    v128 = (v12 + 2176);
    CMSimpleQueueCreate(*MEMORY[0x1E695E480], 2000, v12 + 272);
    v127 = (v12 + 2184);
    CMSimpleQueueCreate(v24, *(v12 + 309), v12 + 273);
    pthread_mutex_init((v11 + 43056), 0);
    v25 = CMMemoryPoolCreate(0);
    *(v12 + 283) = v25;
    Allocator = CMMemoryPoolGetAllocator(v25);
    *(v12 + 284) = Allocator;
    CFRetain(Allocator);
    v12[2392] = v132[1339];
    if (a5)
    {
      v27 = CFRetain(a5);
    }

    else
    {
      v27 = 0;
    }

    *(v12 + 286) = v27;
    *(v12 + 295) = 0x7FF8000000000000;
    *(v12 + 294) = 0x7FF8000000000000;
    *(v12 + 296) = 0x7FF8000000000000;
    if (a4)
    {
      *(v11 + 2687) = *a4;
    }

    v12[2048] = 0;
    v12[2064] = 0;
    *(v12 + 257) = 0;
    *(v12 + 259) = 0;
    *(v12 + 265) = 0;
    *(v12 + 261) = 0;
    v28 = *(v12 + 312);
    v29 = *(v132 + 171);
    *(v12 + 312) = v29;
    if (v29)
    {
      CFRetain(v29);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (VRTraceIsInternalOSInstalled())
    {
      v12[2048] = CFPreferencesGetAppBooleanValue(@"enableReceiverPacketDump", @"com.apple.VideoConference", 0) != 0;
      v12[2064] = CFPreferencesGetAppBooleanValue(@"enableReceiverFrameDump", @"com.apple.VideoConference", 0) != 0;
      v12[2081] = CFPreferencesGetAppBooleanValue(@"enablePacketLogging", @"com.apple.VideoConference", 0) != 0;
      v12[2080] = VCDefaults_GetBoolValueForKey(@"enableLTRPLogging", 0);
      v12[2083] = CFPreferencesGetAppBooleanValue(@"enableReceiverRtpPacketDumpAsCsv", @"com.apple.VideoConference", 0) != 0;
      v12[2082] = VCDefaults_GetBoolValueForKey(@"enableNACKLogging", 0);
    }

    if (v12[2048] == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v30;
          *&buf[12] = 2080;
          *&buf[14] = "VideoReceiver_CreateHandle";
          *&buf[22] = 1024;
          *&buf[24] = 5933;
          *&buf[28] = 2048;
          *&buf[30] = v11;
          _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Found enableReceiverPacketDump YES. Log incoming video packets into AFRC folder", buf, 0x26u);
        }
      }

      memset(buf, 170, 12);
      __sprintf_chk(buf, 0, 0xCuLL, "%010u", *(v11 + 298));
      v32 = openLogDump(0, buf, 1, "in_pkt", ".txt", 0);
      *(v12 + 257) = v32;
      if (!v32 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoReceiver_CreateHandle_cold_1();
        }
      }
    }

    if (v12[2083] == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v33;
          *&buf[12] = 2080;
          *&buf[14] = "VideoReceiver_CreateHandle";
          *&buf[22] = 1024;
          *&buf[24] = 5943;
          *&buf[28] = 2048;
          *&buf[30] = v11;
          _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Found enableReceiverRtpPacketDumpAsCsv YES. Log incoming video rtp packets into AFRC folder", buf, 0x26u);
        }
      }

      memset(buf, 170, 12);
      __sprintf_chk(buf, 0, 0xCuLL, "%010u", *(v11 + 298));
      v35 = openLogDump(0, buf, 1, "received_rtp_pkts", ".txt", 0);
      *(v12 + 261) = v35;
      if (v35)
      {
        fwrite("Video RTP Packet Dump File. Please modify the extension to .csv.\n\nInstructions:\nRTPMediaPacket header: One row per packet. Contains all the information relevant to the rtp header.\nRTPMediaPacket data: Several rows per packet. Carries the data dump.\nRTPMediaPacket extData: One row per packet. Dumps the extension data.\n\n", 0x140uLL, 1uLL, v35);
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoReceiver_CreateHandle_cold_2();
        }
      }
    }

    v12[2608] = 0;
    if (v12[2064] == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v38;
          *&buf[12] = 2080;
          *&buf[14] = "VideoReceiver_CreateHandle";
          *&buf[22] = 1024;
          *&buf[24] = 5956;
          *&buf[28] = 2048;
          *&buf[30] = v11;
          _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Found enableReceiverFrameDump YES. Log incoming video frames into AFRC folder", buf, 0x26u);
        }
      }

      memset(buf, 170, 12);
      __sprintf_chk(buf, 0, 0xCuLL, "%010u", *(v11 + 298));
      v40 = openLogDump(0, buf, 1, "in_frame", ".txt", 0);
      *(v12 + 259) = v40;
      if (!v40 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoReceiver_CreateHandle_cold_3();
        }
      }
    }

    CStringPtr = CFStringGetCStringPtr(*(v11 + 172), 0x8000100u);
    v42 = FourccToCStr(*(v11 + 348));
    *(v12 + 319) = VRDump_OpenDumpFile(CStringPtr, v42, *(v11 + 295), v11, *(v12 + 9));
    if (*(v12 + 9) != 1)
    {
      VideoReceiver_DumpRecvCreate(v11, 0);
    }

    v43 = *(v11 + 301);
    if (v43 == 1)
    {
      *&v44 = 0xAAAAAAAAAAAAAAAALL;
      *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&buf[224] = v44;
      *&buf[240] = v44;
      *&buf[192] = v44;
      *&buf[208] = v44;
      *&buf[160] = v44;
      *&buf[176] = v44;
      *&buf[128] = v44;
      *&buf[144] = v44;
      *&buf[96] = v44;
      *&buf[112] = v44;
      *&buf[64] = v44;
      *&buf[80] = v44;
      *&buf[32] = v44;
      *&buf[48] = v44;
      *buf = v44;
      *&buf[16] = v44;
      _VideoReceiverUtil_Generate2vuyName(buf, 0x100uLL);
      *(v12 + 264) = fopen(buf, "wb");
      v43 = *(v11 + 301);
    }

    if (v43 == 2)
    {
      VCDiskUtils_CreateDirectory();
    }

    if ((_VideoReceiver_CreateSummers(v11) & 1) == 0)
    {
      VideoReceiverConfig_CleanupFeatureStrings(v11);
      if (*v11)
      {
        v76 = 0;
        v77 = (v11 + 5984);
        do
        {
          VCSFrameCryptorH264_Destroy(v77);
          ++v76;
          v77 += 544;
        }

        while (v76 < *v11);
      }

      goto LABEL_118;
    }

    if (v11[1325] == 1 && (v11[1221] & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v45 = VRTraceErrorLogLevelToCSTR();
      v46 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v45;
        *&buf[12] = 2080;
        *&buf[14] = "VideoReceiver_CreateHandle";
        *&buf[22] = 1024;
        *&buf[24] = 5989;
        _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d Display link should be enabled for this configuration!", buf, 0x1Cu);
      }
    }

    v135 = 0u;
    v137 = 0u;
    *&v136[16] = 0u;
    *v136 = 0u;
    v133[0] = v12[2392];
    v47 = *(v11 + 295);
    v133[1] = v11[1326];
    v133[2] = v11[1335];
    BYTE10(v137) = v11[1568];
    v133[3] = v11[1325];
    *(&v135 + 1) = *(v12 + 191);
    v134 = *(v132 + 291);
    LODWORD(v135) = v47;
    *v136 = *(v11 + 681);
    v136[2] = v11[1361];
    *&v136[8] = *(v11 + 94);
    *&v137 = *(v11 + 190);
    BYTE8(v137) = *(v11 + 350) == 2;
    BYTE9(v137) = v11[1328];
    v48 = VCVideoPlayer_Create(v12 + 14, v133);
    v49 = v48;
    if ((v48 & 0x80000000) != 0)
    {
      VideoReceiver_CreateHandle_cold_15(v48, buf, &v138);
    }

    else
    {
      VCVideoPlayer_RegisterForNoVideoDisplayedTimeoutCallbacks(*(v12 + 14), _VideoReceiver_NoVideoDisplayedTimeoutCallback, v129);
      if (VCAllocatorFirstCome_Create(v24, "VideoReceiverBlockBufferHeaderAllocator", v11 + 5405))
      {
        VideoReceiver_CreateHandle_cold_4();
      }

      else if (VCAllocatorFirstCome_Create(v24, "VideoReceiverNumberPropertyAllocator", v11 + 5408))
      {
        VideoReceiver_CreateHandle_cold_5();
      }

      else if (VCAllocatorFirstCome_Create(v24, "VideoReceiverDecodedFrameAllocator", v11 + 5395))
      {
        VideoReceiver_CreateHandle_cold_6();
      }

      else if (VCAllocatorFirstCome_Create(v24, "VideoReceiverFormatDescriptionAllocator", v11 + 5396))
      {
        VideoReceiver_CreateHandle_cold_7(v49, buf, &v138);
      }

      else
      {
        v144 = xmmword_1DBD480A0;
        if (VCAllocatorMultiQueue_Create(v24, "VideoReceiverSampleBufferAllocator", 2u, &v144, v11 + 5397))
        {
          VideoReceiver_CreateHandle_cold_8();
        }

        else
        {
          Handle = CreateHandle();
          if (Handle == 0xFFFFFFFFLL)
          {
            VideoReceiver_CreateHandle_cold_14();
          }

          else
          {
            v51 = Handle;
            v131 = v49;
            pthread_mutex_init((v11 + 42128), 0);
            pthread_mutex_init((v11 + 42192), 0);
            pthread_mutex_init((v11 + 42256), 0);
            v52 = *v11;
            if (v52)
            {
              v53 = 0;
              v54 = (v11 + 8);
              v55 = v11;
              do
              {
                v56 = v54[6];
                v57 = v54[7];
                v58 = v54[5];
                *(v55 + 110) = v54[4];
                v59 = *v54;
                v60 = v54[1];
                v61 = v54[2];
                *(v55 + 109) = v54[3];
                *(v55 + 108) = v61;
                *(v55 + 107) = v60;
                *(v55 + 106) = v59;
                *(v55 + 113) = v57;
                *(v55 + 112) = v56;
                *(v55 + 111) = v58;
                v55[1764] = v53;
                *(v55 + 1510) = v53;
                *(v55 + 230) = v51;
                *(v55 + 754) = 0xFFFFFFFFLL;
                ++v53;
                v55 += 4352;
                v54 += 8;
              }

              while (v53 < v52);
            }

            *(v12 + 5) = v11 + 1696;
            MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VideoReceiver-CreateHandle");
            if (VRTraceGetErrorLogLevelForModule() > 5)
            {
              v62 = VRTraceErrorLogLevelToCSTR();
              v63 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v64 = *(v11 + 295);
                v65 = v11[1324];
                v66 = v11[1325];
                *buf = 136317442;
                *&buf[4] = v62;
                *&buf[12] = 2080;
                *&buf[14] = "VideoReceiver_CreateHandle";
                *&buf[22] = 1024;
                *&buf[24] = 6054;
                *&buf[28] = 2048;
                *&buf[30] = v51;
                *&buf[38] = 2048;
                *&buf[40] = v11;
                *&buf[48] = 2080;
                *&buf[50] = v132 + 1592;
                *&buf[58] = 1024;
                *&buf[60] = v64;
                *&buf[64] = 1024;
                *&buf[66] = v65;
                *&buf[70] = 1024;
                *&buf[72] = v66;
                *&buf[76] = 2048;
                *&buf[78] = v12 + 112;
                _os_log_impl(&dword_1DB56E000, v63, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d @:@ VideoReceiver-CreateHandle Created VideoReceiver handle=%p for videoReceiver=%p, %s, videoReceiver->config.videoTSRate=%d, videoReceiver->config.enableJitterBufferInReceiver=%d, videoReceiver->config.enableJitterBufferInPlayer=%d, videoPlayerHandlePtr=%p", buf, 0x56u);
              }
            }

            if (v11[1324] == 1)
            {
              v67 = *(v12 + 312);
              *&buf[224] = 0xAAAAAAAAAAAAAAAALL;
              memset(&buf[32], 170, 192);
              *&buf[200] = *(v11 + 291);
              *&buf[208] = *(v12 + 191);
              v68 = *(v11 + 295);
              *&buf[216] = *(v11 + 330);
              *&buf[220] = v68;
              buf[224] = 1;
              memset(buf, 0, 200);
              *&buf[232] = v67;
              *&buf[228] = *(v11 + 348);
              *&buf[240] = *(v11 + 191);
              buf[204] = v11[1327];
              _VCVideoReceiver_InitDumpFileName(v11, buf);
              *(v12 + 301) = VCVideoJitterBuffer_Create(buf);
              v12[1632] = VCDefaults_GetBoolValueForKey(@"videoPlayerQueueSizeOverrideEnabled", 0);
              JitterBufferMaxQueueSize = VCVideoJitterBuffer_GetJitterBufferMaxQueueSize(*(v12 + 301));
              *(v12 + 311) = VCDefaults_GetDoubleValueForKey(@"framesForDecodeQueueHighWatermarkSeconds", JitterBufferMaxQueueSize + JitterBufferMaxQueueSize);
            }

            *(v11 + 423) = -1;
            if (v11[1308] == 1)
            {
              v70 = VTP_Socket(2, 1, 6);
              *(v11 + 423) = v70;
              if (v70 == -1)
              {
                v102 = *__error() | 0xC01F0000;
                goto LABEL_167;
              }
            }

            memset(&buf[16], 0, 88);
            *buf = *(v11 + 146);
            *&buf[8] = *(v12 + 191);
            buf[64] = v11[1558];
            if (buf[64])
            {
              v71 = _VideoReceiver_DecoderCallbackMultiImage;
            }

            else
            {
              v71 = 0;
            }

            *&buf[24] = _VideoReceiver_DecoderCallback;
            *&buf[32] = v71;
            *&buf[40] = v51;
            *&buf[48] = *(v11 + 388);
            v72 = *(v11 + 154);
            *&buf[56] = *(v11 + 193);
            *&buf[72] = v72;
            *&buf[80] = *(v11 + 1576);
            v73 = v11[1330];
            *&buf[4] = v73;
            buf[16] = v73 ^ 1;
            buf[17] = v73;
            if (buf[64] && v11[1568] == 1)
            {
              if (*(v11 + 393))
              {
                v74 = 0;
                v75 = (v11 + 6032);
                do
                {
                  *&buf[96] = v75[2];
                  VCVideoDecoder_NewVideoDecoder(v75, buf);
                  ++v74;
                  v75 += 1088;
                }

                while (v74 < *(v11 + 393));
              }
            }

            else
            {
              VCVideoDecoder_NewVideoDecoder(v12 + 15, buf);
              v78 = *v11;
              if (v78)
              {
                v79 = *(v12 + 15);
                v80 = (v78 + 1) & 0x1FFFFFFFELL;
                v81 = vdupq_n_s64(v78 - 1);
                v82 = v11 + 6032;
                v83 = xmmword_1DBD45330;
                v84 = vdupq_n_s64(2uLL);
                do
                {
                  v85 = vmovn_s64(vcgeq_u64(v81, v83));
                  if (v85.i8[0])
                  {
                    *v82 = v79;
                  }

                  if (v85.i8[4])
                  {
                    v82[544] = v79;
                  }

                  v83 = vaddq_s64(v83, v84);
                  v82 += 1088;
                  v80 -= 2;
                }

                while (v80);
              }
            }

            *v12 = 0;
            *(v12 + 1) = 0xFFFFFFFFLL;
            VCDefaults_GetBoolValueForKey(@"enableDecoderPrewarming", 1);
            v86 = VCFeatureFlagManager_PersonaV2Enabled() && !VCDefaults_GetBoolValueForKey(@"forceBDATCompressed", 0);
            v12[2609] = v86;
            v12[2040] = v132[1184] & !v86;
            *(v12 + 581) = reportingDefaultRealtimePeriod();
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = ___VideoReceiver_ReportingRegisterPeriodicTask_block_invoke;
            *&buf[24] = &__block_descriptor_tmp_488;
            *&buf[32] = v51;
            reportingRegisterPeriodicTask();
            if (*(v11 + 297))
            {
              *&buf[192] = 0xAAAAAAAAAAAAAAAALL;
              *&v87 = 0xAAAAAAAAAAAAAAAALL;
              *(&v87 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *&buf[160] = v87;
              *&buf[176] = v87;
              *&buf[128] = v87;
              *&buf[144] = v87;
              *&buf[96] = v87;
              *&buf[112] = v87;
              *&buf[64] = v87;
              *&buf[80] = v87;
              *&buf[32] = v87;
              *&buf[48] = v87;
              *buf = v87;
              *&buf[16] = v87;
              _VCVideoReceiver_InitDumpFileName(v11, buf);
              *(v12 + 265) = VideoPacketDump_OpenRTPLog(buf);
            }

            CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(56);
            v89 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VideoReceiver.rtcpSendQueue", 0, CustomRootQueue);
            *(v12 + 202) = v89;
            if (v89)
            {
              Typed = VCMemoryPool_CreateTyped(0x800uLL, 0x10800404E5F609CLL);
              *(v12 + 285) = Typed;
              if (Typed)
              {
                if (v11[1404] != 1)
                {
LABEL_136:
                  _VideoReceiver_RegisterStatistics(v11);
                  if (v11[1309] == 1)
                  {
                    v12[2673] = 0;
                    v12[2672] = 0;
                    v92 = dispatch_semaphore_create(0);
                    *(v12 + 333) = v92;
                    *(v12 + 331) = v51;
                    if (!v92)
                    {
                      VideoReceiver_CreateHandle_cold_10();
                    }

                    v93 = VCRealTimeThread_Initialize(22, _VideoReceiver_AssemblyProc, v11, "com.apple.avconference.videoreceiver.assemblyproc", 3);
                    *(v12 + 332) = v93;
                    v94 = VCRealTimeThread_Start(v93);
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v95 = VRTraceErrorLogLevelToCSTR();
                      v96 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        v97 = "FAILED";
                        *buf = 136316418;
                        *&buf[4] = v95;
                        *&buf[14] = "_VideoReceiver_SetUpAssemblyThread";
                        *&buf[12] = 2080;
                        if (v94)
                        {
                          v97 = "SUCCEEDED";
                        }

                        *&buf[22] = 1024;
                        *&buf[24] = 518;
                        *&buf[28] = 2048;
                        *&buf[30] = v11;
                        *&buf[38] = 2080;
                        *&buf[40] = "com.apple.avconference.videoreceiver.assemblyproc";
                        *&buf[48] = 2080;
                        *&buf[50] = v97;
                        _os_log_impl(&dword_1DB56E000, v96, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VCVideoReceiver[%p] VCRealTimeThread_Start for thread=%s %s", buf, 0x3Au);
                      }
                    }

                    if ((v94 & 1) == 0)
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        VRTraceErrorLogLevelToCSTR();
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                        {
                          VideoReceiver_CreateHandle_cold_11();
                        }
                      }

                      VCRealTimeThread_Finalize(*(v12 + 332));
                    }
                  }

                  v98 = *(v132 + 185);
                  if (v98)
                  {
                    v98 = CFRetain(v98);
                  }

                  *(v12 + 316) = v98;
                  v5 = 0;
                  *(v12 + 325) = micro();
                  *v129 = v51;
                  return v5;
                }

                v141 = 0;
                v140 = 0u;
                memset(&buf[32], 0, 272);
                *buf = _VideoReceiver_SendNACK;
                *&buf[8] = v11;
                *&buf[16] = 0uLL;
                buf[32] = v12[2082];
                v91 = *(v11 + 91);
                *&buf[268] = *(v11 + 90);
                *&buf[284] = v91;
                *&buf[252] = *(v11 + 89);
                *&buf[300] = *(v11 + 368);
                *&buf[236] = *(v11 + 88);
                LODWORD(v140) = *(v11 + 295);
                *(&v140 + 1) = *(v11 + 172);
                LODWORD(v141) = *(v11 + 348);
                v142 = *(v11 + 195);
                v143 = 0x3FE0000000000000;
                _VCVideoReceiver_InitDumpFileName(v11, &buf[33]);
                if (!VCNACKGenerator_Create(v24, v11 + 5422, buf))
                {
                  _VideoReceiver_ReportRTXConfiguration(v11);
                  goto LABEL_136;
                }

                VideoReceiver_CreateHandle_cold_9();
                goto LABEL_168;
              }

              VideoReceiver_CreateHandle_cold_12(v51, buf, &v138);
            }

            else
            {
              VideoReceiver_CreateHandle_cold_13(v51, buf, &v138);
            }
          }
        }
      }
    }

    v51 = *buf;
    v102 = v138;
LABEL_167:
    v131 = v102;
LABEL_168:
    v103 = *(v12 + 265);
    if (v103)
    {
      VideoPacketDump_CloseRTPLog(v103);
    }

    if (v11[1308] == 1)
    {
      v104 = *(v11 + 423);
      if (v104 != -1)
      {
        VTP_Close(v104);
      }
    }

    v105 = *(v12 + 301);
    if (v105)
    {
      VCVideoJitterBuffer_Finalize(v105);
    }

    v106 = *v11;
    if (v106)
    {
      v107 = 0;
      v108 = 1824;
      do
      {
        v109 = *&v11[v108];
        if (v109)
        {
          VideoPacketBuffer_Destroy(v109);
          *&v11[v108] = 0;
          v106 = *v11;
        }

        ++v107;
        v108 += 4352;
      }

      while (v107 < v106);
    }

    else
    {
      v106 = 0;
    }

    v110 = *(v12 + 335);
    if (v110)
    {
      CFRelease(v110);
      *(v12 + 335) = 0;
      v106 = *v11;
    }

    if (v106)
    {
      v111 = 0;
      v112 = (v11 + 5984);
      do
      {
        VCSFrameCryptorH264_Destroy(v112);
        ++v111;
        v112 += 544;
      }

      while (v111 < *v11);
    }

    pthread_mutex_destroy((v11 + 42256));
    pthread_mutex_destroy((v11 + 42192));
    pthread_mutex_destroy((v11 + 42128));
    if (v51 != 0xFFFFFFFFLL)
    {
      VideoReceiver_CloseHandle();
    }

    v113 = *(v12 + 287);
    if (v113)
    {
      CFRelease(v113);
      *(v12 + 287) = 0;
    }

    v114 = *(v12 + 300);
    if (v114)
    {
      CFRelease(v114);
      *(v12 + 300) = 0;
    }

    v115 = *(v12 + 297);
    if (v115)
    {
      CFRelease(v115);
      *(v12 + 297) = 0;
    }

    VCVideoPlayer_Destroy(v12 + 14);
    _VideoReceiver_CloseSummers(v11);
    v116 = *(v12 + 264);
    if (v116)
    {
      fclose(v116);
    }

    v117 = *(v12 + 259);
    if (v117)
    {
      fclose(v117);
    }

    v118 = *(v12 + 257);
    if (v118)
    {
      fclose(v118);
    }

    v119 = *(v12 + 261);
    if (v119)
    {
      fclose(v119);
    }

    v120 = *(v12 + 202);
    if (v120)
    {
      dispatch_release(v120);
    }

    VideoReceiverConfig_CleanupFeatureStrings(v11);
    v121 = *(v12 + 286);
    if (v121)
    {
      CFRelease(v121);
      *(v12 + 286) = 0;
    }

    v122 = *(v12 + 284);
    if (v122)
    {
      CFRelease(v122);
      *(v12 + 284) = 0;
    }

    v123 = *(v12 + 283);
    if (v123)
    {
      CMMemoryPoolInvalidate(v123);
      v124 = *(v12 + 283);
      if (v124)
      {
        CFRelease(v124);
        *(v12 + 283) = 0;
      }
    }

    if (*v127)
    {
      CFRelease(*v127);
      *v127 = 0;
    }

    pthread_mutex_destroy((v11 + 43056));
    if (*v128)
    {
      CFRelease(*v128);
      *v128 = 0;
    }

    reportingCacheModuleSpecificInfo();
    v125 = *(v12 + 191);
    v5 = v131;
    if (v125)
    {
      CFRelease(v125);
      *(v12 + 191) = 0;
    }

    v126 = *(v12 + 190);
    if (v126)
    {
      CFRelease(v126);
      *(v12 + 190) = 0;
    }

    VCMemoryPool_Destroy(*(v12 + 285));
LABEL_118:
    free(v11);
    return v5;
  }

  if (*v11)
  {
    v100 = 0;
    v101 = (v11 + 5984);
    do
    {
      VCSFrameCryptorH264_Destroy(v101);
      ++v100;
      v101 += 544;
    }

    while (v100 < *v11);
  }

  free(v11);
  return 2149515265;
}

void VideoReceiver_DumpRecvCreate(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1212))
  {
    v4 = a1 + 40900;
    v5 = (a1 + 42968);
    v6 = *(a1 + 42968);
    if (v6)
    {
      fclose(v6);
    }

    *v29 = 0;
    v30 = 0;
    v31 = 0;
    *v28 = 0;
    if (*v4 == 1)
    {
      __sprintf_chk(v29, 0, 0x14uLL, "%llx_", a1);
      __sprintf_chk(v28, 0, 8uLL, "_%u", a2);
      *(v4 + 2060) = a2;
    }

    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26 = v7;
    v27 = v7;
    *__filename = v7;
    v25 = v7;
    _VideoReceiverUtil_GenerateBitStreamDumpName(__filename, 0x40uLL, v29, v28);
    VCDiskUtils_CreateDirectory();
    v8 = fopen(__filename, "wb");
    *v5 = v8;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v8)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v15 = v10;
          v16 = 2080;
          v17 = "VideoReceiver_DumpRecvCreate";
          v18 = 1024;
          v19 = 1064;
          v20 = 2048;
          v21 = a1;
          v22 = 2080;
          v23 = __filename;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Created new video dump file: %s", buf, 0x30u);
        }
      }
    }

    else if (ErrorLogLevelForModule >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v15 = v12;
        v16 = 2080;
        v17 = "VideoReceiver_DumpRecvCreate";
        v18 = 1024;
        v19 = 1062;
        v20 = 2048;
        v21 = a1;
        v22 = 2080;
        v23 = __filename;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] failed to open %s", buf, 0x30u);
      }
    }
  }
}

void _VideoReceiver_NoVideoDisplayedTimeoutCallback(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = CheckInHandleDebug();
    if (v3)
    {
      v4 = v3;
      v5 = (v3 + 40888);
      v6 = micro();
      v7 = *(v4 + 1520);
      v8 = *(v5 + 2);
      if ((*(v8 + 69) & 1) == 0 && *(v5 + 6) == 1)
      {
        Stream = _VideoReceiver_GetStream(v4, *v5, 0);
        if (Stream)
        {
          v8 = Stream;
        }
      }

      os_unfair_lock_lock((v4 + 43440));
      if (*(v5 + 2537) == 1)
      {
        v10 = v7 >= a2 || v6 - *(v5 + 318) <= v7;
        if (!v10 && v6 - *(v8 + 4328) >= v7)
        {
          _VideoReceiver_SendFIR(v4, v8, 0, 28, v6);
          _VideoReceiver_ResetExpectedDecodingOrder(v4);
        }
      }

      os_unfair_lock_unlock((v4 + 43440));

      CheckOutHandleDebug();
    }

    else
    {
      _VideoReceiver_NoVideoDisplayedTimeoutCallback_cold_1();
    }
  }

  else
  {
    _VideoReceiver_NoVideoDisplayedTimeoutCallback_cold_2();
  }
}

uint64_t _VCVideoReceiver_InitDumpFileName(uint64_t a1, char *a2)
{
  v4 = *(a1 + 1384);
  if (v4)
  {
    CFStringGetCStringPtr(v4, 0x8000100u);
    CFStringGetCStringPtr(*(a1 + 1376), 0x8000100u);
    FourccToCStr(*(a1 + 1392));
    return snprintf(a2, 0xC8uLL, "session_%s-participant_%s-groupid_%s");
  }

  else if (*(a1 + 1192))
  {
    return snprintf(a2, 0xC8uLL, "%010u");
  }

  else
  {
    return snprintf(a2, 0xC8uLL, "streamtoken_%ld");
  }
}

void _VideoReceiver_AssemblyProc(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1 || *(a1 + 1688))
  {
LABEL_3:
    *a3 = 1;
    return;
  }

  *(a1 + 43536) = 1;
  dispatch_semaphore_wait(*(a1 + 43528), 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 43537) == 1)
  {
    *(a1 + 43537) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v5;
        v12 = 2080;
        v13 = "_VideoReceiver_AssemblyProc";
        v14 = 1024;
        v15 = 5024;
        v16 = 2048;
        v17 = a1;
        v18 = 2080;
        v19 = "com.apple.avconference.videoreceiver.assemblyproc";
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Assembly thread=%s terminated", &v10, 0x30u);
      }
    }

    goto LABEL_3;
  }

  v7 = *(a1 + 43512);
  v8 = *(a1 + 42436);
  v9 = a1 + 4352 * *(a1 + 42456) + 1696;

  _VideoReceiver_ProcessCompletedFrames(v7, a1, v9, v8);
}

uint64_t VideoReceiver_CloseHandle()
{
  v90 = *MEMORY[0x1E69E9840];
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149515266;
  }

  v1 = v0;
  v2 = v0 + 40960;
  _VideoReceiver_UnregisterStatistics(v0);
  reportingUnregisterPeriodicTask();
  v1[422] = 1;
  v3 = *(v2 + 2368);
  if (v3)
  {
    VCMediaStreamSynchronizer_setSourcePlayoutTimeUpdatedHandler(v3, 0);
  }

  if (*(v1 + 1308) == 1)
  {
    v4 = v1[423];
    if (v4 != -1)
    {
      VTP_Close(v4);
    }

    if (*(v2 + 1160))
    {
      *buf = 0xAAAAAAAAAAAAAAAALL;
      FigThreadJoin();
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_UnregisterTransportCallbacks";
        *&buf[22] = 1024;
        v79 = 1872;
        *v80 = 2048;
        *&v80[2] = v1;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] unregister packet callback", buf, 0x26u);
      }
    }

    if (*v1)
    {
      v8 = 0;
      v9 = (v1 + 424);
      do
      {
        v10 = *(v2 + 2432);
        if (v10)
        {
          VCCannedVideoPacketSource_UnregisterForCannedReplay(v10, v9);
        }

        else
        {
          RTPUnregisterPacketCallback();
          RTCPUnregisterPacketCallback();
        }

        ++v8;
        v9 += 2176;
      }

      while (v8 < *v1);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = "VideoReceiver_CloseHandle";
      *&buf[22] = 1024;
      v79 = 6322;
      *v80 = 2048;
      *&v80[2] = v1;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d Calling CheckOutHandle with BIT_CLOSE for VideoReceiver=%p", buf, 0x26u);
    }
  }

  v13 = 0.0;
  if (VRTraceIsInternalOSInstalled())
  {
    v13 = micro();
  }

  v14 = CheckOutHandleDebug();
  LogProfileTimeOverLimit_1(v13, v14, v15, v16, v17, v18, v19, v20, v21, "VideoReceiver_CloseHandle");
  v22 = *(v2 + 2432);
  if (v22)
  {
    CFRelease(v22);
    *(v2 + 2432) = 0;
  }

  v23 = *(v2 + 2200);
  if (v23)
  {
    CFRelease(v23);
    *(v2 + 2200) = 0;
  }

  v24 = *(v2 + 2304);
  if (v24)
  {
    CFRelease(v24);
    *(v2 + 2304) = 0;
  }

  v25 = *(v2 + 2280);
  if (v25)
  {
    CFRelease(v25);
    *(v2 + 2280) = 0;
  }

  v26 = *(v2 + 2208);
  if (v26)
  {
    CFRelease(v26);
    *(v2 + 2208) = 0;
  }

  v27 = *(v2 + 2216);
  if (v27)
  {
    CFRelease(v27);
    *(v2 + 2216) = 0;
  }

  v28 = *(v2 + 2400);
  if (v28)
  {
    CFRelease(v28);
    *(v2 + 2400) = 0;
  }

  MEMORY[0x1E1289EF0](v1 + 414);
  _VideoReceiver_CloseSummers(v1);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v29;
      *&buf[12] = 2080;
      *&buf[14] = "VideoReceiver_CloseHandle";
      *&buf[22] = 1024;
      v79 = 6338;
      *v80 = 2048;
      *&v80[2] = v1;
      _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d About to Destroy VCVideoPlayer for VideoReceiver=%p", buf, 0x26u);
    }
  }

  VCVideoPlayer_UnregisterForNoVideoDisplayedTimeoutCallbacks();
  VCVideoPlayer_Destroy((v2 + 16));
  if (*(v1 + 1568) == 1)
  {
    if (v1[393])
    {
      v31 = 0;
      v32 = (v1 + 1510);
      do
      {
        VCVideoDecoder_ReleaseVideoDecoder(v1[292], *v32);
        ++v31;
        v32 += 4352;
      }

      while (v31 < v1[393]);
    }
  }

  else
  {
    VCVideoDecoder_ReleaseVideoDecoder(v1[292], 0);
  }

  v33 = *(v2 + 2584);
  if (v33)
  {
    CFRelease(v33);
    *(v2 + 2584) = 0;
  }

  v34 = *(v2 + 2192);
  if (v34)
  {
    *&buf[11] = 0;
    *&buf[4] = 0;
    *&v80[1] = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    memset(v89, 0, sizeof(v89));
    v35 = *(v1 + 146);
    *buf = 4;
    buf[19] = 1;
    *&buf[20] = 0;
    v79 = v35;
    v80[0] = 1;
    VCRateControlSetStatistics(v34, buf);
  }

  v36 = *(v2 + 2312);
  if (v36)
  {
    VCVideoJitterBuffer_Finalize(v36);
    *(v2 + 2312) = 0;
  }

  v37 = *v1;
  if (v37)
  {
    v38 = 0;
    v39 = (v1 + 456);
    do
    {
      if (*v39)
      {
        if (*(v39 - 58) != 1 || *(v39 - 62) == *(v39 - 64))
        {
          VideoPacketBuffer_Destroy(*v39);
          v37 = *v1;
        }

        *v39 = 0;
      }

      ++v38;
      v39 += 544;
    }

    while (v38 < v37);
    if (v37)
    {
      v40 = 0;
      v41 = (v1 + 1496);
      do
      {
        VCSFrameCryptorH264_Destroy(v41);
        ++v40;
        v41 += 544;
      }

      while (v40 < *v1);
    }
  }

  v42 = *(v2 + 2416);
  if (v42)
  {
    CFRelease(v42);
    *(v2 + 2416) = 0;
  }

  v43 = *(v2 + 2536);
  if (v43)
  {
    v44 = (v2 + 2536);
    *buf = *(v2 + 2536);
    do
    {
      v45 = *v44;
      if (*v44 == v43)
      {
        v47 = (v2 + 2536);
      }

      else
      {
        do
        {
          v46 = v45;
          v45 = *(v45 + 112);
        }

        while (v45 != v43);
        v47 = (v46 + 112);
      }

      v43 = *(v43 + 112);
      *v47 = *(v45 + 112);
      VCVideoReceiverDecodedFrame_Destroy(buf);
      *buf = v43;
    }

    while (v43);
  }

  pthread_mutex_lock((v1 + 10764));
  v48 = *(v2 + 2520);
  if (v48)
  {
    v49 = (v2 + 2520);
    *buf = *(v2 + 2520);
    do
    {
      v50 = *v49;
      if (*v49 == v48)
      {
        v52 = (v2 + 2520);
      }

      else
      {
        do
        {
          v51 = v50;
          v50 = *(v50 + 240);
        }

        while (v50 != v48);
        v52 = (v51 + 240);
      }

      v48 = *(v48 + 240);
      *v52 = *(v50 + 240);
      VCVideoReceiverSampleBuffer_Destroy(buf);
      *buf = v48;
    }

    while (v48);
  }

  pthread_mutex_unlock((v1 + 10764));
  _VideoReceiver_DrainAndReleaseQueue(*(v2 + 2080), 1);
  _VideoReceiver_DrainAndReleaseQueue(*(v2 + 2088), 0);
  pthread_mutex_destroy((v1 + 10764));
  if (*(v1 + 1309) == 1)
  {
    *(v2 + 2577) = 1;
    *(v2 + 2576) = 0;
    VCRealTimeThread_Stop(*(v2 + 2560));
    dispatch_semaphore_signal(*(v2 + 2568));
    VCRealTimeThread_Finalize(*(v2 + 2560));
    v53 = *(v2 + 2568);
    if (v53)
    {
      dispatch_release(v53);
    }
  }

  v54 = *(v2 + 2176);
  if (v54)
  {
    CFRelease(v54);
    *(v2 + 2176) = 0;
  }

  v55 = *(v2 + 2168);
  if (v55)
  {
    CMMemoryPoolInvalidate(v55);
    v56 = *(v2 + 2168);
    if (v56)
    {
      CFRelease(v56);
      *(v2 + 2168) = 0;
    }
  }

  v57 = *(v2 + 1640);
  if (v57)
  {
    CVPixelBufferPoolRelease(v57);
  }

  v58 = *(v2 + 1712);
  if (v58)
  {
    CFRelease(v58);
  }

  v59 = *(v2 + 2192);
  if (v59)
  {
    CFRelease(v59);
  }

  v60 = *(v2 + 1648);
  if (v60)
  {
    CFRelease(v60);
  }

  v61 = *(v2 + 1656);
  if (v61)
  {
    CFRelease(v61);
  }

  v62 = *(v2 + 1704);
  if (v62)
  {
    CFRelease(v62);
  }

  if (*(v2 + 1680))
  {
    FigBaseObject = FigFormatWriterGetFigBaseObject();
    if (FigBaseObject)
    {
      v64 = FigBaseObject;
      v65 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v65)
      {
        v65(v64);
      }
    }

    CFRelease(*(v2 + 1680));
  }

  if (*(v2 + 1664))
  {
    FigFileForkClose();
    *(v2 + 1664) = 0;
    v66 = *(v2 + 1696);
    if (v66 >= 1)
    {
      close(v66);
    }
  }

  v67 = *(v2 + 1672);
  if (v67)
  {
    CFRelease(v67);
  }

  v68 = *(v1 + 172);
  if (v68)
  {
    CFRelease(v68);
    *(v1 + 172) = 0;
  }

  v69 = *(v1 + 173);
  if (v69)
  {
    CFRelease(v69);
    *(v1 + 173) = 0;
  }

  pthread_mutex_destroy((v1 + 10532));
  pthread_mutex_destroy((v1 + 10548));
  pthread_mutex_destroy((v1 + 10564));
  v70 = *(v2 + 1960);
  if (v70)
  {
    fclose(v70);
  }

  v71 = *(v2 + 1976);
  if (v71)
  {
    fclose(v71);
  }

  if (v1[303])
  {
    v72 = *(v2 + 2008);
    if (v72)
    {
      fclose(v72);
    }
  }

  v73 = *(v2 + 1992);
  if (v73)
  {
    fclose(v73);
  }

  VideoReceiverConfig_CleanupFeatureStrings(v1);
  v74 = *(v2 + 1424);
  if (v74)
  {
    CFRelease(v74);
  }

  v75 = *(v2 + 2016);
  if (v75)
  {
    fclose(v75);
  }

  v76 = *(v2 + 1520);
  if (v76)
  {
    dispatch_release(v76);
  }

  VCMemoryPool_Destroy(*(v2 + 2184));
  VideoPacketDump_CloseRTPLog(*(v2 + 2024));
  reportingCacheModuleSpecificInfo();
  VRDump_CloseDumpFile(v1 + 5427);
  v77 = *(v2 + 1432);
  if (v77)
  {
    CFRelease(v77);
  }

  if (*(v2 + 2448))
  {
    VCOverlayManager_releaseOverlaySourceWithToken(*(v1 + 187), 1u);
    CFRelease(*(v2 + 2448));
  }

  free(v1);
  return 0;
}

void LogProfileTimeOverLimit_1(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v41 = *MEMORY[0x1E69E9840];
  if (VRTraceIsInternalOSInstalled())
  {
    v11 = micro() - a1;
    if (v11 > 4.0)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v39 = v12;
      v40 = v12;
      v37 = v12;
      v38 = v12;
      v35 = v12;
      v36 = v12;
      v33 = v12;
      v34 = v12;
      v31 = v12;
      v32 = v12;
      v30 = v12;
      v28 = v12;
      v29 = v12;
      v26 = v12;
      v27 = v12;
      *__str = v12;
      vsnprintf(__str, 0x100uLL, "%s: CheckOutHandle with BIT_CLOSE for VideoReceiver=%p", &a10);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v16 = v13;
          v17 = 2080;
          v18 = "_LogProfileTimeLimitHelper";
          v19 = 1024;
          v20 = 36;
          v21 = 2080;
          v22 = __str;
          v23 = 2048;
          v24 = v11;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d %s: Took a long time %fs", buf, 0x30u);
        }
      }
    }
  }
}

void _VideoReceiver_DrainAndReleaseQueue(opaqueCMSimpleQueue *a1, int a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CMSimpleQueueGetCount(a1) >= 1)
    {
      do
      {
        v4[0] = CMSimpleQueueDequeue(a1);
        if (a2)
        {
          VCVideoReceiverSampleBuffer_Destroy(v4);
        }

        else
        {
          VCVideoReceiverDecodedFrame_Destroy(v4);
        }
      }

      while (CMSimpleQueueGetCount(a1) > 0);
    }

    CFRelease(a1);
  }
}

uint64_t VideoReceiver_DisplayLinkTick(double a1, double a2, double a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = 2149515266;
  v7 = CheckInHandleDebug();
  if (v7)
  {
    v8 = v7;
    v9 = v7 + 40960;
    v10 = *(v7 + 1325) != 1 || *(v7 + 1400) != 2;
    v11 = VCVideoPlayer_DisplayLinkTick(a1, a2, a3);
    if (((*(v9 + 2296) & 1) != 0 || ((*(v8 + 1339) | v10) & 1) == 0) && (VCVideoPlayer_GetPlayoutInfo(*(v9 + 16), (v8 + 42424), (v8 + 42448)) & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoReceiver_DisplayLinkTick_cold_1();
        }
      }
    }

    else
    {
      CMTimeMakeWithSeconds(&v13, a3, 1000000000);
      time = v13;
      CMTimeGetSeconds(&time);
      kdebug_trace();
      v6 = v11;
    }

    CheckOutHandleDebug();
  }

  return v6;
}

uint64_t _VideoReceiver_CallAlarms(uint64_t a1, int *a2, double a3)
{
  v3 = a3;
  v31 = *MEMORY[0x1E69E9840];
  v4 = a1 + 40960;
  v5 = *a2;
  LODWORD(a3) = a2[1];
  v6 = *a2 + *&a3 * 4294967300.0;
  v7 = *(a1 + 1176);
  if ((*(a1 + 1221) & 1) == 0)
  {
    if (*(a1 + 1339) == 1)
    {
      if ((VCVideoPlayer_GetPlayoutInfo(*(a1 + 40976), (a1 + 42424), (a1 + 42448)) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VideoReceiver_CallAlarms_cold_1();
        }
      }
    }

    else
    {
      v8 = *(a1 + 43328);
      if (v8)
      {
        v19 = 0;
        if (VCMediaStreamSynchronizer_destRTPTimestampFromSourceRTPTimestamp(v8, v5, &v19))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x1E6986650];
            v11 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                v21 = v9;
                v22 = 2080;
                v23 = "_VideoReceiver_SetPlayoutRTPTimestamp";
                v24 = 1024;
                v25 = 6610;
                v26 = 1024;
                *v27 = v5;
                *&v27[4] = 1024;
                *&v27[6] = v19;
                _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d Converted audioPlayoutRTPTimestamp=%u into video domain with timestamp=%u", buf, 0x28u);
              }
            }

            else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              v21 = v9;
              v22 = 2080;
              v23 = "_VideoReceiver_SetPlayoutRTPTimestamp";
              v24 = 1024;
              v25 = 6610;
              v26 = 1024;
              *v27 = v5;
              *&v27[4] = 1024;
              *&v27[6] = v19;
              _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d Converted audioPlayoutRTPTimestamp=%u into video domain with timestamp=%u", buf, 0x28u);
            }
          }

          *(v4 + 1464) = v19;
        }
      }

      else
      {
        *(v4 + 1464) = v5;
      }
    }
  }

  v12 = v6 / v7;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    v15 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v4 + 16);
        *buf = 136316418;
        v21 = v13;
        v22 = 2080;
        v23 = "_VideoReceiver_CallAlarms";
        v24 = 1024;
        v25 = 6629;
        v26 = 2048;
        *v27 = v16;
        *&v27[8] = 2048;
        v28 = v12;
        v29 = 1024;
        v30 = v5;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d Calling VCVideoPlayer_CallAlarms with PlayerHandle=%p with sourceTime=%.6f for audioPlayoutRTPTimestamp=%u", buf, 0x36u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(v4 + 16);
      *buf = 136316418;
      v21 = v13;
      v22 = 2080;
      v23 = "_VideoReceiver_CallAlarms";
      v24 = 1024;
      v25 = 6629;
      v26 = 2048;
      *v27 = v18;
      *&v27[8] = 2048;
      v28 = v12;
      v29 = 1024;
      v30 = v5;
      _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, "VideoReceiver [%s] %s:%d Calling VCVideoPlayer_CallAlarms with PlayerHandle=%p with sourceTime=%.6f for audioPlayoutRTPTimestamp=%u", buf, 0x36u);
    }
  }

  return VCVideoPlayer_CallAlarms(*(v4 + 16), v3, v12);
}

uint64_t VideoReceiver_UpdateSourcePlayoutTime(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149515266;
  }

  v4 = v3;
  v5 = v3 + 40960;
  v6 = micro();
  v19 = **&MEMORY[0x1E6960CC0];
  if (*(v5 + 2488) == 1)
  {
    os_unfair_lock_lock(v4 + 10861);
    v7 = *a2;
    *(v5 + 2240) = a2[3];
    *(v5 + 1456) = v7;
    VCVideoPlayer_SetOutputLatency(*(v5 + 2496));
    CMTimeMake(&v19, (*(v5 + 1456) + (v6 - *(v5 + 2240)) * v4[294]._os_unfair_lock_opaque), v4[294]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v4 + 10861);
    os_unfair_lock_lock(v4 + 10727);
    if (*(v5 + 1944) == 1)
    {
      v8 = *(v5 + 1936);
      if (v8 != 0.0)
      {
        v9 = v6 - v8;
        if (v6 - v8 > *(v5 + 1920) + 0.132)
        {
          _VideoReceiver_UpdateVideoStallTime(v4, v9, v6);
          ++*(v5 + 1904);
          *(v5 + 1920) = v9;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v13 = VRTraceErrorLogLevelToCSTR();
            v14 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v15 = FourccToCStr(v4[348]._os_unfair_lock_opaque);
              v16 = *(v5 + 1904);
              v17 = *(v5 + 1880) * 1000.0;
              v18 = *(v5 + 1928) * 1000.0;
              *buf = 136317186;
              v21 = v13;
              v22 = 2080;
              v23 = "_VideoReceiver_UpdateFrameDiscontinuityStatus";
              v24 = 1024;
              v25 = 1769;
              v26 = 2048;
              v27 = v4;
              v28 = 2080;
              v29 = v15;
              v30 = 1024;
              v31 = v16;
              v32 = 2048;
              v33 = v9 * 1000.0;
              v34 = 2048;
              v35 = v17;
              v36 = 2048;
              v37 = v18;
              _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Frame Discontinuity Detected streamGroupID=%s count=%u frameDiscontinuityLength=%f frameDiscontinuityTime=%f frameDiscontinuityMaxSegment=%f", buf, 0x54u);
            }
          }
        }
      }
    }

    os_unfair_lock_unlock(v4 + 10727);
  }

  else
  {
    if (*(v5 + 2233) == 1)
    {
      v11 = *a2;
      *(v5 + 2240) = micro();
      *(v5 + 1456) = v11;
    }

    v19 = *a2;
  }

  v10 = _VideoReceiver_CallAlarms(v4, &v19, v6);
  CheckOutHandleDebug();
  return v10;
}

uint64_t VideoReceiver_SetVTHandleAndStart(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (v3)
  {
    v4 = v3;
    v5 = v3 + 40928;
    *(v3 + 40928) = a2;
    *(v3 + 43193) = *(v3 + 1304);
    pthread_mutex_lock((v3 + 42128));
    if (*(v4 + 1308) == 1)
    {
      if (*(v5 + 1192))
      {
        goto LABEL_4;
      }

      *v39 = @"com.apple.avconference.videoreceiver.recvproc";
      v25 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], v39, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v26 = FigThreadCreate();
      if (v25)
      {
        CFRelease(v25);
      }

      if (!v26)
      {
LABEL_4:
        v6 = 0;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v27 = VRTraceErrorLogLevelToCSTR();
          v28 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = v27;
            *&buf[12] = 2080;
            *&buf[14] = "VideoReceiver_SetVTHandleAndStart";
            *&buf[22] = 1024;
            *v36 = 6661;
            *&v36[4] = 1024;
            *&v36[6] = 6661;
            *&v36[10] = 2048;
            *&v36[12] = v4;
            v37 = 1024;
            v38 = v26;
            _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoReceiver.c:%d: VideoReceiver[%p] VideoReceiver_RecvProc thread create failed(%d)", buf, 0x32u);
          }
        }

        v6 = v26 | 0xA01F0000;
      }

      goto LABEL_28;
    }

    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v8 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoReceiver_RegisterTransportCallbacks";
        *&buf[22] = 1024;
        *v36 = 1850;
        *&v36[4] = 2048;
        *&v36[6] = v4;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] register packet callback", buf, 0x26u);
      }
    }

    if (!*v4)
    {
LABEL_27:
      v6 = 0;
LABEL_28:
      pthread_mutex_unlock((v4 + 10532));
      CheckOutHandleDebug();
      return v6;
    }

    v11 = 0;
    v12 = MEMORY[0x1E69E9820];
    v13 = v4 + 424;
    v14 = v4;
    while (1)
    {
      *buf = v12;
      *&buf[8] = 0x40000000;
      *&buf[16] = ___VideoReceiver_RegisterTransportCallbacks_block_invoke;
      *v36 = &__block_descriptor_tmp_552;
      *&v36[8] = v4;
      *&v36[16] = v11;
      v15 = *(v5 + 2464);
      if (v15)
      {
        if ((VCCannedVideoPacketSource_RegisterForCannedReplay(v15, v14 + 848, buf, __block_literal_global_29) & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_18;
        }

        v29 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        *v39 = 136315906;
        v16 = v32;
        *&v39[4] = v29;
        v40 = 2080;
        v41 = "_VideoReceiver_RegisterTransportCallbacksForStream";
        v42 = 1024;
        v43 = 1837;
        v44 = 2048;
        v45 = v13;
        v17 = "VideoReceiver [%s] %s:%d Failed to register canned replay callbacks for stream[%p]";
      }

      else
      {
        _X8 = v14 + 2612;
        __asm { PRFM            #0, [X8] }

        if ((RTPRegisterPacketCallback(*(v14 + 218), (v14 + 424), buf) & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_18;
          }

          v30 = VRTraceErrorLogLevelToCSTR();
          v33 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          *v39 = 136315906;
          v16 = v33;
          *&v39[4] = v30;
          v40 = 2080;
          v41 = "_VideoReceiver_RegisterTransportCallbacksForStream";
          v42 = 1024;
          v43 = 1840;
          v44 = 2048;
          v45 = v13;
          v17 = "VideoReceiver [%s] %s:%d Failed to register RTP packet callbacks for stream[%p]";
        }

        else
        {
          if ((RTCPRegisterPacketCallback(*(v14 + 218), (v14 + 424), __block_literal_global_29) & 0x80000000) == 0)
          {
            goto LABEL_18;
          }

          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_18;
          }

          v31 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          *v39 = 136315906;
          v16 = v34;
          *&v39[4] = v31;
          v40 = 2080;
          v41 = "_VideoReceiver_RegisterTransportCallbacksForStream";
          v42 = 1024;
          v43 = 1843;
          v44 = 2048;
          v45 = v13;
          v17 = "VideoReceiver [%s] %s:%d Failed to register RTCP packet callbacks for stream[%p]";
        }
      }

      _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, v17, v39, 0x26u);
LABEL_18:
      ++v11;
      v14 += 1088;
      v13 += 1088;
      if (v11 >= *v4)
      {
        goto LABEL_27;
      }
    }
  }

  return 2149515266;
}

uint64_t VideoReceiver_RecvProc(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    return -2145452030;
  }

  v3 = v2;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v5 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v6;
      v22 = 2080;
      v23 = "VideoReceiver_RecvProc";
      v24 = 1024;
      v25 = 5045;
      v26 = 2048;
      v27 = v3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] ##### VideoReceiver_RecvProc start", buf, 0x26u);
    }
  }

  while (!v3[422])
  {
    v8 = *v3;
    if (v8)
    {
      v9 = 0;
      v10 = v3 + 436;
      do
      {
        *(v19 + v9) = 48;
        *(v17 + v9++) = *v10;
        v10 += 544;
      }

      while (v9 < v8);
    }

    if ((RTPGetReceiveStatus(v17, v19, v8, v3[423]) & 0x80000000) != 0)
    {
      usleep(0x2710u);
    }

    else
    {
      if (*v3)
      {
        v11 = 0;
        v12 = (v3 + 424);
        do
        {
          v13 = *(v19 + v11);
          if ((v13 & 0x10) != 0)
          {
            *buf = 0;
            if ((RTPRecvRTP(*(v12 + 48), buf) & 0x80000000) == 0)
            {
              kdebug_trace();
              _VideoReceiver_ProcessVideoRTPInternal(a1, v3, v12, *buf);
              RTPReleaseRTPPacket(*(v12 + 48), buf);
            }

            v13 = *(v19 + v11);
          }

          if ((v13 & 0x20) != 0)
          {
            bzero(buf, 0x668uLL);
            if ((RTPRecvRTCP(*(v12 + 48), buf) & 0x80000000) == 0)
            {
              _VideoReceiver_ProcessVideoRTCPInternal(v3, v12, buf);
              RTCPCleanupPacketList(buf);
            }
          }

          ++v11;
          v12 += 4352;
        }

        while (v11 < *v3);
      }

      if (v3[10225] == 1 || *(v3 + 40896) == 1)
      {
        _VideoReceiver_ScheduleFramesForDecodingMultiway(a1, v3, v3[10609]);
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v14;
      v22 = 2080;
      v23 = "VideoReceiver_RecvProc";
      v24 = 1024;
      v25 = 5073;
      v26 = 2048;
      v27 = v3;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VideoReceiver [%s] %s:%d VideoReceiver[%p] ##### VideoReceiver_RecvProc end", buf, 0x26u);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoReceiver_SetVTHandle(uint64_t a1, uint64_t a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149515266;
  }

  *(v3 + 40928) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoReceiver_SetFeedbackDelegate()
{
  if (!CheckInHandleDebug())
  {
    return 2149515266;
  }

  FigCFWeakReferenceStore();
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoReceiver_GetFramerate(float a1, uint64_t a2, double *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149515266;
  }

  v11 = -1431655766;
  v10 = NAN;
  *a3 = 0.0;
  v6 = *(v5 + 40936);
  v7 = micro();
  v8 = SummerLengthPred(v7 - a1, v6, SummerGreaterThan, &v10, &v11);
  if ((v8 & 0x80000000) == 0 && v10 >= 0.5)
  {
    *a3 = v11 / v10;
  }

  CheckOutHandleDebug();
  return v8;
}

uint64_t VideoReceiver_GetBitrate(float a1, uint64_t a2, uint64_t a3, double *a4, double *a5, double *a6, double *a7)
{
  v13 = CheckInHandleDebug();
  if (!v13)
  {
    return 2149515266;
  }

  v14 = (v13 + 40936);
  v15 = micro() - a1;
  if (a3 && (a3 = _VCNACKConsumer_ComputeSummerBitrate(*v14, a3, v15), (a3 & 0x80000000) != 0))
  {
    VideoReceiver_GetBitrate_cold_1();
  }

  else if (a4 && (a3 = _VCNACKConsumer_ComputeSummerBitrate(v14[1], a4, v15), (a3 & 0x80000000) != 0))
  {
    VideoReceiver_GetBitrate_cold_2();
  }

  else if (a5 && (a3 = _VCNACKConsumer_ComputeSummerBitrate(v14[4], a5, v15), (a3 & 0x80000000) != 0))
  {
    VideoReceiver_GetBitrate_cold_3();
  }

  else if (a6 && (a3 = _VCNACKConsumer_ComputeSummerBitrate(v14[2], a6, v15), (a3 & 0x80000000) != 0))
  {
    VideoReceiver_GetBitrate_cold_4();
  }

  else
  {
    if (!a7)
    {
      goto LABEL_7;
    }

    a3 = _VCNACKConsumer_ComputeSummerBitrate(v14[3], a7, v15);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    VideoReceiver_GetBitrate_cold_5();
  }

  a3 = v17;
LABEL_7:
  CheckOutHandleDebug();
  return a3;
}

uint64_t VideoReceiver_GetMediaChannelMetrics(float a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149515266;
  }

  v6 = (v5 + 40936);
  v18 = -1431655766;
  v16 = 0.0;
  v17 = NAN;
  v7 = a1;
  v8 = micro() - a1;
  v9 = 0.0;
  if ((SummerSumPred(v8, 0.0, *v6, SummerGreaterThan, SummerIdentity, &v17, &v16) & 0x80000000) == 0 && v17 >= 0.5)
  {
    v16 = v16 * 8.0 / v17;
  }

  v10 = *v6;
  v11 = micro();
  v12 = SummerLengthPred(v11 - v7, v10, SummerGreaterThan, &v17, &v18);
  if ((v12 & 0x80000000) == 0 && v17 >= 0.5)
  {
    v9 = v18 / v17;
  }

  if (a3)
  {
    *a3 = (v16 / 1000.0);
    *(a3 + 32) = v9;
    v13 = *(v6 + 1628);
    v14.i64[0] = v13;
    v14.i64[1] = SHIDWORD(v13);
    *(a3 + 40) = vcvtq_f64_s64(v14);
  }

  CheckOutHandleDebug();
  return v12;
}

uint64_t VideoReceiver_GetLastReceivedVideoRTPPacketTime(uint64_t a1, void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149515266;
  }

  *a2 = *(v3 + 43216);
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoReceiver_GetLastReceivedVideoRTCPPacketTime(uint64_t a1, void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149515266;
  }

  *a2 = *(v3 + 43224);
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoReceiver_GetActiveVideoStallDuration(uint64_t a1, double *a2)
{
  v2 = 2149515265;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *a2 = 0.0;
      if (*(v4 + 42872) != 0.0)
      {
        *a2 = _VideoReceiver_GetVideoStallLength(v4);
      }

      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2149515266;
    }
  }

  return v2;
}

double _VideoReceiver_GetVideoStallLength(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = a1 + 40960;
  v3 = micro() - *(a1 + 42872);
  if (v3 < 0.0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v7 = *(v2 + 1904);
        v8 = *(v2 + 1912);
        v9 = *(v2 + 1880);
        v10 = *(v2 + 1920);
        v11 = 136317186;
        v12 = v4;
        v13 = 2080;
        v14 = "_VideoReceiver_GetVideoStallLength";
        v15 = 1024;
        v16 = 1713;
        v17 = 2048;
        v18 = a1;
        v19 = 1024;
        v20 = v7;
        v21 = 2048;
        v22 = v8;
        v23 = 2048;
        v24 = v3;
        v25 = 2048;
        v26 = v9;
        v27 = 2048;
        v28 = v10;
        _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, "VideoReceiver [%s] %s:%d VideoReceiver[%p] Invalid video stall time. count=%u stall start time=%f stall length=%f total stall time=%f stall time delta=%f", &v11, 0x54u);
      }
    }

    reportingSymptom();
    return 0.0;
  }

  return v3;
}

uint64_t VideoReceiver_GetLastVideoStallDuration(uint64_t a1, float *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149515266;
  }

  if (a2)
  {
    v4 = v3 + 40960;
    _VideoReceiver_CheckIfVideoStalling(v3);
    v5 = *(v4 + 1880);
    v6 = v5 - *(v4 + 1896);
    *a2 = v6;
    *(v4 + 1896) = v5;
  }

  CheckOutHandleDebug();
  return 0;
}

void _VideoReceiver_CheckIfVideoStalling(uint64_t a1)
{
  v1 = (a1 + 40960);
  if ((*(a1 + 42904) & 1) == 0)
  {
    if (*(a1 + 42872) == 0.0)
    {
      *(a1 + 42880) = 0;
    }

    else
    {
      VideoStallLength = _VideoReceiver_GetVideoStallLength(a1);
      v3 = v1[240];
      if (v3 == 0.0)
      {
        v1[240] = VideoStallLength;
        v1[235] = VideoStallLength + v1[235];
      }

      else
      {
        v1[235] = VideoStallLength - v3 + v1[235];
        v1[240] = VideoStallLength;
      }

      if (v1[241] > VideoStallLength)
      {
        VideoStallLength = v1[241];
      }

      v1[241] = VideoStallLength;
    }
  }
}

uint64_t VideoReceiver_GetShowFrameRTPTimestamp()
{
  v0 = CheckInHandleDebug();
  if (v0)
  {
    v1 = *(v0 + 43016);
    CheckOutHandleDebug();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoReceiver_GetShowFrameRTPTimestamp_cold_1();
      }
    }

    return 0;
  }

  return v1;
}

uint64_t VideoReceiver_CellTechChanged()
{
  v0 = CheckInHandleDebug();
  if (v0)
  {
    *(v0 + 42888) = 0;
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    v1 = 2149515266;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoReceiver_CellTechChanged_cold_1();
      }
    }
  }

  return v1;
}

uint64_t VideoReceiver_SetSynchronizer(uint64_t a1, uint64_t a2)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4 + 40920;
    if (*(v4 + 1400) == 2)
    {
      if (a2)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = __VideoReceiver_SetSynchronizer_block_invoke;
        v10[3] = &__block_descriptor_tmp_121;
        v10[4] = a1;
        v6 = v10;
        v7 = a2;
LABEL_10:
        VCMediaStreamSynchronizer_setSourcePlayoutTimeUpdatedHandler(v7, v6);
        goto LABEL_11;
      }

      v7 = *(v4 + 43328);
      if (v7)
      {
        v6 = 0;
        goto LABEL_10;
      }
    }

LABEL_11:
    *(v5 + 2408) = a2;
    *v5 = a2 != 0;
    CheckOutHandleDebug();
    return 0;
  }

  v8 = 2149515266;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoReceiver_SetSynchronizer_cold_1();
    }
  }

  return v8;
}