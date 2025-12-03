@interface SHAppIntentMatcher
- (SHAppIntentMatcher)initWithRunnerMatcher:(id)matcher;
- (SHMatcherDelegate)delegate;
- (void)_stop;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
- (void)startRecognitionForRequest:(id)request;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)d;
@end

@implementation SHAppIntentMatcher

- (SHAppIntentMatcher)initWithRunnerMatcher:(id)matcher
{
  matcherCopy = matcher;
  v9.receiver = self;
  v9.super_class = SHAppIntentMatcher;
  v6 = [(SHAppIntentMatcher *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_matcher, matcher);
  }

  return v7;
}

- (void)startRecognitionForRequest:(id)request
{
  [(SHAppIntentMatcher *)self setMatcherRequest:request];
  matcher = [(SHAppIntentMatcher *)self matcher];
  [matcher setDelegate:self];

  matcher2 = [(SHAppIntentMatcher *)self matcher];
  matcherRequest = [(SHAppIntentMatcher *)self matcherRequest];
  [matcher2 startRecognitionForRequest:matcherRequest];
}

- (void)stopRecognition
{
  matcherRequest = [(SHAppIntentMatcher *)self matcherRequest];
  requestID = [matcherRequest requestID];
  [(SHAppIntentMatcher *)self stopRecognitionForRequestID:requestID];
}

- (void)stopRecognitionForRequestID:(id)d
{
  dCopy = d;
  matcherRequest = [(SHAppIntentMatcher *)self matcherRequest];
  requestID = [matcherRequest requestID];
  v7 = [requestID isEqual:dCopy];

  if (v7)
  {
    v11 = [SHError privateErrorWithCode:203 underlyingError:0];
    v8 = objc_opt_new();
    v9 = [SHMatcherResponse errorResponseForSignature:v8 error:v11];

    delegate = [(SHAppIntentMatcher *)self delegate];
    [delegate matcher:self didProduceResponse:v9];

    [(SHAppIntentMatcher *)self _stop];
  }
}

- (void)_stop
{
  [(SHAppIntentMatcher *)self setMatcherRequest:0];
  [(SHAppIntentMatcher *)self setDelegate:0];
  matcher = [(SHAppIntentMatcher *)self matcher];
  [matcher setDelegate:0];

  [(SHAppIntentMatcher *)self setChildMatcher:0];
  matcher2 = [(SHAppIntentMatcher *)self matcher];
  [matcher2 stopRecognition];
}

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  responseCopy = response;
  delegate = [(SHAppIntentMatcher *)self delegate];
  [delegate matcher:self didProduceResponse:responseCopy];
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end