uint64_t VCMediaQueuePacketBundler_BundlePackets(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    VCMediaQueuePacketBundler_BundlePackets_cold_2();
    return v7;
  }

  if (!a2)
  {
    VCMediaQueuePacketBundler_BundlePackets_cold_1();
    return v7;
  }

  CFRetain(a1);
  v4 = atomic_load((a1 + 24));
  if (v4)
  {
    goto LABEL_6;
  }

  v5 = *(a1 + 16);
  if (v5 == 1)
  {
    _VCMediaQueuePacketBundler_BundlePacketsWithFCFSPolicy(a1, a2);
    goto LABEL_7;
  }

  if (!v5)
  {
LABEL_6:
    _VCMediaQueuePacketBundler_BundlePacketsWithNonePolicy(a1, a2);
  }

LABEL_7:
  CFRelease(a1);
  return 0;
}

void *_VCMediaQueuePacketBundler_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void _VCMediaQueuePacketBundler_Finalize(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t VTPCallback(int a1, void *a2, double *a3, unsigned int *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136316674;
      v20 = v8;
      v21 = 2080;
      v22 = "VTPCallback";
      v23 = 1024;
      v24 = 925;
      v25 = 2048;
      v26 = *&a2;
      v27 = 1024;
      v28 = a1;
      v29 = 2048;
      v30 = a3;
      v31 = 2048;
      v32 = a4;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCM:VTPCallback: context (%p) notification (%d) data (%p) optional (%p).", &v19, 0x40u);
    }
  }

  v10 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (a1 == 2)
  {
    goto LABEL_19;
  }

  if (a1 != 1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTPCallback_cold_1();
      }
    }

    goto LABEL_19;
  }

  if (!a3)
  {
LABEL_19:
    v17 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  v11 = *a3;
  v12 = *a4;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136316162;
      v20 = v13;
      v21 = 2080;
      v22 = "VTPCallback";
      v23 = 1024;
      v24 = 936;
      v25 = 2048;
      v26 = v11;
      v27 = 1024;
      v28 = v12;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCM: Receive remote-no-remote-packet notification, %f. callID %d", &v19, 0x2Cu);
    }
  }

  if (v12)
  {
    v15 = [a2 conferenceForCallID:v12];
    v16 = v15;
    if (v15 && [v15 shouldReinitializeCallWithDuration:v12 forCallID:v11])
    {
      [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
    }
  }

  v17 = 0;
LABEL_20:

  return v17;
}

uint64_t SIPCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v15 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v27 = v16;
      v28 = 2080;
      v29 = "SIPCallback";
      v30 = 1024;
      v31 = 872;
      v32 = 2048;
      v33 = a2;
      v34 = 1024;
      LODWORD(v35[0]) = a4;
      WORD2(v35[0]) = 1024;
      *(v35 + 6) = a3;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SIPCallback: %p, dwCallID = %d (%d)", buf, 0x32u);
    }
  }

  if ([a2 isSIPHandleValid:a1])
  {
    if (a4)
    {
      v18 = [a2 conferenceForCallID:a4];
    }

    else
    {
      if (a3 != 13 || !a5)
      {
LABEL_19:
        v18 = [a2 activeConference];
        if (!v18)
        {
          v19 = 3;
          goto LABEL_21;
        }

LABEL_20:
        v19 = [v18 sipCallbackNotification:a3 callID:a4 msgIn:a5 msgOut:a6 optional:a7 confIndex:a8];
LABEL_21:

        return v19;
      }

      v20 = [a2 conferenceForParticipantID:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a5)}];
      v18 = v20;
      if (a6 && !v20)
      {
        v18 = [a2 conferenceForSourceDestinationInfo:a6];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          if (v18)
          {
            v23 = [objc_msgSend(v18 "description")];
          }

          else
          {
            v23 = "<nil>";
          }

          *buf = 136316162;
          v27 = v21;
          v28 = 2080;
          v29 = "SIPCallback";
          v30 = 1024;
          v31 = 895;
          v32 = 2048;
          v33 = a2;
          v34 = 2080;
          v35[0] = v23;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SIPCallback: VCManager %p matched VC %s to get callee callID", buf, 0x30u);
        }
      }
    }

    if (v18)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  [v15 drain];
  return 3;
}

void CellConditionChangeCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v6;
      v11 = 2080;
      v12 = "CellConditionChangeCallback";
      v13 = 1024;
      v14 = 914;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceManager: CellConditionChangeCallback", &v9, 0x1Cu);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [a1 broadcastCellTechChange:a2 cellularMaxPktLen:a3];
}

uint64_t VTP_Initialize()
{
  keys[2] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&g_x_hvtp);
  if (g_hVTP != 0xFFFFFFFFLL)
  {
    pthread_mutex_unlock(&g_x_hvtp);
    v0 = __error();
    v1 = 17;
LABEL_70:
    *v0 = v1;
    return 0xFFFFFFFFLL;
  }

  v2 = malloc_type_calloc(1uLL, 0x5640uLL, 0x10E0040BCFFB248uLL);
  if (!v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_Initialize_cold_20();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        VTP_Initialize_cold_19();
      }
    }

    goto LABEL_68;
  }

  v3 = v2;
  v4 = *MEMORY[0x1E695E480];
  if (VCAllocatorFirstCome_Create(*MEMORY[0x1E695E480], "VTPBlockBufferHeaderAllocator", v2 + 2753))
  {
    VTP_Initialize_cold_1();
    goto LABEL_95;
  }

  if (VCUseFigMemoryPoolForDataBlockBuffer())
  {
    v5 = CMMemoryPoolCreate(0);
    *(v3 + 5904) = v5;
    if (v5)
    {
      Allocator = CMMemoryPoolGetAllocator(v5);
      *(v3 + 22032) = Allocator;
      if (Allocator)
      {
        CFRetain(Allocator);
        goto LABEL_14;
      }

      VTP_Initialize_cold_15();
    }

    else
    {
      VTP_Initialize_cold_16();
    }

LABEL_95:
    _VTP_ReleaseAllocators(v3);
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_Initialize_cold_18();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        VTP_Initialize_cold_17();
      }
    }

    goto LABEL_67;
  }

  *buf = xmmword_1DBD49A50;
  *&buf[16] = xmmword_1DBD49A60;
  *&buf[32] = 2049;
  if (VCAllocatorMultiQueue_Create(v4, "VTPBlockBufferDataAllocator", 5u, buf, (v3 + 22032)))
  {
    VTP_Initialize_cold_2();
    goto LABEL_95;
  }

LABEL_14:
  if (VCAllocatorFirstCome_Create(v4, "VTPPacketRoutingInfoAllocatorName", (v3 + 22048)))
  {
    VTP_Initialize_cold_3();
    goto LABEL_95;
  }

  Typed = VCMemoryPool_CreateTyped(0x220uLL, 0x10F2040C1A8416DLL);
  *(v3 + 22040) = Typed;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!Typed)
  {
    VTP_Initialize_cold_14(ErrorLogLevelForModule);
    goto LABEL_95;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = "_VTP_InitializeAllocators";
      *&buf[22] = 1024;
      *&buf[24] = 724;
      *&buf[28] = 2048;
      *&buf[30] = 592;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Create VTP memory pool for VPKTLIST with double release detection and size=%lu)", buf, 0x26u);
    }
  }

  v11 = VCMemoryPool_CreateTyped(0x250uLL, 4072543214);
  *(v3 + 5872) = v11;
  if (!v11)
  {
    VTP_Initialize_cold_13();
    goto LABEL_95;
  }

  v12 = MEMORY[0x1E128C430]();
  *(v3 + 22056) = v12;
  nw_ip_metadata_set_service_class(v12, nw_service_class_interactive_voice);
  if (*(v3 + 22056))
  {
    v13 = MEMORY[0x1E128C430]();
    *(v3 + 22064) = v13;
    nw_ip_metadata_set_service_class(v13, nw_service_class_interactive_video);
    if (*(v3 + 22064))
    {
      v14 = MEMORY[0x1E128C430]();
      *(v3 + 22072) = v14;
      nw_ip_metadata_set_service_class(v14, nw_service_class_background);
      if (*(v3 + 22072))
      {
        goto LABEL_23;
      }

      VTP_Initialize_cold_4();
    }

    else
    {
      VTP_Initialize_cold_5();
    }
  }

  else
  {
    VTP_Initialize_cold_6();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v37 = VRTraceErrorLogLevelToCSTR();
    v38 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v37;
      *&buf[12] = 2080;
      *&buf[14] = "VTP_Initialize";
      *&buf[22] = 1024;
      *&buf[24] = 467;
      *&buf[28] = 1024;
      *&buf[30] = 467;
      _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VTP/VTransport.m:%d: Failed to create metadata for service class", buf, 0x22u);
    }
  }

LABEL_23:
  *(v3 + 16) = 1074937874;
  *(v3 + 20) = 0xFFFFFFFF00000000;
  *(v3 + 5864) = 16;
  *(v3 + 21644) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 21624) = VCDefaults_GetBoolValueForKey(@"forceDSCPTagging", 0);
  *(v3 + 21636) = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-cellular-expiration-time-audio" userDefaultKey:@"cellularExpirationTimeAudio" defaultValue:&unk_1F579A008 isDoubleType:{0), "intValue"}];
  *(v3 + 21632) = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-cellular-expiration-time-video" userDefaultKey:@"cellularExpirationTimeVideo" defaultValue:&unk_1F579A020 isDoubleType:{0), "intValue"}];
  v15 = malloc_type_calloc(1uLL, 0x140uLL, 0x1000040A86A77D5uLL);
  *(v3 + 5856) = v15;
  if (!v15)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_Initialize_cold_12();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        VTP_Initialize_cold_11();
      }
    }

    _VTP_ReleaseAllocators(v3);
LABEL_67:
    free(v3);
LABEL_68:
    pthread_mutex_unlock(&g_x_hvtp);
LABEL_69:
    v0 = __error();
    v1 = 22;
    goto LABEL_70;
  }

  memset((v3 + 14232), 255, 0x1CE0uLL);
  g_hVTP = CreateHandle();
  pthread_mutex_unlock(&g_x_hvtp);
  if (g_hVTP == 0xFFFFFFFFLL)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Initialize_cold_10();
      }
    }

    free(*(v3 + 5856));
    _VTP_ReleaseAllocators(v3);
    free(v3);
    goto LABEL_69;
  }

  pthread_mutex_init((v3 + 48), 0);
  pthread_mutex_init((v3 + 4224), 0);
  pthread_mutex_init((v3 + 4288), 0);
  pthread_mutex_init((v3 + 5792), 0);
  pthread_rwlock_init((v3 + 5376), 0);
  pthread_rwlock_init((v3 + 5584), 0);
  pthread_rwlock_init((v3 + 21648), 0);
  v16 = MEMORY[0x1E695E9E8];
  *(v3 + 21848) = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  [+[VCDatagramChannelManager sharedInstance](VCDatagramChannelManager setReadHandler:"setReadHandler:", &__block_literal_global_78];
  v17 = *MEMORY[0x1E69631F8];
  keys[0] = *MEMORY[0x1E69631F0];
  keys[1] = v17;
  v18 = *MEMORY[0x1E695E4C0];
  values[0] = @"com.apple.avconference.vtransport.recvproc";
  values[1] = v18;
  v19 = CFDictionaryCreate(v4, keys, values, 2, MEMORY[0x1E695E9D8], v16);
  v20 = FigThreadCreate();
  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_Initialize_cold_8();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        VTP_Initialize_cold_7();
      }
    }

    VTP_Cleanup();
    return 0xFFFFFFFFLL;
  }

  *(v3 + 5888) = 0xFFFFFFFFLL;
  *(v3 + 5896) = 0;
  *(v3 + 5897) = [+[VCDefaults sharedInstance](VCDefaults enablePacketLogging];
  *(v3 + 21625) = 0;
  v21 = CFPreferencesCopyAppValue(@"DisableWMM", @"com.apple.VideoConference");
  if (v21)
  {
    v22 = v21;
    if (CFEqual(v21, *MEMORY[0x1E695E4D0]))
    {
      *(v3 + 21625) = 1;
    }

    CFRelease(v22);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(v3 + 21625);
      *buf = 136315906;
      if (v25)
      {
        v26 = "disabled";
      }

      else
      {
        v26 = "enabled";
      }

      *&buf[4] = v23;
      *&buf[12] = 2080;
      *&buf[14] = "VTP_Initialize";
      *&buf[22] = 1024;
      *&buf[24] = 547;
      *&buf[28] = 2080;
      *&buf[30] = v26;
      _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WMM is=%s.", buf, 0x26u);
    }
  }

  *(v3 + 21628) = 0;
  *(v3 + 22000) = micro();
  keyExistsAndHasValidFormat = -86;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"fttc", @"com.apple.VideoConference", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v28 = AppIntegerValue;
    if (AppIntegerValue > 999 || AppIntegerValue % 100)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_Initialize_cold_9();
        }
      }
    }

    else
    {
      if (AppIntegerValue && *(v3 + 21625) == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v29 = VRTraceErrorLogLevelToCSTR();
          v30 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = v29;
            *&buf[12] = 2080;
            *&buf[14] = "VTP_Initialize";
            *&buf[22] = 1024;
            *&buf[24] = 557;
            _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Override DisableWMM due to FT traffic class is set.", buf, 0x1Cu);
          }
        }

        *(v3 + 21625) = 0;
      }

      *(v3 + 21628) = v28;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v31;
          *&buf[12] = 2080;
          *&buf[14] = "VTP_Initialize";
          *&buf[22] = 1024;
          *&buf[24] = 561;
          *&buf[28] = 1024;
          *&buf[30] = v28;
          _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Force FaceTime traffic class=%d.", buf, 0x22u);
        }
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(v3 + 32);
      *buf = 136316418;
      *&buf[4] = v34;
      *&buf[12] = 2080;
      *&buf[14] = "VTP_Initialize";
      *&buf[22] = 1024;
      *&buf[24] = 567;
      *&buf[28] = 1024;
      *&buf[30] = 567;
      *&buf[34] = 2048;
      *&buf[36] = v36;
      v41 = 2048;
      v42 = g_hVTP;
      _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VTP/VTransport.m:%d: VTPRecvProc thread=%p started. g_hVTP:[%p]", buf, 0x36u);
    }
  }

  return 0;
}

void _VTP_ReleaseAllocators(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v2;
      v11 = 2080;
      v12 = "_VTP_ReleaseAllocators";
      v13 = 1024;
      v14 = 742;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Destroy VTP memory pool for VPKTLIST!", &v9, 0x1Cu);
    }
  }

  VCMemoryPool_Destroy(*(a1 + 5872));
  *(a1 + 5872) = 0;
  VCMemoryPool_Destroy(*(a1 + 22040));
  *(a1 + 22040) = 0;
  v4 = *(a1 + 22048);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 22048) = 0;
  }

  v5 = *(a1 + 22032);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 22032) = 0;
  }

  v6 = *(a1 + 22024);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 22024) = 0;
  }

  v7 = *(a1 + 5904);
  if (v7)
  {
    CMMemoryPoolInvalidate(v7);
    v8 = *(a1 + 5904);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 5904) = 0;
    }
  }
}

uint64_t VTPRecvProc(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v98[2] = *MEMORY[0x1E69E9840];
  v81.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v81.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  v80 = 0;
  v1 = CheckInHandleDebug();
  if (v1)
  {
    v2 = v1;
    memset(&v83, 0, sizeof(v83));
    pthread_rwlock_rdlock((v1 + 5376));
    if (*(v2 + 20))
    {
LABEL_3:
      pthread_rwlock_unlock((v2 + 5376));
      v3 = 0;
LABEL_4:
      CheckOutHandleDebug();
      return v3;
    }

    while (1)
    {
      v6 = *(v2 + 24);
      if (v6 == -1)
      {
        v6 = socket(2, 1, 6);
        *(v2 + 24) = v6;
        if (v6 == -1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v76 = VRTraceErrorLogLevelToCSTR();
            v77 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = v76;
              *&buf[12] = 2080;
              *&buf[14] = "VTPRecvProc";
              *&buf[22] = 1024;
              *&buf[24] = 4463;
              *&buf[28] = 1024;
              *&buf[30] = 4463;
              _os_log_error_impl(&dword_1DB56E000, v77, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VTP/VTransport.m:%d: socket failed. We may run out of file descriptors", buf, 0x22u);
            }
          }

          usleep(0x2710u);
          goto LABEL_151;
        }
      }

      if (__darwin_check_fd_set_overflow(v6, &v83, 0))
      {
        *(v83.fds_bits + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
      }

      v7 = *(v2 + 24);
      for (i = *(v2 + 5576); i; i = *(i + 376))
      {
        v9 = *(i + 20);
        if (v9 <= 0xFFFFFFFD)
        {
          if (__darwin_check_fd_set_overflow(*(i + 20), &v83, 0))
          {
            *(v83.fds_bits + ((v9 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v9;
          }

          if (*(i + 20) > v7)
          {
            v7 = *(i + 20);
          }
        }
      }

      pthread_rwlock_unlock((v2 + 5376));
      v81.tv_sec = 5;
      v81.tv_usec = 0;
      v10 = select(v7 + 1, &v83, 0, 0, &v81);
      v11 = *__error();
      v12 = micro();
      v13 = *(v2 + 22000);
      if (v13 > 0.0 && v12 - v13 > 5.0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(v2 + 21992);
            *buf = 136315906;
            *&buf[4] = v15;
            *&buf[12] = 2080;
            *&buf[14] = "_VTP_LogOSChannelInfoWithInterval";
            *&buf[22] = 1024;
            *&buf[24] = 4398;
            *&buf[28] = 1024;
            *&buf[30] = v17;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Triggering osChannelInfoLog [IDS readyToReadCount: %d]", buf, 0x22u);
          }
        }

        *(v2 + 22000) = v12;
        *(v2 + 21992) = 0;
        pthread_rwlock_rdlock((v2 + 5376));
        for (j = *(v2 + 5576); j; j = *(j + 376))
        {
          if (*(j + 20) <= 0xFFFFFFFD && *(j + 416) == 4)
          {
            _VTP_LogOSChannelInfoToIDSDatagramChannel(*(j + 528));
          }
        }

        pthread_rwlock_unlock((v2 + 5376));
      }

      if (!v10)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v19 = VRTraceErrorLogLevelToCSTR();
          v20 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            *&buf[4] = v19;
            *&buf[12] = 2080;
            *&buf[14] = "VTPRecvProc";
            *&buf[22] = 1024;
            *&buf[24] = 4498;
            *&buf[28] = 1024;
            *&buf[30] = 4498;
            *&buf[34] = 1024;
            *&buf[36] = v80;
            _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VTP/VTransport.m:%d: Select timeout, VTP has received a total of %d packets", buf, 0x28u);
          }
        }

        bzero(buf, 0x1001uLL);
        pthread_rwlock_rdlock((v2 + 5376));
        if (*(v2 + 40) == 1)
        {
          v21 = snprintf(buf, 0x1000uLL, "reset:%d", *(v2 + 24));
        }

        else
        {
          v21 = 0;
        }

        for (k = *(v2 + 5576); k; k = *(k + 376))
        {
          if (*(k + 20) <= 0xFFFFFFFD && *(k + 416) == 4)
          {
            _VTP_LogOSChannelInfoToIDSDatagramChannel(*(k + 528));
          }

          if (*(v2 + 40) == 1)
          {
            v72 = snprintf(&buf[v21], 4096 - v21, ",%d->%d", *k, *(k + 20));
            v73 = v72 & ~(v72 >> 31);
            if (4096 - v21 <= v72)
            {
              v73 = 0;
            }

            v21 += v73;
          }
        }

        if (*(v2 + 40) == 1)
        {
          *(v2 + 40) = 0;
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v74 = VRTraceErrorLogLevelToCSTR();
            v75 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v97.msg_name) = 136315906;
              *(&v97.msg_name + 4) = v74;
              *(&v97.msg_namelen + 2) = 2080;
              *(&v97.msg_namelen + 6) = "_VTP_LogOSChannelInfoWhenSelectTimeout";
              HIWORD(v97.msg_iov) = 1024;
              v97.msg_iovlen = 4429;
              *(&v97.msg_iovlen + 2) = 2080;
              *(&v97.msg_iovlen + 6) = buf;
              _os_log_impl(&dword_1DB56E000, v75, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Select timeout with fds:[%s]", &v97, 0x26u);
            }
          }
        }

LABEL_151:
        pthread_rwlock_unlock((v2 + 5376));
        goto LABEL_152;
      }

      if (v10 != -1)
      {
        break;
      }

      if (v11 != 9)
      {
        v3 = v11 | 0xC0170000;
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VTPRecvProc_cold_1();
          }
        }

        goto LABEL_4;
      }

LABEL_152:
      memset(&v83, 0, sizeof(v83));
      pthread_rwlock_rdlock((v2 + 5376));
      if (*(v2 + 20))
      {
        goto LABEL_3;
      }
    }

    pthread_rwlock_rdlock((v2 + 5376));
    v22 = *(v2 + 5576);
    if (!v22)
    {
      v23 = 0;
LABEL_150:
      VTP_DemuxPacketsToVFDList(v2, v23, &v80);
      goto LABEL_151;
    }

    v23 = 0;
    while (1)
    {
      v24 = *(v22 + 20);
      if (v24 <= 0xFFFFFFFD && __darwin_check_fd_set_overflow(*(v22 + 20), &v83, 0) && ((*(v83.fds_bits + ((v24 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v24) & 1) != 0)
      {
        break;
      }

LABEL_126:
      v22 = *(v22 + 376);
      if (!v22)
      {
        goto LABEL_150;
      }
    }

    v82 = 0xAAAAAAAAAAAAAAAALL;
    if (*(v22 + 416) == 4)
    {
      v25 = *(v22 + 528);
      if (v25)
      {
        [v25 readyToRead];
        ++*(v2 + 21992);
        v82 = *(v2 + 21856);
        *(v2 + 21856) = 0;
        *(v2 + 21864) = 0;
LABEL_50:
        v26 = v23;
        if (v23)
        {
          do
          {
            v27 = v26;
            v26 = *(v26 + 68);
          }

          while (v26);
          *(v27 + 68) = v82;
        }

        else
        {
          v23 = v82;
        }

LABEL_124:
        v68 = *(v22 + 20);
        if (__darwin_check_fd_set_overflow(v68, &v83, 0))
        {
          *(v83.fds_bits + ((v68 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v68);
        }

        goto LABEL_126;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_124;
      }

      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_124;
      }

      *buf = 136315650;
      *&buf[4] = v38;
      *&buf[12] = 2080;
      *&buf[14] = "VTP_RecvAndProcessPacketsFromDatagramChannel";
      *&buf[22] = 1024;
      *&buf[24] = 6147;
      v40 = v39;
      v41 = " [%s] %s:%d nil dataChannel, cannot receive packet!";
      v42 = 28;
LABEL_87:
      _os_log_error_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_ERROR, v41, buf, v42);
      goto LABEL_124;
    }

    v28 = micro();
    if ((_VTP_AllocatePacketWithBufferFreeCallback(v2, 0, 0x801uLL, 0, 0, &v82) & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_124;
      }

      v43 = VRTraceErrorLogLevelToCSTR();
      v44 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_124;
      }

      *buf = 136316162;
      *&buf[4] = v43;
      *&buf[12] = 2080;
      *&buf[14] = "VTP_RecvFromSocket";
      *&buf[22] = 1024;
      *&buf[24] = 6241;
      *&buf[28] = 1024;
      *&buf[30] = 6241;
      *&buf[34] = 1024;
      *&buf[36] = 576;
      v40 = v44;
      v41 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VTP/VTransport.m:%d: calloc failed to allocate=%d bytes";
      v42 = 40;
      goto LABEL_87;
    }

    v29 = v82;
    v82[579] = 2;
    if (*(v22 + 8) == 2)
    {
      *&v30 = 0xAAAAAAAAAAAAAAAALL;
      *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&buf[32] = v30;
      *&buf[48] = v30;
      *buf = v30;
      *&buf[16] = v30;
      v98[0] = *(v29 + 71);
      v98[1] = 2048;
      *(v29 + 44) = 128;
      *(&v97.msg_iovlen + 1) = -1431655766;
      *(&v97.msg_namelen + 1) = -1431655766;
      v97.msg_name = v29 + 48;
      v97.msg_iov = v98;
      v97.msg_namelen = 128;
      v97.msg_iovlen = 1;
      v97.msg_control = buf;
      *&v97.msg_controllen = 64;
      v31 = recvmsg(*(v22 + 20), &v97, 0);
      if (v31 <= 0)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 5)
        {
          v79 = VRTraceErrorLogLevelToCSTR();
          v69 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v70 = *(v22 + 20);
            *v89 = 136315906;
            v90 = v79;
            v91 = 2080;
            v92 = "_VTP_RecvFromDatagramSocket";
            v93 = 1024;
            v94 = 6185;
            v95 = 1024;
            v96 = v70;
            _os_log_impl(&dword_1DB56E000, v69, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d recvmsg failed for socket=%d", v89, 0x22u);
          }
        }
      }

      else
      {
        *(v29 + 44) = v97.msg_namelen;
        if (*(v22 + 392) == 1 && v29[49] == 30 && !memcmp(v29 + 56, (v22 + 400), *(v22 + 396)))
        {
          v32 = *(v29 + 17);
          *(v29 + 44) = 16;
          *(v29 + 24) = 528;
          *(v29 + 13) = v32;
          *(v29 + 7) = 0;
        }

        if (v97.msg_controllen >= 0xC)
        {
          msg_control = v97.msg_control;
          if (v97.msg_control)
          {
            while (1)
            {
              v34 = msg_control[1];
              if (!v34)
              {
                break;
              }

              if (v34 == 41)
              {
                v35 = msg_control[2];
                if (v35 == 47)
                {
                  goto LABEL_74;
                }

                if (v35 == 46)
                {
                  if (msg_control[3] || msg_control[4] || msg_control[5] != -65536)
                  {
                    *(v29 + 28) = *(msg_control + 3);
                  }

                  else
                  {
                    *(v29 + 7) = bswap32(msg_control[6]);
                  }

                  v37 = msg_control[7];
LABEL_78:
                  VTP_IFIndexToName(v2, v37, v29 + 12);
                }
              }

LABEL_79:
              msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
              if ((msg_control + 3) > v97.msg_control + v97.msg_controllen)
              {
                goto LABEL_90;
              }
            }

            v36 = msg_control[2];
            if (v36 != 24)
            {
              if (v36 != 20)
              {
                if (v36 == 7)
                {
                  *(v29 + 7) = bswap32(msg_control[3]);
                }

                goto LABEL_79;
              }

              v37 = *(msg_control + 7);
              goto LABEL_78;
            }

LABEL_74:
            v29[352] = *(msg_control + 12);
            goto LABEL_79;
          }
        }
      }
    }

    else
    {
      v31 = recv(*(v22 + 20), *(v29 + 71), *(v29 + 70), 0);
    }

