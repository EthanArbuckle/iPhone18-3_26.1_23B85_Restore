@interface LTTranslationSession
@end

@implementation LTTranslationSession

void __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) service];

  if (v2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v4 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_2;
    v9[3] = &unk_278B6DBE8;
    v5 = *(a1 + 32);
    v10 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_4;
    v6[3] = &unk_278B6DC38;
    objc_copyWeak(&v8, &location);
    v7 = *(a1 + 40);
    [_LTTranslator _getTextServiceProxyWithDelegate:v5 useDedicatedTextMachPort:v4 errorHandler:v9 block:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LTOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setService:v5];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 service];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_2_5;
  v10[3] = &unk_278B6DC10;
  objc_copyWeak(&v12, (a1 + 40));
  v11 = *(a1 + 32);
  [v9 configInfoForLocale:0 otherLocale:0 completion:v10];

  objc_destroyWeak(&v12);
}

void __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_2_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"RateLimitingMaximumPageLoadRequests"];
  v5 = [v4 unsignedIntValue];

  v6 = [v3 objectForKeyedSubscript:@"RateLimitingMaximumDynamicContentRequests"];

  v7 = [v6 unsignedIntValue];
  v8 = [[_LTRateLimiter alloc] initWithMaximumPageLoadRequest:v5 maximumDynamicContentRequests:v7];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setRateLimiter:v8];

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 translationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_3;
  block[3] = &unk_278B6D5E8;
  v13 = *(a1 + 32);
  dispatch_async(v11, block);
}

void __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _LTOSLogXPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_cold_1(a1, v4);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v6)
    {
      v7 = *v55;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v55 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v54 + 1) + 8 * i) completionHandler];
          (v9)[2](v9, 0, v3);
        }

        v6 = [v5 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v6);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      dispatch_assert_queue_V2(WeakRetained[10]);
      v11 = v5[9];
      if (v11 && (v12 = (a1 + 32), ([v11 allowedForRequests:{objc_msgSend(*(a1 + 32), "count")}] & 1) == 0))
      {
        v33 = _LTOSLogXPC();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_cold_2(v12, v33);
        }

        v34 = MEMORY[0x277CCA9B8];
        v35 = [MEMORY[0x277CCA8D8] mainBundle];
        v36 = [v35 localizedStringForKey:@"RATE_LIMIT_EXCEEDED_ERROR_DESCRIPTION" value:&stru_284DBB9B8 table:0];
        v32 = [v34 lt_errorWithCode:15 description:v36 userInfo:0];

        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        v50 = 0u;
        v26 = *v12;
        v37 = [v26 countByEnumeratingWithState:&v50 objects:v61 count:16];
        if (v37)
        {
          v38 = *v51;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v51 != v38)
              {
                objc_enumerationMutation(v26);
              }

              v40 = [*(*(&v50 + 1) + 8 * j) completionHandler];
              (v40)[2](v40, 0, v32);
            }

            v37 = [v26 countByEnumeratingWithState:&v50 objects:v61 count:16];
          }

          while (v37);
        }
      }

      else
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v13 = *(a1 + 32);
        v14 = [v13 countByEnumeratingWithState:&v46 objects:v60 count:16];
        if (v14)
        {
          v15 = *v47;
          do
          {
            for (k = 0; k != v14; ++k)
            {
              if (*v47 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v46 + 1) + 8 * k);
              v18 = v5[1];
              v19 = [v17 uniqueID];
              [v18 setObject:v17 forKeyedSubscript:v19];
            }

            v14 = [v13 countByEnumeratingWithState:&v46 objects:v60 count:16];
          }

          while (v14);
        }

        v20 = [*(a1 + 32) _ltCompactMap:&__block_literal_global_15];
        v21 = _LTOSLogXPC();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = *(a1 + 32);
          v23 = v21;
          v24 = [v22 count];
          *buf = 134217984;
          v59 = v24;
          _os_log_impl(&dword_23AAF5000, v23, OS_LOG_TYPE_INFO, "Session sending %zd requests", buf, 0xCu);
        }

        v25 = [*(a1 + 32) firstObject];
        v26 = [v25 requestContext];

        v27 = [v5[3] UUIDString];
        [v26 setSessionID:v27];

        [v26 setLogIdentifier:v5[6]];
        if (!v5[2])
        {
          [v26 setSourceURL:v5[5]];
          v28 = objc_alloc_init(_LTSafariLatencyLoggingRequest);
          v29 = [v26 localePair];
          [(_LTSafariLatencyLoggingRequest *)v28 setLocalePair:v29];

          v30 = v5[2];
          v5[2] = v28;
        }

        v31 = [v5 service];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_19;
        v42[3] = &unk_278B6DCD0;
        objc_copyWeak(&v45, (a1 + 40));
        v32 = v20;
        v43 = v32;
        v44 = *(a1 + 32);
        [v31 translateParagraphs:v32 withContext:v26 completion:v42];

        objc_destroyWeak(&v45);
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_19(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[10];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_2;
    v7[3] = &unk_278B6DCA8;
    v8 = v3;
    v9 = a1[4];
    v10 = a1[5];
    v11 = v5;
    dispatch_async(v6, v7);
  }
}

