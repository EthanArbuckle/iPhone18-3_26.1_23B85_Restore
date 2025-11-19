uint64_t MediaQueue_FreePacket(uint64_t a1, uint64_t a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149580802;
  }

  MediaQueue_Free(v3, a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_AddPacket(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = 2149580802;
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    pthread_mutex_lock((v4 + 392));
    if (!*(v5 + 8))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          MediaQueue_AddPacket_cold_1();
        }
      }

      pthread_mutex_unlock((v5 + 392));
      v3 = 2149580818;
      goto LABEL_37;
    }

    *(a2 + 1568) = 0;
    if (!*(a2 + 1516) && *(v5 + 25552) == 1)
    {
      processAudioPktForCellularQueuing_new(v5, a2);
    }

    v6 = micro();
    v8 = *(a2 + 1516) == 1 && (v7 = *(v5 + 25536), v7 > 0.0) && v6 - v7 > 0.07;
    *(a2 + 1596) = v8;
    active = Throttling_MediaQueue_AddPacket_ScheduleAndActiveProbing(v5 + 584, v5 + 632, (v5 + 504), a2, v6);
    if (active >= 1)
    {
      v10 = *(v5 + 624) + active;
      *(v5 + 624) = v10;
      _MediaQueue_CheckActiveProbingQueueLength(v10);
      pthread_cond_signal((v5 + 456));
    }

    pthread_mutex_unlock((v5 + 392));
    v11 = *(a2 + 1512);
    v12 = *(a2 + 1506);
    v13 = CheckInHandleDebug();
    if (!v13)
    {
LABEL_36:
      v3 = 0;
LABEL_37:
      CheckOutHandleDebug();
      return v3;
    }

    v14 = v13;
    v15 = bswap32(v11);
    v16 = __rev16(v12);
    pthread_mutex_lock(v13 + 8);
    sig = v14[9].__sig;
    if (sig)
    {
      while (*sig != v15)
      {
        sig = *(sig + 16);
        if (!sig)
        {
          goto LABEL_16;
        }
      }

      v25 = *(sig + 8);
      v26 = v16 | (v25 << 16);
      *(a2 + 1532) = v26;
      *(sig + 4) = v26;
      if (v12 == 0xFFFF)
      {
        *(sig + 8) = v25 + 1;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v27 = VRTraceErrorLogLevelToCSTR();
          v28 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(sig + 8);
            v31 = 136316162;
            v32 = v27;
            v33 = 2080;
            v34 = "MediaQueue_UpdateSeqNumber";
            v35 = 1024;
            v36 = 810;
            v37 = 1024;
            v38 = v15;
            v39 = 1024;
            v40 = v29;
            _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP(%08X): seq number wc %d", &v31, 0x28u);
          }
        }
      }
    }

    else
    {
LABEL_16:
      v18 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200406E52F545uLL);
      if (!v18)
      {
        pthread_mutex_unlock(v14 + 8);
LABEL_35:
        CheckOutHandleDebug();
        goto LABEL_36;
      }

      v19 = v18;
      *v18 = v15;
      *(a2 + 1532) = v16;
      v18[1] = v16;
      if (v12 == 0xFFFF)
      {
        ++v18[2];
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v22 = v19[2];
            v31 = 136316162;
            v32 = v20;
            v33 = 2080;
            v34 = "MediaQueue_UpdateSeqNumber";
            v35 = 1024;
            v36 = 830;
            v37 = 1024;
            v38 = v15;
            v39 = 1024;
            v40 = v22;
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP(%08X): seq number wc %d", &v31, 0x28u);
          }
        }
      }

      v23 = v14[9].__sig;
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *(v23 + 16);
        }

        while (v23);
        *(v24 + 16) = v19;
      }

      else
      {
        v14[9].__sig = v19;
      }
    }

    pthread_mutex_unlock(v14 + 8);
    goto LABEL_35;
  }

  return v3;
}

uint64_t processAudioPktForCellularQueuing_new(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a1 + 24576;
  if (*(a1 + 25588) == 1)
  {
    *(a1 + 25588) = 0;
    *(a1 + 25592) = bswap32(*(a2 + 1508));
  }

  if (*(a2 + 1528))
  {
    v5 = 48;
  }

  else
  {
    v5 = 28;
  }

  *(a1 + 25584) += *a2 + v5;
  v6 = micro();
  v7 = v6 - *(a1 + 25560);
  if (v7 > 1.0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 25560);
        v14 = 136316162;
        v15 = v8;
        v16 = 2080;
        v17 = "processAudioPktForCellularQueuing_new";
        v18 = 1024;
        v19 = 2517;
        v20 = 2048;
        v21 = v6;
        v22 = 2048;
        v23 = v10;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d processAudioPktForCellularQueuing_new: UNEXPECTED pending flush not acked yet: dNow: %f lastFlush: %f ", &v14, 0x30u);
      }
    }

    v11 = ((8 * *(v4 + 1008)) / v7);
    *(v4 + 1008) = 0;
    if (*MEMORY[0x1E6986638] >= 5)
    {
      processAudioPktForCellularQueuing_new_cold_1();
    }

    v12 = *(v4 + 1016);
    LOWORD(v14) = 0;
    RTPFlushBaseband_SpecialMQAudioTS(*(a1 + 936), v12 + 1, v11, &v14);
    *(v4 + 1020) = v14;
    *(a1 + 25560) = v6;
    *(v4 + 977) = 1;
    *(a1 + 25576) = *(a1 + 25568);
    *(a1 + 25568) = 0;
    *(v4 + 1016) = bswap32(*(a2 + 1508));
  }

  return 0;
}

void _MediaQueue_CheckActiveProbingQueueLength(int a1)
{
  if (a1 >= 200 && !(a1 % 0x14u) && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _MediaQueue_CheckActiveProbingQueueLength_cold_1();
    }
  }
}

uint64_t MediaQueue_RexmitPacket(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = 2149580802;
  v8 = CheckInHandleDebug();
  if (v8)
  {
    v9 = v8;
    if (*(v8 + 8))
    {
      v10 = CheckInHandleDebug();
      if (!v10)
      {
        goto LABEL_53;
      }

      v11 = v10;
      pthread_mutex_lock(v10 + 8);
      sig = v11[9].__sig;
      if (sig)
      {
        while (*sig != a2)
        {
          sig = *(sig + 16);
          if (!sig)
          {
            goto LABEL_7;
          }
        }

        v14 = 0;
        v7 = 0;
        v13 = *(sig + 4);
      }

      else
      {
LABEL_7:
        v13 = 0;
        v7 = 2149580822;
        v14 = 1;
      }

      pthread_mutex_unlock(v11 + 8);
      CheckOutHandleDebug();
      if (!v14)
      {
        v15 = a3 - v13 + v13;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v33 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            v35 = v33;
            v36 = 2080;
            v37 = "MediaQueue_RexmitPacket";
            v38 = 1024;
            v39 = 1004;
            v40 = 1024;
            v41 = v13;
            v42 = 1024;
            v43 = a3;
            v44 = 1024;
            v45 = a3 - v13 + v13;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MQ_Rexmit iLastSN(%08X) wSN(%04X) iSN(%08X)", buf, 0x2Eu);
          }
        }

        pthread_mutex_lock((v9 + 312));
        v17 = *(v9 + 376);
        if (v17)
        {
          v18 = bswap32(*(v17 + 1512));
          v19 = *(v17 + 1532);
          v20 = v18 == a2;
          if (v15 == v19 && v18 == a2)
          {
            v22 = 0;
            v25 = (v9 + 376);
LABEL_39:
            if (*(v9 + 384) == v17)
            {
              *(v9 + 384) = v22;
            }

            *v25 = *(v17 + 1568);
            *a4 = *v17;
            *(v17 + 1544) = 1;
            *(v17 + 1568) = 0;
            pthread_mutex_unlock((v9 + 312));
            pthread_mutex_lock((v9 + 392));
            v28 = (v9 + 504);
            v29 = *(v9 + 504);
            if (v29)
            {
              v30 = *(v17 + 1536);
              if (*(v29 + 1536) > v30)
              {
LABEL_46:
                *v28 = v17;
                *(v17 + 1568) = v29;
              }

              else
              {
                while (1)
                {
                  v31 = v29;
                  v29 = *(v29 + 1568);
                  if (!v29)
                  {
                    break;
                  }

                  if (*(v29 + 1536) > v30)
                  {
                    v28 = (v31 + 1568);
                    goto LABEL_46;
                  }
                }
              }
            }

            else
            {
              *v28 = v17;
            }

            pthread_mutex_unlock((v9 + 392));
            goto LABEL_49;
          }

          while (1)
          {
            v22 = v17;
            if (v15 < v19 && v20)
            {
              break;
            }

            v17 = *(v17 + 1568);
            if (!v17)
            {
              break;
            }

            v23 = bswap32(*(v17 + 1512));
            v19 = *(v17 + 1532);
            v20 = v23 == a2;
            if (v15 == v19 && v23 == a2)
            {
              v25 = (v22 + 1568);
              goto LABEL_39;
            }
          }
        }

        pthread_mutex_unlock((v9 + 312));
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            v35 = v26;
            v36 = 2080;
            v37 = "MediaQueue_RexmitPacket";
            v38 = 1024;
            v39 = 1049;
            v40 = 1024;
            v41 = 1049;
            v42 = 1024;
            v43 = a3;
            v44 = 1024;
            v45 = a3 - v13 + v13;
            _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/MediaQueue/MediaQueue.c:%d: MQ_Rexmit: missing packet wSN(%04X) iSN(%08X)\n", buf, 0x2Eu);
          }
        }
      }

      else
      {
LABEL_53:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            MediaQueue_RexmitPacket_cold_1();
          }
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
          MediaQueue_RexmitPacket_cold_2();
        }
      }

      v7 = 18;
    }

LABEL_49:
    CheckOutHandleDebug();
  }

  return v7;
}

uint64_t MediaQueue_SetRedundantAudio(uint64_t a1, int a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149580802;
  }

  v6 = v5;
  if (*(v5 + 864) != a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v6 + 864);
        v14 = 136316162;
        v15 = v7;
        v16 = 2080;
        v17 = "MediaQueue_SetRedundantAudio";
        v18 = 1024;
        v19 = 1067;
        v20 = 1024;
        v21 = v9;
        v22 = 1024;
        v23 = a2;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaQueue_SetRedundantAudio fRedundantAudio (%d->%d)", &v14, 0x28u);
      }
    }

    *(v6 + 864) = a2;
  }

  if (*(v6 + 865) != a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v6 + 865);
        v14 = 136316162;
        v15 = v10;
        v16 = 2080;
        v17 = "MediaQueue_SetRedundantAudio";
        v18 = 1024;
        v19 = 1073;
        v20 = 1024;
        v21 = v12;
        v22 = 1024;
        v23 = a3;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaQueue_SetRedundantAudio isRedEnabled (%d->%d)", &v14, 0x28u);
      }
    }

    *(v6 + 865) = a3;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_SetAudioFraction(double a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    return 2149580802;
  }

  v3 = v2;
  pthread_mutex_lock((v2 + 752));
  if (*(v3 + 896) != a1)
  {
    v4 = micro();
    if (a1 < 1.0 && *(v3 + 896) == 1.0)
    {
      *(v3 + 912) = v4;
    }

    else if (a1 == 1.0 && *(v3 + 896) < 1.0)
    {
      *(v3 + 904) = *(v3 + 904) + v4 - *(v3 + 912);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v3 + 896);
        v9 = 136316162;
        v10 = v6;
        v11 = 2080;
        v12 = "MediaQueue_SetAudioFraction";
        v13 = 1024;
        v14 = 1102;
        v15 = 2048;
        v16 = v8;
        v17 = 2048;
        v18 = a1;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaQueue_SetdAudioFraction (%.2f->%.2f)", &v9, 0x30u);
      }
    }

    *(v3 + 896) = a1;
  }

  pthread_mutex_unlock((v3 + 752));
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_SetAudioFECLevel(double a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    return 2149580802;
  }

  v3 = v2;
  if (*(v2 + 872) != a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v3 + 872);
        v8 = 136316162;
        v9 = v4;
        v10 = 2080;
        v11 = "MediaQueue_SetAudioFECLevel";
        v12 = 1024;
        v13 = 1122;
        v14 = 2048;
        v15 = v6;
        v16 = 2048;
        v17 = a1;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaQueue_SetAudioFECLevel (%.3f->%.3f)", &v8, 0x30u);
      }
    }

    *(v3 + 872) = a1;
    *(v3 + 920) = 0;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_GetTimeRateChanged(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149580802;
  }

  v6 = v5;
  pthread_mutex_lock((v5 + 24));
  *a2 = *(v6 + 88);
  *a3 = *(v6 + 96);
  pthread_mutex_unlock((v6 + 24));
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_GetTimeRefreshFrame(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149580802;
  }

  v6 = v5;
  pthread_mutex_lock((v5 + 24));
  if (a2)
  {
    *a2 = *(v6 + 112);
  }

  if (a3)
  {
    *a3 = *(v6 + 120);
  }

  pthread_mutex_unlock((v6 + 24));
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_UpdateAudioOnlyRateChange(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149580802;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 24));
  if (*(v4 + 100) < a2)
  {
    *(v4 + 16) = 1;
    *(v4 + 100) = a2;
  }

  pthread_mutex_unlock((v4 + 24));
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_RecordNewPacketWithSize(uint64_t a1, int a2, int a3, _DWORD *a4, unsigned int *a5)
{
  v9 = CheckInHandleDebug();
  if (!v9)
  {
    return 2149580802;
  }

  v10 = v9;
  if (a3)
  {
    v11 = 224;
  }

  else
  {
    v11 = 212;
  }

  if (a3)
  {
    v12 = 232;
  }

  else
  {
    v12 = 216;
  }

  pthread_mutex_lock((v9 + 248));
  if (*(v10 + 208) == 1)
  {
    v13 = *(v10 + v11) + 1;
    *(v10 + v11) = v13;
    v14 = *(v10 + v12);
    if (a2 <= 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = *(v10 + v11);
  v14 = *(v10 + v12);
  if (a2 >= 1)
  {
    *(v10 + v11) = ++v13;
LABEL_14:
    v14 += a2;
    *(v10 + v12) = v14;
  }

LABEL_15:
  pthread_mutex_unlock((v10 + 248));
  if (a4)
  {
    *a4 = v13;
  }

  if (a5)
  {
    *a5 = ((((v14 >> 3) * 0x20C49BA5E353F7CFuLL) >> 64) >> 1) & 0xFFF8;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_FindPacketInTxHistory(uint64_t a1, unsigned __int16 a2, int a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  v33 = *MEMORY[0x1E69E9840];
  v19 = CheckInHandleDebug();
  if (!v19)
  {
    return 2149580802;
  }

  v20 = v19;
  IsLossStatsEnabled = VCMediaControlInfo_IsLossStatsEnabled(*(v19 + 25528));
  v22 = 5.0;
  if (*(v20 + 864) == 1)
  {
    if (*(v20 + 865))
    {
      v22 = 1.0;
    }
  }

  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a8;
  v25[3] = a5;
  v26 = a4 / 0x3E8;
  v27 = a7;
  v28 = a6;
  v29 = a10;
  v31 = a9;
  v30 = a11;
  v32 = a12;
  v24[0] = v20 + 952;
  v24[1] = *(v20 + 944);
  VCMediaQueueUtil_FindPacketInTxHistory(v25, v24, (v20 + 144), IsLossStatsEnabled, v22, 5.0);
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_CleanupTxHistory()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149580802;
  }

  v1 = v0;
  pthread_mutex_lock((v0 + 144));
  bzero((v1 + 952), 0x6000uLL);
  *(v1 + 944) = 0;
  pthread_mutex_unlock((v1 + 144));
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_SetPLCalc(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149580802;
  }

  *(v3 + 208) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_SetActiveProbingLog(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149580802;
  }

  *(v3 + 613) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_SetAFRCSendMode(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149580802;
  }

  *(v3 + 612) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_ResetRefreshFrameState()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149580802;
  }

  v1 = v0;
  pthread_mutex_lock((v0 + 24));
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  pthread_mutex_unlock((v1 + 24));
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_SetRTPHandle(uint64_t a1, uint64_t a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149580802;
  }

  *(v3 + 936) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t ActiveProbing_ProcessIncomingPacket(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x1E69E9840];
  if (*(a1 + 29) == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a2 + 1516);
        v8 = bswap32(*(a2 + 1508));
        v9 = bswap32(*(a2 + 1506));
        v10 = *a2;
        v61 = 136316674;
        v62 = v4;
        v63 = 2080;
        v64 = "ActiveProbing_ProcessIncomingPacket";
        v65 = 1024;
        v66 = 1470;
        v67 = 1024;
        v68 = v7;
        v69 = 1024;
        v70 = v8;
        v71 = 1024;
        v72 = HIWORD(v9);
        v73 = 1024;
        v74 = v10;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AddPacket: ^^^^^^\t\t incoming %d %d/%d/%d ", &v61, 0x34u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      ActiveProbing_ProcessIncomingPacket_cold_1();
    }
  }

  if ((*(a1 + 16) & 1) == 0 && *(a2 + 1516) == 1)
  {
    *(a1 + 20) = bswap32(*(a2 + 1508)) - 1;
    *(a1 + 16) = 1;
  }

  if (*(a2 + 1576) == 1)
  {
    v11 = *(a2 + 1578);
    v12 = bswap32(*(a2 + 1508));
    v13 = *(a1 + 20);
    if (*(a1 + 29) == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      v16 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a2 + 1508);
          v18 = bswap32(*(a2 + 1506));
          v61 = 136316674;
          v62 = v14;
          v63 = 2080;
          v64 = "ActiveProbing_ProcessIncomingPacket";
          v65 = 1024;
          v66 = 1527;
          v67 = 1024;
          v68 = bswap32(v17);
          v69 = 1024;
          v70 = HIWORD(v18);
          v71 = 1024;
          v72 = v11;
          v73 = 1024;
          v74 = v12 == v13;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AddPacket: ^^^^^^\t\t ProbeSeq %d/%d bNewProbeSeq %d bVideoPacketPartOfActiveProbeSeq %d ", &v61, 0x34u);
          if (!v11)
          {
LABEL_49:
            if (v12 == v13)
            {
              ActiveProbing_UpdateRTPProbeSeqId(a2, *(a1 + 24), *(a1 + 29));
              if (*(a1 + 29) == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v47 = VRTraceErrorLogLevelToCSTR();
                v48 = *MEMORY[0x1E6986650];
                v49 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] == 1)
                {
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    v61 = 136315650;
                    v62 = v47;
                    v63 = 2080;
                    v64 = "ActiveProbing_ProcessIncomingPacket";
                    v65 = 1024;
                    v66 = 1642;
                    _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AddPacket: ^^^^^^\t\t MP belonging to an active Probe. Going to the main list", &v61, 0x1Cu);
                  }
                }

                else if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  ActiveProbing_ProcessIncomingPacket_cold_3();
                }
              }

              return 1;
            }

            goto LABEL_55;
          }

          goto LABEL_42;
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v45 = *(a2 + 1508);
        v46 = bswap32(*(a2 + 1506));
        v61 = 136316674;
        v62 = v14;
        v63 = 2080;
        v64 = "ActiveProbing_ProcessIncomingPacket";
        v65 = 1024;
        v66 = 1527;
        v67 = 1024;
        v68 = bswap32(v45);
        v69 = 1024;
        v70 = HIWORD(v46);
        v71 = 1024;
        v72 = v11;
        v73 = 1024;
        v74 = v12 == v13;
        _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d AddPacket: ^^^^^^\t\t ProbeSeq %d/%d bNewProbeSeq %d bVideoPacketPartOfActiveProbeSeq %d ", &v61, 0x34u);
        if (!v11)
        {
          goto LABEL_49;
        }

        goto LABEL_42;
      }
    }

    if (!v11)
    {
      goto LABEL_49;
    }

LABEL_42:
    if ((*a1 & 1) == 0)
    {
      *a1 = 1;
    }

LABEL_55:
    v50 = (a1 + 8);
    v51 = *(a1 + 8);
    if (v51)
    {
      do
      {
        v52 = v51;
        v51 = *(v51 + 1568);
      }

      while (v51);
      v50 = (v52 + 1568);
    }

    *v50 = a2;
    ++*(a1 + 44);
    if (*(a1 + 29) == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      v54 = *MEMORY[0x1E6986650];
      v55 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = bswap32(*(a2 + 1508));
          v57 = *(a2 + 1576);
          v61 = 136316162;
          v62 = v53;
          v63 = 2080;
          v64 = "ActiveProbing_ProcessIncomingPacket";
          v65 = 1024;
          v66 = 1838;
          v67 = 1024;
          v68 = v56;
          v69 = 1024;
          v70 = v57;
          _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AddPacket: ^^^^^^\t\t ProbeSeq/Regular frame %d (%d) waiting for the next Audio", &v61, 0x28u);
        }
      }

      else if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        v59 = bswap32(*(a2 + 1508));
        v60 = *(a2 + 1576);
        v61 = 136316162;
        v62 = v53;
        v63 = 2080;
        v64 = "ActiveProbing_ProcessIncomingPacket";
        v65 = 1024;
        v66 = 1838;
        v67 = 1024;
        v68 = v59;
        v69 = 1024;
        v70 = v60;
        _os_log_debug_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEBUG, " [%s] %s:%d AddPacket: ^^^^^^\t\t ProbeSeq/Regular frame %d (%d) waiting for the next Audio", &v61, 0x28u);
      }
    }

    return 0;
  }

  if (!*a1)
  {
    return 1;
  }

  if (*(a2 + 1516))
  {
    if (*(a1 + 29) == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      v21 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = bswap32(*(a2 + 1508));
          v61 = 136315906;
          v62 = v19;
          v63 = 2080;
          v64 = "ActiveProbing_ProcessIncomingPacket";
          v65 = 1024;
          v66 = 1810;
          v67 = 1024;
          v68 = v22;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AddPacket: ^^^^^^\t\t Regular frame %d is blocked in the waiting list...", &v61, 0x22u);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        ActiveProbing_ProcessIncomingPacket_cold_2();
      }
    }

    goto LABEL_55;
  }

  v23 = *(a1 + 8);
  *(a1 + 24) = bswap32(*(a2 + 1508));
  *(a1 + 20) = bswap32(*(v23 + 1508));
  v24 = 1;
  v25 = v23;
  while (1)
  {
    v26 = v25;
    if (*(v25 + 1576) == 1)
    {
      ActiveProbing_UpdateRTPProbeSeqId(v25, *(a1 + 24), *(a1 + 29));
    }

    v25 = *(v26 + 1568);
    if (!v25)
    {
      break;
    }

    ++v24;
    if (bswap32(*(v25 + 1508)) != *(a1 + 20))
    {
      if (*(v25 + 1576))
      {
LABEL_31:
        --v24;
        *(a1 + 8) = v25;
        goto LABEL_35;
      }

      while (1)
      {
        v26 = v25;
        v25 = *(v25 + 1568);
        if (!v25)
        {
          goto LABEL_34;
        }

        ++v24;
        if (*(v25 + 1576))
        {
          goto LABEL_31;
        }
      }
    }
  }

LABEL_34:
  *(a1 + 8) = 0;
  *a1 = 0;
LABEL_35:
  *(a1 + 44) -= v24;
  *(a2 + 1568) = v23;
  v27 = (v24 + 1);
  *(v26 + 1568) = 0;
  *(a2 + 1576) = 1;
  if (*(a1 + 29) == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    v30 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 24);
        v32 = bswap32(*(v23 + 1508));
        v33 = bswap32(*(v23 + 1506));
        v34 = *(v23 + 1576);
        v35 = bswap32(*(v26 + 1508));
        v36 = bswap32(*(v26 + 1506));
        v37 = *(v26 + 1576);
        v61 = 136317698;
        v62 = v28;
        v63 = 2080;
        v64 = "ActiveProbing_ProcessIncomingPacket";
        v65 = 1024;
        v66 = 1796;
        v67 = 1024;
        v68 = v31;
        v69 = 1024;
        v70 = v27;
        v71 = 1024;
        v72 = v32;
        v73 = 1024;
        v74 = HIWORD(v33);
        v75 = 1024;
        v76 = v34;
        v77 = 1024;
        v78 = v35;
        v79 = 1024;
        v80 = HIWORD(v36);
        v81 = 1024;
        v82 = v37;
        _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AddPacket: ^^^^^^\t\t Audio %d CAME. KICKING ProbeSeq (%d) from %d/%d/%d to %d/%d/%d ", &v61, 0x4Cu);
      }
    }

    else if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a1 + 24);
      v39 = bswap32(*(v23 + 1508));
      v40 = bswap32(*(v23 + 1506));
      v41 = *(v23 + 1576);
      v42 = bswap32(*(v26 + 1508));
      v43 = bswap32(*(v26 + 1506));
      v44 = *(v26 + 1576);
      v61 = 136317698;
      v62 = v28;
      v63 = 2080;
      v64 = "ActiveProbing_ProcessIncomingPacket";
      v65 = 1024;
      v66 = 1796;
      v67 = 1024;
      v68 = v38;
      v69 = 1024;
      v70 = v27;
      v71 = 1024;
      v72 = v39;
      v73 = 1024;
      v74 = HIWORD(v40);
      v75 = 1024;
      v76 = v41;
      v77 = 1024;
      v78 = v42;
      v79 = 1024;
      v80 = HIWORD(v43);
      v81 = 1024;
      v82 = v44;
      _os_log_debug_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEBUG, " [%s] %s:%d AddPacket: ^^^^^^\t\t Audio %d CAME. KICKING ProbeSeq (%d) from %d/%d/%d to %d/%d/%d ", &v61, 0x4Cu);
    }
  }

  return v27;
}

void ActiveProbing_UpdateRTPProbeSeqId(uint64_t a1, unsigned int a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1584);
  if (v4)
  {
    v14 = bswap32(a2);
    VCMediaControlInfoSetInfo(v4, 8, &v14, 4);
    if (a3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        v9 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = bswap32(*(a1 + 1508));
            v11 = bswap32(*(a1 + 1506));
            *buf = 136316418;
            v16 = v7;
            v17 = 2080;
            v18 = "ActiveProbing_UpdateRTPProbeSeqId";
            v19 = 1024;
            v20 = 1454;
            v21 = 1024;
            v22 = v10;
            v23 = 1024;
            v24 = HIWORD(v11);
            v25 = 1024;
            v26 = a2;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ^^^^ SeqId for VMP TS/seq %d/%d to %d", buf, 0x2Eu);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v12 = bswap32(*(a1 + 1508));
          v13 = bswap32(*(a1 + 1506));
          *buf = 136316418;
          v16 = v7;
          v17 = 2080;
          v18 = "ActiveProbing_UpdateRTPProbeSeqId";
          v19 = 1024;
          v20 = 1454;
          v21 = 1024;
          v22 = v12;
          v23 = 1024;
          v24 = HIWORD(v13);
          v25 = 1024;
          v26 = a2;
          _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ^^^^ SeqId for VMP TS/seq %d/%d to %d", buf, 0x2Eu);
        }
      }
    }
  }
}

