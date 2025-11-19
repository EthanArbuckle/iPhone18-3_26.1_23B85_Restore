uint64_t ProcessBindingResponse(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v147 = *MEMORY[0x277D85DE8];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __dst[23] = v8;
  __dst[24] = v8;
  __dst[21] = v8;
  __dst[22] = v8;
  __dst[19] = v8;
  __dst[20] = v8;
  __dst[17] = v8;
  __dst[18] = v8;
  __dst[15] = v8;
  __dst[16] = v8;
  __dst[13] = v8;
  __dst[14] = v8;
  __dst[11] = v8;
  __dst[12] = v8;
  __dst[9] = v8;
  __dst[10] = v8;
  __dst[7] = v8;
  __dst[8] = v8;
  __dst[5] = v8;
  __dst[6] = v8;
  __dst[3] = v8;
  __dst[4] = v8;
  __dst[1] = v8;
  __dst[2] = v8;
  __dst[0] = v8;
  v145 = -1431655766;
  v143 = v8;
  v144 = v8;
  v141 = v8;
  v142 = v8;
  v139 = v8;
  v140 = v8;
  *&v137[16] = v8;
  v138 = v8;
  *v137 = v8;
  *&v136[16] = 0xAAAAAAAAAAAAAAAALL;
  v135 = v8;
  *v136 = v8;
  *(v132 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v131[1] = v8;
  v132[0] = v8;
  v131[0] = v8;
  *(v130 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v129[1] = v8;
  v130[0] = v8;
  v128[3] = v8;
  v129[0] = v8;
  v128[1] = v8;
  v128[2] = v8;
  v128[0] = v8;
  memset(v127, 170, sizeof(v127));
  memset(v126, 170, 25);
  STUNAttr = GetSTUNAttr(a2, 6);
  if (!STUNAttr)
  {
    v26 = 2148859938;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingResponse_cold_7();
      }
    }

    goto LABEL_108;
  }

  v10 = STUNAttr;
  v11 = *(STUNAttr + 2);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      TransID = MakeTransID(v126, (a2 + 12));
      v15 = IPPORTToStringWithSize(v129, a3, 0x36uLL);
      v16 = ICEUNToString(v128, *(v10 + 2));
      *buf = 136316418;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = "ProcessBindingResponse";
      v118 = 1024;
      v119 = 1676;
      v120 = 2080;
      v121 = TransID;
      v122 = 2080;
      v123 = v15;
      v124 = 2080;
      v125 = v16;
      _os_log_impl(&dword_23D497000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** BINDING_RESPONSE [%s] from [%s] USERNAME[%s]", buf, 0x3Au);
    }
  }

  v17 = GetSTUNAttr(a2, 1);
  if (!v17)
  {
    v26 = 2148859938;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingResponse_cold_6();
      }
    }

    goto LABEL_108;
  }

  v18 = *(v17 + 6);
  v19 = *(v17 + 14);
  *&v134[16] = *(v17 + 22);
  v133 = v18;
  *v134 = v19;
  v20 = GetSTUNAttr(a2, 32769);
  if (!v20)
  {
    v26 = 2148859938;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingResponse_cold_5();
      }
    }

    goto LABEL_108;
  }

  v21 = *(v20 + 2);
  if ((v21 & 0x100) != 0 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = "ProcessBindingResponse";
      v118 = 1024;
      v119 = 1696;
      v120 = 1024;
      LODWORD(v121) = v21;
      _os_log_impl(&dword_23D497000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tRemote added DRIVED-REMOTE candidate, create DERIVED-LOCAL candidate (proto=%d).", buf, 0x22u);
    }
  }

  v24 = GetSTUNAttr(a2, 32771);
  if (v24)
  {
    v25 = *(v24 + 2);
  }

  else
  {
    v25 = 105;
  }

  *(a2 + 24) = v25;
  v27 = GetSTUNAttr(a2, 32775);
  if (v27)
  {
    *(a1 + 884) = *(v27 + 2);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 884);
        *buf = 136315906;
        *&buf[4] = v28;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessBindingResponse";
        v118 = 1024;
        v119 = 1710;
        v120 = 1024;
        LODWORD(v121) = v30;
        _os_log_impl(&dword_23D497000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remote cellular technology:[%d]", buf, 0x22u);
      }
    }
  }

  MatchCP = FindMatchCP(*(a1 + 184), *(a1 + 200), v11, 0);
  if (MatchCP == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v48 = VRTraceErrorLogLevelToCSTR();
      v49 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v48;
        *&buf[12] = 2080;
        *&buf[14] = "ProcessBindingResponse";
        v118 = 1024;
        v119 = 1715;
        v120 = 1024;
        LODWORD(v121) = 1715;
        _os_log_impl(&dword_23D497000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Candidate pair not found.", buf, 0x22u);
      }
    }

    goto LABEL_107;
  }

  v32 = MatchCP;
  v33 = *(a1 + 184) + 400 * MatchCP;
  v34 = *a3;
  v35 = *(a3 + 16);
  *(v33 + 344) = *(a3 + 32);
  *(v33 + 312) = v34;
  *(v33 + 328) = v35;
  v36 = *(a1 + 184) + 400 * MatchCP;
  memcpy(__dst, v36, sizeof(__dst));
  v37 = *(v36 + 40);
  v135 = *(v36 + 24);
  *v136 = v37;
  *&v136[16] = *(v36 + 56);
  if (v25 >= 0x6A && (v38 = GetSTUNAttr(a2, 32772)) != 0)
  {
    v39 = *(v38 + 2);
    v40 = GetSTUNAttr(a2, 32773);
    if (!v40)
    {
      v26 = 2148859938;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessBindingResponse_cold_1();
        }
      }

      goto LABEL_108;
    }

    v115 = v25 - 106;
    v41 = *(v40 + 2);
    v42 = MicroToMiddle32_zero_wide;
    if (!MicroToMiddle32_zero_wide)
    {
      memset(buf, 170, 16);
      v116.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      *&v116.tv_usec = 0xAAAAAAAAAAAAAAAALL;
      v43 = micro();
      gettimeofday(buf, 0);
      v44 = micro();
      gettimeofday(&v116, 0);
      if (micro() - v44 < v44 - v43)
      {
        *buf = v116;
        v43 = v44;
      }

      v42 = vcvtd_n_u64_f64(*buf + *&buf[8] * 0.000001 + 2208988800.0 - v43, 0x20uLL);
      MicroToMiddle32_zero_wide = v42;
    }

    v114 = ((v42 + a4 * 4294967300.0) >> 16) - (v41 + v39);
    *(*(a1 + 184) + 400 * v32 + 352) = v114;
  }

  else
  {
    v114 = 0;
    v115 = v25 - 106;
  }

  v46 = DWORD1(__dst[0]) == 5 && DWORD2(__dst[9]) == 5;
  if ((v133 & 1) == (v135 & 1))
  {
    if (v133)
    {
      if (*&v134[4] == *&v136[4] && *&v134[12] == *&v136[12])
      {
        goto LABEL_46;
      }
    }

    else if (*&v134[4] == *&v136[4])
    {
LABEL_46:
      v47 = *&v134[20] != *&v136[20] && v25 >= 0x6A;
      goto LABEL_57;
    }
  }

  v47 = v25 >= 0x6A;
LABEL_57:
  v51 = !v47;
  if (((v51 | v46) & 1) == 0)
  {
    goto LABEL_99;
  }

  v52 = *(a1 + 184);
  if (*(a1 + 840) == 1 && (v53 = v52 + 400 * v32, *(v53 + 356)))
  {
    v54 = (v53 + 296);
    v55 = 7;
  }

  else
  {
    v54 = (v52 + 400 * v32 + 296);
    v55 = 4;
  }

  UpdateICEState(v54, v55);
  v56 = *(a1 + 184) + 400 * v32;
  if (*(v56 + 296) == 6)
  {
    if (*(a1 + 840) != 2)
    {
      goto LABEL_95;
    }

    if (*(v56 + 356) && *(a1 + 856) == 554869826 && *(a2 + 8) == 554869826 && *(a1 + 860) == *(a2 + 12) && *(a1 + 868) == *(a2 + 20))
    {
      UpdateICEState((v56 + 296), 6);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v58 = VRTraceErrorLogLevelToCSTR();
        v59 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v58;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessBindingResponse";
          v118 = 1024;
          v119 = 1764;
          _os_log_impl(&dword_23D497000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Nomination accepted by controlled agent.", buf, 0x1Cu);
        }
      }
    }
  }

  if (*(a1 + 840) == 2)
  {
    v60 = GetSTUNAttr(a2, 32777);
    if (v60)
    {
      v61 = v60;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v113 = VRTraceErrorLogLevelToCSTR();
        v62 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v63 = *(v61 + 4);
          *buf = 136315906;
          *&buf[4] = v113;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessBindingResponse";
          v118 = 1024;
          v119 = 1770;
          v120 = 1024;
          LODWORD(v121) = v63;
          _os_log_impl(&dword_23D497000, v62, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Binding response has remote connection blob (%d).", buf, 0x22u);
        }
      }

      ICEProcessRemoteInterfaceChange(*a1, *(a1 + 148), *(v61 + 3), *(v61 + 4), v61[4], 0);
    }

    pthread_mutex_lock((a1 + 16));
    if (*(a1 + 896))
    {
      v64 = GetSTUNAttr(a2, 32778);
      if (v64)
      {
        v65 = v64;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v66 = VRTraceErrorLogLevelToCSTR();
          v67 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v68 = *(v65 + 2);
            *buf = 136315906;
            *&buf[4] = v66;
            *&buf[12] = 2080;
            *&buf[14] = "ProcessBindingResponse";
            v118 = 1024;
            v119 = 1782;
            v120 = 1024;
            LODWORD(v121) = v68;
            _os_log_impl(&dword_23D497000, v67, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Binding response has SKEMessage of length %d", buf, 0x22u);
          }
        }

        v69 = CFDataCreateWithBytesNoCopy(0, *(v65 + 2), *(v65 + 2), *MEMORY[0x277CBED00]);
        v70 = *(a1 + 896);
        if (SKEState_SetBlob())
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              ProcessBindingResponse_cold_2();
            }
          }
        }

        CFRelease(v69);
      }
    }

    pthread_mutex_unlock((a1 + 16));
  }

LABEL_95:
  v71 = v115 < 3 || v46;
  if (v71)
  {
    goto LABEL_107;
  }

LABEL_99:
  GetICECandidate(v137, 6, SDWORD2(__dst[0]), v21, &v133, SWORD2(__dst[1]), &__dst[4], __dst[4]);
  v72 = *(a1 + 168);
  v73 = *(a1 + 192);
  v74 = *(a1 + 192);
  if (!IsNewCandidate(v72, v74, v137))
  {
    v89 = 0;
    if ((v21 & 0x100) == 0 || v25 < 0x6D)
    {
      goto LABEL_105;
    }

    *&v137[12] = HIDWORD(__dst[0]);
    *&v137[16] = __dst[10];
    if (v73 >= 1)
    {
      v95 = v72 + 12;
      while (*&v137[12] != *v95)
      {
        v95 = (v95 + 148);
        if (!--v73)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_104;
    }

LABEL_115:
    v96 = malloc_type_realloc(v72, 148 * (v74 + 1), 0x1000040C185D105uLL);
    *(a1 + 168) = v96;
    if (v96)
    {
      v97 = &v96[148 * *(a1 + 192)];
      v98 = *&v137[16];
      *v97 = *v137;
      *(v97 + 1) = v98;
      v99 = v138;
      v100 = v139;
      v101 = v141;
      *(v97 + 4) = v140;
      *(v97 + 5) = v101;
      *(v97 + 2) = v99;
      *(v97 + 3) = v100;
      v102 = v142;
      v103 = v143;
      v104 = v144;
      *(v97 + 36) = v145;
      *(v97 + 7) = v103;
      *(v97 + 8) = v104;
      *(v97 + 6) = v102;
      ++*(a1 + 192);
      ++*(a1 + 204);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v105 = VRTraceErrorLogLevelToCSTR();
        v106 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v107 = IPPORTToStringWithSize(v131, &v133, 0x36uLL);
          v108 = CANIDToString(v127, v97 + 3);
          v109 = *(a1 + 204);
          *buf = 136316418;
          *&buf[4] = v105;
          *&buf[12] = 2080;
          *&buf[14] = "ProcessBindingResponse";
          v118 = 1024;
          v119 = 1847;
          v120 = 2080;
          v121 = v107;
          v122 = 2080;
          v123 = v108;
          v124 = 1024;
          LODWORD(v125) = v109;
          _os_log_impl(&dword_23D497000, v106, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tadd DERIVED-LOCAL candidate[%s] ID[%s], iLCVersion[%d] with duplicate IPPort.", buf, 0x36u);
        }
      }

      v89 = 1;
      goto LABEL_105;
    }

LABEL_124:
    v26 = *__error() | 0xC0150000;
    goto LABEL_108;
  }

  v75 = malloc_type_realloc(v72, 148 * v74 + 148, 0x1000040C185D105uLL);
  *(a1 + 168) = v75;
  if (!v75)
  {
    goto LABEL_124;
  }

  *&v137[12] = HIDWORD(__dst[0]);
  *&v137[16] = __dst[10];
  v76 = &v75[148 * *(a1 + 192)];
  v77 = v142;
  v78 = v143;
  v79 = v144;
  *(v76 + 36) = v145;
  *(v76 + 7) = v78;
  *(v76 + 8) = v79;
  *(v76 + 6) = v77;
  v80 = v138;
  v81 = v139;
  v82 = v141;
  *(v76 + 4) = v140;
  *(v76 + 5) = v82;
  *(v76 + 2) = v80;
  *(v76 + 3) = v81;
  v83 = *&v137[16];
  *v76 = *v137;
  *(v76 + 1) = v83;
  ++*(a1 + 192);
  ++*(a1 + 204);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v84 = VRTraceErrorLogLevelToCSTR();
    v85 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v86 = IPPORTToStringWithSize(v131, &v133, 0x36uLL);
      v87 = CANIDToString(v127, v76 + 3);
      v88 = *(a1 + 204);
      *buf = 136316418;
      *&buf[4] = v84;
      *&buf[12] = 2080;
      *&buf[14] = "ProcessBindingResponse";
      v118 = 1024;
      v119 = 1824;
      v120 = 2080;
      v121 = v86;
      v122 = 2080;
      v123 = v87;
      v124 = 1024;
      LODWORD(v125) = v88;
      _os_log_impl(&dword_23D497000, v85, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tadd DERIVED-LOCAL candidate[%s] ID[%s], iLCVersion[%d].", buf, 0x36u);
    }
  }

LABEL_104:
  v89 = 0;
LABEL_105:
  v90 = *(a1 + 184);
  v91 = *(a1 + 200);
  v92 = IsNewCandidatePair(v90, v91, v137, &__dst[9] + 4);
  if ((v89 & 1) == 0 && !v92)
  {
LABEL_107:
    v26 = 0;
    goto LABEL_108;
  }

  v110 = malloc_type_realloc(v90, 400 * v91 + 400, 0x10200402E010713uLL);
  *(a1 + 184) = v110;
  if (v110)
  {
    v111 = v110 + 400 * *(a1 + 200);
    *buf = 0;
    v26 = PairUpCandidate(v137, 1, &__dst[9] + 4, 1, v111, 3, buf, __dst[23]);
    if ((v26 & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessBindingResponse_cold_4();
        }
      }
    }

    else if (*buf == 1)
    {
      *(v111 + 352) = v114;
      ++*(a1 + 200);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v112 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        ProcessBindingResponse_cold_3(v112, buf);
      }
    }
  }

  else
  {
    v26 = 2148859907;
  }

LABEL_108:
  v93 = *MEMORY[0x277D85DE8];
  return v26;
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x28u);
}

uint64_t EQInit(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 64) = 0;
    *(a1 + 72) = 1;
    pthread_mutex_init(a1, 0);
    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        EQInit_cold_1();
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t EQPush(uint64_t a1, double *a2, int a3)
{
  pthread_mutex_lock(a1);
  if (a2)
  {
    v7 = (a1 + 64);
    v6 = *(a1 + 64);
    v8 = *(a1 + 72);
    if (a3 == -1)
    {
      v9 = *(a1 + 72);
    }

    else
    {
      v9 = a3;
    }

    *a2 = v9;
    *(a1 + 72) = v8 + 1;
    if (v6)
    {
      v10 = a2[1];
      if (v10 < *(v6 + 8))
      {
LABEL_10:
        *(a2 + 3) = v6;
        *v7 = a2;
LABEL_18:
        pthread_mutex_unlock(a1);
        return *a2;
      }

      while (1)
      {
        v11 = v6;
        v6 = *(v6 + 24);
        if (!v6)
        {
          break;
        }

        if (v10 < *(v6 + 8))
        {
          v7 = (v11 + 24);
          goto LABEL_10;
        }
      }

      *(v11 + 24) = a2;
    }

    else
    {
      *(a1 + 64) = a2;
    }

    a2[3] = 0.0;
    goto LABEL_18;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      EQPush_cold_1();
    }
  }

  pthread_mutex_unlock(a1);
  return 0xFFFFFFFFLL;
}

uint64_t EQPop(pthread_mutex_t *a1, uint64_t *a2)
{
  pthread_mutex_lock(a1);
  sig = a1[1].__sig;
  if (sig)
  {
    *a2 = sig;
    a1[1].__sig = *(a1[1].__sig + 24);
  }

  else
  {
    *a2 = 0;
  }

  return pthread_mutex_unlock(a1);
}

double EQNextExpire(pthread_mutex_t *a1)
{
  pthread_mutex_lock(a1);
  sig = a1[1].__sig;
  pthread_mutex_unlock(a1);
  if (sig)
  {
    return *(a1[1].__sig + 8);
  }

  else
  {
    return 2147483650.0;
  }
}

double EQLastExpire(pthread_mutex_t *a1)
{
  pthread_mutex_lock(a1);
  sig = a1[1].__sig;
  if (sig)
  {
    do
    {
      v3 = sig;
      sig = *(sig + 24);
    }

    while (sig);
    pthread_mutex_unlock(a1);
    return *(v3 + 8);
  }

  else
  {
    pthread_mutex_unlock(a1);
    return 2147483650.0;
  }
}

pthread_mutex_t *FreeEventsMatchingPredicate(pthread_mutex_t *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    pthread_mutex_lock(result);
    v5 = v3 + 1;
    sig = v3[1].__sig;
    if (sig)
    {
      do
      {
        if ((*(a2 + 16))(a2, sig))
        {
          v5->__sig = sig[3];
          FreeEvent(sig);
        }

        else
        {
          v5 = (sig + 3);
        }

        sig = v5->__sig;
      }

      while (v5->__sig);
    }

    return pthread_mutex_unlock(v3);
  }

  return result;
}

void FreeEvent(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

void FreeEQ(pthread_mutex_t *a1)
{
  if (a1)
  {
    pthread_mutex_lock(a1);
    sig = a1[1].__sig;
    if (sig)
    {
      do
      {
        v3 = sig[3];
        FreeEvent(sig);
        sig = v3;
      }

      while (v3);
    }

    pthread_mutex_unlock(a1);
    pthread_mutex_destroy(a1);

    free(a1);
  }
}

uint64_t MakeAllocateRequest(_DWORD *a1, int a2, int a3, uint64_t a4, const char *a5, const void *a6)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v33[0] = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v12;
  v32 = v12;
  v30 = -1431655766;
  v28 = 0;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  bzero(a1, 0x480uLL);
  *a1 = 196608;
  *(a1 + 3) = 1;
  a1[2] = 554869826;
  RelayTransIDFromDict = GetRelayTransIDFromDict(a6, &v29);
  if ((RelayTransIDFromDict & 0x80000000) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = &v29;
  }

  STUNGetTransID((a1 + 3), 3u, v14);
  if (a2 == 2)
  {
    a1[8] = 262159;
    v16 = a1 + 8;
    a1[10] = 1925598150;
    if (a5)
    {
      v17 = strlen(a5);
      v18 = 4 - (v17 & 3u);
      *(a1 + 44) = 6;
      *(a1 + 45) = 4 - (v17 & 3) + v17;
      v19 = malloc_type_calloc(1uLL, v18 + v17 + 1, 0x100004077774924uLL);
      *(a1 + 13) = v19;
      a1[24] = v18 + v17;
      memcpy(v19, a5, v17);
      memset((*(a1 + 13) + v18 + v17 - v18), 32, v18);
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v24 = &v16[14 * v20];
    *v24 = 262157;
    v24[2] = a3;
    v25 = &v16[14 * v20 + 14];
    *v25 = 1310728;
    v25[2] = 20;
    v21 = v20 + 2;
  }

  else if (a2 == 1)
  {
    a1[8] = 262169;
    a1[10] = 285212672;
    a1[22] = 524322;
    if ((GetReservationTokenFromDict(a6, &v28) & 0x80000000) != 0)
    {
      v15 = 1;
      v28 = 1;
    }

    else
    {
      v15 = v28;
    }

    *(a1 + 12) = v15;
    a1[36] = 2883606;
    *(a1 + 152) = 1;
    RelayTransIDFromDict = GetIPPortFromDict(a6, @"GKSRelayPeerRelayIP", @"GKSRelayPeerRelayPort", &v31);
    if ((RelayTransIDFromDict & 0x80000000) == 0)
    {
      v22 = v33 + 2;
      v23 = bswap32(DWORD1(v32));
LABEL_16:
      a1[44] = v23;
      *(a1 + 96) = *v22;
      a1[50] = 262157;
      a1[52] = a3;
      a1[64] = 1310728;
      a1[66] = 20;
      v21 = 5;
      goto LABEL_19;
    }

    if (a4)
    {
      v22 = (a4 + 36);
      v23 = *(a4 + 20);
      goto LABEL_16;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        MakeAllocateRequest_cold_1();
      }
    }

    v21 = 2;
  }

  else
  {
    v21 = 0;
    RelayTransIDFromDict = 2148859925;
  }

LABEL_19:
  a1[7] = v21;
  v26 = *MEMORY[0x277D85DE8];
  return RelayTransIDFromDict;
}

uint64_t MakeChannelBindRequest(_DWORD *a1, int a2, uint64_t a3, const void *a4)
{
  v36[3] = *MEMORY[0x277D85DE8];
  memset(v36, 170, 20);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34 = v8;
  v35 = v8;
  bzero(a1, 0x480uLL);
  *a1 = 589824;
  *(a1 + 3) = 1;
  a1[2] = 554869826;
  if ((GetRelayTransIDFromDict(a4, &v36[1]) & 0x80000000) != 0)
  {
    v9 = (a1 + 3);
    v10 = 0;
  }

  else
  {
    v9 = (a1 + 3);
    v10 = &v36[1];
  }

  STUNGetTransID(v9, 9u, v10);
  a1[8] = 262156;
  a1[10] = a2 << 16;
  a1[22] = 2883602;
  *(a1 + 96) = 1;
  IPPortFromDict = GetIPPortFromDict(a4, @"GKSRelayPeerRelayNatIP", @"GKSRelayPeerRelayNatPort", &v34);
  if ((IPPortFromDict & 0x80000000) == 0)
  {
    DWORD1(v35) = bswap32(DWORD1(v35));
    *&v33[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v32 = v12;
    *v33 = v12;
    v31 = v12;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315906;
        v24 = v13;
        v25 = 2080;
        v26 = "MakeChannelBindRequest";
        v27 = 1024;
        v28 = 160;
        v29 = 2080;
        v30 = IPPORTToStringWithSize(&v31, &v34, 0x36uLL);
        _os_log_impl(&dword_23D497000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Dictionary Peer [%s]", &v23, 0x26u);
      }
    }

    a1[30] = DWORD1(v35);
    v15 = WORD2(v36[0]);
LABEL_14:
    *(a1 + 68) = v15;
    v19 = 0;
    a1[36] = 1310728;
    a1[38] = 20;
    v20 = 3;
    goto LABEL_15;
  }

  if (a3)
  {
    *&v33[14] = 0xAAAAAAAAAAAAAAAALL;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v32 = v16;
    *v33 = v16;
    v31 = v16;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315906;
        v24 = v17;
        v25 = 2080;
        v26 = "MakeChannelBindRequest";
        v27 = 1024;
        v28 = 166;
        v29 = 2080;
        v30 = IPPORTToStringWithSize(&v31, a3, 0x36uLL);
        _os_log_impl(&dword_23D497000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Parameter Peer [%s]", &v23, 0x26u);
      }
    }

    a1[30] = *(a3 + 20);
    v15 = *(a3 + 36);
    goto LABEL_14;
  }

  v19 = IPPortFromDict;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      MakeChannelBindRequest_cold_1();
    }
  }

  v20 = 1;
