@interface LTTextSession
@end

@implementation LTTextSession

uint64_t __38___LTTextSession_synchronizationQueue__block_invoke()
{
  synchronizationQueue_synchronizationQueue = dispatch_queue_create("com.apple.translation.TextSession", 0);

  return MEMORY[0x2821F96F8]();
}

void __52___LTTextSession_translateString_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

void __25___LTTextSession_cancel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained _isCancelled])
    {
      v4 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23AAF5000, v4, OS_LOG_TYPE_INFO, "Attempting to cancel already cancelled session; ignoring", buf, 2u);
      }
    }

    else
    {
      [v3 _invocationCancelledSELFLogging];
      v5 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7[0] = 0;
        _os_log_impl(&dword_23AAF5000, v5, OS_LOG_TYPE_INFO, "Attempting to cancel pending work from session", v7, 2u);
      }

      v6 = 1;
      if (*(a1 + 40))
      {
        v6 = 2;
      }

      v3[4] = v6;
      [v3[2] cancelPendingWork];
      [v3[5] removeAllObjects];
    }
  }
}

void __34___LTTextSession__prepareRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _invocationStartedSELFLogging:*(a1 + 32)];
    v4 = v3[5];
    v5 = [*(a1 + 32) logIdentifier];
    [v4 addObject:v5];

    if ([v3 _isCancelled])
    {
      v6 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __34___LTTextSession__prepareRequest___block_invoke_cold_1();
      }

      if (v3[4] == 1)
      {
        v7 = 23;
      }

      else
      {
        v7 = 22;
      }

      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:v7 userInfo:0];
      [*(a1 + 32) didReceiveError:v8 forInput:0];
      v9 = v3[5];
      v10 = [*(a1 + 32) logIdentifier];
      [v9 removeObject:v10];
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __34___LTTextSession__prepareRequest___block_invoke_11;
      v13[3] = &unk_278B6D7A0;
      objc_copyWeak(&v17, (a1 + 56));
      v14 = *(a1 + 40);
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v15 = v11;
      v16 = v12;
      [v3 _supportedLocalePairsWithCompletionHandler:v13];

      objc_destroyWeak(&v17);
    }
  }
}

void __34___LTTextSession__prepareRequest___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    v5 = [*(a1 + 40) batch];
    v6 = [v5 lt_hasObjectPassingTest:&__block_literal_global_14];

    if (v6 & 1) != 0 || ([*(a1 + 40) isForDownloadRequest])
    {
      v7 = [[_LTPreflightConfiguration alloc] initWithSession:*(a1 + 48) request:*(a1 + 40) supportedLocalePairs:v3];
      v8 = [*(a1 + 40) logIdentifier];
      [(_LTPreflightConfiguration *)v7 setSelfLoggingID:v8];

      v9 = [WeakRetained preflightChecker];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __34___LTTextSession__prepareRequest___block_invoke_16;
      v13[3] = &unk_278B6D778;
      v14 = *(a1 + 32);
      objc_copyWeak(&v16, (a1 + 56));
      v15 = *(a1 + 40);
      [v9 preflightConfiguration:v7 completion:v13];

      objc_destroyWeak(&v16);
      v10 = v14;
    }

    else
    {
      v11 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __34___LTTextSession__prepareRequest___block_invoke_11_cold_1();
      }

      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:3 userInfo:0];
      [*(a1 + 40) didReceiveError:v7 forInput:0];
      v12 = WeakRetained[5];
      v10 = [*(a1 + 40) logIdentifier];
      [v12 removeObject:v10];
    }
  }
}

BOOL __34___LTTextSession__prepareRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 sourceText];
  v3 = [v2 length] != 0;

  return v3;
}

void __34___LTTextSession__prepareRequest___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34___LTTextSession__prepareRequest___block_invoke_2_17;
  v10[3] = &unk_278B6D750;
  objc_copyWeak(&v14, (a1 + 48));
  v11 = v6;
  v12 = *(a1 + 40);
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v14);
}

