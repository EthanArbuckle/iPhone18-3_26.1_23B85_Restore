@interface LTPreflightChecker
@end

@implementation LTPreflightChecker

uint64_t __35___LTPreflightChecker__sharedQueue__block_invoke()
{
  _sharedQueue_sharedQueue = dispatch_queue_create("com.apple.translation.TextSession.PreflightChecker", 0);

  return MEMORY[0x2821F96F8]();
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = a1[4];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2;
    v4[3] = &unk_278B6D488;
    objc_copyWeak(&v8, a1 + 7);
    v5 = a1[5];
    v6 = a1[4];
    v7 = a1[6];
    [WeakRetained _checkTranslationSupportForConfiguration:v3 completion:v4];

    objc_destroyWeak(&v8);
  }
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (a2)
    {
      v5 = *(a1 + 40);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2;
      v11[3] = &unk_278B6D460;
      objc_copyWeak(&v15, (a1 + 56));
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      [WeakRetained _resolveSourceLocaleIfNeeded:v5 completion:v11];

      objc_destroyWeak(&v15);
    }

    else
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = [*(a1 + 40) effectiveSourceLocale];
      v8 = [*(a1 + 40) effectiveTargetLocale];
      v9 = [v6 lt_unsupportedPairingErrorWithSource:v7 target:v8];

      v10 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2_cold_1();
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    v5 = *(a1 + 40);
    if (v3)
    {
      [v5 setResolvedSourceLocale:v3];
      v6 = *(a1 + 40);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_3;
      v16[3] = &unk_278B6D460;
      objc_copyWeak(&v20, (a1 + 56));
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      [WeakRetained _resolveTargetLocaleIfNeeded:v6 completion:v16];

      objc_destroyWeak(&v20);
      goto LABEL_14;
    }

    v7 = [v5 requestedSourceLocale];

    if (v7)
    {
      v8 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2_cold_1((a1 + 40), v8);
      }

      v9 = MEMORY[0x277CCA9B8];
      v10 = [*(a1 + 40) requestedSourceLocale];
      v11 = [v9 lt_unsupportedSourceLanguageError:v10];
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:21 userInfo:0];
      v12 = [*(a1 + 40) sourceStrings];
      v13 = [v12 count];

      v14 = _LTOSLogTextAPI();
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23AAF5000, v15, OS_LOG_TYPE_DEFAULT, "Failed to identify source text, asking delegate to resolve it", buf, 2u);
        }

        [WeakRetained _callDelegateOrGiveError:v11 forConfiguration:*(a1 + 40) completion:*(a1 + 48)];
        goto LABEL_13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23AAF5000, v15, OS_LOG_TYPE_INFO, "Failed to identify source text because there aren't any source strings, returning LID failed error", buf, 2u);
      }
    }

    (*(*(a1 + 48) + 16))();
LABEL_13:
  }

LABEL_14:
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (v3)
    {
      [*(a1 + 40) setResolvedTargetLocale:v3];
      v5 = *(a1 + 40);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_4;
      v10[3] = &unk_278B6D438;
      objc_copyWeak(&v14, (a1 + 56));
      v11 = *(a1 + 32);
      v13 = *(a1 + 48);
      v12 = *(a1 + 40);
      [WeakRetained _resolveLocalePairingForConfiguration:v5 completion:v10];

      objc_destroyWeak(&v14);
    }

    else
    {
      v6 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_3_cold_1();
      }

      v7 = MEMORY[0x277CCA9B8];
      v8 = [*(a1 + 40) effectiveTargetLocale];
      v9 = [v7 lt_unsupportedTargetLanguageError:v8];

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (v3)
    {
      v5 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_4_cold_1();
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:13 userInfo:0];
      v7 = *(a1 + 40);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_5;
      v8[3] = &unk_278B6D410;
      objc_copyWeak(&v12, (a1 + 56));
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      [WeakRetained _callDelegateOrGiveError:v6 forConfiguration:v7 completion:v8];

      objc_destroyWeak(&v12);
    }
  }
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (v6)
    {
      if ([*(a1 + 40) isForDownloadApprovalOnly] && (objc_msgSend(*(a1 + 40), "isHeadless") & 1) == 0)
      {
        v10 = _LTOSLogTextAPI();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v13 = 138412290;
          v14 = v6;
          _os_log_impl(&dword_23AAF5000, v10, OS_LOG_TYPE_INFO, "Download-only request got error, but ignoring it since it's likely the user cancelled: %@", &v13, 0xCu);
        }

        if (!v5)
        {
          v11 = *(a1 + 40);
        }

        v9 = *(*(a1 + 48) + 16);
      }

      else
      {
        v8 = _LTOSLogTextAPI();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_5_cold_1();
        }

        v9 = *(*(a1 + 48) + 16);
      }
    }

    else
    {
      v9 = *(*(a1 + 48) + 16);
    }

    v9();
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __75___LTPreflightChecker__checkTranslationSupportForConfiguration_completion___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __76___LTPreflightChecker__callDelegateOrGiveError_forConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
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
    block[2] = __76___LTPreflightChecker__callDelegateOrGiveError_forConfiguration_completion___block_invoke_2;
    block[3] = &unk_278B6D500;
    v13 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

