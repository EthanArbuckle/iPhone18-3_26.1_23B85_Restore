uint64_t SIPCloseCall(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v18 = -1431655766;
  memset(__b, 170, sizeof(__b));
  v17 = 0xFFFFFFFFLL;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v20 = v3;
      v21 = 2080;
      v22 = "SIPCloseCall";
      v23 = 1024;
      v24 = 2885;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPCloseCall start...", buf, 0x1Cu);
    }
  }

  v5 = 2148139025;
  v6 = CheckInHandleDebug();
  if (!v6)
  {
    return 2148139010;
  }

  v7 = v6;
  if (!*v6 && !v6[1])
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_21;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v20 = v12;
      v21 = 2080;
      v22 = "SIPCloseCall";
      v23 = 1024;
      v24 = 2893;
      v25 = 1024;
      v26 = 2893;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Call SIPStartListen first.", buf, 0x22u);
    }

    goto LABEL_13;
  }

  v5 = DLFindWithCallIDAndLock(&v17);
  if ((v5 & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v20 = v10;
        v21 = 2080;
        v22 = "SIPCloseCall";
        v23 = 1024;
        v24 = 2900;
        v25 = 1024;
        v26 = 2900;
        v27 = 1024;
        v28 = a2;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Cannot find call ID(%d)", buf, 0x28u);
      }
    }

    goto LABEL_21;
  }

  DLGetState(v17, &v18);
  DLGetData(v17, __b);
  DLUnlock();
  TPStopHeartbeat(*(v7 + 3), &__b[148]);
  if (v18 != 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v20 = v8;
        v21 = 2080;
        v22 = "SIPCloseCall";
        v23 = 1024;
        v24 = 2909;
        v25 = 1024;
        v26 = 2909;
        v27 = 1024;
        v28 = a2;
        v29 = 1024;
        v30 = v18;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Call(%d) is in state %d", buf, 0x2Eu);
      }
    }

    v17 = 0xFFFFFFFFLL;
LABEL_13:
    v5 = 2148139025;
  }

LABEL_21:
  TPDiscardConnectionResult();
  DLCloseHandle();
  CheckOutHandleDebug();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v20 = v14;
      v21 = 2080;
      v22 = "SIPCloseCall";
      v23 = 1024;
      v24 = 2921;
      v25 = 1024;
      v26 = v5;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPCloseCall stop(%X)...", buf, 0x22u);
    }
  }

  return v5;
}

uint64_t SIPSendMessage(uint64_t *a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v48 = -1431655766;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xFFFFFFFFLL;
  *v45 = 0xFFFFFFFFLL;
  v8 = *a1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v50 = v9;
      v51 = 2080;
      v52 = "SIPSendMessage";
      v53 = 1024;
      v54 = 2936;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPSendMessage start...", buf, 0x1Cu);
    }
  }

  v11 = 2148139025;
  v12 = CheckInHandleDebug();
  if (!v12)
  {
    return 2148139010;
  }

  v13 = v12;
  if (!*v12 && !v12[1])
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_54;
    }

    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    *buf = 136315906;
    v50 = v34;
    v51 = 2080;
    v52 = "SIPSendMessage";
    v53 = 1024;
    v54 = 2944;
    v55 = 1024;
    *v56 = 2944;
    v27 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Call SIPStartListen first.";
    v28 = v35;
    v29 = 34;
    goto LABEL_41;
  }

  if (!a2)
  {
    v11 = 2148139009;
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_54;
    }

    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    *buf = 136316162;
    v50 = v25;
    v51 = 2080;
    v52 = "SIPSendMessage";
    v53 = 1024;
    v54 = 2973;
    v55 = 1024;
    *v56 = 2973;
    *&v56[4] = 1024;
    *&v56[6] = 0;
    v27 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: CallID(%d) is invalid";
    v28 = v26;
    v29 = 40;
    goto LABEL_41;
  }

  v14 = DLFindWithCallIDAndLock(v45);
  if ((v14 & 0x80000000) != 0)
  {
    v20 = v14;
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v50 = v30;
        v51 = 2080;
        v52 = "SIPSendMessage";
        v53 = 1024;
        v54 = 2952;
        v55 = 1024;
        *v56 = 2952;
        *&v56[4] = 1024;
        *&v56[6] = a2;
        _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Cannot find call ID(%d)", buf, 0x28u);
      }
    }

    goto LABEL_53;
  }

  DLGetState(*v45, &v48);
  DLUnlock();
  if (v48 != 3)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_54;
    }

    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    *buf = 136316418;
    v50 = v32;
    v51 = 2080;
    v52 = "SIPSendMessage";
    v53 = 1024;
    v54 = 2959;
    v55 = 1024;
    *v56 = 2959;
    *&v56[4] = 1024;
    *&v56[6] = a2;
    LOWORD(v57[0]) = 1024;
    *(v57 + 2) = v48;
    v27 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Call(%d) is in state %d";
    v28 = v33;
    v29 = 46;
LABEL_41:
    _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
LABEL_54:
    TACancel();
    v20 = v11;
    goto LABEL_55;
  }

  MessageInDialog = CreateMessageInDialog(&v47, *v45, a3, v13[4]);
  if ((MessageInDialog & 0x80000000) != 0)
  {
    v20 = MessageInDialog;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPSendMessage_cold_4();
      }
    }

    goto LABEL_53;
  }

  v16 = v47;
  v17 = strstr(*(v47 + 69), "VCHandoverCandidateChange:VCHandoverNewCandidateBlob");
  v18 = TACreateHandle(&v44, 1, *(v13 + 3), v16, 0xFFFFFFFFLL, TUMsgCallback, a1);
  if ((v18 & 0x80000000) != 0)
  {
    v20 = v18;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPSendMessage_cold_3();
      }
    }

    v36 = v47;
LABEL_49:
    FreeSipMsg(v36);
LABEL_53:
    v11 = v20;
    if ((v20 & 0x10000000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v19 = TAStart(v44);
  if ((v19 & 0x80000000) != 0)
  {
    v20 = v19;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPSendMessage_cold_2();
      }
    }

    goto LABEL_53;
  }

  v20 = DLGetMsg(*v45, &v46, 0xFFFFFFFFuLL, 7, v47, -1);
  if ((v20 & 0x80000000) != 0)
  {
LABEL_25:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPSendMessage_cold_1();
      }
    }

    goto LABEL_53;
  }

  v43 = v17;
  while (1)
  {
    v21 = v46;
    if (*(v46 + 1) != 2)
    {
      goto LABEL_21;
    }

    v22 = *(v46 + 2);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v50 = v23;
        v51 = 2080;
        v52 = "SIPSendMessage";
        v53 = 1024;
        v54 = 3004;
        v55 = 1024;
        *v56 = v22;
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPSendMessage status(%d)...", buf, 0x22u);
      }
    }

    if ((v22 - 1) <= 4)
    {
      (*(v13 + 4))(v8, *(v13 + 5), 4, a2, v46 + 12, 0, 0, 0);
      v21 = v46;
LABEL_21:
      FreeSipMsg(v21);
      goto LABEL_24;
    }

    if ((v22 & 0xFFFFFFFE) == 6)
    {
      break;
    }

    if ((v22 - 8) <= 0x2C)
    {
      v20 = v22 | 0x900A0000;
      if (a4 && v22 == 45)
      {
        *a4 = 1;
      }

      v36 = v46;
      goto LABEL_49;
    }

LABEL_24:
    v20 = DLGetMsg(*v45, &v46, 0xFFFFFFFFuLL, 7, v47, -1);
    if ((v20 & 0x80000000) != 0)
    {
      goto LABEL_25;
    }
  }

  if (v43)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(v46 + 2);
        *buf = 136316162;
        v50 = v40;
        v51 = 2080;
        v52 = "SIPSendMessage";
        v53 = 1024;
        v54 = 3012;
        v55 = 2080;
        *v56 = v46 + 12;
        *&v56[8] = 1024;
        v57[0] = v42;
        _os_log_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d HandoverReport: got %s back for candidateChangeMessage, status: %d", buf, 0x2Cu);
      }
    }

    (*(v13 + 4))(v8, *(v13 + 5), 17, a2, v46 + 12, 0, 0, 0);
  }

  FreeSipMsg(v46);
LABEL_55:
  TACloseHandle();
  CheckOutHandleDebug();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v37 = VRTraceErrorLogLevelToCSTR();
    v38 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v50 = v37;
      v51 = 2080;
      v52 = "SIPSendMessage";
      v53 = 1024;
      v54 = 3041;
      v55 = 1024;
      *v56 = v20;
      _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPSendMessage stop(%X)...", buf, 0x22u);
    }
  }

  return v20;
}

uint64_t SIPSendMessageAll(uint64_t a1, uint64_t a2, char *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v32 = -1431655766;
  v33 = -1431655766;
  v30 = 0;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v35 = v5;
      v36 = 2080;
      v37 = "SIPSendMessageAll";
      v38 = 1024;
      v39 = 3058;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPSendMessageAll start...", buf, 0x1Cu);
    }
  }

  v7 = 2148139011;
  DLFindActiveDialogs(&v33, &v30);
  if (v33 < 1)
  {
    return 2148139030;
  }

  v8 = CheckInHandleDebug();
  if (!v8)
  {
    free(v30);
    return 2148139010;
  }

  v9 = v8;
  v10 = malloc_type_calloc(1uLL, 8 * v33, 0x2004093837F09uLL);
  if (!v10)
  {
    goto LABEL_62;
  }

  v11 = v10;
  v12 = malloc_type_calloc(1uLL, 8 * v33, 0x2004093837F09uLL);
  if (!v12)
  {
    goto LABEL_61;
  }

  v13 = v12;
  if (v33 < 1)
  {
    v7 = 0;
    goto LABEL_60;
  }

  *v29 = v11;
  v14 = 0;
  v7 = 0;
  do
  {
    v13[v14] = 0xFFFFFFFFLL;
    if (!strcmp(a3, "PING"))
    {
      *buf = -1431655766;
      v7 = DLGetSIPPing(*(v30 + v14), buf);
      if ((v7 & 0x80000000) == 0 && !*buf)
      {
        *(v30 + v14) = 0xFFFFFFFFLL;
      }
    }

    DLGetCallID(*(v30 + v14++), &v32);
    v15 = v33;
  }

  while (v14 < v33);
  if (v33 < 1)
  {
    goto LABEL_39;
  }

  v16 = 0;
  v17 = v13;
  do
  {
    v18 = *(v30 + v16);
    if (v18 == 0xFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    MessageInDialog = CreateMessageInDialog(v11, v18, a3, *(v9 + 16));
    if ((MessageInDialog & 0x80000000) != 0)
    {
      v7 = MessageInDialog;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v11 = *v29;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPSendMessageAll_cold_3();
        }

        goto LABEL_53;
      }

LABEL_52:
      v11 = *v29;
      goto LABEL_53;
    }

    v20 = TACreateHandle(v17, 1, *(v9 + 24), *v11, 0xFFFFFFFFLL, TUMsgCallback, a1);
    if ((v20 & 0x80000000) != 0)
    {
      v7 = v20;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPSendMessageAll_cold_2();
        }
      }

      FreeSipMsg(*v11);
      goto LABEL_52;
    }

    v7 = TAStart(*v17);
    if ((v7 & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v11 = *v29;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPSendMessageAll_cold_1();
        }

        goto LABEL_53;
      }

      goto LABEL_52;
    }

    v15 = v33;
LABEL_22:
    ++v16;
    ++v17;
    ++v11;
  }

  while (v16 < v15);
  if (v15 >= 1)
  {
    v21 = 0;
    v11 = *v29;
    while (1)
    {
      while (1)
      {
        v22 = *(v30 + v21);
        if (v22 != 0xFFFFFFFFLL)
        {
          break;
        }

LABEL_34:
        ++v21;
        v15 = v33;
        if (v21 >= v33)
        {
          goto LABEL_40;
        }
      }

      v7 = DLGetMsg(v22, &v31, 0xFFFFFFFFuLL, 7, *(*v29 + 8 * v21), -1);
      if ((v7 & 0x80000000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SIPSendMessageAll_cold_4();
          }
        }

        goto LABEL_53;
      }

      if (*(v31 + 1) == 2)
      {
        v23 = *(v31 + 2);
        FreeSipMsg(v31);
        if ((v23 & 0xFFFFFFFE) == 6)
        {
          goto LABEL_34;
        }

        if ((v23 - 8) <= 0x2C)
        {
          if (v23 == 21)
          {
            DLSetState(*(v30 + v21), 5);
            v7 = 2416574485;
          }

          else
          {
            v7 = v23 | 0x900A0000;
          }

          goto LABEL_34;
        }
      }

      else
      {
        FreeSipMsg(v31);
      }
    }
  }

LABEL_39:
  v11 = *v29;
LABEL_40:
  if ((v7 & 0x80000000) != 0)
  {
LABEL_53:
    v15 = v33;
    if ((v7 & 0x10000000) == 0 && v33 >= 1)
    {
      for (i = 0; i < v33; ++i)
      {
        TACancel();
        v15 = v33;
      }
    }
  }

  if (v15 >= 1)
  {
    v25 = 0;
    do
    {
      TACloseHandle();
      ++v25;
    }

    while (v25 < v33);
  }

LABEL_60:
  free(v13);
LABEL_61:
  free(v11);
LABEL_62:
  if (v30)
  {
    free(v30);
  }

  CheckOutHandleDebug();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v35 = v26;
      v36 = 2080;
      v37 = "SIPSendMessageAll";
      v38 = 1024;
      v39 = 3185;
      v40 = 1024;
      v41 = v7;
      _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPSendMessageAll stop(%X)...", buf, 0x22u);
    }
  }

  return v7;
}

uint64_t SIPGetRemoteInfo(uint64_t a1, int a2, char *a3, char *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  v11 = 0xFFFFFFFFLL;
  v7 = DLFindWithCallIDAndLock(&v11);
  if ((v7 & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v8;
        v14 = 2080;
        v15 = "SIPGetRemoteInfo";
        v16 = 1024;
        v17 = 3238;
        v18 = 1024;
        v19 = 3238;
        v20 = 1024;
        v21 = a2;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Cannot find call ID(%d)", buf, 0x28u);
      }
    }
  }

  else
  {
    DLGetData(v11, __b);
    DLUnlock();
    if (a3)
    {
      strlcpy(a3, &__b[506], 0x2BuLL);
    }

    if (a4)
    {
      CopyRemoteDisplayWithoutQuotes(a4, &__b[331], &__b[669], &__b[724]);
    }
  }

  return v7;
}

uint64_t SIPSetDoKeyExchange(uint64_t a1, int a2, const void *a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2148139010;
  }

  v6 = v5;
  v7 = *(v5 + 48);
  if (v7)
  {
    CFRelease(v7);
  }

  if (a3)
  {
    v8 = CFRetain(a3);
  }

  else
  {
    v8 = 0;
  }

  *(v6 + 48) = v8;
  *(v6 + 56) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t SIPSetEnableCompression(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148139010;
  }

  *(v3 + 16) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t SIPSetAllowSameSourceDestination(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2148139010;
  }

  v4 = TPSetAllowSameSourceDestination(*(v3 + 24), a2);
  CheckOutHandleDebug();
  return v4;
}

uint64_t SIPNewCallProc(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v54 = -1;
  memset(__b, 170, sizeof(__b));
  v52 = 0xFFFFFFFFLL;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  *v51 = 0xFFFFFFFFLL;
  v2 = **(a1 + 1000);
  pthread_setname_np("com.apple.avconference.sip.newcallproc");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = "SIPNewCallProc";
      *&buf[22] = 1024;
      *&buf[24] = 187;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPNewCallProc Thread start...", buf, 0x1Cu);
    }
  }

  v5 = CheckInHandleDebug();
  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPNewCallProc_cold_7();
      }
    }

    FreeSipMsg(a1);
    return 0;
  }

  v6 = v5;
  pthread_mutex_lock(v5 + 1);
  if ((DLFindWithSipMsgAndLock(&v52, a1) & 0x80000000) == 0)
  {
    DLUnlock();
    pthread_mutex_unlock(v6 + 1);
    v7 = 0;
    v52 = 0xFFFFFFFFLL;
    goto LABEL_63;
  }

  v50 = 0;
  v8 = *(a1 + 312);
  if (!v8)
  {
    v10 = (a1 + 572);
    *(a1 + 572) = 0;
LABEL_25:
    *v10 = VCUniqueIDGenerator_GenerateID();
    goto LABEL_26;
  }

  *&buf[78] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&buf[48] = v9;
  *&buf[64] = v9;
  *&buf[16] = v9;
  *&buf[32] = v9;
  *buf = v9;
  CopyRemoteDisplayWithoutQuotes(buf, v8, v8 + 49, v8 + 104);
  if ((*&v6->__opaque[24])(v2, *&v6->__opaque[32], 13, 0, buf, a1 + 576, &v50, 0) == 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPNewCallProc_cold_1();
      }
    }

    pthread_mutex_unlock(v6 + 1);
    goto LABEL_17;
  }

  v11 = v50;
  v10 = (a1 + 572);
  *(a1 + 572) = v50;
  if (!v11)
  {
    goto LABEL_25;
  }

  if ((DLFindWithCallIDAndLock(&v52) & 0x80000000) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v10;
        *buf = 136315906;
        *&buf[4] = v12;
        *&buf[12] = 2080;
        *&buf[14] = "SIPNewCallProc";
        *&buf[22] = 1024;
        *&buf[24] = 235;
        *&buf[28] = 1024;
        *&buf[30] = v14;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Found an existing dialog with Call ID %d. Closing.", buf, 0x22u);
      }
    }

    DLGetConfIndex(v52, &v54);
    DLUnlock();
    v52 = 0xFFFFFFFFLL;
  }

LABEL_26:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = *v10;
      *buf = 136315906;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = "SIPNewCallProc";
      *&buf[22] = 1024;
      *&buf[24] = 243;
      *&buf[28] = 1024;
      *&buf[30] = v17;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Incoming call for Call ID %d", buf, 0x22u);
    }
  }

  if ((*&v6->__opaque[24])(v2, *&v6->__opaque[32], 18, v50, 0, 0, 0, 0))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v20 = *v10;
        *buf = 136315906;
        *&buf[4] = v18;
        *&buf[12] = 2080;
        *&buf[14] = "SIPNewCallProc";
        *&buf[22] = 1024;
        *&buf[24] = 248;
        *&buf[28] = 1024;
        *&buf[30] = v20;
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Primary connection is not ready, ignore the SIP INVITE for Call ID: %u", buf, 0x22u);
      }
    }

    pthread_mutex_unlock(v6 + 1);
LABEL_34:
    v7 = 0;
    goto LABEL_61;
  }

  v21 = DLCreateHandle(&v52, *(a1 + 572), a1, 1, 3, -1, DLIsFinishedCallback, v2);
  if (v21 < 0)
  {
    v23 = v21;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPNewCallProc_cold_6();
      }
    }

    TPRemovePreservedPortBindForCallID(*&v6->__opaque[16], *v10);
    if (v23 == -2146697182)
    {
      v7 = 13;
    }

    else
    {
      v7 = 42;
    }

    goto LABEL_59;
  }

  pthread_mutex_unlock(v6 + 1);
  if ((TACreateHandle(v51, 2, *&v6->__opaque[16], a1, 0xFFFFFFFFLL, TUMsgCallback, *(a1 + 1000)) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPNewCallProc_cold_5();
      }
    }

    goto LABEL_58;
  }

  if ((TAStart(*v51) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPNewCallProc_cold_4();
      }
    }

    goto LABEL_58;
  }

  if ((SendTAStatus(*v51, a1, 0xFFFFFFFFLL, 0, 0, 0, *v6->__opaque) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPNewCallProc_cold_3();
      }
    }

    goto LABEL_58;
  }

  v22 = *(a1 + 208);
  v49 = 11;
  IntStatusCode = GetIntStatusCode(1);
  if (v22)
  {
    (*&v6->__opaque[24])(v2, *&v6->__opaque[32], 15, *v10, v22, 0, &v49, &IntStatusCode);
  }

  if (*(a1 + 132))
  {
    v7 = 25;
    goto LABEL_59;
  }

  *v6->__opaque = 1;
  if (!LODWORD(v6->__sig) && !HIDWORD(v6->__sig))
  {
    goto LABEL_87;
  }

  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v66[4] = v28;
  v66[5] = v28;
  v66[2] = v28;
  v66[3] = v28;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v66[1] = v28;
  v66[0] = v28;
  v65 = v28;
  v64 = v28;
  *&buf[184] = v28;
  *&buf[168] = v28;
  *&buf[152] = v28;
  *&buf[136] = v28;
  *&buf[120] = v28;
  *&buf[104] = v28;
  *&buf[88] = v28;
  *&buf[72] = v28;
  *&buf[56] = v28;
  *&buf[40] = v28;
  *&buf[24] = v28;
  *&buf[8] = v28;
  memset(v47, 170, 20);
  v29 = *(a1 + 712);
  *&buf[36] = *(a1 + 696);
  *&buf[52] = v29;
  *&buf[68] = *(a1 + 728);
  v30 = *(a1 + 752);
  *&buf[76] = *(a1 + 736);
  *&buf[92] = v30;
  *&buf[108] = *(a1 + 768);
  v31 = *(a1 + 776);
  v32 = *(a1 + 792);
  *&buf[148] = *(a1 + 808);
  *&buf[132] = v32;
  *&buf[116] = v31;
  v33 = *(a1 + 816);
  v34 = *(a1 + 832);
  *&buf[188] = *(a1 + 848);
  *&buf[172] = v34;
  *&buf[156] = v33;
  v35 = *(a1 + 856);
  v36 = *(a1 + 872);
  *(&v66[2] + 4) = *(a1 + 888);
  *(&v66[1] + 4) = v36;
  *(v66 + 4) = v35;
  *&buf[32] = *(a1 + 568);
  *&buf[34] = *(a1 + 570);
  *buf = &v47[1];
  LODWORD(v67) = 0;
  v37 = SendTAStatus(*v51, a1, v52, 2, 0, 0, *v6->__opaque);
  if (v37 < 0)
  {
    v39 = v37;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v39 == -2146828258)
    {
      if (ErrorLogLevelForModule >= 5)
      {
        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *v55 = 136315906;
          v56 = v41;
          v57 = 2080;
          v58 = "SIPNewCallProc";
          v59 = 1024;
          v60 = 335;
          v61 = 1024;
          v62 = 335;
          _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: SendTAStatus cancelled", v55, 0x22u);
        }
      }

