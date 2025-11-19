uint64_t FigMediaServerStart()
{
  FigWatchdogStart();
  v0 = FigWatchdogBeginVitalWork();
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      FigMediaServerStart_cold_1(v1);
    }
  }

  GSInitialize();
  FigServer_InitializeWithEnvironment();
  fpServer_CreateRPCTimeoutThread();
  getpid();
  proc_disable_cpumon();
  FigKTraceInit();
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  signal(30, 1);
  signal(31, 1);
  FigNote_OneTimeInitializationForMediaServerd();
  FigSysdiagnoseBlock_OneTimeInitializationForMediaserverd();
  FigSandboxRegistrationServerStart();
  feServer_LoadCelestial();
  FigShared_OneTimeInitialization();
  out_token = 0;
  v3 = notify_register_dispatch("com.apple.language.changed", &out_token, MEMORY[0x1E69E96A0], &__block_literal_global_14);
  MEMORY[0x19A8D2860](v3);
  feServer_startCTTelephonyCenterOnADispatchQueue_sAnythingButARunLoop = dispatch_queue_create("com.apple.mediaserverd.coretelephony.notarunloop", 0);
  v4 = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 4);
  if (v4)
  {
    v5 = dlsym(v4, "CTTelephonyCenterSetDefaultDispatchQueue");
    if (v5)
    {
      v5(feServer_startCTTelephonyCenterOnADispatchQueue_sAnythingButARunLoop);
    }
  }

  v6 = FigOSTransactionCreate();
  FigControlCommandsStartServer();
  ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCPECryptorServer"))
  {
    FigCPECryptorStartServer();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCPEServer"))
  {
    FigCPEServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartContentKeySessionServer"))
  {
    FigContentKeyBossStartServer();
    FigContentKeySessionStartServer();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCustomURLLoaderServer"))
  {
    FigCustomURLLoaderServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartByteStreamServer"))
  {
    FigByteStreamServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartFormatReaderServer"))
  {
    FigFormatReaderServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSampleGeneratorServer"))
  {
    FigSampleGeneratorServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetServer"))
  {
    FigAssetServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAudioDeviceClockServer"))
  {
    FigAudioDeviceClockServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMutableCompositionServer"))
  {
    FigMutableCompositionServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMutableMovieServer") && !FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    FigMutableMovieServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetImageGeneratorServer"))
  {
    FigAssetImageGeneratorServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMTAudioProcessingTapServer"))
  {
    MTAudioProcessingTapServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"VideoCompositorServer"))
  {
    FigVideoCompositorServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartPlayerServer"))
  {
    FigPlayerServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"PreloadPhotoJPEG"))
  {
    CMPhotoJPEGPreload();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartRecorderServer"))
  {
    FigStartCaptureServers();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAVConferenceServer"))
  {
    v8 = dlopen("/System/Library/PrivateFrameworks/GameKitServices.framework/GameKitServices", 4);
    if (v8)
    {
      v9 = dlsym(v8, "AVConferenceServerStart");
      if (v9)
      {
        v9(v9);
      }
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVideoQueueServer"))
  {
    FigVideoQueueServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartMonitoringNetworkActivity"))
  {
    FigStartMonitoringNetworkActivity();
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSystemControllerServer"))
    {
      FigSystemControllerStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartEndpointServer"))
    {
      FigEndpointStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartEndpointRemoteControlSessionServer"))
    {
      FigEndpointRemoteControlSessionStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartEndpointStreamServer"))
    {
      FigEndpointStreamStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAirPlayServicesServer"))
    {
      v10 = dlopen("/System/Library/PrivateFrameworks/AirPlaySender.framework/AirPlaySender", 4);
      if (v10)
      {
        v11 = dlsym(v10, "AirPlayReceiverServicesServerStart");
        if (v11)
        {
          v11(v11);
        }
      }
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSTSServer"))
    {
      FigSTSServerStart();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartRouteDiscovererServer"))
    {
      FigRouteDiscovererStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartRoutingContextServer"))
    {
      FigRoutingContextStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVolumeControllerServer"))
    {
      FigVolumeControllerStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartEndpointUIAgentServer"))
    {
      FigEndpointUIAgentStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartRoutingSessionManagerServer"))
    {
      FigRoutingSessionManagerStartServer();
    }

    if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAirPlayAlwaysOnModules"))
    {
      v12 = dlopen("/System/Library/PrivateFrameworks/AirPlaySender.framework/AirPlaySender", 4);
      if (v12)
      {
        v13 = dlsym(v12, "AirPlayStartAlwaysOnModules");
        if (v13)
        {
          v13(v13);
        }
      }
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartRemakerServer"))
  {
    FigRemakerServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartNeroidServer"))
  {
    FigNeroidStartServer();
  }

  FigAudioSessionInitializeVTFigAudioSession();
  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartDecompressionServer") && !VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode())
  {
    VTDecompressionSessionServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartCompressionServer") && !VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode())
  {
    VTCompressionSessionServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetDownloaderServer"))
  {
    FigAssetDownloaderStartServer();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartAssetCacheInspectorServer"))
  {
    FigAssetCacheInspectorStartServer();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSampleBufferAudioRendererServer"))
  {
    FigSampleBufferAudioRendererServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartSampleBufferRenderSynchronizerServer"))
  {
    FigSampleBufferRenderSynchronizerServerStart();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVideoTargetServer"))
  {
    FigVideoTargetStartServer();
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVisualContextServer"))
  {
    FigVisualContextServerStart();
  }

  if (feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVisionHWAccelerationServer"))
  {
    v14 = dlopen("/System/Library/PrivateFrameworks/VisionHWAccelerationServices.framework/VisionHWAccelerationServices", 4);
    if (v14)
    {
      v15 = dlsym(v14, "VisionHWAccelerationServicesStart");
      if (v15)
      {
        v15(v15);
      }
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && feServer_ShouldStartSubServer(ModelSpecificPropertyList, @"StartVirtualCaptureCardServer"))
  {
    FigVirtualCaptureCardServerStart();
  }

  if (ModelSpecificPropertyList)
  {
    CFRelease(ModelSpecificPropertyList);
  }

  if (v6)
  {
    os_release(v6);
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v16 = dlopen("/System/Library/PrivateFrameworks/AirPlaySender.framework/AirPlaySender", 4);
    if (v16)
    {
      v17 = dlsym(v16, "SidePlayManagerStart");
      if (v17)
      {
        v17(v17);
      }
    }
  }

  FigWatchdogCompleteVitalWork();
  if (*v2 == 1)
  {
    kdebug_trace();
  }

  return 0;
}

void CentralOneTimeSetup()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v0 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [MEMORY[0x1E696AF00] detachNewThreadSelector:sel_invokeThread_ toTarget:objc_opt_class() withObject:0];
}

uint64_t FigRemakerServerStart()
{
  qword_1ED4CAEF8 = FigReentrantMutexCreate();
  gRemakerFamilyServerState_4 = dispatch_queue_create("com.apple.coremedia.remakerserver.notificationQueue", 0);
  if (qword_1ED4CAEF8)
  {
    if (FigServer_IsMediaparserd())
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    else
    {
      FigServer_IsMediaplaybackd();
      return FigXPCServerStart();
    }
  }

  else
  {
    FigRemakerServerStart_cold_1(&v1);
    return v1;
  }
}

uint64_t RegisterFigPlayerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t playerasync_SetProperty(const void *a1, const void *a2, uint64_t a3)
{
  v18 = 0;
  cf = 0;
  v17 = 0;
  v16 = 0;
  if (*CMBaseObjectGetDerivedStorage() || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v6 = FigSignalErrorAtGM();
    goto LABEL_18;
  }

  v6 = FPSupport_HandlePlayerSetPropertyAndCopyModification(a1, a2, a3, 0, playerasync_handleSetProperty, &v17, &cf, &v18);
  if (v6)
  {
LABEL_18:
    v14 = v6;
    v13 = 0;
    goto LABEL_12;
  }

  if (v17)
  {
LABEL_11:
    v13 = 0;
    v14 = 0;
    goto LABEL_12;
  }

  v7 = playerasync_createCommand(a1, 3, 0, &v16);
  if (!v7)
  {
    v8 = cf;
    if (cf)
    {
      v8 = CFRetain(cf);
    }

    v9 = v16;
    v16[4] = v8;
    v10 = v18;
    if (v18)
    {
      v10 = CFRetain(v18);
    }

    v9[5] = v10;
    v11 = OUTLINED_FUNCTION_298();
    playerasync_runAsynchronousCommand(v11, v12);
    goto LABEL_11;
  }

  v14 = v7;
  v13 = v16;
LABEL_12:
  fpa_releaseCommand(v13);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v14;
}

uint64_t playerasync_createCommand(const void *a1, int a2, const void *a3, void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x70uLL, 0x10F2040C1459ED2uLL);
  if (v8)
  {
    v9 = v8;
    v8[6] = a2;
    if (a1)
    {
      v10 = CFRetain(a1);
    }

    else
    {
      v10 = 0;
    }

    *(v9 + 1) = v10;
    if (a3)
    {
      v11 = CFRetain(a3);
    }

    else
    {
      v11 = 0;
    }

    result = 0;
    *(v9 + 2) = v11;
    *a4 = v9;
  }

  else
  {
    playerasync_createCommand_cold_1(&v13);
    return v13;
  }

  return result;
}

void fpa_releaseCommand(void *a1)
{
  if (a1)
  {
    switch(*(a1 + 12))
    {
      case 1:
        goto LABEL_5;
      case 2:
      case 3:
      case 4:
      case 0x19:
      case 0x1A:
      case 0x1B:
      case 0x23:
        v2 = a1[4];
        if (v2)
        {
          CFRelease(v2);
        }

LABEL_5:
        v3 = a1[5];
        if (v3)
        {
          goto LABEL_6;
        }

        break;
      case 6:
      case 0x12:
      case 0x13:
      case 0x15:
      case 0x21:
      case 0x2B:
      case 0x30:
        v3 = a1[4];
        if (!v3)
        {
          break;
        }

        goto LABEL_6;
      case 0x10:
        v6 = a1[4];
        if (!v6)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      case 0x11:
        v3 = a1[8];
        if (!v3)
        {
          break;
        }

        goto LABEL_6;
      case 0x20:
      case 0x29:
        v6 = a1[5];
        if (v6)
        {
LABEL_18:
          CFRelease(v6);
        }

LABEL_19:
        v3 = a1[6];
        if (!v3)
        {
          break;
        }

        goto LABEL_6;
      case 0x2F:
        v3 = a1[7];
        if (!v3)
        {
          break;
        }

LABEL_6:
        CFRelease(v3);
        break;
      default:
        break;
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[1];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

uint64_t FigPlayerSetConnectionActive(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 24);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(v4 + 24);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a1, a2);
}

uint64_t playerfig_SetConnectionActive(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = *(DerivedStorage + 64) && !*(DerivedStorage + 65);
  }

  return playerfig_updatePlayerActiveState(a1, v6);
}

const void *playerfig_disturbPlayQueue()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF16A10 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Count = CFArrayGetCount(*(DerivedStorage + 528));
  v3 = Count;
  v4 = *(DerivedStorage + 536);
  if (v4)
  {
    v10.location = 0;
    v10.length = Count;
    v5 = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v10, v4) + 1;
  }

  else
  {
    v5 = Count;
  }

  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), i);
      v8 = CMBaseObjectGetDerivedStorage();
      itemfig_antiprepare(ValueAtIndex);
      ++*(v8 + 1768);
    }
  }

  if (v3 < 1)
  {
    result = 0;
  }

  else
  {
    result = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  }

  *(DerivedStorage + 536) = result;
  *(DerivedStorage + 544) = 0;
  return result;
}

uint64_t playerasync_CopyProperty(const void *a1, const void *a2, const void *a3, __CFArray **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  if (a4)
  {
    v9 = DerivedStorage;
    *a4 = 0;
    if (!*DerivedStorage)
    {
      if (a2)
      {
        if (CFEqual(a2, @"UserVolume"))
        {
          FigSimpleMutexLock();
          v11 = *(v9 + 11);
          if (v11)
          {
            *a4 = v11;
            CFRetain(*(v9 + 11));
LABEL_15:
            FigSimpleMutexUnlock();
            v13 = 0;
            PlayerTopology = 0;
LABEL_39:
            fpa_releaseCommand(v13);
            return PlayerTopology;
          }

          FigSimpleMutexUnlock();
LABEL_17:
          v15 = playerasync_createCommand(a1, 2, 0, &v19);
          if (v15)
          {
            PlayerTopology = v15;
            v13 = v19;
          }

          else
          {
            v16 = CFRetain(a2);
            v13 = v19;
            *(v19 + 32) = v16;
            if (a3)
            {
              v17 = CFRetain(a3);
            }

            else
            {
              v17 = 0;
            }

            *(v13 + 40) = v17;
            *(v13 + 48) = a4;
            if (CFEqual(a2, @"IsValid"))
            {
              FigSimpleMutexLock();
              while (!*(v9 + 2) && !v9[2])
              {
                FigConditionVariableWaitRelative();
              }

              FigSimpleMutexUnlock();
              playerasync_runImmediateCommand(a1, v13, 0);
            }

            else
            {
              playerasync_runSynchronousCommand(a1, v13);
            }

            PlayerTopology = *(v13 + 28);
          }

          goto LABEL_39;
        }

        if (CFEqual(a2, @"LastSentSubtitleSample"))
        {
          FigSimpleMutexLock();
          v12 = *(v9 + 12);
          if (v12)
          {
            v12 = CFRetain(v12);
          }

          *a4 = v12;
          goto LABEL_15;
        }

        if (CFEqual(a2, @"Status"))
        {
          FigSimpleMutexLock();
          if (*(v9 + 2) || v9[2])
          {
            PlayerTopology = 0;
            *a4 = FigCFNumberCreateSInt32();
          }

          else
          {
            PlayerTopology = 4294954513;
          }

          FigSimpleMutexUnlock();
        }

        else
        {
          if (!CFEqual(a2, @"Topology"))
          {
            if (FigCFEqual())
            {
              v13 = 0;
              PlayerTopology = 4294954512;
              goto LABEL_39;
            }

            if (FigCFEqual())
            {
              v18 = *(v9 + 20);
              if (v18)
              {
                v18 = CFRetain(v18);
              }

              v13 = 0;
              PlayerTopology = 0;
              *a4 = v18;
              goto LABEL_39;
            }

            goto LABEL_17;
          }

          if (*(v9 + 2))
          {
            goto LABEL_17;
          }

          PlayerTopology = FPSupport_CreatePlayerTopology(*MEMORY[0x1E695E480], @"Async", 0, a4);
        }

        v13 = 0;
        goto LABEL_39;
      }
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void playerfig_updateVideoLayerSize(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 536);
  v23 = 0;
  if (FigUseVideoReceiverForCALayer())
  {
    playerfig_updateVideoLayerSize_cold_1();
    return;
  }

  if (v5)
  {
    if (!*(CMBaseObjectGetDerivedStorage() + 1240))
    {
      return;
    }

    v6 = objc_autoreleasePoolPush();
    if (*(DerivedStorage + 208) && *(DerivedStorage + 216))
    {
      v22 = 0;
      v7 = *(MEMORY[0x1E695EFD0] + 16);
      *&v21.a = *MEMORY[0x1E695EFD0];
      *&v21.c = v7;
      *&v21.tx = *(MEMORY[0x1E695EFD0] + 32);
      if (!a2)
      {
        if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &v23))
        {
LABEL_28:
          v11 = v23;
          goto LABEL_13;
        }

        LODWORD(a2) = v23;
      }

      v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      v9.n128_u64[0] = 0;
      if (v8)
      {
        v8(v5, &v22 + 4, &v22, v9, 0.0);
        v10 = *(&v22 + 1);
        v9.n128_u32[0] = v22;
      }

      else
      {
        v10 = 0.0;
      }

      if (*(DerivedStorage + 76))
      {
        FPSupport_AppendDeferredTransactionChangeForSettingBoundsOnLayers(a2, *(DerivedStorage + 208), 0.0, 0.0, v10, v9.n128_f32[0]);
        v10 = *(&v22 + 1);
        v9.n128_u32[0] = v22;
      }

      v12 = v10 * 0.5;
      v13 = v9.n128_f32[0] * 0.5;
      if (FPSupport_ShouldApplyVideoTrackMatrix(a1, v5))
      {
        v20 = 0;
        VideoMatrixRotationAngleAndFlips = itemfig_getVideoMatrixRotationAngleAndFlips(v5, &v20 + 1, &v20);
        CGAffineTransformMakeRotation(&t1, VideoMatrixRotationAngleAndFlips * 3.14159265 / 180.0);
        v15 = -1.0;
        if (v20)
        {
          v16 = -1.0;
        }

        else
        {
          v16 = 1.0;
        }

        if (!HIBYTE(v20))
        {
          v15 = 1.0;
        }

        CGAffineTransformMakeScale(&v18, v16, v15);
        CGAffineTransformConcat(&v21, &t1, &v18);
      }

      v17 = *(DerivedStorage + 216);
      t1 = v21;
      FPSupport_AppendDeferredTransactionChangeForSettingTransformOnLayers(a2, 1, &t1, v17, v12, v13);
      goto LABEL_28;
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
  }

  v11 = 0;
LABEL_13:
  FigDeferredTransactionCommit(v11, 0);
  if (v23)
  {
    CFRelease(v23);
  }

  objc_autoreleasePoolPop(v6);
}

void playerfig_applyEQPreset()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    FigSignalErrorAtGM();
  }

  else if (*(DerivedStorage + 584) || *(DerivedStorage + 664))
  {
    valuePtr = *(DerivedStorage + 80);
    if (*(DerivedStorage + 536))
    {
      v1 = *(CMBaseObjectGetDerivedStorage() + 976);
      if (v1)
      {
        valuePtr = v1;
      }
    }

    v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    fp_setPropertyOnAllAudioRenderPipelines();
    CFRelease(v2);
  }
}

uint64_t playerfig_doesAnyWorkingOrLameDuckItemHaveVideo()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 536) || (v18.length = CFArrayGetCount(*(DerivedStorage + 528)), v18.location = 0, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(DerivedStorage + 528), v18, *(DerivedStorage + 536)), FirstIndexOfValue < 0))
  {
    v4 = 0;
  }

  else
  {
    v2 = FirstIndexOfValue;
    v3 = 0;
    v4 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), v3);
      v6 = CMBaseObjectGetDerivedStorage();
      if (*(v6 + 1040))
      {
        break;
      }

      v7 = v6;
      v8 = *(v6 + 1088);
      if (v8)
      {
        Count = CFArrayGetCount(v8);
        if (Count >= 1)
        {
          v10 = Count;
          v11 = 0;
          while (1)
          {
            v17 = 0;
            v16 = 0;
            FigCFArrayGetInt32AtIndex();
            itemfig_getTrackStorage(ValueAtIndex, v17, &v16);
            if (v16)
            {
              if (*(v16 + 4) == 1986618469)
              {
                v12 = *(v16 + 216);
                if (v12)
                {
                  if (CFArrayGetCount(v12) >= 1)
                  {
                    break;
                  }
                }
              }
            }

            if (v10 == ++v11)
            {
              goto LABEL_13;
            }
          }

          v4 = 1;
        }
      }

LABEL_13:
      v13 = *(v7 + 864);
      if (v13)
      {
        if (CFArrayGetCount(v13) > 0)
        {
          break;
        }
      }

      if (v3++ == v2)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
  }

LABEL_21:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t RegisterFigPlaybackItemType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigRemote_SerializeCookiesForURL(const __CFURL *a1, uint64_t a2)
{
  theArray = 0;
  if (!FigCFHTTPIsHTTPBasedURL(a1))
  {
    return 0;
  }

  v4 = FigURLStorageSessionCopyGlobalSession();
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v5 || (v5(v4, a1, &theArray), !theArray))
  {
    v8 = 0;
    goto LABEL_8;
  }

  Count = CFArrayGetCount(theArray);
  v7 = theArray;
  if (Count < 1)
  {
    v8 = 0;
    if (!theArray)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  v8 = MEMORY[0x19A8D2A70](theArray, *MEMORY[0x1E695E480], a2);
  v7 = theArray;
  if (theArray)
  {
LABEL_12:
    CFRelease(v7);
  }

LABEL_8:
  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

uint64_t itemasync_SetProperty(const void *a1, const void *a2, uint64_t a3)
{
  v20 = 0;
  v18 = 0;
  cf = 0;
  v17 = 0;
  if (*CMBaseObjectGetDerivedStorage() || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v15 = FigSignalErrorAtGM();
    v14 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v6 || *CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    v7 = FigSignalErrorAtGM();
    goto LABEL_23;
  }

  v7 = FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(a1, a2, a3, 0, itemasync_handleSetProperty, &v17, &cf, &v18);
  if (v7)
  {
LABEL_23:
    v15 = v7;
    v14 = 0;
    goto LABEL_14;
  }

  if (v17)
  {
LABEL_13:
    v14 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  v8 = playerasync_createCommand(v6, 26, a1, &v20);
  if (!v8)
  {
    v9 = cf;
    if (cf)
    {
      v9 = CFRetain(cf);
    }

    v10 = v20;
    v20[4] = v9;
    v11 = v18;
    if (v18)
    {
      v11 = CFRetain(v18);
    }

    v10[5] = v11;
    v12 = OUTLINED_FUNCTION_298();
    playerasync_runAsynchronousCommand(v12, v13);
    goto LABEL_13;
  }

  v15 = v8;
  v14 = v20;
LABEL_14:
  fpa_releaseCommand(v14);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v15;
}

uint64_t playercentral_CopyPlayQueueItem(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v6 = 0;
  }

  cf = 0;
  if (*(DerivedStorage + 8))
  {
    goto LABEL_5;
  }

  v8 = *(DerivedStorage + 16);
  if (!v8)
  {
    goto LABEL_5;
  }

  if (v6)
  {
    if (!*(v6 + 16) && a3)
    {
      v9 = *(v6 + 8);
      goto LABEL_17;
    }

LABEL_5:

    return FigSignalErrorAtGM();
  }

  if (!a3)
  {
    goto LABEL_5;
  }

  v9 = 0;
LABEL_17:
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v10)
  {
    v11 = v10(v8, v9, &cf);
    if (cf)
    {
      v12 = FigCFWeakReferenceTableCopyValue();
      if (v12)
      {
        v11 = v11;
      }

      else
      {
        v11 = 4294954511;
      }

      CFRelease(cf);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 4294954514;
  }

  *a3 = v12;
  return v11;
}

uint64_t playerfig_CopyPlayQueueItem(uint64_t a1, const void *a2, const void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v7 = DerivedStorage;
    *a3 = 0;
    if (!*DerivedStorage)
    {
      if (a2)
      {
        v9 = CMBaseObjectGetDerivedStorage();
        if (*v9)
        {
          goto LABEL_3;
        }

        v14 = v9;
        if (*(v9 + 8) != a1)
        {
          goto LABEL_3;
        }

        FigSimpleMutexLock();
        if (!*(v14 + 1))
        {
          v13 = FigSignalErrorAtGM();
LABEL_21:
          FigSimpleMutexUnlock();
          return v13;
        }

        v15 = *(v7 + 66);
        v21.length = CFArrayGetCount(v15);
        v21.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v15, v21, a2);
        if (FirstIndexOfValue == -1)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v13 = FigSignalErrorAtGM();
          ValueAtIndex = *a3;
          if (*a3)
          {
LABEL_12:
            CFRetain(ValueAtIndex);
          }

LABEL_19:
          if (dword_1EAF16A10 >= 5)
          {
            v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          goto LABEL_21;
        }

        v17 = FirstIndexOfValue + 1;
        if (FirstIndexOfValue + 1 < CFArrayGetCount(*(v7 + 66)))
        {
          v10 = *(v7 + 66);
          v11 = v17;
LABEL_11:
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
          v13 = 0;
          *a3 = ValueAtIndex;
          if (!ValueAtIndex)
          {
            goto LABEL_19;
          }

          goto LABEL_12;
        }
      }

      else
      {
        FigSimpleMutexLock();
        if (CFArrayGetCount(*(v7 + 66)) >= 1)
        {
          v10 = *(v7 + 66);
          v11 = 0;
          goto LABEL_11;
        }
      }

      v13 = 0;
      *a3 = 0;
      goto LABEL_19;
    }
  }

LABEL_3:

  return FigSignalErrorAtGM();
}

uint64_t itemasync_SetCurrentTime(const void *a1, __int128 *a2, int a3)
{
  v12 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v7)
    {
      v8 = v7;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_SetCurrentTime_cold_1(&v13);
        v10 = 0;
        v9 = v13;
      }

      else
      {
        playerasync_removeQueuedSeekCommands(v8, a1);
        v9 = playerasync_createCommand(v8, 30, a1, &v12);
        v10 = v12;
        if (!v9)
        {
          v11 = *a2;
          *(v12 + 6) = *(a2 + 2);
          *(v10 + 2) = v11;
          *(v10 + 14) = a3;
          playerasync_runAsynchronousCommand(v8, v10);
          v10 = 0;
        }
      }

      fpa_releaseCommand(v10);
      CFRelease(v8);
    }

    else
    {
      itemasync_SetCurrentTime_cold_2();
      return v13;
    }

    return v9;
  }
}

uint64_t itemfig_SetCurrentTimeWithRange(const void *a1, CMTime *a2, int a3, CMTime *a4, __int128 *a5)
{
  v9 = *a2;
  v8 = *a4;
  v6 = *a5;
  v7 = *(a5 + 2);
  return itemfig_setCurrentTimeWithRangeAndIDGuts(a1, &v9, a3, &v8, &v6, 0, 0, 0);
}

uint64_t itemfig_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    itemfig_GetCurrentTime_cold_1(&v13);
    return v13;
  }

  if (!a2)
  {
    itemfig_GetCurrentTime_cold_4(&v13);
    return v13;
  }

  v4 = DerivedStorage;
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    itemfig_GetCurrentTime_cold_3(&v13);
    return v13;
  }

  v6 = v5;
  if (*CMBaseObjectGetDerivedStorage())
  {
    itemfig_GetCurrentTime_cold_2(&v13);
    v11 = v13;
    goto LABEL_12;
  }

  FigSimpleMutexLock();
  v7 = *(v4 + 44);
  if (v7)
  {
    FigPlaybackBossGetTime(v7, &v13);
    *a2 = v13;
    v8 = v14;
LABEL_10:
    *(a2 + 16) = v8;
    goto LABEL_11;
  }

  if ((*(v4 + 9) & 0x1D) != 1)
  {
    v10 = MEMORY[0x1E6960CC0];
    *a2 = *MEMORY[0x1E6960CC0];
    v8 = *(v10 + 16);
    goto LABEL_10;
  }

  v9 = *(v4 + 24);
  *(a2 + 16) = *(v4 + 5);
  *a2 = v9;
LABEL_11:
  FigSimpleMutexUnlock();
  v11 = 0;
LABEL_12:
  CFRelease(v6);
  return v11;
}

uint64_t FigTimebaseSynchronizeToMoment(OpaqueCMTimebase *a1, OpaqueCMTimebase *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v3 = *(a3 + 4);
  v5[0] = 120;
  v5[1] = v3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = *(a3 + 56);
  v11 = *(a3 + 64);
  v13 = *(MEMORY[0x1E6960C70] + 16);
  v12 = *MEMORY[0x1E6960C70];
  v15 = v13;
  v14 = v12;
  return figtimebase_synchronizeToMomentInternal(a1, a2, v5);
}

void itemasync_reflectSubItemNotification(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  CMBaseObjectGetDerivedStorage();
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    CMBaseObjectGetDerivedStorage();
  }

  if (CFEqual(a3, @"ItemWasRemovedFromPlayQueue"))
  {
    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"AsRequested");
      if (v8 && *MEMORY[0x1E695E4D0] != Value)
      {
        goto LABEL_7;
      }
    }

    else if (v8)
    {
LABEL_7:
      playerasync_removeItemFromPlayQueueWithoutInformingSubPlayer(v8, a2);
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v8)
  {

    CFRelease(v8);
  }
}

uint64_t itemasync_MakeReadyForInspection(const void *a1, const void *a2, uint64_t a3)
{
  v13 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v7 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v7)
    {
      v8 = v7;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_MakeReadyForInspection_cold_1(&v14);
        v11 = 0;
        v12 = v14;
      }

      else
      {
        v9 = playerasync_createCommand(v8, 33, a1, &v13);
        if (v9)
        {
          v12 = v9;
          v11 = v13;
        }

        else
        {
          if (a2)
          {
            v10 = CFRetain(a2);
          }

          else
          {
            v10 = 0;
          }

          v11 = v13;
          *(v13 + 32) = v10;
          *(v11 + 40) = a3;
          playerasync_runSynchronousCommand(v8, v11);
          v12 = *(v11 + 28);
        }
      }

      fpa_releaseCommand(v11);
      CFRelease(v8);
    }

    else
    {
      itemasync_MakeReadyForInspection_cold_2();
      return v14;
    }

    return v12;
  }
}

uint64_t itemcentral_MakeReadyForInspection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_MakeReadyForInspection(&v10);
    return v10;
  }

  else
  {
    v6 = DerivedStorage;
    if (itemcentral_isParentPlayerValid())
    {
      v7 = *(v6 + 8);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v8)
      {

        return v8(v7, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_MakeReadyForInspection(&v11);
      return v11;
    }
  }
}

void itemfig_makeReadyForInspection()
{
  OUTLINED_FUNCTION_564();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v8 = DerivedStorage;
    if (!DerivedStorage[1282])
    {
      DerivedStorage[1282] = 1;
      itemfig_retrieveAssetBasicsIfReady();
      if (v21)
      {
        goto LABEL_41;
      }
    }

    v9 = MEMORY[0x1E695E480];
    if (!v8[1240])
    {
      if (!v8[1280])
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          goto LABEL_2;
        }

        v10 = Mutable;
        CFArrayAppendValue(Mutable, @"assetProperty_ContentByteStream");
        CFArrayAppendValue(v10, @"assetProperty_FormatReader");
        CFArrayAppendValue(v10, @"assetProperty_Tracks");
        CFArrayAppendValue(v10, @"MediaSelectionArray");
        if (!v3)
        {
          goto LABEL_33;
        }

        goto LABEL_10;
      }

      if (itemfig_assureBasicsReadyUsingAsset(v5))
      {
LABEL_41:
        OUTLINED_FUNCTION_463();
        return;
      }
    }

    v10 = 0;
    if (!v3)
    {
      goto LABEL_33;
    }

LABEL_10:
    Count = CFArrayGetCount(v3);
    if (Count)
    {
      v12 = Count;
      if (!v10)
      {
        v10 = CFArrayCreateMutable(*v9, 0, MEMORY[0x1E695E9C0]);
        if (!v10)
        {
          goto LABEL_2;
        }
      }

      if (v12 >= 1)
      {
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
          if (CFEqual(ValueAtIndex, @"Lyrics"))
          {
            v14 = v10;
            v15 = @"Lyrics";
          }

          else if (CFEqual(ValueAtIndex, @"AccurateDuration"))
          {
            v14 = v10;
            v15 = @"Duration";
          }

          else if (CFEqual(ValueAtIndex, @"InitialSamples"))
          {
            v14 = v10;
            v15 = @"assetProperty_InitialSamples";
          }

          else if (CFEqual(ValueAtIndex, @"iTunesGaplessInfo"))
          {
            v14 = v10;
            v15 = @"iTunesGaplessInfo";
          }

          else
          {
            if (!CFEqual(ValueAtIndex, @"CPEProtector"))
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_16();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              goto LABEL_25;
            }

            CFArrayAppendValue(v10, @"assetProperty_ProtectedStatus");
            v14 = v10;
            v15 = @"assetProperty_CPEProtector";
          }

          CFArrayAppendValue(v14, v15);
LABEL_25:
          OUTLINED_FUNCTION_220_0();
        }

        while (!v16);
      }

      if (!CFArrayGetCount(v10))
      {
        CFRelease(v10);
        goto LABEL_39;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!v10)
    {
LABEL_39:
      if (v1)
      {
        *v1 = 1;
      }

      goto LABEL_41;
    }

LABEL_34:
    if (*(*(CMBaseObjectGetVTable() + 16) + 16))
    {
      v18 = OUTLINED_FUNCTION_298();
      v20 = v19(v18);
      if (v1)
      {
        if (!v20)
        {
          *v1 = 1;
        }
      }
    }

    CFRelease(v10);
    goto LABEL_41;
  }

LABEL_2:
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_463();

  FigSignalErrorAtGM();
}

uint64_t FigReadCacheAddOneFile(uint64_t a1, const void *a2)
{
  v3 = a1;
  if (gFigReadCache && *gFigReadCache || (result = OUTLINED_FUNCTION_2_52(a1), !result))
  {
    v5 = OUTLINED_FUNCTION_1_52();
    v5[4] = (v3 << 31 >> 31) & 5;
    *(v5 + 3) = CFRetain(a2);
    IssueFigReadCacheRequest(v5);
    return 0;
  }

  return result;
}

uint64_t FigReadCacheInitialize(uint64_t a1, int a2, unsigned int a3)
{
  LODWORD(v4) = a2;
  MEMORY[0x19A8D3660](&sSetupFigReadCacheStructureOnce, SetupFigReadCacheStructure);
  if (!gFigReadCache)
  {
    return 4294967188;
  }

  FigSimpleMutexLock();
  if (*gFigReadCache)
  {
    v4 = 0;
  }

  else
  {
    v5 = *MEMORY[0x1E695E480];
    ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
    allocator = v5;
    if (ModelSpecificPropertyList)
    {
      v7 = ModelSpecificPropertyList;
      value.version = 0;
      valuePtr = 0;
      if (CFDictionaryGetValueIfPresent(ModelSpecificPropertyList, @"ReadCacheNumberOfBlocks", &value))
      {
        v8 = CFGetTypeID(value.version);
        if (v8 == CFNumberGetTypeID())
        {
          CFNumberGetValue(value.version, kCFNumberSInt64Type, &valuePtr);
          if ((valuePtr - 2) < 0xFFFFFFFE)
          {
            LODWORD(v4) = valuePtr;
          }
        }
      }

      if (CFDictionaryGetValueIfPresent(v7, @"ReadCacheBlockSize", &value))
      {
        v9 = CFGetTypeID(value.version);
        if (v9 == CFNumberGetTypeID())
        {
          CFNumberGetValue(value.version, kCFNumberSInt64Type, &valuePtr);
          if ((valuePtr - 0x20000) < 0xFFFE0000)
          {
            a3 = valuePtr;
          }
        }
      }

      CFRelease(v7);
    }

    LOBYTE(value.version) = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"read_cache_num_entries", @"com.apple.coremedia", &value);
    if ((AppIntegerValue - 2) >= 0xFFFFFFFE || LOBYTE(value.version) == 0)
    {
      v4 = v4;
    }

    else
    {
      v4 = AppIntegerValue;
    }

    v12 = CFPreferencesGetAppIntegerValue(@"read_cache_block_size", @"com.apple.coremedia", &value);
    if ((v12 - 0x20000) >= 0xFFFE0000 || LOBYTE(value.version) == 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = v12;
    }

    if (v14 <= 0x20000)
    {
      v15 = 0x20000;
    }

    else
    {
      v15 = v14;
    }

    *(gFigReadCache + 16) = FigSemaphoreCreate();
    *(gFigReadCache + 32) = FigSimpleMutexCreate();
    v16 = FigSimpleMutexCreate();
    v17 = MEMORY[0x1E69E9A60];
    *(gFigReadCache + 184) = v16;
    v18 = *v17;
    value.version = 0;
    value.info = v15;
    memset(&value.retain, 0, 40);
    value.deallocate = PurgeableVMAllocatorDeallocateCallBack;
    value.preferredSize = 0;
    v19 = CFAllocatorCreate(0, &value);
    v20 = gFigReadCache;
    *(gFigReadCache + 168) = v19;
    *(v20 + 104) = v15;
    *(v20 + 108) = v4;
    v21 = malloc_type_calloc(v4, 0x68uLL, 0x1030040915FFAA9uLL);
    *(gFigReadCache + 112) = v21;
    if (v21)
    {
      if (v4)
      {
        v22 = 0;
        v23 = 104 * v4;
        while (1)
        {
          vm_allocate(v18, (*(gFigReadCache + 112) + v22 + 40), *(gFigReadCache + 104), 1593835523);
          v24 = *(gFigReadCache + 112) + v22;
          v25 = *(v24 + 40);
          if (v25)
          {
            v26 = CMBlockBufferCreateWithMemoryBlock(0, v25, *(gFigReadCache + 104), *(gFigReadCache + 168), 0, 0, *(gFigReadCache + 104), 0, (v24 + 48));
          }

          else
          {
            fig_log_get_emitter();
            v26 = FigSignalErrorAtGM();
          }

          v4 = v26;
          if (v26)
          {
            break;
          }

          v27 = *(gFigReadCache + 112) + v22;
          *(v27 + 72) = -1;
          MoveToVGroup(v27, 4u, 0);
          v22 += 104;
          if (v23 == v22)
          {
            v4 = 0;
            break;
          }
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      v4 = FigSignalErrorAtGM();
    }

    Mutable = CFDictionaryCreateMutable(allocator, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69631E8], *MEMORY[0x1E695E4C0]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69631F0], @"com.apple.coremedia.readcache");
    FigThreadCreate();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    *gFigReadCache = 1;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t SetupFigReadCacheStructure()
{
  result = malloc_type_calloc(1uLL, 0x138uLL, 0x106004043265632uLL);
  if (result)
  {
    v1 = result;
    *(result + 8) = FigSimpleMutexCreate();
    result = FigReadWriteLockCreate();
    *(v1 + 88) = result;
    gFigReadCache = v1;
  }

  return result;
}

BOOL MoveToVGroup(uint64_t a1, unsigned int a2, int a3)
{
  v20 = 0;
  if (*(a1 + 72) == a2)
  {
    v4 = 1;
    return !MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], *(a1 + 40), v4, &v20) && v20 == 2;
  }

  v6 = a2;
  FigSimpleMutexLock();
  v7 = *(a1 + 72);
  if (v7 != -1)
  {
    v8 = gFigReadCache + 24 * v7;
    v9 = (v8 + 192);
    v10 = *(a1 + 80);
    v11 = *(a1 + 88);
    if (v10)
    {
      v9 = (v10 + 88);
    }

    *v9 = v11;
    v12 = (v11 + 80);
    if (!v11)
    {
      v12 = (v8 + 200);
    }

    *v12 = v10;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    --*(v8 + 208);
  }

  v13 = gFigReadCache + 24 * v6 + 192;
  if (a3 == 1)
  {
    v14 = *v13;
    if (*v13)
    {
      *(v14 + 80) = a1;
      *(a1 + 88) = v14;
    }

    else
    {
      *(gFigReadCache + 24 * v6 + 200) = a1;
    }

    v15 = v13;
  }

  else
  {
    v15 = (gFigReadCache + 24 * v6 + 200);
    v16 = *v15;
    if (*v15)
    {
      *(v16 + 88) = a1;
      *(a1 + 80) = v16;
    }

    else
    {
      *v13 = a1;
    }
  }

  *v15 = a1;
  ++*(v13 + 16);
  *(a1 + 72) = v6;
  FigSimpleMutexUnlock();
  if (v6 > 1)
  {
    if (v6 == 4)
    {
      v17 = 33;
    }

    else if (v6 == 3)
    {
      v17 = 513;
    }

    else
    {
      v17 = 1025;
    }

    goto LABEL_25;
  }

  if (v6)
  {
    v17 = 1537;
LABEL_25:
    v6 = v17 | ((a3 != 1) << 6);
  }

  v4 = 0;
  v20 = v6;
  return !MEMORY[0x19A8D6C80](*MEMORY[0x1E69E9A60], *(a1 + 40), v4, &v20) && v20 == 2;
}

uint64_t IssueFigReadCacheRequest(void *a1)
{
  FigSimpleMutexLock();
  v2 = gFigReadCache;
  v3 = *(gFigReadCache + 48);
  if (v3)
  {
    *(v3 + 8) = a1;
    *a1 = v3;
  }

  else
  {
    *(gFigReadCache + 40) = a1;
  }

  *(v2 + 48) = a1;
  ++*(v2 + 56);
  FigSimpleMutexUnlock();

  return FigSemaphoreSignal();
}

uint64_t FigCachedFileByteStreamCreate(const void *a1, uint64_t a2, CFAllocatorRef Default, void *a4)
{
  v18 = 0;
  if (!a1 || !a4)
  {
    FigCachedFileByteStreamCreate_cold_2(&v19);
    return v19;
  }

  CacheNewRequestCompletion = FigReadCacheNewRequestCompletion();
  if (!CacheNewRequestCompletion)
  {
    FigCachedFileByteStreamCreate_cold_1(&v19);
    return v19;
  }

  v8 = CacheNewRequestCompletion;
  v19 = 0;
  FigReadCacheAddOneFileAndCopyContainer(1, a1, CacheNewRequestCompletion, &v18);
  if (v18)
  {
    number = 0;
    MEMORY[0x19A8D3660](&FigCachedFileByteStreamGetClassID_sRegisterFigCachedFileByteStreamClassOnce, RegisterFigCachedFileByteStreamClass);
    v9 = CMDerivedObjectCreate();
    if (v9)
    {
      v14 = v9;
      FigReadCacheDisposeRequestCompletion(v8);
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!Default)
      {
        Default = CFAllocatorGetDefault();
      }

      *DerivedStorage = Default;
      *DerivedStorage = CFRetain(Default);
      *(DerivedStorage + 32) = v8;
      ByteStream = FigReadCacheContainerGetByteStream(v18);
      *(DerivedStorage + 8) = ByteStream;
      *(DerivedStorage + 8) = CFRetain(ByteStream);
      *(DerivedStorage + 24) = v18;
      *(DerivedStorage + 16) = CFRetain(a1);
      *(DerivedStorage + 112) = FigSimpleMutexCreate();
      *(DerivedStorage + 120) = 0;
      FigByteStreamStatsSetupWorker();
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13 && !v13(CMBaseObject, *MEMORY[0x1E695FF78], *MEMORY[0x1E695E480], &number))
      {
        CFNumberGetValue(number, kCFNumberSInt64Type, (DerivedStorage + 40));
        CFRelease(number);
      }

      v14 = 0;
      *a4 = v19;
    }
  }

  else
  {
    FigReadCacheDisposeRequestCompletion(v8);
    v15 = CMByteStreamCreateForFileURL();
    v14 = 0;
    if (v15)
    {
      return v15;
    }
  }

  return v14;
}

