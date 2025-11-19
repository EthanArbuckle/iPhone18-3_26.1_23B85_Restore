@interface _LTLanguageAvailability
- (_LTLanguageAvailability)init;
- (_LTLanguageAvailabilityDelegate)delegate;
- (_LTTextSessionLocaleProviding)localeProvider;
- (id)_uniqueLocalesFromSupportedPairs:(id)a3;
- (void)_cachedLocaleStatusWithCompletion:(id)a3;
- (void)_checkStatusWithSourceLanguage:(id)a3 targetLanguage:(id)a4 sourceSample:(id)a5 completion:(id)a6;
- (void)_didUpdateCachedValues;
- (void)_installedLocalesWithCompletion:(id)a3;
- (void)_supportedLocalePairsWithCompletion:(id)a3;
- (void)_updateCachedValues;
- (void)currentlyInstalledLocalesWithCompletion:(id)a3;
- (void)localeProviderSupportedLocalePairsWithCompletion:(id)a3;
- (void)preflightChecker:(id)a3 continueCheckingFromStep:(int64_t)a4 forConfiguration:(id)a5 completion:(id)a6;
- (void)setLocaleProvider:(id)a3;
- (void)statusFromLanguage:(id)a3 toLanguage:(id)a4 completion:(id)a5;
- (void)supportedLanguagesWithCompletion:(id)a3;
@end

@implementation _LTLanguageAvailability

- (_LTLanguageAvailability)init
{
  v17.receiver = self;
  v17.super_class = _LTLanguageAvailability;
  v2 = [(_LTLanguageAvailability *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v2->_localeProvider, v2);
    v4 = objc_alloc_init(_LTPreflightChecker);
    preflightChecker = v3->_preflightChecker;
    v3->_preflightChecker = v4;

    [(_LTPreflightChecker *)v3->_preflightChecker setDelegate:v3];
    objc_initWeak(&location, v3);
    v6 = [_LTLanguageStatus alloc];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __31___LTLanguageAvailability_init__block_invoke;
    v14 = &unk_278B6CDA8;
    objc_copyWeak(&v15, &location);
    v7 = [(_LTLanguageStatus *)v6 initWithTaskHint:8 useDedicatedMachPort:1 observations:&v11];
    languageStatusListener = v3->_languageStatusListener;
    v3->_languageStatusListener = v7;

    [(_LTLanguageAvailability *)v3 _updateCachedValues:v11];
    v9 = v3;
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)supportedLanguagesWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60___LTLanguageAvailability_supportedLanguagesWithCompletion___block_invoke;
  v6[3] = &unk_278B6CDD0;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(_LTLanguageAvailability *)self _supportedLocalePairsWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)statusFromLanguage:(id)a3 toLanguage:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68___LTLanguageAvailability_statusFromLanguage_toLanguage_completion___block_invoke;
  v10[3] = &unk_278B6CDF8;
  v11 = v8;
  v9 = v8;
  [(_LTLanguageAvailability *)self _checkStatusWithSourceLanguage:a3 targetLanguage:a4 sourceSample:0 completion:v10];
}

- (void)_checkStatusWithSourceLanguage:(id)a3 targetLanguage:(id)a4 sourceSample:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __97___LTLanguageAvailability__checkStatusWithSourceLanguage_targetLanguage_sourceSample_completion___block_invoke;
  v18[3] = &unk_278B6CEC0;
  objc_copyWeak(&v23, &location);
  v14 = v12;
  v19 = v14;
  v15 = v10;
  v20 = v15;
  v16 = v11;
  v21 = v16;
  v17 = v13;
  v22 = v17;
  [(_LTLanguageAvailability *)self _supportedLocalePairsWithCompletion:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)setLocaleProvider:(id)a3
{
  objc_storeWeak(&self->_localeProvider, a3);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45___LTLanguageAvailability_setLocaleProvider___block_invoke;
  v4[3] = &unk_278B6CEE8;
  v4[4] = self;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  __45___LTLanguageAvailability_setLocaleProvider___block_invoke(v4);
  os_unfair_lock_unlock(&self->_lock);
  [(_LTLanguageAvailability *)self _updateCachedValues];
}

- (void)_updateCachedValues
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__17;
  v19 = __Block_byref_object_dispose__18;
  v20 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = __46___LTLanguageAvailability__updateCachedValues__block_invoke;
  v12 = &unk_278B6CD80;
  v13 = self;
  v14 = &v15;
  v3 = v10;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v11(v3);

  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(&location, v16[5]);
  objc_initWeak(&from, self);
  v4 = v16[5];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46___LTLanguageAvailability__updateCachedValues__block_invoke_2;
  v5[3] = &unk_278B6CF38;
  objc_copyWeak(&v6, &from);
  objc_copyWeak(&v7, &location);
  [v4 localeProviderSupportedLocalePairsWithCompletion:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v15, 8);
}

