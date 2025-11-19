void _VideoTransmitter_ProcessEncoderArgs(uint64_t a1, _DWORD *__new)
{
  *(a1 + 23988) = *(__new + 231) + 1;
  v3 = __new[113] + 1;
  __new[113] = v3;
  if (*(a1 + 23632) == v3)
  {
    v6 = *(__new + 15);
    if (v6)
    {
      free(v6);
    }

    v7 = *(a1 + 18112);

    VCMemoryPool_Free(v7, __new);
  }
}

uint64_t VideoTransmitter_Pause(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 17312));
  *(v4 + 256) = a2;
  if (*(v4 + 4820))
  {
    RTPSetAFRCVideoPaused(*(v4 + 560), *(v4 + 17304) | a2);
    VCRateControlPauseVideo(*(v4 + 2056), (*(v4 + 17304) | a2) != 0);
  }

  pthread_mutex_unlock((v4 + 17312));
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_GetLastVideoSampleTime(uint64_t a1, _DWORD *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  *a2 = *(v3 + 17760);
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_GetFramerate(float a1, uint64_t a2, double *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149449730;
  }

  v6 = v5;
  if (*(v5 + 1928))
  {
    v7 = 0;
    v8 = v5 + 560;
    while (1)
    {
      v14 = 0.0;
      FramerateForStream = _VideoTransmitter_GetFramerateForStream(v6, v8, &v14, a1);
      v10 = FramerateForStream;
      if ((FramerateForStream & 0x80000000) != 0)
      {
        break;
      }

      *a3 = v14 + *a3;
      ++v7;
      v8 += 152;
      if (v7 >= *(v6 + 1928))
      {
        goto LABEL_13;
      }
    }

    if (FramerateForStream != -2146238447 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v16 = v11;
        v17 = 2080;
        v18 = "VideoTransmitter_GetFramerate";
        v19 = 1024;
        v20 = 6193;
        v21 = 1024;
        v22 = v7;
        v23 = 1024;
        v24 = v10;
        _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to get framerate for stream[%u] with error %d", buf, 0x28u);
      }
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_13:
  CheckOutHandleDebug();
  return v10;
}

uint64_t VideoTransmitter_GetBitrate(float a1, uint64_t a2, double *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149449730;
  }

  v6 = v5;
  v15[0] = NAN;
  *a3 = 0.0;
  if (*(v5 + 1928))
  {
    v7 = 0;
    v8 = a1;
    v9 = (v5 + 568);
    do
    {
      v14 = 0.0;
      v10 = *v9;
      v11 = micro();
      v12 = SummerSumPred(v11 - v8, 0.0, v10, SummerGreaterThan, SummerIdentity, v15, &v14);
      if ((v12 & 0x80000000) == 0 && v15[0] >= 0.5)
      {
        *a3 = *a3 + v14 * 8.0 / v15[0];
      }

      ++v7;
      v9 += 19;
    }

    while (v7 < *(v6 + 1928));
  }

  else
  {
    v12 = 0;
  }

  CheckOutHandleDebug();
  return v12;
}

void _VideoTransmitter_GetBitrates(uint64_t a1, double *a2, double *a3, double *a4, double *a5, double *a6, float a7)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v14 = micro();
  *a2 = 0.0;
  *a3 = 0.0;
  *a4 = 0.0;
  *a5 = 0.0;
  *a6 = 0.0;
  if (*(a1 + 1928))
  {
    v15 = 0;
    v16 = v14 - a7;
    v23[0] = NAN;
    for (i = (a1 + 600); ; i += 19)
    {
      _VideoTransmitter_ComputeSummerBitrate(*(i - 3), v23, v16);
      if (v18 < 0 && v18 != -2146238447)
      {
        _VideoTransmitter_GetBitrates_cold_5();
        return;
      }

      *a2 = v23[0] + *a2;
      _VideoTransmitter_ComputeSummerBitrate(*(i - 2), v23, v16);
      if (v19 < 0 && v19 != -2146238447)
      {
        _VideoTransmitter_GetBitrates_cold_4();
        return;
      }

      *a3 = v23[0] + *a3;
      _VideoTransmitter_ComputeSummerBitrate(*(i - 1), v23, v16);
      if (v20 < 0 && v20 != -2146238447)
      {
        _VideoTransmitter_GetBitrates_cold_3();
        return;
      }

      *a4 = v23[0] + *a4;
      _VideoTransmitter_ComputeSummerBitrate(*i, v23, v16);
      if (v21 < 0 && v21 != -2146238447)
      {
        _VideoTransmitter_GetBitrates_cold_2();
        return;
      }

      *a5 = v23[0] + *a5;
      _VideoTransmitter_ComputeSummerBitrate(*(i - 4), v23, v16);
      if (v22 < 0 && v22 != -2146238447)
      {
        break;
      }

      *a6 = v23[0] + *a6;
      if (++v15 >= *(a1 + 1928))
      {
        return;
      }
    }

    _VideoTransmitter_GetBitrates_cold_1();
  }
}

double _VideoTransmitter_ComputeSummerBitrate(uint64_t a1, double *a2, double a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  v6[0] = NAN;
  *a2 = 0.0;
  if ((SummerSumPred(a3, 0.0, a1, SummerGreaterThan, SummerIdentity, v6, &v5) & 0x80000000) == 0)
  {
    result = v6[0];
    if (v6[0] >= 0.5)
    {
      result = v5 * 8.0 / v6[0];
      *a2 = result;
    }
  }

  return result;
}

uint64_t VideoTransmitter_SetBitrate(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  *(v3 + 36) = a2;
  *(v3 + 40) = a2;
  if (*(v3 + 4820))
  {
    RTPSetAFRCTxCap(*(v3 + 560), a2);
  }

  else
  {
    *(v3 + 4780) = a2;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetTemporalBitrates(uint64_t a1, const void *a2)
{
  v3 = CheckInHandleDebug();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 4792);
    if (v5)
    {
      if (CFEqual(v5, a2))
      {
LABEL_8:
        CheckOutHandleDebug();
        return 0;
      }

      v6 = v4[599];
      if (v6)
      {
        CFRelease(v6);
        v4[599] = 0;
      }
    }

    v7 = CFRetain(a2);
    v4[599] = v7;
    v8 = v4[245];
    if (v8 != 0xFFFFFFFFLL)
    {
      (*(v4[243] + 24))(v8, v7);
    }

    goto LABEL_8;
  }

  return 2149449730;
}

uint64_t VideoTransmitter_SetHighestActiveQualityIndex(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  *(v3 + 23644) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_GenerateKeyFrameNow(uint64_t a1, int a2, unsigned __int16 *a3, uint64_t a4, int a5, int a6, int a7)
{
  v29 = *MEMORY[0x1E69E9840];
  KeyFrameNow = 2149449758;
  v14 = CheckInHandleDebug();
  if (!v14)
  {
    return 2149449730;
  }

  v15 = v14;
  v16 = micro();
  v17 = v16;
  if (a7 == 4)
  {
    goto LABEL_3;
  }

  if (v16 - *(v15 + 4744) < *(v15 + 4752))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315650;
        v24 = v18;
        v25 = 2080;
        v26 = "VideoTransmitter_GenerateKeyFrameNow";
        v27 = 1024;
        v28 = 6376;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Request key frame too soon, discard", &v23, 0x1Cu);
      }
    }

    goto LABEL_14;
  }

  if (a7 != 3 || *(v15 + 16916) != 1)
  {
LABEL_3:
    KeyFrameNow = _VideoTransmitter_GenerateKeyFrameNow(v15, a2, a3, a4, a5, a6);
    if ((KeyFrameNow & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VideoTransmitter_GenerateKeyFrameNow_cold_1();
        }
      }
    }

    else
    {
      *(v15 + 4744) = v17;
    }

LABEL_14:
    CheckOutHandleDebug();
    return KeyFrameNow;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = v21;
      v25 = 2080;
      v26 = "VideoTransmitter_GenerateKeyFrameNow";
      v27 = 1024;
      v28 = 6382;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Ignoring fail safe FIR in idle state", &v23, 0x1Cu);
    }
  }

  return KeyFrameNow;
}

uint64_t _VideoTransmitter_RetransmitPacketDispatched(uint64_t a1, uint64_t a2, int a3, __int16 a4, uint64_t a5, double a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v6 = *(a1 + 18104);
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = ___VideoTransmitter_RetransmitPacketDispatched_block_invoke;
    v9[3] = &unk_1E85F60A8;
    v9[4] = &v12;
    v9[5] = a2;
    v10 = a3;
    v11 = a4;
    *&v9[6] = a6;
    v9[7] = a5;
    dispatch_async(v6, v9);
  }

  else
  {
    _VideoTransmitter_RetransmitPacketDispatched_cold_1(&v15);
  }

  v7 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t VideoTransmitter_RetransmitPackets(double a1, uint64_t a2, int a3, __int16 a4, __int16 a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = 2147549186;
  v10 = CheckInHandleDebug();
  if (v10)
  {
    v16 = v10;
    v17 = *(v10 + 23832);
    if (v17)
    {
      if (*(v16 + 23746) != 1)
      {
        v9 = 0;
LABEL_28:
        CheckOutHandleDebug();
        return v9;
      }

      v39 = a3;
      v40 = a4;
      v41 = a5;
      v42 = a1;
      memset(v57, 0, 44);
      RetransmissionRequestInfoFromNACK = VCNACKConsumer_GetRetransmissionRequestInfoFromNACK(v17, &v39, v57, v11, v12, v13, v14, v15);
      if ((RetransmissionRequestInfoFromNACK & 0x80000000) == 0)
      {
        v19 = *(v16 + 1928);
        if (!v19)
        {
          goto LABEL_9;
        }

        v20 = v16 + 560;
        while (*(v20 + 56) != a3)
        {
          v20 += 152;
          if (!--v19)
          {
            goto LABEL_9;
          }
        }

        v24 = *v20;
        if (*v20 == 0xFFFFFFFFLL)
        {
LABEL_9:
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v21 = VRTraceErrorLogLevelToCSTR();
            v22 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v23 = *(v16 + 23832);
              *buf = 136316418;
              v44 = v21;
              v45 = 2080;
              v46 = "VideoTransmitter_RetransmitPackets";
              v47 = 1024;
              v48 = 6427;
              v49 = 2048;
              v50 = v16;
              v51 = 2048;
              v52 = v23;
              v53 = 1024;
              v54 = a3;
              _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d VideoTransmitter[%p] NACKConsumer[%p] Unable to get RTP handle ssrc=%d", buf, 0x36u);
            }
          }
        }

        else
        {
          v25 = CheckInHandleDebug();
          if (WORD2(v57[0]))
          {
            v26 = v25;
            v27 = 0;
            v28 = 0;
            v29 = v57 | 0xA;
            do
            {
              v38 = 0;
              v30 = v27;
              v31 = *(v29 + 2 * v27);
              if (*(v26 + 10624))
              {
                v32 = RTPTransportResendRTP(a1, v24, a3, v31, &v38);
              }

              else
              {
                v32 = _VideoTransmitter_RetransmitPacketDispatched(v16, v24, a3, v31, &v38, a1);
              }

              v9 = v32;
              if ((v32 & 0x80000000) != 0)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v33 = VRTraceErrorLogLevelToCSTR();
                  v34 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    v35 = *(v16 + 23832);
                    v36 = *(v29 + 2 * v30);
                    *buf = 136316674;
                    v44 = v33;
                    v45 = 2080;
                    v46 = "VideoTransmitter_RetransmitPackets";
                    v47 = 1024;
                    v48 = 6440;
                    v49 = 2048;
                    v50 = v16;
                    v51 = 2048;
                    v52 = v35;
                    v53 = 1024;
                    v54 = a3;
                    v55 = 1024;
                    v56 = v36;
                    _os_log_error_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_ERROR, " [%s] %s:%d VideoTransmitter[%p] NACKConsumer[%p] Unable to resend packet ssrc=%d seqNum=%d", buf, 0x3Cu);
                  }
                }
              }

              else
              {
                *(v16 + 2076) += v38;
                v9 = v28;
              }

              v27 = v30 + 1;
              v28 = v9;
            }

            while (WORD2(v57[0]) > (v30 + 1));
          }

          else
          {
            v9 = 0;
          }

          CheckOutHandleDebug();
        }

        goto LABEL_28;
      }

      VideoTransmitter_RetransmitPackets_cold_1(v16, v16 + 23832, RetransmissionRequestInfoFromNACK, buf);
    }

    else
    {
      VideoTransmitter_RetransmitPackets_cold_2(v16);
    }

    v9 = *buf;
    goto LABEL_28;
  }

  return 2149449730;
}

uint64_t VideoTransmitter_AddRexmitBytes(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 2080));
  *(v4 + 2072) += a2;
  pthread_mutex_unlock((v4 + 2080));
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_ACKLTRFrame(uint64_t a1, int a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  v4 = v3;
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
        v34 = 136316162;
        v35 = v8;
        v36 = 2080;
        v37 = "VideoTransmitter_ACKLTRFrame";
        v38 = 1024;
        v39 = 6480;
        v40 = 2048;
        v41 = v4;
        v42 = 1024;
        v43 = a2;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Received LTR ACK timestamp=%d", &v34, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v34 = 136316162;
      v35 = v8;
      v36 = 2080;
      v37 = "VideoTransmitter_ACKLTRFrame";
      v38 = 1024;
      v39 = 6480;
      v40 = 2048;
      v41 = v4;
      v42 = 1024;
      v43 = a2;
      _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] Received LTR ACK timestamp=%d", &v34, 0x2Cu);
    }
  }

  pthread_mutex_lock((v4 + 3392));
  v12 = *(v4 + 2180);
  if (v12 < 1)
  {
LABEL_15:
    v17 = -1;
  }

  else
  {
    v13 = 0;
    v14 = *(v4 + 2184);
    v15 = v4 + 2588;
    while (1)
    {
      v16 = v14 - 100;
      if (v14 <= 99)
      {
        v16 = v14;
      }

      if (*(v15 + 4 * v16) == a2)
      {
        break;
      }

      --v13;
      ++v14;
      if (!(v12 + v13))
      {
        goto LABEL_15;
      }
    }

    v17 = *(v4 + 2188 + 4 * v16);
    if (v16 + 1 < v12 + v16 + v13)
    {
      v18 = v16 + v13;
      do
      {
        v19 = v16 - 100;
        v20 = v16 - 99;
        if (v16 <= 99)
        {
          v19 = v16;
        }

        v21 = v16 + 100;
        if (v16 <= 98)
        {
          v20 = v16 + 1;
        }

        v22 = v16 < 0;
        v23 = v16 + 2;
        ++v16;
        if (v22)
        {
          v19 = v21;
        }

        *(v15 + 4 * v19) = *(v15 + 4 * v20);
        *(v4 + 2188 + 4 * v19) = *(v4 + 2188 + 4 * v20);
        v12 = *(v4 + 2180);
      }

      while (v23 < v18 + v12);
    }

    *(v4 + 2180) = v12 - 1;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *v7;
    v26 = *v7;
    if (*v6 == 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 136316418;
        v35 = v24;
        v36 = 2080;
        v37 = "VideoTransmitter_ACKLTRFrame";
        v38 = 1024;
        v39 = 6514;
        v40 = 2048;
        v41 = v4;
        v42 = 1024;
        v43 = a2;
        v44 = 1024;
        v45 = v17;
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Mapped incoming LTR ACK timestamp=%d to token=%d", &v34, 0x32u);
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v34 = 136316418;
      v35 = v24;
      v36 = 2080;
      v37 = "VideoTransmitter_ACKLTRFrame";
      v38 = 1024;
      v39 = 6514;
      v40 = 2048;
      v41 = v4;
      v42 = 1024;
      v43 = a2;
      v44 = 1024;
      v45 = v17;
      _os_log_debug_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%p] Mapped incoming LTR ACK timestamp=%d to token=%d", &v34, 0x32u);
    }
  }

  if (v17 != -1)
  {
    v27 = *(v4 + 2988);
    v28 = (v4 + 2992);
    if (v27 > 99)
    {
      memmove(v28, (v4 + 2996), 0x18CuLL);
      *(v4 + 3388) = v17;
    }

    else
    {
      *(v28 + v27) = v17;
      ++*(v4 + 2988);
    }
  }

  if (*(v4 + 23812) == 2)
  {
    ++*(v4 + 23816);
  }

  else
  {
    ++*(v4 + 23820);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *v7;
    v31 = *v7;
    if (*v6 == 1)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(v4 + 23816);
        v33 = *(v4 + 23820);
        v34 = 136316418;
        v35 = v29;
        v36 = 2080;
        v37 = "VideoTransmitter_ACKLTRFrame";
        v38 = 1024;
        v39 = 6537;
        v40 = 2048;
        v41 = v4;
        v42 = 1024;
        v43 = v32;
        v44 = 1024;
        v45 = v33;
        _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] numPSFBltrACKsReceived=%u, numAPPltrACKsReceived=%u", &v34, 0x32u);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      VideoTransmitter_ACKLTRFrame_cold_1();
    }
  }

  pthread_mutex_unlock((v4 + 3392));
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SendLTRACK(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  v4 = v3;
  pthread_mutex_lock(v3 + 73);
  sig = v4[54].__sig;
  if (sig > 99)
  {
    *&v4[60].__opaque[4 * SHIDWORD(v4[54].__sig) + 16] = a2;
    sig_high = HIDWORD(v4[54].__sig);
    if (sig_high < 99)
    {
      HIDWORD(v4[54].__sig) = sig_high + 1;
    }

    else
    {
      HIDWORD(v4[54].__sig) = 0;
    }
  }

  else
  {
    v6 = HIDWORD(v4[54].__sig) + sig;
    if (v6 > 99)
    {
      v6 -= 100;
    }

    *&v4[60].__opaque[4 * v6 + 16] = a2;
    ++LODWORD(v4[54].__sig);
  }

  pthread_mutex_unlock(v4 + 73);
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetAspectRatios(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2149449730;
  }

  v5 = v4;
  v6 = (v4 + 0x4000);
  v7.f64[0] = a1;
  v8.f64[0] = a2;
  v8.f64[1] = a1;
  v9.f64[0] = a3;
  v10.f64[0] = a4;
  v10.f64[1] = a3;
  v7.f64[1] = a2;
  v9.f64[1] = a4;
  *(v4 + 17144) = vrev64q_s32(vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v8, v7)), vdivq_f64(v10, v9)));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v6[190];
      v14 = v6[191];
      v15 = v6[192];
      v16 = v6[193];
      *buf = 136316930;
      v23 = v11;
      v24 = 2080;
      v25 = "VideoTransmitter_SetAspectRatios";
      v26 = 1024;
      v27 = 6596;
      v28 = 2048;
      v29 = v5;
      v30 = 2048;
      v31 = v13;
      v32 = 2048;
      v33 = v14;
      v34 = 2048;
      v35 = v15;
      v36 = 2048;
      v37 = v16;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [AR_TX][%p] portraitAR=%.3f, portraitAR_rcp=%.3f, landscapeAR=%.3f, landscapeAR_rcp=%.3f", buf, 0x4Eu);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetCellTech(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = CheckInHandleDebug();
  if (!v9)
  {
    return 2149449730;
  }

  v9[24] = a2;
  v9[25] = a4;
  if (a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  v9[4344] = v10;
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a5;
  }

  v9[4345] = v11;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136316674;
      v16 = v12;
      v17 = 2080;
      v18 = "VideoTransmitter_SetCellTech";
      v19 = 1024;
      v20 = 6616;
      v21 = 1024;
      v22 = a3;
      v23 = 1024;
      v24 = a5;
      v25 = 1024;
      v26 = a2;
      v27 = 1024;
      v28 = a4;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter_SetCellTech [Local:%d Remote:%d], use celular(%d/%d)", &v15, 0x34u);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

BOOL _VideoTransmitter_ReinitEncoderOnThermalChange(uint64_t a1)
{
  result = VCDefaults_GetBoolValueForKey(@"reinitEncoderOnFrameSizeChangeAfterThermalLight", 0);
  if (result && *(a1 + 496) == 1)
  {
    if (*(a1 + 16924) <= 9u)
    {
      v3 = *(a1 + 23770);
    }

    else
    {
      v3 = 1;
    }

    *(a1 + 23769) = v3;
  }

  return result;
}