LABEL_90:
    if (v31 == 2048)
    {
      v31 = 2048;
      if (v29)
      {
        goto LABEL_92;
      }

      goto LABEL_118;
    }

    if ((_VTP_ShrinkPacket(v2, v31, v29) & 0x80000000) != 0)
    {
      v31 = 0xFFFFFFFFLL;
    }

    else if (v31 > 0)
    {
LABEL_103:
      switch(v31)
      {
        case 0x80170003:
          goto LABEL_124;
        case 0xFFFFFFFF:
          v56 = *__error();
          if (VRTraceGetErrorLogLevelForModule() < 5)
          {
            goto LABEL_124;
          }

          v57 = VRTraceErrorLogLevelToCSTR();
          v58 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_124;
          }

          v59 = "recv";
          if (*(v22 + 8) == 2)
          {
            v59 = "recvfrom";
          }

          v60 = *(v22 + 20);
          *buf = 136316674;
          *&buf[4] = v57;
          *&buf[12] = 2080;
          *&buf[14] = "VTP_RecvAndProcessOnePacketFromSocket";
          *&buf[22] = 1024;
          *&buf[24] = 6093;
          *&buf[28] = 1024;
          *&buf[30] = 6093;
          *&buf[34] = 2080;
          *&buf[36] = v59;
          *&buf[44] = 1024;
          *&buf[46] = v60;
          *&buf[50] = 1024;
          *&buf[52] = v56 | 0xC0170000;
          v61 = v58;
          v62 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VTP/VTransport.m:%d: %s(%d) failed (%08X)";
          v63 = 56;
LABEL_123:
          _os_log_impl(&dword_1DB56E000, v61, OS_LOG_TYPE_DEFAULT, v62, buf, v63);
          goto LABEL_124;
        case 0:
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v52 = VRTraceErrorLogLevelToCSTR();
            v53 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v54 = "recv";
              if (*(v22 + 8) == 2)
              {
                v54 = "recvfrom";
              }

              v55 = *(v22 + 20);
              *buf = 136316418;
              *&buf[4] = v52;
              *&buf[12] = 2080;
              *&buf[14] = "VTP_RecvAndProcessOnePacketFromSocket";
              *&buf[22] = 1024;
              *&buf[24] = 6089;
              *&buf[28] = 1024;
              *&buf[30] = 6089;
              *&buf[34] = 2080;
              *&buf[36] = v54;
              *&buf[44] = 1024;
              *&buf[46] = v55;
              _os_log_impl(&dword_1DB56E000, v53, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VTP/VTransport.m:%d: %s(%d) returned 0: empty message", buf, 0x32u);
            }
          }

          goto LABEL_50;
      }

      v29 = v82;
      if (v82)
      {
LABEL_92:
        *(v29 + 23) = v28;
        memset(&v97, 0, 40);
        SAToIPPORTWithInterfaceIndexToNameCallback();
        v88 = 0xAAAAAAAAAAAAAAAALL;
        *&v45 = 0xAAAAAAAAAAAAAAAALL;
        *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v86 = v45;
        v87 = v45;
        *&buf[48] = v45;
        v85 = v45;
        *&buf[16] = v45;
        *&buf[32] = v45;
        *buf = v45;
        VCSDInfoConstructWithIPPorts((v82 + 8), &v97, 0, 0, buf);
        VTP_SetConnectionFlagsForPacket(v2, v22, v82, buf);
        if ((VTP_ProcessPacketType(v2, v22, *(v22 + 20), v82) & 0x80000000) != 0)
        {
          _VTP_ReleaseVPKTPacket(v2, &v82, 9, 0);
          goto LABEL_124;
        }

        v46 = v82;
        v47 = *v82;
        if (*v82 == 2)
        {
          *(v82 + 43) = v88;
          v48 = *&buf[16];
          *(v46 + 232) = *buf;
          *(v46 + 248) = v48;
          v49 = v86;
          *(v46 + 296) = v85;
          *(v46 + 312) = v49;
          *(v46 + 328) = v87;
          v50 = *&buf[48];
          *(v46 + 264) = *&buf[32];
          *(v46 + 280) = v50;
        }

        v51 = *(v46 + 56);
        VTP_UpdateReceivedBytes(*(v46 + 54), v31, (v47 & 0xF0) != 0, v46[223], buf, v46[413], v46[408], v46[412] != 0);
        if ((v47 & 0x100) == 0 && v51 != -1)
        {
          _VTP_HealthPrint(v2, *(v82 + 70), v51, 0, 0);
        }

        goto LABEL_50;
      }

LABEL_118:
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_124;
      }

      v64 = VRTraceErrorLogLevelToCSTR();
      v65 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_124;
      }

      v66 = "recv";
      if (*(v22 + 8) == 2)
      {
        v66 = "recvfrom";
      }

      v67 = *(v22 + 20);
      *buf = 136316418;
      *&buf[4] = v64;
      *&buf[12] = 2080;
      *&buf[14] = "VTP_RecvAndProcessOnePacketFromSocket";
      *&buf[22] = 1024;
      *&buf[24] = 6098;
      *&buf[28] = 1024;
      *&buf[30] = 6098;
      *&buf[34] = 2080;
      *&buf[36] = v66;
      *&buf[44] = 1024;
      *&buf[46] = v67;
      v61 = v65;
      v62 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VTP/VTransport.m:%d: %s(%d) error. Empty buffer returned!";
      v63 = 50;
      goto LABEL_123;
    }

    _VTP_ReleaseVPKTPacket(v2, &v82, 10, 0);
    goto LABEL_103;
  }

  v4 = -2145976318;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VTPRecvProc_cold_2();
    }
  }

  return v4;
}

uint64_t VTP_Cleanup()
{
  v23 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&g_x_hvtp);
  v0 = CheckInHandleDebug();
  if (v0)
  {
    v1 = v0;
    pthread_rwlock_wrlock((v0 + 5376));
    for (i = *(v1 + 5576); i; i = *(i + 376))
    {
      if ((*(i + 416) | 2) == 6)
      {
        v3 = *(i + 528);
        if (v3)
        {
          CFRelease(v3);
        }

        *(i + 528) = 0;
      }
    }

    *(v1 + 20) = 1;
    v4 = *(v1 + 24);
    if (v4 != -1)
    {
      close(v4);
    }

    *(v1 + 24) = -1;
    pthread_rwlock_unlock((v1 + 5376));
    if (*(v1 + 32))
    {
      *v16 = 0xAAAAAAAAAAAAAAAALL;
      FigThreadJoin();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v1 + 32);
        *v16 = 136315906;
        *&v16[4] = v5;
        v17 = 2080;
        v18 = "VTP_Cleanup";
        v19 = 1024;
        v20 = 613;
        v21 = 2048;
        v22 = v7;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTPRecvProc thread[%p] end...", v16, 0x26u);
      }
    }

    pthread_rwlock_wrlock((v1 + 5376));
    while (1)
    {
      v8 = *(v1 + 5576);
      if (!v8)
      {
        break;
      }

      VTP_CloseOneVFDList(v1, *(v1 + 5576));
      *(v1 + 5576) = v8[47];
      free(v8);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 136315650;
        *&v16[4] = v9;
        v17 = 2080;
        v18 = "VTP_Cleanup";
        v19 = 1024;
        v20 = 624;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d removed all vfd from the list", v16, 0x1Cu);
      }
    }

    v11 = *(v1 + 21856);
    if (v11)
    {
      do
      {
        v12 = *(v11 + 544);
        *(v11 + 544) = 0;
        _VTP_ReleaseVPKTPacket(v1, (v1 + 21856), 18, 0);
        *(v1 + 21856) = v12;
        v11 = v12;
      }

      while (v12);
    }

    while (1)
    {
      v13 = *(v1 + 5880);
      if (!v13)
      {
        break;
      }

      *(v1 + 5880) = v13[257];
      free(v13);
    }

    pthread_rwlock_unlock((v1 + 5376));
    CheckOutHandleDebug();
    g_hVTP = 0xFFFFFFFFLL;
    pthread_mutex_unlock(&g_x_hvtp);
    pthread_mutex_destroy((v1 + 48));
    pthread_mutex_destroy((v1 + 4224));
    pthread_mutex_destroy((v1 + 4288));
    pthread_mutex_destroy((v1 + 5792));
    pthread_rwlock_destroy((v1 + 5376));
    pthread_rwlock_destroy((v1 + 5584));
    pthread_rwlock_wrlock((v1 + 21648));
    CFRelease(*(v1 + 21848));
    pthread_rwlock_unlock((v1 + 21648));
    pthread_rwlock_destroy((v1 + 21648));
    nw_release(*(v1 + 22064));
    nw_release(*(v1 + 22056));
    nw_release(*(v1 + 22072));
    _VTP_ReleaseAllocators(v1);
    v14 = *(v1 + 5856);
    if (v14)
    {
      free(v14);
    }

    free(v1);
    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Cleanup_cold_1();
      }
    }

    *__error() = 13;
    pthread_mutex_unlock(&g_x_hvtp);
    return 0xFFFFFFFFLL;
  }
}

uint64_t VTP_CloseOneVFDList(uint64_t a1, unsigned int *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = 0xAAAAAAAAAAAAAAAALL;
  VCNAT64ResolverDeregisterAll(a2);
  pthread_rwlock_rdlock((a1 + 5584));
  for (i = *(a1 + 5784); i; i = *(i + 152))
  {
    v5 = *a2;
    v6 = *(i + 128);
    if (__darwin_check_fd_set_overflow(*a2, v6, 0) && ((*&v6[(v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v5) & 1) != 0)
    {
      pthread_mutex_lock((i + 8));
      *(i + 121) = 1;
      pthread_cond_signal((i + 72));
      pthread_mutex_unlock((i + 8));
    }
  }

  pthread_rwlock_unlock((a1 + 5584));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a2;
      v10 = "UDP";
      if (a2[3] == 6)
      {
        v10 = "TCP";
      }

      *buf = 136316162;
      v22 = v7;
      v23 = 2080;
      v24 = "VTP_CloseOneVFDList";
      v25 = 1024;
      v26 = 2120;
      v27 = 1024;
      v28 = v9;
      v29 = 2080;
      v30 = v10;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d vfd=%d protocol=%s closed.", buf, 0x2Cu);
    }
  }

  VTP_ReleaseVFD(a1, *a2);
  if (a2[5] <= 0xFFFFFFFD && a2[104] != 4)
  {
    _VTP_ReleaseSocket(a1, a2);
  }

  v11 = a2[104];
  if (v11 == 4 || v11 == 6)
  {
    v13 = *(a2 + 66);
    if (v13)
    {
      CFRelease(v13);
    }

    *(a2 + 66) = 0;
    if (a2[5] <= 0xFFFFFFFD)
    {
      a2[5] = -1;
      v14 = *(a1 + 24);
      if (v14 != -1)
      {
        close(v14);
        *(a1 + 24) = -1;
      }
    }
  }

  else if (v11 == 5)
  {
    v12 = *(a2 + 53);
    if (v12)
    {
      nw_release(v12);
      *(a2 + 53) = 0;
    }
  }

  pthread_mutex_lock((a2 + 34));
  v15 = *(a2 + 16);
  v20 = v15;
  if (v15)
  {
    do
    {
      v16 = *(v15 + 544);
      *(v15 + 544) = 0;
      _VTP_ReleaseVPKTPacket(a1, &v20, 2, *a2);
      v20 = v16;
      v15 = v16;
    }

    while (v16);
  }

  *(a2 + 16) = 0;
  *(a2 + 25) = 1;
  pthread_cond_broadcast((a2 + 50));
  pthread_mutex_unlock((a2 + 34));
  v17 = *(a2 + 4);
  if (v17)
  {
    free(v17);
  }

  v18 = *(a2 + 67);
  if (v18)
  {
    nw_release(v18);
  }

  pthread_mutex_lock((a2 + 66));
  if (a2[62] >= 1)
  {
    do
    {
      pthread_cond_wait((a2 + 82), (a2 + 66));
    }

    while (a2[62] > 0);
  }

  pthread_mutex_unlock((a2 + 66));
  pthread_mutex_destroy((a2 + 34));
  pthread_cond_destroy((a2 + 50));
  pthread_mutex_destroy((a2 + 66));
  return pthread_cond_destroy((a2 + 82));
}

void _VTP_ReleaseVPKTPacket(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      _VTP_DoubleReleaseDetection(*a2, 576, a3, a4, 1);
      VCBlockBuffer_Clear(v5 + 552);
      VCMemoryPool_Free(*(a1 + 5872), v5);
      *a2 = 0;
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v7;
      v11 = 2080;
      v12 = "_VTP_ReleaseVPKTPacket";
      v13 = 1024;
      v14 = 788;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Releasing NULL packet reference", &v9, 0x1Cu);
    }
  }
}

uint64_t _VTP_DoubleReleaseDetection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = (a1 + a2);
  v6 = *(a1 + a2 + 8);
  if (v6 != a1)
  {
    if (a5)
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Packet %p got allocated again with tag=0x%X, pktAddress=0x%llX, releasePathID=%u, vfd=%d", a1, *v5, v6, a3, a4);
LABEL_7:
      v8 = v7;
      v9 = 1;
      VCTerminateProcess(v7, @"_VTP_DoubleReleaseDetection", 0);
      if (v8)
      {
        CFRelease(v8);
      }

      return v9;
    }

    return 1;
  }

  if (*(v5 + 1) == 1)
  {
    if (a5)
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Packet %p already released. tag=0x%X, pktAddress=0x%llX, releasePathID=%u, vfd=%d", a1, *v5, v6, a3, a4);
      goto LABEL_7;
    }

    return 1;
  }

  *(v5 + 1) = 1;
  *(v5 + 2) = a3;
  *v5 = a4;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    v12 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *v5;
        v14 = *(v5 + 1);
        *buf = 136316418;
        v19 = v10;
        v20 = 2080;
        v21 = "_VTP_DoubleReleaseDetection";
        v22 = 1024;
        v23 = 781;
        v24 = 2048;
        v25 = v6;
        v26 = 1024;
        v27 = v13;
        v28 = 2048;
        v29 = v14;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Releasing packet %p with tag=0x%X, pktAddress=0x%llX", buf, 0x36u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = *v5;
      v17 = *(v5 + 1);
      *buf = 136316418;
      v19 = v10;
      v20 = 2080;
      v21 = "_VTP_DoubleReleaseDetection";
      v22 = 1024;
      v23 = 781;
      v24 = 2048;
      v25 = v6;
      v26 = 1024;
      v27 = v16;
      v28 = 2048;
      v29 = v17;
      _os_log_debug_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Releasing packet %p with tag=0x%X, pktAddress=0x%llX", buf, 0x36u);
    }
  }

  return 0;
}

uint64_t VTP_SetCallback(uint64_t a1, uint64_t a2)
{
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    pthread_mutex_lock((v4 + 48));
    *(v5 + 112) = a1;
    *(v5 + 120) = a2;
    pthread_mutex_unlock((v5 + 48));
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    *__error() = 13;
    return 0xFFFFFFFFLL;
  }
}

uint64_t VTP_SetSessionID(int a1, const __CFString *a2)
{
  if ((a1 - 1024) <= 0xFFFFFC63)
  {
    v2 = __error();
    v3 = 22;
LABEL_10:
    *v2 = v3;
    return 0xFFFFFFFFLL;
  }

  v6 = CheckInHandleDebug();
  if (!v6)
  {
    v2 = __error();
    v3 = 13;
    goto LABEL_10;
  }

  v7 = v6;
  pthread_mutex_lock(v6 + 66);
  v8 = a1 - 100;
  v9 = *&v7[106].__opaque[8 * v8 + 48];
  if (v9)
  {
    CFRelease(v9);
  }

  Copy = 0;
  if (a2)
  {
    Copy = CFStringCreateCopy(0, a2);
  }

  *&v7[106].__opaque[8 * v8 + 48] = Copy;
  pthread_mutex_unlock(v7 + 66);
  CheckOutHandleDebug();
  return 0;
}

uint64_t VTP_SetDTLS(int a1, uint64_t a2)
{
  if ((a1 - 1024) > 0xFFFFFC63)
  {
    v6 = CheckInHandleDebug();
    if (v6)
    {
      v7 = v6;
      pthread_mutex_lock(v6 + 66);
      *&v7[222].__opaque[8 * (a1 - 100) + 16] = a2;
      pthread_mutex_unlock(v7 + 66);
      CheckOutHandleDebug();
      return 0;
    }

    v2 = __error();
    v3 = 13;
  }

  else
  {
    v2 = __error();
    v3 = 22;
  }

  *v2 = v3;
  return 0xFFFFFFFFLL;
}

uint64_t VTP_SocketWithRealSocket(int a1, int a2, int a3, int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = CheckInHandleDebug();
  if (v8)
  {
    v9 = v8;
    bzero(v13, 0x220uLL);
    v14 = a1;
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v10 = _VTP_SocketWithRealSocketFromFVDList(v9, v13);
    CheckOutHandleDebug();
  }

  else
  {
    VTP_SocketWithRealSocket_cold_1();
    return v12;
  }

  return v10;
}

uint64_t VTP_NWConnectionContext()
{
  if (VTP_NWConnectionContext_once != -1)
  {
    VTP_NWConnectionContext_cold_1();
  }

  return VTP_NWConnectionContext_context;
}

uint64_t VTP_NWConnectionQueue()
{
  if (VTP_NWConnectionQueue_once != -1)
  {
    VTP_NWConnectionQueue_cold_1();
  }

  return VTP_NWConnectionQueue_queue;
}

uint64_t VTP_CopyPreferredSendQueue(int a1, void *a2)
{
  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_CopyPreferredSendQueue_cold_3();
      }
    }

    v9 = __error();
    v10 = 22;
    goto LABEL_17;
  }

  v4 = CheckInHandleDebug();
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_CopyPreferredSendQueue_cold_2();
      }
    }

    v9 = __error();
    v10 = 13;
LABEL_17:
    *v9 = v10;
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  pthread_rwlock_wrlock((v4 + 5376));
  v6 = *(v5 + 5576);
  if (v6)
  {
    while (*v6 != a1)
    {
      v6 = *(v6 + 376);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    if ((*(v6 + 416) - 5) > 1)
    {
      v8 = 0;
      v7 = 0;
      *a2 = 0;
    }

    else
    {
      if (VTP_NWConnectionQueue_once != -1)
      {
        VTP_NWConnectionQueue_cold_1();
      }

      v12 = VTP_NWConnectionQueue_queue;
      *a2 = VTP_NWConnectionQueue_queue;
      dispatch_retain(v12);
      v8 = 0;
      v7 = 0;
    }
  }

  else
  {
LABEL_6:
    v7 = 0xFFFFFFFFLL;
    v8 = 1;
  }

  pthread_rwlock_unlock((v5 + 5376));
  CheckOutHandleDebug();
  if (v8)
  {
    *__error() = 9;
  }

  return v7;
}

uint64_t VTP_SocketWithNWConnection(unsigned int a1, int a2, NSObject *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    VTP_SocketWithNWConnection_cold_5();
    return *v24;
  }

  if (a2 != 17)
  {
    VTP_SocketWithNWConnection_cold_1();
    return *v24;
  }

  v5 = CheckInHandleDebug();
  if (!v5)
  {
    VTP_SocketWithNWConnection_cold_4();
    return *v24;
  }

  v6 = v5;
  v7 = malloc_type_calloc(1uLL, 0x220uLL, 0x10F20400EBBC3BCuLL);
  if (!v7)
  {
    VTP_SocketWithNWConnection_cold_3();
LABEL_23:
    CheckOutHandleDebug();
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  VFD = VTP_GetVFD(v6);
  *v8 = VFD;
  if (VFD == -1)
  {
    VTP_SocketWithNWConnection_cold_2(v8);
    goto LABEL_23;
  }

  v10 = nw_connection_copy_endpoint(a3);
  v8[1] = nw_endpoint_get_address(v10)->sa_family;
  nw_release(v10);
  v8[2] = a1;
  *(v8 + 3) = 0x100000011;
  v8[5] = -1;
  *(v8 + 24) = 0;
  v8[7] = 0;
  v8[62] = 0;
  *(v8 + 48) = 0xFFFFFFFFLL;
  pthread_rwlock_wrlock((v6 + 5376));
  nw_retain(a3);
  VCSDInfoConstructWithNWConnection(a3, v24);
  v11 = v27;
  *(v8 + 30) = v26;
  *(v8 + 31) = v11;
  *(v8 + 32) = v28;
  *(v8 + 66) = v29;
  v12 = *&v24[16];
  *(v8 + 26) = *v24;
  *(v8 + 27) = v12;
  v13 = v25;
  *(v8 + 28) = *&v24[32];
  *(v8 + 29) = v13;
  v14 = nw_connection_copy_parameters(a3);
  v15 = nw_parameters_copy_local_endpoint(v14);
  if (nw_endpoint_get_address(v15))
  {
    SAToIPPORT();
  }

  nw_release(v15);
  nw_release(v14);
  pthread_mutex_init((v8 + 34), 0);
  pthread_cond_init((v8 + 50), 0);
  pthread_mutex_init((v8 + 66), 0);
  pthread_cond_init((v8 + 82), 0);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = *v8;
      v19 = v8[5];
      *v24 = 136316162;
      *&v24[4] = v16;
      *&v24[12] = 2080;
      *&v24[14] = "VTP_SocketWithNWConnection";
      *&v24[22] = 1024;
      *&v24[24] = 1140;
      *&v24[28] = 1024;
      *&v24[30] = v18;
      *&v24[34] = 1024;
      *&v24[36] = v19;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d new vfd=%d->fd=%d, and add to list", v24, 0x28u);
    }
  }

  v20 = *(v6 + 5576);
  if (v20)
  {
    do
    {
      v21 = v20;
      v20 = *(v20 + 376);
    }

    while (v20);
    v22 = (v21 + 376);
  }

  else
  {
    v22 = (v6 + 5576);
  }

  *v22 = v8;
  pthread_rwlock_unlock((v6 + 5376));
  CheckOutHandleDebug();
  return *v8;
}

