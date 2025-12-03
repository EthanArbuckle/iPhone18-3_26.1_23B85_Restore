@interface HMDeviceSetupOperation
- (HMDeviceSetupOperation)init;
- (HMDeviceSetupOperation)initWithSession:(id)session;
- (HMDeviceSetupOperation)initWithSession:(id)session sessionIdentifier:(id)identifier;
- (HMDeviceSetupOperation)initWithSession:(id)session setupSessionFactory:(id)factory;
- (TRSession)session;
@end

@implementation HMDeviceSetupOperation

- (TRSession)session
{
  v7.receiver = self;
  v7.super_class = HMDeviceSetupOperation;
  sessionTransport = [(HMDeviceSetupOperationBase *)&v7 sessionTransport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = sessionTransport;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  session = [v4 session];

  return session;
}

- (HMDeviceSetupOperation)initWithSession:(id)session setupSessionFactory:(id)factory
{
  factoryCopy = factory;
  sessionCopy = session;
  v8 = [[HMTRSession alloc] initWithSession:sessionCopy];

  v11.receiver = self;
  v11.super_class = HMDeviceSetupOperation;
  v9 = [(HMDeviceSetupOperationBase *)&v11 initWithSessionTransport:v8 setupSessionFactory:factoryCopy];

  if (v9)
  {
    objc_storeStrong(&v9->_trSession, v8);
  }

  return v9;
}

- (HMDeviceSetupOperation)initWithSession:(id)session sessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__HMDeviceSetupOperation_initWithSession_sessionIdentifier___block_invoke;
  v10[3] = &unk_1E7549330;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = [(HMDeviceSetupOperation *)self initWithSession:session setupSessionFactory:v10];

  return v8;
}

HMDeviceSetupSession *__60__HMDeviceSetupOperation_initWithSession_sessionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDeviceSetupSession alloc] initWithRole:0 identifier:*(a1 + 32) delegate:v3];

  return v4;
}

- (HMDeviceSetupOperation)initWithSession:(id)session
{
  v4 = MEMORY[0x1E696AFB0];
  sessionCopy = session;
  uUID = [v4 UUID];
  v7 = [(HMDeviceSetupOperation *)self initWithSession:sessionCopy sessionIdentifier:uUID];

  return v7;
}

- (HMDeviceSetupOperation)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end