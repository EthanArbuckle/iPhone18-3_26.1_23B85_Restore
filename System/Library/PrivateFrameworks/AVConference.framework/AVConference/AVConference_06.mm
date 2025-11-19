char *_RTPRecvWithSocket(uint64_t a1, unint64_t a2, char **a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v4 = *(a2 + 10656);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_12;
  }

  result = VCMemoryPool_Alloc(*(a2 + 10656));
  if (result)
  {
    v7 = result >= &result[*(v4 + 16)];
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = result;
    v10 = result;
    if (result)
    {
      if ((VTP_Recvfrom(*(a2 + 4), &v11) & 0x80000000) != 0)
      {
        v9 = *__error() | 0xC0010000;
        goto LABEL_10;
      }

      v9 = _RTPTransport_ParseVTPPacket(a2, v11, v8);
      if ((v9 & 0x80000000) == 0)
      {
        *a3 = v8;
        v10 = 0;
LABEL_10:
        _RTPReleaseRTPPacketInternal(a2, &v10);
        VTP_ReleasePacket(&v11);
        return v9;
      }

      _RTPRecvWithSocket_cold_1();
LABEL_15:
      v9 = v12;
      goto LABEL_10;
    }

LABEL_12:
    _RTPRecvWithSocket_cold_2();
    goto LABEL_15;
  }

  __break(0x5519u);
  return result;
}

uint64_t _RTPTransport_ParseVTPPacket(unint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9[21] = *MEMORY[0x1E69E9840];
  *&v9[14] = unk_1DBD47B50;
  *&v9[16] = xmmword_1DBD47B60;
  memset(&v9[18], 170, 24);
  memset(v9, 170, 112);
  VCGetVCPacketWithVTPPacket(a2, v9);
  if (*(a1 + 28) || *(a2 + 348) != 256)
  {
    v6 = _RTPTransport_ParseMediaPacket(a1, v9, a3);
  }

  else
  {
    v6 = _RTPTransport_ParseBasebandNotification(a1, v9, a3);
  }

  v7 = v6;
  VCPacketInvalidate(v9);
  return v7;
}

void RTPGetUplinkReportingStats(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = CheckInHandleDebug();
    if (v3)
    {
      *a2 = *(v3 + 352);

      CheckOutHandleDebug();
    }

    else
    {
      RTPGetUplinkReportingStats_cold_1();
    }
  }

  else
  {
    RTPGetUplinkReportingStats_cold_2();
  }
}

void RTPGetDownlinkReportingStats(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CheckInHandleDebug();
    if (v3)
    {
      v4 = *(v3 + 328);
      *(a2 + 16) = *(v3 + 344);
      *a2 = v4;

      CheckOutHandleDebug();
    }

    else
    {
      RTPGetDownlinkReportingStats_cold_1();
    }
  }

  else
  {
    RTPGetDownlinkReportingStats_cold_2();
  }
}

uint64_t _RTPSocketRTPAndBBNoteCallback(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    _RTPSocketRTPAndBBNoteCallback_cold_4();
    return v15;
  }

  v4 = v3;
  v5 = *(v3 + 10656);
  if (!v5)
  {
    v15 = 0;
    goto LABEL_24;
  }

  v6 = VCMemoryPool_Alloc(*(v3 + 10656));
  if (v6)
  {
    v7 = v6 >= &v6[*(v5 + 16)];
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
LABEL_27:
    __break(0x5519u);
  }

  v8 = v6;
  v15 = v6;
  if (!v6)
  {
LABEL_24:
    _RTPSocketRTPAndBBNoteCallback_cold_3();
LABEL_26:
    v10 = v16;
    goto LABEL_17;
  }

  if (v4 >= v4 + 27800)
  {
    goto LABEL_27;
  }

  v9 = _RTPTransport_ParseVTPPacket(v4, a2, v6);
  v10 = v9;
  if ((v9 & 0x80000000) != 0)
  {
    if (v9 != -2147418057 && v9 != -2145255367)
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _RTPSocketRTPAndBBNoteCallback_cold_1();
        }
      }
    }

    goto LABEL_17;
  }

  v11 = *(v4 + 10688);
  if (!v11)
  {
    _RTPSocketRTPAndBBNoteCallback_cold_2();
    goto LABEL_26;
  }

  (*(v11 + 16))(v11, *(v4 + 10680), v8);
LABEL_17:
  _RTPReleaseRTPPacketInternal(v4, &v15);
  CheckOutHandleDebug();
  return v10;
}

uint64_t RTPGetReceiveStatus(uint64_t a1, unsigned int *a2, int a3, unsigned int a4)
{
  *&v34 = *MEMORY[0x1E69E9840];
  result = 2147549186;
  if (a1)
  {
    v6 = a2;
    if (a2)
    {
      if (a3)
      {
        memset(v33, 0, sizeof(v33));
        if (a3 >= 1)
        {
          v31 = -2147418110;
          *&v7 = 0xAAAAAAAAAAAAAAAALL;
          *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v32[7] = v7;
          v32[8] = v7;
          v32[5] = v7;
          v32[6] = v7;
          v32[3] = v7;
          v32[4] = v7;
          v8 = a3;
          v9 = -1;
          v32[1] = v7;
          v32[2] = v7;
          v10 = a3;
          v11 = a1;
          v12 = v32;
          v13 = a2;
          v32[0] = v7;
          do
          {
            v14 = CheckInHandleDebug();
            if (v12 >= v33 || v12 < v32)
            {
              goto LABEL_68;
            }

            *v12 = v14;
            if (v14)
            {
              v15 = *v13;
              if ((*v13 & 0x10) != 0)
              {
                v16 = *(v14 + 4);
                if (v16 <= 0x3FF)
                {
                  if (__darwin_check_fd_set_overflow(*(v14 + 4), v33, 0))
                  {
                    v17 = (v33 + ((v16 >> 3) & 0x1FFFFFFC));
                    if (v17 >= &v34 || v17 < v33)
                    {
                      goto LABEL_68;
                    }

                    *v17 |= 1 << v16;
                  }

                  v14 = *v12;
                  if (*(*v12 + 4) > v9)
                  {
                    v9 = *(*v12 + 4);
                  }

                  v15 = *v13;
                }
              }

              if ((v15 & 0x20) != 0)
              {
                v18 = *(v14 + 8);
                if (v18 <= 0x3FF)
                {
                  if (__darwin_check_fd_set_overflow(*(v14 + 8), v33, 0))
                  {
                    v19 = (v33 + ((v18 >> 3) & 0x1FFFFFFC));
                    if (v19 >= &v34 || v19 < v33)
                    {
                      goto LABEL_68;
                    }

                    *v19 |= 1 << v18;
                  }

                  if (*(*v12 + 8) > v9)
                  {
                    v9 = *(*v12 + 8);
                  }
                }
              }
            }

            else
            {
              *v13 = 0;
            }

            ++v13;
            v12 = (v12 + 8);
            v11 += 8;
            --v10;
          }

          while (v10);
          if (v9 != -1)
          {
            if (a4 <= 0x3FF)
            {
              if (v9 <= a4)
              {
                v9 = a4;
              }

              if (__darwin_check_fd_set_overflow(a4, v33, 0))
              {
                v20 = (v33 + 4 * (a4 >> 5));
                if (v20 >= &v34 || v20 < v33)
                {
LABEL_68:
                  __break(0x5519u);
                }

                *v20 |= 1 << a4;
              }
            }

            if (VTP_Select((v9 + 1), v33, 0, 0, 0) == -1)
            {
              v31 = *__error() | 0xC0010000;
              goto LABEL_60;
            }

            v21 = v8;
            v22 = v32;
            while (1)
            {
              if (v22 >= v33 || v22 < v32)
              {
                goto LABEL_68;
              }

              if (!*v22)
              {
                goto LABEL_57;
              }

              v23 = *v6;
              if ((*v6 & 0x10) == 0)
              {
                goto LABEL_49;
              }

              v24 = *(*v22 + 4);
              if (v24 > 0x3FF)
              {
                goto LABEL_49;
              }

              if (__darwin_check_fd_set_overflow(*(*v22 + 4), v33, 0))
              {
                v25 = (v33 + ((v24 >> 3) & 0x1FFFFFFC));
                if (v25 >= &v34 || v25 < v33)
                {
                  goto LABEL_68;
                }

                if ((*v25 >> v24))
                {
                  break;
                }
              }

              v28 = *v6 & 0xFFFFFFEF;
              *v6 = v28;
              if ((v28 & 0x20) != 0)
              {
LABEL_50:
                v26 = *(*v22 + 8);
                if (v26 <= 0x3FF)
                {
                  if (!__darwin_check_fd_set_overflow(*(*v22 + 8), v33, 0))
                  {
                    goto LABEL_55;
                  }

                  v27 = (v33 + ((v26 >> 3) & 0x1FFFFFFC));
                  if (v27 >= &v34 || v27 < v33)
                  {
                    goto LABEL_68;
                  }

                  if (((*v27 >> v26) & 1) == 0)
                  {
LABEL_55:
                    *v6 &= ~0x20u;
                  }
                }
              }

LABEL_57:
              ++v6;
              v22 = (v22 + 8);
              if (!--v21)
              {
                v31 = 0;
                goto LABEL_60;
              }
            }

            v23 = *v6;
LABEL_49:
            if ((v23 & 0x20) != 0)
            {
              goto LABEL_50;
            }

            goto LABEL_57;
          }

LABEL_60:
          v29 = v32;
          do
          {
            if (v29 >= v33 || v29 < v32)
            {
              goto LABEL_68;
            }

            if (*v29)
            {
              CheckOutHandleDebug();
            }

            a1 += 8;
            v29 = (v29 + 8);
            --v8;
          }

          while (v8);
          return v31;
        }
      }
    }
  }

  return result;
}

uint64_t RTPGetLocalSSRC(uint64_t a1, _DWORD *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  if (a2)
  {
    *a2 = *(v3 + 200);
  }

  CheckOutHandleDebug();
  return 0;
}

os_unfair_lock_s *RTPSetRemoteSSRC(uint64_t a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = 2147549186;
  result = CheckInHandleDebug();
  if (!result)
  {
    return v3;
  }

  v5 = result;
  result[22]._os_unfair_lock_opaque = 1;
  result[1208]._os_unfair_lock_opaque = a2;
  if (result < &result[6950])
  {
    os_unfair_lock_lock(result + 2257);
    *(v5 + 7648) = a2;
    *(v5 + 9024) = 1;
    os_unfair_lock_unlock((v5 + 9028));
    *(v5 + 8544) = a2;
    *(v5 + 7004) = 0;
    v6 = *(v5 + 4);
    if (v6 != -1)
    {
      VTP_SetRemoteSSRC(v6, a2);
      VTP_SetRemoteSSRC(*(v5 + 8), a2);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(v5 + 4);
          v10 = *(v5 + 8);
          v15 = 136316674;
          v16 = v7;
          v17 = 2080;
          v18 = "RTPSetRemoteSSRC";
          v19 = 1024;
          v20 = 3245;
          v21 = 1024;
          v22 = v9;
          v23 = 1024;
          v24 = v10;
          v25 = 1024;
          v26 = a2;
          v27 = 1024;
          v28 = a2;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPSetRemoteSSRC [%d/%d]: SSRC = 0x%X(%u)", &v15, 0x34u);
        }
      }

      v3 = 0;
LABEL_15:
      CheckOutHandleDebug();
      return v3;
    }

    if (*(v5 + 4832))
    {
      v11 = *MEMORY[0x1E695E480];
      v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (v5 + 4832));
      if (!v12)
      {
        v3 = 2147549187;
        goto LABEL_12;
      }

      RTPSetRemoteSSRC_cold_1(v5, v12, v11, &v15);
    }

    else
    {
      RTPSetRemoteSSRC_cold_2();
    }

    v3 = v15;
LABEL_12:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316162;
        v16 = v13;
        v17 = 2080;
        v18 = "RTPSetRemoteSSRC";
        v19 = 1024;
        v20 = 3248;
        v21 = 1024;
        v22 = a2;
        v23 = 1024;
        v24 = a2;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPSetRemoteSSRC: SSRC = 0x%X(%u)", &v15, 0x28u);
      }
    }

    goto LABEL_15;
  }

  __break(0x5519u);
  return result;
}

void RTPSetCellularUniqueTag(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (v3)
  {
    v4 = v3;
    if (*(v3 + 28))
    {
LABEL_9:
      CheckOutHandleDebug();
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v4 + 4);
        v9 = 136316418;
        v10 = v5;
        v11 = 2080;
        v12 = "RTPSetCellularUniqueTag";
        v13 = 1024;
        v14 = 3266;
        v15 = 1024;
        v16 = v7;
        v17 = 1024;
        v18 = a2;
        v19 = 1024;
        v20 = a2;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPSetCellularUniqueTag vfd = %d tag = 0x%X(%u)", &v9, 0x2Eu);
      }
    }

    *(v4 + 92) = a2;
    if (!*(v4 + 11304))
    {
      v8 = *(v4 + 4);
      if (v8 != -1)
      {
        VTP_SetCellularUniqueTag(v8, a2);
      }

      goto LABEL_9;
    }

    if (v4 < v4 + 27800)
    {
      _RTPSetCellularUniqueTagOnPacketFilters(v4);
      goto LABEL_9;
    }

    __break(0x5519u);
  }
}

uint64_t RTPSetStreamDirection(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  v4 = v3;
  *(v3 + 7000) = a2;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v4 + 4);
      v8 = *(v4 + 8);
      v10 = 136316674;
      v11 = v5;
      v12 = 2080;
      v13 = "RTPSetStreamDirection";
      v14 = 1024;
      v15 = 3291;
      v16 = 2048;
      v17 = v4;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = a2;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPSetStreamDirection [%p] [%d/%d]: Direction[%d]", &v10, 0x38u);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

unint64_t RTPTransport_SetNACKConsumer(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  result = CheckInHandleDebug();
  if (!result)
  {
    return 2147549186;
  }

  v4 = result;
  *(result + 27776) = a2;
  if (!a2)
  {
    if (result >= result + 27800)
    {
      __break(0x5519u);
      return result;
    }

    v5 = 0;
    do
    {
      v6 = v5;
      _RTPTransportMediaPacketHistoryCleanUp(v4, v5++);
    }

    while (v6 < 0x3FF);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v4[1];
      v10 = v4[2];
      v11 = v4[50];
      v12 = 136316930;
      v13 = v7;
      v14 = 2080;
      v15 = "RTPTransport_SetNACKConsumer";
      v16 = 1024;
      v17 = 3357;
      v18 = 2048;
      v19 = v4;
      v20 = 1024;
      v21 = v9;
      v22 = 1024;
      v23 = v10;
      v24 = 2048;
      v25 = a2;
      v26 = 1024;
      v27 = v11;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPTransport_SetNACKConsumer [%p] [%d/%d]: nackConsumer[%p] ssrc=%u", &v12, 0x42u);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

void _RTPConfigureVirtualSockets(unsigned int *a1, int a2, int a3)
{
  v50 = *MEMORY[0x1E69E9840];
  memset(v49, 0, sizeof(v49));
  v49[0].sa_len = 0x80;
  v6 = RTPMapPacketMultiplexModeToVTPMode(*a1);
  VTP_SetSocketMode(a2, v6);
  v34 = 128;
  if (VTP_Getsockname(a2, v49, &v34))
  {
    _RTPConfigureVirtualSockets_cold_1();
    return;
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
      v38 = v9;
      v39 = 2080;
      v40 = "_RTPConfigureVirtualSockets";
      v41 = 1024;
      v42 = 3455;
      v43 = 1024;
      v44 = a2;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Start listening RTP on sock %d", buf, 0x22u);
    }
  }

  v11 = RTPMapPacketMultiplexModeToVTPMode(*a1);
  VTP_SetSocketMode(a3, v11);
  v34 = 128;
  if (VTP_Getsockname(a3, v49, &v34))
  {
    _RTPConfigureVirtualSockets_cold_2();
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v38 = v12;
      v39 = 2080;
      v40 = "_RTPConfigureVirtualSockets";
      v41 = 1024;
      v42 = 3462;
      v43 = 1024;
      v44 = a3;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Start listening RTCP on sock %d", buf, 0x22u);
    }
  }

  v14 = a1[1];
  if (v14 != -1)
  {
    VTP_Close(v14);
  }

  v15 = a1[2];
  if (v15 != -1)
  {
    VTP_Close(v15);
  }

  a1[1] = a2;
  a1[2] = a3;
  if (a1[7])
  {
    VTP_SetPktType(a2, 32);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v38 = v16;
        v39 = 2080;
        v40 = "_RTPConfigureVirtualSockets";
        v41 = 1024;
        v42 = 3481;
        v43 = 1024;
        v44 = a2;
        v45 = 1024;
        v46 = 32;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP  vfd (%d) accepts pkt (%04X)", buf, 0x28u);
      }
    }

    VTP_SetPktType(a3, 128);
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_27;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 136316162;
    v38 = v18;
    v39 = 2080;
    v40 = "_RTPConfigureVirtualSockets";
    v41 = 1024;
    v42 = 3483;
    v43 = 1024;
    v44 = a3;
    v45 = 1024;
    v46 = 128;
  }

  else
  {
    VTP_SetPktType(a2, 272);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v38 = v20;
        v39 = 2080;
        v40 = "_RTPConfigureVirtualSockets";
        v41 = 1024;
        v42 = 3476;
        v43 = 1024;
        v44 = a2;
        v45 = 1024;
        v46 = 272;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP  vfd (%d) accepts pkt (%04X)", buf, 0x28u);
      }
    }

    VTP_SetPktType(a3, 64);
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_27;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v19 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 136316162;
    v38 = v22;
    v39 = 2080;
    v40 = "_RTPConfigureVirtualSockets";
    v41 = 1024;
    v42 = 3478;
    v43 = 1024;
    v44 = a3;
    v45 = 1024;
    v46 = 64;
  }

  _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTCP vfd (%d) accepts pkt (%04X)", buf, 0x28u);
LABEL_27:
  v23 = a1[8];
  v24 = *(a1 + 5);
  if (v24 && v23 < 1)
  {
    __break(0x5519u);
  }

  else
  {
    VTP_SetPayloadList(a2, v23, v24);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v27 = a1[7];
        *buf = 136316418;
        v38 = v25;
        v39 = 2080;
        v40 = "_RTPConfigureVirtualSockets";
        v41 = 1024;
        v42 = 3489;
        v43 = 1024;
        v44 = v27;
        v45 = 1024;
        v46 = a2;
        v47 = 1024;
        v48 = a3;
        _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP/RTCP sockets for PayloadType %d are %d and %d", buf, 0x2Eu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v30 = a1[1];
        v31 = a1[1208];
        v32 = a1[23];
        *buf = 136316418;
        v38 = v28;
        v39 = 2080;
        v40 = "_RTPConfigureVirtualSockets";
        v41 = 1024;
        v42 = 3491;
        v43 = 1024;
        v44 = v30;
        v45 = 1024;
        v46 = v31;
        v47 = 1024;
        v48 = v32;
        _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Configure RTP sockets: iSocRTP %d, dwRemoteSSRC %08X, cellularUniqueTag %d", buf, 0x2Eu);
      }
    }

    if (a1[22])
    {
      VTP_SetRemoteSSRC(a1[1], a1[1208]);
      VTP_SetRemoteSSRC(a1[2], a1[1208]);
    }

    v33 = a1[23];
    if (v33)
    {
      VTP_SetCellularUniqueTag(a1[1], v33);
    }

    v36 = 0;
    memset(v35, 0, sizeof(v35));
    SAToIPPORT();
    RTPSetDefaultCNAME(a1, 0, v35);
  }
}

BOOL RTPMapPacketMultiplexModeToVTPMode(_BOOL8 result)
{
  if ((result - 1) >= 2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      RTPMapPacketMultiplexModeToVTPMode_cold_1();
    }

    return 0;
  }

  return result;
}

void RTPSetDefaultCNAME(uint64_t a1, int *a2, int *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v6;
  v41 = v6;
  v38 = v6;
  v39 = v6;
  v36 = v6;
  v37 = v6;
  v34 = v6;
  v35 = v6;
  v32 = v6;
  v33 = v6;
  v30 = v6;
  v31 = v6;
  v28 = v6;
  v29 = v6;
  *__dst = v6;
  v27 = v6;
  v7 = getlogin();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = "user";
  }

  if (a2 && IsIPPORTValid())
  {
    IPToString();
    v9 = *a2;
LABEL_10:
    v10 = v9 & 1;
    goto LABEL_12;
  }

  if (a3 && IsIPPORTValid())
  {
    IPToString();
    v9 = *a3;
    goto LABEL_10;
  }

  strncpy(__dst, "hostname", 0x100uLL);
  v10 = 0;
LABEL_12:
  v11 = hwrandom();
  v12 = "[";
  if (v10)
  {
    v13 = "]";
  }

  else
  {
    v12 = "";
    v13 = "";
  }

  __sprintf_chk((a1 + 360), 0, 0x100uLL, "%s%08X@%s%s%s", v8, v11, v12, __dst, v13);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v17 = v14;
      v18 = 2080;
      v19 = "RTPSetDefaultCNAME";
      v20 = 1024;
      v21 = 3342;
      v22 = 2048;
      v23 = a1;
      v24 = 2080;
      v25 = a1 + 360;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CNAME for RTP(%p) is [%s]", buf, 0x30u);
    }
  }
}

uint64_t RTPSetSockets(uint64_t a1, int a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  *&v5.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v5.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v34 = v5;
  v35 = v5;
  v6 = 2147549185;
  v33 = v5;
  v31 = v5;
  v32 = v5;
  v29 = v5;
  v30 = v5;
  v28 = v5;
  if (a2 == -1 || a3 == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v19 = v14;
        v20 = 2080;
        v21 = "RTPSetSockets";
        v22 = 1024;
        v23 = 3517;
        v24 = 1024;
        v25 = a2;
        v26 = 1024;
        v27 = a3;
        _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d RTPSetSockets: Invalid sockets passed: rtp(%d) rtcp(%d)", buf, 0x28u);
      }
    }
  }

  else
  {
    v7 = CheckInHandleDebug();
    if (v7)
    {
      v8 = v7;
      v17 = 128;
      getsockname(a2, &v28, &v17);
      v9 = VTP_SocketWithRealSocket(v28.sa_family, 2, 17, a2);
      if (v9 == -1)
      {
        v6 = *__error() | 0xC0010000;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            RTPSetSockets_cold_2();
          }
        }

        if (a2 != a3)
        {
          close(a2);
        }
      }

      else
      {
        v10 = v9;
        v17 = 128;
        getsockname(a3, &v28, &v17);
        v11 = VTP_SocketWithRealSocket(v28.sa_family, 2, 17, a3);
        if (v11 != -1)
        {
          v12 = v11;
          _RTPConfigureVirtualSockets(v8, v10, v11);
          if ((v13 & 0x80000000) != 0)
          {
            v6 = v13;
            VTP_Close(v10);
            VTP_Close(v12);
          }

          else
          {
            v6 = 0;
          }

          goto LABEL_13;
        }

        RTPSetSockets_cold_1(v10, buf);
        v6 = *buf;
      }

      close(a3);
LABEL_13:
      CheckOutHandleDebug();
      return v6;
    }

    return 2147549186;
  }

  return v6;
}

uint64_t RTPSetNWConnections(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = 2147549185;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      v5 = v4;
      v6 = VTP_SocketWithNWConnection(2u, 17, a2);
      if (v6 == -1)
      {
        RTPSetNWConnections_cold_2();
      }

      else
      {
        v7 = v6;
        v8 = VTP_SocketWithNWConnection(2u, 17, a2);
        if (v8 != -1)
        {
          v9 = v8;
          _RTPConfigureVirtualSockets(v5, v7, v8);
          if ((v10 & 0x80000000) != 0)
          {
            v2 = v10;
            VTP_Close(v7);
            VTP_Close(v9);
          }

          else
          {
            v2 = 0;
          }

          goto LABEL_12;
        }

        RTPSetNWConnections_cold_1(v7, &v12);
      }

      v2 = v12;
LABEL_12:
      CheckOutHandleDebug();
      return v2;
    }

    return 2147549186;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      RTPSetNWConnections_cold_3();
    }
  }

  return v2;
}