uint64_t VTP_GetVFD(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  pthread_mutex_lock(a1 + 66);
  v2 = 0;
  v3 = &a1[92].__opaque[16];
  v4 = a1;
  while ((v3[v2] & 1) != 0)
  {
    ++v2;
    v4 = (v4 + 8);
    if (v2 == 924)
    {
      pthread_mutex_unlock(a1 + 66);
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_GetVFD_cold_1();
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  v6 = *&v4[106].__opaque[48];
  if (v6)
  {
    CFRelease(v6);
  }

  *&v4[106].__opaque[48] = 0;
  *&v4[222].__opaque[16] = 0xFFFFFFFFLL;
  v3[v2] = 1;
  pthread_mutex_unlock(a1 + 66);
  return (v2 + 100);
}

uint64_t VTP_SocketWithMultiNWConnection(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CheckInHandleDebug();
  if (v2)
  {
    v3 = v2;
    v4 = malloc_type_calloc(1uLL, 0x220uLL, 0x10F20400EBBC3BCuLL);
    if (v4)
    {
      VFD = VTP_GetVFD(v3);
      *v4 = VFD;
      if (VFD == -1)
      {
        VTP_SocketWithMultiNWConnection_cold_2();
      }

      else
      {
        *(v4 + 1) = 0x1100000002;
        *(v4 + 24) = 1;
        v4[7] = 0;
        v4[62] = 0;
        *(v4 + 48) = 0xFFFFFFFFLL;
        *(v4 + 2) = 0xFFFFFFFF00000001;
        if (!a1)
        {
LABEL_7:
          pthread_rwlock_wrlock((v3 + 5376));
          v10 = *(v3 + 24);
          if (v10 != -1)
          {
            close(v10);
            *(v3 + 24) = -1;
          }

          pthread_mutex_init((v4 + 34), 0);
          pthread_cond_init((v4 + 50), 0);
          pthread_mutex_init((v4 + 66), 0);
          pthread_cond_init((v4 + 82), 0);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v13 = *v4;
              v14 = v4[5];
              *v19 = 136316162;
              *&v19[4] = v11;
              *&v19[12] = 2080;
              *&v19[14] = "VTP_SocketWithMultiNWConnection";
              *&v19[22] = 1024;
              *&v19[24] = 1205;
              *&v19[28] = 1024;
              *&v19[30] = v13;
              *&v19[34] = 1024;
              *&v19[36] = v14;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d new vfd=%d->fd=%d, and add to list", v19, 0x28u);
            }
          }

          v15 = *(v3 + 5576);
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *(v15 + 376);
            }

            while (v15);
            v17 = (v16 + 376);
          }

          else
          {
            v17 = (v3 + 5576);
          }

          *v17 = v4;
          pthread_rwlock_unlock((v3 + 5376));
          *__error() = 0;
          goto LABEL_17;
        }

        v6 = [+[VCDatagramChannelManager sharedInstance](VCDatagramChannelManager datagramChannelWithChannelToken:"datagramChannelWithChannelToken:", a1];
        if (v6)
        {
          VCSDInfoConstructWithDatagramChannelMultiLink(v6, v19);
          v7 = v22;
          *(v4 + 30) = v21;
          *(v4 + 31) = v7;
          *(v4 + 32) = v23;
          *(v4 + 66) = v24;
          v8 = *&v19[16];
          *(v4 + 26) = *v19;
          *(v4 + 27) = v8;
          v9 = v20;
          *(v4 + 28) = *&v19[32];
          *(v4 + 29) = v9;
          goto LABEL_7;
        }

        VTP_SocketWithMultiNWConnection_cold_1();
      }
    }

    else
    {
      *__error() = 12;
    }

LABEL_17:
    CheckOutHandleDebug();
    goto LABEL_18;
  }

  VTP_SocketWithMultiNWConnection_cold_3(v19);
  v4 = *v19;
LABEL_18:
  if (*__error())
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
      VTP_SocketWithMultiNWConnection_cold_4();
      if (!v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    free(v4);
    return 0xFFFFFFFFLL;
  }

  return *v4;
}

uint64_t VTP_DuplicateVFD(int a1)
{
  v12[68] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x24010000000;
  bzero(v12, 0x220uLL);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __VTP_DuplicateVFD_block_invoke;
  v7[3] = &unk_1E85F7648;
  v7[4] = &v8;
  v2 = CheckInHandleDebug();
  v3 = v2;
  if (v2)
  {
    VTP_ProcessVFD(v2, a1, 0, v7);
    if (*(v9 + 13) == -1)
    {
      *__error() = 9;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_DuplicateVFD_cold_1();
        }
      }

      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = _VTP_SocketWithRealSocketFromFVDList(v3, (v9 + 4));
      pthread_rwlock_wrlock((v3 + 5376));
      v5 = v3 + 4 * *(v9 + 13);
      --*(v5 + 128);
      pthread_rwlock_unlock((v3 + 5376));
    }

    CheckOutHandleDebug();
  }

  else
  {
    *__error() = 13;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_DuplicateVFD_cold_2();
      }
    }

    v4 = 0xFFFFFFFFLL;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_1DB838878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t VTP_ProcessVFD(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v7 = (a1 + 5376);
  if (a3)
  {
    pthread_rwlock_rdlock(v7);
  }

  else
  {
    pthread_rwlock_wrlock(v7);
  }

  v8 = *(a1 + 5576);
  if (v8)
  {
    while (*v8 != a2)
    {
      v8 = *(v8 + 376);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    (*(a4 + 16))(a4, a1);
  }

LABEL_9:

  return pthread_rwlock_unlock((a1 + 5376));
}

uint64_t _VTP_SocketWithRealSocketFromFVDList(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    _VTP_SocketWithRealSocketFromFVDList_cold_6();
    return *buf;
  }

  v4 = malloc_type_calloc(1uLL, 0x220uLL, 0x10F20400EBBC3BCuLL);
  if (!v4)
  {
    _VTP_SocketWithRealSocketFromFVDList_cold_5();
    return *buf;
  }

  v5 = v4;
  VFD = VTP_GetVFD(a1);
  *v5 = VFD;
  if (VFD == -1)
  {
    _VTP_SocketWithRealSocketFromFVDList_cold_4();
    goto LABEL_27;
  }

  *(v5 + 1) = *(a2 + 4);
  v5[3] = *(a2 + 12);
  *(v5 + 24) = 0;
  v5[7] = 0;
  v5[62] = 0;
  *(v5 + 48) = 0xFFFFFFFFLL;
  *(v5 + 2) = 0xFFFFFFFF00000001;
  pthread_rwlock_wrlock((a1 + 5376));
  if (*(a2 + 12) == 17)
  {
    v7 = *(a2 + 20);
    if (v7 == -1)
    {
      v10 = socket(*(a2 + 4), *(a2 + 8), 17);
      v5[5] = v10;
      if (v10 == -1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VTP_SocketWithRealSocketFromFVDList_cold_3();
          }
        }

        pthread_rwlock_unlock((a1 + 5376));
        VTP_ReleaseVFD(a1, *v5);
        goto LABEL_27;
      }

      if (v10 >= 1025)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VTP_SocketWithRealSocketFromFVDList_cold_2();
          }
        }

        close(v5[5]);
        pthread_rwlock_unlock((a1 + 5376));
        VTP_ReleaseVFD(a1, *v5);
        v8 = __error();
        v9 = 24;
        goto LABEL_17;
      }

      ++*(a1 + 128 + 4 * v10);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v20 = v5[5];
          v21 = *(a1 + 128 + 4 * v20);
          *buf = 136316162;
          *&buf[4] = v18;
          *&buf[12] = 2080;
          *&buf[14] = "_VTP_SocketWithRealSocketFromFVDList";
          *&buf[22] = 1024;
          *&buf[24] = 1273;
          *&buf[28] = 1024;
          *&buf[30] = v20;
          *&buf[34] = 1024;
          *&buf[36] = v21;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d fd=%d increase. RefCount=%d", buf, 0x28u);
        }
      }
    }

    else
    {
      if (v7 >= 1025)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VTP_SocketWithRealSocketFromFVDList_cold_1();
          }
        }

        pthread_rwlock_unlock((a1 + 5376));
        VTP_ReleaseVFD(a1, *v5);
        v8 = __error();
        v9 = 9;
LABEL_17:
        *v8 = v9;
LABEL_27:
        free(v5);
        return 0xFFFFFFFFLL;
      }

      v5[5] = v7;
      *(v5 + 24) = 1;
      ++*(a1 + 128 + 4 * v7);
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v13 = v5[5];
          v14 = *(a1 + 128 + 4 * v13);
          *buf = 136316162;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = "_VTP_SocketWithRealSocketFromFVDList";
          *&buf[22] = 1024;
          *&buf[24] = 1284;
          *&buf[28] = 1024;
          *&buf[30] = v13;
          *&buf[34] = 1024;
          *&buf[36] = v14;
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d fd=%d increase. RefCount=%d", buf, 0x28u);
        }
      }

      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v47 = v15;
      v48 = v15;
      v45 = v15;
      v46 = v15;
      *&buf[32] = v15;
      v44 = v15;
      *buf = v15;
      *&buf[16] = v15;
      v42 = 128;
      getsockname(v5[5], buf, &v42);
      SAToIPPORT();
      v16 = *(a1 + 24);
      if (v16 != -1)
      {
        close(v16);
        *(a1 + 24) = -1;
      }
    }
  }

  v41 = 1;
  setsockopt(v5[5], 0xFFFF, 4130, &v41, 4u);
  v40 = 1;
  v22 = v5[5];
  if (*(a2 + 4) == 2)
  {
    setsockopt(v22, 0, 7, &v40, 4u);
    v23 = v5[5];
    v24 = 0;
    v25 = 20;
  }

  else
  {
    setsockopt(v22, 41, 27, &v40, 4u);
    v23 = v5[5];
    v24 = 41;
    v25 = 61;
  }

  setsockopt(v23, v24, v25, &v40, 4u);
  pthread_mutex_init((v5 + 34), 0);
  pthread_cond_init((v5 + 50), 0);
  pthread_mutex_init((v5 + 66), 0);
  pthread_cond_init((v5 + 82), 0);
  v26 = *(a2 + 464);
  v28 = *(a2 + 416);
  v27 = *(a2 + 432);
  *(v5 + 28) = *(a2 + 448);
  *(v5 + 29) = v26;
  *(v5 + 26) = v28;
  *(v5 + 27) = v27;
  v30 = *(a2 + 496);
  v29 = *(a2 + 512);
  v31 = *(a2 + 480);
  *(v5 + 66) = *(a2 + 528);
  *(v5 + 31) = v30;
  *(v5 + 32) = v29;
  *(v5 + 30) = v31;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v32 = VRTraceErrorLogLevelToCSTR();
    v33 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v34 = *v5;
      v35 = v5[5];
      *buf = 136316162;
      *&buf[4] = v32;
      *&buf[12] = 2080;
      *&buf[14] = "_VTP_SocketWithRealSocketFromFVDList";
      *&buf[22] = 1024;
      *&buf[24] = 1328;
      *&buf[28] = 1024;
      *&buf[30] = v34;
      *&buf[34] = 1024;
      *&buf[36] = v35;
      _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d new vfd=%d->fd=%d, and add to list", buf, 0x28u);
    }
  }

  v36 = *(a1 + 5576);
  if (v36)
  {
    do
    {
      v37 = v36;
      v36 = *(v36 + 376);
    }

    while (v36);
    v38 = (v37 + 376);
  }

  else
  {
    v38 = (a1 + 5576);
  }

  *v38 = v5;
  v17 = *v5;
  pthread_rwlock_unlock((a1 + 5376));
  return v17;
}

uint64_t VTP_SocketForIDSWithFileDescriptor(int a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SocketForIDSWithFileDescriptor_cold_4();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }

  if (a1 >= 1025)
  {
    VTP_SocketForIDSWithFileDescriptor_cold_2();
    v6 = 0;
LABEL_29:
    if (VRTraceGetErrorLogLevelForModule() >= 3 && (VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
      VTP_SocketForIDSWithFileDescriptor_cold_3();
      if (!v6)
      {
        goto LABEL_33;
      }
    }

    else if (!v6)
    {
LABEL_33:
      CheckOutHandleDebug();
      return 0xFFFFFFFFLL;
    }

    free(v6);
    goto LABEL_33;
  }

  v5 = v4;
  v6 = malloc_type_calloc(1uLL, 0x220uLL, 0x10F20400EBBC3BCuLL);
  if (!v6)
  {
    *__error() = 12;
    goto LABEL_29;
  }

  VFD = VTP_GetVFD(v5);
  *v6 = VFD;
  if (VFD == -1)
  {
    VTP_SocketForIDSWithFileDescriptor_cold_1();
    v6 = *v24;
    goto LABEL_29;
  }

  v6[2] = 2;
  *(v6 + 24) = 1;
  v6[7] = 0;
  v6[62] = 0;
  *(v6 + 48) = 0xFFFFFFFFLL;
  v6[4] = 1;
  v6[5] = a1;
  if (a2)
  {
    VCSDInfoConstructWithDatagramChannel([[VCDatagramChannelManager datagramChannelWithChannelToken:"datagramChannelWithChannelToken:" sharedInstance:0];
    v8 = v27;
    *(v6 + 30) = v26;
    *(v6 + 31) = v8;
    *(v6 + 32) = v28;
    *(v6 + 66) = v29;
    v9 = *&v24[16];
    *(v6 + 26) = *v24;
    *(v6 + 27) = v9;
    v10 = v25;
    *(v6 + 28) = *&v24[32];
    *(v6 + 29) = v10;
  }

  pthread_rwlock_wrlock((v5 + 5376));
  v11 = *(v5 + 24);
  if (v11 != -1)
  {
    close(v11);
    *(v5 + 24) = -1;
  }

  pthread_mutex_init((v6 + 34), 0);
  pthread_cond_init((v6 + 50), 0);
  pthread_mutex_init((v6 + 66), 0);
  pthread_cond_init((v6 + 82), 0);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *v6;
      v15 = v6[5];
      *v24 = 136316162;
      *&v24[4] = v12;
      *&v24[12] = 2080;
      *&v24[14] = "VTP_SocketForIDSWithFileDescriptor";
      *&v24[22] = 1024;
      *&v24[24] = 1466;
      *&v24[28] = 1024;
      *&v24[30] = v14;
      *&v24[34] = 1024;
      *&v24[36] = v15;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d new vfd=%d->fd=%d, and add to list", v24, 0x28u);
    }
  }

  v16 = *(v5 + 5576);
  if (v16)
  {
    do
    {
      v17 = v16;
      v16 = *(v16 + 376);
    }

    while (v16);
    v18 = (v17 + 376);
  }

  else
  {
    v18 = (v5 + 5576);
  }

  *v18 = v6;
  if (a1 <= 0xFFFFFFFD)
  {
    *(v5 + 40) = 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v5 + 40);
        v23 = *v6;
        *v24 = 136316418;
        *&v24[4] = v20;
        *&v24[12] = 2080;
        *&v24[14] = "VTP_SocketForIDSWithFileDescriptor";
        *&v24[22] = 1024;
        *&v24[24] = 1480;
        *&v24[28] = 1024;
        *&v24[30] = v22;
        *&v24[34] = 1024;
        *&v24[36] = v23;
        *&v24[40] = 1024;
        *&v24[42] = a1;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP set shouldLogFDsAtTimeout=%d with vfd=%d, fileDescriptor=%d", v24, 0x2Eu);
      }
    }
  }

  pthread_rwlock_unlock((v5 + 5376));
  CheckOutHandleDebug();
  return *v6;
}

uint64_t VTP_SetPayloadList(int a1, int a2, const void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = CheckInHandleDebug();
    if (v6)
    {
      v7 = v6;
      pthread_rwlock_wrlock((v6 + 5376));
      v8 = *(v7 + 5576);
      if (!v8)
      {
LABEL_6:
        pthread_rwlock_unlock((v7 + 5376));
        CheckOutHandleDebug();
        v9 = __error();
        result = 0;
        *v9 = 9;
        return result;
      }

      while (*v8 != a1)
      {
        v8 = *(v8 + 47);
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      *__s = 0u;
      v34 = 0u;
      v11 = malloc_type_calloc(v8[10] + a2, 4uLL, 0x100004052888210uLL);
      if (v11)
      {
        v12 = v11;
        v13 = v8[10];
        if (v13)
        {
          v14 = *(v8 + 4);
          if (v14)
          {
            memcpy(v11, v14, 4 * v13);
            free(*(v8 + 4));
            v13 = v8[10];
          }
        }

        memcpy(&v12[v13], a3, 4 * a2);
        v15 = v8[10] + a2;
        v8[10] = v15;
        *(v8 + 4) = v12;
        if (v15 >= 1)
        {
          do
          {
            if (strlen(__s) > 0x77)
            {
              break;
            }

            v16 = *v12++;
            __sprintf_chk(__s, 0, 0x80uLL, "%s %i,", __s, v16);
          }

          while (v12 < *(v8 + 4) + 4 * v8[10]);
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v19 = *v8;
            v20 = v8[10];
            *buf = 136316418;
            v22 = v17;
            v23 = 2080;
            v24 = "VTP_SetPayloadList";
            v25 = 1024;
            v26 = 1541;
            v27 = 1024;
            v28 = v19;
            v29 = 1024;
            v30 = v20;
            v31 = 2080;
            v32 = __s;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP_SetPayloadList for vfd=%d: nPlList=%i payloads=%s", buf, 0x32u);
          }
        }

        pthread_rwlock_unlock((v7 + 5376));
        CheckOutHandleDebug();
        return 0;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VTP_SetPayloadList_cold_2();
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          VTP_SetPayloadList_cold_1();
        }
      }

      pthread_rwlock_unlock((v7 + 5376));
      *__error() = 12;
      CheckOutHandleDebug();
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_SetPayloadList_cold_3();
        }
      }

      *__error() = 13;
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t VTP_SetSocketMode(int a1, int a2)
{
  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetSocketMode_cold_2();
      }
    }

    v9 = __error();
    v10 = 22;
    goto LABEL_15;
  }

  v4 = CheckInHandleDebug();
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetSocketMode_cold_1();
      }
    }

    v9 = __error();
    v10 = 13;
LABEL_15:
    *v9 = v10;
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  pthread_rwlock_wrlock((v4 + 5376));
  v6 = *(v5 + 5576);
  if (v6)
  {
    while (*v6 != a1)
    {
      v6 = *(v6 + 376);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    v7 = 0;
    *(v6 + 16) = a2;
  }

  else
  {
LABEL_6:
    v7 = 0xFFFFFFFFLL;
    v8 = 1;
  }

  pthread_rwlock_unlock((v5 + 5376));
  CheckOutHandleDebug();
  if (v8)
  {
    *__error() = 9;
  }

  return v7;
}

uint64_t VTP_SetPktType(int a1, int a2)
{
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    pthread_rwlock_wrlock((v4 + 5376));
    v6 = *(v5 + 5576);
    if (v6)
    {
      while (*v6 != a1)
      {
        v6 = *(v6 + 376);
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      v7 = 0;
      *(v6 + 28) = a2;
    }

    else
    {
LABEL_5:
      v7 = 0xFFFFFFFFLL;
      v8 = 1;
    }

    pthread_rwlock_unlock((v5 + 5376));
    CheckOutHandleDebug();
    if (v8)
    {
      *__error() = 9;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetPktType_cold_1();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }

  return v7;
}

uint64_t VTP_AddPktType(int a1, int a2)
{
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    pthread_rwlock_wrlock((v4 + 5376));
    v6 = *(v5 + 5576);
    if (v6)
    {
      while (*v6 != a1)
      {
        v6 = *(v6 + 376);
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      v7 = 0;
      *(v6 + 28) |= a2;
    }

    else
    {
LABEL_5:
      v7 = 0xFFFFFFFFLL;
      v8 = 1;
    }

    pthread_rwlock_unlock((v5 + 5376));
    CheckOutHandleDebug();
    if (v8)
    {
      *__error() = 9;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_AddPktType_cold_1();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }

  return v7;
}

uint64_t VTP_RemovePktType(int a1, int a2)
{
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    pthread_rwlock_wrlock((v4 + 5376));
    v6 = *(v5 + 5576);
    if (v6)
    {
      while (*v6 != a1)
      {
        v6 = *(v6 + 376);
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      v7 = 0;
      *(v6 + 28) &= ~a2;
    }

    else
    {
LABEL_5:
      v7 = 0xFFFFFFFFLL;
      v8 = 1;
    }

    pthread_rwlock_unlock((v5 + 5376));
    CheckOutHandleDebug();
    if (v8)
    {
      *__error() = 9;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_RemovePktType_cold_1();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }

  return v7;
}

uint64_t VTP_Getsockname(int a1, sockaddr *a2, socklen_t *a3)
{
  v6 = CheckInHandleDebug();
  if (v6)
  {
    v7 = v6;
    pthread_rwlock_rdlock((v6 + 5376));
    v8 = *(v7 + 5576);
    if (v8)
    {
      while (*v8 != a1)
      {
        v8 = *(v8 + 376);
        if (!v8)
        {
          goto LABEL_5;
        }
      }

      if (*(v8 + 416) == 5 && (v11 = *(v8 + 424)) != 0)
      {
        v12 = nw_connection_copy_endpoint(v11);
        address = nw_endpoint_get_address(v12);
        if (address)
        {
          v14 = address;
          memcpy(a2, address, address->sa_len);
          v9 = 0;
          *a3 = v14->sa_len;
        }

        else
        {
          v9 = 0xFFFFFFFFLL;
        }

        nw_release(v12);
      }

      else
      {
        v9 = getsockname(*(v8 + 20), a2, a3);
      }

      v10 = 0;
    }

    else
    {
LABEL_5:
      v9 = 0xFFFFFFFFLL;
      v10 = 1;
    }

    pthread_rwlock_unlock((v7 + 5376));
    CheckOutHandleDebug();
    if (v10)
    {
      *__error() = 9;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Getsockname_cold_1();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }

  return v9;
}

uint64_t _VTP_SetSSRC(int a1, int a2, uint64_t a3)
{
  v6 = CheckInHandleDebug();
  if (v6)
  {
    v7 = v6;
    pthread_rwlock_wrlock((v6 + 5376));
    v8 = *(v7 + 5576);
    if (v8)
    {
      while (*v8 != a1 || (*(v8 + 28) & 0xF0) == 0)
      {
        v8 = *(v8 + 376);
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      v9 = 0;
      if (a3)
      {
        a3 = 0;
        *(v8 + 72) = a2;
        *(v8 + 27) = 1;
      }

      else
      {
        *(v8 + 44) = a2;
        *(v8 + 26) = 1;
      }
    }

    else
    {
LABEL_6:
      a3 = 0xFFFFFFFFLL;
      v9 = 1;
    }

    pthread_rwlock_unlock((v7 + 5376));
    CheckOutHandleDebug();
    if (v9)
    {
      *__error() = 9;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VTP_SetSSRC_cold_1();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }

  return a3;
}

uint64_t VTP_ShouldAddRemoteSSRCToList(int a1, uint64_t a2, int a3, _DWORD *a4)
{
  v6 = 0;
  v7 = 0;
  v25 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v8 = *(a2 + 44 + 4 * v6);
    if (!v8)
    {
      if ((v7 & 1) == 0)
      {
        *a4 = v6;
      }

      v7 = 1;
      goto LABEL_8;
    }

    if (v8 == a3)
    {
      break;
    }

LABEL_8:
    if (++v6 == 7)
    {
      return v7 & 1;
    }
  }

  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (ErrorLogLevelForModule >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136316418;
      v14 = v10;
      v15 = 2080;
      v16 = "VTP_ShouldAddRemoteSSRCToList";
      v17 = 1024;
      v18 = 1761;
      v19 = 1024;
      v20 = a3;
      v21 = 1024;
      v22 = v6;
      v23 = 1024;
      v24 = a1;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP_ManageRemoteSSRCList remoteSSRC=%u is already part of the list on slot=%d at vfd=%d", &v13, 0x2Eu);
    }
  }

  v7 = 0;
  return v7 & 1;
}

BOOL VTP_UpdateRemoteSSRCList(int a1, int a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = CheckInHandleDebug();
  v7 = v6;
  if (!v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_UpdateRemoteSSRCList_cold_1();
      }
    }

    v14 = __error();
    v15 = 13;
    goto LABEL_23;
  }

  pthread_rwlock_wrlock((v6 + 5376));
  v8 = *(v7 + 5576);
  if (!v8)
  {
LABEL_22:
    pthread_rwlock_unlock((v7 + 5376));
    CheckOutHandleDebug();
    v14 = __error();
    v15 = 9;
LABEL_23:
    *v14 = v15;
    return v7 != 0;
  }

  while (1)
  {
    if (*v8 != a1 || (*(v8 + 28) & 0xF0) == 0)
    {
      goto LABEL_7;
    }

    v19 = 0;
    if (!a3)
    {
      break;
    }

    if (VTP_ShouldAddRemoteSSRCToList(a1, v8, a2, &v19))
    {
      v17 = v19;
      *(v8 + 4 * v19 + 44) = a2;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v21 = v18;
          v22 = 2080;
          v23 = "VTP_UpdateRemoteSSRCList";
          v24 = 1024;
          v25 = 1801;
          v26 = 1024;
          v27 = a2;
          v28 = 1024;
          v29 = v17;
          v30 = 1024;
          v31 = a1;
          v13 = " [%s] %s:%d VTP_ManageRemoteSSRCList Successfully added remoteSSRC=%u to slot=%d for vfd=%d";
          goto LABEL_16;
        }
      }

      goto LABEL_17;
    }

LABEL_7:
    v8 = *(v8 + 376);
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (*(v8 + 44) != a2)
  {
    v9 = 0;
    while (v9 != 6)
    {
      v10 = *(v8 + 48 + 4 * v9++);
      if (v10 == a2)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_7;
  }

  LODWORD(v9) = 0;
LABEL_13:
  *(v8 + 44 + 4 * v9) = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v21 = v11;
      v22 = 2080;
      v23 = "VTP_UpdateRemoteSSRCList";
      v24 = 1024;
      v25 = 1805;
      v26 = 1024;
      v27 = a2;
      v28 = 1024;
      v29 = v9;
      v30 = 1024;
      v31 = a1;
      v13 = " [%s] %s:%d VTP_ManageRemoteSSRCList Successfully removed remoteSSRC=%u from slot=%d for vfd=%d";
LABEL_16:
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x2Eu);
    }
  }

