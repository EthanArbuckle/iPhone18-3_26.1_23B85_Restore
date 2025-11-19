uint64_t VCTimescaleWSOLA_WindowTail(uint64_t *a1, void *a2, _DWORD *a3)
{
  v5 = *a1;
  *(v5 + 4) = 1065353216;
  v6 = ((*(v5 + 12) - *(v5 + 20)) - *(v5 + 12)) - *(v5 + 96);
  v7 = ((-v6 & ~(-v6 >> 31)) + 3) & 0xFFFFFFFC;
  v8 = *(v5 + 116);
  *(v5 + 108) = v7;
  *(v5 + 112) = (v8 - v7) & ~((v8 - v7) >> 31);
  VCTimescaleWSOLAShiftBuffer::removeSamples(*(v5 + 72), v8);
  memcpy(a2, **(v5 + 72), 4 * *(*(v5 + 72) + 12));
  v9 = *(v5 + 72);
  *a3 = *(v9 + 12);
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  VCTimescaleWSOLAShiftBuffer::clear(v9);
  return 0;
}

void *VCTimescaleWSOLA_UpdateHistoryBuffer(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 11584);
  if (**(a2 + 24) >= v3)
  {
    v4 = *(a1 + 11584);
  }

  else
  {
    v4 = **(a2 + 24);
  }

  if (*(a1 + 11587) == 1)
  {
    ioOutputDataSize = 4 * v3;
    result = AudioConverterConvertBuffer(*(a1 + 11592), 2 * v4, *(a2 + 120), &ioOutputDataSize, (a1 + 12));
    v4 = ioOutputDataSize >> 2;
  }

  else
  {
    result = memcpy((a1 + 12), *(a2 + 120), 4 * v4);
  }

  *(a1 + 11532) = v4;
  return result;
}

uint64_t VCTimescaleWSOLA_CheckCompression(uint64_t a1, int a2, int a3, int a4, double a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = micro();
  v11 = v10 - *(a1 + 11552) > 10.0 && v10 - *(a1 + 11560) > 10.0;
  if (!(a4 | a3))
  {
    *(a1 + 8) = 0;
    if (a2)
    {
      *(a1 + 11552) = v10;
    }

    if (a5 < 0.300000012)
    {
      *(a1 + 11560) = v10;
    }

    v13 = *(a1 + 11586);
    v14 = v13 ^ 1;
    v15 = ((v11 | v13 ^ 1) & 1) != 0 || *(a1 + 11616) < a5;
    if (*(a1 + 11536) && v15)
    {
      if (!v11)
      {
        goto LABEL_28;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_28;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v18 = *(a1 + 11552);
      v19 = *(a1 + 11560);
      v24 = 136316418;
      v25 = v16;
      v26 = 2080;
      v27 = "VCTimescaleWSOLA_CheckCompression";
      v28 = 1024;
      v29 = 686;
      v30 = 2048;
      v31 = v18;
      v32 = 2048;
      v33 = a5;
      v34 = 2048;
      v35 = v19;
LABEL_27:
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing WSOLA, time since silence: %f, Adjust = %f, time since low adjust: %f", &v24, 0x3Au);
LABEL_28:
      v12 = 1;
      return v12 & 1;
    }

    if (*(a1 + 11586))
    {
      if (*(a1 + 11608) >= a5)
      {
        LOBYTE(v13) = 0;
        if (v11)
        {
LABEL_23:
          if (a2)
          {
            goto LABEL_28;
          }

          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_28;
          }

          v20 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          v21 = *(a1 + 11552);
          v22 = *(a1 + 11560);
          v24 = 136316418;
          v25 = v20;
          v26 = 2080;
          v27 = "VCTimescaleWSOLA_CheckCompression";
          v28 = 1024;
          v29 = 692;
          v30 = 2048;
          v31 = v21;
          v32 = 2048;
          v33 = a5;
          v34 = 2048;
          v35 = v22;
          goto LABEL_27;
        }

LABEL_30:
        v12 = v14 | v13;
        return v12 & 1;
      }

      LOBYTE(v13) = v10 - *(a1 + 11544) > *(a1 + 11624);
    }

    if (v11)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t VCTimescaleWSOLA_ActiveSpeechAdapt(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  __dst[1455] = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  if (VRTraceIsInternalOSInstalled())
  {
    v5 = micro();
  }

  if (VCTimescaleWSOLA_CheckCompression(v4, *(v3 + 16), *(v3 + 44), *(v3 + 48), *(v3 + 160)) && *(v3 + 20) == *(v4 + 11584))
  {
    v6 = _VCTimescale_DecodeWarpWsola(v4);
    LogProfileTimeOverLimit(v5, v7, "SpkrProc: Warping");
    v8 = 1;
    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v6 = 0;
  }

  *(v3 + 152) = v8;
  if (!*(v3 + 44))
  {
    if (*(v3 + 48))
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      if (*(v4 + 11536))
      {
        v10 = *(v3 + 56);
        v18 = *(v4 + 11568);
        v11 = v10;
        if (*(v4 + 11587) == 1)
        {
          v11 = *(v4 + 11576);
        }

        v12 = 0.0;
        if (VRTraceIsInternalOSInstalled())
        {
          v12 = micro();
        }

        memcpy(__dst, v4, 0x2D70uLL);
        VCTimescaleWSOLA_WindowTail(__dst, v11, &v18);
        LogProfileTimeOverLimit(v12, v13, "SpkrProc: WsolaTail");
        v14 = v18;
        if (*(v4 + 11587) == 1)
        {
          LODWORD(__dst[0]) = 2 * v18;
          AudioConverterConvertBuffer(*(v4 + 11600), 4 * v18, v11, __dst, v10);
        }

        *(v4 + 11544) = micro();
        *(v4 + 11536) = 0;
        *(v4 + 8) = 1;
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__dst[0]) = 136315906;
            *(__dst + 4) = v15;
            WORD2(__dst[1]) = 2080;
            *(&__dst[1] + 6) = "_VCTimescaleWSOLA_TailSize";
            HIWORD(__dst[2]) = 1024;
            LODWORD(__dst[3]) = 398;
            WORD2(__dst[3]) = 1024;
            *(&__dst[3] + 6) = v14;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Extracted WSOLA tail, size=%u", __dst, 0x22u);
          }
        }
      }

      else
      {
        v14 = 0;
      }

      **(v3 + 24) += v14;
    }
  }

  return v6;
}

uint64_t _VCTimescale_DecodeWarpWsola(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v31 = v7;
  v32 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v37 = *MEMORY[0x1E69E9840];
  v13 = v1 + 0x2000;
  v14 = memset(v36, 255, sizeof(v36));
  v15 = *(v13 + 3392);
  v34 = 4 * v15;
  v16 = v3;
  if (*(v13 + 3395) == 1)
  {
    v16 = v36;
    v14 = AudioConverterConvertBuffer(*(v12 + 11592), 2 * v15, v3, &v34, v36);
    v15 = *(v13 + 3392);
  }

  if (v15)
  {
    v17 = fmax((v9 / v15), 0.75);
  }

  else
  {
    v17 = 0.75;
  }

  v33 = *(v13 + 3376);
  MEMORY[0x1EEE9AC00](v14);
  v20 = (&v30 - v19);
  if (v21)
  {
    memset(&v30 - v19, 255, v18);
  }

  if (!*(v13 + 3395))
  {
    v20 = v11;
  }

  if (*(v12 + 11536))
  {
    v22 = 0;
    *(v12 + 11532) = 0;
  }

  else
  {
    v22 = *(v12 + 11532);
  }

  memcpy(v35, v12, sizeof(v35));
  v23 = VCTimescaleWSOLA_Adapt(v35, v16, *(v13 + 3392), v20, &v33, v12 + 12, v22, v17, 0.00200000009);
  *(v12 + 11536) = 1;
  if (v23 == 3)
  {
    memcpy(v11, v3, *(v13 + 3392) * v5);
    v24 = *(v13 + 3392);
    result = 23;
  }

  else
  {
    if (*(v13 + 3395) == 1)
    {
      v34 = 2 * v33;
      AudioConverterConvertBuffer(*(v12 + 11600), 4 * v33, v20, &v34, v11);
    }

    if (VRTraceGetErrorLogLevelForModule() <= 4)
    {
      v24 = v33;
    }

    else
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      v28 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      v24 = v33;
      if (v28)
      {
        v29 = *(v13 + 3392);
        LODWORD(v35[0]) = 136316418;
        *(v35 + 4) = v26;
        WORD2(v35[1]) = 2080;
        *(&v35[1] + 6) = "_VCTimescale_DecodeWarpWsola";
        HIWORD(v35[2]) = 1024;
        LODWORD(v35[3]) = 625;
        WORD2(v35[3]) = 2048;
        *(&v35[3] + 6) = v17;
        HIWORD(v35[4]) = 1024;
        LODWORD(v35[5]) = v29;
        WORD2(v35[5]) = 1024;
        *(&v35[5] + 6) = v33;
        _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WSOLA WARP, scale = %f, in size = %u, out size = %u", v35, 0x32u);
      }
    }

    result = 0;
    *v31 = 1;
  }

  *v32 = v24;
  return result;
}

void LogProfileTimeOverLimit(double a1, double a2, const char *a3, ...)
{
  va_start(va, a3);
  v35 = *MEMORY[0x1E69E9840];
  if (VRTraceIsInternalOSInstalled())
  {
    v5 = micro() - a1;
    if (v5 > 0.00499999989)
    {
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v6;
      v34 = v6;
      v31 = v6;
      v32 = v6;
      v29 = v6;
      v30 = v6;
      v27 = v6;
      v28 = v6;
      v25 = v6;
      v26 = v6;
      v24 = v6;
      v22 = v6;
      v23 = v6;
      v20 = v6;
      v21 = v6;
      *__str = v6;
      vsnprintf(__str, 0x100uLL, a3, va);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v10 = v7;
          v11 = 2080;
          v12 = "_LogProfileTimeLimitHelper";
          v13 = 1024;
          v14 = 36;
          v15 = 2080;
          v16 = __str;
          v17 = 2048;
          v18 = v5;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: Took a long time %fs", buf, 0x30u);
        }
      }
    }
  }
}

uint64_t VCMemoryUtil_IsProbabilisticGuardMallocEnabled()
{
  if (VCMemoryUtil_IsProbabilisticGuardMallocEnabled_onceToken != -1)
  {
    VCMemoryUtil_IsProbabilisticGuardMallocEnabled_cold_1();
  }

  return VCMemoryUtil_IsProbabilisticGuardMallocEnabled_isProbabilisticGuardMallocEnabled;
}

uint64_t VCMemoryUtil_IsAddressSanitizerEnabled()
{
  if (VCMemoryUtil_IsAddressSanitizerEnabled_onceToken != -1)
  {
    VCMemoryUtil_IsAddressSanitizerEnabled_cold_1();
  }

  return VCMemoryUtil_IsAddressSanitizerEnabled_isASANEnabled;
}

void HandleWCMEvent(void *a1, void *a2)
{
  keys[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2;
    uint64 = xpc_dictionary_get_uint64(a1, "kMessageId");
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = "HandleWCMEvent";
        *&buf[22] = 1024;
        LODWORD(v33) = 86;
        WORD2(v33) = 1024;
        *(&v33 + 6) = uint64;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WCM: receive a WCM event [%d].", buf, 0x22u);
      }
    }

    if (uint64 == 1100)
    {
      value = 0;
      [objc_msgSend(a2 "wcmClientDelegate")];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessGetCallConfig";
          *&buf[22] = 1024;
          LODWORD(v33) = 40;
          WORD2(v33) = 1024;
          *(&v33 + 6) = HIDWORD(value);
          WORD5(v33) = 1024;
          HIDWORD(v33) = value;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WCM: current bitrate cap [%u] target [%u]", buf, 0x28u);
        }
      }

      keys[0] = "kWCMFTCallConfig_BitrateCapability";
      keys[1] = "kWCMFTCallConfig_TargetBitRate";
      v15 = xpc_uint64_create(HIDWORD(value));
      v16 = xpc_uint64_create(value);
      values[0] = v15;
      values[1] = v16;
      v17 = xpc_dictionary_create(keys, values, 2uLL);
      v36[0] = "kMessageId";
      v36[1] = "kMessageArgs";
      v18 = xpc_uint64_create(0xC8uLL);
      v35[0] = v18;
      v35[1] = v17;
      v19 = xpc_dictionary_create(v36, v35, 2uLL);
      xpc_release(v17);
      xpc_release(v15);
      xpc_release(v16);
      xpc_release(v18);
      v20 = [a2 connectionQueue];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __ProcessGetCallConfig_block_invoke;
      *&v33 = &unk_1E85F37F0;
      *(&v33 + 1) = a2;
      v34 = v19;
      dispatch_async(v20, buf);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 136315650;
          v27 = v21;
          v28 = 2080;
          v29 = "ProcessGetCallConfig";
          v30 = 1024;
          v31 = 69;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WCM: sent reply for WCMFTCallConfig.", v26, 0x1Cu);
        }
      }
    }

    else if (uint64 == 1101)
    {
      v8 = xpc_dictionary_get_value(a1, "kMessageArgs");
      v9 = xpc_dictionary_get_uint64(v8, "kWCMFTCallConfig_BitrateCapability");
      v10 = xpc_dictionary_get_uint64(v8, "kWCMFTCallConfig_InterferenceLevel");
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessSetCallConfig";
          *&buf[22] = 1024;
          LODWORD(v33) = 31;
          WORD2(v33) = 1024;
          *(&v33 + 6) = v9;
          WORD5(v33) = 1024;
          HIDWORD(v33) = v10;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WCM: BitrateCap [%d] InterferenceLevel [%d]", buf, 0x28u);
        }
      }

      [objc_msgSend(a2 "wcmClientDelegate")];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        HandleWCMEvent_cold_1(v23, v24);
      }
    }
  }
}

void __ProcessGetCallConfig_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  if (v2)
  {
    xpc_connection_send_message(v2, *(a1 + 40));
  }

  v3 = *(a1 + 40);

  xpc_release(v3);
}

uint64_t VCTransportICEConnected(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = MEMORY[0x1E1289F20]([a1 weak]);
  if (v13)
  {
    v14 = v13;
    [v13 iceConnectedForCallID:a2 result:a3 didReceivePacket:a4 useRelay:a5 secretKey:a6 skeResult:a7];
    CFRelease(v14);
  }

  return 0;
}

void VCTransportICENewCandidates(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E1289F20]([a1 weak]);
  if (v9)
  {
    v10 = v9;
    [v9 iceNewCandidatesForCallID:a2 blob:a3 size:a4 newCandidateVersion:a5];

    CFRelease(v10);
  }
}

void VCTransportICEShouldNominate(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = MEMORY[0x1E1289F20]([a1 weak]);
  if (v15)
  {
    v16 = v15;
    [v15 iceShouldNominateNewCandidate:a3 forCallID:a2 interfaceMask:a4 nominated:a5 demote:a6 connectionPriority:a7 replaceOnly:a8];

    CFRelease(v16);
  }
}

void VCTransportICERemoveIPPort(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = MEMORY[0x1E1289F20]([a1 weak]);
  if (v7)
  {
    v8 = v7;
    [v7 iceRemoveIPPort:a3 forCallID:a2 isLocalInterface:a4 != 0];

    CFRelease(v8);
  }
}

void VCDataPacketReceivedCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = MEMORY[0x1E1289F20]([a1 weak]);
  if (v11)
  {
    v12 = v11;
    [v11 receivedDataPacket:a2 length:a3 forCallID:a4 encrypted:a5 OFTType:a6];

    CFRelease(v12);
  }
}

FILE **VideoPacketDump_OpenRTPLog(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = VRLogfileAlloc(0, a1, "RTPPacketDumpVideo", ".packetdump", "com.apple.VideoConference.RTPPacketDumpQueue", 32);
    if (v1)
    {
      v8 = v1;
      VRLogfilePrintSync(v1, "sTime\tStreamID\tTimestamp\tSeqNumber\tFrameSequenceNumber\tFECPacketStatus\tIsTemporalScaledStream\tIsBaseLayerFrame\n", v2, v3, v4, v5, v6, v7, v12[0]);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoPacketDump_OpenRTPLog_cold_1(v9, v10);
        }
      }

      return 0;
    }
  }

  else
  {
    VideoPacketDump_OpenRTPLog_cold_2(v12);
    return v12[0];
  }

  return v8;
}

void VideoPacketDump_CloseRTPLog(uint64_t a1)
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = a1;
  VRLogfileFree(v1);
}

void VideoPacketDump_RTPLog(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    VRLogfileGetTimestamp(v8, 0x14u);
    VRLogfilePrint(a1, "%s\t%u\t%u\t%u\t%u\t%d\t%d\t%d\n", v2, v3, v4, v5, v6, v7, v8);
  }
}

void VCVoiceDetector_Destroy(void **a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "VCVoiceDetector_Destroy";
      v9 = 1024;
      v10 = 48;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NULL voice detector", &v5, 0x1Cu);
    }
  }
}

void *VCVoiceDetector_Create(char a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x68uLL, 0x10A0040FC058773uLL);
  v7[0] = v2;
  if (!v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCVoiceDetector_Create_cold_4();
      }
    }

    return 0;
  }

  v3 = v2;
  if (VCVoiceDetector_Create_loadPredicate != -1)
  {
    VCVoiceDetector_Create_cold_1();
  }

  v4 = VCVoiceDetector_Create_libHandle;
  *(v3 + 1) = VCVoiceDetector_Create_libHandle;
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCVoiceDetector_Create_cold_3();
      }
    }

    free(v3);
    return 0;
  }

  *(v3 + 20) = a1;
  *(v3 + 3) = dlsym(v4, "DNNVAD_CreateInstance");
  *(v3 + 4) = dlsym(*(v3 + 1), "DNNVAD_Initialize");
  *(v3 + 5) = dlsym(*(v3 + 1), "DNNVAD_Uninitialize");
  *(v3 + 6) = dlsym(*(v3 + 1), "DNNVAD_Process");
  *(v3 + 9) = dlsym(*(v3 + 1), "DNNVAD_DestroyInstance");
  *(v3 + 7) = dlsym(*(v3 + 1), "DNNVAD_GetSpeechProbabilitySoftValue");
  *(v3 + 8) = dlsym(*(v3 + 1), "DNNVAD_GetSpeechProbabilityHardValue");
  *(v3 + 10) = dlsym(*(v3 + 1), "DNNVAD_EnableLegacyVAD");
  *(v3 + 11) = dlsym(*(v3 + 1), "DNNVAD_GetSoundActivityValue");
  v5 = dlsym(*(v3 + 1), "DNNVAD_GetPowerMeterValue");
  *(v3 + 12) = v5;
  *(v3 + 4) = 2143289344;
  if (!*(v3 + 3) || !*(v3 + 4) || !*(v3 + 5) || !*(v3 + 6) || !*(v3 + 9) || !*(v3 + 7) || !*(v3 + 8) || !*(v3 + 10) || !*(v3 + 11) || !v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCVoiceDetector_Create_cold_2();
      }
    }

    VCVoiceDetector_Destroy(v7);
    return v7[0];
  }

  return v3;
}

void VCVoiceDetector_Start(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a2 + 40);
        v7 = *a2;
        v16 = 136316418;
        v17 = v4;
        v18 = 2080;
        v19 = "VCVoiceDetector_Start";
        v20 = 1024;
        v21 = 116;
        v22 = 1024;
        v23 = v6;
        v24 = 2048;
        v25 = v7;
        v26 = 2080;
        v27 = "/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib";
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  samplesPerFrame=%u -> inSampleRate=%f, AUDIODSP_COMPONENT_DYLIB=%s", &v16, 0x36u);
      }
    }

    v8 = (a1[3])(a1);
    if (!v8 && *a1)
    {
      if (*(a1 + 20) == 1)
      {
        v12 = (a1[10])();
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (v12)
        {
          VCVoiceDetector_Start_cold_1(ErrorLogLevelForModule);
          goto LABEL_20;
        }

        if (ErrorLogLevelForModule >= 7)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v16 = 136315650;
            v17 = v14;
            v18 = 2080;
            v19 = "VCVoiceDetector_Start";
            v20 = 1024;
            v21 = 128;
            _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Vad_EnableLegacyVAD enabled", &v16, 0x1Cu);
          }
        }
      }

      if (!(a1[4])(*a1, *(a2 + 40), *a2))
      {
        return;
      }

      VCVoiceDetector_Start_cold_2();
