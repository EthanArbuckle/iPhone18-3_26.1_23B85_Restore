uint64_t OUTLINED_FUNCTION_41()
{

  return objc_opt_isKindOfClass();
}

uint64_t VCMediaNegotiationBlobV2StreamGroupReadFrom(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          v22 = objc_alloc_init(VCMediaNegotiationBlobV2StreamGroupStream);
          [a1 addStreams:v22];

          v24 = 0xAAAAAAAAAAAAAAAALL;
          v25 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobV2StreamGroupStreamReadFrom(v22, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_41;
        }

        if (v12 == 4)
        {
          v15 = objc_alloc_init(VCMediaNegotiationBlobV2SettingsU1);

          *(a1 + 16) = v15;
          v24 = 0xAAAAAAAAAAAAAAAALL;
          v25 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobV2SettingsU1ReadFrom(v15, a2);
          if (!result)
          {
            return result;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v24) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v24 & 0x7F) << v16;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v10 = v17++ >= 9;
            if (v10)
            {
              v21 = 0;
              goto LABEL_45;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v18;
          }

LABEL_45:
          *(a1 + 24) = v21;
          goto LABEL_46;
        }

        if (v12 == 2)
        {
          v13 = objc_alloc_init(VCMediaNegotiationBlobV2StreamGroupPayload);
          [a1 addPayloads:v13];

          v24 = 0xAAAAAAAAAAAAAAAALL;
          v25 = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobV2StreamGroupPayloadReadFrom(v13, a2);
          if (!result)
          {
            return result;
          }

LABEL_41:
          PBReaderRecallMark();
          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _VideoPacketBuffer_ClearFrameList(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    do
    {
      v5 = *(v3 + 112);
      *(v3 + 157) = _VideoPacketBuffer_IsFrameComplete(v3, 0);
      _VideoPacketBuffer_FreeFrame(a1, v3);
      v3 = v5;
    }

    while (v5);
  }

  *a2 = 0;
}

BOOL _VideoPacketBuffer_IsFrameComplete(uint64_t a1, _WORD *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 96);
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_7;
  }

  v4 = VRTraceErrorLogLevelToCSTR();
  v5 = *MEMORY[0x1E6986650];
  v6 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      _VideoPacketBuffer_IsFrameComplete_cold_1();
      if (!v3)
      {
        goto LABEL_44;
      }

LABEL_8:
      if (*(v3 + 2))
      {
        v7 = MEMORY[0x1E6986640];
        v8 = MEMORY[0x1E6986650];
        do
        {
          if (a2)
          {
            v9 = *v3;
            v10 = v9 - *a2;
            if (v10)
            {
              if (v10 <= 0x7FFEu)
              {
                *a2 = v9;
              }
            }
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *v8;
            v13 = *v8;
            if (*v7 == 1)
            {
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = *v3;
                *buf = 136315906;
                v39 = v11;
                v40 = 2080;
                v41 = "_VideoPacketBuffer_IsFrameComplete";
                v42 = 1024;
                v43 = 2122;
                v44 = 1024;
                v45 = v14;
                _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d Packet seq:%d", buf, 0x22u);
              }
            }

            else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              v17 = *v3;
              *buf = 136315906;
              v39 = v11;
              v40 = 2080;
              v41 = "_VideoPacketBuffer_IsFrameComplete";
              v42 = 1024;
              v43 = 2122;
              v44 = 1024;
              v45 = v17;
              _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d Packet seq:%d", buf, 0x22u);
            }
          }

          if (*(v3 + 4))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v26 = VRTraceErrorLogLevelToCSTR();
              v27 = *v8;
              v28 = *v8;
              if (*v7 == 1)
              {
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v39 = v26;
                  v40 = 2080;
                  v41 = "_VideoPacketBuffer_IsFrameComplete";
                  v42 = 1024;
                  v43 = 2124;
                  _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d END", buf, 0x1Cu);
                }
              }

              else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                _VideoPacketBuffer_IsFrameComplete_cold_2();
              }
            }

            return 1;
          }

          v15 = *(v3 + 13);
          if (!v15)
          {
            goto LABEL_44;
          }

          v16 = *v3;
          v3 = *(v3 + 13);
        }

        while (*v15 - v16 < 2);
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule < 8)
        {
          return 0;
        }

        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *v8;
        v32 = *v8;
        if (*v7 != 1)
        {
          result = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
          if (!result)
          {
            return result;
          }

          v34 = *v15;
          *buf = 136316162;
          v39 = v30;
          v40 = 2080;
          v41 = "_VideoPacketBuffer_IsFrameComplete";
          v42 = 1024;
          v43 = 2130;
          v44 = 1024;
          v45 = v16;
          v46 = 1024;
          v47 = v34;
          _os_log_debug_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d Error! Missing middle frames, beforeSeq:%d afterSeq:%d", buf, 0x28u);
          return 0;
        }

        result = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v33 = *v15;
        *buf = 136316162;
        v39 = v30;
        v40 = 2080;
        v41 = "_VideoPacketBuffer_IsFrameComplete";
        v42 = 1024;
        v43 = 2130;
        v44 = 1024;
        v45 = v16;
        v46 = 1024;
        v47 = v33;
        v23 = "VideoPacketBuffer [%s] %s:%d Error! Missing middle frames, beforeSeq:%d afterSeq:%d";
        v24 = v31;
        v25 = 40;
        goto LABEL_48;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        v20 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          result = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
          if (!result)
          {
            return result;
          }

          _VideoPacketBuffer_IsFrameComplete_cold_3();
          return 0;
        }

        result = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v22 = *v3;
        *buf = 136315906;
        v39 = v18;
        v40 = 2080;
        v41 = "_VideoPacketBuffer_IsFrameComplete";
        v42 = 1024;
        v43 = 2114;
        v44 = 1024;
        v45 = v22;
        v23 = "VideoPacketBuffer [%s] %s:%d Error! Missing initial frames, seq:%d";
        v24 = v19;
        v25 = 34;
        goto LABEL_48;
      }

      return 0;
    }

LABEL_7:
    if (!v3)
    {
      goto LABEL_44;
    }

    goto LABEL_8;
  }

  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_7;
  }

  *buf = 136315650;
  v39 = v4;
  v40 = 2080;
  v41 = "_VideoPacketBuffer_IsFrameComplete";
  v42 = 1024;
  v43 = 2112;
  _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d BEGIN", buf, 0x1Cu);
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_44:
  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return 0;
  }

  v35 = VRTraceErrorLogLevelToCSTR();
  v36 = *MEMORY[0x1E6986650];
  v37 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    result = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 136315650;
    v39 = v35;
    v40 = 2080;
    v41 = "_VideoPacketBuffer_IsFrameComplete";
    v42 = 1024;
    v43 = 2134;
    v23 = "VideoPacketBuffer [%s] %s:%d Error! Missing end of frame";
    v24 = v36;
    v25 = 28;
LABEL_48:
    _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    return 0;
  }

  result = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    _VideoPacketBuffer_IsFrameComplete_cold_4();
    return 0;
  }

  return result;
}

void _VideoPacketBuffer_FreeFrame(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1 + 151552;
  v4 = a2[12];
  if (*(a2 + 157) == 1)
  {
    v5 = *(a1 + 272);
    if (v5)
    {
      v6 = *(a1 + 240);
      if (*(a2 + 4) == 1)
      {
        v7 = *(a2 + 5) ^ 1;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(a2 + 4);
      v9 = *(a2 + 120);
      v10 = *(a2 + 149);
      v11 = *(a2 + 75);
      v12 = v7 & 1;
      v13 = a2[3];
      if (*(a1 + 240))
      {
        v6 = *(a2 + 73);
        v14 = *(a2 + 148);
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a1 + 264);
      v18[0] = *a2;
      v18[1] = 0;
      v18[2] = v8;
      v19 = 0;
      v20 = v9;
      v21 = 0;
      v22 = v6;
      v23 = v14;
      v25 = 0;
      v24 = 0;
      v26 = 0;
      v27 = v10;
      v28 = v11;
      v29 = 0;
      v30 = 0;
      v31 = v13;
      v32 = 0;
      v33 = 0;
      v34 = v12;
      v35 = 0;
      v36 = 1;
      v38 = 0;
      v37 = 0;
      v40 = 0;
      v39 = 0;
      v5(v15, v18);
    }
  }

  VCBlockBuffer_Clear((a2 + 9));
  VCMemoryPool_Free(*(v3 + 3512), a2);
  if (v4)
  {
    do
    {
      v16 = v4[13];
      VCBlockBuffer_Clear((v4 + 15));
      v17 = *(v3 + 3520);
      if (v17)
      {
        VCMemoryPool_Free(v17, v4);
      }

      v4 = v16;
    }

    while (v16);
  }
}

unsigned __int16 *VideoPacketBuffer_Create(void *a1)
{
  v41[2] = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x25E18uLL, 0x10F00403F1C8172uLL);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v4 = v2 + 77488;
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VideoPacketBuffer-create");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = "VideoPacketBuffer_Create";
      v36 = 1024;
      v37 = 366;
      v38 = 2048;
      v39 = v3;
      v40 = 2080;
      v41[0] = v3 + 184;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d @:@ VideoPacketBuffer-create (%p) %s", buf, 0x30u);
    }
  }

  memcpy(v3, a1, 0x190uLL);
  *(v3 + 19381) = a1[2];
  if (*(v3 + 56))
  {
    *(v3 + 19380) = 0x10000;
    v7 = malloc_type_calloc(1uLL, 0x2000uLL, 0x100004077774924uLL);
  }

  else
  {
    v7 = 0;
  }

  v8 = v3 + 25886;
  *(v3 + 19379) = v7;
  pthread_mutex_init((v3 + 200), 0);
  v9 = *v3;
  v10 = *(v3 + 1);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = "VideoPacketBuffer_Reset";
      v36 = 1024;
      v37 = 533;
      v38 = 2048;
      v39 = v3;
      v40 = 1024;
      LODWORD(v41[0]) = v9;
      WORD2(v41[0]) = 1024;
      *(v41 + 6) = v10;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] wFirstSeqNumber:%d, dwFirstTimestamp=%d", buf, 0x32u);
    }
  }

  pthread_mutex_lock((v3 + 200));
  _VideoPacketBuffer_FreeAllFrames(v3);
  *(v3 + 19373) = 0;
  *(v3 + 38753) = 0;
  *(v3 + 116) = v10 - 1;
  v3[234] = v9 - 1;
  v13 = micro();
  v14 = 0;
  *(v3 + 60) = v13;
  *(v3 + 61) = v13;
  *v4 = 0;
  *(v3 + 155120) = 0;
  v3[237] = 0;
  *(v3 + 19377) = 0;
  *(v3 + 155024) = 0;
  *(v3 + 62) = 0x3FD0000000000000;
  do
  {
    bzero(&v3[400 * v14 + 25868], 0x320uLL);
    v20 = v8;
    v21 = 128;
    do
    {
      *(v20 - 1) = 524296;
      v20 += 3;
      --v21;
    }

    while (v21);
    ++v14;
    v8 += 400;
  }

  while (v14 != 128);
  v22 = *(v3 + 19381);
  if (v22)
  {
    VRDump_AddEvent(v22, 3u, 0, v15, v16, v17, v18, v19, v33);
  }

  pthread_mutex_unlock((v3 + 200));
  *(v3 + 19383) = VCMemoryPool_CreateTyped(0xA8uLL, 0x10300401A8C4081);
  *(v3 + 19384) = VCMemoryPool_CreateTyped(0x90uLL, 0x1030040BA7ADE52);
  v23 = CMMemoryPoolCreate(0);
  *(v3 + 19385) = v23;
  if (!v23)
  {
    VideoPacketBuffer_Create_cold_8();
LABEL_47:
    VideoPacketBuffer_Destroy(v3);
    return 0;
  }

  if (*(v3 + 29))
  {
    *(v3 + 19386) = CFRetain(*(v3 + 29));
    *(v3 + 19388) = CFRetain(*(v3 + 29));
    *(v3 + 19387) = CFRetain(*(v3 + 29));
    *(v3 + 19389) = CFRetain(*(v3 + 29));
  }

  else
  {
    Allocator = CMMemoryPoolGetAllocator(v23);
    *(v3 + 19386) = Allocator;
    if (!Allocator)
    {
      VideoPacketBuffer_Create_cold_7();
      goto LABEL_47;
    }

    CFRetain(Allocator);
    *buf = xmmword_1DBD47EB0;
    v25 = *MEMORY[0x1E695E480];
    if (VCAllocatorMultiQueue_Create(*MEMORY[0x1E695E480], "VideoPacketBufferBlockBufferAllocator", 2u, buf, v3 + 19387))
    {
      VideoPacketBuffer_Create_cold_1();
      goto LABEL_47;
    }

    if (VCAllocatorFirstCome_Create(v25, "VPBSampleBufferAllocator", v3 + 19388))
    {
      VideoPacketBuffer_Create_cold_2();
      goto LABEL_47;
    }

    if (VCUseFigMemoryPoolForDataBlockBuffer())
    {
      v26 = CMMemoryPoolCreate(0);
      *(v3 + 19394) = v26;
      if (!v26)
      {
        VideoPacketBuffer_Create_cold_6();
        goto LABEL_47;
      }

      v27 = CMMemoryPoolGetAllocator(v26);
      *(v3 + 19389) = v27;
      if (!v27)
      {
        VideoPacketBuffer_Create_cold_5();
        goto LABEL_47;
      }

      CFRetain(v27);
    }

    else
    {
      v34 = 6;
      if (VCAllocatorMultiQueue_Create(v25, "VideoPacketBufferSliceHeaderAllocator", 1u, &v34, v3 + 19389))
      {
        VideoPacketBuffer_Create_cold_3();
        goto LABEL_47;
      }
    }

    if (*(v3 + 280) == 1)
    {
      v28 = *(v3 + 19392);
      v29 = *(v3 + 36);
      *(v3 + 19392) = v29;
      if (v29)
      {
        CFRetain(v29);
      }

      if (v28)
      {
        CFRelease(v28);
      }
    }
  }

  if (*(v3 + 366) == 1 && VCFECConsumerFrameBased_Create(*MEMORY[0x1E695E480], v3 + 19393, 0))
  {
    VideoPacketBuffer_Create_cold_4();
    goto LABEL_47;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VideoPacketBuffer-created");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = "VideoPacketBuffer_Create";
      v36 = 1024;
      v37 = 434;
      v38 = 2048;
      v39 = v3;
      v40 = 2080;
      v41[0] = v3 + 184;
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d @:@ VideoPacketBuffer-created (%p) %s", buf, 0x30u);
    }
  }

  return v3;
}

void VideoPacketBuffer_Destroy(uint64_t a1)
{
  if (a1)
  {
    v2 = (a1 + 151552);
    pthread_mutex_lock((a1 + 400));
    v3 = v2[435];
    if (v3)
    {
      free(v3);
      v2[435] = 0;
    }

    *(a1 + 248) = 0u;
    *(a1 + 264) = 0u;
    _VideoPacketBuffer_FreeAllFrames(a1);
    v4 = v2[439];
    if (v4)
    {
      VCMemoryPool_Destroy(v4);
      v2[439] = 0;
    }

    v5 = v2[440];
    if (v5)
    {
      VCMemoryPool_Destroy(v5);
      v2[440] = 0;
    }

    v6 = v2[448];
    if (v6)
    {
      CFRelease(v6);
      v2[448] = 0;
    }

    v7 = v2[442];
    if (v7)
    {
      CFRelease(v7);
      v2[442] = 0;
    }

    v8 = v2[441];
    if (v8)
    {
      CMMemoryPoolInvalidate(v8);
      v9 = v2[441];
      if (v9)
      {
        CFRelease(v9);
        v2[441] = 0;
      }
    }

    v10 = v2[443];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = v2[444];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = v2[445];
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = v2[450];
    if (v13)
    {
      CMMemoryPoolInvalidate(v13);
      v14 = v2[450];
      if (v14)
      {
        CFRelease(v14);
        v2[450] = 0;
      }
    }

    v15 = v2[449];
    if (v15)
    {
      CFRelease(v15);
      v2[449] = 0;
    }

    pthread_mutex_unlock((a1 + 400));
    pthread_mutex_destroy((a1 + 400));

    free(a1);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoPacketBuffer_Destroy_cold_1();
    }
  }
}

void _VideoPacketBuffer_FreeAllFrames(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1 + 151552;
  _VideoPacketBuffer_ClearFrameList(a1, (a1 + 154944));
  _VideoPacketBuffer_ClearFrameList(a1, (a1 + 154952));
  *(v2 + 3408) = 0;
  *(v2 + 3504) = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "_VideoPacketBuffer_FreeAllFrames";
      v9 = 1024;
      v10 = 357;
      v11 = 2048;
      v12 = a1;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Freed all frames", &v5, 0x26u);
    }
  }
}

void VideoPacketBuffer_NeedRefreshFrame(uint64_t a1, int a2, int a3, unsigned int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = a1 + 151552;
    pthread_mutex_lock((a1 + 400));
    v10 = a4 == 27 || a4 - 17 < 2;
    if (*(v8 + 3468))
    {
      v11 = a4 > 0x1B;
    }

    else
    {
      v11 = 1;
    }

    if (v11 || ((1 << a4) & 0x8060000) == 0 || (a2 & ~a3) == 0)
    {
      _VideoPacketBuffer_FreeAllFrames(a1);
      *(v8 + 3432) = 0;
      if (a4 == 27)
      {
        v14 = *(v8 + 3460);
      }

      else
      {
        v14 = 0;
      }

      *(v8 + 3460) = v14;
      *(v8 + 3472) = v10;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = kVCKeyFrameRequestReasonStrings[a4];
          v18 = *(v8 + 3472);
          v21 = 136316930;
          v22 = v15;
          v23 = 2080;
          v24 = "VideoPacketBuffer_NeedRefreshFrame";
          v25 = 1024;
          v26 = 515;
          v27 = 2048;
          v28 = a1;
          v29 = 1024;
          v30 = a2;
          v31 = 2080;
          v32 = v17;
          v33 = 1024;
          v34 = a3;
          v35 = 1024;
          v36 = v18;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] needIntraframe=%d reason=%s, needImageDescription=%d, isDecoderOutOfSync=%d", &v21, 0x42u);
        }
      }

      if (a2)
      {
        *(v8 + 3468) = 1;
        *(v8 + 3476) = a4;
      }

      if (a3)
      {
        *(v8 + 3464) = 0;
      }

      pthread_mutex_unlock((a1 + 400));
    }

    else
    {
      pthread_mutex_unlock((a1 + 400));
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v21 = 136315906;
          v22 = v19;
          v23 = 2080;
          v24 = "VideoPacketBuffer_NeedRefreshFrame";
          v25 = 1024;
          v26 = 505;
          v27 = 2048;
          v28 = a1;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Already in need refresh state, no need to clear buffers again.", &v21, 0x26u);
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoPacketBuffer_NeedRefreshFrame_cold_1();
    }
  }
}

void VideoPacketBuffer_GetCachedBurstLossStatistics(uint64_t a1, void *__dst)
{
  if (a1 && __dst)
  {

    memcpy(__dst, (a1 + 154136), 0x320uLL);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoPacketBuffer_GetCachedBurstLossStatistics_cold_1();
    }
  }
}

void _VideoPacketBuffer_ProcessFrameStats(uint64_t a1, double a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  LOWORD(v7) = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v72 = *MEMORY[0x1E69E9840];
  v13 = a1 + 154136;
  v14 = (a1 + 51760);
  v15 = *(a1 + 154936);
  v16 = *(a1 + 356);
  v17 = a1 + 10108;
  v18 = a1 + 30916;
  v19 = 0.0;
  v20 = 0.0;
  v21 = -1;
  do
  {
    v22 = *(v14 - 7);
    v24 = *(v14 - 6);
    v23 = *(v14 - 5);
    if (v16 == 0.0)
    {
      v25 = *(a1 + 352);
    }

    else
    {
      v25 = *(a1 + 496) * v16;
    }

    v26 = *v14;
    v27 = fmin(v25, 0.15);
    if (*(v14 - 7))
    {
      v28 = v24 == -1;
    }

    else
    {
      v28 = 1;
    }

    if (!v28 && v23 <= v15 && a2 - *v14 > v27)
    {
      v31 = *(v14 - 5);
      v32 = v31 / v22;
      if (v20 <= v32)
      {
        if (v22 >= 0x66)
        {
          v33 = 102;
        }

        else
        {
          v33 = *(v14 - 7);
        }

        if (v31 >= v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = *(v14 - 5);
        }

        v35 = v17 + 204 * v33;
        v36 = *(v35 + 2 * v34);
        if (v36 != 0xFFFF)
        {
          *(v35 + 2 * v34) = v36 + 1;
        }

        v37 = *(v14 - 8);
        if (v37 >= 0x66)
        {
          v37 = 102;
        }

        v7 = *(v14 - 4);
        if (v37 >= v7)
        {
          v38 = *(v14 - 4);
        }

        else
        {
          v38 = v37;
        }

        v39 = (v18 + 204 * (v37 + v33) + 2 * (v38 + v34));
        v40 = *v39;
        if (v40 == 0xFFFF)
        {
          v8 = v31;
          v10 = v22;
        }

        else
        {
          *v39 = v40 + 1;
          v10 = *(v14 - 7);
          v8 = *(v14 - 5);
          LOWORD(v7) = *(v14 - 4);
        }

        v9 = *(v14 - 6);
        v4 = *(v14 - 2);
        v12 = v24;
        v11 = v23;
        v6 = *(v14 - 3);
        v19 = v26;
        v20 = v31 / v22;
        v21 = v3;
        v5 = *(v14 - 2);
      }

      *(v14 - 6) = -1;
    }

    ++v3;
    v14 += 100;
  }

  while (v3 != 128);
  if (v21 != -1)
  {
    v46 = v8;
    v47 = v13;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v44 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      log = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(v47 + 800);
          *buf = 136317954;
          v49 = v44;
          v50 = 2080;
          v51 = "_VideoPacketBuffer_ProcessFrameStats";
          v52 = 1024;
          v53 = 727;
          v54 = 2048;
          v55 = a1;
          v56 = 1024;
          v57 = v21;
          v58 = 1024;
          v59 = v12;
          v60 = 1024;
          v61 = v42;
          v62 = 1024;
          v63 = v11;
          v64 = 1024;
          v65 = v10;
          v66 = 1024;
          v67 = v46;
          v68 = 2048;
          v69 = v20;
          v70 = 2048;
          v71 = v19;
          _os_log_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] FEC Feedback computed maxLossFrameIndex=%d frameSequenceNumber=%d playoutRTPTimestamp=%u rtpTimestamp=%u frameSize=%u VideoPacketsLostPerFrame=%u lossRatio=%2.2f arrivalTime=%2.3f", buf, 0x5Eu);
        }
      }

      else if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v43 = *(v47 + 800);
        *buf = 136317954;
        v49 = v44;
        v50 = 2080;
        v51 = "_VideoPacketBuffer_ProcessFrameStats";
        v52 = 1024;
        v53 = 727;
        v54 = 2048;
        v55 = a1;
        v56 = 1024;
        v57 = v21;
        v58 = 1024;
        v59 = v12;
        v60 = 1024;
        v61 = v43;
        v62 = 1024;
        v63 = v11;
        v64 = 1024;
        v65 = v10;
        v66 = 1024;
        v67 = v46;
        v68 = 2048;
        v69 = v20;
        v70 = 2048;
        v71 = v19;
        _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] FEC Feedback computed maxLossFrameIndex=%d frameSequenceNumber=%d playoutRTPTimestamp=%u rtpTimestamp=%u frameSize=%u VideoPacketsLostPerFrame=%u lossRatio=%2.2f arrivalTime=%2.3f", buf, 0x5Eu);
      }
    }

    *(v47 + 10) = v10;
    *(v47 + 12) = v9;
    *v47 = v12;
    *(v47 + 4) = v11;
    *(v47 + 22) = v4;
    *(v47 + 24) = v19;
    *(v47 + 14) = v46;
    *(v47 + 16) = v7;
    *(v47 + 18) = v6;
    *(v47 + 20) = v5;
  }
}

void VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics(uint64_t a1, unsigned int a2, unsigned __int16 *a3, int a4, int a5, char a6, int a7, double a8)
{
  v86 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics_cold_5();
    return;
  }

  if (!a3)
  {
    VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics_cold_4();
    return;
  }

  if ((a2 & 0x80000000) != 0)
  {
    VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics_cold_3();
    return;
  }

  v15 = (a1 + 800 * a2 + 51736);
  bzero(v15, 0x320uLL);
  v16 = *a3;
  *(v15 + 5) = v16;
  *(v15 + 4) = a3[1];
  *v15 = a4;
  v15[1] = a5;
  *(v15 + 22) = a6;
  *(v15 + 3) = a8;
  if (v16 >= 2)
  {
    v17 = v16 - a3[2];
    if (v17 < 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        v20 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v60 = 136315650;
            v61 = v18;
            v62 = 2080;
            v63 = "VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics";
            v64 = 1024;
            v65 = 773;
            _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d Received more video packets than expected.", &v60, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics_cold_1();
        }
      }

      v17 = 0;
    }

    *(v15 + 7) = v17;
    v31 = a3[1] - a3[3];
    if (v31 < 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        v34 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v60 = 136315650;
            v61 = v32;
            v62 = 2080;
            v63 = "VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics";
            v64 = 1024;
            v65 = 780;
            _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d Received more parity packets than expected.", &v60, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics_cold_2();
        }
      }

      v31 = 0;
    }

    *(v15 + 8) = v31;
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    v37 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *v15;
        v39 = *(v15 + 5);
        v40 = *(v15 + 7);
        v41 = *(v15 + 8);
        v42 = *a3;
        v43 = a3[1];
        v44 = a3[2];
        v45 = a3[3];
        v60 = 136318210;
        v61 = v35;
        v62 = 2080;
        v63 = "VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics";
        v64 = 1024;
        v65 = 785;
        v66 = 1024;
        v67 = v38;
        v68 = 1024;
        v69 = v39;
        v70 = 1024;
        v71 = v40;
        v72 = 1024;
        v73 = v41;
        v74 = 1024;
        v75 = v17;
        v76 = 1024;
        v77 = v31;
        v78 = 1024;
        v79 = v42;
        v80 = 1024;
        v81 = v43;
        v82 = 1024;
        v83 = v44;
        v84 = 1024;
        v85 = v45;
        v28 = "VideoPacketBuffer [%s] %s:%d frameSequenceNumber=%d size=%d maxVideoPacketsLostPerFrame=%d, maxParityPacketsLostPerFrame=%d, videoPacketsLost=%d, parityPacketsLost=%d, videoPacketsExpected=%d, parityPacketsExpected=%d, videoPacketsReceived=%d, parityPacketsReceived=%d";
        v29 = v36;
        v30 = 88;
        goto LABEL_34;
      }

      return;
    }

    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v46 = *v15;
    v47 = *(v15 + 5);
    v48 = *(v15 + 7);
    v49 = *(v15 + 8);
    v50 = *a3;
    v51 = a3[1];
    v52 = a3[2];
    v53 = a3[3];
    v60 = 136318210;
    v61 = v35;
    v62 = 2080;
    v63 = "VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics";
    v64 = 1024;
    v65 = 785;
    v66 = 1024;
    v67 = v46;
    v68 = 1024;
    v69 = v47;
    v70 = 1024;
    v71 = v48;
    v72 = 1024;
    v73 = v49;
    v74 = 1024;
    v75 = v17;
    v76 = 1024;
    v77 = v31;
    v78 = 1024;
    v79 = v50;
    v80 = 1024;
    v81 = v51;
    v82 = 1024;
    v83 = v52;
    v84 = 1024;
    v85 = v53;
    v54 = "VideoPacketBuffer [%s] %s:%d frameSequenceNumber=%d size=%d maxVideoPacketsLostPerFrame=%d, maxParityPacketsLostPerFrame=%d, videoPacketsLost=%d, parityPacketsLost=%d, videoPacketsExpected=%d, parityPacketsExpected=%d, videoPacketsReceived=%d, parityPacketsReceived=%d";
    v55 = v36;
    v56 = 88;
LABEL_40:
    _os_log_debug_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_DEBUG, v54, &v60, v56);
    return;
  }

  if (v16 != 1 || a7 != 124 && a7 != 110)
  {
    return;
  }

  v21 = a4 - *(a1 + 472);
  if (v21 >= 2)
  {
    *(v15 + 7) = v21;
    *(v15 + 5) = v21 + 1;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return;
  }

  v22 = VRTraceErrorLogLevelToCSTR();
  v23 = *MEMORY[0x1E6986650];
  v24 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v57 = *v15;
    v58 = *(a1 + 474);
    v59 = *(a1 + 472);
    v60 = 136316674;
    v61 = v22;
    v62 = 2080;
    v63 = "VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics";
    v64 = 1024;
    v65 = 793;
    v66 = 1024;
    v67 = v21;
    v68 = 1024;
    v69 = v57;
    v70 = 1024;
    v71 = v58;
    v72 = 1024;
    v73 = v59;
    v54 = "VideoPacketBuffer [%s] %s:%d Single packet frame, frameSequenceNumberJump=%d, maxLossStats->frameSequenceNumber=%d, lastAssembledFrameSequenceNumber=%d previousAssembledFrameSequenceNumber=%d";
    v55 = v23;
    v56 = 52;
    goto LABEL_40;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *v15;
    v26 = *(a1 + 474);
    v27 = *(a1 + 472);
    v60 = 136316674;
    v61 = v22;
    v62 = 2080;
    v63 = "VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics";
    v64 = 1024;
    v65 = 793;
    v66 = 1024;
    v67 = v21;
    v68 = 1024;
    v69 = v25;
    v70 = 1024;
    v71 = v26;
    v72 = 1024;
    v73 = v27;
    v28 = "VideoPacketBuffer [%s] %s:%d Single packet frame, frameSequenceNumberJump=%d, maxLossStats->frameSequenceNumber=%d, lastAssembledFrameSequenceNumber=%d previousAssembledFrameSequenceNumber=%d";
    v29 = v23;
    v30 = 52;
LABEL_34:
    _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, &v60, v30);
  }
}