LABEL_15:
  a1[7] = v20;
  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t MakeRefreshRequest(_DWORD *a1, int a2)
{
  bzero(a1, 0x480uLL);
  *a1 = 0x40000;
  *(a1 + 3) = 1;
  a1[2] = 554869826;
  STUNGetTransID((a1 + 3), 4u, 0);
  a1[10] = a2;
  *(a1 + 7) = 0x4000D00000001;
  return 0;
}

uint64_t RelayRefreshProc(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v141[145] = *MEMORY[0x277D85DE8];
  v118 = 0;
  bzero(v122, 0x5C0uLL);
  bzero(v121, 0x5C0uLL);
  bzero(v120, 0x5C0uLL);
  v2 = micro();
  v116 = 0;
  pthread_setname_np("com.apple.avconference.relay.refreshproc");
  if (!v1)
  {
    result = 0;
    goto LABEL_141;
  }

  v3 = v1[1];
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    result = -2146107390;
    goto LABEL_141;
  }

  v5 = v4;
  v128 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v126 = v6;
  v127 = v6;
  v123 = v6;
  v124 = v6;
  v125 = 0xAAAAAAAAAAAAAAAALL;
  v117 = -1;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v8 = MEMORY[0x277CE5818];
  if (ErrorLogLevelForModule >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *v8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v1 + 66);
      v12 = *(v1 + 9);
      v13 = *(v1 + 312);
      LODWORD(v141[0]) = 136316418;
      *(v141 + 4) = v9;
      WORD2(v141[1]) = 2080;
      *(&v141[1] + 6) = "RelayRefreshProc";
      HIWORD(v141[2]) = 1024;
      LODWORD(v141[3]) = 365;
      WORD2(v141[3]) = 1024;
      *(&v141[3] + 6) = v11;
      WORD1(v141[4]) = 1024;
      HIDWORD(v141[4]) = v12;
      LOWORD(v141[5]) = 1024;
      *(&v141[5] + 2) = v13;
      _os_log_impl(&dword_23D497000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RelayRefreshProc thread with pRB(%04X) started, call(%d), refresh(%04X).", v141, 0x2Eu);
    }
  }

  v14 = 0;
  v15 = 0;
  v16 = (v1[39] & 1) == 0;
  v17 = ((*(v1 + 78) >> 1) & 1) == 0;
  v18 = (v1 + 33);
  v19 = 0.0;
  v20 = 1472;
  v21 = 0.0;
  v22 = 1472;
LABEL_7:
  v24 = v16 && v17;
  v112 = v24;
  while (1)
  {
    v25 = micro();
    if (*(v5 + 448) || !*(v1 + 16))
    {
      goto LABEL_132;
    }

    v26 = v25;
    pthread_mutex_lock((v5 + 568));
    v27 = *(v5 + 632);
    if (!v27)
    {
LABEL_121:
      pthread_mutex_unlock((v5 + 568));
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_132;
      }

      v79 = VRTraceErrorLogLevelToCSTR();
      v80 = MEMORY[0x277CE5818];
      v81 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_133;
      }

      LODWORD(v141[0]) = 136315650;
      *(v141 + 4) = v79;
      WORD2(v141[1]) = 2080;
      *(&v141[1] + 6) = "RelayRefreshProc";
      HIWORD(v141[2]) = 1024;
      LODWORD(v141[3]) = 396;
      v82 = " [%s] %s:%d RelayRefreshProc: Already discarded";
      v83 = v141;
LABEL_124:
      _os_log_impl(&dword_23D497000, v81, OS_LOG_TYPE_DEFAULT, v82, v83, 0x1Cu);
      goto LABEL_133;
    }

    while (*(v27 + 36) != *(v1 + 9) || *(v27 + 264) != *v18)
    {
      v27 = *(v27 + 328);
      if (!v27)
      {
        goto LABEL_121;
      }
    }

    pthread_mutex_unlock((v5 + 568));
    if (v112)
    {
      *(v1 + 31) = v26;
      goto LABEL_132;
    }

    if (!v16 && v21 < v26)
    {
      v131 = v20;
      v28 = v20;
      if (v20 != 1472)
      {
LABEL_31:
        v34 = (v1[40])(*v1, *(v1 + 9), v122, v28, v1 + 124, v1 + 164, 0, 0);
        if ((v34 & 0x80000000) == 0)
        {
          *&v130[46] = 0xAAAAAAAAAAAAAAAALL;
          *&v35 = 0xAAAAAAAAAAAAAAAALL;
          *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v130[16] = v35;
          *&v130[32] = v35;
          *v130 = v35;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v36 = VRTraceErrorLogLevelToCSTR();
            v37 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v38 = IPPORTToStringWithSize(v130, v1 + 164, 0x36uLL);
              LODWORD(v141[0]) = 136315906;
              *(v141 + 4) = v36;
              WORD2(v141[1]) = 2080;
              *(&v141[1] + 6) = "RefreshAllocation";
              HIWORD(v141[2]) = 1024;
              LODWORD(v141[3]) = 263;
              WORD2(v141[3]) = 2080;
              *(&v141[3] + 6) = v38;
              _os_log_impl(&dword_23D497000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Send REFRESH_REQUEST to [%s].", v141, 0x26u);
            }
          }

          goto LABEL_48;
        }

        v39 = v34;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v107 = VRTraceErrorLogLevelToCSTR();
          v40 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            LODWORD(v141[0]) = 136316162;
            *(v141 + 4) = v107;
            WORD2(v141[1]) = 2080;
            *(&v141[1] + 6) = "RefreshAllocation";
            HIWORD(v141[2]) = 1024;
            LODWORD(v141[3]) = 257;
            WORD2(v141[3]) = 1024;
            *(&v141[3] + 6) = 257;
            WORD1(v141[4]) = 1024;
            HIDWORD(v141[4]) = v39;
            _os_log_error_impl(&dword_23D497000, v40, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: UDPSENDCALLBACK failed (%08X)", v141, 0x28u);
          }
        }

LABEL_47:
        if (v39 != -1072037876)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v108 = VRTraceErrorLogLevelToCSTR();
            v49 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v141[0]) = 136316162;
              *(v141 + 4) = v108;
              WORD2(v141[1]) = 2080;
              *(&v141[1] + 6) = "RelayRefreshProc";
              HIWORD(v141[2]) = 1024;
              LODWORD(v141[3]) = 408;
              WORD2(v141[3]) = 1024;
              *(&v141[3] + 6) = 408;
              WORD1(v141[4]) = 1024;
              HIDWORD(v141[4]) = v39;
              _os_log_error_impl(&dword_23D497000, v49, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: RefreshAllocation failed (%08X)", v141, 0x28u);
            }
          }

          v14 = 1;
          goto LABEL_53;
        }

LABEL_48:
        v14 = 8;
LABEL_53:
        RecordRelayDetailedCode(v5, *(v1 + 9), v14);
        v21 = v26 + 0.5;
        goto LABEL_54;
      }

      bzero(v141, 0x480uLL);
      v29 = *(v1 + 16);
      if (v29 == 1)
      {
        WORD1(v141[0]) = 4;
        HIWORD(v141[0]) = 1;
        LODWORD(v141[1]) = 554869826;
        STUNGetTransID(&v141[1] + 4, 4u, 0);
        LODWORD(v141[5]) = 60;
        *(&v141[3] + 4) = 0x4000D00000001;
      }

      else
      {
        Request = MakeAllocateRequest(v141, v29, 60, v1 + 164, v1 + 57, 0);
        if (Request < 0)
        {
          v39 = Request;
          FreeSTUNMessage(v141);
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_46;
          }

          v47 = VRTraceErrorLogLevelToCSTR();
          v48 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_46;
          }

          *v129 = 136316162;
          *&v129[4] = v47;
          *&v129[12] = 2080;
          *&v129[14] = "RefreshAllocation";
          *&v129[22] = 1024;
          *&v129[24] = 230;
          *&v129[28] = 1024;
          *&v129[30] = 230;
          *&v129[34] = 1024;
          *&v129[36] = v39;
          v43 = v48;
          v44 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: MakeAllocateRequest failed (%08X)";
          goto LABEL_92;
        }
      }

      v32 = STUNEncodeMessage(v141, v122, &v131, 0, v30);
      if (v32 < 0)
      {
        v39 = v32;
        FreeSTUNMessage(v141);
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_46;
        }

        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        *v129 = 136316162;
        *&v129[4] = v41;
        *&v129[12] = 2080;
        *&v129[14] = "RefreshAllocation";
        *&v129[22] = 1024;
        *&v129[24] = 238;
        *&v129[28] = 1024;
        *&v129[30] = 238;
        *&v129[34] = 1024;
        *&v129[36] = v39;
        v43 = v42;
        v44 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: STUNEncodeMessage failed (%08X)";
      }

      else
      {
        v33 = SaveSTUNRequest(&v118, v122, v131, v1 + 124, (v1 + 164), 1);
        if ((v33 & 0x80000000) == 0)
        {
          v20 = v131;
          FreeSTUNMessage(v141);
          v28 = v131;
          goto LABEL_31;
        }

        v39 = v33;
        FreeSTUNMessage(v141);
        if (VRTraceGetErrorLogLevelForModule() < 3 || (v45 = VRTraceErrorLogLevelToCSTR(), v46 = *MEMORY[0x277CE5818], !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
        {
LABEL_46:
          v20 = 1472;
          goto LABEL_47;
        }

        *v129 = 136316162;
        *&v129[4] = v45;
        *&v129[12] = 2080;
        *&v129[14] = "RefreshAllocation";
        *&v129[22] = 1024;
        *&v129[24] = 246;
        *&v129[28] = 1024;
        *&v129[30] = 246;
        *&v129[34] = 1024;
        *&v129[36] = v39;
        v43 = v46;
        v44 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: SaveSTUNRequest failed (%08X)";
      }

LABEL_92:
      _os_log_error_impl(&dword_23D497000, v43, OS_LOG_TYPE_ERROR, v44, v129, 0x28u);
      goto LABEL_46;
    }

LABEL_54:
    if (!v17 && v19 < v26)
    {
      v50 = v1[32];
      v119 = v22;
      v51 = v22;
      if (v22 != 1472)
      {
LABEL_61:
        v56 = (v1[40])(*v1, *(v1 + 9), v121, v51, v1 + 124, v1 + 164, 0, 0);
        if ((v56 & 0x80000000) == 0)
        {
          *&v130[46] = 0xAAAAAAAAAAAAAAAALL;
          *&v57 = 0xAAAAAAAAAAAAAAAALL;
          *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v130[16] = v57;
          *&v130[32] = v57;
          *v130 = v57;
          *v129 = v57;
          *&v129[16] = v57;
          *&v129[32] = v57;
          *&v129[46] = 0xAAAAAAAAAAAAAAAALL;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v58 = VRTraceErrorLogLevelToCSTR();
            v59 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v109 = IPPORTToStringWithSize(v129, (v1 + 34), 0x36uLL);
              v60 = IPPORTToStringWithSize(v130, v1 + 164, 0x36uLL);
              LODWORD(v141[0]) = 136316162;
              *(v141 + 4) = v58;
              WORD2(v141[1]) = 2080;
              *(&v141[1] + 6) = "RefreshChannelBind";
              HIWORD(v141[2]) = 1024;
              LODWORD(v141[3]) = 316;
              WORD2(v141[3]) = 2080;
              *(&v141[3] + 6) = v109;
              HIWORD(v141[4]) = 2080;
              v141[5] = v60;
              _os_log_impl(&dword_23D497000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Send CHANNELBIND_REQUEST [%s] to [%s].", v141, 0x30u);
            }
          }

          goto LABEL_80;
        }

        v61 = v56;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v110 = VRTraceErrorLogLevelToCSTR();
          v62 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            LODWORD(v141[0]) = 136316162;
            *(v141 + 4) = v110;
            WORD2(v141[1]) = 2080;
            *(&v141[1] + 6) = "RefreshChannelBind";
            HIWORD(v141[2]) = 1024;
            LODWORD(v141[3]) = 306;
            WORD2(v141[3]) = 1024;
            *(&v141[3] + 6) = 306;
            WORD1(v141[4]) = 1024;
            HIDWORD(v141[4]) = v61;
            _os_log_error_impl(&dword_23D497000, v62, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: UDPSENDCALLBACK failed (%08X)", v141, 0x28u);
          }
        }

LABEL_79:
        if (v61 != -1072037876)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v111 = VRTraceErrorLogLevelToCSTR();
            v71 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              LODWORD(v141[0]) = 136316162;
              *(v141 + 4) = v111;
              WORD2(v141[1]) = 2080;
              *(&v141[1] + 6) = "RelayRefreshProc";
              HIWORD(v141[2]) = 1024;
              LODWORD(v141[3]) = 422;
              WORD2(v141[3]) = 1024;
              *(&v141[3] + 6) = 422;
              WORD1(v141[4]) = 1024;
              HIDWORD(v141[4]) = v61;
              _os_log_error_impl(&dword_23D497000, v71, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: RefreshChannelBind failed (%08X)", v141, 0x28u);
            }
          }

          v14 = 2;
          goto LABEL_85;
        }

LABEL_80:
        v14 = 9;
LABEL_85:
        RecordRelayDetailedCode(v5, *(v1 + 9), v14);
        v19 = v26 + 0.5;
        goto LABEL_86;
      }

      bzero(v141, 0x480uLL);
      ChannelBindRequest = MakeChannelBindRequest(v141, *v18, (v1 + 34), v50);
      if (ChannelBindRequest < 0)
      {
        v61 = ChannelBindRequest;
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_78;
        }

        v63 = VRTraceErrorLogLevelToCSTR();
        v64 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_78;
        }

        v131 = 136316162;
        v132 = v63;
        v133 = 2080;
        v134 = "RefreshChannelBind";
        v135 = 1024;
        v136 = 281;
        v137 = 1024;
        v138 = 281;
        v139 = 1024;
        v140 = v61;
        v65 = v64;
        v66 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: MakeChannelBindRequest failed (%08X)";
      }

      else
      {
        v54 = STUNEncodeMessage(v141, v121, &v119, v50, v53);
        if (v54 < 0)
        {
          v61 = v54;
          FreeSTUNMessage(v141);
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_78;
          }

          v67 = VRTraceErrorLogLevelToCSTR();
          v68 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_78;
          }

          v131 = 136316162;
          v132 = v67;
          v133 = 2080;
          v134 = "RefreshChannelBind";
          v135 = 1024;
          v136 = 288;
          v137 = 1024;
          v138 = 288;
          v139 = 1024;
          v140 = v61;
          v65 = v68;
          v66 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: STUNEncodeMessage failed (%08X)";
        }

        else
        {
          v55 = SaveSTUNRequest(&v118, v121, v119, v1 + 124, (v1 + 164), 1);
          if ((v55 & 0x80000000) == 0)
          {
            v22 = v119;
            FreeSTUNMessage(v141);
            v51 = v119;
            goto LABEL_61;
          }

          v61 = v55;
          if (VRTraceGetErrorLogLevelForModule() < 3 || (v69 = VRTraceErrorLogLevelToCSTR(), v70 = *MEMORY[0x277CE5818], !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
          {
LABEL_78:
            v22 = 1472;
            goto LABEL_79;
          }

          v131 = 136316162;
          v132 = v69;
          v133 = 2080;
          v134 = "RefreshChannelBind";
          v135 = 1024;
          v136 = 295;
          v137 = 1024;
          v138 = 295;
          v139 = 1024;
          v140 = v61;
          v65 = v70;
          v66 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: SaveSTUNRequest failed (%08X)";
        }
      }

      _os_log_error_impl(&dword_23D497000, v65, OS_LOG_TYPE_ERROR, v66, &v131, 0x28u);
      goto LABEL_78;
    }

LABEL_86:
    v128 = 0;
    v126 = 0u;
    v127 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0;
    v72 = ICERecvUDPPacketWithTimeout(v5, v118, *(v1 + 9), v120, &v116, &v126, &v123, &v117, 500);
    if ((v72 & 0x80000000) == 0)
    {
      memset(v141, 170, 0x480uLL);
      v15 = ParseSTUNMessage(v120, v116, v141);
      if ((v15 & 0x80000000) == 0)
      {
        if (LOWORD(v141[0]) != 272)
        {
          if (LOWORD(v141[0]) == 256)
          {
            if (WORD1(v141[0]) == 9)
            {
              if (v14 == 5)
              {
                v14 = 7;
              }

              else
              {
                v14 = 6;
              }

              RecordRelayDetailedCode(v5, *(v1 + 9), v14);
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v115 = VRTraceErrorLogLevelToCSTR();
                v76 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v77 = *v18;
                  *v130 = 136315906;
                  *&v130[4] = v115;
                  *&v130[12] = 2080;
                  *&v130[14] = "RelayRefreshProc";
                  *&v130[22] = 1024;
                  *&v130[24] = 491;
                  *&v130[28] = 1024;
                  *&v130[30] = v77;
                  _os_log_impl(&dword_23D497000, v76, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received CHANNELBIND_RESPONSE for %04X, channelbind refresh done!\n", v130, 0x22u);
                }
              }

              v17 = 1;
            }

            else if (WORD1(v141[0]) == 4)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v113 = VRTraceErrorLogLevelToCSTR();
                v73 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v74 = *v18;
                  *v130 = 136315906;
                  *&v130[4] = v113;
                  *&v130[12] = 2080;
                  *&v130[14] = "RelayRefreshProc";
                  *&v130[22] = 1024;
                  *&v130[24] = 473;
                  *&v130[28] = 1024;
                  *&v130[30] = v74;
                  _os_log_impl(&dword_23D497000, v73, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received REFRESH_RESPONSE for %04X, allocation refresh done!\n", v130, 0x22u);
                }
              }

              if (v14 == 6)
              {
                v14 = 7;
              }

              else
              {
                v14 = 5;
              }

              RecordRelayDetailedCode(v5, *(v1 + 9), v14);
              v16 = 1;
            }
          }

          goto LABEL_119;
        }

        if (WORD1(v141[0]) == 9)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v100 = VRTraceErrorLogLevelToCSTR();
            v101 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              v106 = *v18;
              *v130 = 136316162;
              *&v130[4] = v100;
              *&v130[12] = 2080;
              *&v130[14] = "RelayRefreshProc";
              *&v130[22] = 1024;
              *&v130[24] = 514;
              *&v130[28] = 1024;
              *&v130[30] = 514;
              *&v130[34] = 1024;
              *&v130[36] = v106;
              _os_log_error_impl(&dword_23D497000, v101, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: Received CHANNEL_BIND_ERROR_RESPONSE! Tear down channel#[%04X]", v130, 0x28u);
            }
          }

          v98 = 12;
          v99 = 11;
        }

        else
        {
          if (WORD1(v141[0]) != 4)
          {
LABEL_119:
            FreeSTUNMessage(v141);
            goto LABEL_7;
          }

          v95 = VRTraceGetErrorLogLevelForModule();
          if (v95 >= 3)
          {
            v96 = VRTraceErrorLogLevelToCSTR();
            v97 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              v105 = *v18;
              *v130 = 136316162;
              *&v130[4] = v96;
              *&v130[12] = 2080;
              *&v130[14] = "RelayRefreshProc";
              *&v130[22] = 1024;
              *&v130[24] = 502;
              *&v130[28] = 1024;
              *&v130[30] = 502;
              *&v130[34] = 1024;
              *&v130[36] = v105;
              _os_log_error_impl(&dword_23D497000, v97, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: Received REFRESH_ERROR_RESPONSE! Tear down channel#[%04X]", v130, 0x28u);
            }
          }

          v98 = 11;
          v99 = 12;
        }

        if (v14 == v99)
        {
          v102 = 13;
        }

        else
        {
          v102 = v98;
        }

        RecordRelayDetailedCode(v5, *(v1 + 9), v102);
        DiscardOneRelayBindingWithChannelNumber(v5, *(v1 + 9), *(v1 + 66));
        FreeSTUNMessage(v141);
        v103 = VRTraceGetErrorLogLevelForModule();
        v80 = MEMORY[0x277CE5818];
        if (v103 <= 6)
        {
          goto LABEL_133;
        }

        v104 = VRTraceErrorLogLevelToCSTR();
        v81 = *v80;
        if (!os_log_type_enabled(*v80, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_133;
        }

        *v130 = 136315650;
        *&v130[4] = v104;
        *&v130[12] = 2080;
        *&v130[14] = "RelayRefreshProc";
        *&v130[22] = 1024;
        *&v130[24] = 536;
        v82 = " [%s] %s:%d RelayRefreshProc ended with error response from the relay server";
        v83 = v130;
        goto LABEL_124;
      }

      v14 = 4;
      RecordRelayDetailedCode(v5, *(v1 + 9), 4);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v114 = VRTraceErrorLogLevelToCSTR();
        v75 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *v130 = 136315906;
          *&v130[4] = v114;
          *&v130[12] = 2080;
          *&v130[14] = "RelayRefreshProc";
          *&v130[22] = 1024;
          *&v130[24] = 463;
          *&v130[28] = 1024;
          *&v130[30] = 463;
          _os_log_error_impl(&dword_23D497000, v75, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: RelayRefreshProc: Parse STUN message error", v130, 0x22u);
        }

        v14 = 4;
      }

      goto LABEL_7;
    }

    v15 = v72;
    if (v72 > 0x1Eu || ((1 << v72) & 0x40801000) == 0)
    {
      break;
    }

    if ((v26 - v2) >= 10)
    {
      RecordRelayDetailedCode(v5, *(v1 + 9), 10);
      v84 = VRTraceGetErrorLogLevelForModule();
      v80 = MEMORY[0x277CE5818];
      if (v84 >= 3)
      {
        v85 = VRTraceErrorLogLevelToCSTR();
        v86 = *v80;
        if (os_log_type_enabled(*v80, OS_LOG_TYPE_ERROR))
        {
          RelayRefreshProc_cold_1(v85, v1 + 66, v86);
        }
      }

      ICERemoveOneRelayBeat(v5, v1);
      v15 = -2146107369;
      goto LABEL_133;
    }
  }

  RecordRelayDetailedCode(v5, *(v1 + 9), 14);
LABEL_132:
  v80 = MEMORY[0x277CE5818];
