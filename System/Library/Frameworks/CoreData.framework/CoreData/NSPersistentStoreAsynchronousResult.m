@interface NSPersistentStoreAsynchronousResult
- (NSPersistentStoreAsynchronousResult)initWithContext:(id)a3 andProgress:(id)a4 completetionBlock:(id)a5;
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

- (NSPersistentStoreAsynchronousResult)initWithContext:(id)a3 andProgress:(id)a4 completetionBlock:(id)a5
{
  v11.receiver = self;
  v11.super_class = NSPersistentStoreAsynchronousResult;
  v8 = [(NSPersistentStoreAsynchronousResult *)&v11 init];
  if (v8)
  {
    v8->_requestProgress = a4;
    v8->_requestContext = a3;
    if (a5)
    {
      v9 = _Block_copy(a5);
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
  v2 = [(NSPersistentStoreAsynchronousResult *)self progress];

  [(NSProgress *)v2 cancel];
}

@end