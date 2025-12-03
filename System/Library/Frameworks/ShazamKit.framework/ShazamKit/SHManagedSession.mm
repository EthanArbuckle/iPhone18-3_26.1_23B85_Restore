@interface SHManagedSession
- (BOOL)isMatching;
- (BOOL)isUsingCustomCatalog:(id)catalog;
- (BOOL)session:(id)session shouldAttemptToMatchSignature:(id)signature;
- (SHCatalog)catalog;
- (SHManagedSession)init;
- (SHManagedSession)initWithCatalog:(id)catalog;
- (SHManagedSession)initWithCatalog:(id)catalog matcher:(id)matcher sessionDriver:(id)driver serviceConnection:(id)connection;
- (SHManagedSessionDelegate)delegate;
- (void)didCalculateSpectralData:(id)data;
- (void)ensureCallerHasRecordTCCWithCompletionHandler:(id)handler;
- (void)finishedSession:(id)session;
- (void)matchAmbientAudioSnippet;
- (void)matchAmbientAudioSnippetUntilDeadline:(id)deadline;
- (void)matchWithCallback:(id)callback;
- (void)prepareMatchWithPreparedCallback:(id)callback withCompletionHandler:(id)handler;
- (void)prepareWithCompletionHandler:(id)handler;
- (void)session:(id)session didFindMatch:(id)match;
- (void)session:(id)session didNotFindMatchForSignature:(id)signature error:(id)error;
- (void)session:(id)session didProduceResponse:(id)response;
- (void)singleMatchWithCompletionHandler:(id)handler;
- (void)stopMatchingAmbientAudioSnippet;
@end

@implementation SHManagedSession

- (SHManagedSession)init
{
  v3 = objc_opt_new();
  v4 = [(SHManagedSession *)self initWithCatalog:v3];

  return v4;
}

- (SHManagedSession)initWithCatalog:(id)catalog
{
  catalogCopy = catalog;
  v5 = [SHShazamKitServiceConnection alloc];
  v6 = objc_opt_new();
  v7 = [(SHShazamKitServiceConnection *)v5 initWithConnectionProvider:v6];

  if ([(SHManagedSession *)self isUsingCustomCatalog:catalogCopy])
  {
    v8 = [[SHManagedSessionCustomCatalogDriver alloc] initWithServiceConnection:v7];
    v9 = [[SHManagedSessionCustomCatalogMatcher alloc] initWithCustomCatalog:catalogCopy];
    v10 = [(SHManagedSession *)self initWithCatalog:catalogCopy matcher:v9 sessionDriver:v8 serviceConnection:v7];
  }

  else
  {
    v10 = [(SHManagedSession *)self initWithCatalog:catalogCopy matcher:v7 sessionDriver:0 serviceConnection:v7];
  }

  return v10;
}

- (SHManagedSession)initWithCatalog:(id)catalog matcher:(id)matcher sessionDriver:(id)driver serviceConnection:(id)connection
{
  catalogCopy = catalog;
  matcherCopy = matcher;
  driverCopy = driver;
  connectionCopy = connection;
  v21.receiver = self;
  v21.super_class = SHManagedSession;
  v14 = [(SHManagedSession *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_shazamServiceConnection, connection);
    v16 = [[SHSession alloc] initWithCatalog:catalogCopy matcher:matcherCopy sessionDriver:driverCopy];
    session = v15->_session;
    v15->_session = v16;

    [(SHSession *)v15->_session setDelegate:v15];
    uUID = [MEMORY[0x277CCAD78] UUID];
    sharedRequestID = v15->_sharedRequestID;
    v15->_sharedRequestID = uUID;
  }

  return v15;
}

- (BOOL)isMatching
{
  inflightRequest = [(SHManagedSession *)self inflightRequest];
  v3 = inflightRequest != 0;

  return v3;
}

