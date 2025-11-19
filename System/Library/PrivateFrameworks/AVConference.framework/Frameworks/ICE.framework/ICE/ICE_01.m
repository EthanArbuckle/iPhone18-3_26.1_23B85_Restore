void ICEInterfaceNeedsUpdateExternalMapping(uint64_t a1, _DWORD *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  *&v19[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = v2;
  *v19 = v2;
  v18[0] = v2;
  if (a2)
  {
    *a2 = 0;
    v4 = CheckInHandleDebug();
    if (v4)
    {
      v5 = v4;
      pthread_mutex_lock((v4 + 96));
      v6 = *(v5 + 160);
      if (v6)
      {
        while ((*(v6 + 8) & 1) != 0 && !*(v6 + 232) || IsIPPORTValid(v6 + 96))
        {
          v6 = *(v6 + 240);
          if (!v6)
          {
            goto LABEL_19;
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v7 = VRTraceErrorLogLevelToCSTR();
          v8 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v10 = 136315906;
            v11 = v7;
            v12 = 2080;
            v13 = "ICEInterfaceNeedsUpdateExternalMapping";
            v14 = 1024;
            v15 = 3535;
            v16 = 2080;
            v17 = IPPORTToStringWithSize(v18, v6 + 8, 0x36uLL);
            _os_log_impl(&dword_23D497000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: needs to update external mapping on interface [%s]", &v10, 0x26u);
          }
        }

        *a2 = 1;
      }

LABEL_19:
      pthread_mutex_unlock((v5 + 96));
      CheckOutHandleDebug();
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ICEInterfaceNeedsUpdateExternalMapping_cold_1();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ICEInterfaceNeedsUpdateExternalMapping_cold_2();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t ICESetEnableLoopbackInterface(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = CheckInHandleDebug();
  if (v3)
  {
    v4 = v3;
    pthread_mutex_lock((v3 + 96));
    *(v4 + 728) = a2;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136316418;
        v10 = v5;
        v11 = 2080;
        v12 = "ICESetEnableLoopbackInterface";
        v13 = 1024;
        v14 = 3556;
        v15 = 1024;
        v16 = 3556;
        v17 = 2048;
        v18 = v4;
        v19 = 1024;
        v20 = a2;
        _os_log_impl(&dword_23D497000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICESetEnableLoopbackInterface pICEInfo=%p enableLoopbackInterface=%d", &v9, 0x32u);
      }
    }

    pthread_mutex_unlock((v4 + 96));
    CheckOutHandleDebug();
    result = 0;
  }

  else
  {
    result = 2148859906;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

uint64_t UpdateICEState(int *a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (!a2)
  {
    v4 = 0;
    *a1 = 0;
    goto LABEL_28;
  }

  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      if (a2 == 1)
      {
        v5 = 2;
        goto LABEL_23;
      }
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_24;
      }

      if (a2 == 4)
      {
        v5 = 3;
LABEL_23:
        *a1 = v5;
        goto LABEL_24;
      }
    }

    if (a2 != 5)
    {
      goto LABEL_24;
    }

    v5 = 4;
    goto LABEL_23;
  }

  if (v3 != 3)
  {
    if (v3 != 4)
    {
      if (v3 != 6 || a2 != 6)
      {
        goto LABEL_24;
      }

LABEL_17:
      v5 = 9;
      goto LABEL_23;
    }

    if (a2 != 4)
    {
      if (a2 != 7)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

LABEL_21:
    v5 = 6;
    goto LABEL_23;
  }

  if (a2 == 2)
  {
    goto LABEL_21;
  }

LABEL_24:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = (&g_aICEState)[2 * v3];
      v9 = (&g_aICEState)[2 * *a1];
      v12 = 136316162;
      v13 = v6;
      v14 = 2080;
      v15 = "UpdateICEState";
      v16 = 1024;
      v17 = 122;
      v18 = 2080;
      v19 = v8;
      v20 = 2080;
      v21 = v9;
      _os_log_impl(&dword_23D497000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tOLD STATE(%s)->NEW STATE(%s)", &v12, 0x30u);
    }
  }

  v4 = *a1;
LABEL_28:
  v10 = *MEMORY[0x277D85DE8];
  return (v4 - v3);
}

uint64_t FindMatchCP(uint64_t a1, int a2, void *a3, int a4)
{
  if (a4)
  {
    v4 = (a3 + 10);
  }

  else
  {
    v4 = a3;
  }

  if (a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = (a3 + 10);
  }

  if (a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = 0;
  v8 = a2;
  while (!MatchCandidatePairWithIDs(a1, v4, v5))
  {
    ++v7;
    a1 += 400;
    if (v8 == v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

BOOL MatchCandidatePairWithIDs(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_14;
      }

      MatchCandidatePairWithIDs_cold_1();
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  if (!a2 || !a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_14;
      }

      v9 = 136316162;
      v10 = v6;
      v11 = 2080;
      v12 = "MatchCandidatePairWithIDs";
      v13 = 1024;
      v14 = 135;
      v15 = 2048;
      v16 = a2;
      v17 = 2048;
      v18 = a3;
      _os_log_error_impl(&dword_23D497000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d pszLocalID(%p) or pszRemoteID(%p) is NULL!", &v9, 0x30u);
    }

    goto LABEL_13;
  }

  if (*a2 != *(a1 + 12) || *a3 != *(a1 + 160))
  {
    goto LABEL_13;
  }

  result = 1;
LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SaveSTUNRequest(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, __int128 *a5, int a6)
{
  v11 = malloc_type_calloc(1uLL, 0x638uLL, 0x102004070FB87F4uLL);
  if (v11)
  {
    v12 = v11;
    *v11 = *a4 & 4;
    v11[2] = 2;
    *(v11 + 6) = 0;
    *(v11 + 370) = a6;
    *(v11 + 373) = a3;
    __memcpy_chk();
    v13 = *(a4 + 32);
    v14 = *(a4 + 16);
    *(v12 + 748) = *a4;
    *(v12 + 756) = v14;
    *(v12 + 191) = v13;
    v16 = *a5;
    v15 = a5[1];
    *(v12 + 196) = *(a5 + 4);
    *(v12 + 96) = v16;
    *(v12 + 97) = v15;
    *(v12 + 197) = micro();
    v17 = *a1;
    if (*a1)
    {
      do
      {
        v18 = v17;
        v17 = *(v17 + 1584);
      }

      while (v17);
      v19 = 0;
      *(v18 + 1584) = v12;
    }

    else
    {
      v19 = 0;
      *a1 = v12;
    }
  }

  else
  {
    v19 = 2148859907;
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v21 = *MEMORY[0x277CE5818];
      if (IsOSFaultDisabled)
      {
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          SaveSTUNRequest_cold_2();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
      {
        SaveSTUNRequest_cold_1();
      }
    }
  }

  return v19;
}

uint64_t ProcessEvent(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v149 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  memset(v147, 170, sizeof(v147));
  *&v146[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v145[1] = v11;
  *v146 = v11;
  v145[0] = v11;
  *(v144 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v143[1] = v11;
  v144[0] = v11;
  v143[0] = v11;
  v142[3] = v11;
  v142[2] = v11;
  v142[1] = v11;
  v142[0] = v11;
  memset(v141, 170, 25);
  v140 = 0xAAAAAAAAAAAAAAAALL;
  v139 = v11;
  v138 = v11;
  v128 = 1472;
  v127 = 0;
  v126 = 0;
  cf = 0;
  v12 = *(v9 + 184);
  v13 = v5[2];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v9;
      v17 = v3;
      v18 = v5;
      v19 = v10;
      v20 = IPPORTToStringWithSize(v145, v13 + 68, 0x36uLL);
      v21 = IPPORTToStringWithSize(v143, v13 + 108, 0x36uLL);
      v22 = *(v13 + 148);
      v23 = "(relay) ";
      *buf = 136316418;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      if (!v22)
      {
        v23 = " ";
      }

      *&buf[14] = "ProcessEvent";
      *&buf[22] = 1024;
      *&buf[24] = 968;
      *&buf[28] = 2080;
      *&buf[30] = v20;
      v10 = v19;
      v5 = v18;
      v3 = v17;
      v9 = v16;
      *&buf[38] = 2080;
      *&buf[40] = v21;
      *&buf[48] = 2080;
      *&buf[50] = v23;
      _os_log_impl(&dword_23D497000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ***** event (%s->%s) fired %s*****", buf, 0x3Au);
    }
  }

  if (!IsIPPORTValid(v13 + 108) || (*(v13 + 108) & 1) == 0 && ((v24 = *(v13 + 128), v24 == -1408237568) || v24 == 167772160 || v24 == -1062731776))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v25;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessEvent";
        *&buf[22] = 1024;
        *&buf[24] = 974;
        v27 = " [%s] %s:%d ** skip invalid remote IPPort.";
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

  if (*(v9 + 764) && !*(v13 + 148) && (*(v13 + 28) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v31;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessEvent";
        *&buf[22] = 1024;
        *&buf[24] = 980;
        v27 = " [%s] %s:%d *** skip IPv4 P2P event.";
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

  v123 = v7;
  v32 = *(v9 + 200);
  if (v32 < 1)
  {
LABEL_27:
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v36;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessEvent";
        *&buf[22] = 1024;
        *&buf[24] = 988;
        *&buf[28] = 1024;
        *&buf[30] = 988;
        _os_log_impl(&dword_23D497000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEConnCheck.c:%d: candidate pair not found", buf, 0x22u);
      }
    }

    FreeEvent(v5);
    v30 = 2148859926;
    goto LABEL_31;
  }

  v33 = 0;
  v34 = 0;
  v35 = 400 * v32;
  while (!MatchCandidatePairWithIDs(v12 + v33, (v13 + 14), (v13 + 4)))
  {
    ++v34;
    v33 += 400;
    if (v35 == v33)
    {
      goto LABEL_27;
    }
  }

  v122 = v10;
  v40 = *(v9 + 200);
  if (v40 < 1)
  {
    goto LABEL_112;
  }

  v41 = 0;
  v42 = 0;
  v43 = v12 + v33;
  v44 = 400 * v40;
  v45 = -1;
  v46 = -1;
  do
  {
    if (v34 == v42 || *(v12 + v41 + 296) != 9 || (*(v12 + v41 + 24) & 1) != (*(v43 + 24) & 1))
    {
      goto LABEL_63;
    }

    v47 = v12 + v41;
    if (*(v12 + v41 + 24))
    {
      v48 = *(v47 + 44);
      v49 = *(v47 + 52);
      if (v48 != *(v43 + 44) || v49 != *(v43 + 52))
      {
        goto LABEL_63;
      }
    }

    else if (*(v47 + 44) != *(v43 + 44))
    {
      goto LABEL_63;
    }

    if (*(v12 + v41 + 60) != *(v43 + 60) || (*(v12 + v41 + 172) & 1) != (*(v43 + 172) & 1))
    {
      goto LABEL_63;
    }

    v51 = v12 + v41;
    if (*(v12 + v41 + 172))
    {
      v52 = *(v51 + 192);
      v53 = *(v51 + 200);
      if (v52 != *(v43 + 192) || v53 != *(v43 + 200))
      {
        goto LABEL_63;
      }
    }

    else if (*(v51 + 192) != *(v43 + 192))
    {
      goto LABEL_63;
    }

    if (*(v12 + v41 + 208) == *(v43 + 208))
    {
      v55 = *(v12 + v41 + 4) == 5 && *(v12 + v41 + 152) == 5;
      v56 = *(v43 + 4) == 5 && *(v43 + 152) == 5;
      if (v55 == v56)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v115 = VRTraceErrorLogLevelToCSTR();
          v116 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = v115;
            *&buf[12] = 2080;
            *&buf[14] = "ProcessEvent";
            *&buf[22] = 1024;
            *&buf[24] = 999;
            *&buf[28] = 1024;
            *&buf[30] = v34;
            *&buf[34] = 1024;
            *&buf[36] = v42;
            _os_log_impl(&dword_23D497000, v116, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Candidate pair [%d] is treated as duplicate of [%d]", buf, 0x28u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v117 = VRTraceErrorLogLevelToCSTR();
          v118 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v119 = IPPORTToStringWithSize(v145, v43 + 24, 0x36uLL);
            v120 = IPPORTToStringWithSize(v143, v43 + 172, 0x36uLL);
            *buf = 136316162;
            *&buf[4] = v117;
            *&buf[12] = 2080;
            *&buf[14] = "ProcessEvent";
            *&buf[22] = 1024;
            *&buf[24] = 1016;
            *&buf[28] = 2080;
            *&buf[30] = v119;
            *&buf[38] = 2080;
            *&buf[40] = v120;
            _os_log_impl(&dword_23D497000, v118, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** flush all duplicated BINDING_REQUEST: %s -> %s", buf, 0x30u);
          }
        }

        v121 = *(v9 + 160);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 0x40000000;
        *&buf[16] = __FlushEventsForCandidatePair_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_0;
        *&buf[32] = v43;
        FreeEventsMatchingPredicate(v121, buf);
        goto LABEL_16;
      }
    }

LABEL_63:
    if (*(v12 + v41 + 356))
    {
      if (*(v12 + v41 + 376))
      {
        v45 = v42;
      }

      else
      {
        v46 = v42;
      }
    }

    ++v42;
    v41 += 400;
  }

  while (v44 != v41);
  if (v45 == -1)
  {
    goto LABEL_112;
  }

  v57 = *(v43 + 24) & 1;
  v58 = v12 + 400 * v45;
  if (v57 != (*(v58 + 24) & 1))
  {
    goto LABEL_89;
  }

  if (v57)
  {
    if (*(v43 + 44) == *(v58 + 44) && *(v43 + 52) == *(v58 + 52))
    {
      goto LABEL_78;
    }

    goto LABEL_89;
  }

  if (*(v43 + 44) != *(v58 + 44))
  {
    goto LABEL_89;
  }

LABEL_78:
  if (*(v43 + 60) != *(v58 + 60) || (*(v43 + 172) & 1) != (*(v58 + 172) & 1))
  {
LABEL_89:
    if (v46 == -1)
    {
      goto LABEL_112;
    }

    v61 = v12 + 400 * v46;
    if (v57 != (*(v61 + 24) & 1))
    {
      goto LABEL_110;
    }

    if (v57)
    {
      if (*(v43 + 44) != *(v61 + 44) || *(v43 + 52) != *(v61 + 52))
      {
        goto LABEL_110;
      }
    }

    else if (*(v43 + 44) != *(v61 + 44))
    {
      goto LABEL_110;
    }

    if (*(v43 + 60) != *(v61 + 60) || (*(v43 + 172) & 1) != (*(v61 + 172) & 1))
    {
      goto LABEL_110;
    }

    if (*(v43 + 172))
    {
      if (*(v43 + 192) != *(v61 + 192) || *(v43 + 200) != *(v61 + 200))
      {
        goto LABEL_110;
      }
    }

    else if (*(v43 + 192) != *(v61 + 192))
    {
LABEL_110:
      v64 = *(v122 + 88);
      if ((IsBetterCandidatePair(v9, v64, 1, v34, v45) & 1) != 0 || (IsBetterCandidatePair(v9, v64, 0, v34, v46) & 1) != 0 || *(v43 + 4) == 5 && *(v43 + 152) == 5)
      {
        goto LABEL_112;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_16;
      }

      v81 = VRTraceErrorLogLevelToCSTR();
      v82 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v83 = IPPORTToStringWithSize(v145, v43 + 24, 0x36uLL);
      v84 = IPPORTToStringWithSize(v143, v43 + 172, 0x36uLL);
      *buf = 136316162;
      *&buf[4] = v81;
      *&buf[12] = 2080;
      *&buf[14] = "ProcessEvent";
      *&buf[22] = 1024;
      *&buf[24] = 1032;
      *&buf[28] = 2080;
      *&buf[30] = v83;
      *&buf[38] = 2080;
      *&buf[40] = v84;
      v27 = " [%s] %s:%d ** skip inferior BINDING_REQUEST: %s -> %s";
      v28 = v82;
      v29 = 48;
      goto LABEL_15;
    }

    if (*(v43 + 208) == *(v61 + 208))
    {
      goto LABEL_112;
    }

    goto LABEL_110;
  }

  if (*(v43 + 172))
  {
    if (*(v43 + 192) == *(v58 + 192) && *(v43 + 200) == *(v58 + 200))
    {
      goto LABEL_88;
    }

    goto LABEL_89;
  }

  if (*(v43 + 192) != *(v58 + 192))
  {
    goto LABEL_89;
  }

LABEL_88:
  if (*(v43 + 208) != *(v58 + 208))
  {
    goto LABEL_89;
  }

LABEL_112:
  v65 = (v12 + 400 * v34);
  v66 = v65[74];
  v67 = v66 == 3 || v66 >= 6;
  if (v67 && !v65[89])
  {
LABEL_123:
    if (*(v13 + 180))
    {
      v68 = *(v9 + 840);
      goto LABEL_125;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v74 = VRTraceErrorLogLevelToCSTR();
    v75 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v76 = ICEUNToString(v142, v13 + 4);
    v77 = *(v9 + 840);
    v78 = (&g_aICEState)[2 * v65[74]];
    v79 = *(v13 + 148);
    v80 = *(v13 + 152) > 0;
    *buf = 136316930;
    *&buf[4] = v74;
    *&buf[12] = 2080;
    *&buf[14] = "ProcessEvent";
    *&buf[22] = 1024;
    *&buf[24] = 1045;
    *&buf[28] = 2080;
    *&buf[30] = v76;
    *&buf[38] = 1024;
    *&buf[40] = v77;
    *&buf[44] = 2080;
    *&buf[46] = v78;
    *&buf[54] = 1024;
    *&buf[56] = v80;
    *&buf[60] = 1024;
    *&buf[62] = v79;
    v27 = " [%s] %s:%d ** skip BINDING_REQUEST for [%s], role [%d], state [%s], nominate [%d], relay [%d]";
    v28 = v75;
    v29 = 66;
LABEL_15:
    _os_log_impl(&dword_23D497000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
    goto LABEL_16;
  }

  v68 = *(v9 + 840);
  if (v68 != 2 && (v68 != 1 || v66 != 9))
  {
    goto LABEL_136;
  }

  if (v65[89] && !*(v13 + 152))
  {
    goto LABEL_123;
  }

LABEL_125:
  if (v68 != 2)
  {
    goto LABEL_136;
  }

  if (v66 > 5)
  {
    if (v66 != 9 || *(v13 + 152) < 1)
    {
      goto LABEL_136;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v70 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315650;
    *&buf[4] = v70;
    *&buf[12] = 2080;
    *&buf[14] = "ProcessEvent";
    *&buf[22] = 1024;
    *&buf[24] = 1061;
    v27 = " [%s] %s:%d ** skip nomination request for selected candidate pair.";
    goto LABEL_14;
  }

  if (*(v13 + 152) >= 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v69 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v69;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessEvent";
        *&buf[22] = 1024;
        *&buf[24] = 1053;
        v27 = " [%s] %s:%d ** skip old nomination request.";
        goto LABEL_14;
      }
    }

LABEL_16:
    FreeEvent(v5);
    v30 = 0;
    goto LABEL_31;
  }

LABEL_136:
  if (!*(v13 + 148))
  {
    goto LABEL_168;
  }

  pthread_mutex_lock((v122 + 568));
  v71 = *(v122 + 632);
  if (!v71)
  {
LABEL_150:
    pthread_mutex_unlock((v122 + 568));
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v73 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315650;
    *&buf[4] = v73;
    *&buf[12] = 2080;
    *&buf[14] = "ProcessEvent";
    *&buf[22] = 1024;
    *&buf[24] = 1078;
    v27 = " [%s] %s:%d ** skip BINDING_REQUEST over relay connection.";
    goto LABEL_14;
  }

  while (2)
  {
    if (*(v71 + 36) != *(v9 + 148) || (*(v71 + 124) & 1) != (*(v13 + 28) & 1))
    {
LABEL_149:
      v71 = *(v71 + 328);
      if (!v71)
      {
        goto LABEL_150;
      }

      continue;
    }

    break;
  }

  if (*(v71 + 124))
  {
    if (*(v71 + 144) == *(v13 + 48) && *(v71 + 152) == *(v13 + 56))
    {
      goto LABEL_148;
    }

    goto LABEL_149;
  }

  if (*(v71 + 144) != *(v13 + 48))
  {
    goto LABEL_149;
  }

LABEL_148:
  if (*(v71 + 160) != *(v13 + 64))
  {
    goto LABEL_149;
  }

  pthread_mutex_unlock((v122 + 568));
  if (v3)
  {
    *v3 = 1;
  }

  v85 = (v9 + 232);
  if (!*(v9 + 232))
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v105 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315650;
    *&buf[4] = v105;
    *&buf[12] = 2080;
    *&buf[14] = "ProcessEvent";
    *&buf[22] = 1024;
    *&buf[24] = 1103;
    v27 = " [%s] %s:%d ** skip BINDING_REQUEST, relay server not found.";
LABEL_14:
    v28 = v26;
    v29 = 28;
    goto LABEL_15;
  }

  if (*(v9 + 232) == 1)
  {
    v86 = micro();
    if (!*(v9 + 400))
    {
      v87 = v86;
      if (v86 - *(v9 + 408) > 0.5)
      {
        SendRelayChannelBindRequest(v9, *(v122 + 16), *(v122 + 8), v13 + 28, (v13 + 108), v123, *(v9 + 744));
        pthread_mutex_lock((v122 + 568));
        *(v71 + 32) = 1;
        v88 = *(v13 + 140);
        v89 = *(v13 + 124);
        *(v71 + 272) = *(v13 + 108);
        *(v71 + 288) = v89;
        *(v71 + 304) = v88;
        pthread_mutex_unlock((v122 + 568));
        *(v9 + 408) = v87;
      }
    }

LABEL_168:
    bzero(__b, 0x480uLL);
    __b[6] = 1010;
    if (*(v13 + 172))
    {
      v90 = *(v9 + 880);
      if ((*(v9 + 888) < 0x6Du || *(v9 + 840) != 2 || *(v13 + 152) <= 0) && v90 > 6)
      {
        v90 = 1;
      }
    }

    else
    {
      v90 = 0;
    }

    if (*(v9 + 840) != 2)
    {
      goto LABEL_191;
    }

    if (*(v13 + 148))
    {
      ICEGetCandidatesForPeer(v9, 1, &v127, &v126);
    }

    if (*(v13 + 152) < 1)
    {
      goto LABEL_191;
    }

    pthread_mutex_lock((v9 + 16));
    if (*(v9 + 896))
    {
      *buf = 0;
      dispatch_time(0, 5000000000);
      v91 = *(v9 + 896);
      SKEState_CopyBlobSync();
      if (!cf)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessEvent_cold_2();
          }
        }

        pthread_mutex_unlock((v9 + 16));
        v30 = 2148859927;
        goto LABEL_246;
      }

LABEL_190:
      pthread_mutex_unlock((v9 + 16));
LABEL_191:
      if (*(v13 + 172))
      {
        v92 = *(v9 + 872) != 0;
      }

      else
      {
        v92 = 0;
      }

      BindingRequest = MakeBindingRequest((v13 + 4), *v13, __b, *(v9 + 840), *(v9 + 848), (v13 + 152), (v9 + 856), v92, v90, v65[92], v127, v126, *(v9 + 204), cf);
      if ((BindingRequest & 0x80000000) != 0)
      {
        v30 = BindingRequest;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessEvent_cold_8();
          }
        }
      }

      else
      {
        v30 = STUNEncodeMessage(__b, v147, &v128, 0, v94);
        if ((v30 & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ProcessEvent_cold_7();
            }
          }
        }

        else if (*(v13 + 148))
        {
          memset(buf, 170, sizeof(buf));
          v95 = (v9 + 232);
          v96 = v123;
          if (*(v9 + 232))
          {
            if (*(v9 + 232) == 1)
            {
              v124 = v128;
              v97 = EncodeChannelDataMessage(*(v9 + 234), v147, &v124, 1472, buf);
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v98 = VRTraceErrorLogLevelToCSTR();
                v99 = *MEMORY[0x277CE5818];
                v100 = *MEMORY[0x277CE5818];
                if (*MEMORY[0x277CE5808] == 1)
                {
                  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                  {
                    *v129 = 136315906;
                    v130 = v98;
                    v131 = 2080;
                    v132 = "ProcessEvent";
                    v133 = 1024;
                    v134 = 1182;
                    v135 = 1024;
                    v136 = v97;
                    _os_log_impl(&dword_23D497000, v99, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d EncodeChannelDataMessage returns error (%08X)", v129, 0x22u);
                  }
                }

                else if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
                {
                  ProcessEvent_cold_4();
                }
              }

              v138 = *(v9 + 236);
              v139 = *(v9 + 252);
              v140 = *(v9 + 268);
              v101 = (*(v122 + 16))(*(v122 + 8), *(v9 + 148), buf, v124, v13 + 28, &v138, 1, 0);
LABEL_228:
              v30 = v101;
              if ((v101 & 0x80000000) == 0)
              {
                goto LABEL_229;
              }

              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                {
                  ProcessEvent_cold_6();
                }
              }
            }

            else
            {
              v30 = 2148859920;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v104 = VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                {
                  ProcessEvent_cold_5(v104, v95);
                }
              }
            }
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v102 = VRTraceErrorLogLevelToCSTR();
            v103 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *v129 = 136315650;
              v130 = v102;
              v131 = 2080;
              v132 = "ProcessEvent";
              v133 = 1024;
              v134 = 1184;
              _os_log_impl(&dword_23D497000, v103, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** skip BINDING_REQUEST, relay server not found.", v129, 0x1Cu);
            }
          }
        }

        else
        {
          v138 = *(v13 + 108);
          v139 = *(v13 + 124);
          v140 = *(v13 + 140);
          v96 = v123;
          if ((_os_feature_enabled_impl() & 1) == 0 && !*(v9 + 760))
          {
            v101 = (*(v122 + 16))(*(v122 + 8), *(v9 + 148), v147, v128, v13 + 28, &v138, 1, 0);
            goto LABEL_228;
          }

LABEL_229:
          v107 = SaveSTUNRequest(v96, v147, v128, v13 + 28, (v13 + 108), 0);
          if ((v107 & 0x80000000) != 0)
          {
            v30 = v107;
          }

          else
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v108 = VRTraceErrorLogLevelToCSTR();
              v109 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                if (*(v13 + 152) <= 0)
                {
                  v110 = &unk_23D4C9CFB;
                }

                else
                {
                  v110 = "NOMINATION ";
                }

                TransID = MakeTransID(v141, &__b[3]);
                v112 = IPPORTToStringWithSize(v143, &v138, 0x36uLL);
                v113 = ICEUNToString(v142, v13 + 4);
                *buf = 136316674;
                *&buf[4] = v108;
                *&buf[12] = 2080;
                *&buf[14] = "ProcessEvent";
                *&buf[22] = 1024;
                *&buf[24] = 1222;
                *&buf[28] = 2080;
                *&buf[30] = v110;
                *&buf[38] = 2080;
                *&buf[40] = TransID;
                *&buf[48] = 2080;
                *&buf[50] = v112;
                *&buf[58] = 2080;
                *&buf[60] = v113;
                _os_log_impl(&dword_23D497000, v109, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** %sBINDING_REQUEST [%s] to [%s] USERNAME[%s]", buf, 0x44u);
              }
            }

            v114 = *(v9 + 200);
            if (v114 >= 1)
            {
              while (!MatchCandidatePairWithIDs(v12, (v13 + 14), (v13 + 4)))
              {
                v12 += 400;
                if (!--v114)
                {
                  goto LABEL_245;
                }
              }

              UpdateICEState((v12 + 296), 1);
            }

LABEL_245:
            v30 = 0;
          }
        }
      }
    }

    else
    {
      if (!*(v9 + 904))
      {
        goto LABEL_190;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessEvent_cold_3();
        }
      }

      pthread_mutex_unlock((v9 + 16));
      v30 = 2148859937;
    }

LABEL_246:
    if (v127)
    {
      free(v127);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    FreeEvent(v5);
    FreeSTUNMessage(__b);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v106 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessEvent_cold_1(v106, v85);
      }
    }

    v30 = 2148859920;
    FreeEvent(v5);
  }