void VideoPacketBuffer_UpdateMaxGroupBurstLossStatistics(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5, int a6)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 >= 9)
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
            v22 = 136315650;
            v23 = v11;
            v24 = 2080;
            v25 = "VideoPacketBuffer_UpdateMaxGroupBurstLossStatistics";
            v26 = 1024;
            v27 = 807;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d Lost more video symbols than expected.", &v22, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          VideoPacketBuffer_UpdateMaxGroupBurstLossStatistics_cold_1();
        }
      }

      a2 = 8;
    }

    v14 = FECUtil_ConvertNumberOfSymbolsToPackets(a2, a4);
    v15 = v14;
    v16 = (a1 + 6 * a6);
    v17 = v16[17];
    if (v17 == 8 || v14 <= v17)
    {
      v16[16] = a5;
      v16[17] = v14;
      v16[18] = a3;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      v21 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 136316930;
          v23 = v19;
          v24 = 2080;
          v25 = "VideoPacketBuffer_UpdateMaxGroupBurstLossStatistics";
          v26 = 1024;
          v27 = 820;
          v28 = 1024;
          v29 = a6;
          v30 = 1024;
          v31 = v15;
          v32 = 1024;
          v33 = a3;
          v34 = 1024;
          v35 = a4;
          v36 = 1024;
          v37 = a5;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d groupID=%d videoPacketsLost=%d parityPacketsLostPerGroup=%d numberOfSymbolsPerPacket=%d numberOfDataPackets=%d", &v22, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = 136316930;
        v23 = v19;
        v24 = 2080;
        v25 = "VideoPacketBuffer_UpdateMaxGroupBurstLossStatistics";
        v26 = 1024;
        v27 = 820;
        v28 = 1024;
        v29 = a6;
        v30 = 1024;
        v31 = v15;
        v32 = 1024;
        v33 = a3;
        v34 = 1024;
        v35 = a4;
        v36 = 1024;
        v37 = a5;
        _os_log_debug_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d groupID=%d videoPacketsLost=%d parityPacketsLostPerGroup=%d numberOfSymbolsPerPacket=%d numberOfDataPackets=%d", &v22, 0x3Au);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoPacketBuffer_UpdateMaxGroupBurstLossStatistics_cold_2();
    }
  }
}

void VideoPacketBuffer_GetStatistics(uint64_t a1, void *__dst)
{
  if (a1)
  {
    if (__dst)
    {

      memcpy(__dst, (a1 + 504), 0xC820uLL);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoPacketBuffer_GetStatistics_cold_1();
    }
  }
}

void VideoPacketBuffer_ResetStatistics(uint64_t a1)
{
  if (a1)
  {
    v2 = (a1 + 504);

    bzero(v2, 0xC820uLL);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoPacketBuffer_ResetStatistics_cold_1();
    }
  }
}

uint64_t VideoPacketBuffer_AddPacket(uint64_t a1, int *a2, int a3, int a4, char a5)
{
  v212 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = "VideoPacketBuffer_AddPacket";
        *&buf[22] = 1024;
        *&buf[24] = 1783;
        *&buf[28] = 1024;
        *&buf[30] = a4;
        *&buf[34] = 1024;
        *&buf[36] = a3;
        _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer pointer is null, isBaseLayerStream=%d, isTemporalScaledStream=%d", buf, 0x28u);
      }
    }

    return 0;
  }

  if (!*(a2 + 7))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoPacketBuffer_AddPacket_cold_3();
      }
    }

    return 0;
  }

  v10 = *(a2 + 8);
  v11 = *v10;
  v203 = v10[1];
  v201 = *(v10 + 6);
  v12 = v10[4];
  v13 = *(v10 + 81);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    v16 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v14;
        *&buf[12] = 2080;
        *&buf[14] = "VideoPacketBuffer_AddPacket";
        *&buf[22] = 1024;
        *&buf[24] = 1805;
        *&buf[28] = 1024;
        *&buf[30] = v13;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d [Media Priority] Received video priority=%u", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      VideoPacketBuffer_AddPacket_cold_1();
    }
  }

  v19 = *(v10 + 80);
  v195 = *(v10 + 12);
  v196 = *(v10 + 26);
  if (v19 >= 0xD)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v20;
        *&buf[12] = 2080;
        *&buf[14] = "VideoPacketBuffer_AddPacket";
        *&buf[22] = 1024;
        *&buf[24] = 1813;
        *&buf[28] = 1024;
        *&buf[30] = v19;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d Invalid Stream Id Count %d", buf, 0x22u);
      }
    }

    v19 = 0;
  }

  v22 = micro();
  v23 = *(a2 + 7);
  v197 = v11;
  v194 = v13;
  if (v23)
  {
    if (*v23)
    {
      v24 = v23[2];
      v25 = v24 >> 30;
      v26 = (v24 >> 26) & 1;
      if (v24 >> 30 == 1)
      {
        v26 = ((v24 >> 22) & 1) == 0;
      }

      v27 = ((v24 >> 23) & 1) == 0;
      if (v25)
      {
        v28 = v26;
      }

      else
      {
        v28 = v27;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = *v23 != 0;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v30 = v23[2];
  v31 = v30 >> 30;
  if (!(v30 >> 30))
  {
    v33 = 0;
    v191 = HIBYTE(v30) & 7;
LABEL_41:
    v36 = (v30 & 0x3FF);
    goto LABEL_42;
  }

  if (v31 == 1)
  {
    v32 = (v30 >> 23) & 0xF;
  }

  else
  {
    v34 = *v23;
    v35 = v31 != 2 || v34 == 0;
    v32 = HIWORD(v30) & 0x3FF;
    if (v35)
    {
      v32 = 0;
    }
  }

  v191 = v32;
  if ((v30 & 0x80000000) == 0)
  {
    v33 = v29;
    goto LABEL_41;
  }

  if (*(a2 + 24))
  {
    v36 = (100 * (v30 & 0x3FF) / *(a2 + 24));
  }

  else
  {
    v36 = 0.0;
  }

  v33 = v29;
LABEL_42:
  v37 = v36;
  v193 = v19;
  if (v29)
  {
    if (v33)
    {
      v38 = FECUtil_FECRatioToLevelofProtection(v37 / 100.0);
      v39 = *(a2 + 24) == 1;
    }

    else
    {
      v39 = 0;
      v38 = 4 * (v19 > 1);
    }
  }

  else
  {
    v39 = 0;
    v38 = 0;
  }

  v40 = 0;
  if ((v203 - 100) <= 0x1A && ((1 << (v203 - 100)) & 0x5800401) != 0)
  {
    v41 = a1 + 151552;
    pthread_mutex_lock((a1 + 400));
    v48 = *(a1 + 155136);
    if (v48)
    {
      v49 = v28;
    }

    else
    {
      v49 = 1;
    }

    if ((v49 & 1) == 0)
    {
      *buf = 0xAAAAAAAAAAAAAAAALL;
      *&buf[8] = -1;
      *&buf[16] = 0xAAAAAAAAAAAAAAAALL;
      *&buf[24] = 0xAAAAAAAAAAAAAAAALL;
      v50 = *(v10 + 6);
      buf[16] = *(v10 + 194);
      v51 = v10[4];
      *buf = v10[5];
      *&buf[4] = v50;
      *&buf[8] = *(v10 + 4);
      *&buf[20] = v51;
      buf[24] = v29;
      *&buf[26] = *(a2 + 23);
      *&buf[28] = *(v10 + 14);
      buf[30] = 0;
      buf[31] = a5;
      VCNACKGenerator_AddPacketInfo(v48, buf, v42, v43, v44, v45, v46, v47);
    }

    v52 = FECUtil_ConvertToWholePercentage(v37);
    v190 = v39;
    v200 = v38;
    if (v29)
    {
      v53 = *(*(a2 + 2) + 8);
      v54 = a1 + 520;
      v55 = a1 + 1000;
      if (v28)
      {
        *(v54 + 48 * v38 + 8) += v53;
        v56 = (v55 + 48 * v52);
LABEL_59:
        v57 = v56 + 1;
        goto LABEL_62;
      }

      *(v54 + 48 * v38) += v53;
      v57 = (v55 + 48 * v52);
    }

    else
    {
      v53 = *(*(a2 + 2) + 8);
      v57 = (a1 + 1000);
      if (*(a2 + 72) == 1)
      {
        *(a1 + 672) += v53;
        v56 = &v57[6 * v52];
        goto LABEL_59;
      }

      *(a1 + 520) += v53;
    }

LABEL_62:
    *v57 += v53;
    v58 = v28 | *(a2 + 72);
    *(a1 + 488) = v22;
    v59 = (v12 - *(a1 + 464)) > 0x7FFFFFFE || v12 == *(a1 + 464);
    v202 = v58;
    v60 = ((v12 - *(a1 + 464)) > 0x7FFFFFFE) & ~v58;
    if (!*(a1 + 155048))
    {
LABEL_87:
      if (!v59)
      {
        v82 = (v41 + 3392);
        goto LABEL_91;
      }

      if (*(a2 + 45) == 1)
      {
        v80 = *(a2 + 23);
        v81 = 474;
      }

      else
      {
        v81 = 470;
        v80 = v201;
      }

      if (*(a1 + 241) == 1 && *(v41 + 3468) && (v80 - *(a1 + v81)) <= 0x7FFEu)
      {
        v82 = (v41 + 3400);
        kdebug_trace();
        _VideoPacketBuffer_CorrectFrameStats(a1, *(a2 + 23), v202 & 1);
LABEL_91:
        v83 = *v82;
        if (*v82)
        {
          v84 = *(v83 + 16);
          if ((v84 - v12) < 0x7FFFFFFF)
          {
            v85 = 0;
            goto LABEL_97;
          }

          do
          {
            v85 = v83;
            v83 = *(v83 + 112);
            if (!v83)
            {
              v192 = 0;
              v82 = (v85 + 112);
              goto LABEL_128;
            }

            v84 = *(v83 + 16);
          }

          while ((v84 - v12) >= 0x7FFFFFFF);
          v82 = (v85 + 112);
LABEL_97:
          if (v84 == v12)
          {
            if (!*(v83 + 36))
            {
              *(v83 + 36) = *(a2 + 44);
            }

            *(v83 + 55) = v59;
            *(v83 + 56) |= v60;
            *(v83 + 57) |= *(v10 + 194);
            v86 = v202;
            v87 = a1 + 151552;
            if ((*v83 == v203) | v202 & 1)
            {
              if ((*(v83 + 8) == *a2) | v202 & 1)
              {
                if (!((*(v83 + 12) == a2[1]) | v202 & 1))
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v88 = VRTraceErrorLogLevelToCSTR();
                    v89 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v90 = *(v83 + 12);
                      v91 = a2[1];
                      *buf = 136316930;
                      *&buf[4] = v88;
                      *&buf[12] = 2080;
                      *&buf[14] = "VideoPacketBuffer_AddPacket";
                      *&buf[22] = 1024;
                      *&buf[24] = 1985;
                      *&buf[28] = 2048;
                      *&buf[30] = a1;
                      *&buf[38] = 1024;
                      *v205 = v201;
                      *&v205[4] = 2048;
                      *&v205[6] = v12;
                      *&v205[14] = 1024;
                      *&v205[16] = v90;
                      *&v205[20] = 1024;
                      *&v205[22] = v91;
                      v92 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] $ Discarding packet %d, frame %lu.  Packet.pctype disagree, first %d, then %d";
                      goto LABEL_123;
                    }
                  }

LABEL_124:
                  v40 = 0;
                  goto LABEL_217;
                }

LABEL_139:
                if (*(v10 + 194) == 1 && *(a1 + 242) == 1 && VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v114 = VRTraceErrorLogLevelToCSTR();
                  v115 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v116 = v10[5];
                    v117 = *(v10 + 6);
                    v118 = *(v10 + 14);
                    v119 = *(v10 + 194);
                    v120 = *(v83 + 150);
                    *buf = 136316930;
                    *&buf[4] = v114;
                    *&buf[12] = 2080;
                    *&buf[14] = "VideoPacketBuffer_AddPacket";
                    *&buf[22] = 1024;
                    *&buf[24] = 1991;
                    *&buf[28] = 1024;
                    *&buf[30] = v116;
                    *&buf[34] = 1024;
                    *&buf[36] = v117;
                    *v205 = 1024;
                    *&v205[2] = v118;
                    *&v205[6] = 1024;
                    *&v205[8] = v119;
                    *&v205[12] = 1024;
                    *&v205[14] = v120;
                    _os_log_impl(&dword_1DB56E000, v115, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d Retransmitted packet arrived ssrc=%u seqNum=%u packetLen=%d isRetransmitted=%d frameSequenceNumber=%d", buf, 0x3Au);
                  }
                }

                if (*(v83 + 54))
                {
                  v121 = 1;
                }

                else
                {
                  v121 = *(v10 + 40);
                }

                LODWORD(v122) = v201;
                *(v83 + 54) = v121 & 1;
                v123 = *(v10 + 4);
                if (v123 > *(v83 + 24))
                {
                  *(v83 + 24) = v123;
                }

                if (*(a1 + 240) == 1 && v196)
                {
                  if (*(v83 + 148) == 1)
                  {
                    if (*(v83 + 146) != v195)
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        v124 = VRTraceErrorLogLevelToCSTR();
                        v125 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                        {
                          v183 = *(v83 + 146);
                          *buf = 136316418;
                          *&buf[4] = v124;
                          *&buf[12] = 2080;
                          *&buf[14] = "_VideoPacketBuffer_UpdateFrameDecodingOrder";
                          *&buf[22] = 1024;
                          *&buf[24] = 1557;
                          *&buf[28] = 2048;
                          *&buf[30] = a1;
                          *&buf[38] = 1024;
                          *v205 = v183;
                          *&v205[4] = 1024;
                          *&v205[6] = v195;
                          _os_log_error_impl(&dword_1DB56E000, v125, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Decoding order is different within a frame. Previous:%d New:%d", buf, 0x32u);
                        }
                      }

                      *(v83 + 146) = v195;
                      LODWORD(v122) = v201;
                    }
                  }

                  else
                  {
                    *(v83 + 146) = v195;
                    *(v83 + 148) = 1;
                  }
                }

                v127 = (v83 + 96);
                v126 = *(v83 + 96);
                if (!v126)
                {
                  goto LABEL_201;
                }

                v128 = *(a2 + 7);
                while (2)
                {
                  v129 = *v126;
                  if (v129 != v122 && (v129 - v122) < 0x7FFFu)
                  {
                    goto LABEL_201;
                  }

                  if (v129 == v122)
                  {
                    if (!v128 || !*v128)
                    {
                      goto LABEL_206;
                    }

                    v130 = v128[2];
                    v131 = v130 >> 30;
                    if (v130 >> 30)
                    {
                      v134 = (v130 >> 26) & 1;
                      if ((v130 & 0xC0000000) == 0x40000000)
                      {
                        v134 = ((v130 >> 22) & 1) == 0;
                      }

                      if (!v134)
                      {
LABEL_206:
                        v87 = a1 + 151552;
                        if (!*(v126 + 6))
                        {
                          goto LABEL_230;
                        }

                        v149 = *(v126 + 8);
                        if (!(v149 >> 30))
                        {
                          if ((v149 & 0x800000) == 0)
                          {
                            goto LABEL_209;
                          }

LABEL_230:
                          v86 = v202;
                          if (VRTraceGetErrorLogLevelForModule() < 8)
                          {
                            goto LABEL_261;
                          }

                          v163 = VRTraceErrorLogLevelToCSTR();
                          v164 = *MEMORY[0x1E6986650];
                          v165 = *MEMORY[0x1E6986650];
                          if (*MEMORY[0x1E6986640] == 1)
                          {
                            if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
                            {
                              v166 = v128[2];
                              v167 = v166 >> 30;
                              if (v166 >> 30)
                              {
                                v168 = (v166 >> 15) & 0x7F;
                                if (v167 == 1)
                                {
                                  v169 = (v166 >> 23) & 0xF;
                                }

                                else
                                {
                                  v168 = 0;
                                  v169 = 0;
                                  if (v167 == 2 && *v128)
                                  {
                                    v169 = HIWORD(v166) & 0x3FF;
                                  }
                                }
                              }

                              else
                              {
                                v168 = HIWORD(v166) & 0x7F;
                                v169 = HIBYTE(v166) & 7;
                              }

                              *buf = 136316674;
                              *&buf[4] = v163;
                              *&buf[12] = 2080;
                              *&buf[14] = "_VideoPacketBuffer_ShouldInsertNonParityPacketBeforePacket";
                              *&buf[22] = 1024;
                              *&buf[24] = 1600;
                              *&buf[28] = 1024;
                              *&buf[30] = v201;
                              *&buf[34] = 1024;
                              *&buf[36] = 0;
                              *v205 = 1024;
                              *&v205[2] = v168;
                              *&v205[6] = 1024;
                              *&v205[8] = v169;
                              v177 = "VideoPacketBuffer [%s] %s:%d Duplicate non-partity packet! Incoming packet with sequenceNumber=%d, isParity=%d, groupID=%d, startPosition=%d";
                              v178 = v164;
LABEL_260:
                              _os_log_impl(&dword_1DB56E000, v178, OS_LOG_TYPE_DEFAULT, v177, buf, 0x34u);
                            }

LABEL_261:
                            v40 = 0;
                            ++*(v126 + 24);
                            if (!v83)
                            {
LABEL_222:
                              _VideoPacketBuffer_CorrectFrameStats(a1, *(a2 + 23), v86 & 1);
                              pthread_mutex_unlock((a1 + 400));
                              return v40;
                            }

LABEL_217:
                            if ((v40 & 1) != 0 || *(v83 + 104) == 1)
                            {
                              if (v86)
                              {
                                ++*(v83 + 110);
                              }

                              else
                              {
                                ++*(v83 + 108);
                              }
                            }

                            else
                            {
                              v40 = 0;
                            }

                            goto LABEL_222;
                          }

                          if (!os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
                          {
                            goto LABEL_261;
                          }

                          v170 = v128[2];
                          v171 = v170 >> 30;
                          if (v170 >> 30)
                          {
                            v172 = (v170 >> 15) & 0x7F;
                            if (v171 == 1)
                            {
                              v173 = (v170 >> 23) & 0xF;
                            }

                            else
                            {
                              v172 = 0;
                              v173 = 0;
                              if (v171 == 2 && *v128)
                              {
                                v173 = HIWORD(v170) & 0x3FF;
                              }
                            }

                            v86 = v202;
                          }

                          else
                          {
                            v172 = HIWORD(v170) & 0x7F;
                            v173 = HIBYTE(v170) & 7;
                          }

                          *buf = 136316674;
                          *&buf[4] = v163;
                          *&buf[12] = 2080;
                          *&buf[14] = "_VideoPacketBuffer_ShouldInsertNonParityPacketBeforePacket";
                          *&buf[22] = 1024;
                          *&buf[24] = 1600;
                          *&buf[28] = 1024;
                          *&buf[30] = v201;
                          *&buf[34] = 1024;
                          *&buf[36] = 0;
                          *v205 = 1024;
                          *&v205[2] = v172;
                          *&v205[6] = 1024;
                          *&v205[8] = v173;
                          v181 = "VideoPacketBuffer [%s] %s:%d Duplicate non-partity packet! Incoming packet with sequenceNumber=%d, isParity=%d, groupID=%d, startPosition=%d";
                          v182 = v164;
LABEL_281:
                          _os_log_debug_impl(&dword_1DB56E000, v182, OS_LOG_TYPE_DEBUG, v181, buf, 0x34u);
                          goto LABEL_261;
                        }

                        if (v149 >> 30 == 1)
                        {
                          if ((v149 & 0x400000) != 0)
                          {
                            goto LABEL_230;
                          }
                        }

                        else if ((v149 & 0x4000000) == 0)
                        {
                          goto LABEL_230;
                        }

LABEL_209:
                        if (VRTraceGetErrorLogLevelForModule() < 8)
                        {
                          goto LABEL_201;
                        }

                        v122 = VRTraceErrorLogLevelToCSTR();
                        v150 = *MEMORY[0x1E6986650];
                        v151 = *MEMORY[0x1E6986650];
                        if (*MEMORY[0x1E6986640] == 1)
                        {
                          if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
                          {
                            v152 = v128[2];
                            v153 = v152 >> 30;
                            if (v152 >> 30)
                            {
                              v154 = (v152 >> 15) & 0x7F;
                              if (v153 == 1)
                              {
                                v155 = (v152 >> 23) & 0xF;
                              }

                              else
                              {
                                v154 = 0;
                                v155 = 0;
                                if (v153 == 2 && *v128)
                                {
                                  v155 = HIWORD(v152) & 0x3FF;
                                }
                              }
                            }

                            else
                            {
                              v154 = HIWORD(v152) & 0x7F;
                              v155 = HIBYTE(v152) & 7;
                            }

                            *buf = 136316674;
                            *&buf[4] = v122;
                            *&buf[12] = 2080;
                            *&buf[14] = "_VideoPacketBuffer_ShouldInsertNonParityPacketBeforePacket";
                            *&buf[22] = 1024;
                            *&buf[24] = 1596;
                            *&buf[28] = 1024;
                            LOWORD(v122) = v201;
                            *&buf[30] = v201;
                            *&buf[34] = 1024;
                            *&buf[36] = 0;
                            *v205 = 1024;
                            *&v205[2] = v154;
                            *&v205[6] = 1024;
                            *&v205[8] = v155;
                            _os_log_impl(&dword_1DB56E000, v150, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d Out of order non-parity packet. Incoming packet with sequenceNumber=%d, isParity=%d, groupID=%d, startPosition=%d", buf, 0x34u);
                            goto LABEL_201;
                          }
                        }

                        else if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
                        {
                          v184 = v128[2];
                          v185 = v184 >> 30;
                          if (v184 >> 30)
                          {
                            v186 = (v184 >> 15) & 0x7F;
                            if (v185 == 1)
                            {
                              v187 = (v184 >> 23) & 0xF;
                            }

                            else
                            {
                              v186 = 0;
                              v187 = 0;
                              if (v185 == 2 && *v128)
                              {
                                v187 = HIWORD(v184) & 0x3FF;
                              }
                            }
                          }

                          else
                          {
                            v186 = HIWORD(v184) & 0x7F;
                            v187 = HIBYTE(v184) & 7;
                          }

                          *buf = 136316674;
                          *&buf[4] = v122;
                          *&buf[12] = 2080;
                          *&buf[14] = "_VideoPacketBuffer_ShouldInsertNonParityPacketBeforePacket";
                          *&buf[22] = 1024;
                          *&buf[24] = 1596;
                          *&buf[28] = 1024;
                          LOWORD(v122) = v201;
                          *&buf[30] = v201;
                          *&buf[34] = 1024;
                          *&buf[36] = 0;
                          *v205 = 1024;
                          *&v205[2] = v186;
                          *&v205[6] = 1024;
                          *&v205[8] = v187;
                          v188 = "VideoPacketBuffer [%s] %s:%d Out of order non-parity packet. Incoming packet with sequenceNumber=%d, isParity=%d, groupID=%d, startPosition=%d";
                          v189 = v150;
                          goto LABEL_290;
                        }

                        LOWORD(v122) = v201;
                        goto LABEL_201;
                      }

                      if ((v130 & 0xC0000000) == 0x40000000)
                      {
                        v132 = (v130 >> 15) & 0x7F;
                      }

                      else
                      {
                        v132 = 0;
                      }

                      v135 = (v130 >> 23) & 0xF;
                      v136 = BYTE2(v130);
                      if (v131 != 2)
                      {
                        v136 = 0;
                      }

                      v133 = v131 == 1 ? v135 : v136;
                    }

                    else
                    {
                      if ((v130 & 0x800000) != 0)
                      {
                        goto LABEL_206;
                      }

                      v132 = HIWORD(v130) & 0x7F;
                      v133 = HIBYTE(v130) & 7;
                    }

                    if (*(v126 + 6))
                    {
                      v137 = *(v126 + 8);
                      v138 = v137 >> 30;
                      if (v137 >> 30)
                      {
                        v141 = (v137 >> 26) & 1;
                        if ((v137 & 0xC0000000) == 0x40000000)
                        {
                          v141 = ((v137 >> 22) & 1) == 0;
                        }

                        if (v141)
                        {
                          if ((v137 & 0xC0000000) == 0x40000000)
                          {
                            v139 = (v137 >> 15) & 0x7F;
                          }

                          else
                          {
                            v139 = 0;
                          }

                          v142 = (v137 >> 23) & 0xF;
                          v140 = BYTE2(v137);
                          if (v138 != 2)
                          {
                            v140 = 0;
                          }

                          if (v138 == 1)
                          {
                            v140 = v142;
                          }

                          goto LABEL_193;
                        }
                      }

                      else if ((v137 & 0x800000) == 0)
                      {
                        v139 = HIWORD(v137) & 0x7F;
                        v140 = HIBYTE(v137) & 7;
LABEL_193:
                        if (v132 == v139 && v133 == v140)
                        {
                          v86 = v202;
                          if (VRTraceGetErrorLogLevelForModule() < 8)
                          {
                            goto LABEL_261;
                          }

                          v174 = VRTraceErrorLogLevelToCSTR();
                          v175 = *MEMORY[0x1E6986650];
                          v176 = *MEMORY[0x1E6986650];
                          if (*MEMORY[0x1E6986640] == 1)
                          {
                            if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 136316674;
                              *&buf[4] = v174;
                              *&buf[12] = 2080;
                              *&buf[14] = "_VideoPacketBuffer_ShouldInsertParityPacketBeforePacket";
                              *&buf[22] = 1024;
                              *&buf[24] = 1579;
                              *&buf[28] = 1024;
                              *&buf[30] = v201;
                              *&buf[34] = 1024;
                              *&buf[36] = 1;
                              *v205 = 1024;
                              *&v205[2] = v132;
                              *&v205[6] = 1024;
                              *&v205[8] = v133;
                              v177 = "VideoPacketBuffer [%s] %s:%d Duplicate parity packet! Incoming packet with sequenceNumber=%d, isParity=%d, groupID=%d, startPosition=%d";
                              v178 = v175;
                              goto LABEL_260;
                            }

                            goto LABEL_261;
                          }

                          if (!os_log_type_enabled(v176, OS_LOG_TYPE_DEBUG))
                          {
                            goto LABEL_261;
                          }

                          *buf = 136316674;
                          *&buf[4] = v174;
                          *&buf[12] = 2080;
                          *&buf[14] = "_VideoPacketBuffer_ShouldInsertParityPacketBeforePacket";
                          *&buf[22] = 1024;
                          *&buf[24] = 1579;
                          *&buf[28] = 1024;
                          *&buf[30] = v201;
                          *&buf[34] = 1024;
                          *&buf[36] = 1;
                          *v205 = 1024;
                          *&v205[2] = v132;
                          *&v205[6] = 1024;
                          *&v205[8] = v133;
                          v181 = "VideoPacketBuffer [%s] %s:%d Duplicate parity packet! Incoming packet with sequenceNumber=%d, isParity=%d, groupID=%d, startPosition=%d";
                          v182 = v175;
                          goto LABEL_281;
                        }

                        v143 = v133 < v140 && v132 == v139;
                        if (v132 < v139 || v143)
                        {
                          if (VRTraceGetErrorLogLevelForModule() < 8)
                          {
                            goto LABEL_255;
                          }

                          v122 = VRTraceErrorLogLevelToCSTR();
                          v179 = *MEMORY[0x1E6986650];
                          v180 = *MEMORY[0x1E6986650];
                          if (*MEMORY[0x1E6986640] == 1)
                          {
                            if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 136316674;
                              *&buf[4] = v122;
                              *&buf[12] = 2080;
                              *&buf[14] = "_VideoPacketBuffer_ShouldInsertParityPacketBeforePacket";
                              *&buf[22] = 1024;
                              *&buf[24] = 1585;
                              *&buf[28] = 1024;
                              LOWORD(v122) = v201;
                              *&buf[30] = v201;
                              *&buf[34] = 1024;
                              *&buf[36] = 1;
                              *v205 = 1024;
                              *&v205[2] = v132;
                              *&v205[6] = 1024;
                              *&v205[8] = v133;
                              _os_log_impl(&dword_1DB56E000, v179, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d Out of order parity packet! Incoming packet with sequenceNumber=%d, isParity=%d, groupID=%d, startPosition=%d", buf, 0x34u);
                              goto LABEL_255;
                            }

LABEL_254:
                            LOWORD(v122) = v201;
LABEL_255:
                            v87 = a1 + 151552;
LABEL_201:
                            v144 = VCMemoryPool_Alloc(*(v87 + 3520));
                            *(v144 + 20) = 0;
                            *v144 = v122;
                            *(v144 + 1) = *(a2 + 1);
                            *(v144 + 4) = v197;
                            *(v144 + 11) = *(v10 + 4);
                            *(v144 + 21) = v10[4];
                            *(v144 + 24) = 1;
                            v144[112] = *(v10 + 194);
                            VCBlockBuffer_Copy(*(a2 + 2), (v144 + 120));
                            if (v190)
                            {
                              **(a2 + 7) = 0;
                              if (VRTraceGetErrorLogLevelForModule() >= 8)
                              {
                                v145 = VRTraceErrorLogLevelToCSTR();
                                v146 = *MEMORY[0x1E6986650];
                                v147 = *MEMORY[0x1E6986650];
                                if (*MEMORY[0x1E6986640] == 1)
                                {
                                  if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v148 = *(a2 + 23);
                                    *buf = 136315906;
                                    *&buf[4] = v145;
                                    *&buf[12] = 2080;
                                    *&buf[14] = "VideoPacketBuffer_AddPacket";
                                    *&buf[22] = 1024;
                                    *&buf[24] = 2022;
                                    *&buf[28] = 1024;
                                    *&buf[30] = v148;
                                    _os_log_impl(&dword_1DB56E000, v146, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d invalidating fecHeader for frame with frameSequenceNumber:%d", buf, 0x22u);
                                  }
                                }

                                else if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
                                {
                                  VideoPacketBuffer_AddPacket_cold_2();
                                }
                              }
                            }

                            v156 = *(a2 + 7);
                            v157 = *v156;
                            v158 = v156[1];
                            v159 = v156[2];
                            *(v144 + 9) = *(v156 + 6);
                            *(v144 + 56) = v159;
                            *(v144 + 40) = v158;
                            *(v144 + 24) = v157;
                            *(v144 + 13) = *v127;
                            *v127 = v144;
                            v40 = 1;
                            v86 = v202;
                            if (!v83)
                            {
                              goto LABEL_222;
                            }

                            goto LABEL_217;
                          }

                          if (!os_log_type_enabled(v180, OS_LOG_TYPE_DEBUG))
                          {
                            goto LABEL_254;
                          }

                          *buf = 136316674;
                          *&buf[4] = v122;
                          *&buf[12] = 2080;
                          *&buf[14] = "_VideoPacketBuffer_ShouldInsertParityPacketBeforePacket";
                          *&buf[22] = 1024;
                          *&buf[24] = 1585;
                          *&buf[28] = 1024;
                          LOWORD(v122) = v201;
                          *&buf[30] = v201;
                          *&buf[34] = 1024;
                          *&buf[36] = 1;
                          *v205 = 1024;
                          *&v205[2] = v132;
                          *&v205[6] = 1024;
                          *&v205[8] = v133;
                          v188 = "VideoPacketBuffer [%s] %s:%d Out of order parity packet! Incoming packet with sequenceNumber=%d, isParity=%d, groupID=%d, startPosition=%d";
                          v189 = v179;
LABEL_290:
                          _os_log_debug_impl(&dword_1DB56E000, v189, OS_LOG_TYPE_DEBUG, v188, buf, 0x34u);
                          goto LABEL_255;
                        }
                      }
                    }
                  }

                  v127 = (v126 + 52);
                  v126 = *(v126 + 13);
                  v87 = a1 + 151552;
                  if (!v126)
                  {
                    goto LABEL_201;
                  }

                  continue;
                }
              }

              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                goto LABEL_124;
              }

              v103 = VRTraceErrorLogLevelToCSTR();
              v89 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_124;
              }

              v104 = *(v83 + 8);
              v105 = *a2;
              *buf = 136316930;
              *&buf[4] = v103;
              *&buf[12] = 2080;
              *&buf[14] = "VideoPacketBuffer_AddPacket";
              *&buf[22] = 1024;
              *&buf[24] = 1980;
              *&buf[28] = 2048;
              *&buf[30] = a1;
              *&buf[38] = 1024;
              *v205 = v201;
              *&v205[4] = 2048;
              *&v205[6] = v12;
              *&v205[14] = 1024;
              *&v205[16] = v104;
              *&v205[20] = 1024;
              *&v205[22] = v105;
              v92 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] $ Discarding packet %d, frame %lu.  Packet.srcfmt disagree, first %d, then %d";
            }

            else
            {
              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                goto LABEL_124;
              }

              v93 = VRTraceErrorLogLevelToCSTR();
              v89 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_124;
              }

              v94 = *v83;
              *buf = 136316930;
              *&buf[4] = v93;
              *&buf[12] = 2080;
              *&buf[14] = "VideoPacketBuffer_AddPacket";
              *&buf[22] = 1024;
              *&buf[24] = 1975;
              *&buf[28] = 2048;
              *&buf[30] = a1;
              *&buf[38] = 1024;
              *v205 = v201;
              *&v205[4] = 2048;
              *&v205[6] = v12;
              *&v205[14] = 1024;
              *&v205[16] = v94;
              *&v205[20] = 1024;
              *&v205[22] = v203;
              v92 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] $ Discarding packet %d, frame %lu.  Packet.payload disagree, first %d, then %d";
            }

