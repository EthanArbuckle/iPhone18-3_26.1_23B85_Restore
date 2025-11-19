@interface AMSGeneratePartialFDSTask
- (ACAccount)account;
- (AMSGeneratePartialFDSTask)initWithRequest:(id)a3 bag:(id)a4;
- (NSNumber)purchaseIdentifier;
- (NSString)logKey;
- (id)runTask;
- (unint64_t)action;
@end

@implementation AMSGeneratePartialFDSTask

- (AMSGeneratePartialFDSTask)initWithRequest:(id)a3 bag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSGeneratePartialFDSTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bag, a4);
    objc_storeStrong(&v10->_request, a3);
  }

  return v10;
}

- (ACAccount)account
{
  v2 = [(AMSGeneratePartialFDSTask *)self request];
  v3 = [v2 account];

  return v3;
}

- (unint64_t)action
{
  v2 = [(AMSGeneratePartialFDSTask *)self request];
  v3 = [v2 options];
  v4 = [v3 action];

  return v4;
}

- (NSString)logKey
{
  v2 = [(AMSGeneratePartialFDSTask *)self request];
  v3 = [v2 logKey];

  return v3;
}

- (NSNumber)purchaseIdentifier
{
  v2 = [(AMSGeneratePartialFDSTask *)self request];
  v3 = [v2 purchaseIdentifier];

  return v3;
}

- (id)runTask
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__AMSGeneratePartialFDSTask_runTask__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __36__AMSGeneratePartialFDSTask_runTask__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) request];
  v2 = [AMSFDSService partialFDSAssessmentForRequest:v1];

  return v2;
}

@end