LABEL_20:
      (a1[9])(*a1);
      *a1 = 0;
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v11 = *a1;
        v16 = 136316162;
        v17 = v9;
        v18 = 2080;
        v19 = "VCVoiceDetector_Start";
        v20 = 1024;
        v21 = 121;
        v22 = 1024;
        v23 = v8;
        v24 = 2048;
        v25 = v11;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d Vad_CreateInstance error=%d, audioVADRef=%p", &v16, 0x2Cu);
      }
    }
  }
}

void *VCVoiceDetector_Stop(void *result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      (v1[5])();
      result = (v1[9])(*v1);
      *v1 = 0;
    }
  }

  return result;
}

uint64_t VCVoiceDetector_ProcessSampleBuffer(float *a1, uint64_t a2, char a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = 0;
    if (a2 && *a1)
    {
      v26 = 0.0;
      v27 = 0.0;
      v25 = NAN;
      if (a3)
      {
        v4 = 1;
        v13 = 0.0;
      }

      else
      {
        AudioBufferList = VCAudioBufferList_GetAudioBufferList(a2);
        v7 = *(a1 + 6);
        v8 = *a1;
        v9 = *(AudioBufferList + 16);
        SampleCount = VCAudioBufferList_GetSampleCount(a2);
        v7(v8, v9, SampleCount);
        if ((*(a1 + 8))(*a1, &v27))
        {
          VCVoiceDetector_ProcessSampleBuffer_cold_1();
        }

        else if ((*(a1 + 7))(*a1, &v26))
        {
          VCVoiceDetector_ProcessSampleBuffer_cold_2();
        }

        else
        {
          v11 = v26;
          v12 = v27;
          if (v27 == 0.0)
          {
            VCUtil_ExponentialMovingAverage(a1 + 4, v26, 50.0);
            v13 = v14;
          }

          else
          {
            a1[4] = NAN;
            v13 = 1.0;
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
                *buf = 4.8155e-34;
                v30 = v15;
                v31 = 2080;
                v32 = "_VCVoiceDetector_CalculateVoiceProbability";
                v33 = 1024;
                v34 = 165;
                v35 = 1024;
                v36 = v12 != 0.0;
                v37 = 2048;
                v38 = v11;
                v39 = 2048;
                v40 = v13;
                _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isVoiceActiveDNN=%d voiceProbabilityDNN=%f -> voiceProbability=%f", buf, 0x36u);
              }
            }

            else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 4.8155e-34;
              v30 = v15;
              v31 = 2080;
              v32 = "_VCVoiceDetector_CalculateVoiceProbability";
              v33 = 1024;
              v34 = 165;
              v35 = 1024;
              v36 = v12 != 0.0;
              v37 = 2048;
              v38 = v11;
              v39 = 2048;
              v40 = v13;
              _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d isVoiceActiveDNN=%d voiceProbabilityDNN=%f -> voiceProbability=%f", buf, 0x36u);
            }
          }

          if (*(a1 + 20) != 1)
          {
            goto LABEL_20;
          }

          v18 = (*(a1 + 11))(*a1, &v25);
          if (!v18)
          {
            VCAudioBufferList_SetVoiceActivity(a2, v25 == 0.0);
LABEL_20:
            VoiceActivity = VCAudioBufferList_GetVoiceActivity(a2);
            if (VoiceActivity == 1)
            {
              v20 = 127;
            }

            else
            {
              v20 = 1;
            }

            if (v27 == 0.0)
            {
              v4 = v20;
            }

            else
            {
              v4 = -1;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v21 = VRTraceErrorLogLevelToCSTR();
              v22 = *MEMORY[0x1E6986650];
              v23 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 4.8158e-34;
                  v30 = v21;
                  v31 = 2080;
                  v32 = "VCVoiceDetector_ProcessSampleBuffer";
                  v33 = 1024;
                  v34 = 216;
                  v35 = 1024;
                  v36 = VoiceActivity == 1;
                  v37 = 2048;
                  v38 = v27;
                  v39 = 2048;
                  v40 = v26;
                  v41 = 2048;
                  v42 = v13;
                  v43 = 1024;
                  v44 = v4;
                  _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d vad1=%d hard=%f soft=%f prob=%f priority=%d", buf, 0x46u);
                }
              }

              else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *buf = 4.8158e-34;
                v30 = v21;
                v31 = 2080;
                v32 = "VCVoiceDetector_ProcessSampleBuffer";
                v33 = 1024;
                v34 = 216;
                v35 = 1024;
                v36 = VoiceActivity == 1;
                v37 = 2048;
                v38 = v27;
                v39 = 2048;
                v40 = v26;
                v41 = 2048;
                v42 = v13;
                v43 = 1024;
                v44 = v4;
                _os_log_debug_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEBUG, " [%s] %s:%d vad1=%d hard=%f soft=%f prob=%f priority=%d", buf, 0x46u);
              }
            }

            goto LABEL_32;
          }

          VCVoiceDetector_ProcessSampleBuffer_cold_3(v13, v18, buf, &v28);
        }

        v13 = *buf;
        v4 = v28;
      }

LABEL_32:
      VCAudioBufferList_SetPriority(a2, v4);
      VCAudioBufferList_SetVoiceProbability(a2, v13);
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

void sub_1DBB57F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_29_11()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_48_2(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2080;
  return result;
}

uint64_t _VCJitterBuffer_GetJBTargetFromEstimatedTarget(uint64_t a1, float *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    v4 = *a2;
    JTargetJBEstimator_GetSharedSettings(a1 + 38072, &v8);
    result = 0;
    v6 = fmax(v4, fmax(*&v9, *(a1 + 119272)));
    v7 = fmin(v6, *(&v9 + 1));
    *a2 = v7;
  }

  else
  {
    _VCJitterBuffer_GetJBTargetFromEstimatedTarget_cold_1(&v11);
    return v11;
  }

  return result;
}

void _VCJitterBuffer_GetMinMaxQueueSizeFromConfig(_DWORD *a1, double *a2, void *a3, double a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v6 = a1[50];
    if ((v6 - 1) < 2)
    {
      v7 = 0.04;
    }

    else if (v6)
    {
      if (v6 != 3)
      {
LABEL_13:
        v10 = a1[63];
        if (v10)
        {
          v11 = v10 / 1000.0;
          *a2 = v11;
        }

        else
        {
          v11 = *a2;
        }

        *a2 = VCDefaults_GetDoubleValueForKey(@"jitterBufferMinQueueSize", v11);
        return;
      }

      LODWORD(a4) = a1[62];
      v7 = *&a4 / 1000.0;
    }

    else
    {
      v7 = 0.1;
    }

    *a2 = v7;
    *a3 = 0x3FE0000000000000;
    goto LABEL_13;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = v8;
      v14 = 2080;
      v15 = "_VCJitterBuffer_GetMinMaxQueueSizeFromConfig";
      v16 = 1024;
      v17 = 777;
      v18 = 2048;
      v19 = a2;
      v20 = 2048;
      v21 = a3;
      _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid minQSize=%p or maxQSize=%p", &v12, 0x30u);
    }
  }
}

double _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeDefault(uint64_t a1, int *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 118656);
  if ((*(a2 + 24) != *(a1 + 120408) || *(a2 + 16) != *(a1 + 120400)) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a2;
      v9 = *(a2 + 1);
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      v12 = *(a2 + 11);
      v13 = *(a2 + 17);
      v14 = *(a2 + 18);
      v15 = *(a2 + 10);
      v16 = *v4;
      v17 = 136318210;
      v18 = v6;
      v19 = 2080;
      v20 = "_VCJitterBuffer_LogNWNotificationBBAdvisoryTypeDefault";
      v21 = 1024;
      v22 = 814;
      v23 = 2048;
      v24 = a1;
      v25 = 1024;
      v26 = v8;
      v27 = 2048;
      v28 = v9;
      v29 = 1024;
      v30 = v10;
      v31 = 1024;
      v32 = v11;
      v33 = 1024;
      v34 = v12;
      v35 = 1024;
      v36 = v13;
      v37 = 1024;
      v38 = v14;
      v39 = 1024;
      v40 = v15;
      v41 = 2048;
      v42 = v16;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] Cellular Network Notification: basebandAdvisoryType=%d timestamp=%llu radioAccessTechnology=%u outageState=%u estimatedOutagePeriod=%u signalQuality=%d dlBLER=%u cdrxCycleLength=%u targetJBSize=%f", &v17, 0x64u);
    }
  }

  return result;
}

void _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeCDRX(uint64_t a1, int *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 19) != *(a1 + 120403) || *(a2 + 10) != *(a1 + 120404)) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a2;
      v7 = *(a2 + 19);
      v8 = *(a2 + 10);
      v9 = 136316674;
      v10 = v4;
      v11 = 2080;
      v12 = "_VCJitterBuffer_LogNWNotificationBBAdvisoryTypeCDRX";
      v13 = 1024;
      v14 = 821;
      v15 = 2048;
      v16 = a1;
      v17 = 1024;
      v18 = v6;
      v19 = 1024;
      v20 = v7;
      v21 = 1024;
      v22 = v8;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] Cellular Network Notification: basebandAdvisoryType=%d cdrxState=%u cdrxCycleLength=%u", &v9, 0x38u);
    }
  }
}

void _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeLinkMeasurement(uint64_t a1, int *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16) != *(a1 + 120400) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a2;
      v7 = *(a2 + 16);
      v8 = *(a2 + 17);
      v9 = *(a2 + 18);
      v10 = 136316930;
      v11 = v4;
      v12 = 2080;
      v13 = "_VCJitterBuffer_LogNWNotificationBBAdvisoryTypeLinkMeasurement";
      v14 = 1024;
      v15 = 827;
      v16 = 2048;
      v17 = a1;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v7;
      v22 = 1024;
      v23 = v8;
      v24 = 1024;
      v25 = v9;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] Cellular Network Notification: basebandAdvisoryType=%d radioAccessTechnology=%u signalQuality=%d dlBLER=%u", &v10, 0x3Eu);
    }
  }
}

void _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeOutage(uint64_t a1, int *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 24) != *(a1 + 120408) || *(a2 + 16) != *(a1 + 120400)) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a2;
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
      v9 = *(a2 + 11);
      v10 = 136316930;
      v11 = v4;
      v12 = 2080;
      v13 = "_VCJitterBuffer_LogNWNotificationBBAdvisoryTypeOutage";
      v14 = 1024;
      v15 = 834;
      v16 = 2048;
      v17 = a1;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v7;
      v22 = 1024;
      v23 = v8;
      v24 = 1024;
      v25 = v9;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] Cellular Network Notification: basebandAdvisoryType=%d radioAccessTechnology=%u outageState=%u estimatedOutagePeriod=%u", &v10, 0x3Eu);
    }
  }
}

void VCJitterBuffer_Create(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x1D678uLL, 0x10F204088CFEE3CuLL);
    v3 = v2;
    if (v2)
    {
      memcpy(v2, a1, 0x120uLL);
      if ((*(v3 + 260) & 1) == 0)
      {
        v4 = VCBoundsSafety_IndexableToNulTerminated(a1, 0xC8uLL);
        *(v3 + 120328) = LogDump_OpenLog(v4, "JitterBuffer", ".jbdump", "STime\tTimestamp\tSPF\tBundling\tDTX\tNetworkType\tFirstTimestamp\tWraps\tIsRed\tLag\tAvgLag\tMaxLag\tMinLag\tJumpThresh\tSlopeThresh\tFlat\tClippedLag\tMinLagAdjustment\tMinClipThreshold\tJB\tJBMin\tJBMax\tTargetJ\tRedOverheadInTargetJ\tTargetJQSize\tJQSize\tAvgJQSize\tERASURE\tMODE\tPayload Type\tSeq Number\tINTS\tOUTTS\tLeftOverSamples\tProminence\tStreamID\tTargetSizeIndependent\tAVSyncOffset\tIntermittentState\tSingleOutagePeriod\tEstimatedIntermittentPeriod\tTargetBoostMode\tErasureAlt\n", 9, "2.7");
      }

      DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"audioJitterBufferWeightedAvgQSizeFactor", 0.05);
      *(v3 + 119304) = DoubleValueForKey;
      v40 = 0;
      v41 = 0;
      _VCJitterBuffer_GetMinMaxQueueSizeFromConfig(a1, &v41, &v40, DoubleValueForKey);
      *(v3 + 120320) = v41;
      *(v3 + 119288) = *(a1 + 200) == 3;
      if (*(a1 + 204) == 1)
      {
        v6 = *(a1 + 282);
      }

      else
      {
        v6 = 0;
      }

      *(v3 + 119289) = v6 & 1;
      v7 = *(v3 + 120328);
      *&v39 = 0;
      *(&v39 + 1) = v7;
      if (v3 >= v3 + 120440)
      {
        __break(0x5519u);
        return;
      }

      if (JLagProcessor_Initialize(v3 + 37616, &v39))
      {
        v38 = 0;
        v37 = 0u;
        v36 = 0u;
        v35 = 0u;
        v34 = 0u;
        v33 = 0u;
        memset(&v32[4], 0, 32);
        v8 = *(v3 + 120320);
        v32[0] = v8;
        MinQueueSizeOverride5G = GKSConnectivitySettings_GetMinQueueSizeOverride5G();
        v10 = 0.1;
        if (MinQueueSizeOverride5G != 0.0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v43 = v11;
              v44 = 2080;
              v45 = "VCJitterBuffer_GetMinJitterBufferQueueSize5G";
              v46 = 1024;
              v47 = 745;
              v48 = 2048;
              v49 = MinQueueSizeOverride5G;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d JB Min Queue Size for 5G is overriden with server bag value %f", buf, 0x26u);
            }
          }

          v10 = MinQueueSizeOverride5G;
        }

        v13 = VCDefaults_GetDoubleValueForKey(@"kVCDefaultJitterBufferMinQueueSize5G", v10);
        v14 = v40;
        *&v32[1] = v13;
        v32[2] = v40;
        if (*(v3 + 200))
        {
          v15 = 0.1;
        }

        else
        {
          v15 = 0.25;
        }

        *&v32[3] = v15;
        v16 = *(a1 + 204);
        LODWORD(v32[4]) = v16;
        *&v32[5] = xmmword_1DBD51A00;
        *&v33 = *(v3 + 120328);
        LOWORD(v32[7]) = 257;
        LOBYTE(v35) = 1;
        v17 = *(a1 + 218) ^ 1;
        BYTE1(v35) = v17;
        BYTE3(v35) = 1;
        BYTE8(v33) = VCDefaults_GetBoolValueForKey(@"jitterBufferHistoryUseShortTermWindowForTargetExpansion", 1);
        v18 = VCDefaults_GetDoubleValueForKey(@"jitterBufferHistoryShortTermWindowSize", 5.0);
        *&v34 = v18;
        v19 = VCDefaults_GetDoubleValueForKey(@"jitterBufferHistoryLongTermWindowSize", 10.0);
        *(&v34 + 1) = v19;
        v20 = *(a1 + 217);
        BYTE2(v35) = *(a1 + 217);
        v21 = *(a1 + 232);
        if (v21)
        {
          v22 = CFRetain(v21);
        }

        else
        {
          v22 = 0;
        }

        *(&v35 + 1) = v22;
        *&v36 = 0x4008000000000000;
        DWORD2(v36) = *(v3 + 240);
        LOBYTE(v38) = 1;
        *&v37 = _VCJitterBuffer_GetJBTargetFromEstimatedTarget;
        *(&v37 + 1) = v3;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(v3 + 216);
            v26 = *(v3 + 260);
            v27 = *(v3 + 280);
            *buf = 136319490;
            v43 = v23;
            v44 = 2080;
            v45 = "VCJitterBuffer_Create";
            v46 = 1024;
            v47 = 914;
            v48 = 2048;
            v49 = *&v3;
            v50 = 2048;
            v51 = v8;
            v52 = 2048;
            v53 = v14;
            v54 = 2048;
            v55 = v15;
            v56 = 1024;
            v57 = v16;
            v58 = 2048;
            v59 = 0x3FEE666666666666;
            v60 = 2048;
            v61 = v18;
            v62 = 2048;
            v63 = v19;
            v64 = 1024;
            v65 = v20;
            v66 = 2048;
            v67 = v13;
            v68 = 2048;
            v69 = v22;
            v70 = 1024;
            v71 = v17 & 1;
            v72 = 1024;
            v73 = v25;
            v74 = 1024;
            v75 = v26;
            v76 = 1024;
            v77 = v27;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] Jitter buffer configured with minQSize=%f maxQSize=%f highStartQSize=%f highStartMode=%d targetPercentileToCover=%f shortTermWindowSize=%f longTermWindowSize=%f filterDRXBundleEnabled=%d minQSize5G=%f targetSynchronizer=%p spikeManagement=%d skipDecodeOnSilence=%d skipJBDumpCreation=%d enableEnhancedJBAdaptations=%d", buf, 0x9Au);
          }
        }

        if (JTargetJBEstimator_Initialize(v3 + 38072, v32))
        {
          v28 = JitterPreloadQueue_Create();
          *(v3 + 119248) = v28;
          if (v28)
          {
            v29 = JitterQueue_Create();
            *(v3 + 119256) = v29;
            if (v29)
            {
              *(v3 + 120424) = *(a1 + 264);
              *(v3 + 119488) = 0;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v30 = VRTraceErrorLogLevelToCSTR();
                v31 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v43 = v30;
                  v44 = 2080;
                  v45 = "VCJitterBuffer_Create";
                  v46 = 1024;
                  v47 = 930;
                  _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Jitter Buffer Created Successfully", buf, 0x1Cu);
                }
              }

              return;
            }

            VCJitterBuffer_Create_cold_3();
          }

          else
          {
            VCJitterBuffer_Create_cold_4();
          }
        }

        else
        {
          VCJitterBuffer_Create_cold_2();
        }
      }

      else
      {
        VCJitterBuffer_Create_cold_1();
      }
    }

    else
    {
      VCJitterBuffer_Create_cold_5();
    }

    VCJitterBuffer_Finalize(v3);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCJitterBuffer_Create_cold_6();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_Create_cold_7();
    }
  }
}

void VCJitterBuffer_Finalize(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315906;
        v9 = v3;
        v10 = 2080;
        v11 = "VCJitterBuffer_Finalize";
        v12 = 1024;
        v13 = 943;
        v14 = 2048;
        v15 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cleaning up JitterBuffer (%p)", &v8, 0x26u);
      }
    }

    v5 = a1[14907];
    if (v5)
    {
      JitterQueue_Destroy(v5);
      a1[14907] = 0;
    }

    v6 = a1[14906];
    if (v6)
    {
      JitterPreloadQueue_Destroy(v6);
      a1[14906] = 0;
    }

    VCAudioPlayer_Finalize((a1 + 36));
    JTargetJBEstimator_Finalize((a1 + 4759));
    v7 = a1[29];
    if (v7)
    {
      CFRelease(v7);
      a1[29] = 0;
    }

    LogDump_CloseLog(a1[15041]);
    free(a1);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_Finalize_cold_1();
    }
  }
}

uint64_t VCJitterBuffer_QueueSteeringCallback(uint64_t a1, double a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = 0;
    *(a1 + 119344) = a2;
  }

  else
  {
    VCJitterBuffer_QueueSteeringCallback_cold_1(&v4);
    return v4;
  }

  return result;
}

