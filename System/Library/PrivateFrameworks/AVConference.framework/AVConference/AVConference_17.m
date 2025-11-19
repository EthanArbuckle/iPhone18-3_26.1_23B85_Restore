BOOL TransportMapPacketMultiplexModeToVTPMode(_BOOL8 result)
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

      TransportMapPacketMultiplexModeToVTPMode_cold_1();
    }

    return 0;
  }

  return result;
}

uint64_t TPGetRemoteICEVersion()
{
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  v0 = ICEGetRemoteICEVersion();
  CheckOutHandleDebug();
  return v0;
}

uint64_t TPStopConnectivityCheck()
{
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  v0 = ICEStopConnectivityCheck();
  CheckOutHandleDebug();
  return v0;
}

uint64_t TPGetNextBestCandidate()
{
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  BestCandidate = ICEGetNextBestCandidate();
  CheckOutHandleDebug();
  return BestCandidate;
}

uint64_t TPGetRemoteCIDForDstIPPort()
{
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  v0 = ICEGetRemoteCIDForDstIPPort();
  CheckOutHandleDebug();
  return v0;
}

uint64_t TPSetSKEState()
{
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  v0 = ICESetSKEState();
  CheckOutHandleDebug();
  return v0;
}

uint64_t TPSetForceRelay()
{
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  ICESetForceRelay();
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPSetForceIPv6()
{
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  ICESetForceIPv6();
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPSetReportingAgent()
{
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  v0 = ICESetReportingAgent();
  CheckOutHandleDebug();
  return v0;
}

uint64_t TPSetICETimeout(double a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v2;
      v8 = 2080;
      v9 = "TPSetICETimeout";
      v10 = 1024;
      v11 = 4047;
      v12 = 2048;
      v13 = a1;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Setting ice timeout to %f", &v6, 0x26u);
    }
  }

  v4 = ICESetTimeout();
  CheckOutHandleDebug();
  return v4;
}

uint64_t TPSetARPLHandler(uint64_t a1, const void *a2)
{
  result = CheckInHandleDebug();
  if (result)
  {
    v4 = result;
    v5 = *(result + 34544);
    if (v5)
    {
      _Block_release(v5);
    }

    *(v4 + 34544) = _Block_copy(a2);

    return CheckOutHandleDebug();
  }

  return result;
}

uint64_t TPCleanupARPLHandler()
{
  result = CheckInHandleDebug();
  if (result)
  {
    v1 = result;
    v2 = *(result + 34544);
    if (v2)
    {
      _Block_release(v2);
      *(v1 + 34544) = 0;
    }

    return CheckOutHandleDebug();
  }

  return result;
}

uint64_t TPUpdateICERole(uint64_t a1, uint64_t a2, int a3, int a4, const __CFString *a5)
{
  v8 = CheckInHandleDebug();
  if (!v8)
  {
    return 2148466690;
  }

  v9 = v8;
  *(v8 + 34536) = a3;
  pthread_rwlock_rdlock((v8 + 1064));
  v10 = *(v9 + 1056);
  if (v10)
  {
    if (!a4)
    {
      a5 = 0;
    }

    do
    {
      *(v10 + 2116) = 0;
      if (!*(v10 + 2068))
      {
        VTP_SetSessionID(*v10, a5);
        *(v10 + 2120) = a4;
        *(v10 + 2116) = a3;
      }

      v10 = *(v10 + 2144);
    }

    while (v10);
  }

  pthread_rwlock_unlock((v9 + 1064));
  v11 = ICEUpdateRole();
  CheckOutHandleDebug();
  return v11;
}

uint64_t TPUpdateQoS(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148466690;
  }

  *(v3 + 34516) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPGetConnErrorCode()
{
  if (!CheckInHandleDebug())
  {
    return 2148466690;
  }

  v0 = ICEGetConnErrorCode();
  CheckOutHandleDebug();
  return v0;
}

uint64_t TPSetDataPacketReceivedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2148466690;
  }

  v6 = v5;
  v7 = (v5 + 0x8000);
  pthread_mutex_lock((v5 + 34584));
  v7[223] = a2;
  if (a3)
  {
    v8 = v7[224];
    v9 = v7[226];
    v10 = *(a3 + 16);
    *(v7 + 112) = *a3;
    v7[226] = v10;
    v11 = v7[225];
    if (v11 && v7[224])
    {
      v11();
    }

    if (v9)
    {
      v12 = v8 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v9(v8);
    }
  }

  pthread_mutex_unlock((v6 + 34584));
  CheckOutHandleDebug();
  return 0;
}

uint64_t TPProcessRemoteInterfaceChangeMessage(uint64_t a1, int a2, int a3, const UInt8 *a4, int a5, int a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (CheckInHandleDebug())
  {
    if (!a4)
    {
      v16 = 2148859905;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          TPProcessRemoteInterfaceChangeMessage_cold_1();
        }
      }

      goto LABEL_25;
    }

    if (a3 && (v11 = CFDataCreate(0, a4, a5), v12 = ICEConnectionDataContainsCallID(), CFRelease(v11), !v12))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v24 = 136315650;
          v25 = v17;
          v26 = 2080;
          v27 = "needUpdateRemoteCandidateList";
          v28 = 1024;
          v29 = 4196;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d HandoverReport: needUpdateRemoteCandidateList didn't find matched callID", &v24, 0x1Cu);
        }
      }
    }

    else
    {
      v13 = CheckInHandleDebug();
      if (v13)
      {
        v14 = v13;
        pthread_mutex_lock((v13 + 168));
        v15 = *(v14 + 232);
        if (v15)
        {
          while (*(v15 + 148) != a2)
          {
            v15 = *(v15 + 912);
            if (!v15)
            {
              goto LABEL_9;
            }
          }

          v19 = *(v15 + 208);
          pthread_mutex_unlock((v14 + 168));
          CheckOutHandleDebug();
          if (v19 < a6)
          {
            v20 = ICEAddRemovedRemoteIPPort();
            if ((v20 & 0x80000000) == 0)
            {
              v20 = ICEProcessRemoteInterfaceChange();
            }

            v16 = v20;
            goto LABEL_25;
          }
        }

        else
        {
LABEL_9:
          pthread_mutex_unlock((v14 + 168));
          CheckOutHandleDebug();
        }
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315650;
        v25 = v21;
        v26 = 2080;
        v27 = "TPProcessRemoteInterfaceChangeMessage";
        v28 = 1024;
        v29 = 4236;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d HandoverReport: TPProcessRemoteInterfaceChangeMessage, remote candidate list already updated", &v24, 0x1Cu);
      }
    }

    v16 = 0;
LABEL_25:
    CheckOutHandleDebug();
    return v16;
  }

  return 2148466690;
}

uint64_t TPSetAllowSameSourceDestination(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148466690;
  }

  *(v3 + 34648) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t SendUDPPacketForCList(uint64_t a1, void *a2, int a3, uint64_t a4, int *a5, int *a6)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*a6 == 5 && (a6[3] & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      SendUDPPacketForCList_cold_1();
    }
  }

  memset(v60, 0, 128);
  IPToString();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    v13 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a4 + 36);
        *buf = 136316162;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "SendUDPPacketForCList";
        *&buf[22] = 1024;
        *&buf[24] = 218;
        *&buf[28] = 2080;
        *&buf[30] = v60;
        *&buf[38] = 1024;
        *&buf[40] = v14;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SendUDPPacketForCList: SENDING PACKET FROM %s:%d", buf, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a4 + 36);
      *buf = 136316162;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = "SendUDPPacketForCList";
      *&buf[22] = 1024;
      *&buf[24] = 218;
      *&buf[28] = 2080;
      *&buf[30] = v60;
      *&buf[38] = 1024;
      *&buf[40] = v38;
      _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, "SIP [%s] %s:%d SendUDPPacketForCList: SENDING PACKET FROM %s:%d", buf, 0x2Cu);
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  memset(buf, 0, sizeof(buf));
  IPToString();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    v17 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a5 + 18);
        *&v49[16] = 136316162;
        *&v49[20] = v15;
        *&v49[28] = 2080;
        *&v49[30] = "SendUDPPacketForCList";
        *&v49[38] = 1024;
        *&v49[40] = 222;
        v50 = 2080;
        v51 = buf;
        v52 = 1024;
        v53 = v18;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SendUDPPacketForCList: SENDING PACKET TO %s:%d", &v49[16], 0x2Cu);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v39 = *(a5 + 18);
      *&v49[16] = 136316162;
      *&v49[20] = v15;
      *&v49[28] = 2080;
      *&v49[30] = "SendUDPPacketForCList";
      *&v49[38] = 1024;
      *&v49[40] = 222;
      v50 = 2080;
      v51 = buf;
      v52 = 1024;
      v53 = v39;
      _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, "SIP [%s] %s:%d SendUDPPacketForCList: SENDING PACKET TO %s:%d", &v49[16], 0x2Cu);
    }
  }

  v19 = 2148466710;
  if (!a1)
  {
    return v19;
  }

  v40 = a2;
  v20 = MEMORY[0x1E69E99B8];
  while (1)
  {
    v21 = *(a1 + 2072) & 1;
    if (v21 == (*a4 & 1))
    {
      v22 = (a1 + 2092);
      if (v21)
      {
        if (*v22 != *(a4 + 20) || *(a1 + 2100) != *(a4 + 28))
        {
LABEL_34:
          if (*(a1 + 2092) != *v20 || *(a1 + 2100) != v20[1])
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v23 = *v22;
        if (v23 != *(a4 + 20))
        {
          if (v23)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }

      if (*(a1 + 2108) == *(a4 + 36))
      {
        break;
      }
    }

    if (v21)
    {
      goto LABEL_34;
    }

    if (*(a1 + 2092))
    {
      goto LABEL_40;
    }

LABEL_39:
    if (*(a1 + 2108) == *(a4 + 36))
    {
      break;
    }

LABEL_40:
    if (a6[40])
    {
      break;
    }

LABEL_46:
    a1 = *(a1 + 2144);
    if (!a1)
    {
      return v19;
    }
  }

  memset(v49, 170, sizeof(v49));
  v26 = *a5;
  if (!v21 && (v26 & 1) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v43 = 136315650;
        v44 = v27;
        v45 = 2080;
        v46 = "SendUDPPacketForCList";
        v47 = 1024;
        v48 = 237;
        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SendUDPPacketForCList: skip mismatched interface: IPv4", v43, 0x1Cu);
      }
    }

    goto LABEL_46;
  }

  if (v26)
  {
    v42 = 28;
    v29 = IPPORTToSA6();
  }

  else
  {
    v42 = 16;
    v29 = IPPORTToSA();
  }

  v30 = v29;
  v31 = *(a1 + 2120);
  if (v31 && *(a1 + 2116))
  {
    v32 = *a6;
    goto LABEL_55;
  }

  v32 = *a6;
  if ((*a6 | 4) != 6)
  {
    v34 = 0;
    *a6 = 0;
    v33 = 1;
    goto LABEL_58;
  }

LABEL_55:
  v33 = (v32 & 0xFFFFFFFE) != 4;
  v34 = (v32 & 0xFFFFFFFE) == 4;
  if ((v32 | 4) != 6)
  {
LABEL_58:
    a6[1] = v31;
  }

  a6[37] = v34;
  if (v33 || (v35 = *(a1 + 2136), v35 == 0xFFFFFFFFLL))
  {
    v36 = VTP_Sendto(*a1, v40, a3, 0, v30, v42, a6);
  }

  else
  {
    v36 = ARPL_Sendto(v35, *a1, v40, a3, 0, v30, v42, a6);
  }

  if (v36 == -1)
  {
    return *__error() | 0xC00F0000;
  }

  else
  {
    return 0;
  }
}

uint64_t TPEnsureRecvProcStarted(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  pthread_rwlock_wrlock((a2 + 1064));
  if (*(a2 + 24))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "TPEnsureRecvProcStarted";
        v16 = 1024;
        v17 = 2589;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPRecvProc already started", &v12, 0x1Cu);
      }
    }

    VTP_Close(*(a2 + 12));
    v6 = 0;
    *(a2 + 12) = -1;
  }

  else
  {
    v8 = pthread_create((a2 + 24), 0, TPRecvProc, a1);
    if (v8)
    {
      v6 = v8 | 0xC00F0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          TPEnsureRecvProcStarted_cold_1();
        }
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a2 + 24);
          v12 = 136315906;
          v13 = v9;
          v14 = 2080;
          v15 = "TPEnsureRecvProcStarted";
          v16 = 1024;
          v17 = 2587;
          v18 = 2048;
          v19 = v11;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPRecvProc(%p) started", &v12, 0x26u);
        }
      }

      v6 = 0;
    }
  }

  pthread_rwlock_unlock((a2 + 1064));
  return v6;
}

uint64_t TPRecvProc(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  pthread_setname_np("com.apple.avconference.transport.recvproc");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v2;
      *&buf[12] = 2080;
      *&buf[14] = "TPRecvProc";
      *&buf[22] = 1024;
      *&buf[24] = 1733;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Transport(UDP) Thread start...", buf, 0x1Cu);
    }
  }

  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return -2146500606;
  }

  v5 = v4;
  v6 = micro();
  v7 = 0;
LABEL_6:
  v8 = v6 + 30.0;
  while (1)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    memset(buf, 0, sizeof(buf));
    pthread_rwlock_rdlock((v5 + 1064));
    pthread_rwlock_rdlock((v5 + 1272));
    if (*(v5 + 8))
    {
      pthread_rwlock_unlock((v5 + 1272));
      pthread_rwlock_unlock((v5 + 1064));
      goto LABEL_64;
    }

    if (*(v5 + 12) == -1)
    {
      *(v5 + 12) = VTP_Socket(2, 1, 6);
    }

    pthread_rwlock_unlock((v5 + 1272));
    v9 = *(v5 + 12);
    if (v9 == -1)
    {
      break;
    }

    if (__darwin_check_fd_set_overflow(*(v5 + 12), buf, 0))
    {
      *&buf[(v9 >> 3) & 0x1FFFFFFFFFFFFFFCLL] |= 1 << v9;
    }

    v10 = *(v5 + 12);
    for (i = *(v5 + 1056); i; i = *(i + 2144))
    {
      v12 = *i;
      if (__darwin_check_fd_set_overflow(*i, buf, 0))
      {
        *&buf[(v12 >> 3) & 0x1FFFFFFFFFFFFFFCLL] |= 1 << v12;
      }

      if (*i > v10)
      {
        v10 = *i;
      }
    }

    pthread_rwlock_unlock((v5 + 1064));
    pthread_rwlock_rdlock((v5 + 1272));
    for (j = *(v5 + 1264); j; j = *(j + 2144))
    {
      v14 = *j;
      if (__darwin_check_fd_set_overflow(*j, buf, 0))
      {
        *&buf[(v14 >> 3) & 0x1FFFFFFFFFFFFFFCLL] |= 1 << v14;
      }

      if (*j > v10)
      {
        v10 = *j;
      }
    }

    pthread_rwlock_unlock((v5 + 1272));
    v15 = v8 - micro();
    if (v15 <= 0.0)
    {
LABEL_55:
      v6 = micro();
      SendRelayHB();
      goto LABEL_6;
    }

    v31 = v15;
    LODWORD(v32) = ((v15 - v15) * 1000000.0);
    v16 = VTP_Select((v10 + 1), buf, 0, 0, &v31);
    if (v16 == -1)
    {
      if (*__error() != 9)
      {
        v7 = *__error() | 0xC00F0000;
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            TPRecvProc_cold_1();
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if (!v16)
      {
        goto LABEL_55;
      }

      pthread_rwlock_rdlock((v5 + 1064));
      for (k = *(v5 + 1056); k; k = *(k + 2144))
      {
        v18 = *k;
        if (__darwin_check_fd_set_overflow(*k, buf, 0))
        {
          if ((*&buf[(v18 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v18))
          {
            v31 = 0;
            LODWORD(v32) = 0;
            v19 = *k;
            if (__darwin_check_fd_set_overflow(*k, buf, 0))
            {
              if ((*&buf[(v19 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v19))
              {
                while (1)
                {
                  v20 = RecvMessageUDP(a1, v5, k);
                  if (v20 < 0)
                  {
                    break;
                  }

                  if (VTP_Select((v10 + 1), buf, 0, 0, &v31) > 0)
                  {
                    v21 = *k;
                    if (__darwin_check_fd_set_overflow(*k, buf, 0))
                    {
                      if ((*&buf[(v21 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v21))
                      {
                        continue;
                      }
                    }
                  }

                  v7 = 0;
                  goto LABEL_41;
                }

                v7 = v20;
              }
            }
          }
        }

LABEL_41:
        ;
      }

      pthread_rwlock_unlock((v5 + 1064));
      pthread_rwlock_rdlock((v5 + 1272));
      for (m = *(v5 + 1264); m; m = *(m + 2144))
      {
        v23 = *m;
        if (__darwin_check_fd_set_overflow(*m, buf, 0))
        {
          if ((*&buf[(v23 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v23))
          {
            v31 = 0;
            LODWORD(v32) = 0;
            v24 = *m;
            if (__darwin_check_fd_set_overflow(*m, buf, 0))
            {
              if ((*&buf[(v24 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v24))
              {
                while (1)
                {
                  v25 = RecvMessageUDP(a1, v5, m);
                  if (v25 < 0)
                  {
                    break;
                  }

                  if (VTP_Select((v10 + 1), buf, 0, 0, &v31) > 0)
                  {
                    v26 = *m;
                    if (__darwin_check_fd_set_overflow(*m, buf, 0))
                    {
                      if ((*&buf[(v26 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v26))
                      {
                        continue;
                      }
                    }
                  }

                  v7 = 0;
                  goto LABEL_53;
                }

                v7 = v25;
              }
            }
          }
        }

LABEL_53:
        ;
      }

      pthread_rwlock_unlock((v5 + 1272));
    }
  }

  pthread_rwlock_unlock((v5 + 1064));
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      TPRecvProc_cold_2();
    }
  }

LABEL_64:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 136315906;
      v34 = v29;
      v35 = 2080;
      v36 = "TPRecvProc";
      v37 = 1024;
      v38 = 1880;
      v39 = 1024;
      v40 = v7;
      _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Transport(UDP) Thread end(%08X)...", v33, 0x22u);
    }
  }

  CheckOutHandleDebug();
  return v7;
}

void SendRelayHB()
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = -1431655766;
  v3 = -1431655766;
  v1 = 0;
  DLFindActiveDialogs(&v3, &v1);
  if (v3 < 1)
  {
    ICERefreshAllRelayBinding();
  }

  else
  {
    for (i = 0; i < v3; ++i)
    {
      DLGetCallID(*(v1 + i), &v2);
      ICERefreshRelayBinding();
    }

    if (v1)
    {
      free(v1);
    }
  }
}

uint64_t RecvMessageUDP(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v116 = *MEMORY[0x1E69E9840];
  v90 = 0;
  memset(__b, 170, sizeof(__b));
  if (a3[530] && a3[529] && *(a3 + 267) != 0xFFFFFFFFLL || (VTP_Recvfrom(*a3, &v90) & 0x80000000) != 0)
  {
    v11 = *__error() | 0xC00F0000;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *a3;
        *buf = 136316418;
        *&buf[4] = v12;
        *&buf[12] = 2080;
        *&buf[14] = "RecvMessageUDP";
        *&buf[22] = 1024;
        *&buf[24] = 1473;
        *&buf[28] = 1024;
        *&buf[30] = 1473;
        *&buf[34] = 1024;
        *&buf[36] = v14;
        *&buf[40] = 1024;
        *&buf[42] = v11;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: recvfrom(%d) failed(%08X)", buf, 0x2Eu);
      }
    }

    return v11;
  }

  v6 = v90;
  v7 = *(v90 + 66);
  if (v7 >= 0x800)
  {
    v8 = 2048;
  }

  else
  {
    v8 = *(v90 + 66);
  }

  v9 = a3 + 3;
  memcpy(a3 + 3, *(v90 + 67), v8);
  if (!v7)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return 0;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v18 = *a3;
    *buf = 136316162;
    *&buf[4] = v16;
    *&buf[12] = 2080;
    *&buf[14] = "RecvMessageUDP";
    *&buf[22] = 1024;
    *&buf[24] = 1469;
    *&buf[28] = 1024;
    *&buf[30] = 1469;
    *&buf[34] = 1024;
    *&buf[36] = v18;
    v19 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: recvfrom(%d) returned 0: empty message";
    goto LABEL_25;
  }

  *(v6 + 88) = *(a3 + 1054);
  *(v6 + 35) |= a3[518];
  if (a3[530] && a3[529])
  {
    v10 = *(v6 + 46);
  }

  else
  {
    v10 = *(v6 + 46);
    if ((v10 | 4) != 6)
    {
      *(v6 + 46) = 0;
      goto LABEL_37;
    }
  }

  v15 = 1;
  if (v10 > 3)
  {
    switch(v10)
    {
      case 4:
        if (v6[196] != 1 || !DTLS_IsConnected())
        {
          return 0;
        }

        goto LABEL_43;
      case 5:
        if (v6[196] != 1)
        {
          goto LABEL_131;
        }

        if (DTLS_IsConnected())
        {
          goto LABEL_43;
        }

        if ((v90[196] & 1) == 0)
        {
LABEL_131:
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v63 = VRTraceErrorLogLevelToCSTR();
            v64 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = v63;
              *&buf[12] = 2080;
              *&buf[14] = "RecvMessageUDP";
              *&buf[22] = 1024;
              *&buf[24] = 1536;
              _os_log_impl(&dword_1DB56E000, v64, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d >>>> SKIPPING INCOMING ARPL PACKET! <!bEncrypted>  (in Transport) <<<<<", buf, 0x1Cu);
            }
          }
        }

        if (DTLS_IsConnected())
        {
          return 0;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          return 0;
        }

        v65 = VRTraceErrorLogLevelToCSTR();
        v66 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return 0;
        }

        *buf = 136315650;
        *&buf[4] = v65;
        *&buf[12] = 2080;
        *&buf[14] = "RecvMessageUDP";
        *&buf[22] = 1024;
        *&buf[24] = 1539;
        v19 = "SIP [%s] %s:%d >>>> SKIPPING INCOMING ARPL PACKET! <!DTLS_IsConnected(pCList->hDTLS)>  (in Transport) <<<<<";
        v20 = v66;
        v21 = 28;
        goto LABEL_26;
      case 6:
        goto LABEL_43;
    }

    goto LABEL_30;
  }

  if ((v10 - 1) < 2)
  {
    goto LABEL_43;
  }

  if (!v10)
  {
LABEL_37:
    __strncpy_chk();
    __b[v8] = 0;
    v28 = strchr(__b, 10);
    if (v28)
    {
      *v28 = 0;
    }

    if (!strnstr(__b, "SIP/", v8))
    {
      v15 = 1;
      goto LABEL_43;
    }

    if (*(a3 + 266) == 0xFFFFFFFFLL)
    {
      v15 = 0;
      goto LABEL_43;
    }

    return 0;
  }

  if (v10 != 3)
  {
LABEL_30:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(v90 + 47);
        *buf = 136315906;
        *&buf[4] = v22;
        *&buf[12] = 2080;
        *&buf[14] = "RecvMessageUDP";
        *&buf[22] = 1024;
        *&buf[24] = 1553;
        *&buf[28] = 1024;
        *&buf[30] = v24;
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d RecvMessageUDP: ignore unrecognized OFT packet for callID %08X", buf, 0x22u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      return 0;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v26 = a3[516];
    v27 = a3[530];
    *buf = 136316162;
    *&buf[4] = v25;
    *&buf[12] = 2080;
    *&buf[14] = "RecvMessageUDP";
    *&buf[22] = 1024;
    *&buf[24] = 1554;
    *&buf[28] = 1024;
    *&buf[30] = v26;
    *&buf[34] = 1024;
    *&buf[36] = v27;
    v19 = "SIP [%s] %s:%d RecvMessageUDP: localCallID == %08X remoteCallID == %08X";
LABEL_25:
    v20 = v17;
    v21 = 40;
LABEL_26:
    _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    return 0;
  }

  if (DTLS_IsConnected())
  {
    return 0;
  }

LABEL_43:
  if ((*(v90 + 46) | 4) == 4)
  {
    *(v9 + v8) = 0;
  }

  v109 = 0;
  v110 = &v109;
  v111 = 0x4000000000;
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v112 = v29;
  v113 = v29;
  v114 = 0xAAAAAAAAAAAAAAAALL;
  SAToIPPORT();
  if ((v15 & 1) == 0)
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
          *buf = 136315650;
          *&buf[4] = v56;
          *&buf[12] = 2080;
          *&buf[14] = "RecvMessageUDP";
          *&buf[22] = 1024;
          *&buf[24] = 1567;
          _os_log_impl(&dword_1DB56E000, v57, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d RecvMessageUDP: pass message SIP", buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        RecvMessageUDP_cold_1();
      }
    }

    *&v106 = 0;
    *(&v106 + 1) = &v106;
    *v107 = 0x4000000000;
    *&v107[8] = *(v90 + 140);
    *&v107[24] = *(v90 + 156);
    v108 = *(v90 + 172);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x16800000000;
    memcpy(&buf[24], v90 + 184, 0x150uLL);
    v67 = malloc_type_malloc(v8 + 1, 0x994D3769uLL);
    memcpy(v67, v9, v8 + 1);
    *(v67 + v8) = 0;
    global_queue = dispatch_get_global_queue(2, 0);
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 0x40000000;
    v88[2] = __RecvMessageUDP_block_invoke;
    v88[3] = &unk_1E85F6E20;
    v88[7] = a1;
    v88[8] = v67;
    v89 = v8;
    v88[4] = buf;
    v88[5] = &v106;
    v88[6] = &v109;
    dispatch_async(global_queue, v88);
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v106, 8);
    goto LABEL_104;
  }

  v30 = *(v90 + 46);
  if (v7 != 16 || v30 || *v9 != 0x1000000)
  {
    v59 = a2 + 0x8000;
    if (v30 > 4)
    {
      if (v30 == 5)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v86 = VRTraceErrorLogLevelToCSTR();
          v87 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = v86;
            *&buf[12] = 2080;
            *&buf[14] = "RecvMessageUDP";
            *&buf[22] = 1024;
            *&buf[24] = 1629;
            *&buf[28] = 2080;
            *&buf[30] = v9;
            *&buf[38] = 1024;
            *&buf[40] = v8;
            _os_log_impl(&dword_1DB56E000, v87, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d >>>>> Received incoming ARPL data with szMessage=[%s] and length=[%d] <NEED TO DO SOMETHING HERE> (in Transport) <<<<<", buf, 0x2Cu);
          }
        }

        (*(*(v59 + 1776) + 16))();
        goto LABEL_104;
      }

      if (v30 != 6)
      {
        goto LABEL_116;
      }
    }

    else if (v30 != 2)
    {
      if (v30 == 4)
      {
        v60 = malloc_type_malloc(v8 + 1, 0x67387212uLL);
        memcpy(v60, v9, v8 + 1);
        v61 = v90;
        memcpy(buf, v90 + 184, 0x150uLL);
        v62 = dispatch_get_global_queue(2, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __RecvMessageUDP_block_invoke_11;
        block[3] = &unk_1E85F6E48;
        block[5] = a1;
        block[6] = v60;
        v94 = v8;
        memcpy(v92, buf, sizeof(v92));
        v93 = v61;
        block[4] = &v109;
        dispatch_async(v62, block);
        goto LABEL_104;
      }

LABEL_116:
      v74 = malloc_type_calloc(1uLL, 0x868uLL, 0x1020040D8EC2E6EuLL);
      if (v74)
      {
        v75 = v74;
        __memcpy_chk();
        v76 = v110[7];
        v77 = *(v110 + 5);
        v75[131] = *(v110 + 3);
        v75[132] = v77;
        *(v75 + 266) = v76;
        *(v75 + 513) = v8;
        v78 = v90;
        v79 = *(v90 + 156);
        v80 = *(v90 + 140);
        *(v75 + 261) = *(v90 + 172);
        *(v75 + 2056) = v80;
        *(v75 + 2072) = v79;
        *(v75 + 267) = *v78;
        v81 = a2 + 1544;
        pthread_mutex_lock((v81 + (*(v78 + 46) << 7) + 16));
        v82 = v81 + (*(v90 + 46) << 7);
        v83 = (v82 + 8);
        do
        {
          v84 = v83;
          v85 = *v83;
          v83 = (*v83 + 2144);
        }

        while (v85);
        *v84 = v75;
        pthread_cond_signal((v82 + 80));
        v55 = (v81 + (*(v90 + 46) << 7) + 16);
        goto LABEL_78;
      }

      v11 = 2148466691;
      VTP_ReleasePacket(&v90);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          RecvMessageUDP_cold_2();
        }
      }

      goto LABEL_105;
    }

    pthread_mutex_lock((a2 + 34584));
    v70 = *(a2 + 34552);
    if (!v70)
    {
      v55 = (a2 + 34584);
      goto LABEL_78;
    }

    v71 = *(a2 + 34560);
    v72 = *(a2 + 34568);
    v73 = *(a2 + 34576);
    if (v72 && v71)
    {
      v72(v71);
    }

    pthread_mutex_unlock((a2 + 34584));
    v70(v71, v9, v8, *(v90 + 47), v90[196], *(v90 + 46));
    if (v73 && v71)
    {
      v73(v71);
    }

    goto LABEL_104;
  }

  v31 = v110;
  *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&buf[16] = v32;
  *&buf[32] = v32;
  *buf = v32;
  *&v107[30] = 0xAAAAAAAAAAAAAAAALL;
  *v107 = v32;
  *&v107[16] = v32;
  v106 = v32;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v35 = IPPORTToStringWithSize();
      v36 = IPPORTToStringWithSize();
      *v95 = 136316162;
      v96 = v33;
      v97 = 2080;
      v98 = "RecvMessageUDP";
      v99 = 1024;
      v100 = 1593;
      v101 = 2080;
      v102 = v35;
      v103 = 2080;
      v104 = v36;
      _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Updating heartbeat from %s to %s", v95, 0x30u);
    }
  }

  pthread_mutex_lock((a2 + 992));
  v37 = 0;
  v38 = 0;
  v39 = a2 + 32;
  v40 = v90;
  v41 = v90 + 140;
  v42 = *(v90 + 35) & 1;
  v43 = -960;
  v44 = 1.0e10;
  while (1)
  {
    v45 = a2 + v43;
    if ((*(a2 + v43 + 1000) & 1) != v42)
    {
      goto LABEL_73;
    }

    v46 = (v45 + 1020);
    if (v42)
    {
      if (*v46 != *(v90 + 20) || *(v45 + 1028) != *(v90 + 21))
      {
        goto LABEL_73;
      }
    }

    else if (*v46 != *(v90 + 40))
    {
      goto LABEL_73;
    }

    if (*(a2 + v43 + 1036) != *(v90 + 88) || (*(a2 + v43 + 1040) & 1) != (v31[3] & 1))
    {
      goto LABEL_73;
    }

    v48 = (a2 + v43 + 1060);
    if ((*(a2 + v43 + 1040) & 1) == 0)
    {
      break;
    }

    if (*v48 == *(v31 + 44) && *(a2 + v43 + 1068) == *(v31 + 52))
    {
      goto LABEL_72;
    }

LABEL_73:
    if (*(v45 + 1080) < v44)
    {
      v44 = *(v45 + 1080);
      v38 = v37;
    }

    ++v37;
    v43 += 96;
    if (!v43)
    {
      v37 = v38;
      v50 = v39 + 96 * v38;
      *v50 = 0;
      v51 = *v41;
      v52 = *(v41 + 1);
      *(v50 + 40) = *(v41 + 4);
      *(v50 + 24) = v52;
      *(v50 + 8) = v51;
      v53 = *(v31 + 3);
      v54 = *(v31 + 5);
      *(v50 + 80) = v31[7];
      *(v50 + 48) = v53;
      *(v50 + 64) = v54;
      goto LABEL_77;
    }
  }

  if (*v48 != *(v31 + 11))
  {
    goto LABEL_73;
  }