uint64_t VideoTransmitter_SetThermalLevel(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  v4 = v3;
  v5 = v3 + 0x4000;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v5 + 536);
      v10 = 136316162;
      v11 = v6;
      v12 = 2080;
      v13 = "VideoTransmitter_SetThermalLevel";
      v14 = 1024;
      v15 = 6650;
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = a2;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting old thermal level %d -> new thermal level %d", &v10, 0x28u);
    }
  }

  *(v5 + 540) = a2;
  if (VCHardwareSettingsEmbedded_shouldEnableLowPowerMode())
  {
    _VideoTransmitter_ReinitEncoderOnThermalChange(v4);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_UpdateMTU(uint64_t a1, int a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149449730;
  }

  v6 = v5;
  v7 = v5 + 0x4000;
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v7 + 1292);
      v11 = *(v7 + 1294);
      v13 = 136316674;
      v14 = v8;
      v15 = 2080;
      v16 = "VideoTransmitter_UpdateMTU";
      v17 = 1024;
      v18 = 6667;
      v19 = 1024;
      v20 = v10;
      v21 = 1024;
      v22 = a2;
      v23 = 1024;
      v24 = v11;
      v25 = 1024;
      v26 = a3;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter_UpdateMTU %d -> %d  ipv6: %d -> %d ", &v13, 0x34u);
    }
  }

  pthread_mutex_lock((v6 + 17688));
  *(v7 + 1292) = a2;
  *(v7 + 1294) = a3;
  pthread_mutex_unlock((v6 + 17688));
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetIsRtxEnabled(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  v4 = v3;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v4 + 23746);
      v12 = 136316418;
      v13 = v5;
      v14 = 2080;
      v15 = "VideoTransmitter_SetIsRtxEnabled";
      v16 = 1024;
      v17 = 6683;
      v18 = 1024;
      v19 = 6683;
      v20 = 1024;
      v21 = v7;
      v22 = 1024;
      v23 = a2;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoTransmitter.c:%d: isUplinkRetransmissionEnabled oldValue=%d newValue=%d", &v12, 0x2Eu);
    }
  }

  *(v4 + 23746) = a2;
  if ((a2 & 1) == 0 && *(v4 + 1928))
  {
    v8 = 0;
    v9 = (v4 + 560);
    do
    {
      v10 = *v9;
      v9 += 19;
      RTPTransport_SetNACKConsumer(v10, 0);
      ++v8;
    }

    while (v8 < *(v4 + 1928));
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetWindowState(uint64_t a1, int a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149449730;
  }

  if (a2)
  {
    *(v5 + 17776) = a3;
  }

  else
  {
    *(v5 + 17780) = a3;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316162;
      v10 = v7;
      v11 = 2080;
      v12 = "VideoTransmitter_SetWindowState";
      v13 = 1024;
      v14 = 6705;
      v15 = 1024;
      v16 = a2;
      v17 = 1024;
      v18 = a3;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter_SetWindowState: Local %d, state: %d", &v9, 0x28u);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetVisualRectangle(double a1, double a2, double a3, double a4, uint64_t a5, int a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = CheckInHandleDebug();
  if (!v11)
  {
    return 2149449730;
  }

  v12 = 17816;
  if (a6)
  {
    v12 = 17784;
  }

  v13 = 17824;
  if (a6)
  {
    v13 = 17792;
  }

  v14 = 17832;
  if (a6)
  {
    v14 = 17800;
  }

  *(v11 + v12) = a1;
  *(v11 + v13) = a2;
  v15 = 17808;
  if (!a6)
  {
    v15 = 17840;
  }

  *(v11 + v14) = a3;
  *(v11 + v15) = a4;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136316930;
      v20 = v16;
      v21 = 2080;
      v22 = "VideoTransmitter_SetVisualRectangle";
      v23 = 1024;
      v24 = 6724;
      v25 = 1024;
      v26 = a6;
      v27 = 2048;
      v28 = a1;
      v29 = 2048;
      v30 = a2;
      v31 = 2048;
      v32 = a3;
      v33 = 2048;
      v34 = a4;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter_SetVisualRectangle: Local %d, Rect: (%g, %g), %gx%g", &v19, 0x4Au);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_IsSafeViewMode(uint64_t a1, BOOL *a2)
{
  v2 = 2149449729;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *a2 = *(v4 + 17772) == 39;
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2149449730;
    }
  }

  return v2;
}

uint64_t VideoTransmitter_SetVideoLossFraction(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  *(v3 + 4808) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetMediaSuggestion(uint64_t a1, uint64_t a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  if (a2)
  {
    *(v3 + 4788) |= 1u;
  }

  if ((a2 & 0x100) != 0)
  {
    v4 = *(v3 + 4788);
    if (v4)
    {
      *(v3 + 4788) = v4 & 0xFFFFFFFE;
    }
  }

  if ((a2 & 0x10000) != 0)
  {
    *(v3 + 4788) |= 0x10u;
  }

  if ((a2 & 0x1000000) != 0)
  {
    *(v3 + 4788) |= 2u;
  }

  if ((a2 & 0x100000000) != 0)
  {
    *(v3 + 4788) |= 8u;
  }

  *(v3 + 23841) = a2;
  *(v3 + 23843) = BYTE2(a2);
  *(v3 + 23844) = BYTE3(a2);
  *(v3 + 23845) = BYTE4(a2);
  *(v3 + 23846) = HIDWORD(a2) >> 8;
  *(v3 + 23848) = HIBYTE(a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetTargetBitrate(uint64_t a1, int a2, int a3, char a4)
{
  v7 = CheckInHandleDebug();
  if (!v7)
  {
    return 2149449730;
  }

  *(v7 + 4780) = a2;
  *(v7 + 4784) = a3;
  *(v7 + 17224) = a4;
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetServerBasedBandwidthProbing(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  if (*(v3 + 496) == 2)
  {
    *(v3 + 17225) = a2;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetEndToEndBasedBandwidthProbing(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  v4 = v3;
  if (*(v3 + 496) == 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136316162;
        v9 = v5;
        v10 = 2080;
        v11 = "VideoTransmitter_SetEndToEndBasedBandwidthProbing";
        v12 = 1024;
        v13 = 6822;
        v14 = 2048;
        v15 = v4;
        v16 = 1024;
        v17 = a2;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoTransmitter=%p set endToEndBasedBandwidthProbing=%d", &v8, 0x2Cu);
      }
    }

    *(v4 + 17226) = a2;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_GetLastKeyFrameSentTime(uint64_t a1, void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  *a2 = *(v3 + 4736);
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetKeyFrameOnlyStreamID(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "VideoTransmitter_SetKeyFrameOnlyStreamID";
      v11 = 1024;
      v12 = 6843;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d keyFrameOnlyStreamID:%d", &v7, 0x22u);
    }
  }

  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149449730;
  }

  *(v5 + 491) = 1;
  *(v5 + 492) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetMediaQueueSize(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  atomic_store(a2, (v3 + 16892));
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetFECRatio(double a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = 2149449729;
  if (a1 <= -0.00000011920929 || a1 > 3.0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      v6 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315650;
          v19 = v4;
          v20 = 2080;
          v21 = "VideoTransmitter_SetFECRatio";
          v22 = 1024;
          v23 = 6867;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d invalid parameter!", &v18, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        VideoTransmitter_SetFECRatio_cold_1();
      }
    }
  }

  else
  {
    v7 = CheckInHandleDebug();
    if (v7)
    {
      if ((*(v7 + 23705) & 1) == 0)
      {
        v8 = (v7 + 16888);
        v9 = FECUtil_FECPercentageToLevelofProtection((a1 * 100.0));
        v10 = atomic_load(v8);
        if (v10 != v9)
        {
          v11 = v9;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v18 = 136315906;
              v19 = v12;
              v20 = 2080;
              v21 = "VideoTransmitter_SetFECRatio";
              v22 = 1024;
              v23 = 6880;
              v24 = 1024;
              v25 = v11;
              _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d fecLevel:%d", &v18, 0x22u);
            }
          }

          v14 = *MEMORY[0x1E695E480];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v18 = v11;
          v16 = CFNumberCreate(v14, kCFNumberIntType, &v18);
          CFDictionaryAddValue(Mutable, @"VCVSFecLevel", v16);
          CFRelease(v16);
          reportingEventWithAllowedClientType();
          CFRelease(Mutable);
          atomic_store(v11, v8);
        }
      }

      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2149449730;
    }
  }

  return v2;
}

uint64_t VideoTransmitter_SetNetworkStats(uint64_t a1, __int128 *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  v4 = *a2;
  *(v3 + 23616) = *(a2 + 2);
  *(v3 + 23600) = v4;
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetPacketExpirationTime(uint64_t a1, unsigned int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149449730;
  }

  v4 = v3 + 0x4000;
  if (a2 <= 0x103)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        v8 = 260;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136316162;
          v17 = v5;
          v18 = 2080;
          v19 = "VideoTransmitter_SetPacketExpirationTime";
          v20 = 1024;
          v21 = 6909;
          v22 = 1024;
          v23 = a2;
          v24 = 1024;
          v25 = 260;
          v9 = " [%s] %s:%d Setting expiration time (remote jitter size) with %d ms, below the min %d ms";
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v9, &v16, 0x28u);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        VideoTransmitter_SetPacketExpirationTime_cold_2();
      }
    }

    v8 = 260;
    goto LABEL_21;
  }

  if (a2 < 0x191)
  {
    v8 = a2;
    goto LABEL_21;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
LABEL_20:
    v8 = 400;
    goto LABEL_21;
  }

  v11 = VRTraceErrorLogLevelToCSTR();
  v6 = *MEMORY[0x1E6986650];
  v12 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      VideoTransmitter_SetPacketExpirationTime_cold_1();
    }

    goto LABEL_20;
  }

  v8 = 400;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136316162;
    v17 = v11;
    v18 = 2080;
    v19 = "VideoTransmitter_SetPacketExpirationTime";
    v20 = 1024;
    v21 = 6914;
    v22 = 1024;
    v23 = a2;
    v24 = 1024;
    v25 = 400;
    v9 = " [%s] %s:%d Setting expiration time (remote jitter size) with %d ms, above the max %d ms";
    goto LABEL_13;
  }

LABEL_21:
  if (*(v4 + 664) >= 0)
  {
    v13 = *(v4 + 664);
  }

  else
  {
    v13 = v8;
  }

  if (v13 != *(v4 + 528))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315906;
        v17 = v14;
        v18 = 2080;
        v19 = "VideoTransmitter_SetPacketExpirationTime";
        v20 = 1024;
        v21 = 6927;
        v22 = 1024;
        v23 = v13;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting expiration time %d ms", &v16, 0x22u);
      }
    }

    *(v4 + 528) = v13;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_SetStreamIDs(uint64_t a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v20 = v9;
      v21 = 2080;
      v22 = "VideoTransmitter_SetStreamIDs";
      v23 = 1024;
      v24 = 6936;
      v25 = 1024;
      *v26 = a3;
      *&v26[4] = 1024;
      *&v26[6] = a5;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d numOfStreamIDs:%u, numOfRepairedCompoundStreamIDs:%u", buf, 0x28u);
    }
  }

  v11 = 2149449729;
  if (a2 && a3)
  {
    v12 = CheckInHandleDebug();
    if (v12)
    {
      v13 = v12;
      if ((a5 + a3) < 0xD)
      {
        memcpy((v12 + 440), a2, 2 * a3);
        memcpy(&v13[2 * a3 + 440], a4, 2 * a5);
        v13[464] = a5 + a3;
        if (a4)
        {
          memcpy(v13 + 466, a4, 2 * a5);
        }

        v13[490] = a5;
        CheckOutHandleDebug();
        return 0;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
          v16 = *MEMORY[0x1E6986650];
          if (IsOSFaultDisabled)
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v20 = v14;
              v21 = 2080;
              v22 = "VideoTransmitter_SetStreamIDs";
              v23 = 1024;
              v24 = 6950;
              v25 = 2048;
              *v26 = v13;
              *&v26[8] = 1024;
              v27 = a3;
              v28 = 1024;
              v29 = a5;
              _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d VideoTransmitter[%p] numOfStreamIDs=%u and numOfRepairedStreamIDs=%u total to more than max allowed streamIDs!", buf, 0x32u);
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            *buf = 136316418;
            v20 = v14;
            v21 = 2080;
            v22 = "VideoTransmitter_SetStreamIDs";
            v23 = 1024;
            v24 = 6950;
            v25 = 2048;
            *v26 = v13;
            *&v26[8] = 1024;
            v27 = a3;
            v28 = 1024;
            v29 = a5;
            _os_log_fault_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_FAULT, " [%s] %s:%d VideoTransmitter[%p] numOfStreamIDs=%u and numOfRepairedStreamIDs=%u total to more than max allowed streamIDs!", buf, 0x32u);
          }
        }

        v17 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Too many streamIDs! numOfStreamIDs=%u and numOfRepairedStreamIDs=%u", a3, a5);
        VCTerminateProcess(v17, @"VideoTransmitter", 0);
        if (v17)
        {
          CFRelease(v17);
        }

        CheckOutHandleDebug();
      }
    }

    else
    {
      return 2149449730;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VideoTransmitter_SetStreamIDs_cold_1();
    }
  }

  return v11;
}

uint64_t VideoTransmitter_PrepareForResChange(uint64_t a1, int a2, int a3, int a4, int a5, _BYTE *a6, int a7, int a8, int a9)
{
  v57 = *MEMORY[0x1E69E9840];
  v16 = CheckInHandleDebug();
  if (!v16)
  {
    return 2149449730;
  }

  v17 = v16;
  v18 = v16 + 0x4000;
  pthread_mutex_lock((v16 + 17400));
  if (*(v18 + 1089))
  {
    if (*(v18 + 1092) == a2)
    {
      v19 = 17480;
      goto LABEL_8;
    }

LABEL_15:
    v32 = a2;
    if (a4 == 100)
    {
      v23 = 1752589105;
    }

    else
    {
      v23 = 1635148593;
    }

    *(v18 + 1496) = v23;
    *(v17 + 20) = a4;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(v17 + 20);
        *buf = 136315906;
        v34 = v24;
        v35 = 2080;
        v36 = "VideoTransmitter_PrepareForResChange";
        v37 = 1024;
        v38 = 7016;
        v39 = 1024;
        v40 = v26;
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting pendingPayload to %d", buf, 0x22u);
      }
    }

    *(v18 + 1760) = a9;
    *(v17 + 44) = a5;
    *(v18 + 1092) = v32;
    *(v18 + 1096) = a3;
    *(v18 + 1100) = a7;
    *(v18 + 1104) = a8;
    if (a6 && *a6)
    {
      __strlcpy_chk();
    }

    v27 = micro();
    *(v17 + 17648) = v27 + 2.0;
    *(v18 + 1089) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v30 = FourccToCStr(*(v18 + 1492));
        v31 = *(v17 + 17648);
        *buf = 136317954;
        v34 = v28;
        v35 = 2080;
        v36 = "VideoTransmitter_PrepareForResChange";
        v37 = 1024;
        v38 = 7030;
        v39 = 1024;
        v40 = a7;
        v41 = 1024;
        v42 = a8;
        v43 = 1024;
        v44 = v32;
        v45 = 1024;
        v46 = a3;
        v47 = 1024;
        v48 = a5;
        v49 = 2080;
        v50 = v30;
        v51 = 2080;
        v52 = v17 + 17492;
        v53 = 2048;
        v54 = v27;
        v55 = 2048;
        v56 = v31;
        _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter_PrepareForResChange to capture: %dx%d encode: %dx%d %dfps (%s: %s) (now: %f timeout will be %f)", buf, 0x62u);
      }
    }

    goto LABEL_27;
  }

  if (*(v17 + 24) != a2)
  {
    goto LABEL_15;
  }

  v19 = 28;
LABEL_8:
  if (*(v17 + v19) != a3)
  {
    goto LABEL_15;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v34 = v21;
      v35 = 2080;
      v36 = "VideoTransmitter_PrepareForResChange";
      v37 = 1024;
      v38 = 6995;
      v39 = 1024;
      v40 = a2;
      v41 = 1024;
      v42 = a3;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoTransmitter_PrepareForResChange: already in %dx%d resolution.", buf, 0x28u);
    }
  }

  if (*(v18 + 1088) == 1)
  {
    *(v18 + 1088) = 0;
  }

LABEL_27:
  pthread_mutex_unlock((v17 + 17400));
  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_PauseEncoder()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149449730;
  }

  v1 = v0;
  v2 = v0 + 23824;
  v3 = (v0 + 18168);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = v4;
      v12 = 2080;
      v13 = "VideoTransmitter_PauseEncoder";
      v14 = 1024;
      v15 = 7044;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", &v10, 0x1Cu);
    }
  }

  atomic_store(0, v2);
  v3[1] = 1;
  *v3 = 0;
  VCRealTimeThread_Stop(*(v1 + 18152));
  dispatch_semaphore_signal(*(v1 + 18160));
  v6 = *(v2 + 80);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = (v1 + 1960);
    do
    {
      if (*v8 != 0xFFFFFFFFLL)
      {
        (*(*(v8 - 2) + 8))();
        *v8 = 0xFFFFFFFFLL;
        v6 = *(v2 + 80);
      }

      ++v7;
      v8 += 3;
    }

    while (v7 < v6);
  }

  if (*(v2 + 77))
  {
    v3[25] = 1;
    v3[24] = 0;
    VCRealTimeThread_Stop(*(v1 + 18176));
    dispatch_semaphore_signal(*(v1 + 18184));
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t VideoTransmitter_ResumeEncoder()
{
  v34 = *MEMORY[0x1E69E9840];
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149449730;
  }

  v1 = v0;
  v2 = v0 + 23824;
  v3 = v0 + 17384;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v5 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = v6;
      v22 = 2080;
      v23 = "VideoTransmitter_ResumeEncoder";
      v24 = 1024;
      v25 = 7069;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  atomic_store(1u, v2);
  *(v3 + 785) = 0;
  if (*(v2 + 77) == 1)
  {
    *(v3 + 809) = 0;
  }

  if (*(v2 + 80) < 1)
  {
    Encoder = 0;
  }

  else
  {
    v8 = 0;
    Encoder = 0;
    v10 = 0;
    v11 = v1 + 1944;
    do
    {
      if (*(v11 + 16) != 0xFFFFFFFFLL)
      {
        goto LABEL_18;
      }

      if (*v3)
      {
        v12 = 0;
      }

      else if (*(v1 + 96))
      {
        v12 = 1;
      }

      else
      {
        v12 = *(v1 + 100) != 0;
      }

      v13 = 17020;
      if (*(v3 + 384))
      {
        v13 = 17764;
      }

      Encoder = _VideoTransmitter_CreateEncoder(v1, *(v1 + 24), *(v1 + 28), v1 + 104, *(v1 + v13) != 0, v12, v11);
      if ((Encoder & 0x80000000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v19 = VRTraceErrorLogLevelToCSTR();
          v14 = v5;
          v15 = *v5;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = *(v1 + 24);
            v17 = *(v1 + 28);
            *buf = 136316674;
            v21 = v19;
            v22 = 2080;
            v23 = "VideoTransmitter_ResumeEncoder";
            v24 = 1024;
            v25 = 7084;
            v26 = 1024;
            v27 = v16;
            v28 = 1024;
            v29 = v17;
            v30 = 1024;
            v31 = Encoder;
            v32 = 1024;
            v33 = v8;
            _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d VideoTransmitter_CreateHandle: EncCreateHandle FAILED %dx%d result: %d streamIndex=%d", buf, 0x34u);
          }

          v5 = v14;
        }
      }

      else
      {
LABEL_18:
        v10 = 1;
      }

      ++v8;
      v11 += 24;
    }

    while (v8 < *(v2 + 80));
    if (v10)
    {
      VCRealTimeThread_Start(*(v1 + 18152));
      if (*(v2 + 77) == 1)
      {
        VCRealTimeThread_Start(*(v1 + 18176));
      }
    }
  }

  CheckOutHandleDebug();
  return Encoder;
}

uint64_t VideoTransmitter_SetFECLevelPerBlockSizeVector(uint64_t a1, unint64_t a2, char *a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149449730;
  }

  v6 = v5;
  if (*(v5 + 23705))
  {
    v7 = 0;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = VCFECGeneratorCommon_SetFECLevelPerBlockSizeVector(DerivedStorage, a2, a3);
    if (a2)
    {
      v9 = *(v6 + 16886);
      v10 = a3 + 1;
      do
      {
        v11 = *v10;
        v10 += 2;
        v9 |= 1 << v11;
        --a2;
      }

      while (a2);
      *(v6 + 16886) = v9;
    }
  }

  CheckOutHandleDebug();
  return v7;
}

uint64_t VideoTransmitter_SetEncodingMode(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2149449730;
  }

  VideoTransmitter_SetEncodingMode_cold_1(v4, a2, a1, &v6);
  return v6;
}

void _VideoTransmitter_SetupRealtimeThread(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const char *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  *(a2 + 17) = 0;
  *(a2 + 16) = 0;
  v10 = dispatch_semaphore_create(0);
  *(a2 + 8) = v10;
  if (!v10)
  {
    _VideoTransmitter_SetupRealtimeThread_cold_1();
  }

  v11 = VCRealTimeThread_Initialize(a3, a4, a1, a5, 2);
  *a2 = v11;
  if (v11)
  {
    v12 = VCRealTimeThread_Start(v11);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = "FAILED";
        v16 = 136316162;
        v17 = v13;
        v18 = 2080;
        v19 = "_VideoTransmitter_SetupRealtimeThread";
        if (v12)
        {
          v15 = "SUCCEEDED";
        }

        v20 = 1024;
        v21 = 1116;
        v22 = 2080;
        v23 = a5;
        v24 = 2080;
        v25 = v15;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCRealTimeThread_Start for thread=%s %s", &v16, 0x30u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VideoTransmitter_SetupRealtimeThread_cold_2();
      }
    }

    VCRealTimeThread_Finalize(*a2);
  }
}

void OUTLINED_FUNCTION_24_4()
{
  *(v2 + 4) = v0;
  *(v3 - 212) = 2080;
  *(v2 + 14) = v1;
  *(v3 - 202) = 1024;
}

void OUTLINED_FUNCTION_46_0(int a1@<W8>)
{
  *(v3 - 200) = 3979;
  *(v3 - 196) = v1;
  *(v2 + 30) = a1;
}

CVPixelBufferRef VCImageRotationConverter_CreateRotatedPixelBuffer(uint64_t a1, __CVBuffer *a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v8 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
        v12 = 136316930;
        v13 = v6;
        v14 = 2080;
        v15 = "VCImageRotationConverter_CreateRotatedPixelBuffer";
        v16 = 1024;
        v17 = 32;
        v18 = 2048;
        v19 = a1;
        v20 = 2048;
        v21 = a2;
        v22 = 2080;
        v23 = FourccToCStr(PixelFormatType);
        v24 = 2048;
        Width = CVPixelBufferGetWidth(a2);
        v26 = 2048;
        Height = CVPixelBufferGetHeight(a2);
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d pointer=%p, pixelBuffer=%p, formatType=%s, width=%lu, height=%lu", &v12, 0x4Eu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = CVPixelBufferGetPixelFormatType(a2);
      v12 = 136316930;
      v13 = v6;
      v14 = 2080;
      v15 = "VCImageRotationConverter_CreateRotatedPixelBuffer";
      v16 = 1024;
      v17 = 32;
      v18 = 2048;
      v19 = a1;
      v20 = 2048;
      v21 = a2;
      v22 = 2080;
      v23 = FourccToCStr(v11);
      v24 = 2048;
      Width = CVPixelBufferGetWidth(a2);
      v26 = 2048;
      Height = CVPixelBufferGetHeight(a2);
      _os_log_debug_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEBUG, " [%s] %s:%d pointer=%p, pixelBuffer=%p, formatType=%s, width=%lu, height=%lu", &v12, 0x4Eu);
    }
  }

  return VCImageRotationConverterBase_CreateRotatedPixelBuffer(a1, a2, a3);
}

