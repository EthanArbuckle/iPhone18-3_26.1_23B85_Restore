@interface SKCloudServiceSetupReloadContext
- (BOOL)isEqual:(id)a3;
- (NSDictionary)userInfo;
- (SKCloudServiceSetupReloadContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation SKCloudServiceSetupReloadContext

- (NSDictionary)userInfo
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v4 = [(NSString *)self->_serializedUserInfo dataUsingEncoding:4];
    if (v4)
    {
      v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:0];
      v6 = self->_userInfo;
      self->_userInfo = v5;
    }

    userInfo = self->_userInfo;
  }

  return userInfo;
}

- (void)setUserInfo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (v4)
  {
    v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:0];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  serializedUserInfo = self->_serializedUserInfo;
  if (serializedUserInfo != v6 && ![(NSString *)serializedUserInfo isEqualToString:v6])
  {
    v8 = [(NSString *)v6 copy];
    v9 = self->_serializedUserInfo;
    self->_serializedUserInfo = v8;

    v10 = [v12 copy];
    userInfo = self->_userInfo;
    self->_userInfo = v10;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  if (self->_cloudServiceSetupURL)
  {
    [v6 appendFormat:@"; cloudServiceSetupURL = %@", self->_cloudServiceSetupURL];
  }

  if (self->_action)
  {
    [v6 appendFormat:@"; action = %@", self->_action];
  }

  if ([(NSArray *)self->_queryItems count])
  {
    [v6 appendFormat:@"; has queryItems"];
  }

  if (self->_sourceApplicationBundleIdentifier)
  {
    [v6 appendFormat:@"; sourceApplicationBundleIdentifier = %@", self->_sourceApplicationBundleIdentifier];
  }

  if (self->_referrerURL)
  {
    [v6 appendFormat:@"; referrerURL = %@", self->_referrerURL];
  }

  if (self->_serializedUserInfo)
  {
    [v6 appendFormat:@"; has userInfo"];
  }

  [v6 appendString:@">"];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_cloudServiceSetupURL hash];
  v4 = [(NSString *)self->_action hash]^ v3;
  v5 = [(NSArray *)self->_queryItems hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_sourceApplicationBundleIdentifier hash];
  v7 = [(NSURL *)self->_referrerURL hash];
  return v6 ^ v7 ^ [(NSString *)self->_serializedUserInfo hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      cloudServiceSetupURL = self->_cloudServiceSetupURL;
      if ((cloudServiceSetupURL == v5->_cloudServiceSetupURL || [(NSURL *)cloudServiceSetupURL isEqual:?]) && ((action = self->_action, action == v5->_action) || [(NSString *)action isEqualToString:?]) && ((queryItems = self->_queryItems, queryItems == v5->_queryItems) || [(NSArray *)queryItems isEqualToArray:?]) && ((sourceApplicationBundleIdentifier = self->_sourceApplicationBundleIdentifier, sourceApplicationBundleIdentifier == v5->_sourceApplicationBundleIdentifier) || [(NSString *)sourceApplicationBundleIdentifier isEqualToString:?]) && ((referrerURL = self->_referrerURL, referrerURL == v5->_referrerURL) || [(NSURL *)referrerURL isEqual:?]))
      {
        serializedUserInfo = self->_serializedUserInfo;
        if (serializedUserInfo == v5->_serializedUserInfo)
        {
          v12 = 1;
        }

        else
        {
          v12 = [(NSString *)serializedUserInfo isEqualToString:?];
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 2, self->_cloudServiceSetupURL);
  objc_storeStrong(v4 + 3, self->_action);
  v5 = [(NSArray *)self->_queryItems copy];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [(NSString *)self->_sourceApplicationBundleIdentifier copy];
  v8 = v4[5];
  v4[5] = v7;

  objc_storeStrong(v4 + 6, self->_referrerURL);
  v9 = [(NSString *)self->_serializedUserInfo copy];
  v10 = v4[7];
  v4[7] = v9;

  return v4;
}

- (SKCloudServiceSetupReloadContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SKCloudServiceSetupReloadContext *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudServiceSetupURL"];
    cloudServiceSetupURL = v5->_cloudServiceSetupURL;
    v5->_cloudServiceSetupURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    v9 = [v8 copy];
    action = v5->_action;
    v5->_action = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"queryItems"];
    v15 = [v14 copy];
    queryItems = v5->_queryItems;
    v5->_queryItems = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceApplicationBundleIdentifier"];
    v18 = [v17 copy];
    sourceApplicationBundleIdentifier = v5->_sourceApplicationBundleIdentifier;
    v5->_sourceApplicationBundleIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrerURL"];
    referrerURL = v5->_referrerURL;
    v5->_referrerURL = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serializedUserInfo"];
    v23 = [v22 copy];
    serializedUserInfo = v5->_serializedUserInfo;
    v5->_serializedUserInfo = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  cloudServiceSetupURL = self->_cloudServiceSetupURL;
  v5 = a3;
  [v5 encodeObject:cloudServiceSetupURL forKey:@"cloudServiceSetupURL"];
  [v5 encodeObject:self->_action forKey:@"action"];
  [v5 encodeObject:self->_queryItems forKey:@"queryItems"];
  [v5 encodeObject:self->_sourceApplicationBundleIdentifier forKey:@"sourceApplicationBundleIdentifier"];
  [v5 encodeObject:self->_referrerURL forKey:@"referrerURL"];
  [v5 encodeObject:self->_serializedUserInfo forKey:@"serializedUserInfo"];
}

@end