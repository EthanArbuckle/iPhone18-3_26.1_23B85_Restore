@interface NENexusPathFlow
- (id)clientIdentifier;
- (id)endpoint;
- (id)initWithPath:(id *)path;
- (id)parameters;
@end

@implementation NENexusPathFlow

- (id)clientIdentifier
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    v2 = vars8;
  }

  return [(NENexusPathFlow *)self clientID];
}

- (id)parameters
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    v2 = vars8;
  }

  return [(NENexusPathFlow *)self parameters];
}

- (id)endpoint
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    v2 = vars8;
  }

  return [(NENexusPathFlow *)self endpoint];
}

- (id)initWithPath:(id *)path
{
  v4 = a2;
  if (path)
  {
    v9.receiver = path;
    v9.super_class = NENexusPathFlow;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    if (v5)
    {
      path = v5;
      objc_storeStrong(v5 + 5, a2);
      clientID = [v4 clientID];
      [(NENexusFlow *)path setupFlowProtocolWithUUID:clientID];
    }

    else
    {
      clientID = ne_log_obj();
      if (os_log_type_enabled(clientID, OS_LOG_TYPE_FAULT))
      {
        v8[0] = 0;
        _os_log_fault_impl(&dword_1BA83C000, clientID, OS_LOG_TYPE_FAULT, "[super init] failed", v8, 2u);
      }

      path = 0;
    }
  }

  return path;
}

@end