@interface NSAsynchronousFetchResult
- (id)initForFetchRequest:(id)a3 withContext:(id)a4 andProgress:(id)a5 completetionBlock:(id)a6;
- (uint64_t)setFinalResult:(uint64_t)result;
- (void)dealloc;
- (void)setOperationError:(id)a3;
@end

@implementation NSAsynchronousFetchResult

- (void)dealloc
{
  [(NSFetchRequest *)[(NSAsynchronousFetchRequest *)self->_fetchRequest fetchRequest] _setAsyncResultHandle:0];

  self->_fetchRequest = 0;
  self->_finalResult = 0;
  intermediateResultCallback = self->_intermediateResultCallback;
  if (intermediateResultCallback)
  {
    _Block_release(intermediateResultCallback);
    self->_intermediateResultCallback = 0;
  }

  v4.receiver = self;
  v4.super_class = NSAsynchronousFetchResult;
  [(NSPersistentStoreAsynchronousResult *)&v4 dealloc];
}

- (id)initForFetchRequest:(id)a3 withContext:(id)a4 andProgress:(id)a5 completetionBlock:(id)a6
{
  v9.receiver = self;
  v9.super_class = NSAsynchronousFetchResult;
  v7 = [(NSPersistentStoreAsynchronousResult *)&v9 initWithContext:a4 andProgress:a5 completetionBlock:a6];
  if (v7)
  {
    v7->_fetchRequest = a3;
  }

  return v7;
}

- (uint64_t)setFinalResult:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 56);
    if (v4 != a2)
    {

      *(v3 + 56) = a2;
    }

    v5 = [*(v3 + 48) fetchRequest];

    return [v5 _setAsyncResultHandle:0];
  }

  return result;
}

- (void)setOperationError:(id)a3
{
  v4.receiver = self;
  v4.super_class = NSAsynchronousFetchResult;
  [(NSPersistentStoreAsynchronousResult *)&v4 setOperationError:a3];
  [(NSFetchRequest *)[(NSAsynchronousFetchRequest *)self->_fetchRequest fetchRequest] _setAsyncResultHandle:0];
}

@end