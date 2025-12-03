@interface AssetPromise
- (AssetPromise)initWithRequestID:(id)d promiseBlock:(id)block;
@end

@implementation AssetPromise

- (AssetPromise)initWithRequestID:(id)d promiseBlock:(id)block
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = AssetPromise;
  v8 = [(AssetPromise *)&v11 initWithBlock:block];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_requestID, d);
  }

  return v9;
}

@end