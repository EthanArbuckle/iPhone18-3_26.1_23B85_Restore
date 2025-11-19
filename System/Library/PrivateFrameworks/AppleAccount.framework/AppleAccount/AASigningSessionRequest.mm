@interface AASigningSessionRequest
- (AASigningSessionRequest)initWithURLString:(id)a3 sessionInfoRequestData:(id)a4;
- (id)urlRequest;
@end

@implementation AASigningSessionRequest

- (AASigningSessionRequest)initWithURLString:(id)a3 sessionInfoRequestData:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AASigningSessionRequest;
  v8 = [(AARequest *)&v11 initWithURLString:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sessionInfoRequestData, a4);
  }

  return v9;
}

- (id)urlRequest
{
  v7.receiver = self;
  v7.super_class = AASigningSessionRequest;
  v3 = [(AARequest *)&v7 urlRequest];
  v4 = [v3 mutableCopy];

  v5 = [(NSData *)self->_sessionInfoRequestData base64EncodedStringWithOptions:0];
  [v4 setValue:v5 forHTTPHeaderField:@"X-MMe-Nas-Session"];

  return v4;
}

@end