LABEL_83:
      v7 = 37;
      goto LABEL_59;
    }

    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPNewCallProc_cold_2();
      }
    }

LABEL_58:
    v7 = 42;
    goto LABEL_59;
  }

  if (v22)
  {
    IntStatusCode = GetIntStatusCode(2);
    (*&v6->__opaque[24])(v2, *&v6->__opaque[32], 15, *v10, v22, 0, &v49, &IntStatusCode);
  }

  __b[0] = 0;
  v38 = (*&v6->__opaque[24])(v2, *&v6->__opaque[32], 2, *(a1 + 572), *(a1 + 552), __b, buf, &v54);
  (*&v6->__opaque[24])(v2, *&v6->__opaque[32], 12, *(a1 + 572), 0, 0, v47, 0);
  DLSetMediaType(v52, v47[0]);
  if (v38 <= 1)
  {
    if (!v38)
    {
      DLSetConfIndex(v52, v54);
      TickCount = GetTickCount();
      if (GetTickCount() - TickCount <= 0x7D00)
      {
        v44 = 500;
        do
        {
          v45 = SendTAStatus(*v51, a1, v52, 6, __b, &v47[1], *v6->__opaque);
          if (v45 == -2146435037)
          {
            if ((SendTPStatus(*&v6->__opaque[16], a1, 6, __b, &v47[1], *v6->__opaque) & 0x80000000) != 0)
            {
              __sprintf_chk(__b, 0, 0xA8CuLL, "Transport Error(%08X)");
LABEL_112:
              (*&v6->__opaque[24])(v2, *&v6->__opaque[32], 3, *v10, __b, 0, 0, 0);
              goto LABEL_58;
            }
          }

          else if (v45 < 0)
          {
            if (v45 == -2146828258)
            {
              __sprintf_chk(__b, 0, 0xA8CuLL, "Cancelled");
              v7 = 37;
            }

            else
            {
              __sprintf_chk(__b, 0, 0xA8CuLL, "Transport Error(%08X)", v45);
              v7 = 42;
            }

            (*&v6->__opaque[24])(v2, *&v6->__opaque[32], 3, *v10, __b, 0, 0, 0);
            goto LABEL_59;
          }

          if (v22)
          {
            IntStatusCode = GetIntStatusCode(6);
            (*&v6->__opaque[24])(v2, *&v6->__opaque[32], 15, *v10, v22, 0, &v49, &IntStatusCode);
          }

          v46 = DLGetMsg(v52, &v53, v44, 1, 0, -1);
          if (v46 < 0)
          {
            if (v46 != 23)
            {
              __sprintf_chk(__b, 0, 0xA8CuLL, "Internal Error(%08X)");
              goto LABEL_112;
            }

            if (2 * v44 >= 0xFA0)
            {
              v44 = 4000;
            }

            else
            {
              v44 *= 2;
            }

            IntStatusCode = 6;
            if (v22)
            {
              (*&v6->__opaque[24])(v2, *&v6->__opaque[32], 15, *v10, v22, 0, &v49, &IntStatusCode);
            }
          }

          else
          {
            if (*(v53 + 1) == 1 && *(v53 + 2) == 2)
            {
              (*&v6->__opaque[24])(v2, *&v6->__opaque[32], 1, *v10, 0, 0, 0, 0);
              FreeSipMsg(v53);
              v7 = 6;
              goto LABEL_63;
            }

            FreeSipMsg(v53);
          }
        }

        while (GetTickCount() - TickCount <= 0x7D00);
      }

      SIPHangupWithTimeout(*(a1 + 1000), *(a1 + 572), 0xFFFFFFFFuLL, 291);
      (*&v6->__opaque[24])(v2, *&v6->__opaque[32], 3, *(a1 + 572), "Timeout", 0, 0, 0);
      goto LABEL_34;
    }

    if (v38 != 1)
    {
      goto LABEL_58;
    }

    goto LABEL_83;
  }

  if (v38 != 2)
  {
    if (v38 == 3)
    {
LABEL_17:
      v7 = 50;
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_87:
  v7 = 36;
LABEL_59:
  if ((SendTAStatus(*v51, a1, 0xFFFFFFFFLL, v7, 0, 0, *v6->__opaque) & 0x80000000) != 0)
  {
    SendTPStatus(*&v6->__opaque[16], a1, v7, 0, 0, *v6->__opaque);
    TACancel();
  }

LABEL_61:
  if (v52 != 0xFFFFFFFFLL)
  {
    DLCloseHandle();
  }

LABEL_63:
  if (*v51 == 0xFFFFFFFFLL)
  {
    FreeSipMsg(a1);
  }

  else
  {
    TACloseHandle();
  }

  CheckOutHandleDebug();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v24 = VRTraceErrorLogLevelToCSTR();
    v25 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v26 = GetIntStatusCode(v7);
      *buf = 136315906;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = "SIPNewCallProc";
      *&buf[22] = 1024;
      *&buf[24] = 504;
      *&buf[28] = 1024;
      *&buf[30] = v26;
      _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPNewCallProc Thread end(%d)...", buf, 0x22u);
    }
  }

  return 0;
}

uint64_t SIPCancelProc(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  *v17 = 0xFFFFFFFFLL;
  v18 = 0xFFFFFFFFLL;
  v2 = **(a1 + 1000);
  pthread_setname_np("com.apple.avconference.sip.cancelproc");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = "SIPCancelProc";
      *&buf[22] = 1024;
      *&buf[24] = 1148;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPCancelProc Thread start...", buf, 0x1Cu);
    }
  }

  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    if (*(a1 + 132))
    {
      v7 = 25;
    }

    else
    {
      if ((TACreateHandle(v17, 3, *(v5 + 24), a1, 0xFFFFFFFFLL, TUMsgCallback, *(a1 + 1000)) & 0x80000000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SIPCancelProc_cold_2();
          }
        }
      }

      else
      {
        if ((TAStart(*v17) & 0x80000000) == 0)
        {
          if ((DLFindWithSipMsgAndLock(&v18, a1) & 0x80000000) != 0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 5)
            {
              v13 = VRTraceErrorLogLevelToCSTR();
              v14 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                *&buf[4] = v13;
                *&buf[12] = 2080;
                *&buf[14] = "SIPCancelProc";
                *&buf[22] = 1024;
                *&buf[24] = 1180;
                *&buf[28] = 1024;
                *&buf[30] = 1180;
                _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Cannot find a dialog to cancel, sending 481", buf, 0x22u);
              }
            }

            v7 = 31;
          }

          else
          {
            v16 = -1431655766;
            memset(buf, 170, sizeof(buf));
            v8 = *(a1 + 480);
            DLGetState(v18, &v16);
            if ((v16 - 1) <= 1)
            {
              v15 = -1431655766;
              DLGetCallID(v18, &v15);
              DLSetState(v18, 4);
              (*(v6 + 32))(v2, *(v6 + 40), 5, v15, 0, 0, 0, 0);
            }

            DLGetData(v18, buf);
            DLUnlock();
            if (v8)
            {
              strlcpy((v8 + 156), &buf[374], 0x40uLL);
            }

            TPDiscardConnectionResult();
            v7 = 6;
          }

          goto LABEL_26;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SIPCancelProc_cold_1();
          }
        }
      }

      v7 = 42;
    }

LABEL_26:
    if ((SendTAStatus(*v17, a1, 0xFFFFFFFFLL, v7, 0, 0, *(v6 + 8)) & 0x80000000) != 0)
    {
      SendTPStatus(*(v6 + 24), a1, v7, 0, 0, *(v6 + 8));
      TACancel();
    }

    if (*v17 == 0xFFFFFFFFLL)
    {
      FreeSipMsg(a1);
    }

    else
    {
      TACloseHandle();
    }

    CheckOutHandleDebug();
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        IntStatusCode = GetIntStatusCode(v7);
        *buf = 136315906;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = "SIPCancelProc";
        *&buf[22] = 1024;
        *&buf[24] = 1229;
        *&buf[28] = 1024;
        *&buf[30] = IntStatusCode;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPCancelProc Thread end(%d)...", buf, 0x22u);
      }
    }

    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      SIPCancelProc_cold_3();
    }
  }

  FreeSipMsg(a1);
  return 0;
}

uint64_t SIPHangupProc(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v24 = 0xFFFFFFFFLL;
  v25 = 0xFFFFFFFFLL;
  v2 = **(a1 + 1000);
  pthread_setname_np("com.apple.avconference.sip.hangupproc");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v27 = v3;
      v28 = 2080;
      v29 = "SIPHangupProc";
      v30 = 1024;
      v31 = 1259;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPHangupProc Thread start...", buf, 0x1Cu);
    }
  }

  v5 = CheckInHandleDebug();
  if (v5)
  {
    v6 = v5;
    if (*(a1 + 132))
    {
      v7 = 25;
LABEL_45:
      if ((SendTAStatus(v24, a1, v25, v7, 0, 0, *(v6 + 8)) & 0x80000000) != 0)
      {
        SendTPStatus(*(v6 + 24), a1, v7, 0, 0, *(v6 + 8));
        TACancel();
      }

      if (v7 == 6)
      {
        DLCloseHandle();
      }

      if (v24 == 0xFFFFFFFFLL)
      {
        FreeSipMsg(a1);
      }

      else
      {
        TACloseHandle();
      }

      CheckOutHandleDebug();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          IntStatusCode = GetIntStatusCode(v7);
          *buf = 136315906;
          v27 = v18;
          v28 = 2080;
          v29 = "SIPHangupProc";
          v30 = 1024;
          v31 = 1348;
          v32 = 1024;
          v33 = IntStatusCode;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPHangupProc Thread end(%d)...", buf, 0x22u);
        }
      }

      return 0;
    }

    TPStopHeartbeat(*(v5 + 24), a1 + 816);
    if ((TACreateHandle(&v24, 3, *(v6 + 24), a1, 0xFFFFFFFFLL, TUMsgCallback, *(a1 + 1000)) & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPHangupProc_cold_4();
        }
      }
    }

    else
    {
      if ((TAStart(v24) & 0x80000000) == 0)
      {
        if ((DLFindWithSipMsgAndLock(&v25, a1) & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_44;
          }

          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_44;
          }

          *buf = 136315906;
          v27 = v11;
          v28 = 2080;
          v29 = "SIPHangupProc";
          v30 = 1024;
          v31 = 1293;
          v32 = 1024;
          v33 = 1293;
          v13 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Cannot find a dialog to hangup, sending 481";
          v14 = v12;
          v15 = 34;
        }

        else
        {
          v22 = -1431655766;
          v23 = -1431655766;
          v8 = *(a1 + 544);
          DLGetCallID(v25, &v23);
          DLGetState(v25, &v22);
          if (v22 == 3)
          {
            DLSetState(v25, 5);
            if ((DLUnlock() & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                SIPHangupProc_cold_2();
              }
            }

            if (v8)
            {
              v9 = v8 + 52;
            }

            else
            {
              v9 = 0;
            }

            if (v8)
            {
              v10 = v8 + 48;
            }

            else
            {
              v10 = 0;
            }

            (*(v6 + 32))(v2, *(v6 + 40), 0, v23, v9, 0, v10, 0);
            *(a1 + 572) = v23;
            TPDiscardConnectionResult();
            v7 = 6;
            goto LABEL_45;
          }

          if ((DLUnlock() & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              SIPHangupProc_cold_1();
            }
          }

          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_44;
          }

          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_44;
          }

          *buf = 136316418;
          v27 = v16;
          v28 = 2080;
          v29 = "SIPHangupProc";
          v30 = 1024;
          v31 = 1307;
          v32 = 1024;
          v33 = 1307;
          v34 = 1024;
          v35 = v23;
          v36 = 1024;
          v37 = v22;
          v13 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: Call(%d) is in state %d";
          v14 = v17;
          v15 = 46;
        }

        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_44:
        v7 = 31;
        goto LABEL_45;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPHangupProc_cold_3();
        }
      }
    }

    v7 = 42;
    goto LABEL_45;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      SIPHangupProc_cold_5();
    }
  }

  FreeSipMsg(a1);
  return 0;
}

uint64_t SIPKeyExchangeProc(uint64_t a1)
{
  v181 = *MEMORY[0x1E69E9840];
  v167 = 0xFFFFFFFFLL;
  v168 = a1;
  v166 = 0xFFFFFFFFLL;
  v1 = **(a1 + 1000);
  v164 = 0;
  v165 = 0;
  v163 = 0;
  v161 = -1431655766;
  v162 = -1;
  v160 = -1431655766;
  v158 = 0;
  v159 = 0;
  v157 = 0;
  pthread_setname_np("com.apple.avconference.sip.keyexchangeproc");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v170 = v2;
      v171 = 2080;
      v172 = "SIPKeyExchangeProc";
      v173 = 1024;
      v174 = 625;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d()()()()() SIPKeyExchangeProc Thread start...", buf, 0x1Cu);
    }
  }

  v4 = CheckInHandleDebug();
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPKeyExchangeProc_cold_11();
      }
    }

    FreeSipMsg(v168);
    return 0;
  }

  v5 = v4;
  v6 = DLFindWithSipMsgAndLock(&v167, v168);
  if (v6 < 0)
  {
    v7 = 31;
    goto LABEL_204;
  }

  if (v168 && *(v168 + 33))
  {
    v7 = 25;
    goto LABEL_204;
  }

  DLSetDoingKeyExchange(v167, 1);
  DLGetConfIndex(v167, &v161);
  DLGetCallID(v167, &v160);
  DLUnlock();
  v150 = 0;
  v147 = 0;
  v148 = 0;
  v8 = 0;
  v9 = 0;
  v146 = 0;
  v151 = 0;
  bytesDeallocator = *MEMORY[0x1E695E498];
  v10 = v168;
  while (1)
  {
    if (*(v10 + 1) != 1)
    {
      v20 = DLPutMsg(v167, v10, 1);
      if ((v20 & 0x80000000) == 0)
      {
        v168 = 0;
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_53;
        }

        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *buf = 136315650;
        v170 = v21;
        v171 = 2080;
        v172 = "SIPKeyExchangeProc";
        v173 = 1024;
        v174 = 697;
        v17 = v22;
        v18 = "SIP [%s] %s:%d SKEProc: not request";
LABEL_28:
        v19 = 28;
LABEL_29:
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, v19);
LABEL_53:
        v14 = v9;
        goto LABEL_54;
      }

      v6 = v20;
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_201;
      }

      v94 = v8;
      v101 = VRTraceErrorLogLevelToCSTR();
      v102 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_200;
      }

      *buf = 136315650;
      v170 = v101;
      v171 = 2080;
      v172 = "SIPKeyExchangeProc";
      v173 = 1024;
      v174 = 692;
      v97 = "SIP [%s] %s:%d SIPDoSKE: terminated by remote party";
LABEL_198:
      v98 = v102;
      v99 = 28;
LABEL_199:
      _os_log_impl(&dword_1DB56E000, v98, OS_LOG_TYPE_DEFAULT, v97, buf, v99);
LABEL_200:
      v151 = 0;
      v8 = v94;
      goto LABEL_202;
    }

    if (*(v10 + 2) != 7)
    {
      v6 = DLPutMsg(v167, v10, 1);
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if ((v6 & 0x80000000) == 0)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            if (v168)
            {
              v26 = *(v168 + 2);
            }

            else
            {
              v26 = -1;
            }

            *buf = 136315906;
            v170 = v24;
            v171 = 2080;
            v172 = "SIPKeyExchangeProc";
            v173 = 1024;
            v174 = 709;
            v175 = 1024;
            *v176 = v26;
            _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKEProc: not message (%d)", buf, 0x22u);
          }
        }

        v168 = 0;
        goto LABEL_53;
      }

      if (ErrorLogLevelForModule < 7)
      {
        goto LABEL_201;
      }

      v94 = v8;
      v103 = VRTraceErrorLogLevelToCSTR();
      v102 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_200;
      }

      *buf = 136315650;
      v170 = v103;
      v171 = 2080;
      v172 = "SIPKeyExchangeProc";
      v173 = 1024;
      v174 = 705;
      v97 = "SIP [%s] %s:%d SIPDoSKE: terminated by remote party";
      goto LABEL_198;
    }

    if (!v10[66])
    {
      v27 = DLPutMsg(v167, v10, 1);
      if ((v27 & 0x80000000) == 0)
      {
        v168 = 0;
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_53;
        }

        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_53;
        }

        *buf = 136315650;
        v170 = v28;
        v171 = 2080;
        v172 = "SIPKeyExchangeProc";
        v173 = 1024;
        v174 = 723;
        v17 = v29;
        v18 = "SIP [%s] %s:%d SKEProc: message doesn't have SKESeq";
        goto LABEL_28;
      }

      v6 = v27;
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_201;
      }

      v94 = v8;
      v104 = VRTraceErrorLogLevelToCSTR();
      v102 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_200;
      }

      *buf = 136315650;
      v170 = v104;
      v171 = 2080;
      v172 = "SIPKeyExchangeProc";
      v173 = 1024;
      v174 = 718;
      v97 = "SIP [%s] %s:%d SIPDoSKE: terminated by remote party";
      goto LABEL_198;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v170 = v11;
        v171 = 2080;
        v172 = "SIPKeyExchangeProc";
        v173 = 1024;
        v174 = 727;
        v175 = 2048;
        *v176 = v168;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKEProc: got msg %p", buf, 0x26u);
      }
    }

    v13 = v168[66];
    v14 = *v13;
    if (*v13 < v9 + 1)
    {
      FreeSipMsg(v168);
      v168 = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v170 = v15;
          v171 = 2080;
          v172 = "SIPKeyExchangeProc";
          v173 = 1024;
          v174 = 734;
          v175 = 1024;
          *v176 = v14;
          v17 = v16;
          v18 = "SIP [%s] %s:%d SKEProc: SKESeq (%d) duplicate";
          v19 = 34;
          goto LABEL_29;
        }
      }

      goto LABEL_53;
    }

    if (*v13 > v9 + 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v109 = VRTraceErrorLogLevelToCSTR();
        v110 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v170 = v109;
          v171 = 2080;
          v172 = "SIPKeyExchangeProc";
          v173 = 1024;
          v174 = 739;
          v175 = 1024;
          *v176 = v14;
          _os_log_impl(&dword_1DB56E000, v110, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKEProc: SKESeq (%d) unexpected", buf, 0x22u);
        }
      }

      SIPReportSKError(v1, v5, v160, v161, 6, 741, "Out Of Sequence");
      v6 = -1073086451;
      goto LABEL_202;
    }

    if (v14 >= 6)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPKeyExchangeProc_cold_8();
        }
      }

      SIPReportSKError(v1, v5, v160, v161, 7, 748, "Out Of Bounds");
      v6 = -1073086451;
      goto LABEL_202;
    }

    ptr = v8;
    if (!v162 && !*(v168 + 140))
    {
      v151 = 6;
      (*(v5 + 32))(v1, *(v5 + 40), 6, v160, "SKEComplete", 0, &v164, &v161);
      v144 = 0;
      v158 = 0;
      goto LABEL_133;
    }

    v30 = *(v13 + 8);
    if (v30 < 0 || v150 >= 1 && v150 - 1 != v30)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v170 = v31;
          v171 = 2080;
          v172 = "SIPKeyExchangeProc";
          v173 = 1024;
          v174 = 770;
          v175 = 1024;
          *v176 = v14;
          *&v176[4] = 1024;
          *&v176[6] = v30;
          _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKEProc: SKESeq (%d,%d)", buf, 0x28u);
        }
      }

      v8 = ptr;
      goto LABEL_54;
    }

    v35 = *(v168 + 140);
    if (v35 >= 1)
    {
      if (v168[69])
      {
        break;
      }
    }

