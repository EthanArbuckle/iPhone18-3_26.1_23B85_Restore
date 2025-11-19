uint64_t VCNetworkConditionMonitor_SetWiFiChannelQualityScore(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNetworkConditionMonitor_SetWiFiChannelQualityScore_block_invoke;
    block[3] = &__block_descriptor_tmp_6;
    v5 = a2;
    block[4] = a1;
    dispatch_async(v2, block);
    return 0;
  }

  else
  {
    VCNetworkConditionMonitor_SetWiFiChannelQualityScore_cold_1();
    return v6;
  }
}

uint64_t VCNetworkConditionMonitor_SetCellSignalStrengthBars(uint64_t a1, char a2, char a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNetworkConditionMonitor_SetCellSignalStrengthBars_block_invoke;
    block[3] = &__block_descriptor_tmp_7;
    v6 = a2;
    block[4] = a1;
    v7 = a3;
    dispatch_async(v3, block);
    return 0;
  }

  else
  {
    VCNetworkConditionMonitor_SetCellSignalStrengthBars_cold_1();
    return v8;
  }
}

uint64_t VCNetworkConditionMonitor_SetRemoteNetworkQuality(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNetworkConditionMonitor_SetRemoteNetworkQuality_block_invoke;
    block[3] = &__block_descriptor_tmp_8;
    block[4] = a1;
    v5 = a2;
    dispatch_async(v2, block);
    return 0;
  }

  else
  {
    VCNetworkConditionMonitor_SetRemoteNetworkQuality_cold_1();
    return v6;
  }
}

uint64_t VCNetworkConditionMonitor_SetIsLocalActiveOnCellular(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __VCNetworkConditionMonitor_SetIsLocalActiveOnCellular_block_invoke;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = a1;
    v5 = a2;
    dispatch_async(v2, block);
    return 0;
  }

  else
  {
    VCNetworkConditionMonitor_SetIsLocalActiveOnCellular_cold_1();
    return v6;
  }
}

double _VCNetworkConditionMonitor_Init(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void _VCNetworkConditionMonitor_Finalize(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 128) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_sync(v3, &__block_literal_global_11);
    v4 = *(a1 + 32);

    dispatch_release(v4);
  }
}

void OUTLINED_FUNCTION_8_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x1Cu);
}

double VCRedundancyControllerVideo_ConvertRedundancyPercentageToRatio(unsigned int a1)
{
  result = 3.0;
  if (a1 <= 0x12C)
  {
    return a1 / 100.0;
  }

  return result;
}

void VCMediaKeyIndex_Release(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = 0;
}

uint64_t VCMediaKeyIndex_ReleaseAndCopyNewValue(const void **a1, void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  result = [a2 copy];
  *a1 = result;
  return result;
}

uint64_t VCMediaKeyIndex_UniquePrefixBytes(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && (v4 = a3, a3))
  {
    bzero(a2, a3);
    objc_sync_enter(a1);
    memcpy(a2, (a1 + 8), v4);
    objc_sync_exit(a1);
  }

  else
  {
    VCMediaKeyIndex_UniquePrefixBytes_cold_1(&v7);
    return v7;
  }

  return v4;
}

const char *VCMediaKeyIndex_Description(void *a1)
{
  v1 = [a1 description];

  return CFStringGetCStringPtr(v1, 0x8000100u);
}

uint64_t VCMediaKeyIndex_CreateMediaKeyIndexWithUUIDString(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a1];
  v2 = [VCMediaKeyIndex alloc];

  return [(VCMediaKeyIndex *)v2 initWithNSUUID:v1];
}

void StallModeTracePrint_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (g_fpStallModeDump)
  {
    v21[0] = 0;
    memset(v20, 170, sizeof(v20));
    gettimeofday(v20, 0);
    *&v20[16] = &a9;
    vasprintf(v21, a5, &a9);
    if (v21[0])
    {
      v19.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v19.tm_mon = v10;
      *&v19.tm_isdst = v10;
      *&v19.tm_sec = v10;
      localtime_r(v20, &v19);
      v11 = g_fpStallModeDump;
      tm_hour = v19.tm_hour;
      VRTraceErrorLogLevelToCSTR();
      VRLogfilePrint(v11, "%02d:%02d:%02d.%06d <%s> %s: %s\n", v13, v14, v15, v16, v17, v18, tm_hour);
      free(v21[0]);
    }
  }
}

uint64_t initialBitrateTierFromLearntBitrateWithCellTech(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((a3 - 5) > 4)
    {
      v6 = @"S";
    }

    else
    {
      v6 = *(&off_1E85F5038 + (a3 - 5));
    }
  }

  else
  {
    v6 = @"W";
  }

  v7 = g_adwTxRateTiers[a6];
  if (a4)
  {
    if ((a5 - 5) > 4)
    {
      v8 = @"S";
    }

    else
    {
      v8 = *(&off_1E85F5038 + (a5 - 5));
    }
  }

  else
  {
    v8 = @"W";
  }

  v9 = CFStringCreateWithFormat(0, 0, @"%@:%@", v6, v8);
  LearntBitrateForSegment = reportingGetLearntBitrateForSegment();
  CFRelease(v9);
  LODWORD(v11) = 38;
  while (1)
  {
    v11 = (v11 - 1);
    if (g_adwTxRateTiers[v11] <= LearntBitrateForSegment)
    {
      break;
    }

    if (v11 <= 1)
    {
      v11 = 0;
      break;
    }
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
        *buf = 136316674;
        v17 = v12;
        v18 = 2080;
        v19 = "initialBitrateTierFromLearntBitrateWithCellTech";
        v20 = 1024;
        v21 = 1160;
        v22 = 2112;
        v23 = v9;
        v24 = 1024;
        v25 = LearntBitrateForSegment;
        v26 = 1024;
        v27 = v11;
        v28 = 1024;
        v29 = v7;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AdaptiveLearning(AFRC): Setting up initial bitrate for segment %@ - learnt target bitrate %d, selected tier %d, default bitrate %d", buf, 0x38u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      v17 = v12;
      v18 = 2080;
      v19 = "initialBitrateTierFromLearntBitrateWithCellTech";
      v20 = 1024;
      v21 = 1160;
      v22 = 2112;
      v23 = v9;
      v24 = 1024;
      v25 = LearntBitrateForSegment;
      v26 = 1024;
      v27 = v11;
      v28 = 1024;
      v29 = v7;
      _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d AdaptiveLearning(AFRC): Setting up initial bitrate for segment %@ - learnt target bitrate %d, selected tier %d, default bitrate %d", buf, 0x38u);
    }
  }

  return v11;
}

uint64_t AFRCCreateHandle(uint64_t *a1, uint64_t a2, const void *a3, int *a4)
{
  v135 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_calloc(1uLL, 0x2680uLL, 0x10E00404730A826uLL);
  if (v8)
  {
    v9 = v8;
    v10 = (v8 + 1024);
    v8[351] = a2;
    MediaQueue_SetAudioFECLevel(1.0);
    *(v9 + 2736) = 0x3FF0000000000000;
    __asm { FMOV            V0.2D, #1.0 }

    *(v9 + 2720) = _Q0;
    *(v9 + 2700) = 0u;
    if ((*(a4 + 54) & 1) == 0)
    {
      *v9 = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v16;
          v125 = 2080;
          v126 = "AFRCCreateHandle";
          v127 = 1024;
          v128 = 1189;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRCCreateHandle: RTCReportingAgent is nil", buf, 0x1Cu);
        }
      }
    }

    v18 = *a4;
    *(v9 + 2928) = *a4;
    v19 = a4[1];
    *(v9 + 2932) = v19;
    v20 = a4[2];
    *(v9 + 2936) = v20;
    v21 = a4[3];
    *(v9 + 2940) = v21;
    v22 = a4[4];
    *(v9 + 9696) = v22;
    v23 = a4[5];
    *(v9 + 2944) = v23;
    *(v9 + 2632) = a4[8];
    v10[1509] = a4[10] != 0;
    *(v9 + 2696) = a4[11] != 0;
    *(v9 + 2824) = a4[12];
    *(v10 + 823) = *(a4 + 26);
    v10[1660] = *(a4 + 55);
    v24 = 0.5;
    if (v23)
    {
      v24 = 1.0;
    }

    *(v9 + 2456) = v24;
    if (v18)
    {
      if (v20 == 2)
      {
LABEL_18:
        *(v9 + 2948) = 1;
        goto LABEL_20;
      }

      if (v20 != 7)
      {
        if (v20 != 4)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      *(v9 + 2952) = 1;
    }

LABEL_20:
    v10[1508] = 0;
    if (v22)
    {
      v25 = 0;
      v26 = 3;
      *(v9 + 28) = 3;
      *(v9 + 36) = 3;
      *(v9 + 2464) = 0x4000000000000000;
      *(v9 + 2456) = 0x3FF0000000000000;
      goto LABEL_30;
    }

    if (!*(v9 + 2948))
    {
      if (*(v9 + 2952))
      {
        v26 = 5;
        *(v9 + 28) = 5;
        *(v9 + 36) = 5;
        v27 = 0x3FF0000000000000;
        goto LABEL_28;
      }

      if (!v19 || v21 != 4 && v21 != 2)
      {
        v113 = initialBitrateTierFromLearntBitrateWithCellTech(a3, v18 != 0, v20, v19 != 0, v21, 10);
        *(v9 + 28) = v113;
        *(v9 + 32) = v113;
        *(v9 + 36) = 10;
        *(v9 + 2464) = 0x3FF0000000000000;
        v26 = v113;
        goto LABEL_29;
      }
    }

    v26 = 3;
    *(v9 + 28) = 3;
    *(v9 + 36) = 3;
    v27 = 0x4000000000000000;
LABEL_28:
    *(v9 + 2464) = v27;
LABEL_29:
    *(v9 + 40) = 0;
    v25 = 1;
LABEL_30:
    *(v9 + 2480) = v25;
    v28 = g_adwTxRateTiers[v26];
    *(v9 + 44) = v28;
    *(v9 + 9816) = v28;
    *(v9 + 9808) = micro();
    v10[1608] = 0;
    *(v9 + 20) = vdup_n_s32(0x927C0u);
    *(v9 + 1400) = 0x100000001;
    *(v9 + 1396) = 5;
    *(v9 + 80) = xmmword_1DBD45C30;
    *(v9 + 96) = 0x3FC3333333333333;
    *(v9 + 104) = micro();
    *(v9 + 68) = -1;
    ConfigureAFRCDefaults(v9);
    *(v9 + 9576) = 0x3FF0000000000000;
    v10[1432] = -1;
    *(v9 + 152) = 0;
    *(v9 + 2504) = 0;
    *(v9 + 2520) = 0;
    *(v9 + 2512) = 0;
    *(v9 + 2632) = 2;
    *(v9 + 9704) = 0;
    *(v9 + 9712) = 0;
    *(v9 + 140) = 0;
    v29 = micro();
    *(v9 + 9672) = v29;
    *(v9 + 9680) = v29;
    v30 = RateMonitorCreateWithHistoryLength(300);
    *(v9 + 9768) = v30;
    RateMonitorConfigureWithThresholds(v30, 228000.0, 0.1, 0.15, 0.5);
    RateMonitorStart(*(v9 + 9768));
    *(v9 + 9796) = 0;
    v31 = RateMonitorCreateWithHistoryLength(300);
    *(v9 + 9784) = v31;
    RateMonitorConfigureWithThresholds(v31, 0.0, 0.1, 0.1, 0.5);
    RateMonitorStart(*(v9 + 9784));
    *(v9 + 688) = 0;
    pthread_mutex_init((v9 + 280), 0);
    pthread_mutex_init((v9 + 2560), 0);
    pthread_mutex_init((v9 + 2744), 0);
    pthread_mutex_init((v9 + 2864), 0);
    Handle = CreateHandle();
    *a1 = Handle;
    if (Handle == 0xFFFFFFFFLL)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          AFRCCreateHandle_cold_3();
        }
      }

      pthread_mutex_destroy((v9 + 280));
      pthread_mutex_destroy((v9 + 2560));
      pthread_mutex_destroy((v9 + 2744));
      pthread_mutex_destroy((v9 + 2864));
      free(v9);
      return 2149646341;
    }

    else
    {
      reportingRegisterPeriodicTask();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v35 = "YES";
          v36 = *(v9 + 2936);
          if (*(v9 + 2928))
          {
            v37 = "YES";
          }

          else
          {
            v37 = "NO";
          }

          v38 = *(v9 + 2940);
          if (!*(v9 + 2932))
          {
            v35 = "NO";
          }

          *buf = 136316674;
          *&buf[4] = v33;
          v125 = 2080;
          v126 = "AFRCCreateHandle";
          v127 = 1024;
          v128 = 1503;
          v129 = 2080;
          *v130 = v37;
          *&v130[8] = 1024;
          LODWORD(v131) = v36;
          WORD2(v131) = 2080;
          *(&v131 + 6) = v35;
          HIWORD(v131) = 1024;
          *v132 = v38;
          _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRCCreateHandle (CellTech local[%s:%d] remote[%s:%d]).", buf, 0x3Cu);
        }
      }

      v40 = a4[6];
      v39 = a4[7];
      v41 = a4[9];
      *(v9 + 2816) = v40;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v42 = VRTraceErrorLogLevelToCSTR();
        v43 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v44 = "enabled";
          *buf = 136315906;
          *&buf[4] = v42;
          v125 = 2080;
          v126 = "AFRCLog_OpenLogs";
          if (!v40)
          {
            v44 = "disabled";
          }

          v127 = 1024;
          v128 = 823;
          v129 = 2080;
          *v130 = v44;
          _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ### AFRC log %s", buf, 0x26u);
        }
      }

      if (v39 && (memset(buf, 170, sizeof(buf)), __sprintf_chk(buf, 0, 0xCuLL, "%010u", *(v9 + 2824)), v45 = VRLogfileAlloc(0, buf, "AFRC", ".afrcdump", "com.apple.VideoConference.AFRClog", 9), *(v9 + 2832) = v45, VRLogfilePrintSync(v45, "STime\t\tdTime/ETxTS\tOWRD\tNOWRD\tNOWRDS\tNOWRDA\tUp\tRTT\tPLR/FEC\tRRx\tMBL\tLRx\tBR/TR\tMQIn: A/V\tMQOut: A/V\tABRL\tQD\tBDL\tTxAT\tMODE\tTxSTATE\tAudio:PL/Rate\n", v46, v47, v48, v49, v50, v51, v121), VRLogfilePrintSync(*(v9 + 2832), "connection #: %d.\n", v52, v53, v54, v55, v56, v57, *(v9 + 2632)), *(v9 + 2832)))
      {
        v58 = *(v9 + 2824);
        if (AFRCLog_OpenStallModeLog_once != -1)
        {
          AFRCCreateHandle_cold_1();
        }

        pthread_mutex_lock(&g_fpStallModeDumpOpenCloseLock);
        VRLogfileFree(&g_fpStallModeDump);
        memset(buf, 170, sizeof(buf));
        __sprintf_chk(buf, 0, 0xCuLL, "%010u", v58);
        g_fpStallModeDump = VRLogfileAlloc(0, buf, "AFRC", ".stalldump", "com.apple.VideoConference.StallModeDump", 32);
        pthread_mutex_unlock(&g_fpStallModeDumpOpenCloseLock);
        memset(buf, 170, sizeof(buf));
        __sprintf_chk(buf, 0, 0xCuLL, "%010u", *(v9 + 2824));
        v59 = VRLogfileAlloc(0, buf, "AFRC", ".fbdump", "com.apple.VideoConference.AFRClogFB", 32);
        *(v9 + 2840) = v59;
        VRLogfilePrintSync(v59, "MyTxTS\tDelay\tRecvKb\tBLoss\tAudioRecvPkt\tVideoRecvPkt\tYrTxTS\tOWRD\n", v60, v61, v62, v63, v64, v65, v122);
        AFRCLog_OpenBBLog(v9, v41, 0, v66, v67, v68, v69, v70);
        v71 = 1;
      }

      else
      {
        v71 = 0;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v72 = VRTraceErrorLogLevelToCSTR();
        v73 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v74 = "disabled";
          *buf = 136315906;
          *&buf[4] = v72;
          v125 = 2080;
          v126 = "AFRCLog_OpenLogs";
          if (v71)
          {
            v74 = "enabled";
          }

          v127 = 1024;
          v128 = 834;
          v129 = 2080;
          *v130 = v74;
          _os_log_impl(&dword_1DB56E000, v73, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ### AFRC dump %s", buf, 0x26u);
        }
      }

      *(v9 + 672) = 0;
      *(v9 + 968) = 0;
      *(v9 + 980) = 0;
      *(v9 + 984) = 0;
      *(v9 + 992) = 0;
      *(v9 + 976) = 0;
      *(v9 + 1120) = 0;
      *(v9 + 928) = 0;
      *(v9 + 912) = 0u;
      *(v9 + 936) = 0;
      *(v9 + 960) = 0;
      *(v9 + 944) = 0u;
      *(v9 + 1040) = 0;
      *(v9 + 1104) = 1;
      *(v9 + 1128) = 0;
      *(v9 + 1132) = 0;
      *(v9 + 1136) = 0;
      *(v9 + 1144) = 0;
      *(v9 + 1148) = 0u;
      *(v9 + 1196) = 0u;
      *(v9 + 1184) = 0u;
      *(v9 + 1168) = 0u;
      *(v9 + 1216) = 0u;
      *(v9 + 1232) = 0u;
      keyExistsAndHasValidFormat = 0;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"BWEstEnableNewEstSenderSide", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        _ZF = AppIntegerValue == 0;
      }

      else
      {
        _ZF = 0;
      }

      v77 = !_ZF;
      *(v9 + 724) = v77;
      v78 = CFPreferencesGetAppIntegerValue(@"BWEstEnableNewEstRecvrSide", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v79 = v78 == 0;
      }

      else
      {
        v79 = 0;
      }

      v80 = !v79;
      *(v9 + 725) = v80;
      v81 = CFPreferencesGetAppIntegerValue(@"BWEstProbeInterval", @"com.apple.VideoConference", &keyExistsAndHasValidFormat) / 1000000.0;
      if (!keyExistsAndHasValidFormat)
      {
        v81 = 0.666;
      }

      *(v9 + 864) = v81;
      v82 = CFPreferencesGetAppIntegerValue(@"BWEstLogType", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v83 = v82;
      }

      else
      {
        v83 = 0;
      }

      *(v9 + 1112) = v83;
      v84 = CFPreferencesGetAppIntegerValue(@"BWEstLogLevel", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v85 = v84;
      }

      else
      {
        v85 = 0;
      }

      g_iBWEstLogLevel = v85;
      v86 = CFPreferencesGetAppIntegerValue(@"BWEstDemoLogInterval", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v87 = v86;
      }

      else
      {
        v87 = 1000000;
      }

      *(v9 + 1116) = v87;
      v88 = CFPreferencesGetAppIntegerValue(@"HackUploadBW", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v89 = v88 == 0;
      }

      else
      {
        v89 = 1;
      }

      v90 = !v89;
      *(v9 + 1037) = v90;
      v91 = CFPreferencesGetAppIntegerValue(@"V1BWE", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v92 = v91 == 0;
      }

      else
      {
        v92 = 1;
      }

      v93 = !v92;
      *(v9 + 1036) = v93;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v95 = MEMORY[0x1E6986640];
      if (ErrorLogLevelForModule > 7)
      {
        v96 = VRTraceErrorLogLevelToCSTR();
        v97 = *MEMORY[0x1E6986650];
        v98 = *MEMORY[0x1E6986650];
        if (*v95 == 1)
        {
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            v99 = *(v9 + 1037);
            v100 = *(v9 + 1036);
            *buf = 136316162;
            *&buf[4] = v96;
            v125 = 2080;
            v126 = "BWEstConfigureDefaults";
            v127 = 1024;
            v128 = 5830;
            v129 = 1024;
            *v130 = v99;
            *&v130[4] = 1024;
            *&v130[6] = v100;
            _os_log_impl(&dword_1DB56E000, v97, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d HackUploadBW: %d  V1BWE: %d ", buf, 0x28u);
          }
        }

        else if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
        {
          v114 = *(v9 + 1037);
          v115 = *(v9 + 1036);
          *buf = 136316162;
          *&buf[4] = v96;
          v125 = 2080;
          v126 = "BWEstConfigureDefaults";
          v127 = 1024;
          v128 = 5830;
          v129 = 1024;
          *v130 = v114;
          *&v130[4] = 1024;
          *&v130[6] = v115;
          _os_log_debug_impl(&dword_1DB56E000, v97, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d HackUploadBW: %d  V1BWE: %d ", buf, 0x28u);
        }
      }

      *(v9 + 720) = 0;
      *(v9 + 1248) = (*MEMORY[0x1E6986638] | g_iBWEstLogLevel) != 0;
      Throttling_AFRC_Init((v9 + 872));
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v101 = VRTraceErrorLogLevelToCSTR();
        v102 = *MEMORY[0x1E6986650];
        v103 = *MEMORY[0x1E6986650];
        if (*v95 == 1)
        {
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            v104 = *(v9 + 725);
            v105 = *(v9 + 724);
            v106 = *(v9 + 864);
            v107 = *(v9 + 1116);
            v108 = *(v9 + 1112);
            *buf = 136317186;
            *&buf[4] = v101;
            v125 = 2080;
            v126 = "BWEstInit";
            v127 = 1024;
            v128 = 5939;
            v129 = 1024;
            *v130 = v104;
            *&v130[4] = 1024;
            *&v130[6] = v105;
            LOWORD(v131) = 2048;
            *(&v131 + 2) = v106;
            WORD5(v131) = 1024;
            HIDWORD(v131) = v107;
            *v132 = 1024;
            *&v132[2] = v108;
            v133 = 1024;
            v134 = g_iBWEstLogLevel;
            _os_log_impl(&dword_1DB56E000, v102, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ////^^^^ Initial BWEstEnableNewst_Recvr/_Sender %d/%d  \t BWEstProbeInterval: %f  BWEstDemoLogInterval: %d  BWEstLogType: %d  BWEstLogLevel: %x \n", buf, 0x44u);
          }
        }

        else if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
        {
          v116 = *(v9 + 725);
          v117 = *(v9 + 724);
          v118 = *(v9 + 864);
          v119 = *(v9 + 1116);
          v120 = *(v9 + 1112);
          *buf = 136317186;
          *&buf[4] = v101;
          v125 = 2080;
          v126 = "BWEstInit";
          v127 = 1024;
          v128 = 5939;
          v129 = 1024;
          *v130 = v116;
          *&v130[4] = 1024;
          *&v130[6] = v117;
          LOWORD(v131) = 2048;
          *(&v131 + 2) = v118;
          WORD5(v131) = 1024;
          HIDWORD(v131) = v119;
          *v132 = 1024;
          *&v132[2] = v120;
          v133 = 1024;
          v134 = g_iBWEstLogLevel;
          _os_log_debug_impl(&dword_1DB56E000, v102, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d ////^^^^ Initial BWEstEnableNewst_Recvr/_Sender %d/%d  \t BWEstProbeInterval: %f  BWEstDemoLogInterval: %d  BWEstLogType: %d  BWEstLogLevel: %x \n", buf, 0x44u);
        }
      }

      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v109 = VRTraceErrorLogLevelToCSTR();
        v110 = *MEMORY[0x1E6986650];
        v111 = *MEMORY[0x1E6986650];
        if (*v95 == 1)
        {
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = v109;
            v125 = 2080;
            v126 = "BWEstInit";
            v127 = 1024;
            v128 = 5940;
            v129 = 2048;
            *v130 = v9;
            _os_log_impl(&dword_1DB56E000, v110, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ///////////////////////AFRCCreateHandle startAFRC//////////////////////// %p", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
        {
          AFRCCreateHandle_cold_2();
        }
      }

      if ((*(v9 + 1037) & 1) != 0 || *(v9 + 1036) == 1)
      {
        v15 = 0;
        *(v9 + 1024) = 0;
        *(v9 + 1032) = 0;
        *(v9 + 1016) = 0;
        *(v9 + 1000) = 0u;
      }

      else
      {
        return 0;
      }
    }

    return v15;
  }

  v15 = 2149646339;
  if (VRTraceGetErrorLogLevelForModule() >= 2)
  {
    VRTraceErrorLogLevelToCSTR();
    if (VRTraceIsOSFaultDisabled())
    {
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        AFRCCreateHandle_cold_5();
      }
    }

    else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
    {
      AFRCCreateHandle_cold_4();
    }
  }

  return v15;
}

BOOL ConfigureAFRCDefaults(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  ForcedCapBitrate = VCTestMonitorManager_GetForcedCapBitrate();
  *(a1 + 72) = VCDefaults_GetIntValueForKey(@"forcedTxCap", ForcedCapBitrate);
  ForcedTargetBitrate = VCTestMonitorManager_GetForcedTargetBitrate();
  *(a1 + 68) = VCDefaults_GetIntValueForKey(@"forcedTxRate", ForcedTargetBitrate);
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"forcedPLRForAudioFEC100", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  v5 = -1.0;
  v6 = -1.0;
  if (keyExistsAndHasValidFormat)
  {
    v6 = AppIntegerValue / 100.0;
  }

  v7 = CFPreferencesGetAppIntegerValue(@"forcedPLRForAudioFEC150", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v5 = v7 / 100.0;
  }

  v8 = CFPreferencesGetAppIntegerValue(@"forcedPLRForAudioFEC200", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v9 = v8 / 100.0;
  }

  else
  {
    v9 = -1.0;
  }

  if (v6 > 0.0 && v5 > 0.0 && v9 > 0.0 && v5 >= v6 && v9 >= v5 && v9 <= 1.0)
  {
    *(a1 + 80) = v6;
    *(a1 + 88) = v5;
    *(a1 + 96) = v9;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v24 = v10;
        v25 = 2080;
        v26 = "ConfigureAFRCDefaults";
        v27 = 1024;
        v28 = 5771;
        v29 = 2048;
        v30 = v6;
        v31 = 2048;
        v32 = v5;
        v33 = 2048;
        v34 = v9;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Forcing Audio FEC Level 100,150,200 at PLR:(%.2f, %.2f, %.2f) from defaults", buf, 0x3Au);
      }
    }
  }

  v12 = *(a1 + 72);
  if (v12 >= 10000)
  {
    *(a1 + 20) = v12;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 20);
        *buf = 136315906;
        v24 = v13;
        v25 = 2080;
        v26 = "ConfigureAFRCDefaults";
        v27 = 1024;
        v28 = 5775;
        v29 = 1024;
        LODWORD(v30) = v15;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Forcing AFRC TxCap to %u from defaults", buf, 0x22u);
      }
    }
  }

  v16 = *(a1 + 68);
  if ((v16 & 0x80000000) == 0)
  {
    *(a1 + 44) = v16;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 44);
        *buf = 136315906;
        v24 = v17;
        v25 = 2080;
        v26 = "ConfigureAFRCDefaults";
        v27 = 1024;
        v28 = 5779;
        v29 = 1024;
        LODWORD(v30) = v19;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Forcing AFRC TxRate to %u from defaults", buf, 0x22u);
      }
    }
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"rateControlAllowVideoStop", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    AppBooleanValue = *(a1 + 9839);
  }

  *(a1 + 9836) = (*(a1 + 2948) | AppBooleanValue) != 0;
  result = VCDefaults_GetBoolValueForKey(@"rateControlAllowBurstyLossRampDown", *(a1 + 9838));
  *(a1 + 9837) = result;
  return result;
}