void RTPCreateSocketsForIDSInternal(unsigned int *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = VTP_SocketForIDS();
  if (v2 == -1)
  {
    __error();
    if (VRTraceGetErrorLogLevelForModule() > 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPCreateSocketsForIDSInternal_cold_2();
      }
    }
  }

  else
  {
    v3 = v2;
    v4 = RTPMapPacketMultiplexModeToVTPMode(*a1);
    VTP_SetSocketMode(v3, v4);
    VTP_SetTransportSessionID(v3, a1[2646]);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v6 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315906;
        v33 = v7;
        v34 = 2080;
        v35 = "RTPCreateSocketsForIDSInternal";
        v36 = 1024;
        v37 = 3613;
        v38 = 1024;
        v39 = v3;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Start listening RTP on virtual socket %d", &v32, 0x22u);
      }
    }

    v9 = VTP_SocketForIDS();
    if (v9 != -1)
    {
      v10 = v9;
      v11 = RTPMapPacketMultiplexModeToVTPMode(*a1);
      VTP_SetSocketMode(v10, v11);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 136315906;
          v33 = v12;
          v34 = 2080;
          v35 = "RTPCreateSocketsForIDSInternal";
          v36 = 1024;
          v37 = 3627;
          v38 = 1024;
          v39 = v10;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Start listening RTCP on virtual socket %d", &v32, 0x22u);
        }
      }

      v14 = a1[1];
      if (v14 != -1)
      {
        VTP_Close(v14);
      }

      v15 = a1[2];
      if (v15 != -1)
      {
        VTP_Close(v15);
      }

      a1[1] = v3;
      a1[2] = v10;
      if (a1[7])
      {
        VTP_SetPktType(v3, 32);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            v32 = 136316162;
            v33 = v16;
            v34 = 2080;
            v35 = "RTPCreateSocketsForIDSInternal";
            v36 = 1024;
            v37 = 3646;
            v38 = 1024;
            v39 = v3;
            v40 = 1024;
            v41 = 32;
            _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP  vfd (%d) accepts pkt (%04X)", &v32, 0x28u);
          }
        }

        VTP_SetPktType(v10, 128);
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_34;
        }

        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *v6;
        if (!os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        v32 = 136316162;
        v33 = v18;
        v34 = 2080;
        v35 = "RTPCreateSocketsForIDSInternal";
        v36 = 1024;
        v37 = 3648;
        v38 = 1024;
        v39 = v10;
        v40 = 1024;
        v41 = 128;
      }

      else
      {
        VTP_SetPktType(v3, 272);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v20 = VRTraceErrorLogLevelToCSTR();
          v21 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            v32 = 136316162;
            v33 = v20;
            v34 = 2080;
            v35 = "RTPCreateSocketsForIDSInternal";
            v36 = 1024;
            v37 = 3641;
            v38 = 1024;
            v39 = v3;
            v40 = 1024;
            v41 = 272;
            _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP  vfd (%d) accepts pkt (%04X)", &v32, 0x28u);
          }
        }

        VTP_SetPktType(v10, 64);
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_34;
        }

        v22 = VRTraceErrorLogLevelToCSTR();
        v19 = *v6;
        if (!os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        v32 = 136316162;
        v33 = v22;
        v34 = 2080;
        v35 = "RTPCreateSocketsForIDSInternal";
        v36 = 1024;
        v37 = 3643;
        v38 = 1024;
        v39 = v10;
        v40 = 1024;
        v41 = 64;
      }

      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTCP vfd (%d) accepts pkt (%04X)", &v32, 0x28u);
LABEL_34:
      v23 = a1[8];
      v24 = *(a1 + 5);
      if (v24 && v23 < 1)
      {
        __break(0x5519u);
      }

      else
      {
        VTP_SetPayloadList(v3, v23, v24);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *v6;
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
          {
            v27 = a1[1];
            v28 = a1[2];
            v29 = a1[1208];
            v30 = a1[23];
            v32 = 136316674;
            v33 = v25;
            v34 = 2080;
            v35 = "RTPCreateSocketsForIDSInternal";
            v36 = 1024;
            v37 = 3652;
            v38 = 1024;
            v39 = v27;
            v40 = 1024;
            v41 = v28;
            v42 = 1024;
            v43 = v29;
            v44 = 1024;
            v45 = v30;
            _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPCreateSocketsForIDS iSocRTP %d, iSocRTCP %d, dwRemoteSSRC %08X, cellularUniqueTag %d", &v32, 0x34u);
          }
        }

        if (a1[22])
        {
          VTP_SetRemoteSSRC(a1[1], a1[1208]);
          VTP_SetRemoteSSRC(a1[2], a1[1208]);
        }

        v31 = a1[23];
        if (v31)
        {
          VTP_SetCellularUniqueTag(a1[1], v31);
        }
      }

      return;
    }

    __error();
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        RTPCreateSocketsForIDSInternal_cold_1();
      }
    }

    VTP_Close(v3);
  }
}

uint64_t RTPCreateSocketsForIDS()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2147549186;
  }

  RTPCreateSocketsForIDSInternal(v0);
  v2 = v1;
  CheckOutHandleDebug();
  return v2;
}

void RTPCreateSocketsRetryBind(uint64_t a1, __int128 *a2, uint64_t a3, int *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v52 = -1;
  v53 = -1;
  memset(v69, 0, sizeof(v69));
  v69[0].sa_len = 0x80;
  if (!a2)
  {
    return;
  }

  v51 = -1431655766;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v66 = v5;
  v67 = v5;
  v68 = 0xAAAAAAAAAAAAAAAALL;
  if (*(a2 + 36))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPCreateSocketsRetryBind_cold_1();
      }
    }
  }

  else
  {
    v8 = CheckInHandleDebug();
    if (!v8)
    {
      return;
    }

    v9 = v8;
    v49 = a4;
    v50 = v8 + 27800;
    v10 = a2[1];
    v66 = *a2;
    v67 = v10;
    v68 = *(a2 + 4);
    v11 = 100;
    do
    {
      v12 = CreateSocket(v9, &v66, &v53);
      if (v12 < 0)
      {
        v18 = v12;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v19 = VRTraceErrorLogLevelToCSTR();
          v20 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v55 = v19;
            v56 = 2080;
            v57 = "RTPCreateSocketsRetryBind";
            v58 = 1024;
            v59 = 3717;
            v60 = 1024;
            *v61 = v18;
            *&v61[4] = 1024;
            *&v61[6] = WORD2(v68);
            _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPCreateSocketsRetryBind failed to create RTP socket: hResult(%x) port(%d)", buf, 0x28u);
          }
        }

        v17 = 2;
      }

      else
      {
        ++WORD2(v68);
        v13 = CreateSocket(v9, &v66, &v52);
        if ((v13 & 0x80000000) == 0)
        {
          break;
        }

        v14 = v13;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v55 = v15;
            v56 = 2080;
            v57 = "RTPCreateSocketsRetryBind";
            v58 = 1024;
            v59 = 3712;
            v60 = 1024;
            *v61 = v14;
            *&v61[4] = 1024;
            *&v61[6] = WORD2(v68);
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPCreateSocketsRetryBind failed to create RTCP socket: hResult(%x) port(%d)", buf, 0x28u);
          }
        }

        VTP_Close(v53);
        v17 = 1;
      }

      WORD2(v68) += v17;
      --v11;
    }

    while (v11);
    v21 = v52;
    v22 = v53;
    if (v53 != -1 && v52 != -1)
    {
      v51 = 128;
      VTP_Getsockname(v53, v69, &v51);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 7)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v55 = v25;
          v56 = 2080;
          v57 = "RTPCreateSocketsRetryBind";
          v58 = 1024;
          v59 = 3728;
          v60 = 1024;
          *v61 = v22;
          _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Start listening RTP on sock %d", buf, 0x22u);
        }
      }

      v51 = 128;
      VTP_Getsockname(v21, v69, &v51);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v55 = v27;
          v56 = 2080;
          v57 = "RTPCreateSocketsRetryBind";
          v58 = 1024;
          v59 = 3732;
          v60 = 1024;
          *v61 = v21;
          _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Start listening RTCP on sock %d", buf, 0x22u);
        }
      }

      v29 = *(v9 + 4);
      if (v29 != -1)
      {
        VTP_Close(v29);
      }

      v30 = *(v9 + 8);
      if (v30 != -1)
      {
        VTP_Close(v30);
      }

      *(v9 + 4) = v22;
      *(v9 + 8) = v21;
      if (*(v9 + 28))
      {
        VTP_SetPktType(v22, 32);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v31 = VRTraceErrorLogLevelToCSTR();
          v32 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v55 = v31;
            v56 = 2080;
            v57 = "RTPCreateSocketsRetryBind";
            v58 = 1024;
            v59 = 3751;
            v60 = 1024;
            *v61 = v22;
            *&v61[4] = 1024;
            *&v61[6] = 32;
            _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP  vfd (%d) accepts pkt (%04X)", buf, 0x28u);
          }
        }

        VTP_SetPktType(v21, 128);
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_55;
        }

        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        *buf = 136316162;
        v55 = v33;
        v56 = 2080;
        v57 = "RTPCreateSocketsRetryBind";
        v58 = 1024;
        v59 = 3753;
        v60 = 1024;
        *v61 = v21;
        *&v61[4] = 1024;
        *&v61[6] = 128;
      }

      else
      {
        VTP_SetPktType(v22, 272);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v35 = VRTraceErrorLogLevelToCSTR();
          v36 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v55 = v35;
            v56 = 2080;
            v57 = "RTPCreateSocketsRetryBind";
            v58 = 1024;
            v59 = 3746;
            v60 = 1024;
            *v61 = v22;
            *&v61[4] = 1024;
            *&v61[6] = 272;
            _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP  vfd (%d) accepts pkt (%04X)", buf, 0x28u);
          }
        }

        VTP_SetPktType(v21, 64);
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_55;
        }

        v37 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        *buf = 136316162;
        v55 = v37;
        v56 = 2080;
        v57 = "RTPCreateSocketsRetryBind";
        v58 = 1024;
        v59 = 3748;
        v60 = 1024;
        *v61 = v21;
        *&v61[4] = 1024;
        *&v61[6] = 64;
      }

      _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTCP vfd (%d) accepts pkt (%04X)", buf, 0x28u);
LABEL_55:
      v38 = *(v9 + 32);
      v39 = *(v9 + 40);
      if (v39 && v38 < 1)
      {
        goto LABEL_70;
      }

      VTP_SetPayloadList(v22, v38, v39);
      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v40 = VRTraceErrorLogLevelToCSTR();
        v41 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(v9 + 28);
          *buf = 136316418;
          v55 = v40;
          v56 = 2080;
          v57 = "RTPCreateSocketsRetryBind";
          v58 = 1024;
          v59 = 3758;
          v60 = 1024;
          *v61 = v42;
          *&v61[4] = 1024;
          *&v61[6] = v22;
          *v62 = 1024;
          *&v62[2] = v21;
          _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP/RTCP sockets for PayloadType %d are %d and %d", buf, 0x2Eu);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v43 = VRTraceErrorLogLevelToCSTR();
        v44 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(v9 + 4);
          v46 = *(v9 + 4832);
          v47 = *(v9 + 92);
          *buf = 136316674;
          v55 = v43;
          v56 = 2080;
          v57 = "RTPCreateSocketsRetryBind";
          v58 = 1024;
          v59 = 3760;
          v60 = 2048;
          *v61 = a1;
          *&v61[8] = 1024;
          *v62 = v45;
          *&v62[4] = 1024;
          v63 = v46;
          v64 = 1024;
          v65 = v47;
          _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPCreateSockets hRTP %p, iSocRTP %d, dwRemoteSSRC %08X cellularUniqueTag %d", buf, 0x38u);
        }
      }

      if (*(v9 + 88))
      {
        VTP_SetRemoteSSRC(*(v9 + 4), *(v9 + 4832));
        VTP_SetRemoteSSRC(*(v9 + 8), *(v9 + 4832));
      }

      v48 = *(v9 + 92);
      if (v48)
      {
        VTP_SetCellularUniqueTag(*(v9 + 4), v48);
      }

      if (v9 >= v50)
      {
LABEL_70:
        __break(0x5519u);
      }

      else
      {
        RTPSetDefaultCNAME(v9, a2, v49);
        CheckOutHandleDebug();
      }

      return;
    }

    if (v53 != -1)
    {
      VTP_Close(v53);
    }

    if (v21 != -1)
    {
      VTP_Close(v21);
    }

    CheckOutHandleDebug();
  }
}

uint64_t CreateSocket(unsigned int *a1, const char *a2, int *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[1] = v6;
  v44[2] = v6;
  v44[0] = v6;
  memset(v29, 170, 6);
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v7 = *a2;
  if (*a2)
  {
    ai_family = 30;
  }

  else
  {
    ai_family = 2;
  }

  if (v7)
  {
    v9 = 125;
  }

  else
  {
    v9 = 25;
  }

  memset(&v28.ai_socktype, 0, 40);
  v28.ai_flags = 1;
  v28.ai_family = ai_family;
  v28.ai_socktype = 2;
  IPToString();
  __sprintf_chk(v29, 0, 6uLL, "%u", *(a2 + 18));
  v10 = getaddrinfo(v44, v29, &v28, &v27);
  if (v10 || (v11 = v27) == 0)
  {
    v14 = v10 | 0xB0010000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v31 = v15;
        v32 = 2080;
        v33 = "CreateSocket";
        v34 = 1024;
        v35 = 3388;
        v36 = 1024;
        v37 = 3388;
        v38 = 2080;
        v39 = v44;
        v40 = 2080;
        v41 = v29;
        v42 = 1024;
        v43 = v14;
        _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPTransport.c:%d: getaddrinfo(%s,%s) failed(%08X)", buf, 0x3Cu);
      }
    }

    return v14;
  }

  v12 = v7 << 31 >> 31;
  v13 = v27;
  while (v13->ai_family != ai_family)
  {
    v13 = v13->ai_next;
    if (!v13)
    {
      ai_family = v27->ai_family;
      goto LABEL_17;
    }
  }

  v11 = v13;
LABEL_17:
  v17 = VTP_Socket(ai_family, v11->ai_socktype, v11->ai_protocol);
  if (v17 == -1)
  {
    v14 = *__error() | 0xC0010000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateSocket_cold_2();
      }
    }

    freeaddrinfo(v27);
    return v14;
  }

  v18 = v17;
  v19 = RTPMapPacketMultiplexModeToVTPMode(*a1);
  result = VTP_SetSocketMode(v18, v19);
  ai_addr = v11->ai_addr;
  ai_addrlen = v11->ai_addrlen;
  if (!ai_addr || ai_addr < ai_addr + ai_addrlen)
  {
    v23 = VTP_BindNew(v18, ai_addr, ai_addrlen);
    VTP_DetectNAT64Prefix(v18, a2 + 4);
    freeaddrinfo(v27);
    if (v23 == -1)
    {
      v14 = *__error() | 0xC0010000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v31 = v24;
          v32 = 2080;
          v33 = "CreateSocket";
          v34 = 1024;
          v35 = 3417;
          v36 = 1024;
          v37 = 3417;
          v38 = 2080;
          v39 = v29;
          v40 = 1024;
          LODWORD(v41) = v14;
          _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPTransport.c:%d: bind on %s failed(%08X)", buf, 0x32u);
        }
      }
    }

    else
    {
      if (!a2[4] || (v26 = if_nametoindex(a2 + 4)) == 0 || !VTP_Setsockopt(v18, v12 & 0x29, v9, &v26, 4u))
      {
        v14 = 0;
        *a3 = v18;
        return v14;
      }

      v14 = *__error() | 0xC0010000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          CreateSocket_cold_1();
        }
      }
    }

    VTP_Close(v18);
    return v14;
  }

  __break(0x5519u);
  return result;
}

uint64_t RTPSetCName(int a1, _BYTE *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2147549186;
  }

  if (*a2)
  {
    v5 = v4 + 360;
    __strlcpy_chk();
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136316162;
        v10 = v6;
        v11 = 2080;
        v12 = "RTPSetCName";
        v13 = 1024;
        v14 = 3800;
        v15 = 1024;
        v16 = a1;
        v17 = 2080;
        v18 = v5;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CNAME for RTP Handle(%d) is [%s]", &v9, 0x2Cu);
      }
    }
  }

  CheckOutHandleDebug();
  return 0;
}

void RTPCreateSockets(uint64_t a1, uint64_t a2, int *a3, int *a4, int *a5)
{
  v75 = *MEMORY[0x1E69E9840];
  memset(v63, 170, 6);
  memset(v73, 0, sizeof(v73));
  v73[0].sa_len = 0x80;
  v10 = CheckInHandleDebug();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v62 = -1431655766;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v74[0] = v12;
  v74[1] = v12;
  v74[2] = v12;
  v60 = 0xAAAAAAAAAAAAAAAALL;
  if (*a2)
  {
    v13 = 30;
  }

  else
  {
    v13 = 2;
  }

  memset(&v61.ai_socktype, 0, 40);
  v61.ai_flags = 1;
  v61.ai_family = v13;
  v61.ai_socktype = 2;
  IPToString();
  __sprintf_chk(v63, 0, 6uLL, "%u", *(a2 + 36));
  v14 = getaddrinfo(v74, v63, &v61, &v60);
  if (v14 || (v15 = v60) == 0)
  {
    v18 = v14 | 0xB0010000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v65 = v19;
        v66 = 2080;
        v67 = "RTPCreateSockets";
        v68 = 1024;
        v69 = 3840;
        v70 = 1024;
        LODWORD(v71) = 3840;
        WORD2(v71) = 2080;
        *(&v71 + 6) = v74;
        HIWORD(v71) = 2080;
        *v72 = v63;
        *&v72[8] = 1024;
        *&v72[10] = v18;
        _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPTransport.c:%d: getaddrinfo(%s,%s) failed(%08X)", buf, 0x3Cu);
      }
    }

    goto LABEL_48;
  }

  v16 = v60;
  while (v16->ai_family != v13)
  {
    v16 = v16->ai_next;
    if (!v16)
    {
      ai_family = v60->ai_family;
      goto LABEL_16;
    }
  }

  ai_family = v13;
  v15 = v16;
LABEL_16:
  v21 = VTP_Socket(ai_family, v15->ai_socktype, v15->ai_protocol);
  if (v21 == -1)
  {
    __error();
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPCreateSockets_cold_2();
      }
    }

    freeaddrinfo(v60);
    goto LABEL_48;
  }

  v22 = v21;
  v23 = RTPMapPacketMultiplexModeToVTPMode(*v11);
  VTP_SetSocketMode(v22, v23);
  VTP_DetectNAT64Prefix(v22, (a2 + 4));
  freeaddrinfo(v60);
  __sprintf_chk(v63, 0, 6uLL, "%u", *(a2 + 36));
  v24 = getaddrinfo(v74, v63, &v61, &v60);
  if (v24 || (v25 = v60) == 0)
  {
    v27 = v24 | 0xB0010000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v65 = v28;
        v66 = 2080;
        v67 = "RTPCreateSockets";
        v68 = 1024;
        v69 = 3878;
        v70 = 1024;
        LODWORD(v71) = 3878;
        WORD2(v71) = 2080;
        *(&v71 + 6) = v74;
        HIWORD(v71) = 2080;
        *v72 = v63;
        *&v72[8] = 1024;
        *&v72[10] = v27;
        _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPTransport.c:%d: getaddrinfo(%s,%s) failed(%08X)", buf, 0x3Cu);
      }
    }

    goto LABEL_47;
  }

  v26 = v60;
  while (v26->ai_family != v13)
  {
    v26 = v26->ai_next;
    if (!v26)
    {
      v13 = v60->ai_family;
      goto LABEL_31;
    }
  }

  v25 = v26;
LABEL_31:
  v30 = VTP_Socket(v13, v25->ai_socktype, v25->ai_protocol);
  if (v30 == -1)
  {
    __error();
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPCreateSockets_cold_1();
      }
    }

    freeaddrinfo(v60);
LABEL_47:
    VTP_Close(v22);
LABEL_48:
    CheckOutHandleDebug();
    return;
  }

  v31 = v30;
  v32 = RTPMapPacketMultiplexModeToVTPMode(*v11);
  VTP_SetSocketMode(v31, v32);
  VTP_DetectNAT64Prefix(v31, (a2 + 4));
  freeaddrinfo(v60);
  v33 = v11[1];
  if (v33 != -1)
  {
    VTP_Close(v33);
  }

  v34 = v11[2];
  if (v34 != -1)
  {
    VTP_Close(v34);
  }

  v11[1] = v22;
  v11[2] = v31;
  v62 = 128;
  VTP_Getsockname(v22, v73, &v62);
  v62 = 128;
  VTP_Getsockname(v31, v73, &v62);
  if (v11[7])
  {
    VTP_SetPktType(v22, 32);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v65 = v35;
        v66 = 2080;
        v67 = "RTPCreateSockets";
        v68 = 1024;
        v69 = 3936;
        v70 = 1024;
        LODWORD(v71) = v22;
        WORD2(v71) = 1024;
        *(&v71 + 6) = 32;
        _os_log_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP  vfd (%d) accepts pkt (%04X)", buf, 0x28u);
      }
    }

    VTP_SetPktType(v31, 128);
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_56;
    }

    v37 = VRTraceErrorLogLevelToCSTR();
    v38 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136316162;
    v65 = v37;
    v66 = 2080;
    v67 = "RTPCreateSockets";
    v68 = 1024;
    v69 = 3939;
    v70 = 1024;
    LODWORD(v71) = v31;
    WORD2(v71) = 1024;
    *(&v71 + 6) = 128;
  }

  else
  {
    VTP_SetPktType(v22, 272);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v39 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v65 = v39;
        v66 = 2080;
        v67 = "RTPCreateSockets";
        v68 = 1024;
        v69 = 3929;
        v70 = 1024;
        LODWORD(v71) = v22;
        WORD2(v71) = 1024;
        *(&v71 + 6) = 16;
        _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP  vfd (%d) accepts pkt (%04X)", buf, 0x28u);
      }
    }

    VTP_SetPktType(v31, 64);
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_56;
    }

    v41 = VRTraceErrorLogLevelToCSTR();
    v38 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_56;
    }

    *buf = 136316162;
    v65 = v41;
    v66 = 2080;
    v67 = "RTPCreateSockets";
    v68 = 1024;
    v69 = 3932;
    v70 = 1024;
    LODWORD(v71) = v31;
    WORD2(v71) = 1024;
    *(&v71 + 6) = 64;
  }

  _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTCP vfd (%d) accepts pkt (%04X)", buf, 0x28u);
LABEL_56:
  v42 = v11[8];
  v43 = *(v11 + 5);
  if (!v43 || v42 >= 1)
  {
    VTP_SetPayloadList(v22, v42, v43);
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v46 = v11[7];
        *buf = 136316418;
        v65 = v44;
        v66 = 2080;
        v67 = "RTPCreateSockets";
        v68 = 1024;
        v69 = 3944;
        v70 = 1024;
        LODWORD(v71) = v46;
        WORD2(v71) = 1024;
        *(&v71 + 6) = v22;
        WORD5(v71) = 1024;
        HIDWORD(v71) = v31;
        _os_log_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP/RTCP sockets for PayloadType %d are %d and %d", buf, 0x2Eu);
      }
    }

    *a4 = v31;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v47 = VRTraceErrorLogLevelToCSTR();
      v48 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v49 = v11[1];
        v50 = v11[1208];
        v51 = v11[23];
        *buf = 136316674;
        v65 = v47;
        v66 = 2080;
        v67 = "RTPCreateSockets";
        v68 = 1024;
        v69 = 3948;
        v70 = 2048;
        *&v71 = a1;
        WORD4(v71) = 1024;
        *(&v71 + 10) = v49;
        HIWORD(v71) = 1024;
        *v72 = v50;
        *&v72[4] = 1024;
        *&v72[6] = v51;
        _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPCreateSockets hRTP %p, iSocRTP %d, dwRemoteSSRC %08X cellularUniquetag %d", buf, 0x38u);
      }
    }

    if (v11[22])
    {
      VTP_SetRemoteSSRC(v11[1], v11[1208]);
      VTP_SetRemoteSSRC(v11[2], v11[1208]);
    }

    v52 = v11[23];
    if (v52)
    {
      VTP_SetCellularUniqueTag(v11[1], v52);
    }

    v53 = *(v11 + 1318);
    if (v53 != 0xFFFFFFFFLL)
    {
      v54 = VTP_SetAFRC(v11[1], v53);
      if (v54)
      {
        v55 = v54;
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v56 = VRTraceErrorLogLevelToCSTR();
          v57 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v58 = v11[1];
            v59 = *(v11 + 1318);
            *buf = 136316674;
            v65 = v56;
            v66 = 2080;
            v67 = "RTPCreateSockets";
            v68 = 1024;
            v69 = 3965;
            v70 = 1024;
            LODWORD(v71) = v55;
            WORD2(v71) = 2048;
            *(&v71 + 6) = a1;
            HIWORD(v71) = 1024;
            *v72 = v58;
            *&v72[4] = 2048;
            *&v72[6] = v59;
            _os_log_impl(&dword_1DB56E000, v57, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPCreateSocket:VTP_SetAFRC failed with %d for hRTP/iSocRTP: %p/%d hAFRC %p ", buf, 0x3Cu);
          }
        }
      }
    }

    if (v11 < v11 + 6950)
    {
      RTPSetDefaultCNAME(v11, a3, a5);
      goto LABEL_48;
    }
  }

  __break(0x5519u);
}

