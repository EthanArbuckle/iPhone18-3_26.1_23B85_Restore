@interface ATXAppIdentity
+ (ATXAppIdentity)currentAppIdentity;
+ (id)descriptionForAppType:(unint64_t)a3;
- (ATXAppIdentity)initWithBundleIdentifier:(id)a3;
- (ATXAppIdentity)initWithBundleURL:(id)a3;
- (ATXAppIdentity)initWithBundleURL:(id)a3 appType:(unint64_t)a4;
- (ATXAppIdentity)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXAppIdentity:(id)a3;
- (id)_initWithBundleIdentifier:(id)a3 bundleURL:(id)a4 appType:(unint64_t)a5;
- (id)bundleIDWithRelevantPrefix;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAppIdentity

- (id)_initWithBundleIdentifier:(id)a3 bundleURL:(id)a4 appType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = ATXAppIdentity;
  v10 = [(ATXAppIdentity *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;

    v13 = [v9 copy];
    bundleURL = v10->_bundleURL;
    v10->_bundleURL = v13;

    v10->_appType = a5;
  }

  return v10;
}

- (ATXAppIdentity)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  if (ATXIsRemoteAppBundleId())
  {
    v5 = ATXBundleIdForRemoteBundleId();

    v6 = 1;
    v4 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(ATXAppIdentity *)self _initWithBundleIdentifier:v4 bundleURL:0 appType:v6];

  return v7;
}

- (ATXAppIdentity)initWithBundleURL:(id)a3
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 bundleWithURL:v5];
  v7 = [v6 bundleIdentifier];
  v8 = [(ATXAppIdentity *)self _initWithBundleIdentifier:v7 bundleURL:v5 appType:0];

  return v8;
}

- (ATXAppIdentity)initWithBundleURL:(id)a3 appType:(unint64_t)a4
{
  v6 = MEMORY[0x1E696AAE8];
  v7 = a3;
  v8 = [v6 bundleWithURL:v7];
  v9 = [v8 bundleIdentifier];
  v10 = [(ATXAppIdentity *)self _initWithBundleIdentifier:v9 bundleURL:v7 appType:a4];

  return v10;
}

+ (ATXAppIdentity)currentAppIdentity
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [a1 alloc];
  v5 = [v3 bundleIdentifier];
  v6 = [v3 bundleURL];
  v7 = [v4 _initWithBundleIdentifier:v5 bundleURL:v6 appType:0];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(ATXAppIdentity *)self bundleIdentifier];
  v4 = [v3 hash];

  v5 = [(ATXAppIdentity *)self bundleURL];
  v6 = [v5 hash] - v4 + 32 * v4;

  return [(ATXAppIdentity *)self appType]- v6 + 32 * v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAppIdentity *)self isEqualToATXAppIdentity:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAppIdentity:(id)a3
{
  v4 = a3;
  v5 = self->_bundleIdentifier;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = self->_bundleURL;
  v9 = v8;
  if (v8 == v4[2])
  {

    goto LABEL_9;
  }

  v10 = [(NSURL *)v8 isEqual:?];

  if (v10)
  {
LABEL_9:
    v11 = self->_appType == v4[3];
    goto LABEL_10;
  }

LABEL_7:
  v11 = 0;
LABEL_10:

  return v11;
}

- (id)description
{
  v3 = [(ATXAppIdentity *)self bundleIdentifier];
  if (v3)
  {
    v4 = [(ATXAppIdentity *)self bundleIdentifier];
  }

  else
  {
    v5 = [(ATXAppIdentity *)self bundleURL];
    v4 = [v5 path];
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [objc_opt_class() descriptionForAppType:{-[ATXAppIdentity appType](self, "appType")}];
  v8 = [v6 stringWithFormat:@"ATXAppIdentity %@, type: %@", v4, v7];;

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXAppIdentity allocWithZone:a3];
  bundleIdentifier = self->_bundleIdentifier;
  bundleURL = self->_bundleURL;
  appType = self->_appType;

  return [(ATXAppIdentity *)v4 _initWithBundleIdentifier:bundleIdentifier bundleURL:bundleURL appType:appType];
}

- (id)bundleIDWithRelevantPrefix
{
  v3 = [(ATXAppIdentity *)self appType];
  v4 = [(ATXAppIdentity *)self bundleIdentifier];
  if (v3 == 1)
  {
    v5 = ATXRemoteBundleIdForBundleId();

    v4 = v5;
  }

  return v4;
}

- (ATXAppIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXAppIdentity;
  v5 = [(ATXAppIdentity *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v5->_appType = [v4 decodeInt32ForKey:@"appType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleURL = self->_bundleURL;
  v5 = a3;
  [v5 encodeObject:bundleURL forKey:@"bundleURL"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleID"];
  [v5 encodeInt32:LODWORD(self->_appType) forKey:@"appType"];
}

+ (id)descriptionForAppType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Unknown app type";
  }

  else
  {
    return off_1E80C0838[a3];
  }
}

@end