- (void)matchAmbientAudioSnippet
{
  inflightRequest = [(SHManagedSession *)self inflightRequest];

  if (inflightRequest)
  {
    v4 = sh_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_230F52000, v4, OS_LOG_TYPE_DEFAULT, "Can't start a new match attempt when there is an existing attempt already running.", buf, 2u);
    }
  }

  else
  {
    session = [(SHManagedSession *)self session];
    catalog = [session catalog];
    v7 = [(SHManagedSession *)self isUsingCustomCatalog:catalog];

    if (v7)
    {
      sharedRequestID = [(SHManagedSession *)self sharedRequestID];
      v9 = [SHMatcherRequest requestSignatureGenerationOnceForRequestID:sharedRequestID];
    }

    else
    {
      if ([(SHManagedSession *)self enableLiveActivity])
      {
        sharedRequestID = [(SHManagedSession *)self sharedRequestID];
        [SHMatcherRequest requestOnceWithAppIntentForRequestID:sharedRequestID];
      }

      else
      {
        sendNotifications = [(SHManagedSession *)self sendNotifications];
        sharedRequestID = [(SHManagedSession *)self sharedRequestID];
        [SHMatcherRequest requestOnceWithNotifications:sendNotifications forRequestID:sharedRequestID];
      }
      v9 = ;
    }

    v11 = v9;
    [(SHManagedSession *)self setInflightRequest:v9];

    shazamServiceConnection = [(SHManagedSession *)self shazamServiceConnection];
    inflightRequest2 = [(SHManagedSession *)self inflightRequest];
    [shazamServiceConnection startRecognitionForRequest:inflightRequest2];
  }
}

- (void)matchAmbientAudioSnippetUntilDeadline:(id)deadline
{
  deadlineCopy = deadline;
  inflightRequest = [(SHManagedSession *)self inflightRequest];

  if (inflightRequest)
  {
    v6 = sh_log_object();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_230F52000, v6, OS_LOG_TYPE_DEFAULT, "Can't start a new match attempt when there is an existing attempt already running.", v17, 2u);
    }
  }

  else
  {
    session = [(SHManagedSession *)self session];
    catalog = [session catalog];
    v9 = [(SHManagedSession *)self isUsingCustomCatalog:catalog];

    if (v9)
    {
      sharedRequestID = [(SHManagedSession *)self sharedRequestID];
      v11 = [SHMatcherRequest requestSignatureGenerationUntilDeadline:deadlineCopy forRequestID:sharedRequestID];
      [(SHManagedSession *)self setInflightRequest:v11];
    }

    else
    {
      sendNotifications = [(SHManagedSession *)self sendNotifications];
      sharedRequestID2 = [(SHManagedSession *)self sharedRequestID];
      v14 = [SHMatcherRequest requestToMatchUntilDeadline:deadlineCopy sendNotifications:sendNotifications forRequestID:sharedRequestID2];
      [(SHManagedSession *)self setInflightRequest:v14];
    }

    shazamServiceConnection = [(SHManagedSession *)self shazamServiceConnection];
    inflightRequest2 = [(SHManagedSession *)self inflightRequest];
    [shazamServiceConnection startRecognitionForRequest:inflightRequest2];
  }
}

- (BOOL)isUsingCustomCatalog:(id)catalog
{
  catalogCopy = catalog;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)stopMatchingAmbientAudioSnippet
{
  shazamServiceConnection = [(SHManagedSession *)self shazamServiceConnection];
  sharedRequestID = [(SHManagedSession *)self sharedRequestID];
  [shazamServiceConnection stopRecognitionForRequestID:sharedRequestID];

  [(SHManagedSession *)self setInflightRequest:0];

  [(SHManagedSession *)self setCompletionHandler:0];
}

- (void)ensureCallerHasRecordTCCWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = MEMORY[0x277CB8358];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SHManagedSession_ensureCallerHasRecordTCCWithCompletionHandler___block_invoke;
  v6[3] = &unk_2788F80A0;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [v4 requestRecordPermissionWithCompletionHandler:v6];
}

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__SHManagedSession_prepareWithCompletionHandler___block_invoke;
  v6[3] = &unk_2788F80C8;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(SHManagedSession *)self ensureCallerHasRecordTCCWithCompletionHandler:v6];
}

void __49__SHManagedSession_prepareWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v5 = [*(a1 + 32) shazamServiceConnection];
    v3 = [*(a1 + 32) sharedRequestID];
    [v5 prepareMatcherForRequestID:v3 completionHandler:*(a1 + 40)];
  }

  else
  {
    v4 = sh_log_object();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_230F52000, v4, OS_LOG_TYPE_ERROR, "Prepare call ignored, the caller does not have record permission", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)singleMatchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sh_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_230F52000, v5, OS_LOG_TYPE_DEBUG, "Calling single match with completion handler", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SHManagedSession_singleMatchWithCompletionHandler___block_invoke;
  v6[3] = &unk_2788F7F40;
  objc_copyWeak(&v7, buf);
  [(SHManagedSession *)self prepareMatchWithPreparedCallback:v6 withCompletionHandler:handlerCopy];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __53__SHManagedSession_singleMatchWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained matchAmbientAudioSnippet];
}

