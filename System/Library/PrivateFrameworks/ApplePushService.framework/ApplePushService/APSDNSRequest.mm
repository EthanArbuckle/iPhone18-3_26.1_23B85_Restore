@interface APSDNSRequest
- (APSDNSRequest)initWithCoder:(id)a3;
- (APSDNSRequest)initWithHostname:(id)a3 timeoutInSeconds:(double)a4 requestFlags:(int64_t)a5 responseBlock:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APSDNSRequest

- (APSDNSRequest)initWithHostname:(id)a3 timeoutInSeconds:(double)a4 requestFlags:(int64_t)a5 responseBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = APSDNSRequest;
  v12 = [(APSDNSRequest *)&v19 init];
  if (v12)
  {
    v13 = [v10 copy];
    hostname = v12->_hostname;
    v12->_hostname = v13;

    v12->_timeout = a4;
    v15 = [v11 copy];
    responseBlock = v12->_responseBlock;
    v12->_responseBlock = v15;

    requestStartTime = v12->_requestStartTime;
    v12->_flags = a5;
    v12->_requestStartTime = 0;
  }

  return v12;
}

- (APSDNSRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = APSDNSRequest;
  v5 = [(APSDNSRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"APSDNSHostname"];
    hostname = v5->_hostname;
    v5->_hostname = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"APSDNSEnvironment"];
    environment = v5->_environment;
    v5->_environment = v8;

    v5->_flags = [v4 decodeIntegerForKey:@"APSDNSRequestFlags"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  hostname = self->_hostname;
  v5 = a3;
  [v5 encodeObject:hostname forKey:@"APSDNSHostname"];
  [v5 encodeObject:self->_environment forKey:@"APSDNSEnvironment"];
  [v5 encodeInteger:self->_flags forKey:@"APSDNSRequestFlags"];
}

@end