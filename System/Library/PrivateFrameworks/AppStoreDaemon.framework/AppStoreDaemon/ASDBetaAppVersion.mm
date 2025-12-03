@interface ASDBetaAppVersion
+ (ASDBetaAppVersion)versionWithBundleID:(id)d bundleVersion:(id)version andShortVersion:(id)shortVersion;
+ (ASDBetaAppVersion)versionWithBundleID:(id)d bundleVersion:(id)version platform:(int64_t)platform andShortVersion:(id)shortVersion;
- (ASDBetaAppVersion)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDBetaAppVersion

+ (ASDBetaAppVersion)versionWithBundleID:(id)d bundleVersion:(id)version andShortVersion:(id)shortVersion
{
  shortVersionCopy = shortVersion;
  versionCopy = version;
  dCopy = d;
  v11 = [self versionWithBundleID:dCopy bundleVersion:versionCopy platform:objc_msgSend(self andShortVersion:{"defaultPlatform"), shortVersionCopy}];

  return v11;
}

+ (ASDBetaAppVersion)versionWithBundleID:(id)d bundleVersion:(id)version platform:(int64_t)platform andShortVersion:(id)shortVersion
{
  dCopy = d;
  versionCopy = version;
  shortVersionCopy = shortVersion;
  v12 = objc_opt_new();
  v14 = v12;
  if (v12)
  {
    objc_setProperty_atomic_copy(v12, v13, dCopy, 8);
    objc_setProperty_atomic_copy(v14, v15, versionCopy, 16);
    v14[3] = platform;
    objc_setProperty_atomic_copy(v14, v16, shortVersionCopy, 32);
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
    bundleID = [(ASDBetaAppVersion *)equalCopy bundleID];
    LODWORD(bundleID) = [(NSString *)bundleID isEqualToString:bundleID];

    if (!bundleID)
    {
      goto LABEL_7;
    }

    bundleVersion = self->_bundleVersion;
    bundleVersion = [(ASDBetaAppVersion *)equalCopy bundleVersion];
    LODWORD(bundleVersion) = [(NSString *)bundleVersion isEqualToString:bundleVersion];

    if (!bundleVersion)
    {
      goto LABEL_7;
    }

    shortVersion = self->_shortVersion;
    shortVersion = [(ASDBetaAppVersion *)equalCopy shortVersion];
    LODWORD(shortVersion) = [(NSString *)shortVersion isEqual:shortVersion];

    if (shortVersion)
    {
      platform = self->_platform;
      v13 = platform == [(ASDBetaAppVersion *)equalCopy platform];
    }

    else
    {
LABEL_7:
      v13 = 0;
    }
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ASDBetaAppVersion allocWithZone:?]];
  objc_storeStrong(&v4->_bundleID, self->_bundleID);
  objc_storeStrong(&v4->_bundleVersion, self->_bundleVersion);
  v4->_platform = self->_platform;
  objc_storeStrong(&v4->_shortVersion, self->_shortVersion);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"A"];
  [coderCopy encodeObject:self->_bundleVersion forKey:@"B"];
  [coderCopy encodeInteger:self->_platform forKey:@"D"];
  [coderCopy encodeObject:self->_shortVersion forKey:@"C"];
}

- (ASDBetaAppVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ASDBetaAppVersion;
  v5 = [(ASDBetaAppVersion *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"A"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v8;

    v5->_platform = [coderCopy decodeIntegerForKey:@"D"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"C"];
    shortVersion = v5->_shortVersion;
    v5->_shortVersion = v10;
  }

  return v5;
}

@end