LABEL_72:
  if (*(a2 + v43 + 996))
  {
    goto LABEL_73;
  }

  *(a2 + v43 + 1076) = *(v31 + 30);
LABEL_77:
  *(v39 + 96 * v37 + 88) = *v40;
  v55 = (a2 + 992);
LABEL_78:
  pthread_mutex_unlock(v55);
LABEL_104:
  VTP_ReleasePacket(&v90);
  v11 = 0;
LABEL_105:
  _Block_object_dispose(&v109, 8);
  return v11;
}

void __RecvMessageUDP_block_invoke(uint64_t a1)
{
  PassMessage(*(a1 + 56));
  v2 = *(a1 + 64);

  free(v2);
}

void PassMessage(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v138 = *MEMORY[0x1E69E9840];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v136 = v11;
  v137 = v11;
  *__s2 = v11;
  *(v134 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v133 = v11;
  v134[0] = v11;
  v132 = v11;
  v117 = 0xAAAAAAAAAAAAAAAALL;
  v12 = strstr(v9, "\r\n\r\n");
  if (v12)
  {
    v12[2] = 0;
    v13 = (v12 + 4);
    v14 = v10 - (v12 + 4) + v8;
  }

  else
  {
    v14 = 0;
    v13 = &v10[strlen(v10)];
  }

  ReplaceKeyword(v10, (v8 + 1), "\r\n ", "", 1);
  ReplaceKeyword(v10, (v8 + 1), "\r\n\t", "", 1);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E9830];
    while (1)
    {
      v17 = v13[v15];
      if ((v17 & 0x80000000) != 0)
      {
        if (!__maskrune(v13[v15], 0x40000uLL) && !__maskrune(v17, 0x4000uLL))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v18 = *(v16 + 4 * v17 + 60);
        if ((v18 & 0x40000) == 0 && (v18 & 0x4000) == 0)
        {
          goto LABEL_15;
        }
      }

      if (v14 == ++v15)
      {
        goto LABEL_16;
      }
    }
  }

  LODWORD(v15) = 0;
LABEL_15:
  if (v15 == v14)
  {
LABEL_16:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = "PassMessage";
        *&buf[22] = 1024;
        *&buf[24] = 1192;
        *&buf[28] = 2080;
        *&buf[30] = v10;
        *&buf[38] = 2080;
        *&buf[40] = v13;
        *&buf[48] = 2080;
        *&buf[50] = IPPORTToStringWithSize();
        v21 = "SIP [%s] %s:%d [[%s\n%s]] from %s";
        v22 = v20;
        v23 = 58;
LABEL_22:
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = "PassMessage";
      *&buf[22] = 1024;
      *&buf[24] = 1195;
      *&buf[28] = 2080;
      *&buf[30] = v10;
      *&buf[38] = 2080;
      *&buf[40] = IPPORTToStringWithSize();
      v21 = "SIP [%s] %s:%d [[%s\n<binary>]] from %s";
      v22 = v25;
      v23 = 48;
      goto LABEL_22;
    }
  }

  if ((ParseMessage(&v117, v10) & 0x80000000) == 0)
  {
    v26 = v117;
    if (*(v117 + 1) == 1 && *(v117 + 2) == 1 && !*(v117 + 28))
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_74;
      }

      v90 = VRTraceErrorLogLevelToCSTR();
      v89 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      *buf = 136315906;
      *&buf[4] = v90;
      *&buf[12] = 2080;
      *&buf[14] = "PassMessage";
      *&buf[22] = 1024;
      *&buf[24] = 1207;
      *&buf[28] = 1024;
      *&buf[30] = 1207;
      v42 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: INVITE doesn't have Contact header.";
    }

    else
    {
      *(v117 + 140) = v14;
      if (v6)
      {
        v27 = *v6;
        v28 = v6[1];
        v29 = v6[3];
        v26[38] = v6[2];
        v26[39] = v29;
        v26[36] = v27;
        v26[37] = v28;
        v30 = v6[4];
        v31 = v6[5];
        v32 = v6[6];
        *(v26 + 86) = *(v6 + 14);
        v26[41] = v31;
        v26[42] = v32;
        v26[40] = v30;
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v33;
          *&buf[12] = 2080;
          *&buf[14] = "PassMessage";
          *&buf[22] = 1024;
          *&buf[24] = 1219;
          _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d doesn't have valid source destination info", buf, 0x1Cu);
        }
      }

      v35 = v117;
      v36 = *(v117 + 32);
      if (v36)
      {
        v37 = *v36;
        if (*v36 < 0)
        {
          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_74;
          }

          v39 = VRTraceErrorLogLevelToCSTR();
          v40 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_74;
          }

          v41 = *v36;
          *buf = 136316162;
          *&buf[4] = v39;
          *&buf[12] = 2080;
          *&buf[14] = "PassMessage";
          *&buf[22] = 1024;
          *&buf[24] = 1232;
          *&buf[28] = 1024;
          *&buf[30] = 1232;
          *&buf[34] = 1024;
          *&buf[36] = v41;
          v42 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: CONTENT-LENGTH less than 0 (%d).";
          v43 = v40;
          v44 = 40;
          goto LABEL_73;
        }

        if (*(v117 + 66) || *(v117 + 30))
        {
          v38 = *(v117 + 140);
          if (v37 <= v38)
          {
            *(v117 + 140) = v37;
          }

          else
          {
            if (v37 - v38 > 15)
            {
              if (VRTraceGetErrorLogLevelForModule() < 5)
              {
                goto LABEL_74;
              }

              v92 = VRTraceErrorLogLevelToCSTR();
              v93 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_74;
              }

              v94 = *v36;
              v95 = *(v117 + 140);
              *buf = 136316418;
              *&buf[4] = v92;
              *&buf[12] = 2080;
              *&buf[14] = "PassMessage";
              *&buf[22] = 1024;
              *&buf[24] = 1254;
              *&buf[28] = 1024;
              *&buf[30] = 1254;
              *&buf[34] = 1024;
              *&buf[36] = v94;
              *&buf[40] = 1024;
              *&buf[42] = v95;
              v42 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: CONTENT-LENGTH incorrect (%d/%d).";
              v43 = v93;
              v44 = 46;
              goto LABEL_73;
            }

            *v36 = v38;
          }
        }
      }

      *v35 = 3;
      if (*(v35 + 1) == 1 && *(v35 + 2) == 1)
      {
        v45 = *v4;
        v46 = v4[1];
        *(v35 + 91) = *(v4 + 4);
        *(v35 + 696) = v45;
        *(v35 + 712) = v46;
        v47 = *v2;
        v48 = v2[1];
        *(v35 + 96) = *(v2 + 4);
        *(v35 + 46) = v47;
        *(v35 + 47) = v48;
        v49 = *v2;
        v50 = v2[1];
        *(v35 + 106) = *(v2 + 4);
        *(v35 + 51) = v49;
        *(v35 + 52) = v50;
      }

      else
      {
        v116 = 0xAAAAAAAAAAAAAAAALL;
        memset(buf, 170, 0x388uLL);
        v51 = *(v4 + 4);
        v52 = v4[1];
        *(v35 + 696) = *v4;
        *(v35 + 712) = v52;
        *(v35 + 91) = v51;
        v54 = *v2;
        v53 = v2[1];
        *(v35 + 96) = *(v2 + 4);
        *(v35 + 46) = v54;
        *(v35 + 47) = v53;
        v56 = *v2;
        v55 = v2[1];
        *(v35 + 106) = *(v2 + 4);
        *(v35 + 51) = v56;
        *(v35 + 52) = v55;
        if ((DLFindWithSipMsgAndLock(&v116, v35) & 0x80000000) != 0)
        {
          v72 = v117 + 776;
          v73 = v117 + 696;
          *(v117 + 101) = *(v117 + 91);
          v74 = v73[1];
          *v72 = *v73;
          v72[1] = v74;
        }

        else
        {
          DLGetData(v116, buf);
          DLUnlock();
          v57 = v117;
          v58 = v117 + 696;
          *(v117 + 91) = *&buf[60];
          v59 = *&buf[44];
          *v58 = *&buf[28];
          v58[1] = v59;
          v60 = *&buf[84];
          v57[46] = *&buf[68];
          v57[47] = v60;
          *(v57 + 96) = *&buf[100];
          *(v57 + 101) = *&buf[140];
          v61 = *&buf[124];
          *(v57 + 776) = *&buf[108];
          *(v57 + 792) = v61;
          if (IsIPPORTValid())
          {
            *&v131[46] = 0xAAAAAAAAAAAAAAAALL;
            *&v62 = 0xAAAAAAAAAAAAAAAALL;
            *(&v62 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&v131[32] = v62;
            *&v131[16] = v62;
            *v131 = v62;
            v63 = v117;
            v64 = *&buf[188];
            v65 = *&buf[204];
            *(v117 + 51) = *&buf[188];
            v63[52] = v65;
            v66 = *&buf[220];
            *(v63 + 106) = *&buf[220];
            *(v63 + 856) = v64;
            *(v63 + 872) = v65;
            *(v63 + 111) = v66;
            *(v63 + 142) = *&buf[24];
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v67 = VRTraceErrorLogLevelToCSTR();
              v68 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v69 = IPPORTToStringWithSize();
                v70 = *(v117 + 284);
                v71 = *(v117 + 285);
                v119 = 136316418;
                v120 = v67;
                v121 = 2080;
                v122 = "PassMessage";
                v123 = 1024;
                v124 = 1295;
                v125 = 2080;
                v126 = v69;
                v127 = 1024;
                v128 = v70;
                v129 = 1024;
                v130 = v71;
                _os_log_impl(&dword_1DB56E000, v68, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Use relay external addr [%s], relay %u, channel %x", &v119, 0x32u);
              }
            }
          }
        }
      }

      IPToString();
      v75 = v117;
      v76 = *(v117 + 63);
      if (v76 && *v76 > 0)
      {
        if (!*(v76 + 118) && strcmp((v76 + 12), __s2))
        {
          IPToString();
          v75 = v117;
        }

        if (*(v75 + 34))
        {
          if (v75[140] < 1)
          {
LABEL_106:
            v107 = CheckInHandleDebug();
            if (v107)
            {
              v108 = v107;
              v109 = v107 + 0x8000;
              if (!*(v75 + 63) || (v110 = *(v75 + 34)) == 0)
              {
                if (((*(v107 + 34312))(*(v107 + 34320), v75) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    PassMessage_cold_4();
                  }
                }

                goto LABEL_149;
              }

              pthread_mutex_lock((v107 + 1480));
              if (v75[1] == 1)
              {
                if (v75[2] == 2)
                {
                  v111 = 1;
                }

                else
                {
                  v111 = v75[2];
                }

                v112 = *(v108 + 1472);
                if (v112)
                {
                  while (*v112 != 1 || strcmp((v76 + 54), (v112 + 4)) || strcmp((v76 + 12), (v112 + 72)) || *(v76 + 52) != *(v112 + 112) || *(v112 + 68) != v111)
                  {
                    v112 = *(v112 + 136);
                    if (!v112)
                    {
                      goto LABEL_136;
                    }
                  }

                  if (((*(v112 + 120))(*(v112 + 128), v75) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      PassMessage_cold_2();
                    }
                  }

LABEL_148:
                  pthread_mutex_unlock((v108 + 1480));
LABEL_149:
                  CheckOutHandleDebug();
                  return;
                }
              }

              else
              {
                v113 = *(v108 + 1472);
                if (v113)
                {
                  while (*v113 || strcmp((v76 + 54), (v113 + 4)) || *(v110 + 8) != *(v113 + 68))
                  {
                    v113 = *(v113 + 136);
                    if (!v113)
                    {
                      goto LABEL_136;
                    }
                  }

                  if (((*(v113 + 120))(*(v113 + 128), v75) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      PassMessage_cold_1();
                    }
                  }

                  goto LABEL_148;
                }
              }

LABEL_136:
              pthread_mutex_unlock((v108 + 1480));
              if (((*(v109 + 1544))(*(v109 + 1552), v75) & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  PassMessage_cold_3();
                }
              }

              goto LABEL_149;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                PassMessage_cold_5();
              }
            }

            goto LABEL_74;
          }

          v77 = *(v75 + 33);
          if (v77)
          {
            memset(buf, 170, 0x1518uLL);
            v119 = 5400;
            v78 = *(v75 + 127);
            if (!v78)
            {
              goto LABEL_97;
            }

            v79 = v78(v75[252], buf, &v119, v13, v75[140], v75);
            if (v79 < 0)
            {
              v97 = v79;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v98 = VRTraceErrorLogLevelToCSTR();
                v99 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  v114 = *(v117 + 252);
                  v115 = *(v117 + 140);
                  *v131 = 136316674;
                  *&v131[4] = v98;
                  *&v131[12] = 2080;
                  *&v131[14] = "PassMessage";
                  *&v131[22] = 1024;
                  *&v131[24] = 1340;
                  *&v131[28] = 1024;
                  *&v131[30] = 1340;
                  *&v131[34] = 1024;
                  *&v131[36] = v114;
                  *&v131[40] = 1024;
                  *&v131[42] = v115;
                  *&v131[46] = 1024;
                  *&v131[48] = v97;
                  _os_log_error_impl(&dword_1DB56E000, v99, OS_LOG_TYPE_ERROR, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: Decompress failed: %d, %d, (%08X)", v131, 0x34u);
                }
              }

              v75 = v117;
              *(v117 + 33) = 1;
              goto LABEL_97;
            }

            buf[v119] = 0;
            v80 = strcmp(v77, "application/sdp");
            ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
            if (v80)
            {
              if (ErrorLogLevelForModule < 7)
              {
                goto LABEL_96;
              }

              v82 = VRTraceErrorLogLevelToCSTR();
              v83 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_96;
              }

              v84 = *(v117 + 140);
              *v131 = 136316162;
              *&v131[4] = v82;
              *&v131[12] = 2080;
              *&v131[14] = "PassMessage";
              *&v131[22] = 1024;
              *&v131[24] = 1349;
              *&v131[28] = 1024;
              *&v131[30] = v84;
              *&v131[34] = 1024;
              *&v131[36] = v119;
              v85 = "SIP [%s] %s:%d Uncompress binary body from %d to %d";
              v86 = v83;
              v87 = 40;
            }

            else
            {
              if (ErrorLogLevelForModule < 6)
              {
                goto LABEL_96;
              }

              v100 = VRTraceErrorLogLevelToCSTR();
              v101 = *MEMORY[0x1E6986650];
              if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_96;
              }

              v102 = *(v117 + 140);
              *v131 = 136316418;
              *&v131[4] = v100;
              *&v131[12] = 2080;
              *&v131[14] = "PassMessage";
              *&v131[22] = 1024;
              *&v131[24] = 1346;
              *&v131[28] = 1024;
              *&v131[30] = v119;
              *&v131[34] = 2080;
              *&v131[36] = buf;
              *&v131[44] = 1024;
              *&v131[46] = v102;
              v85 = "SIP [%s] %s:%d Uncompressed SDP(%d): [%s] from size %d";
              v86 = v101;
              v87 = 50;
            }

            _os_log_impl(&dword_1DB56E000, v86, OS_LOG_TYPE_DEFAULT, v85, v131, v87);
LABEL_96:
            v75 = v117;
            *(v117 + 140) = v119;
            v13 = buf;
LABEL_97:
            if (strcmp(v77, "application/ske") && v14 >= 1)
            {
              v103 = v14;
              v104 = v13;
              do
              {
                if (*v104 == 240)
                {
                  *v104 = 95;
                }

                ++v104;
                --v103;
              }

              while (v103);
              v75 = v117;
            }

            v105 = malloc_type_malloc(v75[140] + 1, 0x100004077774924uLL);
            v106 = v117;
            *(v117 + 69) = v105;
            if (v105)
            {
              memcpy(v105, v13, v106[140]);
              *(*(v117 + 69) + *(v117 + 140)) = 0;
              v75 = v117;
              goto LABEL_106;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                PassMessage_cold_6();
              }
            }

LABEL_74:
            FreeSipMsg(v117);
            return;
          }

          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_74;
          }

          v96 = VRTraceErrorLogLevelToCSTR();
          v89 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_74;
          }

          *buf = 136315906;
          *&buf[4] = v96;
          *&buf[12] = 2080;
          *&buf[14] = "PassMessage";
          *&buf[22] = 1024;
          *&buf[24] = 1327;
          *&buf[28] = 1024;
          *&buf[30] = 1327;
          v42 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: CONTENT-TYPE null when body not empty.";
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_74;
          }

          v91 = VRTraceErrorLogLevelToCSTR();
          v89 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_74;
          }

          *buf = 136315906;
          *&buf[4] = v91;
          *&buf[12] = 2080;
          *&buf[14] = "PassMessage";
          *&buf[22] = 1024;
          *&buf[24] = 1316;
          *&buf[28] = 1024;
          *&buf[30] = 1316;
          v42 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: CSeq header missing";
        }
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_74;
        }

        v88 = VRTraceErrorLogLevelToCSTR();
        v89 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_74;
        }

        *buf = 136315906;
        *&buf[4] = v88;
        *&buf[12] = 2080;
        *&buf[14] = "PassMessage";
        *&buf[22] = 1024;
        *&buf[24] = 1305;
        *&buf[28] = 1024;
        *&buf[30] = 1305;
        v42 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/Transport.c:%d: Via header missing or no field value";
      }
    }

    v43 = v89;
    v44 = 34;
LABEL_73:
    _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
    goto LABEL_74;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      PassMessage_cold_7();
    }
  }
}

void __RecvMessageUDP_block_invoke_11(uint64_t a1)
{
  PassMessage(*(a1 + 40));
  v2 = *(a1 + 48);

  free(v2);
}