LABEL_17:
  pthread_rwlock_unlock((v7 + 5376));
  CheckOutHandleDebug();
  return v7 != 0;
}

uint64_t VTP_SetTransportSessionID(int a1, int a2)
{
  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetTransportSessionID_cold_2();
      }
    }

    v9 = __error();
    v10 = 22;
    goto LABEL_15;
  }

  v4 = CheckInHandleDebug();
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetTransportSessionID_cold_1();
      }
    }

    v9 = __error();
    v10 = 13;
LABEL_15:
    *v9 = v10;
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  pthread_rwlock_wrlock((v4 + 5376));
  v6 = *(v5 + 5576);
  if (v6)
  {
    while (*v6 != a1)
    {
      v6 = *(v6 + 376);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    v7 = 0;
    *(v6 + 80) = a2;
  }

  else
  {
LABEL_6:
    v7 = 0xFFFFFFFFLL;
    v8 = 1;
  }

  pthread_rwlock_unlock((v5 + 5376));
  CheckOutHandleDebug();
  if (v8)
  {
    *__error() = 9;
  }

  return v7;
}

uint64_t VTP_SetDSCPTag(int a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!v4)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetDSCPTag_cold_1();
      }
    }

    v9 = 0xFFFFFFFFLL;
    v11 = 13;
    goto LABEL_20;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315906;
      v16 = v6;
      v17 = 2080;
      v18 = "VTP_SetDSCPTag";
      v19 = 1024;
      v20 = 1874;
      v21 = 1024;
      v22 = a2;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Set dscp value=%d", &v15, 0x22u);
    }
  }

  pthread_rwlock_wrlock((v4 + 5376));
  v8 = *(v4 + 5576);
  if (v8)
  {
    while (*v8 != a1)
    {
      v8 = *(v8 + 376);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    v12 = *(v8 + 536);
    if (v12)
    {
      nw_release(v12);
    }

    v13 = MEMORY[0x1E128C430]();
    *(v8 + 536) = v13;
    if (v13)
    {
      nw_ip_metadata_set_dscp_value();
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v10 = 0;
      *__error() = 12;
      v9 = 0xFFFFFFFFLL;
    }
  }

  else
  {
LABEL_8:
    v9 = 0xFFFFFFFFLL;
    v10 = 1;
  }

  pthread_rwlock_unlock((v4 + 5376));
  CheckOutHandleDebug();
  if (v10)
  {
    v11 = 9;
LABEL_20:
    *__error() = v11;
  }

  return v9;
}

uint64_t _VTP_GetNWContentMetaData(int a1, void *a2)
{
  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VTP_GetNWContentMetaData_cold_2();
      }
    }

    v9 = __error();
    v10 = 22;
    goto LABEL_15;
  }

  v4 = CheckInHandleDebug();
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VTP_GetNWContentMetaData_cold_1();
      }
    }

    v9 = __error();
    v10 = 13;
LABEL_15:
    *v9 = v10;
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  pthread_rwlock_rdlock((v4 + 5376));
  v6 = *(v5 + 5576);
  if (v6)
  {
    while (*v6 != a1)
    {
      v6 = *(v6 + 376);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    v7 = 0;
    *a2 = *(v6 + 536);
  }

  else
  {
LABEL_6:
    v7 = 0xFFFFFFFFLL;
    v8 = 1;
  }

  pthread_rwlock_unlock((v5 + 5376));
  CheckOutHandleDebug();
  if (v8)
  {
    *__error() = 9;
  }

  return v7;
}

uint64_t VTP_GetTransportSessionID(int a1, _DWORD *a2)
{
  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_GetTransportSessionID_cold_2();
      }
    }

    v9 = __error();
    v10 = 22;
    goto LABEL_15;
  }

  v4 = CheckInHandleDebug();
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_GetTransportSessionID_cold_1();
      }
    }

    v9 = __error();
    v10 = 13;
LABEL_15:
    *v9 = v10;
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  pthread_rwlock_rdlock((v4 + 5376));
  v6 = *(v5 + 5576);
  if (v6)
  {
    while (*v6 != a1)
    {
      v6 = *(v6 + 376);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    v7 = 0;
    *a2 = *(v6 + 80);
  }

  else
  {
LABEL_6:
    v7 = 0xFFFFFFFFLL;
    v8 = 1;
  }

  pthread_rwlock_unlock((v5 + 5376));
  CheckOutHandleDebug();
  if (v8)
  {
    *__error() = 9;
  }

  return v7;
}

uint64_t VTP_Setsockopt(int a1, int a2, int a3, const void *a4, socklen_t a5)
{
  v10 = CheckInHandleDebug();
  if (v10)
  {
    v11 = v10;
    pthread_rwlock_wrlock((v10 + 5376));
    v12 = *(v11 + 5576);
    if (v12)
    {
      while (*v12 != a1)
      {
        v12 = *(v12 + 376);
        if (!v12)
        {
          goto LABEL_5;
        }
      }

      if (a2 == 258 && a3 == 1 || *(v12 + 416) == 5 && *(v12 + 424))
      {
        v14 = 0;
        v13 = 0;
      }

      else
      {
        v13 = setsockopt(*(v12 + 20), a2, a3, a4, a5);
        v14 = 0;
      }
    }

    else
    {
LABEL_5:
      v13 = 0xFFFFFFFFLL;
      v14 = 1;
    }

    pthread_rwlock_unlock((v11 + 5376));
    CheckOutHandleDebug();
    if (v14)
    {
      *__error() = 9;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Setsockopt_cold_1();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }

  return v13;
}

uint64_t VTP_SetSourceDestinationWithToken(int a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetSourceDestinationWithToken_cold_1();
      }
    }

    v7 = __error();
    v8 = 13;
    goto LABEL_10;
  }

  v5 = v4;
  pthread_rwlock_rdlock((v4 + 5376));
  v6 = *(v5 + 5576);
  if (!v6)
  {
LABEL_5:
    pthread_rwlock_unlock((v5 + 5376));
    CheckOutHandleDebug();
    v7 = __error();
    v8 = 9;
LABEL_10:
    *v7 = v8;
    return 0xFFFFFFFFLL;
  }

  while (*v6 != a1)
  {
    v6 = *(v6 + 376);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v10 = [+[VCDatagramChannelManager sharedInstance](VCDatagramChannelManager datagramChannelWithChannelToken:"datagramChannelWithChannelToken:", a2];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = *(v6 + 528);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = v6 + 416;
  if (isKindOfClass)
  {
    VCSDInfoConstructWithDatagramChannelMultiLink(v10, v17);
  }

  else
  {
    VCSDInfoConstructWithDatagramChannel(v10, 0, 0, 0, v17);
  }

  v14 = v17[5];
  *(v13 + 64) = v17[4];
  *(v13 + 80) = v14;
  *(v13 + 96) = v17[6];
  *(v13 + 112) = v18;
  v15 = v17[1];
  *v13 = v17[0];
  *(v13 + 16) = v15;
  v16 = v17[3];
  *(v13 + 32) = v17[2];
  *(v13 + 48) = v16;
  pthread_rwlock_unlock((v5 + 5376));
  CheckOutHandleDebug();
  return 0;
}

uint64_t VTP_SetSourceDestinationWithIPPort(int a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetSourceDestinationWithIPPort_cold_1();
      }
    }

    v5 = __error();
    v6 = 13;
    goto LABEL_10;
  }

  v3 = v2;
  pthread_rwlock_rdlock((v2 + 5376));
  v4 = *(v3 + 5576);
  if (!v4)
  {
LABEL_5:
    pthread_rwlock_unlock((v3 + 5376));
    CheckOutHandleDebug();
    v5 = __error();
    v6 = 9;
LABEL_10:
    *v5 = v6;
    return 0xFFFFFFFFLL;
  }

  while (*v4 != a1)
  {
    v4 = *(v4 + 376);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if ((*(v4 + 416) - 5) > 1 || !*(v4 + 424))
  {
    v15 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14[0] = v8;
    v14[1] = v8;
    SAToIPPORT();
    VCSDInfoConstructWithSocket(*(v4 + 20), v14, v12);
    v9 = v12[5];
    *(v4 + 480) = v12[4];
    *(v4 + 496) = v9;
    *(v4 + 512) = v12[6];
    *(v4 + 528) = v13;
    v10 = v12[1];
    *(v4 + 416) = v12[0];
    *(v4 + 432) = v10;
    v11 = v12[3];
    *(v4 + 448) = v12[2];
    *(v4 + 464) = v11;
  }

  pthread_rwlock_unlock((v3 + 5376));
  CheckOutHandleDebug();
  return 0;
}

uint64_t VTP_Close(int a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Close_cold_1();
      }
    }

    v8 = 0xFFFFFFFFLL;
    v9 = 13;
    goto LABEL_19;
  }

  v3 = v2;
  pthread_rwlock_wrlock((v2 + 5376));
  v4 = *(v3 + 5576);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (*v4 != a1)
  {
    while (1)
    {
      v6 = v4;
      v4 = *(v4 + 376);
      if (!v4)
      {
        break;
      }

      if (*v4 == a1)
      {
        v5 = (v6 + 376);
        goto LABEL_8;
      }
    }

LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  v5 = (v3 + 5576);
LABEL_8:
  VTP_CloseOneVFDList(v3, v4);
  *v5 = *(v4 + 376);
  free(v4);
  v7 = 0;
LABEL_14:
  pthread_rwlock_unlock((v3 + 5376));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315906;
      v14 = v10;
      v15 = 2080;
      v16 = "VTP_Close";
      v17 = 1024;
      v18 = 2206;
      v19 = 1024;
      v20 = a1;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d removed vfd (%d) from the list", &v13, 0x22u);
    }
  }

  CheckOutHandleDebug();
  v8 = 0;
  if (v7)
  {
    v9 = 9;
LABEL_19:
    *__error() = v9;
  }

  return v8;
}

uint64_t VTP_Bind(int a1, uint64_t a2, socklen_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  *&v51[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = v6;
  *v51 = v6;
  v7 = CheckInHandleDebug();
  if (!v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Bind_cold_2();
      }
    }

    v10 = 0xFFFFFFFFLL;
    v12 = 13;
    goto LABEL_18;
  }

  v8 = v7;
  pthread_rwlock_wrlock((v7 + 5376));
  v9 = *(v8 + 5576);
  if (!v9)
  {
LABEL_5:
    v10 = 0xFFFFFFFFLL;
    v11 = 1;
    goto LABEL_16;
  }

  while (*v9 != a1)
  {
    v9 = *(v9 + 376);
    if (!v9)
    {
      goto LABEL_5;
    }
  }

  if (*(v9 + 20) == -1)
  {
    v13 = __error();
    v11 = 0;
    v14 = 9;
    goto LABEL_14;
  }

  if (*(v9 + 24) == 1)
  {
    v13 = __error();
    v11 = 0;
    v14 = 22;
LABEL_14:
    *v13 = v14;
LABEL_15:
    v10 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  SAToIPPORT();
  v16 = *&v51[20];
  if (*(v9 + 16) == 2)
  {
    v17 = *(v8 + 5576);
    if (v17)
    {
      v18 = 0;
      while (1)
      {
        if (v9 != v17 && *(v9 + 4) == *(v17 + 4) && *(v9 + 8) == *(v17 + 8) && *(v9 + 12) == *(v17 + 12) && *(v17 + 16) == 2 && (v50 & 1) == (*(v17 + 84) & 1))
        {
          if (v50)
          {
            if (*&v51[4] == *(v17 + 104) && *&v51[12] == *(v17 + 112))
            {
LABEL_37:
              if (!v18)
              {
                v18 = v17;
              }

              if (*&v51[20] == *(v17 + 120) && *(v17 + 24))
              {
                _VTP_ReleaseSocket(v8, v9);
                v37 = *(v17 + 20);
                *(v9 + 20) = v37;
                *(v9 + 24) = 1;
                ++*(v8 + 128 + 4 * v37);
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v38 = VRTraceErrorLogLevelToCSTR();
                  v39 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                  {
                    v40 = *(v9 + 20);
                    v41 = *(v8 + 128 + 4 * v40);
                    *buf = 136316162;
                    *&buf[4] = v38;
                    *&buf[12] = 2080;
                    *&buf[14] = "VTP_Bind";
                    *&buf[22] = 1024;
                    *&buf[24] = 2262;
                    *&buf[28] = 1024;
                    *&buf[30] = v40;
                    *&buf[34] = 1024;
                    *&buf[36] = v41;
                    _os_log_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d fd[%d] increase. RefCount[%d]", buf, 0x28u);
                  }
                }

                v11 = 0;
                v10 = 0;
                v42 = *v51;
                *(v9 + 84) = v50;
                *(v9 + 100) = v42;
                *(v9 + 116) = *&v51[16];
                goto LABEL_16;
              }
            }
          }

          else if (*&v51[4] == *(v17 + 104))
          {
            goto LABEL_37;
          }
        }

        v17 = *(v17 + 376);
        if (!v17)
        {
          if (!v18 || !*(v18 + 24))
          {
            break;
          }

          v20 = v18;
          _VTP_ReleaseSocket(v8, v9);
          v21 = *(v20 + 20);
          *(v9 + 20) = v21;
          *(v9 + 24) = 1;
          ++*(v8 + 128 + 4 * v21);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v24 = *(v9 + 20);
              v25 = *(v8 + 128 + 4 * v24);
              *buf = 136316162;
              *&buf[4] = v22;
              *&buf[12] = 2080;
              *&buf[14] = "VTP_Bind";
              *&buf[22] = 1024;
              *&buf[24] = 2281;
              *&buf[28] = 1024;
              *&buf[30] = v24;
              *&buf[34] = 1024;
              *&buf[36] = v25;
              _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d fd[%d] increase. RefCount[%d]", buf, 0x28u);
            }
          }

LABEL_70:
          v11 = 0;
          v10 = 0;
          goto LABEL_16;
        }
      }
    }

    *(a2 + 2) = 4672;
    v16 = 16402;
  }

  v26 = bind(*(v9 + 20), a2, a3);
  v10 = v26;
  if (*(v9 + 16) == 2 && v26 == -1)
  {
    v27 = 1;
    do
    {
      *(a2 + 2) = bswap32(v16 - v27) >> 16;
      v28 = bind(*(v9 + 20), a2, a3);
      v29 = v27 + 1;
    }

    while (v28 == -1 && v27++ < 9);
    v10 = v28;
    if (v28 == -1 || v29 == 10)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v32;
          *&buf[12] = 2080;
          *&buf[14] = "VTP_Bind";
          *&buf[22] = 1024;
          *&buf[24] = 2300;
          _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d All binding tries failed. Trying a random port...\n", buf, 0x1Cu);
        }
      }

      *(a2 + 2) = 0;
      v34 = bind(*(v9 + 20), a2, a3);
      if (v34 == -1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VTP_Bind_cold_1();
          }
        }

        v11 = 0;
        goto LABEL_15;
      }

      v10 = v34;
    }
  }

  if (!v10)
  {
    *&v35 = 0xAAAAAAAAAAAAAAAALL;
    *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v48 = v35;
    v49 = v35;
    v46 = v35;
    v47 = v35;
    *&buf[32] = v35;
    v45 = v35;
    *buf = v35;
    *&buf[16] = v35;
    v43 = 128;
    *(v9 + 24) = 1;
    getsockname(*(v9 + 20), buf, &v43);
    SAToIPPORT();
    v36 = *(v8 + 24);
    if (v36 != -1)
    {
      close(v36);
      *(v8 + 24) = -1;
    }

    goto LABEL_70;
  }

  v11 = 0;
LABEL_16:
  pthread_rwlock_unlock((v8 + 5376));
  CheckOutHandleDebug();
  if (v11)
  {
    v12 = 9;
LABEL_18:
    *__error() = v12;
  }

  return v10;
}

void _VTP_ReleaseSocket(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 20);
  if (v2 <= 0x3FF)
  {
    v4 = a1 + 4 * v2;
    v5 = *(v4 + 128);
    *(v4 + 128) = v5 - 1;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a2 + 20);
        v18 = 136316162;
        v19 = v6;
        v20 = 2080;
        v21 = "_VTP_ReleaseSocket";
        v22 = 1024;
        v23 = 677;
        v24 = 1024;
        v25 = v8;
        v26 = 1024;
        v27 = v5 - 1;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d fd=%d decrease. RefCount=%d", &v18, 0x28u);
      }
    }

    if (v5 <= 0)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v17 = *(a2 + 20);
      v18 = 136316162;
      v19 = v15;
      v20 = 2080;
      v21 = "_VTP_ReleaseSocket";
      v22 = 1024;
      v23 = 679;
      v24 = 1024;
      v25 = v17;
      v26 = 1024;
      v27 = v5 - 1;
      v12 = " [%s] %s:%d fd=%d over released. RefCount=%d";
      v13 = v16;
      v14 = 40;
    }

    else
    {
      if (v5 != 1)
      {
        return;
      }

      close(*(a2 + 20));
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v11 = *(a2 + 20);
      v18 = 136315906;
      v19 = v9;
      v20 = 2080;
      v21 = "_VTP_ReleaseSocket";
      v22 = 1024;
      v23 = 683;
      v24 = 1024;
      v25 = v11;
      v12 = " [%s] %s:%d fd=%d closed.";
      v13 = v10;
      v14 = 34;
    }

    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, &v18, v14);
LABEL_14:
    *(a2 + 20) = -1;
  }
}

uint64_t VTP_BindNew(int a1, uint64_t a2, socklen_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = CheckInHandleDebug();
  if (!v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_BindNew_cold_2();
      }
    }

    v9 = 0xFFFFFFFFLL;
    v11 = 13;
    goto LABEL_18;
  }

  v7 = v6;
  pthread_rwlock_wrlock((v6 + 5376));
  v8 = *(v7 + 5576);
  if (!v8)
  {
LABEL_5:
    v9 = 0xFFFFFFFFLL;
    v10 = 1;
    goto LABEL_16;
  }

  while (*v8 != a1)
  {
    v8 = *(v8 + 376);
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = *(v8 + 20);
  if (v12 == -1)
  {
    v13 = __error();
    v10 = 0;
    v14 = 9;
    goto LABEL_14;
  }

  if (*(v8 + 24) == 1)
  {
    v13 = __error();
    v10 = 0;
    v14 = 22;
LABEL_14:
    *v13 = v14;
LABEL_15:
    v9 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  v16 = *(a2 + 2);
  if (*(v8 + 16) == 2 && v16 == 0)
  {
    *(a2 + 2) = 4416;
    v16 = 16401;
  }

  v18 = bind(v12, a2, a3);
  v9 = v18;
  if (*(v8 + 16) == 2 && v18 == -1)
  {
    v19 = 1;
    do
    {
      *(a2 + 2) = bswap32(v16 - v19) >> 16;
      v20 = bind(*(v8 + 20), a2, a3);
      v21 = v19 + 1;
    }

    while (v20 == -1 && v19++ < 9);
    v9 = v20;
    if (v20 == -1 || v21 == 10)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = "VTP_BindNew";
          *&buf[22] = 1024;
          *&buf[24] = 2381;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d All binding tries failed. Trying a random port...\n", buf, 0x1Cu);
        }
      }

      *(a2 + 2) = 0;
      v26 = bind(*(v8 + 20), a2, a3);
      if (v26 == -1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VTP_BindNew_cold_1();
          }
        }

        v10 = 0;
        goto LABEL_15;
      }

      v9 = v26;
    }
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35 = v27;
    v36 = v27;
    v33 = v27;
    v34 = v27;
    v31 = v27;
    v32 = v27;
    *buf = v27;
    *&buf[16] = v27;
    v29 = 128;
    *(v8 + 24) = 1;
    getsockname(*(v8 + 20), buf, &v29);
    SAToIPPORT();
    v28 = *(v7 + 24);
    if (v28 != -1)
    {
      close(v28);
      *(v7 + 24) = -1;
    }

    v10 = 0;
    v9 = 0;
  }

LABEL_16:
  pthread_rwlock_unlock((v7 + 5376));
  CheckOutHandleDebug();
  if (v10)
  {
    v11 = 9;
LABEL_18:
    *__error() = v11;
  }

  return v9;
}