uint64_t RTPSetMediaQueue(double a1, uint64_t a2, uint64_t a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147549186;
  }

  v6 = v5;
  *(v5 + 10536) = a3;
  if (!*(v5 + 28))
  {
    MediaQueue_SetThrottlingAudioInterval(a1);
    MediaQueue_SetThrottlingIsIPv6(*(v6 + 10536), *(v6 + 12) != 0);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetVCMediaQueue(uint64_t a1, const void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  _VCBoundsSafety_ReleaseAssignAndRetain((v3 + 10624), a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetStatisticsCollector(uint64_t a1, const void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  _VCBoundsSafety_ReleaseAssignAndRetain((v3 + 10608), a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetBasebandCongestionDetector(uint64_t a1, const void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  _VCBoundsSafety_ReleaseAssignAndRetain((v3 + 10616), a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetAFRCHandle(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2147549186;
  }

  v5 = v4;
  *(v4 + 10544) = a2;
  v6 = *(v4 + 4);
  if (v6 != -1)
  {
    v7 = VTP_SetAFRC(v6, a2);
    if (v7)
    {
      v8 = v7;
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(v5 + 4);
          v13 = 136316674;
          v14 = v9;
          v15 = 2080;
          v16 = "RTPSetAFRCHandle";
          v17 = 1024;
          v18 = 4079;
          v19 = 1024;
          v20 = v8;
          v21 = 2048;
          v22 = a1;
          v23 = 1024;
          v24 = v11;
          v25 = 2048;
          v26 = a2;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTPSetAFRCHandle:VTP_SetAFRC failed with %d for hRTP/iSockRTP: %p/%d  hAFRC %p ", &v13, 0x3Cu);
        }
      }
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPGetAFRCTxInfo(uint64_t a1, _DWORD *a2, void *a3, NSObject *a4, _DWORD *a5, void *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _BYTE *a11, _DWORD *a12)
{
  v19 = CheckInHandleDebug();
  if (!v19)
  {
    return 2147549186;
  }

  v20 = AFRCGetTxInfo(*(v19 + 10544), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  CheckOutHandleDebug();
  return v20;
}

uint64_t RTPSetAFRCTxCap(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  v4 = *(v3 + 10544);
  if (v4 != 0xFFFFFFFFLL)
  {
    AFRCSetTxCap(v4, a2);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetAFRCVideoPaused(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  v4 = *(v3 + 10544);
  if (v4 != 0xFFFFFFFFLL)
  {
    AFRCSetVideoPaused(v4, a2);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetRedundantAudio(uint64_t a1, int a2, int a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147549186;
  }

  v6 = MediaQueue_SetRedundantAudio(*(v5 + 10536), a2, a3);
  CheckOutHandleDebug();
  return v6;
}

uint64_t RTPGetOWRD(uint64_t a1, double *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = 2147549185;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + 10608);
      if (v6)
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        v11 = 0u;
        memset(v10, 0, sizeof(v10));
        VCRateControlGetStatistics(v6, 2, v10);
        v2 = 0;
        OWRD = *&v11;
      }

      else
      {
        v8 = *(v5 + 10600);
        if (!v8)
        {
          v2 = 2147549188;
          goto LABEL_9;
        }

        v2 = 0;
        OWRD = VCAudioReceiver_GetOWRD(v8);
      }

      *a2 = OWRD;
LABEL_9:
      CheckOutHandleDebug();
      return v2;
    }

    return 2147549186;
  }

  return v2;
}

uint64_t RTPSetOWRD(double a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = CheckInHandleDebug();
  if (v2)
  {
    v3 = *(v2 + 10608);
    if (v3)
    {
      memset(&v6[2], 0, 14);
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0;
      *v6 = 7;
      v6[9] = 257;
      v7 = 0x500000000;
      v8 = 0;
      v10 = 0;
      v9 = 0;
      v11 = 0;
      v12 = a1;
      VCRateControlSetStatistics(v3, v6);
    }

    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    v4 = 2147549186;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPSetOWRD_cold_1();
      }
    }
  }

  return v4;
}

uint64_t RTPSetAFRCProcessingDelay(uint64_t a1, _WORD *a2, void *a3, double a4, double a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  if (!a3)
  {
    return 2147549185;
  }

  v15 = NAN;
  RTPGetOWRD(a1, &v15);
  v9 = vcvtd_n_u64_f64(v15, 0xDuLL);
  if (v15 < 0.0)
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = vcvtd_n_u64_f64(a5 - a4, 0xAuLL);
  if (v11 <= 1)
  {
    v11 = 1;
  }

  if (a4 == 0.0)
  {
    v11 = 0;
  }

  HIDWORD(v17) = v10;
  DWORD1(v17) = v11;
  v12 = MicroToNTP(a5);
  v13 = NTPToMiddle32(v12);
  *a2 = v13 >> 6;
  WORD4(v17) = v13 >> 6;
  VCMediaControlInfoSetInfoUnserialized(a3, &v16, 1);
  return 0;
}

uint64_t RTPPackDouble(double a1)
{
  v1 = vcvtd_n_u64_f64(a1, 0xDuLL);
  if (a1 < 0.0)
  {
    return 0;
  }

  return v1;
}

uint64_t RTPGetAFRCStat(uint64_t a1, double *a2, _DWORD *a3, _DWORD *a4, int *a5, uint64_t a6, _DWORD *a7)
{
  v13 = 2147549186;
  v14 = CheckInHandleDebug();
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + 10600);
    if (v16)
    {
      AverageInterarrivalTimeForWindow = VCAudioReceiver_GetAverageInterarrivalTimeForWindow(v16);
      v13 = AFRCGetStat(*(v15 + 10544), a2, a3, a4, a5, (AverageInterarrivalTimeForWindow * 10000.0), a6, a7);
    }

    else
    {
      v13 = 2147549201;
    }

    CheckOutHandleDebug();
  }

  return v13;
}

uint64_t RTPRecordFrameRate(double a1)
{
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    return 2147549186;
  }

  *(v2 + 10552) = a1;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetAFRCRecvMode(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 10560) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPRecordKeyFrame(uint64_t a1, char a2, int a3, int a4, int a5)
{
  v9 = CheckInHandleDebug();
  if (!v9)
  {
    return 2147549186;
  }

  v10 = AFRCRecordKeyFrame(*(v9 + 10544), a2, (*(v9 + 192) + 1), a3, a4, a5);
  CheckOutHandleDebug();
  return v10;
}

uint64_t RTPGetTimeRefreshFrame(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147549186;
  }

  if (*(v5 + 10536) == 0xFFFFFFFFLL)
  {
    TimeRefreshFrame = VCMediaQueue_GetTimeRefreshFrame(*(v5 + 10624), a2, a3);
  }

  else
  {
    TimeRefreshFrame = MediaQueue_GetTimeRefreshFrame(*(v5 + 10536), a2, a3);
  }

  v7 = TimeRefreshFrame;
  CheckOutHandleDebug();
  return v7;
}

uint64_t RTPGetLastEchoedMyTxTS(uint64_t a1, _DWORD *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  v4 = v3;
  v5 = *(v3 + 10608);
  if (v5)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    VCRateControlGetStatistics(v5, 2, &v8);
    if (a2)
    {
      *a2 = DWORD2(v9);
    }

    EchoedMyTxTS = 0;
  }

  else
  {
    EchoedMyTxTS = AFRCGetLastEchoedMyTxTS(*(v4 + 10544), a2);
  }

  CheckOutHandleDebug();
  return EchoedMyTxTS;
}

uint64_t RTPUpdateAudioOnlyRateChange(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  if (*(v3 + 10536) == 0xFFFFFFFFLL)
  {
    v4 = VCMediaQueue_UpdateAudioOnlyRateChange(*(v3 + 10624), a2);
  }

  else
  {
    v4 = MediaQueue_UpdateAudioOnlyRateChange(*(v3 + 10536), a2);
  }

  v5 = v4;
  CheckOutHandleDebug();
  return v5;
}

uint64_t RTPResetConnectionStats()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2147549186;
  }

  if (!*(v0 + 28))
  {
    AFRCMarkResetCS();
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPUpdateIsIPv6(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 12) = a2;
  IsIPv6 = MediaQueue_SetThrottlingIsIPv6(*(v3 + 10536), a2);
  CheckOutHandleDebug();
  return IsIPv6;
}

uint64_t RTPGetIsIPv6(uint64_t a1, BOOL *a2)
{
  if (a2)
  {
    v3 = CheckInHandleDebug();
    if (v3)
    {
      *a2 = *(v3 + 12) != 0;
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      v4 = 2147549186;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          RTPGetIsIPv6_cold_1();
          return 2147549186;
        }
      }
    }
  }

  else
  {
    v4 = 2147549185;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPGetIsIPv6_cold_2();
      }
    }
  }

  return v4;
}

uint64_t RTPUpdateConstantTransportOverhead(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 27784) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPMarkSpecialVideoFlush(uint64_t a1, uint64_t a2, int a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147549186;
  }

  v6 = v5;
  v7 = v5 + 27800;
  result = AFRCMarkSpecialVideoFlush(*(v5 + 10544), a2, a3);
  if (v6 < v7)
  {
    v9 = result;
    _RTPMarkSpecialVCRCVideoFlush(v6, a3);
    CheckOutHandleDebug();
    return v9;
  }

  __break(0x5519u);
  return result;
}

uint64_t _RTPMarkSpecialVCRCVideoFlush(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  result = *(a1 + 10608);
  if (result)
  {
    v5 = 0;
    v4 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    v3 = 10;
    v6 = 2;
    v7 = a2;
    return VCRateControlSetStatistics(result, &v3);
  }

  return result;
}

uint64_t RTPLogMQFlushedPackets(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  AFRCLogMQFlushedPackets(*(v3 + 10544), a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPFlushBaseband(int a1, int a2, int a3, unsigned __int16 a4, int a5, int a6, _WORD *a7)
{
  v55 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v49 = a4;
  v12 = CheckInHandleDebug();
  if (!v12)
  {
    return 2147549186;
  }

  v20 = v12;
  v43 = a1;
  if (a2 && *(v12 + 28) == 1)
  {
    MediaQueue_ThrottlingFlushThrottlingQueue();
  }

  Mutable = (v20 + 27800);
  v48 = -86;
  if (*(v20 + 10564) == 1)
  {
    if (a5)
    {
      AFRCMarkSpecialAudioFlush(*(v20 + 10544), a6);
      if (v20 >= Mutable)
      {
        goto LABEL_48;
      }

      _RTPMarkSpecialVCRCAudioFlush(v20, a6);
    }

    else
    {
      if (*MEMORY[0x1E6986638] >= 5)
      {
        RTPFlushBaseband_cold_1(v20, v13, v14, v15, v16, v17, v18, v19);
      }

      if (!*(v20 + 28))
      {
        goto LABEL_40;
      }
    }
  }

  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!theArray)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }
    }

    goto LABEL_40;
  }

  v41 = a7;
  v42 = v20 + 27800;
  v23 = 1;
  atomic_fetch_add_explicit(&RTPFlushBaseband_s_iTransactionID, 1u, memory_order_relaxed);
  v48 = 1;
  if (*(v20 + 28) || (v23 = *(v20 + 48), v23 >= 1))
  {
    v24 = 0;
    allocator = *MEMORY[0x1E695E480];
    for (i = v23; i; --i)
    {
      if (*(v20 + 28))
      {
        LOBYTE(v26) = *(v20 + 17) & 0x7F;
      }

      else
      {
        v27 = *(v20 + 56);
        v28 = (v27 + v24);
        if (v27 + v24 >= v27 + 4 * *(v20 + 48) || v28 < v27)
        {
          goto LABEL_48;
        }

        v26 = *v28;
      }

      Mutable = CFDictionaryCreateMutable(allocator, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      valuePtr = v26;
      v30 = CFNumberCreate(0, kCFNumberSInt8Type, &valuePtr);
      CFDictionaryAddValue(Mutable, @"transportSessionBasebandQueueFlushPayloadType", v30);
      CFRelease(v30);
      v31 = CFNumberCreate(0, kCFNumberSInt8Type, &v48);
      CFDictionaryAddValue(Mutable, @"transportSessionBasebandQueueFlushPayloadTypeFieldOffset", v31);
      CFRelease(v31);
      *buf = RTPFlushBaseband_s_iTransactionID;
      v32 = CFNumberCreate(0, kCFNumberSInt16Type, buf);
      CFDictionaryAddValue(Mutable, @"transportSessionBasebandQueueFlushTransactionID", v32);
      CFRelease(v32);
      v33 = CFNumberCreate(0, kCFNumberSInt16Type, &v49);
      CFDictionaryAddValue(Mutable, @"transportSessionBasebandQueueFlushCriterion", v33);
      CFRelease(v33);
      v34 = CFNumberCreate(0, kCFNumberSInt32Type, &v50);
      CFDictionaryAddValue(Mutable, @"transportSessionBasebandQueueFlushTimestamp", v34);
      CFRelease(v34);
      CFArrayAppendValue(theArray, Mutable);
      CFRelease(Mutable);
      v24 += 4;
    }
  }

  v46 = 1;
  v35 = (*(v20 + 10568))(3, *(v20 + 10576), theArray, &v46);
  CFRelease(theArray);
  if (v35 < 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      Mutable = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPFlushBaseband_cold_2();
      }
    }

    AFRCCancelFlush();
    if (v20 < v42)
    {
LABEL_41:
      v40 = *(v20 + 10608);
      if (v40)
      {
        v53 = 0uLL;
        v52 = 0;
        memset(v54, 0, sizeof(v54));
        *buf = 10;
        VCRateControlSetStatistics(v40, buf);
      }

      goto LABEL_43;
    }

    do
    {
LABEL_48:
      __break(0x5519u);
LABEL_49:
      RTPFlushBaseband_cold_3();
LABEL_40:
      AFRCCancelFlush();
    }

    while (v20 >= Mutable);
    goto LABEL_41;
  }

  if (v46 >= 2)
  {
    AFRCMarkAdditionalFlushes(*(v20 + 10544), v46 - 1);
    if (v20 < v42)
    {
      v36 = *(v20 + 10608);
      if (v36)
      {
        *&v53 = 0;
        v52 = 0;
        *(&v53 + 1) = 0x100000000;
        memset(&v54[4], 0, 168);
        *buf = 10;
        *v54 = v46 - 1;
        VCRateControlSetStatistics(v36, buf);
      }

      goto LABEL_31;
    }

    goto LABEL_48;
  }

LABEL_31:
  if (v41)
  {
    *v41 = RTPFlushBaseband_s_iTransactionID;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v37 = VRTraceErrorLogLevelToCSTR();
    v38 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v39 = "video";
      if (!*(v20 + 28))
      {
        v39 = "audio";
      }

      *buf = 136316674;
      v52 = v37;
      LOWORD(v53) = 2080;
      *(&v53 + 2) = "RTPFlushBaseband";
      WORD5(v53) = 1024;
      HIDWORD(v53) = 4716;
      *v54 = 1024;
      *&v54[2] = v43;
      *&v54[6] = 1024;
      *&v54[8] = v49;
      *&v54[12] = 2080;
      *&v54[14] = v39;
      *&v54[22] = 1024;
      *&v54[24] = v48;
      _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTP(%08X) flushes baseband: OP(%u) PL(%s) Offset(%u) ", buf, 0x38u);
    }
  }

LABEL_43:
  CheckOutHandleDebug();
  return 0;
}

uint64_t _RTPMarkSpecialVCRCAudioFlush(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  result = *(a1 + 10608);
  if (result)
  {
    v5 = 0;
    v4 = 0;
    v6 = 0x300000000;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = 10;
    v7 = 0;
    v8 = a2;
    return VCRateControlSetStatistics(result, &v3);
  }

  return result;
}

uint64_t RTPFlushBaseband_SpecialMQAudioTS(int a1, int a2, int a3, _WORD *a4)
{
  v4 = a2;
  v8 = RTPFlushBaseband(a1, 0, a2, 2u, 1, a3, a4);
  if (*MEMORY[0x1E6986638] >= 5)
  {
    StallModeTracePrint_(5, "", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/RTPTransport.c", 4736, "RTPFlushBaseband_SpecialMQAudioTS: issuing special AUDIO FLUSH TS %d ID: %d rate: %d ", v5, v6, v7, v4);
  }

  return v8;
}

uint64_t RTPSetCellularAudioStallState(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2147549186;
  }

  v5 = v4;
  v6 = v4 + 27800;
  if (a2 && *(v4 + 28) == 1)
  {
    v13 = 0;
    result = AFRCGetKeyFrameTimestamp(*(v4 + 10544), &v13);
    if (v5 >= v6)
    {
      goto LABEL_20;
    }

    v8 = *(v5 + 10608);
    if (v8)
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      VCRateControlGetStatistics(v8, 10, &v14);
      if (DWORD2(v15) == 4)
      {
        v13 = v18;
      }
    }

    RTPFlushBaseband(a1, 1, v13, 1u, 0, 0, 0);
    AFRCMarkSpecialVideoFlush(*(v5 + 10544), 0, 0);
    _RTPMarkSpecialVCRCVideoFlush(v5, 0);
  }

  *(v5 + 10564) = a2;
  if (*(v5 + 28))
  {
LABEL_10:
    v9 = 0;
LABEL_18:
    CheckOutHandleDebug();
    return v9;
  }

  result = AFRCMarkSpecialAudioFlush(*(v5 + 10544), 0);
  if (v5 < v6)
  {
    _RTPMarkSpecialVCRCAudioFlush(v5, 0);
    v10 = *(v5 + 10536);
    if (v10 == 0xFFFFFFFFLL)
    {
      v12 = *(v5 + 10624);
      if (!v12)
      {
        goto LABEL_10;
      }

      v11 = VCMediaQueue_SetAudioStallBasebandFlushState(v12, a2, a1);
    }

    else
    {
      v11 = MediaQueue_SetCellularAudioStallState(v10, a2);
    }

    v9 = v11;
    goto LABEL_18;
  }

LABEL_20:
  __break(0x5519u);
  return result;
}

uint64_t RTPGetAFRCProbeSeqId(uint64_t a1, unint64_t a2, int a3, int a4, int a5, _DWORD *a6, _WORD *a7, int *a8, _BYTE *a9, int *a10)
{
  v50 = *MEMORY[0x1E69E9840];
  *a9 = 0;
  *a10 = 0;
  if (a3 < 12)
  {
    return 2147549192;
  }

  v12 = *a2;
  if ((*a2 & 0xC0) != 0x80)
  {
    return 2147549193;
  }

  result = 0;
  v17 = *(a2 + 4);
  if (a4)
  {
    v18 = 48;
  }

  else
  {
    v18 = 28;
  }

  v19 = *(a2 + 2);
  *a6 = v18 + a3;
  *a7 = bswap32(v19) >> 16;
  *a8 = bswap32(v17);
  if (a1 != 0xFFFFFFFFLL && a5 && (v12 & 0x10) != 0)
  {
    v20 = a2 + a3;
    v21 = 4 * (v12 & 0xF);
    v22 = a2 + v21;
    v23 = (a2 + v21 + 12);
    if (v23 >= v20 || v23 < a2)
    {
      goto LABEL_37;
    }

    result = VCMediaControlInfoRTPExtensionVersionIsValid(*v23 >> 6);
    if ((result & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          RTPGetAFRCProbeSeqId_cold_1();
        }
      }

      return 2147549227;
    }

    if (v22 + 13 >= v20 || v20 - (v22 + 14) < 2)
    {
      goto LABEL_37;
    }

    v24 = bswap32(*(v22 + 14)) >> 16;
    if (a3 + v21 - 12 < v24)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          RTPGetAFRCProbeSeqId_cold_2();
        }
      }

      return 2147549227;
    }

    if ((*(v22 + 13) & 8) == 0)
    {
      return 0;
    }

    v25 = (v22 + 4 * v24 + 12);
    if (v20 < v25 || v25 < a2 || v20 - v25 < 4)
    {
LABEL_37:
      __break(0x5519u);
      return result;
    }

    v26 = *v25;
    *a10 = bswap32(*v25);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      v29 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *a8;
          v31 = *a7;
          v32 = *a10;
          v36 = 136316674;
          v37 = v27;
          v38 = 2080;
          v39 = "RTPGetAFRCProbeSeqId";
          v40 = 1024;
          v41 = 4887;
          v42 = 1024;
          v43 = v30;
          v44 = 1024;
          v45 = v31;
          v46 = 1024;
          v47 = v26;
          v48 = 1024;
          v49 = v32;
          _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \t\t RTPGetAFRCProbeSeqId for VP %d/%d: net %x   id %d \n ", &v36, 0x34u);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v33 = *a8;
        v34 = *a7;
        v35 = *a10;
        v36 = 136316674;
        v37 = v27;
        v38 = 2080;
        v39 = "RTPGetAFRCProbeSeqId";
        v40 = 1024;
        v41 = 4887;
        v42 = 1024;
        v43 = v33;
        v44 = 1024;
        v45 = v34;
        v46 = 1024;
        v47 = v26;
        v48 = 1024;
        v49 = v35;
        _os_log_debug_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEBUG, " [%s] %s:%d \t\t RTPGetAFRCProbeSeqId for VP %d/%d: net %x   id %d \n ", &v36, 0x34u);
      }
    }

    result = 0;
    *a9 = 1;
  }

  return result;
}

uint64_t RTPNotifyAFRCRxEstimate(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5, double a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (a4 < 0)
  {
    __break(0x5519u);
  }

  v9 = RTPGetAFRCProbeSeqId(a1, a3, a4, a5 != 0, a2 == 1, &v14, &v13, &v12 + 1, &v11, &v12);
  if (!v9)
  {
    AFRCCalcRxEstimate(a6, a1, a2, HIDWORD(v12), v13, v14, v11, v12);
  }

  return v9;
}

uint64_t RTPInsertAFRCProbeSeqId(int *a1, unsigned int a2, int a3)
{
  v75 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a1 + 376);
  v8 = v6 + 4 * (a1[376] & 0xF) + 12;
  v9 = *(a1 + 198);
  if (v9)
  {
    v10 = v8 + VCMediaControlInfoGetSize(v9);
    v11 = (a1 + v10 + 4);
    if (v11 > v7 || a1 + 1 > v11)
    {
      goto LABEL_66;
    }

    v13 = v11 + 1;
    v14 = *a1 - v10;
    v15 = v11 < a1 || v13 > v7;
    v16 = !v15 && v7 - v11 >= v14;
    if (!v16 || v7 - (v11 + 1) < v14)
    {
      goto LABEL_66;
    }

    memmove(v13, v11, v14);
    v58 = bswap32(a2);
    VCMediaControlInfoSetInfo(*(a1 + 198), 8, &v58, 4);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      v20 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = bswap32(a1[377]);
          v22 = bswap32(*(a1 + 753));
          v23 = *a1;
          v24 = *(a1 + 1576);
          *buf = 136316930;
          v60 = v18;
          v61 = 2080;
          v62 = "RTPInsertAFRCProbeSeqId";
          v63 = 1024;
          v64 = 4955;
          v65 = 1024;
          v66 = v21;
          v67 = 1024;
          v68 = HIWORD(v22);
          v69 = 1024;
          v70 = v23;
          v71 = 1024;
          v72 = v24;
          v73 = 1024;
          v74 = a2;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d INSERT: ^^^^^^ MP %d/%d/%d P: %d  PROBE_id: %d", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v50 = bswap32(a1[377]);
        v51 = bswap32(*(a1 + 753));
        v52 = *a1;
        v53 = *(a1 + 1576);
        *buf = 136316930;
        v60 = v18;
        v61 = 2080;
        v62 = "RTPInsertAFRCProbeSeqId";
        v63 = 1024;
        v64 = 4955;
        v65 = 1024;
        v66 = v50;
        v67 = 1024;
        v68 = HIWORD(v51);
        v69 = 1024;
        v70 = v52;
        v71 = 1024;
        v72 = v53;
        v73 = 1024;
        v74 = a2;
        _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d INSERT: ^^^^^^ MP %d/%d/%d P: %d  PROBE_id: %d", buf, 0x3Au);
      }
    }

    v48 = 4;
    if (a3)
    {
LABEL_60:
      *(a1 + 3) = bswap32(v48 + (bswap32(*(a1 + 3)) >> 16)) >> 16;
    }
  }

  else
  {
    Version = VCMediaControlInfoGetVersion(0);
    v26 = *(a1 + 1620);
    *(a1 + 752) |= 0x10u;
    v27 = (a1 + 1);
    v28 = a1 + v6 + 4;
    if (v28 > v7 || v27 > v28 || v7 - v28 < 0xC || ((v29 = Version, *v28 = *v7, *(v28 + 8) = *(v7 + 8), v30 = *a1 - v8, v31 = (v27 + v8), v32 = v31 + 2, v27 <= (v31 + 2)) ? (v33 = v32 > v7) : (v33 = 1), !v33 ? (v34 = v31 > v7) : (v34 = 1), !v34 ? (v35 = v27 > v31) : (v35 = 1), !v35 ? (v36 = v7 - v31 >= v30) : (v36 = 0), v36 ? (v37 = v7 - (v31 + 2) >= v30) : (v37 = 0), !v37 || (memmove(v32, (v27 + v8), v30), v31 >= v7) || (*v31 = v26 & 0xF | (v29 << 6), v38 = (v27 + (v8 | 1)), v38 >= v7) || v38 < v27 || (*v38 = v26 & 0xF0 | 8, v39 = (v27 + (v8 | 2)), v7 < v39) || v27 > v39 || v7 - v39 < 2 || (*v39 = 256, v31 < a1) || (v40 = v31 + 1, (v31 + 1) > v7) || v7 - v40 < 4))
    {
LABEL_66:
      __break(0x5519u);
    }

    *v40 = bswap32(a2);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v41 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x1E6986650];
      v43 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = bswap32(a1[377]);
          v45 = bswap32(*(a1 + 753));
          v46 = *a1;
          v47 = *(a1 + 1576);
          *buf = 136316930;
          v60 = v41;
          v61 = 2080;
          v62 = "RTPInsertAFRCProbeSeqId";
          v63 = 1024;
          v64 = 5005;
          v65 = 1024;
          v66 = v44;
          v67 = 1024;
          v68 = HIWORD(v45);
          v69 = 1024;
          v70 = v46;
          v71 = 1024;
          v72 = v47;
          v73 = 1024;
          v74 = a2;
          _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d INSERT: ^^^^^^ MP %d/%d/%d P: %d  PROBE_id: %d ", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        v54 = bswap32(a1[377]);
        v55 = bswap32(*(a1 + 753));
        v56 = *a1;
        v57 = *(a1 + 1576);
        *buf = 136316930;
        v60 = v41;
        v61 = 2080;
        v62 = "RTPInsertAFRCProbeSeqId";
        v63 = 1024;
        v64 = 5005;
        v65 = 1024;
        v66 = v54;
        v67 = 1024;
        v68 = HIWORD(v55);
        v69 = 1024;
        v70 = v56;
        v71 = 1024;
        v72 = v57;
        v73 = 1024;
        v74 = a2;
        _os_log_debug_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEBUG, " [%s] %s:%d INSERT: ^^^^^^ MP %d/%d/%d P: %d  PROBE_id: %d ", buf, 0x3Au);
      }
    }

    v48 = 8;
    if (a3)
    {
      goto LABEL_60;
    }
  }

  *a1 += v48;
  return 1;
}

