@interface SHAppIntentMatcher
- (SHAppIntentMatcher)initWithRunnerMatcher:(id)a3;
- (SHMatcherDelegate)delegate;
- (void)_stop;
- (void)matcher:(id)a3 didProduceResponse:(id)a4;
- (void)startRecognitionForRequest:(id)a3;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)a3;
@end

@implementation SHAppIntentMatcher

- (SHAppIntentMatcher)initWithRunnerMatcher:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHAppIntentMatcher;
  v6 = [(SHAppIntentMatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_matcher, a3);
  }

  return v7;
}

- (void)startRecognitionForRequest:(id)a3
{
  [(SHAppIntentMatcher *)self setMatcherRequest:a3];
  v4 = [(SHAppIntentMatcher *)self matcher];
  [v4 setDelegate:self];

  v6 = [(SHAppIntentMatcher *)self matcher];
  v5 = [(SHAppIntentMatcher *)self matcherRequest];
  [v6 startRecognitionForRequest:v5];
}

- (void)stopRecognition
{
  v4 = [(SHAppIntentMatcher *)self matcherRequest];
  v3 = [v4 requestID];
  [(SHAppIntentMatcher *)self stopRecognitionForRequestID:v3];
}

- (void)stopRecognitionForRequestID:(id)a3
{
  v4 = a3;
  v5 = [(SHAppIntentMatcher *)self matcherRequest];
  v6 = [v5 requestID];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v11 = [SHError privateErrorWithCode:203 underlyingError:0];
    v8 = objc_opt_new();
    v9 = [SHMatcherResponse errorResponseForSignature:v8 error:v11];

    v10 = [(SHAppIntentMatcher *)self delegate];
    [v10 matcher:self didProduceResponse:v9];

    [(SHAppIntentMatcher *)self _stop];
  }
}

- (void)_stop
{
  [(SHAppIntentMatcher *)self setMatcherRequest:0];
  [(SHAppIntentMatcher *)self setDelegate:0];
  v3 = [(SHAppIntentMatcher *)self matcher];
  [v3 setDelegate:0];

  [(SHAppIntentMatcher *)self setChildMatcher:0];
  v4 = [(SHAppIntentMatcher *)self matcher];
  [v4 stopRecognition];
}

- (void)matcher:(id)a3 didProduceResponse:(id)a4
{
  v5 = a4;
  v6 = [(SHAppIntentMatcher *)self delegate];
  [v6 matcher:self didProduceResponse:v5];
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end