uint64_t __AFRCCreateHandle_block_invoke(uint64_t a1, __CFDictionary *a2)
{
  result = CheckInHandleDebug();
  if (result)
  {
    v5 = result;
    if (a2)
    {
      v6 = *MEMORY[0x1E695E480];
      v7 = *(result + 240);
      if (v7)
      {
        v7 = (*(result + 192) / v7);
      }

      v8 = CFStringCreateWithFormat(v6, 0, @"%u", v7);
      CFDictionaryAddValue(a2, @"PLR", v8);
      CFRelease(v8);
      v9 = *(v5 + 240);
      if (v9)
      {
        v9 = (*(v5 + 200) / v9);
      }

      v10 = CFStringCreateWithFormat(v6, 0, @"%u", v9);
      CFDictionaryAddValue(a2, @"VPLR", v10);
      CFRelease(v10);
      v11 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 52));
      CFDictionaryAddValue(a2, @"RTT", v11);
      CFRelease(v11);
      v12 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 44) / 0x3E8uLL);
      CFDictionaryAddValue(a2, @"TTxR", v12);
      CFRelease(v12);
      v13 = CFStringCreateWithFormat(v6, 0, @"%u", (*(v5 + 680) / 1000.0));
      CFDictionaryAddValue(a2, @"DBE", v13);
      CFRelease(v13);
      if (*(v5 + 1037) == 1)
      {
        v14 = (*(v5 + 1000) / 1000.0);
      }

      else
      {
        v14 = *(v5 + 252);
      }

      v20 = CFStringCreateWithFormat(v6, 0, @"%u", v14);
      CFDictionaryAddValue(a2, @"UBE", v20);
      CFRelease(v20);
      v21 = (*(v5 + 672) / 1000.0);
      v22 = *(v5 + 9824);
      if (v22 && v21 && v22 / v21 > 2.0 && v22 - v21 >= 0x2EF)
      {
        ++*(v5 + 9828);
      }

      *(v5 + 9824) = v21;
      v23 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 9828));
      CFDictionaryAddValue(a2, @"SBWD", v23);
      CFRelease(v23);
      v24 = *(v5 + 9832);
      if (*(v5 + 9820) == 1)
      {
        v24 = (v24 + 1);
        *(v5 + 9832) = v24;
      }

      *(v5 + 9820) = 0;
      v25 = CFStringCreateWithFormat(v6, 0, @"%u", v24);
      CFDictionaryAddValue(a2, @"RDMBL", v25);
      CFRelease(v25);
      v26 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 2980));
      CFDictionaryAddValue(a2, @"BbD", v26);
      CFRelease(v26);
      v27 = CFStringCreateWithFormat(v6, 0, @"%u", (*(v5 + 3036) + *(v5 + 3032)));
      CFDictionaryAddValue(a2, @"BbQ", v27);
      CFRelease(v27);
      v28 = CFStringCreateWithFormat(v6, 0, @"%d", *(v5 + 3031));
      CFDictionaryAddValue(a2, @"BTPw", v28);
      CFRelease(v28);
      LODWORD(v29) = *(v5 + 2968);
      v30 = CFStringCreateWithFormat(v6, 0, @"%5.1f", v29 / 1000.0);
      CFDictionaryAddValue(a2, @"BbTx", v30);
      CFRelease(v30);
      LODWORD(v31) = *(v5 + 2964);
      v32 = CFStringCreateWithFormat(v6, 0, @"%5.1f", v31 / 1000.0);
      CFDictionaryAddValue(a2, @"InTxR", v32);
      CFRelease(v32);
      v33 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 9616));
      CFDictionaryAddValue(a2, @"VPF", v33);
      CFRelease(v33);
      v34 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 9620));
      CFDictionaryAddValue(a2, @"APF", v34);
      CFRelease(v34);
      v35 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 268));
      CFDictionaryAddValue(a2, @"APRR", v35);
      CFRelease(v35);
      v36 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 272));
      CFDictionaryAddValue(a2, @"VPRR", v36);
      CFRelease(v36);
      v37 = *(v5 + 240);
      if (v37)
      {
        v37 = *(v5 + 224) / v37;
      }

      v38 = CFStringCreateWithFormat(v6, 0, @"%u", v37);
      CFDictionaryAddValue(a2, @"OVSBR", v38);
      CFRelease(v38);
      v39 = *(v5 + 240);
      if (v39)
      {
        v39 = *(v5 + 228) / v39;
      }

      v40 = CFStringCreateWithFormat(v6, 0, @"%u", v39);
      CFDictionaryAddValue(a2, @"UNSBR", v40);
      CFRelease(v40);
      v41 = *(v5 + 240);
      if (v41)
      {
        v41 = *(v5 + 232) / v41;
      }

      v42 = CFStringCreateWithFormat(v6, 0, @"%u", v41);
      CFDictionaryAddValue(a2, @"OVBWE", v42);
      CFRelease(v42);
      v43 = *(v5 + 240);
      if (v43)
      {
        v43 = *(v5 + 236) / v43;
      }

      v44 = CFStringCreateWithFormat(v6, 0, @"%u", v43);
      CFDictionaryAddValue(a2, @"UNBWE", v44);
      CFRelease(v44);
      v45 = *(v5 + 240);
      if (v45)
      {
        v45 = (*(v5 + 208) / v45);
      }

      v46 = CFStringCreateWithFormat(v6, 0, @"%u", v45);
      CFDictionaryAddValue(a2, @"WRRTT", v46);
      CFRelease(v46);
      v47 = *(v5 + 240);
      if (v47)
      {
        v47 = (*(v5 + 216) / v47);
      }

      v48 = CFStringCreateWithFormat(v6, 0, @"%u", v47);
      CFDictionaryAddValue(a2, @"WRBPL", v48);
      CFRelease(v48);
      pthread_mutex_lock((*(a1 + 40) + 2560));
      v49 = *(v5 + 2652);
      if (v49)
      {
        v50 = CFStringCreateWithFormat(v6, 0, @"%u", *(v5 + 2636) / v49);
        CFDictionaryAddValue(a2, @"RxPC", v50);
        CFRelease(v50);
        v51 = (*(v5 + 2640) / *(v5 + 2652));
      }

      else
      {
        v52 = CFStringCreateWithFormat(v6, 0, @"%u", 0);
        CFDictionaryAddValue(a2, @"RxPC", v52);
        CFRelease(v52);
        v51 = 0;
      }

      v53 = CFStringCreateWithFormat(v6, 0, @"%u", v51);
      CFDictionaryAddValue(a2, @"RxSC", v53);
      CFRelease(v53);
      if (v49)
      {
        v54 = CFStringCreateWithFormat(v6, 0, @"%u", (*(v5 + 2644) / *(v5 + 2652)));
        CFDictionaryAddValue(a2, @"TxPC", v54);
        CFRelease(v54);
        v55 = (*(v5 + 2644) / *(v5 + 2652));
      }

      else
      {
        v56 = CFStringCreateWithFormat(v6, 0, @"%u", 0);
        CFDictionaryAddValue(a2, @"TxPC", v56);
        CFRelease(v56);
        v55 = 0;
      }

      v57 = CFStringCreateWithFormat(v6, 0, @"%u", v55);
      CFDictionaryAddValue(a2, @"TxSC", v57);
      CFRelease(v57);
      *(v5 + 2636) = 0;
      *(v5 + 2640) = 0;
      *(v5 + 2652) = 0;
      pthread_mutex_unlock((*(a1 + 40) + 2560));
      *(v5 + 192) = 0u;
      *(v5 + 208) = 0u;
      *(v5 + 224) = 0u;
      *(v5 + 240) = 0;
      *(v5 + 9608) = 0u;
    }

    else
    {
      v15 = vmlaq_f64(*(result + 192), vdupq_n_s64(0x40C3880000000000uLL), *(result + 176));
      v16 = *(result + 216);
      v17 = *(result + 208) + *(result + 56) * 1000.0;
      *(result + 192) = v15;
      *(result + 56) = 0;
      LODWORD(v15.f64[0]) = *(result + 64);
      *(result + 208) = v17;
      *(result + 216) = v16 + *&v15.f64[0];
      *(result + 64) = 0;
      if (!*(result + 2404))
      {
        v18 = 1000 * *(result + 252);
        v19 = *(result + 44);
        if (v19 >= v18)
        {
          *(result + 232) += (v19 - v18) / 0x3E8;
        }

        else
        {
          *(result + 236) += (v18 - v19) / 0x3E8;
        }

        v58 = *(*(a1 + 40) + 1392) + *(*(a1 + 40) + 1388);
        if (v58 >= v19)
        {
          *(result + 224) += (v58 - v19) / 0x3E8;
        }

        else
        {
          *(result + 228) += (v19 - v58) / 0x3E8;
        }
      }

      ++*(result + 240);
    }

    return CheckOutHandleDebug();
  }

  return result;
}

uint64_t AFRCUpdateOperatingMode(uint64_t a1, int a2, int a3, char a4)
{
  v7 = CheckInHandleDebug();
  if (!v7)
  {
    return 2149646338;
  }

  *(v7 + 2944) = a3;
  *(v7 + 9696) = a2;
  *(v7 + 9701) = a4;
  if (a2)
  {
    *(v7 + 40) = 0;
    *(v7 + 2464) = 0x4000000000000000;
    *(v7 + 2456) = 0x3FF0000000000000;
    *(v7 + 2480) = 0;
  }

  else
  {
    v9 = 2.0;
    if (!*(v7 + 2948))
    {
      v9 = 1.0;
      if (!*(v7 + 2952) && *(v7 + 2932) && ((*(v7 + 2940) - 2) & 0xFFFFFFFD) == 0)
      {
        v9 = 2.0;
      }
    }

    *(v7 + 2464) = v9;
    *(v7 + 40) = 0;
    *(v7 + 2480) = 1;
    if (*(v7 + 1400) != 1 && (*(v7 + 1396) & 2) == 0)
    {
      *(v7 + 1396) = 0x100000005;
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCCloseHandle()
{
  v90 = *MEMORY[0x1E69E9840];
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149646338;
  }

  v1 = v0;
  CheckOutHandleDebug();
  reportingUnregisterPeriodicTask();
  if (*(v1 + 2832) || *(v1 + 2840) || *(v1 + 2848))
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v87 = v2;
    *&buf[80] = v2;
    v86 = v2;
    *&buf[48] = v2;
    *&buf[64] = v2;
    *&buf[16] = v2;
    *&buf[32] = v2;
    *buf = v2;
    micro();
    cStr = 0xAAAAAAAAAAAAAAAALL;
    VRLogfileGetTimestamp(buf, 0x80u);
    memset(v84, 170, 12);
    __sprintf_chk(v84, 0, 0xCuLL, "%010u", *(v1 + 2824));
    v9 = reportingGetUploadFlag() ? openLogDump(0, v84, 0, "AFRC-DashBoard.dump", 0, &cStr) : 0;
    VRLogfilePrintSync(*(v1 + 2832), "%s\t%8.3f\tEndOfFile\n", v3, v4, v5, v6, v7, v8, buf);
    VRLogfileGetFilePointer(*(v1 + 2832));
    AFRCLog_TailFile(v9);
    VRLogfileFree((v1 + 2832));
    VRLogfilePrintSync(*(v1 + 2840), "%s\t%8.3f\tEndOfFile\n", v11, v12, v13, v14, v15, v16, buf);
    VRLogfileGetFilePointer(*(v1 + 2840));
    AFRCLog_TailFile(v9);
    VRLogfileFree((v1 + 2840));
    VRLogfilePrintSync(*(v1 + 2848), "%s\t%8.3f\tEndOfFile\n", v17, v18, v19, v20, v21, v22, buf);
    VRLogfileGetFilePointer(*(v1 + 2848));
    AFRCLog_TailFile(v9);
    VRLogfileFree((v1 + 2848));
    pthread_mutex_lock(&g_fpStallModeDumpOpenCloseLock);
    VRLogfileFree(&g_fpStallModeDump);
    pthread_mutex_unlock(&g_fpStallModeDumpOpenCloseLock);
    if (v9)
    {
      fclose(v9);
      v23 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
      reportingUploadFileWithName();
      if (v23)
      {
        CFRelease(v23);
      }

      free(cStr);
    }
  }

  RateMonitorDestroy(*(v1 + 9768));
  RateMonitorDestroy(*(v1 + 9784));
  if (*v1)
  {
    CFRelease(*v1);
  }

  pthread_mutex_destroy((v1 + 2864));
  pthread_mutex_destroy((v1 + 2560));
  pthread_mutex_destroy((v1 + 2744));
  pthread_mutex_destroy((v1 + 280));
  if (g_iBWEstLogLevel)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v26 = MEMORY[0x1E6986640];
    v27 = MEMORY[0x1E6986650];
    if (ErrorLogLevelForModule >= 8)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *v27;
      v30 = *v27;
      if (*v26 == 1)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(v1 + 1128);
          v32 = *(v1 + 1136);
          v33 = *(v1 + 1132);
          v34 = *(v1 + 1140);
          v35 = *(v1 + 1148);
          v36 = *(v1 + 1144);
          v37 = *(v1 + 1152);
          v38 = *(v1 + 1160);
          *buf = 136317698;
          *&buf[4] = v28;
          *&buf[12] = 2080;
          *&buf[14] = "BWEstUninit";
          *&buf[22] = 1024;
          *&buf[24] = 5966;
          *&buf[28] = 1024;
          *&buf[30] = v31;
          *&buf[34] = 1024;
          *&buf[36] = v32;
          *&buf[40] = 1024;
          *&buf[42] = v33;
          *&buf[46] = 1024;
          *&buf[48] = v34;
          *&buf[52] = 1024;
          *&buf[54] = v35;
          *&buf[58] = 1024;
          *&buf[60] = v36;
          *&buf[64] = 2048;
          *&buf[66] = v37 / v38;
          *&buf[74] = 1024;
          *&buf[76] = v38;
          _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ////////////////// Loss event reports //////////////////////////\n///// Video: %d/%d   last seq#: %d \t\t Audio: %d/%d last seq#: %d\n///// Avg. BW: %f  \t  with %d reports\n///////////////////////////////////////////////////////\n", buf, 0x50u);
        }
      }

      else if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        AFRCCloseHandle_cold_1();
      }
    }

    v39 = *(v1 + 1192);
    v40 = *(v1 + 1184);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v41 = v39 - v40;
      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *v27;
      v44 = *v27;
      if (*v26 == 1)
      {
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(v1 + 1168);
          v46 = vcvtd_n_f64_s64(v45, 0xAuLL);
          v47 = *(v1 + 1136);
          v48 = (v45 / v47);
          v49 = (8 * v45) / v41;
          v50 = *(v1 + 1176);
          v51 = *(v1 + 1148);
          *buf = 136318466;
          *&buf[4] = v42;
          *&buf[12] = 2080;
          *&buf[14] = "BWEstUninit";
          *&buf[22] = 1024;
          *&buf[24] = 5975;
          *&buf[28] = 2048;
          *&buf[30] = v41;
          *&buf[38] = 2048;
          *&buf[40] = v46;
          *&buf[48] = 1024;
          *&buf[50] = v47;
          *&buf[54] = 1024;
          *&buf[56] = v48;
          *&buf[60] = 2048;
          *&buf[62] = v49;
          *&buf[70] = 2048;
          *&buf[72] = v47 / v41;
          *&buf[80] = 2048;
          *&buf[82] = vcvtd_n_f64_s64(v50, 0xAuLL);
          *&buf[90] = 1024;
          *&buf[92] = v51;
          LOWORD(v86) = 1024;
          *(&v86 + 2) = (v50 / v51);
          WORD3(v86) = 2048;
          *(&v86 + 1) = (8 * v50) / v41;
          LOWORD(v87) = 2048;
          *(&v87 + 2) = v51 / v41;
          _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d //////\n////// In %.1f seconds: Video: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n//////                  Audio: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n", buf, 0x7Au);
        }
      }

      else if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v67 = *(v1 + 1168);
        v68 = vcvtd_n_f64_s64(v67, 0xAuLL);
        v69 = *(v1 + 1136);
        v70 = (v67 / v69);
        v71 = (8 * v67) / v41;
        v72 = *(v1 + 1176);
        v73 = *(v1 + 1148);
        *buf = 136318466;
        *&buf[4] = v42;
        *&buf[12] = 2080;
        *&buf[14] = "BWEstUninit";
        *&buf[22] = 1024;
        *&buf[24] = 5975;
        *&buf[28] = 2048;
        *&buf[30] = v41;
        *&buf[38] = 2048;
        *&buf[40] = v68;
        *&buf[48] = 1024;
        *&buf[50] = v69;
        *&buf[54] = 1024;
        *&buf[56] = v70;
        *&buf[60] = 2048;
        *&buf[62] = v71;
        *&buf[70] = 2048;
        *&buf[72] = v69 / v41;
        *&buf[80] = 2048;
        *&buf[82] = vcvtd_n_f64_s64(v72, 0xAuLL);
        *&buf[90] = 1024;
        *&buf[92] = v73;
        LOWORD(v86) = 1024;
        *(&v86 + 2) = (v72 / v73);
        WORD3(v86) = 2048;
        *(&v86 + 1) = (8 * v72) / v41;
        LOWORD(v87) = 2048;
        *(&v87 + 2) = v73 / v41;
        _os_log_debug_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d //////\n////// In %.1f seconds: Video: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n//////                  Audio: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n", buf, 0x7Au);
      }
    }

    v52 = *(v1 + 1224);
    v53 = *(v1 + 1216);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v54 = v52 - v53;
      v55 = VRTraceErrorLogLevelToCSTR();
      v56 = *v27;
      v57 = *v27;
      if (*v26 == 1)
      {
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = *(v1 + 1208);
          v59 = *(v1 + 1200) / v58;
          v60 = *(v1 + 1232);
          v61 = vcvtd_n_f64_s32(v60, 0xAuLL);
          v62 = *(v1 + 1236);
          v63 = (v60 / v62);
          v64 = (8 * v60) / v54;
          v65 = *(v1 + 1240);
          v66 = *(v1 + 1244);
          *buf = 136318978;
          *&buf[4] = v55;
          *&buf[12] = 2080;
          *&buf[14] = "BWEstUninit";
          *&buf[22] = 1024;
          *&buf[24] = 5987;
          *&buf[28] = 2048;
          *&buf[30] = v59;
          *&buf[38] = 1024;
          *&buf[40] = v58;
          *&buf[44] = 2048;
          *&buf[46] = v54;
          *&buf[54] = 2048;
          *&buf[56] = v61;
          *&buf[64] = 1024;
          *&buf[66] = v62;
          *&buf[70] = 1024;
          *&buf[72] = v63;
          *&buf[76] = 2048;
          *&buf[78] = v64;
          *&buf[86] = 2048;
          *&buf[88] = v62 / v54;
          LOWORD(v86) = 2048;
          *(&v86 + 2) = vcvtd_n_f64_s32(v65, 0xAuLL);
          WORD5(v86) = 1024;
          HIDWORD(v86) = v66;
          LOWORD(v87) = 1024;
          *(&v87 + 2) = (v65 / v66);
          WORD3(v87) = 2048;
          *(&v87 + 1) = (8 * v65) / v54;
          v88 = 2048;
          v89 = v66 / v54;
          _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d \n///// Avg. BW (ORG Scheme): %f  \t  with %d reports\n////// In %.1f seconds: Video: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n//////                  Audio: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n///////////////////////////////////////////////////////\n", buf, 0x8Au);
        }
      }

      else if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v74 = *(v1 + 1208);
        v75 = *(v1 + 1200) / v74;
        v76 = *(v1 + 1232);
        v77 = vcvtd_n_f64_s32(v76, 0xAuLL);
        v78 = *(v1 + 1236);
        v79 = (v76 / v78);
        v80 = (8 * v76) / v54;
        v81 = *(v1 + 1240);
        v82 = *(v1 + 1244);
        *buf = 136318978;
        *&buf[4] = v55;
        *&buf[12] = 2080;
        *&buf[14] = "BWEstUninit";
        *&buf[22] = 1024;
        *&buf[24] = 5987;
        *&buf[28] = 2048;
        *&buf[30] = v75;
        *&buf[38] = 1024;
        *&buf[40] = v74;
        *&buf[44] = 2048;
        *&buf[46] = v54;
        *&buf[54] = 2048;
        *&buf[56] = v77;
        *&buf[64] = 1024;
        *&buf[66] = v78;
        *&buf[70] = 1024;
        *&buf[72] = v79;
        *&buf[76] = 2048;
        *&buf[78] = v80;
        *&buf[86] = 2048;
        *&buf[88] = v78 / v54;
        LOWORD(v86) = 2048;
        *(&v86 + 2) = vcvtd_n_f64_s32(v81, 0xAuLL);
        WORD5(v86) = 1024;
        HIDWORD(v86) = v82;
        LOWORD(v87) = 1024;
        *(&v87 + 2) = (v81 / v82);
        WORD3(v87) = 2048;
        *(&v87 + 1) = (8 * v81) / v54;
        v88 = 2048;
        v89 = v82 / v54;
        _os_log_debug_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d \n///// Avg. BW (ORG Scheme): %f  \t  with %d reports\n////// In %.1f seconds: Video: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n//////                  Audio: %f KB/%d = %d B  avg. %.1f kbits/s  %.1f pkts/s \n///////////////////////////////////////////////////////\n", buf, 0x8Au);
      }
    }
  }

  VCPacketFilterGetCMBaseObject(v1 + 872, v24);
  free(v1);
  return 0;
}

uint64_t AFRCSetTxCap(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v28 = *MEMORY[0x1E69E9840];
  if (!a2 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      AFRCSetTxCap_cold_1();
    }
  }

  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  v5 = *(v3 + 72);
  if (v5 >= 10000)
  {
    if (*(v3 + 2816))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315906;
          v19 = v6;
          v20 = 2080;
          v21 = "AFRCSetTxCap";
          v22 = 1024;
          v23 = 1594;
          v24 = 1024;
          v25 = v5;
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: Forcing AFRC TxCap to %u from defaults", &v18, 0x22u);
        }
      }
    }

    v2 = v5;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v4 + 20);
      v18 = 136316162;
      v19 = v8;
      v20 = 2080;
      v21 = "AFRCSetTxCap";
      v22 = 1024;
      v23 = 1597;
      v24 = 1024;
      v25 = v10;
      v26 = 1024;
      v27 = v2;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ### AFRCSetTxCap: (%u->%u)", &v18, 0x28u);
    }
  }

  pthread_mutex_lock((v4 + 2560));
  *(v4 + 20) = v2;
  *(v4 + 24) = v2;
  v11 = *(v4 + 28);
  v12 = g_adwTxRateTiers[v11];
  if (v12 <= v2)
  {
    v14 = *(v4 + 28);
  }

  else
  {
    v13 = *(v4 + 40);
    if (v11 >= v13)
    {
      v14 = *(v4 + 40);
    }

    else
    {
      v14 = *(v4 + 28);
    }

    if (v11 > v13)
    {
      v15 = v11;
      v16 = v11 - 1;
      while (1)
      {
        *(v4 + 28) = v16;
        v12 = g_adwTxRateTiers[v15 - 1];
        if (v12 <= v2)
        {
          break;
        }

        --v15;
        --v16;
        if (v15 <= v13)
        {
          goto LABEL_27;
        }
      }

      v14 = v16;
    }
  }

LABEL_27:
  *(v4 + 36) = v14;
  *(v4 + 44) = v12;
  pthread_mutex_unlock((v4 + 2560));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetLastEchoedMyTxTS(uint64_t a1, _DWORD *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  if (a2)
  {
    *a2 = *(v3 + 260);
  }

  CheckOutHandleDebug();
  return 0;
}

void UpdateRxEstimate(uint64_t a1, int a2, int a3, int *a4, int a5, double a6, double a7, double a8)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(a1 + 316) == 1)
  {
    UpdateRxEstimate_v1(a1, a2, a3, a4, a6, a7, a8);
    *(a1 + 224) = *(a1 + 280);
    return;
  }

  if (*(a1 + 317) == 1)
  {
    v54 = -1;
    UpdateRxEstimate_v1(a1, a2, a3, &v54, a6, a7, a8);
  }

  v16 = *(a1 + 8);
  if (v16 == 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = 3;
  }

  v18 = *(a1 + 224);
  if (v18 != 0.0)
  {
    if (!a2 || a3 <= 249)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        v33 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v54 = 136316418;
            v55 = v31;
            v56 = 2080;
            v57 = "UpdateRxEstimate";
            v58 = 1024;
            v59 = 1909;
            v60 = 1024;
            v61 = a3;
            v62 = 2048;
            v63 = a7;
            v64 = 1024;
            v65 = a2;
            _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d *!*!*!* UpdateRxEstimate: too short Seq; ------ dBWD: 0 (%d/%f/%d) ", &v54, 0x32u);
          }
        }

        else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v54 = 136316418;
          v55 = v31;
          v56 = 2080;
          v57 = "UpdateRxEstimate";
          v58 = 1024;
          v59 = 1909;
          v60 = 1024;
          v61 = a3;
          v62 = 2048;
          v63 = a7;
          v64 = 1024;
          v65 = a2;
          _os_log_debug_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d *!*!*!* UpdateRxEstimate: too short Seq; ------ dBWD: 0 (%d/%f/%d) ", &v54, 0x32u);
        }
      }

      return;
    }

    if (dbl_1DBD45C40[v16 == 2] <= a7)
    {
      *(a1 + 256) = 0;
    }

    else
    {
      v25 = *(a1 + 256);
      if (v25 < v17)
      {
        *(a1 + 256) = ++v25;
      }

      if (v25 < v17)
      {
        return;
      }
    }
  }

  if (a6 <= 0.0)
  {
    return;
  }

  v19 = 400000.0;
  if (a5)
  {
    v19 = 800000.0;
  }

  if (v16 != 2)
  {
    v19 = 5000000.0;
  }

  if (v19 >= a6)
  {
    v20 = a6;
  }

  else
  {
    v20 = v19;
  }

  *(a1 + 432) = *(a1 + 432) + a6;
  ++*(a1 + 440);
  if (v16 == 2)
  {
    if ((*(a1 + 13) & 1) == 0)
    {
      v35 = v19 * 0.5;
      if (v20 <= v19 * 0.5)
      {
        v35 = v20;
      }

      v36 = v35 + *(a1 + 232);
      *(a1 + 232) = v36;
      v37 = *(a1 + 240);
      *(a1 + 240) = v37 + 1;
      if (v37 > 8 || a8 - *(a1 + 248) >= 7.0)
      {
        *(a1 + 13) = 1;
        *(a1 + 224) = v36 / (v37 + 1);
        *(a1 + 248) = 0;
        *(a1 + 240) = 0;
      }

      return;
    }

    v21 = 7.0;
    v22 = 10.0;
    v23 = 6;
    v24 = 100000.0;
  }

  else
  {
    if (v16 == 1)
    {
      v23 = 4;
    }

    else
    {
      v23 = 3;
    }

    v24 = 0.0;
    v22 = 4.0;
    if (v16 != 1)
    {
      v22 = 0.0;
    }

    v21 = v22;
  }

  v26 = v20 <= v18 * 0.5;
  if (v18 - v20 > 200000.0)
  {
    v26 = 1;
  }

  v27 = v20 - v18 > 200000.0 || v20 >= v18 * 1.5;
  v28 = v18 - v20 > v24 && v26;
  v29 = v20 - v18 > v24 && v27;
  if (v18 == 0.0)
  {
    v30 = 100000.0;
    if (v20 >= 100000.0)
    {
      v30 = v20;
    }

    *(a1 + 224) = v30;
    *a4 = 0;
    return;
  }

  if (!v28 && !v29)
  {
    if (v16 == 2)
    {
      v38 = *(a1 + 136);
      if (v38 >= 1)
      {
        v39 = (a1 + 16);
        do
        {
          v40 = *v39++;
          v18 = v40 * 0.05 + v18 * 0.95;
          --v38;
        }

        while (v38);
        *(a1 + 136) = 0;
      }

      v41 = v20 * 0.075;
      v42 = 0.925;
    }

    else
    {
      v41 = v20 * 0.1;
      v42 = 0.9;
    }

    *(a1 + 224) = v41 + v18 * v42;
    *(a1 + 240) = 0;
    *(a1 + 232) = 0;
    v45 = 1;
    goto LABEL_102;
  }

  if ((v16 - 1) > 1)
  {
    v34 = 0;
  }

  else
  {
    if (*(a1 + 240) < 0)
    {
      v22 = v21;
    }

    v34 = a8 - *(a1 + 248) < v22;
  }

  if (v28)
  {
    v43 = *(a1 + 240);
    if (v43 < 0)
    {
      v44 = v43 - 1;
    }

    else
    {
      *(a1 + 232) = 0;
      *(a1 + 248) = a8;
      v44 = -1;
    }

    *(a1 + 240) = v44;
    v48 = -10;
  }

  else
  {
    if (!v29)
    {
      goto LABEL_86;
    }

    v46 = *(a1 + 240);
    if (v46 <= 0)
    {
      *(a1 + 232) = 0;
      *(a1 + 248) = a8;
      v47 = 1;
    }

    else
    {
      v47 = v46 + 1;
    }

    *(a1 + 240) = v47;
    v48 = 10;
  }

  *a4 = v48;
LABEL_86:
  v49 = v20 + *(a1 + 232);
  *(a1 + 232) = v49;
  v50 = *(a1 + 240);
  if ((v50 & 0x80000000) != 0)
  {
    v50 = -v50;
  }

  if (*(a1 + 8) == 2)
  {
    v51 = *(a1 + 136);
    if (v51 <= 29)
    {
      *(a1 + 4 * v51 + 16) = v20;
      ++*(a1 + 136);
    }
  }

  if (v50 >= v23 && !v34)
  {
    if (*(a1 + 8) == 2)
    {
      v52 = v49 / v50;
      if ((*(a1 + 240) & 0x80000000) == 0)
      {
        v52 = v52 * 0.9 + v18 * 0.1;
      }
    }

    else
    {
      v52 = v49 / v50;
    }

    *(a1 + 224) = v52;
    *(a1 + 240) = 0;
    *(a1 + 232) = 0;
    if (*a4 == -10)
    {
      v53 = -100;
    }

    else
    {
      v53 = 200;
    }

    if (*a4 == 10)
    {
      v45 = 100;
    }

    else
    {
      v45 = v53;
    }

LABEL_102:
    *a4 = v45;
  }
}

