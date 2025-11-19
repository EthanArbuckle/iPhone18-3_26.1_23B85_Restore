_BYTE *MSGAllocateSyncHandle(int a1, char a2)
{
  v4 = malloc_type_malloc(8uLL, 0x1000040789AEA99uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    v4[4] = a2;
  }

  else
  {
    MSGAllocateSyncHandle_cold_1();
  }

  return v5;
}

uint64_t MSGStartSync(unsigned int *a1)
{
  if (a1)
  {
    v2 = &remoteController;
    if (!*(a1 + 4))
    {
      v2 = &localController;
    }

    v3 = *v2;
    if (*v2)
    {
      std::mutex::lock(controllerMutex);
      v4 = MSGController::SyncStart(v3, *a1);
      std::mutex::unlock(controllerMutex);
      return v4;
    }

    else
    {
      MSGStartSync_cold_1();
      return v6;
    }
  }

  else
  {
    MSGStartSync_cold_2();
    return v7;
  }
}

uint64_t MSGGetSyncConfig(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v53 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    MSGGetSyncConfig_cold_2();
LABEL_29:
    Config = v30;
    goto LABEL_26;
  }

  if (*(a1 + 4))
  {
    v4 = remoteController;
  }

  else
  {
    v4 = localController;
  }

  if (!v4)
  {
    MSGGetSyncConfig_cold_1();
    goto LABEL_29;
  }

  std::mutex::lock(controllerMutex);
  Config = MSGController::SyncGetConfig(v4, *a1, &v30, a3);
  std::mutex::unlock(controllerMutex);
  if (Config)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v44 = "retcode == 0 ";
      v45 = 2080;
      v46 = &unk_240CB6BAA;
      v47 = 2080;
      v48 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGClientAPI/MSGClientAPI_Syncs.cpp";
      v49 = 1024;
      v50 = 85;
      v51 = 2048;
      v52 = Config;
      _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "MSGGetSyncConfig";
      v45 = 1024;
      LODWORD(v46) = Config;
      _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_Syncs::%s: Error fetching config: %#x\n\n", buf, 0x12u);
    }
  }

  else
  {
    v8 = BYTE1(v30);
    v9 = BYTE2(v30);
    v10 = v31;
    v11 = v33;
    v12 = v34;
    v13 = v35;
    v14 = v37;
    v15 = v39;
    v16 = v41;
    if (v34 == 4)
    {
      v17 = v40 >> 10;
    }

    else
    {
      v17 = v40;
    }

    if (v30)
    {
      v18 = v38;
      v19 = v36;
      v20 = v32;
      if (v34 == 4)
      {
        LOWORD(v21) = v42 >> 10;
      }

      else
      {
        LOWORD(v21) = v42;
      }

      v21 = v21;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v22 = v34 == 4;
      v23 = v42 >> 10;
      if (v34 != 4)
      {
        v23 = v42;
      }

      if (v34 < 3)
      {
        v22 = 1;
      }

      v24 = !v22;
      v25 = 32;
      if (!v24)
      {
        v25 = 16;
      }

      v26 = v42 >> v25;
      v27 = v42 & 0xFFFF00000000;
      if (v24)
      {
        v27 = 0;
      }

      v21 = v27 & 0xFFFFFFFF00000000 | (v26 << 16) | v23;
    }

    Config = 0;
    *a2 = v30;
    *(a2 + 1) = v8;
    *(a2 + 2) = v9;
    *(a2 + 3) = v10;
    *(a2 + 4) = v20;
    *(a2 + 8) = v11;
    *(a2 + 10) = 0;
    *(a2 + 14) = 0;
    *(a2 + 16) = v12;
    *(a2 + 20) = v13;
    *(a2 + 21) = 0;
    *(a2 + 22) = v19;
    *(a2 + 24) = v14;
    *(a2 + 28) = v18;
    *(a2 + 30) = 0;
    *(a2 + 32) = v15;
    *(a2 + 40) = v17;
    *(a2 + 48) = v16;
    *(a2 + 56) = v21;
  }

LABEL_26:
  v28 = *MEMORY[0x277D85DE8];
  return Config;
}

uint64_t MSGResetSync(unsigned int *a1)
{
  if (a1)
  {
    v2 = &remoteController;
    if (!*(a1 + 4))
    {
      v2 = &localController;
    }

    v3 = *v2;
    if (*v2)
    {
      std::mutex::lock(controllerMutex);
      v4 = *a1;
      v5 = MSGController::SyncReset(v3);
      std::mutex::unlock(controllerMutex);
      return v5;
    }

    else
    {
      MSGResetSync_cold_1();
      return v7;
    }
  }

  else
  {
    MSGResetSync_cold_2();
    return v8;
  }
}

uint64_t MSGInitBaseSync(unsigned int *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = &remoteController;
    if (!*(a1 + 4))
    {
      v3 = &localController;
    }

    v4 = *v3;
    if (*v3)
    {
      std::mutex::lock(controllerMutex);
      v6 = MSGController::MasterSyncInit(v4, *a1, a2);
      std::mutex::unlock(controllerMutex);
      return v6;
    }

    else
    {
      MSGInitBaseSync_cold_1();
      return v8;
    }
  }

  else
  {
    MSGInitBaseSync_cold_2();
    return v9;
  }
}

uint64_t MSGInitDerivedSync(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = &remoteController;
    if (!*(a1 + 4))
    {
      v4 = &localController;
    }

    v5 = *v4;
    if (*v4)
    {
      std::mutex::lock(controllerMutex);
      v8 = MSGController::SlaveSyncInit(v5, *a1, a2, a3);
      std::mutex::unlock(controllerMutex);
      return v8;
    }

    else
    {
      MSGInitDerivedSync_cold_1();
      return v10;
    }
  }

  else
  {
    MSGInitDerivedSync_cold_2();
    return v11;
  }
}

uint64_t MSGConfigureBaseSync(unsigned int *a1, uint64_t a2)
{
  if (!a1)
  {
    MSGConfigureBaseSync_cold_2();
    return v21;
  }

  v3 = &remoteController;
  if (!*(a1 + 4))
  {
    v3 = &localController;
  }

  v4 = *v3;
  if (!*v3)
  {
    MSGConfigureBaseSync_cold_1();
    return v21;
  }

  std::mutex::lock(controllerMutex);
  v6 = *a1;
  v7 = *a2;
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  LOWORD(v10) = v8 << 10;
  if (*a2 != 4)
  {
    v10 = *(a2 + 40);
  }

  v11 = *(a2 + 4);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  LODWORD(v21) = *a2;
  BYTE4(v21) = v11;
  DWORD2(v21) = v12;
  v15 = v14 << 10;
  if (v7 != 4)
  {
    v15 = v14;
  }

  v22 = v13;
  v23 = v15;
  v16 = v7 != 4 && v7 >= 3;
  v17 = 16;
  if (!v16)
  {
    v17 = 32;
  }

  if (v7 >= 3)
  {
    v18 = v10;
  }

  else
  {
    v18 = v8;
  }

  v24 = v9;
  v25 = v8 & 0xFFFF0000 | ((v8 >> v17) << 32) | v18;
  v19 = MSGController::MasterSyncConfig(v4, v6, &v21);
  std::mutex::unlock(controllerMutex);
  return v19;
}

uint64_t MSGConfigureDerivedSync(unsigned int *a1, uint64_t a2)
{
  if (!a1)
  {
    MSGConfigureDerivedSync_cold_2();
    return v19;
  }

  v3 = &remoteController;
  if (!*(a1 + 4))
  {
    v3 = &localController;
  }

  v4 = *v3;
  if (!*v3)
  {
    MSGConfigureDerivedSync_cold_1();
    return v19;
  }

  std::mutex::lock(controllerMutex);
  v6 = *a1;
  v7 = *(a2 + 4);
  v8 = *(a2 + 6);
  v9 = *(a2 + 8);
  v10 = *(a2 + 12);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  LODWORD(v19) = *a2;
  BYTE4(v19) = v7;
  WORD3(v19) = v8;
  DWORD2(v19) = v9;
  WORD6(v19) = v10;
  if (v19 == 4)
  {
    v15 = v12 << 10;
  }

  else
  {
    v15 = v12;
  }

  v20 = v11;
  v21 = v15;
  v16 = v14 << 10;
  if (v19 != 4)
  {
    v16 = v14;
  }

  v22 = v13;
  v23 = v16;
  v17 = MSGController::SlaveSyncConfig(v4, v6, &v19);
  std::mutex::unlock(controllerMutex);
  return v17;
}

uint64_t MSGEnableSyncInterrupt(unsigned int *a1)
{
  if (a1)
  {
    v2 = &remoteController;
    if (!*(a1 + 4))
    {
      v2 = &localController;
    }

    v3 = *v2;
    if (*v2)
    {
      std::mutex::lock(controllerMutex);
      v4 = *a1;
      v5 = MSGController::SyncInterruptEnable(v3);
      std::mutex::unlock(controllerMutex);
      return v5;
    }

    else
    {
      MSGEnableSyncInterrupt_cold_1();
      return v7;
    }
  }

  else
  {
    MSGEnableSyncInterrupt_cold_2();
    return v8;
  }
}

uint64_t MSGGetSyncRunState(unsigned int *a1, BOOL *a2)
{
  v7 = 0;
  if (a1)
  {
    if (*(a1 + 4))
    {
      v3 = remoteController;
    }

    else
    {
      v3 = localController;
    }

    if (v3)
    {
      std::mutex::lock(controllerMutex);
      Status = MSGController::SyncGetStatus(v3, *a1, &v7);
      std::mutex::unlock(controllerMutex);
      *a2 = v7;
    }

    else
    {
      MSGGetSyncRunState_cold_1();
      return v8;
    }
  }

  else
  {
    MSGGetSyncRunState_cold_2();
    return v9;
  }

  return Status;
}

uint64_t MSGRegisterForSyncTiming(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 4) == 1)
    {
      MSGRegisterForSyncTiming_cold_1();
      return v7;
    }

    else
    {
      v4 = localController;
      std::mutex::lock(controllerMutex);
      v5 = MSGController::registerForTimingInfo(v4, *a1, a2, (a1 + 5));
      std::mutex::unlock(controllerMutex);
      *(a1 + 5) = 0;
      return v5;
    }
  }

  else
  {
    MSGRegisterForSyncTiming_cold_2();
    return v8;
  }
}

uint64_t MSGUnregisterFromSyncTiming(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 4) == 1)
    {
      MSGUnregisterFromSyncTiming_cold_1();
      return v5;
    }

    else
    {
      v2 = localController;
      std::mutex::lock(controllerMutex);
      v3 = MSGController::unregisterForTimingInfo(v2, *(a1 + 5));
      std::mutex::unlock(controllerMutex);
      return v3;
    }
  }

  else
  {
    MSGUnregisterFromSyncTiming_cold_2();
    return v6;
  }
}

uint64_t MSGGetCurrentSyncTiming(uint64_t a1, unint64_t *a2)
{
  v2 = localController;
  v6 = 0;
  if (!a1)
  {
    MSGGetCurrentSyncTiming_cold_3();
    return v7;
  }

  if (*(a1 + 4) == 1)
  {
    MSGGetCurrentSyncTiming_cold_2();
    return v7;
  }

  if (*a1)
  {
    MSGGetCurrentSyncTiming_cold_1();
    return v7;
  }

  std::mutex::lock(controllerMutex);
  CurrentMasterFrame = MSGController::getCurrentMasterFrame(v2, a2, a2 + 1, &v6);
  std::mutex::unlock(controllerMutex);
  return CurrentMasterFrame;
}

uint64_t MSGGetFutureSyncTiming(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v28[5] = *MEMORY[0x277D85DE8];
  v4 = localController;
  v17 = 0;
  if (!a1)
  {
    MSGGetFutureSyncTiming_cold_3();
LABEL_13:
    NextNFrames = *buf;
    goto LABEL_9;
  }

  if (*(a1 + 4) == 1)
  {
    MSGGetFutureSyncTiming_cold_2();
    goto LABEL_13;
  }

  if (*a1)
  {
    MSGGetFutureSyncTiming_cold_1();
    goto LABEL_13;
  }

  std::mutex::lock(controllerMutex);
  NextNFrames = MSGController::getNextNFrames(v4, *(a1 + 5), a2, a3, v28, &v17);
  std::mutex::unlock(controllerMutex);
  if (NextNFrames)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v19 = "retcode == 0 ";
      v20 = 2080;
      v21 = &unk_240CB6BAA;
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGClientAPI/MSGClientAPI_Syncs.cpp";
      v24 = 1024;
      v25 = 315;
      v26 = 2048;
      v27 = NextNFrames;
      _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "MSGGetFutureSyncTiming";
      v20 = 1024;
      LODWORD(v21) = NextNFrames;
      _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_Syncs::%s: getNextNFrames failed with retcode: %#x\n\n", buf, 0x12u);
    }
  }

  else
  {
    if (a2)
    {
      v10 = v17;
      v11 = a2;
      v12 = (a4 + 8);
      v13 = v28;
      do
      {
        v14 = *v13++;
        *(v12 - 1) = v10;
        *v12 = v14;
        ++v10;
        v12 += 2;
        --v11;
      }

      while (v11);
    }

    NextNFrames = 0;
  }

LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
  return NextNFrames;
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

_BYTE *MSGAllocateEventTriggerHandle(int a1, char a2)
{
  v4 = malloc_type_malloc(8uLL, 0x1000040789AEA99uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    v4[4] = a2;
  }

  else
  {
    MSGAllocateEventTriggerHandle_cold_1();
  }

  return v5;
}

uint64_t MSGSetEventTriggerConfig(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = &remoteController;
  if (!*(a1 + 4))
  {
    v2 = &localController;
  }

  v3 = *v2;
  if (*v2)
  {
    std::mutex::lock(controllerMutex);
    v6 = MSGController::SetEventTriggerConfig(v3, *a1, *a2 & 0xFFFFFFFFFFFFFFLL);
    std::mutex::unlock(controllerMutex);
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v10 = 136316162;
        v11 = "retcode == 0 ";
        v12 = 2080;
        *v13 = &unk_240CB6BAA;
        *&v13[8] = 2080;
        v14 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGClientAPI/MSGClientAPI_EventTriggers.cpp";
        v15 = 1024;
        v16 = 56;
        v17 = 2048;
        v18 = v6;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", &v10, 0x30u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v9 = *a1;
        v10 = 136315650;
        v11 = "MSGSetEventTriggerConfig";
        v12 = 1024;
        *v13 = v6;
        *&v13[4] = 1024;
        *&v13[6] = v9;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers::%s: Error (%x) setting event trigger config for id %d\n\n", &v10, 0x18u);
      }
    }
  }

  else
  {
    MSGSetEventTriggerConfig_cold_1();
    v6 = v10;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t MSGGetEventTriggerConfig(uint64_t a1, uint64_t *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4))
  {
    v2 = remoteController;
  }

  else
  {
    v2 = localController;
  }

  if (v2)
  {
    std::mutex::lock(controllerMutex);
    EventTriggerConfig = MSGController::GetEventTriggerConfig(v2, *a1, &outputStruct);
    std::mutex::unlock(controllerMutex);
    if (EventTriggerConfig)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v11 = "retcode == 0 ";
        v12 = 2080;
        *v13 = &unk_240CB6BAA;
        *&v13[8] = 2080;
        v14 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGClientAPI/MSGClientAPI_EventTriggers.cpp";
        v15 = 1024;
        v16 = 78;
        v17 = 2048;
        v18 = EventTriggerConfig;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v8 = *a1;
        *buf = 136315650;
        v11 = "MSGGetEventTriggerConfig";
        v12 = 1024;
        *v13 = EventTriggerConfig;
        *&v13[4] = 1024;
        *&v13[6] = v8;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers::%s: Error (%x) fetching event trigger config for id %d\n\n", buf, 0x18u);
      }
    }

    else
    {
      *a2 = outputStruct & 0xFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    MSGGetEventTriggerConfig_cold_1();
    EventTriggerConfig = *buf;
  }

  v6 = *MEMORY[0x277D85DE8];
  return EventTriggerConfig;
}

uint64_t MSGGetEventTriggerCount(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  outputStruct = 0;
  if (*(a1 + 4))
  {
    v2 = remoteController;
  }

  else
  {
    v2 = localController;
  }

  if (v2)
  {
    std::mutex::lock(controllerMutex);
    EventTriggerCountSnapshot = MSGController::GetEventTriggerCountSnapshot(v2, *a1, &outputStruct);
    std::mutex::unlock(controllerMutex);
    if (EventTriggerCountSnapshot)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v11 = "retcode == 0 ";
        v12 = 2080;
        *v13 = &unk_240CB6BAA;
        *&v13[8] = 2080;
        v14 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGClientAPI/MSGClientAPI_EventTriggers.cpp";
        v15 = 1024;
        v16 = 101;
        v17 = 2048;
        v18 = EventTriggerCountSnapshot;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v8 = *a1;
        *buf = 136315650;
        v11 = "MSGGetEventTriggerCount";
        v12 = 1024;
        *v13 = EventTriggerCountSnapshot;
        *&v13[4] = 1024;
        *&v13[6] = v8;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers::%s: Error (%x) fetching event trigger count snapshot for id %d\n\n", buf, 0x18u);
      }
    }

    else
    {
      *a2 = outputStruct;
    }
  }

  else
  {
    MSGGetEventTriggerCount_cold_1();
    EventTriggerCountSnapshot = *buf;
  }

  v6 = *MEMORY[0x277D85DE8];
  return EventTriggerCountSnapshot;
}