LABEL_31:
  v38 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t IsBetterCandidatePair(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5)
{
  if (a2)
  {
    return 1;
  }

  if ((a4 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = *(a1 + 200);
  if (v7 < a4)
  {
    return 0;
  }

  result = 1;
  if ((a5 & 0x80000000) == 0 && v7 >= a5)
  {
    v8 = *(a1 + 184);
    v9 = (v8 + 400 * a4);
    v10 = (v8 + 400 * a5);
    v11 = v10[6];
    v12 = v11 & 4;
    v13 = (v11 >> 2) & 1;
    v14 = v10[43];
    v15 = v10[1];
    v16 = v9[6];
    v17 = v16 & 4;
    v18 = (v16 >> 2) & 1;
    v19 = v9[43];
    v20 = v9[1];
    v21 = v19 & 4;
    if (a3)
    {
      if (!(v17 | v21))
      {
        v23 = v20 != 5 && v15 == 5;
        result = 1;
        if ((v11 & 4) != 0 || (v14 & 4) != 0)
        {
          return result;
        }

        goto LABEL_59;
      }

      if ((v16 & 4) != 0 && v21 != 0)
      {
        if ((v11 & 4) == 0 || (v14 & 4) == 0)
        {
          return 0;
        }

        if (v20 != 5 && v15 == 5)
        {
          return 1;
        }

LABEL_60:
        if (v15 == 5 || v20 == 5)
        {
          return 0;
        }

        return ((v16 & 1) == 0) & v11;
      }

      v28 = v14 & 4;
      if (!(v12 | v28))
      {
        return 0;
      }

      if ((v11 & 4) != 0 && v28 != 0)
      {
        return 1;
      }

      if (v13 != v18)
      {
        return 0;
      }

      if (v20 != 5 && v15 == 5)
      {
        return 1;
      }

LABEL_83:
      result = 0;
      if (v15 == 5 || v20 == 5)
      {
        return result;
      }

      return ((v16 & 1) == 0) & v11;
    }

    if ((v16 & 4) == 0 || v21 == 0)
    {
      if (v17 | v21)
      {
        v35 = v14 & 4;
        if ((v11 & 4) != 0 && v35 != 0)
        {
          return 0;
        }

        if (v12 | v35)
        {
          if (v13 != v18)
          {
            return 0;
          }

          if (v20 == 5 || v15 != 5)
          {
            goto LABEL_83;
          }
        }
      }

      else
      {
        if (v12 | v14 & 4)
        {
          return 0;
        }

        if (v20 == 5 || v15 != 5)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v23 = v20 != 5 && v15 == 5;
      if ((v11 & 4) != 0 && (v14 & 4) != 0)
      {
LABEL_59:
        if (v23)
        {
          return result;
        }

        goto LABEL_60;
      }
    }
  }

  return result;
}

uint64_t RemoveConnectivityCheckResult(uint64_t a1, int a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  *&v39[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38[1] = v6;
  *v39 = v6;
  v38[0] = v6;
  *(v37 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v36[1] = v6;
  v37[0] = v6;
  v36[0] = v6;
  *&v35[14] = 0xAAAAAAAAAAAAAAAALL;
  v34[1] = v6;
  *v35 = v6;
  v34[0] = v6;
  pthread_rwlock_wrlock((a1 + 240));
  v19 = a1;
  v7 = *(a1 + 440);
  if (v7)
  {
    v8 = &unk_23D4C9CFB;
    v9 = MEMORY[0x277CE5818];
    v10 = (v19 + 440);
    do
    {
      if (*v7 == a2 && matchOneConnectedResultWithOneCP(v7, a3))
      {
        *(a3 + 364) = 0;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = IPPORTToStringWithSize(v38, a3 + 24, 0x36uLL);
            v14 = v8;
            v15 = IPPORTToStringWithSize(v36, a3 + 24, 0x36uLL);
            v16 = IPPORTToStringWithSize(v34, a3 + 172, 0x36uLL);
            *buf = 136316674;
            v21 = v11;
            v22 = 2080;
            v23 = "RemoveConnectivityCheckResult";
            v24 = 1024;
            v25 = 1442;
            v26 = 1024;
            v27 = a2;
            v28 = 2080;
            v29 = v13;
            v30 = 2080;
            v31 = v15;
            v8 = v14;
            v32 = 2080;
            v33 = v16;
            _os_log_impl(&dword_23D497000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Removed one result [call:%u local:%s src:%s dst:%s].", buf, 0x40u);
          }
        }

        *v10 = v7[38];
        free(v7);
      }

      else
      {
        v10 = v7 + 38;
      }

      v7 = *v10;
    }

    while (*v10);
  }

  pthread_rwlock_unlock((v19 + 240));
  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t matchOneConnectedResultWithOneCP(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *a2 || (*(a1 + 28) & 1) != (*(a2 + 64) & 1))
  {
    return 0;
  }

  if (*(a1 + 28))
  {
    if (*(a1 + 48) != *(a2 + 84) || *(a1 + 56) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if (*(a1 + 48) != *(a2 + 84))
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 100) || (*(a1 + 108) & 1) != (*(a2 + 24) & 1))
  {
    return 0;
  }

  if (*(a1 + 108))
  {
    if (*(a1 + 128) != *(a2 + 44) || *(a1 + 136) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if (*(a1 + 128) != *(a2 + 44))
  {
    return 0;
  }

  if (*(a1 + 144) != *(a2 + 60))
  {
    return 0;
  }

  v4 = *(a1 + 20);
  if (v4 != (*(a2 + 4) == 5))
  {
    return 0;
  }

  if (!v4)
  {
    v5 = *(a2 + 172) & 1;
    goto LABEL_36;
  }

  v5 = *(a2 + 172) & 1;
  if ((*(a1 + 68) & 1) != v5)
  {
    goto LABEL_36;
  }

  if (*(a1 + 68))
  {
    if (*(a1 + 88) != *(a2 + 192) || *(a1 + 96) != *(a2 + 200))
    {
      goto LABEL_36;
    }
  }

  else if (*(a1 + 88) != *(a2 + 192))
  {
    goto LABEL_36;
  }

  if (*(a1 + 104) == *(a2 + 208))
  {
    return 1;
  }

LABEL_36:
  if ((*(a1 + 148) & 1) == v5)
  {
    if (*(a1 + 148))
    {
      if (*(a1 + 168) != *(a2 + 192) || *(a1 + 176) != *(a2 + 200))
      {
        return 0;
      }

      return *(a1 + 184) == *(a2 + 208);
    }

    if (*(a1 + 168) == *(a2 + 192))
    {
      return *(a1 + 184) == *(a2 + 208);
    }
  }

  return 0;
}

uint64_t DemoteConnectivityCheckResult(uint64_t a1, int a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  *&v34[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[1] = v6;
  *v34 = v6;
  v33[0] = v6;
  *(v32 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v31[1] = v6;
  v32[0] = v6;
  v31[0] = v6;
  *&v30[14] = 0xAAAAAAAAAAAAAAAALL;
  v29[1] = v6;
  *v30 = v6;
  v29[0] = v6;
  pthread_rwlock_wrlock((a1 + 240));
  v7 = *(a1 + 440);
  if (v7)
  {
    while (*v7 != a2 || !matchOneConnectedResultWithOneCP(v7, a3))
    {
      v7 = *(v7 + 304);
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v7 + 296);
        v13 = 136316930;
        v14 = v8;
        v15 = 2080;
        v16 = "DemoteConnectivityCheckResult";
        v17 = 1024;
        v18 = 1469;
        v19 = 1024;
        v20 = v10;
        v21 = 1024;
        v22 = a2;
        v23 = 2080;
        v24 = IPPORTToStringWithSize(v33, a3 + 24, 0x36uLL);
        v25 = 2080;
        v26 = IPPORTToStringWithSize(v31, a3 + 24, 0x36uLL);
        v27 = 2080;
        v28 = IPPORTToStringWithSize(v29, a3 + 172, 0x36uLL);
        _os_log_impl(&dword_23D497000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Demote one result %d [call:%u local:%s src:%s dst:%s].", &v13, 0x46u);
      }
    }

    if (*(v7 + 296))
    {
      *(v7 + 296) = 0;
    }
  }

LABEL_11:
  pthread_rwlock_unlock((a1 + 240));
  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t InsertEvent(pthread_mutex_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v89 = *MEMORY[0x277D85DE8];
  *&v88[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v87[1] = v12;
  *v88 = v12;
  v87[0] = v12;
  *(v86 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v85[1] = v12;
  v86[0] = v12;
  v85[0] = v12;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1 && a2 && a3 > 0)
  {
    v66 = a6;
    if (ErrorLogLevelForModule >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315650;
        *(buf + 4) = v14;
        WORD6(buf[0]) = 2080;
        *(buf + 14) = "InsertEvent";
        WORD3(buf[1]) = 1024;
        DWORD2(buf[1]) = 1957;
        _os_log_impl(&dword_23D497000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ***** Insert conn check events *****", buf, 0x1Cu);
      }
    }

    v16 = EQLastExpire(a1);
    v17 = micro();
    if (!a7 && v16 != 0x7FFFFFFF)
    {
      v17 = a4 / 1000.0 + v17;
    }

    v18 = 0;
    v19 = v66;
    do
    {
      memset(&buf[6] + 8, 0, 80);
      memset(&buf[3] + 8, 0, 44);
      v20 = a2 + 400 * v18;
      v21 = *(v20 + 4);
      LODWORD(buf[0]) = *v20;
      *(buf + 4) = *(v20 + 160);
      *(buf + 14) = *(v20 + 12);
      *(&buf[3] + 12) = *(v20 + 96);
      *(&buf[6] + 4) = *(v20 + 56);
      *(&buf[8] + 12) = *(v20 + 204);
      *(&buf[2] + 8) = 0u;
      *(&buf[1] + 8) = 0u;
      WORD6(buf[0]) = 256;
      WORD3(buf[1]) = 256;
      v22 = *(v20 + 80);
      *(&buf[1] + 12) = *(v20 + 64);
      *(&buf[2] + 12) = v22;
      v23 = *(v20 + 24);
      *(&buf[5] + 4) = *(v20 + 40);
      *(&buf[4] + 4) = v23;
      v24 = *(v20 + 172);
      *(&buf[7] + 12) = *(v20 + 188);
      *(&buf[6] + 12) = v24;
      v25 = v21 == 5 && *(v20 + 152) == 5;
      memset(&buf[9] + 8, 0, 20);
      v26 = *(v20 + 384);
      DWORD1(buf[9]) = v25;
      LODWORD(buf[11]) = v26;
      if (v19)
      {
        *(&buf[9] + 8) = *v19;
        DWORD2(buf[10]) = *(v19 + 16);
      }

      HIDWORD(buf[10]) = *(v20 + 64) & 4;
      v27 = *a5;
      if (*a5 == 30000.0)
      {
        DWORD1(buf[11]) = 1;
      }

      v28 = (BYTE12(buf[1]) & 1);
      v29 = *(a5 + 72);
      if (v29 >= v28)
      {
        v30 = *(a5 + 16);
        v69 = *(a5 + 8);
        v31 = *(a5 + 24);
        v32 = *(a5 + 40);
        v70 = *(a5 + 56);
        v71 = *(a5 + 48);
        if (v32)
        {
          v33 = v32 + 1;
        }

        else
        {
          v33 = 0;
        }

        do
        {
          v34 = malloc_type_malloc(0x20uLL, 0x10A0040D8B55D2AuLL);
          if (v34)
          {
            v35 = v34;
            v34[1] = v17 + v28;
            v36 = vcvtd_n_f64_u32(arc4random() & 0x7FFFFFFF, 0x1FuLL);
            if (v33)
            {
              v37 = v71 + v36 * v70;
              --v33;
            }

            else
            {
              v37 = v27 + v36 * v31;
              v27 = v69 * v27;
              if (v27 > v30)
              {
                v27 = v30 + vcvtd_n_f64_u32(arc4random() & 0x7FFFFFFF, 0x1FuLL) * v31;
              }

              v33 = v32;
            }

            v28 = v28 + v37;
            v41 = malloc_type_calloc(1uLL, 0xB8uLL, 0x1000040D0D3326AuLL);
            *(v35 + 2) = v41;
            if (v41)
            {
              v42 = buf[0];
              v43 = buf[1];
              v44 = buf[3];
              v41[2] = buf[2];
              v41[3] = v44;
              *v41 = v42;
              v41[1] = v43;
              v45 = buf[4];
              v46 = buf[5];
              v47 = buf[7];
              v41[6] = buf[6];
              v41[7] = v47;
              v41[4] = v45;
              v41[5] = v46;
              v48 = buf[8];
              v49 = buf[9];
              v50 = buf[10];
              *(v41 + 22) = *&buf[11];
              v41[9] = v49;
              v41[10] = v50;
              v41[8] = v48;
              EQPush(a1, v35, -1);
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v51 = VRTraceErrorLogLevelToCSTR();
                v52 = *MEMORY[0x277CE5818];
                v53 = *MEMORY[0x277CE5818];
                if (*MEMORY[0x277CE5808] == 1)
                {
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                  {
                    v54 = IPPORTToStringWithSize(v87, &buf[4] + 4, 0x36uLL);
                    v55 = IPPORTToStringWithSize(v85, &buf[6] + 12, 0x36uLL);
                    v56 = *(v35 + 1);
                    *v72 = 136316418;
                    v73 = v51;
                    v74 = 2080;
                    v75 = "InsertEvent";
                    v76 = 1024;
                    v77 = 2041;
                    v78 = 2080;
                    v79 = v54;
                    v19 = v66;
                    v80 = 2080;
                    v81 = v55;
                    v82 = 2048;
                    v83 = v56;
                    _os_log_impl(&dword_23D497000, v52, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tevent %s->%s expires %f", v72, 0x3Au);
                  }
                }

                else if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                {
                  v60 = IPPORTToStringWithSize(v87, &buf[4] + 4, 0x36uLL);
                  v61 = IPPORTToStringWithSize(v85, &buf[6] + 12, 0x36uLL);
                  v62 = *(v35 + 1);
                  *v72 = 136316418;
                  v73 = v51;
                  v74 = 2080;
                  v75 = "InsertEvent";
                  v76 = 1024;
                  v77 = 2041;
                  v78 = 2080;
                  v79 = v60;
                  v19 = v66;
                  v80 = 2080;
                  v81 = v61;
                  v82 = 2048;
                  v83 = v62;
                  _os_log_debug_impl(&dword_23D497000, v52, OS_LOG_TYPE_DEBUG, " [%s] %s:%d \tevent %s->%s expires %f", v72, 0x3Au);
                }
              }
            }

            else
            {
              if (VRTraceGetErrorLogLevelForModule() >= 2)
              {
                v57 = VRTraceErrorLogLevelToCSTR();
                IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
                v59 = *MEMORY[0x277CE5818];
                if (IsOSFaultDisabled)
                {
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                  {
                    *v72 = 136315650;
                    v73 = v57;
                    v74 = 2080;
                    v75 = "InsertEvent";
                    v76 = 1024;
                    v77 = 2030;
                    _os_log_error_impl(&dword_23D497000, v59, OS_LOG_TYPE_ERROR, " [%s] %s:%d calloc payload failed", v72, 0x1Cu);
                  }
                }

                else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
                {
                  *v72 = 136315650;
                  v73 = v57;
                  v74 = 2080;
                  v75 = "InsertEvent";
                  v76 = 1024;
                  v77 = 2030;
                  _os_log_fault_impl(&dword_23D497000, v59, OS_LOG_TYPE_FAULT, " [%s] %s:%d calloc payload failed", v72, 0x1Cu);
                }
              }

              free(v35);
            }
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 2)
          {
            v38 = VRTraceErrorLogLevelToCSTR();
            v39 = VRTraceIsOSFaultDisabled();
            v40 = *MEMORY[0x277CE5818];
            if (v39)
            {
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                *v72 = 136315650;
                v73 = v38;
                v74 = 2080;
                v75 = "InsertEvent";
                v76 = 1024;
                v77 = 2011;
                _os_log_error_impl(&dword_23D497000, v40, OS_LOG_TYPE_ERROR, " [%s] %s:%d malloc event failed", v72, 0x1Cu);
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
            {
              *v72 = 136315650;
              v73 = v38;
              v74 = 2080;
              v75 = "InsertEvent";
              v76 = 1024;
              v77 = 2011;
              _os_log_fault_impl(&dword_23D497000, v40, OS_LOG_TYPE_FAULT, " [%s] %s:%d malloc event failed", v72, 0x1Cu);
            }
          }
        }

        while (v28 <= v29);
      }

      v17 = a4 / 1000.0 + v17;
      ++v18;
    }

    while (v18 != a3);
    v63 = 0;
  }

  else
  {
    v63 = 2148859905;
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        InsertEvent_cold_1();
      }
    }
  }

  v64 = *MEMORY[0x277D85DE8];
  return v63;
}

uint64_t ConnectivityCheckProc(void *a1)
{
  v220 = *MEMORY[0x277D85DE8];
  v2 = -2146107390;
  v193 = 0;
  v194 = 0;
  pthread_setname_np("com.apple.ICE.ConnCheckProc");
  if (!a1)
  {
    v2 = -2146107391;
    goto LABEL_336;
  }

  v195 = 0xAAAAAAAAAAAAAAAALL;
  v3 = *a1;
  v4 = a1[1];
  v5 = CheckInHandleDebug();
  free(a1);
  if (v5)
  {
    pthread_mutex_lock((v5 + 168));
    v6 = *(v5 + 232);
    if (!v6)
    {
LABEL_7:
      pthread_mutex_unlock((v5 + 168));
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ConnectivityCheckProc_cold_6();
        }
      }

      CheckOutHandleDebug();
      v2 = -2146107370;
      goto LABEL_336;
    }

    while (*(v6 + 148) != v3 || !ICERetainICEList(v6))
    {
      v6 = *(v6 + 912);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    pthread_mutex_unlock((v5 + 168));
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = "ConnectivityCheckProc";
        *&buf[22] = 1024;
        *&buf[24] = 2138;
        _os_log_impl(&dword_23D497000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectivity-check-thread-started", buf, 0x1Cu);
      }
    }

    v9 = *(v6 + 184);
    if (!v9 || (v10 = *(v6 + 200), v10 < 0))
    {
      LODWORD(v2) = -2146107391;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          v178 = *(v6 + 184);
          v179 = *(v6 + 200);
          *buf = 136316418;
          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = "ConnectivityCheckProc";
          *&buf[22] = 1024;
          *&buf[24] = 2142;
          *&buf[28] = 1024;
          *&buf[30] = 0;
          *&buf[34] = 2048;
          *&buf[36] = v178;
          *&buf[44] = 1024;
          *&buf[46] = v179;
          _os_log_error_impl(&dword_23D497000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d ConnectivityCheckProc failed (%08X)[%p, %d]", buf, 0x32u);
        }
      }

      goto LABEL_28;
    }

    if (v10)
    {
      inserted = InsertEvent(*(v6 + 160), v9, v10, 50, v5 + 640, 0, 0);
      if (inserted < 0)
      {
        LODWORD(v2) = inserted;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ConnectivityCheckProc_cold_1();
          }
        }

LABEL_28:
        v14 = 1;
        goto LABEL_36;
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = "ConnectivityCheckProc";
        *&buf[22] = 1024;
        *&buf[24] = 2158;
        _os_log_impl(&dword_23D497000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No candidate pairs yet. Continue with 0 candidate pair.", buf, 0x1Cu);
      }
    }

    *(v6 + 216) = micro();
    pthread_mutex_lock((v6 + 16));
    if (*(v6 + 136))
    {
      v192 = 0;
LABEL_34:
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      pthread_mutex_unlock((v6 + 16));
      v14 = 1;
LABEL_35:
      LODWORD(v2) = v192;
LABEL_36:
      pthread_mutex_lock((v5 + 96));
      v17 = *(v5 + 160);
      if (v17)
      {
        v18 = 0;
        do
        {
          if (*(v6 + 148) == *(v17 + 4))
          {
            ++v18;
          }

          v17 = *(v17 + 240);
        }

        while (v17);
        if (v18)
        {
          v19 = malloc_type_malloc(40 * v18, 0x100004053E81896uLL);
          if (v19)
          {
            v20 = v19;
            v21 = *(v5 + 160);
            if (v21)
            {
              LODWORD(v22) = 0;
              do
              {
                if (*(v6 + 148) == *(v21 + 4))
                {
                  v23 = &v19[40 * v22];
                  LODWORD(v22) = v22 + 1;
                  v24 = *(v21 + 8);
                  v25 = *(v21 + 24);
                  *(v23 + 4) = *(v21 + 40);
                  *v23 = v24;
                  *(v23 + 1) = v25;
                }

                v21 = *(v21 + 240);
              }

              while (v21);
              pthread_mutex_unlock((v5 + 96));
              if (v22 >= 1)
              {
                v22 = v22;
                v26 = v20;
                do
                {
                  (*(v5 + 16))(*(v5 + 8), *(v6 + 148), 0, 0, v26, 0, 0, 0);
                  v26 += 40;
                  --v22;
                }

                while (v22);
              }
            }

            else
            {
              pthread_mutex_unlock((v5 + 96));
            }

            free(v20);
            goto LABEL_293;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 2)
          {
            VRTraceErrorLogLevelToCSTR();
            IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
            v28 = *MEMORY[0x277CE5818];
            if (IsOSFaultDisabled)
            {
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ConnectivityCheckProc_cold_3();
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
            {
              ConnectivityCheckProc_cold_2();
            }
          }

          LODWORD(v2) = -2146107389;
        }
      }

      pthread_mutex_unlock((v5 + 96));
LABEL_293:
      if ((v2 & 0x80000000) != 0 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ConnectivityCheckProc_cold_4();
        }
      }

      pthread_mutex_lock((v5 + 168));
      pthread_mutex_lock((v6 + 16));
      *(v6 + 128) = 0;
      *(v6 + 420) = 6;
      v161 = *(v6 + 168);
      if (v161)
      {
        *(v6 + 168) = 0;
        free(v161);
      }

      v162 = *(v6 + 176);
      if (v162)
      {
        *(v6 + 176) = 0;
        free(v162);
      }

      v163 = *(v6 + 184);
      if (v163)
      {
        *(v6 + 184) = 0;
        free(v163);
      }

      v164 = *(v6 + 160);
      if (v164)
      {
        *(v6 + 160) = 0;
        FreeEQ(v164);
      }

      v165 = *(v6 + 776);
      if (v165)
      {
        free(v165);
        *(v6 + 768) = 0u;
      }

      v166 = *(v6 + 792);
      if (v166)
      {
        free(v166);
        *(v6 + 784) = 0u;
      }

      v167 = *(v6 + 816);
      if (v167)
      {
        free(v167);
        *(v6 + 808) = 0u;
      }

      v168 = *(v6 + 832);
      if (v168)
      {
        free(v168);
        *(v6 + 824) = 0u;
      }

      *(v6 + 192) = 0;
      *(v6 + 200) = 0;
      pthread_cond_signal((v6 + 80));
      pthread_mutex_unlock((v6 + 16));
      --*(v6 + 416);
      if ((v14 & 1) == 0)
      {
        if (v2 == -2146107369)
        {
          pthread_rwlock_wrlock((v5 + 240));
          if (*(v5 + 440))
          {
            LODWORD(v2) = 0;
          }

          else
          {
            LODWORD(v2) = -2146107369;
          }

          (*(v5 + 32))(*(v5 + 8), *(v6 + 148));
          while (1)
          {
            v169 = *(v5 + 440);
            if (!v169)
            {
              break;
            }

            *(v5 + 440) = v169[38];
            free(v169);
          }

          pthread_rwlock_unlock((v5 + 240));
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ConnectivityCheckProc_cold_5();
            }
          }

          (*(v5 + 32))(*(v5 + 8), *(v6 + 148), 0, &v193 + 4, v193, 0, 0);
        }
      }

      ICEReleaseAndFreeICEList(v6, v5, 1, v4);
LABEL_327:
      v170 = v194;
      if (v194)
      {
        do
        {
          v171 = v170[198];
          free(v170);
          v194 = v171;
          v170 = v171;
        }

        while (v171);
      }

      v194 = 0;
      pthread_mutex_unlock((v5 + 168));
      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v172 = VRTraceErrorLogLevelToCSTR();
        v173 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v172;
          *&buf[12] = 2080;
          *&buf[14] = "ConnectivityCheckProc";
          *&buf[22] = 1024;
          *&buf[24] = 2390;
          *&buf[28] = 1024;
          *&buf[30] = v2;
          _os_log_impl(&dword_23D497000, v173, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ConnectivityCheckProc thread ended(%08X)", buf, 0x22u);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v174 = VRTraceErrorLogLevelToCSTR();
        v175 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v174;
          *&buf[12] = 2080;
          *&buf[14] = "ConnectivityCheckProc";
          *&buf[22] = 1024;
          *&buf[24] = 2392;
          _os_log_impl(&dword_23D497000, v175, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d connectivity-check-thread-stopped", buf, 0x1Cu);
        }
      }

      CheckOutHandleDebug();
      v2 = v2;
      goto LABEL_336;
    }

    v192 = 0;
    while (1)
    {
      if (*(v5 + 448))
      {
        goto LABEL_34;
      }

      pthread_mutex_unlock((v6 + 16));
      v29 = *(v6 + 224);
      if (v29 < micro())
      {
        break;
      }

LABEL_85:
      v45 = EQNextExpire(*(v6 + 160));
      if (v45 == 0x7FFFFFFF)
      {
        v46 = 1000;
LABEL_91:
        v47 = v194;
        LODWORD(v196) = 0;
        v48 = *(v6 + 148);
        memset(v219, 0, 40);
        memset(v218, 0, 40);
        pthread_mutex_lock((v6 + 16));
        if (*(v6 + 420) == 1)
        {
          v49 = micro();
          v50 = *(v6 + 440);
          if (v49 - *(v6 + 432) <= 1.0)
          {
            if (v50 < 30)
            {
              goto LABEL_100;
            }
          }

          else if (v50 <= 29)
          {
            if (v50)
            {
              ReXmitCollectionRequest(*(v5 + 8), *(v5 + 720), v47, *(v5 + 16));
            }

            else
            {
              SendCollectionRequest(v5, &v194, v48, (v6 + 316), *(v6 + 744));
            }

            *(v6 + 432) = v49;
            ++*(v6 + 440);
            goto LABEL_100;
          }

          *(v6 + 420) = 3;
          pthread_cond_signal((v6 + 80));
        }

LABEL_100:
        memset(buf, 170, sizeof(buf));
        v203[0] = NAN;
        LODWORD(v213) = -1431655766;
        pthread_mutex_unlock((v6 + 16));
        v51 = ICERecvUDPPacketWithTimeout(v5, v47, v48, buf, &v213, v219, v218, v203, v46);
        if (v51 < 0)
        {
          v192 = v51;
          if (v51 > 0x1Eu || ((1 << v51) & 0x40801000) == 0)
          {
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              v56 = 0;
            }

            else
            {
              v54 = VRTraceErrorLogLevelToCSTR();
              v55 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                *v205 = 136315906;
                *v206 = v54;
                *&v206[8] = 2080;
                *&v206[10] = "RecvAndProcess";
                v207 = 1024;
                v208 = 806;
                v209 = 1024;
                LODWORD(v210) = v192;
                _os_log_error_impl(&dword_23D497000, v55, OS_LOG_TYPE_ERROR, " [%s] %s:%d UDPRECVCALLBACK failed (%08X)", v205, 0x22u);
              }

              v56 = 0;
            }

            goto LABEL_130;
          }

          pthread_mutex_lock((v5 + 168));
          pthread_mutex_lock((v6 + 16));
          if (*(v6 + 420) != 5)
          {
            goto LABEL_117;
          }
        }

        else
        {
          HIDWORD(v193) = 1;
          ProcessConnCheckMessage(v5, v6, v203[0], v47, buf, v213, v219, v218, &v196);
          pthread_mutex_lock((v5 + 168));
          pthread_mutex_lock((v6 + 16));
          v52 = *(v6 + 420);
          if (v52 != 5)
          {
            if (v52 == 1)
            {
              if (v196 == 2)
              {
                v53 = 4;
LABEL_116:
                *(v6 + 420) = v53;
                pthread_cond_signal((v6 + 80));
              }

              else if (v196 == 1)
              {
                v53 = 2;
                goto LABEL_116;
              }
            }

LABEL_117:
            if (*(v6 + 768) < 1)
            {
              v56 = 0;
            }

            else
            {
              v57 = *(v6 + 192);
              ProcessNewCandidates(v5, v6, 1);
              v56 = v57 != *(v6 + 192);
            }

            if (*(v6 + 784) >= 1)
            {
              ProcessNewCandidates(v5, v6, 0);
            }

            if (*(v6 + 808) >= 1)
            {
              v58 = *(v6 + 192);
              ProcessRemovedLocalIPPort(v5, v6);
              v59 = *(v6 + 192);
              v56 = v58 != v59;
              if (*(v6 + 200))
              {
                if (v58 != v59)
                {
                  ICEConnectivityRecheck(v5, v6);
                }
              }
            }

            if (*(v6 + 824) >= 1)
            {
              ProcessRemovedRemoteIPPort(v5, v6);
              if (*(v6 + 200))
              {
                ICEConnectivityRecheck(v5, v6);
              }
            }

            pthread_mutex_unlock((v6 + 16));
            pthread_mutex_unlock((v5 + 168));
            v192 = 0;
LABEL_130:
            pthread_mutex_lock((v5 + 168));
            v60 = (v5 + 232);
            do
            {
              v61 = *v60;
              v60 = (*v60 + 912);
              if (v61)
              {
                v62 = v61 == v6;
              }

              else
              {
                v62 = 1;
              }
            }

            while (!v62);
            if (!v61)
            {
              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                LODWORD(v2) = v192;
              }

              else
              {
                v180 = VRTraceErrorLogLevelToCSTR();
                v181 = *MEMORY[0x277CE5818];
                LODWORD(v2) = v192;
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  *&buf[4] = v180;
                  *&buf[12] = 2080;
                  *&buf[14] = "ConnectivityCheckProc";
                  *&buf[22] = 1024;
                  *&buf[24] = 2210;
                  *&buf[28] = 1024;
                  *&buf[30] = v3;
                  _os_log_impl(&dword_23D497000, v181, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ConnectivityCheckProc: ABORT -- ICEList for call (%d) no longer exists!!!", buf, 0x22u);
                }
              }

              goto LABEL_327;
            }

            pthread_mutex_unlock((v5 + 168));
            if (v192 < 0)
            {
              v14 = 0;
              goto LABEL_35;
            }

            if (v56)
            {
              if (*(v5 + 64))
              {
                *v219 = 0;
                *v218 = -1431655766;
                v192 = CompressCandidateList(v219, v218, *(v6 + 168), *(v6 + 192));
                if ((v192 & 0x80000000) == 0)
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v63 = VRTraceErrorLogLevelToCSTR();
                    v64 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315650;
                      *&buf[4] = v63;
                      *&buf[12] = 2080;
                      *&buf[14] = "ConnectivityCheckProc";
                      *&buf[22] = 1024;
                      *&buf[24] = 2228;
                      _os_log_impl(&dword_23D497000, v64, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ConnectivityCheckProc: local candidate list updated, calling back to call session.", buf, 0x1Cu);
                    }
                  }

                  (*(v5 + 64))(*(v5 + 8), v3, *v219, *v218, *(v6 + 204));
                  free(*v219);
                }
              }
            }

            memset(v203, 255, sizeof(v203));
            v204 = -1;
            if (*(v6 + 200) < 1)
            {
              v191 = 0;
            }

            else
            {
              v65 = 0;
              v66 = 0;
              do
              {
                v67 = *(*(v6 + 184) + v65);
                if (v67 < 7)
                {
                  *(v203 + v67) = 255;
                }

                else if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v68 = VRTraceErrorLogLevelToCSTR();
                  v69 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                  {
                    v70 = *(v6 + 200);
                    *buf = 136316418;
                    *&buf[4] = v68;
                    *&buf[12] = 2080;
                    *&buf[14] = "IfConnectivityCheckDone";
                    *&buf[22] = 1024;
                    *&buf[24] = 1856;
                    *&buf[28] = 1024;
                    *&buf[30] = v67;
                    *&buf[34] = 1024;
                    *&buf[36] = v66;
                    *&buf[40] = 1024;
                    *&buf[42] = v70;
                    _os_log_error_impl(&dword_23D497000, v69, OS_LOG_TYPE_ERROR, " [%s] %s:%d Bad proto value (%d) (i=%d iCPCount=%d), skip!", buf, 0x2Eu);
                  }
                }

                ++v66;
                v71 = *(v6 + 200);
                v65 += 400;
              }

              while (v66 < v71);
              if (v71 >= 1)
              {
                v72 = 0;
                v191 = 0;
                while (1)
                {
                  v73 = *(v6 + 184);
                  v74 = (v73 + 400 * v72);
                  v75 = *v74;
                  v76 = v74[74];
                  switch(v76)
                  {
                    case 9u:
                      if (v75 < 7)
                      {
                        v85 = *(v203 + v75);
                        if (v85 == 255)
                        {
                          v85 = v72;
                        }

                        *(v203 + v75) = v85;
                        if (!*(v73 + 400 * v72 + 364))
                        {
                          v191 = AddConnectivityCheckResult(v5, v6, v72);
                        }

                        break;
                      }

                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        v83 = VRTraceErrorLogLevelToCSTR();
                        v84 = *MEMORY[0x277CE5818];
                        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315906;
                          *&buf[4] = v83;
                          *&buf[12] = 2080;
                          *&buf[14] = "IfConnectivityCheckDone";
                          *&buf[22] = 1024;
                          *&buf[24] = 1907;
                          *&buf[28] = 1024;
                          *&buf[30] = v75;
                          v80 = v84;
                          v81 = " [%s] %s:%d Bad proto value (%d), skip!";
                          v82 = 34;
                          goto LABEL_170;
                        }
                      }

                      break;
                    case 7u:
                      *(v203 + v75) = v72;
                      break;
                    case 6u:
                      v77 = *(v6 + 840);
                      if (v77 == 2)
                      {
                        v86 = v71;
                        if (*(v6 + 888) >= 0x3F2u && !*(v5 + 88))
                        {
                          *&v219[46] = 0xAAAAAAAAAAAAAAAALL;
                          *&v108 = 0xAAAAAAAAAAAAAAAALL;
                          *(&v108 + 1) = 0xAAAAAAAAAAAAAAAALL;
                          *&v219[16] = v108;
                          *&v219[32] = v108;
                          *v219 = v108;
                          *&v218[46] = 0xAAAAAAAAAAAAAAAALL;
                          *&v218[32] = v108;
                          *&v218[16] = v108;
                          *v218 = v108;
                          v109 = *(v6 + 192);
                          if (v109 < 1)
                          {
                            v110 = 0;
                          }

                          else
                          {
                            v110 = 0;
                            v111 = (*(v6 + 168) + 64);
                            do
                            {
                              v112 = *v111;
                              v111 += 148;
                              if ((v112 & 4) != 0)
                              {
                                v113 = 2;
                              }

                              else
                              {
                                v113 = 1;
                              }

                              v110 |= v113;
                              --v109;
                            }

                            while (v109);
                          }

                          v117 = *(v6 + 196);
                          if (v117 >= 1)
                          {
                            v118 = (*(v6 + 176) + 24);
                            do
                            {
                              v119 = *v118;
                              v118 += 148;
                              if ((v119 & 4) != 0)
                              {
                                v120 = 8;
                              }

                              else
                              {
                                v120 = 4;
                              }

                              v110 |= v120;
                              --v117;
                            }

                            while (v117);
                          }

                          v121 = 0;
                          v122 = (v73 + 376);
                          v123 = -1;
                          v124 = -1;
                          do
                          {
                            if (*(v122 - 5))
                            {
                              if (*v122)
                              {
                                v123 = v121;
                              }

                              else
                              {
                                v124 = v121;
                              }
                            }

                            ++v121;
                            v122 += 100;
                          }

                          while (v86 != v121);
                          v201 = 0;
                          v199 = -1;
                          v200 = 0;
                          if (v72 != v123 && v72 != v124)
                          {
                            v125 = *(v5 + 72);
                            if (v125)
                            {
                              v125(*(v5 + 8), *(v6 + 148));
                              v73 = *(v6 + 184);
                            }

                            else
                            {
                              HIDWORD(v201) = 1;
                              v199 = 2;
                              v200 = 0;
                              if ((v123 & 0x80000000) == 0 && v123 < v86)
                              {
                                LODWORD(v201) = 1;
                              }
                            }
                          }

                          v126 = 0;
                          if (v123 != -1 && v72 != v123)
                          {
                            v126 = *(v73 + 400 * v123 + 296) == 9;
                          }

                          v127 = v199;
                          v128 = v200;
                          v129 = v199 > 1;
                          v196 = 0;
                          v197 = 0;
                          v198 = 0;
                          if (HIDWORD(v201) && (v130 = v73 + 400 * v72, !*(v130 + 356)))
                          {
                            v137 = *(v130 + 360) + 1;
                            *(v130 + 360) = v137;
                            v138 = *(v6 + 800);
                            if (v127 >= 2)
                            {
                              *(v6 + 800) = ++v138;
                            }

                            v196 = __PAIR64__(v138, v137);
                            LODWORD(v197) = v129;
                            HIDWORD(v197) = v201 != 0 && v126;
                            v188 = v128;
                            if (v127 >= 2 && v199 == 3)
                            {
                              v198 = 1;
                              v129 = 2;
                            }

                            v139 = InsertEvent(*(v6 + 160), v130, 1, 50, v5 + 640, &v196, 1);
                            if (v139 < 0)
                            {
                              v152 = v139;
                              if (VRTraceGetErrorLogLevelForModule() >= 3)
                              {
                                v189 = VRTraceErrorLogLevelToCSTR();
                                v153 = *MEMORY[0x277CE5818];
                                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 136316162;
                                  *&buf[4] = v189;
                                  *&buf[12] = 2080;
                                  *&buf[14] = "NominateCandidatePair";
                                  *&buf[22] = 1024;
                                  *&buf[24] = 1749;
                                  *&buf[28] = 1024;
                                  *&buf[30] = 1749;
                                  *&buf[34] = 1024;
                                  *&buf[36] = v152;
                                  _os_log_error_impl(&dword_23D497000, v153, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEConnCheck.c:%d: InsertEvent failed (%08X)", buf, 0x28u);
                                }
                              }
                            }

                            else
                            {
                              v140 = *(v6 + 184) + 400 * v72;
                              *(v140 + 356) = 1;
                              *(v140 + 376) = v129;
                              *(v140 + 380) = v201;
                              v217 = -86;
                              *&v141 = 0xAAAAAAAAAAAAAAAALL;
                              *(&v141 + 1) = 0xAAAAAAAAAAAAAAAALL;
                              *&buf[32] = v141;
                              *&buf[48] = v141;
                              *buf = v141;
                              *&buf[16] = v141;
                              v213 = *(v140 + 160);
                              v214 = 256;
                              v215 = *(v140 + 12);
                              v216 = 256;
                              if (VRTraceGetErrorLogLevelForModule() >= 7)
                              {
                                v183 = VRTraceErrorLogLevelToCSTR();
                                v185 = *MEMORY[0x277CE5818];
                                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                                {
                                  v142 = ICEUNToString(buf, &v213);
                                  v143 = *(*(v6 + 184) + 400 * v72 + 360);
                                  *v205 = 136316162;
                                  *v206 = v183;
                                  *&v206[8] = 2080;
                                  *&v206[10] = "NominateCandidatePair";
                                  v207 = 1024;
                                  v208 = 1711;
                                  v209 = 2080;
                                  v210 = v142;
                                  v211 = 1024;
                                  LODWORD(v212) = v143;
                                  _os_log_impl(&dword_23D497000, v185, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Nominating candidate pair [%s] to controlled agent, count(%d).", v205, 0x2Cu);
                                }
                              }

                              v144 = v188;
                              if ((v188 & 0xFFFFFFFE) == 2)
                              {
                                v145 = *(v6 + 184) + 400 * v123;
                                DemoteCandidatePair(v145, *(v145 + 296), 1, *(v145 + 364));
                                DemoteConnectivityCheckResult(v5, *(v6 + 148), *(v6 + 184) + 400 * v123);
                                v144 = v188;
                                v146 = *(v5 + 48);
                                if (v146)
                                {
                                  v147 = *(v6 + 184) + 400 * v72;
                                  if (*(v147 + 4) == 5 && *(v147 + 152) == 5)
                                  {
                                    v148 = *(v5 + 8);
                                    v149 = *(v6 + 148);
                                    v150 = v147 + 64;
                                    v151 = v6 + 236;
                                  }

                                  else
                                  {
                                    v148 = *(v5 + 8);
                                    v149 = *(v6 + 148);
                                    v150 = v147 + 64;
                                    v151 = v147 + 172;
                                  }

                                  v146(v148, v149, v150, v151);
                                  v144 = v188;
                                }
                              }

                              if (v129 && v201)
                              {
                                DemoteCandidatePair(*(v6 + 184) + 400 * v123, 2, 0, 0);
                                RemoveConnectivityCheckResult(v5, *(v6 + 148), *(v6 + 184) + 400 * v123);
                                v144 = v188;
                              }

                              if ((v144 & 0xFFFFFFFD) == 1)
                              {
                                v154 = *(v6 + 184);
                                v155 = v124;
                                if (*(v154 + 400 * v124 + 4) == 5)
                                {
                                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                                  {
                                    v156 = VRTraceErrorLogLevelToCSTR();
                                    v157 = *MEMORY[0x277CE5818];
                                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                                    {
                                      v190 = IPPORTToStringWithSize(v219, *(v6 + 184) + 400 * v155 + 64, 0x36uLL);
                                      v158 = IPPORTToStringWithSize(v218, *(v6 + 184) + 400 * v155 + 172, 0x36uLL);
                                      *v205 = 136316162;
                                      *v206 = v156;
                                      *&v206[8] = 2080;
                                      *&v206[10] = "NominateCandidatePair";
                                      v207 = 1024;
                                      v208 = 1742;
                                      v209 = 2080;
                                      v210 = v190;
                                      v211 = 2080;
                                      v212 = v158;
                                      _os_log_impl(&dword_23D497000, v157, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: tear down removed secondary TURN candidate %s - %s", v205, 0x30u);
                                    }
                                  }

                                  DiscardOneRelayBindingWithChannelNumber(v5, *(v6 + 148), *(*(v6 + 184) + 400 * v155 + 384));
                                  v154 = *(v6 + 184);
                                }

                                DemoteCandidatePair(v154 + 400 * v155, 2, 0, 0);
                                RemoveConnectivityCheckResult(v5, *(v6 + 148), *(v6 + 184) + 400 * v155);
                              }
                            }
                          }

                          else
                          {
                            v131 = (v73 + 400 * v72);
                            if (v131[74] == 6 && !v131[89])
                            {
                              if (v131[1] == 5)
                              {
                                if (VRTraceGetErrorLogLevelForModule() >= 7)
                                {
                                  v187 = VRTraceErrorLogLevelToCSTR();
                                  v132 = *MEMORY[0x277CE5818];
                                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                                  {
                                    v133 = HIDWORD(v201);
                                    v134 = *(v6 + 184) + 400 * v72;
                                    v135 = *(v134 + 356);
                                    v184 = IPPORTToStringWithSize(v219, v134 + 64, 0x36uLL);
                                    v136 = IPPORTToStringWithSize(v218, *(v6 + 184) + 400 * v72 + 172, 0x36uLL);
                                    *buf = 136316930;
                                    *&buf[4] = v187;
                                    *&buf[12] = 2080;
                                    *&buf[14] = "NominateCandidatePair";
                                    *&buf[22] = 1024;
                                    *&buf[24] = 1757;
                                    *&buf[28] = 1024;
                                    *&buf[30] = v72;
                                    *&buf[34] = 1024;
                                    *&buf[36] = v133;
                                    *&buf[40] = 1024;
                                    *&buf[42] = v135;
                                    *&buf[46] = 2080;
                                    *&buf[48] = v184;
                                    *&buf[56] = 2080;
                                    *&buf[58] = v136;
                                    _os_log_impl(&dword_23D497000, v132, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: tear down unnominated TURN candidate pair %d, needCandidateChange %d, bIfNominated %d, %s - %s", buf, 0x42u);
                                  }
                                }

                                DiscardOneRelayBindingWithChannelNumber(v5, *(v6 + 148), *(*(v6 + 184) + 400 * v72 + 384));
                                v73 = *(v6 + 184);
                              }

                              DemoteCandidatePair(v73 + 400 * v72, 2, 0, 0);
                            }
                          }

                          break;
                        }

                        v87 = 0;
                        *v206 = 0uLL;
                        v88 = 1;
                        v89 = 356;
                        while (v72 == v87 || !*(v73 + v89))
                        {
                          v88 = ++v87 < v86;
                          v89 += 400;
                          if (v86 == v87)
                          {
                            v88 = 0;
                            goto LABEL_191;
                          }
                        }

                        if (!IsBetterCandidatePair(v6, *(v5 + 88), 1, v72, v87))
                        {
                          break;
                        }

                        *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
                        *&v91 = 0xAAAAAAAAAAAAAAAALL;
                        *(&v91 + 1) = 0xAAAAAAAAAAAAAAAALL;
                        *&buf[16] = v91;
                        *&buf[32] = v91;
                        *buf = v91;
                        *&v219[46] = 0xAAAAAAAAAAAAAAAALL;
                        *&v219[16] = v91;
                        *&v219[32] = v91;
                        *v219 = v91;
                        if (VRTraceGetErrorLogLevelForModule() >= 7)
                        {
                          v186 = VRTraceErrorLogLevelToCSTR();
                          v92 = *MEMORY[0x277CE5818];
                          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                          {
                            v182 = IPPORTToStringWithSize(buf, *(v6 + 184) + 400 * v72 + 24, 0x36uLL);
                            v93 = IPPORTToStringWithSize(v219, *(v6 + 184) + 400 * v72 + 172, 0x36uLL);
                            *v218 = 136316162;
                            *&v218[4] = v186;
                            *&v218[12] = 2080;
                            *&v218[14] = "NominateCandidatePairOld";
                            *&v218[22] = 1024;
                            *&v218[24] = 1786;
                            *&v218[28] = 2080;
                            *&v218[30] = v182;
                            *&v218[38] = 2080;
                            *&v218[40] = v93;
                            _os_log_impl(&dword_23D497000, v92, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ICE found a better candidate pair [%s:%s].", v218, 0x30u);
                          }
                        }

                        v73 = *(v6 + 184);
                        LODWORD(v86) = v87;
LABEL_191:
                        if (*(v73 + 400 * v72 + 356))
                        {
                          break;
                        }

                        v94 = *(v6 + 800) + 1;
                        *(v6 + 800) = v94;
                        *v205 = v94;
                        *&v206[4] = 0x100000001;
                        v95 = InsertEvent(*(v6 + 160), v73 + 400 * v72, 1, 50, v5 + 640, v205, 1);
                        if ((v95 & 0x80000000) == 0)
                        {
                          v96 = *(v6 + 184) + 400 * v72;
                          *(v96 + 356) = 1;
                          *(v96 + 376) = 1;
                          v218[20] = -86;
                          *&v97 = 0xAAAAAAAAAAAAAAAALL;
                          *(&v97 + 1) = 0xAAAAAAAAAAAAAAAALL;
                          *&buf[32] = v97;
                          *&buf[48] = v97;
                          *buf = v97;
                          *&buf[16] = v97;
                          *v218 = *(v96 + 160);
                          *&v218[8] = 256;
                          *&v218[10] = *(v96 + 12);
                          *&v218[18] = 256;
                          if (VRTraceGetErrorLogLevelForModule() >= 7)
                          {
                            v98 = VRTraceErrorLogLevelToCSTR();
                            v99 = *MEMORY[0x277CE5818];
                            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                            {
                              v100 = ICEUNToString(buf, v218);
                              v101 = *(v6 + 800);
                              *v219 = 136316162;
                              *&v219[4] = v98;
                              *&v219[12] = 2080;
                              *&v219[14] = "NominateCandidatePairOld";
                              *&v219[22] = 1024;
                              *&v219[24] = 1813;
                              *&v219[28] = 2080;
                              *&v219[30] = v100;
                              *&v219[38] = 1024;
                              *&v219[40] = v101;
                              _os_log_impl(&dword_23D497000, v99, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Nominating candidate pair [%s] to controlled agent, count(%d).", v219, 0x2Cu);
                            }
                          }

                          if (*(v5 + 88) == 0 && v88)
                          {
                            DemoteCandidatePair(*(v6 + 184) + 400 * v86, 2, 0, 0);
                            RemoveConnectivityCheckResult(v5, *(v6 + 148), *(v6 + 184) + 400 * v86);
                            v102 = *(v5 + 48);
                            if (v102)
                            {
                              v103 = *(v6 + 184) + 400 * v72;
                              if (*(v103 + 4) == 5 && *(v103 + 152) == 5)
                              {
                                v104 = *(v5 + 8);
                                v105 = *(v6 + 148);
                                v106 = v103 + 64;
                                v107 = v6 + 236;
                              }

                              else
                              {
                                v104 = *(v5 + 8);
                                v105 = *(v6 + 148);
                                v106 = v103 + 64;
                                v107 = v103 + 172;
                              }

                              v102(v104, v105, v106, v107);
                            }
                          }

                          break;
                        }

                        v114 = v95;
                        if (VRTraceGetErrorLogLevelForModule() >= 3)
                        {
                          v115 = VRTraceErrorLogLevelToCSTR();
                          v116 = *MEMORY[0x277CE5818];
                          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136316162;
                            *&buf[4] = v115;
                            *&buf[12] = 2080;
                            *&buf[14] = "NominateCandidatePairOld";
                            *&buf[22] = 1024;
                            *&buf[24] = 1836;
                            *&buf[28] = 1024;
                            *&buf[30] = 1836;
                            *&buf[34] = 1024;
                            *&buf[36] = v114;
                            v80 = v116;
                            v81 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEConnCheck.c:%d: InsertEvent failed (%08X)";
LABEL_164:
                            v82 = 40;
LABEL_170:
                            _os_log_error_impl(&dword_23D497000, v80, OS_LOG_TYPE_ERROR, v81, buf, v82);
                          }
                        }
                      }

                      else if (!v77)
                      {
                        if (v75 < 7)
                        {
                          v90 = *(v203 + v75);
                          if (v90 == 255)
                          {
                            v90 = v72;
                          }

                          *(v203 + v75) = v90;
                          if (!v74[91])
                          {
                            v74[94] = 1;
                            v191 = AddConnectivityCheckResult(v5, v6, v72);
                            *(*(v6 + 184) + 400 * v72 + 296) = 7;
                          }

                          break;
                        }

                        if (VRTraceGetErrorLogLevelForModule() >= 3)
                        {
                          v78 = VRTraceErrorLogLevelToCSTR();
                          v79 = *MEMORY[0x277CE5818];
                          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136316162;
                            *&buf[4] = v78;
                            *&buf[12] = 2080;
                            *&buf[14] = "IfConnectivityCheckDone";
                            *&buf[22] = 1024;
                            *&buf[24] = 1867;
                            *&buf[28] = 1024;
                            *&buf[30] = 1867;
                            *&buf[34] = 1024;
                            *&buf[36] = v75;
                            v80 = v79;
                            v81 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEConnCheck.c:%d: Bad proto value (%d), skip!";
                            goto LABEL_164;
                          }
                        }
                      }

                      break;
                  }

                  ++v72;
                  v71 = *(v6 + 200);
                  if (v72 >= v71)
                  {
                    goto LABEL_279;
                  }
                }
              }

              v191 = 0;
            }

LABEL_279:
            v159 = *(v6 + 212);
            if (v191 >= v159)
            {
              v160 = 0;
              while (*(v203 + v160) != 255)
              {
                v160 += 4;
                if (v160 == 28)
                {
                  if (v191 < v159)
                  {
                    goto LABEL_88;
                  }

                  pthread_mutex_lock((v6 + 16));
                  if (*(v6 + 140))
                  {
                    pthread_mutex_unlock((v6 + 16));
                    goto LABEL_88;
                  }

                  goto LABEL_34;
                }
              }
            }

            goto LABEL_88;
          }
        }

        AddRelayCandidatePair(v5, v6);
        *(v6 + 420) = 0;
        goto LABEL_117;
      }

      v46 = ((v45 - micro()) * 1000.0);
      if (v46 > 0)
      {
        goto LABEL_91;
      }

      EQPop(*(v6 + 160), &v195);
      ProcessEvent(v5);