uint64_t VCJitterBuffer_InitializePlayback(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1 + 118784;
    v18 = -86;
    v17 = -21846;
    memset(v23, 170, sizeof(v23));
    v5 = *(a1 + 119256);
    v6 = VCBoundsSafety_IndexableToNulTerminated(a1, 0xC8uLL);
    v7 = *(a1 + 244);
    v8 = *(v4 + 1632);
    v9 = *(a1 + 261);
    v10 = *(a1 + 280);
    v11 = *(a1 + 283);
    v12 = *(a1 + 285);
    v15[0] = v5;
    v15[1] = a2;
    v15[2] = v6;
    v15[3] = *(a1 + 220);
    v15[4] = VCJitterBuffer_QueueSteeringCallback;
    v15[5] = a1;
    v16 = v7;
    v19 = vrev64_s32(*(a1 + 252));
    v20 = -1431655766;
    v21 = v8;
    v22 = v9;
    v24 = a1;
    v25 = _VCJitterBuffer_DTMFEventCallback;
    v26 = v10;
    v27 = v11;
    v28 = v12;
    v29 = -1431655766;
    return VCAudioPlayer_Initialize(a1 + 288, v15);
  }

  else
  {
    v13 = 2151874561;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCJitterBuffer_InitializePlayback_cold_1();
      }
    }
  }

  return v13;
}

uint64_t _VCJitterBuffer_DTMFEventCallback(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 120432);
    if (v1)
    {
      return v1(*(result + 120424));
    }
  }

  return result;
}

void VCJitterBuffer_Reset(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "VCJitterBuffer_Reset";
        v9 = 1024;
        v10 = 1007;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v5, 0x26u);
      }
    }

    *(a1 + 119320) = 1;
    VCJitterBuffer_ResetPlaybackReportingMetrics(a1);
    VCJitterBuffer_ResetJitterQueueUnderflowRate(a1);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_Reset_cold_1();
    }
  }
}

void VCJitterBuffer_ResetPlaybackReportingMetrics(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "VCJitterBuffer_ResetPlaybackReportingMetrics";
        v9 = 1024;
        v10 = 1034;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v5, 0x26u);
      }
    }

    VCAudioPlayer_ResetReportingMetrics(a1 + 288);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_ResetPlaybackReportingMetrics_cold_1();
    }
  }
}

void VCJitterBuffer_ResetJitterQueueUnderflowRate(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "VCJitterBuffer_ResetJitterQueueUnderflowRate";
        v9 = 1024;
        v10 = 1040;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v5, 0x26u);
      }
    }

    JitterQueue_ResetUnderflowRate(*(a1 + 119256));
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_ResetJitterQueueUnderflowRate_cold_1();
    }
  }
}

void VCJitterBuffer_DiscardQueueExcess(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "VCJitterBuffer_DiscardQueueExcess";
        v9 = 1024;
        v10 = 1015;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v5, 0x26u);
      }
    }

    *(a1 + 119312) = 1;
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_DiscardQueueExcess_cold_1();
    }
  }
}

void VCJitterBuffer_SetRedAudioDelayInSamples(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136316162;
          v9 = v5;
          v10 = 2080;
          v11 = "VCJitterBuffer_SetRedAudioDelayInSamples";
          v12 = 1024;
          v13 = 1021;
          v14 = 2048;
          v15 = a1;
          v16 = 1024;
          v17 = a2;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] redAudioDelayInSamples:%d", &v8, 0x2Cu);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = 136316162;
        v9 = v5;
        v10 = 2080;
        v11 = "VCJitterBuffer_SetRedAudioDelayInSamples";
        v12 = 1024;
        v13 = 1021;
        v14 = 2048;
        v15 = a1;
        v16 = 1024;
        v17 = a2;
        _os_log_debug_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] redAudioDelayInSamples:%d", &v8, 0x2Cu);
      }
    }

    *(a1 + 119328) = a2;
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_SetRedAudioDelayInSamples_cold_1();
    }
  }
}

void VCJitterBuffer_Flush(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "VCJitterBuffer_Flush";
        v9 = 1024;
        v10 = 1027;
        v11 = 2048;
        v12 = a1;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v5, 0x26u);
      }
    }

    JitterPreloadQueue_Flush(*(a1 + 119248));
    JitterQueue_Reset(*(a1 + 119256));
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_Flush_cold_1();
    }
  }
}

void VCJitterBuffer_EnqueuePacket(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1 + 119248;
    PlaybackFormat = VCAudioPlayer_GetPlaybackFormat(a1 + 288);
    v6 = *PlaybackFormat;
    v72 = 0u;
    v73 = 0u;
    v74 = 0;
    v7 = *(a2 + 14);
    LOWORD(v72) = v7;
    DWORD1(v72) = *(a2 + 16);
    v8 = *(a2 + 1824);
    *(&v72 + 1) = *(a2 + 32);
    *&v73 = v8;
    DWORD2(v73) = *(a2 + 1516);
    LODWORD(v74) = *(a2 + 1816);
    BYTE4(v74) = *(a2 + 12);
    BYTE5(v74) = *(a2 + 40) != 0;
    if (*(v4 + 68) == 3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a2 + 14);
          *buf = 136316162;
          v80 = v9;
          v81 = 2080;
          v82 = "VCJitterBuffer_EnqueuePacket";
          v83 = 1024;
          v84 = 1070;
          v85 = 2048;
          v86 = a1;
          v87 = 1024;
          v88 = v11;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] state Reset dropping packet seqNum=%d", buf, 0x2Cu);
        }
      }

      goto LABEL_15;
    }

    if (*(a2 + 4) || *(v4 + 72) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(v4 + 72);
          v21 = *(a2 + 4);
          v22 = *(a2 + 14);
          *buf = 136316674;
          v80 = v18;
          v81 = 2080;
          v82 = "VCJitterBuffer_EnqueuePacket";
          v83 = 1024;
          v84 = 1074;
          v85 = 2048;
          v86 = a1;
          v87 = 1024;
          v88 = v20;
          v89 = 1024;
          v90 = v21;
          v91 = 1024;
          v92 = v22;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Setting state Reset, jqRequested[%d] packetNewStream[%d] seqNum[%d]", buf, 0x38u);
        }
      }

      *(v4 + 68) = 3;
      *(v4 + 72) = 0;
      VRLogfilePrint(*(v4 + 1080), "State = RESET\n", v12, v13, v14, v15, v16, v17, v71);
      goto LABEL_15;
    }

    if (!*(v4 + 68))
    {
      v23 = PlaybackFormat;
      JTargetJBEstimator_NewStream(a1 + 38072, v6, v7);
      JLagProcessor_NewStream(a1 + 37616, &v72, v6, v23[1]);
      JTargetJBEstimator_GetMinJBSize(a1 + 38072);
      v24 = *(a1 + 38104);
      *(v4 + 24) = v25;
      *(v4 + 32) = v24;
      *(a1 + 119408) = 0u;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"forceJitterBufferSize", @"com.apple.VideoConference", 0);
      *(v4 + 44) = AppIntegerValue;
      VCAudioPlayer_AdjustmentDisabled(a1 + 288, AppIntegerValue != 0);
      *(v4 + 68) = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v80 = v33;
          v81 = 2080;
          v82 = "VCJitterBuffer_EnqueuePacket";
          v83 = 1024;
          v84 = 1093;
          v85 = 2048;
          v86 = a1;
          _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] JBState NEWSTREAM -> SETTLE", buf, 0x26u);
        }
      }

      VRLogfilePrint(*(v4 + 1080), "State = STATE_NEWSTREAM, iSampleRate = %d\nState = SETTLE\n", v27, v28, v29, v30, v31, v32, v6);
    }

    v35 = *(*(a2 + 1840) + 20);
    v42 = JLagProcessor_Process(a1 + 37616, &v72, v35, *(v4 + 136), *(v4 + 68));
    v43 = v42;
    if (*(v4 + 68) == 1)
    {
      if (fabs(v42) > 0.0250000004)
      {
LABEL_15:
        VCJitterBuffer_AudioPacketFree(a1, a2);
        return;
      }

      *(v4 + 68) = 2;
      VRLogfilePrint(*(v4 + 1080), "State = FILL\n", v36, v37, v38, v39, v40, v41, v71);
    }

    if (*(v4 + 68) <= 3u)
    {
      *(v4 + 1064) += *(a2 + 1816) * *(*(a2 + 1840) + 20);
    }

    if (*(a2 + 40))
    {
      ++*(v4 + 176);
    }

    if (*(v4 + 68) == 2 && *(v4 + 76))
    {
      JTargetJBEstimator_GetMinJBSize(a1 + 38072);
      v45 = *(v4 + 44);
      if (v45 && v6)
      {
        v44 = v45 / v6;
      }

      else if (*(v4 + 41) == 1)
      {
        v44 = *(a1 + 38112);
      }

      if (v4 + 16 >= (v4 + 136))
      {
        goto LABEL_66;
      }

      v46 = *(v4 + 1064) / v6;
      if (*(v4 + 40))
      {
        v47 = v46 >= v44;
      }

      else
      {
        v47 = v46 > v44;
      }

      if (v47)
      {
        *(v4 + 68) = 4;
        _VCJitterBuffer_UpdateDiscardAlgoParams(a1);
        JTargetJBEstimator_ResetHistory(a1 + 38072);
        VRLogfilePrint(*(v4 + 1080), "State = RUN\n", v48, v49, v50, v51, v52, v53, v71);
      }
    }

    v54 = *(a2 + 1816);
    if (v54 >= 1)
    {
      v55 = (a2 + 1784);
      while (v55 < a2 + 1816 && v55 >= a2 + 1784)
      {
        v56 = *v55++;
        *(v56 + 1192) = *(a1 + 35896);
        if (!--v54)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_66;
    }

LABEL_47:
    bzero(buf, 0x748uLL);
    AudioPacket_initNewPacket(a2, buf);
    JitterPreloadQueue_Enqueue(*v4, a2);
    if ((v81 & 1) == 0)
    {
      *&v76[8] = 0u;
      *v75 = v82;
      *&v75[8] = v94;
      *&v75[16] = v35;
      *&v75[20] = v93;
      *v76 = *(&v82 + 2);
      v76[16] = v88 != 0;
      JTargetJBEstimator_Process(a1 + 38072, v75, v43);
    }

    if (*(v4 + 128) != 1)
    {
      goto LABEL_56;
    }

    v57 = _VCJitterBuffer_DesiredQSize(a1);
    if (VRTraceGetErrorLogLevelForModule() < 7 || (v58 = VRTraceErrorLogLevelToCSTR(), v59 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
    {
LABEL_55:
      *(v4 + 128) = 0;
LABEL_56:
      memset(v75, 170, 20);
      if (*(v4 + 1080) && (v81 & 1) == 0)
      {
        LogDump_GetTimestampString(v94);
        Statistics = JTargetJBEstimator_GetStatistics(a1 + 38072);
        v65 = JLagProcessor_GetStatistics(a1 + 37616);
        VCAudioPlayer_GetStatistics((a1 + 288));
        VCAudioPlayer_GetPlaybackFormat(a1 + 288);
        _VCJitterBuffer_DesiredQSize(a1);
        VRLogfilePrint(*(v4 + 1080), "%s\t%u\t%u\t%d\t%d\t%d\t%u\t%u\t%d\t%02.6f\t%02.6f\t%02.6f\t%02.6f\t%02.4f\t%02.4f\t%d\t%02.6f\t%02.6f\t%02.6f\t%02.4f\t%02.4f\t%02.4f\t%02.4f\t%02.4f\t%6d\t%6d\t%d\t%d\t%s\t%d\t%u\t%u\t%u\t%d\t%d\t%d\t%02.6f\t%02.4f\t%u\t%2.6f\t%2.6f\t%d\t%d\n", v88, *v95, v96, v97, *(Statistics + 112), *(v65 + 16), v75);
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v66 = VRTraceErrorLogLevelToCSTR();
        v67 = *MEMORY[0x1E6986650];
        v68 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = *(v4 + 68);
            *v75 = 136316930;
            *&v75[4] = v66;
            *&v75[12] = 2080;
            *&v75[14] = "VCJitterBuffer_EnqueuePacket";
            *&v75[22] = 1024;
            *v76 = 1173;
            *&v76[4] = 2048;
            *&v76[6] = a1;
            *&v76[14] = 1024;
            *&v76[16] = v69;
            *&v76[20] = 1024;
            *&v76[22] = v84;
            LOWORD(v77) = 1024;
            *(&v77 + 2) = HIDWORD(v80);
            HIWORD(v77) = 1024;
            v78[0] = v82;
            _os_log_impl(&dword_1DB56E000, v67, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] JBState[%d] payloadType[%d] bytes[%d] SeqNumber[%d]", v75, 0x3Eu);
          }
        }

        else if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          v70 = *(v4 + 68);
          *v75 = 136316930;
          *&v75[4] = v66;
          *&v75[12] = 2080;
          *&v75[14] = "VCJitterBuffer_EnqueuePacket";
          *&v75[22] = 1024;
          *v76 = 1173;
          *&v76[4] = 2048;
          *&v76[6] = a1;
          *&v76[14] = 1024;
          *&v76[16] = v70;
          *&v76[20] = 1024;
          *&v76[22] = v84;
          LOWORD(v77) = 1024;
          *(&v77 + 2) = HIDWORD(v80);
          HIWORD(v77) = 1024;
          v78[0] = v82;
          _os_log_debug_impl(&dword_1DB56E000, v67, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] JBState[%d] payloadType[%d] bytes[%d] SeqNumber[%d]", v75, 0x3Eu);
        }
      }

      return;
    }

    v60 = &targetBoostModeDescription[*(v4 + 112)];
    if (v60 < &__block_descriptor_32_e34_v24__0__NSDictionary_8__NSError_16l && v60 >= targetBoostModeDescription)
    {
      *v75 = 136316674;
      v61 = *v60;
      v62 = *(v4 + 24);
      v63 = *(v4 + 120);
      *&v75[4] = v58;
      *&v75[12] = 2080;
      *&v75[14] = "VCJitterBuffer_EnqueuePacket";
      *&v75[22] = 1024;
      *v76 = 1164;
      *&v76[4] = 2080;
      *&v76[6] = v61;
      *&v76[14] = 2048;
      *&v76[16] = v62;
      *&v76[24] = 2048;
      v77 = v57 / v6;
      LOWORD(v78[0]) = 2048;
      *(v78 + 2) = v63;
      _os_log_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Target boosting has changed: targetBoostMode=%s, minQueueSize=%.2f, currentTargetSize=%.2f, targetBoostingInSec=%.2f", v75, 0x44u);
      goto LABEL_55;
    }

LABEL_66:
    __break(0x5519u);
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_EnqueuePacket_cold_1();
    }
  }
}

void VCJitterBuffer_AudioPacketFree(uint64_t a1, int *a2)
{
  if (a1)
  {
    if (a2[454] < 1)
    {
LABEL_7:
      v9 = *(a1 + 119248);

      JitterPreloadQueue_AudioPacketFree(v9, a2);
    }

    else
    {
      v4 = 0;
      v5 = (a2 + 454);
      v6 = a2 + 446;
      v7 = (a2 + 446);
      while (v7 < v5 && v7 >= v6)
      {
        v8 = *v7++;
        JitterPreloadQueue_AudioFrameFree(*(a1 + 119248), v8);
        if (++v4 >= *v5)
        {
          goto LABEL_7;
        }
      }

      __break(0x5519u);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_AudioPacketFree_cold_1();
    }
  }
}

void _VCJitterBuffer_UpdateDiscardAlgoParams(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 36292) == 2)
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 3.0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "_VCJitterBuffer_UpdateDiscardAlgoParams";
      v9 = 1024;
      v10 = 1047;
      v11 = 2048;
      v12 = v2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Configuring queue discard threshold=%f", &v5, 0x26u);
    }
  }

  *(a1 + 118816) = v2;
}

uint64_t _VCJitterBuffer_DesiredQSize(_DWORD *a1)
{
  v2 = a1 + 29696;
  result = a1[29823];
  if (!result)
  {
    if (a1[50] == 3)
    {
      PlaybackFormat = VCAudioPlayer_GetPlaybackFormat((a1 + 72));
      LODWORD(v5) = a1[62];
      HIDWORD(v6) = 1083129856;
      LODWORD(v6) = *PlaybackFormat;
      return (v5 / 1000.0 * v6);
    }

    else
    {
      return (v2[150] + v2[128]);
    }
  }

  return result;
}

void VCJitterBuffer_PlaybackGetSamples(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4, uint64_t a5, int *a6, int *a7)
{
  v232 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCJitterBuffer_PlaybackGetSamples_cold_2();
      }
    }

    return;
  }

  v9 = (a1 + 119080);
  v10 = micro();
  v220 = 1;
  v219 = 0;
  v218 = 1;
  v206 = a2;
  SampleCount = VCAudioBufferList_GetSampleCount(a2);
  v207 = (v9 + 46);
  JTargetJBEstimator_GetMinJBSize(a1 + 38072);
  v212 = a1;
  v11 = *(a1 + 38104);
  *(v9 + 24) = v12;
  *(v9 + 25) = v11;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    v15 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = "VCJitterBuffer_PlaybackGetSamples";
        *&buf[22] = 1024;
        *&buf[24] = 1192;
        *&buf[28] = 2048;
        *&buf[30] = v212;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Playback get samples", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      VCJitterBuffer_PlaybackGetSamples_cold_1();
    }
  }

  v199 = v10;
  v16 = micro();
  v17 = dbl_1DBD51A10[v9[59] < 4];
  v18 = micro();
  v197 = v16;
  v209 = v16 + v17;
  if (v18 >= v16 + v17)
  {
    v208 = 0;
    v210 = 0;
    goto LABEL_190;
  }

  v208 = 0;
  v210 = 0;
  v204 = (v9 + 306);
  v19 = v212;
  v196 = v212 + 119504;
  while (1)
  {
    v20 = JitterPreloadQueue_Dequeue(*(v9 + 21));
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_19;
    }

    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    v30 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] != 1)
    {
      break;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v9[59];
      *buf = 136316418;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = "_VCJitterBuffer_DequeuePacketsFromPreloadQueue";
      *&buf[22] = 1024;
      *&buf[24] = 637;
      *&buf[28] = 2048;
      *&buf[30] = v19;
      *&buf[38] = 1024;
      *&buf[40] = v20 == 0;
      *&buf[44] = 1024;
      *&buf[46] = v31;
      _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Dequeue packet, is audio packet null:%d, state %d", buf, 0x32u);
      if (!v20)
      {
        goto LABEL_188;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (!v20)
    {
      goto LABEL_188;
    }

LABEL_20:
    if (*(v19 + 216) == 1 && *(v20 + 1856) >= 2u && *(v19 + 284) == 1)
    {
      VCAudioPlayer_ResumeAudioErasureMeasurement(v19 + 288, v20[4]);
    }

    if (v20 >= v20 + 466)
    {
LABEL_249:
      __break(0x5519u);
    }

    *v226 = 0;
    v32 = v20 + 454;
    v211 = v20;
    if (v20[454] >= 1)
    {
      v33 = 0;
      v34 = 0;
      v35 = v20 + 446;
      do
      {
        if (&v35[v33] >= v32 || &v35[v33] < v35)
        {
          goto LABEL_249;
        }

        v37 = *&v35[2 * v34];
        if (*(v212 + 280) == 1)
        {
          *(v37 + 1268) = VCSilencePredictor_PredictSilence(v212 + 840, *(v37 + 1196), *(v37 + 1144));
        }

        v38 = v37 + 1272;
        if (v37 >= v37 + 1272)
        {
          goto LABEL_249;
        }

        v39 = *(v37 + 1144);
        v40 = *(v37 + 1256);
        v41 = *(v37 + 8);
        v42 = JitterQueue_Insert(*(v9 + 22), v37, v226);
        if ((v42 & 1) == 0)
        {
          v38 = 0;
          v37 = 0;
          *&v35[2 * v34] = 0;
        }

        if (v41)
        {
          v43.i32[0] = 1;
          v43.i32[1] = v39;
          *(v9 + 89) = vadd_s32(*(v9 + 89), v43);
          v9[94] = v40;
          if (v42)
          {
            v44 = *(v211 + 228);
            *(v9 + 32) = v44;
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v45 = VRTraceErrorLogLevelToCSTR();
              v46 = *MEMORY[0x1E6986650];
              v47 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  *&buf[4] = v45;
                  *&buf[12] = 2080;
                  *&buf[14] = "_VCJitterBuffer_UpdateRedAudioArrivalTime";
                  *&buf[22] = 1024;
                  *&buf[24] = 347;
                  *&buf[28] = 2048;
                  *&buf[30] = v44;
                  _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Red frame inserted, updating time red frame was used. lastRedAudioArrivalTime=%f", buf, 0x26u);
                  if (!v37)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_47;
                }
              }

              else if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315906;
                *&buf[4] = v45;
                *&buf[12] = 2080;
                *&buf[14] = "_VCJitterBuffer_UpdateRedAudioArrivalTime";
                *&buf[22] = 1024;
                *&buf[24] = 347;
                *&buf[28] = 2048;
                *&buf[30] = v44;
                _os_log_debug_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Red frame inserted, updating time red frame was used. lastRedAudioArrivalTime=%f", buf, 0x26u);
                if (!v37)
                {
                  goto LABEL_48;
                }

                goto LABEL_47;
              }
            }

            if (!v37)
            {
LABEL_48:
              memset(buf, 170, 20);
              if (*(v9 + 156) && *(v37 + 8) == 1)
              {
                v48 = micro();
                LogDump_GetTimestampString(v48);
                Statistics = VCAudioPlayer_GetStatistics((v212 + 288));
                VCAudioPlayer_GetPlaybackFormat(v212 + 288);
                _VCJitterBuffer_DesiredQSize(v212);
                VRLogfilePrint(*(v9 + 156), "%s\t%u\t%u\t%d\t%d\t%d\t%u\t%u\t%d\t%02.6f\t%02.6f\t%02.6f\t%02.6f\t%02.4f\t%02.4f\t%d\t%02.6f\t%02.6f\t%02.6f\t%02.4f\t%02.4f\t%02.4f\t%02.4f\t%02.4f\t%6d\t%6d\t%d\t%d\t%s\t%d\t%u\t%u\t%u\t%d\t%d\t%d\t%02.6f\t%02.4f\t%u\t%2.6f\t%2.6f\t%d\t%d\n", *(v37 + 1176), Statistics[2], Statistics[3], Statistics[7], Statistics[6], *v9, buf);
              }

              goto LABEL_51;
            }

LABEL_47:
            if (v37 >= v38)
            {
              goto LABEL_249;
            }

            goto LABEL_48;
          }

          *(v9 + 91) = vadd_s32(*(v9 + 91), v43);
        }

