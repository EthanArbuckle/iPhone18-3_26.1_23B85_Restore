@interface _LTTextSession
+ (OS_dispatch_queue)synchronizationQueue;
- (BOOL)_isCancelled;
- (_LTPreflightLocaleResolving)localeResolver;
- (_LTTextSession)initWithSourceLocale:(id)a3 targetLocale:(id)a4 isHeadless:(BOOL)a5;
- (_LTTextSessionDelegate)delegate;
- (_LTTextSessionTranslating)textTranslator;
- (void)_beginBatchRequest:(id)a3;
- (void)_callDelegateOrGiveError:(id)a3 forConfiguration:(id)a4 completion:(id)a5;
- (void)_checkDownloadStatusForConfiguration:(id)a3 completion:(id)a4;
- (void)_didFinishMultiParagraphRequestWithUUID:(id)a3;
- (void)_invocationCancelledSELFLogging;
- (void)_invocationStartedSELFLogging:(id)a3;
- (void)_prepareRequest:(id)a3;
- (void)_supportedLocalePairsWithCompletionHandler:(id)a3;
- (void)_translateRequest:(id)a3 perItemHandler:(id)a4;
- (void)cancel:(BOOL)a3;
- (void)preflightChecker:(id)a3 continueCheckingFromStep:(int64_t)a4 forConfiguration:(id)a5 completion:(id)a6;
- (void)prepareDownloadsWithCompletion:(id)a3;
- (void)setLocaleResolver:(id)a3;
- (void)translateBatch:(id)a3 itemHandler:(id)a4 completionHandler:(id)a5;
- (void)translateRequest:(id)a3 forSession:(id)a4 perItemHandler:(id)a5;
- (void)translateString:(id)a3 completionHandler:(id)a4;
@end

@implementation _LTTextSession

+ (OS_dispatch_queue)synchronizationQueue
{
  if (synchronizationQueue_onceToken != -1)
  {
    +[_LTTextSession synchronizationQueue];
  }

  v3 = synchronizationQueue_synchronizationQueue;

  return v3;
}

- (_LTTextSession)initWithSourceLocale:(id)a3 targetLocale:(id)a4 isHeadless:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v27.receiver = self;
  v27.super_class = _LTTextSession;
  v11 = [(_LTTextSession *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceLocale, a3);
    objc_storeStrong(&v12->_targetLocale, a4);
    v12->_isHeadless = a5;
    v13 = [MEMORY[0x277CBEB38] dictionary];
    inProgressMultiParagraphRequestByUUID = v12->_inProgressMultiParagraphRequestByUUID;
    v12->_inProgressMultiParagraphRequestByUUID = v13;

    v15 = objc_alloc_init(_LTTranslator);
    translator = v12->_translator;
    v12->_translator = v15;

    v17 = [(_LTTranslator *)v12->_translator startTranslationSession];
    translationSession = v12->_translationSession;
    v12->_translationSession = v17;

    v19 = objc_alloc_init(_LTPreflightChecker);
    preflightChecker = v12->_preflightChecker;
    v12->_preflightChecker = v19;

    [(_LTPreflightChecker *)v12->_preflightChecker setDelegate:v12];
    objc_storeWeak(&v12->_textTranslator, v12);
    v21 = objc_alloc_init(_LTLanguageAvailability);
    languageAvailability = v12->_languageAvailability;
    v12->_languageAvailability = v21;

    v23 = [MEMORY[0x277CBEB58] set];
    ongoingRequestInvocationIDs = v12->_ongoingRequestInvocationIDs;
    v12->_ongoingRequestInvocationIDs = v23;

    v25 = v12;
  }

  return v12;
}

- (void)translateString:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _LTOSLogTextAPI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 134217984;
    v18 = [v6 length];
    _os_log_impl(&dword_23AAF5000, v9, OS_LOG_TYPE_DEFAULT, "Client asked to translate single string: of length %zu", buf, 0xCu);
  }

  v10 = [[_LTTextInput alloc] initWithSourceText:v6 clientIdentifier:0];
  v16 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52___LTTextSession_translateString_completionHandler___block_invoke;
  v14[3] = &unk_278B6D6E0;
  v15 = v7;
  v12 = v7;
  [(_LTTextSession *)self translateBatch:v11 itemHandler:0 completionHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)translateBatch:(id)a3 itemHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_LTTextSessionRequest alloc] initWithBatch:v10 sourceLocale:self->_sourceLocale targetLocale:self->_targetLocale itemHandler:v9 completionHandler:v8];

  [(_LTTextSessionRequest *)v11 setIsHeadless:[(_LTTextSession *)self isHeadless]];
  [(_LTTextSession *)self _prepareRequest:v11];
}

