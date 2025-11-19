@interface ASDPurgeAppsResponse
- (ASDPurgeAppsResponse)initWithCoder:(id)a3;
- (ASDPurgeAppsResponse)initWithError:(id)a3;
- (ASDPurgeAppsResponse)initWithPurgedSize:(int64_t)a3 purgedApps:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDPurgeAppsResponse

- (ASDPurgeAppsResponse)initWithPurgedSize:(int64_t)a3 purgedApps:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ASDPurgeAppsResponse;
  v8 = [(ASDRequestResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_purgedApps, a4);
    v9->_purgedSize = a3;
  }

  return v9;
}

- (ASDPurgeAppsResponse)initWithError:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASDPurgeAppsResponse;
  v3 = [(ASDRequestResponse *)&v7 initWithError:a3];
  v4 = v3;
  if (v3)
  {
    purgedApps = v3->_purgedApps;
    v3->_purgedApps = MEMORY[0x1E695E0F0];

    v4->_purgedSize = 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = ASDPurgeAppsResponse;
  v5 = [(ASDRequestResponse *)&v9 copyWithZone:?];
  v6 = [(NSArray *)self->_purgedApps copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v5[2] = self->_purgedSize;
  return v5;
}

- (ASDPurgeAppsResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ASDPurgeAppsResponse;
  v5 = [(ASDRequestResponse *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"purgedApps"];
    purgedApps = v5->_purgedApps;
    v5->_purgedApps = v9;

    v5->_purgedSize = [v4 decodeInt64ForKey:@"purgedSize"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ASDPurgeAppsResponse;
  v4 = a3;
  [(ASDRequestResponse *)&v6 encodeWithCoder:v4];
  v5 = [(ASDPurgeAppsResponse *)self purgedApps:v6.receiver];
  [v4 encodeObject:v5 forKey:@"purgedApps"];

  [v4 encodeInt64:-[ASDPurgeAppsResponse purgedSize](self forKey:{"purgedSize"), @"purgedSize"}];
}

@end