LABEL_88:
      pthread_mutex_lock((v6 + 16));
      if (*(v6 + 136))
      {
        goto LABEL_34;
      }
    }

    if (*(v6 + 224) == 0.0)
    {
      v30 = micro();
LABEL_84:
      *(v6 + 224) = v30 + 30.0;
      goto LABEL_85;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(v6 + 224);
        v34 = micro();
        *buf = 136316162;
        *&buf[4] = v31;
        *&buf[12] = 2080;
        *&buf[14] = "ConnectivityCheckProc";
        *&buf[22] = 1024;
        *&buf[24] = 2178;
        *&buf[28] = 2048;
        *&buf[30] = v33;
        *&buf[38] = 2048;
        *&buf[40] = v34;
        _os_log_impl(&dword_23D497000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: refresh secondary connection(scheduled ts[%f] < current ts[%f])", buf, 0x30u);
      }
    }

    if (*(v6 + 840) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_83;
      }

      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_83;
      }

      *buf = 136315650;
      *&buf[4] = v35;
      *&buf[12] = 2080;
      *&buf[14] = "insertSecondaryConnectionRefreshEvent";
      *&buf[22] = 1024;
      *&buf[24] = 2053;
      v37 = v36;
      v38 = " [%s] %s:%d HandoverReport: Callee skips refresh.";
    }

    else
    {
      v39 = *(v6 + 200);
      if (v39 < 1)
      {
LABEL_73:
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_83;
        }

        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_83;
        }

        *buf = 136315650;
        *&buf[4] = v41;
        *&buf[12] = 2080;
        *&buf[14] = "insertSecondaryConnectionRefreshEvent";
        *&buf[22] = 1024;
        *&buf[24] = 2065;
        v37 = v42;
        v38 = " [%s] %s:%d HandoverReport: No secondary connection, skip refresh.";
      }

      else
      {
        v40 = *(v6 + 184);
        while (!v40[89] || v40[94])
        {
          v40 += 100;
          if (!--v39)
          {
            goto LABEL_73;
          }
        }

        if (v40[1] != 5 || v40[38] != 5)
        {
          memset(&buf[24], 0, 48);
          *buf = xmmword_23D4C9C20;
          *&buf[16] = 0x40ED4C0000000000;
          *&buf[72] = 0x40CD4C0000000000;
          InsertEvent(*(v6 + 160), v40, 1, 30000, buf, 0, 2);
          goto LABEL_83;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_83;
        }

        v43 = VRTraceErrorLogLevelToCSTR();
        v44 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_83;
        }

        *buf = 136315650;
        *&buf[4] = v43;
        *&buf[12] = 2080;
        *&buf[14] = "insertSecondaryConnectionRefreshEvent";
        *&buf[22] = 1024;
        *&buf[24] = 2071;
        v37 = v44;
        v38 = " [%s] %s:%d HandoverReport: secondary connection is on relay, skip refresh";
      }
    }

    _os_log_impl(&dword_23D497000, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 0x1Cu);
LABEL_83:
    v30 = *(v6 + 224);
    goto LABEL_84;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ConnectivityCheckProc_cold_7();
    }
  }

LABEL_336:
  v176 = *MEMORY[0x277D85DE8];
  return v2;
}

void AddRelayCandidatePair(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v44 = 0;
  memset(v59, 170, sizeof(v59));
  v4 = malloc_type_realloc(*(a2 + 168), 148 * *(a2 + 192) + 148, 0x1000040C185D105uLL);
  v5 = malloc_type_realloc(*(a2 + 176), 148 * *(a2 + 196) + 148, 0x1000040C185D105uLL);
  v6 = malloc_type_realloc(*(a2 + 184), 400 * *(a2 + 200) + 400, 0x10200402E010713uLL);
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v6 == 0)
  {
    free(v4);
    free(v5);
    v10 = *MEMORY[0x277D85DE8];

    free(v7);
  }

  else
  {
    *&v61[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v61 = v11;
    v60[0] = v11;
    v60[1] = v11;
    *(a2 + 168) = v4;
    v12 = &v4[148 * *(a2 + 192)];
    v13 = *(a2 + 540);
    v14 = *(a2 + 556);
    v15 = *(a2 + 572);
    *(v12 + 36) = *(a2 + 588);
    *(v12 + 7) = v14;
    *(v12 + 8) = v15;
    *(v12 + 6) = v13;
    v16 = *(a2 + 476);
    v17 = *(a2 + 492);
    v18 = *(a2 + 524);
    *(v12 + 4) = *(a2 + 508);
    *(v12 + 5) = v18;
    *(v12 + 2) = v16;
    *(v12 + 3) = v17;
    v19 = *(a2 + 460);
    *v12 = *(a2 + 444);
    *(v12 + 1) = v19;
    ++*(a2 + 192);
    ++*(a2 + 204);
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (ErrorLogLevelForModule >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v23 = CANIDToString(v59, (a2 + 456));
        v24 = IPPORTToStringWithSize(v60, a2 + 468, 0x36uLL);
        v25 = *(a2 + 448);
        v26 = *(a2 + 192);
        *buf = 136316674;
        v46 = v21;
        v47 = 2080;
        v48 = "AddRelayCandidatePair";
        v49 = 1024;
        v50 = 240;
        v51 = 2080;
        v52 = v23;
        v53 = 2080;
        v54 = v24;
        v55 = 1024;
        v56 = v25;
        v57 = 1024;
        v58 = v26;
        _os_log_impl(&dword_23D497000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add local relay candidate\tID[%s] [%s], Type[%d], Count[%d].", buf, 0x3Cu);
      }
    }

    *(a2 + 176) = v5;
    v27 = &v5[148 * *(a2 + 196)];
    v28 = *(a2 + 688);
    v29 = *(a2 + 704);
    v30 = *(a2 + 720);
    *(v27 + 36) = *(a2 + 736);
    *(v27 + 7) = v29;
    *(v27 + 8) = v30;
    *(v27 + 6) = v28;
    v31 = *(a2 + 624);
    v32 = *(a2 + 640);
    v33 = *(a2 + 672);
    *(v27 + 4) = *(a2 + 656);
    *(v27 + 5) = v33;
    *(v27 + 2) = v31;
    *(v27 + 3) = v32;
    v34 = *(a2 + 608);
    *v27 = *(a2 + 592);
    *(v27 + 1) = v34;
    ++*(a2 + 196);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v37 = CANIDToString(v59, (a2 + 604));
        v38 = IPPORTToStringWithSize(v60, a2 + 616, 0x36uLL);
        v39 = *(a2 + 596);
        v40 = *(a2 + 196);
        *buf = 136316674;
        v46 = v35;
        v47 = 2080;
        v48 = "AddRelayCandidatePair";
        v49 = 1024;
        v50 = 250;
        v51 = 2080;
        v52 = v37;
        v53 = 2080;
        v54 = v38;
        v55 = 1024;
        v56 = v39;
        v57 = 1024;
        v58 = v40;
        _os_log_impl(&dword_23D497000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add remote relay candidate\tID[%s] [%s], Type[%d], Count[%d].", buf, 0x3Cu);
      }
    }

    *(a2 + 184) = v7;
    v41 = v7 + 400 * *(a2 + 200);
    if ((PairUpCandidate(a2 + 444, 1, a2 + 592, 1, v41, 1, &v44, 0) & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          AddRelayCandidatePair_cold_2();
        }
      }
    }

    else
    {
      *(v41 + 384) = *(a2 + 234);
      if (v44 == 1)
      {
        ++*(a2 + 200);
        InsertEvent(*(a2 + 160), v41, 1, 50, a1 + 640, 0, 1);
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v42 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          AddRelayCandidatePair_cold_1(v42, &v44);
        }
      }
    }

    v43 = *MEMORY[0x277D85DE8];
  }
}

