@interface LoadStoreQueueRequestEncoder
- (LoadStoreQueueRequestEncoder)initWithBag:(id)bag;
- (id)requestByEncodingRequest:(id)request parameters:(id)parameters;
@end

@implementation LoadStoreQueueRequestEncoder

- (LoadStoreQueueRequestEncoder)initWithBag:(id)bag
{
  bagCopy = bag;
  v5 = sub_1003BBF50();
  v6 = v5;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = LoadStoreQueueRequestEncoder;
    v7 = [(LoadStoreQueueRequestEncoder *)&v9 initWithBag:bagCopy];
    self = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_device, v5);
    }
  }

  return self;
}

- (id)requestByEncodingRequest:(id)request parameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [request mutableCopy];
  [v7 setCachePolicy:1];
  sub_1003BC30C(v7, 1, self->_device);
  v10.receiver = self;
  v10.super_class = LoadStoreQueueRequestEncoder;
  v8 = [(LoadStoreQueueRequestEncoder *)&v10 requestByEncodingRequest:v7 parameters:parametersCopy];

  return v8;
}

@end