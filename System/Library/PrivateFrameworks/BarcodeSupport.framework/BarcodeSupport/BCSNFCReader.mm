@interface BCSNFCReader
- (BCSNFCReader)initWithDelegate:(id)delegate;
- (BCSNotificationService)notificationService;
- (BOOL)_readTag:(id)tag;
- (BOOL)_startPolling;
- (int64_t)state;
- (void)_didDetectTags:(id)tags;
- (void)_didFindLink;
- (void)_disconnectTag;
- (void)_disconnectTagAndBlockReadingUntilRemoved;
- (void)_processNextURL;
- (void)_requestAppClipForURLRecord:(id)record;
- (void)_requestNotificationForURLRecord:(id)record;
- (void)_restart;
- (void)_restartPolling;
- (void)_scheduleReactivationWithDelay:(double)delay;
- (void)_startPolling;
- (void)_startProcessingURLs;
- (void)_startReading;
- (void)_stopPolling;
- (void)_stopReadingAndTransitionToState:(int64_t)state;
- (void)dealloc;
- (void)readerSession:(id)session didDetectTags:(id)tags;
- (void)readerSession:(id)session externalReaderFieldNotification:(id)notification;
- (void)readerSessionDidEndUnexpectedly:(id)unexpectedly reason:(id)reason;
- (void)startReading;
- (void)stopReading;
@end

@implementation BCSNFCReader

- (BCSNFCReader)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = BCSNFCReader;
  v6 = [(BCSNFCReader *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v7->_state = 0;
    v8 = dispatch_get_global_queue(2, 0);
    v9 = dispatch_queue_create_with_target_V2("com.apple.BarcodeSupport.BCSNFCReader", 0, v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = dispatch_get_global_queue(0, 0);
    v12 = dispatch_queue_create_with_target_V2("com.apple.BarcodeSupport.BCSNFCReader.disconnectQueue", 0, v11);
    disconnectQueue = v7->_disconnectQueue;
    v7->_disconnectQueue = v12;

    array = [MEMORY[0x277CBEB18] array];
    urlQueue = v7->_urlQueue;
    v7->_urlQueue = array;

    sharedHardwareManager = [getNFHardwareManagerClass() sharedHardwareManager];
    v22 = 0;
    v17 = [sharedHardwareManager queryHardwareSupport:&v22];
    v18 = v22;

    if (v18)
    {
      if (readerLog_onceToken != -1)
      {
        [BCSNFCReader initWithDelegate:];
      }

      v19 = readerLog_log;
      if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_ERROR))
      {
        [BCSNFCReader initWithDelegate:v19];
      }
    }

    if (v17 != 2)
    {
      [(BCSNFCReader *)v7 _setStateAndNotifyDelegate:1];
    }

    v20 = v7;
  }

  return v7;
}

- (int64_t)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __21__BCSNFCReader_state__block_invoke;
  v5[3] = &unk_278CFE9D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)startReading
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__BCSNFCReader_startReading__block_invoke;
  block[3] = &unk_278CFE7E8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_startReading
{
  [(NSTimer *)self->_reactivateTimer invalidate];
  reactivateTimer = self->_reactivateTimer;
  self->_reactivateTimer = 0;

  if (self->_state != 1 && !self->_tentativeSession && !self->_session)
  {
    if (readerLog_onceToken != -1)
    {
      [BCSNFCReader _startReading];
    }

    v4 = readerLog_log;
    if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_241993000, v4, OS_LOG_TYPE_INFO, "Starting reader", buf, 2u);
    }

    objc_initWeak(buf, self);
    sharedHardwareManager = [getNFHardwareManagerClass() sharedHardwareManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__BCSNFCReader__startReading__block_invoke;
    v8[3] = &unk_278CFEA28;
    objc_copyWeak(&v9, buf);
    v8[4] = self;
    v6 = [sharedHardwareManager startReaderSession:v8];
    tentativeSession = self->_tentativeSession;
    self->_tentativeSession = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

void __29__BCSNFCReader__startReading__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__BCSNFCReader__startReading__block_invoke_2;
  v11[3] = &unk_278CFEA00;
  objc_copyWeak(&v15, (a1 + 40));
  v8 = v6;
  v12 = v8;
  v9 = v5;
  v10 = *(a1 + 32);
  v13 = v9;
  v14 = v10;
  [WeakRetained _performBlockOnQueue:v11];

  objc_destroyWeak(&v15);
}

