@interface StorageRequest
- (LACXPCClient)client;
- (StorageRequest)initWithStorageDomain:(int64_t)a3 key:(int64_t)a4 acl:(id)a5 options:(id)a6 contextID:(id)a7 connection:(id)a8;
@end

@implementation StorageRequest

- (StorageRequest)initWithStorageDomain:(int64_t)a3 key:(int64_t)a4 acl:(id)a5 options:(id)a6 contextID:(id)a7 connection:(id)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (v17)
  {
    v18 = [[Caller alloc] initWithConnection:v17];
  }

  else
  {
    v18 = +[Caller current];
  }

  v19 = v18;
  v24.receiver = self;
  v24.super_class = StorageRequest;
  v20 = [(Request *)&v24 initWithCaller:v18];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_acl, a5);
    objc_storeStrong(&v21->_contextID, a7);
    v21->_domain = a3;
    v21->_key = a4;
    objc_storeStrong(&v21->_options, a6);
  }

  return v21;
}

- (LACXPCClient)client
{
  v2 = [(Request *)self caller];
  v3 = [v2 clientInfo];

  return v3;
}

@end