void ProcessNewCandidates(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v160 = *MEMORY[0x277D85DE8];
  memset(v157, 170, sizeof(v157));
  v5 = 196;
  v6 = 176;
  if (a3)
  {
    v6 = 168;
  }

  v7 = 784;
  if (a3)
  {
    v7 = 768;
  }

  v8 = 792;
  if (a3)
  {
    v8 = 776;
    v9 = 192;
  }

  else
  {
    v9 = 196;
  }

  v135 = *(a2 + v8);
  v130 = *(a2 + v6);
  v10 = *(a2 + v7);
  if (!a3)
  {
    v5 = 192;
  }

  v11 = *(a2 + v9);
  v12 = *(a2 + v5);
  v13 = malloc_type_calloc(1uLL, v10, 0x100004077774924uLL);
  if (v13)
  {
    v14 = v13;
    v127 = v12;
    *&v159[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v158[1] = v15;
    *v159 = v15;
    v158[0] = v15;
    v136 = v10;
    v137 = v4;
    v138 = v3;
    if (v10 < 1)
    {
      v37 = 0;
      v17 = v10;
    }

    else
    {
      v16 = 0;
      v133 = 0;
      v17 = v10;
      do
      {
        v14[v16] = 2;
        if (v11 >= 1)
        {
          v18 = v135 + 148 * v16;
          v19 = v11;
          v20 = v130 + 12;
          while (*(v18 + 12) != *v20)
          {
            v20 += 148;
            if (!--v19)
            {
              goto LABEL_22;
            }
          }

          --v17;
          if (IsIPPORTValid((v20 + 12)) || !IsIPPORTValid(v18 + 24))
          {
            v14[v16] = 0;
          }

          else
          {
            v21 = *(v18 + 16);
            *(v20 - 12) = *v18;
            *(v20 + 4) = v21;
            v22 = *(v18 + 32);
            v23 = *(v18 + 48);
            v24 = *(v18 + 80);
            *(v20 + 52) = *(v18 + 64);
            *(v20 + 68) = v24;
            *(v20 + 20) = v22;
            *(v20 + 36) = v23;
            v25 = *(v18 + 96);
            v26 = *(v18 + 112);
            v27 = *(v18 + 128);
            *(v20 + 33) = *(v18 + 144);
            *(v20 + 100) = v26;
            *(v20 + 116) = v27;
            *(v20 + 84) = v25;
            v14[v16] = 1;
            ++v133;
          }
        }

LABEL_22:
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v28 = VRTraceErrorLogLevelToCSTR();
          v29 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v30 = (v135 + 148 * v16);
            v31 = CANIDToString(v157, v30 + 3);
            v32 = IPPORTToStringWithSize(v158, (v30 + 6), 0x36uLL);
            v33 = v30[6];
            v34 = *v30;
            v35 = v30[1];
            v36 = v14[v16];
            *buf = 136317186;
            *&buf[4] = v28;
            *&buf[12] = 2080;
            *&buf[14] = "ProcessNewCandidates";
            *&buf[22] = 1024;
            *&buf[24] = 330;
            *&buf[28] = 2080;
            *&buf[30] = v31;
            v10 = v136;
            *&buf[38] = 2080;
            *&buf[40] = v32;
            *&buf[48] = 1024;
            *&buf[50] = v33;
            *&buf[54] = 1024;
            *&buf[56] = v34;
            *v155 = 1024;
            *&v155[2] = v35;
            *v156 = 1024;
            *&v156[2] = v36;
            _os_log_impl(&dword_23D497000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d checking candidate: ID[%s], [%s], iFlag [%04X], proto[%d], Type[%d], OP[%u].", buf, 0x48u);
          }
        }

        ++v16;
      }

      while (v16 != v10);
      v37 = v133 > 0;
      v3 = v138;
    }

    v131 = v11;
    v129 = v17;
    v38 = v17 > 0 || v37;
    if (v3)
    {
      if (v38)
      {
        ++*(v4 + 204);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v39 = VRTraceErrorLogLevelToCSTR();
          v40 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v41 = *(v4 + 204);
            *buf = 136315906;
            *&buf[4] = v39;
            *&buf[12] = 2080;
            *&buf[14] = "ProcessNewCandidates";
            *&buf[22] = 1024;
            *&buf[24] = 337;
            *&buf[28] = 1024;
            *&buf[30] = v41;
            _os_log_impl(&dword_23D497000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Update local candidate version (%d)", buf, 0x22u);
          }
        }
      }
    }

    if (v37)
    {
      v134 = malloc_type_malloc(400 * *(v4 + 200), 0x10200402E010713uLL);
      if (!v134)
      {
        v82 = 0;
        goto LABEL_89;
      }

      v132 = v14;
      if (v10 >= 1)
      {
        v42 = 0;
        v139 = 0;
        v43 = v138;
        while (v132[v42] != 1 || *(v4 + 200) < 1)
        {
LABEL_66:
          ++v42;
          LODWORD(v10) = v136;
          if (v42 == v136)
          {
            goto LABEL_70;
          }
        }

        v44 = 0;
        v45 = 0;
        v46 = v135 + 148 * v42;
        while (1)
        {
          v47 = *(v4 + 184);
          v48 = v47 + v44;
          if (v43)
          {
            if (*(v48 + 12) == *(v46 + 12))
            {
              v49 = *(v46 + 16);
              *v48 = *v46;
              *(v48 + 16) = v49;
              v50 = *(v46 + 32);
              v51 = *(v46 + 48);
              v52 = *(v46 + 80);
              *(v48 + 64) = *(v46 + 64);
              *(v48 + 80) = v52;
              *(v48 + 32) = v50;
              *(v48 + 48) = v51;
              v53 = *(v46 + 96);
              v54 = *(v46 + 112);
              v55 = *(v46 + 128);
              *(v48 + 144) = *(v46 + 144);
              *(v48 + 112) = v54;
              *(v48 + 128) = v55;
              *(v48 + 96) = v53;
              if (VRTraceGetErrorLogLevelForModule() >= 6)
              {
                v56 = VRTraceErrorLogLevelToCSTR();
                v57 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v58 = CANIDToString(v157, (v48 + 12));
                  *buf = 136315906;
                  *&buf[4] = v56;
                  *&buf[12] = 2080;
                  *&buf[14] = "ProcessNewCandidates";
                  *&buf[22] = 1024;
                  *&buf[24] = 364;
                  *&buf[28] = 2080;
                  *&buf[30] = v58;
                  _os_log_impl(&dword_23D497000, v57, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Updated candidate pair with local candidate [%s]", buf, 0x26u);
                }
              }

              if (IsValidCandidatePair(v47 + v44, v47 + v44 + 148, 0, 0))
              {
                *(v47 + v44 + 368) = 1;
                memcpy(&v134[400 * v139++], v48, 0x190uLL);
LABEL_64:
                v43 = v138;
                goto LABEL_65;
              }

              *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
              *&v69 = 0xAAAAAAAAAAAAAAAALL;
              *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *&buf[16] = v69;
              *&buf[32] = v69;
              *buf = v69;
              *&v153[14] = 0xAAAAAAAAAAAAAAAALL;
              v152 = v69;
              *v153 = v69;
              v151 = v69;
              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                goto LABEL_64;
              }

              v70 = VRTraceErrorLogLevelToCSTR();
              v71 = *MEMORY[0x277CE5818];
              if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_64;
              }

              v72 = v47 + v44;
              v73 = IPPORTToStringWithSize(buf, v72 + 24, 0x36uLL);
              v74 = IPPORTToStringWithSize(&v151, v72 + 172, 0x36uLL);
              *v141 = 136316162;
              v142 = v70;
              v143 = 2080;
              v144 = "ProcessNewCandidates";
              v145 = 1024;
              v146 = 374;
              v147 = 2080;
              v148 = v73;
              v149 = 2080;
              v150 = v74;
              v75 = v71;
              goto LABEL_63;
            }
          }

          else
          {
            if (*(v48 + 160) == *(v46 + 12))
            {
              v59 = *(v46 + 16);
              *(v48 + 148) = *v46;
              *(v48 + 164) = v59;
              v60 = *(v46 + 32);
              v61 = *(v46 + 48);
              v62 = *(v46 + 80);
              *(v48 + 212) = *(v46 + 64);
              *(v48 + 228) = v62;
              *(v48 + 180) = v60;
              *(v48 + 196) = v61;
              v63 = *(v46 + 96);
              v64 = *(v46 + 112);
              v65 = *(v46 + 128);
              *(v48 + 292) = *(v46 + 144);
              *(v48 + 260) = v64;
              *(v48 + 276) = v65;
              *(v48 + 244) = v63;
              if (VRTraceGetErrorLogLevelForModule() >= 6)
              {
                v66 = VRTraceErrorLogLevelToCSTR();
                v67 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v68 = CANIDToString(v157, (v48 + 160));
                  *buf = 136315906;
                  *&buf[4] = v66;
                  *&buf[12] = 2080;
                  *&buf[14] = "ProcessNewCandidates";
                  *&buf[22] = 1024;
                  *&buf[24] = 381;
                  *&buf[28] = 2080;
                  *&buf[30] = v68;
                  _os_log_impl(&dword_23D497000, v67, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Updated candidate pair with remote candidate [%s]", buf, 0x26u);
                }
              }

              if (IsValidCandidatePair(v47 + v44, v48 + 148, 0, 0))
              {
                *(v47 + v44 + 368) = 1;
                memcpy(&v134[400 * v139++], v48, 0x190uLL);
                v4 = v137;
                goto LABEL_64;
              }

              *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
              *&v76 = 0xAAAAAAAAAAAAAAAALL;
              *(&v76 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *&buf[16] = v76;
              *&buf[32] = v76;
              *buf = v76;
              *&v153[14] = 0xAAAAAAAAAAAAAAAALL;
              v152 = v76;
              *v153 = v76;
              v151 = v76;
              v4 = v137;
              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                goto LABEL_64;
              }

              v77 = VRTraceErrorLogLevelToCSTR();
              v78 = *MEMORY[0x277CE5818];
              if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_64;
              }

              v79 = v47 + v44;
              v80 = IPPORTToStringWithSize(buf, v79 + 24, 0x36uLL);
              v81 = IPPORTToStringWithSize(&v151, v79 + 172, 0x36uLL);
              *v141 = 136316162;
              v142 = v77;
              v143 = 2080;
              v144 = "ProcessNewCandidates";
              v145 = 1024;
              v146 = 391;
              v147 = 2080;
              v148 = v80;
              v149 = 2080;
              v150 = v81;
              v75 = v78;
LABEL_63:
              _os_log_impl(&dword_23D497000, v75, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Existing candidate pair [%s-%s] is invalid, skip.", v141, 0x30u);
              goto LABEL_64;
            }

            v4 = v137;
          }

LABEL_65:
          ++v45;
          v44 += 400;
          if (v45 >= *(v4 + 200))
          {
            goto LABEL_66;
          }
        }
      }

      v139 = 0;
LABEL_70:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v83 = VRTraceErrorLogLevelToCSTR();
        v84 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v83;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessNewCandidates";
          *&buf[22] = 1024;
          *&buf[24] = 399;
          *&buf[28] = 1024;
          *&buf[30] = v139;
          _os_log_impl(&dword_23D497000, v84, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Insert events for %d update candidate pair(s).", buf, 0x22u);
        }
      }

      InsertEvent(*(v4 + 160), v134, v139, 50, a1 + 640, 0, 1);
      free(v134);
      v14 = v132;
    }

    v82 = v129;
    if (v129 >= 1)
    {
      v85 = malloc_type_realloc(v130, 148 * (v129 + v131), 0x1000040C185D105uLL);
      v86 = v138;
      if (!v85)
      {
        v82 = 0;
        v87 = v130;
        goto LABEL_92;
      }

      v87 = v85;
      if (v10 >= 1)
      {
        v88 = 0;
        v89 = "remote";
        if (v138)
        {
          v89 = "local";
        }

        v140 = v89;
        v90 = v135 + 12;
        v91 = MEMORY[0x277CE5818];
        v92 = v14;
        do
        {
          v93 = *v92++;
          if (v93 == 2)
          {
            v94 = &v87[148 * v88 + 148 * v131];
            v95 = *(v90 + 4);
            *v94 = *(v90 - 12);
            *(v94 + 1) = v95;
            v96 = *(v90 + 20);
            v97 = *(v90 + 36);
            v98 = *(v90 + 68);
            *(v94 + 4) = *(v90 + 52);
            *(v94 + 5) = v98;
            *(v94 + 2) = v96;
            *(v94 + 3) = v97;
            v99 = *(v90 + 84);
            v100 = *(v90 + 100);
            v101 = *(v90 + 116);
            *(v94 + 36) = *(v90 + 132);
            *(v94 + 7) = v100;
            *(v94 + 8) = v101;
            *(v94 + 6) = v99;
            ++v88;
            if (VRTraceGetErrorLogLevelForModule() >= 6)
            {
              v102 = VRTraceErrorLogLevelToCSTR();
              v103 = *v91;
              if (os_log_type_enabled(*v91, OS_LOG_TYPE_DEFAULT))
              {
                v104 = v91;
                v105 = CANIDToString(v157, v90);
                v106 = IPPORTToStringWithSize(v158, v90 + 12, 0x36uLL);
                v108 = *(v90 - 12);
                v107 = *(v90 - 8);
                *buf = 136316930;
                *&buf[4] = v102;
                *&buf[12] = 2080;
                *&buf[14] = "ProcessNewCandidates";
                *&buf[22] = 1024;
                *&buf[24] = 428;
                *&buf[28] = 2080;
                *&buf[30] = v140;
                *&buf[38] = 2080;
                *&buf[40] = v105;
                v91 = v104;
                *&buf[48] = 2080;
                *&buf[50] = v106;
                *&buf[58] = 1024;
                *v155 = v107;
                *&v155[4] = 1024;
                *v156 = v108;
                _os_log_impl(&dword_23D497000, v103, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add new %s candidate [%s] [%s], type [%d], proto [%d].", buf, 0x46u);
              }

              v4 = v137;
              v86 = v138;
            }
          }

          v90 += 148;
          --v136;
        }

        while (v136);
      }

      v82 = v129;
      v109 = malloc_type_malloc(400 * v127 * v129, 0x10200402E010713uLL);
      if (!v109)
      {
        goto LABEL_92;
      }

      v110 = v109;
      LODWORD(v151) = 0;
      if (v86)
      {
        v111 = &v87[148 * v131];
        v112 = *(v4 + 176);
        v113 = *(v4 + 196);
        v114 = v129;
      }

      else
      {
        v111 = *(v4 + 168);
        v114 = *(v4 + 192);
        v112 = &v87[148 * v131];
        v113 = v129;
      }

      if ((PairUpCandidate(v111, v114, v112, v113, v110, 1, &v151, 1) & 0x80000000) != 0)
      {
        free(v110);
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessNewCandidates_cold_1();
          }
        }
      }

      else if (v151 >= 1)
      {
        v119 = malloc_type_realloc(*(v4 + 184), 400 * (*(v4 + 200) + v151), 0x10200402E010713uLL);
        if (v119)
        {
          *(v4 + 184) = v119;
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          v121 = MEMORY[0x277CE5818];
          if (ErrorLogLevelForModule >= 7)
          {
            v122 = VRTraceErrorLogLevelToCSTR();
            v123 = *v121;
            if (os_log_type_enabled(*v121, OS_LOG_TYPE_DEFAULT))
            {
              v124 = *(v4 + 200);
              *buf = 136316418;
              *&buf[4] = v122;
              *&buf[12] = 2080;
              *&buf[14] = "ProcessNewCandidates";
              *&buf[22] = 1024;
              *&buf[24] = 466;
              *&buf[28] = 1024;
              *&buf[30] = v151;
              *&buf[34] = 1024;
              *&buf[36] = v124;
              *&buf[40] = 1024;
              *&buf[42] = v124 + v151;
              _os_log_impl(&dword_23D497000, v123, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ProcessNewCandidates: added %d new candidate pair(s), total [%d->%d].", buf, 0x2Eu);
            }
          }

          memcpy((*(v4 + 184) + 400 * *(v4 + 200)), v110, 400 * v151);
          *(v4 + 200) += v151;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v125 = VRTraceErrorLogLevelToCSTR();
            v126 = *v121;
            if (os_log_type_enabled(*v121, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              *&buf[4] = v125;
              *&buf[12] = 2080;
              *&buf[14] = "ProcessNewCandidates";
              *&buf[22] = 1024;
              *&buf[24] = 471;
              *&buf[28] = 1024;
              *&buf[30] = v151;
              _os_log_impl(&dword_23D497000, v126, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Insert events for %d new candidate pair(s).", buf, 0x22u);
            }
          }

          InsertEvent(*(v4 + 160), v110, v151, 50, a1 + 640, 0, 1);
        }

        free(v110);
      }

LABEL_90:
      v86 = v138;
LABEL_92:
      v115 = v82 + v131;
      if (v86)
      {
        *(v4 + 192) = v115;
        v116 = 768;
        v117 = 168;
      }

      else
      {
        *(v4 + 196) = v115;
        v116 = 784;
        v117 = 176;
      }

      *(v4 + v117) = v87;
      *(v4 + v116) = 0;
      free(v14);
      goto LABEL_96;
    }

LABEL_89:
    v87 = v130;
    goto LABEL_90;
  }

LABEL_96:
  v118 = *MEMORY[0x277D85DE8];
}

void ProcessRemovedLocalIPPort(uint64_t a1, uint64_t a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = malloc_type_malloc(148 * *(a2 + 192), 0x1000040C185D105uLL);
  if (!v4)
  {
    goto LABEL_76;
  }

  v5 = v4;
  *&v71[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70[1] = v6;
  *v71 = v6;
  v70[0] = v6;
  v68[0] = v6;
  v68[1] = v6;
  v69[0] = v6;
  *(v69 + 14) = 0xAAAAAAAAAAAAAAAALL;
  if (*(a2 + 192) >= 1)
  {
    v7 = a1;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(a2 + 808);
      if (v10 < 1)
      {
        LODWORD(v10) = 0;
        goto LABEL_23;
      }

      v11 = 0;
      v12 = *(a2 + 168) + 148 * v8;
      v14 = *(v12 + 64);
      v13 = v12 + 64;
      v15 = v14 & 1;
      v16 = *(a2 + 816) + 20;
      while (1)
      {
        if (v15 == (*(v16 - 20) & 1))
        {
          if (v15)
          {
            if (*(v13 + 20) != *v16 || *(v13 + 28) != *(v16 + 8))
            {
              goto LABEL_16;
            }
          }

          else if (*(v13 + 20) != *v16)
          {
            goto LABEL_16;
          }

          if (*(v13 + 36) == *(v16 + 16))
          {
            break;
          }
        }

LABEL_16:
        ++v11;
        v16 += 40;
        if (v10 == v11)
        {
          goto LABEL_23;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v20 = IPPORTToStringWithSize(v70, *(a2 + 168) + 148 * v8 + 24, 0x36uLL);
          *buf = 136315906;
          *&buf[4] = v18;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessRemovedLocalIPPort";
          *&buf[22] = 1024;
          LODWORD(v64) = 537;
          WORD2(v64) = 2080;
          *(&v64 + 6) = v20;
          _os_log_impl(&dword_23D497000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove LC [%s].", buf, 0x26u);
        }
      }

      LODWORD(v10) = v11;
LABEL_23:
      if (v10 == *(a2 + 808))
      {
        v21 = &v5[148 * v9];
        v22 = *(a2 + 168) + 148 * v8;
        v23 = *(v22 + 16);
        *v21 = *v22;
        *(v21 + 1) = v23;
        v24 = *(v22 + 32);
        v25 = *(v22 + 48);
        v26 = *(v22 + 80);
        *(v21 + 4) = *(v22 + 64);
        *(v21 + 5) = v26;
        *(v21 + 2) = v24;
        *(v21 + 3) = v25;
        v27 = *(v22 + 96);
        v28 = *(v22 + 112);
        v29 = *(v22 + 128);
        *(v21 + 36) = *(v22 + 144);
        *(v21 + 7) = v28;
        *(v21 + 8) = v29;
        *(v21 + 6) = v27;
        ++v9;
      }

      ++v8;
      v30 = *(a2 + 192);
      if (v8 >= v30)
      {
        a1 = v7;
        if (v9 >= 1 && v9 < v30)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v31 = VRTraceErrorLogLevelToCSTR();
            v32 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v33 = *(a2 + 192);
              *buf = 136316162;
              *&buf[4] = v31;
              *&buf[12] = 2080;
              *&buf[14] = "ProcessRemovedLocalIPPort";
              *&buf[22] = 1024;
              LODWORD(v64) = 549;
              WORD2(v64) = 1024;
              *(&v64 + 6) = v33;
              WORD5(v64) = 1024;
              HIDWORD(v64) = v9;
              _os_log_impl(&dword_23D497000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reduce #LC (%d->%d).", buf, 0x28u);
            }
          }

          *(a2 + 192) = v9;
          ++*(a2 + 204);
          memcpy(*(a2 + 168), v5, 148 * v9);
        }

        break;
      }
    }
  }

  free(v5);
  v34 = malloc_type_malloc(400 * *(a2 + 200), 0x10200402E010713uLL);
  if (!v34)
  {
    goto LABEL_76;
  }

  v35 = v34;
  if (*(a2 + 200) < 1)
  {
    v37 = 0;
    v56 = 1;
    goto LABEL_73;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  do
  {
    v39 = *(a2 + 808);
    if (v39 < 1)
    {
      v41 = 0;
      goto LABEL_61;
    }

    v40 = 0;
    v41 = 0;
    v42 = *(a2 + 184) + 400 * v36;
    v43 = *(v42 + 64) & 1;
    v44 = *(a2 + 816);
    v45 = 40 * v39;
    while (1)
    {
      if (v43 == (*v44 & 1))
      {
        if (v43)
        {
          if (*(v42 + 84) != *(v44 + 20) || *(v42 + 92) != *(v44 + 28))
          {
            goto LABEL_47;
          }
        }

        else if (*(v42 + 84) != *(v44 + 20))
        {
          goto LABEL_47;
        }

        if (*(v42 + 100) == *(v44 + 36))
        {
          break;
        }
      }

LABEL_47:
      ++v41;
      v40 -= 40;
      v44 += 40;
      if (!(v45 + v40))
      {
        goto LABEL_62;
      }
    }

    if (v38)
    {
      v47 = 1;
      goto LABEL_54;
    }

    if (*(v42 + 356))
    {
      v47 = *(v42 + 376) != 0;
LABEL_54:
      v62 = v47;
    }

    else
    {
      v62 = 0;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v48 = VRTraceErrorLogLevelToCSTR();
      v49 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v61 = IPPORTToStringWithSize(v70, *(a2 + 184) + 400 * v36 + 24, 0x36uLL);
        v50 = IPPORTToStringWithSize(v68, *(a2 + 184) + 400 * v36 + 172, 0x36uLL);
        v51 = *(*(a2 + 184) + 400 * v36 + 376);
        *buf = 136316418;
        *&buf[4] = v48;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessRemovedLocalIPPort";
        *&buf[22] = 1024;
        LODWORD(v64) = 572;
        WORD2(v64) = 2080;
        *(&v64 + 6) = v61;
        HIWORD(v64) = 2080;
        v65 = v50;
        v66 = 1024;
        v67 = v51;
        _os_log_impl(&dword_23D497000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove CP [%s-%s], bIfPrimary [%d]", buf, 0x36u);
      }
    }

    v52 = *(a2 + 184);
    if (*(v52 + 400 * v36 + 4) == 5)
    {
      ICERemoveOneRelayBeatForLocal(a1, *(a2 + 148), *(a2 + 816) - v40);
      v52 = *(a2 + 184);
    }

    RemoveConnectivityCheckResult(a1, *(a2 + 148), v52 + 400 * v36);
    v53 = *(a2 + 184) + 400 * v36;
    v54 = *(a2 + 160);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 0x40000000;
    *&buf[16] = __FlushEventsForCandidatePair_block_invoke;
    *&v64 = &__block_descriptor_tmp_0;
    *(&v64 + 1) = v53;
    FreeEventsMatchingPredicate(v54, buf);
    LODWORD(v39) = *(a2 + 808);
    v38 = v62;
LABEL_61:
    if (v41 == v39)
    {
LABEL_62:
      memcpy(&v35[400 * v37++], (*(a2 + 184) + 400 * v36), 0x190uLL);
    }

    ++v36;
    v55 = *(a2 + 200);
  }

  while (v36 < v55);
  v56 = !v38;
  if (v37 >= 1 && v37 < v55)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v57 = VRTraceErrorLogLevelToCSTR();
      v58 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v59 = *(a2 + 200);
        *buf = 136316162;
        *&buf[4] = v57;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessRemovedLocalIPPort";
        *&buf[22] = 1024;
        LODWORD(v64) = 594;
        WORD2(v64) = 1024;
        *(&v64 + 6) = v59;
        WORD5(v64) = 1024;
        HIDWORD(v64) = v37;
        _os_log_impl(&dword_23D497000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reduce #CP (%d->%d).", buf, 0x28u);
      }
    }

    memcpy(*(a2 + 184), v35, 400 * v37);
  }

LABEL_73:
  free(v35);
  *(a2 + 200) = v37;
  *(a2 + 808) = 0;
  if (!v56 && v37)
  {
    PromoteSecondaryConnection(a2);
  }

LABEL_76:
  v60 = *MEMORY[0x277D85DE8];
}