void __29__BCSNFCReader__startReading__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[5];
    WeakRetained[5] = 0;

    v5 = (a1 + 32);
    if (*(a1 + 32))
    {
      if (readerLog_onceToken != -1)
      {
        [BCSNFCReader _startReading];
      }

      v6 = readerLog_log;
      if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_ERROR))
      {
        __29__BCSNFCReader__startReading__block_invoke_2_cold_2(v5, v6);
      }

      [v3 _setStateAndNotifyDelegate:8];
    }

    else
    {
      [*(a1 + 40) setDelegate:v3];
      objc_storeStrong(v3 + 6, *(a1 + 40));
      if ([v3 _startPolling])
      {
        [v3 _setStateAndNotifyDelegate:2];
        v7 = os_transaction_create();
        v8 = *(a1 + 48);
        v9 = *(v8 + 80);
        *(v8 + 80) = v7;
      }

      else
      {
        [*(a1 + 40) endSession];
        v10 = v3[6];
        v3[6] = 0;
      }
    }
  }
}

- (void)stopReading
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__BCSNFCReader_stopReading__block_invoke;
  block[3] = &unk_278CFE7E8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __27__BCSNFCReader_stopReading__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isWaiting])
  {
    if (readerLog_onceToken != -1)
    {
      [BCSNFCReader _startReading];
    }

    v2 = readerLog_log;
    if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_241993000, v2, OS_LOG_TYPE_INFO, "Reader is waiting", v5, 2u);
    }

    return [*(a1 + 32) _stopReadingAndTransitionToState:7];
  }

  else
  {
    v4 = *(a1 + 32);

    return [v4 _stopReadingAndTransitionToState:0];
  }
}

- (void)_stopReadingAndTransitionToState:(int64_t)state
{
  if (readerLog_onceToken != -1)
  {
    [BCSNFCReader _startReading];
  }

  v5 = readerLog_log;
  if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_241993000, v5, OS_LOG_TYPE_INFO, "Stopping reader", v12, 2u);
  }

  [(NFSession *)self->_tentativeSession endSession];
  tentativeSession = self->_tentativeSession;
  self->_tentativeSession = 0;

  [(NFReaderSession *)self->_session endSession];
  session = self->_session;
  self->_session = 0;

  self->_sessionErrorCount = 0;
  self->_debouncedTagNotNDEFFormattedError = 0;
  [(NSTimer *)self->_reactivateTimer invalidate];
  reactivateTimer = self->_reactivateTimer;
  self->_reactivateTimer = 0;

  if (state == 7)
  {
    [(NSMutableArray *)self->_urlQueue removeAllObjects];
    transaction = self->_transaction;
    self->_transaction = 0;

LABEL_11:
    [(BCSNFCReader *)self _setStateAndNotifyDelegate:state];
    return;
  }

  [(CPSClipRequest *)self->_clipRequest cancel];
  clipRequest = self->_clipRequest;
  self->_clipRequest = 0;

  if (state == 5)
  {
    goto LABEL_11;
  }

  [(NSMutableArray *)self->_urlQueue removeAllObjects];
  if (state == 6)
  {
    goto LABEL_11;
  }

  if (state == 9)
  {
    goto LABEL_11;
  }

  v11 = self->_transaction;
  self->_transaction = 0;

  if (state != 10)
  {
    goto LABEL_11;
  }
}

