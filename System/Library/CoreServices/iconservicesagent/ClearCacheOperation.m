@interface ClearCacheOperation
- (ClearCacheOperation)initWithCache:(id)a3 operationType:(unint64_t)a4;
- (id)description;
- (void)run;
@end

@implementation ClearCacheOperation

- (ClearCacheOperation)initWithCache:(id)a3 operationType:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = ClearCacheOperation;
  v8 = [(ClearCacheOperation *)&v12 init];
  if (v8)
  {
    v9 = os_transaction_create();
    transaction = v8->_transaction;
    v8->_transaction = v9;

    v8->_operation = a4;
    objc_storeStrong(&v8->_cache, a3);
  }

  return v8;
}

- (void)run
{
  operation = self->_operation;
  cache = self->_cache;
  if (operation == 2)
  {
    [(ISMutableIconCache *)cache clear];

    notify_post("com.apple.iconservicesd.clearCache.immediately");
  }

  else
  {

    [(ISMutableIconCache *)cache collectGarbage];
  }
}

- (id)description
{
  if (self->_operation == 2)
  {
    return @"CacheOperation - ClearAll";
  }

  else
  {
    return @"CacheOperation - GarbageCollect";
  }
}

@end