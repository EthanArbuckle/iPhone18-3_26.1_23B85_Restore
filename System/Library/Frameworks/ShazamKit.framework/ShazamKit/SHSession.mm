@interface SHSession
- (BOOL)_isSessionDriverSignature:(id)a3;
- (BOOL)shouldGenerateSpectralOutput;
- (BOOL)validateSignature:(id)a3 error:(id *)a4;
- (SHSession)init;
- (SHSession)initWithCatalog:(SHCatalog *)catalog;
- (SHSession)initWithCatalog:(id)a3 matcher:(id)a4 sessionDriver:(id)a5;
- (SHSessionDriver)sessionDriver;
- (id)delegate;
- (void)dealloc;
- (void)didCalculateSpectralData:(id)a3;
- (void)handleCommonActionsForResponse:(id)a3;
- (void)matchSignature:(SHSignature *)signature;
- (void)matchStreamingBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)time;
- (void)matcher:(id)a3 didProduceResponse:(id)a4;
- (void)sessionDriverEncounteredUnrecoverableError:(id)a3 forSignature:(id)a4;
@end

@implementation SHSession

- (void)dealloc
{
  [(SHMatcher *)self->_matcher stopRecognition];
  v3.receiver = self;
  v3.super_class = SHSession;
  [(SHSession *)&v3 dealloc];
}

- (SHSession)init
{
  v3 = objc_alloc_init(SHShazamCatalog);
  v4 = [(SHSession *)self initWithCatalog:v3];

  return v4;
}

- (SHSession)initWithCatalog:(SHCatalog *)catalog
{
  v4 = catalog;
  v5 = [(SHCatalog *)v4 _createMatcher];
  if (!v5)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Could not find a valid matcher" userInfo:0];
    objc_exception_throw(v9);
  }

  v6 = v5;
  v7 = [(SHSession *)self initWithCatalog:v4 matcher:v5 sessionDriver:0];

  return v7;
}

- (SHSession)initWithCatalog:(id)a3 matcher:(id)a4 sessionDriver:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SHSession;
  v12 = [(SHSession *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_catalog, a3);
    objc_storeStrong(&v13->_matcher, a4);
    [(SHMatcher *)v13->_matcher setDelegate:v13];
    objc_storeStrong(&v13->_sessionDriver, a5);
    [(SHSessionDriver *)v13->_sessionDriver setSessionDriverDelegate:v13];
  }

  return v13;
}

- (BOOL)validateSignature:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  [v6 duration];
  v8 = v7;
  v9 = [(SHSession *)self catalog];
  [v9 maximumQuerySignatureDuration];
  if (v8 > v10)
  {

    goto LABEL_5;
  }

  [v6 duration];
  v12 = v11;
  v13 = [(SHSession *)self catalog];
  [v13 minimumQuerySignatureDuration];
  v15 = v14;

  if (v12 < v15)
  {
LABEL_5:
    v17 = MEMORY[0x277CCACA8];
    v18 = [(SHSession *)self catalog];
    [v18 minimumQuerySignatureDuration];
    v20 = v19;
    v21 = [(SHSession *)self catalog];
    [v21 maximumQuerySignatureDuration];
    v23 = v22;
    [v6 duration];
    v25 = [v17 stringWithFormat:@"The current Catalog accepts signatures in the range %f-%f, the current signature duration is %f", v20, v23, v24];

    v29 = *MEMORY[0x277CCA498];
    v30[0] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    [SHError annotateClientError:a4 code:201 underlyingError:0 keyOverrides:v26];

    v16 = 0;
    goto LABEL_6;
  }

  v16 = 1;