uint64_t VTP_Sendto(int a1, const void *a2, size_t a3, int a4, uint64_t a5, socklen_t a6, int *a7)
{
  v133 = *MEMORY[0x1E69E9840];
  if (!a7)
  {
    *__error() = 22;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Sendto_cold_6();
      }
    }

    return -1;
  }

  if (*a7 >= 0x100)
  {
    *__error() = 22;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Sendto_cold_5();
      }
    }

    return -1;
  }

  p_prots = &OBJC_PROTOCOL___VCRateControlAlgorithm.prots;
  v15 = CheckInHandleDebug();
  if (!v15)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Sendto_cold_4();
      }
    }

    *__error() = 13;
    return -1;
  }

  v16 = v15;
  v17 = *a7;
  if (*a7 >= 4 && (a7[37] & 3) == 1)
  {
    v18 = *(v15 + 8 * a1 + 13432);
    *v116 = a3;
    if ((DTLS_Write(v18, a2, a3, v116, v17) & 0x80000000) != 0)
    {
      *__error() = 22;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_Sendto_cold_3();
        }
      }

      v19 = -1;
    }

    else
    {
      v19 = *v116;
    }

    CheckOutHandleDebug();
    return v19;
  }

  pthread_rwlock_rdlock((v15 + 5376));
  v20 = a7[40];
  *&v116[32] = 0xAAAAAAAAAAAAAAAALL;
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v116 = v21;
  *&v116[16] = v21;
  v114 = a3;
  v115 = v16;
  v113 = a4;
  if (!v20)
  {
    v23 = *(v16 + 5576);
    if (!v23)
    {
LABEL_49:
      v26 = 0;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_51;
    }

    while (*v23 != a1)
    {
      v23 = *(v23 + 376);
      if (!v23)
      {
        goto LABEL_49;
      }
    }

    SAToIPPORT();
    v22 = *(v16 + 5880);
    if (!v22)
    {
LABEL_167:
      v26 = 0;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_52;
    }

    v72 = *(v23 + 84) & 1;
    v73 = v116[0] & 1;
    while (1)
    {
      if (v72 != (*(v22 + 28) & 1))
      {
        goto LABEL_153;
      }

      if (v72)
      {
        if (*(v23 + 104) != *(v22 + 48) || *(v23 + 112) != *(v22 + 56))
        {
          goto LABEL_153;
        }
      }

      else if (*(v23 + 104) != *(v22 + 48))
      {
        goto LABEL_153;
      }

      if (*(v23 + 120) != *(v22 + 64) || v73 != (*(v22 + 148) & 1))
      {
        goto LABEL_153;
      }

      if (v116[0])
      {
        if (*&v116[20] != *(v22 + 168) || *&v116[28] != *(v22 + 176))
        {
          goto LABEL_153;
        }
      }

      else if (*&v116[20] != *(v22 + 168))
      {
        goto LABEL_153;
      }

      if (*&v116[36] == *(v22 + 184))
      {
        goto LABEL_215;
      }

LABEL_153:
      v76 = p_prots;
      v77 = *(v22 + 320);
      if (v77 >= 1)
      {
        v78 = 0;
        v79 = (v22 + 512);
        do
        {
          if (v73 == (*(v79 - 9) & 1))
          {
            if (v116[0])
            {
              if (*&v116[20] == *(v79 - 2) && *&v116[28] == *(v79 - 1))
              {
LABEL_164:
                if (*&v116[36] == *v79)
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v112 = VRTraceErrorLogLevelToCSTR();
                    v88 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315906;
                      *&buf[4] = v112;
                      *&buf[12] = 2080;
                      *&buf[14] = "FindConnectionResultByKey";
                      *&buf[22] = 1024;
                      *&buf[24] = 2769;
                      *&buf[28] = 1024;
                      *&buf[30] = v78;
                      _os_log_impl(&dword_1DB56E000, v88, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: packet destination matched connection result %d", buf, 0x22u);
                    }
                  }

                  v26 = v78 + 2;
LABEL_48:
                  v16 = v115;
                  goto LABEL_52;
                }
              }
            }

            else if (*&v116[20] == *(v79 - 4))
            {
              goto LABEL_164;
            }
          }

          ++v78;
          v79 += 160;
        }

        while (v77 != v78);
      }

      v22 = *(v22 + 2056);
      p_prots = v76;
      if (!v22)
      {
        goto LABEL_167;
      }
    }
  }

  v22 = *(v16 + 5880);
  if (!v22)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Sendto_cold_2();
      }

      v26 = 0;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  v23 = *(v16 + 5576);
  if (!v23)
  {
LABEL_29:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Sendto_cold_1();
      }

      v26 = 0;
LABEL_47:
      v23 = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_48;
    }

    v26 = 0;
LABEL_51:
    v23 = 0xAAAAAAAAAAAAAAAALL;
    goto LABEL_52;
  }

  v24 = *(v22 + 356) & 1;
  while (1)
  {
    if ((*(v23 + 84) & 1) == v24)
    {
      if (v24)
      {
        if (*(v23 + 104) != *(v22 + 376) || *(v23 + 112) != *(v22 + 384))
        {
          goto LABEL_28;
        }
      }

      else if (*(v23 + 104) != *(v22 + 376))
      {
        goto LABEL_28;
      }

      if (*(v23 + 120) == *(v22 + 392))
      {
        break;
      }
    }

LABEL_28:
    v23 = *(v23 + 376);
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v89 = VRTraceErrorLogLevelToCSTR();
    v90 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v91 = *v23;
      *buf = 136315906;
      *&buf[4] = v89;
      *&buf[12] = 2080;
      *&buf[14] = "FindConnectionResultByKey";
      *&buf[22] = 1024;
      *&buf[24] = 2732;
      *&buf[28] = 1024;
      *&buf[30] = v91;
      _os_log_impl(&dword_1DB56E000, v90, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP default result key uses vfd(%d) for send.", buf, 0x22u);
    }

    v26 = 1;
    goto LABEL_48;
  }

LABEL_215:
  v26 = 1;
LABEL_52:
  if (!a7[39])
  {
    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v116[16] = v30;
    *&v116[32] = v30;
    *v116 = v30;
    v31 = (v26 - 2);
    if (v31 >= 2)
    {
      if (v26)
      {
        if (v26 == 1 && *(v22 + 320) >= 1)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = v22 + 328;
          v109 = v22 + 968;
          v37 = v22 + 1224;
          v38 = -1;
          v19 = -1;
          v107 = a2;
          v108 = v22;
          while (1)
          {
            v39 = v36 + 320 * v32;
            v40 = *(v39 + 28) & 1;
            if (v40 != (*(v23 + 84) & 1))
            {
              goto LABEL_72;
            }

            if (v40)
            {
              if (*(v39 + 48) != *(v23 + 104) || *(v39 + 56) != *(v23 + 112))
              {
                goto LABEL_72;
              }
            }

            else if (*(v39 + 48) != *(v23 + 104))
            {
              goto LABEL_72;
            }

            v42 = v23;
            if (*(v39 + 64) == *(v23 + 120))
            {
              goto LABEL_86;
            }

LABEL_72:
            v42 = *(v115 + 5576);
            if (!v42)
            {
LABEL_84:
              v33 = 0;
              goto LABEL_87;
            }

            while (1)
            {
              if (v40 == (*(v42 + 84) & 1))
              {
                if (v40)
                {
                  if (*(v39 + 48) != *(v42 + 104) || *(v39 + 56) != *(v42 + 112))
                  {
                    goto LABEL_83;
                  }
                }

                else if (*(v39 + 48) != *(v42 + 104))
                {
                  goto LABEL_83;
                }

                if (*(v39 + 64) == *(v42 + 120))
                {
                  break;
                }
              }

LABEL_83:
              v42 = *(v42 + 376);
              if (!v42)
              {
                goto LABEL_84;
              }
            }

            v33 = v42;
LABEL_86:
            v44 = a2;
            v45 = v34;
            v46 = v35;
            v47 = v36;
            v48 = v37;
            v38 = SendOnePacketOnVFDList(v115, v42, v44, v114, v113, v109 + (v32 << 7), *(v37 + 4 * v32), a7, v36 + 320 * v32);
            v37 = v48;
            v36 = v47;
            a2 = v107;
            v22 = v108;
            v35 = v46;
            v34 = v45;
LABEL_87:
            if (v38 != -1)
            {
              v19 = v38;
              if (v32)
              {
                v49 = *(v39 + 28);
                if ((v49 & 4) != 0)
                {
                  v35 = v49 & 1;
                }

                else
                {
                  v35 = v35;
                }

                if ((v49 & 4) != 0)
                {
                  v34 = 1;
                }

                else
                {
                  v34 = v34;
                }
              }
            }

            if (*(v22 + 324))
            {
              if (++v32 < *(v22 + 320))
              {
                continue;
              }
            }

LABEL_222:
            v53 = v33 == 0;
            goto LABEL_226;
          }
        }

        LOBYTE(v35) = 0;
        LOBYTE(v34) = 0;
        v33 = 0;
      }

      else
      {
        v33 = *(v16 + 5576);
        if (v33)
        {
          while (*v33 != a1)
          {
            v33 = *(v33 + 376);
            if (!v33)
            {
              goto LABEL_177;
            }
          }

          v19 = SendOnePacketOnVFDList(v115, v33, a2, v114, v113, a5, a6, a7, 0);
          goto LABEL_221;
        }

LABEL_177:
        LOBYTE(v35) = 0;
        LOBYTE(v34) = 0;
      }

      v19 = -1;
      goto LABEL_222;
    }

    v111 = v26;
    v68 = v22 + 328 + 320 * v31;
    v69 = *(v22 + 4 * v31 + 1224);
    v70 = (v68 + 28);
    v71 = *(v68 + 28) & 1;
    if (v71 != (*(v23 + 84) & 1))
    {
      goto LABEL_194;
    }

    if (v71)
    {
      if (*(v68 + 48) != *(v23 + 104) || *(v68 + 56) != *(v23 + 112))
      {
LABEL_194:
        v106 = *(v22 + 4 * v31 + 1224);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v94 = VRTraceErrorLogLevelToCSTR();
          v95 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v96 = IPToString();
            *buf = 136315906;
            *&buf[4] = v94;
            *&buf[12] = 2080;
            *&buf[14] = "VTP_Sendto";
            *&buf[22] = 1024;
            *&buf[24] = 2967;
            *&buf[28] = 2080;
            *&buf[30] = v96;
            _os_log_impl(&dword_1DB56E000, v95, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: matching localIP: %s", buf, 0x26u);
          }
        }

        v93 = *(v115 + 5576);
        if (!v93)
        {
          v33 = 0;
          v19 = -1;
          goto LABEL_219;
        }

        while (1)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v97 = VRTraceErrorLogLevelToCSTR();
            v98 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v99 = IPToString();
              *buf = 136315906;
              *&buf[4] = v97;
              *&buf[12] = 2080;
              *&buf[14] = "VTP_Sendto";
              *&buf[22] = 1024;
              *&buf[24] = 2970;
              *&buf[28] = 2080;
              *&buf[30] = v99;
              _os_log_impl(&dword_1DB56E000, v98, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: matching vfd, %s", buf, 0x26u);
            }
          }

          if ((*v70 & 1) != (*(v93 + 84) & 1))
          {
            goto LABEL_211;
          }

          if (*v70)
          {
            if (*(v68 + 48) != *(v93 + 104) || *(v68 + 56) != *(v93 + 112))
            {
              goto LABEL_211;
            }
          }

          else if (*(v68 + 48) != *(v93 + 104))
          {
            goto LABEL_211;
          }

          if (*(v68 + 64) == *(v93 + 120))
          {
            v33 = v93;
            v69 = v106;
            goto LABEL_218;
          }

LABEL_211:
          v93 = *(v93 + 376);
          if (!v93)
          {
            v33 = 0;
            v19 = -1;
LABEL_219:
            if (v111 == 3)
            {
              v101 = *(v22 + 328 + 320 * v31 + 28);
              LODWORD(v34) = (v101 >> 2) & 1;
              LODWORD(v35) = v101 & ((v101 & 4) >> 2);
              goto LABEL_222;
            }

LABEL_221:
            LOBYTE(v35) = 0;
            LOBYTE(v34) = 0;
            goto LABEL_222;
          }
        }
      }
    }

    else if (*(v68 + 48) != *(v23 + 104))
    {
      goto LABEL_194;
    }

    if (*(v68 + 64) == *(v23 + 120))
    {
      v33 = 0;
      v93 = v23;
LABEL_218:
      v19 = SendOnePacketOnVFDList(v115, v93, a2, v114, v113, v22 + (v31 << 7) + 968, v69, a7, v68);
      goto LABEL_219;
    }

    goto LABEL_194;
  }

  v28 = *(v16 + 5576);
  if (v28)
  {
    while (*v28 != a1)
    {
      v28 = *(v28 + 376);
      if (!v28)
      {
        goto LABEL_56;
      }
    }

    v50 = a7;
    v51 = v26;
    v52 = SendOnePacketOnVFDList(v16, v28, a2, v114, v113, a5, a6, v50, 0);
    v26 = v51;
    v19 = v52;
    v29 = 1;
  }

  else
  {
LABEL_56:
    v29 = 0;
    v19 = -1;
  }

  v110 = v26;
  if (!v26)
  {
    v54 = *(v16 + 5880);
    if (!v54 || *(v54 + 320) != 2)
    {
      goto LABEL_112;
    }

    v55 = v29 ^ 1;
    if ((*(v54 + 676) & 4) == 0)
    {
      v55 = 1;
    }

    if (v55)
    {
      goto LABEL_112;
    }

    v56 = *(v28 + 84);
    if ((v56 & 1) == (*(v54 + 676) & 1))
    {
      if (v56)
      {
        if (*(v28 + 104) != *(v54 + 696) || *(v28 + 112) != *(v54 + 704))
        {
          goto LABEL_245;
        }
      }

      else if (*(v28 + 104) != *(v54 + 696))
      {
        goto LABEL_245;
      }

      if (*(v28 + 120) == *(v54 + 712))
      {
        LODWORD(v34) = 1;
        v23 = v28;
        v22 = *(v16 + 5880);
        goto LABEL_114;
      }
    }

LABEL_245:
    LODWORD(v34) = 0;
    LOBYTE(v56) = 0;
    goto LABEL_114;
  }

  if (v26 != 3)
  {
LABEL_112:
    LOBYTE(v35) = 0;
    LODWORD(v34) = 0;
    if (v29)
    {
      goto LABEL_113;
    }

LABEL_102:
    v53 = 1;
    goto LABEL_226;
  }

  LODWORD(v34) = (*(v22 + 676) >> 2) & 1;
  LODWORD(v35) = *(v22 + 676) & ((*(v22 + 676) & 4u) >> 2);
  if (!v29)
  {
    goto LABEL_102;
  }

LABEL_113:
  LOBYTE(v56) = v35;
LABEL_114:
  *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
  *&v57 = 0xAAAAAAAAAAAAAAAALL;
  *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&buf[16] = v57;
  *&buf[32] = v57;
  *buf = v57;
  *(v131 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v130[1] = v57;
  v131[0] = v57;
  v130[0] = v57;
  v129 = 0xAAAAAAAAAAAAAAAALL;
  v127 = v57;
  v128 = v57;
  SAToIPPORT();
  IPPORTToStringWithSize();
  IPPORTToStringWithSize();
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v58 = VRTraceErrorLogLevelToCSTR();
    v59 = *MEMORY[0x1E6986650];
    v60 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = *(v28 + 84) & 4;
        v62 = 28;
        if (v56)
        {
          v62 = 48;
        }

        v63 = v62 + v114;
        v64 = *(v16 + 5880);
        if (v64)
        {
          v65 = *(v64 + 320);
          v66 = v59;
          if (v65 == 2)
          {
            v67 = *(v64 + 676) & 4;
            v65 = 2;
          }

          else
          {
            v67 = -1;
          }
        }

        else
        {
          v65 = -1;
          v67 = -1;
          v66 = v59;
        }

        *v116 = 136317698;
        *&v116[4] = v58;
        *&v116[12] = 2080;
        *&v116[14] = "VTP_Sendto";
        *&v116[22] = 1024;
        *&v116[24] = 2910;
        *&v116[28] = 2080;
        *&v116[30] = v130;
        *&v116[38] = 1024;
        *&v116[40] = v61;
        *&v116[44] = 2080;
        *&v116[46] = buf;
        v117 = 1024;
        v118 = v110;
        v119 = 1024;
        v120 = v34;
        v121 = 2048;
        v122 = v63;
        v123 = 1024;
        v124 = v65;
        v125 = 1024;
        v126 = v67;
        _os_log_impl(&dword_1DB56E000, v66, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP_Sendto: isICEPacket = 1  mbLocal = %s, mbLocalIsCellular = %d, mbDst = %s, matchedType = %d, shouldCountBytes = %d, length = %lu, numResult = %d, isSecondaryCellular = %d", v116, 0x58u);
      }
    }

    else if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      v81 = *(v28 + 84) & 4;
      v82 = 28;
      if (v56)
      {
        v82 = 48;
      }

      v83 = v82 + v114;
      v84 = *(v16 + 5880);
      if (v84)
      {
        v85 = *(v84 + 320);
        v87 = v59;
        if (v85 == 2)
        {
          v86 = *(v84 + 676) & 4;
          v85 = 2;
        }

        else
        {
          v86 = -1;
        }
      }

      else
      {
        v85 = -1;
        v86 = -1;
        v87 = v59;
      }

      *v116 = 136317698;
      *&v116[4] = v58;
      *&v116[12] = 2080;
      *&v116[14] = "VTP_Sendto";
      *&v116[22] = 1024;
      *&v116[24] = 2910;
      *&v116[28] = 2080;
      *&v116[30] = v130;
      *&v116[38] = 1024;
      *&v116[40] = v81;
      *&v116[44] = 2080;
      *&v116[46] = buf;
      v117 = 1024;
      v118 = v110;
      v119 = 1024;
      v120 = v34;
      v121 = 2048;
      v122 = v83;
      v123 = 1024;
      v124 = v85;
      v125 = 1024;
      v126 = v86;
      _os_log_debug_impl(&dword_1DB56E000, v87, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VTP_Sendto: isICEPacket = 1  mbLocal = %s, mbLocalIsCellular = %d, mbDst = %s, matchedType = %d, shouldCountBytes = %d, length = %lu, numResult = %d, isSecondaryCellular = %d", v116, 0x58u);
    }
  }

  v53 = 0;
  LOBYTE(v35) = v56;
LABEL_226:
  if (v19 >= 1 && (v34 & 1) != 0)
  {
    if (v35)
    {
      v102 = 48;
    }

    else
    {
      v102 = 28;
    }

    v103 = *(v23 + 28);
    if ((v103 & 0xF0) != 0)
    {
      v104 = 2044;
      goto LABEL_235;
    }

    if ((v103 & 0xBC0E) != 0)
    {
      v104 = 2052;
LABEL_235:
      atomic_fetch_add_explicit((v22 + v104), v19 + v102, memory_order_relaxed);
    }
  }

  pthread_rwlock_unlock((v115 + 5376));
  CheckOutHandleDebug();
  if (v53)
  {
    *__error() = 9;
  }

  return v19;
}

uint64_t SendOnePacketOnVFDList(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, socklen_t a7, int *a8, uint64_t a9)
{
  v9 = a7;
  v50 = *MEMORY[0x1E69E9840];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v42.msg_iov = v12;
  *&v42.msg_control = v12;
  *&v42.msg_name = v12;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v49[3] = v12;
  v49[4] = v12;
  v49[1] = v12;
  v49[2] = v12;
  v13 = a8[1];
  v41 = 0;
  memset(v45, 170, 6);
  v43 = a7;
  v44 = -1431655766;
  v48[7] = v12;
  v49[0] = v12;
  v48[5] = v12;
  v48[6] = v12;
  v48[3] = v12;
  v48[4] = v12;
  v48[1] = v12;
  v48[2] = v12;
  v14 = a9 == 0;
  v48[0] = v12;
  if (!a9)
  {
    v39 = a5;
    if (a4 >= 4 && (*a3 & 0xC0) == 0x40 && a4 - 4 == bswap32(*(a3 + 2)) >> 16)
    {
      v16 = a2 + 64;
      a2[64] = *a3;
      v15 = 4;
      goto LABEL_5;
    }

LABEL_11:
    v14 = 0;
    v15 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  if (!*(a9 + 20))
  {
    v39 = a5;
    goto LABEL_11;
  }

  if (*(a9 + 24) == 1)
  {
    v39 = a5;
    v15 = 0;
    v16 = a2 + 64;
    *(a2 + 128) = bswap32(*(a9 + 26)) >> 16;
    *(a2 + 129) = bswap32(a4) >> 16;
LABEL_5:
    *&v49[0] = v16;
    *(&v49[0] + 1) = 4;
    v17 = 1;
LABEL_12:
    v18 = *a8;
    if ((a8[37] & 2) != 0 || (v18 | 4) == 6 && *(a8 + 12) == 1)
    {
      v19 = 32;
    }

    else
    {
      v19 = 0;
    }

    if (v18 != 6 && v18 != 2)
    {
      if (!v18)
      {
        v20 = v17;
        *&v49[v17] = a3 + v15;
        v21 = v17 + 1;
        v22 = a4 - v15;
        v23 = a1;
LABEL_44:
        *(&v49[v20] + 1) = v22;
        __memcpy_chk();
        if (*(a2 + 392) == 1)
        {
          VTP_AddNAT64PrefixToIPv4Destination(a2, v48, &v43);
          v9 = v43;
        }

        v42.msg_name = v48;
        v42.msg_namelen = v9;
        v42.msg_iov = v49;
        v42.msg_iovlen = v21;
        v42.msg_flags = 0;
        if (*(v23 + 21625) == 1)
        {
          v42.msg_control = 0;
          v42.msg_controllen = 0;
        }

        else
        {
          v42.msg_control = &v46;
          v42.msg_controllen = 16;
          v46 = 0xFFFF00000010;
          LODWORD(v47) = 4230;
          v36 = *(v23 + 21628);
          if (!v36)
          {
            v36 = v39;
          }

          HIDWORD(v47) = v36;
        }

        LODWORD(result) = sendmsg(a2[5], &v42, 0);
        if (result >= 1)
        {
          if (a2[21])
          {
            v37 = 48;
          }

          else
          {
            v37 = 28;
          }

          atomic_fetch_add_explicit(v23, (v37 + result), memory_order_relaxed);
        }

        return result;
      }

      v19 |= 8u;
    }

    LOBYTE(v45[0]) = v19;
    BYTE1(v45[0]) = v18;
    *(v45 + 2) = bswap32(v13);
    v24 = &v49[v17];
    v25 = v17 + 1;
    *v24 = v45;
    v24[1] = 6;
    if ((v19 & 8) != 0)
    {
      v38 = v14;
      v26 = v15;
      v27 = a3;
      if ((PrepareOFTMAC(*(a1 + 8 * *a2 + 6040), (a3 + v15), a4 - v15, &v44) & 0x80000000) != 0)
      {
        v19 &= ~8u;
        LOBYTE(v45[0]) = v19;
      }

      else
      {
        v28 = &v49[v25];
        v25 = v17 | 2;
        *v28 = &v44;
        v28[1] = 4;
      }

      a3 = v27;
      v14 = v38;
    }

    else
    {
      v26 = v15;
    }

    v30 = a3 + v26;
    v31 = &v49[v25];
    v32 = a4 - v26;
    v20 = (v25 + 1);
    *v31 = v30;
    v31[1] = v32;
    if (a9)
    {
      if (*(a9 + 20))
      {
        v33 = 1;
      }

      else
      {
        v33 = v14;
      }

      if (v33)
      {
        goto LABEL_37;
      }
    }

    else if (v14)
    {
LABEL_37:
      if ((v19 & 8) != 0)
      {
        v34 = 14;
      }

      else
      {
        v34 = 10;
      }

      *(a2 + 129) = bswap32(v34 + a4 - v15) >> 16;
      v35 = 1;
      goto LABEL_43;
    }

    v35 = 0;
LABEL_43:
    v23 = a1;
    PrepareOFTCRC32(v49, v25 + 1, v35, &v41);
    *&v49[v25 + 1] = &v41;
    v21 = v25 + 2;
    v22 = 4;
    goto LABEL_44;
  }

  *__error() = 22;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      SendOnePacketOnVFDList_cold_1();
    }
  }

  return -1;
}

uint64_t VTP_Send(int a1, _OWORD *a2, size_t a3, unsigned int a4, uint64_t a5)
{
  metadata[1] = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Send_cold_8();
      }
    }

    v9 = __error();
    v10 = 22;
    goto LABEL_34;
  }

  if ((*(a5 + 218) & 1) != 0 || (v8 = 0, a2) && a3)
  {
    if (*(a5 + 313) == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_Send_cold_7();
        }
      }

      v9 = __error();
      v10 = 81;