LABEL_75:
    if (!v30)
    {
      if (v158 > 0)
      {
        v150 = 0;
LABEL_132:
        v144 = 1;
        goto LABEL_133;
      }

      v8 = ptr;
      v43 = CFDataCreateWithBytesNoCopy(0, ptr, v148, bytesDeallocator);
      if (v163)
      {
        v44 = SecKeyExchangeUpdate();
        if (v44)
        {
          v123 = v44;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v124 = VRTraceErrorLogLevelToCSTR();
            v125 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v170 = v124;
              v171 = 2080;
              v172 = "SIPKeyExchangeProc";
              v173 = 1024;
              v174 = 863;
              v175 = 1024;
              *v176 = 863;
              *&v176[4] = 1024;
              *&v176[6] = v123;
              *v177 = 1024;
              *&v177[2] = v162;
              _os_log_error_impl(&dword_1DB56E000, v125, OS_LOG_TYPE_ERROR, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: SecKeyExchangeUpdate failed (%d, %d)", buf, 0x2Eu);
            }
          }

          CFRelease(v43);
          SIPReportSKError(v1, v5, v160, v161, 10, 866, "Update Failed");
          v6 = -1073086430;
          goto LABEL_202;
        }

        CFRelease(v43);
        v6 = SKE_FormMessageS(v165, &v159, &v158, &v158 + 1, &v157);
        if (v165)
        {
          CFRelease(v165);
        }

        if (v6 < 0)
        {
          v126 = v160;
          v127 = v161;
          v128 = "Out of Memory";
          v129 = v1;
          v130 = v5;
          v131 = 8;
          v132 = 876;
          goto LABEL_188;
        }
      }

      else
      {
        AsResponder = SecKeyExchangeNodeCreateAsResponder();
        CFRelease(v43);
        if (AsResponder)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              SIPKeyExchangeProc_cold_3();
            }
          }

          v151 = 42;
          goto LABEL_242;
        }

        v6 = SKE_FormMessageS(v165, &v159, &v158, &v158 + 1, &v157);
        CFRelease(v165);
        if (v6 < 0)
        {
          SIPReportSKError(v1, v5, v160, v161, 8, 849, "Out of Memory");
          v133 = 42;
          goto LABEL_286;
        }

        v151 = 6;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v46 = VRTraceErrorLogLevelToCSTR();
        v47 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v170 = v46;
          v171 = 2080;
          v172 = "SIPKeyExchangeProc";
          v173 = 1024;
          v174 = 882;
          v175 = 1024;
          *v176 = 0;
          *&v176[4] = 1024;
          *&v176[6] = v162;
          *v177 = 1024;
          *&v177[2] = v158;
          _os_log_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKEProc: u= %d,%d,[%d]", buf, 0x2Eu);
        }
      }

      v48 = v162;
      if (v162 == 2)
      {
        LODWORD(cf) = -1431655766;
        v155 = -1431655766;
        PeerAbortReason = SecKeyExchangeGetPeerAbortReason();
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v119 = VRTraceErrorLogLevelToCSTR();
          v120 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            v170 = v119;
            v171 = 2080;
            v172 = "SIPKeyExchangeProc";
            v173 = 1024;
            v174 = 889;
            v175 = 1024;
            *v176 = v155;
            *&v176[4] = 1024;
            *&v176[6] = cf;
            *v177 = 1024;
            *&v177[2] = PeerAbortReason;
            _os_log_impl(&dword_1DB56E000, v120, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKEProc: aborted by remote: %d (%d %d)", buf, 0x2Eu);
          }
        }

        TACloseHandle();
        v166 = 0xFFFFFFFFLL;
        if ((TACreateHandle(&v166, 3, *(v5 + 24), v168, v167, TUMsgCallback, v168[125]) & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              SIPKeyExchangeProc_cold_5();
            }
          }

          v6 = -1073086460;
          v134 = v160;
          v135 = v161;
          v136 = "TA Create Failed";
          v137 = v1;
          v138 = v5;
          v139 = 13;
          v140 = 900;
        }

        else
        {
          v6 = -1073086460;
          if ((TAStart(v166) & 0x80000000) == 0)
          {
            if ((SendTAStatus(v166, v168, 0xFFFFFFFFLL, 52, 0, 0, *(v5 + 8)) & 0x80000000) != 0)
            {
              SendTPStatus(*(v5 + 24), v168, 52, 0, 0, *(v5 + 8));
              TACancel();
              v168 = 0;
            }

            (*(v5 + 32))(v1, *(v5 + 40), 6, v160, "SKEComplete", 0, 0, &v161);
            v168 = 0;
            v6 = -1073086434;
LABEL_285:
            v8 = ptr;
            v133 = 52;
LABEL_286:
            v151 = v133;
LABEL_202:
            v7 = v151;
            if (!v8)
            {
              goto LABEL_204;
            }

LABEL_203:
            free(v8);
            goto LABEL_204;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              SIPKeyExchangeProc_cold_4();
            }
          }

          v168 = 0;
          v134 = v160;
          v135 = v161;
          v136 = "TA Start Failed";
          v137 = v1;
          v138 = v5;
          v139 = 14;
          v140 = 908;
        }

        SIPReportSKError(v137, v138, v134, v135, v139, v140, v136);
        goto LABEL_285;
      }

      if (v162 >= 2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v121 = VRTraceErrorLogLevelToCSTR();
          v122 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v170 = v121;
            v171 = 2080;
            v172 = "SIPKeyExchangeProc";
            v173 = 1024;
            v174 = 930;
            v175 = 1024;
            *v176 = v162;
            _os_log_impl(&dword_1DB56E000, v122, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKEProc: error while SKEUpdate (%d)", buf, 0x22u);
          }
        }

        v6 = -1073086460;
        v126 = v160;
        v127 = v161;
        v128 = "Update Error";
        v129 = v1;
        v130 = v5;
        v131 = 11;
        v132 = 932;
        goto LABEL_188;
      }

      if (!*(v5 + 48) || v146)
      {
        goto LABEL_129;
      }

      v154 = -1431655766;
      v155 = -1431655766;
      cf = 0;
      PeerCertStatus = SecKeyExchangeGetPeerCertStatus();
      if (PeerCertStatus)
      {
        v50 = PeerCertStatus;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v51 = VRTraceErrorLogLevelToCSTR();
          v52 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v170 = v51;
            v171 = 2080;
            v172 = "SIPKeyExchangeProc";
            v173 = 1024;
            v174 = 947;
            v175 = 1024;
            *v176 = v50;
            v53 = v52;
            v54 = "SIP [%s] %s:%d SKE peerCertStatus failed (%d)";
            goto LABEL_99;
          }
        }

LABEL_127:
        v146 = 0;
LABEL_128:
        v48 = v162;
LABEL_129:
        if (!v48)
        {
          v69 = SecKeyExchangeCopySharedSecret();
          if (v69)
          {
            v141 = v69;
            if (VRTraceGetErrorLogLevelForModule() >= 7 && (v142 = VRTraceErrorLogLevelToCSTR(), v143 = *MEMORY[0x1E6986650], os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
            {
              *buf = 136315906;
              v170 = v142;
              v171 = 2080;
              v172 = "SIPKeyExchangeProc";
              v173 = 1024;
              v174 = 1023;
              v175 = 1024;
              *v176 = v141;
              _os_log_impl(&dword_1DB56E000, v143, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKE CopySecret failed (%d)", buf, 0x22u);
              v6 = 0;
            }

            else
            {
              v6 = 0;
            }

            goto LABEL_242;
          }
        }

        v150 = 0;
        v148 = 0;
        goto LABEL_132;
      }

      if (v154)
      {
        if (v154 != 2)
        {
          if (v154 == 1)
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_127;
            }

            v56 = VRTraceErrorLogLevelToCSTR();
            v57 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_127;
            }

            *buf = 136315650;
            v170 = v56;
            v171 = 2080;
            v172 = "SIPKeyExchangeProc";
            v173 = 1024;
            v174 = 950;
            v53 = v57;
            v54 = "SIP [%s] %s:%d SKE peerCertStatus not yet valid";
          }

          else
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_127;
            }

            v67 = VRTraceErrorLogLevelToCSTR();
            v68 = *MEMORY[0x1E6986650];
            if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_127;
            }

            *buf = 136315650;
            v170 = v67;
            v171 = 2080;
            v172 = "SIPKeyExchangeProc";
            v173 = 1024;
            v174 = 957;
            v53 = v68;
            v54 = "SIP [%s] %s:%d SKE peerCertStatus not ready";
          }

          goto LABEL_125;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v58 = VRTraceErrorLogLevelToCSTR();
          v59 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v170 = v58;
            v171 = 2080;
            v172 = "SIPKeyExchangeProc";
            v173 = 1024;
            v174 = 953;
            v60 = v59;
            v61 = "SIP [%s] %s:%d SKE peerCertStatus no value";
            goto LABEL_113;
          }
        }

        goto LABEL_114;
      }

      if (v155 == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v62 = VRTraceErrorLogLevelToCSTR();
          v63 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v170 = v62;
            v171 = 2080;
            v172 = "SIPKeyExchangeProc";
            v173 = 1024;
            v174 = 960;
            v60 = v63;
            v61 = "SIP [%s] %s:%d SKE no cert";
LABEL_113:
            _os_log_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_DEFAULT, v61, buf, 0x1Cu);
          }
        }

LABEL_114:
        v64 = 0;
        cf = 0;
LABEL_115:
        v152 = 0;
        (*(v5 + 32))(v1, *(v5 + 40), 6, v160, "SKECheckRemoteCert", &v152, v64, &v161);
        if (cf)
        {
          CFRelease(cf);
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v65 = VRTraceErrorLogLevelToCSTR();
          v66 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v170 = v65;
            v171 = 2080;
            v172 = "SIPKeyExchangeProc";
            v173 = 1024;
            v174 = 986;
            v175 = 1024;
            *v176 = v152;
            _os_log_impl(&dword_1DB56E000, v66, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d ~_~ SKEProc isValid = %d", buf, 0x22u);
          }
        }

        if (!v152)
        {
          if (v162)
          {
            v84 = SecKeyExchangeAbortSession();
            if (v84)
            {
              v85 = v84;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v86 = VRTraceErrorLogLevelToCSTR();
                v87 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v170 = v86;
                  v171 = 2080;
                  v172 = "SIPKeyExchangeProc";
                  v173 = 1024;
                  v174 = 996;
                  v175 = 1024;
                  *v176 = v85;
                  _os_log_impl(&dword_1DB56E000, v87, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKE abort error %d", buf, 0x22u);
                }
              }
            }

            v6 = SKE_FormMessageS(v165, &v159, &v158, &v158 + 1, &v157);
            if (v165)
            {
              CFRelease(v165);
            }

            if (v6 < 0)
            {
              v111 = v160;
              v112 = v161;
              v113 = "Out of Memory";
              v114 = v1;
              v115 = v5;
              v116 = 8;
              v117 = 1002;
              goto LABEL_236;
            }
          }

          (*(v5 + 32))(v1, *(v5 + 40), 6, v160, "SKEComplete", 0, 0, &v161);
          v150 = 0;
          v148 = 0;
          v144 = 0;
          v151 = 52;
          v146 = 1;
          goto LABEL_133;
        }

        v146 = 1;
        goto LABEL_128;
      }

      v88 = SecKeyExchangeCopyPeerCert();
      if (v88)
      {
        v89 = v88;
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_127;
        }

        v90 = VRTraceErrorLogLevelToCSTR();
        v91 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_127;
        }

        *buf = 136315906;
        v170 = v90;
        v171 = 2080;
        v172 = "SIPKeyExchangeProc";
        v173 = 1024;
        v174 = 967;
        v175 = 1024;
        *v176 = v89;
        v53 = v91;
        v54 = "SIP [%s] %s:%d SKE CopyCert failed (%d)";
LABEL_99:
        v55 = 34;
      }

      else
      {
        if (v154 != 1)
        {
          v64 = cf;
          goto LABEL_115;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_127;
        }

        v92 = VRTraceErrorLogLevelToCSTR();
        v93 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_127;
        }

        *buf = 136315650;
        v170 = v92;
        v171 = 2080;
        v172 = "SIPKeyExchangeProc";
        v173 = 1024;
        v174 = 970;
        v53 = v93;
        v54 = "SIP [%s] %s:%d SKE CopyCert not yet valid";
LABEL_125:
        v55 = 28;
      }

      _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, v54, buf, v55);
      goto LABEL_127;
    }

    v158 = 0;
    v151 = 6;
    v144 = 1;
    v150 = v30;
LABEL_133:
    v70 = v158;
    v71 = SHIDWORD(v158);
    if (v158 - HIDWORD(v158) >= 900)
    {
      v72 = 900;
    }

    else
    {
      v72 = v158 - HIDWORD(v158);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v73 = VRTraceErrorLogLevelToCSTR();
      v74 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (v70 == v71)
        {
          v75 = -1;
          v76 = -1;
        }

        else
        {
          v75 = *v159;
          v76 = *(v159 + v72 - 1);
        }

        v77 = *(v5 + 48);
        *buf = 136316930;
        v170 = v73;
        v171 = 2080;
        v172 = "SIPKeyExchangeProc";
        v173 = 1024;
        v174 = 1038;
        v175 = 2048;
        *v176 = v14;
        *&v176[8] = 1024;
        *v177 = v72;
        *&v177[4] = 1024;
        *v178 = v75;
        *&v178[4] = 1024;
        *v179 = v76;
        *&v179[4] = 2048;
        v180 = v77;
        _os_log_impl(&dword_1DB56E000, v74, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKEProc (%lu) resp with (%d) [%02X..%02X] [ident = %p]", buf, 0x42u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v78 = VRTraceErrorLogLevelToCSTR();
      v79 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v170 = v78;
        v171 = 2080;
        v172 = "SIPKeyExchangeProc";
        v173 = 1024;
        v174 = 1041;
        _os_log_impl(&dword_1DB56E000, v79, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKEProc: closing TA", buf, 0x1Cu);
      }
    }

    TACloseHandle();
    v166 = 0xFFFFFFFFLL;
    if ((TACreateHandle(&v166, 3, *(v5 + 24), v168, v167, TUMsgCallback, v168[125]) & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPKeyExchangeProc_cold_7();
        }
      }

      v6 = -1073086460;
      v111 = v160;
      v112 = v161;
      v113 = "TA Create Failed";
      v114 = v1;
      v115 = v5;
      v116 = 13;
      v117 = 1049;
LABEL_236:
      SIPReportSKError(v114, v115, v111, v112, v116, v117, v113);
LABEL_242:
      v8 = ptr;
      goto LABEL_202;
    }

    if ((TAStart(v166) & 0x80000000) != 0)
    {
      v8 = ptr;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPKeyExchangeProc_cold_6();
        }
      }

      v6 = -1073086460;
      v168 = 0;
      v126 = v160;
      v127 = v161;
      v128 = "TA Start Failed";
      v129 = v1;
      v130 = v5;
      v131 = 14;
      v132 = 1057;
      goto LABEL_188;
    }

    v80 = (v70 + ~v71) / 900;
    if (v70 == v71)
    {
      v80 = 0;
    }

    v82 = v167;
    v81 = v168;
    *(v168[66] + 8) = v80;
    if (v70 == v71)
    {
      v83 = 0;
    }

    else
    {
      v83 = v159 + v71;
    }

    v6 = SendTAStatusGeneric(v166, v81, v82, v151, v83, v72, 1, 0, *(v5 + 8));
    if (v6 < 0)
    {
      SendTPStatus(*(v5 + 24), v168, v151, 0, 0, *(v5 + 8));
      TACancel();
      v168 = 0;
      goto LABEL_242;
    }

    if (v70 != v71)
    {
      HIDWORD(v158) = v72 + v71;
      if (v72 + v71 == v70)
      {
        v158 = 0;
      }
    }

    v168 = 0;
    v8 = ptr;
    if ((v144 & 1) == 0)
    {
      goto LABEL_202;
    }

LABEL_54:
    v156 = -1431655766;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v170 = v33;
        v171 = 2080;
        v172 = "SIPKeyExchangeProc";
        v173 = 1024;
        v174 = 657;
        v175 = 1024;
        *v176 = v14;
        _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKEProc TOP (%d)", buf, 0x22u);
      }
    }

    if (v168)
    {
      FreeSipMsg(v168);
      v168 = 0;
    }

    v6 = DLGetMsg(v167, &v168, 0x7530uLL, 7, 0, -1);
    if ((DLGetState(v167, &v156) & 0x80000000) != 0 || v156 != 3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v94 = v8;
        v95 = VRTraceErrorLogLevelToCSTR();
        v96 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v170 = v95;
          v171 = 2080;
          v172 = "SIPKeyExchangeProc";
          v173 = 1024;
          v174 = 669;
          v175 = 1024;
          *v176 = v156;
          v97 = "SIP [%s] %s:%d SIPDoSKE: terminated by remote party (%d)";
          v98 = v96;
          v99 = 34;
          goto LABEL_199;
        }

        goto LABEL_200;
      }

LABEL_201:
      v151 = 0;
      goto LABEL_202;
    }

    if (v6 < 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPKeyExchangeProc_cold_10();
        }
      }

      v126 = v160;
      v127 = v161;
      v128 = "Dialog Timeout";
      v129 = v1;
      v130 = v5;
      v131 = 1;
      v132 = 676;
      goto LABEL_188;
    }

    v10 = v168;
    v9 = v14;
    if (!v168)
    {
      v100 = VRTraceGetErrorLogLevelForModule();
      if (v100 >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPKeyExchangeProc_cold_9();
        }
      }

      v126 = v160;
      v127 = v161;
      v128 = "NULL Message";
      v129 = v1;
      v130 = v5;
      v131 = 2;
      v132 = 682;
LABEL_188:
      SIPReportSKError(v129, v130, v126, v127, v131, v132, v128);
      goto LABEL_202;
    }
  }

  if (ptr)
  {
    v36 = v35 + v148;
    if (v147 < v36)
    {
      v37 = malloc_type_realloc(ptr, v36 + 2000, 0x100004077774924uLL);
      if (!v37)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            SIPKeyExchangeProc_cold_1();
          }
        }

        SIPReportSKError(v1, v5, v160, v161, 8, 795, "Out of Memory");
        v6 = -1073086461;
        v8 = ptr;
        v7 = v151;
        goto LABEL_203;
      }

      ptr = v37;
    }

    goto LABEL_72;
  }

  v147 = v35 + 2000;
  ptr = malloc_type_malloc(v35 + 2000, 0x100004077774924uLL);
  if (ptr)
  {
LABEL_72:
    memcpy(&ptr[v148], v168[69], *(v168 + 140));
    v148 += *(v168 + 140);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(v168 + 140);
        v41 = v168[69];
        v42 = *v41;
        LODWORD(v41) = v41[v40 - 1];
        *buf = 136317186;
        v170 = v38;
        v171 = 2080;
        v172 = "SIPKeyExchangeProc";
        v173 = 1024;
        v174 = 807;
        v175 = 1024;
        *v176 = v14;
        *&v176[4] = 1024;
        *&v176[6] = v30;
        *v177 = 1024;
        *&v177[2] = v148;
        *v178 = 1024;
        *&v178[2] = v40;
        *v179 = 1024;
        *&v179[2] = v42;
        LOWORD(v180) = 1024;
        *(&v180 + 2) = v41;
        _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SKEProc: Got msg (%d;%d) into %d - (%d) [%02X...%02X]", buf, 0x40u);
      }
    }

    goto LABEL_75;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      SIPKeyExchangeProc_cold_2();
    }
  }

  SIPReportSKError(v1, v5, v160, v161, 8, 786, "Out of Memory");
  v6 = -1073086461;
  v7 = v151;
LABEL_204:
  if (v159)
  {
    free(v159);
  }

  if (v166 == 0xFFFFFFFFLL || ((1 << v7) & 0x10000000000041) != 0)
  {
    if (v168)
    {
      FreeSipMsg(v168);
    }
  }

  else
  {
    v6 = SendTAStatus(v166, v168, 0xFFFFFFFFLL, v7, 0, 0, *(v5 + 8));
    if (v6 < 0)
    {
      SendTPStatus(*(v5 + 24), v168, v7, 0, 0, *(v5 + 8));
      TACancel();
    }

    (*(v5 + 32))(v1, *(v5 + 40), 6, v160, "SKEComplete", 0, 0, &v161);
    v168 = 0;
  }

  if (v163)
  {
    SecKeyExchangeNodeRelease();
  }

  if (v164)
  {
    CFRelease(v164);
  }

  if (v6 < 0 && v166 != 0xFFFFFFFFLL)
  {
    TACancel();
  }

  DLSetDoingKeyExchange(v167, 0);
  TACloseHandle();
  CheckOutHandleDebug();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v105 = VRTraceErrorLogLevelToCSTR();
    v106 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      IntStatusCode = GetIntStatusCode(v7);
      *buf = 136315906;
      v170 = v105;
      v171 = 2080;
      v172 = "SIPKeyExchangeProc";
      v173 = 1024;
      v174 = 1131;
      v175 = 1024;
      *v176 = IntStatusCode;
      _os_log_impl(&dword_1DB56E000, v106, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPKeyExchangeProc Thread end(%d)...", buf, 0x22u);
    }
  }

  return 0;
}

uint64_t SIPMessageProc(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  *v22 = 0xFFFFFFFFLL;
  v23 = 0xFFFFFFFFLL;
  v2 = **(a1 + 1000);
  v21 = -1;
  pthread_setname_np("com.apple.avconference.sip.messageproc");
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v25 = v3;
      v26 = 2080;
      v27 = "SIPMessageProc";
      v28 = 1024;
      v29 = 1382;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPMessageProc Thread start...", buf, 0x1Cu);
    }
  }

  if (!*(a1 + 552))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 560);
        v11 = *(a1 + 552);
        *buf = 136316162;
        v25 = v8;
        v26 = 2080;
        v27 = "SIPMessageProc";
        v28 = 1024;
        v29 = 1385;
        v30 = 1024;
        v31 = v10;
        v32 = 2048;
        v33 = v11;
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, "SIP [%s] %s:%d SIP MESSAGE is missing a body - length = %d, body = %p", buf, 0x2Cu);
      }
    }

    goto LABEL_14;
  }

  v5 = CheckInHandleDebug();
  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SIPMessageProc_cold_3();
      }
    }

LABEL_14:
    FreeSipMsg(a1);
    return 0;
  }

  v6 = v5;
  if (*(a1 + 132))
  {
    v7 = 25;
  }

  else
  {
    if ((TACreateHandle(v22, 3, *(v5 + 24), a1, 0xFFFFFFFFLL, TUMsgCallback, *(a1 + 1000)) & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPMessageProc_cold_2();
        }
      }
    }

    else
    {
      if ((TAStart(*v22) & 0x80000000) == 0)
      {
        v12 = *(a1 + 272);
        if (v12)
        {
          v21 = *v12;
        }

        if ((DLFindWithSipMsgAndLock(&v23, a1) & 0x80000000) != 0)
        {
          v16 = (*(v6 + 32))(v2, *(v6 + 40), 6, 0, *(a1 + 552), 0, &v21, 0);
        }

        else
        {
          *buf = -1431655766;
          DLGetCallID(v23, buf);
          v13 = SIPClientDictionaryCInterface_CopyObjectForKey(*(v6 + 136), @"SIPMessageReceivedHandler", *buf);
          if (v13)
          {
            v14 = v13;
            v15 = CFStringCreateWithCString(*MEMORY[0x1E695E480], *(a1 + 552), 0x8000100u);
            (v14)[2](v14, v15, v21);
            if (v15)
            {
              CFRelease(v15);
            }

            _Block_release(v14);
            v16 = 0;
          }

          else
          {
            v16 = 1;
          }

          DLUnlock();
        }

        if (v16)
        {
          v7 = 19;
        }

        else
        {
          v7 = 6;
        }

        goto LABEL_37;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SIPMessageProc_cold_1();
        }
      }
    }

    v7 = 42;
  }

LABEL_37:
  if ((SendTAStatus(*v22, a1, 0xFFFFFFFFLL, v7, 0, 0, *(v6 + 8)) & 0x80000000) != 0)
  {
    SendTPStatus(*(v6 + 24), a1, v7, 0, 0, *(v6 + 8));
    TACancel();
  }

  if (*v22 == 0xFFFFFFFFLL)
  {
    FreeSipMsg(a1);
  }

  else
  {
    TACloseHandle();
  }

  CheckOutHandleDebug();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      IntStatusCode = GetIntStatusCode(v7);
      *buf = 136315906;
      v25 = v17;
      v26 = 2080;
      v27 = "SIPMessageProc";
      v28 = 1024;
      v29 = 1471;
      v30 = 1024;
      v31 = IntStatusCode;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d SIPMessageProc Thread end(%d)...", buf, 0x22u);
    }
  }

  return 0;
}

