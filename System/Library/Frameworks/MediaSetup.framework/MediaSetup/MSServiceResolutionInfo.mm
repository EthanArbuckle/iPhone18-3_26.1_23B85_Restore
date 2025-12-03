@interface MSServiceResolutionInfo
- (MSServiceResolutionInfo)initWithCoder:(id)coder;
- (MSServiceResolutionInfo)initWithServiceAppInfo:(id)info userAccountInfo:(id)accountInfo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSServiceResolutionInfo

- (MSServiceResolutionInfo)initWithServiceAppInfo:(id)info userAccountInfo:(id)accountInfo
{
  infoCopy = info;
  accountInfoCopy = accountInfo;
  v13.receiver = self;
  v13.super_class = MSServiceResolutionInfo;
  v9 = [(MSServiceResolutionInfo *)&v13 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (infoCopy && accountInfoCopy)
  {
    objc_storeStrong(&v9->_serviceAppInfo, info);
    objc_storeStrong(p_isa + 2, accountInfo);
LABEL_5:
    v11 = p_isa;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  serviceAppInfo = self->_serviceAppInfo;
  coderCopy = coder;
  [coderCopy encodeObject:serviceAppInfo forKey:@"MSSRAppInfoEncodedKey"];
  [coderCopy encodeObject:self->_userAccountInfo forKey:@"MSSRUserAccountEncodedKey"];
}

- (MSServiceResolutionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSRAppInfoEncodedKey"];
  serviceAppInfo = self->_serviceAppInfo;
  self->_serviceAppInfo = v5;

  if (self->_serviceAppInfo && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSSRUserAccountEncodedKey"], v7 = objc_claimAutoreleasedReturnValue(), userAccountInfo = self->_userAccountInfo, self->_userAccountInfo = v7, userAccountInfo, self->_userAccountInfo))
  {
    self = [(MSServiceResolutionInfo *)self initWithServiceAppInfo:self->_serviceAppInfo userAccountInfo:?];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end