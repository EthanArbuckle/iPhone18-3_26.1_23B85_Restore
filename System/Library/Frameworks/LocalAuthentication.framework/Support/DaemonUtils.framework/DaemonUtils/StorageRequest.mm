@interface StorageRequest
- (LACXPCClient)client;
- (StorageRequest)initWithStorageDomain:(int64_t)domain key:(int64_t)key acl:(id)acl options:(id)options contextID:(id)d connection:(id)connection;
@end

@implementation StorageRequest

- (StorageRequest)initWithStorageDomain:(int64_t)domain key:(int64_t)key acl:(id)acl options:(id)options contextID:(id)d connection:(id)connection
{
  aclCopy = acl;
  optionsCopy = options;
  dCopy = d;
  connectionCopy = connection;
  if (connectionCopy)
  {
    v18 = [[Caller alloc] initWithConnection:connectionCopy];
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
    objc_storeStrong(&v20->_acl, acl);
    objc_storeStrong(&v21->_contextID, d);
    v21->_domain = domain;
    v21->_key = key;
    objc_storeStrong(&v21->_options, options);
  }

  return v21;
}

- (LACXPCClient)client
{
  caller = [(Request *)self caller];
  clientInfo = [caller clientInfo];

  return clientInfo;
}

@end