LABEL_123:
            _os_log_impl(&dword_1DB56E000, v89, OS_LOG_TYPE_DEFAULT, v92, buf, 0x42u);
            goto LABEL_124;
          }

          v192 = 1;
        }

        else
        {
          v85 = 0;
          v192 = 0;
        }

LABEL_128:
        v106 = VCMemoryPool_Alloc(*(a1 + 155064));
        v83 = v106;
        *v106 = v203;
        *(v106 + 1) = *a2;
        *(v106 + 4) = v12;
        *(v106 + 5) = v10[5];
        *(v106 + 8) = a2[10];
        v106[36] = *(a2 + 44);
        v106[149] = *(a2 + 45);
        *(v106 + 75) = *(a2 + 23);
        v107 = *(a2 + 24);
        *(v106 + 52) = v107;
        v108 = *(*(a2 + 7) + 8);
        if (v108 < 0)
        {
          LOWORD(v109) = v108 & 0x3FF;
        }

        else
        {
          v109 = ((656 * (*(*(a2 + 7) + 8) & 0x3FCu)) >> 16) * v107;
        }

        *(v106 + 53) = v109;
        *(v106 + 10) = v29;
        *(v106 + 32) = v200;
        *(v106 + 17) = v37;
        v106[55] = v59;
        v106[56] = v60;
        *(v106 + 26) = 0;
        *(v106 + 15) = 0;
        v106[120] = v194;
        v106[121] = v193;
        v106[4] = a3;
        v106[5] = a4;
        v106[57] |= *(v10 + 194);
        *(v106 + 20) = 0;
        memcpy(v106 + 122, v10 + 14, 2 * v193);
        VCBlockBuffer_Copy(*(a2 + 4), v83 + 72);
        if (*(v83 + 55) == 1)
        {
          LODWORD(v110) = *(a1 + 154936);
          LODWORD(v111) = *(v83 + 16);
          _VideoPacketBuffer_StartTrackingEvictedFrameStats(a1, v83, v22 - (v110 - v111) / *(a1 + 8));
        }

        *(v83 + 112) = *v82;
        _VideoPacketBuffer_UpdatePreviousFrameSequenceNumber(v83, v85, v192);
        *v82 = v83;
        v87 = a1 + 151552;
        v112 = *(a1 + 154952);
        do
        {
          v113 = v112;
          if (!v112)
          {
            break;
          }

          v112 = *(v112 + 112);
        }

        while (v112);
        *(a1 + 154960) = v113;
        if (v59)
        {
          ++*(a1 + 155060);
        }

        else
        {
          ++*(a1 + 155056);
        }

        goto LABEL_139;
      }

      v95 = *(a1 + 464);
      v96 = (v95 - v12);
      if (!(v202 & 1 | (v95 == v12)))
      {
        v97 = *(a1 + 8);
        v98 = *(a1 + 480);
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v99 = VRTraceErrorLogLevelToCSTR();
          v100 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136317954;
            v101 = *(a1 + 464);
            v102 = *(a2 + 23);
            *&buf[4] = v99;
            *&buf[12] = 2080;
            *&buf[14] = "VideoPacketBuffer_AddPacket";
            *&buf[22] = 1024;
            *&buf[24] = 1882;
            *&buf[28] = 2048;
            *&buf[30] = a1;
            *&buf[38] = 1024;
            *v205 = v29;
            *&v205[4] = 1024;
            *&v205[6] = v12;
            *&v205[10] = 1024;
            *&v205[12] = v101;
            *&v205[16] = 1024;
            *&v205[18] = v201;
            *&v205[22] = 2048;
            *&v205[24] = v22 - v98 + (v96 / v97);
            v206 = 1024;
            v207 = v102;
            v208 = 1024;
            v209 = a3;
            v210 = 1024;
            v211 = a4;
            _os_log_impl(&dword_1DB56E000, v100, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Discarding packet fecProtected=%d TS=%d lastTS=%d seq=%d that arrived late [%f]s frameSequenceNumber=%d isTemporalStreamEnabled=%d isBaseLayerStream=%d", buf, 0x5Au);
          }
        }
      }

      _VideoPacketBuffer_CorrectFrameStats(a1, *(a2 + 23), v202 & 1);
      pthread_mutex_unlock((a1 + 400));
      return 0;
    }

    v61 = *(a2 + 8);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v68 = VRTraceErrorLogLevelToCSTR();
      v69 = *MEMORY[0x1E6986650];
      v70 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          v71 = *(a2 + 23);
          v72 = *(v61 + 12);
          *buf = 136317186;
          *&buf[4] = v68;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoPacketBuffer_LogNewPacket";
          *&buf[22] = 1024;
          *&buf[24] = 1690;
          *&buf[28] = 2048;
          *&buf[30] = a1;
          *&buf[38] = 1024;
          *v205 = v71;
          *&v205[4] = 1024;
          *&v205[6] = v202 & 1;
          *&v205[10] = 1024;
          *&v205[12] = v29;
          *&v205[16] = 1024;
          *&v205[18] = v72;
          *&v205[22] = 1024;
          *&v205[24] = v191;
          _os_log_impl(&dword_1DB56E000, v69, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Add Packet frameSequenceNumber=%d fParityPacket=%d fecProtected=%d seq=%d startPosition=%d", buf, 0x44u);
          if (!v60)
          {
LABEL_70:
            v73 = 0;
LABEL_71:
            v41 = a1 + 151552;
            goto LABEL_85;
          }

LABEL_76:
          v41 = a1 + 151552;
          if (*(a1 + 155020))
          {
            v73 = 0;
          }

          else
          {
            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v74 = VRTraceErrorLogLevelToCSTR();
              v75 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v76 = *(a1 + 464);
                v77 = *(v61 + 16);
                *buf = 136316418;
                *&buf[4] = v74;
                *&buf[12] = 2080;
                *&buf[14] = "_VideoPacketBuffer_LogNewPacket";
                *&buf[22] = 1024;
                *&buf[24] = 1693;
                *&buf[28] = 2048;
                *&buf[30] = a1;
                *&buf[38] = 1024;
                *v205 = v76;
                *&v205[4] = 1024;
                *&v205[6] = v77;
                _os_log_impl(&dword_1DB56E000, v75, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Received a packet out of order. lastAssembledTimestamp=%d packetTimestamp=%d", buf, 0x32u);
              }

              v73 = 1;
              goto LABEL_71;
            }

            v73 = 1;
          }

LABEL_85:
          v78 = *(v41 + 3496);
          if (v78)
          {
            *buf = xmmword_1DBD47ED0;
            *&buf[16] = unk_1DBD47EE0;
            *buf = *(v61 + 32);
            HIDWORD(v79) = *&buf[4];
            *&buf[8] = *(v61 + 12);
            LODWORD(v79) = *(v61 + 16);
            *&buf[16] = v79;
            *&buf[24] = *(v61 + 152);
            buf[28] = (a2[10] & 2) != 0;
            *&buf[32] = *(v61 + 56);
            *&buf[36] = 0;
            *v205 = 0;
            *&v205[4] = v29;
            *&v205[8] = v200;
            *&v205[12] = 0;
            *&v205[16] = *(v61 + 194);
            *&v205[20] = v59;
            *&v205[24] = v73;
            *&v205[28] = *&v205[16];
            VRDump_AddPacket(v78, buf, v62, v63, v64, v65, v66, v67);
          }

          goto LABEL_87;
        }
      }

      else if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        v161 = *(a2 + 23);
        v162 = *(v61 + 12);
        *buf = 136317186;
        *&buf[4] = v68;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoPacketBuffer_LogNewPacket";
        *&buf[22] = 1024;
        *&buf[24] = 1690;
        *&buf[28] = 2048;
        *&buf[30] = a1;
        *&buf[38] = 1024;
        *v205 = v161;
        *&v205[4] = 1024;
        *&v205[6] = v202 & 1;
        *&v205[10] = 1024;
        *&v205[12] = v29;
        *&v205[16] = 1024;
        *&v205[18] = v162;
        *&v205[22] = 1024;
        *&v205[24] = v191;
        _os_log_debug_impl(&dword_1DB56E000, v69, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Add Packet frameSequenceNumber=%d fParityPacket=%d fecProtected=%d seq=%d startPosition=%d", buf, 0x44u);
        if (!v60)
        {
          goto LABEL_70;
        }

        goto LABEL_76;
      }
    }

    if (!v60)
    {
      goto LABEL_70;
    }

    goto LABEL_76;
  }

  return v40;
}

void _VideoPacketBuffer_CorrectFrameStats(uint64_t a1, int a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2 & 0x7F;
  v4 = a1 + 800 * (a2 & 0x7F) + 51736;
  if (*v4 == a2)
  {
    if (a3)
    {
      v8 = *(a1 + 800 * (a2 & 0x7F) + 51752);
      v9 = v8 != 0;
      v10 = v8 - 1;
      if (!v9)
      {
        v10 = 0;
      }

      *(a1 + 800 * (a2 & 0x7F) + 51752) = v10;
    }

    else
    {
      v11 = *(a1 + 800 * (a2 & 0x7F) + 51750);
      v9 = v11 != 0;
      v12 = v11 - 1;
      if (!v9)
      {
        v12 = 0;
      }

      *(a1 + 800 * (a2 & 0x7F) + 51750) = v12;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      v15 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(v4 + 14);
          v17 = *(v4 + 16);
          v20 = 136317186;
          v21 = v13;
          v22 = 2080;
          v23 = "_VideoPacketBuffer_CorrectFrameStats";
          v24 = 1024;
          v25 = 749;
          v26 = 2048;
          v27 = a1;
          v28 = 1024;
          v29 = a2;
          v30 = 1024;
          v31 = a3;
          v32 = 1024;
          v33 = v3;
          v34 = 1024;
          v35 = v16;
          v36 = 1024;
          v37 = v17;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Correct loss frameSequenceNumber=%d isParity=%d frameIndex=%d maxVideoPacketsLostPerFrame=%d maxParityPacketsLostPerFrame=%d", &v20, 0x44u);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(v4 + 14);
        v19 = *(v4 + 16);
        v20 = 136317186;
        v21 = v13;
        v22 = 2080;
        v23 = "_VideoPacketBuffer_CorrectFrameStats";
        v24 = 1024;
        v25 = 749;
        v26 = 2048;
        v27 = a1;
        v28 = 1024;
        v29 = a2;
        v30 = 1024;
        v31 = a3;
        v32 = 1024;
        v33 = v3;
        v34 = 1024;
        v35 = v18;
        v36 = 1024;
        v37 = v19;
        _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Correct loss frameSequenceNumber=%d isParity=%d frameIndex=%d maxVideoPacketsLostPerFrame=%d maxParityPacketsLostPerFrame=%d", &v20, 0x44u);
      }
    }
  }
}

void _VideoPacketBuffer_StartTrackingEvictedFrameStats(uint64_t a1, uint64_t a2, double a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    _VideoPacketBuffer_StartTrackingEvictedFrameStats_cold_1();
    return;
  }

  if (*(a2 + 160) == 0.0)
  {
    ++*(a1 + 10076);
    *(a2 + 160) = a3;
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    v7 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a2 + 160);
        v16 = 136316418;
        v17 = v5;
        v18 = 2080;
        v19 = "_VideoPacketBuffer_StartTrackingEvictedFrameStats";
        v20 = 1024;
        v21 = 1648;
        v22 = 2048;
        v23 = a1;
        v24 = 2048;
        v25 = a2;
        v26 = 2048;
        v27 = v8;
        v9 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Starting to track late frame[%p] at t=%.4f";
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v9, &v16, 0x3Au);
        return;
      }

      return;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v13 = *(a2 + 160);
    v16 = 136316418;
    v17 = v5;
    v18 = 2080;
    v19 = "_VideoPacketBuffer_StartTrackingEvictedFrameStats";
    v20 = 1024;
    v21 = 1648;
    v22 = 2048;
    v23 = a1;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v13;
    v14 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Starting to track late frame[%p] at t=%.4f";
LABEL_17:
    _os_log_debug_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEBUG, v14, &v16, 0x3Au);
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    return;
  }

  v10 = VRTraceErrorLogLevelToCSTR();
  v6 = *MEMORY[0x1E6986650];
  v11 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v15 = *(a2 + 160);
    v16 = 136316418;
    v17 = v10;
    v18 = 2080;
    v19 = "_VideoPacketBuffer_StartTrackingEvictedFrameStats";
    v20 = 1024;
    v21 = 1650;
    v22 = 2048;
    v23 = a1;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v15;
    v14 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Already tracking frame=%p with t=%.4f";
    goto LABEL_17;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a2 + 160);
    v16 = 136316418;
    v17 = v10;
    v18 = 2080;
    v19 = "_VideoPacketBuffer_StartTrackingEvictedFrameStats";
    v20 = 1024;
    v21 = 1650;
    v22 = 2048;
    v23 = a1;
    v24 = 2048;
    v25 = a2;
    v26 = 2048;
    v27 = v12;
    v9 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Already tracking frame=%p with t=%.4f";
    goto LABEL_11;
  }
}

BOOL VideoPacketBuffer_ScheduleFutureFrame(uint64_t a1, int a2, int a3, _DWORD *a4, unsigned int a5, int a6, int a7, double a8)
{
  v103 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoPacketBuffer_ScheduleFutureFrame_cold_3();
      }
    }

    return 0;
  }

  if (!a4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoPacketBuffer_ScheduleFutureFrame_cold_2();
      }
    }

    return 0;
  }

  pthread_mutex_lock((a1 + 400));
  *(a1 + 154936) = a5;
  v16 = *(a1 + 155136);
  if (v16)
  {
    VCNACKGenerator_UpdatePlayoutRTPTimestamp(v16, a2, a5);
  }

  v17 = *(a1 + 154944);
  if (!v17)
  {
    goto LABEL_50;
  }

  v70 = a7;
  while (1)
  {
    *(v17 + 55) = 0;
    v18 = *(v17 + 16);
    if (a3 == v18 || (a3 - v18) >= 0x7FFFFFFF)
    {
      if (a3 != v18 || *(v17 + 48))
      {
        goto LABEL_50;
      }

      v32 = _VideoPacketBuffer_ScheduleSingleFrame(a1, v17, a4, a5, a6, a7);
      goto LABEL_51;
    }

    if (*(v17 + 48))
    {
      v20 = *(v17 + 112);
      goto LABEL_39;
    }

    v21 = _VideoPacketBuffer_ScheduleSingleFrame(a1, v17, a4, a5, a6, a7);
    if (a5)
    {
      if (a5 - *(v17 + 16) >= 0x7FFFFFFF)
      {
        break;
      }
    }

    if (v21)
    {
      goto LABEL_57;
    }

    if (*(a1 + 240) == 1 && *(v17 + 148) == 1)
    {
      if (a6)
      {
        v22 = *(v17 + 146) - a7;
        if (v22)
        {
          if (v22 <= 0x7FFEu)
          {
            if (VRTraceGetErrorLogLevelForModule() < 8)
            {
              goto LABEL_50;
            }

            v45 = VRTraceErrorLogLevelToCSTR();
            v46 = *MEMORY[0x1E6986650];
            v47 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                v48 = *(v17 + 146);
                *buf = 136316418;
                v72 = v45;
                v73 = 2080;
                v74 = "VideoPacketBuffer_ScheduleFutureFrame";
                v75 = 1024;
                v76 = 2294;
                v77 = 2048;
                v78 = a1;
                v79 = 1024;
                v80 = v48;
                v81 = 1024;
                v82 = a7;
                v49 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] frameDecodingOrder:%hu, expectedDecodingOrder:%hu";
                v50 = v46;
                v51 = 50;
                goto LABEL_67;
              }

              goto LABEL_50;
            }

            if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_50;
            }

            v62 = *(v17 + 146);
            *buf = 136316418;
            v72 = v45;
            v73 = 2080;
            v74 = "VideoPacketBuffer_ScheduleFutureFrame";
            v75 = 1024;
            v76 = 2294;
            v77 = 2048;
            v78 = a1;
            v79 = 1024;
            v80 = v62;
            v81 = 1024;
            v82 = a7;
            v63 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] frameDecodingOrder:%hu, expectedDecodingOrder:%hu";
            v64 = v46;
            v65 = 50;
LABEL_76:
            _os_log_debug_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_DEBUG, v63, buf, v65);
            goto LABEL_50;
          }
        }
      }
    }

    if (*(v17 + 40) && !*(v17 + 44) && VideoPacketBuffer_FrameReadyForRecovery(a1, v17))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        v25 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v72 = v23;
            v73 = 2080;
            v74 = "VideoPacketBuffer_ScheduleFutureFrame";
            v75 = 1024;
            v76 = 2301;
            v77 = 2048;
            v78 = a1;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] FEC Protected Frame begin recovery", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v72 = v23;
          v73 = 2080;
          v74 = "VideoPacketBuffer_ScheduleFutureFrame";
          v75 = 1024;
          v76 = 2301;
          v77 = 2048;
          v78 = a1;
          _os_log_debug_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] FEC Protected Frame begin recovery", buf, 0x26u);
        }
      }

      a7 = v70;
      if (!RecoverOneFrame(a1))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v59 = VRTraceErrorLogLevelToCSTR();
          v60 = *MEMORY[0x1E6986650];
          v61 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v72 = v59;
              v73 = 2080;
              v74 = "VideoPacketBuffer_ScheduleFutureFrame";
              v75 = 1024;
              v76 = 2304;
              v77 = 2048;
              v78 = a1;
              _os_log_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Scheduling FEC Protected Frame after successful recovery (when next frame come)", buf, 0x26u);
            }
          }

          else if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            VideoPacketBuffer_ScheduleFutureFrame_cold_1();
          }
        }

        v32 = 1;
        *(v17 + 44) = 1;
        *a4 = *(v17 + 16);
        *(v17 + 48) = 1;
        goto LABEL_51;
      }
    }

    *a4 = *(v17 + 16);
    *(v17 + 48) = 1;
    if (*(v17 + 40) && !*(v17 + 60))
    {
      *(v17 + 60) = 2;
    }

    _VideoPacketBuffer_StartTrackingEvictedFrameStats(a1, v17, a8);
    kdebug_trace();
    LODWORD(v26) = *(v17 + 16);
    v27 = (a5 - v26) / *(a1 + 8);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v27 <= 0.5)
    {
      if (ErrorLogLevelForModule >= 5)
      {
        v34 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(v17 + 40);
          v37 = **(v17 + 96);
          v38 = *(v17 + 16);
          v39 = *(v17 + 146);
          v40 = *(v17 + 148);
          v41 = *(v17 + 60);
          v42 = *(v17 + 150);
          v43 = *(v17 + 152);
          v44 = *(v17 + 104);
          *buf = 136319234;
          v72 = v34;
          v73 = 2080;
          v74 = "VideoPacketBuffer_ScheduleFutureFrame";
          v75 = 1024;
          v76 = 2338;
          v77 = 2048;
          v78 = a1;
          v79 = 1024;
          v80 = v36;
          v81 = 1024;
          v82 = v37;
          v83 = 1024;
          *v84 = a5;
          *&v84[4] = 1024;
          *&v84[6] = v38;
          v85 = 1024;
          v86 = v38 - a5;
          v87 = 1024;
          v88 = v39;
          v89 = 1024;
          v90 = v40;
          v91 = 1024;
          v92 = a7;
          v93 = 1024;
          v94 = a6;
          v95 = 1024;
          v96 = v41;
          v97 = 1024;
          v98 = v42;
          v99 = 1024;
          v100 = v43;
          v101 = 1024;
          v102 = v44;
          _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] scheduling incomplete frame! fecProtected:%d seq:%u playoutRTPTimestamp:%u frameTimestamp:%u diff:%d decodingOrder:%u isDecodingOrderValid:%d expectdDecodingOrder:%d isExpectedDecodingOrderValid:%d fecStatus=%d frameSequenceNumber=%d previousFrameSequenceNumber=%d frameSizeInPackets=%d", buf, 0x74u);
        }
      }

      goto LABEL_57;
    }

    if (ErrorLogLevelForModule >= 5)
    {
      v29 = VRTraceErrorLogLevelToCSTR();
      v30 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(v17 + 16);
        *buf = 136316674;
        v72 = v29;
        v73 = 2080;
        v74 = "VideoPacketBuffer_ScheduleFutureFrame";
        v75 = 1024;
        v76 = 2329;
        v77 = 2048;
        v78 = a1;
        v79 = 1024;
        v80 = a5;
        v81 = 1024;
        v82 = v31;
        v83 = 2048;
        *v84 = v27;
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] discarding incomplete frame that is too old. playoutRTPTimestamp:%u frameTimestamp:%u missedPlayoutDelta:%g", buf, 0x3Cu);
      }
    }

    v20 = *(v17 + 112);
    _VideoPacketBuffer_FreeFrameFromBuffer(a1, (a1 + 154944), v17, (a1 + 155056));
    a7 = v70;
LABEL_39:
    v17 = v20;
    if (!v20)
    {
      goto LABEL_50;
    }
  }

  if (v21)
  {
LABEL_57:
    v32 = 1;
    goto LABEL_51;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_50;
  }

  v52 = VRTraceErrorLogLevelToCSTR();
  v53 = *MEMORY[0x1E6986650];
  v54 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_50;
    }

    v66 = **(v17 + 96);
    v67 = *(v17 + 16);
    v68 = *(v17 + 150);
    v69 = *(v17 + 152);
    *buf = 136317442;
    v72 = v52;
    v73 = 2080;
    v74 = "VideoPacketBuffer_ScheduleFutureFrame";
    v75 = 1024;
    v76 = 2287;
    v77 = 2048;
    v78 = a1;
    v79 = 1024;
    v80 = v66;
    v81 = 1024;
    v82 = a5;
    v83 = 1024;
    *v84 = v67;
    *&v84[4] = 1024;
    *&v84[6] = v67 - a5;
    v85 = 1024;
    v86 = v68;
    v87 = 1024;
    v88 = v69;
    v63 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] seq:%u playoutRTPTimestamp:%u frameTimestamp:%u diff:%d frameSequenceNumber=%d previousFrameSequenceNumber=%d";
    v64 = v53;
    v65 = 74;
    goto LABEL_76;
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = **(v17 + 96);
    v56 = *(v17 + 16);
    v57 = *(v17 + 150);
    v58 = *(v17 + 152);
    *buf = 136317442;
    v72 = v52;
    v73 = 2080;
    v74 = "VideoPacketBuffer_ScheduleFutureFrame";
    v75 = 1024;
    v76 = 2287;
    v77 = 2048;
    v78 = a1;
    v79 = 1024;
    v80 = v55;
    v81 = 1024;
    v82 = a5;
    v83 = 1024;
    *v84 = v56;
    *&v84[4] = 1024;
    *&v84[6] = v56 - a5;
    v85 = 1024;
    v86 = v57;
    v87 = 1024;
    v88 = v58;
    v49 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] seq:%u playoutRTPTimestamp:%u frameTimestamp:%u diff:%d frameSequenceNumber=%d previousFrameSequenceNumber=%d";
    v50 = v53;
    v51 = 74;
LABEL_67:
    _os_log_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEFAULT, v49, buf, v51);
  }

LABEL_50:
  v32 = 0;
LABEL_51:
  pthread_mutex_unlock((a1 + 400));
  return v32;
}