void *FigReadCacheNewRequestCompletion()
{
  v0 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (v0)
  {
    *v0 = FigSimpleMutexCreate();
    v0[1] = FigSemaphoreCreate();
  }

  return v0;
}

uint64_t playerasync_SetRate(void *a1, float a2)
{
  v5 = 0;
  if (*CMBaseObjectGetDerivedStorage())
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    playerasync_SetRate_cold_1(a1, &v5, &v6, a2);
    return v6;
  }
}

uint64_t itemasync_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (v4 = DerivedStorage, v5 = MEMORY[0x1E6960C70], *a2 = *MEMORY[0x1E6960C70], *(a2 + 16) = *(v5 + 16), !*DerivedStorage))
  {
    v7 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v7)
    {
      v8 = v7;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_GetCurrentTime_cold_1(&v13);
        v11 = v13;
      }

      else
      {
        FigSimpleMutexLock();
        v9 = *(v4 + 2);
        if (v9)
        {
          v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v10)
          {
            v11 = v10(v9, a2);
          }

          else
          {
            v11 = 4294954514;
          }
        }

        else
        {
          v12 = v4[2];
          if (v12)
          {
            v11 = v12;
          }

          else
          {
            v11 = 4294954513;
          }
        }

        FigSimpleMutexUnlock();
      }

      CFRelease(v8);
    }

    else
    {
      itemasync_GetCurrentTime_cold_2(&v14);
      return v14;
    }

    return v11;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

void FigReadCacheThread()
{
  while (1)
  {
    v0 = gFigReadCache;
    if (!*(gFigReadCache + 40))
    {
      v43 = 0;
      goto LABEL_102;
    }

    v1 = FigSimpleMutexTryLock();
    v0 = gFigReadCache;
    if (!v1)
    {
      v43 = 0;
      v44 = 0;
      if (gFigReadCache)
      {
        goto LABEL_102;
      }

      goto LABEL_135;
    }

    *(gFigReadCache + 64) = *(gFigReadCache + 40);
    *(v0 + 80) = *(v0 + 56);
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    FigSimpleMutexUnlock();
    v0 = gFigReadCache;
    v2 = *(gFigReadCache + 64);
    do
    {
      v3 = (v0 + 64);
      v4 = *v2;
      v5 = *(v2 + 8);
      if (*v2)
      {
        v3 = (*v2 + 8);
      }

      *v3 = v5;
      v6 = (v0 + 72);
      if (v5)
      {
        v6 = v5;
      }

      *v6 = v4;
      *v2 = 0;
      *(v2 + 8) = 0;
      --*(v0 + 80);
      v7 = *(v2 + 16);
      if (v7 <= 4)
      {
        if (v7 > 1)
        {
          if (v7 != 2)
          {
            if (v7 == 3)
            {
              v24 = 0;
              while (1)
              {
                v25 = *(v2 + 24);
                v26 = *(gFigReadCache + 104);
                if ((*(v25 + 48) + (v26 - 1)) / v26 <= *(gFigReadCache + 304))
                {
                  v32 = *(v2 + 32);
                }

                else
                {
                  ScanForUnreferencedDataReadyEntries();
                  ScanForAbandonedEntries();
                  v27 = *(*(v2 + 32) + 24);
                  if (!v27)
                  {
                    v27 = *(gFigReadCache + 108) >> 2;
                  }

                  FigReadWriteLockLockForWrite();
                  if (v27 > *(gFigReadCache + 304))
                  {
                    v28 = FreeEntriesInGroup(3u, *(gFigReadCache + 144), v27);
                    if (v28)
                    {
                      v29 = FreeEntriesInGroup(2u, *(gFigReadCache + 144), v28);
                      if (v29)
                      {
                        v30 = FreeEntriesInGroup(1u, *(gFigReadCache + 144), v29);
                        if (v30)
                        {
                          if (!*(gFigReadCache + 304))
                          {
                            v33 = FreeEntriesInGroup(3u, 0, v30);
                            if (v33)
                            {
                              v34 = FreeEntriesInGroup(2u, 0, v33);
                              if (v34)
                              {
                                FreeEntriesInGroup(1u, 0, v34);
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  FigReadWriteLockUnlockForWrite();
                  v31 = *(gFigReadCache + 304);
                  v32 = *(v2 + 32);
                  if (!*(v32 + 24))
                  {
                    v24 = v31 != 0;
                  }

                  if (!v31)
                  {
LABEL_68:
                    FigSemaphoreSignal();
                    if (v24)
                    {
                      v35 = gFigReadCache;
                      if (*(gFigReadCache + 304))
                      {
                        v36 = *(gFigReadCache + 144);
                        if (!v36)
                        {
                          goto LABEL_84;
                        }

                        v37 = *(v36 + 136);
                        if (!v37)
                        {
                          goto LABEL_84;
                        }

                        v38 = 0;
                        do
                        {
                          v35 = gFigReadCache;
                          v39 = *(gFigReadCache + 304);
                          if (v39)
                          {
                            v40 = v38 == 0;
                          }

                          else
                          {
                            v40 = 0;
                          }

                          if (!v40)
                          {
                            goto LABEL_83;
                          }

                          FigSimpleMutexLock();
                          if (CFGetRetainCount(v37) < 2)
                          {
                            v38 = 0;
                          }

                          else
                          {
                            v38 = PopulateCacheContainer(v37, 0) ^ 1;
                          }

                          FigSimpleMutexUnlock();
                          v37 = v37[17];
                        }

                        while (v37);
                        v35 = gFigReadCache;
                        v39 = *(gFigReadCache + 304);
LABEL_83:
                        if (v39)
                        {
LABEL_84:
                          *(v35 + 157) = 1;
                        }
                      }
                    }

                    goto LABEL_92;
                  }

                  v26 = *(gFigReadCache + 104);
                  v25 = *(v2 + 24);
                }

                if (!PopulateCacheContainer(v25, *(v32 + 8) / v26 * v26) || FillFromCacheContainer(*(v2 + 24), *(v2 + 32)) || !*(*(v2 + 32) + 16))
                {
                  goto LABEL_68;
                }
              }
            }

            v8 = *(v2 + 24);
            if (v8)
            {
              CFRelease(*(v2 + 24));
              --*(gFigReadCache + 160);
              if (CFGetRetainCount(v8) <= 1)
              {
                FigSimpleMutexLock();
                v9 = *(v8 + 104);
                if (v9)
                {
                  do
                  {
                    v10 = *(v9 + 64);
                    if (*v9 == 1)
                    {
                      v11 = *(v9 + 56);
                      v12 = (v11 + 64);
                      if (!v11)
                      {
                        v12 = (v8 + 104);
                      }

                      *v12 = v10;
                      v13 = (v10 + 56);
                      if (!v10)
                      {
                        v13 = (v8 + 112);
                      }

                      *v13 = v11;
                      *(v9 + 56) = 0;
                      *(v9 + 64) = 0;
                      --*(v8 + 120);
                      MoveToVGroup(v9, 4u, 1);
                      RecycleCacheEntry(v9);
                    }

                    v9 = v10;
                  }

                  while (v10);
                }

                if (*(gFigReadCache + 304))
                {
                  *(gFigReadCache + 157) = 1;
                }

                v14 = *(v8 + 88);
                if (v14)
                {
                  CFRelease(v14);
                  *(v8 + 88) = 0;
                }

                FigSimpleMutexUnlock();
                if (!*(v8 + 120))
                {
                  DeleteCacheContainer(v8);
                }
              }
            }

LABEL_88:
            free(v2);
            goto LABEL_92;
          }

          v62 = 0;
          memset(v61, 0, sizeof(v61));
          if (!FigFileGetFileInfo())
          {
            FindFileInCacheAndCopyContainer(*(v2 + 24), v61, (v2 + 56));
          }

LABEL_91:
          FigSemaphoreSignal();
          goto LABEL_92;
        }

        if (v7)
        {
          if (v7 != 1)
          {
            goto LABEL_92;
          }

          Count = CFArrayGetCount(*(v2 + 24));
          if (Count >= 1)
          {
            v17 = Count;
            for (i = 0; i != v17; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 24), i);
              LoadOneFile(ValueAtIndex, 0);
            }
          }

          goto LABEL_87;
        }

        v22 = *(v2 + 24);
        v23 = 0;
LABEL_86:
        LoadOneFile(v22, v23);
LABEL_87:
        CFRelease(*(v2 + 24));
        goto LABEL_88;
      }

      if (v7 < 7)
      {
        if (v7 == 5)
        {
          v22 = *(v2 + 24);
          v23 = 1;
          goto LABEL_86;
        }

        v20 = *(v2 + 24);
        v21 = 0;
        goto LABEL_45;
      }

      if (v7 <= 7)
      {
        v20 = *(v2 + 24);
        v21 = 1;
LABEL_45:
        LoadOneByteStreamForOpenFile(v20, v21);
        goto LABEL_87;
      }

      switch(v7)
      {
        case 8:
          v15 = *(gFigReadCache + 120);
          if (v15)
          {
            while (!*(v15 + 96) || *(v15 + 88) != *(v2 + 32))
            {
              v15 = *(v15 + 136);
              if (!v15)
              {
                goto LABEL_91;
              }
            }

            *(v2 + 56) = CFRetain(v15);
            ++*(gFigReadCache + 160);
          }

          goto LABEL_91;
        case 9:
          v41 = v2;
          v42 = 0;
          break;
        case 10:
          v41 = v2;
          v42 = 1;
          break;
        default:
          goto LABEL_92;
      }

      HandleAddOneFileAndCopyContainer(v41, v42);
LABEL_92:
      v0 = gFigReadCache;
      v2 = *(gFigReadCache + 64);
    }

    while (v2);
    v43 = 1;
LABEL_102:
    if (*(v0 + 156))
    {
      *(v0 + 156) = 1;
      v45 = *(v0 + 120);
      if (!v45)
      {
        goto LABEL_113;
      }

      do
      {
        v46 = *(v45 + 136);
        FigSimpleMutexLock();
        v47 = *(v45 + 104);
        *(v45 + 152) = 0;
        if (v47)
        {
          while (*v47 != 2)
          {
            v49 = *(v47 + 56);
            v48 = *(v47 + 64);
            v50 = (v49 + 64);
            if (!v49)
            {
              v50 = (v45 + 104);
            }

            *v50 = v48;
            v51 = (v48 + 56);
            if (!v48)
            {
              v51 = (v45 + 112);
            }

            *v51 = v49;
            *(v47 + 56) = 0;
            *(v47 + 64) = 0;
            --*(v45 + 120);
            v47 = v48;
            if (!v48)
            {
              goto LABEL_111;
            }
          }

          goto LABEL_121;
        }

LABEL_111:
        FigSimpleMutexUnlock();
        DeleteCacheContainer(v45);
        v45 = v46;
      }

      while (v46);
      v0 = gFigReadCache;
LABEL_113:
      if (*(v0 + 108))
      {
        v52 = 0;
        v53 = 48;
        do
        {
          v54 = *(*(v0 + 112) + v53);
          if (v54)
          {
            CFRelease(v54);
            v0 = gFigReadCache;
          }

          ++v52;
          v53 += 104;
        }

        while (v52 < *(v0 + 108));
      }

      v55 = *(v0 + 168);
      if (v55)
      {
        CFRelease(v55);
        v0 = gFigReadCache;
      }

      free(*(v0 + 112));
      free(gFigReadCache);
      gFigReadCache = 0;
LABEL_121:
      v44 = 1;
    }

    else if (*(v0 + 152) && (v56 = *(v0 + 120)) != 0)
    {
      v44 = 0;
      do
      {
        for (j = *(v56 + 104); j; j = *(j + 64))
        {
          if (*j == 1)
          {
            FigSimpleMutexLock();
            if (*j == 1)
            {
              ReadDataForCacheEntry(v56, j);
              v44 = 1;
            }

            FigSimpleMutexUnlock();
            v0 = gFigReadCache;
          }

          if (*(v0 + 40))
          {
            break;
          }
        }

        v56 = *(v56 + 136);
      }

      while (v56);
    }

    else
    {
      v44 = 0;
    }

LABEL_135:
    if (!(v44 | v43))
    {
      ScanForUnreferencedDataReadyEntries();
      ScanForAbandonedEntries();
      v58 = gFigReadCache;
      if (!*(gFigReadCache + 176) && *(gFigReadCache + 164) >= 1)
      {
        v59 = *(gFigReadCache + 120);
        if (v59)
        {
          do
          {
            FigSimpleMutexLock();
            if (v59[18] && CFGetRetainCount(v59) <= 1)
            {
              v60 = v59[18];
              if (v60)
              {
                os_release(v60);
                v59[18] = 0;
              }

              --*(gFigReadCache + 164);
            }

            FigSimpleMutexUnlock();
            v59 = v59[17];
          }

          while (v59);
          v58 = gFigReadCache;
        }
      }

      if (*(v58 + 156) || !*(v58 + 157))
      {
        FigSemaphoreWaitRelative();
      }

      else
      {
        *(v58 + 157) = 0;
      }
    }
  }
}

uint64_t LoadOneFile(const void *a1, char a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  result = FigFileGetFileInfo();
  if (!result)
  {
    result = FindFileInCacheAndCopyContainer(a1, v5, 0);
    if (!result)
    {
      return CreateAndLoadNewContainerInCacheAndReturnContainer(a1, 0, v5, a2, 0);
    }
  }

  return result;
}

uint64_t RegisterFigReadCacheContainerType()
{
  result = _CFRuntimeRegisterClass();
  sFigReadCacheContainerID = result;
  return result;
}

double FRCContainerInit(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t AssureContainerFileIsOpen(uint64_t a1)
{
  if (*(a1 + 96))
  {
    if (!*(a1 + 88))
    {
      AssureContainerFileIsOpen_cold_1(&v3);
      return v3;
    }

    return 0;
  }

  if (!*(a1 + 144))
  {
    *(a1 + 144) = FigOSTransactionCreate();
    ++*(gFigReadCache + 164);
  }

  if (*(a1 + 88))
  {
    return 0;
  }

  FigGetDefaultManagedFilePool();

  return FigManagedFilePoolCreateByteStreamForFile();
}

uint64_t PopulateCacheContainer(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 153);
  if (!v2)
  {
    v5 = (a1 + 104);
    v6 = *(a1 + 104);
    while (1)
    {
      if (v6)
      {
        while (1)
        {
          v7 = v6[3];
          if (a2 == v7)
          {
            break;
          }

          v8 = a2 >= v7;
          if (a2 >= v7)
          {
            v6 = v6[8];
            if (v6)
            {
              continue;
            }
          }

          goto LABEL_10;
        }

        v12 = *(gFigReadCache + 104);
        v10 = *(a1 + 48);
      }

      else
      {
        v8 = 1;
LABEL_10:
        v9 = *(gFigReadCache + 288);
        if (!v9)
        {
          return v2;
        }

        MoveToVGroup(*(gFigReadCache + 288), 0, 0);
        FigAtomicIncrement32();
        *v9 = 1;
        v10 = *(a1 + 48);
        v11 = v10 - a2;
        v12 = *(gFigReadCache + 104);
        if (v10 - a2 >= v12)
        {
          v11 = *(gFigReadCache + 104);
        }

        *(v9 + 24) = a2;
        *(v9 + 32) = v11 + a2;
        *(v9 + 8) = a1;
        *(v9 + 16) = 0;
        if (v8)
        {
          v13 = *(a1 + 112);
          if (v13)
          {
            *(v13 + 64) = v9;
            *(v9 + 56) = v13;
          }

          else
          {
            *v5 = v9;
          }

          *(a1 + 112) = v9;
        }

        else
        {
          v14 = v6[7];
          v15 = v5;
          if (v14)
          {
            *(v9 + 56) = v14;
            v15 = (v6[7] + 64);
          }

          *(v9 + 64) = v6;
          *v15 = v9;
          v6[7] = v9;
        }

        ++*(a1 + 120);
        v2 = 1;
      }

      a2 += v12;
      if (a2 >= v10)
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t ReadDataForCacheEntry(uint64_t a1, uint64_t a2)
{
  result = AssureContainerFileIsOpen(a1);
  if (!result)
  {
    if (*(a2 + 72))
    {
      MoveToVGroup(a2, 0, 0);
    }

    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    v7 = *(a1 + 88);
    v8 = *(a2 + 40);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v9)
    {
      v10 = v6 - v5;
      v12 = 0;
      result = v9(v7, v10, v5, v8, &v12);
      if (result)
      {
        v11 = 0;
      }

      else
      {
        v11 = v12 == v10;
      }

      if (v11)
      {
        *a2 = 3;
        FigAtomicDecrement32();
        return 0;
      }
    }

    else
    {
      result = 4294954514;
    }

    *a2 = 4;
  }

  return result;
}

uint64_t FigReadCacheContainerGetByteStream(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t FigCachedFileByteStreamCopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x1E6960DB8]))
  {
    goto LABEL_2;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960E08]))
  {
    StatsDictionary = FigByteStreamStatsCreateStatsDictionary();
    goto LABEL_6;
  }

  if (CFEqual(a2, *MEMORY[0x1E695FF90]))
  {
LABEL_2:
    v8 = MEMORY[0x1E695E4D0];
LABEL_3:
    StatsDictionary = CFRetain(*v8);
LABEL_6:
    *a4 = StatsDictionary;
    return 0;
  }

  if (CFEqual(a2, *MEMORY[0x1E695FFA8]))
  {
    v8 = MEMORY[0x1E695E4C0];
    goto LABEL_3;
  }

  v11 = *(DerivedStorage + 8);

  return CMByteStreamCopyProperty(v11, a2, a3, a4);
}

uint64_t IsReferenceMovie(uint64_t a1, BOOL *a2)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = 0;
    }

    OUTLINED_FUNCTION_0_15();
    result = FigAtomStreamInitWithByteStream();
    if (!result)
    {
      LODWORD(result) = FigAtomStreamPositionViaAtomPath();
      if (a2)
      {
        *a2 = result == 0;
      }

      if (result == -12890)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t FigCachedFileByteStreamRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 < 0)
  {
    FigCachedFileByteStreamRead_cold_2(&v17);
    return v17;
  }

  if (!a4)
  {
    FigCachedFileByteStreamRead_cold_1(&v17);
    return v17;
  }

  v10 = DerivedStorage;
  if (*(DerivedStorage + 120))
  {
    v17 = 0;
    v11 = *(DerivedStorage + 40);
    if (a2 && v11 <= a3)
    {
      v12 = 4294954423;
      if (!a5)
      {
        return v12;
      }
    }

    else
    {
      if (a3 + a2 <= v11)
      {
        v16 = a2;
      }

      else
      {
        v16 = v11 - a3;
      }

      FigGetUpTimeNanoseconds();
      v12 = FigReadCacheContainerReadBytes(*(v10 + 24), a3, (v16 + a3), *(v10 + 32), a4, &v17);
      FigGetUpTimeNanoseconds();
      FigByteStreamStatsLogOneRead();
      if (!a5)
      {
        return v12;
      }
    }

    *a5 = v17;
    return v12;
  }

  v13 = *(DerivedStorage + 8);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    return 4294954514;
  }

  return v14(v13, a2, a3, a4, a5);
}

