@interface LTLanguageAvailability
@end

@implementation LTLanguageAvailability

void __31___LTLanguageAvailability_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __31___LTLanguageAvailability_init__block_invoke_cold_1(v5, v3);
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = __31___LTLanguageAvailability_init__block_invoke_2;
    v10 = &unk_278B6CD80;
    v12 = &v13;
    v11 = WeakRetained;
    v6 = v8;
    os_unfair_lock_assert_not_owner(WeakRetained + 2);
    os_unfair_lock_lock(WeakRetained + 2);
    v9(v6);

    os_unfair_lock_unlock(WeakRetained + 2);
    v7 = v14[5];
    if (v7)
    {
      (*(v7 + 16))(v7, v3);
    }

    _Block_object_dispose(&v13, 8);
  }
}

void __31___LTLanguageAvailability_init__block_invoke_2(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;
}

void __60___LTLanguageAvailability_supportedLanguagesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = [WeakRetained _uniqueLocalesFromSupportedPairs:v7];
    (*(v5 + 16))(v5, v6);
  }
}

void __68___LTLanguageAvailability_statusFromLanguage_toLanguage_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_23AAF5000, v5, OS_LOG_TYPE_INFO, "Got an error when checking status so returning unsupported: %@", &v8, 0xCu);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();

  v7 = *MEMORY[0x277D85DE8];
}

void __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v15[0] = *(a1 + 32);
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    }

    else
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    v6 = [[_LTPreflightConfiguration alloc] initWithSourceStrings:v5 supportedLocalePairs:v3];
    [(_LTPreflightConfiguration *)v6 setRequestedSourceLocale:*(a1 + 40)];
    [(_LTPreflightConfiguration *)v6 setRequestedTargetLocale:*(a1 + 48)];
    v7 = WeakRetained[6];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2;
    v9[3] = &unk_278B6CE98;
    objc_copyWeak(&v14, (a1 + 64));
    v13 = *(a1 + 56);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = v3;
    [v7 preflightConfiguration:v6 completion:v9];

    objc_destroyWeak(&v14);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:11 userInfo:0];
      v9 = [v6 domain];
      v10 = [v8 domain];
      if ([v9 isEqualToString:v10])
      {
        v11 = [v6 code];
        v12 = [v8 code];

        if (v11 == v12)
        {
          v13 = _LTOSLogTextAPI();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23AAF5000, v13, OS_LOG_TYPE_INFO, "Preflight checks determined the language pairing isn't supported; returning unsupported rather than an error", buf, 2u);
          }

          (*(*(a1 + 56) + 16))();
          goto LABEL_35;
        }
      }

      else
      {
      }

      v24 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2_cold_1();
      }

      goto LABEL_22;
    }

    if ([v5 nextStep] != 1)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:21 userInfo:0];
      v25 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2_cold_2();
      }

LABEL_22:
      (*(*(a1 + 56) + 16))();