CMSampleBufferRef VCImageRotationConverter_CreateRotatedSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2, __int128 *a3, char a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __VCImageRotationConverter_CreateRotatedSampleBuffer_block_invoke;
  v7[3] = &unk_1E85F6130;
  v7[4] = a1;
  v8 = a4;
  v5 = *a3;
  v6 = *(a3 + 2);
  return VCImageConverterBase_CreateConvertedSampleBuffer(a1, a2, &v5, v7);
}

uint64_t VCSystemAudioCaptureController_PushAudioSamples(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(v5[0]) = *VCAudioBufferList_GetSampleFormat(a2);
  v5[1] = VCAudioBufferList_GetTimestamp(a2);
  VCAudioBufferList_SetPriority(a2, 255);
  VCAudioBufferList_SetVoiceActivity(a2, 1);
  return (*(a1 + 8))(*a1, v5, a2);
}

BOOL OUTLINED_FUNCTION_12_5()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_FAULT);
}

unint64_t AudioPacketArray_Next(unint64_t result)
{
  v1 = *(result + 804);
  if (v1 >= *(result + 800))
  {
    return 0;
  }

  *(result + 804) = v1 + 1;
  v2 = result + 8 * v1;
  if (v2 < result + 800 && v2 >= result)
  {
    return *v2;
  }

  __break(0x5519u);
  return result;
}

uint64_t AudioPacketArray_First(_DWORD *a1)
{
  if (a1[200])
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

unint64_t AudioPacketArray_Last(unint64_t result)
{
  v1 = *(result + 800);
  if (!v1)
  {
    return 0;
  }

  v2 = result + 8 * (v1 - 1);
  if (v2 < result + 800 && v2 >= result)
  {
    return *v2;
  }

  __break(0x5519u);
  return result;
}

BOOL AudioPacketArray_Append(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 800);
  if (v2 <= 0x63)
  {
    *(a1 + 800) = v2 + 1;
    *(a1 + 8 * v2) = a2;
  }

  return v2 < 0x64;
}

void VCMediaRecorder_AddLocalAudioSampleBuffer(uint64_t a1, uint64_t a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 228) == 1)
    {
      *(a1 + 260) = a3;
      ++*(a1 + 288);
      VCMediaRecorderHistory_AddAudioSampleBuffer(*(a1 + 192), a2, a3, 1);
      v4 = micro();
      if (v4 - *(a1 + 264) >= 5.0)
      {
        *(a1 + 264) = v4;
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v5 = VRTraceErrorLogLevelToCSTR();
          v6 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(a1 + 272);
            v8 = *(a1 + 280);
            v9 = *(a1 + 288);
            v10 = *(a1 + 296);
            v11 = *(a1 + 304);
            v12 = *(a1 + 312);
            v13 = *(a1 + 320);
            v14 = 136317698;
            v15 = v5;
            v16 = 2080;
            v17 = "_VCMediaRecorder_LogHealth";
            v18 = 1024;
            v19 = 151;
            v20 = 2048;
            v21 = a1;
            v22 = 2048;
            v23 = v7;
            v24 = 2048;
            v25 = v8;
            v26 = 2048;
            v27 = v9;
            v28 = 2048;
            v29 = v10;
            v30 = 2048;
            v31 = v11;
            v32 = 2048;
            v33 = v12;
            v34 = 2048;
            v35 = v13;
            _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VCMediaRecorder instance=%p, localVideoCallbacksCount=%lu, localVideoCallbacksClearedCount=%lu, localAudioCallbacksCount=%lu, localAudioCallbacksClearedCount=%lu, remoteAudioCallbacksCount=%lu, remoteAudioCallbacksClearedCount=%lu, bufferResets=%lu", &v14, 0x6Cu);
          }
        }
      }
    }
  }
}

void VCMediaRecorder_AddRemoteAudioSampleBuffer(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (*(a1 + 228) == 1)
    {
      ++*(a1 + 304);
      VCMediaRecorderHistory_AddAudioSampleBuffer(*(a1 + 192), a2, a3, 0);
    }
  }
}

void VCMediaRecorder_AddLocalVideoSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2, char a3, int a4)
{
  if (a1 && a2 && *(a1 + 228) == 1)
  {
    ++*(a1 + 272);
    VCMediaRecorderHistory_AddLocalVideoSampleBuffer(*(a1 + 192), a2, a3, a4);
  }
}

void sub_1DB6F99B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void VCMediaRecorder_UpdateTargetScreenAttributes(uint64_t a1, uint64_t a2)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 208);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCMediaRecorder_UpdateTargetScreenAttributes_block_invoke;
    block[3] = &unk_1E85F37F0;
    block[4] = a2;
    block[5] = a1;
    dispatch_sync(v2, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCMediaRecorder_UpdateTargetScreenAttributes_cold_1();
    }
  }
}

void VCMediaRecorder_PrepareVideoSampleBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  if (a1 && a2 && *(a1 + 228) == 1)
  {
    VCMediaRecorderHistory_PrepareVideoSampleBuffer(*(a1 + 192), a2);
  }
}

void VCMediaRecorder_StopProcessingAllRequests(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 208);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCMediaRecorder_StopProcessingAllRequests_block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = a1;
    dispatch_async(v1, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v6 = v2;
      v7 = 2080;
      v8 = "VCMediaRecorder_StopProcessingAllRequests";
      v9 = 1024;
      v10 = 564;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", buf, 0x1Cu);
    }
  }
}

void VCMediaRecorder_ClearHistoryBuffer(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 208);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __VCMediaRecorder_ClearHistoryBuffer_block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = a1;
    dispatch_async(v1, block);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v6 = v2;
      v7 = 2080;
      v8 = "VCMediaRecorder_ClearHistoryBuffer";
      v9 = 1024;
      v10 = 584;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", buf, 0x1Cu);
    }
  }
}

void VCAudioRedBuilder_UpdatePayloadHistory(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    if (*(a1 + 29))
    {
      v2 = 0;
      v3 = a1 + 32;
      v4 = (a1 + 84);
      v5 = (a1 + 318);
      v47 = vdupq_n_s64(1uLL);
      v45 = a1 + 32;
      do
      {
        v6 = v3 + 344 * v2;
        v7 = *(v6 + 320);
        if ((v7 + 1) < 9)
        {
          v8 = v7 + 1;
        }

        else
        {
          v8 = 9;
        }

        *(v6 + 320) = v8;
        memmove((v6 + 64), (v6 + 32), 32 * (v8 - 1));
        v9 = *(v6 + 16);
        *(v6 + 32) = *v6;
        *(v6 + 48) = v9;
        if (*(v1 + 28) == 1)
        {
          v10 = 9 * *(v1 + 24);
        }

        else
        {
          v10 = 0x3FFF;
        }

        v11 = *(v6 + 320);
        if (v11)
        {
          v12 = 0;
          v13 = v10 - *(v6 + 20);
          v14 = v4;
          while (1)
          {
            v15 = *v14;
            v14 += 8;
            if ((v13 + v15) > 0x7FFFFFFE)
            {
              break;
            }

            if (v11 == ++v12)
            {
              goto LABEL_16;
            }
          }

          v11 = v12;
LABEL_16:
          *(v6 + 320) = v11;
          if (v11)
          {
            v16 = (v11 + 15) & 0x1FFFFFFF0;
            v17 = v11 - 1;
            v18 = v5;
            v19 = vdupq_n_s64(v17);
            v20 = xmmword_1DBD45330;
            v21 = xmmword_1DBD45970;
            v22 = xmmword_1DBD48740;
            v23 = xmmword_1DBD48730;
            v24 = xmmword_1DBD48720;
            v25 = xmmword_1DBD48710;
            v26 = xmmword_1DBD48700;
            v27 = xmmword_1DBD486F0;
            do
            {
              v28 = vmovn_s64(vcgeq_u64(v19, v20));
              v29 = vaddq_s64(v20, v47);
              if (vuzp1_s8(vuzp1_s16(v28, *v19.i8), *v19.i8).u8[0])
              {
                *(v18 - 224) = v29.i8[0];
              }

              if (vuzp1_s8(vuzp1_s16(v28, *&v19), *&v19).i8[1])
              {
                *(v18 - 192) = v29.i8[8];
              }

              v30 = vaddq_s64(v21, v47);
              if (vuzp1_s8(vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, *&v21))), *&v19).i8[2])
              {
                *(v18 - 160) = v30.i8[0];
                *(v18 - 128) = v30.i8[8];
              }

              v31 = vaddq_s64(v22, v47);
              v32 = vmovn_s64(vcgeq_u64(v19, v22));
              if (vuzp1_s8(*&v19, vuzp1_s16(v32, *&v19)).i32[1])
              {
                *(v18 - 96) = v31.i8[0];
              }

              if (vuzp1_s8(*&v19, vuzp1_s16(v32, *&v19)).i8[5])
              {
                *(v18 - 64) = v31.i8[8];
              }

              v33 = vaddq_s64(v23, v47);
              if (vuzp1_s8(*&v19, vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, *&v23)))).i8[6])
              {
                *(v18 - 32) = v33.i8[0];
                *v18 = v33.i8[8];
              }

              v34 = vaddq_s64(v24, v47);
              v35 = vmovn_s64(vcgeq_u64(v19, v24));
              if (vuzp1_s8(vuzp1_s16(v35, *v19.i8), *v19.i8).u8[0])
              {
                v18[32] = v34.i8[0];
              }

              if (vuzp1_s8(vuzp1_s16(v35, *&v19), *&v19).i8[1])
              {
                v18[64] = v34.i8[8];
              }

              v36 = vaddq_s64(v25, v47);
              if (vuzp1_s8(vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, *&v25))), *&v19).i8[2])
              {
                v18[96] = v36.i8[0];
                v18[128] = v36.i8[8];
              }

              v37 = vaddq_s64(v26, v47);
              v38 = vmovn_s64(vcgeq_u64(v19, v26));
              if (vuzp1_s8(*&v19, vuzp1_s16(v38, *&v19)).i32[1])
              {
                v18[160] = v37.i8[0];
              }

              if (vuzp1_s8(*&v19, vuzp1_s16(v38, *&v19)).i8[5])
              {
                v18[192] = v37.i8[8];
              }

              v39 = vaddq_s64(v27, v47);
              if (vuzp1_s8(*&v19, vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, *&v27)))).i8[6])
              {
                v18[224] = v39.i8[0];
                v18[256] = v39.i8[8];
              }

              v40 = vdupq_n_s64(0x10uLL);
              v22 = vaddq_s64(v22, v40);
              v21 = vaddq_s64(v21, v40);
              v20 = vaddq_s64(v20, v40);
              v23 = vaddq_s64(v23, v40);
              v24 = vaddq_s64(v24, v40);
              v25 = vaddq_s64(v25, v40);
              v26 = vaddq_s64(v26, v40);
              v27 = vaddq_s64(v27, v40);
              v18 += 512;
              v16 -= 16;
            }

            while (v16);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v49 = 0;
          asprintf(&v49, "infoIndex=%u count=%d history=%s ", v2, *(v6 + 320), [v1 payloadHistoryDescriptionForInfoIndex:v2]);
          if (v49)
          {
            __lasts = 0;
            v41 = strtok_r(v49, "\n", &__lasts);
            do
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
                    *buf = 136316162;
                    v51 = v42;
                    v52 = 2080;
                    v53 = "VCAudioRedBuilder_UpdatePayloadHistory";
                    v54 = 1024;
                    v55 = 484;
                    v56 = 2080;
                    v57 = "VCAudioRedBuilder_UpdatePayloadHistory";
                    v58 = 2080;
                    v59 = v41;
                    _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, "VCAudioRedBuilder [%s] %s:%d %s %s", buf, 0x30u);
                  }
                }

                else if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136316162;
                  v51 = v42;
                  v52 = 2080;
                  v53 = "VCAudioRedBuilder_UpdatePayloadHistory";
                  v54 = 1024;
                  v55 = 484;
                  v56 = 2080;
                  v57 = "VCAudioRedBuilder_UpdatePayloadHistory";
                  v58 = 2080;
                  v59 = v41;
                  _os_log_debug_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEBUG, "VCAudioRedBuilder [%s] %s:%d %s %s", buf, 0x30u);
                }
              }

              v41 = strtok_r(0, "\n", &__lasts);
            }

            while (v41);
            free(v49);
            v3 = v45;
            v1 = a1;
          }
        }

        ++v2;
        v4 += 86;
        v5 += 344;
      }

      while (v2 < *(v1 + 29));
    }
  }
}

uint64_t VCAudioRedBuilder_GetPrimaryPayloadAndAppendSamples(uint64_t a1, _BYTE *a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3 != 128 && (v6 = *a2, *a2))
  {
    v7 = *(a1 + 29);
    if (v7 > v6)
    {
      v8 = v7 - 1;
      do
      {
        *(a1 + 32 + 344 * v8-- + 320) = 0;
      }

      while (v6 <= v8);
    }

    v9 = 0;
    v10 = a1 + 32;
    *(a1 + 29) = v6;
    v11 = (a2 + 16);
    v12 = a1;
    do
    {
      v13 = (*(v12 + 360) + 1472 * *(v12 + 368));
      memcpy(v13, *(v11 - 1), *v11);
      *(v12 + 368) = (*(v12 + 368) + 1) % 9;
      *(v12 + 40) = v13;
      *(v12 + 32) = a3;
      *(v12 + 48) = *v11;
      *(v12 + 63) = *(v11 + 8);
      ++v9;
      v12 += 344;
      v11 += 3;
    }

    while (v9 < *(a1 + 29));
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        if (a2)
        {
          v17 = *a2;
        }

        else
        {
          v17 = 0;
        }

        v18 = 136316674;
        v19 = v14;
        v20 = 2080;
        v21 = "VCAudioRedBuilder_GetPrimaryPayloadAndAppendSamples";
        v22 = 1024;
        v23 = 557;
        v24 = 2048;
        v25 = a1;
        v26 = 2048;
        v27 = a2;
        v28 = 1024;
        v29 = v17;
        v30 = 1024;
        v31 = a3;
        _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, "VCAudioRedBuilder [%s] %s:%d Invalid input. builder=%p input=%p input->arrayCount=%u externalPayloadType=%u", &v18, 0x3Cu);
      }
    }

    return 0;
  }

  return v10;
}

uint64_t VCAudioRedBuilder_SplitRedAudioPacket(uint64_t a1, _DWORD *a2, uint64_t a3, int a4, int a5, int a6)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a2[6] != 20)
  {
    return 0;
  }

  v6 = a2[379];
  if (!v6)
  {
LABEL_16:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioRedBuilder_SplitRedAudioPacket_cold_4();
      }
    }

    return 0;
  }

  v8 = a2 + 11;
  v9 = a2[4];
  if (a4 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = a4;
  }

  v11 = a3 + 16;
  v12 = -(v10 - 1);
  v13 = 16;
  v14 = a2 + 11;
  v15 = 1;
  while (*v14 < 0)
  {
    v16 = v6 >= 4;
    v17 = v6 - 4;
    if (!v16 || v12 + v13 == 16)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCAudioRedBuilder_SplitRedAudioPacket_cold_2();
        }
      }

      return 0;
    }

    v18 = v8;
    v19 = bswap32(*v14);
    v20 = RTPGetInternalPayload(a1, HIBYTE(v19) & 0x7F);
    LOBYTE(v21) = a6;
    if (a6)
    {
      v21 = (v19 >> 18) & 0x3F;
      v22 = (v19 >> 10) * a5 / 0x64;
    }

    else
    {
      v22 = (v19 >> 10) & 0x3FFF;
    }

    if ((v19 & 0x3FF) > v17)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCAudioRedBuilder_SplitRedAudioPacket_cold_1();
        }
      }

      return 0;
    }

    *(v11 + 12) = 1;
    *(v11 - 16) = v20;
    v6 = v17 - (v19 & 0x3FF);
    *v11 = v19 & 0x3FF;
    *(v11 + 4) = v9 - v22;
    ++v13;
    v15 += 4;
    *(v11 + 14) = v21;
    *(v11 + 8) = v9;
    v11 += 32;
    ++v14;
    v8 = v18;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  v23 = v13 - 16;
  if (VRTraceGetErrorLogLevelForModule() > 7)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    v26 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v51 = v24;
        v52 = 2080;
        v53 = "_VCAudioRedBuilder_SplitRedPacketIntoArray";
        v54 = 1024;
        v55 = 703;
        v56 = 1024;
        v57 = v13 - 16;
        _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCAudioRedBuilder [%s] %s:%d redundant payloads count:%d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      VCAudioRedBuilder_SplitRedAudioPacket_cold_3();
    }
  }

  if (v13 != 16)
  {
    v29 = (a3 + 16);
    do
    {
      *(v29 - 1) = v8 + v15;
      v30 = *v29;
      v29 += 8;
      v15 += v30;
      --v23;
    }

    while (v23);
  }

  v27 = v13 - 15;
  *(v11 - 8) = v8 + v15;
  *v11 = v6 - 1;
  *(v11 + 12) = 0;
  *(v11 - 16) = RTPGetInternalPayload(a1, *v14 & 0x7F);
  *(v11 + 4) = v9;
  *(v11 + 8) = v9;
  if (!a6)
  {
    v31 = 0;
    v32 = vdupq_n_s64(v13 - 16);
    v33 = (a3 + 286);
    v34 = xmmword_1DBD486F0;
    v35 = xmmword_1DBD48700;
    v36 = xmmword_1DBD48710;
    v37 = xmmword_1DBD48720;
    v38 = xmmword_1DBD48730;
    v39 = xmmword_1DBD48740;
    v40 = xmmword_1DBD45970;
    v41 = xmmword_1DBD45330;
    v42 = vdupq_n_s64(0x10uLL);
    do
    {
      v43 = vmovn_s64(vcgeq_u64(v32, v41));
      if (vuzp1_s8(vuzp1_s16(v43, *v32.i8), *v32.i8).u8[0])
      {
        *(v33 - 256) = v13 + v31 - 16;
      }

      if (vuzp1_s8(vuzp1_s16(v43, *&v32), *&v32).i8[1])
      {
        *(v33 - 224) = v13 + v31 - 17;
      }

      if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v40))), *&v32).i8[2])
      {
        *(v33 - 192) = v13 + v31 - 18;
        *(v33 - 160) = v13 + v31 - 19;
      }

      v44 = vmovn_s64(vcgeq_u64(v32, v39));
      if (vuzp1_s8(*&v32, vuzp1_s16(v44, *&v32)).i32[1])
      {
        *(v33 - 128) = v13 + v31 - 20;
      }

      if (vuzp1_s8(*&v32, vuzp1_s16(v44, *&v32)).i8[5])
      {
        *(v33 - 96) = v13 + v31 - 21;
      }

      if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v38)))).i8[6])
      {
        *(v33 - 64) = v13 + v31 - 22;
        *(v33 - 32) = v13 + v31 - 23;
      }

      v45 = vmovn_s64(vcgeq_u64(v32, v37));
      if (vuzp1_s8(vuzp1_s16(v45, *v32.i8), *v32.i8).u8[0])
      {
        *v33 = v13 + v31 - 24;
      }

      if (vuzp1_s8(vuzp1_s16(v45, *&v32), *&v32).i8[1])
      {
        v33[32] = v13 + v31 - 25;
      }

      if (vuzp1_s8(vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v36))), *&v32).i8[2])
      {
        v33[64] = v13 + v31 - 26;
        v33[96] = v13 + v31 - 27;
      }

      v46 = vmovn_s64(vcgeq_u64(v32, v35));
      if (vuzp1_s8(*&v32, vuzp1_s16(v46, *&v32)).i32[1])
      {
        v33[128] = v13 + v31 - 28;
      }

      if (vuzp1_s8(*&v32, vuzp1_s16(v46, *&v32)).i8[5])
      {
        v33[160] = v13 + v31 - 29;
      }

      if (vuzp1_s8(*&v32, vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v34)))).i8[6])
      {
        v33[192] = v13 + v31 - 30;
        v33[224] = v27 + v31 - 16;
      }

      v39 = vaddq_s64(v39, v42);
      v40 = vaddq_s64(v40, v42);
      v41 = vaddq_s64(v41, v42);
      v38 = vaddq_s64(v38, v42);
      v37 = vaddq_s64(v37, v42);
      v36 = vaddq_s64(v36, v42);
      v31 -= 16;
      v35 = vaddq_s64(v35, v42);
      v33 += 512;
      v34 = vaddq_s64(v34, v42);
    }

    while (-(v13 & 0xFFFFFFFFFFFFFFF0) != v31);
  }

  return v27;
}

BOOL VCAudioRedBuilder_UpdateAudioPacketWithRedPayload(uint64_t a1, int *a2)
{
  v3 = (a2 + 4);
  v2 = a2[4];
  if (v2 >= 1473)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioRedBuilder_UpdateAudioPacketWithRedPayload_cold_1(v7, v3, v8);
      }
    }
  }

  else
  {
    *(a1 + 12) = *(a2 + 28);
    *(a1 + 16) = a2[5];
    v6 = *a2;
    *(a1 + 24) = *a2;
    *(a1 + 28) = v6;
    memcpy((a1 + 44), *(a2 + 1), v2);
    *(a1 + 1516) = a2[4];
    *(a1 + 14) -= *(a2 + 30);
    *(a1 + 20) = a2[6];
  }

  return v2 < 1473;
}