LABEL_34:
      *v9 = v10;
      return -1;
    }

    v12 = a4 == 800 || a4 == 700;
    v52 = *(a5 + 205);
    v53 = v12;
    v50 = *(a5 + 204);
    v51 = *(a5 + 200);
    v13 = CheckInHandleDebug();
    if (!v13)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_Send_cold_6();
        }
      }

      v9 = __error();
      v10 = 13;
      goto LABEL_34;
    }

    v14 = v13;
    if (a4 == 800 || a4 == 700)
    {
      atomic_fetch_add_explicit((v13 + 21976), 1uLL, memory_order_relaxed);
    }

    pthread_rwlock_rdlock((v13 + 21648));
    v15 = *(a5 + 8);
    v56 = a4;
    if (v15)
    {
      v16 = VTP_getConnectionManagerForCallID(v14, v15);
      v17 = *(a5 + 169);
      if ([v16 isPreWarmStateEnabled])
      {
        v17 |= *(a5 + 170);
      }

      LOBYTE(metadata[0]) = v17 & 1;
      BYTE1(metadata[0]) = 1;
      BYTE2(metadata[0]) = *(a5 + 309);
      BYTE3(metadata[0]) = *(a5 + 233);
      BYTE4(metadata[0]) = *(a5 + 312);
      PacketRoutingInfoList = VCConnectionManager_CreatePacketRoutingInfoList(v16, metadata, *(v14 + 22048));
      if (!PacketRoutingInfoList)
      {
        goto LABEL_28;
      }

      goto LABEL_64;
    }

    if (*(a5 + 24))
    {
      v20 = MEMORY[0x1E1288880](*(v14 + 22048), 136, 0x10E204054A9890BLL, 0);
      if (!v20)
      {
        VTP_Send_cold_1();
        goto LABEL_29;
      }

      PacketRoutingInfoList = v20;
      v16 = 0;
      v21 = *(a5 + 24);
      v22 = *(a5 + 40);
      v23 = *(a5 + 56);
      *(v20 + 56) = *(a5 + 72);
      *(v20 + 40) = v23;
      *(v20 + 24) = v22;
      *(v20 + 8) = v21;
      v24 = *(a5 + 88);
      v25 = *(a5 + 104);
      v26 = *(a5 + 136);
      *(v20 + 104) = *(a5 + 120);
      *(v20 + 88) = v25;
      *(v20 + 72) = v24;
      *(v20 + 120) = v26;
      *(v20 + 128) = 0;
      goto LABEL_64;
    }

    v27 = CheckInHandleDebug();
    if (v27)
    {
      v28 = v27;
      pthread_rwlock_rdlock((v27 + 5376));
      v29 = *(v28 + 5576);
      if (v29)
      {
        while (*v29 != a1)
        {
          v29 = *(v29 + 376);
          if (!v29)
          {
            goto LABEL_43;
          }
        }

        v30 = MEMORY[0x1E1288880](*(v28 + 22048), 136, 0x10E204054A9890BLL, 0);
        if (v30)
        {
          PacketRoutingInfoList = v30;
          v31 = *(v29 + 416);
          v32 = *(v29 + 432);
          v33 = *(v29 + 448);
          *(v30 + 56) = *(v29 + 464);
          *(v30 + 40) = v33;
          *(v30 + 24) = v32;
          *(v30 + 8) = v31;
          v34 = *(v29 + 480);
          v35 = *(v29 + 496);
          v36 = *(v29 + 528);
          *(v30 + 104) = *(v29 + 512);
          *(v30 + 88) = v35;
          *(v30 + 72) = v34;
          *(v30 + 120) = v36;
          *(v30 + 128) = 0;
        }

        else
        {
          VTP_Send_cold_2(metadata);
          PacketRoutingInfoList = metadata[0];
        }
      }

      else
      {
LABEL_43:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VTP_Send_cold_3();
          }
        }

        PacketRoutingInfoList = 0;
        *__error() = 6;
      }

      pthread_rwlock_unlock((v28 + 5376));
      CheckOutHandleDebug();
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_Send_cold_4();
        }
      }

      PacketRoutingInfoList = 0;
      *__error() = 13;
    }

    metadata[0] = 0;
    if (!_VTP_GetNWContentMetaData(a1, metadata))
    {
      v37 = metadata[0];
      if (metadata[0])
      {
        *(a5 + 320) = metadata[0];
        switch(a4)
        {
          case 0xC8u:
            v38 = nw_service_class_background;
            break;
          case 0x2BCu:
            v38 = nw_service_class_interactive_video;
            break;
          case 0x320u:
            v38 = nw_service_class_interactive_voice;
            break;
          default:
            goto LABEL_63;
        }

        nw_ip_metadata_set_service_class(v37, v38);
      }
    }

LABEL_63:
    v16 = 0;
    if (!PacketRoutingInfoList)
    {
LABEL_28:
      VTP_Send_cold_5();
LABEL_29:
      *(a5 + 320) = 0;
      pthread_rwlock_unlock((v14 + 21648));
      v8 = -1;
LABEL_101:
      CheckOutHandleDebug();
      return v8;
    }

LABEL_64:
    v54 = 0;
    v39 = 0;
    v40 = -1;
    v8 = -1;
    v41 = -1;
    v42 = PacketRoutingInfoList;
    do
    {
      if (LODWORD(v42[1].isa))
      {
        if (v16)
        {
          if (BYTE6(v42[3].isa) != 1 || (*(a5 + 164) & 0x10) == 0)
          {
            v44 = 0;
            if (BYTE6(v42[3].isa) && (*(a5 + 164) & 0x20) != 0)
            {
              v44 = *(v14 + 21632);
            }
          }

          else
          {
            v44 = *(v14 + 21636);
          }

          *(a5 + 288) = v44;
        }

        if (*(a5 + 255))
        {
          isa = 1;
        }

        else
        {
          isa = v42->isa;
        }

        *(a5 + 255) = isa & 1;
        v46 = _VTP_SendWithSourceDestinationInfo(v14, &v42[1], a2, a3, v56, a5, *(v14 + 21624));
        v41 = v46;
        if (v16 && (v46 > 0 || !v46 && *(a5 + 218) == 1))
        {
          VCConnectionManager_UpdateTransmittedPacketsAndBytes(v16, &v42[1], v46, v53, v52, v51, v50 != 0);
          if (v56 == 800 || v56 == 700)
          {
            if (v54)
            {
              v54 = 1;
            }

            else
            {
              v54 = 1;
              atomic_fetch_add_explicit((v14 + 21984), 1uLL, memory_order_relaxed);
            }
          }
        }

        if (*(a5 + 218) == 1)
        {
          [v16 updateSessionStats:*(a5 + 220)];
        }

        v40 = v39;
        if ((v39 & 1) == 0)
        {
          v39 = 1;
        }
      }

      v42 = v42[16].isa;
      _VTP_HealthPrint(v14, a3, v40, v56, 1);
      v47 = *__error();
      if (v8 < 0 || v47 != 43)
      {
        v8 = v41;
      }
    }

    while (v42);
    *(a5 + 320) = 0;
    pthread_rwlock_unlock((v14 + 21648));
    do
    {
      v49 = PacketRoutingInfoList[16].isa;
      CFAllocatorDeallocate(*(v14 + 22048), PacketRoutingInfoList);
      PacketRoutingInfoList = v49;
    }

    while (v49);
    goto LABEL_101;
  }

  return v8;
}

const void *VTP_getConnectionManagerForCallID(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  Value = CFDictionaryGetValue(*(a1 + 21848), v3);
  CFRelease(v3);
  return Value;
}

size_t _VTP_SendWithSourceDestinationInfo(uint64_t a1, unsigned int *a2, _OWORD *buffer, size_t size, uint64_t a5, uint64_t a6, int a7)
{
  v98 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VTP_SendWithSourceDestinationInfo_cold_8();
      }
    }

    v13 = __error();
    v14 = 22;
    goto LABEL_12;
  }

  v8 = size;
  if (size >= 0x5C1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v35 = *a2;
        LODWORD(__b[0]) = 136316418;
        *(__b + 4) = v10;
        WORD6(__b[0]) = 2080;
        *(__b + 14) = "_VTP_SendWithSourceDestinationInfo";
        WORD3(__b[1]) = 1024;
        DWORD2(__b[1]) = 5184;
        WORD6(__b[1]) = 2048;
        *(&__b[1] + 14) = v8;
        WORD3(__b[2]) = 1024;
        DWORD2(__b[2]) = a5;
        WORD6(__b[2]) = 1024;
        *(&__b[2] + 14) = v35;
        _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d Packet data too big length=%zu trafficFlags=%d mode=%d", __b, 0x32u);
      }
    }

    *__error() = 40;
    v12 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Packet data is too big. length=%zu, trafficFlags=%d, mode=%d, expectedMaxLength=%d", v8, a5, *a2, 1472);
    VCTerminateProcess(v12, @"_VTP_SendWithSourceDestinationInfo", 0);
    if (v12)
    {
      CFRelease(v12);
    }

    return -1;
  }

  v17 = buffer;
  v18 = *a2;
  if (*a2 > 3)
  {
    if (v18 != 4)
    {
      if (v18 == 5)
      {
        v30 = *(a2 + 1);
        if (v30)
        {
          *&__b[0] = MEMORY[0x1E69E9820];
          *(&__b[0] + 1) = 3221225472;
          *&__b[1] = ___VTP_SendOnePacketWithNWConnection_block_invoke;
          *(&__b[1] + 1) = &unk_1E85F76C0;
          *&__b[2] = v30;
          return _VTP_SendOnePacketWithNWCompletionHandler(a1, buffer, size, a5, a6, __b);
        }

        _VTP_SendWithSourceDestinationInfo_cold_2(&v84);
      }

      else
      {
        if (v18 != 6)
        {
LABEL_51:
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              _VTP_SendWithSourceDestinationInfo_cold_7();
            }
          }

          return -1;
        }

        v20 = *(a2 + 14);
        if (v20)
        {
          *&__b[0] = MEMORY[0x1E69E9820];
          *(&__b[0] + 1) = 3221225472;
          *&__b[1] = ___VTP_SendOnePacketWithDatagramChannelMultiLink_block_invoke;
          *(&__b[1] + 1) = &unk_1E85F7730;
          *&__b[3] = buffer;
          *(&__b[3] + 1) = size;
          __b[2] = v20;
          _VTP_SendOnePacketWithNWCompletionHandler(a1, buffer, size, a5, a6, __b);
          return v8;
        }

        _VTP_SendWithSourceDestinationInfo_cold_1(&v84);
      }

      return v84;
    }

    memset(__b, 170, sizeof(__b));
    v28 = *(a2 + 3);
    v76 = *(a2 + 14);
    v29 = *(a2 + 10);
    if (*(a6 + 168) != 1 || *(a6 + 233) != 1 || (a2[24] & 1) != 0)
    {
      v31 = HIDWORD(v28);
      v32 = *a6;
      v72 = v28;
      if (*a6)
      {
        v33 = bswap32(*(a6 + 4));
        LODWORD(v81.msg_name) = 0;
        v74 = v31;
        if ((*(a6 + 148) & 2) != 0 || (v32 | 4) == 6 && *(a6 + 12) == 1)
        {
          v34 = 32;
        }

        else
        {
          v34 = 0;
        }

        *&v86 = 0xAAAAAAAAAAAAAAAALL;
        *(&v86 + 1) = 0xAAAAAAAAAAAAAAAALL;
        LOBYTE(v92) = v34;
        BYTE1(v92) = v32;
        *(&v92 + 2) = v33;
        *&v84 = &v92;
        *(&v84 + 1) = 6;
        *&v85 = v17;
        *(&v85 + 1) = v8;
        PrepareOFTCRC32(&v84, 2, 0, &v81);
        v36 = 0;
        v8 = 0;
        *&v86 = &v81;
        *(&v86 + 1) = 4;
        do
        {
          v37 = *(&v84 + v36 + 8);
          memcpy(__b + v8, *(&v84 + v36), v37);
          v8 += v37;
          v36 += 16;
        }

        while (v36 != 48);
        v17 = __b;
        LOBYTE(v31) = v74;
      }

      if (a7)
      {
        if (a5 == 700)
        {
          LOBYTE(v31) = -120;
        }

        else if (a5 == 800)
        {
          LOBYTE(v31) = -72;
        }
      }

      v38 = *(a6 + 310);
      *&v91 = 0;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v84 = 0u;
      v39 = *(a6 + 224);
      v94 = *(a6 + 208);
      v95 = v39;
      v96 = *(a6 + 240);
      v40 = *(a6 + 192);
      v92 = *(a6 + 176);
      v93 = v40;
      _VTP_UpdateIDSDatagramOptionWithChannelDataFormat(&v92, &v84, 1);
      v41 = *(a6 + 288);
      if (v41)
      {
        LODWORD(v84) = v84 | 0x200;
        *(&v88 + 1) = v41;
      }

      if (v76)
      {
        _VTP_ReportIDSOnTheWireBytesLocked(a1, *(a6 + 8), v8, &v84, 1);
        [v76 writeDatagram:v17 datagramSize:v8 datagramInfo:v72 & 0xFFFFFF0000000000 | ((v38 | v31) << 32) | (a5 << 16) | v72 options:v29 completionHandler:{&v84, 0}];
        kdebug_trace();
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            _VTP_SendWithSourceDestinationInfo_cold_3();
          }
        }

        return 0;
      }

      return v8;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VTP_SendWithSourceDestinationInfo_cold_4();
      }
    }

    v13 = __error();
    v14 = 43;
LABEL_12:
    *v13 = v14;
    return -1;
  }

  if (v18 != 1)
  {
    if (v18 == 2)
    {
      return VTP_SendOnePacketWithSocket(a2[2], a2[3], a2 + 16, 0, buffer, size, a5, a6, a2[14]);
    }

    if (v18 == 3)
    {
      return VTP_SendOnePacketWithSocket(a2[2], a2[3], a2 + 16, 1, buffer, size, a5, a6, a2[14]);
    }

    goto LABEL_51;
  }

  v21 = *(a6 + 156);
  v22 = CheckInHandleDebug();
  if (!v22)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VTP_SendWithSourceDestinationInfo_cold_6();
      }
    }

    v13 = __error();
    v14 = 13;
    goto LABEL_12;
  }

  v23 = v22;
  pthread_rwlock_rdlock((v22 + 5376));
  v24 = *(v23 + 5576);
  if (!v24)
  {
LABEL_39:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VTP_SendWithSourceDestinationInfo_cold_5();
      }
    }

    *__error() = 9;
    v8 = -1;
    goto LABEL_43;
  }

  v25 = a2[2] & 1;
  while (1)
  {
    if ((v24[21] & 1) == v25)
    {
      if (v25)
      {
        if (*(v24 + 13) != *(a2 + 7) || *(v24 + 14) != *(a2 + 9))
        {
          goto LABEL_38;
        }
      }

      else if (v24[26] != a2[7])
      {
        goto LABEL_38;
      }

      if (*(v24 + 60) == *(a2 + 22))
      {
        break;
      }
    }

LABEL_38:
    v24 = *(v24 + 47);
    if (!v24)
    {
      goto LABEL_39;
    }
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  if (a2[12])
  {
    v77 = 28;
    IPPORTToSA6();
  }

  else
  {
    v77 = 16;
    IPPORTToSA();
  }

  v82 = v77;
  memset(v83, 170, sizeof(v83));
  *&v42 = 0xAAAAAAAAAAAAAAAALL;
  *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v95 = v42;
  v96 = v42;
  v93 = v42;
  v94 = v42;
  v92 = v42;
  v43 = *(a6 + 4);
  v80 = 0;
  v44 = *(a6 + 156);
  v45 = v44 != 0;
  if (v44)
  {
    if (v8 >= 4 && (*v17 & 0xC0) == 0x40 && v8 - 4 == bswap32(*(v17 + 1)) >> 16)
    {
      v46 = v24 + 64;
      v24[64] = *v17;
      v47 = 4;
      goto LABEL_95;
    }

LABEL_96:
    v45 = 0;
    v47 = 0;
    v50 = 0;
  }

  else
  {
    if (v21)
    {
      goto LABEL_96;
    }

    if (*(a2 + 88) != 1)
    {
      goto LABEL_96;
    }

    v48 = *(a2 + 45);
    if (v48 < 0x4000)
    {
      goto LABEL_96;
    }

    v47 = 0;
    v49 = bswap32(v48) >> 16;
    v46 = v24 + 64;
    *(v24 + 128) = v49;
    *(v24 + 129) = bswap32(v8) >> 16;
LABEL_95:
    *&v92 = v46;
    *(&v92 + 1) = 4;
    v50 = 1;
  }

  v51 = *a6;
  if ((*(a6 + 148) & 2) != 0 || (v51 | 4) == 6 && *(a6 + 12) == 1)
  {
    v52 = 32;
  }

  else
  {
    v52 = 0;
  }

  *&v81.msg_controllen = 0xAAAAAAAAAAAAAAAALL;
  *&v81.msg_namelen = v42;
  *&v81.msg_iovlen = v42;
  v78 = -21846;
  v79 = -1431655766;
  __b[0] = v42;
  __b[1] = v42;
  __b[2] = v42;
  __b[3] = v42;
  __b[4] = v42;
  __b[5] = v42;
  __b[6] = v42;
  __b[7] = v42;
  if (v51 != 6 && v51 != 2)
  {
    if (!v51)
    {
      v53 = v17 + v47;
      v54 = v50;
      *(&v92 + 2 * v50) = v53;
      v55 = v50 + 1;
      v56 = v8 - v47;
      goto LABEL_121;
    }

    v52 |= 8u;
  }

  LOBYTE(v78) = v52;
  HIBYTE(v78) = v51;
  v79 = bswap32(v43);
  v57 = (&v92 + v50);
  v58 = v50 + 1;
  *v57 = &v78;
  v57[1] = 6;
  if ((v52 & 8) != 0)
  {
    v70 = v50 + 1;
    v71 = v52;
    v69 = v50;
    v75 = v45;
    v59 = v47;
    v73 = v47;
    if ((PrepareOFTMAC(*(v23 + 8 * *v24 + 6040), v17 + v47, v8 - v47, v83) & 0x80000000) != 0)
    {
      v47 = v73;
      v52 = v71 & 0xF7;
      LOBYTE(v78) = v71 & 0xF7;
      v45 = v75;
      v58 = v70;
    }

    else
    {
      v52 = v71;
      v60 = &v92 + v70;
      v58 = v69 | 2;
      *v60 = v83;
      *(v60 + 1) = 4;
      v45 = v75;
      v47 = v73;
    }
  }

  else
  {
    v59 = v47;
  }

  v61 = v17 + v59;
  v62 = &v92 + v58;
  v54 = v58 + 1;
  *v62 = v61;
  *(v62 + 1) = v8 - v59;
  if (v21)
  {
    if (v45)
    {
      goto LABEL_114;
    }

LABEL_119:
    v63 = v58;
    v65 = 0;
  }

  else
  {
    if (((v45 | *(a2 + 88)) & 1) == 0)
    {
      goto LABEL_119;
    }

LABEL_114:
    v63 = v58;
    if ((v52 & 8) != 0)
    {
      v64 = 14;
    }

    else
    {
      v64 = 10;
    }

    *(v24 + 129) = bswap32(v64 + v8 - v47) >> 16;
    v65 = 1;
  }

  PrepareOFTCRC32(&v92, v58 + 1, v65, &v80);
  *(&v92 + 2 * v54) = &v80;
  v55 = v63 + 2;
  v56 = 4;
LABEL_121:
  *(&v92 + 2 * v54 + 1) = v56;
  v66 = v77;
  __memcpy_chk();
  if (*(v24 + 392) == 1)
  {
    VTP_AddNAT64PrefixToIPv4Destination(v24, __b, &v82);
    v66 = v82;
  }

  v81.msg_name = __b;
  v81.msg_namelen = v66;
  v81.msg_iov = &v92;
  v81.msg_iovlen = v55;
  v81.msg_flags = 0;
  if (*(v23 + 21625) == 1)
  {
    v81.msg_control = 0;
    v81.msg_controllen = 0;
  }

  else
  {
    v81.msg_control = &v83[1];
    v81.msg_controllen = 16;
    *&v83[1] = 0xFFFF00000010;
    v83[3] = 4230;
    if (*(v23 + 21628))
    {
      v83[4] = *(v23 + 21628);
    }

    else
    {
      v83[4] = a5;
    }
  }

  v67 = sendmsg(v24[5], &v81, 0);
  kdebug_trace();
  if (v67 >= 1)
  {
    if (v24[21])
    {
      v68 = 48;
    }

    else
    {
      v68 = 28;
    }

    atomic_fetch_add_explicit(v23, (v68 + v67), memory_order_relaxed);
  }

  v8 = v67;
LABEL_43:
  pthread_rwlock_unlock((v23 + 5376));
  CheckOutHandleDebug();
  return v8;
}

void _VTP_HealthPrint(uint64_t a1, __int32 a2, unsigned int a3, int a4, int a5)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        _VTP_HealthPrint_cold_1();
      }
    }

    return;
  }

  v9 = (a1 + 20480);
  v10 = (a1 + 20480 + 16 * a3);
  v11 = micro();
  if (a5)
  {
    v12.i32[0] = 1;
    v12.i32[1] = a2;
    v10[175] = vadd_s32(v10[175], v12);
    v13 = v9 + 363;
    if (a4)
    {
      if (a4 == 700)
      {
        v13 = v9 + 365;
      }

      else
      {
        if (a4 != 800)
        {
          goto LABEL_20;
        }

        v13 = v9 + 364;
      }
    }

    ++*v13;
LABEL_20:
    v31 = v11 - *(a1 + 21944);
    if (v31 > 0.0 && v31 > 5.0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v35 = v9[350];
          v36 = v9[354];
          v37 = v9[351];
          v38 = v9[355];
          v42 = 136318210;
          v39 = v9[364];
          v40 = v9[365];
          v41 = v9[363];
          v43 = v33;
          v44 = 2080;
          v45 = "_VTP_HealthPrint";
          v46 = 1024;
          v47 = 3110;
          v48 = 1024;
          v49 = v35;
          v50 = 1024;
          v51 = v36;
          v52 = 1024;
          v53 = v37;
          v54 = 1024;
          v55 = v38;
          v56 = 2048;
          v57 = v31;
          v58 = 2048;
          v59 = (8 * v37) / v31 / 1000.0;
          v60 = 2048;
          v61 = (8 * v38) / v31 / 1000.0;
          v62 = 1024;
          v63 = v39;
          v64 = 1024;
          v65 = v40;
          v66 = 1024;
          v67 = v41;
          _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VTransport Health Monitor for VTP Send packet count:[%d %d], byte count:[%d %d], interval:%.3fs, rate:[%.3f %.3fkbps], VO=%u, VI=%u, BE=%u", &v42, 0x64u);
        }
      }

      *(a1 + 21944) = v11;
      *(a1 + 21880) = 0;
      *(a1 + 21896) = 0;
      v9[365] = 0;
      *(v9 + 363) = 0;
    }

    return;
  }

  v14.i32[0] = 1;
  v14.i32[1] = a2;
  v10[176] = vadd_s32(v10[176], v14);
  v15 = v11 - *(a1 + 21952);
  if (v15 > 0.0 && v15 > 5.0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = v9[352];
        v20 = v9[356];
        v21 = v9[353];
        v22 = v9[357];
        v23 = v9[358];
        v24 = v9[359];
        v25 = v9[360];
        v26 = v9[361];
        v27 = v9[362];
        v28 = v9[347];
        v42 = 136319490;
        v29 = *(a1 + 21872);
        v30 = v9[384];
        v43 = v17;
        v44 = 2080;
        v45 = "_VTP_HealthPrint";
        v46 = 1024;
        v47 = 3141;
        v48 = 1024;
        v49 = v19;
        v50 = 1024;
        v51 = v20;
        v52 = 1024;
        v53 = v21;
        v54 = 1024;
        v55 = v22;
        v56 = 2048;
        v57 = v15;
        v58 = 2048;
        v59 = (8 * v21) / v15 / 1000.0;
        v60 = 2048;
        v61 = (8 * v22) / v15 / 1000.0;
        v62 = 1024;
        v63 = v23;
        v64 = 1024;
        v65 = v24;
        v66 = 1024;
        v67 = v25;
        v68 = 1024;
        v69 = v26;
        v70 = 1024;
        v71 = v27;
        v72 = 1024;
        v73 = v28;
        v74 = 2048;
        v75 = v29 * 1000.0;
        v76 = 1024;
        v77 = v30;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @=@ Health: VTransport Health Monitor for VTP Recv packet count:[%d %d], byte count:[%d %d], interval:%.3fs, rate:[%.3f %.3f]kbps, demuxPackets:[%u, %u, %u, %u, %u], maxQueueLength:%d, maxQueueDelay:%.2fms statsCount:%d", &v42, 0x86u);
      }
    }

    *(a1 + 21952) = v11;
    *(a1 + 21888) = 0;
    *(a1 + 21904) = 0u;
    *(a1 + 21928) = 0;
    *(a1 + 21920) = 0;
    *(a1 + 21872) = 0;
    v9[347] = 0;
  }
}

