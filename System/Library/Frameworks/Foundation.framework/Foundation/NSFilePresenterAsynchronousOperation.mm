@interface NSFilePresenterAsynchronousOperation
+ (id)operationWithBlock:(id)a3;
- (void)finish;
- (void)start;
@end

@implementation NSFilePresenterAsynchronousOperation

+ (id)operationWithBlock:(id)a3
{
  v4 = objc_alloc_init(a1);
  v4[31] = [a3 copy];

  return v4;
}

- (void)start
{
  [(NSFilePresenterAsynchronousOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_isExecuting = 1;
  [(NSFilePresenterAsynchronousOperation *)self didChangeValueForKey:@"isExecuting"];
  v3 = *(self->_block + 2);

  v3();
}

- (void)finish
{
  self->_block = 0;
  [(NSFilePresenterAsynchronousOperation *)self willChangeValueForKey:@"isFinished"];
  [(NSFilePresenterAsynchronousOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_isFinished = 1;
  self->_isExecuting = 0;
  [(NSFilePresenterAsynchronousOperation *)self didChangeValueForKey:@"isExecuting"];

  [(NSFilePresenterAsynchronousOperation *)self didChangeValueForKey:@"isFinished"];
}

@end