BOOL VTU_MoveAndInsertData(_DWORD *a1, int a2, int a3, const void *a4, int a5)
{
  v5 = a1[8];
  v6 = a3 + a2 + a5;
  if (v6 > v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTU_MoveAndInsertData_cold_1();
      }
    }
  }

  else
  {
    v10 = a1 + a2 + 40;
    v11 = a5;
    memmove(&v10[a5], v10, a3);
    memcpy(v10, a4, v11);
    *a1 += a5;
  }

  return v6 <= v5;
}

uint64_t VTU_ReallocPktsInfo(void **a1, void **a2, unsigned int *a3, void **a4, void **a5, unsigned int a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = *a3;
  if (v11 || !*a1 && !*a2)
  {
    if (a6 < 0x1F41)
    {
      v19 = 2 * v11;
      if ((2 * v11) >= 0x1F40)
      {
        v19 = 8000;
      }

      if (!v11)
      {
        v19 = 100;
      }

      if (a6 <= 0x64)
      {
        v20 = 100;
      }

      else
      {
        v20 = a6;
      }

      if (a6)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      if (v21 <= v11)
      {
        VTU_ReallocPktsInfo_cold_3(a6, v11, &v25);
        return v25;
      }

      v22 = 4 * v11;
      if (_VTU_ReallocateBuffer(a1, 4 * v11, 4 * v21))
      {
        if (_VTU_ReallocateBuffer(a2, v22, 4 * v21))
        {
          if (_VTU_ReallocateBuffer(a5, v22, 4 * v21))
          {
            if (_VTU_ReallocateBuffer(a4, v22, 4 * v21))
            {
              *a3 = v21;
              if (VRTraceGetErrorLogLevelForModule() >= 6)
              {
                v23 = VRTraceErrorLogLevelToCSTR();
                v24 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v25 = 136315906;
                  v26 = v23;
                  v27 = 2080;
                  v28 = "VTU_ReallocPktsInfo";
                  v29 = 1024;
                  v30 = 1216;
                  v31 = 1024;
                  LODWORD(v32) = v21;
                  _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTU_ReallocPktsInfo succeeded for %d elements.", &v25, 0x22u);
                }
              }

              return 1;
            }

            VTU_ReallocPktsInfo_cold_7();
          }

          else
          {
            VTU_ReallocPktsInfo_cold_6();
          }
        }

        else
        {
          VTU_ReallocPktsInfo_cold_5();
        }
      }

      else
      {
        VTU_ReallocPktsInfo_cold_4();
      }
    }

    else
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v13 = MEMORY[0x1E6986650];
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          VTU_ReallocPktsInfo_cold_1();
        }
      }

      *a3 = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          VTU_ReallocPktsInfo_cold_2();
        }
      }
    }

    result = 0;
    *a3 = 0;
    return result;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v17 = *a1;
    v18 = *a2;
    v25 = 136316162;
    v26 = v15;
    v27 = 2080;
    v28 = "VTU_ReallocPktsInfo";
    v29 = 1024;
    v30 = 1192;
    v31 = 2048;
    v32 = v17;
    v33 = 2048;
    v34 = v18;
    _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d VTU_ReallocPktsInfo failed; iNewMaxPacketCount==0 BUT *ppiPacketSizes=%p *ppiPacketFlags=%p", &v25, 0x30u);
  }

  return 0;
}

uint64_t VTU_GetOverhead(int a1, int a2, int a3, int a4)
{
  if (a1)
  {
    WorstCaseNetworkOverhead = VCConnection_GetWorstCaseNetworkOverhead(a1, 1);
  }

  else
  {
    FacetimeNetworkOverhead = VCConnection_GetFacetimeNetworkOverhead(a4);
    if (a2)
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    if (a3)
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    WorstCaseNetworkOverhead = v9 + v8 + FacetimeNetworkOverhead;
  }

  return (WorstCaseNetworkOverhead + 12);
}

uint64_t VTU_CreatePacketAllocator(uint64_t a1, uint64_t a2, CFAllocatorRef *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v10[0] = 2;
  v10[1] = a1 + 40;
  v11 = xmmword_1DBD48770;
  v4 = VCAllocatorMultiQueue_Create(*MEMORY[0x1E695E480], "VCVideoTransmitterPacketAllocator", 4u, v10, a3);
  if (!v4)
  {
    v5 = 0;
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    do
    {
      _VTU_AllocateVPList(*a3, 2000000, (v8 + v5));
      v5 += 8;
    }

    while (v5 != 40);
    for (i = 0; i != 40; i += 8)
    {
      _VTU_FreeVPList(*(v8 + i));
    }
  }

  return v4;
}

BOOL _VTU_AllocateVPList(const void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = MEMORY[0x1E1288880](a1, a2 + 40, 0x1060040557650ABLL, 0);
  if (v6)
  {
    if (a1)
    {
      v7 = CFRetain(a1);
    }

    else
    {
      v7 = 0;
    }

    *(v6 + 24) = 0;
    *(v6 + 32) = a2;
    *(v6 + 16) = v7;
    *v6 = 0;
    *(v6 + 7) = 0;
    *a3 = v6;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VTU_AllocateVPList_cold_1();
    }
  }

  return v6 != 0;
}

void _VTU_FreeVPList(void *ptr)
{
  if (ptr)
  {
    v1 = ptr;
    do
    {
      v2 = v1;
      v1 = v1[3];
      v3 = v2[2];
      CFAllocatorDeallocate(v3, v2);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    while (v1);
  }
}

uint64_t VTU_HandleMTUOverride(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 75) & 1) == 0)
  {
    v5 = (a2 * 0.0666 * 0.125 + -66.0);
    if (*(a1 + 70) == 1)
    {
      v6 = (a2 * 0.1 * 0.125 + -66.0);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136316674;
          v12 = v7;
          v13 = 2080;
          v14 = "VTU_HandleMTUOverride";
          v15 = 1024;
          v16 = 1274;
          v17 = 1024;
          v18 = a3;
          v19 = 1024;
          v20 = v5;
          v21 = 1024;
          v22 = v6;
          v23 = 1024;
          v24 = a2;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTU_SplitVideoIntoPackets: bEnableInitialMTUOverrideFor2G    MTU: %d %d->%d  Tx: %d", &v11, 0x34u);
        }
      }
    }

    else
    {
      v6 = (a2 * 0.0666 * 0.125 + -66.0);
    }

    v9 = fmax(v6, 233.7);
    if (v9 >= a3)
    {
      return a3;
    }

    else
    {
      return v9;
    }
  }

  return a3;
}

uint64_t VTU_SplitVideoIntoPackets(unsigned __int16 **a1, int a2, char *a3, int a4, void **a5, uint64_t a6, int a7, int a8, int a9, int a10, unsigned int a11, int a12)
{
  v12 = 0;
  v304 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return v12;
  }

  v13 = a5;
  if (!a5)
  {
    return v12;
  }

  v16 = a4;
  *a5 = 0;
  v18 = *(a1 + 36);
  v303 = 0;
  memset(v302, 0, sizeof(v302));
  v301 = 0;
  memset(v300, 0, sizeof(v300));
  v19 = *(a1 + 14);
  if (a10 && a12)
  {
    if (a11 <= 0x37AA0 && (*(a1 + 76) & 1) != 0 && v19 <= 0)
    {
      v20 = VTU_HandleMTUOverride(a1, a11, v18);
      v21 = a1;
      v22 = v20;
      v273 = 0;
      v23 = *(a1 + 68);
      goto LABEL_36;
    }

    if ((a12 - 3) >= 3)
    {
      v36 = a4 + 3;
      if (a4 < -3)
      {
        v36 = a4 + 6;
      }

      v37 = v36 >> 2;
      if (a4 >= 4 * v18)
      {
        v37 = v18;
      }

      v273 = 0;
      if ((a12 - 1) <= 1)
      {
        v18 = v37;
      }

      else
      {
        v18 = v18;
      }
    }

    else
    {
      v35 = v19 >= 1 || v18 <= a4;
      if (v35)
      {
        v273 = 0;
        if (3 * v18 > a4)
        {
          v18 = ((a4 + 2) / 3);
        }

        else
        {
          v18 = v18;
        }
      }

      else
      {
        v273 = 0;
      }
    }
  }

  else
  {
    v24 = (a11 * 0.00375);
    if (v24 <= 250)
    {
      v24 = 250;
    }

    v273 = v24;
  }

  v25 = VTU_HandleMTUOverride(a1, a11, v18);
  v21 = a1;
  v22 = v25;
  v23 = *(a1 + 68);
  if (v19 >= 1)
  {
    v26 = FECUtil_FECLevelofProtectionToRateRatio(a12);
    v21 = a1;
    v27 = v26;
    v28 = *(a1 + 16);
    if (v28 != *(a1 + 15) || (v29 = *(a1 + 14), v29 * v28 > (v16 * v27)))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v33 = *(a1 + 15);
          v32 = *(a1 + 16);
          v34 = *(a1 + 14);
          *buf = 136316930;
          *&buf[4] = v30;
          v286 = 2080;
          v287 = "VTU_SplitVideoIntoPackets";
          v288 = 1024;
          v289 = 1368;
          v290 = 1024;
          v291 = v32;
          v292 = 1024;
          v293 = v33;
          v294 = 1024;
          v295 = v34;
          v296 = 1024;
          v297 = v16;
          v298 = 1024;
          v299 = (v16 * v27);
          _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d CU_SplitVideoIntoPackets failed sanity check!: iProbeSeqPacketSize = %d iProbeSeqFirstPacketSize = %d iProbeSeqPacketCount = %d len = %d lenWithFEC = %d", buf, 0x3Au);
        }
      }

      return 0;
    }

    if (v16 / v29 + 1 < v22)
    {
      v22 = v16 / v29 + 1;
    }
  }

LABEL_36:
  v38 = (v16 - 4);
  v272 = v22;
  if (v16 >= 4)
  {
    v249 = a8;
    v252 = a6;
    v262 = v23;
    v254 = v16;
    v259 = v13;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v43 = 0;
    v276 = a2;
    do
    {
      v265 = v39;
      v44 = 0;
      while (1)
      {
        if (v40 + v44 == 50)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              VTU_SplitVideoIntoPackets_cold_3();
            }
          }

          return 0;
        }

        v45 = &a3[v41];
        v46 = bswap32(*v45);
        if (v46 > v38 - v41)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              VTU_SplitVideoIntoPackets_cold_2();
            }
          }

          return 0;
        }

        v302[v40 + v44] = v41;
        v47 = v46 + 4;
        *(v300 + v40 + v44) = v46 + 4;
        if ((v41 == 0) | v42 & 1)
        {
          break;
        }

        if (!v43)
        {
          v42 = 0;
          a2 = v276;
          v39 = v265;
          goto LABEL_72;
        }

        v48 = v38;
        cf = 0;
        if (ReadFrameSliceHeader(v276, (v45 + 1), v46, &cf) == 1)
        {
          if (*a1[2] >= *(a1 + 4))
          {
            pthread_mutex_unlock(a1[3]);
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                VTU_SplitVideoIntoPackets_cold_1();
              }
            }

            return 0;
          }

          __src = -21846;
          v282 = -21846;
          if (RetrieveMBSliceTypeFromFrameInfoDict(cf, &__src, &v282))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v49 = VRTraceErrorLogLevelToCSTR();
              v50 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = v49;
                v286 = 2080;
                v287 = "VTU_SplitVideoIntoPackets";
                v288 = 1024;
                v289 = 1473;
                _os_log_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTU_SplitVideoIntoPackets: FRAMEHEADER_SLICEINFO bad RetrieveMBSlice", buf, 0x1Cu);
              }
            }
          }

          else
          {
            v51 = a1[2];
            v52 = *v51;
            (*a1)[v52] = __src;
            *v51 = v52 + 1;
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v42 = 0;
        v41 += v47;
        ++v44;
        v43 = 1;
        v38 = v48;
        v21 = a1;
        if (v41 > v48)
        {
          LODWORD(v40) = v40 + v44;
          v13 = v259;
          a2 = v276;
          v23 = v262;
          a6 = v252;
          a8 = v249;
          v39 = v265;
          goto LABEL_81;
        }
      }

      v266 = v38;
      cf = 0;
      a2 = v276;
      FrameSliceHeader = ReadFrameSliceHeader(v276, (v45 + 1), v46, &cf);
      v39 = FrameSliceHeader;
      if ((FrameSliceHeader - 2) >= 2)
      {
        if (FrameSliceHeader == 5)
        {
          v42 = 1;
        }

        v21 = a1;
      }

      else
      {
        __src = -21846;
        v282 = -21846;
        if (RetrieveResolutionFromFrameInfoDict(cf, &__src, &v282))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v54 = VRTraceErrorLogLevelToCSTR();
            v55 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = v54;
              v286 = 2080;
              v287 = "VTU_SplitVideoIntoPackets";
              v288 = 1024;
              v289 = 1428;
              _os_log_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTU_SplitVideoIntoPackets: FRAMEHEADER_IMGDESC/SPS bad RetrieveMBSlice", buf, 0x1Cu);
            }
          }

          v21 = a1;
        }

        else
        {
          v21 = a1;
          if (**a1 != __src || (*a1)[1] != v282)
          {
            pthread_mutex_lock(a1[3]);
            v21 = a1;
            v56 = *a1;
            *v56 = __src;
            v56[1] = v282;
            *a1[2] = 2;
            v43 = 1;
          }
        }

        v42 = 0;
      }

      if (cf)
      {
        CFRelease(cf);
        v21 = a1;
      }

      v38 = v266;
LABEL_72:
      v41 += v47;
      v40 += v44 + 1;
    }

    while (v41 <= v38);
    if (v43)
    {
      v13 = v259;
      v23 = v262;
      a6 = v252;
      a8 = v249;
LABEL_81:
      pthread_mutex_unlock(v21[3]);
      v21 = a1;
      v16 = v254;
    }

    else
    {
      v13 = v259;
      v16 = v254;
      v23 = v262;
      a6 = v252;
      a8 = v249;
    }
  }

  else
  {
    v39 = 0;
    LODWORD(v40) = 0;
  }

  if (a7 <= 0)
  {
    v59 = a3;
    *v13 = a3;
    goto LABEL_111;
  }

  if (v39 == 1)
  {
    if (v40 % a8)
    {
LABEL_106:
      v59 = a3;
      v64 = v40;
      goto LABEL_107;
    }

    v58 = 0;
    v57 = v40;
  }

  else
  {
    if (v39 != 3 && v39 != 2)
    {
      goto LABEL_106;
    }

    v57 = v40 - 1;
    if (((v40 - 1) & 3) != 0)
    {
      goto LABEL_106;
    }

    v58 = 1;
  }

  v60 = v57 / a8;
  if (v57 / a8 < 1)
  {
    goto LABEL_106;
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = v60 + v58;
  do
  {
    if (v61 == a9 || !*(a6 + 4 * v61))
    {
      v65 = v64 + v60;
      if ((v64 + v60) < v40)
      {
        v66 = v65;
        v67 = v300 + v65;
        v68 = &v302[v65];
        do
        {
          v68[-v60] = *v68;
          v67[-v60] = *v67;
          ++v66;
          ++v67;
          ++v68;
        }

        while (v66 < v40);
      }

      LODWORD(v40) = v40 - v60;
      v63 = 1;
    }

    else
    {
      v64 += v60;
      v108 = !v63;
      v63 = v63;
      if (!v108)
      {
        v62 = 1;
      }
    }

    ++v61;
  }

  while (v61 != 3);
  if (v64 >= 51)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTU_SplitVideoIntoPackets_cold_5();
      }
    }

    return 0;
  }

  if (v62)
  {
    if (v64 < 1)
    {
      v219 = MEMORY[0x1E1288880](v21[10], 0, 1980959803, 0);
      if (v219)
      {
        v59 = v219;
        v16 = 0;
        *v13 = v219;
        v302[0] = 0;
        LODWORD(v40) = v64;
        v21 = a1;
        goto LABEL_111;
      }
    }

    else
    {
      LODWORD(v127) = 0;
      v128 = v64;
      v129 = v300;
      v130 = v64;
      do
      {
        v131 = *v129++;
        v127 = v131 + v127;
        --v130;
      }

      while (v130);
      v132 = MEMORY[0x1E1288880](v21[10], v127, 1980959803, 0);
      if (v132)
      {
        v59 = v132;
        v278 = a2;
        v133 = 0;
        v134 = v300;
        v135 = v302;
        do
        {
          v137 = *v135++;
          v136 = v137;
          v138 = *v134++;
          memcpy(&v59[v133], &a3[v136], v138);
          v133 += v138;
          --v128;
        }

        while (v128);
        v21 = a1;
        v16 = v133;
        a2 = v278;
        goto LABEL_107;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTU_SplitVideoIntoPackets_cold_4();
      }
    }

    return 0;
  }

  v59 = a3;
LABEL_107:
  *v13 = v59;
  v302[0] = 0;
  if (v64 > 1)
  {
    v69 = 0;
    v70 = &v302[1];
    v71 = v64 - 1;
    v72 = v300;
    do
    {
      v73 = *v72++;
      v69 += v73;
      *v70++ = v69;
      --v71;
    }

    while (v71);
  }

  LODWORD(v40) = v64;
LABEL_111:
  if (a2 != 123 && a2 != 100)
  {
    if (v40 <= 1)
    {
      v94 = v273;
    }

    else
    {
      v93 = v40;
      v94 = v273;
      while (1)
      {
        v95 = 1;
        if (v93 >= 3)
        {
          v96 = DWORD1(v300[0]);
          for (i = 2; i != v93; ++i)
          {
            v98 = *(v300 + i);
            if (v96 + v98 < *(v300 + v95 - 1) + *(v300 + v95))
            {
              v95 = i;
            }

            v96 = v98;
          }
        }

        v99 = v95 - 1;
        v100 = *(v300 + v99) + *(v300 + v95);
        if (v100 > v22)
        {
          break;
        }

        *(v300 + v99) = v100;
        LODWORD(v99) = v95 + 1;
        if (v93 > v95 + 1)
        {
          v99 = v99;
          do
          {
            *(v300 + v95++) = *(v300 + v99++);
          }

          while (v99 < v93);
        }

        v35 = v93-- > 2;
        if (!v35)
        {
          LODWORD(v40) = 1;
          goto LABEL_173;
        }
      }

      LODWORD(v40) = v93;
    }

    if (v40 >= 1)
    {
LABEL_173:
      v105 = 0;
      v271 = v22 - 1;
      v106 = v23 ^ 1;
      v12 = 0;
      v267 = v40;
      v263 = v106;
      while (1)
      {
        v107 = *(v300 + v105);
        if (v107)
        {
          v108 = (v106 & (v107 > v94)) == 1 && v40 == 1;
          if (v108 && v107 < v22)
          {
            v111 = 0;
            v110 = 2;
          }

          else
          {
            v110 = (v271 + v107) / v22;
            if (!v110)
            {
              if (VRTraceGetErrorLogLevelForModule() < 3)
              {
                v21 = a1;
              }

              else
              {
                v122 = VRTraceErrorLogLevelToCSTR();
                v123 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = v122;
                  v286 = 2080;
                  v287 = "VTU_SplitVideoIntoPackets";
                  v288 = 1024;
                  v289 = 1736;
                  _os_log_error_impl(&dword_1DB56E000, v123, OS_LOG_TYPE_ERROR, " [%s] %s:%d parts is zero while trying to calculate each = (bytes / parts) + 1", buf, 0x1Cu);
                }

                v21 = a1;
              }

              goto LABEL_210;
            }

            v111 = v107 / v110 + 1;
          }

          if (v110 >= 1 && v107 >= 1)
          {
            break;
          }
        }

LABEL_210:
        if (++v105 >= v40)
        {
          return v12;
        }
      }

      v112 = 0;
      v113 = 4 * v12;
      while (1)
      {
        v114 = v107 - 50;
        if (v111)
        {
          v114 = v111;
          v115 = v111;
        }

        else
        {
          v115 = 50;
        }

        if (v111 > v107)
        {
          v116 = v107;
        }

        else
        {
          v111 = v114;
          v116 = v115;
        }

        if (!(v112 | v105) && (*(v21 + 69) & 1) != 0)
        {
          ProbePktSize = Throttling_VideoTransmitterUtil_ForceFirstProbePktSize(v107, v116);
          v21 = a1;
          LODWORD(v116) = ProbePktSize;
        }

        v118 = v21[5];
        v119 = v21[6];
        v120 = v21[4];
        if (v12 + v112 >= *v119)
        {
          if (!VTU_ReallocPktsInfo(v120, v118, v119, 0, 0, 0))
          {
            v12 = (v12 + v112 + 1);
            LODWORD(v40) = v267;
            v105 = v267;
            v21 = a1;
LABEL_209:
            v22 = v272;
            v94 = v273;
            v106 = v263;
            goto LABEL_210;
          }

          v21 = a1;
          v120 = a1[4];
          v118 = a1[5];
        }

        *(*v120 + 4 * v112 + v113) = v116;
        *(*v118 + 4 * v112 + v113) = (2 * (v112 == 0)) | (v110 - 1 == v112);
        if (++v112 < v110)
        {
          v121 = __OFSUB__(v107, v116);
          v107 -= v116;
          if (!((v107 < 0) ^ v121 | (v107 == 0)))
          {
            continue;
          }
        }

        v12 = (v12 + v112);
        LODWORD(v40) = v267;
        goto LABEL_209;
      }
    }

    return 0;
  }

  *v13 = 0;
  v75 = v21[4];
  v74 = v21[5];
  v270 = v21[6];
  if (a2 != 100)
  {
    v250 = *(v21 + 69);
    v85 = *(v21 + 77);
    v86 = *(v21 + 39);
    v87 = v21[10];
    cf = 0;
    if (!v16)
    {
      if ((v85 & 1) == 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VTU_SplitVideoIntoPackets_cold_13();
          }
        }

        goto LABEL_378;
      }

      v101 = MEMORY[0x1E1288880](v87, 2, 0x100004077774924, 0);
      *v13 = v101;
      if (v101)
      {
        v102 = 12;
        goto LABEL_160;
      }

