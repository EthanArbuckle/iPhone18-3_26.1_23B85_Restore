@interface ASDPurgeableAppResponse
- (ASDPurgeableAppResponse)initWithCoder:(id)coder;
- (ASDPurgeableAppResponse)initWithError:(id)error;
- (ASDPurgeableAppResponse)initWithPurgeableSize:(int64_t)size purgeableApps:(id)apps;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDPurgeableAppResponse

- (ASDPurgeableAppResponse)initWithPurgeableSize:(int64_t)size purgeableApps:(id)apps
{
  appsCopy = apps;
  v11.receiver = self;
  v11.super_class = ASDPurgeableAppResponse;
  v8 = [(ASDRequestResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_purgeableApps, apps);
    v9->_purgeableSize = size;
  }

  return v9;
}

- (ASDPurgeableAppResponse)initWithError:(id)error
{
  v7.receiver = self;
  v7.super_class = ASDPurgeableAppResponse;
  v3 = [(ASDRequestResponse *)&v7 initWithError:error];
  v4 = v3;
  if (v3)
  {
    purgeableApps = v3->_purgeableApps;
    v3->_purgeableApps = MEMORY[0x1E695E0F0];

    v4->_purgeableSize = 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSArray *)self->_purgeableApps copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v5[2] = self->_purgeableSize;
  return v5;
}

- (ASDPurgeableAppResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ASDPurgeableAppResponse;
  v5 = [(ASDRequestResponse *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"purgeableApps"];
    purgeableApps = v5->_purgeableApps;
    v5->_purgeableApps = v9;

    v5->_purgeableSize = [coderCopy decodeInt64ForKey:@"purgeableSize"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ASDPurgeableAppResponse;
  coderCopy = coder;
  [(ASDRequestResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(ASDPurgeableAppResponse *)self purgeableApps:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"purgeableApps"];

  [coderCopy encodeInt64:-[ASDPurgeableAppResponse purgeableSize](self forKey:{"purgeableSize"), @"purgeableSize"}];
}

@end