- (void)matchWithCallback:(id)callback
{
  callbackCopy = callback;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SHManagedSession_matchWithCallback___block_invoke;
  v5[3] = &unk_2788F7F40;
  objc_copyWeak(&v6, &location);
  [(SHManagedSession *)self prepareMatchWithPreparedCallback:v5 withCompletionHandler:callbackCopy];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __38__SHManagedSession_matchWithCallback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CBEAA8] distantFuture];
  [WeakRetained matchAmbientAudioSnippetUntilDeadline:v1];
}

- (void)prepareMatchWithPreparedCallback:(id)callback withCompletionHandler:(id)handler
{
  callbackCopy = callback;
  handlerCopy = handler;
  inflightRequest = [(SHManagedSession *)self inflightRequest];

  if (inflightRequest)
  {
    v9 = sh_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_230F52000, v9, OS_LOG_TYPE_DEBUG, "Cancelling this new attempt as there's an attempt already running", buf, 2u);
    }

    v10 = objc_opt_new();
    v11 = [SHError errorWithCode:202 underlyingError:0];
    handlerCopy[2](handlerCopy, 0, v10, v11);
  }

  else
  {
    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__SHManagedSession_prepareMatchWithPreparedCallback_withCompletionHandler___block_invoke;
    v12[3] = &unk_2788F80F0;
    v12[4] = self;
    v13 = handlerCopy;
    objc_copyWeak(&v15, buf);
    v14 = callbackCopy;
    [(SHManagedSession *)self ensureCallerHasRecordTCCWithCompletionHandler:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

void __75__SHManagedSession_prepareMatchWithPreparedCallback_withCompletionHandler___block_invoke(uint64_t a1, char a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setCompletionHandler:v3];

    v5 = *(*(a1 + 48) + 16);
    v6 = *MEMORY[0x277D85DE8];

    v5();
  }

  else
  {
    v7 = objc_opt_new();
    v13 = *MEMORY[0x277CCA068];
    v14[0] = @"Record permission is required";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [SHError errorWithCode:202 underlyingError:0 keyOverrides:v8];
    (*(v3 + 16))(v3, 0, v7, v9);

    v10 = *(a1 + 32);
    v11 = [v10 session];
    [v10 finishedSession:v11];

    v12 = *MEMORY[0x277D85DE8];
  }
}

- (SHCatalog)catalog
{
  session = [(SHManagedSession *)self session];
  catalog = [session catalog];

  return catalog;
}

- (void)session:(id)session didFindMatch:(id)match
{
  sessionCopy = session;
  matchCopy = match;
  delegate = [(SHManagedSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(SHManagedSession *)self delegate];
    [delegate2 session:sessionCopy didFindMatch:matchCopy];
  }

  completionHandler = [(SHManagedSession *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(SHManagedSession *)self completionHandler];
    querySignature = [matchCopy querySignature];
    (completionHandler2)[2](completionHandler2, matchCopy, querySignature, 0);
  }
}

- (void)session:(id)session didNotFindMatchForSignature:(id)signature error:(id)error
{
  sessionCopy = session;
  signatureCopy = signature;
  errorCopy = error;
  delegate = [(SHManagedSession *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(SHManagedSession *)self delegate];
    [delegate2 session:sessionCopy didNotFindMatchForSignature:signatureCopy error:errorCopy];
  }

  completionHandler = [(SHManagedSession *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(SHManagedSession *)self completionHandler];
    (completionHandler2)[2](completionHandler2, 0, signatureCopy, errorCopy);
  }
}

- (BOOL)session:(id)session shouldAttemptToMatchSignature:(id)signature
{
  sessionCopy = session;
  signatureCopy = signature;
  delegate = [(SHManagedSession *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(SHManagedSession *)self delegate];
    v11 = [delegate2 session:sessionCopy shouldAttemptToMatchSignature:signatureCopy];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)session:(id)session didProduceResponse:(id)response
{
  sessionCopy = session;
  responseCopy = response;
  delegate = [(SHManagedSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(SHManagedSession *)self delegate];
    [delegate2 session:sessionCopy didProduceResponse:responseCopy];
  }
}

- (void)finishedSession:(id)session
{
  sessionCopy = session;
  [(SHManagedSession *)self setInflightRequest:0];
  [(SHManagedSession *)self setCompletionHandler:0];
  delegate = [(SHManagedSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SHManagedSession *)self delegate];
    [delegate2 finishedSession:sessionCopy];
  }

  delegate3 = [(SHManagedSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate4 = [(SHManagedSession *)self delegate];
    [delegate4 finishedManagedSession:self];
  }
}

- (void)didCalculateSpectralData:(id)data
{
  dataCopy = data;
  delegate = [(SHManagedSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SHManagedSession *)self delegate];
    [delegate2 didCalculateSpectralData:dataCopy];
  }
}

- (SHManagedSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end