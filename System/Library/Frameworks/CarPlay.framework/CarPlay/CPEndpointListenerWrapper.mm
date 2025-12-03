@interface CPEndpointListenerWrapper
- (CPEndpointListenerWrapper)initWithXPCDictionary:(id)dictionary;
- (CPEndpointListenerWrapper)initWithXPCEndpoint:(id)endpoint;
@end

@implementation CPEndpointListenerWrapper

- (CPEndpointListenerWrapper)initWithXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = CPEndpointListenerWrapper;
  v6 = [(CPEndpointListenerWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, endpoint);
  }

  return v7;
}

- (CPEndpointListenerWrapper)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = CPEndpointListenerWrapper;
  v5 = [(CPEndpointListenerWrapper *)&v9 init];
  if (v5)
  {
    v6 = xpc_dictionary_get_value(dictionaryCopy, "endpoint");
    endpoint = v5->_endpoint;
    v5->_endpoint = v6;
  }

  return v5;
}

@end