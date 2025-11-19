@interface GCHapticServerManager
@end

@implementation GCHapticServerManager

void __40___GCHapticServerManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_GCHapticServerManager);
  v1 = +[_GCHapticServerManager sharedInstance]::hapticServerManager;
  +[_GCHapticServerManager sharedInstance]::hapticServerManager = v0;
}

void __30___GCHapticServerManager_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[12];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __30___GCHapticServerManager_init__block_invoke_2;
    v7[3] = &unk_1E841A0F0;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void __30___GCHapticServerManager_init__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (gc_isInternalBuild())
  {
    __30___GCHapticServerManager_init__block_invoke_2_cold_1(a1);
  }

  v12 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E698D010]];
  v2 = [v12 intValue];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = *(*(a1 + 40) + 88);
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    v5 = *MEMORY[0x1E698CFF8];
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(a1 + 40) + 88) objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v6)];
        v8 = [v7 bundleIdentifier];
        v9 = [*(a1 + 32) objectForKeyedSubscript:v5];
        v10 = [v8 isEqualToString:v9];

        if (v10)
        {
          if (v2 == 2)
          {
            if (gc_isInternalBuild())
            {
              getGCHapticsLogger();
              objc_claimAutoreleasedReturnValue();
              __30___GCHapticServerManager_init__block_invoke_2_cold_2();
            }

            [v7 setMute:1 forReason:3];
            [v7 notifyClientOnStopWithReason:2 error:0];
          }

          else if (v2 == 8)
          {
            if (gc_isInternalBuild())
            {
              getGCHapticsLogger();
              objc_claimAutoreleasedReturnValue();
              __30___GCHapticServerManager_init__block_invoke_2_cold_3();
            }

            [v7 setMute:0 forReason:3];
          }

          [v7 setApplicationState:v2];
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained && v3)
  {
    if (gc_isInternalBuild())
    {
      v6 = getGCHapticsLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412546;
        v8 = WeakRetained;
        v9 = 2048;
        v10 = [v4 clientID];
        _os_log_impl(&dword_1D2CD5000, v6, OS_LOG_TYPE_DEFAULT, "%@ has lost its connection to haptic client %lu.", &v7, 0x16u);
      }
    }

    [WeakRetained removeHapticClient:v4];
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (WeakRetained && v5)
  {
    v7 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698CFF8]];
    [v6 setBundleIdentifier:v7];

    v8 = [MEMORY[0x1E695DF70] array];
    v9 = WeakRetained[12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_2;
    v11[3] = &unk_1E841A0F0;
    v12 = WeakRetained;
    v13 = v8;
    v10 = v8;
    dispatch_async(v9, v11);
  }
}

uint64_t __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(*(a1 + 32) + 88) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    do
    {
      v5 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v5)];
        v7 = [v6 bundleIdentifier];
        if (v7)
        {
          v8 = *(a1 + 40);
          v9 = [v6 bundleIdentifier];
          LOBYTE(v8) = [v8 containsObject:v9];

          if ((v8 & 1) == 0)
          {
            v10 = *(a1 + 40);
            v11 = [v6 bundleIdentifier];
            [v10 addObject:v11];
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  if (gc_isInternalBuild())
  {
    __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_2_cold_1(a1);
  }

  result = [*(*(a1 + 32) + 72) updateInterestedBundleIDs:*(a1 + 40)];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = [v3 addInvalidationHandler:*(a1 + 40)];
    v6 = WeakRetained[7];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
    [v6 setObject:v5 forKey:v7];

    v8 = WeakRetained[11];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
    [v8 setObject:v4 forKey:v9];

    if (gc_isInternalBuild())
    {
      v10 = getGCHapticsLogger();
      __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_15_cold_1(v10, a1, WeakRetained + 11);
    }
  }
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 40) identifier];
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_2();
    if (!v2)
    {
      goto LABEL_12;
    }
  }

  else if (!v2)
  {
    goto LABEL_12;
  }

  v3 = [*(*(a1 + 32) + 48) objectForKey:v2];
  [v3 unregisterHapticClient:*(a1 + 40)];
  if (([v3 hasClients] & 1) == 0)
  {
    if (gc_isInternalBuild())
    {
      getGCHapticsLogger();
      objc_claimAutoreleasedReturnValue();
      __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_3();
    }

    [*(*(a1 + 32) + 48) removeObjectForKey:v2];
    if (gc_isInternalBuild())
    {
      getGCHapticsLogger();
      objc_claimAutoreleasedReturnValue();
      __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_4();
    }

    [v3 stopAllHaptics];
  }

LABEL_12:
  [*(a1 + 40) teardownAndReleaseChannels];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "clientID")}];
  if (v4)
  {
    v5 = *(*(a1 + 32) + 56);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "clientID")}];
    [v5 removeObjectForKey:v6];

    v7 = *(*(a1 + 32) + 88);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "clientID")}];
    [v7 removeObjectForKey:v8];
  }

  v9 = objc_opt_new();
  v11 = *(a1 + 32);
  v10 = (a1 + 32);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __45___GCHapticServerManager_removeHapticClient___block_invoke_17;
  v17 = &unk_1E841A1B8;
  v18 = v10[1];
  v13 = v9;
  v19 = v13;
  [v12 enumerateKeysAndObjectsUsingBlock:&v14];
  [*(*v10 + 8) removeObjectsForKeys:{v13, v14, v15, v16, v17}];
  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_5();
  }
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke_17(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a3 + 48) == *(a1 + 32))
  {
    [*(a1 + 40) addObject:v5];
  }
}