uint64_t CompressMsg(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  __str[2] = *MEMORY[0x1E69E9840];
  __str[0] = 0xAAAAAAAAAAAAAAAALL;
  __str[1] = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  __n = 5400;
  v13 = *(v3 + 1016);
  if (v13)
  {
    v14 = v13(*(v3 + 1008), __b, &__n, v7, v5, v3);
    v15 = ConstructSipMsg(v11, *v9, v3);
    if ((v15 & 0x80000000) == 0)
    {
      if ((v14 & 0x80000000) == 0)
      {
        v16 = *(v3 + 564);
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (v16)
        {
          if (ErrorLogLevelForModule < 7)
          {
            goto LABEL_19;
          }

          v18 = VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          __n_4 = 136316162;
          v37 = v18;
          v38 = 2080;
          v39 = "CompressMsg";
          v40 = 1024;
          v41 = 3037;
          v42 = 1024;
          v43 = v5;
          v44 = 1024;
          LODWORD(v45) = __n;
          v20 = "SIP [%s] %s:%d Compress binary body from %d to %d";
          v21 = v19;
          v22 = 40;
        }

        else
        {
          if (ErrorLogLevelForModule < 6)
          {
            goto LABEL_19;
          }

          v32 = VRTraceErrorLogLevelToCSTR();
          v33 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          __n_4 = 136316418;
          v37 = v32;
          v38 = 2080;
          v39 = "CompressMsg";
          v40 = 1024;
          v41 = 3039;
          v42 = 1024;
          v43 = v5;
          v44 = 2080;
          v45 = v7;
          v46 = 1024;
          v47 = __n;
          v20 = "SIP [%s] %s:%d Compress SDP(%d): [%s] to size %d";
          v21 = v33;
          v22 = 50;
        }

        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, &__n_4, v22);
LABEL_19:
        *(v3 + 564) = 1;
        memcpy(*(v3 + 552), __b, __n);
        v27 = __n;
        *(v3 + 560) = __n;
        v26 = __b;
        v23 = v12;
        v24 = v11;
        v25 = v9;
        goto LABEL_20;
      }

      goto LABEL_9;
    }

LABEL_11:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CompressMsg_cold_1();
      }
    }

    return v15;
  }

  v15 = ConstructSipMsg(v11, *v9, v3);
  if ((v15 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (*(v3 + 564))
  {
    v23 = v12;
    v24 = v11;
    v25 = v9;
    v26 = v7;
    v27 = v5;
LABEL_20:
    AppendBinaryBody(v23, v24, v25, v26, v27);
    return v15;
  }

  snprintf(__str, 0x10uLL, "%d", v5);
  v28 = strlen(v11);
  ReplaceKeyword(v11, (v28 + 1), "%CLENGTH%", __str, 16);
  v29 = strlen(v11);
  v30 = strncat(v11, v7, ~v29 + *v9);
  v31 = strlen(v30);
  *v9 = v31;
  memcpy(v12, v11, v31 + 1);
  return v15;
}

uint64_t AddToCListRTP(uint64_t a1, int a2, int a3, __int128 *a4, int a5)
{
  v10 = (a1 + 1272);
  pthread_rwlock_wrlock((a1 + 1272));
  v11 = malloc_type_calloc(1uLL, 0x868uLL, 0x10200406FE3F67FuLL);
  if (v11)
  {
    v12 = v11;
    *v11 = a3;
    *(v11 + 266) = 0xFFFFFFFFLL;
    *(v11 + 2) = 2048;
    *(v11 + 517) = a5;
    *(v11 + 516) = a2;
    v13 = *a4;
    v14 = a4[1];
    *(v11 + 263) = *(a4 + 4);
    *(v11 + 2072) = v13;
    *(v11 + 2088) = v14;
    if ((ICEAddOneInterface() & 0x80000000) != 0)
    {
      free(v12);
    }

    else
    {
      v15 = (a1 + 1264);
      do
      {
        v16 = v15;
        v17 = *v15;
        v15 = (*v15 + 2144);
      }

      while (v17);
      *v16 = v12;
      pthread_rwlock_unlock(v10);
      v10 = (a1 + 1064);
      pthread_rwlock_wrlock((a1 + 1064));
      v18 = *(a1 + 12);
      *(a1 + 12) = -1;
      VTP_Close(v18);
    }
  }

  return pthread_rwlock_unlock(v10);
}

void *AppendBinaryBody(void *a1, const char *a2, int *a3, const void *a4, int a5)
{
  v27 = *MEMORY[0x1E69E9840];
  memset(__str, 170, sizeof(__str));
  snprintf(__str, 0x10uLL, "%d", a5);
  v10 = strlen(a2);
  ReplaceKeyword(a2, (v10 + 1), "%CLENGTH%", __str, 16);
  v11 = strlen(a2);
  *a3 = v11;
  memcpy(a1, a2, v11);
  strcpy(a1 + *a3, "<Binary>");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *a3;
      *buf = 136316162;
      v17 = v12;
      v18 = 2080;
      v19 = "AppendBinaryBody";
      v20 = 1024;
      v21 = 3012;
      v22 = 1024;
      v23 = v14;
      v24 = 1024;
      v25 = a5;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d()()()()() TP BINARY BODY (%d + %d)", buf, 0x28u);
    }
  }

  result = memcpy(&a2[*a3], a4, a5);
  *a3 += a5;
  return result;
}

uint64_t __TPSetupCTContext_block_invoke(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  result = CheckInHandleDebug();
  if (result)
  {
    v7 = result;
    if (CFEqual(a2, *MEMORY[0x1E69653E8]))
    {
      valuePtr = -1;
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *(v40 + 15) = v8;
      v39 = v8;
      v40[0] = v8;
      v37 = v8;
      v38 = v8;
      v35 = v8;
      v36 = v8;
      v33 = v8;
      v34 = v8;
      v31 = v8;
      v32 = v8;
      v29 = v8;
      v30 = v8;
      v27 = v8;
      v28 = v8;
      *buffer = v8;
      Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6965370]);
      v10 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965378]);
      if (v10)
      {
        CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
      }

      v11 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965380]);
      v12 = v11;
      if (v11)
      {
        CFStringGetCString(v11, buffer, 255, 0);
      }

      if (Value)
      {
        v13 = CFEqual(Value, *MEMORY[0x1E695E4D0]);
        if (v12)
        {
          if (v13 && valuePtr != -1)
          {
            v14 = v7 + 0x8000;
            ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
            v16 = MEMORY[0x1E6986650];
            if (ErrorLogLevelForModule >= 7)
            {
              v17 = VRTraceErrorLogLevelToCSTR();
              v18 = *v16;
              if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136316162;
                *&buf[4] = v17;
                *&buf[12] = 2080;
                *&buf[14] = "TPCTServerConnectionCallback";
                *&buf[22] = 1024;
                *v25 = 460;
                *&v25[4] = 1024;
                *&v25[6] = valuePtr;
                *&v25[10] = 2080;
                *&v25[12] = buffer;
                _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Received cellular data status change notification [Context: %d Indicator:%s].", buf, 0x2Cu);
              }
            }

            *(v14 + 1704) = TPGetLocalCellTech(*(v14 + 1688));
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v19 = VRTraceErrorLogLevelToCSTR();
              v20 = *v16;
              if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
              {
                v21 = *(v14 + 1704);
                *buf = 136315906;
                *&buf[4] = v19;
                *&buf[12] = 2080;
                *&buf[14] = "TPCTServerConnectionCallback";
                *&buf[22] = 1024;
                *v25 = 462;
                *&v25[4] = 1024;
                *&v25[6] = v21;
                _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d CellTech Changed to %d ", buf, 0x22u);
              }
            }

            global_queue = dispatch_get_global_queue(0, 0);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __TPCellularConditionChangeCallback_block_invoke;
            *v25 = &__block_descriptor_tmp_37;
            *&v25[8] = v5;
            dispatch_async(global_queue, buf);
          }
        }
      }
    }

    return CheckOutHandleDebug();
  }

  return result;
}

uint64_t TPGetLocalCellTech(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = 0;
    VCCTServiceMonitor_GetRadioAccessTechnology();
    if (!VCCTServiceMonitor_GetDataIndicatorStatus())
    {
      VCCTServiceMonitor_GetDataIndicatorStatusOverride();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v6 = v2;
        v7 = 2080;
        v8 = "TPGetLocalCellTech";
        v9 = 1024;
        v10 = 340;
        v11 = 1024;
        v12 = 0;
        _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Active wireless technology: [%d]", buf, 0x22u);
      }
    }
  }

  else
  {
    TPGetLocalCellTech_cold_1(buf);
    return *buf;
  }

  return v1;
}

uint64_t __TPCellularConditionChangeCallback_block_invoke()
{
  v23 = *MEMORY[0x1E69E9840];
  result = CheckInHandleDebug();
  if (result)
  {
    v1 = result;
    LocalInterfaceListWithOptions = GetLocalInterfaceListWithOptions();
    v3 = LocalInterfaceListWithOptions;
    if (LocalInterfaceListWithOptions >= 1)
    {
      v4 = LocalInterfaceListWithOptions;
      v5 = 4;
      do
      {
        v3 = (__PAIR64__(v3, strcmp(v5, "lo0")) - 1) >> 32;
        v5 += 40;
        --v4;
      }

      while (v4);
    }

    FreeLocalInterfaceList();
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v1 + 34496);
        v9 = *(v1 + 34504);
        *buf = 136316418;
        v12 = v6;
        v13 = 2080;
        v14 = "TPCellularConditionChangeCallback_block_invoke";
        v15 = 1024;
        v16 = 411;
        v17 = 2048;
        v18 = v8;
        v19 = 2048;
        v20 = v9;
        v21 = 1024;
        v22 = v3;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPCellularConditionChangeCallback... %p, %p, iNumValidInterfaces = %d", buf, 0x36u);
      }
    }

    if (*(v1 + 34496))
    {
      if (*(v1 + 34504))
      {
        CellularMTU = GetCellularMTU(v1, 1);
        (*(v1 + 34496))(*(v1 + 34504), *(v1 + 34472), CellularMTU);
      }
    }

    return CheckOutHandleDebug();
  }

  return result;
}

void __TPConnectedCallback_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = CheckInHandleDebug();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    v4 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 64);
        v9 = *(a1 + 68);
        v46 = 136316418;
        v47 = v5;
        v48 = 2080;
        v49 = "TPConnectedCallback_block_invoke";
        v50 = 1024;
        v51 = 4511;
        v52 = 1024;
        *v53 = v7;
        *&v53[4] = 1024;
        *&v53[6] = v8;
        v54 = 1024;
        v55 = v9;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPConnectedCallback: theCCResult == %08X, ifDidRecvPacket = %d fUseRelay = %d ...", &v46, 0x2Eu);
      }
    }

    if (*(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(a1 + 40) + 4);
          v46 = 136315906;
          v47 = v10;
          v48 = 2080;
          v49 = "TPConnectedCallback_block_invoke";
          v50 = 1024;
          v51 = 4515;
          v52 = 1024;
          *v53 = v12;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPConnectedCallback:: result#%d", &v46, 0x22u);
        }
      }

      IPPORTToStringWithSize();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 136315906;
          v47 = v13;
          v48 = 2080;
          v49 = "TPConnectedCallback_block_invoke";
          v50 = 1024;
          v51 = 4517;
          v52 = 2080;
          *v53 = &g_SIPICERetryParams_block_invoke_ip;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPConnectedCallback:: local = %s", &v46, 0x26u);
        }
      }

      IPPORTToStringWithSize();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 136315906;
          v47 = v15;
          v48 = 2080;
          v49 = "TPConnectedCallback_block_invoke";
          v50 = 1024;
          v51 = 4519;
          v52 = 2080;
          *v53 = &g_SIPICERetryParams_block_invoke_ip;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPConnectedCallback:: remote = %s", &v46, 0x26u);
        }
      }

      IPPORTToStringWithSize();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 136315906;
          v47 = v17;
          v48 = 2080;
          v49 = "TPConnectedCallback_block_invoke";
          v50 = 1024;
          v51 = 4521;
          v52 = 2080;
          *v53 = &g_SIPICERetryParams_block_invoke_ip;
          _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPConnectedCallback:: src = %s", &v46, 0x26u);
        }
      }

      IPPORTToStringWithSize();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 136315906;
          v47 = v19;
          v48 = 2080;
          v49 = "TPConnectedCallback_block_invoke";
          v50 = 1024;
          v51 = 4523;
          v52 = 2080;
          *v53 = &g_SIPICERetryParams_block_invoke_ip;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPConnectedCallback:: dst = %s", &v46, 0x26u);
        }
      }

      IPPORTToStringWithSize();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 136315906;
          v47 = v21;
          v48 = 2080;
          v49 = "TPConnectedCallback_block_invoke";
          v50 = 1024;
          v51 = 4525;
          v52 = 2080;
          *v53 = &g_SIPICERetryParams_block_invoke_ip;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPConnectedCallback:: remoteSrc = %s", &v46, 0x26u);
        }
      }

      IPPORTToStringWithSize();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 136315906;
          v47 = v23;
          v48 = 2080;
          v49 = "TPConnectedCallback_block_invoke";
          v50 = 1024;
          v51 = 4527;
          v52 = 2080;
          *v53 = &g_SIPICERetryParams_block_invoke_ip;
          _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPConnectedCallback:: relay ext = %s", &v46, 0x26u);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 40);
          v28 = *(v27 + 20);
          v29 = *(v27 + 24);
          LODWORD(v27) = *(v27 + 26);
          v46 = 136316418;
          v47 = v25;
          v48 = 2080;
          v49 = "TPConnectedCallback_block_invoke";
          v50 = 1024;
          v51 = 4529;
          v52 = 1024;
          *v53 = v28;
          *&v53[4] = 1024;
          *&v53[6] = v29;
          v54 = 1024;
          v55 = v27;
          _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPConnectedCallback:: bIfRelay = %d wRelayServType = %d wChannelNumber = %04x", &v46, 0x2Eu);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(a1 + 40);
          v33 = *(v32 + 280);
          LODWORD(v32) = *(v32 + 284);
          v46 = 136316162;
          v47 = v30;
          v48 = 2080;
          v49 = "TPConnectedCallback_block_invoke";
          v50 = 1024;
          v51 = 4531;
          v52 = 1024;
          *v53 = v33;
          *&v53[4] = 1024;
          *&v53[6] = v32;
          _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPConnectedCallback:: cell_tech (local:%d, remote:%d)", &v46, 0x28u);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v34 = VRTraceErrorLogLevelToCSTR();
        v35 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(a1 + 40);
          v37 = *v36;
          LODWORD(v36) = v36[3];
          v46 = 136316162;
          v47 = v34;
          v48 = 2080;
          v49 = "TPConnectedCallback_block_invoke";
          v50 = 1024;
          v51 = 4533;
          v52 = 1024;
          *v53 = v37;
          *&v53[4] = 1024;
          *&v53[6] = v36;
          _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPConnectedCallback:: dwCallID = %08X iRemoteCallID = %08X", &v46, 0x28u);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(a1 + 40);
          v41 = v40[73];
          v42 = v40[74];
          LODWORD(v40) = v40[75];
          v46 = 136316418;
          v47 = v38;
          v48 = 2080;
          v49 = "TPConnectedCallback_block_invoke";
          v50 = 1024;
          v51 = 4535;
          v52 = 1024;
          *v53 = v41;
          *&v53[4] = 1024;
          *&v53[6] = v42;
          v54 = 1024;
          v55 = v40;
          _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPConnectedCallback:: upgrade = %d primary = %d, replace = %d", &v46, 0x2Eu);
        }
      }

      v43 = *(a1 + 40);
      *(v43 + 288) = 0;
      if ((*(v43 + 28) & 4) != 0)
      {
        CellularMTU = GetCellularMTU(v2, 0);
        v43 = *(a1 + 40);
        *(v43 + 288) = CellularMTU;
      }
    }

    else
    {
      v43 = 0;
    }

    v45 = *(v2 + 34336);
    if (v45)
    {
      v45(*(a1 + 48), *(a1 + 72), v43, *(a1 + 64), *(a1 + 68), *(a1 + 56), *(a1 + 76));
      v43 = *(a1 + 40);
    }

    if (v43)
    {
      free(v43);
    }

    CheckOutHandleDebug();
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __TPConnectedCallback_block_invoke_cold_1();
    }
  }
}

void __TPNewCandidatesCallback_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CheckInHandleDebug();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v2)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 56);
        v9 = 136315906;
        v10 = v4;
        v11 = 2080;
        v12 = "TPNewCandidatesCallback_block_invoke";
        v13 = 1024;
        v14 = 4621;
        v15 = 1024;
        v16 = v6;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d TPNewCandidatesCallback: blob size: %d", &v9, 0x22u);
      }
    }

    v7 = *(v2 + 34344);
    if (v7)
    {
      v7(*(a1 + 40), *(a1 + 60), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      free(v8);
    }

    CheckOutHandleDebug();
  }

  else if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __TPNewCandidatesCallback_block_invoke_cold_1();
    }
  }
}

uint64_t __TPShouldNominateICECandidatePair_block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 34352);
  if (v1)
  {
    return v1(*(*(result + 32) + 34376), *(result + 80), *(result + 40), *(result + 84), *(result + 48), *(result + 56), *(result + 64), *(result + 72));
  }

  return result;
}

void __TPRemoveIPPort_block_invoke(uint64_t a1)
{
  v2 = CheckInHandleDebug();
  if (v2)
  {
    v3 = *(v2 + 34360);
    if (v3)
    {
      v3(*(v2 + 34376), *(a1 + 48), *(*(a1 + 32) + 8) + 24, *(a1 + 52));
    }

    CheckOutHandleDebug();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __TPRemoveIPPort_block_invoke_cold_1();
    }
  }
}

void VCBasebandCongestionDetector_SetMode(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 12) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCBasebandCongestionDetector_SetMode_cold_1(v2, v3);
    }
  }
}

BOOL VCRateControlProcessBasebandNotification(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 processBasebandNotification:a2 arrivalTime:0 error:?];
  }

  return a1 != 0;
}

void OUTLINED_FUNCTION_1_17(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

uint64_t VCTransportStreamRunLoopVTPCreate(const __CFAllocator *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (VCTransportStreamRunLoopVTPCreate_cold_3(buf))
    {
      return 2151022593;
    }

    return *buf;
  }

  VCTransportStreamRunLoopGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    VCTransportStreamRunLoopVTPCreate_cold_1(v4, buf);
    return *buf;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *DerivedStorage = Mutable;
  if (!Mutable)
  {
    VCTransportStreamRunLoopVTPCreate_cold_2();
    return *buf;
  }

  DerivedStorage[1] = 0xFFFFFFFF00000000;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v7;
      v13 = 2080;
      v14 = "VCTransportStreamRunLoopVTPCreate";
      v15 = 1024;
      v16 = 90;
      v17 = 2048;
      v18 = 0;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", buf, 0x26u);
    }
  }

  v9 = 0;
  *a2 = 0;
  return v9;
}

uint64_t _VCTransportStreamRunLoopVTPFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  result = *(DerivedStorage + 12);
  if (result != -1)
  {

    return VTP_Close(result);
  }

  return result;
}

uint64_t _VCTransportStreamRunLoopVTPAddTransportStream(uint64_t a1, const void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCTransportStreamRunLoopVTPAddTransportStream_cold_4();
    return v5;
  }

  if (!a2)
  {
    _VCTransportStreamRunLoopVTPAddTransportStream_cold_3();
    return v5;
  }

  if ((VCTransportStreamIsOfKindVTP(a2) & 1) == 0)
  {
    _VCTransportStreamRunLoopVTPAddTransportStream_cold_1();
    return v5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFArrayContainsValue())
  {
    _VCTransportStreamRunLoopVTPAddTransportStream_cold_2(a2, &v5);
    return v5;
  }

  CFArrayAppendValue(*DerivedStorage, a2);

  return _VCTransportStreamRunLoopVTPUpdateFDSet();
}

uint64_t _VCTransportStreamRunLoopVTPRemoveTransportStream(uint64_t a1, const void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCTransportStreamRunLoopVTPRemoveTransportStream_cold_3();
    return v7;
  }

  if (!a2)
  {
    _VCTransportStreamRunLoopVTPRemoveTransportStream_cold_2();
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  v10.length = CFArrayGetCount(*DerivedStorage);
  v10.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v10, a2);
  if (FirstIndexOfValue == -1)
  {
    _VCTransportStreamRunLoopVTPRemoveTransportStream_cold_1(a2, &v7);
    return v7;
  }

  CFArrayRemoveValueAtIndex(*DerivedStorage, FirstIndexOfValue);

  return _VCTransportStreamRunLoopVTPUpdateFDSet();
}

uint64_t _VCTransportStreamRunLoopVTPCancelWait(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _VCTransportStreamRunLoopVTPCancelWait_cold_2();
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "_VCTransportStreamRunLoopVTPCancelWait";
      v11 = 1024;
      v12 = 196;
      v13 = 2048;
      v14 = a1;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%p]", &v7, 0x26u);
    }
  }

  os_unfair_lock_lock(DerivedStorage + 2);
  os_unfair_lock_opaque = DerivedStorage[3]._os_unfair_lock_opaque;
  DerivedStorage[3]._os_unfair_lock_opaque = -1;
  os_unfair_lock_unlock(DerivedStorage + 2);
  if (os_unfair_lock_opaque == -1)
  {
    _VCTransportStreamRunLoopVTPCancelWait_cold_1();
    return v7;
  }

  VTP_Close(os_unfair_lock_opaque);
  return 0;
}

void OUTLINED_FUNCTION_4_22(float a1)
{
  *(v3 - 128) = a1;
  *(v2 + 4) = v1;
  *(v3 - 116) = 2080;
}

void OUTLINED_FUNCTION_5_20(int a1@<W8>)
{
  *(v3 - 104) = a1;
  *(v3 - 100) = 2048;
  *(v2 + 30) = v1;
}

void OUTLINED_FUNCTION_14_9(__int16 a1@<W8>)
{
  *(v3 - 116) = a1;
  *(v2 + 14) = v1;
  *(v3 - 106) = 1024;
}

double SRTPClearExchangeInfo(uint64_t a1)
{
  if (a1)
  {
    VCMediaKeyIndex_Release((a1 + 96));
    *(a1 + 96) = 0;
    result = 0.0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double SRTPClearKeyDerivationInfo(uint64_t a1)
{
  if (a1)
  {
    VCMediaKeyIndex_Release((a1 + 144));
    *(a1 + 144) = 0;
    result = 0.0;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

void HexToByte(_BYTE *a1, int a2, char *__s1, int a4)
{
  v7 = a4;
  v8 = strnlen(__s1, a4) >> 1;
  if (v8 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = &a1[a2];
  v11 = a2 - v8;
  if (a2 > v8)
  {
    v12 = &a1[v8];
    v13 = a2 - v8;
    if (v12 > v10 || v12 < a1 || v13 < v11)
    {
LABEL_37:
      __break(0x5519u);
      return;
    }

    bzero(v12, v11);
  }

  if (v9 >= 1)
  {
    v16 = 0;
    v17 = a1;
    v18 = __s1;
    do
    {
      if (v18 > &__s1[v7] || v18 < __s1 || v7 - 1 <= v16)
      {
        goto LABEL_37;
      }

      v19 = *v18;
      v20 = v18[1];
      if ((v19 - 48) >= 0xA)
      {
        if ((v19 - 65) >= 6)
        {
          if ((v19 - 97) > 5)
          {
            goto LABEL_32;
          }

          v21 = -87;
        }

        else
        {
          v21 = -55;
        }
      }

      else
      {
        v21 = -48;
      }

      if ((v20 - 48) >= 0xA)
      {
        if ((v20 - 65) >= 6)
        {
          if ((v20 - 97) > 5)
          {
LABEL_32:
            v23 = 0;
            goto LABEL_33;
          }

          v22 = -87;
        }

        else
        {
          v22 = -55;
        }
      }

      else
      {
        v22 = -48;
      }

      v23 = v20 + 16 * (v21 + v19) + v22;
LABEL_33:
      if (v17 >= v10 || v17 < a1)
      {
        goto LABEL_37;
      }

      *v17++ = v23;
      v18 += 2;
      v16 += 2;
    }

    while (2 * v9 != v16);
  }
}

unint64_t ByteToHex(unint64_t result, int a2, unsigned __int8 *a3, int a4)
{
  LODWORD(v4) = a2 / 2;
  if (a2 / 2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = v4;
  }

  v5 = result + a2;
  if (v4 >= 1)
  {
    v6 = (result + 1);
    v7 = v4;
    v8 = a3;
    while (v8 < &a3[a4] && v8 >= a3)
    {
      v9 = *v8;
      v11 = (v6 - 1) < v5 && (v6 - 1) >= result;
      if (v9 > 0x9F)
      {
        if (!v11)
        {
          goto LABEL_42;
        }

        v12 = (v9 >> 4) + 55;
      }

      else
      {
        if (!v11)
        {
          goto LABEL_42;
        }

        v12 = (v9 >> 4) | 0x30;
      }

      v13 = v9 & 0xF;
      *(v6 - 1) = v12;
      v15 = v6 < v5 && v6 >= result;
      if (v13 > 9)
      {
        if (!v15)
        {
          goto LABEL_42;
        }

        v16 = v13 + 55;
      }

      else
      {
        if (!v15)
        {
          goto LABEL_42;
        }

        v16 = v13 | 0x30;
      }

      *v6 = v16;
      v6 += 2;
      ++v8;
      if (!--v7)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_42;
  }

LABEL_31:
  v17 = (2 * v4);
  if (a2 <= v17)
  {
    return v17;
  }

  v19 = result + v17;
  v18 = a2 - v17;
  if (v19 <= v5 && v19 >= result && a2 - v17 >= v18)
  {
    bzero((result + v17), v18);
    return v17;
  }

LABEL_42:
  __break(0x5519u);
  return result;
}

void setTransformPolicyFromCipherSuite(int a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      switch(a1)
      {
        case 9:
          *a2 = xmmword_1DBD474F0;
          *(a2 + 16) = 0x2000000003;
          *(a2 + 24) = 4;
          *(a2 + 32) = 32;
          v5 = 9;
          goto LABEL_32;
        case 10:
          *a2 = xmmword_1DBD49850;
          *(a2 + 16) = 0x2000000004;
          v5 = 10;
          *(a2 + 24) = 10;
          *(a2 + 32) = 32;
          goto LABEL_32;
        case 11:
          *a2 = xmmword_1DBD49850;
          *(a2 + 16) = 0x2000000003;
          *(a2 + 24) = 4;
          *(a2 + 32) = 32;
          v5 = 11;
          goto LABEL_32;
      }

      goto LABEL_28;
    }

    if (a1 == 6)
    {
      *a2 = xmmword_1DBD49850;
      *(a2 + 16) = 1;
      *(a2 + 24) = 4;
      *(a2 + 32) = 0;
      v5 = 6;
    }

    else if (a1 == 7)
    {
      *a2 = xmmword_1DBD49850;
      *(a2 + 16) = 0x1400000002;
      *(a2 + 24) = 10;
      *(a2 + 32) = 20;
      v5 = 7;
    }

    else
    {
      *a2 = xmmword_1DBD474F0;
      *(a2 + 16) = 0x2000000004;
      *(a2 + 24) = 10;
      *(a2 + 32) = 32;
      v5 = 8;
    }
  }

  else
  {
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
LABEL_31:
          v5 = 0;
          *(a2 + 32) = 0;
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *a2 = 0;
          *(a2 + 24) = 0;
          goto LABEL_32;
        case 1:
          *a2 = xmmword_1DBD49870;
          *(a2 + 16) = 0x1400000002;
          *(a2 + 24) = 10;
          *(a2 + 32) = 20;
          v5 = 1;
          goto LABEL_32;
        case 2:
          *a2 = xmmword_1DBD474F0;
          *(a2 + 16) = 0;
          *(a2 + 24) = 0;
          *(a2 + 32) = 0;
          v5 = 2;
          goto LABEL_32;
      }

LABEL_28:
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136316162;
          v10 = v7;
          v11 = 2080;
          v12 = "setTransformPolicyFromCipherSuite";
          v13 = 1024;
          v14 = 207;
          v15 = 1024;
          v16 = a1;
          v17 = 1024;
          v18 = 0;
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unknown cipherSuite=%d, defaulting to %d ", &v9, 0x28u);
        }
      }

      goto LABEL_31;
    }

    if (a1 == 3)
    {
      *a2 = xmmword_1DBD474F0;
      *(a2 + 16) = 1;
      *(a2 + 24) = 4;
      *(a2 + 32) = 0;
      v5 = 3;
    }

    else if (a1 == 4)
    {
      *a2 = xmmword_1DBD474F0;
      *(a2 + 16) = 0x1400000002;
      *(a2 + 24) = 10;
      *(a2 + 32) = 20;
      v5 = 4;
    }

    else
    {
      if (a3)
      {
        v6 = 32;
      }

      else
      {
        v6 = 16;
      }

      *a2 = 2;
      *(a2 + 4) = v6;
      *(a2 + 8) = xmmword_1DBD49860;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      v5 = 5;
    }
  }

LABEL_32:
  *(a2 + 28) = v5;
}

