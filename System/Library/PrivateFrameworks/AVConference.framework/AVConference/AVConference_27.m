uint64_t _VCAudioReceiver_UpdateAudioOverlayStats(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 10472);
  if (!v2 || !*(v2 + 40))
  {
    return result;
  }

  v3 = result;
  v4 = atomic_load((result + 776));
  v5 = *(result + 4236);
  v6 = *(result + 9176);
  v7 = *(result + 768);
  v8 = *(result + 9336);
  v9 = *(result + 9320);
  v10 = *(result + 4232);
  v11 = AudioPacketArray_First(a2);
  if (!v11)
  {
    LODWORD(v13) = 0;
LABEL_9:
    v14 = 0;
    LODWORD(v12) = 0;
    goto LABEL_11;
  }

  v12 = *(v11 + 1840);
  if (!v12)
  {
    LODWORD(v13) = 0;
    v14 = 0;
    goto LABEL_11;
  }

  v13 = *(v12 + 8);
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = *v13;
  LODWORD(v13) = *(v13 + 8);
  LODWORD(v12) = *v12;
LABEL_11:
  v15 = *(*(v3 + 10472) + 40);
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 20) = v13;
  *(v15 + 24) = 0;
  *(v15 + 28) = v4;
  *(v15 + 32) = v5;
  *(v15 + 36) = 0;
  *(v15 + 40) = v14;
  *(v15 + 44) = v6;
  *(v15 + 48) = v7;
  *(v15 + 52) = v8;
  *(v15 + 56) = v9;
  *(v15 + 60) = v10;
  *(v15 + 64) = v12;
  *(v15 + 68) = -1431655766;
  v16 = *(v3 + 10472);

  return VCOverlaySource_Write(v16);
}

void _VCAudioReceiver_ProcessAudioRTCPInternal(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 1620);
  if (v3 >= 0xD)
  {
    goto LABEL_49;
  }

  v5 = a1;
  if (_VCAudioReceiver_ShouldProcessAudioPacket(a1, a2, *(a3 + 1621), *(a3 + 1624), (a3 + 1596), v3))
  {
    kdebug_trace();
    if (*(a3 + 8))
    {
      v6 = 0;
      v7 = a3 + 16;
      v41 = v5;
      while (1)
      {
        v8 = v7 + 8 * v6;
        if (v8 >= a3 + 96 || v8 < v7)
        {
          break;
        }

        v10 = *v8;
        v11 = *(*v8 + 1);
        if ((v11 - 200) >= 2)
        {
          if (v11 == 246)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v23 = VRTraceErrorLogLevelToCSTR();
              v24 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v45 = v23;
                v46 = 2080;
                v47 = "_VCAudioReceiver_ProcessAudioRTCPInternal";
                v48 = 1024;
                v49 = 2149;
                v50 = 2048;
                v51 = v5;
                _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d audioReceiver=%p Received RTCP Custom SR", buf, 0x26u);
              }
            }

            v25 = *(v5 + 9208);
            v26 = *(v5 + 9200);
            v27.n128_f64[0] = NTPToMicro(*(v10 + 5) | (*(v10 + 4) << 32));
            v25(v26, *(v10 + 6), v27);
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v28 = VRTraceErrorLogLevelToCSTR();
            v29 = *MEMORY[0x1E6986650];
            v30 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = *(v10 + 1);
                *buf = 136316162;
                v45 = v28;
                v46 = 2080;
                v47 = "_VCAudioReceiver_ProcessAudioRTCPInternal";
                v48 = 1024;
                v49 = 2159;
                v50 = 2048;
                v51 = v5;
                v52 = 1024;
                v53 = v31;
                _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d audioReceiver=%p Received unknown RTCP packetType=%u", buf, 0x2Cu);
              }
            }

            else if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              v32 = *(v10 + 1);
              *buf = 136316162;
              v45 = v28;
              v46 = 2080;
              v47 = "_VCAudioReceiver_ProcessAudioRTCPInternal";
              v48 = 1024;
              v49 = 2159;
              v50 = 2048;
              v51 = v5;
              v52 = 1024;
              v53 = v32;
              _os_log_debug_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEBUG, "VCAudioReceiver [%s] %s:%d audioReceiver=%p Received unknown RTCP packetType=%u", buf, 0x2Cu);
            }
          }
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(v10 + 1);
              *buf = 136316162;
              v45 = v12;
              v46 = 2080;
              v47 = "_VCAudioReceiver_ProcessAudioRTCPInternal";
              v48 = 1024;
              v49 = 2144;
              v50 = 2048;
              v51 = v5;
              v52 = 1024;
              v53 = v14;
              _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d audioReceiver=%p Received RTCP packetType=%u [200=SR, 201=RR]", buf, 0x2Cu);
            }
          }

          if (v10 >= v10 + 518)
          {
            break;
          }

          v15 = *v10;
          v16 = v15 >> 8;
          if ((v15 >> 8) - 202 >= 0xFFFFFFFE)
          {
            if (v16 == 200)
            {
              v17 = v10 + 14;
            }

            else
            {
              v17 = v10 + 4;
            }

            v18 = v15 & 0x1F;
            if (v18)
            {
              v19 = 0;
              v20 = *a2;
              v40 = *a3;
              v21 = &v17[12 * v18];
              v22 = v17;
              while (1)
              {
                v43 = 0;
                if ((RTPGetLocalSSRC(v20, &v43) & 0x80000000) != 0)
                {
                  break;
                }

                if (v22 >= v21 || v22 < v17)
                {
                  goto LABEL_49;
                }

                if (*v22 == v43)
                {
                  v35 = RTCPComputeRoundTripTimeMiddle32(v22, v40);
                  RTPUpdateWRMInfo(v20, v35, *(v22 + 12), *(v22 + 4));
                  goto LABEL_42;
                }

                ++v19;
                v22 += 24;
                if (v19 >= (*v10 & 0x1Fu))
                {
                  goto LABEL_42;
                }
              }

              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                v33 = VRTraceErrorLogLevelToCSTR();
                v34 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v45 = v33;
                  v46 = 2080;
                  v47 = "_VCAudioReceiver_ProcessAudioRTCPPacketInternal";
                  v48 = 1024;
                  v49 = 2115;
                  _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "VCAudioReceiver [%s] %s:%d Could not get the local SSRC", buf, 0x1Cu);
                }
              }
            }

LABEL_42:
            v5 = v41;
            if (v16 == 200)
            {
              v36 = *(v41 + 9208);
              v37 = *(v41 + 9200);
              v38.n128_f64[0] = NTPToMicro(*(v10 + 3) | (*(v10 + 2) << 32));
              v36(v37, *(v10 + 4), v38);
            }
          }
        }

        if (*(a3 + 8) <= ++v6)
        {
          goto LABEL_46;
        }
      }

LABEL_49:
      __break(0x5519u);
    }

LABEL_46:
    (*(v5 + 9224))(*(v5 + 9200), a3);
    v39 = *(v5 + 9352);
    if (v39)
    {
      VCAudioIssueDetector_ReportRTCPTraffic(v39);
    }
  }
}

void OUTLINED_FUNCTION_14_25(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v9, OS_SIGNPOST_EVENT, v10, a5, a6, &a9, 2u);
}

char *JitterPreloadQueue_AudioFrameAlloc(uint64_t a1)
{
  if (!a1)
  {
LABEL_7:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        JitterPreloadQueue_AudioFrameAlloc_cold_1();
      }
    }

    return 0;
  }

  v2 = *(a1 + 12016);
  if (!v2)
  {
    return 0;
  }

  result = VCMemoryPool_Alloc(*(a1 + 12016));
  if (result)
  {
    v4 = &result[*(v2 + 16)];
    if ((result + 1272) > v4 || (*(result + 150) = JitterPreloadQueue_AudioFrameFree, *(result + 151) = a1, result >= v4))
    {
      __break(0x5519u);
      goto LABEL_7;
    }
  }

  return result;
}

void JitterPreloadQueue_AudioFrameFree(uint64_t a1, void *a2)
{
  if (a1)
  {
    VCMemoryPool_Free(*(a1 + 12016), a2);
  }
}

char *JitterPreloadQueue_AudioPacketAlloc(uint64_t a1)
{
  if (!a1)
  {
LABEL_9:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        JitterPreloadQueue_AudioPacketAlloc_cold_1();
      }
    }

    return 0;
  }

  v1 = *(a1 + 12008);
  if (!v1)
  {
    return 0;
  }

  result = VCMemoryPool_Alloc(*(a1 + 12008));
  if (result)
  {
    v3 = result >= &result[*(v1 + 16)];
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    __break(0x5519u);
    goto LABEL_9;
  }

  return result;
}

void JitterPreloadQueue_AudioPacketFree(uint64_t a1, void *a2)
{
  if (a1)
  {
    VCMemoryPool_Free(*(a1 + 12008), a2);
  }
}

_DWORD *JitterPreloadQueue_Create()
{
  v0 = malloc_type_calloc(1uLL, 0x2EF8uLL, 0x10200400647CBF9uLL);
  if (!v0)
  {
LABEL_6:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        JitterPreloadQueue_Create_cold_3();
      }
    }

    return 0;
  }

  v1 = v0;
  Typed = VCMemoryPool_CreateTyped(0x748uLL, 0x10200409DC8F3E2);
  *(v1 + 1501) = Typed;
  if (!Typed)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        JitterPreloadQueue_Create_cold_2();
      }
    }

    goto LABEL_16;
  }

  v3 = VCMemoryPool_CreateTyped(0x4F8uLL, 0x10A0040D0E48C1FLL);
  *(v1 + 1502) = v3;
  if (!v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        JitterPreloadQueue_Create_cold_1();
      }
    }

    VCMemoryPool_Destroy(*(v1 + 1501));
LABEL_16:
    free(v1);
    return 0;
  }

  *v1 = 0;
  v1[1] = 0;
  if (v1 >= v1 + 3006)
  {
    __break(0x5519u);
    goto LABEL_6;
  }

  return v1;
}

void JitterPreloadQueue_Destroy(char *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *a1;
    if (*a1 != *(a1 + 1))
    {
      v3 = (a1 + 8);
      v4 = (a1 + 12008);
      while (1)
      {
        v5 = &v3[v2];
        if (v5 >= v4 || v5 < v3)
        {
          break;
        }

        v7 = *v5;
        if (*v5)
        {
          if (*(v7 + 1816) >= 5)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v8 = VRTraceErrorLogLevelToCSTR();
              v9 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v11 = v8;
                v12 = 2080;
                v13 = "JitterPreloadQueue_Destroy";
                v14 = 1024;
                v15 = 99;
                _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d JitterPreloadQueue: Too many frames seen in audio packet, possible corruption", buf, 0x1Cu);
              }
            }

            *(v7 + 1816) = 4;
          }

          if (v7 >= v7 + 1864)
          {
            break;
          }

          _JitterPreloadQueue_FreePacket(a1, v7);
        }

        v2 = (v2 + 1) % 1500;
        if (v2 == *(a1 + 1))
        {
          goto LABEL_3;
        }
      }

      __break(0x5519u);
    }

LABEL_3:
    VCMemoryPool_Destroy(*(a1 + 1501));
    VCMemoryPool_Destroy(*(a1 + 1502));
    free(a1);
  }
}

void _JitterPreloadQueue_FreePacket(uint64_t a1, void **__new)
{
  if (*(__new + 454) < 1)
  {
LABEL_6:
    v9 = *(a1 + 12008);

    VCMemoryPool_Free(v9, __new);
  }

  else
  {
    v4 = 0;
    v5 = __new + 227;
    v6 = __new + 223;
    v7 = __new + 223;
    while (v7 < v5 && v7 >= v6)
    {
      v8 = *v7++;
      VCMemoryPool_Free(*(a1 + 12016), v8);
      if (++v4 >= *v5)
      {
        goto LABEL_6;
      }
    }

    __break(0x5519u);
  }
}

void JitterPreloadQueue_Enqueue(void ***a1, void **a2)
{
  if (a1)
  {
    v2 = (*(a1 + 1) + 1) % 1500;
    if (v2 == *a1)
    {
      _JitterPreloadQueue_FreePacket(a1, a2);
      if (VRTraceGetErrorLogLevelForModule() > 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          JitterPreloadQueue_Enqueue_cold_1();
        }
      }
    }

    else
    {
      v3 = &a1[*(a1 + 1) + 1];
      if (v3 < a1 + 1501 && v3 >= a1 + 1)
      {
        *v3 = a2;
        __dmb(0xBu);
        *(a1 + 1) = v2;
      }

      else
      {
        __break(0x5519u);
      }
    }
  }
}

int *JitterPreloadQueue_Dequeue(int *result)
{
  if (!result || *result == result[1])
  {
    return 0;
  }

  v2 = &result[2 * *result + 2];
  if (v2 >= result + 3002 || v2 < result + 2)
  {
    __break(0x5519u);
    return result;
  }

  v1 = *v2;
  v4 = *result + 1;
  __dmb(0xBu);
  *result = v4 % 1500;
  return v1;
}

int *JitterPreloadQueue_Flush(int *a1)
{
  result = JitterPreloadQueue_Dequeue(a1);
  if (result)
  {
    v3 = result;
    do
    {
      _JitterPreloadQueue_FreePacket(a1, v3);
      result = JitterPreloadQueue_Dequeue(a1);
      v3 = result;
    }

    while (result);
  }

  return result;
}

void VCAudioTransmitter_SetAllowedPayloads(uint64_t a1, CFArrayRef theArray)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v7 = [*(a1 + 360) count];
          v9 = 136316418;
          v10 = v5;
          v11 = 2080;
          v12 = "VCAudioTransmitter_SetAllowedPayloads";
          v13 = 1024;
          v14 = 782;
          v15 = 2048;
          v16 = a1;
          v17 = 2048;
          v18 = v7;
          v19 = 2048;
          v20 = Count;
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d audioTransmitter=%p audioPayloads previousCount=%ld updatedCount=%ld", &v9, 0x3Au);
        }
      }

      CFArrayRemoveAllValues(*(a1 + 360));
      v8 = *(a1 + 360);
      v22.length = CFArrayGetCount(theArray);
      v22.location = 0;
      CFArrayAppendArray(v8, theArray, v22);
      atomic_fetch_add((a1 + 72), 1u);
    }

    else
    {
      VCAudioTransmitter_SetAllowedPayloads_cold_1(a1);
    }
  }

  else
  {
    VCAudioTransmitter_SetAllowedPayloads_cold_2();
  }
}

void *_VCAudioTransmitter_UsedAudioPayloadForType(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 360);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v12;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v12 != v6)
    {
      objc_enumerationMutation(v3);
    }

    v8 = *(*(&v11 + 1) + 8 * v7);
    if ([objc_msgSend(v8 "config")] == a2)
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

void VCAudioTransmitter_PushRemainingSamples(unint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a1 + 916) = [a1 chooseAudioNetworkBitrate];
  LODWORD(v5) = 0;
  v2 = [objc_msgSend(*(a1 + 376) config];
  v3 = *(a1 + 88);
  HIDWORD(v5) = v2;
  v6 = v3;
  v7 = 256;
  v8 = 0;
  v9 = *(a1 + 960);
  _VCAudioTransmitter_BundleAndSendSamples(a1, &v4, 0, 0);
}

void _VCAudioTransmitter_BundleAndSendSamples(unint64_t a1, uint64_t a2, int a3, char a4)
{
  v45 = *MEMORY[0x1E69E9840];
  *(a1 + 920) = 0;
  v8 = *(a2 + 12);
  *(a1 + 912) = v8;
  if (v8 != [*(a1 + 8) payload] && objc_msgSend(*(a1 + 8), "bundledPackets") || objc_msgSend(*(a1 + 8), "isFull"))
  {
    _VCAudioTransmitter_FlushBundlers(a1);
  }

  if ((a3 & 1) == 0 && [*(a1 + 8) bundledPackets] || !*a2 && (*(a1 + 480) & 1) == 0)
  {
    _VCAudioTransmitter_FlushBundlers(a1);
    goto LABEL_15;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  if ((a4 & 1) != 0 || (*(a1 + 480) & 1) == 0)
  {
    *(a1 + 184) = 0x7FF8000000000000;
  }

  else
  {
    if (*(a2 + 32) - *(a1 + 184) >= 0.3)
    {
      if (*(a1 + 176) == 1)
      {
        _VCAudioTransmitter_FlushBundlers(a1);
        *(a1 + 176) = 0;
      }

      goto LABEL_15;
    }

    *(a1 + 176) = 1;
  }

  v24 = *(a1 + 376);
  v25 = [objc_msgSend(v24 "config")];
  v26 = *(a2 + 12);
  if (v25 != v26)
  {
    v24 = _VCAudioTransmitter_UsedAudioPayloadForType(a1, v26);
  }

  *(a2 + 12) = [objc_msgSend(v24 "config")];
  if (VCPacketBundler_BundleAudio(*(a1 + 8), a2))
  {
    if (![*(a1 + 376) shortREDEnabled] || VCPacketBundler_BundleAudio(*(a1 + 16), (a2 + 40)))
    {
LABEL_15:
      if ([*(a1 + 8) isFull])
      {
        _VCAudioTransmitter_FlushBundlers(a1);
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        v11 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 280);
            v13 = *(a1 + 912);
            v14 = *(a2 + 8);
            v15 = *(a2 + 48);
            if (*(a1 + 48))
            {
              v16 = "voicedFrameCount";
            }

            else
            {
              v16 = "silenceFrameCount";
            }

            v17 = *(a1 + 288);
            v27 = 136317186;
            v28 = v9;
            v29 = 2080;
            v30 = "_VCAudioTransmitter_BundleAndSendSamples";
            v31 = 1024;
            v32 = 1413;
            v33 = 1024;
            v34 = v12;
            v35 = 1024;
            v36 = v13;
            v37 = 1024;
            v38 = v14;
            v39 = 1024;
            v40 = v15;
            v41 = 2080;
            v42 = v16;
            v43 = 1024;
            v44 = v17;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAT bundleAndSendSamples: frame#=%u payload=%u numBytes=%u shortREDBufferSize=%u %s=%u", &v27, 0x44u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v18 = *(a1 + 280);
          v19 = *(a1 + 912);
          v20 = *(a2 + 8);
          v21 = *(a2 + 48);
          if (*(a1 + 48))
          {
            v22 = "voicedFrameCount";
          }

          else
          {
            v22 = "silenceFrameCount";
          }

          v23 = *(a1 + 288);
          v27 = 136317186;
          v28 = v9;
          v29 = 2080;
          v30 = "_VCAudioTransmitter_BundleAndSendSamples";
          v31 = 1024;
          v32 = 1413;
          v33 = 1024;
          v34 = v18;
          v35 = 1024;
          v36 = v19;
          v37 = 1024;
          v38 = v20;
          v39 = 1024;
          v40 = v21;
          v41 = 2080;
          v42 = v22;
          v43 = 1024;
          v44 = v23;
          _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCAT bundleAndSendSamples: frame#=%u payload=%u numBytes=%u shortREDBufferSize=%u %s=%u", &v27, 0x44u);
        }
      }
    }
  }
}

void VCAudioTransmitter_PushAudioSamples(unint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    *(a1 + 916) = [a1 chooseAudioNetworkBitrate];
    if (*(a1 + 480) == 1 && !VCAudioBufferList_GetVoiceActivity(a2))
    {
      ++*(a1 + 604);
    }

    SampleCount = VCAudioBufferList_GetSampleCount(a2);
    if (SampleCount)
    {
      v5 = SampleCount;
      v6 = [objc_msgSend(*(a1 + 376) "config")];
      v7 = VCAudioBufferList_GetSampleCount(*(a1 + 40));
      v8 = v7;
      v9 = v5 == v6 && v7 == 0;
      v10 = !v9;
      v56 = v10;
      if (!v9)
      {
        VCAudioBufferList_Append(*(a1 + 40), a2, 0);
      }

      v11 = v8 + v5;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        v14 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            *&buf[4] = v12;
            *v66 = 2080;
            *&v66[2] = "VCAudioTransmitter_PushAudioSamples";
            *&v66[10] = 1024;
            *&v66[12] = 997;
            *&v66[16] = 1024;
            *&v66[18] = v6;
            *&v66[22] = 1024;
            *&v66[24] = v8;
            *&v66[28] = 1024;
            *&v66[30] = v11;
            *&v66[34] = 1024;
            LODWORD(v67) = VCAudioBufferList_GetTimestamp(a2);
            _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d encoderSamplePerFrame:%d bufferedSamples:%d totalSamples:%d timestamp:%d", buf, 0x34u);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316674;
          *&buf[4] = v12;
          *v66 = 2080;
          *&v66[2] = "VCAudioTransmitter_PushAudioSamples";
          *&v66[10] = 1024;
          *&v66[12] = 997;
          *&v66[16] = 1024;
          *&v66[18] = v6;
          *&v66[22] = 1024;
          *&v66[24] = v8;
          *&v66[28] = 1024;
          *&v66[30] = v11;
          *&v66[34] = 1024;
          LODWORD(v67) = VCAudioBufferList_GetTimestamp(a2);
          _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d encoderSamplePerFrame:%d bufferedSamples:%d totalSamples:%d timestamp:%d", buf, 0x34u);
        }
      }

      v18 = a2;
      if (v56)
      {
        v18 = *(a1 + 40);
      }

      if (v6 <= v11)
      {
        v19 = 0;
        v55 = v11 / v6;
        v54 = v18;
        while (1)
        {
          VoiceActivity = VCAudioBufferList_GetVoiceActivity(v18);
          v20 = VCMemoryPool_Alloc(*(a1 + 720));
          v21 = [objc_msgSend(*(a1 + 376) "config")];
          Timestamp = VCAudioBufferList_GetTimestamp(v18);
          HostTime = VCAudioBufferList_GetHostTime(v18);
          v24 = *(a1 + 880);
          if (v24)
          {
            VCAudioDump_LogUnCompressedAudio(v24, 0, v18, 0);
          }

          v60 = v18;
          v61 = v20;
          v62 = v21;
          v63 = VoiceActivity != 0;
          v64 = 0;
          kdebug_trace();
          v25 = *(a1 + 376);
          v59 = Timestamp;
          v58 = v20;
          if ([objc_msgSend(v25 "config")] != v6)
          {
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v26 = *(a1 + 360);
            v27 = [v26 countByEnumeratingWithState:&v75 objects:buf count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v76;
              while (2)
              {
                for (i = 0; i != v28; ++i)
                {
                  if (*v76 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v75 + 1) + 8 * i);
                  if ([objc_msgSend(v31 "config")] == v6)
                  {
                    v25 = v31;
                    goto LABEL_39;
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v75 objects:buf count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }

LABEL_39:
              v18 = v54;
            }

            Timestamp = v59;
          }

          if (!*(a1 + 368) || *(a1 + 712) != 1)
          {
            break;
          }

          v32 = *(a1 + 737);
          if (VoiceActivity || (v32 & 1) != 0 || ([objc_msgSend(v25 "config")] & 1) != 0)
          {
            if (v32)
            {
              break;
            }
          }

          else
          {
            v25 = *(a1 + 368);
          }

          v33 = 1;
LABEL_51:
          if (v63 != *(a1 + 48))
          {
            *(a1 + 288) = 0;
            [v25 resetEncoderWithSampleBuffer:*(a1 + 160) + *(a1 + 168) - (*(a1 + 408) * v6 * *(a1 + 420)) numBytes:?];
            AFRCSetAudioSilent(*(a1 + 304), VoiceActivity == 0);
            AFRCSetAudioPayload(*(a1 + 304), [objc_msgSend(v25 "config")], objc_msgSend(v25, "bitrate"));
          }

LABEL_53:
          ++*(a1 + 288);
          if (v63 == 1)
          {
            ++*(a1 + 280);
LABEL_57:
            v34 = [v25 encodeAudio:v60 numInputSamples:v6 outputBytes:v61 numOutputBytes:1600 shortREDBytes:&v64];
            atomic_fetch_add_explicit((a1 + 264), v34, memory_order_relaxed);
            v62 = [objc_msgSend(v25 "config")];
            if (*(a1 + 452) == 3)
            {
              *(a1 + 960) = [v25 isSIDFrame:v61 encodedBytes:v34];
            }

            goto LABEL_59;
          }

          *(a1 + 280) = vadd_s32(*(a1 + 280), 0x100000001);
          if ((*(a1 + 472) & 1) == 0)
          {
            goto LABEL_57;
          }

          LODWORD(v34) = 0;
LABEL_59:
          *(a1 + 48) = v63;
          if (v33)
          {
            BufferAtIndex = VCAudioBufferList_GetBufferAtIndex(v60, 0, 0);
            v36 = *(a1 + 420) * *(a1 + 408) * v6;
            v37 = *(a1 + 168);
            v38 = *(a1 + 160);
            if (v37 <= v36)
            {
              v39 = (BufferAtIndex + (v36 - v37));
            }

            else
            {
              memmove(v38, &v38[v36], (v37 - v36));
              v38 = (*(a1 + 160) + (*(a1 + 168) - v36));
              v39 = BufferAtIndex;
              v37 = v36;
            }

            memcpy(v38, v39, v37);
            Timestamp = v59;
          }

          v40 = *(a1 + 856);
          if (v40)
          {
            v41 = [objc_msgSend(*(a1 + 376) "config")];
            v42 = [*(a1 + 376) bitrate];
            [*(a1 + 376) bandwidth];
            v43 = [objc_msgSend(*(a1 + 376) "config")];
            v44 = *(a1 + 960);
            AveragePower = VCAudioBufferList_GetAveragePower(v60);
            v46 = __exp10((AveragePower / 20.0));
            *buf = v41;
            Timestamp = v59;
            *&buf[8] = v34;
            v47 = v42;
            v18 = v54;
            *&buf[4] = v47;
            *v66 = v46;
            *&v66[4] = v43;
            v66[6] = v44;
            VCAudioIssueDetector_ProcessFrame(v40, buf);
          }

          kdebug_trace();
          v48 = *(a1 + 872);
          if (v48)
          {
            VCAudioDump_LogCompressedAudio(v48, v61, v34, 0, 0, 0);
          }

          Priority = VCAudioBufferList_GetPriority(v60);
          v50 = Priority;
          if (v34)
          {
            v74 = 0;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            *&v66[20] = 0u;
            v67 = 0u;
            *&v66[4] = 0u;
            *buf = v61;
            *&buf[8] = v34;
            *v66 = v62;
            *&v66[4] = Timestamp;
            v66[8] = VoiceActivity != 0;
            v66[9] = Priority;
            v66[17] = *(a1 + 960);
            *&v66[20] = HostTime;
            if ([*(a1 + 376) shortREDEnabled])
            {
              *&v66[28] = &v61[v34];
              *&v67 = __PAIR64__(v62, v64);
              DWORD2(v67) = Timestamp;
              BYTE12(v67) = VoiceActivity != 0;
              BYTE13(v67) = v50;
              BYTE5(v68) = *(a1 + 960);
            }

            v51 = [*(a1 + 376) shortREDEnabled];
            v52 = 1;
            if (v51)
            {
              v53 = 2;
            }

            else
            {
              v53 = 1;
            }

            LOBYTE(v74) = v53;
            if (!VoiceActivity)
            {
              v52 = *(a1 + 472) ^ 1;
            }

            _VCAudioTransmitter_BundleAndSendSamples(a1, buf, v52 & 1, VoiceActivity != 0);
          }

          else
          {
            VCAudioPacketBundler_UpdatePriority(*(a1 + 8), Priority);
          }

          VCMemoryPool_Free(*(a1 + 720), v58);
          if (v56)
          {
            VCAudioBufferList_Shift(v18, v6);
          }

          if (++v19 >= v55)
          {
            goto LABEL_81;
          }
        }

        v33 = 0;
        if (*(a1 + 472) != 1)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }

LABEL_81:
      if (*(a1 + 504) == 0.0)
      {
        *(a1 + 504) = micro();
      }
    }

    else
    {
      v74 = 1;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v67 = 0u;
      memset(&v66[4], 0, 32);
      memset(buf, 0, sizeof(buf));
      *v66 = [objc_msgSend(*(a1 + 376) "config")];
      *&v66[4] = VCAudioBufferList_GetTimestamp(a2);
      *&v66[8] = 256;
      *&v66[12] = 0;
      v66[17] = *(a1 + 960);
      v15 = VCAudioBufferList_GetVoiceActivity(a2) != 0;
      _VCAudioTransmitter_BundleAndSendSamples(a1, buf, 0, v15);
      v16 = *(a1 + 40);
      v17 = VCAudioBufferList_GetSampleCount(v16);
      VCAudioBufferList_Shift(v16, v17);
    }
  }
}

unint64_t _VCAudioTransmitter_SendAudioPacketImpl(unint64_t result, int *a2, int *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  if (a2)
  {
    v5 = result;
    if (*(result + 736) == 1)
    {
      v6 = result + 616;
      *(result + 644) = *(a2 + 44);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(result + 856);
    if (v7)
    {
      VCAudioIssueDetector_ReportRTPTraffic(v7);
      VCAudioIssueDetector_FlushLogEvents(*(v5 + 856));
    }

    v8 = *(v5 + 328);
    if (v8 && *(v5 + 339) == 1)
    {
      ControlInfo = VCMediaControlInfoGeneratorCreateControlInfo(v8);
      if (*(v5 + 356) == 1)
      {
        v21 = 0;
        RTPGetSequenceNumber(*(v5 + 296), &v21);
        ++v21;
        v20 = 0;
        RTPGetSendROCWithSequenceNumber(*(v5 + 296), &v20, v21);
        VCMediaControlInfoSetInfo(ControlInfo, 0x13, &v20, 4);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          v12 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v23 = v10;
              v24 = 2080;
              v25 = "_VCAudioTransmitter_GenerateControlInfo";
              v26 = 1024;
              v27 = 1720;
              v28 = 2048;
              v29 = v5;
              v30 = 1024;
              v31 = v20;
              _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d transmitter=%p Current ROC=%d", buf, 0x2Cu);
            }
          }

          else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136316162;
            v23 = v10;
            v24 = 2080;
            v25 = "_VCAudioTransmitter_GenerateControlInfo";
            v26 = 1024;
            v27 = 1720;
            v28 = 2048;
            v29 = v5;
            v30 = 1024;
            v31 = v20;
            _os_log_debug_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d transmitter=%p Current ROC=%d", buf, 0x2Cu);
          }
        }

        *buf = 0;
        VCMediaControlInfoSetInfo(ControlInfo, 0x14, buf, 4);
      }
    }

    else
    {
      ControlInfo = 0;
    }

    kdebug_trace();
    v13 = *(v5 + 296);
    v14 = a2[8];
    v15 = *a2;
    v16 = a2[1];
    v17 = micro();
    result = RTPSendRTP(v13, v15, v14, v16, *(a2 + 6), a2[14], a3, a2 + 2, v17, *(a2 + 7), *(a2 + 24), a2[9], ControlInfo, v6, 0, *(v5 + 988));
    v18 = a2[14];
    v19 = v18 - atomic_fetch_and_explicit((v5 + 964), 0, memory_order_relaxed);
    if (v19 >= 1)
    {
      atomic_fetch_add_explicit((v5 + 268), v19, memory_order_relaxed);
    }
  }

  return result;
}

