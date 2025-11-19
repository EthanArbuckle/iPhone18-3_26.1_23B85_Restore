@interface SHSignatureGeneratorMatcher
- (BOOL)shouldGenerateSpectralOutput;
- (SHMatcherDelegate)delegate;
- (SHSignatureGeneratorMatcher)initWithAudioTap:(id)a3 audioRecordingManager:(id)a4;
- (SHSignatureGeneratorMatcher)initWithAudioTap:(id)a3 sessionDriver:(id)a4 audioRecordingManager:(id)a5;
- (id)responseSignatureForRequest:(id)a3;
- (void)_stop;
- (void)matchSignature:(id)a3;
- (void)matcher:(id)a3 didProduceResponse:(id)a4;
- (void)sessionDriverEncounteredUnrecoverableError:(id)a3 forSignature:(id)a4;
- (void)startRecognitionForRequest:(id)a3;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)a3;
@end

@implementation SHSignatureGeneratorMatcher

- (SHSignatureGeneratorMatcher)initWithAudioTap:(id)a3 audioRecordingManager:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(SHCustomCatalog);
  v9 = [SHStreamingSessionDriver alloc];
  [v8 minimumQuerySignatureDuration];
  v11 = v10;
  [v8 maximumQuerySignatureDuration];
  v13 = v12;
  v14 = [v8 _configuration];
  [v14 streamingBufferDuration];
  v16 = v15;
  v17 = [v8 _configuration];
  v18 = [v17 musicalFeaturesConfiguration];
  v19 = [v9 initWithMinimumSignatureDuration:v18 maximumSignatureDuration:v11 bufferDuration:v13 musicalFeaturesConfiguration:v16];

  v20 = [(SHSignatureGeneratorMatcher *)self initWithAudioTap:v7 sessionDriver:v19 audioRecordingManager:v6];
  return v20;
}

- (SHSignatureGeneratorMatcher)initWithAudioTap:(id)a3 sessionDriver:(id)a4 audioRecordingManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = SHSignatureGeneratorMatcher;
  v12 = [(SHSignatureGeneratorMatcher *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_audioRecordingManager, a5);
    objc_storeStrong(&v13->_tap, a3);
    objc_storeStrong(&v13->_sessionDriver, a4);
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

- (void)matchSignature:(id)a3
{
  v4 = a3;
  v5 = [(SHSignatureGeneratorMatcher *)self tap];
  v6 = [v5 recordingSource];
  v7 = [v4 metrics];
  [v7 setRecordingSource:v6];

  v8 = [SHMatcherResponse alloc];
  v9 = [(SHSignatureGeneratorMatcher *)self request];
  v10 = [v9 requestID];
  v12 = [v8 initWithRecordingIntermission:0 recordingSignatureOffset:v4 retrySeconds:v10 match:0 signature:0.0 runningAssociatedRequestID:0.0 error:0.0];

  v11 = [(SHSignatureGeneratorMatcher *)self delegate];
  [v11 matcher:self didProduceResponse:v12];
}

- (void)sessionDriverEncounteredUnrecoverableError:(id)a3 forSignature:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SHSignatureGeneratorMatcher *)self delegate];
  v9 = [SHMatcherResponse errorResponseForSignature:v6 error:v7];

  [v8 matcher:self didProduceResponse:v9];

  [(SHSignatureGeneratorMatcher *)self _stop];
}

- (void)startRecognitionForRequest:(id)a3
{
  v5 = a3;
  v6 = [(SHSignatureGeneratorMatcher *)self request];

  if (v6)
  {
    v14 = NSLocalizedFailureReasonErrorKey;
    v15 = @"Signature generator worker passed multiple requests";
    v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v8 = [SHError errorWithCode:202 underlyingError:0 keyOverrides:v7];

    v9 = [(SHSignatureGeneratorMatcher *)self delegate];
    v10 = [(SHSignatureGeneratorMatcher *)self request];
    v11 = [(SHSignatureGeneratorMatcher *)self responseSignatureForRequest:v10];
    v12 = [SHMatcherResponse errorResponseForSignature:v11 error:v8];
    [v9 matcher:self didProduceResponse:v12];

    [(SHSignatureGeneratorMatcher *)self _stop];
  }

  else
  {
    objc_storeStrong(&self->_request, a3);
    v8 = [(SHSignatureGeneratorMatcher *)self audioRecordingManager];
    v13 = [(SHSignatureGeneratorMatcher *)self tap];
    [v8 attachTap:v13];
  }
}

