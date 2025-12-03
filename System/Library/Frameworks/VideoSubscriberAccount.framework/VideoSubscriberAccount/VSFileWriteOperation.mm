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
  data = [(VSFileWriteOperation *)self data];
  forceUnwrapObject = [data forceUnwrapObject];
  destination = [(VSFileWriteOperation *)self destination];
  forceUnwrapObject2 = [destination forceUnwrapObject];
  v9 = 0;
  v7 = [forceUnwrapObject writeToURL:forceUnwrapObject2 options:1 error:&v9];
  v8 = v9;

  if ((v7 & 1) == 0)
  {
    [(VSFileWriteOperation *)self setError:v8];
  }

  [(VSAsyncOperation *)self finishExecutionIfPossible];
}

@end