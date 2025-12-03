@interface SHLOperationQueue
+ (id)defaultQueue;
- (NSOperation)tailOperation;
- (id)initOperationQueue;
- (void)cancelAllOperations;
@end

@implementation SHLOperationQueue

+ (id)defaultQueue
{
  if (qword_100098298 != -1)
  {
    sub_1000241C4();
  }

  v3 = qword_100098290;

  return v3;
}

- (id)initOperationQueue
{
  v6.receiver = self;
  v6.super_class = SHLOperationQueue;
  v2 = [(SHLOperationQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setName:@"com.shazam.ShazamLibrary.operation-queue"];
    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

- (void)cancelAllOperations
{
  [(SHLOperationQueue *)self setTailOperation:0];
  operationQueue = [(SHLOperationQueue *)self operationQueue];
  [operationQueue cancelAllOperations];
}

- (NSOperation)tailOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_tailOperation);

  return WeakRetained;
}

@end