- (void)matcher:(id)a3 didProduceResponse:(id)a4
{
  v24 = a4;
  v5 = [(SHSignatureGeneratorMatcher *)self sessionDriver];
  [v5 matcher:self didProduceResponse:v24];

  v6 = [(SHSignatureGeneratorMatcher *)self request];
  v7 = [v6 deadline];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    [v24 retrySeconds];
    v8 = v9 <= 0.0;
  }

  v10 = [(SHSignatureGeneratorMatcher *)self request];
  v11 = [v10 deadline];
  if (v11)
  {
    v12 = [(SHSignatureGeneratorMatcher *)self request];
    v13 = [v12 deadline];
    v14 = +[NSDate date];
    v15 = [v13 earlierDate:v14];
    v16 = [(SHSignatureGeneratorMatcher *)self request];
    v17 = [v16 deadline];
    v18 = v15 == v17;
  }

  else
  {
    v18 = 0;
  }

  if (v8 || v18)
  {
    v19 = [SHError privateErrorWithCode:203 underlyingError:0];
    v20 = [(SHSignatureGeneratorMatcher *)self delegate];
    v21 = [(SHSignatureGeneratorMatcher *)self request];
    v22 = [(SHSignatureGeneratorMatcher *)self responseSignatureForRequest:v21];
    v23 = [SHMatcherResponse errorResponseForSignature:v22 error:v19];
    [v20 matcher:self didProduceResponse:v23];

    [(SHSignatureGeneratorMatcher *)self _stop];
  }
}

- (void)_stop
{
  v3 = [(SHSignatureGeneratorMatcher *)self tap];

  if (v3)
  {
    v4 = [(SHSignatureGeneratorMatcher *)self audioRecordingManager];
    v5 = [(SHSignatureGeneratorMatcher *)self tap];
    [v4 detachTap:v5];

    tap = self->_tap;
    self->_tap = 0;
  }
}

- (void)stopRecognitionForRequestID:(id)a3
{
  v4 = a3;
  v5 = [(SHSignatureGeneratorMatcher *)self request];
  v6 = [v5 requestID];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(SHSignatureGeneratorMatcher *)self tap];

    if (v8)
    {
      [(SHSignatureGeneratorMatcher *)self _stop];
      v9 = [(SHSignatureGeneratorMatcher *)self request];
      v10 = [(SHSignatureGeneratorMatcher *)self responseSignatureForRequest:v9];
      v11 = [SHError privateErrorWithCode:203 underlyingError:0];
      v13 = [SHMatcherResponse errorResponseForSignature:v10 error:v11];

      v12 = [(SHSignatureGeneratorMatcher *)self delegate];
      [v12 matcher:self didProduceResponse:v13];
    }
  }
}

- (void)stopRecognition
{
  v4 = [(SHSignatureGeneratorMatcher *)self request];
  v3 = [v4 requestID];
  [(SHSignatureGeneratorMatcher *)self stopRecognitionForRequestID:v3];
}

- (id)responseSignatureForRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 signature];

  if (v5)
  {
    v6 = [v4 signature];
  }

  else
  {
    v6 = objc_opt_new();
    v7 = [(SHSignatureGeneratorMatcher *)self tap];
    v8 = [v7 recordingSource];
    v9 = [v6 metrics];
    [v9 setRecordingSource:v8];
  }

  return v6;
}

- (BOOL)shouldGenerateSpectralOutput
{
  v3 = [(SHSignatureGeneratorMatcher *)self tap];
  v4 = [v3 recordingSource];
  v5 = [(SHSignatureGeneratorMatcher *)self audioRecordingManager];
  LOBYTE(v4) = v4 == [v5 suggestedAudioRecordingSource];

  return v4;
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end