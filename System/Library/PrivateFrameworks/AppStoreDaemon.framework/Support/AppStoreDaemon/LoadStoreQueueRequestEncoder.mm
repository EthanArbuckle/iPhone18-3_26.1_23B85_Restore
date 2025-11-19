@interface LoadStoreQueueRequestEncoder
- (LoadStoreQueueRequestEncoder)initWithBag:(id)a3;
- (id)requestByEncodingRequest:(id)a3 parameters:(id)a4;
@end

@implementation LoadStoreQueueRequestEncoder

- (LoadStoreQueueRequestEncoder)initWithBag:(id)a3
{
  v4 = a3;
  v5 = sub_1003BBF50();
  v6 = v5;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = LoadStoreQueueRequestEncoder;
    v7 = [(LoadStoreQueueRequestEncoder *)&v9 initWithBag:v4];
    self = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_device, v5);
    }
  }

  return self;
}

- (id)requestByEncodingRequest:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  [v7 setCachePolicy:1];
  sub_1003BC30C(v7, 1, self->_device);
  v10.receiver = self;
  v10.super_class = LoadStoreQueueRequestEncoder;
  v8 = [(LoadStoreQueueRequestEncoder *)&v10 requestByEncodingRequest:v7 parameters:v6];

  return v8;
}

@end