LABEL_370:
      LODWORD(v40) = 0;
      LODWORD(v74) = 0;
      goto LABEL_379;
    }

    v277 = v85;
    v244 = v74;
    if (v40 <= 0)
    {
      v245 = __rev16(v86);
      __src = v245;
      v125 = v85;
      if (v85)
      {
        v126 = 2;
      }

      else
      {
        v126 = 0;
      }
    }

    else
    {
      v246 = v75;
      v88 = 0;
      do
      {
        v89 = *(v300 + v88);
        if (v89 <= v22)
        {
          v90 = v22;
        }

        else
        {
          v90 = *(v300 + v88);
        }

        v91 = AddOneVPList(&cf, v89, v302[v88++], v59, v16, v90, v87);
        if (v91)
        {
          v92 = 1;
        }

        else
        {
          v92 = v88 >= v40;
        }
      }

      while (!v92);
      if (v91)
      {
        v84 = cf;
        goto LABEL_377;
      }

      v245 = __rev16(v86);
      __src = v245;
      v125 = v277;
      if (v277)
      {
        v126 = 2;
      }

      else
      {
        v126 = 0;
      }

      if (v40 != 1)
      {
        v253 = v59;
        v165 = v40;
        while (1)
        {
          v166 = cf;
          v167 = *(cf + 3);
          if (!v167)
          {
            break;
          }

          v168 = *(v167 + 3);
          if (v168)
          {
            v169 = *v167;
            v170 = *cf;
            v171 = cf;
            v172 = *(cf + 3);
            do
            {
              v173 = *v172 + *v168;
              v174 = v169 + v170;
              if (v173 < v169 + v170)
              {
                v170 = *v172;
              }

              if (v173 < v174)
              {
                v166 = v172;
                v169 = *v168;
                v167 = v168;
              }

              v172 = *(v172 + 3);
              v168 = *(v168 + 3);
            }

            while (v168);
          }

          else
          {
            v171 = cf;
          }

          v175 = *v166;
          if (v175 + *v167 <= v272 - 5)
          {
            if (!*(v166 + 10))
            {
              if (*(v166 + 4) < (v175 + 2))
              {
                v230 = v171;
                goto LABEL_457;
              }

              v176 = bswap32(v175) >> 16;
              memmove(v166 + 42, v166 + 10, v175);
              *(v166 + 20) = v176;
              v125 = v277;
              LODWORD(v175) = *v166 + 2;
              *v166 = v175;
            }

            v177 = *(v166 + 4);
            if (!*(v167 + 10))
            {
              v178 = (v175 + 2);
              if (v177 < v178)
              {
                _VTU_FreeVPList(v171);
                v103 = a1;
                LODWORD(v74) = -1;
                goto LABEL_458;
              }

              *(v166 + v175 + 40) = bswap32(*v167) >> 16;
              *v166 = v178;
              LODWORD(v175) = v175 + 2;
            }

            if (v177 < (*v167 + v175))
            {
              v230 = cf;
              goto LABEL_457;
            }

            memcpy(v166 + v175 + 40, v167 + 20, *v167);
            *v166 += *v167;
            *(v166 + 10) = 1;
            *(v166 + 3) = *(v167 + 3);
            *(v167 + 3) = 0;
            _VTU_FreeVPList(v167);
            v35 = v165-- <= 2;
            if (!v35)
            {
              continue;
            }
          }

          v59 = v253;
          goto LABEL_314;
        }

        v59 = v253;
        v22 = v272;
        v75 = v246;
LABEL_316:
        v253 = v59;
        v179 = v125;
        v180 = v126 | 1;
        v181 = v126;
        if (v179)
        {
          v182 = 57;
        }

        else
        {
          v182 = 56;
        }

        ptr = v166;
        do
        {
          if (*(v166 + 10) == 1)
          {
            v183 = *v166;
            if (*(v166 + 4) < (v183 + v180))
            {
              goto LABEL_456;
            }

            memmove(v166 + v126 + 41, v166 + 10, v183);
            *(v166 + 40) = v182;
            if (v277)
            {
              memcpy(v166 + 41, &__src, v126);
            }

            *v166 += v180;
          }

          v166 = *(v166 + 3);
        }

        while (v166);
        v261 = v13;
        v184 = v22 - (v126 + 2);
        v185 = v277;
        if (v277)
        {
          v186 = 29;
        }

        else
        {
          v186 = 28;
        }

        v238 = v186;
        v239 = v184 - 1;
        v236 = v22 - (v126 + 2);
        v237 = v126 | 1;
        v187 = ptr;
        v268 = v40;
        v248 = v75;
LABEL_330:
        v188 = (v187 + 5);
        if (v185 && (*v188 & 0x1B) == 1)
        {
          v189 = *v187;
        }

        else
        {
          v189 = *v187;
          if (*v187 <= v22)
          {
            v195 = v187;
            goto LABEL_364;
          }
        }

        if (v184 <= 0)
        {
          v231 = v184;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v232 = VRTraceErrorLogLevelToCSTR();
            v233 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              *&buf[4] = v232;
              v286 = 2080;
              v287 = "VTU_PrepareH264FrameData";
              v288 = 1024;
              v289 = 524;
              v290 = 1024;
              v291 = 524;
              v292 = 1024;
              v293 = v231;
              v294 = 1024;
              v295 = v22;
              _os_log_error_impl(&dword_1DB56E000, v233, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoTransmitterUtils.c:%d: Invalid adjustedMTU=%d MTU=%d", buf, 0x2Eu);
            }
          }

          goto LABEL_456;
        }

        v264 = v187[3];
        v190 = (v239 + v189) / v184;
        if (v190 <= 2)
        {
          v191 = 2;
        }

        else
        {
          v191 = (v239 + v189) / v184;
        }

        if (v185)
        {
          v192 = v191;
        }

        else
        {
          v192 = v190;
        }

        v193 = v189 / v192 + 1;
        if (v250)
        {
          v194 = Throttling_VideoTransmitterUtil_ForceFirstProbePktSize(v189, (v189 / v192 + 1));
          v258 = v189 / v192 + 1;
          if (v193 != v194)
          {
            v258 = (v189 - v194) / (v192 - 1) + 1;
            v193 = v194;
          }
        }

        else
        {
          v258 = v189 / v192 + 1;
        }

        v196 = *v188;
        v275 = *v188 & 0xE0 | v238;
        v121 = __OFSUB__(v192, 1);
        v197 = v192 - 1;
        if ((v197 < 0) ^ v121 | (v197 == 0))
        {
          v256 = v196 & 0x1F;
          v195 = v187;
          goto LABEL_360;
        }

        v198 = v189 - v193;
        v235 = v193;
        v40 = &v188[v193];
        v199 = (v258 + v181 + 2);
        v242 = *v188;
        v256 = v196 & 0x1F;
        v195 = v187;
        while (1)
        {
          if (!_VTU_AllocateVPList(v87, v199, (v195 + 24)))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                VTU_SplitVideoIntoPackets_cold_6();
              }
            }

            goto LABEL_429;
          }

          v195 = *(v195 + 24);
          *(v195 + 24) = v264;
          if (v197 == 1)
          {
            if ((PrepareLastH264Fragment(v195, v275, v242, v40, v198, v245, v181) & 0x80000000) != 0)
            {
              ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
              if (ErrorLogLevelForModule >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  VTU_SplitVideoIntoPackets_cold_11();
                }
              }

LABEL_429:
              v222 = ptr;
              goto LABEL_430;
            }
          }

          else
          {
            if (v198 <= v258)
            {
              H264Fragment = PrepareLastH264Fragment(v195, v275, v242, v40, v198, v245, v181);
              LODWORD(v40) = v268;
              v22 = v272;
              v193 = v235;
              if (H264Fragment < 0)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    VTU_SplitVideoIntoPackets_cold_7();
                  }
                }

                goto LABEL_429;
              }

LABEL_360:
              *(v187 + 4) = 1;
              *v187 = v193 + v237;
              if (v187[4] >= (v193 + v237))
              {
                memmove(v187 + v181 + 42, v187 + 41, v193 - 1);
                *(v187 + 40) = v275;
                *(v187 + 41) = v256 | 0x80;
                v185 = v277;
                if (v277)
                {
                  memcpy(v187 + 42, &__src, v181);
                }

                v184 = v236;
LABEL_364:
                v187 = *(v195 + 24);
                if (!v187)
                {
                  v223 = 0;
                  v224 = ptr;
                  do
                  {
                    v223 += *v224;
                    v224 = v224[3];
                  }

                  while (v224);
                  v59 = v253;
                  v13 = v261;
                  if (v223)
                  {
                    v225 = MEMORY[0x1E1288880](v87, v223, 0x100004077774924, 0);
                    *v261 = v225;
                    if (v225)
                    {
                      v159 = 0;
                      v226 = 0;
                      v227 = ptr;
                      while (1)
                      {
                        memcpy(*v261 + v226, v227 + 10, *v227);
                        v228 = *v227;
                        v229 = *v227;
                        if (v159 >= *v270)
                        {
                          if (!VTU_ReallocPktsInfo(v248, v244, v270, 0, 0, 0))
                          {
                            if (VRTraceGetErrorLogLevelForModule() >= 3)
                            {
                              VRTraceErrorLogLevelToCSTR();
                              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                              {
                                VTU_SplitVideoIntoPackets_cold_9();
                              }
                            }

                            _VTU_FreeVPList(ptr);
                            CFAllocatorDeallocate(v87, *v261);
                            *v261 = 0;
                            goto LABEL_378;
                          }

                          v229 = *v227;
                        }

                        v226 += v228;
                        *(*v248 + v159) = v229;
                        *(*v244 + v159++) = *(v227 + 9) | (2 * *(v227 + 8));
                        v227 = *(v227 + 3);
                        if (!v227)
                        {
                          v164 = ptr;
LABEL_447:
                          _VTU_FreeVPList(v164);
                          LODWORD(v74) = 0;
                          LODWORD(v40) = v159;
                          goto LABEL_379;
                        }
                      }
                    }

                    v201 = ptr;
LABEL_373:
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        VTU_SplitVideoIntoPackets_cold_12();
                      }
                    }

                    v84 = v201;
LABEL_377:
                    _VTU_FreeVPList(v84);
LABEL_378:
                    LODWORD(v74) = -1;
                    goto LABEL_379;
                  }

                  v201 = ptr;
LABEL_372:
                  *v13 = 0;
                  goto LABEL_373;
                }

                goto LABEL_330;
              }

              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  VTU_SplitVideoIntoPackets_cold_10();
                }
              }

LABEL_456:
              v230 = ptr;
LABEL_457:
              _VTU_FreeVPList(v230);
              LODWORD(v74) = -1;
              v103 = a1;
              goto LABEL_458;
            }

            *v195 = v199;
            *(v195 + 8) = 0;
            if (*(v195 + 32) < v199)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  VTU_SplitVideoIntoPackets_cold_8();
                }
              }

              goto LABEL_429;
            }

            *(v195 + 40) = v275;
            *(v195 + 41) = v256;
            if (v277)
            {
              *(v195 + 42) = __src;
            }

            memcpy((v195 + v181 + 42), v40, v258);
            v40 += v258;
            v198 -= v258;
          }

          --v197;
          v22 = v272;
          if (!v197)
          {
            LODWORD(v40) = v268;
            v193 = v235;
            goto LABEL_360;
          }
        }
      }

LABEL_314:
      v22 = v272;
      v75 = v246;
    }

    v166 = cf;
    if (!cf)
    {
      v201 = 0;
      goto LABEL_372;
    }

    goto LABEL_316;
  }

  v76 = *(v21 + 77);
  v77 = *(v21 + 39);
  v78 = v21[10];
  LOWORD(cf) = *(v21 + 39);
  *buf = 0;
  if (!v16)
  {
    if ((v76 & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTU_SplitVideoIntoPackets_cold_21();
        }
      }

      goto LABEL_378;
    }

    v101 = MEMORY[0x1E1288880](v78, 2, 0x100004077774924, 0);
    *v13 = v101;
    if (v101)
    {
      v102 = 76;
LABEL_160:
      *v101 = v102;
      if (v270)
      {
        *v270 = 1;
      }

      VTU_ReallocPktsInfo(v75, v74, v270, 0, 0, 0);
      if (v75 && *v75)
      {
        **v75 = 2;
      }

      v103 = a1;
      if (v74)
      {
        v104 = *v74;
        if (*v74)
        {
          LODWORD(v74) = 0;
          *v104 = 3;
        }

        else
        {
          LODWORD(v74) = 0;
        }
      }

      LODWORD(v40) = 1;
      goto LABEL_380;
    }

    goto LABEL_370;
  }

  v260 = v13;
  if (v40 <= 0)
  {
    v253 = v59;
    v268 = v40;
    LOWORD(cf) = __rev16(v77);
LABEL_214:
    v124 = 0;
    __src = -21846;
LABEL_215:
    *v260 = 0;
    goto LABEL_216;
  }

  v257 = v76;
  v243 = v74;
  v79 = 0;
  do
  {
    v80 = *(v300 + v79);
    if (v80 <= v22)
    {
      v81 = v22;
    }

    else
    {
      v81 = *(v300 + v79);
    }

    v82 = AddOneVPList(buf, v80, v302[v79++], v59, v16, v81, v78);
    if (v82)
    {
      v83 = 1;
    }

    else
    {
      v83 = v79 >= v40;
    }
  }

  while (!v83);
  if (v82)
  {
LABEL_126:
    v84 = *buf;
    goto LABEL_377;
  }

  v247 = v75;
  v253 = v59;
  v124 = *buf;
  LOWORD(cf) = bswap32(cf) >> 16;
  if (v257)
  {
    v139 = 2;
  }

  else
  {
    v139 = 0;
  }

  v274 = v139;
  v268 = v40;
  if (v40 != 1)
  {
    v202 = (v139 + 2);
    do
    {
      v203 = *(v124 + 3);
      if (!v203)
      {
        goto LABEL_242;
      }

      v204 = *(v203 + 3);
      if (v204)
      {
        v205 = *v203;
        v206 = *v124;
        v207 = v124;
        v208 = *(v124 + 3);
        do
        {
          v209 = *v208 + *v204;
          v210 = v205 + v206;
          if (v209 < v205 + v206)
          {
            v206 = *v208;
          }

          if (v209 < v210)
          {
            v207 = v208;
            v205 = *v204;
            v203 = v204;
          }

          v208 = *(v208 + 3);
          v204 = *(v204 + 3);
        }

        while (v204);
        if (!v124)
        {
          v211 = 0;
          goto LABEL_399;
        }
      }

      else
      {
        v207 = v124;
      }

      v211 = 0;
      v212 = v124;
      do
      {
        v211 += 2 * (*(v212 + 10) == 1);
        v212 = *(v212 + 3);
      }

      while (v212);
LABEL_399:
      v213 = v272 - v211;
      v214 = *(v203 + 10);
      v215 = *v207;
      if (v202 + 2 * (*(v207 + 10) != 1) + 2 * (v214 != 1) + (v215 + *v203) > v213)
      {
        break;
      }

      if (!*(v207 + 10))
      {
        if (*(v207 + 4) < (v215 + 2))
        {
          goto LABEL_432;
        }

        v216 = bswap32(v215) >> 16;
        memmove(v207 + 42, v207 + 10, v215);
        *(v207 + 20) = v216;
        LODWORD(v215) = *v207 + 2;
        *v207 = v215;
        v214 = *(v203 + 10);
      }

      v217 = *(v207 + 4);
      if (!v214)
      {
        v218 = (v215 + 2);
        if (v217 < v218)
        {
          _VTU_FreeVPList(v124);
          v103 = a1;
          LODWORD(v74) = -1;
          goto LABEL_431;
        }

        *(v207 + v215 + 40) = bswap32(*v203) >> 16;
        *v207 = v218;
        LODWORD(v215) = v215 + 2;
      }

      if (v217 < (*v203 + v215))
      {
LABEL_432:
        v222 = v124;
LABEL_430:
        _VTU_FreeVPList(v222);
        LODWORD(v74) = -1;
        v103 = a1;
LABEL_431:
        LODWORD(v40) = v268;
LABEL_458:
        v59 = v253;
        goto LABEL_380;
      }

      memcpy(v207 + v215 + 40, v203 + 20, *v203);
      *v207 += *v203;
      *(v207 + 10) = 1;
      *(v207 + 3) = *(v203 + 3);
      *(v203 + 3) = 0;
      _VTU_FreeVPList(v203);
      v35 = v40 <= 2;
      LODWORD(v40) = v40 - 1;
    }

    while (!v35);
  }

  if (!v124)
  {
    goto LABEL_214;
  }

LABEL_242:
  v140 = v124;
  LODWORD(v40) = v268;
  v59 = v253;
  v141 = v272;
  v142 = v274;
  do
  {
    if (*(v140 + 10) == 1)
    {
      v143 = *v140;
      if (*(v140 + 4) < (v143 + 2))
      {
        goto LABEL_219;
      }

      memmove(v140 + 42, v140 + 10, v143);
      *(v140 + 20) = 352;
      v144 = *v140;
      *v140 += 2;
      if (v257 && !VTU_MoveAndInsertData(v140, 2, v144, &cf, 2))
      {
        _VTU_FreeVPList(v124);
        v103 = a1;
        LODWORD(v74) = -1;
        goto LABEL_380;
      }
    }

    v140 = *(v140 + 3);
  }

  while (v140);
  __src = -21846;
  v145 = v272 - v274 - 3;
  v241 = v274 + 2;
  do
  {
    v146 = *v124;
    if ((*v124 + v142) <= v141)
    {
      if (*(v124 + 10))
      {
        v155 = 1;
      }

      else
      {
        v155 = v257 == 0;
      }

      if (v155 || v146 > 1 && VTU_MoveAndInsertData(v124, 2, v146 - 2, &cf, v142))
      {
        goto LABEL_276;
      }

      goto LABEL_126;
    }

    if (v145 < 1)
    {
      goto LABEL_126;
    }

    v147 = *(v124 + 3);
    v148 = (v272 - v274 - 4 + v146) / v145;
    v149 = *(v124 + 40);
    HIBYTE(__src) = *(v124 + 41);
    v150 = v149;
    LOBYTE(__src) = v149 & 0x81 | 0x62;
    v40 = v124;
    v251 = v146 / v148;
    v151 = v148 - 1;
    if (v148 <= 1)
    {
      goto LABEL_272;
    }

    v152 = v251 + 1;
    v279 = v146 - (v251 + 1);
    v153 = v124 + v152 + 40;
    v154 = v251 + (v274 | 4);
    v255 = (v149 >> 1) & 0x3F;
    v40 = v124;
    while (1)
    {
      if (!_VTU_AllocateVPList(v78, v154, (v40 + 24)))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VTU_SplitVideoIntoPackets_cold_14();
          }
        }

        goto LABEL_465;
      }

      v40 = *(v40 + 24);
      *(v40 + 24) = v147;
      if (v151 == 1)
      {
        if ((PrepareLastHEVCFragment(v40, &__src, v150, v153, v279, cf, v274) & 0x80000000) != 0)
        {
          v234 = VRTraceGetErrorLogLevelForModule();
          if (v234 >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              VTU_SplitVideoIntoPackets_cold_19();
            }
          }

LABEL_465:
          _VTU_FreeVPList(*buf);
          goto LABEL_466;
        }

        goto LABEL_262;
      }

      if (v279 <= v152)
      {
        break;
      }

      *v40 = v154;
      *(v40 + 8) = 0;
      if (*(v124 + 4) < v154)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VTU_SplitVideoIntoPackets_cold_16();
          }
        }

        goto LABEL_465;
      }

      *(v40 + 40) = __src;
      *(v40 + 42) = v255;
      if (v257)
      {
        *(v40 + 43) = cf;
      }

      v279 -= v152;
      memcpy((v40 + v274 + 43), v153, v152);
      v153 += v152;
LABEL_262:
      if (!--v151)
      {
        goto LABEL_272;
      }
    }

    if ((PrepareLastHEVCFragment(v40, &__src, v150, v153, v279, cf, v274) & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTU_SplitVideoIntoPackets_cold_15();
        }
      }

      goto LABEL_465;
    }

LABEL_272:
    if (*(v124 + 4) < (v241 + v251))
    {
      v59 = v253;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTU_SplitVideoIntoPackets_cold_18();
        }
      }

      _VTU_FreeVPList(*buf);
      LODWORD(v74) = -1;
      LODWORD(v40) = v268;
      goto LABEL_379;
    }

    *(v124 + 4) = 1;
    *v124 = v241 + v251;
    v142 = v274;
    memmove(v124 + v274 + 43, v124 + 42, v251 - 1);
    *(v124 + 20) = __src;
    *(v124 + 42) = (v150 >> 1) & 0x3F | 0x80;
    v59 = v253;
    if (v257)
    {
      memmove(v124 + 43, &cf, v274);
    }

    v124 = v40;
    LODWORD(v40) = v268;
    v141 = v272;
    v145 = v272 - v274 - 3;
LABEL_276:
    v124 = *(v124 + 3);
  }

  while (v124);
  v124 = *buf;
  if (!*buf)
  {
    goto LABEL_215;
  }

  v156 = 0;
  v157 = *buf;
  do
  {
    v156 += *v157;
    v157 = *(v157 + 24);
  }

  while (v157);
  if (!v156)
  {
    goto LABEL_215;
  }

  v158 = MEMORY[0x1E1288880](v78, v156, 0x100004077774924, 0);
  *v260 = v158;
  if (!v158)
  {
LABEL_216:
    LODWORD(v40) = v268;
    v59 = v253;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTU_SplitVideoIntoPackets_cold_20();
      }
    }