void SRTPGetROC(uint64_t a1, unsigned int a2, int *a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 408);
  v10 = v8 != 4 && (v8 & 0xFFFFFFFD) != 1;
  if ((*a1 & 4) != 0 && !v10)
  {
    *a3 = *(a1 + 124);
    return;
  }

  v11 = *(a1 + 130);
  v12 = *(a1 + 124);
  if (((a2 - v11) & 0x8000) != 0)
  {
    if (a2 > v11)
    {
      if (v12)
      {
        v16 = v12 - 1;
        if (a4)
        {
          *(a1 + 130) = a2;
        }
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SRTPGetROC_cold_1();
          }
        }

        v16 = 0;
      }

      if (v10)
      {
        v12 = v16;
      }

      else
      {
        v12 = v16 & 0xFFF;
      }

      *a3 = v12;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        v21 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *a3;
            v24 = 136316162;
            v25 = v19;
            v26 = 2080;
            v27 = "SRTPGetROC";
            v28 = 1024;
            v29 = 494;
            v30 = 1024;
            v31 = v22;
            v32 = 1024;
            v33 = a2;
            _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PreCalc: use dwROC=%u (wSeq=%u)", &v24, 0x28u);
          }
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v23 = *a3;
          v24 = 136316162;
          v25 = v19;
          v26 = 2080;
          v27 = "SRTPGetROC";
          v28 = 1024;
          v29 = 494;
          v30 = 1024;
          v31 = v23;
          v32 = 1024;
          v33 = a2;
          _os_log_debug_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEBUG, " [%s] %s:%d PreCalc: use dwROC=%u (wSeq=%u)", &v24, 0x28u);
        }
      }

      goto LABEL_30;
    }
  }

  else
  {
    if (a2 >= v11)
    {
      v17 = 0;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        v15 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v24 = 136316162;
            v25 = v13;
            v26 = 2080;
            v27 = "SRTPGetROC";
            v28 = 1024;
            v29 = 468;
            v30 = 1024;
            v31 = v12;
            v32 = 1024;
            v33 = a2;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PreCalc: dwROC=%u (wSeq=%u)", &v24, 0x28u);
          }
        }

        else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v24 = 136316162;
          v25 = v13;
          v26 = 2080;
          v27 = "SRTPGetROC";
          v28 = 1024;
          v29 = 468;
          v30 = 1024;
          v31 = v12;
          v32 = 1024;
          v33 = a2;
          _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, " [%s] %s:%d PreCalc: dwROC=%u (wSeq=%u)", &v24, 0x28u);
        }
      }

      v17 = 1;
    }

    v18 = v17 + v12;
    if (a4)
    {
      *(a1 + 130) = a2;
    }

    if (v10)
    {
      v12 = v18;
    }

    else
    {
      v12 = v18 & 0xFFF;
    }
  }

  *a3 = v12;
LABEL_30:
  if (a4)
  {
    *(a1 + 124) = v12;
  }
}

uint64_t SRTPCleanUpEncryption()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2147549186;
  }

  v1 = v0;
  SRTPCleanUp(v0 + 7080);
  SRTPCleanUp(v1 + 7528);
  SRTPCleanUp(v1 + 7976);
  SRTPCleanUp(v1 + 8424);
  VCMediaKeyIndex_Release((v1 + 9016));
  *(v1 + 9016) = 0;
  *(v1 + 8984) = 0u;
  *(v1 + 9000) = 0u;
  *(v1 + 8952) = 0u;
  *(v1 + 8968) = 0u;
  *(v1 + 8920) = 0u;
  *(v1 + 8936) = 0u;
  *(v1 + 8888) = 0u;
  *(v1 + 8904) = 0u;
  *(v1 + 8872) = 0u;
  CheckOutHandleDebug();
  return 0;
}

uint64_t SRTPCleanUp(uint64_t a1)
{
  if (!*a1)
  {
    return 2149711928;
  }

  *a1 = 0;
  VCMediaKeyIndex_Release((a1 + 352));
  VCMediaKeyIndex_Release((a1 + 360));
  pthread_mutex_destroy((a1 + 288));
  os_unfair_lock_lock((a1 + 376));
  v2 = *(a1 + 384);
  if (v2)
  {
    CCCryptorRelease(v2);
    *(a1 + 384) = 0;
  }

  os_unfair_lock_unlock((a1 + 376));
  pthread_mutex_destroy((a1 + 8));
  pthread_cond_destroy((a1 + 72));
  return 0;
}

uint64_t SRTPInitCrypt(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 376));
  v4 = *(a1 + 384);
  if (v4)
  {
    CCCryptorRelease(v4);
    *(a1 + 384) = 0;
  }

  v5 = CCCryptorCreateWithMode(0, 4u, 0, 0, 0, a2, *(a1 + 156), 0, 0, 0, 2u, (a1 + 384));
  if (v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SRTPInitCrypt_cold_1();
      }
    }
  }

  os_unfair_lock_unlock((a1 + 376));
  return v5;
}

unint64_t SRTPPrepareEncryption()
{
  v0 = 2147549186;
  result = CheckInHandleDebug();
  if (!result)
  {
    return v0;
  }

  v2 = result;
  if (result == 0xFFFFFFFF)
  {
    return 2147549190;
  }

  v0 = 2149711911;
  if (*(result + 7080) || *(result + 7528) || *(result + 7976) || *(result + 8424))
  {
LABEL_10:
    CheckOutHandleDebug();
    return v0;
  }

  if (result < result + 27800)
  {
    *(result + 7496) = 0u;
    *(result + 7512) = 0u;
    v3 = (result + 7976);
    *(result + 7464) = 0u;
    *(result + 7480) = 0u;
    v4 = (result + 8424);
    *(result + 7432) = 0u;
    *(result + 7448) = 0u;
    *(result + 7400) = 0u;
    *(result + 7416) = 0u;
    *(result + 7368) = 0u;
    *(result + 7384) = 0u;
    *(result + 7336) = 0u;
    *(result + 7352) = 0u;
    *(result + 7304) = 0u;
    *(result + 7320) = 0u;
    *(result + 7272) = 0u;
    *(result + 7288) = 0u;
    *(result + 7240) = 0u;
    *(result + 7256) = 0u;
    *(result + 7208) = 0u;
    *(result + 7224) = 0u;
    *(result + 7176) = 0u;
    *(result + 7192) = 0u;
    *(result + 7144) = 0u;
    *(result + 7160) = 0u;
    *(result + 7112) = 0u;
    *(result + 7128) = 0u;
    *(result + 7080) = 0u;
    *(result + 7096) = 0u;
    *(result + 7944) = 0u;
    *(result + 7960) = 0u;
    *(result + 7912) = 0u;
    *(result + 7928) = 0u;
    *(result + 7880) = 0u;
    *(result + 7896) = 0u;
    *(result + 7848) = 0u;
    *(result + 7864) = 0u;
    *(result + 7816) = 0u;
    *(result + 7832) = 0u;
    *(result + 7784) = 0u;
    *(result + 7800) = 0u;
    *(result + 7752) = 0u;
    *(result + 7768) = 0u;
    *(result + 7720) = 0u;
    *(result + 7736) = 0u;
    *(result + 7688) = 0u;
    *(result + 7704) = 0u;
    *(result + 7656) = 0u;
    *(result + 7672) = 0u;
    *(result + 7624) = 0u;
    *(result + 7640) = 0u;
    *(result + 7592) = 0u;
    *(result + 7608) = 0u;
    *(result + 7560) = 0u;
    *(result + 7576) = 0u;
    *(result + 7528) = 0u;
    *(result + 7544) = 0u;
    *(result + 7080) = 1;
    *(result + 7200) = *(result + 200);
    *(result + 7210) = *(result + 192);
    *(result + 7528) = 1;
    pthread_mutex_init((result + 7088), 0);
    pthread_cond_init((v2 + 7152), 0);
    pthread_mutex_init((v2 + 7536), 0);
    pthread_cond_init((v2 + 7600), 0);
    pthread_mutex_init((v2 + 7368), 0);
    pthread_mutex_init((v2 + 7816), 0);
    *(v2 + 7456) = 0;
    *(v2 + 7904) = 0;
    *(v2 + 7961) = VCFeatureFlagManager_UseShortMKI() ^ 1;
    *v3 = 0u;
    *(v2 + 7992) = 0u;
    *(v2 + 8008) = 0u;
    *(v2 + 8024) = 0u;
    *(v2 + 8040) = 0u;
    *(v2 + 8056) = 0u;
    *(v2 + 8072) = 0u;
    *(v2 + 8088) = 0u;
    *(v2 + 8104) = 0u;
    *(v2 + 8120) = 0u;
    *(v2 + 8136) = 0u;
    *(v2 + 8152) = 0u;
    *(v2 + 8168) = 0u;
    *(v2 + 8184) = 0u;
    *(v2 + 8200) = 0u;
    *(v2 + 8216) = 0u;
    *(v2 + 8232) = 0u;
    *(v2 + 8248) = 0u;
    *(v2 + 8264) = 0u;
    *(v2 + 8280) = 0u;
    *(v2 + 8296) = 0u;
    *(v2 + 8312) = 0u;
    *(v2 + 8328) = 0u;
    *(v2 + 8344) = 0u;
    *(v2 + 8360) = 0u;
    *(v2 + 8376) = 0u;
    *(v2 + 8392) = 0u;
    *(v2 + 8408) = 0u;
    *(v2 + 8840) = 0u;
    *(v2 + 8856) = 0u;
    *(v2 + 8808) = 0u;
    *(v2 + 8824) = 0u;
    *(v2 + 8776) = 0u;
    *(v2 + 8792) = 0u;
    *(v2 + 8744) = 0u;
    *(v2 + 8760) = 0u;
    *(v2 + 8712) = 0u;
    *(v2 + 8728) = 0u;
    *(v2 + 8680) = 0u;
    *(v2 + 8696) = 0u;
    *(v2 + 8648) = 0u;
    *(v2 + 8664) = 0u;
    *(v2 + 8616) = 0u;
    *(v2 + 8632) = 0u;
    *(v2 + 8584) = 0u;
    *(v2 + 8600) = 0u;
    *(v2 + 8552) = 0u;
    *(v2 + 8568) = 0u;
    *(v2 + 8520) = 0u;
    *(v2 + 8536) = 0u;
    *(v2 + 8488) = 0u;
    *(v2 + 8504) = 0u;
    *(v2 + 8456) = 0u;
    *(v2 + 8472) = 0u;
    *v4 = 0u;
    *(v2 + 8440) = 0u;
    *(v2 + 7976) = 1;
    *(v2 + 8424) = 1;
    *(v2 + 8096) = *(v2 + 200);
    pthread_mutex_init((v2 + 7984), 0);
    pthread_cond_init((v2 + 8048), 0);
    pthread_mutex_init((v2 + 8432), 0);
    pthread_cond_init((v2 + 8496), 0);
    pthread_mutex_init((v2 + 8264), 0);
    pthread_mutex_init((v2 + 8712), 0);
    v0 = 0;
    *(v2 + 8352) = 0;
    *(v2 + 8800) = 0;
    goto LABEL_10;
  }

  __break(0x5519u);
  return result;
}

void SRTPUseEncryption(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6)
{
  v48[2] = *MEMORY[0x1E69E9840];
  if (a6 >= 3)
  {
    return;
  }

  v11 = CheckInHandleDebug();
  if (!v11)
  {
    return;
  }

  v12 = v11;
  if (v11 == 0xFFFFFFFFLL)
  {
    return;
  }

  if (v11[1770] && v11[1882] && v11[1994] && v11[2106])
  {
    v13 = v11 + 6950;
    v46 = -1431655766;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v44 = v14;
    v45 = v14;
    v43 = -1431655766;
    v41 = v14;
    v42 = v14;
    setTransformPolicyFromCipherSuite(a4, &v44, a6 == 2);
    setTransformPolicyFromCipherSuite(a5, &v41, a6 == 2);
    v16 = v45;
    *(v12 + 467) = v44;
    *(v12 + 468) = v16;
    v12[1876] = v46;
    v12[1877] = a6;
    if (v12 >= v13)
    {
      goto LABEL_53;
    }

    v12[1988] = v46;
    v17 = v43;
    v12[2100] = v43;
    v18 = *(v12 + 1869);
    *(v12 + 904) = v18;
    v19 = v45;
    *(v12 + 495) = v44;
    *(v12 + 496) = v19;
    v12[1989] = a6;
    v20 = *(v12 + 1981);
    *(v12 + 960) = v20;
    v21 = v42;
    *(v12 + 523) = v41;
    v22 = v41;
    v23 = v42;
    *(v12 + 524) = v21;
    v12[2101] = a6;
    v24 = *(v12 + 2093);
    *(v12 + 1016) = v24;
    v12[2212] = v17;
    *(v12 + 552) = v23;
    *(v12 + 551) = v22;
    v12[2213] = a6;
    v25 = *(v12 + 2205);
    *(v12 + 1072) = v25;
    if (!(a5 | a4))
    {
LABEL_52:
      SRTPInitializedEncryption((v12 + 1770), 1);
      SRTPInitializedEncryption((v12 + 1882), 0);
      SRTPInitializedEncryption((v12 + 1994), 1);
      SRTPInitializedEncryption((v12 + 2106), 0);
      CheckOutHandleDebug();
      return;
    }

    if (a2 && a3)
    {
      v37 = &v37;
      if (v18 <= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v18;
      }

      if (v20 <= v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v20;
      }

      v28 = MEMORY[0x1EEE9AC00](v15);
      v30 = &v37 - v29;
      if (v26)
      {
        v28 = memset(&v37 - v29, 170, v26);
      }

      v40 = v30;
      v38 = v26;
      MEMORY[0x1EEE9AC00](v28);
      memset(v48, 170, 14);
      if (v27)
      {
        memset(&v37 - ((v27 + 15) & 0x1FFFFFFF0), 170, v27);
      }

      v39 = &v37 - ((v27 + 15) & 0x1FFFFFFF0);
      memset(v47, 170, 14);
      v31 = v38;
      if ((v38 & 0x80000000) != 0)
      {
        goto LABEL_53;
      }

      HexToByte(v40, v38, a2, 65);
      HexToByte(v48, 14, (a2 + 65), 29);
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_53;
      }

      HexToByte(v39, v27, a3, 65);
      HexToByte(v47, 14, (a3 + 65), 29);
      if (!a4)
      {
        goto LABEL_43;
      }

      v32 = v12[1808];
      if ((v32 & 0x80000000) != 0 || v32 > v31)
      {
        goto LABEL_53;
      }

      if (SRTPUseEncryptionInternal((v12 + 1770), v40, v32, v48, *(a2 + 96), 1))
      {
        goto LABEL_50;
      }

      v33 = v12[1920];
      if ((v33 & 0x80000000) != 0 || v33 > v27)
      {
        goto LABEL_53;
      }

      if (!SRTPUseEncryptionInternal((v12 + 1882), v39, v33, v47, *(a3 + 96), 1))
      {
LABEL_43:
        if (!a5)
        {
LABEL_51:
          BoolValueForKey = VCDefaults_GetBoolValueForKey(@"enableEncryptionDebug", 0);
          *(v12 + 7512) = BoolValueForKey;
          *(v12 + 7960) = BoolValueForKey;
          goto LABEL_52;
        }

        v34 = v12[2032];
        if ((v34 & 0x80000000) != 0 || v34 > v31)
        {
LABEL_53:
          __break(0x5519u);
          return;
        }

        if (!SRTPUseEncryptionInternal((v12 + 1994), v40, v34, v48, *(a2 + 96), 0))
        {
          v35 = v12[2144];
          if ((v35 & 0x80000000) == 0 && v35 <= v27)
          {
            if (SRTPUseEncryptionInternal((v12 + 2106), v39, v35, v47, *(a3 + 96), 0))
            {
              goto LABEL_50;
            }

            goto LABEL_51;
          }

          goto LABEL_53;
        }
      }

LABEL_50:
      CheckOutHandleDebug();
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SRTPUseEncryption_cold_1();
      }
    }

    CheckOutHandleDebug();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SRTPUseEncryption_cold_2();
      }
    }

    CheckOutHandleDebug();
  }
}

uint64_t SRTPUseEncryptionInternal(uint64_t result, const void *a2, size_t __n, void *a4, void *a5, int a6)
{
  if (__n >= 0x21)
  {
    goto LABEL_24;
  }

  v9 = __n;
  v11 = result;
  memcpy((result + 160), a2, __n);
  v12 = *(a4 + 6);
  *(v11 + 192) = *a4;
  *(v11 + 198) = v12;
  pthread_mutex_lock((v11 + 288));
  VCMediaKeyIndex_ReleaseAndCopyNewValue((v11 + 352), a5);
  result = pthread_mutex_unlock((v11 + 288));
  v13 = *(v11 + 428);
  v14 = a6 == 0;
  if (a6)
  {
    v15 = 1;
  }

  else
  {
    v15 = 4;
  }

  if (v14)
  {
    v16 = 5;
  }

  else
  {
    v16 = 2;
  }

  if (v14)
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  if (*(v11 + 392))
  {
    v18 = *(v11 + 400);
    if (v18 > 0x20 || a2 && !v9)
    {
      goto LABEL_24;
    }

    result = MakeSessionKey(v13 == 2, a2, v9, a4, v17, (v11 + 206), v18);
    v19 = *(v11 + 404);
    if (v19 > 0xE)
    {
      goto LABEL_24;
    }

    MakeSessionKey(v13 == 2, a2, v9, a4, v16, (v11 + 238), v19);
    result = SRTPInitCrypt(v11, (v11 + 206));
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  if (*(v11 + 408))
  {
    v20 = *(v11 + 412);
    if (v20 <= 0x20 && (!a2 || v9))
    {
      MakeSessionKey(v13 == 2, a2, v9, a4, v15, (v11 + 252), v20);
      return 0;
    }

LABEL_24:
    __break(0x5519u);
    return result;
  }

  return 0;
}

uint64_t SRTPInitializedEncryption(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 8));
  if (a2)
  {
    v4 = 10;
  }

  else
  {
    v4 = 12;
  }

  *a1 |= v4;
  pthread_cond_broadcast((a1 + 72));

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t _SRTPUpdateEncryption(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = 2147549186;
  if (a1)
  {
    if (a1 == 0xFFFFFFFFLL)
    {
      return 2147549190;
    }

    if (*(a1 + 7080) && *(a1 + 7528) && *(a1 + 7976) && *(a1 + 8424))
    {
      v16[0] = 0;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      SRTPDeriveMediaKeyInfo(a1 + 7080, &v10, a2);
      if (!v5)
      {
        os_unfair_lock_lock((a1 + 9028));
        if ((*(a1 + 9024) & 1) == 0)
        {
          *(a1 + 7648) = *(a1 + 4832);
          *(a1 + 9024) = 1;
        }

        SRTPDeriveMediaKeyInfo(a1 + 7528, v8, a2);
        v2 = v6;
        os_unfair_lock_unlock((a1 + 9028));
        if (v2)
        {
          goto LABEL_25;
        }

        if (!*(a1 + 7472) || (v5 = SRTPUpdateEncryptionInfo(a1 + 7080, &v10, 1), !v5))
        {
          if (!*(a1 + 7920) || (v5 = SRTPUpdateEncryptionInfo(a1 + 7528, v8, 1), !v5))
          {
            if (!*(a1 + 8368) || (v5 = SRTPUpdateEncryptionInfo(a1 + 7976, &v10, 0), !v5))
            {
              if (!*(a1 + 8816))
              {
                v2 = 0;
                goto LABEL_25;
              }

              v5 = SRTPUpdateEncryptionInfo(a1 + 8424, v8, 0);
            }
          }
        }
      }

      v2 = v5;
LABEL_25:
      VCMediaKeyIndex_Release((a2 + 144));
      VCMediaKeyIndex_Release(v16);
      v16[0] = 0;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      VCMediaKeyIndex_Release(&v9);
      return v2;
    }

    v2 = 2149711928;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _SRTPUpdateEncryption_cold_1();
      }
    }
  }

  return v2;
}

void SRTPUpdateKeyMaterialForRTPInfo(unint64_t a1, const __CFDictionary *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v25[0] = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  SRTPGetKeyDerivationCryptoSet(&v16, a2);
  if (v3)
  {
    SRTPUpdateKeyMaterialForRTPInfo_cold_1(a1);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v4;
        v12 = 2080;
        v13 = "SRTPUpdateKeyMaterialForRTPInfo";
        v14 = 1024;
        v15 = 976;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Configuring Crypto Set", &v10, 0x1Cu);
      }
    }

    if (a1 + 27800 <= a1)
    {
      __break(0x5519u);
      return;
    }

    if (_SRTPUpdateEncryption(a1, &v16))
    {
      SRTPUpdateKeyMaterialForRTPInfo_cold_2(a1);
    }
  }

  if (*(a1 + 10647) == 1)
  {
    VCMediaKeyIndex_Release((a1 + 9016));
    v6 = v23;
    *(a1 + 8968) = v22;
    *(a1 + 8984) = v6;
    *(a1 + 9000) = v24;
    *(a1 + 9016) = v25[0];
    v7 = v19;
    *(a1 + 8904) = v18;
    *(a1 + 8920) = v7;
    v8 = v21;
    *(a1 + 8936) = v20;
    *(a1 + 8952) = v8;
    v9 = v17;
    *(a1 + 8872) = v16;
    *(a1 + 8888) = v9;
  }

  else
  {
    VCMediaKeyIndex_Release(v25);
  }
}

