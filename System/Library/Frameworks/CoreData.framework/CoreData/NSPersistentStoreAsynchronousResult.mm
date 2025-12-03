@interface NSPersistentStoreAsynchronousResult
- (NSPersistentStoreAsynchronousResult)initWithContext:(id)context andProgress:(id)progress completetionBlock:(id)block;
- (void)cancel;
- (void)dealloc;
@end

@implementation NSPersistentStoreAsynchronousResult

- (void)dealloc
{
  self->_requestProgress = 0;

  self->_requestError = 0;
  self->_requestContext = 0;
  requestCompletionBlock = self->_requestCompletionBlock;
  if (requestCompletionBlock)
  {
    _Block_release(requestCompletionBlock);
    self->_requestCompletionBlock = 0;
  }

  v4.receiver = self;
  v4.super_class = NSPersistentStoreAsynchronousResult;
  [(NSPersistentStoreAsynchronousResult *)&v4 dealloc];
}

- (NSPersistentStoreAsynchronousResult)initWithContext:(id)context andProgress:(id)progress completetionBlock:(id)block
{
  v11.receiver = self;
  v11.super_class = NSPersistentStoreAsynchronousResult;
  v8 = [(NSPersistentStoreAsynchronousResult *)&v11 init];
  if (v8)
  {
    v8->_requestProgress = progress;
    v8->_requestContext = context;
    if (block)
    {
      v9 = _Block_copy(block);
    }

    else
    {
      v9 = 0;
    }

    v8->_requestCompletionBlock = v9;
    v8->_flags = 0;
  }

  return v8;
}

- (void)cancel
{
  atomic_fetch_add(&self->_flags, 1u);
  progress = [(NSPersistentStoreAsynchronousResult *)self progress];

  [(NSProgress *)progress cancel];
}

@end