uint64_t UpdateRxEstimate_v1(uint64_t result, int a2, int a3, int *a4, double a5, double a6, double a7)
{
  v8 = *(result + 280);
  if (v8 != 0.0)
  {
    if (!a2 || a3 < 250)
    {
      return result;
    }

    if (a6 >= 0.008)
    {
      *(result + 312) = 0;
    }

    else
    {
      v14 = *(result + 312);
      if (v14 <= 2)
      {
        *(result + 312) = v14 + 1;
        if (v14 != 2)
        {
          return result;
        }
      }
    }
  }

  if (a5 <= 0.0)
  {
    return result;
  }

  v9 = 2300000.0;
  if (a5 <= 2300000.0)
  {
    v9 = a5;
  }

  v10 = v9 <= v8 * 0.5;
  if (v8 - v9 > 200000.0)
  {
    v10 = 1;
  }

  v11 = v9 >= v8 * 1.5;
  if (v9 - v8 > 200000.0)
  {
    v11 = 1;
  }

  if (v8 == 0.0)
  {
    v12 = 0;
    v13 = 100000.0;
    if (v9 >= 100000.0)
    {
      v13 = v9;
    }

    *(result + 280) = v13;
    goto LABEL_43;
  }

  if (!v10 && !v11)
  {
    *(result + 280) = v9 * 0.1 + v8 * 0.9;
    *(result + 296) = 0;
    *(result + 288) = 0;
    v12 = 1;
LABEL_43:
    *a4 = v12;
    return result;
  }

  if (v10)
  {
    v15 = *(result + 296);
    if (v15 < 0)
    {
      v16 = v15 - 1;
    }

    else
    {
      *(result + 288) = 0;
      *(result + 304) = a7;
      v16 = -1;
    }

    *(result + 296) = v16;
    v19 = -10;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_34;
    }

    v17 = *(result + 296);
    if (v17 <= 0)
    {
      *(result + 288) = 0;
      *(result + 304) = a7;
      v18 = 1;
    }

    else
    {
      v18 = v17 + 1;
    }

    *(result + 296) = v18;
    v19 = 10;
  }

  *a4 = v19;
LABEL_34:
  v20 = v9 + *(result + 288);
  *(result + 288) = v20;
  v21 = *(result + 296);
  if (v21 < 0)
  {
    v21 = -v21;
  }

  if (v21 >= 3)
  {
    *(result + 280) = v20 / v21;
    *(result + 296) = 0;
    *(result + 288) = 0;
    if (*a4 == -10)
    {
      v22 = -100;
    }

    else
    {
      v22 = 200;
    }

    if (*a4 == 10)
    {
      v12 = 100;
    }

    else
    {
      v12 = v22;
    }

    goto LABEL_43;
  }

  return result;
}

uint64_t AFRCCalcRxEstimate(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v156 = *MEMORY[0x1E69E9840];
  v15 = CheckInHandleDebug();
  if (!v15)
  {
    return 2149646338;
  }

  v16 = v15;
  pthread_mutex_lock((v15 + 280));
  bzero(v138, 0x400uLL);
  v17 = *(v16 + 721);
  v18 = &kVCSessionPresentationInfoUIState;
  if (v17 == 1)
  {
    if ((*(v16 + 980) & 1) == 0)
    {
      v19 = a8 - 1;
      if (!a7)
      {
        v19 = a4;
      }

      *(v16 + 984) = v19;
      *(v16 + 1256) = a4 - 1;
      *(v16 + 1260) = a4 - 1;
      *(v16 + 1264) = a1;
      *(v16 + 1356) = 0;
      *(v16 + 1272) = 0;
      *(v16 + 733) = 0;
      *(v16 + 968) = a1;
      *(v16 + 960) = 0;
      *(v16 + 856) = 0;
      *(v16 + 980) = 1;
    }

    v137 = a5;
    if (*(v16 + 1248) != 1)
    {
LABEL_47:
      v48 = *(v16 + 988);
      v49 = *(v16 + 992);
      if (a7 && *(v16 + 984) == a8)
      {
        v50 = *(v16 + 920);
        if (v50 < a1)
        {
          v50 = a1;
        }

        *(v16 + 920) = v50;
        *(v16 + 988) = v48 + a6;
        *(v16 + 992) = v49 + 1;
        *buf = -1;
        v51 = 0.0;
      }

      else
      {
        v52 = 0.0;
        if (v48)
        {
          v53 = *(v16 + 920) - *(v16 + 912);
          if (v48 >= 251)
          {
            v52 = (8 * v48) / v53;
          }
        }

        else
        {
          v53 = 0.0;
        }

        *(v16 + 984) = a4;
        *(v16 + 988) = 0;
        *(v16 + 912) = a1;
        *(v16 + 928) = a6;
        *(v16 + 920) = 0;
        *buf = -1;
        if (v52 <= 0.0)
        {
          v51 = v52;
        }

        else
        {
          *(v16 + 680) = v52;
          UpdateRxEstimate(v16 + 720, v49, v48, buf, *(v16 + 9701), v52, v53, a1);
          v51 = v54;
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v136 = a6;
            v55 = VRTraceErrorLogLevelToCSTR();
            v56 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v57 = *(v16 + 960);
              v58 = *(v16 + 944);
              *v153 = 136317698;
              *&v153[4] = v55;
              *&v153[12] = 2080;
              *&v153[14] = "AFRCCalcRxEstimate_New";
              *&v153[22] = 1024;
              *&v153[24] = 2309;
              *&v153[28] = 2048;
              *&v153[30] = a1;
              *&v153[38] = 2048;
              *&v153[40] = v51;
              *&v153[48] = 1024;
              *&v153[50] = *buf;
              *&v153[54] = 1024;
              *&v153[56] = v57;
              *&v153[60] = 2048;
              *&v153[62] = v53;
              *&v153[70] = 1024;
              *&v153[72] = v48;
              *&v153[76] = 1024;
              *&v153[78] = v49;
              *&v153[82] = 2048;
              *&v153[84] = v58;
              _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ArrivalTime:%.4f, BWD:%.2f, state:%d, divergeCount:%d prob_seq:[duration:%.4f, size:%d, count:%d], EstimatedBandwidth:%.2f", v153, 0x5Cu);
            }

            a6 = v136;
          }

          v18 = &kVCSessionPresentationInfoUIState;
        }
      }

      if (!*(v18 + 1014))
      {
        goto LABEL_93;
      }

      v59 = *(v16 + 1116);
      switch(v59)
      {
        case 0:
          goto LABEL_67;
        case -2:
          v62 = v137;
          v61 = a6;
          if (v51 != 0.0)
          {
            __sprintf_chk(v138, 0, 0x400uLL, "NEW AFRCCalcRxEstimate: [%d]  (%d %d)  //////\n");
            goto LABEL_70;
          }

          v138[0] = 0;
          break;
        case -3:
LABEL_67:
          v60 = *(v16 + 1384);
          *(v16 + 1384) = v60 + 1;
          v61 = a6;
          v62 = v137;
          __sprintf_chk(v138, 0, 0x400uLL, "NEW AFRCCalcRxEstimate [%d]: [%f] //////\n/////tp: %d  ts/arr: %d/%f \t seq: %d sz: %d \t Probe: %d/%d \t path: %d (%d)  BWD: %f/%f  Est: %f\n///// \t TS: %d  \t arrival: %f/%f \t total: %d/%d (%.1f ms) ref_size: %d\n", v60, *&a1, a3, a4, *&a1);
LABEL_70:
          v18 = &kVCSessionPresentationInfoUIState;
          break;
        default:
          v61 = a6;
          __sprintf_chk(v138, 0, 0x400uLL, "NEW AFRCCalcRxEstimate: [%d]  //////\n", *(v16 + 944));
          v18 = &kVCSessionPresentationInfoUIState;
          v62 = v137;
          break;
      }

      if (a3 == 1)
      {
        v63 = 1128;
      }

      else
      {
        v63 = 1140;
      }

      v64 = 1148;
      if (a3 == 1)
      {
        v64 = 1136;
      }

      v65 = *(v16 + v64);
      if (a3 == 1)
      {
        v66 = 1132;
      }

      else
      {
        v66 = 1144;
      }

      *(v16 + v64) = v65 + 1;
      if (*(v16 + v66) && v62 - *(v16 + v66) >= 2)
      {
        if (*(v16 + 1116) <= 0)
        {
          *&v67 = 0xAAAAAAAAAAAAAAAALL;
          *(&v67 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v153[240] = v67;
          *&v153[224] = v67;
          *&v153[208] = v67;
          *&v153[192] = v67;
          *&v153[176] = v67;
          *&v153[160] = v67;
          *&v153[144] = v67;
          *&v153[128] = v67;
          *&v153[112] = v67;
          *&v153[96] = v67;
          *&v153[80] = v67;
          *&v153[64] = v67;
          *&v153[48] = v67;
          *&v153[32] = v67;
          *&v153[16] = v67;
          *v153 = v67;
          __sprintf_chk(v153, 0, 0x100uLL, "///// \t LOSS [%d/%d] @ %d: //////\n", *(v16 + v63), v65 + 1, v62);
          __strlcat_chk();
          v18 = &kVCSessionPresentationInfoUIState;
        }

        ++*(v16 + v63);
      }

      *(v16 + v66) = v62;
      if (*(v16 + 1184) == 0.0)
      {
        *(v16 + 1184) = a1;
      }

      *(v16 + 1192) = a1;
      a6 = v61;
      if (a3 == 1)
      {
        v68 = 1168;
      }

      else
      {
        if (a3)
        {
LABEL_93:
          v17 = *(v16 + 721);
          a5 = v137;
          goto LABEL_94;
        }

        v68 = 1176;
      }

      *(v16 + v68) += v61;
      goto LABEL_93;
    }

    v20 = *(v16 + 1256);
    if (v20 == a4 || v20 == *(v16 + 1260))
    {
LABEL_43:
      if (a3 == 1)
      {
        v47 = *(v16 + 1356);
        if (!v47)
        {
          *(v16 + 1360) = a1;
        }

        *(v16 + 1368) = a1;
        *(v16 + 1356) = v47 + a6;
        *(v16 + 1376) = a7;
        *(v16 + 1256) = a4;
      }

      goto LABEL_47;
    }

    v21 = *(v16 + 944);
    v22 = *(v16 + 1368) - *(v16 + 1360);
    v23 = 0.0;
    if (v21 > 0.0)
    {
      v23 = (8 * *(v16 + 1356)) / v21;
    }

    if (v23 > v22)
    {
      v22 = v23;
    }

    if (v22 >= 0.1)
    {
      v24 = *(v16 + 1272);
      if (v24 <= 14)
      {
        v25 = v16 + 2 * v24;
        *(v25 + 1280) = *(v16 + 1356);
        *(v25 + 1310) = (v22 * 1000.0);
        *(v16 + v24 + 1340) = *(v16 + 1376);
      }

      *(v16 + 1272) = v24 + 1;
    }

    ++*(v16 + 1276);
    if (a1 - *(v16 + 1264) <= 5.0)
    {
LABEL_42:
      *(v16 + 1260) = v20;
      *(v16 + 1356) = 0;
      goto LABEL_43;
    }

    v26 = *(v16 + 1272);
    if (v26 < 1)
    {
LABEL_41:
      *(v16 + 1276) = 0;
      *(v16 + 1264) = a1;
      goto LABEL_42;
    }

    v135 = a6;
    memset(v155, 170, 18);
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v154 = v27;
    *&v154[15] = v27;
    *&v153[241] = v27;
    *&v153[225] = v27;
    *&v153[209] = v27;
    *&v153[193] = v27;
    *&v153[177] = v27;
    *&v153[161] = v27;
    *&v153[145] = v27;
    *&v153[129] = v27;
    *&v153[113] = v27;
    *&v153[97] = v27;
    *&v153[81] = v27;
    *&v153[65] = v27;
    *&v153[49] = v27;
    *&v153[33] = v27;
    if (v26 >= 0xF)
    {
      v28 = 15;
    }

    else
    {
      v28 = v26;
    }

    *&v153[17] = v27;
    v29 = (v16 + 1280);
    v30 = (v16 + 1340);
    *&v153[1] = v27;
    v153[0] = 0;
    do
    {
      v31 = v29[15];
      v33 = *v29++;
      v32 = v33;
      if (*v30++)
      {
        v35 = 33;
      }

      else
      {
        v35 = 32;
      }

      __sprintf_chk(v155, 0, 0x12uLL, "%ums(%u)%c ", v31, v32, v35);
      __strlcat_chk();
      --v28;
    }

    while (v28);
    v36 = g_iBWEstLogLevel;
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v36)
    {
      a6 = v135;
      if (ErrorLogLevelForModule < 8)
      {
        goto LABEL_40;
      }

      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      v40 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v133 = *(v16 + 1272);
          v134 = *(v16 + 1276);
          *buf = 136316674;
          v140 = v38;
          v141 = 2080;
          v142 = "UpdateBigFrameReporter";
          v143 = 1024;
          v144 = 1670;
          v145 = 2048;
          v146 = a1;
          v147 = 1024;
          v148 = v133;
          v149 = 1024;
          v150 = v134;
          v151 = 2080;
          v152 = v153;
          _os_log_debug_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d \t\tBIG FRAME report at %.3f, %d/%d frames: %s", buf, 0x3Cu);
        }

        goto LABEL_40;
      }

      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
LABEL_40:
        *(v16 + 1272) = 0;
        v20 = *(v16 + 1256);
        v18 = &kVCSessionPresentationInfoUIState;
        goto LABEL_41;
      }

      v41 = *(v16 + 1272);
      v42 = *(v16 + 1276);
      *buf = 136316674;
      v140 = v38;
      v141 = 2080;
      v142 = "UpdateBigFrameReporter";
      v143 = 1024;
      v144 = 1670;
      v145 = 2048;
      v146 = a1;
      v147 = 1024;
      v148 = v41;
      v149 = 1024;
      v150 = v42;
      v151 = 2080;
      v152 = v153;
    }

    else
    {
      a6 = v135;
      if (ErrorLogLevelForModule < 7)
      {
        goto LABEL_40;
      }

      v44 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      v45 = *(v16 + 1272);
      v46 = *(v16 + 1276);
      *buf = 136316674;
      v140 = v44;
      v141 = 2080;
      v142 = "UpdateBigFrameReporter";
      v143 = 1024;
      v144 = 1673;
      v145 = 2048;
      v146 = a1;
      v147 = 1024;
      v148 = v45;
      v149 = 1024;
      v150 = v46;
      v151 = 2080;
      v152 = v153;
    }

    _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d \t\tBIG FRAME report at %.3f, %d/%d frames: %s", buf, 0x3Cu);
    goto LABEL_40;
  }

LABEL_94:
  v69 = *(v16 + 936);
  if (v17)
  {
    v70 = *(v18 + 1014) == 0;
  }

  else
  {
    v70 = 0;
  }

  if (v70)
  {
    goto LABEL_224;
  }

  v71 = (v16 + 352);
  if (a3 == 1 && *(v16 + 704) == a4)
  {
    v72 = 0.0;
    v73 = 0;
    if ((a5 - *(v16 + 344)) <= 0x13u)
    {
      v74 = &v71[(a5 - *(v16 + 344))];
      *v74 = a1;
      *(v74 + 2) += a6;
    }

    goto LABEL_114;
  }

  v72 = 0.0;
  if (*(v16 + 360) < 1)
  {
    v73 = 0;
  }

  else
  {
    v73 = 0;
    v75 = (v16 + 376);
    v76 = 19;
    v77 = *(v16 + 352);
    v78 = (v16 + 376);
    do
    {
      v80 = *v78;
      v78 += 4;
      v79 = v80;
      if (v80 < 1)
      {
        break;
      }

      v73 += v79;
      if (*(v75 - 1) > v77)
      {
        v77 = *(v75 - 1);
      }

      v75 = v78;
      --v76;
    }

    while (v76);
    v81 = v77 - *(v16 + 352);
    if (v81 > 0.0 && v73 >= 251)
    {
      v72 = (8 * v73) / v81;
    }
  }

  *(v16 + 640) = 0u;
  *(v16 + 656) = 0u;
  *(v16 + 608) = 0u;
  *(v16 + 624) = 0u;
  *(v16 + 576) = 0u;
  *(v16 + 592) = 0u;
  *(v16 + 544) = 0u;
  *(v16 + 560) = 0u;
  *(v16 + 512) = 0u;
  *(v16 + 528) = 0u;
  *(v16 + 480) = 0u;
  *(v16 + 496) = 0u;
  *(v16 + 448) = 0u;
  *(v16 + 464) = 0u;
  *(v16 + 416) = 0u;
  *(v16 + 432) = 0u;
  *(v16 + 384) = 0u;
  *(v16 + 400) = 0u;
  *v71 = 0u;
  *(v16 + 368) = 0u;
  if (a3 == 1)
  {
    *(v16 + 352) = a1;
    *(v16 + 360) = a6;
    *(v16 + 348) = 1;
    *(v16 + 344) = a5;
LABEL_114:
    *(v16 + 704) = a4;
  }

  if (v72 <= 0.0)
  {
    if (!*(v18 + 1014))
    {
      goto LABEL_224;
    }

    v82 = a6;
    v86 = *(v16 + 708);
    v83 = -1;
    v85 = v72;
  }

  else
  {
    if (v69 == 0.0)
    {
      v82 = a6;
      v83 = 0;
      v84 = 100000.0;
      if (v72 >= 100000.0)
      {
        v84 = v72;
      }

      if (v72 <= 1000000.0)
      {
        v69 = v84;
      }

      else
      {
        v69 = 1000000.0;
      }

      v85 = v72;
    }

    else
    {
      v87 = v69 * 0.5;
      v88 = v69 * 1.5;
      if (v72 > v69 * 0.5 && v72 < v88)
      {
        v82 = a6;
        if (v69 <= 300000.0)
        {
          v93 = (v69 * 0.02 * 0.125);
          if (v93 <= 250)
          {
            v93 = 250;
          }
        }

        else
        {
          v93 = 750;
        }

        v94 = 1000000.0;
        if (v72 <= 1000000.0)
        {
          v94 = v72;
        }

        if (v73 <= v93)
        {
          v85 = v72;
        }

        else
        {
          v69 = v94 * 0.05 + v69 * 0.95;
          v85 = v94;
        }

        *(v16 + 708) = 0;
        *(v16 + 696) = 0;
        v83 = 1;
      }

      else
      {
        if (v72 > v87)
        {
          v92 = *(v16 + 708);
          v82 = a6;
          if (v72 >= v88)
          {
            if (v92 <= 0)
            {
              *(v16 + 696) = 0;
              v92 = 1;
              *(v16 + 708) = 1;
              *(v16 + 712) = a1;
            }

            else
            {
              *(v16 + 708) = ++v92;
            }

            v83 = 10;
            v91 = 1;
          }

          else
          {
            v91 = 0;
            v83 = -1;
          }
        }

        else
        {
          v82 = a6;
          v90 = *(v16 + 708);
          v91 = 0;
          if (v90 < 0)
          {
            v92 = v90 - 1;
            *(v16 + 708) = v92;
          }

          else
          {
            *(v16 + 696) = 0;
            v92 = -1;
            *(v16 + 708) = -1;
            *(v16 + 712) = a1;
          }

          v83 = -10;
        }

        if (v72 <= 1000000.0)
        {
          v85 = v72;
        }

        else
        {
          v85 = 1000000.0;
        }

        v95 = v85 + *(v16 + 696);
        *(v16 + 696) = v95;
        if (v92 < 0)
        {
          v92 = -v92;
        }

        v96 = a1 - *(v16 + 712);
        if (v96 <= 5.0)
        {
          if (v92 > 9 || v92 >= 5 && v96 > 3.0)
          {
            v69 = v95 / v92;
            *(v16 + 708) = 0;
            *(v16 + 696) = 0;
            if (v72 > v87)
            {
              v97 = 200;
            }

            else
            {
              v97 = -100;
            }

            if (v91)
            {
              v83 = 100;
            }

            else
            {
              v83 = v97;
            }
          }
        }

        else
        {
          *(v16 + 708) = 0;
          *(v16 + 696) = 0;
        }
      }
    }

    if (!*(v18 + 1014))
    {
      goto LABEL_224;
    }

    v86 = *(v16 + 708);
    *(v16 + 1200) = v72 + *(v16 + 1200);
    ++*(v16 + 1208);
  }

  if (*(v16 + 1216) == 0.0)
  {
    *(v16 + 1216) = a1;
  }

  *(v16 + 1224) = a1;
  if (a3 == 1)
  {
    v98 = 1236;
    v99 = 1232;
  }

  else
  {
    if (a3)
    {
      goto LABEL_175;
    }

    v98 = 1244;
    v99 = 1240;
  }

  *(v16 + v99) += v82;
  ++*(v16 + v98);
LABEL_175:
  v100 = *(v16 + 1116);
  if (v17)
  {
    if ((v100 + 3) >= 2)
    {
      if (v100 != -1)
      {
        if (!v100)
        {
          if (VRTraceGetErrorLogLevelForModule() < 8)
          {
            goto LABEL_224;
          }

          v101 = VRTraceErrorLogLevelToCSTR();
          v102 = *MEMORY[0x1E6986650];
          v103 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
            {
              v104 = *(v16 + 1384);
              *(v16 + 1384) = v104 + 1;
              *v153 = 136318722;
              *&v153[4] = v101;
              *&v153[12] = 2080;
              *&v153[14] = "AFRCCalcRxEstimate";
              *&v153[22] = 1024;
              *&v153[24] = 2598;
              *&v153[28] = 1024;
              *&v153[30] = v104;
              *&v153[34] = 1024;
              *&v153[36] = a3;
              *&v153[40] = 1024;
              *&v153[42] = a4;
              *&v153[46] = 2048;
              *&v153[48] = a1;
              *&v153[56] = 1024;
              *&v153[58] = a5;
              *&v153[62] = 1024;
              *&v153[64] = v82;
              *&v153[68] = 1024;
              *&v153[70] = v83;
              *&v153[74] = 1024;
              *&v153[76] = v86;
              *&v153[80] = 2048;
              *&v153[82] = v72;
              *&v153[90] = 2048;
              *&v153[92] = v85;
              *&v153[100] = 2048;
              *&v153[102] = v69;
              *&v153[110] = 2080;
              *&v153[112] = v138;
              v105 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\n/////tp: %d  ts/arr: %d/%f \t seq: %d sz: %d \t path: %d (%d)  BWD: %f/%f  Est: %f\n%s";
              v106 = v102;
              v107 = 120;
LABEL_200:
              _os_log_impl(&dword_1DB56E000, v106, OS_LOG_TYPE_DEFAULT, v105, v153, v107);
              goto LABEL_224;
            }

            goto LABEL_224;
          }

          if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_224;
          }

          v132 = *(v16 + 1384);
          *(v16 + 1384) = v132 + 1;
          *v153 = 136318722;
          *&v153[4] = v101;
          *&v153[12] = 2080;
          *&v153[14] = "AFRCCalcRxEstimate";
          *&v153[22] = 1024;
          *&v153[24] = 2598;
          *&v153[28] = 1024;
          *&v153[30] = v132;
          *&v153[34] = 1024;
          *&v153[36] = a3;
          *&v153[40] = 1024;
          *&v153[42] = a4;
          *&v153[46] = 2048;
          *&v153[48] = a1;
          *&v153[56] = 1024;
          *&v153[58] = a5;
          *&v153[62] = 1024;
          *&v153[64] = v82;
          *&v153[68] = 1024;
          *&v153[70] = v83;
          *&v153[74] = 1024;
          *&v153[76] = v86;
          *&v153[80] = 2048;
          *&v153[82] = v72;
          *&v153[90] = 2048;
          *&v153[92] = v85;
          *&v153[100] = 2048;
          *&v153[102] = v69;
          *&v153[110] = 2080;
          *&v153[112] = v138;
          v125 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\n/////tp: %d  ts/arr: %d/%f \t seq: %d sz: %d \t path: %d (%d)  BWD: %f/%f  Est: %f\n%s";
          v126 = v102;
          v127 = 120;
LABEL_233:
          _os_log_debug_impl(&dword_1DB56E000, v126, OS_LOG_TYPE_DEBUG, v125, v153, v127);
          goto LABEL_224;
        }

        if (a1 - *(v16 + 1120) <= v100 / 1000000.0)
        {
          goto LABEL_224;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_223;
      }

      v122 = VRTraceErrorLogLevelToCSTR();
      v119 = *MEMORY[0x1E6986650];
      v123 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          *v153 = 136316162;
          *&v153[4] = v122;
          *&v153[12] = 2080;
          *&v153[14] = "AFRCCalcRxEstimate";
          *&v153[22] = 1024;
          *&v153[24] = 2613;
          *&v153[28] = 1024;
          *&v153[30] = v69;
          *&v153[34] = 2080;
          *&v153[36] = v138;
          v121 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\t\t%s";
          goto LABEL_212;
        }

        goto LABEL_223;
      }

      if (!os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_223;
      }

      *v153 = 136316162;
      *&v153[4] = v122;
      *&v153[12] = 2080;
      *&v153[14] = "AFRCCalcRxEstimate";
      *&v153[22] = 1024;
      *&v153[24] = 2613;
      *&v153[28] = 1024;
      *&v153[30] = v69;
      *&v153[34] = 2080;
      *&v153[36] = v138;
      v129 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\t\t%s";
      goto LABEL_235;
    }

    if (!v138[0] || VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_224;
    }

    v112 = VRTraceErrorLogLevelToCSTR();
    v109 = *MEMORY[0x1E6986650];
    v113 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_224;
      }

      *v153 = 136316162;
      *&v153[4] = v112;
      *&v153[12] = 2080;
      *&v153[14] = "AFRCCalcRxEstimate";
      *&v153[22] = 1024;
      *&v153[24] = 2606;
      *&v153[28] = 1024;
      *&v153[30] = v69;
      *&v153[34] = 2080;
      *&v153[36] = v138;
      v111 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\t\t%s\n";
      goto LABEL_195;
    }

    if (!os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_224;
    }

    *v153 = 136316162;
    *&v153[4] = v112;
    *&v153[12] = 2080;
    *&v153[14] = "AFRCCalcRxEstimate";
    *&v153[22] = 1024;
    *&v153[24] = 2606;
    *&v153[28] = 1024;
    *&v153[30] = v69;
    *&v153[34] = 2080;
    *&v153[36] = v138;
    v128 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\t\t%s\n";
    goto LABEL_221;
  }

  if (v100)
  {
    if (v100 != -2 || !v138[0])
    {
      if (v100 != -1 && a1 - *(v16 + 1120) <= v100 / 1000000.0)
      {
        goto LABEL_224;
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_223;
      }

      v118 = VRTraceErrorLogLevelToCSTR();
      v119 = *MEMORY[0x1E6986650];
      v120 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          *v153 = 136316162;
          *&v153[4] = v118;
          *&v153[12] = 2080;
          *&v153[14] = "AFRCCalcRxEstimate";
          *&v153[22] = 1024;
          *&v153[24] = 2644;
          *&v153[28] = 1024;
          *&v153[30] = v69;
          *&v153[34] = 2080;
          *&v153[36] = v138;
          v121 = "VCRC [%s] %s:%d \t\t\t\t AFRCCalcRxEstimate [%d]: //////\t\t%s\n";
LABEL_212:
          _os_log_impl(&dword_1DB56E000, v119, OS_LOG_TYPE_DEFAULT, v121, v153, 0x2Cu);
        }

LABEL_223:
        *(v16 + 1120) = a1;
        goto LABEL_224;
      }

      if (!os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_223;
      }

      *v153 = 136316162;
      *&v153[4] = v118;
      *&v153[12] = 2080;
      *&v153[14] = "AFRCCalcRxEstimate";
      *&v153[22] = 1024;
      *&v153[24] = 2644;
      *&v153[28] = 1024;
      *&v153[30] = v69;
      *&v153[34] = 2080;
      *&v153[36] = v138;
      v129 = "VCRC [%s] %s:%d \t\t\t\t AFRCCalcRxEstimate [%d]: //////\t\t%s\n";
LABEL_235:
      _os_log_debug_impl(&dword_1DB56E000, v119, OS_LOG_TYPE_DEBUG, v129, v153, 0x2Cu);
      goto LABEL_223;
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_224;
    }

    v108 = VRTraceErrorLogLevelToCSTR();
    v109 = *MEMORY[0x1E6986650];
    v110 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (!os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_224;
      }

      *v153 = 136316162;
      *&v153[4] = v108;
      *&v153[12] = 2080;
      *&v153[14] = "AFRCCalcRxEstimate";
      *&v153[22] = 1024;
      *&v153[24] = 2638;
      *&v153[28] = 1024;
      *&v153[30] = v69;
      *&v153[34] = 2080;
      *&v153[36] = v138;
      v111 = "VCRC [%s] %s:%d \t\t\t\t AFRCCalcRxEstimate [%d]: //////\t\t%s\n";
LABEL_195:
      _os_log_impl(&dword_1DB56E000, v109, OS_LOG_TYPE_DEFAULT, v111, v153, 0x2Cu);
      goto LABEL_224;
    }

    if (!os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_224;
    }

    *v153 = 136316162;
    *&v153[4] = v108;
    *&v153[12] = 2080;
    *&v153[14] = "AFRCCalcRxEstimate";
    *&v153[22] = 1024;
    *&v153[24] = 2638;
    *&v153[28] = 1024;
    *&v153[30] = v69;
    *&v153[34] = 2080;
    *&v153[36] = v138;
    v128 = "VCRC [%s] %s:%d \t\t\t\t AFRCCalcRxEstimate [%d]: //////\t\t%s\n";
