@interface AMSFDSOptions
- (AMSFDSOptions)initWithCoder:(id)coder;
- (NSString)bundleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSFDSOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_action;
  v6 = [(AMSProcessInfo *)self->_clientInfo copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  action = self->_action;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:action];
  [coderCopy encodeObject:v6 forKey:@"kCodingKeyAction"];

  [coderCopy encodeObject:self->_clientInfo forKey:@"kCodingKeyClientInfo"];
}

- (AMSFDSOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AMSFDSOptions;
  v5 = [(AMSFDSOptions *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAction"];
    v5->_action = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyClientInfo"];
    clientInfo = v5->_clientInfo;
    v5->_clientInfo = v7;
  }

  return v5;
}

- (NSString)bundleIdentifier
{
  clientInfo = [(AMSFDSOptions *)self clientInfo];
  proxyAppBundleID = [clientInfo proxyAppBundleID];
  v5 = proxyAppBundleID;
  if (proxyAppBundleID)
  {
    bundleIdentifier = proxyAppBundleID;
  }

  else
  {
    clientInfo2 = [(AMSFDSOptions *)self clientInfo];
    bundleIdentifier = [clientInfo2 bundleIdentifier];
  }

  return bundleIdentifier;
}

@end