@interface AASigningSessionRequest
- (AASigningSessionRequest)initWithURLString:(id)string sessionInfoRequestData:(id)data;
- (id)urlRequest;
@end

@implementation AASigningSessionRequest

- (AASigningSessionRequest)initWithURLString:(id)string sessionInfoRequestData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = AASigningSessionRequest;
  v8 = [(AARequest *)&v11 initWithURLString:string];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sessionInfoRequestData, data);
  }

  return v9;
}

- (id)urlRequest
{
  v7.receiver = self;
  v7.super_class = AASigningSessionRequest;
  urlRequest = [(AARequest *)&v7 urlRequest];
  v4 = [urlRequest mutableCopy];

  v5 = [(NSData *)self->_sessionInfoRequestData base64EncodedStringWithOptions:0];
  [v4 setValue:v5 forHTTPHeaderField:@"X-MMe-Nas-Session"];

  return v4;
}

@end