LABEL_133:
  v87 = v118;
  if (v118)
  {
    do
    {
      v88 = v87[198];
      free(v87);
      v118 = v88;
      v87 = v88;
    }

    while (v88);
  }

  v118 = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v89 = VRTraceErrorLogLevelToCSTR();
    v90 = *v80;
    if (os_log_type_enabled(*v80, OS_LOG_TYPE_DEFAULT))
    {
      v91 = *v18;
      LODWORD(v141[0]) = 136316162;
      *(v141 + 4) = v89;
      WORD2(v141[1]) = 2080;
      *(&v141[1] + 6) = "RelayRefreshProc";
      HIWORD(v141[2]) = 1024;
      LODWORD(v141[3]) = 549;
      WORD2(v141[3]) = 1024;
      *(&v141[3] + 6) = v91;
      WORD1(v141[4]) = 1024;
      HIDWORD(v141[4]) = v15;
      _os_log_impl(&dword_23D497000, v90, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RelayRefreshProc thread with pRB(%04X) ended(%08X).", v141, 0x28u);
    }
  }

  v92 = v1[1];
  CheckOutHandleDebug();
  v93 = v1[32];
  if (v93)
  {
    CFRelease(v93);
  }

  free(v1);
  result = v15;
LABEL_141:
  v94 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RecordRelayDetailedCode(uint64_t a1, int a2, int a3)
{
  pthread_mutex_lock((a1 + 568));
  v6 = *(a1 + 632);
  if (v6)
  {
    while (*(v6 + 36) != a2)
    {
      v6 = *(v6 + 328);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    *(v6 + 268) = a3;
  }

LABEL_6:

  return pthread_mutex_unlock((a1 + 568));
}

uint64_t RelayDiscardProc(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v76 = *MEMORY[0x277D85DE8];
  v57 = 0;
  bzero(v60, 0x5C0uLL);
  bzero(v59, 0x5C0uLL);
  v2 = micro();
  pthread_setname_np("com.apple.avconference.relay.discardproc");
  v3 = *(v1 + 1);
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    result = -2146107390;
    goto LABEL_19;
  }

  v5 = v4;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v64 = v6;
  v65 = v6;
  v61 = v6;
  v62 = v6;
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v56 = -1;
  v55 = -1431655766;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v1 + 3);
      *buf = 136315906;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = "RelayDiscardProc";
      *&buf[22] = 1024;
      *&buf[24] = 638;
      *&buf[28] = 2048;
      *&buf[30] = v9;
      _os_log_impl(&dword_23D497000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RelayDiscardProc thread(%p) started.", buf, 0x26u);
    }
  }

  v10 = micro();
  if (!*(v5 + 448))
  {
    v23 = v10;
    v11 = 0;
    v24 = 0.0;
    v25 = 1472;
    while (1)
    {
      if (*(v1 + 16) != 1)
      {
        goto LABEL_7;
      }

      if (v24 < v23)
      {
        break;
      }

LABEL_45:
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0;
      v46 = ICERecvUDPPacketWithTimeout(v5, v57, v1[9], v59, &v55, &v64, &v61, &v56, ((v24 - v23) * 1000.0));
      if (v46 < 0)
      {
        v11 = v46;
        if (v46 > 0x1Eu || ((1 << v46) & 0x40801000) == 0)
        {
          goto LABEL_7;
        }

        if ((micro() - v2) >= 10)
        {
          v11 = -2146107369;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              RelayDiscardProc_cold_1();
            }
          }

          goto LABEL_7;
        }
      }

      else
      {
        memset(buf, 170, 0x480uLL);
        v11 = ParseSTUNMessage(v59, v55, buf);
        if ((v11 & 0x80000000) == 0)
        {
          if (*buf == 272)
          {
            if (*&buf[2] == 4 && VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v53 = VRTraceErrorLogLevelToCSTR();
              v54 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
              {
                *v67 = 136315906;
                v68 = v53;
                v69 = 2080;
                v70 = "RelayDiscardProc";
                v71 = 1024;
                v72 = 710;
                v73 = 1024;
                *v74 = 710;
                _os_log_error_impl(&dword_23D497000, v54, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: Received REFRESH_ERROR_RESPONSE!", v67, 0x22u);
              }
            }
          }

          else if (*buf == 256 && *&buf[2] == 4)
          {
            STUNAttr = GetSTUNAttr(buf, 13);
            if (STUNAttr)
            {
              if (!*(STUNAttr + 2))
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v48 = VRTraceErrorLogLevelToCSTR();
                  v49 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    *v67 = 136315650;
                    v68 = v48;
                    v69 = 2080;
                    v70 = "RelayDiscardProc";
                    v71 = 1024;
                    v72 = 697;
                    _os_log_impl(&dword_23D497000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Received REFRESH_RESPONSE, allocation discarded!\n", v67, 0x1Cu);
                  }
                }

                v50 = 0;
LABEL_67:
                FreeSTUNMessage(buf);
                v52 = micro();
                if ((v50 & 1) == 0)
                {
                  goto LABEL_7;
                }

                goto LABEL_68;
              }
            }
          }

          v50 = 1;
          goto LABEL_67;
        }
      }

      v52 = micro();
LABEL_68:
      v23 = v52;
      if (*(v5 + 448))
      {
        goto LABEL_7;
      }
    }

    v58 = v25;
    if (v25 != 1472)
    {
      goto LABEL_27;
    }

    bzero(buf, 0x480uLL);
    *&buf[2] = 4;
    *&buf[6] = 1;
    *&buf[8] = 554869826;
    STUNGetTransID(&buf[12], 4u, 0);
    *&buf[40] = 0;
    *&buf[28] = 0x4000D00000001;
    v27 = STUNEncodeMessage(buf, v60, &v58, 0, v26);
    if (v27 < 0)
    {
      v35 = v27;
      FreeSTUNMessage(buf);
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_40;
      }

      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_40;
      }

      *v67 = 136316162;
      v68 = v36;
      v69 = 2080;
      v70 = "DiscardAllocation";
      v71 = 1024;
      v72 = 583;
      v73 = 1024;
      *v74 = 583;
      *&v74[4] = 1024;
      *&v74[6] = v35;
      v38 = v37;
      v39 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: STUNEncodeMessage failed (%08X)";
    }

    else
    {
      v28 = SaveSTUNRequest(&v57, v60, v58, (v1 + 31), (v1 + 41), 1);
      if ((v28 & 0x80000000) == 0)
      {
        v25 = v58;
        FreeSTUNMessage(buf);
LABEL_27:
        v29 = *(v1 + 40);
        if (!v29)
        {
LABEL_44:
          v24 = v23 + 1.0;
          goto LABEL_45;
        }

        v30 = v29(*v1, v1[9], v60, v58, v1 + 31, v1 + 41, 0, 0);
        if ((v30 & 0x80000000) == 0)
        {
          *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
          *&v31 = 0xAAAAAAAAAAAAAAAALL;
          *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&buf[16] = v31;
          *&buf[32] = v31;
          *buf = v31;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v32 = VRTraceErrorLogLevelToCSTR();
            v33 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v34 = IPPORTToStringWithSize(buf, (v1 + 41), 0x36uLL);
              *v67 = 136315906;
              v68 = v32;
              v69 = 2080;
              v70 = "DiscardAllocation";
              v71 = 1024;
              v72 = 607;
              v73 = 2080;
              *v74 = v34;
              _os_log_impl(&dword_23D497000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Send REFRESH_REQUEST with LT 0 to [%s].", v67, 0x26u);
            }
          }

          goto LABEL_44;
        }

        v35 = v30;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v40 = VRTraceErrorLogLevelToCSTR();
          v41 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = v40;
            *&buf[12] = 2080;
            *&buf[14] = "DiscardAllocation";
            *&buf[22] = 1024;
            *&buf[24] = 601;
            *&buf[28] = 1024;
            *&buf[30] = 601;
            *&buf[34] = 1024;
            *&buf[36] = v35;
            _os_log_error_impl(&dword_23D497000, v41, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: UDPSENDCALLBACK failed (%08X)", buf, 0x28u);
          }
        }

LABEL_41:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v44 = VRTraceErrorLogLevelToCSTR();
          v45 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = v44;
            *&buf[12] = 2080;
            *&buf[14] = "RelayDiscardProc";
            *&buf[22] = 1024;
            *&buf[24] = 656;
            *&buf[28] = 1024;
            *&buf[30] = 656;
            *&buf[34] = 1024;
            *&buf[36] = v35;
            _os_log_error_impl(&dword_23D497000, v45, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: DiscardAllocation failed (%08X)", buf, 0x28u);
          }
        }

        goto LABEL_44;
      }

      v35 = v28;
      if (VRTraceGetErrorLogLevelForModule() < 3 || (v42 = VRTraceErrorLogLevelToCSTR(), v43 = *MEMORY[0x277CE5818], !os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
      {
LABEL_40:
        v25 = 1472;
        goto LABEL_41;
      }

      *v67 = 136316162;
      v68 = v42;
      v69 = 2080;
      v70 = "DiscardAllocation";
      v71 = 1024;
      v72 = 590;
      v73 = 1024;
      *v74 = 590;
      *&v74[4] = 1024;
      *&v74[6] = v35;
      v38 = v43;
      v39 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: SaveSTUNRequest failed (%08X)";
    }

    _os_log_error_impl(&dword_23D497000, v38, OS_LOG_TYPE_ERROR, v39, v67, 0x28u);
    goto LABEL_40;
  }

  v11 = 0;
LABEL_7:
  v12 = v57;
  if (v57)
  {
    do
    {
      v13 = v12[198];
      free(v12);
      v57 = v13;
      v12 = v13;
    }

    while (v13);
  }

  v57 = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v16 = v1[66];
      *buf = 136315906;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = "RelayDiscardProc";
      *&buf[22] = 1024;
      *&buf[24] = 732;
      *&buf[28] = 1024;
      *&buf[30] = v16;
      _os_log_impl(&dword_23D497000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Relay channel [%04X] torn down", buf, 0x22u);
    }
  }

  v17 = *(v1 + 32);
  if (v17)
  {
    CFRelease(v17);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(v1 + 3);
      *buf = 136316162;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = "RelayDiscardProc";
      *&buf[22] = 1024;
      *&buf[24] = 736;
      *&buf[28] = 2048;
      *&buf[30] = v20;
      *&buf[38] = 1024;
      *&buf[40] = v11;
      _os_log_impl(&dword_23D497000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RelayDiscardProc thread(%p) ended(%08X).", buf, 0x2Cu);
    }
  }

  free(v1);
  CheckOutHandleDebug();
  result = v11;
LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ProcessAllocateResponse(uint64_t a1, int a2, _DWORD *a3, uint64_t a4, uint64_t a5, __CFDictionary *a6, int a7)
{
  v44 = *MEMORY[0x277D85DE8];
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a5 + 32) = 0;
  v13 = 2148859938;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  STUNAttr = GetSTUNAttr(a1, 13);
  v15 = 2148859938;
  if (STUNAttr)
  {
    v15 = 0;
    *a3 = *(STUNAttr + 2);
  }

  if (a2 == 1)
  {
    v16 = GetSTUNAttr(a1, 32);
    if (v16)
    {
      v17 = *(v16 + 6);
      v18 = *(v16 + 14);
      *(a4 + 32) = *(v16 + 22);
      *a4 = v17;
      *(a4 + 16) = v18;
      *&v43[14] = 0xAAAAAAAAAAAAAAAALL;
      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42[1] = v17;
      *v43 = v17;
      v42[0] = v17;
      valuePtr = *(a4 + 36);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v35 = v19;
          v36 = 2080;
          v37 = "ProcessAllocateResponse";
          v38 = 1024;
          v39 = 779;
          v40 = 2080;
          v41 = IPPORTToStringWithSize(v42, a4, 0x36uLL);
          _os_log_impl(&dword_23D497000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ProcessAllocateResponse: external addr [%s]", buf, 0x26u);
        }
      }

      if (!a7)
      {
        goto LABEL_18;
      }

      v21 = CFDataCreate(0, (a4 + 20), 4);
      if (v21)
      {
        v22 = v21;
        CFDictionarySetValue(a6, @"GKSRelaySelfRelayNatIP", v21);
        CFRelease(v22);
      }

      v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v23)
      {
        v24 = v23;
        CFDictionarySetValue(a6, @"GKSRelaySelfRelayNatPort", v23);
        CFRelease(v24);
      }

      v25 = GetSTUNAttr(a1, 8);
      if (v25)
      {
        v26 = CFDataCreate(0, *(v25 + 2), *(v25 + 2));
        if (v26)
        {
          v27 = v26;
          CFDictionarySetValue(a6, @"GKRelayToken", v26);
          CFRelease(v27);
        }

        goto LABEL_18;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          ProcessAllocateResponse_cold_1();
        }
      }

      v13 = 0;
    }
  }

  else
  {
    v28 = GetSTUNAttr(a1, 1);
    if (v28)
    {
      v29 = *(v28 + 6);
      v30 = *(v28 + 14);
      *(a4 + 32) = *(v28 + 22);
      *a4 = v29;
      *(a4 + 16) = v30;
LABEL_18:
      v13 = v15;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t ProcessSendResponse(uint64_t a1)
{
  v2 = 2148859938;
  if (GetSTUNAttr(a1, 15))
  {
    if (GetSTUNAttr(a1, 8))
    {
      return 0;
    }

    else
    {
      return 2148859938;
    }
  }

  return v2;
}

uint64_t ProcessSetActiveDstResponse(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = 2148859938;
  if (GetSTUNAttr(a1, 15) && GetSTUNAttr(a1, 8))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v3;
        v9 = 2080;
        v10 = "ProcessSetActiveDstResponse";
        v11 = 1024;
        v12 = 861;
        _os_log_impl(&dword_23D497000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** SET_ACTIVE_DESTINATION_RESPONSE", &v7, 0x1Cu);
      }
    }

    v2 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t ProcessCreatePermissionResponse()
{
  v10 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v0;
      v6 = 2080;
      v7 = "ProcessCreatePermissionResponse";
      v8 = 1024;
      v9 = 868;
      _os_log_impl(&dword_23D497000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** CREATE_PERMISSION_RESPONSE", &v4, 0x1Cu);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ProcessAllocateErrorResponse(uint64_t a1, _WORD *a2)
{
  v3 = ProcessErrorResponse(a1, a2);
  if (*a2 == 437 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      ProcessAllocateErrorResponse_cold_1();
    }
  }

  return v3;
}

uint64_t ProcessErrorResponse(uint64_t a1, _WORD *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  STUNAttr = GetSTUNAttr(a1, 9);
  if (STUNAttr)
  {
    v4 = STUNAttr;
    v5 = *(STUNAttr + 9) + 100 * *(STUNAttr + 8);
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v8 = " - may happen during relay teardown";
        v9 = *(v4 + 2);
        if (v5 != 437)
        {
          v8 = &unk_23D4C9CFB;
        }

        v12 = 136316674;
        v13 = v6;
        v14 = 2080;
        v15 = "ProcessErrorResponse";
        v16 = 1024;
        v17 = 889;
        v18 = 1024;
        v19 = 889;
        v20 = 1024;
        v21 = v5;
        v22 = 2080;
        v23 = v9;
        v24 = 2080;
        v25 = v8;
        _os_log_impl(&dword_23D497000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: Error (%d): %s%s", &v12, 0x3Cu);
      }
    }

    result = 0;
    *a2 = v5;
  }

  else
  {
    result = 2148859938;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ProcessSendErrorResponse(uint64_t a1, _WORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "ProcessSendErrorResponse";
      v12 = 1024;
      v13 = 907;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** SET_SEND_ERROR_RESPONSE", &v8, 0x1Cu);
    }
  }

  result = ProcessErrorResponse(a1, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ProcessSetActiveDstErrorResponse(uint64_t a1, _WORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "ProcessSetActiveDstErrorResponse";
      v12 = 1024;
      v13 = 913;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** SET_ACTIVE_DESTINATION_ERROR_RESPONSE", &v8, 0x1Cu);
    }
  }

  result = ProcessErrorResponse(a1, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ProcessPermissionErrorResponse(uint64_t a1, _WORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "ProcessPermissionErrorResponse";
      v12 = 1024;
      v13 = 919;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** CREATE_PERMISSION_ERROR_RESPONSE", &v8, 0x1Cu);
    }
  }

  result = ProcessErrorResponse(a1, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ProcessChannelBindErrorResponse(uint64_t a1, _WORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v4;
      v10 = 2080;
      v11 = "ProcessChannelBindErrorResponse";
      v12 = 1024;
      v13 = 925;
      _os_log_impl(&dword_23D497000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ** CHANNEL_BIND_ERROR_RESPONSE", &v8, 0x1Cu);
    }
  }

  result = ProcessErrorResponse(a1, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EncodeChannelDataMessage(unsigned int a1, const void *a2, unsigned int *a3, int a4, _WORD *a5)
{
  result = 2148794369;
  if (a5)
  {
    v8 = *a3;
    if ((*a3 + 4) <= a4)
    {
      memmove(a5 + 2, a2, *a3);
      result = 0;
      *a5 = __rev16(a1);
      a5[1] = bswap32(v8) >> 16;
      *a3 += 4;
    }

    else
    {
      return 2148794371;
    }
  }

  return result;
}

double machTimeScale()
{
  if ((_MergedGlobals & 1) == 0)
  {
    machTimeScale_cold_1();
  }

  return *&qword_27E2DC7C8;
}

uint64_t GetStringForKeyFromDict(const void *a1, const void *a2, UInt8 *a3, int a4)
{
  value = 0;
  v4 = 2148859905;
  if (a1 && a3)
  {
    CFRetain(a1);
    v4 = 2148859926;
    if (CFDictionaryGetValueIfPresent(a1, a2, &value))
    {
      if (value)
      {
        Length = CFDataGetLength(value);
        v4 = 2148859905;
        if (Length == a4)
        {
          v12.length = Length;
          v12.location = 0;
          CFDataGetBytes(value, v12, a3);
          v4 = 0;
        }
      }
    }

    CFRelease(a1);
  }

  return v4;
}

uint64_t GetIPPortFromDict(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  number = 0;
  value = 0;
  v4 = 2148859905;
  if (a1 && a4)
  {
    valuePtr = -1431655766;
    CFRetain(a1);
    CFDictionaryGetValueIfPresent(a1, a2, &value);
    CFDictionaryGetValueIfPresent(a1, a3, &number);
    v4 = 2148859926;
    if (value)
    {
      if (number)
      {
        v4 = 2148859905;
        if (CFDataGetLength(value) <= 16)
        {
          *(a4 + 32) = 0;
          *a4 = 0u;
          *(a4 + 16) = 0u;
          v13.location = 0;
          v13.length = 4;
          CFDataGetBytes(value, v13, (a4 + 20));
          CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
          v4 = 0;
          *(a4 + 36) = valuePtr;
        }
      }
    }

    CFRelease(a1);
  }

  return v4;
}

uint64_t STUNEncodeAttrAddress(_WORD *a1, unint64_t a2, unsigned int a3, unsigned __int8 *a4, unint64_t *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*a4 == 1)
  {
    v6 = 12;
  }

  else
  {
    v6 = 24;
  }

  if (v6 > a2)
  {
    v8 = 2148794376;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v17 = 136316418;
        v18 = v9;
        v19 = 2080;
        v20 = "STUNEncodeAttrAddress";
        v21 = 1024;
        v22 = 45;
        v23 = 1024;
        v24 = a3;
        v25 = 2048;
        v26 = a2;
        v27 = 2048;
        v28 = v6;
        _os_log_error_impl(&dword_23D497000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is too short. type=%d, bufferLength=%zu requiredLength=%zu", &v17, 0x36u);
      }
    }

    goto LABEL_18;
  }

  *a1 = __rev16(a3);
  v11 = a1 + 1;
  v12 = *a4;
  if (v12 == 1)
  {
    v13 = 2048;
    goto LABEL_12;
  }

  if (v12 == 2)
  {
    v13 = 5120;
LABEL_12:
    a1[1] = v13;
    v11 = a1 + 2;
  }

  *v11 = 0;
  *(v11 + 1) = *a4;
  v11[1] = bswap32(*(a4 + 20)) >> 16;
  v14 = *a4;
  if (v14 == 2)
  {
    *(v11 + 2) = *(a4 + 24);
  }

  else if (v14 == 1)
  {
    *(v11 + 1) = bswap32(*(a4 + 6));
  }

  v8 = 0;
  *a5 = v6;
LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t STUNEncodeAttrMI(_WORD *a1, unint64_t a2, unsigned int *a3, void *__src, unint64_t *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = 2148794376;
  v6 = *a3 + (-*a3 & 3) + 4;
  if (v6 <= a2)
  {
    if (__src)
    {
      *a1 = 2048;
      a1[1] = bswap32(*a3) >> 16;
      memcpy(a1 + 2, __src, *a3);
      v5 = 0;
      *a5 = v6;
    }

    else
    {
      v5 = 2148794369;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = v8;
      v15 = 2080;
      v16 = "STUNEncodeAttrMI";
      v17 = 1024;
      v18 = 215;
      v19 = 2048;
      v20 = a2;
      v21 = 2048;
      v22 = v6;
      _os_log_error_impl(&dword_23D497000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is too short. bufferLength=%zu requiredLength=%zu", &v13, 0x30u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t STUNEncodeAttrU32(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2 > 7)
  {
    v7 = 0;
    *a1 = __rev16(a3);
    *(a1 + 2) = 1024;
    *(a1 + 4) = bswap32(a4);
    *a5 = 8;
  }

  else
  {
    v7 = 2148794376;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = v8;
        v14 = 2080;
        v15 = "STUNEncodeAttrU32";
        v16 = 1024;
        v17 = 302;
        v18 = 1024;
        v19 = a3;
        v20 = 2048;
        v21 = a2;
        v22 = 2048;
        v23 = 8;
        _os_log_error_impl(&dword_23D497000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is too short. type=%d, bufferLength=%zu requiredLength=%zu", &v12, 0x36u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t STUNEncodeAttr(_WORD *a1, unint64_t a2, unsigned int a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 > 3)
  {
    v6 = 0;
    *a1 = __rev16(a3);
    a1[1] = 0;
    *a4 = 4;
  }

  else
  {
    v6 = 2148794376;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v11 = 136316418;
        v12 = v7;
        v13 = 2080;
        v14 = "STUNEncodeAttr";
        v15 = 1024;
        v16 = 330;
        v17 = 1024;
        v18 = a3;
        v19 = 2048;
        v20 = a2;
        v21 = 2048;
        v22 = 4;
        _os_log_error_impl(&dword_23D497000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is too short. type=%d, bufferLength=%zu requiredLength=%zu", &v11, 0x36u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t STUNEncodeAttrU64(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2 > 0xB)
  {
    v7 = 0;
    *a1 = __rev16(a3);
    *(a1 + 2) = 2048;
    *(a1 + 4) = a4;
    *a5 = 12;
  }

  else
  {
    v7 = 2148794376;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v12 = 136316418;
        v13 = v8;
        v14 = 2080;
        v15 = "STUNEncodeAttrU64";
        v16 = 1024;
        v17 = 316;
        v18 = 1024;
        v19 = a3;
        v20 = 2048;
        v21 = a2;
        v22 = 2048;
        v23 = 12;
        _os_log_error_impl(&dword_23D497000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is too short. type=%d, bufferLength=%zu requiredLength=%zu", &v12, 0x36u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t STUNEncodeAttrXORAddress(_WORD *a1, unint64_t a2, unsigned int a3, unsigned __int8 *a4, uint64_t a5, unint64_t *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*a4 == 1)
  {
    v7 = 12;
  }

  else
  {
    v7 = 24;
  }

  if (v7 > a2)
  {
    v9 = 2148794376;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v20 = 136316418;
        v21 = v10;
        v22 = 2080;
        v23 = "STUNEncodeAttrXORAddress";
        v24 = 1024;
        v25 = 72;
        v26 = 1024;
        v27 = a3;
        v28 = 2048;
        v29 = a2;
        v30 = 2048;
        v31 = v7;
        _os_log_error_impl(&dword_23D497000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Buffer is too short. type=%d, bufferLength=%zu requiredLength=%zu", &v20, 0x36u);
      }
    }

    goto LABEL_20;
  }

  *a1 = __rev16(a3);
  v12 = a1 + 1;
  v13 = *a4;
  if (v13 == 1)
  {
    v14 = 2048;
    goto LABEL_12;
  }

  if (v13 == 2)
  {
    v14 = 5120;
LABEL_12:
    a1[1] = v14;
    v12 = a1 + 2;
  }

  *v12 = 0;
  *(v12 + 1) = *a4;
  v12[1] = bswap32(*(a4 + 20) ^ 0x2112) >> 16;
  v15 = v12 + 2;
  v16 = *a4;
  if (v16 == 1)
  {
    *v15 = bswap32(*(a4 + 6) ^ 0x2112A442);
  }

  else if (v16 == 2)
  {
    for (i = 0; i != 16; ++i)
    {
      *(v15 + i) = *(a5 + i) ^ a4[i + 24];
    }
  }

  v9 = 0;
  *a6 = v7;
LABEL_20:
  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL OUTLINED_FUNCTION_8_1()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t STUNGetTransID(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (!a1)
  {
    return 2148794369;
  }

  if (a3)
  {
    result = 0;
    v5 = *a3;
    *(a1 + 8) = *(a3 + 2);
    *a1 = v5;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = arc4random();
      v9 = a1 + v7;
      *v9 = v8;
      *(v9 + 2) = BYTE2(v8);
      *(v9 + 3) = HIBYTE(v8) & 0x7F;
      v10 = v7 >= 8;
      v7 += 4;
    }

    while (!v10);
    result = 0;
    *a1 = bswap32(a2) >> 16;
  }

  return result;
}

void FreeSTUNMessage(uint64_t a1)
{
  if (a1 && *(a1 + 28) >= 1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v4 = a1 + 32 + 56 * v2;
      v5 = *v3;
      if (v5 > 0x12)
      {
        if (*v3 <= 0x14u)
        {
          if (v5 != 19 && v5 != 20)
          {
            goto LABEL_24;
          }
        }

        else if (v5 != 21)
        {
          if (v5 == 32777)
          {
            if (!*(v3 + 3))
            {
              goto LABEL_24;
            }

            v6 = (v4 + 24);
            v7 = 8;
            goto LABEL_23;
          }

          if (v5 != 32778)
          {
            goto LABEL_24;
          }
        }
      }

      else if (*v3 <= 7u)
      {
        if (v5 == 6)
        {
          v6 = (v3 + 8);
          if (!*(v3 + 2))
          {
            goto LABEL_24;
          }

LABEL_22:
          v7 = 4;
LABEL_23:
          _STUNMessage_ClearMemoryAndFree(v6, &v3[v7]);
          goto LABEL_24;
        }

        if (v5 != 7)
        {
          goto LABEL_24;
        }
      }

      else if (v5 != 8)
      {
        if (v5 == 9)
        {
          if (!*(v3 + 2))
          {
            goto LABEL_24;
          }

          v6 = (v4 + 16);
          v7 = 6;
          goto LABEL_23;
        }

        if (v5 != 10)
        {
          goto LABEL_24;
        }
      }

      if (*(v3 + 2))
      {
        v6 = (v4 + 16);
        goto LABEL_22;
      }

LABEL_24:
      ++v2;
      v3 += 28;
    }

    while (v2 < *(a1 + 28));
  }
}

void _STUNMessage_ClearMemoryAndFree(void **a1, _DWORD *a2)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      *a1 = 0;
      if (a2)
      {
        v4 = *a2;
        if (v4 >= 1)
        {
          bzero(v2, v4);
          *a2 = 0;
        }
      }

      free(v2);
    }
  }
}

_BYTE *MakeTransID(_BYTE *a1, unsigned __int8 *a2)
{
  v4 = 0;
  *a1 = 0;
  do
  {
    v5 = *a2++;
    sprintf(&a1[v4], "%02X", v5);
    v4 += 2;
  }

  while (v4 != 24);
  return a1;
}

uint64_t ParseSTUNXORAddr(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + a3;
  if (v5 > a2)
  {
    return 2148794376;
  }

  if (v5 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1 + a3;
  }

  if (a1 + 2 > v7)
  {
    ParseSTUNXORAddr_cold_4();
  }

  else
  {
    v8 = *(a1 + 1);
    *a4 = v8;
    v9 = (a1 + 4);
    if (a1 + 4 > v7)
    {
      ParseSTUNXORAddr_cold_3();
    }

    else
    {
      *(a4 + 40) = bswap32(*(a1 + 2) ^ 0x1221) >> 16;
      if (v8 != 2)
      {
        if (v8 == 1)
        {
          if (a1 + 8 <= v7)
          {
            result = 0;
            *(a4 + 24) = bswap32(*v9 ^ 0x42A41221);
            return result;
          }

          ParseSTUNXORAddr_cold_2();
          return v11;
        }

        return 0;
      }

      *(a4 + 4) = 1;
      if (a1 + 20 <= v7)
      {
        for (i = 0; i != 16; ++i)
        {
          *(a4 + 24 + i) = *(a5 + i) ^ *(v9 + i);
        }

        return 0;
      }

      ParseSTUNXORAddr_cold_1();
    }
  }

  return v11;
}

uint64_t ParseSTUNMessage(unsigned __int16 *a1, uint64_t a2, char *a3)
{
  v81 = *MEMORY[0x277D85DE8];
  if (a2 <= 0)
  {
    ParseSTUNMessage_cold_9();
    goto LABEL_96;
  }

  if (!a1)
  {
    ParseSTUNMessage_cold_8(buf);
    goto LABEL_96;
  }

  v5 = a3;
  if (!a3)
  {
    ParseSTUNMessage_cold_7(buf);
    goto LABEL_96;
  }

  bzero(a3, 0x480uLL);
  if (a2 == 1)
  {
    ParseSTUNMessage_cold_6(buf);
    goto LABEL_96;
  }

  v6 = bswap32(*a1);
  *v5 = HIWORD(v6) & 0x110;
  v7 = (v6 >> 17) & 0x70 | HIWORD(v6) & 0xF | (v6 >> 18) & 0xF80;
  *(v5 + 1) = v7;
  v8 = (v5 + 2);
  if ((v7 - 1) >= 9)
  {
    v13 = 2148859925;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_89;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_89;
    }

    v16 = *v8;
    *buf = 136316418;
    v68 = v14;
    v69 = 2080;
    v70 = "ParseSTUNMessage";
    v71 = 1024;
    v72 = 286;
    v73 = 1024;
    v74 = 286;
    v75 = 1024;
    v76 = v16;
    v77 = 1024;
    v78 = a2;
    v17 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/STUNParser.c:%d: Unknow METHOD (0x%04X %dB)";
    goto LABEL_13;
  }

  if (a2 <= 3)
  {
    ParseSTUNMessage_cold_5();
    goto LABEL_96;
  }

  v9 = bswap32(a1[1]) >> 16;
  *(v5 + 2) = v9;
  if (a2 <= 0x13)
  {
    ParseSTUNMessage_cold_4();
    goto LABEL_96;
  }

  v10 = a1 + a2;
  *(v5 + 8) = *(a1 + 2);
  v11 = a1 + 10;
  if (*(v5 + 2) == 1118048801)
  {
    *(v5 + 2) = 554869826;
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  *(v5 + 3) = v12;
  v20 = v11 + v9;
  if (v20 > v10)
  {
    ParseSTUNMessage_cold_3(v5 + 2, a2, buf);
    goto LABEL_96;
  }

  if (v20 < v10 && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v68 = v21;
      v69 = 2080;
      v70 = "ParseSTUNMessage";
      v71 = 1024;
      v72 = 309;
      _os_log_impl(&dword_23D497000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Additional bytes after end of message", buf, 0x1Cu);
    }
  }

  if (a2 == 20)
  {
    LODWORD(v23) = 0;
LABEL_88:
    v13 = 0;
    *(v5 + 7) = v23;
    goto LABEL_89;
  }

  v64 = (v5 + 2);
  v65 = a2;
  v23 = 0;
  v66 = v5;
  v24 = v5 + 32;
  while (1)
  {
    if ((v11 + 1) > v10)
    {
      ParseSTUNMessage_cold_2();
LABEL_96:
      v13 = *buf;
      goto LABEL_89;
    }

    v25 = v23;
    v26 = &v24[56 * v23];
    v27 = v11 + 2;
    *v26 = bswap32(*v11) >> 16;
    if ((v11 + 2) > v10)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
LABEL_103:
        v13 = 2148794376;
        goto LABEL_89;
      }

      v56 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      v13 = 2148794376;
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_89;
      }

      v57 = *v64;
      v58 = *v26;
      *buf = 136316418;
      v68 = v56;
      v69 = 2080;
      v70 = "ParseSTUNMessage";
      v71 = 1024;
      v72 = 322;
      v73 = 1024;
      v74 = v57;
      v75 = 1024;
      v76 = v58;
      v77 = 1024;
      v78 = v65;
      v17 = " [%s] %s:%d Unable to read attribute length (method=0x%04X attribute=0x%04X len=%d)";
LABEL_13:
      v18 = v15;
      v19 = 46;
      goto LABEL_14;
    }

    v28 = v11[1];
    v29 = bswap32(v28);
    if ((v29 & 0x30000) != 0)
    {
      v30 = 4 - (HIWORD(v29) & 3);
    }

    else
    {
      v30 = 0;
    }

    *(v26 + 1) = v30 + HIWORD(v29);
    if ((v29 & 0x30000) != 0 && VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v31 = VRTraceErrorLogLevelToCSTR();
      v32 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v33 = *v26;
        *buf = 136316162;
        v68 = v31;
        v69 = 2080;
        v70 = "ParseSTUNMessage";
        v71 = 1024;
        v72 = 336;
        v73 = 1024;
        v74 = v30;
        v75 = 1024;
        v76 = v33;
        _os_log_impl(&dword_23D497000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %d byte padding added for attrib %04X", buf, 0x28u);
      }
    }

    if (v27 + *(v26 + 1) > v10)
    {
      break;
    }

    v34 = __rev16(v28);
    v35 = *v26;
    if (v35 <= 0x8000)
    {
      switch(*v26)
      {
        case 1:
        case 2:
        case 4:
        case 5:
        case 0xB:
        case 0x11:
          v36 = ParseSTUNAddr((v11 + 2), v10, v34, (v26 + 8));
          goto LABEL_52;
        case 3:
          v39 = v27 + v34;
          if (v39 >= v10)
          {
            v39 = v10;
          }

          if ((v11 + 4) > v39)
          {
            ParseSTUNMessage_cold_1();
            v13 = *buf;
            goto LABEL_92;
          }

          v26[8] = (*(v11 + 7) & 4) != 0;
          v26[9] = (*(v11 + 7) & 2) != 0;
          break;
        case 6:
        case 7:
        case 8:
        case 0x13:
        case 0x14:
        case 0x15:
          goto LABEL_46;
        case 9:
        case 0x21:
          v36 = ParseErrorCode(v11 + 4, v10, v34, (v26 + 8));
          goto LABEL_52;
        case 0xA:
          if ((v34 & 3) != 0 || v27 + v34 > v10)
          {
            goto LABEL_90;
          }

          v40 = v34 >> 1;
          *(v26 + 2) = v40;
          v41 = malloc_type_malloc(v34, 0x1000040BDFB0063uLL);
          *(v26 + 2) = v41;
          if (!v41)
          {
            goto LABEL_91;
          }

          if (v28)
          {
            v42 = v11 + 2;
            do
            {
              v43 = *v42++;
              *v41++ = bswap32(v43) >> 16;
              --v40;
            }

            while (v40);
          }

          goto LABEL_53;
        case 0xC:
        case 0xD:
        case 0xF:
        case 0x10:
        case 0x18:
        case 0x19:
        case 0x24:
          goto LABEL_51;
        case 0x12:
        case 0x16:
        case 0x20:
          v36 = ParseSTUNXORAddr((v11 + 2), v10, v34, (v26 + 8), (v66 + 8));
          goto LABEL_52;
        case 0x22:
          goto LABEL_62;
        case 0x25:
          goto LABEL_53;
        default:
          goto LABEL_80;
      }

      goto LABEL_53;
    }

    if (*v26 <= 0x8007u)
    {
      if (*v26 > 0x8004u)
      {
        if (v35 == 32773)
        {
          goto LABEL_51;
        }

        if (v35 != 32774)
        {
          v37 = 32775;
          goto LABEL_50;
        }

        goto LABEL_53;
      }

      if (v35 != 32769 && v35 != 32771)
      {
        v37 = 32772;
LABEL_50:
        if (v35 == v37)
        {
          goto LABEL_51;
        }

        goto LABEL_80;
      }

LABEL_51:
      v36 = ParseSTUNU32(v11 + 1, v10, v34, v26 + 2);
LABEL_52:
      v13 = v36;
      if ((v36 & 0x80000000) != 0)
      {
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    if (*v26 > 0x8021u)
    {
      if (v35 == 32802)
      {
        goto LABEL_53;
      }

      if (v35 != 32809 && v35 != 32810)
      {
        goto LABEL_80;
      }

LABEL_62:
      v36 = ParseSTUNU64(v11 + 2, v10, v34, v26 + 1);
      goto LABEL_52;
    }

    if (v35 == 32776)
    {
      goto LABEL_51;
    }

    if (v35 != 32777)
    {
      if (v35 == 32778)
      {
LABEL_46:
        v36 = ParseBinaryData(v11 + 2, v10, v34, (v26 + 8));
        goto LABEL_52;
      }

LABEL_80:
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v46 = VRTraceErrorLogLevelToCSTR();
        v47 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v48 = *v26;
          *buf = 136316162;
          v68 = v46;
          v69 = 2080;
          v70 = "ParseSTUNMessage";
          v71 = 1024;
          v72 = 506;
          v73 = 1024;
          v74 = 506;
          v75 = 1024;
          v76 = v48;
          _os_log_impl(&dword_23D497000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/STUNParser.c:%d: \tUNKNOWN-ATTR(%04X)", buf, 0x28u);
        }
      }

      goto LABEL_53;
    }

    v44 = (v34 - 2);
    if (v34 >= 2)
    {
      if (v27 + v34 > v10)
      {
LABEL_90:
        v13 = 2148794376;
      }

      else
      {
        *(v26 + 4) = bswap32(*v27) >> 16;
        *(v26 + 4) = v44;
        v45 = malloc_type_malloc((v34 - 1), 0x100004077774924uLL);
        *(v26 + 3) = v45;
        if (v45)
        {
          v45[v44] = 0;
          memcpy(*(v26 + 3), v11 + 3, v44);
          goto LABEL_53;
        }

LABEL_91:
        v13 = 2148794371;
      }

LABEL_92:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v53 = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          v55 = *v26;
          *buf = 136316162;
          v68 = v53;
          v69 = 2080;
          v70 = "ParseSTUNMessage";
          v71 = 1024;
          v72 = 510;
          v73 = 1024;
          v74 = v55;
          v75 = 1024;
          v76 = v13;
          v17 = " [%s] %s:%d Invalid attribute. Type=%d error=%X";
          v18 = v54;
          v19 = 40;
          goto LABEL_14;
        }
      }

      goto LABEL_89;
    }

LABEL_53:
    v11 = (v27 + *(v26 + 1));
    v23 = v25 + 1;
    if (v11 >= v10 || v25 >= 0x13)
    {
      if (v25 < 0x13)
      {
        v5 = v66;
      }

      else
      {
        v5 = v66;
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v49 = VRTraceErrorLogLevelToCSTR();
          v50 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v68 = v49;
            v69 = 2080;
            v70 = "ParseSTUNMessage";
            v71 = 1024;
            v72 = 517;
            v73 = 1024;
            v74 = 20;
            _os_log_impl(&dword_23D497000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d \tAttribute count reached MAX_STUNATTR(%d)", buf, 0x22u);
          }
        }
      }

      goto LABEL_88;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_103;
  }

  v59 = VRTraceErrorLogLevelToCSTR();
  v60 = *MEMORY[0x277CE5818];
  v13 = 2148794376;
  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
  {
    v61 = *(v26 + 1);
    v62 = *v64;
    v63 = *v26;
    *buf = 136316674;
    v68 = v59;
    v69 = 2080;
    v70 = "ParseSTUNMessage";
    v71 = 1024;
    v72 = 339;
    v73 = 1024;
    v74 = v61;
    v75 = 1024;
    v76 = v62;
    v77 = 1024;
    v78 = v63;
    v79 = 1024;
    v80 = v65;
    v17 = " [%s] %s:%d Attribute (len=%d) doesn't fit in packet (method=0x%04X attribute=0x%04X len=%d)";
    v18 = v60;
    v19 = 52;
LABEL_14:
    _os_log_error_impl(&dword_23D497000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
  }

LABEL_89:
  v51 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t ParseSTUNAddr(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = a1 + a3;
  if (v4 > a2)
  {
    return 2148794376;
  }

  if (v4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1 + a3;
  }

  if (a1 + 2 > v6)
  {
    ParseSTUNAddr_cold_4();
    return v9;
  }

  v7 = *(a1 + 1);
  *a4 = v7;
  v8 = (a1 + 4);
  if (a1 + 4 > v6)
  {
    ParseSTUNAddr_cold_3();
    return v9;
  }

  *(a4 + 40) = bswap32(*(a1 + 2)) >> 16;
  if (v7 == 2)
  {
    if (a1 + 20 <= v6)
    {
      result = 0;
      *(a4 + 4) = 1;
      *(a4 + 24) = *v8;
      return result;
    }

    ParseSTUNAddr_cold_1();
    return v9;
  }

  if (v7 == 1)
  {
    if (a1 + 8 <= v6)
    {
      result = 0;
      *(a4 + 24) = bswap32(*v8);
      return result;
    }

    ParseSTUNAddr_cold_2();
    return v9;
  }

  return 0;
}

uint64_t ParseBinaryData(const void *a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = 2148794371;
  if (a1 + a3 > a2)
  {
    return 2148794376;
  }

  v8 = malloc_type_malloc(a3 + 1, 0x100004077774924uLL);
  *(a4 + 8) = v8;
  if (v8)
  {
    v8[a3] = 0;
    *a4 = a3;
    memcpy(*(a4 + 8), a1, a3);
    return 0;
  }

  return v4;
}

uint64_t ParseErrorCode(_BYTE *a1, unint64_t a2, int a3, uint64_t a4)
{
  result = 2148794376;
  v6 = (a3 - 4);
  if (a3 >= 4 && &a1[a3] <= a2)
  {
    *a4 = a1[2];
    *(a4 + 1) = a1[3];
    if (a3 >= 5)
    {
      v8 = malloc_type_malloc((a3 - 3), 0x100004077774924uLL);
      *(a4 + 8) = v8;
      if (!v8)
      {
        return 2148794371;
      }

      v8[v6] = 0;
      *(a4 + 4) = v6;
      memcpy(*(a4 + 8), a1 + 4, v6);
    }

    return 0;
  }

  return result;
}

uint64_t ParseSTUNU32(unsigned int *a1, unint64_t a2, unsigned int a3, _DWORD *a4)
{
  v4 = a1 + a3;
  if (v4 >= a2)
  {
    v4 = a2;
  }

  if ((a1 + 1) > v4)
  {
    ParseSTUNU32_cold_1();
    return v7;
  }

  else
  {
    result = 0;
    *a4 = bswap32(*a1);
  }

  return result;
}

uint64_t ParseSTUNU64(void *a1, unint64_t a2, unsigned int a3, void *a4)
{
  v4 = a1 + a3;
  if (v4 >= a2)
  {
    v4 = a2;
  }

  if ((a1 + 1) > v4)
  {
    ParseSTUNU64_cold_1();
    return v7;
  }

  else
  {
    result = 0;
    *a4 = *a1;
  }

  return result;
}

unsigned __int16 *GetSTUNAttr(uint64_t a1, int a2)
{
  v2 = *(a1 + 28);
  if (v2 < 1)
  {
    return 0;
  }

  for (result = (a1 + 32); *result != a2; result += 28)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

BOOL OUTLINED_FUNCTION_9_1()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t MakeIPPORTWithHostnameIPv4Only(uint64_t a1, const char *a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  memset(v12, 170, 6);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  memset(&v11.ai_socktype, 0, 40);
  *&v11.ai_flags = 0x200000100;
  v11.ai_socktype = 2;
  __sprintf_chk(v12, 0, 6uLL, "%u", a3);
  v5 = getaddrinfo(a2, v12, &v11, &v10);
  if (v5 || !v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v14 = v6;
        v15 = 2080;
        v16 = "MakeIPPORTWithHostnameIPv4Only";
        v17 = 1024;
        v18 = 94;
        v19 = 1024;
        v20 = 94;
        v21 = 2080;
        v22 = a2;
        v23 = 2080;
        v24 = v12;
        v25 = 1024;
        v26 = v5;
        _os_log_error_impl(&dword_23D497000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/IPAddr.c:%d: getaddrinfo(%s,%s) failed(%d)", buf, 0x3Cu);
      }
    }

    a1 = 0;
  }

  else
  {
    SAToIPPORTWithInterfaceIndexToNameCallback(v10->ai_addr, a1, DefaultInterfaceIndexToNameCallback, 0);
    freeaddrinfo(v10);
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t MakeIPPORT(uint64_t a1, const char *a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  memset(v12, 170, 6);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  memset(&v11.ai_socktype, 0, 40);
  *&v11.ai_flags = 1028;
  v11.ai_socktype = 2;
  __sprintf_chk(v12, 0, 6uLL, "%u", a3);
  v5 = getaddrinfo(a2, v12, &v11, &v10);
  if (v5 || !v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v14 = v6;
        v15 = 2080;
        v16 = "MakeIPPORTGeneric";
        v17 = 1024;
        v18 = 69;
        v19 = 1024;
        v20 = 69;
        v21 = 2080;
        v22 = a2;
        v23 = 2080;
        v24 = v12;
        v25 = 1024;
        v26 = v5;
        _os_log_error_impl(&dword_23D497000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/IPAddr.c:%d: getaddrinfo(%s,%s) failed(%d)", buf, 0x3Cu);
      }
    }

    a1 = 0;
  }

  else
  {
    SAToIPPORTWithInterfaceIndexToNameCallback(v10->ai_addr, a1, DefaultInterfaceIndexToNameCallback, 0);
    freeaddrinfo(v10);
  }

  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t InterpretAddressX(const char *a1, uint64_t a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = inet_addr(a1);
  if (v6 != -1)
  {
    goto LABEL_4;
  }

  v7 = gethostbyname(a1);
  if (v7)
  {
    v6 = **v7->h_addr_list;
LABEL_4:
    v8 = *MEMORY[0x277D85DE8];
    return bswap32(v6);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136316674;
      v14 = v10;
      v15 = 2080;
      v16 = "InterpretAddressX";
      v17 = 1024;
      v18 = 120;
      v19 = 1024;
      v20 = 120;
      v21 = 2080;
      v22 = a2;
      v23 = 1024;
      v24 = a3;
      v25 = 2080;
      v26 = a1;
      _os_log_impl(&dword_23D497000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/IPAddr.c:%d: %s:%d: Cannot resolve address [%s]", &v13, 0x3Cu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

char *IPPORTToStringWithSize(char *a1, uint64_t a2, size_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11 = v6;
  v12 = v6;
  *__dst = v6;
  if (*a2)
  {
    v7 = "[%s]:%u";
  }

  else
  {
    v7 = "%s:%u";
  }

  IPToString(__dst, a2);
  snprintf(a1, a3, v7, __dst, *(a2 + 36));
  v8 = *MEMORY[0x277D85DE8];
  return a1;
}

char *IPToString(char *__dst, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*a2 & 1) == 0)
  {
    sprintf(__dst, "%u.%u.%u.%u", HIBYTE(*(a2 + 20)), BYTE2(*(a2 + 20)), BYTE1(*(a2 + 20)), *(a2 + 20));
    goto LABEL_19;
  }

  v4 = 0;
  v5 = (a2 + 20);
  *__source = 0xAAAAAAAAAAAAAAAALL;
  *__dst = 0;
  v6 = 1;
  while (1)
  {
    if (!v6 || *&v5[2 * v4])
    {
      if (v4)
      {
        strlcat(__dst, ":", 0x30uLL);
      }

      __sprintf_chk(__source, 0, 8uLL, "%x", bswap32(*&v5[2 * v4]) >> 16);
      strlcat(__dst, __source, 0x30uLL);
      goto LABEL_14;
    }

    v7 = v4;
    strlcat(__dst, ":", 0x30uLL);
    --v4;
    do
    {
      v8 = v7 + 1;
      ++v4;
      if (v7 > 6)
      {
        break;
      }
    }

    while (!*(a2 + 22 + 2 * v7++));
    if (v8 == 8)
    {
      break;
    }

    v6 = 0;
LABEL_14:
    if (v4++ >= 7)
    {
      goto LABEL_15;
    }
  }

  strlcat(__dst, ":", 0x30uLL);
LABEL_15:
  if (*v5 == 254 && (*(a2 + 21) & 0xC0) == 0x80)
  {
    v12 = *(a2 + 4);
    v11 = (a2 + 4);
    if (v12)
    {
      memset(v15, 170, 17);
      __sprintf_chk(v15, 0, 0x11uLL, "%%%s", v11);
      strlcat(__dst, v15, 0x30uLL);
    }
  }

LABEL_19:
  v13 = *MEMORY[0x277D85DE8];
  return __dst;
}

uint64_t GetLocalIFFunctionalTypeForBoundSocket(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 0u;
  v6 = 0u;
  memset(v4, 170, sizeof(v4));
  result = GetLocalIFIndexForBoundSocket(a1);
  if (result)
  {
    if_indextoname(result, v4);
    __strlcpy_chk();
    if (ioctl(a1, 0xC02069ADuLL, &v5) == -1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_8;
        }

        GetLocalIFFunctionalTypeForBoundSocket_cold_1();
      }

      result = 0;
      goto LABEL_8;
    }

    result = v6;
  }

LABEL_8:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GetLocalIFIndexForBoundSocket(int a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *&v1.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v1.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v20 = v1;
  v21 = v1;
  v18 = v1;
  v19 = v1;
  v16 = v1;
  v17 = v1;
  v14 = v1;
  v15 = v1;
  *&v13[16] = 0xAAAAAAAAAAAAAAAALL;
  v12 = v1;
  *v13 = v1;
  v9 = 128;
  if (getsockname(a1, &v14, &v9))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalIFIndexForBoundSocket_cold_1();
      }
    }

LABEL_5:
    v2 = 0;
    goto LABEL_22;
  }

  SAToIPPORTWithInterfaceIndexToNameCallback(&v14, &v12, DefaultInterfaceIndexToNameCallback, 0);
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (getifaddrs(&v8) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalIFIndexForBoundSocket_cold_3();
      }
    }

    goto LABEL_5;
  }

  v3 = v8;
  if (!v8)
  {
LABEL_17:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalIFIndexForBoundSocket_cold_2();
      }
    }

    v2 = 0;
    goto LABEL_21;
  }

  while (1)
  {
    *&v11[16] = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10 = v4;
    *v11 = v4;
    SAToIPPORTWithInterfaceIndexToNameCallback(v3->ifa_addr, &v10, DefaultInterfaceIndexToNameCallback, 0);
    if ((v12.sa_len & 1) != (v10 & 1))
    {
      goto LABEL_16;
    }

    if (v12.sa_len)
    {
      break;
    }

    if (*&v13[4] == *&v11[4])
    {
      goto LABEL_26;
    }

LABEL_16:
    v3 = v3->ifa_next;
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  if (*&v13[4] != *&v11[4] || *&v13[12] != *&v11[12])
  {
    goto LABEL_16;
  }

LABEL_26:
  v2 = if_nametoindex(v3->ifa_name);
  if (!v2)
  {
    goto LABEL_17;
  }

LABEL_21:
  MEMORY[0x23EEE25D0](v8);
LABEL_22:
  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t GetLocalIFNameForBoundSocket(int a1, char *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = GetLocalIFIndexForBoundSocket(a1);
  if (result)
  {
    return if_indextoname(result, a2) != 0;
  }

  return result;
}

uint64_t GetLocalInterfaceListWithOptionsAndCellInterfaceName(void *a1, int a2, char *a3)
{
  v196 = *MEMORY[0x277D85DE8];
  v176 = 0;
  if (!a1)
  {
LABEL_108:
    v60 = 0;
    goto LABEL_109;
  }

  v5 = a1;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    v8 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = " IFLIST_DISALLOW_2G";
        *buf = 136317186;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        if ((a2 & 4) == 0)
        {
          v9 = &unk_23D4C9CFB;
        }

        *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
        v10 = " IFLIST_EXCLUDE_CELL";
        *&buf[22] = 1024;
        *&buf[24] = 691;
        v11 = " IFLIST_CELL_ONLY";
        *&buf[28] = 1024;
        if ((a2 & 1) == 0)
        {
          v10 = &unk_23D4C9CFB;
        }

        *&buf[30] = 691;
        *&buf[34] = 2080;
        if ((a2 & 2) == 0)
        {
          v11 = &unk_23D4C9CFB;
        }

        *&buf[36] = v9;
        if ((a2 & 8) != 0)
        {
          v12 = " IFLIST_INCLUDE_LINKLOCAL";
        }

        else
        {
          v12 = &unk_23D4C9CFB;
        }

        *&buf[44] = 2080;
        *&buf[46] = v10;
        *&buf[54] = 2080;
        *&buf[56] = v11;
        *&buf[64] = 2080;
        *&buf[66] = v12;
        *&buf[74] = 1024;
        *&buf[76] = a2;
        _os_log_impl(&dword_23D497000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/IPAddr.c:%d: interfaceFilterOptions =%s%s%s%s 0x%X", buf, 0x50u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_1(v6, a2, v7);
    }
  }

  v175 = 0;
  if (VCCTServiceMonitor_GetDataIndicatorStatus(&v175) || (v175 - 1) > 1)
  {
    v17 = 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
        *&buf[22] = 1024;
        *&buf[24] = 699;
        _os_log_impl(&dword_23D497000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CT indicates cellular as 2G or 2.5G", buf, 0x1Cu);
      }
    }

    if ((a2 & 1) == 0 && ((a2 & 4) != 0 || CFPreferencesGetAppBooleanValue(@"AlwaysDisallow2GCellular", @"com.apple.VideoConference", 0)))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
          *&buf[22] = 1024;
          *&buf[24] = 717;
          _os_log_impl(&dword_23D497000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d IFLIST_DISALLOW_2G is set and RAT is 2G or 2.5G, disallowing cellular interfaces", buf, 0x1Cu);
        }
      }

      LOBYTE(a2) = a2 | 1;
    }

    v17 = 1;
  }

  if (getifaddrs(&v176))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_2();
      }
    }

    goto LABEL_108;
  }

  v18 = &v176;
  v19 = -40;
  v20 = 1;
  do
  {
    v18 = *v18;
    v19 += 40;
    --v20;
  }

  while (v18);
  if (!v20)
  {
    if (v176)
    {
      MEMORY[0x23EEE25D0](v176, v19);
    }

    goto LABEL_108;
  }

  v170 = malloc_type_calloc(1uLL, v19, 0x100004053E81896uLL);
  if (!v170)
  {
    if (v176)
    {
      MEMORY[0x23EEE25D0]();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_8();
      }
    }

    goto LABEL_108;
  }

  v171 = socket(2, 2, 0);
  v172 = socket(30, 2, 0);
  *&localAddress.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&remoteAddress.sa_len = 0;
  *v178 = xmmword_23D4C9CB0;
  *&v178[16] = 1;
  __s = a3;
  v167 = v17;
  if ((reliableSysctl(v178, &localAddress, &remoteAddress.sa_len) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_4();
      }

      v174 = 0;
      v173 = 0;
      goto LABEL_127;
    }

