@interface MPStoreModelRequest
- (MPStoreModelRequest)init;
- (MPStoreModelRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPStoreModelRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = MPStoreModelRequest;
  v5 = [(MPModelRequest *)&v14 copyWithZone:?];
  v6 = v5;
  if (v5)
  {
    v5[9] = *&self->_timeoutInterval;
    *(v5 + 64) = self->_didSetTimeoutInterval;
    v7 = [(NSString *)self->_clientIdentifier copyWithZone:a3];
    v8 = v6[10];
    v6[10] = v7;

    v9 = [(NSString *)self->_clientVersion copyWithZone:a3];
    v10 = v6[11];
    v6[11] = v9;

    v11 = [(NSString *)self->_clientPlatformIdentifier copyWithZone:a3];
    v12 = v6[12];
    v6[12] = v11;

    v6[13] = self->_authenticationOptions;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MPStoreModelRequest;
  [(MPModelRequest *)&v5 encodeWithCoder:v4];
  if (self->_didSetTimeoutInterval)
  {
    [v4 encodeDouble:@"MPStoreModelRequestTimeoutInterval" forKey:self->_timeoutInterval];
  }

  [v4 encodeObject:self->_clientIdentifier forKey:@"MPStoreModelRequestClientIdentifier"];
  [v4 encodeObject:self->_clientVersion forKey:@"MPStoreModelRequestClientVersion"];
  [v4 encodeObject:self->_clientPlatformIdentifier forKey:@"MPStoreModelRequestClientPlatformIdentifier"];
  [v4 encodeInteger:self->_authenticationOptions forKey:@"MPStoreModelRequestAuthenticationOptions"];
}

- (MPStoreModelRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MPStoreModelRequest;
  v5 = [(MPModelRequest *)&v14 initWithCoder:v4];
  if (v5)
  {
    if ([v4 containsValueForKey:@"MPStoreModelRequestTimeoutInterval"])
    {
      [v4 decodeDoubleForKey:@"MPStoreModelRequestTimeoutInterval"];
      v5->_timeoutInterval = v6;
    }

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPStoreModelRequestClientIdentifier"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPStoreModelRequestClientVersion"];
    clientVersion = v5->_clientVersion;
    v5->_clientVersion = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPStoreModelRequestClientPlatformIdentifier"];
    clientPlatformIdentifier = v5->_clientPlatformIdentifier;
    v5->_clientPlatformIdentifier = v11;

    if ([v4 containsValueForKey:@"MPStoreModelRequestAuthenticationOptions"])
    {
      v5->_authenticationOptions = [v4 decodeIntegerForKey:@"MPStoreModelRequestAuthenticationOptions"];
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