BOOL _VideoPacketBuffer_ScheduleSingleFrame(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, int a5, int a6)
{
  v128 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 468) + 1;
      v13 = **(a2 + 96);
      v14 = *(a2 + 16);
      v15 = *(a2 + 150);
      v108 = 136317186;
      v109 = v9;
      v110 = 2080;
      v111 = "_VideoPacketBuffer_ScheduleSingleFrame";
      v112 = 1024;
      v113 = 2168;
      v114 = 2048;
      v115 = a1;
      v116 = 1024;
      v117 = v12;
      v118 = 1024;
      v119 = v13;
      v120 = 1024;
      v121 = v14;
      v122 = 1024;
      v123 = v15;
      v124 = 1024;
      v125 = a4;
      _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Frame already scheduled! expectedSeq=%u seq=%u frameTimestamp=%u frameSequenceNumber=%u playoutRTPTimestamp=%u", &v108, 0x44u);
    }

    return 0;
  }

  if (!a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _VideoPacketBuffer_ScheduleSingleFrame_cold_4();
    }

    return 0;
  }

  if (*(a1 + 476) != 1)
  {
    goto LABEL_42;
  }

  if ((*(a2 + 4) & 1) == 0)
  {
    v26 = **(a2 + 96);
    if (v26 != (*(a1 + 468) + 1) && (v26 - (*(a1 + 468) + 1)) <= 0x7FFEu)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        v29 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          result = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          v30 = *(a1 + 468) + 1;
          v31 = **(a2 + 96);
          v32 = *(a2 + 16);
          v33 = *(a2 + 150);
          v108 = 136317186;
          v109 = v27;
          v110 = 2080;
          v111 = "_VideoPacketBuffer_ScheduleSingleFrame";
          v112 = 1024;
          v113 = 2178;
          v114 = 2048;
          v115 = a1;
          v116 = 1024;
          v117 = v30;
          v118 = 1024;
          v119 = v31;
          v120 = 1024;
          v121 = v32;
          v122 = 1024;
          v123 = v33;
          v124 = 1024;
          v125 = a4;
          v34 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Out of order. expectedSeq:%u seq:%u frameTimestamp:%u frameSequenceNumber=%u playoutRTPTimestamp:%u";
LABEL_63:
          v51 = v28;
          v52 = 68;
LABEL_64:
          _os_log_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_DEFAULT, v34, &v108, v52);
          return 0;
        }

        result = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
        if (!result)
        {
          return result;
        }

        v35 = *(a1 + 468) + 1;
        v36 = **(a2 + 96);
        v37 = *(a2 + 16);
        v38 = *(a2 + 150);
        v108 = 136317186;
        v109 = v27;
        v110 = 2080;
        v111 = "_VideoPacketBuffer_ScheduleSingleFrame";
        v112 = 1024;
        v113 = 2178;
        v114 = 2048;
        v115 = a1;
        v116 = 1024;
        v117 = v35;
        v118 = 1024;
        v119 = v36;
        v120 = 1024;
        v121 = v37;
        v122 = 1024;
        v123 = v38;
        v124 = 1024;
        v125 = a4;
        v39 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Out of order. expectedSeq:%u seq:%u frameTimestamp:%u frameSequenceNumber=%u playoutRTPTimestamp:%u";
        goto LABEL_69;
      }

      return 0;
    }
  }

  if ((*(a2 + 4) & 1) != 1 || *(a1 + 155020))
  {
    goto LABEL_42;
  }

  if ((*(a2 + 156) & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    v21 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a2 + 16);
        v23 = *(a2 + 150);
        v24 = *(a1 + 474);
        v25 = *(a1 + 155120);
        v108 = 136317186;
        v109 = v19;
        v110 = 2080;
        v111 = "_VideoPacketBuffer_ShouldSkipTemporalFrameScheduling";
        v112 = 1024;
        v113 = 2141;
        v114 = 2048;
        v115 = a1;
        v116 = 1024;
        v117 = v22;
        v118 = 1024;
        v119 = v23;
        v120 = 1024;
        v121 = v24;
        v122 = 1024;
        v123 = v25;
        v124 = 1024;
        v125 = a4;
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Previous frame is unknown. frameTimestamp=%u frameSequenceNumber=%d lastAssembledFrameSequenceNumber=%u baseLayerFrameAssemblyFailed=%d playoutRTPTimestamp=%u", &v108, 0x44u);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v104 = *(a2 + 16);
      v105 = *(a2 + 150);
      v106 = *(a1 + 474);
      v107 = *(a1 + 155120);
      v108 = 136317186;
      v109 = v19;
      v110 = 2080;
      v111 = "_VideoPacketBuffer_ShouldSkipTemporalFrameScheduling";
      v112 = 1024;
      v113 = 2141;
      v114 = 2048;
      v115 = a1;
      v116 = 1024;
      v117 = v104;
      v118 = 1024;
      v119 = v105;
      v120 = 1024;
      v121 = v106;
      v122 = 1024;
      v123 = v107;
      v124 = 1024;
      v125 = a4;
      _os_log_debug_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Previous frame is unknown. frameTimestamp=%u frameSequenceNumber=%d lastAssembledFrameSequenceNumber=%u baseLayerFrameAssemblyFailed=%d playoutRTPTimestamp=%u", &v108, 0x44u);
    }
  }

  if (*(a1 + 474) && *(a2 + 156) == 1 && *(a2 + 152) != *(a1 + 474))
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return 0;
    }

    v83 = VRTraceErrorLogLevelToCSTR();
    v84 = *MEMORY[0x1E6986650];
    v85 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      result = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v86 = *(a2 + 16);
        v87 = *(a2 + 150);
        v88 = *(a2 + 152);
        v89 = *(a1 + 474);
        v90 = *(a1 + 155120);
        v108 = 136317442;
        v109 = v83;
        v110 = 2080;
        v111 = "_VideoPacketBuffer_ShouldSkipTemporalFrameScheduling";
        v112 = 1024;
        v113 = 2146;
        v114 = 2048;
        v115 = a1;
        v116 = 1024;
        v117 = v86;
        v118 = 1024;
        v119 = v87;
        v120 = 1024;
        v121 = v88;
        v122 = 1024;
        v123 = v89;
        v124 = 1024;
        v125 = v90;
        v126 = 1024;
        v127 = a4;
        v34 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Trying to assemble a frame while previous frame assembly is pending. frameTimestamp=%u frameSequenceNumber=%d previousFrameSequenceNumber=%d lastAssembledFrameSequenceNumber=%u baseLayerFrameAssemblyFailed=%d playoutRTPTimestamp=%u";
        v51 = v84;
        v52 = 74;
        goto LABEL_64;
      }
    }

    else
    {
      result = os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v95 = *(a2 + 16);
        v96 = *(a2 + 150);
        v97 = *(a2 + 152);
        v98 = *(a1 + 474);
        v99 = *(a1 + 155120);
        v108 = 136317442;
        v109 = v83;
        v110 = 2080;
        v111 = "_VideoPacketBuffer_ShouldSkipTemporalFrameScheduling";
        v112 = 1024;
        v113 = 2146;
        v114 = 2048;
        v115 = a1;
        v116 = 1024;
        v117 = v95;
        v118 = 1024;
        v119 = v96;
        v120 = 1024;
        v121 = v97;
        v122 = 1024;
        v123 = v98;
        v124 = 1024;
        v125 = v99;
        v126 = 1024;
        v127 = a4;
        v39 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Trying to assemble a frame while previous frame assembly is pending. frameTimestamp=%u frameSequenceNumber=%d previousFrameSequenceNumber=%d lastAssembledFrameSequenceNumber=%u baseLayerFrameAssemblyFailed=%d playoutRTPTimestamp=%u";
        v73 = v84;
        v74 = 74;
        goto LABEL_70;
      }
    }

    return result;
  }

  if (*(a2 + 5) == 1 && (v40 = **(a2 + 96), v40 != (*(a1 + 155128) + 1)) && (v40 - (*(a1 + 155128) + 1)) <= 0x7FFEu)
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return 0;
    }

    v41 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    v42 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      result = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v43 = *(a1 + 155128) + 1;
      v44 = **(a2 + 96);
      v45 = *(a2 + 16);
      v46 = *(a2 + 150);
      v108 = 136317186;
      v109 = v41;
      v110 = 2080;
      v111 = "_VideoPacketBuffer_ShouldSkipTemporalFrameScheduling";
      v112 = 1024;
      v113 = 2152;
      v114 = 2048;
      v115 = a1;
      v116 = 1024;
      v117 = v43;
      v118 = 1024;
      v119 = v44;
      v120 = 1024;
      v121 = v45;
      v122 = 1024;
      v123 = v46;
      v124 = 1024;
      v125 = a4;
      v34 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Temporal base layer frame out of order. expectedSeq=%u seq=%u frameTimestamp=%d baseLayerFrameSequenceNumber=%d playoutRTPTimestamp=%u";
      goto LABEL_63;
    }

    result = os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v91 = *(a1 + 155128) + 1;
      v92 = **(a2 + 96);
      v93 = *(a2 + 16);
      v94 = *(a2 + 150);
      v108 = 136317186;
      v109 = v41;
      v110 = 2080;
      v111 = "_VideoPacketBuffer_ShouldSkipTemporalFrameScheduling";
      v112 = 1024;
      v113 = 2152;
      v114 = 2048;
      v115 = a1;
      v116 = 1024;
      v117 = v91;
      v118 = 1024;
      v119 = v92;
      v120 = 1024;
      v121 = v93;
      v122 = 1024;
      v123 = v94;
      v124 = 1024;
      v125 = a4;
      v39 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Temporal base layer frame out of order. expectedSeq=%u seq=%u frameTimestamp=%d baseLayerFrameSequenceNumber=%d playoutRTPTimestamp=%u";
      goto LABEL_69;
    }
  }

  else
  {
LABEL_42:
    if (*(a1 + 240) == 1 && *(a2 + 148) == 1)
    {
      if (a5)
      {
        v47 = *(a2 + 146) - a6;
        if (v47)
        {
          if (v47 <= 0x7FFEu)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v48 = VRTraceErrorLogLevelToCSTR();
              v49 = *MEMORY[0x1E6986650];
              result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
              if (!result)
              {
                return result;
              }

              v50 = *(a2 + 146);
              v108 = 136316418;
              v109 = v48;
              v110 = 2080;
              v111 = "_VideoPacketBuffer_ScheduleSingleFrame";
              v112 = 1024;
              v113 = 2187;
              v114 = 2048;
              v115 = a1;
              v116 = 1024;
              v117 = v50;
              v118 = 1024;
              v119 = a6;
              v34 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] frameDecodingOrder:%hu, expectedDecodingOrder:%hu";
              v51 = v49;
              v52 = 50;
              goto LABEL_64;
            }

            return 0;
          }
        }
      }
    }

    if (!*(a2 + 40))
    {
      goto LABEL_100;
    }

    if (!*(a2 + 44))
    {
      if (VideoPacketBuffer_FrameReadyForRecovery(a1, a2))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v53 = VRTraceErrorLogLevelToCSTR();
          v54 = *MEMORY[0x1E6986650];
          v55 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v108 = 136315906;
              v109 = v53;
              v110 = 2080;
              v111 = "_VideoPacketBuffer_ScheduleSingleFrame";
              v112 = 1024;
              v113 = 2193;
              v114 = 2048;
              v115 = a1;
              _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] FEC Protected Frame begin recovery", &v108, 0x26u);
            }
          }

          else if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            _VideoPacketBuffer_ScheduleSingleFrame_cold_1();
          }
        }

        v75 = RecoverOneFrame(a1);
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (v75)
        {
          if (ErrorLogLevelForModule < 8)
          {
            return 0;
          }

          v77 = VRTraceErrorLogLevelToCSTR();
          v78 = *MEMORY[0x1E6986650];
          v79 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            result = os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
            if (result)
            {
              v108 = 136315906;
              v109 = v77;
              v110 = 2080;
              v111 = "_VideoPacketBuffer_ScheduleSingleFrame";
              v112 = 1024;
              v113 = 2202;
              v114 = 2048;
              v115 = a1;
              v34 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] FEC Protected Frame unsuccessful recovery";
              v51 = v78;
              v52 = 38;
              goto LABEL_64;
            }
          }

          else
          {
            result = os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG);
            if (result)
            {
              _VideoPacketBuffer_ScheduleSingleFrame_cold_2();
              return 0;
            }
          }
        }

        else
        {
          if (ErrorLogLevelForModule >= 8)
          {
            v80 = VRTraceErrorLogLevelToCSTR();
            v81 = *MEMORY[0x1E6986650];
            v82 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
              {
                v108 = 136315906;
                v109 = v80;
                v110 = 2080;
                v111 = "_VideoPacketBuffer_ScheduleSingleFrame";
                v112 = 1024;
                v113 = 2196;
                v114 = 2048;
                v115 = a1;
                _os_log_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Scheduling FEC Protected Frame after successful recovery", &v108, 0x26u);
              }
            }

            else if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
            {
              _VideoPacketBuffer_ScheduleSingleFrame_cold_3();
            }
          }

          *a3 = *(a2 + 16);
          *(a2 + 44) = 0x100000001;
          return 1;
        }

        return result;
      }

      if (!*(a2 + 40))
      {
LABEL_100:
        if (_VideoPacketBuffer_IsFrameComplete(a2, 0))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v56 = VRTraceErrorLogLevelToCSTR();
            v57 = *MEMORY[0x1E6986650];
            v58 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                v59 = **(a2 + 96);
                v60 = *(a2 + 16);
                v61 = *(a2 + 4);
                v62 = *(a2 + 5);
                v108 = 136317186;
                v109 = v56;
                v110 = 2080;
                v111 = "_VideoPacketBuffer_ScheduleSingleFrame";
                v112 = 1024;
                v113 = 2206;
                v114 = 2048;
                v115 = a1;
                v116 = 1024;
                v117 = v59;
                v118 = 1024;
                v119 = v60;
                v120 = 1024;
                v121 = a4;
                v122 = 1024;
                v123 = v61;
                v124 = 1024;
                v125 = v62;
                _os_log_impl(&dword_1DB56E000, v57, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Scheduling Regular Frame seq:%u frameTimestamp:%u playoutRTPTimestamp:%u, isTemporalScaledStream=%d, isBaseLayerStream=%d", &v108, 0x44u);
              }
            }

            else if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
            {
              v100 = **(a2 + 96);
              v101 = *(a2 + 16);
              v102 = *(a2 + 4);
              v103 = *(a2 + 5);
              v108 = 136317186;
              v109 = v56;
              v110 = 2080;
              v111 = "_VideoPacketBuffer_ScheduleSingleFrame";
              v112 = 1024;
              v113 = 2206;
              v114 = 2048;
              v115 = a1;
              v116 = 1024;
              v117 = v100;
              v118 = 1024;
              v119 = v101;
              v120 = 1024;
              v121 = a4;
              v122 = 1024;
              v123 = v102;
              v124 = 1024;
              v125 = v103;
              _os_log_debug_impl(&dword_1DB56E000, v57, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Scheduling Regular Frame seq:%u frameTimestamp:%u playoutRTPTimestamp:%u, isTemporalScaledStream=%d, isBaseLayerStream=%d", &v108, 0x44u);
            }
          }

          *a3 = *(a2 + 16);
          result = 1;
          *(a2 + 48) = 1;
          return result;
        }
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return 0;
    }

    v63 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    v64 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      result = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v65 = **(a2 + 96);
      v66 = *(a2 + 16);
      v67 = *(a2 + 4);
      v68 = *(a2 + 5);
      v108 = 136317186;
      v109 = v63;
      v110 = 2080;
      v111 = "_VideoPacketBuffer_ScheduleSingleFrame";
      v112 = 1024;
      v113 = 2212;
      v114 = 2048;
      v115 = a1;
      v116 = 1024;
      v117 = v65;
      v118 = 1024;
      v119 = v66;
      v120 = 1024;
      v121 = a4;
      v122 = 1024;
      v123 = v67;
      v124 = 1024;
      v125 = v68;
      v34 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Frame is not yet ready seq:%u frameTimestamp:%u playoutRTPTimestamp:%u, isTemporalScaledStream=%d, isBaseLayerStream=%d";
      goto LABEL_63;
    }

    result = os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v69 = **(a2 + 96);
      v70 = *(a2 + 16);
      v71 = *(a2 + 4);
      v72 = *(a2 + 5);
      v108 = 136317186;
      v109 = v63;
      v110 = 2080;
      v111 = "_VideoPacketBuffer_ScheduleSingleFrame";
      v112 = 1024;
      v113 = 2212;
      v114 = 2048;
      v115 = a1;
      v116 = 1024;
      v117 = v69;
      v118 = 1024;
      v119 = v70;
      v120 = 1024;
      v121 = a4;
      v122 = 1024;
      v123 = v71;
      v124 = 1024;
      v125 = v72;
      v39 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Frame is not yet ready seq:%u frameTimestamp:%u playoutRTPTimestamp:%u, isTemporalScaledStream=%d, isBaseLayerStream=%d";
LABEL_69:
      v73 = v28;
      v74 = 68;
LABEL_70:
      _os_log_debug_impl(&dword_1DB56E000, v73, OS_LOG_TYPE_DEBUG, v39, &v108, v74);
      return 0;
    }
  }

  return result;
}

uint64_t VideoPacketBuffer_FrameReadyForRecovery(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 40))
  {
    return 0;
  }

  if ((*(a1 + 366) & 1) == 0)
  {
    for (i = *(a2 + 96); i; i = *(i + 104))
    {
      if (*(i + 24))
      {
        v7 = *(i + 32);
        if (v7 >> 30)
        {
          if ((v7 & 0xC0004000) == 0x40004000)
          {
            return 1;
          }
        }

        else if ((v7 & 0x8000) != 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  v2 = *(a2 + 104) - *(a2 + 108);
  if (v2)
  {
    v3 = v2 > *(a2 + 110);
  }

  else
  {
    v3 = 0;
  }

  result = !v3;
  if (result)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  *(a2 + 60) = v5;
  return result;
}

uint64_t RecoverOneFrame(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  __b[2] = *MEMORY[0x1E69E9840];
  if (!*(v2 + 40))
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  v278 = (v1 + 151552);
  v274 = v1;
  v276 = v2;
  if (*(v1 + 366) != 1)
  {
    v14 = (v2 + 96);
    v13 = *(v2 + 96);
    if (v13)
    {
      v15 = 0;
      do
      {
        v16 = *(v13 + 32);
        v17 = v16 >> 30;
        v18 = (v16 >> 15) & 0x7F;
        if (v16 >> 30 != 1)
        {
          v18 = 0;
        }

        v19 = HIWORD(v16) & 0x7F;
        if (v17)
        {
          v19 = v18;
        }

        if (v19 >= v15)
        {
          v15 = v19 + 1;
        }

        v13 = *(v13 + 104);
      }

      while (v13);
      if (v15 >= 1)
      {
        v20 = 0;
        v21 = 0;
        v267 = v1 + 51736;
        v22 = *(v2 + 96);
        v268 = (v2 + 96);
        while (1)
        {
          v23 = 0;
          if (v22)
          {
            v24 = v14;
            do
            {
              v25 = *(v22 + 32);
              v26 = v25 >> 30;
              v27 = (v25 >> 15) & 0x7F;
              if (v25 >> 30 != 1)
              {
                v27 = 0;
              }

              v28 = HIWORD(v25) & 0x7F;
              if (v26)
              {
                v29 = v27;
              }

              else
              {
                v29 = v28;
              }

              v30 = (v22 + 104);
              if (v29 == v20)
              {
                *v24 = *v30;
                *v30 = 0;
                if (v23)
                {
                  v31 = v23;
                  do
                  {
                    v32 = v31;
                    v31 = *(v31 + 104);
                  }

                  while (v31);
                  *(v32 + 104) = v22;
                }

                else
                {
                  v23 = v22;
                }
              }

              else
              {
                v24 = (v22 + 104);
              }

              v22 = *v24;
            }

            while (*v24);
          }

          v275 = v21;
          v270 = *v3;
          v272 = *(v3 + 150);
          v33 = *(v3 + 16);
          v273 = *(v3 + 20);
          v294 = 0;
          v292 = 0u;
          v293 = 0u;
          v290 = 0u;
          v291 = 0u;
          memset(v289, 0, sizeof(v289));
          memset(__b, 0, 15);
          v297[0] = 0;
          v297[1] = 0;
          *(v298 + 6) = 0;
          v298[0] = 0;
          memset(v287, 0, 60);
          memset(v286, 0, 60);
          memset(v296, 0, 60);
          memset(v295, 0, 14);
          v282 = 0;
          memset(v288, 0, 120);
          v269 = v33;
          v34 = 0;
          v35 = 0;
          if (v23)
          {
            LODWORD(v36) = 0;
            v277 = 0;
            v281 = 0;
            v279 = 0;
            v37 = -1431655766;
            v38 = v23;
            v271 = v15;
            while (1)
            {
              v39 = *(v38 + 32);
              v40 = v39 >> 30;
              v41 = (v39 >> 15) & 0x7F;
              if (v39 >> 30 != 1)
              {
                v41 = 0;
              }

              if (!v40)
              {
                v41 = HIWORD(v39) & 0x7F;
              }

              if (v41 != v20)
              {
                v3 = v276;
                *(v276 + 60) = 3;
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v123 = VRTraceErrorLogLevelToCSTR();
                  v124 = *MEMORY[0x1E6986650];
                  v14 = v268;
                  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
LABEL_217:
                    v133 = 0;
                    v64 = 0;
                    goto LABEL_218;
                  }

                  *buf = 136316162;
                  *&buf[4] = v123;
                  *&buf[12] = 2080;
                  *&buf[14] = "RecoverOneFECGroup";
                  *&buf[22] = 1024;
                  *&buf[24] = 853;
                  *&buf[28] = 2048;
                  *&buf[30] = v274;
                  *&buf[38] = 1024;
                  *&buf[40] = v20;
                  v125 = v124;
                  v126 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] group_id mismatch, expected (%d)";
                  v127 = 44;
LABEL_273:
                  _os_log_error_impl(&dword_1DB56E000, v125, OS_LOG_TYPE_ERROR, v126, buf, v127);
                  goto LABEL_217;
                }

LABEL_219:
                v133 = 0;
                v64 = 0;
                goto LABEL_220;
              }

              if (!v34)
              {
                break;
              }

LABEL_74:
              v52 = *(v38 + 32);
              v53 = v52 >> 30;
              v281 = v39 & ~(v39 >> 31) & 0x3FF;
              if (v52 >> 30)
              {
                if (v53 == 1)
                {
                  v54 = (v52 >> 23) & 0xF;
                  if (!*(v38 + 24))
                  {
                    goto LABEL_99;
                  }
                }

                else
                {
                  v55 = *(v38 + 24);
                  if (v53 == 2 && v55)
                  {
                    v54 = HIWORD(v52) & 0x3FF;
                  }

                  else
                  {
                    v54 = 0;
                    if (!v55)
                    {
                      goto LABEL_99;
                    }
                  }
                }

                if (v53 == 1)
                {
                  if ((v52 >> 22))
                  {
                    goto LABEL_99;
                  }
                }

                else if (((v52 >> 26) & 1) == 0)
                {
                  goto LABEL_99;
                }
              }

              else
              {
                v54 = HIBYTE(v52) & 7;
                if (!*(v38 + 24) || ((v52 >> 23) & 1) != 0)
                {
                  goto LABEL_99;
                }
              }

              v279 += *(v38 + 96);
              if (v37 == 1)
              {
                v295[v54 / v34] = *(v38 + 76);
              }

              else if (!v37 && !v296[0])
              {
                v56 = *(v38 + 68);
                if (v56 >= 1)
                {
                  v57 = (v38 + 36);
                  v58 = v296;
                  while (1)
                  {
                    v60 = *v57++;
                    v59 = v60;
                    if (v60 >= 0x5DD)
                    {
                      break;
                    }

                    *v58++ = v59;
                    if (!--v56)
                    {
                      goto LABEL_98;
                    }
                  }

                  v3 = v276;
                  *(v276 + 60) = 3;
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v137 = VRTraceErrorLogLevelToCSTR();
                    v138 = *MEMORY[0x1E6986650];
                    v14 = v268;
                    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_217;
                    }

                    v164 = *v58;
                    *buf = 136316418;
                    *&buf[4] = v137;
                    *&buf[12] = 2080;
                    *&buf[14] = "RecoverOneFECGroup";
                    *&buf[22] = 1024;
                    *&buf[24] = 885;
                    *&buf[28] = 1024;
                    *&buf[30] = 885;
                    *&buf[34] = 2048;
                    *&buf[36] = v274;
                    *&buf[44] = 1024;
                    *&buf[46] = v164;
                    v125 = v138;
                    v126 = "VideoPacketBuffer [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoPacketBuffer.c:%d: VideoPacketBuffer[%p] packet size (%d) is too big";
                    v127 = 50;
                    goto LABEL_273;
                  }

                  goto LABEL_219;
                }
              }

LABEL_98:
              v54 += 8;
LABEL_99:
              if (v34 >= 1)
              {
                memset(__b + v54, 255, v34);
              }

              v61 = (v54 - v35) / v34;
              if (v61 >= 0xF)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v128 = VRTraceErrorLogLevelToCSTR();
                  v129 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136316930;
                    *&buf[4] = v128;
                    *&buf[12] = 2080;
                    *&buf[14] = "RecoverOneFECGroup";
                    *&buf[22] = 1024;
                    *&buf[24] = 907;
                    *&buf[28] = 2048;
                    *&buf[30] = v274;
                    *&buf[38] = 1024;
                    *&buf[40] = (v54 - v35) / v34;
                    *&buf[44] = 1024;
                    *&buf[46] = v54;
                    *&buf[50] = 1024;
                    *&buf[52] = v35;
                    *v284 = 1024;
                    *&v284[2] = v34;
                    v130 = v129;
                    v131 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Unexpected index index=%d startPosition=%d dataPacketOffset=%d numberOfSymbolsPerPacket=%d";
                    v132 = 62;
                    goto LABEL_271;
                  }
                }

LABEL_212:
                v133 = 0;
                v64 = 0;
                v3 = v276;
                *(v276 + 60) = 3;
LABEL_220:
                v6 = 0xFFFFFFFFLL;
LABEL_221:
                v14 = v268;
                goto LABEL_224;
              }

              v62 = v289[v61];
              if (v62)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v134 = VRTraceErrorLogLevelToCSTR();
                  v135 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    v157 = *(v62 + 24);
                    v158 = *(v62 + 32);
                    v159 = v158 >> 30;
                    v160 = (v158 >> 26) & 1;
                    if (v158 >> 30 == 1)
                    {
                      v160 = ((v158 >> 22) & 1) == 0;
                    }

                    *buf = 136316930;
                    *&buf[4] = v134;
                    if (!v159)
                    {
                      v160 = ((v158 >> 23) & 1) == 0;
                    }

                    *&buf[12] = 2080;
                    *&buf[14] = "RecoverOneFECGroup";
                    if (!v157)
                    {
                      v160 = 0;
                    }

                    *&buf[22] = 1024;
                    if (v157)
                    {
                      v161 = v159 == 2;
                    }

                    else
                    {
                      v161 = 0;
                    }

                    v162 = HIWORD(v158) & 0x3FF;
                    *&buf[24] = 918;
                    if (!v161)
                    {
                      v162 = 0;
                    }

                    *&buf[28] = 2048;
                    if (v159 == 1)
                    {
                      v162 = (v158 >> 23) & 0xF;
                    }

                    *&buf[30] = v274;
                    v163 = HIBYTE(v158) & 7;
                    *&buf[38] = 1024;
                    if (!v159)
                    {
                      v162 = v163;
                    }

                    *&buf[40] = v20;
                    *&buf[44] = 2048;
                    *&buf[46] = v62;
                    *&buf[54] = 1024;
                    *v284 = v160;
                    *&v284[4] = 1024;
                    v285 = v162;
                    v130 = v135;
                    v131 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Unexpected duplicate packet found! GroupID=%d packet=%p parity=%d position=%d";
                    v132 = 66;
LABEL_271:
                    _os_log_error_impl(&dword_1DB56E000, v130, OS_LOG_TYPE_ERROR, v131, buf, v132);
                  }
                }

                goto LABEL_212;
              }

              v288[v61] = *(v38 + 136);
              v289[v61] = v38;
              v63 = *(v38 + 128);
              v287[v61] = v63;
              v286[v61] = v63;
              if (v36 <= v63)
              {
                v36 = v63;
              }

              else
              {
                v36 = v36;
              }

              *(v297 + v61) = *v38;
              *(v38 + 80) = 1;
              *(v38 + 20) = 0;
              v38 = *(v38 + 104);
              if (!v38)
              {
                v136 = v37 == 1;
                if (v35 <= 7)
                {
                  v3 = v276;
                  v14 = v268;
                  goto LABEL_115;
                }

                v64 = 0;
                v3 = v276;
                v14 = v268;
LABEL_223:
                v6 = 0;
                v133 = 1;
                *(v3 + 60) = 1;
                goto LABEL_224;
              }
            }

            if (v40)
            {
              if ((v39 & 0xC0000000) == 0x40000000)
              {
                v35 = (v39 >> 10) & 0xF;
              }

              else
              {
                v35 = 0;
              }

              if ((v39 & 0xC0000000) != 0x40000000)
              {
                goto LABEL_60;
              }

              if (*(v38 + 24))
              {
                v42 = (v39 >> 14) & 1;
              }

              else
              {
                v42 = 0;
              }

LABEL_51:
              v277 = v42;
              if (!v35)
              {
LABEL_53:
                v34 = (v39 >> 27) & ~(v39 >> 31) & 7;
                RSU_GetPacketLayout(v34, v35, &v282 + 1, &v282);
                if (VRTraceGetErrorLogLevelForModule() < 8)
                {
                  v37 = v39 >> 30;
                }

                else
                {
                  v43 = VRTraceErrorLogLevelToCSTR();
                  v44 = *MEMORY[0x1E6986650];
                  v45 = *MEMORY[0x1E6986650];
                  if (*MEMORY[0x1E6986640] == 1)
                  {
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                    {
                      if (*(v38 + 24))
                      {
                        v46 = *(v38 + 32);
                        if (v46 >> 30)
                        {
                          if (v46 >> 30 == 1)
                          {
                            v47 = ((v46 >> 22) & 1) == 0;
                          }

                          else
                          {
                            v47 = (v46 >> 26) & 1;
                          }
                        }

                        else
                        {
                          v47 = ((v46 >> 23) & 1) == 0;
                        }

                        v143 = v47 == 0;
                        v51 = "data";
                        if (!v143)
                        {
                          v51 = "parity";
                        }
                      }

                      else
                      {
                        v51 = "data";
                      }

                      *buf = 136316674;
                      *&buf[4] = v43;
                      *&buf[12] = 2080;
                      *&buf[14] = "RecoverOneFECGroup";
                      *&buf[22] = 1024;
                      *&buf[24] = 869;
                      *&buf[28] = 2080;
                      *&buf[30] = v51;
                      *&buf[38] = 1024;
                      *&buf[40] = v39 >> 30;
                      *&buf[44] = 1024;
                      *&buf[46] = HIDWORD(v282);
                      *&buf[50] = 1024;
                      *&buf[52] = v282;
                      _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d Received %s packet FEC Header version %d with numberOfDataPackets: %d, numberOfParityPackets:%d", buf, 0x38u);
                    }
                  }

                  else if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                  {
                    v48 = "data";
                    if (*(v38 + 24))
                    {
                      v49 = *(v38 + 32);
                      if (v49 >> 30)
                      {
                        v50 = v49 >> 30 == 1 ? ((v49 >> 22) & 1) == 0 : (v49 >> 26) & 1;
                      }

                      else
                      {
                        v50 = ((v49 >> 23) & 1) == 0;
                      }

                      v143 = !v50;
                      v48 = "data";
                      if (!v143)
                      {
                        v48 = "parity";
                      }
                    }

                    *buf = 136316674;
                    *&buf[4] = v43;
                    *&buf[12] = 2080;
                    *&buf[14] = "RecoverOneFECGroup";
                    *&buf[22] = 1024;
                    *&buf[24] = 869;
                    *&buf[28] = 2080;
                    *&buf[30] = v48;
                    *&buf[38] = 1024;
                    *&buf[40] = v39 >> 30;
                    *&buf[44] = 1024;
                    *&buf[46] = HIDWORD(v282);
                    *&buf[50] = 1024;
                    *&buf[52] = v282;
                    _os_log_debug_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d Received %s packet FEC Header version %d with numberOfDataPackets: %d, numberOfParityPackets:%d", buf, 0x38u);
                  }

                  v37 = v39 >> 30;
                  v15 = v271;
                }

                goto LABEL_74;
              }
            }

            else
            {
              v35 = (v39 >> 11) & 7;
              if (*(v38 + 24))
              {
                v42 = (v39 >> 15) & 1;
                goto LABEL_51;
              }

LABEL_60:
              v277 = 0;
              if (!v35)
              {
                goto LABEL_53;
              }
            }

            memset(__b, 255, v35);
            goto LABEL_53;
          }

          v36 = 0;
          v277 = 0;
          v136 = 0;
          v281 = 0;
          v279 = 0;