LABEL_51:
        ++v34;
        v33 += 2;
      }

      while (v34 < *v32);
    }

    LogProfileTimeOverLimit_4("SpkrProc: PreloadQueue_Dequeue and AddPacket", v18, 0.00200000009, v21, v22, v23, v24, v25, v26, v27, v194);
    v50 = *(v211 + 228);
    v51 = 0.0;
    if (VRTraceIsInternalOSInstalled())
    {
      v51 = micro();
    }

    v52 = *VCAudioPlayer_GetPlaybackFormat(v212 + 288);
    memset(buf, 0, 48);
    JTargetJBEstimator_GetSharedSettings(v212 + 38072, buf);
    v53 = *&buf[40];
    v54 = *&buf[32];
    v55 = *&buf[8];
    v56 = *(v212 + 224);
    if (v56 == 1)
    {
      v59 = *(v9 + 33);
      v55 = *&buf[8] + v59;
      if (v59 != 0.0 && VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v60 = VRTraceErrorLogLevelToCSTR();
        v61 = *MEMORY[0x1E6986650];
        v62 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *v226 = 136315906;
            *&v226[4] = v60;
            *v227 = 2080;
            *&v227[2] = "_VCJitterBuffer_ApplyQueueManagementPolicy";
            *&v227[10] = 1024;
            LODWORD(v228) = 217;
            WORD2(v228) = 2048;
            *(&v228 + 6) = v59;
            _os_log_impl(&dword_1DB56E000, v61, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Applying queue steering correction. jitterQueueOffset=%f", v226, 0x26u);
          }
        }

        else if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *v226 = 136315906;
          *&v226[4] = v60;
          *v227 = 2080;
          *&v227[2] = "_VCJitterBuffer_ApplyQueueManagementPolicy";
          *&v227[10] = 1024;
          LODWORD(v228) = 217;
          WORD2(v228) = 2048;
          *(&v228 + 6) = v59;
          _os_log_debug_impl(&dword_1DB56E000, v61, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Applying queue steering correction. jitterQueueOffset=%f", v226, 0x26u);
        }
      }
    }

    else if (!v56)
    {
      IsUnderrunQueueBoostEnabled = VCAudioPlayer_IsUnderrunQueueBoostEnabled(v212 + 288);
      v58 = v55 * ((0.5 - v55) * (0.5 - v55) * 2.5 + 1.0);
      if (((v55 < 0.5) & IsUnderrunQueueBoostEnabled) == 0)
      {
        v58 = v55;
      }

      v53 = v58 - v55;
      v54 = 6;
      v55 = v58;
    }

    v63 = *(v9 + 34);
    if (v55 < v63)
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
            *v226 = 136315650;
            *&v226[4] = v64;
            *v227 = 2080;
            *&v227[2] = "_VCJitterBuffer_ApplyQueueManagementPolicy";
            *&v227[10] = 1024;
            LODWORD(v228) = 221;
            _os_log_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Overriding Desired QueueSize based on network notification", v226, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          *v226 = 136315650;
          *&v226[4] = v64;
          *v227 = 2080;
          *&v227[2] = "_VCJitterBuffer_ApplyQueueManagementPolicy";
          *&v227[10] = 1024;
          LODWORD(v228) = 221;
          _os_log_debug_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Overriding Desired QueueSize based on network notification", v226, 0x1Cu);
        }
      }

      v63 = *(v9 + 34);
      v53 = v63 - v55;
      v54 = 4;
    }

    if (*(v212 + 200) == 3)
    {
      LODWORD(v63) = *(v212 + 248);
      v67 = *&v63 / 1000.0;
    }

    else
    {
      v68 = fmax(*&buf[16], *(v9 + 24));
      if (v55 > v63)
      {
        v63 = v55;
      }

      v67 = fmin(*&buf[24], fmax(v68, v63));
    }

    v69 = *(v9 + 32);
    v70 = v50 - v69;
    v71 = v69 != 0.0;
    if (v50 - v69 >= 30.0)
    {
      v71 = 0;
    }

    v72 = *(v9 + 159);
    if (v72 == 0.0)
    {
      v75 = 0;
    }

    else
    {
      v73 = v9[320];
      if (v73)
      {
        v75 = v50 - v72 < 0.2 && v9[62] < v73;
      }

      else
      {
        v75 = 0;
      }
    }

    v76 = v52;
    v77 = (v67 * v52);
    v78 = v9[62] != 0 && v71;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v78 || v75)
    {
      v19 = v212;
      if (ErrorLogLevelForModule >= 8)
      {
        v84 = VRTraceErrorLogLevelToCSTR();
        v85 = *MEMORY[0x1E6986650];
        v86 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            v87 = v9[62];
            *buf = 136316162;
            *&buf[4] = v84;
            *&buf[12] = 2080;
            *&buf[14] = "_VCJitterBuffer_ShouldAdjustAudioQueuSizeForRed";
            *&buf[22] = 1024;
            *&buf[24] = 305;
            *&buf[28] = 2048;
            *&buf[30] = v70;
            *&buf[38] = 1024;
            *&buf[40] = v87;
            _os_log_impl(&dword_1DB56E000, v85, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Red overhead is enabled. elapsedTimeSinceLastUsedRedFrame=%f, sharedRedAudioDelayInSamples=%d", buf, 0x2Cu);
          }
        }

        else if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
        {
          v158 = v9[62];
          *buf = 136316162;
          *&buf[4] = v84;
          *&buf[12] = 2080;
          *&buf[14] = "_VCJitterBuffer_ShouldAdjustAudioQueuSizeForRed";
          *&buf[22] = 1024;
          *&buf[24] = 305;
          *&buf[28] = 2048;
          *&buf[30] = v70;
          *&buf[38] = 1024;
          *&buf[40] = v158;
          _os_log_debug_impl(&dword_1DB56E000, v85, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Red overhead is enabled. elapsedTimeSinceLastUsedRedFrame=%f, sharedRedAudioDelayInSamples=%d", buf, 0x2Cu);
        }
      }

      Statistical95pDelaySpread = JTargetJBEstimator_GetStatistical95pDelaySpread((v212 + 38072));
      v90 = *(v9 + 159);
      if (v90 == 0.0 || (v91 = v9[320]) == 0 || v50 - v90 >= 0.2 || v9[62] >= v91)
      {
        v91 = v9[62];
      }

      v92 = 0.0;
      if (v91 - (Statistical95pDelaySpread * v76) < v76 * 0.02)
      {
        v92 = v76 * 0.02;
      }

      v93 = (v92 + v91);
      v94 = v76 * 0.18;
      if (v76 * 0.18 >= v93)
      {
        v94 = v93;
      }

      v95 = v94;
      *(v9 + 48) = 0;
      v88 = v94 - v77;
      if (v94 > v77)
      {
        v96 = v88 / v76;
        v53 = fmax(v53, v96);
        *(v9 + 48) = v96;
        v54 = 5;
        v77 = v95;
        goto LABEL_121;
      }
    }

    else
    {
      if (ErrorLogLevelForModule < 8)
      {
        v88 = 0;
        v19 = v212;
        goto LABEL_121;
      }

      v80 = VRTraceErrorLogLevelToCSTR();
      v81 = *MEMORY[0x1E6986650];
      v82 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        v19 = v212;
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v83 = v9[62];
          *buf = 136316162;
          *&buf[4] = v80;
          *&buf[12] = 2080;
          *&buf[14] = "_VCJitterBuffer_ShouldAdjustAudioQueuSizeForRed";
          *&buf[22] = 1024;
          *&buf[24] = 308;
          *&buf[28] = 2048;
          *&buf[30] = v70;
          *&buf[38] = 1024;
          *&buf[40] = v83;
          _os_log_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Red overhead is disabled. elapsedTimeSinceLastUsedRedFrame=%f, sharedRedAudioDelayInSamples=%d", buf, 0x2Cu);
        }
      }

      else
      {
        v19 = v212;
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          v159 = v9[62];
          *buf = 136316162;
          *&buf[4] = v80;
          *&buf[12] = 2080;
          *&buf[14] = "_VCJitterBuffer_ShouldAdjustAudioQueuSizeForRed";
          *&buf[22] = 1024;
          *&buf[24] = 308;
          *&buf[28] = 2048;
          *&buf[30] = v70;
          *&buf[38] = 1024;
          *&buf[40] = v159;
          _os_log_debug_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Red overhead is disabled. elapsedTimeSinceLastUsedRedFrame=%f, sharedRedAudioDelayInSamples=%d", buf, 0x2Cu);
        }
      }
    }

    v88 = 0;
LABEL_121:
    if (v77 != v9[54])
    {
      ++v9[93];
      v9[54] = v77;
      v9[63] = v88;
      VCAudioPlayer_SetMaxHoleSize(v19 + 288, v77 / v76);
    }

    VCAudioPlayer_SetTargetBoostMode(v19 + 288, v54, v53);
    if (v9[70] != v54)
    {
      *(v9 + 296) = 1;
    }

    *(v9 + 36) = v53;
    v9[70] = v54;
    *v9 = v54;
    LogProfileTimeOverLimit_4("SpkrProc: _VCJitterBuffer_UpdateAudioQSize", v51, 0.00499999989, v97, v98, v99, v100, v101, v102, v103, v195);
    memset(buf, 0, 48);
    JTargetJBEstimator_GetSharedSettings(v19 + 38072, buf);
    v104 = *(v9 + 24);
    v105 = *&buf[16];
    v106 = *&buf[8];
    v107 = *&buf[8] * 0.1 + *(v9 + 88) * 0.9;
    *(v9 + 88) = v107;
    if (*(v19 + 200) == 3)
    {
      LODWORD(v104) = *(v19 + 248);
      v108 = *&v104 / 1000.0;
    }

    else
    {
      v108 = fmax(fmax(v105, v104), v106);
    }

    v109 = v108 * 0.1 + *(v9 + 87) * 0.9;
    *(v9 + 87) = v109;
    v110 = v9[59];
    if (v110 - 1 < 2)
    {
      goto LABEL_167;
    }

    if (v110 == 4)
    {
      v111 = v9[104];
      if (v211[1] || *v204 != 1 || ((*(v211 + 7) - *(v9 + 613)) & 0x8000) == 0)
      {
        *(v9 + 613) = *(v211 + 7);
        *(v9 + 1224) = 1;
        v112 = v211[4];
        if (v112 - v9[307] <= 0x7FFFFFFE)
        {
          v113 = v196 + 8 * v111;
          if (v113 >= v204 || v113 < v196)
          {
            goto LABEL_249;
          }

          v114 = *(v211 + 228);
          *(v196 + 8 * v111) = v114;
          v115 = v111 - 1;
          if (!v111)
          {
            v115 = 99;
          }

          v116 = (v196 + 8 * v115);
          if (v116 >= v204 || v116 < v196)
          {
            goto LABEL_249;
          }

          v117 = *v32;
          if (*v32 >= 1)
          {
            v118 = 0;
            v119 = 0;
            v120 = *v116;
            v121 = v114 - *v116;
            v122 = v211 + 446;
            do
            {
              if (&v122[v118] >= v32 || &v122[v118] < v122)
              {
                goto LABEL_249;
              }

              v124 = *&v122[2 * v119];
              if (v124)
              {
                v126 = v120 > 0.0 && v119 == 0;
                VCAudioPlayer_UpdateLastEnqueuedFrameInformation(v212 + 288, v124, v126, v121);
                v117 = *v32;
              }

              ++v119;
              v118 += 2;
            }

            while (v119 < v117);
            v112 = v211[4];
          }

          v9[104] = (v111 + 1) % 100;
          v9[307] = v112;
          v19 = v212;
        }
      }

      v127 = *(v211 + 4);
      LODWORD(v128) = *VCAudioPlayer_GetPlaybackFormat(v19 + 288);
      v129 = v128;
      v130 = (*(v9 + 39) * v129);
      if (v130)
      {
        if (*(v9 + 41) + 3.0 < v127)
        {
          v131 = v9[76] + v130;
          if (v131 >= (v129 * 0.2))
          {
            v131 = (v129 * 0.2);
          }

          v9[76] = v131;
          *(v9 + 41) = v127;
        }

        *(v9 + 42) = v127;
        *(v9 + 39) = 0;
      }

      else if (*(v9 + 42) + 5.0 < v127)
      {
        v141 = v9[76];
        if (v141 >= 1)
        {
          v9[76] = (v141 + v129 * -0.02) & ~((v141 + v129 * -0.02) >> 31);
        }

        *(v9 + 42) = v127;
      }

      v142 = 0.0;
      if (VRTraceIsInternalOSInstalled())
      {
        v142 = micro();
      }

      v143 = JitterQueue_QueuedSamples(*(v9 + 22));
      v151 = (VCAudioPlayer_GetLeftOverSamples(v19 + 288) + v143);
      v152 = *(v9 + 28) * v151 + *(v9 + 23) * (1.0 - *(v9 + 28));
      if (v152 < 0.0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v153 = VRTraceErrorLogLevelToCSTR();
          v154 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v160 = *v207;
            *buf = 136316674;
            *&buf[4] = v153;
            *&buf[12] = 2080;
            *&buf[14] = "_VCJitterBuffer_UpdateAvgQSize";
            *&buf[22] = 1024;
            *&buf[24] = 276;
            *&buf[28] = 2048;
            *&buf[30] = v160;
            *&buf[38] = 2048;
            *&buf[40] = v152;
            *&buf[48] = 1024;
            *v223 = v143;
            *&v223[4] = 2048;
            v224 = v151;
            _os_log_error_impl(&dword_1DB56E000, v154, OS_LOG_TYPE_ERROR, " [%s] %s:%d Please file a radar on AVConference Media | All. Average JB queue size is negative! Current size: %f, new size: %f, jitter samples: %d, total samples: %f", buf, 0x40u);
          }
        }

        reportingSymptom();
        v152 = 0.0;
      }

      *v207 = v152;
      LogProfileTimeOverLimit_4("SpkrProc: UpdateAvgQSize", v142, 0.00499999989, v144, v145, v146, v147, v148, v149, v150, v194);
      goto LABEL_180;
    }

    if (v110 != 3)
    {
      v132 = *(v9 + 22);
      v133 = _VCJitterBuffer_DesiredQSize(v19);
      JitterQueue_DiscardExcess(v132, v133);
      v9[58] = 0;
LABEL_167:
      *(v9 + 23) = JitterQueue_QueuedSamples(*(v9 + 22));
LABEL_180:
      if (v9[58])
      {
        v155 = *(v9 + 22);
        v156 = _VCJitterBuffer_DesiredQSize(v19);
        JitterQueue_DiscardExcess(v155, v156);
        v9[58] = 0;
      }

      LogProfileTimeOverLimit_4("SpkrProc: PreloadQueueDequeue", v18, 0.00200000009, v134, v135, v136, v137, v138, v139, v140, v194);
      JitterPreloadQueue_AudioPacketFree(*(v9 + 21), v211);
      ++v210;
      v208 = 1;
      goto LABEL_183;
    }

    JitterPreloadQueue_AudioPacketFree(*(v9 + 21), v211);
LABEL_183:
    v18 = micro();
    if (v18 >= v209)
    {
      goto LABEL_190;
    }
  }

  if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_19;
  }

  v157 = v9[59];
  *buf = 136316418;
  *&buf[4] = v28;
  *&buf[12] = 2080;
  *&buf[14] = "_VCJitterBuffer_DequeuePacketsFromPreloadQueue";
  *&buf[22] = 1024;
  *&buf[24] = 637;
  *&buf[28] = 2048;
  *&buf[30] = v19;
  *&buf[38] = 1024;
  *&buf[40] = v20 == 0;
  *&buf[44] = 1024;
  *&buf[46] = v157;
  _os_log_debug_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] Dequeue packet, is audio packet null:%d, state %d", buf, 0x32u);
  if (v20)
  {
    goto LABEL_20;
  }

LABEL_188:
  if (v9[59] == 3)
  {
    JitterQueue_Reset(*(v9 + 22));
    VCAudioPlayer_NewStream(v19 + 288);
    v9[59] = 0;
  }