LABEL_221:
    _os_log_debug_impl(&dword_1DB56E000, v109, OS_LOG_TYPE_DEBUG, v128, v153, 0x2Cu);
    goto LABEL_224;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_224;
  }

  v114 = VRTraceErrorLogLevelToCSTR();
  v115 = *MEMORY[0x1E6986650];
  v116 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_224;
    }

    v124 = *(v16 + 1384);
    *(v16 + 1384) = v124 + 1;
    *v153 = 136318466;
    *&v153[4] = v114;
    *&v153[12] = 2080;
    *&v153[14] = "AFRCCalcRxEstimate";
    *&v153[22] = 1024;
    *&v153[24] = 2630;
    *&v153[28] = 1024;
    *&v153[30] = v124;
    *&v153[34] = 1024;
    *&v153[36] = a3;
    *&v153[40] = 1024;
    *&v153[42] = a4;
    *&v153[46] = 2048;
    *&v153[48] = a1;
    *&v153[56] = 1024;
    *&v153[58] = a5;
    *&v153[62] = 1024;
    *&v153[64] = v82;
    *&v153[68] = 1024;
    *&v153[70] = v83;
    *&v153[74] = 1024;
    *&v153[76] = v86;
    *&v153[80] = 2048;
    *&v153[82] = v72;
    *&v153[90] = 2048;
    *&v153[92] = v85;
    *&v153[100] = 2048;
    *&v153[102] = v69;
    v125 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\n/////tp: %d  ts/arr: %d/%f \t seq: %d sz: %d \t path: %d (%d)  BWD: %f/%f  Est: %f\n";
    v126 = v115;
    v127 = 110;
    goto LABEL_233;
  }

  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
  {
    v117 = *(v16 + 1384);
    *(v16 + 1384) = v117 + 1;
    *v153 = 136318466;
    *&v153[4] = v114;
    *&v153[12] = 2080;
    *&v153[14] = "AFRCCalcRxEstimate";
    *&v153[22] = 1024;
    *&v153[24] = 2630;
    *&v153[28] = 1024;
    *&v153[30] = v117;
    *&v153[34] = 1024;
    *&v153[36] = a3;
    *&v153[40] = 1024;
    *&v153[42] = a4;
    *&v153[46] = 2048;
    *&v153[48] = a1;
    *&v153[56] = 1024;
    *&v153[58] = a5;
    *&v153[62] = 1024;
    *&v153[64] = v82;
    *&v153[68] = 1024;
    *&v153[70] = v83;
    *&v153[74] = 1024;
    *&v153[76] = v86;
    *&v153[80] = 2048;
    *&v153[82] = v72;
    *&v153[90] = 2048;
    *&v153[92] = v85;
    *&v153[100] = 2048;
    *&v153[102] = v69;
    v105 = "VCRC [%s] %s:%d AFRCCalcRxEstimate [%d]: //////\n/////tp: %d  ts/arr: %d/%f \t seq: %d sz: %d \t path: %d (%d)  BWD: %f/%f  Est: %f\n";
    v106 = v115;
    v107 = 110;
    goto LABEL_200;
  }

LABEL_224:
  *(v16 + 936) = v69;
  if (*(v16 + 721) == 1)
  {
    v69 = *(v16 + 944);
  }

  *(v16 + 672) = v69;
  v130 = *(v16 + 1040);
  if (v130)
  {
    v131 = v130;
    if (v69 < v130)
    {
      v131 = v69;
    }

    *(v16 + 672) = v131;
  }

  pthread_mutex_unlock((v16 + 280));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetAudioBitRate(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  v5 = (v3 + 2700);
  pthread_mutex_lock((v3 + 2744));
  v6 = *(v4 + 2728);
  if (*(v4 + 2720) != v6)
  {
    *(v4 + 2720) = v6;
    MediaQueue_SetAudioFECLevel(v6);
  }

  *v5 = v5[1];
  pthread_mutex_unlock((v4 + 2744));
  VRLogfilePrintWithTimestamp(*(v4 + 2848), "New audio rate [%ukbps], fraction [%.2f], FEC [%.2f], RED[%u %u]\n", v7, v8, v9, v10, v11, v12, a2 / 1000);
  if (a2 >= 1)
  {
    *(v4 + 8) = a2;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetAudioPayload(uint64_t a1, int a2, int a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  *(v5 + 12) = a2;
  *(v5 + 16) = a3;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetAudioPauseTime(uint64_t a1, void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  if (a2)
  {
    *a2 = *(v3 + 2664);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetAudioMaxPauseTimes(uint64_t a1, void *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  if (a2)
  {
    *a2 = *(v3 + 2688);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCMarkSpecialAudioFlush(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  if (a2)
  {
    v5 = micro();
    *(v4 + 9840) = v5;
    pthread_mutex_lock((v4 + 2560));
    v6 = *(v4 + 2988) + 1;
    *(v4 + 2988) = v6;
    *(v4 + 2992) = v5;
    VRLogfilePrintWithTimestamp(*(v4 + 2848), "Add special audio flush(%u).\n", v7, v8, v9, v10, v11, v12, v6);
    pthread_mutex_unlock((v4 + 2560));
  }

  *(v4 + 9848) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetKeyFrameTimestamp(uint64_t a1, _DWORD *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v10 = *(v3 + 2496);
  *a2 = v10;
  if (*MEMORY[0x1E6986638] >= 5)
  {
    AFRCGetKeyFrameTimestamp_cold_1(v3, v10, v4, v5, v6, v7, v8, v9);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCMarkSpecialVideoFlush(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2149646338;
  }

  v5 = v4;
  pthread_mutex_lock(v4 + 40);
  ++*&v5[46].__opaque[36];
  *&v5[46].__opaque[54] = a3;
  *&v5[46].__opaque[40] = micro();
  VRLogfilePrintWithTimestamp(*&v5[44].__opaque[24], "Add special video flush(%u)%s.\n", v6, v7, v8, v9, v10, v11, *&v5[46].__opaque[36]);
  pthread_mutex_unlock(v5 + 40);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCLogMQFlushedPackets(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  VRLogfilePrintWithTimestamp(*(v3 + 2848), "MQ flushed %d video packets. [%.512s]\n", v4, v5, v6, v7, v8, v9, a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetQualityIndication(uint64_t a1, _DWORD *a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  if (a2)
  {
    *a2 = *(v3 + 9576) >= 1.0;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetAudioTxInfo(uint64_t a1, _DWORD *a2, int *a3, void *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, uint64_t a10)
{
  v17 = CheckInHandleDebug();
  if (!v17)
  {
    return 2149646338;
  }

  v18 = v17;
  if (a2)
  {
    if (!*(v17 + 2928) || (v19 = *(v17 + 48)) == 0)
    {
      v19 = *(v17 + 44);
    }

    *a2 = v19;
  }

  if (a3)
  {
    v20 = (*(v17 + 2728) * 100.0);
    if (v20 == 150)
    {
      v21 = 150;
    }

    else
    {
      v21 = 200;
    }

    if (v20 == 100)
    {
      v22 = 100;
    }

    else
    {
      v22 = v21;
    }

    *a3 = v22;
  }

  if (a4)
  {
    *a4 = *(v17 + 9576);
  }

  if (a5)
  {
    *a5 = *(v17 + 2708);
  }

  if (a6)
  {
    *a6 = *(v17 + 2712);
  }

  if (a7)
  {
    *a7 = *(v17 + 2680);
  }

  if (a8)
  {
    *a8 = *(v17 + 1404);
  }

  if (a9)
  {
    *a9 = *(v17 + 2656);
  }

  if (a10)
  {
    *a10 = 3;
    *(a10 + 24) = *(v17 + 176) * 100.0;
    *(a10 + 40) = *(v17 + 184) * 100.0;
    *(a10 + 48) = *(v17 + 256);
    *(a10 + 64) = *(v17 + 44);
    *(a10 + 56) = *(v17 + 2408);
    if (VCMediaControlInfo_IsLossStatsEnabled(*(v17 + 9852)))
    {
      *(a10 + 80) = *(v18 + 272);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetTxInfo(uint64_t a1, _DWORD *a2, void *a3, NSObject *a4, _DWORD *a5, void *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _BYTE *a11, _DWORD *a12)
{
  v158 = *MEMORY[0x1E69E9840];
  v19 = CheckInHandleDebug();
  if (!v19)
  {
    return 2149646338;
  }

  v20 = v19;
  v135 = a8;
  v136 = a3;
  v21 = a10;
  v137 = a2;
  if (a9)
  {
    *a9 = 0;
    if (*(v19 + 720) == 1)
    {
      v22 = *(v19 + 864);
      v23 = micro();
      if (*(v20 + 1048) == 0.0)
      {
        *(v20 + 1048) = v23;
        *(v20 + 1056) = v23;
        *(v20 + 1088) = v23;
      }

      if (*(v20 + 1104) == 1)
      {
        if (*(v20 + 2404))
        {
          v24 = v23 - *(v20 + 2416) > 0.5;
        }

        else
        {
          v24 = 0;
        }

        v26 = 0;
        if ((*(v20 + 1396) & 1) != 0 && !v24)
        {
          v26 = g_adwTxRateTiers[*(v20 + 28) + 1] <= *(v20 + 20);
        }

        v27 = v23 - *(v20 + 1088);
        if (v27 < 3.0)
        {
          v26 = 1;
        }

        if (!v26 || v27 >= 10.0)
        {
          *(v20 + 1104) = 0;
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v29 = VRTraceErrorLogLevelToCSTR();
            v30 = *MEMORY[0x1E6986650];
            v31 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v139 = v29;
                v140 = 2080;
                v141 = "BWEstCheckIfLargeFrameNeeded";
                v142 = 1024;
                v143 = 6160;
                _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Enabling LF", buf, 0x1Cu);
              }
            }

            else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              AFRCGetTxInfo_cold_1(v29);
            }
          }
        }
      }

      *(v20 + 1068) = BWEstCalcLargeFrameSize(v20, 0);
      if ((*(v20 + 1104) & 1) == 0)
      {
        v32 = v23 - *(v20 + 1056);
        v33 = v23 - *(v20 + 1048) < v22 || v32 < v22 * 0.5;
        if (!v33)
        {
          if (*(v20 + 2404) && v23 - *(v20 + 2416) > 0.5)
          {
LABEL_225:
            v38 = *(v20 + 1068);
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v126 = VRTraceErrorLogLevelToCSTR();
              v127 = *MEMORY[0x1E6986650];
              loga = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315906;
                  v139 = v126;
                  v140 = 2080;
                  v141 = "BWEstCheckIfLargeFrameNeeded";
                  v142 = 1024;
                  v143 = 6199;
                  v144 = 1024;
                  LODWORD(v145) = v38;
                  _os_log_impl(&dword_1DB56E000, loga, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ^^^^^ LARGE frame req'd of %d ", buf, 0x22u);
                }
              }

              else if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
              {
                AFRCGetTxInfo_cold_2();
              }
            }

            goto LABEL_39;
          }

          if (v32 > v22 * 3.0)
          {
            *(v20 + 1068) = BWEstCalcLargeFrameSize(v20, 1u);
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v34 = VRTraceErrorLogLevelToCSTR();
              v35 = *MEMORY[0x1E6986650];
              v36 = *MEMORY[0x1E6986650];
              if (*MEMORY[0x1E6986640] == 1)
              {
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  v37 = *(v20 + 1068);
                  *buf = 136316162;
                  v139 = v34;
                  v140 = 2080;
                  v141 = "BWEstCheckIfLargeFrameNeeded";
                  v142 = 1024;
                  v143 = 6189;
                  v144 = 2048;
                  v145 = *&v32;
                  v146 = 1024;
                  *v147 = v37;
                  _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ^ %.3f since last LF; CRITICAL: letting it go; size is %d ", buf, 0x2Cu);
                }
              }

              else if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
              {
                v128 = *(v20 + 1068);
                *buf = 136316162;
                v139 = v34;
                v140 = 2080;
                v141 = "BWEstCheckIfLargeFrameNeeded";
                v142 = 1024;
                v143 = 6189;
                v144 = 2048;
                v145 = *&v32;
                v146 = 1024;
                *v147 = v128;
                _os_log_debug_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d ^ %.3f since last LF; CRITICAL: letting it go; size is %d ", buf, 0x2Cu);
              }
            }

            goto LABEL_225;
          }
        }
      }

      v38 = 0;
LABEL_39:
      *(v20 + 1064) = v38;
      *a9 = v38;
      a2 = v137;
    }
  }

  if (a10 && *(v20 + 2928))
  {
    log = a4;
    v39 = (v20 + 9624);
    v40 = *(v20 + 2960);
    v41 = micro();
    pthread_mutex_lock((v20 + 2560));
    v132 = *(v20 + 1392);
    v48 = *(v20 + 3026);
    v49 = *(v20 + 9624);
    v50 = v49 != 255 && v48 != v49;
    if (v49 == 255 || v48 != v49)
    {
      reportingLog();
      LOBYTE(v48) = *(v20 + 3026);
    }

    *v39 = v48;
    v130 = a6;
    v131 = a7;
    v129 = a5;
    if (v50 && *(v20 + 9664))
    {
      *(v20 + 9664) = 0;
      *(v20 + 9688) = 0;
      *(v20 + 9680) = v41;
      if (v40)
      {
        if (*(v20 + 9692) && *(v20 + 9656) >= 1.0)
        {
          v52 = 8;
        }

        else
        {
          v52 = 9;
        }
      }

      else
      {
        if (*(v20 + 28) >= *(v20 + 9648) || *(v20 + 9572))
        {
          v52 = 0;
LABEL_102:
          *(v20 + 2968) = *(v20 + 9632);
          *(v20 + 2980) = *(v20 + 9640);
          *(v20 + 2480) = *(v20 + 9692);
          if ((v52 & v40 & 1) == 0)
          {
            *(v20 + 1400) = 6;
            v61 = *(v20 + 1404) + 1;
            *(v20 + 1404) = v61;
            *(v20 + 9568) = v61;
          }

          *(v20 + 36) = *(v20 + 28);
          v62 = *(v20 + 9648);
          *(v20 + 28) = v62;
          *(v20 + 44) = g_adwTxRateTiers[v62];
          *(v20 + 2956) = 0;
          v63 = *(v20 + 9656);
          if (*(v20 + 9576) >= v63 || (*(v20 + 9576) = v63, *(v20 + 9584) = v41, MediaQueue_SetAudioFraction(v63), VRTraceGetErrorLogLevelForModule() < 7))
          {
            v57 = 0;
            v58 = 0;
            v56 = 1;
          }

          else
          {
            v64 = v50;
            v65 = v40;
            v66 = VRTraceErrorLogLevelToCSTR();
            v67 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v68 = *(v20 + 9656);
              v69 = *(v20 + 9576);
              *buf = 136316162;
              v139 = v66;
              v140 = 2080;
              v141 = "UpdateBBAction";
              v142 = 1024;
              v143 = 3261;
              v144 = 2048;
              v145 = v68;
              v146 = 2048;
              *v147 = v69;
              _os_log_impl(&dword_1DB56E000, v67, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Audio fraction change [%.2f->%.2f].", buf, 0x30u);
            }

            v57 = 0;
            v58 = 0;
            v56 = 1;
            v40 = v65;
            v50 = v64;
            v39 = (v20 + 9624);
          }

LABEL_110:
          if (*(v20 + 2472))
          {
            if ((v52 & 8) == 0)
            {
              goto LABEL_118;
            }
          }

          else if ((v52 & 8) == 0 || !*(v20 + 2476))
          {
            goto LABEL_118;
          }

          if ((v52 & 2) == 0 && v41 - *(v20 + 9592) > 0.1)
          {
            v52 |= 2u;
            *(v20 + 9592) = v41;
            v56 = 1;
          }

LABEL_118:
          if ((v52 & 8) != 0)
          {
            if (!*(v20 + 3032))
            {
              v52 &= 7u;
              if ((v52 & 2) == 0)
              {
LABEL_122:
                if (*(v20 + 3000))
                {
                  v52 |= 0x10u;
                  *(v20 + 3000) = 0;
                }

LABEL_128:
                if ((v57 | v58) == 1)
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v70 = VRTraceErrorLogLevelToCSTR();
                    v71 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      v72 = *(v20 + 9576);
                      v73 = "";
                      v74 = *(v20 + 2720);
                      v75 = *(v20 + 2700);
                      v76 = *(v20 + 2704);
                      if (v57)
                      {
                        v73 = "AWM";
                      }

                      if (v58)
                      {
                        v73 = "HWM";
                      }

                      *buf = 136317698;
                      v139 = v70;
                      v140 = 2080;
                      v141 = "UpdateBBAction";
                      v142 = 1024;
                      v143 = 3379;
                      v144 = 2080;
                      v145 = v73;
                      v146 = 1024;
                      *v147 = v132 / 0x3E8;
                      *&v147[4] = 2048;
                      *&v147[6] = v72;
                      v148 = 2048;
                      v149 = v74;
                      v150 = 1024;
                      v151 = v75;
                      v152 = 1024;
                      v153 = v76;
                      v154 = 1024;
                      v155 = v40;
                      v156 = 1024;
                      v157 = v52;
                      _os_log_impl(&dword_1DB56E000, v71, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d %s is hit, [audio:%u, factor:%.2f, FEC:%.2f, RED:%u, %u, %02X->%02X]", buf, 0x58u);
                    }
                  }
                }

                else if ((!v56 & ~v50) != 0)
                {
                  goto LABEL_142;
                }

                v77 = "AWM is hit! ";
                if (!v57)
                {
                  v77 = "";
                }

                if (v58)
                {
                  v77 = "HWM is hit! ";
                }

                VRLogfilePrintWithTimestamp(*(v20 + 2848), "%s%sAudio[%u %.2f %.2f %u %u], Action[%02X->%02X(%u)]%s.\n", v42, v43, v44, v45, v46, v47, v77);
LABEL_142:
                v21 = a10;
                a5 = v129;
                a4 = log;
                a2 = v137;
                if (*(v20 + 2956))
                {
                  v78 = *(v20 + 28);
                  v79 = *(v20 + 40);
                  v80 = v78 - 1;
                  v81 = &g_adwTxRateTiers[v78];
                  v82 = *(v20 + 28);
                  while (1)
                  {
                    v83 = *v81--;
                    if (v83 <= *(v20 + 2968))
                    {
                      break;
                    }

                    --v82;
                    if (!*(v20 + 9696))
                    {
                      v33 = v80-- <= v79;
                      if (!v33)
                      {
                        continue;
                      }
                    }

                    if (v82 <= v79)
                    {
                      v82 = *(v20 + 40);
                    }

                    break;
                  }

                  if (v78 != v82)
                  {
                    *(v20 + 1400) = 3;
                    v84 = *(v20 + 1404) + 1;
                    *(v20 + 1404) = v84;
                    *(v20 + 36) = v78;
                    *(v20 + 28) = v82;
                    *(v20 + 44) = g_adwTxRateTiers[v82];
                    *(v20 + 9568) = v84;
                    *(v20 + 2484) = 1;
                    if (*(v20 + 2816))
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 7)
                      {
                        v85 = VRTraceErrorLogLevelToCSTR();
                        v86 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                        {
                          v87 = *(v20 + 44);
                          *buf = 136315906;
                          v139 = v85;
                          v140 = 2080;
                          v141 = "RampDownTxRate";
                          v142 = 1024;
                          v143 = 3170;
                          v144 = 1024;
                          LODWORD(v145) = v87;
                          _os_log_impl(&dword_1DB56E000, v86, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: Congestion!!! TxRate v %u, Baseband.", buf, 0x22u);
                        }
                      }
                    }

                    VRLogfilePrint(*(v20 + 2832), "Congestion!!! TxRate v %u, Baseband.\n", v42, v43, v44, v45, v46, v47, *(v20 + 44));
                    VRLogfilePrintWithTimestamp(*(v20 + 2848), "Rate change [%u] (Ramp Down to %u, Baseband).\n", v88, v89, v90, v91, v92, v93, *(v20 + 9568));
                    a2 = v137;
                  }

                  v94 = *(v20 + 1396);
                  if (v94)
                  {
                    *(v20 + 1396) = v94 & 0xFFFFFFFE;
                    calculateInitialRampUpDeltas(v20);
                    if (*(v20 + 2816))
                    {
                      if (VRTraceGetErrorLogLevelForModule() >= 7)
                      {
                        v101 = VRTraceErrorLogLevelToCSTR();
                        v102 = *MEMORY[0x1E6986650];
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136315906;
                          v139 = v101;
                          v140 = 2080;
                          v141 = "RampDownTxRate";
                          v142 = 1024;
                          v143 = 3179;
                          v144 = 2080;
                          v145 = "Initial Rampup done!";
                          _os_log_impl(&dword_1DB56E000, v102, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %s", buf, 0x26u);
                        }
                      }
                    }

                    VRLogfilePrint(*(v20 + 2832), "%s", v95, v96, v97, v98, v99, v100, "Initial Rampup done!\n");
                    VRLogfilePrintWithTimestamp(*(v20 + 2848), "%s", v103, v104, v105, v106, v107, v108, "Initial Rampup done!\n");
                    v94 = *(v20 + 1396);
                    a2 = v137;
                  }

                  if ((v94 & 4) != 0)
                  {
                    *(v20 + 1396) = v94 & 0xFFFFFFFB;
                  }

                  if (*(v20 + 1400) == 3)
                  {
                    v109 = *(v20 + 2552) + 1;
                    *(v20 + 2552) = v109;
                    v110 = *(v20 + 2544);
                    if (v110 == 0.0)
                    {
                      *(v20 + 2544) = v41;
                    }

                    else if (v41 - v110 >= 2.0)
                    {
                      *(v20 + 2552) = 0;
                      *(v20 + 2544) = 0;
                    }

                    else if (v109 >= 4)
                    {
                      *(v20 + 2408) = 1;
                    }
                  }

                  *(v20 + 2520) = v41;
                }

                if (v52)
                {
                  v111 = v39[212];
                  if (v111)
                  {
                    if (*(v20 + 2480))
                    {
                      *(v20 + 2480) = 0;
                      v112 = 1;
                      goto LABEL_182;
                    }

                    v112 = 1;
                    goto LABEL_181;
                  }

                  v52 &= ~1u;
                }

                if (*(v20 + 2480))
                {
                  v112 = 0;
                  goto LABEL_182;
                }

                v112 = 0;
                v111 = v39[212];
LABEL_181:
                v52 |= v111;
LABEL_182:
                v113 = *(v20 + 2960);
                if (!*(v20 + 2472) && (v52 & 1) == 0 && (v113 & 1) != 0)
                {
                  *(v20 + 1400) = 5;
                  v114 = *(v20 + 1404) + 1;
                  *(v20 + 1404) = v114;
                  *(v20 + 9568) = v114;
                }

                if (((v113 ^ v52) & 1) != 0 && v39[212] == 1)
                {
                  if (v52)
                  {
                    *(v20 + 1388) = 0;
                  }

                  v115 = "Resumed";
                  if (*(v20 + 2816))
                  {
                    if (VRTraceGetErrorLogLevelForModule() >= 7)
                    {
                      v116 = VRTraceErrorLogLevelToCSTR();
                      v117 = *MEMORY[0x1E6986650];
                      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                      {
                        if (v52)
                        {
                          v118 = "Stopped";
                        }

                        else
                        {
                          v118 = "Resumed";
                        }

                        *buf = 136315906;
                        v139 = v116;
                        v140 = 2080;
                        v141 = "UpdateBBAction";
                        v142 = 1024;
                        v143 = 3435;
                        v144 = 2080;
                        v145 = v118;
                        _os_log_impl(&dword_1DB56E000, v117, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: Video %s...", buf, 0x26u);
                      }
                    }
                  }

                  if (v52)
                  {
                    v115 = "Stopped";
                  }

                  VRLogfilePrint(*(v20 + 2832), "Video %s...\n", v42, v43, v44, v45, v46, v47, v115);
                  VRLogfilePrintWithTimestamp(*(v20 + 2848), "Video %s...\n", v119, v120, v121, v122, v123, v124, v115);
                  a4 = log;
                  a2 = v137;
                }

                *(v20 + 2476) = v112;
                *(v20 + 2960) = v52;
                pthread_mutex_unlock((v20 + 2560));
                a6 = v130;
                a7 = v131;
                goto LABEL_201;
              }

LABEL_125:
              if (*(v20 + 3032))
              {
                ++*(v20 + 2988);
                *(v20 + 2992) = v41;
              }

              else
              {
                v52 &= ~2u;
              }

              goto LABEL_128;
            }

            ++*(v20 + 2988);
            *(v20 + 2992) = v41;
          }

          if ((v52 & 2) == 0)
          {
            goto LABEL_122;
          }

          goto LABEL_125;
        }

        *(v20 + 9592) = v41;
        v52 = 10;
      }

      *(v20 + 9600) = v41;
      goto LABEL_102;
    }

    v53 = *(v20 + 2980);
    if (v53 < 0x7D1 || ((v54 = *(v20 + 2504), v54 != 0.0) ? (v55 = v41 - v54 <= 0.5) : (v55 = 1), v55))
    {
      if (!*(v20 + 2956))
      {
        if ((v40 & 1) != 0 && (*(v20 + 9576) < 1.0 || v41 - *(v20 + 9584) <= 2.0 || v41 - *(v20 + 9552) <= 2.0))
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v52 = 1;
        }

        else
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v52 = 0;
        }

        goto LABEL_110;
      }

      v52 = v40 & 1;
      if (v53 <= 0x1F3)
      {
        v56 = (v40 & 1) != 0 && (*(v20 + 9576) < 1.0 || v41 - *(v20 + 9584) <= 2.0 || v41 - *(v20 + 9552) <= 2.0);
        v58 = 0;
        *(v20 + 2956) = 0;
        v57 = 1;
        v52 = v56;
        goto LABEL_110;
      }

      v56 = 0;
LABEL_98:
      v57 = 0;
      v58 = 0;
      goto LABEL_110;
    }

    v59 = *(v20 + 2968);
    if (v59 >= v132)
    {
      if (v59 >= g_adwTxRateTiers[*(v20 + 40)])
      {
        if ((v40 & 1) == 0)
        {
          if (*(v20 + 3036) + *(v20 + 3032) > 2 * (v59 >> 3) && v41 - *(v20 + 9592) > 0.1)
          {
            v60 = (v20 + 9592);
            v52 = 2;
            goto LABEL_95;
          }

          v56 = 0;
          v52 = 0;
LABEL_97:
          if (!*(v20 + 2956))
          {
            v57 = 0;
            v58 = 1;
            *(v20 + 2956) = 1;
            goto LABEL_110;
          }

          goto LABEL_98;
        }
      }

      else if ((v40 & 1) == 0)
      {
        v60 = (v20 + 9592);
        v52 = 3;
        goto LABEL_95;
      }
    }

    else
    {
      if ((v40 & 1) == 0)
      {
        *(v20 + 9592) = v41;
        v60 = (v20 + 9600);
        v52 = 11;
LABEL_95:
        *v60 = v41;
        v56 = 1;
        goto LABEL_97;
      }

      if (*(v20 + 3036) + *(v20 + 3032) > ((v132 >> 2) & 0x1FFFFFFF) && v41 - *(v20 + 9600) > 0.1)
      {
        v60 = (v20 + 9600);
        v52 = 9;
        goto LABEL_95;
      }
    }

    v56 = 0;
    v52 = 1;
    goto LABEL_97;
  }

LABEL_201:
  if (a2)
  {
    *a2 = *(v20 + 44);
  }

  if (v135)
  {
    *v135 = *(v20 + 1392);
  }

  if (v136)
  {
    *v136 = *(v20 + 2720);
  }

  if (a4)
  {
    LODWORD(a4->isa) = *(v20 + 2700);
  }

  if (a5)
  {
    *a5 = *(v20 + 2704);
  }

  if (a6)
  {
    *a6 = *(v20 + 2736);
  }

  if (a7)
  {
    *a7 = *(v20 + 1404);
  }

  if (v21)
  {
    *v21 = *(v20 + 2960);
  }

  v125 = Throttling_AFRC_IsInThrottlingMode((v20 + 872), *(v20 + 44));
  *(v20 + 884) = v125;
  if (a11)
  {
    *a11 = v125;
  }

  if (a12)
  {
    *a12 = *(v20 + 252);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCRecordMaxBurstyLoss(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 2864));
  if (*(v4 + 140) < a2)
  {
    *(v4 + 140) = a2;
  }

  pthread_mutex_unlock((v4 + 2864));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCRecordMaxAudioConsecutiveLoss(uint64_t a1, unsigned int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 2864));
  if (*(v4 + 144) < a2)
  {
    *(v4 + 144) = a2;
  }

  pthread_mutex_unlock((v4 + 2864));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCUpdateVideoSendingBitrate(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  *(v3 + 1388) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCUpdateAudioSendingBitrate(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  *(v3 + 1392) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetFeedbackControlInfo(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  pthread_mutex_lock((v3 + 2864));
  if (a2)
  {
    v5 = *(v4 + 672) / 1000.0;
    v6 = *(v4 + 116);
    LOWORD(v20) = *(v4 + 112);
    WORD1(v20) = v5;
    v7 = *(v4 + 136);
    WORD2(v20) = *(v4 + 140);
    WORD5(v20) = *(v4 + 128);
    WORD3(v20) = v7;
    v8 = *(v4 + 164);
    HIDWORD(v20) = (*(v4 + 120) + v6) >> 3;
    LODWORD(v21) = v8;
    WORD4(v20) = *(v4 + 144);
    *(v4 + 140) = 0;
    *(v4 + 144) = 0;
    pthread_mutex_unlock((v4 + 2864));
    VCMediaControlInfoSetInfoUnserialized(a2, &v20, 0);
  }

  else
  {
    *(v4 + 140) = 0;
    *(v4 + 144) = 0;
    pthread_mutex_unlock((v4 + 2864));
  }

  VCRateControlGetBWEstimation(*(v4 + 9760), (v4 + 688));
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    v13 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(v4 + 688);
        v15 = *(v4 + 672) / 1000.0;
        *buf = 136316162;
        v24 = v11;
        v25 = 2080;
        v26 = "AFRCSetFeedbackControlInfo";
        v27 = 1024;
        v28 = 3621;
        v29 = 1024;
        v30 = v14 / 0x3E8;
        v31 = 1024;
        v32 = v15;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Bandwidth estimation new: %d, afrc:%d", buf, 0x28u);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(v4 + 688);
      v19 = *(v4 + 672) / 1000.0;
      *buf = 136316162;
      v24 = v11;
      v25 = 2080;
      v26 = "AFRCSetFeedbackControlInfo";
      v27 = 1024;
      v28 = 3621;
      v29 = 1024;
      v30 = v18 / 0x3E8;
      v31 = 1024;
      v32 = v19;
      _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d Bandwidth estimation new: %d, afrc:%d", buf, 0x28u);
    }
  }

  v16 = *(v4 + 9796);
  if (v16)
  {
    LODWORD(v10) = *(v4 + 44);
    if (RateMonitorUpdateDataSamples(*(v4 + 9768), v10, v16))
    {
      if ((*(v4 + 9776) & 1) == 0)
      {
        reportingSymptom();
        *(v4 + 9776) = 1;
      }
    }
  }

  v17 = *(v4 + 688);
  if (v17 && RateMonitorUpdateDataSamples(*(v4 + 9784), *(v4 + 672), v17) && (*(v4 + 9792) & 1) == 0)
  {
    reportingSymptom();
    *(v4 + 9792) = 1;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetPeerArrivalTime(uint64_t a1, int a2, void *a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  if (!a2)
  {
    v6 = v5;
    pthread_mutex_lock((v5 + 2864));
    *a3 = *(v6 + 152);
    pthread_mutex_unlock((v6 + 2864));
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGenerateFeedbackWithControlInfo(void *a1, int32x4_t *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 2149580801;
  }

  if (!a1)
  {
    return 0;
  }

  if (VCMediaControlInfoHasInfo(a1, 0))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    VCMediaControlInfoGetInfoUnserialized(a1, &v8, 0);
    a2->i32[0] = v8;
    a2->i32[2] = WORD1(v8);
    v4 = vmovl_u16(*(&v8 + 4));
    a2[1] = vuzp1q_s32(v4, vextq_s8(v4, v4, 0xCuLL));
    a2[2].i32[0] = v9;
  }

  if (VCMediaControlInfoHasInfo(a1, 1))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    VCMediaControlInfoGetInfoUnserialized(a1, &v8, 1);
    a2->i32[1] = DWORD1(v9);
    v5 = HIDWORD(v9);
    a2[2].i32[1] = WORD4(v9);
    a2[2].i32[2] = v5;
  }

  result = VCMediaControlInfoHasInfo(a1, 2);
  if (result)
  {
    LODWORD(v8) = -1431655766;
    VCMediaControlInfoGetInfo(a1, 2, &v8, 4, 0);
    result = 0;
    v7 = bswap32(v8);
  }

  else
  {
    v7 = -1;
  }

  a2[2].i32[3] = v7;
  return result;
}

uint64_t AFRCProcessVideoReceiveMetric(uint64_t a1, int a2, int a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  v6 = v5;
  pthread_mutex_lock((v5 + 2864));
  *(v6 + 132) = a2;
  *(v6 + 120) = a3;
  pthread_mutex_unlock((v6 + 2864));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCProcessFeedbackPacket(double a1, double a2, double a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, int a9, int a10)
{
  v147 = *MEMORY[0x1E69E9840];
  v19 = MicroToNTP(a1);
  v20 = NTPToMiddle32(v19);
  v21 = CheckInHandleDebug();
  if (!v21)
  {
    return 2149646338;
  }

  v22 = v21;
  v23 = (v21 + 268);
  pthread_mutex_lock((v21 + 2864));
  v24 = *(a5 + 36);
  *(v22 + 252) = *(a5 + 8);
  v25 = (v22 + 252);
  *(v22 + 128) = a7;
  *(v22 + 112) = v24;
  *(v22 + 116) = a8;
  *(v22 + 160) = a6;
  *(v22 + 136) = *(v22 + 132);
  *v23 = *(a5 + 24);
  *(v22 + 264) = *(a5 + 12);
  *(v22 + 276) = *(a5 + 16);
  pthread_mutex_unlock((v22 + 2864));
  pthread_mutex_lock((v22 + 2560));
  *(v22 + 152) = a1;
  pthread_mutex_unlock((v22 + 2560));
  Throttling_AFRC_OverrideRxEstimate(v22 + 872, (v22 + 252));
  v26 = *(a5 + 36);
  if (*(v22 + 168))
  {
    v27 = *(v22 + 172);
    if (v26 == v27 || (v26 - v27) >= 0x7FFFu)
    {
      goto LABEL_139;
    }

    if (*(a5 + 36) < v27)
    {
      v27 += 0x10000;
    }

    v26 |= v27 & 0xFFFF0000;
    *(v22 + 172) = v26;
  }

  else
  {
    *(v22 + 168) = 1;
    *(v22 + 172) = v26;
  }

  v29 = *(a5 + 4);
  if (v29)
  {
    v30 = (v20 >> 6);
    v31 = *a5;
    if (v30 < *a5)
    {
      v30 |= 0x10000u;
    }

    v32 = v30 - v31;
    v33 = v32 >= v29;
    v34 = v32 - v29;
    if (v34 == 0 || !v33)
    {
      v34 = 1;
    }

    v35 = *(v22 + 52);
    if (v35)
    {
      v34 = (9 * v35 + v34) / 0xA;
    }

    *(v22 + 52) = v34;
  }

  else
  {
    v34 = *(v22 + 52);
    v31 = -1;
  }

  *(v22 + 260) = v31;
  v36 = vcvtd_n_f64_u32(v34, 0xAuLL);
  v37 = *(v22 + 56);
  if (v37 <= v36)
  {
    v37 = v36;
  }

  *(v22 + 56) = v37;
  v38 = *(v22 + 64);
  if (v38 <= *(a5 + 16))
  {
    v38 = *(a5 + 16);
  }

  *(v22 + 64) = v38;
  v45 = RTPUnpackDouble(*(a5 + 40));
  if (a2 >= 0.0)
  {
    *(v22 + 176) = a2;
  }

  if (a3 >= 0.0)
  {
    *(v22 + 184) = a3;
  }

  if (a9 != -1)
  {
    *(v22 + 248) = a9;
  }

  if (a10 != -1)
  {
    *(v22 + 256) = a10;
  }

  v46 = vcvtd_n_f64_u32(v26, 0xAuLL);
  VRLogfilePrint(*(v22 + 2840), "%04X\t%u\t%u\t%u\t%u\t%u\t%04X\t%u\n", v39, v40, v41, v42, v43, v44, *a5);
  UpdateFECLevel(v22);
  v47 = *(a5 + 40) != 0xFFFF;
  v136 = -1431655766;
  v48 = micro();
  pthread_mutex_lock((v22 + 2560));
  if (!*(v22 + 2472))
  {
    if ((*(v22 + 1396) & 1) == 0 || *(v22 + 2948) || *(v22 + 2952) || *(v22 + 9696))
    {
      v49 = *(v22 + 28) + 1;
    }

    else
    {
      v104 = *(v22 + 28);
      if (g_adwTxRateTiers[v104 + 2] > *(v22 + 20))
      {
        v49 = v104 + 1;
      }

      else
      {
        v49 = v104 + 2;
      }
    }

    v50 = v49 <= 36 && g_adwTxRateTiers[v49] <= *(v22 + 20);
    v136 = v50;
    DetectCongestion(v22, v31, &v136, v47, v46, v45, v36);
    v57 = *(v22 + 1396);
    if ((v57 & 2) == 0)
    {
      if ((v57 & 9) != 0 && v136)
      {
        if (*(v22 + 2960))
        {
          v98 = *(v22 + 9576);
          if (v98 >= 1.0)
          {
            *(v22 + 2480) = 1;
          }

          else if (*(v22 + 9572) >= 1 && v48 - *(v22 + 9584) > 2.0)
          {
            v99 = fmin(v98 + v98, 1.0);
            *(v22 + 9576) = v99;
            *(v22 + 9584) = v48;
            MediaQueue_SetAudioFraction(v99);
            *(v22 + 9572) = 0;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v100 = VRTraceErrorLogLevelToCSTR();
              v101 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v102 = *(v22 + 9576);
                *buf = 136316162;
                v138 = v100;
                v139 = 2080;
                v140 = "DoRateControl";
                v141 = 1024;
                v142 = 4282;
                v143 = 2048;
                v144 = *&v98;
                v145 = 2048;
                v146 = v102;
                _os_log_impl(&dword_1DB56E000, v101, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Audio fraction change [%.2f->%.2f].", buf, 0x30u);
              }
            }
          }

          v103 = *(v22 + 1396);
          if (v103)
          {
            *(v22 + 1396) = v103 & 0xFFFFFFFE;
            calculateInitialRampUpDeltas(v22);
            v103 = *(v22 + 1396);
          }

          if ((v103 & 8) == 0)
          {
            goto LABEL_134;
          }
        }

        else
        {
          if ((v57 & 1) == 0)
          {
            if (*(v22 + 2944))
            {
              if (v49 <= 35 && *v25)
              {
                v58 = v49 - 36;
                v59 = &g_adwTxRateTiers[v49 + 1];
                while (*v59 < *(v22 + 20) && (*(v59 - 1) - *(v22 + 44)) >> 8 <= 0x7C && 1000 * *v25 > v59[1])
                {
                  ++v49;
                  ++v59;
                  v33 = __CFADD__(v58++, 1);
                  if (v33)
                  {
                    v49 = 36;
                    break;
                  }
                }
              }
            }

            else
            {
              if (!*(v22 + 2948) && !*(v22 + 2952) && !*(v22 + 9696) && v49 <= 35 && *(v22 + 2512) <= *(v22 + 2520))
              {
                v132 = *(v22 + 9572);
                v133 = v49 + 1;
                while (1)
                {
                  v134 = g_adwTxRateTiers[v133];
                  if (v134 >= *(v22 + 20))
                  {
                    break;
                  }

                  if (v134 - *(v22 + 44) > 0xFA00 || v132 <= 0)
                  {
                    break;
                  }

                  --v132;
                  ++v49;
                  ++v133;
                  v105 = 36;
                  if (v133 == 37)
                  {
                    goto LABEL_119;
                  }
                }
              }

              v105 = v49;
LABEL_119:
              *(v22 + 9572) = 0;
              v49 = v105;
            }
          }

          *(v22 + 36) = *(v22 + 28);
          *(v22 + 28) = v49;
          *(v22 + 44) = g_adwTxRateTiers[v49];
          *(v22 + 1400) = 2;
          v106 = *(v22 + 1404) + 1;
          *(v22 + 1404) = v106;
          *(v22 + 9568) = v106;
          *(v22 + 2552) = 0;
          *(v22 + 2544) = 0;
          if (*(v22 + 2816))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v107 = VRTraceErrorLogLevelToCSTR();
              v108 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v109 = *(v22 + 44);
                *buf = 136315906;
                v138 = v107;
                v139 = 2080;
                v140 = "DoRateControl";
                v141 = 1024;
                v142 = 4250;
                v143 = 1024;
                LODWORD(v144) = v109;
                _os_log_impl(&dword_1DB56E000, v108, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: TxRate ^ %u", buf, 0x22u);
              }
            }
          }

          VRLogfilePrint(*(v22 + 2832), "TxRate ^ %u\n", v51, v52, v53, v54, v55, v56, *(v22 + 44));
          VRLogfilePrintWithTimestamp(*(v22 + 2848), "Rate change [%u] (Ramp Up to %u).\n", v110, v111, v112, v113, v114, v115, *(v22 + 9568));
          if (v49 > 35 || g_adwTxRateTiers[v49 + 1] >= *(v22 + 20))
          {
            v116 = *(v22 + 1396);
            if (v116)
            {
              *(v22 + 1396) = v116 & 0xFFFFFFFE;
              calculateInitialRampUpDeltas(v22);
              if (*(v22 + 2816))
              {
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v123 = VRTraceErrorLogLevelToCSTR();
                  v124 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315906;
                    v138 = v123;
                    v139 = 2080;
                    v140 = "DoRateControl";
                    v141 = 1024;
                    v142 = 4260;
                    v143 = 2080;
                    v144 = "Initial Rampup Done!";
                    _os_log_impl(&dword_1DB56E000, v124, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %s", buf, 0x26u);
                  }
                }
              }

              VRLogfilePrint(*(v22 + 2832), "%s", v117, v118, v119, v120, v121, v122, "Initial Rampup Done!\n");
              VRLogfilePrintWithTimestamp(*(v22 + 2848), "%s", v125, v126, v127, v128, v129, v130, "Initial Rampup Done!\n");
            }
          }

          v103 = *(v22 + 1396);
        }

        *(v22 + 1396) = v103 & 0xFFFFFFF7;
      }

LABEL_134:
      if (v48 - *(v22 + 104) > 3.0)
      {
        ConfigureAFRCDefaults(v22);
        *(v22 + 104) = v48;
      }

      v131 = *(v22 + 68);
      if ((v131 & 0x80000000) == 0)
      {
        *(v22 + 44) = v131;
      }

      goto LABEL_138;
    }

    v60 = *(v22 + 28);
    if (v60 <= 0)
    {
      *(v22 + 1396) = v57 & 0xFFFFFFED;
    }

    else
    {
      if ((v57 & 1) != 0 && !*(v22 + 9696))
      {
        if (v60 == *(v22 + 32))
        {
          v61 = -3;
        }

        else
        {
          v61 = -2;
        }
      }

      else
      {
        v61 = -1;
      }

      v62 = v61 + v60;
      if ((v57 & 0x10) == 0 && !*(v22 + 9696))
      {
        v62 = (__PAIR64__(v62, (*(v22 + 44) - g_adwTxRateTiers[v62]) >> 8) - 125) >> 32;
      }

      if (v62 <= *(v22 + 40))
      {
        v62 = *(v22 + 40);
      }

      *(v22 + 1396) = v57 & 0xFFFFFFED;
      if (v60 > v62)
      {
        *(v22 + 1400) = 3;
        v63 = *(v22 + 1404) + 1;
        *(v22 + 1404) = v63;
        *(v22 + 36) = v60;
        *(v22 + 28) = v62;
        *(v22 + 44) = g_adwTxRateTiers[v62];
        *(v22 + 9568) = v63;
        if (!v62 && *(v22 + 9696))
        {
          *(v22 + 2520) = v48;
        }

        if (*(v22 + 2816))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v64 = VRTraceErrorLogLevelToCSTR();
            v65 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v66 = *(v22 + 44);
              *buf = 136315906;
              v138 = v64;
              v139 = 2080;
              v140 = "DoRateControl";
              v141 = 1024;
              v142 = 4177;
              v143 = 1024;
              LODWORD(v144) = v66;
              _os_log_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: Congestion!!! TxRate v %u", buf, 0x22u);
            }
          }
        }

        VRLogfilePrint(*(v22 + 2832), "Congestion!!! TxRate v %u\n", v51, v52, v53, v54, v55, v56, *(v22 + 44));
        VRLogfilePrintWithTimestamp(*(v22 + 2848), "Rate change [%u] (Ramp Down to %u, AFRC).\n", v67, v68, v69, v70, v71, v72, *(v22 + 9568));
LABEL_83:
        *(v22 + 2512) = v48;
        v81 = *(v22 + 1396);
        if (v81)
        {
          *(v22 + 1396) = v81 & 0xFFFFFFFE;
          calculateInitialRampUpDeltas(v22);
          if (*(v22 + 2816))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v88 = VRTraceErrorLogLevelToCSTR();
              v89 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                v138 = v88;
                v139 = 2080;
                v140 = "DoRateControl";
                v141 = 1024;
                v142 = 4197;
                v143 = 2080;
                v144 = "Initial Rampup done!";
                _os_log_impl(&dword_1DB56E000, v89, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %s", buf, 0x26u);
              }
            }
          }

          VRLogfilePrint(*(v22 + 2832), "%s", v82, v83, v84, v85, v86, v87, "Initial Rampup done!\n");
          VRLogfilePrintWithTimestamp(*(v22 + 2848), "%s", v90, v91, v92, v93, v94, v95, "Initial Rampup Done!\n");
          v81 = *(v22 + 1396);
        }

        if ((v81 & 4) != 0)
        {
          *(v22 + 1396) = v81 & 0xFFFFFFFB;
        }

        if (*(v22 + 1400) == 3)
        {
          v96 = *(v22 + 2552) + 1;
          *(v22 + 2552) = v96;
          v97 = *(v22 + 2544);
          if (v97 == 0.0)
          {
            *(v22 + 2544) = v48;
          }

          else if (v48 - v97 >= 2.0)
          {
            *(v22 + 2552) = 0;
            *(v22 + 2544) = 0;
          }

          else if (v96 >= 4)
          {
            *(v22 + 2408) = 1;
          }
        }

        goto LABEL_134;
      }
    }

    if (*(v22 + 2480) && *(v22 + 9836) == 1)
    {
      *(v22 + 2480) = 0;
      if (*(v22 + 2816))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v73 = VRTraceErrorLogLevelToCSTR();
          v74 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v138 = v73;
            v139 = 2080;
            v140 = "DoRateControl";
            v141 = 1024;
            v142 = 4185;
            v143 = 2080;
            v144 = "Congestion!!! Pause video.";
            _os_log_impl(&dword_1DB56E000, v74, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %s", buf, 0x26u);
          }
        }
      }

      VRLogfilePrint(*(v22 + 2832), "%s", v51, v52, v53, v54, v55, v56, "Congestion!!! Pause video.\n");
      VRLogfilePrintWithTimestamp(*(v22 + 2848), "%s", v75, v76, v77, v78, v79, v80, "AFRC: Congestion!!! Pause video.\n");
    }

    goto LABEL_83;
  }

  DetectCongestion(v22, v31, &v136, 0, v46, v45, v36);