uint64_t ActiveProbing_FlushPendingPackets(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    LODWORD(v5) = 0;
    v6 = *(a1 + 20);
    v7 = *(a1 + 24);
    do
    {
      v8 = v2;
      v5 = (v5 + 1);
      v2 = *(v2 + 1568);
    }

    while (v2);
    *(a1 + 20) = bswap32(*(v8 + 1508));
    *(a1 + 24) = v7 - 1;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 20);
        v11 = *(a1 + 24);
        v19 = 136316930;
        v20 = v9;
        v21 = 2080;
        v22 = "ActiveProbing_FlushPendingPackets";
        v23 = 1024;
        v24 = 1889;
        v25 = 1024;
        v26 = v5;
        v27 = 1024;
        v28 = v7;
        v29 = 1024;
        v30 = v11;
        v31 = 1024;
        v32 = v6;
        v33 = 1024;
        v34 = v12;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \t\t *** ActiveProbing_FlushPendingPackets: flushed %d pkts; ProbeSeqId: %d->%d, VideoFrameTS: %d->%d ", &v19, 0x3Au);
      }
    }

    if (*(a1 + 44) != v5 && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 44);
        v19 = 136316162;
        v20 = v13;
        v21 = 2080;
        v22 = "ActiveProbing_FlushPendingPackets";
        v23 = 1024;
        v24 = 1896;
        v25 = 1024;
        v26 = v5;
        v27 = 1024;
        v28 = v15;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \t\t *** ActiveProbing_FlushPendingPackets: Unexpected: flushed %d pkts vs. %d queue length ", &v19, 0x28u);
      }
    }

    *a2 = *(a1 + 8);
    *(a1 + 8) = 0;
    *a1 = 0;
    *(a1 + 44) = 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315650;
        v20 = v16;
        v21 = 2080;
        v22 = "ActiveProbing_FlushPendingPackets";
        v23 = 1024;
        v24 = 1905;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \t\t *** ActiveProbing_FlushPendingPackets: flushed 0 pkts; alraedy empty", &v19, 0x1Cu);
      }
    }

    return 0;
  }

  return v5;
}

uint64_t MediaQueue_SetThrottlingAudioInterval(double a1)
{
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    return 2149580802;
  }

  Throttling_MediaQueue_SetAudioInterval(v2 + 632, a1);
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_SetThrottlingIsIPv6(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149580802;
  }

  Throttling_MediaQueue_SetIsIPv6(v3 + 632, a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_RetrieveAudioVideoRates(uint64_t a1, double *a2, double *a3, double *a4, double *a5)
{
  v9 = CheckInHandleDebug();
  if (!v9)
  {
    return 2149580802;
  }

  v10 = *(v9 + 720);
  if (v10)
  {
    v11 = micro();
    pthread_mutex_lock((v10 + 160));
    v12 = *(v10 + 136);
    v13 = *(v10 + 148);
    pthread_mutex_unlock((v10 + 160));
    v14 = v11 - v12;
    v15 = 0.0;
    v16 = 0.0;
    if (v14 <= 0.5)
    {
      v16 = (8 * v13) / (v14 + 0.484375);
    }

    *a2 = v16;
    pthread_mutex_lock((v10 + 384));
    v17 = *(v10 + 360);
    v18 = *(v10 + 372);
    pthread_mutex_unlock((v10 + 384));
    if (v11 - v17 <= 0.5)
    {
      v15 = (8 * v18) / (v11 - v17 + 0.484375);
    }

    *a3 = v15;
    pthread_mutex_lock((v10 + 608));
    v19 = *(v10 + 584);
    v20 = *(v10 + 596);
    pthread_mutex_unlock((v10 + 608));
    v21 = v11 - v19;
    v22 = 0.0;
    v23 = 0.0;
    if (v21 <= 0.5)
    {
      v23 = (8 * v20) / (v21 + 0.484375);
    }

    *a4 = v23;
    pthread_mutex_lock((v10 + 832));
    v24 = *(v10 + 808);
    v25 = *(v10 + 820);
    pthread_mutex_unlock((v10 + 832));
    if (v11 - v24 <= 0.5)
    {
      v22 = (8 * v25) / (v11 - v24 + 0.484375);
    }

    *a5 = v22;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_ThrottlingFlushThrottlingQueue()
{
  v83 = *MEMORY[0x1E69E9840];
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149580802;
  }

  v1 = v0;
  pthread_mutex_lock((v0 + 392));
  v35 = *(v1 + 628);
  v36 = *(v1 + 624);
  v2 = (v1 + 504);
  v3 = *(v1 + 664);
  v4 = Throttling_MediaQueue_FlushThrottlingQueue(v1 + 584, v1 + 632, (v1 + 504));
  v5 = *(v1 + 504);
  *(v1 + 504) = 0;
  v38 = 0;
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = &v38;
    do
    {
      v9 = *(v5 + 1568);
      *(v5 + 1568) = 0;
      if (*(v5 + 1516) == 1)
      {
        *v8 = v5;
        ++v7;
        v8 = (v5 + 1568);
      }

      else
      {
        *v2 = v5;
        ++v6;
        v2 = (v5 + 1568);
      }

      v5 = v9;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = "FlushVideoPktsFromPktList";
      *&buf[22] = 1024;
      *&buf[24] = 2067;
      *&buf[28] = 1024;
      *&buf[30] = v6;
      *&buf[34] = 1024;
      *&buf[36] = v7;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \t\t *** MediaQueue_FlushVideoPktsFromPktList  iPktsInMainList/iPktsToBeFlushed %d/%d pkts ", buf, 0x28u);
    }
  }

  v34 = v3;
  *(v1 + 624) = v6;
  v13 = v38;
  if (v4 >= 1 && !v38 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      MediaQueue_ThrottlingFlushThrottlingQueue_cold_1();
    }
  }

  v32 = v4;
  v14 = *(v1 + 624);
  v33 = *(v1 + 628);
  v37 = *(v1 + 664);
  pthread_mutex_unlock((v1 + 392));
  if (v13)
  {
    v15 = 0;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v81 = v16;
    v82 = v16;
    v79 = v16;
    v80 = v16;
    v77 = v16;
    v78 = v16;
    v75 = v16;
    v76 = v16;
    v73 = v16;
    v74 = v16;
    v71 = v16;
    v72 = v16;
    v69 = v16;
    v70 = v16;
    v67 = v16;
    v68 = v16;
    v65 = v16;
    v66 = v16;
    v63 = v16;
    v64 = v16;
    v61 = v16;
    v62 = v16;
    v59 = v16;
    v60 = v16;
    v57 = v16;
    v58 = v16;
    v55 = v16;
    v56 = v16;
    v17 = buf;
    *&buf[32] = v16;
    v54 = v16;
    *buf = v16;
    *&buf[16] = v16;
    do
    {
      v18 = v13;
      v13 = *(v13 + 1568);
      if (*(v18 + 1516) == 1)
      {
        if (v15 <= 0x63)
        {
          sprintf(v17, "%04X ", bswap32(*(v18 + 1506)) >> 16);
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(v18 + 1516);
          v22 = bswap32(*(v18 + 1508));
          v23 = bswap32(*(v18 + 1506));
          v24 = *v18;
          *v39 = 136316674;
          v40 = v19;
          v41 = 2080;
          v42 = "RecycleFlushedPkts";
          v43 = 1024;
          v44 = 2096;
          v45 = 1024;
          v46 = v21;
          v47 = 1024;
          v48 = v22;
          v49 = 1024;
          v50 = HIWORD(v23);
          v51 = 1024;
          v52 = v24;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \t\t *** MediaQueue_RecycleFlushedPkts: Unexpected: flushing non-video pkt %d %d/%d/%d ", v39, 0x34u);
        }
      }

      MediaQueue_Free(v1, v18);
      ++v15;
      v17 += 5;
    }

    while (v13);
    RTPLogMQFlushedPackets(*(v1 + 936), v15);
    v3 = v34;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 136315906;
        v40 = v25;
        v41 = 2080;
        v42 = "RecycleFlushedPkts";
        v43 = 1024;
        v44 = 2119;
        v45 = 1024;
        v46 = v15;
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \t\t *** MediaQueue_RecycleFlushedPkts %d pkts ", v39, 0x22u);
      }
    }

    v27 = v35;
  }

  else
  {
    LODWORD(v15) = 0;
    v27 = v35;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317442;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = "MediaQueue_ThrottlingFlushThrottlingQueue";
      *&buf[22] = 1024;
      *&buf[24] = 2017;
      *&buf[28] = 1024;
      *&buf[30] = v32;
      *&buf[34] = 1024;
      *&buf[36] = v27;
      *&buf[40] = 1024;
      *&buf[42] = v3;
      *&buf[46] = 1024;
      LODWORD(v54) = v36;
      WORD2(v54) = 1024;
      *(&v54 + 6) = v33;
      WORD5(v54) = 1024;
      HIDWORD(v54) = v37;
      LOWORD(v55) = 1024;
      *(&v55 + 2) = v14;
      _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ***### MediaQueue_SetThrottlingFlushThrottlingQueue: Flushed Ap/Th %d pkts; QLen: %d/%d/%d -> %d/%d/%d ", buf, 0x46u);
    }
  }

  if (v27 + v36 + v3 != v33 + v14 + v37 + v15 && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = "MediaQueue_ThrottlingFlushThrottlingQueue";
      *&buf[22] = 1024;
      *&buf[24] = 2023;
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d *** MediaQueue_SetThrottlingFlushThrottlingQueue: UNEXPECTED QUEUE LENGTHS", buf, 0x1Cu);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t dropWaitingPkts(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a2;
    v9 = result;
    v10 = MEMORY[0x1E6986638];
    do
    {
      if (*v10 >= 5)
      {
        dropWaitingPkts_cold_1(v8, a2, a3, a4, a5, a6, a7, a8);
      }

      v11 = *(v8 + 1568);
      result = MediaQueue_Free(v9, v8);
      v8 = v11;
    }

    while (v11);
  }

  return result;
}

uint64_t drainOldPackets(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a1 + 25568);
  if (!v9 || *(v9 + 1608) >= a2)
  {
    return 0;
  }

  v12 = MEMORY[0x1E6986638];
  if (*MEMORY[0x1E6986638] >= 5)
  {
    drainOldPackets_cold_1();
  }

  v13 = *(v9 + 1568);
  if (v13 && *(v13 + 1608) < a2)
  {
    do
    {
      v14 = v13;
      if (*v12 >= 5)
      {
        drainOldPackets_cold_2();
      }

      v13 = *(v13 + 1568);
    }

    while (v13 && *(v13 + 1608) < a2);
  }

  else
  {
    v14 = v9;
  }

  *(v14 + 1568) = 0;
  dropWaitingPkts(a1, v9, a4, a5, a6, a7, a8, a9);
  *(a1 + 25568) = v13;
  return 1;
}

void pushOutQueuedAudioPkts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 25568);
  if (a2)
  {
    *(a1 + 25568) = 0;
  }

  v10 = MEMORY[0x1E6986638];
  v11 = 0;
  if (v9)
  {
    do
    {
      v12 = *(v9 + 1568);
      *(v9 + 1568) = 0;
      if (*v10 >= 5)
      {
        pushOutQueuedAudioPkts_cold_1();
      }

      v13 = micro();
      v11 += Throttling_MediaQueue_AddPacket_ScheduleAndActiveProbing(a1 + 584, a1 + 632, (a1 + 504), v9, v13);
      v9 = v12;
    }

    while (v12);
  }

  if (*v10 >= 5)
  {
    pushOutQueuedAudioPkts_cold_2(v11, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v11 >= 1)
  {
    v14 = *(a1 + 624) + v11;
    *(a1 + 624) = v14;
    _MediaQueue_CheckActiveProbingQueueLength(v14);

    pthread_cond_signal((a1 + 456));
  }
}

uint64_t MediaQueue_SetCellularAudioStallState(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149580802;
  }

  SetCellularAudioStallState_Internal(v3, a2, 0, v4, v5, v6, v7, v8);
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_BBFlushAcked(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = CheckInHandleDebug();
  if (!v6)
  {
    return 2149580802;
  }

  v7 = v6;
  v8 = v6 + 24576;
  pthread_mutex_lock((v6 + 392));
  v17 = *(v8 + 1020);
  v18 = MEMORY[0x1E6986638];
  if (*MEMORY[0x1E6986638] >= 5)
  {
    StallModeTracePrint_(5, "", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/MediaQueue/MediaQueue.c", 2469, "AFRCUpdateBBNote calling MediaQueue_BBFlushAcked: flushed pkts: %d/%d bPendingCellularFlush: %d/%p  Trans: %d/%d/%d ", v14, v15, v16, a2);
  }

  if (v17 == a4)
  {
    if (*v18 >= 5)
    {
      MediaQueue_BBFlushAcked_cold_1(a2, v10, v11, v12, v13, v14, v15, v16);
      if (a2)
      {
LABEL_9:
        v19 = 0;
        v20 = *v18;
        do
        {
          if (v20 >= 5)
          {
            StallModeTracePrint_(5, "", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/MediaQueue/MediaQueue.c", 2477, "\t\t\t %d: %d  ", v14, v15, v16, v19);
            v20 = *v18;
          }

          ++v19;
        }

        while (a2 != v19);
      }
    }

    else if (a2)
    {
      goto LABEL_9;
    }

    *(v8 + 977) = 0;
  }

  pthread_mutex_unlock((v7 + 392));
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_SetFECFeedbackVersion(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149580802;
  }

  *(v3 + 25528) = a2;
  CheckOutHandleDebug();
  return 0;
}

void MediaQueue_SendPacket(uint64_t a1, int *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = a2[379];
  if (v4 == 1)
  {
    if (*(a1 + 880))
    {
      v9 = *(a1 + 888);
      v10 = v9;
      v11 = v9 - v9;
      if (v11 > 0.0)
      {
        v12 = v11 + *(a1 + 928);
        *(a1 + 928) = v12;
        if (v12 >= 1.0)
        {
          ++v10;
          *(a1 + 928) = v12 + -1.0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    if (a2[387] <= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = a2[387];
    }

    if (*(a1 + 208))
    {
      v16 = v13;
    }

    else
    {
      v16 = 1;
    }

    *(a1 + 132) += v16;
    v15 = 700;
  }

  else
  {
    if (v4)
    {
      v71 = 0;
      if (a2[387] <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = a2[387];
      }

      goto LABEL_31;
    }

    if (*(a1 + 864) == 1)
    {
      v5 = *(a1 + 872);
      v6 = v5;
      v7 = v5 - v5;
      if (v7 > 0.0)
      {
        v8 = v7 + *(a1 + 920);
        *(a1 + 920) = v8;
        if (v8 >= 1.0)
        {
          ++v6;
          *(a1 + 920) = v8 + -1.0;
        }
      }
    }

    else
    {
      v6 = 1;
    }

    if (a2[387] <= v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = a2[387];
    }

    if (*(a1 + 208))
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    *(a1 + 128) += v14;
    v15 = 800;
  }

  v71 = v15;
LABEL_31:
  if (*(a2 + 1528))
  {
    v17 = 48;
  }

  else
  {
    v17 = 28;
  }

  *(a1 + 136) += *a2 + v17;
  if (v13 >= 1)
  {
    v18 = 0;
    v67 = a1 + 952;
    v19 = a2 + 1;
    v69 = (a2 + 406);
    v70 = v13;
    while (1)
    {
      v20 = micro();
      v72 = -21846;
      v21 = *(a2 + 198);
      if (v21)
      {
        if (VCMediaControlInfoHasInfo(v21, 0))
        {
          if ((RTPSetAFRCProcessingDelay(*(a1 + 936), &v72, *(a2 + 198), *(a2 + 194), v20) & 0x80000000) != 0)
          {
            goto LABEL_89;
          }

          if (*(a1 + 16))
          {
            *(a1 + 16) = 0;
            pthread_mutex_lock((a1 + 24));
            *(a1 + 88) = v20;
            *(a1 + 96) = *(a1 + 100);
            pthread_mutex_unlock((a1 + 24));
          }

          if (*(a1 + 104))
          {
            *(a1 + 104) = 0;
            pthread_mutex_lock((a1 + 24));
            *(a1 + 112) = v20;
            *(a1 + 120) = *(a1 + 124);
            pthread_mutex_unlock((a1 + 24));
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v22 = VRTraceErrorLogLevelToCSTR();
              v23 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v24 = *(a1 + 120);
                v25 = *(a1 + 112);
                *buf = 136316162;
                *&buf[4] = v22;
                *&buf[12] = 2080;
                *&buf[14] = "MediaQueue_SendPacket";
                *&buf[22] = 1024;
                *&buf[24] = 274;
                *&buf[28] = 1024;
                *&buf[30] = v24;
                *&buf[34] = 2048;
                *&buf[36] = v25;
                _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Refresh frame counter[%d], time[%.4f].", buf, 0x2Cu);
              }
            }
          }

          if (!v18)
          {
            v26 = *(a1 + 944);
            pthread_mutex_lock((a1 + 144));
            v27 = v67 + 48 * v26;
            *(v27 + 2) = v72;
            *(v27 + 40) = v20;
            *(v27 + 4) = *(a1 + 128);
            v28 = *(a1 + 136);
            *v27 = 0;
            *(v27 + 12) = 0;
            *(v27 + 16) = 0;
            *(v27 + 24) = v28;
            *(v27 + 32) = 0;
            *(a1 + 944) = (v26 + 1) & 0x1FF;
            v29 = *(a1 + 948);
            if (v29 <= 511)
            {
              *(a1 + 948) = v29 + 1;
            }

            pthread_mutex_unlock((a1 + 144));
          }
        }

        v30 = *(a2 + 198);
        if (v30)
        {
          *buf = 0xAAAAAAAAAAAAAAAALL;
          if ((VCMediaControlInfoSerialize(v30) & 0x80000000) != 0)
          {
            break;
          }
        }
      }

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      memset(buf, 0, sizeof(buf));
      *&buf[8] = a2[380];
      v31 = bswap32(*(a2 + 753)) >> 16;
      v74 = 0u;
      VTP_SetPktTag(buf, 0, v31);
      VTP_SetPktTag(buf, 1u, bswap32(a2[378]));
      VTP_SetPktTag(buf, 2u, bswap32(a2[377]));
      if (*(a2 + 1621) == 1)
      {
        v32 = v69[3];
        v84 = v69[2];
        v85 = v32;
        v86 = v69[4];
        v33 = v69[1];
        v82 = *v69;
        v83 = v33;
        BYTE8(v81) = 1;
      }

      if (a2[379])
      {
        v34 = 32;
      }

      else
      {
        v34 = 16;
      }

      DWORD1(v81) = v34;
      VTP_Send(a2[381], v19, *a2, v71, buf);
      v35 = kdebug_trace();
      *(a1 + 25536) = v20;
      if (!a2[379])
      {
        LogProfileTimeOverLimitCompare(*(a1 + 25544), v20, v35, v36, v37, v38, v39, v40, v41, v42, *(a1 + 25544));
        *(a1 + 25544) = v20;
      }

      v43 = *(a1 + 720);
      if (v43)
      {
        v44 = v19;
        v45 = *(a1 + 684);
        v46 = *a2;
        v47 = 672;
        if (!a2[379])
        {
          v47 = 448;
        }

        v48 = v43 + v47;
        v49 = *(v43 + v47 + 148);
        v50 = vcvtd_n_s64_f64(v20 - *(v48 + 136), 6uLL);
        if (v50)
        {
          if (v50 > 15)
          {
            if (v50 > 0x1F)
            {
              v49 = 0;
              v53 = 0;
              *(v48 + 120) = 0u;
              *(v48 + 104) = 0u;
              *(v48 + 88) = 0u;
              *(v48 + 72) = 0u;
              *(v48 + 56) = 0u;
              *(v48 + 40) = 0u;
              *(v48 + 24) = 0u;
              *(v48 + 8) = 0u;
            }

            else
            {
              v57 = *(v48 + 144);
              v68 = v57 + v50;
              v53 = (v57 + v50) & 0x1F;
              v58 = (v57 + 1) & 0x1F;
              if (v53 >= v58)
              {
                v59 = (v48 + 4 * v58 + 8);
                v60 = (v53 - v58 + 1);
              }

              else
              {
                bzero((v48 + 8 + 4 * ((v57 + 1) & 0x1F)), 128 - 4 * ((v57 + 1) & 0x1Fu));
                v59 = (v48 + 8);
                v60 = v53 + 1;
              }

              bzero(v59, 4 * v60);
              v61 = (v68 + 1) & 0x1F;
              if (v61 == v58)
              {
                v49 = 0;
              }

              else
              {
                v49 = 0;
                do
                {
                  v49 += *(v48 + 8 + 4 * v61);
                  v61 = (v61 + 1) & 0x1F;
                }

                while (v61 != v58);
              }
            }
          }

          else
          {
            v51 = *(v48 + 144);
            v52 = v51 + v50;
            v53 = v52 & 0x1F;
            v54 = (v52 + 1) & 0x1F;
            v55 = (v51 + 1) & 0x1F;
            if (v55 != v54)
            {
              v56 = v48 + 8;
              do
              {
                v49 -= *(v56 + 4 * v55);
                *(v56 + 4 * v55) = 0;
                v55 = (v55 + 1) & 0x1F;
              }

              while (v55 != v54);
            }
          }
        }

        else
        {
          v53 = -1;
        }

        v62 = v46 + v45;
        v63 = v49 + v46 + v45;
        pthread_mutex_lock((v48 + 160));
        *(v48 + 148) = v63;
        if (v53 != -1)
        {
          *(v48 + 136) = *v48 + vcvtd_n_u64_f64(v20 - *v48, 6uLL) * 0.015625;
          *(v48 + 144) = v53;
        }

        pthread_mutex_unlock((v48 + 160));
        v64 = v48 + 4 * *(v48 + 144);
        *(v64 + 8) += v62;
        v13 = v70;
        v19 = v44;
      }

      if (*(a1 + 25552) == 1 && !a2[379] && *MEMORY[0x1E6986638] >= 5)
      {
        MediaQueue_SendPacket_cold_2(a2 + 377, a2 + 1506, v37, v38, v39, v40, v41, v42);
      }

      if (++v18 == v13)
      {
        goto LABEL_89;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        MediaQueue_SendPacket_cold_1();
      }
    }
  }

LABEL_89:
  v65 = a2[390];
  if (v65 > *(a1 + 100))
  {
    *(a1 + 16) = 1;
    *(a1 + 100) = v65;
  }

  v66 = a2[391];
  if (v66 > *(a1 + 124))
  {
    *(a1 + 104) = 1;
    *(a1 + 124) = v66;
  }
}

void LogProfileTimeOverLimitCompare(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v43 = *MEMORY[0x1E69E9840];
  if (VRTraceIsInternalOSInstalled())
  {
    v13 = a2 - a1;
    if (v13 > 0.100000001)
    {
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v41 = v14;
      v42 = v14;
      v39 = v14;
      v40 = v14;
      v37 = v14;
      v38 = v14;
      v35 = v14;
      v36 = v14;
      v33 = v14;
      v34 = v14;
      v32 = v14;
      v30 = v14;
      v31 = v14;
      v28 = v14;
      v29 = v14;
      *__str = v14;
      vsnprintf(__str, 0x100uLL, "MediaQueue - Last sent audio delayed. lastSentAudioPacketTime=%f currentTime=%f delta=%f", &a11);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v18 = v15;
          v19 = 2080;
          v20 = "_LogProfileTimeLimitHelper";
          v21 = 1024;
          v22 = 36;
          v23 = 2080;
          v24 = __str;
          v25 = 2048;
          v26 = v13;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s: Took a long time %fs", buf, 0x30u);
        }
      }
    }
  }
}

uint64_t _VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer(uint64_t a1, unint64_t a2, char *a3, size_t *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = 2151809055;
  cf = 0;
  if (!a2)
  {
    return v4;
  }

  v49 = 0;
  v50 = 0;
  v6 = 0;
  __src = 0;
  v7 = 0;
  v8 = "";
  while (1)
  {
    v9 = (a1 + v7);
    v10 = bswap32(*(a1 + v7));
    v11 = v10 + 4;
    if (v10 + 4 + v7 > a2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v40 = VRTraceErrorLogLevelToCSTR();
        v41 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = v40;
          v58 = 2080;
          v59 = "_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer";
          v60 = 1024;
          v61 = 107;
          v62 = 2048;
          *v63 = v11;
          *&v63[8] = 2048;
          *&v63[10] = v7;
          *&v63[18] = 2048;
          *&v63[20] = a2;
          _os_log_error_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_ERROR, " [%s] %s:%d _VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer: Failed to parse, next nalu offset invalid:%zu offset:%zu total length:%zu", buf, 0x3Au);
        }
      }

      goto LABEL_63;
    }

    if (v7 + 4 > a2)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_63;
      }

      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      v4 = 2151809055;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v42;
        v58 = 2080;
        v59 = "_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer";
        v60 = 1024;
        v61 = 111;
        v62 = 2048;
        *v63 = v7 + 4;
        *&v63[8] = 2048;
        *&v63[10] = a2;
        _os_log_error_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_ERROR, " [%s] %s:%d _VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer: Failed to parse nalu header, offset invalid:%zu total length:%zu", buf, 0x30u);
      }

      goto LABEL_64;
    }

    v53 = v10 + 4 + v7;
    v12 = v6;
    FrameSliceHeader = ReadFrameSliceHeader(123, v9 + 4, v10, &cf);
    v14 = v8;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      v17 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316674;
          *&buf[4] = v15;
          v58 = 2080;
          v59 = "_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer";
          v60 = 1024;
          v61 = 118;
          v62 = 1024;
          *v63 = FrameSliceHeader;
          *&v63[4] = 2048;
          *&v63[6] = v7;
          *&v63[14] = 2048;
          *&v63[16] = v10 + 4;
          *&v63[24] = 2048;
          *&v63[26] = v10;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Frame type %d offset %zu nextNaluOffset %zu dataPointerLength %zu", buf, 0x40u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316674;
        *&buf[4] = v15;
        v58 = 2080;
        v59 = "_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer";
        v60 = 1024;
        v61 = 118;
        v62 = 1024;
        *v63 = FrameSliceHeader;
        *&v63[4] = 2048;
        *&v63[6] = v7;
        *&v63[14] = 2048;
        *&v63[16] = v10 + 4;
        *&v63[24] = 2048;
        *&v63[26] = v10;
        _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Frame type %d offset %zu nextNaluOffset %zu dataPointerLength %zu", buf, 0x40u);
      }
    }

    v8 = v14;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (FrameSliceHeader == 4)
    {
      v6 = v12;
      if (ErrorLogLevelForModule >= 8)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        v29 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v27;
            v58 = 2080;
            v59 = "_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer";
            v60 = 1024;
            v61 = 137;
            v62 = 1024;
            *v63 = 4;
            _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PPS NALU found: %d", buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = v27;
          v58 = 2080;
          v59 = "_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer";
          v60 = 1024;
          v61 = 137;
          v62 = 1024;
          *v63 = 4;
          _os_log_debug_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEBUG, " [%s] %s:%d PPS NALU found: %d", buf, 0x22u);
        }
      }

      if (__src)
      {
        free(__src);
      }

      v34 = malloc_type_malloc(v11, 0x100004077774924uLL);
      if (!v34)
      {
        _VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer_cold_1(v12, &v55, buf, &v56);
        v6 = v55;
        v37 = *buf;
        v4 = v56;
        if (!v55)
        {
          goto LABEL_67;
        }

LABEL_66:
        free(v6);
LABEL_67:
        if (!v37)
        {
          goto LABEL_69;
        }

LABEL_68:
        free(v37);
        goto LABEL_69;
      }

      __src = v34;
      memcpy(v34, v9, v11);
      if (v12)
      {
        v50 = v11;
LABEL_58:
        v4 = 2151809055;
        v37 = __src;
        if (__src)
        {
          v38 = v50 + v49;
          if (*a4 < v50 + v49)
          {
            v4 = 2151809087;
            if (VRTraceGetErrorLogLevelForModule() >= 3 && (v44 = VRTraceErrorLogLevelToCSTR(), v45 = *MEMORY[0x1E6986650], os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
            {
              v46 = *a4;
              *buf = 136316162;
              *&buf[4] = v44;
              v58 = 2080;
              v59 = "_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer";
              v60 = 1024;
              v61 = 156;
              v62 = 2048;
              *v63 = v46;
              *&v63[8] = 2048;
              *&v63[10] = v50 + v49;
              _os_log_error_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_ERROR, " [%s] %s:%d Output SPSPPS buffer size:%zu is less than the SPSPPS size:%zu", buf, 0x30u);
              v38 = 0;
              v4 = 2151809087;
            }

            else
            {
              v38 = 0;
            }

            v37 = __src;
          }

          else
          {
            memcpy(a3, v6, v49);
            v37 = __src;
            memcpy(&a3[v49], __src, v50);
            v4 = 0;
          }

          *a4 = v38;
          goto LABEL_66;
        }

LABEL_65:
        if (v6)
        {
          goto LABEL_66;
        }

        goto LABEL_67;
      }

      v50 = v11;
      goto LABEL_45;
    }

    v6 = v12;
    if (FrameSliceHeader == 3)
    {
      break;
    }

    if (FrameSliceHeader == 1)
    {
      if (ErrorLogLevelForModule >= 8)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        v21 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v19;
            v58 = 2080;
            v59 = "_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer";
            v60 = 1024;
            v61 = 121;
            v62 = 1024;
            *v63 = 1;
            v22 = v20;
            v23 = " [%s] %s:%d Slice NALU: %d, ignoring";
LABEL_31:
            _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = v19;
          v58 = 2080;
          v59 = "_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer";
          v60 = 1024;
          v61 = 121;
          v62 = 1024;
          *v63 = 1;
          v35 = v20;
          v36 = " [%s] %s:%d Slice NALU: %d, ignoring";
LABEL_53:
          _os_log_debug_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEBUG, v36, buf, 0x22u);
        }
      }
    }

    else if (ErrorLogLevelForModule >= 8)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      v32 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v30;
          v58 = 2080;
          v59 = "_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer";
          v60 = 1024;
          v61 = 151;
          v62 = 1024;
          *v63 = FrameSliceHeader;
          v22 = v31;
          v23 = " [%s] %s:%d Unknown NALU Type: %d, ignoring";
          goto LABEL_31;
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = v30;
        v58 = 2080;
        v59 = "_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer";
        v60 = 1024;
        v61 = 151;
        v62 = 1024;
        *v63 = FrameSliceHeader;
        v35 = v31;
        v36 = " [%s] %s:%d Unknown NALU Type: %d, ignoring";
        goto LABEL_53;
      }
    }