uint64_t MSGEnableEventTriggerInterrupt(uint64_t a1, unsigned __int8 a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = &remoteController;
  if (!*(a1 + 4))
  {
    v2 = &localController;
  }

  v3 = *v2;
  if (*v2)
  {
    std::mutex::lock(controllerMutex);
    v6 = MSGController::EventTriggerInterruptEnable(v3, *a1, a2);
    std::mutex::unlock(controllerMutex);
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v10 = 136316162;
        v11 = "retcode == 0 ";
        v12 = 2080;
        *v13 = &unk_240CB6BAA;
        *&v13[8] = 2080;
        v14 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGClientAPI/MSGClientAPI_EventTriggers.cpp";
        v15 = 1024;
        v16 = 123;
        v17 = 2048;
        v18 = v6;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", &v10, 0x30u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v9 = *a1;
        v10 = 136315650;
        v11 = "MSGEnableEventTriggerInterrupt";
        v12 = 1024;
        *v13 = v6;
        *&v13[4] = 1024;
        *&v13[6] = v9;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers::%s: Error (%x) enabling event trigger interrupt for id %d\n\n", &v10, 0x18u);
      }
    }
  }

  else
  {
    MSGEnableEventTriggerInterrupt_cold_1();
    v6 = v10;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t MSGGetEventTriggerInterruptEnable(uint64_t a1, _DWORD *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  outputStruct = 0;
  if (*(a1 + 4))
  {
    v2 = remoteController;
  }

  else
  {
    v2 = localController;
  }

  if (v2)
  {
    std::mutex::lock(controllerMutex);
    EventTriggerInterruptEnable = MSGController::GetEventTriggerInterruptEnable(v2, &outputStruct);
    std::mutex::unlock(controllerMutex);
    if (EventTriggerInterruptEnable)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v9 = "retcode == 0 ";
        v10 = 2080;
        v11 = &unk_240CB6BAA;
        v12 = 2080;
        v13 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGClientAPI/MSGClientAPI_EventTriggers.cpp";
        v14 = 1024;
        v15 = 144;
        v16 = 2048;
        v17 = EventTriggerInterruptEnable;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "MSGGetEventTriggerInterruptEnable";
        v10 = 1024;
        LODWORD(v11) = EventTriggerInterruptEnable;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers::%s: Error (%x) getting the event trigger interrupt enable\n\n", buf, 0x12u);
      }
    }

    else
    {
      *a2 = outputStruct;
    }
  }

  else
  {
    MSGGetEventTriggerInterruptEnable_cold_1();
    EventTriggerInterruptEnable = *buf;
  }

  v5 = *MEMORY[0x277D85DE8];
  return EventTriggerInterruptEnable;
}

uint64_t MSGGetEventTriggerInterruptStatus(uint64_t a1, _DWORD *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  outputStruct = 0;
  if (*(a1 + 4))
  {
    v2 = remoteController;
  }

  else
  {
    v2 = localController;
  }

  if (v2)
  {
    std::mutex::lock(controllerMutex);
    EventTriggerInterruptStatus = MSGController::GetEventTriggerInterruptStatus(v2, &outputStruct);
    std::mutex::unlock(controllerMutex);
    if (EventTriggerInterruptStatus)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v9 = "retcode == 0 ";
        v10 = 2080;
        v11 = &unk_240CB6BAA;
        v12 = 2080;
        v13 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGClientAPI/MSGClientAPI_EventTriggers.cpp";
        v14 = 1024;
        v15 = 166;
        v16 = 2048;
        v17 = EventTriggerInterruptStatus;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "MSGGetEventTriggerInterruptStatus";
        v10 = 1024;
        LODWORD(v11) = EventTriggerInterruptStatus;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers::%s: Error (%x) getting the event trigger interrupt status\n\n", buf, 0x12u);
      }
    }

    else
    {
      *a2 = outputStruct;
    }
  }

  else
  {
    MSGGetEventTriggerInterruptStatus_cold_1();
    EventTriggerInterruptStatus = *buf;
  }

  v5 = *MEMORY[0x277D85DE8];
  return EventTriggerInterruptStatus;
}

uint64_t MSGClearEventTriggerInterruptStatus(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = &remoteController;
  if (!*(a1 + 4))
  {
    v1 = &localController;
  }

  v2 = *v1;
  if (*v1)
  {
    std::mutex::lock(controllerMutex);
    v4 = MSGController::EventTriggerClearInterruptStatus(v2, *a1);
    std::mutex::unlock(controllerMutex);
    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v8 = 136316162;
        v9 = "retcode == 0 ";
        v10 = 2080;
        *v11 = &unk_240CB6BAA;
        *&v11[8] = 2080;
        v12 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGClientAPI/MSGClientAPI_EventTriggers.cpp";
        v13 = 1024;
        v14 = 188;
        v15 = 2048;
        v16 = v4;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", &v8, 0x30u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v7 = *a1;
        v8 = 136315650;
        v9 = "MSGClearEventTriggerInterruptStatus";
        v10 = 1024;
        *v11 = v4;
        *&v11[4] = 1024;
        *&v11[6] = v7;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers::%s: Error (%x) clearing the event trigger interrupt status for id %d\n\n", &v8, 0x18u);
      }
    }
  }

  else
  {
    MSGClearEventTriggerInterruptStatus_cold_1();
    v4 = v8;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t MSGRegisterForEventTriggerTiming(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = 0;
  if (*(a1 + 4))
  {
    v1 = remoteController;
  }

  else
  {
    v1 = localController;
  }

  if (v1)
  {
    std::mutex::lock(controllerMutex);
    v3 = MSGController::registerForEventTriggerInfo(v1, *a1, &v7);
    std::mutex::unlock(controllerMutex);
    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v9 = "retcode == 0 ";
        v10 = 2080;
        *v11 = &unk_240CB6BAA;
        *&v11[8] = 2080;
        v12 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGClientAPI/MSGClientAPI_EventTriggers.cpp";
        v13 = 1024;
        v14 = 210;
        v15 = 2048;
        v16 = v3;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v6 = *a1;
        *buf = 136315650;
        v9 = "MSGRegisterForEventTriggerTiming";
        v10 = 1024;
        *v11 = v3;
        *&v11[4] = 1024;
        *&v11[6] = v6;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers::%s: Error (%x) registering for the event trigger timing for id %d\n\n", buf, 0x18u);
      }
    }

    else
    {
      *(a1 + 5) = v7;
    }
  }

  else
  {
    MSGRegisterForEventTriggerTiming_cold_1();
    v3 = *buf;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t MSGUnregisterFromEventTriggerTiming(int *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = &remoteController;
  if (!*(a1 + 4))
  {
    v1 = &localController;
  }

  v2 = *v1;
  if (*v1)
  {
    std::mutex::lock(controllerMutex);
    v4 = MSGController::unregisterForEventTriggerInfo(v2, *(a1 + 5));
    std::mutex::unlock(controllerMutex);
    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v8 = 136316162;
        v9 = "retcode == 0 ";
        v10 = 2080;
        *v11 = &unk_240CB6BAA;
        *&v11[8] = 2080;
        v12 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGClientAPI/MSGClientAPI_EventTriggers.cpp";
        v13 = 1024;
        v14 = 233;
        v15 = 2048;
        v16 = v4;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", &v8, 0x30u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v7 = *a1;
        v8 = 136315650;
        v9 = "MSGUnregisterFromEventTriggerTiming";
        v10 = 1024;
        *v11 = v4;
        *&v11[4] = 1024;
        *&v11[6] = v7;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers::%s: Error (%x) unregistering from the event trigger timing for id %d\n\n", &v8, 0x18u);
      }
    }
  }

  else
  {
    MSGUnregisterFromEventTriggerTiming_cold_1();
    v4 = v8;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t MSGGetEventTriggerTimings(int *a1, unsigned int *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v19 = v3;
  if (*(a1 + 4))
  {
    v4 = remoteController;
  }

  else
  {
    v4 = localController;
  }

  if (!v4)
  {
    MSGGetEventTriggerTimings_cold_2();
LABEL_14:
    v9 = *buf;
    goto LABEL_11;
  }

  v7 = malloc_type_malloc(24 * v3, 0x10000404363B735uLL);
  if (!v7)
  {
    MSGGetEventTriggerTimings_cold_1(buf);
    goto LABEL_14;
  }

  v8 = v7;
  std::mutex::lock(controllerMutex);
  v9 = MSGController::dumpMostRecentEventTriggers(v4, *(a1 + 5), &v19, v8);
  std::mutex::unlock(controllerMutex);
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v21 = "retcode == 0 ";
      v22 = 2080;
      *v23 = &unk_240CB6BAA;
      *&v23[8] = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGClientAPI/MSGClientAPI_EventTriggers.cpp";
      v25 = 1024;
      v26 = 263;
      v27 = 2048;
      v28 = v9;
      _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v18 = *a1;
      *buf = 136315650;
      v21 = "MSGGetEventTriggerTimings";
      v22 = 1024;
      *v23 = v9;
      *&v23[4] = 1024;
      *&v23[6] = v18;
      _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGClientAPI_EventTriggers::%s: Error (%x) dumping the most recent event trigger information for id %d\n\n", buf, 0x18u);
    }
  }

  else
  {
    v10 = v19;
    if (v19)
    {
      v11 = (a3 + 16);
      v12 = (v8 + 1);
      do
      {
        v13 = *(v12 - 2);
        v14 = *(v12 - 1);
        v15 = *v12;
        v12 += 3;
        *(v11 - 2) = v13;
        *(v11 - 1) = v14 >> 10;
        *v11 = v15;
        v11 += 3;
        --v10;
      }

      while (v10);
    }

    free(v8);
    v9 = 0;
  }

LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t MSGCreate(int a1, uint64_t a2)
{
  v2 = a2;
  if (!controllerMutex)
  {
    operator new();
  }

  if (a1)
  {
    std::mutex::lock(controllerMutex);
    if (!localController)
    {
      operator new();
    }

    v2 = 3758097106;
    MSGCreate_cold_1();
  }

  else if (a2)
  {
    std::mutex::lock(controllerMutex);
    if (!remoteController)
    {
      operator new();
    }

    v2 = 3758097106;
    MSGCreate_cold_2();
  }

  return v2;
}

uint64_t MSGGetSystemState(BOOL *a1)
{
  v2 = localController;
  v5 = 0;
  std::mutex::lock(controllerMutex);
  IsMSGSystemReady = MSGController::IsMSGSystemReady(v2, &v5);
  std::mutex::unlock(controllerMutex);
  *a1 = v5;
  return IsMSGSystemReady;
}

