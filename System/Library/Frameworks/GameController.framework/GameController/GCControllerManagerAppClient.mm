@interface GCControllerManagerAppClient
@end

@implementation GCControllerManagerAppClient

void __73___GCControllerManagerAppClient_activateWithSession_environment_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 176);
  v5 = a2;
  v6 = [v4 registerServicesChangedObserver:v3 notifyExisting:1];
  v7 = +[_GCCurrentApplicationForegroundMonitor sharedInstance];
  [v7 addObserver:*(a1 + 32) notifyCurrent:1];

  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __73___GCControllerManagerAppClient_activateWithSession_environment_options___block_invoke_2;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = *(a1 + 32);
  _os_activity_initiate(&dword_1D2CD5000, "Connect To Game Controller Daemon", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  SetupVirtualGameControllerIfForced();
  v8 = [MEMORY[0x1E695DFB0] null];
  [v5 succeedWithResult:v8];
}

uint64_t __50___GCControllerManagerAppClient_finalizeRecording__block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __50___GCControllerManagerAppClient_finalizeRecording__block_invoke_cold_1();
  }

  return [*(a1 + 32) invalidate];
}

void __49___GCControllerManagerAppClient__connectToDaemon__block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  *(v4 + 136) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 120);
  *(v8 + 120) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 144);
  *(v10 + 144) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 104);
  *(v12 + 104) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 96);
  *(v14 + 96) = 0;

  v16 = *(a1 + 32);
  v17 = *(v16 + 80);
  *(v16 + 80) = 0;

  v18 = *(a1 + 32);
  v19 = *(v18 + 88);
  *(v18 + 88) = 0;

  v20 = *(a1 + 32);
  v21 = *(v20 + 72);
  *(v20 + 72) = 0;
}

void __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_136(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_136_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  *(v4 + 136) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 120);
  *(v8 + 120) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 144);
  *(v10 + 144) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 104);
  *(v12 + 104) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 96);
  *(v14 + 96) = 0;

  v16 = [*(*(a1 + 32) + 72) remoteProxy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_137;
  v17[3] = &unk_1E8418C28;
  v17[4] = *(a1 + 32);
  [v16 pingWithReply:v17];
}

void __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_137(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_2;
  block[3] = &unk_1E8418C28;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 96), a2);
    [*(a1 + 32) refreshControllers];
  }

  else if (gc_isInternalBuild())
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 104), a2);
  }

  else if (gc_isInternalBuild())
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_139_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_141(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 112), a2);
  }

  else if (gc_isInternalBuild())
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_141_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_143(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 120), a2);
  }

  else if (gc_isInternalBuild())
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_143_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_145(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 136), a2);
  }

  else if (gc_isInternalBuild())
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_145_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_147(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 144), a2);
  }

  else if (gc_isInternalBuild())
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_147_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_149(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 128), a2);
    [*(a1 + 32) updateEmulatedControllerEnabled];
  }

  else if (gc_isInternalBuild())
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_149_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_151(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 152), a2);
  }

  else if (gc_isInternalBuild())
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_151_cold_1();
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_153(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 160), a2);
  }

  else if (gc_isInternalBuild())
  {
    __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_153_cold_1();
  }
}

void __64___GCControllerManagerAppClient_updateEmulatedControllerEnabled__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gc_isInternalBuild())
  {
    __64___GCControllerManagerAppClient_updateEmulatedControllerEnabled__block_invoke_cold_1();
  }

  if ([v3 BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 valueForKey:@"GCEnableKeyboardMouseController"];
    v4 = [v6 intValue];
  }

  [*(*(a1 + 32) + 216) setEmulatedControllerMapping:v4];
}

void __52___GCControllerManagerAppClient_startVideoRecording__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gc_isInternalBuild())
    {
      __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_cold_1();
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 152);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_193;
    v6[3] = &unk_1E8419EA8;
    v6[4] = v4;
    [v5 onVideoRecordingStart:v6];
    if (gc_isInternalBuild())
    {
      __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_cold_2();
    }
  }
}

void __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_193(uint64_t a1, void *a2)
{
  v3 = a2;
  isInternalBuild = gc_isInternalBuild();
  if (!v3)
  {
    if (isInternalBuild)
    {
      __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_193_cold_2();
    }

    v6 = [MEMORY[0x1E695DF00] date];
    v7 = *(a1 + 32);
    v5 = *(v7 + 208);
    *(v7 + 208) = v6;
    goto LABEL_8;
  }

  if (isInternalBuild)
  {
    v5 = getGCLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_193_cold_1(v3, v5);
    }

LABEL_8:
  }
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 || !gc_isInternalBuild())
  {
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = -1;
    goto LABEL_9;
  }

  __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_cold_1();
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  [v6 UTF8String];
  v7 = sandbox_extension_consume();
  if (v7 == -1)
  {
    if (gc_isInternalBuild())
    {
      __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_cold_2();
    }

    goto LABEL_13;
  }

