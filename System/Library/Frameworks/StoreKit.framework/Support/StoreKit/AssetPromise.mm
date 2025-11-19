@interface AssetPromise
- (AssetPromise)initWithRequestID:(id)a3 promiseBlock:(id)a4;
@end

@implementation AssetPromise

- (AssetPromise)initWithRequestID:(id)a3 promiseBlock:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AssetPromise;
  v8 = [(AssetPromise *)&v11 initWithBlock:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestID, a3);
  }

  return v9;
}

@end