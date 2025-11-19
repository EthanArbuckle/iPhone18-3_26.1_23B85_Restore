@interface ASDBetaAppVersion
+ (ASDBetaAppVersion)versionWithBundleID:(id)a3 bundleVersion:(id)a4 andShortVersion:(id)a5;
+ (ASDBetaAppVersion)versionWithBundleID:(id)a3 bundleVersion:(id)a4 platform:(int64_t)a5 andShortVersion:(id)a6;
- (ASDBetaAppVersion)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDBetaAppVersion

+ (ASDBetaAppVersion)versionWithBundleID:(id)a3 bundleVersion:(id)a4 andShortVersion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 versionWithBundleID:v10 bundleVersion:v9 platform:objc_msgSend(a1 andShortVersion:{"defaultPlatform"), v8}];

  return v11;
}

+ (ASDBetaAppVersion)versionWithBundleID:(id)a3 bundleVersion:(id)a4 platform:(int64_t)a5 andShortVersion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_opt_new();
  v14 = v12;
  if (v12)
  {
    objc_setProperty_atomic_copy(v12, v13, v9, 8);
    objc_setProperty_atomic_copy(v14, v15, v10, 16);
    v14[3] = a5;
    objc_setProperty_atomic_copy(v14, v16, v11, 32);
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class())
    {
      goto LABEL_7;
    }

    bundleID = self->_bundleID;
    v7 = [(ASDBetaAppVersion *)v4 bundleID];
    LODWORD(bundleID) = [(NSString *)bundleID isEqualToString:v7];

    if (!bundleID)
    {
      goto LABEL_7;
    }

    bundleVersion = self->_bundleVersion;
    v9 = [(ASDBetaAppVersion *)v4 bundleVersion];
    LODWORD(bundleVersion) = [(NSString *)bundleVersion isEqualToString:v9];

    if (!bundleVersion)
    {
      goto LABEL_7;
    }

    shortVersion = self->_shortVersion;
    v11 = [(ASDBetaAppVersion *)v4 shortVersion];
    LODWORD(shortVersion) = [(NSString *)shortVersion isEqual:v11];

    if (shortVersion)
    {
      platform = self->_platform;
      v13 = platform == [(ASDBetaAppVersion *)v4 platform];
    }

    else
    {
LABEL_7:
      v13 = 0;
    }
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ASDBetaAppVersion allocWithZone:?]];
  objc_storeStrong(&v4->_bundleID, self->_bundleID);
  objc_storeStrong(&v4->_bundleVersion, self->_bundleVersion);
  v4->_platform = self->_platform;
  objc_storeStrong(&v4->_shortVersion, self->_shortVersion);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"A"];
  [v5 encodeObject:self->_bundleVersion forKey:@"B"];
  [v5 encodeInteger:self->_platform forKey:@"D"];
  [v5 encodeObject:self->_shortVersion forKey:@"C"];
}

- (ASDBetaAppVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASDBetaAppVersion;
  v5 = [(ASDBetaAppVersion *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v8;

    v5->_platform = [v4 decodeIntegerForKey:@"D"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"C"];
    shortVersion = v5->_shortVersion;
    v5->_shortVersion = v10;
  }

  return v5;
}

@end