LABEL_35:

      goto LABEL_36;
    }

    v8 = [v5 resolvedSourceLocale];
    v14 = [v5 resolvedTargetLocale];
    v15 = _LTOSLogTextAPI();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (!v8 || !v14)
    {
      if (v16)
      {
        v26 = *(a1 + 32);
        v27 = v15;
        v28 = [v26 _ltLocaleIdentifier];
        v29 = [*(a1 + 40) _ltLocaleIdentifier];
        *buf = 138543618;
        v44 = v28;
        v45 = 2114;
        v46 = v29;
        _os_log_impl(&dword_23AAF5000, v27, OS_LOG_TYPE_INFO, "Unable to determine language status since source ('%{public}@') or target ('%{public}@') language isn't supported", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_34;
    }

    if (v16)
    {
      v17 = v15;
      v18 = [v8 _ltLocaleIdentifier];
      v19 = [v14 _ltLocaleIdentifier];
      *buf = 138543618;
      v44 = v18;
      v45 = 2114;
      v46 = v19;
      _os_log_impl(&dword_23AAF5000, v17, OS_LOG_TYPE_INFO, "Checking language status for validated locales of source '%{public}@' and target '%{public}@'", buf, 0x16u);
    }

    v20 = *(a1 + 48);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_8;
    v40[3] = &unk_278B6CE20;
    v21 = v8;
    v41 = v21;
    v22 = v14;
    v42 = v22;
    if ([v20 lt_hasObjectPassingTest:v40])
    {
      if (![WeakRetained allowOnlineTranslation] || !_LTIsInternalInstall())
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_10;
        v35[3] = &unk_278B6CE70;
        objc_copyWeak(&v39, (a1 + 64));
        v36 = v21;
        v37 = v22;
        v38 = *(a1 + 56);
        [WeakRetained _installedLocalesWithCompletion:v35];

        objc_destroyWeak(&v39);
        goto LABEL_33;
      }

      v23 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23AAF5000, v23, OS_LOG_TYPE_INFO, "Not checking installed locales since online translation is allowed, just reporting the pairing is installed", buf, 2u);
      }
    }

    else
    {
      v30 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = v30;
        v32 = [v21 _ltLocaleIdentifier];
        v33 = [v22 _ltLocaleIdentifier];
        *buf = 138543618;
        v44 = v32;
        v45 = 2114;
        v46 = v33;
        _os_log_impl(&dword_23AAF5000, v31, OS_LOG_TYPE_INFO, "Returning unsupported language pairing since there's no supported pairing from '%{public}@' to '%{public}@'", buf, 0x16u);
      }
    }

    (*(*(a1 + 56) + 16))();
LABEL_33:

LABEL_34:
    goto LABEL_35;
  }

LABEL_36:

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceLocale];
  if ([v4 _ltEqual:*(a1 + 32)])
  {
    v5 = [v3 targetLocale];
    v6 = [v5 _ltEqual:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2_11;
    v39[3] = &unk_278B6CE48;
    v40 = *(a1 + 32);
    v8 = [v5 lt_hasObjectPassingTest:v39];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_3;
    v37[3] = &unk_278B6CE48;
    v38 = *(a1 + 40);
    v9 = [v5 lt_hasObjectPassingTest:v37];
    v10 = v9;
    if (v8 && v9)
    {
      v11 = _LTOSLogTextAPI();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v13 = v11;
        v14 = [v12 _ltLocaleIdentifier];
        v15 = [*(a1 + 40) _ltLocaleIdentifier];
        *buf = 138543618;
        v42 = v14;
        v43 = 2114;
        v44 = v15;
        _os_log_impl(&dword_23AAF5000, v13, OS_LOG_TYPE_INFO, "Both source ('%{public}@') and target ('%{public}@') languages are installed", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_13;
      v35[3] = &unk_278B6CE48;
      v36 = *(a1 + 32);
      v16 = [v6 lt_hasObjectPassingTest:v35];
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2_14;
      v33 = &unk_278B6CE48;
      v34 = *(a1 + 40);
      v17 = [v6 lt_hasObjectPassingTest:&v30];
      v18 = v16 | v8;
      v19 = _LTOSLogTextAPI();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
      if (v18 & 1) != 0 && ((v17 | v10))
      {
        if (v20)
        {
          v21 = *(a1 + 32);
          v22 = v19;
          v23 = [v21 _ltLocaleIdentifier];
          v24 = [*(a1 + 40) _ltLocaleIdentifier];
          *buf = 138543618;
          v42 = v23;
          v43 = 2114;
          v44 = v24;
          _os_log_impl(&dword_23AAF5000, v22, OS_LOG_TYPE_INFO, "Both source ('%{public}@') and target ('%{public}@') languages are at least downloading, saying this pairing is downloading", buf, 0x16u);
        }
      }

      else if (v20)
      {
        v25 = *(a1 + 32);
        v26 = v19;
        v27 = [v25 _ltLocaleIdentifier];
        v28 = [*(a1 + 40) _ltLocaleIdentifier];
        *buf = 138543618;
        v42 = v27;
        v43 = 2114;
        v44 = v28;
        _os_log_impl(&dword_23AAF5000, v26, OS_LOG_TYPE_INFO, "Either source ('%{public}@') and/or target ('%{public}@') language isn't installed or downloading, saying this pairing is supported but not installed or downloading", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __45___LTLanguageAvailability_setLocaleProvider___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

uint64_t __46___LTLanguageAvailability__updateCachedValues__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

void __46___LTLanguageAvailability__updateCachedValues__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v8 = __46___LTLanguageAvailability__updateCachedValues__block_invoke_3;
    v9 = &unk_278B6CF10;
    v10 = WeakRetained;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = v3;
    v6 = v7;
    os_unfair_lock_assert_not_owner(v5 + 2);
    os_unfair_lock_lock(v5 + 2);
    v8(v6);

    os_unfair_lock_unlock(v5 + 2);
    [(os_unfair_lock_s *)v5 _didUpdateCachedValues];

    objc_destroyWeak(&v12);
  }
}

void __46___LTLanguageAvailability__updateCachedValues__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained == v3)
  {
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    MEMORY[0x2821F96F8]();
  }
}

void __49___LTLanguageAvailability__didUpdateCachedValues__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 16));
  v2 = _Block_copy(*(a1[4] + 24));
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[4];
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;
}

