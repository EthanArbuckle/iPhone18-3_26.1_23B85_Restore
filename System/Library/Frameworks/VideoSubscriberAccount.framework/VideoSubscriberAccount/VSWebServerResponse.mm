@interface VSWebServerResponse
+ (id)responseToRequest:(id)request withCode:(int64_t)code headers:(id)headers bodyData:(id)data;
+ (id)responseToRequest:(id)request withCode:(int64_t)code headers:(id)headers bodyStream:(id)stream;
- (VSWebServerResponse)initWithResponse:(_CFHTTPServerResponse *)response;
- (__CFHTTPMessage)message;
- (id)connection;
- (id)description;
- (id)request;
- (void)enqueue;
@end

@implementation VSWebServerResponse

+ (id)responseToRequest:(id)request withCode:(int64_t)code headers:(id)headers bodyData:(id)data
{
  requestCopy = request;
  headersCopy = headers;
  dataCopy = data;
  if (!requestCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The request parameter must not be nil."];
  }

  [requestCopy request];
  ResponseMessage = _CFHTTPServerRequestCreateResponseMessage();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__VSWebServerResponse_responseToRequest_withCode_headers_bodyData___block_invoke;
  v14[3] = &__block_descriptor_40_e35_v32__0__NSString_8__NSString_16_B24l;
  v14[4] = ResponseMessage;
  [headersCopy enumerateKeysAndObjectsUsingBlock:v14];
  v12 = [[VSWebServerResponse alloc] initWithResponse:_CFHTTPServerResponseCreateWithData()];

  return v12;
}

+ (id)responseToRequest:(id)request withCode:(int64_t)code headers:(id)headers bodyStream:(id)stream
{
  requestCopy = request;
  headersCopy = headers;
  streamCopy = stream;
  if (!requestCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The request parameter must not be nil."];
  }

  [requestCopy request];
  ResponseMessage = _CFHTTPServerRequestCreateResponseMessage();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__VSWebServerResponse_responseToRequest_withCode_headers_bodyStream___block_invoke;
  v14[3] = &__block_descriptor_40_e35_v32__0__NSString_8__NSString_16_B24l;
  v14[4] = ResponseMessage;
  [headersCopy enumerateKeysAndObjectsUsingBlock:v14];
  v12 = [[VSWebServerResponse alloc] initWithResponse:_CFHTTPServerResponseCreateWithBodyStream()];

  return v12;
}

- (VSWebServerResponse)initWithResponse:(_CFHTTPServerResponse *)response
{
  v7.receiver = self;
  v7.super_class = VSWebServerResponse;
  v4 = [(VSWebServerResponse *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_response = response;
    _CFHTTPServerResponseSetClient();
  }

  return v5;
}

- (id)request
{
  [(VSWebServerResponse *)self response];
  v2 = _CFHTTPServerResponseCopyProperty();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == _CFHTTPServerRequestGetTypeID())
    {
      v5 = _CFHTTPServerRequestGetClient();
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

- (id)connection
{
  [(VSWebServerResponse *)self response];
  v2 = _CFHTTPServerResponseCopyProperty();
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

- (__CFHTTPMessage)message
{
  [(VSWebServerResponse *)self response];
  v2 = _CFHTTPServerResponseCopyProperty();

  return CFAutorelease(v2);
}

- (void)enqueue
{
  response = [(VSWebServerResponse *)self response];

  MEMORY[0x28210D150](response);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VSWebServerResponse;
  v4 = [(VSWebServerResponse *)&v8 description];
  v5 = CFCopyDescription([(VSWebServerResponse *)self message]);
  v6 = [v3 stringWithFormat:@"<%@ %@>", v4, v5];

  return v6;
}

@end