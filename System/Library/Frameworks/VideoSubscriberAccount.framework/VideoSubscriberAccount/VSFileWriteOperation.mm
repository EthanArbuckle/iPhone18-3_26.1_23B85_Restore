@interface VSFileWriteOperation
- (VSFileWriteOperation)init;
- (void)executionDidBegin;
@end

@implementation VSFileWriteOperation

- (VSFileWriteOperation)init
{
  v8.receiver = self;
  v8.super_class = VSFileWriteOperation;
  v2 = [(VSFileWriteOperation *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSOptional);
    data = v2->_data;
    v2->_data = v3;

    v5 = objc_alloc_init(VSOptional);
    destination = v2->_destination;
    v2->_destination = v5;
  }

  return v2;
}

- (void)executionDidBegin
{
  v3 = [(VSFileWriteOperation *)self data];
  v4 = [v3 forceUnwrapObject];
  v5 = [(VSFileWriteOperation *)self destination];
  v6 = [v5 forceUnwrapObject];
  v9 = 0;
  v7 = [v4 writeToURL:v6 options:1 error:&v9];
  v8 = v9;

  if ((v7 & 1) == 0)
  {
    [(VSFileWriteOperation *)self setError:v8];
  }

  [(VSAsyncOperation *)self finishExecutionIfPossible];
}

@end