void __63___LTLanguageAvailability__supportedLocalePairsWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _Block_copy(*(WeakRetained + 3));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63___LTLanguageAvailability__supportedLocalePairsWithCompletion___block_invoke_3;
    aBlock[3] = &unk_278B6CF88;
    objc_copyWeak(&v11, (a1 + 40));
    v9 = v4;
    v10 = *(a1 + 32);
    v5 = v4;
    v6 = _Block_copy(aBlock);
    v7 = v3[3];
    v3[3] = v6;

    objc_destroyWeak(&v11);
  }
}

void __63___LTLanguageAvailability__supportedLocalePairsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))(v4, v5);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __61___LTLanguageAvailability__cachedLocaleStatusWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) cachedStatus];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __61___LTLanguageAvailability__cachedLocaleStatusWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _Block_copy(*(WeakRetained + 4));
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __61___LTLanguageAvailability__cachedLocaleStatusWithCompletion___block_invoke_3;
    aBlock[3] = &unk_278B6CF88;
    objc_copyWeak(&v11, (a1 + 40));
    v9 = v4;
    v10 = *(a1 + 32);
    v5 = v4;
    v6 = _Block_copy(aBlock);
    v7 = v3[4];
    v3[4] = v6;

    objc_destroyWeak(&v11);
  }
}

void __61___LTLanguageAvailability__cachedLocaleStatusWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))(v4, v5);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __59___LTLanguageAvailability__installedLocalesWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

void __59___LTLanguageAvailability__installedLocalesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v12 = __59___LTLanguageAvailability__installedLocalesWithCompletion___block_invoke_3;
    v13 = &unk_278B6CFD8;
    v14 = WeakRetained;
    v15 = &v17;
    objc_copyWeak(&v16, (a1 + 48));
    v9 = v11;
    os_unfair_lock_assert_not_owner(v8 + 2);
    os_unfair_lock_lock(v8 + 2);
    v12(v9);

    os_unfair_lock_unlock(v8 + 2);
    v10 = *(a1 + 32);
    if (*(v18 + 24) == 1)
    {
      [(os_unfair_lock_s *)v8 _installedLocalesWithCompletion:v10];
    }

    else
    {
      (*(v10 + 16))(*(a1 + 32), v5, v6);
    }

    objc_destroyWeak(&v16);
    _Block_object_dispose(&v17, 8);
  }
}

void __59___LTLanguageAvailability__installedLocalesWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v2 = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = WeakRetained != v2;
}

void __67___LTLanguageAvailability_currentlyInstalledLocalesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8;
    v10 = *v22;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 status];
        v14 = v5;
        if (v13 != 2)
        {
          if (v13 != 1)
          {
            continue;
          }

          v14 = v6;
        }

        v15 = [v12 locale];
        [v14 addObject:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v9)
      {
LABEL_13:

        v16 = *(a1 + 32);
        v17 = [v5 copy];
        v18 = [v6 copy];
        (*(v16 + 16))(v16, v17, v18);

        v3 = v20;
        break;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __31___LTLanguageAvailability_init__block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5 = 134217984;
  v6 = [a2 count];
  _os_log_debug_impl(&dword_23AAF5000, v3, OS_LOG_TYPE_DEBUG, "Got updated list of %zu language statuses", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end