@interface NENexusPathFlow
- (id)clientIdentifier;
- (id)endpoint;
- (id)initWithPath:(id *)a1;
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

- (id)initWithPath:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = NENexusPathFlow;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    if (v5)
    {
      a1 = v5;
      objc_storeStrong(v5 + 5, a2);
      v6 = [v4 clientID];
      [(NENexusFlow *)a1 setupFlowProtocolWithUUID:v6];
    }

    else
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v8[0] = 0;
        _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "[super init] failed", v8, 2u);
      }

      a1 = 0;
    }
  }

  return a1;
}

@end