void ICEConnectivityRecheck(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = v4;
      v13 = 2080;
      v14 = "ICEConnectivityRecheck";
      v15 = 1024;
      v16 = 703;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: check current pairs for new connectivity due to removed interfaces", &v11, 0x1Cu);
    }
  }

  v6 = *(a2 + 200);
  if (v6 >= 1)
  {
    v7 = 0;
    for (i = 0; i < v6; ++i)
    {
      v9 = *(a2 + 184) + v7;
      if (*(v9 + 296) != 9)
      {
        *(v9 + 296) = 2;
        InsertEvent(*(a2 + 160), v9, 1, 50, a1 + 640, 0, 1);
        v6 = *(a2 + 200);
      }

      v7 += 400;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ProcessRemovedRemoteIPPort(uint64_t a1, uint64_t a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = malloc_type_malloc(148 * *(a2 + 196), 0x1000040C185D105uLL);
  if (!v4)
  {
    goto LABEL_70;
  }

  v5 = v4;
  *&v71[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v70[1] = v6;
  *v71 = v6;
  v70[0] = v6;
  v68[0] = v6;
  v68[1] = v6;
  v69[0] = v6;
  *(v69 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v61 = a1;
  if (*(a2 + 196) >= 1)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(a2 + 824);
      if (v9 < 1)
      {
        LODWORD(v9) = 0;
        goto LABEL_21;
      }

      v10 = 0;
      v11 = *(a2 + 176) + 148 * v7;
      v13 = *(v11 + 24);
      v12 = v11 + 24;
      v14 = v13 & 1;
      v15 = *(a2 + 832) + 20;
      while (1)
      {
        if (v14 != (*(v15 - 20) & 1))
        {
          goto LABEL_14;
        }

        if (v14)
        {
          break;
        }

        if (*(v12 + 20) == *v15)
        {
          goto LABEL_17;
        }

LABEL_14:
        ++v10;
        v15 += 40;
        if (v9 == v10)
        {
          goto LABEL_21;
        }
      }

      if (*(v12 + 20) != *v15 || *(v12 + 28) != *(v15 + 8))
      {
        goto LABEL_14;
      }

LABEL_17:
      if (VRTraceGetErrorLogLevelForModule() > 6)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v19 = IPPORTToStringWithSize(v70, *(a2 + 176) + 148 * v7 + 24, 0x36uLL);
          *buf = 136315906;
          *&buf[4] = v17;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessRemovedRemoteIPPort";
          *&buf[22] = 1024;
          LODWORD(v64) = 632;
          WORD2(v64) = 2080;
          *(&v64 + 6) = v19;
          _os_log_impl(&dword_23D497000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove RC [%s].", buf, 0x26u);
        }
      }

      LODWORD(v9) = v10;
LABEL_21:
      if (v9 == *(a2 + 824))
      {
        v20 = &v5[148 * v8];
        v21 = *(a2 + 176) + 148 * v7;
        v22 = *(v21 + 16);
        *v20 = *v21;
        *(v20 + 1) = v22;
        v23 = *(v21 + 32);
        v24 = *(v21 + 48);
        v25 = *(v21 + 80);
        *(v20 + 4) = *(v21 + 64);
        *(v20 + 5) = v25;
        *(v20 + 2) = v23;
        *(v20 + 3) = v24;
        v26 = *(v21 + 96);
        v27 = *(v21 + 112);
        v28 = *(v21 + 128);
        *(v20 + 36) = *(v21 + 144);
        *(v20 + 7) = v27;
        *(v20 + 8) = v28;
        *(v20 + 6) = v26;
        ++v8;
      }

      ++v7;
      v29 = *(a2 + 196);
      if (v7 >= v29)
      {
        a1 = v61;
        if (v8 >= 1 && v8 < v29)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v30 = VRTraceErrorLogLevelToCSTR();
            v31 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v32 = *(a2 + 196);
              *buf = 136316162;
              *&buf[4] = v30;
              *&buf[12] = 2080;
              *&buf[14] = "ProcessRemovedRemoteIPPort";
              *&buf[22] = 1024;
              LODWORD(v64) = 644;
              WORD2(v64) = 1024;
              *(&v64 + 6) = v32;
              WORD5(v64) = 1024;
              HIDWORD(v64) = v8;
              _os_log_impl(&dword_23D497000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reduce #RC (%d->%d).", buf, 0x28u);
            }
          }

          *(a2 + 196) = v8;
          memcpy(*(a2 + 176), v5, 148 * v8);
        }

        break;
      }
    }
  }

  free(v5);
  __src = malloc_type_malloc(400 * *(a2 + 200), 0x10200402E010713uLL);
  if (!__src)
  {
    goto LABEL_70;
  }

  if (*(a2 + 200) < 1)
  {
    v34 = 0;
    v56 = 1;
    goto LABEL_67;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  do
  {
    v36 = *(a2 + 824);
    if (v36 < 1)
    {
      LODWORD(v37) = 0;
      goto LABEL_57;
    }

    v37 = 0;
    v38 = *(a2 + 184);
    v39 = v38 + 400 * v33;
    v41 = *(v39 + 172);
    v40 = v39 + 172;
    v42 = v41 & 1;
    v43 = *(a2 + 832) + 20;
    while (1)
    {
      if (v42 != (*(v43 - 20) & 1))
      {
        goto LABEL_43;
      }

      if (v42)
      {
        break;
      }

      if (*(v40 + 20) == *v43)
      {
        goto LABEL_46;
      }

LABEL_43:
      ++v37;
      v43 += 40;
      if (v36 == v37)
      {
        goto LABEL_58;
      }
    }

    if (*(v40 + 20) != *v43 || *(v40 + 28) != *(v43 + 8))
    {
      goto LABEL_43;
    }

LABEL_46:
    if (v35)
    {
      v35 = 1;
    }

    else
    {
      v45 = v38 + 400 * v33;
      if (*(v45 + 356))
      {
        v35 = *(v45 + 376) != 0;
      }

      else
      {
        v35 = 0;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v46 = VRTraceErrorLogLevelToCSTR();
      v47 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v48 = IPPORTToStringWithSize(v70, *(a2 + 184) + 400 * v33 + 24, 0x36uLL);
        v49 = IPPORTToStringWithSize(v68, *(a2 + 184) + 400 * v33 + 172, 0x36uLL);
        v50 = *(*(a2 + 184) + 400 * v33 + 376);
        *buf = 136316418;
        *&buf[4] = v46;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessRemovedRemoteIPPort";
        *&buf[22] = 1024;
        LODWORD(v64) = 663;
        WORD2(v64) = 2080;
        *(&v64 + 6) = v48;
        a1 = v61;
        HIWORD(v64) = 2080;
        v65 = v49;
        v66 = 1024;
        v67 = v50;
        _os_log_impl(&dword_23D497000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove CP [%s-%s], bIfPrimary [%d]", buf, 0x36u);
      }
    }

    v51 = *(a2 + 184);
    v52 = v51 + 400 * v33;
    if (*(v52 + 4) == 5)
    {
      ICEDiscardOneRelayBindingForRemote(a1, a2, v52 + 172);
      v51 = *(a2 + 184);
    }

    RemoveConnectivityCheckResult(a1, *(a2 + 148), v51 + 400 * v33);
    v53 = *(a2 + 184) + 400 * v33;
    v54 = *(a2 + 160);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 0x40000000;
    *&buf[16] = __FlushEventsForCandidatePair_block_invoke;
    *&v64 = &__block_descriptor_tmp_0;
    *(&v64 + 1) = v53;
    FreeEventsMatchingPredicate(v54, buf);
    LODWORD(v36) = *(a2 + 824);
LABEL_57:
    if (v37 == v36)
    {
LABEL_58:
      memcpy(&__src[400 * v34++], (*(a2 + 184) + 400 * v33), 0x190uLL);
    }

    ++v33;
    v55 = *(a2 + 200);
  }

  while (v33 < v55);
  v56 = !v35;
  if (v34 >= 1 && v34 < v55)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v57 = VRTraceErrorLogLevelToCSTR();
      v58 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v59 = *(a2 + 200);
        *buf = 136316162;
        *&buf[4] = v57;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessRemovedRemoteIPPort";
        *&buf[22] = 1024;
        LODWORD(v64) = 685;
        WORD2(v64) = 1024;
        *(&v64 + 6) = v59;
        WORD5(v64) = 1024;
        HIDWORD(v64) = v34;
        _os_log_impl(&dword_23D497000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reduce #CP (%d->%d).", buf, 0x28u);
      }
    }

    memcpy(*(a2 + 184), __src, 400 * v34);
  }

LABEL_67:
  free(__src);
  *(a2 + 200) = v34;
  *(a2 + 824) = 0;
  if (!v56 && v34)
  {
    PromoteSecondaryConnection(a2);
  }

LABEL_70:
  v60 = *MEMORY[0x277D85DE8];
}

void PromoteSecondaryConnection(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 200);
  if (v1 >= 1)
  {
    v3 = 0;
    *&v26[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25[1] = v4;
    *v26 = v4;
    v25[0] = v4;
    v23[0] = v4;
    v23[1] = v4;
    v24[0] = v4;
    *(v24 + 14) = 0xAAAAAAAAAAAAAAAALL;
    v5 = (*(a1 + 184) + 376);
    v6 = -1;
    v7 = -1;
    do
    {
      if (*(v5 - 5))
      {
        if (*v5)
        {
          v6 = v3;
        }

        else
        {
          v7 = v3;
        }
      }

      ++v3;
      v5 += 100;
    }

    while (v1 != v3);
    if (v6 == -1 && v7 != -1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v10 = IPPORTToStringWithSize(v25, *(a1 + 184) + 400 * v7 + 24, 0x36uLL);
          v11 = IPPORTToStringWithSize(v23, *(a1 + 184) + 400 * v7 + 172, 0x36uLL);
          v13 = 136316162;
          v14 = v8;
          v15 = 2080;
          v16 = "PromoteSecondaryConnection";
          v17 = 1024;
          v18 = 513;
          v19 = 2080;
          v20 = v10;
          v21 = 2080;
          v22 = v11;
          _os_log_impl(&dword_23D497000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: promote secondary [%s - %s] to primary", &v13, 0x30u);
        }
      }

      *(*(a1 + 184) + 400 * v7 + 376) = 1;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t AddConnectivityCheckResult(uint64_t a1, uint64_t a2, int a3)
{
  v101 = *MEMORY[0x277D85DE8];
  *&v100[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v99[1] = v6;
  *v100 = v6;
  v99[0] = v6;
  *(v98 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v97[1] = v6;
  v98[0] = v6;
  v97[0] = v6;
  v73 = 1;
  v7 = *(*(a2 + 168) + 8);
  v8 = *(*(a2 + 176) + 8);
  v9 = *(a2 + 184) + 400 * a3;
  v10 = *v9;
  pthread_rwlock_rdlock((a1 + 240));
  v12 = *(a1 + 440);
  if (!v12)
  {
    pthread_rwlock_unlock((a1 + 240));
    v14 = 0;
    goto LABEL_37;
  }

  v13 = 0;
  LODWORD(v14) = 0;
  *&v11 = 136316162;
  do
  {
    if (*v12 != v7 || *(v12 + 16) != v10 || (*(v12 + 28) & 1) != (*(v9 + 64) & 1))
    {
      goto LABEL_33;
    }

    if (*(v12 + 28))
    {
      if (*(v12 + 48) != *(v9 + 84) || *(v12 + 56) != *(v9 + 92))
      {
        goto LABEL_33;
      }
    }

    else if (*(v12 + 48) != *(v9 + 84))
    {
      goto LABEL_33;
    }

    if (*(v12 + 64) != *(v9 + 100) || (*(v12 + 148) & 1) != (*(v9 + 172) & 1))
    {
      goto LABEL_33;
    }

    if (*(v12 + 148))
    {
      if (*(v12 + 168) != *(v9 + 192) || *(v12 + 176) != *(v9 + 200))
      {
        goto LABEL_33;
      }
    }

    else if (*(v12 + 168) != *(v9 + 192))
    {
      goto LABEL_33;
    }

    if (*(v12 + 184) == *(v9 + 208))
    {
      v17 = *(v9 + 4) == 5 && *(v9 + 152) == 5;
      if (*(v12 + 20) == v17)
      {
        v70 = v11;
        if (VRTraceGetErrorLogLevelForModule() >= 7 && (v69 = VRTraceErrorLogLevelToCSTR(), v18 = *MEMORY[0x277CE5818], os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT)))
        {
          *buf = v70;
          *&buf[4] = v69;
          *&buf[12] = 2080;
          *&buf[14] = "AddConnectivityCheckResult";
          *&buf[22] = 1024;
          LODWORD(v75) = 1275;
          WORD2(v75) = 1024;
          *(&v75 + 6) = v7;
          WORD5(v75) = 1024;
          HIDWORD(v75) = v10;
          _os_log_impl(&dword_23D497000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connectivity check result found (id:%d proto:%d)\n", buf, 0x28u);
          v11 = v70;
          v13 = 1;
        }

        else
        {
          v13 = 1;
          v11 = v70;
        }
      }
    }

LABEL_33:
    v12 = *(v12 + 304);
    v14 = (v14 + 1);
  }

  while (v12);
  pthread_rwlock_unlock((a1 + 240));
  if (v13)
  {
    goto LABEL_74;
  }

LABEL_37:
  v19 = *(v9 + 4) == 5 && *(v9 + 152) == 5;
  v20 = malloc_type_calloc(1uLL, 0x140uLL, 0x1020040A6FBA1A4uLL);
  if (v20)
  {
    v21 = v20;
    v22 = *(a2 + 804) + 1;
    *(a2 + 804) = v22;
    *v20 = v7;
    *(v20 + 1) = v22;
    *(v20 + 2) = *(a2 + 840);
    *(v20 + 3) = v8;
    *(v20 + 4) = v10;
    *(v20 + 67) = *(v9 + 352);
    *(v20 + 17) = *(a2 + 872);
    v23 = *(v9 + 64);
    v24 = *(v9 + 80);
    *(v20 + 60) = *(v9 + 96);
    *(v20 + 44) = v24;
    *(v20 + 28) = v23;
    if (IsIPPORTValid(v9 + 212))
    {
      v25 = v9 + 212;
    }

    else
    {
      v25 = v9 + 172;
    }

    v26 = *(v25 + 32);
    v27 = *(v25 + 16);
    *(v21 + 68) = *v25;
    *(v21 + 84) = v27;
    *(v21 + 100) = v26;
    v28 = *(v9 + 40);
    v29 = *(v9 + 24);
    *(v21 + 140) = *(v9 + 56);
    *(v21 + 108) = v29;
    *(v21 + 124) = v28;
    if (v19 && (v30 = (a2 + 236), IsIPPORTValid(a2 + 236)))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v71 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v71;
          *&buf[12] = 2080;
          *&buf[14] = "AddConnectivityCheckResult";
          *&buf[22] = 1024;
          LODWORD(v75) = 1312;
          _os_log_impl(&dword_23D497000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Relay server used", buf, 0x1Cu);
        }
      }

      v32 = *v30;
      v33 = *(a2 + 252);
      *(v21 + 180) = *(a2 + 268);
      *(v21 + 164) = v33;
      *(v21 + 148) = v32;
      v34 = *v30;
      v35 = *(a2 + 252);
      *(v21 + 260) = *(a2 + 268);
      *(v21 + 244) = v35;
      *(v21 + 228) = v34;
      *(v21 + 12) = *(a2 + 232);
      v36 = *(a2 + 234);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v72 = VRTraceErrorLogLevelToCSTR();
        v37 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v72;
          *&buf[12] = 2080;
          *&buf[14] = "AddConnectivityCheckResult";
          *&buf[22] = 1024;
          LODWORD(v75) = 1319;
          _os_log_impl(&dword_23D497000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No relay server used", buf, 0x1Cu);
        }
      }

      v36 = 0;
      v38 = *(v9 + 172);
      v39 = *(v9 + 188);
      *(v21 + 180) = *(v9 + 204);
      *(v21 + 164) = v39;
      *(v21 + 148) = v38;
      *(v21 + 12) = 0;
    }

    v40 = (a1 + 440);
    *(v21 + 13) = v36;
    v41 = *(v9 + 312);
    v42 = *(v9 + 328);
    *(v21 + 220) = *(v9 + 344);
    *(v21 + 204) = v42;
    *(v21 + 188) = v41;
    *(v21 + 5) = v19;
    v43 = *(a2 + 184) + 400 * a3;
    *(v21 + 73) = *(v43 + 368);
    *(v21 + 37) = *(v43 + 376);
    IPPORTToStringWithSize(v99, (v21 + 108), 0x36uLL);
    IPPORTToStringWithSize(v97, (v21 + 148), 0x36uLL);
    *(*(a2 + 184) + 400 * a3 + 364) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v44 = VRTraceErrorLogLevelToCSTR();
      v45 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v46 = *v21;
        if (*(v21 + 74))
        {
          v47 = "primary";
        }

        else
        {
          v47 = "secondary";
        }

        v48 = *(v21 + 3);
        v49 = *(v21 + 4);
        v50 = *(v21 + 73);
        v51 = *(v9 + 360);
        v52 = *(a2 + 804);
        v53 = *(v21 + 12);
        v54 = *(v21 + 13);
        v55 = *(v21 + 5);
        *buf = 136318978;
        *&buf[4] = v44;
        *&buf[12] = 2080;
        *&buf[14] = "AddConnectivityCheckResult";
        *&buf[22] = 1024;
        LODWORD(v75) = 1342;
        WORD2(v75) = 2080;
        *(&v75 + 6) = v47;
        HIWORD(v75) = 1024;
        *v76 = v46;
        *&v76[4] = 1024;
        *&v76[6] = v48;
        v77 = 1024;
        v78 = v49;
        v79 = 2080;
        v80 = v21 + 32;
        v81 = 1024;
        v82 = v50;
        v83 = 1024;
        v84 = v51;
        v85 = 1024;
        v86 = v52;
        v87 = 2080;
        v88 = v99;
        v89 = 2080;
        v90 = v97;
        v91 = 1024;
        v92 = v53;
        v93 = 1024;
        v94 = v54;
        v95 = 1024;
        v96 = v55;
        _os_log_impl(&dword_23D497000, v45, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Add ICE result %s (callid:%08X remoteid:%08X proto:%d if=[%s] upgrade:%d nominate#:%d result#:%d): %s-%s, %d, %x, %d", buf, 0x7Au);
      }
    }

    pthread_rwlock_wrlock((a1 + 240));
    v56 = *v40;
    if (*v40)
    {
      do
      {
        v57 = v56;
        v56 = *(v56 + 38);
      }

      while (v56);
      v40 = (v57 + 304);
    }

    *v40 = v21;
    pthread_rwlock_unlock((a1 + 240));
    pthread_mutex_lock((a2 + 16));
    if (*(a2 + 896))
    {
      dispatch_time(0, 5000000000);
      v58 = *(a2 + 896);
      v59 = SKEState_CopySecretKeySync();
      if (v59)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            AddConnectivityCheckResult_cold_1();
          }
        }
      }
    }

    else
    {
      v59 = 0;
    }

    pthread_mutex_unlock((a2 + 16));
    (*(a1 + 32))(*(a1 + 8), v7, v21, &v73, *(v21 + 5), 0, v59);
    v62 = *(a2 + 160);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 0x40000000;
    *&buf[16] = __FlushEventsForSelectedCandidatePair_block_invoke;
    *&v75 = &__block_descriptor_tmp_22;
    *(&v75 + 1) = v9;
    *v76 = a2;
    FreeEventsMatchingPredicate(v62, buf);
LABEL_74:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v63 = VRTraceErrorLogLevelToCSTR();
      v64 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v65 = *(a2 + 804);
        v66 = *(a2 + 212);
        *buf = 136316162;
        *&buf[4] = v63;
        *&buf[12] = 2080;
        *&buf[14] = "AddConnectivityCheckResult";
        *&buf[22] = 1024;
        LODWORD(v75) = 1409;
        WORD2(v75) = 1024;
        *(&v75 + 6) = v65;
        WORD5(v75) = 1024;
        HIDWORD(v75) = v66;
        _os_log_impl(&dword_23D497000, v64, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ACCR: result count %d max count :%d", buf, 0x28u);
      }
    }
  }

  else
  {
    v14 = 2148859907;
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v61 = *MEMORY[0x277CE5818];
      if (IsOSFaultDisabled)
      {
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          AddConnectivityCheckResult_cold_3();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_FAULT))
      {
        AddConnectivityCheckResult_cold_2();
      }
    }
  }

  v67 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __FlushEventsForSelectedCandidatePair_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (MatchCandidatePairWithIDs(*(a1 + 32), (v3 + 14), (v3 + 4)) || !IsIPPORTValid(v3 + 108))
  {
    return 1;
  }

  if ((*(v3 + 108) & 1) == 0)
  {
    v5 = *(v3 + 128);
    v6 = v5 == -1408237568 || v5 == -1062731776;
    if (v6 || v5 == 167772160)
    {
      return 1;
    }
  }

  v8 = *(a1 + 40);
  v9 = *(v8 + 200);
  if (v9 < 1)
  {
    return 0;
  }

  for (i = *(v8 + 184); !MatchCandidatePairWithIDs(i, (v3 + 14), (v3 + 4)); i += 400)
  {
    if (!--v9)
    {
      return 0;
    }
  }

  v11 = *(i + 296);
  v12 = v11 == 3 || v11 >= 6;
  if (v12 && !*(i + 356))
  {
    return 1;
  }

  if (((v13 = *(*(a1 + 40) + 840), v13 == 2) || (v13 == 1 ? (v14 = v11 == 9) : (v14 = 0), v14)) && *(i + 356) && !*(v3 + 152))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void OUTLINED_FUNCTION_12_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x22u);
}

uint64_t IsSTUNIDValid(uint64_t a1, uint64_t a2, int a3, double a4)
{
  if (*a2 == 554869826)
  {
    if (a1)
    {
      while (1)
      {
        if ((*(a1 + 4) & 0xFFFE) == 2 && *(a1 + 1492) >= 20 && *(a1 + 15) == *(a2 + 4) && *(a1 + 23) == *(a2 + 12))
        {
          if (!a3)
          {
            goto LABEL_24;
          }

          if (*(a1 + 1576) <= a4)
          {
            break;
          }
        }

        a1 = *(a1 + 1584);
        if (!a1)
        {
          return 0;
        }
      }

      if (*(a1 + 6) != 1)
      {
LABEL_24:
        v5 = 1;
        *(a1 + 6) = 1;
        return v5;
      }
    }
  }

  else
  {
    while (a1)
    {
      if ((*(a1 + 4) & 0xFFFE) == 2 && *(a1 + 1492) >= 20 && *(a1 + 11) == *a2 && *(a1 + 19) == *(a2 + 8))
      {
        goto LABEL_24;
      }

      a1 = *(a1 + 1584);
    }
  }

  return 0;
}

uint64_t FindSNATMAPRequest(uint64_t a1, uint64_t a2, int a3)
{
  for (i = a1; i; i = *(i + 1584))
  {
    if (*(i + 4) == 1)
    {
      v5 = *(i + 1492);
      if (SNATMAP_IsEqualNonce())
      {
        if (*(i + 6) == a3)
        {
          break;
        }
      }
    }
  }

  return i;
}

uint64_t MakeSNATMAPRequest(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  while (1)
  {
    v10 = *a4;
    v7 = *(a2 + 20);
    v8 = *(a2 + 36);
    result = SNATMAP_MakeRequest();
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = SNATMAP_GetNonceValue();
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    result = FindSNATMAPRequest(a1, 2863311530, 0);
    if (!result)
    {
      *a4 = v10;
      return result;
    }
  }

  return result;
}

uint64_t ProcessMessageType(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 1492), v1 > 1))
  {
    v2 = 0;
    if (v1 == 16 && *(a1 + 7) == 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    *(a1 + 4) = v4;
  }

  else
  {
    v2 = 2148859905;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessMessageType_cold_1();
      }
    }
  }

  return v2;
}

uint64_t ProcessCollectionResponse(uint64_t a1, uint64_t a2, int a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, _WORD *a8, __CFDictionary *a9, int *a10, _DWORD *a11)
{
  v66 = *MEMORY[0x277D85DE8];
  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[0] = v12;
  v61[1] = v12;
  v45 = -1431655766;
  *(v60 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v59[1] = v12;
  v60[0] = v12;
  v59[0] = v12;
  if (a5 <= 3)
  {
    v13 = 2148859912;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessCollectionResponse_cold_4();
      }
    }

    goto LABEL_45;
  }

  v20 = *a4;
  v63 = 0u;
  v64 = 0u;
  v65 = 0;
  if (a5 == 16 && v20 == 0x2000000)
  {
    NonceValue = SNATMAP_GetNonceValue();
    if ((NonceValue & 0x80000000) != 0)
    {
      v13 = NonceValue;
      goto LABEL_45;
    }

    SNATMAPRequest = FindSNATMAPRequest(a2, v45, 1);
    if (SNATMAPRequest)
    {
      v23 = SNATMAPRequest;
      LODWORD(v61[0]) = 0;
      *(v61 + 4) = *"external";
      v13 = ProcessSNATMAPResponse();
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if ((v13 & 0x80000000) != 0)
      {
        if (ErrorLogLevelForModule >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessCollectionResponse_cold_3();
          }
        }
      }

      else
      {
        if (ErrorLogLevelForModule >= 6)
        {
          v25 = VRTraceErrorLogLevelToCSTR();
          v26 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v25;
            *&buf[12] = 2080;
            *&buf[14] = "ProcessCollectionResponse";
            *&buf[22] = 1024;
            *&buf[24] = 194;
            *&buf[28] = 2080;
            *&buf[30] = IPPORTToStringWithSize(v59, v61, 0x36uLL);
            _os_log_impl(&dword_23D497000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SNATMAP mapping [%s]", buf, 0x26u);
          }
        }

        v63 = v61[0];
        v64 = v61[1];
        v65 = v62;
        v13 = ICEUpdateSMSTUNIPPort(a1, a6, &v63, a3, 3, a11);
        *(v23 + 6) = 1;
      }

      goto LABEL_45;
    }

    v13 = 2148859916;
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_45;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *buf = 136315906;
    *&buf[4] = v35;
    *&buf[12] = 2080;
    *&buf[14] = "ProcessCollectionResponse";
    *&buf[22] = 1024;
    *&buf[24] = 182;
    *&buf[28] = 1024;
    *&buf[30] = 182;
    v31 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: SNATMAP nonce not match.";
    v32 = buf;
    v33 = v36;
    v34 = 34;
LABEL_31:
    _os_log_impl(&dword_23D497000, v33, OS_LOG_TYPE_DEFAULT, v31, v32, v34);
    goto LABEL_45;
  }

  memset(buf, 170, sizeof(buf));
  v57 = 0xAAAAAAAAAAAAAAAALL;
  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56[0] = v27;
  v56[1] = v27;
  v44 = 0;
  v13 = ParseSTUNMessage(a4, a5, buf);
  if ((v13 & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessCollectionResponse_cold_2();
      }
    }

    goto LABEL_45;
  }

  if (!IsSTUNIDValid(a2, &buf[8], 0, 0.0))
  {
    v13 = 2148859916;
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_45;
    }

    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *v46 = 136315650;
    v47 = v29;
    v48 = 2080;
    v49 = "ProcessCollectionResponse";
    v50 = 1024;
    v51 = 216;
    v31 = " [%s] %s:%d recv old STUN response, ignored";
    v32 = v46;
    v33 = v30;
    v34 = 28;
    goto LABEL_31;
  }

  if (*&buf[2] != 3)
  {
    goto LABEL_44;
  }

  if (*buf == 272)
  {
    ProcessAllocateErrorResponse(buf, a8);
    v13 = 2148859955;
    goto LABEL_44;
  }

  if (*buf != 256)
  {
LABEL_44:
    FreeSTUNMessage(buf);
    goto LABEL_45;
  }

  if (a10)
  {
    v28 = *a10;
  }

  else
  {
    v28 = 1;
  }

  v13 = ProcessAllocateResponse(buf, 1, &v44, v61, v56, a9, v28);
  v37 = VRTraceGetErrorLogLevelForModule();
  if ((v13 & 0x80000000) == 0)
  {
    if (v37 >= 7)
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v40 = IPPORTToStringWithSize(v59, v61, 0x36uLL);
        *v46 = 136316162;
        v47 = v38;
        v48 = 2080;
        v49 = "ProcessCollectionResponse";
        v50 = 1024;
        v51 = 229;
        v52 = 2080;
        v53 = v40;
        v54 = 1024;
        v55 = v44;
        _os_log_impl(&dword_23D497000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RELAY mapping [%s] lifetime [%d]", v46, 0x2Cu);
      }
    }

    v41 = ICEUpdateRelayIPPort(a1, a6, v61, v56, a3);
    v13 = v41;
    if (a10 && (v41 & 0x80000000) == 0)
    {
      *a10 = 0;
    }

    goto LABEL_44;
  }

  if (v37 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ProcessCollectionResponse_cold_1();
    }
  }

LABEL_45:
  v42 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t SendCollectionRequest(uint64_t a1, uint64_t *a2, int a3, const char *a4, const void *a5)
{
  v125 = a2;
  v142 = *MEMORY[0x277D85DE8];
  v141 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v140 = v9;
  v139 = v9;
  v138 = 0;
  v137 = 0u;
  v136 = 0u;
  memset(v135, 170, sizeof(v135));
  *(v134 + 14) = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v133[1] = v10;
  v134[0] = v10;
  v133[0] = v10;
  v128 = 0;
  SNATMAPServer = GetSNATMAPServer();
  v12 = (a1 + 452);
  if (SNATMAPServer < 0)
  {
    *(a1 + 484) = 0;
    *v12 = 0u;
    *(a1 + 468) = 0u;
    if (!a4)
    {
LABEL_16:
      v123 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v13 = *(a1 + 468);
    v139 = *v12;
    v140 = v13;
    v141 = *(a1 + 484);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v132[0]) = 136315906;
        *(v132 + 4) = v14;
        WORD2(v132[1]) = 2080;
        *(&v132[1] + 6) = "SendCollectionRequest";
        HIWORD(v132[2]) = 1024;
        LODWORD(v132[3]) = 366;
        WORD2(v132[3]) = 2080;
        *(&v132[3] + 6) = IPPORTToStringWithSize(v133, &v139, 0x36uLL);
        _os_log_impl(&dword_23D497000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Resolved SNATMAP server [%s]", v132, 0x26u);
      }
    }

    if (!a4)
    {
      goto LABEL_16;
    }
  }

  IPPortFromDict = GetIPPortFromDict(a5, @"GKSRelaySelfRelayIP", @"GKSRelaySelfRelayPort", &v136);
  DWORD1(v137) = bswap32(DWORD1(v137));
  if (IPPortFromDict < 0 || !IsIPPORTValid(&v136))
  {
    goto LABEL_16;
  }

  *v129 = 0xAAAAAAAAAAAAAAAALL;
  if (GetRemotePrimaryCID(a5, v129) < 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v123 = v17;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v20 = IPPORTToStringWithSize(v133, &v136, 0x36uLL);
      LODWORD(v132[0]) = 136315906;
      *(v132 + 4) = v18;
      WORD2(v132[1]) = 2080;
      *(&v132[1] + 6) = "SendCollectionRequest";
      HIWORD(v132[2]) = 1024;
      LODWORD(v132[3]) = 378;
      WORD2(v132[3]) = 2080;
      *(&v132[3] + 6) = v20;
      _os_log_impl(&dword_23D497000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Resolved relay server [%s]", v132, 0x26u);
    }
  }

