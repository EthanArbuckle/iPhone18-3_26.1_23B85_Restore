@interface MSServiceResolutionInfo
- (MSServiceResolutionInfo)initWithCoder:(id)a3;
- (MSServiceResolutionInfo)initWithServiceAppInfo:(id)a3 userAccountInfo:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSServiceResolutionInfo

- (MSServiceResolutionInfo)initWithServiceAppInfo:(id)a3 userAccountInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MSServiceResolutionInfo;
  v9 = [(MSServiceResolutionInfo *)&v13 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (v7 && v8)
  {
    objc_storeStrong(&v9->_serviceAppInfo, a3);
    objc_storeStrong(p_isa + 2, a4);
LABEL_5:
    v11 = p_isa;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  serviceAppInfo = self->_serviceAppInfo;
  v5 = a3;
  [v5 encodeObject:serviceAppInfo forKey:@"MSSRAppInfoEncodedKey"];
  [v5 encodeObject:self->_userAccountInfo forKey:@"MSSRUserAccountEncodedKey"];
}

- (MSServiceResolutionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSRAppInfoEncodedKey"];
  serviceAppInfo = self->_serviceAppInfo;
  self->_serviceAppInfo = v5;

  if (self->_serviceAppInfo && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSSRUserAccountEncodedKey"], v7 = objc_claimAutoreleasedReturnValue(), userAccountInfo = self->_userAccountInfo, self->_userAccountInfo = v7, userAccountInfo, self->_userAccountInfo))
  {
    self = [(MSServiceResolutionInfo *)self initWithServiceAppInfo:self->_serviceAppInfo userAccountInfo:?];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end