LABEL_138:
  pthread_mutex_unlock((v22 + 2560));
LABEL_139:
  CheckOutHandleDebug();
  return 0;
}

uint64_t UpdateFECLevel(uint64_t a1)
{
  pthread_mutex_lock((a1 + 2744));
  v2 = *(a1 + 2408);
  v3 = *(a1 + 176);
  v4 = *(a1 + 28);
  if (*(a1 + 9696))
  {
    if (v4 > 2)
    {
      goto LABEL_12;
    }
  }

  else if (v4 >= 8 && *(a1 + 9576) >= 1.0)
  {
LABEL_12:
    if (*(a1 + 2696) == 1)
    {
      v6 = *(a1 + 2700);
      v7 = fmin(v3 * 10.0, 10.0);
      v8 = *(a1 + 2704);
      v9 = *(a1 + 256);
      if (v9 + 1 > v7)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = v7;
      }

      if (v10 <= v6)
      {
        v10 = *(a1 + 2700);
      }

      if (v6 >= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = *(a1 + 2700);
      }

      if (v2)
      {
        v12 = v11;
      }

      else
      {
        v12 = v7;
      }

      if (v12 != v6)
      {
        *(a1 + 2708) = v12;
      }

      if (v10 != v8)
      {
        *(a1 + 2712) = v10;
      }
    }

    else
    {
      v13 = *(a1 + 2720);
      v14 = 1.0;
      if (v13 == 1.0)
      {
        if (!v2)
        {
          v14 = 1.5;
          if (v3 <= *(a1 + 88))
          {
            v14 = 2.0;
            if (v3 <= *(a1 + 96))
            {
              v14 = 1.0;
            }
          }
        }
      }

      else if (v13 == 1.5)
      {
        if (v3 <= *(a1 + 96))
        {
          v14 = 1.0;
          if (v3 >= *(a1 + 80))
          {
            v14 = 1.5;
          }
        }

        else
        {
          v14 = 2.0;
          if (v2)
          {
            v14 = 1.5;
          }
        }
      }

      else
      {
        v14 = 1.0;
        if (v3 >= *(a1 + 80))
        {
          if (v3 >= *(a1 + 88))
          {
            v14 = *(a1 + 2720);
          }

          else
          {
            v14 = 1.5;
          }
        }
      }

      if (v14 != v13)
      {
        *(a1 + 2728) = v14;
      }
    }

    goto LABEL_9;
  }

  if (*(a1 + 2720) != 1.0)
  {
    MediaQueue_SetAudioFECLevel(1.0);
  }

  *(a1 + 2720) = 0x3FF0000000000000;
  *(a1 + 2700) = 0;
LABEL_9:

  return pthread_mutex_unlock((a1 + 2744));
}

uint64_t AFRCGetStat(uint64_t a1, double *a2, _DWORD *a3, _DWORD *a4, int *a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v13 = CheckInHandleDebug();
  if (!v13)
  {
    return 2149646338;
  }

  if (a2)
  {
    v14 = *(v13 + 176);
    if ((*(v13 + 244) & 1) == 0)
    {
      v14 = v14 * *(v13 + 2720);
    }

    *a2 = v14;
  }

  if (a3)
  {
    *a3 = *(v13 + 256);
  }

  if (a4)
  {
    *a4 = *(v13 + 52);
  }

  if (a5)
  {
    v15 = *(v13 + 1412);
    v16 = 0xFFFF;
    v17 = __OFSUB__(v15, 1);
    v18 = v15 - 1;
    if (v18 < 0 == v17)
    {
      v19 = *(v13 + 8 * v18 + 1896);
      v20 = vcvtd_n_s64_f64(v19, 0xDuLL);
      if (v19 == 0.0)
      {
        v16 = 0xFFFF;
      }

      else
      {
        v16 = v20;
      }
    }

    *a5 = v16;
  }

  if (a8)
  {
    *a8 = *(v13 + 1400) == 3;
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCRecordKeyFrame(uint64_t a1, char a2, int a3, int a4, int a5, int a6)
{
  v56 = *MEMORY[0x1E69E9840];
  v11 = CheckInHandleDebug();
  if (!v11)
  {
    return 2149646338;
  }

  v12 = v11;
  pthread_mutex_lock(v11 + 40);
  *&v12[38].__opaque[48] = a3;
  *&v12[38].__opaque[52] = a4;
  LODWORD(v12[39].__sig) = a5;
  if (a6)
  {
    *v12[39].__opaque = micro();
    v12[46].__opaque[52] = a2;
  }

  *&v12[46].__opaque[20] = *&v12->__opaque[36];
  pthread_mutex_unlock(v12 + 40);
  v19 = *&v12[44].__opaque[24];
  if (v19)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
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
    v26 = 0u;
    v27 = 0u;
    if (a4 >= 102)
    {
      v20 = 102;
    }

    else
    {
      v20 = a4;
    }

    *v24 = 0uLL;
    v25 = 0uLL;
    if (a4 >= 1)
    {
      v21 = v24;
      do
      {
        sprintf(v21, "%04X ", a3);
        v21 += 5;
        ++a3;
        --v20;
      }

      while (v20);
      v19 = *&v12[44].__opaque[24];
    }

    v22 = "Key";
    if (!a6)
    {
      v22 = "Refresh";
    }

    VRLogfilePrintWithTimestamp(v19, "%s frame (%08X) is generated PT (%u), %d packets. [%s]\n", v13, v14, v15, v16, v17, v18, v22);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCMarkAdditionalFlushes(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  pthread_mutex_lock(v3 + 40);
  *&v4[46].__opaque[36] += a2;
  *&v4[46].__opaque[40] = micro();
  VRLogfilePrintWithTimestamp(*&v4[44].__opaque[24], "Add additional flush(%u).\n", v5, v6, v7, v8, v9, v10, *&v4[46].__opaque[36]);
  pthread_mutex_unlock(v4 + 40);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCCancelFlush()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149646338;
  }

  v1 = v0;
  pthread_mutex_lock(v0 + 40);
  v8 = micro();
  v9 = *&v1[46].__opaque[36] - 1;
  *&v1[46].__opaque[36] = v9;
  if (v9)
  {
    *v1[149].__opaque = 0;
    *&v1[149].__opaque[8] = v8;
    *&v1[149].__opaque[28] = 0;
  }

  *&v1[46].__opaque[40] = v8;
  VRLogfilePrintWithTimestamp(*&v1[44].__opaque[24], "Pending baseband flush (%u) is cancelled%s.\n", v2, v3, v4, v5, v6, v7, v9);
  pthread_mutex_unlock(v1 + 40);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCProcessBasebandNotification(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  __dst[756] = *MEMORY[0x1E69E9840];
  v5 = 2149646370;
  if (v3 >= 8)
  {
    v6 = v4;
    v7 = v3;
    v8 = v2;
    v9 = v1;
    memcpy(__dst, &unk_1DBD45CE8, 0x17A0uLL);
    WORD2(__dst[0]) = bswap32(*(v8 + 6)) >> 16;
    v10 = bswap32(*(v8 + 4)) >> 16;
    if (v10 == 51966)
    {
      if (v7 >= 0x24)
      {
        LODWORD(__dst[0]) = 1;
        __dst[1] = v6;
        LOWORD(__dst[2]) = *(v8 + 12);
        BYTE2(__dst[2]) = *(v8 + 13);
        WORD2(__dst[2]) = bswap32(*(v8 + 14)) >> 16;
        HIWORD(__dst[2]) = *(v8 + 16);
        *&__dst[3] = vrev32q_s8(*(v8 + 20));
        return AFRCUpdateBBNote(v9, __dst);
      }
    }

    else if (v10 == 57005)
    {
      if (v7 >= 0x10)
      {
        LODWORD(__dst[0]) = 2;
        __dst[1] = v6;
        LOWORD(__dst[2]) = bswap32(*(v8 + 12)) >> 16;
        v11 = *(v8 + 14);
        WORD1(__dst[2]) = __rev16(v11);
        if (v11 != 0xFFFF)
        {
          v34 = v9;
          v12 = 0;
          v13 = &__dst[3] + 2;
          v14 = 16;
          while (1)
          {
            v15 = v14 + 3;
            v16 = v7 - (v14 + 3);
            if (v7 < v14 + 3)
            {
              break;
            }

            v17 = &__dst[2] + 1004 * v12 + 6;
            *v17 = *(v8 + v14);
            v18 = bswap32(*(v8 + 1 + v14));
            v19 = HIWORD(v18);
            *(v17 + 1) = HIWORD(v18);
            v20 = v16 / 2;
            if (v16 / 2 < HIWORD(v18))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v21 = VRTraceErrorLogLevelToCSTR();
                v22 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  v31 = *(v17 + 1);
                  *buf = 136316418;
                  v36 = v21;
                  v37 = 2080;
                  v38 = "AFRCProcessBasebandNotification";
                  v39 = 1024;
                  v40 = 4988;
                  v41 = 1024;
                  v42 = 4988;
                  v43 = 1024;
                  v44 = v20;
                  v45 = 1024;
                  v46 = v31;
                  _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/MediaQueue/AFRC.c:%d: Bad ACK, #dropped SN doesn't match(%d != %u).", buf, 0x2Eu);
                }
              }

              *(v17 + 1) = v20;
              LOWORD(v19) = v20;
            }

            if (v19 >= 0x1F5u)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v23 = VRTraceErrorLogLevelToCSTR();
                v24 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316418;
                  v36 = v23;
                  v37 = 2080;
                  v38 = "AFRCProcessBasebandNotification";
                  v39 = 1024;
                  v40 = 4993;
                  v41 = 1024;
                  v42 = 4993;
                  v43 = 1024;
                  v44 = 57005;
                  v45 = 1024;
                  v46 = 500;
                  _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, "VCRC [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/MediaQueue/AFRC.c:%d: Bad ACK, #dropped SN exceeds limit(%d > %d).", buf, 0x2Eu);
                }
              }

              *(v17 + 1) = 500;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v25 = VRTraceErrorLogLevelToCSTR();
              v26 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v27 = *(v17 + 1);
                v28 = *v17;
                *buf = 136316162;
                v36 = v25;
                v37 = 2080;
                v38 = "AFRCProcessBasebandNotification";
                v39 = 1024;
                v40 = 4997;
                v41 = 1024;
                v42 = v27;
                v43 = 1024;
                v44 = v28;
                _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d Baseband dropped %u packet(s) for PT %u.", buf, 0x28u);
              }
            }

            v29 = *(v17 + 1);
            if (*(v17 + 1))
            {
              v30 = 0;
              do
              {
                *&v13[2 * v30] = bswap32(*(v8 + v15)) >> 16;
                v15 += 2;
                ++v30;
              }

              while (v30 < v29);
            }

            ++v12;
            v13 += 1004;
            v14 = v15;
            if (v12 == 6)
            {
              ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
              if (ErrorLogLevelForModule >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  AFRCProcessBasebandNotification_cold_1();
                }
              }

              LOWORD(v12) = 6;
              break;
            }
          }

          v9 = v34;
          WORD2(__dst[2]) = v12;
        }

        return AFRCUpdateBBNote(v9, __dst);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t AFRCUpdateBBNote(uint64_t a1, uint64_t a2)
{
  v180 = *MEMORY[0x1E69E9840];
  v148 = 0;
  v3 = micro();
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return 2149646338;
  }

  v5 = v4;
  pthread_mutex_lock(v4 + 40);
  if (!*(v5 + 2928))
  {
    goto LABEL_170;
  }

  v146 = v5;
  if (*a2 == 2)
  {
    v6 = *(v5 + 2988) - 1;
    *(v5 + 2988) = v6;
    if (v6)
    {
      *(v5 + 9544) = 0;
      *(v5 + 9552) = v3;
      *(v5 + 9572) = 0;
    }

    *(v5 + 2992) = v3;
    if (*(a2 + 18) >= 1 && *(a2 + 20))
    {
      v7 = 0;
      v8 = *(a2 + 16);
      v9 = *(v5 + 3004);
      v10 = (a2 + 24);
      do
      {
        v11 = *v10;
        if (*(v10 - 2) == v9)
        {
          *(v5 + 9616) += v11;
          if (v8 > *(v5 + 3006))
          {
            if (v11)
            {
              *(v5 + 3000) = 1;
            }

            break;
          }
        }

        else
        {
          *(v5 + 9620) += v11;
        }

        v10 += 502;
        ++v7;
      }

      while (v7 < *(a2 + 20));
    }

    if (!*(v5 + 2848))
    {
      goto LABEL_59;
    }

    *&v48 = 0xAAAAAAAAAAAAAAAALL;
    *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v179[6] = v48;
    v179[7] = v48;
    v179[4] = v48;
    v179[5] = v48;
    v179[2] = v48;
    v179[3] = v48;
    v179[0] = v48;
    v179[1] = v48;
    VRLogfileGetTimestamp(v179, 0x80u);
    if (*(a2 + 18) <= 0)
    {
      *(a2 + 20) = 1;
      *(a2 + 22) = 0;
      *(a2 + 24) = 0;
    }

    else if (!*(a2 + 20))
    {
LABEL_57:
      if (*(v5 + 3000))
      {
        VRLogfilePrint(*(v5 + 2848), "%s Request video refresh for PT (%u).\n", v49, v50, v51, v52, v53, v54, v179);
      }

LABEL_59:
      pthread_mutex_unlock((v5 + 2560));
      if (*(v5 + 2680) && *(a2 + 20))
      {
        v62 = 0;
        v63 = *(a2 + 16);
        v64 = a2 + 26;
        do
        {
          MediaQueue_BBFlushAcked(*(v5 + 2808), *(v64 - 2), v64, v63);
          ++v62;
          v64 += 1004;
        }

        while (v62 < *(a2 + 20));
      }

      goto LABEL_75;
    }

    v55 = 0;
    v147 = a2 + 22;
    v56 = (a2 + 26);
    v145 = a2;
    do
    {
      if (*(a2 + 18))
      {
        if (*(a2 + 18) == 0xFFFF)
        {
          VRLogfilePrint(*(v5 + 2848), "%s TID[%04X] Drop ACK reported a failure%s\n", v49, v50, v51, v52, v53, v54, v179);
        }

        else
        {
          v57 = *(v147 + 1004 * v55 + 2);
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
          v165 = 0u;
          v166 = 0u;
          v163 = 0u;
          v164 = 0u;
          v161 = 0u;
          v162 = 0u;
          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v151 = 0u;
          v152 = 0u;
          v150 = 0u;
          memset(buf, 0, sizeof(buf));
          if (v57)
          {
            if (v57 >= 0x66)
            {
              v58 = 102;
            }

            else
            {
              v58 = v57;
            }

            v59 = buf;
            v60 = v56;
            do
            {
              v61 = *v60++;
              sprintf(v59, "%04X ", v61);
              v59 += 5;
              --v58;
            }

            while (v58);
            *(v59 - 1) = 0;
            a2 = v145;
            v5 = v146;
          }

          VRLogfilePrint(*(v5 + 2848), "%s TID[%04X] Drop ACK for PT %u: %2u packets dropped [%s]%s\n", v49, v50, v51, v52, v53, v54, v179);
        }
      }

      else
      {
        VRLogfilePrint(*(v5 + 2848), "%s TID[%04X] Drop ACK, no packet dropped%s\n", v49, v50, v51, v52, v53, v54, v179);
      }

      ++v55;
      v56 += 502;
    }

    while (v55 < *(a2 + 20));
    goto LABEL_57;
  }

  if (!*(v5 + 9568))
  {
    v22 = 0;
    goto LABEL_24;
  }

  *buf = -1;
  LODWORD(v179[0]) = -1431655766;
  MediaQueue_GetTimeRateChanged(*(v5 + 2808), buf, v179);
  if (*(v5 + 2476))
  {
    v19 = v179[0];
    v20 = *(v5 + 9568);
    goto LABEL_19;
  }

  v19 = v179[0];
  v20 = *(v5 + 9568);
  if (!*(v5 + 2472) && LODWORD(v179[0]) < v20)
  {
LABEL_170:
    if (CalculateBasebandRate(v5, a2, &v148 + 1, &v148, 0))
    {
      goto LABEL_67;
    }

    goto LABEL_32;
  }