LABEL_190:
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v168 = VRTraceErrorLogLevelToCSTR();
    v169 = *MEMORY[0x1E6986650];
    v170 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
      {
        v171 = v9[59];
        *buf = 136316418;
        *&buf[4] = v168;
        *&buf[12] = 2080;
        *&buf[14] = "_VCJitterBuffer_DequeuePacketsFromPreloadQueue";
        *&buf[22] = 1024;
        *&buf[24] = 690;
        *&buf[28] = 2048;
        *&buf[30] = v212;
        *&buf[38] = 1024;
        *&buf[40] = v171;
        *&buf[44] = 1024;
        *&buf[46] = v208;
        _os_log_impl(&dword_1DB56E000, v169, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] JBState[%d] packetDequeue[%d]", buf, 0x32u);
      }
    }

    else if (os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
    {
      v193 = v9[59];
      *buf = 136316418;
      *&buf[4] = v168;
      *&buf[12] = 2080;
      *&buf[14] = "_VCJitterBuffer_DequeuePacketsFromPreloadQueue";
      *&buf[22] = 1024;
      *&buf[24] = 690;
      *&buf[28] = 2048;
      *&buf[30] = v212;
      *&buf[38] = 1024;
      *&buf[40] = v193;
      *&buf[44] = 1024;
      *&buf[46] = v208;
      _os_log_debug_impl(&dword_1DB56E000, v169, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] JBState[%d] packetDequeue[%d]", buf, 0x32u);
    }
  }

  LogProfileTimeOverLimit_4("SpkrProc: PreloadQueueDequeue Loop, Iterations = %d", v197, 0.00200000009, v161, v162, v163, v164, v165, v166, v167, v210);
  *v226 = v206;
  *v227 = -1431655766;
  *&v226[8] = SampleCount;
  *&v227[4] = a3;
  *&v228 = a5;
  *(&v228 + 1) = &v218;
  v229 = &v220;
  v230 = a7;
  v231 = &v219;
  v215 = -1431655766;
  *&v217 = -1;
  *(&v217 + 1) = -1;
  v213[0] = JTargetJBEstimator_GetSpikeInfo(v212 + 38072);
  v213[1] = JTargetJBEstimator_GetFrequentSpikeInfo(v212 + 38072);
  v214 = _VCJitterBuffer_DesiredQSize(v212);
  v216 = (v9 + 46);
  v217 = *(v9 + 12);
  if (*(v212 + 216) != 1)
  {
    v174 = a4;
    if (*(v9 + 1264) == 1)
    {
      *(v9 + 1264) = 0;
      VCAudioPlayer_ForceDecoderReset(v212 + 288);
      *(v9 + 159) = v199;
      v9[320] = v9[62];
    }

    goto LABEL_210;
  }

  v172 = JitterQueue_QueuedSamples(*(v9 + 22));
  buf[0] = 0;
  v221 = 0;
  LastFramePriority = JitterQueue_GetLastFramePriority(*(v9 + 22), buf, &v221);
  v174 = a4;
  if (*(v212 + 216) == 1)
  {
    v175 = buf[0] < 0x7Fu ? LastFramePriority : 0;
    if (v175 == 1 && *(v212 + 284) == 1)
    {
      VCAudioPlayer_SuspendAudioErasureMeasurement(v212 + 288);
    }
  }

  if (v172)
  {
    *(v9 + 157) = v199;
    v176 = *(v9 + 1264);
    *(v9 + 1264) = 0;
    if (v176)
    {
      VCAudioPlayer_ForceDecoderReset(v212 + 288);
      *(v9 + 159) = v199;
      v9[320] = v9[62];
      if (v9[316])
      {
        goto LABEL_240;
      }
    }

LABEL_210:
    v177 = (v212 + 288);
    if (v9[59] > 3)
    {
      VCAudioPlayer_GetSamples(v177, v226, v213);
      if (v219 == 1)
      {
        v178 = v9[100];
        v9[100] = v178 + 1;
        v179 = v178 < 249;
      }

      else
      {
        v9[100] = 0;
        v179 = 1;
      }

      v180 = *(v9 + 51);
      v181 = v180 != 0.0;
      if (v199 - v180 > 30.0)
      {
        v181 = 0;
      }

      if (!v179 && !v181)
      {
        reportingSymptom();
        *(v9 + 51) = v199;
      }
    }

    else
    {
      VCAudioPlayer_GetSilenceSamples(v177, v226, v213);
    }

    if (v218 >= 0)
    {
      v182 = 1;
    }

    else
    {
      v182 = -1;
    }

    VCAudioBufferList_SetPriority(v206, v182);
    if (!v9[61])
    {
      v9[61] = v208;
    }

    if (a6)
    {
      *a6 = v220;
    }

    if (v174)
    {
      *v174 = VCAudioPlayer_IsTimestampValid(v212 + 288);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v183 = VRTraceErrorLogLevelToCSTR();
      v184 = *MEMORY[0x1E6986650];
      v185 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
        {
          v186 = v9[59];
          v187 = *a3;
          if (a7)
          {
            v188 = *a7;
          }

          else
          {
            v188 = -1;
          }

          *buf = 136317186;
          *&buf[4] = v183;
          *&buf[12] = 2080;
          *&buf[14] = "VCJitterBuffer_PlaybackGetSamples";
          *&buf[22] = 1024;
          *&buf[24] = 1248;
          *&buf[28] = 2048;
          *&buf[30] = v212;
          *&buf[38] = 1024;
          *&buf[40] = v186;
          *&buf[44] = 1024;
          *&buf[46] = SampleCount;
          *v223 = 1024;
          *&v223[2] = v187;
          LOWORD(v224) = 1024;
          *(&v224 + 2) = v220;
          HIWORD(v224) = 1024;
          v225 = v188;
          _os_log_impl(&dword_1DB56E000, v184, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] JBState[%d] sampleCount[%d] timestamp[%d] isSilence[%d] consecutiveSilenceCount[%d]", buf, 0x44u);
        }
      }

      else if (os_log_type_enabled(v185, OS_LOG_TYPE_DEBUG))
      {
        v189 = v9[59];
        v190 = *a3;
        if (a7)
        {
          v191 = *a7;
        }

        else
        {
          v191 = -1;
        }

        *buf = 136317186;
        *&buf[4] = v183;
        *&buf[12] = 2080;
        *&buf[14] = "VCJitterBuffer_PlaybackGetSamples";
        *&buf[22] = 1024;
        *&buf[24] = 1248;
        *&buf[28] = 2048;
        *&buf[30] = v212;
        *&buf[38] = 1024;
        *&buf[40] = v189;
        *&buf[44] = 1024;
        *&buf[46] = SampleCount;
        *v223 = 1024;
        *&v223[2] = v190;
        LOWORD(v224) = 1024;
        *(&v224 + 2) = v220;
        HIWORD(v224) = 1024;
        v225 = v191;
        _os_log_debug_impl(&dword_1DB56E000, v184, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] JBState[%d] sampleCount[%d] timestamp[%d] isSilence[%d] consecutiveSilenceCount[%d]", buf, 0x44u);
      }
    }
  }

  else
  {
    if (v9[316])
    {
      *(v9 + 1264) = 1;
      goto LABEL_240;
    }

    v192 = v199 - *(v9 + 157);
    *(v9 + 1264) = v192 > 0.2;
    if (v192 <= 0.2)
    {
      goto LABEL_210;
    }

LABEL_240:
    VCAudioPlayer_GetSilenceSamples((v212 + 288), v226, v213);
    if (a6)
    {
      *a6 = 1;
    }

    VCAudioBufferList_SetPriority(v206, 1);
    if (a4)
    {
      *a4 = VCAudioPlayer_IsTimestampValid(v212 + 288);
    }
  }
}

double VCJitterBuffer_GetAWDReportingMetrics(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    JitterQueue_GetUnderflowRateForInterval(*(a1 + 119256));
    *a2 = v4;
    *(a2 + 4) = VCAudioPlayer_GetFrameErasureRate(a1 + 288);
    *(a2 + 8) = VCAudioPlayer_GetSpeechErasureRate(a1 + 288);
    v5 = JitterQueue_QueuedSamples(*(a1 + 119256));
    *(a2 + 12) = VCAudioPlayer_GetLeftOverSamples(a1 + 288) + v5;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v9 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *a2;
          v11 = *(a2 + 4);
          v12 = *(a2 + 12);
          v16 = 136316674;
          v17 = v7;
          v18 = 2080;
          v19 = "VCJitterBuffer_GetAWDReportingMetrics";
          v20 = 1024;
          v21 = 1266;
          v22 = 2048;
          v23 = a1;
          v24 = 2048;
          v25 = v10;
          v26 = 2048;
          v27 = v11;
          v28 = 1024;
          v29 = v12;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] AWD Metrics: underflowRate[%f] frameErasureRate[%f] totalQueueSizeSamples[%d]", &v16, 0x40u);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = *a2;
        v14 = *(a2 + 4);
        v15 = *(a2 + 12);
        v16 = 136316674;
        v17 = v7;
        v18 = 2080;
        v19 = "VCJitterBuffer_GetAWDReportingMetrics";
        v20 = 1024;
        v21 = 1266;
        v22 = 2048;
        v23 = a1;
        v24 = 2048;
        v25 = v13;
        v26 = 2048;
        v27 = v14;
        v28 = 1024;
        v29 = v15;
        _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] AWD Metrics: underflowRate[%f] frameErasureRate[%f] totalQueueSizeSamples[%d]", &v16, 0x40u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_GetAWDReportingMetrics_cold_1();
    }
  }

  return result;
}

void VCJitterBuffer_GetWRMReportingMetrics(_DWORD *a1, int *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    WrmMetrics = VCAudioPlayer_GetWrmMetrics((a1 + 72));
    *a2 = *WrmMetrics;
    *(a2 + 2) = *(WrmMetrics + 16);
    a2[8] = a1[29856];
    *(a2 + 3) = _VCJitterBuffer_DesiredQSize(a1);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *a2;
          v9 = a2[1];
          v10 = a2[2];
          v11 = a2[3];
          v12 = *(a2 + 2);
          v13 = *(a2 + 3);
          v20 = 136317442;
          v21 = v5;
          v22 = 2080;
          v23 = "VCJitterBuffer_GetWRMReportingMetrics";
          v24 = 1024;
          v25 = 1283;
          v26 = 2048;
          v27 = a1;
          v28 = 1024;
          v29 = v8;
          v30 = 1024;
          v31 = v9;
          v32 = 1024;
          v33 = v10;
          v34 = 1024;
          v35 = v11;
          v36 = 2048;
          v37 = v12;
          v38 = 2048;
          v39 = v13;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] WRM Metrics: playbackCount[%d] playbackCountSpeech[%d] erasureCount[%d] erasureSilence[%d] nominalJitterBufferDelay[%llu] targetJitterQueueSize(Audio)[%llu]", &v20, 0x52u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v14 = *a2;
        v15 = a2[1];
        v16 = a2[2];
        v17 = a2[3];
        v18 = *(a2 + 2);
        v19 = *(a2 + 3);
        v20 = 136317442;
        v21 = v5;
        v22 = 2080;
        v23 = "VCJitterBuffer_GetWRMReportingMetrics";
        v24 = 1024;
        v25 = 1283;
        v26 = 2048;
        v27 = a1;
        v28 = 1024;
        v29 = v14;
        v30 = 1024;
        v31 = v15;
        v32 = 1024;
        v33 = v16;
        v34 = 1024;
        v35 = v17;
        v36 = 2048;
        v37 = v18;
        v38 = 2048;
        v39 = v19;
        _os_log_debug_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] WRM Metrics: playbackCount[%d] playbackCountSpeech[%d] erasureCount[%d] erasureSilence[%d] nominalJitterBufferDelay[%llu] targetJitterQueueSize(Audio)[%llu]", &v20, 0x52u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_GetWRMReportingMetrics_cold_1();
    }
  }
}

double VCJitterBuffer_GetPlaybackReportingMetrics(uint64_t a1, uint64_t a2)
{
  v92 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a2 + 140) = *(a1 + 280);
    *a2 = VCAudioPlayer_GetAverageLossRate(a1 + 288);
    *(a2 + 4) = VCAudioPlayer_GetLastAverageMissingPercentOverWindow(a1 + 288);
    *(a2 + 12) = VCAudioPlayer_GetAverageJitterSizeForWindow(a1 + 288);
    AverageJitterSizeForSession = VCAudioPlayer_GetAverageJitterSizeForSession(a1 + 288);
    *(a2 + 16) = AverageJitterSizeForSession;
    *(a2 + 8) = VCAudioPlayer_MaxInterArrivalTimeForWindow(a1 + 288);
    *(a2 + 136) = VCAudioPlayer_GetDTMFEventCount(a1 + 288);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v6 = MEMORY[0x1E6986640];
    v7 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 8)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v7;
      v10 = *v7;
      if (*v6 == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *a2;
          v12 = *(a2 + 4);
          v13 = *(a2 + 12);
          v14 = *(a2 + 16);
          v15 = *(a2 + 8);
          *buf = 136317186;
          v69 = v8;
          v70 = 2080;
          v71 = "VCJitterBuffer_GetPlaybackReportingMetrics";
          v72 = 1024;
          v73 = 1300;
          v74 = 2048;
          v75 = a1;
          v76 = 2048;
          *v77 = v11;
          *&v77[8] = 2048;
          v78 = v12;
          *v79 = 2048;
          *&v79[2] = v13;
          v80 = 2048;
          v81 = v14;
          v82 = 2048;
          *v83 = v15;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] VRDB Playback Metrics: avgLossRate[%f] lastAvgMissPercent[%f] averageJitterForWindow[%f] averageJitterForSession[%f] maxJitterForWindow[%f]", buf, 0x58u);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v43 = *a2;
        v44 = *(a2 + 4);
        v45 = *(a2 + 12);
        v46 = *(a2 + 16);
        v47 = *(a2 + 8);
        *buf = 136317186;
        v69 = v8;
        v70 = 2080;
        v71 = "VCJitterBuffer_GetPlaybackReportingMetrics";
        v72 = 1024;
        v73 = 1300;
        v74 = 2048;
        v75 = a1;
        v76 = 2048;
        *v77 = v43;
        *&v77[8] = 2048;
        v78 = v44;
        *v79 = 2048;
        *&v79[2] = v45;
        v80 = 2048;
        v81 = v46;
        v82 = 2048;
        *v83 = v47;
        _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] VRDB Playback Metrics: avgLossRate[%f] lastAvgMissPercent[%f] averageJitterForWindow[%f] averageJitterForSession[%f] maxJitterForWindow[%f]", buf, 0x58u);
      }
    }

    VCAudioPlayer_GetTimescaleMetrics(a1 + 288, a2);
    VCAudioPlayer_GetRedErasureMetrics(a1 + 288, a2);
    v67 = 0uLL;
    JTargetJBEstimator_GetSpikeReportingMetrics(a1 + 38072, &v67);
    v17 = v67.n128_u32[1];
    *(a2 + 144) = v67.n128_u32[0];
    *(a2 + 148) = v17;
    *(a2 + 152) = v67.n128_u64[1];
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *v7;
      v20 = *v7;
      if (*v6 == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a2 + 20);
          v22 = *(a2 + 24);
          v23 = *(a2 + 40);
          v24 = *(a2 + 44);
          v25 = *(a2 + 48);
          v26 = *(a2 + 52);
          v27 = *(a2 + 56);
          v28 = *(a2 + 28);
          v29 = *(a2 + 36);
          v30 = *(a2 + 92);
          v31 = *(a2 + 72);
          *buf = 136318722;
          v69 = v18;
          v70 = 2080;
          v71 = "VCJitterBuffer_GetPlaybackReportingMetrics";
          v72 = 1024;
          v73 = 1310;
          v74 = 2048;
          v75 = a1;
          v76 = 2048;
          *v77 = v21;
          *&v77[8] = 2048;
          v78 = v22;
          *v79 = 2048;
          *&v79[2] = v23;
          v80 = 2048;
          v81 = v24;
          v82 = 1024;
          *v83 = v25;
          *&v83[4] = 1024;
          *&v83[6] = v26;
          LOWORD(v84) = 1024;
          *(&v84 + 2) = v27;
          HIWORD(v84) = 2048;
          v85 = v28;
          v86 = 2048;
          v87 = v29;
          v88 = 1024;
          v89 = v30;
          v90 = 1024;
          v91 = v31;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] VRDB RED Playback Metrics: totalFrameErasureRate[%f] totalFrameErasureRateAlt[%f] redErasureCompensationRate[%f] maxRedFrameRecoveryDepth[%f] redAudioFramesPlayed[%d] redAudioBytesPlayed[%d] totalFramesPlayed[%d] totalSpeechErasureRate[%f] totalWindowedErasureRate[%f] maxConsecutiveAudioErasures[%d], totalErasureCount[%u]", buf, 0x80u);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v48 = *(a2 + 20);
        v49 = *(a2 + 24);
        v50 = *(a2 + 40);
        v51 = *(a2 + 44);
        v52 = *(a2 + 48);
        v53 = *(a2 + 52);
        v54 = *(a2 + 56);
        v55 = *(a2 + 28);
        v56 = *(a2 + 36);
        v57 = *(a2 + 92);
        v58 = *(a2 + 72);
        *buf = 136318722;
        v69 = v18;
        v70 = 2080;
        v71 = "VCJitterBuffer_GetPlaybackReportingMetrics";
        v72 = 1024;
        v73 = 1310;
        v74 = 2048;
        v75 = a1;
        v76 = 2048;
        *v77 = v48;
        *&v77[8] = 2048;
        v78 = v49;
        *v79 = 2048;
        *&v79[2] = v50;
        v80 = 2048;
        v81 = v51;
        v82 = 1024;
        *v83 = v52;
        *&v83[4] = 1024;
        *&v83[6] = v53;
        LOWORD(v84) = 1024;
        *(&v84 + 2) = v54;
        HIWORD(v84) = 2048;
        v85 = v55;
        v86 = 2048;
        v87 = v56;
        v88 = 1024;
        v89 = v57;
        v90 = 1024;
        v91 = v58;
        _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] VRDB RED Playback Metrics: totalFrameErasureRate[%f] totalFrameErasureRateAlt[%f] redErasureCompensationRate[%f] maxRedFrameRecoveryDepth[%f] redAudioFramesPlayed[%d] redAudioBytesPlayed[%d] totalFramesPlayed[%d] totalSpeechErasureRate[%f] totalWindowedErasureRate[%f] maxConsecutiveAudioErasures[%d], totalErasureCount[%u]", buf, 0x80u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *v7;
      v34 = *v7;
      if (*v6 == 1)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(a2 + 96);
          v36 = *(a2 + 100);
          v37 = *(a2 + 104);
          v38 = *(a2 + 108);
          v39 = *(a2 + 112);
          v40 = *(a2 + 116);
          v41 = *(a2 + 124);
          v42 = *(a2 + 120);
          *buf = 136317954;
          v69 = v32;
          v70 = 2080;
          v71 = "VCJitterBuffer_GetPlaybackReportingMetrics";
          v72 = 1024;
          v73 = 1312;
          v74 = 2048;
          v75 = a1;
          v76 = 1024;
          *v77 = v35;
          *&v77[4] = 1024;
          *&v77[6] = v36;
          LOWORD(v78) = 1024;
          *(&v78 + 2) = v37;
          HIWORD(v78) = 1024;
          *v79 = v38;
          *&v79[4] = 1024;
          *&v79[6] = v39;
          v80 = 2048;
          v81 = v40;
          v82 = 2048;
          *v83 = v41;
          *&v83[8] = 2048;
          v84 = v42;
          _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] VRDB Timescale Metrics: totalTimescaleCount=%d silenceTimescaleCount=%d speechTimescaleCount=%d expandTimescaleCount=%d compressTimescaleCount=%d totaltimescaleRate=%f silenceTimescaleRate=%f speechTimescaleRate=%f", buf, 0x62u);
        }
      }

      else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v59 = *(a2 + 96);
        v60 = *(a2 + 100);
        v61 = *(a2 + 104);
        v62 = *(a2 + 108);
        v63 = *(a2 + 112);
        v64 = *(a2 + 116);
        v65 = *(a2 + 124);
        v66 = *(a2 + 120);
        *buf = 136317954;
        v69 = v32;
        v70 = 2080;
        v71 = "VCJitterBuffer_GetPlaybackReportingMetrics";
        v72 = 1024;
        v73 = 1312;
        v74 = 2048;
        v75 = a1;
        v76 = 1024;
        *v77 = v59;
        *&v77[4] = 1024;
        *&v77[6] = v60;
        LOWORD(v78) = 1024;
        *(&v78 + 2) = v61;
        HIWORD(v78) = 1024;
        *v79 = v62;
        *&v79[4] = 1024;
        *&v79[6] = v63;
        v80 = 2048;
        v81 = v64;
        v82 = 2048;
        *v83 = v65;
        *&v83[8] = 2048;
        v84 = v66;
        _os_log_debug_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] VRDB Timescale Metrics: totalTimescaleCount=%d silenceTimescaleCount=%d speechTimescaleCount=%d expandTimescaleCount=%d compressTimescaleCount=%d totaltimescaleRate=%f silenceTimescaleRate=%f speechTimescaleRate=%f", buf, 0x62u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_GetPlaybackReportingMetrics_cold_1();
    }
  }

  return result;
}

