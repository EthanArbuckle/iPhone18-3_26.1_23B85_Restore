@interface AMSGeneratePartialFDSTask
- (ACAccount)account;
- (AMSGeneratePartialFDSTask)initWithRequest:(id)request bag:(id)bag;
- (NSNumber)purchaseIdentifier;
- (NSString)logKey;
- (id)runTask;
- (unint64_t)action;
@end

@implementation AMSGeneratePartialFDSTask

- (AMSGeneratePartialFDSTask)initWithRequest:(id)request bag:(id)bag
{
  requestCopy = request;
  bagCopy = bag;
  v12.receiver = self;
  v12.super_class = AMSGeneratePartialFDSTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bag, bag);
    objc_storeStrong(&v10->_request, request);
  }

  return v10;
}

- (ACAccount)account
{
  request = [(AMSGeneratePartialFDSTask *)self request];
  account = [request account];

  return account;
}

- (unint64_t)action
{
  request = [(AMSGeneratePartialFDSTask *)self request];
  options = [request options];
  action = [options action];

  return action;
}

- (NSString)logKey
{
  request = [(AMSGeneratePartialFDSTask *)self request];
  logKey = [request logKey];

  return logKey;
}

- (NSNumber)purchaseIdentifier
{
  request = [(AMSGeneratePartialFDSTask *)self request];
  purchaseIdentifier = [request purchaseIdentifier];

  return purchaseIdentifier;
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