- (BOOL)_startPolling
{
  session = self->_session;
  v7 = 0;
  [(NFReaderSession *)session startPollingWithError:&v7];
  v4 = v7;
  if (v4)
  {
    if (readerLog_onceToken != -1)
    {
      [BCSNFCReader initWithDelegate:];
    }

    v5 = readerLog_log;
    if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_ERROR))
    {
      [(BCSNFCReader *)v5 _startPolling];
    }

    [(BCSNFCReader *)self _stopReadingAndTransitionToState:8];
  }

  return v4 == 0;
}

- (void)_stopPolling
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  _bcs_privacyPreservingDescription = [OUTLINED_FUNCTION_2() _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_241993000, v4, v5, "Failed to stop polling with error: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_restart
{
  state = self->_state;
  if (state == 2)
  {
    if (readerLog_onceToken != -1)
    {
      [BCSNFCReader _startReading];
    }

    v5 = readerLog_log;
    if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_241993000, v5, OS_LOG_TYPE_INFO, "Restarting polling", v6, 2u);
    }

    [(BCSNFCReader *)self _startPolling];
  }

  else if (state == 9)
  {
    if (readerLog_onceToken != -1)
    {
      [BCSNFCReader _startReading];
    }

    v4 = readerLog_log;
    if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241993000, v4, OS_LOG_TYPE_INFO, "Restarting reader due to repeated errors", buf, 2u);
    }

    [(BCSNFCReader *)self _startReading];
  }
}

- (void)dealloc
{
  if (readerLog_onceToken != -1)
  {
    [BCSNFCReader _startReading];
  }

  v3 = readerLog_log;
  if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241993000, v3, OS_LOG_TYPE_INFO, "Deallocating", buf, 2u);
  }

  [(BCSNFCReader *)self _stopReadingAndTransitionToState:10];
  v4.receiver = self;
  v4.super_class = BCSNFCReader;
  [(BCSNFCReader *)&v4 dealloc];
}

- (void)readerSession:(id)session didDetectTags:(id)tags
{
  tagsCopy = tags;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__BCSNFCReader_readerSession_didDetectTags___block_invoke;
  block[3] = &unk_278CFEA50;
  objc_copyWeak(&v10, &location);
  v9 = tagsCopy;
  v7 = tagsCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __44__BCSNFCReader_readerSession_didDetectTags___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didDetectTags:*(a1 + 32)];
}

- (void)readerSessionDidEndUnexpectedly:(id)unexpectedly reason:(id)reason
{
  unexpectedlyCopy = unexpectedly;
  reasonCopy = reason;
  if (readerLog_onceToken != -1)
  {
    [BCSNFCReader _startReading];
  }

  v8 = readerLog_log;
  if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_ERROR))
  {
    [BCSNFCReader readerSessionDidEndUnexpectedly:v8 reason:?];
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__BCSNFCReader_readerSessionDidEndUnexpectedly_reason___block_invoke;
  block[3] = &unk_278CFEA50;
  objc_copyWeak(&v13, &location);
  v12 = reasonCopy;
  v10 = reasonCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __55__BCSNFCReader_readerSessionDidEndUnexpectedly_reason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    WeakRetained[6] = 0;
    v5 = WeakRetained;

    if ([*(a1 + 32) code] == 5)
    {
      v4 = 3;
    }

    else
    {
      v4 = 8;
    }

    [v5 _stopReadingAndTransitionToState:v4];
    WeakRetained = v5;
  }
}

- (void)readerSession:(id)session externalReaderFieldNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__BCSNFCReader_readerSession_externalReaderFieldNotification___block_invoke;
  block[3] = &unk_278CFE7E8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __62__BCSNFCReader_readerSession_externalReaderFieldNotification___block_invoke(uint64_t a1)
{
  if (readerLog_onceToken != -1)
  {
    [BCSNFCReader _startReading];
  }

  v2 = readerLog_log;
  if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_241993000, v2, OS_LOG_TYPE_INFO, "Entered external reader field", v4, 2u);
  }

  return [*(a1 + 32) _stopReadingAndTransitionToState:4];
}

