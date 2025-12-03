@interface _LTPreflightChecker
+ (id)_sharedQueue;
- (_LTPreflightChecker)init;
- (_LTPreflightCheckerDelegate)delegate;
- (_LTPreflightLocaleResolving)localeResolver;
- (void)_callDelegateOrGiveError:(id)error forConfiguration:(id)configuration completion:(id)completion;
- (void)_checkTranslationSupportForConfiguration:(id)configuration completion:(id)completion;
- (void)_resolveLocalePairingForConfiguration:(id)configuration completion:(id)completion;
- (void)_resolveSourceLocaleIfNeeded:(id)needed completion:(id)completion;
- (void)_resolveTargetLocaleIfNeeded:(id)needed completion:(id)completion;
- (void)preflightConfiguration:(id)configuration completion:(id)completion;
- (void)resolveSourceLocaleForConfiguration:(id)configuration completion:(id)completion;
- (void)resolveTargetLocaleIfNeeded:(id)needed completion:(id)completion;
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
    _sharedQueue = [objc_opt_class() _sharedQueue];
    queue = v3->_queue;
    v3->_queue = _sharedQueue;

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

- (void)preflightConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  v7 = self->_queue;
  v8 = [configuration copy];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57___LTPreflightChecker_preflightConfiguration_completion___block_invoke;
  block[3] = &unk_278B6D4B0;
  objc_copyWeak(&v16, &location);
  v13 = v8;
  v14 = v7;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = v7;
  v11 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_checkTranslationSupportForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = self->_queue;
  dispatch_assert_queue_V2(v8);
  delegate = [(_LTPreflightChecker *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate isTranslationSupportedOnCurrentDeviceForPreflightChecker:self])
  {
    v10 = [configurationCopy copy];
    [v10 setDeviceSupportsTranslation:0];
    v11 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_LTPreflightChecker _checkTranslationSupportForConfiguration:completion:];
    }

    v12 = MEMORY[0x277CCA9B8];
    effectiveSourceLocale = [v10 effectiveSourceLocale];
    effectiveTargetLocale = [v10 effectiveTargetLocale];
    v15 = [v12 lt_unsupportedPairingErrorWithSource:effectiveSourceLocale target:effectiveTargetLocale];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75___LTPreflightChecker__checkTranslationSupportForConfiguration_completion___block_invoke;
    v16[3] = &unk_278B6D4D8;
    v17 = v8;
    v18 = completionCopy;
    [(_LTPreflightChecker *)self _callDelegateOrGiveError:v15 forConfiguration:v10 completion:v16];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)_callDelegateOrGiveError:(id)error forConfiguration:(id)configuration completion:(id)completion
{
  errorCopy = error;
  configurationCopy = configuration;
  completionCopy = completion;
  delegate = [(_LTPreflightChecker *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    nextStep = [configurationCopy nextStep];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76___LTPreflightChecker__callDelegateOrGiveError_forConfiguration_completion___block_invoke;
    v14[3] = &unk_278B6D528;
    objc_copyWeak(&v16, &location);
    v15 = completionCopy;
    [delegate preflightChecker:self continueCheckingFromStep:nextStep forConfiguration:configurationCopy completion:v14];

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

    (*(completionCopy + 2))(completionCopy, 0, errorCopy);
  }
}

- (void)_resolveSourceLocaleIfNeeded:(id)needed completion:(id)completion
{
  v32[1] = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  completionCopy = completion;
  v8 = self->_queue;
  dispatch_assert_queue_V2(v8);
  resolvedSourceLocale = [neededCopy resolvedSourceLocale];
  if (!resolvedSourceLocale)
  {
    requestedSourceLocale = [neededCopy requestedSourceLocale];
    v11 = requestedSourceLocale;
    if (requestedSourceLocale)
    {
      v12 = MEMORY[0x277CBEAF8];
      v32[0] = requestedSourceLocale;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      supportedLocales = [neededCopy supportedLocales];
      localeResolver = [v12 lt_bestMatchForPreferredLocales:v13 fromSupportedLocales:supportedLocales];

      v16 = completionCopy[2];
      v17 = completionCopy;
      if (localeResolver)
      {
        v18 = localeResolver;
LABEL_19:
        v16(v17, v18);
        goto LABEL_20;
      }
    }

    else
    {
      lowConfidenceLocales = [neededCopy lowConfidenceLocales];

      if (lowConfidenceLocales)
      {
        v20 = _LTOSLogTextAPI();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23AAF5000, v20, OS_LOG_TYPE_INFO, "Previously determined low confidence LID on configuration, no need to ask the localeResolver to do LID again", buf, 2u);
        }

        (completionCopy[2])(completionCopy, 0);
        goto LABEL_21;
      }

      localeResolver = [(_LTPreflightChecker *)self localeResolver];
      if (localeResolver)
      {
        sourceStrings = [neededCopy sourceStrings];
        v22 = [sourceStrings count];

        if (v22)
        {
          localeResolver2 = [(_LTPreflightChecker *)self localeResolver];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __63___LTPreflightChecker__resolveSourceLocaleIfNeeded_completion___block_invoke;
          v27[3] = &unk_278B6D598;
          v28 = v8;
          v29 = neededCopy;
          v30 = completionCopy;
          [localeResolver2 resolveSourceLocaleForConfiguration:v29 completion:v27];

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

      v16 = completionCopy[2];
      v17 = completionCopy;
    }

    v18 = 0;
    goto LABEL_19;
  }

  (completionCopy[2])(completionCopy, resolvedSourceLocale);
LABEL_22:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)resolveTargetLocaleIfNeeded:(id)needed completion:(id)completion
{
  neededCopy = needed;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62___LTPreflightChecker_resolveTargetLocaleIfNeeded_completion___block_invoke;
  block[3] = &unk_278B6D4B0;
  objc_copyWeak(&v16, &location);
  v13 = neededCopy;
  v14 = v8;
  v15 = completionCopy;
  v9 = completionCopy;
  v10 = v8;
  v11 = neededCopy;
  dispatch_async(v10, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_resolveTargetLocaleIfNeeded:(id)needed completion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  resolvedTargetLocale = [neededCopy resolvedTargetLocale];
  if (resolvedTargetLocale)
  {
    completionCopy[2](completionCopy, resolvedTargetLocale);
  }

  else
  {
    requestedTargetLocale = [neededCopy requestedTargetLocale];
    v10 = requestedTargetLocale;
    if (requestedTargetLocale)
    {
      v11 = MEMORY[0x277CBEAF8];
      v24[0] = requestedTargetLocale;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      supportedLocales = [neededCopy supportedLocales];
      firstObject = [v11 lt_bestMatchForPreferredLocales:v12 fromSupportedLocales:supportedLocales];

      if (!firstObject)
      {
        v15 = _LTOSLogTextAPI();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [_LTPreflightChecker _resolveTargetLocaleIfNeeded:v15 completion:v10];
        }
      }

      completionCopy[2](completionCopy, firstObject);
    }

    else
    {
      systemLocale = [neededCopy systemLocale];
      v17 = systemLocale;
      if (systemLocale)
      {
        firstObject = systemLocale;
      }

      else
      {
        lt_preferredLocales = [MEMORY[0x277CBEAF8] lt_preferredLocales];
        firstObject = [lt_preferredLocales firstObject];
      }

      v19 = MEMORY[0x277CBEAF8];
      resolvedSourceLocale = [neededCopy resolvedSourceLocale];
      supportedLocales2 = [neededCopy supportedLocales];
      v22 = [v19 lt_defaultTargetForSource:resolvedSourceLocale systemLocale:firstObject availableLocales:supportedLocales2 targetMap:0];

      completionCopy[2](completionCopy, v22);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_resolveLocalePairingForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = self->_queue;
  dispatch_assert_queue_V2(v8);
  resolvedSourceLocale = [configurationCopy resolvedSourceLocale];
  if (resolvedSourceLocale)
  {
    resolvedTargetLocale = [configurationCopy resolvedTargetLocale];
    if (resolvedTargetLocale)
    {
      v11 = [[_LTLocalePair alloc] initWithSourceLocale:resolvedSourceLocale targetLocale:resolvedTargetLocale];
      supportedLocalePairs = [configurationCopy supportedLocalePairs];
      v13 = [supportedLocalePairs containsObject:v11];

      if (v13)
      {
        completionCopy[2](completionCopy, 0);
      }

      else
      {
        v18 = [MEMORY[0x277CCA9B8] lt_unsupportedPairingErrorWithSource:resolvedSourceLocale target:resolvedTargetLocale];
        v19 = _LTOSLogTextAPI();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [_LTPreflightChecker _resolveLocalePairingForConfiguration:v19 completion:v11];
        }

        (completionCopy)[2](completionCopy, v18);
      }
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      effectiveTargetLocale = [configurationCopy effectiveTargetLocale];
      v11 = [v16 lt_unsupportedTargetLanguageError:effectiveTargetLocale];

      (completionCopy)[2](completionCopy, v11);
    }
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    effectiveSourceLocale = [configurationCopy effectiveSourceLocale];
    resolvedTargetLocale = [v14 lt_unsupportedSourceLanguageError:effectiveSourceLocale];

    (completionCopy)[2](completionCopy, resolvedTargetLocale);
  }
}

- (void)resolveSourceLocaleForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  sourceStrings = [configurationCopy sourceStrings];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70___LTPreflightChecker_resolveSourceLocaleForConfiguration_completion___block_invoke;
  v10[3] = &unk_278B6D5C0;
  v11 = configurationCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = configurationCopy;
  [_LTTranslator languagesForText:sourceStrings usingModel:0 useDedicatedTextMachPort:1 completion:v10];
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