void VCAudioTransmitter_ReportAWDMetrics(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    valuePtr = [*(a1 + 376) bitrate];
    v1 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v3 = Mutable;
      v4 = CFNumberCreate(v1, kCFNumberIntType, &valuePtr);
      if (v4)
      {
        v5 = v4;
        CFDictionaryAddValue(v3, @"UplinkCodecBitRate", v4);
        CFRelease(v5);
        reportingAudioStreamLogMetricSample();
      }

      else
      {
        VCAudioTransmitter_ReportAWDMetrics_cold_1();
      }

      CFRelease(v3);
    }

    else
    {
      VCAudioTransmitter_ReportAWDMetrics_cold_2();
    }
  }
}

void VCAudioTransmitter_ProcessConnectionType(uint64_t a1, int a2)
{
  if (a1)
  {
    VCAudioIssueDetector_Stop(*(a1 + 856));
    VCAudioTransmitter_ReportAWDMetrics(a1);
    v4 = +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", [objc_msgSend(*(a1 + 376) "config")]);
    if (a2 == 2)
    {
      *(a1 + 738) = [VCPayloadUtils supportsCodecBandwidthUpdateForCodecType:v4];
      *(a1 + 488) = 2;
    }

    else
    {
      *(a1 + 738) = 0;
      *(a1 + 488) = a2;
      if (a2 == 3)
      {
        *(a1 + 840) = 0;
        *(a1 + 808) = 0u;
        *(a1 + 824) = 0u;
        *(a1 + 776) = 0u;
        *(a1 + 792) = 0u;
        *(a1 + 744) = 0u;
        *(a1 + 760) = 0u;
      }
    }

    VCAudioIssueDetector_UpdateConnectionType(*(a1 + 856), a2);
    v5 = *(a1 + 856);

    VCAudioIssueDetector_Start(v5);
  }

  else
  {
    VCAudioTransmitter_ProcessConnectionType_cold_1();
  }
}

void VCAudioTransmitter_UpdateWrmMetrics(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = 0;
    v6[0] = 0;
    RTPGetJitter(a1, v6 + 1, &v5 + 1, &v5);
    RTPGetPacketSent(a1, v6);
    v4 = v6[0];
    *(a2 + 52) = HIDWORD(v6[0]);
    *(a2 + 196) = v4;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioTransmitter_UpdateWrmMetrics_cold_1();
    }
  }
}

void _VCAudioTransmitter_FlushBundlers(unint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  if ([*(a1 + 376) shortREDEnabled])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  LOBYTE(v19) = v2;
  v3 = [*(a1 + 8) bundlingScheme];
  v4 = *(a1 + 8);
  if (v3 == 3)
  {
    v5 = [v4 bundledPackets];
    if (v5)
    {
      v6 = v5;
      LOBYTE(v19) = 1;
      BundledPackets = VCPacketBundler_ExtractBundledPackets(*(a1 + 8), 0, &v9);
      if (!BundledPackets)
      {
LABEL_11:
        _VCAudioTransmitter_FlushBundlers_cold_3(BundledPackets);
        return;
      }

      v8 = 0;
      while (1)
      {
        atomic_fetch_add_explicit((a1 + 964), DWORD2(v9), memory_order_relaxed);
        _VCAudioTransmitter_SendAudioBundle(a1, &v9);
        v19 = 0;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        ++v8;
        v9 = 0u;
        v10 = 0u;
        if (v8 >= v6)
        {
          break;
        }

        LOBYTE(v19) = 1;
        if ((VCPacketBundler_ExtractBundledPackets(*(a1 + 8), v8, &v9) & 1) == 0)
        {
          BundledPackets = v8;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    if ((VCPacketBundler_ExtractBundledPackets(v4, 0, &v9) & 1) == 0)
    {
      _VCAudioTransmitter_FlushBundlers_cold_1();
      return;
    }

    atomic_fetch_add_explicit((a1 + 964), DWORD2(v9), memory_order_relaxed);
    if ([*(a1 + 376) shortREDEnabled] && (VCPacketBundler_ExtractBundledPackets(*(a1 + 16), 0, &v11 + 8) & 1) == 0)
    {
      _VCAudioTransmitter_FlushBundlers_cold_2();
      return;
    }

    _VCAudioTransmitter_SendAudioBundle(a1, &v9);
  }

  [*(a1 + 8) resetBuffer];
  [*(a1 + 16) resetBuffer];
}

void _VCAudioTransmitter_SendAudioBundle(unint64_t a1, uint64_t *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    _VCAudioTransmitter_SendAudioBundle_cold_8();
    return;
  }

  v26 = 0;
  v30 = 0;
  if ([*(a1 + 8) bundledPackets])
  {
    v4 = MEMORY[0x1E1289F20](a1 + 464);
    [v4 packMeters:&v30 withLength:&v26];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  v5 = *(a2 + 6);
  v6 = [objc_msgSend(*(a1 + 376) "config")];
  v7 = [*(a1 + 8) packetsPerBundle] * v6 - v5;
  if (v7 < 1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *(a1 + 112) * ceilf(v7 / *(a1 + 432));
  }

  if ((*(a1 + 916) & 1) == 0)
  {
    v20 = *(a1 + 920);
    goto LABEL_45;
  }

  v9 = v26;
  v10 = *(a1 + 336);
  DWORD2(v35) = -1431655766;
  *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a2;
  *&v37 = *a2;
  *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = *(a2 + 3);
  DWORD2(v37) = *(a2 + 2);
  LODWORD(v34) = v12;
  BYTE12(v36) = *(a2 + 21);
  if (*(a1 + 344) == 1)
  {
    v13 = RTPGetExternalPayload(*(a1 + 296), v12);
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    LOBYTE(v38) = *(a2 + 160);
    v14 = v38;
    if (v38)
    {
      v15 = &v39 + 8;
      v16 = (a2 + 2);
      do
      {
        *(v15 - 2) = *(v16 - 2);
        v17 = *v16;
        *(v15 - 2) = *(v16 - 2);
        *(v15 - 1) = v17;
        *v15 = *(v16 + 5);
        v15 += 24;
        v16 += 10;
        --v14;
      }

      while (v14);
    }

    PrimaryPayloadAndAppendSamples = VCAudioRedBuilder_GetPrimaryPayloadAndAppendSamples(*(a1 + 24), &v38, v13);
    if ([*(a1 + 24) numPayloads])
    {
      if (PrimaryPayloadAndAppendSamples)
      {
        v19 = [*(a1 + 24) redPayloadForPrimaryPayload:PrimaryPayloadAndAppendSamples];
        if (v19)
        {
          v11 = *(v19 + 8);
          *&v37 = v11;
          DWORD2(v37) = *(v19 + 16);
          LODWORD(v34) = *v19;
          BYTE12(v36) = *(v19 + 31);
LABEL_24:
          VCAudioRedBuilder_UpdatePayloadHistory(*(a1 + 24));
          goto LABEL_25;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCAudioTransmitter_SendAudioBundle_cold_1();
        }
      }

      v11 = 0;
      *&v37 = 0;
      DWORD2(v37) = 0;
    }

    if (!PrimaryPayloadAndAppendSamples)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:
  if (!v11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCAudioTransmitter_SendAudioBundle_cold_7();
      }
    }

    v25 = 0;
    goto LABEL_44;
  }

  if ((v9 - 1) <= 0xF)
  {
    __memcpy_chk();
  }

  BYTE8(v35) = v9;
  DWORD1(v34) = *(a2 + 4);
  v21 = *(a2 + 28);
  *(&v35 + 3) = v8;
  *&v36 = __PAIR64__(v10, v21);
  DWORD2(v36) = *(a1 + 172);
  if (*(a1 + 848))
  {
    v31 = v34;
    v32 = v35;
    v33 = v36;
    v22 = HIDWORD(v37);
    theBuffer = 0;
    blockBufferOut = 0;
    if (*(&v37 + 4) <= 0)
    {
      _VCAudioTransmitter_SendAudioBundle_cold_6();
    }

    else if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], v37, DWORD2(v37), *MEMORY[0x1E695E498], 0, 0, DWORD2(v37), 0, &blockBufferOut))
    {
      _VCAudioTransmitter_SendAudioBundle_cold_2();
    }

    else if ((VCCryptor_Encrypt(*(a1 + 848), blockBufferOut, &theBuffer) & 0x80000000) != 0)
    {
      _VCAudioTransmitter_SendAudioBundle_cold_5();
    }

    else
    {
      DataLength = CMBlockBufferGetDataLength(theBuffer);
      v24 = DataLength;
      if (CMBlockBufferIsRangeContiguous(theBuffer, 0, DataLength))
      {
        dataPointerOut = 0;
        if (!CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut))
        {
          v38 = v31;
          v39 = v32;
          v40 = v33;
          *&v41 = dataPointerOut;
          *(&v41 + 1) = __PAIR64__(v22, v24);
          v25 = _VCAudioTransmitter_SendAudioPacket(a1, &v38);
LABEL_35:
          if (theBuffer)
          {
            CFRelease(theBuffer);
          }

          if (blockBufferOut)
          {
            CFRelease(blockBufferOut);
          }

          goto LABEL_44;
        }

        _VCAudioTransmitter_SendAudioBundle_cold_3();
      }

      else
      {
        _VCAudioTransmitter_SendAudioBundle_cold_4();
      }
    }

    v25 = v38;
    goto LABEL_35;
  }

  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  v25 = _VCAudioTransmitter_SendAudioPacket(a1, &v38);
LABEL_44:
  v20 = *(a1 + 920) + v25;
  *(a1 + 920) = v20;
LABEL_45:
  *(a1 + 88) = *(a2 + 4);
  *(a1 + 92) = 0;
  atomic_fetch_add_explicit((a1 + 260), v20, memory_order_relaxed);
  atomic_fetch_add_explicit((a1 + 984), v20, memory_order_relaxed);
  *(a1 + 272) = vadd_s32(*(a1 + 272), vdup_n_s32(v20));
  if (*(a1 + 912) == 13)
  {
    *(a1 + 276) += *(a1 + 172) * (7 / [*(a1 + 8) packetsPerBundle]) + 77;
  }
}

uint64_t _VCAudioTransmitter_SendAudioPacket(unint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  *(a1 + 336) = *(a2 + 36) != 0;
  if (*(a1 + 200))
  {
    PacketThread_SendPacket(*(a1 + 200), a2, *(a2 + 48), *(a2 + 56));
    return (*(a2 + 40) + *(a2 + 56));
  }

  else
  {
    _VCAudioTransmitter_SendAudioPacketImpl(a1, a2, &v4);
    return v4;
  }
}

uint64_t ARPLSendingSetElement::buffer(ARPLSendingSetElement *this, unsigned __int8 *a2, unsigned __int32 a3, unsigned int a4, unsigned int a5, char a6, sockaddr *a7, unsigned int a8, int a9, int a10, int a11)
{
  v54 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 32));
  can_buffer = ARPLAssociationSetElement::can_buffer(this, 1);
  if (a4 <= a5 && a2 && a3 - 1 <= 0x7FF && can_buffer && (v20 = *(this + 699), v20 <= 0x3F))
  {
    *(this + 699) = v20 + 1;
    v21 = *(this + 697);
    *(this + 697) = (v21 + 1) & 0x3F;
    v22 = this + 120;
    *(*(this + v21 + 15) + 156) = *(*(this + v21 + 15) + 156) & 0xFFFFFFFE | !ARPLAssociationSetElement::can_buffer(this, 1);
    *(*(this + v21 + 15) + 156) |= 2u;
    *(*(this + v21 + 15) + 156) = *(*(this + v21 + 15) + 156) & 0xFFFFC0FF | ((v21 & 0x3F) << 8);
    *(*(this + v21 + 15) + 156) = *(*(this + v21 + 15) + 156) & 0xFFFFFF03 | (4 * (*(this + 698) & 0x3F));
    *(*(this + v21 + 15) + 156) = *(*(this + v21 + 15) + 156) & 0x3FFFFFF | (*(this + 697) << 26);
    *(*(this + v21 + 15) + 156) = *(*(this + v21 + 15) + 156) & 0xFFFFC0FF | ((v21 & 0x3F) << 8);
    *(*(this + v21 + 15) + 156) = *(*(this + v21 + 15) + 156) & 0xFFF03FFF | ((a4 & 0x3F) << 14);
    *(*(this + v21 + 15) + 156) = *(*(this + v21 + 15) + 156) & 0xFC0FFFFF | ((a5 & 0x3F) << 20);
    v23 = *(this + 27);
    *(this + 27) = v23 + 1;
    *(*(this + v21 + 15) + 148) = v23;
    v24 = CARPL::current_timestamp(*(this + 1));
    v25 = *(this + v21 + 15);
    *(v25 + 152) = v24;
    *(v25 + 160) = a3;
    *(this + v21 + 632) = a6;
    memcpy((*(this + v21 + 15) + 164), a2, a3);
    if (a7 && a8)
    {
      memcpy((*&v22[8 * v21] + 16), a7, a8);
    }

    v26 = *&v22[8 * v21];
    v26[36] = a8;
    v26[1] = a10;
    v26[2] = a9;
    *v26 = a11;
    v27 = v21 - 32;
    if (v21 < 0x20)
    {
      v27 = v21;
    }

    v28 = 1 << v27;
    v29 = 100;
    if (v21 < 0x20)
    {
      v29 = 96;
    }

    *(this + v29) |= v28;
    v30.i32[0] = 1;
    v30.i32[1] = a3;
    *(*(this + 1) + 432) = vadd_s32(*(*(this + 1) + 432), v30);
  }

  else
  {
    if (!ARPLAssociationSetElement::can_buffer(this, 1) && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x1E6986650];
      v33 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(this + 27);
          *buf = 136316418;
          v43 = v31;
          v44 = 2080;
          v45 = "buffer";
          v46 = 1024;
          v47 = 855;
          v48 = 1024;
          v49 = v34;
          v50 = 1024;
          v51 = a4;
          v52 = 1024;
          v53 = a5;
          _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d buffer: CAN'T BUFFER (%08X:%02d:%02d)...", buf, 0x2Eu);
        }
      }

      else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v41 = *(this + 27);
        *buf = 136316418;
        v43 = v31;
        v44 = 2080;
        v45 = "buffer";
        v46 = 1024;
        v47 = 855;
        v48 = 1024;
        v49 = v41;
        v50 = 1024;
        v51 = a4;
        v52 = 1024;
        v53 = a5;
        _os_log_debug_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEBUG, " [%s] %s:%d buffer: CAN'T BUFFER (%08X:%02d:%02d)...", buf, 0x2Eu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      v37 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(this + 27);
          *buf = 136316418;
          v43 = v35;
          v44 = 2080;
          v45 = "buffer";
          v46 = 1024;
          v47 = 857;
          v48 = 1024;
          v49 = v38;
          v50 = 1024;
          v51 = a4;
          v52 = 1024;
          v53 = a5;
          _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d buffer: FAILED TO BUFFER A RELIABLE PACKET SERIALNUMBER (%08X:%02d:%02d)...", buf, 0x2Eu);
        }
      }

      else if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v40 = *(this + 27);
        *buf = 136316418;
        v43 = v35;
        v44 = 2080;
        v45 = "buffer";
        v46 = 1024;
        v47 = 857;
        v48 = 1024;
        v49 = v40;
        v50 = 1024;
        v51 = a4;
        v52 = 1024;
        v53 = a5;
        _os_log_debug_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEBUG, " [%s] %s:%d buffer: FAILED TO BUFFER A RELIABLE PACKET SERIALNUMBER (%08X:%02d:%02d)...", buf, 0x2Eu);
      }
    }

    v21 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock((this + 32));
  return v21;
}

BOOL ARPLAssociationSetElement::can_buffer(ARPLAssociationSetElement *this, _BOOL8 a2)
{
  pthread_mutex_lock((this + 32));
  v4 = *(this + 698);
  v5 = *(this + 696);
  if (v4 == v5)
  {
    v6 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = ((((v5 - v4) & ~((v5 - v4) >> 31)) + v4 - v5 + 63) & 0xFFFFFFC0) + v5 - v4;
  if (a2)
  {
LABEL_5:
    a2 = 63 - v6 - *(this + 699) >= a2;
  }

LABEL_6:
  pthread_mutex_unlock((this + 32));
  return a2;
}

uint64_t CARPL::current_timestamp(CARPL *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(this + 50);
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  if (!gettimeofday(&v6, 0))
  {
    v3 = (v6.tv_usec / 1000 + 1000 * (SLODWORD(v6.tv_sec) % 604800)) % 0x240C8400u;
    v2 = *(this + 50);
    if (v2 == -1 || (v2 > v3 ? (v4 = (v2 - v3) >= 0x12064201) : (v4 = 1), v4))
    {
      *(this + 50) = v3;
      return v3;
    }
  }

  return v2;
}

uint64_t ARPLAssociationSetElement::update_rto(ARPLAssociationSetElement *this, int a2)
{
  pthread_mutex_lock((this + 32));
  if (a2 >= 1)
  {
    v4 = *(this + 175);
    *(this + 175) = v4 + 1;
    v5 = *(this + 176);
    if (v4 > 0x3F)
    {
      v9 = a2 - (v5 >> 6);
      if (v9 >= 0)
      {
        v10 = a2 - (v5 >> 6);
      }

      else
      {
        v10 = (v5 >> 6) - a2;
      }

      v11 = *(this + 177);
      if (v10 >= (3 * v11) >> 5)
      {
        goto LABEL_12;
      }

      v12 = v9 + v5;
      *(this + 176) = v12;
      v13 = v10 - (v11 >> 5) + v11;
      *(this + 177) = v13;
      v7 = (v13 >> 5) + (v12 >> 6);
    }

    else
    {
      v6 = v5 + a2;
      *(this + 176) = v6;
      v7 = v6 / (v4 + 1);
      v8 = a2 - v7;
      if ((a2 - v7) < 0)
      {
        v8 = v7 - a2;
      }

      *(this + 177) = *(this + 177) - (*(this + 177) >> 5) + v8;
    }

    *(this + 178) = v7;
  }

LABEL_12:

  return pthread_mutex_unlock((this + 32));
}

void releaseAssociationSetElement(const __CFAllocator *a1, void *a2)
{
  v2 = a2[1];
  a2[2] = *(v2 + 192);
  *(v2 + 192) = a2;
}

uint64_t ARPLSend_internal(CARPL *a1, int a2, char *a3, size_t a4, int a5, sockaddr *a6, socklen_t a7, int a8, unsigned int a9, int a10, BOOL a11, BOOL a12)
{
  v113 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return -1;
  }

  if (a8 < 4)
  {
    memset(&v110[4], 0, 328);
    *buf = a8;
    *v110 = a9;
    *&v110[144] = a10;
    return VTP_Sendto(a2, a3, a4, a5, a6, a7, buf);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      v17 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = "non-reliable";
          *buf = 136316418;
          *v110 = v15;
          *&v110[8] = 2080;
          *&v110[10] = "ARPLSend_internal";
          if (a11)
          {
            v18 = "reliable";
          }

          *&v110[18] = 1024;
          *&v110[20] = 1054;
          *&v110[24] = 1024;
          *&v110[26] = a8;
          *&v110[30] = 2048;
          *&v110[32] = a4;
          *&v110[40] = 2080;
          *&v110[42] = v18;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ARPL_Sendto(%d): send %ld bytes %s ...", buf, 0x36u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v67 = "non-reliable";
        *buf = 136316418;
        *v110 = v15;
        *&v110[8] = 2080;
        *&v110[10] = "ARPLSend_internal";
        if (a11)
        {
          v67 = "reliable";
        }

        *&v110[18] = 1024;
        *&v110[20] = 1054;
        *&v110[24] = 1024;
        *&v110[26] = a8;
        *&v110[30] = 2048;
        *&v110[32] = a4;
        *&v110[40] = 2080;
        *&v110[42] = v67;
        _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ARPL_Sendto(%d): send %ld bytes %s ...", buf, 0x36u);
      }
    }

    v77 = a8;
    v82 = a1;
    pthread_mutex_lock((a1 + 216));
    v20 = *(a1 + 26);
    pthread_mutex_unlock((a1 + 216));
    if (a4 >= 1)
    {
      v83 = 0;
      v21 = 0;
      v84 = !a11;
      v22 = v20 != 0;
      v73 = bswap32(a9);
      v23 = a4;
      v24 = a3;
      while (1)
      {
        v85 = v21;
        v25 = 0;
        *&v26 = 0xAAAAAAAAAAAAAAAALL;
        *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v112[31] = v26;
        v112[30] = v26;
        v112[29] = v26;
        v112[28] = v26;
        v112[27] = v26;
        v112[26] = v26;
        v112[25] = v26;
        v112[24] = v26;
        v112[23] = v26;
        v112[22] = v26;
        v112[21] = v26;
        v112[20] = v26;
        v112[19] = v26;
        v112[18] = v26;
        v112[17] = v26;
        v112[16] = v26;
        v112[15] = v26;
        v112[14] = v26;
        v112[13] = v26;
        v112[12] = v26;
        v112[11] = v26;
        v112[10] = v26;
        v112[9] = v26;
        v112[8] = v26;
        v112[7] = v26;
        v112[6] = v26;
        v112[5] = v26;
        v112[4] = v26;
        v112[3] = v26;
        v112[2] = v26;
        v112[1] = v26;
        v112[0] = v26;
        v111[15] = v26;
        v111[14] = v26;
        v111[13] = v26;
        v111[12] = v26;
        v111[11] = v26;
        v111[10] = v26;
        v111[9] = v26;
        v111[8] = v26;
        v111[7] = v26;
        v111[6] = v26;
        v111[5] = v26;
        v111[4] = v26;
        v111[3] = v26;
        v111[2] = v26;
        v111[1] = v26;
        v111[0] = v26;
        v27 = vdupq_n_s64(v24);
        do
        {
          v112[v25++] = v27;
        }

        while (v25 != 32);
        v28 = 0;
        v29 = 0;
        v30 = 1;
        do
        {
          v31 = v28;
          *(v112 + v28) = v24;
          if (v23 >= 1160)
          {
            v32 = 1160;
          }

          else
          {
            v32 = v23;
          }

          *(v111 + v28) = v32;
          v33 = v30;
          v29 += v32;
          v23 -= v32;
          v24 += v32;
          ++v28;
          if (v31 > 0x3D)
          {
            break;
          }

          ++v30;
        }

        while (v23 > 0);
        v34 = v84;
        if (v28 != 1 && v84)
        {
          v34 = 0;
        }

        v36 = v34;
        v84 = v34;
        if (!v34 && v23 >= 1)
        {
          v66 = a12 - 1;
          goto LABEL_85;
        }

        v74 = v28 - 1;
        v37 = v34 || a12;
        if (v37 || !v22)
        {
          break;
        }

        v38 = 0;
        v33 = 64;
        v21 = v85;
        if (!v37)
        {
          goto LABEL_73;
        }

LABEL_79:
        v66 = -1;
        if (v38 || v23 < 1 || v36)
        {
          goto LABEL_85;
        }
      }

      v70 = v37;
      v71 = v34;
      v72 = v22;
      v39 = 0;
      v78 = 2 * v36;
      while (1)
      {
        v40 = CARPL::sendingSetElement(v82, a9);
        if (!v84)
        {
          can_buffer = ARPLAssociationSetElement::can_buffer(v40, (v28 - v39));
          v42 = v85;
          if (!can_buffer)
          {
            v42 = -2145124351;
          }

          v85 = v42;
        }

        v43 = *(v111 + v39);
        __n = v43;
        v44.i32[0] = 1;
        v44.i32[1] = *(v111 + v39);
        v82[53] = vadd_s32(v82[53], v44);
        memset(v110, 170, sizeof(v110));
        buf[0] = 0;
        buf[1] = v78;
        *&buf[2] = 0;
        if (v84)
        {
          v45 = *(v112 + v39);
          v46 = v110;
          v47 = v43;
        }

        else
        {
          v48 = CARPL::sendingSetElement(v82, a9);
          v76 = *(v112 + v39);
          v49 = ARPLSendingSetElement::buffer(v48, v76, v43, v39, v74, 0, a6, a7, v77, a10, a2);
          if ((v49 & 0x80000000) != 0)
          {
            if (VRTraceGetErrorLogLevelForModule() < 8)
            {
              v46 = v110;
            }

            else
            {
              v56 = VRTraceErrorLogLevelToCSTR();
              v57 = *MEMORY[0x1E6986650];
              log = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  *v87 = 136315906;
                  *v88 = v56;
                  *&v88[8] = 2080;
                  *&v88[10] = "ARPLSend_internal";
                  *&v88[18] = 1024;
                  LODWORD(v89) = 1208;
                  WORD2(v89) = 2048;
                  *(&v89 + 6) = v82;
                  _os_log_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ARPL %p send: FAILED TO BUFFER A RELIABLE PACKET ..", v87, 0x26u);
                }
              }

              else if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
              {
                *v87 = 136315906;
                *v88 = v56;
                *&v88[8] = 2080;
                *&v88[10] = "ARPLSend_internal";
                *&v88[18] = 1024;
                LODWORD(v89) = 1208;
                WORD2(v89) = 2048;
                *(&v89 + 6) = v82;
                _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ARPL %p send: FAILED TO BUFFER A RELIABLE PACKET ..", v87, 0x26u);
              }

              v46 = v110;
            }
          }

          else
          {
            *v110 = v73;
            v50 = (v48 + 8 * v49);
            v51 = v50[15];
            v50 += 15;
            *&v110[4] = bswap32(*(v51 + 148));
            v52 = ARPLAssociationSetElement::can_buffer(v48, 1);
            *&v110[8] = *&v110[8] & 0xFFFFFFFC | !v52 | 2;
            *&v110[8] = *&v110[8] & 0xFFFFFF03 | (4 * ((*(*v50 + 156) >> 2) & 0x3F));
            *&v110[8] = *&v110[8] & 0xFFFFC0FF | (((*(*v50 + 156) >> 8) & 0x3F) << 8);
            *&v110[8] = *&v110[8] & 0xFFF03FFF | (((*(*v50 + 156) >> 14) & 0x3F) << 14);
            *&v110[8] = *&v110[8] & 0xFC0FFFFF | (((*(*v50 + 156) >> 20) & 0x3F) << 20);
            *&v110[8] = *(*v50 + 156) & 0xFC000000 | *&v110[8] & 0x3FFFFFF;
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v53 = VRTraceErrorLogLevelToCSTR();
              v54 = *MEMORY[0x1E6986650];
              v55 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *v87 = 136316930;
                  *v88 = v53;
                  *&v88[8] = 2080;
                  *&v88[10] = "ARPLSend_internal";
                  *&v88[18] = 1024;
                  LODWORD(v89) = 1206;
                  WORD2(v89) = 2048;
                  *(&v89 + 6) = v82;
                  HIWORD(v89) = 1024;
                  LODWORD(v90) = bswap32(*&v110[4]);
                  WORD2(v90) = 1024;
                  *(&v90 + 6) = (*&v110[8] >> 14) & 0x3F;
                  WORD5(v90) = 1024;
                  HIDWORD(v90) = (*&v110[8] >> 20) & 0x3F;
                  LOWORD(v91) = 1024;
                  *(&v91 + 2) = bswap32(*v110);
                  _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ARPL %p send: BUFFERED A NEW RELIABLE PACKET SERIALNUMBER (%08X:%02d:%02d) to (%08X)...", v87, 0x3Eu);
                }
              }

              else if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                *v87 = 136316930;
                *v88 = v53;
                *&v88[8] = 2080;
                *&v88[10] = "ARPLSend_internal";
                *&v88[18] = 1024;
                LODWORD(v89) = 1206;
                WORD2(v89) = 2048;
                *(&v89 + 6) = v82;
                HIWORD(v89) = 1024;
                LODWORD(v90) = bswap32(*&v110[4]);
                WORD2(v90) = 1024;
                *(&v90 + 6) = (*&v110[8] >> 14) & 0x3F;
                WORD5(v90) = 1024;
                HIDWORD(v90) = (*&v110[8] >> 20) & 0x3F;
                LOWORD(v91) = 1024;
                *(&v91 + 2) = bswap32(*v110);
                _os_log_debug_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ARPL %p send: BUFFERED A NEW RELIABLE PACKET SERIALNUMBER (%08X:%02d:%02d) to (%08X)...", v87, 0x3Eu);
              }
            }

            v46 = &v110[12];
          }

          v47 = v43;
          v45 = v76;
        }

        v58 = 0;
        v59 = v46 - buf + 3;
        buf[0] = v59 >> 2;
        if (v45 && v43 >= 1)
        {
          LOWORD(v58) = 0;
          v60 = v45;
          do
          {
            v61 = *v60++;
            v58 = CRC16Table[(v61 ^ v58)] ^ ((v58 & 0xFF00) >> 8);
            --v43;
          }

          while (v43);
        }

        *&buf[2] = bswap32(v58) >> 16;
        v62 = v59 & 0x3FC;
        memcpy(&buf[v62], v45, v47);
        if ((v83 & 0x8000000000000000) == 0)
        {
          v108 = 0;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          *&v88[4] = 0u;
          v89 = 0u;
          *v87 = v77;
          *v88 = a9;
          HIDWORD(v96) = a10;
          v63 = VTP_Sendto(a2, buf, v62 + v47, a5, a6, a7, v87);
          v64 = v83 + __n;
          if (v63 < 0)
          {
            v64 = -1;
          }

          v83 = v64;
        }

        v21 = v85;
        if (v85)
        {
          break;
        }

        v85 = 0;
        if (++v39 == v33)
        {
          v21 = 0;
          goto LABEL_72;
        }
      }

      v33 = v39;
LABEL_72:
      v38 = v21;
      v36 = v71;
      v22 = v72;
      if (v70)
      {
        goto LABEL_79;
      }

LABEL_73:
      v36 = 0;
      v65 = v22 || v38 != 0;
      if (!v22)
      {
        v38 = 0;
      }

      if (v33 <= v74 && (v65 & 1) != 0)
      {
        operator new();
      }

      v22 = v65;
      goto LABEL_79;
    }

    v83 = 0;
    v66 = -1;
LABEL_85:
    if (v83 == a4)
    {
      return v83;
    }

    else
    {
      return v66;
    }
  }
}

const void *CARPL::sendingSetElement(CARPL *this, int a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 56));
  v4 = *(this + 4);
  v5 = *(this + 5);
  v5[26] = a2;
  v7[0] = 0;
  if (!CFSetGetValueIfPresent(v4, v5, v7))
  {
    operator new();
  }

  pthread_mutex_unlock((this + 56));
  return v7[0];
}

uint64_t ARPLDataQueue::add_tail(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 8));
  v4 = *a1;
  if (*a1)
  {
    do
    {
      v5 = v4;
      if (v4 == a2)
      {
        a2 = 0;
      }

      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v5 = a1;
  }

  *v5 = a2;

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t ARPL_Sendto(uint64_t a1, int a2, char *a3, size_t a4, int a5, sockaddr *a6, socklen_t a7, int *a8)
{
  v15 = CheckInHandleDebug();
  if (!a4 || !a3 || !v15)
  {
    return -1;
  }

  v16 = ARPLSend_internal(v15, a2, a3, a4, a5, a6, a7, *a8, a8[1], a8[37], a8[38] != 0, 0);
  CheckOutHandleDebug();
  return v16;
}

uint64_t ARPLSessionRelease()
{
  v23 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    v2 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315650;
        v16 = v0;
        v17 = 2080;
        v18 = "ARPLSessionRelease";
        v19 = 1024;
        v20 = 2036;
        _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ARPLSessionRelease: enter...", &v15, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      ARPLSessionRelease_cold_1();
    }
  }

  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149842946;
  }

  CheckOutHandleDebug();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v3 + 5);
        v15 = 136315906;
        v16 = v4;
        v17 = 2080;
        v18 = "ARPLSessionRelease";
        v19 = 1024;
        v20 = 2044;
        v21 = 1024;
        v22 = v7;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ARPLSessionRelease: old session (%08X)...", &v15, 0x22u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      ARPLSessionRelease_cold_2();
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315650;
        v16 = v9;
        v17 = 2080;
        v18 = "ARPLSessionRelease";
        v19 = 1024;
        v20 = 2046;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ARPLSessionRelease: delete...", &v15, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      ARPLSessionRelease_cold_3();
    }
  }

  CARPL::~CARPL(v3);
  MEMORY[0x1E128B440](v3, 0x1020C4028DA6617);
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    v14 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      result = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v15 = 136315650;
      v16 = v12;
      v17 = 2080;
      v18 = "ARPLSessionRelease";
      v19 = 1024;
      v20 = 2050;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ARPLSessionRelease: done...", &v15, 0x1Cu);
    }

    else
    {
      result = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      ARPLSessionRelease_cold_4();
    }
  }

  return 0;
}