uint64_t RTPSetWRMMetricConfig(uint64_t a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = 2147549185;
  if (a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *a2;
        v12 = 136315906;
        v13 = v4;
        v14 = 2080;
        v15 = "RTPSetWRMMetricConfig";
        v16 = 1024;
        v17 = 5038;
        v18 = 1024;
        v19 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WRM: Set metric reportInterval=%d", &v12, 0x22u);
      }
    }

    v7 = CheckInHandleDebug();
    if (v7)
    {
      v8 = v7;
      v9 = *(v7 + 10592);
      if (v9)
      {
        pthread_mutex_lock(v9 + 2);
        v10 = *(v8 + 10592);
        *(v10 + 16) = *a2;
        pthread_mutex_unlock((v10 + 128));
      }

      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2147549186;
    }
  }

  return v2;
}

uint64_t RTPSetWRMMetricsCallback(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147549186;
  }

  WRMSetReportingCallback(*(v5 + 10592), a2, a3);
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetWRMCallId(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  WRMSetCallId(*(v3 + 10592), a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPUpdateWRMInfo(uint64_t a1, int a2, int a3, int a4)
{
  v7 = CheckInHandleDebug();
  if (!v7)
  {
    return 2147549186;
  }

  v8 = v7;
  *(*(v7 + 10592) + 44) = *(*(v7 + 10592) + 20);
  v9 = Middle32ToMilliSeconds(a2);
  v10 = *(v8 + 10592);
  v10[12] = v9;
  v10[13] = a3;
  v10[22] = a4;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPSetSendTimestampRate(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  *(v3 + 316) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPProcessMediaControlInfo(uint64_t a1, void *a2, int a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2147549186;
  }

  v7 = v5;
  v29 = 0;
  VCMediaControlInfoGetInfo(a2, 0xB, &v29 + 4, 4, 0);
  VCMediaControlInfoGetInfo(a2, 0xC, &v29, 4, 0);
  v8 = 8 * v29;
  LODWORD(v29) = 8 * v29;
  if (!a3)
  {
    AFRCProcessVideoReceiveMetric(*(v7 + 10544), SHIDWORD(v29), v8);
    goto LABEL_10;
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  AFRCGenerateFeedbackWithControlInfo(a2, &v26);
  if (*(v7 + 10544) == 0xFFFFFFFFLL)
  {
LABEL_10:
    RTPProcessMediaControlInfo_cold_1();
    return 0;
  }

  FECFeedbackVersion = VCMediaControlInfoGetFECFeedbackVersion(a2);
  result = VCMediaControlInfo_IsLossStatsEnabled(FECFeedbackVersion);
  if (!*(v7 + 10520))
  {
    *(v7 + 10520) = 1;
    v10 = DWORD2(v27);
    *(v7 + 10524) = DWORD2(v27);
    v11 = 0;
    if ((result & 1) == 0)
    {
      *(v7 + 10532) = HIDWORD(v27);
    }

LABEL_24:
    v25 = -1.0;
    v14 = -1.0;
    if (result)
    {
      v14 = 0.0;
    }

    v24 = v14;
    v22 = -1;
    v23 = -1;
    if (v26.i32[1])
    {
      v15 = &v24;
      if (result)
      {
        v15 = 0;
      }

      MediaQueue_FindPacketInTxHistory(*(v7 + 10536), v26.u16[0], v10, 0, v27, &v23, &v22, *(v7 + 10532), v15, &v25, 0, 6u);
    }

    v21 = 0;
    VCMediaControlInfoGetInfo(a2, 0x10, &v21, 4, 0);
    v20 = 0.0;
    VCMediaControlInfoGetInfo(a2, 0xA, &v20, 8, 0);
    v19 = 0;
    VCMediaControlInfoGetInfo(a2, 0x11, &v19, 4, 0);
    if (v21)
    {
      v16 = v11;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v31 = v17;
          v32 = 2080;
          v33 = "RTPProcessMediaControlInfo";
          v34 = 1024;
          v35 = 5203;
          v36 = 1024;
          v37 = v11;
          v38 = 1024;
          v39 = v21;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skip AFRCProcessFeedbackPacket, due to isFeedbackOOO = %d, receivedBytes = %d,", buf, 0x28u);
        }
      }
    }

    else
    {
      AFRCProcessFeedbackPacket(v20, v25, v24, *(v7 + 10544), &v26, v19, SHIDWORD(v29), v29, v23, v22);
    }

    goto LABEL_10;
  }

  if (v7 < v7 + 27800)
  {
    v10 = *(v7 + 10524);
    v11 = ((DWORD2(v27) - v10) >> 11) & 1;
    if (((DWORD2(v27) - v10) & 0x800) == 0)
    {
      if ((*(v7 + 10524) & 0xFFFu) <= WORD4(v27))
      {
        v12 = *(v7 + 10524);
      }

      else
      {
        v12 = v10 + 4096;
      }

      v10 = v12 & 0xFFFFF000 | WORD4(v27);
      *(v7 + 10524) = v10;
    }

    DWORD2(v27) = v10;
    if ((result & 1) == 0)
    {
      v13 = *(v7 + 10532);
      if (((HIDWORD(v27) - v13) & 0x800) == 0)
      {
        if ((*(v7 + 10532) & 0xFFFu) > WORD6(v27))
        {
          v13 += 4096;
        }

        v13 = v13 & 0xFFFFF000 | WORD6(v27);
        *(v7 + 10532) = v13;
      }

      HIDWORD(v27) = v13;
    }

    goto LABEL_24;
  }

  __break(0x5519u);
  return result;
}

uint64_t RTPRegisterPacketCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1 == 0xFFFFFFFFLL)
  {
    v8 = 2147549185;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPRegisterPacketCallback_cold_4();
      }
    }

    return v8;
  }

  v6 = CheckInHandleDebug();
  if (!v6)
  {
    v8 = 2147549186;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPRegisterPacketCallback_cold_3();
        return 2147549186;
      }
    }

    return v8;
  }

  v7 = v6;
  if (*(v6 + 10688))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPRegisterPacketCallback_cold_1();
      }
    }

    CheckOutHandleDebug();
    return 2147549233;
  }

  result = _Block_copy(a3);
  *(v7 + 10688) = result;
  if (!result)
  {
    RTPRegisterPacketCallback_cold_2();
    v8 = v17;
    goto LABEL_28;
  }

  *(v7 + 10680) = a2;
  v10 = *(v7 + 4);
  if (v10 <= 0x3FF)
  {
    v11 = v7 + 10696;
    *(v7 + 10792) = 0u;
    *(v7 + 10808) = 0u;
    *(v7 + 10760) = 0u;
    *(v7 + 10776) = 0u;
    *(v7 + 10728) = 0u;
    *(v7 + 10744) = 0u;
    *(v7 + 10696) = 0u;
    *(v7 + 10712) = 0u;
    result = __darwin_check_fd_set_overflow(v10, (v7 + 10696), 0);
    if (result)
    {
      v12 = (v11 + ((v10 >> 3) & 0x1FFFFFFC));
      if (v12 >= v7 + 10824 || v12 < v11)
      {
        goto LABEL_33;
      }

      *v12 |= 1 << v10;
    }

    v8 = 0;
    *(v7 + 10672) = VTP_RegisterPacketCallback((v7 + 10696), a1, &__block_literal_global_21);
LABEL_28:
    CheckOutHandleDebug();
    return v8;
  }

  if (!*(v7 + 11288))
  {
    v8 = 2147549226;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v16 = *(v7 + 4);
        v17 = 136316162;
        v18 = v14;
        v19 = 2080;
        v20 = "RTPRegisterPacketCallback";
        v21 = 1024;
        v22 = 5255;
        v23 = 2048;
        v24 = a1;
        v25 = 1024;
        v26 = v16;
        _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d RTPHandle[%p], Socket[%d] is invalid", &v17, 0x2Cu);
        v8 = 2147549226;
      }
    }

    goto LABEL_28;
  }

  if (v7 < v7 + 27800)
  {
    v8 = _RTPEnsureTransportStreamsActivated(v7);
    goto LABEL_28;
  }

LABEL_33:
  __break(0x5519u);
  return result;
}

unint64_t RTPUnregisterPacketCallback()
{
  result = CheckInHandleDebug();
  if (!result)
  {
    return 2147549186;
  }

  if (!*(result + 10688))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        RTPUnregisterPacketCallback_cold_1();
      }
    }

    goto LABEL_9;
  }

  if (result < result + 27800)
  {
    _RTPUnregisterPacketCallback(result);
LABEL_9:
    CheckOutHandleDebug();
    return 0;
  }

  __break(0x5519u);
  return result;
}

uint64_t RTPSetTimestampRateScale(uint64_t a1, unsigned int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  v4 = v3;
  if (a2 <= 7)
  {
    v5 = dword_1DBD47BA8[a2];
    v6 = qword_1DBD47BC8[a2];
    *(v3 + 296) = dword_1DBD47B88[a2];
    *(v3 + 300) = v5;
    *(v3 + 27792) = v6;
  }

  *(v3 + 256) = *(v3 + 248);
  *(v3 + 240) = *(v3 + 232);
  *(v3 + 288) = *(v3 + 280);
  *(v3 + 272) = *(v3 + 264);
  if (*(v3 + 228) != a2 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v4[74];
      v10 = v4[75];
      v12 = 136316418;
      v13 = v7;
      v14 = 2080;
      v15 = "RTPSetTimestampRateScale";
      v16 = 1024;
      v17 = 5359;
      v18 = 2048;
      v19 = v4;
      v20 = 1024;
      v21 = v9;
      v22 = 1024;
      v23 = v10;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p] Updating the network sample rate shift factors. send[%d] receive[%d]", &v12, 0x32u);
    }
  }

  v4[57] = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPCopyPreferredSendQueue(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = 2147549185;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      if (*(v4 + 11288))
      {
        CMBaseObject = VCPacketFilterGetCMBaseObject(*(v4 + 11288), v5);
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v7)
        {
          v2 = v7(CMBaseObject, @"PreferredSendQueue", *MEMORY[0x1E695E480], a2);
          if ((v2 & 0x80000000) == 0)
          {
LABEL_18:
            CheckOutHandleDebug();
            return v2;
          }
        }

        else
        {
          v2 = 4294954514;
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_18;
        }

        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v13 = 136315906;
        v14 = v8;
        v15 = 2080;
        v16 = "RTPCopyPreferredSendQueue";
        v17 = 1024;
        v18 = 5404;
        v19 = 1024;
        v20 = v2;
        v10 = " [%s] %s:%d Getting kVCTransportStreamProperty_PreferredSendQueue failed - %x";
      }

      else
      {
        if (!VTP_CopyPreferredSendQueue(*(v4 + 4), a2))
        {
          v2 = 0;
          goto LABEL_18;
        }

        v2 = *__error() | 0xC0010000;
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_18;
        }

        v11 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        v13 = 136315906;
        v14 = v11;
        v15 = 2080;
        v16 = "RTPCopyPreferredSendQueue";
        v17 = 1024;
        v18 = 5412;
        v19 = 1024;
        v20 = v2;
        v10 = " [%s] %s:%d VTP_GetPreferredSendQueue failed - %x";
      }

      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v10, &v13, 0x22u);
      goto LABEL_18;
    }

    return 2147549186;
  }

  return v2;
}

uint64_t RTPSetTransportStreams(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  BOOLean[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    RTPSetTransportStreams_cold_5();
    return LODWORD(BOOLean[0]);
  }

  if (!a3)
  {
    RTPSetTransportStreams_cold_4();
    return LODWORD(BOOLean[0]);
  }

  v9 = CheckInHandleDebug();
  if (!v9)
  {
    RTPSetTransportStreams_cold_3();
    return LODWORD(BOOLean[0]);
  }

  v10 = v9;
  if (*(v9 + 11285) == 1)
  {
    RTPSetTransportStreams_cold_2();
    v4 = LODWORD(BOOLean[0]);
    goto LABEL_29;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 0x40000000;
  v27[2] = __RTPSetTransportStreams_block_invoke;
  v27[3] = &__block_descriptor_tmp_23;
  v27[4] = a1;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v11)
  {
    v12 = v11(a2, v27);
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 0x40000000;
    v26[2] = __RTPSetTransportStreams_block_invoke_2;
    v26[3] = &__block_descriptor_tmp_24_0;
    v26[4] = a1;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v13)
    {
      v12 = v13(a3, v26);
      if ((v12 & 0x80000000) == 0)
      {
        v14 = (v10 + 27800);
        if (*(v10 + 11320))
        {
          v15 = *MEMORY[0x1E695E480];
          goto LABEL_14;
        }

        if (v10 >= v14)
        {
          goto LABEL_39;
        }

        v15 = *MEMORY[0x1E695E480];
        v12 = VCPacketFilterRTCPCreate(*MEMORY[0x1E695E480], (v10 + 11320));
        if ((v12 & 0x80000000) == 0)
        {
LABEL_14:
          if (v10 < v14)
          {
            v16 = CFNumberCreate(v15, kCFNumberIntType, (v10 + 200));
            if (!v16)
            {
              v4 = 2147549187;
              goto LABEL_29;
            }

            v14 = v16;
            CMBaseObject = VCPacketFilterGetCMBaseObject(*(v10 + 11320), v17);
            v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v19)
            {
              v4 = v19(CMBaseObject, @"RTCPLocalSSRC", v14);
              if ((v4 & 0x80000000) != 0)
              {
                goto LABEL_28;
              }

              if (!a4)
              {
LABEL_21:
                _RTPSetTransportStreamReceiveHopLimitEnabled(a2, *(v10 + 188) != 0);
                BOOLean[0] = 0;
                v22 = VCPacketFilterGetCMBaseObject(a2, v21);
                v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v23 && (v23(v22, @"IsIPv6", v15, BOOLean) & 0x80000000) == 0)
                {
                  *(v10 + 12) = CFBooleanGetValue(BOOLean[0]);
LABEL_24:
                  if (BOOLean[0])
                  {
                    CFRelease(BOOLean[0]);
                  }

                  _VCBoundsSafety_ReleaseAssignAndRetain((v10 + 11288), a2);
                  _VCBoundsSafety_ReleaseAssignAndRetain((v10 + 11296), a3);
                  _VCBoundsSafety_ReleaseAssignAndRetain((v10 + 11304), a4);
                  goto LABEL_28;
                }

LABEL_31:
                RTPSetTransportStreams_cold_1();
                goto LABEL_24;
              }

              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 0x40000000;
              v25[2] = __RTPSetTransportStreams_block_invoke_3;
              v25[3] = &__block_descriptor_tmp_25;
              v25[4] = a1;
              v20 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (v20)
              {
                v4 = v20(a4, v25);
                if ((v4 & 0x80000000) == 0)
                {
                  goto LABEL_21;
                }

LABEL_28:
                CFRelease(v14);
                goto LABEL_29;
              }
            }

            v4 = 4294954514;
            goto LABEL_28;
          }

LABEL_39:
          __break(0x5519u);
          goto LABEL_31;
        }
      }

LABEL_38:
      v4 = v12;
      goto LABEL_29;
    }
  }

  v4 = 4294954514;
LABEL_29:
  CheckOutHandleDebug();
  return v4;
}

void _RTPTransportStreamRTPAndBBNoteCallback(uint64_t a1, uint64_t a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (!a2)
  {
LABEL_30:
    _RTPTransportStreamRTPAndBBNoteCallback_cold_3();
    return;
  }

  v4 = a2;
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    v7 = v5 + 27800;
    while (1)
    {
      v8 = *(v6 + 10656);
      if (!v8)
      {
        break;
      }

      v9 = VCMemoryPool_Alloc(*(v6 + 10656));
      if (v9)
      {
        v10 = v9 >= &v9[*(v8 + 16)];
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        goto LABEL_29;
      }

      v18 = v9;
      if (!v9)
      {
        goto LABEL_28;
      }

      if (a3)
      {
        if (v6 >= v7)
        {
          goto LABEL_29;
        }

        v11 = _RTPTransport_ParseBasebandNotification(v6, v4, v9);
      }

      else
      {
        if (v6 >= v7)
        {
          goto LABEL_29;
        }

        ++*(v6 + 336);
        v11 = _RTPTransport_ParseMediaPacket(v6, v4, v9);
      }

      v12 = v11;
      if (v11 < 0)
      {
        if (v11 != -2147418057 && v11 != -2145255367 && VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v20 = v14;
            v21 = 2080;
            v22 = "_RTPTransportStreamRTPAndBBNoteCallback";
            v23 = 1024;
            v24 = 5800;
            v25 = 1024;
            v26 = v12;
            _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d RTP error[%x]", buf, 0x22u);
          }
        }
      }

      else
      {
        v13 = *(v6 + 10688);
        if (v13)
        {
          ++*(v6 + 344);
          (*(v13 + 16))(v13, *(v6 + 10680), v18);
        }

        else
        {
          v16 = v18;
          v17 = v18 + 6056;
          *(v18 + 757) = 0;
          **(v6 + 11352) = v16;
          *(v6 + 11352) = v17;
          v18 = 0;
        }
      }

      _RTPReleaseRTPPacketInternal(v6, &v18);
      v4 = *(v4 + 160);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    v18 = 0;
LABEL_28:
    if (_RTPTransportStreamRTPAndBBNoteCallback_cold_1(v6 < v7))
    {
LABEL_25:
      _RTPReleaseRTPPacketInternal(v6, &v18);
      CheckOutHandleDebug();
      return;
    }

LABEL_29:
    __break(0x5519u);
    goto LABEL_30;
  }

  _RTPTransportStreamRTPAndBBNoteCallback_cold_2();
}

uint64_t RTPClearTransportStreams()
{
  v0 = CheckInHandleDebug();
  if (v0)
  {
    v1 = _RTPClearTransportStreamsInternal(v0);
    CheckOutHandleDebug();
    return v1;
  }

  else
  {
    RTPClearTransportStreams_cold_1();
    return v3;
  }
}

uint64_t RTPGetReceiveStatusWithRunLoop(uint64_t a1, unsigned int *a2, int a3, uint64_t a4)
{
  v47[1] = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46[7] = v4;
  v46[8] = v4;
  v46[5] = v4;
  v46[6] = v4;
  v46[3] = v4;
  v46[4] = v4;
  v46[1] = v4;
  v46[2] = v4;
  v46[0] = v4;
  if (a1)
  {
    if (a2)
    {
      if (a3 <= 0)
      {
        RTPGetReceiveStatusWithRunLoop_cold_3();
      }

      else
      {
        if (a4)
        {
          v6 = a1;
          v7 = 0;
          v8 = a3;
          v9 = 4 * a3;
          v10 = a1;
          v11 = v46;
          do
          {
            v12 = CheckInHandleDebug();
            if (v11 >= v47 || v11 < v46)
            {
              goto LABEL_62;
            }

            *v11 = v12;
            if (!v12)
            {
              a2[v7 / 4] = 0;
            }

            v7 += 4;
            ++v11;
            v10 += 8;
          }

          while (v9 != v7);
          v45 = 0xAAAAAAAAAAAAAAAALL;
          *&v13 = 0xAAAAAAAAAAAAAAAALL;
          *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
          __src[2] = v13;
          __src[3] = v13;
          __src[0] = v13;
          __src[1] = v13;
          v42 = 0;
          if (a3 < 19)
          {
            v14 = _RTPSetReceiveStatusFlags(v46, a2, a3, __src, &v42);
            if ((v14 & 0x80000000) != 0)
            {
              v15 = v14;
            }

            else if (v42 == 1)
            {
              memcpy(a2, __src, v9);
              v15 = 0;
            }

            else
            {
              Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
              if (Mutable)
              {
                v17 = Mutable;
                for (i = 0; i != v8; ++i)
                {
                  v19 = *(v46 + i);
                  if (v19)
                  {
                    v20 = a2[i];
                    v21 = _RTPEnsureTransportStreamsActivated(*(v46 + i));
                    if ((v21 & 0x80000000) != 0)
                    {
                      goto LABEL_60;
                    }

                    if ((v20 & 0x10) != 0)
                    {
                      v22 = v19[1411];
                      v39 = v20;
                      if (v22)
                      {
                        v23 = a4;
                        v24 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                        if (!v24)
                        {
                          goto LABEL_53;
                        }

                        v21 = v24(a4, v22);
                        if ((v21 & 0x80000000) != 0)
                        {
                          goto LABEL_60;
                        }

                        CFArrayAppendValue(v17, v19[1411]);
                        LOBYTE(v20) = v39;
                      }

                      v25 = v19[1413];
                      if (v25)
                      {
                        v23 = a4;
                        v26 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                        if (!v26)
                        {
                          goto LABEL_53;
                        }

                        v21 = v26(a4, v25);
                        if ((v21 & 0x80000000) != 0)
                        {
LABEL_60:
                          v15 = v21;
                          v29 = a4;
                          goto LABEL_40;
                        }

                        CFArrayAppendValue(v17, v19[1413]);
                        LOBYTE(v20) = v39;
                      }
                    }

                    if ((v20 & 0x20) != 0)
                    {
                      v27 = v19[1412];
                      if (v27)
                      {
                        v23 = a4;
                        v28 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                        if (!v28)
                        {
LABEL_53:
                          v15 = 4294954514;
                          v29 = v23;
                          goto LABEL_40;
                        }

                        v21 = v28(a4, v27);
                        if ((v21 & 0x80000000) != 0)
                        {
                          goto LABEL_60;
                        }

                        CFArrayAppendValue(v17, v19[1412]);
                      }
                    }
                  }
                }

                v29 = a4;
                v30 = *(*(CMBaseObjectGetVTable() + 16) + 24);
                if (v30)
                {
                  v31 = v30(a4, 0.0);
                  if ((v31 & 0x80000000) == 0)
                  {
                    v31 = _RTPSetReceiveStatusFlags(v46, a2, a3, a2, 0);
                  }

                  v15 = v31;
                }

                else
                {
                  v15 = 4294954514;
                }

LABEL_40:
                Count = CFArrayGetCount(v17);
                if (Count >= 1)
                {
                  v33 = 0;
                  v34 = Count & 0x7FFFFFFF;
                  do
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v17, v33);
                    v36 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                    if (v36)
                    {
                      v36(v29, ValueAtIndex);
                    }

                    ++v33;
                  }

                  while (v34 != v33);
                }

                CFRelease(v17);
              }

              else
              {
                RTPGetReceiveStatusWithRunLoop_cold_1();
                v15 = v43;
              }
            }

            for (j = v46; j < v47 && j >= v46; ++j)
            {
              if (*j)
              {
                CheckOutHandleDebug();
              }

              v6 += 8;
              if (!--v8)
              {
                return v15;
              }
            }
          }

LABEL_62:
          __break(0x5519u);
        }

        RTPGetReceiveStatusWithRunLoop_cold_2();
      }
    }

    else
    {
      RTPGetReceiveStatusWithRunLoop_cold_4();
    }
  }

  else
  {
    RTPGetReceiveStatusWithRunLoop_cold_5();
  }

  return v43;
}

