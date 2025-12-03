@interface SHLCloudBackedOperation
- (CKDatabaseOperation)operation;
- (SHLCloudBackedOperation)initWithOperation:(id)operation;
@end

@implementation SHLCloudBackedOperation

- (SHLCloudBackedOperation)initWithOperation:(id)operation
{
  operationCopy = operation;
  v9.receiver = self;
  v9.super_class = SHLCloudBackedOperation;
  v6 = [(SHLCloudBackedOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_privateOperation, operation);
  }

  return v7;
}

- (CKDatabaseOperation)operation
{
  privateOperation = [(SHLCloudBackedOperation *)self privateOperation];
  configuration = [privateOperation configuration];
  v5 = [configuration copy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  [v8 setAutomaticallyRetryNetworkFailures:0];
  [v8 setDiscretionaryNetworkBehavior:0];
  privateOperation2 = [(SHLCloudBackedOperation *)self privateOperation];
  [privateOperation2 setConfiguration:v8];

  privateOperation3 = [(SHLCloudBackedOperation *)self privateOperation];

  return privateOperation3;
}

@end