uint64_t SendTPStatus(uint64_t a1, uint64_t a2, int a3, char *__s, _OWORD *a5, int a6)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  Status = CreateStatus(v20, a2, a3, 0, __s, a6, 0);
  if ((Status & 0x80000000) != 0)
  {
    v18 = Status;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SendTPStatus_cold_1();
      }
    }
  }

  else
  {
    v11 = v20[0];
    if (__s && a5)
    {
      *(v20[0] + 61) = *a5;
    }

    v12 = *(a2 + 576);
    v13 = *(a2 + 592);
    v14 = *(a2 + 624);
    v11[38] = *(a2 + 608);
    v11[39] = v14;
    v11[36] = v12;
    v11[37] = v13;
    v15 = *(a2 + 640);
    v16 = *(a2 + 656);
    v17 = *(a2 + 672);
    *(v11 + 86) = *(a2 + 688);
    v11[41] = v16;
    v11[42] = v17;
    v11[40] = v15;
    v18 = TPSend(a1);
    FreeSipMsg(v20[0]);
  }

  return v18;
}

uint64_t SendTAStatus(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char *__s, _OWORD *a6, int a7)
{
  v26 = *MEMORY[0x1E69E9840];
  if (__s)
  {
    v14 = strlen(__s);
  }

  else
  {
    v14 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v19 = v15;
      v20 = 2080;
      v21 = "SendTAStatus";
      v22 = 1024;
      v23 = 140;
      v24 = 1024;
      v25 = v14;
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d |        |        |        |    --- iBodyLen %d", buf, 0x22u);
    }
  }

  return SendTAStatusGeneric(a1, a2, a3, a4, __s, v14, 0, a6, a7);
}

uint64_t SendTAStatusGeneric(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char *a5, int a6, int a7, _OWORD *a8, int a9)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v32 = 0xAAAAAAAAAAAAAAAALL;
    if (a3 == 0xFFFFFFFFLL)
    {
      GenericStatus = CreateGenericStatus(&v32, a2, a4, 0, a5, a6, a7, a9, 0);
      if ((GenericStatus & 0x80000000) == 0)
      {
LABEL_19:
        v24 = v32;
        if (a5)
        {
          if (a8)
          {
            *(v32 + 976) = *a8;
          }
        }

        v25 = *(a2 + 576);
        v26 = *(a2 + 592);
        v27 = *(a2 + 624);
        *(v24 + 608) = *(a2 + 608);
        *(v24 + 624) = v27;
        *(v24 + 576) = v25;
        *(v24 + 592) = v26;
        v28 = *(a2 + 640);
        v29 = *(a2 + 656);
        v30 = *(a2 + 672);
        *(v24 + 688) = *(a2 + 688);
        *(v24 + 656) = v29;
        *(v24 + 672) = v30;
        *(v24 + 640) = v28;
        return TASend(a1, v24);
      }
    }

    else
    {
      v31 = -1431655766;
      if ((DLGetState(a3, &v31) & 0x80000000) == 0)
      {
        if (v31 == 4)
        {
          return 2148139038;
        }

        if (!*(*(a2 + 480) + 156))
        {
          memset(__b, 170, 0x388uLL);
          if ((DLGetData(a3, __b) & 0x80000000) == 0)
          {
            strlcpy((*(a2 + 480) + 156), &__b[93] + 2, 0x40uLL);
          }
        }
      }

      GenericStatus = CreateGenericStatus(&v32, a2, a4, 0, a5, a6, a7, a9, 0);
      if ((GenericStatus & 0x80000000) == 0)
      {
        v20 = DLUpdate(a3, v32);
        if (v20 < 0)
        {
          v21 = v20;
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              __b[0] = 136316162;
              *&__b[1] = v22;
              LOWORD(__b[3]) = 2080;
              *(&__b[3] + 2) = "SendTAStatusGeneric";
              HIWORD(__b[5]) = 1024;
              __b[6] = 122;
              LOWORD(__b[7]) = 1024;
              *(&__b[7] + 2) = 122;
              HIWORD(__b[8]) = 1024;
              __b[9] = v21;
              _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c:%d: DLUpdate failed(%08X)", __b, 0x28u);
            }
          }
        }

        goto LABEL_19;
      }
    }

    v17 = GenericStatus;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        SendTAStatusGeneric_cold_1();
      }
    }

    return v17;
  }

  return TASend(a1, 0);
}

void SIPReportSKError(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  keys[4] = *MEMORY[0x1E69E9840];
  valuePtr = a5;
  v18 = a4;
  v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v13 = CFStringCreateWithFormat(0, 0, @"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SIP.c", a6);
  v14 = CFStringCreateWithFormat(0, 0, @"%s", "SKE Error");
  v15 = CFStringCreateWithFormat(0, 0, @"%s", a7);
  keys[0] = @"skeDetailCode";
  keys[1] = @"filePath";
  keys[2] = @"description";
  keys[3] = @"reason";
  values[0] = v12;
  values[1] = v13;
  values[2] = v14;
  values[3] = v15;
  v16 = CFDictionaryCreate(0, keys, values, 4, 0, 0);
  (*(a2 + 32))(a1, *(a2 + 40), 6, a3, "SKEReportError", 0, v16, &v18);
  CFRelease(v16);
  CFRelease(v15);
  CFRelease(v14);
  CFRelease(v13);
  CFRelease(v12);
}

uint64_t SKE_FormMessageS(const __CFData *a1, void **a2, _DWORD *a3, _DWORD *a4, int *a5)
{
  v9 = *a2;
  v10 = *a5;
  if (!a1)
  {
    v13 = 0;
LABEL_12:
    v15 = 0;
    *a2 = v9;
    *a3 = v13;
    *a4 = 0;
    *a5 = v10;
    return v15;
  }

  Length = CFDataGetLength(a1);
  v13 = Length;
  if (v9)
  {
    if (v10 >= Length)
    {
LABEL_11:
      BytePtr = CFDataGetBytePtr(a1);
      memcpy(v9, BytePtr, v13);
      goto LABEL_12;
    }

    v10 = Length + 2000;
    v14 = malloc_type_realloc(v9, Length + 2000, 0x100004077774924uLL);
    if (!v14)
    {
      v15 = 3221880835;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          SKE_FormMessageS_cold_1();
        }
      }

      return v15;
    }

LABEL_10:
    v9 = v14;
    goto LABEL_11;
  }

  v10 = Length + 2000;
  v14 = malloc_type_malloc(Length + 2000, 0x100004077774924uLL);
  if (v14)
  {
    goto LABEL_10;
  }

  v15 = 3221880835;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      SKE_FormMessageS_cold_2();
    }
  }

  return v15;
}

uint64_t VCMediaWriterUtil_GetMetaDataArrayWithIndentifier(uint64_t a1)
{
  v26[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69602B8];
  v3 = *MEMORY[0x1E6971F18];
  v22[0] = *MEMORY[0x1E6971F10];
  v1 = v22[0];
  v22[1] = v3;
  v4 = *MEMORY[0x1E6971EC8];
  v26[0] = v2;
  v26[1] = v4;
  v6 = *MEMORY[0x1E6973540];
  v7 = *MEMORY[0x1E6971F48];
  v23 = *MEMORY[0x1E6971F40];
  v5 = v23;
  v24 = v7;
  v8 = *MEMORY[0x1E69603D8];
  v26[2] = v6;
  v26[3] = v8;
  v25 = *MEMORY[0x1E6971F80];
  v9 = v25;
  v26[4] = a1;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v22 count:5];
  v20[0] = v1;
  v20[1] = v3;
  v21[0] = v2;
  v21[1] = v4;
  v11 = *MEMORY[0x1E6973548];
  v20[2] = v5;
  v20[3] = v7;
  v21[2] = v11;
  v21[3] = v8;
  v20[4] = v9;
  v21[4] = @"FaceTime";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];
  v13 = *MEMORY[0x1E6971F88];
  v18[0] = *MEMORY[0x1E6971EE8];
  v14 = *MEMORY[0x1E6971F90];
  v17[0] = v13;
  v17[1] = v14;
  v16[0] = v10;
  v16[1] = v12;
  v18[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
}

double VCMediaWriterUtil_CalculateImageSizeWithVisibleRect(char a1, int a2, int a3, double a4, double a5, double a6, double a7)
{
  v7 = a2;
  v8 = a6 * a3 / a7;
  if (a6 / a7 >= (a2 / a3))
  {
    v8 = a2;
  }

  if ((a1 & 2) != 0)
  {
    v7 = v8;
  }

  return (v7 & 0xFFFFFFFC);
}

uint64_t VCMediaWriterUtil_NewWriter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = [VCFigAssetWriter alloc];

  return [(VCFigAssetWriter *)v8 initWithOutputURL:a1 transactionID:a2 videoCodec:a3 keyFrameIntervalDuration:a4];
}

uint64_t VCMediaWriterUtil_SetUpWriterWithCaptureFormat(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v12 = VCMediaWriterUtil_CalculateImageSizeWithVisibleRect(a2, a3, a4, a6, a7, a8, a9);

  return [a1 setupLivePhotoStillImageCameraStatusBit:a2 resize:a5 imageSize:v12];
}

BOOL VCMediaWriterUtil_IsMediaExpected(int a1, int a2)
{
  v2 = (a1 - 1) < 2;
  v3 = a1 == 1;
  if (a2 != 3)
  {
    v3 = 0;
  }

  if (a2 != 4)
  {
    v2 = v3;
  }

  if ((a2 - 1) >= 2)
  {
    return v2;
  }

  else
  {
    return (a1 - 1) < 4;
  }
}

uint64_t VCMediaNegotiationBlobVideoSettingsReadFrom(_WORD *a1, void *a2)
{
  v84[2] = *MEMORY[0x1E69E9840];
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
        LOBYTE(v84[0]) = 0;
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

        v7 |= (v84[0] & 0x7F) << v5;
        if ((v84[0] & 0x80) == 0)
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

      switch((v11 >> 3))
      {
        case 1u:
          v12 = 0;
          v13 = 0;
          v14 = 0;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v15 = [a2 position] + 1;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v14 |= (v84[0] & 0x7F) << v12;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v12 += 7;
            v10 = v13++ >= 9;
            if (v10)
            {
              v17 = 0;
LABEL_161:
              v82 = 12;
              goto LABEL_179;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v14;
          }

          goto LABEL_161;
        case 2u:
          v51 = 0;
          v52 = 0;
          v53 = 0;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v54 = [a2 position] + 1;
            if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v53 |= (v84[0] & 0x7F) << v51;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v10 = v52++ >= 9;
            if (v10)
            {
              LOBYTE(v23) = 0;
              goto LABEL_163;
            }
          }

          v23 = (v53 != 0) & ~[a2 hasError];
LABEL_163:
          v81 = 40;
          goto LABEL_174;
        case 3u:
          v39 = objc_alloc_init(VCMediaNegotiationBlobVideoPayloadSettings);
          [a1 addVideoPayloadCollections:v39];

          v84[0] = 0xAAAAAAAAAAAAAAAALL;
          v84[1] = 0xAAAAAAAAAAAAAAAALL;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          result = VCMediaNegotiationBlobVideoPayloadSettingsReadFrom(&v39->super.super.isa, a2);
          if (!result)
          {
            return result;
          }

          PBReaderRecallMark();
          goto LABEL_180;
        case 4u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          a1[24] |= 2u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v84[0] & 0x7F) << v41;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v10 = v42++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_153;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v43;
          }

LABEL_153:
          v82 = 6;
          goto LABEL_179;
        case 5u:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          a1[24] |= 1u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v84[0] & 0x7F) << v24;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v10 = v25++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_145;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v26;
          }

LABEL_145:
          v82 = 4;
          goto LABEL_179;
        case 6u:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          a1[24] |= 0x10u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v59 = [a2 position] + 1;
            if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v58 |= (v84[0] & 0x7F) << v56;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v10 = v57++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_167;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v58;
          }

LABEL_167:
          v82 = 14;
          goto LABEL_179;
        case 7u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          a1[24] |= 0x200u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v69 = [a2 position] + 1;
            if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v68 |= (v84[0] & 0x7F) << v66;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v10 = v67++ >= 9;
            if (v10)
            {
              LOBYTE(v23) = 0;
              goto LABEL_171;
            }
          }

          v23 = (v68 != 0) & ~[a2 hasError];
LABEL_171:
          v81 = 45;
          goto LABEL_174;
        case 8u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          a1[24] |= 8u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v84[0] & 0x7F) << v46;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v10 = v47++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_157;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v48;
          }

LABEL_157:
          v82 = 10;
          goto LABEL_179;
        case 9u:
          v76 = 0;
          v77 = 0;
          v78 = 0;
          a1[24] |= 4u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v79 = [a2 position] + 1;
            if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v78 |= (v84[0] & 0x7F) << v76;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v10 = v77++ >= 9;
            if (v10)
            {
              v17 = 0;
              goto LABEL_178;
            }
          }

          if ([a2 hasError])
          {
            v17 = 0;
          }

          else
          {
            v17 = v78;
          }

LABEL_178:
          v82 = 8;
LABEL_179:
          *&a1[v82] = v17;
          goto LABEL_180;
        case 0xAu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          a1[24] |= 0x80u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v84[0] & 0x7F) << v34;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v10 = v35++ >= 9;
            if (v10)
            {
              LOBYTE(v23) = 0;
              goto LABEL_149;
            }
          }

          v23 = (v36 != 0) & ~[a2 hasError];
LABEL_149:
          v81 = 43;
          goto LABEL_174;
        case 0xBu:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          a1[24] |= 0x400u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v74 = [a2 position] + 1;
            if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v73 |= (v84[0] & 0x7F) << v71;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            v10 = v72++ >= 9;
            if (v10)
            {
              LOBYTE(v23) = 0;
              goto LABEL_173;
            }
          }

          v23 = (v73 != 0) & ~[a2 hasError];
LABEL_173:
          v81 = 46;
          goto LABEL_174;
        case 0xCu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          a1[24] |= 0x20u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
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

            v20 |= (v84[0] & 0x7F) << v18;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v10 = v19++ >= 9;
            if (v10)
            {
              LOBYTE(v23) = 0;
              goto LABEL_141;
            }
          }

          v23 = (v20 != 0) & ~[a2 hasError];
LABEL_141:
          v81 = 41;
          goto LABEL_174;
        case 0xDu:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          a1[24] |= 0x100u;
          while (1)
          {
            LOBYTE(v84[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v84[0] & 0x7F) << v29;
            if ((v84[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v10 = v30++ >= 9;
            if (v10)
            {
              LOBYTE(v23) = 0;
              goto LABEL_147;
            }
          }

          v23 = (v31 != 0) & ~[a2 hasError];
LABEL_147:
          v81 = 44;
          goto LABEL_174;
        case 0xEu:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          a1[24] |= 0x40u;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_180;
          }

          return 0;
      }

      while (1)
      {
        LOBYTE(v84[0]) = 0;
        v64 = [a2 position] + 1;
        if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v63 |= (v84[0] & 0x7F) << v61;
        if ((v84[0] & 0x80) == 0)
        {
          break;
        }

        v61 += 7;
        v10 = v62++ >= 9;
        if (v10)
        {
          LOBYTE(v23) = 0;
          goto LABEL_169;
        }
      }

      v23 = (v63 != 0) & ~[a2 hasError];
LABEL_169:
      v81 = 42;
LABEL_174:
      *(a1 + v81) = v23;
LABEL_180:
      v83 = [a2 position];
    }

    while (v83 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _VCStreamInputVideo_SampleBufferHandler(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  VCStreamInput_UpdateReportingStats(a1, a2);
  memset(&v12, 170, sizeof(v12));
  CMSampleBufferGetPresentationTimeStamp(&v12, a2);
  v10[0] = 0x300000000;
  v10[1] = 0;
  v11 = 0;
  v4 = CMGetAttachment(a2, @"foveationRegionsOfInterest", 0);
  if (v4)
  {
    v5 = v4;
    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    CVBufferSetAttachment(ImageBuffer, @"EncodingROIArray", v5, kCVAttachmentMode_ShouldPropagate);
  }

  v7 = *(a1 + 296);
  v9 = v12;
  return VCVideoCapture_DistributeVideoFrame(v7, a2, &v9.value, v10);
}

uint64_t VCCaptionsEncoder_Encode(uint64_t a1, void *a2, _BYTE *a3, void *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = 4294967294;
  if (!a1)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  v6 = a4;
  if (!a4)
  {
    return v4;
  }

  v48 = 0;
  v49 = 0;
  v9 = *a4;
  v45 = a3;
  v46 = v9;
  v44 = a2;
  v10 = *(a1 + 16);
  BYTE4(v48) = v10;
  v11 = [a2 isFinal];
  BYTE5(v48) = v11;
  if (v11)
  {
    *(a1 + 16) = (*(a1 + 16) + 1) & 0xF;
  }

  if (!v9)
  {
    return 4294967293;
  }

  v12 = 16 * v10;
  v43 = a1;
  v13 = (16 * v10) | 8;
  if (v11)
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  if ([a2 isLocal])
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v16 = v43;
  *a3 = v15 | v14;
  v47 = 1;
  v17 = [a2 formattedText];
  if (![v17 length])
  {
LABEL_52:
    VCCaptionsEncoder_Encode_cold_7(v16, a2, &v47, v6);
    return 0;
  }

  if (![v17 length])
  {
LABEL_42:
    v28 = v48;
LABEL_44:
    LODWORD(v49) = 0;
    v29 = [v44 formattedText];
    if (v28)
    {
      v30 = v29;
      v42 = v6;
      v31 = 0;
      v33 = v46;
      v32 = v47;
      v34 = v45;
      v35 = v45 + 1;
      while (1)
      {
        v36 = *v35;
        if ((v36 & 2) != 0)
        {
          v37 = [objc_msgSend(v30 substringWithRange:{v31, (v36 >> 3) + 1), "UTF8String"}];
          if (!v37)
          {
            return 4294967292;
          }

          v38 = v37;
          v39 = strlen(v37);
          v40 = v32 + v39;
          if (v33 < v32 + v39)
          {
            return 4294967293;
          }

          memcpy(&v34[v32], v38, v39);
          LODWORD(v36) = *v35;
          v32 = v40;
        }

        v31 += (v36 >> 3) + 1;
        ++v35;
        if (!--v28)
        {
          v47 = v32;
          v6 = v42;
          v16 = v43;
          goto LABEL_52;
        }
      }
    }

    goto LABEL_52;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v53 = -21846;
    v51 = -86;
    if ((_VCCaptionsEncoder_GetValue(a2, v18, &v53, &v51) & 1) == 0)
    {
      VCCaptionsEncoder_Encode_cold_1(v18, &v54);
      goto LABEL_65;
    }

    v52 = -21846;
    v50 = -86;
    if (v18)
    {
      if (BYTE4(v49) != v51)
      {
        started = _VCCaptionsEncoder_StartNewSegmentHeader(&v44, v51, (v19 & 1) == 0);
        if (started)
        {
          VCCaptionsEncoder_Encode_cold_2(started, &v54);
          goto LABEL_65;
        }
      }

      if ((v19 & 1) == 0 || _VCCaptionsEncoder_GetRefValue(v43, v18, &v52, &v50) && v53 == v52)
      {
        v21 = v49;
        if (v49 != 32)
        {
LABEL_34:
          v24 = v21 + 1;
          LODWORD(v49) = v21 + 1;
          goto LABEL_35;
        }

        v22 = _VCCaptionsEncoder_StartNewSegmentHeader(&v44, v51, (v19 & 1) == 0);
        if (!v22)
        {
          v21 = v49;
          goto LABEL_34;
        }

        VCCaptionsEncoder_Encode_cold_4(v22, &v54);
LABEL_65:
        v4 = v54;
LABEL_59:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VCCaptionsEncoder_Encode_cold_5();
          }
        }

        return v4;
      }

      v25 = v51;
      if (v49)
      {
        v26 = v47 + 1;
        if (v46 < v47 + 1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              VCCaptionsEncoder_Encode_cold_3();
            }
          }

          v4 = 4294967293;
          goto LABEL_59;
        }

        v45[v47] = (BYTE4(v49) | (8 * v49) | (2 * BYTE5(v49)) | (4 * BYTE6(v49))) - 8;
        v47 = v26;
        LODWORD(v48) = v48 + 1;
      }

      v19 = 0;
      v21 = 0;
      BYTE4(v49) = v25;
      BYTE5(v49) = 1;
      goto LABEL_34;
    }

    RefValue = _VCCaptionsEncoder_GetRefValue(v43, 0, &v52, &v50);
    if (v53 == v52)
    {
      v19 = RefValue;
    }

    else
    {
      v19 = 0;
    }

    BYTE4(v49) = v51;
    v24 = 1;
    LODWORD(v49) = 1;
    BYTE5(v49) = v19 ^ 1;
LABEL_35:
    v18 = (v18 + 1);
  }

  while ([v17 length] > v18);
  if (!v24)
  {
    goto LABEL_42;
  }

  v27 = v47 + 1;
  if (v46 >= v47 + 1)
  {
    v45[v47] = (BYTE4(v49) | (8 * v24) | (2 * BYTE5(v49))) - 4;
    v47 = v27;
    v28 = v48 + 1;
    goto LABEL_44;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VCCaptionsEncoder_Encode_cold_6();
    }
  }

  return 4294967293;
}

uint64_t _VCCaptionsEncoder_StartNewSegmentHeader(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = *(a1 + 24);
  if (*(a1 + 16) >= (v4 + 1))
  {
    *(*(a1 + 8) + v4) = (*(a1 + 44) | (8 * v3) | (2 * *(a1 + 45)) | (4 * *(a1 + 46))) - 8;
    ++*(a1 + 24);
    ++*(a1 + 32);
LABEL_5:
    v5 = 0;
    *(a1 + 44) = a2;
    *(a1 + 40) = 0;
    *(a1 + 45) = a3;
    return v5;
  }

  return 4294967293;
}

uint64_t VCCaptionsEncoder_Create(void *a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040EA45A630uLL);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  result = 0;
  v3[1] = v4;
  *(v3 + 17) = 0;
  *a1 = v3;
  return result;
}

void VCCaptionsEncoder_Destroy(id **a1)
{
  if (a1)
  {
    v1 = *a1;
    if (*a1)
    {

      *v1 = 0;
      [v1[1] removeAllObjects];

      free(v1);
    }
  }
}

