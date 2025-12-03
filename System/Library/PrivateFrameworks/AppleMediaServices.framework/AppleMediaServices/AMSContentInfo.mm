@interface AMSContentInfo
- (AMSContentInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSContentInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cacheKey = [(AMSContentInfo *)self cacheKey];
  [coderCopy encodeObject:cacheKey forKey:@"cacheKey"];

  created = [(AMSContentInfo *)self created];
  [coderCopy encodeObject:created forKey:@"created"];

  expires = [(AMSContentInfo *)self expires];
  [coderCopy encodeObject:expires forKey:@"expires"];

  path = [(AMSContentInfo *)self path];
  [coderCopy encodeObject:path forKey:@"path"];

  version = [(AMSContentInfo *)self version];
  [coderCopy encodeObject:version forKey:@"version"];
}

- (AMSContentInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = AMSContentInfo;
  v5 = [(AMSContentInfo *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cacheKey"];
    cacheKey = v5->_cacheKey;
    v5->_cacheKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"created"];
    created = v5->_created;
    v5->_created = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expires"];
    expires = v5->_expires;
    v5->_expires = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v14;
  }

  return v5;
}

@end