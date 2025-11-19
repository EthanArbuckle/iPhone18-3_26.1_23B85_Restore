@interface WFStorageServiceCancellableOperation
- (BOOL)isCancelled;
- (WFStorageServiceCancellableOperation)initWithCancelBlock:(id)a3;
- (void)cancel;
@end

@implementation WFStorageServiceCancellableOperation

- (void)cancel
{
  v3 = [(WFStorageServiceCancellableOperation *)self cancelBlock];
  if (v3)
  {
    v3[2]();
  }

  [(WFStorageServiceCancellableOperation *)self setCancelBlock:0];
}

- (BOOL)isCancelled
{
  v2 = [(WFStorageServiceCancellableOperation *)self cancelBlock];
  v3 = v2 == 0;

  return v3;
}

- (WFStorageServiceCancellableOperation)initWithCancelBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFStorageServiceCancellableOperation.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"cancelBlock"}];
  }

  v12.receiver = self;
  v12.super_class = WFStorageServiceCancellableOperation;
  v6 = [(WFStorageServiceCancellableOperation *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    cancelBlock = v6->_cancelBlock;
    v6->_cancelBlock = v7;

    v9 = v6;
  }

  return v6;
}

@end