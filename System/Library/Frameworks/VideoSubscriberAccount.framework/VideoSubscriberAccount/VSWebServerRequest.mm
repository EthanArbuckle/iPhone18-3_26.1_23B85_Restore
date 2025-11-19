@interface VSWebServerRequest
- (NSDictionary)headerFields;
- (NSString)HTTPVersion;
- (NSString)method;
- (NSString)path;
- (NSURL)URL;
- (VSWebServerRequest)initWithRequest:(_CFHTTPServerRequest *)a3;
- (id)bodyStream;
- (id)connection;
- (id)description;
@end

@implementation VSWebServerRequest

- (VSWebServerRequest)initWithRequest:(_CFHTTPServerRequest *)a3
{
  v7.receiver = self;
  v7.super_class = VSWebServerRequest;
  v4 = [(VSWebServerRequest *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_request = a3;
    _CFHTTPServerRequestSetClient();
  }

  return v5;
}

- (NSString)HTTPVersion
{
  [(VSWebServerRequest *)self request];
  v2 = _CFHTTPServerRequestCopyProperty();

  return v2;
}

- (NSString)method
{
  [(VSWebServerRequest *)self request];
  v2 = _CFHTTPServerRequestCopyProperty();

  return v2;
}

- (NSURL)URL
{
  [(VSWebServerRequest *)self request];
  v2 = _CFHTTPServerRequestCopyProperty();

  return v2;
}

- (NSString)path
{
  [(VSWebServerRequest *)self request];
  v2 = _CFHTTPServerRequestCopyProperty();

  return v2;
}

- (NSDictionary)headerFields
{
  [(VSWebServerRequest *)self request];
  v2 = _CFHTTPServerRequestCopyProperty();
  v3 = [v2 objectForKey:*MEMORY[0x277CBAC20]];

  return v3;
}

- (id)bodyStream
{
  [(VSWebServerRequest *)self request];
  v2 = _CFHTTPServerRequestCopyBodyStream();

  return v2;
}

- (id)connection
{
  [(VSWebServerRequest *)self request];
  v2 = _CFHTTPServerRequestCopyProperty();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == _CFHTTPServerConnectionGetTypeID())
    {
      v5 = _CFHTTPServerConnectionGetClient();
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = VSWebServerRequest;
  v4 = [(VSWebServerRequest *)&v10 description];
  v5 = [(VSWebServerRequest *)self method];
  v6 = [(VSWebServerRequest *)self path];
  v7 = [(VSWebServerRequest *)self headerFields];
  v8 = [v3 stringWithFormat:@"<%@ %@ %@ \n\n%@>", v4, v5, v6, v7];

  return v8;
}

@end