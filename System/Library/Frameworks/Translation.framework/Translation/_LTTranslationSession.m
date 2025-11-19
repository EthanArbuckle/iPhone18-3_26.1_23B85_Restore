@interface _LTTranslationSession
- (_LTTranslationSession)initWithTranslator:(id)a3 selfLoggingInvocationId:(id)a4;
- (id)initForFutureServiceWithSessionID:(id)a3 selfLoggingInvocationId:(id)a4;
- (void)_commonInitWithSuggestedSessionID:(id)a3;
- (void)_ensureServiceConnection:(id)a3 useDedicatedTextMachPort:(BOOL)a4;
- (void)cancelPendingWork;
- (void)markFirstParagraphComplete;
- (void)markPageComplete;
- (void)markProgressDone;
- (void)paragraphTranslation:(id)a3 result:(id)a4 error:(id)a5;
- (void)provideFeedback:(id)a3;
@end

@implementation _LTTranslationSession

- (_LTTranslationSession)initWithTranslator:(id)a3 selfLoggingInvocationId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _LTTranslationSession;
  v9 = [(_LTTranslationSession *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_translator, a3);
    objc_storeStrong(&v10->_logIdentifier, a4);
    [(_LTTranslationSession *)v10 _commonInitWithSuggestedSessionID:0];
    v11 = v10;
  }

  return v10;
}

- (id)initForFutureServiceWithSessionID:(id)a3 selfLoggingInvocationId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _LTTranslationSession;
  v8 = [(_LTTranslationSession *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_waitingForService = 1;
    objc_storeStrong(&v8->_logIdentifier, a4);
    [(_LTTranslationSession *)v9 _commonInitWithSuggestedSessionID:v6];
    v10 = v9;
  }

  return v9;
}

- (void)_commonInitWithSuggestedSessionID:(id)a3
{
  v10 = a3;
  v4 = dispatch_queue_create("com.apple.translation.text", 0);
  translationQueue = self->_translationQueue;
  self->_translationQueue = v4;

  v6 = [MEMORY[0x277CBEB38] dictionary];
  outstandingRequests = self->_outstandingRequests;
  self->_outstandingRequests = v6;

  if (v10)
  {
    v8 = v10;
  }

  else
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
  }

  sessionID = self->_sessionID;
  self->_sessionID = v8;
}

- (void)_ensureServiceConnection:(id)a3 useDedicatedTextMachPort:(BOOL)a4
{
  v6 = a3;
  translationQueue = self->_translationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___LTTranslationSession__ensureServiceConnection_useDedicatedTextMachPort___block_invoke;
  block[3] = &unk_278B6DC60;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(translationQueue, block);
}

- (void)cancelPendingWork
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42___LTTranslationSession_cancelPendingWork__block_invoke;
  v3[3] = &unk_278B6DD20;
  objc_copyWeak(&v4, &location);
  [(_LTTranslationSession *)self _ensureServiceConnection:v3 useDedicatedTextMachPort:1];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)provideFeedback:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41___LTTranslationSession_provideFeedback___block_invoke;
  v6[3] = &unk_278B6DD48;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(_LTTranslationSession *)self _ensureServiceConnection:v6 useDedicatedTextMachPort:0];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)markFirstParagraphComplete
{
  objc_initWeak(&location, self);
  translationQueue = self->_translationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51___LTTranslationSession_markFirstParagraphComplete__block_invoke;
  v4[3] = &unk_278B6CD30;
  objc_copyWeak(&v5, &location);
  dispatch_async(translationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)markProgressDone
{
  objc_initWeak(&location, self);
  translationQueue = self->_translationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41___LTTranslationSession_markProgressDone__block_invoke;
  v4[3] = &unk_278B6CD30;
  objc_copyWeak(&v5, &location);
  dispatch_async(translationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)markPageComplete
{
  objc_initWeak(&location, self);
  translationQueue = self->_translationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41___LTTranslationSession_markPageComplete__block_invoke;
  v4[3] = &unk_278B6CD30;
  objc_copyWeak(&v5, &location);
  dispatch_async(translationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)paragraphTranslation:(id)a3 result:(id)a4 error:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&dword_23AAF5000, v11, OS_LOG_TYPE_INFO, "Received translation result for %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  translationQueue = self->_translationQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59___LTTranslationSession_paragraphTranslation_result_error___block_invoke;
  v17[3] = &unk_278B6D750;
  objc_copyWeak(&v21, buf);
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(translationQueue, v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

@end