LABEL_9:
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = *(a1 + 48);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_201;
  aBlock[3] = &unk_1E841AB88;
  v18 = v7;
  v8 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v8;
  v15 = v9;
  v17 = v19;
  v16 = v10;
  v11 = _Block_copy(aBlock);
  if (*(a1 + 48) == 1)
  {
    v12 = GCLookupService();
    [v12 exportClipToURL:v8 duration:v11 completionHandler:15.0];
  }

  else
  {
    v12 = GCLookupService();
    [v12 stopRecordingWithOutputURL:v8 completionHandler:v11];
  }

  _Block_object_dispose(v19, 8);
LABEL_13:
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_201(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 64) != -1)
  {
    sandbox_extension_release();
  }

  isInternalBuild = gc_isInternalBuild();
  if (!v3)
  {
    if (isInternalBuild)
    {
      __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_201_cold_2(a1);
    }

    v6 = *(*(a1 + 40) + 152);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_202;
    v13[3] = &unk_1E841AB60;
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v11 = v9;
    v12 = v8;
    v10 = *&v8.f64[0];
    v15.val[1] = v12;
    *&v15.val[0].f64[0] = v7;
    v15.val[0].f64[1] = *(a1 + 40);
    vst2q_f64(v14, v15);
    [v6 onVideoRecordingStopWithURL:v7 reply:{v13, v11}];

    v5 = *&v14[0];
    goto LABEL_10;
  }

  if (isInternalBuild)
  {
    v5 = getGCLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_201_cold_1(a1);
    }

LABEL_10:
  }
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_202(uint64_t a1, void *a2)
{
  v3 = a2;
  isInternalBuild = gc_isInternalBuild();
  if (!v3)
  {
    if (isInternalBuild)
    {
      __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_202_cold_2(a1);
    }

    v6 = *(*(*(a1 + 56) + 8) + 24);
    v5 = +[GCAnalytics instance];
    v7 = currentProcessBundleIdentifier();
    v8 = [*(a1 + 40) detailedProductCategory];
    if (v6 == 1)
    {
      [v5 sendRPKitInstantCaptureSavedEventForBundleID:v7 productCategory:v8];
    }

    else
    {
      [*(*(a1 + 48) + 208) timeIntervalSinceNow];
      LODWORD(v10) = llround(-v9);
      [v5 sendRPKitManualRecordingSavedEventForBundleID:v7 productCategory:v8 duration:v10];
    }

    goto LABEL_11;
  }

  if (isInternalBuild)
  {
    v5 = getGCLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_202_cold_1(a1);
    }

LABEL_11:
  }

  v11 = *(a1 + 48);
  v12 = *(v11 + 208);
  *(v11 + 208) = 0;
}

void __47___GCControllerManagerAppClient_startBuffering__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  isInternalBuild = gc_isInternalBuild();
  if (v3)
  {
    if (isInternalBuild)
    {
      __47___GCControllerManagerAppClient_startBuffering__block_invoke_cold_1();
    }
  }

  else
  {
    if (isInternalBuild)
    {
      __47___GCControllerManagerAppClient_startBuffering__block_invoke_cold_2();
    }

    v5 = *(a1 + 32);
    if ((*(v5 + 202) & 1) == 0)
    {
      v6 = +[GCAnalytics instance];
      v7 = currentProcessBundleIdentifier();
      [v6 sendRPKitInstantCaptureBufferStartedEventForBundleID:v7];

      v5 = *(a1 + 32);
    }

    *(v5 + 202) = 1;
  }

  *(*(a1 + 32) + 201) = 0;
}

void __46___GCControllerManagerAppClient_stopBuffering__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && gc_isInternalBuild())
  {
    __46___GCControllerManagerAppClient_stopBuffering__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 202) = 0;
}

void __55___GCControllerManagerAppClient_onScreenshotTriggered___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gc_isInternalBuild())
    {
      __55___GCControllerManagerAppClient_onScreenshotTriggered___block_invoke_cold_1();
    }
  }

  else
  {
    v4 = +[GCAnalytics instance];
    v5 = currentProcessBundleIdentifier();
    v6 = [*(*(*(a1 + 32) + 8) + 40) detailedProductCategory];
    [v4 sendRPKitScreenshotSavedEventForBundleID:v5 productCategory:v6];
  }
}