uint64_t VTP_SendCompoundPacket(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v103 = *MEMORY[0x1E69E9840];
  if (!v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SendCompoundPacket_cold_7();
      }
    }

    goto LABEL_87;
  }

  v6 = v3;
  if (!v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SendCompoundPacket_cold_6();
      }
    }

    goto LABEL_87;
  }

  v7 = v2;
  if (!v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SendCompoundPacket_cold_5();
      }
    }

    goto LABEL_87;
  }

  v8 = v5;
  if (v5 <= 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SendCompoundPacket_cold_4();
      }
    }

LABEL_87:
    v63 = __error();
    v64 = 22;
LABEL_88:
    *v63 = v64;
    return -1;
  }

  v9 = v4;
  v10 = v1;
  v11 = CheckInHandleDebug();
  if (!v11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SendCompoundPacket_cold_3();
      }
    }

    v63 = __error();
    v64 = 13;
    goto LABEL_88;
  }

  v12 = v11;
  pthread_rwlock_rdlock((v11 + 21648));
  v13 = *(v9 + 8);
  if (!v13)
  {
    VTP_SendCompoundPacket_cold_2();
LABEL_96:
    pthread_rwlock_unlock((v12 + 21648));
    v22 = -1;
    goto LABEL_83;
  }

  v68 = v7;
  v78 = v6;
  v14 = VTP_getConnectionManagerForCallID(v12, v13);
  v84[0] = *(v9 + 169);
  v84[1] = 0;
  v84[2] = *(v9 + 309);
  v84[3] = *(v9 + 233);
  v84[4] = *(v9 + 312);
  PacketRoutingInfoList = VCConnectionManager_CreatePacketRoutingInfoList(v14, v84, *(v12 + 22048));
  if (!PacketRoutingInfoList)
  {
    VTP_SendCompoundPacket_cold_1();
    goto LABEL_96;
  }

  v16 = PacketRoutingInfoList;
  v17 = VCConnectionManager_CopyConnectionForQuality(v14, 1);
  v18 = v17;
  v83 = 0;
  v73 = (v10 << 16);
  v71 = v8;
  v20 = v10 == 800 || v10 == 700;
  v70 = v20;
  v75 = 336 * v8;
  v66 = (v9 + 220);
  v21 = -1;
  v22 = -1;
  ptr = v16;
  v77 = v17;
  v74 = v8;
  v76 = v10;
  v67 = v14;
  do
  {
    if (*(v16 + 2) != 4)
    {
      goto LABEL_60;
    }

    if (*(v9 + 255))
    {
      v23 = 1;
    }

    else
    {
      v23 = *v16;
    }

    *(v9 + 255) = v23 & 1;
    v24 = *(v16 + 15);
    v82 = VCConnectionIDS_LinkID(v18);
    if (v8 >= 0x1F)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        v22 = -1;
        goto LABEL_57;
      }

      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v90 = v25;
        v91 = 2080;
        v92 = "_VTP_SendCompoundPacketWithDatagramChannel";
        v93 = 1024;
        v94 = 5477;
        v95 = 1024;
        v96 = v8;
        v97 = 1024;
        v98 = 30;
        v27 = buf;
        v28 = v26;
        v29 = " [%s] %s:%d Datagram count %d is larger than VTP max compound packet datagram count %d";
        v30 = 40;
LABEL_23:
        _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, v29, v27, v30);
      }

      goto LABEL_55;
    }

    v31 = *(v16 + 20);
    v81 = *(v16 + 14);
    v32 = *(v12 + 21624);
    v33 = HIDWORD(v31);
    memset(v102, 0, 300);
    memset(v101, 0, sizeof(v101));
    bzero(buf, 0xE10uLL);
    v72 = v24;
    if (v32 == 1)
    {
      if (v10 == 700)
      {
        LOBYTE(v33) = -120;
      }

      else if (v10 == 800)
      {
        LOBYTE(v33) = -72;
      }
    }

    v34 = 0;
    v35 = 0;
    LODWORD(v22) = 0;
    v80 = v31;
    v79 = v31 & 0xFFFFFF000000FFFFLL | v73 & 0xFFFFFF00FFFFFFFFLL | (v33 << 32);
    v36 = buf;
    v37 = &v102[8];
    do
    {
      if (*(v9 + v34))
      {
        v8 = v74;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v57 = VRTraceErrorLogLevelToCSTR();
          v58 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *v85 = 136315650;
            *&v85[4] = v57;
            *&v85[12] = 2080;
            *&v85[14] = "_VTP_SendCompoundPacketWithDatagramChannel";
            *&v85[22] = 1024;
            *&v85[24] = 5497;
            v27 = v85;
            v28 = v58;
            v29 = " [%s] %s:%d Cannot not handle open facetime with IDS compound packet";
LABEL_65:
            v30 = 28;
            goto LABEL_23;
          }
        }

LABEL_55:
        v22 = -1;
LABEL_56:
        v18 = v77;
        goto LABEL_57;
      }

      v38 = v9;
      v39 = v12;
      v40 = v38;
      v41 = v38 + v34;
      if (*(v38 + v34 + 313) == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v54 = VRTraceErrorLogLevelToCSTR();
          v55 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *v85 = 136315650;
            *&v85[4] = v54;
            *&v85[12] = 2080;
            *&v85[14] = "_VTP_SendCompoundPacketWithDatagramChannel";
            *&v85[22] = 1024;
            *&v85[24] = 5501;
            _os_log_error_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_ERROR, " [%s] %s:%d Un-encrypted/un-authenticated packet detected. Dropping...", v85, 0x1Cu);
          }
        }

        *__error() = 81;
        v8 = v74;
        v12 = v39;
        v9 = v40;
        goto LABEL_55;
      }

      v42 = *(v41 + 224);
      v86 = *(v41 + 208);
      v87 = v42;
      v88 = *(v41 + 240);
      v43 = *(v41 + 192);
      *v85 = *(v41 + 176);
      *&v85[16] = v43;
      _VTP_UpdateIDSDatagramOptionWithChannelDataFormat(v85, v36, v80 == v82);
      kdebug_trace();
      *(v37 - 1) = v79;
      *v37 = v81;
      v37 += 5;
      v101[v35] = v36;
      v44 = *(v78 + 4 * v35);
      v10 = v76;
      v22 = (v44 + v22);
      v45 = *(v41 + 8);
      v12 = v39;
      _VTP_ReportIDSOnTheWireBytesLocked(v39, v45, v44, v36, 1);
      ++v35;
      v34 += 336;
      v36 += 120;
      v9 = v40;
    }

    while (v75 != v34);
    if (!v72)
    {
      v8 = v74;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v59 = VRTraceErrorLogLevelToCSTR();
        v60 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *v85 = 136315650;
          *&v85[4] = v59;
          *&v85[12] = 2080;
          *&v85[14] = "_VTP_SendCompoundPacketWithDatagramChannel";
          *&v85[22] = 1024;
          *&v85[24] = 5521;
          v27 = v85;
          v28 = v60;
          v29 = " [%s] %s:%d nil datagramChannel passed";
          goto LABEL_65;
        }
      }

      goto LABEL_55;
    }

    v8 = v74;
    [v72 writeDatagrams:v68 datagramsSize:v78 datagramsInfo:v102 datagramsCount:v74 options:v101 completionHandler:0];
    if (!v22 && *(v40 + 218) != 1)
    {
      v22 = 0;
      goto LABEL_56;
    }

    v46 = 0;
    v47 = v66;
    v18 = v77;
    do
    {
      if (v22)
      {
        v48 = *(v78 + 4 * v46);
      }

      else
      {
        v48 = 0;
      }

      VCConnectionManager_UpdateTransmittedPacketsAndBytes(v67, (v16 + 8), v48, v70, *(v47 - 15), *(v47 - 20), *(v47 - 16) != 0);
      if (*(v47 - 2) == 1)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v49 = VRTraceErrorLogLevelToCSTR();
          v50 = *MEMORY[0x1E6986650];
          v51 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v52 = *v47;
              *buf = 136316418;
              v90 = v49;
              v91 = 2080;
              v92 = "VTP_SendCompoundPacket";
              v93 = 1024;
              v94 = 3360;
              v95 = 1024;
              v96 = 3360;
              v97 = 1024;
              v98 = v46;
              v99 = 1024;
              v100 = v52;
              _os_log_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VTP/VTransport.m:%d: index=%d, statsID = %d", buf, 0x2Eu);
            }
          }

          else if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            v53 = *v47;
            *buf = 136316418;
            v90 = v49;
            v91 = 2080;
            v92 = "VTP_SendCompoundPacket";
            v93 = 1024;
            v94 = 3360;
            v95 = 1024;
            v96 = 3360;
            v97 = 1024;
            v98 = v46;
            v99 = 1024;
            v100 = v53;
            _os_log_debug_impl(&dword_1DB56E000, v50, OS_LOG_TYPE_DEBUG, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VTP/VTransport.m:%d: index=%d, statsID = %d", buf, 0x2Eu);
          }
        }

        [v67 updateSessionStats:*v47];
        v18 = v77;
      }

      ++v46;
      v47 += 168;
    }

    while (v71 != v46);
    v10 = v76;
LABEL_57:
    v56 = v83;
    v21 = v83 & 1;
    if ((v83 & 1) == 0)
    {
      v56 = 1;
    }

    v83 = v56;
LABEL_60:
    v16 = *(v16 + 16);
    _VTP_HealthPrint(v12, v22, v21, v10, 1);
  }

  while (v16);
  if (v18)
  {
    CFRelease(v18);
  }

  pthread_rwlock_unlock((v12 + 21648));
  v61 = ptr;
  do
  {
    v62 = v61[16];
    CFAllocatorDeallocate(*(v12 + 22048), v61);
    v61 = v62;
  }

  while (v62);
LABEL_83:
  CheckOutHandleDebug();
  return v22;
}

void VTP_GetReportingStats(void *a1)
{
  if (a1)
  {
    v2 = CheckInHandleDebug();
    if (v2)
    {
      a1[3] = atomic_fetch_add_explicit(v2 + 2748, 0, memory_order_relaxed);
      a1[2] = atomic_fetch_add_explicit(v2 + 2748, 0, memory_order_relaxed);
      *a1 = atomic_fetch_add_explicit(v2 + 2745, 0, memory_order_relaxed);
      a1[1] = atomic_fetch_add_explicit(v2 + 2746, 0, memory_order_relaxed);

      CheckOutHandleDebug();
    }

    else
    {
      VTP_GetReportingStats_cold_1();
    }
  }

  else
  {
    VTP_GetReportingStats_cold_2();
  }
}

uint64_t VTP_SendWithSourceDestinationIP(uint64_t a1, uint64_t a2, _OWORD *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = CheckInHandleDebug();
  if (v12)
  {
    v13 = v12;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[5] = v14;
    v21[6] = v14;
    v21[3] = v14;
    v21[4] = v14;
    v21[1] = v14;
    v21[2] = v14;
    v21[0] = v14;
    VCSDInfoConstructWithIPPorts(a1, a2, 0, 0, v21);
    v15 = _VTP_SendWithSourceDestinationInfo(v13, v21, a3, a4, a5, a6, 0);
    if (v15 >= 1)
    {
      v16 = *(a6 + 8);
      if (v16)
      {
        v17 = CheckInHandleDebug();
        if (v17)
        {
          v18 = v17;
          pthread_rwlock_rdlock((v17 + 21648));
          v19 = VTP_getConnectionManagerForCallID(v18, v16);
          VCConnectionManager_UpdateTransmittedPacketsAndBytes(v19, v21, v15, 0, 0, 0, 0);
          pthread_rwlock_unlock((v18 + 21648));
          CheckOutHandleDebug();
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            VTP_SendWithSourceDestinationIP_cold_1();
          }
        }
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
        VTP_SendWithSourceDestinationIP_cold_2();
      }
    }

    *__error() = 13;
    return -1;
  }

  return v15;
}

void VTP_ReleasePacket(void **a1)
{
  if (a1 && *a1)
  {
    v2 = CheckInHandleDebug();
    if (v2)
    {
      v3 = v2;
      VCBlockBuffer_Clear(*a1 + 520);
      VCMemoryPool_Free(*(v3 + 22040), *a1);
      *a1 = 0;

      CheckOutHandleDebug();
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_ReleasePacket_cold_1();
      }
    }
  }
}

uint64_t VTP_Recvfrom(uint64_t a1, char **a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = 2148991018;
  if (!a2)
  {
    return 2148990977;
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  *a2 = 0;
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Recvfrom_cold_2();
      }
    }

    *__error() = 13;
    return 2148990978;
  }

  v6 = v5;
  pthread_rwlock_rdlock((v5 + 5376));
  v7 = *(v6 + 5576);
  if (!v7)
  {
LABEL_6:
    pthread_rwlock_unlock((v6 + 5376));
    CheckOutHandleDebug();
    *__error() = 9;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Recvfrom_cold_1();
      }
    }

    return v2;
  }

  while (*v7 != a1)
  {
    v7 = *(v7 + 47);
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  pthread_mutex_lock((v7 + 66));
  ++v7[62];
  pthread_mutex_unlock((v7 + 66));
  pthread_rwlock_unlock((v6 + 5376));
  pthread_mutex_lock((v7 + 34));
  while (1)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      break;
    }

    if (*(v7 + 25))
    {
      goto LABEL_19;
    }

    pthread_cond_wait((v7 + 50), (v7 + 34));
  }

  if (!*(v7 + 25))
  {
    v20 = *(v7 + 16);
    v12 = VCMemoryPool_Alloc(*(v6 + 22040));
    v19 = v12;
    if (!v12)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v22 = v16;
          v23 = 2080;
          v24 = "VTP_Recvfrom";
          v25 = 1024;
          v26 = 3769;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP_Recvfrom failed to allocate packet info", buf, 0x1Cu);
        }
      }

      *__error() = 9;
      v11 = 2148991009;
      goto LABEL_34;
    }

    v13 = v12;
    memcpy(v12 + 8, (v8 + 48), *(v8 + 176));
    *(v13 + 34) = *(v8 + 176);
    *v13 = *(v8 + 184);
    v14 = *(v8 + 8);
    v15 = *(v8 + 24);
    *(v13 + 172) = *(v8 + 40);
    *(v13 + 156) = v15;
    *(v13 + 140) = v14;
    if (*(v8 + 223) == 1)
    {
      *(v13 + 35) |= 1u;
    }

    memcpy(v13 + 184, (v8 + 208), 0x150uLL);
    if (*(v8 + 220) != 1 || (*(v8 + 208) | 4) == 6)
    {
      VCBlockBuffer_Copy(v8 + 552, (v13 + 520));
      v11 = 0;
LABEL_29:
      *a2 = v13;
LABEL_34:
      *(v7 + 16) = *(v8 + 544);
      *(v8 + 544) = 0;
      _VTP_ReleaseVPKTPacket(v6, &v20, 3, a1);
      goto LABEL_35;
    }

    v11 = DTLS_Read(*(v6 + 8 * *v7 + 13432), *(v8 + 552), v13 + 65, *(v6 + 22024), *(v6 + 22032));
    if ((v11 & 0x80000000) == 0)
    {
      if (CMBlockBufferGetDataPointer(*(v8 + 552), 0, 0, v13 + 66, v13 + 67))
      {
        goto LABEL_29;
      }

      v11 = 2148990980;
    }

    VTP_ReleasePacket(&v19);
    goto LABEL_34;
  }

LABEL_19:
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = v9;
      v23 = 2080;
      v24 = "VTP_Recvfrom";
      v25 = 1024;
      v26 = 3762;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP_Recvfrom failed due to socket already closed", buf, 0x1Cu);
    }
  }

  *__error() = 9;
  v11 = 2148991009;
LABEL_35:
  pthread_mutex_unlock((v7 + 34));
  pthread_mutex_lock((v7 + 66));
  --v7[62];
  pthread_cond_signal((v7 + 82));
  pthread_mutex_unlock((v7 + 66));
  CheckOutHandleDebug();
  return v11;
}

uint64_t VTP_SetAFRCRecvMode(uint64_t a1, int a2)
{
  v4 = CheckInHandleDebug();
  if (v4)
  {
    *(v4 + 5888) = a1;
    *(v4 + 5896) = a2 != 0;
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetAFRCRecvMode_cold_1();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }
}

uint64_t VTP_SetAFRC(int a1, uint64_t a2)
{
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    pthread_rwlock_wrlock((v4 + 5376));
    v6 = *(v5 + 5576);
    if (v6)
    {
      while (*v6 != a1 || (*(v6 + 28) & 0xF0) == 0)
      {
        v6 = *(v6 + 376);
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      v8 = 0;
      v7 = 0;
      *(v6 + 384) = a2;
    }

    else
    {
LABEL_6:
      v7 = 0xFFFFFFFFLL;
      v8 = 1;
    }

    pthread_rwlock_unlock((v5 + 5376));
    CheckOutHandleDebug();
    if (v8)
    {
      *__error() = 9;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetAFRC_cold_1();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }

  return v7;
}

uint64_t VTP_SetAFRCConnectionNumber(int a1)
{
  v2 = CheckInHandleDebug();
  if (v2)
  {
    AFRCSetConnectionNumber(*(v2 + 5888), a1);
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetAFRCConnectionNumber_cold_1();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }
}

uint64_t VTP_NotifyAFRCRxEstimate(uint64_t a1, char a2, unint64_t a3, int a4, int a5, double a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 == 0xFFFFFFFFLL)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] != 1)
      {
        v6 = 2;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEBUG))
        {
          VTP_NotifyAFRCRxEstimate_cold_2();
        }

        return v6;
      }

      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = v7;
        v13 = 2080;
        v14 = "VTP_NotifyAFRCRxEstimate";
        v15 = 1024;
        v16 = 4051;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP_NotifyAFRCRxEstimate INVALID_HANDLE", &v11, 0x1Cu);
      }
    }

    return 2;
  }

  if ((a2 & 0x10) != 0)
  {
    v9 = 0;
  }

  else
  {
    if ((a2 & 0x20) == 0)
    {
      v6 = 2148991010;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_NotifyAFRCRxEstimate_cold_1();
        }
      }

      return v6;
    }

    v9 = 1;
  }

  return RTPNotifyAFRCRxEstimate(a1, v9, a3, a4, a5, a6);
}

uint64_t VTP_RegisterPacketCallback(_OWORD *a1, uint64_t a2, const void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1 || !a3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_RegisterPacketCallback_cold_5();
      }
    }

    v16 = __error();
    v17 = 22;
    goto LABEL_23;
  }

  v6 = CheckInHandleDebug();
  if (!v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_RegisterPacketCallback_cold_4();
      }
    }

    v16 = __error();
    v17 = 13;
LABEL_23:
    *v16 = v17;
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v8 = a1[4];
  v9 = a1[6];
  v10 = a1[7];
  __s1[5] = a1[5];
  __s1[6] = v9;
  __s1[7] = v10;
  v11 = a1[1];
  __s1[0] = *a1;
  __s1[1] = v11;
  v12 = a1[3];
  __s1[2] = a1[2];
  __s1[3] = v12;
  __s1[4] = v8;
  pthread_rwlock_rdlock((v6 + 5376));
  for (i = *(v7 + 5576); i; i = *(i + 376))
  {
    v14 = *i;
    if (__darwin_check_fd_set_overflow(*i, __s1, 0))
    {
      *(__s1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v14);
    }
  }

  if (!memcmp(__s1, &VTP_RegisterPacketCallback_zeros, 0x80uLL))
  {
    v22 = 0;
    pthread_rwlock_wrlock((v7 + 5584));
    AddOneVFDSETList(v7, &v22, a1, 0, 0, a3, a2);
    pthread_rwlock_unlock((v7 + 5584));
    if (v22)
    {
      v15 = *v22;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        v21 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v24 = v19;
            v25 = 2080;
            v26 = "VTP_RegisterPacketCallback";
            v27 = 1024;
            v28 = 4558;
            v29 = 1024;
            v30 = v15;
            _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Successfully added new vfd set with id: %d", buf, 0x22u);
          }
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          VTP_RegisterPacketCallback_cold_2();
        }
      }

      goto LABEL_14;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_RegisterPacketCallback_cold_3();
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
        VTP_RegisterPacketCallback_cold_1();
      }
    }

    *__error() = 9;
  }

  v15 = 0xFFFFFFFFLL;
LABEL_14:
  pthread_rwlock_unlock((v7 + 5376));
  CheckOutHandleDebug();
  return v15;
}

_DWORD *AddOneVFDSETList(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v14 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10A0040C283F163uLL);
  if (v14)
  {
    v15 = v14;
    pthread_mutex_init((v14 + 8), 0);
    pthread_cond_init((v15 + 72), 0);
    pthread_mutex_lock((a1 + 4288));
    v16 = 0;
    v17 = a1 + 4352;
    while ((*(v17 + v16) & 1) != 0)
    {
      if (++v16 == 1024)
      {
        LODWORD(v16) = -1;
        goto LABEL_11;
      }
    }

    *(v17 + v16) = 1;
LABEL_11:
    result = pthread_mutex_unlock((a1 + 4288));
    *v15 = v16;
    *(v15 + 16) = a3;
    *(v15 + 17) = a4;
    *(v15 + 18) = a5;
    if (a6)
    {
      result = _Block_copy(a6);
      *(v15 + 20) = result;
      *(v15 + 21) = a7;
    }

    v19 = *(a1 + 5784);
    if (v19)
    {
      do
      {
        v20 = v19;
        v19 = *(v19 + 152);
      }

      while (v19);
      v21 = (v20 + 152);
    }

    else
    {
      v21 = (a1 + 5784);
    }

    *v21 = v15;
    *a2 = v15;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          AddOneVFDSETList_cold_2();
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        AddOneVFDSETList_cold_1();
      }
    }

    result = __error();
    *result = 12;
  }

  return result;
}

void VTP_UnregisterPacketCallback(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = CheckInHandleDebug();
  if (v2)
  {
    v3 = v2;
    pthread_rwlock_rdlock((v2 + 5376));
    pthread_rwlock_wrlock((v3 + 5584));
    RemoveOneVFDSETList(v3, a1);
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = v4;
        v8 = 2080;
        v9 = "VTP_UnregisterPacketCallback";
        v10 = 1024;
        v11 = 4580;
        v12 = 1024;
        v13 = a1;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Successfully removed vfd set with id: %d", &v6, 0x22u);
      }
    }

    pthread_rwlock_unlock((v3 + 5584));
    pthread_rwlock_unlock((v3 + 5376));
    CheckOutHandleDebug();
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VTP_UnregisterPacketCallback_cold_1();
    }
  }
}

void RemoveOneVFDSETList(uint64_t a1, int a2)
{
  v2 = *(a1 + 5784);
  if (v2)
  {
    v5 = (a1 + 5784);
    v6 = a1 + 4352;
    do
    {
      if (*v2 == a2)
      {
        pthread_mutex_lock((a1 + 4288));
        *(v6 + a2) = 0;
        pthread_mutex_unlock((a1 + 4288));
        v7 = *(v2 + 20);
        if (v7)
        {
          _Block_release(v7);
        }

        *v5 = *(v2 + 19);
        pthread_mutex_destroy((v2 + 2));
        pthread_cond_destroy((v2 + 18));
        free(v2);
      }

      else
      {
        v5 = v2 + 38;
      }

      v2 = *v5;
    }

    while (*v5);
  }
}

