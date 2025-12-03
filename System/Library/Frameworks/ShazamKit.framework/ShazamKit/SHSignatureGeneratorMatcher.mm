@interface SHSignatureGeneratorMatcher
- (BOOL)shouldGenerateSpectralOutput;
- (SHMatcherDelegate)delegate;
- (SHSignatureGeneratorMatcher)initWithAudioTap:(id)tap audioRecordingManager:(id)manager;
- (SHSignatureGeneratorMatcher)initWithAudioTap:(id)tap sessionDriver:(id)driver audioRecordingManager:(id)manager;
- (id)responseSignatureForRequest:(id)request;
- (void)_stop;
- (void)matchSignature:(id)signature;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
- (void)sessionDriverEncounteredUnrecoverableError:(id)error forSignature:(id)signature;
- (void)startRecognitionForRequest:(id)request;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)d;
@end

@implementation SHSignatureGeneratorMatcher

- (SHSignatureGeneratorMatcher)initWithAudioTap:(id)tap audioRecordingManager:(id)manager
{
  managerCopy = manager;
  tapCopy = tap;
  v8 = objc_alloc_init(SHCustomCatalog);
  v9 = [SHStreamingSessionDriver alloc];
  [v8 minimumQuerySignatureDuration];
  v11 = v10;
  [v8 maximumQuerySignatureDuration];
  v13 = v12;
  _configuration = [v8 _configuration];
  [_configuration streamingBufferDuration];
  v16 = v15;
  _configuration2 = [v8 _configuration];
  musicalFeaturesConfiguration = [_configuration2 musicalFeaturesConfiguration];
  v19 = [v9 initWithMinimumSignatureDuration:musicalFeaturesConfiguration maximumSignatureDuration:v11 bufferDuration:v13 musicalFeaturesConfiguration:v16];

  v20 = [(SHSignatureGeneratorMatcher *)self initWithAudioTap:tapCopy sessionDriver:v19 audioRecordingManager:managerCopy];
  return v20;
}

