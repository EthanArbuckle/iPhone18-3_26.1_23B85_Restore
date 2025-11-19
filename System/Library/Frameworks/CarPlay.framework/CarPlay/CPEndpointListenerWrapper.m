@interface CPEndpointListenerWrapper
- (CPEndpointListenerWrapper)initWithXPCDictionary:(id)a3;
- (CPEndpointListenerWrapper)initWithXPCEndpoint:(id)a3;
@end

@implementation CPEndpointListenerWrapper

- (CPEndpointListenerWrapper)initWithXPCEndpoint:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPEndpointListenerWrapper;
  v6 = [(CPEndpointListenerWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, a3);
  }

  return v7;
}

- (CPEndpointListenerWrapper)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPEndpointListenerWrapper;
  v5 = [(CPEndpointListenerWrapper *)&v9 init];
  if (v5)
  {
    v6 = xpc_dictionary_get_value(v4, "endpoint");
    endpoint = v5->_endpoint;
    v5->_endpoint = v6;
  }

  return v5;
}

@end