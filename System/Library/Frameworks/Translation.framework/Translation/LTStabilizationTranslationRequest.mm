@interface LTStabilizationTranslationRequest
@end

@implementation LTStabilizationTranslationRequest

uint64_t __59___LTStabilizationTranslationRequest__synchronizationQueue__block_invoke()
{
  _synchronizationQueue_synchronizationQueue = dispatch_queue_create("com.apple.translation.StabilizationRequest", 0);

  return MEMORY[0x2821F96F8]();
}

void __72___LTStabilizationTranslationRequest__startTranslationWithService_done___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[14];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72___LTStabilizationTranslationRequest__startTranslationWithService_done___block_invoke_2;
    v10[3] = &unk_278B6D570;
    v11 = v6;
    v12 = v8;
    v13 = v5;
    v14 = *(a1 + 32);
    dispatch_async(v9, v10);
  }
}

void __72___LTStabilizationTranslationRequest__startTranslationWithService_done___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = _LTOSLogSpeech();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72___LTStabilizationTranslationRequest__startTranslationWithService_done___block_invoke_2_cold_1(v2, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __72___LTStabilizationTranslationRequest__startTranslationWithService_done___block_invoke_2_cold_2(v5);
  }

  v6 = *(a1 + 40);
  if (*(v6 + 120) == 1)
  {
    v7 = _LTOSLogSpeech();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72___LTStabilizationTranslationRequest__startTranslationWithService_done___block_invoke_2_cold_3(v7);
    }
  }

  else
  {
    *(v6 + 120) = 1;
    [*(a1 + 48) setGeneration:{objc_msgSend(*(a1 + 40), "generation")}];
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    (*(*(*(a1 + 40) + 128) + 16))();
    (*(*(a1 + 56) + 16))();
  }
}

void __66___LTStabilizationTranslationRequest__translationFailedWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 120) == 1)
    {
      v4 = _LTOSLogSpeech();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_23AAF5000, v4, OS_LOG_TYPE_INFO, "Got an error in stabilization request, but already called the completion handler so ignoring it", v6, 2u);
      }
    }

    else
    {
      *(WeakRetained + 120) = 1;
      v5 = *(a1 + 32);
      (*(*(WeakRetained + 16) + 16))();
    }
  }
}

void __72___LTStabilizationTranslationRequest__startTranslationWithService_done___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_23AAF5000, a2, OS_LOG_TYPE_ERROR, "Got error when trying to translate with stabilization: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end