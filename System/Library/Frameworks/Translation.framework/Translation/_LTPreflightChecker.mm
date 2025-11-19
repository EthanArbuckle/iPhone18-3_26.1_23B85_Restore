@interface _LTPreflightChecker
+ (id)_sharedQueue;
- (_LTPreflightChecker)init;
- (_LTPreflightCheckerDelegate)delegate;
- (_LTPreflightLocaleResolving)localeResolver;
- (void)_callDelegateOrGiveError:(id)a3 forConfiguration:(id)a4 completion:(id)a5;
- (void)_checkTranslationSupportForConfiguration:(id)a3 completion:(id)a4;
- (void)_resolveLocalePairingForConfiguration:(id)a3 completion:(id)a4;
- (void)_resolveSourceLocaleIfNeeded:(id)a3 completion:(id)a4;
- (void)_resolveTargetLocaleIfNeeded:(id)a3 completion:(id)a4;
- (void)preflightConfiguration:(id)a3 completion:(id)a4;
- (void)resolveSourceLocaleForConfiguration:(id)a3 completion:(id)a4;
- (void)resolveTargetLocaleIfNeeded:(id)a3 completion:(id)a4;
@end

@implementation _LTPreflightChecker

- (_LTPreflightChecker)init
{
  v8.receiver = self;
  v8.super_class = _LTPreflightChecker;
  v2 = [(_LTPreflightChecker *)&v8 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_localeResolver, v2);
    v4 = [objc_opt_class() _sharedQueue];
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = v3;
  }

  return v3;
}

+ (id)_sharedQueue
{
  if (_sharedQueue_onceToken != -1)
  {
    +[_LTPreflightChecker _sharedQueue];
  }

  v3 = _sharedQueue_sharedQueue;

  return v3;
}

- (void)preflightConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = self->_queue;
  v8 = [a3 copy];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke;
  block[3] = &unk_278B6D4B0;
  objc_copyWeak(&v16, &location);
  v13 = v8;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_checkTranslationSupportForConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_queue;
  dispatch_assert_queue_V2(v8);
  v9 = [(_LTPreflightChecker *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v9 isTranslationSupportedOnCurrentDeviceForPreflightChecker:self])
  {
    v10 = [v6 copy];
    [v10 setDeviceSupportsTranslation:0];
    v11 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_LTPreflightChecker _checkTranslationSupportForConfiguration:completion:];
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = [v10 effectiveSourceLocale];
    v14 = [v10 effectiveTargetLocale];
    v15 = [v12 lt_unsupportedPairingErrorWithSource:v13 target:v14];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75___LTPreflightChecker__checkTranslationSupportForConfiguration_completion___block_invoke;
    v16[3] = &unk_278B6D4D8;
    v17 = v8;
    v18 = v7;
    [(_LTPreflightChecker *)self _callDelegateOrGiveError:v15 forConfiguration:v10 completion:v16];
  }

  else
  {
    (*(v7 + 2))(v7, 1);
  }
}

- (void)_callDelegateOrGiveError:(id)a3 forConfiguration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_LTPreflightChecker *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v12 = [v9 nextStep];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76___LTPreflightChecker__callDelegateOrGiveError_forConfiguration_completion___block_invoke;
    v14[3] = &unk_278B6D528;
    objc_copyWeak(&v16, &location);
    v15 = v10;
    [v11 preflightChecker:self continueCheckingFromStep:v12 forConfiguration:v9 completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_LTPreflightChecker _callDelegateOrGiveError:forConfiguration:completion:];
    }

    (*(v10 + 2))(v10, 0, v8);
  }
}

- (void)_resolveSourceLocaleIfNeeded:(id)a3 completion:(id)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_queue;
  dispatch_assert_queue_V2(v8);
  v9 = [v6 resolvedSourceLocale];
  if (!v9)
  {
    v10 = [v6 requestedSourceLocale];
    v11 = v10;
    if (v10)
    {
      v12 = MEMORY[0x277CBEAF8];
      v32[0] = v10;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      v14 = [v6 supportedLocales];
      v15 = [v12 lt_bestMatchForPreferredLocales:v13 fromSupportedLocales:v14];

      v16 = v7[2];
      v17 = v7;
      if (v15)
      {
        v18 = v15;
LABEL_19:
        v16(v17, v18);
        goto LABEL_20;
      }
    }

    else
    {
      v19 = [v6 lowConfidenceLocales];

      if (v19)
      {
        v20 = _LTOSLogTextAPI();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23AAF5000, v20, OS_LOG_TYPE_INFO, "Previously determined low confidence LID on configuration, no need to ask the localeResolver to do LID again", buf, 2u);
        }

        (v7[2])(v7, 0);
        goto LABEL_21;
      }

      v15 = [(_LTPreflightChecker *)self localeResolver];
      if (v15)
      {
        v21 = [v6 sourceStrings];
        v22 = [v21 count];

        if (v22)
        {
          v23 = [(_LTPreflightChecker *)self localeResolver];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __63___LTPreflightChecker__resolveSourceLocaleIfNeeded_completion___block_invoke;
          v27[3] = &unk_278B6D598;
          v28 = v8;
          v29 = v6;
          v30 = v7;
          [v23 resolveSourceLocaleForConfiguration:v29 completion:v27];

LABEL_20:
LABEL_21:

          goto LABEL_22;
        }

        v25 = _LTOSLogTextAPI();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [_LTPreflightChecker _resolveSourceLocaleIfNeeded:completion:];
        }
      }

      else
      {
        v24 = _LTOSLogTextAPI();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [_LTPreflightChecker _resolveSourceLocaleIfNeeded:completion:];
        }
      }

      v16 = v7[2];
      v17 = v7;
    }

    v18 = 0;
    goto LABEL_19;
  }

  (v7[2])(v7, v9);