- (void)_didDetectTags:(id)tags
{
  firstObject = [tags firstObject];
  if (firstObject && [(BCSNFCReader *)self _readTag:firstObject]&& [(NSMutableArray *)self->_urlQueue count])
  {
    [(BCSNFCReader *)self _startProcessingURLs];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)_readTag:(id)tag
{
  v49 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  if (readerLog_onceToken != -1)
  {
    [BCSNFCReader _startReading];
  }

  v5 = readerLog_log;
  if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v48 = tagCopy;
    _os_log_impl(&dword_241993000, v5, OS_LOG_TYPE_INFO, "Connecting to tag: %{private}@", buf, 0xCu);
  }

  session = self->_session;
  v45 = 0;
  v7 = [(NFReaderSession *)session connectTag:tagCopy error:&v45];
  v8 = v45;
  if (v7)
  {
    v9 = self->_session;
    v44 = 0;
    v10 = [(NFReaderSession *)v9 ndefReadWithError:&v44];
    v11 = v44;
    v12 = v11 == 0;
    if (!v11)
    {
      records = [v10 records];
      if (![records count])
      {
        if (readerLog_onceToken != -1)
        {
          [BCSNFCReader initWithDelegate:];
        }

        v18 = readerLog_log;
        if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_241993000, v18, OS_LOG_TYPE_INFO, "Tag is empty", buf, 2u);
        }
      }

      v35 = 0;
      v38 = v10;
      selfCopy = self;
      v36 = v8;
      v37 = tagCopy;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v19 = records;
      v20 = [v19 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v41;
        do
        {
          v23 = 0;
          do
          {
            if (*v41 != v22)
            {
              objc_enumerationMutation(v19);
            }

            decode = [*(*(&v40 + 1) + 8 * v23) decode];
            if (readerLog_onceToken != -1)
            {
              [BCSNFCReader initWithDelegate:];
            }

            v25 = readerLog_log;
            if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              v48 = decode;
              _os_log_impl(&dword_241993000, v25, OS_LOG_TYPE_INFO, "Reading record with payload: %{private}@", buf, 0xCu);
            }

            v26 = [MEMORY[0x277CBEBC0] _lp_URLWithUserTypedString:decode relativeToURL:0];
            if (v26)
            {
              v27 = v26;
              scheme = [v26 scheme];
              v29 = [scheme length] ? v27 : 0;

              if (v29)
              {
                if (readerLog_onceToken != -1)
                {
                  [BCSNFCReader initWithDelegate:];
                }

                v30 = readerLog_log;
                if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
                {
                  *buf = 138477827;
                  v48 = v29;
                  _os_log_impl(&dword_241993000, v30, OS_LOG_TYPE_INFO, "Parsed URL: %{private}@", buf, 0xCu);
                }

                urlQueue = selfCopy->_urlQueue;
                v32 = [[BCSNFCReaderURLRecord alloc] initWithURL:v29 message:v38];
                [(NSMutableArray *)urlQueue addObject:v32];
              }
            }

            ++v23;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v21);
      }

      selfCopy->_sessionErrorCount = 0;
      selfCopy->_debouncedTagNotNDEFFormattedError = 0;
      [(BCSNFCReader *)selfCopy _disconnectTagAndBlockReadingUntilRemoved];

      v8 = v36;
      tagCopy = v37;
      v12 = v11 == 0;
      v10 = v38;
      v11 = v35;
      goto LABEL_51;
    }

    if (readerLog_onceToken != -1)
    {
      [BCSNFCReader initWithDelegate:];
    }

    v13 = readerLog_log;
    if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_ERROR))
    {
      [BCSNFCReader _readTag:v13];
    }

    code = [v11 code];
    v15 = code;
    if (code == 37)
    {
      if (self->_debouncedTagNotNDEFFormattedError)
      {
        [(BCSNFCReaderDelegate *)self->_delegate nfcReaderDidDetectNonNDEFTag];
        [(BCSNFCReader *)self _disconnectTagAndBlockReadingUntilRemoved];
LABEL_50:
        self->_debouncedTagNotNDEFFormattedError = 1;
        goto LABEL_51;
      }
    }

    else if (code == 49 || code == 28)
    {
      [(BCSNFCReader *)self _disconnectTagAndBlockReadingUntilRemoved];
      goto LABEL_51;
    }

    [(BCSNFCReader *)self _disconnectTag];
    [(BCSNFCReader *)self _restartPolling];
    if (v15 == 37)
    {
      goto LABEL_50;
    }