LABEL_19:
  if (v19 >= v20)
  {
    v21 = buf[0];
  }

  else
  {
    LODWORD(v179[0]) = v20;
    *buf = v3;
    v21 = LOBYTE(v3);
  }

  VRLogfilePrintWithTimestamp(*(v5 + 2848), "Rate change done, [%.6f %u>=%d %u%s], taking new samples.\n", v13, v14, v15, v16, v17, v18, v21);
  v23 = *buf;
  *(v5 + 9560) = *buf;
  *(v5 + 9552) = v23;
  *(v5 + 9568) = 0;
  *(v5 + 9544) = 0;
  v22 = 1;
LABEL_24:
  if (CalculateBasebandRate(v5, a2, &v148 + 1, &v148, v22))
  {
    v31 = (*(v5 + 2980) - *(v5 + 2984)) & ~((*(v5 + 2980) - *(v5 + 2984)) >> 31);
    if (*(v5 + 2988))
    {
      VRLogfilePrintWithTimestamp(*(v5 + 2848), "Still trying to flush baseband with flush counter: %d. Stop ramp-up and possibly decrease audio fraction based on BBAvgTxRate: %d\n", v25, v26, v27, v28, v29, v30, *(v5 + 2988));
      if (v3 - *(v5 + 2992) <= 3.0 || *(v5 + 2980))
      {
        goto LABEL_66;
      }

      v38 = (v5 + 2992);
      VRLogfilePrintWithTimestamp(*(v5 + 2848), "Flush counter: %d stuck for more than %d seconds. And baseband shows TxRate:%d, TxDelay:%d. Reset the flush counter.\n", v32, v33, v34, v35, v36, v37, *(v5 + 2988));
      *(v5 + 2988) = 0;
LABEL_65:
      *v38 = v3;
LABEL_66:
      RampDownAudio(v5, v3);
      *(v5 + 9544) = 0;
      goto LABEL_67;
    }

    if (!*(v5 + 2968))
    {
      v38 = (v5 + 2992);
      goto LABEL_65;
    }

    v45 = *(v5 + 9544);
    if (v45 > 14)
    {
      memmove((v5 + 9304), (v5 + 9312), 0x70uLL);
      v75 = *(v5 + 9428);
      *(v5 + 9440) = *(v5 + 9444);
      *(v5 + 9424) = v75;
      *(v5 + 9456) = *(v5 + 9460);
      *(v5 + 9472) = *(v5 + 9476);
      v76 = *(v5 + 9504);
      *(v5 + 9484) = *(v5 + 9488);
      *(v5 + 9500) = v76;
      *(v5 + 9516) = *(v5 + 9520);
      *(v5 + 9532) = *(v5 + 9536);
      *(v5 + 9416) = *(a2 + 8);
      *(v5 + 9480) = v31;
      v46 = *(v5 + 2980);
      *(v5 + 9540) = v46;
      v47 = *(v5 + 9544);
    }

    else
    {
      *(v5 + 8 * v45 + 9304) = *(a2 + 8);
      *(v5 + 4 * v45 + 9424) = v31;
      v46 = *(v5 + 2980);
      *(v5 + 4 * *(v5 + 9544) + 9484) = v46;
      v47 = *(v5 + 9544) + 1;
      *(v5 + 9544) = v47;
    }

    if (v47 < 4)
    {
      goto LABEL_67;
    }

    v77 = (v47 - 4);
    if (v47 != 4)
    {
      while (*(v5 + 9304 + 8 * (v47 - 1)) - *(v5 + 9304 + 8 * v77) < 0.5)
      {
        v115 = v77-- <= 1;
        if (v115)
        {
          LODWORD(v77) = 0;
          break;
        }
      }
    }

    v78 = v47 - v77;
    if (v78 < 1)
    {
      v95 = 0.0;
      v96 = 0.0;
      v97 = 0.0;
    }

    else
    {
      v79 = v77 + (v78 >> 1);
      v80 = v78 + 1;
      v81 = (v5 + 8 * v79 + 9304);
      v82 = (v5 + 4 * v79 + 9484);
      v83 = (v5 + 4 * v77 + 9484);
      v84 = (v5 + 8 * v77 + 9304);
      v85 = 0.0;
      v86 = 0.0;
      v87 = 0.0;
      v88 = 0.0;
      v89 = 0.0;
      v90 = 0.0;
      v91 = v80 >> 1;
      do
      {
        v90 = v90 + *(v83 - 15);
        v89 = v89 + *(v82 - 15);
        v92 = *v84++;
        v88 = v88 + v92;
        v93 = *v81++;
        v87 = v87 + v93;
        LODWORD(v93) = *v83++;
        *&v94 = *&v93;
        v86 = v86 + *&v93;
        LODWORD(v93) = *v82++;
        LODWORD(v94) = LODWORD(v93);
        v85 = v85 + v94;
        --v91;
      }

      while (v91);
      v95 = (v89 - v90) * 0.001;
      v96 = v87 - v88;
      v97 = (v85 - v86) * 0.001;
    }

    v98 = v95 / v96 * 0.5;
    v99 = v97 / v96 * 0.5;
    if ((*(v5 + 1396) & 4) != 0)
    {
      LODWORD(v102) = *(v5 + 28);
      v107 = *(v5 + 36);
      if (v102 <= v107)
      {
        v100 = *(v5 + 40);
        v105 = *(v5 + 9696);
        v109 = v102 - 1;
        v110 = &g_adwTxRateTiers[v102];
        v106 = 0.12;
        v107 = *(v5 + 28);
        while (1)
        {
          v111 = *v110--;
          if (v111 <= *(v5 + 2968))
          {
            break;
          }

          --v107;
          if (!v105)
          {
            v115 = v109-- <= v100;
            if (!v115)
            {
              continue;
            }
          }

LABEL_105:
          if (v107 <= v100)
          {
            v107 = v100;
          }

          break;
        }
      }

      else
      {
        v105 = *(v5 + 9696);
        v106 = 0.12;
      }
    }

    else
    {
      v100 = *(v5 + 40);
      if (*(v5 + 2968) >= *(v5 + 44))
      {
        v101 = *(v5 + 44);
      }

      else
      {
        v101 = *(v5 + 2968);
      }

      v102 = *(v5 + 28);
      v103 = v102 - 1;
      v104 = &g_adwTxRateTiers[v102];
      v105 = *(v5 + 9696);
      v106 = 0.2;
      v107 = *(v5 + 28);
      while (1)
      {
        v108 = *v104--;
        if (v108 <= v101)
        {
          break;
        }

        --v107;
        if (!v105)
        {
          v115 = v103-- <= v100;
          if (!v115)
          {
            continue;
          }
        }

        goto LABEL_105;
      }
    }

    v112 = v98 > v106;
    if (v99 > 0.4)
    {
      v112 = 1;
    }

    if (v105)
    {
      if (v46 <= 0x320 || !v112)
      {
        goto LABEL_147;
      }

      if (v102 == v107)
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (v112 || *(v5 + 2472))
      {
        if (v46 < 0x321)
        {
          goto LABEL_147;
        }
      }

      else if ((*(v5 + 2960) & 1) == 0 || v46 <= 0x320)
      {
        goto LABEL_147;
      }

      v114 = *(v5 + 2504);
      v115 = v114 == 0.0 || v3 - v114 <= 0.5;
      if (v115)
      {
LABEL_147:
        if (v98 >= 0.2)
        {
          *(v5 + 9552) = *(a2 + 8);
        }

        *(v5 + 9572) = 0;
        if (*(v5 + 9576) >= 1.0)
        {
          if (v98 < 0.1 && *(v5 + 2980) <= 0x1F3u)
          {
            v143 = *(v5 + 20);
            if (*(v5 + 44) < v143)
            {
              v144 = *(a2 + 8);
              if (v144 - *(v5 + 9552) > 0.5 && v144 - *(v5 + 9560) > 0.5 && v144 - *(v5 + 9584) > 0.5)
              {
                if (!*(v5 + 9696))
                {
                  if (*(v5 + 2960))
                  {
                    v142 = 1;
                  }

                  else
                  {
                    v142 = 2;
                  }

                  goto LABEL_155;
                }

                if (v143 < g_adwTxRateTiers[*(v5 + 28) + 1])
                {
                  goto LABEL_67;
                }

LABEL_154:
                v142 = 1;
LABEL_155:
                *(v5 + 9572) = v142;
              }
            }
          }
        }

        else if (v98 < 0.1 && *(v5 + 2980) <= 0x1F3u)
        {
          v141 = *(a2 + 8);
          if (v141 - *(v5 + 9584) > 2.0 && v141 - *(v5 + 9552) > 2.0)
          {
            goto LABEL_154;
          }
        }

LABEL_67:
        memcpy((v5 + 3008), a2, 0x17A0uLL);
        UpdateAudioTxInfo(v5, v65, v66, v67, v68, v69, v70, v71);
        v72 = *(v5 + 2480);
        if (*(v5 + 2476))
        {
          v73 = 65;
        }

        else
        {
          v73 = 86;
        }

        if (v72)
        {
          v74 = v73;
        }

        else
        {
          v74 = 65;
        }

        VRLogfilePrintWithTimestamp(*(v5 + 2848), "%2u%2u%2u%2u%2u %6u\t%6u\t%u\t%u %4u\t%4u\t%4u\t%4u\t%4u\t%4d\t%.4f\t%.4f\t%4u %.2f %c(%1d,%1d) %1d %4d\n", v72, v74, *(a2 + 23), *(a2 + 24), *(a2 + 28), *(a2 + 32), *(a2 + 4));
        goto LABEL_74;
      }

      if (v102 == v107)
      {
        RampDownAudio(v5, v3);
        *(v5 + 2520) = v3;
LABEL_129:
        v124 = *(v5 + 1396);
        if (v124)
        {
          *(v5 + 1396) = v124 & 0xFFFFFFFE;
          calculateInitialRampUpDeltas(v5);
          if (*(v5 + 2816))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v131 = VRTraceErrorLogLevelToCSTR();
              v132 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315906;
                *&buf[4] = v131;
                *&buf[12] = 2080;
                *&buf[14] = "AFRCUpdateBBNote";
                *&buf[22] = 1024;
                *&buf[24] = 5308;
                *&buf[28] = 2080;
                *&buf[30] = "Initial Rampup done!";
                _os_log_impl(&dword_1DB56E000, v132, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %s", buf, 0x26u);
              }
            }
          }

          VRLogfilePrint(*(v5 + 2832), "%s", v125, v126, v127, v128, v129, v130, "Initial Rampup done!\n");
          VRLogfilePrintWithTimestamp(*(v5 + 2848), "%s", v133, v134, v135, v136, v137, v138, "Initial Rampup done!\n");
          v124 = *(v5 + 1396);
        }

        if ((v124 & 4) != 0)
        {
          *(v5 + 1396) = v124 & 0xFFFFFFFB;
        }

        if (*(v5 + 1400) == 3)
        {
          v139 = *(v5 + 2552) + 1;
          *(v5 + 2552) = v139;
          v140 = *(v5 + 2544);
          if (v140 == 0.0)
          {
            *(v5 + 2544) = v3;
          }

          else if (v3 - v140 >= 2.0)
          {
            *(v5 + 2552) = 0;
            *(v5 + 2544) = 0;
          }

          else if (v139 >= 4)
          {
            *(v5 + 2408) = 1;
          }
        }

        goto LABEL_147;
      }
    }

    if ((v107 & 0x80000000) == 0 || v3 - *(v5 + 2520) > 3.0)
    {
      *(v5 + 1400) = 3;
      v116 = *(v5 + 1404) + 1;
      *(v5 + 1404) = v116;
      *(v5 + 36) = v102;
      *(v5 + 28) = v107;
      v117 = g_adwTxRateTiers[v107];
      *(v5 + 44) = v117;
      *(v5 + 9568) = v116;
      *(v5 + 2484) = 1;
      *(v5 + 2520) = v3;
      VRLogfilePrint(*(v5 + 2832), "Congestion!!! TxRate v %u, BaseBand.\n", v25, v26, v27, v28, v29, v30, v117);
      VRLogfilePrintWithTimestamp(*(v5 + 2848), "Rate change [%u] (Ramp Down to %u, Baseband).\n", v118, v119, v120, v121, v122, v123, *(v5 + 9568));
    }

    UpdateFECLevel(v5);
    goto LABEL_129;
  }

LABEL_32:
  UpdateAudioTxInfo(v5, v24, v25, v26, v27, v28, v29, v30);
  VRLogfilePrintWithTimestamp(*(v5 + 2848), "%2u%2u%2u%2u%2u %6u\t%6u\t%u\t%u [Bogus notification, discard]\n", v39, v40, v41, v42, v43, v44, *(a2 + 4));
LABEL_74:
  pthread_mutex_unlock((v5 + 2560));
LABEL_75:
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetReceiveQueueSize(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  pthread_mutex_lock((v3 + 2864));
  *(v4 + 164) = a2;
  pthread_mutex_unlock((v4 + 2864));
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetVideoPaused(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  pthread_mutex_lock(v3 + 40);
  v11 = *&v4[38].__opaque[32];
  if (!a2 && v11 && (v4[46].__opaque[8] & 1) == 0)
  {
    *&v4[21].__opaque[48] = 5;
    v12 = *&v4[21].__opaque[52] + 1;
    *&v4[21].__opaque[52] = v12;
    *&v4[149].__opaque[24] = v12;
  }

  if (v11 != a2)
  {
    if (a2)
    {
      *&v4[21].__opaque[36] = 0;
    }

    if (LODWORD(v4[44].__sig))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          if (a2)
          {
            v15 = "Paused";
          }

          else
          {
            v15 = "Unpaused";
          }

          *buf = 136315906;
          v25 = v13;
          v26 = 2080;
          v27 = "AFRCSetVideoPaused";
          v28 = 1024;
          v29 = 5455;
          v30 = 2080;
          v31 = v15;
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: Video %s...", buf, 0x26u);
        }
      }
    }

    if (a2)
    {
      v16 = "Paused";
    }

    else
    {
      v16 = "Unpaused";
    }

    VRLogfilePrint(*&v4[44].__opaque[8], "Video %s...\n", v5, v6, v7, v8, v9, v10, v16);
    VRLogfilePrintWithTimestamp(*&v4[44].__opaque[24], "Rate change [%u] (%s), new rate %ukbps...\n", v17, v18, v19, v20, v21, v22, *&v4[149].__opaque[24]);
  }

  *&v4[38].__opaque[32] = a2;
  pthread_mutex_unlock(v4 + 40);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetAudioPaused(uint64_t a1, int a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  v6 = v5;
  pthread_mutex_lock(v5 + 40);
  if (a3)
  {
    LODWORD(v6[41].__sig) = a2;
  }

  else
  {
    if (!a2 && HIDWORD(v6[41].__sig))
    {
      *&v6[2].__opaque[16] = micro();
    }

    HIDWORD(v6[41].__sig) = a2;
  }

  pthread_mutex_unlock(v6 + 40);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316162;
      v11 = v8;
      v12 = 2080;
      v13 = "AFRCSetAudioPaused";
      v14 = 1024;
      v15 = 5488;
      v16 = 1024;
      v17 = a3;
      v18 = 1024;
      v19 = a2;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRCSetAudioPaused: local? %d, audio paused? %d", &v10, 0x28u);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetAudioSilent(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  *(v3 + 9700) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetPLCalc(uint64_t a1, char a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  *(v3 + 244) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCUpdateCellTech(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v13 = CheckInHandleDebug();
  if (!v13)
  {
    return 2149646338;
  }

  v14 = v13;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v22 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317186;
      v24 = v22;
      v25 = 2080;
      v26 = "AFRCUpdateCellTech";
      v27 = 1024;
      v28 = 5532;
      v29 = 2080;
      v30 = CelltechToStr();
      v31 = 2080;
      v32 = CelltechToStr();
      v33 = 2080;
      v34 = CelltechToStr();
      v35 = 2080;
      v36 = CelltechToStr();
      v37 = 1024;
      v38 = a6;
      v39 = 1024;
      v40 = a7;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRCUpdateCellTech: iLocalCellTech: %s -> %s  iRemoteCellTech: %s -> %s  fEnableRRx: %d  didHandover: %d", buf, 0x50u);
    }
  }

  *(v14 + 2936) = a3;
  *(v14 + 2940) = a5;
  pthread_mutex_lock((v14 + 2560));
  *(v14 + 2688) = 0;
  if (*(v14 + 2928) != a2)
  {
    *(v14 + 2960) = 0;
    *(v14 + 2476) = 0;
    *(v14 + 9576) = 0x3FF0000000000000;
    *(v14 + 9056) = 0;
    if (!*(v14 + 9696))
    {
      *(v14 + 2480) = 1;
    }
  }

  *(v14 + 2928) = a2;
  *(v14 + 2932) = a4;
  if (a2)
  {
    v16 = *(v14 + 2936);
    v18 = a3 == 4 || v16 == 2;
    *(v14 + 2948) = v18;
    *(v14 + 2952) = v16 == 7;
  }

  if (*(v14 + 9696))
  {
    *(v14 + 2464) = 0x4000000000000000;
    *(v14 + 2944) = a6;
    v19 = 1.0;
  }

  else
  {
    v21 = 2.0;
    if (!*(v14 + 2948))
    {
      v21 = 1.0;
    }

    *(v14 + 2464) = v21;
    *(v14 + 2944) = a6;
    v19 = 0.5;
    if (a6)
    {
      v19 = 1.0;
    }
  }

  *(v14 + 2456) = v19;
  pthread_mutex_unlock((v14 + 2560));
  if (!*(v14 + 9696))
  {
    BWEUpdateSenderRecvrEnabledStates(v14);
    BWEUpdateFilterType(v14);
  }

  CheckOutHandleDebug();
  return 0;
}

void BWEUpdateSenderRecvrEnabledStates(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2928))
  {
    IsLTEOrNewer = NetworkUtils_IsLTEOrNewer(*(a1 + 2936));
  }

  else
  {
    IsLTEOrNewer = 1;
  }

  *(a1 + 720) = *(a1 + 722) & IsLTEOrNewer;
  if (*(a1 + 2932))
  {
    v3 = NetworkUtils_IsLTEOrNewer(*(a1 + 2940));
    v4 = *(a1 + 723);
    *(a1 + 721) = v4;
    if (v4 == 1 && (v3 & 1) == 0)
    {
      BWEstResetRecvrBWState(a1, 0);
    }
  }

  else
  {
    *(a1 + 721) = *(a1 + 723);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 720);
      v8 = *(a1 + 721);
      v9 = 136316674;
      v10 = v5;
      v11 = 2080;
      v12 = "BWEUpdateSenderRecvrEnabledStates";
      v13 = 1024;
      v14 = 6316;
      v15 = 1024;
      v16 = v7;
      v17 = 1024;
      v18 = v8;
      v19 = 2080;
      v20 = CelltechToStr();
      v21 = 2080;
      v22 = CelltechToStr();
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ////^^^^ BWEUpdateSenderRecvrEnabledStates: Sender/Recvr %d/%d iLocalCellTech: %s  iRemoteCellTech: %s", &v9, 0x3Cu);
    }
  }
}

void BWEUpdateFilterType(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2928) && !NetworkUtils_IsLTEOrNewer(*(a1 + 2936)) || *(a1 + 2932) && !NetworkUtils_IsLTEOrNewer(*(a1 + 2940)))
  {
    v2 = 2;
  }

  else
  {
    if ((!*(a1 + 2928) || (NetworkUtils_IsLTEOrNewer(*(a1 + 2936)) & 1) == 0) && *(a1 + 2932))
    {
      NetworkUtils_IsLTEOrNewer(*(a1 + 2940));
    }

    v2 = 1;
  }

  *(a1 + 728) = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 728);
      if (v5 > 3)
      {
        v6 = "UNEXPECTED";
      }

      else
      {
        v6 = off_1E85F5060[v5];
      }

      v7 = *(a1 + 2928);
      v8 = CelltechToStr();
      v9 = *(a1 + 2932);
      v10 = CelltechToStr();
      v11 = *(a1 + 732);
      v12 = 136317442;
      v13 = v3;
      v14 = 2080;
      v15 = "BWEUpdateFilterType";
      v16 = 1024;
      v17 = 6281;
      v18 = 1024;
      v19 = v5;
      v20 = 2080;
      v21 = v6;
      v22 = 1024;
      v23 = v7;
      v24 = 2080;
      v25 = v8;
      v26 = 1024;
      v27 = v9;
      v28 = 2080;
      v29 = v10;
      v30 = 1024;
      v31 = v11;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d BWEst FilterType: %d/%s <-- ImOnCellular: %d/%s  RemoteOnCellular: %d/%s  PeerIsOnIOS: %d ", &v12, 0x52u);
    }
  }
}

uint64_t AFRCUpdateRateTier(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  pthread_mutex_lock(v3 + 40);
  HIDWORD(v4[153].__sig) = a2;
  pthread_mutex_unlock(v4 + 40);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCProcessWCMSetCallConfig(uint64_t a1, unsigned int a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  v6 = v5;
  pthread_mutex_lock(v5 + 40);
  if (!a2)
  {
    a2 = *&v6->__opaque[16];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *&v6->__opaque[12];
      v10 = *&v6->__opaque[16];
      v18 = 136316674;
      v19 = v7;
      v20 = 2080;
      v21 = "AFRCProcessWCMSetCallConfig";
      v22 = 1024;
      v23 = 5637;
      v24 = 1024;
      v25 = v9;
      v26 = 1024;
      v27 = a2;
      v28 = 1024;
      v29 = a3;
      v30 = 1024;
      v31 = v10;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ProcessWCMSetCallConfig: (%u->%u), interference: (%u), clientTxCap: %u", &v18, 0x34u);
    }
  }

  *&v6->__opaque[12] = a2;
  v11 = *&v6->__opaque[20];
  v12 = g_adwTxRateTiers[v11];
  if (v12 <= a2)
  {
    v14 = *&v6->__opaque[20];
  }

  else
  {
    v13 = *&v6->__opaque[32];
    if (v11 >= v13)
    {
      v14 = *&v6->__opaque[32];
    }

    else
    {
      v14 = *&v6->__opaque[20];
    }

    if (v11 > v13)
    {
      v15 = v11;
      v16 = v11 - 1;
      while (1)
      {
        *&v6->__opaque[20] = v16;
        v12 = g_adwTxRateTiers[v15 - 1];
        if (v12 <= a2)
        {
          break;
        }

        --v15;
        --v16;
        if (v15 <= v13)
        {
          goto LABEL_19;
        }
      }

      v14 = v16;
    }
  }

LABEL_19:
  *&v6->__opaque[28] = v14;
  *&v6->__opaque[36] = v12;
  pthread_mutex_unlock(v6 + 40);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCProcessWCMGetCallConfig(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  v6 = v5;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v6 + 20);
      v10 = *(v6 + 44);
      v12 = 136316162;
      v13 = v7;
      v14 = 2080;
      v15 = "AFRCProcessWCMGetCallConfig";
      v16 = 1024;
      v17 = 5660;
      v18 = 1024;
      v19 = v9;
      v20 = 1024;
      v21 = v10;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ProcessWCMGetCallConfig: (TxCap %u, TxRate %u).", &v12, 0x28u);
    }
  }

  if (a2)
  {
    *a2 = *(v6 + 20);
  }

  if (a3)
  {
    *a3 = *(v6 + 44);
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCMarkNetworkChange()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149646338;
  }

  VRLogfilePrintWithTimestamp(*(v0 + 2832), "%s", v1, v2, v3, v4, v5, v6, "network state changed.\n");
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCAddBBDump()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149646338;
  }

  v6 = v0;
  AFRCLog_OpenBBLog(v0, *(v0 + 2832) != 0, 1, v1, v2, v3, v4, v5);
  if (*(v6 + 2848) && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = v7;
      v12 = 2080;
      v13 = "AFRCAddBBDump";
      v14 = 1024;
      v15 = 5699;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ### Add BB dump for AFRC", &v10, 0x1Cu);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

FILE **AFRCLog_OpenBBLog(FILE **result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = a3;
    v9 = result;
    v10 = result[356];
    if (!v10)
    {
      memset(v13, 170, 12);
      __sprintf_chk(v13, 0, 0xCuLL, "%010u", *(v9 + 706));
      v10 = VRLogfileAlloc(0, v13, "AFRC", ".bbdump", "com.apple.VideoConference.AFRClogBB", 32);
      v9[356] = v10;
    }

    if (v8)
    {
      v11 = "STime\t\tATime\t\tV-R-A-F-T\tQD\tQD2\tXmitB\tLTxTS\tIBR\tABRS\tABRL\tBDS\tBDL\tBDCD\tNBDCD\tND\tHT\tTR\tAF\n";
    }

    else
    {
      v11 = "STime\t\tV-R-A-F-T\tQD\tQD2\tXmitB\tLTxTS\tIBR\tIBR_OLD\tABRS\tABRL\tBDS\tBDCD\tNBDCD\tND\tTR\tAF\n";
    }

    return VRLogfilePrintSync(v10, v11, a3, a4, a5, a6, a7, a8, v12);
  }

  return result;
}