LABEL_45:
    if (cf)
    {
      CFRelease(cf);
    }

    v7 = v53;
    if (v53 >= a2)
    {
      goto LABEL_57;
    }
  }

  if (ErrorLogLevelForModule < 8)
  {
    goto LABEL_33;
  }

  v24 = VRTraceErrorLogLevelToCSTR();
  v25 = *MEMORY[0x1E6986650];
  v26 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] == 1)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v24;
      v58 = 2080;
      v59 = "_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer";
      v60 = 1024;
      v61 = 123;
      v62 = 1024;
      *v63 = 3;
      _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SPS NALU found: %d", buf, 0x22u);
      if (!v12)
      {
        goto LABEL_35;
      }

LABEL_34:
      free(v12);
      goto LABEL_35;
    }

LABEL_33:
    if (!v12)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_33;
  }

  *buf = 136315906;
  *&buf[4] = v24;
  v58 = 2080;
  v59 = "_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer";
  v60 = 1024;
  v61 = 123;
  v62 = 1024;
  *v63 = 3;
  _os_log_debug_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEBUG, " [%s] %s:%d SPS NALU found: %d", buf, 0x22u);
  if (v12)
  {
    goto LABEL_34;
  }

LABEL_35:
  v33 = malloc_type_malloc(v11, 0x100004077774924uLL);
  if (v33)
  {
    v6 = v33;
    memcpy(v33, v9, v11);
    if (__src)
    {
      v49 = v11;
LABEL_57:
      if (v6)
      {
        goto LABEL_58;
      }

LABEL_63:
      v4 = 2151809055;
LABEL_64:
      v37 = __src;
      goto LABEL_65;
    }

    __src = 0;
    v49 = v11;
    goto LABEL_45;
  }

  _VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer_cold_2(__src, &v55, buf);
  v4 = v55;
  v37 = *buf;
  if (*buf)
  {
    goto LABEL_68;
  }

LABEL_69:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t _VCSFrameCryptorH264_CreateAndGetBlockBufferPtr(uint64_t a1, CMBlockBufferRef *blockBufferOut, size_t dataLength, char **a4)
{
  if (CMBlockBufferCreateWithMemoryBlock(*(a1 + 8), 0, dataLength, *(a1 + 16), 0, 0, dataLength, 1u, blockBufferOut))
  {
    _VCSFrameCryptorH264_CreateAndGetBlockBufferPtr_cold_1();
    return v7;
  }

  result = CMBlockBufferGetDataPointer(*blockBufferOut, 0, 0, 0, a4);
  if (result)
  {
    _VCSFrameCryptorH264_CreateAndGetBlockBufferPtr_cold_2();
    return v7;
  }

  return result;
}

uint64_t _VCSFrameCryptorH264_ExtractSFramePayloadFromSlice(uint64_t a1, unsigned int *a2, CMBlockBufferRef sourceBuffer, CMBlockBufferRef *blockBufferOut, void *a5, uint64_t a6, uint64_t a7)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = bswap32(*a2);
  v9 = HIBYTE(v8) & 0x1F;
  v10 = BYTE2(v8);
  if (v9 == 5 && BYTE2(v8) == 184 || v9 == 1 && BYTE2(v8) == 224)
  {
    v11 = a6 + 6;
    v12 = a7 - 6;
    if (a7 != 6)
    {
      if (CMBlockBufferCreateContiguous(*(a1 + 8), sourceBuffer, *(a1 + 16), 0, a6 + 6, a7 - 6, 0, blockBufferOut))
      {
        _VCSFrameCryptorH264_ExtractSFramePayloadFromSlice_cold_1();
        return v20;
      }

      *a5 = v12;
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
          v20 = 136316162;
          v21 = v13;
          v22 = 2080;
          v23 = "_VCSFrameCryptorH264_ExtractSFramePayloadFromSlice";
          v24 = 1024;
          v25 = 209;
          v26 = 2048;
          *v27 = v11;
          *&v27[8] = 2048;
          v28 = v12;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d _VideoReceiver_FindAndCopySliceNalu: Found SFrame slice offset %zu length %zu", &v20, 0x30u);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v20 = 136316162;
        v21 = v13;
        v22 = 2080;
        v23 = "_VCSFrameCryptorH264_ExtractSFramePayloadFromSlice";
        v24 = 1024;
        v25 = 209;
        v26 = 2048;
        *v27 = v11;
        *&v27[8] = 2048;
        v28 = v12;
        _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, " [%s] %s:%d _VideoReceiver_FindAndCopySliceNalu: Found SFrame slice offset %zu length %zu", &v20, 0x30u);
      }
    }

    return 0;
  }

  else
  {
    v16 = 2151809055;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v20 = 136316162;
        v21 = v17;
        v22 = 2080;
        v23 = "_VCSFrameCryptorH264_ExtractSFramePayloadFromSlice";
        v24 = 1024;
        v25 = 211;
        v26 = 1024;
        *v27 = v9;
        *&v27[4] = 1024;
        *&v27[6] = v10;
        _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d _VideoReceiver_FindAndCopySliceNalu failed as fake nalu and slice header missing in SFrame, nalu hdr %d slice hdr %d", &v20, 0x28u);
      }
    }
  }

  return v16;
}

uint64_t _VCSFrameCryptorH264_FindAndExtractSliceNalu(uint64_t a1, CMBlockBufferRef theBuffer, unint64_t a3, CMBlockBufferRef *a4, void *a5)
{
  v50 = *MEMORY[0x1E69E9840];
  SFramePayloadFromSlice = 2151809055;
  cf = 0;
  if (!a3)
  {
    return SFramePayloadFromSlice;
  }

  v8 = 0;
  while (1)
  {
    lengthAtOffsetOut = 0xAAAAAAAAAAAAAAAALL;
    dataPointerOut = 0;
    totalLengthOut = 0xAAAAAAAAAAAAAAAALL;
    if (CMBlockBufferGetDataPointer(theBuffer, v8, &lengthAtOffsetOut, 0, &dataPointerOut))
    {
      _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_1();
LABEL_48:
      SFramePayloadFromSlice = 2151809055;
      goto LABEL_49;
    }

    if (v8 + 4 > a3 || lengthAtOffsetOut <= 3)
    {
      _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_7();
      goto LABEL_48;
    }

    v9 = bswap32(*dataPointerOut);
    v10 = v9 + 4;
    v11 = v9 + 4 + v8;
    if (v11 > a3)
    {
      _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_6();
      goto LABEL_48;
    }

    if (CMBlockBufferGetDataPointer(theBuffer, v8 + 4, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut))
    {
      _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_2();
      goto LABEL_48;
    }

    v12 = lengthAtOffsetOut;
    if (lengthAtOffsetOut >= v9)
    {
      v14 = 0;
      goto LABEL_13;
    }

    lengthAtOffsetOut = v9;
    v13 = malloc_type_malloc(v9, 0x100004077774924uLL);
    if (!v13)
    {
      _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_5();
      goto LABEL_48;
    }

    v14 = v13;
    if (CMBlockBufferAccessDataBytes(theBuffer, v8 + 4, lengthAtOffsetOut, v13, &dataPointerOut))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_3(v28);
        }
      }

      SFramePayloadFromSlice = 2151809055;
      goto LABEL_42;
    }

    v12 = lengthAtOffsetOut;
LABEL_13:
    FrameSliceHeader = ReadFrameSliceHeader(123, dataPointerOut, v12, &cf);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      v18 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316674;
          v37 = v16;
          v38 = 2080;
          v39 = "_VCSFrameCryptorH264_FindAndExtractSliceNalu";
          v40 = 1024;
          v41 = 256;
          v42 = 1024;
          v43 = FrameSliceHeader;
          v44 = 2048;
          v45 = v8;
          v46 = 2048;
          v47 = v10;
          v48 = 2048;
          v49 = lengthAtOffsetOut;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Frame type %d offset %zu nextNaluOffset %zu dataPointerLength %zu", buf, 0x40u);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316674;
        v37 = v16;
        v38 = 2080;
        v39 = "_VCSFrameCryptorH264_FindAndExtractSliceNalu";
        v40 = 1024;
        v41 = 256;
        v42 = 1024;
        v43 = FrameSliceHeader;
        v44 = 2048;
        v45 = v8;
        v46 = 2048;
        v47 = v10;
        v48 = 2048;
        v49 = lengthAtOffsetOut;
        _os_log_debug_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Frame type %d offset %zu nextNaluOffset %zu dataPointerLength %zu", buf, 0x40u);
      }
    }

    if (FrameSliceHeader == 1)
    {
      break;
    }

    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if ((FrameSliceHeader - 3) > 1)
    {
      if (ErrorLogLevelForModule >= 5)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v37 = v25;
          v38 = 2080;
          v39 = "_VCSFrameCryptorH264_FindAndExtractSliceNalu";
          v40 = 1024;
          v41 = 265;
          v42 = 1024;
          v43 = FrameSliceHeader;
          v23 = v26;
          v24 = " [%s] %s:%d Unknown NALU Type: %d, drop it";
LABEL_28:
          _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0x22u);
          if (!v14)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }
    }

    else if (ErrorLogLevelForModule >= 8)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      v22 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v37 = v20;
          v38 = 2080;
          v39 = "_VCSFrameCryptorH264_FindAndExtractSliceNalu";
          v40 = 1024;
          v41 = 263;
          v42 = 1024;
          v43 = FrameSliceHeader;
          v23 = v21;
          v24 = " [%s] %s:%d SPS/PPS NALU Type in clear: %d, drop it";
          goto LABEL_28;
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v37 = v20;
        v38 = 2080;
        v39 = "_VCSFrameCryptorH264_FindAndExtractSliceNalu";
        v40 = 1024;
        v41 = 263;
        v42 = 1024;
        v43 = FrameSliceHeader;
        _os_log_debug_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEBUG, " [%s] %s:%d SPS/PPS NALU Type in clear: %d, drop it", buf, 0x22u);
        if (!v14)
        {
          goto LABEL_33;
        }

LABEL_32:
        free(v14);
        goto LABEL_33;
      }
    }

    if (v14)
    {
      goto LABEL_32;
    }

LABEL_33:
    if (cf)
    {
      CFRelease(cf);
    }

    v8 = v11;
    if (v11 >= a3)
    {
      goto LABEL_48;
    }
  }

  SFramePayloadFromSlice = _VCSFrameCryptorH264_ExtractSFramePayloadFromSlice(a1, dataPointerOut, theBuffer, a4, a5, v8, v10);
  if (SFramePayloadFromSlice)
  {
    _VCSFrameCryptorH264_FindAndExtractSliceNalu_cold_4();
  }

  if (v14)
  {
LABEL_42:
    free(v14);
  }

LABEL_49:
  if (cf)
  {
    CFRelease(cf);
  }

  return SFramePayloadFromSlice;
}

uint64_t _VCSFrameCryptroH264_EscapeEncryptedBuffer(uint64_t a1, uint64_t a2, unint64_t a3, CMBlockBufferRef *blockBufferOut, size_t dataLength, uint64_t a6, char **a7)
{
  if (_VCSFrameCryptorH264_CreateAndGetBlockBufferPtr(a1, blockBufferOut, dataLength, a7))
  {
    _VCSFrameCryptroH264_EscapeEncryptedBuffer_cold_1();
    return v13;
  }

  result = VideoUtil_PerformEscapingForBuffer(a2, a3, &(*a7)[a6], dataLength - a6);
  if (result)
  {
    _VCSFrameCryptroH264_EscapeEncryptedBuffer_cold_2();
    return v13;
  }

  return result;
}

uint64_t _VCSFrameCryptorH264_RemoveEmulationBytesFromPayloadBuffer(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, CMBlockBufferRef *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  theBuffer = 0;
  v8 = a3 - a4;
  if (CMBlockBufferCreateWithMemoryBlock(*(a1 + 8), 0, v8, *(a1 + 16), 0, 0, v8, 1u, &theBuffer))
  {
    _VCSFrameCryptorH264_RemoveEmulationBytesFromPayloadBuffer_cold_1();
  }

  else
  {
    dataPointerOut = 0;
    if (CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut))
    {
      _VCSFrameCryptorH264_RemoveEmulationBytesFromPayloadBuffer_cold_2();
    }

    else
    {
      if (!VideoUtil_RemoveEmulationBytesFromBuffer(a2, a3, dataPointerOut, v8))
      {
        v9 = 0;
        *a5 = theBuffer;
        return v9;
      }

      _VCSFrameCryptorH264_RemoveEmulationBytesFromPayloadBuffer_cold_3();
    }
  }

  v9 = v13;
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v9;
}

uint64_t VCSFrameCryptorH264_Create(const void *a1, CFAllocatorRef **a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCSFrameCryptorH264_Create_cold_4();
    return v9;
  }

  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x6004082687C62uLL);
  if (!v4)
  {
    VCSFrameCryptorH264_Create_cold_3();
    return v9;
  }

  v5 = v4;
  v6 = *MEMORY[0x1E695E480];
  if (VCAllocatorFirstCome_Create(*MEMORY[0x1E695E480], "VCSFrameCryptorH264BlockBufferHeaderAllocator", v4 + 1))
  {
    VCSFrameCryptorH264_Create_cold_1();
LABEL_12:
    free(v5);
    return 0;
  }

  v10[0] = xmmword_1DBD47490;
  v10[1] = xmmword_1DBD474A0;
  if (VCAllocatorMultiQueue_Create(v6, "VCSFrameCryptorH264BlockBufferDataAllocator", 4u, v10, v5 + 2))
  {
    VCSFrameCryptorH264_Create_cold_2();
    goto LABEL_12;
  }

  v7 = CFRetain(a1);
  result = 0;
  *v5 = v7;
  *a2 = v5;
  return result;
}

uint64_t VCSFrameCryptorH264_Encrypt(uint64_t a1, int a2, CMBlockBufferRef theBuffer, CMBlockBufferRef *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  blockBufferOut = 0;
  bufferReference = 0;
  cf = 0;
  totalLengthOut = CMBlockBufferGetDataLength(theBuffer);
  if (_VCSFrameCryptorH264_ValidateInputParameters(a1, theBuffer, totalLengthOut, a4))
  {
    VCSFrameCryptorH264_Encrypt_cold_1();
  }

  else
  {
    dataPointerOut = 0;
    if (CMBlockBufferGetDataPointer(theBuffer, 0, &totalLengthOut, &totalLengthOut, &dataPointerOut))
    {
      VCSFrameCryptorH264_Encrypt_cold_2();
    }

    else
    {
      v25 = 400;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      __src[0] = v8;
      __src[1] = v8;
      __src[2] = v8;
      __src[3] = v8;
      __src[4] = v8;
      __src[5] = v8;
      __src[6] = v8;
      __src[7] = v8;
      __src[8] = v8;
      __src[9] = v8;
      __src[10] = v8;
      __src[11] = v8;
      __src[12] = v8;
      __src[13] = v8;
      __src[14] = v8;
      __src[15] = v8;
      __src[16] = v8;
      __src[17] = v8;
      __src[18] = v8;
      __src[19] = v8;
      __src[20] = v8;
      __src[21] = v8;
      __src[22] = v8;
      __src[23] = v8;
      __src[24] = v8;
      if (a2)
      {
        if (_VCSFrameCryptorH264_FindAndExtractSPSPPSFromEncodedBuffer(dataPointerOut, totalLengthOut, __src, &v25))
        {
          VCSFrameCryptorH264_Encrypt_cold_3();
          goto LABEL_52;
        }

        v9 = v25;
        v10 = v25 + 6;
      }

      else
      {
        v9 = 0;
        v25 = 0;
        v10 = 6;
      }

      if (VideoUtil_ReplaceNALLengthWithStartCode(dataPointerOut, totalLengthOut))
      {
        VCSFrameCryptorH264_Encrypt_cold_4();
      }

      else
      {
        dataLength = 0;
        if (VCCryptor_GetEncryptedBufferSize(*a1, totalLengthOut, &dataLength))
        {
          VCSFrameCryptorH264_Encrypt_cold_5();
        }

        else
        {
          v11 = dataLength + v10;
          __dst = 0;
          if (_VCSFrameCryptorH264_CreateAndGetBlockBufferPtr(a1, &bufferReference, dataLength + v10, &__dst))
          {
            VCSFrameCryptorH264_Encrypt_cold_6();
          }

          else if (CMBlockBufferCreateWithBufferReference(*(a1 + 8), bufferReference, v10, dataLength, 0, &blockBufferOut))
          {
            VCSFrameCryptorH264_Encrypt_cold_7();
          }

          else if (VCCryptor_Encrypt(*a1, theBuffer, &blockBufferOut))
          {
            VCSFrameCryptorH264_Encrypt_cold_8();
          }

          else
          {
            v22 = 0;
            if (CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &v22))
            {
              VCSFrameCryptorH264_Encrypt_cold_9();
            }

            else
            {
              EscapeCountForBuffer = VideoUtil_GetEscapeCountForBuffer(v22, dataLength);
              v13 = EscapeCountForBuffer;
              v21 = 0;
              if (!EscapeCountForBuffer)
              {
                goto LABEL_18;
              }

              v11 += EscapeCountForBuffer;
              if (!_VCSFrameCryptroH264_EscapeEncryptedBuffer(a1, v22, dataLength, &cf, v11, v10, &v21))
              {
                __dst = v21;
                if (bufferReference)
                {
                  CFRelease(bufferReference);
                }

                bufferReference = cf;
                cf = 0;
LABEL_18:
                if (v9 + 6 > v11)
                {
                  VCSFrameCryptorH264_Encrypt_cold_13(v11, v9 + 6, &v31);
                }

                else
                {
                  v14 = __dst;
                  if (__dst)
                  {
                    v15 = v13 + dataLength + 2;
                    if (v9 && a2)
                    {
                      memcpy(__dst, __src, v9);
                      v14 += v9;
                    }

                    *v14 = bswap32(v15);
                    if (a2)
                    {
                      v16 = 37;
                    }

                    else
                    {
                      v16 = 33;
                    }

                    if (a2)
                    {
                      v17 = -72;
                    }

                    else
                    {
                      v17 = -32;
                    }

                    v14[4] = v16;
                    v14[5] = v17;
                    if (CMBlockBufferIsRangeContiguous(bufferReference, 0, v11))
                    {
                      v18 = 0;
                      *a4 = bufferReference;
                      bufferReference = 0;
                      goto LABEL_31;
                    }

                    VCSFrameCryptorH264_Encrypt_cold_11();
                    goto LABEL_52;
                  }

                  VCSFrameCryptorH264_Encrypt_cold_12();
                }

                v18 = v31;
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v20 = VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    VCSFrameCryptorH264_Encrypt_cold_14(v20);
                  }
                }

                goto LABEL_53;
              }

              VCSFrameCryptorH264_Encrypt_cold_10();
            }
          }
        }
      }
    }
  }

LABEL_52:
  v18 = v31;
LABEL_53:
  if (bufferReference)
  {
    CFRelease(bufferReference);
  }

LABEL_31:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t _VCSFrameCryptorH264_ValidateInputParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    _VCSFrameCryptorH264_ValidateInputParameters_cold_4();
    return v5;
  }

  if (!a2)
  {
    _VCSFrameCryptorH264_ValidateInputParameters_cold_3();
    return v5;
  }

  if (!a4)
  {
    _VCSFrameCryptorH264_ValidateInputParameters_cold_2();
    return v5;
  }

  if (!a3)
  {
    _VCSFrameCryptorH264_ValidateInputParameters_cold_1();
    return v5;
  }

  return 0;
}

uint64_t VCSFrameCryptorH264_Decrypt(uint64_t *a1, CMBlockBufferRef theBuffer, CMBlockBufferRef *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  theBuffera = 0;
  cf = 0;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (_VCSFrameCryptorH264_ValidateInputParameters(a1, theBuffer, DataLength, a3))
  {
    VCSFrameCryptorH264_Decrypt_cold_1();
  }

  else
  {
    totalLengthOut = 0;
    if (_VCSFrameCryptorH264_FindAndExtractSliceNalu(a1, theBuffer, DataLength, &theBuffera, &totalLengthOut))
    {
      VCSFrameCryptorH264_Decrypt_cold_2();
    }

    else
    {
      dataPointerOut = 0;
      if (CMBlockBufferGetDataPointer(theBuffera, 0, &totalLengthOut, &totalLengthOut, &dataPointerOut))
      {
        VCSFrameCryptorH264_Decrypt_cold_3();
      }

      else
      {
        EmulationByteCountForBuffer = VideoUtil_GetEmulationByteCountForBuffer(dataPointerOut, totalLengthOut);
        if (EmulationByteCountForBuffer)
        {
          if (_VCSFrameCryptorH264_RemoveEmulationBytesFromPayloadBuffer(a1, dataPointerOut, totalLengthOut, EmulationByteCountForBuffer, &cf))
          {
            VCSFrameCryptorH264_Decrypt_cold_4();
            goto LABEL_30;
          }

          if (theBuffera)
          {
            CFRelease(theBuffera);
          }

          v8 = cf;
          theBuffera = cf;
          cf = 0;
        }

        else
        {
          v8 = theBuffera;
        }

        if (VCCryptor_Decrypt(*a1, v8, &v16))
        {
          VCSFrameCryptorH264_Decrypt_cold_5();
        }

        else
        {
          v12 = 0;
          if (CMBlockBufferGetDataPointer(v16, 0, 0, 0, &v12))
          {
            VCSFrameCryptorH264_Decrypt_cold_6();
          }

          else
          {
            v9 = CMBlockBufferGetDataLength(v16);
            if (v9 > totalLengthOut)
            {
              VCSFrameCryptorH264_Decrypt_cold_8(&totalLengthOut, v9, &v18);
            }

            else
            {
              if (!VideoUtil_ReplaceStartCodeWithNALLength(v12, v9))
              {
                v10 = 0;
                *a3 = v16;
                v16 = 0;
                goto LABEL_15;
              }

              VCSFrameCryptorH264_Decrypt_cold_7();
            }
          }
        }
      }
    }
  }

LABEL_30:
  v10 = v18;
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (theBuffera)
  {
    CFRelease(theBuffera);
  }

  return v10;
}

void RSEncode(unsigned __int8 *a1, _BYTE *a2, int a3)
{
  if (_RS_isOptimizationEnabled == 1)
  {
    v3 = 0uLL;
    if (gGenPolyDegree <= 0xEu)
    {
      v4 = (15 - gGenPolyDegree);
      do
      {
        v5 = *a1++;
        v6 = gIndexTable[(v5 ^ v3.i8[0]) & 0xF];
        v3 = vshrq_n_u64(v3, 8uLL);
        if (v6 != 15)
        {
          v3 = veorq_s8(vqtbl1q_s8(*&gAlphaTable[v6], xmmword_1DBD474B0), v3);
        }

        --v4;
      }

      while (v4);
    }

    if (a3 >= 1)
    {
      for (i = 0; i != a3; ++i)
      {
        v8 = v3;
        a2[i] = *(&v8 | i & 0xF);
      }
    }
  }

  else
  {
    _RS_Encode_Original(a1, a2, a3);
  }
}

void _RS_Encode_Original(uint64_t a1, _BYTE *a2, int a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = gGenPolyDegree;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - v7;
  v9 = v21 - v7;
  if (v6)
  {
    memset(v9, 170, v6);
    bzero(v8, v6);
    if (v6 > 0xE)
    {
      goto LABEL_16;
    }
  }

  else
  {
    bzero(v9, v6);
  }

  v10 = 0;
  v11 = gGenPoly[v6];
  v12 = gGenPoly[0];
  do
  {
    v13 = gIndexTable[v8[v6 - 1] ^ *(a1 + v10)] - v11;
    if (v13 == 15)
    {
      v14 = (v6 - 1);
      if (v6 >= 2)
      {
        do
        {
          v8[v14] = v8[v14 - 1];
          v15 = v14-- <= 1;
        }

        while (!v15);
      }

      v16 = 0;
    }

    else
    {
      v17 = (v6 - 1);
      if (v6 >= 2)
      {
        do
        {
          v8[v17] = gAlphaTable[v13 + gGenPoly[v17]] ^ v8[v17 - 1];
          v15 = v17-- <= 1;
        }

        while (!v15);
      }

      v16 = gAlphaTable[v12 + v13];
    }

    *v8 = v16;
    ++v10;
  }

  while (v10 != 15 - v6);
LABEL_16:
  if (a3 >= 1)
  {
    v18 = a3;
    v19 = &v8[v6 - 1];
    do
    {
      v20 = *v19--;
      *a2++ = v20;
      --v18;
    }

    while (v18);
  }
}

