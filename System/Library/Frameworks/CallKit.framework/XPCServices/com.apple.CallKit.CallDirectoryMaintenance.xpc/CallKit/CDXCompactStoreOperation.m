@interface CDXCompactStoreOperation
- (CDXCompactStoreOperation)initWithStore:(id)a3;
- (CDXCompactStoreOperation)initWithStore:(id)a3 queue:(id)a4;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation CDXCompactStoreOperation

- (CDXCompactStoreOperation)initWithStore:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDXCompactStoreOperation;
  v9 = [(CDXCompactStoreOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a4);
    objc_storeStrong(&v10->_store, a3);
  }

  return v10;
}

- (CDXCompactStoreOperation)initWithStore:(id)a3
{
  v4 = a3;
  v5 = dispatch_queue_create("com.apple.callkit.calldirectory.compactstoreoperation", 0);
  v6 = [(CDXCompactStoreOperation *)self initWithStore:v4 queue:v5];

  return v6;
}

- (void)performWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CDXCompactStoreOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011004;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end