void SRTPGetKeyDerivationCryptoSet(unint64_t a1, CFDictionaryRef theDict)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Value = CFDictionaryGetValue(theDict, @"SecurityKey");
    v5 = CFDictionaryGetValue(theDict, @"SecuritySalt");
    if (Value && v5 != 0)
    {
      v7 = v5;
      v17 = CFDictionaryGetValue(theDict, @"SecurityKeyIndex");
      if ((CFDataGetLength(Value) & 0xFFFFFFE0) != 0)
      {
        Length = 32;
      }

      else
      {
        Length = CFDataGetLength(Value);
      }

      ErrorLogLevelForModule = CFDataGetLength(v7);
      if ((ErrorLogLevelForModule & 0xFFFFFFE0) != 0)
      {
        v10 = 32;
      }

      else
      {
        ErrorLogLevelForModule = CFDataGetLength(v7);
        v10 = ErrorLogLevelForModule;
      }

      if (Length > 32)
      {
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
          if (ErrorLogLevelForModule)
          {
            *buf = 136316162;
            v19 = v11;
            v20 = 2080;
            v21 = "SRTPGetKeyDerivationCryptoSet";
            v22 = 1024;
            v23 = 112;
            v24 = 1024;
            v25 = 32;
            v26 = 1024;
            v27 = Length;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Oversize member key length (limit=%d, given=%d)", buf, 0x28u);
          }
        }
      }

      if (v10 >= 33)
      {
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          ErrorLogLevelForModule = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
          if (ErrorLogLevelForModule)
          {
            *buf = 136316162;
            v19 = v13;
            v20 = 2080;
            v21 = "SRTPGetKeyDerivationCryptoSet";
            v22 = 1024;
            v23 = 115;
            v24 = 1024;
            v25 = 32;
            v26 = 1024;
            v27 = v10;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Oversize member salt length (limit=%d, given=%d)", buf, 0x28u);
          }
        }
      }

      v15 = MEMORY[0x1EEE9AC00](ErrorLogLevelForModule);
      if (Length)
      {
        v15 = memset(&v16 - ((Length + 15) & 0x1FFFFFFF0), 170, Length);
      }

      MEMORY[0x1EEE9AC00](v15);
      if (v10)
      {
        memset(&v16 - ((v10 + 15) & 0x1FFFFFFF0), 170, v10);
      }

      v29.location = 0;
      v29.length = Length;
      CFDataGetBytes(Value, v29, &v16 - ((Length + 15) & 0x1FFFFFFF0));
      v30.location = 0;
      v30.length = v10;
      CFDataGetBytes(v7, v30, &v16 - ((v10 + 15) & 0x1FFFFFFF0));
      if ((Length & 0x80000000) != 0 || (*(a1 + 68) = ByteToHex(a1, 65, &v16 - ((Length + 15) & 0x1FFFFFFF0), Length), (v10 & 0x80000000) != 0))
      {
        __break(0x5519u);
      }

      else
      {
        *(a1 + 140) = ByteToHex(a1 + 72, 65, &v16 - ((v10 + 15) & 0x1FFFFFFF0), v10);
        VCMediaKeyIndex_ReleaseAndCopyNewValue((a1 + 144), v17);
      }
    }
  }
}

void _SRTPCancelEncryption(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 && a1 != 0xFFFFFFFFLL)
  {
    if (*(a1 + 7080) && *(a1 + 7528))
    {
      pthread_mutex_lock((a1 + 7088));
      *(a1 + 7084) = 1;
      pthread_cond_broadcast((a1 + 7152));
      pthread_mutex_unlock((a1 + 7088));
      pthread_mutex_lock((a1 + 7536));
      *(a1 + 7532) = 1;
      pthread_cond_broadcast((a1 + 7600));
      pthread_mutex_unlock((a1 + 7536));
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v2 = VRTraceErrorLogLevelToCSTR();
        v3 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v4 = 136315650;
          v5 = v2;
          v6 = 2080;
          v7 = "_SRTPCancelEncryption";
          v8 = 1024;
          v9 = 963;
          _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Canceld SRTP encryption", &v4, 0x1Cu);
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _SRTPCancelEncryption_cold_1();
      }
    }
  }
}

uint64_t SRTPUpdateKeyMaterial(uint64_t a1, const __CFDictionary *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149711873;
  }

  SRTPUpdateKeyMaterialForRTPInfo(v3, a2);
  v5 = v4;
  CheckOutHandleDebug();
  return v5;
}

uint64_t SRTPUpdateEncryptionInfo(uint64_t a1, uint64_t a2, int a3)
{
  if (VCMediaKeyIndex_isValid(*(a2 + 96)))
  {

    return _SRTPUpdateEncryptionInfo(a1, a2, a3);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SRTPUpdateEncryptionInfo_cold_1();
      }
    }

    return 2149711873;
  }
}

uint64_t _SRTPUpdateEncryptionInfo(uint64_t a1, uint64_t a2, int a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 152);
  MEMORY[0x1EEE9AC00](a1);
  if (v6)
  {
    memset(&v10[-1] - ((v6 + 15) & 0x1FFFFFFF0), 170, v6);
  }

  v9 = 0;
  memset(v10, 170, 14);
  VCMediaKeyIndex_ReleaseAndCopyNewValue(&v9, *(a2 + 96));
  if ((v6 & 0x80000000) != 0)
  {
    __break(0x5519u);
  }

  HexToByte(&v10[-1] - ((v6 + 15) & 0x1FFFFFFF0), v6, a2, 65);
  HexToByte(v10, 14, (a2 + 65), 29);
  v7 = SRTPUseEncryptionInternal(a1, &v10[-1] - ((v6 + 15) & 0x1FFFFFFF0), v6, v10, v9, a3);
  VCMediaKeyIndex_Release(&v9);
  return v7;
}

void SRTPDeriveMediaKeyInfo(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  if (!a3)
  {
    return;
  }

  v4 = *(a3 + 68);
  if (v4 > 65 || v4 < 1 || (*(a3 + 140) - 66) < 0xFFFFFFBF)
  {
    return;
  }

  v22[1] = v22;
  v7 = v4 >> 1;
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v22 - v9;
  if (v11 != 1)
  {
    v8 = memset(v22 - v9, 170, v7);
  }

  v12 = *(a3 + 140);
  v13 = (v12 / 2);
  MEMORY[0x1EEE9AC00](v8);
  if ((v12 + 1) >= 3)
  {
    memset(v22 - ((v13 + 15) & 0x1FFFFFFF0), 170, (v12 / 2));
  }

  v14 = *(a3 + 68);
  if (v14 >= 0x42 || (HexToByte(v10, v7, a3, v14), v12 < -1) || (v15 = *(a3 + 140), v15 > 0x41))
  {
LABEL_27:
    __break(0x5519u);
    return;
  }

  HexToByte(v22 - ((v13 + 15) & 0x1FFFFFFF0), v12 / 2, (a3 + 72), v15);
  v23 = *(a1 + 120);
  v16 = (*(a1 + 152) + 14);
  MEMORY[0x1EEE9AC00](v17);
  v18 = v22 - ((v16 + 15) & 0x1FFFFFFF0);
  if (v16)
  {
    memset(v22 - ((v16 + 15) & 0x1FFFFFFF0), 170, v16);
  }

  if (!CCKeyDerivationHMac())
  {
    v19 = *(a1 + 152);
    if ((v19 & 0x80000000) == 0 && v19 <= v16)
    {
      ByteToHex(a2, 65, v22 - ((v16 + 15) & 0x1FFFFFFF0), v19);
      v20 = *(a1 + 152);
      v21 = &v18[v20];
      if (&v18[v20] <= &v18[v16] && v18 <= v21 && v16 - v20 >= 14)
      {
        ByteToHex(a2 + 65, 29, v21, 14);
        VCMediaKeyIndex_ReleaseAndCopyNewValue((a2 + 96), *(a3 + 144));
        return;
      }
    }

    goto LABEL_27;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      SRTPDeriveMediaKeyInfo_cold_1();
    }
  }
}

uint64_t SRTPEncryptData(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v43 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v31 = 0;
  v34 = 0;
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    v7 = v4;
    v8 = v3;
    v9 = v2;
    v10 = v1;
    if (g_fReportFirstCounter)
    {
      memset(v35, 170, 17);
      ByteToHex(v35, 17, v4, v5);
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        v13 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v11;
            *&buf[12] = 2080;
            *&buf[14] = "SRTPEncryptData";
            *&buf[22] = 1024;
            *&buf[24] = 1110;
            *&buf[28] = 2080;
            *&buf[30] = v35;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SRTPEncryptData: In=[%s]", buf, 0x26u);
            if (!v9)
            {
LABEL_7:
              v8 = *(v10 + 368);
              v14 = HIWORD(v8);
              v32 = HIWORD(v8);
              goto LABEL_12;
            }

LABEL_11:
            SRTPGetROC(v10, v8, &v32, 1);
            v14 = v32;
LABEL_12:
            v16 = *(v10 + 120);
            *&iv[6] = *(v10 + 244);
            *iv = *(v10 + 238);
            v17 = vshl_u32(vdup_n_s32(v14), 0xFFFFFFF0FFFFFFE8);
            v18 = vshl_u32(vdup_n_s32(v16), 0xFFFFFFF0FFFFFFE8);
            v18.i8[1] = v18.i8[4];
            v18.i8[2] = BYTE1(v16);
            v18.i8[3] = v16;
            v18.i8[4] = v17.i8[0];
            v18.i8[5] = v17.i8[4];
            v18.i8[6] = BYTE1(v14);
            v18.i8[7] = v14;
            *&iv[4] = veor_s8(*&iv[4], v18);
            iv[13] ^= v8;
            v34 = 0;
            v19 = *(v10 + 428);
            if (v19 >= 3)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  SRTPEncryptData_cold_2();
                }
              }

              LOBYTE(v20) = 8;
            }

            else
            {
              v20 = 0x800080001uLL >> (16 * v19);
            }

            iv[12] ^= v8 >> v20;
            if (g_fReportFirstCounter)
            {
              memset(buf, 170, 0xFA0uLL);
              --g_fReportFirstCounter;
              ByteToHex(buf, 4000, iv, 16);
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v21 = VRTraceErrorLogLevelToCSTR();
                v22 = *MEMORY[0x1E6986650];
                v23 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] == 1)
                {
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *v35 = 136316162;
                    *&v35[4] = v21;
                    *&v35[12] = 2080;
                    *&v35[14] = "MakeCounter";
                    v36 = 1024;
                    v37 = 450;
                    v38 = 2080;
                    v39 = buf;
                    v40 = 1024;
                    v41 = v14;
                    _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d   counters: [%s], ROC=%d", v35, 0x2Cu);
                  }
                }

                else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  *v35 = 136316162;
                  *&v35[4] = v21;
                  *&v35[12] = 2080;
                  *&v35[14] = "MakeCounter";
                  v36 = 1024;
                  v37 = 450;
                  v38 = 2080;
                  v39 = buf;
                  v40 = 1024;
                  v41 = v14;
                  _os_log_debug_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEBUG, " [%s] %s:%d   counters: [%s], ROC=%d", v35, 0x2Cu);
                }
              }
            }

            if (*(v10 + 432) == 1 && VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v24 = VRTraceErrorLogLevelToCSTR();
              v25 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v26 = VCMediaKeyIndex_Description(*(v10 + 360));
                *buf = 136316418;
                *&buf[4] = v24;
                *&buf[12] = 2080;
                *&buf[14] = "SRTPEncryptData";
                *&buf[22] = 1024;
                *&buf[24] = 1123;
                *&buf[28] = 2080;
                *&buf[30] = v26;
                *&buf[38] = 2048;
                *&buf[40] = v14;
                *&buf[48] = 1024;
                *&buf[50] = v8;
                _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SRTPEncData: MKI=%s, ROC==%08lX, SEQ==%u):", buf, 0x36u);
              }
            }

            os_unfair_lock_lock((v10 + 376));
            if (CCCryptorReset(*(v10 + 384), iv))
            {
              SRTPEncryptData_cold_3();
            }

            else
            {
              if (!CCCryptorUpdate(*(v10 + 384), v7, v6, v7, v6, &v31))
              {
                if (g_fReportFirstCounter)
                {
                  memset(v35, 170, 17);
                  ByteToHex(v35, 17, v7, v6);
                  if (VRTraceGetErrorLogLevelForModule() >= 8)
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
                        *&buf[12] = 2080;
                        *&buf[14] = "SRTPEncryptData";
                        *&buf[22] = 1024;
                        *&buf[24] = 1137;
                        *&buf[28] = 2080;
                        *&buf[30] = v35;
                        _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SRTPEncryptData: Out=[%s]", buf, 0x26u);
                      }
                    }

                    else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                    {
                      SRTPEncryptData_cold_5();
                    }
                  }
                }

                v15 = 0;
                goto LABEL_39;
              }

              SRTPEncryptData_cold_4();
            }

            v15 = *buf;
LABEL_39:
            os_unfair_lock_unlock((v10 + 376));
            return v15;
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          SRTPEncryptData_cold_1();
          if (!v9)
          {
            goto LABEL_7;
          }

          goto LABEL_11;
        }
      }
    }

    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  return 2149711873;
}

void SRTPEncrypt(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*a1 & 2) == 0 || !*(a1 + 392))
  {
    return;
  }

  v7 = *(a1 + 432);
  if (g_fReportFirstCounter || (*(a1 + 432) & 1) != 0)
  {
    v8 = (*(a1 + 432) & 1) != 0 ? 7 : 8;
    if (v8 <= VRTraceGetErrorLogLevelForModule())
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      if (v7)
      {
        v10 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v15 = VCMediaKeyIndex_Description(*(a1 + 352));
          v16 = *(a1 + 120);
          v17 = 136316418;
          v18 = v9;
          v19 = 2080;
          v20 = "SRTPEncrypt";
          v21 = 1024;
          v22 = 1177;
          v23 = 2080;
          v24 = v15;
          v25 = 2048;
          v26 = v16;
          v27 = 1024;
          v28 = a2;
          _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, " [%s] %s:%d SRTPEnc: MKI=%s, SSRC==%08lX, SEQ==%u):", &v17, 0x36u);
        }

        goto LABEL_17;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        v12 = VCMediaKeyIndex_Description(*(a1 + 352));
        v13 = *(a1 + 120);
        v17 = 136316418;
        v18 = v9;
        v19 = 2080;
        v20 = "SRTPEncrypt";
        v21 = 1024;
        v22 = 1177;
        v23 = 2080;
        v24 = v12;
        v25 = 2048;
        v26 = v13;
        v27 = 1024;
        v28 = a2;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SRTPEnc: MKI=%s, SSRC==%08lX, SEQ==%u):", &v17, 0x36u);
      }
    }
  }

LABEL_17:
  v14 = *(a1 + 144) + 1;
  *(a1 + 144) = v14;
  if (v14 < 0x1000000000001)
  {
    if (a4 < 0)
    {
      __break(0x5519u);
    }

    else if (a4)
    {
      SRTPEncryptData(a1);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      SRTPEncrypt_cold_1();
    }
  }
}

uint64_t SRTPDecrypt(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*a1 & 4) == 0)
  {
    return 2149711928;
  }

  if (!*(a1 + 392))
  {
    return 0;
  }

  v8 = *(a1 + 432);
  if (!g_fReportFirstCounter && (*(a1 + 432) & 1) == 0)
  {
    goto LABEL_18;
  }

  v9 = (*(a1 + 432) & 1) != 0 ? 7 : 8;
  if (v9 > VRTraceGetErrorLogLevelForModule())
  {
    goto LABEL_18;
  }

  v10 = VRTraceErrorLogLevelToCSTR();
  if ((v8 & 1) == 0)
  {
    v11 = *MEMORY[0x1E6986650];
    v12 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = VCMediaKeyIndex_Description(*(a1 + 352));
      v16 = *(a1 + 120);
      v17 = 136316418;
      v18 = v10;
      v19 = 2080;
      v20 = "SRTPDecrypt";
      v21 = 1024;
      v22 = 1205;
      v23 = 2080;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      v27 = 1024;
      v28 = a2;
      _os_log_debug_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d SRTPDec: MKI=%s, SSRC==%08lX, SEQ==%u):", &v17, 0x36u);
      if (a4 < 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }

LABEL_18:
    if (a4 < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v11 = *MEMORY[0x1E6986650];
  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_18;
  }

LABEL_15:
  v13 = VCMediaKeyIndex_Description(*(a1 + 352));
  v14 = *(a1 + 120);
  v17 = 136316418;
  v18 = v10;
  v19 = 2080;
  v20 = "SRTPDecrypt";
  v21 = 1024;
  v22 = 1205;
  v23 = 2080;
  v24 = v13;
  v25 = 2048;
  v26 = v14;
  v27 = 1024;
  v28 = a2;
  _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SRTPDec: MKI=%s, SSRC==%08lX, SEQ==%u):", &v17, 0x36u);
  if (a4 < 0)
  {
LABEL_23:
    __break(0x5519u);
  }

LABEL_19:
  if (a4)
  {
    return SRTPEncryptData(a1);
  }

  return 0;
}

uint64_t SRTCPEncrypt(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int *a5)
{
  v5 = 2149711891;
  if ((*result & 2) == 0)
  {
    return 2149711928;
  }

  v7 = result;
  if (!*(result + 392))
  {
    v5 = 0;
    *a5 = a3;
    return v5;
  }

  v8 = a3 + 4;
  if ((a3 + 4) > a4)
  {
    return 2149711873;
  }

  v9 = *(result + 368) + 1;
  *(result + 368) = v9;
  if (v9 > 0x7FFFFFFE)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SRTCPEncrypt_cold_1();
      }
    }

    return v5;
  }

  if ((a4 & 0x80000000) == 0 && a3 <= a4)
  {
    v11 = a4;
    v12 = a3;
    if (a3)
    {
      result = SRTPEncryptData(result);
      v5 = result;
      v9 = *(v7 + 368);
    }

    else
    {
      v5 = 0;
    }

    if ((v11 - v12) >= 4)
    {
      *(a2 + v12) = bswap32(v9 | 0x80000000);
      *a5 = v8;
      return v5;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t SRTCPDecrypt(uint64_t result, unint64_t a2, int a3, int *a4)
{
  v4 = 2149711880;
  if ((*result & 4) == 0)
  {
    return 2149711928;
  }

  if (!*(result + 392))
  {
    v4 = 0;
    *a4 = a3;
    return v4;
  }

  if (a3 <= 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SRTCPDecrypt_cold_1();
      }
    }

    return v4;
  }

  v5 = (a3 - 4);
  v6 = (a2 + v5);
  if (a2 + v5 > a2 + a3 || v6 < a2 || a3 - v5 < 4)
  {
    __break(0x5519u);
  }

  else
  {
    v4 = 0;
    v7 = bswap32(*v6);
    *(result + 368) = v7 & 0x7FFFFFFF;
    *a4 = v5;
    if (a3 == 4 || (v7 & 0x80000000) == 0)
    {
      return v4;
    }

    return SRTPEncryptData(result);
  }

  return result;
}

uint64_t SRTPCalculateTotalSuffixBytes(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    SRTPCalculateTotalSuffixBytes_cold_3();
    return v10;
  }

  v3 = *(a1 + 408);
  if (v3 == 1)
  {
    v4 = 0;
    v6 = 4;
    goto LABEL_15;
  }

  if (v3 == 4)
  {
    v4 = 10;
    goto LABEL_7;
  }

  if (v3 != 3)
  {
    v4 = *(a1 + 416);
    if (v4 != -1)
    {
      v5 = v3 == 1;
      goto LABEL_11;
    }

    SRTPCalculateTotalSuffixBytes_cold_2();
    return v10;
  }

  v4 = 4;
LABEL_7:
  v5 = (a3 & 0x7F) == 0;
LABEL_11:
  v7 = v5;
  v6 = 4 * v7;
LABEL_15:
  v8 = _SRTP_MKISize(a1, a2);
  if (v8 == -1)
  {
    SRTPCalculateTotalSuffixBytes_cold_1();
    return v10;
  }

  return (v6 + v4 + v8);
}

uint64_t _SRTP_MKISize(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 408);
  if ((v3 - 3) < 2)
  {
    goto LABEL_2;
  }

  if (v3 != 1)
  {
    return 0;
  }

  if (!a2 || VCSecurityKeyHolder_SecurityKeyMode(a2) != 1)
  {
LABEL_2:
    pthread_mutex_lock((a1 + 288));
    v4 = VCMediaKeyIndex_UniquePrefixSize(*(a1 + 352));
    pthread_mutex_unlock((a1 + 288));
    return v4;
  }

  return 16;
}

uint64_t SRTPAddAuthenticationTag(uint64_t a1, uint64_t a2, unsigned int a3, signed int a4, char *a5, unsigned int a6, unsigned int *a7)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    SRTPAddAuthenticationTag_cold_9();
    return __src;
  }

  if (!a7)
  {
    SRTPAddAuthenticationTag_cold_8();
    return __src;
  }

  *a7 = a6;
  v38 = -86;
  v14 = 0;
  if (SRTPIsAuthenticationEnabled(a1, &v38) & 0x80000000) == 0 && (v38)
  {
    v15 = _SRTP_MKISize(a1, a2);
    if (v15 == -1)
    {
      SRTPAddAuthenticationTag_cold_7();
      return __src;
    }

    v16 = v15;
    v17 = *(a1 + 408);
    if (v17 - 3 >= 2)
    {
      if (v17 == 1)
      {
        v18 = 4;
        goto LABEL_15;
      }

      v18 = 0;
    }

    else
    {
      v18 = 4 * ((a3 & 0x7F) == 0);
    }

    if (v17 != 1)
    {
      if (v17 == 4)
      {
        v19 = 10;
      }

      else if (v17 == 3)
      {
        v19 = 4;
      }

      else
      {
        v19 = *(a1 + 416);
        if (v19 == -1)
        {
          SRTPAddAuthenticationTag_cold_6();
          return __src;
        }
      }

LABEL_18:
      v20 = v15 + a6;
      v21 = v15 + a6 + v18 + v19;
      if (v21 > a4)
      {
        v33 = v18;
        v14 = 2149711886;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v34 = VRTraceErrorLogLevelToCSTR();
          v35 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __src = 136316930;
            v41 = v34;
            v42 = 2080;
            v43 = "SRTPAddAuthenticationTag";
            v44 = 1024;
            v45 = 1572;
            v46 = 1024;
            v47 = a6;
            v48 = 1024;
            v49 = v16;
            v50 = 1024;
            v51 = v33;
            v52 = 1024;
            v53 = v19;
            v54 = 1024;
            v55 = a4;
            _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, " [%s] %s:%d SRTP authentication tag does not fit in packet. dataLength=%d, mkiSize=%d, rocSize=%d, hmacSize=%d,  maxBufferLength=%d", &__src, 0x3Au);
            return 2149711886;
          }
        }
      }

      else
      {
        v22 = &a5[a4];
        if (v17 > 4 || ((1 << v17) & 0x1A) == 0)
        {
LABEL_50:
          if (!v19)
          {
            return 0;
          }

          v30 = *a7;
          v31 = &a5[v30];
          if (&a5[v30] <= v22 && v31 >= a5 && a6 <= a4 && ((v19 | a4) & 0x80000000) == 0 && a4 - v30 >= v19)
          {
            SRTPGenerateAuthenticationTag(a1, 1, a3, a5, a6, v31, v19);
            v14 = 0;
            *a7 += v19;
            return v14;
          }

LABEL_70:
          __break(0x5519u);
        }

        __n = v18;
        pthread_mutex_lock((a1 + 288));
        if (!VCMediaKeyIndex_isValid(*(a1 + 352)))
        {
          SRTPAddAuthenticationTag_cold_1();
          return __src;
        }

        v23 = &a5[a6];
        if (v23)
        {
          if (v23 >= &a5[a4] || v23 < a5)
          {
            goto LABEL_70;
          }

          VCMediaKeyIndex_UniquePrefixBytes(*(a1 + 352), v23, v16);
          if (!VCMediaKeyIndex_isEqual(*(a1 + 360), *(a1 + 352)))
          {
            VCMediaKeyIndex_ReleaseAndCopyNewValue((a1 + 360), *(a1 + 352));
          }

          pthread_mutex_unlock((a1 + 288));
          *a7 += v16;
          if (a4 < 0)
          {
            goto LABEL_70;
          }

          __n_4 = a3;
          if (a5)
          {
            v24 = *(a1 + 408);
            if (v24 == 1 || (v25 = 0, (__n_4 & 0x7F) == 0) && (v24 - 3) <= 1)
            {
              v39 = 0;
              SRTPGetROC(a1, __n_4, &v39, 1);
              __src = bswap32((16 * (v16 & 0xF)) | (v39 << 8));
              v26 = &a5[v20];
              if (v26 < a5 || v26 > &a5[v21] || v21 - v20 < __n)
              {
                goto LABEL_70;
              }

              memcpy(v26, &__src, __n);
              v25 = __n;
            }
          }

          else
          {
            SRTPAddAuthenticationTag_cold_2();
            v25 = __src;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v27 = VRTraceErrorLogLevelToCSTR();
            v28 = *MEMORY[0x1E6986650];
            v29 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                __src = 136316418;
                v41 = v27;
                v42 = 2080;
                v43 = "SRTPAddAuthenticationTag";
                v44 = 1024;
                v45 = 1584;
                v46 = 1024;
                v47 = __n;
                v48 = 1024;
                v49 = v19;
                v50 = 1024;
                v51 = v16;
                _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d uplink rocSize=%d, hmacSize=%d, mkiSize=%d", &__src, 0x2Eu);
              }
            }

            else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              __src = 136316418;
              v41 = v27;
              v42 = 2080;
              v43 = "SRTPAddAuthenticationTag";
              v44 = 1024;
              v45 = 1584;
              v46 = 1024;
              v47 = __n;
              v48 = 1024;
              v49 = v19;
              v50 = 1024;
              v51 = v16;
              _os_log_debug_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEBUG, " [%s] %s:%d uplink rocSize=%d, hmacSize=%d, mkiSize=%d", &__src, 0x2Eu);
            }
          }

          if (v25 != -1)
          {
            *a7 += v25;
            a3 = __n_4;
            v22 = &a5[a4];
            goto LABEL_50;
          }

          SRTPAddAuthenticationTag_cold_3();
          return __src;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SRTPAddAuthenticationTag_cold_4();
          }
        }

        v14 = 2149711873;
        pthread_mutex_unlock((a1 + 288));
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SRTPAddAuthenticationTag_cold_5();
          }
        }
      }

      return v14;
    }