unsigned __int8 *RSEncode2Nibbles(unsigned __int8 *result, uint64_t a2, int a3)
{
  v3 = 0uLL;
  if (gGenPolyDegree <= 0xEu)
  {
    v4 = (15 - gGenPolyDegree);
    do
    {
      v5 = *result++;
      v6 = v5 ^ v3.i8[0];
      v7 = gIndexTable[(v5 ^ v3.i8[0]) & 0xF];
      v3 = vshrq_n_u64(v3, 8uLL);
      if (v7 != 15)
      {
        v3 = veorq_s8(vqtbl1q_s8(*(&gAlphaTable + v7), xmmword_1DBD474B0), v3);
      }

      v8 = gIndexTable[v6 >> 4];
      if (v8 != 15)
      {
        v3 = veorq_s8(vshlq_n_s8(vqtbl1q_s8(*(&gAlphaTable + v8), xmmword_1DBD474B0), 4uLL), v3);
      }

      --v4;
    }

    while (v4);
  }

  if (a3 >= 1)
  {
    for (i = 0; i != a3; ++i)
    {
      v10 = v3;
      *(a2 + i) = *(&v10 | i & 0xF);
    }
  }

  return result;
}

int8x16_t RSEncodeSimd(uint64_t a1, int a2, int8x16_t result)
{
  result.i64[0] = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 128) = 0u;
  if (a2 >= 1)
  {
    v3 = 8 - a2;
    do
    {
      v4 = veorq_s8(*(a1 + 128), *(a1 + 16 * v3));
      v5 = 6u;
      v6 = (a1 + 144);
      do
      {
        v6[-1] = veorq_s8(vqtbl1q_s8(gPolyMulTable[v5], v4), *v6);
        ++v6;
        --v5;
      }

      while (v5 * 16);
      result = vqtbl1q_s8(gPolyMulTable[0], v4);
      *(a1 + 224) = result;
      ++v3;
    }

    while (v3 != 8);
  }

  return result;
}

uint64_t RSEncodeSimd2Nibbles(uint64_t result, int a2)
{
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 128) = 0u;
  if (a2 >= 1)
  {
    v2 = 8 - a2;
    v3.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v3.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    do
    {
      v4 = veorq_s8(*(result + 128), *(result + 16 * v2));
      v5 = vandq_s8(v4, v3);
      v6 = vshrq_n_u8(v4, 4uLL);
      v7 = 6u;
      v8 = (result + 128);
      v9 = (result + 128);
      do
      {
        v10 = v9[1];
        ++v9;
        v11 = veorq_s8(vqtbl1q_s8(gPolyMulTable[v7], v5), v10);
        *v8 = v11;
        *v8 = veorq_s8(vshlq_n_s8(vqtbl1q_s8(gPolyMulTable[v7], v6), 4uLL), v11);
        v8 = v9;
        --v7;
      }

      while (v7 * 16);
      *(result + 224) = vsliq_n_s8(vqtbl1q_s8(gPolyMulTable[0], v5), vqtbl1q_s8(gPolyMulTable[0], v6), 4uLL);
      ++v2;
    }

    while (v2 != 8);
  }

  return result;
}

uint64_t Decode(int8x16_t *a1, uint64_t a2, int a3, unsigned __int8 *a4, uint64_t a5, int8x16_t *a6)
{
  v58[2] = *MEMORY[0x1E69E9840];
  if (_RS_isOptimizationEnabled == 1)
  {
    *(v58 + 3) = 0;
    LODWORD(v58[0]) = 0;
    v6 = gGenPolyDegree;
    if (gGenPolyDegree)
    {
      v7 = 0;
      v8 = vqtbl1q_s8(xmmword_1DBD474C0, *a1);
      v9.i64[0] = 0xF0F0F0F0F0F0F0FLL;
      v9.i64[1] = 0xF0F0F0F0F0F0F0FLL;
      v10 = vbicq_s8(vtstq_s8(*a6, *a6), vceqq_s8(v8, v9));
      v11.i64[0] = 0x8989898989898989;
      v11.i64[1] = 0x8989898989898989;
      v12 = v58;
      do
      {
        LODWORD(v13) = v6 - v7;
        if (v6 >= v7)
        {
          v13 = v13;
        }

        else
        {
          v13 = 0;
        }

        v14 = vaddq_s8(v8, xmmword_1DBD474D0);
        v8 = vmlsq_s8(v14, vshrq_n_u8(vuzp2q_s8(vmull_u8(*v14.i8, *v11.i8), vmull_high_u8(v14, v11)), 3uLL), v9);
        if ((a3 & 0x80000000) == 0)
        {
          v15 = vandq_s8(vqtbl1q_s8(xmmword_1DBD474E0, v8), v10);
          v16 = v15.i64[1] & 0xFFFFFFFFFFFFFFLL ^ v15.i64[0] ^ ((v15.i64[1] & 0xFFFFFFFFFFFFFFuLL ^ v15.i64[0]) >> 32);
          v17 = gIndexTable[(BYTE2(v16) ^ v16 ^ ((WORD1(v16) ^ v16) >> 8))];
          if (v17 != 15)
          {
            v18 = a4;
            v19 = v12;
            v20 = (a3 + 1);
            do
            {
              if (!v13)
              {
                break;
              }

              v21 = *v18;
              if (v21 != 15)
              {
                *v19 ^= gAlphaTable[v21 + v17];
              }

              ++v19;
              ++v18;
              --v13;
              --v20;
            }

            while (v20);
          }
        }

        if (v7)
        {
          *(v58 + v7) = gIndexTable[*(v58 + v7)];
        }

        ++v7;
        v12 = (v12 + 1);
      }

      while (v7 != v6);
    }

    if (a3 >= 1)
    {
      v22 = 0;
      v23 = LOBYTE(v58[0]);
      do
      {
        v24 = *(a2 + v22);
        if (v24 > 7)
        {
          break;
        }

        v25 = v23;
        if (v6 >= 2)
        {
          v26 = &gAlphaTable[v24 + 1];
          v27 = v58 + 1;
          v28 = v6 - 1;
          v25 = v23;
          do
          {
            v30 = *v27++;
            v29 = v30;
            if (v30 != 15)
            {
              v25 ^= v26[v29];
            }

            v26 += v24 + 1;
            --v28;
          }

          while (v28);
        }

        if (v25)
        {
          LOBYTE(v25) = gAlphaTable[gIndexTable[v25] - *(a5 + v22) + 15];
        }

        a1->i8[v24] = v25;
        ++v22;
      }

      while (v22 != a3);
    }
  }

  else
  {
    v31 = 0;
    memset(v57, 0, 7);
    memset(v58, 170, 15);
    do
    {
      *(v58 + v31) = gIndexTable[a1->u8[v31]];
      ++v31;
    }

    while (v31 != 15);
    v32 = gGenPolyDegree;
    if (gGenPolyDegree)
    {
      v33 = 0;
      v34 = gGenPolyDegree;
      v35 = v57;
      do
      {
        v36 = 0;
        v37 = 0;
        v38 = v33++;
        v39 = 14 * v33;
        do
        {
          if (a6->i8[v36])
          {
            v40 = *(v58 + v36);
            if (v40 != 15)
            {
              v37 ^= gAlphaTable[v39 + v40];
            }
          }

          v39 -= v33;
          ++v36;
        }

        while (v36 != 15);
        if ((a3 & 0x80000000) == 0)
        {
          v41 = gIndexTable[v37];
          if (v41 != 15)
          {
            v42 = v34;
            v43 = a4;
            v44 = v35;
            v45 = (a3 + 1);
            do
            {
              if (!v42)
              {
                break;
              }

              v46 = *v43;
              if (v46 != 15)
              {
                *v44 ^= gAlphaTable[v46 + v41];
              }

              ++v44;
              ++v43;
              --v42;
              --v45;
            }

            while (v45);
          }
        }

        if (v38)
        {
          v57[v38] = gIndexTable[v57[v38]];
        }

        ++v35;
        --v34;
      }

      while (v33 != v32);
    }

    if (a3 >= 1)
    {
      v47 = 0;
      v48 = v57[0];
      do
      {
        v49 = *(a2 + v47);
        if (v49 > 7)
        {
          break;
        }

        v50 = v48;
        if (v32 >= 2)
        {
          v51 = &gAlphaTable[v49 + 1];
          v52 = &v57[1];
          v53 = v32 - 1;
          v50 = v48;
          do
          {
            v55 = *v52++;
            v54 = v55;
            if (v55 != 15)
            {
              v50 ^= v51[v54];
            }

            v51 += v49 + 1;
            --v53;
          }

          while (v53);
        }

        if (v50)
        {
          LOBYTE(v50) = gAlphaTable[gIndexTable[v50] - *(a5 + v47) + 15];
        }

        a1->i8[v49] = v50;
        ++v47;
      }

      while (v47 != a3);
    }
  }

  return 0;
}

_BYTE *RSCalculateGammaPoly(_BYTE *result, int a2, uint64_t a3)
{
  *result = 1;
  if (a2 >= 1)
  {
    for (i = 0; i != a2; ++i)
    {
      v4 = (14 - *(a3 + i));
      v5 = i;
      do
      {
        if (result[v5])
        {
          result[v5 + 1] ^= gAlphaTable[gIndexTable[result[v5]] + v4];
        }

        v6 = v5-- + 1;
      }

      while (v6 > 1);
    }
  }

  return result;
}

uint64_t RSCalculateGammaDerEvalAtErasures(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    for (i = 0; i != a3; *(result + i++) = gIndexTable[v5])
    {
      v5 = *(a2 + 1);
      if (a3 >= 3)
      {
        v6 = 2 * *(a4 + i) + 2;
        for (j = 3; j <= a3; j += 2)
        {
          if (*(a2 + j))
          {
            v5 ^= gAlphaTable[v6 + gIndexTable[*(a2 + j)]];
          }

          v6 += 2 * *(a4 + i) + 2;
        }
      }
    }
  }

  return result;
}

_BYTE *RSConvertToAlphaPow(_BYTE *result, unsigned __int8 *a2, int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    v3 = (a3 + 1);
    do
    {
      v4 = *a2++;
      *result++ = gIndexTable[v4];
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t RSDecodeSimd(uint64_t result, uint64_t a2, int a3, unsigned __int8 *a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  v5 = gGenPolyDegree;
  if (gGenPolyDegree)
  {
    v6 = 0;
    v7 = -1;
    v8 = &v28;
    v9 = 14;
    v10 = gGenPolyDegree;
    do
    {
      v11 = 0;
      v12 = 0uLL;
      v13 = gAlphaTable;
      do
      {
        v12 = veorq_s8(vqtbl1q_s8(gGFMulTable[v13[v9]], *(result + v11)), v12);
        v13 += v7;
        v11 += 16;
      }

      while (v11 != 240);
      if ((a3 & 0x80000000) == 0)
      {
        v14 = v10;
        v15 = a4;
        v16 = v8;
        v17 = (a3 + 1);
        do
        {
          if (!v14)
          {
            break;
          }

          v18 = *v15;
          if (v18 != 15)
          {
            *v16 = veorq_s8(*v16, vqtbl1q_s8(gGFMulTable[gAlphaTable[v18]], v12));
          }

          ++v16;
          ++v15;
          --v14;
          --v17;
        }

        while (v17);
      }

      ++v6;
      v9 += 14;
      --v7;
      ++v8;
      --v10;
    }

    while (v6 != v5);
  }

  if (a3 >= 1)
  {
    v19 = 0;
    v20 = a3;
    v21 = v28;
    do
    {
      v22 = *(a2 + v19);
      if (v22 > 7)
      {
        break;
      }

      v23 = v21;
      if (v5 >= 2)
      {
        v24 = &gAlphaTable[v22 + 1];
        v25 = v29;
        v26 = v5 - 1;
        v23 = v21;
        do
        {
          v27 = *v25++;
          v23 = veorq_s8(vqtbl1q_s8(gGFMulTable[*v24], v27), v23);
          v24 += v22 + 1;
          --v26;
        }

        while (v26);
      }

      *(result + 16 * v22) = vqtbl1q_s8(gGFMulTable[gInverseTable[gAlphaTable[*(a5 + v19++)]]], v23);
    }

    while (v19 != v20);
  }

  return result;
}

uint64_t RSUtil_SetOptimizationModeForFECUnit(int a1, int a2)
{
  v4 = 0;
  v5 = 0;
  v25 = *MEMORY[0x1E69E9840];
  _RSU_FECOptimizationMode[a2] = a1;
  v6 = 1;
  do
  {
    v7 = v6;
    v5 |= _RSU_FECOptimizationMode[v4] != 0;
    v4 = 1;
    v6 = 0;
  }

  while ((v7 & 1) != 0);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136316674;
      v12 = v8;
      v13 = 2080;
      v14 = "RSUtil_SetOptimizationModeForFECUnit";
      v15 = 1024;
      v16 = 83;
      v17 = 1024;
      v18 = a2;
      v19 = 1024;
      v20 = a1;
      v21 = 1024;
      v22 = v5 & 1;
      v23 = 1024;
      v24 = 1;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Selected FEC Optimization: unit %d, finalFECMode: %d, RSOptimization: %d, interleaved SIMD load/store instr available: %d", &v11, 0x34u);
    }
  }

  _RSU_FECOptimizationMode[a2] = a1;
  return RS_SetOptimizationEnabled(v5 & 1);
}

uint64_t RSUtil_SetOptimizationMode(int a1)
{
  RSUtil_SetOptimizationModeForFECUnit(a1, 0);

  return RSUtil_SetOptimizationModeForFECUnit(a1, 1);
}

uint64_t RSU_Encode(uint64_t a1, __int16 *a2, int a3, uint64_t *a4, uint64_t a5, unsigned int *a6, int *a7, int *a8, _WORD *a9, char a10)
{
  v53 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (a3 >= 9)
  {
    RSU_Encode_cold_3(v50);
    v40 = LODWORD(v50[0]);
    goto LABEL_21;
  }

  v43 = a8;
  v44 = a1;
  v42 = a7;
  v18 = a9;
  v19 = 8 / a3;
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v52[12] = v20;
  v51[1] = v20;
  *v52 = v20;
  v21 = 8 % a3;
  v51[0] = v20;
  if (8 / a3 * a3 >= 1)
  {
    v22 = 0;
    do
    {
      *(v51 + v21 + v22) = v22 / v19;
      v23 = v21 + 1 + v22++;
    }

    while (v23 != 8);
  }

  if (!a9 || !a10)
  {
    goto LABEL_19;
  }

  memset(v50, 0, sizeof(v50));
  memset(v49, 0, sizeof(v49));
  memset(v48, 0, sizeof(v48));
  if (a3 >= 1)
  {
    v24 = a3;
    v25 = v48;
    v26 = v49;
    v27 = v50;
    v28 = a2;
    v29 = v50;
    do
    {
      v30 = *v28;
      v28 += 2;
      *v29 = v30;
      v29 += 16;
      *v26++ = 2;
      *v25++ = v27;
      v27 = v29;
      --v24;
    }

    while (v24);
  }

  v31 = 0;
  memset(v47, 0, sizeof(v47));
  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[1] = v32;
  v45[2] = v32;
  v45[0] = v32;
  v33 = xmmword_1DBD45330;
  v34 = v47;
  v35 = vdupq_n_s64(2uLL);
  v36 = vdupq_n_s64(7uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v36, v33)).u8[0])
    {
      *&v45[v31] = v34;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v33)).i32[1])
    {
      *(&v45[v31] + 1) = v34 + 2;
    }

    v33 = vaddq_s64(v33, v35);
    ++v31;
    v34 += 4;
  }

  while (v31 != 4);
  v37 = _RSU_EncodeByteBuffer(v48, v49, a3, v45, 0, 0, 8 / a3, v21, v51);
  if (!v37)
  {
    for (i = 0; i != 14; i += 2)
    {
      *v18++ = v47[i];
    }

LABEL_19:
    v39 = _RSU_EncodeByteBuffer(v44, a2, a3, a4, a5, a6, 8 / a3, v21, v51);
    if (v39)
    {
      RSU_Encode_cold_2(v39, v50);
      v40 = LODWORD(v50[0]);
    }

    else
    {
      v40 = 0;
      *v42 = v19;
      *v43 = v21;
    }

    goto LABEL_21;
  }

  v40 = v37;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RSU_Encode_cold_1();
    }
  }

LABEL_21:
  kdebug_trace();
  return v40;
}

uint64_t _RSU_EncodeByteBuffer(uint64_t a1, _DWORD *a2, int a3, uint64_t *a4, uint64_t a5, unsigned int *a6, int a7, int a8, uint64_t a9)
{
  v9 = a5;
  v172 = *MEMORY[0x1E69E9840];
  LODWORD(v13) = *a2;
  if (a3 >= 2)
  {
    v14 = a2 + 1;
    v15 = a3 - 1;
    do
    {
      v17 = *v14++;
      v16 = v17;
      if (v17 > v13)
      {
        LODWORD(v13) = v16;
      }

      --v15;
    }

    while (v15);
  }

  if (a7 == 4)
  {
    v130 = a6;
    v13 = (v13 & 1) + v13;
    memset(v162, 0, 15);
    v45.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v45.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v160 = v45;
    v161 = v45;
    v158 = v45;
    v159 = v45;
    v156 = v45;
    v157 = v45;
    v154 = v45;
    v155 = v45;
    v152 = v45;
    v153 = v45;
    v150 = v45;
    v151 = v45;
    v148 = v45;
    v149 = v45;
    v147 = v45;
    if (_RSU_FECOptimizationMode[0] >= 2u)
    {
      if (_RSU_FECOptimizationMode[0] != 2)
      {
LABEL_171:
        v44 = 2150825985;
        goto LABEL_172;
      }

      if (v13 >= 1)
      {
        v73 = 0;
        v134 = 4 * a3;
        v74.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v74.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        v75 = 0uLL;
        do
        {
          v76 = v73 + 32;
          if (a8 <= 7)
          {
            v77 = a8;
            do
            {
              v78 = *(a9 + 4 * v77);
              v79 = a2[v78];
              v80 = v79 < v76;
              if (v73 >= v79)
              {
                v80 = 2;
              }

              if (v80)
              {
                if (v80 == 2)
                {
                  v81 = &v147.i8[16 * v77];
                  *(v81 + 2) = v75;
                  *(v81 + 3) = v75;
                  *v81 = v75;
                  *(v81 + 1) = v75;
                }

                else
                {
                  v84 = 0;
                  v85 = &v147 + v77;
                  v45 = v85[1];
                  v86 = v85[3];
                  v87 = v73;
                  do
                  {
                    if (v87 >= v79)
                    {
                      v89 = 0;
                      v85->i8[v84 & 0xF] = 0;
                    }

                    else
                    {
                      v88 = *(a1 + 8 * v78);
                      v85->i8[v84 & 0xF] = *(v88 + v87) >> 4;
                      v89 = *(v88 + v87) & 0xF;
                    }

                    v146 = v45;
                    *(&v146 | v84 & 0xF) = v89;
                    v45 = v146;
                    v85[1] = v146;
                    if (v87 + 1 >= v79)
                    {
                      v91 = 0;
                      v85[2].i8[v84 & 0xF] = 0;
                    }

                    else
                    {
                      v90 = *(a1 + 8 * v78) + v87;
                      v85[2].i8[v84 & 0xF] = *(v90 + 1) >> 4;
                      v91 = *(v90 + 1) & 0xF;
                    }

                    v145 = v86;
                    *(&v145 | v84 & 0xF) = v91;
                    v86 = v145;
                    v85[3] = v145;
                    ++v84;
                    v87 += 2;
                  }

                  while (v84 != 16);
                }
              }

              else
              {
                v82 = (*(a1 + 8 * v78) + v73);
                v173 = vld2q_s8(v82);
                v83 = &v147.i8[16 * v77];
                *v83 = vshrq_n_u8(v173.val[0], 4uLL);
                *(v83 + 1) = vandq_s8(v173.val[0], v74);
                v45 = vandq_s8(v173.val[1], v74);
                *(v83 + 2) = vshrq_n_u8(v173.val[1], 4uLL);
                *(v83 + 3) = v45;
              }

              v43 = v77 < 4;
              v77 += 4;
            }

            while (v43);
          }

          v45 = RSEncodeSimd(&v147, v134, v45);
          if (v13 >= v76)
          {
            v174.val[0] = vsliq_n_s8(v156, v155, 4uLL);
            v45 = v157;
            v174.val[1] = vsliq_n_s8(v158, v157, 4uLL);
            v95 = (*a4 + v73);
            vst2q_s8(v95, v174);
            v74.i64[0] = 0xF0F0F0F0F0F0F0FLL;
            v74.i64[1] = 0xF0F0F0F0F0F0F0FLL;
            v75 = 0uLL;
          }

          else
          {
            v92 = 0;
            v93 = 0;
            v74.i64[0] = 0xF0F0F0F0F0F0F0FLL;
            v74.i64[1] = 0xF0F0F0F0F0F0F0FLL;
            v75 = 0uLL;
            do
            {
              v94 = v73 + v93;
              if (v73 + v93 >= v13)
              {
                break;
              }

              v143 = v155;
              *(v94 + *a4) = 16 * *(&v143 | v92 & 0xF);
              v144 = v156;
              *(v94 + *a4) |= *(&v144 | v92 & 0xF) & 0xF;
              if (v94 + 1 >= v13)
              {
                if (VRTraceGetErrorLogLevelForModule() < 3)
                {
                  goto LABEL_171;
                }

                v113 = v9;
                v114 = VRTraceErrorLogLevelToCSTR();
                v115 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316418;
                  *&buf[4] = v114;
                  *&buf[12] = 2080;
                  *&buf[14] = "_RSU_GatherToParityFourSymbols";
                  v164 = 1024;
                  v165 = 369;
                  v166 = 1024;
                  v167 = v13;
                  v168 = 1024;
                  v169 = v73;
                  v170 = 1024;
                  v171 = v92;
                  _os_log_error_impl(&dword_1DB56E000, v115, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot fit all parity into packet. Size=%d, offset=%d, codewordIdx=%d", buf, 0x2Eu);
                }

                v44 = 2150825985;
                v9 = v113;
                goto LABEL_172;
              }

              v141 = v157;
              *(*a4 + v73 + v93 + 1) = 16 * *(&v141 | v92 & 0xF);
              v45 = v158;
              v142 = v158;
              *(*a4 + v73 + v93 + 1) |= *(&v142 | v92 & 0xF) & 0xF;
              v93 += 2;
              ++v92;
            }

            while (v93 != 32);
          }

          v44 = 0;
          v73 += 32;
        }

        while (v13 > v76);
LABEL_172:
        v96 = 1;
        a6 = v130;
        if (!v130)
        {
          goto LABEL_174;
        }

        goto LABEL_173;
      }
    }

    else if (v13 >= 1)
    {
      v46 = 0;
      do
      {
        v47 = v46 | 1;
        if (a8 <= 7)
        {
          v48 = a8;
          do
          {
            v49 = *(a9 + 4 * v48);
            v50 = a2[v49];
            if (v46 >= v50)
            {
              v52 = 0;
              *(v162 + v48) = 0;
            }

            else
            {
              v51 = *(a1 + 8 * v49);
              *(v162 + v48) = *(v51 + v46) >> 4;
              v52 = *(v51 + v46) & 0xF;
            }

            *(v162 + v48 + 1) = v52;
            if (v47 >= v50)
            {
              v54 = 0;
              *(v162 + v48 + 2) = 0;
            }

            else
            {
              v53 = *(a1 + 8 * v49);
              *(v162 + v48 + 2) = *(v53 + v47) >> 4;
              v54 = *(v53 + v47) & 0xF;
            }

            *(v162 + v48 + 3) = v54;
            v43 = v48 < 4;
            v48 += 4;
          }

          while (v43);
        }

        RSEncode(v162, &v162[1], 7);
        *(*a4 + v46) = 16 * LOBYTE(v162[1]);
        *(*a4 + v46) |= BYTE1(v162[1]) & 0xF;
        *(*a4 + v47) = 16 * BYTE2(v162[1]);
        *(*a4 + v47) |= BYTE3(v162[1]) & 0xF;
        v46 += 2;
      }

      while (v13 > v46);
      v44 = 0;
      v9 = a5;
      goto LABEL_172;
    }

    v44 = 0;
    goto LABEL_172;
  }

  v133 = v13;
  if (a7 == 2)
  {
    *&buf[7] = 0;
    *buf = 0;
    v36.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v36.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v160 = v36;
    v161 = v36;
    v158 = v36;
    v159 = v36;
    v156 = v36;
    v157 = v36;
    v154 = v36;
    v155 = v36;
    v152 = v36;
    v153 = v36;
    v150 = v36;
    v151 = v36;
    v148 = v36;
    v149 = v36;
    v147 = v36;
    if (_RSU_FECOptimizationMode[0] >= 2u)
    {
      if (_RSU_FECOptimizationMode[0] != 2)
      {
        v44 = 2150825985;
        goto LABEL_129;
      }

      if (v13 >= 1)
      {
        v55 = 0;
        v132 = 2 * a3;
        v129 = a6;
        v56.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v56.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        v57 = 0uLL;
        v58 = v13;
        do
        {
          v59 = v55 + 16;
          if (a8 <= 7)
          {
            v60 = a8;
            do
            {
              v61 = *(a9 + 4 * v60);
              v62 = a2[v61];
              if (v55 >= v62)
              {
                v63 = 2;
              }

              else
              {
                v63 = v62 < v59;
              }

              v64 = (&v147 + v60);
              if (v63)
              {
                if (v63 == 2)
                {
                  *v64 = v57;
                  *(v64 + 16) = v57;
                }

                else
                {
                  v66 = 0;
                  v36 = *(&v148 + v60);
                  do
                  {
                    if (v55 + v66 >= v62)
                    {
                      v68 = 0;
                      *(v64 & 0xFFFFFFFFFFFFFFF0 | v66 & 0xF) = 0;
                    }

                    else
                    {
                      v67 = *(a1 + 8 * v61) + v55;
                      *(v64 & 0xFFFFFFFFFFFFFFF0 | v66 & 0xF) = *(v67 + v66) >> 4;
                      v68 = *(v67 + v66) & 0xF;
                    }

                    v140 = v36;
                    *(&v140 | v66 & 0xF) = v68;
                    v36 = v140;
                    *(&v148 + v60) = v140;
                    ++v66;
                  }

                  while (v66 != 16);
                }
              }

              else
              {
                v65 = *(a1 + 8 * v61);
                *v64 = vshrq_n_u8(*(v65 + v55), 4uLL);
                v36 = vandq_s8(*(v65 + v55), v56);
                *(v64 + 16) = v36;
              }

              v43 = v60 < 6;
              v60 += 2;
            }

            while (v43);
          }

          v13 = v58;
          v36 = RSEncodeSimd(&v147, v132, v36);
          if (v133 >= v59)
          {
            *(*a4 + v55) = vshlq_n_s8(v155, 4uLL);
            v56.i64[0] = 0xF0F0F0F0F0F0F0FLL;
            v56.i64[1] = 0xF0F0F0F0F0F0F0FLL;
            *(*a4 + v55) = vorrq_s8(*(*a4 + v55), vandq_s8(v156, v56));
            *(a4[1] + v55) = vshlq_n_s8(v157, 4uLL);
            *(a4[1] + v55) = vorrq_s8(*(a4[1] + v55), vandq_s8(v158, v56));
            *(a4[2] + v55) = vshlq_n_s8(v159, 4uLL);
            v72 = a4[2];
            v36 = vorrq_s8(*(v72 + v55), vandq_s8(v160, v56));
            *(v72 + v55) = v36;
            v57 = 0uLL;
          }

          else
          {
            v69 = 0;
            v56.i64[0] = 0xF0F0F0F0F0F0F0FLL;
            v56.i64[1] = 0xF0F0F0F0F0F0F0FLL;
            v57 = 0uLL;
            do
            {
              v70 = 0;
              v71 = 2 * v69;
              do
              {
                if (v13 == v70)
                {
                  break;
                }

                v138 = *(&v155 + v71);
                *(a4[v69] + v55 + v70) = 16 * *(&v138 | v70 & 0xF);
                v36 = *(&v156 + v71);
                v139 = v36;
                *(a4[v69] + v55 + v70) |= *(&v139 | v70 & 0xF) & 0xF;
                ++v70;
              }

              while (v70 != 16);
              ++v69;
            }

            while (v69 != 3);
          }

          v58 = v13 - 16;
          v55 += 16;
          LODWORD(v13) = v133;
        }

        while (v133 > v59);
        v44 = 0;
        v9 = a5;
        goto LABEL_97;
      }
    }

    else if (v13 >= 1)
    {
      v129 = a6;
      v38 = 0;
      do
      {
        if (a8 <= 7)
        {
          v39 = a8;
          do
          {
            v40 = *(a9 + 4 * v39);
            if (v38 >= a2[v40])
            {
              v42 = 0;
              buf[v39] = 0;
            }

            else
            {
              v41 = *(a1 + 8 * v40);
              buf[v39] = *(v41 + v38) >> 4;
              v42 = *(v41 + v38) & 0xF;
            }

            buf[v39 + 1] = v42;
            v43 = v39 < 6;
            v39 += 2;
          }

          while (v43);
        }

        RSEncode(buf, &buf[8], 7);
        *(*a4 + v38) = 16 * buf[8];
        *(*a4 + v38) |= buf[9] & 0xF;
        *(a4[1] + v38) = 16 * buf[10];
        *(a4[1] + v38) |= buf[11] & 0xF;
        *(a4[2] + v38) = 16 * buf[12];
        *(a4[2] + v38++) |= buf[13] & 0xF;
      }

      while (v38 != v13);
      v44 = 0;
      v9 = a5;
LABEL_97:
      a6 = v129;
      goto LABEL_129;
    }

    v44 = 0;
LABEL_129:
    v96 = 3;
    if (!a6)
    {
      goto LABEL_174;
    }

    goto LABEL_173;
  }

  if (a7 == 1)
  {
    *&buf[7] = 0;
    *buf = 0;
    v18.i64[0] = 0xAAAAAAAAAAAAAAAALL;
    v18.i64[1] = 0xAAAAAAAAAAAAAAAALL;
    v160 = v18;
    v161 = v18;
    v158 = v18;
    v159 = v18;
    v156 = v18;
    v157 = v18;
    v154 = v18;
    v155 = v18;
    v152 = v18;
    v153 = v18;
    v150 = v18;
    v151 = v18;
    v148 = v18;
    v149 = v18;
    v147 = v18;
    if (_RSU_FECOptimizationMode[0])
    {
      if (_RSU_FECOptimizationMode[0] != 1)
      {
        if (_RSU_FECOptimizationMode[0] != 2)
        {
          v44 = 2150825985;
LABEL_165:
          v96 = 7;
          if (!a6)
          {
LABEL_174:
            if (v9)
            {
              v116 = v96;
              v117 = (v96 + 3) & 0xC;
              v118 = vdupq_n_s64(v116 - 1);
              v119 = xmmword_1DBD45970;
              v120 = xmmword_1DBD45330;
              v121 = (v9 + 8);
              v122 = vdupq_n_s64(4uLL);
              do
              {
                v123 = vmovn_s64(vcgeq_u64(v118, v120));
                if (vuzp1_s16(v123, *v118.i8).u8[0])
                {
                  *(v121 - 2) = v13;
                }

                if (vuzp1_s16(v123, *&v118).i8[2])
                {
                  *(v121 - 1) = v13;
                }

                if (vuzp1_s16(*&v118, vmovn_s64(vcgeq_u64(v118, *&v119))).i32[1])
                {
                  *v121 = v13;
                  v121[1] = v13;
                }

                v119 = vaddq_s64(v119, v122);
                v120 = vaddq_s64(v120, v122);
                v121 += 4;
                v117 -= 4;
              }

              while (v117);
            }

            return v44;
          }

LABEL_173:
          *a6 = v96;
          goto LABEL_174;
        }

        if (v13 >= 1)
        {
          v125 = a5;
          v19 = 0;
          v20 = 0;
          v128 = a6;
          v21 = v13;
          v131 = a3;
          while (1)
          {
            v22 = v20 + 16;
            if (a8 <= 7)
            {
              break;
            }

LABEL_29:
            v13 = v21;
            RSEncodeSimd2Nibbles(&v147, a3);
            if (v133 >= v22)
            {
              v35 = 0;
              a3 = v131;
              do
              {
                *(a4[v35] + v20) = *(&v155 + v35);
                ++v35;
              }

              while (v35 != 7);
            }

            else
            {
              v33 = 0;
              a3 = v131;
              do
              {
                for (i = 0; i != 16; ++i)
                {
                  if (v13 == i)
                  {
                    break;
                  }

                  v136 = *(&v155 + v33);
                  *(a4[v33] + v20 + i) = *(&v136 | i & 0xF);
                }

                ++v33;
              }

              while (v33 != 7);
            }

            v19 -= 16;
            v21 = v13 - 16;
            v20 += 16;
            LODWORD(v13) = v133;
            if (v133 <= v22)
            {
              goto LABEL_162;
            }
          }

          v23 = a8;
          while (1)
          {
            v24 = *(a9 + 4 * v23);
            v25 = a2[v24];
            v26 = v25 < v22;
            if (v20 >= v25)
            {
              v26 = 2;
            }

            if (v26)
            {
              v27 = 0uLL;
              if (v26 != 2)
              {
                v28 = 0;
                v29 = *(&v147 + v23);
                v30 = v19 + v25;
                do
                {
                  v31 = __OFSUB__(v30--, 1);
                  if (v30 < 0 != v31)
                  {
                    v32 = 0;
                  }

                  else
                  {
                    v32 = *(*(a1 + 8 * v24) + v20 + v28);
                  }

                  v137 = v29;
                  *(&v137 | v28 & 0xF) = v32;
                  v29 = v137;
                  *(&v147 + v23) = v137;
                  ++v28;
                }

                while (v28 != 16);
                goto LABEL_28;
              }
            }

            else
            {
              v27 = *(*(a1 + 8 * v24) + v20);
            }

            *(&v147 + v23) = v27;
LABEL_28:
            if (++v23 == 8)
            {
              goto LABEL_29;
            }
          }
        }

LABEL_163:
        v44 = 0;
        goto LABEL_165;
      }

      if (v13 < 1)
      {
        goto LABEL_163;
      }

      v128 = a6;
      v125 = a5;
      v97 = 0;
      do
      {
        if (a8 <= 7)
        {
          v98 = a8;
          do
          {
            v99 = *(a9 + 4 * v98);
            if (v97 >= a2[v99])
            {
              v100 = 0;
            }

            else
            {
              v100 = *(*(a1 + 8 * v99) + v97);
            }

            buf[v98++] = v100;
          }

          while (v98 != 8);
        }

        RSEncode2Nibbles(buf, &buf[8], 7);
        for (j = 0; j != 7; ++j)
        {
          *(a4[j] + v97) = buf[j + 8];
        }

        ++v97;
      }

      while (v97 != v13);
    }

    else
    {
      if (v13 < 1)
      {
        goto LABEL_163;
      }

      v128 = a6;
      v125 = a5;
      v102 = 0;
      do
      {
        if (a8 <= 7)
        {
          v103 = a8;
          do
          {
            v104 = *(a9 + 4 * v103);
            if (v102 >= a2[v104])
            {
              LOBYTE(v105) = 0;
            }

            else
            {
              v105 = *(*(a1 + 8 * v104) + v102) >> 4;
            }

            buf[v103++] = v105;
          }

          while (v103 != 8);
        }

        RSEncode(buf, &buf[8], 7);
        v106 = a4;
        for (k = 8; k != 15; ++k)
        {
          v108 = *v106++;
          *(v108 + v102) = 16 * buf[k];
        }

        if (a8 <= 7)
        {
          v109 = a8;
          do
          {
            v110 = *(a9 + 4 * v109);
            if (v102 >= a2[v110])
            {
              v111 = 0;
            }

            else
            {
              v111 = *(*(a1 + 8 * v110) + v102) & 0xF;
            }

            buf[v109++] = v111;
          }

          while (v109 != 8);
        }

        RSEncode(buf, &buf[8], 7);
        for (m = 0; m != 7; ++m)
        {
          *(a4[m] + v102) |= buf[m + 8] & 0xF;
        }

        ++v102;
      }

      while (v102 != v13);
    }

LABEL_162:
    v44 = 0;
    v9 = v125;
    a6 = v128;
    goto LABEL_165;
  }

  v44 = 2150825985;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _RSU_EncodeByteBuffer_cold_1();
    }
  }

  return v44;
}