uint64_t _RTPSetReceiveStatusFlags(void *a1, unsigned int *a2, int a3, unsigned int *a4, _BYTE *a5)
{
  if (!a1)
  {
    _RTPSetReceiveStatusFlags_cold_4();
    return v10;
  }

  if (!a2)
  {
    _RTPSetReceiveStatusFlags_cold_3();
    return v10;
  }

  if (!a4)
  {
    _RTPSetReceiveStatusFlags_cold_2();
    return v10;
  }

  if (a3 < 1)
  {
    _RTPSetReceiveStatusFlags_cold_1();
    return v10;
  }

  v5 = 0;
  v6 = a3;
  do
  {
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_18;
    }

    v8 = *a2;
    *a4 = *a2;
    if ((v8 & 0x10) != 0 && v7[1411])
    {
      if (!v7[1418])
      {
        v8 &= ~0x10u;
        *a4 = v8;
        if ((*a2 & 0x20) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_12;
      }

      v5 = 1;
    }

    if ((v8 & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_12:
    if (v7[1412])
    {
      if (v7[1420])
      {
        v5 = 1;
      }

      else
      {
        *a4 = v8 & 0xFFFFFFDF;
      }
    }

LABEL_18:
    ++a4;
    ++a2;
    ++a1;
    --v6;
  }

  while (v6);
  result = 0;
  if (a5)
  {
    *a5 = v5 & 1;
  }

  return result;
}

double RTPUnpackDouble(unsigned int a1)
{
  result = vcvtd_n_f64_u32(a1, 0xDuLL);
  if (a1 == 0xFFFF)
  {
    return 0.0;
  }

  return result;
}

uint64_t RTPSetConnectionManager(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    RTPSetConnectionManager_cold_2();
    return v5;
  }

  v3 = CheckInHandleDebug();
  if (!v3)
  {
    RTPSetConnectionManager_cold_1();
    return v5;
  }

  _VCBoundsSafety_ReleaseAssignAndRetain((v3 + 11376), a2);
  CheckOutHandleDebug();
  return 0;
}

unint64_t RTPIgnorePacketLossAccounting(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  result = CheckInHandleDebug();
  if (!result)
  {
    return 2147549186;
  }

  v4 = result;
  if (*(result + 11284) == a2)
  {
LABEL_8:
    CheckOutHandleDebug();
    return 0;
  }

  if (result < result + 27800)
  {
    RTPReset(result, *(result + 4832));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136316162;
        v8 = v5;
        v9 = 2080;
        v10 = "RTPIgnorePacketLossAccounting";
        v11 = 1024;
        v12 = 6066;
        v13 = 2048;
        v14 = v4;
        v15 = 1024;
        v16 = a2;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting RTP(%p) ignorePacketLossAccounting = %d", &v7, 0x2Cu);
      }
    }

    *(v4 + 11284) = a2;
    goto LABEL_8;
  }

  __break(0x5519u);
  return result;
}

uint64_t RTPSetVCSecurityKeyHolder(uint64_t a1, const void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2147549186;
  }

  _VCBoundsSafety_ReleaseAssignAndRetain((v3 + 10632), a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t RTPGetFramingOverhead(uint64_t a1, void *a2)
{
  v2 = 2147549185;
  if (a2)
  {
    v4 = CheckInHandleDebug();
    if (v4)
    {
      v5 = *(v4 + 16);
      CheckOutHandleDebug();
      v2 = 0;
      v6 = 16;
      if ((v5 & 0x10) == 0)
      {
        v6 = 12;
      }

      *a2 = v6 + 4 * (v5 & 0xF);
    }

    else
    {
      return 2147549186;
    }
  }

  return v2;
}

void _RTPTransportMediaPacketHistoryCleanUp(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 11392 + 16 * a2;
  if (v2)
  {
    v4 = a1 + 27776;
    if (a1 + 11392 > v2 || v2 + 16 > v4)
    {
      goto LABEL_17;
    }

    v6 = *(v2 + 8);
    if (v6)
    {
      if (v2 >= v4)
      {
        goto LABEL_17;
      }

      CFRelease(v6);
      *(v2 + 8) = 0;
    }

    v7 = *v2;
    if (*v2)
    {
      v8 = v7[5];
      if (v8)
      {
        CFAllocatorDeallocate(*(a1 + 11000), v8);
      }

      CFAllocatorDeallocate(*(a1 + 10992), v7);
    }

    if (v4 >= v2 && v4 - v2 >= 0x10)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      return;
    }

LABEL_17:
    __break(0x5519u);
  }
}

uint64_t _RTPTransportAddMediaPacketHistory(uint64_t a1, _WORD **a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = **a2 & 0x3FF;
  v17[0] = 0;
  v17[1] = *(v3 + 8);
  v5 = a1 + 11392;
  v6 = (a1 + 27776);
  v7 = (a1 + 11392 + 16 * v4);
  if (v7)
  {
    if (v7 >= v6 || v7 < v5)
    {
LABEL_24:
      __break(0x5519u);
    }

    v9 = *v7;
    if (*v7)
    {
      v10 = *(v9 + 4);
      if (v10)
      {
        if (v7[1])
        {
          if (v7 + 2 > v6)
          {
            goto LABEL_24;
          }

          WORD2(v17[0]) = *v9;
          LODWORD(v17[0]) = v10;
          VCNACKConsumer_UpdatePacketCacheStatus(*(a1 + 27776), v17);
          _RTPTransportMediaPacketHistoryCleanUp(a1, v4);
        }
      }
    }
  }

  if (v6 < v7 || v5 > v7 || (v6 - v7) < 0x10)
  {
    goto LABEL_24;
  }

  *v7 = *a2;
  if (v7 + 2 > v6)
  {
    goto LABEL_24;
  }

  v14 = v7[1];
  if (v14)
  {
    CFRetain(v14);
  }

  v15 = *a2;
  WORD2(v17[0]) = **a2;
  LODWORD(v17[0]) = *(v15 + 1);
  return VCNACKConsumer_UpdatePacketCacheStatus(*v6, v17);
}

uint64_t _RTPTransport_ParseBasebandNotification(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  *a3 = 1;
  v6 = a3 + 2;
  v19 = 0;
  lengthAtOffsetOut = 0;
  result = CMBlockBufferGetDataPointer(*a2, 0, &lengthAtOffsetOut, 0, &v19);
  if (result)
  {
    v8 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _RTPTransport_ParseBasebandNotification_cold_1();
      }
    }

    if (v8 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }

    return v9 | (v8 << 31) | 0x50010000u;
  }

  if ((lengthAtOffsetOut & 0x80000000) == 0 && lengthAtOffsetOut <= lengthAtOffsetOut && v6 < a3 + 1514)
  {
    if (!VCBasebandNotificationParser_ParseNotification(v19, lengthAtOffsetOut, v6, *(a2 + 128)) || !*v6)
    {
      v10 = 2147549191;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _RTPTransport_ParseBasebandNotification_cold_4();
        }
      }

      return v10;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *v6;
          *buf = 136315906;
          v22 = v12;
          v23 = 2080;
          v24 = "_RTPTransport_ParseBasebandNotification";
          v25 = 1024;
          v26 = 2362;
          v27 = 1024;
          v28 = v15;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received baseband notification with type %d", buf, 0x22u);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        _RTPTransport_ParseBasebandNotification_cold_2();
      }
    }

    if (*v6 == 3 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = *v6;
        *buf = 136315906;
        v22 = v16;
        v23 = 2080;
        v24 = "_RTPTransport_ParseBasebandNotification";
        v25 = 1024;
        v26 = 2364;
        v27 = 1024;
        v28 = v18;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received codec rate mode change request with suggested bitrate %d", buf, 0x22u);
      }
    }

    result = *(a1 + 10544);
    if (result == 0xFFFFFFFFLL)
    {
      v10 = 0;
LABEL_38:
      VCRateControlProcessBasebandNotification(*(a1 + 10616), v6);
      return v10;
    }

    if (!v19 || lengthAtOffsetOut)
    {
      v10 = AFRCProcessBasebandNotification(result);
      if ((v10 & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          _RTPTransport_ParseBasebandNotification_cold_3();
        }
      }

      goto LABEL_38;
    }
  }

  __break(0x5519u);
  return result;
}

double Format_Float(uint64_t a1, int a2, int a3)
{
  *a1 = a3;
  *(a1 + 8) = xmmword_1DBD453C0;
  *(a1 + 24) = 4;
  *(a1 + 28) = a2;
  *&result = 32;
  *(a1 + 32) = 32;
  return result;
}

double Format_Short(uint64_t a1, int a2, int a3)
{
  *a1 = a3;
  *(a1 + 8) = 0x2C6C70636DLL;
  *(a1 + 16) = 2 * a2;
  *(a1 + 20) = 1;
  *(a1 + 24) = 2 * a2;
  *(a1 + 28) = a2;
  *&result = 16;
  *(a1 + 32) = 16;
  return result;
}

void FileUtil_PrintBasicDesc(uint64_t a1, uint64_t *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v5 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315906;
      v19 = v6;
      v20 = 2080;
      v21 = "FileUtil_PrintBasicDesc";
      v22 = 1024;
      v23 = 441;
      v24 = 2080;
      v25 = a1;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d %s mSampleRate : mFormatID : mFormatFlags : mBytesPerPacket : mFramesPerPacket : mBytesPerFrame : mChannelsPerFrame : mBitsPerChannel :", &v18, 0x26u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a2;
      v11 = FourccToCStr(*(a2 + 2));
      v12 = *(a2 + 3);
      v13 = *(a2 + 4);
      v14 = *(a2 + 5);
      v15 = *(a2 + 6);
      v16 = *(a2 + 7);
      v17 = *(a2 + 8);
      v18 = 136317954;
      v19 = v8;
      v20 = 2080;
      v21 = "FileUtil_PrintBasicDesc";
      v22 = 1024;
      v23 = 451;
      v24 = 2080;
      v25 = a1;
      v26 = 2048;
      v27 = v10;
      v28 = 2080;
      v29 = v11;
      v30 = 1024;
      v31 = v12;
      v32 = 1024;
      v33 = v13;
      v34 = 1024;
      v35 = v14;
      v36 = 1024;
      v37 = v15;
      v38 = 1024;
      v39 = v16;
      v40 = 1024;
      v41 = v17;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d %s %8.0f    : %7s   :  0x%08x  : %8u        : %9u        : %8u       : %9u         : %9u       :", &v18, 0x5Eu);
    }
  }
}

void SoundDec_PrepareAudioConverter()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = VCFeatureFlagManager_UseOutOfProcessAudioDecoding();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v0)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315650;
        v7 = v2;
        v8 = 2080;
        v9 = "SoundDec_PrepareAudioConverter";
        v10 = 1024;
        v11 = 636;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d Calling AudioConverterPrepare()", &v6, 0x1Cu);
      }
    }

    AudioConverterPrepare();
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = v4;
      v8 = 2080;
      v9 = "SoundDec_PrepareAudioConverter";
      v10 = 1024;
      v11 = 639;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d UseOutOfProcessAudioDecoding is OFF; Not calling AudioConverterPrepare()", &v6, 0x1Cu);
    }
  }
}

CFStringRef VCSoundDec_CopyDescription(const __CFAllocator *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v14 = 0u;
    v15 = 0u;
    *__str = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    *v8 = 0u;
    v9 = 0u;
    v4 = *(a2 + 88);
    v5 = FormatToCStr(a2, __str, 0x40uLL);
    v6 = FormatToCStr(a2 + 40, v8, 0x40uLL);
    return CFStringCreateWithFormat(a1, 0, @"{ <%s: %p> converter=%p inputFormat=%s outputFormat=%s }", "VCSoundDec", a2, v4, v5, v6);
  }

  else
  {

    return CFRetain(@"null");
  }
}

uint64_t SoundDec_Create(void *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  result = 2147811329;
  if (!a1 || !a2)
  {
    return result;
  }

  v5 = malloc_type_calloc(1uLL, 0x118uLL, 0x103004044C57C84uLL);
  if (!v5)
  {
    return 2147811331;
  }

  v6 = v5;
  result = malloc_type_malloc(0x2328uLL, 0x100004077774924uLL);
  v7 = result + 9000;
  if (!result)
  {
    v7 = 0;
  }

  if (v7 - result <= 8999)
  {
    goto LABEL_110;
  }

  *(v6 + 20) = result;
  *(v6 + 43) = 9000;
  if (!result)
  {
LABEL_25:
    free(v6);
    return 2147811331;
  }

  *(v6 + 42) = 0;
  *(v6 + 47) = 0;
  if (v6 >= (v6 + 280))
  {
LABEL_110:
    __break(0x5519u);
    return result;
  }

  v8 = *a2;
  v9 = *(a2 + 16);
  *(v6 + 4) = *(a2 + 32);
  *v6 = v8;
  v6[1] = v9;
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  *(v6 + 9) = *(a2 + 72);
  *(v6 + 56) = v11;
  *(v6 + 40) = v10;
  *(v6 + 20) = TranslateASBDToPayloadFormat(a2);
  *(v6 + 21) = TranslateASBDToPayloadFormat(a2 + 40);
  if (*(v6 + 41) != 256)
  {
    goto LABEL_12;
  }

  v12 = malloc_type_malloc(0x64uLL, 0xE064E6DDuLL);
  if (!v12)
  {
    free(*(v6 + 20));
    goto LABEL_25;
  }

  *(v6 + 120) = 1;
  *(v6 + 12) = v12;
  *(v6 + 104) = xmmword_1DBD47C10;
LABEL_12:
  *(v6 + 19) = malloc_type_calloc(1uLL, (16 * *(a2 + 68)) | 8, 0x108004057E67DB5uLL);
  v13 = *(v6 + 41) << 16;
  if (v13 < 0x200000)
  {
    if (v13 < 1114112)
    {
      if (v13 != 655360)
      {
        if (v13 != 0x100000)
        {
          goto LABEL_35;
        }

        keyExistsAndHasValidFormat[0] = 0;
        AppBooleanValue = CFPreferencesGetAppBooleanValue(@"useZeroSignaling", @"com.apple.VideoConference", keyExistsAndHasValidFormat);
        if (keyExistsAndHasValidFormat[0])
        {
          v15 = AppBooleanValue;
        }

        else
        {
          v15 = 1;
        }

LABEL_34:
        *(v6 + 45) = v15;
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (v13 == 1114112 || v13 == 1179648)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v13 >= 5242880)
    {
      if (v13 != 5242880 && v13 != 0x800000 && v13 != 0x1000000)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (v13 == 0x200000 || v13 == 0x400000)
    {
LABEL_33:
      v15 = 1;
      goto LABEL_34;
    }
  }

LABEL_35:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(v6 + 20);
      v19 = *(v6 + 21);
      *keyExistsAndHasValidFormat = 136316162;
      v35 = v16;
      v36 = 2080;
      v37 = "SoundDec_Create";
      v38 = 1024;
      v39 = 722;
      v40 = 1024;
      v41 = v18;
      v42 = 1024;
      v43 = v19;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d SoundDec_Create(%08x --> %08x)", keyExistsAndHasValidFormat, 0x28u);
    }
  }

  FileUtil_PrintBasicDesc("in  format:", v6);
  FileUtil_PrintBasicDesc("out format:", v6 + 5);
  if (*(v6 + 43) << 16 == 983040)
  {
    if (!RegisterG722Encoder())
    {
LABEL_48:
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *keyExistsAndHasValidFormat = 136315906;
          v35 = v24;
          v36 = 2080;
          v37 = "SoundDec_Create";
          v38 = 1024;
          v39 = 728;
          v40 = 1024;
          v41 = -2147155964;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d Failed to register: %X", keyExistsAndHasValidFormat, 0x22u);
        }
      }

      SoundDec_Destroy(v6);
      return 2147811332;
    }
  }

  else if (*(v6 + 41) << 16 == 983040 && !RegisterG722Decoder())
  {
    goto LABEL_48;
  }

  v20 = SoundDec_AudioConverterInstantiate(v6, v6 + 40, *(a2 + 80), v6 + 11);
  if (v20)
  {
    v21 = v20;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SoundDec_Create_cold_1(v22, v21, v23);
      }
    }

    SoundDec_Destroy(v6);
    return -v21 | 0xA0050000;
  }

  v26 = *(v6 + 43) << 16;
  if (v26 == 655360)
  {
    *keyExistsAndHasValidFormat = 127;
    if (AudioConverterSetProperty(*(v6 + 11), 0x73726371u, 4u, keyExistsAndHasValidFormat))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SoundDec_Create_cold_2();
        }
      }
    }

    if (*(v6 + 21) == 671360)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    inPropertyData = v27;
    if (AudioConverterSetProperty(*(v6 + 11), 0x7365716Cu, 4u, &inPropertyData))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SoundDec_Create_cold_3();
        }
      }
    }

    goto LABEL_99;
  }

  if (v26 == 983040)
  {
    *keyExistsAndHasValidFormat = 0;
    if (AudioConverterSetProperty(*(v6 + 11), 0x65736164u, 4u, keyExistsAndHasValidFormat))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SoundDec_Create_cold_4();
        }
      }
    }

    goto LABEL_99;
  }

  if (v26 < 0x200000)
  {
    if (v26 == 0x100000)
    {
      goto LABEL_77;
    }

    if (v26 != 1114112)
    {
      if (v26 != 1179648)
      {
        goto LABEL_99;
      }

LABEL_77:
      *keyExistsAndHasValidFormat = 1;
      v28 = *(v6 + 12);
      if (v28 == 1633772390)
      {
        v30 = 3;
      }

      else
      {
        v29 = v28 == 1633772389 && *(v6 + 5) == 48000 && *(v6 + 17) == 2;
        v30 = 3;
        if (v26 != 0x200000 && !v29 && v28 != 1935764850 && v28 != 1935767394 && v28 != 1936029299)
        {
          if (v26 != 1179648)
          {
LABEL_93:
            if (AudioConverterSetProperty(*(v6 + 11), 0x61636266u, 4u, keyExistsAndHasValidFormat))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  SoundDec_Create_cold_5();
                }
              }
            }

            goto LABEL_99;
          }

          if (*(a2 + 82))
          {
            v30 = 0;
          }

          else
          {
            v30 = 3;
          }
        }
      }

      *keyExistsAndHasValidFormat = v30;
      *(v6 + 47) = 1;
      goto LABEL_93;
    }

    goto LABEL_98;
  }

  switch(v26)
  {
    case 2097152:
      goto LABEL_77;
    case 5242880:
      if (*(v6 + 12) == 1936029299)
      {
LABEL_98:
        *(v6 + 47) = 1;
      }

      break;
    case 4194304:
      goto LABEL_77;
  }

LABEL_99:
  if (*v6 != *(v6 + 5))
  {
    *keyExistsAndHasValidFormat = 2;
    if (AudioConverterSetProperty(*(v6 + 11), 0x70726D6Du, 4u, keyExistsAndHasValidFormat))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SoundDec_Create_cold_6();
        }
      }
    }

    if (*(a2 + 81) == 1)
    {
      _SoundDec_ConfigureRamStadSRC(v6);
    }
  }

  inPropertyData = 1;
  AudioConverterSetProperty(*(v6 + 11), 0x646D6F64u, 4u, &inPropertyData);
  *a1 = v6;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v31 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *keyExistsAndHasValidFormat = 136315650;
      v35 = v31;
      v36 = 2080;
      v37 = "SoundDec_Create";
      v38 = 1024;
      v39 = 815;
      _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d Leaving SoundDec_Create", keyExistsAndHasValidFormat, 0x1Cu);
    }
  }

  return 0;
}

uint64_t TranslateASBDToPayloadFormat(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (v2 <= 1819304812)
  {
    if (v2 <= 1633903461)
    {
      if ((v2 - 1633772389) < 3)
      {
        return v1 | 0x100000;
      }

      if (v2 == 1633772396)
      {
        v3 = 720896;
        return v1 | v3;
      }

      goto LABEL_42;
    }

    if (v2 > 1685354615)
    {
      if (v2 == 1685354616)
      {
        return v1 | 0x800000;
      }

      if (v2 == 1735091043)
      {
        return v1 | 0xF0000;
      }
    }

    else
    {
      if (v2 == 1633903462)
      {
        v3 = 1179648;
        return v1 | v3;
      }

      if (v2 == 1634492791)
      {
        v3 = 327680;
        return v1 | v3;
      }
    }

    goto LABEL_42;
  }

  if (v2 > 1936029298)
  {
    if (v2 > 1953790319)
    {
      if (v2 == 1953790320)
      {
        return v1 | 0x1000000;
      }

      if (v2 == 1970037111)
      {
        return v1 | 0x40000;
      }
    }

    else
    {
      if (v2 == 1936029299)
      {
        v3 = 5242880;
        return v1 | v3;
      }

      if (v2 == 1936745848)
      {
        v3 = 655360;
        return v1 | v3;
      }
    }

LABEL_42:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        TranslateASBDToPayloadFormat_cold_1();
      }
    }

    return v1;
  }

  if (v2 > 1935764849)
  {
    if (v2 == 1935764850 || v2 == 1935767394)
    {
      return v1 | 0x400000;
    }

    goto LABEL_42;
  }

  if (v2 != 1819304813)
  {
    if (v2 == 1869641075)
    {
      return v1 | 0x200000;
    }

    goto LABEL_42;
  }

  if ((~*(a1 + 12) & 9) != 0)
  {
    v6 = *(a1 + 24);
    v7 = v1 | 0xD0000;
    if (v6 != 4)
    {
      v7 = *a1;
    }

    if (v6 == 2)
    {
      return v1 | 0x30000;
    }

    else
    {
      return v7;
    }
  }

  else if (*(a1 + 28) == 2)
  {
    return v1 | 0x20000;
  }

  else
  {
    return v1 | 0x10000;
  }
}

uint64_t SoundDec_Destroy(uint64_t a1)
{
  if (!a1)
  {
    return 2147811329;
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    AudioConverterDispose(v2);
    *(a1 + 88) = 0;
  }

  free(*(a1 + 160));
  *(a1 + 160) = 0;
  *(a1 + 172) = 0;
  if (*(a1 + 82) == 256)
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      if (*(a1 + 120) == 1)
      {
        free(v3);
        *(a1 + 120) = 0;
      }

      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
    }
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    free(v4);
  }

  free(a1);
  return 0;
}

uint64_t SoundDec_AudioConverterInstantiate(uint64_t a1, uint64_t a2, int a3, OpaqueAudioConverter **a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a4)
  {
    if (a3)
    {
      v8 = 1;
    }

    else
    {
      v12 = *(a1 + 8) != 1819304813 && *(a2 + 8) == 1819304813;
      v13 = VCFeatureFlagManager_UseOutOfProcessAudioDecoding();
      v14 = v13;
      v8 = v12 && v13;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v17 = FourccToCStr(*(a1 + 8));
          v18 = FourccToCStr(*(a2 + 8));
          *buf = 136316930;
          v37 = v15;
          v38 = 2080;
          v39 = "_SoundDec_AudioConverterInstantiationOptions";
          v40 = 1024;
          v41 = 2013;
          v42 = 2080;
          v43 = v17;
          v44 = 2080;
          v45 = v18;
          v46 = 1024;
          *v47 = v12;
          *&v47[4] = 1024;
          *&v47[6] = v14;
          v48 = 1024;
          v49 = v8;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d sourceFormat=%s, destinationFormat=%s, decoding=%d, useOutOfProcessAudioDecoding=%d, instantiationOptions=%d", buf, 0x42u);
        }
      }
    }

    if (*(a1 + 8) == 1633903462 || (v19 = v8, *(a2 + 8) == 1633903462))
    {
      v19 = v8 | 2;
    }

    if (v8)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = AudioConverterInstantiate();
    v11 = v21;
    if ((v20 & 1) != 0 && !v21)
    {
      v22 = *a4;
      if (*a4)
      {
        inPropertyData = 1;
        v23 = AudioConverterSetProperty(v22, 0x756D6662u, 4u, &inPropertyData);
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (v23)
        {
          if (ErrorLogLevelForModule >= 3)
          {
            v25 = VRTraceErrorLogLevelToCSTR();
            v26 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              SoundDec_AudioConverterInstantiate_cold_1(v25, v23, v26);
            }
          }
        }

        else if (ErrorLogLevelForModule >= 7)
        {
          v27 = VRTraceErrorLogLevelToCSTR();
          v28 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v29 = FourccToCStr(1970103906);
            *buf = 136316162;
            v37 = v27;
            v38 = 2080;
            v39 = "SoundDec_AudioConverterInstantiate";
            v40 = 1024;
            v41 = 2041;
            v42 = 2080;
            v43 = v29;
            v44 = 1024;
            LODWORD(v45) = inPropertyData;
            _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioConverterPropertyUseMessengerForBundleData=%s useMessengerForBundleData=%u", buf, 0x2Cu);
          }
        }
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v32 = FourccToCStr(*(a1 + 8));
        v33 = FourccToCStr(*(a2 + 8));
        *buf = 136316930;
        v37 = v30;
        v38 = 2080;
        v39 = "SoundDec_AudioConverterInstantiate";
        v40 = 1024;
        v41 = 2046;
        v42 = 2080;
        v43 = v32;
        v44 = 2080;
        v45 = v33;
        v46 = 1024;
        *v47 = a3;
        *&v47[4] = 1024;
        *&v47[6] = v20;
        v48 = 1024;
        v49 = v11;
        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d sourceFormat=%s, destinationFormat=%s, loadConverterOutOfProcess=%d, instantiationOptions=%d, status=%d", buf, 0x42u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v37 = v9;
        v38 = 2080;
        v39 = "SoundDec_AudioConverterInstantiate";
        v40 = 1024;
        v41 = 2032;
        v42 = 2048;
        v43 = a1;
        v44 = 2048;
        v45 = a2;
        v46 = 2048;
        *v47 = a4;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d Invalid paramter(s): sourceFormat=%p, destinationFormat=%p, audioConverter=%p", buf, 0x3Au);
      }
    }

    return 1;
  }

  return v11;
}