LABEL_119:
    v174 = 0;
    v173 = 0;
    goto LABEL_127;
  }

  v21 = *&localAddress.sa_len;
  if (*&remoteAddress.sa_len < 1)
  {
LABEL_118:
    free(v21);
    goto LABEL_119;
  }

  v22 = 0;
  v23 = *&localAddress.sa_len + *&remoteAddress.sa_len;
  do
  {
    v21 = (v21 + *v21);
    v22 += 4;
  }

  while (v21 < v23);
  v24 = malloc_type_malloc(v22, 0x100004052888210uLL);
  if (!v24)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_3();
      }
    }

    v21 = *&localAddress.sa_len;
    goto LABEL_118;
  }

  v174 = v24;
  v25 = v5;
  v26 = nwi_state_copy();
  v27 = if_nametoindex("pdp_ip0");
  v28 = *&localAddress.sa_len;
  if (*&localAddress.sa_len < v23)
  {
    v29 = v27;
    v173 = 0;
    v30 = MEMORY[0x277D85EE8];
    while (1)
    {
      v31 = *(v28 + 93);
      if (v31 == 30)
      {
        if ((v28[6] & 1) != 0 && *(v28 + 92) == 28)
        {
          v37 = *(v28 + 50) == *v30 && *(v28 + 54) == v30[1];
          if (v37)
          {
            v45 = v28[2];
            if (v29 == v45 || IsInterfaceRoutable(v45, 30, v26))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v46 = VRTraceErrorLogLevelToCSTR();
                v47 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v48 = v28[2];
                  *buf = 136315906;
                  *&buf[4] = v46;
                  *&buf[12] = 2080;
                  *&buf[14] = "GetReachableInterfaceListWithOptions";
                  *&buf[22] = 1024;
                  *&buf[24] = 470;
                  *&buf[28] = 1024;
                  *&buf[30] = v48;
                  v35 = v47;
                  v36 = " [%s] %s:%d IPv6 DEFAULT route, if_idx:%d";
                  goto LABEL_77;
                }
              }

LABEL_78:
              if (v173 < 1)
              {
                LODWORD(v49) = 0;
              }

              else
              {
                v49 = 0;
                v50 = v28[2];
                while (v174[v49] != v50)
                {
                  if (v173 == ++v49)
                  {
                    goto LABEL_86;
                  }
                }
              }

              if (v49 == v173)
              {
                v50 = v28[2];
LABEL_86:
                v174[v173++] = v50;
              }

              goto LABEL_87;
            }
          }

          if ((a2 & 8) != 0)
          {
            if (IsAWDLInterface(v28[2], v172))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v38 = VRTraceErrorLogLevelToCSTR();
                v39 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  v40 = v28[2];
                  *buf = 136315906;
                  *&buf[4] = v38;
                  *&buf[12] = 2080;
                  *&buf[14] = "GetReachableInterfaceListWithOptions";
                  *&buf[22] = 1024;
                  *&buf[24] = 478;
                  *&buf[28] = 1024;
                  *&buf[30] = v40;
                  v35 = v39;
                  v36 = " [%s] %s:%d IPv6 AWDL, if_idx:%d";
                  goto LABEL_77;
                }
              }

              goto LABEL_78;
            }

            if (IsBluetoothInterface(v28[2]))
            {
              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                goto LABEL_78;
              }

              v54 = VRTraceErrorLogLevelToCSTR();
              v55 = *MEMORY[0x277CE5818];
              if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_78;
              }

              v56 = v28[2];
              *buf = 136315906;
              *&buf[4] = v54;
              *&buf[12] = 2080;
              *&buf[14] = "GetReachableInterfaceListWithOptions";
              *&buf[22] = 1024;
              *&buf[24] = 484;
              *&buf[28] = 1024;
              *&buf[30] = v56;
              v35 = v55;
              v36 = " [%s] %s:%d IPv6 BT, if_idx:%d";
LABEL_77:
              _os_log_impl(&dword_23D497000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0x22u);
              goto LABEL_78;
            }
          }
        }
      }

      else if (v31 == 2 && (v28[6] & 1) != 0 && *(v28 + 92) == 16)
      {
        if (!*(v28 + 24))
        {
          v41 = v28[2];
          if (v29 == v41 || IsInterfaceRoutable(v41, 2, v26))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v42 = VRTraceErrorLogLevelToCSTR();
              v43 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v44 = v28[2];
                *buf = 136315906;
                *&buf[4] = v42;
                *&buf[12] = 2080;
                *&buf[14] = "GetReachableInterfaceListWithOptions";
                *&buf[22] = 1024;
                *&buf[24] = 432;
                *&buf[28] = 1024;
                *&buf[30] = v44;
                v35 = v43;
                v36 = " [%s] %s:%d IPv4 DEFAULT route, if_idx:%d";
                goto LABEL_77;
              }
            }

            goto LABEL_78;
          }
        }

        if ((a2 & 8) != 0)
        {
          if (IsAWDLInterface(v28[2], v171))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v32 = VRTraceErrorLogLevelToCSTR();
              v33 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v34 = v28[2];
                *buf = 136315906;
                *&buf[4] = v32;
                *&buf[12] = 2080;
                *&buf[14] = "GetReachableInterfaceListWithOptions";
                *&buf[22] = 1024;
                *&buf[24] = 442;
                *&buf[28] = 1024;
                *&buf[30] = v34;
                v35 = v33;
                v36 = " [%s] %s:%d IPv4 AWDL, if_idx:%d";
                goto LABEL_77;
              }
            }

            goto LABEL_78;
          }

          if (IsBluetoothInterface(v28[2]))
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_78;
            }

            v51 = VRTraceErrorLogLevelToCSTR();
            v52 = *MEMORY[0x277CE5818];
            if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_78;
            }

            v53 = v28[2];
            *buf = 136315906;
            *&buf[4] = v51;
            *&buf[12] = 2080;
            *&buf[14] = "GetReachableInterfaceListWithOptions";
            *&buf[22] = 1024;
            *&buf[24] = 448;
            *&buf[28] = 1024;
            *&buf[30] = v53;
            v35 = v52;
            v36 = " [%s] %s:%d IPv4 BT, if_idx:%d";
            goto LABEL_77;
          }

          if (v28[48] == -343)
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_78;
            }

            v57 = VRTraceErrorLogLevelToCSTR();
            v58 = *MEMORY[0x277CE5818];
            if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_78;
            }

            v59 = v28[2];
            *buf = 136315906;
            *&buf[4] = v57;
            *&buf[12] = 2080;
            *&buf[14] = "GetReachableInterfaceListWithOptions";
            *&buf[22] = 1024;
            *&buf[24] = 454;
            *&buf[28] = 1024;
            *&buf[30] = v59;
            v35 = v58;
            v36 = " [%s] %s:%d IPv4 Ad-Hoc, if_idx:%d";
            goto LABEL_77;
          }
        }
      }

LABEL_87:
      v28 = (v28 + *v28);
      if (v28 >= v23)
      {
        goto LABEL_121;
      }
    }
  }

  v173 = 0;
LABEL_121:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v63 = VRTraceErrorLogLevelToCSTR();
    v64 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v63;
      *&buf[12] = 2080;
      *&buf[14] = "GetReachableInterfaceListWithOptions";
      *&buf[22] = 1024;
      *&buf[24] = 508;
      *&buf[28] = 1024;
      *&buf[30] = v173;
      _os_log_impl(&dword_23D497000, v64, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d found %d reachable interface(s).", buf, 0x22u);
    }
  }

  free(*&localAddress.sa_len);
  if (v26)
  {
    nwi_state_release();
  }

  v5 = v25;
LABEL_127:
  *&localAddress.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&remoteAddress.sa_len = 0;
  *v178 = xmmword_23D4C9CB0;
  *&v178[16] = 3;
  if ((reliableSysctl(v178, &localAddress, &remoteAddress.sa_len) & 0x80000000) != 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v77 = v170;
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_6();
      }

      v78 = 0;
      v169 = 0;
      goto LABEL_165;
    }

LABEL_159:
    v78 = 0;
    v169 = 0;
    v77 = v170;
    goto LABEL_165;
  }

  v65 = *&localAddress.sa_len;
  if (*&remoteAddress.sa_len < 1)
  {
LABEL_158:
    free(v65);
    goto LABEL_159;
  }

  v66 = 0;
  v67 = *&localAddress.sa_len + *&remoteAddress.sa_len;
  do
  {
    v65 = (v65 + *v65);
    v66 += 4;
  }

  while (v65 < v67);
  v68 = malloc_type_malloc(v66, 0x100004052888210uLL);
  if (!v68)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_5();
      }
    }

    v65 = *&localAddress.sa_len;
    goto LABEL_158;
  }

  v69 = *&localAddress.sa_len;
  v70 = v68;
  if (*&localAddress.sa_len >= v67)
  {
    v169 = 0;
  }

  else
  {
    v169 = 0;
    do
    {
      if (*(v69 + 3) == 14 && *(v69 + 116) == 255)
      {
        if (v169 < 1)
        {
          LODWORD(v71) = 0;
        }

        else
        {
          v71 = 0;
          v72 = v69[57];
          while (v68[v71] != v72)
          {
            if (v169 == ++v71)
            {
              v73 = v169;
              goto LABEL_144;
            }
          }
        }

        if (v71 == v169)
        {
          v73 = v169;
          v72 = v69[57];
LABEL_144:
          v68[v73] = v72;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v74 = VRTraceErrorLogLevelToCSTR();
            v75 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v76 = v69[57];
              *buf = 136316162;
              *&buf[4] = v74;
              *&buf[12] = 2080;
              *&buf[14] = "GetCellularInterfaceList";
              *&buf[22] = 1024;
              *&buf[24] = 568;
              *&buf[28] = 1024;
              *&buf[30] = v76;
              *&buf[34] = 2080;
              *&buf[36] = v69 + 60;
              _os_log_impl(&dword_23D497000, v75, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Added cellular interface index: %u name: %s\n", buf, 0x2Cu);
            }
          }

          ++v169;
          v68 = v70;
        }
      }

      v69 = (v69 + *v69);
    }

    while (v69 < v67);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v79 = VRTraceErrorLogLevelToCSTR();
    v80 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v79;
      *&buf[12] = 2080;
      *&buf[14] = "GetCellularInterfaceList";
      *&buf[22] = 1024;
      *&buf[24] = 576;
      *&buf[28] = 1024;
      *&buf[30] = v169;
      _os_log_impl(&dword_23D497000, v80, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GetCellularInterfaceList: found %d cellular interface(s).", buf, 0x22u);
    }
  }

  free(*&localAddress.sa_len);
  v77 = v170;
  v78 = v70;
LABEL_165:
  v81 = v176;
  v168 = v78;
  v60 = 0;
  if (v176)
  {
    v164 = v77 - 40;
    v165 = *MEMORY[0x277CBED10];
    while (1)
    {
      v82 = if_nametoindex(v81->ifa_name);
      if (!v82)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v101 = VRTraceErrorLogLevelToCSTR();
          v102 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            ifa_name = v81->ifa_name;
            *buf = 136315906;
            *&buf[4] = v101;
            *&buf[12] = 2080;
            *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
            *&buf[22] = 1024;
            *&buf[24] = 760;
            *&buf[28] = 2080;
            *&buf[30] = ifa_name;
            _os_log_error_impl(&dword_23D497000, v102, OS_LOG_TYPE_ERROR, " [%s] %s:%d if_name:%s not found", buf, 0x26u);
          }
        }

        goto LABEL_312;
      }

      v83 = v82;
      v84 = &v77[40 * v60];
      SAToIPPORTWithInterfaceIndexToNameCallback(v81->ifa_addr, v84, DefaultInterfaceIndexToNameCallback, 0);
      v85 = 0;
      *(v84 + 36) = 0;
      *v84 |= 8u;
      v86 = v81->ifa_name;
      if (*v86 == 108)
      {
        v85 = v86[1] == 111;
      }

      sa_family = v81->ifa_addr->sa_family;
      v89 = sa_family != 30 && sa_family != 2 || v173 < 1;
      v90 = v174;
      v91 = v173;
      if (v89)
      {
LABEL_179:
        if (!v85)
        {
          goto LABEL_312;
        }
      }

      else
      {
        while (1)
        {
          v92 = *v90++;
          if (v92 == v83)
          {
            break;
          }

          if (!--v91)
          {
            goto LABEL_179;
          }
        }
      }

      if (sa_family == 2)
      {
        v93 = v171;
      }

      else
      {
        v93 = v172;
      }

      if (IsAWDLInterface(v83, v93))
      {
        *v84 |= 0x100u;
      }

      if (IsBluetoothInterface(v83) && (*v84 & 1) != 0)
      {
        *v84 |= 0x200u;
      }

      v94 = v81->ifa_name;
      if (!v94)
      {
        goto LABEL_208;
      }

      v95 = v81->ifa_addr->sa_family;
      if (v95 != 30 && v95 != 2)
      {
        goto LABEL_208;
      }

      v97 = if_nametoindex(v81->ifa_name);
      if (!v97)
      {
        break;
      }

      v99 = v169;
      v98 = v168;
      if (v169 < 1)
      {
        goto LABEL_208;
      }

      while (1)
      {
        v100 = *v98++;
        if (v100 == v97)
        {
          break;
        }

        if (!--v99)
        {
          goto LABEL_208;
        }
      }

      v107 = v81->ifa_name;
      if (!v107)
      {
LABEL_214:
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_312;
        }

        v109 = VRTraceErrorLogLevelToCSTR();
        v110 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_312;
        }

        v111 = v81->ifa_name;
        *buf = 136315906;
        *&buf[4] = v109;
        *&buf[12] = 2080;
        *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
        *&buf[22] = 1024;
        *&buf[24] = 799;
        *&buf[28] = 2080;
        *&buf[30] = v111;
        v112 = v110;
        v113 = " [%s] %s:%d Cellular interface [%s] doesn't support data, skip.";
        v114 = 38;
LABEL_261:
        _os_log_impl(&dword_23D497000, v112, OS_LOG_TYPE_DEFAULT, v113, buf, v114);
        goto LABEL_312;
      }

      if (!__s)
      {
        v106 = 1;
        goto LABEL_206;
      }

      v108 = strlen(__s);
      v77 = v170;
      if (strncmp(v107, __s, v108))
      {
        goto LABEL_214;
      }

      v106 = 1;
      if (!v85)
      {
LABEL_219:
        if ((a2 & 2) != 0)
        {
          v115 = v106;
        }

        else
        {
          v115 = 1;
        }

        if ((a2 & v106 & 1) != 0 || !v115)
        {
          goto LABEL_312;
        }

        if (v106)
        {
          *v84 |= 4u;
        }

        goto LABEL_226;
      }