LABEL_115:
          LODWORD(v64) = 0;
          v65 = 0;
          v66 = v35;
          do
          {
            if (*(__b + v66))
            {
              v64 = v64;
            }

            else
            {
              ++v65;
              v64 = (v64 + 1);
            }

            ++v66;
          }

          while (v66 != 8);
          if (!v65)
          {
            goto LABEL_223;
          }

          v266 = v136;
          for (i = 0; i != 7; ++i)
          {
            if (!*(&__b[1] + i))
            {
              ++v65;
            }
          }

          if (!RSU_IsRecoverable(v65))
          {
            v133 = 0;
            *(v3 + 60) = 2;
            goto LABEL_218;
          }

          v68 = HIDWORD(v282);
          v69 = v282;
          LODWORD(v70) = v282 + HIDWORD(v282);
          if (v282 + HIDWORD(v282) < 1)
          {
LABEL_148:
            v83 = RSU_Decode(v288, v287, v286, v70, v34, v35, v295, v266);
            ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
            v3 = v276;
            if (v83 < 0)
            {
              if (ErrorLogLevelForModule < 3)
              {
                goto LABEL_253;
              }

              v144 = VRTraceErrorLogLevelToCSTR();
              v145 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_253;
              }

              *buf = 136316418;
              *&buf[4] = v144;
              *&buf[12] = 2080;
              *&buf[14] = "RecoverOneFECGroup";
              *&buf[22] = 1024;
              *&buf[24] = 1048;
              *&buf[28] = 1024;
              *&buf[30] = 1048;
              *&buf[34] = 2048;
              *&buf[36] = v274;
              *&buf[44] = 1024;
              *&buf[46] = 0;
              v146 = v145;
              v147 = "VideoPacketBuffer [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoPacketBuffer.c:%d: VideoPacketBuffer[%p] RSU_Decode failed (%d)";
              goto LABEL_277;
            }

            if (ErrorLogLevelForModule >= 7)
            {
              v91 = VRTraceErrorLogLevelToCSTR();
              v92 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316674;
                *&buf[4] = v91;
                *&buf[12] = 2080;
                *&buf[14] = "RecoverOneFECGroup";
                *&buf[22] = 1024;
                *&buf[24] = 1055;
                *&buf[28] = 2048;
                *&buf[30] = v274;
                *&buf[38] = 1024;
                *&buf[40] = v269;
                *&buf[44] = 1024;
                *&buf[46] = v20;
                *&buf[50] = 1024;
                *&buf[52] = v277;
                _os_log_impl(&dword_1DB56E000, v92, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] recovered frame (%08X) group (%d:%d)", buf, 0x38u);
              }
            }

            v93 = HIDWORD(v282);
            v94 = v266;
            if (SHIDWORD(v282) <= 0)
            {
              v94 = 0;
            }

            if (v94 == 1)
            {
              v95 = v287;
              v96 = v289;
              v97 = HIDWORD(v282);
              while (1)
              {
                v98 = *v95;
                if (v98 >= 1501)
                {
                  break;
                }

                v99 = *v96++;
                *(v99 + 128) = v98;
                ++v95;
                if (!--v97)
                {
                  goto LABEL_158;
                }
              }

              if (VRTraceGetErrorLogLevelForModule() < 3 || (v155 = VRTraceErrorLogLevelToCSTR(), v156 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
              {
LABEL_253:
                v6 = 0;
                v122 = 3;
                goto LABEL_254;
              }

              v165 = *v95;
              *buf = 136316418;
              *&buf[4] = v155;
              *&buf[12] = 2080;
              *&buf[14] = "RecoverOneFECGroup";
              *&buf[22] = 1024;
              *&buf[24] = 1061;
              *&buf[28] = 1024;
              *&buf[30] = 1061;
              *&buf[34] = 2048;
              *&buf[36] = v274;
              *&buf[44] = 1024;
              *&buf[46] = v165;
              v146 = v156;
              v147 = "VideoPacketBuffer [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoPacketBuffer.c:%d: VideoPacketBuffer[%p] payload size (%d) is too big";
LABEL_277:
              _os_log_error_impl(&dword_1DB56E000, v146, OS_LOG_TYPE_ERROR, v147, buf, 0x32u);
              goto LABEL_253;
            }

LABEL_158:
            v100 = (v282 + v93);
            if (v282 >= 1)
            {
              v101 = v93;
              do
              {
                *(v289[v101++] + 128) = v36;
              }

              while (v101 < v100);
            }

            v23 = v289[0];
            if (v100 > 1)
            {
              v102 = v100 - 1;
              v103 = &v289[1];
              v104 = v289[0];
              do
              {
                v105 = *v103++;
                *(v104 + 104) = v105;
                v104 = v105;
                --v102;
              }

              while (v102);
            }

            *(v289[v100 - 1] + 104) = 0;
            v106 = v270;
            if (v93 < 1)
            {
LABEL_202:
              v6 = 0;
              v3 = v276;
              v122 = 4;
LABEL_254:
              *(v3 + 60) = v122;
              v133 = 1;
              goto LABEL_221;
            }

            v107 = 0;
            v108 = 0;
            v109 = v289;
            while (2)
            {
              v110 = v289[v108];
              if (!*(v110 + 24))
              {
                goto LABEL_174;
              }

              v111 = *(v110 + 32);
              if (v111 >> 30)
              {
                if (v111 >> 30 == 1)
                {
                  if ((v111 & 0x400000) != 0)
                  {
                    goto LABEL_174;
                  }
                }

                else if ((v111 & 0x4000000) == 0)
                {
                  goto LABEL_174;
                }

LABEL_169:
                *(v110 + 80) = 4;
              }

              else
              {
                if ((v111 & 0x800000) == 0)
                {
                  goto LABEL_169;
                }

LABEL_174:
                if (v106 == 123 || v106 == 100)
                {
                  if (*(v110 + 20))
                  {
                    *(v110 + 80) = 3;
                    if (v108 == v93 - 1)
                    {
                      *(v110 + 16) = 1;
                    }
                  }

                  goto LABEL_198;
                }

                if (*(v110 + 20))
                {
                  *(v110 + 80) = 3;
                  FrameSliceHeader = ReadFrameSliceHeader(v106, *(v110 + 136) + 4, *(v110 + 128) - 4, 0);
                  if (FrameSliceHeader == 1)
                  {
                    if (v108 >= SHIDWORD(v282))
                    {
                      v115 = 0;
                    }

                    else
                    {
                      v115 = 0;
                      v116 = v107 + HIDWORD(v282);
                      v117 = v109;
                      do
                      {
                        v118 = *v117++;
                        v115 += *(v118 + 128);
                        --v116;
                      }

                      while (v116);
                    }

                    v106 = v270;
                    if (bswap32(**(v110 + 136)) + 4 <= v115)
                    {
                      *(v110 + 8) = 1;
                      if (v108)
                      {
                        v119 = v289[v108 - 1];
                        v120 = *(v119 + 12);
                        v113 = (v119 + 12);
                        if (!v120)
                        {
LABEL_183:
                          *v113 = 1;
                        }
                      }
                    }
                  }

                  else
                  {
                    v106 = v270;
                    if (FrameSliceHeader == 2)
                    {
                      *(v110 + 8) = 1;
                      v113 = (v110 + 12);
                      goto LABEL_183;
                    }
                  }

                  v93 = HIDWORD(v282);
                  if (v108 == HIDWORD(v282) - 1)
                  {
                    *(v110 + 12) = 0x100000001;
                  }
                }

                else if (v108)
                {
                  if (*(v110 + 8))
                  {
                    v114 = v289[v108 - 1];
                    if (*(v114 + 20))
                    {
                      *(v114 + 12) = 1;
                    }
                  }
                }

LABEL_198:
                v121 = v278[448];
                if (v121 && *(v110 + 80) == 3)
                {
                  *buf = 0xAAAAAAAAAAAAAAAALL;
                  *&buf[8] = -1;
                  *&buf[16] = 0xAAAAAAAAAAAAAAAALL;
                  *&buf[24] = 0xAAAAAAAAAAAAAAAALL;
                  *buf = *(v110 + 4);
                  *&buf[4] = *v110;
                  *&buf[8] = *(v110 + 88);
                  buf[16] = 0;
                  *&buf[20] = *(v110 + 84);
                  buf[24] = 1;
                  *&buf[26] = v272;
                  *&buf[28] = *(v110 + 128);
                  *&buf[30] = 1;
                  VCNACKGenerator_AddPacketInfo(v121, buf, v85, v86, v87, v88, v89, v90);
                  v106 = v270;
                  v93 = HIDWORD(v282);
                }
              }

              ++v108;
              --v107;
              ++v109;
              if (v108 >= v93)
              {
                goto LABEL_202;
              }

              continue;
            }
          }

          v71 = 0;
          while (v288[v71])
          {
            LODWORD(v70) = v68 + v69;
LABEL_147:
            if (++v71 >= v70)
            {
              goto LABEL_148;
            }
          }

          v72 = VCMemoryPool_Alloc(v278[440]);
          if (!v72)
          {
            v3 = v276;
            *(v276 + 60) = 3;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v148 = VRTraceErrorLogLevelToCSTR();
              v149 = *MEMORY[0x1E6986650];
              v14 = v268;
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_249;
              }

              *buf = 136316162;
              *&buf[4] = v148;
              *&buf[12] = 2080;
              *&buf[14] = "RecoverOneFECGroup";
              *&buf[22] = 1024;
              *&buf[24] = 982;
              *&buf[28] = 1024;
              *&buf[30] = 982;
              *&buf[34] = 2048;
              *&buf[36] = v274;
              v150 = v149;
              v151 = "VideoPacketBuffer [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoPacketBuffer.c:%d: VideoPacketBuffer[%p] malloc failed";
              v152 = 44;
              goto LABEL_275;
            }

LABEL_250:
            v133 = 0;
            goto LABEL_220;
          }

          v73 = v72;
          v289[v71] = v72;
          if (VideoPacketBuffer_CreateBlockBufferForPacket(v274, v72))
          {
            break;
          }

          v3 = v276;
          *(v276 + 60) = 3;
          VCMemoryPool_Free(v278[440], v73);
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_250;
          }

          v153 = VRTraceErrorLogLevelToCSTR();
          v154 = *MEMORY[0x1E6986650];
          v14 = v268;
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_249;
          }

          *buf = 136315906;
          *&buf[4] = v153;
          *&buf[12] = 2080;
          *&buf[14] = "RecoverOneFECGroup";
          *&buf[22] = 1024;
          *&buf[24] = 993;
          *&buf[28] = 2048;
          *&buf[30] = v274;
          v150 = v154;
          v151 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Block buffer init failed";
          v152 = 38;
LABEL_275:
          _os_log_error_impl(&dword_1DB56E000, v150, OS_LOG_TYPE_ERROR, v151, buf, v152);
LABEL_249:
          v133 = 0;
LABEL_218:
          v6 = 0xFFFFFFFFLL;
LABEL_224:
          v21 = v275;
          if (*(v3 + 60) != 3 && SHIDWORD(v282) >= 1)
          {
            v140 = vcvtps_s32_f32((HIDWORD(v282) * v281) / 100.0);
            VideoPacketBuffer_UpdateMaxGroupBurstLossStatistics(v267 + 800 * (v272 & 0x7F), v64, (v140 - v279) & ~((v140 - v279) >> 31), v34, SHIDWORD(v282), v20);
          }

          if (v275)
          {
            v141 = v275;
            do
            {
              v142 = v141;
              v141 = *(v141 + 104);
            }

            while (v141);
            *(v142 + 104) = v23;
          }

          else
          {
            v21 = v23;
          }

          if (!v133)
          {
            goto LABEL_299;
          }

          v22 = *v14;
          ++v20;
          if (*v14)
          {
            v143 = v20 == v15;
          }

          else
          {
            v143 = 1;
          }

          if (v143)
          {
            v6 = 0;
LABEL_299:
            if (v21)
            {
              v174 = v21;
              do
              {
                v175 = v174;
                v174 = *(v174 + 104);
              }

              while (v174);
              *(v175 + 104) = *v14;
              *v14 = v21;
            }

            return v6;
          }
        }

        v288[v71] = *(v73 + 17);
        v286[v71] = *(v73 + 16);
        *(v73 + 20) = 2;
        v68 = HIDWORD(v282);
        v74 = SHIDWORD(v282);
        v69 = v282;
        v70 = (v282 + HIDWORD(v282));
        if (v70 >= 1)
        {
          v75 = 0;
          while (!*(v297 + v75))
          {
            if (v70 == ++v75)
            {
              goto LABEL_141;
            }
          }

          if (v71 >= SHIDWORD(v282))
          {
            v76 = *(v297 + SHIDWORD(v282) - 1);
          }

          else
          {
            v76 = v71 - v75 + *(v297 + v75);
          }

          *(v297 + v71) = v76;
          *v73 = v76;
        }

LABEL_141:
        v77 = v296[v71];
        *(v73 + 16) = v77;
        *(v73 + 1) = v273;
        v78 = v77 & 0x1FFF;
        v79 = v71 < v74;
        if (v71 >= v74)
        {
          v80 = (v71 - v68) * v34;
        }

        else
        {
          v80 = v35 + v34 * v71;
        }

        *(v73 + 6) = 1;
        v81 = v80 & 7 | (8 * (v34 & 0x1F));
        v82 = (v20 & 0x7F) << 16;
        if (v79)
        {
          v82 = ((v20 & 0x7F) << 16) | 0x800000;
        }

        *(v73 + 8) = v82 | (v81 << 24) | v78 | ((v277 << 15) | (v35 << 11));
        *(v73 + 17) = v68;
        *(v73 + 8) = xmmword_1DBD47EC0;
        *(v73 + 13) = 0;
        goto LABEL_147;
      }
    }

    return 0;
  }

  v5 = *(v2 + 104);
  if (v5 >= 0x401)
  {
    v6 = 2150825998;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v9 = *(v3 + 104);
        LODWORD(v289[0]) = 136316162;
        *(v289 + 4) = v7;
        WORD2(v289[1]) = 2080;
        *(&v289[1] + 6) = "_VideoPacketBuffer_DoFrameBasedDecoding";
        HIWORD(v289[2]) = 1024;
        WORD2(v289[3]) = 2048;
        *(&v289[3] + 6) = v4;
        HIWORD(v289[4]) = 1024;
        LODWORD(v289[3]) = 1390;
        LODWORD(v289[5]) = v9;
        v10 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Unsupported frame size for FEC recovery videoPacketsExpected=%d";
        v11 = v289;
        v12 = v8;
LABEL_430:
        _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, v10, v11, 0x2Cu);
        return v6;
      }
    }

    return v6;
  }

  bzero(v289, 0x2000uLL);
  bzero(v288, 0x2000uLL);
  bzero(v287, 0x400uLL);
  bzero(v286, 0x400uLL);
  v167 = *(v3 + 96);
  if (!v167)
  {
    v169 = 0;
    v168 = 0;
LABEL_304:
    v176 = v5 - 1;
    if (v5 != 1)
    {
      v177 = v274;
      if (v5 == v169)
      {
        RecoverOneFrame_cold_8(v3, v274, buf);
      }

      else
      {
        if (v168)
        {
          if (v5)
          {
            for (j = 0; j < *(v276 + 104); ++j)
            {
              v179 = v289[j];
              NewOnePacket = v179;
              if (!v179)
              {
                NewOnePacket = _VideoPacketBuffer_CreateNewOnePacket(v177, v276, 0, j, v168, v176);
                v289[j] = NewOnePacket;
                if (!NewOnePacket)
                {
                  RecoverOneFrame_cold_3(j, v177, buf);
LABEL_433:
                  v6 = *buf;
                  v3 = v276;
                  goto LABEL_347;
                }

                *(v287 + j) = -1;
              }

              v181 = v278[449];
              v182 = *(NewOnePacket + 15);
              v183 = *(NewOnePacket + 40);
              *v296 = *(NewOnePacket + 24);
              *&v296[4] = v183;
              *&v296[8] = *(NewOnePacket + 56);
              *&v296[12] = *(NewOnePacket + 9);
              v6 = 4294954516;
              if (!v181 || !v182)
              {
                goto LABEL_340;
              }

              v184 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (!v184)
              {
                v6 = 4294954514;
LABEL_340:
                v3 = v276;
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v212 = VRTraceErrorLogLevelToCSTR();
                  v213 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136316162;
                    *&buf[4] = v212;
                    *&buf[12] = 2080;
                    *&buf[14] = "_VideoPacketBuffer_PushDataAndParityPacketsIntoFECConsumer";
                    *&buf[22] = 1024;
                    *&buf[24] = 1369;
                    *&buf[28] = 2048;
                    *&buf[30] = v274;
                    *&buf[38] = 1024;
                    *&buf[40] = v6;
                    v214 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Failed while pushing data packets result=%d";
LABEL_408:
                    _os_log_error_impl(&dword_1DB56E000, v213, OS_LOG_TYPE_ERROR, v214, buf, 0x2Cu);
                  }
                }

                goto LABEL_347;
              }

              *buf = *v296;
              *&buf[16] = *&v296[4];
              *&buf[32] = *&v296[8];
              *&buf[48] = *&v296[12];
              v185 = v184(v181, v182, buf, v179 == 0, j);
              if ((v185 & 0x80000000) != 0)
              {
                v6 = v185;
                goto LABEL_340;
              }

              v177 = v274;
            }
          }

          if (*(v276 + 106))
          {
            v186 = 0;
            while (1)
            {
              v187 = v288[v186];
              v188 = v187;
              if (!v187)
              {
                v188 = _VideoPacketBuffer_CreateNewOnePacket(v177, v276, 1, v186, v168, v176);
                v288[v186] = v188;
                if (!v188)
                {
                  RecoverOneFrame_cold_4(v186, v177, buf);
                  goto LABEL_433;
                }

                *(v286 + v186) = -1;
              }

              v189 = v278[449];
              v190 = *(v188 + 15);
              v191 = *(v188 + 40);
              *v296 = *(v188 + 24);
              *&v296[4] = v191;
              *&v296[8] = *(v188 + 56);
              *&v296[12] = *(v188 + 9);
              v6 = 4294954516;
              if (!v189 || !v190)
              {
                break;
              }

              v192 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (!v192)
              {
                v6 = 4294954514;
                break;
              }

              *buf = *v296;
              *&buf[16] = *&v296[4];
              *&buf[32] = *&v296[8];
              *&buf[48] = *&v296[12];
              v193 = v192(v189, v190, buf, v187 == 0, v186);
              if ((v193 & 0x80000000) != 0)
              {
                v6 = v193;
                break;
              }

              ++v186;
              v177 = v274;
              if (v186 >= *(v276 + 106))
              {
                goto LABEL_327;
              }
            }

            v3 = v276;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v215 = VRTraceErrorLogLevelToCSTR();
              v213 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                *&buf[4] = v215;
                *&buf[12] = 2080;
                *&buf[14] = "_VideoPacketBuffer_PushDataAndParityPacketsIntoFECConsumer";
                *&buf[22] = 1024;
                *&buf[24] = 1382;
                *&buf[28] = 2048;
                *&buf[30] = v274;
                *&buf[38] = 1024;
                *&buf[40] = v6;
                v214 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Failed while pushing parity packets result=%d";
                goto LABEL_408;
              }
            }

LABEL_347:
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_411;
            }

            v216 = VRTraceErrorLogLevelToCSTR();
            v217 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_411;
            }

            *buf = 136316162;
            *&buf[4] = v216;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoPacketBuffer_DoFrameBasedDecoding";
            *&buf[22] = 1024;
            *&buf[24] = 1430;
            *&buf[28] = 2048;
            *&buf[30] = v274;
            *&buf[38] = 1024;
            *&buf[40] = v6;
            v218 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Failed to push packets into FEC Consumer result=%d";
            goto LABEL_354;
          }

LABEL_327:
          v194 = v278[449];
          if (v194)
          {
            v3 = v276;
            v195 = *(v276 + 150);
            v196 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v196)
            {
              v197 = v196(v194, v195);
              if ((v197 & 0x80000000) == 0)
              {
                bzero(buf, 0x1000uLL);
                v198 = v278[449];
                if (v198)
                {
                  v199 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                  if (v199)
                  {
                    v200 = v199(v198, buf);
                    if ((v200 & 0x80000000) == 0)
                    {
                      v207 = *(v276 + 104);
                      if (v207 >= 2)
                      {
                        v208 = 0;
                        v209 = v289[0];
                        while (1)
                        {
                          v210 = v289[v208 + 1];
                          *(v209 + 104) = v210;
                          v211 = *&buf[4 * v208];
                          if (v211 <= 0)
                          {
                            RecoverOneFrame_cold_6(v296);
                            goto LABEL_444;
                          }

                          if (v211 >= 0x5DD)
                          {
                            break;
                          }

                          *(v289[v208++] + 128) = v211;
                          v209 = v210;
                          if (v207 - 1 == v208)
                          {
                            goto LABEL_362;
                          }
                        }

                        RecoverOneFrame_cold_5(v296);
LABEL_444:
                        v6 = v296[0];
                        if (VRTraceGetErrorLogLevelForModule() >= 3)
                        {
                          v263 = VRTraceErrorLogLevelToCSTR();
                          v264 = *MEMORY[0x1E6986650];
                          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                          {
                            v296[0] = 136316162;
                            *&v296[1] = v263;
                            LOWORD(v296[3]) = 2080;
                            *(&v296[3] + 2) = "_VideoPacketBuffer_DoFrameBasedDecoding";
                            HIWORD(v296[5]) = 1024;
                            v296[6] = 1440;
                            LOWORD(v296[7]) = 2048;
                            *(&v296[7] + 2) = v274;
                            HIWORD(v296[9]) = 1024;
                            v296[10] = v6;
                            _os_log_error_impl(&dword_1DB56E000, v264, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Failed to restore FEC decoded packets result=%d", v296, 0x2Cu);
                          }
                        }

                        v3 = v276;
                        goto LABEL_411;
                      }

                      v208 = 0;
LABEL_362:
                      v222 = *&buf[4 * v208];
                      v223 = v289[v208];
                      *(v223 + 128) = v222;
                      v224 = *(v276 + 106);
                      if (v224 >= 2)
                      {
                        v225 = 0;
                        v226 = v288[0];
                        v227 = 1 - v224;
                        v228 = &v288[1];
                        do
                        {
                          if (!v225)
                          {
                            *(v223 + 104) = v226;
                          }

                          *(*(v228 - 1) + 104) = *v228;
                          --v225;
                          ++v228;
                        }

                        while (v227 != v225);
                      }

                      if (v207)
                      {
                        v229 = 0;
                        v230 = (v207 - 1);
                        v231 = v289;
                        v232 = v207;
                        while (1)
                        {
                          v233 = *v3;
                          if (*v3 != 123 && v233 != 100)
                          {
                            break;
                          }

                          v234 = v289[v229];
                          if (!*(v234 + 20))
                          {
                            goto LABEL_379;
                          }

                          *(v234 + 80) = 3;
                          if (v229 == v230)
                          {
                            *(v234 + 16) = 1;
                          }

LABEL_395:
                          v244 = v278[448];
                          if (v244 && *(v234 + 80) == 3)
                          {
                            memset(v296, 0, 32);
                            v296[0] = *(v234 + 4);
                            LOWORD(v296[1]) = *v234;
                            *&v296[2] = *(v234 + 88);
                            v296[5] = *(v234 + 84);
                            LOBYTE(v296[6]) = 1;
                            HIWORD(v296[6]) = *(v3 + 150);
                            LOWORD(v296[7]) = *(v234 + 128);
                            BYTE2(v296[7]) = 1;
                            VCNACKGenerator_AddPacketInfo(v244, v296, v201, v202, v203, v204, v205, v206);
                          }

                          ++v229;
                          --v232;
                          ++v231;
                          if (v229 == v207)
                          {
                            goto LABEL_399;
                          }
                        }

                        v235 = &v289[v229];
                        v234 = *v235;
                        if (*(*v235 + 20))
                        {
                          *(v234 + 80) = 3;
                          v236 = ReadFrameSliceHeader(v233, *(v234 + 136) + 4, *(v234 + 128) - 4, 0);
                          if (v236 == 1)
                          {
                            v238 = 0;
                            v239 = v231;
                            v240 = v232;
                            do
                            {
                              v241 = *v239++;
                              v238 += *(v241 + 128);
                              --v240;
                            }

                            while (v240);
                            if (bswap32(**(v234 + 136)) + 4 <= v238)
                            {
                              *(v234 + 8) = 1;
                              if (v229)
                              {
                                v242 = *(v235 - 1);
                                if (!*(v242 + 12))
                                {
                                  *(v242 + 12) = 1;
                                }
                              }
                            }
                          }

                          else if (v236 == 2)
                          {
                            *(v234 + 8) = 0x100000001;
                          }

                          else if (VRTraceGetErrorLogLevelForModule() >= 3)
                          {
                            v280 = VRTraceErrorLogLevelToCSTR();
                            v243 = *MEMORY[0x1E6986650];
                            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                            {
                              v296[0] = 136315650;
                              *&v296[1] = v280;
                              LOWORD(v296[3]) = 2080;
                              *(&v296[3] + 2) = "_VideoPacketBuffer_MarkGobAndFrameEndForNonH264BitStream";
                              HIWORD(v296[5]) = 1024;
                              v296[6] = 1210;
                              _os_log_error_impl(&dword_1DB56E000, v243, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d Unexpected frame type", v296, 0x1Cu);
                            }
                          }

                          if (v229 == v230)
                          {
                            *(v234 + 12) = 0x100000001;
                          }

                          v3 = v276;
                          goto LABEL_395;
                        }

                        v3 = v276;
LABEL_379:
                        if (v229)
                        {
                          if (*(v234 + 8))
                          {
                            v237 = v288[v229 + 1023];
                            if (*(v237 + 20))
                            {
                              *(v237 + 12) = 1;
                            }
                          }
                        }

                        goto LABEL_395;
                      }

LABEL_399:
                      if (v289[0])
                      {
                        *(v3 + 96) = v289[0];
                      }

                      if (VRTraceGetErrorLogLevelForModule() >= 7)
                      {
                        v245 = VRTraceErrorLogLevelToCSTR();
                        v246 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                        {
                          v247 = *(v3 + 150);
                          v248 = *(v3 + 16);
                          v296[0] = 136316418;
                          *&v296[1] = v245;
                          LOWORD(v296[3]) = 2080;
                          *(&v296[3] + 2) = "_VideoPacketBuffer_DoFrameBasedDecoding";
                          HIWORD(v296[5]) = 1024;
                          v296[6] = 1442;
                          LOWORD(v296[7]) = 2048;
                          *(&v296[7] + 2) = v274;
                          HIWORD(v296[9]) = 1024;
                          v296[10] = v247;
                          LOWORD(v296[11]) = 1024;
                          *(&v296[11] + 2) = v248;
                          _os_log_impl(&dword_1DB56E000, v246, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] recovered frame with frameSequenceNumber=%d timestamp=%d", v296, 0x32u);
                        }
                      }

                      v6 = 0;
                      *(v3 + 60) = 4;
LABEL_405:
                      v177 = v274;
                      goto LABEL_424;
                    }

                    v6 = v200;
                  }

                  else
                  {
                    v6 = 4294954514;
                  }
                }

                else
                {
                  v6 = 4294954516;
                }

                if (VRTraceGetErrorLogLevelForModule() < 3)
                {
                  goto LABEL_411;
                }

                v221 = VRTraceErrorLogLevelToCSTR();
                v217 = *MEMORY[0x1E6986650];
                if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_411;
                }

                v296[0] = 136316162;
                *&v296[1] = v221;
                LOWORD(v296[3]) = 2080;
                *(&v296[3] + 2) = "_VideoPacketBuffer_DoFrameBasedDecoding";
                HIWORD(v296[5]) = 1024;
                v296[6] = 1437;
                LOWORD(v296[7]) = 2048;
                *(&v296[7] + 2) = v274;
                HIWORD(v296[9]) = 1024;
                v296[10] = v6;
                v218 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Failed to perform FEC decoding result=%d";
                v220 = v296;
LABEL_355:
                _os_log_error_impl(&dword_1DB56E000, v217, OS_LOG_TYPE_ERROR, v218, v220, 0x2Cu);
                goto LABEL_411;
              }

              v6 = v197;
            }

            else
            {
              v6 = 4294954514;
            }
          }

          else
          {
            v6 = 4294954516;
            v3 = v276;
          }

          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_411;
          }

          v219 = VRTraceErrorLogLevelToCSTR();
          v217 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_411;
          }

          *buf = 136316162;
          *&buf[4] = v219;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoPacketBuffer_DoFrameBasedDecoding";
          *&buf[22] = 1024;
          *&buf[24] = 1433;
          *&buf[28] = 2048;
          *&buf[30] = v274;
          *&buf[38] = 1024;
          *&buf[40] = v6;
          v218 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Failed to set frame sequence number result=%d";
LABEL_354:
          v220 = buf;
          goto LABEL_355;
        }

        RecoverOneFrame_cold_7(v3, v274, buf);
      }

      v6 = *buf;
      goto LABEL_424;
    }

    *(v3 + 60) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v259 = VRTraceErrorLogLevelToCSTR();
      v260 = *MEMORY[0x1E6986650];
      v261 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
        {
          v262 = *(v276 + 150);
          *buf = 136316162;
          *&buf[4] = v259;
          *&buf[12] = 2080;
          *&buf[14] = "_VideoPacketBuffer_DoFrameBasedDecoding";
          *&buf[22] = 1024;
          *&buf[24] = 1422;
          *&buf[28] = 2048;
          v177 = v274;
          *&buf[30] = v274;
          *&buf[38] = 1024;
          *&buf[40] = v262;
          _os_log_impl(&dword_1DB56E000, v260, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Skipping FEC decoding request as this is a single packet with frame sequence number=%hu", buf, 0x2Cu);
LABEL_438:
          v6 = 0;
          goto LABEL_424;
        }
      }

      else if (os_log_type_enabled(v261, OS_LOG_TYPE_DEBUG))
      {
        v265 = *(v276 + 150);
        *buf = 136316162;
        *&buf[4] = v259;
        *&buf[12] = 2080;
        *&buf[14] = "_VideoPacketBuffer_DoFrameBasedDecoding";
        *&buf[22] = 1024;
        *&buf[24] = 1422;
        *&buf[28] = 2048;
        v177 = v274;
        *&buf[30] = v274;
        *&buf[38] = 1024;
        *&buf[40] = v265;
        _os_log_debug_impl(&dword_1DB56E000, v260, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Skipping FEC decoding request as this is a single packet with frame sequence number=%hu", buf, 0x2Cu);
        goto LABEL_438;
      }
    }

    v6 = 0;
    goto LABEL_405;
  }

  v168 = 0;
  v169 = 0;
  while (1)
  {
    if (!*(v167 + 24))
    {
      v172 = 0;
      goto LABEL_289;
    }

    v170 = *(v167 + 32);
    if (!(v170 >> 30))
    {
      v171 = 23;
      goto LABEL_288;
    }

    if ((v170 & 0xC0000000) == 0x40000000)
    {
      v171 = 22;
LABEL_288:
      v172 = 0;
      v173 = 0;
      if (((v170 >> v171) & 1) == 0)
      {
        goto LABEL_295;
      }

      goto LABEL_289;
    }

    if ((v170 & 0xC0000000) != 0x80000000)
    {
      break;
    }

    v172 = HIWORD(v170) & 0x3FF;
    v173 = v172;
    if ((v170 & 0x4000000) != 0)
    {
      goto LABEL_295;
    }

LABEL_289:
    if (v289[v172])
    {
      RecoverOneFrame_cold_2();
      goto LABEL_410;
    }

    v289[v172] = v167;
    *(v167 + 80) = 1;
    ++v169;
LABEL_297:
    *(v167 + 20) = 0;
    v167 = *(v167 + 104);
    if (!v167)
    {
      goto LABEL_304;
    }
  }

  v172 = 0;
  v173 = 0;
  if ((v170 & 0x4000000) == 0)
  {
    goto LABEL_289;
  }

LABEL_295:
  if (!v288[v173])
  {
    v288[v173] = v167;
    *(v167 + 80) = 4;
    v168 = *v167;
    goto LABEL_297;
  }

  RecoverOneFrame_cold_1();
LABEL_410:
  v6 = *buf;
LABEL_411:
  *(v3 + 60) = 3;
  v249 = *(v3 + 104);
  if (*(v3 + 104))
  {
    v250 = 0;
    do
    {
      if (*(v287 + v250))
      {
        v251 = v289[v250];
        VCBlockBuffer_Clear(v251 + 120);
        VCMemoryPool_Free(v278[440], v251);
        v249 = *(v3 + 104);
      }

      ++v250;
    }

    while (v250 < v249);
  }

  v252 = *(v3 + 106);
  if (*(v3 + 106))
  {
    v253 = 0;
    do
    {
      if (*(v286 + v253))
      {
        v254 = v288[v253];
        VCBlockBuffer_Clear(v254 + 120);
        VCMemoryPool_Free(v278[440], v254);
        v252 = *(v3 + 106);
      }

      ++v253;
    }

    while (v253 < v252);
    v249 = *(v3 + 104);
  }

  v177 = v274;
  if (v249)
  {
    VideoPacketBuffer_UpdateMaxGroupBurstLossStatistics(v274 + 800 * (*(v3 + 150) & 0x7F) + 51736, 0, (v252 - *(v3 + 110)) & ~((v252 - *(v3 + 110)) >> 31), 0, v249, 0);
  }

LABEL_424:
  v255 = v278[449];
  if (v255)
  {
    v256 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v256)
    {
      v256(v255);
      return v6;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v257 = VRTraceErrorLogLevelToCSTR();
    v258 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v296[0] = 136316162;
      *&v296[1] = v257;
      LOWORD(v296[3]) = 2080;
      *(&v296[3] + 2) = "_VideoPacketBuffer_DoFrameBasedDecoding";
      HIWORD(v296[5]) = 1024;
      v296[6] = 1458;
      LOWORD(v296[7]) = 2048;
      *(&v296[7] + 2) = v177;
      HIWORD(v296[9]) = 1024;
      v296[10] = v6;
      v10 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Failed to flush packets in FEC consumer result=%d";
      v11 = v296;
      v12 = v258;
      goto LABEL_430;
    }
  }

  return v6;
}