void _SoundDec_ConfigureRamStadSRC(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = v2;
      v16 = 2080;
      v17 = "_SoundDec_ConfigureRamStadSRC";
      v18 = 1024;
      v19 = 615;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d Configuring Ramstad SRC", buf, 0x1Cu);
    }
  }

  inPropertyData = 1835626096;
  v4 = AudioConverterSetProperty(*(a1 + 88), 0x73726361u, 4u, &inPropertyData);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v4)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _SoundDec_ConfigureRamStadSRC_cold_1();
      }
    }
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = v6;
      v16 = 2080;
      v17 = "_SoundDec_ConfigureRamStadSRC";
      v18 = 1024;
      v19 = 622;
      v20 = 1024;
      v21 = inPropertyData;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set kAudioConverterSampleRateConverterComplexity=%u", buf, 0x22u);
    }
  }

  v12 = 34;
  v8 = AudioConverterSetProperty(*(a1 + 88), 0x73726371u, 4u, &v12);
  v9 = VRTraceGetErrorLogLevelForModule();
  if (v8)
  {
    if (v9 >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _SoundDec_ConfigureRamStadSRC_cold_2();
      }
    }
  }

  else if (v9 >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v15 = v10;
      v16 = 2080;
      v17 = "_SoundDec_ConfigureRamStadSRC";
      v18 = 1024;
      v19 = 630;
      v20 = 1024;
      v21 = v12;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set kAudioConverterSampleRateConverterQuality=%u", buf, 0x22u);
    }
  }
}

uint64_t SoundDec_ShouldRampDownMissingPackets(uint64_t a1, int *a2)
{
  result = 2147811329;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = *(a1 + 82) << 16;
    if (v5 < 1114112)
    {
      if (v5 >= 983040)
      {
        if (v5 == 983040 || v5 == 0x100000)
        {
          goto LABEL_19;
        }
      }

      else if (v5 == 655360 || v5 == 720896)
      {
        goto LABEL_19;
      }
    }

    else if (v5 < 0x400000)
    {
      if (v5 == 1114112 || v5 == 1179648)
      {
        goto LABEL_19;
      }
    }

    else if (v5 == 0x400000 || v5 == 5242880 || v5 == 0x800000)
    {
      goto LABEL_19;
    }

    v4 = 1;
LABEL_19:
    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t NilDecodeProc(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4, uint64_t a5)
{
  *(a5 + 128) = 0;
  *(a5 + 136) = 0;
  *a2 = 1;
  *(a3 + 12) = 4;
  *(a3 + 16) = &NilDecodeProc_tmpArry;
  *a3 = 1;
  *a4 = a5 + 128;
  return 0;
}

uint64_t DecodeNilPacket(unsigned int *inInputDataProcUserData, char *a2, unsigned int a3, _DWORD *a4)
{
  v8 = 0;
  v21 = *MEMORY[0x1E69E9840];
  v9 = inInputDataProcUserData[17];
  v10 = a3 / v9;
  v11 = a3 / (inInputDataProcUserData[16] * v9);
  ioOutputDataPacketSize = v11;
  v12 = *(inInputDataProcUserData + 19);
  v12->mNumberBuffers = v9;
  mBuffers = v12->mBuffers;
  if (v9 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9;
  }

  v15 = v12->mBuffers;
  do
  {
    v16 = v10 * v8;
    v17 = &a2[v16];
    v18 = &a2[v16] <= &a2[a3] && v17 >= a2;
    if (!v18 || (v10 & 0x80000000) != 0 || a3 - (a3 / v9) < v16 || v15 < mBuffers || v15 >= &mBuffers[v9])
    {
      goto LABEL_21;
    }

    *(v15 + 8) = v17;
    ++v8;
    *v15 = 1;
    *(v15 + 4) = v10;
    v15 += 16;
    --v14;
  }

  while (v14);
  if (AudioConverterFillComplexBuffer(*(inInputDataProcUserData + 11), NilDecodeProc, inInputDataProcUserData, &ioOutputDataPacketSize, v12, 0))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        DecodeNilPacket_cold_1();
      }
    }
  }

  *a4 = v11 * v9 * inInputDataProcUserData[16];
  if ((a3 & 0x80000000) != 0)
  {
LABEL_21:
    __break(0x5519u);
  }

  FillGap(a2, a3, v11, ioOutputDataPacketSize, inInputDataProcUserData[16], v9);
  return 0;
}

void FillGap(char *__src, unsigned int a2, int a3, int a4, int a5, int a6)
{
  v6 = __src;
  if (a4)
  {
    v19 = (a3 - a4);
    if (v19 >= 1)
    {
      v7 = 0;
      v8 = a5;
      v21 = v19 * a5;
      __len = a5 * a4;
      v9 = a5 * a3;
LABEL_4:
      if (v7 != a6)
      {
        v10 = a2;
        if (__len <= a2)
        {
          v11 = &v6[a2];
          v12 = &v6[v21];
          if (&v6[v21] <= v11 && v6 <= v12)
          {
            v14 = a2 - v21;
            if (v14 >= __len)
            {
              memmove(&v6[v21], v6, __len);
              if (v14 >= v8)
              {
                v15 = v19;
                v16 = v10;
                v17 = v6;
                while (v17 <= v11)
                {
                  if (v6 > v17)
                  {
                    break;
                  }

                  v18 = v16 >= v8;
                  v16 -= v8;
                  if (!v18)
                  {
                    break;
                  }

                  memcpy(v17, v12, v8);
                  v17 += v8;
                  if (!--v15)
                  {
                    if (&v6[v9] <= v11 && v6 <= &v6[v9])
                    {
                      a2 = v10 - v9;
                      if (((v10 - v9) & 0x80000000) == 0)
                      {
                        ++v7;
                        v6 += v9;
                        if ((v10 - v9) >= a2)
                        {
                          goto LABEL_4;
                        }
                      }
                    }

                    break;
                  }
                }
              }
            }
          }
        }

        __break(0x5519u);
      }
    }
  }

  else
  {

    bzero(__src, a2);
  }
}

uint64_t SoundDec_Decode(uint64_t a1, const void *a2, unsigned int a3, char *a4, signed int a5, unsigned int *a6, int a7)
{
  v123 = *MEMORY[0x1E69E9840];
  v85 = -1431655766;
  if (a1 && (v10 = *(a1 + 88)) != 0)
  {
    v11 = a6;
    *(a1 + 272) = 0;
    v14 = *(a1 + 80);
    v15 = v14 & 0xFFFF0000;
    v84 = a6;
    if (a7)
    {
      v16 = AudioConverterReset(v10);
      if (a2)
      {
        if (v15 == 0x100000 || v15 == 655360)
        {
          v83 = v14 & 0xFFFF0000;
          if (*(a1 + 180))
          {
            v17 = *v84;
            MEMORY[0x1EEE9AC00](v16);
            if (v17)
            {
              memset(&v74 - ((v17 + 15) & 0x1FFFFFFF0), 170, v17);
              if ((v17 & 0x80000000) != 0)
              {
                goto LABEL_103;
              }
            }

            DecodeNilPacket(a1, &v74 - ((v17 + 15) & 0x1FFFFFFF0), v17, &v86);
          }

          v18 = a3;
          goto LABEL_21;
        }

LABEL_15:
        v18 = a3;
        v83 = v14 & 0xFFFF0000;
        if (v15 == 0x1000000)
        {
          if ((a3 & 0x80000000) != 0)
          {
            goto LABEL_103;
          }

          v20 = *(a1 + 112);
          v21 = *(a1 + 96);
          v22 = (v21 + v20);
          if (v21 > v21 + v20)
          {
            goto LABEL_103;
          }

          v23 = *(a1 + 104);
          if (v22 > v21 + v23 || v23 - v20 < a3)
          {
            goto LABEL_103;
          }

          memcpy(v22, a2, a3);
          v24 = 0;
          v18 = *(a1 + 112) + a3;
          *(a1 + 112) = v18;
          goto LABEL_23;
        }

LABEL_21:
        if ((a3 & 0x80000000) != 0)
        {
          goto LABEL_103;
        }

        *(a1 + 104) = v18;
        *(a1 + 112) = v18;
        v24 = 1;
        *(a1 + 96) = a2;
LABEL_23:
        v11 = v84;
        goto LABEL_27;
      }
    }

    else if (a2)
    {
      goto LABEL_15;
    }

    v18 = *(a1 + 112);
    if (v18 && v15 == 0x1000000)
    {
      v83 = 0x1000000;
      v24 = 0;
LABEL_27:
      v25 = (v14 - 0x10000) >> 16;
      if (v25 > 4 || v25 == 2)
      {
        v32 = *v11;
        v31 = *(a1 + 64);
        v30 = *v11 / v31 / *(a1 + 68);
      }

      else
      {
        v26 = *(a1 + 40);
        v27 = v26 * (a3 / *(a1 + 28));
        LODWORD(v26) = *(a1 + 60);
        v28 = v27 / *&v26;
        v29 = *a1;
        LODWORD(v29) = *(a1 + 24);
        v30 = (v28 / *a1 / v29);
        v31 = *(a1 + 64);
        v32 = *v11;
      }

      v85 = v30;
      if (v31)
      {
        v33 = v32 / v31;
        if (v30 > v33)
        {
          v85 = v33;
          v30 = v33;
        }
      }

      v34 = 0;
      v35 = *(a1 + 152);
      v36 = *(a1 + 68);
      v37 = v32 / v36;
      v35->mNumberBuffers = v36;
      mBuffers = v35->mBuffers;
      if (v36 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v36;
      }

      v40 = v35->mBuffers;
      do
      {
        v41 = (v37 * v34);
        v42 = &a4[v41];
        v43 = &a4[v41] <= &a4[a5] && v42 >= a4;
        if (!v43 || v37 < 0 || a5 - v37 < v41 || v40 < mBuffers || v40 >= &mBuffers[v36])
        {
          goto LABEL_103;
        }

        *(v40 + 8) = v42;
        ++v34;
        *v40 = 1;
        *(v40 + 4) = v37;
        v40 += 16;
        --v39;
      }

      while (v39);
      v78 = v24;
      v79 = v18;
      v80 = *(a1 + 176);
      v44 = *(a1 + 88);
      v77 = *(a1 + 96);
      v45 = AudioConverterFillComplexBuffer(v44, SoundDec_DataProc, a1, &v85, v35, 0);
      v81 = (v45 != 95) | *(a1 + 176);
      if (v81)
      {
        v46 = 3;
      }

      else
      {
        v46 = 6;
      }

      if (!v45)
      {
        v19 = 0;
LABEL_80:
        if (v85 < v30)
        {
          if (v46 <= VRTraceGetErrorLogLevelForModule())
          {
            v67 = VRTraceErrorLogLevelToCSTR();
            v68 = *MEMORY[0x1E6986650];
            if (v81)
            {
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v86 = 136316162;
                v87 = v67;
                v88 = 2080;
                v89 = "SoundDec_Decode";
                v90 = 1024;
                v91 = 1209;
                v92 = 1024;
                *v93 = v85;
                *&v93[4] = 1024;
                *&v93[6] = v30;
                _os_log_error_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d packets[%d] < full_packets[%d], potentially an issue filling a gap.", &v86, 0x28u);
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v86 = 136316162;
              v87 = v67;
              v88 = 2080;
              v89 = "SoundDec_Decode";
              v90 = 1024;
              v91 = 1209;
              v92 = 1024;
              *v93 = v85;
              *&v93[4] = 1024;
              *&v93[6] = v30;
              _os_log_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d packets[%d] < full_packets[%d], potentially an issue filling a gap.", &v86, 0x28u);
            }
          }

          if (v30 - v85 < 2)
          {
            v30 = v85;
          }

          else
          {
            if (a5 < 0)
            {
              goto LABEL_103;
            }

            FillGap(a4, a5, v30, v85, *(a1 + 56), v36);
          }
        }

        *(a1 + 176) = 1;
        v58 = *(a1 + 56) * v30 * *(a1 + 68);
        if (v83 != 655360)
        {
LABEL_95:
          v57 = v84;
          goto LABEL_96;
        }

        if (!a4 || a5 >= 1)
        {
          _SoundDec_ScaleSpeex(a1, a4, v30);
          goto LABEL_95;
        }

LABEL_103:
        __break(0x5519u);
      }

      v47 = v45;
      memset(__str, 0, sizeof(__str));
      memset(v121, 0, sizeof(v121));
      v82 = v46;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v46 = v82;
      if (v82 <= ErrorLogLevelForModule)
      {
        v76 = VRTraceErrorLogLevelToCSTR();
        v49 = *MEMORY[0x1E6986650];
        if (v81)
        {
          v75 = *MEMORY[0x1E6986650];
          v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
          v46 = v82;
          if (v50)
          {
            v74 = FormatToCStr(a1, __str, 0x40uLL);
            v51 = FormatToCStr(a1 + 40, v121, 0x40uLL);
            v52 = " (AVC Out of Data error)";
            if (v47 != 95)
            {
              v52 = "";
            }

            if (v25 > 4)
            {
              v53 = 0;
            }

            else
            {
              v53 = dword_1DBD47CE0[v25];
            }

            v70 = *(a1 + 96);
            v71 = *(a1 + 112);
            v72 = *(a1 + 272);
            if (v80)
            {
              v73 = 0;
            }

            else
            {
              v73 = *(a1 + 176);
            }

            v86 = 136319490;
            v87 = v76;
            v88 = 2080;
            v89 = "SoundDec_Decode";
            v90 = 1024;
            v91 = 1204;
            v92 = 2080;
            *v93 = v74;
            *&v93[8] = 2080;
            v94 = v51;
            v95 = 1024;
            v96 = v47;
            v97 = 2080;
            v98 = v52;
            v99 = 2048;
            v100 = a2;
            v101 = 1024;
            v102 = a3;
            v103 = 2048;
            v104 = v70;
            v105 = 2048;
            v106 = v71;
            v107 = 2048;
            v108 = v77;
            v109 = 2048;
            v110 = v79;
            v111 = 1024;
            v112 = v53;
            v113 = 1024;
            v114 = v85;
            v115 = 1024;
            v116 = v78;
            v117 = 1024;
            v118 = v72;
            v119 = 1024;
            v120 = v73;
            _os_log_error_impl(&dword_1DB56E000, v75, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverter (%s -> %s) returned error %d%s during FillComplexBuffer. inputBuffer=%p, inputBufferCapacity=%d pbInputBuffer=%p inputBufferLength=%zu inputBufferBefore=%p inputBufferLengthBefore=%zu isInputPCM=%{BOOL}d packets=%u inFamilyNotTTY=%{BOOL}d packetsConverted=%u isFirstDecode=%{BOOL}d", &v86, 0x96u);
            goto LABEL_78;
          }
        }

        else
        {
          v59 = *MEMORY[0x1E6986650];
          v60 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
          v46 = v82;
          if (v60)
          {
            v75 = FormatToCStr(a1, __str, 0x40uLL);
            v61 = FormatToCStr(a1 + 40, v121, 0x40uLL);
            if (v25 > 4)
            {
              v62 = 0;
            }

            else
            {
              v62 = dword_1DBD47CE0[v25];
            }

            v63 = *(a1 + 96);
            v64 = *(a1 + 112);
            v65 = *(a1 + 272);
            if (v80)
            {
              v66 = 0;
            }

            else
            {
              v66 = *(a1 + 176);
            }

            v86 = 136319490;
            v87 = v76;
            v88 = 2080;
            v89 = "SoundDec_Decode";
            v90 = 1024;
            v91 = 1204;
            v92 = 2080;
            *v93 = v75;
            *&v93[8] = 2080;
            v94 = v61;
            v95 = 1024;
            v96 = 95;
            v97 = 2080;
            v98 = " (AVC Out of Data error)";
            v99 = 2048;
            v100 = a2;
            v101 = 1024;
            v102 = a3;
            v103 = 2048;
            v104 = v63;
            v105 = 2048;
            v106 = v64;
            v107 = 2048;
            v108 = v77;
            v109 = 2048;
            v110 = v79;
            v111 = 1024;
            v112 = v62;
            v113 = 1024;
            v114 = v85;
            v115 = 1024;
            v116 = v78;
            v117 = 1024;
            v118 = v65;
            v119 = 1024;
            v120 = v66;
            _os_log_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverter (%s -> %s) returned error %d%s during FillComplexBuffer. inputBuffer=%p, inputBufferCapacity=%d pbInputBuffer=%p inputBufferLength=%zu inputBufferBefore=%p inputBufferLengthBefore=%zu isInputPCM=%{BOOL}d packets=%u inFamilyNotTTY=%{BOOL}d packetsConverted=%u isFirstDecode=%{BOOL}d", &v86, 0x96u);
LABEL_78:
            v46 = v82;
          }
        }
      }

      v19 = 2147811332;
      goto LABEL_80;
    }

    v54 = (v14 - 0x10000) >> 16;
    v55 = v54 > 4 || v54 == 2;
    if (!v55 || !*(a1 + 180))
    {
      if ((a5 & 0x80000000) == 0)
      {
        v56 = *v84;
        if (v56 <= a5)
        {
          bzero(a4, v56);
          v19 = 0;
          v57 = v84;
          v58 = *v84;
LABEL_96:
          *v57 = v58;
          return v19;
        }
      }

      goto LABEL_103;
    }

    if (a5 < 0)
    {
      goto LABEL_103;
    }

    DecodeNilPacket(a1, a4, a5, v84);
    return 0;
  }

  else
  {
    if (a5 < 0)
    {
      goto LABEL_103;
    }

    v19 = 2147811329;
    bzero(a4, a5);
  }

  return v19;
}

uint64_t SoundDec_DataProc(uint64_t a1, signed int *a2, unsigned int *a3, void *a4, unint64_t a5)
{
  v81 = *MEMORY[0x1E69E9840];
  v9 = a5 + 280;
  v10 = *a2;
  v11 = *(a5 + 112);
  if (v11)
  {
    if (*(a5 + 172) <= v11)
    {
      __n[0] = *(a5 + 112);
      if (v9 <= a5)
      {
        goto LABEL_79;
      }

      ExpandCallbackBuffer(a5, __n);
      v11 = __n[0];
      *(a5 + 112) = __n[0];
    }

    v12 = *(a5 + 172);
    v13 = *(a5 + 160);
    if (*(a5 + 8) == 1953790320)
    {
      if (!*(a5 + 104))
      {
        goto LABEL_79;
      }

      if (v12 < 1)
      {
        goto LABEL_79;
      }

      *v13 = **(a5 + 96);
      *(a5 + 168) = 1;
      v14 = *(a5 + 96);
      v15 = v14 + 1;
      if (v14 >= v14 + 1)
      {
        goto LABEL_79;
      }

      v16 = *(a5 + 104);
      if (v15 > &v14[v16])
      {
        goto LABEL_79;
      }

      v17 = *(a5 + 112) - 1;
      if (v17 > v16 - 1 || v17 > v16)
      {
        goto LABEL_79;
      }

      memmove(v14, v15, v17);
      --*(a5 + 112);
    }

    else
    {
      if (v11 > *(a5 + 104) || (v12 & 0x80000000) != 0 || v11 > v12)
      {
        goto LABEL_79;
      }

      memcpy(v13, *(a5 + 96), v11);
      *(a5 + 168) = *(a5 + 112);
      *(a5 + 96) = 0;
      *(a5 + 104) = 0;
      *(a5 + 112) = 0;
    }
  }

  else if (*(a5 + 168) <= 0)
  {
    v18 = *(a5 + 176);
    if (*(a5 + 176))
    {
      v19 = 3;
    }

    else
    {
      v19 = 7;
    }

    if (v19 <= VRTraceGetErrorLogLevelForModule())
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      v22 = *MEMORY[0x1E6986650];
      if (v18)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a5 + 96);
          v24 = *(a5 + 112);
          v25 = *(a5 + 168);
          v26 = *a2;
          v27 = *(a5 + 176);
          v28 = *(a5 + 272);
          __n[0] = 136317442;
          *&__n[1] = v20;
          v63 = 2080;
          v64 = "SoundDec_DataProc";
          v65 = 1024;
          v66 = 955;
          v67 = 2048;
          v68 = v23;
          v69 = 2048;
          v70 = v24;
          v71 = 1024;
          v72 = v25;
          v73 = 1024;
          v74 = 0;
          v75 = 1024;
          v76 = v26;
          v77 = 1024;
          v78 = v27;
          v79 = 1024;
          v80 = v28;
          _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d Returning out of data with inputBuffer=%p inputBufferLength=%zu callbackBufferLen=%d packetsNULL=%{BOOL}d packetsWanted=%u firstConversionCompleted=%{BOOL}d packetsConverted=%u", __n, 0x4Eu);
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a5 + 96);
        v35 = *(a5 + 112);
        v36 = *(a5 + 168);
        v37 = *a2;
        v38 = *(a5 + 176);
        v39 = *(a5 + 272);
        __n[0] = 136317442;
        *&__n[1] = v20;
        v63 = 2080;
        v64 = "SoundDec_DataProc";
        v65 = 1024;
        v66 = 955;
        v67 = 2048;
        v68 = v34;
        v69 = 2048;
        v70 = v35;
        v71 = 1024;
        v72 = v36;
        v73 = 1024;
        v74 = 0;
        v75 = 1024;
        v76 = v37;
        v77 = 1024;
        v78 = v38;
        v79 = 1024;
        v80 = v39;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d Returning out of data with inputBuffer=%p inputBufferLength=%zu callbackBufferLen=%d packetsNULL=%{BOOL}d packetsWanted=%u firstConversionCompleted=%{BOOL}d packetsConverted=%u", __n, 0x4Eu);
      }
    }

    *a2 = 0;
    return 95;
  }

  v29 = *(a5 + 82) << 16;
  if (v29 == 720896 || v29 == 0x100000)
  {
    goto LABEL_40;
  }

  v30 = *(a5 + 8);
  if (v30 <= 1935764849)
  {
    if (v30 > 1735091042)
    {
      if (v30 == 1735091043)
      {
        goto LABEL_40;
      }

      v31 = 1869641075;
    }

    else
    {
      if (v30 == 1633903462)
      {
        goto LABEL_40;
      }

      v31 = 1685354616;
    }

    goto LABEL_39;
  }

  if (v30 <= 1936029298)
  {
    if (v30 == 1935764850)
    {
      goto LABEL_40;
    }

    v31 = 1935767394;
    goto LABEL_39;
  }

  if (v30 == 1936029299 || v30 == 1953790320)
  {
LABEL_40:
    a3[2] = 1;
    v32 = *(a5 + 168);
    a3[3] = v32;
    *(a3 + 2) = *(a5 + 160);
    *(a5 + 128) = 0;
    *(a5 + 140) = v32;
    if (v9 > a5)
    {
      result = 0;
      *a4 = a5 + 128;
      *a2 = 1;
      ++*(a5 + 272);
      *(a5 + 168) = 0;
      return result;
    }

    goto LABEL_79;
  }

  v31 = 1936745848;
LABEL_39:
  if (v30 == v31)
  {
    goto LABEL_40;
  }

  v40 = (*(a5 + 168) / *(a5 + 16)) / *(a5 + 28);
  *a2 = v40;
  if (v40 < v10 && (*(a5 + 176) & 1) == 0 && (*(a5 + 80) & 0xFFFE0000 | 0x10000) != 0x50000)
  {
    v41 = *(a5 + 16) * v10;
    __n[0] = v41;
    v42 = *(a5 + 172);
    if (v41 > v42)
    {
      if (v9 <= a5)
      {
        goto LABEL_79;
      }

      ExpandCallbackBuffer(a5, __n);
      v42 = *(a5 + 172);
      v41 = __n[0];
    }

    if ((v42 & 0x80000000) != 0 || v41 > v42)
    {
LABEL_79:
      __break(0x5519u);
    }

    bzero(*(a5 + 160), v41);
    *(a5 + 168) = v41;
    *a2 = v41 / *(a5 + 16);
    *(a5 + 176) = 1;
  }

  v43 = 0;
  v44 = 0;
  v45 = a3 + 2;
  v46 = *a3;
  v47 = *(a5 + 168) / v46;
  v48 = *(a5 + 144);
  v49 = v48 + 2;
  v50 = &a3[4 * v46 + 2];
  if (v46 <= 1)
  {
    LODWORD(v46) = 1;
  }

  do
  {
    if (v48)
    {
      v51 = &v48[v43 + 2];
      v52 = v51 < v49 || v51 >= &v49[4 * *v48];
      v53 = &a3[v43 + 2];
      if (v52 || v53 < v45 || v53 >= v50)
      {
        goto LABEL_79;
      }

      *&a3[v43 + 4] = *&v48[v43 + 4];
      *v53 = *v51;
    }

    else
    {
      v56 = *(a5 + 172);
      v57 = *(a5 + 160);
      v58 = v57 + v44 * v47;
      if (v58 > v57 + v56 || v57 > v58)
      {
        goto LABEL_79;
      }

      if (v47 < 0)
      {
        goto LABEL_79;
      }

      if (v56 - v44 * v47 < v47)
      {
        goto LABEL_79;
      }

      v60 = &a3[v43 + 2];
      if (v60 < v45 || v60 >= v50)
      {
        goto LABEL_79;
      }

      v61 = &a3[v43];
      *(v61 + 2) = v58;
      v61[3] = v47;
    }

    ++v44;
    v43 += 4;
    LODWORD(v46) = v46 - 1;
  }

  while (v46);
  result = 0;
  *(a5 + 168) = 0;
  *(a5 + 272) += *a2;
  return result;
}