LABEL_15:
    v19 = 0;
    goto LABEL_18;
  }

  return v14;
}

uint64_t SRTPIsAuthenticationEnabled(uint64_t a1, BOOL *a2)
{
  v2 = 2149711876;
  if ((*a1 & 8) == 0)
  {
    return 2149711928;
  }

  v3 = *(a1 + 408);
  *a2 = v3 != 0;
  if (!v3 || *(a1 + 416) > 0)
  {
    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      SRTPIsAuthenticationEnabled_cold_1();
    }
  }

  return v2;
}

void *SRTPGenerateAuthenticationTag(_DWORD *a1, int a2, unsigned int a3, const void *a4, unsigned int a5, void *a6, unsigned int a7)
{
  v18 = a3;
  v19 = v17;
  v22 = *MEMORY[0x1E69E9840];
  v13 = a1[106];
  MEMORY[0x1EEE9AC00](a1);
  if (v13)
  {
    memset(&v17[-((v13 + 15) & 0x1FFFFFFF0)], 170, v13);
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v21.ctx[88] = v14;
  *&v21.ctx[92] = v14;
  *&v21.ctx[80] = v14;
  *&v21.ctx[84] = v14;
  *&v21.ctx[72] = v14;
  *&v21.ctx[76] = v14;
  *&v21.ctx[64] = v14;
  *&v21.ctx[68] = v14;
  *&v21.ctx[56] = v14;
  *&v21.ctx[60] = v14;
  *&v21.ctx[48] = v14;
  *&v21.ctx[52] = v14;
  *&v21.ctx[40] = v14;
  *&v21.ctx[44] = v14;
  *&v21.ctx[32] = v14;
  *&v21.ctx[36] = v14;
  *&v21.ctx[24] = v14;
  *&v21.ctx[28] = v14;
  *&v21.ctx[16] = v14;
  *&v21.ctx[20] = v14;
  *&v21.ctx[8] = v14;
  *&v21.ctx[12] = v14;
  v15 = a1[102] - 3;
  *v21.ctx = v14;
  *&v21.ctx[4] = v14;
  CCHmacInit(&v21, 2 * (v15 < 2), a1 + 63, a1[103]);
  CCHmacUpdate(&v21, a4, a5);
  if (a2)
  {
    v20 = -1431655766;
    SRTPGetROC(a1, v18, &v20, 1);
    v20 = bswap32(v20);
    CCHmacUpdate(&v21, &v20, 4uLL);
  }

  CCHmacFinal(&v21, &v17[-((v13 + 15) & 0x1FFFFFFF0)]);
  if (v13 < a7)
  {
    __break(0x5519u);
  }

  return memcpy(a6, &v17[-((v13 + 15) & 0x1FFFFFFF0)], a7);
}

uint64_t SRTPVerifyAuthenticationTag(uint64_t a1, unsigned int a2, char *a3, unsigned int a4, unsigned int *a5, _BYTE *a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 416);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v42 - ((v12 + 15) & 0x1FFFFFFF0);
  if (v12)
  {
    memset(&v42 - ((v12 + 15) & 0x1FFFFFFF0), 170, v12);
  }

  v48 = a5;
  if (!a3)
  {
    SRTPVerifyAuthenticationTag_cold_14();
    goto LABEL_93;
  }

  if (!a6)
  {
    SRTPVerifyAuthenticationTag_cold_13();
    goto LABEL_93;
  }

  if (!a5)
  {
    SRTPVerifyAuthenticationTag_cold_12();
    goto LABEL_93;
  }

  BYTE3(v49) = -86;
  v14 = SRTPIsAuthenticationEnabled(a1, &v49 + 3);
  LODWORD(v15) = 0;
  *a5 = a4;
  if (v14 < 0)
  {
    v16 = 0;
    goto LABEL_74;
  }

  v16 = 0;
  if ((v49 & 0x1000000) != 0)
  {
    v17 = *(a1 + 408);
    switch(v17)
    {
      case 1u:
        v16 = 0;
        v19 = 4;
        goto LABEL_21;
      case 4u:
        v16 = 10;
        break;
      case 3u:
        v16 = 4;
        break;
      default:
        v16 = *(a1 + 416);
        if (v16 == -1)
        {
          SRTPVerifyAuthenticationTag_cold_11();
          goto LABEL_93;
        }

        v18 = v17 == 1;
        goto LABEL_17;
    }

    v18 = (a2 & 0x7F) == 0;
LABEL_17:
    v20 = v18;
    v19 = 4 * v20;
LABEL_21:
    v15 = v19 + v16;
    v21 = a4 - v15;
    if (a4 < v15)
    {
      SRTPVerifyAuthenticationTag_cold_10();
      goto LABEL_93;
    }

    v22 = a4;
    if (v17 > 4 || ((1 << v17) & 0x1A) == 0)
    {
      goto LABEL_62;
    }

    v46 = a6;
    if ((a4 & 0x80000000) != 0)
    {
      goto LABEL_100;
    }

    v47 = a4;
    if (v17 != 1 && ((v23 = v17 - 3, (a2 & 0x7F) != 0) || v23 > 1))
    {
      if (v23 >= 2)
      {
        v16 = 2149711873;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SRTPVerifyAuthenticationTag_cold_1();
          }
        }

        goto LABEL_74;
      }

      v45 = v19;
      v26 = 2;
    }

    else
    {
      *buf = 0;
      if (&a3[v21] > &a3[a4] || &a3[v21] < a3 || a4 - v21 < v19)
      {
        goto LABEL_100;
      }

      v45 = v19;
      __memcpy_chk();
      v24 = bswap32(*buf);
      *(a1 + 124) = v24 >> 8;
      v25 = v24 >> 4;
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = 16;
      }

      v22 = v47;
    }

    if (*(a1 + 434) == 1)
    {
      SRTPVerifyAuthenticationTag_cold_6(v15, &v49 + 4, buf);
      goto LABEL_93;
    }

    if (v26 <= 0xF && (*(a1 + 433) & 1) != 0)
    {
      *(a1 + 440) = v26;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v16 = 2149711935;
      }

      else
      {
        VRTraceErrorLogLevelToCSTR();
        v16 = 2149711935;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SRTPVerifyAuthenticationTag_cold_5();
        }
      }

      goto LABEL_74;
    }

    v27 = (v26 + v15);
    if (v27 > a4)
    {
      SRTPVerifyAuthenticationTag_cold_4(v15, &v49 + 4, buf);
      goto LABEL_93;
    }

    v28 = &a3[v22 - v27];
    if (&a3[v22] == v27)
    {
      LODWORD(v43) = -2145255423;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        *(&v42 + 1) = VRTraceErrorLogLevelToCSTR();
        *&v42 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          SRTPVerifyAuthenticationTag_cold_2();
        }
      }
    }

    else
    {
      if (v28 >= &a3[v22] || v28 < a3)
      {
        goto LABEL_100;
      }

      pthread_mutex_lock((a1 + 288));
      VCMediaKeyIndex_Release((a1 + 360));
      MKIWithBytes = VCMediaKeyIndex_CreateMKIWithBytes(v28, v26);
      *(a1 + 360) = MKIWithBytes;
      if (!VCMediaKeyIndex_isStartingWithPrefix(*(a1 + 352), MKIWithBytes))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          *(&v42 + 1) = VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *&v42 = VCMediaKeyIndex_Description(*(a1 + 352));
            v30 = VCMediaKeyIndex_Description(*(a1 + 360));
            *buf = 136316162;
            *&buf[4] = *(&v42 + 1);
            *&buf[12] = 2080;
            *&buf[14] = "_SRTP_ReadVariableMKI";
            *&buf[22] = 1024;
            LODWORD(v51) = 1480;
            WORD2(v51) = 2080;
            *(&v51 + 6) = v42;
            HIWORD(v51) = 2080;
            v52 = v30;
            _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MKI has changed from '%s' to '%s'", buf, 0x30u);
          }
        }

        *v46 = 1;
      }

      pthread_mutex_unlock((a1 + 288));
      LODWORD(v43) = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      *&v42 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x1E6986640];
      v36 = *MEMORY[0x1E6986650];
      *(&v42 + 1) = *MEMORY[0x1E6986650];
      if (v35 == 1)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          *&buf[4] = v42;
          *&buf[12] = 2080;
          *&buf[14] = "SRTPVerifyAuthenticationTag";
          *&buf[22] = 1024;
          LODWORD(v51) = 1635;
          WORD2(v51) = 1024;
          *(&v51 + 6) = v45;
          WORD5(v51) = 1024;
          HIDWORD(v51) = v16;
          LOWORD(v52) = 1024;
          *(&v52 + 2) = v26;
          _os_log_impl(&dword_1DB56E000, *(&v42 + 1), OS_LOG_TYPE_DEFAULT, " [%s] %s:%d downlink rocSize=%d, hmacSize=%d, mkiSize=%d", buf, 0x2Eu);
          if (!v28)
          {
            goto LABEL_79;
          }

          goto LABEL_60;
        }
      }

      else if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316418;
        *&buf[4] = v42;
        *&buf[12] = 2080;
        *&buf[14] = "SRTPVerifyAuthenticationTag";
        *&buf[22] = 1024;
        LODWORD(v51) = 1635;
        WORD2(v51) = 1024;
        *(&v51 + 6) = v45;
        WORD5(v51) = 1024;
        HIDWORD(v51) = v16;
        LOWORD(v52) = 1024;
        *(&v52 + 2) = v26;
        _os_log_debug_impl(&dword_1DB56E000, *(&v42 + 1), OS_LOG_TYPE_DEBUG, " [%s] %s:%d downlink rocSize=%d, hmacSize=%d, mkiSize=%d", buf, 0x2Eu);
        if (v28)
        {
          goto LABEL_60;
        }

        goto LABEL_79;
      }
    }

    if (v28)
    {
LABEL_60:
      if (*v46)
      {
        v16 = 0;
        LODWORD(v15) = v27;
        goto LABEL_74;
      }

      v15 = v27;
      v22 = v47;
LABEL_62:
      if (!v16)
      {
        goto LABEL_74;
      }

      v37 = &a3[v22];
      if (&a3[v22] >= a3 && (v16 & 0x80000000) == 0 && v16 <= v12)
      {
        v38 = a4 - v15;
        if ((a4 - v15) <= a4 && (v38 & 0x80000000) == 0)
        {
          SRTPGenerateAuthenticationTag(a1, 1, a2, a3, a4 - v15, &v42 - ((v12 + 15) & 0x1FFFFFFF0), v16);
          v39 = &v37[-v16];
          if (!timingsafe_bcmp(v39, v13, v16))
          {
            goto LABEL_73;
          }

          if ((*(a1 + 408) - 3) >= 2)
          {
            SRTPVerifyAuthenticationTag_cold_7(v15, &v49 + 4, buf);
            goto LABEL_93;
          }

          if ((a2 & 0x8000) != 0 || *(a1 + 132) <= 0x8000u)
          {
            SRTPVerifyAuthenticationTag_cold_9(v15, &v49 + 4, buf);
            goto LABEL_93;
          }

          v40 = *(a1 + 124);
          *(a1 + 124) = (v40 + 1) & 0xFFF;
          SRTPGenerateAuthenticationTag(a1, 1, a2, a3, v38, v13, v16);
          if (timingsafe_bcmp(v39, v13, v16))
          {
            *(a1 + 124) = v40;
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              v16 = 2149711929;
            }

            else
            {
              VRTraceErrorLogLevelToCSTR();
              v16 = 2149711929;
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                SRTPVerifyAuthenticationTag_cold_8();
              }
            }
          }

          else
          {
LABEL_73:
            v16 = 0;
            *(a1 + 132) = a2;
          }

          goto LABEL_74;
        }
      }

LABEL_100:
      __break(0x5519u);
    }

LABEL_79:
    SRTPVerifyAuthenticationTag_cold_3(v27, v43, &v49 + 4, buf, v31, v32, v33, v34, v42, v43, v44, v46, v47, v48, v49, *buf, *&buf[8], *&buf[16], v51, *(&v51 + 1), v52);
LABEL_93:
    LODWORD(v15) = HIDWORD(v49);
    v16 = *buf;
  }

LABEL_74:
  *v48 -= v15;
  return v16;
}

uint64_t SRTCPAddAuthenticationTag(_DWORD *a1, int a2, char *a3, signed int a4, signed int *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  *a5 = a4;
  v14 = -86;
  result = SRTPIsAuthenticationEnabled(a1, &v14);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  if (v14 != 1)
  {
    return 0;
  }

  v11 = a1[104];
  if (v11 + a4 > a2)
  {
    v12 = 2149711873;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SRTCPAddAuthenticationTag_cold_1();
      }
    }

    return v12;
  }

  v13 = &a3[a4];
  if (v13 <= &a3[a2] && v13 >= a3 && a4 <= a2 && a2 - a4 >= v11 && ((v11 | a2) & 0x80000000) == 0)
  {
    SRTPGenerateAuthenticationTag(a1, 0, 0, a3, a4, v13, v11);
    v12 = 0;
    *a5 += a1[104];
    return v12;
  }

  __break(0x5519u);
  return result;
}

uint64_t SRTCPVerifyAuthenticationTag(_DWORD *a1, char *a2, int a3, int *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  *a4 = a3;
  v15 = -86;
  v8 = SRTPIsAuthenticationEnabled(a1, &v15);
  if ((v8 & 0x80000000) != 0)
  {
    return v8;
  }

  if (v15 != 1)
  {
    return 0;
  }

  v9 = a1[104];
  if (v9 > a3)
  {
    v10 = 2149711873;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SRTCPVerifyAuthenticationTag_cold_2();
      }
    }

    return v10;
  }

  result = MEMORY[0x1EEE9AC00](v8);
  if (v9)
  {
    result = memset(&v14[-((v9 + 15) & 0x1FFFFFFF0)], 170, v9);
  }

  v12 = a1[104];
  if (v12 <= v9 && ((v12 | a3) & 0x80000000) == 0 && ((a3 - v12) & 0x80000000) == 0)
  {
    SRTPGenerateAuthenticationTag(a1, 0, 0, a2, a3 - v12, &v14[-((v9 + 15) & 0x1FFFFFFF0)], v12);
    v13 = a1[104];
    if (!memcmp(&a2[a3 - v13], &v14[-((v9 + 15) & 0x1FFFFFFF0)], v13))
    {
      v10 = 0;
      *a4 -= v13;
    }

    else if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 2149711929;
    }

    else
    {
      VRTraceErrorLogLevelToCSTR();
      v10 = 2149711929;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SRTCPVerifyAuthenticationTag_cold_1();
      }
    }

    return v10;
  }

  __break(0x5519u);
  return result;
}

uint64_t WaitUseEncryption(uint64_t a1, double *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v11.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock((a1 + 8));
  if (*(a1 + 4))
  {
    v4 = 2149711902;
  }

  else
  {
    if ((*a1 & 6) != 0)
    {
LABEL_5:
      pthread_mutex_unlock((a1 + 8));
      return 0;
    }

    v4 = 2149711902;
    while (1)
    {
      gettimeofday(&v11, 0);
      v6 = v11.tv_sec + v11.tv_usec * 0.000001;
      v10.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v10.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      convertTimeoutToRelativeTimespec(*a2);
      v10.tv_sec = v7;
      v10.tv_nsec = v8;
      pthread_cond_timedwait_relative_np((a1 + 72), (a1 + 8), &v10);
      gettimeofday(&v11, 0);
      v9 = v11.tv_sec + v11.tv_usec * 0.000001 - v6;
      if (v9 >= *a2)
      {
        break;
      }

      if (*(a1 + 4))
      {
        goto LABEL_3;
      }

      *a2 = *a2 - v9;
      if ((*a1 & 6) != 0)
      {
        goto LABEL_5;
      }
    }

    v4 = 2149711876;
  }

LABEL_3:
  *a2 = 0.0;
  pthread_mutex_unlock((a1 + 8));
  return v4;
}

uint64_t SRTPCancelEncryption()
{
  result = CheckInHandleDebug();
  if (result)
  {
    _SRTPCancelEncryption(result);

    return CheckOutHandleDebug();
  }

  return result;
}

unint64_t SRTPWaitUseEncryption(uint64_t a1, double *a2)
{
  v3 = 2147549186;
  result = CheckInHandleDebug();
  if (!result)
  {
    return v3;
  }

  v5 = result;
  if (result == 0xFFFFFFFF)
  {
    return 2147549190;
  }

  v3 = 2149711928;
  if (!*(result + 7080) || !*(result + 7528))
  {
LABEL_9:
    CheckOutHandleDebug();
    return v3;
  }

  if (result < result + 27800)
  {
    v3 = WaitUseEncryption(result + 7080, a2);
    if (!v3)
    {
      *a2 = *a2 + 0.1;
      v3 = WaitUseEncryption(v5 + 7528, a2);
    }

    goto LABEL_9;
  }

  __break(0x5519u);
  return result;
}

unint64_t SRTPGetFramingOverhead(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 2149711873;
  }

  result = CheckInHandleDebug();
  if (!result)
  {
    return 2147549186;
  }

  v4 = *(result + 7500);
  v5 = 10;
  if (v4 > 6)
  {
    if (v4 <= 8)
    {
      if (v4 == 7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v4 == 9)
      {
LABEL_8:
        v5 = 6;
LABEL_21:
        *a2 = v5;
        goto LABEL_22;
      }

      if (v4 != 10)
      {
        if (v4 == 11)
        {
          goto LABEL_8;
        }

LABEL_22:
        CheckOutHandleDebug();
        return 0;
      }
    }

    v5 = 12;
    goto LABEL_21;
  }

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      goto LABEL_21;
    }

    if (v4 != 6)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v4 == 1)
    {
      goto LABEL_21;
    }

    if (v4 != 3)
    {
      goto LABEL_22;
    }
  }

  if (result < result + 27800)
  {
    v5 = _SRTP_MKISize(result + 7080, *(result + 10632)) + 4;
    goto LABEL_21;
  }

  __break(0x5519u);
  return result;
}

void *MakeSessionKey(uint64_t a1, const void *a2, unsigned int a3, uint64_t a4, char a5, void *a6, unsigned int a7)
{
  v14 = a1;
  v31[1] = *MEMORY[0x1E69E9840];
  LODWORD(v7) = vcvtd_n_s64_f64(ceil(vcvtd_n_f64_u32(a7, 4uLL)), 4uLL);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v16 = (v7 + 15) & 0x1FFFFFFF0;
  v17 = v31 - v16;
  if (v7)
  {
    v18 = memset(v31 - v16, 170, v7);
    MEMORY[0x1EEE9AC00](v18);
    dataOut = v31 - v16;
    memset(dataOut, 170, v7);
    v31[0] = 0xAAAAAAAAAAAAAAAALL;
    if ((v7 & 0x80000000) == 0)
    {
      v20 = v7;
    }

    else
    {
      v20 = v7 + 15;
    }

    if (v7 >= 16)
    {
      v21 = 0;
      v22 = &v17[v7];
      v23 = v20 >> 4;
      v24 = v7;
      v25 = v17;
      while (v25 <= v22)
      {
        if (v17 > v25)
        {
          break;
        }

        if (v24 <= 0xD)
        {
          break;
        }

        *v25 = *a4;
        *(v25 + 6) = *(a4 + 6);
        v26 = v25 + 14;
        if (v26 >= v22)
        {
          break;
        }

        if (v26 < v17)
        {
          break;
        }

        *v26 = 0;
        v27 = v26 + 1;
        if (v27 >= v22)
        {
          break;
        }

        if (v27 < v17)
        {
          break;
        }

        *v27 = v21;
        v28 = v27 - 8;
        if (v28 >= v22 || v28 < v17)
        {
          break;
        }

        *v28 = *(a4 + 7) ^ a5;
        v25 = v28 + 9;
        ++v21;
        v24 -= 16;
        if (v23 <= v21)
        {
          goto LABEL_19;
        }
      }

LABEL_24:
      __break(0x5519u);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v15);
    dataOut = v31 - v16;
    v31[0] = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_19:
  if (v14)
  {
    v29 = 2;
  }

  else
  {
    v29 = 0;
  }

  CCCrypt(0, 0, v29, a2, a3, 0, v17, v7, dataOut, v7, v31);
  if (v7 < a7)
  {
    goto LABEL_24;
  }

  return memcpy(a6, dataOut, a7);
}

uint64_t VCCCMessageReadFrom(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
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
        v25 = 0;
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

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
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
      if ((v11 >> 3) == 3)
      {
        Data = PBReaderReadData();

        v20 = Data;
        v21 = 16;
      }

      else
      {
        if (v12 != 2)
        {
          if (v12 == 1)
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
            while (1)
            {
              v26 = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v15 |= (v26 & 0x7F) << v13;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v13 += 7;
              v10 = v14++ >= 9;
              if (v10)
              {
                v18 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v18 = 0;
            }

            else
            {
              v18 = v15;
            }

LABEL_37:
            *(a1 + 8) = v18;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        String = PBReaderReadString();

        v20 = String;
        v21 = 24;
      }

      *(a1 + v21) = v20;
LABEL_38:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t VideoReceiverUtil_CreateTempFile(uint64_t *a1, uint64_t a2, _DWORD *a3, char *a4)
{
  result = open(a4, 1538, 420);
  if (result)
  {
    v8 = result;
    fcntl(result, 48, 0);
    *a3 = v8;
    result = FigFileWrapDarwinFileDesc();
    if (a2)
    {
      if (!result)
      {
        v9 = *a1;
        v10 = *MEMORY[0x1E695E480];

        return MEMORY[0x1EEDBC298](v9, v10, a2);
      }
    }
  }

  return result;
}

uint64_t VideoReceiverUtil_CaptureBitstreamFile(OpaqueCMBlockBuffer *a1, int32_t timescale, uint64_t a3, const opaqueCMFormatDescription *a4, int a5)
{
  v41 = *MEMORY[0x1E69E9840];
  sbuf = 0xAAAAAAAAAAAAAAAALL;
  sampleTimingArray.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&sampleTimingArray.presentationTimeStamp.timescale = v9;
  *&sampleTimingArray.decodeTimeStamp.value = v9;
  *&sampleTimingArray.duration.value = v9;
  *&sampleTimingArray.duration.epoch = v9;
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = 33;
  }

  if (*(a3 + 60))
  {
    v11 = *MEMORY[0x1E695E480];
  }

  else
  {
    memset(v36, 170, sizeof(v36));
    gettimeofday(v36, &v36[16]);
    v35 = *v36;
    memset(__b, 170, sizeof(__b));
    memset(v39, 170, sizeof(v39));
    v25 = localtime(&v35);
    strftime(v39, 0x3E8uLL, "%m-%d-%Y_%T", v25);
    snprintf(__b, 0x3E8uLL, "/tmp/Capture%s.mov", v39);
    TempFile = VideoReceiverUtil_CreateTempFile((a3 + 32), a3 + 40, (a3 + 64), __b);
    if (TempFile)
    {
      goto LABEL_20;
    }

    v11 = *MEMORY[0x1E695E480];
    TempFile = FigMovieFormatWriterCreateWithByteStream();
    if (TempFile)
    {
      goto LABEL_20;
    }

    v26 = *(a3 + 48);
    v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v27)
    {
      goto LABEL_21;
    }

    TempFile = v27(v26, 1986618469, 0, a3 + 56);
    if (TempFile)
    {
LABEL_20:
      v20 = TempFile;
      goto LABEL_22;
    }
  }

  CMTimeMake(&sampleTimingArray.duration, v10, timescale);
  CMTimeMake(__b, *(a3 + 60), timescale);
  sampleTimingArray.presentationTimeStamp = *__b;
  sampleTimingArray.decodeTimeStamp = **&MEMORY[0x1E6960C70];
  sampleSizeArray = CMBlockBufferGetDataLength(a1);
  TempFile = CMSampleBufferCreate(v11, a1, 1u, 0, 0, a4, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &sbuf);
  if (TempFile)
  {
    goto LABEL_20;
  }

  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    v15 = *MEMORY[0x1E695E4D0];
    CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960458], *MEMORY[0x1E695E4D0]);
    CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960400], v15);
    CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960418], v15);
  }

  v16 = *(a3 + 48);
  v17 = *(a3 + 56);
  v18 = sbuf;
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v19)
  {
    CFRelease(sbuf);
    goto LABEL_21;
  }

  v20 = v19(v16, v17, v18);
  CFRelease(sbuf);
  if (!v20)
  {
    v21 = *(a3 + 48);
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v22)
    {
      TempFile = v22(v21, 0);
      if (!TempFile)
      {
        v23 = *(a3 + 48);
        v24 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v24)
        {
          v20 = v24(v23, 0);
        }

        else
        {
          v20 = 4294954514;
        }

        *(a3 + 60) += v10;
        return v20;
      }

      goto LABEL_20;
    }