- (void)prepareDownloadsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[_LTTextSessionRequest alloc] initForDownloadRequestWithSourceLocale:self->_sourceLocale targetLocale:self->_targetLocale completionHandler:v4];

  [v5 setIsHeadless:{-[_LTTextSession isHeadless](self, "isHeadless")}];
  [(_LTTextSession *)self _prepareRequest:v5];
}

- (void)cancel:(BOOL)a3
{
  objc_initWeak(&location, self);
  v4 = [objc_opt_class() synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25___LTTextSession_cancel___block_invoke;
  block[3] = &unk_278B6D708;
  objc_copyWeak(&v6, &location);
  v7 = a3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (BOOL)_isCancelled
{
  v3 = [objc_opt_class() synchronizationQueue];
  dispatch_assert_queue_V2(v3);

  return self->_cancellationStatus - 1 < 2;
}

- (void)_prepareRequest:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 batch];
  v6 = _LTOSLogTextAPI();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 134217984;
    v18 = [v5 count];
    _os_log_impl(&dword_23AAF5000, v7, OS_LOG_TYPE_DEFAULT, "Client asked to translate batch of %zu inputs", buf, 0xCu);
  }

  v8 = [objc_opt_class() synchronizationQueue];
  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __34___LTTextSession__prepareRequest___block_invoke;
  v12[3] = &unk_278B6D750;
  objc_copyWeak(&v16, buf);
  v13 = v4;
  v14 = v8;
  v15 = self;
  v9 = v8;
  v10 = v4;
  dispatch_async(v9, v12);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_beginBatchRequest:(id)a3
{
  v4 = a3;
  [v4 didStartTranslating];
  v5 = [objc_opt_class() synchronizationQueue];
  v6 = dispatch_group_create();
  v7 = [v4 batch];
  v8 = [v7 count];

  if (v8)
  {
    v9 = v8;
    do
    {
      dispatch_group_enter(v6);
      --v9;
    }

    while (v9);
  }

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37___LTTextSession__beginBatchRequest___block_invoke;
  v17[3] = &unk_278B6D7C8;
  objc_copyWeak(&v21, &location);
  v10 = v5;
  v18 = v10;
  v11 = v4;
  v19 = v11;
  v12 = v6;
  v20 = v12;
  [(_LTTextSession *)self _translateRequest:v11 perItemHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37___LTTextSession__beginBatchRequest___block_invoke_21;
  v14[3] = &unk_278B6D638;
  objc_copyWeak(v16, &location);
  v16[1] = v8;
  v15 = v11;
  v13 = v11;
  dispatch_group_notify(v12, v10, v14);

  objc_destroyWeak(v16);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)translateRequest:(id)a3 forSession:(id)a4 perItemHandler:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v32 = a4;
  v9 = a5;
  v10 = [_LTLocalePair alloc];
  v11 = [v8 resolvedSourceLocale];
  v12 = [v8 resolvedTargetLocale];
  v13 = [(_LTLocalePair *)v10 initWithSourceLocale:v11 targetLocale:v12];

  v14 = [MEMORY[0x277CBEB18] array];
  objc_initWeak(&location, self);
  v15 = [v8 batch];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __61___LTTextSession_translateRequest_forSession_perItemHandler___block_invoke;
  v37[3] = &unk_278B6D818;
  objc_copyWeak(&v41, &location);
  v16 = v13;
  v38 = v16;
  v17 = v9;
  v40 = v17;
  v18 = v14;
  v39 = v18;
  [v15 enumerateObjectsUsingBlock:v37];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v20)
  {
    v21 = *v34;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v33 + 1) + 8 * i);
        [v23 setSourceOrigin:3];
        v24 = [v8 logIdentifier];
        [v23 setLogIdentifier:v24];

        [v23 setForcedOfflineTranslation:{-[_LTTextSession allowOnlineTranslation](self, "allowOnlineTranslation") ^ 1}];
      }

      v20 = [v19 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v20);
  }

  v25 = [v8 batch];
  v26 = [v25 count];

  if ([v19 count])
  {
    v27 = +[_LTTranslator interruptionController];
    [v27 addObserver:v8];

    v28 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      -[_LTTextSession translateRequest:forSession:perItemHandler:].cold.1(buf, [v19 count], v26, v28);
    }

    v29 = [v8 logIdentifier];
    [(_LTTranslationSession *)self->_translationSession setLogIdentifier:v29];

    [(_LTTranslationSession *)self->_translationSession translate:v19 useDedicatedTextMachPort:1];
  }

  else
  {
    v30 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v44 = v26;
      _os_log_impl(&dword_23AAF5000, v30, OS_LOG_TYPE_INFO, "Didn't create any paragraph requests from %zu inputs, all inputs were likely whitespace only", buf, 0xCu);
    }
  }

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);

  v31 = *MEMORY[0x277D85DE8];
}

