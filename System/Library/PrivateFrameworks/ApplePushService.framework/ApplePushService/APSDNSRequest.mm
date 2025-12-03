@interface APSDNSRequest
- (APSDNSRequest)initWithCoder:(id)coder;
- (APSDNSRequest)initWithHostname:(id)hostname timeoutInSeconds:(double)seconds requestFlags:(int64_t)flags responseBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APSDNSRequest

- (APSDNSRequest)initWithHostname:(id)hostname timeoutInSeconds:(double)seconds requestFlags:(int64_t)flags responseBlock:(id)block
{
  hostnameCopy = hostname;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = APSDNSRequest;
  v12 = [(APSDNSRequest *)&v19 init];
  if (v12)
  {
    v13 = [hostnameCopy copy];
    hostname = v12->_hostname;
    v12->_hostname = v13;

    v12->_timeout = seconds;
    v15 = [blockCopy copy];
    responseBlock = v12->_responseBlock;
    v12->_responseBlock = v15;

    requestStartTime = v12->_requestStartTime;
    v12->_flags = flags;
    v12->_requestStartTime = 0;
  }

  return v12;
}

- (APSDNSRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = APSDNSRequest;
  v5 = [(APSDNSRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"APSDNSHostname"];
    hostname = v5->_hostname;
    v5->_hostname = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"APSDNSEnvironment"];
    environment = v5->_environment;
    v5->_environment = v8;

    v5->_flags = [coderCopy decodeIntegerForKey:@"APSDNSRequestFlags"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  hostname = self->_hostname;
  coderCopy = coder;
  [coderCopy encodeObject:hostname forKey:@"APSDNSHostname"];
  [coderCopy encodeObject:self->_environment forKey:@"APSDNSEnvironment"];
  [coderCopy encodeInteger:self->_flags forKey:@"APSDNSRequestFlags"];
}

@end