LABEL_21:
    v20 = 4294954514;
  }

LABEL_22:
  if (*(a3 + 48))
  {
    FigBaseObject = FigFormatWriterGetFigBaseObject();
    if (FigBaseObject)
    {
      v29 = FigBaseObject;
      v30 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v30)
      {
        v30(v29);
      }
    }

    CFRelease(*(a3 + 48));
  }

  v31 = *(a3 + 40);
  if (v31)
  {
    CFRelease(v31);
  }

  if (*(a3 + 32))
  {
    FigFileForkClose();
    v32 = *(a3 + 64);
    if (v32)
    {
      close(v32);
    }
  }

  return v20;
}

uint64_t FigFormatWriterInvalidate()
{
  result = FigFormatWriterGetFigBaseObject();
  if (result)
  {
    v1 = result;
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 8);
    result = VTable + 8;
    v4 = *(v3 + 24);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

uint64_t VideoReceiverUtil_Capture2vuyFile(void *memoryBlock, int a2, int32_t a3, int32_t a4, int32_t a5, uint64_t a6, int a7)
{
  v39[1] = *MEMORY[0x1E69E9840];
  formatDescriptionOut = 0;
  v39[0] = 0xAAAAAAAAAAAAAAAALL;
  v37.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v37.presentationTimeStamp.timescale = v14;
  *&v37.decodeTimeStamp.value = v14;
  *&v37.duration.value = v14;
  *&v37.duration.epoch = v14;
  if (*(a6 + 60))
  {
    v15 = *MEMORY[0x1E695E480];
LABEL_3:
    dataBuffer = 0;
    TempFile = CMBlockBufferCreateWithMemoryBlock(v15, memoryBlock, a2, *MEMORY[0x1E695E498], 0, 0, a2, 1u, &dataBuffer);
    if (!TempFile)
    {
      CMTimeMake(&v37.duration, a7, a5);
      CMTimeMake(&v35, *(a6 + 60), a5);
      v37.presentationTimeStamp = v35;
      v37.decodeTimeStamp = **&MEMORY[0x1E6960C70];
      sampleSizeArray = a2;
      TempFile = CMVideoFormatDescriptionCreate(v15, 0x34323076u, a3, a4, 0, &formatDescriptionOut);
      if (!TempFile)
      {
        TempFile = CMSampleBufferCreate(v15, dataBuffer, 1u, 0, 0, formatDescriptionOut, 1, 1, &v37, 1, &sampleSizeArray, v39);
        if (!TempFile)
        {
          SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v39[0], 1u);
          if (SampleAttachmentsArray)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
            v19 = *MEMORY[0x1E695E4D0];
            CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960458], *MEMORY[0x1E695E4D0]);
            CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960400], v19);
            CFDictionarySetValue(ValueAtIndex, *MEMORY[0x1E6960418], v19);
          }

          v20 = *(a6 + 48);
          v21 = *(a6 + 56);
          v22 = v39[0];
          v23 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v23)
          {
            goto LABEL_19;
          }

          TempFile = v23(v20, v21, v22);
          if (!TempFile)
          {
            v24 = *(a6 + 48);
            v25 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v25)
            {
              TempFile = v25(v24, 0);
              if (!TempFile)
              {
                v26 = *(a6 + 48);
                v27 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (v27)
                {
                  v28 = v27(v26, 0);
                }

                else
                {
                  v28 = 4294954514;
                }

                *(a6 + 60) += a7;
                return v28;
              }

              goto LABEL_18;
            }

LABEL_19:
            v28 = 4294954514;
            goto LABEL_20;
          }
        }
      }
    }

    goto LABEL_18;
  }

  TempFile = VideoReceiverUtil_CreateTempFile((a6 + 32), a6 + 40, (a6 + 64), "/var/mobile/Capture_2vuy.mov");
  if (!TempFile)
  {
    v15 = *MEMORY[0x1E695E480];
    TempFile = FigMovieFormatWriterCreateWithByteStream();
    if (!TempFile)
    {
      v29 = *(a6 + 48);
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v30)
      {
        goto LABEL_19;
      }

      TempFile = v30(v29, 1986618469, 0, a6 + 56);
      if (!TempFile)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_18:
  v28 = TempFile;
LABEL_20:
  if (*(a6 + 48))
  {
    FigFormatWriterInvalidate();
    CFRelease(*(a6 + 48));
  }

  v31 = *(a6 + 40);
  if (v31)
  {
    CFRelease(v31);
  }

  if (*(a6 + 32))
  {
    FigFileForkClose();
    v32 = *(a6 + 64);
    if (v32)
    {
      close(v32);
    }
  }

  return v28;
}

const tm *_VideoReceiverUtil_GenerateTimeString(char *a1, size_t a2)
{
  result = 0;
  v6 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    setlocale(0, "");
    time(&v5);
    result = localtime(&v5);
    if (result)
    {
      result = strftime(a1, a2, "%m%d%g_%H%M%S", result);
    }

    *(&result->tm_sec + a1) = 0;
  }

  return result;
}

uint64_t _VideoReceiverUtil_Generate2vuyName(char *a1, size_t a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  memset(v5, 170, 20);
  _VideoReceiverUtil_GenerateTimeString(v5, 0x14uLL);
  return snprintf(a1, a2, "%s%s-rxSourceYuv.%dx%d.%s.yuv", "/tmp/", v5, 1, 2, "2vuy");
}

size_t _VideoReceiverUtil_GenerateBitStreamDumpName(char *a1, size_t a2, const char *a3, const char *a4)
{
  v9[3] = *MEMORY[0x1E69E9840];
  memset(v9, 170, 20);
  _VideoReceiverUtil_GenerateTimeString(v9, 0x14uLL);
  strlcpy(a1, "/tmp/vcp/", a2);
  strlcat(a1, a3, a2);
  strlcat(a1, v9, a2);
  strlcat(a1, a4, a2);
  return strlcat(a1, "-recvBitstream.26l", a2);
}

uint64_t _VideoReceiverUtil_LogRtpMediaPacket(uint64_t result, FILE *a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = result;
    result = fprintf(a2, "RTPMediaPacket header,seqNum,marker,payload,ts,arrival time,data length,total bytes,ext data length,stream index, %d, 0x%x, %d, %u, %f, %ld, %ld, %ld, %d\n", *(result + 12), *result, *(result + 4), *(result + 16), *(result + 32), *(result + 152), *(result + 112), *(result + 128), a3);
    *&v26[15] = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v26 = v5;
    v25[10] = v5;
    v25[9] = v5;
    v25[8] = v5;
    v25[7] = v5;
    v25[6] = v5;
    v25[5] = v5;
    v25[4] = v5;
    v25[3] = v5;
    v25[2] = v5;
    v25[1] = v5;
    v25[0] = v5;
    v24 = 0;
    if (*(v4 + 152))
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      do
      {
        memset(v12, 170, 7);
        __sprintf_chk(v12, 0, 7uLL, "0x%02X, ", *(*(v4 + 160) + v6));
        result = __strlcat_chk();
        if ((~v6 & 0x1F) != 0)
        {
          v7 += 6;
        }

        else
        {
          *(v25 + v7 + 3) = 0;
          result = fprintf(a2, "RTPMediaPacket data,sN=%d,DumpRow# %d -> [ %s ]\n", *(v4 + 12), v8, &v24);
          v7 = 0;
          v24 = 0;
          ++v8;
        }

        ++v6;
      }

      while (v6 < *(v4 + 152));
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      if ((v6 & 0x1F) >= 3)
      {
        v23[v7 + 21] = 0;
        result = fprintf(a2, "RTPMediaPacket data,sN=%d,DumpRow# %d -> [ %s ]\n", *(v4 + 12), v8, &v24);
        *&v5 = 0xAAAAAAAAAAAAAAAALL;
        *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      }
    }

    *&v23[15] = 0xAAAAAAAAAAAAAAAALL;
    *v23 = v5;
    v22 = v5;
    v21 = v5;
    v20 = v5;
    v19 = v5;
    v18 = v5;
    v17 = v5;
    v16 = v5;
    v15 = v5;
    v14 = v5;
    v13 = v5;
    *&v12[1] = v5;
    v12[0] = 0;
    if (*(v4 + 128))
    {
      v9 = 0;
      v10 = -2;
      do
      {
        memset(v11, 170, 7);
        __sprintf_chk(v11, 0, 7uLL, "0x%02x, ", *(*(v4 + 136) + v9));
        __strlcat_chk();
        ++v9;
        v10 += 6;
      }

      while (v9 < *(v4 + 128));
      v12[v10] = 0;
      return fprintf(a2, "RTPMediaPacket extData,sN=%d,{ %s }, \n", *(v4 + 12), v12);
    }
  }

  return result;
}

uint64_t VCPacketFilterGetClassID()
{
  if (VCPacketFilterGetClassID_onceToken != -1)
  {
    VCPacketFilterGetClassID_cold_1();
  }

  return VCPacketFilterGetClassID_classID;
}

uint64_t __VCPacketFilterGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&VCPacketFilterGetClassID_descriptor, ClassID, 1, &VCPacketFilterGetClassID_classID);
}

void sub_1DB7E243C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1DB7E237CLL);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_14_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x22u);
}

char *_VCFECPacketListEntry_Allocate(uint64_t a1, const void *a2, int a3)
{
  v5 = VCMemoryPool_Alloc(a1);
  v6 = v5;
  if (v5)
  {
    *(v5 + 2) = a3;
    *(v5 + 4) = 0;
    *(v5 + 5) = 0;
    *(v5 + 24) = 0;
    *(v5 + 2) = a2;
    *(v5 + 3) = 0;
    CFRetain(a2);
  }

  else
  {
    _VCFECPacketListEntry_Allocate_cold_1();
  }

  return v6;
}

uint64_t VCFECPacketList_AllocateAndPush(OSQueueHead *a1, const void *a2, int a3, uint64_t a4, __int128 *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = _VCFECPacketListEntry_Allocate(a1, a2, a3);
  v9 = v8;
  if (!v8)
  {
    VCFECPacketList_AllocateAndPush_cold_2(&v13);
LABEL_7:
    v11 = v13;
    VCMemoryPool_Free(a1, v9);
    return v11;
  }

  v10 = *a5;
  *(v8 + 34) = *(a5 + 10);
  *(v8 + 24) = v10;
  if ((VCSingleLinkedListPush(a4, v8) & 1) == 0)
  {
    VCFECPacketList_AllocateAndPush_cold_1(&v13);
    goto LABEL_7;
  }

  return 0;
}

uint64_t *VCFECPacketList_Flush(OSQueueHead *a1, uint64_t *a2)
{
  result = VCSingleLinkedListPop(a2);
  if (result)
  {
    v5 = result;
    do
    {
      CFRelease(v5[2]);
      VCMemoryPool_Free(a1, v5);
      result = VCSingleLinkedListPop(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t VCFECPacketList_CompareEntries(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = 2 * (v2 >= v3);
  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

const void *symptomReporterCallback(void *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"SymptomReporterCallbackKeySymptomID");
  result = CFDictionaryGetValue(theDict, @"SymptomReporterCallbackKeyGroupID");
  if (Value)
  {
    v6 = result == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {

    return [a1 sendSymptomToRemote:Value groupID:result];
  }

  return result;
}

void sub_1DB7E790C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t MediaCallback(int a1, void *a2, unsigned int *a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = 2148597761;
  if (!a2)
  {
    return v4;
  }

  v9 = [a2 callID];
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        v13 = *a3;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v14 = VRTraceErrorLogLevelToCSTR();
          v15 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v21 = 136316162;
            v22 = v14;
            v23 = 2080;
            v24 = "MediaCallback";
            v25 = 1024;
            v26 = 4732;
            v27 = 1024;
            v28 = v9;
            v29 = 1024;
            v30 = v13;
            _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d MediaCallback: call (%08X) is not using relay for connection %d", &v21, 0x28u);
          }
        }

        [a2 handleMediaReceivedOverPeerToPeerLinkWithConnectionId:v13];
        return 0;
      case 1:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v18 = VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v21 = 136315906;
            v22 = v18;
            v23 = 2080;
            v24 = "MediaCallback";
            v25 = 1024;
            v26 = 4738;
            v27 = 1024;
            v28 = v9;
            _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d MediaCallback: call (%08X) is upgraded from relay to P2P, relay will be torn down in handlePrimaryConnChange.", &v21, 0x22u);
          }
        }

        return 0;
      case 2:
        v10 = *a3;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v21 = 136316162;
            v22 = v11;
            v23 = 2080;
            v24 = "MediaCallback";
            v25 = 1024;
            v26 = 4743;
            v27 = 1024;
            v28 = v9;
            v29 = 1024;
            v30 = v10;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d MediaCallback: call (%08X) started with relay for connection %d", &v21, 0x28u);
          }
        }

        [a2 handleMediaReceivedOverRelayLinkWithConnectionId:v10];
        return 0;
    }

LABEL_13:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        MediaCallback_cold_2();
      }
    }

    return v4;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 2148597776;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 2148597776;
      }

      MediaCallback_cold_1();
      return 2148597776;
    }

    if (a1 == 5)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315906;
      v22 = v16;
      v23 = 2080;
      v24 = "MediaCallback";
      v25 = 1024;
      v26 = 4750;
      v27 = 1024;
      v28 = v9;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d MediaCallback: flush baseband queue for call (%08X).", &v21, 0x22u);
    }
  }

  return [a2 flushBasebandQueueWithPayloads:a3 flushCount:a4];
}

void sub_1DB7FAD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VCCallSessionFillMediaControlInfoCallback(uint64_t a1, void *a2, uint64_t a3)
{
  result = VCMediaControlInfoGeneratorGetType();
  if (!result)
  {

    return [a2 fillMediaControlInfo:a3];
  }

  return result;
}

uint64_t VCCallSessionProcessMediaControlInfoCallback(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = VCMediaControlInfoGeneratorGetType() == 0;

  return [a2 processMediaControlInfo:a3 isAudio:v5];
}

_DWORD *getMaxImageDimensions(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = malloc_type_calloc(1uLL, 0x24uLL, 0x10000408AA14F5FuLL);
  v13 = v12;
  if (v12)
  {
    *v12 = xmmword_1DBD499B0;
    *(v12 + 2) = 0xF000000000;
    *(v12 + 3) = 0x3F0000000000000FLL;
    v12[8] = a2;
    v14 = +[VCVideoRuleCollectionsCamera sharedInstance];
    if (a1 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    v16 = objc_alloc(MEMORY[0x1E695DF70]);
    if (a2 == 2)
    {
      v17 = -[VCVideoRuleCollections supportedVideoRulesForBitrate:transportType:payload:encodingType:](v14, "supportedVideoRulesForBitrate:transportType:payload:encodingType:", [a5 limitingRule], 1, a4, v15);
    }

    else
    {
      v17 = [(VCVideoRuleCollections *)v14 getVideoRulesForTransport:2 payload:a4 encodingType:v15];
    }

    v18 = [v16 initWithArray:v17];
    v19 = v18;
    if (a1 != 1)
    {
      remove16x9Resolutions(v18);
    }

    if ([+[VCDefaults forceHWI] sharedInstance]
    {
      v20 = +[VCDefaults sharedInstance];
      v21 = a1 == 1 ? [(VCDefaults *)v20 forceVideoPayload]: [(VCDefaults *)v20 forceRecvVideoPayload];
      if (v21 != 128 && v21 != a4)
      {
        [v19 removeAllObjects];
      }
    }

    LOBYTE(v23) = 0;
    [a3 getNegotiatedResolutionForPayload:a4 forInterface:a2 withRule:v19 direction:a1 result:v13 remoteSupportsHD:a6 screenSharing:v23];

    if (!v13[5] && !v13[2])
    {
      free(v13);
      return 0;
    }
  }

  return v13;
}

void remove16x9Resolutions(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v37;
    v7 = "VCCallSession";
    *&v4 = 136316418;
    v21 = v4;
    v22 = a1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        v10 = (9 * [v9 iWidth]) / 16;
        v12 = v10 + 15;
        v11 = v10 < -15;
        v13 = v10 + 30;
        if (!v11)
        {
          v13 = v12;
        }

        if ([v9 iHeight] == (v13 & 0xFFFFFFF0))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v16 = v2;
              v17 = v7;
              v18 = [v9 iWidth];
              v19 = [v9 iHeight];
              [v9 fRate];
              *buf = v21;
              v24 = v14;
              v25 = 2080;
              v26 = "remove16x9Resolutions";
              v27 = 1024;
              v28 = 5804;
              v29 = 1024;
              v30 = v18;
              v7 = v17;
              v2 = v16;
              a1 = v22;
              v31 = 1024;
              v32 = v19;
              v33 = 2048;
              v34 = v20;
              _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCCallSession [%s] %s:%d Removing resolution %dx%d %f for SDP", buf, 0x32u);
            }
          }

          [v2 addObject:v9];
        }
      }

      v5 = [a1 countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v5);
  }

  [a1 removeObjectsInArray:v2];
}

_DWORD *addWifiInterfaceForImageDimensions(_DWORD *result, int a2, char a3, void *a4)
{
  if (a2 >= 1)
  {
    v24 = v11;
    v25 = v10;
    v26 = v9;
    v27 = v8;
    v28 = v7;
    v29 = v6;
    v30 = v5;
    v31 = v4;
    v32 = v12;
    v33 = v13;
    v16 = 0;
    v17 = result + 5;
    v18 = a2;
    while (1)
    {
      result = [a4 objectAtIndexedSubscript:{v16, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33}];
      v19 = result;
      if ((a3 & 1) == 0)
      {
        break;
      }

      if (result)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v16;
      v17 += 9;
      if (v18 == v16)
      {
        return result;
      }
    }

    v22 = [result iWidth];
    result = [v19 iHeight];
    if (result * v22 > 307200 || v19 == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    *(v17 - 5) = [v19 iWidth];
    *(v17 - 3) = [v19 iWidth];
    *(v17 - 2) = [v19 iHeight];
    *v17 = [v19 iHeight];
    [v19 fRate];
    v17[1] = v20;
    result = [v19 fPref];
    v17[2] = v21;
    v17[3] = 2;
    goto LABEL_6;
  }

  return result;
}

void **addCellInterfaceForImageDimensions(void **result, int *a2, int a3, void *a4)
{
  v6 = result;
  v27 = *MEMORY[0x1E69E9840];
  LODWORD(v7) = *a2;
  if (*a2 >= 1)
  {
    v8 = 0;
    if (a3 == 100)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    v10 = (*result + 32);
    do
    {
      *v10 = v9;
      v10 += 9;
      ++v8;
      v7 = *a2;
    }

    while (v8 < v7);
  }

  if (a3 == 123)
  {
    *result = malloc_type_realloc(*result, 36 * ([a4 count] + v7), 0x10000408AA14F5FuLL);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    result = [a4 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (result)
    {
      v11 = result;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(a4);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          *(*v6 + 9 * *a2 + 2) = [v14 iWidth];
          v15 = [v14 iWidth];
          v16 = *v6;
          v16[9 * *a2] = v15;
          v16[9 * *a2 + 1] = 0;
          *(*v6 + 9 * *a2 + 5) = [v14 iHeight];
          v17 = [v14 iHeight];
          v18 = *v6;
          *(*v6 + 9 * *a2 + 3) = v17;
          v18[9 * *a2 + 4] = 0;
          [v14 fRate];
          *(*v6 + 9 * *a2 + 6) = v19;
          [v14 fPref];
          v20 = *v6 + 36 * *a2;
          *(v20 + 28) = v21;
          *(v20 + 32) = 1;
          ++*a2;
          v13 = (v13 + 1);
        }

        while (v11 != v13);
        result = [a4 countByEnumeratingWithState:&v23 objects:v22 count:16];
        v11 = result;
      }

      while (result);
    }
  }

  return result;
}

void OUTLINED_FUNCTION_14_12(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a3 = a1;
  *(a3 + 4) = a4;
  *(a3 + 12) = 2080;
}

uint64_t OUTLINED_FUNCTION_24_7(uint64_t result, uint64_t a2)
{
  *(a2 + 24) = v3;
  *(a2 + 28) = v2;
  *(a2 + 30) = result;
  return result;
}

void OUTLINED_FUNCTION_36_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x26u);
}

void OUTLINED_FUNCTION_38_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x22u);
}

BOOL OUTLINED_FUNCTION_39_8()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_53_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x1Cu);
}

void OUTLINED_FUNCTION_54_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

BOOL OUTLINED_FUNCTION_55_0()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_56(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0x26u);
}

uint64_t RTPSendUncompressedVideoPacket(uint64_t a1, char a2, int a3, int a4, void *a5, signed int a6, int *a7, const void *a8, double a9, unsigned __int8 a10, int a11, int a12, unsigned __int8 a13, _DWORD *a14, int a15, uint64_t a16, int a17, void *a18, uint64_t a19, _OWORD *a20, char a21, int a22)
{
  v22 = a18;
  v23 = 2147549198;
  if (a7)
  {
    *a7 = 0;
    v33 = CheckInHandleDebug();
    if (v33 == 0xFFFFFFFFLL)
    {
      VCMediaControlInfoDispose(a18);
      return 2147549190;
    }

    else if (v33)
    {
      if (a6 >= 1 && ((*(v33 + 16) = *(v33 + 16) & 0x80FF | ((a2 & 0x7F) << 8), (a2 & 0x7F) == 0x7C) || (a2 & 0x7F) == 0x6E))
      {
        if (a6 < 0x5B5)
        {
          v23 = SendRTP(a1, v33, a3, a4, 0, 0, a5, a6, a9, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
          v22 = 0;
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v34 = VRTraceErrorLogLevelToCSTR();
          v35 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            RTPSendUncompressedVideoPacket_cold_1(v34, a6 + 12, v35);
          }
        }
      }

      else
      {
        v23 = 2147549199;
      }

      VCMediaControlInfoDispose(v22);
      CheckOutHandleDebug();
    }

    else
    {
      VCMediaControlInfoDispose(a18);
      return 2147549186;
    }
  }

  else
  {
    VCMediaControlInfoDispose(a18);
    return 2147549185;
  }

  return v23;
}

void OUTLINED_FUNCTION_14_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

double VCRateControlAlgorithmBasePriv_StateEnter(uint64_t a1)
{
  if (*(a1 + 1088) == 3)
  {
    result = *(a1 + 1144);
    *(a1 + 1152) = result;
  }

  return result;
}

void VCRateControlAlgorithmBasePriv_StateExit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 1088) == 1)
  {
    VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Initial Rampup done!", a3, a4, a5, a6, a7, a8, v8);
    if ((*(a1 + 1170) & 1) == 0)
    {
      *(a1 + 1170) = 1;
    }
  }
}

double VCRateControlAlgorithmBasePriv_CheckPaused(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1088) != 1)
  {
    IsPaused = VCRateControlAlgorithm_IsPaused(a1);
    v4 = *(a1 + 1088);
    if (v4)
    {
      v5 = IsPaused == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (!v4)
      {
        if (!IsPaused || (result = *(a1 + 1144) - *(a1 + 1080), result > *(a1 + 696)))
        {
          (*(a1 + 32))(a1);
          *(a1 + 1088) = 3;
          (*(a1 + 24))(a1);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v23 = 136315650;
              v24 = v12;
              v25 = 2080;
              v26 = "VCRateControlAlgorithmBasePriv_CheckPaused";
              v27 = 1024;
              v28 = 115;
              _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Resume VCRateControl algorithm", &v23, 0x1Cu);
            }
          }

          VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Resume rate control algorithm", v6, v7, v8, v9, v10, v11, v23);
          VCRateControlAlgorithm_SetPaused(a1, 0);
        }
      }
    }

    else
    {
      (*(a1 + 32))(a1);
      *(a1 + 1088) = 0;
      (*(a1 + 24))(a1);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v23 = 136315650;
          v24 = v21;
          v25 = 2080;
          v26 = "VCRateControlAlgorithmBasePriv_CheckPaused";
          v27 = 1024;
          v28 = 109;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Pause VCRateControl algorithm", &v23, 0x1Cu);
        }
      }

      VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "Pause rate control algorithm", v15, v16, v17, v18, v19, v20, v23);
      result = *(a1 + 1144);
      *(a1 + 1080) = result;
    }
  }

  return result;
}

uint64_t VCRateControlAlgorithm_IsPaused(uint64_t a1)
{
  if (a1)
  {
    v1 = atomic_load((a1 + 1072));
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCRateControlAlgorithm_IsPaused_cold_1();
      }
    }

    v1 = 0;
  }

  return v1 & 1;
}