uint64_t _RSU_DecodeByteBuffer(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, int8x16_t *a11)
{
  v89 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    *buf = 0;
    *&buf[8] = 0;
    v16 = *a2;
    if (a5 >= 1)
    {
      v17 = a5;
      v18 = a2;
      do
      {
        v20 = *v18++;
        v19 = v20;
        if (v20 > v16)
        {
          v16 = v19;
        }

        --v17;
      }

      while (v17);
    }

    v81 = a6 / a3 * a3;
    switch(a3)
    {
      case 4:
        if (!a4)
        {
          if (v16 >= 1)
          {
            v56 = 0;
            v78 = (a8 + 3);
            do
            {
              v57 = 0;
              v58 = v56 | 1;
              do
              {
                v59 = *(a7 + 4 * v57);
                v60 = a2[v59];
                if (v56 >= v60)
                {
                  v63 = 0;
                  buf[v57 + 1] = 0;
                  v62 = v57;
                }

                else
                {
                  v61 = *(a1 + 8 * v59);
                  buf[v57] = a11->i8[v57] & (*(v61 + v56) >> 4);
                  v62 = v57 | 1;
                  v63 = *(v61 + v56) & a11->i8[v57 + 1] & 0xF;
                }

                buf[v62] = v63;
                if (v58 >= v60)
                {
                  v66 = 0;
                  buf[v57 + 3] = 0;
                  v65 = v57 | 2;
                }

                else
                {
                  v64 = *(a1 + 8 * v59);
                  buf[v57 + 2] = a11->i8[v57 + 2] & (*(v64 + v58) >> 4);
                  v65 = v57 + 3;
                  v66 = *(v64 + v58) & a11->i8[v57 + 3] & 0xF;
                }

                buf[v65] = v66;
                v67 = v57 >= 0xB;
                v57 += 4;
              }

              while (!v67);
              Decode(buf, a8, a6, a9, a10, a11);
              if (v81 >= 1)
              {
                v68 = 0;
                v69 = v78;
                do
                {
                  v70 = *(v69 - 3);
                  v71 = *(a7 + 4 * v70);
                  *(*(a1 + 8 * v71) + v56) = buf[*(v69 - 2)] | (16 * buf[v70]);
                  LOBYTE(v70) = buf[*(v69 - 1)];
                  v72 = *v69;
                  v69 += 4;
                  *(*(a1 + 8 * v71) + v58) = buf[v72] | (16 * v70);
                  v68 += 4;
                }

                while (v68 < v81);
              }

              v56 += 2;
            }

            while (v16 > v56);
          }

          return 0;
        }

        return 2150825985;
      case 2:
        if ((a4 & 0xFFFFFFFD) == 0)
        {
          if (v16 >= 1)
          {
            v39 = 0;
            v77 = v16;
            v79 = a4;
            v76 = a4 + 1;
            v75 = a4 - 2;
            v74 = (a8 + 1);
            v41 = (a7 + 4 * a4);
            do
            {
              v42 = v41;
              v43 = v75;
              v44 = v76;
              v45 = v79;
              do
              {
                v47 = *v42;
                v42 += 2;
                v46 = v47;
                if (v39 >= a2[v47])
                {
                  v51 = 0;
                  v50 = v44 - 1;
                  buf[v44] = 0;
                }

                else
                {
                  v48 = *(a1 + 8 * v46);
                  buf[v44 - 1] = a11->i8[v44 - 1] & (*(v48 + v39) >> 4);
                  v49 = *(v48 + v39) & a11->i8[v44];
                  v50 = v45 | 1;
                  v51 = v49 & 0xF;
                }

                buf[v50] = v51;
                v45 += 2;
                v44 += 2;
                v43 += 2;
              }

              while (v43 < 13);
              Decode(buf, a8, a6, a9, a10, a11);
              if (v81 >= 1)
              {
                v52 = 0;
                v53 = v74;
                do
                {
                  v54 = *(v53 - 1);
                  v55 = *v53;
                  v53 += 2;
                  *(*(a1 + 8 * *(a7 + 4 * v54)) + v39) = buf[v55] | (16 * buf[v54]);
                  v52 += 2;
                }

                while (v52 < v81);
              }

              ++v39;
            }

            while (v39 != v77);
          }

          return 0;
        }

        return 2150825985;
      case 1:
        if (a4 <= 3)
        {
          if (v16 >= 1)
          {
            v21 = 0;
            v22 = a4;
            do
            {
              v23 = v22;
              do
              {
                v24 = *(a7 + 4 * v23);
                if (v21 >= a2[v24])
                {
                  LOBYTE(v25) = 0;
                }

                else
                {
                  v25 = a11->u8[v23] & (*(*(a1 + 8 * v24) + v21) >> 4);
                }

                buf[v23++] = v25;
              }

              while (v23 != 15);
              Decode(buf, a8, a6, a9, a10, a11);
              if (a6 >= 1)
              {
                v26 = a6;
                v27 = a8;
                do
                {
                  v28 = *v27++;
                  *(*(a1 + 8 * *(a7 + 4 * v28)) + v21) = 16 * buf[v28];
                  --v26;
                }

                while (v26);
              }

              v29 = v22;
              do
              {
                v30 = *(a7 + 4 * v29);
                if (v21 >= a2[v30])
                {
                  v31 = 0;
                }

                else
                {
                  v31 = *(*(a1 + 8 * v30) + v21) & a11->i8[v29] & 0xF;
                }

                buf[v29++] = v31;
              }

              while (v29 != 15);
              Decode(buf, a8, a6, a9, a10, a11);
              if (a6 >= 1)
              {
                v32 = a6;
                v33 = a8;
                do
                {
                  v34 = *v33++;
                  v35 = *(a1 + 8 * *(a7 + 4 * v34));
                  *(v35 + v21) |= buf[v34];
                  --v32;
                }

                while (v32);
              }

              ++v21;
            }

            while (v21 != v16);
          }

          return 0;
        }

        return 2150825985;
    }

    v36 = 2150825985;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RSU_DecodeByteBuffer_cold_1();
      }
    }
  }

  else
  {
    v36 = 2150825985;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v37;
        *&buf[12] = 2080;
        *&buf[14] = "_RSU_DecodeByteBuffer";
        v83 = 1024;
        v84 = 698;
        v85 = 2048;
        v86 = a1;
        v87 = 2048;
        v88 = a2;
        _os_log_error_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid input argument recoveryPacketBuffers[%p] recoveryPacketSizes[%p]", buf, 0x30u);
      }
    }
  }

  return v36;
}

uint64_t RSU_Decode(uint64_t a1, int *a2, int *a3, int a4, int a5, int a6, uint64_t a7, int a8)
{
  v179 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v165 + 12) = v15;
  v164[1] = v15;
  v165[0] = v15;
  v164[0] = v15;
  memset(v157, 170, 7);
  v16 = 7 / a5;
  v17 = (7 % a5) ^ 0xFu;
  v163.i64[0] = -1;
  v163.i64[1] = -1;
  if (a6 <= 14)
  {
    v18 = 0;
    v19 = a6 + 1;
    do
    {
      *(v164 + a6 + v18) = v18 / a5;
      ++v18;
    }

    while (v19++ != 15);
  }

  v21 = 0;
  v22 = v17 - a6;
  if (v17 > a6)
  {
    v23 = a6;
    do
    {
      if (!a2[*(v164 + v23)])
      {
        if (v21 >= 7)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              RSU_Decode_cold_5();
            }
          }

          goto LABEL_99;
        }

        v157[v21++] = v23;
        v163.i8[v23] = 0;
      }

      ++v23;
      --v22;
    }

    while (v22);
  }

  if (!(7 % a5))
  {
LABEL_21:
    v162 = 0;
    v29 = v21;
    RSCalculateGammaPoly(&v162, v21, v157);
    *(v156 + 3) = -1431655766;
    v156[0] = -1431655766;
    v139 = v29;
    RSCalculateGammaDerEvalAtErasures(v156, &v162, v29, v157);
    v161 = 0;
    RSConvertToAlphaPow(&v161, &v162, 7);
    v30 = a2;
    if (a7 && a8)
    {
      v159[0] = 0;
      v159[1] = 0;
      *(v160 + 6) = 0;
      v160[0] = 0;
      memset(v158, 0, 60);
      *&v171 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      memset(buf, 0, sizeof(buf));
      if (a4 >= 1)
      {
        v31 = 0;
        v32 = v159;
        v33 = a7 - 2 * a4 + 2 * v16;
        while (v31 >= a4 - v16)
        {
          v34 = *(v33 + 2 * v31);
          if (*(v33 + 2 * v31))
          {
            goto LABEL_29;
          }

LABEL_30:
          v158[v31] = v34;
          buf[v31++] = v32++;
          if (a4 == v31)
          {
            goto LABEL_31;
          }
        }

        v34 = a2[v31];
        if (!v34)
        {
          goto LABEL_30;
        }

LABEL_29:
        *v32 = v34;
        v34 = 2;
        goto LABEL_30;
      }

LABEL_31:
      v35 = _RSU_DecodeByteBuffer(buf, v158, a5, a6, a4, v29, v164, v157, &v161, v156, &v163);
      if (v35)
      {
        RSU_Decode_cold_2(v35, &v155);
LABEL_203:
        v80 = v155;
        goto LABEL_196;
      }

      v36 = (a4 - v16);
      v30 = a2;
      if (v36 >= 1)
      {
        v37 = v159;
        v38 = a2;
        while (1)
        {
          v40 = *v37++;
          v39 = v40;
          v41 = *a3++;
          if (v41 < v39)
          {
            break;
          }

          *v38++ = v39;
          if (!--v36)
          {
            goto LABEL_36;
          }
        }

        RSU_Decode_cold_4(&v155);
        goto LABEL_203;
      }
    }

LABEL_36:
    if (dword_1ECC6F9C4 != 2)
    {
      v80 = _RSU_DecodeByteBuffer(a1, v30, a5, a6, a4, v29, v164, v157, &v161, v156, &v163);
      goto LABEL_196;
    }

    v42 = v29;
    if (!a1 || !v30)
    {
      v80 = 2150825985;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v81 = VRTraceErrorLogLevelToCSTR();
        v82 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136316162;
          *(buf + 4) = v81;
          WORD2(buf[1]) = 2080;
          *(&buf[1] + 6) = "_RSU_DecodeByteBufferSimd";
          HIWORD(buf[2]) = 1024;
          LODWORD(buf[3]) = 1139;
          WORD2(buf[3]) = 2048;
          *(&buf[3] + 6) = a1;
          HIWORD(buf[4]) = 2048;
          buf[5] = a2;
          _os_log_error_impl(&dword_1DB56E000, v82, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid input argument recoveryPacketBuffers[%p] recoveryPacketSizes[%p]", buf, 0x30u);
        }
      }

      goto LABEL_196;
    }

    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    memset(buf, 0, sizeof(buf));
    v43 = *v30;
    if (a4 >= 1)
    {
      v44 = a4;
      v45 = v30;
      do
      {
        v47 = *v45++;
        v46 = v47;
        if (v47 > v43)
        {
          v43 = v46;
        }

        --v44;
      }

      while (v44);
    }

    v48 = (v29 / a5 * a5);
    v138 = v43;
    if (a5 != 1)
    {
      if (a5 != 2)
      {
        if (a5 != 4)
        {
          v80 = 2150825985;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              RSU_Decode_cold_3();
            }
          }

          goto LABEL_196;
        }

        if (!a6)
        {
          if (v43 >= 1)
          {
            v49 = 0;
            v50 = 0uLL;
            v51.i64[0] = 0xF0F0F0F0F0F0F0FLL;
            v51.i64[1] = 0xF0F0F0F0F0F0F0FLL;
            do
            {
              v52 = 0;
              v53 = v49;
              v49 += 32;
              do
              {
                if (v163.i8[v52])
                {
                  v54 = SLODWORD(v164[v52 / 4]);
                  v55 = v30[v54];
                  if (v53 >= v55)
                  {
                    v56 = 2;
                  }

                  else
                  {
                    v56 = v55 < v49;
                  }

                  if (v56)
                  {
                    v57 = &buf[2 * v52];
                    if (v56 == 2)
                    {
                      v57[2] = v50;
                      v57[3] = v50;
                      *v57 = v50;
                      v57[1] = v50;
                    }

                    else
                    {
                      v61 = 0;
                      v62 = v57[1];
                      v63 = v57[3];
                      v64 = v53;
                      do
                      {
                        if (v64 >= v55)
                        {
                          v66 = 0;
                          *(v57 + (v61 & 0xF)) = 0;
                        }

                        else
                        {
                          v65 = *(a1 + 8 * v54);
                          *(v57 + (v61 & 0xF)) = *(v65 + v64) >> 4;
                          v66 = *(v65 + v64) & 0xF;
                        }

                        v154 = v62;
                        *(&v154 | v61 & 0xF) = v66;
                        v62 = v154;
                        v57[1] = v154;
                        if (v64 + 1 >= v55)
                        {
                          v68 = 0;
                          *(v57 + (v61 & 0xF) + 32) = 0;
                        }

                        else
                        {
                          v67 = *(a1 + 8 * v54) + v64;
                          *(v57 + (v61 & 0xF) + 32) = *(v67 + 1) >> 4;
                          v68 = *(v67 + 1) & 0xF;
                        }

                        v153 = v63;
                        *(&v153 | v61 & 0xF) = v68;
                        v63 = v153;
                        v57[3] = v153;
                        ++v61;
                        v64 += 2;
                      }

                      while (v61 != 16);
                    }
                  }

                  else
                  {
                    v59 = (*(a1 + 8 * v54) + v53);
                    v180 = vld2q_s8(v59);
                    v60 = &buf[2 * v52];
                    *v60 = vshrq_n_u8(v180.val[0], 4uLL);
                    v60[1] = vandq_s8(v180.val[0], v51);
                    v60[2] = vshrq_n_u8(v180.val[1], 4uLL);
                    v60[3] = vandq_s8(v180.val[1], v51);
                  }
                }

                else
                {
                  v58 = &buf[2 * v52];
                  v58[2] = v50;
                  v58[3] = v50;
                  *v58 = v50;
                  v58[1] = v50;
                }

                v69 = v52 >= 8;
                v52 += 4;
              }

              while (!v69);
              RSDecodeSimd(buf, v157, v42, &v161, v156);
              v51.i64[0] = 0xF0F0F0F0F0F0F0FLL;
              v51.i64[1] = 0xF0F0F0F0F0F0F0FLL;
              v50 = 0uLL;
              v30 = a2;
              if (v48 >= 1)
              {
                v70 = 0;
                do
                {
                  v71 = v157[v70];
                  if (v71 <= 7)
                  {
                    v72 = *(v164 + v71);
                    if (a2[v72])
                    {
                      v73 = a2[v72];
                    }

                    else
                    {
                      v73 = v138;
                    }

                    v74 = v73 < v49;
                    if (v53 >= v73)
                    {
                      v74 = 2;
                    }

                    if (v74)
                    {
                      if (v74 != 2)
                      {
                        v75 = 0;
                        for (i = 0; i != 32; i += 2)
                        {
                          v77 = v53 + i;
                          if (v53 + i >= v73)
                          {
                            break;
                          }

                          v151 = *&buf[2 * v157[v70]];
                          *(v77 + *(a1 + 8 * v72)) = 16 * *(&v151 | v75 & 0xF);
                          v152 = *&buf[2 * v157[v70 | 1]];
                          *(v77 + *(a1 + 8 * v72)) |= *(&v152 | v75 & 0xF) & 0xF;
                          if (v77 + 1 >= v73)
                          {
                            if (VRTraceGetErrorLogLevelForModule() < 3)
                            {
                              v80 = 2150825985;
                            }

                            else
                            {
                              v135 = VRTraceErrorLogLevelToCSTR();
                              v136 = *MEMORY[0x1E6986650];
                              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                              {
                                v158[0] = 136316418;
                                *&v158[1] = v135;
                                LOWORD(v158[3]) = 2080;
                                *(&v158[3] + 2) = "_RSU_GatherDecodedDataFourSymbols";
                                HIWORD(v158[5]) = 1024;
                                v158[6] = 1088;
                                LOWORD(v158[7]) = 1024;
                                *(&v158[7] + 2) = v73;
                                HIWORD(v158[8]) = 1024;
                                v158[9] = v53 + i + 1;
                                LOWORD(v158[10]) = 1024;
                                *(&v158[10] + 2) = v75;
                                _os_log_error_impl(&dword_1DB56E000, v136, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot gather all parity from packet. Size=%d, offset=%d, codewordIdx=%d", v158, 0x2Eu);
                              }

                              v80 = 2150825985;
                            }

                            goto LABEL_196;
                          }

                          v149 = *&buf[2 * v157[v70 | 2]];
                          *(*(a1 + 8 * v72) + v53 + i + 1) = 16 * *(&v149 | v75 & 0xF);
                          v150 = *&buf[2 * v157[v70 | 3]];
                          v78 = *(a1 + 8 * v72) + v53 + i;
                          *(v78 + 1) |= *(&v150 | v75++ & 0xF) & 0xF;
                        }
                      }
                    }

                    else
                    {
                      v181.val[0] = vsliq_n_s8(*&buf[2 * v157[v70 + 1]], *&buf[2 * v71], 4uLL);
                      v181.val[1] = vsliq_n_s8(*&buf[2 * v157[v70 + 3]], *&buf[2 * v157[v70 + 2]], 4uLL);
                      v79 = (*(a1 + 8 * v72) + v53);
                      vst2q_s8(v79, v181);
                    }
                  }

                  v70 += 4;
                }

                while (v48 > v70);
              }

              v80 = 0;
              v42 = v139;
            }

            while (v138 > v49);
            goto LABEL_196;
          }

LABEL_195:
          v80 = 0;
          goto LABEL_196;
        }

LABEL_191:
        v80 = 2150825985;
        goto LABEL_196;
      }

      if ((a6 & 0xFFFFFFFD) != 0)
      {
        goto LABEL_191;
      }

      if (v43 < 1)
      {
        goto LABEL_195;
      }

      v83 = 0;
      v84 = 0;
      v85 = 0uLL;
      v86.i64[0] = 0xF0F0F0F0F0F0F0FLL;
      v86.i64[1] = 0xF0F0F0F0F0F0F0FLL;