uint64_t ARPL_Monitor_Init(_BYTE *a1)
{
  if (*a1 & 1) != 0 || (a1[16])
  {
    return 3;
  }

  a1[16] = 1;
  return 2;
}

uint64_t checkSendingSet(char *a1, char *a2)
{
  *(&v45[256] + 4) = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a2 + 56));
  pthread_mutex_lock((a1 + 32));
  for (i = 0; i != 64; ++i)
  {
    v5 = (i + a1[698]) & 0x3FLL;
    v6 = *&a1[8 * v5 + 120];
    if (v6 && v6[40] && (v6[39] & 2) != 0 && v6[38] != -1)
    {
      v7 = CARPL::current_timestamp(a2);
      v8 = v7 - v6[38];
      if (v8 < 0)
      {
        if (v8 < 0xEDF9BE01)
        {
          v8 += 604800000;
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v45[0] = v25;
            LOWORD(v45[1]) = 2080;
            *(&v45[1] + 2) = "checkSendingSet";
            WORD1(v45[2]) = 1024;
            HIDWORD(v45[2]) = 2105;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ERROR: CAN'T RESEND (BAD TIMESTAMP) !!!!!!!!!!!!", buf, 0x1Cu);
          }
        }
      }

      v10 = *(a1 + 178);
      if (v10 && v8 > 3 * v10)
      {
        memset(v45 + 4, 170, 0x7F8uLL);
        buf[1] = a1[v5 + 632];
        v45[0] = __PAIR64__(bswap32(v6[37]), bswap32(*(a1 + 26)));
        v11 = v6[40];
        v12 = v6[39] & 0x3FFFF03 | (4 * (a1[698] & 0x3F)) | (a1[697] << 26);
        buf[0] = 4;
        *&buf[2] = 0;
        LODWORD(v45[1]) = v12;
        v6[38] = v7;
        ++v6[553];
        v13 = (v6 + 41);
        memcpy(&v45[1] + 4, v6 + 41, v11);
        v14 = v6[40];
        if (v14 < 1)
        {
          v15 = 0;
        }

        else
        {
          LOWORD(v15) = 0;
          do
          {
            v16 = *v13++;
            v15 = CRC16Table[(v16 ^ v15)] ^ ((v15 & 0xFF00) >> 8);
            --v14;
          }

          while (v14);
        }

        *&buf[2] = bswap32(v15) >> 16;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v19 = v6[37];
            v20 = *(a1 + 26);
            *v26 = 136316674;
            *&v26[4] = v17;
            *&v26[12] = 2080;
            *&v26[14] = "checkSendingSet";
            *&v26[22] = 1024;
            *&v26[24] = 2137;
            *&v26[28] = 2048;
            *&v26[30] = a2;
            *&v26[38] = 1024;
            *&v26[40] = v19;
            *&v26[44] = 1024;
            *&v26[46] = v20;
            *&v26[50] = 1024;
            *&v26[52] = v5;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p check: RESEND serial number %08X to destination %08X INDEX %d", v26, 0x38u);
          }
        }

        if (v6[36] && v6[2] >= 4)
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v27 = 0u;
          memset(v26, 0, sizeof(v26));
          *&v26[4] = *(a1 + 26);
          v21 = v6[1];
          *v26 = v6[2];
          DWORD1(v32) = v21;
          VTP_Sendto(*v6, buf, v6[40] + 16, 0, (v6 + 4), v6[36], v26);
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *v26 = 136315650;
            *&v26[4] = v22;
            *&v26[12] = 2080;
            *&v26[14] = "checkSendingSet";
            *&v26[22] = 1024;
            *&v26[24] = 2149;
            _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ERROR: CAN'T RESEND (BAD ADDRESS) !!!!!!!!!!!!", v26, 0x1Cu);
          }
        }
      }
    }
  }

  pthread_mutex_unlock((a1 + 32));
  return pthread_mutex_unlock((a2 + 56));
}

uint64_t ARPL_Monitor_Wait(CARPL *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 216));
  pthread_mutex_lock((a1 + 216));
  v2 = *(a1 + 26);
  pthread_mutex_unlock((a1 + 216));
  while (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      Length = CFDataGetLength(v3);
      if (Length)
      {
        if (*(v2 + 12))
        {
          v5 = Length;
          v6 = *(v2 + 24);
          BytePtr = CFDataGetBytePtr(*(v2 + 16));
          if (ARPLSend_internal(a1, v6, BytePtr, v5, 0, (v2 + 40), *(v2 + 168), *(v2 + 32), *(v2 + 176), *(v2 + 28), 1, 1) < 0)
          {
            break;
          }
        }
      }
    }

    pthread_mutex_lock((a1 + 216));
    v8 = *(a1 + 26);
    *(a1 + 26) = *v8;
    pthread_mutex_unlock((a1 + 216));
    v9 = *(v8 + 16);
    if (v9)
    {
      CFRelease(v9);
    }

    *(v8 + 16) = 0;
    *(v8 + 12) = 0;
    MEMORY[0x1E128B440](v8, 0x1060C40147352C3);
    pthread_mutex_lock((a1 + 216));
    v2 = *(a1 + 26);
    pthread_mutex_unlock((a1 + 216));
  }

  pthread_mutex_lock((a1 + 56));
  CFSetApplyFunction(*(a1 + 4), checkSendingSet, a1);
  pthread_mutex_unlock((a1 + 56));
  pthread_mutex_unlock((a1 + 216));
  v11 = xmmword_1DBD50F60;
  v11.tv_usec = 50000;
  select(0, 0, 0, 0, &v11);
  return 0;
}

uint64_t ARPL_Monitor_Thread(CARPL *a1)
{
  pthread_setname_np("com.apple.AVConference.SIP.arplMonitorProc");
  if ((*a1 & 1) == 0)
  {
    LODWORD(v2) = 0;
    v3 = ARPL_Monitor_Init;
    do
    {
      v2 = ARPL_Monitor_State_Transition_Table[4 * v2 + v3(a1)];
      v3 = ARPL_Monitor_Functions[v2];
    }

    while (*a1 != 1);
  }

  *(a1 + 1) = 0;
  return 0;
}

void CARPL::CARPL(CARPL *this)
{
  v2 = *MEMORY[0x1E69E9840];
  ARPLDataQueue::ARPLDataQueue((this + 208));
  ARPLDataQueue::ARPLDataQueue((this + 280));
  ARPLDataQueue::ARPLDataQueue((this + 352));
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 3) = CFSetCreateMutable(0, 0, &associationSetCallBacks);
  *(this + 4) = CFSetCreateMutable(0, 0, &associationSetCallBacks);
  operator new();
}

void sub_1DBAF07E0(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x1E128B440](v3, 0x10A1C4082659322);
  ARPLDataQueue::~ARPLDataQueue((v1 + 352));
  ARPLDataQueue::~ARPLDataQueue((v1 + 280));
  ARPLDataQueue::~ARPLDataQueue((v1 + 208));
  _Unwind_Resume(a1);
}

void ARPLDataQueue::ARPLDataQueue(ARPLDataQueue *this)
{
  v3 = *MEMORY[0x1E69E9840];
  *this = 0;
  v2.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v2.__opaque = 0xAAAAAAAAAAAAAAAALL;
  if (!pthread_mutexattr_init(&v2))
  {
    pthread_mutexattr_settype(&v2, 2);
    pthread_mutex_init((this + 8), &v2);
    pthread_mutexattr_destroy(&v2);
  }
}

void ARPLAssociationSetElement::ARPLAssociationSetElement(ARPLAssociationSetElement *this, CARPL *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *this = &unk_1F570CFE8;
  *(this + 1) = a2;
  *(this + 27) = 0;
  *(this + 696) = 0u;
  *(this + 178) = 0;
  ARPLAssociationSetElement::update_rto(this, 250);
  *(this + 28) = -1;
  v3.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v3.__opaque = 0xAAAAAAAAAAAAAAAALL;
  if (!pthread_mutexattr_init(&v3))
  {
    pthread_mutexattr_settype(&v3, 2);
    pthread_mutex_init((this + 32), &v3);
    pthread_mutexattr_destroy(&v3);
  }

  operator new();
}

void ARPLReceiveSetElement::~ARPLReceiveSetElement(ARPLReceiveSetElement *this)
{
  ARPLAssociationSetElement::~ARPLAssociationSetElement(this);

  JUMPOUT(0x1E128B440);
}

void ARPLAssociationSetElement::~ARPLAssociationSetElement(ARPLAssociationSetElement *this)
{
  ARPLAssociationSetElement::~ARPLAssociationSetElement(this);

  JUMPOUT(0x1E128B440);
}

{
  v2 = 0;
  *this = &unk_1F570CFE8;
  do
  {
    *(this + v2 + 632) = 8;
    v3 = *(this + v2 + 15);
    if (v3)
    {
      MEMORY[0x1E128B440](v3, 0x1000C404C6E3E2BLL);
    }

    ++v2;
  }

  while (v2 != 64);
  pthread_mutex_destroy((this + 32));
}

void ARPLSendingSetElement::~ARPLSendingSetElement(ARPLSendingSetElement *this)
{
  ARPLAssociationSetElement::~ARPLAssociationSetElement(this);

  JUMPOUT(0x1E128B440);
}

void ARPLDataQueue::~ARPLDataQueue(ARPLDataQueue *this)
{
  for (i = *this; *this; i = *this)
  {
    *this = *i;
    v3 = *(i + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    *(i + 16) = 0;
    *(i + 12) = 0;
    MEMORY[0x1E128B440](i, 0x1060C40147352C3);
  }

  pthread_mutex_destroy((this + 8));
}

void CARPL::~CARPL(CARPL *this)
{
  v19 = *MEMORY[0x1E69E9840];
  *this = 1;
  if (*(this + 16) == 1 && *(this + 1))
  {
    do
    {
      v18 = xmmword_1DBD50F60;
      v18.tv_usec = 50000;
      select(0, 0, 0, 0, &v18);
    }

    while (*(this + 1));
  }

  pthread_mutex_lock((this + 216));
  while (1)
  {
    pthread_mutex_lock((this + 216));
    v2 = *(this + 26);
    pthread_mutex_unlock((this + 216));
    if (!v2)
    {
      break;
    }

    pthread_mutex_lock((this + 216));
    v3 = *(this + 26);
    *(this + 26) = *v3;
    pthread_mutex_unlock((this + 216));
    v4 = *(v3 + 16);
    if (v4)
    {
      CFRelease(v4);
    }

    *(v3 + 16) = 0;
    *(v3 + 12) = 0;
    MEMORY[0x1E128B440](v3, 0x1060C40147352C3);
  }

  pthread_mutex_unlock((this + 216));
  pthread_mutex_lock((this + 288));
  while (1)
  {
    pthread_mutex_lock((this + 288));
    v5 = *(this + 35);
    pthread_mutex_unlock((this + 288));
    if (!v5)
    {
      break;
    }

    pthread_mutex_lock((this + 288));
    v6 = *(this + 35);
    *(this + 35) = *v6;
    pthread_mutex_unlock((this + 288));
    v7 = *(v6 + 16);
    if (v7)
    {
      CFRelease(v7);
    }

    *(v6 + 16) = 0;
    *(v6 + 12) = 0;
    MEMORY[0x1E128B440](v6, 0x1060C40147352C3);
  }

  pthread_mutex_unlock((this + 288));
  pthread_mutex_lock((this + 360));
  while (1)
  {
    pthread_mutex_lock((this + 360));
    v8 = *(this + 44);
    pthread_mutex_unlock((this + 360));
    if (!v8)
    {
      break;
    }

    pthread_mutex_lock((this + 360));
    v9 = *(this + 44);
    *(this + 44) = *v9;
    pthread_mutex_unlock((this + 360));
    v10 = *(v9 + 16);
    if (v10)
    {
      CFRelease(v10);
    }

    *(v9 + 16) = 0;
    *(v9 + 12) = 0;
    MEMORY[0x1E128B440](v9, 0x1060C40147352C3);
  }

  pthread_mutex_unlock((this + 360));
  v11 = *(this + 4);
  if (v11)
  {
    CFRelease(v11);
    *(this + 4) = 0;
  }

  v12 = *(this + 3);
  if (v12)
  {
    CFRelease(v12);
    *(this + 3) = 0;
  }

  while (1)
  {
    v13 = *(this + 23);
    if (!v13)
    {
      break;
    }

    v14 = v13[3];
    *(this + 23) = v13[2];
    CFSetRemoveValue(v14, v13);
  }

  while (1)
  {
    v15 = *(this + 24);
    if (!v15)
    {
      break;
    }

    *(this + 24) = v15[2];
    (*(*v15 + 8))(v15);
  }

  pthread_mutex_destroy((this + 56));
  pthread_mutex_destroy((this + 120));
  v16 = *(this + 5);
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 6);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  *(this + 16) = 0;
  ARPLDataQueue::~ARPLDataQueue((this + 352));
  ARPLDataQueue::~ARPLDataQueue((this + 280));
  ARPLDataQueue::~ARPLDataQueue((this + 208));
}

void ARPLDataQueueNode::ARPLDataQueueNode(ARPLDataQueueNode *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 3) = 0xFFFFFFFFLL;
  *(this + 8) = 0;
  *(this + 42) = 0;
  *(this + 44) = 0;
  *(this + 28) = micro();
  MakeIPPORT();
}

uint64_t VCCallInfoBlobReadFrom(id *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
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
        v34 = 0;
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

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
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
      if ((v11 >> 3) <= 3)
      {
        if (v12 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v36 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v36 & 0x7F) << v18;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_55;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v20;
          }

LABEL_55:
          v32 = 16;
          goto LABEL_60;
        }

        if (v12 == 2)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          while (1)
          {
            v35 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v35 & 0x7F) << v27;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v10 = v28++ >= 9;
            if (v10)
            {
              v23 = 0;
              goto LABEL_59;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v29;
          }

LABEL_59:
          v32 = 20;
LABEL_60:
          *(a1 + v32) = v23;
          goto LABEL_61;
        }

        if (v12 != 3)
        {
          goto LABEL_38;
        }

        String = PBReaderReadString();

        v14 = String;
        v15 = 4;
      }

      else if (v12 > 5)
      {
        if (v12 == 6)
        {
          v26 = PBReaderReadString();

          v14 = v26;
          v15 = 3;
        }

        else
        {
          if (v12 != 7)
          {
LABEL_38:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_61;
          }

          v17 = PBReaderReadString();

          v14 = v17;
          v15 = 1;
        }
      }

      else if (v12 == 4)
      {
        v25 = PBReaderReadString();

        v14 = v25;
        v15 = 5;
      }

      else
      {
        if (v12 != 5)
        {
          goto LABEL_38;
        }

        v13 = PBReaderReadString();

        v14 = v13;
        v15 = 6;
      }

      a1[v15] = v14;
LABEL_61:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _VCRateControlAlgorithmLowLatencyContinuousTierMultiLink_Configure(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 1242) = 66;
  VCRateControlAlgorithmLowLatencyContinuousTierPriv_Configure(a1, a2, a3, a4);
  *(a1 + 5372) = *(a1 + 1120);
}

uint64_t _VCRateControlAlgorithmLowLatencyContinousTierMultiLink_DoRateControlWithVCRCStatistics(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11)
{
  v12 = a1;
  v104 = *MEMORY[0x1E69E9840];
  v13 = *a2;
  if (*a2 == 2)
  {
    v23 = *(a2 + 196);
    v24 = 5736;
    if (*(a1 + 5736) != v23)
    {
      v25 = 5740;
      v26 = -1;
      while (v26 != 5)
      {
        v27 = *(a1 + v25);
        ++v26;
        v25 += 4;
        if (v27 == v23)
        {
          if (v26 < 6)
          {
            goto LABEL_19;
          }

          break;
        }
      }

      _VCRateControlAlgorithmLowLatencyContinousTierMultiLink_DoRateControlWithVCRCStatistics_cold_1(a2 + 196, a1, &v85);
      return v85;
    }

LABEL_19:
    for (i = 0; i != 1400; i += 200)
    {
      if (*(a1 + v24) == v23)
      {
        v30 = a1 + i + 5792;
        *v30 = *a2;
        v31 = *(a2 + 64);
        v33 = *(a2 + 16);
        v32 = *(a2 + 32);
        *(v30 + 48) = *(a2 + 48);
        *(v30 + 64) = v31;
        *(v30 + 16) = v33;
        *(v30 + 32) = v32;
        v34 = *(a2 + 128);
        v36 = *(a2 + 80);
        v35 = *(a2 + 96);
        *(v30 + 112) = *(a2 + 112);
        *(v30 + 128) = v34;
        *(v30 + 80) = v36;
        *(v30 + 96) = v35;
        v38 = *(a2 + 160);
        v37 = *(a2 + 176);
        v39 = *(a2 + 144);
        *(v30 + 192) = *(a2 + 192);
        *(v30 + 160) = v38;
        *(v30 + 176) = v37;
        *(v30 + 144) = v39;
        goto LABEL_31;
      }

      v24 += 4;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCRateControlAlgorithmLowLatencyContinousTierMultiLink_DoRateControlWithVCRCStatistics_cold_2();
      }
    }

LABEL_31:
    v40 = *(a2 + 8);
    if (v40 - *(v12 + 5768) > 0.045)
    {
      v41 = 0;
      *(v12 + 5768) = v40;
      v42 = *(a2 + 8);
      v43 = v12 + 5792;
      v44 = (v12 + 5872);
      v45 = -1;
      do
      {
        if (*(v44 - 9) > 0.0)
        {
          if (v45 == -1)
          {
            goto LABEL_41;
          }

          v46 = v43 + 200 * v45;
          v47 = *(v44 - 12);
          if (v47)
          {
            v47 = v47 < *(v46 + 32);
          }

          if (*v44 - *(v46 + 80) >= 0.02 || v47 != 0)
          {
LABEL_41:
            v45 = v41;
          }
        }

        ++v41;
        v44 += 25;
      }

      while (v41 != 7);
      if (v45 == -1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v79 = VRTraceErrorLogLevelToCSTR();
          v80 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VCRateControlAlgorithmLowLatencyContinousTierMultiLink_DoRateControlWithVCRCStatistics_cold_3(v79, v80);
          }
        }
      }

      else
      {
        if (*(v12 + 5732) != *(v43 + 200 * v45 + 196))
        {
          *(v12 + 5776) = v42;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v49 = VRTraceErrorLogLevelToCSTR();
          v50 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v51 = *(v12 + 5616);
            v52 = *(v12 + 5568);
            v53 = *(v12 + 5732);
            v54 = v12 + 5792 + 200 * v45;
            v55 = *(v54 + 80);
            v56 = *(v54 + 32);
            LODWORD(v54) = *(v54 + 196);
            v85 = 136317698;
            v86 = v49;
            v87 = 2080;
            v88 = "_VCRateControlAlgorithmLowLatencyContinousTierMultiLink_UpdatePoorestLinkStatistics";
            v89 = 1024;
            v90 = 82;
            v91 = 2048;
            *v92 = v51;
            *&v92[8] = 1024;
            *v93 = v52;
            *&v93[4] = 1024;
            *&v93[6] = v53;
            v94 = 2048;
            v95 = v55;
            v96 = 1024;
            v97 = v56;
            v98 = 1024;
            v99 = v54;
            v100 = 1024;
            v101 = v45;
            v102 = 2048;
            v103 = v42;
            _os_log_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Poorest Link updated from [oldOwrd=%f,oldBWE=%d,ssrc=0x%x] to [newOwrd=%f,newBWE=%d,ssrc=0x%x], worstLinkIndex=%d, arrivalTime=%f", &v85, 0x58u);
          }
        }

        v57 = v12 + 5792 + 200 * v45;
        *(v12 + 5536) = *v57;
        v58 = *(v57 + 64);
        v60 = *(v57 + 16);
        v59 = *(v57 + 32);
        *(v12 + 5584) = *(v57 + 48);
        *(v12 + 5600) = v58;
        *(v12 + 5552) = v60;
        *(v12 + 5568) = v59;
        v61 = *(v57 + 128);
        v63 = *(v57 + 80);
        v62 = *(v57 + 96);
        *(v12 + 5648) = *(v57 + 112);
        *(v12 + 5664) = v61;
        *(v12 + 5616) = v63;
        *(v12 + 5632) = v62;
        v65 = *(v57 + 160);
        v64 = *(v57 + 176);
        v66 = *(v57 + 144);
        *(v12 + 5728) = *(v57 + 192);
        *(v12 + 5696) = v65;
        *(v12 + 5712) = v64;
        *(v12 + 5680) = v66;
        *(v12 + 5560) = VCRateControlAlgorithmBasePriv_GetTimestampFromMicroTime(v42);
      }

      v78 = VCRateControlAlgorithmLowLatencyContinuousTierPriv_RateControlWithVCRCStatistics(v12, v12 + 5536, v67, v68, v69, v70, v71, v72, v73, v74);
      v81 = *(a2 + 8);
      if (*(v12 + 1100) > *(v12 + 64))
      {
        *(v12 + 5784) = v81;
      }

      DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"multiLinkRateControlTargetBitrateStuckDuration", 30.0);
      v83 = v81 - *(v12 + 5784) > DoubleValueForKey;
      if (v81 - *(v12 + 5776) <= DoubleValueForKey)
      {
        v83 = 0;
      }

      *(v12 + 7192) = v83;
      v84 = 7;
      do
      {
        *(v12 + 5800) = 0;
        *(v12 + 5872) = 0;
        *(v12 + 5824) = 0;
        *(v12 + 5816) = 0;
        *(v12 + 5988) = 0;
        v12 += 200;
        --v84;
      }

      while (v84);
      return v78;
    }

    return 0;
  }

  if (v13 != 11)
  {
    if (v13 != 16)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCRateControlAlgorithmLowLatencyContinousTierMultiLink_DoRateControlWithVCRCStatistics_cold_4();
        }
      }

      return 0;
    }

    v14 = *(a2 + 24);
    v15 = a1 + 5736;
    v16 = *(a1 + 5736);
    if (*(a2 + 28) == 1)
    {
      v17 = 0;
      if (v16)
      {
        while (v17 != 6)
        {
          if (!*(a1 + 5740 + 4 * v17++))
          {
            goto LABEL_8;
          }
        }

        return 0;
      }

LABEL_8:
      *(v15 + 4 * v17) = v14;
      ++*(a1 + 5764);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v85 = 136316418;
          v86 = v19;
          v87 = 2080;
          v88 = "_VCRateControlAlgorithmLowLatencyContinuousTierMultiLink_AddEndPointSSRC";
          v89 = 1024;
          v90 = 133;
          v91 = 1024;
          *v92 = v14;
          *&v92[4] = 1024;
          *&v92[6] = v17;
          *v93 = 2048;
          *&v93[2] = v12;
          v21 = "VCRC [%s] %s:%d Added link with ssrc=0x%x at index=%d in algorithm=%p";
LABEL_56:
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v21, &v85, 0x32u);
        }
      }
    }

    else
    {
      if (v16 != v14)
      {
        v29 = 0;
        while (v29 != 6)
        {
          v75 = *(a1 + 5740 + 4 * v29++);
          if (v75 == v14)
          {
            goto LABEL_53;
          }
        }

        return 0;
      }

      v29 = 0;
LABEL_53:
      *(v15 + 4 * v29) = 0;
      --*(a1 + 5764);
      v76 = a1 + 5792 + 200 * v29;
      *(v76 + 8) = 0;
      *(v76 + 80) = 0;
      *(v76 + 32) = 0;
      *(v76 + 24) = 0;
      *(v76 + 196) = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v77 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v85 = 136316418;
          v86 = v77;
          v87 = 2080;
          v88 = "_VCRateControlAlgorithmLowLatencyContinuousTierMultiLink_RemoveEndPointSSRC";
          v89 = 1024;
          v90 = 157;
          v91 = 1024;
          *v92 = v14;
          *&v92[4] = 1024;
          *&v92[6] = v29;
          *v93 = 2048;
          *&v93[2] = v12;
          v21 = "VCRC [%s] %s:%d Removed link with ssrc=0x%x at index=%d in algorithm=%p";
          goto LABEL_56;
        }
      }
    }

    return 1;
  }

  return VCRateControlAlgorithmLowLatencyContinuousTierPriv_RateControlWithNWConnectionStatistics(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t JLagProcessor_Initialize(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        JLagProcessor_Initialize_cold_1();
      }
    }
  }

  else
  {
    *(a1 + 416) = *a2;
  }

  return v3;
}

uint64_t JLagProcessor_NewStream(uint64_t a1, __int16 *a2, int a3, int a4)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = a2 == 0;
  }

  else
  {
    v8 = 1;
  }

  v10 = v8 || a3 == 0 || a4 == 0;
  v11 = !v10;
  if (v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v18 = 136316674;
        v19 = v15;
        v20 = 2080;
        v21 = "JLagProcessor_NewStream";
        v22 = 1024;
        v23 = 43;
        v24 = 2048;
        v25 = a1;
        v26 = 2048;
        v27 = a2;
        v28 = 1024;
        v29 = a3;
        v30 = 1024;
        v31 = a4;
        _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameter passed to lag processor new stream. LagProcessor=%p, lagPacket=%p, TSRate=%u, samplesPerFrame=%u", &v18, 0x3Cu);
      }
    }
  }

  else
  {
    v12 = *a2;
    *(a1 + 396) = *a2;
    *(a1 + 364) = v12;
    v13 = *(a2 + 1);
    *(a1 + 392) = v13;
    *(a1 + 360) = v13;
    v14 = *(a2 + 2);
    *(a1 + 384) = v14;
    *(a1 + 352) = v14;
    *(a1 + 400) = 0x40DFFFC000000000;
    *(a1 + 368) = 0x40DFFFC000000000;
    *a1 = 0;
    *(a1 + 16) = xmmword_1DBD51220;
    *(a1 + 340) = a4;
    *(a1 + 336) = a3;
    *(a1 + 432) = xmmword_1DBD51230;
    *(a1 + 448) = v13;
  }

  return v11;
}

uint64_t JLagProcessor_ResetLagReference(uint64_t result)
{
  if (result)
  {
    if ((*(result + 344) & 1) == 0)
    {
      *(result + 344) = 1;
    }
  }

  return result;
}

float JLagProcessor_GetOWRD(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 48);
  }

  else
  {
    return NAN;
  }
}

uint64_t JLagProcessor_GetStatistics(uint64_t a1)
{
  if (a1)
  {
    return a1 + 432;
  }

  else
  {
    return 0;
  }
}

double JLagProcessor_Process(uint64_t a1, unsigned __int16 *a2, int a3, unsigned int a4, unsigned int a5)
{
  v90 = *MEMORY[0x1E69E9840];
  if (a5 > 4 || !a1 || !a2 || ((a4 | a3) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316930;
        v79 = v13;
        v80 = 2080;
        v81 = "JLagProcessor_Process";
        v82 = 1024;
        v83 = 371;
        v84 = 2048;
        *v85 = a1;
        *&v85[8] = 2048;
        v86 = a2;
        LOWORD(v87[0]) = 1024;
        *(v87 + 2) = a3;
        HIWORD(v87[1]) = 1024;
        v87[2] = a4;
        v88 = 1024;
        v89 = a5;
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid parameter passed to lag processor. LagProcessor=%p lagPacket=%p samplesPerFrame=%d videoQSize=%d, state=%d", buf, 0x42u);
      }
    }

    return NAN;
  }

  if (*(a2 + 36) != 1)
  {
    if ((*a2 - *(a1 + 364)) >= 0x7FFFu)
    {
      v15 = *(a1 + 8);
      if (v15 <= 3 && *(a1 + 12) <= 0xBB7u)
      {
        *(a1 + 8) = v15 + 1;
        v16 = *(a1 + 368);
        if (v16 == 32767.0)
        {
          v17 = 0.0350000004;
        }

        else
        {
          v17 = *(a1 + 368);
        }

LABEL_43:
        *(a1 + 432) = v17;
        *(a1 + 440) = v16;
        *(a1 + 452) = *(a1 + 4);
        *(a1 + 448) = *(a1 + 360);
        if (a5 != 4)
        {
          if (a5 == 2)
          {
            JLagProcessor_UpdateAverages(a1, a2, a3, 1, v17);
            JLagProcessor_RecordOWRD(a1, v17);
          }

          else if (a5 == 1 && v17 <= 0.0250000004)
          {
            *(a1 + 16) = v17;
            *(a1 + 24) = fabs(v17) + 0.005;
            *(a1 + 32) = v17;
            *(a1 + 40) = v17;
          }

          goto LABEL_91;
        }

        v43 = a3;
        if (a3 <= 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              JLagProcessor_Process_cold_1();
            }
          }

          v43 = *(a2 + 6);
          if (v43 <= 0)
          {
            v43 = *(a1 + 340);
          }
        }

        v44 = *(a1 + 24);
        HIDWORD(v45) = 1066695393;
        LODWORD(v16) = *(a1 + 336);
        v46 = *&v16;
        v47 = a4 / v46;
        if (!*(a1 + 52))
        {
          v54 = v44 * 4.0 + 0.0199999996 + v47;
          if (v17 - *(a1 + 368) > v54)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v56 = VRTraceErrorLogLevelToCSTR();
              v57 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v58 = *(a1 + 368);
                *buf = 136316418;
                v79 = v56;
                v80 = 2080;
                v81 = "JLagProcessor_DetectSpike";
                v82 = 1024;
                v83 = 289;
                v84 = 2048;
                *v85 = v17;
                *&v85[8] = 2048;
                v86 = v58;
                LOWORD(v87[0]) = 2048;
                *(v87 + 2) = v54;
                _os_log_impl(&dword_1DB56E000, v57, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Entering OWRD SPIKE %.4f - %.4f > %.4f", buf, 0x3Au);
              }
            }

            *(a1 + 88) = 0u;
            *(a1 + 72) = v54;
            *(a1 + 80) = v17;
            *(a1 + 104) = 0u;
            *(a1 + 120) = 0u;
            *(a1 + 136) = 0u;
            *(a1 + 152) = 0u;
            *(a1 + 168) = 0u;
            *(a1 + 184) = 0u;
            *(a1 + 200) = 0u;
            *(a1 + 216) = 0u;
            *(a1 + 232) = 0u;
            *(a1 + 248) = 0u;
            *(a1 + 264) = 0u;
            *(a1 + 280) = 0u;
            *(a1 + 296) = 0u;
            *(a1 + 312) = 0u;
            *(a1 + 328) = 0;
            *(a1 + 88) = v17;
            *(a1 + 52) = 1;
            v59 = *(a2 + 2);
            *(a1 + 56) = v59;
            LODWORD(v59) = *(a1 + 4);
            LODWORD(v55) = *(a2 + 1);
            *&v60 = v55;
            v61 = *&v60 + v59 * 4294967300.0;
            LODWORD(v60) = *(a1 + 336);
            *(a1 + 64) = v61 / v60;
          }