uint64_t ReadBBufOrCopyBytes(uint64_t a1, OpaqueCMBlockBuffer *a2, OpaqueCMBlockBuffer *a3, uint64_t a4, CMBlockBufferRef *a5, uint64_t a6, void *a7)
{
  BlockBuffer_0 = 4294955046;
  if (!a1 || !gFigReadCache || *(gFigReadCache + 156) || !*(a1 + 152))
  {
    return BlockBuffer_0;
  }

  v27 = 0;
  *theBuffer = 0u;
  v26 = 0u;
  v24 = 0;
  v11 = *(a1 + 48);
  if (v11 <= a2)
  {
    return 4294954423;
  }

  if (a2 == a3)
  {
    return 4294954424;
  }

  if (v11 >= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = *(a1 + 48);
  }

  v17 = v16 - a2;
  theBuffer[1] = a2;
  v26 = (v16 - a2);
  LOBYTE(v27) = 1;
  v28 = a6;
  v29 = 0;
  BlockBuffer_0 = FillFromCacheContainer(a1, theBuffer);
  v18 = v26;
  if (!*(a1 + 153) && v26)
  {
    IssueCacheMissRequest(a1, a4, theBuffer);
    v18 = v26;
  }

  if (v18)
  {
    targetBBuf = 0;
    FigSimpleMutexLock();
    IsOpen = AssureContainerFileIsOpen(a1);
    if (IsOpen)
    {
      BlockBuffer_0 = IsOpen;
      goto LABEL_19;
    }

    v20 = *(a1 + 88);
    v21 = v16 - v26;
    if (a6)
    {
      BlockBuffer_0 = CMByteStreamRead_0(v20, v26, v21, a6 + v29, &v24);
      if (!BlockBuffer_0)
      {
        *&v26 = v26 - v24;
        v29 += v24;
      }

      goto LABEL_19;
    }

    BlockBuffer_0 = CMByteStreamReadAndCreateBlockBuffer_0(v20, v26, v21, &targetBBuf, &v24);
    if (BlockBuffer_0 || !v24)
    {
      if (theBuffer[0])
      {
        CFRelease(theBuffer[0]);
      }

      theBuffer[0] = 0;
      goto LABEL_19;
    }

    if (theBuffer[0])
    {
      CMBlockBufferAppendBufferReference(theBuffer[0], targetBBuf, 0, 0, 0);
      if (targetBBuf)
      {
        CFRelease(targetBBuf);
      }
    }

    else
    {
      theBuffer[0] = targetBBuf;
    }

    BlockBuffer_0 = 0;
LABEL_46:
    *&v26 = v26 - v24;
    goto LABEL_19;
  }

  if (v27)
  {
    goto LABEL_21;
  }

  FigSimpleMutexLock();
  BlockBuffer_0 = AssureContainerFileIsOpen(a1);
  if (!BlockBuffer_0)
  {
    if (a6)
    {
      v22 = CMByteStreamRead_0(*(a1 + 88), v16 - a2, a2, a6, &v24);
    }

    else
    {
      if (theBuffer[0])
      {
        CFRelease(theBuffer[0]);
      }

      theBuffer[0] = 0;
      v22 = CMByteStreamReadAndCreateBlockBuffer_0(*(a1 + 88), v16 - a2, a2, theBuffer, &v24);
    }

    BlockBuffer_0 = v22;
    if (!v22)
    {
      goto LABEL_46;
    }
  }

LABEL_19:
  FigSimpleMutexUnlock();
LABEL_21:
  if (a5)
  {
    *a5 = theBuffer[0];
  }

  if (a7)
  {
    *a7 = v17 - v26;
  }

  return BlockBuffer_0;
}

uint64_t FillFromCacheContainer(uint64_t a1, uint64_t a2)
{
  FigReadWriteLockLockForRead();
  FigSimpleMutexLock();
  v4 = *(a1 + 104);
  if (v4)
  {
    DataForCacheEntry = 0;
    v6 = *(a2 + 16);
    while (1)
    {
      if (!v6)
      {
        goto LABEL_36;
      }

      v7 = *(a2 + 8);
      v8 = *(v4 + 24);
      v9 = v7 - v8;
      if (v7 >= v8)
      {
        v10 = *(v4 + 32);
        v11 = v10 > v7;
        v12 = v10 - v7;
        if (v11)
        {
          break;
        }
      }

      if (v7 <= v8)
      {
        *(a2 + 24) = v8 / *(gFigReadCache + 104) - v7 / *(gFigReadCache + 104);
        goto LABEL_36;
      }

LABEL_31:
      v4 = *(v4 + 64);
      if (!v4)
      {
        goto LABEL_36;
      }
    }

    if (v6 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v6;
    }

    *(v4 + 16) = FigGetUpTimeNanoseconds();
    if (!*(a2 + 40))
    {
      if (*a2)
      {
        appended = CMBlockBufferAppendBufferReference(*a2, *(v4 + 48), v9, v13, 0);
      }

      else
      {
        *(gFigReadCache + 144) = a1;
        appended = CMBlockBufferCreateWithBufferReference(0, *(v4 + 48), v9, v13, 0, a2);
      }

      DataForCacheEntry = appended;
      if (appended)
      {
        goto LABEL_36;
      }
    }

    if (!*(v4 + 96))
    {
      *(v4 + 96) = 1;
      FigAtomicIncrement32();
    }

    if (*(v4 + 72))
    {
      v15 = MoveToVGroup(v4, 0, 0);
      v16 = *v4;
      if (*v4 != 3 || !v15)
      {
        goto LABEL_24;
      }

      *v4 = 1;
      FigAtomicIncrement32();
    }

    v16 = *v4;
LABEL_24:
    if (v16 != 3)
    {
      FigSimpleMutexLock();
      if (*v4 != 3)
      {
        DataForCacheEntry = ReadDataForCacheEntry(a1, v4);
        if (DataForCacheEntry)
        {
          *(a2 + 32) = 0;
        }
      }

      FigSimpleMutexUnlock();
    }

    v17 = *(a2 + 40);
    if (v17 && *(a2 + 32))
    {
      CMBlockBufferCopyDataBytes(*(v4 + 48), v9, v13, (v17 + *(a2 + 48)));
      *(a2 + 48) += v13;
    }

    v6 = *(a2 + 16) - v13;
    *(a2 + 8) += v13;
    *(a2 + 16) = v6;
    goto LABEL_31;
  }

  DataForCacheEntry = 0;
LABEL_36:
  FigSimpleMutexUnlock();
  FigReadWriteLockUnlockForRead();
  return DataForCacheEntry;
}

uint64_t playerfig_prepareWorkingItem2(const char *a1, const __CFDictionary *a2, CFTypeRef a3)
{
  v395 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  HIDWORD(v378) = 2;
  *v370 = *MEMORY[0x1E6960CC0];
  *theArray = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  v376 = v8;
  v377 = 0;
  v9 = &unk_1EAF16000;
  v372 = a1;
  if (dword_1EAF16A10 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = OUTLINED_FUNCTION_28_0();
    LODWORD(v9) = cf;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
    {
      v10 = cf;
    }

    else
    {
      v10 = cf & 0xFFFFFFFE;
    }

    if (v10)
    {
      if (a1)
      {
        v9 = (CMBaseObjectGetDerivedStorage() + 972);
      }

      else
      {
        v9 = "";
      }

      v11 = *(DerivedStorage + 536);
      if (v11)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *v382 = 136316162;
      OUTLINED_FUNCTION_22_0();
      v383 = v9;
      *v384 = v12;
      *&v384[2] = v11;
      a1 = v13;
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_225_0();
    }

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_210_0();
  }

  v14 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a1)
    {
      v15 = (CMBaseObjectGetDerivedStorage() + 972);
    }

    else
    {
      v15 = "";
    }

    strncpy(&__dst, v15, 8uLL);
    os_log_and_send_and_compose_flags_and_os_log_type = __dst.value;
    if (*(DerivedStorage + 536))
    {
      v16 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v16 = "";
    }

    strncpy(&__dst, v16, 8uLL);
    kdebug_trace();
  }

  if (!*(DerivedStorage + 536))
  {
    OUTLINED_FUNCTION_256_0();
    v25 = 0;
    v26 = 1;
    goto LABEL_115;
  }

  if (!*(DerivedStorage + 60))
  {
    OUTLINED_FUNCTION_54_0();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
    if (OUTLINED_FUNCTION_109_0(v27))
    {
      *v382 = 136315394;
      *&v382[4] = "playerfig_prepareWorkingItem2";
      *&v382[12] = 2048;
      *&v382[14] = a1;
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_109();
    v26 = 1;
    OUTLINED_FUNCTION_524();
    OUTLINED_FUNCTION_256_0();
    v25 = 0;
    goto LABEL_114;
  }

  if (a3)
  {
LABEL_27:
    FigSimpleMutexLock();
    os_log_and_send_and_compose_flags_and_os_log_type = *(DerivedStorage + 536);
    v17 = CMBaseObjectGetDerivedStorage();
    HIDWORD(v363) = os_log_and_send_and_compose_flags_and_os_log_type == 0;
    if (os_log_and_send_and_compose_flags_and_os_log_type)
    {
      CFRetain(os_log_and_send_and_compose_flags_and_os_log_type);
    }

    v362 = a3;
    if (*(v17 + 1632) == 0.0)
    {
      *(v17 + 1632) = CFAbsoluteTimeGetCurrent();
    }

    if (*(v17 + 1976) == 0.0)
    {
      *(v17 + 1976) = CFAbsoluteTimeGetCurrent();
      *(v17 + 2224) = CFAbsoluteTimeGetCurrent();
      v18 = CMBaseObjectGetDerivedStorage();
      v19 = *(v18 + 1976);
      if (v19 != 0.0)
      {
        v20 = v18;
        v21 = v9;
        v22 = *(v18 + 1968);
        FigSimpleMutexLock();
        v23 = *(v20 + 1952);
        if (v23)
        {
          v24 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v24)
          {
            v24(v23, @"playerStats", 0x1F0B66558, ((v19 - v22) * 1000.0), 0);
          }
        }

        FigSimpleMutexUnlock();
        LODWORD(v9) = v21;
      }
    }

    if (!a2)
    {
LABEL_69:
      OUTLINED_FUNCTION_110();
      v66 = itemfig_rebuildRenderPipelinesAndBossGuts(v63, v64, v65);
      if (v66)
      {
        v25 = v66;
        if (dword_1EAF16A10)
        {
          v73 = v66;
          v74 = OUTLINED_FUNCTION_28_0();
          OUTLINED_FUNCTION_110_0(v74, v75, v76, v77, v78, v79, v80, v81, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_70();
          if (!v9)
          {
LABEL_93:
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_454();
            a2 = 0;
            v26 = BYTE4(v363);
LABEL_94:
            v25 = v73;
            goto LABEL_95;
          }

          if (v372)
          {
            v82 = (CMBaseObjectGetDerivedStorage() + 972);
          }

          else
          {
            v82 = "";
          }

          if (!os_log_and_send_and_compose_flags_and_os_log_type)
          {
LABEL_77:
            *v382 = 136316418;
            OUTLINED_FUNCTION_22_0();
            v383 = v82;
            OUTLINED_FUNCTION_3_0();
            OUTLINED_FUNCTION_86_0();
            *(v83 + 255) = v73;
            OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_223_0();
            goto LABEL_93;
          }

LABEL_76:
          CMBaseObjectGetDerivedStorage();
          goto LABEL_77;
        }

        goto LABEL_86;
      }

      itemfig_assureContentProtectionReadyForInspection(os_log_and_send_and_compose_flags_and_os_log_type);
      v84 = *(v17 + 1200);
      if (v84)
      {
        v85 = *(DerivedStorage + 888);
        v86 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v86)
        {
          v25 = v86(v84, @"DisplayList", v85);
          v87 = v372;
          if (!v25)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_186();
            v88 = FigNotificationCenterAddWeakListener();
            if (v88)
            {
              v25 = v88;
              if (dword_1EAF16A10)
              {
                v73 = v88;
                v89 = OUTLINED_FUNCTION_28_0();
                OUTLINED_FUNCTION_110_0(v89, v90, v91, v92, v93, v94, v95, v96, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
                OUTLINED_FUNCTION_70();
                if (v9)
                {
                  if (v372)
                  {
                    v97 = (CMBaseObjectGetDerivedStorage() + 972);
                  }

                  else
                  {
                    v97 = "";
                  }

                  if (os_log_and_send_and_compose_flags_and_os_log_type)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  *v382 = 136316418;
                  OUTLINED_FUNCTION_22_0();
                  v383 = v97;
                  OUTLINED_FUNCTION_3_0();
                  OUTLINED_FUNCTION_86_0();
                  *(v187 + 255) = v73;
                  OUTLINED_FUNCTION_35_0();
                  OUTLINED_FUNCTION_51_0();
                  _os_log_send_and_compose_impl();
                  OUTLINED_FUNCTION_223_0();
                }

                v26 = BYTE4(v363);
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_454();
                a2 = 0;
                goto LABEL_94;
              }

LABEL_86:
              a2 = 0;
LABEL_87:
              v26 = BYTE4(v363);
              goto LABEL_95;
            }

            goto LABEL_165;
          }
        }

        else
        {
          v25 = 4294954514;
          v87 = v372;
        }

        if (dword_1EAF16A10)
        {
          v73 = v25;
          v98 = OUTLINED_FUNCTION_28_0();
          OUTLINED_FUNCTION_110_0(v98, v99, v100, v101, v102, v103, v104, v105, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_70();
          if (!v9)
          {
            goto LABEL_93;
          }

          if (v87)
          {
            v82 = (CMBaseObjectGetDerivedStorage() + 972);
          }

          else
          {
            v82 = "";
          }

          if (!os_log_and_send_and_compose_flags_and_os_log_type)
          {
            goto LABEL_77;
          }

          goto LABEL_76;
        }

        a2 = 0;
        goto LABEL_87;
      }

LABEL_165:
      itemfig_ExternalProtectionStatusChangedGuts(os_log_and_send_and_compose_flags_and_os_log_type);
      if (*(v17 + 1640) == 0.0)
      {
        *(v17 + 1640) = CFAbsoluteTimeGetCurrent();
      }

      itemfig_getDurationIfReady(os_log_and_send_and_compose_flags_and_os_log_type, theArray);
      FigSimpleMutexLock();
      *&__dst.value = *theArray;
      __dst.epoch = v376;
      v160 = round(CMTimeGetSeconds(&__dst));
      v161 = *(v17 + 1952);
      v162 = v372;
      if (v161)
      {
        v163 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v163)
        {
          v163(v161, @"playerStats", 0x1F0B3F238, (v160 * 1000.0), 0);
        }
      }

      FigSimpleMutexUnlock();
      OUTLINED_FUNCTION_221_0();
      if (v119)
      {
        v186 = 0;
        v26 = BYTE4(v363);
        goto LABEL_291;
      }

      if (*(DerivedStorage + 544) != os_log_and_send_and_compose_flags_and_os_log_type)
      {
        if (dword_1EAF16A10 >= 2)
        {
          v164 = OUTLINED_FUNCTION_28_0();
          OUTLINED_FUNCTION_135_0(v164, v165, v166, v167, v168, v169, v170, v171, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_37();
          if (a2)
          {
            if (v162)
            {
              v172 = (CMBaseObjectGetDerivedStorage() + 972);
            }

            else
            {
              v172 = "";
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *v382 = 136316162;
            OUTLINED_FUNCTION_22_0();
            v383 = v172;
            v162 = v203;
            OUTLINED_FUNCTION_3_0();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_43_0();
            OUTLINED_FUNCTION_225_0();
          }

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_210_0();
        }

        v204 = OUTLINED_FUNCTION_410();
        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v204, v205);
        v206 = OUTLINED_FUNCTION_113_0(MEMORY[0x1E6960C70], value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, *type, cf, v381, *v382, *&v382[16], v383, *v384, *&v384[8], *&v384[16], *&v384[24], v385, v386, *&__dst.value, __dst.epoch);
        v26 = BYTE4(v363);
        if (v206)
        {
          v25 = v206;
          if (!dword_1EAF16A10)
          {
            a2 = 0;
            goto LABEL_95;
          }

          v207 = v206;
          OUTLINED_FUNCTION_54_0();
          v208 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_110_0(v208, v209, v210, v211, v212, v213, v214, v215, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_70();
          if (v9)
          {
            if (v162)
            {
              v216 = (CMBaseObjectGetDerivedStorage() + 972);
            }

            else
            {
              v216 = "";
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *v382 = 136316418;
            OUTLINED_FUNCTION_22_0();
            v383 = v216;
            OUTLINED_FUNCTION_3_0();
            OUTLINED_FUNCTION_86_0();
            *(v217 + 255) = v207;
            OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_223_0();
          }

          OUTLINED_FUNCTION_187_0();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_454();
          a2 = 0;
LABEL_332:
          v26 = BYTE4(v363);
          v25 = v207;
          goto LABEL_95;
        }

        v186 = 0;
LABEL_291:
        if (*(DerivedStorage + 568) && os_log_and_send_and_compose_flags_and_os_log_type == OUTLINED_FUNCTION_233_0())
        {
          itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(os_log_and_send_and_compose_flags_and_os_log_type, *(DerivedStorage + 576));
          started = FigPlaybackBossStartPreroll(*(v17 + 352), *(v17 + 512), *(v17 + 512), *(DerivedStorage + 572));
          v25 = started;
          *(DerivedStorage + 568) = 0;
          if (started && dword_1EAF16A10)
          {
            LODWORD(v370[0]) = started;
            OUTLINED_FUNCTION_54_0();
            v272 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v272, type[0]);
            OUTLINED_FUNCTION_106_0();
            if (v25)
            {
              if (v162)
              {
                CMBaseObjectGetDerivedStorage();
              }

              if (os_log_and_send_and_compose_flags_and_os_log_type)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *v382 = 136316418;
              OUTLINED_FUNCTION_0_0();
              *&v384[20] = 1024;
              *&v384[22] = v370[0];
              OUTLINED_FUNCTION_35_0();
              OUTLINED_FUNCTION_36();
              _os_log_send_and_compose_impl();
              v26 = BYTE4(v363);
            }

            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_417();
            v162 = v372;
            v25 = LODWORD(v370[0]);
          }
        }

        else
        {
          v25 = 0;
        }

        v265 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v265 + 536) && ((Count = CFArrayGetCount(*(v265 + 528)), v396.location = 0, v396.length = Count, FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(v265 + 528), v396, *(v265 + 536)), v268 = FirstIndexOfValue + 1, FirstIndexOfValue != -1) ? (v269 = v268 < Count) : (v269 = 0), v162 = v372, v269))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v265 + 528), v268);
          CFRetain(ValueAtIndex);
          FigSimpleMutexUnlock();
          if (ValueAtIndex)
          {
            v274 = CMBaseObjectGetDerivedStorage();
            itemfig_makePlaybackPrerequisitePropertiesReady(ValueAtIndex, 0, v275, v276, v277, v278, v279, v280, value, v336, v338, SWORD2(v338), SBYTE6(v338), HIBYTE(v338), v340, SWORD2(v340), SBYTE6(v340), SHIBYTE(v340), v342, SHIDWORD(v342), v344, SWORD2(v344), v346, v348, v350, v352, SHIDWORD(v352), v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, *type, cf, v381, *v382, *&v382[8], *&v382[16], v383, *v384, *&v384[8], *&v384[16], *&v384[24], v385, v386, __dst.value);
            if (*(v274 + 992))
            {
              itemfig_lookForLyrics(ValueAtIndex);
              *(v274 + 992) = 0;
            }

            CFRelease(ValueAtIndex);
            if (*(DerivedStorage + 853) && dword_1EAF16A10)
            {
              OUTLINED_FUNCTION_129_0();
              v281 = OUTLINED_FUNCTION_117_0();
              os_log_type_enabled(v281, type[0]);
              OUTLINED_FUNCTION_106_0();
              if (v25)
              {
                if (v372)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                *v382 = 136315650;
                OUTLINED_FUNCTION_46_0();
                *&v382[14] = v372;
                OUTLINED_FUNCTION_290_0();
                OUTLINED_FUNCTION_36_0();
                OUTLINED_FUNCTION_44_0();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_417();
            }

            *(DerivedStorage + 853) = 0;
            v26 = BYTE4(v363);
            a2 = v186;
            goto LABEL_95;
          }
        }

        else
        {
          FigSimpleMutexUnlock();
        }

        a2 = v186;
        if (!*(DerivedStorage + 853))
        {
          *(DerivedStorage + 853) = 1;
          if (dword_1EAF16A10)
          {
            OUTLINED_FUNCTION_54_0();
            v270 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v270, type[0]);
            OUTLINED_FUNCTION_106_0();
            if (v25)
            {
              if (v162)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *v382 = 136315650;
              OUTLINED_FUNCTION_46_0();
              *&v382[14] = v162;
              OUTLINED_FUNCTION_290_0();
              OUTLINED_FUNCTION_36_0();
              OUTLINED_FUNCTION_45_0();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_187_0();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_417();
            a2 = v186;
          }

          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
        }

