@interface ASDPurgeAppsResponse
- (ASDPurgeAppsResponse)initWithCoder:(id)coder;
- (ASDPurgeAppsResponse)initWithError:(id)error;
- (ASDPurgeAppsResponse)initWithPurgedSize:(int64_t)size purgedApps:(id)apps;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDPurgeAppsResponse

- (ASDPurgeAppsResponse)initWithPurgedSize:(int64_t)size purgedApps:(id)apps
{
  appsCopy = apps;
  v11.receiver = self;
  v11.super_class = ASDPurgeAppsResponse;
  v8 = [(ASDRequestResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_purgedApps, apps);
    v9->_purgedSize = size;
  }

  return v9;
}

- (ASDPurgeAppsResponse)initWithError:(id)error
{
  v7.receiver = self;
  v7.super_class = ASDPurgeAppsResponse;
  v3 = [(ASDRequestResponse *)&v7 initWithError:error];
  v4 = v3;
  if (v3)
  {
    purgedApps = v3->_purgedApps;
    v3->_purgedApps = MEMORY[0x1E695E0F0];

    v4->_purgedSize = 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = ASDPurgeAppsResponse;
  v5 = [(ASDRequestResponse *)&v9 copyWithZone:?];
  v6 = [(NSArray *)self->_purgedApps copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v5[2] = self->_purgedSize;
  return v5;
}

- (ASDPurgeAppsResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ASDPurgeAppsResponse;
  v5 = [(ASDRequestResponse *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"purgedApps"];
    purgedApps = v5->_purgedApps;
    v5->_purgedApps = v9;

    v5->_purgedSize = [coderCopy decodeInt64ForKey:@"purgedSize"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ASDPurgeAppsResponse;
  coderCopy = coder;
  [(ASDRequestResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(ASDPurgeAppsResponse *)self purgedApps:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"purgedApps"];

  [coderCopy encodeInt64:-[ASDPurgeAppsResponse purgedSize](self forKey:{"purgedSize"), @"purgedSize"}];
}

@end