LABEL_219:
    v84 = v124;
    goto LABEL_377;
  }

  v159 = 0;
  v160 = 0;
  v161 = v124;
  while (1)
  {
    memcpy(*v260 + v160, v161 + 10, *v161);
    v162 = *v161;
    v163 = *v161;
    if (v159 >= *v270)
    {
      break;
    }

LABEL_286:
    v160 += v162;
    *(*v247 + v159) = v163;
    *(*v243 + v159++) = *(v161 + 9) | (2 * *(v161 + 8));
    v161 = *(v161 + 3);
    if (!v161)
    {
      v164 = v124;
      goto LABEL_447;
    }
  }

  if (VTU_ReallocPktsInfo(v247, v243, v270, 0, 0, 0))
  {
    v163 = *v161;
    goto LABEL_286;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VTU_SplitVideoIntoPackets_cold_17();
    }
  }

  _VTU_FreeVPList(v124);
  CFAllocatorDeallocate(v78, *v260);
  *v260 = 0;
LABEL_466:
  LODWORD(v74) = -1;
  LODWORD(v40) = v268;
  v59 = v253;
LABEL_379:
  v103 = a1;
LABEL_380:
  if (v59 != a3)
  {
    CFAllocatorDeallocate(v103[10], v59);
  }

  if (v74)
  {
    return 0;
  }

  else
  {
    return v40;
  }
}

uint64_t VTU_ComputeTotalNumberOfGroupsPerFrame(int a1)
{
  v1 = a1 - 1;
  if (a1 < 1)
  {
    v1 = a1 + 6;
  }

  return ((v1 >> 3) + 1);
}

uint64_t AddOneVPList(uint64_t *a1, int a2, int a3, uint64_t a4, int a5, unsigned int a6, const void *a7)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a2 <= 3 || a3 < 0 || a2 > a6 || a3 + a2 > a5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *v22 = 136316930;
        *&v22[4] = v11;
        v23 = 2080;
        v24 = "AddOneVPList";
        v25 = 1024;
        v26 = 132;
        v27 = 1024;
        v28 = 132;
        v29 = 1024;
        v30 = a2;
        v31 = 1024;
        v32 = a3;
        v33 = 1024;
        v34 = a6;
        v35 = 1024;
        v36 = a5;
        _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VideoTransmitterUtils.c:%d: Invalid size iGobs = %d, iHeads = %d, buffer size = %u, dataLen = %d", v22, 0x3Au);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v16 = *a1;
  *v22 = 0xAAAAAAAAAAAAAAAALL;
  if (!_VTU_AllocateVPList(a7, a6, v22))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AddOneVPList_cold_1();
      }
    }

    return 0xFFFFFFFFLL;
  }

  v17 = (a2 - 4);
  v18 = *v22;
  v19 = (a3 + 4);
  **v22 = v17;
  *(v18 + 4) = v19;
  *(v18 + 8) = 257;
  *(v18 + 10) = 0;
  memcpy((v18 + 40), (a4 + v19), v17);
  if (v16)
  {
    v20 = v16;
    do
    {
      v21 = v20;
      v20 = *(v20 + 24);
    }

    while (v20);
    *(v21 + 24) = v18;
  }

  else
  {
    v16 = v18;
  }

  result = 0;
  *a1 = v16;
  return result;
}

uint64_t PrepareLastHEVCFragment(uint64_t a1, _WORD *a2, unsigned int a3, const void *a4, int a5, __int16 a6, size_t __n)
{
  v13 = *MEMORY[0x1E69E9840];
  __src = a6;
  if (a5 >= 1 && *(a1 + 32) - __n - 3 >= a5)
  {
    *a1 = a5 + __n + 3;
    *(a1 + 8) = 256;
    *(a1 + 40) = *a2;
    *(a1 + 42) = (a3 >> 1) | 0x40;
    if (__n)
    {
      v11 = __n;
      memcpy((a1 + 43), &__src, __n);
    }

    else
    {
      v11 = 0;
    }

    memcpy((a1 + v11 + 43), a4, a5);
    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        PrepareLastHEVCFragment_cold_1();
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t PrepareLastH264Fragment(uint64_t a1, char a2, char a3, const void *a4, int a5, __int16 a6, size_t __n)
{
  v13 = *MEMORY[0x1E69E9840];
  __src = a6;
  if (a5 >= 1 && *(a1 + 32) - __n - 2 >= a5)
  {
    *a1 = a5 + __n + 2;
    *(a1 + 8) = 256;
    *(a1 + 40) = a2;
    *(a1 + 41) = a3 & 0x1F | 0x40;
    if (__n)
    {
      v11 = __n;
      memcpy((a1 + 42), &__src, __n);
    }

    else
    {
      v11 = 0;
    }

    memcpy((a1 + v11 + 42), a4, a5);
    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        PrepareLastH264Fragment_cold_1();
      }
    }

    return 0xFFFFFFFFLL;
  }
}

BOOL OUTLINED_FUNCTION_15_4()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_20_2()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

uint64_t compareByPref(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v6, 170, sizeof(v6));
  v7 = 0xAAAAAAAAFFFFFFFFLL;
  memset(v4, 170, sizeof(v4));
  v5 = 0xAAAAAAAAFFFFFFFFLL;
  [SDPMediaLine fillImageStruct:a1 imageStruct:v6];
  [SDPMediaLine fillImageStruct:a2 imageStruct:v4];
  if (*&v7 < *&v5)
  {
    return -1;
  }

  else
  {
    return *&v7 > *&v5;
  }
}

_OWORD *VCAudioLimiter_Allocate(__int128 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xA0uLL, 0x1020040D488A4C3uLL);
  v3 = v2;
  if (v2)
  {
    v4 = *a1;
    v5 = a1[2];
    v2[1] = a1[1];
    v2[2] = v5;
    *v2 = v4;
    *(v2 + 32) = 2;
    *(v2 + 136) = xmmword_1DBD48780;
    *(v2 + 38) = 1056964608;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCAudioLimiter_Allocate_cold_1();
    }
  }

  return v3;
}

uint64_t VCAudioLimiter_Start(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v60 = 136315650;
      v61 = v2;
      v62 = 2080;
      v63 = "VCAudioLimiter_Start";
      v64 = 1024;
      v65 = 94;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", &v60, 0x1Cu);
    }
  }

  if (!a1)
  {
    return 0;
  }

  v4 = VCAudioUnit_NewInstance((a1 + 64), 0x6366726Bu);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!v4)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCAudioLimiter_Start_cold_1();
      }
    }

    return 0;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 64);
      v60 = 136315906;
      v61 = v6;
      v62 = 2080;
      v63 = "VCAudioLimiter_Start";
      v64 = 1024;
      v65 = 104;
      v66 = 2048;
      v67 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d voiceLimiterUnit=%p VCAudioUnit_NewInstance kAudioUnitSubType_ControlFreak", &v60, 0x26u);
    }
  }

  v9 = AudioUnitSetProperty(*(a1 + 64), 0xEu, 0, 0, (a1 + 40), 4u);
  v10 = VRTraceGetErrorLogLevelForModule();
  if (v9)
  {
    VCAudioLimiter_Start_cold_2();
  }

  else
  {
    if (v10 >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 64);
        v60 = 136315906;
        v61 = v11;
        v62 = 2080;
        v63 = "VCAudioLimiter_Start";
        v64 = 1024;
        v65 = 109;
        v66 = 2048;
        v67 = v13;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d voiceLimiterUnit=%p kAudioUnitProperty_MaximumFramesPerSlice kAudioUnitScope_Global", &v60, 0x26u);
      }
    }

    v14 = AudioUnitSetProperty(*(a1 + 64), 8u, 1u, 0, a1, 0x28u);
    v15 = VRTraceGetErrorLogLevelForModule();
    if (v14)
    {
      VCAudioLimiter_Start_cold_3();
    }

    else
    {
      if (v15 >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 64);
          v60 = 136315906;
          v61 = v16;
          v62 = 2080;
          v63 = "VCAudioLimiter_Start";
          v64 = 1024;
          v65 = 113;
          v66 = 2048;
          v67 = v18;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d voiceLimiterUnit=%p kAudioUnitProperty_StreamFormat kAudioUnitScope_Input", &v60, 0x26u);
        }
      }

      v19 = AudioUnitSetProperty(*(a1 + 64), 8u, 2u, 0, a1, 0x28u);
      v20 = VRTraceGetErrorLogLevelForModule();
      if (v19)
      {
        VCAudioLimiter_Start_cold_4();
      }

      else
      {
        if (v20 >= 7)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v23 = *(a1 + 64);
            v60 = 136315906;
            v61 = v21;
            v62 = 2080;
            v63 = "VCAudioLimiter_Start";
            v64 = 1024;
            v65 = 117;
            v66 = 2048;
            v67 = v23;
            _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d voiceLimiterUnit=%p kAudioUnitProperty_StreamFormat kAudioUnitScope_Output", &v60, 0x26u);
          }
        }

        v24 = AudioUnitSetParameter(*(a1 + 64), 3u, 0, 0, *(a1 + 140), 0);
        v25 = VRTraceGetErrorLogLevelForModule();
        if (v24)
        {
          VCAudioLimiter_Start_cold_5();
        }

        else
        {
          if (v25 >= 7)
          {
            v26 = VRTraceErrorLogLevelToCSTR();
            v27 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v28 = *(a1 + 64);
              v60 = 136315906;
              v61 = v26;
              v62 = 2080;
              v63 = "VCAudioLimiter_Start";
              v64 = 1024;
              v65 = 121;
              v66 = 2048;
              v67 = v28;
              _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d voiceLimiterUnit=%p kVCAudioLimiterParameterInputThresholddB kAudioUnitScope_Global", &v60, 0x26u);
            }
          }

          v29 = AudioUnitSetParameter(*(a1 + 64), 4u, 0, 0, *(a1 + 144), 0);
          v30 = VRTraceGetErrorLogLevelForModule();
          if (v29)
          {
            VCAudioLimiter_Start_cold_6();
          }

          else
          {
            if (v30 >= 7)
            {
              v31 = VRTraceErrorLogLevelToCSTR();
              v32 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v33 = *(a1 + 64);
                v60 = 136315906;
                v61 = v31;
                v62 = 2080;
                v63 = "VCAudioLimiter_Start";
                v64 = 1024;
                v65 = 125;
                v66 = 2048;
                v67 = v33;
                _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d voiceLimiterUnit=%p kVCAudioLimiterParameterMinFastGain kAudioUnitScope_Global", &v60, 0x26u);
              }
            }

            v34 = AudioUnitSetParameter(*(a1 + 64), 5u, 0, 0, *(a1 + 148), 0);
            v35 = VRTraceGetErrorLogLevelForModule();
            if (v34)
            {
              VCAudioLimiter_Start_cold_7();
            }

            else
            {
              if (v35 >= 7)
              {
                v36 = VRTraceErrorLogLevelToCSTR();
                v37 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v38 = *(a1 + 64);
                  v60 = 136315906;
                  v61 = v36;
                  v62 = 2080;
                  v63 = "VCAudioLimiter_Start";
                  v64 = 1024;
                  v65 = 129;
                  v66 = 2048;
                  v67 = v38;
                  _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d voiceLimiterUnit=%p kVCAudioLimiterParameterFastGainReleaseTime kAudioUnitScope_Global", &v60, 0x26u);
                }
              }

              v39 = AudioUnitSetParameter(*(a1 + 64), 7u, 0, 0, *(a1 + 152), 0);
              v40 = VRTraceGetErrorLogLevelForModule();
              if (v39)
              {
                VCAudioLimiter_Start_cold_8();
              }

              else
              {
                if (v40 >= 7)
                {
                  v41 = VRTraceErrorLogLevelToCSTR();
                  v42 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v43 = *(a1 + 64);
                    v60 = 136315906;
                    v61 = v41;
                    v62 = 2080;
                    v63 = "VCAudioLimiter_Start";
                    v64 = 1024;
                    v65 = 133;
                    v66 = 2048;
                    v67 = v43;
                    _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d voiceLimiterUnit=%p kVCAudioLimiterParameterLookahead kAudioUnitScope_Global", &v60, 0x26u);
                  }
                }

                v44 = AudioUnitSetParameter(*(a1 + 64), 2u, 0, 0, *(a1 + 136), 0);
                v45 = VRTraceGetErrorLogLevelForModule();
                if (v44)
                {
                  VCAudioLimiter_Start_cold_9();
                }

                else
                {
                  if (v45 >= 7)
                  {
                    v46 = VRTraceErrorLogLevelToCSTR();
                    v47 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v48 = *(a1 + 64);
                      v60 = 136315906;
                      v61 = v46;
                      v62 = 2080;
                      v63 = "VCAudioLimiter_Start";
                      v64 = 1024;
                      v65 = 137;
                      v66 = 2048;
                      v67 = v48;
                      _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d voiceLimiterUnit=%p kVCAudioLimiterParameterInputGain kAudioUnitScope_Global", &v60, 0x26u);
                    }
                  }

                  v49 = AudioUnitInitialize(*(a1 + 64));
                  v50 = VRTraceGetErrorLogLevelForModule();
                  if (!v49)
                  {
                    if (v50 >= 7)
                    {
                      v51 = VRTraceErrorLogLevelToCSTR();
                      v52 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        v53 = *(a1 + 64);
                        v60 = 136315906;
                        v61 = v51;
                        v62 = 2080;
                        v63 = "VCAudioLimiter_Start";
                        v64 = 1024;
                        v65 = 141;
                        v66 = 2048;
                        v67 = v53;
                        _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d voiceLimiterUnit=%p AudioUnitInitialize", &v60, 0x26u);
                      }
                    }

                    v54 = 1;
                    goto LABEL_46;
                  }

                  VCAudioLimiter_Start_cold_10();
                }
              }
            }
          }
        }
      }
    }
  }

  v59 = *(a1 + 64);
  if (v59)
  {
    AudioComponentInstanceDispose(v59);
    v54 = 0;
    *(a1 + 64) = 0;
  }

  else
  {
    v54 = 0;
  }

LABEL_46:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v55 = VRTraceErrorLogLevelToCSTR();
    v56 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v57 = *(a1 + 64);
      v60 = 136316162;
      v61 = v55;
      v62 = 2080;
      v63 = "VCAudioLimiter_Start";
      v64 = 1024;
      v65 = 151;
      v66 = 2048;
      v67 = v57;
      v68 = 1024;
      v69 = v54;
      _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d voiceLimiterUnit=%p status=%{BOOL}d", &v60, 0x2Cu);
    }
  }

  return v54;
}

void VCAudioLimiter_Stop(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v2;
      v9 = 2080;
      v10 = "VCAudioLimiter_Stop";
      v11 = 1024;
      v12 = 156;
      v13 = 2048;
      v14 = a1;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stopping audioLimiter=%p", &v7, 0x26u);
    }
  }

  if (a1)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      AudioComponentInstanceDispose(v4);
      *(a1 + 64) = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "VCAudioLimiter_Stop";
        v11 = 1024;
        v12 = 164;
        v13 = 2048;
        v14 = a1;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stopped audioLimiter=%p", &v7, 0x26u);
      }
    }
  }
}

uint64_t VCAudioLimiter_Process(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    ioActionFlags = 512;
    SampleCount = VCAudioBufferList_GetSampleCount(a2);
    v9.mSampleTime = NAN;
    v9.mHostTime = 0xAAAAAAAAAAAAAAAALL;
    v9.mRateScalar = NAN;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v9.mWordClockTime = v5;
    *&v9.mSMPTETime.mType = v5;
    *&v9.mFlags = 0xAAAAAAAAAAAAAAAALL;
    VCAudioBufferList_GetAudioTimestamp(a2, &v9);
    AudioBufferList = VCAudioBufferList_GetAudioBufferList(a2);
    v7 = AudioUnitProcess(*(v2 + 64), &ioActionFlags, &v9, SampleCount, AudioBufferList);
    v2 = v7 == 0;
    if (v7)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCAudioLimiter_Process_cold_1();
        }
      }
    }
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return VRTraceErrorLogLevelToCSTR();
}

long double CalcDecayConstant(double a1, double a2)
{
  v2 = a1 * a2;
  if (v2 >= 0.00001)
  {
    return exp(-6.90775528 / v2);
  }

  else
  {
    return 0.0;
  }
}

void VCRateControlMediaController_EnableBWELogDump(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 304) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_EnableBWELogDump_cold_1();
    }
  }
}

uint64_t VCRateControlMediaController_IsAudioOnly(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 59);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCRateControlMediaController_IsAudioOnly_cold_1();
      }
    }

    v1 = 0;
  }

  return v1 & 1;
}

void VCRateControlMediaController_SetAudioOnly(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 59) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_SetAudioOnly_cold_1();
    }
  }
}

void VCRateControlMediaController_SetSenderProbingEnabled(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 146) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_SetSenderProbingEnabled_cold_1();
    }
  }
}

void VCRateControlMediaController_SetAllowVideoStop(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 63) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_SetAllowVideoStop_cold_1();
    }
  }
}

uint64_t VCRateControlMediaController_IsVideoStopped(_BYTE *a1)
{
  if (a1)
  {
    if (a1[56] & 1) != 0 || (a1[57])
    {
      v1 = 1;
    }

    else
    {
      v1 = a1[58];
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCRateControlMediaController_IsVideoStopped_cold_1();
      }
    }

    v1 = 0;
  }

  return v1 & 1;
}

uint64_t VCRateControlMediaController_IsVideoStoppedByVCRateControl(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 56);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCRateControlMediaController_IsVideoStoppedByVCRateControl_cold_1();
      }
    }

    v1 = 1;
  }

  return v1 & 1;
}

uint64_t VCRateControlMediaController_BasebandFlushCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 168);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCRateControlMediaController_BasebandFlushCount_cold_1();
  }

  return 0;
}

void VCRateControlMediaController_SetBasebandFlushCount(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 168) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_SetBasebandFlushCount_cold_1();
    }
  }
}

double VCRateControlMediaController_LastBasebandFlushCountChangeTime(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 184);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_LastBasebandFlushCountChangeTime_cold_1();
    }
  }

  return NAN;
}

void VCRateControlMediaController_SetLastBasebandFlushCountChangeTime(uint64_t a1, double a2)
{
  if (a1)
  {
    *(a1 + 184) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_SetLastBasebandFlushCountChangeTime_cold_1();
    }
  }
}

double VCRateControlMediaController_LastVideoKeyFrameTime(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 112);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_LastVideoKeyFrameTime_cold_1();
    }
  }

  return NAN;
}

uint64_t VCRateControlMediaController_TrafficMetricsFromMediaQueueTxHistory(uint64_t a1, int a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);

    return VCMediaQueue_TrafficMetricFromMediaQueueTxHistory(v2, a2);
  }

  else
  {
    VCRateControlMediaController_TrafficMetricsFromMediaQueueTxHistory_cold_1(v4);
    return v4[0];
  }
}

void VCRateControlMediaController_SetForceBBFlush(uint64_t a1, int a2, double a3)
{
  if (a1)
  {
    if (a2)
    {
      *(a1 + 232) = a3;
    }

    else
    {
      *(a1 + 232) = 0;
    }
  }

  else
  {
    VCRateControlMediaController_SetForceBBFlush_cold_1();
  }
}

void VCRateControlMediaController_UpdateBasebandSuggestion(uint64_t a1, uint64_t a2)
{
  v92 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (*a2 == 1)
    {
      *(a1 + 248) = *(a2 + 36);
      *(a1 + 252) = *(a2 + 40);
      *(a1 + 256) = *(a2 + 28) + *(a2 + 24);
      *(a1 + 260) = *(a2 + 24);
      *(a1 + 264) = *(a2 + 64);
      *(a1 + 272) = *(a2 + 80);
      v79 = 0;
      v10 = micro();
      if (*(a1 + 248) > *(a1 + 44) || !*(a1 + 256) || (VCRateControlMediaController_IsVideoStopped(a1) & 1) == 0)
      {
        *(a1 + 80) = v10;
      }

      if (*(a1 + 61))
      {
        v11 = *(a1 + 44);
        v12 = *(a1 + 252);
        v13 = v12;
        if (*(a1 + 212))
        {
          v11 = *(a1 + 212);
        }

        if (v11 * 1.5 < v13)
        {
          goto LABEL_12;
        }

        v21 = 0;
        if (v11 < v12 || v10 - *(a1 + 216) <= 0.25)
        {
LABEL_37:
          if (*(a1 + 59))
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v25 = 0;
            goto LABEL_39;
          }

          if (*(a1 + 272) > 0.2)
          {
            *(a1 + 280) = v10;
          }

          v26 = VCStatisticsCollector_Mode(*(a1 + 16));
          v27 = *(a1 + 264);
          if (v27 <= 2.0 || v26 != 4 && ((v28 = *(a1 + 112), v28 <= 0.0) || v10 - v28 <= 0.5))
          {
            if (v27 < 0.5 && (*(a1 + 288) & 1) != 0)
            {
              *(a1 + 288) = 0;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v31 = VRTraceErrorLogLevelToCSTR();
                v32 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v81 = v31;
                  v82 = 2080;
                  v83 = "VCRateControlMediaController_UpdateBasebandSuggestion";
                  v84 = 1024;
                  v85 = 599;
                  _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Baseband queue LWM is hit", buf, 0x1Cu);
                }
              }
            }

            if (*(a1 + 57) != 1 || (*(a1 + 288) & 1) != 0 || *(a1 + 68) || v10 - *(a1 + 280) <= 2.0)
            {
              v22 = 0;
              v23 = 0;
              v24 = 0;
              v25 = 0;
            }

            else
            {
              *(a1 + 57) = 0;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v39 = VRTraceErrorLogLevelToCSTR();
                v40 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v81 = v39;
                  v82 = 2080;
                  v83 = "VCRateControlMediaController_UpdateBasebandSuggestion";
                  v84 = 1024;
                  v85 = 610;
                  _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Baseband queue LWM is hit, [resume video]", buf, 0x1Cu);
                }
              }

              v41 = *(a1 + 296);
              if (v41)
              {
                VRLogfilePrintWithTimestamp(v41, "Baseband queue LWM is hit, [delay:%.3f, queueDepth:%u, BBRate:%u, audioRate:%d, audioFraction:%d, resume video]\n", v33, v34, v35, v36, v37, v38, *(a1 + 264));
              }

              v22 = 0;
              v23 = 0;
              v25 = 0;
              v24 = 1;
              v21 = 1;
            }