void __55___GCHapticServerManager_logicalDeviceWasUnregistered___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = [*(a1 + 32) object];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = *(*(a1 + 40) + 48);
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = *v14;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v14 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v13 + 1) + 8 * i);
        v6 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v5];
        v7 = [v6[1] identifier];
        v8 = [v12 identifier];
        v9 = [v7 isEqual:v8];

        if (v9)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);

          goto LABEL_11;
        }
      }

      v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (gc_isInternalBuild())
    {
      getGCHapticsLogger();
      objc_claimAutoreleasedReturnValue();
      __55___GCHapticServerManager_logicalDeviceWasUnregistered___block_invoke_cold_1();
    }

    [*(*(a1 + 40) + 48) removeObjectForKey:*(*(*(a1 + 48) + 8) + 40)];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __55___GCHapticServerManager_logicalDeviceWasUnregistered___block_invoke_23(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(*(a1 + 32) + 88) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v5)];
        v7 = [v6 identifier];
        if ([v7 isEqual:*(*(*(a1 + 40) + 8) + 40)])
        {
          [v6 notifyClientOnStopWithReason:3 error:0];
          [v6 invalidateDueToControllerDisconnect];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __55___GCHapticServerManager_notifyPlayerNoLongerRetained___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([*(a1 + 32) isActiveAtTime:mach_absolute_time() * 0.0000000416666667] & 1) == 0)
  {
    if (gc_isInternalBuild())
    {
      __55___GCHapticServerManager_notifyPlayerNoLongerRetained___block_invoke_cold_1((a1 + 32));
    }

    v3 = [*v2 hapticLogicalDevice];

    if (v3)
    {
      v4 = [*v2 hapticLogicalDevice];
      [v4[4] removeObject:*v2];
    }

    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 64);
    v7 = [v5 identifier];
    [v6 removeObjectForKey:v7];
  }
}

void __38___GCHapticServerManager_enterRunloop__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) readClientDataForStartTime:*(a1 + 48) endTime:*(a1 + 56)];
  v4 = [*(a1 + 32) playersHaveImpendingCommandsForStartTime:*(a1 + 48) endTime:*(a1 + 56)];
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ([*(a1 + 32) activeEvents] | v4) ^ 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5 & 1;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(a1 + 32) + 28) = [*(*(a1 + 32) + 88) count] != 0;
  }

  objc_autoreleasePoolPop(v2);
}

void __38___GCHapticServerManager_enterRunloop__block_invoke_24(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) processScheduledCommandsForStartTime:*(a1 + 40) endTime:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void __38___GCHapticServerManager_enterRunloop__block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) processActiveEventsForStartTime:*(a1 + 40) endTime:*(a1 + 48)];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [*(*(a1 + 32) + 88) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v3 - v4;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v9)];
        v11 = v10;
        if (v10[8] == 1)
        {
          [v10 addActiveTime:v7];
          v11[8] = 0;
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x1E69E9840];
}

void __38___GCHapticServerManager_enterRunloop__block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) identifyCompletedClients];

  objc_autoreleasePoolPop(v2);
}

void __30___GCHapticServerManager_init__block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCHapticsLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_12_3(v4, v5, v6, v7, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __30___GCHapticServerManager_init__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_2_8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v1 = 138412290;
    *v2 = v3;
    OUTLINED_FUNCTION_10_4(&dword_1D2CD5000, v5, v6, "Application backgrounded, muting %@");
  }
}

void __30___GCHapticServerManager_init__block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_2_8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v1 = 138412290;
    *v2 = v3;
    OUTLINED_FUNCTION_10_4(&dword_1D2CD5000, v5, v6, "Application foregrounded, unmuting %@");
  }
}

void __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = getGCHapticsLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v4, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __68___GCHapticServerManager_acceptNewConnection_fromHapticsEnabledApp___block_invoke_15_cold_1(NSObject *a1, uint64_t a2, uint64_t *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    v6 = *(a2 + 32);
    v7 = *a3;
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v8, v9, OS_LOG_TYPE_INFO, v10, v11, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCHapticsLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6_4();
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_12_3(v2, v3, v4, v5, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_6_4();
  v1 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(v3))
  {
    v5 = *(*v1 + 48);
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __45___GCHapticServerManager_removeHapticClient___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_6_4();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_11_3(v3))
  {
    v5 = *(*v1 + 88);
    OUTLINED_FUNCTION_0_20();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __55___GCHapticServerManager_logicalDeviceWasUnregistered___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_4();
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*v1 + 8) + 40);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v4, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __55___GCHapticServerManager_notifyPlayerNoLongerRetained___block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCHapticsLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *a1;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_12_3(v4, v5, v6, v7, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end