__int16 *_SoundDec_ScaleSpeex(uint64_t a1, __int16 *a2, unsigned int a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 52))
  {

LABEL_8:
    JUMPOUT(0x1E128D710);
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v8 - v5;
  if (!a3)
  {
    __break(0x5519u);
    goto LABEL_8;
  }

  memset(v6, 170, 2 * a3);
  VSMUL_Q15_Portable(a2, 0x2000, v6, a3);
  return VADD_Q15_Portable(a2, v6, a2, a3);
}

void SoundDec_Encode(char *inPropertyData, uint64_t a2, int a3, void *a4, unsigned int a5, UInt32 *a6, AudioStreamPacketDescription *outPacketDescription, int a8, double a9, double a10)
{
  v115 = *MEMORY[0x1E69E9840];
  ioOutputDataPacketSize = -1431655766;
  if (!inPropertyData || !outPacketDescription || !a2 || (v13 = *(inPropertyData + 11)) == 0)
  {
    if ((a5 & 0x80000000) == 0)
    {
      bzero(a4, a5);
      return;
    }

    goto LABEL_123;
  }

  if (a8)
  {
    AudioConverterReset(v13);
  }

  if ((*(inPropertyData + 60) != *(inPropertyData + 58) || *(inPropertyData + 61) != *(inPropertyData + 59)) && (*(inPropertyData + 12) == 1936029299 || *(inPropertyData + 2) == 1936029299))
  {
    v16 = AudioConverterSetProperty(*(inPropertyData + 11), 0x5E726670u, 8u, inPropertyData + 232);
    if (v16)
    {
      v17 = v16;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v20 = *(inPropertyData + 58);
          *buf = 136316162;
          v93 = v18;
          v94 = 2080;
          v95 = "_SoundDec_SetEVSRFParams";
          v96 = 1024;
          v97 = 1582;
          v98 = 1024;
          *v99 = v20;
          *&v99[4] = 1024;
          *&v99[6] = v17;
          _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverterSetProperty failed to set property kAudioCodecPrivatePropertyEVSRFParams %d with error %08x", buf, 0x28u);
        }
      }
    }

    else
    {
      *(inPropertyData + 30) = *(inPropertyData + 29);
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(inPropertyData + 58);
          v24 = *(inPropertyData + 59);
          *buf = 136316162;
          v93 = v21;
          v94 = 2080;
          v95 = "_SoundDec_SetEVSRFParams";
          v96 = 1024;
          v97 = 1587;
          v98 = 1024;
          *v99 = v23;
          *&v99[4] = 1024;
          *&v99[6] = v24;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyEVSRFParams offset=%d indicator=%d", buf, 0x28u);
        }
      }
    }
  }

  if (inPropertyData[228] == 1)
  {
    LODWORD(inPropertyDataa[0]) = *(inPropertyData + 56);
    if (*(inPropertyData + 12) == 1936029299 || *(inPropertyData + 2) == 1936029299)
    {
      v25 = AudioConverterSetProperty(*(inPropertyData + 11), 0x5E626477u, 4u, inPropertyDataa);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v25)
      {
        if (ErrorLogLevelForModule >= 3)
        {
          v27 = VRTraceErrorLogLevelToCSTR();
          v28 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v93 = v27;
            v94 = 2080;
            v95 = "_SoundDec_SetEVSAudioCodecPropertyMaxBandwidth";
            v96 = 1024;
            v97 = 1899;
            v98 = 1024;
            *v99 = inPropertyDataa[0];
            *&v99[4] = 1024;
            *&v99[6] = v25;
            _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverterSetProperty failed to set property kAudioCodecPrivatePropertyAdjustMaxBandwidth for bandwidth=%u with error %08x", buf, 0x28u);
          }
        }
      }

      else if (ErrorLogLevelForModule >= 6)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v93 = v29;
          v94 = 2080;
          v95 = "_SoundDec_SetEVSAudioCodecPropertyMaxBandwidth";
          v96 = 1024;
          v97 = 1902;
          v98 = 1024;
          *v99 = inPropertyDataa[0];
          _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyAdjustMaxBandwidth bandwidth=%u", buf, 0x22u);
        }
      }
    }

    inPropertyData[228] = 0;
  }

  v31 = *(inPropertyData + 50);
  if (v31 != *(inPropertyData + 49))
  {
    v32 = inPropertyData[184];
    LODWORD(inPropertyDataa[0]) = *(inPropertyData + 50);
    if (*(inPropertyData + 47))
    {
      v33 = _SoundDec_SetLocalQualityWithBitrate(inPropertyData, v31, a9, a10);
      if (v32)
      {
        LODWORD(v34) = *(inPropertyData + 15);
        *__str = (v31 / (*(inPropertyData + 5) / v34));
        v35 = AudioConverterSetProperty(*(inPropertyData + 11), 0x70616B6Cu, 4u, __str);
        if (v35)
        {
          v36 = v35;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v88 = VRTraceErrorLogLevelToCSTR();
            log = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316674;
              v93 = v88;
              v94 = 2080;
              v95 = "_SoundDec_SetBitrateInternal";
              v96 = 1024;
              v97 = 1444;
              v98 = 1024;
              *v99 = 1444;
              *&v99[4] = 1024;
              *&v99[6] = *__str;
              LOWORD(v100) = 1024;
              *(&v100 + 2) = v31;
              HIWORD(v100) = 1024;
              *v101 = v36;
              _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/SoundDec.c:%d: Failed to set max packet size[%d] for bitrate[%d] with err[%d]", buf, 0x34u);
            }
          }
        }
      }
    }

    else
    {
      v33 = AudioConverterSetProperty(*(inPropertyData + 11), 0x62726174u, 4u, inPropertyDataa);
    }

    v37 = VRTraceGetErrorLogLevelForModule();
    if (v33)
    {
      if (v37 >= 3)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v93 = v38;
          v94 = 2080;
          v95 = "_SoundDec_SetBitrateInternal";
          v96 = 1024;
          v97 = 1453;
          v98 = 1024;
          *v99 = 1453;
          *&v99[4] = 1024;
          *&v99[6] = inPropertyDataa[0];
          LOWORD(v100) = 1024;
          *(&v100 + 2) = v33;
          _os_log_error_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/SoundDec.c:%d: Failed to set bitrate[%d]: %d", buf, 0x2Eu);
        }
      }
    }

    else
    {
      if (v37 >= 7)
      {
        v40 = VRTraceErrorLogLevelToCSTR();
        v41 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(inPropertyData + 47);
          *buf = 136316418;
          v93 = v40;
          v94 = 2080;
          v95 = "_SoundDec_SetBitrateInternal";
          v96 = 1024;
          v97 = 1457;
          v98 = 1024;
          *v99 = inPropertyDataa[0];
          *&v99[4] = 1024;
          *&v99[6] = v42;
          LOWORD(v100) = 1024;
          *(&v100 + 2) = v32;
          _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d NEW AUDIO BITRATE (vbr)=%d fvbrcodec=%d enablePacketSizeLimit=%d", buf, 0x2Eu);
        }
      }

      *(inPropertyData + 49) = inPropertyDataa[0];
    }
  }

  v43 = inPropertyData[260];
  if (inPropertyData[248] != v43)
  {
    v44 = inPropertyData[248];
    v45 = *(inPropertyData + 63);
    v46 = *(inPropertyData + 64);
    if (v43 != v44 || *(inPropertyData + 66) != v45 || *(inPropertyData + 67) != v46)
    {
      if (!inPropertyData[248])
      {
        v46 = 0;
      }

      LODWORD(inPropertyDataa[0]) = v46;
      v47 = AudioConverterSetProperty(*(inPropertyData + 11), 0x5E737262u, 4u, inPropertyDataa);
      v48 = VRTraceGetErrorLogLevelForModule();
      if (v47)
      {
        if (v48 >= 3)
        {
          v49 = VRTraceErrorLogLevelToCSTR();
          v50 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v93 = v49;
            v94 = 2080;
            v95 = "_SoundDec_EnableShortREDInternal";
            v96 = 1024;
            v97 = 2075;
            v98 = 1024;
            *v99 = inPropertyDataa[0];
            *&v99[4] = 1024;
            *&v99[6] = v47;
            _os_log_error_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverterSetProperty failed to set kAudioCodecPrivatePropertyShortREDBitrate to shortREDBitrate=%u with error=%d", buf, 0x28u);
          }
        }
      }

      else
      {
        if (v48 >= 7)
        {
          v51 = VRTraceErrorLogLevelToCSTR();
          v52 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v93 = v51;
            v94 = 2080;
            v95 = "_SoundDec_EnableShortREDInternal";
            v96 = 1024;
            v97 = 2078;
            v98 = 1024;
            *v99 = inPropertyDataa[0];
            _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyShortREDBitrate shortREDBitrate=%u", buf, 0x22u);
          }
        }

        inPropertyData[260] = v44;
        if (v44)
        {
          v53 = v45;
        }

        else
        {
          v53 = 0;
        }

        *(inPropertyData + 66) = v53;
      }
    }
  }

  if (inPropertyData[220] == 1)
  {
    inPropertyDataa[0] = *(inPropertyData + 204);
    if (*(inPropertyData + 12) == 1936029299 || *(inPropertyData + 2) == 1936029299)
    {
      v54 = AudioConverterSetProperty(*(inPropertyData + 11), 0x5E636D72u, 0x10u, inPropertyDataa);
      v55 = VRTraceGetErrorLogLevelForModule();
      if (!v54)
      {
        if (v55 >= 7)
        {
          v56 = VRTraceErrorLogLevelToCSTR();
          v57 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v93 = v56;
            v94 = 2080;
            v95 = "_SoundDec_SetEVSCMRInternal";
            v96 = 1024;
            v97 = 1982;
            v98 = 1024;
            *v99 = inPropertyDataa[0];
            *&v99[4] = 1024;
            *&v99[6] = DWORD1(inPropertyDataa[0]);
            LOWORD(v100) = 1024;
            *(&v100 + 2) = DWORD2(inPropertyDataa[0]);
            HIWORD(v100) = 1024;
            *v101 = HIDWORD(inPropertyDataa[0]);
            _os_log_impl(&dword_1DB56E000, v57, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyCMR mode=%u bandwidth=%u offset=%u indicator=%u", buf, 0x34u);
          }
        }

        goto LABEL_77;
      }

      if (v55 >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SoundDec_Encode_cold_1();
        }
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SoundDec_Encode_cold_2();
      }
    }

LABEL_77:
    inPropertyData[220] = 0;
  }

  if (inPropertyData[222] == 1)
  {
    if ((_SoundDec_SetAMRCMRInternal(inPropertyData, inPropertyData[221]) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SoundDec_Encode_cold_3();
      }
    }

    v58 = inPropertyData[223]++ + 1;
    if (v58 == 4)
    {
      if ((_SoundDec_SetAMRCMRInternal(inPropertyData, 0xFu) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SoundDec_Encode_cold_4();
        }
      }

      inPropertyData[222] = 0;
    }
  }

  v59 = *(inPropertyData + 21);
  v60 = v59 & 0xFFFF0000;
  v61 = *(inPropertyData + 4) * a3 * *(inPropertyData + 7);
  if ((v59 & 0xFFFF0000) != 0x1000000)
  {
    *(inPropertyData + 18) = a2;
    *(inPropertyData + 42) = v61;
    goto LABEL_96;
  }

  v62 = *(a2 + 16);
  v63 = *(a2 + 12);
  if (inPropertyData[120] == 1)
  {
    free(*(inPropertyData + 12));
    inPropertyData[120] = 0;
  }

  if (v62 <= v62 + v63 && v61 <= v63)
  {
    *(inPropertyData + 13) = v61;
    *(inPropertyData + 14) = v61;
    *(inPropertyData + 12) = v62;
LABEL_96:
    v64 = (v59 - 0x10000) >> 16;
    v65 = 1;
    if (v64 <= 4 && v64 != 2)
    {
      v66 = *(inPropertyData + 5);
      v67 = v66 * (v61 / *(inPropertyData + 7));
      LODWORD(v66) = *(inPropertyData + 15);
      v68 = v67 / *&v66;
      v69 = *inPropertyData;
      LODWORD(v69) = *(inPropertyData + 6);
      v65 = (v68 / *inPropertyData / v69);
    }

    ioOutputDataPacketSize = v65;
    v70 = *(inPropertyData + 16);
    if (v70)
    {
      v71 = *a6 / v70;
      if (v65 > v71)
      {
        ioOutputDataPacketSize = v71;
      }
    }

    v72 = *(inPropertyData + 19);
    *v72 = 1;
    *(v72 + 8) = 1;
    *(v72 + 12) = *a6;
    *(v72 + 16) = a4;
    v73 = AudioConverterFillComplexBuffer(*(inPropertyData + 11), SoundDec_DataProc, inPropertyData, &ioOutputDataPacketSize, v72, outPacketDescription);
    if (!v73)
    {
      goto LABEL_119;
    }

    v74 = v73;
    memset(&inPropertyDataa[2], 0, 32);
    v75 = v60 == 0x1000000 ? 8 : 7;
    memset(inPropertyDataa, 0, 32);
    v112 = 0uLL;
    v113 = 0uLL;
    *__str = 0uLL;
    v111 = 0uLL;
    if (v75 > VRTraceGetErrorLogLevelForModule())
    {
      goto LABEL_119;
    }

    v76 = VRTraceErrorLogLevelToCSTR();
    if (v60 == 0x1000000)
    {
      v77 = *MEMORY[0x1E6986650];
      v78 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          v84 = FormatToCStr(inPropertyData, inPropertyDataa, 0x40uLL);
          v85 = FormatToCStr((inPropertyData + 40), __str, 0x40uLL);
          v86 = "";
          v87 = *a6;
          *buf = 136317442;
          if (v74 == 95)
          {
            v86 = " (AVC Out of Data error)";
          }

          v93 = v76;
          v94 = 2080;
          v95 = "SoundDec_Encode";
          v96 = 1024;
          v97 = 1341;
          v98 = 2080;
          *v99 = v84;
          *&v99[8] = 2080;
          v100 = v85;
          *v101 = 1024;
          *&v101[2] = v74;
          v102 = 2080;
          v103 = v86;
          v104 = 1024;
          v105 = v61;
          v106 = 1024;
          v107 = ioOutputDataPacketSize;
          v108 = 1024;
          v109 = v87;
          _os_log_debug_impl(&dword_1DB56E000, v77, OS_LOG_TYPE_DEBUG, "VCSoundDec [%s] %s:%d AudioConverter (%s -> %s) returned error %d%s during FillComplexBuffer inBytes[%d] packets[%d] *p_io_output_bytes=%d", buf, 0x52u);
        }

        goto LABEL_119;
      }

      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        v79 = FormatToCStr(inPropertyData, inPropertyDataa, 0x40uLL);
        v80 = FormatToCStr((inPropertyData + 40), __str, 0x40uLL);
        v81 = ioOutputDataPacketSize;
        v82 = "";
        v83 = *a6;
        *buf = 136317442;
        if (v74 == 95)
        {
          v82 = " (AVC Out of Data error)";
        }

LABEL_117:
        v93 = v76;
        v94 = 2080;
        v95 = "SoundDec_Encode";
        v96 = 1024;
        v97 = 1341;
        v98 = 2080;
        *v99 = v79;
        *&v99[8] = 2080;
        v100 = v80;
        *v101 = 1024;
        *&v101[2] = v74;
        v102 = 2080;
        v103 = v82;
        v104 = 1024;
        v105 = v61;
        v106 = 1024;
        v107 = v81;
        v108 = 1024;
        v109 = v83;
        _os_log_impl(&dword_1DB56E000, v77, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverter (%s -> %s) returned error %d%s during FillComplexBuffer inBytes[%d] packets[%d] *p_io_output_bytes=%d", buf, 0x52u);
      }
    }

    else
    {
      v77 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v79 = FormatToCStr(inPropertyData, inPropertyDataa, 0x40uLL);
        v80 = FormatToCStr((inPropertyData + 40), __str, 0x40uLL);
        v81 = ioOutputDataPacketSize;
        v82 = "";
        v83 = *a6;
        *buf = 136317442;
        if (v74 == 95)
        {
          v82 = " (AVC Out of Data error)";
        }

        goto LABEL_117;
      }
    }

LABEL_119:
    *a6 = ioOutputDataPacketSize;
    return;
  }

LABEL_123:
  __break(0x5519u);
}

uint64_t SoundDec_Reset(uint64_t a1)
{
  result = 2147811329;
  if (a1)
  {
    v3 = *(a1 + 88);
    if (v3)
    {
      AudioConverterReset(v3);
      return 0;
    }
  }

  return result;
}

uint64_t SoundDec_SetDTXPrimerSamples(uint64_t a1, void *inPropertyData, UInt32 a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = 2147811329;
  if (a1)
  {
    v4 = *(a1 + 88);
    if (v4)
    {
      v7 = AudioConverterSetProperty(v4, 0x5E636E70u, a3, inPropertyData);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v7)
      {
        if (ErrorLogLevelForModule >= 3)
        {
          v9 = VRTraceErrorLogLevelToCSTR();
          v10 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v14 = 136316674;
            v15 = v9;
            v16 = 2080;
            v17 = "SoundDec_SetDTXPrimerSamples";
            v18 = 1024;
            v19 = 1402;
            v20 = 1024;
            *v21 = 1402;
            *&v21[4] = 2048;
            *&v21[6] = inPropertyData;
            v22 = 1024;
            v23 = a3;
            v24 = 1024;
            v25 = v7;
            _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/SoundDec.c:%d: Failed to set DTX encoder primer sample buffer[%p] bytes[%d] err[%d]", &v14, 0x38u);
          }
        }
      }

      else
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136316162;
            v15 = v11;
            v16 = 2080;
            v17 = "SoundDec_SetDTXPrimerSamples";
            v18 = 1024;
            v19 = 1405;
            v20 = 2048;
            *v21 = inPropertyData;
            *&v21[8] = 1024;
            *&v21[10] = a3;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded with dtx encoder primer sample buffer=%p bytes=%u", &v14, 0x2Cu);
          }
        }

        return 0;
      }
    }
  }

  return v3;
}

uint64_t SoundDec_ApplyLocalQuality(uint64_t a1, double a2, double a3)
{
  v3 = 2147811329;
  if (a1 && *(a1 + 88) && *(a1 + 188))
  {
    if (_SoundDec_SetLocalQualityWithBitrate(a1, *(a1 + 196), a2, a3))
    {
      return 2147811332;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t _SoundDec_SetLocalQualityWithBitrate(uint64_t a1, unsigned int a2, double a3, double a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 86) << 16;
  v7 = *(a1 + 40);
  v8 = v7;
  if (v6 >= 1179648)
  {
    if (v6 < 0x400000)
    {
      if (v6 != 1179648)
      {
        if (v6 == 0x200000)
        {
          if (v8 == 48000 && *(a1 + 68) == 4)
          {
            v9 = ((a2 >> 2) / 300000.0) * 127.0;
          }

          else
          {
            LODWORD(a4) = *(a1 + 60);
            if (v7 / *&a4 == 200.0)
            {
              v9 = 127.0;
            }

            else
            {
              if (a2 <= 0x1388)
              {
                v33 = 5000;
              }

              else
              {
                v33 = a2;
              }

              if (v33 >= 0xBB80)
              {
                v33 = 48000;
              }

              v9 = v33 / 1000.0;
            }
          }

          goto LABEL_15;
        }

        goto LABEL_65;
      }

LABEL_14:
      v9 = a2;
      goto LABEL_15;
    }

    if (v6 == 0x400000)
    {
      v9 = 0.0;
      if (v8 == 16000)
      {
        if (a2 < 0x19C9)
        {
          goto LABEL_15;
        }

        v9 = 1.0;
        if (a2 < 0x2293)
        {
          goto LABEL_15;
        }

        v9 = 2.0;
        if (a2 < 0x316B)
        {
          goto LABEL_15;
        }

        v9 = 3.0;
        if (a2 < 0x37AB)
        {
          goto LABEL_15;
        }

        v9 = 4.0;
        if (a2 < 0x3DEB)
        {
          goto LABEL_15;
        }

        v9 = 5.0;
        if (a2 < 0x474B)
        {
          goto LABEL_15;
        }

        v9 = 6.0;
        if (a2 < 0x4D8B)
        {
          goto LABEL_15;
        }

        v9 = 7.0;
        if (a2 < 0x5A0B)
        {
          goto LABEL_15;
        }

        v9 = 8.0;
        v31 = 23851;
      }

      else
      {
        if (a2 < 0x128F)
        {
          goto LABEL_15;
        }

        v9 = 1.0;
        if (a2 < 0x141F)
        {
          goto LABEL_15;
        }

        v9 = 2.0;
        if (a2 < 0x170D)
        {
          goto LABEL_15;
        }

        v9 = 3.0;
        if (a2 < 0x1A2D)
        {
          goto LABEL_15;
        }

        v9 = 4.0;
        if (a2 < 0x1CE9)
        {
          goto LABEL_15;
        }

        v9 = 5.0;
        if (a2 < 0x1F0F)
        {
          goto LABEL_15;
        }

        v9 = 6.0;
        if (a2 < 0x27D9)
        {
          goto LABEL_15;
        }

        v9 = 7.0;
        v31 = 12201;
      }

      if (a2 < v31)
      {
        goto LABEL_15;
      }
    }

    else if (v6 == 5242880)
    {
      goto LABEL_14;
    }

LABEL_65:
    v9 = 0.0;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _SoundDec_SetLocalQualityWithBitrate_cold_1();
      }
    }

    goto LABEL_15;
  }

  if (v6 != 720896 && v6 != 0x100000)
  {
    if (v6 == 1114112)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

  if (v8 == 16000)
  {
    v9 = -9.0;
    if (a2 < 0x2329)
    {
      goto LABEL_15;
    }

    v9 = 0.0;
    if (a2 < 0x2EE1)
    {
      goto LABEL_15;
    }

    v19 = 9.0;
    v20 = 14001;
    v21 = 18.0;
    v22 = 16001;
    v23 = 27.0;
    v24 = 18001;
    v25 = 36.0;
    v26 = 20001;
    v27 = 45.0;
    v28 = 24001;
    v29 = a2 >= 0x6D61;
    v30 = 1115422720;
  }

  else
  {
    v9 = -18.0;
    if (a2 < 0x2329)
    {
      goto LABEL_15;
    }

    v9 = -9.0;
    if (a2 < 0x2EE1)
    {
      goto LABEL_15;
    }

    v9 = 0.0;
    if (a2 < 0x3E81)
    {
      goto LABEL_15;
    }

    v19 = 9.0;
    v20 = 20001;
    v21 = 18.0;
    v22 = 24001;
    v23 = 27.0;
    v24 = 28001;
    v25 = 36.0;
    v26 = 32001;
    v27 = 45.0;
    v28 = 36001;
    v29 = a2 >= 0x9C41;
    v30 = 1115684864;
  }

  v32 = *&v30;
  if (!v29)
  {
    v32 = 54.0;
  }

  if (a2 >= v28)
  {
    v27 = v32;
  }

  if (a2 >= v26)
  {
    v25 = v27;
  }

  if (a2 >= v24)
  {
    v23 = v25;
  }

  if (a2 >= v22)
  {
    v21 = v23;
  }

  if (a2 >= v20)
  {
    v9 = v21;
  }

  else
  {
    v9 = v19;
  }

LABEL_15:
  inPropertyData = v9;
  v10 = AudioConverterSetProperty(*(a1 + 88), 0x5E71616Cu, 4u, &inPropertyData);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v10)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v14 = inPropertyData;
        v15 = FourccToCStr(v10);
        *buf = 136316930;
        v36 = v12;
        v37 = 2080;
        v38 = "_SoundDec_SetLocalQualityWithBitrate";
        v39 = 1024;
        v40 = 1425;
        v41 = 2048;
        v42 = a1;
        v43 = 1024;
        v44 = a2;
        v45 = 1024;
        v46 = v14;
        v47 = 1024;
        v48 = v10;
        v49 = 2080;
        v50 = v15;
        _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d SoundDec=%p failed to apply local quality with bitrate=%u quality=%d error=%d errorFourCC=%s", buf, 0x42u);
      }
    }
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v36 = v16;
      v37 = 2080;
      v38 = "_SoundDec_SetLocalQualityWithBitrate";
      v39 = 1024;
      v40 = 1427;
      v41 = 2048;
      v42 = a1;
      v43 = 1024;
      v44 = a2;
      v45 = 1024;
      v46 = inPropertyData;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d SoundDec=%p applied local quality with bitrate=%u quality=%d", buf, 0x32u);
    }
  }

  return v10;
}

