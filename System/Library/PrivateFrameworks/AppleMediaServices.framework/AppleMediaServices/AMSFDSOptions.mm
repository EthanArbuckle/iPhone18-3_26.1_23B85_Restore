@interface AMSFDSOptions
- (AMSFDSOptions)initWithCoder:(id)a3;
- (NSString)bundleIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSFDSOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_action;
  v6 = [(AMSProcessInfo *)self->_clientInfo copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  action = self->_action;
  v7 = a3;
  v6 = [v4 numberWithUnsignedInteger:action];
  [v7 encodeObject:v6 forKey:@"kCodingKeyAction"];

  [v7 encodeObject:self->_clientInfo forKey:@"kCodingKeyClientInfo"];
}

- (AMSFDSOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AMSFDSOptions;
  v5 = [(AMSFDSOptions *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAction"];
    v5->_action = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyClientInfo"];
    clientInfo = v5->_clientInfo;
    v5->_clientInfo = v7;
  }

  return v5;
}

- (NSString)bundleIdentifier
{
  v3 = [(AMSFDSOptions *)self clientInfo];
  v4 = [v3 proxyAppBundleID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(AMSFDSOptions *)self clientInfo];
    v6 = [v7 bundleIdentifier];
  }

  return v6;
}

@end