LABEL_89:
          if (*(a1 + 52))
          {
LABEL_91:
            *(a1 + 368) = v17;
            return v17;
          }

LABEL_90:
          JLagProcessor_RecordOWRD(a1, v17);
          JLagProcessor_UpdateAverages(a1, a2, a3, 0, v17);
          goto LABEL_91;
        }

        if (v17 - *(a1 + 16) <= *(a1 + 72))
        {
          goto LABEL_62;
        }

        v48 = *(a1 + 332) + 1;
        *(a1 + 332) = v48;
        if (v48 < 5)
        {
          goto LABEL_72;
        }

        if (*(a1 + 80) + 0.01 < v17)
        {
LABEL_62:
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_87;
          }

          v49 = VRTraceErrorLogLevelToCSTR();
          v50 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_87;
          }

          *buf = 136315650;
          v79 = v49;
          v80 = 2080;
          v81 = "JLagProcessor_DetectSpike";
          v82 = 1024;
          v83 = 304;
          v51 = " [%s] %s:%d Leaving OWRD SPIKE due to recovery";
          goto LABEL_65;
        }

        if (v48 > 0x1D)
        {
          v68 = v44 * 1.25 + 0.0199999996 + v47;
          v69 = *(a1 + 328);
          *(a1 + 88 + 8 * v69) = v17;
          v70 = (v69 + 1) % 30;
          *(a1 + 328) = v70;
          v71 = (v70 + 15 - 30 * ((((137 * (v70 + 15)) >> 8) >> 4) + ((((137 * (v70 + 15)) >> 8) & 0x80) >> 7)));
          v72 = 0.0;
          v73 = 15;
          v74 = 0.0;
          do
          {
            v72 = v72 + *(a1 + 88 + 8 * (v70 % 30));
            v74 = v74 + *(a1 + 88 + 8 * (v71 % 30));
            ++v71;
            ++v70;
            --v73;
          }

          while (v73);
          v45 = vabdd_f64(v74, v72);
          v44 = v68 * 15.0;
          if (v45 < v44)
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_87;
            }

            v75 = VRTraceErrorLogLevelToCSTR();
            v50 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_87;
            }

            *buf = 136315650;
            v79 = v75;
            v80 = 2080;
            v81 = "JLagProcessor_DetectSpike";
            v82 = 1024;
            v83 = 328;
            v51 = " [%s] %s:%d Leaving OWRD SPIKE due to flatness";
LABEL_65:
            v52 = v50;
            v53 = 28;
LABEL_86:
            _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, v51, buf, v53);
LABEL_87:
            *(a1 + 52) = 0;
            goto LABEL_90;
          }
        }

        else
        {
LABEL_72:
          *(a1 + 8 * v48 + 88) = v17;
        }

        if (*(a1 + 416) == 1)
        {
          LODWORD(v44) = *(a1 + 4);
          LODWORD(v45) = *(a2 + 1);
          if ((*&v45 + *&v44 * 4294967300.0) / v46 - *(a1 + 64) <= 8.0)
          {
LABEL_75:
            v62 = *(a1 + 80);
            if (v62 >= v17)
            {
              *(a1 + 80) = v17 * 0.05 + v62 * 0.95;
            }

            else
            {
              *(a1 + 80) = v17;
            }

            goto LABEL_89;
          }
        }

        else
        {
          v63 = *(a2 + 8);
          if (v63 <= 0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                JLagProcessor_Process_cold_2();
              }
            }

            v63 = 1;
          }

          LODWORD(v46) = *(a1 + 336);
          if (*(a1 + 332) <= (*&v46 * 8.0 / (v63 * v43)))
          {
            goto LABEL_75;
          }
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_87;
        }

        v64 = VRTraceErrorLogLevelToCSTR();
        v65 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_87;
        }

        v66 = *(a1 + 332);
        *buf = 136315906;
        v79 = v64;
        v80 = 2080;
        v81 = "JLagProcessor_DetectSpike";
        v82 = 1024;
        v83 = 336;
        v84 = 1024;
        *v85 = v66;
        v51 = " [%s] %s:%d Leaving OWRD SPIKE due to timeout %d";
        v52 = v65;
        v53 = 34;
        goto LABEL_86;
      }
    }

    v76 = NAN;
    v77 = NAN;
    JLagProcessor_CalculatePacketLag(a1, a2, &v77, &v76);
    if (a5 <= 3)
    {
      *(a1 + 364) = *a2;
      *(a1 + 352) = *(a2 + 2);
      *(a1 + 360) = *(a2 + 1);
      if ((*(a1 + 345) & 1) == 0 && (*(a2 + 37) & 1) == 0)
      {
        JLagProcessor_CalculatePacketLag(a1, a2, &v77, &v76);
        *(a1 + 345) = 1;
      }

      *(a1 + 4) = 0;
      *(a1 + 12) = 0;
      goto LABEL_42;
    }

    ++*(a1 + 12);
    if (fabs(v77) <= 5.0)
    {
      goto LABEL_32;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = *a2;
        v21 = *(a2 + 1);
        v22 = *(a1 + 364);
        v23 = *(a1 + 360);
        *buf = 136316674;
        v79 = v18;
        v80 = 2080;
        v81 = "JLagProcessor_ComputeLag";
        v82 = 1024;
        v83 = 148;
        v84 = 1024;
        *v85 = v20;
        *&v85[4] = 1024;
        *&v85[6] = v21;
        LOWORD(v86) = 1024;
        *(&v86 + 2) = v22;
        HIWORD(v86) = 1024;
        v87[0] = v23;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Spurious lag noted (Pkt: SN:0X%4X TS:0X%8X) (Ref: SN:0X%4X TS:0X%8X)", buf, 0x34u);
      }
    }

    v77 = *(a1 + 368);
    if (fabs(v76) >= 2.5 || vabdd_f64(v76, *(a1 + 400)) >= 2.5)
    {
LABEL_32:
      *(a1 + 408) = 0;
    }

    else
    {
      v24 = *(a1 + 408);
      *(a1 + 408) = v24 + 1;
      if (v24 > 9)
      {
        goto LABEL_34;
      }
    }

    if (*(a1 + 344) != 1)
    {
LABEL_42:
      *(a1 + 392) = *(a2 + 1);
      *(a1 + 384) = *(a2 + 2);
      *(a1 + 396) = *a2;
      v17 = v77;
      *(a1 + 400) = v76;
      v16 = *(a1 + 368);
      goto LABEL_43;
    }

LABEL_34:
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v26 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 5)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *v26;
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 364);
        v30 = *(a1 + 360);
        v31 = *(a1 + 396);
        v32 = *(a1 + 392);
        v33 = *(a1 + 344);
        *buf = 136316930;
        v79 = v27;
        v80 = 2080;
        v81 = "JLagProcessor_ComputeLag";
        v82 = 1024;
        v83 = 166;
        v84 = 1024;
        *v85 = v29;
        *&v85[4] = 1024;
        *&v85[6] = v30;
        LOWORD(v86) = 1024;
        *(&v86 + 2) = v31;
        HIWORD(v86) = 1024;
        v87[0] = v32;
        LOWORD(v87[1]) = 1024;
        *(&v87[1] + 2) = v33;
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Moving reference to secondary (Was: SN:0X%4X TS:0X%8X) (Now: SN:0X%4X TS:0X%8X), reset:%d", buf, 0x3Au);
      }
    }

    *(a1 + 364) = *(a1 + 396);
    *(a1 + 352) = *(a1 + 384);
    *(a1 + 360) = *(a1 + 392);
    *a1 = 0;
    *(a1 + 408) = 0;
    *(a1 + 12) = 0;
    *(a1 + 344) = 0;
    v77 = v76;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *v26;
      if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v79 = v40;
        v80 = 2080;
        v81 = "JLagProcessor_ComputeLag";
        v82 = 1024;
        v83 = 178;
        _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reference changed. Reset OWRD", buf, 0x1Cu);
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v42 = *(a1 + 424);
    if (v42)
    {
      VRLogfilePrint(v42, "Moved reference to Secondary \n", v34, v35, v36, v37, v38, v39, SLOBYTE(v76));
    }

    goto LABEL_42;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    v12 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v79 = v10;
        v80 = 2080;
        v81 = "JLagProcessor_Process";
        v82 = 1024;
        v83 = 376;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skip lag computation", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      JLagProcessor_Process_cold_3();
    }
  }

  return NAN;
}

double JLagProcessor_UpdateAverages(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  if (!a3)
  {
    a3 = *(a2 + 24);
  }

  v5 = 0.5;
  if (!a4)
  {
    LODWORD(v5) = *(a1 + 336);
    v5 = 2.0 / (*&v5 * 20.0 / a3 / *(a2 + 32) + 1.0);
  }

  v6 = *(a1 + 24);
  v7 = v5 * a5 + *(a1 + 16) * (1.0 - v5);
  *(a1 + 16) = v7;
  *(a1 + 24) = v5 * vabdd_f64(a5, v7) + v6 * (1.0 - v5);
  result = 0.003;
  if (v7 > 0.003)
  {
    *&v9 = v7 + -0.003;
    *(a1 + 16) = v7 + -0.003;
    LODWORD(v9) = *(a1 + 336);
    result = v9 * 0.003;
    *(a1 + 360) -= result;
  }

  return result;
}

void JLagProcessor_RecordOWRD(uint64_t a1, double a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 52))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315906;
        v22 = v3;
        v23 = 2080;
        v24 = "JLagProcessor_RecordOWRD";
        v25 = 1024;
        v26 = 221;
        v27 = 2048;
        v28 = a2;
        v5 = " [%s] %s:%d Spike detected! Discarding lag sample %f";
        v6 = v4;
LABEL_5:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, &v21, 0x26u);
      }
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (a2 - v8 <= 5.0 && (v9 = *(a1 + 32), v9 - a2 <= 5.0))
    {
      if (*(a1 + 12))
      {
        v14 = a2 * 0.0001 + v9 * 0.9999;
        v15 = a2 * 0.1 + v8 * 0.9;
        *(a1 + 32) = v14;
        *(a1 + 40) = v15;
        v16 = v15 - v14;
        if (v16 < 0.0)
        {
          *(a1 + 32) = v15;
          v16 = 0.0;
        }

        v17 = v16;
        *(a1 + 48) = v17;
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 48);
          v21 = 136315906;
          v22 = v18;
          v23 = 2080;
          v24 = "JLagProcessor_RecordOWRD";
          v25 = 1024;
          v26 = 235;
          v27 = 2048;
          v28 = v20;
          v5 = " [%s] %s:%d Just picked a new reference. OWRD should have been reset. OWRD = %f";
          v6 = v19;
          goto LABEL_5;
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        v21 = 136316674;
        v22 = v10;
        v23 = 2080;
        v24 = "JLagProcessor_RecordOWRD";
        v25 = 1024;
        v26 = 230;
        v27 = 2048;
        v28 = a2;
        v29 = 2048;
        v30 = v12;
        v31 = 2048;
        v32 = v13;
        v33 = 2048;
        v34 = 0x4014000000000000;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Lag (%fs) looks spurious (short %fs: long %fs : threshold %fs), discarding", &v21, 0x44u);
      }
    }
  }
}

double JLagProcessor_CalculatePacketLag(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  v8 = *(a2 + 4) - *(a1 + 360);
  if (v8 - *a1 <= 0x7FFFFFFE)
  {
    if (v8 < *a1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315650;
          v15 = v9;
          v16 = 2080;
          v17 = "JLagProcessor_CalculatePacketLag";
          v18 = 1024;
          v19 = 80;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Time counter wrapped around", &v14, 0x1Cu);
        }
      }

      ++*(a1 + 4);
    }

    *a1 = v8;
  }

  v11 = *(a1 + 352);
  result = *(a2 + 16) - v11;
  if (a3)
  {
    LODWORD(v11) = *(a1 + 4);
    *&v13 = v8;
    LODWORD(v13) = *(a1 + 336);
    v11 = result - (v8 + *&v11 * 4294967300.0) / v13;
    *a3 = v11;
  }

  *(a2 + 8) = result;
  if (a4)
  {
    LODWORD(v11) = *(a1 + 336);
    result = *(a2 + 16) - *(a1 + 384) - (*(a2 + 4) - *(a1 + 392)) / *&v11;
    *a4 = result;
  }

  return result;
}

char *VCVideoEncoderMultiImageRateAdaptation_Create(int a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCVideoEncoderMultiImageRateAdaptation_Create_cold_2(v4);
    return v4[0];
  }

  result = malloc_type_calloc(1uLL, 0x4B0uLL, 0x1000040F41AE6D4uLL);
  if (!result)
  {
    VCVideoEncoderMultiImageRateAdaptation_Create_cold_1(v4);
    return v4[0];
  }

  *(result + 1180) = 64424509455000000;
  *result = a1;
  v3 = 1.0 / a1;
  *(result + 2) = v3 * 5.0;
  *(result + 3) = v3;
  return result;
}

void VCVideoEncoderMultiImageRateAdaptation_Finalize(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {

      free(v2);
    }

    else
    {
      VCVideoEncoderMultiImageRateAdaptation_Finalize_cold_1();
    }
  }

  else
  {
    VCVideoEncoderMultiImageRateAdaptation_Finalize_cold_2();
  }
}

BOOL VCVideoEncoderMultiImageRateAdaptation_ProcessFrameInfo(uint64_t a1, int a2, int a3, int a4, int a5, double a6)
{
  v94 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCVideoEncoderMultiImageRateAdaptation_ProcessFrameInfo_cold_1();
    return a1 != 0;
  }

  v11 = *(a1 + 1124);
  v12 = a1 + 36;
  v13 = v11 % 90;
  *(a1 + 36 + 4 * v13) = a4;
  v14 = a1 + 400;
  *(a1 + 400 + 8 * v13) = a6;
  *(a1 + 32) = v11 % 90;
  *(a1 + 1128) = a3;
  v60 = *a1;
  if (v11 >= 2 * *a1)
  {
    VCVideoEncoderMultiImageRateAdaptation_ProcessFrameInfo_cold_2(a1, a4, a3, v11);
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v13 + 89;
  if ((v13 + 89) >= 0x5A)
  {
    v18 = v13 - 1;
  }

  v19 = *(v14 + 8 * v18);
  v20 = v13 + 90;
  v21 = a6 - v19;
  v22 = *(v12 + 4 * v13);
  *(a1 + 24) = v21;
  v23 = (v22 / v21);
  v24 = 0.0;
  v25 = a6;
  do
  {
    v26 = *(v14 + 8 * (v20 % 90));
    v27 = *(v12 + 4 * (v20 % 90));
    if (v17 > 4 || (v24 = v24 + v27, v15 = fmax(v15, v27), v17))
    {
      v28 = v25 - v26;
      *(a1 + 24) = v28;
      v16 += (v23 - (v27 / v28)) / v17;
      v25 = v26;
    }

    ++v17;
    --v20;
  }

  while (v17 != 10);
  if (v11 <= 5)
  {
    v29 = *(a1 + 16);
  }

  else
  {
    v29 = a6 - *(v14 + 8 * ((v13 + 85) % 0x5Au));
  }

  *(a1 + 8) = v29;
  *(a1 + 1120) = v15;
  v30 = (v24 / v29);
  *(a1 + 1148) = v30;
  *(a1 + 1132) = (a4 * 0.05 + *(a1 + 1132) * 0.95);
  v31 = v30;
  v32 = (v30 * 0.05 + *(a1 + 1156) * 0.95);
  *(a1 + 1156) = v32;
  v33 = (v15 * 5.0 / v29);
  *(a1 + 1160) = v33;
  v34 = (a4 * 5.0 / v29);
  *(a1 + 1164) = v34;
  v35 = v16 / 9;
  v36 = *(a1 + 1168);
  v37 = (v35 * 0.1 + v36 * 0.9);
  *(a1 + 1172) = v36;
  *(a1 + 1168) = v37;
  v38 = v33;
  v39 = *(a1 + 1129);
  if (v39 == 1)
  {
    v40 = *(a1 + 1136) / v60;
    v41 = (1.0 - v40) * v31 + v38 * v40;
  }

  else
  {
    v41 = v38 * 0.1 + v34 * 0.1 + v31 * 0.8;
  }

  *(a1 + 1152) = 250000 * (v41 / 250000);
  v42 = (a2 - v32) / v32 >= 1.0;
  *(a1 + 1189) = v37 < 250001;
  if (v37 >= 250001)
  {
    v42 = 0;
  }

  *(a1 + 1188) = v42;
  v44 = vcvtd_n_f64_s32(a2, 2uLL) < v37 && v36 < v37;
  if ((*(a1 + 1193) & 1) == 0)
  {
    if (v34 > 2 * a2)
    {
      v45 = v39;
    }

    else
    {
      v45 = 0;
    }

    if (*(a1 + 1136) > 3 || v45 || ((v42 | a3 ^ 1) & 1) == 0)
    {
      *(a1 + 1191) = 1;
    }

    else
    {
      *(a1 + 1191) = v44;
      *(a1 + 1192) = 0;
      if (!v44)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_38;
  }

  *(a1 + 1191) = 0;
  if (v30 <= a2)
  {
    v46 = *(a1 + 1140);
    *(a1 + 1192) = v46 ^ 1;
    if (v46)
    {
      goto LABEL_44;
    }

LABEL_38:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v47 = VRTraceErrorLogLevelToCSTR();
      v48 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 1191))
        {
          v49 = "Entering";
        }

        else
        {
          v49 = "Exiting";
        }

        v50 = *(a1 + 1160) / 1000000.0;
        v51 = *(a1 + 1164) / 1000000.0;
        v52 = *(a1 + 1168) / 1000000.0;
        v53 = *(a1 + 1140);
        v54 = *(a1 + 1136);
        v55 = *(a1 + 1128);
        v56 = *(a1 + 1188);
        v57 = *(a1 + 8);
        v58 = *(a1 + 1148);
        *buf = 136318978;
        v63 = v47;
        v64 = 2080;
        v65 = "_VCVideoEncoderMultiImageRateAdaptation_DetectBitrateSpike";
        v66 = 1024;
        v67 = 121;
        v68 = 2048;
        v69 = a1;
        v70 = 2080;
        v71 = v49;
        v72 = 1024;
        v73 = a5;
        v74 = 2048;
        v75 = v50;
        v76 = 2048;
        v77 = v51;
        v78 = 2048;
        v79 = v52;
        v80 = 1024;
        v81 = v53;
        v82 = 1024;
        v83 = v54;
        v84 = 1024;
        v85 = v55;
        v86 = 1024;
        v87 = v56;
        v88 = 2048;
        v89 = v57;
        v90 = 2048;
        v91 = a2 / 1000000.0;
        v92 = 2048;
        v93 = v58 / 1000000.0;
        _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] [%s] bitrate spike: encoderIndex=%d, bitrateAtMaxFrameSize(Mbps)=%.f, bitrateAtCurrentFrameSize(Mbps)=%.f, bitrateTrendCoefficient(Mbps)=%.2f, largeFrameInWindow=%d, consecutiveLargeFrames=%d, isIDR=%d, lowBitrateWithRespectToTarget=%d, elapsedTime(s)=%.2f, currentTargetBitrate(Mbps)=%.2f, measuredBitrate(Mbps)=%.2f", buf, 0x8Au);
      }
    }

    goto LABEL_44;
  }

  *(a1 + 1192) = 0;
LABEL_44:
  _VCVideoEncoderMultiImageRateAdaptation_UpdateRecommendedBitrate(a1, a2, a5);
  *(a1 + 1190) = 1;
  ++*(a1 + 1124);
  return a1 != 0;
}

void VCVideoEncoderMultiImageRateAdaptation_UpdateEncoderBitrates(uint64_t a1, int a2, int a3, int a4)
{
  if (a1)
  {
    v5 = 250000 * (a2 / 250000);
    *(a1 + 1176) = v5;
    *(a1 + 1184) = a3;
    if (*(a1 + 1190) == 1)
    {

      _VCVideoEncoderMultiImageRateAdaptation_UpdateRecommendedBitrate(a1, v5, a4);
    }
  }

  else
  {
    VCVideoEncoderMultiImageRateAdaptation_UpdateEncoderBitrates_cold_1();
  }
}

BOOL JTargetJBEstimator_Initialize(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = (a1 + 78176);
    v5 = (a1 + 72136);
    v6 = (a1 + 66056);
    v7 = *(a2 + 16);
    *(a1 + 80632) = *a2;
    *(a1 + 80648) = v7;
    v8 = *(a2 + 32);
    v9 = *(a2 + 48);
    v10 = *(a2 + 80);
    *(a1 + 80696) = *(a2 + 64);
    *(a1 + 80712) = v10;
    *(a1 + 80664) = v8;
    *(a1 + 80680) = v9;
    v11 = *(a2 + 96);
    v12 = *(a2 + 112);
    v13 = *(a2 + 128);
    *(a1 + 80776) = *(a2 + 144);
    *(a1 + 80744) = v12;
    *(a1 + 80760) = v13;
    *(a1 + 80728) = v11;
    v14 = *(a1 + 80736);
    if (v14)
    {
      CFRetain(v14);
      VCJBTargetEstimatorSynchronizer_RegisterClient(*(a1 + 80736), (a1 + 81152), *(a1 + 80752));
    }

    v15 = *(a1 + 80632);
    v16 = *(a1 + 80648);
    *(a1 + 24) = v15;
    *(a1 + 32) = v16;
    v17 = *(a1 + 80656);
    *(a1 + 40) = v17;
    v18 = *(a1 + 80664);
    *(a1 + 79448) = v16;
    *(a1 + 79456) = v16;
    *(a1 + 66096) = *(a1 + 80704);
    *(a1 + 66104) = *(a1 + 80712);
    *(a1 + 79640) = 0;
    *(a1 + 4) = 0;
    *(a1 + 8) = v18;
    *(a1 + 66064) = 0;
    *v6 = 0;
    *(a1 + 66124) = 0;
    *(a1 + 66088) = 0;
    *(a1 + 66072) = 0u;
    *(a1 + 79656) = 1;
    if (v18)
    {
      v15 = v17;
    }

    *(a1 + 80584) = v15;
    *(a1 + 80576) = *(a1 + 80584);
    *(a1 + 80592) = *(a1 + 80584);
    *(a1 + 80600) = v16;
    *(a1 + 79666) = 0;
    v19 = *(a1 + 80680);
    *(a1 + 72144) = v16;
    *(a1 + 72152) = v19;
    LODWORD(v2) = vcvtpd_u64_f64(v16 * 1000.0 / *(a1 + 80672));
    *(a1 + 66128) = malloc_type_calloc(v2, 4uLL, 0x100004052888210uLL);
    *(a1 + 72160) = v2;
    *v5 = 0;
    v20 = *(a1 + 80680);
    v21 = *(a1 + 32);
    *(a1 + 78184) = v21;
    *(a1 + 78192) = v20;
    LODWORD(v2) = vcvtpd_u64_f64(v21 * 1000.0 / *(a1 + 80672));
    *(a1 + 72168) = malloc_type_calloc(v2, 4uLL, 0x100004052888210uLL);
    *(a1 + 78200) = v2;
    *v4 = 0;
  }

  return a1 != 0;
}

double JTargetJBEstimator_NewStream(uint64_t a1, int a2, __int16 a3)
{
  v5 = a1 + 77824;
  _JTargetJBEstimator_ResetHistory(a1, a3, 0);
  *(v5 + 2784) = 0;
  *(v5 + 2792) = 0;
  v7 = *(a1 + 24);
  result = *(a1 + 32);
  *(v5 + 2760) = v7;
  *(v5 + 2752) = *(v5 + 2760);
  *(v5 + 2768) = v7;
  *(v5 + 2776) = result;
  *(a1 + 48) = a2;
  return result;
}

void _JTargetJBEstimator_ResetHistory(uint64_t a1, __int16 a2, int a3)
{
  v6 = a1 + 78176;
  v7 = a1 + 72136;
  v8 = a1 + 66056;
  if (!a3)
  {
    v9 = 40;
    if (!*(a1 + 8))
    {
      v9 = 24;
    }

    *(a1 + 80584) = *(a1 + v9);
    *(a1 + 80576) = *(a1 + 80584);
    *(a1 + 80592) = *(a1 + 80584);
    v10 = *(a1 + 32);
    *(a1 + 80600) = v10;
    *(a1 + 80608) = 0;
    *(a1 + 80616) = 0;
    *(a1 + 66124) = 0;
    *(a1 + 66072) = 0;
    *(a1 + 66080) = 0u;
    *(a1 + 79448) = v10;
    *(a1 + 79456) = v10;
    *(a1 + 79576) = 0u;
  }

  *(a1 + 66064) = 0;
  bzero((a1 + 56), 0x2EE0uLL);
  bzero((a1 + 12056), 0x2EE0uLL);
  bzero((a1 + 24056), 0x1770uLL);
  bzero((a1 + 30056), 0x1770uLL);
  *v8 = 0;
  *(v6 + 1464) = 0;
  *(a1 + 4) = a3;
  *(v8 + 66) = a2;
  *(v6 + 1480) = 1;
  bzero(*(v8 + 72), 4 * *(v7 + 24));
  bzero((a1 + 66136), 0x1770uLL);
  *v7 = 0;
  bzero(*(v7 + 32), 4 * *(v6 + 24));
  bzero((a1 + 72176), 0x1770uLL);
  *v6 = 0;
}

void JTargetJBEstimator_Finalize(uint64_t a1)
{
  v2 = a1 + 78200;
  v3 = a1 + 72160;
  free(*(a1 + 66128));
  *(a1 + 66128) = 0;
  *v3 = 0;
  free(*(v3 + 8));
  *(v3 + 8) = 0;
  *v2 = 0;
  v4 = *(v2 + 2536);
  if (v4)
  {
    CFRelease(v4);
    *(v2 + 2536) = 0;
  }
}

uint64_t JTargetJBEstimator_SetNetworkType(uint64_t result, int a2, int a3, int a4)
{
  v5 = a3 == 5 || a4 == 5;
  *result = a2;
  *(result + 79664) = v5;
  *(result + 79665) = (a4 & 0xFFFFFFFE) == 8;
  return result;
}

double JTargetJBEstimator_UpdateJitterBufferParams(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(a1 + 24) = *a2;
  *(a1 + 80632) = v2;
  *(a1 + 32) = *(a2 + 1);
  result = *(a2 + 6);
  *(a1 + 72152) = result;
  *(a1 + 78192) = result;
  return result;
}

void JTargetJBEstimator_GetSharedSettings(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 8) = *(a1 + 80584);
    *(a2 + 16) = *(a1 + 80592);
    *(a2 + 24) = *(a1 + 80600);
    *(a2 + 32) = *(a1 + 80608);
    *(a2 + 40) = *(a1 + 80616);
  }

  else
  {
    JTargetJBEstimator_GetSharedSettings_cold_1();
  }
}

double JTargetJBEstimator_GetStatistical95pDelaySpread(double *a1)
{
  v2 = a1 + 10078;
  if (a1[10078] - a1[10106] > 1.0)
  {
    _JTargetJBEstimation_CalculateMeanAndStdev(a1);
  }

  result = v2[22] + v2[23] * 1.645 - a1[8259];
  v2[29] = result;
  return result;
}

double _JTargetJBEstimation_CalculateMeanAndStdev(uint64_t a1)
{
  v2 = a1 + 80624;
  v3 = 80800;
  *(a1 + 80784) = 0;
  *(a1 + 80792) = 0;
  v4 = *(a1 + 66064);
  if (v4 < 1)
  {
    v18 = 0;
    v20 = NAN;
    goto LABEL_14;
  }

  v5 = 0;
  v6 = a1 + 56;
  v7 = *(a1 + 66060);
  v8 = a1 + 24056;
  v9 = 0.0;
  v10 = v7;
  v11 = *(a1 + 66064);
  do
  {
    if (*(v8 + 4 * (v10 % 1500)))
    {
      v9 = v9 + *(v6 + 8 * (v10 % 1500));
      *(a1 + 80784) = v9;
      *(a1 + 80792) = ++v5;
    }

    ++v10;
    --v11;
  }

  while (v11);
  v12 = v5;
  v13 = v9 / v5;
  *(a1 + 80800) = v13;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  do
  {
    if (*(v8 + 4 * (v7 % 1500)))
    {
      v17 = *(v6 + 8 * (v7 % 1500)) - v13;
      v14 = v14 + v17 * v17;
      v15 = v15 + pow(v17, 3.0);
      v16 = v16 + pow(v17, 4.0);
    }

    ++v7;
    --v4;
  }

  while (v4);
  v18 = 0;
  if (v14 != 0.0 && v5)
  {
    v19 = sqrt(v14 / v12);
    *(v2 + 184) = v19;
    *(v2 + 192) = v15 / v12 / pow(v19, 3.0);
    v20 = v16 / v12 / pow(v19, 4.0) + -3.0;
    v3 = 80824;
    v18 = 1;
LABEL_14:
    *(a1 + v3) = v20;
  }

  *(v2 + 240) = v18;
  result = *v2;
  *(v2 + 224) = *v2;
  return result;
}

__n128 JTargetJBEstimator_GetSpikeReportingMetrics(uint64_t a1, __n128 *a2)
{
  result = *(a1 + 81160);
  *a2 = result;
  *(a1 + 81160) = 0;
  *(a1 + 81164) = 0;
  *(a1 + 81168) = 0;
  return result;
}

double _JTargetJBEstimator_GetNewMinLag(uint64_t a1, double a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = a1 + 79648;
  v3 = *(a1 + 66072);
  v4 = fmin(a2, v3);
  if (*(a1 + 80731) != 1)
  {
    return v4;
  }

  if (v4 >= v3)
  {
    return v3;
  }

  _JTargetJBEstimation_CalculateMeanAndStdev(a1);
  v5 = *(v2 + 1168);
  v6 = fmin(fmax(2.0 - v5, 1.8), 2.2);
  *(v2 + 1184) = v6;
  v7 = *(v2 + 1152) - v6 * *(v2 + 1160);
  *(v2 + 1192) = v7;
  if (*(v2 + 1216) != 1 || fabs(v5) > 2.2 || fabs(*(v2 + 1176)) > 1.2)
  {
    return v4;
  }

  if (v4 >= v7)
  {
    return v4;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *v2;
        v12 = *(v2 + 1160);
        v13 = *(v2 + 1152);
        v14 = *(v2 + 1184);
        v15 = *(v2 + 1168);
        v16 = *(v2 + 1176);
        v24 = 136317954;
        v25 = v8;
        v26 = 2080;
        v27 = "_JTargetJBEstimator_GetNewMinLag";
        v28 = 1024;
        v29 = 555;
        v30 = 1024;
        v31 = v11;
        v32 = 2048;
        v33 = v12;
        v34 = 2048;
        v35 = v13;
        v36 = 2048;
        v37 = v14;
        v38 = 2048;
        v39 = v15;
        v40 = 2048;
        v41 = v16;
        v42 = 2048;
        v43 = v7;
        v44 = 2048;
        v45 = v4;
        v46 = 2048;
        v47 = v3;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Lag is not statistically relevant. LastMinTimestamp=%d, stdev=%f, mean=%f, stdevMult=%f, skew=%f, kurtosis=%f, threshold=%f, candMinLag=%f, finalMinLag=%f", &v24, 0x72u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18 = *v2;
      v19 = *(v2 + 1160);
      v20 = *(v2 + 1152);
      v21 = *(v2 + 1184);
      v22 = *(v2 + 1168);
      v23 = *(v2 + 1176);
      v24 = 136317954;
      v25 = v8;
      v26 = 2080;
      v27 = "_JTargetJBEstimator_GetNewMinLag";
      v28 = 1024;
      v29 = 555;
      v30 = 1024;
      v31 = v18;
      v32 = 2048;
      v33 = v19;
      v34 = 2048;
      v35 = v20;
      v36 = 2048;
      v37 = v21;
      v38 = 2048;
      v39 = v22;
      v40 = 2048;
      v41 = v23;
      v42 = 2048;
      v43 = v7;
      v44 = 2048;
      v45 = v4;
      v46 = 2048;
      v47 = v3;
      _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Lag is not statistically relevant. LastMinTimestamp=%d, stdev=%f, mean=%f, stdevMult=%f, skew=%f, kurtosis=%f, threshold=%f, candMinLag=%f, finalMinLag=%f", &v24, 0x72u);
    }
  }

  return v3;
}

