@interface NSFilePresenterAsynchronousOperation
+ (id)operationWithBlock:(id)block;
- (void)finish;
- (void)start;
@end

@implementation NSFilePresenterAsynchronousOperation

+ (id)operationWithBlock:(id)block
{
  v4 = objc_alloc_init(self);
  v4[31] = [block copy];

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