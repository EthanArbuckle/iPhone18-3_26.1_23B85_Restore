@interface SharePlayProvider
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToProvider:(id)provider;
- (SharePlayProvider)initWithBundleIdentifier:(id)identifier;
- (SharePlayProvider)initWithCoder:(id)coder;
- (SharePlayProvider)initWithProvider:(id)provider;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SharePlayProvider

- (SharePlayProvider)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SharePlayProvider;
  v5 = [(SharePlayProvider *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (SharePlayProvider)initWithProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = SharePlayProvider;
  v5 = [(SharePlayProvider *)&v11 init];
  if (v5)
  {
    v6 = [*(providerCopy + 2) copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v5->_enabled = *(providerCopy + 8);
    v8 = [*(providerCopy + 3) copy];
    localizedName = v5->_localizedName;
    v5->_localizedName = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SharePlayProvider allocWithZone:zone];

  return [(SharePlayProvider *)v4 initWithProvider:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SharePlayMutableProvider allocWithZone:zone];

  return [(SharePlayProvider *)v4 initWithProvider:self];
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  v6 = NSStringFromSelector("bundleIdentifier");
  [coderCopy encodeObject:bundleIdentifier forKey:v6];

  enabled = self->_enabled;
  v8 = NSStringFromSelector("isEnabled");
  [coderCopy encodeBool:enabled forKey:v8];

  localizedName = self->_localizedName;
  v10 = NSStringFromSelector("localizedName");
  [coderCopy encodeObject:localizedName forKey:v10];
}

- (SharePlayProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SharePlayProvider;
  v5 = [(SharePlayProvider *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("bundleIdentifier");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = NSStringFromSelector("isEnabled");
    v5->_enabled = [coderCopy decodeBoolForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector("localizedName");
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    localizedName = v5->_localizedName;
    v5->_localizedName = v13;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector("bundleIdentifier");
  bundleIdentifier = [(SharePlayProvider *)self bundleIdentifier];
  [v3 appendFormat:@"%@=%@", v4, bundleIdentifier];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector("localizedName");
  localizedName = [(SharePlayProvider *)self localizedName];
  [v3 appendFormat:@"%@=%@", v6, localizedName];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector("enabled");
  [v3 appendFormat:@"%@=%lu", v8, -[SharePlayProvider isEnabled](self, "isEnabled")];

  [v3 appendFormat:@">"];
  v9 = [v3 copy];

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector("bundleIdentifier");
  bundleIdentifier = [(SharePlayProvider *)self bundleIdentifier];
  [v3 appendFormat:@"%@=%@", v4, bundleIdentifier];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector("enabled");
  [v3 appendFormat:@"%@=%lu", v6, -[SharePlayProvider isEnabled](self, "isEnabled")];

  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SharePlayProvider *)self isEqualToProvider:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  bundleIdentifier = [(SharePlayProvider *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  if ([(SharePlayProvider *)self isEnabled])
  {
    v5 = 1231;
  }

  else
  {
    v5 = 1237;
  }

  localizedName = [(SharePlayProvider *)self localizedName];
  v7 = v4 ^ [localizedName hash];

  return v5 ^ v7;
}

- (BOOL)isEqualToProvider:(id)provider
{
  providerCopy = provider;
  isEnabled = [(SharePlayProvider *)self isEnabled];
  if (isEnabled == [providerCopy isEnabled])
  {
    bundleIdentifier = [(SharePlayProvider *)self bundleIdentifier];
    bundleIdentifier2 = [providerCopy bundleIdentifier];
    if (TUStringsAreEqualOrNil())
    {
      localizedName = [(SharePlayProvider *)self localizedName];
      localizedName2 = [providerCopy localizedName];
      v6 = TUStringsAreEqualOrNil();
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end