void _JTargetJBEstimator_AddLagToCdf(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a3 >= 0x5DC)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _JTargetJBEstimator_AddLagToCdf_cold_1(v8);
      }
    }
  }

  else
  {
    v4 = *(a2 + 6016);
    v5 = fmin(*(a1 + 8 * a3 + 56) - *(a1 + 66072), v4);
    if (a4)
    {
      v5 = fmin(v5 + *(a1 + 79640), v4);
    }

    if (v4 == 0.0)
    {
      v6 = *(a2 + 6032);
      v7 = v6 - 1;
    }

    else
    {
      if (v5 < 0.0)
      {
        v5 = 0.0;
      }

      v6 = *(a2 + 6032);
      v7 = (v5 * v6 / v4);
    }

    v9 = v7 - (v7 == v6);
    ++*(*a2 + 4 * v9);
    *(a2 + 4 * a3 + 8) = v9;
    ++*(a2 + 6008);
  }
}

void _JTargetJBEstimator_AddCandidateSpikeToHistory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 79440) = 1;
  v8 = *(a1 + 79632) * 1.25;
  *(a1 + 79488) = v8;
  *(a1 + 79496) = 0;
  *(a1 + 79560) = 0;
  v9 = *(a1 + 79616);
  *(a1 + 79504) = v9;
  v10 = *(a1 + 79608);
  *(a1 + 79520) = v10;
  v11 = *(a1 + 79600);
  *(a1 + 79512) = v11;
  *(a1 + 79536) = *(a1 + 80624);
  *(a1 + 79528) = 0;
  *(a1 + 79544) = 0u;
  v12 = v9 + v8 * 2.0;
  *(a1 + 79448) = v12;
  *(a1 + 79456) = fmax(v12, v10 + *(a1 + 79568));
  v13 = *(a1 + 79624);
  *(a1 + 79464) = v13;
  *(a1 + 79576) = v11;
  *(a1 + 79584) = v13;
  if (v11 - v10 > *(a1 + 80744))
  {
    *(a1 + 80876) = 1;
  }

  v14 = *(a1 + 79592);
  *(a1 + 80872) = v14;
  *(a1 + 80888) = v9;
  *(a1 + 80520) = 1;
  v15 = *(a1 + 80696);
  v16 = "JUMP";
  if (v14 == 2)
  {
    v16 = "SLOPE";
  }

  VRLogfilePrint(v15, "Entering %s SPIKE, earliest Lag = %f\n", a3, a4, a5, a6, a7, a8, v16);
}

uint64_t _JTargetJBEstimator_ShouldContinueDiscardingFrames(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = 66104;
  v6 = 66120;
  if (!a2)
  {
    v6 = 66121;
  }

  v7 = *(a1 + v6);
  v8 = a1 + 24056;
  if (a2)
  {
    v8 = a1 + 30056;
  }

  v9 = *(v8 + 4 * a4);
  if (!a2)
  {
    v5 = 66112;
  }

  v10 = *(a1 + v5);
  if (*(a1 + 79556) == 1)
  {
    v10 = 2;
  }

  v11 = v10 * *(a1 + 48);
  v12 = *(a1 + 4 * a4 + 36056);
  v15 = v12 > v11 && v12 < a5 || v9 == 0;
  if (v9)
  {
    v16 = v12 >= a5;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  if (v12 > ~v11 + a5)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  if (v11 > a5)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (v7)
  {
    v19 = v15;
  }

  return ((a3 + 1499) % 0x5DCu != a4) & v19;
}

uint64_t _JTargetJBEstimator_RemoveElementFromHistory(uint64_t a1, int a2)
{
  v2 = (a1 + 66056);
  v3 = *(a1 + 24056 + 4 * a2);
  v4 = (a1 + 4 * a2);
  if (v3)
  {
    v5 = *(a1 + 8 * a2 + 56);
    v3 = v5 <= *(a1 + 66072) || (v5 >= *(a1 + 66080));
    --*(*(a1 + 66128) + 4 * v4[16534]);
    --*(a1 + 72136);
    v6 = (*v2)--;
    if (v6 <= 15)
    {
      *(a1 + 4) = 1;
    }
  }

  *(a1 + 24056 + 4 * a2) = 0;
  if (*(a1 + 66096) == 1 && v4[7514])
  {
    --*(*(a1 + 72168) + 4 * v4[18044]);
    --*(a1 + 78176);
  }

  v4[7514] = 0;
  return v3;
}

void OUTLINED_FUNCTION_4_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 *a15)
{
  v17 = *a15;

  _JTargetJBEstimator_ResetHistory(v15, v17, 1);
}

void OUTLINED_FUNCTION_9_31(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint8_t buf)
{

  _os_log_error_impl(a1, v19, OS_LOG_TYPE_ERROR, a4, &buf, 0x28u);
}

uint64_t VCEffectsManager_SharedManager()
{
  if (VCEffectsManager_SharedManager_onceToken != -1)
  {
    +[VCEffectsManager sharedManager];
  }

  return VCEffectsManager_SharedManager__vcEffectsManager;
}

void VCEffectsManager_CapturedPixelBuffer(uint64_t a1, __CVBuffer *a2, __CVBuffer *a3, __int128 *a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy__41;
  v33 = __Block_byref_object_dispose__41;
  v34 = 0;
  v10 = *(a1 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __VCEffectsManager_CapturedPixelBuffer_block_invoke;
  block[3] = &unk_1E85F6B80;
  block[4] = a1;
  block[5] = &v29;
  block[6] = &v35;
  dispatch_sync(v10, block);
  v11 = *(v36 + 6);
  switch(v11)
  {
    case 1:
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        v20 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v18;
            *&buf[12] = 2080;
            *&buf[14] = "VCEffectsManager_CapturedPixelBuffer";
            *&buf[22] = 1024;
            LODWORD(v40) = 475;
            _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending video frame to client to be processed", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          VCEffectsManager_CapturedPixelBuffer_cold_1();
        }
      }

      v23 = v30[5];
      v26 = *a4;
      v27 = *(a4 + 2);
      pthread_mutex_lock((a1 + 48));
      ++*(a1 + 188);
      pthread_mutex_unlock((a1 + 48));
      CVPixelBufferRetain(a2);
      CVPixelBufferRetain(a3);
      v24 = *(a1 + 24);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___VCEffectsManager_PixelBufferToClient_block_invoke;
      v40 = &unk_1E85F9D48;
      v46 = v26;
      v47 = v27;
      v44 = a2;
      v45 = a3;
      v41 = a1;
      v42 = a5;
      v43 = v23;
      dispatch_async(v24, buf);
      break;
    case 3:
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        v17 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            VCEffectsManager_CapturedPixelBuffer_cold_2();
          }

          break;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v16;
          *&buf[12] = 2080;
          *&buf[14] = "VCEffectsManager_CapturedPixelBuffer";
          *&buf[22] = 1024;
          LODWORD(v40) = 470;
          v15 = " [%s] %s:%d Sending video frame to AVC to process";
          goto LABEL_21;
        }
      }

      break;
    case 2:
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        v14 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            VCEffectsManager_CapturedPixelBuffer_cold_3();
          }

          break;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = "VCEffectsManager_CapturedPixelBuffer";
          *&buf[22] = 1024;
          LODWORD(v40) = 466;
          v15 = " [%s] %s:%d Sending video frame to extension to process";
LABEL_21:
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0x1Cu);
        }
      }

      break;
    default:
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        v22 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] != 1)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            VCEffectsManager_CapturedPixelBuffer_cold_4();
          }

          break;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v21;
          *&buf[12] = 2080;
          *&buf[14] = "VCEffectsManager_CapturedPixelBuffer";
          *&buf[22] = 1024;
          LODWORD(v40) = 479;
          v15 = " [%s] %s:%d Dropping video frame due to effects being disabled";
          goto LABEL_21;
        }
      }

      break;
  }

  v25 = v30[5];
  if (v25)
  {
    CFRelease(v25);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
}

uint64_t _VCAudioPlayer_InitializeBuffers(_DWORD *a1, int a2)
{
  v4 = a1 + 0x2000;
  _VCAudioPlayer_FreePlaybackBuffer((a1 + 16));
  _VCAudioPlayer_FreePlaybackBuffer((a1 + 50));
  _VCAudioPlayer_FreePlaybackBuffer((a1 + 82));
  a1[14] = 20 * a2;
  a1[48] = 20 * a2;
  a1[80] = a2;
  v5 = v4[809];
  a1[40] = v5;
  a1[74] = v5;
  a1[106] = v5;
  PlaybackBuffer = _VCAudioPlayer_AllocatePlaybackBuffer((a1 + 16), v4[808] * 20 * a2);
  if ((PlaybackBuffer & 0x80000000) != 0)
  {
    v9 = PlaybackBuffer;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VCAudioPlayer_InitializeBuffers_cold_3();
      }
    }
  }

  else
  {
    v7 = _VCAudioPlayer_AllocatePlaybackBuffer((a1 + 50), v4[808] * a1[48]);
    if ((v7 & 0x80000000) != 0)
    {
      v9 = v7;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCAudioPlayer_InitializeBuffers_cold_2();
        }
      }
    }

    else
    {
      v8 = _VCAudioPlayer_AllocatePlaybackBuffer((a1 + 82), v4[808] * a1[80]);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = v8;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VCAudioPlayer_InitializeBuffers_cold_1();
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v9;
}

void _VCAudioPlayer_FreePlaybackBuffer(unint64_t a1)
{
  v1 = (a1 + 96);
  if (*(a1 + 96) >= 1)
  {
    v3 = 0;
    while (1)
    {
      v4 = a1 + 24 * v3;
      if (v4 < a1 || v4 + 24 > v1)
      {
        break;
      }

      free(*v4);
      ++v3;
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      if (*v1 <= v3)
      {
        return;
      }
    }

    __break(0x5519u);
  }
}

uint64_t _VCAudioPlayer_AllocatePlaybackBuffer(unint64_t a1, int a2)
{
  v2 = (a1 + 96);
  if (*(a1 + 96) < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = a2;
  while (1)
  {
    result = malloc_type_malloc(v6, 0x84ABD02uLL);
    if (!result)
    {
      return 2147549187;
    }

    if (a2 < 0)
    {
      break;
    }

    v8 = (a1 + 24 * v5);
    if (v8 < a1 || v8 + 3 > v2)
    {
      break;
    }

    v8[1] = v6;
    v8[2] = 0;
    *v8 = result;
    if (*v2 <= ++v5)
    {
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t VCAudioPlayer_Initialize(uint64_t a1, unint64_t a2)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCAudioPlayer_Initialize_cold_12(buf);
    return *buf;
  }

  v4 = *(a2 + 8);
  if (*(a2 + 24))
  {
    v5 = 2;
  }

  else
  {
    v6 = *(a2 + 64);
    v5 = 2;
    if (v6)
    {
      if (*(v6 + 4) == 119)
      {
        v5 = 4;
      }

      else
      {
        v5 = 2;
      }
    }
  }

  v7 = *(v4 + 28);
  if (v7 - 1 < v5)
  {
    if (v4 >= v4 + 48)
    {
      goto LABEL_62;
    }

    v8 = *v4;
    v9 = *(v4 + 12);
    v10 = a1 + 35568;
    v11 = *v4;
    v12 = *(v4 + 24);
    v13 = *(v4 + 40);
    *(a1 + 35992) = v11;
    *(a1 + 35996) = v13;
    *(a1 + 36000) = v12;
    *(a1 + 36008) = v9 & 1;
    *(a1 + 36004) = v7;
    v14 = v13 / v8;
    *(a1 + 36016) = v14;
    *(a1 + 36368) = v14 * 0.5;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v48 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      v16 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 36368);
          *buf = 136315906;
          v50 = v48;
          v51 = 2080;
          v52 = "_VCAudioPlayer_SetPlaybackFormat";
          v53 = 1024;
          v54 = 200;
          v55 = 2048;
          v56 = v17;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d holeDetectionThreshold=%f", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        VCAudioPlayer_Initialize_cold_3();
      }
    }

    if (!_VCAudioPlayer_InitializeBuffers(a1, *(v4 + 40)))
    {
      v19 = v9 & 1;
      if (Crossfade_Initialize(a1 + 512, (v11 * 0.01), v7 * v12, v9 & 1))
      {
        VCAudioPlayer_Initialize_cold_5();
      }

      else
      {
        *(a1 + 37320) = *(a2 + 99);
        VCSilencePredictor_Initialize(a1 + 552);
        if (a2 + 104 < a2)
        {
          goto LABEL_62;
        }

        *v10 = *a2;
        *(a1 + 35601) = *(a2 + 96);
        *(a1 + 35602) = VCDefaults_GetBoolValueForKey(@"enableDeferredNetworkUplinkClockUpdate", 1);
        VCAudioPlayer_SetMaxHoleSize(a1, 0.109999999);
        v20 = (a1 + 808);
        if (!VCTimescale_InitializeTimescaleAlgo((a1 + 808), v11, *(v4 + 40), v7, *(a1 + 36008), *(a2 + 24)))
        {
          if ((_VCAudioPlayer_InitializeQueueSteeringAlgo(a1, a2) & 0x80000000) == 0)
          {
            _VCAudioPlayer_ResetVariables(a1);
            bzero((a1 + 36376), 0x2A8uLL);
            *(a1 + 36376) = 0;
            *(a1 + 36380) = 1;
            v21 = *(a2 + 56);
            v22 = *(a1 + 36016);
            *(a1 + 36048) = v22 + v22;
            v23 = (0.2 / v22);
            v24 = malloc_type_calloc(v23, 8uLL, 0x100004000313F17uLL);
            v25 = &v24[8 * v23];
            if (!v24)
            {
              v25 = 0;
            }

            if (v24 <= v25 && v23 <= (v25 - v24) >> 3)
            {
              *(a1 + 35736) = v24;
              *(a1 + 35744) = v23;
              if (!v24)
              {
                VCAudioPlayer_Initialize_cold_9();
                goto LABEL_56;
              }

              v26 = (0.5 / v22);
              v27 = malloc_type_calloc(v26, 4uLL, 0x100004052888210uLL);
              v28 = &v27[4 * v26];
              if (!v27)
              {
                v28 = 0;
              }

              if (v27 <= v28 && v26 <= (v28 - v27) >> 2)
              {
                *(a1 + 35720) = v27;
                *(a1 + 35728) = v26;
                if (v27)
                {
                  *(a1 + 36058) = (1.0 / v22);
                  *(a1 + 36056) = v23;
                  *(a1 + 36064) = v22;
                  *(a1 + 36072) = v22 + v22;
                  *(a1 + 36040) = v21 == 20;
                  *(a1 + 35603) = *(a2 + 97);
                  *(a1 + 35604) = VCFeatureFlagManager_DetectInactiveAudioFramesACC24();
                  v29 = *(a2 + 16);
                  BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableAudioPlayerDump", 0);
                  *(a1 + 37080) = BoolValueForKey;
                  if (BoolValueForKey)
                  {
                    *(a1 + 37088) = LogDump_OpenLog(v29, "VCAudioPlayer", ".csv", "STime,FrameSeqNum,FrameTimestamp,SampleRate,FrameSPF,FrameDtx,FrameSize,IsREDFrame,InSilence (low energy),SilencePredicted,FrameCodec,QueuedSamples,LeftOverSamples,AvgQSize,DesiredQSize,IsTargetCovered,TargetBoostingMode,TargetBoostingInSec,SpeechOnsetProtected,SpeechOffsetProtected,SamplesToAdjust,SamplesAdjusted,SamplesRequested,LeftOverSamplesOutput,SamplesNeed,PlayerMode,QueueGrowthMode,DecodeType,SamplesDecoded,DecSkip:Adjust,DecSkip:SamplesOut,SamplesIn,SamplesOut,InputBufferSampleCount,OutputBufferSampleCount,InputBufferTS,OutputBufferTS,IsNilDecode,NilDecodeCount,IsErasure,ErasuresCount,PacketLifeTime,PacketLifetimeCDFBin,PacketLifeTime5Perc,PacketLifeTime10Perc,PacketLifeTimeAvg,PacketLifeTime90Perc,InterArrivalTime,PacketLifetimeIsTrendingUp,PacketLifetimeIsTrendingDown,PacketLifetimeZeroCount,NumberOfPacketsWithHighInterarrival,AvgQSizeInSec,DesiredQSizeInSec,Underflow,ErasuresCountShortWindow,ErasuresCountLongWindow,QueueSteeringOffset,ShouldGrowQueue,ShouldShrinkQueue,ShouldProactivelyShrinkQueue,CurrentIndex,packetLifetimeIsLow,SpikeNeedsProtection,MinimumQueueSizeProtected,QueueSteeringIsPositive,NewSpikeDetected,ExitedSpike,queueGrewDueToSpike,SpikeDetected,SteeringNegativeWithErasures,LowQueueSize,HighQueueSize,ErasuresLongTermIsZero,ErasuresShortTermIsZero,ErasureReduced,TenPercentileHigherThanMin,FivePercentileHigherThanMin,NinetyPercentileHigherThanTarget,PacketLifetimeAvgHigherThanTarget,NegativeQueueSteeringWithErasures,SomePacketsHadZeroPacketLifetime,HasHighInterarrivalFrames,FirstSpeechPacketLifetime,IsNormalPacketFlow,JitterIsLow,MinQueueSizeBuildThreshold,IsMinQueueRebuilt,QueueSizeThresholdMet,PacketLifetimeThresholdMet,ShouldExitQueueGrowth,Channel1Rms,Channel2Rms,Channel1RmsAvg,Channel2RmsAvg,EnergyDecayFactor,Rms,RmsAvg,SilenceAvgFrameSize,SilenceMaxFrameSizeLimit,AudioAvgFrameSize,AudioMinFrameSizeLimit,SilencePredictionEnabled,\n", 9, "1.0");
                  }

                  VCAudioPlayerDTMF_Initialize(a1, a2);
                  if (!v31)
                  {
                    *(a1 + 37280) = VCAudioDump_Create(3u, *(a2 + 64));
                    *(a1 + 37288) = VCAudioDump_Create(4u, *(a2 + 64));
                    *(a1 + 37296) = *(a2 + 80);
                    *__str = 0u;
                    v76 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    *(a1 + 37056) = 0;
                    *(a1 + 37072) = 0;
                    *(a1 + 37064) = 0;
                    if (*(a2 + 98) == 1)
                    {
                      LODWORD(v22) = *(a1 + 35996);
                      IntValueForKey = VCDefaults_GetIntValueForKey(@"audioPlayerOvershootResiliencyMaxFrameConsiderationWindow", 100);
                      v33 = VCDefaults_GetIntValueForKey(@"audioPlayerOvershootResiliencyDesiredQueueSampleThreshold", (*&v22 * 0.65));
                      v34 = VCDefaults_GetIntValueForKey(@"audioPlayerOvershootResiliencyObservationWindow", 10);
                      v35 = VCDefaults_GetIntValueForKey(@"audioPlayerOvershootResiliencyMinorAdjustmentInterval", 50);
                      *(v10 + 1488) = 1;
                      *(v10 + 1492) = IntValueForKey;
                      *(v10 + 1496) = v33;
                      *(v10 + 1500) = 0;
                      *(v10 + 1504) = v34;
                      *(v10 + 1508) = v35;
                    }

                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v36 = VRTraceErrorLogLevelToCSTR();
                      v37 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        v38 = FormatToCStr(v4, __str, 0x40uLL);
                        v39 = *(v4 + 40);
                        v40 = *(a2 + 28);
                        v41 = *v20;
                        v42 = *(a2 + 48);
                        v43 = *(a2 + 56);
                        v44 = *(a2 + 72);
                        v45 = *(a2 + 96);
                        v46 = *(v10 + 1488);
                        *buf = 136318210;
                        v50 = v36;
                        v51 = 2080;
                        v52 = "VCAudioPlayer_Initialize";
                        v53 = 1024;
                        v54 = 480;
                        v55 = 2080;
                        v56 = v38;
                        v57 = 1024;
                        v58 = v39;
                        v59 = 1024;
                        v60 = v19;
                        v61 = 1024;
                        v62 = v40;
                        v63 = 1024;
                        v64 = v41;
                        v65 = 1024;
                        v66 = v42;
                        v67 = 1024;
                        v68 = v43;
                        v69 = 1024;
                        v70 = v44;
                        v71 = 1024;
                        v72 = v45;
                        v73 = 1024;
                        v74 = v46;
                        _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Audio Player initialized with format=%s samplesPerFrame=%u useFloats=%{BOOL}d bufferQueueManagementMode=%d timescaleAlgorithm=%d dtmfTonePlaybackEnabled=%d minJitterBufferQueueSize=%d dtmfEventCallbacksEnabled=%d enableEnhancedJBAdaptations=%d isFixedJitterBufferInitialOvershootResiliencyEnabled=%{BOOL}d", buf, 0x5Cu);
                      }
                    }

                    return 0;
                  }

                  VCAudioPlayer_Initialize_cold_7(a1);
                  goto LABEL_60;
                }

                VCAudioPlayer_Initialize_cold_8();
LABEL_56:
                v18 = 2151874563;
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    VCAudioPlayer_Initialize_cold_10();
                  }
                }

                goto LABEL_61;
              }
            }

LABEL_62:
            __break(0x5519u);
          }

          VCAudioPlayer_Initialize_cold_11();
LABEL_53:
          v18 = *buf;
          goto LABEL_61;
        }

        VCAudioPlayer_Initialize_cold_6();
      }

LABEL_60:
      v18 = *buf;
      if ((*buf & 0x80000000) == 0)
      {
        return v18;
      }

LABEL_61:
      VCAudioPlayer_Finalize(a1);
      return v18;
    }

    VCAudioPlayer_Initialize_cold_4();
    goto LABEL_53;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioPlayer_Initialize_cold_2();
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      VCAudioPlayer_Initialize_cold_1();
    }
  }

  return 1;
}

uint64_t _VCAudioPlayer_InitializeQueueSteeringAlgo(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = a1 + 0x8000;
  v3 = (a1 + 35616);
  if (a1 + 35616 > (a1 + 35880))
  {
    goto LABEL_20;
  }

  v6 = *(a1 + 35616);
  v21 = *(a1 + 35704);
  v7 = *(a1 + 35640);
  v8 = *(a1 + 35632);
  v9 = *(a1 + 35728);
  v10 = *(a1 + 35720);
  v11 = *(a1 + 35744);
  v12 = *(a1 + 35736);
  *(a1 + 35872) = 0;
  *(a1 + 35840) = 0u;
  *(a1 + 35856) = 0u;
  *(a1 + 35808) = 0u;
  *(a1 + 35824) = 0u;
  *(a1 + 35776) = 0u;
  *(a1 + 35792) = 0u;
  *(a1 + 35744) = 0u;
  *(a1 + 35760) = 0u;
  *(a1 + 35712) = 0u;
  *(a1 + 35728) = 0u;
  *(a1 + 35680) = 0u;
  *(a1 + 35696) = 0u;
  *(a1 + 35648) = 0u;
  *(a1 + 35664) = 0u;
  *v3 = 0u;
  *(a1 + 35632) = 0u;
  if (v8)
  {
    bzero(v8, 40 * v7);
    *(v2 + 2864) = v8;
    *(v2 + 2872) = v7;
  }

  if (v10)
  {
    bzero(v10, 4 * v9);
    *(v2 + 2952) = v10;
    *(v2 + 2960) = v9;
  }

  if (v12)
  {
    bzero(v12, 8 * v11);
    *(v2 + 2968) = v12;
    *(v2 + 2976) = v11;
  }

  *(v2 + 2880) = 1;
  if (!a2)
  {
    result = 0;
    *v3 = v6;
    *(a1 + 35704) = v21;
    return result;
  }

  v13 = (4 * *(v2 + 3224)) / *(v2 + 3228);
  v14 = malloc_type_calloc(v13, 0x28uLL, 0x10000407D9C3F74uLL);
  v15 = v13 + 4 * v13;
  v16 = &v14[8 * v15];
  if (!v14)
  {
    v16 = 0;
  }

  if (v14 > v16 || (0xCCCCCCCCCCCCCCCDLL * ((v16 - v14) >> 3)) < v13)
  {
LABEL_20:
    __break(0x5519u);
  }

  *(v2 + 2864) = v14;
  *(v2 + 2872) = v13;
  if (v14)
  {
    *(v2 + 3176) = VCDefaults_GetIntValueForKey(@"audioQueueManagementMode", *(a2 + 28));
    *(a1 + 35952) = *(a2 + 32);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v23 = v17;
        v24 = 2080;
        v25 = "_VCAudioPlayer_ConfigureQueueSteeringAlgorithm";
        v26 = 1024;
        v27 = 301;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Queue steering callbacks configured", buf, 0x1Cu);
      }
    }

    *(v2 + 2936) = VCDefaults_GetDoubleValueForKey(@"audioPlayerQueueTrendingUpThreshold", 1.09);
    *(v2 + 2944) = VCDefaults_GetDoubleValueForKey(@"audioPlayerQueueTrendingDownThreshold", 0.91);
    *(v2 + 2824) = VCDefaults_GetDoubleValueForKey(@"audioPlayerSpeechOnsetOffsetProtectionTime", 0.2);
    DoubleValueForKey = VCDefaults_GetDoubleValueForKey(@"audioPlayerQueueSteeringMultiplier", 0.3);
    result = 0;
    *(v2 + 2848) = DoubleValueForKey;
  }

  else
  {
    _VCAudioPlayer_InitializeQueueSteeringAlgo_cold_1(8 * v15, buf);
    return *buf;
  }

  return result;
}

double _VCAudioPlayer_ResetVariables(uint64_t a1)
{
  *a1 = 0;
  v2 = a1 + 0x8000;
  *(a1 + 50) = 0;
  *(a1 + 35540) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 304) = 0;
  *(a1 + 432) = 0;
  _VCAudioPlayer_ResetPlaybackBuffer(a1 + 64);
  _VCAudioPlayer_ResetPlaybackBuffer(a1 + 200);
  _VCAudioPlayer_ResetPlaybackBuffer(a1 + 328);
  *(a1 + 780) = 257;
  *(v2 + 3264) = 0;
  *(a1 + 24) = 0;
  *(v2 + 3136) = 0;
  result = 0.0;
  *(a1 + 784) = 0u;
  *(a1 + 29) = 1;
  *(a1 + 12) = 0;
  *(v2 + 2772) = 0;
  *(v2 + 3200) = 0;
  *(v2 + 2752) = 0;
  return result;
}

void VCAudioPlayer_Finalize(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCAudioPlayer_Finalize";
        v9 = 1024;
        v10 = 517;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Finalizing Audio Player", &v5, 0x1Cu);
      }
    }

    *(a1 + 35568) = 0;
    Crossfade_Finalize(a1 + 512);
    _VCAudioPlayer_FreePlaybackBuffer(a1 + 64);
    _VCAudioPlayer_FreePlaybackBuffer(a1 + 200);
    _VCAudioPlayer_FreePlaybackBuffer(a1 + 328);
    free(*(a1 + 35720));
    *(a1 + 35720) = 0;
    *(a1 + 35728) = 0;
    free(*(a1 + 35736));
    *(a1 + 35736) = 0;
    *(a1 + 35744) = 0;
    free(*(a1 + 35632));
    *(a1 + 35632) = 0;
    *(a1 + 35640) = 0;
    VCTimescale_Finalize(a1 + 808);
    if (*(a1 + 37080) == 1)
    {
      LogDump_CloseLog(*(a1 + 37088));
    }

    VCAudioPlayerDTMF_Finalize(a1 + 37176);
    VCAudioDump_Finalize((a1 + 37280));
    VCAudioDump_Finalize((a1 + 37288));
  }

  else
  {
    VCAudioPlayer_Finalize_cold_1(ErrorLogLevelForModule);
  }
}

void VCAudioPlayer_NewStream(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    _VCAudioPlayer_ResetVariables(a1);
    _VCAudioPlayer_InitializeQueueSteeringAlgo(a1, 0);
    *(a1 + 176) = 0;
    *(a1 + 312) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315650;
        v5 = v2;
        v6 = 2080;
        v7 = "VCAudioPlayer_NewStream";
        v8 = 1024;
        v9 = 497;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d New Stream", &v4, 0x1Cu);
      }
    }
  }

  else
  {
    VCAudioPlayer_NewStream_cold_1();
  }
}

uint64_t VCAudioPlayer_IsUnderrunQueueBoostEnabled(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 35904);
  }

  else
  {
    VCAudioPlayer_IsUnderrunQueueBoostEnabled_cold_1(&v3);
    v1 = v3;
  }

  return v1 & 1;
}

void VCAudioPlayer_ForceDecoderReset(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 28) = 1;
  }

  else
  {
    VCAudioPlayer_ForceDecoderReset_cold_1();
  }
}

float VCAudioPlayer_GetAverageInterarrivalTimeForWindow(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 36236);
  }

  VCAudioPlayer_GetAverageInterarrivalTimeForWindow_cold_1();
  return v2;
}

_DWORD *VCAudioPlayer_GetStatistics(_DWORD *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = (a1 + 0x2000);
    v2 = a1 + 9020;
    v3 = a1[42];
    a1[9022] = a1[43];
    a1[9023] = a1[77];
    v4 = a1[76] + v3;
    v5 = VCTimescale_TailSize((a1 + 202));
    *(v1 + 834) = v4 + v5;
    *(v1 + 835) = (v1[696] + (v4 + v5));
  }

  else
  {
    VCAudioPlayer_GetStatistics_cold_1(v7);
    return v7[0];
  }

  return v2;
}

uint64_t VCAudioPlayer_GetLeftOverSamples(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 304) + *(a1 + 168);
    return v1 + VCTimescale_TailSize(a1 + 808);
  }

  else
  {
    VCAudioPlayer_GetLeftOverSamples_cold_1(&v3);
    return v3;
  }
}

void VCAudioPlayer_ResetReportingMetrics(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1 + 36156;
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"printMissingAudioPackets", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      *(v2 + 104) = AppBooleanValue;
    }

    v4 = CFPreferencesCopyAppValue(@"forceNOLOG", @"com.apple.VideoConference");
    if (v4)
    {
      *(v2 + 100) = 0;
      CFRelease(v4);
    }

    else
    {
      *(v2 + 100) = 1;
    }

    *(v2 + 64) = 0;
    *(a1 + 36112) = 0u;
    *(a1 + 36128) = 0u;
    *(a1 + 36140) = 0u;
    *(a1 + 36168) = 0;
    *(a1 + 36176) = 0;
    *(a1 + 36160) = 0;
    *(a1 + 36184) = 0;
    *(a1 + 36200) = 0;
    *(a1 + 36208) = 0;
    *(a1 + 36192) = 0;
    *(v2 + 68) = 0;
    *(v2 + 72) = 0;
    *v2 = 0;
    *(a1 + 36288) = 0u;
    *(a1 + 36304) = 0u;
    *(a1 + 36320) = 0;
    *(v2 + 1156) = 0;
    *(v2 + 1160) = 0;
  }

  else
  {
    VCAudioPlayer_ResetReportingMetrics_cold_1();
  }
}

