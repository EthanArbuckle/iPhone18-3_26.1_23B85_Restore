@interface LTLanguageStatusMulticaster
@end

@implementation LTLanguageStatusMulticaster

uint64_t __38___LTLanguageStatusMulticaster_shared__block_invoke()
{
  shared_shared = objc_alloc_init(_LTLanguageStatusMulticaster);

  return MEMORY[0x2821F96F8]();
}

void __51___LTLanguageStatusMulticaster__removeAllObservers__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [WeakRetained[2] keyEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [v2[2] objectForKey:*(*(&v10 + 1) + 8 * v7)];
          if (v8)
          {
            [v2 _removeObserver:v8 forceCloseConnection:1];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __44___LTLanguageStatusMulticaster_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    v12 = WeakRetained;
    v4 = [*(a1 + 32) identifier];
    v5 = [v3 objectForKey:v4];

    WeakRetained = v12;
    if (!v5)
    {
      v6 = _keyForObserver(*(a1 + 32));
      if (([v12 _connectObserverIfNeeded:*(a1 + 32)] & 1) == 0)
      {
        v7 = [*(v12 + 3) objectForKeyedSubscript:v6];
        if (v7)
        {
          v8 = [*(a1 + 32) observations];
          (v8)[2](v8, v7);
        }
      }

      v9 = *(v12 + 2);
      v10 = *(a1 + 32);
      v11 = [v10 identifier];
      [v9 setObject:v10 forKey:v11];

      WeakRetained = v12;
    }
  }
}

void __69___LTLanguageStatusMulticaster__removeObserver_forceCloseConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] removeObjectForKey:*(a1 + 32)];
    [v3 _closeConnectionForced:*(a1 + 56) forIdentifier:*(a1 + 32) taskHint:*(a1 + 48) useDedicatedMachPort:*(a1 + 57)];
    WeakRetained = v3;
  }
}

uint64_t __99___LTLanguageStatusMulticaster__closeConnectionForced_forIdentifier_taskHint_useDedicatedMachPort___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = _keyForObserver(v3);
    v6 = [*(a1 + 40) isEqualToString:v7];
  }

  return v6;
}

void __52___LTLanguageStatusMulticaster__didEnterForeground___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _LTOSLogAssetObservation();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23AAF5000, v2, OS_LOG_TYPE_INFO, "Resuming language status observations for this process since it came into the foreground", buf, 2u);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [WeakRetained[2] keyEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [WeakRetained[2] objectForKey:*(*(&v10 + 1) + 8 * v7)];
          [WeakRetained _connectObserverIfNeeded:v8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __52___LTLanguageStatusMulticaster__didEnterBackground___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _LTOSLogAssetObservation();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23AAF5000, v2, OS_LOG_TYPE_INFO, "Pausing language status observations for this process since the app is backgrounding", buf, 2u);
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [WeakRetained[2] keyEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [WeakRetained[2] objectForKey:*(*(&v10 + 1) + 8 * v7)];
          [WeakRetained _closeConnectionForObserver:v8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __73___LTLanguageStatusMulticaster__multicastObservations_taskHint_progress___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _LTOSLogAssetObservation();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [_LTLanguageStatusObservation describeObservations:v4];
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&dword_23AAF5000, v5, OS_LOG_TYPE_DEFAULT, "Obsv mlcast [%@]", buf, 0xCu);
    }

    v7 = _keyForTaskHint(*(a1 + 48), *(a1 + 56));
    [WeakRetained[3] setObject:*(a1 + 32) forKeyedSubscript:v7];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [WeakRetained[2] keyEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [WeakRetained[2] objectForKey:v13];
          v15 = v14;
          if (v14)
          {
            if ([v14 taskHint] == *(a1 + 48) && *(a1 + 56) != objc_msgSend(v15, "useDedicatedMachPort"))
            {
              v16 = [v15 observations];
              v16[2](v16, *(a1 + 32));
            }
          }

          else
          {
            [WeakRetained[2] removeObjectForKey:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __67___LTLanguageStatusMulticaster__replayLastObservationsOnHeartbeat___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogAssetObservation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AAF5000, v2, OS_LOG_TYPE_DEFAULT, "Replaying last language status observations", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v24 = a1;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = WeakRetained[3];
    v27 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v27)
    {
      v26 = *v34;
      do
      {
        v5 = 0;
        do
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = v5;
          v6 = *(*(&v33 + 1) + 8 * v5);
          v7 = [v4[3] objectForKeyedSubscript:v6];
          v8 = _LTOSLogAssetObservation();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = v8;
            v10 = [_LTLanguageStatusObservation describeObservations:v7];
            *buf = 138412290;
            v39 = v10;
            _os_log_impl(&dword_23AAF5000, v9, OS_LOG_TYPE_DEFAULT, "Obsv replay [%@]", buf, 0xCu);
          }

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v11 = v4[2];
          v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v30;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v30 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v29 + 1) + 8 * i);
                v17 = [v4[2] objectForKey:v16];
                v18 = v17;
                if (v17)
                {
                  v19 = _keyForObserver(v17);
                  v20 = [v19 isEqualToString:v6];

                  if (v20)
                  {
                    v21 = [v18 observations];
                    (v21)[2](v21, v7);
                  }
                }

                else
                {
                  [v4[2] removeObjectForKey:v16];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v13);
          }

          v5 = v28 + 1;
        }

        while (v28 + 1 != v27);
        v27 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v27);
    }

    v22 = objc_loadWeakRetained((v24 + 32));
    [v22 _replayLastObservationsOnHeartbeat:*(v24 + 40)];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __108___LTLanguageStatusMulticaster__reconnectIfStreamingWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _startWithConnectionIdentifier:*(a1 + 32) taskHint:*(a1 + 48) useDedicatedMachPort:*(a1 + 56)];
    WeakRetained = v3;
  }
}