LABEL_17:
  v118 = a5;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v132[0]) = 136316418;
      *(v132 + 4) = v21;
      WORD2(v132[1]) = 2080;
      *(&v132[1] + 6) = "SendCollectionRequest";
      HIWORD(v132[2]) = 1024;
      LODWORD(v132[3]) = 381;
      WORD2(v132[3]) = 2080;
      *(&v132[3] + 6) = a4;
      HIWORD(v132[4]) = 1024;
      LODWORD(v132[5]) = DWORD1(v137);
      WORD2(v132[5]) = 1024;
      *(&v132[5] + 6) = WORD2(v138);
      _os_log_impl(&dword_23D497000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SendCollectionRequest: [%s], relayserver:%08X:%u", v132, 0x32u);
    }
  }

  pthread_mutex_lock((a1 + 96));
  v23 = *(a1 + 160);
  if (!v23)
  {
    goto LABEL_83;
  }

  v24 = 0;
  do
  {
    v25 = (*(v23 + 8) & 1) != 0 && *(v23 + 232) == 0;
    if (*v23)
    {
      v26 = *v23 == 5;
    }

    else
    {
      v26 = 1;
    }

    if (v26 || *(v23 + 4) == a3)
    {
      v24 += *(v23 + 30) << 16 != -1442971648 && !v25;
    }

    v23 = *(v23 + 240);
  }

  while (v23);
  if (!v24)
  {
LABEL_83:
    pthread_mutex_unlock((a1 + 96));
LABEL_168:
    v53 = 0;
    goto LABEL_169;
  }

  v127 = malloc_type_malloc(40 * v24, 0x100004053E81896uLL);
  if (v127)
  {
    v113 = &v112;
    (MEMORY[0x28223BE20])();
    v27 = &v112 - ((4 * v24 + 15) & 0x7FFFFFFF0);
    v28 = memset(v27, 170, 4 * v24);
    MEMORY[0x28223BE20](v28);
    memset(v27, 170, 4 * v24);
    if (v24 >= 1)
    {
      bzero(v27, 4 * v24);
      bzero(v27, 4 * v24);
    }

    v124 = &v112 - ((4 * v24 + 15) & 0x7FFFFFFF0);
    v126 = v124;
    v30 = *(a1 + 160);
    v117 = 1;
    v116 = a4;
    if (v30)
    {
      *&v112 = a1;
      v121 = 0;
      v122 = 0;
      LODWORD(v119) = 0;
      v31 = 0;
      v33 = SNATMAPServer >= 0 && v123 == 0;
      v120 = v33;
      *&v29 = 136316418;
      v115 = v29;
      v34 = v126;
      while (1)
      {
        v35 = (v30 + 8);
        v36 = (*(v30 + 8) & 1) != 0 && *(v30 + 232) == 0;
        if (*v30)
        {
          v37 = *v30 == 5;
        }

        else
        {
          v37 = 1;
        }

        if (!v37 && *(v30 + 4) != a3 || *(v30 + 30) << 16 == -1442971648 || v36)
        {
          goto LABEL_81;
        }

        if (IsIPPORTValid(v30 + 96))
        {
          *&v124[4 * v31] = 1;
          if ((*v35 & 4) != 0)
          {
            v38 = 1;
          }

          else
          {
            v38 = v121;
          }

          v39 = v122;
          if ((*v35 & 4) == 0)
          {
            v39 = 1;
          }

          v121 = v38;
          v122 = v39;
          *&v129[46] = 0xAAAAAAAAAAAAAAAALL;
          *&v40 = 0xAAAAAAAAAAAAAAAALL;
          *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v129[16] = v40;
          *&v129[32] = v40;
          *v129 = v40;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v41 = VRTraceErrorLogLevelToCSTR();
            v42 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v43 = &unk_23D4C9CFB;
              if ((*v35 & 4) == 0)
              {
                v43 = "non-";
              }

              *&v119 = v43;
              *&v114 = IPPORTToStringWithSize(v133, v30 + 8, 0x36uLL);
              v44 = IPPORTToStringWithSize(v129, v30 + 96, 0x36uLL);
              LODWORD(v132[0]) = v115;
              *(v132 + 4) = v41;
              WORD2(v132[1]) = 2080;
              *(&v132[1] + 6) = "SendCollectionRequest";
              HIWORD(v132[2]) = 1024;
              LODWORD(v132[3]) = 452;
              WORD2(v132[3]) = 2080;
              *(&v132[3] + 6) = v119;
              HIWORD(v132[4]) = 2080;
              v132[5] = v114;
              LOWORD(v132[6]) = 2080;
              *(&v132[6] + 2) = v44;
              _os_log_impl(&dword_23D497000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found %scellular interface [%s] with external mapping [%s].", v132, 0x3Au);
            }
          }

          LODWORD(v119) = 1;
        }

        v45 = &v127[40 * v31];
        v46 = *v35;
        v47 = *(v30 + 24);
        *(v45 + 4) = *(v30 + 40);
        *v45 = v46;
        *(v45 + 1) = v47;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v48 = VRTraceErrorLogLevelToCSTR();
          v49 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v50 = IPPORTToStringWithSize(v133, v45, 0x36uLL);
            v51 = *(v30 + 30);
            LODWORD(v132[0]) = v115;
            *(v132 + 4) = v48;
            WORD2(v132[1]) = 2080;
            *(&v132[1] + 6) = "SendCollectionRequest";
            HIWORD(v132[2]) = 1024;
            LODWORD(v132[3]) = 460;
            WORD2(v132[3]) = 2080;
            *(&v132[3] + 6) = v50;
            HIWORD(v132[4]) = 1024;
            LODWORD(v132[5]) = v51 << 16 == -1442971648;
            WORD2(v132[5]) = 1024;
            *(&v132[5] + 6) = v123;
            _os_log_impl(&dword_23D497000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d interface list: local (%s) - self_assigned = %d, useRelay = %d\n", v132, 0x32u);
          }
        }

        if (!v120)
        {
          break;
        }

        v34 = v126;
        if (*(v30 + 228) != 8)
        {
          v52 = 1;
LABEL_79:
          *&v34[4 * v31] = v52;
        }

LABEL_80:
        ++v31;
LABEL_81:
        v30 = *(v30 + 240);
        if (!v30)
        {
          LODWORD(v115) = v121 == 0;
          v117 = v119 == 0;
          v122 = !v122;
          a1 = v112;
          goto LABEL_88;
        }
      }

      v34 = v126;
      if (!v123 || (*(v30 + 228) & 0xFFFFFFFE) == 8)
      {
        goto LABEL_80;
      }

      v52 = 2;
      goto LABEL_79;
    }

    LODWORD(v115) = 1;
    v122 = 1;
    v34 = v126;
LABEL_88:
    pthread_mutex_unlock((a1 + 96));
    v57 = v118;
    if (v123 == 2)
    {
      pthread_rwlock_rdlock((a1 + 240));
      v58 = *(a1 + 440);
      if (v58)
      {
        v59 = -1;
        v60 = -1;
        do
        {
          if (*v58 == a3)
          {
            v61 = ((*(v58 + 28) >> 1) & 2 | (*(v58 + 68) >> 2) & 1) ^ 3;
            if (*(v58 + 296))
            {
              v59 = ((*(v58 + 28) >> 1) & 2 | (*(v58 + 68) >> 2) & 1) ^ 3;
            }

            else
            {
              v60 = ((*(v58 + 28) >> 1) & 2 | (*(v58 + 68) >> 2) & 1) ^ 3;
            }
          }

          v58 = *(v58 + 304);
        }

        while (v58);
      }

      else
      {
        v60 = -1;
        v59 = -1;
      }

      pthread_rwlock_unlock((a1 + 240));
      v63 = v59 == -1;
      v64 = v60 >= 0;
      v65 = !v63 || !v64;
      if (v63 && v64)
      {
        v66 = -1;
      }

      else
      {
        v66 = v60;
      }

      v120 = v66;
      if (v65)
      {
        v62 = v59;
      }

      else
      {
        v62 = v60;
      }
    }

    else
    {
      v62 = -1;
      v120 = -1;
    }

    v121 = v62;
    if (v24 >= 1)
    {
      v67 = 0;
      v68 = v24;
      v70 = v121 == 2 && v120 >= 0;
      v123 = v70;
      *&v56 = 136316162;
      v119 = v56;
      *&v56 = 136316674;
      v112 = v56;
      *&v56 = 136316418;
      v114 = v56;
      do
      {
        v71 = *&v34[4 * v67];
        if (v71 != 2)
        {
          if (v71 != 1)
          {
            goto LABEL_166;
          }

          v128 = 1472;
          v72 = &v127[40 * v67];
          if ((MakeSNATMAPRequest(*v125, v72, v135, &v128) & 0x80000000) != 0)
          {
            goto LABEL_166;
          }

          v73 = a1;
          v74 = (*(a1 + 16))(*(a1 + 8), 0, v135, v128, v72, &v139, 0, 0);
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          if (v74 < 0)
          {
            if (ErrorLogLevelForModule >= 3)
            {
              v92 = VRTraceErrorLogLevelToCSTR();
              v93 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                v109 = IPPORTToStringWithSize(v133, v72, 0x36uLL);
                LODWORD(v132[0]) = v114;
                *(v132 + 4) = v92;
                WORD2(v132[1]) = 2080;
                *(&v132[1] + 6) = "SendCollectionRequest";
                HIWORD(v132[2]) = 1024;
                LODWORD(v132[3]) = 509;
                WORD2(v132[3]) = 1024;
                *(&v132[3] + 6) = 509;
                WORD1(v132[4]) = 2080;
                *(&v132[4] + 4) = v109;
                WORD2(v132[5]) = 1024;
                *(&v132[5] + 6) = v74;
                _os_log_error_impl(&dword_23D497000, v93, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: HandoverReport: failed to send SNATMAP request for [%s], error(%08X). Save message for retry", v132, 0x32u);
              }
            }
          }

          else if (ErrorLogLevelForModule >= 6)
          {
            v76 = VRTraceErrorLogLevelToCSTR();
            v77 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v78 = IPPORTToStringWithSize(v133, v72, 0x36uLL);
              v79 = "YES";
              if ((*v72 & 4) == 0)
              {
                v79 = "NO";
              }

              LODWORD(v132[0]) = v119;
              *(v132 + 4) = v76;
              WORD2(v132[1]) = 2080;
              *(&v132[1] + 6) = "SendCollectionRequest";
              HIWORD(v132[2]) = 1024;
              LODWORD(v132[3]) = 512;
              WORD2(v132[3]) = 2080;
              *(&v132[3] + 6) = v78;
              HIWORD(v132[4]) = 2080;
              v132[5] = v79;
              _os_log_impl(&dword_23D497000, v77, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sent SNATMAP request for [%s], cellular [%s].", v132, 0x30u);
            }
          }

          v94 = v128;
          if (v128 > 0x5C0)
          {
            goto LABEL_144;
          }

          v95 = malloc_type_calloc(1uLL, 0x638uLL, 0x102004070FB87F4uLL);
          v34 = v126;
          if (v95)
          {
            v96 = v95;
            *v95 = *v72 & 4;
            v95[2] = 1;
            *(v95 + 6) = 0;
            *(v95 + 370) = 1;
            *(v95 + 373) = v94;
            __memcpy_chk();
            v97 = *v72;
            v98 = *(v72 + 1);
            *(v96 + 1528) = *(v72 + 4);
            *(v96 + 1496) = v97;
            *(v96 + 1512) = v98;
            *(v96 + 1536) = v139;
            *(v96 + 1552) = v140;
            *(v96 + 1568) = v141;
            v99 = *v125;
            if (*v125)
            {
              do
              {
                v100 = v99;
                v99 = *(v99 + 1584);
              }

              while (v99);
              *(v100 + 1584) = v96;
            }

            else
            {
              *v125 = v96;
            }
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v103 = VRTraceErrorLogLevelToCSTR();
            v104 = *MEMORY[0x277CE5818];
            a1 = v73;
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v132[0]) = v119;
              *(v132 + 4) = v103;
              WORD2(v132[1]) = 2080;
              *(&v132[1] + 6) = "SaveSMRequest";
              HIWORD(v132[2]) = 1024;
              LODWORD(v132[3]) = 288;
              WORD2(v132[3]) = 1024;
              *(&v132[3] + 6) = 288;
              WORD1(v132[4]) = 1024;
              HIDWORD(v132[4]) = 1592;
              _os_log_error_impl(&dword_23D497000, v104, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: calloc(%d) failed", v132, 0x28u);
            }

            goto LABEL_166;
          }

          a1 = v73;
          goto LABEL_166;
        }

        memset(v132, 170, sizeof(v132));
        v80 = v124;
        if ((v123 & 1) != 0 || (v121 + 1) <= 2)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v81 = VRTraceErrorLogLevelToCSTR();
            v82 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *v129 = v119;
              *&v129[4] = v81;
              *&v129[12] = 2080;
              *&v129[14] = "SendCollectionRequest";
              *&v129[22] = 1024;
              *&v129[24] = 532;
              *&v129[28] = 1024;
              *&v129[30] = v121;
              *&v129[34] = 1024;
              *&v129[36] = v120;
              _os_log_impl(&dword_23D497000, v82, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: prefer WIFI %d, %d", v129, 0x28u);
            }
          }

          if (!v122)
          {
            if ((v127[40 * v67] & 4) != 0)
            {
              goto LABEL_166;
            }

            goto LABEL_131;
          }
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v101 = VRTraceErrorLogLevelToCSTR();
            v102 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *v129 = v119;
              *&v129[4] = v101;
              *&v129[12] = 2080;
              *&v129[14] = "SendCollectionRequest";
              *&v129[22] = 1024;
              *&v129[24] = 543;
              *&v129[28] = 1024;
              *&v129[30] = v121;
              *&v129[34] = 1024;
              *&v129[36] = v120;
              _os_log_impl(&dword_23D497000, v102, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: prefer Cell %d, %d", v129, 0x28u);
            }
          }

          if ((v115 & 1) == 0)
          {
            if ((v127[40 * v67] & 4) == 0)
            {
              goto LABEL_166;
            }

LABEL_131:
            if (!*&v80[4 * v67])
            {
              goto LABEL_166;
            }

            goto LABEL_132;
          }
        }

        if (!v117)
        {
          goto LABEL_131;
        }

LABEL_132:
        v83 = 1;
        if ((MakeAllocateRequest(v132, 1, 60, &v136, v116, v57) & 0x80000000) != 0)
        {
          goto LABEL_166;
        }

        v128 = 1472;
        v85 = STUNEncodeMessage(v132, v135, &v128, v57, v84);
        FreeSTUNMessage(v132);
        if (v85 < 0)
        {
          goto LABEL_166;
        }

        v86 = &v127[40 * v67];
        v87 = (*(a1 + 16))(*(a1 + 8), 0, v135, v128, v86, &v136, 0, 0);
        if (v87 < 0)
        {
          v105 = v87;
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_162;
          }

          v73 = a1;
          v106 = VRTraceErrorLogLevelToCSTR();
          v107 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            v108 = IPPORTToStringWithSize(v133, v86, 0x36uLL);
            *v129 = v112;
            *&v129[4] = v106;
            *&v129[12] = 2080;
            *&v129[14] = "SendCollectionRequest";
            *&v129[22] = 1024;
            *&v129[24] = 574;
            *&v129[28] = 1024;
            *&v129[30] = 574;
            *&v129[34] = 2080;
            *&v129[36] = v108;
            *&v129[44] = 2080;
            *&v129[46] = v116;
            v130 = 1024;
            v131 = v105;
            _os_log_error_impl(&dword_23D497000, v107, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: failed to send ALLOCATE_REQUEST for [%s] username [%s] (%08X)\n", v129, 0x3Cu);
          }

LABEL_144:
          a1 = v73;
          v34 = v126;
          goto LABEL_166;
        }

        v88 = SaveSTUNRequest(v125, v135, v128, v86, &v136, 1);
        v34 = v126;
        if ((v88 & 0x80000000) == 0)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            break;
          }

          v89 = VRTraceErrorLogLevelToCSTR();
          v90 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v91 = IPPORTToStringWithSize(v133, v86, 0x36uLL);
            *v129 = v119;
            *&v129[4] = v89;
            *&v129[12] = 2080;
            *&v129[14] = "SendCollectionRequest";
            *&v129[22] = 1024;
            *&v129[24] = 585;
            *&v129[28] = 2080;
            *&v129[30] = v91;
            *&v129[38] = 2080;
            *&v129[40] = v116;
            _os_log_impl(&dword_23D497000, v90, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sent ALLOCATE_REQUEST for [%s] username [%s]\n", v129, 0x30u);
          }

          v83 = 0;
LABEL_162:
          v34 = v126;
          if (!v83)
          {
            break;
          }
        }

LABEL_166:
        ++v67;
      }

      while (v67 < v68);
    }

    free(v127);
    goto LABEL_168;
  }

  v53 = 2148859907;
  pthread_mutex_unlock((a1 + 96));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v54 = VRTraceErrorLogLevelToCSTR();
    v55 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v132[0]) = 136315650;
      *(v132 + 4) = v54;
      WORD2(v132[1]) = 2080;
      *(&v132[1] + 6) = "SendCollectionRequest";
      HIWORD(v132[2]) = 1024;
      LODWORD(v132[3]) = 413;
      _os_log_impl(&dword_23D497000, v55, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d No memory to allocate mbLocal, return", v132, 0x1Cu);
    }
  }

LABEL_169:
  v110 = *MEMORY[0x277D85DE8];
  return v53;
}

uint64_t ReXmitCollectionRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t, void, uint64_t, uint64_t, void, void))
{
  v54 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    v7 = a1;
    *&v53[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v53 = v8;
    v9 = &unk_23D4C9CFB;
    v52[0] = v8;
    v52[1] = v8;
    v10 = MEMORY[0x277CE5818];
    v50[0] = v8;
    v50[1] = v8;
    v51[0] = v8;
    *(v51 + 14) = 0xAAAAAAAAAAAAAAAALL;
    alloc = *MEMORY[0x277CBECE8];
    do
    {
      if (!*(v5 + 6) && *(v5 + 1480))
      {
        v11 = v4(v7, 0, v5 + 7, *(v5 + 1492), v5 + 1496, v5 + 1536, 0, 0);
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (v11 < 0)
        {
          if (ErrorLogLevelForModule >= 3)
          {
            v26 = VRTraceErrorLogLevelToCSTR();
            v27 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
            {
              v28 = *(v5 + 4);
              v29 = "SNATMAP_REQUEST";
              if (v28 == 2)
              {
                v29 = "STUN_REQUEST";
              }

              v34 = v29;
              v35 = *(v5 + 6);
              v33 = IPPORTToStringWithSize(v52, v5 + 1496, 0x36uLL);
              v30 = IPPORTToStringWithSize(v50, v5 + 1536, 0x36uLL);
              *buf = 136317442;
              *&buf[4] = v26;
              *&buf[12] = 2080;
              *&buf[14] = "ReXmitCollectionRequest";
              v40 = 1024;
              v41 = 629;
              v42 = 1024;
              *v43 = 629;
              *&v43[4] = 2080;
              *&v43[6] = v34;
              v44 = 1024;
              v45 = v28;
              v46 = 1024;
              *v47 = v35;
              *&v47[4] = 2080;
              *&v47[6] = v33;
              *&v47[14] = 2080;
              *&v47[16] = v30;
              v48 = 1024;
              v49 = v11;
              _os_log_error_impl(&dword_23D497000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: \tReXmit [%s] (%u:%d) from [%s] to [%s] failed (%08X)\n", buf, 0x52u);
            }
          }
        }

        else
        {
          if (ErrorLogLevelForModule >= 7)
          {
            v13 = VRTraceErrorLogLevelToCSTR();
            v14 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v9;
              v16 = a2;
              v17 = *(v5 + 4);
              if (v17 == 2)
              {
                v18 = "STUN_REQUEST";
              }

              else
              {
                v18 = "SNATMAP_REQUEST";
              }

              v19 = v10;
              v20 = *(v5 + 6);
              v21 = IPPORTToStringWithSize(v52, v5 + 1496, 0x36uLL);
              v22 = IPPORTToStringWithSize(v50, v5 + 1536, 0x36uLL);
              *buf = 136316930;
              *&buf[4] = v13;
              *&buf[12] = 2080;
              *&buf[14] = "ReXmitCollectionRequest";
              v40 = 1024;
              v41 = 639;
              v42 = 2080;
              *v43 = v18;
              *&v43[8] = 1024;
              *&v43[10] = v17;
              a2 = v16;
              v9 = v15;
              v4 = a4;
              v7 = a1;
              v44 = 1024;
              v45 = v20;
              v10 = v19;
              v46 = 2080;
              *v47 = v21;
              *&v47[8] = 2080;
              *&v47[10] = v22;
              _os_log_impl(&dword_23D497000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tReXmit [%s] (%u:%d) for [%s] to [%s]\n", buf, 0x46u);
            }
          }

          v23 = *(v5 + 1484);
          *(v5 + 1484) = v23 + 1;
          if (v23 >= 5 && (*(v5 + 1488) & 1) == 0)
          {
            *buf = 0;
            *&buf[8] = 0;
            IPToString(buf, v5 + 1536);
            v24 = CFStringCreateWithCString(alloc, buf, 0x8000100u);
            Mutable = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            CFDictionarySetValue(Mutable, @"SymptomReporterOptionalKeyEndpointIP", v24);
            *(v5 + 4);
            reportingSymptom();
            *(v5 + 1488) = 1;
            CFRelease(v24);
            CFRelease(Mutable);
          }
        }
      }

      v5 = *(v5 + 1584);
    }

    while (v5);
  }

  v31 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t SendRelayChannelBindRequest(uint64_t a1, uint64_t (*a2)(uint64_t, void, _BYTE *, void, uint64_t, uint64_t, void, void), uint64_t a3, uint64_t a4, __int128 *a5, uint64_t *a6, const void *a7)
{
  v43 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  memset(v41, 170, sizeof(v41));
  v26 = 1472;
  ChannelBindRequest = MakeChannelBindRequest(__b, *(a1 + 234), a5, a7);
  if ((ChannelBindRequest & 0x80000000) != 0)
  {
    v18 = ChannelBindRequest;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        SendRelayChannelBindRequest_cold_4();
      }
    }
  }

  else
  {
    v16 = STUNEncodeMessage(__b, v41, &v26, a7, v15);
    if ((v16 & 0x80000000) != 0)
    {
      v18 = v16;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          SendRelayChannelBindRequest_cold_3();
        }
      }
    }

    else
    {
      v17 = a2(a3, *(a1 + 148), v41, v26, a4, a1 + 236, 0, 0);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = v17;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            SendRelayChannelBindRequest_cold_2();
          }
        }
      }

      else
      {
        v18 = SaveSTUNRequest(a6, v41, v26, a4, a5, 0);
        if ((v18 & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              SendRelayChannelBindRequest_cold_1();
            }
          }
        }

        else
        {
          *&v40[14] = 0xAAAAAAAAAAAAAAAALL;
          *&v19 = 0xAAAAAAAAAAAAAAAALL;
          *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v39[1] = v19;
          *v40 = v19;
          v39[0] = v19;
          v37[0] = v19;
          v37[1] = v19;
          v38[0] = v19;
          *(v38 + 14) = 0xAAAAAAAAAAAAAAAALL;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v20 = VRTraceErrorLogLevelToCSTR();
            v21 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v22 = IPPORTToStringWithSize(v39, a5, 0x36uLL);
              v23 = IPPORTToStringWithSize(v37, a1 + 236, 0x36uLL);
              *buf = 136316162;
              v28 = v20;
              v29 = 2080;
              v30 = "SendRelayChannelBindRequest";
              v31 = 1024;
              v32 = 696;
              v33 = 2080;
              v34 = v22;
              v35 = 2080;
              v36 = v23;
              _os_log_impl(&dword_23D497000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** CHANNELBIND_REQUEST [%s] to [%s]", buf, 0x30u);
            }
          }
        }
      }
    }
  }

  FreeSTUNMessage(__b);
  v24 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t MakeBindingRequest(__int128 *a1, int a2, uint64_t a3, int a4, uint64_t a5, int *a6, _OWORD *a7, int a8, int a9, int a10, uint64_t a11, int a12, __int16 a13, CFDataRef theData)
{
  v63 = *MEMORY[0x277D85DE8];
  *a3 = 0x10000;
  *(a3 + 6) = 1;
  if (*a6 >= 1 && *a7 == 554869826)
  {
    *(a3 + 8) = *a7;
  }

  else
  {
    *(a3 + 8) = 554869826;
    v22 = (a3 + 8);
    STUNGetTransID(a3 + 12, 1u, 0);
    if (*a6 >= 1)
    {
      *a7 = *v22;
    }
  }

  v23 = malloc_type_malloc(0x14uLL, 0x100004077774924uLL);
  if (v23)
  {
    v24 = *a1;
    v23[4] = *(a1 + 4);
    *v23 = v24;
    v25 = *(a3 + 28);
    v26 = a3 + 32;
    v27 = a3 + 32 + 56 * v25;
    *v27 = 1310726;
    *(v27 + 8) = 20;
    *(v27 + 16) = v23;
    v28 = (a3 + 32 + 56 * (v25 + 1));
    *v28 = 294913;
    v28[2] = a2;
    v29 = v25 + 2;
    v30 = *(a3 + 24);
    if (v30 >= 0x6A)
    {
      v31 = (v26 + 56 * v29);
      *v31 = 294915;
      v31[2] = v30;
      v32 = micro();
      v33 = MicroToMiddle32_zero_wide;
      if (!MicroToMiddle32_zero_wide)
      {
        memset(v58, 170, 32);
        v34 = micro();
        gettimeofday(&v58[16], 0);
        v35 = micro();
        gettimeofday(v58, 0);
        if (micro() - v35 < v35 - v34)
        {
          *&v58[16] = *v58;
          v34 = v35;
        }

        v33 = vcvtd_n_u64_f64(*&v58[16] + *&v58[24] * 0.000001 + 2208988800.0 - v34, 0x20uLL);
        MicroToMiddle32_zero_wide = v33;
      }

      v36 = (v26 + 56 * (v25 + 3));
      *v36 = 294916;
      v36[2] = (v33 + v32 * 4294967300.0) >> 16;
      v29 = v25 + 4;
    }

    if (a4 == 2)
    {
      v39 = v26 + 56 * v29;
      *v39 = 557098;
      *(v39 + 8) = a5;
      v40 = *a6;
      if (*a6 < 1)
      {
        ++v29;
      }

      else
      {
        *(v26 + 56 * (v29 + 1)) = 37;
        v41 = v26 + 56 * v29;
        *(v41 + 112) = 294920;
        v42 = a6[1];
        *(v41 + 120) = v40 | (a10 << 8) | (a6[2] << 9) | (a6[3] << 10) | (a6[4] << 11) | (a6[1] << 12);
        v29 += 3;
      }
    }

    else if (a4 == 1)
    {
      v37 = v26 + 56 * v29;
      *v37 = 557097;
      *(v37 + 8) = a5;
      ++v29;
    }

    if (a8)
    {
      *(v26 + 56 * v29++) = 32774;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v43 = VRTraceErrorLogLevelToCSTR();
        v44 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *&v58[16] = 136315650;
          *&v58[20] = v43;
          *&v58[28] = 2080;
          *&v58[30] = "MakeBindingRequest";
          v59 = 1024;
          v60 = 782;
          _os_log_impl(&dword_23D497000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Local cellular interface supports QoS!", &v58[16], 0x1Cu);
        }
      }
    }

    if (a9)
    {
      v45 = (v26 + 56 * v29);
      *v45 = 294919;
      v45[2] = a9;
      ++v29;
    }

    if (a11 && a12 >= 1)
    {
      *&v58[16] = 0;
      *v58 = 0;
      if ((ICECompressCandidates(&v58[16], v58, 148 * a12, a11, a12) & 0x80000000) != 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            MakeBindingRequest_cold_1();
          }
        }

        goto LABEL_41;
      }

      v46 = *v58;
      v47 = (2 - v58[0]) & 3;
      if (((*v58 + 2) & 3) == 0)
      {
        v47 = 0;
      }

      v48 = v47 + *v58 + 2;
      v49 = v26 + 56 * v29;
      *v49 = -32759;
      *(v49 + 2) = v48;
      *(v49 + 8) = a13;
      *(v49 + 16) = v46;
      *(v49 + 24) = *&v58[16];
      ++v29;
    }

    if (theData)
    {
      Length = CFDataGetLength(theData);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v51 = VRTraceErrorLogLevelToCSTR();
        v52 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *&v58[16] = 136315906;
          *&v58[20] = v51;
          *&v58[28] = 2080;
          *&v58[30] = "MakeBindingRequest";
          v59 = 1024;
          v60 = 821;
          v61 = 2048;
          v62 = Length;
          _os_log_impl(&dword_23D497000, v52, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending SKEMessage of length %ld in binding request", &v58[16], 0x26u);
        }
      }

      v53 = (-Length & 3) + Length;
      v54 = v26 + 56 * v29;
      *v54 = -32758;
      if ((Length & 3) == 0)
      {
        LOWORD(v53) = Length;
      }

      *(v54 + 2) = v53;
      *(v54 + 8) = Length;
      v55 = malloc_type_malloc(Length, 0x77AD9519uLL);
      *(v54 + 16) = v55;
      v64.location = 0;
      v64.length = Length;
      CFDataGetBytes(theData, v64, v55);
      ++v29;
    }

LABEL_41:
    v38 = 0;
    *(a3 + 28) = v29;
    goto LABEL_42;
  }

  v38 = 2148859907;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      MakeBindingRequest_cold_2();
    }
  }

LABEL_42:
  v56 = *MEMORY[0x277D85DE8];
  return v38;
}

