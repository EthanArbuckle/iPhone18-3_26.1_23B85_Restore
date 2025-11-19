@interface _LTTextSessionRequest
- (NSLocale)resolvedSourceLocale;
- (NSLocale)resolvedTargetLocale;
- (id)_initWithBatch:(id)a3 sourceLocale:(id)a4 targetLocale:(id)a5 isForDownloadRequest:(BOOL)a6 itemHandler:(id)a7 completionHandler:(id)a8;
- (id)initForDownloadRequestWithSourceLocale:(id)a3 targetLocale:(id)a4 completionHandler:(id)a5;
- (void)_cleanUp;
- (void)_invocationEndedWithErrorSELFLogging:(id)a3;
- (void)didComplete;
- (void)didReceiveError:(id)a3 forInput:(id)a4;
- (void)didReceiveInterruptionFromHandler:(id)a3;
- (void)didStartTranslating;
- (void)didTranslateInput:(id)a3 withResult:(id)a4;
- (void)setResolvedSourceLocale:(id)a3;
- (void)setResolvedTargetLocale:(id)a3;
@end

@implementation _LTTextSessionRequest

- (id)initForDownloadRequestWithSourceLocale:(id)a3 targetLocale:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95___LTTextSessionRequest_initForDownloadRequestWithSourceLocale_targetLocale_completionHandler___block_invoke;
  v12[3] = &unk_278B6D6E0;
  v13 = v8;
  v9 = v8;
  v10 = [(_LTTextSessionRequest *)self _initWithBatch:MEMORY[0x277CBEBF8] sourceLocale:a3 targetLocale:a4 isForDownloadRequest:1 itemHandler:0 completionHandler:v12];

  return v10;
}

- (id)_initWithBatch:(id)a3 sourceLocale:(id)a4 targetLocale:(id)a5 isForDownloadRequest:(BOOL)a6 itemHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v43.receiver = self;
  v43.super_class = _LTTextSessionRequest;
  v19 = [(_LTTextSessionRequest *)&v43 init];
  if (v19)
  {
    v20 = +[_LTTextSession synchronizationQueue];
    queue = v19->_queue;
    v19->_queue = v20;

    v22 = [v14 copy];
    batch = v19->_batch;
    v19->_batch = v22;

    v24 = [v15 copy];
    resolvedSourceLocale = v19->_resolvedSourceLocale;
    v19->_resolvedSourceLocale = v24;

    v26 = [v16 copy];
    resolvedTargetLocale = v19->_resolvedTargetLocale;
    v19->_resolvedTargetLocale = v26;

    v19->_isForDownloadRequest = a6;
    v28 = [v17 copy];
    itemHandler = v19->_itemHandler;
    v19->_itemHandler = v28;

    v30 = [v18 copy];
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v30;

    v32 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
    resultMap = v19->_resultMap;
    v19->_resultMap = v32;

    v34 = [MEMORY[0x277CCAD78] UUID];
    logIdentifier = v19->_logIdentifier;
    v19->_logIdentifier = v34;

    v36 = _LTOSLogTextAPI();
    v19->_signpostID = os_signpost_id_generate(v36);
    v37 = _LTOSLogTextAPI();
    v38 = v37;
    signpostID = v19->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *v42 = 0;
      _os_signpost_emit_with_name_impl(&dword_23AAF5000, v38, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "PreflightChecks", "", v42, 2u);
    }

    v40 = v19;
  }

  return v19;
}

- (void)didStartTranslating
{
  v3 = _LTOSLogTextAPI();
  v4 = v3;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23AAF5000, v4, OS_SIGNPOST_INTERVAL_END, signpostID, "PreflightChecks", "", buf, 2u);
  }

  v6 = _LTOSLogTextAPI();
  v7 = v6;
  v8 = self->_signpostID;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_23AAF5000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "TranslationFirstItem", "", v13, 2u);
  }

  v9 = _LTOSLogTextAPI();
  v10 = v9;
  v11 = self->_signpostID;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_23AAF5000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Translation", "", v12, 2u);
  }
}

