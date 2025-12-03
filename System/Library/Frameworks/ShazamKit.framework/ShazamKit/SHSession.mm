@interface SHSession
- (BOOL)_isSessionDriverSignature:(id)signature;
- (BOOL)shouldGenerateSpectralOutput;
- (BOOL)validateSignature:(id)signature error:(id *)error;
- (SHSession)init;
- (SHSession)initWithCatalog:(SHCatalog *)catalog;
- (SHSession)initWithCatalog:(id)catalog matcher:(id)matcher sessionDriver:(id)driver;
- (SHSessionDriver)sessionDriver;
- (id)delegate;
- (void)dealloc;
- (void)didCalculateSpectralData:(id)data;
- (void)handleCommonActionsForResponse:(id)response;
- (void)matchSignature:(SHSignature *)signature;
- (void)matchStreamingBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)time;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
- (void)sessionDriverEncounteredUnrecoverableError:(id)error forSignature:(id)signature;
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
  _createMatcher = [(SHCatalog *)v4 _createMatcher];
  if (!_createMatcher)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Could not find a valid matcher" userInfo:0];
    objc_exception_throw(v9);
  }

  v6 = _createMatcher;
  v7 = [(SHSession *)self initWithCatalog:v4 matcher:_createMatcher sessionDriver:0];

  return v7;
}

- (SHSession)initWithCatalog:(id)catalog matcher:(id)matcher sessionDriver:(id)driver
{
  catalogCopy = catalog;
  matcherCopy = matcher;
  driverCopy = driver;
  v15.receiver = self;
  v15.super_class = SHSession;
  v12 = [(SHSession *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_catalog, catalog);
    objc_storeStrong(&v13->_matcher, matcher);
    [(SHMatcher *)v13->_matcher setDelegate:v13];
    objc_storeStrong(&v13->_sessionDriver, driver);
    [(SHSessionDriver *)v13->_sessionDriver setSessionDriverDelegate:v13];
  }

  return v13;
}