- (void)preflightChecker:(id)a3 continueCheckingFromStep:(int64_t)a4 forConfiguration:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [objc_opt_class() synchronizationQueue];
  objc_initWeak(&location, self);
  v14 = [v11 copy];
  v15 = v14;
  if (a4)
  {
    if (a4 != 2)
    {
      goto LABEL_4;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = [v14 effectiveSourceLocale];
    v18 = [v15 effectiveTargetLocale];
    v19 = [v16 lt_unsupportedPairingErrorWithSource:v17 target:v18];

    if (!v19)
    {
      goto LABEL_4;
    }

LABEL_6:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88___LTTextSession_preflightChecker_continueCheckingFromStep_forConfiguration_completion___block_invoke;
    block[3] = &unk_278B6D4B0;
    objc_copyWeak(&v30, &location);
    v27 = v19;
    v28 = v15;
    v29 = v12;
    v20 = v19;
    dispatch_async(v13, block);

    objc_destroyWeak(&v30);
    goto LABEL_7;
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TranslationErrorDomain" code:20 userInfo:0];
  if (v19)
  {
    goto LABEL_6;
  }

LABEL_4:
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88___LTTextSession_preflightChecker_continueCheckingFromStep_forConfiguration_completion___block_invoke_29;
  v21[3] = &unk_278B6D868;
  objc_copyWeak(&v25, &location);
  v22 = v13;
  v24 = v12;
  v23 = v15;
  [(_LTTextSession *)self _checkDownloadStatusForConfiguration:v23 completion:v21];

  objc_destroyWeak(&v25);
LABEL_7:

  objc_destroyWeak(&location);
}

- (void)_callDelegateOrGiveError:(id)a3 forConfiguration:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_opt_class() synchronizationQueue];
  dispatch_assert_queue_V2(v11);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained needsUserInterventionForTextSession:self configuration:v9 completion:v10];
  }

  else
  {
    v13 = [(_LTTextSession *)self isHeadless];
    v14 = _LTOSLogTextAPI();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v8;
        _os_log_impl(&dword_23AAF5000, v15, OS_LOG_TYPE_INFO, "_LTTextSession is running headless, so can't ask a delegate to complete validation, returning error: %@", &v17, 0xCu);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_LTTextSession _callDelegateOrGiveError:forConfiguration:completion:];
    }

    v10[2](v10, 0, v8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_checkDownloadStatusForConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [objc_opt_class() synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___LTTextSession__checkDownloadStatusForConfiguration_completion___block_invoke;
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

- (void)_supportedLocalePairsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() synchronizationQueue];
  languageAvailability = self->_languageAvailability;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61___LTTextSession__supportedLocalePairsWithCompletionHandler___block_invoke;
  v9[3] = &unk_278B6D8E0;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [(_LTLanguageAvailability *)languageAvailability supportedLocalePairsWithCompletion:v9];
}

- (void)_translateRequest:(id)a3 perItemHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() synchronizationQueue];
  if ([v6 isForDownloadRequest])
  {
    v9 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23AAF5000, v9, OS_LOG_TYPE_INFO, "Finished preflight checks for download-only request and everything was installed already", buf, 2u);
    }
  }

  else
  {
    v10 = [(_LTTextSession *)self textTranslator];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51___LTTextSession__translateRequest_perItemHandler___block_invoke;
    v11[3] = &unk_278B6D930;
    v12 = v8;
    v13 = v7;
    [v10 translateRequest:v6 forSession:self perItemHandler:v11];
  }
}

