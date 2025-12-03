@interface MPStoreModelRequest
- (MPStoreModelRequest)init;
- (MPStoreModelRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPStoreModelRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = MPStoreModelRequest;
  v5 = [(MPModelRequest *)&v14 copyWithZone:?];
  v6 = v5;
  if (v5)
  {
    v5[9] = *&self->_timeoutInterval;
    *(v5 + 64) = self->_didSetTimeoutInterval;
    v7 = [(NSString *)self->_clientIdentifier copyWithZone:zone];
    v8 = v6[10];
    v6[10] = v7;

    v9 = [(NSString *)self->_clientVersion copyWithZone:zone];
    v10 = v6[11];
    v6[11] = v9;

    v11 = [(NSString *)self->_clientPlatformIdentifier copyWithZone:zone];
    v12 = v6[12];
    v6[12] = v11;

    v6[13] = self->_authenticationOptions;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MPStoreModelRequest;
  [(MPModelRequest *)&v5 encodeWithCoder:coderCopy];
  if (self->_didSetTimeoutInterval)
  {
    [coderCopy encodeDouble:@"MPStoreModelRequestTimeoutInterval" forKey:self->_timeoutInterval];
  }

  [coderCopy encodeObject:self->_clientIdentifier forKey:@"MPStoreModelRequestClientIdentifier"];
  [coderCopy encodeObject:self->_clientVersion forKey:@"MPStoreModelRequestClientVersion"];
  [coderCopy encodeObject:self->_clientPlatformIdentifier forKey:@"MPStoreModelRequestClientPlatformIdentifier"];
  [coderCopy encodeInteger:self->_authenticationOptions forKey:@"MPStoreModelRequestAuthenticationOptions"];
}

- (MPStoreModelRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MPStoreModelRequest;
  v5 = [(MPModelRequest *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"MPStoreModelRequestTimeoutInterval"])
    {
      [coderCopy decodeDoubleForKey:@"MPStoreModelRequestTimeoutInterval"];
      v5->_timeoutInterval = v6;
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPStoreModelRequestClientIdentifier"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPStoreModelRequestClientVersion"];
    clientVersion = v5->_clientVersion;
    v5->_clientVersion = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPStoreModelRequestClientPlatformIdentifier"];
    clientPlatformIdentifier = v5->_clientPlatformIdentifier;
    v5->_clientPlatformIdentifier = v11;

    if ([coderCopy containsValueForKey:@"MPStoreModelRequestAuthenticationOptions"])
    {
      v5->_authenticationOptions = [coderCopy decodeIntegerForKey:@"MPStoreModelRequestAuthenticationOptions"];
    }
  }

  return v5;
}

- (MPStoreModelRequest)init
{
  v3.receiver = self;
  v3.super_class = MPStoreModelRequest;
  result = [(MPStoreModelRequest *)&v3 init];
  if (result)
  {
    result->_timeoutInterval = 60.0;
    result->_authenticationOptions = 0;
  }

  return result;
}

@end