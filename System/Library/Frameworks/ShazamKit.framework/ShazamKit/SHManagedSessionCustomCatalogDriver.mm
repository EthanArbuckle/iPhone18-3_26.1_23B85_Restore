@interface SHManagedSessionCustomCatalogDriver
- (NSUUID)matchingSignatureID;
- (SHManagedSessionCustomCatalogDriver)initWithServiceConnection:(id)connection;
- (SHSessionDriverDelegate)sessionDriverDelegate;
- (void)flow:(id)flow time:(id)time;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
- (void)setSessionDriverDelegate:(id)delegate;
@end

@implementation SHManagedSessionCustomCatalogDriver

- (SHManagedSessionCustomCatalogDriver)initWithServiceConnection:(id)connection
{
  connectionCopy = connection;
  v10.receiver = self;
  v10.super_class = SHManagedSessionCustomCatalogDriver;
  v6 = [(SHManagedSessionCustomCatalogDriver *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(SHManagedSessionCustomCatalogDriverDaemonDelegate);
    daemonDelegate = v6->_daemonDelegate;
    v6->_daemonDelegate = v7;

    objc_storeStrong(&v6->_serviceConnection, connection);
    [(SHMatcher *)v6->_serviceConnection setDelegate:v6->_daemonDelegate];
  }

  return v6;
}

- (NSUUID)matchingSignatureID
{
  daemonDelegate = [(SHManagedSessionCustomCatalogDriver *)self daemonDelegate];
  matchingSignatureID = [daemonDelegate matchingSignatureID];

  return matchingSignatureID;
}

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  responseCopy = response;
  matcherCopy = matcher;
  v8 = [SHMatcherResponse alloc];
  [responseCopy recordingIntermission];
  v10 = v9;
  [responseCopy recordingSignatureOffset];
  v12 = v11;
  [responseCopy retrySeconds];
  v14 = v13;
  match = [responseCopy match];
  signature = [responseCopy signature];
  daemonDelegate = [(SHManagedSessionCustomCatalogDriver *)self daemonDelegate];
  inflightRequestID = [daemonDelegate inflightRequestID];
  error = [responseCopy error];

  v21 = [(SHMatcherResponse *)v8 initWithRecordingIntermission:match recordingSignatureOffset:signature retrySeconds:inflightRequestID match:error signature:v10 runningAssociatedRequestID:v12 error:v14];
  serviceConnection = [(SHManagedSessionCustomCatalogDriver *)self serviceConnection];
  [serviceConnection matcher:matcherCopy didProduceResponse:v21];
}

- (void)setSessionDriverDelegate:(id)delegate
{
  delegateCopy = delegate;
  daemonDelegate = [(SHManagedSessionCustomCatalogDriver *)self daemonDelegate];
  [daemonDelegate setSessionDriverDelegate:delegateCopy];
}

- (SHSessionDriverDelegate)sessionDriverDelegate
{
  daemonDelegate = [(SHManagedSessionCustomCatalogDriver *)self daemonDelegate];
  sessionDriverDelegate = [daemonDelegate sessionDriverDelegate];

  return sessionDriverDelegate;
}

- (void)flow:(id)flow time:(id)time
{
  flowCopy = flow;
  timeCopy = time;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This session driver does not accept user supplied audio" userInfo:0];
  objc_exception_throw(v7);
}

@end