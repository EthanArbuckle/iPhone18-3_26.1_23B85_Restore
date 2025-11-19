@interface GCHapticClientProxy
@end

@implementation GCHapticClientProxy

void __60___GCHapticClientProxy__initWithConnection_server_clientID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 invalidate];
}

void __71___GCHapticClientProxy_InvalidationObservable__addInvalidationHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = [v3 invalidationHandlers];
    v5 = [v4 mutableCopy];

    v6 = _Block_copy(*(a1 + 32));
    [v5 removeObject:v6];

    [v3 setInvalidationHandlers:v5];
    objc_sync_exit(v3);

    WeakRetained = v7;
  }
}

void __62___GCHapticClientProxy_HapticServer__queryCapabilities_reply___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isEqualToString:@"SupportsAudioPlayback"] || objc_msgSend(v3, "isEqualToString:", @"SupportsAdvancedPatternPlayers"))
  {
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"HapticContinuousTimeLimit"])
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
    [v4 setObject:v5 forKey:v3];
LABEL_8:

    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"UsingInternalHaptics"])
  {
LABEL_7:
    v6 = *(a1 + 32);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:0];
    [v6 setObject:v5 forKey:v3];
    goto LABEL_8;
  }

  if (*(a1 + 40))
  {
    if ([v3 isEqualToString:@"HapticTransientDefaultIntensity"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HapticTransientDefaultSharpness") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HapticContinuousDefaultIntensity") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HapticContinuousDefaultSharpness"))
    {
      v8 = &unk_1F4E8F570;
LABEL_17:
      [*(a1 + 32) setObject:v8 forKey:v3];
      goto LABEL_9;
    }

    if ([v3 isEqualToString:@"HapticTransientEventIDs"])
    {
      v9 = *(a1 + 48);
      v10 = &unk_1F4E8F4F8;
      v11 = &unk_1F4E8F4E0;
      goto LABEL_24;
    }

    if ([v3 isEqualToString:@"HapticContinuousSustainedEventIDs"])
    {
      v9 = *(a1 + 48);
      v10 = &unk_1F4E8F528;
      v11 = &unk_1F4E8F510;
      goto LABEL_24;
    }

    if ([v3 isEqualToString:@"HapticContinuousNonsustainedEventIDs"])
    {
      v9 = *(a1 + 48);
      v10 = &unk_1F4E8F558;
      v11 = &unk_1F4E8F540;
LABEL_24:
      if (v9)
      {
        v8 = v11;
      }

      else
      {
        v8 = v10;
      }

      goto LABEL_17;
    }
  }

LABEL_9:
  if (gc_isInternalBuild())
  {
    v12 = getGCHapticsLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [*(a1 + 32) objectForKeyedSubscript:v3];
      v14 = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_1D2CD5000, v12, OS_LOG_TYPE_INFO, "Set %@ to %@", &v14, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __64___GCHapticClientProxy_HapticServer__teardownAndReleaseChannels__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (gc_isInternalBuild())
  {
    __64___GCHapticClientProxy_HapticServer__teardownAndReleaseChannels__block_invoke_cold_1(a1);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 224);
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

        v6 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v5), v9}];
        [v6 teardown];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  result = [*(*(a1 + 32) + 224) removeAllObjects];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __53___GCHapticClientProxy_HapticServer__releaseChannels__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (gc_isInternalBuild())
  {
    __53___GCHapticClientProxy_HapticServer__releaseChannels__block_invoke_cold_1(a1);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 224);
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

        v6 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v5), v9}];
        [v6 setRetainedByClient:0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  result = [*(*(a1 + 32) + 224) removeAllObjects];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __60___GCHapticClientProxy_HapticServer__requestChannels_reply___block_invoke(void *a1)
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (gc_isInternalBuild())
  {
    __60___GCHapticClientProxy_HapticServer__requestChannels_reply___block_invoke_cold_1(a1);
  }

  v2 = a1 + 4;
  v3 = a1[6];
  if (v3 < [*(a1[4] + 224) count])
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a1[7] object:a1[4] file:@"GCHapticClientProxy.mm" lineNumber:566 description:@"Client attempting to request fewer channels than already reserved"];
  }

  v4 = a1[6];
  v5 = [*(a1[4] + 224) count];
  v6 = +[_GCHapticServerManager sharedInstance];
  v26 = [v6 __onqueue_reserveChannels:v4 - v5 forClient:a1[4]];

  if (v26)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = v26;
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = *v32;
      do
      {
        v10 = 0;
        do
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v31 + 1) + 8 * v10);
          ++*(*v2 + 168);
          v12 = *(*v2 + 224);
          v13 = [v11 identifier];
          [v12 setObject:v11 forKey:v13];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }

    v14 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = *(*v2 + 224);
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v16)
    {
      v17 = *v28;
      do
      {
        v18 = 0;
        do
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [*(*v2 + 224) objectForKeyedSubscript:*(*(&v27 + 1) + 8 * v18)];
          v20 = [v19 identifier];
          [v14 addObject:v20];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v16);
    }

    if (gc_isInternalBuild())
    {
      getGCHapticsLogger();
      objc_claimAutoreleasedReturnValue();
      __60___GCHapticClientProxy_HapticServer__requestChannels_reply___block_invoke_cold_2();
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v21 = a1[5];
    v22 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A578];
    v38[0] = @"Client not registred";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v23 = [v22 errorWithDomain:@"GameControllerHaptics" code:0 userInfo:v14];
    (*(v21 + 16))(v21, 0, v23);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __58___GCHapticClientProxy_HapticServer__removeChannel_reply___block_invoke(void *a1)
{
  if (gc_isInternalBuild())
  {
    __58___GCHapticClientProxy_HapticServer__removeChannel_reply___block_invoke_cold_1(a1);
  }

  v2 = *(a1[4] + 224);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    [v4 setRetainedByClient:0];
    v5 = *(a1[4] + 224);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
    [v5 removeObjectForKey:v6];
    v7 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    [v6 setValue:@"Attempting to remove channel that client does not have" forKey:*MEMORY[0x1E696A578]];
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"Game Controller Haptics" code:-4804 userInfo:v6];
  }

  if (gc_isInternalBuild())
  {
    getGCHapticsLogger();
    objc_claimAutoreleasedReturnValue();
    __58___GCHapticClientProxy_HapticServer__removeChannel_reply___block_invoke_cold_2();
  }

  (*(a1[5] + 16))();
}