uint64_t _VideoPacketBuffer_SchedulePastIncompleteFrame_InternalLoop(uint64_t a1, _DWORD *a2, int a3, int a4, int a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a1 + 151552;
  v6 = *(a1 + 154952);
  if (v6)
  {
    v12 = (a1 + 154952);
    do
    {
      v13 = v6;
      while (1)
      {
        if (*(v13 + 149) == 1)
        {
          v14 = (v13 + 150);
          v15 = 474;
        }

        else
        {
          v14 = *(v13 + 96);
          v15 = 470;
        }

        if ((*v14 - *(a1 + v15)) < 0x7FFFu)
        {
          break;
        }

        *v12 = *(v13 + 112);
        *(v13 + 157) = _VideoPacketBuffer_IsFrameComplete(v13, 0);
        _VideoPacketBuffer_FreeFrame(a1, v13);
        --*(v5 + 3508);
        v13 = *v12;
        if (!*v12)
        {
          return 0;
        }
      }

      if ((*(v13 + 4) & 1) == 0 && **(v13 + 96) != (*(a1 + 470) + 1))
      {
        break;
      }

      if (!*(v13 + 48) && _VideoPacketBuffer_ScheduleSingleFrame(a1, v13, a2, a3, a4, a5))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 10072);
            v20 = *(v13 + 150);
            v21 = *(v13 + 152);
            v22 = 136316930;
            v23 = v17;
            v24 = 2080;
            v25 = "_VideoPacketBuffer_SchedulePastIncompleteFrame_InternalLoop";
            v26 = 1024;
            v27 = 2456;
            v28 = 2048;
            v29 = a1;
            v30 = 1024;
            v31 = v19;
            v32 = 1024;
            v33 = a3;
            v34 = 1024;
            v35 = v20;
            v36 = 1024;
            v37 = v21;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Late frame scheduled lateFramesScheduledCount=%d playoutRTPTimestamp=%u frameSequenceNumber=%u previousFrameSequenceNumber=%u", &v22, 0x3Eu);
          }
        }

        ++*(a1 + 10072);
        kdebug_trace();
        *(a1 + 468) = *(a1 + 470);
        return 1;
      }

      v6 = *(v13 + 112);
      v12 = (v13 + 112);
    }

    while (v6);
  }

  return 0;
}

uint64_t VideoPacketBuffer_SchedulePastIncompleteFrame(uint64_t a1, int a2, _DWORD *a3, unsigned int a4, int a5, int a6)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1 || !a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v30 = 136316162;
        v31 = v23;
        v32 = 2080;
        v33 = "VideoPacketBuffer_SchedulePastIncompleteFrame";
        v34 = 1024;
        v35 = 2469;
        v36 = 2048;
        v37 = a1;
        v38 = 2048;
        *v39 = a3;
        _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] pointer is null scheduledFrameTimestamps=%p", &v30, 0x30u);
      }
    }

    return 0;
  }

  pthread_mutex_lock((a1 + 400));
  v12 = (a1 + 154952);
  v13 = *(a1 + 154952);
  if (v13)
  {
    if (*(a1 + 154960))
    {
      v14 = *(a1 + 488);
      v15 = v14 - *(v13 + 24);
      LODWORD(v14) = *(v13 + 16);
      v16 = (a4 - *&v14) / *(a1 + 8);
      if (v15 >= 0.5 || v16 >= 0.5)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(*(a1 + 154952) + 150);
            v20 = *(*(a1 + 154960) + 150);
            v30 = 136317442;
            v31 = v17;
            v32 = 2080;
            v33 = "_VideoPacketBuffer_CheckAndClearExpiredIncompleteFrames";
            v34 = 1024;
            v35 = 2395;
            v36 = 2048;
            v37 = a1;
            v38 = 1024;
            *v39 = a2;
            *&v39[4] = 1024;
            *&v39[6] = a4;
            v40 = 1024;
            v41 = v19;
            v42 = 1024;
            v43 = v20;
            v44 = 2048;
            v45 = v15;
            v46 = 2048;
            v47 = v16;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Flushing incomplete frame buffer timestamp=%u playoutRTPTimestamp=%u frameSequenceNumberAtHead=%hu frameSequenceNumberAtTail=%hu diffTime=%5.5f diffTimePlayout=%5.5f", &v30, 0x52u);
          }
        }

        if (*(a1 + 364) == 1)
        {
          for (i = *v12; *v12; i = *v12)
          {
            v22 = *(a1 + 488) - *(i + 24);
            if (v22 < 0.5)
            {
              LODWORD(v22) = *(i + 16);
              if ((a4 - *&v22) / *(a1 + 8) < 0.5)
              {
                break;
              }
            }

            _VideoPacketBuffer_FreeFrameFromBuffer(a1, (a1 + 154952), i, (a1 + 155060));
          }
        }

        else
        {
          *(a1 + 154969) = 1;
          _VideoPacketBuffer_ClearFrameList(a1, (a1 + 154952));
          *(a1 + 154960) = 0;
          *(a1 + 155060) = 0;
        }
      }
    }
  }

  if (!*(a1 + 155020) || !*v12)
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
          v30 = 136315906;
          v31 = v26;
          v32 = 2080;
          v33 = "VideoPacketBuffer_SchedulePastIncompleteFrame";
          v34 = 1024;
          v35 = 2477;
          v36 = 2048;
          v37 = a1;
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] schedule pointer is null", &v30, 0x26u);
        }
      }

      else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        VideoPacketBuffer_SchedulePastIncompleteFrame_cold_1();
      }
    }

    pthread_mutex_unlock((a1 + 400));
    return 0;
  }

  v25 = _VideoPacketBuffer_SchedulePastIncompleteFrame_InternalLoop(a1, a3, a4, a5, a6);
  pthread_mutex_unlock((a1 + 400));
  return v25;
}

BOOL VideoPacketBuffer_GetFrameDecodingOrder(uint64_t a1, _BYTE *a2, _WORD *a3, _DWORD *a4)
{
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VideoPacketBuffer_GetFrameDecodingOrder_cold_2();
    }

    return 0;
  }

  if ((*(a1 + 240) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      VideoPacketBuffer_GetFrameDecodingOrder_cold_1();
    }

    return 0;
  }

  *a2 = 0;
  *a3 = 0;
  pthread_mutex_lock((a1 + 400));
  v8 = *(a1 + 154944);
  if (v8)
  {
    while (*(v8 + 48))
    {
      v8 = *(v8 + 112);
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    *a2 = *(v8 + 148);
    *a3 = *(v8 + 146);
    *a4 = *(v8 + 16);
  }

LABEL_15:
  pthread_mutex_unlock((a1 + 400));
  return 1;
}

uint64_t _VideoPacketBuffer_GetStreamIDsForFrameInBuffer(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, void *a5)
{
  pthread_mutex_lock((a1 + 400));
  if (a2)
  {
    while (*(a2 + 16) != a3)
    {
      a2 = *(a2 + 112);
      if (!a2)
      {
        goto LABEL_4;
      }
    }

    *a4 = *(a2 + 121);
    *a5 = a2 + 122;
    v10 = 1;
  }

  else
  {
LABEL_4:
    v10 = 0;
  }

  pthread_mutex_unlock((a1 + 400));
  return v10;
}

uint64_t VideoPacketBuffer_GetFrameStreamIDs(uint64_t a1, int a2, _BYTE *a3, void *a4)
{
  if (a1)
  {
    v8 = a1 + 151552;
    StreamIDsForFrameInBuffer = _VideoPacketBuffer_GetStreamIDsForFrameInBuffer(a1, *(a1 + 154944), a2, a3, a4);
    return StreamIDsForFrameInBuffer | _VideoPacketBuffer_GetStreamIDsForFrameInBuffer(a1, *(v8 + 3400), a2, a3, a4);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VideoPacketBuffer_GetFrameStreamIDs_cold_1();
  }

  return 0;
}

BOOL VideoPacketBuffer_FirstIDRReceived(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 155012) != 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VideoPacketBuffer_FirstIDRReceived_cold_1();
  }

  return 0;
}

uint64_t _VCVideoPacketBuffer_ParseEncodedData(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a1 + 155012;
  if (!MSCReadFrameHeader())
  {
    v8 = *(a1 + 51724);
    *v7 = 0x100000001;
    *(a1 + 51724) = v8 + 1;
    *(a3 + 52) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a3 + 122);
        v12 = *(a3 + 150);
        v13 = *(a3 + 4);
        v14 = *(a3 + 5);
        v23 = 136316930;
        v24 = v9;
        v25 = 2080;
        v26 = "_VCVideoPacketBuffer_ParseEncodedData";
        v27 = 1024;
        v28 = 3081;
        v29 = 2048;
        v30 = a1;
        v31 = 1024;
        v32 = v11;
        v33 = 1024;
        v34 = v12;
        v35 = 1024;
        v36 = v13;
        v37 = 1024;
        v38 = v14;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Received key frame MSC IFrame for streamID=%d, frameSeqNumber=%d, isTemporalScalingStream=%d, isBaseLayerStream=%d", &v23, 0x3Eu);
      }
    }

    *(v7 + 8) = 0;
  }

  if (*(a3 + 4) == 1)
  {
    v15 = *(a3 + 5) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  if (*(v7 + 4) || (v15 & 1) != 0)
  {
    if (*(v7 + 8))
    {
      v16 = 2148990993;
      if (a4)
      {
        *a4 = 5;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(v7 + 8) = 1;
    if (a4)
    {
      *a4 = 3;
    }

    v16 = 2148990993;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a3 + 16);
        v20 = *(a3 + 4);
        v21 = *(a3 + 5);
        v23 = 136316674;
        v24 = v17;
        v25 = 2080;
        v26 = "_VCVideoPacketBuffer_ParseEncodedData";
        v27 = 1024;
        v28 = 3093;
        v29 = 2048;
        v30 = a1;
        v31 = 1024;
        v32 = v19;
        v33 = 1024;
        v34 = v20;
        v35 = 1024;
        v36 = v21;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Received no IFrame yet TS:%08X, isTemporalScaledStream=%d, isBaseLayerStream=%d", &v23, 0x38u);
      }
    }
  }

  return v16;
}

void VideoPacketBuffer_SetFrameSize(uint64_t a1, int a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136316418;
        v10 = v7;
        v11 = 2080;
        v12 = "VideoPacketBuffer_SetFrameSize";
        v13 = 1024;
        v14 = 3329;
        v15 = 2048;
        v16 = a1;
        v17 = 1024;
        v18 = a2;
        v19 = 1024;
        v20 = a3;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] %dx%d", &v9, 0x32u);
      }
    }

    pthread_mutex_lock((a1 + 400));
    *(a1 + 154976) = a2;
    *(a1 + 154980) = a3;
    pthread_mutex_unlock((a1 + 400));
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoPacketBuffer_SetFrameSize_cold_1();
    }
  }
}

uint64_t VideoPacketBuffer_GetNextFrame(uint64_t a1, int a2, int *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _BYTE *a8, void *a9, uint64_t a10)
{
  v103 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VideoPacketBuffer_GetNextFrame_cold_3();
      }
    }

    return 0;
  }

  v17 = a1 + 154944;
  v84 = 0;
  *a5 = 0;
  *a3 = -1;
  pthread_mutex_lock((a1 + 400));
  v18 = *v17;
  if (!*v17)
  {
    v18 = *(v17 + 8);
    if (!v18)
    {
      pthread_mutex_unlock((a1 + 400));
      return 0;
    }
  }

  v80 = *v17 != 0;
  v82 = *(v18 + 150);
  v83 = *(v18 + 104);
  v19 = micro();
  if (*(v18 + 4) == 1)
  {
    v20 = *(v18 + 5) ^ 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v17 + 68);
  if (v21 || (*(v18 + 12) == 0) | v20 & 1)
  {
    v22 = *(v18 + 16) - a2;
    if (v22 >= 1)
    {
      v23 = *(v17 + 8);
      if (!v23 || (v22 = *(v23 + 16) - a2, v22 > 0))
      {
        v24 = 0;
        goto LABEL_107;
      }

      if (*(a1 + 364) == 1)
      {
        while (1)
        {
          v26 = *(v23 + 16);
          if ((v26 - a2) <= 0x7FFFFFFE)
          {
            break;
          }

          v23 = *(v23 + 112);
          if (!v23)
          {
            goto LABEL_22;
          }
        }

        if (v26 != a2)
        {
LABEL_22:
          VideoPacketBuffer_GetNextFrame_cold_1(buf, a1, a2);
        }
      }

      v80 = 0;
      v18 = v23;
    }

    v79 = a4;
    if (!v21 && (*(v18 + 55) & 1) == 0 && *(v18 + 12))
    {
      v25 = 0;
      goto LABEL_29;
    }

    v29 = _VCVideoPacketBuffer_AssembleFrame(a1, v18, &v84);
    *(a1 + 476) = v29;
    v25 = v84;
    if (!v29 || !v84)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v73 = VRTraceErrorLogLevelToCSTR();
        v74 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v75 = *(v18 + 16);
          v76 = **(v18 + 96);
          v77 = *(v18 + 150);
          v78 = *(v18 + 149);
          *buf = 136317186;
          v86 = v73;
          v87 = 2080;
          v88 = "VideoPacketBuffer_GetNextFrame";
          v89 = 1024;
          v90 = 3467;
          v91 = 2048;
          v92 = a1;
          v93 = 1024;
          v94 = v75;
          v95 = 1024;
          v96 = a2;
          v97 = 1024;
          v98 = v76;
          v99 = 1024;
          v100 = v77;
          v101 = 1024;
          v102 = v78;
          _os_log_impl(&dword_1DB56E000, v74, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Frame assembly failed frameTS:%u for timestamp:%u seq=%u frameSequenceNumber=%u isFrameSequenceNumberValid=%d", buf, 0x44u);
        }
      }

      goto LABEL_30;
    }

    *(v84 + 8) = *v18;
    *(v25 + 16) = *(v18 + 16);
    *(v25 + 22) = *(v18 + 120);
    *(v25 + 40) = *(v18 + 8);
    *(v25 + 12) = *(v17 + 72);
    *(v25 + 24) = *(v18 + 146);
    *(v25 + 26) = *(v18 + 148);
    *(v25 + 47) = *(v18 + 149);
    *(v25 + 82) = *(v18 + 56);
    *(v25 + 48) = *(v18 + 150);
    *(v25 + 46) = *(v18 + 54);
    *(v25 + 56) = *(v18 + 24);
    if (*(v18 + 52))
    {
      *(v25 + 23) = 1;
    }

    else
    {
      v30 = *(v18 + 53);
      *(v25 + 23) = v30;
      if ((v30 & 1) == 0)
      {
LABEL_40:
        if (*(v18 + 4) == 1)
        {
          v31 = *(v18 + 5) ^ 1;
        }

        else
        {
          v31 = 0;
        }

        *(v25 + 80) = v31 & 1;
        *(v25 + 81) = *(v18 + 40) != 0;
        VCBlockBuffer_Copy(v18 + 72, v25 + 208);
        *a9 = v25;
        if ((*(v18 + 32) & 1) != 0 && !*(v17 + 76))
        {
          if (a6)
          {
            *a6 = 1;
          }

          if (a7)
          {
            if (*(a1 + 240) == 1)
            {
              v32 = *(v18 + 146);
            }

            else
            {
              v32 = *(v18 + 16);
            }

            *a7 = v32;
          }
        }

        if (a8)
        {
          *a8 = *(v18 + 36);
        }

        if (v22)
        {
          v24 = 2;
        }

        else
        {
          v24 = 1;
        }

        if (*(v17 + 72) == 2)
        {
          *(v17 + 72) = 1;
        }

        goto LABEL_62;
      }
    }

    *(v25 + 68) = *(v17 + 36) * *(v17 + 32);
    goto LABEL_40;
  }

  v79 = a4;
  v25 = 0;
  *(v17 + 76) = 1;
LABEL_29:
  *(v17 + 84) = 13;
LABEL_30:
  v24 = 0;
  if (a10 && !v25)
  {
    v27 = *(a1 + 240);
    *a10 = *v18;
    *(a10 + 8) = *(v18 + 16);
    *(a10 + 14) = *(v18 + 120);
    *(a10 + 39) = *(v18 + 149);
    *(a10 + 40) = *(v18 + 150);
    v28 = *(v18 + 4) == 1 ? *(v18 + 5) ^ 1 : 0;
    *(a10 + 72) = v28 & 1;
    *(a10 + 48) = *(v18 + 24);
    *(a10 + 75) = *(v18 + 157);
    v24 = 0;
    v25 = 0;
    if (v27)
    {
      *(a10 + 16) = *(v18 + 146);
      *(a10 + 18) = *(v18 + 148);
    }
  }

LABEL_62:
  v33 = *(v18 + 60);
  if (v33)
  {
    v34 = *(v18 + 64);
    v35 = *(v18 + 68);
    v36 = a1 + 32 * FECUtil_FindFrameSizeForStatsRecording(*(v18 + 104));
    *(v36 + 5872) += *(v18 + 108) - *(v18 + 104) + *(v18 + 110);
    v37 = vdupq_n_s64(1uLL);
    v37.i64[0] = *(v18 + 106);
    *(v36 + 5848) = vaddq_s64(*(v36 + 5848), v37);
    v38 = FECUtil_ConvertToWholePercentage(v35);
    v39 = a1 + 1000;
    v40 = (a1 + 520 + 48 * v34);
    switch(v33)
    {
      case 3:
        ++v40[7];
        ++*(v39 + 48 * v38 + 28);
        break;
      case 2:
        ++v40[6];
        ++*(v39 + 48 * v38 + 24);
        break;
      case 1:
        ++v40[5];
        ++*(v39 + 48 * v38 + 20);
        break;
      default:
        ++v40[8];
        ++*(v39 + 48 * v38 + 32);
        break;
    }
  }

  else
  {
    VideoPacketBuffer_GetNextFrame_cold_2();
  }

  v41 = *(v18 + 55);
  if (v41 != 1 || !*(v17 + 76))
  {
    *(a1 + 464) = *(v18 + 16);
  }

  *(a1 + 480) = v19;
  if (*(v17 + 24) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      v44 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(v18 + 16);
          v46 = *(v18 + 150);
          *buf = 136316418;
          v86 = v42;
          v87 = 2080;
          v88 = "VideoPacketBuffer_GetNextFrame";
          v89 = 1024;
          v90 = 3536;
          v91 = 2048;
          v92 = a1;
          v93 = 1024;
          v94 = v45;
          v95 = 1024;
          v96 = v46;
          _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Assembled incomplete frame with timestamp=%u, frameSequenceNumber=%d. Merging buffers!", buf, 0x32u);
        }
      }

      else if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v62 = *(v18 + 16);
        v63 = *(v18 + 150);
        *buf = 136316418;
        v86 = v42;
        v87 = 2080;
        v88 = "VideoPacketBuffer_GetNextFrame";
        v89 = 1024;
        v90 = 3536;
        v91 = 2048;
        v92 = a1;
        v93 = 1024;
        v94 = v62;
        v95 = 1024;
        v96 = v63;
        _os_log_debug_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Assembled incomplete frame with timestamp=%u, frameSequenceNumber=%d. Merging buffers!", buf, 0x32u);
      }
    }

    if ((*(v18 + 52) & 1) != 0 || *(v18 + 53) == 1)
    {
      ++*(a1 + 51728);
    }

    else
    {
      ++*(a1 + 51732);
    }

    if (*(a1 + 364) == 1)
    {
      v49 = (v17 + 8);
      v48 = *(v17 + 8);
      v50 = v48 == 0;
      if (v48 && v48 != v18)
      {
        do
        {
          _VideoPacketBuffer_FreeFrameFromBuffer(a1, (v17 + 8), v48, (a1 + 155060));
          v48 = *v49;
          v50 = *v49 == 0;
          if (*v49)
          {
            v51 = v48 == v18;
          }

          else
          {
            v51 = 1;
          }
        }

        while (!v51);
      }

      if (!v50)
      {
        do
        {
          *(v48 + 44) = 0;
          *(v48 + 48) = 0;
          v48 = *(v48 + 112);
        }

        while (v48);
      }
    }

    _VideoPacketBuffer_FreeFrameFromBuffer(a1, (v17 + 8), v18, (v17 + 116));
    v52 = *(v17 + 8);
    if (v52)
    {
      do
      {
        v53 = *(v52 + 112);
        _VideoPacketBuffer_AddFrameToBufferInOrder(v17, v52);
        v52 = v53;
      }

      while (v53);
    }

    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v17 + 112) = (*(v17 + 116) + *(v17 + 112) - 1);
    *(v17 + 24) = 0;
  }

  else
  {
    if (*(a1 + 241) == 1 && !v25 && *(v17 + 76) && (*(a1 + 476) & 1) == 0 && (*(v17 + 25) & 1) == 0)
    {
      a4 = v79;
      if ((v41 & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v64 = VRTraceErrorLogLevelToCSTR();
          v65 = *MEMORY[0x1E6986650];
          v66 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v67 = *(v18 + 150);
              *buf = 136316162;
              v86 = v64;
              v87 = 2080;
              v88 = "_VideoPacketBuffer_MoveEvictedFrameToIncompleteFrameBuffer";
              v89 = 1024;
              v90 = 3341;
              v91 = 2048;
              v92 = a1;
              v93 = 1024;
              v94 = v67;
              _os_log_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Moving Evicted frame with frameSequenceNumber=%u to incomplete buffer", buf, 0x2Cu);
            }
          }

          else if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            v68 = *(v18 + 150);
            *buf = 136316162;
            v86 = v64;
            v87 = 2080;
            v88 = "_VideoPacketBuffer_MoveEvictedFrameToIncompleteFrameBuffer";
            v89 = 1024;
            v90 = 3341;
            v91 = 2048;
            v92 = a1;
            v93 = 1024;
            v94 = v68;
            _os_log_debug_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Moving Evicted frame with frameSequenceNumber=%u to incomplete buffer", buf, 0x2Cu);
          }
        }

        v69 = *v17;
        if (*v17 == v18)
        {
          v69 = *(v18 + 112);
          *v17 = v69;
        }

        while (v69)
        {
          v70 = v69;
          v69 = *(v69 + 112);
          if (v69 == v18)
          {
            *(v70 + 112) = *(v69 + 112);
            break;
          }
        }

        _VideoPacketBuffer_AddFrameToBufferInOrder((v17 + 8), v18);
        *(v17 + 112) = vadd_s32(*(v17 + 112), 0x1FFFFFFFFLL);
        v71 = *(v17 + 8);
        do
        {
          v72 = v71;
          if (!v71)
          {
            break;
          }

          v71 = *(v71 + 112);
        }

        while (v71);
        *(v17 + 16) = v72;
        *(v18 + 55) = 1;
        kdebug_trace();
      }

      if (v80 || (*(a1 + 364) & 1) == 0)
      {
        *(v18 + 44) = 0;
        *(v18 + 48) = 0;
      }

      goto LABEL_107;
    }

    if (v80)
    {
      v47 = *v17;
      a4 = v79;
      if (*v17)
      {
        v47 = *(v47 + 112);
      }

      *v17 = v47;
      _VideoPacketBuffer_FreeFrame(a1, v18);
      --*(v17 + 112);
      goto LABEL_107;
    }
  }

  a4 = v79;
LABEL_107:
  VideoPacketBuffer_UpdateMaxFrameBurstLossStatistics(a1, v82 & 0x7F, &v83, *(v18 + 150), *(v18 + 16), *(v18 + 44) != 0, *v18, *(v18 + 24));
  v54 = (a1 + 51736 + 800 * (v82 & 0x7F));
  v55 = v54[9];
  v56 = (a1 + 800 * (v82 & 0x7F) + 51772);
  v57 = 128;
  do
  {
    v58 = *(v56 - 1);
    if (v58 != 8 && v58 >= v55)
    {
      v54[6] = *(v56 - 2);
      v54[9] = v58;
      v54[10] = *v56;
      v55 = v58;
    }

    v56 += 3;
    --v57;
  }

  while (v57);
  memcpy((a1 + 154168), (a1 + 51736 + 800 * (v82 & 0x7F) + 32), 0x300uLL);
  _VideoPacketBuffer_ProcessFrameStats(a1, v19);
  if (*(v17 + 76))
  {
    ++*(a1 + 504);
    *a5 = 1;
    if (v19 - *(v17 + 40) > 0.25)
    {
      if (*(v17 + 68) && *(v17 + 72))
      {
        v60 = 2;
      }

      else
      {
        v60 = 0;
      }

      *a3 = v60;
      *a4 = *(v17 + 84);
      *(v17 + 40) = v19;
    }
  }

  else
  {
    *(v17 + 40) = 0;
  }

  pthread_mutex_unlock((a1 + 400));
  return v24;
}

uint64_t _VCVideoPacketBuffer_AssembleFrame(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v357 = *MEMORY[0x1E69E9840];
  v5 = a1 + 154936;
  theBuffer = 0;
  blockBufferOut = 0;
  v308 = 0;
  v309 = 0;
  v310 = 0;
  v306 = 0;
  v307 = 0;
  v303 = a1 + 154936;
  if (CMBlockBufferCreateEmpty(*(a1 + 155096), 0x1F4u, 0, &blockBufferOut))
  {
    v32 = 0;
    LODWORD(v305) = 0;
    HIDWORD(v292) = 0;
    LODWORD(v307) = 7;
    goto LABEL_390;
  }

  v7 = *(a2 + 96);
  if (v7)
  {
    v8 = 0;
    v9 = *(a2 + 96);
    while (1)
    {
      if (!*(v9 + 24))
      {
        goto LABEL_7;
      }

      v10 = *(v9 + 32);
      if (v10 >> 30)
      {
        break;
      }

      if ((v10 & 0x800000) != 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      v9 = *(v9 + 104);
      if (!v9)
      {
        v11 = 0;
        while (1)
        {
          if (*(v7 + 24))
          {
            v12 = *(v7 + 32);
            if (v12 >> 30)
            {
              if (v12 >> 30 == 1)
              {
                if ((v12 & 0x400000) != 0)
                {
                  goto LABEL_19;
                }
              }

              else if ((v12 & 0x4000000) == 0)
              {
                goto LABEL_19;
              }

LABEL_18:
              ++v11;
              goto LABEL_19;
            }

            if ((v12 & 0x800000) == 0)
            {
              goto LABEL_18;
            }
          }

LABEL_19:
          v7 = *(v7 + 104);
          if (!v7)
          {
            goto LABEL_27;
          }
        }
      }
    }

    if (v10 >> 30 == 1)
    {
      if ((v10 & 0x400000) == 0)
      {
        goto LABEL_8;
      }
    }

    else if ((v10 & 0x4000000) != 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    ++v8;
    goto LABEL_8;
  }

  v8 = 0;
  v11 = 0;
LABEL_27:
  HIDWORD(v291) = v8;
  LODWORD(v292) = *(a2 + 104);
  HIDWORD(v292) = v11;
  v299 = v292 - v8;
  v13 = v292 - v8 - v11;
  if (v292 - v8 > v11 && VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    v16 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a2 + 150);
        *buf = 136317186;
        *&buf[4] = v14;
        *&buf[12] = 2080;
        *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
        *&buf[22] = 1024;
        *&buf[24] = 3137;
        *&buf[28] = 1024;
        *&buf[30] = v17;
        *&buf[34] = 1024;
        *&buf[36] = v292;
        *&buf[40] = 1024;
        *&buf[42] = v299;
        *&buf[46] = 1024;
        *&buf[48] = HIDWORD(v291);
        *&buf[52] = 1024;
        *&buf[54] = HIDWORD(v292);
        *&buf[58] = 1024;
        *&buf[60] = v13;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d This frame has unrecoverable loss, consider checking why the FEC Feedback Analyzer did not provide enough protection frameSequenceNumber=%d videoPacketsExpected=%d missingMediaPacketsCount=%d mediaCount=%d parityCount=%d  extraParityPacketsNeededCount=%d", buf, 0x40u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v208 = *(a2 + 150);
      *buf = 136317186;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
      *&buf[22] = 1024;
      *&buf[24] = 3137;
      *&buf[28] = 1024;
      *&buf[30] = v208;
      *&buf[34] = 1024;
      *&buf[36] = v292;
      *&buf[40] = 1024;
      *&buf[42] = v299;
      *&buf[46] = 1024;
      *&buf[48] = HIDWORD(v291);
      *&buf[52] = 1024;
      *&buf[54] = HIDWORD(v292);
      *&buf[58] = 1024;
      *&buf[60] = v13;
      _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d This frame has unrecoverable loss, consider checking why the FEC Feedback Analyzer did not provide enough protection frameSequenceNumber=%d videoPacketsExpected=%d missingMediaPacketsCount=%d mediaCount=%d parityCount=%d  extraParityPacketsNeededCount=%d", buf, 0x40u);
    }
  }

  if (*(a2 + 40))
  {
    if (v299 >= 1 && *(a2 + 104) != 0)
    {
      if (v299 >= 0x65)
      {
        v19 = 101;
      }

      else
      {
        v19 = v299;
      }

      ++*(v4 + 2 * v19 + 9752);
    }
  }

  v20 = *(a2 + 96);
  if (!v20)
  {
    _VCVideoPacketBuffer_FinalizeGOBLengthAdjustement(&v308);
    LODWORD(v305) = 0;
    goto LABEL_484;
  }

  v21 = 0;
  v305 = 0;
  v300 = 0;
  *&v6 = 136316418;
  v289 = v6;
  v22 = 1;
  v304 = v4;
  while (*(v20 + 6))
  {
    v23 = *(v20 + 8);
    if (v23 >> 30)
    {
      if (v23 >> 30 == 1)
      {
        if ((v23 & 0x400000) != 0)
        {
          break;
        }
      }

      else if ((v23 & 0x4000000) == 0)
      {
        break;
      }
    }

    else if ((v23 & 0x800000) != 0)
    {
      break;
    }

LABEL_110:
    v20 = *(v20 + 13);
    if (!v20)
    {
      _VCVideoPacketBuffer_FinalizeGOBLengthAdjustement(&v308);
      if (v21)
      {
        if (*(a2 + 4) != 1)
        {
          goto LABEL_122;
        }

        *lengthAtOffsetOut = 0;
        if (_VideoPacketBuffer_IsFrameComplete(a2, lengthAtOffsetOut))
        {
          if (*(a2 + 4) == 1 && *(a2 + 5) == 1)
          {
            *(v5 + 192) = *lengthAtOffsetOut;
          }

LABEL_122:
          if (*(v4 + 228) == 1)
          {
            *lengthAtOffsetOut = 0xAAAAAAAAAAAAAAAALL;
            __s2[0] = 0;
            if (CMBlockBufferGetDataPointer(blockBufferOut, v305 - 8, lengthAtOffsetOut, 0, __s2))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  _VCVideoPacketBuffer_AssembleFrame_cold_3();
                }
              }
            }

            else if (*(__s2[0] + 1) == 1357975584)
            {
              v50 = *__s2[0];
              if (CMBlockBufferGetDataPointer(blockBufferOut, 0, lengthAtOffsetOut, 0, __s2))
              {
                v51 = 0;
                LODWORD(v52) = 0;
                v53 = 0;
              }

              else
              {
                v53 = 0;
                do
                {
                  v51 = __s2[0];
                  v52 = bswap32(*__s2[0]);
                  v53 += v52 + 4;
                }

                while (!CMBlockBufferGetDataPointer(blockBufferOut, v53, lengthAtOffsetOut, 0, __s2));
              }

              if (v53 == v305)
              {
                v54 = bswap32(v50);
                v55 = v52 >= v54;
                v56 = v52 - v54;
                if (v56 != 0 && v55)
                {
                  *v51 = v50;
                  *buf = 0xAAAAAAAAAAAAAAAALL;
                  v57 = v305 - v56;
                  if (CMBlockBufferCreateWithBufferReference(*(v5 + 160), blockBufferOut, 0, v305 - v56, 0, buf))
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        _VCVideoPacketBuffer_AssembleFrame_cold_4();
                      }
                    }
                  }

                  else
                  {
                    if (blockBufferOut)
                    {
                      CFRelease(blockBufferOut);
                    }

                    blockBufferOut = *buf;
                    v305 = v57;
                  }
                }
              }

              else if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v58 = VRTraceErrorLogLevelToCSTR();
                v59 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  *buf = v289;
                  *&buf[4] = v58;
                  *&buf[12] = 2080;
                  *&buf[14] = "_VCVideoPacketBuffer_StripFakeLargeFramePadding";
                  *&buf[22] = 1024;
                  *&buf[24] = 275;
                  *&buf[28] = 2048;
                  *&buf[30] = v4;
                  *&buf[38] = 1024;
                  *&buf[40] = v53;
                  *&buf[44] = 1024;
                  *&buf[46] = v305;
                  _os_log_error_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Found corrupted buffer. Offset:%d BufferLen:%d", buf, 0x32u);
                }
              }
            }
          }

          VCVideoReceiverSampleBuffer_Create(*(v5 + 168), &v306);
          if (*a2 == 124 || *a2 == 110)
          {
            v68 = CFRetain(blockBufferOut);
            v306[14] = v68;
            v69 = CMBlockBufferGetDataLength(blockBufferOut);
            v70 = v306;
            v306[15] = v69;
            Contiguous = CMBlockBufferCreateContiguous(*(v5 + 160), blockBufferOut, 0, 0, 0, v69, 0, v70 + 16);
            if (Contiguous)
            {
              v271 = Contiguous;
              if (VRTraceGetErrorLogLevelForModule() < 3)
              {
                goto LABEL_389;
              }

              v272 = VRTraceErrorLogLevelToCSTR();
              v273 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_389;
              }

              *buf = 136316162;
              *&buf[4] = v272;
              *&buf[12] = 2080;
              *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
              *&buf[22] = 1024;
              *&buf[24] = 3198;
              *&buf[28] = 2048;
              *&buf[30] = v4;
              *&buf[38] = 1024;
              *&buf[40] = v271;
              v253 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] failed to create data frame. Status=%d";
              v254 = v273;
              v255 = 44;
              goto LABEL_475;
            }

            if (*(v4 + 365) == 1 && *a2 == 124)
            {
              if ((_VCVideoPacketBuffer_ParseEncodedData(v4, v306, a2, &v307) & 0x80000000) != 0)
              {
                goto LABEL_389;
              }
            }

            else
            {
              _VCVideoPacketBuffer_AssembleFrame_cold_16(v4);
            }