LABEL_209:
      if ((a2 & 2) != 0)
      {
        goto LABEL_312;
      }

LABEL_226:
      v116 = v81->ifa_addr->sa_family;
      if (v116 == 30)
      {
        if (_os_feature_enabled_impl() && (a2 & 0x10) != 0)
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_312;
          }

          v128 = VRTraceErrorLogLevelToCSTR();
          v129 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_312;
          }

          *buf = 136315650;
          *&buf[4] = v128;
          *&buf[12] = 2080;
          *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
          *&buf[22] = 1024;
          *&buf[24] = 866;
          v112 = v129;
          v113 = " [%s] %s:%d IFLIST_EXCLUDE_IPV6 is set, skipping one IPV6 interface";
          v114 = 28;
          goto LABEL_261;
        }

        if ((a2 & 8) == 0)
        {
          ifa_addr = v81->ifa_addr;
          if (ifa_addr->sa_data[6] == 254 && (ifa_addr->sa_data[7] & 0xC0) == 0x80)
          {
            goto LABEL_312;
          }
        }

        v192 = 0u;
        v193 = 0u;
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v182 = 0u;
        v183 = 0u;
        v181 = 0u;
        memset(buf, 0, sizeof(buf));
        v131 = v81->ifa_addr;
        v132 = *v131;
        *&buf[28] = *&v131->sa_data[10];
        *&buf[16] = v132;
        if (GetLocalInterfaceListWithOptionsAndCellInterfaceName_dontForceRFC3041AddrIfAvailable == -1)
        {
          GetLocalInterfaceListWithOptionsAndCellInterfaceName_dontForceRFC3041AddrIfAvailable = CFPreferencesGetAppBooleanValue(@"dontForceRFC3041AddrIfAvailable", @"com.apple.VideoConference", 0);
        }

        v133 = v60;
        strncpy(buf, v81->ifa_name, 0x10uLL);
        if (ioctl(v172, 0xC1206949uLL, buf) == -1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v140 = VRTraceErrorLogLevelToCSTR();
            v141 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              v155 = v81->ifa_name;
              v156 = __error();
              v157 = strerror(*v156);
              *v178 = 136316162;
              *&v178[4] = v140;
              *&v178[12] = 2080;
              *&v178[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
              *&v178[22] = 1024;
              *&v178[24] = 892;
              *&v178[28] = 2080;
              *&v178[30] = v155;
              *&v178[38] = 2080;
              *&v178[40] = v157;
              _os_log_error_impl(&dword_23D497000, v141, OS_LOG_TYPE_ERROR, " [%s] %s:%d ioctl(SIOCGIFAFLAG_IN6) failed for %s: %s", v178, 0x30u);
            }
          }
        }

        else
        {
          v134 = buf[16];
          if ((buf[16] & 6) != 0)
          {
            goto LABEL_311;
          }

          if ((buf[16] & 0x80) != 0)
          {
            *v84 |= 0x10u;
            v134 = buf[16];
          }

          if ((v134 & 0x10) != 0)
          {
            *v84 |= 0x40u;
          }

          if (!GetLocalInterfaceListWithOptionsAndCellInterfaceName_dontForceRFC3041AddrIfAvailable && v60)
          {
            v135 = 1 - v60;
            v136 = &v164[40 * v60];
            v137 = v60 - 1;
            do
            {
              if (!strcmp(v81->ifa_name, v136 + 4) && (*v136 & 1) != 0)
              {
                v138 = &v170[40 * v60];
                v139 = *v138 & 0x50;
                if (v139 == 16)
                {
                  if ((*v136 & 0x50) != 0x10)
                  {
                    if (VRTraceGetErrorLogLevelForModule() > 6)
                    {
                      v161 = VRTraceErrorLogLevelToCSTR();
                      v162 = *MEMORY[0x277CE5818];
                      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                      {
                        *v178 = 136315906;
                        *&v178[4] = v161;
                        *&v178[12] = 2080;
                        *&v178[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
                        *&v178[22] = 1024;
                        *&v178[24] = 950;
                        *&v178[28] = 1024;
                        *&v178[30] = v137;
                        _os_log_impl(&dword_23D497000, v162, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ┗━▶ Pruning interface %d in favor of rfc3041-compliant interface.", v178, 0x22u);
                      }
                    }

                    memmove(v136, v136 + 40, 40 * (v60 + v135));
                    *v138 = 0u;
                    *(v138 + 1) = 0u;
                    v60 = (v60 - 1);
                    *(v138 + 4) = 0;
                  }
                }

                else if ((*v136 & 0x10) != 0 || v139 == 80)
                {
                  goto LABEL_311;
                }
              }

              ++v135;
              v136 -= 40;
              --v137;
              --v133;
            }

            while (v133);
            LODWORD(v133) = v60;
          }
        }

        v142 = &v170[40 * v133];
        v77 = v170;
        v143 = v81->ifa_name;
        __strlcpy_chk();
        if ((v81->ifa_flags & 0x10) != 0)
        {
          *v142 |= 2u;
        }

        if (v167 && (*v142 & 4) != 0)
        {
          *v142 |= 0x20u;
        }
      }

      else
      {
        if (v116 != 2)
        {
          goto LABEL_297;
        }

        if ((v81->ifa_flags & 0x10) == 0)
        {
          LOBYTE(v106) = 1;
        }

        if ((v106 & 1) == 0)
        {
          *&localAddress.sa_len = 0xAAAAAAAAAAAAAAAALL;
          *&localAddress.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
          if ((*v84 & 1) == 0)
          {
            *&localAddress.sa_data[6] = 0;
            *&localAddress.sa_len = 528;
            *&localAddress.sa_data[2] = bswap32(*(v84 + 20));
            *localAddress.sa_data = bswap32(*(v84 + 36)) >> 16;
          }

          *&v117 = 0xAAAAAAAAAAAAAAAALL;
          *(&v117 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&buf[16] = v117;
          *&buf[32] = v117;
          *buf = v117;
          *&remoteAddress.sa_len = 528;
          *&remoteAddress.sa_data[6] = 0;
          v118 = SCNetworkReachabilityCreateWithAddressPair(0, &localAddress, &remoteAddress);
          flags = -1431655766;
          if (SCNetworkReachabilityGetFlags(v118, &flags) && (flags & 0x40000) != 0)
          {
            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              v119 = 1;
            }

            else
            {
              v153 = VRTraceErrorLogLevelToCSTR();
              v154 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                IPToString(buf, v84);
                *v178 = 136315906;
                *&v178[4] = v153;
                *&v178[12] = 2080;
                *&v178[14] = "IsPPPOver3G";
                *&v178[22] = 1024;
                *&v178[24] = 658;
                *&v178[28] = 2080;
                *&v178[30] = buf;
                _os_log_impl(&dword_23D497000, v154, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d PPP address [%s] is over cellular network", v178, 0x26u);
              }

              v119 = 1;
            }
          }

          else
          {
            v119 = 0;
          }

          CFRelease(v118);
          if ((a2 & 2) != 0)
          {
            v120 = v119;
          }

          else
          {
            v120 = 1;
          }

          if ((a2 & v119 & 1) != 0 || !v120)
          {
            goto LABEL_311;
          }

          v121 = *v84;
          if (v119)
          {
            v121 = *v84 | 4;
          }

          *v84 = v121 | 2;
          v122 = GetLocalInterfaceListWithOptionsAndCellInterfaceName_s_iAllowVPN;
          if (GetLocalInterfaceListWithOptionsAndCellInterfaceName_s_iAllowVPN == -1)
          {
            GetLocalInterfaceListWithOptionsAndCellInterfaceName_s_iAllowVPN = 1;
            v123 = CFPreferencesCopyAppValue(@"allowVPN", @"com.apple.VideoConference");
            if (v123)
            {
              v124 = v123;
              if (CFEqual(v123, v165))
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v125 = VRTraceErrorLogLevelToCSTR();
                  v126 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    *&buf[4] = v125;
                    *&buf[12] = 2080;
                    *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
                    *&buf[22] = 1024;
                    *&buf[24] = 844;
                    _os_log_impl(&dword_23D497000, v126, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found allowVPN NO. Exclusing PPP interfaces", buf, 0x1Cu);
                  }
                }

                GetLocalInterfaceListWithOptionsAndCellInterfaceName_s_iAllowVPN = 0;
              }

              CFRelease(v124);
            }

            v122 = GetLocalInterfaceListWithOptionsAndCellInterfaceName_s_iAllowVPN;
          }

          v77 = v170;
          if (!v122)
          {
            goto LABEL_312;
          }
        }

        v127 = v81->ifa_name;
        __strlcpy_chk();
        if (v167 && (*v84 & 4) != 0)
        {
          *v84 |= 0x20u;
        }
      }

      v60 = (v60 + 1);
LABEL_297:
      if (v60)
      {
        v144 = &v77[40 * v60 - 40];
        if (*(v144 + 4))
        {
          *&v145 = 0xAAAAAAAAAAAAAAAALL;
          *(&v145 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v178[32] = v145;
          v179 = v145;
          *v178 = v145;
          *&v178[16] = v145;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v146 = VRTraceErrorLogLevelToCSTR();
            v147 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v163 = v5;
              if (*v144)
              {
                v148 = 54;
              }

              else
              {
                v148 = 52;
              }

              IPToString(v178, v144);
              v149 = *v144;
              v150 = " DEPRECATED";
              if ((*v144 & 0x40) == 0)
              {
                v150 = &unk_23D4C9CFB;
              }

              *buf = 136317442;
              v151 = " TEMPORARY";
              if ((v149 & 0x10) == 0)
              {
                v151 = &unk_23D4C9CFB;
              }

              v37 = (v149 & 0x20) == 0;
              *&buf[4] = v146;
              v152 = " 2G";
              if (v37)
              {
                v152 = &unk_23D4C9CFB;
              }

              *&buf[12] = 2080;
              *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
              *&buf[22] = 1024;
              *&buf[24] = 989;
              *&buf[28] = 1024;
              *&buf[30] = v60 - 1;
              *&buf[34] = 1024;
              *&buf[36] = v148;
              v5 = v163;
              *&buf[40] = 2080;
              *&buf[42] = v144 + 4;
              *&buf[50] = 2080;
              *&buf[52] = v178;
              *&buf[60] = 2080;
              *&buf[62] = v150;
              *&buf[70] = 2080;
              *&buf[72] = v151;
              LOWORD(v181) = 2080;
              *(&v181 + 2) = v152;
              _os_log_impl(&dword_23D497000, v147, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %d: v%c interface %s %s%s%s%s", buf, 0x5Au);
            }
          }
        }

LABEL_311:
        v77 = v170;
      }

LABEL_312:
      v81 = v81->ifa_next;
      if (!v81)
      {
        goto LABEL_319;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v104 = VRTraceErrorLogLevelToCSTR();
      v105 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v104;
        *&buf[12] = 2080;
        *&buf[14] = "IsPDPInterface";
        *&buf[22] = 1024;
        *&buf[24] = 612;
        *&buf[28] = 1024;
        *&buf[30] = 612;
        *&buf[34] = 2080;
        *&buf[36] = v94;
        _os_log_error_impl(&dword_23D497000, v105, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/IPAddr.c:%d: if_name:%s not found", buf, 0x2Cu);
      }

      v106 = 0;
LABEL_206:
      v77 = v170;
      if (!v85)
      {
        goto LABEL_219;
      }

      goto LABEL_209;
    }

LABEL_208:
    v106 = 0;
    if (!v85)
    {
      goto LABEL_219;
    }

    goto LABEL_209;
  }

LABEL_319:
  if (v172 >= 3)
  {
    close(v172);
  }

  if (v171 != -1)
  {
    close(v171);
  }

  if (v176)
  {
    MEMORY[0x23EEE25D0]();
  }

  if (v174)
  {
    free(v174);
  }

  if (v168)
  {
    free(v168);
  }

  *v5 = v77;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v158 = VRTraceErrorLogLevelToCSTR();
    v159 = *MEMORY[0x277CE5818];
    v160 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v158;
        *&buf[12] = 2080;
        *&buf[14] = "GetLocalInterfaceListWithOptionsAndCellInterfaceName";
        *&buf[22] = 1024;
        *&buf[24] = 1012;
        *&buf[28] = 1024;
        *&buf[30] = v60;
        _os_log_impl(&dword_23D497000, v159, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Interfaces count=%d.", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
    {
      GetLocalInterfaceListWithOptionsAndCellInterfaceName_cold_7();
    }
  }

LABEL_109:
  v61 = *MEMORY[0x277D85DE8];
  return v60;
}

uint64_t IsAWDLInterface(unsigned int a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  memset(v5, 170, sizeof(v5));
  if_indextoname(a1, v5);
  __strlcpy_chk();
  if (!ioctl(a2, 0xC020698EuLL, &v6))
  {
    result = (v7 >> 20) & 1;
    goto LABEL_7;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_5;
  }

  VRTraceErrorLogLevelToCSTR();
  result = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
  if (result)
  {
    IsAWDLInterface_cold_1();
LABEL_5:
    result = 0;
  }

LABEL_7:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IsBluetoothInterface(unsigned int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(cStr, 170, sizeof(cStr));
  if (!if_indextoname(a1, cStr))
  {
    IsBluetoothInterface_cold_3(&v8);
LABEL_8:
    v5 = v8;
    goto LABEL_5;
  }

  v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!v1)
  {
    IsBluetoothInterface_cold_2(&v8);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = _SCNetworkInterfaceCreateWithBSDName();
  if (v3)
  {
    v4 = v3;
    v5 = _SCNetworkInterfaceIsBluetoothP2P() != 0;
    CFRelease(v2);
    CFRelease(v4);
  }

  else
  {
    IsBluetoothInterface_cold_1(v2);
    v5 = 0;
  }

LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void FreeLocalInterfaceList(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t Get80211BSSID(uint64_t a1, char *a2)
{
  v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + 4), 0x8000100u);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  if (Apple80211Open())
  {
LABEL_6:
    CFRelease(v4);
    return 0xFFFFFFFFLL;
  }

  if (Apple80211BindToInterface() || Apple80211CopyValue())
  {
LABEL_5:
    Apple80211Close();
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(0xAAAAAAAAAAAAAAAALL, @"BSSID");
  if (!Value)
  {
    CFRelease(0xAAAAAAAAAAAAAAAALL);
    goto LABEL_5;
  }

  CString = CFStringGetCString(Value, a2, 18, 0x8000100u);
  CFRelease(0xAAAAAAAAAAAAAAAALL);
  Apple80211Close();
  CFRelease(v4);
  if (CString)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t IPPORTToSA(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*a1)
  {
    return 0;
  }

  if (!a3)
  {
LABEL_6:
    *a2 = 0;
    *(a2 + 8) = 0;
    *a2 = 528;
    *(a2 + 4) = bswap32(*(a1 + 20));
    *(a2 + 2) = bswap32(*(a1 + 36)) >> 16;
    return a2;
  }

  if (*a3 >= 0x10u)
  {
    *a3 = 16;
    goto LABEL_6;
  }

  return 0;
}

uint64_t IPPORTToSA6(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = a2;
  if (a3)
  {
    if (*a3 < 0x1Cu)
    {
      return 0;
    }

    *a3 = 28;
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *a2 = 7708;
  *(a2 + 2) = bswap32(*(a1 + 36)) >> 16;
  if (*a1)
  {
    *(a2 + 8) = *(a1 + 20);
  }

  else
  {
    *(a2 + 18) = -1;
    *(a2 + 20) = bswap32(*(a1 + 20));
  }

  if (*(a1 + 20) == 254 && (*(a1 + 21) & 0xC0) == 0x80)
  {
    *(a2 + 24) = if_nametoindex((a1 + 4));
  }

  return v3;
}

uint64_t SAToIPPORTWithInterfaceIndexToNameCallback(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (*(a1 + 1) != 30)
  {
    *a2 = 0;
    v5 = *(a1 + 4);
    goto LABEL_7;
  }

  if (!*(a1 + 8) && !*(a1 + 12) && *(a1 + 16) == -65536)
  {
    *a2 = 0;
    v5 = *(a1 + 20);
LABEL_7:
    *(a2 + 20) = bswap32(v5);
    *(a2 + 36) = bswap32(*(a1 + 2)) >> 16;
    return a2;
  }

  *a2 = 1;
  *(a2 + 20) = *(a1 + 8);
  *(a2 + 36) = bswap32(*(a1 + 2)) >> 16;
  if (a3)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      a3(a4, v6, a2 + 4);
    }
  }

  return a2;
}

BOOL IsIPPORTValid(uint64_t a1)
{
  if (*a1)
  {
    if (*(a1 + 20) != *MEMORY[0x277D85EE8] || *(a1 + 28) != *(MEMORY[0x277D85EE8] + 8))
    {
      return *(a1 + 36) != 0;
    }
  }

  else if (*(a1 + 20))
  {
    return *(a1 + 36) != 0;
  }

  return 0;
}

uint64_t htonIPPORT(uint64_t result)
{
  v1 = *result;
  if ((*result & 1) == 0)
  {
    *(result + 20) = bswap32(*(result + 20));
  }

  *result = bswap32(v1);
  *(result + 36) = bswap32(*(result + 36)) >> 16;
  return result;
}

uint64_t ntohIPPORT(uint64_t result)
{
  v1 = bswap32(*result);
  *result = v1;
  if ((v1 & 1) == 0)
  {
    *(result + 20) = bswap32(*(result + 20));
  }

  *(result + 36) = bswap32(*(result + 36)) >> 16;
  return result;
}

uint64_t GetLocalIFIndexForDstIPPort(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*a1 & 1) != 0 && *(a1 + 20) == 254 && ((v2 = *(a1 + 21), (v2 & 0xC0) == 0x80) || v2 >= 0xC0) && *(a1 + 22))
  {
    LocalIFIndexForDstIPPortFromBuffer = __rev16(*(a1 + 22));
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAAALL;
    v7 = 0xAAAAAAAAAAAAAAAALL;
    v8 = xmmword_23D4C9CB0;
    v9 = 1;
    if ((reliableSysctl(&v8, &v6, &v7) & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          GetLocalIFIndexForDstIPPort_cold_1();
        }
      }

      LocalIFIndexForDstIPPortFromBuffer = 0;
    }

    else
    {
      LocalIFIndexForDstIPPortFromBuffer = GetLocalIFIndexForDstIPPortFromBuffer(a1, v6, v7);
      free(v6);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return LocalIFIndexForDstIPPortFromBuffer;
}

uint64_t reliableSysctl(int *a1, void *a2, size_t *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0;
  if (!a1)
  {
    reliableSysctl_cold_6(buf);
LABEL_24:
    v11 = *buf;
    goto LABEL_22;
  }

  if (!a2)
  {
    reliableSysctl_cold_5(buf);
    goto LABEL_24;
  }

  if (!a3)
  {
    reliableSysctl_cold_4(buf);
    goto LABEL_24;
  }

  v6 = sysctl(a1, 6u, 0, &v18, 0, 0);
  if (!v6)
  {
    v7 = MEMORY[0x277CE5818];
    while (1)
    {
      v18 += v18 >> 2;
      v8 = malloc_type_malloc(v18, 0x100004077774924uLL);
      if (!v8)
      {
        reliableSysctl_cold_3(&v18, buf);
        goto LABEL_24;
      }

      v9 = v8;
      v10 = sysctl(a1, 6u, v8, &v18, 0, 0);
      if (v10)
      {
        v11 = v10;
        if (v10 != -1 || *__error() != 12)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
            {
              reliableSysctl_cold_2();
            }
          }

          goto LABEL_21;
        }

        free(v9);
        v18 = 0;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v20 = v12;
            v21 = 2080;
            v22 = "reliableSysctl";
            v23 = 1024;
            v24 = 361;
            v25 = 1024;
            v26 = 361;
            _os_log_error_impl(&dword_23D497000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/IPAddr.c:%d: buffer size has changed, trying again", buf, 0x22u);
          }
        }

        v9 = 0;
      }

      v14 = v18;
      if (v18)
      {
        v11 = 0;
        *a2 = v9;
        *a3 = v14;
        goto LABEL_22;
      }

      v15 = sysctl(a1, 6u, 0, &v18, 0, 0);
      if (v15)
      {
        v11 = v15;
        goto LABEL_26;
      }
    }
  }

  v11 = v6;
  v9 = 0;
LABEL_26:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      reliableSysctl_cold_1();
    }
  }

  if (v9)
  {
LABEL_21:
    free(v9);
  }

LABEL_22:
  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t GetLocalIFIndexForDstIPPortFromBuffer(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v62 = v3;
  v63 = v3;
  v60 = v3;
  v61 = v3;
  if (a3 < 1)
  {
    HIDWORD(v58) = 0;
    goto LABEL_125;
  }

  v4 = a2;
  v57 = 0;
  v58 = 0;
  v5 = &a2[a3];
  v6 = a1 + 20;
  v7 = MEMORY[0x277D85DF8];
  while (2)
  {
    v8 = v4 + 92;
    if ((v4 + 92) > v5)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_125;
      }

      v46 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_125;
      }

      *buf = 136315650;
      *&buf[4] = v46;
      *&buf[12] = 2080;
      *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
      *&buf[22] = 1024;
      *&buf[24] = 1388;
      v43 = " [%s] %s:%d Unable to read message header";
      goto LABEL_135;
    }

    v9 = v4;
    v10 = *v4;
    if (v10 <= 0x5B)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_125;
      }

      v47 = VRTraceErrorLogLevelToCSTR();
      v48 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_125;
      }

      v49 = *v9;
      *buf = 136315906;
      *&buf[4] = v47;
      *&buf[12] = 2080;
      *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
      *&buf[22] = 1024;
      *&buf[24] = 1389;
      *&buf[28] = 1024;
      *&buf[30] = v49;
      v43 = " [%s] %s:%d Message length too small: %d";
      v50 = v48;
      v51 = 34;
LABEL_136:
      _os_log_error_impl(&dword_23D497000, v50, OS_LOG_TYPE_ERROR, v43, buf, v51);
      goto LABEL_125;
    }

    v4 += v10;
    if (&v9[v10] > v5)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_125;
      }

      v52 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_125;
      }

      *buf = 136315650;
      *&buf[4] = v52;
      *&buf[12] = 2080;
      *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
      *&buf[22] = 1024;
      *&buf[24] = 1392;
      v43 = " [%s] %s:%d Message is too short";
LABEL_135:
      v50 = v42;
      v51 = 28;
      goto LABEL_136;
    }

    v11 = 0;
    v12 = 0;
    v13 = *(v9 + 3);
    while (((v13 >> v11) & 1) == 0)
    {
      *(&v60 + v11) = 0;
LABEL_18:
      v12 = v11++ > 6;
      if (v11 == 8)
      {
        goto LABEL_26;
      }
    }

    if (v8 + 1 > v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = "get_rtaddrs";
          *&buf[22] = 1024;
          *&buf[24] = 1215;
          v17 = v16;
          v18 = " [%s] %s:%d Failed to retrieve address length";
          v19 = 28;
          goto LABEL_120;
        }
      }

LABEL_25:
      if (v12)
      {
        goto LABEL_26;
      }