LABEL_51:

    goto LABEL_52;
  }

  if (readerLog_onceToken != -1)
  {
    [BCSNFCReader initWithDelegate:];
  }

  v16 = readerLog_log;
  if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_ERROR))
  {
    [BCSNFCReader _readTag:v16];
  }

  [(BCSNFCReader *)self _restartPolling];
  v12 = 0;
LABEL_52:

  v33 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_restartPolling
{
  [(BCSNFCReader *)self _stopPolling];
  sessionErrorCount = self->_sessionErrorCount;
  if (sessionErrorCount < 6)
  {
    self->_sessionErrorCount = sessionErrorCount + 1;
  }

  else
  {
    [(BCSNFCReader *)self _stopReadingAndTransitionToState:9];
  }

  objc_initWeak(&location, self);
  v4 = dispatch_time(0, 100000000);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__BCSNFCReader__restartPolling__block_invoke;
  v6[3] = &unk_278CFEA78;
  objc_copyWeak(&v7, &location);
  dispatch_after(v4, queue, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __31__BCSNFCReader__restartPolling__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _restart];
}

- (void)_disconnectTag
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  _bcs_privacyPreservingDescription = [OUTLINED_FUNCTION_2() _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_241993000, v4, v5, "Failed to disconnect from tag with error: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_disconnectTagAndBlockReadingUntilRemoved
{
  objc_initWeak(&location, self->_session);
  objc_initWeak(&from, self);
  disconnectQueue = self->_disconnectQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__BCSNFCReader__disconnectTagAndBlockReadingUntilRemoved__block_invoke;
  v4[3] = &unk_278CFEAA0;
  objc_copyWeak(&v5, &location);
  objc_copyWeak(&v6, &from);
  dispatch_async(disconnectQueue, v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __57__BCSNFCReader__disconnectTagAndBlockReadingUntilRemoved__block_invoke(uint64_t a1)
{
  if (readerLog_onceToken != -1)
  {
    [BCSNFCReader _startReading];
  }

  v2 = readerLog_log;
  if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241993000, v2, OS_LOG_TYPE_INFO, "Waiting for tag removal", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = 0;
  [WeakRetained disconnectTagWithCardRemoval:&v10];
  v4 = v10;

  if (v4)
  {
    if (readerLog_onceToken != -1)
    {
      [BCSNFCReader initWithDelegate:];
    }

    v5 = readerLog_log;
    if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_ERROR))
    {
      __57__BCSNFCReader__disconnectTagAndBlockReadingUntilRemoved__block_invoke_cold_3(v5, v4);
    }
  }

  else
  {
    if (readerLog_onceToken != -1)
    {
      [BCSNFCReader initWithDelegate:];
    }

    v6 = readerLog_log;
    if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241993000, v6, OS_LOG_TYPE_INFO, "Disconnected from tag", buf, 2u);
    }
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__BCSNFCReader__disconnectTagAndBlockReadingUntilRemoved__block_invoke_40;
  v8[3] = &unk_278CFEA78;
  objc_copyWeak(&v9, (a1 + 40));
  [v7 _performBlockOnQueue:v8];

  objc_destroyWeak(&v9);
}

void __57__BCSNFCReader__disconnectTagAndBlockReadingUntilRemoved__block_invoke_40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[2] == 2)
  {
    v2 = WeakRetained;
    [WeakRetained _startPolling];
    WeakRetained = v2;
  }
}