- (BOOL)validateSignature:(id)signature error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  [signatureCopy duration];
  v8 = v7;
  catalog = [(SHSession *)self catalog];
  [catalog maximumQuerySignatureDuration];
  if (v8 > v10)
  {

    goto LABEL_5;
  }

  [signatureCopy duration];
  v12 = v11;
  catalog2 = [(SHSession *)self catalog];
  [catalog2 minimumQuerySignatureDuration];
  v15 = v14;

  if (v12 < v15)
  {
LABEL_5:
    v17 = MEMORY[0x277CCACA8];
    catalog3 = [(SHSession *)self catalog];
    [catalog3 minimumQuerySignatureDuration];
    v20 = v19;
    catalog4 = [(SHSession *)self catalog];
    [catalog4 maximumQuerySignatureDuration];
    v23 = v22;
    [signatureCopy duration];
    v25 = [v17 stringWithFormat:@"The current Catalog accepts signatures in the range %f-%f, the current signature duration is %f", v20, v23, v24];

    v29 = *MEMORY[0x277CCA498];
    v30[0] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    [SHError annotateClientError:error code:201 underlyingError:0 keyOverrides:v26];

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
  delegate = [(SHSession *)self delegate];
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

      catalog = [(SHSession *)self catalog];
      _configuration = [catalog _configuration];
      installationID = [_configuration installationID];
      sessionDriver2 = [SHMatcherRequest requestToMatchSignature:v19 installationID:installationID sendNotifications:0];

      matcher = [(SHSession *)self matcher];
      [matcher startRecognitionForRequest:sessionDriver2];

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

      sessionDriver2 = [SHMatcherResponse errorResponseForSignature:v4 error:v15];
      if ([(SHSession *)self _isSessionDriverSignature:v4])
      {
        sessionDriver = [(SHSession *)self sessionDriver];
        matcher2 = [(SHSession *)self matcher];
        [sessionDriver matcher:matcher2 didProduceResponse:sessionDriver2];
      }

      delegate2 = [(SHSession *)self delegate];
      v30 = objc_opt_respondsToSelector();

      if (v30)
      {
        delegate3 = [(SHSession *)self delegate];
        v32 = [SHError remapErrorToClientError:v15];
        [delegate3 session:self didNotFindMatchForSignature:v4 error:v32];
      }

      [(SHSession *)self handleCommonActionsForResponse:sessionDriver2];
    }

    goto LABEL_19;
  }

  delegate4 = [(SHSession *)self delegate];
  v7 = [delegate4 session:self shouldAttemptToMatchSignature:v4];

  if (v7)
  {
    goto LABEL_8;
  }

  if ([(SHSession *)self _isSessionDriverSignature:v4])
  {
    [(SHSignature *)v4 duration];
    v9 = v8;
    catalog2 = [(SHSession *)self catalog];
    [catalog2 maximumQuerySignatureDuration];
    v11 = 0.0;
    if (v9 < v12)
    {
      catalog3 = [(SHSession *)self catalog];
      [catalog3 maximumQuerySignatureDuration];
      v11 = v14;
    }

    v15 = [SHMatcherResponse noMatchWithRecordingIntermission:v4 recordingSignatureOffset:0.0 retrySeconds:0.0 signature:v11];
    sessionDriver2 = [(SHSession *)self sessionDriver];
    matcher3 = [(SHSession *)self matcher];
    [sessionDriver2 matcher:matcher3 didProduceResponse:v15];

LABEL_19:
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)matchStreamingBuffer:(AVAudioPCMBuffer *)buffer atTime:(AVAudioTime *)time
{
  v6 = time;
  v7 = buffer;
  sessionDriver = [(SHSession *)self sessionDriver];
  [sessionDriver flow:v7 time:v6];
}

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  v32 = *MEMORY[0x277D85DE8];
  matcherCopy = matcher;
  responseCopy = response;
  signature = [responseCopy signature];
  v9 = [(SHSession *)self _isSessionDriverSignature:signature];

  if (!v9 || (-[SHSession sessionDriver](self, "sessionDriver"), v10 = objc_claimAutoreleasedReturnValue(), [v10 matcher:matcherCopy didProduceResponse:responseCopy], v10, objc_msgSend(responseCopy, "result") != 2) || (objc_msgSend(responseCopy, "retrySeconds"), v11 <= 0.0))
  {
    result = [responseCopy result];
    switch(result)
    {
      case 1:
        match = [responseCopy match];
        v23 = sh_log_object();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          mediaItems = [match mediaItems];
          firstObject = [mediaItems firstObject];
          v26 = [firstObject valueForProperty:@"sh_title"];
          v30 = 138412290;
          v31 = v26;
          _os_log_impl(&dword_230F52000, v23, OS_LOG_TYPE_DEFAULT, "SHSession: Match found %@", &v30, 0xCu);
        }

        delegate = [(SHSession *)self delegate];
        v28 = objc_opt_respondsToSelector();

        if ((v28 & 1) == 0)
        {
          goto LABEL_17;
        }

        delegate2 = [(SHSession *)self delegate];
        [delegate2 session:self didFindMatch:match];
        break;
      case 2:
        delegate3 = [(SHSession *)self delegate];
        v22 = objc_opt_respondsToSelector();

        if ((v22 & 1) == 0)
        {
LABEL_18:
          [(SHSession *)self handleCommonActionsForResponse:responseCopy];
          goto LABEL_19;
        }

        match = [(SHSession *)self delegate];
        delegate2 = [responseCopy signature];
        [match session:self didNotFindMatchForSignature:delegate2 error:0];
        break;
      case 3:
        error = [responseCopy error];
        sh_isMatchAttemptCancelledError = [error sh_isMatchAttemptCancelledError];

        if (sh_isMatchAttemptCancelledError)
        {
          goto LABEL_18;
        }

        delegate4 = [(SHSession *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if ((v16 & 1) == 0)
        {
          goto LABEL_18;
        }

        match = [(SHSession *)self delegate];
        delegate2 = [responseCopy signature];
        error2 = [responseCopy error];
        v20 = [SHError remapErrorToClientError:error2];
        [match session:self didNotFindMatchForSignature:delegate2 error:v20];

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

- (void)handleCommonActionsForResponse:(id)response
{
  responseCopy = response;
  delegate = [(SHSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SHSession *)self delegate];
    [delegate2 session:self didProduceResponse:responseCopy];
  }

  if (([responseCopy isStillRunningAssociatedRequest] & 1) == 0)
  {
    delegate3 = [(SHSession *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = sh_log_object();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_impl(&dword_230F52000, v10, OS_LOG_TYPE_DEBUG, "Returned all responses for request", v14, 2u);
      }

      delegate4 = [(SHSession *)self delegate];
      [delegate4 finishedSession:self];
    }
  }

  error = [responseCopy error];
  if ([error sh_isMatchAttemptCancelledError])
  {
    goto LABEL_11;
  }

  sessionResponseCallback = [(SHSession *)self sessionResponseCallback];

  if (sessionResponseCallback)
  {
    error = [(SHSession *)self sessionResponseCallback];
    (error)[2](error, responseCopy);
LABEL_11:
  }
}

- (void)sessionDriverEncounteredUnrecoverableError:(id)error forSignature:(id)signature
{
  v6 = [SHMatcherResponse errorResponseForSignature:signature error:error];
  matcher = [(SHSession *)self matcher];
  [(SHSession *)self matcher:matcher didProduceResponse:v6];
}

- (BOOL)shouldGenerateSpectralOutput
{
  delegate = [(SHSession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(SHSession *)self delegate];
  shouldGenerateSpectralOutput = [delegate2 shouldGenerateSpectralOutput];

  return shouldGenerateSpectralOutput;
}

- (BOOL)_isSessionDriverSignature:(id)signature
{
  v23 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  v5 = signatureCopy;
  if (!self->_sessionDriver)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v6 = [signatureCopy _ID];
  sessionDriver = [(SHSession *)self sessionDriver];
  matchingSignatureID = [sessionDriver matchingSignatureID];
  v9 = [v6 isEqual:matchingSignatureID];

  if ((v9 & 1) == 0)
  {
    if (self->_sessionDriver)
    {
      sessionDriver2 = [(SHSession *)self sessionDriver];
      matchingSignatureID2 = [sessionDriver2 matchingSignatureID];

      if (matchingSignatureID2)
      {
        v13 = sh_log_object();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = [v5 _ID];
          sessionDriver3 = [(SHSession *)self sessionDriver];
          matchingSignatureID3 = [sessionDriver3 matchingSignatureID];
          v19 = 138412546;
          v20 = v14;
          v21 = 2112;
          v22 = matchingSignatureID3;
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
    catalog = [(SHSession *)self catalog];
    _createSessionDriver = [catalog _createSessionDriver];
    v6 = self->_sessionDriver;
    self->_sessionDriver = _createSessionDriver;

    [(SHSessionDriver *)self->_sessionDriver setSessionDriverDelegate:self];
    sessionDriver = self->_sessionDriver;
  }

  return sessionDriver;
}

- (void)didCalculateSpectralData:(id)data
{
  dataCopy = data;
  delegate = [(SHSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SHSession *)self delegate];
    [delegate2 didCalculateSpectralData:dataCopy];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end