void __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = _LTOSLogTranslationEngine();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_2_cold_1(a1, v5, v2);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = *(a1 + 48);
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v11 completionHandler];

          if (v12)
          {
            v13 = [v11 completionHandler];
            v13[2](v13, 0, *v2);
          }

          v14 = *(*(a1 + 56) + 8);
          v15 = [v11 uniqueID];
          [v14 removeObjectForKey:v15];
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v8);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 40);
    v17 = v5;
    *buf = 134217984;
    v24 = [v16 count];
    _os_log_impl(&dword_23AAF5000, v17, OS_LOG_TYPE_INFO, "Finished sending %zu paragraphs", buf, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __42___LTTranslationSession_cancelPendingWork__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = _LTOSLogXPC();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __42___LTTranslationSession_cancelPendingWork__block_invoke_cold_1(v2);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = [WeakRetained sessionID];
      v6 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 138543362;
        v10 = v5;
        _os_log_impl(&dword_23AAF5000, v6, OS_LOG_TYPE_INFO, "Client requested to cancel pending work for sessionID %{public}@", &v9, 0xCu);
      }

      v7 = [v4 service];
      [v7 attemptToCancelRequestsWithSessionID:v5];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __41___LTTranslationSession_provideFeedback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _LTOSLogXPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41___LTTranslationSession_provideFeedback___block_invoke_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v6 = _LTOSLogUserFeedback();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_23AAF5000, v6, OS_LOG_TYPE_DEFAULT, "Session sending feedback", v10, 2u);
      }

      v7 = [*(a1 + 32) localePair];

      if (!v7)
      {
        v8 = [WeakRetained[2] localePair];
        [*(a1 + 32) setLocalePair:v8];
      }

      v9 = [WeakRetained[3] UUIDString];
      [*(a1 + 32) setSessionID:v9];

      [WeakRetained[7] log:*(a1 + 32)];
    }
  }
}

void __51___LTTranslationSession_markFirstParagraphComplete__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] markFirstParagraphComplete];
    WeakRetained = v2;
  }
}

void __41___LTTranslationSession_markProgressDone__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] markProgressDone];
    WeakRetained = v2;
  }
}

void __41___LTTranslationSession_markPageComplete__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[9] markPageLoaded];
    [v2[2] markPageComplete];
    [v2[7] log:v2[2]];
    WeakRetained = v2;
  }
}

void __59___LTTranslationSession_paragraphTranslation_result_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained[2] markResponse];
    v3 = [v7[1] objectForKeyedSubscript:*(a1 + 32)];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 completionHandler];

      if (v5)
      {
        v6 = [v4 completionHandler];
        v6[2](v6, *(a1 + 40), *(a1 + 48));
      }

      [v7[1] removeObjectForKey:*(a1 + 32)];
    }

    WeakRetained = v7;
  }
}

void __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_23AAF5000, v0, OS_LOG_TYPE_ERROR, "Error ensuring service connection %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_23AAF5000, v4, v5, "Translation XPC connection failure, ignoring %zu requests", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_cold_2(void **a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  [v2 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_23AAF5000, v4, v5, "Translation rate limit reached, ignoring %zu requests", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __60___LTTranslationSession_translate_useDedicatedTextMachPort___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = a2;
  [v4 count];
  v6 = *a3;
  OUTLINED_FUNCTION_1();
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&dword_23AAF5000, v5, OS_LOG_TYPE_ERROR, "Error sending %zd paragraphs %{public}@", v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __41___LTTranslationSession_provideFeedback___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_23AAF5000, v0, OS_LOG_TYPE_ERROR, "Translation XPC connection failure, abort sending session feedback: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end