void VCJitterBuffer_GetReportingMetrics(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  if (a1)
  {
    v11 = *(a1 + 118704);
    *&a10 = *&v11;
    *(a1 + 119428) = vbsl_s8(vmovn_s64(vcgtq_f64(vdupq_lane_s64(v11, 0), vcvtq_f64_f32(*(a1 + 119428)))), vdup_lane_s32(*&a10, 0), *(a1 + 119428));
    v12 = *(a1 + 119424);
    v13 = *(a1 + 119440);
    v14 = *(a1 + 119456);
    *(a2 + 48) = *(a1 + 119472);
    *(a2 + 16) = v13;
    *(a2 + 32) = v14;
    *a2 = v12;
    VRLogfilePrint(*(a1 + 120328), "Red Rx Stats, redAudioFramesReceived = %d , redAudioBytesReceived = %d , redAudioFramesDiscarded = %d , redAudioBytesDiscarded = %d \n", a3, a4, a5, a6, a7, a8, *(a2 + 12));
    *(a1 + 119452) = 0;
    *(a1 + 119436) = 0u;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_GetReportingMetrics_cold_1();
    }
  }
}

uint64_t VCJitterBuffer_GetRTCPXRJitterBufferParameters(uint64_t result, _WORD *a2, _WORD *a3, _WORD *a4)
{
  v6 = result;
  v7 = (result + 119256);
  v8 = (*(result + 120320) * 1000.0);
  if (a2)
  {
    *a2 = v8;
  }

  if (a3)
  {
    PlaybackFormat = VCAudioPlayer_GetPlaybackFormat(result + 288);
    v10 = JitterQueue_QueuedSamples(*v7);
    result = VCAudioPlayer_GetLeftOverSamples(v6 + 288);
    v11 = 1000 * (result + v10) / *PlaybackFormat;
    if (v8 >= v11)
    {
      LOWORD(v11) = v8;
    }

    *a3 = v11;
  }

  if (a4)
  {
    *a4 = (*(v6 + 38104) * 1000.0);
  }

  return result;
}

BOOL VCJitterBuffer_GetIsRunning(_BOOL8 result)
{
  if (result)
  {
    return *(result + 119316) == 4;
  }

  return result;
}

double VCJitterBuffer_GetLastDecodedAudioFrameInfo(uint64_t a1, __n128 *a2)
{
  if (a1)
  {
    if (a2)
    {
      *&result = VCAudioPlayer_GetLastDecodedAudioFrameInfo(a1 + 288, a2).n128_u64[0];
    }
  }

  return result;
}

void VCJitterBuffer_SetMode(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v5;
        *&buf[12] = 2080;
        *&buf[14] = "VCJitterBuffer_SetMode";
        *&buf[22] = 1024;
        LODWORD(v13) = 1401;
        WORD2(v13) = 1024;
        *(&v13 + 6) = a2;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Jitter buffer configured with mode=%d", buf, 0x22u);
      }
    }

    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    *&buf[8] = 0u;
    *(a1 + 200) = a2;
    v10 = 0;
    v11 = 0;
    _VCJitterBuffer_GetMinMaxQueueSizeFromConfig(a1, &v11, &v10, 0.0);
    v8 = v10;
    v7 = v11;
    *(a1 + 120320) = v11;
    *buf = v7;
    v9 = 0.1;
    if (!a2)
    {
      v9 = 0.25;
    }

    *&buf[16] = v8;
    *&v13 = v9;
    *(&v14 + 1) = 0x3FEE666666666666;
    JTargetJBEstimator_UpdateJitterBufferParams(a1 + 38072, buf);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_SetMode_cold_1();
    }
  }
}

void VCJitterBuffer_SetNetworkType(uint64_t a1, int a2, int a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136316418;
        v12 = v9;
        v13 = 2080;
        v14 = "VCJitterBuffer_SetNetworkType";
        v15 = 1024;
        v16 = 1421;
        v17 = 1024;
        v18 = a2;
        v19 = 1024;
        v20 = a3;
        v21 = 1024;
        v22 = a4;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isCellular[%d] localCellTech[%d] remoteCellTech[%d]", &v11, 0x2Eu);
      }
    }

    JTargetJBEstimator_SetNetworkType(a1 + 38072, a2, a3, a4);
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_SetNetworkType_cold_1();
    }
  }
}

double VCJitterBuffer_ProcessWiFiNetworkNotification(uint64_t a1, __int128 *a2, double a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1 + 117738;
    if (*(a2 + 8) == 1)
    {
      LOWORD(a3) = *(a2 + 6);
      v6 = 1;
      v7 = *&a3 / 1000.0;
    }

    else
    {
      v6 = 0;
      v7 = 0.0;
    }

    *(a1 + 119352) = v7;
    *v5 = v6;
    v8 = *a2;
    *(a1 + 120368) = *a2;
    if (*(a2 + 5) != -1 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *a2;
        v12 = *(a2 + 8);
        v13 = *(a2 + 5);
        v14 = *(a2 + 6);
        v15 = *(v5 + 1614);
        v16 = *(v5 + 918);
        v18 = 136317442;
        v19 = v9;
        v20 = 2080;
        v21 = "VCJitterBuffer_ProcessWiFiNetworkNotification";
        v22 = 1024;
        v23 = 1439;
        v24 = 2048;
        v25 = a1;
        v26 = 2048;
        v27 = v11;
        v28 = 1024;
        v29 = v12;
        v30 = 1024;
        v31 = v13;
        v32 = 1024;
        v33 = v14;
        v34 = 2048;
        v35 = v15;
        v36 = 2048;
        v37 = v16;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] Network Notification timestamp=%llu intermittentState=%u estimatedIntermittentPeriod=%u singleOutagePeriod=%u NWNotificationTarget=%f targetJBSize=%f", &v18, 0x56u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_ProcessWiFiNetworkNotification_cold_1();
    }
  }

  return *&v8;
}

__n128 VCJitterBuffer_ProcessCellularNetworkNotification(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *a2;
    if (*a2 > 3)
    {
      if (v4 == 4)
      {
        _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeCDRX(a1, a2);
      }

      else if (v4 == 5)
      {
        _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeOutage(a1, a2);
      }
    }

    else if (v4)
    {
      if (v4 == 2)
      {
        _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeLinkMeasurement(a1, a2);
      }
    }

    else
    {
      _VCJitterBuffer_LogNWNotificationBBAdvisoryTypeDefault(a1, a2);
    }

    result = *a2;
    v6 = *(a2 + 16);
    *(a1 + 120384) = *a2;
    *(a1 + 120400) = v6;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_ProcessCellularNetworkNotification_cold_1();
    }
  }

  return result;
}

void VCJitterBuffer_SetSkipDecodeOnSilence(uint64_t a1, char a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 216) = a2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 216);
        v6 = 136316162;
        v7 = v3;
        v8 = 2080;
        v9 = "VCJitterBuffer_SetSkipDecodeOnSilence";
        v10 = 1024;
        v11 = 1472;
        v12 = 2048;
        v13 = a1;
        v14 = 1024;
        v15 = v5;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCJitterBuffer[%p] skipDecodeOnSilence=%d", &v6, 0x2Cu);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCJitterBuffer_SetSkipDecodeOnSilence_cold_1();
    }
  }
}

uint64_t VCJitterBuffer_SetPayloadInfo(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      *(result + 120416) = a2;
    }
  }

  return result;
}

void VCJitterBuffer_SetVADFilteringEnabled(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 284) = a2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315906;
        v6 = v3;
        v7 = 2080;
        v8 = "VCJitterBuffer_SetVADFilteringEnabled";
        v9 = 1024;
        v10 = 1484;
        v11 = 1024;
        v12 = a2;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting vadfilteringEnabled=%d", &v5, 0x22u);
      }
    }
  }
}

char *VCJitterBuffer_AudioPacketAlloc(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 119248);

    return JitterPreloadQueue_AudioPacketAlloc(v2);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCJitterBuffer_AudioPacketAlloc_cold_1();
      }
    }

    return 0;
  }
}

char *VCJitterBuffer_AudioFrameAlloc(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 119248);

    return JitterPreloadQueue_AudioFrameAlloc(v2);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCJitterBuffer_AudioFrameAlloc_cold_1();
      }
    }

    return 0;
  }
}

void LogProfileTimeOverLimit_4(const char *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v44 = *MEMORY[0x1E69E9840];
  if (VRTraceIsInternalOSInstalled())
  {
    v14 = micro() - a2;
    if (v14 > a3)
    {
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42 = v15;
      v43 = v15;
      v40 = v15;
      v41 = v15;
      v38 = v15;
      v39 = v15;
      v36 = v15;
      v37 = v15;
      v34 = v15;
      v35 = v15;
      v33 = v15;
      v31 = v15;
      v32 = v15;
      v29 = v15;
      v30 = v15;
      *__str = v15;
      vsnprintf(__str, 0x100uLL, a1, &a11);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v19 = v16;
          v20 = 2080;
          v21 = "_LogProfileTimeLimitHelper";
          v22 = 1024;
          v23 = 36;
          v24 = 2080;
          v25 = __str;
          v26 = 2048;
          v27 = v14;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: Took a long time %fs", buf, 0x30u);
        }
      }
    }
  }
}

void sub_1DBB62F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DBB63184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void RTCPGetSummaryReportBlock_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v2, v3, " [%s] %s:%d Haven't received any RTP packet yet", v4, v5, v6, v7, 2u);
    }
  }

  *a1 = -2147418095;
}

void RTCPGetSummaryReportBlock_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1(&dword_1DB56E000, v2, v3, " [%s] %s:%d RTCP XR is not enabled", v4, v5, v6, v7, 2u);
    }
  }

  *a1 = 67;
}

double machTimeScale_cold_1()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(v3);
  LODWORD(v1) = v3[0].denom;
  LODWORD(v0) = v3[0].numer;
  result = v0 / v1 / 1000000000.0;
  qword_1EDBDA838 = *&result;
  __dmb(0xBu);
  _MergedGlobals = 1;
  return result;
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  OUTLINED_FUNCTION_6();
  v6 = 212;
  v7 = 2048;
  v8 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Unsupported frame size, numPacketsInFrame=%zu", &v3, 0x26u);
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_5(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 216;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Error in preparing output", &v2, 0x1Cu);
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_6()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCWRS_EncoderFrameEnqueue failed result=%x", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_7()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCWRSFrameRef_Create failed result=%d", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_8()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_9()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorFrameBased_PerformTryEncode_cold_10()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorFrameBased_FlushPackets_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECGeneratorFrameBased_PassThrough_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorFrameBased_Create_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCWRSFECTransmitter_Create failed error=%d", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECGeneratorFrameBased_Create_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d failed error=%d", v2, v3, v4, v5, v6);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECGeneratorFrameBased_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECGeneratorFrameBased_Create_cold_4()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

uint64_t VCFECGeneratorFrameBased_Create_cold_5(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 1;
  }

  VRTraceErrorLogLevelToCSTR();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
  }

  result = 0;
  *a1 = -2144141311;
  return result;
}

void _VCFECGeneratorFrameBased_FillHeaderVersionSpecific_cold_1(uint64_t a1, unsigned __int8 *a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "_VCFECGeneratorFrameBased_FillHeaderVersionSpecific";
  v8 = 1024;
  v9 = 127;
  v10 = 1024;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid FEC Header Version=%d", &v4, 0x22u);
}

void _VCFECGeneratorFrameBased_SetFrameSequenceNumber_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _AVCRateController_ConfigureInternal_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, "AVCRC [%s] %s:%d AdaptiveLearning(AVCRateController): Initial bitrate defaulted to %d", v1, 0x22u);
}

void _AVCRateController_ConfigureInternal_cold_2()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _AVCRateController_NotifyTargetBitrateChange_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void _AVCRateController_DoRateControlWithStatistics_cold_1(uint64_t a1, int *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  *(a1 + 1160) = [*(a1 + 1920) actualBitrate];
  v6 = *a2;
  if (*a2 == 2)
  {
    *(a1 + 1524) = a2[13];
    *(a1 + 1528) = a2[14];
    *(a1 + 1532) = *(a2 + 92);
    *(a1 + 1536) = *(a2 + 93);
    goto LABEL_15;
  }

  if (v6 == 5)
  {
    *(a1 + 1296) = a2[11];
    *(a1 + 1300) = a2[12];
    *(a1 + 1292) = a2[9];
    *(a1 + 1288) = a2[10];
    goto LABEL_15;
  }

  if (v6 != 15)
  {
    goto LABEL_15;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  if (*(a1 + 72) != 12)
  {
    goto LABEL_15;
  }

  if ((VCRateControlProbingSequenceController_ShouldRequestProbingSequence(*(a1 + 1592), (a2 + 6), v4, v5) & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = *(a1 + 1680);
  v8 = *(a1 + 1696);
  v9 = micro();
  if (!VCRateSharingGroup_IsProbingSequenceAllowed(v7, v8, v9))
  {
    goto LABEL_15;
  }

  *(a1 + 1600) = VCRateControlProbingSequenceController_GetProbingSequenceID(*(a1 + 1592));
  *(a1 + 1604) = VCRateControlProbingSequenceController_GetProbingSequenceSize(*(a1 + 1592));
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(a1 + 24))
  {
    *(a1 + 26) = 1;
  }

  else
  {
    [*(a1 + 16) rateController:a1 probingSequenceRequestedWithID:*(a1 + 1600) probingSequenceSize:*(a1 + 1604)];
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() <= 6)
      {
        goto LABEL_15;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_14_1();
      v32 = 136316930;
      v33 = v12;
      v34 = 2080;
      OUTLINED_FUNCTION_13_0();
      v35 = v13;
      *v36 = v14;
      *&v36[4] = v13;
      *&v36[6] = v15;
      LOWORD(v37) = v13;
      *(&v37 + 2) = v16;
      HIWORD(v37) = v13;
      *v38 = v17;
      *&v38[4] = v13;
      *v39 = v18;
      OUTLINED_FUNCTION_5_1();
      v23 = 58;
      goto LABEL_25;
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [a1 performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_14_1();
        v32 = 136317442;
        v33 = v24;
        v34 = 2080;
        OUTLINED_FUNCTION_13_0();
        v35 = 2112;
        *v36 = v10;
        *&v36[8] = 2048;
        v37 = a1;
        *v38 = v26;
        *&v38[2] = v27;
        *v39 = v26;
        *&v39[2] = v28;
        v40 = v26;
        v41 = v29;
        v42 = v26;
        v43 = v30;
        v44 = v26;
        v45 = v31;
        v19 = &dword_1DB56E000;
        v21 = "AVCRC [%s] %s:%d %@(%p) Request probing sequence for mode=%d bandwidth=%u, targetBitrate=%u, probingSequenceSize=%u, probingSequenceID=%u";
        v22 = &v32;
        v20 = v25;
        v23 = 78;
LABEL_25:
        _os_log_impl(v19, v20, OS_LOG_TYPE_DEFAULT, v21, v22, v23);
      }
    }
  }

LABEL_15:
  v11 = *(a2 + 192);
  if (v11 != *(a1 + 1700))
  {
    _AVCRateController_ChangeECNSupport(a1, v11, 1);
  }
}

void _AVCRateController_DoRateControlWithStatistics_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  v2 = 2953;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Failed to create nwActivity", v1, 0x1Cu);
}

void _AVCRateController_DoRateControlWithNWConnectionStatistics_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  v2 = 3033;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Not using nwConnectionNotification", v1, 0x1Cu);
}

void _AVCRateController_DoRateControlWithNWConnectionStatistics_cold_2()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _AVCRateController_DoRateControl_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v2 = 3063;
  v3 = 2048;
  v4 = 0;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, "AVCRC [%s] %s:%d Invalid statistics=%p", v1, 0x26u);
}

void _VCFECConsumerFrameBased_RestorePacketsAndDataSizes_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void _VCFECConsumerFrameBased_RestorePacketsAndDataSizes_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECConsumerFrameBased_PushPacket_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void VCFECConsumerFrameBased_PushPacket_cold_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *a3 = -2144141298;
}

void VCFECConsumerFrameBased_PushPacket_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void VCFECConsumerFrameBased_PushPacket_cold_4()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECConsumerFrameBased_PushPacket_cold_5()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECConsumerFrameBased_PerformTryDecode_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECConsumerFrameBased_PerformTryDecode_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECConsumerFrameBased_PerformTryDecode_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECConsumerFrameBased_PerformTryDecode_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECConsumerFrameBased_PerformTryDecode_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void VCFECConsumerFrameBased_PerformTryDecode_cold_6()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCFECConsumerFrameBased_SetFrameSequenceNumber_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECConsumerFrameBased_Create_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCFECConsumerFrameBased_Create_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECConsumerFrameBased_Create_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCFECConsumerFrameBased_Create_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

uint64_t VCFECConsumerFrameBased_Create_cold_5(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 1;
  }

  VRTraceErrorLogLevelToCSTR();
  if (OUTLINED_FUNCTION_28())
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
  }

  result = 0;
  *a1 = -2144141311;
  return result;
}

void VCRateControlFeedbackController_UpdateTxLinkType(unsigned __int8 *a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1[88] != a2)
    {
      _AVCRateControlFeedbackController_SetTxLink(a1, a2, 0);
      v4 = a1[8];
      v5 = a1[89];
      v7 = v5 == 4 || v5 == a2;
      a1[8] = v7;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_3_3();
          v14 = "_AVCRateControlFeedbackController_SetECNEnabled";
          v15 = 1024;
          v16 = 437;
          v17 = 2048;
          v18 = a1;
          v19 = 1024;
          v20 = v4;
          v21 = 1024;
          v22 = v9;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d [%p] _isECNEnabled changed from=%d to=%d", &v12, 0x32u);
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = v10;
      OUTLINED_FUNCTION_0();
      v16 = 741;
      _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Feedback controller is nil", &v12, 0x1Cu);
    }
  }
}

void VCRateControlFeedbackController_SetMode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Feedback controller is nil", v2, v3, v4, v5, v6);
}

void VCRateControlFeedbackController_SetLinkTypeToSupportECN_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Feedback controller is nil", v2, v3, v4, v5, v6);
}

void VCVideoHardwareDumpWriter_OpenDumpFile_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 68;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate dump file", &v2, 0x1Cu);
}

void VCVideoHardwareDumpWriter_RegisterSource_cold_1(os_unfair_lock_s *a1, _BYTE *a2)
{
  os_unfair_lock_unlock(a1);
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v3, v4, " [%s] %s:%d Failed to open dump file", v5, v6, v7, v8, v9);
    }
  }

  *a2 = 0;
}

void VCVideoHardwareDumpWriter_RegisterSource_cold_2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Attempting to register nil write source", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

void VCVideoHardwareDumpWriter_RegisterSource_cold_3(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Received nil writer", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

void VCVideoHardwareDumpWriter_Write_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to get C string from CFString log", v2, v3, v4, v5, v6);
    }
  }
}

void VCVideoHardwareDumpWriter_Write_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Received nil writer", v2, v3, v4, v5, v6);
    }
  }
}

void AVConferenceServerStartInternal_cold_2()
{
  v1 = *MEMORY[0x1E69E9840];
  *v0 = 0;
  _os_log_debug_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Entered sandbox.", v0, 2u);
}