uint64_t _VCCaptionsEncoder_GetValue(void *a1, unsigned int a2, _WORD *a3, BOOL *a4)
{
  result = 0;
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        *a3 = 0;
        *a4 = 0;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [a1 segments];
        result = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
        if (result)
        {
          v10 = result;
          v11 = *v19;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v18 + 1) + 8 * i);
              v14 = [v13 range];
              if (v14 + v15 > a2)
              {
                if (a2 >= v14)
                {
                  *a3 = [objc_msgSend(v13 "text")];
                  v16 = [v13 confidence] > 0x32;
                }

                else
                {
                  *a3 = [objc_msgSend(a1 "formattedText")];
                  v16 = 1;
                }

                *a4 = v16;
                return 1;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v18 objects:v17 count:16];
            result = 0;
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _VCCaptionsEncoder_GetRefValue(uint64_t a1, unsigned int a2, __int16 *a3, char *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 8) count];
  if (result)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [*(a1 + 8) reverseObjectEnumerator];
    v9 = [obj countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v21;
      while (2)
      {
        v13 = 0;
        v15 = v11 + v10;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v20 + 1) + 8 * v13);
          if ([v14 isFinal])
          {
            return 0;
          }

          v18 = -21846;
          v17 = -86;
          if (!_VCCaptionsEncoder_GetValue(v14, a2, &v18, &v17))
          {
            return 0;
          }

          if (v11)
          {
            if (v18 != *a3 || v17 != *a4)
            {
              return 0;
            }
          }

          else
          {
            *a3 = v18;
            *a4 = v17;
          }

          LOBYTE(v11) = v11 + 1;
          if (*(a1 + 17) < v11)
          {
            return *(a1 + 17) < v11;
          }

          ++v13;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v20 objects:v19 count:16];
        v11 = v15;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    return *(a1 + 17) < v11;
  }

  return result;
}

void *videoRulesForFormatList(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = (a1 + 8);
    v6 = 8;
    v7 = MEMORY[0x1E6986650];
    do
    {
      v8 = [VCVideoRule alloc];
      *&v9 = *v5;
      v10 = [(VCVideoRule *)v8 initWithFrameWidth:*(v5 - 2) frameHeight:*(v5 - 1) frameRate:a2 payload:v9];
      if (v10)
      {
        v11 = v10;
        [v4 addObject:v10];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v16 = v12;
          v17 = 2080;
          v18 = "videoRulesForFormatList";
          v19 = 1024;
          v20 = 68;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create video rule for Airplay screen!", buf, 0x1Cu);
        }
      }

      v5 += 3;
      --v6;
    }

    while (v6);
  }

  return v4;
}

void OUTLINED_FUNCTION_2_16(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x1Cu);
}

const char *_VRDump_VideoReceiverDumpEventType_EventNameForType(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_1E85F6890[a1];
  }
}

FILE **VRDump_OpenDumpFile(const char *a1, const char *a2, int a3, char a4, int a5)
{
  v93 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat[0] = 0;
  if (a5)
  {
    if (a5 == 1)
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableVRDumpForGFT", @"com.apple.VideoConference", keyExistsAndHasValidFormat);
      v10 = 0;
      if (!keyExistsAndHasValidFormat[0] || !AppBooleanValue)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_17;
  }

  v11 = CFPreferencesGetAppBooleanValue(@"enableVRDump", @"com.apple.VideoConference", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_11;
  }

LABEL_12:
  v92 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v90 = v13;
  v91 = v13;
  v88 = v13;
  v89 = v13;
  v87 = v13;
  v85 = v13;
  v86 = v13;
  v83 = v13;
  v84 = v13;
  *&keyExistsAndHasValidFormat[16] = v13;
  *&keyExistsAndHasValidFormat[32] = v13;
  *keyExistsAndHasValidFormat = v13;
  snprintf(keyExistsAndHasValidFormat, 0xC8uLL, "participant-%s-groupid_%s-VideoReceiver", a1, a2);
  v10 = VRLogfileAlloc(0, keyExistsAndHasValidFormat, "VideoReceiver", ".vrdump", "com.apple.VideoConference.VideoReceiverDump", 44);
  if (v10)
  {
    v14 = malloc_type_calloc(1uLL, 0x14uLL, 0xF73040DBuLL);
    if (v14)
    {
      v21 = v14;
      VRLogfile_CreateTimeAndDateString(v14, 20);
      VRLogfilePrintSync(v10, "File Create Time = %s\n", v22, v23, v24, v25, v26, v27, v21);
      free(v21);
    }

    else
    {
      VRLogfilePrintSync(v10, "File Create Time = unknown", v15, v16, v17, v18, v19, v20, v77);
    }

    v81 = 0;
    *__str = 0;
    v79 = 39600;
    tm_hour = localtime(&v79)->tm_hour;
    v29 = gmtime(&v79)->tm_hour;
    __y = 0.0;
    v30 = modf(tm_hour - v29, &__y);
    snprintf(__str, 6uLL, "%03.0f%02.0f\n", __y, (v30 * -60.0));
    VRLogfilePrintSync(v10, "Timezone Offset = %s\n", v31, v32, v33, v34, v35, v36, __str);
    VRLogfilePrintSync(v10, "File Version = %s\n", v37, v38, v39, v40, v41, v42, "1.0");
    VRLogfilePrintSync(v10, "ParticipantID = %s\n", v43, v44, v45, v46, v47, v48, a1);
    VRLogfilePrintSync(v10, "StreamGroupID = %s\n", v49, v50, v51, v52, v53, v54, a2);
    VRLogfilePrintSync(v10, "SampleRate = %d\n", v55, v56, v57, v58, v59, v60, a3);
    VRLogfilePrintSync(v10, "Initial VPB Instance = %p\n\n", v61, v62, v63, v64, v65, v66, a4);
    VRLogfilePrintSync(v10, "%s\n", v67, v68, v69, v70, v71, v72, "ColumnType,SystemTime,ArrivalTime,SeqNum,FrameTimestamp,Length,IDR,activeStream,VPBFQSize,VPBIQSize,FECProtected,FECLevel,FECRecovered,RTXRecovered,PacketLate,PacketOutOfOrder,PacketRetransmitted,Width,Height,ExpectedPackets,ReceivedPackets,MissingPackets,ParityExpected,ParityReceived,ParityMissing,TemporalLayerID,SubFrameId,AssemblyStatus,ErrorReason,PlayoutTime");
  }

LABEL_17:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v73 = VRTraceErrorLogLevelToCSTR();
    v74 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v75 = "Enabled";
      *keyExistsAndHasValidFormat = 136316674;
      *&keyExistsAndHasValidFormat[4] = v73;
      *&keyExistsAndHasValidFormat[12] = 2080;
      *&keyExistsAndHasValidFormat[14] = "VRDump_OpenDumpFile";
      if (!v10)
      {
        v75 = "Disabled";
      }

      *&keyExistsAndHasValidFormat[22] = 1024;
      *&keyExistsAndHasValidFormat[24] = 134;
      *&keyExistsAndHasValidFormat[28] = 2080;
      *&keyExistsAndHasValidFormat[30] = v75;
      *&keyExistsAndHasValidFormat[38] = 2080;
      *&keyExistsAndHasValidFormat[40] = a1;
      LOWORD(v83) = 2080;
      *(&v83 + 2) = a2;
      WORD5(v83) = 1024;
      HIDWORD(v83) = a3;
      _os_log_impl(&dword_1DB56E000, v74, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VRDump=%s - ParticipantID=%s, StreamGroupID=%s, sampleRate=%d", keyExistsAndHasValidFormat, 0x40u);
    }
  }

  return v10;
}

uint64_t *VRDump_CloseDumpFile(uint64_t *result)
{
  if (result)
  {
    VRLogfileFree(result);

    return VRLogfileRemoveOldFilesInDefaultLogDumpPath();
  }

  return result;
}

FILE **VRDump_AddPacket(FILE **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    if (a2)
    {
      return _VRDump_WriteEventLineWithTimestamp(result, "AddPacket", "%.4f,%d,%.3f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,,,,,,,,,,,,,", *(a2 + 64), a5, a6, a7, a8, *a2);
    }
  }

  return result;
}

FILE **_VRDump_WriteEventLineWithTimestamp(FILE **a1, char a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v23 = *MEMORY[0x1E69E9840];
  v22 = -1431655766;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  VRLogfileGetTimestamp(&v21, 0xCu);
  result = vsnprintf(__b, 0x400uLL, a3, &a9);
  if ((result & 0x80000000) == 0)
  {
    if (result >= 0x3FF)
    {
      v19 = 1023;
    }

    else
    {
      v19 = result;
    }

    __b[v19] = 0;
    if (*a3)
    {
      return VRLogfilePrintSync(a1, "%s,%s,%s\n", v13, v14, v15, v16, v17, v18, a2);
    }

    else
    {
      return VRLogfilePrintSync(a1, "%s,%s\n", v13, v14, v15, v16, v17, v18, a2);
    }
  }

  return result;
}

FILE **VRDump_AssembleFrame(FILE **result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      return _VRDump_WriteEventLineWithTimestamp(result, "AssembleFrame", "%f,%d,%.3f,%d,%d,%d,%d,%d,,,,,,,,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%f", *(a2 + 64), *(a2 + 68), *(a2 + 72), *(a2 + 76), *(a2 + 80), *a2);
    }
  }

  return result;
}

FILE **VRDump_SwitchMode(FILE **result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = "GFT";
    if (a2 == 1)
    {
      v8 = "OneToOne";
    }

    return _VRDump_WriteEventLineWithTimestamp(result, "ModeSwitch", "%s", a4, a5, a6, a7, a8, v8);
  }

  return result;
}

FILE **VRDump_AddEvent(FILE **result, unsigned int a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    v10 = result;
    if (a3 && a3[1])
    {
      v11 = _VRDump_VideoReceiverDumpEventType_EventNameForType(a2);
      return _VRDump_WriteEventLineWithTimestamp(v10, v11, "%d,%dx%d", v12, v13, v14, v15, v16, *a3);
    }

    else
    {
      v17 = _VRDump_VideoReceiverDumpEventType_EventNameForType(a2);

      return _VRDump_WriteEventLineWithTimestamp(v10, v17, "", v18, v19, v20, v21, v22, a9);
    }
  }

  return result;
}

void _VCDisplayLinkRunLoopObserverCallBack(int a1, uint64_t a2, dispatch_semaphore_t dsema)
{
  if (a2 == 1)
  {

    dispatch_semaphore_signal(dsema);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      _VCDisplayLinkRunLoopObserverCallBack_cold_1();
    }
  }
}

uint64_t VCStreamOutput_EnqueueAttributes(uint64_t a1, unint64_t a2)
{
  if (a1 | a2)
  {
    VCObject_Lock(a1);
    v5 = *(a1 + 200);
    *(a1 + 200) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if ((*(a1 + 224) & 1) == 0 && *(a1 + 225) == 1 && VCRemoteImageQueue_EnqueueAttributes(*(a1 + 176), a2))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VCStreamOutput_EnqueueAttributes_cold_1();
        }
      }

      v2 = 0;
    }

    else
    {
      v2 = 1;
    }

    VCObject_Unlock(a1);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VCStreamOutput_EnqueueAttributes_cold_2();
      }
    }

    return 0;
  }

  return v2;
}

uint64_t VCStreamOutput_EnqueueSampleBuffer(uint64_t a1, CMSampleBufferRef sbuf)
{
  v2 = 0;
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && sbuf)
  {
    memset(&v13, 170, sizeof(v13));
    CMSampleBufferGetPresentationTimeStamp(&v13, sbuf);
    time = v13;
    CMTimeGetSeconds(&time);
    kdebug_trace();
    VCObject_Lock(a1);
    if (*(a1 + 224))
    {
      v5 = *(a1 + 200);
      if (v5)
      {
        CMSetAttachments(sbuf, v5, 1u);
      }

      CFRetain(sbuf);
      v6 = *(a1 + 216);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __VCStreamOutput_EnqueueSampleBuffer_block_invoke;
      v12[3] = &unk_1E85F40E0;
      v12[4] = a1;
      v12[5] = sbuf;
      p_time = v12;
    }

    else
    {
      if (*(a1 + 225) == 1)
      {
        if (VCRemoteImageQueue_EnqueueFrame(*(a1 + 176), sbuf))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              VCStreamOutput_EnqueueSampleBuffer_cold_2();
            }
          }

          v2 = 0;
          goto LABEL_19;
        }

LABEL_18:
        v2 = 1;
LABEL_19:
        VCObject_Unlock(a1);
        return v2;
      }

      v8 = *(a1 + 200);
      if (v8)
      {
        CMSetAttachments(sbuf, v8, 1u);
      }

      v9 = VCStreamInputUtil_EncodeSampleBuffer(sbuf);
      if (!v9)
      {
        VCStreamOutput_EnqueueSampleBuffer_cold_1();
        goto LABEL_18;
      }

      v10 = *(a1 + 184);
      time.value = MEMORY[0x1E69E9820];
      *&time.timescale = 3221225472;
      time.epoch = ___VCStreamOutput_SendSampleBufferToXPCClient_block_invoke;
      v15 = &unk_1E85F37F0;
      v16 = v9;
      v17 = a1;
      p_time = &time;
      v6 = v10;
    }

    dispatch_async(v6, p_time);
    goto LABEL_18;
  }

  return v2;
}

uint64_t _VCSignalDecoderClassRegister(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t VCSignalDecoder_Create(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    VCSignalDecoder_Create_cold_7();
    return v15;
  }

  if (!*a2)
  {
    VCSignalDecoder_Create_cold_6();
    return v15;
  }

  if (!*(a2 + 8))
  {
    VCSignalDecoder_Create_cold_5();
    return v15;
  }

  if (!a3)
  {
    VCSignalDecoder_Create_cold_4();
    return v15;
  }

  if (_MergedGlobals_5 != -1)
  {
    VCSignalDecoder_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    VCSignalDecoder_Create_cold_3();
    return v15;
  }

  v6 = Instance;
  v7 = *a2;
  if (*a2)
  {
    v7 = CFRetain(v7);
  }

  *(v6 + 16) = v7;
  if (*(a2 + 8))
  {
    v8 = CFRetain(*(a2 + 8));
  }

  else
  {
    v8 = 0;
  }

  *(v6 + 24) = v8;
  *(v6 + 40) = *(a2 + 16);
  v9 = MSCDecoderSessionInit();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v9)
  {
    VCSignalDecoder_Create_cold_2(ErrorLogLevelForModule > 6, v9, v6);
    return 2152529924;
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = FourccToCStr(*(v6 + 40));
        v15 = 136316162;
        v16 = v11;
        v17 = 2080;
        v18 = "VCSignalDecoder_Create";
        v19 = 1024;
        v20 = 91;
        v21 = 2048;
        v22 = v6;
        v23 = 2080;
        v24 = v13;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SignalDecoder[%p] created with codecType=%s", &v15, 0x30u);
      }
    }

    result = 0;
    *a3 = v6;
  }

  return result;
}

double _VCSignalDecoder_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void _VCSignalDecoder_Finalize(void *a1)
{
  if (a1)
  {
    if (a1[4])
    {
      MSCDecoderSessionDestroy();
    }

    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
      a1[2] = 0;
    }

    v3 = a1[3];
    if (v3)
    {
      CFRelease(v3);
      a1[3] = 0;
    }
  }
}

uint64_t ParseUnsupported(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136316162;
      v7 = v3;
      v8 = 2080;
      v9 = "ParseUnsupported";
      v10 = 1024;
      v11 = 162;
      v12 = 1024;
      v13 = 162;
      v14 = 2080;
      v15 = a2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipHdr.c:%d: Unsupported header[%s]", &v6, 0x2Cu);
    }
  }

  return 0;
}

uint64_t ParseAcceptHdr(char **a1, char *a2)
{
  v4 = malloc_type_calloc(1uLL, 0xA0uLL, 0x1000040B8406A4EuLL);
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      for (i = 0; i != 5; ++i)
      {
        v7 = strchr(a2, 44);
        v8 = v7;
        if (v7)
        {
          *v7 = 0;
        }

        while (1)
        {
          v9 = *a2;
          if (v9 != 32 && v9 != 9)
          {
            break;
          }

          ++a2;
        }

        strlcpy(&v5[32 * i], a2, 0x20uLL);
        if (!v8)
        {
          break;
        }

        a2 = v8 + 1;
      }
    }

    v11 = 0;
    *a1 = v5;
  }

  else
  {
    v11 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseAcceptHdr_cold_1();
      }
    }
  }

  return v11;
}

uint64_t ParseAllowHdr(void *a1, char *a2)
{
  v4 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      do
      {
        v6 = strchr(a2, 44);
        v7 = v6;
        if (v6)
        {
          *v6 = 0;
        }

        while (1)
        {
          v8 = *a2;
          if (v8 != 9 && v8 != 32)
          {
            break;
          }

          ++a2;
        }

        v9 = 1;
        while (strcmp(a2, g_apszMethods[v9]))
        {
          if (++v9 == 12)
          {
            goto LABEL_13;
          }
        }

        *v5 |= (1 << v9);
LABEL_13:
        a2 = v7 + 1;
      }

      while (v7);
    }

    v10 = 0;
    *a1 = v5;
  }

  else
  {
    v10 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseAllowHdr_cold_1();
      }
    }
  }

  return v10;
}

uint64_t ParseAllowEventsHdr(void *a1, char *a2)
{
  v4 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      do
      {
        v6 = strchr(a2, 44);
        v7 = v6;
        if (v6)
        {
          *v6 = 0;
        }

        while (1)
        {
          v8 = *a2;
          if (v8 != 9 && v8 != 32)
          {
            break;
          }

          ++a2;
        }

        v9 = 1;
        while (strcmp(a2, g_apszEvents[v9]))
        {
          if (++v9 == 3)
          {
            goto LABEL_13;
          }
        }

        *v5 |= (1 << v9);
LABEL_13:
        a2 = v7 + 1;
      }

      while (v7);
    }

    v10 = 0;
    *a1 = v5;
  }

  else
  {
    v10 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseAllowEventsHdr_cold_1();
      }
    }
  }

  return v10;
}

uint64_t ParseCallIDHdr(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x3CuLL, 0x1000040C2DCA394uLL);
  if (v2)
  {
    v3 = v2;
    __strlcpy_chk();
    v4 = 0;
    *a1 = v3;
  }

  else
  {
    v4 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseCallIDHdr_cold_1();
      }
    }
  }

  return v4;
}

uint64_t ParseContactHdr(void *a1, char *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_calloc(1uLL, 0xA4uLL, 0x10000409BFB62CCuLL);
  if (v4)
  {
    v5 = v4;
    v6 = strchr(a2, 60);
    if (v6)
    {
      v7 = v6;
      *v6 = 0;
      v8 = strchr(a2, 34);
      if (v8)
      {
        v9 = strchr(v8 + 1, 34);
        if (v9)
        {
          *v9 = 0;
        }

        __strlcpy_chk();
        __strlcat_chk();
      }

      else
      {
        if (strlen(a2) >= 0x2B)
        {
          a2[42] = 0;
        }

        sscanf(a2, "%s", v5);
      }

      a2 = v7 + 1;
      v13 = strchr(v7 + 1, 62);
      if (!v13)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v27 = v23;
            v28 = 2080;
            v29 = "ParseContactHdr";
            v30 = 1024;
            v31 = 338;
            v32 = 1024;
            v33 = 338;
            v34 = 2080;
            v35 = a2;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipHdr.c:%d: No '>' in SIP URI[%s]", buf, 0x2Cu);
          }
        }

        free(v5);
        return 2148335647;
      }

      *v13 = 0;
      v12 = strchr(v13 + 1, 59);
    }

    else
    {
      v11 = strchr(a2, 59);
      v12 = v11;
      if (v11)
      {
        *v11 = 0;
      }
    }

    while (1)
    {
      v14 = *a2;
      if (v14 != 32 && v14 != 9)
      {
        break;
      }

      ++a2;
    }

    ParseSipUri((v5 + 11), a2);
    for (; v12; *v21 = 1)
    {
      while (1)
      {
        v16 = v12 + 1;
        v17 = strchr(v12 + 1, 59);
        v12 = v17;
        if (v17)
        {
          *v17 = 0;
        }

        while (1)
        {
          v18 = *v16;
          if (v18 != 32 && v18 != 9)
          {
            break;
          }

          ++v16;
        }

        v20 = strncasecmp(v16, "isfocus", 7uLL);
        v21 = v5 + 39;
        if (!v20)
        {
          break;
        }

        v22 = strncasecmp(v16, "ismultiway", 0xAuLL);
        v21 = v5 + 40;
        if (!v22)
        {
          break;
        }

        if (!v12)
        {
          goto LABEL_35;
        }
      }
    }

LABEL_35:
    v10 = 0;
    *a1 = v5;
  }

  else
  {
    v10 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseContactHdr_cold_1();
      }
    }
  }

  return v10;
}

uint64_t ParseContentEncodingHdr(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
  if (v2)
  {
    v3 = v2;
    __strlcpy_chk();
    v4 = 0;
    *a1 = v3;
  }

  else
  {
    v4 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseContentEncodingHdr_cold_1();
      }
    }
  }

  return v4;
}

uint64_t ParseContentLengthHdr(int **a1, const char *a2)
{
  v4 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v4)
  {
    v5 = v4;
    v6 = atoi(a2);
    v7 = 0;
    *v5 = v6;
    *a1 = v5;
  }

  else
  {
    v7 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseContentLengthHdr_cold_1();
      }
    }
  }

  return v7;
}

uint64_t ParseContentTypeHdr(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
  if (v2)
  {
    v3 = v2;
    __strlcpy_chk();
    v4 = 0;
    *a1 = v3;
  }

  else
  {
    v4 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseContentTypeHdr_cold_1();
      }
    }
  }

  return v4;
}

uint64_t ParseCSeqHdr(void *a1, const char *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040D9A13B51uLL);
  if (v4)
  {
    v5 = v4;
    v11[0] = 0xAAAAAAAAAAAAAAAALL;
    *v4 = strtol(a2, v11, 10);
    for (i = v11[0]; ; ++i)
    {
      v7 = *i;
      if (v7 != 9 && v7 != 32)
      {
        break;
      }
    }

    v8 = 1;
    while (strcasecmp(g_apszMethods[v8], i))
    {
      if (++v8 == 12)
      {
        goto LABEL_14;
      }
    }

    *(v5 + 2) = v8;
LABEL_14:
    v9 = 0;
    *a1 = v5;
  }

  else
  {
    v9 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseCSeqHdr_cold_1();
      }
    }
  }

  return v9;
}

