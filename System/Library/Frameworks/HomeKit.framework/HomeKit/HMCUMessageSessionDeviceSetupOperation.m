@interface HMCUMessageSessionDeviceSetupOperation
- (CUMessageSession)session;
- (HMCUMessageSessionDeviceSetupOperation)init;
- (HMCUMessageSessionDeviceSetupOperation)initWithSession:(id)a3 sessionIdentifier:(id)a4;
- (HMCUMessageSessionDeviceSetupOperation)initWithSession:(id)a3 setupSessionFactory:(id)a4;
@end

@implementation HMCUMessageSessionDeviceSetupOperation

- (CUMessageSession)session
{
  v6.receiver = self;
  v6.super_class = HMCUMessageSessionDeviceSetupOperation;
  v2 = [(HMDeviceSetupOperationBase *)&v6 sessionTransport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (HMCUMessageSessionDeviceSetupOperation)initWithSession:(id)a3 setupSessionFactory:(id)a4
{
  v5.receiver = self;
  v5.super_class = HMCUMessageSessionDeviceSetupOperation;
  return [(HMDeviceSetupOperationBase *)&v5 initWithSessionTransport:a3 setupSessionFactory:a4];
}

- (HMCUMessageSessionDeviceSetupOperation)initWithSession:(id)a3 sessionIdentifier:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__HMCUMessageSessionDeviceSetupOperation_initWithSession_sessionIdentifier___block_invoke;
  v10[3] = &unk_1E7549330;
  v11 = v6;
  v7 = v6;
  v8 = [(HMCUMessageSessionDeviceSetupOperation *)self initWithSession:a3 setupSessionFactory:v10];

  return v8;
}

HMDeviceSetupSession *__76__HMCUMessageSessionDeviceSetupOperation_initWithSession_sessionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDeviceSetupSession alloc] initWithRole:0 identifier:*(a1 + 32) delegate:v3];

  return v4;
}

- (HMCUMessageSessionDeviceSetupOperation)init
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