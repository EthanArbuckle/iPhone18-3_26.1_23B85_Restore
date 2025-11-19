@interface GCRacingWheelManager
@end

@implementation GCRacingWheelManager

void __57___GCRacingWheelManager_activateWithSession_environment___block_invoke(uint64_t a1, void *a2)
{
  v26[3] = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57___GCRacingWheelManager_activateWithSession_environment___block_invoke_2;
  aBlock[3] = &unk_1E841AC98;
  aBlock[4] = *(a1 + 32);
  v17 = a2;
  v2 = _Block_copy(aBlock);
  v25[0] = @"VendorID";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG923VID];
  v26[0] = v3;
  v25[1] = @"ProductID";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG923PID_HIDpp];
  v25[2] = @"PrimaryUsage";
  v26[1] = v4;
  v26[2] = &unk_1F4E8E480;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v2[2](v2, v5);

  v23[0] = @"VendorID";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG923VID];
  v24[0] = v6;
  v23[1] = @"ProductID";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG923PID_Classic];
  v23[2] = @"PrimaryUsage";
  v24[1] = v7;
  v24[2] = &unk_1F4E8E480;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v2[2](v2, v8);

  v21[0] = @"VendorID";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG920VID];
  v22[0] = v9;
  v21[1] = @"ProductID";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG920PID];
  v21[2] = @"PrimaryUsage";
  v22[1] = v10;
  v22[2] = &unk_1F4E8E480;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v2[2](v2, v11);

  v19[0] = @"VendorID";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG29VID];
  v20[0] = v12;
  v19[1] = @"ProductID";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:GCLogitechG29PID];
  v20[1] = v13;
  v20[2] = &unk_1F4E8E498;
  v19[2] = @"PrimaryUsagePage";
  v19[3] = @"PrimaryUsage";
  v20[3] = &unk_1F4E8E480;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v2[2](v2, v14);

  v15 = [MEMORY[0x1E695DFB0] null];
  [v17 succeedWithResult:v15];

  v16 = *MEMORY[0x1E69E9840];
}

void __57___GCRacingWheelManager_activateWithSession_environment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = IOServiceMatching("IOHIDDevice");
  [v4 addEntriesFromDictionary:v5];

  notification = 0;
  v6 = [*(*(a1 + 32) + 16) port];
  v7 = v4;
  if (IOServiceAddMatchingNotification(v6, "IOServiceFirstMatch", v7, DeviceMatched, *(a1 + 32), &notification))
  {
    if (gc_isInternalBuild())
    {
      __57___GCRacingWheelManager_activateWithSession_environment___block_invoke_2_cold_1();
    }
  }

  else
  {
    CFSetAddValue(*(*(a1 + 32) + 24), notification);
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57___GCRacingWheelManager_activateWithSession_environment___block_invoke_92;
    v10[3] = &unk_1E841AC70;
    v10[4] = v8;
    v11 = notification;
    dispatch_async(v9, v10);
    IOObjectRelease(notification);
  }
}

void __59___GCRacingWheelManager_invalidateWithSession_environment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59___GCRacingWheelManager_invalidateWithSession_environment___block_invoke_2;
  v10[3] = &unk_1E8418CA0;
  v11 = v3;
  v12 = v4;
  v10[4] = v4;
  v6 = *(v4 + 8);
  v7 = v3;
  [v5 addCancellationHandler:v10 onQueue:v6];
  CFSetRemoveAllValues(*(*(a1 + 32) + 32));
  CFSetRemoveAllValues(*(*(a1 + 32) + 24));
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;
}

void __59___GCRacingWheelManager_invalidateWithSession_environment___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [*(*(a1 + 48) + 40) allValues];
  v4 = [v2 setWithArray:v3];

  if (gc_isInternalBuild())
  {
    __59___GCRacingWheelManager_invalidateWithSession_environment___block_invoke_2_cold_1();
  }

  [*(a1 + 48) willChangeValueForKey:@"racingWheels" withSetMutation:2 usingObjects:v4];
  [*(a1 + 48) willChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v4];
  v5 = *(a1 + 48);
  objc_sync_enter(v5);
  [*(*(a1 + 48) + 40) removeAllObjects];
  objc_sync_exit(v5);

  [*(a1 + 48) didChangeValueForKey:@"devices" withSetMutation:2 usingObjects:v4];
  [*(a1 + 48) didChangeValueForKey:@"racingWheels" withSetMutation:2 usingObjects:v4];
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x1E695DFB0] null];
  [v6 succeedWithResult:v7];
}

void __57___GCRacingWheelManager_activateWithSession_environment___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __59___GCRacingWheelManager_invalidateWithSession_environment___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v1, v2, "Remove all remaining Racing Wheel Devices: %@", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end