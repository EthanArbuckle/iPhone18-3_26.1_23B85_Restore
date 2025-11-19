@interface SHManagedSession
- (BOOL)isMatching;
- (BOOL)isUsingCustomCatalog:(id)a3;
- (BOOL)session:(id)a3 shouldAttemptToMatchSignature:(id)a4;
- (SHCatalog)catalog;
- (SHManagedSession)init;
- (SHManagedSession)initWithCatalog:(id)a3;
- (SHManagedSession)initWithCatalog:(id)a3 matcher:(id)a4 sessionDriver:(id)a5 serviceConnection:(id)a6;
- (SHManagedSessionDelegate)delegate;
- (void)didCalculateSpectralData:(id)a3;
- (void)ensureCallerHasRecordTCCWithCompletionHandler:(id)a3;
- (void)finishedSession:(id)a3;
- (void)matchAmbientAudioSnippet;
- (void)matchAmbientAudioSnippetUntilDeadline:(id)a3;
- (void)matchWithCallback:(id)a3;
- (void)prepareMatchWithPreparedCallback:(id)a3 withCompletionHandler:(id)a4;
- (void)prepareWithCompletionHandler:(id)a3;
- (void)session:(id)a3 didFindMatch:(id)a4;
- (void)session:(id)a3 didNotFindMatchForSignature:(id)a4 error:(id)a5;
- (void)session:(id)a3 didProduceResponse:(id)a4;
- (void)singleMatchWithCompletionHandler:(id)a3;
- (void)stopMatchingAmbientAudioSnippet;
@end

@implementation SHManagedSession

- (SHManagedSession)init
{
  v3 = objc_opt_new();
  v4 = [(SHManagedSession *)self initWithCatalog:v3];

  return v4;
}

- (SHManagedSession)initWithCatalog:(id)a3
{
  v4 = a3;
  v5 = [SHShazamKitServiceConnection alloc];
  v6 = objc_opt_new();
  v7 = [(SHShazamKitServiceConnection *)v5 initWithConnectionProvider:v6];

  if ([(SHManagedSession *)self isUsingCustomCatalog:v4])
  {
    v8 = [[SHManagedSessionCustomCatalogDriver alloc] initWithServiceConnection:v7];
    v9 = [[SHManagedSessionCustomCatalogMatcher alloc] initWithCustomCatalog:v4];
    v10 = [(SHManagedSession *)self initWithCatalog:v4 matcher:v9 sessionDriver:v8 serviceConnection:v7];
  }

  else
  {
    v10 = [(SHManagedSession *)self initWithCatalog:v4 matcher:v7 sessionDriver:0 serviceConnection:v7];
  }

  return v10;
}

- (SHManagedSession)initWithCatalog:(id)a3 matcher:(id)a4 sessionDriver:(id)a5 serviceConnection:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = SHManagedSession;
  v14 = [(SHManagedSession *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_shazamServiceConnection, a6);
    v16 = [[SHSession alloc] initWithCatalog:v10 matcher:v11 sessionDriver:v12];
    session = v15->_session;
    v15->_session = v16;

    [(SHSession *)v15->_session setDelegate:v15];
    v18 = [MEMORY[0x277CCAD78] UUID];
    sharedRequestID = v15->_sharedRequestID;
    v15->_sharedRequestID = v18;
  }

  return v15;
}

- (BOOL)isMatching
{
  v2 = [(SHManagedSession *)self inflightRequest];
  v3 = v2 != 0;

  return v3;
}

- (void)matchAmbientAudioSnippet
{
  v3 = [(SHManagedSession *)self inflightRequest];

  if (v3)
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
    v5 = [(SHManagedSession *)self session];
    v6 = [v5 catalog];
    v7 = [(SHManagedSession *)self isUsingCustomCatalog:v6];

    if (v7)
    {
      v8 = [(SHManagedSession *)self sharedRequestID];
      v9 = [SHMatcherRequest requestSignatureGenerationOnceForRequestID:v8];
    }

    else
    {
      if ([(SHManagedSession *)self enableLiveActivity])
      {
        v8 = [(SHManagedSession *)self sharedRequestID];
        [SHMatcherRequest requestOnceWithAppIntentForRequestID:v8];
      }

      else
      {
        v10 = [(SHManagedSession *)self sendNotifications];
        v8 = [(SHManagedSession *)self sharedRequestID];
        [SHMatcherRequest requestOnceWithNotifications:v10 forRequestID:v8];
      }
      v9 = ;
    }

    v11 = v9;
    [(SHManagedSession *)self setInflightRequest:v9];

    v13 = [(SHManagedSession *)self shazamServiceConnection];
    v12 = [(SHManagedSession *)self inflightRequest];
    [v13 startRecognitionForRequest:v12];
  }
}