LABEL_105:
      v87 = a6;
      while (1)
      {
        v88 = &buf[2 * v87];
        if (v163.i8[v87])
        {
          v89 = *(v164 + v87);
          v90 = v30[v89];
          v91 = v84 + 16 > v90;
          if (v84 >= v90)
          {
            v91 = 2;
          }

          if (!v91)
          {
            v92 = *(a1 + 8 * v89);
            *v88 = vshrq_n_u8(*(v92 + v84), 4uLL);
            v88[1] = vandq_s8(*(v92 + v84), v86);
            goto LABEL_118;
          }

          if (v91 != 2)
          {
            v93 = 0;
            v94 = v88[1];
            do
            {
              if (v84 + v93 >= v90)
              {
                v88->i8[v93 & 0xF] = 0;
                v148 = v94;
                *(&v148 | v93 & 0xF) = 0;
                v94 = v148;
              }

              else
              {
                v95 = *(a1 + 8 * v89) + v84;
                v88->i8[v93 & 0xF] = *(v95 + v93) >> 4;
                LOBYTE(v95) = *(v95 + v93) & 0xF;
                v147 = v94;
                *(&v147 | v93 & 0xF) = v95;
                v94 = v147;
              }

              v88[1] = v94;
              ++v93;
            }

            while (v93 != 16);
            goto LABEL_118;
          }
        }

        *v88 = v85;
        v88[1] = v85;
LABEL_118:
        v69 = v87 >= 0xC;
        v87 += 2;
        if (v69)
        {
          RSDecodeSimd(buf, v157, v42, &v161, v156);
          v86.i64[0] = 0xF0F0F0F0F0F0F0FLL;
          v86.i64[1] = 0xF0F0F0F0F0F0F0FLL;
          v85 = 0uLL;
          v30 = a2;
          v96 = v84 + 16;
          if (v48 >= 1)
          {
            v97 = 0;
            do
            {
              v98 = v157[v97];
              if (v98 <= 7)
              {
                v99 = *(v164 + v98);
                if (a2[v99])
                {
                  v100 = a2[v99];
                }

                else
                {
                  v100 = v138;
                }

                v101 = v100 < v96;
                if (v84 >= v100)
                {
                  v101 = 2;
                }

                if (v101)
                {
                  if (v101 != 2)
                  {
                    v102 = 0;
                    if (v100 <= v84)
                    {
                      v100 = v84;
                    }

                    v103 = (v83 + v100);
                    do
                    {
                      if (v103 == v102)
                      {
                        break;
                      }

                      v145 = *&buf[2 * v157[v97]];
                      *(*(a1 + 8 * v99) + v84 + v102) = 16 * *(&v145 | v102 & 0xF);
                      v146 = *&buf[2 * v157[v97 | 1]];
                      *(*(a1 + 8 * v99) + v84 + v102) |= *(&v146 | v102 & 0xF) & 0xF;
                      ++v102;
                    }

                    while (v102 != 16);
                  }
                }

                else
                {
                  *(*(a1 + 8 * v99) + v84) = vshlq_n_s8(*&buf[2 * v98], 4uLL);
                  *(*(a1 + 8 * v99) + v84) = vorrq_s8(*(*(a1 + 8 * v99) + v84), vandq_s8(*&buf[2 * v157[v97 + 1]], v86));
                }
              }

              v97 += 2;
            }

            while (v48 > v97);
          }

          v83 -= 16;
          v84 += 16;
          v42 = v139;
          if (v138 <= v96)
          {
LABEL_189:
            v80 = 0;
            goto LABEL_196;
          }

          goto LABEL_105;
        }
      }
    }

    if (a6 > 3)
    {
      goto LABEL_191;
    }

    if (v43 < 1)
    {
      goto LABEL_195;
    }

    v104 = 0;
    v105 = 0;
    v137 = v48;
    v106 = 0uLL;
    v107.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v107.i64[1] = 0xF0F0F0F0F0F0F0FLL;
LABEL_143:
    v108 = v105 + 16;
    v109 = 1;
LABEL_144:
    v110 = v109;
    v111 = a6;
    while (1)
    {
      if (v163.i8[v111])
      {
        v112 = *(v164 + v111);
        v113 = v30[v112];
        v114 = v113 < v108;
        if (v105 >= v113)
        {
          v114 = 2;
        }

        if (!v114)
        {
          v115 = *(*(a1 + 8 * v112) + v105);
          if (v110)
          {
            v116 = vshrq_n_u8(v115, 4uLL);
          }

          else
          {
            v116 = vandq_s8(v115, v107);
          }

          *&buf[2 * v111] = v116;
          goto LABEL_163;
        }

        if (v114 != 2)
        {
          v117 = 0;
          v118 = *&buf[2 * v111];
          do
          {
            if (v105 + v117 >= v113)
            {
              v144 = v118;
              *(&v144 | v117 & 0xF) = 0;
              v118 = v144;
            }

            else
            {
              v119 = *(*(a1 + 8 * v112) + v105 + v117);
              if (v110)
              {
                v142 = v118;
                *(&v142 | v117 & 0xF) = v119 >> 4;
                v118 = v142;
              }

              else
              {
                v143 = v118;
                *(&v143 | v117 & 0xF) = v119 & 0xF;
                v118 = v143;
              }
            }

            *&buf[2 * v111] = v118;
            ++v117;
          }

          while (v117 != 16);
          goto LABEL_163;
        }
      }

      *&buf[2 * v111] = v106;
LABEL_163:
      if (++v111 == 15)
      {
        v120 = v104;
        RSDecodeSimd(buf, v157, v42, &v161, v156);
        v107.i64[0] = 0xF0F0F0F0F0F0F0FLL;
        v107.i64[1] = 0xF0F0F0F0F0F0F0FLL;
        v104 = v120;
        v30 = a2;
        if (v137 >= 1)
        {
          for (j = 0; j != v137; ++j)
          {
            v122 = v157[j];
            if (v122 <= 7)
            {
              v123 = *(v164 + v122);
              v124 = a2[v123];
              if (!v124)
              {
                v124 = v138;
              }

              v125 = v124 < v108;
              if (v105 >= v124)
              {
                v125 = 2;
              }

              if (v125)
              {
                if (v125 != 2)
                {
                  v126 = 0;
                  if (v124 <= v105)
                  {
                    v124 = v105;
                  }

                  v127 = (v120 + v124);
                  do
                  {
                    if (v127 == v126)
                    {
                      break;
                    }

                    v141 = *&buf[2 * v157[j]];
                    v128 = *(&v141 | v126 & 0xF);
                    v129 = *(a1 + 8 * v123) + v105;
                    v130 = (v110 & 1) != 0 ? 16 * v128 : *(v129 + v126) | v128 & 0xF;
                    *(v129 + v126++) = v130;
                  }

                  while (v126 != 16);
                }
              }

              else
              {
                v131 = *&buf[2 * v122];
                v132 = *(a1 + 8 * v123);
                if (v110)
                {
                  v133 = vshlq_n_s8(v131, 4uLL);
                }

                else
                {
                  v133 = vorrq_s8(*(v132 + v105), vandq_s8(v131, v107));
                }

                *(v132 + v105) = v133;
              }
            }
          }
        }

        v109 = 0;
        v42 = v29;
        v106 = 0uLL;
        if ((v110 & 1) == 0)
        {
          v104 = (v120 - 16);
          v105 += 16;
          if (v138 <= v108)
          {
            goto LABEL_189;
          }

          goto LABEL_143;
        }

        goto LABEL_144;
      }
    }
  }

  if (v21 <= 7)
  {
    v24 = 7;
  }

  else
  {
    v24 = v21;
  }

  if (v17 <= 0xE)
  {
    v25 = 14;
  }

  else
  {
    v25 = (7 % a5) ^ 0xF;
  }

  v26 = (v25 + 1);
  v27 = &v157[v21];
  v28 = v24 - v21;
  while (v28)
  {
    *v27++ = v17;
    v163.i8[v17++] = 0;
    ++v21;
    --v28;
    if (v26 == v17)
    {
      goto LABEL_21;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RSU_Decode_cold_1();
    }
  }

LABEL_99:
  v80 = 2150825985;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RSU_Decode_cold_6();
    }
  }

LABEL_196:
  kdebug_trace();
  return v80;
}

uint64_t RSU_GetPacketLayout(uint64_t result, int a2, int *a3, int *a4)
{
  *a3 = (8 - a2) / result;
  *a4 = 7 / result;
  return result;
}

uint64_t EncCreateHandle(uint64_t *a1, _DWORD *a2)
{
  v146 = *MEMORY[0x1E69E9840];
  v3 = 2148007937;
  if (*a2 && a2[1])
  {
    v5 = malloc_type_calloc(1uLL, 0x1A8uLL, 0x10E004054177016uLL);
    if (v5)
    {
      v6 = v5;
      *v5 = *(a2 + 13);
      *(v5 + 1) = *(a2 + 15);
      *(v5 + 60) = a2[32];
      if (!*(v5 + 4))
      {
        if (a2[18])
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }

        *(v5 + 4) = v7;
      }

      v8 = a2[33];
      if ((v8 - 10) <= 0xFFFFFFF6)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            EncCreateHandle_cold_3();
          }
        }

LABEL_79:
        free(v6);
        return v3;
      }

      v128 = a1;
      *(v5 + 94) = v8;
      *(v5 + 96) = a2[52];
      v9 = *(a2 + 92);
      v10 = a2[22];
      if ((v9 & 1) != 0 || (v10 - 1) <= 1)
      {
        v11 = *(a2 + 8);
        v12 = *a2;
        v13 = a2[1];
        memset(v145, 170, 20);
        *&v14 = 0xAAAAAAAAAAAAAAAALL;
        *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v143 = v14;
        v144 = v14;
        v141 = v14;
        v142 = v14;
        v139 = v14;
        v140 = v14;
        v137 = v14;
        v138 = v14;
        v135 = v14;
        v136 = v14;
        *&__str[64] = v14;
        *&__str[80] = v14;
        *&__str[32] = v14;
        *&__str[48] = v14;
        *__str = v14;
        *&__str[16] = v14;
        v132 = 0xAAAAAAAAAAAAAAAALL;
        setlocale(0, "");
        time(&v132);
        v15 = localtime(&v132);
        strftime(v145, 0x14uLL, "%m%d%g_%H%M%S", v15);
        *(v6 + 11) = v10;
        VCDiskUtils_CreateDirectory();
        if (v10 == 1)
        {
          snprintf(__str, 0x100uLL, "%s%s-txSourceYuv.%dx%d.%s.yuv", "/tmp/vcp/", v145, v12, v13, "420v");
          v16 = fopen(__str, "wb");
          *(v6 + 43) = 0;
          *(v6 + 44) = 0;
          *(v6 + 42) = v16;
        }

        if (v9)
        {
          snprintf(__str, 0x100uLL, "%s%s-txBitstream.26l", "/tmp/vcp/", v145);
          v17 = fopen(__str, "wb");
          *(v6 + 45) = v17;
          if (v17)
          {
            __ptr = 50331648;
            fwrite(&__ptr, 1uLL, 4uLL, v17);
            if (v11)
            {
              v18 = strlen(v11);
              fwrite(v11, 1uLL, v18 + 1, *(v6 + 45));
            }
          }
        }
      }

      *(v6 + 13) = 0xC024000000000000;
      pthread_mutex_init((v6 + 112), 0);
      pthread_mutex_init((v6 + 176), 0);
      *(v6 + 82) = 0;
      v19 = a2[12];
      *(v6 + 8) = v19;
      *(v6 + 9) = v19;
      *(v6 + 10) = 1;
      v20 = *(a2 + 7);
      if (v20)
      {
        *(v6 + 31) = CFDictionaryGetValue(v20, *MEMORY[0x1E69835B0]);
        *(v6 + 32) = CFDictionaryGetValue(*(a2 + 7), *MEMORY[0x1E6983878]);
        *(v6 + 33) = CFDictionaryGetValue(*(a2 + 7), *MEMORY[0x1E69838B8]);
      }

      v21 = MEMORY[0x1E6960CC0];
      *(v6 + 17) = *MEMORY[0x1E6960CC0];
      *(v6 + 36) = *(v21 + 16);
      v6[296] = 0;
      *(v6 + 75) = a2[60];
      *(v6 + 92) = 1;
      v22 = a2[3];
      *(v6 + 6) = v22;
      v23 = *a2;
      *(v6 + 29) = *a2;
      *(v6 + 28) = a2[1];
      if (v22 == 1635148593 || v22 == 1902671459 || v22 == 1752589105)
      {
        v24 = vdup_n_s32(v23 == 176);
        v25.i64[0] = v24.u32[0];
        v25.i64[1] = v24.u32[1];
        *(a2 + 6) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v25, 0x3FuLL)), vdupq_n_s64(0x2BCuLL), xmmword_1DBD47510);
      }

      v26 = a2[11];
      v129 = a2 + 11;
      v27 = a2[10];
      *(v6 + 15) = v27;
      *(v6 + 122) = 2 * (v27 < 2200001);
      if (v26)
      {
        v26 = 1000 / v26;
      }

      *(v6 + 17) = 0x7FFFFFFF;
      *(v6 + 16) = v26;
      *(v6 + 9) = vmovn_s64(*(a2 + 6));
      allocator = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v29 = VCFeatureFlagManager_UseAvconferencedOniOSSpecficFeatures();
      v30 = MEMORY[0x1E695E4D0];
      if (v29)
      {
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        v32 = MEMORY[0x1E69838D0];
        if (ErrorLogLevelForModule <= 6)
        {
          v36 = *MEMORY[0x1E69838D0];
        }

        else
        {
          v33 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x1E6986650];
          v35 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
          v36 = *v32;
          if (v35)
          {
            *__str = 136315906;
            *&__str[4] = v33;
            *&__str[12] = 2080;
            *&__str[14] = "VCVideoEncoder_SetEncoderSpecification";
            *&__str[22] = 1024;
            *&__str[24] = 428;
            *&__str[28] = 2112;
            *&__str[30] = v36;
            _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Adding kVTCompressionSessionOption_AllowClientProcessEncode=%@ to encoderSpecification", __str, 0x26u);
          }
        }

        CFDictionaryAddValue(Mutable, v36, *v30);
      }

      else
      {
        v37 = VCAudioSessionCMS_SessionReference();
        if (v37)
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E6984260], v37);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v40 = a2[20];
          *__str = 136316162;
          *&__str[4] = v38;
          *&__str[12] = 2080;
          *&__str[14] = "VCVideoEncoder_SetEncoderSpecification";
          *&__str[22] = 1024;
          *&__str[24] = 437;
          *&__str[28] = 1024;
          *&__str[30] = 437;
          *&__str[34] = 1024;
          *&__str[36] = v40;
          _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VCVideoEncoder_VCP.c:%d: HandoverReport: fUsingCellular=%d", __str, 0x28u);
        }
      }

      v41 = CFNumberCreate(0, kCFNumberIntType, a2 + 20);
      CFDictionaryAddValue(Mutable, @"UsingCellular", v41);
      CFRelease(v41);
      v42 = *v30;
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69837F0], *v30);
      FigCFDictionarySetInt64();
      FigCFDictionarySetInt64();
      v43 = *(a2 + 18);
      if (v43)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x1E69837D0], v43);
      }

      if (a2[3] == 1752589105 && *(a2 + 16) == 1)
      {
        CFDictionarySetValue(Mutable, @"EncodeMVHEVC", v42);
      }

      v44 = *(v6 + 29);
      v45 = *(v6 + 28);
      v46 = a2[34];
      v47 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *__str = v44;
      v48 = CFNumberCreate(0, kCFNumberIntType, __str);
      CFDictionaryAddValue(v47, *MEMORY[0x1E6966208], v48);
      CFRelease(v48);
      *__str = v45;
      v49 = CFNumberCreate(0, kCFNumberIntType, __str);
      CFDictionaryAddValue(v47, *MEMORY[0x1E69660B8], v49);
      CFRelease(v49);
      *__str = v46;
      v50 = CFNumberCreate(0, kCFNumberIntType, __str);
      CFDictionaryAddValue(v47, *MEMORY[0x1E6966130], v50);
      CFRelease(v50);
      v51 = (v6 + 304);
      cf = v47;
      v52 = VCPCompressionSessionCreate();
      v53 = VRTraceGetErrorLogLevelForModule();
      if (v52)
      {
        if (v53 >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            EncCreateHandle_cold_1();
          }
        }

        v3 = -v52 | 0xA0080000;
      }

      else
      {
        if (v53 >= 7)
        {
          v55 = VRTraceErrorLogLevelToCSTR();
          v56 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v127 = *(v6 + 38);
            v57 = a2[33];
            v124 = FourccToCStr(a2[34]);
            v125 = *a2;
            v126 = a2[1];
            v58 = FourccToCStr(*(v6 + 12));
            v59 = *(a2 + 15);
            v60 = *(v6 + 75);
            *__str = 136317954;
            *&__str[4] = v55;
            *&__str[12] = 2080;
            *&__str[14] = "EncCreateHandle";
            *&__str[22] = 1024;
            *&__str[24] = 838;
            *&__str[28] = 1024;
            *&__str[30] = 838;
            *&__str[34] = 2048;
            *&__str[36] = v127;
            *&__str[44] = 1024;
            *&__str[46] = v57;
            *&__str[50] = 2080;
            *&__str[52] = v124;
            *&__str[60] = 1024;
            *&__str[62] = v125;
            *&__str[66] = 1024;
            *&__str[68] = v126;
            *&__str[72] = 2080;
            *&__str[74] = v58;
            *&__str[82] = 1024;
            *&__str[84] = v59;
            *&__str[88] = 1024;
            *&__str[90] = v60;
            _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VCVideoEncoder_VCP.c:%d: Created encoder session=%p with tilesPerframe=%d, pixelFormat=%s, width=%d, height=%d codec=%s videoTransmitterHandle=0x%x, videoFrameMetadataVersion=%d", __str, 0x5Eu);
          }
        }

        if (*(a2 + 16) == 1)
        {
          v61 = VCVideoEncoderMultiImageRateAdaptation_Create(*v129);
          if (v61)
          {
            *(v6 + 51) = v61;
            v6[393] = 1;
            *(v6 + 15) = 20000000;
          }
        }

        v62 = *(a2 + 16);
        v6[392] = v62;
        if (v62 == 1)
        {
          v63 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
          *__str = 0;
          do
          {
            v64 = CFNumberCreate(0, kCFNumberSInt32Type, __str);
            CFArrayAppendValue(v63, v64);
            CFRelease(v64);
            v65 = (*__str)++;
          }

          while (v65 < 1);
          VCPCompressionSessionSetProperty();
          VCPCompressionSessionSetProperty();
          VCPCompressionSessionSetProperty();
          CFRelease(v63);
          v66 = CFNumberCreate(*(v6 + 52), kCFNumberIntType, a2 + 24);
          VCPCompressionSessionSetProperty();
          CFRelease(v66);
          VCPCompressionSessionSetProperty();
          VCPCompressionSessionSetProperty();
          VCPCompressionSessionSetProperty();
          VCPCompressionSessionSetProperty();
          VCPCompressionSessionSetProperty();
          v67 = v6 + 60;
          v68 = CFNumberCreate(*(v6 + 52), kCFNumberIntType, v6 + 60);
        }

        else
        {
          v68 = CFNumberCreate(0, kCFNumberIntType, a2 + 24);
          v67 = v6 + 60;
        }

        VCPCompressionSessionSetProperty();
        CFRelease(v68);
        if (a2[34] == 2016686640)
        {
          VCPCompressionSessionSetProperty();
        }

        if (*(v6 + 31))
        {
          VCPCompressionSessionSetProperty();
        }

        if (*(v6 + 32))
        {
          VCPCompressionSessionSetProperty();
        }

        if (*(v6 + 33))
        {
          VCPCompressionSessionSetProperty();
        }

        if (*(v6 + 12) == 1902671459 && *(a2 + 28))
        {
          VCPCompressionSessionSetProperty();
        }

        if (*(a2 + 232) == 1)
        {
          VCPCompressionSessionSetProperty();
        }

        *v145 = *(v6 + 60);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v71 = VRTraceErrorLogLevelToCSTR();
          v72 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v73 = *a2;
            v74 = a2[1];
            *__str = 136316418;
            *&__str[4] = v71;
            *&__str[12] = 2080;
            *&__str[14] = "_Enc_SetCompressionSessionProperties";
            *&__str[22] = 1024;
            *&__str[24] = 589;
            *&__str[28] = 1024;
            *&__str[30] = v73;
            *&__str[34] = 1024;
            *&__str[36] = v74;
            *&__str[40] = 1024;
            *&__str[42] = *v145;
            _os_log_impl(&dword_1DB56E000, v72, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d width=%d, height=%d, encodingMode=%d", __str, 0x2Eu);
          }
        }

        v75 = CFNumberCreate(allocator, kCFNumberSInt32Type, v145);
        VCPCompressionSessionSetProperty();
        CFRelease(v75);
        VCPCompressionSessionSetProperty();
        if (*(a2 + 8))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v76 = VRTraceErrorLogLevelToCSTR();
            v77 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v78 = *v51;
              v79 = *(a2 + 8);
              *__str = 136316162;
              *&__str[4] = v76;
              *&__str[12] = 2080;
              *&__str[14] = "_Enc_SetCompressionSessionProperties";
              *&__str[22] = 1024;
              *&__str[24] = 601;
              *&__str[28] = 2048;
              *&__str[30] = v78;
              *&__str[38] = 2080;
              *&__str[40] = v79;
              _os_log_impl(&dword_1DB56E000, v77, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [FLS] Encoder[%p] featureListString=[%s]", __str, 0x30u);
            }
          }

          v80 = CFStringCreateWithCString(0, *(a2 + 8), 0);
          VCPCompressionSessionSetProperty();
          if (v80)
          {
            CFRelease(v80);
          }
        }

        v81 = CFNumberCreate(0, kCFNumberIntType, v67);
        VCPCompressionSessionSetProperty();
        CFRelease(v81);
        v82 = CFNumberCreate(0, kCFNumberIntType, v6 + 68);
        VCPCompressionSessionSetProperty();
        CFRelease(v82);
        v83 = CFNumberCreate(0, kCFNumberIntType, a2 + 25);
        VCPCompressionSessionSetProperty();
        CFRelease(v83);
        v84 = CFNumberCreate(0, kCFNumberIntType, a2 + 2);
        VCPCompressionSessionSetProperty();
        CFRelease(v84);
        v85 = CFNumberCreate(0, kCFNumberIntType, v129);
        VCPCompressionSessionSetProperty();
        CFRelease(v85);
        v86 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionaryAddValue(v86, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840F8]);
        VCPCompressionSessionSetProperty();
        CFRelease(v86);
        v87 = CFNumberCreate(0, kCFNumberIntType, a2 + 21);
        VCPCompressionSessionSetProperty();
        CFRelease(v87);
        if (*(a2 + 18))
        {
          v88 = VCPCompressionSessionSetProperty();
          if (v88)
          {
            v89 = v88;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v90 = VRTraceErrorLogLevelToCSTR();
              v91 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v123 = *(a2 + 18);
                *__str = 136316162;
                *&__str[4] = v90;
                *&__str[12] = 2080;
                *&__str[14] = "_Enc_SetCompressionSessionProperties";
                *&__str[22] = 1024;
                *&__str[24] = 642;
                *&__str[28] = 2112;
                *&__str[30] = v123;
                *&__str[38] = 1024;
                *&__str[40] = v89;
                _os_log_error_impl(&dword_1DB56E000, v91, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to set profile level property to %@ with error status=%d", __str, 0x2Cu);
              }
            }
          }
        }

        v92 = a2[34];
        if (v92 == 875836518 || v92 == 875836534 || v92 == 2019963956)
        {
          v93 = VCPCompressionSessionSetProperty();
          if (v93)
          {
            v94 = v93;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v95 = VRTraceErrorLogLevelToCSTR();
              v96 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v122 = FourccToCStr(a2[34]);
                *__str = 136316162;
                *&__str[4] = v95;
                *&__str[12] = 2080;
                *&__str[14] = "_Enc_SetCompressionSessionProperties";
                *&__str[22] = 1024;
                *&__str[24] = 653;
                *&__str[28] = 2080;
                *&__str[30] = v122;
                *&__str[38] = 1024;
                *&__str[40] = v94;
                _os_log_error_impl(&dword_1DB56E000, v96, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to set profile level property for pixelFormat=%s with error status=%d", __str, 0x2Cu);
              }
            }
          }
        }

        LODWORD(v132) = 60;
        v97 = CFNumberCreate(allocator, kCFNumberIntType, &v132);
        if (v97)
        {
          v98 = v97;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v99 = VRTraceErrorLogLevelToCSTR();
            v100 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *__str = 136315906;
              *&__str[4] = v99;
              *&__str[12] = 2080;
              *&__str[14] = "_Enc_SetCompressionSessionProperties";
              *&__str[22] = 1024;
              *&__str[24] = 664;
              *&__str[28] = 1024;
              *&__str[30] = v132;
              _os_log_impl(&dword_1DB56E000, v100, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting priority %d on encoder", __str, 0x22u);
            }
          }

          VCPCompressionSessionSetProperty();
          CFRelease(v98);
        }

        if (*(a2 + 152) == 1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v101 = VRTraceErrorLogLevelToCSTR();
            v102 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *__str = 136315650;
              *&__str[4] = v101;
              *&__str[12] = 2080;
              *&__str[14] = "_Enc_SetCompressionSessionProperties";
              *&__str[22] = 1024;
              *&__str[24] = 670;
              _os_log_impl(&dword_1DB56E000, v102, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting temporal scaling properties on the encoder", __str, 0x1Cu);
            }
          }

          v103 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          if (a2[39])
          {
            v104 = 0;
            v105 = (a2 + 40);
            do
            {
              v106 = CFNumberCreate(0, kCFNumberSInt32Type, v105);
              CFArrayAppendValue(v103, v106);
              CFRelease(v106);
              ++v104;
              v105 += 4;
            }

            while (v104 < a2[39]);
          }

          v107 = _Enc_CopyTemporalArray(v103, *(v6 + 96));
          VCPCompressionSessionSetProperty();
          *__str = CFArrayGetCount(v107);
          CFRelease(v107);
          CFRelease(v103);
          v108 = CFNumberCreate(allocator, kCFNumberCFIndexType, __str);
          if (v108)
          {
            v109 = v108;
            VCPCompressionSessionSetProperty();
            CFRelease(v109);
          }
        }

        if (a2[53])
        {
          v110 = CFNumberCreate(0, kCFNumberSInt32Type, a2 + 53);
          if (v110)
          {
            v111 = v110;
            VCPCompressionSessionSetProperty();
            CFRelease(v111);
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v112 = VRTraceErrorLogLevelToCSTR();
            v113 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v114 = a2[53];
              *__str = 136315906;
              *&__str[4] = v112;
              *&__str[12] = 2080;
              *&__str[14] = "_Enc_SetCompressionSessionProperties";
              *&__str[22] = 1024;
              *&__str[24] = 697;
              *&__str[28] = 1024;
              *&__str[30] = v114;
              _os_log_impl(&dword_1DB56E000, v113, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Set bitrateAveragingInterval=%u", __str, 0x22u);
            }
          }
        }

        VCPCompressionSessionSetProperty();
        if (a2[59])
        {
          v115 = CFNumberCreate(0, kCFNumberSInt32Type, a2 + 59);
          if (v115)
          {
            v116 = v115;
            VCPCompressionSessionSetProperty();
            CFRelease(v116);
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v117 = VRTraceErrorLogLevelToCSTR();
            v118 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *__str = 136315650;
              *&__str[4] = v117;
              *&__str[12] = 2080;
              *&__str[14] = "_Enc_SetCompressionSessionProperties";
              *&__str[22] = 1024;
              *&__str[24] = 709;
              _os_log_impl(&dword_1DB56E000, v118, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Set stereo packing type properties on the encoder", __str, 0x1Cu);
            }
          }

          if (a2[33] >= 2)
          {
            VCPCompressionSessionSetProperty();
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v119 = VRTraceErrorLogLevelToCSTR();
              v120 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *__str = 136315650;
                *&__str[4] = v119;
                *&__str[12] = 2080;
                *&__str[14] = "_Enc_SetCompressionSessionProperties";
                *&__str[22] = 1024;
                *&__str[24] = 713;
                _os_log_impl(&dword_1DB56E000, v120, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Disable subframe dirty region detection on encoder for stitched layout", __str, 0x1Cu);
              }
            }
          }
        }

        Handle = CreateHandle();
        *v128 = Handle;
        if (Handle == 0xFFFFFFFFLL)
        {
          v3 = 2148007941;
        }

        else
        {
          *(v6 + 93) = *(a2 + 76);
          v6[380] = *(a2 + 152);
          *(v6 + 96) = a2[52];
          if (VCAllocatorFirstCome_Create(allocator, "VCVideoEncoderAllocator", v6 + 52))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
            {
              EncCreateHandle_cold_2();
              v3 = 2148007939;
            }

            else
            {
              v3 = 2148007939;
            }
          }

          else
          {
            v3 = 0;
          }
        }
      }

      v54 = *(v6 + 40);
      if (v54)
      {
        CFRelease(v54);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if ((v3 & 0x80000000) != 0)
      {
        if (*(v6 + 51))
        {
          VCVideoEncoderMultiImageRateAdaptation_Finalize(v6 + 51);
          *(v6 + 51) = 0;
        }

        v69 = *(v6 + 52);
        if (v69)
        {
          CFRelease(v69);
          *(v6 + 52) = 0;
        }

        if (*v51)
        {
          CFRelease(*v51);
          *v51 = 0;
        }

        pthread_mutex_destroy((v6 + 112));
        pthread_mutex_destroy((v6 + 176));
        goto LABEL_79;
      }

      return 0;
    }

    else
    {
      return 2148007939;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      EncCreateHandle_cold_4();
    }
  }

  return v3;
}