- (void)_didUpdateCachedValues
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__17;
  v22 = __Block_byref_object_dispose__18;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __49___LTLanguageAvailability__didUpdateCachedValues__block_invoke;
  v8 = &unk_278B6CF60;
  v9 = self;
  v10 = &v18;
  v11 = &v12;
  v3 = v6;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7(v3);

  os_unfair_lock_unlock(&self->_lock);
  v4 = v13[5];
  if (v4)
  {
    (*(v4 + 16))(v4, v19[5]);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained languageAvailabilityDidUpdate:self];
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

- (id)_uniqueLocalesFromSupportedPairs:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 sourceLocale];
        [v4 addObject:v11];

        v12 = [v10 targetLocale];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 allObjects];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_supportedLocalePairsWithCompletion:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__17;
  v22 = __Block_byref_object_dispose__18;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v14 = __63___LTLanguageAvailability__supportedLocalePairsWithCompletion___block_invoke;
  v15 = &unk_278B6CD80;
  v16 = self;
  v17 = &v18;
  v5 = v13;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v14(v5);

  os_unfair_lock_unlock(&self->_lock);
  if (v19[5])
  {
    v4[2](v4);
  }

  else
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v8 = __63___LTLanguageAvailability__supportedLocalePairsWithCompletion___block_invoke_2;
    v9 = &unk_278B6CFB0;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    v6 = v7;
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    v8(v6);

    os_unfair_lock_unlock(&self->_lock);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v18, 8);
}

- (void)_cachedLocaleStatusWithCompletion:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__17;
  v22 = __Block_byref_object_dispose__18;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v14 = __61___LTLanguageAvailability__cachedLocaleStatusWithCompletion___block_invoke;
  v15 = &unk_278B6CD80;
  v16 = self;
  v17 = &v18;
  v5 = v13;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v14(v5);

  os_unfair_lock_unlock(&self->_lock);
  if (v19[5])
  {
    v4[2](v4);
  }

  else
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v8 = __61___LTLanguageAvailability__cachedLocaleStatusWithCompletion___block_invoke_2;
    v9 = &unk_278B6CFB0;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    v6 = v7;
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    v8(v6);

    os_unfair_lock_unlock(&self->_lock);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v18, 8);
}

- (void)_installedLocalesWithCompletion:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__17;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v15 = __59___LTLanguageAvailability__installedLocalesWithCompletion___block_invoke;
  v16 = &unk_278B6CD80;
  v17 = self;
  v18 = &v19;
  v5 = v14;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v15(v5);

  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(&location, v20[5]);
  objc_initWeak(&from, self);
  v6 = v20[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___LTLanguageAvailability__installedLocalesWithCompletion___block_invoke_2;
  v8[3] = &unk_278B6D000;
  objc_copyWeak(&v10, &from);
  objc_copyWeak(&v11, &location);
  v7 = v4;
  v9 = v7;
  [v6 currentlyInstalledLocalesWithCompletion:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v19, 8);
}

- (void)localeProviderSupportedLocalePairsWithCompletion:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76___LTLanguageAvailability_localeProviderSupportedLocalePairsWithCompletion___block_invoke;
  v5[3] = &unk_278B6D028;
  v6 = v3;
  v4 = v3;
  [_LTTranslator availableLocalePairsForTask:5 useDedicatedMachPort:1 completion:v5];
}

- (void)currentlyInstalledLocalesWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67___LTLanguageAvailability_currentlyInstalledLocalesWithCompletion___block_invoke;
  v6[3] = &unk_278B6CDD0;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(_LTLanguageAvailability *)self _cachedLocaleStatusWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)preflightChecker:(id)a3 continueCheckingFromStep:(int64_t)a4 forConfiguration:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (a4 == 2)
  {
    v14 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_LTLanguageAvailability preflightChecker:continueCheckingFromStep:forConfiguration:completion:];
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = [v10 effectiveSourceLocale];
    v17 = [v10 effectiveTargetLocale];
    v13 = [v15 lt_unsupportedPairingErrorWithSource:v16 target:v17];

    if (v13)
    {
      goto LABEL_6;
    }

LABEL_10:
    v11[2](v11, v10, 0);
    goto LABEL_11;
  }

  if (a4)
  {
    goto LABEL_10;
  }

  v12 = _LTOSLogTextAPI();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [_LTLanguageAvailability preflightChecker:continueCheckingFromStep:forConfiguration:completion:];
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:21 userInfo:0];
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_6:
  (v11)[2](v11, 0, v13);

LABEL_11:
}

- (_LTTextSessionLocaleProviding)localeProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_localeProvider);

  return WeakRetained;
}

- (_LTLanguageAvailabilityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end