uint64_t AFRCMarkResetCS()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149646338;
  }

  v1 = v0;
  pthread_mutex_lock(v0 + 40);
  *&v1[41].__opaque[24] = 0;
  pthread_mutex_unlock(v1 + 40);
  VRLogfilePrintWithTimestamp(*&v1[44].__opaque[8], "%s", v2, v3, v4, v5, v6, v7, "reset connection stats.\n");
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetConnectionNumber(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  pthread_mutex_lock(v3 + 40);
  v5 = *v4[41].__opaque;
  if (v5 != a2)
  {
    *v4[41].__opaque = a2;
    *&v4[41].__opaque[24] = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v16 = v6;
        v17 = 2080;
        v18 = "AFRCSetConnectionNumber";
        v19 = 1024;
        v20 = 5739;
        v21 = 1024;
        v22 = v5;
        v23 = 1024;
        v24 = a2;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRCSetConnectionNumber (%d->%d)", buf, 0x28u);
      }
    }
  }

  pthread_mutex_unlock(v4 + 40);
  VRLogfilePrintWithTimestamp(*&v4[44].__opaque[8], "connection #: (%d->%d).\n", v8, v9, v10, v11, v12, v13, v5);
  CheckOutHandleDebug();
  return 0;
}

void BWEstResetRecvrBWState(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *(a1 + 672) = 0;
  *(a1 + 968) = 0;
  *(a1 + 980) = 0;
  *(a1 + 984) = 0;
  *(a1 + 992) = 0;
  *(a1 + 976) = 0;
  *(a1 + 1120) = 0;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0;
  *(a1 + 952) = 0;
  *(a1 + 944) = 0;
  *(a1 + 960) = 0;
  if (a2)
  {
    *(a1 + 1040) = 0;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = v2;
      v6 = 2080;
      v7 = "BWEstResetRecvrBWState";
      v8 = 1024;
      v9 = 5870;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d BWEstResetRecvrBWState", &v4, 0x1Cu);
    }
  }
}

uint64_t AFRCSetBWEstMode(uint64_t a1, int a2, unsigned __int8 a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  v6 = v5;
  if (a2)
  {
    *(v5 + 722) = *(v5 + 724);
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      v9 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v19 = v6[722];
          v20 = v6[723];
          v21 = 136316162;
          v22 = v7;
          v23 = 2080;
          v24 = "AFRCSetBWEstMode";
          v25 = 1024;
          v26 = 6522;
          v27 = 1024;
          v28 = v19;
          v29 = 1024;
          v30 = v20;
          _os_log_debug_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d ////^^^^ AFRCSetBWEstMode: Sender/Recvr (master) %d/%d ", &v21, 0x28u);
        }

        goto LABEL_17;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v6[722];
        v11 = v6[723];
        v21 = 136316162;
        v22 = v7;
        v23 = 2080;
        v24 = "AFRCSetBWEstMode";
        v25 = 1024;
        v26 = 6522;
        v27 = 1024;
        v28 = v10;
        v29 = 1024;
        v30 = v11;
        v12 = "VCRC [%s] %s:%d ////^^^^ AFRCSetBWEstMode: Sender/Recvr (master) %d/%d ";
        v13 = v8;
        v14 = 40;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, &v21, v14);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    v18 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] != 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        AFRCSetBWEstMode_cold_1(v16);
      }

      goto LABEL_17;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = v16;
      v23 = 2080;
      v24 = "AFRCSetBWEstMode";
      v25 = 1024;
      v26 = 6525;
      v12 = "VCRC [%s] %s:%d ////^^^^ AFRCSetBWEstMode: FALLING TO BW-EST BACKWARD COMPATIBLITY MODE";
      v13 = v17;
      v14 = 28;
      goto LABEL_12;
    }
  }

LABEL_17:
  BWEUpdateSenderRecvrEnabledStates(v6);
  v6[732] = a3;
  BWEUpdateFilterType(v6);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetSendersLogState(uint64_t a1, BOOL *a2, BOOL *a3)
{
  if (!CheckInHandleDebug())
  {
    return 2149646338;
  }

  v5 = g_iBWEstLogLevel;
  *a2 = g_iBWEstLogLevel > 6;
  *a3 = v5 > 0;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCGetSenderRecvrModes(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149646338;
  }

  *a2 = *(v5 + 720);
  *a3 = *(v5 + 721);
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetBWECap(uint64_t a1, unsigned int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = v3;
  if (a2)
  {
    for (i = 0; i != 38; ++i)
    {
      if (g_adwTxRateTiers[i] >= a2)
      {
        break;
      }
    }

    if (i >= 0x24)
    {
      LODWORD(i) = 36;
    }

    v6 = g_adwTxRateTiers[(i + 1)];
  }

  else
  {
    v6 = 0;
  }

  *(v3 + 1040) = v6;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    v10 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(v4 + 1040);
        v13 = 136316162;
        v14 = v8;
        v15 = 2080;
        v16 = "AFRCSetBWECap";
        v17 = 1024;
        v18 = 6597;
        v19 = 1024;
        v20 = a2;
        v21 = 1024;
        v22 = v11;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRCSetBWECap newBitrateCap: %d -> dwFakeBitrateCap: %d  ", &v13, 0x28u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(v4 + 1040);
      v13 = 136316162;
      v14 = v8;
      v15 = 2080;
      v16 = "AFRCSetBWECap";
      v17 = 1024;
      v18 = 6597;
      v19 = 1024;
      v20 = a2;
      v21 = 1024;
      v22 = v12;
      _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d AFRCSetBWECap newBitrateCap: %d -> dwFakeBitrateCap: %d  ", &v13, 0x28u);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetWrmMetrics(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 2149580801;
  }

  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  v4 = *(v3 + 252);
  a2[50] = *(v3 + 9696);
  a2[51] = v4;
  a2[52] = *(v3 + 44) / 0x3E8u;
  v5 = *(v3 + 2928);
  a2[54] = (*(v3 + 176) * 100.0);
  a2[55] = v5;
  if (*(v3 + 2472))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v3 + 2476) != 0;
  }

  a2[56] = v6;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCSetStatisticsCollector(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 2149580801;
  }

  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149646338;
  }

  *(v3 + 9760) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t AFRCLog_TailFile(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = v2;
    if (v2)
    {
      v6 = v4;
      v7 = result;
      fprintf(result, "========== Start logging from File %d ==========\n", v3);
      memset(__b, 170, sizeof(__b));
      v8 = (1500 * v6);
      v9 = MEMORY[0x1E128BE00](v5);
      if (v9 <= v8)
      {
        v11 = v9;
        result = fseek(v5, 0, 0);
        v8 = v11;
LABEL_9:
        if (v8 >= 1)
        {
          do
          {
            result = fread(__b, 1uLL, 0x1000uLL, v5);
            if (!result)
            {
              break;
            }

            v12 = result;
            result = fwrite(__b, 1uLL, result, v7);
            v10 = v8 <= v12;
            v8 -= v12;
          }

          while (!v10);
        }
      }

      else
      {
        result = fseek(v5, -v8, 2);
        while (1)
        {
          v10 = v8-- < 1;
          if (v10)
          {
            break;
          }

          result = fgetc(v5);
          if (result == 10)
          {
            goto LABEL_9;
          }
        }
      }
    }
  }

  return result;
}

uint64_t calculateInitialRampUpDeltas(uint64_t result)
{
  if ((*(result + 9800) & 1) == 0)
  {
    v1 = result;
    micro();
    result = reportingAdaptiveLearningStats();
    *(v1 + 9800) = 1;
  }

  return result;
}

void DetectCongestion(uint64_t a1, int a2, int *a3, int a4, double a5, double a6, double a7)
{
  v199 = *MEMORY[0x1E69E9840];
  v20 = micro();
  v21 = *(a1 + 1392) + *(a1 + 1388);
  if (!a4 || (v22 = v20, v23 = *(a1 + 1412), v23 >= 1) && a5 - *(a1 + 8 * (v23 - 1) + 1416) < 0.01)
  {
    *a3 = 0;
    v24 = 0.0;
    v25 = -1.0;
    v26 = 0.0;
LABEL_5:
    v27 = *a3;
    if (*(a1 + 2816))
    {
      v28 = *(a1 + 2820);
      *(a1 + 2820) = v28 + 1;
      if ((v28 & 0xF) == 0 && VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v31 = v25;
          if (v25 == -1.0)
          {
            v31 = *(a1 + 2448);
          }

          if (v27)
          {
            v32 = 79;
          }

          else
          {
            v32 = 88;
          }

          v33 = *(a1 + 176) * 100.0;
          v34 = *(a1 + 184) * 100.0;
          v35 = *(a1 + 2700);
          v36 = *(a1 + 2704);
          v38 = *(a1 + 252);
          v37 = *(a1 + 256);
          v39 = *(a1 + 44) / 0x3E8u;
          v40 = *(&g_apszStMode + *(a1 + 1400));
          v41 = *(a1 + 2968) / 0x3E8u;
          v42 = *(a1 + 3036) + *(a1 + 3032);
          v43 = *(a1 + 2980);
          v44 = " UAT";
          if (!*(a1 + 3026))
          {
            v44 = " LAT";
          }

          if (*(a1 + 2472))
          {
            v45 = " _";
          }

          else if (*(a1 + 2476))
          {
            v45 = " -";
          }

          else if (*(a1 + 2404))
          {
            v45 = " <";
          }

          else if (*(a1 + 2400))
          {
            v45 = " >";
          }

          else
          {
            v45 = "";
          }

          *buf = 136321282;
          *&buf[4] = v29;
          v162 = 2080;
          v163 = "AFRCLog_PrintCongestionFullInfo";
          v164 = 1024;
          v165 = 1018;
          v166 = 2048;
          *v167 = a5;
          *&v167[8] = 1024;
          *v168 = a2;
          *&v168[4] = 2048;
          *&v168[6] = a6;
          v169 = 2048;
          v170 = v26;
          v171 = 2048;
          *v172 = v24;
          *&v172[8] = 2048;
          *v173 = v31;
          *&v173[8] = 1024;
          *v174 = v32;
          *&v174[4] = 1024;
          *&v174[6] = (a7 * 1000.0);
          v175 = 2048;
          *v176 = v33;
          *&v176[8] = 2048;
          v177 = v34;
          *v178 = 1024;
          *&v178[2] = v35;
          LOWORD(v179) = 1024;
          *(&v179 + 2) = v36;
          HIWORD(v179) = 1024;
          v180 = v38;
          v181 = 1024;
          v182 = v37;
          v183 = 1024;
          v184 = v21 / 0x3E8;
          v185 = 1024;
          v186 = v39;
          v187 = 2080;
          v188 = v40;
          v189 = 1024;
          v190 = v41;
          v191 = 1024;
          v192 = v42;
          v193 = 1024;
          v194 = v43;
          v195 = 2080;
          v196 = v44;
          v197 = 2080;
          v198 = v45;
          _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %8.3f/%04X: %.4f %.4f %.4f %.4f %c RTT:%u PLR:%4.1f@%.1f %u %u RRx:%u MBL:%d %3u/%3u%s\tBB: %u\t%u\t%u\t%s%s", buf, 0xC8u);
        }
      }
    }

    if (*(a1 + 2832))
    {
      v160 = 0.0;
      *buf = 0;
      v158 = 0.0;
      v159 = 0.0;
      MediaQueue_RetrieveAudioVideoRates(*(a1 + 2808), buf, &v160, &v159, &v158);
      VRLogfilePrintWithTimestamp(*(a1 + 2832), "%8.3f/%04X:\t%.4f\t%.4f\t%.4f\t%.4f %c\tRTT:%-4u\tPLR:%4.1f@%.1f\tRRx:%u\tMBL:%d %u\t%3u/%3u\t %3u:%3u/%3u  %3u:%3u/%3u CS: %1d %3u %3u BB: %u\t%u\t%u\t%s%s%s\t%d\t%d/%d\n", ((v159 + v158) / 1000.0), (v159 / 1000.0), (v158 / 1000.0), *(a1 + 2968) / 0x3E8uLL, (*(a1 + 3036) + *(a1 + 3032)), *(a1 + 2980), SLOBYTE(a5));
    }

    return;
  }

  v46 = *(a1 + 2464) * 30.0;
  v47 = v46;
  if (v23 >= v46)
  {
    if (v23 <= v47)
    {
      memmove((a1 + 1416), (a1 + 1424), 8 * v47 - 8);
      memmove((a1 + 1896), (a1 + 1904), 8 * (*(a1 + 2464) * 30.0) - 8);
      *(a1 + 1416 + 8 * (*(a1 + 2464) * 30.0) - 8) = a5;
      v46 = *(a1 + 2464) * 30.0;
      *(a1 + 1896 + 8 * v46 - 8) = a6;
    }

    else
    {
      v49 = v23 - v47 + 1;
      memmove((a1 + 1416), (a1 + 1416 + 8 * v49), 8 * v47 - 8);
      memmove((a1 + 1896), (a1 + 1896 + 8 * v49), 8 * (*(a1 + 2464) * 30.0) - 8);
      *(a1 + 1416 + 8 * (*(a1 + 2464) * 30.0) - 8) = a5;
      *(a1 + 1896 + 8 * (*(a1 + 2464) * 30.0) - 8) = a6;
      v46 = *(a1 + 2464) * 30.0;
      *(a1 + 1412) = v46;
    }
  }

  else
  {
    v48 = a1 + 8 * v23;
    *(v48 + 1416) = a5;
    *(v48 + 1896) = a6;
    *(a1 + 1412) = v23 + 1;
    *(a1 + 2384) = a5;
    *(a1 + 2392) = a5;
  }

  LODWORD(v46) = *(a1 + 44);
  v50 = *&v46 * 0.75;
  if (v50 <= v21 || (v51 = *(a1 + 28), v51 <= *(a1 + 40)))
  {
    if (*(a1 + 2404))
    {
      v50 = v22 - *(a1 + 2416);
      if (v50 > 1.0 && (*(a1 + 2960) & 1) == 0)
      {
        if (*(a1 + 1400) != 3)
        {
          *(a1 + 1400) = 4;
          ++*(a1 + 1404);
          if (*(a1 + 2816))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v52 = VRTraceErrorLogLevelToCSTR();
              v53 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                v54 = *(a1 + 1404);
                *buf = 136315906;
                *&buf[4] = v52;
                v162 = 2080;
                v163 = "DetectCongestion";
                v164 = 1024;
                v165 = 3720;
                v166 = 1024;
                *v167 = v54;
                _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: [%u] Rate was limited", buf, 0x22u);
              }
            }
          }

          VRLogfilePrint(*(a1 + 2832), "[%u] Rate was limited\n", v14, v15, v16, v17, v18, v19, *(a1 + 1404));
          VRLogfilePrintWithTimestamp(*(a1 + 2848), "Rate is limited(%ukbps).\n", v55, v56, v57, v58, v59, v60, *(a1 + 44) / 0x3E8u);
        }

        *(a1 + 2384) = a5;
        *(a1 + 2392) = a5;
      }

      *(a1 + 2404) = 0;
    }
  }

  else if (v51 < 7 || !*(a1 + 9696))
  {
    *a3 = 0;
    if (!*(a1 + 2404))
    {
      *(a1 + 2416) = v22;
    }

    *(a1 + 2404) = 1;
  }

  LODWORD(v50) = *(a1 + 44);
  if (*&v50 * 1.25 >= v21)
  {
    if (!*(a1 + 2400))
    {
      goto LABEL_46;
    }

    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

  *(a1 + 2400) = v61;
LABEL_46:
  if (!*(a1 + 1400))
  {
    goto LABEL_73;
  }

  v160 = NAN;
  LODWORD(v159) = -1431655766;
  if (*(a1 + 1408) != *(a1 + 1404))
  {
    MediaQueue_GetTimeRateChanged(*(a1 + 2808), &v160, &v159);
    if (LODWORD(v159) < *(a1 + 1404) || (v62 = MicroToNTP(v160), v63 = NTPToMiddle32(v62), a2 == -1) || (a2 - (v63 >> 6)) > 0x7FFEu)
    {
      *(a1 + 2424) = 0;
    }

    else
    {
      v64 = a5 + 1.0;
      if (!*(a1 + 2948))
      {
        v64 = a5;
      }

      *(a1 + 2432) = v64;
      *(a1 + 2424) = 1;
      *(a1 + 1408) = *(a1 + 1404);
      *(a1 + 2484) = 0;
      v65 = (v63 >> 6);
      if (*(a1 + 2816))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v66 = VRTraceErrorLogLevelToCSTR();
          v67 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316418;
            *&buf[4] = v66;
            v162 = 2080;
            v163 = "DetectCongestion";
            v164 = 1024;
            v165 = 3776;
            v166 = 1024;
            *v167 = LODWORD(v159);
            *&v167[4] = 1024;
            *&v167[6] = a2;
            *v168 = 1024;
            *&v168[2] = v65;
            _os_log_impl(&dword_1DB56E000, v67, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: [%u] Stabilized (TxTS %u >= %u FB). now collecting samples...", buf, 0x2Eu);
          }
        }
      }

      VRLogfilePrint(*(a1 + 2832), "[%u] Stabilized (TxTS %u >= %u FB). now collecting samples...\n", v14, v15, v16, v17, v18, v19, SLOBYTE(v159));
      VRLogfilePrintWithTimestamp(*(a1 + 2848), "Rate(%ukbps) stabilized.\n", v68, v69, v70, v71, v72, v73, *(a1 + 44) / 0x3E8u);
    }
  }

  v74 = *(a1 + 2424);
  if (v74 >= 1)
  {
    v75 = *(a1 + 2464);
    v76 = vcvtd_n_s64_f64(v75, 2uLL);
    if (a5 - *(a1 + 2432) >= v75 * 0.5 && v74 >= v76)
    {
      if (*(a1 + 2816))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v78 = VRTraceErrorLogLevelToCSTR();
          v79 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v80 = *(a1 + 1404);
            v81 = *(a1 + 2424);
            *buf = 136316418;
            *&buf[4] = v78;
            v162 = 2080;
            v163 = "DetectCongestion";
            v164 = 1024;
            v165 = 3797;
            v166 = 1024;
            *v167 = v80;
            *&v167[4] = 1024;
            *&v167[6] = v81;
            *v168 = 1024;
            *&v168[2] = a2;
            _os_log_impl(&dword_1DB56E000, v79, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: [%u] Collected %d samples (TxTS %u)", buf, 0x2Eu);
          }
        }
      }

      VRLogfilePrint(*(a1 + 2832), "[%u] Collected %d samples (TxTS %u)\n", v14, v15, v16, v17, v18, v19, *(a1 + 1404));
      VRLogfilePrintWithTimestamp(*(a1 + 2848), "AFRC collected %d samples.\n", v82, v83, v84, v85, v86, v87, *(a1 + 2424));
      *(a1 + 2424) = 0;
      *(a1 + 1400) = 0;
      goto LABEL_73;
    }

    *(a1 + 2424) = v74 + 1;
  }

  if (*(a1 + 1400))
  {
    *a3 = 0;
  }

LABEL_73:
  if (*(a1 + 2408) && *(a1 + 1400) != 3 && a5 - *(a1 + 2432) > 2.0)
  {
    *(a1 + 2408) = 0;
  }

  v88 = *(a1 + 1412);
  v89 = *(a1 + 2464);
  v90 = vcvtd_n_s64_f64(v89, 2uLL);
  v91 = v88 - v90;
  if (v88 >= v90)
  {
    v104 = a1 + 1416;
    v105 = a1 + 1416 + 8 * v88;
    v106 = a1 + 8 * v91;
    v107 = v91;
    if (v91 >= 1)
    {
      v108 = (v106 + 1416);
      v107 = v91;
      while (*(v105 - 8) - *v108 <= v89 * 0.5)
      {
        --v108;
        v109 = __OFSUB__(v107--, 1);
        if ((v107 < 0) ^ v109 | (v107 == 0))
        {
          v107 = 0;
          break;
        }
      }
    }

    v110 = *(a1 + 1396);
    if ((v110 & 1) == 0 || (v26 = 0.0, *(v105 - 8) - *(v104 + 8 * v107) >= 0.2))
    {
      v111 = v88 - v107;
      if (v88 - v107 < 1)
      {
        v122 = NAN;
      }

      else
      {
        v112 = v107 + (v111 >> 1);
        v113 = (v111 + 1) >> 1;
        v114 = (a1 + 8 * v112 + 1416);
        v115 = (a1 + 8 * v107 + 1416);
        v116 = 0.0;
        v117 = 0.0;
        v118 = 0.0;
        v119 = 0.0;
        do
        {
          v119 = v119 + v115[60];
          v118 = v118 + v114[60];
          v120 = *v115++;
          v117 = v117 + v120;
          v121 = *v114++;
          v116 = v116 + v121;
          --v113;
        }

        while (v113);
        v122 = (v118 - v119) / (v116 - v117);
      }

      v26 = v89 * 0.5 * v122;
    }

    if (v91 >= 1)
    {
      v123 = (v106 + 1416);
      while (*(v105 - 8) - *v123 <= v89 * 0.25)
      {
        --v123;
        v109 = __OFSUB__(v91--, 1);
        if ((v91 < 0) ^ v109 | (v91 == 0))
        {
          v91 = 0;
          break;
        }
      }
    }

    if ((v110 & 1) == 0 || (v24 = 0.0, *(v105 - 8) - *(v104 + 8 * v91) >= 0.2))
    {
      v124 = v88 - v91;
      if (v88 - v91 < 1)
      {
        v135 = NAN;
      }

      else
      {
        v125 = v91 + (v124 >> 1);
        v126 = (v124 + 1) >> 1;
        v127 = (a1 + 8 * v125 + 1416);
        v128 = (a1 + 8 * v91 + 1416);
        v129 = 0.0;
        v130 = 0.0;
        v131 = 0.0;
        v132 = 0.0;
        do
        {
          v132 = v132 + v128[60];
          v131 = v131 + v127[60];
          v133 = *v128++;
          v130 = v130 + v133;
          v134 = *v127++;
          v129 = v129 + v134;
          --v126;
        }

        while (v126);
        v135 = (v131 - v132) / (v129 - v130);
      }

      v24 = v89 * 0.25 * v135;
      if (a6 > 0.0 && v24 == 0.0)
      {
        v136 = *(a1 + 2376);
        if (v136 == 0.0)
        {
          *(a1 + 2376) = a5;
        }

        else if (a5 - v136 > 2.0)
        {
          *(a1 + 1396) = v110 | 2;
          *(a1 + 2384) = a5;
          *(a1 + 2392) = a5;
          *(a1 + 2448) = 0;
          *(a1 + 2376) = 0;
          *a3 = 0;
          v88 = *(a1 + 1412);
        }
      }

      else
      {
        *(a1 + 2376) = 0;
      }
    }

    v137 = *(a1 + 2448) + v26 * (*(v104 + 8 * v88 - 8) - *(v104 + 8 * v88 - 16)) / (v89 * 0.5);
    if (v137 < 0.0)
    {
      v137 = 0.0;
    }

    *(a1 + 2448) = v137;
    if (a6 > 2.0 || v26 > 0.001 || a6 > 0.0 && v24 == 0.0)
    {
      *a3 = 0;
    }

    v138 = *(a1 + 1396);
    v139 = 0.0;
    if ((v138 & 4) != 0)
    {
      v140 = *(a1 + 2404);
      if (v24 <= 0.0)
      {
        goto LABEL_136;
      }

      v141 = v89 * *(&xmmword_1DBD45520 + (v140 != 0));
      if (v26 <= v141)
      {
        goto LABEL_136;
      }

      if (*(a1 + 2440) <= v141 || v140 != 0)
      {
        goto LABEL_136;
      }

      v139 = v26;
      if (!*(a1 + 2484))
      {
        v138 |= 2u;
        *(a1 + 1396) = v138;
        *(a1 + 2384) = a5;
        *(a1 + 2392) = a5;
        *(a1 + 2448) = 0;
        v137 = 0.0;
LABEL_136:
        v139 = v26;
      }
    }

    *(a1 + 2440) = v139;
    v143 = *(a1 + 1400);
    if (v143 && v143 != 3)
    {
      v25 = -1.0;
      if (!*(a1 + 2424))
      {
LABEL_153:
        if (a6 <= 0.0)
        {
          v149 = *(a1 + 2536);
        }

        else
        {
          *(a1 + 2536) = a5;
          v149 = a5;
        }

        if (v149 > 0.0)
        {
          v150 = a5 - v149;
          if (v150 > 1.0)
          {
            *(a1 + 2448) = 0;
            *(a1 + 2536) = a5;
            VRLogfilePrint(*(a1 + 2832), "OWRD has been 0 for %f seconds, reset NOWRDAcc\n", v14, v15, v16, v17, v18, v19, SLOBYTE(v150));
          }
        }

        if (*(a1 + 2948) && *(a1 + 2448) > *(a1 + 2464) * 0.1 * 0.5)
        {
          *a3 = 0;
        }

        if (*(a1 + 9696) && *(a1 + 9700) == 1 && (*(a1 + 1396) & 1) == 0)
        {
          *a3 = 0;
        }

        v151 = *(a1 + 252);
        v152 = *(a1 + 28);
        if (!v151 || (v152 >= 35 ? (v153 = 35) : (v153 = *(a1 + 28)), v154 = &g_adwTxRateTiers[v153 + 1], 1000 * v151 < (*v154 + (v154[1] - *v154) * 0.25)))
        {
          *(a1 + 2384) = a5;
        }

        if (v152 >= 36)
        {
          v155 = 36;
        }

        else
        {
          v155 = v152;
        }

        v156 = *(a1 + 2944);
        if (!v156 || *(a1 + 2928) || !v151 || 1000 * v151 > (*(a1 + 44) + (g_adwTxRateTiers[v155 + 1] - *(a1 + 44)) * 0.25))
        {
          *(a1 + 2392) = a5;
        }

        v157 = *(a1 + 1396);
        if ((v157 & 2) == 0 && a5 - *(a1 + 2392) > 2.0)
        {
          v157 |= 0x12u;
          *(a1 + 1396) = v157;
          *(a1 + 2384) = a5;
          *(a1 + 2392) = a5;
          *(a1 + 2448) = 0;
        }

        if (*(a1 + 9837) == 1 && *(a1 + 256) >= 7u && v152 >= 13 && *(a1 + 276))
        {
          v157 |= 2u;
          *(a1 + 1396) = v157;
          *(a1 + 2384) = a5;
          *(a1 + 2392) = a5;
          *(a1 + 2448) = 0;
          *(a1 + 9820) = 1;
        }

        if ((v157 & 3) == 0 && (!*(a1 + 2928) || *(a1 + 9572) >= 1))
        {
          if ((v157 & 4) != 0)
          {
            if (!*(a1 + 1400) && a5 - *(a1 + 2432) > *(a1 + 2456) + *(a1 + 2456))
            {
              *(a1 + 1396) = v157 & 0xFFFFFFF8;
            }
          }

          else if (*a3 && (!v156 || (*(a1 + 2960) & 1) != 0 || a5 - *(a1 + 2384) > (*(a1 + 2464) + *(a1 + 2464)) * *(a1 + 2456)))
          {
            *(a1 + 1396) = v157 | 0xC;
            *(a1 + 2384) = a5;
            *(a1 + 2392) = a5;
          }
        }

        goto LABEL_5;
      }
    }

    else
    {
      v25 = -1.0;
    }

    if (v139 <= v26 && !*(a1 + 2484))
    {
      v144 = (v138 & 4) != 0 && !*(a1 + 2404) ? 0.1 : 0.15;
      v145 = v89 * v144;
      if (v137 > v145)
      {
        v146 = *(a1 + 28);
        v147 = *(a1 + 40);
        if (v146 > v147)
        {
          *(a1 + 1396) = v138 | 2;
          *(a1 + 2384) = a5;
          *(a1 + 2392) = a5;
          if (!*(a1 + 2948) || v146 > v147 + 1)
          {
            v148 = v137 - v145;
            *(a1 + 2448) = v148;
            if (v148 < 0.0)
            {
              *(a1 + 2448) = 0;
            }
          }

          v25 = v137;
        }
      }
    }

    goto LABEL_153;
  }

  *a3 = 0;
  if (*(a1 + 2816))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v92 = VRTraceErrorLogLevelToCSTR();
      v93 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v94 = micro();
        v95 = *(a1 + 1412);
        v96 = *(a1 + 176);
        v97 = *(a1 + 184);
        v98 = *(a1 + 2700);
        v99 = *(a1 + 2704);
        v100 = *(a1 + 252);
        v101 = *(a1 + 256);
        v102 = *(&g_apszStMode + *(a1 + 1400));
        *buf = 136318978;
        *&buf[4] = v92;
        v162 = 2080;
        v163 = "AFRCLog_PrintCongestionInfo";
        v164 = 1024;
        v165 = 938;
        v166 = 2048;
        *v167 = v94;
        *&v167[8] = 2048;
        *v168 = a5;
        *&v168[8] = 1024;
        *&v168[10] = a2;
        v169 = 2048;
        v170 = a6;
        v171 = 1024;
        *v172 = v95;
        *&v172[4] = 1024;
        *&v172[6] = v21;
        *v173 = 2048;
        *&v173[2] = v96;
        *v174 = 2048;
        *&v174[2] = v97;
        v175 = 1024;
        *v176 = v98;
        *&v176[4] = 1024;
        *&v176[6] = v99;
        LOWORD(v177) = 1024;
        *(&v177 + 2) = v100;
        HIWORD(v177) = 1024;
        *v178 = v101;
        *&v178[4] = 2080;
        v179 = v102;
        _os_log_impl(&dword_1DB56E000, v93, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d AFRC: %8.3f %.3f/%04X %.4f(%d) %u %.4f %.4f %u %u %u %u%s", buf, 0x82u);
      }
    }
  }

  if (*(a1 + 2832))
  {
    v160 = 0.0;
    *buf = 0;
    v158 = 0.0;
    v159 = 0.0;
    MediaQueue_RetrieveAudioVideoRates(*(a1 + 2808), buf, &v160, &v159, &v158);
    if (*(a1 + 3026))
    {
      v103 = " UAT";
    }

    else
    {
      v103 = " LAT";
    }

    VRLogfilePrintWithTimestamp(*(a1 + 2832), "%8.3f\t%8.3f/%04X:\t%.4f(%d)\t\t\t\tRTT:%-4u\tPLR:%4.1f@%.1f\t%2u\t%2u\tRRx:%u\tMBL:%u\t%3u/%3u\t %3u:%3u/%3u  %3u:%3u/%3u\tBB: %u\t%u\t%u\t%s%s\n", (*(a1 + 3036) + *(a1 + 3032)), v103, *(&g_apszStMode + *(a1 + 1400)), *(a1 + 1412), *(a1 + 2700), *(a1 + 2704), SLOBYTE(v22));
  }
}