uint64_t EncCloseHandle()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2148007938;
  }

  v1 = v0;
  CheckOutHandleDebug();
  VCPCompressionSessionCompleteFrames();
  v2 = *(v1 + 320);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(v1 + 408))
  {
    VCVideoEncoderMultiImageRateAdaptation_Finalize((v1 + 408));
    *(v1 + 408) = 0;
  }

  v3 = *(v1 + 416);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 416) = 0;
  }

  if (*(v1 + 304))
  {
    pthread_mutex_lock((v1 + 176));
    v4 = *(v1 + 304);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 304) = 0;
    }

    pthread_mutex_unlock((v1 + 176));
  }

  v5 = *(v1 + 336);
  if (v5)
  {
    fclose(v5);
  }

  v6 = *(v1 + 360);
  if (v6)
  {
    fclose(v6);
  }

  pthread_mutex_destroy((v1 + 112));
  pthread_mutex_destroy((v1 + 176));
  free(v1);
  return 0;
}

uint64_t EncSetThermalLevel(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  if (!CheckInHandleDebug())
  {
    return 2148007938;
  }

  v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  VCPCompressionSessionSetProperty();
  CFRelease(v2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t EncSetBitRate(uint64_t a1, const __CFArray *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = 2148007937;
  valuePtr = 0;
  v4 = CheckInHandleDebug();
  if (v4)
  {
    if (a2)
    {
      v5 = v4;
      if (CFArrayGetCount(a2) != 1)
      {
        if (*(v5 + 380) == 1)
        {
          v7 = _Enc_CopyTemporalArray(a2, *(v5 + 384));
          VCPCompressionSessionSetProperty();
          CFRelease(v7);
        }

        v3 = 0;
        goto LABEL_10;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
      if (ValueAtIndex)
      {
        CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
        v3 = _Enc_SetAverageBitRate(v5, valuePtr);
LABEL_10:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(v5 + 244);
            v11 = *(v5 + 60);
            *buf = 136316674;
            v15 = v8;
            v16 = 2080;
            v17 = "EncSetBitRate";
            v18 = 1024;
            v19 = 1509;
            v20 = 2048;
            v21 = v5;
            v22 = 1024;
            v23 = valuePtr;
            v24 = 1024;
            v25 = v10;
            v26 = 1024;
            v27 = v11;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Done setting encoder bitrate=%d limitFrameSize=%d dataRate=%d", buf, 0x38u);
          }
        }
      }
    }

    CheckOutHandleDebug();
    return v3;
  }

  return 2148007938;
}

uint64_t EncEncodeFrame(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  value_low = 2148007957;
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    if (*v4)
    {
      if (*a2 == *(v4 + 58) && *(a2 + 4) == *(v4 + 56))
      {
        v33 = -1431655766;
        pthread_mutex_lock((v4 + 112));
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        _Enc_SetupFrameProperties(Mutable, a2, v5, &v33);
        pthread_mutex_unlock((v5 + 112));
        if (*(a2 + 472) != 1)
        {
LABEL_31:
          buf = *(v5 + 272);
          bytes = **&MEMORY[0x1E6960CC0];
          if (CMTimeCompare(&buf, &bytes))
          {
            bytes = *(a2 + 40);
            v31 = *(v5 + 272);
            CMTimeSubtract(&buf, &bytes, &v31);
          }

          else
          {
            CMTimeMakeWithSeconds(&buf, (*(v5 + 64) / 1000), *(a2 + 48));
          }

          value = buf.value;
          v26 = *&buf.timescale;
          epoch = buf.epoch;
          v28 = *(a2 + 40);
          *(v5 + 288) = *(a2 + 56);
          *(v5 + 272) = v28;
          if (*(v5 + 336))
          {
            DumpFrameYuv((v5 + 352), (v5 + 344), (v5 + 336), 0, *(a2 + 88));
          }

          if (*(v5 + 44) == 2)
          {
            DumpFrameYuvWithTimestamp(0, *(a2 + 88), *(a2 + 188));
          }

          pthread_mutex_lock((v5 + 176));
          buf = *(a2 + 40);
          bytes.value = value;
          *&bytes.timescale = v26;
          bytes.epoch = epoch;
          v29 = VCPCompressionSessionEncodeFrame();
          pthread_mutex_unlock((v5 + 176));
          if (v33)
          {
            *(v5 + 24) = 0;
            *(v5 + 100) = 0;
            *(v5 + 104) = micro();
          }

          ++*(v5 + 328);
          CFRelease(Mutable);
          if (v29 << 16)
          {
            value_low = -v29 | 0xA0080000;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                EncEncodeFrame_cold_1();
              }
            }
          }

          else
          {
            value_low = 0;
          }

          goto LABEL_45;
        }

        v7 = *(a2 + 88);
        v8 = v33;
        Attachment = CVBufferGetAttachment(v7, @"vcBufferAttachs", 0);
        if (Attachment && CFDictionaryContainsKey(Attachment, @"fb"))
        {
          CVBufferRemoveAttachment(v7, @"vcBufferAttachs");
          v10 = 1;
          if (v8)
          {
LABEL_13:
            v11 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v11)
            {
              v12 = v11;
              LOBYTE(bytes.value) = 0;
              v13 = *(v5 + 300);
              if (v13)
              {
                if (v13 == 1)
                {
                  if (v10)
                  {
                    v14 = 0x80;
                  }

                  else
                  {
                    v14 = 0;
                  }

                  LOBYTE(bytes.value) = v14;
                  v15 = CFDataCreate(0, &bytes, 1);
                  if (!v15)
                  {
                    v16 = v12;
LABEL_29:
                    CFRelease(v16);
                    goto LABEL_30;
                  }

                  v16 = v15;
                  CFDictionarySetValue(v12, @"BLOB1", v15);
                  CMSetAttachment(v7, @"PropagatableAttachmentData", v12, 1u);
LABEL_25:
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v20 = VRTraceErrorLogLevelToCSTR();
                    v21 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v22 = *(v5 + 296);
                      v24 = *(v5 + 24);
                      v23 = *(v5 + 28);
                      LODWORD(buf.value) = 136317442;
                      *(&buf.value + 4) = v20;
                      LOWORD(buf.flags) = 2080;
                      *(&buf.flags + 2) = "_Enc_AdjustAFBAttachment";
                      HIWORD(buf.epoch) = 1024;
                      v35 = 1275;
                      v36 = 1024;
                      v37 = 1275;
                      v38 = 2048;
                      v39 = v5;
                      v40 = 1024;
                      v41 = v10;
                      v42 = 1024;
                      v43 = v22;
                      v44 = 1024;
                      v45 = v23;
                      v46 = 1024;
                      v47 = v24;
                      v48 = 2112;
                      v49 = v12;
                      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VCVideoEncoder_VCP.c:%d: [%p] TX AFB Update(isFullBleed=%d, lastFrameIsAFB=%d fkeyFrameNow=%d, fIDRNow=%d, data=%@", &buf, 0x4Eu);
                    }
                  }

                  CFRelease(v12);
                  if (!v16)
                  {
                    goto LABEL_30;
                  }

                  goto LABEL_29;
                }

                if (VRTraceGetErrorLogLevelForModule() >= 5)
                {
                  v17 = VRTraceErrorLogLevelToCSTR();
                  v18 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v19 = *(v5 + 300);
                    LODWORD(buf.value) = 136316162;
                    *(&buf.value + 4) = v17;
                    LOWORD(buf.flags) = 2080;
                    *(&buf.flags + 2) = "_Enc_AdjustAFBAttachment";
                    HIWORD(buf.epoch) = 1024;
                    v35 = 1272;
                    v36 = 1024;
                    v37 = 1272;
                    v38 = 1024;
                    LODWORD(v39) = v19;
                    _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/VCVideoEncoder_VCP.c:%d: Unexpected FrameMetadataVersion=%u, maxSupportedVersion 1", &buf, 0x28u);
                  }
                }
              }

              v16 = 0;
              goto LABEL_25;
            }

LABEL_30:
            *(v5 + 296) = v10;
            goto LABEL_31;
          }
        }

        else
        {
          v10 = 0;
          if (v8)
          {
            goto LABEL_13;
          }
        }

        if (*(v5 + 296) == v10)
        {
          goto LABEL_30;
        }

        goto LABEL_13;
      }
    }

    else
    {
      EncEncodeFrame_cold_2(&buf);
      value_low = LODWORD(buf.value);
    }

LABEL_45:
    CheckOutHandleDebug();
    return value_low;
  }

  return 2148007938;
}

uint64_t EncEncodeMultipleFrames(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = 2148007957;
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2148007938;
  }

  v5 = v4;
  if (*v4)
  {
    if (*a2 == *(v4 + 58) && *(a2 + 4) == *(v4 + 56))
    {
      v17 = 0;
      pthread_mutex_lock((v4 + 112));
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      _Enc_SetupFrameProperties(Mutable, a2, v5, &v17);
      pthread_mutex_unlock((v5 + 112));
      pthread_mutex_lock((v5 + 176));
      v7 = *(a2 + 468);
      valuePtr = v7;
      if (*(v5 + 393) == 1 && *(v5 + 394) == 1 && *(v5 + 400) != v7)
      {
        v8 = CFNumberCreate(*(v5 + 416), kCFNumberIntType, &valuePtr);
        VCPCompressionSessionSetProperty();
        CFRelease(v8);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(a2 + 464);
            v12 = *(a2 + 462);
            v13 = *(v5 + 60);
            *buf = 136316674;
            v20 = v9;
            v21 = 2080;
            v22 = "_VCVideoEncoder_UpdateMultiImagetBitrate";
            v23 = 1024;
            v24 = 1376;
            v25 = 1024;
            v26 = v11;
            v27 = 1024;
            v28 = v12;
            v29 = 2048;
            v30 = valuePtr / 1000000.0;
            v31 = 2048;
            v32 = v13 / 1000000.0;
            _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting bitrate on encoderIndex=%d, frameIndex=%d, encoderBitrate=%.2f, targetBitrate=%.2f", buf, 0x3Cu);
          }
        }

        v14 = *(a2 + 468);
        *(v5 + 400) = v14;
        VCVideoEncoderMultiImageRateAdaptation_UpdateEncoderBitrates(*(v5 + 408), *(v5 + 60), v14, *(a2 + 464));
      }

      v15 = VCPCompressionSessionEncodeMultiImageFrame();
      pthread_mutex_unlock((v5 + 176));
      if (v17)
      {
        *(v5 + 24) = 0;
        *(v5 + 100) = 0;
        *(v5 + 104) = micro();
      }

      ++*(v5 + 328);
      CFRelease(Mutable);
      if (v15 << 16)
      {
        v3 = -v15 | 0xA0080000;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            EncEncodeMultipleFrames_cold_1();
          }
        }
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    EncEncodeMultipleFrames_cold_2(buf);
    v3 = *buf;
  }

  CheckOutHandleDebug();
  return v3;
}

uint64_t EncGenerateKeyFrameNow(uint64_t a1, uint64_t a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2148007938;
  }

  v6 = v5;
  if (*(v5 + 36) <= 0)
  {
    pthread_mutex_lock((v5 + 112));
    if (!*(v6 + 24))
    {
      v7 = *(v6 + 100);
      if (v7 < 1)
      {
        if (a3 > 1)
        {
          *(v6 + 100) = a3 - 2;
          memcpy((v6 + 84), (a2 + 4), 2 * (a3 - 2));
          goto LABEL_28;
        }

        *(v6 + 100) = 0;
      }

      else
      {
        if (a3 >= 3)
        {
          v8 = 2;
          do
          {
            v9 = *(a2 + 2 * v8);
            v10 = v7;
            v11 = (v6 + 84);
            while (v9 != *v11)
            {
              ++v11;
              if (!--v10)
              {
                goto LABEL_12;
              }
            }

            *v11 = v9 | 0x8000;
LABEL_12:
            ++v8;
          }

          while (v8 != a3);
        }

        v12 = 0;
        v13 = v6 + 84;
        do
        {
          v14 = *(v13 + 2 * v12);
          if (v14 < 0)
          {
            *(v13 + 2 * v12++) = v14 & 0x7FFF;
          }

          else
          {
            if (v12 + 1 < v7)
            {
              v15 = (v13 + 2 * (v12 + 1));
              v16 = v12;
              do
              {
                v17 = *v15++;
                *(v13 + 2 * v16++) = v17;
              }

              while (v7 - 1 != v16);
            }

            LODWORD(v7) = v7 - 1;
            *(v6 + 100) = v7;
          }
        }

        while (v12 < v7);
        if (a3 > 1)
        {
          goto LABEL_28;
        }
      }

      *(v6 + 24) = 0x100000001;
LABEL_28:
      if (!*(v6 + 20))
      {
        *&v19 = 0xAAAAAAAAAAAAAAAALL;
        *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v25[15] = v19;
        *v25 = v19;
        *&buf[33] = v19;
        *&buf[17] = v19;
        *&buf[1] = v19;
        memset(v23, 170, 10);
        *(v6 + 28) = 1;
        buf[0] = 0;
        if (*(v6 + 100) >= 1)
        {
          v20 = 0;
          do
          {
            __sprintf_chk(v23, 0, 0xAuLL, " %d", *(v6 + 84 + 2 * v20));
            __strlcat_chk();
            ++v20;
          }

          while (v20 < *(v6 + 100));
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v21;
          *&buf[12] = 2080;
          *&buf[14] = "EncGenerateKeyFrameNow";
          *&buf[22] = 1024;
          *&buf[24] = 1658;
          *&buf[28] = 1024;
          *&buf[30] = a3;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Generated a key frame for FIR(%d)", buf, 0x22u);
        }
      }
    }
  }

  pthread_mutex_unlock((v6 + 112));
  CheckOutHandleDebug();
  return 0;
}

uint64_t EncSendImgDesc()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2148007938;
  }

  v1 = v0;
  pthread_mutex_lock((v0 + 112));
  *(v1 + 100) = 0;
  *(v1 + 24) = 0x100000001;
  pthread_mutex_unlock((v1 + 112));
  CheckOutHandleDebug();
  return 0;
}

uint64_t EncPixelBufferFromPool(uint64_t a1, CVPixelBufferRef *a2)
{
  if (!CheckInHandleDebug())
  {
    return 2148007938;
  }

  PixelBufferPool = VCPCompressionSessionGetPixelBufferPool();
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, PixelBufferPool, a2);
  if (PixelBuffer << 16)
  {
    v5 = -PixelBuffer | 0xA0080000;
  }

  else
  {
    v5 = 0;
  }

  CheckOutHandleDebug();
  return v5;
}

uint64_t EncSetEncodingMode(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148007938;
  }

  *(v3 + 240) = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  VCPCompressionSessionSetProperty();
  CFRelease(v4);
  CheckOutHandleDebug();
  return 0;
}

uint64_t VCVideoEncoderVCPInitialize(uint64_t result)
{
  *result = EncoderVCP_VTable;
  *(result + 8) = 0;
  *(result + 16) = 0xFFFFFFFFLL;
  return result;
}

void _DumpParameterSetsBitstream(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  if (FormatDescription)
  {
    AvcCFromFormatDescriptionForLog = extractAvcCFromFormatDescriptionForLog(FormatDescription);
    if (AvcCFromFormatDescriptionForLog)
    {
      v5 = AvcCFromFormatDescriptionForLog;
      BytePtr = CFDataGetBytePtr(AvcCFromFormatDescriptionForLog);
      Length = CFDataGetLength(v5);
      if (BytePtr && Length >= 1)
      {
        v8 = Length & 0x7FFFFFFF;
        MEMORY[0x1EEE9AC00](Length);
        v10 = v11 - v9;
        memset(v11 - v9, 170, v8);
        if (readAVCCAndEncodeH264SPSPPS(BytePtr, v8, v10, v11))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _DumpParameterSetsBitstream_cold_2();
            }
          }
        }

        else
        {
          fwrite(v10, 1uLL, v11[0], *(a2 + 360));
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _DumpParameterSetsBitstream_cold_1();
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _DumpParameterSetsBitstream_cold_3();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _DumpParameterSetsBitstream_cold_4();
    }
  }
}

void _DumpFrameBitstream(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  __ptr = 0x1000000;
  v14 = 0;
  if (a1)
  {
    SampleSize = CMSampleBufferGetSampleSize(a1, 0);
    if (SampleSize >= 1)
    {
      DataBuffer = CMSampleBufferGetDataBuffer(a1);
      if (DataBuffer)
      {
        if (CMBlockBufferGetDataPointer(DataBuffer, 0, 0, 0, &v14))
        {
          if (VRTraceGetErrorLogLevelForModule() < 8)
          {
            return;
          }

          v6 = VRTraceErrorLogLevelToCSTR();
          v7 = *MEMORY[0x1E6986650];
          v8 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            *buf = 136315650;
            v17 = v6;
            v18 = 2080;
            v19 = "_DumpFrameBitstream";
            v20 = 1024;
            v21 = 257;
            v9 = " [%s] %s:%d VCPCompressionSession Error: Error getting data buffer";
LABEL_13:
            _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0x1Cu);
            return;
          }

          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            _DumpFrameBitstream_cold_1();
          }
        }

        else
        {
          for (i = 0; i < SampleSize; i += v13 + 4)
          {
            v13 = bswap32(*&v14[i]);
            fwrite(&__ptr, 1uLL, 4uLL, *(a2 + 360));
            fwrite(&v14[i + 4], 1uLL, v13, *(a2 + 360));
            fflush(*(a2 + 360));
          }
        }
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      return;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v11 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136315650;
      v17 = v10;
      v18 = 2080;
      v19 = "_DumpFrameBitstream";
      v20 = 1024;
      v21 = 275;
      v9 = " [%s] %s:%d VCPCompressionSession Error: Encoder returned a NULL frame";
      goto LABEL_13;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      _DumpFrameBitstream_cold_2();
    }
  }
}

uint64_t vtEncCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, opaqueCMSampleBuffer *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 == -12912 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      vtEncCallback_cold_1();
    }
  }

  if (*(a1 + 360))
  {
    v9 = *(a1 + 48);
    v11 = v9 == 1635148593 || v9 == 1902671459 || v9 == 1752589105;
    if (v11 && _VCVideoEncoder_IsIDR(a5))
    {
      _DumpParameterSetsBitstream(a5, a1);
    }

    _DumpFrameBitstream(a5, a1);
  }

  v12 = *(a1 + 408);
  if (v12 && *(a1 + 393) == 1)
  {
    v17 = *(a2 + 40);
    Seconds = CMTimeGetSeconds(&v17);
    v14 = _VCVideoEncoder_IsIDR(a5);
    TotalSampleSize = CMSampleBufferGetTotalSampleSize(a5);
    *(a1 + 394) = VCVideoEncoderMultiImageRateAdaptation_ProcessFrameInfo(v12, *(a1 + 60), v14, 8 * TotalSampleSize, *(a2 + 464), Seconds);
  }

  if (*a1)
  {
    (*a1)(*(a1 + 8), a2, a3, a5);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      vtEncCallback_cold_2();
    }
  }

  return 0;
}

void _Enc_SetupFrameProperties(__CFDictionary *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v139 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 32);
  if (v8 < 1)
  {
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_14:
    *(a3 + 32) = *(a3 + 36);
    goto LABEL_5;
  }

  *(a3 + 32) = v8 - 1;
  if (v8 <= *(a3 + 40))
  {
    *(a3 + 100) = 0;
    *(a3 + 28) = 1;
  }

  if (v8 == 1)
  {
    goto LABEL_14;
  }

LABEL_5:
  v9 = *(a3 + 244);
  if (*a2 > *(a2 + 4) && *(a3 + 244) && ((v10 = *(a2 + 8), v10 > 0) || *(a3 + 80) >= 1))
  {
    v9 *= 2;
  }

  else
  {
    v10 = *(a2 + 8);
  }

  valuePtr = v9;
  *(a3 + 80) = v10;
  v11 = *MEMORY[0x1E695E480];
  v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberShortType, &valuePtr);
  CFDictionaryAddValue(a1, *MEMORY[0x1E6983BF8], v12);
  CFRelease(v12);
  if (*(a2 + 244))
  {
    *buf = 2;
    v13 = 4;
  }

  else
  {
    *buf = 13;
    v13 = 9;
  }

  v113 = v13;
  v14 = CFNumberCreate(v11, kCFNumberSInt32Type, buf);
  v15 = CFNumberCreate(v11, kCFNumberSInt32Type, &v113);
  CFDictionaryAddValue(a1, @"RemoteDisplayWidth", v14);
  CFDictionaryAddValue(a1, @"RemoteDisplayHeight", v15);
  CFRelease(v14);
  CFRelease(v15);
  if (*(a2 + 128) >= 1 && *(a2 + 120))
  {
    v110 = v11;
    v111 = a4;
    v113 = -1431655766;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (*(a2 + 128) >= 1)
    {
      v17 = 0;
      v18 = MEMORY[0x1E6986640];
      v19 = MEMORY[0x1E6986650];
      do
      {
        v113 = *(*(a2 + 120) + 4 * v17);
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *v19;
          v22 = *v19;
          if (*v18 == 1)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v116 = v20;
              v117 = 2080;
              v118 = "_Enc_SetupFrameProperties";
              v119 = 1024;
              v120 = 995;
              v121 = 1024;
              LODWORD(v122) = v113;
              _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Updating encoder LTR ACK token=%d", buf, 0x22u);
            }
          }

          else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v116 = v20;
            v117 = 2080;
            v118 = "_Enc_SetupFrameProperties";
            v119 = 1024;
            v120 = 995;
            v121 = 1024;
            LODWORD(v122) = v113;
            _os_log_debug_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Updating encoder LTR ACK token=%d", buf, 0x22u);
          }
        }

        v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v113);
        CFArrayAppendValue(Mutable, v23);
        CFRelease(v23);
        ++v17;
      }

      while (v17 < *(a2 + 128));
    }

    CFDictionaryAddValue(a1, *MEMORY[0x1E6983AB8], Mutable);
    CFRelease(Mutable);
    v11 = v110;
    a4 = v111;
  }

  v24 = *(a2 + 136);
  if (v24 >= 1)
  {
    *buf = 8 * v24;
    v25 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
    CFDictionaryAddValue(a1, *MEMORY[0x1E6983C08], v25);
    CFRelease(v25);
  }

  v26 = *(a2 + 132);
  if (v26 >= 1)
  {
    *buf = 8 * v26;
    v27 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
    CFDictionaryAddValue(a1, *MEMORY[0x1E6983BB0], v27);
    CFRelease(v27);
  }

  v28 = *(a2 + 288);
  if (v28)
  {
    *buf = 8 * v28;
    v29 = CFNumberCreate(0, kCFNumberSInt32Type, buf);
    if (v29)
    {
      v30 = v29;
      CFDictionaryAddValue(a1, *MEMORY[0x1E6983C20], v29);
      CFRelease(v30);
    }
  }

  if (*(a2 + 296))
  {
    v31 = CFNumberCreate(0, kCFNumberSInt32Type, (a2 + 296));
    if (v31)
    {
      v32 = v31;
      CFDictionaryAddValue(a1, @"MediaQueueDelayLimit", v31);
      CFRelease(v32);
    }
  }

  if (*(a2 + 292))
  {
    v33 = CFNumberCreate(0, kCFNumberSInt32Type, (a2 + 292));
    if (v33)
    {
      v34 = v33;
      CFDictionaryAddValue(a1, @"MediaQueueDelay", v33);
      CFRelease(v34);
    }
  }

  if (*(a2 + 144) > 0.0)
  {
    v35 = CFNumberCreate(0, kCFNumberDoubleType, (a2 + 144));
    if (v35)
    {
      v36 = v35;
      CFDictionaryAddValue(a1, *MEMORY[0x1E69840C8], v35);
      CFRelease(v36);
    }
  }

  if (*(a2 + 152) > 0.0)
  {
    v37 = CFNumberCreate(0, kCFNumberDoubleType, (a2 + 152));
    if (v37)
    {
      v38 = v37;
      CFDictionaryAddValue(a1, *MEMORY[0x1E6984088], v37);
      CFRelease(v38);
    }
  }

  if (*(a2 + 160) > 0.0)
  {
    v39 = CFNumberCreate(0, kCFNumberDoubleType, (a2 + 160));
    if (v39)
    {
      v40 = v39;
      CFDictionaryAddValue(a1, *MEMORY[0x1E6984068], v39);
      CFRelease(v40);
    }
  }

  v41 = CFNumberCreate(0, kCFNumberSInt32Type, (a2 + 176));
  CFDictionaryAddValue(a1, *MEMORY[0x1E6983C48], v41);
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = CFNumberCreate(0, kCFNumberSInt32Type, (a2 + 168));
  CFDictionaryAddValue(a1, *MEMORY[0x1E6983C00], v42);
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = CFNumberCreate(0, kCFNumberSInt32Type, (a2 + 172));
  CFDictionaryAddValue(a1, *MEMORY[0x1E6983AD8], v43);
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = CFNumberCreate(0, kCFNumberSInt32Type, (a2 + 200));
  CFDictionaryAddValue(a1, @"CaptureFrameDrop", v44);
  CFRelease(v44);
  v45 = CFNumberCreate(0, kCFNumberIntType, (a2 + 204));
  if (v45)
  {
    v46 = v45;
    CFDictionaryAddValue(a1, @"LocalPIPStatus", v45);
    CFRelease(v46);
  }

  v47 = CFNumberCreate(0, kCFNumberIntType, (a2 + 208));
  if (v47)
  {
    v48 = v47;
    CFDictionaryAddValue(a1, @"RemotePIPStatus", v47);
    CFRelease(v48);
  }

  if (*(a2 + 212) && *(a2 + 216))
  {
    v49 = CFNumberCreate(0, kCFNumberIntType, (a2 + 212));
    v50 = CFNumberCreate(0, kCFNumberIntType, (a2 + 216));
    v51 = v50;
    if (v49 && v50)
    {
      CFDictionaryAddValue(a1, @"LocalPIPWidth", v49);
      CFDictionaryAddValue(a1, @"LocalPIPHeight", v51);
    }

    else if (!v49)
    {
      goto LABEL_67;
    }

    CFRelease(v49);
LABEL_67:
    if (v51)
    {
      CFRelease(v51);
    }
  }

  if (!*(a2 + 220) || !*(a2 + 224))
  {
    goto LABEL_78;
  }

  v52 = CFNumberCreate(0, kCFNumberIntType, (a2 + 220));
  v53 = CFNumberCreate(0, kCFNumberIntType, (a2 + 224));
  v54 = v53;
  if (v52 && v53)
  {
    CFDictionaryAddValue(a1, @"RemotePIPWidth", v52);
    CFDictionaryAddValue(a1, @"RemotePIPHeight", v54);
  }

  else if (!v52)
  {
    goto LABEL_76;
  }

  CFRelease(v52);