uint64_t SoundDec_SetDTX(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = 2147811329;
  if (a1)
  {
    v3 = *(a1 + 48);
    v4 = v3 == 1935764850 || v3 == 1935767394;
    if (v4 || ((v5 = *(a1 + 8), v5 != 1935764850) ? (v6 = v3 == 1936029299) : (v6 = 1), !v6 ? (v7 = v5 == 1935767394) : (v7 = 1), !v7 ? (v8 = v5 == 1936029299) : (v8 = 1), v8))
    {
      inPropertyData = a2 != 0;
      v9 = AudioConverterSetProperty(*(a1 + 88), 0x65736164u, 4u, &inPropertyData);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v9)
      {
        if (ErrorLogLevelForModule >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SoundDec_SetDTX_cold_1();
          }
        }
      }

      else
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v16 = v11;
            v17 = 2080;
            v18 = "SoundDec_SetDTX";
            v19 = 1024;
            v20 = 1512;
            v21 = 1024;
            v22 = inPropertyData;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyEnableSAD dtxEnabled=%u", buf, 0x22u);
          }
        }

        return 0;
      }
    }
  }

  return v2;
}

uint64_t SoundDec_SetEVSSIDPeriod(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = 2147811329;
  inPropertyData = a2;
  if (a1 && (*(a1 + 48) == 1936029299 || *(a1 + 8) == 1936029299))
  {
    v3 = AudioConverterSetProperty(*(a1 + 88), 0x73696470u, 4u, &inPropertyData);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v3)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v12 = v5;
          v13 = 2080;
          v14 = "SoundDec_SetEVSSIDPeriod";
          v15 = 1024;
          v16 = 1525;
          v17 = 1024;
          v18 = inPropertyData;
          v19 = 1024;
          v20 = v3;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverterSetProperty failed to set property kAudioCodecPrivatePropertyEVSSIDPeriod %d with error %08x", buf, 0x28u);
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v12 = v7;
          v13 = 2080;
          v14 = "SoundDec_SetEVSSIDPeriod";
          v15 = 1024;
          v16 = 1528;
          v17 = 1024;
          v18 = inPropertyData;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyEVSSIDPeriod evsSIDPeriod=%u ", buf, 0x22u);
        }
      }

      return 0;
    }
  }

  return v2;
}

uint64_t SoundDec_SetEVSCodecCMRMode(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = 2147811329;
  inPropertyData = a2;
  if (a1 && (*(a1 + 48) == 1936029299 || *(a1 + 8) == 1936029299))
  {
    v3 = AudioConverterSetProperty(*(a1 + 88), 0x63657673u, 4u, &inPropertyData);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v3)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v12 = v5;
          v13 = 2080;
          v14 = "SoundDec_SetEVSCodecCMRMode";
          v15 = 1024;
          v16 = 1540;
          v17 = 1024;
          v18 = inPropertyData;
          v19 = 1024;
          v20 = v3;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverterSetProperty failed to set property kAudioCodecPrivatePropertyEVSCMRSettingInSDPOffer with evsCMRMode=%d with error=%08x", buf, 0x28u);
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v12 = v7;
          v13 = 2080;
          v14 = "SoundDec_SetEVSCodecCMRMode";
          v15 = 1024;
          v16 = 1543;
          v17 = 1024;
          v18 = inPropertyData;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyEVSCMRSettingInSDPOffer evsCMRMode=%d ", buf, 0x22u);
        }
      }

      return 0;
    }
  }

  return v2;
}

uint64_t SoundDec_SetCodecInitialBitrate(uint64_t a1, int a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  inPropertyData = a2;
  v5 = AudioConverterSetProperty(*(a1 + 88), 0x62726174u, 4u, &inPropertyData);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v5)
  {
    v9 = 2147811329;
    if (ErrorLogLevelForModule >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v25 = v10;
        v26 = 2080;
        v27 = "SoundDec_SetCodecInitialBitrate";
        v28 = 1024;
        v29 = 1556;
        v30 = 1024;
        v31 = inPropertyData;
        v32 = 1024;
        v33 = v5;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverterSetProperty failed to set property kAudioCodecPropertyCurrentTargetBitRate for bitrate=%u with error %08x", buf, 0x28u);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 6)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v25 = v12;
        v26 = 2080;
        v27 = "SoundDec_SetCodecInitialBitrate";
        v28 = 1024;
        v29 = 1559;
        v30 = 1024;
        v31 = inPropertyData;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPropertyCurrentTargetBitRate bitrate=%u", buf, 0x22u);
      }
    }

    if (a3)
    {
      LODWORD(v7) = inPropertyData;
      LODWORD(v8) = *(a1 + 60);
      v22 = (v7 / (*(a1 + 40) / v8));
      v14 = AudioConverterSetProperty(*(a1 + 88), 0x70616B6Cu, 4u, &v22);
      v15 = VRTraceGetErrorLogLevelForModule();
      if (v14)
      {
        if (v15 >= 3)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316674;
            v25 = v16;
            v26 = 2080;
            v27 = "SoundDec_SetCodecInitialBitrate";
            v28 = 1024;
            v29 = 1565;
            v30 = 1024;
            v31 = 1565;
            v32 = 1024;
            v33 = v22;
            v34 = 1024;
            v35 = inPropertyData;
            v36 = 1024;
            v37 = v14;
            _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/SoundDec.c:%d: Failed to set max packet size[%d] for bitrate[%d] with err[%d]", buf, 0x34u);
          }
        }
      }

      else if (v15 >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v25 = v18;
          v26 = 2080;
          v27 = "SoundDec_SetCodecInitialBitrate";
          v28 = 1024;
          v29 = 1567;
          v30 = 1024;
          v31 = v22;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set kAudioCodecPropertyPacketSizeLimitForVBR value=%d", buf, 0x22u);
        }
      }
    }

    v9 = 0;
    v20 = inPropertyData;
    *(a1 + 196) = inPropertyData;
    *(a1 + 200) = v20;
  }

  return v9;
}

uint64_t SoundDec_SetEVSChannelAwareOffset(uint64_t a1, int *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  result = 2147811329;
  if (a1 && (*(a1 + 48) == 1936029299 || *(a1 + 8) == 1936029299))
  {
    *(a1 + 232) = *a2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v7 = *a2;
      v8 = a2[1];
      v9 = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "SoundDec_SetEVSChannelAwareOffset";
      v13 = 1024;
      v14 = 1596;
      v15 = 1024;
      v16 = v7;
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d SoundDec_SetEVSChannelAwareOffset Requested EVSRFParams offset=%d indicator=%d", &v9, 0x28u);
    }

    return 0;
  }

  return result;
}

uint64_t SoundDec_SetEVSFormatHandling(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = 2147811329;
  if (!a1 || *(a1 + 48) != 1936029299 && *(a1 + 8) != 1936029299)
  {
    return v2;
  }

  inPropertyData = 0;
  switch(a2)
  {
    case 3:
      v3 = 3;
      break;
    case 2:
      v3 = 2;
      break;
    case 1:
      v3 = 1;
      break;
    default:
      goto LABEL_11;
  }

  inPropertyData = v3;
LABEL_11:
  v4 = AudioConverterSetProperty(*(a1 + 88), 0x66657673u, 4u, &inPropertyData);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v4)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v13 = v6;
        v14 = 2080;
        v15 = "SoundDec_SetEVSFormatHandling";
        v16 = 1024;
        v17 = 1623;
        v18 = 1024;
        v19 = inPropertyData;
        v20 = 1024;
        v21 = v4;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverterSetProperty failed to set property kAudioCodecPrivatePropertyEVSFormatHandling %d with error %08x", buf, 0x28u);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v13 = v8;
        v14 = 2080;
        v15 = "SoundDec_SetEVSFormatHandling";
        v16 = 1024;
        v17 = 1626;
        v18 = 1024;
        v19 = inPropertyData;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyEVSFormatHandling evsFormatHandling=%u", buf, 0x22u);
      }
    }

    return 0;
  }

  return v2;
}

uint64_t SoundDec_SetEVSDecodeRF(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = 2147811329;
  if (a1 && (*(a1 + 48) == 1936029299 || *(a1 + 8) == 1936029299))
  {
    inPropertyData[0] = -1431655935;
    inPropertyData[1] = a2;
    v4 = AudioConverterSetProperty(*(a1 + 88), 0x5E647066u, 8u, inPropertyData);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v4)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v13 = v6;
          v14 = 2080;
          v15 = "SoundDec_SetEVSDecodeRF";
          v16 = 1024;
          v17 = 1639;
          v18 = 1024;
          v19 = a2;
          v20 = 1024;
          v21 = v4;
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverterSetProperty failed to set property kAudioCodecPrivatePropertyEVSDecodeRF %d with error %08x", buf, 0x28u);
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v13 = v8;
          v14 = 2080;
          v15 = "SoundDec_SetEVSDecodeRF";
          v16 = 1024;
          v17 = 1642;
          v18 = 1024;
          v19 = a2;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyEVSDecodeRF frameType=%u", buf, 0x22u);
        }
      }

      return 0;
    }
  }

  return v2;
}

uint64_t SoundDec_SetAMRPayloadFormat(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = 2147811329;
  if (a1)
  {
    v4 = *(a1 + 48);
    v5 = v4 == 1935764850 || v4 == 1935767394;
    if (v5 || ((v6 = *(a1 + 8), v6 != 1935767394) ? (v7 = v6 == 1935764850) : (v7 = 1), v7))
    {
      inPropertyData = 1;
      if (a2)
      {
        inPropertyData = 2;
        *(a1 + 188) = 1;
      }

      v8 = AudioConverterSetProperty(*(a1 + 88), 0x73617066u, 4u, &inPropertyData);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v8)
      {
        if (ErrorLogLevelForModule >= 3)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            v17 = v10;
            v18 = 2080;
            v19 = "SoundDec_SetAMRPayloadFormat";
            v20 = 1024;
            v21 = 1660;
            v22 = 1024;
            v23 = 1660;
            v24 = 1024;
            v25 = inPropertyData;
            v26 = 1024;
            v27 = v8;
            _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/SoundDec.c:%d: AudioConverterSetProperty failed to set property kAudioCodecPrivatePropertyAMRPayloadFormat %d with error %08x", buf, 0x2Eu);
          }
        }
      }

      else
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v17 = v12;
            v18 = 2080;
            v19 = "SoundDec_SetAMRPayloadFormat";
            v20 = 1024;
            v21 = 1663;
            v22 = 1024;
            v23 = a2;
            _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertyAMRPayloadFormat isOctetAligned=%u", buf, 0x22u);
          }
        }

        return 0;
      }
    }
  }

  return v2;
}

uint64_t VCSoundDec_SetOpusApplication(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 8) == 1869641075 || *(a1 + 48) == 1869641075;
    if ((a2 - 1) <= 2 && (inPropertyData = (a2 - 1), v3))
    {
      v5 = off_1E85F5718[a2 - 1];
      v6 = AudioConverterSetProperty(*(a1 + 88), 0x61706C63u, 4u, &inPropertyData);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v6)
      {
        v4 = 2147811329;
        if (ErrorLogLevelForModule >= 3)
        {
          v8 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316674;
            v20 = v8;
            v21 = 2080;
            v22 = "VCSoundDec_SetOpusApplication";
            v23 = 1024;
            v24 = 1713;
            v25 = 2080;
            *v26 = v5;
            *&v26[8] = 1024;
            v27 = a2;
            v28 = 1024;
            v29 = inPropertyData;
            v30 = 1024;
            v31 = v6;
            v10 = "VCSoundDec [%s] %s:%d AudioConverterSetProperty failed to set property kAudioCodecPrivatePropertyOpusApplication application=%s[%d] converterApplication=%u status=%08x";
            v11 = v9;
            v12 = 56;
LABEL_17:
            _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
          }
        }
      }

      else
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            v20 = v15;
            v21 = 2080;
            v22 = "VCSoundDec_SetOpusApplication";
            v23 = 1024;
            v24 = 1716;
            v25 = 2080;
            *v26 = v5;
            *&v26[8] = 1024;
            v27 = a2;
            v28 = 1024;
            v29 = inPropertyData;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded in setting property kAudioCodecPrivatePropertyOpusApplication application=%s[%d] converterApplication=%u", buf, 0x32u);
          }
        }

        return 0;
      }
    }

    else
    {
      v4 = 2147811329;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v20 = v13;
          v21 = 2080;
          v22 = "VCSoundDec_SetOpusApplication";
          v23 = 1024;
          v24 = 1707;
          v25 = 1024;
          *v26 = v3;
          *&v26[4] = 1024;
          *&v26[6] = a2;
          v10 = "VCSoundDec [%s] %s:%d Invalid supplied parameters. codecIsOpus=%{BOOL}d application=%hhu";
          v11 = v14;
          v12 = 40;
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    v4 = 2147811329;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCSoundDec_SetOpusApplication_cold_1();
      }
    }
  }

  return v4;
}

uint64_t SoundDec_SetAACELDPacketLossConcealmentAlgorithm(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = 2147811329;
  if (!a1)
  {
    return v1;
  }

  v3 = *(a1 + 82) << 16;
  if (v3 != 0x100000 && v3 != 720896)
  {
    return v1;
  }

  inPropertyData = VCHardwareSettingsEmbedded_AACELDPacketLossConcealmentAlgorithm();
  if (inPropertyData == 6)
  {
    if (*a1 > 24000.0 && *(a1 + 28) == 2)
    {
      v4 = 5;
    }

    else
    {
      if (!VCFeatureFlagManager_AACELDImprovedCorePLCEnabled())
      {
        goto LABEL_11;
      }

      v4 = 7;
    }

    inPropertyData = v4;
  }

LABEL_11:
  v5 = AudioConverterSetProperty(*(a1 + 88), 0x636F6E6Du, 4u, &inPropertyData);
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v5)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v14 = v7;
        v15 = 2080;
        v16 = "SoundDec_SetAACELDPacketLossConcealmentAlgorithm";
        v17 = 1024;
        v18 = 1743;
        v19 = 1024;
        v20 = 1743;
        v21 = 1024;
        v22 = inPropertyData;
        v23 = 1024;
        v24 = v5;
        _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/Others/SoundDec.c:%d: AudioConverterSetProperty failed to set property kAudioCodecPropertyConcealmentMode %d with error %08x", buf, 0x2Eu);
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v14 = v9;
        v15 = 2080;
        v16 = "SoundDec_SetAACELDPacketLossConcealmentAlgorithm";
        v17 = 1024;
        v18 = 1746;
        v19 = 1024;
        v20 = inPropertyData;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPropertyConcealmentMode plcMode=%u", buf, 0x22u);
      }
    }

    return 0;
  }

  return v1;
}

uint64_t VCSoundDec_SetAACELDSBRInterval(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = 2147811329;
  inPropertyData = a2;
  if (a1 && *(a1 + 48) == 1633772390)
  {
    v3 = AudioConverterSetProperty(*(a1 + 88), 0x73627269u, 4u, &inPropertyData);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v3)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v12 = v5;
          v13 = 2080;
          v14 = "VCSoundDec_SetAACELDSBRInterval";
          v15 = 1024;
          v16 = 1758;
          v17 = 1024;
          v18 = inPropertyData;
          v19 = 1024;
          v20 = v3;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d AudioConverterSetProperty failed to set property kAudioCodecPrivatePropertySBRHeaderInterval sbrInterval=%u with error=0x%08x", buf, 0x28u);
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v12 = v7;
          v13 = 2080;
          v14 = "VCSoundDec_SetAACELDSBRInterval";
          v15 = 1024;
          v16 = 1761;
          v17 = 1024;
          v18 = inPropertyData;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d AudioConverterSetProperty succeeded to set property kAudioCodecPrivatePropertySBRHeaderInterval sbrInterval=%u", buf, 0x22u);
        }
      }

      return 0;
    }
  }

  return v2;
}

uint64_t SoundDec_SetEnablePacketSizeLimitForVBR(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 2147811329;
  }

  result = 0;
  *(a1 + 184) = a2;
  return result;
}

uint64_t SoundDec_SetBitrate(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 2147811329;
  }

  *(a1 + 200) = a2;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v6 = 136315906;
    v7 = v3;
    v8 = 2080;
    v9 = "SoundDec_SetBitrate";
    v10 = 1024;
    v11 = 1780;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d SoundDec_SetBitrate Requested bitrate: %d", &v6, 0x22u);
  }

  return 0;
}

uint64_t SoundDec_GetMagicCookie(uint64_t a1, void *outPropertyData, UInt32 *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = 2147811329;
  if (a1)
  {
    Property = AudioConverterGetProperty(*(a1 + 88), 0x6B756B69u, a3, outPropertyData);
    if (Property)
    {
      v7 = Property;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v10 = *a3;
          v12 = 136316418;
          v13 = v8;
          v14 = 2080;
          v15 = "SoundDec_GetMagicCookie";
          v16 = 1024;
          v17 = 1793;
          v18 = 2048;
          v19 = outPropertyData;
          v20 = 1024;
          v21 = v10;
          v22 = 1024;
          v23 = v7;
          _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d SoundDec_GetMagicCookie Failed to retrieve cookie [%p, %u] %d", &v12, 0x32u);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t SoundDec_GetSpeechCodecBundleData(uint64_t a1, uint64_t *outPropertyData)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = 2147811332;
  result = 2147811329;
  if (a1 && outPropertyData)
  {
    ioPropertyDataSize = 336;
    Property = AudioConverterGetProperty(*(a1 + 88), 0x626E6464u, &ioPropertyDataSize, outPropertyData);
    if (!Property)
    {
      return 0;
    }

    v7 = Property;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = *outPropertyData;
        v11 = *(outPropertyData + 2);
        *buf = 136316418;
        v14 = v8;
        v15 = 2080;
        v16 = "SoundDec_GetSpeechCodecBundleData";
        v17 = 1024;
        v18 = 1810;
        v19 = 2048;
        v20 = v10;
        v21 = 1024;
        v22 = v11;
        v23 = 1024;
        v24 = v7;
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d SoundDec_GetSpeechCodecBundleData Failed to get bundle data [%p, %u] %d", buf, 0x32u);
      }
    }

    return v3;
  }

  return result;
}

uint64_t SoundDec_SetMagicCookie(uint64_t a1, void *inPropertyData, UInt32 inPropertyDataSize)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = 2147811329;
  if (a1)
  {
    if (*(a1 + 192) || (v10 = AudioConverterSetProperty(*(a1 + 88), 0x6B756B69u, inPropertyDataSize, inPropertyData), *(a1 + 192) = 1, !v10))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315906;
          v15 = v6;
          v16 = 2080;
          v17 = "SoundDec_SetMagicCookie";
          v18 = 1024;
          v19 = 1832;
          v20 = 1024;
          LODWORD(v21) = inPropertyDataSize;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCSoundDec [%s] %s:%d SoundDec_SetMagicCookie succeeded %d", &v14, 0x22u);
        }
      }

      return 0;
    }

    else
    {
      v11 = v10;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v14 = 136316418;
          v15 = v12;
          v16 = 2080;
          v17 = "SoundDec_SetMagicCookie";
          v18 = 1024;
          v19 = 1829;
          v20 = 2048;
          v21 = inPropertyData;
          v22 = 1024;
          v23 = inPropertyDataSize;
          v24 = 1024;
          v25 = v11;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, "VCSoundDec [%s] %s:%d SoundDec_SetMagicCookie Failed to set cookie [%p, %u] %d", &v14, 0x32u);
        }
      }
    }
  }

  return v3;
}

uint64_t SoundDec_FormatASBD(int a1, uint64_t a2, int a3, int a4, int a5, double a6)
{
  v6 = a1 & 0xFFFF0000;
  if ((a1 & 0xFFFF0000) >= 983040)
  {
    if (v6 >= 0x400000)
    {
      if (v6 < 0x800000)
      {
        if (v6 != 0x400000)
        {
          if (v6 != 5242880)
          {
            return 0;
          }

          v8 = 0;
          v7 = 0;
          if (a1 == 32000)
          {
            v11 = 640;
          }

          else
          {
            v11 = 160;
          }

          if (a1 == 16000)
          {
            v12 = 320;
          }

          else
          {
            v12 = v11;
          }

          *a2 = a1;
          *(a2 + 8) = 1936029299;
          v13 = v12 * a5;
          *(a2 + 16) = 0;
          goto LABEL_63;
        }

        v17 = 1935764850;
        *a2 = a1;
        *(a2 + 12) = 0;
        *(a2 + 16) = 0;
        if (a1 == 8000)
        {
          v10 = 160;
        }

        else
        {
          if (a1 != 16000)
          {
            goto LABEL_57;
          }

          v17 = 1935767394;
          v10 = 320;
        }

        v8 = 0;
        v7 = 0;
        *(a2 + 8) = v17;
        goto LABEL_62;
      }

      if (v6 != 0x800000)
      {
        if (v6 != 0x1000000)
        {
          return 0;
        }

        v8 = 0;
        v7 = 0;
        *a2 = a1;
        *(a2 + 8) = 1953790320;
        *(a2 + 16) = 0;
        *(a2 + 20) = a3;
LABEL_64:
        a4 = 1;
        goto LABEL_65;
      }

      v8 = 0;
      v7 = 0;
      *a2 = 0x40D7700000000000;
      v16 = xmmword_1DBD47C40;
    }

    else if (v6 >= 1179648)
    {
      if (v6 != 1179648)
      {
        if (v6 == 0x200000)
        {
          v8 = 0;
          v7 = 0;
          *a2 = a1;
          *(a2 + 8) = 1869641075;
          *(a2 + 16) = 0;
          *(a2 + 20) = (a1 * a6 * a5);
LABEL_65:
          *(a2 + 24) = v8;
          *(a2 + 28) = a4;
          *(a2 + 32) = v7;
          *(a2 + 36) = 0;
          return 0;
        }

        return 0;
      }

      v8 = 0;
      v7 = 0;
      *a2 = 0x40D7700000000000;
      v16 = xmmword_1DBD47C30;
    }

    else
    {
      if (v6 != 983040)
      {
        if (v6 == 0x100000)
        {
          v8 = 0;
          v7 = 0;
          *a2 = a1;
          if (a5 == 1)
          {
            v9 = 1633772390;
          }

          else
          {
            v9 = 1633772389;
          }

          *(a2 + 8) = v9;
          *(a2 + 12) = 0;
          *(a2 + 16) = 0;
          *(a2 + 20) = a3;
          goto LABEL_65;
        }

        return 0;
      }

      v8 = 0;
      v7 = 0;
      *a2 = 0x40CF400000000000;
      v16 = xmmword_1DBD47C20;
    }

LABEL_56:
    *(a2 + 8) = v16;
    goto LABEL_64;
  }

  if (v6 >= 327680)
  {
    if (v6 < 720896)
    {
      if (v6 == 327680)
      {
        *a2 = a1;
        v14 = xmmword_1DBD47C60;
LABEL_48:
        *(a2 + 8) = v14;
        v7 = 8;
        v8 = 1;
        goto LABEL_64;
      }

      if (v6 != 655360)
      {
        return 0;
      }

      *a2 = a1;
      *(a2 + 8) = 1936745848;
      *(a2 + 16) = 0;
      if (a1 == 8000)
      {
        v10 = 160;
        goto LABEL_59;
      }

      if (a1 == 16000)
      {
        v10 = 320;
LABEL_59:
        v8 = 0;
        v7 = 0;
LABEL_62:
        v13 = v10 * a5;
LABEL_63:
        *(a2 + 20) = v13;
        goto LABEL_64;
      }

LABEL_57:
      v8 = 0;
      v7 = 0;
      goto LABEL_64;
    }

    if (v6 != 720896)
    {
      if (v6 != 851968)
      {
        return 0;
      }

      *a2 = a1;
      v15 = xmmword_1DBD47C90;
LABEL_44:
      *(a2 + 8) = v15;
      v7 = 32;
      a4 = 1;
      goto LABEL_45;
    }

    v8 = 0;
    v7 = 0;
    *a2 = a1;
    v16 = xmmword_1DBD47C50;
    goto LABEL_56;
  }

  if (v6 >= 196608)
  {
    if (v6 == 196608)
    {
      *a2 = a1;
      *(a2 + 8) = xmmword_1DBD47C80;
      v7 = 16;
      a4 = 1;
      v8 = 2;
      goto LABEL_65;
    }

    if (v6 != 0x40000)
    {
      return 0;
    }

    *a2 = a1;
    v14 = xmmword_1DBD47C70;
    goto LABEL_48;
  }

  if (v6 == 0x10000)
  {
    *a2 = a1;
    v15 = xmmword_1DBD453C0;
    goto LABEL_44;
  }

  if (v6 == 0x20000)
  {
    *a2 = a1;
    *(a2 + 8) = xmmword_1DBD453C0;
    v7 = 32;
    a4 = 2;
LABEL_45:
    v8 = 4;
    goto LABEL_65;
  }

  return 0;
}