void DelayedICEUpdateAfterNominationResponse(int a1, uint64_t a2, const void **a3, int a4, int a5)
{
  v22[2] = *MEMORY[0x277D85DE8];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (a1)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = "DelayedICEUpdateAfterNominationResponse";
        *&buf[22] = 1024;
        LODWORD(v22[0]) = 1033;
        WORD2(v22[0]) = 1024;
        *(v22 + 6) = 1033;
        _os_log_impl(&dword_23D497000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Adding delay to ICE update after nomination response", buf, 0x22u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v22[0] = malloc_type_calloc(a5 + 1, 0x190uLL, 0x10200402E010713uLL);
    v13 = *(*&buf[8] + 24);
    if (v13)
    {
      memcpy(v13, *a3, 400 * a5);
      v14 = dispatch_time(0, 1000000000 * a1);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __DelayedICEUpdateAfterNominationResponse_block_invoke;
      block[3] = &unk_278BD3E58;
      v20 = a4;
      block[4] = buf;
      block[5] = a2;
      dispatch_after(v14, MEMORY[0x277D85CD0], block);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        DelayedICEUpdateAfterNominationResponse_cold_1();
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v15;
        *&buf[12] = 2080;
        *&buf[14] = "DelayedICEUpdateAfterNominationResponse";
        *&buf[22] = 1024;
        LODWORD(v22[0]) = 1024;
        WORD2(v22[0]) = 1024;
        *(v22 + 6) = 1024;
        _os_log_impl(&dword_23D497000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: DO NOT add delay to update ice update after ICE nomination response", buf, 0x22u);
      }
    }

    v17 = *a3 + 400 * a4;
    if (*(v17 + 296) == 6 && *(a2 + 840) == 1 && *(v17 + 356))
    {
      UpdateICEState((v17 + 296), 6);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __DelayedICEUpdateAfterNominationResponse_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 32) + 8) + 24) + 400 * *(a1 + 48);
  if (*(v2 + 296) == 6 && *(*(a1 + 40) + 840) == 1 && *(v2 + 356))
  {
    UpdateICEState((v2 + 296), 6);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "DelayedICEUpdateAfterNominationResponse_block_invoke";
      v10 = 1024;
      v11 = 1049;
      v12 = 1024;
      v13 = 1049;
      _os_log_impl(&dword_23D497000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Delayed ICE update after nomination process complete", &v6, 0x22u);
    }
  }

  free(*(*(*(a1 + 32) + 8) + 24));
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t ProcessBindingRequest(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v268 = *MEMORY[0x277D85DE8];
  v263 = -1431655766;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v262 = v11;
  v261 = v11;
  v260 = v11;
  v259 = v11;
  v258 = v11;
  *&v257[16] = v11;
  *v257 = v11;
  *&v256[16] = v11;
  *v256 = v11;
  __dst[24] = v11;
  __dst[23] = v11;
  __dst[22] = v11;
  __dst[21] = v11;
  __dst[20] = v11;
  __dst[19] = v11;
  __dst[18] = v11;
  __dst[17] = v11;
  __dst[16] = v11;
  __dst[15] = v11;
  __dst[14] = v11;
  __dst[13] = v11;
  __dst[12] = v11;
  __dst[11] = v11;
  __dst[10] = v11;
  __dst[9] = v11;
  __dst[8] = v11;
  __dst[7] = v11;
  __dst[6] = v11;
  __dst[5] = v11;
  __dst[4] = v11;
  __dst[3] = v11;
  __dst[2] = v11;
  __dst[1] = v11;
  __dst[0] = v11;
  v254 = 0xAAAAAAAAAAAAAAAALL;
  v253 = v11;
  v252 = v11;
  *&v251[16] = 0xAAAAAAAAAAAAAAAALL;
  *v251 = v11;
  v250 = v11;
  v249 = 0xAAAAAAAAAAAAAAAALL;
  v248 = v11;
  v247 = v11;
  memset(__b, 170, sizeof(__b));
  *(v245 + 14) = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v244[1] = v12;
  v245[0] = v12;
  v244[0] = v12;
  *(v243 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v242[1] = v12;
  v243[0] = v12;
  v241[3] = v12;
  v242[0] = v12;
  v241[1] = v12;
  v241[2] = v12;
  v241[0] = v12;
  memset(v240, 170, sizeof(v240));
  memset(v239, 170, 25);
  v227 = 0;
  v228 = -1431655766;
  cf = 0;
  v13 = *(v9 + 160);
  bzero(v266, 0x480uLL);
  bzero(v264, 0x480uLL);
  STUNAttr = GetSTUNAttr(v5, 6);
  if (!STUNAttr)
  {
    BindingResponse = 2148859938;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingRequest_cold_20();
      }
    }

    goto LABEL_283;
  }

  v15 = *(STUNAttr + 2);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      TransID = MakeTransID(v239, (v5 + 12));
      v19 = IPPORTToStringWithSize(v244, v3, 0x36uLL);
      v20 = v3;
      v21 = v13;
      v22 = v15;
      v23 = v10;
      v24 = v19;
      v25 = ICEUNToString(v241, v22);
      *buf = 136316418;
      v230 = v16;
      v231 = 2080;
      v232 = "ProcessBindingRequest";
      v233 = 1024;
      v234 = 1104;
      v235 = 2080;
      *v236 = TransID;
      *&v236[8] = 2080;
      v237 = v24;
      v10 = v23;
      v15 = v22;
      v13 = v21;
      v3 = v20;
      LOWORD(v238[0]) = 2080;
      *(v238 + 2) = v25;
      _os_log_impl(&dword_23D497000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** BINDING_REQUEST [%s] from [%s] USERNAME [%s]", buf, 0x3Au);
    }
  }

  v26 = GetSTUNAttr(v5, 32769);
  if (!v26)
  {
    BindingResponse = 2148859938;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingRequest_cold_19();
      }
    }

    goto LABEL_283;
  }

  v221 = *(v26 + 8);
  v27 = GetSTUNAttr(v5, 32771);
  if (v27)
  {
    v28 = *(v27 + 2);
  }

  else
  {
    v28 = 105;
  }

  *(v5 + 24) = v28;
  *(v9 + 888) = v28;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v230 = v30;
      v231 = 2080;
      v232 = "ProcessBindingRequest";
      v233 = 1024;
      v234 = 1121;
      v235 = 1024;
      *v236 = v28;
      _os_log_impl(&dword_23D497000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote ICE Version: %d", buf, 0x22u);
    }
  }

  v32 = GetSTUNAttr(v5, 32809);
  v33 = GetSTUNAttr(v5, 32810);
  if (v32 | v33)
  {
    if (v32)
    {
      if (*(v9 + 840) == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessBindingRequest_cold_1();
          }
        }

        v37 = *(v9 + 848);
        if (v37 >= *(v32 + 1))
        {
          *(v9 + 840) = 2;
          if (v37 == *(v32 + 1))
          {
            *(v9 + 848) = arc4random() & 0x7FFFFFFF;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v38 = VRTraceErrorLogLevelToCSTR();
            v35 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v230 = v38;
              v231 = 2080;
              v232 = "ProcessBindingRequest";
              v233 = 1024;
              v234 = 1140;
              v36 = " [%s] %s:%d Resolved role conflict, new role: ICE_ROLE_CONTROLLING.";
              goto LABEL_23;
            }
          }
        }
      }
    }

    else
    {
      v39 = v33;
      if (v33 && *(v9 + 840) == 2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessBindingRequest_cold_2();
          }
        }

        v40 = *(v9 + 848);
        if (v40 <= *(v39 + 1))
        {
          *(v9 + 840) = 1;
          if (v40 == *(v39 + 1))
          {
            *(v9 + 848) = arc4random() & 0x7FFFFFFF;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v41 = VRTraceErrorLogLevelToCSTR();
            v35 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v230 = v41;
              v231 = 2080;
              v232 = "ProcessBindingRequest";
              v233 = 1024;
              v234 = 1156;
              v36 = " [%s] %s:%d Resolved role conflict, new role: ICE_ROLE_CONTROLLED.";
              goto LABEL_23;
            }
          }
        }
      }
    }
  }

  else if (*(v9 + 840))
  {
    *(v9 + 840) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v230 = v34;
        v231 = 2080;
        v232 = "ProcessBindingRequest";
        v233 = 1024;
        v234 = 1129;
        v36 = " [%s] %s:%d REMOTE SIDE HAS NO ICE_ROLE SET, FALL BACK TO ICE_ROLE_UNKNOWN!";
LABEL_23:
        _os_log_impl(&dword_23D497000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0x1Cu);
      }
    }
  }

  if (GetSTUNAttr(v5, 32774))
  {
    *(v9 + 876) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v230 = v42;
        v231 = 2080;
        v232 = "ProcessBindingRequest";
        v233 = 1024;
        v234 = 1165;
        _os_log_impl(&dword_23D497000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove cellular interface supports QoS.", buf, 0x1Cu);
      }
    }
  }

  v44 = GetSTUNAttr(v5, 32775);
  if (v44)
  {
    *(v9 + 884) = *(v44 + 2);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v45 = VRTraceErrorLogLevelToCSTR();
      v46 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v47 = *(v9 + 884);
        *buf = 136315906;
        v230 = v45;
        v231 = 2080;
        v232 = "ProcessBindingRequest";
        v233 = 1024;
        v234 = 1173;
        v235 = 1024;
        *v236 = v47;
        _os_log_impl(&dword_23D497000, v46, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote cellular technology:[%d]", buf, 0x22u);
      }
    }
  }

  MatchCP = FindMatchCP(*(v9 + 184), *(v9 + 200), v15, 0);
  if (MatchCP == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v73 = VRTraceErrorLogLevelToCSTR();
      v74 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v230 = v73;
        v231 = 2080;
        v232 = "ProcessBindingRequest";
        v233 = 1024;
        v234 = 1178;
        v235 = 1024;
        *v236 = 1178;
        _os_log_impl(&dword_23D497000, v74, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Candidate pair not found.", buf, 0x22u);
      }
    }

    goto LABEL_282;
  }

  v49 = MatchCP;
  v222 = MatchCP;
  v50 = *(v9 + 184) + 400 * MatchCP;
  v51 = *v3;
  v52 = *(v3 + 16);
  *(v50 + 344) = *(v3 + 32);
  *(v50 + 312) = v51;
  *(v50 + 328) = v52;
  v53 = *(v9 + 184) + 400 * MatchCP;
  memcpy(__dst, v53, sizeof(__dst));
  v54 = *(v53 + 188);
  v250 = *(v53 + 172);
  *v251 = v54;
  *&v251[16] = *(v53 + 204);
  v55 = *(v53 + 64);
  v56 = *(v53 + 80);
  v254 = *(v53 + 96);
  v253 = v56;
  v252 = v55;
  if (*(v9 + 840) == 1)
  {
    v57 = GetSTUNAttr(v5, 32777);
    if (v57)
    {
      v58 = v57;
      v59 = v3;
      v60 = v13;
      v61 = v15;
      v62 = v10;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v217 = VRTraceErrorLogLevelToCSTR();
        v63 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(v58 + 4);
          *buf = 136315906;
          v230 = v217;
          v231 = 2080;
          v232 = "ProcessBindingRequest";
          v233 = 1024;
          v234 = 1190;
          v235 = 1024;
          *v236 = v64;
          _os_log_impl(&dword_23D497000, v63, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Binding request has remote connection blob (%d).", buf, 0x22u);
        }
      }

      ICEProcessRemoteInterfaceChange(*v9, *(v9 + 148), *(v58 + 3), *(v58 + 4), v58[4], 0);
      v10 = v62;
      v15 = v61;
      v13 = v60;
      v3 = v59;
    }
  }

  v65 = GetSTUNAttr(v5, 37);
  v66 = *(v9 + 840);
  if (v65)
  {
    if (v66 != 1)
    {
      goto LABEL_165;
    }

    LODWORD(v223) = 0;
    v224 = -1431655766;
    v225 = 0;
    v227 = 1;
    v67 = GetSTUNAttr(v5, 32776);
    v68 = *(v9 + 888);
    if (v67)
    {
      v69 = *(v67 + 2);
      v70 = v69;
      v71 = (v69 >> 8) & 1;
      LODWORD(v223) = (v69 >> 10) & 1;
      if (v68 >= 0x3F2 && !*(v10 + 88))
      {
        v72 = (v69 >> 9) & 1;
        goto LABEL_86;
      }

      v72 = 1;
      LODWORD(v223) = 1;
    }

    else
    {
      v72 = 0;
      v71 = 0;
      v70 = 0;
    }

    if (v68 <= 0x3F1)
    {
      if (v68 != 109)
      {
        v218 = v71;
        goto LABEL_88;
      }

      if (*(v9 + 800) < v70)
      {
        v218 = v71;
        if (!*(v10 + 88))
        {
          v206 = v72;
          v209 = v70;
          v212 = v28;
          v75 = v10;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v76 = VRTraceErrorLogLevelToCSTR();
            v77 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v78 = *(v9 + 800);
              *buf = 136316674;
              v230 = v76;
              v231 = 2080;
              v232 = "ProcessBindingRequest";
              v233 = 1024;
              v234 = 1293;
              v235 = 1024;
              *v236 = v70;
              *&v236[4] = 1024;
              *&v236[6] = v78;
              LOWORD(v237) = 1024;
              *(&v237 + 2) = v49;
              HIWORD(v237) = 2080;
              v238[0] = "is";
              _os_log_impl(&dword_23D497000, v77, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Receive new NOMINATION [count:%d>%d] for candidate pair %d, it %s nominated.", buf, 0x38u);
            }
          }

          *(v9 + 800) = v70;
          v79 = *(v9 + 200);
          if (v79 < 1)
          {
            v10 = v75;
            v28 = v212;
LABEL_142:
            v85 = v206;
LABEL_143:
            v114 = (*(v9 + 184) + 400 * v222);
            v114[90] = v70;
            v114[89] = v227;
            v114[92] = v218;
            v114[94] = v85;
            v114[95] = v223;
LABEL_144:
            v66 = *(v9 + 840);
            goto LABEL_145;
          }

          v80 = 0;
          v81 = 400 * v79;
          v10 = v75;
          v28 = v212;
          while (1)
          {
            if (400 * v49 != v80)
            {
              v82 = *(v9 + 184) + v80;
              if (*(v82 + 356))
              {
                break;
              }
            }

            v80 += 400;
            if (v81 == v80)
            {
              goto LABEL_142;
            }
          }

          DemoteCandidatePair(v82, 2, 0, 0);
          RemoveConnectivityCheckResult(v10, *(v9 + 148), *(v9 + 184) + v80);
LABEL_141:
          v70 = v209;
          goto LABEL_142;
        }

        goto LABEL_88;
      }

      goto LABEL_92;
    }

LABEL_86:
    v83 = *(v9 + 184);
    if (*(v83 + 400 * v222 + 360) < v70)
    {
      v218 = v71;
      if (!*(v10 + 88))
      {
        v209 = v70;
        v88 = *(v9 + 192);
        if (v88 < 1)
        {
          v89 = 0;
        }

        else
        {
          LODWORD(v89) = 0;
          v90 = (*(v9 + 168) + 64);
          do
          {
            v91 = *v90;
            v90 += 148;
            if ((v91 & 4) != 0)
            {
              v92 = 2;
            }

            else
            {
              v92 = 1;
            }

            v89 = v92 | v89;
            --v88;
          }

          while (v88);
        }

        v93 = *(v9 + 196);
        if (v93 >= 1)
        {
          v94 = (*(v9 + 176) + 24);
          do
          {
            v95 = *v94;
            v94 += 148;
            if ((v95 & 4) != 0)
            {
              v96 = 8;
            }

            else
            {
              v96 = 4;
            }

            v89 = v96 | v89;
            --v93;
          }

          while (v93);
        }

        v97 = *(v10 + 72);
        if (v97)
        {
          v98 = v72;
          v97(*(v10 + 8), *(v9 + 148), v83 + 400 * v222, v89, &v227, &v225, &v224, &v223);
          v72 = v98;
          v99 = v225;
        }

        else
        {
          v99 = 0;
          v227 = 1;
          v224 = 2;
          v225 = 0;
          LODWORD(v223) = 1;
        }

        v207 = v10;
        v100 = *(v9 + 200);
        if (v100 < 1)
        {
          v104 = -1;
          v103 = -1;
        }

        else
        {
          v101 = 0;
          v102 = (*(v9 + 184) + 376);
          v103 = -1;
          v104 = -1;
          do
          {
            if (*(v102 - 5))
            {
              if (*v102)
              {
                v103 = v101;
              }

              else
              {
                v104 = v101;
              }
            }

            ++v101;
            v102 += 100;
          }

          while (v100 != v101);
        }

        v214 = v28;
        if (v224 == 3)
        {
          v72 = 2;
        }

        if ((v99 & 0xFFFFFFFE) == 2)
        {
          v105 = v72;
          v106 = *(v9 + 184) + 400 * v103;
          v107 = v99;
          DemoteCandidatePair(v106, 9, 1, *(v106 + 364));
          DemoteConnectivityCheckResult(v207, *(v9 + 148), *(v9 + 184) + 400 * v103);
          v99 = v107;
          v72 = v105;
        }

        v108 = v99 & 0xFFFFFFFD;
        v206 = v72;
        if (v72)
        {
          v109 = v223 == 0;
        }

        else
        {
          v109 = 1;
        }

        if (!v109)
        {
          RemoveNominatedCandidatePair(v207, v9, v103, 1);
        }

        v10 = v207;
        if (v108 == 1)
        {
          RemoveNominatedCandidatePair(v207, v9, v104, 0);
        }

        v28 = v214;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v110 = VRTraceErrorLogLevelToCSTR();
          v111 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v112 = *(*(v9 + 184) + 400 * v222 + 360);
            if (v227)
            {
              v113 = "is";
            }

            else
            {
              v113 = "is not";
            }

            *buf = 136316674;
            v230 = v110;
            v231 = 2080;
            v232 = "ProcessBindingRequest";
            v233 = 1024;
            v234 = 1288;
            v235 = 1024;
            v70 = v209;
            *v236 = v209;
            *&v236[4] = 1024;
            *&v236[6] = v112;
            LOWORD(v237) = 1024;
            *(&v237 + 2) = v49;
            HIWORD(v237) = 2080;
            v238[0] = v113;
            _os_log_impl(&dword_23D497000, v111, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Receive new NOMINATION [count:%d>%d] for candidate pair %d, it %s nominated.", buf, 0x38u);
            v10 = v207;
            goto LABEL_142;
          }

          v10 = v207;
        }

        goto LABEL_141;
      }

LABEL_88:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v213 = VRTraceErrorLogLevelToCSTR();
        v84 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v230 = v213;
          v231 = 2080;
          v232 = "ProcessBindingRequest";
          v233 = 1024;
          v234 = 1308;
          v235 = 1024;
          *v236 = v49;
          _os_log_impl(&dword_23D497000, v84, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Receive new NOMINATION for candidate pair %d, it is nominated.", buf, 0x22u);
        }
      }

      v85 = 1;
      LODWORD(v223) = 1;
      goto LABEL_143;
    }

LABEL_92:
    v210 = v70;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v86 = VRTraceErrorLogLevelToCSTR();
      v87 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v230 = v86;
        v231 = 2080;
        v232 = "ProcessBindingRequest";
        v233 = 1024;
        v234 = 1321;
        v235 = 1024;
        *v236 = v210;
        *&v236[4] = 1024;
        *&v236[6] = v49;
        _os_log_impl(&dword_23D497000, v87, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Receive old NOMINATION [count:%d] for candidate pair %d.", buf, 0x28u);
      }
    }

    goto LABEL_144;
  }

LABEL_145:
  if (v66 == 1 && v227 != 0)
  {
    pthread_mutex_lock((v9 + 16));
    if (*(v9 + 896))
    {
      v116 = GetSTUNAttr(v5, 32778);
      if (!v116)
      {
        goto LABEL_164;
      }

      v117 = v116;
      LODWORD(v223) = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v118 = VRTraceErrorLogLevelToCSTR();
        v119 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v120 = *(v117 + 2);
          *buf = 136315906;
          v230 = v118;
          v231 = 2080;
          v232 = "ProcessBindingRequest";
          v233 = 1024;
          v234 = 1333;
          v235 = 1024;
          *v236 = v120;
          _os_log_impl(&dword_23D497000, v119, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Binding request has SKEMessage of length %d", buf, 0x22u);
        }
      }

      v121 = CFDataCreateWithBytesNoCopy(0, *(v117 + 2), *(v117 + 2), *MEMORY[0x277CBED00]);
      v122 = *(v9 + 896);
      if (SKEState_SetBlob())
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessBindingRequest_cold_3();
          }
        }
      }

      CFRelease(v121);
      dispatch_time(0, 5000000000);
      v123 = *(v9 + 896);
      SKEState_CopyBlobSync();
      if (cf)
      {
        goto LABEL_164;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessBindingRequest_cold_4();
        }
      }
    }

    else
    {
      if (!*(v9 + 904))
      {
LABEL_164:
        pthread_mutex_unlock((v9 + 16));
        goto LABEL_165;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v124 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessBindingRequest_cold_5(v124);
        }
      }
    }

    pthread_mutex_unlock((v9 + 16));
LABEL_282:
    BindingResponse = 0;
    goto LABEL_283;
  }

LABEL_165:
  v125 = DWORD1(__dst[0]) == 5 && DWORD2(__dst[9]) == 5;
  v126 = v9 + 236;
  if (!v125)
  {
    v126 = v3;
  }

  v127 = *(v126 + 16);
  v247 = *v126;
  v248 = v127;
  v249 = *(v126 + 32);
  if ((v250 & 1) == (*v3 & 1))
  {
    if (v250)
    {
      if (*&v251[4] == *(v3 + 20) && *&v251[12] == *(v3 + 28))
      {
LABEL_170:
        v129 = *&v251[20] == *(v3 + 36) || v28 < 0x6A;
        if ((DWORD1(__dst[0]) != 5 || DWORD2(__dst[9]) != 5) && !v129)
        {
          goto LABEL_222;
        }

        goto LABEL_183;
      }
    }

    else if (*&v251[4] == *(v3 + 20))
    {
      goto LABEL_170;
    }
  }

  if (v28 > 0x69 && (DWORD1(__dst[0]) != 5 || DWORD2(__dst[9]) != 5))
  {
LABEL_222:
    v220 = v13;
    GetICECandidate(v256, 6, SHIDWORD(__dst[9]), v221, v3, SWORD4(__dst[10]), (&__dst[13] + 4), SHIDWORD(__dst[10]));
    v147 = *(v9 + 176);
    v148 = *(*(v9 + 184) + 400 * v222 + 372);
    v149 = *(v9 + 196);
    if (IsNewCandidate(v147, *(v9 + 196), v256))
    {
      v150 = malloc_type_realloc(v147, 148 * v149 + 148, 0x1000040C185D105uLL);
      *(v9 + 176) = v150;
      if (!v150)
      {
        BindingResponse = 2148859907;
        goto LABEL_283;
      }

      v216 = v15;
      v151 = v10;
      *&v256[12] = __dst[10];
      *&v256[16] = HIDWORD(__dst[0]);
      v152 = &v150[148 * *(v9 + 196)];
      v153 = v260;
      v154 = v261;
      v155 = v262;
      *(v152 + 36) = v263;
      *(v152 + 7) = v154;
      *(v152 + 8) = v155;
      *(v152 + 6) = v153;
      v156 = *v257;
      v157 = *&v257[16];
      v158 = v259;
      *(v152 + 4) = v258;
      *(v152 + 5) = v158;
      *(v152 + 2) = v156;
      *(v152 + 3) = v157;
      v159 = *&v256[16];
      *v152 = *v256;
      *(v152 + 1) = v159;
      ++*(v9 + 196);
      v148 = 1;
      *(*(v9 + 184) + 400 * v222 + 372) = 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v160 = VRTraceErrorLogLevelToCSTR();
        v161 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v162 = v125;
          v163 = IPPORTToStringWithSize(v244, v3, 0x36uLL);
          v164 = CANIDToString(v240, v152 + 3);
          *buf = 136316162;
          v230 = v160;
          v231 = 2080;
          v232 = "ProcessBindingRequest";
          v233 = 1024;
          v234 = 1471;
          v235 = 2080;
          *v236 = v163;
          v125 = v162;
          *&v236[8] = 2080;
          v237 = v164;
          _os_log_impl(&dword_23D497000, v161, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tadd DERIVED-REMOTE candidate[%s] ID[%s]", buf, 0x30u);
        }
      }

      goto LABEL_240;
    }

    v216 = v15;
    v151 = v10;
    if (v149 < 1)
    {
LABEL_240:
      if (IsNewCandidatePair(*(v9 + 184), *(v9 + 200), __dst, v256))
      {
        v167 = v151;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v168 = VRTraceErrorLogLevelToCSTR();
          v169 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v170 = v125;
            v171 = IPPORTToStringWithSize(v242, &__dst[1] + 8, 0x36uLL);
            v172 = IPPORTToStringWithSize(v244, &v256[24], 0x36uLL);
            *buf = 136316162;
            v230 = v168;
            v231 = 2080;
            v232 = "ProcessBindingRequest";
            v233 = 1024;
            v234 = 1485;
            v235 = 2080;
            *v236 = v171;
            v125 = v170;
            *&v236[8] = 2080;
            v237 = v172;
            _os_log_impl(&dword_23D497000, v169, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tadd new candidate pair [%s->%s].", buf, 0x30u);
          }
        }

        v173 = malloc_type_realloc(*(v9 + 184), 400 * *(v9 + 200) + 400, 0x10200402E010713uLL);
        *(v9 + 184) = v173;
        if (v173)
        {
          v174 = v173 + 400 * *(v9 + 200);
          v225 = 0;
          BindingResponse = PairUpCandidate(__dst, 1, v256, 1, v174, 4, &v225, __dst[23]);
          if ((BindingResponse & 0x80000000) != 0)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ProcessBindingRequest_cold_11();
              }
            }
          }

          else if (v225 == 1)
          {
            ++*(v9 + 200);
            inserted = InsertEvent(v220, v174, 1, 50, v167 + 640, 0, 1);
            if ((inserted & 0x80000000) != 0)
            {
              BindingResponse = inserted;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                {
                  ProcessBindingRequest_cold_10();
                }
              }
            }

            else
            {
              v223 = 0;
              v224 = 0;
              if (*(v9 + 840) != 1 || !v125)
              {
                v177 = 0;
                v176 = 0;
              }

              else
              {
                ICEGetCandidatesForPeer(v9, 1, &v223, &v224);
                v176 = v223;
                v177 = v224;
              }

              BindingResponse = MakeBindingResponse(v5, v3, v221, v264, 0, v176, v177, *(v9 + 204), v7, *(v9 + 888), v148, cf);
              if (v223)
              {
                free(v223);
              }

              if ((BindingResponse & 0x80000000) != 0)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                  {
                    ProcessBindingRequest_cold_9();
                  }
                }
              }

              else
              {
                v228 = 1472;
                v195 = STUNEncodeMessage(v264, __b, &v228, 0, v194);
                if ((v195 & 0x80000000) != 0)
                {
                  BindingResponse = v195;
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                    {
                      ProcessBindingRequest_cold_8();
                    }
                  }
                }

                else
                {
                  BindingResponse = (*(v167 + 16))(*(v167 + 8), *(v9 + 148), __b, v228, &v252, &v247, 1, 0);
                  if ((BindingResponse & 0x80000000) != 0)
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 3)
                    {
                      VRTraceErrorLogLevelToCSTR();
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                      {
                        ProcessBindingRequest_cold_7();
                      }
                    }
                  }

                  else
                  {
                    v196 = GetSTUNAttr(v264, 6);
                    if (v196)
                    {
                      v197 = v196;
                      if (VRTraceGetErrorLogLevelForModule() >= 7)
                      {
                        v198 = VRTraceErrorLogLevelToCSTR();
                        v199 = *MEMORY[0x277CE5818];
                        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                        {
                          v200 = MakeTransID(v239, v265);
                          v201 = IPPORTToStringWithSize(v244, &v247, 0x36uLL);
                          v202 = ICEUNToString(v241, *(v197 + 2));
                          *buf = 136316418;
                          v230 = v198;
                          v231 = 2080;
                          v232 = "ProcessBindingRequest";
                          v233 = 1024;
                          v234 = 1553;
                          v235 = 2080;
                          *v236 = v200;
                          *&v236[8] = 2080;
                          v237 = v201;
                          LOWORD(v238[0]) = 2080;
                          *(v238 + 2) = v202;
                          _os_log_impl(&dword_23D497000, v199, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tBINDING_RESPONSE [%s] to [%s] USERNAME[%s]\n", buf, 0x3Au);
                        }
                      }
                    }

                    UpdateICEState((*(v9 + 184) + 400 * v222 + 296), 5);
                    v203 = *(v9 + 184) + 400 * v222;
                    if (*(v203 + 296) == 6 && *(v9 + 840) == 1 && *(v203 + 356))
                    {
                      UpdateICEState((v203 + 296), 6);
                    }
                  }
                }
              }
            }
          }

          else if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v193 = VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ProcessBindingRequest_cold_6(v193, &v225);
            }
          }
        }

        else
        {
          BindingResponse = *__error() | 0xC0150000;
        }
      }

      else
      {
        v223 = 0;
        v225 = 0;
        if (*(v9 + 840) != 1 || !v125)
        {
          v179 = 0;
          v178 = 0;
        }

        else
        {
          ICEGetCandidatesForPeer(v9, 1, &v223, &v225);
          v178 = v223;
          v179 = v225;
        }

        BindingResponse = MakeBindingResponse(v5, v3, v221, v264, 0, v178, v179, *(v9 + 204), v7, *(v9 + 888), v148, cf);
        if (v223)
        {
          free(v223);
        }

        if ((BindingResponse & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ProcessBindingRequest_cold_14();
            }
          }
        }

        else
        {
          v228 = 1472;
          v181 = STUNEncodeMessage(v264, __b, &v228, 0, v180);
          if ((v181 & 0x80000000) != 0)
          {
            BindingResponse = v181;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                ProcessBindingRequest_cold_13();
              }
            }
          }

          else
          {
            BindingResponse = (*(v151 + 16))(*(v151 + 8), *(v9 + 148), __b, v228, &v252, &v247, 1, 0);
            if ((BindingResponse & 0x80000000) != 0)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                {
                  ProcessBindingRequest_cold_12();
                }
              }
            }

            else
            {
              v182 = GetSTUNAttr(v264, 6);
              if (v182)
              {
                v183 = v182;
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v184 = VRTraceErrorLogLevelToCSTR();
                  v185 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    v186 = MakeTransID(v239, v265);
                    v187 = IPPORTToStringWithSize(v244, &v247, 0x36uLL);
                    v188 = ICEUNToString(v241, *(v183 + 2));
                    *buf = 136316418;
                    v230 = v184;
                    v231 = 2080;
                    v232 = "ProcessBindingRequest";
                    v233 = 1024;
                    v234 = 1612;
                    v235 = 2080;
                    *v236 = v186;
                    *&v236[8] = 2080;
                    v237 = v187;
                    LOWORD(v238[0]) = 2080;
                    *(v238 + 2) = v188;
                    _os_log_impl(&dword_23D497000, v185, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tBINDING_RESPONSE [%s] to [%s] USERNAME[%s]", buf, 0x3Au);
                  }
                }
              }

              v189 = FindMatchCP(*(v9 + 184), *(v9 + 200), v216, 0);
              if (v189 == -1)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 5)
                {
                  v204 = VRTraceErrorLogLevelToCSTR();
                  v205 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315906;
                    v230 = v204;
                    v231 = 2080;
                    v232 = "ProcessBindingRequest";
                    v233 = 1024;
                    v234 = 1617;
                    v235 = 1024;
                    *v236 = 1617;
                    _os_log_impl(&dword_23D497000, v205, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Candidate pair not found.", buf, 0x22u);
                  }
                }
              }

              else
              {
                v190 = v189;
                UpdateICEState((*(v9 + 184) + 400 * v189 + 296), 5);
                DelayedICEUpdateAfterNominationResponse(5, v9, (v9 + 184), v190, *(v9 + 200));
              }
            }
          }
        }
      }

      goto LABEL_283;
    }

    v165 = v147 + 44;
    while (1)
    {
      if ((v256[24] & 1) == (*(v165 - 5) & 1))
      {
        if (v256[24])
        {
          if (*&v257[12] != *v165 || *&v257[20] != *(v165 + 1))
          {
            goto LABEL_239;
          }
        }

        else if (*&v257[12] != *v165)
        {
          goto LABEL_239;
        }

        if (*&v257[28] == *(v165 + 8))
        {
          *&v256[12] = *(v165 - 4);
          goto LABEL_240;
        }
      }

LABEL_239:
      v165 += 148;
      if (!--v149)
      {
        goto LABEL_240;
      }
    }
  }