- (void)_startProcessingURLs
{
  [(BCSNFCReader *)self _stopReadingAndTransitionToState:5];

  [(BCSNFCReader *)self _processNextURL];
}

- (void)_processNextURL
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL __CPSClipsFeatureEnabled(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"BCSNFCReader.m" lineNumber:32 description:{@"%s", dlerror()}];

  __break(1u);
}

void __31__BCSNFCReader__processNextURL__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__BCSNFCReader__processNextURL__block_invoke_2;
  v10[3] = &unk_278CFEA00;
  objc_copyWeak(&v14, (a1 + 40));
  v8 = v5;
  v11 = v8;
  v12 = *(a1 + 32);
  v9 = v6;
  v13 = v9;
  [WeakRetained _performBlockOnQueue:v10];

  objc_destroyWeak(&v14);
}

void __31__BCSNFCReader__processNextURL__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      if (readerLog_onceToken != -1)
      {
        [BCSNFCReader _startReading];
      }

      v3 = readerLog_log;
      if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_241993000, v3, OS_LOG_TYPE_INFO, "Clip is available", &v9, 2u);
      }

      [WeakRetained _didFindLink];
      [WeakRetained _requestAppClipForURLRecord:*(a1 + 40)];
    }

    else
    {
      if (readerLog_onceToken != -1)
      {
        [BCSNFCReader _startReading];
      }

      v4 = readerLog_log;
      if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 48);
        v6 = v4;
        v7 = [v5 _bcs_privacyPreservingDescription];
        v9 = 138543362;
        v10 = v7;
        _os_log_impl(&dword_241993000, v6, OS_LOG_TYPE_INFO, "Clip is unavailable: %{public}@", &v9, 0xCu);
      }

      [WeakRetained _requestNotificationForURLRecord:*(a1 + 40)];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_requestAppClipForURLRecord:(id)record
{
  recordCopy = record;
  if (readerLog_onceToken != -1)
  {
    [BCSNFCReader _startReading];
  }

  v5 = readerLog_log;
  if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241993000, v5, OS_LOG_TYPE_INFO, "Creating clip request", buf, 2u);
  }

  v6 = +[BCSAnalyticsLogger sharedLogger];
  [v6 didScanNFCTagOfType:1];

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v7 = getCPSClipRequestClass_softClass;
  v28 = getCPSClipRequestClass_softClass;
  if (!getCPSClipRequestClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getCPSClipRequestClass_block_invoke;
    v23 = &unk_278CFE620;
    v24 = &v25;
    __getCPSClipRequestClass_block_invoke(buf);
    v7 = v26[3];
  }

  v8 = v7;
  _Block_object_dispose(&v25, 8);
  v9 = [v7 alloc];
  v10 = [recordCopy url];
  v11 = [v9 initWithURL:v10];
  clipRequest = self->_clipRequest;
  self->_clipRequest = v11;

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v13 = getCPSSessionConfigurationClass_softClass;
  v28 = getCPSSessionConfigurationClass_softClass;
  if (!getCPSSessionConfigurationClass_softClass)
  {
    *buf = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getCPSSessionConfigurationClass_block_invoke;
    v23 = &unk_278CFE620;
    v24 = &v25;
    __getCPSSessionConfigurationClass_block_invoke(buf);
    v13 = v26[3];
  }

  v14 = v13;
  _Block_object_dispose(&v25, 8);
  standardConfiguration = [v13 standardConfiguration];
  [standardConfiguration setOriginIsControlCenter:1];
  sessionProxy = [(CPSClipRequest *)self->_clipRequest sessionProxy];
  [sessionProxy setConfiguration:standardConfiguration];

  objc_initWeak(buf, self);
  v17 = self->_clipRequest;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__BCSNFCReader__requestAppClipForURLRecord___block_invoke;
  v18[3] = &unk_278CFEB18;
  objc_copyWeak(&v19, buf);
  [(CPSClipRequest *)v17 requestClipWithCompletion:v18];
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __44__BCSNFCReader__requestAppClipForURLRecord___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__BCSNFCReader__requestAppClipForURLRecord___block_invoke_2;
  v8[3] = &unk_278CFEAF0;
  objc_copyWeak(&v10, (a1 + 32));
  v11 = a2;
  v7 = v5;
  v9 = v7;
  [WeakRetained _performBlockOnQueue:v8];

  objc_destroyWeak(&v10);
}