- (void)_didFinishMultiParagraphRequestWithUUID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [objc_opt_class() synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58___LTTextSession__didFinishMultiParagraphRequestWithUUID___block_invoke;
  block[3] = &unk_278B6CD08;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)setLocaleResolver:(id)a3
{
  v4 = a3;
  v5 = [(_LTTextSession *)self preflightChecker];
  [v5 setLocaleResolver:v4];
}

- (_LTPreflightLocaleResolving)localeResolver
{
  v2 = [(_LTTextSession *)self preflightChecker];
  v3 = [v2 localeResolver];

  return v3;
}

- (void)_invocationStartedSELFLogging:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_opt_class() synchronizationQueue];
  dispatch_assert_queue_V2(v4);

  if (([v3 isForDownloadRequest] & 1) == 0)
  {
    v5 = [v3 resolvedSourceLocale];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:&stru_284DBB9B8];
    }

    v8 = v7;

    v9 = [v3 resolvedTargetLocale];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:&stru_284DBB9B8];
    }

    v12 = v11;

    v34 = v8;
    v13 = [[_LTLocalePair alloc] initWithSourceLocale:v8 targetLocale:v12];
    v14 = [_LTSELFLoggingEventData alloc];
    v15 = [v3 logIdentifier];
    v16 = [(_LTSELFLoggingEventData *)v14 initWithType:1 invocationId:v15];

    v17 = [_LTSELFLoggingTranslateAppContext alloc];
    v18 = [MEMORY[0x277CCAD78] UUID];
    LOBYTE(v33) = 0;
    LOBYTE(v32) = 0;
    v19 = [(_LTSELFLoggingTranslateAppContext *)v17 initWithDisplayMode:0 localePair:v13 isGenderAlternativeEnabled:0 tabName:0 tabSessionId:v18 conversationTabView:0 isPlayTranslationsEnabled:v32 autoTranslateSessionId:0 audioChannel:0 languageIdentificationEnabled:v33];

    v20 = [[_LTSELFLoggingInvocationOptions alloc] initWithTask:0 inputMode:1 invocationType:10 translateAppContext:v19];
    [(_LTSELFLoggingEventData *)v16 setStartInvocationOptions:v20];
    v21 = [_LTSELFLoggingEventData alloc];
    v22 = [v3 logIdentifier];
    v23 = [(_LTSELFLoggingEventData *)v21 initWithType:10 invocationId:v22];

    v24 = [[_LTSELFLoggingInvocationOptions alloc] initWithTask:0 inputMode:1 invocationType:10 translateAppContext:0];
    [(_LTSELFLoggingEventData *)v23 setStartInvocationOptions:v24];
    v25 = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [v25 objectForInfoDictionaryKey:@"CFBundleIdentifier"];

    if (v26)
    {
      v27 = _LTOSLogXPC();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v36 = v26;
        _os_log_impl(&dword_23AAF5000, v27, OS_LOG_TYPE_INFO, "Got untrusted client identifier from Info.plist: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v28 = [MEMORY[0x277CCAC38] processInfo];
      v26 = [v28 processName];

      v29 = _LTOSLogXPC();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [_LTTextSession _invocationStartedSELFLogging:];
      }
    }

    v30 = v26;

    [(_LTSELFLoggingEventData *)v23 setUntrustedClientIdentifier:v30];
    [_LTTranslator selfLoggingInvocationStartedWithData:v16 invocationStartedTier1Data:v23];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_invocationCancelledSELFLogging
{
  v3 = [objc_opt_class() synchronizationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(NSMutableSet *)self->_ongoingRequestInvocationIDs copy];
  [_LTTranslator selfLoggingInvocationCancelledForIDs:v4];
}

- (_LTTextSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_LTTextSessionTranslating)textTranslator
{
  WeakRetained = objc_loadWeakRetained(&self->_textTranslator);

  return WeakRetained;
}

- (void)translateRequest:(uint64_t)a3 forSession:(os_log_t)log perItemHandler:.cold.1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&dword_23AAF5000, log, OS_LOG_TYPE_DEBUG, "Translating %zu paragraphs from %zu batch items", buf, 0x16u);
}

- (void)_callDelegateOrGiveError:forConfiguration:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_invocationStartedSELFLogging:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end