void __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke_2;
  v5[3] = &unk_1E8418C50;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

void __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [*(*(a1 + 40) + 64) member:v8];

        if (!v9)
        {
          if (gc_isInternalBuild())
          {
            __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke_2_cold_1();
          }

          [*(*(a1 + 40) + 64) addObject:v8];
          [*(a1 + 40) _onqueue_addPendingController:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v10 = *(a1 + 40);
  v11 = *(v10 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke_442;
  block[3] = &unk_1E8418C28;
  block[4] = v10;
  dispatch_async(v11, block);
  v12 = *MEMORY[0x1E69E9840];
}

void __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke_2;
  v5[3] = &unk_1E8418C50;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

uint64_t __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (gc_isInternalBuild())
        {
          __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke_2_cold_1();
        }

        [*(*(a1 + 40) + 56) removeObject:{v7, v10}];
        [*(*(a1 + 40) + 64) removeObject:v7];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) _onqueue_refreshPublishedControllers];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke_2;
  v4[3] = &unk_1E841ABD8;
  v4[4] = v1;
  return [v2 fetchControllerDescriptionsWithReply:v4];
}

void __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke_3;
  v7[3] = &unk_1E8418C50;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke_3(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [*(*(a1 + 40) + 64) copy];
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v2 member:v8];

        if (!v9)
        {
          if (gc_isInternalBuild())
          {
            __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke_2_cold_1();
          }

          [*(*(a1 + 40) + 56) removeObject:v8];
          [*(*(a1 + 40) + 64) removeObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * j);
        v16 = [v15 identifier];
        v17 = [*(*(a1 + 40) + 64) member:v16];

        isInternalBuild = gc_isInternalBuild();
        if (v17)
        {
          if (isInternalBuild)
          {
            __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke_3_cold_2();
          }
        }

        else
        {
          if (isInternalBuild)
          {
            __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke_2_cold_1();
          }

          [*(*(a1 + 40) + 64) addObject:v16];
        }

        [*(a1 + 40) _onqueue_addPendingController:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v12);
  }

  [*(a1 + 40) _onqueue_refreshPublishedControllers];
  v19 = *MEMORY[0x1E69E9840];
}

void __50___GCControllerManagerAppClient_finalizeRecording__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_cold_1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __49___GCControllerManagerAppClient__connectToDaemon__block_invoke_136_cold_1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_139_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_141_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_143_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_145_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_147_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_149_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_151_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __56___GCControllerManagerAppClient__resumeDaemonConnection__block_invoke_153_cold_1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __64___GCControllerManagerAppClient_updateEmulatedControllerEnabled__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_cold_2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_193_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_ERROR, "onVideoRecordingStart has failed, reason: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __52___GCControllerManagerAppClient_startVideoRecording__block_invoke_193_cold_2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_cold_1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_201_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_16_2(&dword_1D2CD5000, v2, v3, "Stop of video recording session with url %@ has failed, reason: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_201_cold_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(a1 + 32);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_202_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_16_2(&dword_1D2CD5000, v2, v3, "onVideoRecordingStopWithURL: %@ has failed, reason: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __80___GCControllerManagerAppClient_stopVideoRecordingWithClipBuffering_controller___block_invoke_202_cold_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    v4 = *(a1 + 32);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __47___GCControllerManagerAppClient_startBuffering__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __47___GCControllerManagerAppClient_startBuffering__block_invoke_cold_2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __46___GCControllerManagerAppClient_stopBuffering__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __55___GCControllerManagerAppClient_onScreenshotTriggered___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __71___GCControllerManagerAppClient_ControllerService__publishControllers___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_12(5.7779e-34);
    OUTLINED_FUNCTION_5_9(&dword_1D2CD5000, v2, v3, "Publish controller: '%@'");
  }
}

void __88___GCControllerManagerAppClient_ControllerService__unpublishControllersWithIdentifiers___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_12(5.7779e-34);
    OUTLINED_FUNCTION_5_9(&dword_1D2CD5000, v2, v3, "Unpublish controller: '%@'");
  }
}

void __70___GCControllerManagerAppClient_ControllerService__refreshControllers__block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_5();
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_12(5.7779e-34);
    OUTLINED_FUNCTION_5_9(&dword_1D2CD5000, v2, v3, "Update controller: '%@'");
  }
}

@end