uint64_t CalculateBasebandRate(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, int a5)
{
  v10 = (*(a2 + 36) - *(a1 + 3044)) * 0.001;
  v11 = *(a2 + 32) - *(a1 + 3040);
  v12 = v11 & ~(v11 >> 31);
  if (v11 < 1)
  {
    v13 = 0;
  }

  else
  {
    if (v10 == 0.0)
    {
      return 0;
    }

    v13 = ((8 * v12) / v10);
  }

  v14 = v12 - ((*(a2 + 28) - *(a1 + 3036)) & ~((*(a2 + 28) - *(a1 + 3036)) >> 31));
  if (v14 >= 1)
  {
    if (v10 != 0.0)
    {
      v15 = ((8 * (v14 & ~(v14 >> 31))) / v10);
      goto LABEL_9;
    }

    return 0;
  }

  v15 = 0;
LABEL_9:
  if (!*(a1 + 2928))
  {
    goto LABEL_17;
  }

  v16 = (a1 + 2980);
  v23 = micro();
  if (*(a1 + 1396))
  {
    *(a1 + 9664) = 0;
    goto LABEL_16;
  }

  if (*(a1 + 9664))
  {
    if (v23 - *(a1 + 9672) > 3.0)
    {
      *(a1 + 9664) = 0;
      *(a1 + 9688) = 0;
      v24 = *(a1 + 2832);
      v25 = "Get Out of Antenna Imbalance Mode!\n";
LABEL_14:
      VRLogfilePrint(v24, "%s", v17, v18, v19, v20, v21, v22, v25);
      VRLogfilePrintWithTimestamp(*(a1 + 2848), "%s", v26, v27, v28, v29, v30, v31, v25);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (v15 >= 0x3E8)
  {
LABEL_16:
    *&v32 = *(a1 + 2968);
    *(a1 + 9648) = *(a1 + 28);
    *(&v32 + 1) = *v16;
    *(a1 + 9632) = v32;
    *(a1 + 9656) = *(a1 + 9576);
    *(a1 + 9688) = 0;
    *(a1 + 9692) = *(a1 + 2480);
    goto LABEL_17;
  }

  v51 = *(a1 + 9688) + 1;
  *(a1 + 9688) = v51;
  if (v51 >= 5 && v23 - *(a1 + 9680) > 3.0)
  {
    *(a1 + 9664) = 1;
    *(a1 + 9672) = v23;
    v24 = *(a1 + 2832);
    v25 = "Get Into of Antenna Imbalance Mode!\n";
    goto LABEL_14;
  }

LABEL_17:
  if (v10 <= 0.005 && v10 != 0.0)
  {
    return 0;
  }

  *a3 = v15;
  *a4 = v13;
  *(a1 + 2964) = v15;
  *(a1 + 2976) = *(a1 + 2968);
  v34 = *(a1 + 9056);
  if (v34 > 14)
  {
    memmove((a1 + 9064), (a1 + 9072), 0x70uLL);
    v36 = *(a1 + 9188);
    *(a1 + 9200) = *(a1 + 9204);
    *(a1 + 9184) = v36;
    *(a1 + 9216) = *(a1 + 9220);
    *(a1 + 9232) = *(a1 + 9236);
    v37 = *(a1 + 9264);
    *(a1 + 9244) = *(a1 + 9248);
    *(a1 + 9260) = v37;
    *(a1 + 9276) = *(a1 + 9280);
    *(a1 + 9292) = *(a1 + 9296);
    *(a1 + 9176) = *(a2 + 8);
    *(a1 + 9240) = *(a2 + 32);
    *(a1 + 9300) = *(a2 + 28);
    v35 = *(a1 + 9056);
  }

  else
  {
    *(a1 + 8 * v34 + 9064) = *(a2 + 8);
    *(a1 + 4 * v34 + 9184) = *(a2 + 32);
    *(a1 + 4 * *(a1 + 9056) + 9244) = *(a2 + 28);
    v35 = *(a1 + 9056) + 1;
    *(a1 + 9056) = v35;
  }

  if (v35 >= 2)
  {
    v38 = v35 - 1;
    v39 = v35;
    v40 = *(a1 + 9064 + 8 * (v35 - 1));
    while (v39 >= 2)
    {
      v41 = v39 - 1;
      v42 = v40 - *(a1 + 9056 + 8 * v39--);
      if (v42 >= 0.5)
      {
        goto LABEL_30;
      }
    }

    v41 = 0;
LABEL_30:
    v44 = *(a1 + 9184 + 4 * v38) - *(a1 + 9184 + 4 * v41);
    v45 = *(a1 + 9244 + 4 * v38) - *(a1 + 9244 + 4 * v41);
    v46 = v40 - *(a1 + 9064 + 8 * v41);
    v43 = ((8 * (((v44 & ~(v44 >> 31)) - (v45 & ~(v45 >> 31))) & ~(((v44 & ~(v44 >> 31)) - (v45 & ~(v45 >> 31))) >> 31))) / v46);
    HIDWORD(v47) = 1069757235;
    if (v46 < 0.15 && v43 - 1 >= *(a1 + 44))
    {
      v43 = *(a1 + 44);
    }

    *(a1 + 2968) = v43;
    if (a5 && v43)
    {
      v48 = *(a1 + 44);
      if (v48 >= v43)
      {
        v48 = v43;
      }

      *(a1 + 2972) = v48;
    }

    else
    {
      LODWORD(v47) = *(a1 + 2972);
      v48 = (v43 * 0.025 + v47 * 0.975);
      *(a1 + 2972) = v48;
      if (!v43)
      {
        if (!(*(a2 + 24) + *(a2 + 28)))
        {
          v43 = 0;
          goto LABEL_44;
        }

        if (v46 >= 0.5 && *(a1 + 2504) > 0.0)
        {
          v52 = *(a1 + 2980);
          if (v52 <= 0x7D1)
          {
            v52 = 2001;
          }

          *(a1 + 2980) = v52;
        }

        v43 = 0;
        if (!v48)
        {
          v50 = *(a1 + 2980);
          if (v50 <= 0x7D1)
          {
            v50 = 2001;
          }

          goto LABEL_43;
        }

        v49 = *(a2 + 28) + *(a2 + 24);
LABEL_42:
        v50 = ((8000 * v49) / v48);
LABEL_43:
        *(a1 + 2984) = v50;
        goto LABEL_44;
      }
    }

    if (!*(a1 + 2976))
    {
      *(a1 + 2972) = v43;
      v48 = v43;
    }

    *(a1 + 2980) = ((8000 * (*(a2 + 28) + *(a2 + 24))) / v43);
    v49 = *(a2 + 28) + *(a2 + 24);
    goto LABEL_42;
  }

  v43 = *(a1 + 44);
  *(a1 + 2968) = v43;
  *(a1 + 2972) = v43;
LABEL_44:
  if (v43 >= *(a1 + 8) || !(*(a2 + 24) + *(a2 + 28)) && !(*(a1 + 3032) + *(a1 + 3036)) || (*(a1 + 2960) & 1) == 0)
  {
    *(a1 + 2528) = micro();
  }

  return 1;
}

uint64_t RampDownAudio(uint64_t result, double a2)
{
  v2 = result;
  if (*(result + 2472) || (*(result + 2960)) && a2 - *(result + 2528) >= 2.0)
  {
    v3 = 0.333333333;
    if (*(result + 9576) > 0.333333333)
    {
      v4 = *(result + 2968);
      v5 = 0.666666667;
      if (v4 >> 5 >= 0x271)
      {
        v5 = 1.0;
      }

      if (v4 >> 3 >= 0x753)
      {
        v3 = v5;
      }

      *(result + 9576) = v3;
      *(result + 2528) = a2;
      *(result + 9584) = a2;
      MediaQueue_SetAudioFraction(v3);

      return UpdateFECLevel(v2);
    }
  }

  return result;
}

void UpdateAudioTxInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 9576);
  if (v9 >= 1.0)
  {
    v10 = *(a1 + 44);
  }

  else if (v9 == 0.333333333)
  {
    v10 = 12000;
  }

  else
  {
    v10 = 16000;
  }

  *(a1 + 48) = v10;
  v11 = *(a1 + 1392);
  v12 = *(a1 + 2968);
  v13 = *(a1 + 3036) + *(a1 + 3032);
  v14 = 8 * v13;
  v15 = *(a1 + 2680);
  if (v15)
  {
    if (*(a1 + 9848))
    {
      v16 = *(a1 + 9848);
    }

    else
    {
      v16 = *(a1 + 1392);
    }

    v17 = micro();
    if (v16 * 1.5 <= v12 || (v17 - *(a1 + 9840) >= 0.25 ? (v18 = v12 >= v16) : (v18 = 0), v18 ? (v19 = v14 > 2 * v12) : (v19 = 1), !v19))
    {
      *(a1 + 2680) = 0;
      v20 = micro() - *(a1 + 2672);
      *(a1 + 2664) = *(a1 + 2664) + v20;
      if (v20 <= *(a1 + 2688))
      {
        v20 = *(a1 + 2688);
      }

      *(a1 + 2688) = v20;
    }
  }

  else
  {
    if (v10 >= v11)
    {
      v16 = *(a1 + 1392);
    }

    else
    {
      v16 = v10;
    }

    if (v12 < v16 && v13 > ((v11 >> 2) & 0x1FFFFFFF))
    {
      *(a1 + 2672) = micro();
      *(a1 + 2680) = 1;
    }
  }

  v22 = *(a1 + 2680);
  if (v22 | v15 && *MEMORY[0x1E6986638] >= 5)
  {
    StallModeTracePrint_(5, "VCRC", a3, a4, " fAudioPaused: %d BBAvgTxRate: %10d txTarget: %10d (%d)   QDepth_bits: %10d ", a6, a7, a8, v22);
    v22 = *(a1 + 2680);
  }

  if ((v15 != 0) == (v22 == 0) && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 2680);
      v26 = *(a1 + 2968);
      *buf = 136316930;
      v28 = v23;
      v29 = 2080;
      v30 = "UpdateAudioTxInfo";
      v31 = 1024;
      v32 = 3033;
      v33 = 1024;
      v34 = v25;
      v35 = 1024;
      v36 = v26;
      v37 = 1024;
      v38 = v16;
      v39 = 1024;
      v40 = v11;
      v41 = 1024;
      v42 = v14;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d  fAudioPaused: %d BBAvgTxRate: %10d txTarget: %10d (%d)   QDepth_bits: %10d ", buf, 0x3Au);
    }
  }
}

uint64_t BWEstCalcLargeFrameSize(uint64_t a1, unsigned __int8 a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = 0.1;
  if ((*(a1 + 1104) | a2))
  {
    v4 = 0.05;
  }

  v5 = (v4 * ((*(a1 + 44) - *(a1 + 1392)) >> 3));
  v3 = 5 * *(a1 + 252);
  v6 = (v3 >> 1) & 0x1FFFFFFF;
  if (v5 >= (20 * *(a1 + 252)) >> 3)
  {
    v7 = (v3 >> 1) & 0x1FFFFFFF;
  }

  else
  {
    v7 = (v4 * ((*(a1 + 44) - *(a1 + 1392)) >> 3));
  }

  if (v7 <= 0x101)
  {
    v8 = 257;
  }

  else
  {
    v8 = v7;
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
        v12 = *(a1 + 252);
        v18 = 136316674;
        v19 = v9;
        v20 = 2080;
        v21 = "setCapOnLF";
        v22 = 1024;
        v23 = 6011;
        v24 = 1024;
        v25 = v8;
        v26 = 1024;
        v27 = v6;
        v28 = 1024;
        v29 = v5;
        v30 = 1024;
        v31 = v12;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "VCRC [%s] %s:%d ^^^^^ LARGE frame req'd of %d (%d, %d, R %d)", &v18, 0x34u);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 252);
      v18 = 136316674;
      v19 = v9;
      v20 = 2080;
      v21 = "setCapOnLF";
      v22 = 1024;
      v23 = 6011;
      v24 = 1024;
      v25 = v8;
      v26 = 1024;
      v27 = v6;
      v28 = 1024;
      v29 = v5;
      v30 = 1024;
      v31 = v17;
      _os_log_debug_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEBUG, "VCRC [%s] %s:%d ^^^^^ LARGE frame req'd of %d (%d, %d, R %d)", &v18, 0x34u);
    }
  }

  if (v7 < 0xABE)
  {
    if (v7 < 0x6D6)
    {
      if (v7 < 0x1F4)
      {
        if (v7 <= 0x112)
        {
          v14 = 257;
        }

        else
        {
          v14 = v8;
        }

        v13 = 1;
      }

      else
      {
        v15 = v8 >> 1;
        if (v8 >> 1 <= 0x100)
        {
          v15 = 256;
        }

        v14 = v15 + 1;
        v13 = 2;
      }
    }

    else
    {
      v14 = v8 / 3u + 1;
      v13 = 3;
    }
  }

  else
  {
    v13 = 2;
    do
    {
      ++v13;
    }

    while (v8 / v13 > 0x564);
    v14 = v8 / v13 + 1;
  }

  *(a1 + 1076) = v14;
  *(a1 + 1080) = v13;
  return v14 * v13;
}

uint64_t MediaQueue_CreateHandle(uint64_t *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x6400uLL, 0x102004011FBE5E6uLL);
  if (v4)
  {
    v5 = v4;
    *(v4 + 2) = 1;
    *(v4 + 186) = 1;
    *(v4 + 432) = 257;
    *(v4 + 109) = 0x3FF0000000000000;
    *(v4 + 220) = 1;
    *(v4 + 111) = 0x3FF0000000000000;
    *(v4 + 112) = 0x3FF0000000000000;
    *(v4 + 117) = a2;
    v4[208] = 0;
    *(v4 + 920) = 0u;
    *(v4 + 3193) = 0x7FF8000000000000;
    *(v4 + 91) = 0;
    pthread_mutex_init((v4 + 24), 0);
    pthread_mutex_init((v5 + 144), 0);
    pthread_mutex_init((v5 + 248), 0);
    pthread_mutex_init((v5 + 312), 0);
    pthread_mutex_init((v5 + 392), 0);
    pthread_cond_init((v5 + 456), 0);
    pthread_mutex_init((v5 + 512), 0);
    pthread_mutex_init((v5 + 752), 0);
    pthread_cond_init((v5 + 816), 0);
    *(v5 + 592) = 0;
    *(v5 + 584) = 0;
    *(v5 + 600) = 0;
    *(v5 + 604) = 0;
    *(v5 + 612) = 0;
    *(v5 + 616) = 0u;
    Throttling_MediaQueue_Init(v5 + 632);
    Handle = CreateHandle();
    v7 = 0;
    *a1 = Handle;
    if (Handle == 0xFFFFFFFFLL)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          MediaQueue_CreateHandle_cold_1();
        }
      }

      pthread_mutex_destroy((v5 + 24));
      pthread_mutex_destroy((v5 + 144));
      pthread_mutex_destroy((v5 + 248));
      pthread_mutex_destroy((v5 + 312));
      pthread_mutex_destroy((v5 + 392));
      pthread_cond_destroy((v5 + 456));
      pthread_mutex_destroy((v5 + 512));
      pthread_mutex_destroy((v5 + 752));
      pthread_cond_destroy((v5 + 816));
      ActiveProbing_Uninit(v5);
      free(v5);
      return 2149580802;
    }
  }

  else
  {
    v7 = 2149580803;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        MediaQueue_CreateHandle_cold_2();
      }
    }
  }

  return v7;
}

void ActiveProbing_Uninit(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 392));
  v2 = *(a1 + 592);
  if (v2)
  {
    do
    {
      v3 = v2[196];
      VCMediaControlInfoDispose(v2[198]);
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  *(a1 + 592) = 0;
  pthread_mutex_unlock((a1 + 392));
  if (*(a1 + 613) == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 616);
        v8 = *(a1 + 620);
        v9 = 136316162;
        v10 = v4;
        v11 = 2080;
        v12 = "ActiveProbing_Uninit";
        v13 = 1024;
        v14 = 1436;
        v15 = 1024;
        v16 = v7;
        v17 = 1024;
        v18 = v8;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ^^^^^^ \t\tActiveProbing_Uninit  V/A packets sent: %d/%d", &v9, 0x28u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      ActiveProbing_Uninit_cold_1();
    }
  }

  Throttling_MediaQueue_Uninit(a1 + 632, (a1 + 392));
}

uint64_t MediaQueue_CloseHandle()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149580802;
  }

  v1 = v0;
  _MediaQueue_Stop(v0);
  CheckOutHandleDebug();
  SetCellularAudioStallState_Internal(v1, 0, 1, v2, v3, v4, v5, v6);
  v7 = *(v1 + 728);
  if (v7)
  {
    IOObjectRelease(v7);
    *(v1 + 728) = 0;
  }

  pthread_mutex_lock((v1 + 312));
  v8 = *(v1 + 376);
  if (v8)
  {
    do
    {
      v9 = v8[196];
      free(v8);
      v8 = v9;
    }

    while (v9);
  }

  pthread_mutex_unlock((v1 + 312));
  pthread_mutex_lock((v1 + 392));
  v10 = *(v1 + 504);
  if (v10)
  {
    do
    {
      v11 = v10[196];
      VCMediaControlInfoDispose(v10[198]);
      free(v10);
      v10 = v11;
    }

    while (v11);
  }

  pthread_mutex_unlock((v1 + 392));
  pthread_mutex_lock((v1 + 512));
  v12 = *(v1 + 576);
  if (v12)
  {
    do
    {
      v13 = v12[2];
      free(v12);
      v12 = v13;
    }

    while (v13);
  }

  pthread_mutex_unlock((v1 + 512));
  ActiveProbing_Uninit(v1);
  pthread_mutex_destroy((v1 + 24));
  pthread_mutex_destroy((v1 + 144));
  pthread_mutex_destroy((v1 + 248));
  pthread_mutex_destroy((v1 + 312));
  pthread_mutex_destroy((v1 + 392));
  pthread_cond_destroy((v1 + 456));
  pthread_mutex_destroy((v1 + 512));
  pthread_mutex_destroy((v1 + 752));
  pthread_cond_destroy((v1 + 816));
  free(v1);
  return 0;
}

uint64_t _MediaQueue_Stop(uint64_t a1)
{
  pthread_mutex_lock((a1 + 752));
  if (*(a1 + 732))
  {
    *(a1 + 732) = 0;
    *(a1 + 744) = 0;
    pthread_cond_signal((a1 + 816));
  }

  pthread_mutex_unlock((a1 + 752));
  pthread_mutex_lock((a1 + 392));
  *(a1 + 8) = 0;
  pthread_cond_broadcast((a1 + 456));
  pthread_mutex_unlock((a1 + 392));
  result = *a1;
  if (*a1)
  {
    result = FigThreadJoin();
    *a1 = 0;
  }

  return result;
}

uint64_t SetCellularAudioStallState_Internal(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 + 24576;
  v11 = MEMORY[0x1E6986638];
  if (*MEMORY[0x1E6986638] >= 5)
  {
    SetCellularAudioStallState_Internal_cold_1(a2, a1, a3, a4, a5, a6, a7, a8);
  }

  pthread_mutex_lock((a1 + 392));
  if (*(v10 + 976) != a2)
  {
    v19 = micro();
    if (a2)
    {
      *(a1 + 25568) = 0u;
      *(a1 + 25560) = v19;
      *(v10 + 1008) = 0;
      *(v10 + 1012) = 1;
      *(v10 + 1016) = 0;
    }

    else
    {
      if (*(v10 + 977) == 1)
      {
        if (*(v10 + 976) == 1)
        {
          drainOldPackets(a1, v19 + -1.0, v12, v13, v14, v15, v16, v17, v18);
        }

        dropWaitingPkts(a1, *(a1 + 25576), v13, v14, v15, v16, v17, v18);
        *(a1 + 25576) = 0;
        pushOutQueuedAudioPkts(a1, 1, v20, v21, v22, v23, v24, v25);
        *(v10 + 977) = 0;
      }

      else
      {
        v26 = drainOldPackets(a1, v19, v12, v13, v14, v15, v16, v17, v18);
      }

      *(a1 + 25568) = 0;
      *(v10 + 1012) = 0;
      *(v10 + 1016) = 0;
      if (*v11 >= 5)
      {
        SetCellularAudioStallState_Internal_cold_2(v26, v27, v28, v29, v30, v31, v32, v33, v35);
      }
    }

    *(v10 + 976) = a2;
  }

  return pthread_mutex_unlock((a1 + 392));
}

uint64_t MediaQueue_Start()
{
  keys[2] = *MEMORY[0x1E69E9840];
  v0 = 2149580820;
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2149580802;
  }

  if (*v1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        MediaQueue_Start_cold_1();
      }
    }
  }

  else
  {
    v2 = *MEMORY[0x1E69631F8];
    keys[0] = *MEMORY[0x1E69631F0];
    keys[1] = v2;
    v3 = *MEMORY[0x1E695E4C0];
    values[0] = @"com.apple.avconference.mediaqueue.sendproc";
    values[1] = v3;
    v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5 = FigThreadCreate();
    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      v0 = v5 | 0xA0200000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          MediaQueue_Start_cold_2();
        }
      }
    }

    else
    {
      v0 = 0;
    }

    CheckOutHandleDebug();
  }

  return v0;
}

uint64_t MediaQueueSendProc()
{
  v55 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v1 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v34 = v2;
      v35 = 2080;
      v36 = "MediaQueueSendProc";
      v37 = 1024;
      v38 = 381;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaQueueSendProc Thread start...", buf, 0x1Cu);
    }
  }

  v4 = CheckInHandleDebug();
  if (!v4)
  {
    return -2145386494;
  }

  v5 = v4;
  v6 = (v4 + 504);
  while (1)
  {
    pthread_mutex_lock((v5 + 392));
    while (1)
    {
      v7 = *v6;
      if (*v6)
      {
        break;
      }

      if (!*(v5 + 8))
      {
        goto LABEL_27;
      }

      pthread_cond_wait((v5 + 456), (v5 + 392));
    }

    if (!*(v5 + 8))
    {
      break;
    }

    v8 = v6;
    v9 = *v6;
    if (*(v7 + 1576))
    {
LABEL_15:
      v8 = v6;
    }

    else
    {
      while (*(v9 + 1516))
      {
        v10 = *(v9 + 1568);
        if (v10)
        {
          v8 = (v9 + 1568);
          v9 = *(v9 + 1568);
          if ((*(v10 + 1576) & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      v7 = v9;
    }

    *v8 = *(v7 + 1568);
    *(v7 + 1568) = 0;
    --*(v5 + 624);
    pthread_mutex_unlock((v5 + 392));
    if (*(v5 + 613) == 1 && VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *v1;
      v13 = *v1;
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = micro();
          v15 = *(v7 + 1516);
          v16 = bswap32(*(v7 + 1508));
          v17 = bswap32(*(v7 + 1506));
          v18 = *v7;
          v19 = *(v5 + 624);
          v20 = *(v5 + 628);
          v21 = *(v7 + 1576);
          *buf = 136317698;
          v34 = v11;
          v35 = 2080;
          v36 = "MediaQueueSendProc";
          v37 = 1024;
          v38 = 446;
          v39 = 2048;
          v40 = v14;
          v41 = 1024;
          v42 = v15;
          v43 = 1024;
          v44 = v16;
          v45 = 1024;
          v46 = HIWORD(v17);
          v47 = 1024;
          v48 = v18;
          v49 = 1024;
          v50 = v19;
          v51 = 1024;
          v52 = v20;
          v53 = 1024;
          v54 = v21;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SENDPROC: ^^^^^^ @%.3f\t\tMP %d  %d/%d/%d  QLen: %d/%d  Probe: %d\n", buf, 0x50u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v22 = micro();
        v23 = *(v7 + 1516);
        v24 = bswap32(*(v7 + 1508));
        v25 = bswap32(*(v7 + 1506));
        v26 = *v7;
        v27 = *(v5 + 624);
        v28 = *(v5 + 628);
        v29 = *(v7 + 1576);
        *buf = 136317698;
        v34 = v11;
        v35 = 2080;
        v36 = "MediaQueueSendProc";
        v37 = 1024;
        v38 = 446;
        v39 = 2048;
        v40 = v22;
        v41 = 1024;
        v42 = v23;
        v43 = 1024;
        v44 = v24;
        v45 = 1024;
        v46 = HIWORD(v25);
        v47 = 1024;
        v48 = v26;
        v49 = 1024;
        v50 = v27;
        v51 = 1024;
        v52 = v28;
        v53 = 1024;
        v54 = v29;
        _os_log_debug_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d SENDPROC: ^^^^^^ @%.3f\t\tMP %d  %d/%d/%d  QLen: %d/%d  Probe: %d\n", buf, 0x50u);
      }
    }

    pthread_mutex_lock((v5 + 752));
    if (*(v7 + 1516) <= 1u)
    {
      MediaQueue_SendPacket(v5, v7);
    }

    pthread_mutex_unlock((v5 + 752));
    MediaQueue_Free(v5, v7);
  }

LABEL_27:
  pthread_mutex_unlock((v5 + 392));
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v34 = v30;
      v35 = 2080;
      v36 = "MediaQueueSendProc";
      v37 = 1024;
      v38 = 491;
      _os_log_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d MediaQueueSendProc Thread end...", buf, 0x1Cu);
    }
  }

  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_Stop()
{
  v0 = CheckInHandleDebug();
  if (!v0)
  {
    return 2149580802;
  }

  _MediaQueue_Stop(v0);
  CheckOutHandleDebug();
  return 0;
}

uint64_t MediaQueue_Malloc(double a1, uint64_t a2, int a3, double **a4)
{
  v7 = 2149580803;
  v8 = CheckInHandleDebug();
  if (v8)
  {
    v9 = v8;
    if (a3 < 1501)
    {
      pthread_mutex_lock((v8 + 312));
      v10 = *(v9 + 376);
      if (v10 && a1 - v10[192] >= 1.0)
      {
        *(v9 + 376) = v10[196];
      }

      else
      {
        v10 = malloc_type_calloc(1uLL, 0x6A8uLL, 0x10A0040768C7CCBuLL);
        if (!v10)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              MediaQueue_Malloc_cold_1();
            }
          }

          goto LABEL_14;
        }

        ++*(v9 + 12);
      }

      v7 = 0;
      *a4 = v10;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          MediaQueue_Malloc_cold_2();
        }
      }

      v7 = 1;
    }

LABEL_14:
    pthread_mutex_unlock((v9 + 312));
    CheckOutHandleDebug();
    return v7;
  }

  return 2149580802;
}

uint64_t MediaQueue_Free(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 8))
    {
      *(a2 + 1568) = 0;
      VCMediaControlInfoDispose(*(a2 + 1584));
      *(a2 + 1584) = 0;
      pthread_mutex_lock((a1 + 312));
      if (*(a2 + 1544))
      {
        *(a2 + 1536) = 0;
        v4 = (a1 + 376);
        v5 = *(a1 + 376);
        *(a2 + 1568) = v5;
        if (v5)
        {
LABEL_11:
          *v4 = a2;
          pthread_mutex_unlock((a1 + 312));
          return 0;
        }

        v6 = (a1 + 384);
      }

      else
      {
        v4 = (a1 + 384);
        if (*(a1 + 376))
        {
          v6 = (*v4 + 1568);
        }

        else
        {
          v6 = (a1 + 384);
          v4 = (a1 + 376);
        }
      }

      *v6 = a2;
      goto LABEL_11;
    }

    VCMediaControlInfoDispose(*(a2 + 1584));
    free(a2);
  }

  return 0;
}