LABEL_6:

  v27 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)matchSignature:(SHSignature *)signature
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = signature;
  v5 = [(SHSession *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_8:
    v34 = 0;
    v18 = [(SHSession *)self validateSignature:v4 error:&v34];
    v15 = v34;
    if (v18)
    {
      v19 = [(SHSignature *)v4 copy];

      v20 = sh_log_object();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [(SHSignature *)v19 duration];
        *buf = 134217984;
        v36 = v21;
        _os_log_impl(&dword_230F52000, v20, OS_LOG_TYPE_DEFAULT, "Matching signature with duration %f", buf, 0xCu);
      }

      v22 = [(SHSession *)self catalog];
      v23 = [v22 _configuration];
      v24 = [v23 installationID];
      v16 = [SHMatcherRequest requestToMatchSignature:v19 installationID:v24 sendNotifications:0];

      v25 = [(SHSession *)self matcher];
      [v25 startRecognitionForRequest:v16];

      v4 = v19;
    }

    else
    {
      v26 = sh_log_object();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = v15;
        _os_log_impl(&dword_230F52000, v26, OS_LOG_TYPE_DEBUG, "Failed validation for signature with error %@", buf, 0xCu);
      }

      v16 = [SHMatcherResponse errorResponseForSignature:v4 error:v15];
      if ([(SHSession *)self _isSessionDriverSignature:v4])
      {
        v27 = [(SHSession *)self sessionDriver];
        v28 = [(SHSession *)self matcher];
        [v27 matcher:v28 didProduceResponse:v16];
      }

      v29 = [(SHSession *)self delegate];
      v30 = objc_opt_respondsToSelector();

      if (v30)
      {
        v31 = [(SHSession *)self delegate];
        v32 = [SHError remapErrorToClientError:v15];
        [v31 session:self didNotFindMatchForSignature:v4 error:v32];
      }

      [(SHSession *)self handleCommonActionsForResponse:v16];
    }

    goto LABEL_19;
  }

  v6 = [(SHSession *)self delegate];
  v7 = [v6 session:self shouldAttemptToMatchSignature:v4];

  if (v7)
  {
    goto LABEL_8;
  }

  if ([(SHSession *)self _isSessionDriverSignature:v4])
  {
    [(SHSignature *)v4 duration];
    v9 = v8;
    v10 = [(SHSession *)self catalog];
    [v10 maximumQuerySignatureDuration];
    v11 = 0.0;
    if (v9 < v12)
    {
      v13 = [(SHSession *)self catalog];
      [v13 maximumQuerySignatureDuration];
      v11 = v14;
    }

    v15 = [SHMatcherResponse noMatchWithRecordingIntermission:v4 recordingSignatureOffset:0.0 retrySeconds:0.0 signature:v11];
    v16 = [(SHSession *)self sessionDriver];
    v17 = [(SHSession *)self matcher];
    [v16 matcher:v17 didProduceResponse:v15];

LABEL_19:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)matchStreamingBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)time
{
  v6 = time;
  v7 = buffer;
  v8 = [(SHSession *)self sessionDriver];
  [v8 flow:v7 time:v6];
}

- (void)matcher:(id)a3 didProduceResponse:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 signature];
  v9 = [(SHSession *)self _isSessionDriverSignature:v8];

  if (!v9 || (-[SHSession sessionDriver](self, "sessionDriver"), v10 = objc_claimAutoreleasedReturnValue(), [v10 matcher:v6 didProduceResponse:v7], v10, objc_msgSend(v7, "result") != 2) || (objc_msgSend(v7, "retrySeconds"), v11 <= 0.0))
  {
    v12 = [v7 result];
    switch(v12)
    {
      case 1:
        v17 = [v7 match];
        v23 = sh_log_object();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v17 mediaItems];
          v25 = [v24 firstObject];
          v26 = [v25 valueForProperty:@"sh_title"];
          v30 = 138412290;
          v31 = v26;
          _os_log_impl(&dword_230F52000, v23, OS_LOG_TYPE_DEFAULT, "SHSession: Match found %@", &v30, 0xCu);
        }

        v27 = [(SHSession *)self delegate];
        v28 = objc_opt_respondsToSelector();

        if ((v28 & 1) == 0)
        {
          goto LABEL_17;
        }

        v18 = [(SHSession *)self delegate];
        [v18 session:self didFindMatch:v17];
        break;
      case 2:
        v21 = [(SHSession *)self delegate];
        v22 = objc_opt_respondsToSelector();

        if ((v22 & 1) == 0)
        {
LABEL_18:
          [(SHSession *)self handleCommonActionsForResponse:v7];
          goto LABEL_19;
        }

        v17 = [(SHSession *)self delegate];
        v18 = [v7 signature];
        [v17 session:self didNotFindMatchForSignature:v18 error:0];
        break;
      case 3:
        v13 = [v7 error];
        v14 = [v13 sh_isMatchAttemptCancelledError];

        if (v14)
        {
          goto LABEL_18;
        }

        v15 = [(SHSession *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if ((v16 & 1) == 0)
        {
          goto LABEL_18;
        }

        v17 = [(SHSession *)self delegate];
        v18 = [v7 signature];
        v19 = [v7 error];
        v20 = [SHError remapErrorToClientError:v19];
        [v17 session:self didNotFindMatchForSignature:v18 error:v20];

        break;
      default:
        goto LABEL_18;
    }

LABEL_17:
    goto LABEL_18;
  }