float VCAudioPlayer_GetFrameErasureRate(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 36208);
    if (v1)
    {
      return *(a1 + 36212) / v1;
    }

    else
    {
      return NAN;
    }
  }

  else
  {
    VCAudioPlayer_GetFrameErasureRate_cold_1();
    return v3;
  }
}

float VCAudioPlayer_GetSpeechErasureRate(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 36208);
    if (v1)
    {
      return *(a1 + 36220) / v1;
    }

    else
    {
      return NAN;
    }
  }

  else
  {
    VCAudioPlayer_GetSpeechErasureRate_cold_1();
    return v3;
  }
}

void VCAudioPlayer_SuspendAudioErasureMeasurement(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 37312) = 1;
  }

  else
  {
    VCAudioPlayer_SuspendAudioErasureMeasurement_cold_1();
  }
}

void VCAudioPlayer_ResumeAudioErasureMeasurement(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 37312) == 1)
    {
      *(a1 + 37316) = a2;
      *(a1 + 37312) = 0;
    }

    else
    {
      *(a1 + 37316) = 0;
    }
  }

  else
  {
    VCAudioPlayer_ResumeAudioErasureMeasurement_cold_1();
  }
}

void VCAudioPlayer_GetTimescaleMetrics(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 36288);
    v3 = *(a1 + 36120);
    v4 = v2 - *(a1 + 36308);
    *&v5 = *(a1 + 36292);
    v6 = vsub_s32(*&v5, *(a1 + 36312));
    v7 = *(a1 + 36300);
    v8 = vsub_s32(v7, *(a1 + 36320));
    v9 = *(a1 + 36168);
    *(a1 + 36308) = v2;
    *(&v5 + 1) = v7;
    *(a1 + 36312) = v5;
    v10 = v3 - v9;
    if (v3 == v9)
    {
      v11 = 0;
      v12 = 0.0;
    }

    else
    {
      *v7.i32 = v10;
      v12 = v4 / v10;
      v11 = vdiv_f32(vcvt_f32_u32(v6), vdup_lane_s32(v7, 0));
    }

    *(a2 + 116) = v12;
    *(a2 + 120) = vrev64_s32(v11);
    *(a2 + 96) = v4;
    *(a2 + 100) = v6;
    *(a2 + 108) = v8;
    *(a2 + 128) = vrev64_s32(*(a1 + 36328));
  }

  else
  {
    VCAudioPlayer_GetTimescaleMetrics_cold_1();
  }
}

void VCAudioPlayer_GetRedErasureMetrics(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = (a1 + 0x8000);
    v4 = *(a1 + 36112);
    v5 = *(a1 + 36116);
    v26 = *(a1 + 36128);
    v24 = *(a1 + 36120);
    v25 = *(a1 + 36136);
    SpeechUnderflowCount = JitterQueue_GetSpeechUnderflowCount(*(a1 + 35568));
    v7 = v3[364].i32[0];
    v8 = v3[424].i32[0];
    v9 = v3[424].i32[1];
    *&v17 = v24;
    v10 = vsub_s32(v24, v3[425]);
    v11 = vsub_s32(v26, v3[426]);
    *v12.i8 = v3[427];
    v13 = v25;
    v13.i32[3] = SpeechUnderflowCount;
    v12.i32[2] = v3[428].i32[0];
    v12.i32[3] = v3[429].i32[0];
    v14 = vsubq_s32(v13, v12);
    v15 = v7 - v3[429].i32[1];
    v16 = v3[428].i32[1];
    v3[424].i32[0] = v4;
    v3[424].i32[1] = v5;
    *v3[427].i8 = v25;
    v3[429].i32[0] = SpeechUnderflowCount;
    v3[429].i32[1] = v7;
    *(&v17 + 1) = v26;
    *v3[425].i8 = v17;
    if (v10.i32[0] < 1)
    {
      v19 = 0;
      v18 = 0;
      v20 = 0uLL;
      v21 = 0.0;
      v22 = 0.0;
    }

    else
    {
      v18 = v5 - v9;
      v19 = v4 - v8;
      *&v17 = v10.u32[0];
      v20 = vdivq_f32(vcvtq_f32_s32(v14), vdupq_lane_s32(*&v17, 0));
      v21 = (v25.i32[3] - v16) / v10.u32[0];
      v22 = v18 / v10.u32[0];
    }

    *(a2 + 20) = v20;
    *(a2 + 36) = v21;
    *(a2 + 40) = v22;
    *(a2 + 44) = v3[423].i32[1];
    v3[423].i32[1] = 0;
    *(a2 + 48) = v18;
    *(a2 + 52) = v19;
    v23 = vrev64q_s32(v14);
    v23.i64[0] = v14.i64[0];
    *(a2 + 72) = v23;
    *(a2 + 88) = v15;
    *(a2 + 56) = v10;
    *(a2 + 64) = vrev64_s32(v11);
    if ((v3[439].i8[4] & 1) == 0)
    {
      *(a2 + 92) = v3[423].i32[0];
      v3[423].i32[0] = 0;
    }

    *(a2 + 160) = v3[446].i32[1];
  }

  else
  {
    VCAudioPlayer_GetRedErasureMetrics_cold_1();
  }
}

float VCAudioPlayer_GetAverageLossRate(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 36224);
  }

  VCAudioPlayer_GetAverageLossRate_cold_1();
  return v2;
}

float VCAudioPlayer_GetLastAverageMissingPercentOverWindow(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 36228);
  }

  VCAudioPlayer_GetLastAverageMissingPercentOverWindow_cold_1();
  return v2;
}

float VCAudioPlayer_GetAverageJitterSizeForWindow(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 36240);
  }

  VCAudioPlayer_GetAverageJitterSizeForWindow_cold_1();
  return v2;
}

double VCAudioPlayer_GetAverageJitterSizeForSession(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCAudioPlayer_GetAverageJitterSizeForSession_cold_2(v4);
    return *v4;
  }

  v1 = *(a1 + 36120);
  if (!v1)
  {
    VCAudioPlayer_GetAverageJitterSizeForSession_cold_1(v4);
    return *v4;
  }

  return (*(a1 + 36248) / v1);
}

float VCAudioPlayer_MaxInterArrivalTimeForWindow(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 36232);
  }

  VCAudioPlayer_MaxInterArrivalTimeForWindow_cold_1();
  return v2;
}

uint64_t VCAudioPlayer_GetDTMFEventCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 36336);
  }

  VCAudioPlayer_GetDTMFEventCount_cold_1();
  return v2;
}

void VCAudioPlayer_UpdateLastEnqueuedFrameInformation(uint64_t a1, uint64_t a2, int a3, float a4)
{
  if (a1 && a2)
  {
    v4 = *(a1 + 35536);
    v5 = (v4 & 1) == 0 && *(a2 + 1176) != 0;
    if (*(a2 + 1196) == 104 && (*(a1 + 35537) & 1) == 0)
    {
      v6 = *(a2 + 1268);
    }

    else
    {
      v6 = 0;
    }

    if ((v5 | v6))
    {
      *(a1 + 35588) = *(a2 + 12);
    }

    if (a3)
    {
      if (*(a1 + 36232) < a4)
      {
        *(a1 + 36232) = a4;
      }

      v7 = a4 * 0.1 + *(a1 + 36236) * 0.9;
      *(a1 + 36236) = v7;
      if ((v4 & 1) == 0)
      {
        *(a1 + 35808) = a4;
      }
    }

    *(a1 + 35536) = *(a2 + 1176) != 0;
    *(a1 + 35537) = *(a2 + 1268);
  }

  else
  {
    VCAudioPlayer_UpdateLastEnqueuedFrameInformation_cold_1();
  }
}

uint64_t VCAudioPlayer_GetWrmMetrics(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1 + 0x8000;
    v3 = *(a1 + 35552);
    v4 = *(a1 + 304) + *(a1 + 168);
    v5 = VCTimescale_TailSize(a1 + 808);
    HIDWORD(v6) = 1083129856;
    LODWORD(v6) = *(v2 + 3224);
    v7 = (v3 + (v4 + v5)) * 1000.0 / v6;
    result = a1 + 36344;
    *(v2 + 3592) = v7;
  }

  else
  {
    VCAudioPlayer_GetWrmMetrics_cold_1(v9);
    return v9[0];
  }

  return result;
}

float VCAudioPlayer_GetPercentPacketsLateAndMissing(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 36224);
  }

  VCAudioPlayer_GetPercentPacketsLateAndMissing_cold_1();
  return v2;
}

uint64_t VCAudioPlayer_GetPlaybackFormat(uint64_t a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return a1 + 35992;
  }

  VCAudioPlayer_GetPlaybackFormat_cold_1(v2);
  return v2[0];
}

void VCAudioPlayer_SetMaxHoleSize(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = a1 + 0x8000;
    if (a2 < 0.109999999)
    {
      a2 = 0.109999999;
    }

    *(a1 + 35576) = a2;
    v4 = *(a1 + 35568);
    v5 = *(v3 + 3224);

    JitterQueue_SetMaxPacketTimeDelta(v4, v5, a2);
  }

  else
  {
    VCAudioPlayer_SetMaxHoleSize_cold_1();
  }
}

void VCAudioPlayer_GetBurstMetrics(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCAudioPlayer_GetBurstMetrics_cold_1();
    return;
  }

  v4 = *(a2 + 14);
  v5 = *(a2 + 12);
  if (v4 - v5 >= 320)
  {
    v6 = 320;
  }

  else
  {
    v6 = v4 - v5;
  }

  v7 = (a1 + 36376);
  v45 = a1 + 35992;
  v46 = a1 + 37056;
  v8 = *(a1 + 37054);
  v44 = v6;
  v9 = 0;
  if (v4 != v5)
  {
    v10 = a1 + 36412;
    v11 = a1 + 37052;
    if (v6 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v6;
    }

    do
    {
      v13 = (v10 + 2 * v8);
      if (v13 >= v11 || v13 < v10)
      {
        goto LABEL_56;
      }

      v15 = *v13;
      if (*(a2 + 14) <= v15)
      {
        goto LABEL_18;
      }

      if (v7 >= v46)
      {
        goto LABEL_56;
      }

      _VCAudioPlayer_UpdateBurstInfo(v7, v15, *(a1 + 12));
      v8 = (v8 + 1) % 0x140;
      ++v9;
    }

    while (v12 != v9);
    v9 = v12;
  }

LABEL_18:
  if (v8)
  {
    v16 = (a1 + 36412 + 2 * v8 - 2);
    if (v16 >= a1 + 37052 || v16 < a1 + 36412)
    {
LABEL_56:
      __break(0x5519u);
    }
  }

  else
  {
    v16 = (v45 + 1058);
  }

  v18 = *v16;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    v21 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v45 + 1062);
        v23 = *(v45 + 1060);
        v24 = *(a2 + 12);
        v25 = *(a2 + 14);
        *buf = 136317698;
        v48 = v19;
        v49 = 2080;
        v50 = "VCAudioPlayer_GetBurstMetrics";
        v51 = 1024;
        v52 = 2309;
        v53 = 2048;
        v54 = a1;
        v55 = 1024;
        v56 = v9;
        v57 = 1024;
        v58 = v44;
        v59 = 1024;
        v60 = v22;
        v61 = 1024;
        v62 = v23;
        v63 = 1024;
        v64 = v24;
        v65 = 1024;
        v66 = v25;
        v67 = 1024;
        v68 = v18;
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d audioPlayer=%p frameCount=%d numFramesInRTCPReport=%d readIndex=%d writeIndex=%d SeqStart=%d SeqEnd=%d endSequenceNumber=%d", buf, 0x50u);
        if (!v9)
        {
          goto LABEL_37;
        }

LABEL_32:
        if (*(a2 + 14) - 1 != v18)
        {
          if (v7 >= v46)
          {
            goto LABEL_56;
          }

          v26 = (a1 + 36412 + 2 * v8);
          if (v26 >= a1 + 37052 || v26 < a1 + 36412)
          {
            goto LABEL_56;
          }

          _VCAudioPlayer_UpdateBurstInfo(v7, *v26, *(a1 + 12));
        }

        goto LABEL_37;
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v40 = *(v45 + 1062);
      v41 = *(v45 + 1060);
      v42 = *(a2 + 12);
      v43 = *(a2 + 14);
      *buf = 136317698;
      v48 = v19;
      v49 = 2080;
      v50 = "VCAudioPlayer_GetBurstMetrics";
      v51 = 1024;
      v52 = 2309;
      v53 = 2048;
      v54 = a1;
      v55 = 1024;
      v56 = v9;
      v57 = 1024;
      v58 = v44;
      v59 = 1024;
      v60 = v40;
      v61 = 1024;
      v62 = v41;
      v63 = 1024;
      v64 = v42;
      v65 = 1024;
      v66 = v43;
      v67 = 1024;
      v68 = v18;
      _os_log_debug_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d audioPlayer=%p frameCount=%d numFramesInRTCPReport=%d readIndex=%d writeIndex=%d SeqStart=%d SeqEnd=%d endSequenceNumber=%d", buf, 0x50u);
      if (!v9)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  if (v9)
  {
    goto LABEL_32;
  }

LABEL_37:
  *(v45 + 1062) = v8;
  v27 = *(v45 + 396);
  v28 = *(v45 + 400);
  v29 = *(v45 + 412);
  v30 = 0.0;
  v31 = 0.0;
  v32 = *(v45 + 404);
  if (v27)
  {
    v31 = v28 / v27;
  }

  v33 = *(v45 + 416);
  v34 = *(v45 + 408);
  *a2 = v31;
  v35 = v29 - v27;
  if (v35)
  {
    v30 = (v33 - v28) / v35;
  }

  *(a2 + 4) = v30;
  v36 = (1000 * *(v45 + 4)) / *v45;
  if (v32)
  {
    v37 = v36 * v27 / v32;
    if (v37 >= 0xFFFF)
    {
      LOWORD(v37) = -1;
    }
  }

  else
  {
    LOWORD(v37) = 0;
  }

  *(a2 + 8) = v37;
  if (*(v45 + 392))
  {
    v38 = v34 + 1;
  }

  else
  {
    v38 = v34;
  }

  if (v38)
  {
    v39 = v36 * v35 / v38;
    if (v39 >= 0xFFFF)
    {
      LOWORD(v39) = -1;
    }

    *(a2 + 10) = v39;
  }

  else
  {
    *(a2 + 10) = 0;
  }
}

void _VCAudioPlayer_UpdateBurstInfo(int *a1, int a2, int a3)
{
  if (a3 && *(a1 + 4) == 1)
  {
    v3 = a2 - 1;
    if (!a2)
    {
      v3 = 0;
    }

    *(a1 + 3) = v3;
  }

  v4 = *(a1 + 3) + 1;
  v5 = *a1;
  if (*a1 == 2)
  {
    if (a2 != v4)
    {
      v17 = a2 - v4;
      if ((a2 - v4) <= 0x7FFEu)
      {
        v18 = v17 + *(a1 + 4);
        v19 = a1[8] + v17;
        a1[7] += (v17 + 1);
        a1[8] = v19;
        *(a1 + 3) = a2;
        v20 = a1[4];
        v21 = a1[3] + v18;
        a1[2] = 1;
        a1[3] = v21;
        a1[4] = v20 + v17;
        return;
      }
    }

    if (a2 == v4)
    {
      ++a1[7];
      v24 = a1[2] + 1;
      a1[2] = v24;
      *(a1 + 3) = a2;
      v23 = 2 * (v24 < 0x10);
      goto LABEL_32;
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VCAudioPlayer_UpdateBurstInfo_cold_1();
          }
        }
      }

      else if (a2 == v4 || (v6 = a2 - v4, (a2 - v4) > 0x7FFEu))
      {
        if (a2 == v4 || a3 && *(a1 + 4) == 1)
        {
          *(a1 + 4) = 0;
          ++a1[7];
          ++a1[2];
          *(a1 + 3) = a2;
        }
      }

      else
      {
        v7 = a1[7] + (v6 + 1);
        v8 = (a2 - v4);
        v9 = a1[8] + v6;
        a1[7] = v7;
        a1[8] = v9;
        *(a1 + 3) = a2;
        a1[2] = 1;
        if (v8 <= 1)
        {
          v10 = 0;
        }

        else
        {
          v10 = v8;
        }

        v11 = a1[3];
        a1[4] += v10;
        if (v8 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        *a1 = v12;
        if (v8 >= 2)
        {
          *(a1 + 5) = vadd_s32(*(a1 + 5), 0x100000001);
          a1[3] = v11 + v8;
        }
      }

      return;
    }

    if (a2 != v4 && (a2 - v4) <= 0x7FFEu)
    {
      v13 = a1[8] + (a2 - v4);
      v14 = (a2 - v4) + 1;
      v15 = a1[2] + v14;
      a1[7] += v14;
      a1[8] = v13;
      *(a1 + 3) = a2;
      a1[2] = 1;
      *a1 = 2;
      v16.i64[1] = 0x100000001;
      v16.i32[0] = v15;
      v16.i32[1] = v14;
      *(a1 + 3) = vaddq_s32(*(a1 + 3), v16);
      return;
    }

    if (a2 == v4)
    {
      ++a1[7];
      v22 = a1[2] + 1;
      a1[2] = v22;
      *(a1 + 3) = a2;
      v23 = v22 < 0x10;
LABEL_32:
      *a1 = v23;
    }
  }
}

void VCAudioPlayer_AdjustmentDisabled(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 36024) = a2;
  }

  else
  {
    VCAudioPlayer_AdjustmentDisabled_cold_1();
  }
}

void VCAudioPlayer_GetSilenceSamples(FILE **a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = a1 + 4096;
        v6 = *(a1 + 8882);
        _VCAudioPlayer_UpdateJitterQueueSize(a1);
        _VCAudioPlayer_FillSilenceBuffer(a1, *a2, *(a2 + 8), *(a2 + 24), *(a2 + 16));
        **(a2 + 56) = 1;
        _VCAudioPlayer_UpdateLogDumpStats(a1, *(a2 + 8), 0, *(a2 + 8));
        _VCAudioPlayer_LogStats(a1);
        v7 = &audioPlayerMode[*(a1 + 178)];
        if (v7 < queueGrowthMode && v7 >= audioPlayerMode)
        {
          *(v5 + 416) = *v7;
          if (v5[691])
          {
            v9 = 0;
          }

          else
          {
            v9 = *(v5 + 877);
          }

          *(v5 + 414) = v9;
          ++v5[894];
          *(v5 + 448) = vadd_s32(*(v5 + 896), 0x100000001);
          ++v5[838];
          ++v5[860];
          _VCAudioPlayer_UpdateLosses(a1);
          *(v5 + 344) = micro();
          if (v6 == v5[690] && VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v10 = VRTraceErrorLogLevelToCSTR();
            v11 = *MEMORY[0x1E6986650];
            v12 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v13 = 136315906;
                v14 = v10;
                v15 = 2080;
                v16 = "VCAudioPlayer_GetSilenceSamples";
                v17 = 1024;
                v18 = 3694;
                v19 = 1024;
                v20 = v6;
                _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Timestamp did not increment: %d", &v13, 0x22u);
              }
            }

            else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              VCAudioPlayer_GetSilenceSamples_cold_1();
            }
          }

          v5[710] += *(a2 + 8);
        }

        else
        {
          __break(0x5519u);
        }
      }

      else
      {
        VCAudioPlayer_GetSilenceSamples_cold_2();
      }
    }

    else
    {
      VCAudioPlayer_GetSilenceSamples_cold_3();
    }
  }

  else
  {
    VCAudioPlayer_GetSilenceSamples_cold_4();
  }
}

double _VCAudioPlayer_UpdateJitterQueueSize(uint64_t a1)
{
  v2 = a1 + 0x8000;
  *(a1 + 35552) = JitterQueue_QueuedSamples(*(a1 + 35568));
  v3 = *(v2 + 2784);
  LeftOverSamples = VCAudioPlayer_GetLeftOverSamples(a1);
  LODWORD(v5) = *(v2 + 3224);
  v6 = (v3 + LeftOverSamples) / v5;
  *(v2 + 2792) = v6;
  *&v5 = v6 * 0.1 + *(v2 + 3472) * 0.9;
  *(v2 + 3472) = v5;
  result = v6 + *(v2 + 3480);
  *(v2 + 3480) = result;
  return result;
}

void _VCAudioPlayer_FillSilenceBuffer(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, int *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = (a1 + 0x2000);
  VCAudioBufferList_ZeroMemory(a2);
  v11 = micro();
  v12 = v9[344];
  if (v12 <= 0.0 || (v13 = v11 - v12, v14 = (5 * a3), LODWORD(v10) = *(v9 + 806), v15 = v10, v13 <= v14 / v15))
  {
    v16 = a3;
  }

  else
  {
    v16 = (v13 * v15);
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = v11 - v9[344];
        v23 = 136316930;
        v20 = *(v9 + 806);
        v24 = v17;
        v25 = 2080;
        v26 = "_VCAudioPlayer_FillSilenceBuffer";
        v27 = 1024;
        v28 = 2587;
        v29 = 2048;
        v30 = a1;
        v31 = 2048;
        v32 = v19;
        v33 = 2048;
        v34 = v14 / v20;
        v35 = 1024;
        v36 = v16;
        v37 = 1024;
        v38 = a3;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d [%p] Detected a time gap of %0.6f seconds (larger than %0.6f threshold). Incrementing by sampleCount=%d instead of by oldSampleCount=%d.", &v23, 0x46u);
      }
    }
  }

  v21 = *(v9 + 690) + v16;
  *(v9 + 690) = v21;
  v22 = a1[43] + v16;
  a1[77] += v16;
  a1[42] = 0;
  a1[43] = v22;
  a1[76] = 0;
  *a5 = v21;
  if (a4)
  {
    *(a4 + 16) = 0;
  }

  ++*a1;
}

uint64_t _VCAudioPlayer_UpdateLogDumpStats(uint64_t result, int a2, int a3, int a4)
{
  v4 = result + 35568;
  if (*(result + 37080) == 1)
  {
    *(result + 37128) = a2;
    *(result + 37136) = a3;
    *(result + 37140) = a4;
    result = JitterQueue_GetSpeechUnderflowCount(*v4);
    v11 = *(v4 + 112) + result;
    *(v4 + 1592) = v11;
    v12 = v11 - *(v4 + 1596);
    *(v4 + 1600) = v12;
    if (v12)
    {
      result = VRLogfilePrintSync(*(v4 + 1520), "Warning: Jitter Queue underflow detected. UnderflowCount=%d  lastDecodedTimestamp=%u\n", v5, v6, v7, v8, v9, v10, v12);
      v11 = *(v4 + 1592);
    }

    *(v4 + 1596) = v11;
  }

  return result;
}

FILE **_VCAudioPlayer_LogStats(FILE **result)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = result + 4438;
  if (*(result + 37080) == 1)
  {
    v2 = result;
    memset(v12, 170, 20);
    v3 = micro();
    LogDump_GetTimestampString(v3);
    v4 = v1[198];
    JitterQueue_QueuedSamples(v1[8]);
    VCAudioPlayer_GetLeftOverSamples(v2);
    v5 = &targetBoostingDescription[*(v1 + 120)];
    if (v5 >= VCControlChannel_UnencryptedString || v5 < targetBoostingDescription || (v6 = &audioPlayerMode[*(v2 + 712)], v6 >= queueGrowthMode) || v6 < audioPlayerMode || (v7 = &queueGrowthMode[*(v1 + 98)], v7 >= targetBoostingDescription) || v7 < queueGrowthMode || ((v8 = *(v1 + 35), v8 <= 0) ? (v9 = 0) : (v9 = v8 - 1), (v10 = v1[16], v11 = v10 + 40 * v9, v11 >= v10 + 40 * *(v1 + 34)) || v11 < v10))
    {
      __break(0x5519u);
    }

    return VRLogfilePrintSync(v4, "%s, %u, %u, %d, %d, %d, %d, %d, %d, %u, %d, %d, %d, %d, %d, %d, %s, %f, %d, %d, %d, %d, %d, %d, %d, %s, %s, %s, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %f, %d, %f, %f, %f, %f, %f, %d, %d, %d, %d, %f, %f, %d, %d, %d, %f, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %d \n", *(v1 + 324), *(v1 + 438), *(v1 + 329), *(v1 + 330), *(v1 + 316), *(v1 + 317), v12);
  }

  return result;
}

void _VCAudioPlayer_UpdateLosses(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = a1 + 0x8000;
  v2 = *(a1 + 36208);
  if (((*(a1 + 35996) * v2) / *(a1 + 35992)) > 5.0)
  {
    v3 = *(a1 + 36212) / v2;
    v4 = *(a1 + 36224);
    v5 = v3 * 0.3 + v4 * 0.7;
    v6 = v4 <= 0.0;
    if (v4 >= 0.0)
    {
      v7 = *(a1 + 36212) / v2;
    }

    else
    {
      v7 = v3 * 0.3 + v4 * 0.7;
    }

    if (!v6)
    {
      v7 = v5;
    }

    *(a1 + 36224) = v7;
    if (!*(a1 + 36256) && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v1 + 3444);
        v11 = *(v1 + 3440);
        v12 = *(v1 + 3456);
        v13 = *(v1 + 3464);
        v14 = *(v1 + 3472);
        v15 = *(v1 + 3468);
        v16 = 136317442;
        v17 = v8;
        v18 = 2080;
        v19 = "_VCAudioPlayer_UpdateLosses";
        v20 = 1024;
        v21 = 711;
        v22 = 2048;
        v23 = v3;
        v24 = 1024;
        v25 = v10;
        v26 = 1024;
        v27 = v11;
        v28 = 2048;
        v29 = v12;
        v30 = 2048;
        v31 = v13;
        v32 = 2048;
        v33 = v14;
        v34 = 2048;
        v35 = v15;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Fraction of missing packets during 5 seconds = %f, missing = %d, total = %d, average = %f [max interarrival = %f, average jitter size = %f, average interarrival = %f]", &v16, 0x5Au);
      }
    }

    *(v1 + 3460) = v3;
    *(v1 + 3440) = 0;
    *(v1 + 3452) = 0;
    *(v1 + 3464) = 0;
  }
}