LABEL_97:
            if (VCRateControlMediaController_IsVideoStopped(a1) && v23 && v10 - *(a1 + 200) > 0.1)
            {
              *(a1 + 200) = v10;
              v22 = 1;
              v21 = 1;
            }

            v63 = *(a1 + 232);
            if (v63 > 0.0 && v10 - v63 > 5.0)
            {
              *(a1 + 232) = v10;
              VRLogfilePrintWithTimestamp(*(a1 + 296), "Baseband flush is forced at now=%f\n", v57, v58, v59, v60, v61, v62, SLOBYTE(v10));
              *(a1 + 192) = v10;
              *(a1 + 200) = v10;
              v23 = 1;
              v22 = 1;
              goto LABEL_104;
            }

LABEL_39:
            if (!v21)
            {
              return;
            }

LABEL_104:
            if (*(a1 + 225))
            {
              return;
            }

            v64 = *(a1 + 63);
            v65 = *(a1 + 168);
            v72 = micro();
            if (v23)
            {
              if (*(a1 + 260) || *(a1 + 232) > 0.0)
              {
                ++*(a1 + 168);
                *(a1 + 184) = v72;
                v73 = 1;
                goto LABEL_111;
              }

              v23 = 0;
            }

            v73 = 0;
LABEL_111:
            if (v22)
            {
              if (!*(a1 + 260) && *(a1 + 232) <= 0.0)
              {
                v22 = 0;
                if (v73)
                {
LABEL_116:
                  v74 = *(a1 + 296);
                  if (v74)
                  {
                    VRLogfilePrintWithTimestamp(v74, "Increase basebandFlushCount %d -> %d internally with suggestion.\n", v66, v67, v68, v69, v70, v71, v65);
                  }
                }

LABEL_118:
                v75 = MEMORY[0x1E1289F20](a1 + 8);
                v76 = v75;
                if (v64)
                {
                  v77 = v25;
                }

                else
                {
                  v77 = 0;
                }

                [v75 mediaController:a1 mediaSuggestionDidChange:(v79 << 48) | (HIBYTE(v79) << 40) | (v23 << 32) | (v22 << 24) | (v24 << 8) | v77];
                if (v76)
                {
                  CFRelease(v76);
                }

                return;
              }

              ++*(a1 + 168);
              *(a1 + 184) = v72;
              v73 = 1;
            }

            if (v73)
            {
              goto LABEL_116;
            }

            goto LABEL_118;
          }

          v29 = *(a1 + 248);
          if (v29 >= *(a1 + 44))
          {
            v42 = *(a1 + 48);
            IsVideoStopped = VCRateControlMediaController_IsVideoStopped(a1);
            if (v29 >= v42)
            {
              if ((IsVideoStopped & 1) == 0 && (8 * *(a1 + 256)) > 2 * *(a1 + 248) && v10 - *(a1 + 200) > 0.1)
              {
                v25 = 0;
                v23 = 0;
                *(a1 + 200) = v10;
                v44 = (a1 + 288);
                v21 = 1;
                v22 = 1;
                goto LABEL_85;
              }

              v25 = 0;
              v23 = 0;
LABEL_81:
              v44 = (a1 + 288);
              if (v21)
              {
                v22 = v25;
              }

              else
              {
                v22 = v25;
                if (*(a1 + 288))
                {
LABEL_96:
                  v24 = 0;
                  *v44 = 1;
                  goto LABEL_97;
                }
              }

LABEL_85:
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v51 = VRTraceErrorLogLevelToCSTR();
                v52 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v53 = "";
                  *buf = 136316418;
                  v54 = " flush audio";
                  v81 = v51;
                  if (!v23)
                  {
                    v54 = "";
                  }

                  v82 = 2080;
                  v83 = "VCRateControlMediaController_UpdateBasebandSuggestion";
                  v55 = " flush video";
                  if (!v22)
                  {
                    v55 = "";
                  }

                  v84 = 1024;
                  v85 = 580;
                  v86 = 2080;
                  v87 = v54;
                  v88 = 2080;
                  if (v25)
                  {
                    v53 = " stop video";
                  }

                  v89 = v55;
                  v90 = 2080;
                  v91 = v53;
                  _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Baseband queue HWM is hit, [mediaSuggestion:%s%s%s]", buf, 0x3Au);
                }
              }

              v56 = *(a1 + 296);
              if (v56)
              {
                VRLogfilePrintWithTimestamp(v56, "Baseband queue HWM is hit, [delay:%.3f, queueDepth:%u, BBRate:%u, minRate:%u, audioRate:%u, audioFraction:%d, mediaSuggestion:%s%s%s]\n", v45, v46, v47, v48, v49, v50, *(a1 + 264));
              }

              goto LABEL_96;
            }

            if ((IsVideoStopped & 1) == 0)
            {
              v23 = 0;
              v30 = (a1 + 200);
              v25 = 1;
              goto LABEL_79;
            }
          }

          else
          {
            if ((VCRateControlMediaController_IsVideoStopped(a1) & 1) == 0)
            {
              *(a1 + 192) = v10;
              v30 = (a1 + 200);
              v25 = 1;
LABEL_72:
              v23 = 1;
LABEL_79:
              *v30 = v10;
              v21 = 1;
              goto LABEL_80;
            }

            if ((8 * *(a1 + 256)) > 2 * *(a1 + 44))
            {
              v25 = 0;
              v30 = (a1 + 192);
              if (v10 - *(a1 + 192) <= 0.1)
              {
                v23 = 0;
LABEL_80:
                *(a1 + 57) = 1;
                goto LABEL_81;
              }

              goto LABEL_72;
            }
          }

          v25 = 0;
          v23 = 0;
          goto LABEL_80;
        }

        if (v13 + v13 >= (8 * *(a1 + 256)))
        {
LABEL_12:
          v14 = 0;
          v15 = "VCRateControl turn audio stall OFF!\n";
          v16 = &v79;
LABEL_35:
          v21 = 1;
          *v16 = 1;
          *(a1 + 61) = v14;
          VRLogfilePrintWithTimestamp(*(a1 + 296), v15, v4, v5, v6, v7, v8, v9, v78);
          goto LABEL_37;
        }
      }

      else
      {
        v19 = *(a1 + 68);
        if (v19 == 2)
        {
          v20 = 12000;
        }

        else if (v19 == 1)
        {
          v20 = 16000;
        }

        else if (v19)
        {
          v20 = -1431655766;
        }

        else
        {
          v20 = *(a1 + 52);
        }

        if (*(a1 + 44) < v20)
        {
          v20 = *(a1 + 44);
        }

        if (*(a1 + 252) < v20 && (8 * *(a1 + 256)) > 2 * *(a1 + 52))
        {
          v15 = "VCRateControl turn audio stall ON!\n";
          v14 = 1;
          v16 = (&v79 + 1);
          goto LABEL_35;
        }
      }

      v21 = 0;
      goto LABEL_37;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCRateControlMediaController_UpdateBasebandSuggestion_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v81 = v17;
      v82 = 2080;
      v83 = "VCRateControlMediaController_UpdateBasebandSuggestion";
      v84 = 1024;
      v85 = 503;
      v86 = 2048;
      v87 = a1;
      v88 = 2048;
      v89 = a2;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Invalid parameter. Rate controller=%p statistics=%p", buf, 0x30u);
    }
  }
}

void VCRateControlMediaController_SetAudioFractionTier(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 68) != a2)
    {
      *(a1 + 68) = a2;
      v2 = 1.0;
      if ((a2 - 1) < 2)
      {
        v2 = 0.0;
      }

      MediaQueue_SetAudioFraction(v2);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_SetAudioFractionTier_cold_1();
    }
  }
}

void VCRateControlMediaController_StopVideoBySmartBrake(unsigned __int8 *a1)
{
  if (a1)
  {
    a1[316] = 1;

    VCRateControlMediaController_StopVideoByVCRateControl(a1);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_StopVideoBySmartBrake_cold_1();
    }
  }
}

void VCRateControlMediaController_StopVideoByVCRateControl(unsigned __int8 *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((a1[59] & 1) == 0 && ((a1[316] & 1) != 0 || a1[63] == 1))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v2 = VRTraceErrorLogLevelToCSTR();
        v3 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v4 = a1[58];
          v5 = a1[57];
          v6 = a1[56];
          v9 = 136316418;
          v10 = v2;
          v11 = 2080;
          v12 = "VCRateControlMediaController_StopVideoByVCRateControl";
          v13 = 1024;
          v14 = 748;
          v15 = 1024;
          v16 = v4;
          v17 = 1024;
          v18 = v5;
          v19 = 1024;
          v20 = v6;
          _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Suggest to stop video from rate controller due to congestion [pause:%d,stopByBB:%d,stopByRC:%d]", &v9, 0x2Eu);
        }
      }

      if ((a1[56] & 1) == 0 && (a1[57] & 1) == 0 && (a1[58] & 1) == 0)
      {
        if (a1[316] == 1)
        {
          a1[316] = 0;
          v7 = 0x100000000000001;
        }

        else
        {
          v7 = 1;
        }

        v8 = MEMORY[0x1E1289F20](a1 + 8);
        [v8 mediaController:a1 mediaSuggestionDidChange:v7];
        if (v8)
        {
          CFRelease(v8);
        }
      }

      a1[56] = 1;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_StopVideoByVCRateControl_cold_1();
    }
  }
}

void VCRateControlMediaController_ResumeVideoBySmartBrake(unsigned __int8 *a1)
{
  if (a1)
  {
    a1[316] = 1;

    VCRateControlMediaController_ResumeVideo(a1);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_ResumeVideoBySmartBrake_cold_1();
    }
  }
}

void VCRateControlMediaController_ResumeVideo(unsigned __int8 *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((a1[59] & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v2 = VRTraceErrorLogLevelToCSTR();
        v3 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v4 = a1[58];
          v5 = a1[57];
          v6 = a1[56];
          v11 = 136316418;
          v12 = v2;
          v13 = 2080;
          v14 = "VCRateControlMediaController_ResumeVideo";
          v15 = 1024;
          v16 = 772;
          v17 = 1024;
          v18 = v4;
          v19 = 1024;
          v20 = v5;
          v21 = 1024;
          v22 = v6;
          _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Suggest to resume video from rate controller due to no congestion [pause:%d,stopByBB:%d,stopByRC:%d]", &v11, 0x2Eu);
        }
      }

      if (a1[58] == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v11 = 136315650;
            v12 = v7;
            v13 = 2080;
            v14 = "VCRateControlMediaController_ResumeVideo";
            v15 = 1024;
            v16 = 774;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Stop resuming video since user already pause the video", &v11, 0x1Cu);
          }
        }
      }

      else
      {
        if ((a1[56] & 1) != 0 || a1[57] == 1)
        {
          if (a1[316] == 1)
          {
            a1[316] = 0;
            v9 = 0x100000000000100;
          }

          else
          {
            v9 = 256;
          }

          v10 = MEMORY[0x1E1289F20](a1 + 8);
          [v10 mediaController:a1 mediaSuggestionDidChange:v9];
          if (v10)
          {
            CFRelease(v10);
          }
        }

        *(a1 + 28) = 0;
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_ResumeVideo_cold_1();
    }
  }
}

void VCRateControlMediaController_SetTargetBitrate(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    *(a1 + 52) = a2;
    *(a1 + 62) = a2 >> 5 < 0xC35;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_SetTargetBitrate_cold_1();
    }
  }
}

void VCRateControlMediaController_SetMinTargetBitrate(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 48) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_SetMinTargetBitrate_cold_1();
    }
  }
}

uint64_t VCRateControlMediaController_AudioSendingBitrate(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 44);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCRateControlMediaController_AudioSendingBitrate_cold_1();
  }

  return 0;
}

void VCRateControlMediaController_SetAudioSendingBitrate(uint64_t a1, unsigned int a2, double a3, double a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 44) = a2;
    LODWORD(a4) = *(a1 + 52);
    if (*&a4 * 1.15 < a2 && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 44);
        v8 = *(a1 + 52);
        v9 = 136316162;
        v10 = v5;
        v11 = 2080;
        v12 = "VCRateControlMediaController_SetAudioSendingBitrate";
        v13 = 1024;
        v14 = 914;
        v15 = 1024;
        v16 = v7;
        v17 = 1024;
        v18 = v8;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Audio sending bitrate %u is set much higher than the target bitrate %u", &v9, 0x28u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_SetAudioSendingBitrate_cold_1();
    }
  }
}

void VCRateControlMediaController_SetShouldDisableLargeFrameRequestsWhenInitialRampUp(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 144) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_SetShouldDisableLargeFrameRequestsWhenInitialRampUp_cold_1();
    }
  }
}

void VCRateControlMediaController_SetRateLimitedMaxTimeExceeded(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 145) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_SetRateLimitedMaxTimeExceeded_cold_1();
    }
  }
}

double VCRateControlMediaController_LastVideoRefreshFrameTime(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 104);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlMediaController_LastVideoRefreshFrameTime_cold_1();
    }
  }

  return NAN;
}

uint64_t VCRateControlMediaController_AudioFractionTier(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 68);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    VCRateControlMediaController_AudioFractionTier_cold_1();
  }

  return 0;
}

BOOL VCRateControlMediaController_RampDownAudioFraction(uint64_t a1)
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

      VCRateControlMediaController_RampDownAudioFraction_cold_1();
    }

    return 0;
  }

  if ((*(a1 + 59) & 1) != 0 || (*(a1 + 56) & 1) == 0 && (*(a1 + 57) & 1) == 0 && *(a1 + 58) != 1)
  {
    return 0;
  }

  v8 = micro();
  v9 = *(a1 + 68);
  if (v8 - *(a1 + 80) <= 2.0 || v9 == 2)
  {
    return 0;
  }

  v11 = *(a1 + 248);
  if (v11 >> 3 >= 0x753)
  {
    v12 = v11 >> 5 < 0x271;
  }

  else
  {
    v12 = 2;
  }

  *(a1 + 68) = v12;
  *(a1 + 72) = v8;
  *(a1 + 80) = v8;
  v13 = *(a1 + 296);
  if (v13)
  {
    VRLogfilePrintWithTimestamp(v13, "Change audio fraction tier from %d -> %d.\n", v2, v3, v4, v5, v6, v7, v9);
  }

  return 1;
}

BOOL VCRateControlGetLargeFrameSize(void *a1, _DWORD *a2)
{
  if (a1 && a2)
  {
    *a2 = [a1 probingLargeFrameSize];
  }

  return a1 != 0;
}

BOOL VCRateControlScheduleProbingSequence(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = 0;
    [a1 scheduleProbingSequenceWithFrameSize:a2 paddingBytes:a3 timestamp:a4 fecRatio:&v8 isProbingSequenceScheduled:?];
    if (a5)
    {
      *a5 = v8;
    }
  }

  return a1 != 0;
}

BOOL VCRateControlGetProbingSequencePacketizationInfo(void *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = [a1 probingSequencePacketCount];
    }

    if (a3)
    {
      v7 = [a1 probingSequencePacketSize];
      *a3 = v7;
      if (a4)
      {
        *a4 = v7;
      }
    }
  }

  return a1 != 0;
}

BOOL VCRateControlPauseVideo(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 pauseVideoByUser:a2];
  }

  return a1 != 0;
}

BOOL VCRateControlSetAFRCBandwidth(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && ![a1 statisticsCollector])
  {
    [a1 setAfrcRemoteEstimatedBandwidth:a2];
    [a1 setTargetBitrate:a3];
  }

  return a1 != 0;
}

uint64_t VCConnection_Priority(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 28);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCConnection_Priority";
      v8 = 1024;
      v9 = 48;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v4, 0x1Cu);
    }
  }

  return 0xFFFFFFFFLL;
}

void VCConnection_SetPriority(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 28) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCConnection_SetPriority";
      v8 = 1024;
      v9 = 56;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v4, 0x1Cu);
    }
  }
}

uint64_t VCConnection_IsLocalOnWired(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 160);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsLocalOnWired";
        v9 = 1024;
        v10 = 362;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsLocalOnWiFiOrWired(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 128);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsLocalOnWiFiOrWired";
        v9 = 1024;
        v10 = 330;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsRemoteOnWired(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 168);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsRemoteOnWired";
        v9 = 1024;
        v10 = 370;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsRemoteOnWiFiOrWired(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 136);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsRemoteOnWiFiOrWired";
        v9 = 1024;
        v10 = 338;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsRelay(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 48);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsRelay";
        v9 = 1024;
        v10 = 248;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsEndToEndLink(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 184);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsEndToEndLink";
        v9 = 1024;
        v10 = 386;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsIPv6(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 80);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsIPv6";
        v9 = 1024;
        v10 = 282;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_MatchesSourceDestinationInfo(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v4 = *(a1 + 32);

    return v4();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136316162;
        v9 = v6;
        v10 = 2080;
        v11 = "VCConnection_MatchesSourceDestinationInfo";
        v12 = 1024;
        v13 = 232;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = a2;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NULL instance=%p or sourceDest=%p passed", &v8, 0x30u);
      }
    }

    return 0;
  }
}

void VCConnection_SourceDestinationInfo(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v4 = *(a1 + 40);

    v4();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "VCConnection_SourceDestinationInfo";
      v11 = 1024;
      v12 = 240;
      v13 = 2048;
      v14 = a1;
      v15 = 2048;
      v16 = a2;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance=%p or sourceDestinationInfo=%p passed", &v7, 0x30u);
    }
  }
}

uint64_t VCConnection_Equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      return (*(a1 + 56))();
    }

    return 0;
  }

  return v2;
}

uint64_t VCConnection_IsLocalOnCellular(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 64);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsLocalOnCellular";
        v9 = 1024;
        v10 = 266;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsRemoteOnCellular(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 72);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsRemoteOnCellular";
        v9 = 1024;
        v10 = 274;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_LocalCellTech(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 88);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_LocalCellTech";
        v9 = 1024;
        v10 = 290;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

void VCConnection_SetLocalCellTech(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 96);

    v1();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCConnection_SetLocalCellTech";
      v8 = 1024;
      v9 = 298;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v4, 0x1Cu);
    }
  }
}

uint64_t VCConnection_RemoteCellTech(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 104);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_RemoteCellTech";
        v9 = 1024;
        v10 = 306;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

void VCConnection_SetRemoteCellTech(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 112);

    v1();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "VCConnection_SetRemoteCellTech";
      v8 = 1024;
      v9 = 314;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v4, 0x1Cu);
    }
  }
}

uint64_t VCConnection_CopyDescription(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 120);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_CopyDescription";
        v9 = 1024;
        v10 = 322;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsLocalOnWiFi(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 144);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsLocalOnWiFi";
        v9 = 1024;
        v10 = 346;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsRemoteOnWiFi(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 152);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsRemoteOnWiFi";
        v9 = 1024;
        v10 = 354;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsOnSameInterfacesWithConnection(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 176);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsOnSameInterfacesWithConnection";
        v9 = 1024;
        v10 = 378;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_ConnectionID(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 192);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_ConnectionID";
        v9 = 1024;
        v10 = 394;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsLocalExpensive(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 200);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsLocalExpensive";
        v9 = 1024;
        v10 = 402;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsLocalConstrained(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 208);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsLocalConstrained";
        v9 = 1024;
        v10 = 410;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsRemoteExpensive(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 216);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsRemoteExpensive";
        v9 = 1024;
        v10 = 418;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsRemoteConstrained(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 224);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsRemoteConstrained";
        v9 = 1024;
        v10 = 426;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_ReportingIPVersion(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 232);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_ReportingIPVersion";
        v9 = 1024;
        v10 = 434;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_ReportingConnectionInterface(uint64_t (**a1)(void), int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCConnection_ReportingConnectionInterface_cold_1(&v7);
    return v7;
  }

  if (a2)
  {
    v3 = a1[16](a1);
    v4 = a1[18](a1);
    if (v3)
    {
      goto LABEL_4;
    }

    return 67;
  }

  v6 = a1[17](a1);
  v4 = a1[19](a1);
  if (!v6)
  {
    return 67;
  }

LABEL_4:
  if (v4)
  {
    return 87;
  }

  else
  {
    return 69;
  }
}

uint64_t VCConnection_ReportingConnectionType(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 48))())
    {
      return 82;
    }

    else
    {
      return 80;
    }
  }

  else
  {
    VCConnection_ReportingConnectionType_cold_1(&v2);
    return v2;
  }
}

uint64_t VCConnection_ReportingQRServerConfig(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 240);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_ReportingQRServerConfig";
        v9 = 1024;
        v10 = 468;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_ReportingSliceStatus(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 248);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_ReportingSliceStatus";
        v9 = 1024;
        v10 = 477;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_IsHopByHopEncryptionSupported(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 256);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_IsHopByHopEncryptionSupported";
        v9 = 1024;
        v10 = 485;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_QRExperiments(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 264);

    return v1();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "VCConnection_QRExperiments";
        v9 = 1024;
        v10 = 493;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d nil instance passed", &v5, 0x1Cu);
      }
    }

    return 0;
  }
}

uint64_t VCConnection_PerPacketConnectionOverhead(uint64_t a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16);
  }

  VCConnection_PerPacketConnectionOverhead_cold_1(v2);
  return v2[0];
}

uint64_t VCConnection_GetDataMode(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 200))())
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    if ((*(a1 + 216))(a1))
    {
      v2 |= 8u;
    }

    v3 = v2 | (*(a1 + 208))(a1);
    if ((*(a1 + 224))(a1))
    {
      return v3 | 8;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    VCConnection_GetDataMode_cold_1(&v5);
    return v5;
  }
}