uint64_t ParseEventHdr(void *a1, char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_calloc(1uLL, 0x14uLL, 0x1000040A86A77D5uLL);
  if (v4)
  {
    v5 = v4;
    if (strchr(a2, 44))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136316162;
          v19 = v6;
          v20 = 2080;
          v21 = "ParseEventHdr";
          v22 = 1024;
          v23 = 471;
          v24 = 1024;
          v25 = 471;
          v26 = 2080;
          v27 = a2;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipHdr.c:%d: Multiple Event packages in Event header[%s]", &v18, 0x2Cu);
        }
      }

      free(v5);
      return 2148335647;
    }

    else
    {
      v9 = strchr(a2, 59);
      v10 = v9;
      if (v9)
      {
        *v9 = 0;
      }

      v11 = 1;
      while (strcasecmp(a2, g_apszEvents[v11]))
      {
        if (++v11 == 3)
        {
          if (!v10)
          {
            goto LABEL_30;
          }

          goto LABEL_18;
        }
      }

      *v5 = v11;
      if (!v10)
      {
        goto LABEL_30;
      }

      do
      {
LABEL_18:
        v12 = strchr(v10 + 1, 59);
        v13 = v12;
        if (v12)
        {
          *v12 = 0;
        }

        for (i = v10 + 4; ; ++i)
        {
          v15 = *(i - 3);
          if (v15 != 32 && v15 != 9)
          {
            break;
          }
        }

        if (!strncasecmp(i - 3, "id=", 3uLL))
        {
          __strlcpy_chk();
        }

        v10 = v13;
      }

      while (v13);
LABEL_30:
      v8 = 0;
      *a1 = v5;
    }
  }

  else
  {
    v8 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseEventHdr_cold_1();
      }
    }
  }

  return v8;
}

uint64_t ParseExpiresHdr(int **a1, const char *a2)
{
  v4 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v4)
  {
    v5 = v4;
    v6 = atoi(a2);
    v7 = 0;
    *v5 = v6;
    *a1 = v5;
  }

  else
  {
    v7 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseExpiresHdr_cold_1();
      }
    }
  }

  return v7;
}

uint64_t ParseFromHdr(void *a1, char *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_calloc(1uLL, 0xDCuLL, 0x1000040E6B0F26EuLL);
  if (v4)
  {
    v5 = v4;
    v6 = strchr(a2, 60);
    if (!v6)
    {
      v11 = strchr(a2, 59);
      v12 = v11;
      if (v11)
      {
        *v11 = 0;
      }

      goto LABEL_18;
    }

    v7 = v6;
    *v6 = 0;
    v8 = strchr(a2, 34);
    if (v8)
    {
      v9 = strchr(v8 + 1, 34);
      if (v9)
      {
        *v9 = 0;
      }

      __strlcpy_chk();
      __strlcat_chk();
    }

    else
    {
      if (strlen(a2) >= 0x2B)
      {
        a2[42] = 0;
      }

      sscanf(a2, "%s", v5);
    }

    a2 = v7 + 1;
    v13 = strchr(v7 + 1, 62);
    if (v13)
    {
      *v13 = 0;
      v12 = strchr(v13 + 1, 59);
LABEL_18:
      while (1)
      {
        v14 = *a2;
        if (v14 != 32 && v14 != 9)
        {
          break;
        }

        ++a2;
      }

      ParseSipUri(v5 + 44, a2);
      if (v12)
      {
        do
        {
          v16 = strchr(v12 + 1, 59);
          v17 = v16;
          if (v16)
          {
            *v16 = 0;
          }

          for (i = v12 + 5; ; ++i)
          {
            v19 = *(i - 4);
            if (v19 != 32 && v19 != 9)
            {
              break;
            }
          }

          if (!strncasecmp(i - 4, "tag=", 4uLL))
          {
            __strlcpy_chk();
          }

          v12 = v17;
        }

        while (v17);
      }

      v10 = 0;
      *a1 = v5;
      return v10;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v25 = v21;
        v26 = 2080;
        v27 = "ParseFromHdr";
        v28 = 1024;
        v29 = 561;
        v30 = 1024;
        v31 = 561;
        v32 = 2080;
        v33 = a2;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipHdr.c:%d: No '>' in SIP URI[%s]", buf, 0x2Cu);
      }
    }

    free(v5);
    return 2148335647;
  }

  else
  {
    v10 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseFromHdr_cold_1();
      }
    }
  }

  return v10;
}

uint64_t ParseMaxForwardsHdr(int **a1, const char *a2)
{
  v4 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v4)
  {
    v5 = v4;
    v6 = atoi(a2);
    v7 = 0;
    *v5 = v6;
    *a1 = v5;
  }

  else
  {
    v7 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseMaxForwardsHdr_cold_1();
      }
    }
  }

  return v7;
}

uint64_t ParseMinExpiresHdr(int **a1, const char *a2)
{
  v4 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v4)
  {
    v5 = v4;
    v6 = atoi(a2);
    v7 = 0;
    *v5 = v6;
    *a1 = v5;
  }

  else
  {
    v7 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseMinExpiresHdr_cold_1();
      }
    }
  }

  return v7;
}

uint64_t ParseReferToHdr(void *a1, char *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_calloc(1uLL, 0x7BuLL, 0x1000040D7A3BC59uLL);
  if (v4)
  {
    v5 = v4;
    v6 = strchr(a2, 60);
    if (!v6)
    {
      v11 = strchr(a2, 59);
      v12 = v11;
      if (v11)
      {
        *v11 = 0;
      }

      goto LABEL_18;
    }

    v7 = v6;
    *v6 = 0;
    v8 = strchr(a2, 34);
    if (v8)
    {
      v9 = strchr(v8 + 1, 34);
      if (v9)
      {
        *v9 = 0;
      }

      __strlcpy_chk();
      __strlcat_chk();
    }

    else
    {
      if (strlen(a2) >= 0x2B)
      {
        a2[42] = 0;
      }

      sscanf(a2, "%s", v5);
    }

    a2 = v7 + 1;
    v13 = strchr(v7 + 1, 62);
    if (v13)
    {
      *v13 = 0;
      v12 = strchr(v13 + 1, 59);
LABEL_18:
      while (1)
      {
        v14 = *a2;
        if (v14 != 32 && v14 != 9)
        {
          break;
        }

        ++a2;
      }

      __strlcpy_chk();
      if (v12)
      {
        do
        {
          v16 = (v12 + 1);
          v17 = strchr(v12 + 1, 59);
          v12 = v17;
          if (v17)
          {
            *v17 = 0;
          }

          while (1)
          {
            v18 = *v16;
            if (v18 != 32 && v18 != 9)
            {
              break;
            }

            ++v16;
          }
        }

        while (v17);
      }

      v10 = 0;
      *a1 = v5;
      return v10;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v24 = v20;
        v25 = 2080;
        v26 = "ParseReferToHdr";
        v27 = 1024;
        v28 = 713;
        v29 = 1024;
        v30 = 713;
        v31 = 2080;
        v32 = a2;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipHdr.c:%d: No '>' in SIP URI[%s]", buf, 0x2Cu);
      }
    }

    free(v5);
    return 2148335647;
  }

  else
  {
    v10 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseReferToHdr_cold_1();
      }
    }
  }

  return v10;
}

uint64_t ParseSubscriptionStateHdr(void *a1, char *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v4)
  {
    v9 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseSubscriptionStateHdr_cold_1();
      }
    }

    return v9;
  }

  v5 = v4;
  v6 = strchr(a2, 59);
  v7 = v6;
  if (v6)
  {
    *v6 = 0;
  }

  for (i = 1; i != 4; ++i)
  {
    if (!strcasecmp(a2, g_apszSubStates[i]))
    {
      *v5 = i;
      if (!v7)
      {
        goto LABEL_35;
      }

      while (1)
      {
        while (1)
        {
LABEL_13:
          v10 = v7;
          v11 = strchr(v7 + 1, 59);
          v7 = v11;
          if (v11)
          {
            *v11 = 0;
          }

          for (j = v10 + 8; ; ++j)
          {
            v13 = *(j - 7);
            if (v13 != 32 && v13 != 9)
            {
              break;
            }
          }

          if (strncasecmp(j - 7, "reason=", 7uLL))
          {
            break;
          }

          v15 = 0;
          while (strcasecmp(j, g_apszReasons[v15]))
          {
            if (++v15 == 7)
            {
              goto LABEL_32;
            }
          }

          v5[1] = v15;
          if (!v7)
          {
            goto LABEL_35;
          }
        }

        if (!strncasecmp(j - 7, "expires=", 8uLL))
        {
          break;
        }

        if (!strncasecmp(j - 7, "retry-after=", 0xCuLL))
        {
          v5[3] = atoi(j + 5);
          if (!v7)
          {
            goto LABEL_35;
          }
        }

        else
        {
LABEL_32:
          if (!v7)
          {
            goto LABEL_35;
          }
        }
      }

      v5[2] = atoi(j + 1);
      goto LABEL_32;
    }
  }

  if (v7)
  {
    goto LABEL_13;
  }

LABEL_35:
  v9 = 0;
  *a1 = v5;
  return v9;
}

uint64_t ParseToHdr(void *a1, char *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_calloc(1uLL, 0xDCuLL, 0x1000040E6B0F26EuLL);
  if (v4)
  {
    v5 = v4;
    v6 = strchr(a2, 60);
    if (!v6)
    {
      v11 = strchr(a2, 59);
      v12 = v11;
      if (v11)
      {
        *v11 = 0;
      }

      goto LABEL_18;
    }

    v7 = v6;
    *v6 = 0;
    v8 = strchr(a2, 34);
    if (v8)
    {
      v9 = strchr(v8 + 1, 34);
      if (v9)
      {
        *v9 = 0;
      }

      __strlcpy_chk();
      __strlcat_chk();
    }

    else
    {
      if (strlen(a2) >= 0x2B)
      {
        a2[42] = 0;
      }

      sscanf(a2, "%s", v5);
    }

    a2 = v7 + 1;
    v13 = strchr(v7 + 1, 62);
    if (v13)
    {
      *v13 = 0;
      v12 = strchr(v13 + 1, 59);
LABEL_18:
      while (1)
      {
        v14 = *a2;
        if (v14 != 32 && v14 != 9)
        {
          break;
        }

        ++a2;
      }

      ParseSipUri(v5 + 44, a2);
      if (v12)
      {
        do
        {
          v16 = strchr(v12 + 1, 59);
          v17 = v16;
          if (v16)
          {
            *v16 = 0;
          }

          for (i = v12 + 5; ; ++i)
          {
            v19 = *(i - 4);
            if (v19 != 32 && v19 != 9)
            {
              break;
            }
          }

          if (!strncasecmp(i - 4, "tag=", 4uLL))
          {
            __strlcpy_chk();
          }

          v12 = v17;
        }

        while (v17);
      }

      v10 = 0;
      *a1 = v5;
      return v10;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v25 = v21;
        v26 = 2080;
        v27 = "ParseToHdr";
        v28 = 1024;
        v29 = 843;
        v30 = 1024;
        v31 = 843;
        v32 = 2080;
        v33 = a2;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipHdr.c:%d: No '>' in SIP URI[%s]", buf, 0x2Cu);
      }
    }

    free(v5);
    return 2148335647;
  }

  else
  {
    v10 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseToHdr_cold_1();
      }
    }
  }

  return v10;
}

uint64_t ParseUserAgentHdr(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x2BuLL, 0x100004056BB1370uLL);
  if (v2)
  {
    v3 = v2;
    __strlcpy_chk();
    v4 = 0;
    *a1 = v3;
  }

  else
  {
    v4 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseUserAgentHdr_cold_1();
      }
    }
  }

  return v4;
}

uint64_t ParseViaHdr(void *a1, char *k)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_calloc(1uLL, 0x310uLL, 0x1000040F65B4EE0uLL);
  if (v4)
  {
    v44 = a1;
    v45 = v4;
    v5 = 0;
    v6 = v4 + 4;
    v46 = v4 + 4;
    while (!strncmp(k, "SIP/2.0", 7uLL) && k[7] == 47)
    {
      v7 = 0;
      v8 = (k + 8);
      v9 = &v46[156 * v5];
      while (1)
      {
        v10 = v8[v7];
        if (v10 <= 0x20 && ((1 << v10) & 0x100000201) != 0)
        {
          i = &v8[v7];
          goto LABEL_20;
        }

        v6[v7] = v10;
        if (v7 == 2)
        {
          break;
        }

        ++v7;
      }

      for (i = k + 10; ; ++i)
      {
        v13 = *i;
        v14 = v13 > 0x20;
        v15 = (1 << v13) & 0x100000201;
        if (!v14 && v15 != 0)
        {
          break;
        }
      }

      v7 = 3;
LABEL_20:
      v9[v7] = 0;
      for (j = i; ; ++j)
      {
        v18 = *j;
        if (v18 != 32 && v18 != 9)
        {
          break;
        }

        ++i;
      }

      v20 = strchr(j, 44);
      k = v20;
      if (v20)
      {
        *v20 = 0;
        for (k = v20 + 1; ; ++k)
        {
          v21 = *k;
          if (v21 != 32 && v21 != 9)
          {
            break;
          }
        }

        v18 = *j;
      }

      if (v18 == 91)
      {
        v23 = strchr(j + 1, 93);
        if (!v23)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v42 = VRTraceErrorLogLevelToCSTR();
            v40 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v48 = v42;
              v49 = 2080;
              v50 = "ParseViaHdr";
              v51 = 1024;
              v52 = 954;
              v53 = 1024;
              v54 = 954;
              v55 = 2080;
              v56 = i;
              v41 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipHdr.c:%d: No ']' after '[' for an IPv6 address[%s]";
              goto LABEL_73;
            }
          }

          goto LABEL_79;
        }

        *v23 = 0;
        v24 = v23 + 1;
        *(v9 + 1) = 1;
        __strlcpy_chk();
        j = v24;
      }

      v25 = strchr(j, 59);
      v26 = v25;
      if (v25)
      {
        *v25 = 0;
      }

      v27 = strchr(j, 58);
      if (v27)
      {
        *v27 = 0;
        v28 = atoi(v27 + 1);
      }

      else
      {
        v28 = 5060;
      }

      *(v9 + 24) = v28;
      if (*(v9 + 1))
      {
        if (v26)
        {
          goto LABEL_45;
        }
      }

      else
      {
        __strlcpy_chk();
        while (v26)
        {
          while (1)
          {
LABEL_45:
            v29 = v26;
            v30 = strchr(v26 + 1, 59);
            v26 = v30;
            if (v30)
            {
              *v30 = 0;
            }

            for (m = v29 + 8; ; ++m)
            {
              v32 = *(m - 7);
              if (v32 != 32 && v32 != 9)
              {
                break;
              }
            }

            if (strncasecmp(m - 7, "branch=", 7uLL))
            {
              break;
            }

            __strlcpy_chk();
            if (!v26)
            {
              goto LABEL_62;
            }
          }

          if (!strncasecmp(m - 7, "received=", 9uLL))
          {
            strlcpy(v9 + 114, m + 2, 0x28uLL);
          }
        }
      }

LABEL_62:
      ++v5;
      if (!k)
      {
        goto LABEL_74;
      }

      v6 += 156;
      if (v5 == 5)
      {
        LODWORD(v5) = 5;
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
LABEL_74:
          v37 = v44;
          v36 = v45;
        }

        else
        {
          v34 = VRTraceErrorLogLevelToCSTR();
          v35 = *MEMORY[0x1E6986650];
          v37 = v44;
          v36 = v45;
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v48 = v34;
            v49 = 2080;
            v50 = "ParseViaHdr";
            v51 = 1024;
            v52 = 1006;
            v53 = 1024;
            v54 = 1006;
            v55 = 1024;
            LODWORD(v56) = 5;
            _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipHdr.c:%d: More Via than the maximum %d", buf, 0x28u);
          }
        }

        v38 = 0;
        *v36 = v5;
        *v37 = v36;
        return v38;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v39 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v48 = v39;
        v49 = 2080;
        v50 = "ParseViaHdr";
        v51 = 1024;
        v52 = 915;
        v53 = 1024;
        v54 = 915;
        v55 = 2080;
        v56 = k;
        v41 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipHdr.c:%d: Invalid protocol version[%s] in Via";
LABEL_73:
        _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 0x2Cu);
      }
    }

LABEL_79:
    free(v45);
    return 2148335647;
  }

  else
  {
    v38 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseViaHdr_cold_1();
      }
    }
  }

  return v38;
}

uint64_t ParseSKESeqHdr(void *a1, const char *a2)
{
  __s[1] = *MEMORY[0x1E69E9840];
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040D9A13B51uLL);
  if (v4)
  {
    v5 = v4;
    __s[0] = 0xAAAAAAAAAAAAAAAALL;
    *v4 = strtol(a2, __s, 10);
    v6 = strchr(__s[0], 59);
    if (v6)
    {
      LODWORD(v6) = atoi(v6 + 1);
    }

    v7 = 0;
    *(v5 + 2) = v6;
    *a1 = v5;
  }

  else
  {
    v7 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseSKESeqHdr_cold_1();
      }
    }
  }

  return v7;
}

uint64_t ParseXCallIDHdr(int **a1, const char *a2)
{
  v4 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v4)
  {
    v5 = v4;
    v6 = atoi(a2);
    v7 = 0;
    *v5 = v6;
    *a1 = v5;
  }

  else
  {
    v7 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseXCallIDHdr_cold_1();
      }
    }
  }

  return v7;
}

uint64_t ParseReasonHdr(void *a1, char *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x84uLL, 0x10000403AA91CE4uLL);
  if (v4)
  {
    v5 = v4;
    v6 = strchr(a2, 59);
    if (v6)
    {
      v7 = v6;
      *v6 = 0;
      *v5 = 1;
      __strlcpy_chk();
      do
      {
        while (1)
        {
          v8 = v7;
          v9 = strchr(v7 + 1, 59);
          v7 = v9;
          if (v9)
          {
            *v9 = 0;
          }

          for (i = v8 + 6; ; ++i)
          {
            v11 = *(i - 5);
            if (v11 != 32 && v11 != 9)
            {
              break;
            }
          }

          if (strncasecmp(i - 5, "cause=", 6uLL))
          {
            break;
          }

          v5[12] = atoi(i + 1);
          if (!v7)
          {
            goto LABEL_24;
          }
        }

        if (!strncasecmp(i - 5, "text=", 5uLL))
        {
          __strlcpy_chk();
        }
      }

      while (v7);
    }

    else
    {
      *v5 = 1;
      __strlcpy_chk();
    }

LABEL_24:
    v13 = 0;
    *a1 = v5;
  }

  else
  {
    v13 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        ParseReasonHdr_cold_1();
      }
    }
  }

  return v13;
}

uint64_t ParseHeader(void *a1, unsigned int *a2, char *__s, int a4)
{
  *&v43[5] = *MEMORY[0x1E69E9840];
  v8 = 2148335647;
  *a1 = 0;
  v9 = strchr(__s, 58);
  if (!v9)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return v8;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return v8;
    }

    v34 = 136316418;
    v35 = v18;
    v36 = 2080;
    v37 = "ParseHeader";
    v38 = 1024;
    v39 = 1070;
    v40 = 1024;
    v41 = 1070;
    v42 = 1024;
    v43[0] = 58;
    LOWORD(v43[1]) = 2080;
    *(&v43[1] + 2) = __s;
    v20 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipHdr.c:%d: No '%c' in the header[%s]";
    v21 = v19;
    v22 = 50;
LABEL_22:
    _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, &v34, v22);
    return v8;
  }

  v10 = v9;
  v11 = v9 - 1;
  v12 = v9;
  if (v9 - 1 >= __s)
  {
    do
    {
      v13 = *v11;
      if (v13 != 32 && v13 != 9)
      {
        break;
      }

      --v11;
    }

    while (v11 >= __s);
    v12 = v11 + 1;
  }

  *v12 = 0;
  v15 = strlen(__s);
  if (!v15)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      return v8;
    }

    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return v8;
    }

    v34 = 136316162;
    v35 = v23;
    v36 = 2080;
    v37 = "ParseHeader";
    v38 = 1024;
    v39 = 1084;
    v40 = 1024;
    v41 = 1084;
    v42 = 2080;
    *v43 = __s;
    v20 = "SIP [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/SIP/SipHdr.c:%d: No header field name[%s]";
    v21 = v24;
    v22 = 44;
    goto LABEL_22;
  }

  if (v15 == 1)
  {
    v16 = &dword_1DBD491F4;
    v17 = 13;
    while (__tolower(*__s) != *(v16 - 4))
    {
      v16 += 2;
      if (!--v17)
      {
        goto LABEL_27;
      }
    }

    v28 = *v16;
    if (a2)
    {
LABEL_30:
      *a2 = v28;
    }
  }

  else
  {
    v25 = -51;
    v26 = &off_1F570B0E0;
    while (strcasecmp(__s, *v26))
    {
      v26 += 3;
      if (__CFADD__(v25++, 1))
      {
LABEL_27:
        v28 = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    v28 = v25 + 52;
    if (a2)
    {
      goto LABEL_30;
    }
  }

LABEL_31:
  if (v28 != a4 && a4 && v28)
  {
    return 2148335648;
  }

  for (i = (v10 + 1); ; ++i)
  {
    v31 = *i;
    if (v31 != 32 && v31 != 9)
    {
      break;
    }
  }

  v33 = (&g_aHeaders)[3 * v28 + 1];

  return (v33)(a1);
}

uint64_t ConstructAcceptHdr(char *a1, const char *a2, size_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 2148335617;
  }

  v12 = -21846;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v6;
  v11 = v6;
  sprintf(a1, "%s: %s", "Accept", a2);
  v7 = a2 + 32;
  v8 = 4;
  do
  {
    if (!*v7)
    {
      break;
    }

    snprintf(__str, 0x22uLL, ", %s", v7);
    strlcat(a1, __str, a3);
    v7 += 32;
    --v8;
  }

  while (v8);
  strlcat(a1, "\r\n", a3);
  return 0;
}