uint64_t AppleMSGClient::syncStart(uint64_t a1, int a2, char a3, char *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a4;
  v9[0] = a3;
  v9[1] = v4;
  v10 = 0;
  v11 = a2;
  v12 = *a4;
  v13 = *(a4 + 2);
  v5 = (*(*a1 + 168))(a1, 0, v9, 32, 0, 0);
  v6 = v5;
  if (v5)
  {
    AppleMSGClient::syncStart();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t AppleMSGClient::syncStop(uint64_t a1, int a2, char a3, char *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a4;
  v9[0] = a3;
  v9[1] = v4;
  v10 = 0;
  v11 = a2;
  v12 = *a4;
  v13 = *(a4 + 2);
  v5 = (*(*a1 + 168))(a1, 1, v9, 32, 0, 0);
  v6 = v5;
  if (v5)
  {
    AppleMSGClient::syncStop();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t AppleMSGClient::syncReset(uint64_t a1, int a2)
{
  v5 = a2;
  v2 = (*(*a1 + 168))(a1, 2, &v5, 4, 0, 0);
  v3 = v2;
  if (v2)
  {
    AppleMSGClient::syncReset();
  }

  return v3;
}

uint64_t AppleMSGClient::syncGetRunState(uint64_t a1, int a2, _BYTE *a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v6 = (*(*a1 + 168))(a1, 4, &v11, 4, v12, 48);
  v7 = v6;
  if (v6)
  {
    AppleMSGClient::syncGetRunState();
  }

  else
  {
    *a3 = v12[0];
    *(a4 + 32) = v15;
    v8 = v14;
    *a4 = v13;
    *(a4 + 16) = v8;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t AppleMSGClient::syncSetInterruptState(uint64_t a1, int a2, char a3, char a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = a3;
  v10 = a4;
  v11 = 0;
  v12 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = (*(*a1 + 168))(a1, 5, &v8, 112, 0, 0);
  v5 = v4;
  if (v4)
  {
    AppleMSGClient::syncSetInterruptState();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t AppleMSGClient::syncInitialize(uint64_t a1, int a2, char a3, char a4, int a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v9[1] = a3;
  memset(&v9[2], 0, 7);
  v9[9] = a4;
  v10 = 0;
  v11 = a2;
  v12 = a5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  v5 = (*(*a1 + 168))(a1, 3, v9, 112, 0, 0);
  v6 = v5;
  if (v5)
  {
    AppleMSGClient::syncInitialize();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t AppleMSGClient::syncSetConfig(uint64_t a1, int a2, __int128 *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3[3];
  v24 = a3[2];
  v25 = v3;
  v26 = a3[4];
  v4 = a3[1];
  v22 = *a3;
  v23 = v4;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v16 = v22;
  v5 = *(a3 + 1);
  v6 = *(a3 + 24) ^ 1;
  v27 = *(a3 + 10);
  v11[0] = v5;
  v11[1] = v6;
  v12 = 0;
  v13 = 0;
  v14 = a2;
  v15 = 0;
  v21 = v27;
  v17 = v4;
  v7 = (*(*a1 + 168))(a1, 7, v11, 112, 0, 0);
  v8 = v7;
  if (v7)
  {
    AppleMSGClient::syncSetConfig();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t AppleMSGClient::syncSetConfigSequence(uint64_t a1, int a2, __int128 *a3, char a4, __int16 a5)
{
  *&v26[7] = *MEMORY[0x277D85DE8];
  v5 = a3[2];
  v20 = a3[3];
  v6 = a3[5];
  v21 = a3[4];
  v22 = v6;
  v7 = a3[1];
  v17 = *a3;
  v18 = v7;
  v15 = 0;
  v14 = 0;
  v13 = a4;
  v16 = a2;
  v8 = *(a3 + 12);
  v19 = v5;
  v23 = v8;
  v24 = 0;
  v25 = a5;
  *v26 = 0;
  *&v26[3] = 0;
  v9 = (*(*a1 + 168))(a1, 9, &v13, 136, 0, 0);
  v10 = v9;
  if (v9)
  {
    AppleMSGClient::syncSetConfigSequence();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t AppleMSGClient::syncSetConfigBatch(uint64_t a1, const void *a2, unsigned int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  bzero(__dst, 0x510uLL);
  if (a3)
  {
    memcpy(__dst, a2, 144 * a3);
  }

  v10[0] = a3;
  v10[1] = 0;
  memcpy(v11, __dst, sizeof(v11));
  v6 = (*(*a1 + 168))(a1, 11, v10, 1304, 0, 0);
  v7 = v6;
  if (v6)
  {
    AppleMSGClient::syncSetConfigBatch();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t AppleMSGClient::syncGetInterruptState(uint64_t a1, int a2, _BYTE *a3, _BYTE *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v6 = (*(*a1 + 168))(a1, 6, &v10, 4, v11, 176);
  v7 = v6;
  if (v6)
  {
    AppleMSGClient::syncGetInterruptState();
  }

  else
  {
    *a3 = v11[0];
    *a4 = v11[1];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t AppleMSGClient::syncGetConfig(uint64_t a1, int a2, _OWORD *a3, int a4, char a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v17[0] = 0;
  v17[1] = a4;
  v18 = a5;
  v19 = 0;
  v20 = 0;
  v21 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = (*(*a1 + 168))(a1, 8, v17, 112, v12, 176);
  v7 = v6;
  if (v6)
  {
    AppleMSGClient::syncGetConfig();
  }

  else
  {
    v8 = v14;
    *a3 = v13;
    a3[1] = v8;
    v9 = v16;
    a3[2] = v15;
    a3[3] = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t AppleMSGClient::syncGetConfigSequence(uint64_t a1, int a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v4 = (*(*a1 + 168))(a1, 10, &v11, 4, v12, 176);
  v5 = v4;
  if (v4)
  {
    AppleMSGClient::syncGetConfigSequence();
  }

  else
  {
    v6 = v18;
    *(a3 + 64) = v17;
    *(a3 + 80) = v6;
    *(a3 + 96) = v19;
    v7 = v14;
    *a3 = v13;
    *(a3 + 16) = v7;
    v8 = v16;
    *(a3 + 32) = v15;
    *(a3 + 48) = v8;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t AppleMSGClient::timerSetTrackedTime(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v14 = 0;
  v23 = 0;
  v24 = 0;
  v12 = a2;
  v13 = a6;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = 0;
  v22 = 0;
  v8 = (*(*a1 + 168))(a1, 12, &v12, 56, 0, 0);
  v9 = v8;
  if (v8)
  {
    AppleMSGClient::timerSetTrackedTime();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t AppleMSGClient::timerSetCrossTimestampConfig(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  v8 = BYTE2(a2);
  v7 = a2;
  v9 = 0;
  v10 = 0;
  v2 = (*(*a1 + 168))(a1, 13, v6, 56, 0, 0);
  v3 = v2;
  if (v2)
  {
    AppleMSGClient::timerSetCrossTimestampConfig();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t AppleMSGClient::timerGetCrossTimestamp(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = (*(*a1 + 168))(a1, 15, 0, 0, v15, 72);
  v10 = v9;
  if (v9)
  {
    AppleMSGClient::timerGetCrossTimestamp();
  }

  else
  {
    v11 = v15[1];
    *a2 = v15[0];
    *a3 = v11;
    v12 = v15[3];
    *a4 = v15[2];
    *a5 = v12;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t AppleMSGClient::timerGetCrossTimestampConfig(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = (*(*a1 + 168))(a1, 14, 0, 0, v7, 72);
  v4 = v3;
  if (v3)
  {
    AppleMSGClient::timerGetCrossTimestampConfig();
  }

  else
  {
    *a2 = v7[32];
    *(a2 + 2) = v8;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t AppleMSGClient::msgBlockIsReady(AppleMSGClient *this, BOOL *a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = a3;
  v4 = (*(*this + 168))(this, 16, v9, 8, v8, 32);
  v5 = v4;
  if (v4)
  {
    AppleMSGClient::msgBlockIsReady();
  }

  else
  {
    *a2 = v8[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t AppleMSGClient::msgBlockPlatformInfo(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = (*(*a1 + 168))(a1, 17, 0, 0, v7, 32);
  v4 = v3;
  if (v3)
  {
    AppleMSGClient::msgBlockPlatformInfo();
  }

  else
  {
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t AppleMSGClient::msgBlockTargetVersion(AppleMSGClient *this, char *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = (*(*this + 168))(this, 17, 0, 0, v7, 32);
  v4 = v3;
  if (v3)
  {
    AppleMSGClient::msgBlockTargetVersion();
  }

  else
  {
    snprintf(a2, 0x10uLL, "%s", v8);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t AppleMSGClient::syncReadEventLog(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v4 = (*(*a1 + 168))(a1, 18, &v8, 4, __src, 2312);
  v5 = v4;
  if (v4)
  {
    AppleMSGClient::syncReadEventLog();
  }

  else
  {
    memcpy(a3, __src, 0x908uLL);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t AppleMSGClient::frametrackGetBuffers(uint64_t a1, unsigned int a2, void *__src, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  if (a2 >= 3)
  {
    AppleMSGClient::frametrackGetBuffers(__srca);
    result = __srca[0];
  }

  else
  {
    memcpy(&v10, __src, 4 * a2);
    v13 = a2;
    v14 = v10;
    v7 = (*(*a1 + 168))(a1, 19, &v13, 12, __srca, 794);
    if (v7)
    {
      AppleMSGClient::frametrackGetBuffers(v7, v7, &v11);
      result = v11;
    }

    else
    {
      memcpy(a4, __srca, 397 * a2);
      result = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

const char *AppleMSG::MSGTimerToCStr(unsigned int a1)
{
  if (a1 > 4)
  {
    return "INVALID";
  }

  else
  {
    return off_278CB51D0[a1];
  }
}

uint64_t AppleMSG::MSGTimerFromCStr(AppleMSG *this, const char *a2)
{
  result = strcmp(this, "GPTP0");
  if (result)
  {
    if (!strcmp(this, "GPTP1"))
    {
      return 1;
    }

    else if (!strcmp(this, "GPTP2"))
    {
      return 2;
    }

    else if (!strcmp(this, "GTB"))
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

const char *AppleMSG::MSGTriggerToCStr(unsigned int a1)
{
  if (a1 > 3)
  {
    return "INVALID";
  }

  else
  {
    return off_278CB51F8[a1];
  }
}

uint64_t AppleMSG::MSGTriggerFromCStr(AppleMSG *this, const char *a2)
{
  if (!strcmp(this, "DISABLE"))
  {
    return 0;
  }

  else if (!strcmp(this, "RISING"))
  {
    return 1;
  }

  else if (!strcmp(this, "FALLING"))
  {
    return 2;
  }

  else if (!strcmp(this, "BOTH"))
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

_BYTE *AppleMSG::getSyncConfigDescription@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = MEMORY[0x28223BE20]();
  v4 = *(v3 + 14);
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 12);
  if (*v3 == 1)
  {
    v8 = *(v3 + 4);
    if (v8 > 3)
    {
      v9 = "INVALID";
    }

    else
    {
      v9 = off_278CB51F8[v8];
    }

    v13 = *(v3 + 16);
    if (v13 > 4)
    {
      v14 = "INVALID";
    }

    else
    {
      v14 = off_278CB51D0[v13];
    }

    v17 = *(v3 + 22);
    v18 = *(v3 + 24) != 0;
    v19 = *(v3 + 32);
    v20 = *(v3 + 40);
    if (v13 == 4)
    {
      v21 = *(v3 + 56) >> 10;
    }

    else
    {
      v24 = *(v3 + 56);
    }

    v32 = *(v3 + 48);
    snprintf(v34, 0xFFuLL, "slave sync: SWID #%d, intr_on_trigger: %d, intr_on_err: %d, preset: #%d, master_sel: %d, trigger:%s, timer:%s, repeat:%d, frame-skip:%u, polarity:%d, assert-duration:%llu + %hu, offset:%lli + %hu", v4, v5, v6, v7, *(v3 + 8), v9, v14, *(v3 + 20));
    goto LABEL_28;
  }

  v11 = *(v3 + 4);
  if (v11 > 3)
  {
    v12 = "INVALID";
  }

  else
  {
    v12 = off_278CB51F8[v11];
  }

  v15 = *(v3 + 16);
  v16 = "INVALID";
  if (v15 <= 1)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        v16 = "GPTP1";
      }
    }

    else
    {
      v16 = "GPTP0";
    }

    goto LABEL_26;
  }

  if (v15 == 2)
  {
    v16 = "GPTP2";
    goto LABEL_26;
  }

  if (v15 != 4)
  {
LABEL_26:
    v25 = *(v3 + 40);
    v26 = *(v3 + 56);
    goto LABEL_27;
  }

  v22 = *(v3 + 40) >> 10;
  v23 = *(v3 + 56) >> 10;
  v16 = "GTB";
LABEL_27:
  v27 = *(v3 + 32);
  v28 = *(v3 + 24) != 0;
  v29 = *(v3 + 58);
  v33 = *(v3 + 60);
  v31 = *(v3 + 48);
  snprintf(v34, 0xFFuLL, "master sync: SWID #%d, intr_on_trigger: %d, intr_on_err: %d,  preset: #%d trigger:%s, timer:%s, repeat:%d, polarity:%d, assert-duration:%llu + %hu, frame-duration:%lli + %hu (%hu/%hu)", v4, v5, v6, v7, v12, v16, *(v3 + 20));
LABEL_28:
  result = std::string::basic_string[abi:ne200100]<0>(a2, v34);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void AppleMSG::getSyncConfigEDTDescription(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, &unk_240CB6BAA);
    for (i = 0; i != 64; i += 4)
    {
      snprintf(__str, 0xCuLL, "0x%08x ", *(a1 + i));
      std::string::basic_string[abi:ne200100]<0>(__p, __str);
      if ((v9 & 0x80u) == 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      if ((v9 & 0x80u) == 0)
      {
        v6 = v9;
      }

      else
      {
        v6 = __p[1];
      }

      std::string::append(a2, v5, v6);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_240CA42EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 23) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

void AppleMSG::getEventTriggerDescription(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = MEMORY[0x28223BE20]();
    v5 = *v4;
    if (v5 > 4)
    {
      v6 = "INVALID";
    }

    else
    {
      v6 = off_278CB51D0[v5];
    }

    v8 = *(v4 + 4);
    if (v8 > 3)
    {
      v9 = "INVALID";
    }

    else
    {
      v9 = off_278CB51F8[v8];
    }

    snprintf(v11, 0xFFuLL, "event trigger ID %u, timer_sel: %s, trigger_cond: %s", v3, v6, v9);
    std::string::basic_string[abi:ne200100]<0>(a2, v11);
    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v7 = *MEMORY[0x277D85DE8];
  }
}

_BYTE *AppleMSG::getEventTriggerCountVals@<X0>(_BYTE *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    snprintf(__str, 0xFFuLL, "event trigger ID %u, live count: %u, snapshot count: %u", result, a2[1], *a2);
    result = std::string::basic_string[abi:ne200100]<0>(a3, __str);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AppleMSG::getScaleFactorFromCStr(AppleMSG *this, const char *a2)
{
  if (!strcmp(this, "nanos"))
  {
    return 1;
  }

  v3 = *this;
  if (v3 == 110)
  {
    if (*(this + 1) != 115 || *(this + 2))
    {
      if (!strcmp(this, "micros"))
      {
        return 2;
      }

LABEL_14:
      if (strcmp(this, "millis") && (v3 != 109 || *(this + 1) != 115 || *(this + 2)))
      {
        return 0;
      }

      return 3;
    }

    return 1;
  }

  if (!strcmp(this, "micros"))
  {
    return 2;
  }

  if (v3 != 117 || *(this + 1) != 115)
  {
    goto LABEL_14;
  }

  if (!*(this + 2))
  {
    return 2;
  }

  if (strcmp(this, "millis"))
  {
    return 0;
  }

  return 3;
}

const char *AppleMSG::GTBScaleFactorToCStr(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "ticks";
  }

  else
  {
    return off_278CB5218[a1 - 1];
  }
}

unint64_t AppleMSG::getGTBScaled(unint64_t a1, int a2)
{
  v2 = 1000 * a1 / 0x18;
  if (a2 != 1)
  {
    v2 = a1;
  }

  if (a2 == 2)
  {
    v2 = a1 / 0x18;
  }

  if (a2 == 3)
  {
    return a1 / 0x5DC0;
  }

  else
  {
    return v2;
  }
}

void AppleMSG::getPerfReportBoot(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = MEMORY[0x28223BE20]();
  v6 = *v4;
  if (v5 == 3)
  {
    v7 = v6 / 0x5DC0;
    v14 = v4[1];
    v9 = v14 / 0x5DC0;
    v13 = (v14 - v6) / 0x5DC0;
  }

  else
  {
    if (v5 == 2)
    {
      v7 = v6 / 0x18;
      v12 = v4[1];
      v9 = v12 / 0x18;
      v10 = ((v12 - v6) * 0xAAAAAAAAAAAAAAABLL) >> 64;
    }

    else
    {
      if (v5 != 1)
      {
        v9 = v4[1];
        v13 = v9 - v6;
        v7 = *v4;
        goto LABEL_11;
      }

      v7 = 1000 * v6 / 0x18;
      v8 = v4[1];
      v9 = 1000 * v8 / 0x18;
      v10 = (1000 * (v8 - v6) * 0xAAAAAAAAAAAAAAABLL) >> 64;
    }

    v13 = v10 >> 4;
  }

LABEL_11:
  snprintf(v16, 0xFFuLL, "%s\n\tstart: %llu\n\treg'd: %llu\t(+%llu)", v3, v7, v9, v13);
  std::string::basic_string[abi:ne200100]<0>(a2, v16);
  v15 = *MEMORY[0x277D85DE8];
}

void AppleMSG::getPerfReportResume(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = MEMORY[0x28223BE20]();
  v6 = v4[3];
  if (v5 == 3)
  {
    v7 = v6 / 0x5DC0;
    v21 = v4[4];
    v22 = v4[5];
    v10 = v21 / 0x5DC0;
    v11 = (v21 - v6) / 0x5DC0;
    v12 = v22 / 0x5DC0;
    v23 = v4[6];
    v14 = v23 / 0x5DC0;
    v20 = (v23 - v22) / 0x5DC0;
  }

  else
  {
    if (v5 == 2)
    {
      v7 = v6 / 0x18;
      v17 = v4[4];
      v18 = v4[5];
      v10 = v17 / 0x18;
      v11 = (v17 - v6) / 0x18;
      v12 = v18 / 0x18;
      v19 = v4[6];
      v14 = v19 / 0x18;
      v15 = ((v19 - v18) * 0xAAAAAAAAAAAAAAABLL) >> 64;
    }

    else
    {
      if (v5 != 1)
      {
        v10 = v4[4];
        v12 = v4[5];
        v11 = v10 - v6;
        v14 = v4[6];
        v20 = v14 - v12;
        v7 = v4[3];
        goto LABEL_11;
      }

      v7 = 1000 * v6 / 0x18;
      v8 = v4[4];
      v9 = v4[5];
      v10 = 1000 * v8 / 0x18uLL;
      v11 = 1000 * (v8 - v6) / 0x18;
      v12 = 1000 * v9 / 0x18uLL;
      v13 = v4[6];
      v14 = 1000 * v13 / 0x18uLL;
      v15 = ((1000 * (v13 - v9)) * 0xAAAAAAAAAAAAAAABLL) >> 64;
    }

    v20 = v15 >> 4;
  }

LABEL_11:
  snprintf(v25, 0xFFuLL, "%s\n[sleep]\n\tstart: %llu\n\tdone : %llu\t(+%llu)\n[wake]\n\tstart: %llu\n\tdone : %llu\t(+%llu)", v3, v7, v10, v11, v12, v14, v20);
  std::string::basic_string[abi:ne200100]<0>(a2, v25);
  v24 = *MEMORY[0x277D85DE8];
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278CB51C0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void MSGController::MSGController(MSGController *this, char a2, int a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2852A4948;
  *(this + 24) = a3;
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 161) = 0;
  *(this + 366) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 80) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0;
  if (a3 && MSGController::openService(this, a2, 0, 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Failed to Instantiate MSGController\n");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278CB51C8, MEMORY[0x277D82610]);
  }

  *(this + 160) = a2;
}

void sub_240CA4B94(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  MSGController::MSGController(v1);
  _Unwind_Resume(a1);
}

uint64_t MSGController::openService(MSGController *this, int a2, NSObject *a3, unint64_t a4)
{
  if (a2)
  {
    v5 = "AppleMSGKextEPIC";
  }

  else
  {
    v5 = "AppleMSGKext";
  }

  v6 = MSGController::_openServiceInternal(this, v5, a3, a4, this + 2, this + 3);
  if (v6)
  {
    MSGController::closeService(this);
  }

  return v6;
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

void MSGController::~MSGController(MSGController *this)
{
  *this = &unk_2852A4948;
  MSGController::closeService(this);
  for (i = 152; i != 120; i -= 8)
  {
    v3 = *(this + i);
    *(this + i) = 0;
    if (v3)
    {
      MEMORY[0x245CCF700](v3, 0x1030C4021D8CAA8);
    }
  }

  for (j = 112; j != 80; j -= 8)
  {
    v5 = *(this + j);
    *(this + j) = 0;
    if (v5)
    {
      MEMORY[0x245CCF700](v5, 0x1030C4021D8CAA8);
    }
  }

  for (k = 72; k != 40; k -= 8)
  {
    v7 = *(this + k);
    *(this + k) = 0;
    if (v7)
    {
      std::default_delete<msg_local_timing_info_subscription_t>::operator()[abi:ne200100](this + k, v7);
    }
  }
}

uint64_t MSGController::closeService(MSGController *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    IOServiceClose(v2);
    *(this + 2) = 0;
  }

  result = *(this + 3);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 3) = 0;
  }

  return result;
}

uint64_t MSGController::MSGController(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 161) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2852A4948;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 8) = v4;
  v5 = *(a2 + 12);
  *(a2 + 12) = 0;
  *(a1 + 12) = v5;
  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 16) = v6;
  v7 = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 20) = v7;
  LOBYTE(v7) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 12);
  *(a2 + 12) = 0;
  *(a1 + 40) = v8;
  for (i = 48; i != 80; i += 8)
  {
    v10 = *(a2 + i);
    *(a2 + i) = 0;
    v11 = *(a1 + i);
    *(a1 + i) = v10;
    if (v11)
    {
      std::default_delete<msg_local_timing_info_subscription_t>::operator()[abi:ne200100](a1 + i, v11);
    }
  }

  for (j = 88; j != 120; j += 8)
  {
    v13 = *(a2 + j);
    *(a2 + j) = 0;
    v14 = *(a1 + j);
    *(a1 + j) = v13;
    if (v14)
    {
      MEMORY[0x245CCF700](v14, 0x1030C4021D8CAA8);
    }
  }

  for (k = 128; k != 160; k += 8)
  {
    v16 = *(a2 + k);
    *(a2 + k) = 0;
    v17 = *(a1 + k);
    *(a1 + k) = v16;
    if (v17)
    {
      MEMORY[0x245CCF700](v17, 0x1030C4021D8CAA8);
    }
  }

  v18 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 160) = v18;
  return a1;
}

void MSGController::serviceMatchedCallback(MSGController *this, void *a2, io_iterator_t iterator)
{
  v16 = *MEMORY[0x277D85DE8];
  connect = 0;
  v5 = IOIteratorNext(iterator);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D85F48];
    while (1)
    {
      MEMORY[0x245CCF620](v6, v15);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v12 = "serviceMatchedCallback";
        v13 = 2080;
        v14 = v15;
        _os_log_impl(&dword_240CA0000, v7, OS_LOG_TYPE_INFO, "MSGController::%s: Found service %s\n", buf, 0x16u);
      }

      if (IOServiceOpen(v6, *v8, 0, &connect))
      {
        break;
      }

      *(this + 2) = connect;
      *(this + 3) = v6;
      v6 = IOIteratorNext(iterator);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    MSGController::serviceMatchedCallback();
  }

LABEL_7:
  if (*(this + 3))
  {
    dispatch_semaphore_signal(*(this + 4));
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t MSGController::_openServiceInternal(MSGController *this, const char *name, NSObject *a3, unint64_t a4, unsigned int *a5, unsigned int *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = IOServiceMatching(name);
  v13 = 0;
  notification = 0;
  if (*a6)
  {
    v14 = *a5 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (!a3 && a4)
    {
      MSGController::_openServiceInternal();
      v13 = *buf;
      goto LABEL_28;
    }

    if (a4)
    {
      if (a4 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = a4;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v27 = "_openServiceInternal";
        v28 = 2080;
        v29 = name;
        v30 = 2048;
        v31 = v15;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MSGController::%s: Connecting to %s (blocking for up to %llu ns)\n", buf, 0x20u);
      }

      v16 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
      v17 = v16;
      if (!v16)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](exception, "Failed to create notification port for IOService matching\n");
        __cxa_throw(exception, off_278CB51C8, MEMORY[0x277D82610]);
      }

      IONotificationPortSetDispatchQueue(v16, a3);
      v18 = dispatch_time(0xFFFFFFFFFFFFFFFELL, v15);
      *(this + 4) = dispatch_semaphore_create(0);
      if (IOServiceAddMatchingNotification(v17, "IOServiceMatched", v12, MSGServiceMatchedCallback, this, &notification))
      {
        MSGController::_openServiceInternal();
        goto LABEL_36;
      }

      v19 = notification;
      if (notification)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v27 = "_openServiceInternal";
          v28 = 2080;
          v29 = name;
          _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MSGController::%s: Checking for %s in existing matches\n", buf, 0x16u);
          v19 = notification;
        }

        MSGController::serviceMatchedCallback(this, v20, v19);
      }

      dispatch_semaphore_wait(*(this + 4), v18);
      MatchingService = *a6;
      if (!*a6)
      {
        MSGController::_openServiceInternal();
LABEL_36:
        v13 = *buf;
        goto LABEL_30;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v27 = "_openServiceInternal";
        v28 = 2080;
        v29 = name;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MSGController::%s: Connecting to %s (non-blocking)\n", buf, 0x16u);
      }

      MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v12);
      *a6 = MatchingService;
      if (!MatchingService)
      {
        MSGController::_openServiceInternal();
        goto LABEL_36;
      }
    }

    if (!IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, a5))
    {
      v13 = 0;
      goto LABEL_30;
    }

    MSGController::_openServiceInternal();
    goto LABEL_36;
  }

LABEL_28:
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_30:
  if (notification)
  {
    IOObjectRelease(notification);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t MSGController::MasterSyncConfig(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (*(a1 + 161) == 1)
  {
    v3 = a3[1];
    *v10 = *a3;
    *&v10[16] = v3;
    *v11 = a3[2];
    v4 = *(a1 + 1464);
    if (v4 >= 9)
    {
      MSGController::MasterSyncConfig();
      return v11[15];
    }

    else
    {
      v5 = 0;
      v6 = a1 + 144 * v4;
      *(v6 + 168) = 7;
      v6 += 168;
      *(v6 + 8) = 1;
      *(v6 + 9) = 0u;
      *(v6 + 25) = 0u;
      *(v6 + 38) = 0;
      *(v6 + 46) = a2;
      v7 = *&v10[16];
      *(v6 + 48) = *v10;
      *(v6 + 64) = v7;
      *(v6 + 80) = *v11;
      *(v6 + 96) = 0u;
      *(v6 + 112) = 0u;
      *(v6 + 128) = 0u;
      ++*(a1 + 1464);
    }
  }

  else
  {
    v8 = a3[1];
    *&v11[2] = *a3;
    *&v11[6] = v8;
    *&v11[10] = a3[2];
    v10[0] = 1;
    v11[0] = 0;
    LOWORD(v11[1]) = 0;
    memset(&v10[1], 0, 31);
    HIWORD(v11[1]) = a2;
    v5 = (*(*a1 + 48))(a1, a2, v10);
    if (v5)
    {
      MSGController::MasterSyncConfig();
      return *v10;
    }
  }

  return v5;
}

uint64_t MSGController::SlaveSyncConfig(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(a1 + 161) == 1)
  {
    v3 = a3[1];
    v11 = *a3;
    v12 = v3;
    *v13 = a3[2];
    v4 = *(a1 + 1464);
    if (v4 >= 9)
    {
      MSGController::SlaveSyncConfig();
      return v13[15];
    }

    else
    {
      v5 = 0;
      v6 = a1 + 144 * v4;
      *(v6 + 168) = 7;
      v6 += 168;
      *(v6 + 32) = 1;
      *(v6 + 4) = 0;
      *(v6 + 20) = 0;
      *(v6 + 12) = 0;
      *(v6 + 28) = 0;
      *(v6 + 33) = 0;
      *(v6 + 38) = 0;
      *(v6 + 46) = a2;
      v7 = v12;
      *(v6 + 48) = v11;
      *(v6 + 64) = v7;
      v8 = *v13;
      *(v6 + 112) = 0u;
      *(v6 + 128) = 0u;
      *(v6 + 80) = v8;
      *(v6 + 96) = 0u;
      ++*(a1 + 1464);
    }
  }

  else
  {
    v9 = a3[1];
    *&v13[2] = *a3;
    HIBYTE(v12) = 0;
    *(&v12 + 13) = 0;
    *&v13[6] = v9;
    *&v13[10] = a3[2];
    *&v12 = 0;
    v11 = 0uLL;
    BYTE8(v12) = 1;
    *(&v12 + 9) = 0;
    v13[0] = 0;
    LOWORD(v13[1]) = 0;
    HIWORD(v13[1]) = a2;
    v5 = (*(*a1 + 48))(a1, a2, &v11);
    if (v5)
    {
      MSGController::SlaveSyncConfig();
      return v11;
    }
  }

  return v5;
}

uint64_t MSGController::MasterSyncConfig(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 161) == 1)
  {
    v5 = a3[1];
    v14 = *a3;
    v15 = v5;
    *v16 = a3[2];
    v6 = *(a1 + 1464);
    if (v6 >= 9)
    {
      MSGController::MasterSyncConfig();
      return v16[15];
    }

    else
    {
      v7 = 0;
      v8 = a1 + 144 * v6;
      *(v8 + 168) = 7;
      v8 += 168;
      *(v8 + 8) = 257;
      *(v8 + 10) = 0;
      *(v8 + 14) = 0;
      *(v8 + 16) = a4;
      *(v8 + 24) = a5;
      *(v8 + 32) = 0;
      *(v8 + 38) = 0;
      *(v8 + 46) = a2;
      v9 = v15;
      *(v8 + 48) = v14;
      *(v8 + 64) = v9;
      v10 = *v16;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 80) = v10;
      *(v8 + 96) = 0u;
      ++*(a1 + 1464);
    }
  }

  else
  {
    v11 = a3[1];
    *&v16[10] = a3[2];
    v12 = *a3;
    *&v16[6] = v11;
    WORD3(v14) = 0;
    *(&v14 + 2) = 0;
    *(&v15 + 13) = 0;
    HIBYTE(v15) = 0;
    *&v16[2] = v12;
    LOWORD(v14) = 257;
    *(&v14 + 1) = a4;
    *&v15 = a5;
    DWORD2(v15) = 0;
    BYTE12(v15) = 0;
    v16[0] = 0;
    LOWORD(v16[1]) = 0;
    HIWORD(v16[1]) = a2;
    v7 = (*(*a1 + 48))(a1, a2, &v14);
    if (v7)
    {
      MSGController::MasterSyncConfig();
      return v14;
    }
  }

  return v7;
}

uint64_t MSGController::SlaveSyncConfig(uint64_t a1, uint64_t a2, _OWORD *a3, __int16 a4)
{
  if (*(a1 + 161) == 1)
  {
    v4 = a3[1];
    *v13 = *a3;
    *&v13[16] = v4;
    *v14 = a3[2];
    v5 = *(a1 + 1464);
    if (v5 >= 9)
    {
      MSGController::SlaveSyncConfig();
      return v14[15];
    }

    else
    {
      v6 = 0;
      v7 = a1 + 144 * v5;
      *(v7 + 168) = 7;
      v7 += 168;
      *(v7 + 8) = 256;
      *(v7 + 10) = 0;
      *(v7 + 14) = 0;
      *(v7 + 16) = a4;
      *(v7 + 18) = 0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 33) = 0;
      *(v7 + 38) = 0;
      *(v7 + 46) = a2;
      v9 = *&v13[16];
      v8 = *v14;
      *(v7 + 48) = *v13;
      *(v7 + 64) = v9;
      *(v7 + 112) = 0u;
      *(v7 + 128) = 0u;
      *(v7 + 80) = v8;
      *(v7 + 96) = 0u;
      ++*(a1 + 1464);
    }
  }

  else
  {
    v10 = a3[1];
    *&v14[10] = a3[2];
    v11 = *a3;
    *&v14[6] = v10;
    v13[31] = 0;
    *&v13[29] = 0;
    *&v14[2] = v11;
    *v13 = 256;
    *&v13[2] = 0;
    *&v13[6] = 0;
    *&v13[8] = a4;
    *&v13[10] = 0;
    *&v13[16] = 0;
    v13[24] = 1;
    *&v13[25] = 0;
    v14[0] = 0;
    LOWORD(v14[1]) = 0;
    HIWORD(v14[1]) = a2;
    v6 = (*(*a1 + 48))(a1, a2, v13);
    if (v6)
    {
      MSGController::SlaveSyncConfig();
      return *v13;
    }
  }

  return v6;
}

uint64_t MSGController::SyncStart(MSGController *this, uint64_t a2)
{
  memset(v5, 0, sizeof(v5));
  v2 = (**this)(this, a2, 0, v5);
  v3 = v2;
  if (v2)
  {
    MSGController::SyncStart();
  }

  return v3;
}

uint64_t MSGController::SyncStartMasterScheduled(uint64_t (***a1)(void))
{
  v1 = (**a1)();
  v2 = v1;
  if (v1)
  {
    MSGController::SyncStartMasterScheduled();
  }

  return v2;
}

uint64_t MSGController::SyncStartSlaveScheduled(MSGController *this, uint64_t a2, __int16 a3)
{
  v6 = 0;
  v7 = a3;
  memset(v8, 0, sizeof(v8));
  v3 = (**this)(this, a2, 1, &v6);
  v4 = v3;
  if (v3)
  {
    MSGController::SyncStartSlaveScheduled();
  }

  return v4;
}

uint64_t MSGController::SyncStop(MSGController *this, uint64_t a2)
{
  memset(v5, 0, sizeof(v5));
  v2 = (*(*this + 8))(this, a2, 0, v5);
  v3 = v2;
  if (v2)
  {
    MSGController::SyncStop();
  }

  return v3;
}

uint64_t MSGController::SyncStopMasterScheduled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8 = 0;
  v7 = 1;
  v10 = a3;
  v11 = a4;
  v4 = (*(*a1 + 8))(a1, a2, 1, &v7);
  v5 = v4;
  if (v4)
  {
    MSGController::SyncStopMasterScheduled();
  }

  return v5;
}

uint64_t MSGController::SyncStopSlaveScheduled(MSGController *this, uint64_t a2, __int16 a3)
{
  v6 = 0;
  v7 = a3;
  memset(v8, 0, sizeof(v8));
  v3 = (*(*this + 8))(this, a2, 1, &v6);
  v4 = v3;
  if (v3)
  {
    MSGController::SyncStopSlaveScheduled();
  }

  return v4;
}

uint64_t MSGController::SyncGetTracking(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v3 = (*(*a1 + 24))(a1, a2, &v6, a3);
  v4 = v3;
  if (v3)
  {
    MSGController::SyncGetTracking();
  }

  return v4;
}

uint64_t MSGController::SyncGetFIFOState(MSGController *this, unsigned int a2, BOOL *a3, unsigned __int8 *a4)
{
  input[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  input[0] = a2;
  output = 0;
  outputCnt = 2;
  v6 = IOConnectCallScalarMethod(*(this + 2), 0x23u, input, 1u, &output, &outputCnt);
  v7 = v6;
  if (v6)
  {
    MSGController::SyncGetFIFOState();
  }

  else
  {
    v8 = v13;
    *a3 = output != 0;
    *a4 = v8;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t MSGController::IsMSGSystemReady(MSGController *this, BOOL *a2)
{
  return (*(*this + 128))(this, a2, 0);
}

{
  return (*(*this + 128))(this, a2);
}

uint64_t MSGController::SyncPulseSubscribeToEvents(MSGController *this, uint64_t a2, unsigned int *a3)
{
  if (mach_port_allocate(*MEMORY[0x277D85F48], 1u, a3))
  {
    MSGController::SyncPulseSubscribeToEvents();
    return v7;
  }

  else
  {
    result = MEMORY[0x245CCF5D0](*(this + 2), a2, *a3, 0);
    if (result)
    {
      MSGController::SyncPulseSubscribeToEvents();
      return v8;
    }
  }

  return result;
}

uint64_t MSGController::SyncPulseUnsubscribeFromEvents(MSGController *this, uint64_t a2, unsigned int *a3)
{
  if (MEMORY[0x245CCF5D0](*(this + 2), a2, 0, 0))
  {
    MSGController::SyncPulseUnsubscribeFromEvents();
    return v5;
  }

  else
  {
    result = mach_port_mod_refs(*MEMORY[0x277D85F48], *a3, 1u, -1);
    if (result)
    {
      MSGController::SyncPulseUnsubscribeFromEvents();
      return v6;
    }
  }

  return result;
}

uint64_t MSGController::SyncGetCurrentMasterFrame(MSGController *this, int a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  inputStruct[0] = a2;
  outputStructCnt = 24;
  if (MSGController::_initMSGManagerObjects(this))
  {
    MSGController::SyncGetCurrentMasterFrame();
    return LODWORD(outputStruct[0]);
  }

  else
  {
    result = IOConnectCallStructMethod(*(this + 4), 7u, inputStruct, 4uLL, outputStruct, &outputStructCnt);
    if (result)
    {
      MSGController::SyncGetCurrentMasterFrame();
      return inputStruct[1];
    }

    else
    {
      v10 = outputStruct[1];
      *a3 = outputStruct[0];
      *a4 = v10;
      *a5 = outputStruct[2];
    }
  }

  return result;
}

uint64_t MSGController::_initMSGManagerObjects(MSGController *this)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(this + 4) && *(this + 5))
  {
    v2 = 0;
  }

  else
  {
    v2 = MSGController::_openServiceInternal(this, "MSGManager", 0, 0, this + 4, this + 5);
    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = "_initMSGManagerObjects";
        v7 = 2080;
        v8 = "MSGManager";
        v9 = 1024;
        v10 = v2;
        _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSGController::%s: Failed to open %s service with retcode 0x%x\n\n", &v5, 0x1Cu);
      }

      MSGController::closeService(this);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t MSGController::getCurrentMasterFrame(MSGController *this, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  memset(v10, 0, 397);
  v11 = 0;
  if ((*(*this + 160))(this, 1, &v11, v10))
  {
    MSGController::getCurrentMasterFrame();
    return v11;
  }

  if ((*(&v10[24] + BYTE12(v10[24]) + 8) & 1) == 0)
  {
    MSGController::getCurrentMasterFrame();
    return v11;
  }

  result = 0;
  v8 = &v10[6 * BYTE12(v10[24])];
  v9 = v8[2];
  *a2 = v8[1];
  *a3 = v9;
  *a4 = v8[3];
  return result;
}

uint64_t MSGController::getMasterFrameWithOffset(MSGController *this, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  inputStruct[0] = a5;
  inputStruct[1] = a6;
  inputStruct[2] = a7;
  outputStructCnt = 24;
  v10 = IOConnectCallStructMethod(*(this + 2), 0x17u, inputStruct, 0x18uLL, outputStruct, &outputStructCnt);
  v11 = v10;
  if (v10)
  {
    MSGController::getMasterFrameWithOffset();
  }

  else
  {
    v12 = outputStruct[1];
    *a2 = outputStruct[0];
    *a3 = v12;
    *a4 = outputStruct[2];
  }

  return v11;
}

uint64_t MSGController::SetEventTriggerConfig(uint64_t a1, int a2, uint64_t a3)
{
  inputStruct = a2;
  v7 = a3;
  v3 = IOConnectCallStructMethod(*(a1 + 8), 0x24u, &inputStruct, 0xCuLL, 0, 0);
  v4 = v3;
  if (v3)
  {
    MSGController::SetEventTriggerConfig();
  }

  return v4;
}

uint64_t MSGController::GetEventTriggerConfig(uint64_t a1, unsigned int a2, void *outputStruct)
{
  input[1] = *MEMORY[0x277D85DE8];
  v7 = 8;
  input[0] = a2;
  v3 = IOConnectCallMethod(*(a1 + 8), 0x25u, input, 1u, 0, 0, 0, 0, outputStruct, &v7);
  v4 = v3;
  if (v3)
  {
    MSGController::GetEventTriggerConfig();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t MSGController::GetEventTriggerCountSnapshot(uint64_t a1, unsigned int a2, void *outputStruct)
{
  input[1] = *MEMORY[0x277D85DE8];
  v7 = 8;
  input[0] = a2;
  v3 = IOConnectCallMethod(*(a1 + 8), 0x2Au, input, 1u, 0, 0, 0, 0, outputStruct, &v7);
  v4 = v3;
  if (v3)
  {
    MSGController::GetEventTriggerCountSnapshot();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t MSGController::EventTriggerInterruptEnable(MSGController *this, int a2, unsigned __int8 a3)
{
  inputStruct[0] = a2;
  inputStruct[1] = a3;
  v3 = IOConnectCallStructMethod(*(this + 2), 0x26u, inputStruct, 8uLL, 0, 0);
  v4 = v3;
  if (v3)
  {
    MSGController::EventTriggerInterruptEnable();
  }

  return v4;
}

uint64_t MSGController::GetEventTriggerInterruptEnable(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 4;
  v2 = IOConnectCallStructMethod(*(a1 + 8), 0x28u, 0, 0, outputStruct, &outputStructCnt);
  v3 = v2;
  if (v2)
  {
    MSGController::GetEventTriggerInterruptEnable();
  }

  return v3;
}

uint64_t MSGController::GetEventTriggerInterruptStatus(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 4;
  v2 = IOConnectCallStructMethod(*(a1 + 8), 0x29u, 0, 0, outputStruct, &outputStructCnt);
  v3 = v2;
  if (v2)
  {
    MSGController::GetEventTriggerInterruptStatus();
  }

  return v3;
}

uint64_t MSGController::EventTriggerClearInterruptStatus(MSGController *this, unsigned int a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = a2;
  v2 = IOConnectCallScalarMethod(*(this + 2), 0x27u, v6, 1u, 0, 0);
  v3 = v2;
  if (v2)
  {
    MSGController::EventTriggerClearInterruptStatus();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t MSGController::GetCrossTimestampImmediate(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  v9 = (*(*a1 + 112))(a1, &v15, &v14, &v13, &v12);
  v10 = v9;
  if (v9)
  {
    MSGController::GetCrossTimestampImmediate();
  }

  else
  {
    *a2 = v15;
    if (a3)
    {
      *a3 = v14;
    }

    if (a4)
    {
      *a4 = v13;
    }

    if (a5)
    {
      *a5 = v12;
    }
  }

  return v10;
}

uint64_t MSGController::SyncGetTrackingInfoInMachAbsoluteTime(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  if (MSGController::SyncGetTracking(a1, a2, v7))
  {
    MSGController::SyncGetTrackingInfoInMachAbsoluteTime();
    return v10;
  }

  if (v8 != 4)
  {
    MSGController::SyncGetTrackingInfoInMachAbsoluteTime();
    return v10;
  }

  result = 0;
  *a3 = v7[1];
  *a4 = v9;
  return result;
}

uint64_t MSGController::GetCurrentDisplayFramerate(MSGController *this, double *a2)
{
  v3 = (*(*this + 80))(this, 0, v6, 2, 0);
  v4 = v3;
  if (v3)
  {
    MSGController::GetCurrentDisplayFramerate();
  }

  else
  {
    *a2 = 24000000.0 / (vcvtd_n_f64_u32(v7 >> 10, 6uLL) + v6[6]);
  }

  return v4;
}

uint64_t MSGController::SyncGetDurationInMachAbsoluteTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*a1 + 80))(a1, a2, v6, 2, a4))
  {
    MSGController::SyncGetDurationInMachAbsoluteTime();
    return v9;
  }

  if (v6[0] == 1)
  {
    MSGController::SyncGetDurationInMachAbsoluteTime();
    return v9;
  }

  result = 0;
  *a3 = v7;
  *(a3 + 8) = v8 & 0xFC00 | *(a3 + 8) & 0x3FF;
  return result;
}

uint64_t MSGController::SyncComputePulseTime(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __int16 a5, uint64_t *a6)
{
  v6 = *(a4 + 16);
  v8[0] = *a4;
  v8[1] = v6;
  v9 = *(a4 + 32);
  return SyncComputeMSGPulseTime(a1, a2, a3, v8, a5, a6);
}

uint64_t MSGController::SyncGetSoftwareID(MSGController *this, unsigned int a2, unsigned int *a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = 1;
  input[1] = a2;
  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(*(this + 2), 0x15u, input, 2u, &output, &outputCnt);
  if (!result)
  {
    *a3 = output;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSGController::SyncGetHardwareID(MSGController *this, unsigned int a2, unsigned int *a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = 0;
  input[1] = a2;
  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(*(this + 2), 0x15u, input, 2u, &output, &outputCnt);
  if (!result)
  {
    *a3 = output;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSGController::dumpCurrentSyncGenState(MSGController *this)
{
  v1 = IOConnectCallMethod(*(this + 2), 0x1Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  v2 = v1;
  if (v1)
  {
    MSGController::dumpCurrentSyncGenState();
  }

  return v2;
}

uint64_t MSGController::SyncSetConfigSequence(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 161) == 1)
  {
    v3 = *(a1 + 1464);
    if (v3 >= 9)
    {
      MSGController::SyncSetConfigSequence();
      v4 = v19;
    }

    else
    {
      v4 = 0;
      v25 = *(a3 + 12);
      v5 = a3[5];
      v23 = a3[4];
      v24 = v5;
      v6 = a3[1];
      v19 = *a3;
      v20 = v6;
      v7 = a3[3];
      v21 = a3[2];
      v22 = v7;
      v8 = a1 + 144 * v3;
      *(v8 + 168) = 9;
      *(v8 + 172) = 0;
      *(v8 + 188) = 0;
      *(v8 + 180) = 0;
      *(v8 + 196) = 0;
      *(v8 + 200) = a2;
      *(v8 + 204) = 0;
      v9 = v20;
      *(v8 + 208) = v19;
      *(v8 + 224) = v9;
      v10 = v21;
      v11 = v22;
      v12 = v23;
      v13 = v24;
      *(v8 + 304) = v25;
      *(v8 + 272) = v12;
      *(v8 + 288) = v13;
      *(v8 + 240) = v10;
      *(v8 + 256) = v11;
      ++*(a1 + 1464);
    }
  }

  else
  {
    v14 = a3[5];
    v23 = a3[4];
    v24 = v14;
    v25 = *(a3 + 12);
    v15 = a3[1];
    v19 = *a3;
    v20 = v15;
    v16 = a3[3];
    v21 = a3[2];
    v22 = v16;
    v4 = (*(*a1 + 56))(a1, a2, &v19, 0, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t MSGController::SyncSetConfigSequenceScheduled(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 161) == 1)
  {
    v4 = *(a1 + 1464);
    if (v4 >= 9)
    {
      MSGController::SyncSetConfigSequenceScheduled();
      v5 = v20;
    }

    else
    {
      v5 = 0;
      v26 = *(a3 + 12);
      v6 = a3[5];
      v24 = a3[4];
      v25 = v6;
      v7 = a3[1];
      v20 = *a3;
      v21 = v7;
      v8 = a3[3];
      v22 = a3[2];
      v23 = v8;
      v9 = a1 + 144 * v4;
      *(v9 + 168) = 9;
      *(v9 + 176) = 256;
      *(v9 + 178) = 0;
      *(v9 + 182) = 0;
      *(v9 + 184) = a4;
      *(v9 + 186) = 0;
      *(v9 + 192) = 0;
      *(v9 + 200) = a2;
      *(v9 + 204) = 0;
      v10 = v21;
      *(v9 + 208) = v20;
      *(v9 + 224) = v10;
      v11 = v22;
      v12 = v23;
      v13 = v24;
      v14 = v25;
      *(v9 + 304) = v26;
      *(v9 + 272) = v13;
      *(v9 + 288) = v14;
      *(v9 + 240) = v11;
      *(v9 + 256) = v12;
      ++*(a1 + 1464);
    }
  }

  else
  {
    v15 = a3[5];
    v24 = a3[4];
    v25 = v15;
    v26 = *(a3 + 12);
    v16 = a3[1];
    v20 = *a3;
    v21 = v16;
    v17 = a3[3];
    v22 = a3[2];
    v23 = v17;
    v5 = (*(*a1 + 56))(a1, a2, &v20, 1, a4);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t MSGController::TestLogging(MSGController *this)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v5 = "TestLogging";
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSGController::%s: msg_log test\n", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v5 = "TestLogging";
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "MSGController::%s: msg_log_debug test\n", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v5 = "TestLogging";
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MSGController::%s: msg_log_info test\n", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v5 = "TestLogging";
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGController::%s: msg_log_error test\n", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v5 = "TestLogging";
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSGController::%s: msg_log_always test\n", buf, 0xCu);
  }

  result = IOConnectCallMethod(*(this + 2), 0x1Eu, 0, 0, 0, 0, 0, 0, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSGController::AllocateHandle(MSGController *this)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v5 = "AllocateHandle";
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "MSGController::%s: AllocateHandle\n", buf, 0xCu);
  }

  result = IOConnectCallMethod(*(this + 2), 0x2Du, 0, 0, 0, 0, 0, 0, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSGController::ReleaseHandle(MSGController *this)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v5 = "ReleaseHandle";
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "MSGController::%s: ReleaseHandle\n", buf, 0xCu);
  }

  result = IOConnectCallMethod(*(this + 2), 0x2Eu, 0, 0, 0, 0, 0, 0, 0, 0);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSGController::registerForTimingInfo(MSGController *this, unsigned int a2, uint64_t a3, unsigned __int8 *a4)
{
  return MSGController::registerForTimingInfo(this, a2, a3, a4);
}

{
  *a4 = 0;
  if (a3 < 0)
  {
    MSGController::registerForTimingInfo();
  }

  else if (*(this + 160) == 1)
  {
    MSGController::registerForTimingInfo();
  }

  else if (*(this + 40) >= 2u)
  {
    MSGController::registerForTimingInfo();
  }

  else
  {
    if (!*(this + 6))
    {
      goto LABEL_8;
    }

    v4 = 0;
    do
    {
      *a4 = ++v4;
    }

    while (*(this + v4 + 6));
    if (v4 < 3u)
    {
LABEL_8:
      operator new();
    }

    MSGController::registerForTimingInfo();
  }

  return v6;
}

uint64_t MSGController::getNextNFrames(MSGController *this, unsigned int a2, signed int a3, uint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v55 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v6 = this + 48;
  v7 = *(this + a2 + 6);
  if (!v7)
  {
    MSGController::getNextNFrames();
    goto LABEL_63;
  }

  if (a3 >= 6)
  {
    MSGController::getNextNFrames();
    goto LABEL_63;
  }

  v13 = *v7;
  if (RingBufferW1Reader::jumpToLatest((v7 + 1), 1))
  {
    MSGController::getNextNFrames();
    goto LABEL_63;
  }

  v14 = 0;
  v15 = a4 - v13;
  v46 = 0;
  do
  {
    v16 = *&v6[8 * a2];
    v17 = *(v16 + 1);
    v16 = (v16 + 8);
    v44 = *(v17 + 8) - 8;
    v18 = (*(v16 + 4) + v14 * (*(v17 + 8) - 8));
    if (RingBufferW1Reader::readNext(v16, v18, &v44))
    {
      MSGController::getNextNFrames();
LABEL_63:
      v19 = *buf;
      goto LABEL_47;
    }

    if (v44 <= 0x2Fu)
    {
      MSGController::getNextNFrames();
      goto LABEL_63;
    }

    if (MSGController::_getFirstPulseTimeFromEntry(v18, &v46))
    {
      MSGController::getNextNFrames();
      goto LABEL_63;
    }

    if (v46 <= v15)
    {
      if (!a3)
      {
LABEL_46:
        v19 = 0;
        goto LABEL_47;
      }

      v23 = 0;
      v24 = v14;
      while (1)
      {
        v25 = *&v6[8 * a2];
        v26 = v25[5];
        v27 = v24;
        v28 = v24;
        v29 = v26 + (*(v25[1] + 8) - 8) * v24;
        if (!*v29)
        {
          break;
        }

        if (*v29 != 1)
        {
          v19 = 3758097097;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_47;
          }

          *buf = 136316162;
          v48 = "current_entry->data_type == kVsyncTransitionEntry";
          v49 = 2080;
          v50 = &unk_240CB6BAA;
          v51 = 2080;
          *v52 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGController/MSGController.cpp";
          *&v52[8] = 1024;
          *&v52[10] = 1137;
          v53 = 2048;
          v54 = 0;
          v20 = MEMORY[0x277D86220];
          v21 = "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n";
          goto LABEL_12;
        }

        v33 = *(v29 + 8);
        if (v33)
        {
          v34 = 0;
          v35 = (v26 + (*(v25[1] + 8) - 8) * v28 + 24);
          do
          {
            v36 = *v35;
            if (*v35 >= v15)
            {
              v37 = *(v35 - 1);
              a5[v23] = v36;
              if (v23)
              {
                v38 = *a6;
              }

              else
              {
                *a6 = v37;
                v38 = v37;
              }

              v39 = v23;
              if (v38 + v23 != v37)
              {
                MSGController::getNextNFrames();
                goto LABEL_63;
              }

              v15 = v36 + 20;
              ++v23;
              a5[v39] += *v25;
              if (v23 == a3)
              {
                v23 = a3;
                goto LABEL_44;
              }

              if (v23 >= a3)
              {
                MSGController::getNextNFrames();
                goto LABEL_63;
              }

              v33 = *(v29 + 8);
            }

            v35 += 2;
            ++v34;
          }

          while (v34 < v33);
        }

        if (v23 != a3 && !v27)
        {
          MSGController::getNextNFrames();
          goto LABEL_63;
        }

LABEL_44:
        v24 = v27 - 1;
LABEL_45:
        if (v23 >= a3)
        {
          goto LABEL_46;
        }
      }

      v30 = *(v29 + 32);
      if (v15 <= v30)
      {
        v31 = v23;
        a5[v23] = v30;
        v45 = *(v29 + 24);
        if (!v23)
        {
LABEL_20:
          *a6 = v45;
          v32 = a5[v31];
LABEL_39:
          v40 = *&v6[8 * a2];
          v15 = v30 + 20;
          ++v23;
          a5[v31] = v32 + *v40;
          if (v27)
          {
            if (MSGController::_getFirstPulseTimeFromEntry(v40[5] + (v27 - 1) * (*(v40[1] + 8) - 8), &v46))
            {
              MSGController::getNextNFrames();
              goto LABEL_63;
            }

            v24 = v27 - (v46 <= v15);
          }

          else
          {
            v24 = 0;
          }

          goto LABEL_45;
        }
      }

      else
      {
        if (SyncComputeNextMSGPulseTime(*(v29 + 8), *(v29 + 16), *(v29 + 40), *(v29 + 24), v30, v15, &a5[v23], &v45))
        {
          MSGController::getNextNFrames();
          goto LABEL_63;
        }

        v31 = v23;
        v30 = a5[v23];
        if (!v23)
        {
          goto LABEL_20;
        }
      }

      v32 = v30;
      if (*a6 + v31 != v45)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v48 = "firstPulseFrameID + x == nextFrameID";
          v49 = 2080;
          v50 = &unk_240CB6BAA;
          v51 = 2080;
          *v52 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGController/MSGController.cpp";
          *&v52[8] = 1024;
          *&v52[10] = 1121;
          v53 = 2048;
          v54 = 0;
          _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
        }

        v19 = 3758097104;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v43 = *a6;
          *buf = 136315906;
          v48 = "getNextNFrames";
          v49 = 2048;
          v50 = v43;
          v51 = 1024;
          *v52 = v23;
          *&v52[4] = 2048;
          *&v52[6] = v45;
          v20 = MEMORY[0x277D86220];
          v21 = "MSGController::%s: firstPulse: %llu, x: %d, nextFrameID: %llu\n";
          v22 = 38;
          goto LABEL_13;
        }

        goto LABEL_47;
      }

      goto LABEL_39;
    }

    ++v14;
  }

  while (v14 != 25);
  v19 = 3758097134;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v48 = "cur_entry_buf_idx < kMAX_RT_VSYNC_ENTRIES_NEEDED_TO_POP";
    v49 = 2080;
    v50 = &unk_240CB6BAA;
    v51 = 2080;
    *v52 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGController/MSGController.cpp";
    *&v52[8] = 1024;
    *&v52[10] = 1095;
    v53 = 2048;
    v54 = 0;
    v20 = MEMORY[0x277D86220];
    v21 = "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n";
LABEL_12:
    v22 = 48;
LABEL_13:
    _os_log_impl(&dword_240CA0000, v20, OS_LOG_TYPE_ERROR, v21, buf, v22);
  }

LABEL_47:
  v41 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t MSGController::_getFirstPulseTimeFromEntry(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    if (!*(a1 + 8))
    {
      MSGController::_getFirstPulseTimeFromEntry();
      v2 = v6;
      goto LABEL_7;
    }

    v2 = 0;
    v3 = *(a1 + 24);
    goto LABEL_6;
  }

  if (!*a1)
  {
    v2 = 0;
    v3 = *(a1 + 32);
LABEL_6:
    *a2 = v3;
    goto LABEL_7;
  }

  v2 = 3758097097;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 136316162;
    v7 = "entry->data_type == kVsyncNominalEntry";
    v8 = 2080;
    v9 = &unk_240CB6BAA;
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGController/MSGController.cpp";
    v12 = 1024;
    v13 = 1175;
    v14 = 2048;
    v15 = 0;
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", &v6, 0x30u);
  }

LABEL_7:
  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t MSGController::unregisterForTimingInfo(MSGController *this, unsigned int a2)
{
  if (*(this + 40) && (v3 = this + 8 * a2, v6 = *(v3 + 6), v5 = (v3 + 48), (v4 = v6) != 0))
  {
    if (!IOConnectCallStructMethod(*(this + 2), 0x20u, (v4 + 48), 4uLL, 0, 0))
    {
      v7 = *v5;
      v8 = *(*v5 + 40);
      *(*v5 + 40) = 0;
      if (v8)
      {
        MEMORY[0x245CCF6E0](v8, 0x1000C8077774924);
        v7 = *v5;
        *v5 = 0;
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        *v5 = 0;
      }

      std::default_delete<msg_local_timing_info_subscription_t>::operator()[abi:ne200100](v5, v7);
LABEL_9:
      result = 0;
      --*(this + 40);
      return result;
    }

    MSGController::unregisterForTimingInfo();
    return v10;
  }

  else
  {
    MSGController::unregisterForTimingInfo();
    return v11;
  }
}

uint64_t MSGController::GetSlaveSchedulingMarginForMasterID(MSGController *this, unsigned int a2, unsigned __int16 *a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(*(this + 2), 0x22u, input, 1u, &output, &outputCnt);
  if (!result)
  {
    *a3 = output;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSGController::registerForEventTriggerInfo(MSGController *this, unsigned int a2, unsigned __int8 *a3)
{
  *a3 = 0;
  if (*(this + 80) >= 2u)
  {
    MSGController::registerForEventTriggerInfo();
  }

  else
  {
    if (!*(this + 11))
    {
      goto LABEL_6;
    }

    v3 = 0;
    do
    {
      *a3 = ++v3;
    }

    while (*(this + v3 + 11));
    if (v3 < 3u)
    {
LABEL_6:
      operator new();
    }

    MSGController::registerForEventTriggerInfo();
  }

  return outputStruct;
}

uint64_t MSGController::unregisterForEventTriggerInfo(MSGController *this, unsigned int a2)
{
  if (*(this + 80) && (v4 = this + 88, (v5 = *(this + a2 + 11)) != 0))
  {
    if (IOConnectCallStructMethod(*(this + 2), 0x2Cu, (v5 + 32), 4uLL, 0, 0))
    {
      MSGController::unregisterForEventTriggerInfo();
      return v8;
    }

    else
    {
      v6 = *&v4[8 * a2];
      *&v4[8 * a2] = 0;
      if (v6)
      {
        MEMORY[0x245CCF700](v6, 0x1030C4021D8CAA8);
      }

      result = 0;
      --*(this + 80);
    }
  }

  else
  {
    MSGController::unregisterForEventTriggerInfo();
    return v9;
  }

  return result;
}

uint64_t MSGController::dumpMostRecentEventTriggers(uint64_t a1, unsigned int a2, unint64_t *a3, __int128 *a4)
{
  if (!a4)
  {
    MSGController::dumpMostRecentEventTriggers();
    return v21;
  }

  if (*a3 - 171 <= 0xFFFFFFFFFFFFFF55)
  {
    MSGController::dumpMostRecentEventTriggers();
    return v21;
  }

  if (a2 >= 4)
  {
    MSGController::dumpMostRecentEventTriggers();
    return v21;
  }

  v6 = a1 + 88;
  v7 = *(a1 + 88 + 8 * a2);
  if (!v7)
  {
    MSGController::dumpMostRecentEventTriggers();
    return v21;
  }

  v8 = a4;
  if (RingBufferW1Reader::jumpToLatest(v7, 1))
  {
    MSGController::dumpMostRecentEventTriggers();
    return v21;
  }

  if (*a3)
  {
    v9 = 0;
    v10 = v8;
    do
    {
      v20 = 24;
      if (RingBufferW1Reader::readNext(*(v6 + 8 * a2), v10, &v20))
      {
        MSGController::dumpMostRecentEventTriggers();
        return v21;
      }

      if (v20 != 24)
      {
        MSGController::dumpMostRecentEventTriggers();
        return v21;
      }

      ++v9;
      v11 = *a3;
      v10 += 24;
    }

    while (v9 < *a3);
    if (v9 != *a3)
    {
      MSGController::dumpMostRecentEventTriggers();
      return v21;
    }

    if (v11 >= 2)
    {
      v12 = 0;
      v13 = v8 - 24;
      do
      {
        v14 = *(v8 + 2);
        v15 = *v8;
        v16 = (v13 + 24 * v11);
        v17 = *(v16 + 2);
        *v8 = *v16;
        *(v8 + 2) = v17;
        v18 = v13 + 24 * *a3;
        *v18 = v15;
        *(v18 + 16) = v14;
        ++v12;
        v11 = *a3;
        v8 = (v8 + 24);
        v13 -= 24;
      }

      while (v12 < *a3 >> 1);
    }
  }

  return 0;
}

uint64_t MSGController::getEventTriggerInRange(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a2 >= 4)
  {
    MSGController::getEventTriggerInRange();
    goto LABEL_23;
  }

  v6 = a1 + 88;
  v7 = *(a1 + 88 + 8 * a2);
  if (!v7)
  {
    MSGController::getEventTriggerInRange();
    goto LABEL_23;
  }

  if (RingBufferW1Reader::jumpToLatest(v7, 1))
  {
    MSGController::getEventTriggerInRange();
    goto LABEL_23;
  }

  v19 = 24;
  v11 = RingBufferW1Reader::readNext(*(v6 + 8 * a2), __dst, &v19);
  if (v11)
  {
LABEL_16:
    v18 = v11;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v23 = "retcode == 0 ";
      v24 = 2080;
      v25 = &unk_240CB6BAA;
      v26 = 2080;
      v27 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGController/MSGController.cpp";
      v28 = 1024;
      v29 = 1354;
      v30 = 2048;
      v31 = v18;
      _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
    }

    goto LABEL_20;
  }

  v13 = 0;
  v14 = 1;
  while (1)
  {
    if (v19 != 24)
    {
      MSGController::getEventTriggerInRange();
      goto LABEL_23;
    }

    v15 = *__dst;
    if (!(v14 & 1 | (*__dst <= v12)))
    {
      MSGController::getEventTriggerInRange();
      goto LABEL_23;
    }

    if (*__dst <= a4)
    {
      break;
    }

LABEL_15:
    v19 = 24;
    v11 = RingBufferW1Reader::readNext(*(v6 + 8 * a2), __dst, &v19);
    v14 = 0;
    v12 = v15;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  if (v14)
  {
    if (*__dst < a3)
    {
      v18 = 3758097112;
      goto LABEL_20;
    }

LABEL_14:
    *a5 = *__dst;
    *(a5 + 16) = v21;
    v13 = 1;
    goto LABEL_15;
  }

  if ((v13 & 1) == 0)
  {
    if (*__dst < a3)
    {
      MSGController::getEventTriggerInRange();
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (*__dst < a3)
  {
    v18 = 0;
    goto LABEL_20;
  }

  MSGController::getEventTriggerInRange();
LABEL_23:
  v18 = *buf;
LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t MSGController::DispatchConfigQueue(MSGController *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(this + 366);
    v5 = 136315394;
    v6 = "DispatchConfigQueue";
    v7 = 1024;
    v8 = v2;
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MSGController::%s: Sending %u configs in a batch\n\n", &v5, 0x12u);
  }

  if (*(this + 366))
  {
    result = (*(*this + 64))(this, this + 168);
    *(this + 366) = 0;
  }

  else
  {
    result = 3758097120;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSGController::GetState(MSGController *this, unsigned __int8 *a2)
{
  output[1] = *MEMORY[0x277D85DE8];
  outputCnt[0] = 1;
  if (MSGController::_initMSGManagerObjects(this))
  {
    MSGController::GetState();
    result = LODWORD(output[0]);
  }

  else
  {
    result = IOConnectCallScalarMethod(*(this + 4), 0, 0, 0, output, outputCnt);
    if (result)
    {
      MSGController::GetState();
      result = outputCnt[1];
    }

    else
    {
      *a2 = output[0];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSGController::initSyncGenPhaseAlignment(MSGController *this, int a2, const char *a3)
{
  if (MSGController::_initMSGManagerObjects(this))
  {
    MSGController::initSyncGenPhaseAlignment();
    return inputStruct[1];
  }

  else
  {
    inputStruct[0] = a2;
    return IOConnectCallStructMethod(*(this + 4), 1u, inputStruct, 4uLL, 0, 0);
  }
}

uint64_t MSGController::deinitSyncGenPhaseAlignment(MSGController *this, unsigned int a2)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  if (MSGController::_initMSGManagerObjects(this))
  {
    MSGController::deinitSyncGenPhaseAlignment();
    result = v5;
  }

  else
  {
    result = IOConnectCallScalarMethod(*(this + 4), 2u, input, 1u, 0, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSGController::pauseSyncGenPhaseAlignment(MSGController *this, unsigned int a2)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  if (MSGController::_initMSGManagerObjects(this))
  {
    MSGController::pauseSyncGenPhaseAlignment();
    result = v5;
  }

  else
  {
    result = IOConnectCallScalarMethod(*(this + 4), 3u, input, 1u, 0, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSGController::unpauseSyncGenPhaseAlignment(MSGController *this, unsigned int a2)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  if (MSGController::_initMSGManagerObjects(this))
  {
    MSGController::unpauseSyncGenPhaseAlignment();
    result = v5;
  }

  else
  {
    result = IOConnectCallScalarMethod(*(this + 4), 4u, input, 1u, 0, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSGController::setTargetSyncAlignmentAndVelocity(mach_port_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12[1] = a3;
  v12[0] = a2;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v12[6] = a8;
  v12[7] = a9;
  v12[8] = a10;
  if (!MSGController::_initMSGManagerObjects(a1))
  {
    return IOConnectCallStructMethod(a1[4], 5u, v12, 0x48uLL, 0, 0);
  }

  MSGController::setTargetSyncAlignmentAndVelocity();
  return v13;
}

uint64_t MSGController::getEarliestPhaseRampStart(mach_port_t *a1, uint64_t a2, _OWORD *a3)
{
  outputStructCnt = 16;
  if (MSGController::_initMSGManagerObjects(a1))
  {
    MSGController::getEarliestPhaseRampStart();
    return outputStruct;
  }

  else
  {
    result = IOConnectCallStructMethod(a1[4], 6u, 0, 0, &outputStruct, &outputStructCnt);
    *a3 = outputStruct;
  }

  return result;
}

uint64_t MSGController::setMinimumPhaseDifference(MSGController *this, uint64_t a2)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  if (MSGController::_initMSGManagerObjects(this))
  {
    MSGController::setMinimumPhaseDifference();
    result = v5;
  }

  else
  {
    result = IOConnectCallScalarMethod(*(this + 4), 8u, input, 1u, 0, 0);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSGController::MSGGetFIFODepth(MSGController *this, unsigned __int8 *a2)
{
  output[1] = *MEMORY[0x277D85DE8];
  output[0] = 0;
  outputCnt = 1;
  v3 = IOConnectCallScalarMethod(*(this + 2), 0x2Fu, 0, 0, output, &outputCnt);
  v4 = v3;
  if (v3)
  {
    MSGController::MSGGetFIFODepth();
  }

  else
  {
    *a2 = output[0];
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t MSGController::getEDTData(uint64_t a1, uint64_t a2, void *outputStruct)
{
  v6 = 64;
  inputStruct = a2;
  v3 = IOConnectCallStructMethod(*(a1 + 8), 0x30u, &inputStruct, 8uLL, outputStruct, &v6);
  v4 = v3;
  if (v3)
  {
    MSGController::getEDTData();
  }

  return v4;
}

uint64_t MSGController::timelockBaseSyncs(uint64_t a1, int a2, int a3, void *a4, void *a5, void *a6)
{
  inputStruct[0] = a2;
  inputStruct[1] = a3;
  v16 = 0;
  v13 = 24;
  v9 = IOConnectCallStructMethod(*(a1 + 8), 0x31u, inputStruct, 0x10uLL, outputStruct, &v13);
  v10 = v9;
  if (v9)
  {
    MSGController::timelockBaseSyncs();
  }

  else
  {
    v11 = outputStruct[1];
    *a4 = outputStruct[0];
    *a5 = v11;
    *a6 = outputStruct[2];
  }

  return v10;
}

uint64_t MSGController::registerForVirtualFrameIDInfo(MSGController *this, unsigned int a2, unsigned __int8 *a3)
{
  *a3 = 0;
  if (*(this + 160) == 1)
  {
    MSGController::registerForVirtualFrameIDInfo();
  }

  else if (*(this + 120) >= 2u)
  {
    MSGController::registerForVirtualFrameIDInfo();
  }

  else if (MSGController::_initMSGManagerObjects(this))
  {
    MSGController::registerForVirtualFrameIDInfo();
  }

  else
  {
    v5 = *a3;
    if (*(this + v5 + 16))
    {
      do
      {
        LOBYTE(v5) = v5 + 1;
        *a3 = v5;
      }

      while (*(this + v5 + 16));
    }

    if (v5 < 3u)
    {
      operator new();
    }

    MSGController::registerForVirtualFrameIDInfo();
  }

  return v7;
}

uint64_t MSGController::unregisterForVirtualFrameIDInfo(MSGController *this, unsigned int a2)
{
  if (*(this + 120) && (v4 = this + 128, (v5 = *(this + a2 + 16)) != 0))
  {
    if (IOConnectCallStructMethod(*(this + 4), 0xAu, (v5 + 32), 4uLL, 0, 0))
    {
      MSGController::unregisterForVirtualFrameIDInfo();
      return v8;
    }

    else
    {
      v6 = *&v4[8 * a2];
      *&v4[8 * a2] = 0;
      if (v6)
      {
        MEMORY[0x245CCF700](v6, 0x1030C4021D8CAA8);
      }

      result = 0;
      --*(this + 120);
    }
  }

  else
  {
    MSGController::unregisterForVirtualFrameIDInfo();
    return v9;
  }

  return result;
}

uint64_t MSGController::getNextNFramesWithVirtualID(MSGController *this, unsigned int a2, signed int a3, uint64_t a4, unint64_t *a5, unint64_t *a6, int a7, unint64_t *a8)
{
  v20 = 0;
  if (MSGController::getNextNFrames(this, a2, a3, a4, a5, a6))
  {
    MSGController::getNextNFramesWithVirtualID();
    return __dst[0];
  }

  v13 = this + 128;
  if (!*&v13[8 * a7])
  {
    MSGController::getNextNFramesWithVirtualID();
    return __dst[0];
  }

  if (!a3)
  {
    return 0;
  }

  v14 = 0;
  while (2)
  {
    if (!RingBufferW1Reader::jumpToLatest(*&v13[8 * a7], 1))
    {
      v15 = 0;
      do
      {
        v16 = *&v13[8 * a7];
        v20 = *(*v16 + 8) - 8;
        if (RingBufferW1Reader::readNext(v16, __dst, &v20))
        {
          MSGController::getNextNFramesWithVirtualID();
          return v24;
        }

        if (v20 <= 0x1Fu)
        {
          MSGController::getNextNFramesWithVirtualID();
          return v24;
        }

        v17 = *a6 + v14;
      }

      while (v17 <= *__dst && v15++ < 5);
      a8[v14++] = v23 + v17 * v22;
      if (v14 != a3)
      {
        continue;
      }

      return 0;
    }

    break;
  }

  MSGController::getNextNFramesWithVirtualID();
  return v24;
}

uint64_t MSGController::SyncGetCurrentPulseRateCalibration(mach_port_t *a1, int a2, void *a3)
{
  inputStruct[0] = a2;
  v6 = 72;
  if (MSGController::_initMSGManagerObjects(a1))
  {
    MSGController::SyncGetCurrentPulseRateCalibration();
    return inputStruct[1];
  }

  result = IOConnectCallStructMethod(a1[4], 0xBu, inputStruct, 4uLL, a3, &v6);
  if (result)
  {
    MSGController::SyncGetCurrentPulseRateCalibration();
    return inputStruct[1];
  }

  return result;
}

uint64_t MSGController::SyncRegisterForPulseRateCalibrationUpdates(MSGController *this, uint64_t a2, unsigned int *a3)
{
  if (mach_port_allocate(*MEMORY[0x277D85F48], 1u, a3))
  {
    MSGController::SyncRegisterForPulseRateCalibrationUpdates();
    return v7;
  }

  else if (MSGController::_initMSGManagerObjects(this))
  {
    MSGController::SyncRegisterForPulseRateCalibrationUpdates();
    return v8;
  }

  else
  {
    result = MEMORY[0x245CCF5D0](*(this + 4), a2, *a3, 0);
    if (result)
    {
      MSGController::SyncRegisterForPulseRateCalibrationUpdates();
      return v9;
    }
  }

  return result;
}

uint64_t MSGController::SyncUnregisterForPulseRateCalibrationUpdates(MSGController *this, uint64_t a2, unsigned int *a3)
{
  inited = MSGController::_initMSGManagerObjects(this);
  v7 = inited;
  if (inited)
  {
    MSGController::SyncUnregisterForPulseRateCalibrationUpdates();
  }

  else if (MEMORY[0x245CCF5D0](*(this + 4), a2, 0, 0))
  {
    MSGController::SyncUnregisterForPulseRateCalibrationUpdates();
  }

  else if (mach_port_mod_refs(*MEMORY[0x277D85F48], *a3, 1u, -1))
  {
    MSGController::SyncUnregisterForPulseRateCalibrationUpdates();
  }

  return v7;
}

void std::default_delete<msg_local_timing_info_subscription_t>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 40);
    *(a2 + 40) = 0;
    if (v2)
    {
      MEMORY[0x245CCF6E0](v2, 0x1000C8077774924);
    }

    JUMPOUT(0x245CCF700);
  }
}

uint64_t RingBufferW1Writer::init(RingBufferW1Writer *this, unsigned __int8 *a2, unsigned int a3, unsigned int a4)
{
  if (!a2 || (a2 & 7) != 0)
  {
    RingBufferW1Writer::init();
    return v10;
  }

  else
  {
    *(this + 22) = 16;
    if (a3 <= 0xF)
    {
      RingBufferW1Writer::init();
      return v9;
    }

    else
    {
      LODWORD(v4) = a3 - 16;
      if (a3 - 16 >= 0x10000)
      {
        v4 = 0x10000;
      }

      else
      {
        v4 = v4;
      }

      *(this + 4) = v4;
      *this = a2;
      if (a4 > 0x7FF0 || (v5 = ((a4 + 7) & 0x1FFF8) + 8, v5 > v4))
      {
        RingBufferW1Writer::init();
        return v8;
      }

      else
      {
        v6 = 0;
        *(a2 + 4) = v5;
        *(this + 1) = a2 + 16;
        atomic_store(0, a2);
        *(*(this + 1) + (*(this + 4) - 8) % *(this + 4)) = 0;
      }
    }
  }

  return v6;
}

uint64_t RingBufferW1Writer::invalidateAll(unint64_t **this)
{
  atomic_store(0, *this);
  *(this[1] + (*(this + 4) - 8) % *(this + 4)) = 0;
  return 0;
}

uint64_t RingBufferW1Writer::write64AndAdvanceOffset(uint64_t result, uint64_t a2)
{
  *(*(result + 8) + *(result + 20)) = a2;
  *(result + 20) = ((*(result + 20) + 8) % *(result + 16) + 7) & 0xFFF8;
  return result;
}

void *RingBufferW1Writer::writeAndAdvanceOffset(RingBufferW1Writer *this, unsigned __int8 *__src, size_t __n)
{
  v3 = __n;
  v4 = __src;
  v6 = *(this + 10);
  v7 = *(this + 4) - v6;
  v8 = *(this + 1);
  v9 = __n - v7;
  if (__n <= v7)
  {
    __n = __n;
    v10 = (v8 + v6);
  }

  else
  {
    memcpy((v8 + v6), __src, v7);
    v10 = *(this + 1);
    __n = v9;
    __src = &v4[v7];
  }

  result = memcpy(v10, __src, __n);
  *(this + 10) = (((v3 + 7) & 0x1FFF8) + *(this + 10)) % *(this + 4);
  return result;
}

uint64_t RingBufferW1Writer::write(unint64_t **this, unsigned __int8 *a2, size_t a3)
{
  v3 = ((a3 + 7) & 0x1FFF8) + 8;
  if (v3 > *(*this + 4))
  {
    RingBufferW1Writer::write();
    return v13;
  }

  else if (a3)
  {
    v5 = atomic_load(*this);
    v6 = ((HIWORD(v5) & 0x7FFF) + WORD2(v5)) % *(this + 4);
    *(this + 10) = v6;
    v7 = v3 & 0x7FF8;
    v8 = (v7 + v5);
    v9 = v6;
    atomic_store((v7 << 48) | (v6 << 32) | v8, *this);
    RingBufferW1Writer::writeAndAdvanceOffset(this, a2, a3);
    result = 0;
    v11 = ((v3 | 0x8000) << 48) | (v9 << 32) | v8;
    *(this[1] + *(this + 10)) = v11;
    *(this + 10) = ((*(this + 10) + 8) % *(this + 4) + 7) & 0xFFF8;
    atomic_store(v11, *this);
  }

  else
  {
    RingBufferW1Writer::write();
    return v12;
  }

  return result;
}

uint64_t RingBufferW1Reader::init(RingBufferW1Reader *this, unsigned __int8 *a2, int a3)
{
  if (!a2 || (a2 & 7) != 0)
  {
    RingBufferW1Reader::init();
    return v7;
  }

  else
  {
    *(this + 28) = 16;
    if ((a3 - 16) >= 0x10000)
    {
      v3 = 0x10000;
    }

    else
    {
      v3 = a3 - 16;
    }

    *(this + 6) = v3;
    *this = a2;
    if (a3 - 16 < *(a2 + 4))
    {
      RingBufferW1Reader::init();
      return v6;
    }

    else
    {
      v4 = 0;
      *(this + 1) = a2 + 16;
      *(this + 2) = 0;
      *(this + 29) = 0;
    }
  }

  return v4;
}

uint64_t RingBufferW1Reader::jumpToLatest(RingBufferW1Reader *this, char a2)
{
  if (a2)
  {
    result = 0;
    *(this + 2) = 0;
    *(this + 29) = 0;
  }

  else
  {
    RingBufferW1Reader::jumpToLatest();
    return v4;
  }

  return result;
}

uint64_t RingBufferW1Reader::read64AndAdvanceOffset(uint64_t this, unsigned __int16 *a2, unint64_t *a3)
{
  v3 = *a2;
  *a3 = *(*(this + 8) + *a2);
  *a2 = (v3 + 8) % *(this + 24);
  return this;
}

void *RingBufferW1Reader::readAndAdvanceOffset(RingBufferW1Reader *this, unsigned __int16 *a2, unsigned __int8 *__dst, size_t __n)
{
  v4 = __n;
  v8 = *a2;
  v9 = *(this + 6) - v8;
  v10 = *(this + 1);
  v11 = __n - v9;
  if (__n <= v9)
  {
    v13 = __n;
    v12 = (v10 + v8);
    v14 = __dst;
  }

  else
  {
    memcpy(__dst, (v10 + v8), v9);
    v12 = *(this + 1);
    v13 = v11;
    v14 = &__dst[v9];
  }

  result = memcpy(v14, v12, v13);
  *a2 = (((v4 + 7) & 0x1FFF8) + *a2) % *(this + 6);
  return result;
}

uint64_t RingBufferW1Reader::readNext(RingBufferW1Reader *this, unsigned __int8 *__dst, unsigned __int16 *a3)
{
  v3 = this + 29;
  if (*(this + 29))
  {
    RingBufferW1Reader::readNext();
    return v28;
  }

  v5 = atomic_load(*this);
  if (!v5)
  {
    RingBufferW1Reader::readNext();
    return v28;
  }

  v8 = (this + 16);
  v7 = *(this + 2);
  if (!v7)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      v11 = v5;
    }

    else
    {
      v10 = *this;
      *(this + 2) = *(*(this + 1) + (*(this + 6) + WORD2(v5) - 8) % *(this + 6));
      v11 = atomic_load(v10);
      if (!v11)
      {
        v26 = 3758097112;
        RingBufferW1Reader::readNext();
        return v26;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        v12 = v11 - v5;
        if (v12 < 0)
        {
          RingBufferW1Reader::readNext();
          return 3758097097;
        }

        if (*(this + 6) < HIWORD(v5) + v12 + 8)
        {
          RingBufferW1Reader::readNext();
          return 3758097128;
        }

        LOWORD(v9) = *(this + 11);
        if ((v9 & 0x8000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    *v8 = v11;
    v9 = HIWORD(v11);
    goto LABEL_15;
  }

  v9 = HIWORD(v7);
  if ((v7 & 0x8000000000000000) == 0)
  {
LABEL_5:
    RingBufferW1Reader::readNext();
    return v28;
  }

LABEL_15:
  if ((v9 & 0x7FFF) - 8 > *a3)
  {
    RingBufferW1Reader::readNext();
    return v28;
  }

  v13 = v9 & 0x7FFF;
  v14 = *(this + 10);
  v13 -= 8;
  *a3 = v13;
  v15 = *(this + 6) - v14;
  v16 = v13;
  v17 = *(this + 1);
  v18 = v16 - v15;
  if (v16 <= v15)
  {
    v19 = (v17 + v14);
    v20 = __dst;
  }

  else
  {
    memcpy(__dst, (v17 + v14), v15);
    v19 = *(this + 1);
    v16 = v18;
    v20 = &__dst[v15];
  }

  memcpy(v20, v19, v16);
  v21 = *(*(this + 1) + (*(this + 6) + *(this + 10) - 8) % *(this + 6));
  v22 = atomic_load(*this);
  if (v22)
  {
    v23 = (*(this + 11) & 0x7FFF) + v22 - *(this + 4);
    v24 = *(this + 6);
    v25 = v23 + 8;
    if (v25 - 8 > v24)
    {
      RingBufferW1Reader::readNext();
      return 3758097136;
    }

    else if (v24 < v25)
    {
      RingBufferW1Reader::readNext(v3, this + 2);
      return 0;
    }

    else
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        if (v21)
        {
          RingBufferW1Reader::readNext();
          return v28;
        }

        *v3 = 1;
      }

      v26 = 0;
      *v8 = v21;
    }
  }

  else
  {
    v26 = 3758097112;
    RingBufferW1Reader::readNext();
  }

  return v26;
}

uint64_t RingBufferW1Reader::dumpStateToLogs(unint64_t **this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = atomic_load(*this);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "dumpStateToLogs";
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleMSGRingBuffer::%s: Ring Buffer data:\n", buf, 0xCu);
  }

  v3 = *(this + 6);
  if (v3 != 7)
  {
    v4 = 0;
    v5 = MEMORY[0x277D86220];
    do
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = this[1][v4 / 8];
        *buf = 136315394;
        v11 = "dumpStateToLogs";
        v12 = 2048;
        v13 = v6;
        _os_log_impl(&dword_240CA0000, v5, OS_LOG_TYPE_DEFAULT, "AppleMSGRingBuffer::%s: 0x%llx\n", buf, 0x16u);
        v3 = *(this + 6);
      }

      v4 += 8;
    }

    while (v4 < (v3 - 7));
  }

  v7 = atomic_load(*this);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "dumpStateToLogs";
    v12 = 2048;
    v13 = v2;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AppleMSGRingBuffer::%s: Initial Header: 0x%llx, Final Header: 0x%llx\n", buf, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t MSGWatchdogCreateWithDeadLineFrames(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    *&buf[4] = a1;
    *&buf[12] = 2048;
    *&buf[14] = a2;
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MSGWatchdogCreate(strict=%llu, relaxed=%llu)\n", buf, 0x16u);
  }

  v4 = MSGWatchdogOpen();
  v5 = v4;
  if (v4)
  {
    *buf = v4[1];
    *&buf[8] = a1;
    *&buf[16] = a2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MSGWatchdogCreateWithDeadLineFrames_cold_1();
    }

    if (IOConnectCallMethod(*(v5 + 4), 0x18u, buf, 3u, 0, 0, 0, 0, 0, 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        MSGWatchdogCreateWithDeadLineFrames_cold_2();
      }

      MSGWatchdogRelease(v5);
      v5 = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void *MSGWatchdogOpen()
{
  v0 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MSGWatchdogOpen\n", v6, 2u);
  }

  if (!v0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MSGWatchdogOpen_cold_5();
    }

    return 0;
  }

  v1 = malloc_type_valloc(0x1000uLL, 0x1000040BAFFE814uLL);
  *(v0 + 1) = v1;
  v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (!v1)
  {
    if (v2)
    {
      MSGWatchdogOpen_cold_4();
    }

    goto LABEL_19;
  }

  if (v2)
  {
    MSGWatchdogOpen_cold_1();
  }

  v3 = IOServiceMatching("AppleMSGKext");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v3);
  *v0 = MatchingService;
  if (!MatchingService)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MSGWatchdogOpen_cold_3();
    }

    goto LABEL_18;
  }

  if (IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, v0 + 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MSGWatchdogOpen_cold_2();
    }

    IOObjectRelease(*v0);
LABEL_18:
    free(*(v0 + 1));
LABEL_19:
    free(v0);
    return 0;
  }

  return v0;
}

void MSGWatchdogRelease(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MSGWatchdogRelease\n", v2, 2u);
  }

  IOServiceClose(*(a1 + 4));
  IOObjectRelease(*a1);
  free(*(a1 + 8));
  free(a1);
}

uint64_t MSGWatchdogUpdateDeadlines(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MSGWatchdogUpdateDeadlines(strict=%llu, relaxed=%llu)\n", buf, 0x16u);
    }

    *buf = a2;
    *&buf[8] = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MSGWatchdogCreateWithDeadLineFrames_cold_1();
    }

    v6 = IOConnectCallMethod(*(a1 + 4), 0x19u, buf, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    v6 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      MSGWatchdogUpdateDeadlines_cold_2();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t MSGWatchdogSelectStrictDeadline(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MSGWatchdogSelectStrictDeadline\n", buf, 2u);
  }

  if (a1)
  {
    return IOConnectCallMethod(*(a1 + 4), 0x1Au, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  v2 = 3758097090;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MSGWatchdogSelectStrictDeadline_cold_1();
  }

  return v2;
}

uint64_t MSGWatchdogSelectRelaxedDeadline(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "MSGWatchdogSelectRelaxedDeadline\n", buf, 2u);
  }

  if (a1)
  {
    return IOConnectCallMethod(*(a1 + 4), 0x1Bu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  v2 = 3758097090;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    MSGWatchdogSelectStrictDeadline_cold_1();
  }

  return v2;
}

uint64_t MSGWatchdogCheckin(uint64_t a1)
{
  ++**(a1 + 8);
  result = mach_continuous_time();
  *(*(a1 + 8) + 8) = result;
  return result;
}

uint64_t SyncComputeMSGPulseTime(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __int16 a5, uint64_t *a6)
{
  if (a6)
  {
    if (a3 == 4)
    {
      v6 = (a5 - *(a4 + 36));
      if (v6 <= 0)
      {
        SyncComputeMSGPulseTime();
        return v11;
      }

      else
      {
        result = 0;
        v9 = *a4 + a1 * (a5 - *(a4 + 36));
        *a6 = v9;
        *a6 = v9 + ((WORD1(a2) * v6 / WORD2(a2) + (a2 >> 10) * v6 + (*(a4 + 8) >> 10)) >> 6);
      }
    }

    else
    {
      SyncComputeMSGPulseTime();
      return v10;
    }
  }

  else
  {
    SyncComputeMSGPulseTime();
    return v12;
  }

  return result;
}

uint64_t SyncComputeNextMSGPulseTime(unint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, unint64_t a6, void *a7, void *a8)
{
  if (!a7)
  {
    SyncComputeNextMSGPulseTime();
    return v25;
  }

  if (!a8)
  {
    SyncComputeNextMSGPulseTime();
    return v25;
  }

  if (a3 != 4)
  {
    SyncComputeNextMSGPulseTime();
    return v25;
  }

  v10 = a6 - a5;
  if (a6 < a5)
  {
    SyncComputeNextMSGPulseTime();
    return v25;
  }

  v12 = a1 >> 58;
  v13 = a2 >> 10;
  v14 = WORD2(a2);
  v15 = v13 | (a1 << 6);
  if ((a2 & 0xFFFF0000) != 0)
  {
    v16 = WORD2(a2) << 6;
    v17 = WORD1(a2);
    v12 = (v15 * WORD2(a2) + __PAIR128__(v12 * WORD2(a2), WORD1(a2))) >> 64;
    v15 = v15 * WORD2(a2) + WORD1(a2);
  }

  else
  {
    v17 = 0;
    v16 = 64;
  }

  v18 = v16 * v10;
  v19 = (v16 * v10) >> 64;
  v20 = __udivti3();
  result = 0;
  if (__PAIR128__(v19, v18) - __PAIR128__(v22, v20) * __PAIR128__(v12, v15) != 0)
  {
    ++v20;
  }

  *a8 = v20 + a4;
  *a7 = a5 + v20 * a1 + ((v20 * v17 / v14 + v20 * v13) >> 6);
  return result;
}

void MSGSyncTargeter::MSGSyncTargeter(MSGSyncTargeter *this, uint64_t a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
}

{
  *this = a2;
  *(this + 1) = a3;
}

uint64_t MSGExternalSyncTargeter::MSGExternalSyncTargeter(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *result = a4;
  *(result + 8) = a5;
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

{
  *result = a4;
  *(result + 8) = a5;
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t MSGExternalSyncTargeter::getTargetAlignmentFromRawTiming(unint64_t *a1, void *a2, unint64_t a3, unint64_t *a4, unint64_t *a5, void *a6)
{
  v111 = *MEMORY[0x277D85DE8];
  *a6 = -1;
  v110 = 0;
  memset(v109, 0, sizeof(v109));
  bzero(v108, 0x320uLL);
  if (a3 >= 0x65)
  {
    MSGExternalSyncTargeter::getTargetAlignmentFromRawTiming();
    goto LABEL_72;
  }

  if (a3 < 2)
  {
    MSGExternalSyncTargeter::getTargetAlignmentFromRawTiming();
    goto LABEL_72;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a3 - 1;
  v14 = a2 + 3;
  v15 = *a2;
  v16 = *a1;
  v17 = a1[1];
  v18 = v109;
  v19 = a3 - 1;
  v20 = 1;
  do
  {
    v21 = *v14;
    v22 = *v14 - v15;
    v23 = v22 <= v17 && v22 >= v16;
    v24 = v23;
    if (v24 == 1)
    {
      v23 = __CFADD__((((v21 - v15) << 6) | (*(v14 + 4) >> 10)) - (*(v14 - 8) >> 10), v10);
      v10 += (((v21 - v15) << 6) | (*(v14 + 4) >> 10)) - (*(v14 - 8) >> 10);
      v11 += v23 + ((((((v21 - v15) * 64) | (*(v14 + 4) >> 10)) - (*(v14 - 8) >> 10)) >> 64 << 58) >> 58);
      if (v20)
      {
        *v18 = 1;
      }

      ++v12;
      if (v19 == 1)
      {
        *(v109 + v13) = 1;
      }
    }

    ++v18;
    v14 += 3;
    v15 = v21;
    v20 = v24;
    --v19;
  }

  while (v19);
  if (v12 >= 2)
  {
    v95 = v16;
    v93 = a5;
    v94 = a4;
    v25 = __divti3();
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = &a2[3 * a3 - 3];
    do
    {
      if (*(v109 + v13) == 1 && v13 > v28)
      {
        v27 = 0;
        v108[v13] = 0;
        *(v109 + v13) = 1;
        ++v26;
        v29 = v13;
        v28 = v13;
      }

      else if (v13 >= v28 || v27 < -199)
      {
        *(v109 + v13) = 0;
      }

      else
      {
        v97 = v29;
        v32 = a2[3 * v29] - *v30;
        v33 = __divti3();
        if (v33 >= 0x29 || ((v34 = ((v32 << 6) - __PAIR128__((v33 & 0x3F) * v25, (v33 & 0x3F) * v25)) >> 6, v17 >= v34) ? (v35 = v95 > v34) : (v35 = 1), v35))
        {
          *(v109 + v13) = 0;
          v29 = v97;
        }

        else
        {
          v27 += ~v33;
          v108[v13] = v27;
          *(v109 + v13) = 1;
          ++v26;
          v29 = v13;
        }
      }

      v36 = v13-- + 1;
      v30 -= 3;
    }

    while (v36 > 1);
    if (v26 >= 2)
    {
      v37 = &a2[3 * v28];
      v38 = *v37 >> 58;
      v39 = (*(v37 + 4) >> 10) | (*v37 << 6);
      v40 = (a2 + 1);
      v41 = buf;
      v42 = a3;
      do
      {
        v43 = *(v40 - 1);
        v44 = *v40;
        v40 += 12;
        v45 = v44 >> 10;
        v46 = (v43 * 64 - __PAIR128__(v38, v39)) >> 64;
        v47 = (v43 << 6) - v39 + v45;
        if (__CFADD__((v43 << 6) - v39, v45))
        {
          ++v46;
        }

        *v41 = v47;
        *(v41 + 1) = v46;
        v41 += 16;
        --v42;
      }

      while (v42);
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = v108;
      v52 = v109;
      v53 = a3;
      do
      {
        v54 = *v52++;
        if (v54 == 1)
        {
          v49 = (__PAIR128__(v49, v48) + *v51) >> 64;
          v48 += *v51;
          v55 = *v51 * *v51;
          v23 = __CFADD__(v50, v55);
          v50 += v55;
          if (v23)
          {
            ++v42;
          }
        }

        ++v51;
        --v53;
      }

      while (v53);
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = buf;
      v61 = v108;
      v62 = v109;
      do
      {
        v63 = *v62++;
        if (v63 == 1)
        {
          v64 = (__PAIR128__(v42, v50) - __PAIR128__(v49, v48) * *v61) * *v60 + __PAIR128__(v59, v58);
          v59 = *(&v64 + 1);
          v58 = v64;
          v65 = (*v61 * v26 - __PAIR128__(v49, v48)) * *v60 + __PAIR128__(v57, v56);
          v57 = *(&v65 + 1);
          v56 = v65;
        }

        v60 += 16;
        ++v61;
        --a3;
      }

      while (a3);
      v66 = __PAIR128__(v42, v50) * v26 - __PAIR128__(v49, v48) * __PAIR128__(v49, v48);
      v67 = __divti3();
      v69 = (__PAIR128__(v68, v67) + __PAIR128__(v38, v39)) >> 6;
      *v93 = v69;
      v93[1] = ((v67 + v39) & 0x3F) << 10;
      v70 = -__PAIR128__(v69, v56) >> 64;
      if (v66 >= 0)
      {
        v71 = v56;
      }

      else
      {
        v71 = -v56;
      }

      if (v66 >= 0)
      {
        v72 = v57;
      }

      else
      {
        v72 = v70;
      }

      v75 = abs128(v66);
      v74 = *(&v75 + 1);
      v73 = v75;
      v76 = __divti3();
      v78 = v76;
      v79 = (__PAIR128__(v72, v71) - __PAIR128__(v77, v76) * v75) >> 64;
      v80 = v71 - v76 * v75;
      if (v75 < 0x10000)
      {
        v83 = *(&v75 + 1);
        v82 = v75;
      }

      else
      {
        do
        {
          *(&v81 + 1) = v79;
          *&v81 = v80;
          v80 = v81 >> 1;
          *(&v81 + 1) = v74;
          *&v81 = v73;
          v82 = v81 >> 1;
          v83 = v74 >> 1;
          v84 = v74 | (v73 >> 17);
          v73 = v82;
          v74 >>= 1;
          v79 >>= 1;
        }

        while (v84);
      }

      result = 0;
      v23 = __CFADD__(v78, v79 >> 63);
      v86 = v78 + (v79 >> 63);
      *(&v88 + 1) = (v79 >> 63) + v23 + v77;
      *&v88 = v86;
      v87 = v88 >> 6;
      v89 = v82 & (v79 >> 63);
      v23 = __CFADD__(v89, v80);
      v90 = v89 + v80;
      if (v90 ^ v82 | (v79 + v23 + (v83 & (v79 >> 63))) ^ v83)
      {
        v91 = v90 << 16;
      }

      else
      {
        v91 = (v90 << 16) - 0x10000;
      }

      *v94 = v87;
      v94[1] = v91 & 0xFFFF03FF | ((v86 & 0x3F) << 10) | (v82 << 32);
      goto LABEL_62;
    }

    MSGExternalSyncTargeter::getTargetAlignmentFromRawTiming(buf);
LABEL_72:
    result = *buf;
    goto LABEL_62;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v99 = "numValidPulseGaps > 1";
    v100 = 2080;
    v101 = &unk_240CB6BAA;
    v102 = 2080;
    v103 = "/Library/Caches/com.apple.xbs/Sources/AppleMSG/MSGController/MSGSyncTargeter.cpp";
    v104 = 1024;
    v105 = 93;
    v106 = 2048;
    v107 = 0;
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSGSyncTargeter: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", buf, 0x30u);
  }

  if (v22 > v17)
  {
    result = 3758097127;
  }

  else
  {
    result = 3758097128;
  }

  *a4 = v22;
LABEL_62:
  v92 = *MEMORY[0x277D85DE8];
  return result;
}

void MSGPenroseSyncTargeter::MSGPenroseSyncTargeter(MSGPenroseSyncTargeter *this, uint64_t a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
}

{
  *this = a2;
  *(this + 1) = a3;
}

void MSGAllocateSyncHandle_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGStartSync_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2D8u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGStartSync_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetSyncConfig_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2D8u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetSyncConfig_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGResetSync_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2D8u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGResetSync_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGInitBaseSync_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2D8u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGInitBaseSync_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGInitDerivedSync_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2D8u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGInitDerivedSync_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGConfigureBaseSync_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2D8u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGConfigureBaseSync_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGConfigureDerivedSync_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2D8u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGConfigureDerivedSync_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGEnableSyncInterrupt_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2D8u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGEnableSyncInterrupt_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetSyncRunState_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2D8u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetSyncRunState_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGRegisterForSyncTiming_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGRegisterForSyncTiming_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGUnregisterFromSyncTiming_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGUnregisterFromSyncTiming_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetCurrentSyncTiming_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetCurrentSyncTiming_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetCurrentSyncTiming_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetFutureSyncTiming_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetFutureSyncTiming_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetFutureSyncTiming_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_Syncs: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGAllocateEventTriggerHandle_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGSetEventTriggerConfig_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2_0();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetEventTriggerConfig_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2_0();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetEventTriggerCount_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2_0();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGEnableEventTriggerInterrupt_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2_0();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetEventTriggerInterruptEnable_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2_0();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetEventTriggerInterruptStatus_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2_0();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGClearEventTriggerInterruptStatus_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2_0();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGRegisterForEventTriggerTiming_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2_0();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGUnregisterFromEventTriggerTiming_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2_0();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGGetEventTriggerTimings_cold_1(_DWORD *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v2, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v3, v4, v5, v6, v8);
  }

  *a1 = -536870211;
  v7 = *MEMORY[0x277D85DE8];
}

void MSGGetEventTriggerTimings_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI_EventTriggers: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2_0();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGCreate_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  std::mutex::unlock(controllerMutex);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGCreate_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGClientAPI: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  std::mutex::unlock(controllerMutex);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGCreate_cold_3(_DWORD *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v2, "MSGClientAPI: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v3, v4, v5, v6, v8);
  }

  *a1 = -536870911;
  v7 = *MEMORY[0x277D85DE8];
}

void MSGCreate_cold_4(_DWORD *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v2, "MSGClientAPI: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v3, v4, v5, v6, v8);
  }

  *a1 = -536870911;
  v7 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::syncStart()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::syncStop()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::syncReset()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::syncGetRunState()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::syncSetInterruptState()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::syncInitialize()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::syncSetConfig()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::syncSetConfigSequence()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::syncSetConfigBatch()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::syncGetInterruptState()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::syncGetConfig()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::syncGetConfigSequence()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::timerSetTrackedTime()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::timerSetCrossTimestampConfig()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::timerGetCrossTimestamp()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::timerGetCrossTimestampConfig()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::msgBlockIsReady()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::msgBlockPlatformInfo()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::msgBlockTargetVersion()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::syncReadEventLog()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::frametrackGetBuffers(uint64_t a1, int a2, _DWORD *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v5, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v6, v7, v8, v9, v11);
  }

  *a3 = a2;
  v10 = *MEMORY[0x277D85DE8];
}

void AppleMSGClient::frametrackGetBuffers(_DWORD *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v2, "AppleMSGClient: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v3, v4, v5, v6, v8);
  }

  *a1 = -536870181;
  v7 = *MEMORY[0x277D85DE8];
}

void MSGController::MSGController(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 152;
  do
  {
    v4 = *(v3 + v2);
    *(v3 + v2) = 0;
    if (v4)
    {
      MEMORY[0x245CCF700](v4, 0x1030C4021D8CAA8);
    }

    v2 -= 8;
  }

  while (v2 != -32);
  v5 = 0;
  v6 = a1 + 112;
  do
  {
    v7 = *(v6 + v5);
    *(v6 + v5) = 0;
    if (v7)
    {
      MEMORY[0x245CCF700](v7, 0x1030C4021D8CAA8);
    }

    v5 -= 8;
  }

  while (v5 != -32);
  v8 = (a1 + 72);
  v9 = -32;
  do
  {
    v10 = *v8;
    *v8 = 0;
    if (v10)
    {
      std::default_delete<msg_local_timing_info_subscription_t>::operator()[abi:ne200100](v8, v10);
    }

    --v8;
    v9 += 8;
  }

  while (v9);
}

void MSGController::serviceMatchedCallback()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::_openServiceInternal()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2F0u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2D6u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::MasterSyncConfig()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2DBu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2DBu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SlaveSyncConfig()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2DBu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2DBu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncStart()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncStartMasterScheduled()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncStartSlaveScheduled()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncStop()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncStopMasterScheduled()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncStopSlaveScheduled()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncGetTracking()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncGetFIFOState()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncPulseSubscribeToEvents()
{
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2DBu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C9u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncPulseUnsubscribeFromEvents()
{
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C9u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C9u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncGetCurrentMasterFrame()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::getCurrentMasterFrame()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2E0u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::getMasterFrameWithOffset()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SetEventTriggerConfig()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::GetEventTriggerConfig()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::GetEventTriggerCountSnapshot()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::EventTriggerInterruptEnable()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::GetEventTriggerInterruptEnable()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::GetEventTriggerInterruptStatus()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::EventTriggerClearInterruptStatus()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::GetCrossTimestampImmediate()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncGetTrackingInfoInMachAbsoluteTime()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::GetCurrentDisplayFramerate()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncGetDurationInMachAbsoluteTime()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::dumpCurrentSyncGenState()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncSetConfigSequence()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2DBu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncSetConfigSequenceScheduled()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2DBu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::registerForTimingInfo()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BEu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BDu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BDu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BEu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::getNextNFrames()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2D0u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C9u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2E7u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C9u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2F0u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::_getFirstPulseTimeFromEntry()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C9u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::unregisterForTimingInfo()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2F0u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::registerForEventTriggerInfo()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BEu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BDu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BDu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BEu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::unregisterForEventTriggerInfo()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2F0u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::dumpMostRecentEventTriggers()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C9u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2EFu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::getEventTriggerInRange()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C9u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2E5u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2F0u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2D0u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::GetState()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::initSyncGenPhaseAlignment()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::deinitSyncGenPhaseAlignment()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::pauseSyncGenPhaseAlignment()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::unpauseSyncGenPhaseAlignment()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::setTargetSyncAlignmentAndVelocity()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::getEarliestPhaseRampStart()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::setMinimumPhaseDifference()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::MSGGetFIFODepth()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::getEDTData()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::timelockBaseSyncs()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::registerForVirtualFrameIDInfo()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BDu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BDu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BEu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BEu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::unregisterForVirtualFrameIDInfo()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2F0u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::getNextNFramesWithVirtualID()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_14();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    v12 = v1;
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v2, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v3, v4, v5, v6, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "getNextNFramesWithVirtualID";
    v10 = 1024;
    v11 = v0;
    _os_log_impl(&dword_240CA0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "MSGController::%s: readNext failed with the error code 0x%x\n", &v8, 0x12u);
  }

  OUTLINED_FUNCTION_14();
  v7 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C9u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2F0u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncGetCurrentPulseRateCalibration()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncRegisterForPulseRateCalibrationUpdates()
{
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2DBu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_11();
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_13();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2BCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGController::SyncUnregisterForPulseRateCalibrationUpdates()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGController: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void RingBufferW1Writer::init()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2E8u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

void RingBufferW1Writer::write()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2E8u);
  v5 = *MEMORY[0x277D85DE8];
}

void RingBufferW1Reader::init()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2E8u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C2u);
  v5 = *MEMORY[0x277D85DE8];
}

void RingBufferW1Reader::jumpToLatest()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C7u);
  v5 = *MEMORY[0x277D85DE8];
}

void RingBufferW1Reader::readNext()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2F0u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C9u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_6_1();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_6_1();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_6_1();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2C9u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_6_1();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_6_1();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2DBu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_4(0x2D8u);
  v5 = *MEMORY[0x277D85DE8];
}

void RingBufferW1Reader::readNext(_BYTE *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v4, "AppleMSGRingBuffer: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v5, v6, v7, v8, v10);
  }

  *a1 = 1;
  *a2 = 0;
  v9 = *MEMORY[0x277D85DE8];
}

void MSGWatchdogCreateWithDeadLineFrames_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGWatchdogCreateWithDeadLineFrames_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGWatchdogOpen_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGWatchdogOpen_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void MSGWatchdogOpen_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void SyncComputeMSGPulseTime()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGTypeUtils: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_6_2();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGTypeUtils: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGTypeUtils: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void SyncComputeNextMSGPulseTime()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGTypeUtils: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_6_2();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGTypeUtils: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGTypeUtils: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "AppleMSGTypeUtils: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGExternalSyncTargeter::getTargetAlignmentFromRawTiming(_DWORD *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v2, "MSGSyncTargeter: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v3, v4, v5, v6, v8);
  }

  *a1 = -536870184;
  v7 = *MEMORY[0x277D85DE8];
}

void MSGExternalSyncTargeter::getTargetAlignmentFromRawTiming()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGSyncTargeter: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGSyncTargeter: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void MSGPenroseSyncTargeter::getTargetAlignmentFromPenroseData()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGSyncTargeter: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGSyncTargeter: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGSyncTargeter: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5(&dword_240CA0000, MEMORY[0x277D86220], v0, "MSGSyncTargeter: AssertMacros: %s, %s file: %s, line: %d, value: %ld\n\n", v1, v2, v3, v4, v6);
  }

  OUTLINED_FUNCTION_2();
  v5 = *MEMORY[0x277D85DE8];
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}