LABEL_22:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)resolveTargetLocaleIfNeeded:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke;
  block[3] = &unk_278B6D4B0;
  objc_copyWeak(&v16, &location);
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v9 = v7;
  v10 = v8;
  v11 = v6;
  dispatch_async(v10, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_resolveTargetLocaleIfNeeded:(id)a3 completion:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [v6 resolvedTargetLocale];
  if (v8)
  {
    v7[2](v7, v8);
  }

  else
  {
    v9 = [v6 requestedTargetLocale];
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x277CBEAF8];
      v24[0] = v9;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      v13 = [v6 supportedLocales];
      v14 = [v11 lt_bestMatchForPreferredLocales:v12 fromSupportedLocales:v13];

      if (!v14)
      {
        v15 = _LTOSLogTextAPI();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [_LTPreflightChecker _resolveTargetLocaleIfNeeded:v15 completion:v10];
        }
      }

      v7[2](v7, v14);
    }

    else
    {
      v16 = [v6 systemLocale];
      v17 = v16;
      if (v16)
      {
        v14 = v16;
      }

      else
      {
        v18 = [MEMORY[0x277CBEAF8] lt_preferredLocales];
        v14 = [v18 firstObject];
      }

      v19 = MEMORY[0x277CBEAF8];
      v20 = [v6 resolvedSourceLocale];
      v21 = [v6 supportedLocales];
      v22 = [v19 lt_defaultTargetForSource:v20 systemLocale:v14 availableLocales:v21 targetMap:0];

      v7[2](v7, v22);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_resolveLocalePairingForConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_queue;
  dispatch_assert_queue_V2(v8);
  v9 = [v6 resolvedSourceLocale];
  if (v9)
  {
    v10 = [v6 resolvedTargetLocale];
    if (v10)
    {
      v11 = [[_LTLocalePair alloc] initWithSourceLocale:v9 targetLocale:v10];
      v12 = [v6 supportedLocalePairs];
      v13 = [v12 containsObject:v11];

      if (v13)
      {
        v7[2](v7, 0);
      }

      else
      {
        v18 = [MEMORY[0x277CCA9B8] lt_unsupportedPairingErrorWithSource:v9 target:v10];
        v19 = _LTOSLogTextAPI();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [_LTPreflightChecker _resolveLocalePairingForConfiguration:v19 completion:v11];
        }

        (v7)[2](v7, v18);
      }
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = [v6 effectiveTargetLocale];
      v11 = [v16 lt_unsupportedTargetLanguageError:v17];

      (v7)[2](v7, v11);
    }
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = [v6 effectiveSourceLocale];
    v10 = [v14 lt_unsupportedSourceLanguageError:v15];

    (v7)[2](v7, v10);
  }
}

- (void)resolveSourceLocaleForConfiguration:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 sourceStrings];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70___LTPreflightChecker_resolveSourceLocaleForConfiguration_completion___block_invoke;
  v10[3] = &unk_278B6D5C0;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [_LTTranslator languagesForText:v7 usingModel:0 useDedicatedTextMachPort:1 completion:v10];
}

- (_LTPreflightCheckerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_LTPreflightLocaleResolving)localeResolver
{
  WeakRetained = objc_loadWeakRetained(&self->_localeResolver);

  return WeakRetained;
}

- (void)_checkTranslationSupportForConfiguration:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_callDelegateOrGiveError:forConfiguration:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_resolveSourceLocaleIfNeeded:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_resolveSourceLocaleIfNeeded:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_resolveTargetLocaleIfNeeded:(void *)a1 completion:(void *)a2 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 _ltLocaleIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_23AAF5000, v5, v6, "Failed to find a valid version of the requested target locale %{public}@; giving error to client", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_resolveLocalePairingForConfiguration:(void *)a1 completion:(void *)a2 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 combinedLocaleIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0(&dword_23AAF5000, v5, v6, "Client requested pair with valid source and target, but the pairing isn't supported: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end