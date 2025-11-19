@interface SHAppIntentRunnerMatcher
- (SHAppIntentRunnerMatcher)initWithSource:(int64_t)a3;
- (SHMatcherDelegate)delegate;
- (void)_stop;
- (void)startRecognitionForRequest:(id)a3;
- (void)stopRecognition;
- (void)stopRecognitionForRequestID:(id)a3;
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
@end

@implementation SHAppIntentRunnerMatcher

- (SHAppIntentRunnerMatcher)initWithSource:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SHAppIntentRunnerMatcher;
  result = [(SHAppIntentRunnerMatcher *)&v5 init];
  if (result)
  {
    result->_source = a3;
  }

  return result;
}

- (void)startRecognitionForRequest:(id)a3
{
  [(SHAppIntentRunnerMatcher *)self setMatcherRequest:a3];
  v4 = [[LNMetadataProvider alloc] initWithOptions:2];
  v5 = [[LNFullyQualifiedActionIdentifier alloc] initWithActionIdentifier:@"RecognizeMusicIntent" bundleIdentifier:@"com.apple.musicrecognition"];
  v28 = v5;
  v6 = [NSArray arrayWithObjects:&v28 count:1];
  v26 = 0;
  v7 = [v4 actionsWithFullyQualifiedIdentifiers:v6 error:&v26];
  v8 = v26;

  v9 = [v7 valueForKey:@"com.apple.musicrecognition"];
  v10 = [v9 allValues];
  v11 = [v10 firstObject];

  v12 = [LNValue alloc];
  v13 = +[LNPrimitiveValueType BOOLValueType];
  v14 = [v12 initWithValue:&__kCFBooleanTrue valueType:v13];

  v15 = [[LNParameter alloc] initWithIdentifier:@"addToLibrary" value:v14];
  if (v11)
  {
    v16 = [LNConnectionPolicy policyWithActionMetadata:v11];
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

    v21 = [(SHAppIntentRunnerMatcher *)self workflowRunnerClient];
    [v21 setDelegate:self];

    v22 = [(SHAppIntentRunnerMatcher *)self workflowRunnerClient];
    [v22 start];
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

    v22 = [(SHAppIntentRunnerMatcher *)self delegate];
    [v22 matcher:self didProduceResponse:v18];
  }
}

- (void)stopRecognition
{
  v4 = [(SHAppIntentRunnerMatcher *)self matcherRequest];
  v3 = [v4 requestID];
  [(SHAppIntentRunnerMatcher *)self stopRecognitionForRequestID:v3];
}

- (void)stopRecognitionForRequestID:(id)a3
{
  v4 = a3;
  v5 = [(SHAppIntentRunnerMatcher *)self matcherRequest];
  v6 = [v5 requestID];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = [(SHAppIntentRunnerMatcher *)self workflowRunnerClient];
    [v8 stop];

    v12 = [SHError privateErrorWithCode:203 underlyingError:0];
    v9 = objc_opt_new();
    v10 = [SHMatcherResponse errorResponseForSignature:v9 error:v12];

    v11 = [(SHAppIntentRunnerMatcher *)self delegate];
    [v11 matcher:self didProduceResponse:v10];

    [(SHAppIntentRunnerMatcher *)self _stop];
  }
}

- (void)_stop
{
  [(SHAppIntentRunnerMatcher *)self setMatcherRequest:0];

  [(SHAppIntentRunnerMatcher *)self setDelegate:0];
}

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutput:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sh_log_object();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138413058;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 1024;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "workflowRunnerClient:%@ didFinishRunningWorkflowWithOutput:%@ error:%@ cancelled:%i", &v17, 0x26u);
  }

  if (v12)
  {
    v14 = objc_opt_new();
    v15 = [SHMatcherResponse errorResponseForSignature:v14 error:v12];

    v16 = [(SHAppIntentRunnerMatcher *)self delegate];
    [v16 matcher:self didProduceResponse:v15];

    [(SHAppIntentRunnerMatcher *)self _stop];
  }
}

- (SHMatcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end