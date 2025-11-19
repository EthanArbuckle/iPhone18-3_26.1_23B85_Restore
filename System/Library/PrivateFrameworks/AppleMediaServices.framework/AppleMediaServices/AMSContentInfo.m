@interface AMSContentInfo
- (AMSContentInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSContentInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSContentInfo *)self cacheKey];
  [v4 encodeObject:v5 forKey:@"cacheKey"];

  v6 = [(AMSContentInfo *)self created];
  [v4 encodeObject:v6 forKey:@"created"];

  v7 = [(AMSContentInfo *)self expires];
  [v4 encodeObject:v7 forKey:@"expires"];

  v8 = [(AMSContentInfo *)self path];
  [v4 encodeObject:v8 forKey:@"path"];

  v9 = [(AMSContentInfo *)self version];
  [v4 encodeObject:v9 forKey:@"version"];
}

- (AMSContentInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = AMSContentInfo;
  v5 = [(AMSContentInfo *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cacheKey"];
    cacheKey = v5->_cacheKey;
    v5->_cacheKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"created"];
    created = v5->_created;
    v5->_created = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expires"];
    expires = v5->_expires;
    v5->_expires = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v14;
  }

  return v5;
}

@end