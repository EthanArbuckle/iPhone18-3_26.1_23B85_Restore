@interface CDXCompactStoreOperation
- (CDXCompactStoreOperation)initWithStore:(id)store;
- (CDXCompactStoreOperation)initWithStore:(id)store queue:(id)queue;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation CDXCompactStoreOperation

- (CDXCompactStoreOperation)initWithStore:(id)store queue:(id)queue
{
  storeCopy = store;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = CDXCompactStoreOperation;
  v9 = [(CDXCompactStoreOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_store, store);
  }

  return v10;
}

- (CDXCompactStoreOperation)initWithStore:(id)store
{
  storeCopy = store;
  v5 = dispatch_queue_create("com.apple.callkit.calldirectory.compactstoreoperation", 0);
  v6 = [(CDXCompactStoreOperation *)self initWithStore:storeCopy queue:v5];

  return v6;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CDXCompactStoreOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011004;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

@end