LABEL_121:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = v41;
          *&buf[12] = 2080;
          *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
          *&buf[22] = 1024;
          *&buf[24] = 1398;
          v43 = " [%s] %s:%d Failed to parse addresses";
          goto LABEL_135;
        }
      }

      goto LABEL_125;
    }

    v14 = *v8;
    if (!*v8)
    {
      if (v8 + 4 > v4)
      {
        goto LABEL_23;
      }

      v14 = 4;
      goto LABEL_17;
    }

    if ((v14 & 3) != 0)
    {
      v14 = (v14 | 3) + 1;
    }

    if (&v8[v14] <= v4)
    {
LABEL_17:
      *(&v60 + v11) = v8;
      v8 += v14;
      goto LABEL_18;
    }

LABEL_23:
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_25;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v40 = *v8;
    if (*v8)
    {
      if ((v40 & 3) != 0)
      {
        v40 = (v40 | 3) + 1;
      }
    }

    else
    {
      v40 = 4;
    }

    *buf = 136316162;
    *&buf[4] = v20;
    *&buf[12] = 2080;
    *&buf[14] = "get_rtaddrs";
    *&buf[22] = 1024;
    *&buf[24] = 1219;
    *&buf[28] = 1024;
    *&buf[30] = v40;
    *&buf[34] = 1024;
    *&buf[36] = v4 - v8;
    v17 = v21;
    v18 = " [%s] %s:%d Address is too short. Expected=%d Available=%d";
    v19 = 40;
LABEL_120:
    _os_log_error_impl(&dword_23D497000, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
    if (!v12)
    {
      goto LABEL_121;
    }

LABEL_26:
    if ((v9[8] & 1) == 0 || (v22 = v60) == 0)
    {
LABEL_113:
      if (v4 < v5)
      {
        continue;
      }

      goto LABEL_125;
    }

    break;
  }

  v23 = *(v60 + 1);
  if (*a1)
  {
    if (v23 != 30)
    {
      goto LABEL_113;
    }
  }

  else if (v23 != 2)
  {
    goto LABEL_113;
  }

  if (v60 + 16 > v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = v53;
        *&buf[12] = 2080;
        *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
        *&buf[22] = 1024;
        *&buf[24] = 1408;
        v43 = " [%s] %s:%d IP address extends past the end of the message";
        goto LABEL_135;
      }
    }
  }

  else if (*v60 <= 0xFu)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v54 = VRTraceErrorLogLevelToCSTR();
      v42 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = v54;
        *&buf[12] = 2080;
        *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
        *&buf[22] = 1024;
        *&buf[24] = 1409;
        v43 = " [%s] %s:%d IP address struct is larger than it's stored length";
        goto LABEL_135;
      }
    }
  }

  else
  {
    fwrite("=======================\n", 0x18uLL, 1uLL, *v7);
    fprintf(*v7, "index = %d\n", *(v9 + 2));
    fwrite("flags =", 7uLL, 1uLL, *v7);
    v24 = *(v9 + 2);
    if (v24)
    {
      fwrite(" UP", 3uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 2) != 0)
      {
        goto LABEL_61;
      }

LABEL_36:
      if ((v24 & 4) == 0)
      {
        goto LABEL_37;
      }

LABEL_62:
      fwrite(" HOST", 5uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 8) != 0)
      {
        goto LABEL_63;
      }

LABEL_38:
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_39;
      }

LABEL_64:
      fwrite(" DYNAMIC", 8uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x20) != 0)
      {
        goto LABEL_65;
      }

LABEL_40:
      if ((v24 & 0x40) == 0)
      {
        goto LABEL_41;
      }

LABEL_66:
      fwrite(" DONE", 5uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x80) != 0)
      {
        goto LABEL_67;
      }

LABEL_42:
      if ((v24 & 0x100) == 0)
      {
        goto LABEL_43;
      }

LABEL_68:
      fwrite(" CLONING", 8uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x200) != 0)
      {
        goto LABEL_69;
      }

LABEL_44:
      if ((v24 & 0x400) == 0)
      {
        goto LABEL_45;
      }

LABEL_70:
      fwrite(" LLINFO", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x800) != 0)
      {
        goto LABEL_71;
      }

LABEL_46:
      if ((v24 & 0x1000) == 0)
      {
        goto LABEL_47;
      }

LABEL_72:
      fwrite(" BLACKHOLE", 0xAuLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x4000) != 0)
      {
        goto LABEL_73;
      }

LABEL_48:
      if ((v24 & 0x8000) == 0)
      {
        goto LABEL_49;
      }

LABEL_74:
      fwrite(" PROTO1", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x10000) != 0)
      {
        goto LABEL_75;
      }

LABEL_50:
      if ((v24 & 0x20000) == 0)
      {
        goto LABEL_51;
      }

LABEL_76:
      fwrite(" WASCLONED", 0xAuLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x40000) != 0)
      {
        goto LABEL_77;
      }

LABEL_52:
      if ((v24 & 0x100000) == 0)
      {
        goto LABEL_53;
      }

LABEL_78:
      fwrite(" PINNED", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x200000) != 0)
      {
        goto LABEL_79;
      }

LABEL_54:
      if ((v24 & 0x400000) == 0)
      {
        goto LABEL_55;
      }

LABEL_80:
      fwrite(" BROADCAST", 0xAuLL, 1uLL, *v7);
      if ((*(v9 + 2) & 0x800000) != 0)
      {
LABEL_56:
        fwrite(" MULTICAST", 0xAuLL, 1uLL, *v7);
      }
    }

    else
    {
      if ((v24 & 2) == 0)
      {
        goto LABEL_36;
      }

LABEL_61:
      fwrite(" GATEWAY", 8uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 4) != 0)
      {
        goto LABEL_62;
      }

LABEL_37:
      if ((v24 & 8) == 0)
      {
        goto LABEL_38;
      }

LABEL_63:
      fwrite(" REJECT", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x10) != 0)
      {
        goto LABEL_64;
      }

LABEL_39:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_40;
      }

LABEL_65:
      fwrite(" MODIFIED", 9uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x40) != 0)
      {
        goto LABEL_66;
      }

LABEL_41:
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_67:
      fwrite(" DELCLONE", 9uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x100) != 0)
      {
        goto LABEL_68;
      }

LABEL_43:
      if ((v24 & 0x200) == 0)
      {
        goto LABEL_44;
      }

LABEL_69:
      fwrite(" XRESOLVE", 9uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x400) != 0)
      {
        goto LABEL_70;
      }

LABEL_45:
      if ((v24 & 0x800) == 0)
      {
        goto LABEL_46;
      }

LABEL_71:
      fwrite(" STATIC", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x1000) != 0)
      {
        goto LABEL_72;
      }

LABEL_47:
      if ((v24 & 0x4000) == 0)
      {
        goto LABEL_48;
      }

LABEL_73:
      fwrite(" PROTO2", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x8000) != 0)
      {
        goto LABEL_74;
      }

LABEL_49:
      if ((v24 & 0x10000) == 0)
      {
        goto LABEL_50;
      }

LABEL_75:
      fwrite(" PRCLONING", 0xAuLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x20000) != 0)
      {
        goto LABEL_76;
      }

LABEL_51:
      if ((v24 & 0x40000) == 0)
      {
        goto LABEL_52;
      }

LABEL_77:
      fwrite(" PROTO3", 7uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x100000) != 0)
      {
        goto LABEL_78;
      }

LABEL_53:
      if ((v24 & 0x200000) == 0)
      {
        goto LABEL_54;
      }

LABEL_79:
      fwrite(" LOCAL", 6uLL, 1uLL, *v7);
      v24 = *(v9 + 2);
      if ((v24 & 0x400000) != 0)
      {
        goto LABEL_80;
      }

LABEL_55:
      if ((v24 & 0x800000) != 0)
      {
        goto LABEL_56;
      }
    }

    fputc(10, *v7);
    fprintf(*v7, "addrs = %d\n", *(v9 + 3));
    v25 = *(&v60 + 1);
    if (*(&v60 + 1))
    {
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&buf[16] = v26;
      *&buf[32] = v26;
      *buf = v26;
      v64[0] = v26;
      v64[1] = v26;
      v65 = 0xAAAAAAAAAAAAAAAALL;
      SAToIPPORTWithInterfaceIndexToNameCallback(*(&v60 + 1), v64, DefaultInterfaceIndexToNameCallback, 0);
      if (*(v25 + 1) == 18)
      {
        fprintf(*v7, "GATEWAY(%d) = LLADDR\n");
      }

      else
      {
        v27 = *v7;
        IPToString(buf, v64);
        fprintf(v27, "GATEWAY(%d) = %s\n");
      }
    }

    v28 = v22[1];
    if (v28 != 30)
    {
      if (v28 == 2)
      {
        if (v61)
        {
          v29 = *v61;
          *buf = 0;
          __memcpy_chk();
          v30 = bswap32(*buf);
        }

        else
        {
          v30 = -1;
        }

        if ((*v6 & v30) == bswap32(*(v22 + 1)) && v30 >= v58)
        {
          LODWORD(v58) = v30;
          HIDWORD(v58) = *(v9 + 2);
        }
      }

      goto LABEL_113;
    }

    if (v22 + 28 > v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v55 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = v55;
          *&buf[12] = 2080;
          *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
          *&buf[22] = 1024;
          *&buf[24] = 1441;
          v43 = " [%s] %s:%d IPv6 address extends past the end of the message";
          goto LABEL_135;
        }
      }
    }

    else
    {
      if (*v22 > 0x1Bu)
      {
        if (v22[8] == 254)
        {
          v31 = v22[9];
          if ((v31 & 0xC0) == 0x80 || v31 >= 0xC0)
          {
            *(v22 + 6) = bswap32(*(v22 + 5)) >> 16;
            *(v22 + 5) = 0;
          }
        }

        memset(buf, 170, 16);
        if (v61)
        {
          v32 = *v61;
          *buf = 0;
          *&buf[8] = 0;
          __memcpy_chk();
        }

        else
        {
          *buf = -1;
          *&buf[8] = -1;
        }

        v33 = 0;
        while ((buf[v33] & *(v6 + v33)) == v22[v33 + 8])
        {
          if (++v33 == 16)
          {
            v34 = 0;
            v35 = buf;
            while (1)
            {
              v37 = *v35++;
              v36 = v37;
              if (v37 != 255)
              {
                break;
              }

              v34 += 8;
              if (v34 == 128)
              {
                goto LABEL_111;
              }
            }

            v38 = v34 + 8;
            v39 = 7;
            while (((v36 >> v39) & 1) != 0)
            {
              LODWORD(v34) = v34 + 1;
              if (--v39 == -1)
              {
                LODWORD(v34) = v38;
                break;
              }
            }

LABEL_111:
            if (v34 >= v57)
            {
              HIDWORD(v58) = *(v9 + 2);
              v57 = v34;
            }

            goto LABEL_113;
          }
        }

        goto LABEL_113;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v56 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = v56;
          *&buf[12] = 2080;
          *&buf[14] = "GetLocalIFIndexForDstIPPortFromBuffer";
          *&buf[22] = 1024;
          *&buf[24] = 1442;
          v43 = " [%s] %s:%d IPv6 struct is larger than it's stored length";
          goto LABEL_135;
        }
      }
    }
  }

LABEL_125:
  v44 = *MEMORY[0x277D85DE8];
  return HIDWORD(v58);
}

uint64_t GetConnectionTypeFromCellTech(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_23D4C9CC0[a1 - 1];
  }
}

BOOL IsConnectionDowngrading(int a1, int a2)
{
  v2 = (a2 + 1) < 3;
  v3 = (a2 + 1) < 4;
  if (a1 != 6)
  {
    v3 = 1;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  v4 = a1 != 1 || (a2 + 1) < 2;
  if (!a1)
  {
    v4 = a2 == -1;
  }

  if (a1 > 1)
  {
    v4 = v2;
  }

  return a1 != a2 && v4;
}

uint64_t CompareWithFlippedIP(uint64_t a1, uint64_t a2)
{
  v2 = vandq_s8(*(a2 + 20), *(a1 + 20));
  *v2.i8 = vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  return (v2.i32[0] | v2.i32[1]);
}

_DWORD *FlipIP(_DWORD *result, _DWORD *a2)
{
  result[5] = ~a2[5];
  result[6] = ~a2[6];
  result[7] = ~a2[7];
  result[8] = ~a2[8];
  return result;
}

const char *CelltechToStr(int a1, unsigned int a2)
{
  if (!a1)
  {
    return "NonCellular";
  }

  if (a2 > 9)
  {
    return "Invalid";
  }

  return off_278BD3F30[a2];
}

uint64_t FillSockAddrStorage(uint64_t result, unsigned int *a2, unsigned int a3, int a4, uint64_t a5)
{
  if (a4)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = 7708;
    *(result + 2) = __rev16(a3);
    if (a5)
    {
      v7 = bswap32(*a2);
      return nw_nat64_synthesize_v6();
    }

    else
    {
      if (a2)
      {
        v6 = *a2;
      }

      else
      {
        v6 = *MEMORY[0x277D85EE8];
      }

      *(result + 8) = v6;
    }
  }

  else
  {
    *result = 0;
    *(result + 8) = 0;
    *result = 528;
    if (a2)
    {
      v5 = bswap32(*a2);
    }

    else
    {
      v5 = 0;
    }

    *(result + 4) = v5;
    *(result + 2) = __rev16(a3);
  }

  return result;
}

BOOL IsSameAddressAndPort(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  if (v2 != *(a2 + 1))
  {
    return 0;
  }

  if (v2 == 30)
  {
    if (*(a1 + 2) == *(a2 + 2))
    {
      return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
    }

    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  return *(a1 + 2) == *(a2 + 2);
}

uint64_t IsInterfaceRoutable(int a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (nwi_state_get_first_ifstate())
    {
      do
      {
        ifname = nwi_ifstate_get_ifname();
        v5 = if_nametoindex(ifname);
        v6 = v5 == a1;
      }

      while (v5 != a1 && nwi_ifstate_get_next());
    }

    else
    {
      return 0;
    }
  }

  else
  {
    IsInterfaceRoutable_cold_1(&v8);
    return v8;
  }

  return v6;
}