void __63___LTPreflightChecker__resolveSourceLocaleIfNeeded_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63___LTPreflightChecker__resolveSourceLocaleIfNeeded_completion___block_invoke_2;
  v10[3] = &unk_278B6D570;
  v11 = v5;
  v7 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __63___LTPreflightChecker__resolveSourceLocaleIfNeeded_completion___block_invoke_2(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    goto LABEL_3;
  }

  v2 = MEMORY[0x277CBEAF8];
  v22[0] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v4 = [*(a1 + 40) supportedLocales];
  v5 = [v2 lt_bestMatchForPreferredLocales:v3 fromSupportedLocales:v4];

  if (!v5)
  {
LABEL_3:
    v6 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 _ltLocaleIdentifier];
      v10 = *(a1 + 48) != 0;
      v18 = 138543618;
      v19 = v9;
      v20 = 1024;
      LODWORD(v21) = v10;
      _os_log_impl(&dword_23AAF5000, v8, OS_LOG_TYPE_INFO, "LID resolved source locale of '%{public}@' doesn't match any supportedLocales, considering the source language unsupported, and adding low confidence locales: %{BOOL}i", &v18, 0x12u);
    }

    [*(a1 + 40) setLidUnsupportedLocale:*(a1 + 32)];
    v5 = 0;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = [v11 _ltCompactMap:&__block_literal_global_19_0];
    v13 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v15 = v13;
      v16 = [v14 _ltLocaleIdentifier];
      v18 = 138543618;
      v19 = v16;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_23AAF5000, v15, OS_LOG_TYPE_INFO, "LID resolved source locale of '%{public}@', but also had low confidence locales so will need more user intervention: %{public}@", &v18, 0x16u);
    }

    [*(a1 + 40) setLowConfidenceLocales:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = [a1[4] copy];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_2;
    v5[3] = &unk_278B6D460;
    objc_copyWeak(&v9, a1 + 7);
    v6 = a1[5];
    v4 = v3;
    v7 = v4;
    v8 = a1[6];
    [WeakRetained _resolveTargetLocaleIfNeeded:v4 completion:v5];

    objc_destroyWeak(&v9);
  }
}

void __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (v3)
    {
      [*(a1 + 40) setResolvedTargetLocale:v3];
      v5 = *(a1 + 40);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_21;
      v10[3] = &unk_278B6D438;
      objc_copyWeak(&v14, (a1 + 56));
      v11 = *(a1 + 32);
      v13 = *(a1 + 48);
      v12 = *(a1 + 40);
      [WeakRetained _resolveLocalePairingForConfiguration:v5 completion:v10];

      objc_destroyWeak(&v14);
    }

    else
    {
      v6 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_2_cold_1();
      }

      v7 = MEMORY[0x277CCA9B8];
      v8 = [*(a1 + 40) effectiveTargetLocale];
      v9 = [v7 lt_unsupportedTargetLanguageError:v8];

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    if (v3)
    {
      v5 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_21_cold_1();
      }

      v6 = *(*(a1 + 48) + 16);
    }

    else
    {
      v7 = *(a1 + 40);
      v6 = *(*(a1 + 48) + 16);
    }

    v6();
  }
}

void __70___LTPreflightChecker_resolveSourceLocaleForConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 dominantLocale];
  v4 = [v11 lowConfidenceLocales];
  v5 = [_LTSELFLoggingInvocation alloc];
  v6 = [*(a1 + 32) selfLoggingID];
  v7 = [(_LTSELFLoggingInvocation *)v5 initWithInvocationId:v6];

  if (v3)
  {
    [(_LTSELFLoggingInvocation *)v7 languageIdentificationCompletedWithInputSource:1 topLocale:v3 lowConfidenceLocales:MEMORY[0x277CBEBF8]];
    v8 = *(*(a1 + 40) + 16);
LABEL_5:
    v8();
    goto LABEL_6;
  }

  if (v4)
  {
    [(_LTSELFLoggingInvocation *)v7 languageIdentificationCompletedWithInputSource:1 topLocale:0 lowConfidenceLocales:v4];
    v8 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  v9 = *(a1 + 40);
  v10 = [v11 dominantUnsupportedLocale];
  (*(v9 + 16))(v9, v10, 0);

LABEL_6:
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_2_cold_1(void **a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 requestedSourceLocale];
  v5 = [v4 _ltLocaleIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_23AAF5000, v6, v7, "Failed to validate requested source locale of %{public}@; reporting it's invalid", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_4_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke_5_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke_21_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end