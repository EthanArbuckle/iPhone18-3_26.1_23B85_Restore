@interface ASDRepairApplicationRequest
- (ASDRepairApplicationRequest)initWithOptions:(id)options;
- (void)sendRequestWithCompletionBlock:(id)block;
@end

@implementation ASDRepairApplicationRequest

- (ASDRepairApplicationRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = ASDRepairApplicationRequest;
  v5 = [(ASDRepairApplicationRequest *)&v12 init];
  if (v5)
  {
    v6 = [ASDRepairOptions alloc];
    bundleID = [optionsCopy bundleID];
    accountDSID = [optionsCopy accountDSID];
    v9 = -[ASDRepairOptions initWithBundleID:accountIdentifier:claimStyle:](v6, "initWithBundleID:accountIdentifier:claimStyle:", bundleID, accountDSID, [optionsCopy claimStyle]);
    options = v5->_options;
    v5->_options = v9;
  }

  return v5;
}

- (void)sendRequestWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = +[ASDRepairService defaultService];
  [v5 repairAppWithOptions:self->_options replyHandler:blockCopy];
}

@end