LABEL_19:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleCommonActionsForResponse:(id)a3
{
  v4 = a3;
  v5 = [(SHSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SHSession *)self delegate];
    [v7 session:self didProduceResponse:v4];
  }

  if (([v4 isStillRunningAssociatedRequest] & 1) == 0)
  {
    v8 = [(SHSession *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = sh_log_object();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_impl(&dword_230F52000, v10, OS_LOG_TYPE_DEBUG, "Returned all responses for request", v14, 2u);
      }

      v11 = [(SHSession *)self delegate];
      [v11 finishedSession:self];
    }
  }

  v12 = [v4 error];
  if ([v12 sh_isMatchAttemptCancelledError])
  {
    goto LABEL_11;
  }

  v13 = [(SHSession *)self sessionResponseCallback];

  if (v13)
  {
    v12 = [(SHSession *)self sessionResponseCallback];
    (v12)[2](v12, v4);
LABEL_11:
  }
}

- (void)sessionDriverEncounteredUnrecoverableError:(id)a3 forSignature:(id)a4
{
  v6 = [SHMatcherResponse errorResponseForSignature:a4 error:a3];
  v5 = [(SHSession *)self matcher];
  [(SHSession *)self matcher:v5 didProduceResponse:v6];
}

- (BOOL)shouldGenerateSpectralOutput
{
  v3 = [(SHSession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(SHSession *)self delegate];
  v6 = [v5 shouldGenerateSpectralOutput];

  return v6;
}

- (BOOL)_isSessionDriverSignature:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!self->_sessionDriver)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v6 = [v4 _ID];
  v7 = [(SHSession *)self sessionDriver];
  v8 = [v7 matchingSignatureID];
  v9 = [v6 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    if (self->_sessionDriver)
    {
      v11 = [(SHSession *)self sessionDriver];
      v12 = [v11 matchingSignatureID];

      if (v12)
      {
        v13 = sh_log_object();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = [v5 _ID];
          v15 = [(SHSession *)self sessionDriver];
          v16 = [v15 matchingSignatureID];
          v19 = 138412546;
          v20 = v14;
          v21 = 2112;
          v22 = v16;
          _os_log_impl(&dword_230F52000, v13, OS_LOG_TYPE_DEBUG, "Session received a response for non streaming session signature %@, session is waiting for %@", &v19, 0x16u);
        }
      }
    }

    goto LABEL_9;
  }

  v10 = 1;
LABEL_10:

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (SHSessionDriver)sessionDriver
{
  sessionDriver = self->_sessionDriver;
  if (!sessionDriver)
  {
    v4 = [(SHSession *)self catalog];
    v5 = [v4 _createSessionDriver];
    v6 = self->_sessionDriver;
    self->_sessionDriver = v5;

    [(SHSessionDriver *)self->_sessionDriver setSessionDriverDelegate:self];
    sessionDriver = self->_sessionDriver;
  }

  return sessionDriver;
}

- (void)didCalculateSpectralData:(id)a3
{
  v7 = a3;
  v4 = [(SHSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SHSession *)self delegate];
    [v6 didCalculateSpectralData:v7];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end