LABEL_76:
  if (v54)
  {
    CFRelease(v54);
  }

LABEL_78:
  v55 = CFNumberCreate(0, kCFNumberSInt32Type, (a2 + 196));
  CFDictionaryAddValue(a1, @"Use2GNetwork", v55);
  CFRelease(v55);
  if (!*(a3 + 372))
  {
    v56 = CFNumberCreate(0, kCFNumberSInt32Type, (a2 + 180));
    CFDictionaryAddValue(a1, *MEMORY[0x1E6983C10], v56);
    CFRelease(v56);
  }

  v57 = *(a3 + 28);
  if (v57)
  {
    *(a2 + 8) = 0;
    if (*(a3 + 24))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v58 = VRTraceErrorLogLevelToCSTR();
        v59 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v116 = v58;
          v117 = 2080;
          v118 = "_Enc_SetupFrameProperties";
          v119 = 1024;
          v120 = 1142;
          _os_log_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Requesting kVTEncodeFrameOptionKey_ForceKeyFrame", buf, 0x1Cu);
        }
      }

      CFDictionaryAddValue(a1, *MEMORY[0x1E6983BD8], *MEMORY[0x1E695E4D0]);
    }

    else
    {
      v60 = CFDataCreate(v11, (a3 + 84), 2 * *(a3 + 100));
      if (v60)
      {
        v61 = v60;
        CFDictionaryAddValue(a1, *MEMORY[0x1E6983BC8], v60);
        CFRelease(v61);
      }
    }

    v57 = 1;
  }

  *a4 = v57;
  v62 = *(a2 + 8);
  if (v62 >= 1)
  {
    v63 = CFDataCreate(v11, *(a2 + 16), 2 * v62);
    if (v63)
    {
      v64 = v63;
      CFDictionaryAddValue(a1, *MEMORY[0x1E6983BD0], v63);
      CFRelease(v64);
    }
  }

  v65 = *(a2 + 24);
  if (v65 >= 1)
  {
    v66 = CFDataCreate(v11, *(a2 + 32), 2 * v65);
    if (v66)
    {
      v67 = v66;
      CFDictionaryAddValue(a1, *MEMORY[0x1E6983BC0], v66);
      CFRelease(v67);
    }
  }

  v68 = CFNumberCreate(0, kCFNumberIntType, (a3 + 368));
  if (v68)
  {
    v69 = v68;
    CFDictionaryAddValue(a1, *MEMORY[0x1E6983AD0], v68);
    CFRelease(v69);
  }

  Attachment = CVBufferGetAttachment(*(a2 + 88), @"FVDWindowRectangles", 0);
  if (Attachment)
  {
    v71 = Attachment;
    if (CFArrayGetCount(Attachment))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v71, 0);
      v74 = *(a2 + 256);
      v73 = *(a2 + 264);
      v76 = *(a2 + 272);
      v75 = *(a2 + 280);
      CGRectMakeWithDictionaryRepresentation(ValueAtIndex, (a2 + 256));
      v77 = CVBufferGetAttachment(*(a2 + 88), @"FVDWindowScaleFactor", 0) ? FigCFNumberGetSInt32() : 2.0;
      v112 = v77;
      v78 = vmovn_s64(vcvtq_s64_f64(vmulq_n_f64(*(a2 + 272), v77)));
      v79.i64[0] = v78.i32[0];
      v79.i64[1] = v78.i32[1];
      *(a2 + 272) = vcvtq_f64_s64(v79);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v80 = VRTraceErrorLogLevelToCSTR();
        v81 = *MEMORY[0x1E6986650];
        v82 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            v83 = *(a2 + 256);
            v84 = *(a2 + 264);
            v85 = *(a2 + 272);
            v86 = *(a2 + 280);
            *buf = 136317954;
            v116 = v80;
            v117 = 2080;
            v118 = "_Enc_SetupFrameProperties";
            v119 = 1024;
            v120 = 1205;
            v121 = 2048;
            v122 = v74;
            v123 = 2048;
            v124 = v73;
            v125 = 2048;
            v126 = v76;
            v127 = 2048;
            v128 = v75;
            v129 = 2048;
            v130 = v83;
            v131 = 2048;
            v132 = v84;
            v133 = 2048;
            v134 = v85;
            v135 = 2048;
            v136 = v86;
            v137 = 2048;
            v138 = v112;
            _os_log_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Replacing visibleRect from (%f, %f, %f, %f) to update window (%f, %f, %f, %f) resolutionScale=%f", buf, 0x76u);
          }
        }

        else if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
        {
          v106 = *(a2 + 256);
          v107 = *(a2 + 264);
          v108 = *(a2 + 272);
          v109 = *(a2 + 280);
          *buf = 136317954;
          v116 = v80;
          v117 = 2080;
          v118 = "_Enc_SetupFrameProperties";
          v119 = 1024;
          v120 = 1205;
          v121 = 2048;
          v122 = v74;
          v123 = 2048;
          v124 = v73;
          v125 = 2048;
          v126 = v76;
          v127 = 2048;
          v128 = v75;
          v129 = 2048;
          v130 = v106;
          v131 = 2048;
          v132 = v107;
          v133 = 2048;
          v134 = v108;
          v135 = 2048;
          v136 = v109;
          v137 = 2048;
          v138 = v112;
          _os_log_debug_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Replacing visibleRect from (%f, %f, %f, %f) to update window (%f, %f, %f, %f) resolutionScale=%f", buf, 0x76u);
        }
      }
    }
  }

  if (!CGRectIsNull(*(a2 + 256)))
  {
    VisibleRectDictionary = VideoUtil_CreateVisibleRectDictionary(*(a2 + 256), *(a2 + 264), *(a2 + 272), *(a2 + 280));
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v88 = VRTraceErrorLogLevelToCSTR();
      v89 = *MEMORY[0x1E6986650];
      v90 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v91 = *(a2 + 256);
          v92 = *(a2 + 264);
          v93 = *(a2 + 272);
          v94 = *(a2 + 280);
          *buf = 136316674;
          v116 = v88;
          v117 = 2080;
          v118 = "_Enc_SetupFrameProperties";
          v119 = 1024;
          v120 = 1209;
          v121 = 2048;
          v122 = v91;
          v123 = 2048;
          v124 = v92;
          v125 = 2048;
          v126 = v93;
          v127 = 2048;
          v128 = v94;
          _os_log_impl(&dword_1DB56E000, v89, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting kVTEncodeFrameOptionKey_VisibleRectangle to (%f, %f, %f, %f)", buf, 0x44u);
        }
      }

      else if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        v102 = *(a2 + 256);
        v103 = *(a2 + 264);
        v104 = *(a2 + 272);
        v105 = *(a2 + 280);
        *buf = 136316674;
        v116 = v88;
        v117 = 2080;
        v118 = "_Enc_SetupFrameProperties";
        v119 = 1024;
        v120 = 1209;
        v121 = 2048;
        v122 = v102;
        v123 = 2048;
        v124 = v103;
        v125 = 2048;
        v126 = v104;
        v127 = 2048;
        v128 = v105;
        _os_log_debug_impl(&dword_1DB56E000, v89, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Setting kVTEncodeFrameOptionKey_VisibleRectangle to (%f, %f, %f, %f)", buf, 0x44u);
      }
    }

    CFDictionaryAddValue(a1, *MEMORY[0x1E6983C88], VisibleRectDictionary);
    CFRelease(VisibleRectDictionary);
  }

  v95 = *MEMORY[0x1E6983C38];
  v96 = CVBufferGetAttachment(*(a2 + 88), *MEMORY[0x1E6983C38], 0);
  if (v96)
  {
    CFDictionaryAddValue(a1, v95, v96);
  }

  v97 = CFNumberCreate(0, kCFNumberIntType, (a2 + 240));
  if (v97)
  {
    v98 = v97;
    CFDictionaryAddValue(a1, @"CameraFacingType", v97);
    CFRelease(v98);
  }

  v99 = CVBufferGetAttachment(*(a2 + 88), @"DirtyRegion", 0);
  if (v99)
  {
    CFDictionaryAddValue(a1, @"DirtyRegionArray", v99);
  }

  v100 = CVBufferGetAttachment(*(a2 + 88), @"HIDEventTimestamp", 0);
  if (v100)
  {
    CFDictionaryAddValue(a1, @"HIDTimeStamp", v100);
  }

  v101 = CVBufferGetAttachment(*(a2 + 88), @"EncodingROIArray", 0);
  if (v101)
  {
    CFDictionaryAddValue(a1, @"RegionOfInterestArray", v101);
  }
}

uint64_t _Enc_SetAverageBitrateForMultiImageEncode(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  *(a1 + 60) = a2;
  v3 = (a1 + 60);
  v4 = a2;
  if (*(a1 + 393))
  {
    v5 = (v4 * 0.95);
    *(a1 + 60) = v5;
    VCVideoEncoderMultiImageRateAdaptation_UpdateEncoderBitrates(*(a1 + 408), v5, *(a1 + 400), -1);
    return 0;
  }

  *(a1 + 400) = v4;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v3;
      v13 = 136316162;
      v14 = v7;
      v15 = 2080;
      v16 = "_Enc_SetAverageBitrateForMultiImageEncode";
      v17 = 1024;
      v18 = 1438;
      v19 = 1024;
      v20 = a2;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting multi-image encoder bitrate inputBitrate=%d, appliedBitrate=%d", &v13, 0x28u);
    }
  }

  v10 = CFNumberCreate(*(a1 + 416), kCFNumberIntType, v3);
  v11 = VCPCompressionSessionSetProperty();
  CFRelease(v10);
  if (!v11)
  {
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _Enc_SetAverageBitrateForMultiImageEncode_cold_1();
    }
  }

  return -v11 | 0xA0080000;
}

uint64_t _Enc_SetAverageBitRate(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 392) == 1)
  {
    _Enc_SetAverageBitrateForMultiImageEncode(a1, a2);
    return 0;
  }

  else
  {
    *(a1 + 60) = a2;
    *(a1 + 244) = 2 * (a2 < 2200001);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 244);
        v10 = 136316418;
        v11 = v5;
        v12 = 2080;
        v13 = "_Enc_SetAverageBitRate";
        v14 = 1024;
        v15 = 1468;
        v16 = 2048;
        v17 = a1;
        v18 = 1024;
        v19 = a2;
        v20 = 1024;
        v21 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Setting encoder bitrate=%d limitFrameSize=%d", &v10, 0x32u);
      }
    }

    v8 = CFNumberCreate(*(a1 + 416), kCFNumberIntType, (a1 + 60));
    v9 = VCPCompressionSessionSetProperty();
    CFRelease(v8);
    if (v9)
    {
      return -v9 | 0xA0080000;
    }

    else
    {
      return 0;
    }
  }
}

__CFArray *_Enc_CopyTemporalArray(const __CFArray *a1, int Count)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(a1) < Count)
  {
    Count = CFArrayGetCount(a1);
  }

  if (Count >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
      CFArrayAppendValue(Mutable, ValueAtIndex);
      ++v5;
    }

    while (Count != v5);
  }

  return Mutable;
}

opaqueCMSampleBuffer *_VCVideoEncoder_IsIDR(opaqueCMSampleBuffer *result)
{
  if (result)
  {
    result = CMSampleBufferGetSampleAttachmentsArray(result, 0);
    if (result)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(result, 0);
      return (CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E6960400]) == *MEMORY[0x1E695E4C0]);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_10_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

void _VCScreenCaptureFigCaptureController_OnVideoFrame(void *a1, __CVBuffer *a2, uint64_t a3, unsigned int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *a3;
        *v14 = 136315906;
        v12 = *(a3 + 8);
        *&v14[4] = v8;
        *&v14[12] = 2080;
        *&v14[14] = "_VCScreenCaptureFigCaptureController_OnVideoFrame";
        *&v14[22] = 1024;
        v15 = 193;
        v16 = 2048;
        v17 = (v11 / v12);
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CannedScreenCaptureFigCaptureController_OnVideoFrame time=%f", v14, 0x26u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      _VCScreenCaptureFigCaptureController_OnVideoFrame_cold_1(v8, a3, v9);
    }
  }

  *v14 = *a3;
  *&v14[16] = *(a3 + 16);
  SampleBufferWithPixelBuffer = createSampleBufferWithPixelBuffer(a2, v14);
  [a1 screenCaptureController:a1[22] didReceiveSampleBuffer:SampleBufferWithPixelBuffer transformFlags:a4];
  if (SampleBufferWithPixelBuffer)
  {
    CFRelease(SampleBufferWithPixelBuffer);
  }
}

void VCVideoStreamEncoderProc(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (dispatch_semaphore_wait(*(a1 + 192), 0xFFFFFFFFFFFFFFFFLL))
  {
    return;
  }

  if (*(a1 + 184) == 1)
  {
    *(a1 + 184) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v8.value) = 136315906;
        *(&v8.value + 4) = v5;
        LOWORD(v8.flags) = 2080;
        *(&v8.flags + 2) = "VCVideoStreamEncoderProc";
        HIWORD(v8.epoch) = 1024;
        v9 = 97;
        v10 = 2080;
        v11 = "com.apple.AVConference.VCVideoStreamTransmitter.encoderThread";
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Encoder thread %s terminated", &v8, 0x26u);
      }
    }

    *a3 = 1;
    return;
  }

  if (CMBufferQueueGetBufferCount(*(a1 + 200)) < 1)
  {
    return;
  }

  v7 = CMBufferQueueDequeueAndRetain(*(a1 + 200));
  memset(&v8, 170, sizeof(v8));
  CMSampleBufferGetPresentationTimeStamp(&v8, v7);
  if (*MEMORY[0x1E6986658] == 1)
  {
    VCVideoStreamEncoderProc_cold_1(&v8);
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else if (v7)
  {
LABEL_10:
    [a1 encodeVideoFrame:v7];
    CFRelease(v7);
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCVideoStreamEncoderProc_cold_2();
    }
  }
}

BOOL VCVideoStreamTransmitter_EnqueueVideoFrame(uint64_t a1, const void *a2)
{
  result = 0;
  v14 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (CMBufferQueueGetBufferCount(*(a1 + 200)) < 1)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt32();
      CMSetAttachments(a2, Mutable, 0);
      CFRelease(Mutable);
      if (!CMBufferQueueEnqueue(*(a1 + 200), a2))
      {
        dispatch_semaphore_signal(*(a1 + 192));
        return 1;
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v8 = 136315650;
      v9 = v5;
      v10 = 2080;
      v11 = "VCVideoStreamTransmitter_EnqueueVideoFrame";
      v12 = 1024;
      v13 = 262;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Drop a pending frame (encoder). Already has a frame for encoder", &v8, 0x1Cu);
    }

    return 0;
  }

  return result;
}

void VCVideoStreamTransmitter_SetFECRatio()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCVideoStreamTransmitter_SetFECRatio_cold_1();
    }
  }
}

void VCVideoStreamTransmitter_SetMediaQueueSize()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCVideoStreamTransmitter_SetMediaQueueSize_cold_1();
    }
  }
}

void encoderFrameCallback(OSQueueHead **a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = a2[336];
    VCMemoryPool_Free(a1[55], a2);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 0;
    if (a3)
    {
LABEL_3:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          encoderFrameCallback_cold_1();
        }
      }

      return;
    }
  }

  if (a5)
  {

    [a1 transmitEncodedVideoFrame:a5 cameraStatusBits:v8];
  }
}

char *JitterQueue_Create()
{
  result = malloc_type_malloc(0x48uLL, 0x1020040320C0723uLL);
  if (result)
  {
    *(result + 16) = 0;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
    *result = 0u;
    *(result + 1) = 0u;
    if (result >= result + 72)
    {
      __break(0x5519u);
    }
  }

  return result;
}

uint64_t JitterQueue_SetMaxPacketTimeDelta(uint64_t result, unsigned int a2, double a3)
{
  v3 = (a2 * a3);
  *(result + 16) = v3;
  v4 = *result;
  if (*result)
  {
    v5 = *(v4 + 1172);
    v6 = *(v4 + 1248);
    if (v6)
    {
      while (1)
      {
        v7 = v6;
        if (v4 >= v4 + 1272)
        {
          break;
        }

        v8 = *(v4 + 12);
        v9 = *(v6 + 12);
        if (v8 - v9 - *(v7 + 1172) > v3 || v8 == v9)
        {
          v11 = *(v7 + 1172);
        }

        else
        {
          v11 = v8 - v9;
        }

        v5 += v11;
        v6 = *(v7 + 1248);
        v4 = v7;
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      *(result + 20) = v5;
      __break(0x5519u);
    }

    else
    {
LABEL_11:
      *(result + 20) = v5;
    }
  }

  else
  {
    *(result + 20) = 0;
    *(result + 52) = 0;
    *(result + 56) = 0;
  }

  return result;
}

uint64_t JitterQueue_SetLastDecodedFrameTimestamp(uint64_t result, int a2)
{
  *(result + 24) = a2;
  *(result + 32) = 1;
  return result;
}

uint64_t JitterQueue_SetLastDecodedDTMFFrameTimestamp(uint64_t result, int a2)
{
  *(result + 28) = a2;
  *(result + 36) = 1;
  return result;
}

void JitterQueue_Destroy(uint64_t *a1)
{
  JitterQueue_Reset(a1);

  free(a1);
}

void JitterQueue_Reset(uint64_t *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 20) = 0;
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  a1[6] = 0;
  a1[7] = 0;
  *(a1 + 16) = 0;
  if (v1)
  {
    do
    {
      v2 = *(v1 + 1248);
      (*(v1 + 1200))(*(v1 + 1208));
      v1 = v2;
    }

    while (v2);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "JitterQueue_Reset";
      v9 = 1024;
      v10 = 386;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Jitter Queue was reset", &v5, 0x1Cu);
    }
  }
}

uint64_t JitterQueue_Insert(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  ++*(a1 + 48);
  v5 = *(a1 + 32);
  if (v5)
  {
    if (*(a2 + 1196) == 117)
    {
      v5 = 0;
    }

    else
    {
      v6 = *(a2 + 12) - *(a1 + 24);
      if (v6)
      {
        v7 = v6 > 0x7FFFFFFE;
      }

      else
      {
        v7 = 1;
      }

      v5 = v7;
    }
  }

  v8 = *(a1 + 36);
  if (v8)
  {
    v8 = *(a2 + 1196) == 117 && (*(a2 + 12) - *(a1 + 28)) > 0x7FFFFFFE;
  }

  if (((v5 | v8) & 1) == 0)
  {
    v19 = (a1 + 8);
    for (i = a1; ; i = (v21 + 1248))
    {
      v21 = *i;
      if (!*i)
      {
        break;
      }

      v22 = v21 + 1272;
      v23 = *(a2 + 12) - *(v21 + 12);
      if (v23)
      {
        if (v23 < 0x7FFFFFFF)
        {
          break;
        }
      }

      else
      {
        if (*(v21 + 1196) != 117)
        {
          if (a3)
          {
            *a3 = 1;
          }

          if ((*(a2 + 8) & 1) != 0 || *(v21 + 8) != 1)
          {
            v21 = a2;
          }

          else
          {
            v52 = a2 + 1272;
            *i = a2;
            v53 = *(v21 + 1248);
            *(a2 + 1248) = v53;
            v54 = *(v21 + 1240);
            *(a2 + 1240) = v54;
            if (!v53)
            {
              goto LABEL_74;
            }

            if (v52 <= a2)
            {
              goto LABEL_106;
            }

            *(v53 + 1240) = a2;
            v54 = *(a2 + 1240);
LABEL_74:
            if (v54)
            {
              if (v52 > a2)
              {
                *(v54 + 1248) = a2;
                goto LABEL_77;
              }

              goto LABEL_106;
            }

LABEL_77:
            if (*a1 == v21)
            {
              if (v52 <= a2)
              {
                goto LABEL_106;
              }

              *a1 = a2;
            }

            if (*v19 == v21)
            {
              if (v52 <= a2)
              {
                goto LABEL_106;
              }

              *v19 = a2;
            }

            if (v21 >= v22)
            {
LABEL_106:
              __break(0x5519u);
            }

            *(v21 + 1264) = 0;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v57 = VRTraceErrorLogLevelToCSTR();
            v58 = *MEMORY[0x1E6986650];
            v59 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                v60 = *(v21 + 8);
                v61 = *(v21 + 12);
                v64 = 136316162;
                v65 = v57;
                v66 = 2080;
                v67 = "JitterQueue_Insert";
                v68 = 1024;
                v69 = 212;
                v70 = 1024;
                v71 = v60;
                v72 = 1024;
                v73 = v61;
                _os_log_impl(&dword_1DB56E000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Discarding duplicate audio frame isRedAudio:%d timestamp:%u", &v64, 0x28u);
              }
            }

            else if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              JitterQueue_Insert_cold_1(v57, v21, v58);
            }
          }

          (*(v21 + 1200))(*(v21 + 1208), v21);
          return 0;
        }

        v24 = *(a2 + 10) - *(v21 + 10);
        if (v24)
        {
          v25 = v24 >= 0x7FFFFFFF;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          break;
        }
      }

      if (v21 >= v22)
      {
        goto LABEL_106;
      }
    }

    *(a2 + 1248) = *i;
    *i = a2;
    v26 = *(a2 + 1248);
    if (v26)
    {
      v19 = (v26 + 1240);
    }

    *(a2 + 1240) = *v19;
    *v19 = a2;
    if (!*(a1 + 16) && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        JitterQueue_Insert_cold_2(v27, v28);
      }
    }

    if (*(a2 + 8) == 1)
    {
      *(a2 + 1264) = *(a2 + 1260) - *(a2 + 12);
    }

    v29 = *(a2 + 1172);
    v30 = *(a1 + 20);
    v31 = v30 + v29;
    *(a1 + 20) = v30 + v29;
    v32 = *(a1 + 56) + 1;
    *(a1 + 56) = v32;
    v33 = *(a2 + 1240);
    v34 = *(a2 + 1248);
    if (v33)
    {
      v35 = *(v33 + 12);
      if (v34)
      {
        v36 = *(v34 + 12);
        v37 = *(v34 + 1172);
        v38 = *(a1 + 16);
        if (v35 == v36 || v35 - (v36 + v37) > v38)
        {
          v39 = *(a2 + 12);
          v40 = v35 - v39;
          if (v40 - v29 > v38)
          {
            v40 = 0;
          }

          v41 = v39 - v36;
          if (v41 - v37 > v38)
          {
            v41 = 0;
          }

          if (v40)
          {
            v42 = (v40 - v29) & ~((v40 - v29) >> 31);
          }

          else
          {
            v42 = 0;
          }

          v43 = (v41 - v37) & ~((v41 - v37) >> 31);
          if (v41)
          {
            v44 = v43;
          }

          else
          {
            v44 = 0;
          }

          v30 = v44 + v31 + v42;
        }

        goto LABEL_89;
      }

      v55 = *(a2 + 12);
      if (v35 == v55)
      {
LABEL_90:
        result = 1;
        if (v31 >= 1 && v29 >= 1)
        {
          *(a1 + 52) = (v31 - v32 * v29) / v29;
        }

        return result;
      }

      v51 = v35 - (v29 + v55);
    }

    else
    {
      if (!v34)
      {
        goto LABEL_90;
      }

      v49 = *(a2 + 12);
      v50 = *(v34 + 12);
      if (v49 == v50)
      {
        goto LABEL_90;
      }

      v51 = v49 - (v50 + *(v34 + 1172));
    }

    if (v51 <= *(a1 + 16))
    {
      v30 = (v51 & ~(v51 >> 31)) + v31;
LABEL_89:
      *(a1 + 20) = v30;
      v31 = v30;
      goto LABEL_90;
    }

    goto LABEL_90;
  }

  v9 = v5 == 0;
  v10 = 28;
  if (!v9)
  {
    v10 = 24;
  }

  v11 = *(a1 + v10);
  v12 = *(a2 + 8);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v12)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      v16 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a2 + 12);
          v18 = *(a2 + 10);
          v64 = 136316418;
          v65 = v14;
          v66 = 2080;
          v67 = "JitterQueue_Insert";
          v68 = 1024;
          v69 = 189;
          v70 = 1024;
          v71 = v17;
          v72 = 1024;
          v73 = v11;
          v74 = 1024;
          v75 = v18;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Discarding an old redundant frame, timestamp %u, last Decoded %u sequence number %d", &v64, 0x2Eu);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v62 = *(a2 + 12);
        v63 = *(a2 + 10);
        v64 = 136316418;
        v65 = v14;
        v66 = 2080;
        v67 = "JitterQueue_Insert";
        v68 = 1024;
        v69 = 189;
        v70 = 1024;
        v71 = v62;
        v72 = 1024;
        v73 = v11;
        v74 = 1024;
        v75 = v63;
        _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Discarding an old redundant frame, timestamp %u, last Decoded %u sequence number %d", &v64, 0x2Eu);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 5)
    {
      v45 = VRTraceErrorLogLevelToCSTR();
      v46 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v47 = *(a2 + 1196);
        v48 = *(a2 + 12);
        v64 = 136316418;
        v65 = v45;
        v66 = 2080;
        v67 = "JitterQueue_Insert";
        v68 = 1024;
        v69 = 183;
        v70 = 1024;
        v71 = v47;
        v72 = 1024;
        v73 = v48;
        v74 = 1024;
        v75 = v11;
        _os_log_impl(&dword_1DB56E000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Discarding an old primary frame, payloadType=%d, timestamp=%u, lastDecoded=%u", &v64, 0x2Eu);
      }
    }

    ++*(a1 + 40);
    if (!*(a2 + 1176))
    {
      ++*(a1 + 44);
    }
  }

  (*(a2 + 1200))(*(a2 + 1208), a2);
  return 0;
}