uint64_t ConstructAllowHdr(char *a1, void *a2, size_t a3)
{
  if (!a2)
  {
    return 2148335617;
  }

  sprintf(a1, "%s: ", "Allow");
  v6 = 1;
  v7 = 1;
  do
  {
    if ((*a2 & (1 << v6)) != 0)
    {
      if (!v7)
      {
        strlcat(a1, ", ", a3);
      }

      strlcat(a1, g_apszMethods[v6], a3);
      v7 = 0;
    }

    ++v6;
  }

  while (v6 != 12);
  strlcat(a1, "\r\n", a3);
  return 0;
}

uint64_t ConstructAllowEventsHdr(char *a1, void *a2, size_t a3)
{
  if (!a2)
  {
    return 2148335617;
  }

  sprintf(a1, "%c: ", 117);
  v6 = 1;
  v7 = 1;
  do
  {
    if ((*a2 & (1 << v6)) != 0)
    {
      if (!v7)
      {
        strlcat(a1, ", ", a3);
      }

      strlcat(a1, g_apszEvents[v6], a3);
      v7 = 0;
    }

    ++v6;
  }

  while (v6 != 3);
  strlcat(a1, "\r\n", a3);
  return 0;
}

uint64_t ConstructCallIDHdr(char *a1, const char *a2)
{
  if (!a2)
  {
    return 2148335617;
  }

  sprintf(a1, "%c: %s\r\n", 105, a2);
  return 0;
}

uint64_t ConstructContactHdr(char *a1, char *__s)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return 2148335617;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[3] = v4;
  v14[4] = v4;
  v14[1] = v4;
  v14[2] = v4;
  v13 = v4;
  v14[0] = v4;
  *v10 = v4;
  v11 = v4;
  v12 = v4;
  *v6 = v4;
  v7 = v4;
  v8 = v4;
  v9 = v4;
  if (strlen(__s) >= 1)
  {
    snprintf(__str, 0x2BuLL, "%s ", __s);
  }

  __s[49] = 0;
  ConstructUri(v14, __s + 44);
  if (*(__s + 39))
  {
    snprintf(v10, 0x40uLL, ";%s", "isfocus");
  }

  else
  {
    v10[0] = 0;
  }

  if (*(__s + 40))
  {
    snprintf(v6, 0x40uLL, ";%s", "ismultiway");
  }

  else
  {
    v6[0] = 0;
  }

  sprintf(a1, "%c: %s%s%s\r\n", 109, v14, v10, v6);
  return 0;
}

uint64_t ConstructContentEncodingHdr(char *a1, const char *a2)
{
  if (!a2)
  {
    return 2148335617;
  }

  sprintf(a1, "%c: %s\r\n", 101, a2);
  return 0;
}

uint64_t ConstructContentLengthHdr(char *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 2148335617;
  }

  if (*a2 == -1)
  {
    sprintf(a1, "%c: %s\r\n");
  }

  else
  {
    sprintf(a1, "%c: %d\r\n");
  }

  return 0;
}

uint64_t ConstructContentTypeHdr(char *a1, const char *a2)
{
  if (!a2)
  {
    return 2148335617;
  }

  sprintf(a1, "%c: %s\r\n", 99, a2);
  return 0;
}

uint64_t ConstructCSeqHdr(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 2148335617;
  }

  sprintf(a1, "%s: %lu %s\r\n", "CSeq", *a2, g_apszMethods[*(a2 + 8)]);
  return 0;
}

uint64_t ConstructEventHdr(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 2148335617;
  }

  if (*(a2 + 4))
  {
    sprintf(a1, "%c: %s;%s\r\n");
  }

  else
  {
    sprintf(a1, "%c: %s\r\n");
  }

  return 0;
}

uint64_t ConstructExpiresHdr(char *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 2148335617;
  }

  sprintf(a1, "%s: %d\r\n", "Expires", *a2);
  return 0;
}

uint64_t ConstructFromHdr(char *a1, char *__s)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return 2148335617;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15[11] = v4;
  *__str = v4;
  *v15 = v4;
  v13[0] = v4;
  v13[1] = v4;
  v13[2] = v4;
  v13[3] = v4;
  v13[4] = v4;
  *v8 = v4;
  v9 = v4;
  v10 = v4;
  v11 = v4;
  v12 = v4;
  if (strlen(__s) < 1)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x2BuLL, "%s ", __s);
  }

  __s[49] = 0;
  ConstructUri(v13, __s + 44);
  v7 = __s[156];
  v6 = __s + 156;
  if (v7)
  {
    snprintf(v8, 0x50uLL, ";%s%s", "tag=", v6);
  }

  else
  {
    v8[0] = 0;
  }

  sprintf(a1, "%c: %s<%s>%s\r\n", 102, __str, v13, v8);
  return 0;
}

uint64_t ConstructMaxForwardsHdr(char *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 2148335617;
  }

  sprintf(a1, "%s: %d\r\n", "Max-Forwards", *a2);
  return 0;
}

uint64_t ConstructReasonHdr(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 2148335617;
  }

  if (*a2)
  {
    sprintf(a1, "%s: %s; cause=%d\r\n", "Reason", (a2 + 4), *(a2 + 48));
  }

  return 0;
}

uint64_t ConstructMinExpiresHdr(char *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 2148335617;
  }

  sprintf(a1, "%s: %d\r\n", "Min-Expires", *a2);
  return 0;
}

uint64_t ConstructReferToHdr(char *a1, char *__s)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return 2148335617;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v7[11] = v4;
  *__str = v4;
  *v7 = v4;
  if (strlen(__s) < 1)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x2BuLL, "%s ", __s);
  }

  sprintf(a1, "%s: %s<%s>\r\n", "Refer-To", __str, __s + 43);
  return 0;
}

uint64_t ConstructSubscriptionStateHdr(char *a1, _DWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  result = 2148335617;
  memset(v16, 170, sizeof(v16));
  v15 = 0xAAAAAAAAAAAAAAAALL;
  memset(v13, 170, sizeof(v13));
  v12 = 0xAAAAAAAAAAAAAAAALL;
  memset(v10, 170, sizeof(v10));
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (a2)
  {
    v8 = 0;
    v11 = 0;
    __str = 0;
    if ((*a2 - 1) >= 2)
    {
      if (*a2 != 3)
      {
        return result;
      }

      v6 = a2[1];
      if (v6)
      {
        snprintf(&v11, 0x14uLL, ";%s%s", "reason=", g_apszReasons[v6]);
        v7 = a2[1];
        if (v7 == 5 || v7 == 2)
        {
          snprintf(&v8, 0x18uLL, ";%s%d", "retry-after=", a2[3]);
        }
      }

      sprintf(a1, "%s: %s%s%s\r\n");
    }

    else
    {
      v5 = a2[2];
      if (v5)
      {
        snprintf(&__str, 0x14uLL, ";%s%d", "expires=", v5);
      }

      sprintf(a1, "%s: %s%s\r\n");
    }

    return 0;
  }

  return result;
}

uint64_t ConstructToHdr(char *a1, char *__s)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return 2148335617;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[3] = v4;
  v13[4] = v4;
  v13[1] = v4;
  v13[2] = v4;
  v12 = v4;
  v13[0] = v4;
  *v8 = v4;
  v9 = v4;
  v10 = v4;
  v11 = v4;
  if (strlen(__s) >= 1)
  {
    snprintf(__str, 0x2BuLL, "%s ", __s);
  }

  __s[49] = 0;
  ConstructUri(v13, __s + 44);
  v6 = __s[156];
  v5 = __s + 156;
  if (v6)
  {
    snprintf(v8, 0x50uLL, ";%s%s", "tag=", v5);
  }

  else
  {
    v8[0] = 0;
  }

  sprintf(a1, "%c: %s%s\r\n", 116, v13, v8);
  return 0;
}

uint64_t ConstructUserAgentHdr(char *a1, const char *a2)
{
  if (!a2)
  {
    return 2148335617;
  }

  sprintf(a1, "%s: %s\r\n", "User-Agent", a2);
  return 0;
}

uint64_t ConstructViaHdr(char *a1, int *a2, size_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  memset(__str, 170, 7);
  if (!a2)
  {
    return 2148335617;
  }

  *a1 = 0;
  if (*a2 >= 1)
  {
    v6 = 0;
    v7 = 0;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __source[14] = v8;
    __source[15] = v8;
    __source[12] = v8;
    __source[13] = v8;
    __source[10] = v8;
    __source[11] = v8;
    __source[8] = v8;
    __source[9] = v8;
    __source[6] = v8;
    __source[7] = v8;
    __source[4] = v8;
    __source[5] = v8;
    __source[2] = v8;
    __source[3] = v8;
    __source[0] = v8;
    __source[1] = v8;
    v19 = v8;
    v20 = v8;
    v21 = v8;
    v22 = v8;
    v23 = v8;
    v24 = v8;
    v25 = v8;
    v26 = v8;
    v27 = v8;
    v28 = v8;
    v17 = v8;
    v18 = v8;
    v15 = v8;
    v16 = v8;
    *v14 = v8;
    do
    {
      if (LOWORD(a2[v6 + 13]) == 5060)
      {
        __str[0] = 0;
      }

      else
      {
        snprintf(__str, 7uLL, ":%d", LOWORD(a2[v6 + 13]));
      }

      LOBYTE(v19) = 0;
      v9 = &a2[v6];
      if (BYTE2(a2[v6 + 13]))
      {
        snprintf(v14, 0x50uLL, ";%s%s", "branch=", &a2[v6 + 13] + 2);
        __strlcat_chk();
      }

      v11 = *(v9 + 118);
      v10 = v9 + 118;
      if (v11)
      {
        snprintf(v14, 0x50uLL, ";%s%s", "received=", v10);
        __strlcat_chk();
      }

      if (a2[v6 + 2])
      {
        snprintf(__source, 0x100uLL, "%c: %s/%s [%s]%s%s\r\n", 118);
      }

      else
      {
        snprintf(__source, 0x100uLL, "%c: %s/%s %s%s%s\r\n", 118);
      }

      strlcat(a1, __source, a3);
      ++v7;
      v6 += 39;
    }

    while (v7 < *a2);
  }

  return 0;
}

uint64_t ConstructSKESeqHdr(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 2148335617;
  }

  sprintf(a1, "%s: %lu;%d\r\n", "SKESeq", *a2, *(a2 + 8));
  return 0;
}

uint64_t CreateAcceptHdr(void *a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 0xA0uLL, 0x1000040B8406A4EuLL);
  if (v4)
  {
    v5 = v4;
    __strlcpy_chk();
    __strlcpy_chk();
    if (a2)
    {
      __strlcpy_chk();
    }

    v6 = 0;
    *a1 = v5;
  }

  else
  {
    v6 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateAcceptHdr_cold_1();
      }
    }
  }

  return v6;
}

uint64_t CreateAllowHdr(void *a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  if (v4)
  {
    for (i = 1; i != 12; ++i)
    {
      if (a2)
      {
        v6 = 0;
      }

      else
      {
        v6 = i == 9;
      }

      v7 = !v6;
      if (i != 6 && v7)
      {
        *v4 |= (1 << i);
      }
    }

    v8 = 0;
    *a1 = v4;
  }

  else
  {
    v8 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateAllowHdr_cold_1();
      }
    }
  }

  return v8;
}

uint64_t CreateAllowEventsHdr(void *a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  if (v4)
  {
    v5 = 0;
    v6 = 0xFFFFFFFFLL;
    if (!a2)
    {
      v6 = 4294967293;
    }

    *v4 = v6;
    *a1 = v4;
  }

  else
  {
    v5 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateAllowEventsHdr_cold_1();
      }
    }
  }

  return v5;
}

uint64_t CreateCallIDHdr(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x3CuLL, 0x1000040C2DCA394uLL);
  if (v2)
  {
    v3 = v2;
    __strlcpy_chk();
    v4 = 0;
    *a1 = v3;
  }

  else
  {
    v4 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateCallIDHdr_cold_1();
      }
    }
  }

  return v4;
}

uint64_t CreateContactHdr(void *a1, uint64_t a2, __int128 *a3, int a4, int a5)
{
  v10 = malloc_type_calloc(1uLL, 0xA4uLL, 0x10000409BFB62CCuLL);
  if (v10)
  {
    v11 = v10;
    if (a2)
    {
      __strlcpy_chk();
    }

    v12 = 0;
    v13 = *a3;
    v14 = a3[1];
    *(v11 + 76) = a3[2];
    *(v11 + 60) = v14;
    *(v11 + 44) = v13;
    v15 = a3[3];
    v16 = a3[4];
    v17 = a3[5];
    *(v11 + 140) = a3[6];
    *(v11 + 124) = v17;
    *(v11 + 108) = v16;
    *(v11 + 92) = v15;
    *(v11 + 39) = a4;
    *(v11 + 40) = a5;
    *a1 = v11;
  }

  else
  {
    v12 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateContactHdr_cold_1();
      }
    }
  }

  return v12;
}

uint64_t CreateContentEncodingHdr(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
  if (v2)
  {
    v3 = v2;
    __strlcpy_chk();
    v4 = 0;
    *a1 = v3;
  }

  else
  {
    v4 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateContentEncodingHdr_cold_1();
      }
    }
  }

  return v4;
}

uint64_t CreateContentLengthHdr(void *a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v4)
  {
    v5 = 0;
    *v4 = a2;
    *a1 = v4;
  }

  else
  {
    v5 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateContentLengthHdr_cold_1();
      }
    }
  }

  return v5;
}

uint64_t CreateContentTypeHdr(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
  if (v2)
  {
    v3 = v2;
    __strlcpy_chk();
    v4 = 0;
    *a1 = v3;
  }

  else
  {
    v4 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateContentTypeHdr_cold_1();
      }
    }
  }

  return v4;
}

uint64_t CreateCSeqHdr(void *a1, uint64_t a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040D9A13B51uLL);
  if (v6)
  {
    v7 = 0;
    *v6 = a2;
    v6[2] = a3;
    *a1 = v6;
  }

  else
  {
    v7 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateCSeqHdr_cold_1();
      }
    }
  }

  return v7;
}

uint64_t CreateExpiresHdr(void *a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v4)
  {
    v5 = 0;
    *v4 = a2;
    *a1 = v4;
  }

  else
  {
    v5 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateExpiresHdr_cold_1();
      }
    }
  }

  return v5;
}

uint64_t CreateFromHdr(void *a1, uint64_t a2, __int128 *a3)
{
  v6 = malloc_type_calloc(1uLL, 0xDCuLL, 0x1000040E6B0F26EuLL);
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      __strlcpy_chk();
    }

    v8 = *a3;
    v9 = a3[1];
    *(v7 + 76) = a3[2];
    *(v7 + 60) = v9;
    *(v7 + 44) = v8;
    v10 = a3[3];
    v11 = a3[4];
    v12 = a3[5];
    *(v7 + 140) = a3[6];
    *(v7 + 124) = v12;
    *(v7 + 108) = v11;
    *(v7 + 92) = v10;
    __strlcpy_chk();
    v13 = 0;
    *a1 = v7;
  }

  else
  {
    v13 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateFromHdr_cold_1();
      }
    }
  }

  return v13;
}

uint64_t CreateMaxForwardsHdr(void *a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v4)
  {
    v5 = 0;
    *v4 = a2;
    *a1 = v4;
  }

  else
  {
    v5 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateMaxForwardsHdr_cold_1();
      }
    }
  }

  return v5;
}

uint64_t CreateMinExpiresHdr(void *a1, int a2)
{
  v4 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v4)
  {
    v5 = 0;
    *v4 = a2;
    *a1 = v4;
  }

  else
  {
    v5 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateMinExpiresHdr_cold_1();
      }
    }
  }

  return v5;
}

uint64_t CreateToHdr(void *a1, uint64_t a2, __int128 *a3)
{
  v6 = malloc_type_calloc(1uLL, 0xDCuLL, 0x1000040E6B0F26EuLL);
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      __strlcpy_chk();
    }

    v8 = *a3;
    v9 = a3[1];
    *(v7 + 76) = a3[2];
    *(v7 + 60) = v9;
    *(v7 + 44) = v8;
    v10 = a3[3];
    v11 = a3[4];
    v12 = a3[5];
    *(v7 + 140) = a3[6];
    *(v7 + 124) = v12;
    *(v7 + 108) = v11;
    *(v7 + 92) = v10;
    __strlcpy_chk();
    v13 = 0;
    *a1 = v7;
  }

  else
  {
    v13 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateToHdr_cold_1();
      }
    }
  }

  return v13;
}

uint64_t CreateUserAgentHdr(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x2BuLL, 0x100004056BB1370uLL);
  if (v2)
  {
    v3 = v2;
    __strlcpy_chk();
    v4 = 0;
    *a1 = v3;
  }

  else
  {
    v4 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateUserAgentHdr_cold_1();
      }
    }
  }

  return v4;
}

uint64_t CreateViaHdr(void *a1, uint64_t a2, int a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  v11 = malloc_type_calloc(1uLL, 0x310uLL, 0x1000040F65B4EE0uLL);
  if (v11)
  {
    v12 = v11;
    *v11 = 1;
    __strlcpy_chk();
    v12[2] = a3;
    __strlcpy_chk();
    *(v12 + 26) = a5;
    __strlcpy_chk();
    if (a7)
    {
      __strlcpy_chk();
    }

    v13 = 0;
    *a1 = v12;
  }

  else
  {
    v13 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateViaHdr_cold_1();
      }
    }
  }

  return v13;
}

uint64_t CreateSKESeqHdr(void *a1, uint64_t a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040D9A13B51uLL);
  if (v6)
  {
    v7 = 0;
    *v6 = a2;
    v6[2] = a3;
    *a1 = v6;
  }

  else
  {
    v7 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateSKESeqHdr_cold_1();
      }
    }
  }

  return v7;
}

uint64_t CreateReasonHdr(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x84uLL, 0x10000403AA91CE4uLL);
  if (v8)
  {
    v9 = v8;
    if (a2)
    {
      __strlcpy_chk();
    }

    if (a4)
    {
      __strlcpy_chk();
    }

    v10 = 0;
    v9[12] = a3;
    *v9 = 1;
    *a1 = v9;
  }

  else
  {
    v10 = 2148335619;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateReasonHdr_cold_1();
      }
    }
  }

  return v10;
}

uint64_t CopySipHeader(void *a1, const void *a2, unsigned int a3)
{
  result = 2148335617;
  if (a1 && a2 && ((0x196FDFA8C559DuLL >> a3) & 1) == 0)
  {
    v6 = SLODWORD((&g_aHeaders)[3 * a3 + 2]);
    v7 = malloc_type_malloc(v6, 0x4CABA1C7uLL);
    if (v7)
    {
      v8 = v7;
      memcpy(v7, a2, v6);
      result = 0;
      *a1 = v8;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          CopySipHeader_cold_1();
        }
      }

      return 2148335619;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_3_21(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x28u);
}

uint64_t ReplaceKeyword(const char *a1, uint64_t a2, char *__s, const char *a4, uint64_t a5)
{
  v36 = a4;
  v49 = *MEMORY[0x1E69E9840];
  v9 = strlen(__s);
  v10 = a2 - 1;
  if (a2 >= 1)
  {
    v11 = v9;
    v12 = 0;
    v13 = 0;
    v14 = a2;
    v15 = v9;
    v16 = a1;
    while (*v16)
    {
      v16 = strnstr(v16, __s, a2 - v13);
      if (!v16)
      {
        break;
      }

      v16 += v15;
      v13 = v16 - a1;
      v12 = (v12 - 1);
      if (v16 - a1 >= a2)
      {
        goto LABEL_8;
      }
    }

    if (!v12)
    {
      return v12;
    }

LABEL_8:
    v12 = -v12;
    v35 = &v33;
    v33 = a2;
    MEMORY[0x1EEE9AC00](v16);
    v18 = &v33 - ((v17 + 15) & 0x1FFFFFFF0);
    memset(v18, 170, v17);
    v19 = strnlen(v36, a5 - 1);
    if (v19 <= v11)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19 - v11;
    }

    if ((0x7FFFFFFF / v12) > v20 && v10 - v20 * v12 >= strnlen(a1, v10))
    {
      if (!*a1)
      {
        return v12;
      }

      v34 = v19;
      v24 = a1;
      v25 = v14 + v19;
      while (v14 > v24 - a1)
      {
        v26 = strnstr(v24, __s, v14 - (v24 - a1));
        if (v26)
        {
          v27 = v26;
          strlcpy(v18, &v26[v15], v14);
          strlcpy(v27, v36, v14 - (v27 - a1));
          v24 = &v27[v34];
          strlcpy(&v27[v34], v18, v25 - (v27 - a1));
          if (*v24)
          {
            continue;
          }
        }

        return v12;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136316162;
      v38 = v28;
      v39 = 2080;
      v40 = "ReplaceKeyword";
      v41 = 1024;
      v42 = 261;
      v43 = 1024;
      v44 = v33;
      v45 = 2048;
      v46 = (v24 - a1);
      v30 = "SIP [%s] %s:%d Error Replacing Keyword - MaxSize:(%d) < (p - pszStr):(%ld)";
      v31 = v29;
      v32 = 44;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136316418;
      v38 = v21;
      v39 = 2080;
      v40 = "ReplaceKeyword";
      v41 = 1024;
      v42 = 255;
      v43 = 1024;
      v44 = v33;
      v45 = 2080;
      v46 = __s;
      v47 = 2080;
      v48 = v36;
      v30 = "SIP [%s] %s:%d Destination buffer size '%d' is too small to handle replacement '%s'->'%s'";
      v31 = v22;
      v32 = 54;
    }

    _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
    return 0;
  }

  return 0;
}