void VCAudioPlayer_GetSamples(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v322 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCAudioPlayer_GetSamples_cold_5();
    return;
  }

  v10 = a3;
  v13 = a1 + 35504;
  *(a1 + 36040) = (*(a3 + 32) * 1000.0) == 20;
  if (!VCAudioPlayerDTMF_ShouldProcessDTMF(a1))
  {
    p_buf = &buf;
    v8 = 0.0;
    if (VRTraceIsInternalOSInstalled())
    {
      v8 = micro();
    }

    v7 = *(v13 + 24);
    v9 = micro();
    ++*(v13 + 36);
    v20 = *(a1 + 304);
    *(v13 + 1628) = v20;
    LODWORD(v3) = (*(a2 + 8) - v20) & ~((*(a2 + 8) - v20) >> 31);
    v296 = 0;
    v297 = v3;
    v295 = v3;
    memset(v304, 0, 104);
    v21 = *(v13 + 496) * v20;
    v4 = a1 + 200;
    *(a1 + 300) = v21;
    _VCAudioPlayer_InitializePlaybackBuffer(v304, a1 + 200, v21);
    updated = _VCAudioPlayer_UpdateJitterQueueSize(a1);
    LODWORD(v5) = _VCAudioPlayer_CalcAdjustment(a1, v10, v3, &v295, updated, v23, v24, v25);
    v292 = a1 + 808;
    v293 = v10;
    if (*(a1 + 808))
    {
      v26 = *(v13 + 48);
      v10 = *(a1 + 168);
      v6 = *(a1 + 304);
      v27 = VCTimescale_TailSize(a1 + 808);
      if (*(v13 + 376))
      {
        if (*(*v293 + 4))
        {
          v28 = 9;
LABEL_41:
          *(a1 + 712) = v28;
          _VCAudioPlayer_FillSilenceBuffer(a1, *a2, *(a2 + 8), *(a2 + 24), *(a2 + 16));
          v47 = &audioPlayerMode[*(a1 + 712)];
          if (v47 < queueGrowthMode && v47 >= audioPlayerMode)
          {
            *(v13 + 592) = *v47;
            if (*(v13 + 28))
            {
              v48 = 0;
            }

            else
            {
              v48 = *(v13 + 772);
            }

            *(v13 + 576) = v48;
            *(v13 + 16) = v9;
            return;
          }

          while (1)
          {
LABEL_397:
            __break(0x5519u);
LABEL_398:
            v282 = micro();
            LODWORD(v305.value) = 136316930;
            *(&v6->value + 4) = v284;
            LOWORD(v305.flags) = 2080;
            *(&v6->flags + 2) = "_VCAudioPlayer_DecodeSkipSilence";
            HIWORD(v305.epoch) = 1024;
            v306 = 2513;
            v307 = 2048;
            *(&v6[1].value + 6) = v282;
            *&v308[8] = 1024;
            v309 = v286;
            v310 = 1024;
            *(&v6[1].epoch + 6) = p_buf;
            v312 = 1024;
            v313 = v5;
            *v314 = 1024;
            *(&v6[2].timescale + 2) = v3;
            _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d %7.03f: %-4i  skip %i -> %i adjust %d", &v305, 0x3Eu);
LABEL_390:
            *(v13 + 1648) = v5;
            *(v13 + 1644) = v3;
            v264 = v287;
LABEL_391:
            *v264 = v5;
            LogProfileTimeOverLimit_3("SpkrProc: Skip Silence", v9, 0.00499999989, v257, v258, v259, v260, v261, v262, v263, v283);
            v78 = v292;
LABEL_138:
            VCTimescale_UpdateTimescaleHistoryBuffer(v78);
            v100 = *v290;
            if (*v290 > 5 || ((1 << v100) & 0x3A) == 0)
            {
              goto LABEL_152;
            }

            ++*(v13 + 784);
            if (v100 == 5 || v100 == 3)
            {
              v101 = *(v13 + 788) + 1;
            }

            else
            {
              v101 = *(v13 + 788);
            }

            *(v13 + 788) = v101;
            if (v100 == 4 || v100 == 1)
            {
              v102 = *(v13 + 792) + 1;
            }

            else
            {
              v102 = *(v13 + 792);
            }

            *(v13 + 792) = v102;
            if ((v100 | 2) == 3)
            {
              ++*(v13 + 800);
            }

            else if ((v100 & 0xFFFFFFFE) == 4)
            {
              v103 = *(v13 + 796) + 1;
              goto LABEL_151;
            }

            v103 = *(v13 + 796);
LABEL_151:
            *(v13 + 796) = v103;
LABEL_152:
            *v13 = *&buf_4[16] - **&buf_4[4];
            v104 = v296 - v295;
            if (v296 != v295)
            {
              v105 = *(v10 + 24);
              v106 = *v105;
              if (*v105 >= (v295 - v296))
              {
                v9 = v106 + v104;
              }

              else
              {
                VRLogfilePrintSync(*(v13 + 1584), "Average JB queue size protected from going negative. Current size: %f new size: %f samplesDelta: %d needed samples: %d audioPlayer mode: %d silent: %d\n", v94, v95, v96, v97, v98, v99, SLOBYTE(v106));
                v9 = 0.0;
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v287 = VRTraceErrorLogLevelToCSTR();
                  v107 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    v108 = *v105;
                    *&v109 = *v105 + v104;
                    v110 = *v290;
                    LODWORD(v305.value) = 136317186;
                    *(&v6->value + 4) = v287;
                    LOWORD(v305.flags) = 2080;
                    *(&v6->flags + 2) = "_VCAudioPlayer_UpdateAvgQueueSize";
                    HIWORD(v305.epoch) = 1024;
                    v306 = 3338;
                    v307 = 2048;
                    *(&v6[1].value + 6) = v108;
                    *&v308[8] = 2048;
                    v6[1].epoch = v109;
                    HIWORD(v311) = 1024;
                    *(&v6[2].value + 2) = v104;
                    HIWORD(v313) = 1024;
                    *v314 = v289;
                    *&v314[4] = 1024;
                    *(&v6[2].flags + 2) = v110;
                    v315 = 1024;
                    v316 = v288;
                    _os_log_error_impl(&dword_1DB56E000, v107, OS_LOG_TYPE_ERROR, "VCAudioPlayer [%s] %s:%d Average JB queue size protected from going negative. Current size: %f, new size: %f, samplesDelta: %d, needed samples: %d, audioPlayer mode: %d, silent: %d", &v305, 0x48u);
                  }
                }
              }

              *v105 = v9;
            }

            if (*(v13 + 1552) == 1 && *(v13 + 36) <= *(v13 + 1556))
            {
              v290 = *v294;
              LODWORD(v287) = JitterQueue_QueuedSamples(*(v13 + 64));
              v111 = *(v13 + 1560);
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v112 = VRTraceErrorLogLevelToCSTR();
                v113 = *MEMORY[0x1E6986650];
                v114 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] == 1)
                {
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                  {
                    v115 = **(v10 + 24);
                    LODWORD(v9) = *(v13 + 48);
                    v286 = *(v293 + 16);
                    VCAudioBufferList_GetNetworkTimestamp(v290, &v305);
                    Seconds = CMTimeGetSeconds(&v305);
                    v117 = *(v13 + 36);
                    v118 = *(v13 + 864);
                    v119 = *(v13 + 1564);
                    LODWORD(v305.value) = 136317954;
                    *(&v6->value + 4) = v112;
                    LOWORD(v305.flags) = 2080;
                    *(&v6->flags + 2) = "_VCAudioPlayer_MarkOvershootingFrames";
                    HIWORD(v305.epoch) = 1024;
                    v306 = 3779;
                    v307 = 1024;
                    *(&v6[1].value + 6) = v287;
                    *&v308[4] = 2048;
                    *&v6[1].flags = v115;
                    v10 = v293;
                    v310 = 2048;
                    *(&v6[1].epoch + 6) = *&v9;
                    HIWORD(v313) = 1024;
                    *v314 = v286;
                    *&v314[4] = 1024;
                    *(&v6[2].flags + 2) = v111;
                    v315 = 2048;
                    *(&v6[2].epoch + 4) = Seconds;
                    v318 = 2048;
                    *(&v6[3].value + 6) = v118;
                    v319 = 1024;
                    v320 = v117;
                    v321 = 1024;
                    *(&v6[3].epoch + 6) = v119;
                    _os_log_impl(&dword_1DB56E000, v113, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d jitterQueueSize=%d averageQueueSize=%f sharedQueueSize=%f desiredQueueSize=%d threshold=%d timestamp=%f holeDetectionThreshold=%f audioPulls=%u highAverageQueueSizeCount=%d", &v305, 0x62u);
                  }
                }

                else if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
                {
                  v268 = **(v10 + 24);
                  LODWORD(v9) = *(v13 + 48);
                  v286 = *(v293 + 16);
                  VCAudioBufferList_GetNetworkTimestamp(v290, &v305);
                  v269 = CMTimeGetSeconds(&v305);
                  v270 = *(v13 + 36);
                  v271 = *(v13 + 864);
                  v272 = *(v13 + 1564);
                  LODWORD(v305.value) = 136317954;
                  *(&v6->value + 4) = v112;
                  LOWORD(v305.flags) = 2080;
                  *(&v6->flags + 2) = "_VCAudioPlayer_MarkOvershootingFrames";
                  HIWORD(v305.epoch) = 1024;
                  v306 = 3779;
                  v307 = 1024;
                  *(&v6[1].value + 6) = v287;
                  *&v308[4] = 2048;
                  *&v6[1].flags = v268;
                  v10 = v293;
                  v310 = 2048;
                  *(&v6[1].epoch + 6) = *&v9;
                  HIWORD(v313) = 1024;
                  *v314 = v286;
                  *&v314[4] = 1024;
                  *(&v6[2].flags + 2) = v111;
                  v315 = 2048;
                  *(&v6[2].epoch + 4) = v269;
                  v318 = 2048;
                  *(&v6[3].value + 6) = v271;
                  v319 = 1024;
                  v320 = v270;
                  v321 = 1024;
                  *(&v6[3].epoch + 6) = v272;
                  _os_log_debug_impl(&dword_1DB56E000, v113, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d jitterQueueSize=%d averageQueueSize=%f sharedQueueSize=%f desiredQueueSize=%d threshold=%d timestamp=%f holeDetectionThreshold=%f audioPulls=%u highAverageQueueSizeCount=%d", &v305, 0x62u);
                }
              }

              v120 = *(v10 + 16) + v111;
              if (**(v10 + 24) <= v120)
              {
                *(v13 + 1564) = 0;
              }

              else
              {
                v121 = *(v13 + 1564) + 1;
                *(v13 + 1564) = v121;
                if (v121 >= *(v13 + 1568) && (v287 > v120 || !(v121 % *(v13 + 1572))))
                {
                  memset(v298, 170, sizeof(v298));
                  VCAudioBufferList_GetNetworkTimestamp(v290, v298);
                  if ((v298[1] & 0x100000000) != 0)
                  {
                    v122 = v298[0];
                  }

                  else
                  {
                    v122 = -1;
                  }

                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v123 = VRTraceErrorLogLevelToCSTR();
                    v124 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v125 = *(v13 + 36);
                      v126 = *(v293 + 16);
                      v127 = **(v293 + 24);
                      v128 = *(v13 + 1564);
                      LODWORD(v305.value) = 136317442;
                      *(&v6->value + 4) = v123;
                      LOWORD(v305.flags) = 2080;
                      *(&v6->flags + 2) = "_VCAudioPlayer_MarkOvershootingFrames";
                      HIWORD(v305.epoch) = 1024;
                      v306 = 3797;
                      v307 = 1024;
                      *(&v6[1].value + 6) = v287;
                      *&v308[4] = 2048;
                      *&v6[1].flags = v127;
                      v310 = 1024;
                      *(&v6[1].epoch + 6) = v126;
                      v312 = 1024;
                      v313 = v111;
                      *v314 = 2048;
                      *(&v6[2].timescale + 2) = v122;
                      v315 = 1024;
                      v316 = v125;
                      v317 = 1024;
                      *(&v6[3].value + 2) = v128;
                      _os_log_impl(&dword_1DB56E000, v124, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d jitterQueueSize=%d and averageQueueSize=%f exceed desiredQueueSize=%d by threshold=%d. Marking samples at timestamp=%llu late. audioPulls=%u highAverageQueueSizeCount=%d", &v305, 0x4Eu);
                    }
                  }

                  VCAudioBufferList_SetSamplesAreLate(v290, 1);
                }
              }
            }

            v129 = v296;
            if (v296 >= 20 && *(v13 + 384))
            {
              _VCAudioPlayer_Sample_RampUp(a1, v304, 20);
              *(v13 + 384) = 0;
            }

            if (v129 >= 20 && *(v13 + 388))
            {
              _VCAudioPlayer_SimulateCrossFade(a1, 1, v304, 20);
              *(v13 + 388) = 0;
            }

            LODWORD(v5) = v295;
            LODWORD(p_buf) = v296;
            v130 = *(v294 + 8);
            if (VCTimescale_TailExtractAvailable(v292))
            {
              v138 = 0;
              goto LABEL_219;
            }

            v137 = *(a1 + 184);
            v138 = v137 > 0;
            if (!v5)
            {
              v138 = 0;
              if (!*v292)
              {
                v151 = v294;
                if (v137 > 0)
                {
                  goto LABEL_220;
                }

                if (*(a1 + 168))
                {
                  v138 = 0;
                  goto LABEL_220;
                }

                if (VRTraceGetErrorLogLevelForModule() >= 5)
                {
                  v5 = VRTraceErrorLogLevelToCSTR();
                  v154 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v156 = *(a1 + 168);
                    v155 = *(a1 + 172);
                    LODWORD(v305.value) = 136316418;
                    *(&v6->value + 4) = v5;
                    LOWORD(v305.flags) = 2080;
                    *(&v6->flags + 2) = "_VCAudioPlayer_UpdateInputBuffer";
                    HIWORD(v305.epoch) = 1024;
                    v306 = 3398;
                    v307 = 1024;
                    *(&v6[1].value + 6) = v155;
                    *&v308[4] = 1024;
                    *&v308[6] = v156;
                    LOWORD(v309) = 1024;
                    *(&v6[1].epoch + 2) = v130;
                    _os_log_impl(&dword_1DB56E000, v154, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Didn't decode any samples this cycle. Output buffer should compensate to return erased samples to caller. Moving up the inputSamplesTS to account for implicit erasure. originalInputSamplesTS=%u samples=%d sampleCount=%d", &v305, 0x2Eu);
                  }
                }

                v138 = 0;
                *(a1 + 172) += v130;
              }

              goto LABEL_219;
            }

            v139 = *(a1 + 172) + v5;
            v140 = *(a1 + 168) - v5;
            *(a1 + 168) = v140;
            *(a1 + 172) = v139;
            if (v137 >= 1)
            {
              *(a1 + 184) = v137 - v5;
            }

            if (v140 < 1)
            {
              v151 = v294;
              if ((v140 & 0x80000000) == 0)
              {
                goto LABEL_220;
              }

              VRLogfilePrintSync(*(v13 + 1584), "Critical: Number of samples in the input buffer would have become negative! samples=%d samplesIn=%d\n", v131, v132, v133, v134, v135, v136, v140);
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v152 = VRTraceErrorLogLevelToCSTR();
                v153 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  v280 = *(a1 + 168);
                  LODWORD(v305.value) = 136316162;
                  *(&v6->value + 4) = v152;
                  LOWORD(v305.flags) = 2080;
                  *(&v6->flags + 2) = "_VCAudioPlayer_UpdateInputBuffer";
                  HIWORD(v305.epoch) = 1024;
                  v306 = 3393;
                  v307 = 1024;
                  *(&v6[1].value + 6) = v280;
                  *&v308[4] = 1024;
                  *&v308[6] = v5;
                  _os_log_error_impl(&dword_1DB56E000, v153, OS_LOG_TYPE_ERROR, "VCAudioPlayer [%s] %s:%d Number of samples in the input buffer would have become negative! samples=%d samplesIn=%d", &v305, 0x28u);
                }
              }

              *(a1 + 168) = 0;
LABEL_219:
              v151 = v294;
LABEL_220:
              a2 = *(v151 + 8);
              v157 = *v7;
              if (p_buf)
              {
                v157 += p_buf;
                *v7 = v157;
              }

              *(a1 + 308) = *(a1 + 172) - v157;
              *(a1 + 312) = *(a1 + 176);
              if (p_buf)
              {
                v158 = 1;
              }

              else
              {
                v158 = v138;
              }

              LODWORD(v292) = v138;
              if ((v158 & 1) != 0 || v157 >= a2)
              {
                v10 = v294;
                v170 = **(v294 + 56);
                goto LABEL_243;
              }

              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                v5 = VRTraceErrorLogLevelToCSTR();
                v159 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v160 = *v7;
                  LODWORD(v305.value) = 136316162;
                  *(&v6->value + 4) = v5;
                  LOWORD(v305.flags) = 2080;
                  *(&v6->flags + 2) = "_VCAudioPlayer_UpdateOutputBuffer";
                  HIWORD(v305.epoch) = 1024;
                  v306 = 3416;
                  v307 = 1024;
                  *(&v6[1].value + 6) = v160;
                  *&v308[4] = 1024;
                  *&v308[6] = a2;
                  _os_log_impl(&dword_1DB56E000, v159, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Number of samples in the output buffer would have become negative! samples=%d sampleCount=%d\n", &v305, 0x28u);
                }
              }

              if (*(v13 + 500))
              {
                v10 = 0;
                LODWORD(v3) = 24;
                while (1)
                {
                  v161 = *(v13 + 496);
                  v162 = (v161 * *v7);
                  v163 = (v4 + 24 * v10);
                  v165 = *v163;
                  v164 = v163[1];
                  v166 = (v165 + v162);
                  v167 = ((a2 - *v7) * v161);
                  v168 = v165 + v162 > v165 + v164 || v165 > v166;
                  if (v168 || v164 - v162 < v167)
                  {
                    break;
                  }

                  bzero(v166, v167);
                  v10 = (v10 + 1);
                  if (*(v13 + 500) <= v10)
                  {
                    goto LABEL_241;
                  }
                }
              }

              else
              {
LABEL_241:
                *(a1 + 304) = a2;
                *(a1 + 308) = *(a1 + 172) - a2;
                v170 = 1;
                v10 = v294;
LABEL_243:
                **(v10 + 56) = v170 & 1;
                _VCAudioPlayer_UpdateLogDumpStats(a1, v289, v295, v296);
                LODWORD(v3) = v288;
                _VCAudioPlayer_LogStats(a1);
                if (v288)
                {
                  v171 = *a1 + 1;
                }

                else
                {
                  v171 = 0;
                }

                p_buf = a1 + 296;
                *a1 = v171;
                SampleCount = VCAudioBufferList_GetSampleCount(*v10);
                if (SampleCount < 2)
                {
                  VCAudioPlayer_GetSamples_cold_2(SampleCount);
LABEL_290:
                  v3 = *v10;
                  a2 = *(v10 + 8);
                  ChannelCount = VCAudioBufferList_GetChannelCount(*v10);
                  v210 = *v7;
                  if (*v7 >= a2)
                  {
                    goto LABEL_306;
                  }

                  LODWORD(v293) = ChannelCount;
                  VRLogfilePrintSync(*(v13 + 1584), "Critical: Number of samples in the output buffer would have become negative! samples=%d sampleCount=%d\n", v204, v205, v206, v207, v208, v209, v210);
                  if (VRTraceGetErrorLogLevelForModule() > 2)
                  {
                    v211 = VRTraceErrorLogLevelToCSTR();
                    v212 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      v267 = *v7;
                      LODWORD(v305.value) = 136316162;
                      *(&v6->value + 4) = v211;
                      LOWORD(v305.flags) = 2080;
                      *(&v6->flags + 2) = "_VCAudioPlayer_FinalizeOutputBuffer";
                      HIWORD(v305.epoch) = 1024;
                      v306 = 3431;
                      v307 = 1024;
                      *(&v6[1].value + 6) = v267;
                      *&v308[4] = 1024;
                      *&v308[6] = a2;
                      _os_log_error_impl(&dword_1DB56E000, v212, OS_LOG_TYPE_ERROR, "VCAudioPlayer [%s] %s:%d Number of samples in the output buffer would have become negative! samples=%d sampleCount=%d\n", &v305, 0x28u);
                    }
                  }

                  if (*(v13 + 500))
                  {
                    v10 = 0;
                    LODWORD(v5) = 24;
                    while (1)
                    {
                      v213 = *(v13 + 496);
                      v214 = (v213 * *v7);
                      v215 = (v4 + 24 * v10);
                      v217 = *v215;
                      v216 = v215[1];
                      v218 = (v217 + v214);
                      v219 = ((a2 - *v7) * v213);
                      v220 = v217 + v214 > v217 + v216 || v217 > v218;
                      if (v220 || v216 - v214 < v219)
                      {
                        break;
                      }

                      bzero(v218, v219);
                      v10 = (v10 + 1);
                      if (*(v13 + 500) <= v10)
                      {
                        goto LABEL_305;
                      }
                    }
                  }

                  else
                  {
LABEL_305:
                    *(a1 + 304) = a2;
                    *(a1 + 308) = *(a1 + 172) - a2;
                    v210 = a2;
                    LOBYTE(ChannelCount) = v293;
LABEL_306:
                    v5 = ChannelCount;
                    if (ChannelCount != *p_buf)
                    {
                      VCAudioPlayer_GetSamples_cold_3();
                      goto LABEL_341;
                    }

                    if (ChannelCount)
                    {
                      p_buf = 0;
                      v10 = a1 + 208;
                      do
                      {
                        LODWORD(v298[0]) = 0;
                        v6->value = 0;
                        *&v6->timescale = 0;
                        v6->epoch = 0;
                        if (VCAudioBufferList_GetSizedBufferAtIndex(v3, p_buf, v298, &v305))
                        {
                          v222 = (*(v13 + 496) * a2);
                          if (*v10 < v222 || *&v6->timescale < v222)
                          {
                            goto LABEL_397;
                          }

                          memcpy(v6->value, *(v10 - 8), v222);
                        }

                        ++p_buf;
                        v10 += 24;
                      }

                      while (v5 != p_buf);
                      v210 = *v7;
                    }

                    v224 = v210 - a2;
                    *(a1 + 304) = v224;
                    if (*(v13 + 98))
                    {
                      if (*(v13 + 28))
                      {
                        v225 = JitterQueue_QueueEmptyOrAllDTX(*(v13 + 64));
                      }

                      else
                      {
                        v225 = 0;
                      }

                      VCAudioBufferList_SetSilenceInQueue(v3, v225);
                      v224 = *v7;
                    }

                    if (v224 < 1)
                    {
                      if (v224 < 0)
                      {
                        VRLogfilePrintSync(*(v13 + 1584), "Critical: Number of samples in the output buffer became negative! samples=%d sampleCount=%d\n", v204, v205, v206, v207, v208, v209, v224);
                      }

LABEL_341:
                      v10 = v294;
                      **(v294 + 16) = *(a1 + 308);
                      v236 = *(v294 + 40);
                      if (v236)
                      {
                        v237 = v292 ^ 1;
                        if (!*a1)
                        {
                          v237 = 0;
                        }

                        *v236 = v237;
                      }

                      v238 = *(v294 + 48);
                      LODWORD(v3) = v291;
                      if (v238)
                      {
                        *v238 = *a1;
                      }

                      v239 = *(v294 + 24);
                      if (!v239)
                      {
                        goto LABEL_352;
                      }

                      v240 = *v239;
                      if (!*v239)
                      {
                        goto LABEL_352;
                      }

                      v241 = *(v239 + 8);
                      v242 = *(a1 + 50);
                      *(v239 + 16) = v242;
                      if (v242 <= 0x10 && v241 >= v242)
                      {
                        memcpy(v240, (a1 + 34), v242);
LABEL_352:
                        v243 = *(a1 + 30);
                        if (v243 <= *(a1 + 29))
                        {
                          LOBYTE(v243) = *(a1 + 29);
                        }

                        **(v294 + 32) = v243;
                        LogProfileTimeOverLimit_3("SpkrProc: GetSamples", v8, 0.00499999989, v203, v204, v205, v206, v207, v208, v209, v283);
                        v244 = &audioPlayerMode[*(a1 + 712)];
                        if (v244 < queueGrowthMode && v244 >= audioPlayerMode)
                        {
                          *(v13 + 592) = *v244;
                          if (*(v13 + 28))
                          {
                            v245 = 0;
                          }

                          else
                          {
                            v245 = *(v13 + 772);
                          }

                          *(v13 + 576) = v245;
                          *(v13 + 16) = micro();
                          v246 = **(v294 + 16);
                          *(v13 + 24) = v246;
                          v247 = *(v294 + 8);
                          *(a1 + 308) += v247;
                          *(v13 + 104) += v247;
                          if (v291 == v246)
                          {
                            if (VRTraceGetErrorLogLevelForModule() >= 8)
                            {
                              v254 = VRTraceErrorLogLevelToCSTR();
                              v255 = *MEMORY[0x1E6986650];
                              v256 = *MEMORY[0x1E6986650];
                              if (*MEMORY[0x1E6986640] == 1)
                              {
                                if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
                                {
                                  LODWORD(v305.value) = 136315906;
                                  *(&v6->value + 4) = v254;
                                  LOWORD(v305.flags) = 2080;
                                  *(&v6->flags + 2) = "_VCAudioPlayer_GetAudioSamples";
                                  HIWORD(v305.epoch) = 1024;
                                  v306 = 3887;
                                  v307 = 1024;
                                  *(&v6[1].value + 6) = v291;
                                  _os_log_impl(&dword_1DB56E000, v255, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Timestamp did not increment: %d", &v305, 0x22u);
                                }
                              }

                              else if (os_log_type_enabled(v256, OS_LOG_TYPE_DEBUG))
                              {
                                VCAudioPlayer_GetSamples_cold_4();
                              }
                            }

                            VRLogfilePrintSync(*(v13 + 1584), "Warning: Timestamp did not increment! prevTimestamp=%d\n", v248, v249, v250, v251, v252, v253, v291);
                          }

                          return;
                        }
                      }
                    }

                    else
                    {
                      if (!*(v13 + 500))
                      {
                        goto LABEL_341;
                      }

                      v10 = 0;
                      LODWORD(v3) = 24;
                      while (1)
                      {
                        v226 = (v4 + 24 * v10);
                        v227 = *v226;
                        v228 = v226[1];
                        v229 = *(v13 + 496);
                        v230 = (v229 * a2);
                        v231 = &v227[v230];
                        v232 = (*v7 * v229);
                        v233 = &v227[v230] > &v227[v228] || v227 > v231;
                        v234 = !v233 && v228 - v230 >= v232;
                        if (!v234 || v228 < v232)
                        {
                          break;
                        }

                        memmove(v227, v231, v232);
                        v10 = (v10 + 1);
                        if (*(v13 + 500) <= v10)
                        {
                          goto LABEL_341;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v173 = *(v13 + 500);
                  if (!v173)
                  {
                    goto LABEL_290;
                  }

                  v174 = 0;
                  v175 = 2 * (SampleCount - 2);
                  v176 = 2 * (SampleCount - 1);
                  v177 = a1 + 448;
                  v178 = a1 + 512;
                  v179 = 4 * (SampleCount - 2);
                  v180 = 4 * (SampleCount - 1);
                  while (1)
                  {
                    v181 = (v4 + 24 * v174);
                    if (v4 > v181 || (v181 + 3) > p_buf)
                    {
                      break;
                    }

                    v183 = *v181;
                    if (*v181)
                    {
                      v184 = v183 + v181[1];
                      v185 = v177 + 16 * v174;
                      if (*(v13 + 504) == 1)
                      {
                        v186 = (v183 + v179);
                        if (v183 + v179 >= v184 || v186 < v183 || v185 >= v178 || v185 < v177)
                        {
                          goto LABEL_397;
                        }

                        *(v185 + 12) = *v186;
                        v190 = *v181;
                        v191 = *v181 + v181[1];
                        v192 = (*v181 + v180);
                        if (v192 >= v191 || v192 < v190)
                        {
                          goto LABEL_397;
                        }

                        *(v185 + 8) = *v192;
                      }

                      else
                      {
                        v194 = (v183 + v175);
                        if (v183 + v175 >= v184 || v194 < v183 || v185 >= v178 || v185 < v177)
                        {
                          goto LABEL_397;
                        }

                        *(v185 + 12) = *v194;
                        v198 = *v181;
                        v199 = *v181 + v181[1];
                        v200 = (*v181 + v176);
                        if (v200 >= v199 || v200 < v198)
                        {
                          goto LABEL_397;
                        }

                        *(v185 + 8) = *v200;
                      }
                    }

                    if (v173 <= ++v174)
                    {
                      goto LABEL_290;
                    }
                  }
                }
              }
            }

            else
            {
              if (!*(v13 + 500))
              {
                goto LABEL_219;
              }

              LODWORD(v292) = v137 > 0;
              v10 = 0;
              LODWORD(v3) = 24;
              while (1)
              {
                v141 = a2 + 24 * v10;
                v142 = *v141;
                v143 = *(v141 + 8);
                v144 = *(v13 + 496);
                v145 = (v144 * v5);
                v146 = &v142[v145];
                v147 = (*(a1 + 168) * v144);
                v148 = &v142[v145] > &v142[v143] || v142 > v146;
                v149 = !v148 && v143 - v145 >= v147;
                if (!v149 || v143 < v147)
                {
                  break;
                }

                memmove(v142, v146, v147);
                v10 = (v10 + 1);
                if (*(v13 + 500) <= v10)
                {
                  v151 = v294;
                  v138 = v292;
                  goto LABEL_220;
                }
              }
            }
          }
        }

        v41 = 0;
        *(v13 + 380) = 1;
        v28 = 8;
LABEL_40:
        *(v13 + 376) = v41;
        goto LABEL_41;
      }

      LODWORD(v3) = v27;
      v291 = v7;
      v7 = v293;
      v31 = *(v293 + 16);
      LODWORD(v294) = v31;
      if (*(v13 + 380))
      {
        *(v13 + 380) = 0;
        _VCAudioPlayer_DiscardSamples(a1, v31, *(v293 + 24), v9);
        LODWORD(v5) = _VCAudioPlayer_CalcAdjustment(a1, v293, 0, 0, v32, v33, v34, v35);
        *(v13 + 384) = 1;
      }

      else if (*(*v293 + 4))
      {
        v28 = 9;
        v41 = 1;
        goto LABEL_40;
      }

      if (v9 - *(v13 + 16) <= 0.300000012)
      {
        v10 = v293;
        LODWORD(v7) = v291;
      }

      else
      {
        v36 = ((v26 + (v6 + v10 + v3)) - v294);
        v10 = v293;
        LODWORD(v7) = v291;
        if ((*(v13 + 488) * 0.3) < v36)
        {
          _VCAudioPlayer_DiscardSamples(a1, *(v293 + 16), *(v293 + 24), v9);
          LODWORD(v5) = _VCAudioPlayer_CalcAdjustment(a1, v293, 0, 0, v37, v38, v39, v40);
          *(v13 + 384) = 0x100000000;
        }
      }

      if ((*(v13 + 1816) & 1) == 0 && v9 - *(v13 + 16) > 0.03)
      {
        v42 = v5;
        *(v13 + 384) = 1;
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v43 = VRTraceErrorLogLevelToCSTR();
          v44 = *MEMORY[0x1E6986650];
          v45 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = v9 - *(v13 + 16);
              buf = 136316162;
              *buf_4 = v43;
              *&buf_4[8] = 2080;
              *&buf_4[10] = "_VCAudioPlayer_ProcessDiscardState";
              *&buf_4[18] = 1024;
              LODWORD(v301) = 3325;
              WORD2(v301) = 2048;
              *(&v301 + 6) = v9;
              HIWORD(v301) = 2048;
              *v302 = v46;
              _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Timestamp jumped due to callbacks freeze. Time=%f, TimeDelta=%f", &buf, 0x30u);
            }
          }

          else if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v281 = v9 - *(v13 + 16);
            buf = 136316162;
            *buf_4 = v43;
            *&buf_4[8] = 2080;
            *&buf_4[10] = "_VCAudioPlayer_ProcessDiscardState";
            *&buf_4[18] = 1024;
            LODWORD(v301) = 3325;
            WORD2(v301) = 2048;
            *(&v301 + 6) = v9;
            HIWORD(v301) = 2048;
            *v302 = v281;
            _os_log_debug_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d Timestamp jumped due to callbacks freeze. Time=%f, TimeDelta=%f", &buf, 0x30u);
          }
        }

        LODWORD(v5) = v42;
      }
    }

    v49 = *(a2 + 8);
    if (v49 >= *(a1 + 192))
    {
      v49 = *(a1 + 192);
    }

    *(a2 + 8) = v49;
    v291 = v7;
    LODWORD(v287) = v5;
    if (*(a1 + 304))
    {
      v50 = *(a1 + 29);
    }

    else
    {
      v50 = 1;
    }

    v7 = (a1 + 304);
    *(a1 + 30) = v50;
    v51 = _VCAudioPlayer_DecodeSamples(a1, &v295, &v297, a2, v10, v9);
    if (*(v13 + 504) == 1)
    {
      if (*(a1 + 792) < 0.0058)
      {
        v52 = *(a1 + 796) < 0.0058;
        goto LABEL_60;
      }
    }

    else if (*(a1 + 784) < 72.0)
    {
      v52 = *(a1 + 788) < 72.0;
LABEL_60:
      v53 = v52;
LABEL_64:
      LODWORD(v5) = 1;
      v294 = a2;
      if ((v53 & 1) == 0 && v51)
      {
        LODWORD(v5) = *(v13 + 28) != 0;
      }

      a2 = a1 + 64;
      v6 = v297;
      v3 = v304;
      _VCAudioPlayer_CopyPlaybackBuffer(v304, a1 + 64, 0, *(v13 + 496) * v297);
      v303 = xmmword_1DBD513B8;
      memset(&v302[3], 170, 96);
      HIDWORD(v54) = -1431655766;
      memset(v302, 170, 24);
      buf = v6;
      *buf_4 = v287;
      *&buf_4[4] = &v296;
      *&buf_4[12] = v5;
      *&buf_4[16] = v295;
      v289 = v6;
      v290 = (a1 + 712);
      *&v301 = a1 + 304;
      *(&v301 + 1) = a1 + 712;
      LODWORD(v302[0]) = *(v13 + 496);
      *(v302 + 4) = *(v13 + 384);
      *&v303 = 0;
      BYTE8(v303) = 0;
      HIDWORD(v303) = 0;
      memset(&v302[2], 0, 97);
      *(v13 + 1644) = 0;
      *v13 = 0;
      v55 = *(a1 + 296);
      if (v55 >= 1)
      {
        v56 = 0;
        do
        {
          v57 = &v304[3 * v56];
          v58 = *v57;
          v59 = v57[1];
          if (v58)
          {
            v60 = v59 == 0;
          }

          else
          {
            v60 = 0;
          }

          v61 = &v302[v56 + 2];
          if (v60 || v61 >= &v302[6] || v61 < &v302[2])
          {
            goto LABEL_397;
          }

          *v61 = v58;
          v64 = (a2 + 24 * v56);
          v65 = *v64;
          v66 = v64[1];
          v67 = v65 && v66 == 0;
          v68 = &v302[v56 + 6];
          v69 = v67 || v68 >= &v302[10];
          if (v69 || v68 < &v302[6])
          {
            goto LABEL_397;
          }

          *v68 = v65;
          v71 = (v4 + 24 * v56);
          v72 = *v71;
          v73 = v71[1];
          v74 = v72 && v73 == 0;
          v75 = &v302[v56 + 10];
          v76 = v74 || v75 >= &v302[14];
          if (v76 || v75 < &v302[10])
          {
            goto LABEL_397;
          }

          *v75 = v72;
          ++v56;
        }

        while (v55 > v56);
      }

      v288 = v5;
      v6 = &v305;
      v78 = a1 + 808;
      if (!*v292)
      {
LABEL_125:
        v89 = *&buf_4[4];
        v90 = *&buf_4[16];
        if (*&buf_4[12])
        {
          v91 = *a1 == 0;
        }

        else
        {
          v91 = 1;
        }

        v92 = v91;
        v93 = 7;
        if (*buf_4 >= 1 && v92)
        {
          if (*(v13 + 384) || *(v13 + 388))
          {
            v93 = 7;
          }

          else
          {
            if (!*&buf_4[16])
            {
              goto LABEL_137;
            }

            v93 = 2;
          }
        }

        *v290 = v93;
        _VCAudioPlayer_CopyPlaybackBuffer(v304, a1 + 64, 0, *(v13 + 496) * v90);
LABEL_137:
        *v89 = v90;
        v10 = v293;
        goto LABEL_138;
      }

      LODWORD(v54) = *(v13 + 488);
      *&v303 = v287 / v54;
      BYTE8(v303) = *(v13 + 28) != 0;
      if (*(v13 + 464))
      {
        if ((*(v13 + 97) & 1) == 0 && *(v13 + 480) == 5)
        {
          goto LABEL_121;
        }

        v79 = (v13 + 312);
        if (*(v13 + 97))
        {
          goto LABEL_108;
        }
      }

      else
      {
        v79 = (v13 + 312);
        if (*(v13 + 97))
        {
LABEL_108:
          if ((VCAudioPlayer_GetSamples_cold_1(a1, v79, &v305) & 1) == 0)
          {
            goto LABEL_118;
          }

          value = v305.value;
LABEL_117:
          HIDWORD(v303) = value;
LABEL_118:
          active = VCTimescale_ActiveSpeechAdapt(v292);
          if (active < 0)
          {
            VRLogfilePrintSync(*(v13 + 1584), "Warning: Active Speech Timescaling did not complete! Result=%d", v82, v83, v84, v85, v86, v87, active);
          }

          if (v302[14])
          {
            goto LABEL_138;
          }

LABEL_121:
          Available = VCTimescale_TailExtractAvailable(v292);
          if (*(a1 + 808) && (Available & 1) == 0 && !*(v13 + 384) && !*(v13 + 388))
          {
            if (*&buf_4[12] && *a1 && *buf_4 >= 1)
            {
              v9 = 0.0;
              if (VRTraceIsInternalOSInstalled())
              {
                v9 = micro();
              }

              LODWORD(p_buf) = *&buf_4[16];
              v264 = *&buf_4[4];
              if (!*&buf_4[16])
              {
                LODWORD(v5) = 0;
                goto LABEL_391;
              }

              v287 = *&buf_4[4];
              LODWORD(v3) = *buf_4;
              v286 = *&buf_4[16] - *buf_4;
              if (*&buf_4[16] - *buf_4 <= *(v13 + 492))
              {
                LODWORD(v5) = *(v13 + 492);
              }

              else
              {
                LODWORD(v5) = *&buf_4[16] - *buf_4;
              }

              _VCAudioPlayer_CopyPlaybackBuffer(v304, a1 + 64, 0, v5 * *(v13 + 496));
              *(a1 + 712) = 3;
              if (VRTraceGetErrorLogLevelForModule() < 8)
              {
                goto LABEL_390;
              }

              v284 = VRTraceErrorLogLevelToCSTR();
              v265 = *MEMORY[0x1E6986650];
              log = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
                {
                  v266 = micro();
                  LODWORD(v305.value) = 136316930;
                  *(&v305.value + 4) = v284;
                  LOWORD(v305.flags) = 2080;
                  *(&v305.flags + 2) = "_VCAudioPlayer_DecodeSkipSilence";
                  HIWORD(v305.epoch) = 1024;
                  v306 = 2513;
                  v307 = 2048;
                  *v308 = v266;
                  *&v308[8] = 1024;
                  v309 = v286;
                  v310 = 1024;
                  v311 = p_buf;
                  v312 = 1024;
                  v313 = v5;
                  *v314 = 1024;
                  *&v314[2] = v3;
                  _os_log_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d %7.03f: %-4i  skip %i -> %i adjust %d", &v305, 0x3Eu);
                }

                goto LABEL_390;
              }

              if (!os_log_type_enabled(v265, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_390;
              }

              goto LABEL_398;
            }

            if ((*buf_4 & 0x80000000) != 0 && *(v13 + 392))
            {
              v9 = 0.0;
              if (VRTraceIsInternalOSInstalled())
              {
                v9 = micro();
              }

              _VCAudioPlayer_DecodeDup(a1, *buf_4, v304, *&buf_4[16], *&buf_4[12], *&buf_4[4]);
              LogProfileTimeOverLimit_3("SpkrProc: Dup", v9, 0.00499999989, v273, v274, v275, v276, v277, v278, v279, v283);
              goto LABEL_138;
            }
          }

          goto LABEL_125;
        }
      }

      if (*v79 == 1 && *(v13 + 329) != 1)
      {
        value = 3;
      }

      else if (*(v13 + 323))
      {
        value = 3;
      }

      else
      {
        value = 2;
      }

      goto LABEL_117;
    }

    v53 = 0;
    goto LABEL_64;
  }

  LODWORD(p_buf) = *(v13 + 24);
  _VCAudioPlayer_UpdateJitterQueueSize(a1);
  VCAudioPlayerDTMF_ProcessDTMF(a1, a2);
  v15 = *(a2 + 16);
  if (v15)
  {
    *v15 = *(v13 + 24);
  }

  v16 = *(a2 + 24);
  if (v16)
  {
    *(v16 + 16) = 0;
  }

  v17 = *(a2 + 56);
  if (v17)
  {
    *v17 = 0;
  }

  _VCAudioPlayer_UpdateLogDumpStats(a1, *(a2 + 8), *(a2 + 8), *(a2 + 8));
  _VCAudioPlayer_LogStats(a1);
  v18 = &audioPlayerMode[*(a1 + 712)];
  if (v18 >= queueGrowthMode || v18 < audioPlayerMode)
  {
    goto LABEL_397;
  }

  *(v13 + 592) = *v18;
  if (*(v13 + 28))
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v13 + 772);
  }

  *(v13 + 576) = v19;
  *(v13 + 16) = micro();
  if (p_buf == *(v13 + 24) && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      buf = 136315906;
      *buf_4 = v29;
      *&buf_4[8] = 2080;
      *&buf_4[10] = "_VCAudioPlayerDTMF_GetDTMFSamples";
      *&buf_4[18] = 1024;
      LODWORD(v301) = 3749;
      WORD2(v301) = 1024;
      *(&v301 + 6) = p_buf;
      _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d DTMFGenerator: Timestamp did not increment, timestamp=%d", &buf, 0x22u);
    }
  }

  *(v13 + 104) += *(a2 + 8);
  JitterQueue_SetLastDecodedFrameTimestamp(*(v13 + 64), *(a1 + 24));
}