- (SHSignatureGeneratorMatcher)initWithAudioTap:(id)tap sessionDriver:(id)driver audioRecordingManager:(id)manager
{
  tapCopy = tap;
  driverCopy = driver;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = SHSignatureGeneratorMatcher;
  v12 = [(SHSignatureGeneratorMatcher *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioRecordingManager, manager);
    objc_storeStrong(&v13->_tap, tap);
    objc_storeStrong(&v13->_sessionDriver, driver);
    [(SHSessionDriver *)v13->_sessionDriver setSessionDriverDelegate:v13];
    objc_initWeak(&location, v13);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100023090;
    v15[3] = &unk_10007D818;
    objc_copyWeak(&v16, &location);
    [(SHAudioTap *)v13->_tap setCompletion:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (void)matchSignature:(id)signature
{
  signatureCopy = signature;
  v5 = [(SHSignatureGeneratorMatcher *)self tap];
  recordingSource = [v5 recordingSource];
  metrics = [signatureCopy metrics];
  [metrics setRecordingSource:recordingSource];

  v8 = [SHMatcherResponse alloc];
  request = [(SHSignatureGeneratorMatcher *)self request];
  requestID = [request requestID];
  v12 = [v8 initWithRecordingIntermission:0 recordingSignatureOffset:signatureCopy retrySeconds:requestID match:0 signature:0.0 runningAssociatedRequestID:0.0 error:0.0];

  delegate = [(SHSignatureGeneratorMatcher *)self delegate];
  [delegate matcher:self didProduceResponse:v12];
}

- (void)sessionDriverEncounteredUnrecoverableError:(id)error forSignature:(id)signature
{
  signatureCopy = signature;
  errorCopy = error;
  delegate = [(SHSignatureGeneratorMatcher *)self delegate];
  v9 = [SHMatcherResponse errorResponseForSignature:signatureCopy error:errorCopy];

  [delegate matcher:self didProduceResponse:v9];

  [(SHSignatureGeneratorMatcher *)self _stop];
}

- (void)startRecognitionForRequest:(id)request
{
  requestCopy = request;
  request = [(SHSignatureGeneratorMatcher *)self request];

  if (request)
  {
    v14 = NSLocalizedFailureReasonErrorKey;
    v15 = @"Signature generator worker passed multiple requests";
    v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    audioRecordingManager = [SHError errorWithCode:202 underlyingError:0 keyOverrides:v7];

    delegate = [(SHSignatureGeneratorMatcher *)self delegate];
    request2 = [(SHSignatureGeneratorMatcher *)self request];
    v11 = [(SHSignatureGeneratorMatcher *)self responseSignatureForRequest:request2];
    v12 = [SHMatcherResponse errorResponseForSignature:v11 error:audioRecordingManager];
    [delegate matcher:self didProduceResponse:v12];

    [(SHSignatureGeneratorMatcher *)self _stop];
  }

  else
  {
    objc_storeStrong(&self->_request, request);
    audioRecordingManager = [(SHSignatureGeneratorMatcher *)self audioRecordingManager];
    v13 = [(SHSignatureGeneratorMatcher *)self tap];
    [audioRecordingManager attachTap:v13];
  }
}

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  responseCopy = response;
  sessionDriver = [(SHSignatureGeneratorMatcher *)self sessionDriver];
  [sessionDriver matcher:self didProduceResponse:responseCopy];

  request = [(SHSignatureGeneratorMatcher *)self request];
  deadline = [request deadline];
  if (deadline)
  {
    v8 = 0;
  }

  else
  {
    [responseCopy retrySeconds];
    v8 = v9 <= 0.0;
  }

  request2 = [(SHSignatureGeneratorMatcher *)self request];
  deadline2 = [request2 deadline];
  if (deadline2)
  {
    request3 = [(SHSignatureGeneratorMatcher *)self request];
    deadline3 = [request3 deadline];
    v14 = +[NSDate date];
    v15 = [deadline3 earlierDate:v14];
    request4 = [(SHSignatureGeneratorMatcher *)self request];
    deadline4 = [request4 deadline];
    v18 = v15 == deadline4;
  }

  else
  {
    v18 = 0;
  }

  if (v8 || v18)
  {
    v19 = [SHError privateErrorWithCode:203 underlyingError:0];
    delegate = [(SHSignatureGeneratorMatcher *)self delegate];
    request5 = [(SHSignatureGeneratorMatcher *)self request];
    v22 = [(SHSignatureGeneratorMatcher *)self responseSignatureForRequest:request5];
    v23 = [SHMatcherResponse errorResponseForSignature:v22 error:v19];
    [delegate matcher:self didProduceResponse:v23];

    [(SHSignatureGeneratorMatcher *)self _stop];
  }
}

- (void)_stop
{
  v3 = [(SHSignatureGeneratorMatcher *)self tap];

  if (v3)
  {
    audioRecordingManager = [(SHSignatureGeneratorMatcher *)self audioRecordingManager];
    v5 = [(SHSignatureGeneratorMatcher *)self tap];
    [audioRecordingManager detachTap:v5];

    tap = self->_tap;
    self->_tap = 0;
  }
}

- (void)stopRecognitionForRequestID:(id)d
{
  dCopy = d;
  request = [(SHSignatureGeneratorMatcher *)self request];
  requestID = [request requestID];
  v7 = [requestID isEqual:dCopy];

  if (v7)
  {
    v8 = [(SHSignatureGeneratorMatcher *)self tap];

    if (v8)
    {
      [(SHSignatureGeneratorMatcher *)self _stop];
      request2 = [(SHSignatureGeneratorMatcher *)self request];
      v10 = [(SHSignatureGeneratorMatcher *)self responseSignatureForRequest:request2];
      v11 = [SHError privateErrorWithCode:203 underlyingError:0];
      v13 = [SHMatcherResponse errorResponseForSignature:v10 error:v11];

      delegate = [(SHSignatureGeneratorMatcher *)self delegate];
      [delegate matcher:self didProduceResponse:v13];
    }
  }
}

- (void)stopRecognition
{
  request = [(SHSignatureGeneratorMatcher *)self request];
  requestID = [request requestID];
  [(SHSignatureGeneratorMatcher *)self stopRecognitionForRequestID:requestID];
}

- (id)responseSignatureForRequest:(id)request
{
  requestCopy = request;
  signature = [requestCopy signature];

  if (signature)
  {
    signature2 = [requestCopy signature];
  }

  else
  {
    signature2 = objc_opt_new();
    v7 = [(SHSignatureGeneratorMatcher *)self tap];
    recordingSource = [v7 recordingSource];
    metrics = [signature2 metrics];
    [metrics setRecordingSource:recordingSource];
  }

  return signature2;
}

- (BOOL)shouldGenerateSpectralOutput
{
  v3 = [(SHSignatureGeneratorMatcher *)self tap];
  recordingSource = [v3 recordingSource];
  audioRecordingManager = [(SHSignatureGeneratorMatcher *)self audioRecordingManager];
  LOBYTE(recordingSource) = recordingSource == [audioRecordingManager suggestedAudioRecordingSource];

  return recordingSource;
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end