uint64_t VTP_Select(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v87 = *MEMORY[0x1E69E9840];
  v54 = 0;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v85 = v9;
  v86 = v9;
  v83 = v9;
  v84 = v9;
  v81 = v9;
  v82 = v9;
  __src = v9;
  v80 = v9;
  v10 = CheckInHandleDebug();
  if (!v10)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_Select_cold_1();
      }
    }

    v13 = __error();
    v14 = 13;
    goto LABEL_26;
  }

  v11 = v10;
  if (a5)
  {
    v12 = micro() + *(a5 + 8) / 1000000.0 + *a5;
  }

  else
  {
    v12 = 0.0;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  __src = 0u;
  v80 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  if (a2)
  {
    v15 = a2[5];
    v83 = a2[4];
    v84 = v15;
    v16 = a2[7];
    v85 = a2[6];
    v86 = v16;
    v17 = a2[1];
    __src = *a2;
    v80 = v17;
    v18 = a2[3];
    v81 = a2[2];
    v82 = v18;
  }

  if (a3)
  {
    v19 = a3[5];
    v75 = a3[4];
    v76 = v19;
    v20 = a3[7];
    v77 = a3[6];
    v78 = v20;
    v21 = a3[1];
    v71 = *a3;
    v72 = v21;
    v22 = a3[3];
    v73 = a3[2];
    v74 = v22;
  }

  if (a4)
  {
    v23 = a4[5];
    v67 = a4[4];
    v68 = v23;
    v24 = a4[7];
    v69 = a4[6];
    v70 = v24;
    v25 = a4[1];
    v63 = *a4;
    v64 = v25;
    v26 = a4[3];
    v65 = a4[2];
    v66 = v26;
  }

  v62 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  __s1 = 0u;
  if (a2)
  {
    v27 = a2[5];
    v59 = a2[4];
    v60 = v27;
    v28 = a2[7];
    v61 = a2[6];
    v62 = v28;
    v29 = a2[1];
    __s1 = *a2;
    v56 = v29;
    v30 = a2[3];
    v57 = a2[2];
    v58 = v30;
  }

  pthread_rwlock_rdlock((v11 + 5376));
  pthread_rwlock_wrlock((v11 + 5584));
  for (i = *(v11 + 5576); i; i = *(i + 376))
  {
    v32 = *i;
    if (__darwin_check_fd_set_overflow(*i, &__s1, 0))
    {
      *(&__s1 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v32);
    }

    if (!*(i + 128))
    {
      v33 = *i;
      if (__darwin_check_fd_set_overflow(*i, &__src, 0))
      {
        *(&__src + ((v33 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v33);
      }
    }
  }

  if (memcmp(&__s1, &VTP_Select_zeros, 0x80uLL))
  {
    pthread_rwlock_unlock((v11 + 5584));
    pthread_rwlock_unlock((v11 + 5376));
    CheckOutHandleDebug();
    v13 = __error();
    v14 = 9;
LABEL_26:
    *v13 = v14;
    return 0xFFFFFFFFLL;
  }

  if (!memcmp(&__src, &VTP_Select_zeros, 0x80uLL))
  {
    AddOneVFDSETList(v11, &v54, a2, a3, a4, 0, 0);
    v44 = v54;
    pthread_rwlock_unlock((v11 + 5584));
    pthread_rwlock_unlock((v11 + 5376));
    if (!v44)
    {
      CheckOutHandleDebug();
      return 0xFFFFFFFFLL;
    }

    pthread_mutex_lock((v44 + 8));
    if (a5)
    {
      if (!*(v44 + 120) && !*(v44 + 121))
      {
        while (1)
        {
          v45 = v12 - micro();
          if (v45 < 0.0)
          {
            break;
          }

          v53.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v53.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          convertTimeoutToRelativeTimespec(v45);
          v53.tv_sec = v46;
          v53.tv_nsec = v47;
          v48 = pthread_cond_timedwait_relative_np((v44 + 72), (v44 + 8), &v53);
          if (v48 == 60 || *(v44 + 120) || *(v44 + 121))
          {
            goto LABEL_51;
          }
        }

        v48 = 60;
LABEL_51:
        pthread_mutex_unlock((v44 + 8));
        v49 = *(v44 + 121);
        pthread_rwlock_wrlock((v11 + 5584));
        RemoveOneVFDSETList(v11, *v44);
        pthread_rwlock_unlock((v11 + 5584));
        if (v48)
        {
          if (v48 == 60)
          {
            v34 = 0;
            goto LABEL_30;
          }

          *__error() = v48;
        }

        else
        {
          if (!v49)
          {
            pthread_rwlock_rdlock((v11 + 5376));
            v50 = *(v11 + 5576);
            if (v50)
            {
              v34 = 0;
              do
              {
                if (a2)
                {
                  if (*(v50 + 128))
                  {
                    v51 = *v50;
                    if (__darwin_check_fd_set_overflow(*v50, a2, 0))
                    {
                      if ((*(a2 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v51))
                      {
                        v52 = *v50;
                        if (__darwin_check_fd_set_overflow(*v50, &__src, 0))
                        {
                          *(&__src + ((v52 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v52;
                        }

                        v34 = (v34 + 1);
                      }
                    }
                  }
                }

                v50 = *(v50 + 376);
              }

              while (v50);
            }

            else
            {
              v34 = 0;
            }

            pthread_rwlock_unlock((v11 + 5376));
            goto LABEL_30;
          }

          *__error() = 9;
        }

        v34 = 0xFFFFFFFFLL;
        goto LABEL_30;
      }
    }

    else if (!*(v44 + 120) && !*(v44 + 121))
    {
      do
      {
        v48 = pthread_cond_wait((v44 + 72), (v44 + 8));
      }

      while (!*(v44 + 120) && !*(v44 + 121));
      goto LABEL_51;
    }

    v48 = 0;
    goto LABEL_51;
  }

  pthread_rwlock_unlock((v11 + 5584));
  pthread_rwlock_unlock((v11 + 5376));
  v34 = 1;
LABEL_30:
  if (a2)
  {
    memmove(a2, &__src, 0x80uLL);
  }

  if (a3)
  {
    v35 = v76;
    a3[4] = v75;
    a3[5] = v35;
    v36 = v78;
    a3[6] = v77;
    a3[7] = v36;
    v37 = v72;
    *a3 = v71;
    a3[1] = v37;
    v38 = v74;
    a3[2] = v73;
    a3[3] = v38;
  }

  if (a4)
  {
    v39 = v68;
    a4[4] = v67;
    a4[5] = v39;
    v40 = v70;
    a4[6] = v69;
    a4[7] = v40;
    v41 = v64;
    *a4 = v63;
    a4[1] = v41;
    v42 = v66;
    a4[2] = v65;
    a4[3] = v42;
  }

  CheckOutHandleDebug();
  return v34;
}

uint64_t VTP_GetSendRecvStats(uint64_t *a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  if (v4)
  {
    *a1 = atomic_fetch_add_explicit(v4, 0, memory_order_relaxed);
    *a2 = atomic_fetch_add_explicit(v4 + 1, 0, memory_order_relaxed);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *a1;
        v8 = *a2;
        v10 = 136316162;
        v11 = v5;
        v12 = 2080;
        v13 = "VTP_GetSendRecvStats";
        v14 = 1024;
        v15 = 4738;
        v16 = 2048;
        v17 = v7;
        v18 = 2048;
        v19 = v8;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP_GetSendRecvStats %lld/%lld", &v10, 0x30u);
      }
    }

    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_GetSendRecvStats_cold_1();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }
}

uint64_t VTP_SetCellularUniqueTag(int a1, int a2)
{
  v4 = CheckInHandleDebug();
  if (v4)
  {
    v5 = v4;
    pthread_rwlock_wrlock((v4 + 5376));
    v6 = *(v5 + 5576);
    if (v6)
    {
      while (*v6 != a1 || (*(v6 + 29) & 1) == 0)
      {
        v6 = *(v6 + 376);
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      v8 = 0;
      v7 = 0;
      *(v6 + 76) = a2;
    }

    else
    {
LABEL_6:
      v7 = 0xFFFFFFFFLL;
      v8 = 1;
    }

    pthread_rwlock_unlock((v5 + 5376));
    CheckOutHandleDebug();
    if (v8)
    {
      *__error() = 9;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetCellularUniqueTag_cold_1();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }

  return v7;
}

void VTP_SetPktTag(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 < 5)
  {
    *(a1 + 8 * a2 + 256) = a3;
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VTP_SetPktTag_cold_1();
    }
  }
}

uint64_t VTP_SetRTPSrc(int a1, uint64_t a2, _BYTE *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  *(v24 + 14) = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[3] = v5;
  v24[0] = v5;
  v23[2] = v5;
  *(v23 + 14) = 0xAAAAAAAAAAAAAAAALL;
  __n_4[9] = v5;
  v23[0] = v5;
  __n_4[8] = v5;
  v6 = CheckInHandleDebug();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v6)
  {
    if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__n_4[0]) = 136316418;
        *(__n_4 + 4) = v8;
        WORD6(__n_4[0]) = 2080;
        *(__n_4 + 14) = "VTP_SetRTPSrc";
        WORD3(__n_4[1]) = 1024;
        DWORD2(__n_4[1]) = 4844;
        WORD6(__n_4[1]) = 1024;
        *(&__n_4[1] + 14) = a1;
        WORD1(__n_4[2]) = 2080;
        *(&__n_4[2] + 4) = IPPORTToStringWithSize();
        WORD6(__n_4[2]) = 2080;
        *(&__n_4[2] + 14) = IPPORTToStringWithSize();
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP_SetRTPSrc for callID(%08X) local[%s] dst[%s].", __n_4, 0x36u);
      }
    }

    pthread_rwlock_wrlock((v6 + 5376));
    v10 = *(v6 + 5880);
    if (!v10)
    {
      goto LABEL_35;
    }

    while (*v10 != a1)
    {
      v10 = *(v10 + 2056);
      if (!v10)
      {
        goto LABEL_35;
      }
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __n_4[6] = v12;
    __n_4[7] = v12;
    __n_4[4] = v12;
    __n_4[5] = v12;
    __n_4[2] = v12;
    __n_4[3] = v12;
    __n_4[0] = v12;
    __n_4[1] = v12;
    if (*a3)
    {
      IPPORTToSA6();
    }

    else
    {
      IPPORTToSA();
    }

    v13 = *(v10 + 2024);
    if (v13 < 1)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      v14 = 0;
      v15 = (v10 + 1232);
      while (memcmp(v15, __n_4, 0x80uLL))
      {
        ++v14;
        v15 += 128;
        if (v13 == v14)
        {
          goto LABEL_23;
        }
      }
    }

    if (v14 == v13)
    {
LABEL_23:
      if (v13 >= 5)
      {
        v16 = 5;
      }

      else
      {
        v16 = v13;
      }

      memmove((v10 + 1360), (v10 + 1232), v16 << 7);
      memmove((v10 + 2004), (v10 + 2000), 4 * v16);
      memcpy((v10 + 1232), __n_4, 0x80uLL);
      *(v10 + 2000) = 128;
      v17 = *(v10 + 2024);
      if (v17 < 6)
      {
        *(v10 + 2024) = v17 + 1;
      }

      if (VRTraceGetErrorLogLevelForModule() <= 6)
      {
        goto LABEL_35;
      }

      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      *buf = 136315650;
      v26 = v18;
      v27 = 2080;
      v28 = "SetVFDSASrc";
      v29 = 1024;
      v30 = 4823;
      v20 = " [%s] %s:%d VTP added VFDSASrc successfully.";
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_35;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      *buf = 136315650;
      v26 = v21;
      v27 = 2080;
      v28 = "SetVFDSASrc";
      v29 = 1024;
      v30 = 4825;
      v20 = " [%s] %s:%d VTP found duplicate VFDSASrc entry.";
    }

    _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x1Cu);
LABEL_35:
    pthread_rwlock_unlock((v6 + 5376));
    CheckOutHandleDebug();
    return 0;
  }

  if (ErrorLogLevelForModule >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      VTP_SetRTPSrc_cold_1();
    }
  }

  *__error() = 13;
  return 0xFFFFFFFFLL;
}

uint64_t VTP_SetNetworkLogLevel(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    v10 = __error();
    v11 = 13;
LABEL_24:
    *v10 = v11;
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  pthread_rwlock_rdlock((v4 + 5376));
  *&v30[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v6;
  *v30 = v6;
  v28 = v6;
  IPPORTToStringWithSize();
  v7 = *(v5 + 5576);
  if (!v7)
  {
LABEL_15:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetNetworkLogLevel_cold_2();
      }
    }

    pthread_rwlock_unlock((v5 + 5376));
LABEL_19:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetNetworkLogLevel_cold_3();
      }
    }

    CheckOutHandleDebug();
    v10 = __error();
    v11 = 9;
    goto LABEL_24;
  }

  v8 = *a1 & 1;
  while (1)
  {
    if ((v7[21] & 1) == v8)
    {
      if (v8)
      {
        if (*(v7 + 13) != *(a1 + 20) || *(v7 + 14) != *(a1 + 28))
        {
          goto LABEL_14;
        }
      }

      else if (v7[26] != *(a1 + 20))
      {
        goto LABEL_14;
      }

      if (*(v7 + 60) == *(a1 + 36))
      {
        break;
      }
    }

LABEL_14:
    v7 = *(v7 + 47);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = *v7;
      *buf = 136316162;
      v19 = v14;
      v20 = 2080;
      v21 = "FindVFDByLocalIPPort";
      v22 = 1024;
      v23 = 2790;
      v24 = 2080;
      v25 = &v28;
      v26 = 1024;
      v27 = v16;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Connection result with localIPPort %s uses vfd(%d) for send.", buf, 0x2Cu);
    }
  }

  v17 = v7[5];
  pthread_rwlock_unlock((v5 + 5376));
  if (v17 == -1)
  {
    goto LABEL_19;
  }

  *__error() = 0;
  v28 = 0u;
  v29 = 0u;
  __strlcpy_chk();
  LODWORD(v29) = a2;
  *(&v29 + 4) = 0x111010001;
  v12 = 0;
  if (ioctl(v17, 0xC020699BuLL, &v28) < 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_SetNetworkLogLevel_cold_1();
      }
    }

    v12 = 0xFFFFFFFFLL;
  }

  CheckOutHandleDebug();
  return v12;
}

uint64_t VTP_NotifyRemoteNoRemotePacket(int a1, double a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  *v7 = a2;
  v6 = a1;
  v2 = CheckInHandleDebug();
  if (v2)
  {
    v3 = v2;
    pthread_mutex_lock((v2 + 48));
    v4 = *(v3 + 112);
    if (v4)
    {
      v4(1, *(v3 + 120), v7, &v6);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_NotifyRemoteNoRemotePacket_cold_1();
      }
    }

    pthread_mutex_unlock((v3 + 48));
    CheckOutHandleDebug();
  }

  else
  {
    *__error() = 13;
  }

  return 0xFFFFFFFFLL;
}

uint64_t VTP_NotifySendFailed(uint64_t a1)
{
  v2 = CheckInHandleDebug();
  if (v2)
  {
    v3 = v2;
    pthread_mutex_lock((v2 + 48));
    v4 = *(v3 + 112);
    if (v4)
    {
      v4(2, *(v3 + 120), a1, 0);
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_NotifySendFailed_cold_1();
      }
    }

    pthread_mutex_unlock((v3 + 48));
    CheckOutHandleDebug();
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_NotifySendFailed_cold_2();
      }
    }

    *__error() = 13;
  }

  return 0xFFFFFFFFLL;
}

uint64_t VTP_SetClientRelayVFD(int a1, int a2)
{
  v4 = CheckInHandleDebug();
  if (!v4)
  {
    v7 = __error();
    v8 = 13;
    goto LABEL_7;
  }

  v5 = v4;
  pthread_rwlock_wrlock((v4 + 5376));
  v6 = *(v5 + 5880);
  if (!v6)
  {
LABEL_5:
    pthread_rwlock_unlock((v5 + 5376));
    CheckOutHandleDebug();
    v7 = __error();
    v8 = 22;
LABEL_7:
    *v7 = v8;
    return 0xFFFFFFFFLL;
  }

  while (*v6 != a1)
  {
    v6 = *(v6 + 2056);
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  if (a2 == -1)
  {
    v9 = 0;
    *(v6 + 2032) = 0;
  }

  else
  {
    v11 = *(v5 + 5576);
    if (v11)
    {
      while (*v11 != a2)
      {
        v11 = *(v11 + 376);
        if (!v11)
        {
          goto LABEL_16;
        }
      }

      *(v6 + 2032) = v11;
    }

LABEL_16:
    if (*(v6 + 2032))
    {
      v9 = 0;
    }

    else
    {
      *__error() = 22;
      v9 = 0xFFFFFFFFLL;
    }
  }

  pthread_rwlock_unlock((v5 + 5376));
  CheckOutHandleDebug();
  return v9;
}

uint64_t VTP_DetectNAT64Prefix(int a1, const char *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    p_prots = &OBJC_PROTOCOL___VCRateControlAlgorithm.prots;
    v5 = CheckInHandleDebug();
    if (v5)
    {
      v6 = v5;
      pthread_rwlock_wrlock((v5 + 5376));
      v7 = *(v6 + 5576);
      if (v7)
      {
        v8 = "";
        v23 = v6;
        do
        {
          if (*v7 == a1 && (*(v7 + 84) & 1) != 0)
          {
            VCNAT64ResolverRegisterForPrefixUpdate(a2, VTP_NAT64PrefixResolvedCallback, v7);
            Prefix = VCNAT64ResolverGetPrefix(a2, (v7 + 396));
            if (Prefix < 0 || !VCNAT64ResolverIsNonzeroPrefix((v7 + 396)))
            {
              if (VRTraceGetErrorLogLevelForModule() >= 6)
              {
                v13 = VRTraceErrorLogLevelToCSTR();
                v14 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v15 = v8;
                  v16 = p_prots;
                  v17 = *v7;
                  v18 = *(v7 + 84) & 1;
                  v19 = VCNAT64ResolverIsNonzeroPrefix((v7 + 396));
                  *buf = 136316930;
                  v25 = v13;
                  v26 = 2080;
                  v27 = "VTP_DetectNAT64Prefix";
                  v28 = 1024;
                  v29 = 5036;
                  v30 = 2080;
                  v31 = a2;
                  v32 = 1024;
                  v33 = v17;
                  p_prots = v16;
                  v8 = v15;
                  v6 = v23;
                  v34 = 1024;
                  v35 = Prefix;
                  v36 = 1024;
                  v37 = v18;
                  v38 = 1024;
                  v39 = v19;
                  _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Interface %s (VFD %d) ISNOT behind NAT (result %d, local is IPv6 %d, isNoneZero %d)", buf, 0x3Eu);
                }
              }
            }

            else
            {
              if (VRTraceGetErrorLogLevelForModule() >= 6)
              {
                v10 = VRTraceErrorLogLevelToCSTR();
                v11 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  v12 = *v7;
                  *buf = 136316162;
                  v25 = v10;
                  v26 = 2080;
                  v27 = "VTP_DetectNAT64Prefix";
                  v28 = 1024;
                  v29 = 5033;
                  v30 = 2080;
                  v31 = a2;
                  v32 = 1024;
                  v33 = v12;
                  _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Interface %s (VFD %d) IS behind NAT", buf, 0x2Cu);
                }
              }

              *(v7 + 392) = 1;
            }
          }

          v7 = *(v7 + 376);
        }

        while (v7);
      }

      pthread_rwlock_unlock((v6 + 5376));
      CheckOutHandleDebug();
      v20 = __error();
      v21 = 9;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_DetectNAT64Prefix_cold_1();
        }
      }

      v20 = __error();
      v21 = 13;
    }
  }

  else
  {
    v20 = __error();
    v21 = 22;
  }

  *v20 = v21;
  return 0xFFFFFFFFLL;
}

void VTP_NAT64PrefixResolvedCallback(int *a1, uint64_t a2, _DWORD *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  *v28 = 0u;
  memset(v29, 0, sizeof(v29));
  if ((a1[21] & 1) != 0 && VCNAT64ResolverIsNonzeroPrefix(a3))
  {
    *(a1 + 99) = *a3;
    *(a1 + 392) = 1;
    v27[0] = 0xAAAAAAAAAAAAAAAALL;
    v27[1] = 0xAAAAAAAAAAAAAAAALL;
    nw_nat64_synthesize_v6();
    inet_ntop(30, v27, v28, 0x2Eu);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *a1;
        *buf = 136316418;
        v17 = v6;
        v18 = 2080;
        v19 = "VTP_NAT64PrefixResolvedCallback";
        v20 = 1024;
        v21 = 5119;
        v22 = 2080;
        *v23 = a2;
        *&v23[8] = 1024;
        v24 = v8;
        v25 = 2080;
        v26 = v28;
        v9 = " [%s] %s:%d Interface %s (VFD %d) IS behind NAT 64 with prefix: %s";
        v10 = v7;
        v11 = 54;
LABEL_9:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = VCNAT64ResolverIsNonzeroPrefix(a3);
      v15 = a1[21] & 1;
      *buf = 136316162;
      v17 = v12;
      v18 = 2080;
      v19 = "VTP_NAT64PrefixResolvedCallback";
      v20 = 1024;
      v21 = 5121;
      v22 = 1024;
      *v23 = v14;
      *&v23[4] = 1024;
      *&v23[6] = v15;
      v9 = " [%s] %s:%d provided a all zeroed prefix (%d), local is IPv6 (%d)";
      v10 = v13;
      v11 = 40;
      goto LABEL_9;
    }
  }
}

uint64_t VTP_RegisterConnectionManagerWithCallID(const void *a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v3 = CheckInHandleDebug();
  if (v3)
  {
    v4 = v3;
    pthread_rwlock_wrlock((v3 + 21648));
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(*(v4 + 21848), v5, a1);
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v11 = v6;
        v12 = 2080;
        v13 = "VTP_RegisterConnectionManagerWithCallID";
        v14 = 1024;
        v15 = 5138;
        v16 = 2048;
        v17 = a1;
        v18 = 1024;
        v19 = valuePtr;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP registered connectionManager %p with callID %d", buf, 0x2Cu);
      }
    }

    CFRelease(v5);
    pthread_rwlock_unlock((v4 + 21648));
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_RegisterConnectionManagerWithCallID_cold_1();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }
}

uint64_t VTP_DeregisterConnectionManagerWithCallID(int a1)
{
  v20 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  v1 = CheckInHandleDebug();
  if (v1)
  {
    v2 = v1;
    pthread_rwlock_wrlock((v1 + 21648));
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    CFDictionaryRemoveValue(*(v2 + 21848), v3);
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = valuePtr;
        Count = CFDictionaryGetCount(*(v2 + 21848));
        *buf = 136316162;
        v11 = v4;
        v12 = 2080;
        v13 = "VTP_DeregisterConnectionManagerWithCallID";
        v14 = 1024;
        v15 = 5161;
        v16 = 1024;
        v17 = v6;
        v18 = 2048;
        v19 = Count;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VTP de-registered connectionManager with callID %d, remaining items number %ld", buf, 0x2Cu);
      }
    }

    CFRelease(v3);
    pthread_rwlock_unlock((v2 + 21648));
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_DeregisterConnectionManagerWithCallID_cold_1();
      }
    }

    *__error() = 13;
    return 0xFFFFFFFFLL;
  }
}

uint64_t VTP_IncrementTotalBytesSent(unint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = CheckInHandleDebug();
  if (v2)
  {
    atomic_fetch_add_explicit(v2, a1, memory_order_relaxed);
    CheckOutHandleDebug();
    return 0;
  }

  else
  {
    VTP_IncrementTotalBytesSent_cold_1(&v4);
    return v4;
  }
}

void sub_1DB8433AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t VTP_GetPktType(int a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __VTP_GetPktType_block_invoke;
  v6[3] = &unk_1E85F7698;
  v6[4] = &v7;
  v6[5] = a2;
  v3 = CheckInHandleDebug();
  if (v3)
  {
    VTP_ProcessVFD(v3, a1, 1, v6);
    CheckOutHandleDebug();
    if (*(v8 + 6) == -1)
    {
      *__error() = 9;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          VTP_GetPktType_cold_1();
        }
      }
    }
  }

  else
  {
    *__error() = 13;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        VTP_GetPktType_cold_2();
      }
    }
  }

  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1DB8435D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}