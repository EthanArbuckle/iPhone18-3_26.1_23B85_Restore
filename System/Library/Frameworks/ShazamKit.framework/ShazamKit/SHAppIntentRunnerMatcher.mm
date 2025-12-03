@interface SHAppIntentRunnerMatcher
- (SHAppIntentRunnerMatcher)initWithSource:(int64_t)source;
- (SHMatcherDelegate)delegate;
- (void)_stop;
- (void)startRecognitionForRequest:(id)request;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)d;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
@end

@implementation SHAppIntentRunnerMatcher

- (SHAppIntentRunnerMatcher)initWithSource:(int64_t)source
{
  v5.receiver = self;
  v5.super_class = SHAppIntentRunnerMatcher;
  result = [(SHAppIntentRunnerMatcher *)&v5 init];
  if (result)
  {
    result->_source = source;
  }

  return result;
}

- (void)startRecognitionForRequest:(id)request
{
  [(SHAppIntentRunnerMatcher *)self setMatcherRequest:request];
  v4 = [[LNMetadataProvider alloc] initWithOptions:2];
  v5 = [[LNFullyQualifiedActionIdentifier alloc] initWithActionIdentifier:@"RecognizeMusicIntent" bundleIdentifier:@"com.apple.musicrecognition"];
  v28 = v5;
  v6 = [NSArray arrayWithObjects:&v28 count:1];
  v26 = 0;
  v7 = [v4 actionsWithFullyQualifiedIdentifiers:v6 error:&v26];
  v8 = v26;

  v9 = [v7 valueForKey:@"com.apple.musicrecognition"];
  allValues = [v9 allValues];
  firstObject = [allValues firstObject];

  v12 = [LNValue alloc];
  v13 = +[LNPrimitiveValueType BOOLValueType];
  v14 = [v12 initWithValue:&__kCFBooleanTrue valueType:v13];

  v15 = [[LNParameter alloc] initWithIdentifier:@"addToLibrary" value:v14];
  if (firstObject)
  {
    v16 = [LNConnectionPolicy policyWithActionMetadata:firstObject];
    v27 = v15;
    v17 = [NSArray arrayWithObjects:&v27 count:1];
    v18 = [v16 actionWithParameters:v17];

    if ([(SHAppIntentRunnerMatcher *)self source])
    {
      v19 = 7;
    }

    else
    {
      v19 = 6;
    }

    v20 = [[WFLinkActionWorkflowRunnerClient alloc] initWithLinkAction:v18 bundleIdentifier:@"com.apple.musicrecognition" runSource:v19];
    [(SHAppIntentRunnerMatcher *)self setWorkflowRunnerClient:v20];

    workflowRunnerClient = [(SHAppIntentRunnerMatcher *)self workflowRunnerClient];
    [workflowRunnerClient setDelegate:self];

    workflowRunnerClient2 = [(SHAppIntentRunnerMatcher *)self workflowRunnerClient];
    [workflowRunnerClient2 start];
  }

  else
  {
    v23 = sh_log_object();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to fetch metadata for Recognize Music App Intent", v25, 2u);
    }

    v16 = [SHError errorWithCode:202 underlyingError:v8];
    v24 = objc_opt_new();
    v18 = [SHMatcherResponse errorResponseForSignature:v24 error:v16];

    workflowRunnerClient2 = [(SHAppIntentRunnerMatcher *)self delegate];
    [workflowRunnerClient2 matcher:self didProduceResponse:v18];
  }
}

- (void)stopRecognition
{
  matcherRequest = [(SHAppIntentRunnerMatcher *)self matcherRequest];
  requestID = [matcherRequest requestID];
  [(SHAppIntentRunnerMatcher *)self stopRecognitionForRequestID:requestID];
}

- (void)stopRecognitionForRequestID:(id)d
{
  dCopy = d;
  matcherRequest = [(SHAppIntentRunnerMatcher *)self matcherRequest];
  requestID = [matcherRequest requestID];
  v7 = [requestID isEqual:dCopy];

  if (v7)
  {
    workflowRunnerClient = [(SHAppIntentRunnerMatcher *)self workflowRunnerClient];
    [workflowRunnerClient stop];

    v12 = [SHError privateErrorWithCode:203 underlyingError:0];
    v9 = objc_opt_new();
    v10 = [SHMatcherResponse errorResponseForSignature:v9 error:v12];

    delegate = [(SHAppIntentRunnerMatcher *)self delegate];
    [delegate matcher:self didProduceResponse:v10];

    [(SHAppIntentRunnerMatcher *)self _stop];
  }
}

- (void)_stop
{
  [(SHAppIntentRunnerMatcher *)self setMatcherRequest:0];

  [(SHAppIntentRunnerMatcher *)self setDelegate:0];
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  clientCopy = client;
  outputCopy = output;
  errorCopy = error;
  v13 = sh_log_object();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138413058;
    v18 = clientCopy;
    v19 = 2112;
    v20 = outputCopy;
    v21 = 2112;
    v22 = errorCopy;
    v23 = 1024;
    v24 = cancelledCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "workflowRunnerClient:%@ didFinishRunningWorkflowWithOutput:%@ error:%@ cancelled:%i", &v17, 0x26u);
  }

  if (errorCopy)
  {
    v14 = objc_opt_new();
    v15 = [SHMatcherResponse errorResponseForSignature:v14 error:errorCopy];

    delegate = [(SHAppIntentRunnerMatcher *)self delegate];
    [delegate matcher:self didProduceResponse:v15];

    [(SHAppIntentRunnerMatcher *)self _stop];
  }
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end