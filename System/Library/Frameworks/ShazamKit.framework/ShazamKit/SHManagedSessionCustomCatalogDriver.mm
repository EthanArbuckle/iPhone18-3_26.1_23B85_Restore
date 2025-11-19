@interface SHManagedSessionCustomCatalogDriver
- (NSUUID)matchingSignatureID;
- (SHManagedSessionCustomCatalogDriver)initWithServiceConnection:(id)a3;
- (SHSessionDriverDelegate)sessionDriverDelegate;
- (void)flow:(id)a3 time:(id)a4;
- (void)matcher:(id)a3 didProduceResponse:(id)a4;
- (void)setSessionDriverDelegate:(id)a3;
@end

@implementation SHManagedSessionCustomCatalogDriver

- (SHManagedSessionCustomCatalogDriver)initWithServiceConnection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SHManagedSessionCustomCatalogDriver;
  v6 = [(SHManagedSessionCustomCatalogDriver *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(SHManagedSessionCustomCatalogDriverDaemonDelegate);
    daemonDelegate = v6->_daemonDelegate;
    v6->_daemonDelegate = v7;

    objc_storeStrong(&v6->_serviceConnection, a3);
    [(SHMatcher *)v6->_serviceConnection setDelegate:v6->_daemonDelegate];
  }

  return v6;
}

- (NSUUID)matchingSignatureID
{
  v2 = [(SHManagedSessionCustomCatalogDriver *)self daemonDelegate];
  v3 = [v2 matchingSignatureID];

  return v3;
}

- (void)matcher:(id)a3 didProduceResponse:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SHMatcherResponse alloc];
  [v6 recordingIntermission];
  v10 = v9;
  [v6 recordingSignatureOffset];
  v12 = v11;
  [v6 retrySeconds];
  v14 = v13;
  v15 = [v6 match];
  v16 = [v6 signature];
  v17 = [(SHManagedSessionCustomCatalogDriver *)self daemonDelegate];
  v18 = [v17 inflightRequestID];
  v19 = [v6 error];

  v21 = [(SHMatcherResponse *)v8 initWithRecordingIntermission:v15 recordingSignatureOffset:v16 retrySeconds:v18 match:v19 signature:v10 runningAssociatedRequestID:v12 error:v14];
  v20 = [(SHManagedSessionCustomCatalogDriver *)self serviceConnection];
  [v20 matcher:v7 didProduceResponse:v21];
}

- (void)setSessionDriverDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SHManagedSessionCustomCatalogDriver *)self daemonDelegate];
  [v5 setSessionDriverDelegate:v4];
}

- (SHSessionDriverDelegate)sessionDriverDelegate
{
  v2 = [(SHManagedSessionCustomCatalogDriver *)self daemonDelegate];
  v3 = [v2 sessionDriverDelegate];

  return v3;
}

- (void)flow:(id)a3 time:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This session driver does not accept user supplied audio" userInfo:0];
  objc_exception_throw(v7);
}

@end