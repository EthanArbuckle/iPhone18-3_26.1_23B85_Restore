@interface ATXAppIdentity
+ (ATXAppIdentity)currentAppIdentity;
+ (id)descriptionForAppType:(unint64_t)type;
- (ATXAppIdentity)initWithBundleIdentifier:(id)identifier;
- (ATXAppIdentity)initWithBundleURL:(id)l;
- (ATXAppIdentity)initWithBundleURL:(id)l appType:(unint64_t)type;
- (ATXAppIdentity)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXAppIdentity:(id)identity;
- (id)_initWithBundleIdentifier:(id)identifier bundleURL:(id)l appType:(unint64_t)type;
- (id)bundleIDWithRelevantPrefix;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAppIdentity

- (id)_initWithBundleIdentifier:(id)identifier bundleURL:(id)l appType:(unint64_t)type
{
  identifierCopy = identifier;
  lCopy = l;
  v16.receiver = self;
  v16.super_class = ATXAppIdentity;
  v10 = [(ATXAppIdentity *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;

    v13 = [lCopy copy];
    bundleURL = v10->_bundleURL;
    v10->_bundleURL = v13;

    v10->_appType = type;
  }

  return v10;
}

- (ATXAppIdentity)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (ATXIsRemoteAppBundleId())
  {
    v5 = ATXBundleIdForRemoteBundleId();

    v6 = 1;
    identifierCopy = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(ATXAppIdentity *)self _initWithBundleIdentifier:identifierCopy bundleURL:0 appType:v6];

  return v7;
}

- (ATXAppIdentity)initWithBundleURL:(id)l
{
  v4 = MEMORY[0x1E696AAE8];
  lCopy = l;
  v6 = [v4 bundleWithURL:lCopy];
  bundleIdentifier = [v6 bundleIdentifier];
  v8 = [(ATXAppIdentity *)self _initWithBundleIdentifier:bundleIdentifier bundleURL:lCopy appType:0];

  return v8;
}

- (ATXAppIdentity)initWithBundleURL:(id)l appType:(unint64_t)type
{
  v6 = MEMORY[0x1E696AAE8];
  lCopy = l;
  v8 = [v6 bundleWithURL:lCopy];
  bundleIdentifier = [v8 bundleIdentifier];
  v10 = [(ATXAppIdentity *)self _initWithBundleIdentifier:bundleIdentifier bundleURL:lCopy appType:type];

  return v10;
}

+ (ATXAppIdentity)currentAppIdentity
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [self alloc];
  bundleIdentifier = [mainBundle bundleIdentifier];
  bundleURL = [mainBundle bundleURL];
  v7 = [v4 _initWithBundleIdentifier:bundleIdentifier bundleURL:bundleURL appType:0];

  return v7;
}

- (unint64_t)hash
{
  bundleIdentifier = [(ATXAppIdentity *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];

  bundleURL = [(ATXAppIdentity *)self bundleURL];
  v6 = [bundleURL hash] - v4 + 32 * v4;

  return [(ATXAppIdentity *)self appType]- v6 + 32 * v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAppIdentity *)self isEqualToATXAppIdentity:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAppIdentity:(id)identity
{
  identityCopy = identity;
  v5 = self->_bundleIdentifier;
  v6 = v5;
  if (v5 == identityCopy[1])
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
  if (v8 == identityCopy[2])
  {

    goto LABEL_9;
  }

  v10 = [(NSURL *)v8 isEqual:?];

  if (v10)
  {
LABEL_9:
    v11 = self->_appType == identityCopy[3];
    goto LABEL_10;
  }

LABEL_7:
  v11 = 0;
LABEL_10:

  return v11;
}

- (id)description
{
  bundleIdentifier = [(ATXAppIdentity *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    bundleIdentifier2 = [(ATXAppIdentity *)self bundleIdentifier];
  }

  else
  {
    bundleURL = [(ATXAppIdentity *)self bundleURL];
    bundleIdentifier2 = [bundleURL path];
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = [objc_opt_class() descriptionForAppType:{-[ATXAppIdentity appType](self, "appType")}];
  v8 = [v6 stringWithFormat:@"ATXAppIdentity %@, type: %@", bundleIdentifier2, v7];;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXAppIdentity allocWithZone:zone];
  bundleIdentifier = self->_bundleIdentifier;
  bundleURL = self->_bundleURL;
  appType = self->_appType;

  return [(ATXAppIdentity *)v4 _initWithBundleIdentifier:bundleIdentifier bundleURL:bundleURL appType:appType];
}

- (id)bundleIDWithRelevantPrefix
{
  appType = [(ATXAppIdentity *)self appType];
  bundleIdentifier = [(ATXAppIdentity *)self bundleIdentifier];
  if (appType == 1)
  {
    v5 = ATXRemoteBundleIdForBundleId();

    bundleIdentifier = v5;
  }

  return bundleIdentifier;
}

- (ATXAppIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ATXAppIdentity;
  v5 = [(ATXAppIdentity *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v5->_appType = [coderCopy decodeInt32ForKey:@"appType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleURL = self->_bundleURL;
  coderCopy = coder;
  [coderCopy encodeObject:bundleURL forKey:@"bundleURL"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleID"];
  [coderCopy encodeInt32:LODWORD(self->_appType) forKey:@"appType"];
}

+ (id)descriptionForAppType:(unint64_t)type
{
  if (type > 2)
  {
    return @"Unknown app type";
  }

  else
  {
    return off_1E80C0838[type];
  }
}

@end