void __44__BCSNFCReader__requestAppClipForURLRecord___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (readerLog_onceToken != -1)
    {
      [BCSNFCReader _startReading];
    }

    v3 = readerLog_log;
    if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
    {
      if (*(a1 + 48))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v5 = *(a1 + 32);
      v6 = v3;
      v7 = [v5 _bcs_privacyPreservingDescription];
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_241993000, v6, OS_LOG_TYPE_INFO, "Clip request responded with available: %@, error: %@", &v10, 0x16u);
    }

    v8 = WeakRetained[8];
    WeakRetained[8] = 0;

    [WeakRetained _scheduleReactivationWithDelay:*(WeakRetained + 15)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_requestNotificationForURLRecord:(id)record
{
  v31 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (readerLog_onceToken != -1)
  {
    [BCSNFCReader _startReading];
  }

  v5 = readerLog_log;
  if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_241993000, v5, OS_LOG_TYPE_INFO, "Attempting to post notification", &buf, 2u);
  }

  v6 = [recordCopy url];
  v7 = [BCSURLDataParser parseURL:v6];
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_notificationService);
    if (readerLog_onceToken != -1)
    {
      [BCSNFCReader initWithDelegate:];
    }

    v9 = readerLog_log;
    if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      type = [v7 type];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = type;
      _os_log_impl(&dword_241993000, v10, OS_LOG_TYPE_INFO, "BCSNFCCodeParser: Detected NFC URL has type %ld", &buf, 0xCu);
    }

    v12 = [BCSNFCCodePayload alloc];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v13 = getNFCNDEFMessageClass_softClass;
    v26 = getNFCNDEFMessageClass_softClass;
    if (!getNFCNDEFMessageClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v28 = __getNFCNDEFMessageClass_block_invoke;
      v29 = &unk_278CFE620;
      v30 = &v23;
      __getNFCNDEFMessageClass_block_invoke(&buf);
      v13 = v24[3];
    }

    v14 = v13;
    _Block_object_dispose(&v23, 8);
    message = [recordCopy message];
    asData = [message asData];
    v17 = [v13 ndefMessageWithData:asData];
    v18 = [(BCSNFCCodePayload *)v12 initWithNFCPayload:v17];

    objc_initWeak(&buf, self);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __49__BCSNFCReader__requestNotificationForURLRecord___block_invoke;
    v21[3] = &unk_278CFEB68;
    objc_copyWeak(&v22, &buf);
    v21[4] = self;
    [WeakRetained notifyParsedCodeWithData:v7 codePayload:v18 shouldReplacePreviousNotifications:0 reply:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&buf);
  }

  else
  {
    if (readerLog_onceToken != -1)
    {
      [BCSNFCReader initWithDelegate:];
    }

    v19 = readerLog_log;
    if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_ERROR))
    {
      [BCSNFCReader _requestNotificationForURLRecord:v19];
    }

    [(BCSNFCReader *)self _processNextURL];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __49__BCSNFCReader__requestNotificationForURLRecord___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__BCSNFCReader__requestNotificationForURLRecord___block_invoke_2;
  v10[3] = &unk_278CFEB40;
  objc_copyWeak(&v13, (a1 + 40));
  v8 = v5;
  v9 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  [WeakRetained _performBlockOnQueue:v10];

  objc_destroyWeak(&v13);
}