LABEL_166:
            if ((*(v4 + 240) & 1) == 0 && (*(a2 + 4) & 1) == 0 && *(a2 + 149) == 1)
            {
              if (*(v4 + 474))
              {
                v72 = *(a2 + 150) - *(v4 + 474);
                if (v72 >= 2 && (*(a2 + 52) & 1) == 0 && (*(a2 + 53) & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v73 = VRTraceErrorLogLevelToCSTR();
                  v74 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    v266 = *(a2 + 16);
                    v267 = *(a2 + 53);
                    v268 = *(a2 + 52);
                    v269 = *(a2 + 150);
                    v270 = *(v4 + 474);
                    *buf = 136317442;
                    *&buf[4] = v73;
                    *&buf[12] = 2080;
                    *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
                    *&buf[22] = 1024;
                    *&buf[24] = 3225;
                    *&buf[28] = 2048;
                    *&buf[30] = v4;
                    *&buf[38] = 1024;
                    *&buf[40] = v266;
                    *&buf[44] = 1024;
                    *&buf[46] = v267;
                    *&buf[50] = 1024;
                    *&buf[52] = v268;
                    *&buf[56] = 1024;
                    *&buf[58] = v269;
                    *&buf[62] = 1024;
                    *&buf[64] = v270;
                    *&buf[68] = 1024;
                    *&buf[70] = v72;
                    _os_log_error_impl(&dword_1DB56E000, v74, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Assembled after gap in Frame Sequence Number without Refresh Frame timestamp=%u isLTRPFrame=%u isIntraFrame=%u frameSequenceNumber=%u lastAssembledFrameSequenceNumber=%u gapFrameSequenceNumber=%d", buf, 0x4Au);
                  }
                }
              }
            }

            if (((*(a2 + 52) & 1) != 0 || *(a2 + 53) == 1) && *(v5 + 33) == 1)
            {
              *(v5 + 33) = 0;
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v75 = VRTraceErrorLogLevelToCSTR();
                v76 = *MEMORY[0x1E6986650];
                v77 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] == 1)
                {
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                  {
                    v78 = *(a2 + 52);
                    v79 = *(a2 + 53);
                    v80 = *(a2 + 150);
                    *buf = 136316674;
                    *&buf[4] = v75;
                    *&buf[12] = 2080;
                    *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
                    *&buf[22] = 1024;
                    *&buf[24] = 3233;
                    *&buf[28] = 2048;
                    *&buf[30] = v4;
                    *&buf[38] = 1024;
                    *&buf[40] = v78;
                    *&buf[44] = 1024;
                    *&buf[46] = v79;
                    *&buf[50] = 1024;
                    *&buf[52] = v80;
                    _os_log_impl(&dword_1DB56E000, v76, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Refresh frame has arrived and we can resume enqueueing late frames isIntraFrame=%d isLTRPFrame=%d frameSequenceNumber=%u", buf, 0x38u);
                  }
                }

                else if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                {
                  v214 = *(a2 + 52);
                  v215 = *(a2 + 53);
                  v216 = *(a2 + 150);
                  *buf = 136316674;
                  *&buf[4] = v75;
                  *&buf[12] = 2080;
                  *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
                  *&buf[22] = 1024;
                  *&buf[24] = 3233;
                  *&buf[28] = 2048;
                  *&buf[30] = v4;
                  *&buf[38] = 1024;
                  *&buf[40] = v214;
                  *&buf[44] = 1024;
                  *&buf[46] = v215;
                  *&buf[50] = 1024;
                  *&buf[52] = v216;
                  _os_log_debug_impl(&dword_1DB56E000, v76, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Refresh frame has arrived and we can resume enqueueing late frames isIntraFrame=%d isLTRPFrame=%d frameSequenceNumber=%u", buf, 0x38u);
                }
              }
            }

            v32 = 0;
            v86 = 1;
            v87 = 1;
            goto LABEL_409;
          }

          v81 = *(v4 + 256);
          if (!v81)
          {
            if (blockBufferOut)
            {
              v85 = CFRetain(blockBufferOut);
            }

            else
            {
              v85 = 0;
            }

            theBuffer = v85;
            v84 = v305;
LABEL_195:
            v88 = v306;
            __s2[0] = 0xAAAAAAAAAAAAAAAALL;
            __s2[1] = 0xAAAAAAAAAAAAAAAALL;
            *&v89 = 0xAAAAAAAAAAAAAAAALL;
            *(&v89 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v336 = v89;
            v337 = v89;
            v334 = v89;
            v335 = v89;
            v332 = v89;
            v333 = v89;
            v330 = v89;
            v331 = v89;
            v328 = v89;
            v329 = v89;
            *&v326[16] = v89;
            v327 = v89;
            v325 = v89;
            *v326 = v89;
            v323 = v89;
            v324 = v89;
            v321 = v89;
            v322 = v89;
            *&buf[80] = v89;
            v320 = v89;
            *&buf[48] = v89;
            *&buf[64] = v89;
            *&buf[16] = v89;
            *&buf[32] = v89;
            *buf = v89;
            v88[14] = CFRetain(v85);
            v298 = v88;
            v88[15] = CMBlockBufferGetDataLength(v85);
            if (v84 >= 1)
            {
              v91 = 0;
              v296 = 0;
              HIDWORD(v288) = 0;
              dataLength = 0;
              offsetToData = -1;
              *&v90 = 136315906;
              v286 = v90;
              *&v90 = 136317186;
              *&v285[16] = v90;
              *&v90 = 136316162;
              *v285 = v90;
              v297 = 1;
              v301 = v84;
              v302 = v85;
              while (1)
              {
                v317 = 0xAAAAAAAAAAAAAAAALL;
                dataPointerOut = 0;
                totalLengthOut = 0xAAAAAAAAAAAAAAAALL;
                if (CMBlockBufferGetDataPointer(v85, v91, &v317, 0, &dataPointerOut))
                {
                  _VCVideoPacketBuffer_AssembleFrame_cold_6();
                  goto LABEL_381;
                }

                v92 = v317 < 4 || v91 + 4 > v84;
                if (v92)
                {
                  _VCVideoPacketBuffer_AssembleFrame_cold_12(&v307);
                  goto LABEL_381;
                }

                v93 = bswap32(*dataPointerOut);
                v94 = (v93 + 4);
                v95 = v94 + v91;
                if (v93 > 0x7FFFFFFB || v95 <= 3 || v95 > v84)
                {
                  LODWORD(v307) = 2;
                  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
                  if (ErrorLogLevelForModule >= 3)
                  {
                    v212 = VRTraceErrorLogLevelToCSTR();
                    v213 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      *lengthAtOffsetOut = 136316674;
                      *&lengthAtOffsetOut[4] = v212;
                      v340 = 2080;
                      v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                      v342 = 1024;
                      v343 = 2758;
                      v344 = 2048;
                      v345 = v304;
                      v346 = 1024;
                      v347 = v94;
                      v348 = 1024;
                      v349 = v91;
                      v350 = 1024;
                      v351 = v84;
                      _os_log_error_impl(&dword_1DB56E000, v213, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] jump=%d i=%d frameBufferLength=%u", lengthAtOffsetOut, 0x38u);
                    }
                  }

LABEL_381:
                  v143 = -2145976286;
                  v4 = v304;
LABEL_387:
                  if (VRTraceGetErrorLogLevelForModule() < 3 || (v217 = VRTraceErrorLogLevelToCSTR(), v218 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
                  {
LABEL_389:
                    v32 = 0;
                    goto LABEL_390;
                  }

                  if (v307)
                  {
                    v252 = kVCKeyFrameRequestReasonStrings[v307];
                  }

                  else
                  {
                    v252 = "NONE";
                  }

                  *buf = 136317442;
                  *&buf[4] = v217;
                  *&buf[12] = 2080;
                  *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
                  *&buf[22] = 1024;
                  *&buf[24] = 3220;
                  *&buf[28] = 2048;
                  *&buf[30] = v4;
                  *&buf[38] = 1024;
                  *&buf[40] = v143;
                  *&buf[44] = 1024;
                  *&buf[46] = v292;
                  *&buf[50] = 1024;
                  *&buf[52] = HIDWORD(v291);
                  *&buf[56] = 1024;
                  *&buf[58] = HIDWORD(v292);
                  *&buf[62] = 1024;
                  *&buf[64] = v299;
                  *&buf[68] = 2080;
                  *&buf[70] = v252;
                  v253 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Failed to parse reconstructed packet result=%d videoPacketsExpected=%d, mediaCount=%d parityCount=%d missingMediaPacketsCount=%d error.reason=%s";
                  v254 = v218;
                  v255 = 78;
LABEL_475:
                  _os_log_error_impl(&dword_1DB56E000, v254, OS_LOG_TYPE_ERROR, v253, buf, v255);
                  goto LABEL_389;
                }

                cf = 0;
                v98 = v91 + 4;
                if (CMBlockBufferGetDataPointer(v85, v98, &v317, &totalLengthOut, &dataPointerOut))
                {
                  v4 = v304;
                  _VCVideoPacketBuffer_AssembleFrame_cold_7();
                  goto LABEL_348;
                }

                v99 = v317;
                v100 = v94 - 4;
                v101 = v317;
                if (v317 < v94 - 4 && v317 <= 0x18F)
                {
                  if (v93 >= 0x190)
                  {
                    v102 = 400;
                  }

                  else
                  {
                    v102 = v93;
                  }

                  v317 = v102;
                  if (CMBlockBufferAccessDataBytes(v85, v91 + 4, v102, buf, &dataPointerOut))
                  {
                    v4 = v304;
                    _VCVideoPacketBuffer_AssembleFrame_cold_8();
                    v5 = v303;
                    goto LABEL_348;
                  }

                  v101 = v317;
                }

                FrameSliceHeader = ReadFrameSliceHeader(*a2, dataPointerOut, v101, &cf);
                v104 = FrameSliceHeader;
                if (FrameSliceHeader > 2)
                {
                  if ((FrameSliceHeader - 6) < 2)
                  {
                    goto LABEL_259;
                  }

                  v4 = v304;
                  if (FrameSliceHeader == 3)
                  {
                    if (v99 < v100 && VRTraceGetErrorLogLevelForModule() >= 5)
                    {
                      v133 = VRTraceErrorLogLevelToCSTR();
                      v134 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        *lengthAtOffsetOut = v286;
                        *&lengthAtOffsetOut[4] = v133;
                        v340 = 2080;
                        v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                        v342 = 1024;
                        v343 = 2804;
                        v344 = 2048;
                        v345 = v304;
                        _os_log_impl(&dword_1DB56E000, v134, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] SPS is in multiple chuncks, copy needed", lengthAtOffsetOut, 0x26u);
                      }
                    }

                    v85 = v302;
                    v5 = v303;
                    if (CMBlockBufferCreateContiguous(*(v303 + 160), v302, *(v303 + 152), 0, v98, v93, 0, v298 + 20))
                    {
                      _VCVideoPacketBuffer_AssembleFrame_cold_11();
                      goto LABEL_348;
                    }

                    CMBlockBufferGetDataPointer(v298[20], 0, v298 + 21, 0, v298 + 22);
                    v314 = -21846;
                    v313 = -21846;
                    v135 = RetrieveResolutionFromFrameInfoDict(cf, &v314, &v313);
                    if (v135)
                    {
                      v274 = v135;
                      LODWORD(v307) = 3;
                      if (VRTraceGetErrorLogLevelForModule() >= 5)
                      {
                        v275 = VRTraceErrorLogLevelToCSTR();
                        v276 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                        {
                          *lengthAtOffsetOut = *v285;
                          *&lengthAtOffsetOut[4] = v275;
                          v340 = 2080;
                          v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                          v342 = 1024;
                          v343 = 2814;
                          v344 = 2048;
                          v345 = v304;
                          v346 = 1024;
                          v347 = v274;
                          _os_log_impl(&dword_1DB56E000, v276, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] FRAMEHEADER_SPSPPS bad dictHeaderInfo. err=%d", lengthAtOffsetOut, 0x2Cu);
                        }
                      }

                      goto LABEL_348;
                    }

                    v136 = v313;
                    *(v303 + 40) = v314;
                    *(v303 + 44) = v136;
                    *(v303 + 80) = 2;
                    HIDWORD(v288) = *(v304 + 367) == 1 && *(v303 + 84) != 0;
                    *(v303 + 56) = 0;
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v137 = VRTraceErrorLogLevelToCSTR();
                      v138 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        v139 = *(a2 + 16);
                        v140 = *(a2 + 4);
                        v141 = *(a2 + 5);
                        *lengthAtOffsetOut = 136316674;
                        *&lengthAtOffsetOut[4] = v137;
                        v340 = 2080;
                        v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                        v342 = 1024;
                        v343 = 2823;
                        v344 = 2048;
                        v345 = v304;
                        v346 = 1024;
                        v347 = v139;
                        v348 = 1024;
                        v349 = v140;
                        v350 = 1024;
                        v351 = v141;
                        v117 = v138;
                        v118 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] RECEIVED SPS/PPS TS: %08X, isTemporalScaledStream=%d, isBaseLayerStream=%d";
                        v119 = 56;
                        goto LABEL_277;
                      }
                    }
                  }

                  else
                  {
                    if (FrameSliceHeader != 4)
                    {
LABEL_256:
                      if (VRTraceGetErrorLogLevelForModule() < 5)
                      {
LABEL_259:
                        v5 = v303;
                      }

                      else
                      {
                        v131 = VRTraceErrorLogLevelToCSTR();
                        v132 = *MEMORY[0x1E6986650];
                        v5 = v303;
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                        {
                          *lengthAtOffsetOut = *v285;
                          *&lengthAtOffsetOut[4] = v131;
                          v340 = 2080;
                          v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                          v342 = 1024;
                          v343 = 2870;
                          v344 = 2048;
                          v345 = v4;
                          v346 = 1024;
                          v347 = v104;
                          _os_log_impl(&dword_1DB56E000, v132, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Unknown InfoType: %d", lengthAtOffsetOut, 0x2Cu);
                        }
                      }

                      v85 = v302;
                      goto LABEL_261;
                    }

                    if (v99 < v100 && VRTraceGetErrorLogLevelForModule() >= 5)
                    {
                      v120 = VRTraceErrorLogLevelToCSTR();
                      v121 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        *lengthAtOffsetOut = v286;
                        *&lengthAtOffsetOut[4] = v120;
                        v340 = 2080;
                        v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                        v342 = 1024;
                        v343 = 2857;
                        v344 = 2048;
                        v345 = v304;
                        _os_log_impl(&dword_1DB56E000, v121, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] SPS is in multiple chuncks, copy needed", lengthAtOffsetOut, 0x26u);
                      }
                    }

                    v85 = v302;
                    v5 = v303;
                    if (CMBlockBufferCreateContiguous(*(v303 + 160), v302, *(v303 + 152), 0, v98, v93, 0, v298 + 23))
                    {
                      _VCVideoPacketBuffer_AssembleFrame_cold_9();
                      goto LABEL_348;
                    }

                    CMBlockBufferGetDataPointer(v298[23], 0, v298 + 24, 0, v298 + 25);
                  }
                }

                else
                {
                  if (!FrameSliceHeader)
                  {
                    goto LABEL_259;
                  }

                  if (FrameSliceHeader == 1)
                  {
                    v122 = offsetToData;
                    if (offsetToData >= v91)
                    {
                      v122 = v91;
                    }

                    offsetToData = v122;
                    v314 = -21846;
                    v313 = -21846;
                    if (RetrieveMBSliceTypeFromFrameInfoDict(cf, &v314, &v313))
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 5)
                      {
                        v128 = VRTraceErrorLogLevelToCSTR();
                        v129 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                        {
                          *lengthAtOffsetOut = v286;
                          *&lengthAtOffsetOut[4] = v128;
                          v340 = 2080;
                          v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                          v342 = 1024;
                          v343 = 2781;
                          v344 = 2048;
                          v345 = v304;
                          _os_log_impl(&dword_1DB56E000, v129, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] FRAMEHEADER_SLICEINFO bad dictHeaderInfo", lengthAtOffsetOut, 0x26u);
                        }
                      }
                    }

                    v85 = v302;
                    v5 = v303;
                    if (!v91 && v314)
                    {
                      v196 = 14;
                      v4 = v304;
                      goto LABEL_347;
                    }

                    if (v296 >= 8)
                    {
                      v4 = v304;
                      _VCVideoPacketBuffer_AssembleFrame_cold_15(v304, v296, lengthAtOffsetOut, v123, v124, v125, v126, v127, v283, v284, *v285, *&v285[8], *&v285[24], v286, *(&v286 + 1), v287, v288, v289, *(&v289 + 1), v290, v291, v292, dataLength);
                      v196 = *lengthAtOffsetOut;
LABEL_347:
                      LODWORD(v307) = v196;
LABEL_348:
                      v143 = -2145976286;
                      goto LABEL_387;
                    }

                    dataLength += v94;
                    if (v313 == 2)
                    {
                      v130 = v297 & 1;
                    }

                    else
                    {
                      v130 = 0;
                    }

                    v297 = v130;
                    *(__s2 + v296) = v314;
                    v296 = (v296 + 1);
                  }

                  else
                  {
                    v4 = v304;
                    if (FrameSliceHeader != 2)
                    {
                      goto LABEL_256;
                    }

                    if (v99 < v100 && VRTraceGetErrorLogLevelForModule() >= 5)
                    {
                      v105 = VRTraceErrorLogLevelToCSTR();
                      v106 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        *lengthAtOffsetOut = v286;
                        *&lengthAtOffsetOut[4] = v105;
                        v340 = 2080;
                        v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                        v342 = 1024;
                        v343 = 2829;
                        v344 = 2048;
                        v345 = v304;
                        _os_log_impl(&dword_1DB56E000, v106, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] IMGDESC is in multiple chuncks, copy needed", lengthAtOffsetOut, 0x26u);
                      }
                    }

                    v85 = v302;
                    v5 = v303;
                    if (CMBlockBufferCreateContiguous(*(v303 + 160), v302, *(v303 + 152), 0, v98, v93, 0, v298 + 17))
                    {
                      _VCVideoPacketBuffer_AssembleFrame_cold_10();
                      goto LABEL_348;
                    }

                    CMBlockBufferGetDataPointer(v298[17], 0, v298 + 18, 0, v298 + 19);
                    v314 = -21846;
                    v313 = -21846;
                    if (RetrieveResolutionFromFrameInfoDict(cf, &v314, &v313))
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 5)
                      {
                        v107 = VRTraceErrorLogLevelToCSTR();
                        v108 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                        {
                          *lengthAtOffsetOut = v286;
                          *&lengthAtOffsetOut[4] = v107;
                          v340 = 2080;
                          v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                          v342 = 1024;
                          v343 = 2840;
                          v344 = 2048;
                          v345 = v304;
                          _os_log_impl(&dword_1DB56E000, v108, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] FRAMEHEADER_IMGDESC bad dictHeaderInfo", lengthAtOffsetOut, 0x26u);
                        }
                      }
                    }

                    v109 = v313;
                    *(v303 + 40) = v314;
                    *(v303 + 44) = v109;
                    *(v303 + 80) = 1;
                    *(v303 + 56) = 0;
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v110 = VRTraceErrorLogLevelToCSTR();
                      v111 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        v112 = *(v303 + 40);
                        v113 = *(v303 + 44);
                        v114 = *(a2 + 16);
                        v115 = *(a2 + 4);
                        v116 = *(a2 + 5);
                        *lengthAtOffsetOut = *&v285[16];
                        *&lengthAtOffsetOut[4] = v110;
                        v340 = 2080;
                        v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                        v342 = 1024;
                        v343 = 2850;
                        v344 = 2048;
                        v345 = v304;
                        v346 = 1024;
                        v347 = v112;
                        v348 = 1024;
                        v349 = v113;
                        v350 = 1024;
                        v351 = v114;
                        v352 = 1024;
                        *v353 = v115;
                        *&v353[4] = 1024;
                        *&v353[6] = v116;
                        v117 = v111;
                        v118 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] RECEIVED IMGDESC(%dx%d) TS:%08X, isTemporalScaledStream=%d, isBaseLayerStream=%d";
                        v119 = 68;
LABEL_277:
                        _os_log_impl(&dword_1DB56E000, v117, OS_LOG_TYPE_DEFAULT, v118, lengthAtOffsetOut, v119);
                      }
                    }
                  }
                }

LABEL_261:
                v84 = v301;
                if (cf)
                {
                  CFRelease(cf);
                }

                v91 = v95;
                if (v95 >= v301)
                {
                  goto LABEL_279;
                }
              }
            }

            HIDWORD(v288) = 0;
            LODWORD(v296) = 0;
            dataLength = 0;
            offsetToData = -1;
            v297 = 1;
LABEL_279:
            if (*(a2 + 4) == 1)
            {
              v142 = *(a2 + 5) ^ 1;
            }

            else
            {
              v142 = 0;
            }

            v4 = v304;
            if (!*(v5 + 80) && (v142 & 1) == 0)
            {
              *(v5 + 84) = 1;
              LODWORD(v307) = 3;
              v143 = -2145976303;
              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                goto LABEL_387;
              }

              v144 = VRTraceErrorLogLevelToCSTR();
              v145 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_387;
              }

              v146 = *(a2 + 16);
              v147 = *(a2 + 4);
              v148 = *(a2 + 5);
              *lengthAtOffsetOut = 136316674;
              *&lengthAtOffsetOut[4] = v144;
              v340 = 2080;
              v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
              v342 = 1024;
              v343 = 2885;
              v344 = 2048;
              v345 = v304;
              v346 = 1024;
              v347 = v146;
              v348 = 1024;
              v349 = v147;
              v350 = 1024;
              v351 = v148;
              v149 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] RECEIVED NO IMGDESC YET TS:%08X, isTemporalScaledStream=%d, isBaseLayerStream=%d";
              v150 = v145;
              v151 = 56;
              goto LABEL_287;
            }

            v152 = *(v5 + 56);
            if (v152)
            {
              if ((*(v304 + 229) & 1) == 0)
              {
                if (v152 == v296)
                {
                  if (!((memcmp((v304 + 154996), __s2, 2 * v296) == 0) | v142 & 1))
                  {
LABEL_350:
                    *(v5 + 80) = 0;
                    *(v5 + 84) = 1;
                    LODWORD(v307) = 4;
                    *(v5 + 76) = 0;
                    v143 = -2145976303;
                    if (VRTraceGetErrorLogLevelForModule() < 7)
                    {
                      goto LABEL_387;
                    }

                    v197 = VRTraceErrorLogLevelToCSTR();
                    v198 = *MEMORY[0x1E6986650];
                    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_387;
                    }

                    v199 = *(v5 + 56);
                    v200 = *(a2 + 4);
                    v201 = *(a2 + 5);
                    *lengthAtOffsetOut = 136316930;
                    *&lengthAtOffsetOut[4] = v197;
                    v340 = 2080;
                    v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                    v342 = 1024;
                    v343 = 2900;
                    v344 = 2048;
                    v345 = v304;
                    v346 = 1024;
                    v347 = v199;
                    v348 = 1024;
                    v349 = v296;
                    v350 = 1024;
                    v351 = v200;
                    v352 = 1024;
                    *v353 = v201;
                    v149 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] RECEIVED A FRAME WITH NO MATCHING SLICES(%d -> %d), isTemporalScaledStream=%d, isBaseLayerStream=%d";
                    v150 = v198;
                    v151 = 62;
LABEL_287:
                    _os_log_impl(&dword_1DB56E000, v150, OS_LOG_TYPE_DEFAULT, v149, lengthAtOffsetOut, v151);
                    goto LABEL_387;
                  }
                }

                else if ((v142 & 1) == 0)
                {
                  goto LABEL_350;
                }
              }
            }

            else
            {
              *(v5 + 56) = v296;
              memcpy((v304 + 154996), __s2, 2 * v296);
            }

            if ((HIDWORD(v288) | (*(a2 + 32) >> 1)))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v153 = VRTraceErrorLogLevelToCSTR();
                v154 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v155 = **(a2 + 96);
                  v156 = *(a2 + 16);
                  v157 = *(a2 + 32);
                  v158 = *(a2 + 4);
                  v159 = *(a2 + 5);
                  *lengthAtOffsetOut = 136317442;
                  *&lengthAtOffsetOut[4] = v153;
                  v340 = 2080;
                  v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                  v342 = 1024;
                  v343 = 2906;
                  v344 = 2048;
                  v345 = v304;
                  v346 = 1024;
                  v347 = v155;
                  v348 = 1024;
                  v349 = v156;
                  v350 = 1024;
                  v351 = v157;
                  v352 = 1024;
                  *v353 = v296;
                  *&v353[4] = 1024;
                  *&v353[6] = v158;
                  *v354 = 1024;
                  *&v354[2] = v159;
                  _os_log_impl(&dword_1DB56E000, v154, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] RECEIVED REFRESH FRAME seq:%d TS:%08X BITS:%04X SLICES:%d, isTemporalScaledStream=%d, isBaseLayerStream=%d", lengthAtOffsetOut, 0x4Au);
                }
              }

              *(a2 + 53) = 1;
            }

            if (v297)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v160 = VRTraceErrorLogLevelToCSTR();
                v161 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v162 = *(a2 + 16);
                  v163 = *(a2 + 32);
                  v164 = *(a2 + 4);
                  v165 = *(a2 + 5);
                  *lengthAtOffsetOut = 136317186;
                  *&lengthAtOffsetOut[4] = v160;
                  v340 = 2080;
                  v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                  v342 = 1024;
                  v343 = 2912;
                  v344 = 2048;
                  v345 = v304;
                  v346 = 1024;
                  v347 = v162;
                  v348 = 1024;
                  v349 = v163;
                  v350 = 1024;
                  v351 = v296;
                  v352 = 1024;
                  *v353 = v164;
                  *&v353[4] = 1024;
                  *&v353[6] = v165;
                  _os_log_impl(&dword_1DB56E000, v161, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] RECEIVED INTRA FRAME TS:%08X BITS:%04X SLICES:%d, isTemporalScaledStream=%d, isBaseLayerStream=%d", lengthAtOffsetOut, 0x44u);
                }
              }

              *(a2 + 52) = 1;
            }

            if (*(v5 + 84))
            {
              if (*(a2 + 55) != 1)
              {
                if (((*(a2 + 32) & 2 | v297) != 0) | BYTE4(v288) & 1)
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v175 = VRTraceErrorLogLevelToCSTR();
                    v176 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v177 = *(a2 + 122);
                      v178 = *(a2 + 150);
                      v179 = *(a2 + 4);
                      v180 = *(a2 + 5);
                      *lengthAtOffsetOut = 136316930;
                      *&lengthAtOffsetOut[4] = v175;
                      v340 = 2080;
                      v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                      v342 = 1024;
                      v343 = 2951;
                      v344 = 2048;
                      v345 = v304;
                      v346 = 1024;
                      v347 = v177;
                      v348 = 1024;
                      v349 = v178;
                      v350 = 1024;
                      v351 = v179;
                      v352 = 1024;
                      *v353 = v180;
                      _os_log_impl(&dword_1DB56E000, v176, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Received refresh frame for streamID=%d, frameSeqNumber=%d, isTemporalScalingStream=%d, isBaseLayerStream=%d", lengthAtOffsetOut, 0x3Eu);
                    }
                  }

                  _VideoPacketBuffer_ClearFrameList(v304, (v304 + 154952));
                  *(v5 + 24) = 0;
                  *(v5 + 124) = 0;
                  *(v5 + 84) = 0;
                  *(v5 + 88) = 0;
                  *(v5 + 184) = 0;
                  goto LABEL_332;
                }

                v143 = -2145976286;
                v202 = 5;