LABEL_95:
        if (os_log_and_send_and_compose_flags_and_os_log_type)
        {
          if (v25)
          {
            v106 = *(v17 + 128);
            LODWORD(__dst.value) = v25;
            v107 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &__dst);
            if (v107)
            {
              v152 = OUTLINED_FUNCTION_627();
              FailedNotificationPayloadWithContentStream = itemfig_createFailedNotificationPayloadWithContentStream(v152, v153);
              v155 = v107;
              v107 = FailedNotificationPayloadWithContentStream;
              CFRelease(v155);
            }

            *(v17 + 1306) = 0;
            v108 = CFDictionaryGetValue(v107, @"CFError");
            itemfig_reportingAgentReportError(os_log_and_send_and_compose_flags_and_os_log_type, v108, @"CoreMediaErrorDomain", @"Failed to become ready for playback", v25);
            if (dword_1EAF16A10)
            {
              v366 = a2;
              v109 = v25;
              OUTLINED_FUNCTION_129_0();
              OUTLINED_FUNCTION_59_0();
              v110 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_434_0(v110, v111, v112, v113, v114, v115, v116, v117, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v366, @"FailedToBecomeReadyForPlayback", v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
              OUTLINED_FUNCTION_425();
              if (v119)
              {
                v120 = v118;
              }

              else
              {
                v120 = v106;
              }

              if (v120)
              {
                if (v373)
                {
                  v121 = (CMBaseObjectGetDerivedStorage() + 972);
                }

                else
                {
                  v121 = "";
                }

                CMBaseObjectGetDerivedStorage();
                *v382 = 136316418;
                OUTLINED_FUNCTION_46_0();
                *&v382[14] = v373;
                *&v382[22] = 2082;
                v383 = v121;
                OUTLINED_FUNCTION_3_0();
                OUTLINED_FUNCTION_86_0();
                *(v122 + 255) = v109;
                OUTLINED_FUNCTION_35_0();
                OUTLINED_FUNCTION_78_0();
                _os_log_send_and_compose_impl();
                v26 = v364;
              }

              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_635();
              v25 = v109;
              a2 = v367;
            }
          }

          else
          {
            if (!*(v17 + 600))
            {
              NotificationPayloadForProperties = playerfig_createNotificationPayloadForProperties(v372, os_log_and_send_and_compose_flags_and_os_log_type, v67, v68, v69, v70, v71, v72, @"PlayableTimeIntervals", 0);
              CMNotificationCenterGetDefaultLocalCenter();
              OUTLINED_FUNCTION_425_0();
              if (NotificationPayloadForProperties)
              {
                CFRelease(NotificationPayloadForProperties);
              }
            }

            v129 = playerfig_createNotificationPayloadForProperties(v372, os_log_and_send_and_compose_flags_and_os_log_type, v67, v68, v69, v70, v71, v72, @"SeekableTimeIntervals", 0);
            CMNotificationCenterGetDefaultLocalCenter();
            OUTLINED_FUNCTION_425_0();
            if (v129)
            {
              CFRelease(v129);
            }

            v357 = @"HasDiscoveredVideo";
            v359 = 0;
            v353 = @"HasEnabledAudio";
            v355 = @"HasEnabledVideo";
            v349 = @"VideoTrackMatrix";
            v351 = @"DisplayNonForcedSubtitles";
            v345 = @"CurrentDimensions";
            v347 = @"VideoSlotArray";
            v341 = @"SupportsFrameStepping";
            v343 = @"CurrentDuration";
            v339 = @"CanPlayReverse";
            v368 = playerfig_createNotificationPayloadForProperties(v372, os_log_and_send_and_compose_flags_and_os_log_type, v130, v131, v132, v133, v134, v135, @"CanPlayFastForward", @"CanPlayFastReverse");
            *(v17 + 1306) = 1;
            if (*(v17 + 2032) == 0.0)
            {
              *(v17 + 2032) = CFAbsoluteTimeGetCurrent();
              v173 = CMBaseObjectGetDerivedStorage();
              if (*(v173 + 1744))
              {
                v174 = v173;
                LODWORD(__dst.value) = 0;
                *v382 = 0;
                FigSimpleMutexLock();
                if (*(v174 + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
                {
                  v175 = OUTLINED_FUNCTION_149_0();
                  v176(v175);
                }

                if (*(v174 + 1952))
                {
                  if (*(*(CMBaseObjectGetVTable() + 16) + 56))
                  {
                    v177 = OUTLINED_FUNCTION_149_0();
                    v178(v177);
                  }

                  if (*(v174 + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
                  {
                    v179 = OUTLINED_FUNCTION_149_0();
                    v180(v179);
                  }
                }

                itemfig_GetDimensions(os_log_and_send_and_compose_flags_and_os_log_type, &__dst, v382);
                if (*(v174 + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
                {
                  v181 = OUTLINED_FUNCTION_307_0();
                  v182(v181);
                }

                if (*(v174 + 1952) && *(*(CMBaseObjectGetVTable() + 16) + 56))
                {
                  v183 = OUTLINED_FUNCTION_307_0();
                  v184(v183);
                }

                FigSimpleMutexUnlock();
              }

              itemfig_networkActivitySubmitMetricsForInitialStartupIfAvailable();
            }

            v136 = os_log_and_send_and_compose_flags_and_os_log_type;
            v137 = *(DerivedStorage + 528);
            v138 = MEMORY[0x1E695FF58];
            v107 = v368;
            if (v137 && CFArrayGetCount(v137) && OUTLINED_FUNCTION_233_0() == v136)
            {
              if (!FigUseVideoReceiverForCALayer())
              {
                itemfig_handleReadyToDisplayVideoLatch(v136, 3, v362);
              }

              playerfig_scheduleVideoTargetImageQueueConfigurationTransitionForItem(v372, v136, MEMORY[0x1E6960C70], v197, v198, v199, v200, v201, valuea, v337, @"CanPlayReverse", @"SupportsFrameStepping", @"CurrentDuration", @"CurrentDimensions", @"VideoSlotArray", @"VideoTrackMatrix", @"DisplayNonForcedSubtitles", @"HasEnabledAudio", @"HasEnabledAudio" >> 32, @"HasEnabledVideo", @"HasDiscoveredVideo", 0, v360, v361, v362, v363, v368, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, *type, cf, v381, *v382, *&v382[8], *&v382[16], v383, *v384, *&v384[8], *&v384[16], *&v384[24], v385, v386, __dst.value, *&__dst.timescale, __dst.epoch, v388, v389, v390, v391, v392, v393, v394);
            }

            if (dword_1EAF16A10)
            {
              v139 = v25;
              OUTLINED_FUNCTION_129_0();
              OUTLINED_FUNCTION_59_0();
              v140 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_434_0(v140, v141, v142, v143, v144, v145, v146, v147, valuea, v337, v339, v341, v343, v345, v347, v349, v351, v353, v355, v357, v359, v360, v361, v362, v363, v368, @"ReadyForPlayback", v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
              OUTLINED_FUNCTION_425();
              if (v119)
              {
                v149 = v148;
              }

              else
              {
                v149 = &kFigPlaybackItemNotification_ReadyForPlayback;
              }

              if (v149)
              {
                if (v374)
                {
                  v150 = v374;
                  v151 = (CMBaseObjectGetDerivedStorage() + 972);
                }

                else
                {
                  v150 = 0;
                  v151 = "";
                }

                CMBaseObjectGetDerivedStorage();
                *v382 = 136316162;
                OUTLINED_FUNCTION_46_0();
                *&v382[14] = v150;
                *&v382[22] = 2082;
                v383 = v151;
                *v384 = v158;
                *&v384[2] = v136;
                OUTLINED_FUNCTION_12_0();
                OUTLINED_FUNCTION_78_0();
                _os_log_send_and_compose_impl();
                v107 = v369;
              }

              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_635();
              v138 = MEMORY[0x1E695FF58];
              v25 = v139;
            }

            if (*v138 == 1)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = v136;
              v159 = CMBaseObjectGetDerivedStorage();
              strncpy(&__dst, (v159 + 2096), 8uLL);
              OUTLINED_FUNCTION_197();
              kdebug_trace();
            }

            else
            {
              os_log_and_send_and_compose_flags_and_os_log_type = v136;
            }

            v26 = BYTE4(v363);
          }

          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_201_0();
          OUTLINED_FUNCTION_171_0();
          FigDispatchAsyncPostNotification();
          if (v107)
          {
            CFRelease(v107);
          }

          CFRelease(os_log_and_send_and_compose_flags_and_os_log_type);
        }

        FigSimpleMutexUnlock();
LABEL_114:
        v14 = MEMORY[0x1E695FF58];
        goto LABEL_115;
      }

      *(DerivedStorage + 544) = 0;
      if (dword_1EAF16A10 >= 2)
      {
        OUTLINED_FUNCTION_54_0();
        v188 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_428_0(v188, v189, v190, v191, v192, v193, v194, v195, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
        OUTLINED_FUNCTION_70();
        if (v9)
        {
          if (v162)
          {
            v196 = (CMBaseObjectGetDerivedStorage() + 972);
          }

          else
          {
            v196 = "";
          }

          if (os_log_and_send_and_compose_flags_and_os_log_type)
          {
            v218 = (CMBaseObjectGetDerivedStorage() + 2096);
          }

          else
          {
            v218 = "";
          }

          v219 = "does not have an";
          *v382 = 136316418;
          if (!HIDWORD(v378))
          {
            v219 = "created new";
          }

          *&v382[4] = "playerfig_prepareWorkingItem2";
          *&v382[12] = 2048;
          if (HIDWORD(v378) == 1)
          {
            v219 = "reused";
          }

          *&v382[14] = v372;
          *&v382[22] = 2082;
          v383 = v196;
          v162 = v372;
          *v384 = 2048;
          *&v384[2] = os_log_and_send_and_compose_flags_and_os_log_type;
          *&v384[10] = 2082;
          *&v384[12] = v218;
          *&v384[20] = 2082;
          *&v384[22] = v219;
          OUTLINED_FUNCTION_36_0();
          OUTLINED_FUNCTION_45_0();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_223_0();
        }

        OUTLINED_FUNCTION_187_0();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_454();
      }

      if (HIDWORD(v378) != 1)
      {
        if (OUTLINED_FUNCTION_233_0() != os_log_and_send_and_compose_flags_and_os_log_type)
        {
          v26 = BYTE4(v363);
          if (HIDWORD(v378) == 2)
          {
            if (dword_1EAF16A10 >= 2)
            {
              v220 = OUTLINED_FUNCTION_28_0();
              OUTLINED_FUNCTION_135_0(v220, v221, v222, v223, v224, v225, v226, v227, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
              OUTLINED_FUNCTION_37();
              if (a2)
              {
                if (v372)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                if (os_log_and_send_and_compose_flags_and_os_log_type)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                *v382 = 136316162;
                OUTLINED_FUNCTION_0_0();
                OUTLINED_FUNCTION_33_0();
                OUTLINED_FUNCTION_43_0();
                OUTLINED_FUNCTION_225_0();
              }

              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_210_0();
              v162 = v372;
              v26 = BYTE4(v363);
            }

            v255 = OUTLINED_FUNCTION_410();
            itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v255, v256);
            FigPlaybackBossStartPreroll(*(v17 + 352), *(v17 + 512), *(v17 + 512), *(DerivedStorage + 48));
          }

          if (dword_1EAF16A10 >= 2)
          {
            v257 = OUTLINED_FUNCTION_28_0();
            OUTLINED_FUNCTION_135_0(v257, v258, v259, v260, v261, v262, v263, v264, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
            OUTLINED_FUNCTION_37();
            if (a2)
            {
              if (v162)
              {
                CMBaseObjectGetDerivedStorage();
              }

              if (os_log_and_send_and_compose_flags_and_os_log_type)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *v382 = 136316162;
              OUTLINED_FUNCTION_0_0();
              OUTLINED_FUNCTION_33_0();
              OUTLINED_FUNCTION_43_0();
              OUTLINED_FUNCTION_225_0();
            }

            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_210_0();
            v162 = v372;
            v26 = BYTE4(v363);
          }

          v186 = 0;
          *(v17 + 625) = 1;
          goto LABEL_289;
        }

        if (dword_1EAF16A10 >= 2)
        {
          v228 = OUTLINED_FUNCTION_28_0();
          OUTLINED_FUNCTION_135_0(v228, v229, v230, v231, v232, v233, v234, v235, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_37();
          if (a2)
          {
            if (v372)
            {
              CMBaseObjectGetDerivedStorage();
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *v382 = 136316162;
            OUTLINED_FUNCTION_0_0();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_43_0();
            OUTLINED_FUNCTION_225_0();
          }

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_210_0();
          v162 = v372;
        }

        v244 = OUTLINED_FUNCTION_410();
        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v244, v245);
        v246 = OUTLINED_FUNCTION_113_0(MEMORY[0x1E6960C70], value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, *type, cf, v381, *v382, *&v382[16], v383, *v384, *&v384[8], *&v384[16], *&v384[24], v385, v386, *&__dst.value, __dst.epoch);
        if (v246)
        {
          v207 = v246;
          if (dword_1EAF16A10)
          {
            OUTLINED_FUNCTION_129_0();
            OUTLINED_FUNCTION_59_0();
            v247 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            OUTLINED_FUNCTION_110_0(v247, v248, v249, v250, v251, v252, v253, v254, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
            OUTLINED_FUNCTION_70();
            if (v9)
            {
              if (v372)
              {
                CMBaseObjectGetDerivedStorage();
              }

              if (os_log_and_send_and_compose_flags_and_os_log_type)
              {
                CMBaseObjectGetDerivedStorage();
              }

              *v382 = 136316418;
              OUTLINED_FUNCTION_0_0();
              OUTLINED_FUNCTION_86_0();
              *(v282 + 255) = v207;
              OUTLINED_FUNCTION_35_0();
              OUTLINED_FUNCTION_51_0();
              _os_log_send_and_compose_impl();
              OUTLINED_FUNCTION_223_0();
            }

            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_454();
          }

          a2 = 0;
          goto LABEL_332;
        }

        v186 = 0;
LABEL_272:
        v26 = BYTE4(v363);
LABEL_289:
        if ((HIDWORD(v378) - 1) <= 1)
        {
          playerfig_scheduleVideoSlotAndVideoTargetConfigurationSwitchAndPossiblyStartBossForNextItem(v162);
        }

        goto LABEL_291;
      }

      v162 = v365;
      v361 = DerivedStorage;
      if (fp_audioPipelineIsRunning(*(DerivedStorage + 584)))
      {
        if (dword_1EAF16A10 >= 2)
        {
          OUTLINED_FUNCTION_129_0();
          v283 = OUTLINED_FUNCTION_117_0();
          OUTLINED_FUNCTION_135_0(v283, v284, v285, v286, v287, v288, v289, v290, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, DerivedStorage, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_37();
          if (a2)
          {
            if (v372)
            {
              v9 = (CMBaseObjectGetDerivedStorage() + 972);
            }

            else
            {
              v9 = "";
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *v382 = 136316162;
            OUTLINED_FUNCTION_46_0();
            *&v382[14] = v372;
            *&v382[22] = 2082;
            v383 = v9;
            OUTLINED_FUNCTION_3_0();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_43_0();
            OUTLINED_FUNCTION_225_0();
          }

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_449();
        }

        fp_bumpTransitionNumber();
        v306 = OUTLINED_FUNCTION_410();
        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v306, v307);
        itemfig_applyLoudnessInfo(os_log_and_send_and_compose_flags_and_os_log_type, *(v17 + 1036), 0, 1);
        v308 = FigPlaybackBossPrerollAndScheduleGaplessStart(*(v17 + 352), *(v361 + 560), *(v17 + 512), *(v361 + 48));
        if (v308)
        {
          v207 = v308;
          if (dword_1EAF16A10)
          {
            OUTLINED_FUNCTION_129_0();
            v309 = OUTLINED_FUNCTION_117_0();
            OUTLINED_FUNCTION_110_0(v309, v310, v311, v312, v313, v314, v315, v316, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
            OUTLINED_FUNCTION_70();
            if (!v9)
            {
              goto LABEL_387;
            }

            if (v372)
            {
              CMBaseObjectGetDerivedStorage();
            }

            if (!os_log_and_send_and_compose_flags_and_os_log_type)
            {
              goto LABEL_386;
            }

            goto LABEL_385;
          }
        }

        else
        {
          v317 = playerfig_setExitTransitionIDOnItemPrecedingWorkingItem(v372, *(v361 + 560));
          if (!v317)
          {
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!Mutable)
            {
              OUTLINED_FUNCTION_376();
              v25 = FigSignalErrorAtGM();
              a2 = 0;
              OUTLINED_FUNCTION_369_0();
              goto LABEL_87;
            }

            v327 = Mutable;
            if (*(v361 + 1140))
            {
              FigCFDictionarySetValueOrCFNull();
            }

            cf = 0;
            itemfig_getTrackStorage(os_log_and_send_and_compose_flags_and_os_log_type, *(v17 + 1036), &cf);
            FigCFDictionarySetValueOrCFNull();
            FigCFDictionarySetValueOrCFNull();
            if (CFDictionaryGetCount(v327) >= 1)
            {
              DerivedStorage = FigRenderPipelineSetPropertiesToUpdateAtTransition(*(v361 + 584), *(v361 + 560), v327);
              v329 = FigCFDictionaryCopyArrayOfKeys();
              v330 = FigCFCopyCompactDescription();
              if (dword_1EAF16A10)
              {
                *type = 0;
                HIBYTE(v381) = 0;
                v331 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v332 = *type;
                LODWORD(v370[0]) = HIBYTE(v381);
                if (os_log_type_enabled(v331, HIBYTE(v381)))
                {
                  v333 = v332;
                }

                else
                {
                  v333 = v332 & 0xFFFFFFFE;
                }

                if (v333)
                {
                  if (v372)
                  {
                    v162 = (CMBaseObjectGetDerivedStorage() + 972);
                  }

                  else
                  {
                    v162 = "";
                  }

                  if (os_log_and_send_and_compose_flags_and_os_log_type)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  *v382 = 136316674;
                  OUTLINED_FUNCTION_0_0();
                  *&v384[20] = 2114;
                  *&v384[22] = v330;
                  *&v384[30] = 1024;
                  LODWORD(v385) = DerivedStorage;
                  OUTLINED_FUNCTION_36_0();
                  OUTLINED_FUNCTION_51_0();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_449();
              }

              if (v329)
              {
                CFRelease(v329);
              }

              if (v330)
              {
                CFRelease(v330);
              }
            }

            OUTLINED_FUNCTION_369_0();
            v26 = BYTE4(v363);
            v186 = v327;
            goto LABEL_289;
          }

          v207 = v317;
          if (dword_1EAF16A10)
          {
            OUTLINED_FUNCTION_129_0();
            v318 = OUTLINED_FUNCTION_117_0();
            OUTLINED_FUNCTION_110_0(v318, v319, v320, v321, v322, v323, v324, v325, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
            OUTLINED_FUNCTION_70();
            if (!v9)
            {
              goto LABEL_387;
            }

            if (v372)
            {
              CMBaseObjectGetDerivedStorage();
            }

            if (!os_log_and_send_and_compose_flags_and_os_log_type)
            {
              goto LABEL_386;
            }

            goto LABEL_385;
          }
        }
      }

      else
      {
        if (dword_1EAF16A10 >= 2)
        {
          OUTLINED_FUNCTION_129_0();
          v236 = OUTLINED_FUNCTION_117_0();
          OUTLINED_FUNCTION_135_0(v236, v237, v238, v239, v240, v241, v242, v243, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, DerivedStorage, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_37();
          if (a2)
          {
            if (v372)
            {
              v162 = (CMBaseObjectGetDerivedStorage() + 972);
            }

            else
            {
              v162 = "";
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *v382 = 136316162;
            OUTLINED_FUNCTION_0_0();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_43_0();
            OUTLINED_FUNCTION_225_0();
          }

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_449();
        }

        OUTLINED_FUNCTION_439();
        itemfig_applyLoudnessInfo(v291, v292, v293, v294);
        v295 = OUTLINED_FUNCTION_410();
        itemfig_bumpBossControlTokenAndMarkBossAsNonIdle(v295, v296);
        v297 = OUTLINED_FUNCTION_113_0(MEMORY[0x1E6960C70], value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, *type, cf, v381, *v382, *&v382[16], v383, *v384, *&v384[8], *&v384[16], *&v384[24], v385, v386, *&__dst.value, __dst.epoch);
        if (!v297)
        {
          v186 = 0;
          OUTLINED_FUNCTION_369_0();
          goto LABEL_272;
        }

        v207 = v297;
        if (dword_1EAF16A10)
        {
          OUTLINED_FUNCTION_129_0();
          v298 = OUTLINED_FUNCTION_117_0();
          OUTLINED_FUNCTION_110_0(v298, v299, v300, v301, v302, v303, v304, v305, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_70();
          if (!v9)
          {
            goto LABEL_387;
          }

          if (v372)
          {
            CMBaseObjectGetDerivedStorage();
          }

          if (!os_log_and_send_and_compose_flags_and_os_log_type)
          {
LABEL_386:
            *v382 = 136316418;
            OUTLINED_FUNCTION_0_0();
            OUTLINED_FUNCTION_86_0();
            *(v328 + 255) = v207;
            OUTLINED_FUNCTION_35_0();
            OUTLINED_FUNCTION_51_0();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_223_0();
LABEL_387:
            OUTLINED_FUNCTION_187_0();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_454();
            a2 = 0;
            goto LABEL_388;
          }

LABEL_385:
          CMBaseObjectGetDerivedStorage();
          goto LABEL_386;
        }
      }

      a2 = 0;
LABEL_388:
      OUTLINED_FUNCTION_369_0();
      goto LABEL_332;
    }

    HIBYTE(v381) = 0;
    __dst = **&MEMORY[0x1E6960C70];
    v28 = CMBaseObjectGetDerivedStorage();
    *type = 0;
    cf = 0;
    if (!*(v28 + 1036))
    {
      goto LABEL_54;
    }

    v29 = v28;
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v30 || v30(os_log_and_send_and_compose_flags_and_os_log_type, &__dst))
    {
      goto LABEL_54;
    }

    if ((__dst.flags & 1) == 0)
    {
      *&__dst.value = *v370;
      __dst.epoch = v8;
    }

    v31 = *(v29 + 1008);
    v32 = *(v29 + 1036);
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v33 || v33(v31, v32, &cf, 0))
    {
      goto LABEL_54;
    }

    v34 = *MEMORY[0x1E695E480];
    FigBaseObject = FigTrackReaderGetFigBaseObject(cf);
    v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v36)
    {
      v36(FigBaseObject, @"SecondaryEditCursorService", v34, type);
      if (*type)
      {
        v185 = OUTLINED_FUNCTION_255_0(*type, v37, v38, v39, v40, v41, v42, v43, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, a3, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, *type, cf, v381, SWORD2(v381), SBYTE6(v381), SHIBYTE(v381), *v382, *&v382[16], v383, *v384, *&v384[8], *&v384[16], *&v384[24], v385, v386, *&__dst.value, __dst.epoch);
        v53 = HIBYTE(v381);
        v157 = *type;
        if (v185 | HIBYTE(v381))
        {
          v54 = v362;
          goto LABEL_196;
        }

        if (*type)
        {
          CFRelease(*type);
          *type = 0;
        }
      }
    }

    v44 = FigTrackReaderGetFigBaseObject(cf);
    v52 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v52)
    {
      v52(v44, @"EditCursorService", v34, type);
    }

    if (!*type)
    {
LABEL_54:
      v53 = 0;
      v54 = v362;
LABEL_55:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v53)
      {
        if (dword_1EAF16A10 < 2)
        {
          LODWORD(a2) = 0;
        }

        else
        {
          v55 = OUTLINED_FUNCTION_28_0();
          OUTLINED_FUNCTION_428_0(v55, v56, v57, v58, v59, v60, v61, v62, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, type[0], *&type[4], cf);
          OUTLINED_FUNCTION_70();
          if (v9)
          {
            if (v372)
            {
              CMBaseObjectGetDerivedStorage();
            }

            if (os_log_and_send_and_compose_flags_and_os_log_type)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *v382 = 136316162;
            OUTLINED_FUNCTION_0_0();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_45_0();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_223_0();
          }

          LODWORD(v9) = v54;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_454();
          LODWORD(a2) = 0;
        }
      }

      goto LABEL_69;
    }

    v156 = OUTLINED_FUNCTION_255_0(*type, v45, v46, v47, v48, v49, v50, v51, value, v336, v338, v340, v342, v344, v346, v348, v350, v352, v354, v356, v358, v360, v361, v362, v363, v365, v370[0], v370[1], v371, v372, theArray[0], theArray[1], v376, v377, v378, *type, cf, v381, SWORD2(v381), SBYTE6(v381), SHIBYTE(v381), *v382, *&v382[16], v383, *v384, *&v384[8], *&v384[16], *&v384[24], v385, v386, *&__dst.value, __dst.epoch);
    v53 = HIBYTE(v381);
    v157 = *type;
    v54 = v362;
    if (!v156 && !HIBYTE(v381) && *type)
    {
      CFRelease(*type);
      v53 = 0;
      *type = 0;
      goto LABEL_55;
    }

LABEL_196:
    if (v157)
    {
      CFRelease(v157);
    }

    goto LABEL_55;
  }

  if (!FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &v377))
  {
    a3 = v377;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_256_0();
  v26 = 1;
  v25 = v202;
LABEL_115:
  FigDeferredTransactionCommit(v377, 0);
  if (v377)
  {
    CFRelease(v377);
  }

  if (*v14 == 1)
  {
    kdebug_trace();
  }

  if (dword_1EAF16A10 >= 2)
  {
    OUTLINED_FUNCTION_54_0();
    v123 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v124 = cf;
    os_log_type_enabled(v123, type[0]);
    OUTLINED_FUNCTION_189();
    if (v119)
    {
      v126 = v125;
    }

    else
    {
      v126 = v124;
    }

    if (v126)
    {
      if ((v26 & 1) == 0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *v382 = 136315906;
      OUTLINED_FUNCTION_46_0();
      *&v382[14] = os_log_and_send_and_compose_flags_and_os_log_type;
      OUTLINED_FUNCTION_290_0();
      *v384 = 1024;
      *&v384[2] = v25;
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_524();
  }

  if (a2)
  {
    CFRelease(a2);
  }

  return v25;
}

uint64_t playerasync_reflectSubPlayerNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    Value = CFDictionaryGetValue(a5, @"AVController_Volume");
    if (!Value)
    {
      goto LABEL_11;
    }

    v8 = Value;
    v9 = DerivedStorage + 80;
    FigSimpleMutexLock();
    v10 = *(v9 + 8);
    *(v9 + 8) = v8;
    v11 = v8;
    goto LABEL_7;
  }

  if (!FigCFEqual())
  {
    goto LABEL_11;
  }

  v12 = DerivedStorage + 80;
  FigSimpleMutexLock();
  v10 = *(v12 + 16);
  *(v12 + 16) = a5;
  if (a5)
  {
    v11 = a5;
LABEL_7:
    CFRetain(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  FigSimpleMutexUnlock();
LABEL_11:
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t ensureRegistryInitialized()
{
  MEMORY[0x19A8D3660](&ensureRegistryInitialized_sInitRegistryOnce, initRegistry);
  if (_MergedGlobals_29 && CFArrayGetCount(_MergedGlobals_29))
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t initRegistry()
{
  _MergedGlobals_29 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  result = FigFormatReaderCreatePropertyListDictionaryFromCString("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>video/mp4</key>\t<array>\t\t<string>audio/mp4</string>\t\t<string>audio/x-m4a</string>\t\t<string>audio/x-m4b</string>\t\t<string>audio/x-m4p</string>\t\t<string>video/x-m4v</string>\t\t<string>audio/x-m4r</string>\t\t<string>video/3gpp</string>\t\t<string>audio/3gpp</string>\t\t<string>video/3gpp2</string>\t\t<string>audio/3gpp2</string>\t\t<string>application/mp4</string>\t</array>\t<key>video/quicktime</key>\t<array>\t\t<string>audio/x-quicktime</string>\t</array>\t<key>audio/vnd.wave</key>\t<array>\t\t<string>audio/wav</string>\t\t<string>audio/x-wav</string>\t\t<string>audio/wave</string>\t</array>\t<key>audio/mpeg</key>\t<array>\t\t<string>audio/mpa</string>\t\t<string>audio/x-mpeg</string>\t\t<string>audio/mpg</string>\t\t<string>audio/x-mpg</string>\t\t<string>audio/mpeg3</string>\t\t<string>audio/x-mpeg3</string>\t\t<string>audio/mp3</string>\t\t<string>audio/x-mp3</string>\t</array>\t<key>audio/aac</key>\t<array>\t\t<string>audio/x-aac</string>\t</array>\t<key>video/mp2t</key>\t<array>\t\t<string>video/x-mp2t</string>\t\t<string>video/m2ts</string>\t\t<string>video/x-m2ts</string>\t</array>\t<key>audio/aiff</key>\t<array>\t\t<string>audio/x-aiff</string>\t</array>\t<key>video/vnd.avi</key>\t<array>\t\t<string>video/avi</string>\t\t<string>video/msvideo</string>\t\t<string>video/x-msvideo</string>\t</array></dict></plist>", 0, &qword_1ED4CA6E8);
  if (result)
  {
    return result;
  }

  result = RegisterStaticFormatReader("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>MooV</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>video/quicktime</string>\t\t\t<string>video/mp4</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mov</string>\t\t\t<string>qt</string>\t\t\t<string>qta</string>\t\t\t<string>mqv</string>\t\t\t<string>mp4</string>\t\t\t<string>m4a</string>\t\t\t<string>m4v</string>\t\t\t<string>m4b</string>\t\t\t<string>m4p</string>\t\t\t<string>m4r</string>\t\t\t<string>aax</string>\t\t\t<string>3gp</string>\t\t\t<string>3gpp</string>\t\t\t<string>3g2</string>\t\t\t<string>3gp2</string>\t\t\t<string>aivu</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>com.apple.quicktime-movie</string>\t\t\t<string>com.apple.quicktime-audio</string>\t\t\t<string>public.mpeg-4</string>\t\t\t<string>public.mpeg-4-audio</string>\t\t\t<string>com.apple.m4a-audio</string>\t\t\t<string>com.apple.protected-mpeg-4-audio</string>\t\t\t<string>com.apple.protected-mpeg-4-audio-b</string>\t\t\t<string>com.apple.m4v-video</string>\t\t\t<string>com.apple.mpeg-4-ringtone</string>\t\t\t<string>com.audible.aax-audiobook</string>\t\t\t<string>public.3gpp</string>\t\t\t<string>public.3gpp2</string>\t\t\t<string>com.apple.immersive-video</string>\t\t</array>\t</dict></dict></plist>", InstantiateMovieFormatReader);
  if (result)
  {
    return result;
  }

  result = RegisterStaticFormatReader("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>video/vnd.avi</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>avi</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.avi</string>\t\t</array>\t</dict></dict></plist>", InstantiateAVIFormatReader);
  if (result)
  {
    return result;
  }

  v1 = CFPreferencesCopyValue(@"CombinedAudioFormatReader", @"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!v1)
  {
    goto LABEL_5;
  }

  v4 = v1;
  if (CFEqual(v1, @"AudioFile"))
  {
    qword_1ED4CA6F0 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>mp3!</string>\t\t\t<string>MP3!</string>\t\t\t<string>MPG3</string>\t\t\t<string>mpg3</string>\t\t\t<string>Mp3 </string>\t\t\t<string>MP3 </string>\t\t\t<string>amr </string>\t\t\t<string>amrw</string>\t\t\t<string>AIFF</string>\t\t\t<string>AIFC</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>audio/mpeg</string>\t\t\t<string>audio/AMR</string>\t\t\t<string>audio/AMR-WB</string>\t\t\t<string>audio/aac</string>\t\t\t<string>audio/vnd.wave</string>\t\t\t<string>audio/aiff</string>\t\t\t<string>audio/x-caf</string>\t\t\t<string>audio/basic</string>\t\t\t<string>audio/flac</string>\t\t\t<string>audio/usac</string>\t\t\t<string>audio/ogg</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mp3</string>\t\t\t<string>m1a</string>\t\t\t<string>m2a</string>\t\t\t<string>mpa</string>\t\t\t<string>mp2</string>\t\t\t<string>mp1</string>\t\t\t<string>aif</string>\t\t\t<string>aiff</string>\t\t\t<string>aifc</string>\t\t\t<string>wav</string>\t\t\t<string>w64</string>\t\t\t<string>aac</string>\t\t\t<string>adts</string>\t\t\t<string>ac3</string>\t\t\t<string>ec3</string>\t\t\t<string>eac3</string>\t\t\t<string>caf</string>\t\t\t<string>amr</string>\t\t\t<string>awb</string>\t\t\t<string>aa</string>\t\t\t<string>au</string>\t\t\t<string>flac</string>\t\t\t<string>latm</string>\t\t\t<string>loas</string>\t\t\t<string>xhe</string>\t\t\t<string>ogg</string>\t\t\t<string>oga</string>\t\t\t<string>opus</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.mp2</string>\t\t\t<string>public.mp3</string>\t\t\t<string>public.aiff-audio</string>\t\t\t<string>public.aifc-audio</string>\t\t\t<string>com.microsoft.waveform-audio</string>\t\t\t<string>com.sony.wave64</string>\t\t\t<string>public.aac-audio</string>\t\t\t<string>public.ac3-audio</string>\t\t\t<string>public.enhanced-ac3-audio</string>\t\t\t<string>com.apple.coreaudio-format</string>\t\t\t<string>org.3gpp.adaptive-multi-rate-audio</string>\t\t\t<string>com.audible.aa-audiobook</string>\t\t\t<string>public.au-audio</string>\t\t\t<string>org.xiph.flac</string>\t\t\t<string>public.mp4a-loas</string>\t\t\t<string>org.xiph.ogg-audio</string>\t\t</array>\t</dict></dict></plist>";
    *algn_1ED4CA6F8 = InstantiateAudioFileFormatReader;
    CFRelease(v4);
  }

  else
  {
    v5 = CFEqual(v4, @"AudioFileStream");
    v6 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>mp3!</string>\t\t\t<string>MP3!</string>\t\t\t<string>MPG3</string>\t\t\t<string>mpg3</string>\t\t\t<string>Mp3 </string>\t\t\t<string>MP3 </string>\t\t\t<string>amr </string>\t\t\t<string>amrw</string>\t\t\t<string>AIFF</string>\t\t\t<string>AIFC</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>audio/mpeg</string>\t\t\t<string>audio/AMR</string>\t\t\t<string>audio/AMR-WB</string>\t\t\t<string>audio/aac</string>\t\t\t<string>audio/vnd.wave</string>\t\t\t<string>audio/aiff</string>\t\t\t<string>audio/x-caf</string>\t\t\t<string>audio/basic</string>\t\t\t<string>audio/flac</string>\t\t\t<string>audio/usac</string>\t\t\t<string>audio/ogg</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mp3</string>\t\t\t<string>m1a</string>\t\t\t<string>m2a</string>\t\t\t<string>mpa</string>\t\t\t<string>mp2</string>\t\t\t<string>mp1</string>\t\t\t<string>aif</string>\t\t\t<string>aiff</string>\t\t\t<string>aifc</string>\t\t\t<string>wav</string>\t\t\t<string>w64</string>\t\t\t<string>aac</string>\t\t\t<string>adts</string>\t\t\t<string>ac3</string>\t\t\t<string>ec3</string>\t\t\t<string>eac3</string>\t\t\t<string>caf</string>\t\t\t<string>amr</string>\t\t\t<string>awb</string>\t\t\t<string>aa</string>\t\t\t<string>au</string>\t\t\t<string>flac</string>\t\t\t<string>latm</string>\t\t\t<string>loas</string>\t\t\t<string>xhe</string>\t\t\t<string>ogg</string>\t\t\t<string>oga</string>\t\t\t<string>opus</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.mp2</string>\t\t\t<string>public.mp3</string>\t\t\t<string>public.aiff-audio</string>\t\t\t<string>public.aifc-audio</string>\t\t\t<string>com.microsoft.waveform-audio</string>\t\t\t<string>com.sony.wave64</string>\t\t\t<string>public.aac-audio</string>\t\t\t<string>public.ac3-audio</string>\t\t\t<string>public.enhanced-ac3-audio</string>\t\t\t<string>com.apple.coreaudio-format</string>\t\t\t<string>org.3gpp.adaptive-multi-rate-audio</string>\t\t\t<string>com.audible.aa-audiobook</string>\t\t\t<string>public.au-audio</string>\t\t\t<string>org.xiph.flac</string>\t\t\t<string>public.mp4a-loas</string>\t\t\t<string>org.xiph.ogg-audio</string>\t\t</array>\t</dict></dict></plist>";
    if (v5)
    {
      v7 = InstantiateAudioFileStreamFormatReader;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    qword_1ED4CA6F0 = v6;
    *algn_1ED4CA6F8 = v7;
    CFRelease(v4);
    if (!v5)
    {
LABEL_5:
      result = RegisterStaticFormatReader("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>AIFF</string>\t\t\t<string>AIFC</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>audio/vnd.wave</string>\t\t\t<string>audio/aiff</string>\t\t\t<string>audio/x-caf</string>\t\t\t<string>audio/basic</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>aif</string>\t\t\t<string>aiff</string>\t\t\t<string>aifc</string>\t\t\t<string>caf</string>\t\t\t<string>aa</string>\t\t\t<string>wav</string>\t\t\t<string>au</string>\t\t\t<string>w64</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.aiff-audio</string>\t\t\t<string>public.aifc-audio</string>\t\t\t<string>com.apple.coreaudio-format</string>\t\t\t<string>com.audible.aa-audiobook</string>\t\t\t<string>com.microsoft.waveform-audio</string>\t\t\t<string>public.au-audio</string>\t\t\t<string>com.sony.wave64</string>\t\t</array>\t</dict></dict></plist>", InstantiateAudioFileFormatReader);
      if (result)
      {
        return result;
      }

      v2 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>mp3!</string>\t\t\t<string>MP3!</string>\t\t\t<string>MPG3</string>\t\t\t<string>mpg3</string>\t\t\t<string>Mp3 </string>\t\t\t<string>MP3 </string>\t\t\t<string>amr </string>\t\t\t<string>amrw</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>audio/mpeg</string>\t\t\t<string>audio/AMR</string>\t\t\t<string>audio/AMR-WB</string>\t\t\t<string>audio/aac</string>\t\t\t<string>audio/flac</string>\t\t\t<string>audio/usac</string>\t\t\t<string>audio/ogg</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mp3</string>\t\t\t<string>m1a</string>\t\t\t<string>m2a</string>\t\t\t<string>mpa</string>\t\t\t<string>mp2</string>\t\t\t<string>mp1</string>\t\t\t<string>aac</string>\t\t\t<string>adts</string>\t\t\t<string>amr</string>\t\t\t<string>awb</string>\t\t\t<string>ac3</string>\t\t\t<string>ec3</string>\t\t\t<string>eac3</string>\t\t\t<string>flac</string>\t\t\t<string>latm</string>\t\t\t<string>loas</string>\t\t\t<string>xhe</string>\t\t\t<string>ogg</string>\t\t\t<string>oga</string>\t\t\t<string>opus</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.mp3</string>\t\t\t<string>public.mp2</string>\t\t\t<string>public.aac-audio</string>\t\t\t<string>org.3gpp.adaptive-multi-rate-audio</string>\t\t\t<string>public.ac3-audio</string>\t\t\t<string>public.enhanced-ac3-audio</string>\t\t\t<string>org.xiph.flac</string>\t\t\t<string>public.mp4a-loas</string>\t\t\t<string>org.xiph.ogg-audio</string>\t\t</array>\t</dict></dict></plist>";
      v3 = InstantiateAudioFileStreamFormatReader;
      goto LABEL_15;
    }
  }

  v2 = qword_1ED4CA6F0;
  v3 = *algn_1ED4CA6F8;
LABEL_15:
  result = RegisterStaticFormatReader(v2, v3);
  if (!result)
  {
    result = RegisterStaticFormatReader("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>text/vtt</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>vtt</string>\t\t\t<string>webvtt</string>\t\t</array>\t\t\t<key>com.apple.uti</key>\t\t\t<array>\t\t\t\t<string>org.w3.webvtt</string>\t\t\t</array>\t</dict></dict></plist>", InstantiateWebVTTFormatReader);
    if (!result)
    {
      result = RegisterStaticFormatReader("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>text/scc</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>scc</string>\t\t\t<string>sc2</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>com.scenarist.closed-caption</string>\t\t</array>\t</dict></dict></plist>", InstantiateSCCFormatReader);
      if (!result)
      {

        return RegisterStaticFormatReader("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>application/ttml+xml</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>itt</string>\t\t\t<string>ttml</string>\t\t</array>\t</dict></dict></plist>", InstantiateTTMLFormatReader);
      }
    }
  }

  return result;
}

uint64_t FigThingFind(uint64_t a1, uint64_t *a2)
{
  v3 = gAllFigThings;
  if (gAllFigThings)
  {
    while (1)
    {
      v5 = *a1;
      if (!*a1 || (v6 = CFDictionaryGetValue(*(v3 + 8), @"FigThingType"), CFEqual(v5, v6)))
      {
        v7 = *(a1 + 8);
        if (!v7 || (v8 = CFDictionaryGetValue(*(v3 + 8), @"FigThingSubtype"), CFEqual(v7, v8)))
        {
          v9 = *(a1 + 16);
          if (!v9)
          {
            break;
          }

          Value = CFDictionaryGetValue(*(v3 + 8), @"FigThingManufacturer");
          if (CFEqual(v9, Value))
          {
            break;
          }
        }
      }

      v3 = *(v3 + 40);
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    *a2 = v3;
  }

LABEL_11:
  if (*a2)
  {
    return 0;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t QTMovieFormatReaderCreateFromStream(const void *a1, const __CFAllocator *a2, const __CFDictionary *a3, void *a4)
{
  FigFormatReaderGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    goto LABEL_27;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"Instantiation_AllowIncrementalFragmentParsing");
    v11 = *MEMORY[0x1E695E4D0];
    if (Value == *MEMORY[0x1E695E4D0])
    {
      v12 = 19;
    }

    else
    {
      v12 = 0;
    }

    if (Value == *MEMORY[0x1E695E4D0])
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    CFDictionaryGetValue(a3, @"Instantiation_PrepareForCopying");
    OUTLINED_FUNCTION_8_49();
    CFDictionaryGetValue(a3, @"Instantiation_MovieProxy");
    OUTLINED_FUNCTION_8_49();
    CFDictionaryGetValue(a3, @"ReadEntireMoovAtom");
    OUTLINED_FUNCTION_8_49();
    if (CFDictionaryGetValue(a3, @"Instantiation_EnableAssetAnalysis") == v11)
    {
      FigAssetAnalysisReporterCreate();
    }

    Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
    CFDictionaryGetValue(a3, @"Instantiation_IgnoreDisabledAPACAudioTracks");
    OUTLINED_FUNCTION_8_49();
    v15 = CFDictionaryGetValue(a3, @"Instantiation_ParseExternalSphericalTags");
    v16 = v12 | 0x100;
    if (v15 != v11)
    {
      v16 = v12;
    }

    v17 = v16 | 2;
    v18 = Int32IfPresent == 0;
  }

  else
  {
    v13 = 0;
    v18 = 1;
    v17 = 2;
  }

  v8 = MovieInformationCreate(a2, v13, (DerivedStorage + 8));
  if (v8)
  {
    goto LABEL_27;
  }

  *DerivedStorage = CFRetain(a1);
  v19 = FigSimpleMutexCreate();
  *(DerivedStorage + 80) = v19;
  if (!v19 || (v20 = FigSimpleMutexCreate(), (*(DerivedStorage + 72) = v20) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_3();
    v8 = FigSignalErrorAtGM();
LABEL_27:
    TrackReaderDictionary = v8;
    goto LABEL_23;
  }

  if (!v18)
  {
    MovieInformationSetAudibleGroupID(*(DerivedStorage + 8), 0);
  }

  v8 = MoovParseByteStream(*(DerivedStorage + 8), v17, *DerivedStorage, 0);
  if (v8)
  {
    goto LABEL_27;
  }

  TrackReaderDictionary = CreateTrackReaderDictionary(a2, DerivedStorage);
  if (!TrackReaderDictionary)
  {
    *a4 = 0;
  }

LABEL_23:
  if (MoovIsParsingError(TrackReaderDictionary))
  {
    return 4294954448;
  }

  else
  {
    return TrackReaderDictionary;
  }
}

uint64_t RegisterFigFormatReader()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t playercentral_SetRate(OpaqueFigPlayer *a1, float a2)
{
  v4 = OUTLINED_FUNCTION_31_9();
  v5 = v4;
  cf = 0;
  if (*(v4 + 8) || !*(v4 + 16))
  {
    OUTLINED_FUNCTION_239();
    SetRateOptions = FigSignalErrorAtGM();
LABEL_3:
    v7 = SetRateOptions;
    goto LABEL_4;
  }

  SetRateOptions = FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 0, &cf);
  if (SetRateOptions)
  {
    goto LABEL_3;
  }

  v9 = cf;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (v10)
  {
    SetRateOptions = v10(v2, v9, v3);
    goto LABEL_3;
  }

  v7 = 4294954514;
LABEL_4:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v7)
  {
    *(v5 + 212) = v3;
  }

  return v7;
}

uint64_t playerfig_SetRateWithFade(uint64_t a1, CMTime *a2, float a3)
{
  v8 = *a2;
  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v4 = v6;
  v5 = v7;
  return playerfig_setRateGuts(a1, 0, &v8, &v6, &v4, 0, a3);
}

uint64_t playerfig_applySoftwareVolume(float a1, float a2, uint64_t a3, const void *a4, int a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = a2;
  valuePtr = a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v8 = FigCFCopyCompactDescription();
  if (dword_1EAF16A10)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (!*(DerivedStorage + 584) && !*(DerivedStorage + 664))
  {
    if (dword_1EAF16A10)
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = 0;
    goto LABEL_11;
  }

  if (CFEqual(a4, @"SoftwareVolume1"))
  {
    v13 = 0;
  }

  else if (CFEqual(a4, @"SoftwareVolume2"))
  {
    v13 = 0;
  }

  else
  {
    if (!CFEqual(a4, @"SoftwareVolume5"))
    {
      v10 = FigSignalErrorAtGM();
LABEL_11:
      FigSimpleMutexUnlock();
      return v10;
    }

    v13 = 1;
  }

  if (a2 < 0.0)
  {
    v20 = 0.0;
  }

  v14 = *MEMORY[0x1E695E480];
  v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  v16 = CFNumberCreate(v14, kCFNumberFloatType, &v20);
  if ((v13 & 1) == 0 && (v17 = fp_setPropertyOnAllAudioRenderPipelines(), v17))
  {
    v10 = v17;
  }

  else
  {
    v18 = fp_setPropertyOnAllAudioRenderPipelines();
    v10 = v18;
    if (a5 && !v18)
    {
      if (v20 > 0.0)
      {
        usleep((v20 * 1000.0 * 1000.0));
      }

      v10 = 0;
    }
  }

  FigSimpleMutexUnlock();
  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v10;
}

uint64_t playerfig_setRateGuts(uint64_t a1, unsigned int a2, CMTime *a3, uint64_t a4, uint64_t a5, int a6, float a7)
{
  v95 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  HIBYTE(v78) = 0;
  *&v78 = a7;
  HIDWORD(v77) = 0;
  BYTE3(v77) = 0;
  HIDWORD(v76) = 0;
  BYTE3(v76) = 0;
  if (a7 != 0.0)
  {
    LOBYTE(__dst.value) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v15 = 0;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  if ((*(a5 + 12) & 1) == 0)
  {
    FigCFDictionaryGetCMTimeIfPresent();
  }

  if ((*(a4 + 12) & 1) == 0)
  {
    FigCFDictionaryGetCMTimeIfPresent();
  }

  if (*DerivedStorage)
  {
    return 0;
  }

  v67 = @"RateChangeIdentifier";
  v72 = a2;
  FigSimpleMutexLock();
  v18 = *(DerivedStorage + 48);
  if (*(DerivedStorage + 52) == 4)
  {
    v19 = *(DerivedStorage + 48);
  }

  else
  {
    v19 = 0.0;
  }

  v69 = a3;
  if (!*(DerivedStorage + 57) || (*(a4 + 12) & 1) != 0 || (*(a5 + 12) & 1) != 0)
  {
    v15 = 2;
  }

  v20 = v15;
  if (v18 != a7)
  {
    playerfig_clearCoordinatedPlaybackSynchronizationTimebaseForItemsAfterItem(a1, 0);
  }

  v70 = a4;
  v21 = *(DerivedStorage + 56);
  v22 = *(DerivedStorage + 52);
  v23 = *(DerivedStorage + 536);
  v24 = v23 != 0;
  PlaythroughPrediction = itemfig_getPlaythroughPrediction(v23);
  NextPlaybackState = playerfig_getNextPlaybackState(a1, a7, v72, v22, v18 != a7, v24, v21, v20, PlaythroughPrediction, &v77 + 1, (DerivedStorage + 56), &v78 + 7, &v78);
  if (NextPlaybackState)
  {
    v16 = NextPlaybackState;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigSimpleMutexUnlock();
    return v16;
  }

  LODWORD(v16) = playerfig_enterPlaybackState(a1, SHIDWORD(v77));
  if (v16)
  {
    LODWORD(time1.value) = 0;
    LOBYTE(type.value) = 0;
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 48) = a7;
  v28 = CMBaseObjectGetDerivedStorage();
  if (a7 == 0.0)
  {
    v29 = *(v28 + 68);
  }

  else
  {
    v29 = 0;
  }

  if (*(a4 + 12) & 1) != 0 || (*(a5 + 12))
  {
    HIBYTE(v78) = 1;
  }

  v30 = *(v28 + 72);
  playerfig_updateResourceUsageOnGlobalResourceArbiter(a1, *(DerivedStorage + 536));
  FigSimpleMutexUnlock();
  HIDWORD(v68) = v30;
  if (a7 != 0.0 && v18 == 0.0 && v29 < v30)
  {
    if (dword_1EAF16A10)
    {
      HIDWORD(v66) = v29;
      LODWORD(time1.value) = 0;
      LOBYTE(type.value) = 0;
      v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    playerfig_updateEffectiveResourceConservationLevel(a1, v31, v32, v33, v34, v35, v36, v37, v62, v63, v64[0], v64[1], HIBYTE(v64[1]), *&v64[2], v65, v66, @"RateChangeIdentifier", @"RateChangeIdentifier" >> 32, v68, v69, a4, v71, v72, type.value, *&type.timescale, type.epoch, v74, time1.value, *&time1.timescale, time1.epoch, v76, v77, v78, v79, v80, v81.value, *&v81.timescale, v81.epoch, v82, v83, *(&v83 + 1), v84, *(&v84 + 1), __dst.value, *&__dst.timescale, __dst.epoch, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  }

  v38 = *(DerivedStorage + 528);
  if (v38 && CFArrayGetCount(v38) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 528), 0);
  }

  else
  {
    ValueAtIndex = 0;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (ValueAtIndex)
    {
      v40 = (CMBaseObjectGetDerivedStorage() + 2096);
    }

    else
    {
      v40 = "";
    }

    strncpy(&__dst, v40, 8uLL);
    if (a1)
    {
      v41 = (CMBaseObjectGetDerivedStorage() + 972);
    }

    else
    {
      v41 = "";
    }

    strncpy(&__dst, v41, 8uLL);
    kdebug_trace();
  }

  if (HIBYTE(v78))
  {
    __dst = *v69;
    v81 = *a4;
    time1 = *a5;
    LODWORD(v16) = playerfig_setBossRateWithFade(a1, v72, &__dst, &v81, &time1, *&v78, v19);
    if (v16)
    {
      HIDWORD(v66) = v29;
      LODWORD(time1.value) = 0;
      LOBYTE(type.value) = 0;
      v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = time1.value;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v44 = value;
      }

      else
      {
        v44 = value & 0xFFFFFFFE;
      }

      if (v44)
      {
        if (a1)
        {
          v45 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v45 = "";
        }

        v46 = *&v78;
        Description = FigPlayerPlaybackStateGetDescription(*(DerivedStorage + 52));
        LODWORD(v81.value) = 136316418;
        *(&v81.value + 4) = "playerfig_setRateGuts";
        LOWORD(v81.flags) = 2048;
        *(&v81.flags + 2) = a1;
        HIWORD(v81.epoch) = 2082;
        v82 = v45;
        LOWORD(v83) = 2048;
        *(&v83 + 2) = v46;
        WORD5(v83) = 1024;
        HIDWORD(v83) = v16;
        LOWORD(v84) = 2082;
        *(&v84 + 2) = Description;
        LODWORD(v63) = 58;
        v62 = &v81;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (v18 != a7)
  {
    playerfig_setRateGuts_cold_1(a1, v72, a6, v67, v34, v35, v36, v37);
  }

  if (a7 == 0.0 && v18 != 0.0 && v29 > SHIDWORD(v68))
  {
    if (dword_1EAF16A10)
    {
      LODWORD(time1.value) = 0;
      LOBYTE(type.value) = 0;
      v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v58 = time1.value;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v58;
      }

      else
      {
        v59 = v58 & 0xFFFFFFFE;
      }

      if (v59)
      {
        if (a1)
        {
          v60 = (CMBaseObjectGetDerivedStorage() + 972);
        }

        else
        {
          v60 = "";
        }

        LODWORD(v81.value) = 136315650;
        *(&v81.value + 4) = "playerfig_setRateGuts";
        LOWORD(v81.flags) = 2048;
        *(&v81.flags + 2) = a1;
        HIWORD(v81.epoch) = 2082;
        v82 = v60;
        LODWORD(v63) = 32;
        v62 = &v81;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a4 = v70;
    }

    playerfig_updateEffectiveResourceConservationLevel(a1, v31, v32, v33, v34, v35, v36, v37, v62, v63, v64[0], v64[1], HIBYTE(v64[1]), *&v64[2], v65, v66, v67, SWORD2(v67), v68, v69, v70, v71, v72, type.value, *&type.timescale, type.epoch, v74, time1.value, *&time1.timescale, time1.epoch, v76, v77, v78, v79, v80, v81.value, *&v81.timescale, v81.epoch, v82, v83, *(&v83 + 1), v84, *(&v84 + 1), __dst.value, *&__dst.timescale, __dst.epoch, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  }

  if (v16)
  {
    v48 = 1;
  }

  else
  {
    v48 = ValueAtIndex == 0;
  }

  v49 = v48;
  if (v48)
  {
    v16 = v16;
  }

  else
  {
    v16 = 0;
  }

  if (a7 != 0.0 && (v49 & 1) == 0)
  {
    v50 = CMBaseObjectGetDerivedStorage();
    v51 = v50;
    __dst = *a4;
    if (*(v50 + 176))
    {
      v52 = (v50 + 164);
    }

    else
    {
      v52 = MEMORY[0x1E6960CC0];
    }

    v81 = *v52;
    v79 = *(v50 + 140);
    flags = *(v50 + 152);
    LODWORD(v80) = *(v50 + 148);
    epoch = *(v50 + 156);
    if ((__dst.flags & 1) != 0 || (DurationIfReady = itemfig_GetCurrentTime(ValueAtIndex, &__dst), !DurationIfReady))
    {
      if (flags)
      {
        goto LABEL_77;
      }

      time1 = **&MEMORY[0x1E6960C70];
      DurationIfReady = itemfig_getDurationIfReady(ValueAtIndex, &time1);
      if (!DurationIfReady)
      {
        v79 = time1.value;
        flags = time1.flags;
        LODWORD(v80) = time1.timescale;
        epoch = time1.epoch;
LABEL_77:
        if (a7 < 0.0 && (time1 = __dst, type = v81, CMTimeCompare(&time1, &type) > 0) || a7 > 0.0 && (time1 = __dst, type.value = v79, type.timescale = v80, type.flags = flags, type.epoch = epoch, CMTimeCompare(&time1, &type) < 0))
        {
          v16 = 0;
          *(v51 + 2217) = 0;
          return v16;
        }

        return 0;
      }
    }

    return DurationIfReady;
  }

  return v16;
}

uint64_t FigPlayerGetRate(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t ParseChildAtoms(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = 0;
  v11 = a4 + 4;
  v12 = a4 + 8;
  while (1)
  {
    OUTLINED_FUNCTION_39_17();
    result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (result)
    {
      return result;
    }

    if (a3 >= 1)
    {
      v14 = 0;
      v15 = v12;
      v16 = v11;
      while (*(v16 - 4))
      {
        ++v14;
        v16 += 16;
        v15 += 16;
        if (a3 == v14)
        {
          goto LABEL_14;
        }
      }

      v17 = 1 << v14;
      if ((*v16 & 1) != 0 && (v17 & v9) != 0)
      {
        MovieAtomReportChildAtomParsingFailureMessage(a1, 0, a2, "Repeated non-repeatable atom");
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_2();
        return FigSignalErrorAtGM();
      }

      v9 |= v17;
      result = (*(v16 + 4))(a2, a5);
      if (result == 1937010544)
      {
LABEL_19:
        result = 0;
LABEL_20:
        if (a3 >= 1)
        {
          v18 = 0;
          v19 = (a4 + 4);
          do
          {
            if ((*v19 & 2) != 0 && ((v9 >> v18) & 1) == 0)
            {
              MovieAtomReportChildAtomParsingFailureMessage(a1, *(v19 - 1), a2, "Missing mandatory atom");
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              result = FigSignalErrorAtGM();
            }

            ++v18;
            v19 += 16;
          }

          while (a3 != v18);
        }

        return result;
      }

      if (result)
      {
        return result;
      }

      if ((*v16 & 4) != 0)
      {
        v10 = 1;
      }
    }

LABEL_14:
    result = FigAtomStreamAdvanceToNextAtom();
    if (result == -12890)
    {
      goto LABEL_19;
    }

    if (v10)
    {
      MovieAtomReportChildAtomParsingFailureMessage(a1, 0, a2, "Unexpected additional atom");
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_2();
      result = FigSignalErrorAtGM();
    }

    if (result)
    {
      goto LABEL_20;
    }
  }
}

uint64_t GetFileTypeAtom()
{
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t GetMovieAtom(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  LODWORD(result) = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (!result)
  {
    memset(v4, 0, sizeof(v4));
    *(a2 + 40) = *(a2 + 48);
    LODWORD(result) = FigAtomStreamAdvanceToNextAtom();
    if (result == -12890 || !result && (LODWORD(result) = FigAtomStreamGetCurrentAtomTypeAndDataLength(), !result))
    {
      LODWORD(result) = FigAtomStreamInitWithParent();
      if (!result)
      {
        LODWORD(result) = figMDRW_ParseChildAtoms(v4, 3, &GetMovieAtom_atomDispatch, a2);
      }
    }
  }

  if (result)
  {
    return result;
  }

  else
  {
    return 1937010544;
  }
}

uint64_t playerasync_GetRate(const void *a1, _DWORD *a2)
{
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    *a2 = 0;
    if (!*DerivedStorage)
    {
      v7 = playerasync_createCommand(a1, 10, 0, &v18);
      v8 = v18;
      if (!v7)
      {
        *(v18 + 32) = a2;
        v9 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        if (*(v9 + 6))
        {
LABEL_8:
          FigSimpleMutexUnlock();
          playerasync_runSynchronousCommand(a1, v8);
          v10 = v8[7];
LABEL_9:
          fpa_releaseCommand(v8);
          return v10;
        }

        for (i = *(v9 + 112); i; i = *i)
        {
          v12 = *(i + 6);
          v13 = v12 > 0x11;
          v14 = (1 << v12) & 0x28A00;
          if (!v13 && v14 != 0)
          {
            goto LABEL_8;
          }
        }

        FigSimpleMutexUnlock();
        v16 = *(v5 + 2);
        if (!v16)
        {
          FigSimpleMutexLock();
          v10 = v5[2];
          FigSimpleMutexUnlock();
          goto LABEL_9;
        }

        v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v17)
        {
          v10 = 4294954514;
          goto LABEL_9;
        }

        v7 = v17(v16, a2);
      }

      v10 = v7;
      goto LABEL_9;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void DoPostParsingSampleTableCommon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_58;
  }

  if (*(a2 + 288) < 1)
  {
LABEL_46:
    v56 = *(a2 + 728);
    if (v56 && *(v56 + 56))
    {
      AssureTrackFragmentFixups(a2);
    }

    if (MovieSampleTableHaveCompositionShiftLeastInfo(a2))
    {
      *(a2 + 112) = MovieSampleTableGetMaxDecodeToDisplay(a2);
      *(a2 + 116) = MovieSampleTableGetMinDecodeToDisplay(a2);
    }

    else if (MovieSampleTableHaveCompositionOffsetTable(a2))
    {
      v60 = MovieSampleTableNumCompositionOffsetEntries(a2);
      if (v60 >= 1)
      {
        v61 = v60;
        for (i = 0; i != v61; ++i)
        {
          CompositionOffsetDisplayOffset = MovieSampleTableGetCompositionOffsetDisplayOffset(a2, i);
          if (*(a2 + 112) < CompositionOffsetDisplayOffset)
          {
            *(a2 + 112) = CompositionOffsetDisplayOffset;
          }

          if (*(a2 + 116) > CompositionOffsetDisplayOffset)
          {
            *(a2 + 116) = CompositionOffsetDisplayOffset;
          }
        }
      }
    }

    v57 = *(a2 + 728);
    if (v57 && *(v57 + 56) && *(v57 + 13))
    {
      v58 = *(v57 + 32);
      if (*(a2 + 112) < v58)
      {
        *(a2 + 112) = v58;
      }

      v59 = *(v57 + 36);
      if (*(a2 + 116) > v59)
      {
        *(a2 + 116) = v59;
      }
    }

    goto LABEL_58;
  }

  if (*(a2 + 56))
  {
    HaveTimeToSampleTable = MovieSampleTableHaveTimeToSampleTable(a2);
    if (HaveTimeToSampleTable)
    {
      v7 = MovieSampleTableNumTimeToSampleEntries(a2);
      if (v7 <= 0)
      {
        OUTLINED_FUNCTION_15_37(v7, v8, v9, "'stts' atom has zero entries");
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
      }

      else
      {
        HaveSampleToChunkTable = MovieSampleTableHaveSampleToChunkTable(a2);
        if (HaveSampleToChunkTable)
        {
          v13 = MovieSampleTableNumSampleToChunkEntries(a2);
          if (v13 <= 0)
          {
            OUTLINED_FUNCTION_15_37(v13, v14, v15, "'stsc' atom has zero entries");
            fig_log_get_emitter();
            OUTLINED_FUNCTION_20_0();
          }

          else
          {
            HaveChunkOffsetTable = MovieSampleTableHaveChunkOffsetTable(a2);
            if (HaveChunkOffsetTable)
            {
              v19 = MovieSampleTableNumChunkTableEntries(a2);
              if (v19 > 0)
              {
                SampleCountAtIndex = MovieSampleTableHaveTimeToSampleTable(a2);
                if (SampleCountAtIndex && (SampleCountAtIndex = MovieSampleTableNumTimeToSampleEntries(a2), SampleCountAtIndex >= 1))
                {
                  v25 = SampleCountAtIndex;
                  v26 = 0;
                  for (j = 0; j != v25; ++j)
                  {
                    SampleCountAtIndex = MovieSampleTableGetSampleCountAtIndex(a2, j);
                    v26 += SampleCountAtIndex;
                  }
                }

                else
                {
                  v26 = 0;
                }

                v28 = *(a2 + 288);
                if (v26 == v28)
                {
LABEL_17:
                  v29 = 0;
                  v30 = 1;
                  goto LABEL_18;
                }

                if (v26 > v28)
                {
                  OUTLINED_FUNCTION_15_37(SampleCountAtIndex, v23, v24, "Inconsistent sample count - 'stsz' is under-reporting");
LABEL_91:
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_20_0();
                  if (FigSignalErrorAtGM())
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_17;
                }

                SampleToChunkSamplesPerChunk = MovieSampleTableHaveSampleToChunkTable(a2);
                if (!SampleToChunkSamplesPerChunk)
                {
                  goto LABEL_86;
                }

                SampleToChunkSamplesPerChunk = MovieSampleTableNumSampleToChunkEntries(a2);
                v67 = SampleToChunkSamplesPerChunk - 1;
                if (SampleToChunkSamplesPerChunk < 1)
                {
                  goto LABEL_86;
                }

                if (SampleToChunkSamplesPerChunk != 1)
                {
                  v69 = SampleToChunkSamplesPerChunk;
                  v70 = 0;
                  v71 = 1;
                  while (1)
                  {
                    SampleToChunkFirstChunk = MovieSampleTableGetSampleToChunkFirstChunk(a2, v71);
                    SampleToChunkSamplesPerChunk = MovieSampleTableGetSampleToChunkFirstChunk(a2, v71 - 1);
                    v73 = 0;
                    if (SampleToChunkFirstChunk < 0)
                    {
                      goto LABEL_87;
                    }

                    if ((SampleToChunkSamplesPerChunk & 0x80000000) != 0)
                    {
                      goto LABEL_87;
                    }

                    v74 = __OFSUB__(SampleToChunkFirstChunk, SampleToChunkSamplesPerChunk);
                    v75 = SampleToChunkFirstChunk - SampleToChunkSamplesPerChunk;
                    if (v75 < 0 != v74)
                    {
                      goto LABEL_87;
                    }

                    v70 += MovieSampleTableGetSampleToChunkSamplesPerChunk(a2, v71++ - 1) * v75;
                    if (v69 == v71)
                    {
                      goto LABEL_81;
                    }
                  }
                }

                v67 = 0;
                v70 = 0;
LABEL_81:
                v76 = MovieSampleTableNumChunkTableEntries(a2);
                SampleToChunkSamplesPerChunk = MovieSampleTableGetSampleToChunkFirstChunk(a2, v67);
                v73 = 0;
                if (v76 < 0)
                {
                  goto LABEL_87;
                }

                if ((SampleToChunkSamplesPerChunk & 0x80000000) != 0)
                {
                  goto LABEL_87;
                }

                v74 = __OFSUB__(v76, SampleToChunkSamplesPerChunk);
                v77 = v76 - SampleToChunkSamplesPerChunk;
                if (v77 < 0 != v74)
                {
                  goto LABEL_87;
                }

                if (v77 >= 0)
                {
                  SampleToChunkSamplesPerChunk = MovieSampleTableGetSampleToChunkSamplesPerChunk(a2, v67);
                  v73 = SampleToChunkSamplesPerChunk + SampleToChunkSamplesPerChunk * v77 + v70;
                }

                else
                {
LABEL_86:
                  v73 = 0;
                }

LABEL_87:
                if (v73 == v26)
                {
                  OUTLINED_FUNCTION_15_37(SampleToChunkSamplesPerChunk, v65, v66, "Overriding 'stsz' sample count with calculated value from 'stts'/'stco'");
                  OUTLINED_FUNCTION_627();
                  if (MovieTrackReviseParsedSampleCount())
                  {
                    goto LABEL_58;
                  }

                  v30 = 0;
                  v29 = 1;
LABEL_18:
                  v31 = *(a2 + 288);
                  if (MovieSampleTableHaveSampleDependencyTable(a2))
                  {
                    if (!*(a2 + 736))
                    {
                      v32 = MovieSampleTableNumSampleDependencyEntries(a2);
                      if (v32 < v31)
                      {
                        OUTLINED_FUNCTION_15_37(v32, v33, v34, "Number of sample dependency entries too small vs. track sample count");
                      }
                    }

                    if (MovieSampleTableNumSampleDependencyEntries(a2) > v31)
                    {
                      v35 = OUTLINED_FUNCTION_627();
                      if (MovieTrackReviseSampleDependencyTable(v35, v36))
                      {
                        goto LABEL_58;
                      }
                    }
                  }

                  v37 = *(a2 + 288);
                  if (MovieSampleTableHaveSyncSampleTable(a2))
                  {
                    if (v30)
                    {
                      v38 = MovieSampleTableNumSyncSampleEntries(a2);
                      if (v38 >= 1)
                      {
                        v39 = v38;
                        v40 = 0;
                        while (1)
                        {
                          SyncSampleNumber = MovieSampleTableGetSyncSampleNumber(a2, v40);
                          if (SyncSampleNumber < 1 || SyncSampleNumber > v37)
                          {
                            break;
                          }

                          if (v39 == ++v40)
                          {
                            goto LABEL_36;
                          }
                        }

                        OUTLINED_FUNCTION_15_37(SyncSampleNumber, v42, v43, "Sync sample table has an entry which is out of the range");
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_20_0();
                        if (FigSignalErrorAtGM())
                        {
                          goto LABEL_58;
                        }
                      }
                    }

                    else
                    {
                      MovieTrackReviseSyncSampleTable(a2);
                      if (v45)
                      {
                        goto LABEL_58;
                      }
                    }
                  }

LABEL_36:
                  if (MovieSampleTableHavePartialSyncSampleTable(a2))
                  {
                    v46 = v29 ^ 1;
                  }

                  else
                  {
                    v46 = 1;
                  }

                  if ((v46 & 1) != 0 || (MovieTrackRevisePartialSyncSampleTable(a2), !v47))
                  {
                    v48 = *(a2 + 288);
                    v55 = MovieSampleTableHaveCompositionOffsetTable(a2) ? v29 ^ 1 : 1;
                    if ((v55 & 1) != 0 || !MovieTrackReviseCompositionOffsetTable(a2, v48, v49, v50, v51, v52, v53, v54, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, vars0, vars8))
                    {
                      goto LABEL_46;
                    }
                  }

LABEL_58:
                  OUTLINED_FUNCTION_651();
                  return;
                }

                OUTLINED_FUNCTION_15_37(SampleToChunkSamplesPerChunk, v65, v66, "Inconsistent sample count - 'stts' / 'stco' / 'stsz'");
                goto LABEL_91;
              }

              OUTLINED_FUNCTION_15_37(v19, v20, v21, "Chunk offset atom has zero entries");
              fig_log_get_emitter();
              OUTLINED_FUNCTION_20_0();
            }

            else
            {
              OUTLINED_FUNCTION_15_37(HaveChunkOffsetTable, v17, v18, "'stco'/'co64' atom missing");
              fig_log_get_emitter();
              OUTLINED_FUNCTION_20_0();
            }
          }
        }

        else
        {
          OUTLINED_FUNCTION_15_37(HaveSampleToChunkTable, v11, v12, "'stsc' atom missing");
          fig_log_get_emitter();
          OUTLINED_FUNCTION_20_0();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_15_37(HaveTimeToSampleTable, v5, v6, "'stts' atom missing");
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_37(a1, a2, a3, "'stsd' atom missing");
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_651();

  FigSignalErrorAtGM();
}

uint64_t ConvertSampleDescriptionsToFormatDescriptions(uint64_t a1, CFArrayRef *cf)
{
  v4 = CFGetAllocator(cf);
  v5 = cf[5];
  if (v5)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  if (!cf[7])
  {
    ConvertSampleDescriptionsToFormatDescriptions_cold_6(a1, cf, &values);
    goto LABEL_86;
  }

  v7 = 1986618469;
  v8 = *(cf + 6);
  if (v8 <= 1986618468)
  {
    if (v8 == 1885954932 || v8 == 1635088502)
    {
      goto LABEL_12;
    }

    if (!v8)
    {
      ConvertSampleDescriptionsToFormatDescriptions_cold_1(a1, cf, &values);
      goto LABEL_86;
    }

    goto LABEL_11;
  }

  if (v8 != 1986618469)
  {
LABEL_11:
    v7 = *(cf + 6);
  }

LABEL_12:
  if (Count < 1)
  {
LABEL_81:
    v32 = cf[5];
    if (!v32)
    {
      return 0;
    }

    CFRelease(v32);
    v25 = 0;
    cf[5] = 0;
    return v25;
  }

  v9 = 0;
  alloc = *MEMORY[0x1E695E480];
  key = *MEMORY[0x1E6963378];
  v37 = v4;
  v38 = a1;
  v36 = Count;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf[5], v9);
    formatDescriptionOut = 0;
    if (v7 <= 1935893869)
    {
      if (v7 <= 1835365472)
      {
        if (v7 == 1668047728)
        {
          v23 = CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionBlockBuffer(v4, ValueAtIndex, 0, &formatDescriptionOut);
        }

        else
        {
          if (v7 != 1751216244)
          {
            goto LABEL_44;
          }

          v23 = CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionBlockBuffer();
        }
      }

      else
      {
        if (v7 != 1835365473)
        {
          if (v7 == 1885564004)
          {
            v23 = CMPointCloudFormatDescriptionCreateFromBigEndianPointCloudDescriptionBlockBuffer();
            goto LABEL_49;
          }

          if (v7 == 1935832172)
          {
            v11 = v4;
            v12 = ValueAtIndex;
            v13 = 1935832172;
LABEL_41:
            v23 = CMTextFormatDescriptionCreateFromBigEndianTextDescriptionBlockBuffer(v11, v12, 0, v13, &formatDescriptionOut);
            goto LABEL_49;
          }

LABEL_44:
          LODWORD(destination) = 0;
          values = 0;
          v24 = 0;
          if (!FigCreateCFDataWithBlockBufferNoCopy())
          {
            v24 = CFDictionaryCreate(v4, MEMORY[0x1E69600D0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (values)
            {
              CFRelease(values);
            }
          }

          CMBlockBufferCopyDataBytes(ValueAtIndex, 4uLL, 4uLL, &destination);
          v25 = CMFormatDescriptionCreate(v4, v7, bswap32(destination), v24, &formatDescriptionOut);
          if (v24)
          {
            CFRelease(v24);
          }

LABEL_50:
          Mutable = 0;
          if (v25)
          {
            goto LABEL_87;
          }

          goto LABEL_51;
        }

        v23 = CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionBlockBuffer(v4, ValueAtIndex, 0, &formatDescriptionOut);
      }

LABEL_49:
      v25 = v23;
      goto LABEL_50;
    }

    if (v7 <= 1952807027)
    {
      if (v7 == 1935893870)
      {
        v23 = CMSceneFormatDescriptionCreateFromBigEndianSceneDescriptionBlockBuffer();
      }

      else
      {
        if (v7 != 1936684398)
        {
          goto LABEL_44;
        }

        v23 = FigAudioFormatDescriptionCreateFromBigEndianSoundDescriptionBlockBufferWithReporter();
      }

      goto LABEL_49;
    }

    if (v7 == 1952807028)
    {
      v11 = v4;
      v12 = ValueAtIndex;
      v13 = 1952807028;
      goto LABEL_41;
    }

    if (v7 == 1953325924)
    {
      v23 = CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionBlockBuffer(v4, ValueAtIndex, 0, &formatDescriptionOut);
      goto LABEL_49;
    }

    if (v7 != 1986618469)
    {
      goto LABEL_44;
    }

    if (*(a1 + 86))
    {
      v14 = CFUUIDGetConstantUUIDWithBytes(alloc, 0xFFu, 0xCCu, 0x82u, 0x63u, 0xF8u, 0x55u, 0x4Au, 0x93u, 0x88u, 0x14u, 0x58u, 0x7Au, 2u, 0x52u, 0x1Fu, 0xDDu);
      v15 = cf[112];
      if (v15 < 1)
      {
        Mutable = 0;
      }

      else
      {
        v16 = v14;
        v17 = 0;
        while (1)
        {
          v18 = cf[114];
          v19 = CFUUIDCreateFromUUIDBytes(alloc, *(v18 + v17));
          if (v19)
          {
            v20 = v19;
            v21 = CFEqual(v19, v16);
            CFRelease(v20);
            if (v21)
            {
              break;
            }
          }

          v17 += 40;
          if (!--v15)
          {
            Mutable = 0;
            a1 = v38;
            Count = v36;
            v4 = v37;
            goto LABEL_76;
          }
        }

        cfa = 0;
        a1 = v38;
        v27 = *(v38 + 56);
        values = 0;
        destination = 0;
        v28 = *(v18 + v17 + 16);
        if (v28)
        {
          v29 = *(v18 + v17 + 24);
          Count = v36;
          v4 = v37;
          if (v29)
          {
            v34 = v27;
            v30 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v30 && !v30(v34, v29, v28, &values, &destination))
            {
              if (values)
              {
                FigMovieCreateDictionaryFromAuxiliaryXMLData(values, &cfa);
              }

              else
              {
                ConvertSampleDescriptionsToFormatDescriptions_cold_2();
              }
            }
          }

          else
          {
            ConvertSampleDescriptionsToFormatDescriptions_cold_3();
          }
        }

        else
        {
          ConvertSampleDescriptionsToFormatDescriptions_cold_4();
          Count = v36;
          v4 = v37;
        }

        if (values)
        {
          CFRelease(values);
        }

        if (cfa)
        {
          v31 = CFGetTypeID(cfa);
          if (v31 == CFDictionaryGetTypeID())
          {
            Mutable = CFDictionaryCreateMutable(alloc, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CFDictionarySetValue(Mutable, key, cfa);
          }

          else
          {
            Mutable = 0;
          }

          a1 = v38;
          if (cfa)
          {
            CFRelease(cfa);
          }
        }

        else
        {
          Mutable = 0;
        }
      }
    }

    else
    {
      Mutable = 0;
    }

LABEL_76:
    CFStringGetSystemEncoding();
    v25 = FigVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBufferWithOptionsAndReporter();
    if (v25)
    {
      goto LABEL_87;
    }

LABEL_51:
    v26 = cf[6];
    if (!v26)
    {
      v26 = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
      cf[6] = v26;
      if (!v26)
      {
        break;
      }
    }

    CFArrayAppendValue(v26, formatDescriptionOut);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    if (++v9 == Count)
    {
      goto LABEL_81;
    }
  }

  ConvertSampleDescriptionsToFormatDescriptions_cold_5(&values);
LABEL_86:
  v25 = values;
LABEL_87:
  MovieInformationReportParsingFailureMessage(a1, cf, "Error when generating format descriptions", 7);
  ReleaseSampleDescriptionInfoArray(cf);
  return v25;
}

uint64_t RegisterFigTrackReaderBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t GetMovieUserDataAtom(_OWORD *a1, uint64_t a2)
{
  v3 = a1[5];
  v7[11] = a1[4];
  v7[12] = v3;
  v7[13] = a1[6];
  v4 = a1[1];
  v7[7] = *a1;
  v7[8] = v4;
  v5 = a1[3];
  v7[9] = a1[2];
  v7[10] = v5;
  result = FigAtomStreamGetCurrentAtomGlobalOffset();
  if (!result)
  {
    memset(v7, 0, 112);
    result = FigAtomStreamAdvanceToNextAtom();
    if (result == -12890 || !result && (result = FigAtomStreamGetCurrentAtomTypeAndDataLength(), !result))
    {
      LODWORD(result) = FigAtomStreamInitWithParent();
      if (!result)
      {
        LODWORD(result) = figMDRW_ParseChildAtoms(v7, 1, &GetMovieUserDataAtom_atomDispatch, a2);
      }

      if (result == -12893)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t RegisterFigCRABS()
{
  CMByteStreamGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FPSupport_BuildAlternateTrackGroups(uint64_t a1, __CFDictionary **a2)
{
  v45 = 0;
  theArray = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v22 = FigSignalErrorAtGM();
LABEL_62:
    v28 = 0;
    goto LABEL_63;
  }

  FigBaseObject = FigFormatReaderGetFigBaseObject(a1);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v7 || (v7(FigBaseObject, @"AlternateGroupArray", v4, &theArray), !theArray) || (Count = CFArrayGetCount(theArray), Count < 1))
  {
LABEL_56:
    LODWORD(cf) = 0;
    v35 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v35 && !v35(a1, 1, 1935832172, 0, 0))
    {
      goto LABEL_60;
    }

    v36 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v36 || v36(a1, 0, 1935832172, &v45, &cf))
    {
      goto LABEL_60;
    }

    v28 = CFArrayCreateMutable(v4, 1, MEMORY[0x1E695E9C0]);
    if (!v28)
    {
      goto LABEL_77;
    }

    v22 = fpSupport_addTrackInfoToArray(v45, cf, 1935832172, v28);
    if (v22)
    {
      goto LABEL_63;
    }

    CFDictionarySetValue(Mutable, @"Subtitle", v28);
    CFRelease(v28);
    if (v45)
    {
      CFRelease(v45);
      v45 = 0;
    }

LABEL_60:
    v28 = 0;
    v22 = 0;
    *a2 = Mutable;
    Mutable = 0;
    goto LABEL_63;
  }

  v39 = 0;
  v40 = a2;
  v41 = 0;
  v8 = 0;
  while (2)
  {
    while (2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
      if (!ValueAtIndex)
      {
        goto LABEL_54;
      }

      v10 = ValueAtIndex;
      TypeID = CFArrayGetTypeID();
      if (TypeID != CFGetTypeID(v10))
      {
        goto LABEL_54;
      }

      v12 = CFArrayGetCount(v10);
      if (v12 < 1)
      {
        goto LABEL_54;
      }

      v13 = v12;
      v43 = v8;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = CFArrayGetValueAtIndex(v10, v14);
        if (!v17)
        {
          goto LABEL_26;
        }

        v18 = v17;
        v19 = CFNumberGetTypeID();
        if (v19 != CFGetTypeID(v18))
        {
          goto LABEL_26;
        }

        valuePtr = 0;
        CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr + 4);
        v20 = HIDWORD(valuePtr);
        cf = 0;
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (!v21)
        {
          v22 = 4294954514;
          goto LABEL_62;
        }

        v22 = v21(a1, v20, &cf, &valuePtr);
        v23 = cf;
        if (v22)
        {
          v24 = 1;
          if (!cf)
          {
            goto LABEL_16;
          }

LABEL_15:
          CFRelease(v23);
          goto LABEL_16;
        }

        isTrackEnabled = fpSupport_isTrackEnabled(cf);
        v23 = cf;
        v24 = isTrackEnabled == 0;
        if (cf)
        {
          goto LABEL_15;
        }

LABEL_16:
        if (v22)
        {
          goto LABEL_62;
        }

        if (v16)
        {
          if (v16 != valuePtr)
          {
            goto LABEL_53;
          }

          if (v24)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v16 = valuePtr;
          if (v24)
          {
            goto LABEL_26;
          }
        }

        if (v15 > 0)
        {
LABEL_53:
          a2 = v40;
          v8 = v43;
          goto LABEL_54;
        }

        ++v15;
LABEL_26:
        ++v14;
      }

      while (v13 != v14);
      v8 = v43;
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      if (v16 == 1935832172)
      {
        if (!v41)
        {
          v41 = 1;
          v26 = &kFigPlaybackItemAlternateType_Subtitle;
          goto LABEL_42;
        }

        v8 = v43 + 1;
        v41 = 1;
        a2 = v40;
        if (v43 + 1 == Count)
        {
          goto LABEL_60;
        }

        continue;
      }

      break;
    }

    if (v16 == 1835365473)
    {
      if (!HIDWORD(v39))
      {
        HIDWORD(v39) = 1;
        v26 = &kFigPlaybackItemAlternateType_Metadata;
        goto LABEL_42;
      }

      HIDWORD(v39) = 1;
LABEL_38:
      a2 = v40;
LABEL_54:
      if (++v8 != Count)
      {
        continue;
      }

      if (v41)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }

    break;
  }

  if (v16 != 1936684398)
  {
    goto LABEL_38;
  }

  if (v39)
  {
    LODWORD(v39) = 1;
    goto LABEL_38;
  }

  LODWORD(v39) = 1;
  v26 = &kFigPlaybackItemAlternateType_Audio;
LABEL_42:
  v27 = *v26;
  v28 = CFArrayCreateMutable(v4, v13, MEMORY[0x1E695E9C0]);
  if (v28)
  {
    v29 = 0;
    while (1)
    {
      v30 = CFArrayGetValueAtIndex(v10, v29);
      if (v30)
      {
        v31 = v30;
        v38 = CFNumberGetTypeID();
        if (v38 == CFGetTypeID(v31))
        {
          LODWORD(cf) = 0;
          CFNumberGetValue(v31, kCFNumberSInt32Type, &cf);
          v32 = cf;
          v33 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (!v33)
          {
            v22 = 4294954514;
            goto LABEL_63;
          }

          v34 = v33(a1, v32, &v45, 0);
          if (v34)
          {
            goto LABEL_78;
          }

          v34 = fpSupport_addTrackInfoToArray(v45, cf, v16, v28);
          if (v34)
          {
            goto LABEL_78;
          }

          if (v45)
          {
            CFRelease(v45);
            v45 = 0;
          }
        }
      }

      if (v13 == ++v29)
      {
        CFDictionarySetValue(Mutable, v27, v28);
        CFRelease(v28);
        goto LABEL_53;
      }
    }
  }

LABEL_77:
  v34 = FigSignalErrorAtGM();
LABEL_78:
  v22 = v34;
LABEL_63:
  if (v45)
  {
    CFRelease(v45);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v22;
}

uint64_t FPSupport_GetDefaultTrackIDForMediaType(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v23 = 0;
  cf = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v7)
  {
    v13 = 0;
    goto LABEL_29;
  }

  v8 = 0;
  while (1)
  {
    if (v7(a1, v8, a2, &cf, &v20))
    {
LABEL_27:
      v13 = v23;
      goto LABEL_29;
    }

    if (!fpSupport_isTrackEnabled(cf))
    {
      goto LABEL_24;
    }

    if (a2 != 1936684398)
    {
      break;
    }

    v9 = cf;
    desc = 0;
    fpSupport_copyFormatDescription(cf, &desc);
    v10 = desc;
    if (desc)
    {
      if (!CMAudioFormatDescriptionGetRichestDecodableFormat(desc))
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_24:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    ++v8;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (!v7)
    {
      goto LABEL_27;
    }
  }

  if (a2 == 1952807028)
  {
    v9 = cf;
    desc = 0;
    fpSupport_copyFormatDescription(cf, &desc);
    v10 = desc;
    if (desc)
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
      if (MediaSubType <= 1937142899)
      {
        if (MediaSubType == 1634301044)
        {
          goto LABEL_20;
        }

        v12 = 1937010800;
      }

      else
      {
        if (MediaSubType == 1937142900 || MediaSubType == 2021028980)
        {
          goto LABEL_20;
        }

        v12 = 2004251764;
      }

      if (MediaSubType != v12)
      {
LABEL_23:
        CFRelease(v10);
        goto LABEL_24;
      }

LABEL_20:
      if (!v23)
      {
        v23 = v9;
        if (v9)
        {
          CFRetain(v9);
        }
      }

      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (a2 == 1986618469)
  {
    fpSupport_pickPreferredVideoTrack(cf, &v23, &v22, &v21, a4);
    goto LABEL_24;
  }

  v18 = v23;
  v13 = cf;
  v23 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_29:
  if (a2 != 1986618469 || v13)
  {
LABEL_40:
    if (v13)
    {
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v16)
      {
        v16(v13, a3, 0);
      }

      CFRelease(v13);
    }
  }

  else
  {
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v14)
    {
      v15 = 0;
      do
      {
        if (v14(a1, v15, 1635088502, &cf, &v20))
        {
          break;
        }

        if (fpSupport_isTrackEnabled(cf))
        {
          fpSupport_pickPreferredVideoTrack(cf, &v23, &v22, &v21, a4);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        ++v15;
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      }

      while (v14);
      v13 = v23;
      goto LABEL_40;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t fpSupport_isTrackEnabled(uint64_t a1)
{
  cf1 = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject(a1);
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    return 1;
  }

  v2(FigBaseObject, @"TrackEnabled", *MEMORY[0x1E695E480], &cf1);
  if (!cf1)
  {
    return 1;
  }

  v3 = CFEqual(cf1, *MEMORY[0x1E695E4D0]);
  CFRelease(cf1);
  return v3;
}

uint64_t FPSupport_ChooseTrackIDsUsingPreferredLanguageLists(const void *a1, const __CFDictionary *a2, const void *a3, _DWORD *a4)
{
  if (!a3)
  {
    FPSupport_ChooseTrackIDsUsingPreferredLanguageLists_cold_2(&v35);
    return v35;
  }

  if (!a4)
  {
    FPSupport_ChooseTrackIDsUsingPreferredLanguageLists_cold_1(&v34);
    return v34;
  }

  if (!a1)
  {
    return 0;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a3);
  v10 = Value;
  if (a2)
  {
    v11 = CFDictionaryGetValue(a2, a3);
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (!Value)
    {
      return 0;
    }
  }

  v12 = CFArrayGetTypeID();
  v13 = CFGetTypeID(v10);
  result = 0;
  if (v11 && v12 == v13)
  {
    v15 = CFArrayGetTypeID();
    if (v15 != CFGetTypeID(v11))
    {
      return 0;
    }

    Count = CFArrayGetCount(v11);
    if (Count < 1)
    {
      return 0;
    }

    v16 = 0;
    cf2 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v16);
      if (ValueAtIndex)
      {
        v18 = ValueAtIndex;
        v19 = CFStringGetTypeID();
        if (v19 == CFGetTypeID(v18))
        {
          v20 = CFArrayGetCount(v10);
          if (v20 >= 1)
          {
            break;
          }
        }
      }

LABEL_27:
      result = 0;
      if (++v16 == Count)
      {
        return result;
      }
    }

    v21 = v20;
    v22 = 0;
    while (1)
    {
      v23 = CFArrayGetValueAtIndex(v10, v22);
      if (v23)
      {
        v24 = v23;
        v25 = CFDictionaryGetTypeID();
        if (v25 == CFGetTypeID(v24))
        {
          v26 = CFDictionaryGetValue(v24, @"ExcludeFromAutoSelection");
          if (!v26 || !CFEqual(v26, cf2))
          {
            v27 = CFDictionaryGetValue(v24, @"Language");
            if (v27)
            {
              if (CFEqual(v27, v18))
              {
                v28 = CFDictionaryGetValue(v24, @"TrackID");
                if (v28)
                {
                  v29 = v28;
                  v30 = CFNumberGetTypeID();
                  if (v30 == CFGetTypeID(v29))
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      if (v21 == ++v22)
      {
        goto LABEL_27;
      }
    }

    valuePtr = 0;
    CFNumberGetValue(v29, kCFNumberSInt32Type, &valuePtr);
    result = 0;
    *a4 = valuePtr;
  }

  return result;
}

uint64_t fcSupport_GetListOfChapterTrackIDsForMediaType(int a1, int a2, uint64_t a3, uint64_t *a4, int **a5, unsigned int *a6)
{
  value = 0;
  theDict = 0;
  FigBaseObject = FigFormatReaderGetFigBaseObject(a3);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v13)
  {
    v17 = 0;
    v18 = 0;
    v14 = 4294954514;
    goto LABEL_11;
  }

  v14 = v13(FigBaseObject, @"TrackReferenceDictionary", *MEMORY[0x1E695E480], &theDict);
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = theDict == 0;
  }

  if (v15)
  {
LABEL_9:
    v17 = 0;
    v18 = 0;
LABEL_11:
    free(v18);
    v19 = 0;
    v18 = 0;
    goto LABEL_12;
  }

  if (!CFDictionaryGetValueIfPresent(theDict, @"chap", &value) || (Count = CFArrayGetCount(value), Count < 2))
  {
    v14 = 0;
    goto LABEL_9;
  }

  v21 = Count;
  v32 = a2;
  v33 = a1;
  v18 = malloc_type_malloc((2 * Count) & 0xFFFFFFFFFFFFFFFCLL, 0x100004052888210uLL);
  if (!v18)
  {
    fcSupport_GetListOfChapterTrackIDsForMediaType_cold_1(&v40);
    v17 = 0;
    v14 = v40;
    goto LABEL_11;
  }

  v17 = 0;
  v19 = 0;
  for (i = 1; i < v21; i += 2)
  {
    v40 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(value, i);
    if (ValueAtIndex)
    {
      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
      v24 = valuePtr;
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v25)
      {
        if (!v25(a3, v24, 0, &v40) && v40 == v33)
        {
          if (v19 < 1)
          {
LABEL_39:
            v36 = 0;
            fcSupport_getTrackMediaTypeAndEnabled(a3, valuePtr, &v36);
            if (v36)
            {
              v28 = v32 == 1;
            }

            else
            {
              v28 = 0;
            }

            v29 = v28;
            if (v32 == 2 || v29)
            {
              v30 = v19 + 1;
              v18[v19] = valuePtr;
              if (a6 && !v17)
              {
                v31 = CFArrayGetValueAtIndex(value, i - 1);
                if (v31)
                {
                  v35 = 0;
                  v34 = 0;
                  CFNumberGetValue(v31, kCFNumberSInt32Type, &v34);
                  fcSupport_getTrackMediaTypeAndEnabled(a3, v34, &v35);
                  if (v35)
                  {
                    v17 = valuePtr;
                  }

                  else
                  {
                    v17 = 0;
                  }
                }

                else
                {
                  v17 = 0;
                }
              }
            }

            else
            {
              v30 = v19;
            }

            v19 = v30;
          }

          else
          {
            v27 = 0;
            while (valuePtr != v18[v27])
            {
              if (v19 == ++v27)
              {
                goto LABEL_39;
              }
            }
          }
        }
      }
    }
  }

  v14 = 0;
  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (a6)
  {
    if (v19 >= 1 && !v17 && v18)
    {
      v17 = *v18;
    }

    *a6 = v17;
  }

  if (a4)
  {
    *a4 = v19;
  }

  if (a5)
  {
    *a5 = v18;
  }

  else
  {
    free(v18);
  }

  return v14;
}

uint64_t itemfig_assureBasicsReadyForInspection(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ready = itemfig_assureBasicsReadyUsingAsset(a1);
  if (!ready && *(DerivedStorage + 992))
  {
    itemfig_lookForLyrics(a1);
    *(DerivedStorage + 992) = 0;
  }

  return ready;
}

void itemfig_lookForLyrics(uint64_t a1)
{
  v2 = CFArrayCreate(*MEMORY[0x1E695E480], &kFigPlaybackItemProperty_Lyrics, 1, MEMORY[0x1E695E9C0]);
  if (v2)
  {
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v4)
    {
      v4(a1, v3, 0);
    }

    CFRelease(v3);
  }
}

uint64_t FigPlaybackItemMakeReadyForInspection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t RegisterFigSampleCursorType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

void ScanForUnreferencedDataReadyEntries()
{
  if (gFigReadCache && (*(gFigReadCache + 176) || *(gFigReadCache + 208)))
  {
    for (i = *(gFigReadCache + 120); i; i = *(i + 136))
    {
      FigSimpleMutexLock();
      for (j = *(i + 104); j; j = *(j + 64))
      {
        if (*j == 3 && !*(j + 72) && CFGetRetainCount(*(j + 48)) == 1)
        {
          if (*(j + 16))
          {
            v2 = 3;
            v3 = 0;
          }

          else
          {
            v2 = 1;
            v3 = 1;
          }

          MoveToVGroup(j, v2, v3);
          if (*(j + 96))
          {
            *(j + 96) = 0;
            FigAtomicDecrement32();
          }
        }
      }

      FigSimpleMutexUnlock();
    }
  }
}

uint64_t resetTrackCursor(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 80) = 1;
  if (*(v2 + 288))
  {
    *(a1 + 88) = 0;
    v3 = *(*a1 + 24);
    if (v3)
    {
      LOBYTE(v3) = *(v2 + 408) == 1;
    }

    *(a1 + 120) = v3;
    *(a1 + 96) = 0;
    v13 = 0;
    CMBlockBufferCopyDataBytes(*(v2 + 416), 0, 8uLL, &v13);
    *(a1 + 112) = bswap32(v13);
    *(a1 + 116) = 1;
    *(a1 + 128) = xmmword_196E78880;
    if (*(v2 + 432) < 2)
    {
      v6 = (*(v2 + 624))(v2);
    }

    else
    {
      v14 = 0;
      v13 = 0;
      CMBlockBufferCopyDataBytes(*(v2 + 440), 0, 0xCuLL, &v13);
      v4 = bswap32(v13);
      v14 = 0;
      v13 = 0;
      CMBlockBufferCopyDataBytes(*(v2 + 440), 0xCuLL, 0xCuLL, &v13);
      if (v4 <= 0)
      {
        resetTrackCursor_cold_4(&v13);
        return v13;
      }

      v5 = bswap32(v13);
      if (v5 <= 0)
      {
        resetTrackCursor_cold_3(&v13);
        return v13;
      }

      v6 = v5 - v4;
      if (v5 < v4)
      {
        resetTrackCursor_cold_2(&v13);
        return v13;
      }
    }

    *(a1 + 144) = v6;
    v14 = 0;
    v13 = 0;
    CMBlockBufferCopyDataBytes(*(v2 + 440), 0, 0xCuLL, &v13);
    v7 = bswap32(HIDWORD(v13));
    *(a1 + 148) = v7;
    v8 = *(v2 + 244);
    if (v8)
    {
      *(a1 + 112) /= v8;
      v9 = v7 / v8;
      *(a1 + 148) = v9;
      *(a1 + 104) = v8;
    }

    else
    {
      v13 = 0;
      CMBlockBufferCopyDataBytes(*(v2 + 416), 0, 8uLL, &v13);
      *(a1 + 104) = bswap32(HIDWORD(v13));
      v9 = *(a1 + 148);
    }

    if (v9 < 1 || v9 > *(v2 + 288))
    {
      resetTrackCursor_cold_1(&v13);
      return v13;
    }

    *(a1 + 152) = 0;
  }

  v10 = *(v2 + 728);
  if (v10 && (v11 = *(v10 + 56)) != 0)
  {
    *(a1 + 192) = v10;
    *(a1 + 200) = v11;
    *(a1 + 208) = *(v11 + 72);
  }

  else
  {
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
  }

  result = 0;
  *(a1 + 184) = *(a1 + 80);
  return result;
}

uint64_t FigMetadataReaderCreateForiTunes(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a2 || !a4 || (v5 = a3, a3 < 0))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v6 = a2;
  FigMetadataReaderGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigAtomStreamInitWithByteStream())
  {
    goto LABEL_36;
  }

  *&v29[0] = 0;
  number[0] = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v10(CMBaseObject, *MEMORY[0x1E695FF78], 0, number);
  }

  v11 = CMByteStreamGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, *MEMORY[0x1E695FF70], 0, v29);
  }

  v13 = *&v29[0];
  if (!number[0] || !*&v29[0])
  {
    goto LABEL_32;
  }

  if (CFNumberCompare(number[0], *&v29[0], 0) == kCFCompareEqualTo)
  {
    v13 = *&v29[0];
LABEL_32:
    if (v13)
    {
      CFRelease(v13);
    }

    if (number[0])
    {
      CFRelease(number[0]);
    }

    goto LABEL_36;
  }

  v30 = 0;
  if (FigAtomStreamGetCurrentAtomTypeAndDataLength())
  {
    v14 = 0;
  }

  else
  {
    v14 = v30 <= 0x2000;
  }

  v15 = !v14;
  if (*&v29[0])
  {
    CFRelease(*&v29[0]);
  }

  if (number[0])
  {
    CFRelease(number[0]);
  }

  if ((v15 & 1) == 0 && !FigAtomStreamReadCurrentAtomAndCreateBBuf())
  {
    CFGetAllocator(0);
    if (!CMByteStreamCreateForBlockBuffer())
    {
      v6 = 0;
      v5 = 0;
    }
  }

LABEL_36:
  *DerivedStorage = CFRetain(v6);
  DerivedStorage[1] = v5;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *number = 0u;
  v17 = CMBaseObjectGetDerivedStorage();
  if (*(v17 + 16))
  {
    return 4294954687;
  }

  if (*(v17 + 24))
  {
    return 4294954687;
  }

  v31 = 0;
  if (FigAtomStreamInitWithByteStream() || FigAtomStreamInitWithParent())
  {
    return 4294954687;
  }

  v19 = 0;
  do
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      CurrentAtomGlobalOffset = CurrentAtomTypeAndDataLength;
      goto LABEL_54;
    }

    if (v31 == 1801812339 || v31 == 1768715124)
    {
      CurrentAtomGlobalOffset = FigAtomStreamGetCurrentAtomGlobalOffset();
    }

    else
    {
      if (v31 != 1751411826)
      {
        goto LABEL_51;
      }

      CurrentAtomGlobalOffset = FigMetadataValidateHandlerType(number, v30);
      if (!CurrentAtomGlobalOffset)
      {
        v19 = 1;
      }
    }

    if (CurrentAtomGlobalOffset)
    {
      goto LABEL_54;
    }

LABEL_51:
    Atom = FigAtomStreamAdvanceToNextAtom();
  }

  while (!Atom);
  CurrentAtomGlobalOffset = Atom;
  if (Atom == -12890)
  {
    CurrentAtomGlobalOffset = 0;
  }

LABEL_54:
  if (!v19)
  {
    return 4294954687;
  }

  if (!CurrentAtomGlobalOffset)
  {
    *a4 = 0;
  }

  return CurrentAtomGlobalOffset;
}

uint64_t itemasync_GetDimensions(const void *a1, _DWORD *a2, _DWORD *a3)
{
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && (*a2 = 0, a3) && (*a3 = 0, !*DerivedStorage))
  {
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v8)
    {
      v9 = v8;
      if (*CMBaseObjectGetDerivedStorage())
      {
        itemasync_GetDimensions_cold_1(&v14);
        v11 = 0;
        v12 = v14;
      }

      else
      {
        v10 = playerasync_createCommand(v9, 28, a1, &v13);
        v11 = v13;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          *(v13 + 32) = a2;
          *(v11 + 40) = a3;
          playerasync_runSynchronousCommand(v9, v11);
          v12 = *(v11 + 28);
        }
      }

      fpa_releaseCommand(v11);
      CFRelease(v9);
    }

    else
    {
      itemasync_GetDimensions_cold_2();
      return v14;
    }

    return v12;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t itemcentral_GetDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    itemcentral_GetDimensions(&v10);
    return v10;
  }

  else
  {
    v6 = DerivedStorage;
    if (itemcentral_isParentPlayerValid())
    {
      v7 = *(v6 + 8);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v8)
      {

        return v8(v7, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      itemcentral_GetDimensions(&v11);
      return v11;
    }
  }
}

uint64_t itemfig_GetDimensions()
{
  OUTLINED_FUNCTION_216_0();
  v5 = v4;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_354_0();
  OUTLINED_FUNCTION_279_0();
  if (*v3)
  {
    OUTLINED_FUNCTION_243();
    v10 = FigSignalErrorAtGM();
    if (!v0)
    {
      return v10;
    }

    goto LABEL_11;
  }

  if (!v0)
  {
    return 0;
  }

  if (*(v3 + 656))
  {
    v6 = 0;
    v7 = *(v3 + 736);
    height = *(v3 + 720) * v7;
    v9 = *(v3 + 728) * v7;
    goto LABEL_7;
  }

  if (*(v3 + 1920))
  {
    v6 = 0;
    height = *(v3 + 1928);
    v9 = *(v3 + 1936);
    goto LABEL_7;
  }

  v14 = *(v3 + 1040);
  if (v14)
  {
    itemfig_copyTrackFormatDescription(v5, v14, &videoDesc);
    v6 = videoDesc;
    if (v16)
    {
      v10 = v16;
      if (!videoDesc)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (videoDesc)
    {
      PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(videoDesc, *(v3 + 1193), *(v3 + 1194));
      width = PresentationDimensions.width;
      height = PresentationDimensions.height;
    }

    else
    {
      height = 0.0;
      width = 0.0;
    }

    v19 = OUTLINED_FUNCTION_415_0();
    if (FPSupport_ShouldApplyVideoTrackMatrix(v19, v20) && ((v21 = OUTLINED_FUNCTION_266_0(), VideoMatrixRotationAngleAndFlips = itemfig_getVideoMatrixRotationAngleAndFlips(v21, v22, 0), VideoMatrixRotationAngleAndFlips == 270) || VideoMatrixRotationAngleAndFlips == 90))
    {
      v9 = width;
    }

    else
    {
      v9 = height;
      height = width;
    }

LABEL_7:
    if (height != 0.0 && v9 != 0.0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v6 = 0;
  height = 0.0;
  v9 = 0.0;
LABEL_15:
  OUTLINED_FUNCTION_394_0();
  if (itemfig_IsThereMediaTrack(v15) || itemfig_IsThereMediaTrack(v3))
  {
    height = 1280.0;
    v9 = 720.0;
  }

LABEL_9:
  v10 = 0;
  v11 = height;
  *v2 = v11;
  v12 = v9;
  *v1 = v12;
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }

LABEL_11:
  CFRelease(v0);
  return v10;
}

void itemfig_copyVideoFormatDescription()
{
  OUTLINED_FUNCTION_187();
  CMBaseObjectGetDerivedStorage();
  v0 = OUTLINED_FUNCTION_228();

  itemfig_copyTrackFormatDescription(v0, v1, v2);
}

uint64_t itemfig_CopyProperty(void *a1, const void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  v165 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  v9 = OUTLINED_FUNCTION_283_0();
  v10 = v9;
  if (*v4 || !a4)
  {
    OUTLINED_FUNCTION_374();
    IsContentAuthorized = FigSignalErrorAtGM();
    if (!v10)
    {
      return IsContentAuthorized;
    }

    goto LABEL_13;
  }

  if (!v9)
  {
    return 0;
  }

  if (CFEqual(a2, @"SeekableTimeIntervals"))
  {
    valuePtr = 0;
    cf = 0;
    memset(&keys, 0, 32);
    *values = 0u;
    v164 = 0u;
    Seconds = 0;
    OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
    DurationIfReady = itemfig_getDurationIfReady(a1, &v156);
    if (DurationIfReady)
    {
      IsContentAuthorized = DurationIfReady;
      v30 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_92_0(v19, v20, v21, v22, v23, v24, v25, v26, *&v154.value, *&v154.timescale, *&v154.epoch, *&v155, *&v156);
      Seconds = CMTimeGetSeconds(v27);
      v28 = *MEMORY[0x1E695E480];
      v29 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
      v30 = v29;
      if (v29)
      {
        keys.start.value = @"start";
        values[0] = v29;
        v31 = CFNumberCreate(v28, kCFNumberDoubleType, &Seconds);
        v32 = v31;
        if (v31)
        {
          *&keys.start.timescale = @"end";
          values[1] = v31;
          OUTLINED_FUNCTION_107(MEMORY[0x1E6960CC0]);
          v33 = CMTimeCopyAsDictionary(&v154, v28);
          v42 = v33;
          if (v33)
          {
            keys.start.epoch = @"startTime";
            *&v164 = v33;
            OUTLINED_FUNCTION_92_0(v34, v35, v36, v37, v38, v39, v40, v41, *&v154.value, *&v154.timescale, *&v154.epoch, *&v155, *&v156);
            v44 = CMTimeCopyAsDictionary(v43, v28);
            v45 = v44;
            if (v44 && (keys.duration.value = @"endTime", *(&v164 + 1) = v44, (cf = CFDictionaryCreate(v28, &keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0) && (v46 = CFArrayCreate(v28, &cf, 1, MEMORY[0x1E695E9C0])) != 0)
            {
              IsContentAuthorized = 0;
              *a4 = v46;
            }

            else
            {
              OUTLINED_FUNCTION_374();
              IsContentAuthorized = FigSignalErrorAtGM();
            }

            goto LABEL_26;
          }

          OUTLINED_FUNCTION_374();
          IsContentAuthorized = FigSignalErrorAtGM();
LABEL_89:
          v45 = 0;
LABEL_26:
          if (cf)
          {
            CFRelease(cf);
          }

          if (v30)
          {
            CFRelease(v30);
          }

          if (v32)
          {
            CFRelease(v32);
          }

          if (v42)
          {
            CFRelease(v42);
          }

          if (v45)
          {
            CFRelease(v45);
          }

          goto LABEL_13;
        }

        OUTLINED_FUNCTION_374();
        IsContentAuthorized = FigSignalErrorAtGM();
LABEL_87:
        v42 = 0;
        goto LABEL_89;
      }

      OUTLINED_FUNCTION_374();
      IsContentAuthorized = FigSignalErrorAtGM();
    }

    v32 = 0;
    goto LABEL_87;
  }

  if (!CFEqual(a2, @"PlayableTimeIntervals"))
  {
    if (CFEqual(a2, @"Timebase"))
    {
      DictionaryRepresentation = *(v4 + 336);
      if (!DictionaryRepresentation)
      {
LABEL_11:
        IsContentAuthorized = 0;
LABEL_12:
        *a4 = DictionaryRepresentation;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    if (CFEqual(a2, @"Lyrics"))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 1000))
      {
        IsContentAuthorized = 0;
      }

      else
      {
        v47 = *(DerivedStorage + 1256);
        CFGetAllocator(a1);
        FigAssetGetCMBaseObject(v47);
        if (*(*(CMBaseObjectGetVTable() + 8) + 48))
        {
          v48 = OUTLINED_FUNCTION_148();
          IsContentAuthorized = v49(v48);
        }

        else
        {
          IsContentAuthorized = 4294954514;
        }
      }

      DictionaryRepresentation = *(v4 + 1000);
      if (DictionaryRepresentation)
      {
        goto LABEL_43;
      }

LABEL_44:
      *a4 = 0;
      goto LABEL_13;
    }

    if (CFEqual(a2, @"AvailableAlternateTrackGroups"))
    {
      DictionaryRepresentation = *(v4 + 1024);
      if (DictionaryRepresentation)
      {
        goto LABEL_10;
      }

      goto LABEL_38;
    }

    if (CFEqual(a2, @"ChosenAlternateTrackIDDictionary"))
    {
      v50 = OUTLINED_FUNCTION_502();
      itemfig_copyChosenAlternateTrackIDsDictionary(v50, v51, a4);
LABEL_47:
      IsContentAuthorized = 0;
      goto LABEL_13;
    }

    if (CFEqual(a2, @"EstimatedDuration"))
    {
      PlayabilityMetricsDictionary = itemfig_assureFormatReader(a1);
      if (PlayabilityMetricsDictionary)
      {
        goto LABEL_7;
      }

      v62 = *(v4 + 1008);
      v63 = kFigFormatReaderProperty_EstimatedDuration;
      goto LABEL_66;
    }

    if (CFEqual(a2, @"AccurateDuration"))
    {
      OUTLINED_FUNCTION_104(MEMORY[0x1E6960C70]);
      Duration = FigPlaybackItemGetDuration(a1, &keys);
      IsContentAuthorized = Duration;
      if (Duration)
      {
        DictionaryRepresentation = 0;
      }

      else
      {
        OUTLINED_FUNCTION_318_0(Duration, v53, v54, v55, v56, v57, v58, v59, v154.value, *&v154.timescale, v154.epoch, v155, v156, v157, v158, Seconds, valuePtr, cf, *&keys.start.value);
        DictionaryRepresentation = CMTimeCopyAsDictionary(v61, a3);
      }

      goto LABEL_12;
    }

    if (CFEqual(a2, @"EndTime"))
    {
      OUTLINED_FUNCTION_29();
      if (!v86)
      {
        goto LABEL_38;
      }

      *&keys.start.value = *(v4 + 140);
      v60 = *(v4 + 156);
      goto LABEL_72;
    }

    if (CFEqual(a2, @"ReverseEndTime"))
    {
      OUTLINED_FUNCTION_29();
      if (!v86)
      {
        goto LABEL_38;
      }

      *&keys.start.value = *(v4 + 164);
      v60 = *(v4 + 180);
      goto LABEL_72;
    }

    if (CFEqual(a2, @"AdvanceTimeForOverlappedPlayback"))
    {
      OUTLINED_FUNCTION_29();
      if (!v86)
      {
        goto LABEL_38;
      }

      *&keys.start.value = *(v4 + 188);
      v60 = *(v4 + 204);
LABEL_72:
      keys.start.epoch = v60;
      p_keys = &keys;
LABEL_73:
      v69 = a3;
LABEL_74:
      DictionaryRepresentation = CMTimeCopyAsDictionary(&p_keys->start, v69);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"MaximumTimePlayedToSinceLastSeek"))
    {
      OUTLINED_FUNCTION_104(MEMORY[0x1E6960C70]);
      FigPlaybackItemGetCurrentTime(a1, &keys);
      OUTLINED_FUNCTION_29();
      if (!v86)
      {
        DictionaryRepresentation = 0;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_318_0(v70, v71, v72, v73, v74, v75, v76, v77, v154.value, *&v154.timescale, v154.epoch, v155, v156, v157, v158, Seconds, valuePtr, cf, *&keys.start.value);
      goto LABEL_73;
    }

    if (CFEqual(a2, @"LoopTimeRange"))
    {
      OUTLINED_FUNCTION_29();
      if (v86)
      {
        v78 = *(v4 + 252);
        *&keys.start.value = *(v4 + 236);
        *&keys.start.epoch = v78;
        *&keys.duration.timescale = *(v4 + 268);
        DictionaryRepresentation = CMTimeRangeCopyAsDictionary(&keys, a3);
        goto LABEL_11;
      }

      goto LABEL_38;
    }

    if (CFEqual(a2, @"ReversesMoreVideoFramesInMemory"))
    {
      v79 = MEMORY[0x1E695E4D0];
      v80 = *(v4 + 284);
      goto LABEL_97;
    }

    if (CFEqual(a2, @"AggressivelyCachesVideoFrames"))
    {
      v79 = MEMORY[0x1E695E4D0];
      v80 = *(v4 + 285);
      goto LABEL_97;
    }

    if (CFEqual(a2, @"DecodeAllFramesDuringOrdinaryPlayback"))
    {
      v79 = MEMORY[0x1E695E4D0];
      v80 = *(v4 + 286);
      goto LABEL_97;
    }

    if (CFEqual(a2, @"CleanApertureRectangle"))
    {
      if (!*(v4 + 656))
      {
        OUTLINED_FUNCTION_197_0();
        itemfig_copyVideoFormatDescription();
        IsContentAuthorized = v89;
        if (v89)
        {
          goto LABEL_13;
        }

        if (keys.start.value)
        {
          v90 = OUTLINED_FUNCTION_410();
          CleanAperture = CMVideoFormatDescriptionGetCleanAperture(v90, v91);
          x = CleanAperture.origin.x;
          y = CleanAperture.origin.y;
          width = CleanAperture.size.width;
          height = CleanAperture.size.height;
          CFRelease(keys.start.value);
        }

        else
        {
          height = 0.0;
          width = 0.0;
          y = 0.0;
          x = 0.0;
        }

        v170.origin.x = x;
        v170.origin.y = y;
        v170.size.width = width;
        v170.size.height = height;
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v170);
        goto LABEL_12;
      }

      v81 = *(v4 + 736);
      v168.size.width = *(v4 + 720) * v81;
      v168.size.height = *(v4 + 728) * v81;
      v168.origin.x = 0.0;
      v168.origin.y = 0.0;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v168);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"EncodedDimensions"))
    {
      if (!*(v4 + 656))
      {
        OUTLINED_FUNCTION_197_0();
        itemfig_copyVideoFormatDescription();
        IsContentAuthorized = v99;
        if (v99)
        {
          goto LABEL_13;
        }

        if (keys.start.value)
        {
          Dimensions = CMVideoFormatDescriptionGetDimensions(keys.start.value);
          v101 = Dimensions.width;
          v102 = Dimensions.height;
          CFRelease(keys.start.value);
        }

        else
        {
          v102 = 0.0;
          v101 = 0.0;
        }

        v167.width = v101;
        v167.height = v102;
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v167);
        goto LABEL_12;
      }

      v82 = *(v4 + 736);
      v166.width = *(v4 + 720) * v82;
      v166.height = *(v4 + 728) * v82;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v166);
      goto LABEL_11;
    }

    if (CFEqual(a2, @"ApertureMode"))
    {
      if (*(v4 + 1193))
      {
        v83 = &kFigPlaybackItemApertureMode_CleanAperture;
        v84 = *(v4 + 1194);
        v85 = &kFigPlaybackItemApertureMode_ProductionAperture;
LABEL_110:
        v86 = v84 == 0;
        goto LABEL_111;
      }

      v83 = &kFigPlaybackItemApertureMode_EncodedPixels;
LABEL_120:
      DictionaryRepresentation = *v83;
      goto LABEL_10;
    }

    if (CFEqual(a2, @"VideoTrackMatrix"))
    {
      v87 = OUTLINED_FUNCTION_284();
      PlayabilityMetricsDictionary = itemfig_copyVideoTrackMatrix(v87, v88, a4);
      goto LABEL_7;
    }

    if (CFEqual(a2, @"TrackIDArray"))
    {
      v104 = OUTLINED_FUNCTION_197_0();
      itemfig_createTrackIDArray(v104, v105, v106, v107, v108, v109, v110, v111, v154.value, SHIDWORD(v154.value), *&v154.timescale, v154.epoch, v155, v156, v157, v158, Seconds, valuePtr, cf, keys.start.value, *&keys.start.timescale);
    }

    else
    {
      if (!CFEqual(a2, @"ChosenTrackIDArray"))
      {
        if (CFEqual(a2, @"EQPreset"))
        {
          v96 = *MEMORY[0x1E695E480];
          v97 = (v4 + 976);
          v98 = kCFNumberIntType;
LABEL_125:
          DictionaryRepresentation = CFNumberCreate(v96, v98, v97);
          goto LABEL_11;
        }

        if (CFEqual(a2, @"VideoSlotArray"))
        {
          FigSimpleMutexLock();
          v103 = *(v4 + 1152);
          if (v103)
          {
            IsContentAuthorized = 0;
            *a4 = CFArrayCreateCopy(a3, v103);
          }

          else
          {
            IsContentAuthorized = 4294954513;
          }

LABEL_140:
          FigSimpleMutexUnlock();
          goto LABEL_13;
        }

        if (!CFEqual(a2, @"HasEnqueuedFirstVideoFrame"))
        {
          if (CFEqual(a2, @"BlendsVideoFrames"))
          {
            v83 = MEMORY[0x1E695E4D0];
            v84 = *(v4 + 1176);
LABEL_148:
            v85 = MEMORY[0x1E695E4C0];
            goto LABEL_110;
          }

          if (CFEqual(a2, @"PropagatePerFrameHDRDisplayMetadata"))
          {
            v83 = MEMORY[0x1E695E4D0];
            v84 = *(v4 + 1192);
            goto LABEL_148;
          }

          if (CFEqual(a2, @"ImageQueueInterpolationCurve"))
          {
            DictionaryRepresentation = *(v4 + 1168);
            goto LABEL_10;
          }

          if (CFEqual(a2, @"ReadBandwidth"))
          {
            if (*(v4 + 128))
            {
              v124 = MEMORY[0x1E6960DF8];
LABEL_163:
              v125 = *v124;
              CMBaseObject = CMByteStreamGetCMBaseObject();
              v66 = v125;
              v67 = 0;
              goto LABEL_67;
            }

            goto LABEL_375;
          }

          if (CFEqual(a2, @"FileSize"))
          {
            if (*(v4 + 128))
            {
              v124 = MEMORY[0x1E695FF78];
              goto LABEL_163;
            }

LABEL_375:
            IsContentAuthorized = 4294954513;
            goto LABEL_13;
          }

          if (CFEqual(a2, @"AvailableFileSize"))
          {
            if (*(v4 + 128))
            {
              v124 = MEMORY[0x1E695FF70];
              goto LABEL_163;
            }

            goto LABEL_375;
          }

          if (CFEqual(a2, @"AudioDeviceChannelMap"))
          {
            v126 = *(v4 + 984);
            *a4 = v126;
            if (v126)
            {
              CFRetain(v126);
            }

            goto LABEL_47;
          }

          if (!CFEqual(a2, @"MovieMatrix"))
          {
            if (CFEqual(a2, @"IsReadyForPlayback"))
            {
              v83 = MEMORY[0x1E695E4D0];
              v84 = *(v4 + 1306);
              goto LABEL_148;
            }

            if (CFEqual(a2, @"BasicsReadyForInspection"))
            {
              v83 = MEMORY[0x1E695E4D0];
              v84 = *(v4 + 1280);
              goto LABEL_148;
            }

            if (CFEqual(a2, @"ReadAheadAllowBackfill"))
            {
              if (*(v4 + 1429))
              {
                v83 = MEMORY[0x1E695E4D0];
                v84 = *(v4 + 1428);
                goto LABEL_148;
              }

              if (*(v4 + 128))
              {
                CMByteStreamGetCMBaseObject();
                FigCRABSGetClassID();
                OUTLINED_FUNCTION_577();
                if (CMBaseObjectIsMemberOfClass())
                {
                  v124 = kFigCachedReadAheadByteStreamProperty_ReadAheadAllowBackfill;
                  goto LABEL_163;
                }
              }

              goto LABEL_375;
            }

            if (CFEqual(a2, @"SaveDownloadedDataToDiskWhenDone"))
            {
              if (*(v4 + 128))
              {
                CMByteStreamGetCMBaseObject();
                FigCRABSGetClassID();
                OUTLINED_FUNCTION_577();
                if (CMBaseObjectIsMemberOfClass())
                {
                  v124 = kFigCachedReadAheadByteStreamProperty_SaveMemoryCacheToDiskWhenDone;
                  goto LABEL_163;
                }
              }

              goto LABEL_375;
            }

            if (CFEqual(a2, @"RequiresExternalProtection"))
            {
              v127 = *MEMORY[0x1E695E4C0];
              keys.start.value = *MEMORY[0x1E695E4C0];
              v128 = *(v4 + 1208);
              if (v128)
              {
                values[0] = 0;
                CFNumberGetValue(v128, kCFNumberSInt64Type, values);
                if (values[0])
                {
                  value = *MEMORY[0x1E695E4D0];
                }

                else
                {
                  value = v127;
                }

                keys.start.value = value;
                if (value != v127)
                {
LABEL_190:
                  IsContentAuthorized = 0;
                  *a4 = value;
                  goto LABEL_13;
                }
              }

              else
              {
                value = v127;
              }

              itemfig_assureContentProtectionReadyForInspection(a1);
              v132 = *(v4 + 1200);
              if (v132)
              {
                IsContentAuthorized = CMBaseObjectCopyProperty(v132, @"ExternalProtectionRequiredForPlayback", a3, &keys);
                if (IsContentAuthorized)
                {
                  goto LABEL_13;
                }

                value = keys.start.value;
              }

              goto LABEL_190;
            }

            if (CFEqual(a2, @"CPEProtector"))
            {
              itemfig_assureContentProtectionReadyForInspection(a1);
              DictionaryRepresentation = *(v4 + 1200);
              if (!DictionaryRepresentation)
              {
                goto LABEL_11;
              }

              goto LABEL_10;
            }

            if (CFEqual(a2, @"IsAuthorizationRequired"))
            {
              itemfig_assureContentProtectionReadyForInspection(a1);
              v83 = MEMORY[0x1E695E4D0];
              v85 = MEMORY[0x1E695E4C0];
              v86 = *(v4 + 1200) == 0;
LABEL_111:
              if (v86)
              {
                v83 = v85;
              }

              goto LABEL_120;
            }

            if (!CFEqual(a2, @"IsAuthorized"))
            {
              if (CFEqual(a2, @"Metadata"))
              {
                OUTLINED_FUNCTION_502();
                PlayabilityMetricsDictionary = itemfig_copyMetadata();
                goto LABEL_7;
              }

              if (CFEqual(a2, @"VideoCompositionInstructionArray"))
              {
                FigSimpleMutexLock();
                v130 = *(v4 + 680);
                if (v130)
                {
                  v130 = CFRetain(v130);
                }

                *a4 = v130;
                goto LABEL_203;
              }

              if (CFEqual(a2, @"VideoCompositorSourceSampleDataTrackIDs"))
              {
                FigSimpleMutexLock();
                v131 = *(v4 + 800);
                if (!v131)
                {
LABEL_202:
                  *a4 = v131;
LABEL_203:
                  FigSimpleMutexUnlock();
                  goto LABEL_47;
                }

LABEL_201:
                v131 = CFRetain(v131);
                goto LABEL_202;
              }

              if (CFEqual(a2, @"VideoCompositorSourceVideoTrackWindows"))
              {
                FigSimpleMutexLock();
                v131 = *(v4 + 808);
                if (!v131)
                {
                  goto LABEL_202;
                }

                goto LABEL_201;
              }

              if (CFEqual(a2, @"VideoCompositorSourceSampleDataTrackWindows"))
              {
                FigSimpleMutexLock();
                v131 = *(v4 + 816);
                if (!v131)
                {
                  goto LABEL_202;
                }

                goto LABEL_201;
              }

              if (CFEqual(a2, @"UsesMinimalLatencyForVideoCompositionRendering"))
              {
                v83 = MEMORY[0x1E695E4D0];
                v84 = *(v4 + 688);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"VideoCompositor"))
              {
                switch(*(v4 + 664))
                {
                  case 1:
                    v83 = &kFigPlaybackItemVideoCompositor_Basic;
                    goto LABEL_120;
                  case 2:
                    v83 = &kFigPlaybackItemVideoCompositor_OpenGL;
                    goto LABEL_120;
                  case 3:
                    v83 = &kFigPlaybackItemVideoCompositor_vImage;
                    goto LABEL_120;
                  case 4:
                    v83 = &kFigPlaybackItemVideoCompositor_Metal;
                    goto LABEL_120;
                  default:
                    DictionaryRepresentation = *(v4 + 656);
                    if (DictionaryRepresentation)
                    {
                      goto LABEL_10;
                    }

                    break;
                }

                goto LABEL_11;
              }

              if (CFEqual(a2, @"SynchronizedLayers"))
              {
                DictionaryRepresentation = *(v4 + 904);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                goto LABEL_10;
              }

              if (CFEqual(a2, @"BufferState"))
              {
                FigSimpleMutexLock();
                if (*(v4 + 1456))
                {
                  v136 = @"Full";
                }

                else
                {
                  v136 = @"Filling";
                  OUTLINED_FUNCTION_624();
                  CombinedPreferredMaximumBufferDuration = itemfig_getCombinedPreferredMaximumBufferDuration();
                  if (CombinedPreferredMaximumBufferDuration >= 1 && itemfig_getPlayableDurationAtCurrentTime(a1) >= CombinedPreferredMaximumBufferDuration)
                  {
                    v136 = @"Full";
                  }
                }

                v138 = v136;
                goto LABEL_257;
              }

              if (CFEqual(a2, @"WillKeepUpPrediction"))
              {
                FigSimpleMutexLock();
                v137 = &kFigPlaybackItemWillKeepUpPrediction_LikelyToKeepUp;
                if (*(v4 + 1472))
                {
                  v137 = &kFigPlaybackItemWillKeepUpPrediction_UnlikelyToKeepUp;
                }

                v138 = *v137;
                goto LABEL_257;
              }

              if (CFEqual(a2, @"LikelyToKeepUpTrigger"))
              {
                if (*(v4 + 1392))
                {
                  v83 = &kFigPlaybackItemLikelyToKeepUpTrigger_Live;
                }

                else
                {
                  v83 = &kFigPlaybackItemLikelyToKeepUpTrigger_Default;
                }

                goto LABEL_120;
              }

              if (CFEqual(a2, @"ConnectionState"))
              {
                FigSimpleMutexLock();
                v138 = *(v4 + 1464);
                if (!v138)
                {
LABEL_258:
                  *a4 = v138;
                  FigSimpleMutexUnlock();
                  goto LABEL_47;
                }

LABEL_257:
                v138 = CFRetain(v138);
                goto LABEL_258;
              }

              if (CFEqual(a2, @"ProgressToPlayThrough"))
              {
                LODWORD(keys.start.value) = 0;
                FigSimpleMutexLock();
                v140 = *(v4 + 600);
                if (v140)
                {
                  FigPlayabilityMonitorGetProgressToPlayThrough(v140, &keys);
                }

                FigSimpleMutexUnlock();
                v96 = *MEMORY[0x1E695E480];
                v97 = &keys;
                goto LABEL_302;
              }

              if (CFEqual(a2, @"ContinuePlayingDuringPrerollForSeek"))
              {
                v83 = MEMORY[0x1E695E4D0];
                v84 = *(v4 + 287);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"ContinuePlayingDuringPrerollForRateChange"))
              {
                v83 = MEMORY[0x1E695E4D0];
                v84 = *(v4 + 288);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"IFrameOnlySpeedThreshold"))
              {
                if (!*(v4 + 290))
                {
                  v141 = *(v4 + 352);
                  if (v141)
                  {
                    *(v4 + 292) = FigPlaybackBossGetIFrameOnlySpeedThreshold(v141);
                  }
                }

                v96 = *MEMORY[0x1E695E480];
                v97 = (v4 + 292);
                goto LABEL_302;
              }

              if (CFEqual(a2, @"UseIFrameOnlyPlaybackForHighRateScaledEdits"))
              {
                v83 = MEMORY[0x1E695E4D0];
                v84 = *(v4 + 289);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"MinimumIntervalForIFrameOnlyPlayback"))
              {
                v69 = *MEMORY[0x1E695E480];
                keys.start.epoch = *(v4 + 312);
                *&keys.start.value = *(v4 + 296);
                p_keys = &keys;
                goto LABEL_74;
              }

              if (CFEqual(a2, @"ThoroughlyRefreshClosedCaptionsWhenSeeking"))
              {
                v83 = MEMORY[0x1E695E4D0];
                v84 = *(v4 + 320);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"PlayabilityMetrics"))
              {
                if (*(v4 + 600))
                {
                  v142 = OUTLINED_FUNCTION_502();
                  PlayabilityMetricsDictionary = itemfig_createPlayabilityMetricsDictionary(v142, v143, a4);
                }

                else
                {
                  OUTLINED_FUNCTION_374();
                  PlayabilityMetricsDictionary = FigSignalErrorAtGM();
                }

                goto LABEL_7;
              }

              if (CFEqual(a2, @"EnableDownloadWhenInPlayQueue"))
              {
                v83 = MEMORY[0x1E695E4D0];
                v84 = *(v4 + 1368);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"EnableDownloadWhenNotInPlayQueue"))
              {
                v83 = MEMORY[0x1E695E4D0];
                v84 = *(v4 + 1369);
                goto LABEL_148;
              }

              if (CFEqual(a2, @"AccessLog"))
              {
                if (*(v4 + 1745))
                {
                  keys.start.value = 0;
                  CMBaseObjectGetDerivedStorage();
                  FigSimpleMutexLock();
                  MutableCopy = FigCFArrayCreateMutableCopy();
                  if (MutableCopy)
                  {
                    OUTLINED_FUNCTION_624();
                    if (!itemfig_createAccessLogEntry())
                    {
                      CFArrayAppendValue(MutableCopy, keys.start.value);
                    }

                    *a4 = MutableCopy;
                    IsContentAuthorized = 0;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_374();
                    IsContentAuthorized = FigSignalErrorAtGM();
                    *a4 = 0;
                  }

                  goto LABEL_140;
                }

                goto LABEL_375;
              }

              if (CFEqual(a2, @"CanPlayFastForward") || CFEqual(a2, @"CanPlayFastReverse") || CFEqual(a2, @"CanPlayReverse") || CFEqual(a2, @"SupportsFrameStepping"))
              {
                goto LABEL_379;
              }

              if (CFEqual(a2, @"SoundCheckVolumeNormalization"))
              {
                v96 = *MEMORY[0x1E695E480];
                v97 = (v4 + 1488);
LABEL_302:
                v98 = kCFNumberFloat32Type;
                goto LABEL_125;
              }

              if (CFEqual(a2, @"Volume"))
              {
                v96 = *MEMORY[0x1E695E480];
                v97 = (v4 + 1476);
                goto LABEL_302;
              }

              if (CFEqual(a2, @"MediaKind"))
              {
                DictionaryRepresentation = *(v4 + 1496);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                goto LABEL_10;
              }

              if (CFEqual(a2, @"LoudnessInfo"))
              {
                DictionaryRepresentation = *(v4 + 1504);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                goto LABEL_10;
              }

              if (CFEqual(a2, @"VisualContextArray"))
              {
                FigSimpleMutexLock();
                v145 = *(v4 + 1776);
                if (v145)
                {
                  Copy = CFArrayCreateCopy(a3, v145);
                }

                else
                {
                  Copy = 0;
                }

                *a4 = Copy;
                goto LABEL_203;
              }

              if (CFEqual(a2, @"TextMarkupArray"))
              {
                DictionaryRepresentation = *(v4 + 1880);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                goto LABEL_10;
              }

              if (CFEqual(a2, @"TextHighlightArray"))
              {
                DictionaryRepresentation = *(v4 + 1888);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                goto LABEL_10;
              }

              if (CFEqual(a2, @"LegibleOutputs"))
              {
                v147 = *(v4 + 1800);
                if (!v147)
                {
                  goto LABEL_38;
                }

                goto LABEL_328;
              }

              if (CFEqual(a2, @"MetadataOutputs"))
              {
                DictionaryRepresentation = FigXMLNodeGetTag(*(v4 + 1808));
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                v147 = DictionaryRepresentation;
                goto LABEL_328;
              }

              if (CFEqual(a2, @"RenderedLegibleOutputs"))
              {
                v147 = *(v4 + 1832);
                if (!v147)
                {
LABEL_38:
                  IsContentAuthorized = 0;
                  goto LABEL_44;
                }

LABEL_328:
                DictionaryRepresentation = CFDictionaryCreateCopy(a3, v147);
                goto LABEL_11;
              }

              if (CFEqual(a2, @"MediaSelectionArray"))
              {
                IsContentAuthorized = itemfig_assureBasicsReadyForInspection(a1);
                DictionaryRepresentation = *(v4 + 1840);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_12;
                }

                goto LABEL_43;
              }

              if (CFEqual(a2, @"SelectedMediaArray"))
              {
                OUTLINED_FUNCTION_284();
                itemfig_createSelectedMediaArray();
                goto LABEL_7;
              }

              if (CFEqual(a2, @"EligibleForDSPBasedEnhancedDialogue"))
              {
                goto LABEL_379;
              }

              if (CFEqual(a2, @"SeekingWaitsForVideoCompositionRendering"))
              {
                v79 = MEMORY[0x1E695E4D0];
                v80 = *(v4 + 545);
                goto LABEL_97;
              }

              if (CFEqual(a2, @"AudioProcessingTap"))
              {
                DictionaryRepresentation = *(v4 + 1480);
                if (!DictionaryRepresentation)
                {
                  goto LABEL_11;
                }

                goto LABEL_10;
              }

              if (!CFEqual(a2, @"TimePitchAlgorithm"))
              {
                if (CFEqual(a2, @"AudioProcessingUnits"))
                {
                  DictionaryRepresentation = *(v4 + 1528);
                  if (!DictionaryRepresentation)
                  {
                    goto LABEL_11;
                  }

                  goto LABEL_10;
                }

                if (CFEqual(a2, @"AudioCurves"))
                {
                  DictionaryRepresentation = *(v4 + 1520);
                  if (!DictionaryRepresentation)
                  {
                    goto LABEL_11;
                  }

                  goto LABEL_10;
                }

                if (CFEqual(a2, @"DisplayNonForcedSubtitles"))
                {
                  v79 = MEMORY[0x1E695E4D0];
                  v80 = *(v4 + 1060);
                  goto LABEL_97;
                }

                if (CFEqual(a2, @"AutomaticallyLoadedAssetProperties"))
                {
                  DictionaryRepresentation = *(v4 + 1264);
                  if (!DictionaryRepresentation)
                  {
                    goto LABEL_11;
                  }

                  goto LABEL_10;
                }

                if (CFEqual(a2, @"AutomaticallyLoadedAssetTrackProperties"))
                {
                  DictionaryRepresentation = *(v4 + 1272);
                  if (!DictionaryRepresentation)
                  {
                    goto LABEL_11;
                  }

                  goto LABEL_10;
                }

                if (!CFEqual(a2, @"CanPlayUpTo2xForward"))
                {
                  if (CFEqual(a2, @"HasEnabledAudio"))
                  {
                    v79 = MEMORY[0x1E695E4D0];
                    v80 = *(v4 + 2065);
                    goto LABEL_97;
                  }

                  if (CFEqual(a2, @"HasEnabledVideo"))
                  {
                    v79 = MEMORY[0x1E695E4D0];
                    v80 = *(v4 + 2066);
                    goto LABEL_97;
                  }

                  if (CFEqual(a2, @"HasDiscoveredVideo"))
                  {
                    v79 = MEMORY[0x1E695E4D0];
                    v80 = *(v4 + 2067);
                    goto LABEL_97;
                  }

                  if (CFEqual(a2, @"PlayHapticTracks"))
                  {
                    v79 = MEMORY[0x1E695E4D0];
                    v80 = *(v4 + 1063);
                    goto LABEL_97;
                  }

                  if (CFEqual(a2, @"HapticPlaybackLocality"))
                  {
                    DictionaryRepresentation = *(v4 + 1072);
                    if (!DictionaryRepresentation)
                    {
                      goto LABEL_11;
                    }

                    goto LABEL_10;
                  }

                  if (CFEqual(a2, @"AudioSpatializationAllowed"))
                  {
                    v79 = MEMORY[0x1E695E4D0];
                    v80 = *(v4 + 1440);
                    goto LABEL_97;
                  }

                  if (CFEqual(a2, @"StereoAudioSpatializationAllowed"))
                  {
                    v79 = MEMORY[0x1E695E4D0];
                    v80 = *(v4 + 1441);
LABEL_97:
                    if (!v80)
                    {
                      v79 = MEMORY[0x1E695E4C0];
                    }

                    DictionaryRepresentation = *v79;
                    if (!*v79)
                    {
                      goto LABEL_11;
                    }

                    goto LABEL_10;
                  }

                  if (CFEqual(a2, @"CoordinationIdentifier"))
                  {
                    DictionaryRepresentation = *(v4 + 2080);
                    if (DictionaryRepresentation)
                    {
                      goto LABEL_10;
                    }

                    v148 = OUTLINED_FUNCTION_373();
                    FPSupport_CreateDefaultCoordinationIdentifierForPlaybackItem(v148, v149);
                    DictionaryRepresentation = *(v4 + 2080);
                    if (DictionaryRepresentation)
                    {
                      goto LABEL_10;
                    }

                    goto LABEL_375;
                  }

                  if (CFEqual(a2, @"ParticipatesInCoordinatedPlayback"))
                  {
                    v83 = MEMORY[0x1E695E4D0];
                    v84 = *(v4 + 2088);
                    goto LABEL_148;
                  }

                  if (!CFEqual(a2, @"IsCoordinatedPlaybackSupported"))
                  {
                    if (!CFEqual(a2, @"ReportingAgent"))
                    {
                      if (CFEqual(a2, @"ArtificiallyDelayPreparingItemForTestingOnly"))
                      {
                        DictionaryRepresentation = FigCFNumberCreateFloat64();
                        goto LABEL_11;
                      }

                      if (CFEqual(a2, @"SpeedRampData"))
                      {
                        DictionaryRepresentation = *(v4 + 2128);
                        if (!DictionaryRepresentation)
                        {
                          goto LABEL_11;
                        }

                        goto LABEL_10;
                      }

                      if (CFEqual(a2, @"OverlapRange"))
                      {
                        DictionaryRepresentation = *(v4 + 2136);
                        if (!DictionaryRepresentation)
                        {
                          goto LABEL_11;
                        }

                        goto LABEL_10;
                      }

                      if (CFEqual(a2, @"UniqueInstanceIdentifier"))
                      {
                        v151 = *(v4 + 2192);
                        if (v151)
                        {
                          DictionaryRepresentation = CFStringCreateCopy(a3, v151);
                          goto LABEL_11;
                        }
                      }

                      else
                      {
                        if (CFEqual(a2, @"ImageQueueGauge"))
                        {
                          v152 = OUTLINED_FUNCTION_502();
                          DictionaryRepresentation = itemfig_copyImageQueueGauge(v152, v153);
                          goto LABEL_11;
                        }

                        if (CFEqual(a2, @"PriorImageQueueGauge"))
                        {
                          DictionaryRepresentation = *(v4 + 2200);
                          if (!DictionaryRepresentation)
                          {
                            goto LABEL_11;
                          }

                          goto LABEL_10;
                        }

                        if (!CFEqual(a2, @"MetricEventTimeline"))
                        {
                          if (!CFEqual(a2, @"PreferredMaximumBufferDuration"))
                          {
                            IsContentAuthorized = 4294954512;
                            goto LABEL_13;
                          }

                          DictionaryRepresentation = FigCFNumberCreateSInt32();
                          goto LABEL_11;
                        }

                        DictionaryRepresentation = *(v4 + 2232);
                        if (DictionaryRepresentation)
                        {
LABEL_10:
                          DictionaryRepresentation = CFRetain(DictionaryRepresentation);
                          goto LABEL_11;
                        }
                      }

                      goto LABEL_38;
                    }

                    FigSimpleMutexLock();
                    v150 = *(v4 + 1952);
                    if (v150)
                    {
                      v150 = CFRetain(v150);
                    }

                    *a4 = v150;
                    goto LABEL_203;
                  }
                }

LABEL_379:
                v83 = MEMORY[0x1E695E4D0];
                goto LABEL_120;
              }

              IsContentAuthorized = itemfig_assureBasicsReadyForInspection(a1);
              DictionaryRepresentation = *(v4 + 1512);
LABEL_43:
              DictionaryRepresentation = CFRetain(DictionaryRepresentation);
              goto LABEL_12;
            }

            itemfig_assureContentProtectionReadyForInspection(a1);
            v133 = *(v4 + 1200);
            if (!v133)
            {
              goto LABEL_379;
            }

            LODWORD(keys.start.value) = 0;
            IsApplicationAuthorized = FigCPEProtectorIsApplicationAuthorized(v133, &keys);
            if (IsApplicationAuthorized)
            {
              IsContentAuthorized = IsApplicationAuthorized;
            }

            else if (keys.start.value)
            {
              IsContentAuthorized = FigCPEProtectorIsContentAuthorized(*(v4 + 1200), &keys);
              if (!IsContentAuthorized && (keys.start.value & 1) != 0)
              {
                v135 = MEMORY[0x1E695E4D0];
                goto LABEL_218;
              }
            }

            else
            {
              IsContentAuthorized = 0;
            }

            v135 = MEMORY[0x1E695E4C0];
LABEL_218:
            DictionaryRepresentation = *v135;
            goto LABEL_43;
          }

          PlayabilityMetricsDictionary = itemfig_assureFormatReader(a1);
          if (PlayabilityMetricsDictionary)
          {
            goto LABEL_7;
          }

          v62 = *(v4 + 1008);
          v63 = kFigFormatReaderProperty_MovieMatrix;
LABEL_66:
          v64 = *v63;
          CMBaseObject = FigFormatReaderGetFigBaseObject(v62);
          v66 = v64;
          v67 = a3;
LABEL_67:
          PlayabilityMetricsDictionary = CMBaseObjectCopyProperty(CMBaseObject, v66, v67, a4);
          goto LABEL_7;
        }

        VideoFrame = itemfig_hasEnqueuedFirstVideoFrame(a1);
        IsContentAuthorized = 0;
        v123 = MEMORY[0x1E695E4D0];
        if (!VideoFrame)
        {
          v123 = MEMORY[0x1E695E4C0];
        }

        v121 = *v123;
LABEL_145:
        *a4 = v121;
        goto LABEL_13;
      }

      v113 = OUTLINED_FUNCTION_197_0();
      ChosenTrackIDArray = itemfig_createChosenTrackIDArray(v113, v114, v115, v116, v117, v118, v119, v120, v154.value, *&v154.timescale, v154.epoch, v155, v156, v157, v158, Seconds, valuePtr, cf, keys.start.value, *&keys.start.timescale, keys.start.epoch, keys.duration.value, *&keys.duration.timescale, keys.duration.epoch);
    }

    IsContentAuthorized = ChosenTrackIDArray;
    v121 = keys.start.value;
    if (ChosenTrackIDArray)
    {
      v121 = 0;
    }

    goto LABEL_145;
  }

  v11 = OUTLINED_FUNCTION_293();
  PlayabilityMetricsDictionary = itemfig_copyPlayableTime(v11, v12);
LABEL_7:
  IsContentAuthorized = PlayabilityMetricsDictionary;
LABEL_13:
  CFRelease(v10);
  return IsContentAuthorized;
}