void __49__BCSNFCReader__requestNotificationForURLRecord___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = +[BCSAnalyticsLogger sharedLogger];
    [v3 didScanNFCTagOfType:0];

    v4 = (a1 + 32);
    if (*(a1 + 32))
    {
      if (readerLog_onceToken != -1)
      {
        [BCSNFCReader _startReading];
      }

      v5 = readerLog_log;
      if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_ERROR))
      {
        __49__BCSNFCReader__requestNotificationForURLRecord___block_invoke_2_cold_2(v4, v5);
      }

      [WeakRetained _processNextURL];
    }

    else
    {
      if (readerLog_onceToken != -1)
      {
        [BCSNFCReader _startReading];
      }

      v6 = readerLog_log;
      if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_241993000, v6, OS_LOG_TYPE_INFO, "URL is actionable", v7, 2u);
      }

      [WeakRetained _didFindLink];
      [WeakRetained _scheduleReactivationWithDelay:*(*(a1 + 40) + 112)];
    }
  }
}

- (void)_didFindLink
{
  if (readerLog_onceToken != -1)
  {
    [BCSNFCReader _startReading];
  }

  v3 = readerLog_log;
  if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_241993000, v3, OS_LOG_TYPE_INFO, "Found link", v4, 2u);
  }

  [(BCSNFCReader *)self _stopReadingAndTransitionToState:6];
}

- (void)_scheduleReactivationWithDelay:(double)delay
{
  v16 = *MEMORY[0x277D85DE8];
  if (delay <= 0.0)
  {
    v11 = *MEMORY[0x277D85DE8];

    [(BCSNFCReader *)self _setStateAndNotifyDelegate:0];
  }

  else
  {
    if (readerLog_onceToken != -1)
    {
      [BCSNFCReader _startReading];
    }

    v5 = readerLog_log;
    if (os_log_type_enabled(readerLog_log, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      delayCopy = delay;
      _os_log_impl(&dword_241993000, v5, OS_LOG_TYPE_INFO, "Scheduling reactivation after %f seconds", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v6 = MEMORY[0x277CBEBB8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__BCSNFCReader__scheduleReactivationWithDelay___block_invoke;
    v12[3] = &unk_278CFEB90;
    objc_copyWeak(&v13, buf);
    v7 = [v6 timerWithTimeInterval:0 repeats:v12 block:delay];
    reactivateTimer = self->_reactivateTimer;
    self->_reactivateTimer = v7;

    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [mainRunLoop addTimer:self->_reactivateTimer forMode:*MEMORY[0x277CBE738]];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
    v10 = *MEMORY[0x277D85DE8];
  }
}

void __47__BCSNFCReader__scheduleReactivationWithDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startReading];
}

- (BCSNotificationService)notificationService
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationService);

  return WeakRetained;
}

- (void)initWithDelegate:(void *)a1 .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_241993000, v4, v5, "Failed to determine hardware support state with error: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __29__BCSNFCReader__startReading__block_invoke_2_cold_2(uint64_t *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_2() _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_241993000, v6, v7, "Failed to start reader session with error: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startPolling
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  _bcs_privacyPreservingDescription = [OUTLINED_FUNCTION_2() _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_241993000, v4, v5, "Failed to start polling with error: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)readerSessionDidEndUnexpectedly:(void *)a1 reason:.cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_241993000, v4, v5, "Reader session ended unexpectedly: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_readTag:(void *)a1 .cold.3(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_241993000, v4, v5, "Failed to connect to tag with error: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_readTag:(void *)a1 .cold.5(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_241993000, v4, v5, "Failed to read tag with error: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __57__BCSNFCReader__disconnectTagAndBlockReadingUntilRemoved__block_invoke_cold_3(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_241993000, v3, OS_LOG_TYPE_ERROR, "Failed to disconnect and wait for tag removal with error: %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __49__BCSNFCReader__requestNotificationForURLRecord___block_invoke_2_cold_2(uint64_t *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_2() _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_241993000, v6, v7, "Failed to post notification for URL with error: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end