uint64_t CreateInvite(unint64_t *a1, int a2, int a3, uint64_t a4, __int128 *a5, __int128 *a6, __int128 *a7, __int128 *a8, unsigned __int16 a9, unsigned __int16 a10, const char *a11, const char *a12, char *__s, int a14, int a15, int a16)
{
  v108 = *MEMORY[0x1E69E9840];
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v107 + 12) = v22;
  v106 = v22;
  v107[0] = v22;
  v104 = v22;
  *v105 = v22;
  v102 = v22;
  v103 = v22;
  *v101 = v22;
  v100[2] = v22;
  v100[3] = v22;
  v100[0] = v22;
  v100[1] = v22;
  *(v99 + 11) = v22;
  *__str = v22;
  v99[0] = v22;
  *(v97 + 11) = v22;
  *v96 = v22;
  v97[0] = v22;
  v94 = v22;
  v95 = v22;
  *&v92[48] = v22;
  v93 = v22;
  *&v92[16] = v22;
  *&v92[32] = v22;
  v91 = v22;
  *v92 = v22;
  v89 = v22;
  v90 = v22;
  *&v88[32] = v22;
  *&v88[48] = v22;
  *v88 = v22;
  *&v88[16] = v22;
  v86[2] = v22;
  v87 = v22;
  v86[0] = v22;
  v86[1] = v22;
  v85[1] = v22;
  v85[2] = v22;
  v85[0] = v22;
  v71 = 0xAAAAAAAAAAAAAAAALL;
  v72 = 0xAAAAAAAAAAAAAAAALL;
  v23 = CreateGenericSIPMsg(&v72, a2, a9, a10, a16 != 0);
  if ((v23 & 0x80000000) != 0)
  {
    return v23;
  }

  v70 = a1;
  v24 = v72;
  v25 = v72 + 696;
  v26 = *(a4 + 32);
  v27 = *(a4 + 16);
  *(v72 + 696) = *a4;
  *(v25 + 16) = v27;
  *(v24 + 728) = v26;
  v29 = *a5;
  v28 = a5[1];
  *(v24 + 768) = *(a5 + 4);
  *(v24 + 736) = v29;
  *(v24 + 752) = v28;
  v31 = *a6;
  v30 = a6[1];
  *(v24 + 808) = *(a6 + 4);
  *(v24 + 776) = v31;
  *(v24 + 792) = v30;
  v33 = *a7;
  v32 = a7[1];
  *(v24 + 848) = *(a7 + 4);
  *(v24 + 816) = v33;
  *(v24 + 832) = v32;
  v35 = *a8;
  v34 = a8[1];
  *(v24 + 888) = *(a8 + 4);
  *(v24 + 856) = v35;
  *(v24 + 872) = v34;
  if (IsIPPORTValid())
  {
    v36 = *a8;
    v37 = a8[1];
    *(v24 + 848) = *(a8 + 4);
    *(v24 + 816) = v36;
    *(v24 + 832) = v37;
    *&v84[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v36 = 0xAAAAAAAAAAAAAAAALL;
    *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v83 = v36;
    *v84 = v36;
    v82 = v36;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v40 = IPPORTToStringWithSize();
        *buf = 136316418;
        *&buf[4] = v38;
        *&buf[12] = 2080;
        *&buf[14] = "CreateInvite";
        v74 = 1024;
        v75 = 304;
        v76 = 2080;
        v77 = v40;
        v78 = 1024;
        v79 = a9;
        v80 = 1024;
        v81 = a10;
        _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, "SIP [%s] %s:%d Relay external addr [%s] type %u channel %x", buf, 0x32u);
      }
    }
  }

  v92[4] = 0;
  strcpy(v92, "sip");
  *&v92[5] = *"user";
  memset(&v92[21], 0, 35);
  *&v92[56] = *a4 & 1;
  IPToString();
  WORD2(v95) = *(a4 + 36);
  strncpy(&v95 + 6, DEFAULT_TRANSPORT, 4uLL);
  HIDWORD(v95) = 0;
  strcpy(v88, "sip");
  v88[4] = 0;
  *&v88[5] = *"user";
  memset(&v88[21], 0, 35);
  *&v88[56] = *a5 & 1;
  IPToString();
  WORD2(v91) = *(a5 + 18);
  strncpy(&v91 + 6, DEFAULT_TRANSPORT, 4uLL);
  HIDWORD(v91) = 0;
  LODWORD(v85[0]) = 7367027;
  BYTE4(v85[0]) = 0;
  __strlcpy_chk();
  DWORD2(v86[0]) = *a6 & 1;
  IPToString();
  WORD2(v87) = *(a6 + 18);
  strncpy(&v87 + 6, DEFAULT_TRANSPORT, 4uLL);
  HIDWORD(v87) = 0;
  *(v24 + 4) = 0x100000001;
  v41 = *v88;
  v42 = *&v88[16];
  *(v24 + 44) = *&v88[32];
  *(v24 + 28) = v42;
  *(v24 + 12) = v41;
  v43 = *&v88[48];
  v44 = v89;
  v45 = v90;
  *(v24 + 108) = v91;
  *(v24 + 92) = v45;
  *(v24 + 76) = v44;
  *(v24 + 60) = v43;
  *v84 = 0xAAAAAAAAAAAAAAAALL;
  *&v43 = 0xAAAAAAAAAAAAAAAALL;
  *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v82 = v43;
  v83 = v43;
  MakeAddressID();
  v47 = *(a4 + 36);
  memset(buf, 170, 16);
  gettimeofday(buf, 0);
  v48 = 10000000 * *buf + 10 * *&buf[8] + 122192928000000000;
  if (GenerateUUID_oldi)
  {
    v49 = GenerateUUID_wClockSeq;
    if (GenerateUUID_oldi < v48)
    {
      goto LABEL_13;
    }

    v49 = GenerateUUID_wClockSeq + 1;
  }

  else
  {
    v49 = vcvtd_n_s64_f64(vcvtd_n_f64_u32(hwrandom(), 0x1FuLL), 0x10uLL);
  }

  GenerateUUID_wClockSeq = v49;
LABEL_13:
  GenerateUUID_oldi = v48;
  v50 = v49 | 0x8000;
  v51 = hwrandom();
  __sprintf_chk(v105, 0, 0x3CuLL, "%08x-%04x-%04x-%04x-%08x%04x", v48, WORD2(v48), HIWORD(v48) & 0xFFF | 0x1000, v50 & 0xBFFF, v51 | 0x80000000, v47);
  __strlcat_chk();
  __strlcat_chk();
  v52 = CreateCallIDHdr(&v71);
  if ((v52 & 0x80000000) != 0)
  {
    v46 = v52;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateInvite_cold_11();
      }
    }

    goto LABEL_70;
  }

  *(v24 + 208) = v71;
  v53 = CreateContactHdr(&v71, 0, v85, a14, a15);
  if ((v53 & 0x80000000) != 0)
  {
    v46 = v53;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateInvite_cold_10();
      }
    }

    goto LABEL_70;
  }

  *(v24 + 224) = v71;
  v54 = CreateContentLengthHdr(&v71, -1);
  if ((v54 & 0x80000000) != 0)
  {
    v46 = v54;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateInvite_cold_9();
      }
    }

    goto LABEL_70;
  }

  *(v24 + 256) = v71;
  v55 = CreateContentTypeHdr(&v71);
  if ((v55 & 0x80000000) != 0)
  {
    v46 = v55;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateInvite_cold_8();
      }
    }

    goto LABEL_70;
  }

  *(v24 + 264) = v71;
  v56 = CreateCSeqHdr(&v71, 1, 1);
  if ((v56 & 0x80000000) != 0)
  {
    v46 = v56;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateInvite_cold_7();
      }
    }

    goto LABEL_70;
  }

  *(v24 + 272) = v71;
  if (a11)
  {
    if (*a11 && *a11 != 34)
    {
      snprintf(__str, 0x2BuLL, "%s", a11);
    }

    else
    {
      __strlcpy_chk();
    }
  }

  else
  {
    *__str = *"Anonymous";
    memset(v99, 0, 27);
  }

  v57 = hwrandom();
  __sprintf_chk(v101, 0, 0x40uLL, "%lu", v57);
  v58 = CreateFromHdr(&v71, __str, v92);
  if ((v58 & 0x80000000) != 0)
  {
    v46 = v58;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateInvite_cold_6();
      }
    }

    goto LABEL_70;
  }

  *(v24 + 312) = v71;
  v59 = CreateMaxForwardsHdr(&v71, 70);
  if ((v59 & 0x80000000) != 0)
  {
    v46 = v59;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateInvite_cold_5();
      }
    }

    goto LABEL_70;
  }

  *(v24 + 328) = v71;
  if (a12)
  {
    if (*a12 && *a12 != 34)
    {
      snprintf(v96, 0x2BuLL, "%s", a12);
    }

    else
    {
      __strlcpy_chk();
    }
  }

  else
  {
    *v96 = *"Anonymous";
    memset(v97, 0, 27);
  }

  v60 = CreateToHdr(&v71, v96, v88);
  if ((v60 & 0x80000000) != 0)
  {
    v46 = v60;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateInvite_cold_4();
      }
    }

    goto LABEL_70;
  }

  *(v24 + 480) = v71;
  GenerateBranch(v100);
  v61 = CreateViaHdr(&v71, DEFAULT_TRANSPORT, SDWORD2(v86[0]), v86 + 12, SWORD2(v87), v100, 0);
  if ((v61 & 0x80000000) != 0)
  {
    v46 = v61;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateInvite_cold_3();
      }
    }

    goto LABEL_70;
  }

  *(v24 + 504) = v71;
  v62 = CreateUserAgentHdr(&v71);
  if ((v62 & 0x80000000) != 0)
  {
    v46 = v62;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateInvite_cold_2();
      }
    }

LABEL_70:
    FreeSipMsg(v24);
    return v46;
  }

  *(v24 + 496) = v71;
  if (!__s)
  {
    goto LABEL_60;
  }

  v63 = strlen(__s);
  if (!v63)
  {
    goto LABEL_60;
  }

  v64 = malloc_type_malloc(v63 + 1, 0x100004077774924uLL);
  *(v24 + 552) = v64;
  if (v64)
  {
    v65 = v64;
    v66 = strlen(__s);
    strncpy(v65, __s, v66 + 1);
LABEL_60:
    v46 = 0;
    *v70 = v24;
    return v46;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v68 = VRTraceErrorLogLevelToCSTR();
    v69 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      CreateInvite_cold_1(v68, __s, v69);
    }
  }

  FreeSipMsg(v24);
  return 2148401155;
}

uint64_t CreateGenericSIPMsg(void *a1, int a2, __int16 a3, __int16 a4, int a5)
{
  v10 = malloc_type_calloc(1uLL, 0x400uLL, 0x10F2040E4BCFADAuLL);
  if (v10)
  {
    v11 = 0;
    v10[143] = a2;
    *(v10 + 284) = a3;
    *(v10 + 285) = a4;
    v10[252] = a5;
    *(v10 + 127) = SIPCompressCallback;
    *a1 = v10;
  }

  else
  {
    v11 = 2148401155;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateGenericSIPMsg_cold_1();
      }
    }
  }

  return v11;
}

uint64_t SIPCompressCallback(unsigned int a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = 2148401196;
  if (*(a6 + 240))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 136315650;
        *&v24[4] = v7;
        v25 = 2080;
        v26 = "SIPCompressCallback";
        v27 = 1024;
        v28 = 162;
        v9 = "SIP [%s] %s:%d SIPCompressCallback: already compressed.";
        v10 = v8;
        v11 = 28;
LABEL_5:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v24, v11);
      }
    }
  }

  else
  {
    if (a1 - 3 < 0xFFFFFFFE)
    {
      return 2148401184;
    }

    v13 = a5;
    if (a5 > 100)
    {
      v18 = &g_aCompressions + 32 * a1;
      ContentEncodingHdr = (*(v18 + 2))(a2, a3, a4, a5);
      if ((ContentEncodingHdr & 0x80000000) == 0)
      {
        v20 = strlen(v18 + 4) + 5.0;
        if (((*a3 + v20) / v13) >= 1.0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v21 = VRTraceErrorLogLevelToCSTR();
            v22 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v23 = *a3;
              *v24 = 136316162;
              *&v24[4] = v21;
              v25 = 2080;
              v26 = "SIPCompressCallback";
              v27 = 1024;
              v28 = 182;
              v29 = 1024;
              v30 = v13;
              v31 = 1024;
              v32 = v23;
              v9 = "SIP [%s] %s:%d SIPCompressCallback: Not worth compressing %d --> %d";
              v10 = v22;
              v11 = 40;
              goto LABEL_5;
            }
          }

          return v6;
        }

        *v24 = 0xAAAAAAAAAAAAAAAALL;
        ContentEncodingHdr = CreateContentEncodingHdr(v24);
        if ((ContentEncodingHdr & 0x80000000) == 0)
        {
          v6 = 0;
          *(a6 + 240) = *v24;
          return v6;
        }
      }

      return ContentEncodingHdr;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 136315906;
        *&v24[4] = v14;
        v25 = 2080;
        v26 = "SIPCompressCallback";
        v27 = 1024;
        v28 = 171;
        v29 = 1024;
        v30 = v13;
        v9 = "SIP [%s] %s:%d SIPCompressCallback: too small to compress %d";
        v10 = v15;
        v11 = 34;
        goto LABEL_5;
      }
    }
  }

  return v6;
}

void FreeSipMsg(void *a1)
{
  if (a1)
  {
    for (i = 17; i != 69; ++i)
    {
      v3 = a1[i];
      if (v3)
      {
        free(v3);
      }
    }

    v4 = a1[69];
    if (v4)
    {
      free(v4);
    }

    v5 = a1[124];
    if (v5)
    {
      free(v5);
    }

    free(a1);
  }
}

uint64_t GenerateBranch(char *a1)
{
  v2 = hwrandom();
  v3 = hwrandom();
  return sprintf(a1, "z9hG4bK%08x%08x", v2, v3);
}

uint64_t CreateAck(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 2148401186;
  }

  v41 = 0xAAAAAAAAAAAAAAAALL;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v6 = CreateGenericSIPMsg(&v41, *(a2 + 572), *(a2 + 568), *(a2 + 570), *(a2 + 1008));
  if ((v6 & 0x80000000) != 0)
  {
    return v6;
  }

  v7 = v41;
  *(v41 + 4) = 0x200000001;
  v8 = *(a3 + 224);
  if (v8)
  {
    v9 = (v8 + 44);
  }

  else
  {
    v9 = (a2 + 12);
  }

  v10 = *v9;
  v11 = v9[1];
  *(v7 + 44) = v9[2];
  *(v7 + 28) = v11;
  *(v7 + 12) = v10;
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[5];
  *(v7 + 108) = v9[6];
  *(v7 + 92) = v14;
  *(v7 + 76) = v13;
  *(v7 + 60) = v12;
  v15 = *(a2 + 696);
  v16 = *(a2 + 712);
  *(v7 + 728) = *(a2 + 728);
  *(v7 + 696) = v15;
  *(v7 + 712) = v16;
  v17 = *(a2 + 736);
  v18 = *(a2 + 752);
  *(v7 + 768) = *(a2 + 768);
  *(v7 + 736) = v17;
  *(v7 + 752) = v18;
  v19 = *(a2 + 776);
  v20 = *(a2 + 792);
  *(v7 + 808) = *(a2 + 808);
  *(v7 + 776) = v19;
  *(v7 + 792) = v20;
  v21 = *(a2 + 816);
  v22 = *(a2 + 832);
  *(v7 + 848) = *(a2 + 848);
  *(v7 + 816) = v21;
  *(v7 + 832) = v22;
  v23 = *(a2 + 856);
  v24 = *(a2 + 872);
  *(v7 + 888) = *(a2 + 888);
  *(v7 + 856) = v23;
  *(v7 + 872) = v24;
  v25 = CopySipHeader(&v42, *(a2 + 208), 9u);
  if ((v25 & 0x80000000) != 0)
  {
    v39 = v25;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateAck_cold_8();
      }
    }

    goto LABEL_45;
  }

  *(v7 + 208) = v42;
  v26 = CopySipHeader(&v42, *(a2 + 312), 0x16u);
  if ((v26 & 0x80000000) != 0)
  {
    v39 = v26;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateAck_cold_7();
      }
    }

    goto LABEL_45;
  }

  *(v7 + 312) = v42;
  v27 = CopySipHeader(&v42, *(a3 + 480), 0x2Bu);
  if ((v27 & 0x80000000) != 0)
  {
    v39 = v27;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateAck_cold_6();
      }
    }

    goto LABEL_45;
  }

  v28 = v42;
  *(v7 + 480) = v42;
  v29 = *(a2 + 480);
  v31 = *(v29 + 156);
  v30 = (v29 + 156);
  if (!v31)
  {
    strncpy(v30, (v28 + 156), 0x40uLL);
  }

  v32 = CopySipHeader(&v42, *(a2 + 504), 0x2Eu);
  if ((v32 & 0x80000000) != 0)
  {
    v39 = v32;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateAck_cold_5();
      }
    }

    goto LABEL_45;
  }

  if ((*(a3 + 8) & 0xFFFFFFFE) == 6)
  {
    *&v33 = 0xAAAAAAAAAAAAAAAALL;
    *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v43[2] = v33;
    v43[3] = v33;
    v43[0] = v33;
    v43[1] = v33;
    GenerateBranch(v43);
    __strlcpy_chk();
  }

  *(v7 + 504) = v42;
  v34 = CopySipHeader(&v42, *(a2 + 272), 0x11u);
  if ((v34 & 0x80000000) != 0)
  {
    v39 = v34;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateAck_cold_4();
      }
    }

    goto LABEL_45;
  }

  v35 = v42;
  *(v42 + 8) = 2;
  *(v7 + 272) = v35;
  v36 = CreateUserAgentHdr(&v42);
  if ((v36 & 0x80000000) != 0)
  {
    v39 = v36;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateAck_cold_3();
      }
    }

    goto LABEL_45;
  }

  *(v7 + 496) = v42;
  v37 = CreateContentLengthHdr(&v42, -1);
  if ((v37 & 0x80000000) != 0)
  {
    v39 = v37;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateAck_cold_2();
      }
    }

    goto LABEL_45;
  }

  *(v7 + 256) = v42;
  v38 = CreateMaxForwardsHdr(&v42, 70);
  if ((v38 & 0x80000000) != 0)
  {
    v39 = v38;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        CreateAck_cold_1();
      }
    }

LABEL_45:
    FreeSipMsg(v7);
    return v39;
  }

  v39 = 0;
  *(v7 + 328) = v42;
  *a1 = v7;
  return v39;
}

uint64_t CreateCancel(void *a1, uint64_t a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v31[0] = 0xAAAAAAAAAAAAAAAALL;
  v4 = malloc_type_calloc(1uLL, 0x400uLL, 0x10F2040E4BCFADAuLL);
  if (v4)
  {
    v5 = v4;
    *(v4 + 4) = 0x500000001;
    if (a2)
    {
      *(v4 + 143) = *(a2 + 572);
      *(v4 + 142) = *(a2 + 568);
      *(v4 + 252) = *(a2 + 1008);
      *(v4 + 127) = SIPCompressCallback;
      v6 = *(a2 + 12);
      v7 = *(a2 + 28);
      *(v4 + 44) = *(a2 + 44);
      *(v4 + 28) = v7;
      *(v4 + 12) = v6;
      v8 = *(a2 + 60);
      v9 = *(a2 + 76);
      v10 = *(a2 + 92);
      *(v4 + 108) = *(a2 + 108);
      *(v4 + 92) = v10;
      *(v4 + 76) = v9;
      *(v4 + 60) = v8;
      v11 = *(a2 + 696);
      v12 = *(a2 + 712);
      *(v4 + 91) = *(a2 + 728);
      *(v4 + 696) = v11;
      *(v4 + 712) = v12;
      v13 = *(a2 + 736);
      v14 = *(a2 + 752);
      *(v4 + 96) = *(a2 + 768);
      *(v4 + 46) = v13;
      *(v4 + 47) = v14;
      v15 = *(a2 + 776);
      v16 = *(a2 + 792);
      *(v4 + 101) = *(a2 + 808);
      *(v4 + 776) = v15;
      *(v4 + 792) = v16;
      v17 = *(a2 + 816);
      v18 = *(a2 + 832);
      *(v4 + 106) = *(a2 + 848);
      *(v4 + 51) = v17;
      *(v4 + 52) = v18;
      v19 = *(a2 + 856);
      v20 = *(a2 + 872);
      *(v4 + 111) = *(a2 + 888);
      *(v4 + 856) = v19;
      *(v4 + 872) = v20;
      v21 = CopySipHeader(v31, *(a2 + 208), 9u);
      if ((v21 & 0x80000000) != 0)
      {
        v29 = v21;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            CreateCancel_cold_8();
          }
        }
      }

      else
      {
        v5[26] = v31[0];
        CSeqHdr = CreateCSeqHdr(v31, **(a2 + 272), 5);
        if ((CSeqHdr & 0x80000000) != 0)
        {
          v29 = CSeqHdr;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              CreateCancel_cold_7();
            }
          }
        }

        else
        {
          v5[34] = v31[0];
          v23 = CopySipHeader(v31, *(a2 + 312), 0x16u);
          if ((v23 & 0x80000000) != 0)
          {
            v29 = v23;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                CreateCancel_cold_6();
              }
            }
          }

          else
          {
            v5[39] = v31[0];
            v24 = CopySipHeader(v31, *(a2 + 480), 0x2Bu);
            if ((v24 & 0x80000000) != 0)
            {
              v29 = v24;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  CreateCancel_cold_5();
                }
              }
            }

            else
            {
              v5[60] = v31[0];
              v25 = CopySipHeader(v31, *(a2 + 504), 0x2Eu);
              if ((v25 & 0x80000000) != 0)
              {
                v29 = v25;
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    CreateCancel_cold_4();
                  }
                }
              }

              else
              {
                v5[63] = v31[0];
                UserAgentHdr = CreateUserAgentHdr(v31);
                if ((UserAgentHdr & 0x80000000) != 0)
                {
                  v29 = UserAgentHdr;
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      CreateCancel_cold_3();
                    }
                  }
                }

                else
                {
                  v5[62] = v31[0];
                  ContentLengthHdr = CreateContentLengthHdr(v31, -1);
                  if ((ContentLengthHdr & 0x80000000) != 0)
                  {
                    v29 = ContentLengthHdr;
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        CreateCancel_cold_2();
                      }
                    }
                  }

                  else
                  {
                    v5[32] = v31[0];
                    MaxForwardsHdr = CreateMaxForwardsHdr(v31, 70);
                    if ((MaxForwardsHdr & 0x80000000) == 0)
                    {
                      v29 = 0;
                      v5[41] = v31[0];
LABEL_16:
                      *a1 = v5;
                      return v29;
                    }

                    v29 = MaxForwardsHdr;
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                      {
                        CreateCancel_cold_1();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      FreeSipMsg(v5);
      return v29;
    }

    v29 = 0;
    goto LABEL_16;
  }

  v29 = 2148401155;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      CreateCancel_cold_9();
    }
  }

  return v29;
}