- (void)didReceiveError:(id)a3 forInput:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_completionHandler)
  {
    [(_LTTextSessionRequest *)self _invocationEndedWithErrorSELFLogging:v5];
    v6 = _LTOSLogTextAPI();
    v7 = v6;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_23AAF5000, v7, OS_SIGNPOST_INTERVAL_END, signpostID, "Translation", "Translation finished with error", &v17, 2u);
    }

    v9 = _LTOSLogTextAPI();
    v10 = v9;
    v11 = self->_signpostID;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_23AAF5000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PreflightChecks", "Finished preflight checks with error", &v17, 2u);
    }

    if (!self->_hasReceivedFirstItem)
    {
      self->_hasReceivedFirstItem = 1;
      v12 = _LTOSLogTextAPI();
      v13 = v12;
      v14 = self->_signpostID;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        LOWORD(v17) = 0;
        _os_signpost_emit_with_name_impl(&dword_23AAF5000, v13, OS_SIGNPOST_INTERVAL_END, v14, "TranslationFirstItem", "Translating first item finished with error", &v17, 2u);
      }
    }

    (*(self->_completionHandler + 2))();
    [(_LTTextSessionRequest *)self _cleanUp];
  }

  else
  {
    v15 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&dword_23AAF5000, v15, OS_LOG_TYPE_INFO, "Text request received error, but already called completion handler so ignoring new error: %@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)didTranslateInput:(id)a3 withResult:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  queue = self->_queue;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [(NSArray *)self->_batch indexOfObject:v8];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_LTTextSessionRequest didTranslateInput:v10 withResult:?];
    }
  }

  else if (self->_completionHandler)
  {
    if (!self->_hasReceivedFirstItem)
    {
      self->_hasReceivedFirstItem = 1;
      v11 = _LTOSLogTextAPI();
      v12 = v11;
      signpostID = self->_signpostID;
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        LOWORD(v19) = 0;
        _os_signpost_emit_with_name_impl(&dword_23AAF5000, v12, OS_SIGNPOST_INTERVAL_END, signpostID, "TranslationFirstItem", "Successfully translated first item", &v19, 2u);
      }
    }

    resultMap = self->_resultMap;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    [(NSMutableDictionary *)resultMap setObject:v6 forKeyedSubscript:v15];

    itemHandler = self->_itemHandler;
    if (itemHandler)
    {
      itemHandler[2](itemHandler, v6, 0);
    }
  }

  else
  {
    v17 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 134217984;
      v20 = v9;
      _os_log_impl(&dword_23AAF5000, v17, OS_LOG_TYPE_INFO, "Received result for input item %zu after completion handler was already called, likely because an error previously occurred; early returning", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)didComplete
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_completionHandler)
  {
    v3 = [(NSArray *)self->_batch count];
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        resultMap = self->_resultMap;
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        v8 = [(NSMutableDictionary *)resultMap objectForKeyedSubscript:v7];

        if (v8)
        {
          [v4 addObject:v8];
        }
      }
    }

    v9 = _LTOSLogTextAPI();
    v10 = v9;
    signpostID = self->_signpostID;
    if (signpostID - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v9))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_23AAF5000, v10, OS_SIGNPOST_INTERVAL_END, signpostID, "Translation", "Translation finished successfully", v15, 2u);
    }

    completionHandler = self->_completionHandler;
    v13 = [v4 copy];
    completionHandler[2](completionHandler, v13, 0);

    [(_LTTextSessionRequest *)self _cleanUp];
  }

  else
  {
    v14 = _LTOSLogTextAPI();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23AAF5000, v14, OS_LOG_TYPE_INFO, "Request was reported as being finished, but completion handler was already called so ignoring update", buf, 2u);
    }
  }
}

- (NSLocale)resolvedSourceLocale
{
  dispatch_assert_queue_V2(self->_queue);
  resolvedSourceLocale = self->_resolvedSourceLocale;

  return resolvedSourceLocale;
}

- (NSLocale)resolvedTargetLocale
{
  dispatch_assert_queue_V2(self->_queue);
  resolvedTargetLocale = self->_resolvedTargetLocale;

  return resolvedTargetLocale;
}

- (void)setResolvedSourceLocale:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [v5 copy];

  resolvedSourceLocale = self->_resolvedSourceLocale;
  self->_resolvedSourceLocale = v6;

  v8 = _LTOSLogTextAPI();
  v9 = v8;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_23AAF5000, v9, OS_SIGNPOST_EVENT, signpostID, "ResolvedSourceLocale", "", v11, 2u);
  }
}

- (void)setResolvedTargetLocale:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [v5 copy];

  resolvedTargetLocale = self->_resolvedTargetLocale;
  self->_resolvedTargetLocale = v6;

  v8 = _LTOSLogTextAPI();
  v9 = v8;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_23AAF5000, v9, OS_SIGNPOST_EVENT, signpostID, "ResolvedTargetLocale", "", v11, 2u);
  }
}

- (void)_cleanUp
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  itemHandler = self->_itemHandler;
  self->_itemHandler = 0;

  resultMap = self->_resultMap;

  [(NSMutableDictionary *)resultMap removeAllObjects];
}

- (void)didReceiveInterruptionFromHandler:(id)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59___LTTextSessionRequest_didReceiveInterruptionFromHandler___block_invoke;
  v5[3] = &unk_278B6CD30;
  objc_copyWeak(&v6, &location);
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_invocationEndedWithErrorSELFLogging:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (![(_LTTextSessionRequest *)self isForDownloadRequest])
  {
    v4 = [(_LTTextSessionRequest *)self logIdentifier];
    [_LTTranslator selfLoggingInvocationDidError:v5 invocationId:v4];
  }
}

@end