void __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = _LTOSLogAssetObservation();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_cold_1();
      }
    }

    [WeakRetained _reconnectIfStreamingWithConnectionIdentifier:*(a1 + 32) taskHint:*(a1 + 48) useDedicatedMachPort:*(a1 + 56)];
  }
}

void __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_2;
    v12[3] = &unk_278B6D1F0;
    v13 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v14 = v10;
    v16[1] = v11;
    objc_copyWeak(v16, (a1 + 40));
    v15 = v6;
    v17 = *(a1 + 56);
    dispatch_async(v9, v12);

    objc_destroyWeak(v16);
  }
}

void __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_3;
  v7[3] = &unk_278B6D1C8;
  objc_copyWeak(v10, (a1 + 56));
  v9 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v8 = v5;
  v10[1] = v6;
  v11 = *(a1 + 72);
  [v2 startLanguageStatusChangeObservation:v3 taskHint:v4 completion:v7];

  objc_destroyWeak(v10);
}

void __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = _LTOSLogAssetObservation();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_3_cold_1();
      }
    }

    (*(*(a1 + 40) + 16))();
    [WeakRetained _reconnectIfStreamingWithConnectionIdentifier:*(a1 + 32) taskHint:*(a1 + 56) useDedicatedMachPort:*(a1 + 64)];
  }
}

void __94___LTLanguageStatusMulticaster__cancelWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    v4 = [v2 domain];
    v5 = v4;
    if (v4 == *MEMORY[0x277CCA050])
    {
      v6 = [v3 code];

      if (v6 == 4099)
      {
        v7 = _LTOSLogAssetObservation();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v9 = 0;
          _os_log_impl(&dword_23AAF5000, v7, OS_LOG_TYPE_INFO, "Language status observation closed was expected so ignoring hangup error", v9, 2u);
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    v8 = _LTOSLogAssetObservation();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __94___LTLanguageStatusMulticaster__cancelWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_cold_1();
    }

LABEL_9:
  }
}

void __94___LTLanguageStatusMulticaster__cancelWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94___LTLanguageStatusMulticaster__cancelWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_2;
    block[3] = &unk_278B6D260;
    v11 = v5;
    v12 = *(a1 + 32);
    v13 = v6;
    dispatch_async(v9, block);
  }
}

uint64_t __94___LTLanguageStatusMulticaster__cancelWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cancelLanguageStatusChangeObservation:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Language status observation connection closed due to error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __93___LTLanguageStatusMulticaster__startWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Language status observation closed due to error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __94___LTLanguageStatusMulticaster__cancelWithConnectionIdentifier_taskHint_useDedicatedMachPort___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_23AAF5000, v0, v1, "Failed to cancel language status observations: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end