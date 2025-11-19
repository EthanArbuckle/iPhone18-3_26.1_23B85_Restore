@interface SHLCloudBackedOperation
- (CKDatabaseOperation)operation;
- (SHLCloudBackedOperation)initWithOperation:(id)a3;
@end

@implementation SHLCloudBackedOperation

- (SHLCloudBackedOperation)initWithOperation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHLCloudBackedOperation;
  v6 = [(SHLCloudBackedOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_privateOperation, a3);
  }

  return v7;
}

- (CKDatabaseOperation)operation
{
  v3 = [(SHLCloudBackedOperation *)self privateOperation];
  v4 = [v3 configuration];
  v5 = [v4 copy];
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
  v9 = [(SHLCloudBackedOperation *)self privateOperation];
  [v9 setConfiguration:v8];

  v10 = [(SHLCloudBackedOperation *)self privateOperation];

  return v10;
}

@end