uint64_t DLCreateHandle(uint64_t *a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v81 = *MEMORY[0x1E69E9840];
  v80.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v80.__opaque = 0xAAAAAAAAAAAAAAAALL;
  if (a3 && *(a3 + 4) == 1)
  {
    v16 = malloc_type_calloc(1uLL, 0x408uLL, 0x10A004066E76C10uLL);
    if (v16)
    {
      v17 = v16;
      *(v16 + 1) = a2;
      *(v16 + 2) = a6;
      *(v16 + 252) = 0;
      *(v16 + 3) = a4;
      v16[127] = a7;
      v16[128] = a8;
      v18 = MQCreateHandle(v16 + 121);
      if ((v18 & 0x80000000) == 0)
      {
        pthread_mutexattr_init(&v80);
        pthread_mutexattr_settype(&v80, 2);
        pthread_mutex_init((v17 + 70), &v80);
        pthread_mutexattr_destroy(&v80);
        if (a2)
        {
          v19 = 1;
        }

        else
        {
          v19 = 7;
        }

        *v17 = v19;
        *(v17 + 8) = *(a3 + 568);
        v20 = *(a3 + 728);
        v21 = *(a3 + 712);
        *(v17 + 36) = *(a3 + 696);
        *(v17 + 68) = v20;
        *(v17 + 52) = v21;
        v23 = *(a3 + 736);
        v22 = *(a3 + 752);
        *(v17 + 108) = *(a3 + 768);
        *(v17 + 76) = v23;
        *(v17 + 92) = v22;
        v25 = *(a3 + 776);
        v24 = *(a3 + 792);
        *(v17 + 148) = *(a3 + 808);
        *(v17 + 116) = v25;
        *(v17 + 132) = v24;
        v27 = *(a3 + 816);
        v26 = *(a3 + 832);
        *(v17 + 188) = *(a3 + 848);
        *(v17 + 156) = v27;
        *(v17 + 172) = v26;
        v29 = *(a3 + 856);
        v28 = *(a3 + 872);
        *(v17 + 228) = *(a3 + 888);
        *(v17 + 196) = v29;
        *(v17 + 212) = v28;
        if (IsIPPORTValid())
        {
          v30 = *(a3 + 856);
          v31 = *(a3 + 872);
          *(v17 + 188) = *(a3 + 888);
          *(v17 + 172) = v31;
          *(v17 + 156) = v30;
        }

        v32 = *(a3 + 504);
        if (v32)
        {
          v33 = *(a3 + 208);
          if (v33)
          {
            v34 = *(a3 + 312);
            if (v34)
            {
              v35 = *(a3 + 480);
              if (v35)
              {
                v36 = *(a3 + 272);
                if (v36)
                {
                  strncpy(v17 + 510, (v32 + 4), 4uLL);
                  strncpy(v17 + 236, v33, 0x3CuLL);
                  if (!a4)
                  {
                    strncpy(v17 + 296, v34, 0x2BuLL);
                    strncpy(v17 + 339, v35, 0x2BuLL);
                    strncpy(v17 + 382, (v34 + 156), 0x40uLL);
                    v17[2] = *v36;
                    v17[3] = 0;
                    v58 = *(v34 + 108);
                    v59 = *(v34 + 140);
                    v60 = *(v34 + 92);
                    *(v17 + 44) = *(v34 + 124);
                    *(v17 + 45) = v59;
                    *(v17 + 42) = v60;
                    *(v17 + 43) = v58;
                    v61 = *(v34 + 44);
                    v62 = *(v34 + 76);
                    *(v17 + 40) = *(v34 + 60);
                    *(v17 + 41) = v62;
                    *(v17 + 39) = v61;
                    v63 = *(v35 + 108);
                    v64 = *(v35 + 140);
                    v65 = *(v35 + 92);
                    *(v17 + 51) = *(v35 + 124);
                    *(v17 + 52) = v64;
                    *(v17 + 49) = v65;
                    *(v17 + 50) = v63;
                    v66 = *(v35 + 44);
                    v67 = *(v35 + 76);
                    *(v17 + 47) = *(v35 + 60);
                    *(v17 + 48) = v67;
                    *(v17 + 46) = v66;
LABEL_33:
                    v17[124] = a5;
                    Handle = CreateHandle();
                    *a1 = Handle;
                    if (Handle != 0xFFFFFFFFLL)
                    {
                      return 0;
                    }

                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        DLCreateHandle_cold_1();
                      }
                    }

                    pthread_mutex_destroy((v17 + 70));
                    MQCloseHandle();
                    free(v17);
                    return 2148270085;
                  }

                  v37 = *(a3 + 224);
                  if (v37)
                  {
                    v38 = *(a3 + 496);
                    strncpy(v17 + 296, v35, 0x2BuLL);
                    strncpy(v17 + 339, v34, 0x2BuLL);
                    strncpy(v17 + 446, (v34 + 156), 0x40uLL);
                    if (v38)
                    {
                      strncpy(v17 + 514, v38, 0x2BuLL);
                    }

                    v39 = *v36;
                    v17[2] = 0;
                    v17[3] = v39;
                    v40 = *(v37 + 44);
                    v41 = *(v37 + 76);
                    *(v17 + 54) = *(v37 + 60);
                    *(v17 + 55) = v41;
                    *(v17 + 53) = v40;
                    v42 = *(v37 + 92);
                    v43 = *(v37 + 108);
                    v44 = *(v37 + 140);
                    *(v17 + 58) = *(v37 + 124);
                    *(v17 + 59) = v44;
                    *(v17 + 56) = v42;
                    *(v17 + 57) = v43;
                    v45 = *(v35 + 108);
                    v46 = *(v35 + 140);
                    v47 = *(v35 + 92);
                    *(v17 + 44) = *(v35 + 124);
                    *(v17 + 45) = v46;
                    *(v17 + 42) = v47;
                    *(v17 + 43) = v45;
                    v48 = *(v35 + 44);
                    v49 = *(v35 + 76);
                    *(v17 + 40) = *(v35 + 60);
                    *(v17 + 41) = v49;
                    *(v17 + 39) = v48;
                    v50 = *(v34 + 44);
                    v51 = *(v34 + 76);
                    *(v17 + 47) = *(v34 + 60);
                    *(v17 + 48) = v51;
                    *(v17 + 46) = v50;
                    v52 = *(v34 + 92);
                    v53 = *(v34 + 108);
                    v54 = *(v34 + 140);
                    *(v17 + 51) = *(v34 + 124);
                    *(v17 + 52) = v54;
                    *(v17 + 49) = v52;
                    *(v17 + 50) = v53;
                    *(v17 + 240) = *(v37 + 156);
                    goto LABEL_33;
                  }
                }
              }
            }
          }
        }

        pthread_mutex_destroy((v17 + 70));
        MQCloseHandle();
        free(v17);
        return 2148270114;
      }

      v55 = v18;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          DLCreateHandle_cold_2();
        }
      }

      free(v17);
    }

    else if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 2148270083;
    }

    else
    {
      VRTraceErrorLogLevelToCSTR();
      v55 = 2148270083;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        DLCreateHandle_cold_3();
      }
    }
  }

  else
  {
    v55 = 2148270081;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v56 = VRTraceErrorLogLevelToCSTR();
      v57 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v70 = 136316162;
        v71 = v56;
        v72 = 2080;
        v73 = "DLCreateHandle";
        v74 = 1024;
        v75 = 74;
        v76 = 1024;
        v77 = 74;
        v78 = 2048;
        v79 = a3;
        _os_log_impl(&dword_1DB56E000, v57, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Dialog.c:%d: Invalid Request message(%p)", &v70, 0x2Cu);
      }
    }
  }

  return v55;
}

uint64_t DLCloseHandle()
{
  v0 = 2148270082;
  v1 = CheckInHandleDebug();
  if (v1)
  {
    v2 = v1;
    pthread_mutex_lock((v1 + 560));
    v3 = CheckInHandleDebug();
    *(v2 + 1004) = 1;
    pthread_mutex_unlock((v2 + 560));
    CheckOutHandleDebug();
    if (v3)
    {
      MQCloseHandle();
      CheckOutHandleDebug();
      v4 = *(v3 + 976);
      if (v4)
      {
        FreeSipMsg(v4);
      }

      pthread_mutex_destroy((v3 + 560));
      v5 = *(v3 + 1016);
      if (v5)
      {
        v5(*(v3 + 1024), *(v3 + 4), 0);
      }

      free(v3);
      return 0;
    }
  }

  return v0;
}

uint64_t DLUpdate(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = 2148270081;
  if (a2 && *(a2 + 4) == 2)
  {
    v4 = *(a2 + 272);
    if (v4)
    {
      v5 = CheckInHandleDebug();
      if (v5)
      {
        v6 = v5;
        pthread_mutex_lock((v5 + 560));
        v7 = *(v4 + 8);
        if ((v7 - 3) < 2)
        {
          if ((*(a2 + 8) - 6) <= 0x2E)
          {
            *v6 = 6;
          }

          goto LABEL_32;
        }

        if (v7 != 1)
        {
          goto LABEL_32;
        }

        if ((*(a2 + 8) - 1) > 4)
        {
          v12 = 3;
        }

        else
        {
          if (*v6 > 1u)
          {
LABEL_22:
            v13 = *(a2 + 480);
            if (!*(v6 + 12))
            {
              v17 = *(a2 + 224);
              v18 = *(a2 + 496);
              if (v13)
              {
                strncpy((v6 + 446), (v13 + 156), 0x40uLL);
              }

              if (v17)
              {
                v19 = *(v17 + 44);
                v20 = *(v17 + 76);
                *(v6 + 864) = *(v17 + 60);
                *(v6 + 880) = v20;
                *(v6 + 848) = v19;
                v21 = *(v17 + 92);
                v22 = *(v17 + 108);
                v23 = *(v17 + 140);
                *(v6 + 928) = *(v17 + 124);
                *(v6 + 944) = v23;
                *(v6 + 896) = v21;
                *(v6 + 912) = v22;
                *(v6 + 960) = *(v17 + 156);
              }

              if (!v18)
              {
                goto LABEL_32;
              }

              v14 = (v6 + 514);
              v15 = v18;
              v16 = 43;
              goto LABEL_31;
            }

            if (v13)
            {
              v14 = (v6 + 382);
              v15 = (v13 + 156);
              v16 = 64;
LABEL_31:
              strncpy(v14, v15, v16);
            }

LABEL_32:
            pthread_mutex_unlock((v6 + 560));
            CheckOutHandleDebug();
            return 0;
          }

          v12 = 2;
        }

        *v6 = v12;
        goto LABEL_22;
      }

      return 2148270082;
    }

    else
    {
      return 2148270114;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v10 = *(a2 + 4);
        v11 = *(a2 + 8);
      }

      else
      {
        v10 = -1;
        v11 = -1;
      }

      v25 = 136316674;
      v26 = v8;
      v27 = 2080;
      v28 = "DLUpdate";
      v29 = 1024;
      v30 = 238;
      v31 = 1024;
      v32 = 238;
      v33 = 2048;
      v34 = a2;
      v35 = 1024;
      v36 = v10;
      v37 = 1024;
      v38 = v11;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Dialog.c:%d: Invalid Response message(%p,%d,%d)", &v25, 0x38u);
    }
  }

  return v3;
}

uint64_t DLFindWithSipMsgAndLock(uint64_t *a1, uint64_t a2)
{
  v2 = 2148270081;
  if (a1 && a2)
  {
    Handle = FindHandle();
    *a1 = Handle;
    if (Handle == 0xFFFFFFFFLL)
    {
      return 2148270102;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t MatchSipMsgAndLock(uint64_t a1, uint64_t a2)
{
  result = 0;
  v48 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v5 = *(a2 + 208);
    v6 = *(a2 + 312);
    v7 = *(a2 + 480);
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || v7 == 0)
    {
      return 0;
    }

    pthread_mutex_lock((a1 + 560));
    if (*(a1 + 1004))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v30 = 136315650;
          v31 = v10;
          v32 = 2080;
          v33 = "MatchSipMsgAndLock";
          v34 = 1024;
          v35 = 322;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d MatchSipMsgAndLock: got a closing handle.", &v30, 0x1Cu);
        }
      }

      goto LABEL_45;
    }

    if (*a1 == 7 || *a1 == 1)
    {
      v12 = *(a2 + 4);
      if (v12 != 1)
      {
        if (v12 != 2)
        {
          goto LABEL_45;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v30 = 136316674;
            v31 = v13;
            v32 = 2080;
            v33 = "MatchSipMsgAndLock";
            v34 = 1024;
            v35 = 329;
            v36 = 2080;
            v37 = a1 + 236;
            v38 = 2080;
            v39 = v5;
            v40 = 2080;
            v41 = a1 + 382;
            v42 = 2080;
            v43 = v6 + 156;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Dialog(CREATED) Match(STATUS) [%s]=[%s], [%s]=[%s]\n", &v30, 0x44u);
          }
        }

        if (strcmp((a1 + 236), v5))
        {
          goto LABEL_45;
        }

        v15 = (a1 + 382);
        goto LABEL_38;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v30 = 136316674;
          v31 = v22;
          v32 = 2080;
          v33 = "MatchSipMsgAndLock";
          v34 = 1024;
          v35 = 339;
          v36 = 2080;
          v37 = a1 + 236;
          v38 = 2080;
          v39 = v5;
          v40 = 2080;
          v41 = a1 + 446;
          v42 = 2080;
          v43 = v6 + 156;
          _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Dialog(CREATED) Match(REQUEST) [%s]=[%s], [%s]=[%s]\n", &v30, 0x44u);
        }
      }

      v24 = (a1 + 236);
      v25 = v5;
    }

    else
    {
      v16 = *(a2 + 4);
      if (v16 != 1)
      {
        if (v16 != 2)
        {
          goto LABEL_45;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v30 = 136317186;
            v31 = v17;
            v32 = 2080;
            v33 = "MatchSipMsgAndLock";
            v34 = 1024;
            v35 = 352;
            v36 = 2080;
            v37 = a1 + 236;
            v38 = 2080;
            v39 = v5;
            v40 = 2080;
            v41 = a1 + 382;
            v42 = 2080;
            v43 = v6 + 156;
            v44 = 2080;
            v45 = a1 + 446;
            v46 = 2080;
            v47 = v7 + 156;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Dialog Match(STATUS): [%s]=[%s], [%s]=[%s], [%s]=[%s]\n", &v30, 0x58u);
          }
        }

        if (strcmp((a1 + 236), v5) || strcmp((a1 + 382), (v6 + 156)))
        {
          goto LABEL_45;
        }

        v20 = *(v7 + 156);
        v19 = (v7 + 156);
        if (!v20)
        {
          return 1;
        }

        v15 = (a1 + 446);
        v21 = v19;
        goto LABEL_39;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v30 = 136317186;
          v31 = v26;
          v32 = 2080;
          v33 = "MatchSipMsgAndLock";
          v34 = 1024;
          v35 = 365;
          v36 = 2080;
          v37 = a1 + 236;
          v38 = 2080;
          v39 = v5;
          v40 = 2080;
          v41 = a1 + 382;
          v42 = 2080;
          v43 = v7 + 156;
          v44 = 2080;
          v45 = a1 + 446;
          v46 = 2080;
          v47 = v6 + 156;
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Dialog Match(REQUEST): [%s]=[%s], [%s]=[%s], [%s]=[%s]\n", &v30, 0x58u);
        }
      }

      if (strcmp((a1 + 236), v5))
      {
        goto LABEL_45;
      }

      v29 = *(v7 + 156);
      v28 = (v7 + 156);
      if (!v29)
      {
        goto LABEL_37;
      }

      v24 = (a1 + 382);
      v25 = v28;
    }

    if (strcmp(v24, v25))
    {
      goto LABEL_45;
    }

LABEL_37:
    v15 = (a1 + 446);
LABEL_38:
    v21 = (v6 + 156);
LABEL_39:
    if (!strcmp(v15, v21))
    {
      return 1;
    }

LABEL_45:
    pthread_mutex_unlock((a1 + 560));
    return 0;
  }

  return result;
}

uint64_t DLFindWithCallIDAndLock(uint64_t *a1)
{
  v1 = 2148270081;
  if (a1)
  {
    Handle = FindHandle();
    *a1 = Handle;
    if (Handle == 0xFFFFFFFFLL)
    {
      return 2148270102;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t MatchCallIDAndLock(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    pthread_mutex_lock((result + 560));
    if (*(v3 + 1004) || *(v3 + 4) != a2)
    {
      pthread_mutex_unlock((v3 + 560));
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t DLFindActiveDialogs(_DWORD *a1, void *a2)
{
  v2 = 2148270081;
  if (a1 && a2)
  {
    *a1 = 0;
    *a2 = 0;
    FindHandle();
    return 0;
  }

  return v2;
}

uint64_t FindActive(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (a1[1] != *(a2 + 16) && (*a1 & 0xFFFFFFFE) == 2)
  {
    v5 = malloc_type_realloc(**(a2 + 24), 8 * **(a2 + 8) + 8, 0x2004093837F09uLL);
    if (v5)
    {
      **(a2 + 24) = v5;
      v6 = **(a2 + 24);
      v7 = *(a2 + 8);
      v8 = *v7;
      *v7 = v8 + 1;
      *(v6 + 8 * v8) = a3;
    }
  }

  return 0;
}

uint64_t DLCountActiveDialogs(_DWORD *a1)
{
  if (!a1)
  {
    return 2148270081;
  }

  *a1 = 0;
  FindHandle();
  return 0;
}

uint64_t CountActive(_DWORD *a1, _DWORD *a2)
{
  if ((*a1 & 0xFFFFFFFE) == 2)
  {
    ++*a2;
  }

  return 0;
}

uint64_t DLUnlock()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2148270082;
  }

  pthread_mutex_unlock((v0 + 560));
  CheckOutHandleDebug();
  return 0;
}

uint64_t DLSetConfIndex(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148270082;
  }

  *(v3 + 8) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t DLGetData(uint64_t a1, uint64_t a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148270082;
  }

  v4 = v3;
  *a2 = *(v3 + 12);
  *(a2 + 4) = *(v3 + 4);
  *(a2 + 16) = *(v3 + 16);
  *(a2 + 24) = *(v3 + 32);
  v5 = *(v3 + 36);
  v6 = *(v3 + 52);
  *(a2 + 60) = *(v3 + 68);
  *(a2 + 44) = v6;
  *(a2 + 28) = v5;
  v7 = *(v3 + 76);
  v8 = *(v3 + 92);
  *(a2 + 100) = *(v3 + 108);
  *(a2 + 84) = v8;
  *(a2 + 68) = v7;
  v9 = *(v3 + 116);
  v10 = *(v3 + 132);
  *(a2 + 140) = *(v3 + 148);
  *(a2 + 124) = v10;
  *(a2 + 108) = v9;
  v11 = *(v3 + 156);
  v12 = *(v3 + 172);
  *(a2 + 180) = *(v3 + 188);
  *(a2 + 164) = v12;
  *(a2 + 148) = v11;
  v13 = *(v3 + 196);
  v14 = *(v3 + 212);
  *(a2 + 220) = *(v3 + 228);
  *(a2 + 204) = v14;
  *(a2 + 188) = v13;
  strncpy((a2 + 228), (v3 + 236), 0x3CuLL);
  strncpy((a2 + 288), (v4 + 296), 0x2BuLL);
  strncpy((a2 + 331), (v4 + 339), 0x2BuLL);
  strncpy((a2 + 374), (v4 + 382), 0x40uLL);
  strncpy((a2 + 438), (v4 + 446), 0x40uLL);
  strncpy((a2 + 502), (v4 + 510), 4uLL);
  strncpy((a2 + 506), (v4 + 514), 0x2BuLL);
  v15 = *(v4 + 624);
  v16 = *(v4 + 656);
  *(a2 + 568) = *(v4 + 640);
  *(a2 + 584) = v16;
  *(a2 + 552) = v15;
  v17 = *(v4 + 672);
  v18 = *(v4 + 688);
  v19 = *(v4 + 720);
  *(a2 + 632) = *(v4 + 704);
  *(a2 + 648) = v19;
  *(a2 + 600) = v17;
  *(a2 + 616) = v18;
  v20 = *(v4 + 736);
  v21 = *(v4 + 768);
  *(a2 + 680) = *(v4 + 752);
  *(a2 + 696) = v21;
  *(a2 + 664) = v20;
  v22 = *(v4 + 784);
  v23 = *(v4 + 800);
  v24 = *(v4 + 832);
  *(a2 + 744) = *(v4 + 816);
  *(a2 + 760) = v24;
  *(a2 + 712) = v22;
  *(a2 + 728) = v23;
  v25 = *(v4 + 848);
  v26 = *(v4 + 880);
  *(a2 + 792) = *(v4 + 864);
  *(a2 + 808) = v26;
  *(a2 + 776) = v25;
  v27 = *(v4 + 896);
  v28 = *(v4 + 912);
  v29 = *(v4 + 944);
  *(a2 + 856) = *(v4 + 928);
  *(a2 + 872) = v29;
  *(a2 + 824) = v27;
  *(a2 + 840) = v28;
  *(a2 + 888) = *(v4 + 960);
  *(a2 + 892) = *(v4 + 984);
  *(a2 + 896) = *(v4 + 992);
  CheckOutHandleDebug();
  return 0;
}

uint64_t DLSetState(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148270082;
  }

  *v3 = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t DLGetState(uint64_t a1, _DWORD *a2)
{
  v2 = 2148270081;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *a2 = *v4;
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2148270082;
    }
  }

  return v2;
}

uint64_t DLGetCallID(uint64_t a1, _DWORD *a2)
{
  v2 = 2148270081;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      *a2 = *(v4 + 4);
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2148270082;
    }
  }

  return v2;
}