- (void)matchAmbientAudioSnippetUntilDeadline:(id)a3
{
  v4 = a3;
  v5 = [(SHManagedSession *)self inflightRequest];

  if (v5)
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
    v7 = [(SHManagedSession *)self session];
    v8 = [v7 catalog];
    v9 = [(SHManagedSession *)self isUsingCustomCatalog:v8];

    if (v9)
    {
      v10 = [(SHManagedSession *)self sharedRequestID];
      v11 = [SHMatcherRequest requestSignatureGenerationUntilDeadline:v4 forRequestID:v10];
      [(SHManagedSession *)self setInflightRequest:v11];
    }

    else
    {
      v12 = [(SHManagedSession *)self sendNotifications];
      v13 = [(SHManagedSession *)self sharedRequestID];
      v14 = [SHMatcherRequest requestToMatchUntilDeadline:v4 sendNotifications:v12 forRequestID:v13];
      [(SHManagedSession *)self setInflightRequest:v14];
    }

    v15 = [(SHManagedSession *)self shazamServiceConnection];
    v16 = [(SHManagedSession *)self inflightRequest];
    [v15 startRecognitionForRequest:v16];
  }
}

- (BOOL)isUsingCustomCatalog:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)stopMatchingAmbientAudioSnippet
{
  v3 = [(SHManagedSession *)self shazamServiceConnection];
  v4 = [(SHManagedSession *)self sharedRequestID];
  [v3 stopRecognitionForRequestID:v4];

  [(SHManagedSession *)self setInflightRequest:0];

  [(SHManagedSession *)self setCompletionHandler:0];
}

- (void)ensureCallerHasRecordTCCWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CB8358];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SHManagedSession_ensureCallerHasRecordTCCWithCompletionHandler___block_invoke;
  v6[3] = &unk_2788F80A0;
  v7 = v3;
  v5 = v3;
  [v4 requestRecordPermissionWithCompletionHandler:v6];
}

- (void)prepareWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__SHManagedSession_prepareWithCompletionHandler___block_invoke;
  v6[3] = &unk_2788F80C8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)singleMatchWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  [(SHManagedSession *)self prepareMatchWithPreparedCallback:v6 withCompletionHandler:v4];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __53__SHManagedSession_singleMatchWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained matchAmbientAudioSnippet];
}

- (void)matchWithCallback:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SHManagedSession_matchWithCallback___block_invoke;
  v5[3] = &unk_2788F7F40;
  objc_copyWeak(&v6, &location);
  [(SHManagedSession *)self prepareMatchWithPreparedCallback:v5 withCompletionHandler:v4];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __38__SHManagedSession_matchWithCallback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CBEAA8] distantFuture];
  [WeakRetained matchAmbientAudioSnippetUntilDeadline:v1];
}

- (void)prepareMatchWithPreparedCallback:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SHManagedSession *)self inflightRequest];

  if (v8)
  {
    v9 = sh_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_230F52000, v9, OS_LOG_TYPE_DEBUG, "Cancelling this new attempt as there's an attempt already running", buf, 2u);
    }

    v10 = objc_opt_new();
    v11 = [SHError errorWithCode:202 underlyingError:0];
    v7[2](v7, 0, v10, v11);
  }

  else
  {
    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__SHManagedSession_prepareMatchWithPreparedCallback_withCompletionHandler___block_invoke;
    v12[3] = &unk_2788F80F0;
    v12[4] = self;
    v13 = v7;
    objc_copyWeak(&v15, buf);
    v14 = v6;
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
  v2 = [(SHManagedSession *)self session];
  v3 = [v2 catalog];

  return v3;
}

- (void)session:(id)a3 didFindMatch:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(SHManagedSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SHManagedSession *)self delegate];
    [v9 session:v13 didFindMatch:v6];
  }

  v10 = [(SHManagedSession *)self completionHandler];

  if (v10)
  {
    v11 = [(SHManagedSession *)self completionHandler];
    v12 = [v6 querySignature];
    (v11)[2](v11, v6, v12, 0);
  }
}

- (void)session:(id)a3 didNotFindMatchForSignature:(id)a4 error:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SHManagedSession *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(SHManagedSession *)self delegate];
    [v12 session:v15 didNotFindMatchForSignature:v8 error:v9];
  }

  v13 = [(SHManagedSession *)self completionHandler];

  if (v13)
  {
    v14 = [(SHManagedSession *)self completionHandler];
    (v14)[2](v14, 0, v8, v9);
  }
}

- (BOOL)session:(id)a3 shouldAttemptToMatchSignature:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SHManagedSession *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(SHManagedSession *)self delegate];
    v11 = [v10 session:v6 shouldAttemptToMatchSignature:v7];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)session:(id)a3 didProduceResponse:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SHManagedSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SHManagedSession *)self delegate];
    [v9 session:v10 didProduceResponse:v6];
  }
}

- (void)finishedSession:(id)a3
{
  v10 = a3;
  [(SHManagedSession *)self setInflightRequest:0];
  [(SHManagedSession *)self setCompletionHandler:0];
  v4 = [(SHManagedSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SHManagedSession *)self delegate];
    [v6 finishedSession:v10];
  }

  v7 = [(SHManagedSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SHManagedSession *)self delegate];
    [v9 finishedManagedSession:self];
  }
}

- (void)didCalculateSpectralData:(id)a3
{
  v7 = a3;
  v4 = [(SHManagedSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SHManagedSession *)self delegate];
    [v6 didCalculateSpectralData:v7];
  }
}

- (SHManagedSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end