void AVConferenceServerStartInternal_cold_3()
{
  __error();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void AVConferenceServerStartInternal_cold_4()
{
  __error();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_3(uint64_t a1)
{
  LODWORD(v3) = 136315906;
  *(&v3 + 4) = a1;
  WORD6(v3) = 2080;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Current bin count is %d. Setup run a second time ?", v3, *(&v3 + 1), v4, v5);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Output bin count is 0!", v2, v3, v4, v5, v6);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create FFT", v2, v3, v4, v5, v6);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_10()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_11()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_12()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_13()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_14()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create octave to index table", v2, v3, v4, v5, v6);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_15()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "_VCAudioPowerSpectrum_SetupAudioPowerSpectrumWithBinCount";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Failed to setup the channel settings[%d]", v3, *v4, "_VCAudioPowerSpectrum_SetupAudioPowerSpectrumWithBinCount" >> 16, 370);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_16()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_17()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_18()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Output bin count is 0", v2, v3, v4, v5, v6);
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_19()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_20(uint64_t a1, void **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315906;
      v13 = v5;
      v14 = 2080;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate _octave2IndexTable6 [count=%d]", &v12, 0x22u);
    }
  }

  if (*a2)
  {
    free(*a2);
    *a2 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v15 = 363;
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v7, v8, v9, v10, v11, 0x1Cu);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_21()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void VCAudioPowerSpectrum_PushAudioSamples_cold_22()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d error setting up VCAudioPowerSpectrum", v2, v3, v4, v5, v6);
}

void _AVCStatisticsCollector_ProcessVCStatisticsInternal_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Unknown type of packet received statistics", v2, v3, v4, v5, v6);
}

void VCStatisticsCollector_EnableBWELogDump_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5, v6);
}

void VCStatisticsCollector_Mode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5, v6);
}

void VCStatisticsCollector_SetMode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5, v6);
}

void VCStatisticsCollector_SetFastSuddenBandwidthDetectionEnabled_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5, v6);
}

void VCStatisticsCollector_SetL4SHighDataRateEnabled_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5, v6);
}

void VCStatisticsCollector_SetRadioAccessTechnology_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5, v6);
}

void VCStatisticsCollector_SharedEstimatedBandwidth_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Invalid parameter. statisticsCollector is nil", v2, v3, v4, v5, v6);
}

void _AVCStatisticsCollector_UpdateMaxLocalBurstyLoss_cold_1()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "_AVCStatisticsCollector_UpdateMaxLocalBurstyLoss";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v1, v2, "VCRC [%s] %s:%d update video loss: %d", v3, *v4, "_AVCStatisticsCollector_UpdateMaxLocalBurstyLoss" >> 16, 981);
}

void _AVCStatisticsCollector_UpdateMaxLocalBurstyLoss_cold_2()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "_AVCStatisticsCollector_UpdateMaxLocalBurstyLoss";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_3(&dword_1DB56E000, v1, v2, "VCRC [%s] %s:%d update audio loss: %d", v3, *v4, "_AVCStatisticsCollector_UpdateMaxLocalBurstyLoss" >> 16, 976);
}

void VCAudioStreamReceiveGroup_PullAudioSamples_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = 136316162;
  v4 = a1;
  OUTLINED_FUNCTION_6_5();
  v5 = "VCAudioStreamReceiveGroup_UpdateAudioPriority";
  v6 = 1024;
  v7 = 469;
  v8 = 1024;
  v9 = 469;
  v10 = 1024;
  v11 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCAudioStreamReceiveGroup.m:%d: Updating audio priority %d", &v3, 0x28u);
}

void VCCaptionsStreamSendGroup_PushAudioSamples_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 351;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, " [%s] %s:%d audio no-op no MKM", &v2, 0x1Cu);
}

void VCCaptionsStream_CreateSampleBuffer_cold_1(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v4, v5, " [%s] %s:%d Error creating block buffer for captions: %d", v6, v7, v8, v9, 2u);
    }
  }

  *a2 = a1;
}

void VCCaptionsStream_CreateSampleBuffer_cold_2(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6_0(&dword_1DB56E000, v4, v5, " [%s] %s:%d Error creating format description for captions: %d", v6, v7, v8, v9, 2u);
    }
  }

  *a2 = a1;
}

void VCVideoJitterBuffer_GetIsRunning_cold_1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, "VCVideoJitterBuffer [%s] %s:%d Invalid rtpTimestampAtRunState pointer", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

void VCVideoJitterBuffer_GetIsRunning_cold_2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, "VCVideoJitterBuffer [%s] %s:%d Invalid jitter buffer pointer", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

void VCVideoJitterBuffer_Create_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Failed to initialize the lag processor", v2, v3, v4, v5, v6);
    }
  }
}

void VCVideoJitterBuffer_Create_cold_2()
{
  v11 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "VCVideoJitterBuffer_GetJitterDistributionBucketSize";
  v5 = 1024;
  v6 = 103;
  v7 = 1024;
  v8 = 0;
  v9 = 1024;
  v10 = 4;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "VCVideoJitterBuffer [%s] %s:%d Default configuration for number of bins per frame %d for target estimator CDF is incorrect, defaulting to %d bins per frame", v2, 0x28u);
}

void VCVideoJitterBuffer_Create_cold_3(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v1, v2, "VCVideoJitterBuffer [%s] %s:%d Failed to initialize the target estimator", v3, v4, v5, v6, v7);
    }
  }
}

void VCVideoJitterBuffer_Create_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d maxDisplayRefreshRate cannot be 0!", v2, v3, v4, v5, v6);
    }
  }
}

void VCVideoJitterBuffer_Create_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Failed to allocate the Video JitterBuffer memory", v2, v3, v4, v5, v6);
    }
  }
}

void VCVideoJitterBuffer_Create_cold_6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Failed to allocate the Video JitterBuffer", v2, v3, v4, v5, v6);
}

void VCVideoJitterBuffer_Create_cold_7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid Config (nil)", v2, v3, v4, v5, v6);
}

void _VCVideoJitterBuffer_GetJBTargetFromEstimatedTarget_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, "VCVideoJitterBuffer [%s] %s:%d Invalid parameters in callback", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 4;
}

void VCVideoJitterBuffer_Finalize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCVideoJitterBuffer_UpdateMode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCVideoJitterBuffer_GetTargetJitterQueueSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCVideoJitterBuffer_GetJitterBufferMaxQueueSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCVideoJitterBuffer_GetReferenceFrame_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCVideoJitterBuffer_EnqueueFrame_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCVideoJitterBuffer_HealthPrint_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, "VCVideoJitterBuffer [%s] %s:%d Invalid JitterBuffer handle (nil)", v2, v3, v4, v5, v6);
}

void VCMicrophonePreferencesCMS_GetBuiltInMicPortDictionaryFromSelectableInputsArray_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_6();
  v2 = 1024;
  v3 = 37;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d builtInMicPort returned is NULL", v1, 0x1Cu);
}

void VCMicrophonePreferencesCMS_GetBuiltInMicPortDictionaryFromSelectableInputsArray_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VCMicrophonePreferencesCMS_GetDataSourcesFromPortDictionary_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VCMicrophonePreferencesCMS_CreateSelectedInputDictWithPolarPattern_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_6();
  v2 = 1024;
  v3 = 106;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Did not find non-omnidirectional polar pattern", v1, 0x1Cu);
}

void VCMicrophonePreferencesCMS_ApplyMicrophonePreferences_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VCMicrophonePreferencesCMS_ApplyMicrophonePreferences_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void VCMicrophonePreferencesCMS_ApplyMicrophonePreferences_cold_3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  v4 = 0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d selectedInputDict(%p) == NULL", v2, 0x26u);
}

void VCRateControlProbingSequenceController_SetMode_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d probingSequenceController cannot be nil", v2, v3, v4, v5, v6);
    }
  }
}

void VCRateControlProbingSequenceController_SetRateSharingClientID_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to register the rateSharingClient, use default ID 0", v2, v3, v4, v5, v6);
    }
  }
}

void VCRateControlProbingSequenceController_SetRateSharingClientID_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d probingSequenceController cannot be nil", v2, v3, v4, v5, v6);
    }
  }
}

void VCRateControlProbingSequenceController_GetProbingSequenceID_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCRateControlProbingSequenceController_GetProbingSequenceSize_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCRateControlProbingSequenceController_ShouldRequestProbingSequence_cold_1(uint64_t a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  *a2 = 0;
}

void VCRateControlProbingSequenceController_ShouldRequestProbingSequence_cold_2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void VCRateControlProbingSequenceController_ShouldRequestProbingSequence_cold_3(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void _VCAudioStreamGroup_AddSyncDestination_cold_1(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_8();
      v7 = v5;
      v8 = "_VCAudioStreamGroup_AddSyncDestination";
      v9 = 1024;
      v10 = 739;
      v11 = 2048;
      v12 = a1;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d syncDestination[%p] is already in the list for streamGroup[%p]", v6, 0x30u);
    }
  }

  OUTLINED_FUNCTION_11_3();
}

void _VCAudioStreamGroup_AddSyncDestination_cold_2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

void DynamicStoreCallbackForWifiChanges_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d GKInterfaceListener Dynamic store instance NULL, discontinuing Wifi detection.", v2, v3, v4, v5, v6);
}

void VCMediaRecorderHistory_AddAudioSampleBuffer_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCMediaRecorderHistory_AddAudioSampleBuffer_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void VCMediaRecorderHistory_AddAudioSampleBuffer_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCMediaRecorderHistory_AddAudioSampleBuffer_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCMediaRecorderHistory_AddLocalVideoSampleBuffer_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

uint64_t VCMediaRecorderHistory_AddLocalVideoSampleBuffer_cold_2(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136316162;
      v9 = v4;
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      v10 = 275;
      v11 = 2048;
      v12 = a1;
      v13 = v7;
      v14 = a2;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to CMSampleBufferCreateCopy for sampleBuffer=%p status=%d", &v8, 0x2Cu);
    }
  }

  return FigSampleBufferRelease();
}

void _VCMediaRecorderHistory_EmitSetVisibleRectSignpost_cold_1(os_signpost_id_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *MEMORY[0x1E6986650];
    if (os_signpost_enabled(*MEMORY[0x1E6986650]))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_1DB56E000, v2, OS_SIGNPOST_EVENT, v1, "VCMediaRecorderHistory_SetVisibleRect", &unk_1DBDF5B7E, v3, 2u);
    }
  }
}

void VCMediaRecorderHistory_UpdateTargetScreenAttributes_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void VCMediaRecorderHistory_UpdateResizeFlag_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCMediaRecorderHistory_UpdateResizeFlag_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCMediaRecorderHistory_UpdateResizeFlag_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void VCMediaRecorderHistory_StopProcessingAllRequests_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "VCEmulatedNetworkAlgorithm_UpdateIndexWithIntervalArray";
  v6 = 1024;
  v7 = 34;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot update index when updating network settings", &v2, 0x1Cu);
}

void _VCRateControlAlgorithmSparseNOWRD_DoRateControl_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "_VCRateControlAlgorithmSparseNOWRD_DoRateControlWithVCRCStatistics";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d Unknown VCRateControl state %d", v2, *v3, "_VCRateControlAlgorithmSparseNOWRD_DoRateControlWithVCRCStatistics" >> 16, 280);
}

void _VCRateControlAlgorithmSparseNOWRD_DoRateControl_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  *&v3[6] = "_VCRateControlAlgorithmSparseNOWRD_DoRateControl";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, "VCRC [%s] %s:%d This algorithm does not support statistics type:%d to do rate control", v2, *v3, "_VCRateControlAlgorithmSparseNOWRD_DoRateControl" >> 16, 181);
}

void VCRateControlAlgorithmSparseNOWRD_NoServerStatsActivityDetected_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "VCRateControlAlgorithmSparseNOWRD_NoServerStatsActivityDetected";
  v6 = 1024;
  v7 = 352;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Invalid argument. Algorithm is nil", &v2, 0x1Cu);
}

void VCAudioCaptions_ConvertSamplesToPCM_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void VCNetworkConditionMonitor_Create_cold_2(const void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_26(v2, v3, v4, v5, v6);
    }
  }

  CFRelease(a1);
}

void VCNetworkConditionMonitor_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_26(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_Create_cold_4()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_26(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_Create_cold_5()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_26(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_Create_cold_6()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_26(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_SetBrokenNetworkStatus_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_6_8();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_8_5(v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCNetworkConditionMonitor_triggerNetworkConditionCallback_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315650;
      v4 = v0;
      OUTLINED_FUNCTION_0();
      v5 = 125;
      OUTLINED_FUNCTION_29_0(&dword_1DB56E000, v1, v2, " [%s] %s:%d NetworkConditionMonitor: didUpdateNetworkConditionContext is NULL", &v3);
    }
  }
}

void VCNetworkConditionMonitor_SetWiFiChannelQualityScore_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_6_8();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_8_5(v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_SetCellSignalStrengthBars_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_6_8();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_8_5(v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_SetRemoteNetworkQuality_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_6_8();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_8_5(v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCNetworkConditionMonitor_SetIsLocalActiveOnCellular_cold_1()
{
  OUTLINED_FUNCTION_2_6();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = OUTLINED_FUNCTION_6_8();
    if (v1)
    {
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
      }
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_8_5(v8, v9, v10, v11, v12);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

BOOL VCMediaKeyIndex_isValid(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  objc_sync_enter(a1);
  v2 = memcmp((a1 + 8), &invalidMKI, 0x10uLL) != 0;
  objc_sync_exit(a1);
  return v2;
}

BOOL VCMediaKeyIndex_isEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 24);
    return v3 == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && memcmp((a1 + 8), (a2 + 8), v3) == 0;
  }

  return v2;
}

BOOL VCMediaKeyIndex_isStartingWithPrefix(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a2 + 24);
    return *(a1 + 24) >= v3 && memcmp((a1 + 8), (a2 + 8), v3) == 0;
  }

  return v2;
}

uint64_t VCMediaKeyIndex_UniquePrefixSize(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  objc_sync_enter(a1);
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = *(a1 + 24);
  }

  objc_sync_exit(a1);
  return v2;
}

void VCMediaKeyIndex_UniquePrefixBytes_cold_1(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Invalid parameters passed to the method", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

void AFRCCreateHandle_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void AFRCCreateHandle_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AFRCCreateHandle_cold_4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  v3 = v0;
  v4 = 9856;
  _os_log_fault_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_FAULT, "VCRC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/MediaQueue/AFRC.c:%d: calloc(%d) failed", v2, 0x28u);
}

void AFRCCreateHandle_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AFRCSetTxCap_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AFRCGetTxInfo_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 6160;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d Enabling LF", &v2, 0x1Cu);
}

void AFRCGetTxInfo_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void AFRCProcessBasebandNotification_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void AFRCSetBWEstMode_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 6525;
  _os_log_debug_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d ////^^^^ AFRCSetBWEstMode: FALLING TO BW-EST BACKWARD COMPATIBLITY MODE", &v2, 0x1Cu);
}

void MediaQueue_CreateHandle_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void MediaQueue_CreateHandle_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ActiveProbing_Uninit_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x28u);
}

void MediaQueue_Start_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void MediaQueue_Start_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void MediaQueue_Malloc_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void MediaQueue_Malloc_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void MediaQueue_AddPacket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _MediaQueue_CheckActiveProbingQueueLength_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void MediaQueue_RexmitPacket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void MediaQueue_RexmitPacket_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ActiveProbing_ProcessIncomingPacket_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x34u);
}

void ActiveProbing_ProcessIncomingPacket_cold_2()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

void ActiveProbing_ProcessIncomingPacket_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  v2 = 1642;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d AddPacket: ^^^^^^\t\t MP belonging to an active Probe. Going to the main list", v1, 0x1Cu);
}

void MediaQueue_ThrottlingFlushThrottlingQueue_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void drainOldPackets_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_6_9();
  v8 = v0;
  v1 = OUTLINED_FUNCTION_10_2();
  StallModeTracePrint_(v1, v2, v3, 2153, v4, v5, v6, v7, v8);
}

void drainOldPackets_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_6_9();
  v8 = v0;
  v1 = OUTLINED_FUNCTION_10_2();
  StallModeTracePrint_(v1, v2, v3, 2159, v4, v5, v6, v7, v8);
}

void pushOutQueuedAudioPkts_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_6_9();
  v8 = v0;
  v1 = OUTLINED_FUNCTION_10_2();
  StallModeTracePrint_(v1, v2, v3, 2190, v4, v5, v6, v7, v8);
}

void MediaQueue_SendPacket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCSFrameCryptorH264_Destroy(CFTypeRef **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[1])
    {
      CFRelease(v2[1]);
      v2 = *a1;
    }

    if (v2[2])
    {
      CFRelease(v2[2]);
      v2 = *a1;
    }

    if (*v2)
    {
      CFRelease(*v2);
      v2 = *a1;
    }

    free(v2);
    *a1 = 0;
  }
}

void _VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer_cold_1(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = v8;
      OUTLINED_FUNCTION_0();
      v12 = 143;
      _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate pps buffer", &v10, 0x1Cu);
    }
  }

  *a4 = -2143158269;
  *a3 = 0;
  *a2 = a1;
}

void _VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer_cold_2(uint64_t a1, _DWORD *a2, void *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
    }
  }

  *a3 = a1;
  *a2 = -2143158269;
}

void _VCSFrameCryptorH264_CreateAndGetBlockBufferPtr_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCSFrameCryptorH264_CreateAndGetBlockBufferPtr_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCSFrameCryptorH264_ExtractSFramePayloadFromSlice_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }

  *v0 = -2143158269;
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  v6 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d _VideoReceiver_FindAndCopySliceNalu, failed to get access to enough bytes contiguously for parsing nalu at offset:%zu", &v3, 0x26u);
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d _VCSFrameCryptorH264_ExtractSFramePayloadFromSlice failed to extract SFrame slice payload", v2, v3, v4, v5, v6);
    }
  }
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d _VideoReceiver_FindAndCopySliceNalu, failed to allocate temporary buffer", v2, v3, v4, v5, v6);
    }
  }
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x3Au);
    }
  }
}

void _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d _VideoReceiver_FindAndCopySliceNalu: Failed to parse nalu length from buffer", v2, v3, v4, v5, v6);
    }
  }
}

void _VCSFrameCryptroH264_EscapeEncryptedBuffer_cold_1()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCSFrameCryptroH264_EscapeEncryptedBuffer_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCSFrameCryptorH264_RemoveEmulationBytesFromPayloadBuffer_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCSFrameCryptorH264_RemoveEmulationBytesFromPayloadBuffer_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void _VCSFrameCryptorH264_RemoveEmulationBytesFromPayloadBuffer_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Create_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCSFrameCryptorH264_Create failed to allocate block buffer header allocator", v2, v3, v4, v5, v6);
    }
  }
}

void VCSFrameCryptorH264_Create_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCSFrameCryptorH264_Create failed to allocate block buffer data allocator", v2, v3, v4, v5, v6);
    }
  }
}

void VCSFrameCryptorH264_Create_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSFrameCryptorH264_Create_cold_4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSFrameCryptorH264_Encrypt_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VCSFrameCryptorH264_Encrypt_cold_3()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_6()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSFrameCryptorH264_Encrypt_cold_8()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VCSFrameCryptorH264_Encrypt_cold_10()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Encrypt_cold_11()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VCSFrameCryptorH264_Encrypt_cold_12()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSFrameCryptorH264_Encrypt_cold_13(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
    }
  }

  *a3 = -2143158209;
}

void VCSFrameCryptorH264_Encrypt_cold_14(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 447;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to append prefix nalus to sframe buffer", &v2, 0x1Cu);
}

void _VCSFrameCryptorH264_ValidateInputParameters_cold_1()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCSFrameCryptorH264_ValidateInputParameters_cold_2()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCSFrameCryptorH264_ValidateInputParameters_cold_3()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _VCSFrameCryptorH264_ValidateInputParameters_cold_4()
{
  OUTLINED_FUNCTION_14_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void VCSFrameCryptorH264_Decrypt_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Decrypt_cold_2()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Decrypt_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VCSFrameCryptorH264_Decrypt_cold_4()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Decrypt_cold_5()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Decrypt_cold_6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_19_2();
}