uint64_t VCCTServiceMonitor_GetIsInHomeCountry(_BYTE *a1)
{
  if (a1)
  {
    if ([+[VCCTServiceMonitor supportsCellular] sharedInstance]
    {
      os_unfair_lock_lock([+[VCCTServiceMonitor statusLock] sharedInstance];
      v2 = [+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor dataStatus];
      if (v2)
      {
        v3 = v2;
        if (objc_opt_respondsToSelector())
        {
          v4 = [(CTDataStatus *)v3 inHomeCountry];
          v5 = 0;
          *a1 = v4;
        }

        else
        {
          v5 = 0xFFFFFFFFLL;
        }

        os_unfair_lock_unlock([+[VCCTServiceMonitor statusLock] sharedInstance];
      }

      else
      {
        VCCTServiceMonitor_GetIsInHomeCountry_cold_2();
        return v8;
      }
    }

    else
    {
      VCCTServiceMonitor_GetIsInHomeCountry_cold_1();
      return v7;
    }
  }

  else
  {
    VCCTServiceMonitor_GetIsInHomeCountry_cold_3();
    return v9;
  }

  return v5;
}

uint64_t VCCTServiceMonitor_GetDataIndicatorStatus(_DWORD *a1)
{
  if (a1)
  {
    if ([+[VCCTServiceMonitor supportsCellular] sharedInstance]
    {
      os_unfair_lock_lock([+[VCCTServiceMonitor statusLock] sharedInstance];
      v2 = [+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor dataStatus];
      if (v2)
      {
        v3 = v2;
        if (objc_opt_respondsToSelector())
        {
          v4 = [(CTDataStatus *)v3 indicator];
          v5 = 0;
          *a1 = v4;
        }

        else
        {
          v5 = 0xFFFFFFFFLL;
        }

        os_unfair_lock_unlock([+[VCCTServiceMonitor statusLock] sharedInstance];
      }

      else
      {
        VCCTServiceMonitor_GetDataIndicatorStatus_cold_2();
        return v8;
      }
    }

    else
    {
      VCCTServiceMonitor_GetDataIndicatorStatus_cold_1();
      return v7;
    }
  }

  else
  {
    VCCTServiceMonitor_GetDataIndicatorStatus_cold_3();
    return v9;
  }

  return v5;
}

uint64_t VCCTServiceMonitor_GetDataIndicatorStatusOverride(_DWORD *a1)
{
  if (a1)
  {
    if ([+[VCCTServiceMonitor supportsCellular] sharedInstance]
    {
      os_unfair_lock_lock([+[VCCTServiceMonitor statusLock] sharedInstance];
      v2 = [+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor dataStatus];
      if (v2)
      {
        v3 = v2;
        if (objc_opt_respondsToSelector())
        {
          v4 = [(CTDataStatus *)v3 indicatorOverride];
          v5 = 0;
          *a1 = v4;
        }

        else
        {
          v5 = 0xFFFFFFFFLL;
        }

        os_unfair_lock_unlock([+[VCCTServiceMonitor statusLock] sharedInstance];
      }

      else
      {
        VCCTServiceMonitor_GetDataIndicatorStatusOverride_cold_2();
        return v8;
      }
    }

    else
    {
      VCCTServiceMonitor_GetDataIndicatorStatusOverride_cold_1();
      return v7;
    }
  }

  else
  {
    VCCTServiceMonitor_GetDataIndicatorStatusOverride_cold_3();
    return v9;
  }

  return v5;
}

uint64_t VCCTServiceMonitor_GetRadioAccessTechnology(_DWORD *a1)
{
  if (a1)
  {
    if ([+[VCCTServiceMonitor supportsCellular] sharedInstance]
    {
      os_unfair_lock_lock([+[VCCTServiceMonitor statusLock] sharedInstance];
      v2 = [+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor dataStatus];
      if (v2)
      {
        v3 = v2;
        if (objc_opt_respondsToSelector())
        {
          v4 = [(CTDataStatus *)v3 radioTechnology];
          v5 = 0;
          *a1 = v4;
        }

        else
        {
          v5 = 0xFFFFFFFFLL;
        }

        os_unfair_lock_unlock([+[VCCTServiceMonitor statusLock] sharedInstance];
      }

      else
      {
        VCCTServiceMonitor_GetRadioAccessTechnology_cold_2();
        return v8;
      }
    }

    else
    {
      VCCTServiceMonitor_GetRadioAccessTechnology_cold_1();
      return v7;
    }
  }

  else
  {
    VCCTServiceMonitor_GetRadioAccessTechnology_cold_3();
    return v9;
  }

  return v5;
}

uint64_t VCCTServiceMonitor_CopyConnectionStatusInterfaceName(void *a1)
{
  if (a1)
  {
    if ([+[VCCTServiceMonitor supportsCellular] sharedInstance]
    {
      v2 = [+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor connectionStatus];
      if (v2)
      {
        v3 = [(CTDataConnectionStatus *)v2 interfaceName];
        result = 0;
        *a1 = v3;
      }

      else
      {
        VCCTServiceMonitor_CopyConnectionStatusInterfaceName_cold_2();
        return v6;
      }
    }

    else
    {
      VCCTServiceMonitor_CopyConnectionStatusInterfaceName_cold_1();
      return v5;
    }
  }

  else
  {
    VCCTServiceMonitor_CopyConnectionStatusInterfaceName_cold_3();
    return v7;
  }

  return result;
}

uint64_t VCCTServiceMonitor_GetSignalStrength(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (!a1)
  {
    VCCTServiceMonitor_GetSignalStrength_cold_7();
    return v10;
  }

  if (!a2)
  {
    VCCTServiceMonitor_GetSignalStrength_cold_6();
    return v10;
  }

  if (!a3)
  {
    VCCTServiceMonitor_GetSignalStrength_cold_5();
    return v10;
  }

  if (![+[VCCTServiceMonitor supportsCellular] sharedInstance]
  {
    VCCTServiceMonitor_GetSignalStrength_cold_1();
    return v10;
  }

  if (![+[VCCTServiceMonitor connectionStatus] sharedInstance]
  {
    VCCTServiceMonitor_GetSignalStrength_cold_4();
    return v10;
  }

  if ([(CTDataConnectionStatus *)[+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor connectionStatus] state]
  {
    VCCTServiceMonitor_GetSignalStrength_cold_2();
    return v10;
  }

  v6 = [+[VCCTServiceMonitor sharedInstance](VCCTServiceMonitor signalStrength];
  if (!v6)
  {
    VCCTServiceMonitor_GetSignalStrength_cold_3();
    return v10;
  }

  v7 = v6;
  *a1 = [-[CTSignalStrengthInfo bars](v6 "bars")];
  *a2 = [-[CTSignalStrengthInfo displayBars](v7 "displayBars")];
  v8 = [-[CTSignalStrengthInfo maxDisplayBars](v7 "maxDisplayBars")];
  result = 0;
  *a3 = v8;
  return result;
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void OUTLINED_FUNCTION_6_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void CompressCandidateList_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = "CompressCandidateList";
  v5 = 1024;
  v6 = 290;
  v7 = 1024;
  v8 = v0;
  _os_log_error_impl(&dword_23D497000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d malloc (%d) bytes failed", v3, 0x22u);
  v2 = *MEMORY[0x277D85DE8];
}

void UncompressCandidateList_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = "UncompressCandidateList";
  v5 = 1024;
  v6 = 337;
  v7 = 1024;
  v8 = 337;
  v9 = 1024;
  v10 = v0;
  _os_log_error_impl(&dword_23D497000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Candidate.c:%d: malloc(%d) failed", v3, 0x28u);
  v2 = *MEMORY[0x277D85DE8];
}

void ICECompressCandidates_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICECompressCandidates_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICECompressCandidates_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICECompressCandidates_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidatesForPeer_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: malloc failed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: PE candidate collection failed due to termination of existing ICE check!\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: PE candidate collection timed out\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: PE candidate collection failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: PE candidate collection failed due totermination of existing ICE check!\n", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: Relay Allocate request failed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_12()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICECompressCandidates failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_14()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_15()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetCandidates_cold_16()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: No candidate is collected!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICERetainICEList_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 148);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
  v8 = *MEMORY[0x277D85DE8];
}

void ICEGetNewCandidates_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: malloc failed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void AddOneICEList_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void AddOneICEList_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void AddOneICEList_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEReleaseAndFreeICEList_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 148);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
  v8 = *MEMORY[0x277D85DE8];
}

void ICEUpdateNAT64FlagForInterface_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEUpdateNAT64FlagForInterface: failed due to invalid handle.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEAddOneInterfaceWithPriorityHints_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEAddOneInterfaceWithPriorityHints_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEAddOneInterface failed due to invalid handle.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICERemoveOneInterface_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICERemoveOneInterface failed due to invalid handle.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICECreateHandleWithCallback_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICECreateHandle:pthread_mutexattr_init failed...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICECreateHandleWithCallback_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICECreateHandleWithCallback_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEStartConnectivityCheckN_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: UpdateRBRefreshTypeAndDictionary: Can't get transactionID", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEStartConnectivityCheckN_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEStartConnectivityCheckN_cold_3(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
  v8 = *MEMORY[0x277D85DE8];
}

void ICEStartConnectivityCheckN_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEStartConnectivityCheckN_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEStartConnectivityCheckN_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEStartConnectivityCheckN_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEStartConnectivityCheckN_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEStartConnectivityCheckN_cold_9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEStartConnectivityCheckN_cold_10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEStartConnectivityCheckN_cold_11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEStartConnectivityCheckN_cold_12()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEStartConnectivityCheckN_cold_13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEProcessRemoteInterfaceChange_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEProcessRemoteInterfaceChange_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetRemoteCIDForDstIPPort_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEGetRemoteCIDForDstIPPort found no match.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEGetNextBestCandidate_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEAddRemovedLocalIPPort_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: realloc failed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEAddRemovedRemoteIPPort_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: realloc failed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEAddRemovedRemoteIPPort_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEDiscardResult_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEDiscardResult failed due to invalid handle.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICECloseHandle_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICECloseHandle failed due to invalid handle.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void DiscardOneRelayBindingWithChannelNumber_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEStopConnectivityCheck_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICESetSKEState_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetExtIPPorts_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEGetExtIPPorts timed out...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEGetExtIPPorts_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetExtIPPorts_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetExtIPPorts_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEGetExtIPPorts failed due to invalid handle.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEGetExtIPIndex_cold_1(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
  v8 = *MEMORY[0x277D85DE8];
}

void ICESetForceRelay_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEUpdateRole_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEUpdateRole_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEUpdateRole failed due to invalid handle.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEUpdateServingNetworkInfo_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEUpdateServingNetworkInfo_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEUpdateRole failed due to invalid handle.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEUpdateCellTech_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEUpdateCellTech_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEUpdateCellTech failed due to invalid handle.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEGetCellTech_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetCellTech_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEGetRemoteCellTech failed due to invalid handle.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEGetConnErrorCode_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ICEGetConnErrorCode_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEUpdateRole failed due to invalid handle.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEDisableCandidatePairFilter_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEDisableCandidatePairFilter failed due to invalid handle.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEInterfaceNeedsUpdateExternalMapping_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEInterfaceNeedsUpdateExternalMapping failed due to invalid handle", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ICEInterfaceNeedsUpdateExternalMapping_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICE.c:%d: ICEInterfaceNeedsUpdateExternalMapping failed due to invalid pointer", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void MatchCandidatePairWithIDs_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void SaveSTUNRequest_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_12_0(&dword_23D497000, v0, v1, " [%s] %s:%d calloc(%d) failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void SaveSTUNRequest_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void ProcessEvent_cold_1(uint64_t a1, unsigned __int16 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
  v8 = *MEMORY[0x277D85DE8];
}

void ProcessEvent_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void ProcessEvent_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void ProcessEvent_cold_4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(&dword_23D497000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d EncodeChannelDataMessage returns error (%08X)", v2, 0x22u);
  v1 = *MEMORY[0x277D85DE8];
}

void ProcessEvent_cold_5(uint64_t a1, unsigned __int16 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
  v8 = *MEMORY[0x277D85DE8];
}

void ProcessEvent_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void ProcessEvent_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void ProcessEvent_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void InsertEvent_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void ConnectivityCheckProc_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void ConnectivityCheckProc_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_12_0(&dword_23D497000, v0, v1, " [%s] %s:%d malloc failed(%08X)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ConnectivityCheckProc_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void ConnectivityCheckProc_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void ConnectivityCheckProc_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void ConnectivityCheckProc_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void ConnectivityCheckProc_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void AddRelayCandidatePair_cold_1(uint64_t a1, unsigned int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
  v8 = *MEMORY[0x277D85DE8];
}

void AddRelayCandidatePair_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void ProcessNewCandidates_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void AddConnectivityCheckResult_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

void AddConnectivityCheckResult_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_12_0(&dword_23D497000, v0, v1, " [%s] %s:%d calloc(%d) failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void AddConnectivityCheckResult_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x277D85DE8];
}

void ProcessMessageType_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ProcessMessageType failed due to invalid parameter.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessCollectionResponse_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ProcessAllocateResponse failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessCollectionResponse_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ParseSTUNMessage failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessCollectionResponse_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ProcessSNATMAPResponse failed (%08X)\n", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessCollectionResponse_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Unable to read message type. Packet is too short:%d", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void SendRelayChannelBindRequest_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: SaveSTUNRequest failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void SendRelayChannelBindRequest_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: \tUDPSENDCALLBACK failed(%08X).", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void SendRelayChannelBindRequest_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: STUNEncodeMessage failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void SendRelayChannelBindRequest_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: MakeChannelBindRequest failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void MakeBindingRequest_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ICECompressCandidates failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void MakeBindingRequest_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: malloc failed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void DelayedICEUpdateAfterNominationResponse_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Failed while allocating a copy of candidate pair...", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ICE_ROLE_CONTORLLED CONFLICT!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ICE_ROLE_CONTORLLING CONFLICT!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: SKEState_SetBlob(1) failed with error %d", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: SKEState_CopyBlobSync(1) failed with error %d", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_5(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = 136316162;
  v5 = a1;
  v6 = 2080;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_0();
  v7 = v1;
  v8 = "HRESULT ProcessBindingRequest(PICEINFO, PICELIST, PSTUNMSG, PIPPORT, double)";
  _os_log_error_impl(&dword_23D497000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: %s: Callee - SKEOptimization enabled but pSKEState = NULL. Call is disconnecting", &v4, 0x2Cu);
  v3 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_6(uint64_t a1, unsigned int *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_0();
  HIWORD(v11) = v3;
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v4, v5, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: PairUpCandidate returned invalid pair (%d)", v7, v8, v9, v10, v11);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: \tUDPSENDCALLBACK failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: STUNEncodeMessage failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: MakeBindingResponse failed(%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: InsertEvent failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_11()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: PairUpCandidate failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_12()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: \tUDPSENDCALLBACK failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_13()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: STUNEncodeMessage failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_14()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: MakeBindingResponse failed(%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_15()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: \tUDPSENDCALLBACK failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_16()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: \tError encoding the channel data message.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_17()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: STUNEncodeMessage failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_18()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: MakeBindingResponse failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_19()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Invalid PROTO-TYPE in BINDING_REQUEST.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessBindingRequest_cold_20()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Invalid USENAME in BINDING_REQUEST.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void MakeBindingResponse_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ICECompressCandidates failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void MakeBindingResponse_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: malloc failed.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void MakeBindingResponse_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Invalid USERNAME in BINDING-REQUEST.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessConnCheckMessage_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: ParseSTUNMessage failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingResponse_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: missing attribute NTP_DELAY", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessBindingResponse_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: SKEState_SetBlob(1) failed with error %d", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingResponse_cold_3(uint64_t a1, unsigned int *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_0();
  HIWORD(v11) = v3;
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v4, v5, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: PairUpCandidate returned invalid pair (%d)", v7, v8, v9, v10, v11);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessBindingResponse_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: PairUpCandidate failed (%08X)", v3, v4, v5, v6, v7);
  v2 = *MEMORY[0x277D85DE8];
}

void ProcessBindingResponse_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Invalid PROTO-TYPE in BINDING_RESPONSE.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessBindingResponse_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Invalid MAPPED-ADDRESS in BINDING_RESPONSE.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessBindingResponse_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/ICEMessage.c:%d: Invalid USENAME in BINDING_RESPONSE.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void EQInit_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "EQInit";
  v4 = 1024;
  v5 = 9;
  v6 = 1024;
  v7 = 9;
  _os_log_error_impl(&dword_23D497000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/peq.c:%d: fail to initialize event queue.", v2, 0x22u);
  v1 = *MEMORY[0x277D85DE8];
}

void EQPush_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "EQPush";
  v4 = 1024;
  v5 = 23;
  v6 = 1024;
  v7 = 23;
  _os_log_error_impl(&dword_23D497000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/peq.c:%d: event is empty!", v2, 0x22u);
  v1 = *MEMORY[0x277D85DE8];
}

void MakeAllocateRequest_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  HIWORD(v8) = v0;
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v1, v2, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: MakeAllocateRequest: get server addr failed (%08X)", v4, v5, v6, v7, v8);
  v3 = *MEMORY[0x277D85DE8];
}

void MakeChannelBindRequest_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  HIWORD(v8) = v0;
  OUTLINED_FUNCTION_4_0(&dword_23D497000, v1, v2, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: MakeChannelBindRequest: get peer addr failed (%08X)", v4, v5, v6, v7, v8);
  v3 = *MEMORY[0x277D85DE8];
}

void RelayRefreshProc_cold_1(uint64_t a1, unsigned int *a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  *v5 = 136316162;
  *&v5[4] = a1;
  *&v5[12] = 2080;
  *&v5[14] = "RelayRefreshProc";
  OUTLINED_FUNCTION_4_0(&dword_23D497000, a2, a3, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: RelayRefreshProc timed out...tear down channel#[%04X]", *v5, *&v5[8], "RelayRefreshProc" >> 16, 445, 0x4000000);
  v4 = *MEMORY[0x277D85DE8];
}

void RelayDiscardProc_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: RelayDiscardProc timed out.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessAllocateResponse_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: No MESSAGE_INTEGRITY in allocate response!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void ProcessAllocateErrorResponse_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7(&dword_23D497000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/Relay.c:%d: Allocation Mismatch, server is not ready?", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

double machTimeScale_cold_1()
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  qword_27E2DC7C8 = *&result;
  __dmb(0xBu);
  _MergedGlobals = 1;
  return result;
}

uint64_t STUNEncodeMessage(unsigned __int16 *a1, uint64_t a2, int *a3, const void *a4, __n128 a5)
{
  v107 = *MEMORY[0x277D85DE8];
  result = 2148794376;
  if (!a2)
  {
    result = 2148794369;
    goto LABEL_88;
  }

  v8 = *a3;
  if (v8 >= 0x14)
  {
    v9 = bswap32(a1[1] & 0xF | *a1 | (2 * a1[1]) & 0xE0 | (4 * a1[1]) & 0x3E00);
    v10 = HIWORD(v9);
    *a2 = HIWORD(v9);
    *(a2 + 2) = 0;
    if (a1[3])
    {
      *(a2 + 4) = 1118048801;
      v11 = *(a1 + 6);
      *(a2 + 16) = *(a1 + 5);
      *(a2 + 8) = v11;
    }

    else
    {
      a5 = *(a1 + 4);
      *(a2 + 4) = a5;
    }

    v12 = a2 + 20;
    if (*(a1 + 7) < 1)
    {
LABEL_87:
      result = 0;
      *(a2 + 2) = bswap32(v12 - a2 - 20) >> 16;
      *a3 = v12 - a2;
      goto LABEL_88;
    }

    HIDWORD(v95) = v10;
    v13 = 0;
    v14 = v8 - 20;
    a5.n128_u64[0] = 136316162;
    v96 = a5;
    while (1)
    {
      v15 = &a1[28 * v13 + 16];
      v16 = *v15;
      v17 = 0;
      switch(*v15)
      {
        case 1u:
          v46 = OUTLINED_FUNCTION_3_0();
          v50 = 1;
          goto LABEL_47;
        case 2u:
          v46 = OUTLINED_FUNCTION_3_0();
          v50 = 2;
          goto LABEL_47;
        case 3u:
          if (v14 <= 7)
          {
            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_117;
            }

            v87 = VRTraceErrorLogLevelToCSTR();
            v78 = *MEMORY[0x277CE5818];
            if (!OUTLINED_FUNCTION_8_1())
            {
              goto LABEL_117;
            }

            v101 = v87;
            v102 = 2080;
            *buf = v96;
            OUTLINED_FUNCTION_4_1();
            v103 = 106;
            v104 = 2048;
            *v105 = v14;
            *&v105[8] = 2048;
            *&v105[10] = 8;
            v88 = " [%s] %s:%d Buffer is too short. bufferLength=%zu requiredLength=%zu";
            goto LABEL_113;
          }

          *v12 = 67109632;
          *(v12 + 4) = ((*(v15 + 9) << 25) | (*(v15 + 8) << 26)) & 0x6000000;
          v17 = 8;
LABEL_9:
          v12 += v17;
          v14 -= v17;
          goto LABEL_82;
        case 4u:
          v46 = OUTLINED_FUNCTION_3_0();
          v50 = 4;
          goto LABEL_47;
        case 5u:
          v46 = OUTLINED_FUNCTION_3_0();
          v50 = 5;
          goto LABEL_47;
        case 6u:
          OUTLINED_FUNCTION_7_0();
          if (!v41 & v40)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v78 = *MEMORY[0x277CE5818];
              v79 = OUTLINED_FUNCTION_8_1();
              if (v79)
              {
                goto LABEL_112;
              }
            }

            goto LABEL_117;
          }

          v42 = 1536;
          goto LABEL_24;
        case 7u:
          OUTLINED_FUNCTION_7_0();
          if (!v41 & v40)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v78 = *MEMORY[0x277CE5818];
              v79 = OUTLINED_FUNCTION_8_1();
              if (v79)
              {
                goto LABEL_112;
              }
            }

            goto LABEL_117;
          }

          v42 = 1792;
          goto LABEL_24;
        case 8u:
          qmemcpy(v106, "ABCDEFGHIJABCDEFGHIJ", 20);
          if (a4)
          {
            MessageIntegrityFromDict = GetMessageIntegrityFromDict(a4, v106);
            if (MessageIntegrityFromDict < 0)
            {
              v52 = MessageIntegrityFromDict;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                v53 = *MEMORY[0x277CE5818];
                v54 = os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR);
                if (v54)
                {
                  OUTLINED_FUNCTION_2_0(v54, v55, v56, v57, v58, v59, v60, v61, v94, v95, v96);
                  OUTLINED_FUNCTION_4_1();
                  OUTLINED_FUNCTION_9_0();
                  *&v105[6] = v52;
                  _os_log_error_impl(&dword_23D497000, v53, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/STUNEncoder.c:%d: GetMessageIntegrityFromDict failed (%08X)\n", buf, 0x28u);
                }
              }
            }
          }

          v62 = OUTLINED_FUNCTION_3_0();
          result = STUNEncodeAttrMI(v62, v63, v64, v65, v66);
          goto LABEL_44;
        case 9u:
          v5 = *(v15 + 3) + 8;
          if (v5 > v14)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v78 = *MEMORY[0x277CE5818];
              v79 = OUTLINED_FUNCTION_8_1();
              if (v79)
              {
                goto LABEL_112;
              }
            }

            goto LABEL_117;
          }

          *v12 = 2304;
          OUTLINED_FUNCTION_6_1(v15[6] + 4);
          *(v12 + 4) = 0;
          *(v12 + 6) = *(v15 + 8);
          *(v12 + 7) = *(v15 + 9);
          v43 = *(v15 + 2);
          v44 = *(v15 + 3);
          v45 = (v12 + 8);
          goto LABEL_32;
        case 0xAu:
          v5 = 2 * (*(v15 + 2) / 2) + 4;
          if (v5 > v14)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v78 = *MEMORY[0x277CE5818];
              v79 = OUTLINED_FUNCTION_8_1();
              if (v79)
              {
                goto LABEL_112;
              }
            }

            goto LABEL_117;
          }

          *v12 = 2560;
          OUTLINED_FUNCTION_6_1(v15[4]);
          if (*(v15 + 2) >= 2)
          {
            v67 = 0;
            do
            {
              *(v12 + 4 + 2 * v67) = bswap32(*(*(v15 + 2) + 2 * v67)) >> 16;
              ++v67;
            }

            while (v67 < *(v15 + 2) / 2);
          }

          goto LABEL_79;
        case 0xBu:
        case 0x14u:
        case 0x15u:
        case 0x20u:
          goto LABEL_9;
        case 0xCu:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 12;
          goto LABEL_77;
        case 0xDu:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 13;
          goto LABEL_77;
        case 0xEu:
        case 0x17u:
        case 0x1Bu:
        case 0x1Cu:
        case 0x1Du:
        case 0x1Eu:
        case 0x1Fu:
        case 0x21u:
        case 0x23u:
          goto LABEL_15;
        case 0xFu:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 15;
          goto LABEL_77;
        case 0x10u:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 16;
          goto LABEL_77;
        case 0x11u:
          v46 = OUTLINED_FUNCTION_3_0();
          v50 = 17;
LABEL_47:
          result = STUNEncodeAttrAddress(v46, v47, v50, v48, v49);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_88;
          }

          goto LABEL_78;
        case 0x12u:
          v68 = OUTLINED_FUNCTION_5_1();
          v73 = 18;
          goto LABEL_62;
        case 0x13u:
          OUTLINED_FUNCTION_7_0();
          if (!v41 & v40)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v78 = *MEMORY[0x277CE5818];
              v79 = OUTLINED_FUNCTION_8_1();
              if (v79)
              {
                goto LABEL_112;
              }
            }

            goto LABEL_117;
          }

          v42 = 4864;
          goto LABEL_24;
        case 0x16u:
          v68 = OUTLINED_FUNCTION_5_1();
          v73 = 22;
LABEL_62:
          result = STUNEncodeAttrXORAddress(v68, v69, v73, v70, v71, v72);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_88;
          }

          goto LABEL_78;
        case 0x18u:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 24;
          goto LABEL_77;
        case 0x19u:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 25;
          goto LABEL_77;
        case 0x1Au:
          v36 = OUTLINED_FUNCTION_5_1();
          v39 = 26;
          goto LABEL_70;
        case 0x22u:
          v74 = *(v15 + 1);
          v24 = OUTLINED_FUNCTION_3_0();
          v28 = 34;
          goto LABEL_85;
        case 0x24u:
          v18 = OUTLINED_FUNCTION_1_0();
          v22 = 36;
LABEL_77:
          result = STUNEncodeAttrU32(v18, v19, v22, v20, v21);
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_78;
          }

          goto LABEL_88;
        case 0x25u:
          v36 = OUTLINED_FUNCTION_5_1();
          v39 = 37;
LABEL_70:
          result = STUNEncodeAttr(v36, v37, v39, v38);
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_88;
          }

          goto LABEL_78;
        default:
          switch(*v15)
          {
            case 0x8001u:
              v18 = OUTLINED_FUNCTION_1_0();
              v22 = 32769;
              goto LABEL_77;
            case 0x8002u:
              goto LABEL_15;
            case 0x8003u:
              v18 = OUTLINED_FUNCTION_1_0();
              v22 = 32771;
              goto LABEL_77;
            case 0x8004u:
              v18 = OUTLINED_FUNCTION_1_0();
              v22 = 32772;
              goto LABEL_77;
            case 0x8005u:
              v18 = OUTLINED_FUNCTION_1_0();
              v22 = 32773;
              goto LABEL_77;
            case 0x8006u:
              v36 = OUTLINED_FUNCTION_5_1();
              v39 = 32774;
              goto LABEL_70;
            case 0x8007u:
              v18 = OUTLINED_FUNCTION_1_0();
              v22 = 32775;
              goto LABEL_77;
            case 0x8008u:
              v18 = OUTLINED_FUNCTION_1_0();
              v22 = 32776;
              goto LABEL_77;
            case 0x8009u:
              v75 = *(v15 + 4);
              v5 = v75 + 6;
              if (v75 + 6 > v14)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  VRTraceErrorLogLevelToCSTR();
                  v78 = *MEMORY[0x277CE5818];
                  v79 = OUTLINED_FUNCTION_8_1();
                  if (v79)
                  {
                    goto LABEL_112;
                  }
                }

LABEL_117:
                result = 2148794376;
                goto LABEL_88;
              }

              *v12 = 2432;
              OUTLINED_FUNCTION_6_1(v75 + 2);
              *(v12 + 4) = bswap32(v15[4]) >> 16;
              v43 = *(v15 + 3);
              v44 = *(v15 + 4);
              v45 = (v12 + 6);
              goto LABEL_32;
            case 0x800Au:
              OUTLINED_FUNCTION_7_0();
              if (!v41 & v40)
              {
                if (VRTraceGetErrorLogLevelForModule() < 3)
                {
                  goto LABEL_117;
                }

                VRTraceErrorLogLevelToCSTR();
                v78 = *MEMORY[0x277CE5818];
                v79 = OUTLINED_FUNCTION_8_1();
                if (!v79)
                {
                  goto LABEL_117;
                }

LABEL_112:
                OUTLINED_FUNCTION_2_0(v79, v80, v81, v82, v83, v84, v85, v86, v94, v95, v96);
                OUTLINED_FUNCTION_4_1();
                OUTLINED_FUNCTION_0_1();
                v88 = " [%s] %s:%d Buffer is too short. bufferLength=%zu requiredLength=%zu";
LABEL_113:
                v89 = v78;
                v90 = 48;
                goto LABEL_114;
              }

              v42 = 2688;
LABEL_24:
              *v12 = v42;
              OUTLINED_FUNCTION_6_1(v15[4]);
              v43 = *(v15 + 2);
              v44 = *(v15 + 2);
              v45 = (v12 + 4);
LABEL_32:
              memcpy(v45, v43, v44);
              goto LABEL_79;
            default:
              if (v16 == 32809)
              {
                v76 = *(v15 + 1);
                v24 = OUTLINED_FUNCTION_3_0();
                v28 = 32809;
LABEL_85:
                result = STUNEncodeAttrU64(v24, v25, v28, v26, v27);
                if ((result & 0x80000000) != 0)
                {
                  goto LABEL_88;
                }

                goto LABEL_78;
              }

              if (v16 == 32810)
              {
                v23 = *(v15 + 1);
                v24 = OUTLINED_FUNCTION_3_0();
                v28 = 32810;
                goto LABEL_85;
              }

LABEL_15:
              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                v29 = VRTraceErrorLogLevelToCSTR();
                v30 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v96;
                  v101 = v29;
                  v102 = 2080;
                  OUTLINED_FUNCTION_4_1();
                  OUTLINED_FUNCTION_9_0();
                  *&v105[6] = v16;
                  _os_log_impl(&dword_23D497000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/ICE.subproj/Sources/STUNEncoder.c:%d: Attrib %d not encoded correctly", buf, 0x28u);
                }
              }

              v31 = *v15;
              v32 = OUTLINED_FUNCTION_3_0();
              result = STUNEncodeAttrAddress(v32, v33, v34, v15 + 8, v35);
LABEL_44:
              if ((result & 0x80000000) != 0)
              {
                goto LABEL_88;
              }

LABEL_78:
              v5 = 0;
LABEL_79:
              v12 += v5;
              v14 -= v5;
              if ((v5 & 3) != 0)
              {
                v5 = -v5 & 3;
                if (v14 < v5)
                {
                  if (VRTraceGetErrorLogLevelForModule() < 3)
                  {
                    goto LABEL_117;
                  }

                  v91 = VRTraceErrorLogLevelToCSTR();
                  v92 = *MEMORY[0x277CE5818];
                  if (!OUTLINED_FUNCTION_8_1())
                  {
                    goto LABEL_117;
                  }

                  *buf = 136316418;
                  v101 = v91;
                  v102 = 2080;
                  OUTLINED_FUNCTION_4_1();
                  v103 = 559;
                  v104 = v93;
                  *v105 = HIDWORD(v95);
                  *&v105[4] = 2048;
                  *&v105[6] = v5;
                  *&v105[14] = 2048;
                  *&v105[16] = v14;
                  v88 = " [%s] %s:%d Failed to add padding. type=%d, padding=%zu remainingLength=%zu";
                  v89 = v92;
                  v90 = 54;
LABEL_114:
                  _os_log_error_impl(&dword_23D497000, v89, OS_LOG_TYPE_ERROR, v88, buf, v90);
                  goto LABEL_117;
                }

                v12 += v5;
                v14 -= v5;
              }

LABEL_82:
              if (++v13 >= *(a1 + 7))
              {
                goto LABEL_87;
              }

              break;
          }

          break;
      }
    }
  }

LABEL_88:
  v77 = *MEMORY[0x277D85DE8];
  return result;
}