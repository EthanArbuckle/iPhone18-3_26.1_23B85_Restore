@interface WFStorageServiceCancellableOperation
- (BOOL)isCancelled;
- (WFStorageServiceCancellableOperation)initWithCancelBlock:(id)block;
- (void)cancel;
@end

@implementation WFStorageServiceCancellableOperation

- (void)cancel
{
  cancelBlock = [(WFStorageServiceCancellableOperation *)self cancelBlock];
  if (cancelBlock)
  {
    cancelBlock[2]();
  }

  [(WFStorageServiceCancellableOperation *)self setCancelBlock:0];
}

- (BOOL)isCancelled
{
  cancelBlock = [(WFStorageServiceCancellableOperation *)self cancelBlock];
  v3 = cancelBlock == 0;

  return v3;
}

- (WFStorageServiceCancellableOperation)initWithCancelBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFStorageServiceCancellableOperation.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"cancelBlock"}];
  }

  v12.receiver = self;
  v12.super_class = WFStorageServiceCancellableOperation;
  v6 = [(WFStorageServiceCancellableOperation *)&v12 init];
  if (v6)
  {
    v7 = [blockCopy copy];
    cancelBlock = v6->_cancelBlock;
    v6->_cancelBlock = v7;

    v9 = v6;
  }

  return v6;
}

@end