void __34___LTTextSession__prepareRequest___block_invoke_2_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = _LTOSLogTextAPI();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __34___LTTextSession__prepareRequest___block_invoke_2_17_cold_1((a1 + 32));
      }

      [*(a1 + 40) didReceiveError:*(a1 + 32) forInput:0];
      v6 = WeakRetained[5];
      v7 = [*(a1 + 40) logIdentifier];
      [v6 removeObject:v7];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __34___LTTextSession__prepareRequest___block_invoke_2_17_cold_2(a1, v5);
      }

      v8 = [*(a1 + 48) resolvedSourceLocale];
      [*(a1 + 40) setResolvedSourceLocale:v8];

      v9 = [*(a1 + 48) resolvedTargetLocale];
      [*(a1 + 40) setResolvedTargetLocale:v9];

      [WeakRetained _beginBatchRequest:*(a1 + 40)];
    }
  }
}

void __37___LTTextSession__beginBatchRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (v8)
    {
      v10 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __37___LTTextSession__beginBatchRequest___block_invoke_cold_1(v8, a3, v10);
      }

      [*(a1 + 40) didReceiveError:v8 forInput:0];
      v11 = WeakRetained[5];
      v12 = [*(a1 + 40) logIdentifier];
      [v11 removeObject:v12];
    }

    else
    {
      v12 = [v7 targetText];
      v13 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        v18 = 134218240;
        v19 = a3;
        v20 = 2048;
        v21 = [v12 length];
        _os_log_impl(&dword_23AAF5000, v14, OS_LOG_TYPE_INFO, "Received result for item at index %zu; targetText length: %zu", &v18, 0x16u);
      }

      v15 = [*(a1 + 40) batch];
      v16 = [v15 objectAtIndexedSubscript:a3];

      [*(a1 + 40) didTranslateInput:v16 withResult:v7];
    }

    dispatch_group_leave(*(a1 + 48));
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __37___LTTextSession__beginBatchRequest___block_invoke_21(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 48);
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_INFO, "Finished translating all %zu inputs", &v8, 0xCu);
    }

    [*(a1 + 32) didComplete];
    v5 = WeakRetained[5];
    v6 = [*(a1 + 32) logIdentifier];
    [v5 removeObject:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __61___LTTextSession_translateRequest_forSession_perItemHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = [v5 sourceText];
    v8 = [v7 lt_isWhiteSpaceOnlyString];

    if (v8)
    {
      v9 = [_LTTextResult alloc];
      v10 = *(a1 + 32);
      v11 = [v5 sourceText];
      v12 = [v5 sourceText];
      v13 = [v5 clientIdentifier];
      v14 = [(_LTTextResult *)v9 initWithLocalePair:v10 sourceText:v11 targetText:v12 clientIdentifier:v13];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v15 = [MEMORY[0x277CCAD78] UUID];
      v16 = [_LTMultiParagraphTranslationRequest alloc];
      v17 = [v5 sourceText];
      v18 = *(a1 + 32);
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __61___LTTextSession_translateRequest_forSession_perItemHandler___block_invoke_2;
      v26 = &unk_278B6D7F0;
      objc_copyWeak(v31, (a1 + 56));
      v27 = *(a1 + 32);
      v28 = v5;
      v30 = *(a1 + 48);
      v31[1] = a3;
      v19 = v15;
      v29 = v19;
      v20 = [(_LTMultiParagraphTranslationRequest *)v16 initWithText:v17 localePair:v18 completionHandler:&v23];

      v21 = *(a1 + 40);
      v22 = [(_LTMultiParagraphTranslationRequest *)v20 paragraphRequests:v23];
      [v21 addObjectsFromArray:v22];

      [WeakRetained[6] setObject:v20 forKeyedSubscript:v19];
      objc_destroyWeak(v31);
    }
  }
}

void __61___LTTextSession_translateRequest_forSession_perItemHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v15)
    {
      v7 = [v15 translatedText];
      v8 = [v7 string];

      v9 = [_LTTextResult alloc];
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) sourceText];
      v12 = [*(a1 + 40) clientIdentifier];
      v13 = [(_LTTextResult *)v9 initWithLocalePair:v10 sourceText:v11 targetText:v8 clientIdentifier:v12];
    }

    else
    {
      v13 = 0;
    }

    v14 = *(a1 + 72);
    (*(*(a1 + 56) + 16))();
    [WeakRetained _didFinishMultiParagraphRequestWithUUID:*(a1 + 48)];
  }
}