LABEL_386:
                LODWORD(v307) = v202;
                goto LABEL_387;
              }

              if ((v300 & 1) != 0 && !(((*(a2 + 32) & 2 | v297) != 0) | BYTE4(v288) & 1))
              {
                if (VRTraceGetErrorLogLevelForModule() >= 8)
                {
                  v203 = VRTraceErrorLogLevelToCSTR();
                  v204 = *MEMORY[0x1E6986650];
                  v205 = *MEMORY[0x1E6986650];
                  if (*MEMORY[0x1E6986640] == 1)
                  {
                    if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
                    {
                      v206 = *(a2 + 16);
                      v207 = *(a2 + 150);
                      *lengthAtOffsetOut = v289;
                      *&lengthAtOffsetOut[4] = v203;
                      v340 = 2080;
                      v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                      v342 = 1024;
                      v343 = 2920;
                      v344 = 2048;
                      v345 = v304;
                      v346 = 1024;
                      v347 = v206;
                      v348 = 1024;
                      v349 = v207;
                      _os_log_impl(&dword_1DB56E000, v204, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Late frame was discarded in parse stage timestamp=%u frameSequenceNumber=%u", lengthAtOffsetOut, 0x32u);
                    }
                  }

                  else if (os_log_type_enabled(v205, OS_LOG_TYPE_DEBUG))
                  {
                    v278 = *(a2 + 16);
                    v279 = *(a2 + 150);
                    *lengthAtOffsetOut = v289;
                    *&lengthAtOffsetOut[4] = v203;
                    v340 = 2080;
                    v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                    v342 = 1024;
                    v343 = 2920;
                    v344 = 2048;
                    v345 = v304;
                    v346 = 1024;
                    v347 = v278;
                    v348 = 1024;
                    v349 = v279;
                    _os_log_debug_impl(&dword_1DB56E000, v204, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Late frame was discarded in parse stage timestamp=%u frameSequenceNumber=%u", lengthAtOffsetOut, 0x32u);
                  }
                }
              }

              else
              {
                if (v297 || ((HIDWORD(v288) | ((*(a2 + 32) & 2) >> 1)) & 1) != 0)
                {
                  v166 = 1;
                }

                else
                {
                  if (*(v5 + 88) == 1)
                  {
                    v143 = -2145976286;
                    v202 = 17;
                    goto LABEL_386;
                  }

                  v166 = 0;
                }

                if (*(a2 + 4) != 1 || _VideoReceiver_HandlePrecedingLossOnBaseLayerOfTemporalStream(v304, a2, v166))
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v167 = VRTraceErrorLogLevelToCSTR();
                    v168 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v169 = *(a2 + 16);
                      v170 = *(a2 + 150);
                      v171 = *(a2 + 57);
                      *lengthAtOffsetOut = 136316930;
                      *&lengthAtOffsetOut[4] = v167;
                      v340 = 2080;
                      v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                      v342 = 1024;
                      v343 = 2935;
                      v344 = 2048;
                      v345 = v304;
                      v346 = 1024;
                      v347 = v169;
                      v348 = 1024;
                      v349 = v170;
                      v350 = 1024;
                      v351 = v166;
                      v352 = 1024;
                      *v353 = v171;
                      _os_log_impl(&dword_1DB56E000, v168, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Successfully assembled previously incomplete late frame timestamp=%u frameSequenceNumber=%u isRefreshFrame=%d hasRetransmittedPackets=%d", lengthAtOffsetOut, 0x3Eu);
                    }
                  }

                  if (*(a2 + 57) == 1 && *(v304 + 242) == 1)
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v172 = VRTraceErrorLogLevelToCSTR();
                      v173 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        v174 = *(a2 + 150);
                        *lengthAtOffsetOut = 136316162;
                        *&lengthAtOffsetOut[4] = v172;
                        v340 = 2080;
                        v341 = "_VCVideoPacketBuffer_ParseCompletedPacket";
                        v342 = 1024;
                        v343 = 2939;
                        v344 = 2048;
                        v345 = v304;
                        v346 = 1024;
                        v347 = v174;
                        _os_log_impl(&dword_1DB56E000, v173, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] late frame assembled with retransmitted packets frameSequenceNumber=%d", lengthAtOffsetOut, 0x2Cu);
                      }
                    }

                    ++*(v304 + 10096);
                  }

                  *(v5 + 32) = 1;
                  *(v5 + 84) = 0;
                  *(v5 + 88) = 0;
                  kdebug_trace();
                  goto LABEL_332;
                }
              }
            }

            else if (v300 & 1) == 0 || ((*(a2 + 32) & 2 | v297) != 0) | BYTE4(v288) & 1 || (*(a2 + 4))
            {
LABEL_332:
              v181 = *(a2 + 160);
              if (v181 != 0.0)
              {
                HIDWORD(v182) = 1083129856;
                v183 = (*(a2 + 24) - v181) * 1000.0;
                if (v183 > 0.0)
                {
                  v184 = 0;
                  do
                  {
                    if (v184 == 92)
                    {
                      goto LABEL_338;
                    }

                    LODWORD(v182) = *(&LateFrameDelayHistBucketRanges + v184 + 4);
                    v182 = *&v182;
                    v184 += 4;
                  }

                  while (v183 >= v182);
                  ++*(v304 + v184 + 9952);
LABEL_338:
                  v185 = v183 + *(v304 + 10048);
                  *(v304 + 10048) = v185;
                  if (*(v304 + 10064) > v183)
                  {
                    v183 = *(v304 + 10064);
                  }

                  *(v304 + 10064) = v183;
                  v186 = *(v304 + 10080) + 1;
                  *(v304 + 10080) = v186;
                  *(v304 + 10056) = v185 / v186;
                  v187 = *(v304 + 10076);
                  if (v187)
                  {
                    *(v304 + 10088) = (v186 / v187);
                  }
                }
              }

              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v188 = VRTraceErrorLogLevelToCSTR();
                v189 = *MEMORY[0x1E6986650];
                v190 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] == 1)
                {
                  if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
                  {
                    v191 = *(a2 + 16);
                    v192 = *(v304 + 10076);
                    v193 = *(v304 + 10080);
                    v194 = *(v304 + 10088);
                    v195 = *(v304 + 10056);
                    *lengthAtOffsetOut = 136317186;
                    *&lengthAtOffsetOut[4] = v188;
                    v340 = 2080;
                    v341 = "_VideoPacketBuffer_ConfirmFrameAssembledAndCalculateStats";
                    v342 = 1024;
                    v343 = 1681;
                    v344 = 2048;
                    v345 = v304;
                    v346 = 1024;
                    v347 = v191;
                    v348 = 1024;
                    v349 = v192;
                    v350 = 1024;
                    v351 = v193;
                    v352 = 2048;
                    *v353 = v194;
                    *&v353[8] = 2048;
                    *v354 = v195;
                    _os_log_impl(&dword_1DB56E000, v189, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] FrameTimestamp=%d, evictedFramesTrackedCount=%d, evictedFramesRecoveredCount=%d, percOfEvictedFramesRecovered=%f, averageLatePacketDelayForEvictedFrames=%f,", lengthAtOffsetOut, 0x4Cu);
                  }
                }

                else if (os_log_type_enabled(v190, OS_LOG_TYPE_DEBUG))
                {
                  v259 = *(a2 + 16);
                  v260 = *(v304 + 10076);
                  v261 = *(v304 + 10080);
                  v262 = *(v304 + 10088);
                  v263 = *(v304 + 10056);
                  *lengthAtOffsetOut = 136317186;
                  *&lengthAtOffsetOut[4] = v188;
                  v340 = 2080;
                  v341 = "_VideoPacketBuffer_ConfirmFrameAssembledAndCalculateStats";
                  v342 = 1024;
                  v343 = 1681;
                  v344 = 2048;
                  v345 = v304;
                  v346 = 1024;
                  v347 = v259;
                  v348 = 1024;
                  v349 = v260;
                  v350 = 1024;
                  v351 = v261;
                  v352 = 2048;
                  *v353 = v262;
                  *&v353[8] = 2048;
                  *v354 = v263;
                  _os_log_debug_impl(&dword_1DB56E000, v189, OS_LOG_TYPE_DEBUG, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] FrameTimestamp=%d, evictedFramesTrackedCount=%d, evictedFramesRecoveredCount=%d, percOfEvictedFramesRecovered=%f, averageLatePacketDelayForEvictedFrames=%f,", lengthAtOffsetOut, 0x4Cu);
                }
              }

              *(v304 + 470) = *(v304 + 468);
              if ((*(a2 + 55) & 1) == 0)
              {
                kdebug_trace();
              }

              if (v297 && !*(a2 + 12) || *a2 == 110 || *a2 == 124 || (v288 & 0x100000000) != 0)
              {
                *(v5 + 76) = 1;
                ++*(v304 + 51724);
              }

              if (dataLength)
              {
                *(v298 + 58) = offsetToData;
                CMBlockBufferCreateWithBufferReference(*(v5 + 160), v85, offsetToData, dataLength, 0, v298 + 16);
              }

              goto LABEL_166;
            }

            v143 = -2145976286;
            v202 = 6;
            goto LABEL_386;
          }

          v82 = v81(*(v4 + 248), blockBufferOut, &theBuffer);
          if (v82)
          {
            v280 = v82;
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_389;
            }

            v281 = VRTraceErrorLogLevelToCSTR();
            v282 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_505;
            }

            *buf = 136316162;
            *&buf[4] = v281;
            *&buf[12] = 2080;
            *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
            *&buf[22] = 1024;
            *&buf[24] = 3212;
            *&buf[28] = 2048;
            v4 = v304;
            *&buf[30] = v304;
            *&buf[38] = 1024;
            *&buf[40] = v280;
            _os_log_error_impl(&dword_1DB56E000, v282, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Failed to decrypt the frame with frameDecryptionCallback result=%d", buf, 0x2Cu);
          }

          else
          {
            v83 = CMBlockBufferGetDataLength(theBuffer);
            if (v83)
            {
              v84 = v83;
              v85 = theBuffer;
              goto LABEL_195;
            }

            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_389;
            }

            VRTraceErrorLogLevelToCSTR();
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
LABEL_505:
              v32 = 0;
              v5 = v303;
              v4 = v304;
              goto LABEL_390;
            }

            v4 = v304;
            _VCVideoPacketBuffer_AssembleFrame_cold_5();
          }

          v32 = 0;
          v5 = v303;
          goto LABEL_390;
        }

        BYTE4(v307) = 1;
        LODWORD(v307) = 10;
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_389;
        }

        v277 = VRTraceErrorLogLevelToCSTR();
        v265 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_389;
        }

        *buf = 136316674;
        *&buf[4] = v277;
        *&buf[12] = 2080;
        *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
        *&buf[22] = 1024;
        *&buf[24] = 3178;
        *&buf[28] = 1024;
        *&buf[30] = v292;
        *&buf[34] = 1024;
        *&buf[36] = HIDWORD(v291);
        *&buf[40] = 1024;
        *&buf[42] = HIDWORD(v292);
        *&buf[46] = 1024;
        *&buf[48] = v299;
        v253 = "VideoPacketBuffer [%s] %s:%d Frame assembly failed because of lost packets videoPacketsExpected=%d mediaCount=%d parityCount=%d missingMediaPacketsCount=%d";
LABEL_499:
        v254 = v265;
        v255 = 52;
        goto LABEL_475;
      }

LABEL_484:
      BYTE4(v307) = 1;
      LODWORD(v307) = 12;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_389;
      }

      v264 = VRTraceErrorLogLevelToCSTR();
      v265 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_389;
      }

      *buf = 136316674;
      *&buf[4] = v264;
      *&buf[12] = 2080;
      *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
      *&buf[22] = 1024;
      *&buf[24] = 3172;
      *&buf[28] = 1024;
      *&buf[30] = v292;
      *&buf[34] = 1024;
      *&buf[36] = HIDWORD(v291);
      *&buf[40] = 1024;
      *&buf[42] = HIDWORD(v292);
      *&buf[46] = 1024;
      *&buf[48] = v299;
      v253 = "VideoPacketBuffer [%s] %s:%d Frame assembly failed because of no end of frame videoPacketsExpected=%d mediaCount=%d parityCount=%d missingMediaPacketsCount=%d";
      goto LABEL_499;
    }
  }

  LOBYTE(v317) = 0;
  LOBYTE(totalLengthOut) = 0;
  LOWORD(dataPointerOut) = 0;
  LOBYTE(cf) = 0;
  __s2[0] = 0;
  v24 = *(v20 + 15);
  if (!v24)
  {
    _VCVideoPacketBuffer_AssembleFrame_cold_13(&v307);
LABEL_152:
    if (__s2[0])
    {
      CFRelease(__s2[0]);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCVideoPacketBuffer_AssembleFrame_cold_14();
      }
    }

    goto LABEL_389;
  }

  v25 = *a2 - 100;
  v92 = v25 > 0x18;
  v26 = (1 << v25) & 0x1800401;
  if (v92 || v26 == 0)
  {
    v32 = CFRetain(v24);
    goto LABEL_82;
  }

  if (CMBlockBufferCreateEmpty(*(v5 + 160), 0, 0, __s2))
  {
    _VCVideoPacketBuffer_AssembleFrame_cold_1(&v307);
    goto LABEL_152;
  }

  *buf = &v317;
  *&buf[8] = &totalLengthOut;
  *&buf[16] = &dataPointerOut;
  v28 = *(v5 + 160);
  v29 = *(v5 + 176);
  *&buf[24] = &cf;
  *&buf[32] = v28;
  *&buf[40] = v29;
  *&buf[48] = __s2[0];
  v30 = *a2;
  if (*a2 == 124)
  {
    LOBYTE(v317) = 1;
    LOBYTE(totalLengthOut) = 1;
    if (CMBlockBufferAppendBufferReference(__s2[0], *(v20 + 15), 0, 0, 0))
    {
      goto LABEL_150;
    }

    goto LABEL_69;
  }

  if (v30 == 110)
  {
    v31 = RTPUnpackGenericDataPacket((v20 + 60), buf);
  }

  else if (v30 == 100)
  {
    v31 = RTPProcessHEVCPacket(100, &v317, &totalLengthOut, &dataPointerOut, &cf, *(v4 + 240), v28, v29, (v20 + 60), __s2[0]);
  }

  else
  {
    v31 = RTPProcessH264Packet((v20 + 60), buf);
  }

  if (v31 < 0)
  {
LABEL_150:
    _VCVideoPacketBuffer_AssembleFrame_cold_2();
    goto LABEL_152;
  }

LABEL_69:
  v33 = v317;
  v34 = totalLengthOut;
  *(v20 + 2) = v317;
  *(v20 + 3) = v34;
  if (*(v4 + 240) == 1 && cf == 1)
  {
    v35 = dataPointerOut;
    if (*(a2 + 148) == 1)
    {
      if (*(a2 + 146) != dataPointerOut)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v36 = VRTraceErrorLogLevelToCSTR();
          v37 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v49 = *(a2 + 146);
            *lengthAtOffsetOut = v289;
            *&lengthAtOffsetOut[4] = v36;
            v340 = 2080;
            v341 = "_VideoPacketBuffer_UpdateFrameDecodingOrder";
            v342 = 1024;
            v343 = 1557;
            v344 = 2048;
            v345 = v4;
            v346 = 1024;
            v347 = v49;
            v348 = 1024;
            v349 = v35;
            _os_log_error_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Decoding order is different within a frame. Previous:%d New:%d", lengthAtOffsetOut, 0x32u);
          }
        }

        *(a2 + 146) = v35;
        v33 = v317;
      }
    }

    else
    {
      *(a2 + 146) = dataPointerOut;
      *(a2 + 148) = 1;
    }
  }

  if (*(a2 + 96) == v20 && !v33)
  {
    BYTE4(v307) = 1;
    LODWORD(v307) = 9;
  }

  v32 = __s2[0];
LABEL_82:
  v38 = CMBlockBufferGetDataLength(v32);
  if (*(a2 + 4))
  {
    goto LABEL_97;
  }

  v39 = *v20 + ~*(v4 + 468);
  if (v39 < 1)
  {
    v44 = 0;
    v5 = v303;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v42 = *v20;
        v43 = *(v304 + 468);
        *buf = 136316674;
        *&buf[4] = v40;
        *&buf[12] = 2080;
        *&buf[14] = "_VCVideoPacketBuffer_DetectMissingPackets";
        *&buf[22] = 1024;
        *&buf[24] = 2632;
        *&buf[28] = 2048;
        *&buf[30] = v304;
        *&buf[38] = 1024;
        *&buf[40] = v42;
        *&buf[44] = 1024;
        *&buf[46] = v43;
        *&buf[50] = 1024;
        *&buf[52] = v39;
        _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] PacketSeq:%d LastSeq:%d missingCount:%d", buf, 0x38u);
      }
    }

    v44 = 1;
    if (v22)
    {
      v44 = 0;
      v300 = 1;
    }

    else
    {
      BYTE4(v307) = 1;
      LODWORD(v307) = 10;
    }

    v5 = v303;
    v4 = v304;
  }

  v45 = *v20;
  v46 = v45 - *(v4 + 468);
  if (v46 && v46 <= 0x7FFEu)
  {
    *(v4 + 468) = v45;
  }

  if (!v44)
  {
LABEL_97:
    if (*a2 == 123 || *a2 == 100)
    {
      if (v308 && *(v20 + 2))
      {
        _VCVideoPacketBuffer_FinalizeGOBLengthAdjustement(&v308);
      }

      if (*(v20 + 2) && !*(v20 + 3))
      {
        v308 = CFRetain(v32);
        v309 = 0;
        v310 = v38;
        *buf = 0;
        *lengthAtOffsetOut = 0;
        __s2[0] = 0;
        CMBlockBufferGetDataPointer(v32, 4uLL, lengthAtOffsetOut, __s2, buf);
        if (*lengthAtOffsetOut >= 4uLL && **buf == -1547639150)
        {
          CMBlockBufferGetDataPointer(v32, 0, lengthAtOffsetOut, 0, buf);
          v309 = bswap32(**buf) + 4;
          v310 = v38 - v309;
          if (v38 == v309)
          {
            v309 = 0;
            v310 = v38;
          }
        }
      }

      else if (v308)
      {
        v310 += v38;
      }
    }

    v47 = CMBlockBufferGetDataLength(blockBufferOut);
    appended = CMBlockBufferAppendBufferReference(blockBufferOut, v32, 0, v38, 0);
    if (v47 + v38 == CMBlockBufferGetDataLength(blockBufferOut))
    {
      v4 = v304;
      if (!appended)
      {
        v305 += v38;
        v21 = *(v20 + 4) != 0;
        if (v32)
        {
          CFRelease(v32);
        }

        v22 = 0;
        goto LABEL_110;
      }

      LODWORD(v307) = 11;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_390;
      }

      v64 = VRTraceErrorLogLevelToCSTR();
      v61 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_390;
      }

      v65 = CMBlockBufferGetDataLength(blockBufferOut);
      *buf = 136316162;
      *&buf[4] = v64;
      *&buf[12] = 2080;
      *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
      *&buf[22] = 1024;
      *&buf[24] = 3162;
      *&buf[28] = 2048;
      *&buf[30] = v304;
      *&buf[38] = 2048;
      *&buf[40] = v65;
      v63 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Error appending packets, buffer size %zu";
    }

    else
    {
      LODWORD(v307) = 11;
      v4 = v304;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_390;
      }

      v60 = VRTraceErrorLogLevelToCSTR();
      v61 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_390;
      }

      v62 = CMBlockBufferGetDataLength(blockBufferOut);
      *buf = 136316162;
      *&buf[4] = v60;
      *&buf[12] = 2080;
      *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
      *&buf[22] = 1024;
      *&buf[24] = 3161;
      *&buf[28] = 2048;
      *&buf[30] = v304;
      *&buf[38] = 2048;
      *&buf[40] = v62;
      v63 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Error appending packets, buffer size %zu";
    }

    v66 = v61;
    v67 = 48;
LABEL_373:
    _os_log_error_impl(&dword_1DB56E000, v66, OS_LOG_TYPE_ERROR, v63, buf, v67);
    goto LABEL_390;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v209 = VRTraceErrorLogLevelToCSTR();
    v210 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = v209;
      *&buf[12] = 2080;
      *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
      *&buf[22] = 1024;
      *&buf[24] = 3155;
      *&buf[28] = 2048;
      *&buf[30] = v4;
      *&buf[38] = 1024;
      *&buf[40] = v299;
      *&buf[44] = 1024;
      *&buf[46] = HIDWORD(v291);
      *&buf[50] = 1024;
      *&buf[52] = HIDWORD(v292);
      v63 = "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Error while detecting missing packets missingMediaPacketsCount=%d mediaCount=%d parityCount=%d";
      v66 = v210;
      v67 = 56;
      goto LABEL_373;
    }
  }

LABEL_390:
  if (*(v4 + 242) != 1)
  {
    goto LABEL_408;
  }

  v219 = 0;
  v325 = 0u;
  memset(v326, 0, 28);
  v323 = 0u;
  v324 = 0u;
  v321 = 0u;
  v322 = 0u;
  v320 = 0u;
  memset(buf, 0, sizeof(buf));
  v220 = *(a2 + 96);
  LOWORD(v221) = *v220;
  while (2)
  {
    if (!*(v220 + 6))
    {
      goto LABEL_400;
    }

    v222 = *(v220 + 8);
    if (v222 >> 30)
    {
      if (v222 >> 30 != 1)
      {
        if ((v222 & 0x4000000) != 0)
        {
          goto LABEL_404;
        }

        goto LABEL_400;
      }

      if ((v222 & 0x400000) != 0)
      {
        goto LABEL_400;
      }
    }

    else
    {
      if ((v222 & 0x800000) == 0)
      {
        goto LABEL_404;
      }

LABEL_400:
      v223 = v221 + 1;
      v221 = *v220;
      if (v221 > v223)
      {
        v224 = v223;
        do
        {
          snprintf(buf, 0xDCuLL, "%s (%i)", buf, v224);
          ++v219;
          ++v224;
          v221 = *v220;
        }

        while (v224 < v221);
        v5 = v303;
      }
    }

LABEL_404:
    v220 = *(v220 + 13);
    if (v220)
    {
      continue;
    }

    break;
  }

  if (v219)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v225 = VRTraceErrorLogLevelToCSTR();
      v226 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v256 = *(a2 + 150);
        v257 = *(a2 + 20);
        if (v307)
        {
          v258 = kVCKeyFrameRequestReasonStrings[v307];
        }

        else
        {
          v258 = "NONE";
        }

        *lengthAtOffsetOut = 136317698;
        *&lengthAtOffsetOut[4] = v225;
        v340 = 2080;
        v341 = "_VideoPacketBuffer_PrintMissingSequenceNumbers";
        v342 = 1024;
        v343 = 3064;
        v344 = 2048;
        v345 = v4;
        v346 = 1024;
        v347 = v299;
        v348 = 1024;
        v349 = HIDWORD(v291);
        v350 = 1024;
        v351 = HIDWORD(v292);
        v352 = 1024;
        *v353 = v256;
        *&v353[4] = 1024;
        *&v353[6] = v257;
        *v354 = 2080;
        *&v354[2] = buf;
        v355 = 2080;
        v356 = v258;
        _os_log_error_impl(&dword_1DB56E000, v226, OS_LOG_TYPE_ERROR, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Error in assembly missingMediaPacketsCount=%d mediaCount=%d parityCount=%d frameSequenceNumber=%d ssrc=%u missingPackets=%s reason=%s", lengthAtOffsetOut, 0x58u);
      }
    }
  }

LABEL_408:
  v86 = 0;
  v87 = 0;
  if (a2)
  {
LABEL_409:
    if (*(a2 + 4) == 1 && *a2 != 124)
    {
      if (v86)
      {
        v227 = 1;
      }

      else
      {
        if (*(a2 + 5) != 1 || (*(v5 + 184) & 1) != 0 || (*(v5 + 88) & 1) != 0)
        {
          goto LABEL_421;
        }

        v228 = v306;
        *(v5 + 188) = *(a2 + 150);
        *(v5 + 84) = 1;
        *(v5 + 184) = 1;
        *(v5 + 92) = 6;
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v229 = VRTraceErrorLogLevelToCSTR();
          v230 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v231 = *(a2 + 150);
            v232 = *(a2 + 16);
            v233 = *(v5 + 188);
            *buf = 136316674;
            *&buf[4] = v229;
            *&buf[12] = 2080;
            *&buf[14] = "_VideoPacketBuffer_CheckForMissingBaseLayerAssemblyOfTemporalStream";
            *&buf[22] = 1024;
            *&buf[24] = 3029;
            *&buf[28] = 2048;
            *&buf[30] = v4;
            *&buf[38] = 1024;
            *&buf[40] = v231;
            *&buf[44] = 1024;
            *&buf[46] = v232;
            *&buf[50] = 1024;
            *&buf[52] = v233;
            _os_log_impl(&dword_1DB56E000, v230, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] Assembly of base layer frame of temporal stream failed, refresh frame is needed. frameSequenceNumber=%d timestamp=%u baseLayerFrameAssemblyFailedSequenceNumber=%d", buf, 0x38u);
          }
        }

        if (!v228)
        {
LABEL_421:
          v227 = 0;
        }

        else
        {
          v227 = v228[17] != 0;
        }
      }

      if ((*(a2 + 5) & 1) == 0 && *(v5 + 184) == 1 && (*(a2 + 52) & 1) == 0)
      {
        v227 &= *(a2 + 53);
      }

      v87 = v227 & 1;
    }

    if ((v87 & 1) == 0)
    {
      goto LABEL_428;
    }
  }

  else
  {
LABEL_428:
    if ((*(a2 + 4) & 1) == 0)
    {
      *(v5 + 84) = 1;
      *(v5 + 92) = v307;
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v234 = VRTraceErrorLogLevelToCSTR();
        v235 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v236 = **(a2 + 96);
          if (v307)
          {
            v237 = kVCKeyFrameRequestReasonStrings[v307];
          }

          else
          {
            v237 = "NONE";
          }

          *buf = 136316418;
          *&buf[4] = v234;
          *&buf[12] = 2080;
          *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
          *&buf[22] = 1024;
          *&buf[24] = 3246;
          *&buf[28] = 2048;
          *&buf[30] = v4;
          *&buf[38] = 1024;
          *&buf[40] = v236;
          *&buf[44] = 2080;
          *&buf[46] = v237;
          _os_log_impl(&dword_1DB56E000, v235, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] seq:%d Needs Refresh badFrame reason:%s ", buf, 0x36u);
        }
      }

      if (BYTE4(v307) == 1)
      {
        ++*(v4 + 508);
      }

      if (v306)
      {
        if (v306[17])
        {
          v87 = 1;
        }

        else
        {
          v87 = v87;
        }
      }
    }
  }

  if (!*(a2 + 40))
  {
    ++*(v4 + 516);
    if ((v307 & 0x100000000) != 0)
    {
      ++*(v4 + 544);
      ++*(v4 + 1024);
    }

    else
    {
      ++*(v4 + 512);
      ++*(v4 + 540);
      ++*(v4 + 1020);
    }
  }

  if (v87)
  {
    if (*(a2 + 57))
    {
      if (*(v4 + 242) == 1 && VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v238 = VRTraceErrorLogLevelToCSTR();
        v239 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v240 = *(a2 + 150);
          *buf = 136316162;
          *&buf[4] = v238;
          *&buf[12] = 2080;
          *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
          *&buf[22] = 1024;
          *&buf[24] = 3271;
          *&buf[28] = 2048;
          *&buf[30] = v4;
          *&buf[38] = 1024;
          *&buf[40] = v240;
          _os_log_impl(&dword_1DB56E000, v239, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] frame recovered with retransmitted packets frameSequenceNumber=%d", buf, 0x2Cu);
        }
      }

      ++*(v4 + 10100);
    }

    v241 = *(v4 + 474);
    v242 = *(a2 + 150);
    if (!v241)
    {
      v241 = *(a2 + 150);
    }

    *(v4 + 472) = v241;
    *(v4 + 474) = v242;
    *a3 = v306;
    v306 = 0;
  }

  else
  {
    if (*(a2 + 57))
    {
      if (*(v4 + 242) == 1 && VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v243 = VRTraceErrorLogLevelToCSTR();
        v244 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v245 = *(a2 + 150);
          *buf = 136316162;
          *&buf[4] = v243;
          *&buf[12] = 2080;
          *&buf[14] = "_VCVideoPacketBuffer_AssembleFrame";
          *&buf[22] = 1024;
          *&buf[24] = 3282;
          *&buf[28] = 2048;
          *&buf[30] = v4;
          *&buf[38] = 1024;
          *&buf[40] = v245;
          _os_log_impl(&dword_1DB56E000, v244, OS_LOG_TYPE_DEFAULT, "VideoPacketBuffer [%s] %s:%d VideoPacketBuffer[%p] frame with retransmitted packets failed to assemble frameSequenceNumber=%d", buf, 0x2Cu);
        }
      }

      ++*(v4 + 10104);
    }

    *a3 = 0;
  }

  v246 = *(v5 + 112);
  if (v246)
  {
    *buf = xmmword_1DBD47F18;
    *&buf[16] = unk_1DBD47F28;
    memset(&buf[32], 170, 64);
    *buf = *(a2 + 24);
    HIDWORD(v247) = *&buf[4];
    *&buf[8] = *(a2 + 150);
    LODWORD(v247) = *(a2 + 16);
    *&buf[16] = v247;
    *&buf[24] = v305;
    buf[28] = *(a2 + 52);
    v248 = *(a2 + 122);
    *&v249 = *(v5 + 120);
    *(&v249 + 1) = *(v5 + 40);
    *&buf[36] = v249;
    *&buf[32] = v248;
    *&buf[52] = v292;
    *&buf[56] = v292 - v299;
    *&buf[60] = v299;
    *&buf[64] = HIDWORD(v292);
    *&buf[68] = v299 - HIDWORD(v292);
    v250 = *(a2 + 4);
    *&buf[72] = v299;
    *&buf[76] = v250;
    *&buf[80] = 0;
    *&buf[84] = __PAIR64__(v307, v87);
    LODWORD(v249) = *v5;
    *&v320 = v249;
    VRDump_AssembleFrame(v246, buf);
  }

  _VCVideoPacketBuffer_FinalizeGOBLengthAdjustement(&v308);
  if (v32)
  {
    CFRelease(v32);
  }

  VCVideoReceiverSampleBuffer_Destroy(&v306);
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v87;
}