void VCSFrameCryptorH264_Decrypt_cold_7()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_10_0();
}

void VCSFrameCryptorH264_Decrypt_cold_8(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x30u);
    }
  }

  *a3 = 0;
}

void RSU_Encode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to generate parity bits for data payload sizes.", v2, v3, v4, v5, v6);
}

void RSU_Encode_cold_2(int a1, _DWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = v4;
      OUTLINED_FUNCTION_0();
      v9 = 683;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v5, v6, " [%s] %s:%d Failed to Encode the packet payloads.", &v7);
    }
  }

  *a2 = a1;
}

void RSU_Encode_cold_3(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v2;
      OUTLINED_FUNCTION_0();
      v7 = 643;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v3, v4, " [%s] %s:%d Invalid Group Size", &v5);
    }
  }

  *a1 = -2144141311;
}

void _RSU_EncodeByteBuffer_cold_1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid number of symbols per packet (%d)", v3, v4, v5, v6);
}

void _RSU_DecodeByteBuffer_cold_1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid number of symbols per packet (%d)", v3, v4, v5, v6);
}

void RSU_Decode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid Buffer Size", v2, v3, v4, v5, v6);
}

void RSU_Decode_cold_2(int a1, _DWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = v4;
      OUTLINED_FUNCTION_0();
      v9 = 1301;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v5, v6, " [%s] %s:%d DecodeByteBuffe failed!", &v7);
    }
  }

  *a2 = a1;
}

void RSU_Decode_cold_3()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d Invalid number of symbols per packet (%d)", v3, v4, v5, v6);
}

void RSU_Decode_cold_4(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = v2;
      OUTLINED_FUNCTION_0();
      v7 = 1305;
      OUTLINED_FUNCTION_26(&dword_1DB56E000, v3, v4, " [%s] %s:%d DecodeByteBuffe failed!", &v5);
    }
  }

  *a1 = -2144141311;
}

void RSU_Decode_cold_5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid Buffer Size", v2, v3, v4, v5, v6);
}

void RSU_Decode_cold_6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid Buffer Size", v2, v3, v4, v5, v6);
}

uint64_t EncGetRecommendedBitrate(uint64_t a1, _DWORD *a2)
{
  RecommendedBitrate = 2148007937;
  if (a2)
  {
    *a2 = 0;
    v4 = CheckInHandleDebug();
    if (v4)
    {
      v5 = *(v4 + 408);
      if (v5)
      {
        RecommendedBitrate = VCVideoEncoderMultiImageRateAdaptation_GetRecommendedBitrate(v5, a2);
      }

      else
      {
        RecommendedBitrate = 2148007953;
      }

      CheckOutHandleDebug();
    }

    else
    {
      return 2148007938;
    }
  }

  return RecommendedBitrate;
}

void EncCreateHandle_cold_1()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void EncCreateHandle_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void EncCreateHandle_cold_3()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void EncEncodeFrame_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void EncEncodeFrame_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v2, v3, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VCVideoEncoder_VCP.c:%d: Encoder callback is NULL", v4, v5, v6, v7, v8);
    }
  }

  *a1 = -2146959339;
}

void EncEncodeMultipleFrames_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void EncEncodeMultipleFrames_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_10_3(&dword_1DB56E000, v2, v3, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VCVideoEncoder_VCP.c:%d: Encoder callback is NULL", v4, v5, v6, v7, v8);
    }
  }

  *a1 = -2146959339;
}

void _DumpParameterSetsBitstream_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _DumpParameterSetsBitstream_cold_2()
{
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void _DumpParameterSetsBitstream_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void _DumpParameterSetsBitstream_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void _DumpFrameBitstream_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 257;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCPCompressionSession Error: Error getting data buffer", v1, 0x1Cu);
}

void _DumpFrameBitstream_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 275;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCPCompressionSession Error: Encoder returned a NULL frame", v1, 0x1Cu);
}

void vtEncCallback_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void vtEncCallback_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void _Enc_SetAverageBitrateForMultiImageEncode_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

float _VCScreenCaptureFigCaptureController_OnVideoFrame_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v6 = 136315906;
  v4 = *(a2 + 8);
  v7 = a1;
  v8 = 2080;
  v9 = "_VCScreenCaptureFigCaptureController_OnVideoFrame";
  v10 = 1024;
  v11 = 193;
  v12 = 2048;
  v13 = (v3 / v4);
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d CannedScreenCaptureFigCaptureController_OnVideoFrame time=%f", &v6, 0x26u);
  return result;
}

void VCVideoStreamEncoderProc_cold_1(os_signpost_id_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = *MEMORY[0x1E6986650];
    if (os_signpost_enabled(*MEMORY[0x1E6986650]))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_1DB56E000, v2, OS_SIGNPOST_EVENT, v1, "VideoTransmitter_FrameDequeue", &unk_1DBDF5B7E, v3, 2u);
    }
  }
}

void VCVideoStreamEncoderProc_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to dequeue sample buffer", v2, v3, v4, v5, v6);
}

void VCVideoStreamTransmitter_SetFECRatio_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Not implemented!", v2, v3, v4, v5, v6);
}

void VCVideoStreamTransmitter_SetMediaQueueSize_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Not implemented!", v2, v3, v4, v5, v6);
}

void encoderFrameCallback_cold_1()
{
  OUTLINED_FUNCTION_5();
  WORD2(v4) = v0;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d frame encode error %d", v3, v4, v5, v6);
}

void JitterQueue_Insert_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  v5 = 136316162;
  v6 = a1;
  v7 = 2080;
  v8 = "JitterQueue_Insert";
  v9 = 1024;
  v10 = 212;
  v11 = 1024;
  v12 = v3;
  v13 = 1024;
  v14 = v4;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Discarding duplicate audio frame isRedAudio:%d timestamp:%u", &v5, 0x28u);
}

void JitterQueue_Insert_cold_2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "JitterQueue_Insert";
  v6 = 1024;
  v7 = 234;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Jitter Queue Max maxPacketTimeDelta Size is not set", &v2, 0x1Cu);
}

void VCNWConnectionMonitor_Create_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create monitor because nwConnection is null!", v2, v3, v4, v5, v6);
}

void _VCNWConnectionMonitor_DispatchedProcessInterfaceAdvisoryNotification_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate memory for notification!", v2, v3, v4, v5, v6);
}

void _VCNWConnectionMonitor_AddNotification_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      OUTLINED_FUNCTION_0();
      v4 = 323;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Can't add a null monitor!", &v2, 0x1Cu);
    }
  }
}

void _VCNWConnectionMonitor_ProcessNotification_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_0();
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d  timestamp%llu", v1, 0x26u);
}

void _VCNWConnectionMonitor_ProcessNotification_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _VCNWConnectionMonitor_ProcessNotification_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d NWConnection notification is nil", v2, v3, v4, v5, v6);
}

void VCNWConnectionMonitor_ResetWlanStats_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d monitor is null!", v2, v3, v4, v5, v6);
}

void VCMediaQueueUtil_FindPacketInTxHistory_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "VCMediaQueueUtil_FindPacketInTxHistory";
  v6 = 1024;
  v7 = 240;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Do not have a valid packetParam", &v2, 0x1Cu);
}

void VCPayloadUtils_AudioCodecRateModeForBitrate_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCPayloadUtils_ShortREDBitrateForPayload_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void _RTCPPacketForget(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *a2;
      if (*a2)
      {
        v5 = v3[12];
        if (v5)
        {
          CFRelease(v5);
          *(*a2 + 96) = 0;
          v3 = *a2;
        }

        CFAllocatorDeallocate(*(a1 + 10824), v3);
        *a2 = 0;
      }
    }
  }
}

void RTCPCopySendControlParameters_cold_1(void *a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *a2 = -2147418109;
  *a1 = 0;
}

void RTCPCopySendControlParameters_cold_2(void *a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *a2 = -2147418111;
  *a1 = 0;
}

void RTCPPackSendControlParameter_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  v2 = 96;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameters", v1, 0x1Cu);
}

void RTPSendRTCP_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void RTPSendRTCP_cold_3()
{
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_24_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Eu);
    }
  }

  *v0 = v1;
}

void RTPSendRTCP_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Failed to add RTCP header", v2, v3, v4, v5, v6);
}

void RTPSendRTCP_cold_5()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_28_2();
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Failed to add the Statistics Summary Report Block. status=%X", v1, 0x28u);
}

void RTPSendRTCP_cold_6()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_28_2();
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Failed to add the VoIP Metrics Report Block. status=%X", v1, 0x28u);
}

void RTPSendRTCP_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTPSendRTCP_cold_8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Not enough space for the RTCP XR packet", v2, v3, v4, v5, v6);
}

void RTPSendRTCP_cold_9()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void RTPSendRTCP_cold_10()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_11()
{
  OUTLINED_FUNCTION_18_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
    }
  }

  *v0 = v1;
}

void RTPSendRTCP_cold_12()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void RTPSendRTCP_cold_13()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_14()
{
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_24_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Eu);
    }
  }

  *v0 = v1;
}

void RTPSendRTCP_cold_15()
{
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_24_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Eu);
    }
  }

  *v0 = v1;
}

void RTPSendRTCP_cold_16()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_17()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_18()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_19()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_20()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_21()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTPSendRTCP_cold_22(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Eu);
    }
  }

  *a2 = -2147418104;
}

void RTPSendRTCP_cold_23(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *a2 = a1;
}

void RTPSendRTCP_cold_24(int a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x22u);
    }
  }

  *a2 = a1;
}

void RTPSendRTCP_cold_25()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

void RTCPGetVoIPMetricsReportBlock_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTCPGetVoIPMetricsReportBlock_cold_2(_DWORD *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
    }
  }

  *a1 = 67;
}

void RTCPAddFIR_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void RTCPAddPLI_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void _RTCPSendWithTransportStream_cold_1(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
    }
  }

  *a2 = -2147418111;
}

void _RTCPSendWithTransportStream_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTCPSendWithSocket_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  __error();
  v4 = 136315906;
  v5 = a1;
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTP_Send failed with error=%d", &v4, 0x22u);
}

void _RTCPTransport_ParsePacket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP version", v2, v3, v4, v5, v6);
}

void _RTCPTransport_ParsePacket_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Bad RTCP packet", v2, v3, v4, v5, v6);
}

void _RTCPTransport_ParsePacket_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP RTPFB message", v2, v3, v4, v5, v6);
}

void _RTCPTransport_ParsePacket_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Bad RTCP PSFB ALFB packet", v2, v3, v4, v5, v6);
}

void _RTCPTransport_ParsePacket_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP PSFB message", v2, v3, v4, v5, v6);
}

void _RTCPTransport_ParsePacket_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP NACK message", v2, v3, v4, v5, v6);
}

void _RTCPTransport_ParsePacket_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP FIR message", v2, v3, v4, v5, v6);
}

void _RTCPTransport_ParsePacket_cold_8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Bad RTCP APP packet", v2, v3, v4, v5, v6);
}

void _RTCPTransport_ParsePacket_cold_9()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP BYE message", v2, v3, v4, v5, v6);
}

void _RTCPTransport_ParsePacket_cold_10()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP SDES message", v2, v3, v4, v5, v6);
}

void _RTCPTransport_ParsePacket_cold_11()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP RR packet", v2, v3, v4, v5, v6);
}

void _RTCPTransport_ParsePacket_cold_12()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP SR packet", v2, v3, v4, v5, v6);
}

void _RTCPTransport_ParsePacket_cold_13()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Invalid RTCP header", v2, v3, v4, v5, v6);
}

void _RTCPPacketCallback_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTCPPacketCallback_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void RTCPRegisterPacketCallback_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void RTCPRegisterPacketCallback_cold_2(uint64_t a1, _DWORD *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
    }
  }

  *a2 = -2147418108;
}

void RTCPRegisterPacketCallback_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void RTCPRegisterPacketCallback_cold_4()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

void RTCPUnregisterPacketCallback_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void RTPRecvRTCP_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

uint64_t _RTPTransportStreamRTCPCallback_cold_1(char a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_35())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_29_0(v2, v3, v4, v5, v6);
    }
  }

  return a1 & 1;
}

void _RTPTransportStreamRTCPCallback_cold_2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTPTransportStreamRTCPCallback_cold_3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_7_0();
}

void _RTCPParseVCPacket_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTCPParseVCPacket_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: RTCP packet failed Version, padding bit, packet type check", v2, v3, v4, v5, v6);
}

void _RTCPParseVCPacket_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTCPParseVCPacket_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTCPParseVCPacket_cold_5()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void _RTCPParseVCPacket_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_15_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTCPTransport.c:%d: Drop RTCP packet from a unknown connection.", v2, v3, v4, v5, v6);
}

void _RTCPAddPSFBAlfbPacket_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void VCFBOUtils_IsKindOfClass_cold_1(_BYTE *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCFBOUtils_IsKindOfClass";
      v8 = 1024;
      v9 = 33;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d NULL filter", &v4, 0x1Cu);
    }
  }

  *a1 = 0;
}

void _VCAudioStream_NWConnectionNotificationHandler()
{
  OUTLINED_FUNCTION_11_0();
  v64 = *MEMORY[0x1E69E9840];
  if (!+[VCAudioStream isVoLTE:](VCAudioStream, "isVoLTE:", [objc_msgSend(v2 "defaultStreamConfig")]))
  {
    return;
  }

  if (!v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    LODWORD(v57) = 2612;
    goto LABEL_56;
  }

  if (!v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    LODWORD(v57) = 2613;
LABEL_56:
    OUTLINED_FUNCTION_2_0();
LABEL_64:
    _os_log_error_impl(v47, v48, v49, v50, v51, v52);
    return;
  }

  if (*v0 != 2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v53 = VRTraceErrorLogLevelToCSTR();
    v54 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    *v56 = 136315906;
    *&v56[4] = v53;
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_22();
    v47 = &dword_1DB56E000;
    v50 = "VCAudioStream [%s] %s:%d Received Skywalk notification with unsupported version=%d";
    goto LABEL_63;
  }

  if (*(v0 + 2) != 2)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v55 = VRTraceErrorLogLevelToCSTR();
    v54 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    *v56 = 136315906;
    *&v56[4] = v55;
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_22();
    v47 = &dword_1DB56E000;
    v50 = "VCAudioStream [%s] %s:%d Received Skywalk notification for unsupported interface type=%d";
LABEL_63:
    v51 = v56;
    v48 = v54;
    v49 = OS_LOG_TYPE_ERROR;
    v52 = 34;
    goto LABEL_64;
  }

  [v1 updateRateAdaptationWithNetworkNotification:v0];
  switch(v0[1])
  {
    case 0:
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v3 = VRTraceErrorLogLevelToCSTR();
        v4 = OUTLINED_FUNCTION_43();
        if (v5)
        {
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_22_1();
            *v56 = 136318466;
            *&v56[4] = v3;
            *&v56[12] = 2080;
            *&v56[14] = "_VCAudioStream_LogNWConnectionNotification";
            *&v56[22] = 1024;
            LODWORD(v57) = 2597;
            WORD2(v57) = 2048;
            *(&v57 + 6) = v1;
            HIWORD(v57) = 2048;
            v58 = v6;
            LOWORD(v59) = 1024;
            *(&v59 + 2) = v7;
            HIWORD(v59) = 1024;
            LODWORD(v60) = v8;
            WORD2(v60) = 1024;
            *(&v60 + 6) = v9;
            WORD5(v60) = 1024;
            HIDWORD(v60) = v10;
            LOWORD(v61) = 1024;
            *(&v61 + 2) = v11;
            HIWORD(v61) = 1024;
            LODWORD(v62) = v12;
            WORD2(v62) = 1024;
            *(&v62 + 6) = v13;
            WORD5(v62) = 1024;
            HIDWORD(v62) = v14;
            LOWORD(v63) = 1024;
            *(&v63 + 2) = v15;
            OUTLINED_FUNCTION_5_1();
            v20 = 102;
            goto LABEL_27;
          }
        }

        else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_22_1();
          *v56 = 136318466;
          *&v56[4] = v3;
          *&v56[12] = 2080;
          *&v56[14] = "_VCAudioStream_LogNWConnectionNotification";
          *&v56[22] = 1024;
          LODWORD(v57) = 2597;
          WORD2(v57) = 2048;
          *(&v57 + 6) = v1;
          HIWORD(v57) = 2048;
          v58 = v26;
          LOWORD(v59) = 1024;
          *(&v59 + 2) = v27;
          HIWORD(v59) = 1024;
          LODWORD(v60) = v28;
          WORD2(v60) = 1024;
          *(&v60 + 6) = v29;
          WORD5(v60) = 1024;
          HIDWORD(v60) = v30;
          LOWORD(v61) = 1024;
          *(&v61 + 2) = v31;
          HIWORD(v61) = 1024;
          LODWORD(v62) = v32;
          WORD2(v62) = 1024;
          *(&v62 + 6) = v33;
          WORD5(v62) = 1024;
          HIDWORD(v62) = v34;
          LOWORD(v63) = 1024;
          *(&v63 + 2) = v35;
          OUTLINED_FUNCTION_5_1();
          v40 = 102;
          goto LABEL_49;
        }
      }

      break;
    case 2:
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        VRTraceErrorLogLevelToCSTR();
        v22 = OUTLINED_FUNCTION_43();
        if (v5)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_36_1();
            OUTLINED_FUNCTION_7_1();
            *&v56[12] = 2080;
            OUTLINED_FUNCTION_18_3();
            OUTLINED_FUNCTION_5_1();
            v20 = 68;
            goto LABEL_27;
          }
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_36_1();
          OUTLINED_FUNCTION_7_1();
          *&v56[12] = 2080;
          OUTLINED_FUNCTION_18_3();
          OUTLINED_FUNCTION_5_1();
          v40 = 68;
          goto LABEL_49;
        }
      }

      break;
    case 3:
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        VRTraceErrorLogLevelToCSTR();
        v21 = OUTLINED_FUNCTION_43();
        if (v5)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_26;
          }
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_48;
        }
      }

      break;
    case 4:
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        VRTraceErrorLogLevelToCSTR();
        v23 = OUTLINED_FUNCTION_43();
        if (v5)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
LABEL_26:
            OUTLINED_FUNCTION_9_2();
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_12_1();
            OUTLINED_FUNCTION_5_1();
            v20 = 44;
LABEL_27:
            _os_log_impl(v16, v17, OS_LOG_TYPE_DEFAULT, v18, v19, v20);
          }
        }

        else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
LABEL_48:
          OUTLINED_FUNCTION_9_2();
          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_12_1();
          OUTLINED_FUNCTION_5_1();
          v40 = 44;
LABEL_49:
          _os_log_debug_impl(v36, v37, OS_LOG_TYPE_DEBUG, v38, v39, v40);
        }
      }

      break;
    default:
      break;
  }

  if (memcmp(v0, v1 + 206, 0x68uLL))
  {
    memcpy(v1 + 206, v0, 0x68uLL);
    v43 = v1[169];
    if (v43)
    {
      VCAudioReceiver_ProcessCellularNetworkNotification(v43, (v1 + 206));
    }

    [objc_msgSend(v1 audioTransmitter];
    v44 = *(v1[169] + 388);
    RATFromNWNotification = VCNWConnectionMonitorUtils_GetRATFromNWNotification((v1 + 206));
    if (RATFromNWNotification == 5)
    {
      v46 = 2;
    }

    else if (VCNWConnectionMonitorUtils_IsBasebandRAT5G(RATFromNWNotification))
    {
      v46 = 6;
    }

    else
    {
      v46 = v44;
    }

    if (v44 != v46)
    {
      VCAudioTransmitter_ProcessConnectionType(v1[154], v46);
      VCAudioReceiver_ProcessConnectionType(v1[169], v46);
      reportingAudioStreamLogCallEnd();
    }

    if (v0[1] == 6)
    {
      [v1 handleBasebandRateTrendSuggestion:v0[2]];
    }
  }
}