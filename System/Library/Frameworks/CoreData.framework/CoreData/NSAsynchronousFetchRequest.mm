@interface NSAsynchronousFetchRequest
- (NSAsynchronousFetchRequest)initWithFetchRequest:(NSFetchRequest *)request completionBlock:(void *)blk;
- (id)description;
- (void)dealloc;
@end

@implementation NSAsynchronousFetchRequest

- (void)dealloc
{
  self->_fetchRequest = 0;
  requestCompletionBlock = self->_requestCompletionBlock;
  if (requestCompletionBlock)
  {
    _Block_release(requestCompletionBlock);
    self->_requestCompletionBlock = 0;
  }

  v4.receiver = self;
  v4.super_class = NSAsynchronousFetchRequest;
  [(NSPersistentStoreRequest *)&v4 dealloc];
}

- (NSAsynchronousFetchRequest)initWithFetchRequest:(NSFetchRequest *)request completionBlock:(void *)blk
{
  v9.receiver = self;
  v9.super_class = NSAsynchronousFetchRequest;
  v6 = [(NSAsynchronousFetchRequest *)&v9 init];
  if (v6)
  {
    v6->_fetchRequest = request;
    if (blk)
    {
      v7 = _Block_copy(blk);
    }

    else
    {
      v7 = 0;
    }

    v6->_requestCompletionBlock = v7;
    if ([(NSFetchRequest *)request affectedStores])
    {
      [(NSPersistentStoreRequest *)v6 setAffectedStores:[(NSFetchRequest *)request affectedStores]];
    }
  }

  return v6;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = NSAsynchronousFetchRequest;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ with fetch request %@", -[NSAsynchronousFetchRequest description](&v6, sel_description), self->_fetchRequest];
  objc_autoreleasePoolPop(v3);
  return v4;
}

@end