void __88___LTTextSession_preflightChecker_continueCheckingFromStep_forConfiguration_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_INFO, "Preflight checker got to step that needs user intervention, asking delegate to respond", v4, 2u);
    }

    [WeakRetained _callDelegateOrGiveError:*(a1 + 32) forConfiguration:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void __88___LTTextSession_preflightChecker_continueCheckingFromStep_forConfiguration_completion___block_invoke_29(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (a2)
    {
      v5 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23AAF5000, v5, OS_LOG_TYPE_INFO, "All assets are already installed, proceeding with translation", buf, 2u);
      }

      v6 = *(a1 + 40);
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if ([WeakRetained isHeadless])
      {
        v7 = 16;
      }

      else
      {
        v7 = 20;
      }

      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:v7 userInfo:0];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __88___LTTextSession_preflightChecker_continueCheckingFromStep_forConfiguration_completion___block_invoke_30;
      v10[3] = &unk_278B6D840;
      v9 = *(a1 + 40);
      v11 = *(a1 + 48);
      [WeakRetained _callDelegateOrGiveError:v8 forConfiguration:v9 completion:v10];
    }
  }
}

void __88___LTTextSession_preflightChecker_continueCheckingFromStep_forConfiguration_completion___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _LTOSLogTextAPI();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __88___LTTextSession_preflightChecker_continueCheckingFromStep_forConfiguration_completion___block_invoke_30_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23AAF5000, v8, OS_LOG_TYPE_DEFAULT, "Finished waiting on download sheet, continuing with translation", v9, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __66___LTTextSession__checkDownloadStatusForConfiguration_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 3);
    v5 = [a1[4] resolvedSourceLocale];
    v6 = [a1[4] resolvedTargetLocale];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66___LTTextSession__checkDownloadStatusForConfiguration_completion___block_invoke_2;
    v7[3] = &unk_278B6D8B8;
    v8 = a1[5];
    objc_copyWeak(&v11, a1 + 7);
    v9 = a1[4];
    v10 = a1[6];
    [v4 statusFromLanguage:v5 toLanguage:v6 completion:v7];

    objc_destroyWeak(&v11);
  }
}

void __66___LTTextSession__checkDownloadStatusForConfiguration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66___LTTextSession__checkDownloadStatusForConfiguration_completion___block_invoke_3;
  v5[3] = &unk_278B6D890;
  objc_copyWeak(v8, (a1 + 56));
  v8[1] = a2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  dispatch_async(v4, v5);

  objc_destroyWeak(v8);
}

void __66___LTTextSession__checkDownloadStatusForConfiguration_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(a1 + 56) == 1 && [*(a1 + 32) isForDownloadApprovalOnly])
    {
      [v3 isHeadless];
    }

    (*(*(a1 + 40) + 16))();
    WeakRetained = v3;
  }
}

void __61___LTTextSession__supportedLocalePairsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61___LTTextSession__supportedLocalePairsWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_278B6D090;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __51___LTTextSession__translateRequest_perItemHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51___LTTextSession__translateRequest_perItemHandler___block_invoke_2;
  v12[3] = &unk_278B6D908;
  v9 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = a3;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

void __58___LTTextSession__didFinishMultiParagraphRequestWithUUID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[6] setObject:0 forKeyedSubscript:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __34___LTTextSession__prepareRequest___block_invoke_2_17_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __34___LTTextSession__prepareRequest___block_invoke_2_17_cold_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [v3 resolvedSourceLocale];
  v6 = [v5 _ltLocaleIdentifier];
  v7 = [*(a1 + 48) resolvedTargetLocale];
  v8 = [v7 _ltLocaleIdentifier];
  v10 = 138543618;
  v11 = v6;
  v12 = 2114;
  v13 = v8;
  _os_log_debug_impl(&dword_23AAF5000, v4, OS_LOG_TYPE_DEBUG, "Resolved preflight information, using source locale %{public}@, target locale %{public}@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __37___LTTextSession__beginBatchRequest___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_error_impl(&dword_23AAF5000, log, OS_LOG_TYPE_ERROR, "Failed to translate input %zu; returning error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __88___LTTextSession_preflightChecker_continueCheckingFromStep_forConfiguration_completion___block_invoke_30_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end