LABEL_183:
  v131 = DWORD1(__dst[0]) == 5 && DWORD2(__dst[9]) == 5;
  UpdateICEState((*(v9 + 184) + 400 * v222 + 296), 2);
  v132 = *(v9 + 184) + 400 * v222;
  v133 = *(v9 + 840);
  if (*(v132 + 296) == 6 && v133 == 1)
  {
    if (!*(v132 + 356))
    {
      if ((v252 & 4) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_197;
    }

    UpdateICEState((v132 + 296), 6);
    v133 = *(v9 + 840);
  }

  if ((v252 & 4) == 0)
  {
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v223 = 0;
    v225 = 0;
    if (v133 != 1)
    {
      goto LABEL_204;
    }

    if (v125)
    {
      goto LABEL_203;
    }

    goto LABEL_202;
  }

  if (v133 != 1)
  {
    v136 = 0;
    v137 = 0;
    v135 = 0;
    v223 = 0;
    v225 = 0;
    goto LABEL_204;
  }

LABEL_197:
  if (*(*(v9 + 184) + 400 * v222 + 356) && *(v9 + 888) >= 0x6Du)
  {
    v135 = *(v9 + 880);
    goto LABEL_201;
  }

LABEL_200:
  v135 = 0;
LABEL_201:
  v223 = 0;
  v225 = 0;
  if (v125)
  {
LABEL_203:
    ICEGetCandidatesForPeer(v9, 1, &v223, &v225);
    v137 = v223;
    v136 = v225;
    goto LABEL_204;
  }

LABEL_202:
  if (*(*(v9 + 184) + 400 * v222 + 356))
  {
    goto LABEL_203;
  }

  v136 = 0;
  v137 = 0;
LABEL_204:
  BindingResponse = MakeBindingResponse(v5, v3, v221, v266, v135, v137, v136, *(v9 + 204), v7, *(v9 + 888), 0, cf);
  if (v223)
  {
    free(v223);
  }

  if ((BindingResponse & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingRequest_cold_18();
      }
    }
  }

  else
  {
    v228 = 1472;
    v139 = STUNEncodeMessage(v266, __b, &v228, 0, v138);
    if ((v139 & 0x80000000) != 0)
    {
      BindingResponse = v139;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessBindingRequest_cold_17();
        }
      }
    }

    else
    {
      if (!v125)
      {
        goto LABEL_211;
      }

      if (*(v9 + 232) != 1)
      {
        BindingResponse = 2148859920;
        goto LABEL_283;
      }

      v140 = EncodeChannelDataMessage(*(v9 + 234), __b, &v228, 1472, __b);
      if ((v140 & 0x80000000) != 0)
      {
        BindingResponse = v140;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ProcessBindingRequest_cold_16();
          }
        }
      }

      else
      {
LABEL_211:
        BindingResponse = (*(v10 + 16))(*(v10 + 8), *(v9 + 148), __b, v228, &v252, &v247, 1, 0);
        if ((BindingResponse & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ProcessBindingRequest_cold_15();
            }
          }
        }

        else
        {
          v215 = v15;
          v141 = v10;
          v142 = GetSTUNAttr(v266, 6);
          if (v142)
          {
            v143 = v142;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v219 = VRTraceErrorLogLevelToCSTR();
              v144 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v211 = MakeTransID(v239, v267);
                v208 = IPPORTToStringWithSize(v244, &v247, 0x36uLL);
                v145 = ICEUNToString(v241, *(v143 + 2));
                *buf = 136316418;
                v230 = v219;
                v231 = 2080;
                v232 = "ProcessBindingRequest";
                v233 = 1024;
                v234 = 1429;
                v235 = 2080;
                *v236 = v211;
                *&v236[8] = 2080;
                v237 = v208;
                LOWORD(v238[0]) = 2080;
                *(v238 + 2) = v145;
                _os_log_impl(&dword_23D497000, v144, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** BINDING_RESPONSE [%s] to [%s] USERNAME[%s]", buf, 0x3Au);
              }
            }
          }

          UpdateICEState((*(v9 + 184) + 400 * v222 + 296), 5);
          v146 = *(v9 + 184) + 400 * v222;
          if (*(v146 + 296) == 6 && *(v9 + 840) == 1 && *(v146 + 356))
          {
            UpdateICEState((v146 + 296), 6);
          }

          if (v28 < 0x6A && !v131)
          {
            v125 = v131;
            v10 = v141;
            v15 = v215;
            goto LABEL_222;
          }
        }
      }
    }
  }

LABEL_283:
  if (cf)
  {
    CFRelease(cf);
  }

  FreeSTUNMessage(v266);
  FreeSTUNMessage(v264);
  v191 = *MEMORY[0x277D85DE8];
  return BindingResponse;
}

void RemoveNominatedCandidatePair(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v43 = *MEMORY[0x277D85DE8];
  *&v42[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41[1] = v6;
  *v42 = v6;
  v41[0] = v6;
  *&v40[14] = 0xAAAAAAAAAAAAAAAALL;
  v39[1] = v6;
  *v40 = v6;
  v39[0] = v6;
  if ((a3 & 0x80000000) != 0 || *(a2 + 200) <= a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v22 = *(a2 + 200);
        v28 = 136316162;
        v29 = v20;
        v30 = 2080;
        v31 = "RemoveNominatedCandidatePair";
        v32 = 1024;
        v33 = 983;
        v34 = 1024;
        *v35 = a3;
        *&v35[4] = 1024;
        *&v35[6] = v22;
        _os_log_error_impl(&dword_23D497000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d failed with invalid index input: %d, candidate pair count: %d", &v28, 0x28u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (a4)
        {
          v11 = "primary";
        }

        else
        {
          v11 = "secondary";
        }

        v12 = IPPORTToStringWithSize(v39, *(a2 + 184) + 400 * a3 + 24, 0x36uLL);
        v13 = IPPORTToStringWithSize(v41, *(a2 + 184) + 400 * a3 + 172, 0x36uLL);
        v28 = 136316674;
        v29 = v9;
        v30 = 2080;
        v31 = "RemoveNominatedCandidatePair";
        v32 = 1024;
        v33 = 989;
        v34 = 2080;
        *v35 = v11;
        *&v35[8] = 1024;
        *v36 = a3;
        *&v36[4] = 2080;
        *&v36[6] = v12;
        v37 = 2080;
        v38 = v13;
        _os_log_impl(&dword_23D497000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: Remove current %s[%d %s-%s]", &v28, 0x40u);
      }
    }

    v14 = a3;
    if (*(*(a2 + 184) + 400 * a3 + 4) == 5)
    {
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (a4)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v18 = IPPORTToStringWithSize(v39, *(a2 + 184) + 400 * v14 + 64, 0x36uLL);
            v19 = IPPORTToStringWithSize(v41, *(a2 + 184) + 400 * v14 + 172, 0x36uLL);
            v28 = 136316162;
            v29 = v16;
            v30 = 2080;
            v31 = "RemoveNominatedCandidatePair";
            v32 = 1024;
            v33 = 995;
            v34 = 2080;
            *v35 = v18;
            *&v35[8] = 2080;
            *v36 = v19;
            _os_log_impl(&dword_23D497000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: let VCCallSession tear down removed primary TURN candidate %s - %s", &v28, 0x30u);
          }
        }
      }

      else
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v25 = IPPORTToStringWithSize(v39, *(a2 + 184) + 400 * v14 + 24, 0x36uLL);
            v26 = IPPORTToStringWithSize(v41, *(a2 + 184) + 400 * v14 + 172, 0x36uLL);
            v28 = 136316162;
            v29 = v23;
            v30 = 2080;
            v31 = "RemoveNominatedCandidatePair";
            v32 = 1024;
            v33 = 999;
            v34 = 2080;
            *v35 = v25;
            *&v35[8] = 2080;
            *v36 = v26;
            _os_log_impl(&dword_23D497000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: tear down removed secondary TURN candidate %s - %s", &v28, 0x30u);
          }
        }

        DiscardOneRelayBindingWithChannelNumber(a1, *(a2 + 148), *(*(a2 + 184) + 400 * v14 + 384));
      }
    }

    DemoteCandidatePair(*(a2 + 184) + 400 * v14, 2, 0, 0);
    RemoveConnectivityCheckResult(a1, *(a2 + 148), *(a2 + 184) + 400 * v14);
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t MakeBindingResponse(uint64_t a1, __int128 *a2, int a3, char *a4, int a5, uint64_t a6, int a7, __int16 a8, double a9, unsigned int a10, int a11, CFDataRef theData)
{
  v64 = *MEMORY[0x277D85DE8];
  bzero(a4, 0x480uLL);
  *a4 = 65792;
  *(a4 + 6) = 1010;
  *(a4 + 3) = *(a1 + 6);
  *(a4 + 8) = *(a1 + 8);
  *(a4 + 7) = 0;
  STUNAttr = GetSTUNAttr(a1, 6);
  if (STUNAttr)
  {
    v22 = *(STUNAttr + 2);
    v23 = malloc_type_malloc(0x14uLL, 0x100004077774924uLL);
    if (v23)
    {
      v24 = *(v22 + 10);
      *(v23 + 4) = *(v22 + 9);
      *v23 = v24;
      v25 = *v22;
      *(v23 + 9) = *(v22 + 4);
      *(v23 + 10) = v25;
      *(a4 + 8) = 1310726;
      v26 = a4 + 32;
      *(a4 + 10) = 20;
      *(a4 + 6) = v23;
      *(a4 + 22) = 2883585;
      if (*a2)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      a4[96] = v27;
      v28 = *a2;
      v29 = a2[1];
      *(a4 + 132) = *(a2 + 4);
      *(a4 + 116) = v29;
      *(a4 + 100) = v28;
      *(a4 + 36) = 294913;
      if (a10 >= 0x6D && a11)
      {
        *(a4 + 38) = a3 | 0x100;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v30 = VRTraceErrorLogLevelToCSTR();
          v31 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a4 + 38);
            *buf = 136315906;
            *&buf[4] = v30;
            *&buf[12] = 2080;
            *&buf[14] = "MakeBindingResponse";
            v60 = 1024;
            v61 = 889;
            v62 = 1024;
            LODWORD(v63) = v32;
            _os_log_impl(&dword_23D497000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tadd DERIVED-REMOTE candidate indication (%08X).", buf, 0x22u);
          }
        }
      }

      else
      {
        *(a4 + 38) = a3;
      }

      if (*(a1 + 24) < 0x6Au)
      {
        v38 = 3;
      }

      else
      {
        *(a4 + 50) = 294915;
        *(a4 + 52) = *(a4 + 6);
        v34 = GetSTUNAttr(a1, 32772);
        if (v34)
        {
          *(a4 + 64) = 294916;
          *(a4 + 66) = *(v34 + 2);
          v35 = micro();
          if (MicroToMiddle32_zero_wide)
          {
            v36 = MicroToMiddle32_zero_wide;
            v37 = MicroToMiddle32_zero_wide + v35 * 4294967300.0;
          }

          else
          {
            memset(buf, 170, 16);
            v58.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            *&v58.tv_usec = 0xAAAAAAAAAAAAAAAALL;
            v39 = micro();
            gettimeofday(buf, 0);
            v40 = micro();
            gettimeofday(&v58, 0);
            if (micro() - v40 < v40 - v39)
            {
              *buf = v58;
              v39 = v40;
            }

            v41 = *buf + *&buf[8] * 0.000001 + 2208988800.0 - v39;
            MicroToMiddle32_zero_wide = vcvtd_n_u64_f64(v41, 0x20uLL);
            v36 = (v41 * 4294967300.0);
            v37 = v36 + v35 * 4294967300.0;
            if (!MicroToMiddle32_zero_wide)
            {
              memset(buf, 170, 16);
              v58.tv_sec = 0xAAAAAAAAAAAAAAAALL;
              *&v58.tv_usec = 0xAAAAAAAAAAAAAAAALL;
              v42 = micro();
              gettimeofday(buf, 0);
              v43 = micro();
              gettimeofday(&v58, 0);
              if (micro() - v43 < v43 - v42)
              {
                *buf = v58;
                v42 = v43;
              }

              v44 = *buf + *&buf[8] * 0.000001 + 2208988800.0 - v42;
              MicroToMiddle32_zero_wide = vcvtd_n_u64_f64(v44, 0x20uLL);
              v36 = (v44 * 4294967300.0);
            }
          }

          *(a4 + 78) = 294917;
          *(a4 + 80) = (v37 >> 16) - ((v36 + a9 * 4294967300.0) >> 16);
          v38 = 6;
        }

        else
        {
          v38 = 4;
        }
      }

      if (a5)
      {
        v45 = &v26[56 * v38];
        *v45 = 294919;
        *(v45 + 2) = a5;
        ++v38;
      }

      v33 = 0;
      if (a6 && a7 >= 1)
      {
        *buf = 0;
        LODWORD(v58.tv_sec) = 0;
        v33 = ICECompressCandidates(buf, &v58, 148 * a7, a6, a7);
        if ((v33 & 0x80000000) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              MakeBindingResponse_cold_1();
            }
          }

          goto LABEL_46;
        }

        tv_sec = v58.tv_sec;
        v47 = (2 - LOBYTE(v58.tv_sec)) & 3;
        if (((LODWORD(v58.tv_sec) + 2) & 3) == 0)
        {
          v47 = 0;
        }

        v48 = v47 + LOWORD(v58.tv_sec) + 2;
        v49 = &v26[56 * v38];
        *v49 = -32759;
        *(v49 + 1) = v48;
        *(v49 + 4) = a8;
        *(v49 + 4) = tv_sec;
        *(v49 + 3) = *buf;
        ++v38;
      }

      if (theData)
      {
        Length = CFDataGetLength(theData);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v51 = VRTraceErrorLogLevelToCSTR();
          v52 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v51;
            *&buf[12] = 2080;
            *&buf[14] = "MakeBindingResponse";
            v60 = 1024;
            v61 = 959;
            v62 = 2048;
            v63 = Length;
            _os_log_impl(&dword_23D497000, v52, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending SKEMessage of length %ld in binding response", buf, 0x26u);
          }
        }

        v53 = (-Length & 3) + Length;
        v54 = &v26[56 * v38];
        *v54 = -32758;
        if ((Length & 3) == 0)
        {
          LOWORD(v53) = Length;
        }

        *(v54 + 1) = v53;
        *(v54 + 2) = Length;
        v55 = malloc_type_malloc(Length, 0xF25144ABuLL);
        *(v54 + 2) = v55;
        v65.location = 0;
        v65.length = Length;
        CFDataGetBytes(theData, v65, v55);
        ++v38;
      }

LABEL_46:
      *(a4 + 7) = v38;
      goto LABEL_47;
    }

    v33 = 2148859907;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        MakeBindingResponse_cold_2();
      }
    }
  }

  else
  {
    v33 = 2148859938;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        MakeBindingResponse_cold_3();
        v33 = 2148859938;
      }
    }
  }

LABEL_47:
  v56 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t IsNewCandidate(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 < 1)
  {
    return 1;
  }

  v3 = *(a3 + 24) & 1;
  v4 = a2;
  for (i = a1 + 44; ; i += 148)
  {
    if (v3 == (*(i - 20) & 1))
    {
      if (v3)
      {
        if (*(a3 + 44) != *i || *(a3 + 52) != *(i + 8))
        {
          goto LABEL_13;
        }
      }

      else if (*(a3 + 44) != *i)
      {
        goto LABEL_13;
      }

      if (*(a3 + 60) == *(i + 16))
      {
        break;
      }
    }

LABEL_13:
    if (!--v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t IsNewCandidatePair(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 1)
  {
    return 1;
  }

  v4 = *(a3 + 24) & 1;
  v5 = a2;
  for (i = a1 + 172; ; i += 400)
  {
    if (v4 == (*(i - 148) & 1))
    {
      if (v4)
      {
        if (*(a3 + 44) != *(i - 128) || *(a3 + 52) != *(i - 120))
        {
          goto LABEL_23;
        }
      }

      else if (*(a3 + 44) != *(i - 128))
      {
        goto LABEL_23;
      }

      if (*(a3 + 60) != *(i - 112) || (*(a4 + 24) & 1) != (*i & 1))
      {
        goto LABEL_23;
      }

      if (*(a4 + 24))
      {
        if (*(a4 + 44) != *(i + 20) || *(a4 + 52) != *(i + 28))
        {
          goto LABEL_23;
        }
      }

      else if (*(a4 + 44) != *(i + 20))
      {
        goto LABEL_23;
      }

      if (*(a4 + 60) == *(i + 36))
      {
        break;
      }
    }

LABEL_23:
    if (!--v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ProcessBindingErrorResponse(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *&v17[14] = 0xAAAAAAAAAAAAAAAALL;
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v16[1] = v5;
      *v17 = v5;
      v16[0] = v5;
      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "ProcessBindingErrorResponse";
      v12 = 1024;
      v13 = 1893;
      v14 = 2080;
      v15 = IPPORTToStringWithSize(v16, a2, 0x36uLL);
      _os_log_impl(&dword_23D497000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** BINDING_ERROR_RESPONSE from (%s)", &v8, 0x26u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ProcessConnCheckMessage(uint64_t a1, uint64_t a2, double a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v62 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v44 = 0;
  v9 = 2148859905;
  if (a5 && a6)
  {
    memset(__b, 170, sizeof(__b));
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v59[0] = v18;
    v59[1] = v18;
    v60 = 0xAAAAAAAAAAAAAAAALL;
    v57[0] = v18;
    v57[1] = v18;
    v58 = 0xAAAAAAAAAAAAAAAALL;
    v55[0] = v18;
    v55[1] = v18;
    v56[0] = v18;
    *(v56 + 14) = 0xAAAAAAAAAAAAAAAALL;
    v19 = ParseSTUNMessage(a5, a6, __b);
    v9 = v19;
    if ((v19 & 0x80000000) == 0)
    {
      if (__b[0] <= 0xFFu)
      {
        if (__b[0])
        {
          if (__b[0] == 16)
          {
            if (VRTraceGetErrorLogLevelForModule() < 5)
            {
              goto LABEL_55;
            }

            v20 = VRTraceErrorLogLevelToCSTR();
            v21 = *MEMORY[0x277CE5818];
            if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_55;
            }

            *buf = 136316162;
            v47 = v20;
            v48 = 2080;
            v49 = "ProcessConnCheckMessage";
            v50 = 1024;
            v51 = 2066;
            v52 = 1024;
            *v53 = 2066;
            *&v53[4] = 1024;
            *&v53[6] = __b[1];
            v22 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: UNKNOWN Indication method(%04X)";
LABEL_54:
            _os_log_impl(&dword_23D497000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0x28u);
LABEL_55:
            v9 = 2148859938;
            goto LABEL_75;
          }

LABEL_20:
          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_55;
          }

          v24 = VRTraceErrorLogLevelToCSTR();
          v21 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_55;
          }

          *buf = 136316162;
          v47 = v24;
          v48 = 2080;
          v49 = "ProcessConnCheckMessage";
          v50 = 1024;
          v51 = 2071;
          v52 = 1024;
          *v53 = 2071;
          *&v53[4] = 1024;
          *&v53[6] = __b[0];
          v22 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: UNKNOWN MESSAGE Class(%04X)";
          goto LABEL_54;
        }

        if (__b[1] != 1)
        {
          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_55;
          }

          v27 = VRTraceErrorLogLevelToCSTR();
          v21 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_55;
          }

          *buf = 136316162;
          v47 = v27;
          v48 = 2080;
          v49 = "ProcessConnCheckMessage";
          v50 = 1024;
          v51 = 1937;
          v52 = 1024;
          *v53 = 1937;
          *&v53[4] = 1024;
          *&v53[6] = __b[1];
          v22 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: UNKNOWN Request method(%04X)";
          goto LABEL_54;
        }

        PermissionResponse = ProcessBindingRequest(a1);
LABEL_74:
        v9 = PermissionResponse;
        goto LABEL_75;
      }

      if (__b[0] == 256)
      {
        if (__b[1] > 5u)
        {
          switch(__b[1])
          {
            case 6:
              PermissionResponse = ProcessSendResponse(__b);
              goto LABEL_74;
            case 8:
              *(a2 + 392) = micro();
              PermissionResponse = ProcessCreatePermissionResponse();
              goto LABEL_74;
            case 9:
              *(a2 + 400) = 1;
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v28 = VRTraceErrorLogLevelToCSTR();
                v29 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v30 = IPPORTToStringWithSize(v55, a8, 0x36uLL);
                  v31 = *(a2 + 148);
                  *buf = 136316162;
                  v47 = v28;
                  v48 = 2080;
                  v49 = "ProcessConnCheckMessage";
                  v50 = 1024;
                  v51 = 1984;
                  v52 = 2080;
                  *v53 = v30;
                  *&v53[8] = 1024;
                  v54 = v31;
                  _os_log_impl(&dword_23D497000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** CHANNELBIND_RESPONSE from [%s] for call id (%d)\n", buf, 0x2Cu);
                }
              }

              PermissionResponse = ProcessChannelBindResponse();
              goto LABEL_74;
          }
        }

        else
        {
          switch(__b[1])
          {
            case 1:
              PermissionResponse = ProcessBindingResponse(a2, __b, a8, a3);
              goto LABEL_74;
            case 3:
              if (!*(a2 + 752))
              {
                ProcessAllocateResponse(__b, *(a2 + 232), &v44, v59, v57, *(a2 + 744), *(a2 + 756));
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v35 = VRTraceErrorLogLevelToCSTR();
                  v36 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    v37 = IPPORTToStringWithSize(v55, a8, 0x36uLL);
                    v38 = *(a2 + 148);
                    *buf = 136316162;
                    v47 = v35;
                    v48 = 2080;
                    v49 = "ProcessConnCheckMessage";
                    v50 = 1024;
                    v51 = 1954;
                    v52 = 2080;
                    *v53 = v37;
                    *&v53[8] = 1024;
                    v54 = v38;
                    _os_log_impl(&dword_23D497000, v36, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** ALLOCATE_RESPONSE from [%s] for call id (%d)\n", buf, 0x2Cu);
                  }
                }

                v9 = ICEUpdateRelayIPPort(a1, a7, v59, v57, *(a2 + 148));
                if ((v9 & 0x80000000) == 0)
                {
                  *(a2 + 756) = 0;
                }

                *a9 = 1;
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v39 = VRTraceErrorLogLevelToCSTR();
                  v40 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    v41 = IPPORTToStringWithSize(v55, v59, 0x36uLL);
                    *buf = 136316162;
                    v47 = v39;
                    v48 = 2080;
                    v49 = "ProcessConnCheckMessage";
                    v50 = 1024;
                    v51 = 1964;
                    v52 = 2080;
                    *v53 = v41;
                    *&v53[8] = 1024;
                    v54 = v44;
                    _os_log_impl(&dword_23D497000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RELAY mapping [%s] lifetime [%d]", buf, 0x2Cu);
                  }
                }
              }

              goto LABEL_75;
            case 5:
              v25 = *(a2 + 184);
              v26 = *(a2 + 200);
              PermissionResponse = ProcessSetActiveDstResponse(__b);
              goto LABEL_74;
          }
        }

        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_55;
        }

        v33 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        *buf = 136316162;
        v47 = v33;
        v48 = 2080;
        v49 = "ProcessConnCheckMessage";
        v50 = 1024;
        v51 = 1988;
        v52 = 1024;
        *v53 = 1988;
        *&v53[4] = 1024;
        *&v53[6] = __b[1];
        v22 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: UNKNOWN Response method(%04X)";
        goto LABEL_54;
      }

      if (__b[0] != 272)
      {
        goto LABEL_20;
      }

      if (__b[1] > 5u)
      {
        switch(__b[1])
        {
          case 6:
            PermissionResponse = ProcessSendErrorResponse(__b, &v45);
            goto LABEL_74;
          case 8:
            PermissionResponse = ProcessPermissionErrorResponse(__b, &v45);
            goto LABEL_74;
          case 9:
            PermissionResponse = ProcessChannelBindErrorResponse(__b, &v45);
            goto LABEL_74;
        }

        goto LABEL_48;
      }

      if (__b[1] == 1)
      {
        ProcessBindingErrorResponse(v19, a8);
        v9 = 0;
LABEL_75:
        FreeSTUNMessage(__b);
        goto LABEL_76;
      }

      if (__b[1] != 3)
      {
        if (__b[1] == 5)
        {
          PermissionResponse = ProcessSetActiveDstErrorResponse(__b, &v45);
          goto LABEL_74;
        }

LABEL_48:
        if (VRTraceGetErrorLogLevelForModule() < 5)
        {
          goto LABEL_55;
        }

        v32 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        *buf = 136316162;
        v47 = v32;
        v48 = 2080;
        v49 = "ProcessConnCheckMessage";
        v50 = 1024;
        v51 = 2060;
        v52 = 1024;
        *v53 = 2060;
        *&v53[4] = 1024;
        *&v53[6] = __b[1];
        v22 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: UNKNOWN Error Response method(%04X)";
        goto LABEL_54;
      }

      *a9 = 2;
      PermissionResponse = ProcessAllocateErrorResponse(__b, &v45);
      if ((PermissionResponse & 0x80000000) != 0)
      {
        goto LABEL_74;
      }

      if (v45 > 0x1B4u)
      {
        if (v45 > 0x1B9u)
        {
          switch(v45)
          {
            case 0x1BAu:
              v34 = 28;
              goto LABEL_99;
            case 0x1E6u:
              v34 = 29;
              goto LABEL_99;
            case 0x1FCu:
              v34 = 30;
              goto LABEL_99;
          }
        }

        else
        {
          switch(v45)
          {
            case 0x1B5u:
              v34 = 25;
              goto LABEL_99;
            case 0x1B6u:
              v34 = 26;
              goto LABEL_99;
            case 0x1B9u:
              v34 = 27;
              goto LABEL_99;
          }
        }
      }

      else if (v45 > 0x191u)
      {
        switch(v45)
        {
          case 0x192u:
            v34 = 22;
            goto LABEL_99;
          case 0x193u:
            v34 = 23;
            goto LABEL_99;
          case 0x1A4u:
            v34 = 24;
            goto LABEL_99;
        }
      }

      else
      {
        switch(v45)
        {
          case 0x12Cu:
            v34 = 19;
            goto LABEL_99;
          case 0x190u:
            v34 = 20;
            goto LABEL_99;
          case 0x191u:
            v34 = 21;
LABEL_99:
            *(a2 + 424) = v34;
            v9 = 2148859955;
            goto LABEL_75;
        }
      }

      v34 = 35;
      goto LABEL_99;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessConnCheckMessage_cold_1();
      }
    }
  }

LABEL_76:
  v42 = *MEMORY[0x277D85DE8];
  return v9;
}