uint64_t VCRateControlAlgorithmBasePriv_StateChange(uint64_t result, int a2)
{
  if (*(result + 1088) != a2)
  {
    v4 = result;
    (*(result + 32))();
    *(v4 + 1088) = a2;
    v5 = *(v4 + 24);

    return v5(v4);
  }

  return result;
}

void VCRateControlAlgorithmBasePriv_LogToDumpFiles(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v19[0] = 0;
    vasprintf(v19, a2, &a9);
    v16 = v19[0];
    if (v19[0])
    {
      v17 = *(a1 + 5160);
      if (v17)
      {
        VRLogfilePrint(v17, "%s\n", v10, v11, v12, v13, v14, v15, v19[0]);
        v16 = v19[0];
      }

      v18 = *(a1 + 5168);
      if (v18)
      {
        VRLogfilePrint(v18, "%s\n", v10, v11, v12, v13, v14, v15, v16);
        v16 = v19[0];
      }

      free(v16);
    }
  }
}

void VCRateControlAlgorithm_SetPaused(uint64_t a1, unsigned __int8 a2)
{
  if (a1)
  {
    atomic_store(a2, (a1 + 1072));
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlAlgorithm_SetPaused_cold_1();
    }
  }
}

void VCRateControlAlgorithm_EnableLogDump(uint64_t a1, uint64_t a2, char a3)
{
  if (a1)
  {
    if (a2)
    {
      *(a1 + 5160) = a2;
    }

    *(a1 + 5176) = a3;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCRateControlAlgorithm_EnableLogDump_cold_1();
    }
  }
}

void VCRateControlAlgorithm_EnableBasebandDump(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    *(a1 + 5168) = a2;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136316162;
      v7 = v4;
      v8 = 2080;
      v9 = "VCRateControlAlgorithm_EnableBasebandDump";
      v10 = 1024;
      v11 = 134;
      v12 = 2048;
      v13 = a1;
      v14 = 2048;
      v15 = a2;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Invalid parameter. algorithm=%p logBasebandDump=%p", &v6, 0x30u);
    }
  }
}

double VCRateControlAlgorithmBasePriv_CalculateCongestionMetrics(uint64_t a1, double a2, double a3)
{
  *(a1 + 2880) = *(a1 + 2928);
  v4 = VCRateControlUtil_CalculateCongestionMetrics(a1 + 1248, a1 + 40, *(a1 + 1088) == 1, a2, a3);
  *(a1 + 2896) = v4;
  if (v4)
  {
    *(a1 + 2912) = *(a1 + 2864);
    v5 = *(a1 + 2872);
    *(a1 + 2920) = v5;
    if (*(a1 + 2904) <= 0.0)
    {
      *(a1 + 2897) = 0;
LABEL_6:
      *&v5 = *(a1 + 1144);
      *(a1 + 2936) = v5;
      return *&v5;
    }

    *(a1 + 2897) = *&v5 == 0.0;
    if (*&v5 != 0.0)
    {
      goto LABEL_6;
    }
  }

  return *&v5;
}

uint64_t VCRateControlAlgorithmBasePriv_CheckBandwidthOvershoot(uint64_t result, unsigned int a2)
{
  if (a2)
  {
    v2 = *(result + 1242);
    if (!*(result + 1242))
    {
      v2 = 66;
    }

    v3 = *(result + 1100);
    v4 = v2 - 1;
    if (v3 + 1 < v2 - 1)
    {
      v4 = v3 + 1;
    }

    v5 = *(result + 48);
    v6 = *(result + 176);
    v7 = (*(result + 1120) + (*(v5 + 4 * v4) - *(result + 1120)) * v6);
    *(result + 1241) = v7 > a2;
    if (v7 <= a2)
    {
      *(result + 1224) = *(result + 1144);
    }

    v8 = *(result + 248) + v3;
    v9 = v2 - 2;
    if (v8 < v9)
    {
      v9 = v8;
    }

    v10 = *(v5 + 4 * v9) + (*(v5 + 4 * v9 + 4) - *(v5 + 4 * v9)) * v6;
    *(result + 1240) = v10 < a2;
    if (v10 >= a2)
    {
      *(result + 1232) = 0;
    }

    else if (*(result + 1232) == 0.0)
    {
      *(result + 1232) = *(result + 1144);
    }
  }

  else
  {
    *(result + 1224) = *(result + 1144);
    *(result + 1240) = 0;
  }

  return result;
}

BOOL VCRateControlAlgorithmBasePriv_RecentlyGoAboveRampUpBandwidth(uint64_t a1)
{
  if (*(a1 + 1088) == 1 && *(a1 + 1170) != 1 || !*(a1 + 1216) || *(a1 + 418) != 1 || (VCRateControlMediaController_IsVideoStopped(*(a1 + 1064)) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 1240) == 1)
  {
    return *(a1 + 1144) - *(a1 + 1232) < *(a1 + 224);
  }

  return 1;
}

uint64_t VCRateControlAlgorithmBasePriv_UpdateLossEvent(uint64_t result)
{
  if (*(result + 5120) > 0.0)
  {
    v1 = *(result + 4992);
    v2 = result + 2944 + 32 * v1;
    v3 = *(result + 5040);
    *v2 = *(result + 1144);
    *(v2 + 8) = v3;
    v4 = *(result + 5152);
    v5 = 0;
    if (v4 == 1)
    {
      v5 = *(result + 5104);
    }

    *(v2 + 16) = v5;
    v6 = *(result + 5040);
    v7 = *(result + 5048);
    v8 = v7 > 0.0;
    if (v6 - v7 <= 0.001)
    {
      v8 = 0;
    }

    *(v2 + 24) = v8;
    *(v2 + 26) = *(result + 5028);
    v9 = v6;
    if (v4)
    {
      v9 = *(result + 5104);
      if (v6 >= v9)
      {
        v9 = v6;
      }
    }

    v10 = *(result + 5064);
    if (v10 != -1.0)
    {
      v9 = v9 * 0.03 + v10 * 0.97;
    }

    *(result + 5064) = v9;
    *(result + 4992) = (v1 + 1) & 0x3F;
    *(result + 5048) = v6;
  }

  return result;
}

uint64_t VCRateControlAlgorithmBasePriv_AllowRampUpWithContinuousTargetBitrate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 5008) == 0.0)
  {
    return 1;
  }

  v8 = *(a1 + 1112);
  if (*(a1 + 1120) == v8)
  {
    return 1;
  }

  v9 = *(a1 + 1100);
  if (v9 + 1 < *(a1 + 60))
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = *(a1 + 60);
  }

  v11 = *(*(a1 + 48) + 4 * v10);
  if (v8 > v11)
  {
    *(a1 + 1112) = v11;
    return 1;
  }

  VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "LossEventRampUp is blocked due to continuousTargetBitrate=%u, currentTargetBitrate=%u, nextTargetBitrate=%u, bandwidthLimit=%u, confidence=%u", a3, a4, a5, a6, a7, a8, v8);
  return 0;
}

uint64_t VCRateControlAlgorithmBasePriv_ShouldBlockRampUpDueToLossEventThreshold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 264) == 0.0 || *(a1 + 5008) <= 0.0)
  {
    return 0;
  }

  v8 = *(a1 + 5064);
  v9 = v8 > *(a1 + 776);
  v10 = *(a1 + 256);
  if (*(a1 + 5016) >= v10)
  {
    if (v8 <= *(a1 + 792))
    {
      if (*(a1 + 5040) > *(a1 + 5056))
      {
        return 1;
      }
    }

    else
    {
      *(a1 + 5088) = v8;
      v11 = v8 * 3.0;
      if (v8 * 3.0 >= *(a1 + 784))
      {
        v11 = *(a1 + 784);
      }

      *(a1 + 5056) = v11;
      *(a1 + 5008) = 0;
      *(a1 + 5020) = 0;
      VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "LossEventRampDown no use and tried ramped down with badTrendCount=%d, nullify lossEventRampDown RTT=%f, avgPLR=%f, previous avgPLR=%f, PLRThreshold=%f", a3, a4, a5, a6, a7, a8, v10);
    }
  }

  return v9;
}

uint64_t VCRateControlAlgorithmBasePriv_ShouldRampDownDueToLossEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 252);
  if (v9 < 1)
  {
    goto LABEL_8;
  }

  v10 = 0;
  for (i = -1; i != -65; --i)
  {
    if (v9 + i == -1)
    {
      break;
    }

    v10 += *(a1 + 2944 + 32 * ((i + *(a1 + 4992)) & 0x3F) + 24);
  }

  if (v10 < v9 || *(a1 + 2912) <= *(a1 + 280))
  {
LABEL_8:
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 1100) >= *(a1 + 116);
  }

  v13 = *(a1 + 264);
  if (v13 == 0.0 || (v14 = *(a1 + 5016), v14 >= *(a1 + 256)) || (v15 = *(a1 + 1088), v15 == 5) || (v16 = *(a1 + 5008), v16 == 0.0) && (v15 == 3 || *(a1 + 1144) - *(a1 + 1192) < *(a1 + 480)))
  {
    v17 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = *(a1 + 4992) - 1;
    v22 = 0.0;
    v23 = 0.0;
    while (1)
    {
      v24 = (a1 + 2944 + 32 * (v21 & 0x3F));
      v25 = *v24;
      if (!v19)
      {
        v23 = *v24;
      }

      if (v25 == 0.0)
      {
        break;
      }

      if (v23 - v25 > *(a1 + 272))
      {
        if (v19 < 2)
        {
          break;
        }

LABEL_32:
        v22 = v20 / v19;
        break;
      }

      v26 = v24[1];
      v27 = *(a1 + 5056);
      v28 = v26 >= 0.95 || v26 <= v27;
      if (!v28 || v24[2] > v27)
      {
        ++v20;
      }

      ++v19;
      LOBYTE(v21) = v21 - 1;
      if (v19 == 64)
      {
        goto LABEL_32;
      }
    }

    if (v22 < v13 || *(a1 + 2912) <= *(a1 + 280))
    {
      v17 = 0;
    }

    else
    {
      v29 = *(a1 + 5064);
      if (v29 >= *(a1 + 5056))
      {
        if (v16 == 0.0)
        {
          VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "LossEventRampDown start ramping down with RTT=%f, avgPLR=%f, PLRThreshold=%f, ratio=%f", a3, a4, a5, a6, a7, a8, *(a1 + 5120));
        }

        else
        {
          v30 = v29 > *(a1 + 5072) && v29 > *(a1 + 792);
          if (*(a1 + 5080) < v29)
          {
            v30 = 1;
          }

          *(a1 + 5016) = v14 + v30;
          VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "LossEventRampDown doesn't seem to stabilized yet with RTT=%f, avgPLR=%f, previousAvgPLR=%f, PLRThreshold=%f, badTrendCount=%d, PLR trend is going %s, %s improvement", a3, a4, a5, a6, a7, a8, *(a1 + 5120));
        }
      }

      else
      {
        VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "LossEventRampDown ramping down may be too aggressive with RTT=%f, avgPLR=%f, PLRThreshold=%f", a3, a4, a5, a6, a7, a8, *(a1 + 5120));
      }

      v16 = *(a1 + 5008);
      v31 = *(a1 + 5064);
      if (v16 == 0.0)
      {
        v16 = *(a1 + 1144);
        *(a1 + 5008) = v16;
        *(a1 + 5080) = v31;
      }

      *(a1 + 5072) = v31;
      v17 = 1;
    }

    if (v16 > 0.0)
    {
      v32 = *(a1 + 776);
      v33 = *(a1 + 5056);
      if (v33 >= *(a1 + 5064))
      {
        v33 = *(a1 + 5064);
      }

      if (v32 < v33)
      {
        v32 = v33;
      }

      *(a1 + 5056) = v32;
    }

    if (v17)
    {
      v34 = *(a1 + 116);
      v35 = *(a1 + 1100);
      if (v35 >= v34 && *(a1 + 1128) >= *(*(a1 + 48) + 4 * v34))
      {
        if (*(a1 + 1104) < v35)
        {
          v36 = *(a1 + 1120);
          v37 = *(a1 + 5020);
          if (v37)
          {
            if ((v36 - v37) >= 0)
            {
              v38 = v36 - v37;
            }

            else
            {
              v38 = v37 - v36;
            }

            v39 = v37;
            if (v37 * 0.35 <= v38)
            {
              v40 = 0;
            }

            else
            {
              v40 = *(a1 + 5024) + 1;
            }

            if (v40 >= 0xA)
            {
              v40 = 10;
            }

            *(a1 + 5024) = v40;
            v41 = (vcvtd_n_f64_u32(v36, 1uLL) + v39 * 0.5);
            *(a1 + 5020) = v41;
            VCRateControlAlgorithmBasePriv_LogToDumpFiles(a1, "LossEventRampDown update bandwidth limit=%u, confidence=%u, diff=%d", a3, a4, a5, a6, a7, a8, v41);
          }

          else
          {
            *(a1 + 5020) = v36;
            ++*(a1 + 5024);
          }
        }

        v17 = 1;
      }

      else
      {
        bzero((a1 + 2944), 0x800uLL);
        v17 = 0;
        *(a1 + 4992) = 0;
      }
    }
  }

  return v12 | v17;
}

uint64_t VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampUp(uint64_t result)
{
  *(result + 1172) = 0;
  *(result + 1176) = 0;
  v1 = *(result + 1120);
  v2 = *(result + 5020);
  v3 = v1 - v2;
  if ((v1 - v2) < 0)
  {
    v3 = v2 - v1;
  }

  if (v2 * 0.35 > v3 && (v4 = *(result + 5024)) != 0)
  {
    v5 = *(result + 1112);
    v6 = v3 * 0.16 / v5 / v4;
    if (v6 < 0.01)
    {
      v6 = 0.01;
    }

    v7 = v5 * (v6 + 1.0);
  }

  else
  {
    v7 = v1;
  }

  *(result + 1112) = v7;
  return result;
}

double VCRateControlAlgorithmBasePriv_UpdateCongestionStatusWhenRampDown(uint64_t a1, double a2)
{
  v2 = *(a1 + 1172) + 1;
  *(a1 + 1172) = v2;
  v3 = *(a1 + 1176);
  if (v3 == 0.0)
  {
    *(a1 + 1176) = a2;
  }

  else if (a2 - v3 >= *(a1 + 184))
  {
    *(a1 + 1172) = 0;
    *(a1 + 1176) = 0;
  }

  else if (v2 >= *(a1 + 368))
  {
    *(a1 + 1160) = 1;
    *(a1 + 1184) = a2;
  }

  LODWORD(a2) = *(a1 + 1120);
  result = *&a2;
  *(a1 + 1112) = result;
  return result;
}

void VCRateControlAlgorithm_Configure(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v4 = *(a1 + 8);

    v4();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "VCRateControlAlgorithm_Configure";
      v11 = 1024;
      v12 = 552;
      v13 = 2048;
      v14 = a1;
      v15 = 2048;
      v16 = a2;
      _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Invalid parameter. algorithm=%p configuration=%p", &v7, 0x30u);
    }
  }
}

uint64_t VCRateControlAlgorithm_DoRateControl(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v4 = *(a1 + 16);

    return v4();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = 136316162;
        v9 = v6;
        v10 = 2080;
        v11 = "VCRateControlAlgorithm_DoRateControl";
        v12 = 1024;
        v13 = 560;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = a2;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d Invalid parameter. algorithm=%p statistics=%p", &v8, 0x30u);
      }
    }

    return 0;
  }
}

uint64_t VCCaptionsSegmentBlobReadFrom(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v28 = 0;
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

        v7 |= (v28 & 0x7F) << v5;
        if ((v28 & 0x80) == 0)
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
        break;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        String = PBReaderReadString();

        *(a1 + 16) = String;
      }

      else if (v12 == 2)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v30 = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v30 & 0x7F) << v19;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v10 = v20++ >= 9;
          if (v10)
          {
            LOBYTE(v24) = 0;
            goto LABEL_42;
          }
        }

        v24 = (v21 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + 24) = v24;
      }

      else if (v12 == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v29 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v29 & 0x7F) << v13;
          if ((v29 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v10 = v14++ >= 9;
          if (v10)
          {
            v18 = 0;
            goto LABEL_46;
          }
        }

        v18 = [a2 hasError] ? 0 : v15;
LABEL_46:
        *(a1 + 8) = v18;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DB828054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _VCMediaQueuePacketBundler_BundlePacketsWithNonePolicy(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (CMSimpleQueueGetCount(*(a1 + 32)) >= 1)
  {
    do
    {
      v4 = CMSimpleQueueDequeue(*(a1 + 32));
      IDSHeaderSizeWithChannelDataFormatArray = VCIDSChannelData_GetIDSHeaderSizeWithChannelDataFormatArray((v4 + 16), 1u);
      if (v4[293])
      {
        v6 = 48;
      }

      else
      {
        v6 = 28;
      }

      if (v4 >= v4 + 312)
      {
        __break(0x5519u);
      }

      if (a2)
      {
        v7 = (*(a2 + 16))(a2, v4, (v6 + IDSHeaderSizeWithChannelDataFormatArray), *(v4 + 2), 0);
        if (v7)
        {
          v8 = v7;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v9 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v13 = v11;
              v14 = 2080;
              v15 = "_VCMediaQueuePacketBundler_ReturnProcessedPackets";
              v16 = 1024;
              v17 = 76;
              v18 = 1024;
              v19 = v8;
              _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Output Block failed (%d)", buf, 0x22u);
            }
          }
        }
      }
    }

    while (CMSimpleQueueGetCount(*(a1 + 32)) > 0);
  }

  return 0;
}

uint64_t _VCMediaQueuePacketBundler_BundlePacketsWithFCFSPolicy(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = atomic_load((a1 + 20));
  if (CMSimpleQueueGetCount(*(a1 + 32)) < 1)
  {
    v11 = 0;
    LOWORD(v7) = 0;
    v5 = 0;
    goto LABEL_32;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a2;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v29 = v4;
  v30 = v9;
  do
  {
    v13 = v5;
    v14 = CMSimpleQueueDequeue(*(a1 + 32));
    if (v5 && v5 >= v6)
    {
      __break(0x5519u);
    }

    SizeOfHeaderWithBundledPackets = _VCMediaQueuePacketBundler_GetSizeOfHeaderWithBundledPackets(v5, v14);
    if (v8)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14[288];
    }

    if (v10)
    {
      v17 = 1;
    }

    else
    {
      v17 = v14[290];
    }

    if (v16)
    {
      v18 = v11 + SizeOfHeaderWithBundledPackets;
LABEL_20:
      v22 = _VCMediaQueuePacketBundler_GetSizeOfHeaderWithBundledPackets(v5, 0);
      v12 = 0;
      v11 = 0;
      v21 = 0;
      v5 = v14;
      if (v30 && v13)
      {
        v23 = (*(v30 + 16))(v30, v13, v22, v7, (v18 - v22));
        if (v23)
        {
          v24 = v23;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v25 = VRTraceErrorLogLevelToCSTR();
            v26 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v32 = v25;
              v33 = 2080;
              v34 = "_VCMediaQueuePacketBundler_ReturnProcessedPackets";
              v35 = 1024;
              v36 = 76;
              v37 = 1024;
              v38 = v24;
              _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d Output Block failed (%d)", buf, 0x22u);
            }
          }
        }

        v12 = 0;
        v11 = 0;
        v21 = 0;
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v11 += SizeOfHeaderWithBundledPackets;
    if ((*(v14 + 2) + v7 > v29 - SizeOfHeaderWithBundledPackets) | v17 & 1 || v12 >= 8)
    {
      v18 = v11;
      goto LABEL_20;
    }

    ++v12;
    if (!v5)
    {
      v21 = v7;
LABEL_24:
      v5 = v14;
      goto LABEL_25;
    }

    v19 = v5;
    do
    {
      v20 = v19;
      v19 = *(v19 + 304);
    }

    while (v19);
    *(v20 + 304) = v14;
    v21 = v7;
LABEL_25:
    v6 = v5 + 312;
    v7 = *(v14 + 2) + v21;
    v8 = v14[288];
    v10 = v14[290];
  }

  while (CMSimpleQueueGetCount(*(a1 + 32)) > 0);
  a2 = v30;
LABEL_32:
  v27 = _VCMediaQueuePacketBundler_GetSizeOfHeaderWithBundledPackets(v5, 0);
  if (a2 && v5 && (*(a2 + 16))(a2, v5, v27, v7, (v11 - v27)))
  {
    _VCMediaQueuePacketBundler_BundlePacketsWithFCFSPolicy_cold_1();
  }

  return 0;
}

uint64_t _VCMediaQueuePacketBundler_GetSizeOfHeaderWithBundledPackets(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  if (a1)
  {
    LOBYTE(v4) = 0;
    v5 = 0;
    do
    {
      if (v5 <= 0xEu)
      {
        v6 = &__b[5 * v5];
        *v6 = *(a1 + 16);
        v7 = *(a1 + 32);
        v8 = *(a1 + 48);
        v9 = *(a1 + 80);
        v6[3] = *(a1 + 64);
        v6[4] = v9;
        v6[1] = v7;
        v6[2] = v8;
      }

      ++v5;
      v4 = *(a1 + 293) | v4 & 1;
      a1 = *(a1 + 304);
    }

    while (a1);
    if (!a2)
    {
      v10 = 0;
LABEL_13:
      if (v5 >= 0x10u)
      {
        _VCMediaQueuePacketBundler_GetSizeOfHeaderWithBundledPackets_cold_1(v10, v5, v4, &v19, &v20, &v21);
        v10 = v19;
        v11 = v20;
        v4 = v21;
      }

      else
      {
        v11 = v5;
      }

      goto LABEL_15;
    }

    if (v5 > 0xEu)
    {
LABEL_11:
      ++v5;
      v10 = *(a2 + 293);
      goto LABEL_13;
    }

LABEL_10:
    v12 = &__b[5 * v5];
    v13 = *(a2 + 64);
    v12[2] = *(a2 + 48);
    v12[3] = v13;
    v12[4] = *(a2 + 80);
    v14 = *(a2 + 32);
    *v12 = *(a2 + 16);
    v12[1] = v14;
    goto LABEL_11;
  }

  v5 = 0;
  v4 = 0;
  v10 = 0;
  v11 = 0;
  if (a2)
  {
    goto LABEL_10;
  }

LABEL_15:
  v15 = v10 | v4;
  IDSHeaderSizeWithChannelDataFormatArray = VCIDSChannelData_GetIDSHeaderSizeWithChannelDataFormatArray(__b, v11);
  if (v15)
  {
    v17 = 48;
  }

  else
  {
    v17 = 28;
  }

  return (IDSHeaderSizeWithChannelDataFormatArray + v17);
}

uint64_t _VCMediaQueuePacketBundlerClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

unint64_t VCMediaQueuePacketBundler_Create(uint64_t a1, void *a2, int a3, int a4)
{
  if (!a2)
  {
    VCMediaQueuePacketBundler_Create_cold_4();
    return v9;
  }

  if (_MergedGlobals_6 != -1)
  {
    VCMediaQueuePacketBundler_Create_cold_1();
  }

  result = _CFRuntimeCreateInstance();
  if (!result)
  {
    VCMediaQueuePacketBundler_Create_cold_3();
    return v9;
  }

  v8 = result;
  *(result + 16) = a3;
  *(result + 20) = a4;
  *(result + 24) = 0;
  if (result >= result + 40)
  {
    __break(0x5519u);
  }

  else
  {
    result = CMSimpleQueueCreate(*MEMORY[0x1E695E480], 1000, (result + 32));
    if (result)
    {
      VCMediaQueuePacketBundler_Create_cold_2(v8);
      return 0;
    }

    else
    {
      *a2 = v8;
    }
  }

  return result;
}

uint64_t VCMediaQueuePacketBundler_AddPacket(uint64_t a1, void *element)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    VCMediaQueuePacketBundler_AddPacket_cold_5();
    return v7;
  }

  if (!element)
  {
    VCMediaQueuePacketBundler_AddPacket_cold_4();
    return v7;
  }

  if (element[38])
  {
    VCMediaQueuePacketBundler_AddPacket_cold_1();
    return v7;
  }

  v4 = atomic_load((a1 + 20));
  v5 = atomic_load((a1 + 24));
  if ((v5 & 1) == 0 && v4 < *(element + 2))
  {
    VCMediaQueuePacketBundler_AddPacket_cold_2();
  }

  result = CMSimpleQueueEnqueue(*(a1 + 32), element);
  if (result)
  {
    VCMediaQueuePacketBundler_AddPacket_cold_3(result, &v7);
    return v7;
  }

  return result;
}

uint64_t VCMediaQueuePacketBundler_SetMTU(unsigned int *a1, unsigned int a2)
{
  if (a1)
  {
    CFRetain(a1);
    atomic_store(a2, a1 + 5);
    CFRelease(a1);
    return 0;
  }

  else
  {
    VCMediaQueuePacketBundler_SetMTU_cold_1();
    return v5;
  }
}

uint64_t VCMediaQueuePacketBundler_SetOneToOne(uint64_t a1, unsigned __int8 a2)
{
  if (a1)
  {
    result = 0;
    atomic_store(a2, (a1 + 24));
  }

  else
  {
    VCMediaQueuePacketBundler_SetOneToOne_cold_1();
    return v4;
  }

  return result;
}