uint64_t VCAudioPlayer_IsTimestampValid(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 312);
  }

  else
  {
    VCAudioPlayer_IsTimestampValid_cold_1(&v3);
    v1 = v3;
  }

  return v1 & 1;
}

__n128 VCAudioPlayer_GetLastDecodedAudioFrameInfo(uint64_t a1, __n128 *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 37256);
      a2[1].n128_u64[0] = *(a1 + 37272);
      *a2 = result;
    }
  }

  return result;
}

void _VCAudioPlayer_ResetPlaybackBuffer(unint64_t a1)
{
  v2 = (a1 + 96);
  v1 = *(a1 + 96);
  if (v1 >= 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = a1 + 24 * v4;
      if (v5 < a1 || v5 + 24 > v2)
      {
        break;
      }

      if (*v5)
      {
        bzero(*v5, *(v5 + 8));
        v1 = *v2;
      }

      if (v1 <= ++v4)
      {
        return;
      }
    }

    __break(0x5519u);
  }
}

unint64_t _VCAudioPlayer_InitializePlaybackBuffer(unint64_t result, unint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 96);
  *(result + 96) = v3;
  if (v3 >= 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = (a2 + 24 * v4);
      if (v5 < a2 || (v5 + 3) > a2 + 96)
      {
        break;
      }

      v7 = (result + 24 * v4);
      v9 = *v5;
      v8 = v5[1];
      v10 = *v5 + a3;
      v11 = v10 > v9 + v8 || v9 > v10;
      v12 = !v11 && v7 >= result;
      if (!v12 || (v7 + 3) > result + 96)
      {
        break;
      }

      *v7 = v10;
      v7[1] = v8 - a3;
      if (v3 <= ++v4)
      {
        return result;
      }
    }

    __break(0x5519u);
  }

  return result;
}

uint64_t _VCAudioPlayer_CalcAdjustment(uint64_t a1, int **a2, int a3, int *a4, double a5, double a6, double a7, __n128 a8)
{
  v152 = *MEMORY[0x1E69E9840];
  v8 = a1 + 35532;
  if (*(a1 + 36024))
  {
    return 0;
  }

  v14 = (a1 + 36016);
  v15 = *(a2 + 4);
  LODWORD(a5) = *(a1 + 35992);
  v16 = *&a5;
  a8.n128_f64[0] = v15 / v16;
  v17 = *a2[3];
  v18 = (v17 - v15) / v16;
  if (*(a1 + 36040) == 1 && *(a1 + 35544) == 1 && fabs(v18) < *v14 * 0.5)
  {
    *(a1 + 35544) = 0;
  }

  v19 = (a1 + 35864);
  v139 = a8;
  *(a1 + 35864) = a8.n128_u64[0];
  v20 = (a1 + 35872);
  *(a1 + 35872) = a2[4];
  v21 = JitterQueue_QueuedSamples(*(a1 + 35568));
  LODWORD(v22) = *(v8 + 460);
  if ((*(v8 + 285) & 1) != 0 || (*(v8 + 292) & 1) != 0 || (v23 = 0.0, *(v8 + 295) == 1))
  {
    v23 = *(v8 + 532);
  }

  v24 = *(a2 + 4) + 0.00001 + v23;
  if (*(v8 + 236) <= v24)
  {
    v60 = *(v8 + 116) >= *(v8 + 524);
    *(v8 + 284) = v60;
    if (!v60 || *(v8 + 508) == 1 && v21 / v22 > v139.n128_f64[0] * 1.5 || *v8)
    {
      v25 = 0;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v91 = VRTraceErrorLogLevelToCSTR();
        v92 = *MEMORY[0x1E6986650];
        v93 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(v8 + 284);
            v95 = *(v8 + 236);
            *buf = 136316418;
            v143 = v91;
            v144 = 2080;
            v145 = "_VCAudioPlayer_ProtectMinimumQueue";
            v146 = 1024;
            v147 = 3057;
            v148 = 1024;
            *v149 = v94;
            *&v149[4] = 2048;
            *&v149[6] = v95;
            *&v149[14] = 2048;
            *&v149[16] = v24;
            _os_log_impl(&dword_1DB56E000, v92, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Warning: Protecting minimum queue. packetLifetimeIsLow=%d, packetLifeTime5Perc=%f threshold=%f\n", buf, 0x36u);
          }
        }

        else if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
        {
          v137 = *(v8 + 284);
          v138 = *(v8 + 236);
          *buf = 136316418;
          v143 = v91;
          v144 = 2080;
          v145 = "_VCAudioPlayer_ProtectMinimumQueue";
          v146 = 1024;
          v147 = 3057;
          v148 = 1024;
          *v149 = v137;
          *&v149[4] = 2048;
          *&v149[6] = v138;
          *&v149[14] = 2048;
          *&v149[16] = v24;
          _os_log_debug_impl(&dword_1DB56E000, v92, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d Warning: Protecting minimum queue. packetLifetimeIsLow=%d, packetLifeTime5Perc=%f threshold=%f\n", buf, 0x36u);
        }
      }

      v25 = 1;
      if (v18 > 0.0)
      {
        v18 = 0.0;
      }
    }
  }

  else
  {
    v25 = 0;
    *(v8 + 284) = 0;
  }

  *(v8 + 323) = v25;
  v26 = JitterQueue_QueuedSamples(*(v8 + 36));
  LODWORD(v27) = *(v8 + 460);
  v28 = v27;
  v29 = *(v8 + 128);
  v30 = *a2[3];
  v31 = *(a2 + 4);
  v32 = *(v8 + 220);
  v33 = vdupq_n_s64(0x3EE4F8B588E368F1uLL);
  v34.f64[0] = v31;
  *&v34.f64[1] = v139.n128_u64[0];
  *&v35.f64[0] = v139.n128_u64[0];
  v35.f64[1] = v31;
  v36 = vand_s8(vmovn_s32(vuzp1q_s32(vcgtq_f64(vaddq_f64(v32, v33), v35), vcgtq_f64(vaddq_f64(*(v8 + 236), v33), v34))), 0x1000100010001);
  *(v8 + 288) = vuzp1_s8(vzip2_s16(vzip1_s16(v36, vext_s8(v36, v36, 6uLL)), v36), *&v28).u32[0];
  v37 = *(v8 + 272);
  *(v8 + 285) = v37 > 1;
  *(v8 + 286) = v37 > 7;
  *(v8 + 292) = *(v8 + 280) > 1u;
  if (*(v8 + 268))
  {
    v38 = 0;
  }

  else
  {
    v38 = *(v8 + 269) ^ 1;
  }

  *(v8 + 287) = v38 & 1;
  *(v8 + 297) = v31 < v139.n128_f64[0];
  v39 = v26 / v28;
  v40 = v31 < v139.n128_f64[0] && v32.f64[0] >= *(a2 + 5) * 0.8;
  *(v8 + 294) = v40;
  v41 = *(v8 + 136);
  *(v8 + 302) = v29 < v41;
  *(v8 + 303) = v29 > v41;
  *(v8 + 301) = *(v8 + 124) == 0;
  *(v8 + 300) = v29 == 0;
  v42 = v31 + 0.00001;
  *(v8 + 295) = v39 <= v42;
  *(v8 + 296) = v39 > v139.n128_f64[0] * 1.5;
  v43 = *a2;
  v44 = **a2;
  v45 = v39 <= 0.0 || v44 == 0;
  v46 = !v45;
  *(v8 + 311) = v46;
  if (v45)
  {
    v48 = 0;
    *(v8 + 312) = 0;
  }

  else
  {
    v47 = v30 / v28;
    *(v8 + 312) = *(v8 + 92) != v44;
    v48 = v43[1] > v47 + 0.00001 && v47 > v42;
  }

  *(v8 + 314) = v48;
  *(v8 + 313) = (v46 ^ 1) & *(v8 + 316);
  *(v8 + 92) = v44;
  v49 = a2[1];
  v50 = (v49 + 100);
  v51 = *(v49 + 200);
  v52 = (v49 + 50);
  v53 = &v49[v51 + 50];
  if (v53 >= v49 + 100 || v53 < v52)
  {
LABEL_275:
    __break(0x5519u);
  }

  v54 = *(v49 + 201);
  if (v54 >= 1)
  {
    v55 = 0;
    v56 = 0;
    v57 = *v53;
    v58 = 1;
    while (1)
    {
      v59 = (v52 + 8 * ((v51 + v55) % 50));
      v60 = v59 < v50 && v59 >= v52;
      if (!v60)
      {
        goto LABEL_275;
      }

      if (vabdd_f64(v57, *v59) <= 5.0)
      {
        if (v56 > 1)
        {
          goto LABEL_51;
        }

        ++v56;
        v57 = *v59;
      }

      v58 = ++v55 < v54;
      if (v54 == v55)
      {
        goto LABEL_51;
      }
    }
  }

  v58 = 0;
LABEL_51:
  *(v8 + 317) = v58;
  v61 = *(v8 + 20);
  LeftOverSamples = VCAudioPlayer_GetLeftOverSamples(a1);
  v65 = *(v8 + 324);
  *(v8 + 318) = v65 > 0.0;
  *(v8 + 319) = v65 < 0.0;
  v66 = *(v8 + 152);
  *(v8 + 304) = v66 != 0;
  if ((*(v8 + 436) & 1) == 0)
  {
    *(v8 + 305) = 0;
LABEL_62:
    v73 = 0;
    *(v8 + 306) = 0;
    *(v8 + 308) = 0;
    v74 = v139;
    goto LABEL_65;
  }

  v67 = *(v8 + 452) != 5 || v66 == 0;
  v68 = !v67;
  *(v8 + 305) = v68;
  if (v67)
  {
    goto LABEL_62;
  }

  v69 = (v61 + LeftOverSamples);
  v70 = *(v8 + 444);
  v71 = *(v8 + 160) <= v69;
  *(v8 + 306) = v70 > 0.0;
  *(v8 + 308) = v71;
  v72 = v70 > 0.0 && *(a2 + 4) <= v69;
  v74 = v139;
  *(v8 + 307) = v72;
  v63 = *(v8 + 164);
  HIDWORD(v64) = 1065646817;
  v73 = v63 >= 0.01;
LABEL_65:
  *(v8 + 309) = v73;
  if (*(v8 + 412) != 1)
  {
    goto LABEL_200;
  }

  if (*v8)
  {
    if (v65 != 0.0)
    {
      _VCAudioPlayer_SteerQueueCommand(a1, 2, v74);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v75 = VRTraceErrorLogLevelToCSTR();
        v76 = *MEMORY[0x1E6986650];
        v77 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v143 = v75;
            v144 = 2080;
            v145 = "_VCAudioPlayer_HandleQueueSteeringReset";
            v146 = 1024;
            v147 = 2885;
            v78 = "VCAudioPlayer [%s] %s:%d Queue Steering: Resetting queue growth state";
            v79 = v76;
            v80 = 28;
LABEL_72:
            _os_log_impl(&dword_1DB56E000, v79, OS_LOG_TYPE_DEFAULT, v78, buf, v80);
            goto LABEL_172;
          }
        }

        else if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          _VCAudioPlayer_CalcAdjustment_cold_1();
        }
      }
    }

    goto LABEL_172;
  }

  v81 = *(v8 + 323);
  v82 = *(v8 + 289);
  if ((v82 & 1) == 0 && *(v8 + 285) == 1 && *(v8 + 292) == 1 && *(v8 + 269) == 1)
  {
    v83 = *(v8 + 297);
  }

  else
  {
    v83 = 0;
  }

  *(v8 + 293) = v83 & 1;
  if (v81 && *(v8 + 314) == 1 && *(v8 + 312) == 1)
  {
    v84 = *(v8 + 269);
  }

  else
  {
    v84 = 0;
  }

  *(v8 + 315) = v84 & 1;
  v85 = *(v8 + 295);
  if ((v85 & 1) != 0 || *(v8 + 301) != 1)
  {
    if (v82)
    {
      v86 = 0;
      goto LABEL_95;
    }
  }

  else
  {
    v86 = 0;
    if (*(v8 + 303) != 1 || v65 >= 0.0 || (v82 & 1) != 0)
    {
      goto LABEL_95;
    }
  }

  v86 = 0;
  if (*(v8 + 269) == 1 && v65 <= 0.0)
  {
    v86 = *(v8 + 300) ^ 1;
  }

LABEL_95:
  *(v8 + 298) = v86 & 1;
  if (v81)
  {
    if (*(v8 + 269) == 1 && *(v8 + 286) == 1 && (*(v8 + 300) & 1) == 0)
    {
      LOBYTE(v81) = *(v8 + 297);
    }

    else
    {
      LOBYTE(v81) = 0;
    }
  }

  *(v8 + 299) = v81 & 1;
  if (v83)
  {
    v87 = 1;
  }

  else
  {
    v87 = v84 | v86 | v81;
  }

  *(v8 + 320) = v87 & 1;
  v88 = *(v8 + 314);
  if (v85)
  {
    *(v8 + 321) = 0;
    if (v88)
    {
      *(v8 + 322) = 0;
      if ((v87 & 1) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_140;
    }

    v89 = 0;
    LOBYTE(v90) = 0;
    if ((*(v8 + 268) & 1) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_129;
  }

  if (*(v8 + 314))
  {
    v89 = 0;
    LOBYTE(v90) = 0;
    *(v8 + 321) = 0;
    goto LABEL_138;
  }

  v90 = *(v8 + 268);
  if (v90 != 1 || *(v8 + 272) && *(v8 + 280) || *(v8 + 300) != 1 || (*(v8 + 313) & 1) == 0 && (*(v8 + 296) & 1) == 0 && (*(v8 + 291) & 1) == 0 && (*(v8 + 290) & 1) == 0 && (*(v8 + 302) & 1) == 0 && v65 <= 0.0 || *(v8 + 297) != 1 || (*(v8 + 294) & 1) != 0)
  {
    v89 = 0;
    goto LABEL_128;
  }

  if (*(v8 + 317) != 1)
  {
    v89 = 1;
LABEL_128:
    *(v8 + 321) = v89;
    if (!v90)
    {
      goto LABEL_138;
    }

    goto LABEL_129;
  }

  v89 = *(a1 + 808) == 2;
  *(v8 + 321) = v89;
LABEL_129:
  if (*(v8 + 300) == 1 && *(v8 + 302) == 1 && ((*(v8 + 313) & 1) != 0 || (*(v8 + 296) & 1) != 0 || (*(v8 + 291) & 1) != 0 || *(v8 + 290) == 1) && *(v8 + 297) == 1 && (*(v8 + 294) & 1) == 0)
  {
    if (*(v8 + 317) != 1)
    {
      v89 = 1;
      *(v8 + 322) = 1;
      if (v87)
      {
        goto LABEL_274;
      }

      goto LABEL_159;
    }

    LOBYTE(v90) = *(a1 + 808) == 2;
    v89 |= v90;
  }

  else
  {
    LOBYTE(v90) = 0;
  }

LABEL_138:
  *(v8 + 322) = v90;
  if (v87)
  {
    if ((v89 & 1) == 0)
    {
LABEL_140:
      if (*(v8 + 116) >= *(v8 + 526))
      {
        _VCAudioPlayer_SteerQueueCommand(a1, 0, v74);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v96 = VRTraceErrorLogLevelToCSTR();
          v97 = *MEMORY[0x1E6986650];
          v98 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v143 = v96;
              v144 = 2080;
              v145 = "_VCAudioPlayer_ExecuteQueueSteering";
              v146 = 1024;
              v147 = 2982;
              _os_log_impl(&dword_1DB56E000, v97, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Queue Steering: Growing queue to protect against low packet lifetime and erasures", buf, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
          {
            _VCAudioPlayer_CalcAdjustment_cold_4();
          }
        }

        if (*(v8 + 312) == 1)
        {
          *(v8 + 316) = 1;
        }
      }

      goto LABEL_172;
    }

LABEL_274:
    _VCAudioPlayer_CalcAdjustment_cold_3();
    goto LABEL_172;
  }

LABEL_159:
  if (*(v8 + 116) >= *(v8 + 526) && (v89 & 1) != 0)
  {
    _VCAudioPlayer_SteerQueueCommand(a1, 1, v74);
    if (*(v8 + 313) == 1)
    {
      *(v8 + 316) = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v140 = VRTraceErrorLogLevelToCSTR();
      v99 = *MEMORY[0x1E6986650];
      v100 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_172;
        }

        v101 = *(v8 + 322);
        *buf = 136315906;
        if (v101)
        {
          v102 = "Proactively ";
        }

        else
        {
          v102 = "";
        }

        v143 = v140;
        v144 = 2080;
        v145 = "_VCAudioPlayer_ExecuteQueueSteering";
        v146 = 1024;
        v147 = 2996;
        v148 = 2080;
        *v149 = v102;
        v78 = "VCAudioPlayer [%s] %s:%d Queue Steering: %s shrinking queue";
        v79 = v99;
        v80 = 38;
        goto LABEL_72;
      }

      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
      {
        _VCAudioPlayer_CalcAdjustment_cold_2();
      }
    }
  }

LABEL_172:
  v103 = *(a2 + 4);
  v104 = *(a2 + 4);
  if (v18 != 0.0 && !*v8)
  {
    *buf = 0;
    if (JitterQueue_GetTimestampDeltaToNextDTXPacket(*(v8 + 36), buf))
    {
      LODWORD(v105) = *(v8 + 460);
      v106 = *buf / v105;
      if (v106 != 0.0)
      {
        HIDWORD(v63) = 1070889697;
        if (v106 < 0.32)
        {
LABEL_199:
          v114 = 0.0;
          goto LABEL_201;
        }
      }
    }
  }

  v107 = v104;
  v141 = a4;
  v108 = JitterQueue_QueuedSamples(*(v8 + 36));
  v109 = *(a1 + 168);
  v110 = *(a1 + 304);
  v111 = VCTimescale_TailSize(a1 + 808);
  if (*(v8 + 305) == 1 && (*(v8 + 307) & 1) == 0 && (*(v8 + 309) & 1) != 0)
  {
    v112 = 1;
    v14 = (v8 + 484);
    v19 = (v8 + 332);
    v20 = (v8 + 340);
    a4 = v141;
    goto LABEL_196;
  }

  v113 = 1;
  if (v109 + v110 + v108 + v111 > v107)
  {
    v14 = (v8 + 484);
    v19 = (v8 + 332);
    v20 = (v8 + 340);
    a4 = v141;
    goto LABEL_190;
  }

  v14 = (v8 + 484);
  v19 = (v8 + 332);
  v20 = (v8 + 340);
  a4 = v141;
  if (*(v8 + 268) & 1) != 0 || (v113 = *(v8 + 308), (v113) || *(v8 + 236) + 0.00001 < v103)
  {
LABEL_190:
    if (!*(v8 + 305))
    {
      goto LABEL_192;
    }

    goto LABEL_191;
  }

  if (*(v8 + 320) & 1) != 0 || (*(v8 + 295))
  {
    v113 = 0;
    if (!*(v8 + 305))
    {
      goto LABEL_192;
    }
  }

  else
  {
    v113 = *(v8 + 300);
    if (!*(v8 + 305))
    {
      goto LABEL_192;
    }
  }

LABEL_191:
  if (*(v8 + 308) != 1)
  {
    v112 = 1;
    if ((v113 & 1) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_195;
  }

LABEL_192:
  v112 = *(v8 + 295);
  if ((v113 & 1) == 0)
  {
    goto LABEL_196;
  }

LABEL_195:
  v114 = 0.0;
  if (v18 < 0.0)
  {
    goto LABEL_201;
  }

LABEL_196:
  if (!*v8 && (v112 & 1) != 0)
  {
    v114 = v18;
    if (v18 <= 0.0)
    {
      goto LABEL_201;
    }

    goto LABEL_199;
  }

LABEL_200:
  v114 = v18;
LABEL_201:
  *(v8 + 1588) = 0;
  if (!*(a1 + 808))
  {
    v9 = 0;
    goto LABEL_234;
  }

  v115 = *(v8 + 508);
  if (v115 == 1 && (*(v8 + 12) & 1) != 0)
  {
LABEL_230:
    v124 = 1;
    goto LABEL_231;
  }

  v116 = 0;
  *(v8 + 1640) = 0;
  LODWORD(v63) = *(a1 + 24);
  LODWORD(v64) = *(v8 + 460);
  v117 = v64;
  v118 = *v8;
  v119 = *&v63 / v117;
  if (*v8 || (LODWORD(v65) = *(v8 + 52), v65 = *&v65 / v117, v65 == 0.0))
  {
LABEL_208:
    if (v118)
    {
      goto LABEL_214;
    }

    goto LABEL_209;
  }

  v65 = vabdd_f64(v119, v65);
  if (v65 < *(v8 + 60))
  {
    v116 = 1;
    *(v8 + 1640) = 1;
    goto LABEL_208;
  }

  v116 = 0;
LABEL_209:
  LODWORD(v65) = *(v8 + 56);
  v120 = *&v65 / v117;
  if (v120 != 0.0)
  {
    if (vabdd_f64(v119, v120) < *(v8 + 60))
    {
      v116 = 1;
      *(v8 + 1641) = 1;
    }

    goto LABEL_216;
  }

LABEL_214:
  if (v118)
  {
    *(v8 + 52) = 0;
    *(v8 + 56) = 0;
  }

LABEL_216:
  if (v115)
  {
    v115 = *v19 == *v20 && v114 > 0.0 && *(v8 + 124) == 0;
  }

  v122 = *v14;
  v123 = *v14 * 0.95;
  if (v118)
  {
    v124 = v122 * -0.45 >= v114;
    if (v123 <= v114)
    {
      v124 = 1;
    }

    goto LABEL_231;
  }

  if (v122 * -0.95 >= v114)
  {
    goto LABEL_230;
  }

  v124 = ((v123 <= v114) | v115) & (v116 ^ 1);
LABEL_231:
  v9 = 0;
  if (a3 >= 1 && v124)
  {
    v9 = (v17 - v15);
    *(v8 + 1588) = v9;
  }

LABEL_234:
  if (!a4)
  {
    goto LABEL_257;
  }

  v125 = (a1 + 808);
  if (!a3 || v9 < 1)
  {
    if ((v9 & 0x80000000) == 0 || (*v125 & 0xFFFFFFFE) != 2 || *(v8 + 436) == 1 && (*(v8 + 69) & 1) == 0 && *(v8 + 452) == 5)
    {
      goto LABEL_257;
    }

    v126 = a1 + 808;
    goto LABEL_254;
  }

  if (*(v8 + 476) != 1)
  {
    if (*(a1 + 784) >= 72.0 || *(a1 + 788) >= 72.0)
    {
      goto LABEL_250;
    }

LABEL_249:
    IsNextFrameDTX = 1;
    goto LABEL_251;
  }

  if (*(a1 + 792) < 0.0058 && *(a1 + 796) < 0.0058)
  {
    goto LABEL_249;
  }

LABEL_250:
  IsNextFrameDTX = JitterQueue_IsNextFrameDTX(*(v8 + 36));
LABEL_251:
  IsCompressionNeeded = VCTimescale_IsCompressionNeeded(v125);
  if (IsNextFrameDTX || !IsCompressionNeeded)
  {
    LODWORD(v129) = *(v8 + 460);
    v130 = (*(v8 + 516) * v129);
    goto LABEL_256;
  }

  v126 = v125;
LABEL_254:
  v130 = VCTimescale_WarpFrameSize(v126);
LABEL_256:
  *a4 = v130;
LABEL_257:
  if (*(v8 + 508) == 1 && (*(v8 + 12) & 1) == 0 && v9)
  {
    *(v8 + 12) = 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v131 = VRTraceErrorLogLevelToCSTR();
    v132 = *MEMORY[0x1E6986650];
    v133 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        v134 = JitterQueue_QueuedSamples(*(v8 + 36));
        *buf = 136316674;
        v143 = v131;
        v144 = 2080;
        v145 = "_VCAudioPlayer_CalcAdjustment";
        v146 = 1024;
        v147 = 3268;
        v148 = 2048;
        *v149 = v17 - v15;
        *&v149[8] = 2048;
        *&v149[10] = v17;
        *&v149[18] = 2048;
        *&v149[20] = v15;
        v150 = 1024;
        v151 = v134;
        _os_log_impl(&dword_1DB56E000, v132, OS_LOG_TYPE_DEFAULT, "VCAudioPlayer [%s] %s:%d Adjust[%f] AvgQSize[%f] DesiredQsize[%f] QueuedSamples[%d]", buf, 0x40u);
      }
    }

    else if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
    {
      v136 = JitterQueue_QueuedSamples(*(v8 + 36));
      *buf = 136316674;
      v143 = v131;
      v144 = 2080;
      v145 = "_VCAudioPlayer_CalcAdjustment";
      v146 = 1024;
      v147 = 3268;
      v148 = 2048;
      *v149 = v17 - v15;
      *&v149[8] = 2048;
      *&v149[10] = v17;
      *&v149[18] = 2048;
      *&v149[20] = v15;
      v150 = 1024;
      v151 = v136;
      _os_log_debug_impl(&dword_1DB56E000, v132, OS_LOG_TYPE_DEBUG, "VCAudioPlayer [%s] %s:%d Adjust[%f] AvgQSize[%f] DesiredQsize[%f] QueuedSamples[%d]", buf, 0x40u);
    }
  }

  return v9;
}