void __64___GCHapticClientProxy_HapticServer__teardownAndReleaseChannels__block_invoke_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = getGCHapticsLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 176);
    v6 = *(v4 + 224);
    OUTLINED_FUNCTION_10_9();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __53___GCHapticClientProxy_HapticServer__releaseChannels__block_invoke_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCHapticsLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(*(a1 + 32) + 176);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __60___GCHapticClientProxy_HapticServer__requestChannels_reply___block_invoke_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = getGCHapticsLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(*(a1 + 32) + 176);
    v5 = *(a1 + 48);
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __60___GCHapticClientProxy_HapticServer__requestChannels_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_12();
  v2 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_8_8(v3))
  {
    v4 = *(*v1 + 176);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __58___GCHapticClientProxy_HapticServer__removeChannel_reply___block_invoke_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = getGCHapticsLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = *(*(a1 + 32) + 176);
    v5 = *(a1 + 48);
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __58___GCHapticClientProxy_HapticServer__removeChannel_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6_4();
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(*v1 + 176);
    v5 = *(*v1 + 224);
    v6 = 134218242;
    v7 = v4;
    OUTLINED_FUNCTION_10_9();
    _os_log_debug_impl(&dword_1D2CD5000, v0, OS_LOG_TYPE_DEBUG, "HapticClient %lu - removeChannels - channels=%@", &v6, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end