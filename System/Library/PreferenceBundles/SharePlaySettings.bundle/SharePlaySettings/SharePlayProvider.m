@interface SharePlayProvider
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToProvider:(id)a3;
- (SharePlayProvider)initWithBundleIdentifier:(id)a3;
- (SharePlayProvider)initWithCoder:(id)a3;
- (SharePlayProvider)initWithProvider:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SharePlayProvider

- (SharePlayProvider)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SharePlayProvider;
  v5 = [(SharePlayProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (SharePlayProvider)initWithProvider:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SharePlayProvider;
  v5 = [(SharePlayProvider *)&v11 init];
  if (v5)
  {
    v6 = [*(v4 + 2) copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v5->_enabled = *(v4 + 8);
    v8 = [*(v4 + 3) copy];
    localizedName = v5->_localizedName;
    v5->_localizedName = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SharePlayProvider allocWithZone:a3];

  return [(SharePlayProvider *)v4 initWithProvider:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SharePlayMutableProvider allocWithZone:a3];

  return [(SharePlayProvider *)v4 initWithProvider:self];
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  v6 = NSStringFromSelector("bundleIdentifier");
  [v5 encodeObject:bundleIdentifier forKey:v6];

  enabled = self->_enabled;
  v8 = NSStringFromSelector("isEnabled");
  [v5 encodeBool:enabled forKey:v8];

  localizedName = self->_localizedName;
  v10 = NSStringFromSelector("localizedName");
  [v5 encodeObject:localizedName forKey:v10];
}

- (SharePlayProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SharePlayProvider;
  v5 = [(SharePlayProvider *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("bundleIdentifier");
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = NSStringFromSelector("isEnabled");
    v5->_enabled = [v4 decodeBoolForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector("localizedName");
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
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
  v5 = [(SharePlayProvider *)self bundleIdentifier];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector("localizedName");
  v7 = [(SharePlayProvider *)self localizedName];
  [v3 appendFormat:@"%@=%@", v6, v7];

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
  v5 = [(SharePlayProvider *)self bundleIdentifier];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector("enabled");
  [v3 appendFormat:@"%@=%lu", v6, -[SharePlayProvider isEnabled](self, "isEnabled")];

  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SharePlayProvider *)self isEqualToProvider:v4];
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
  v3 = [(SharePlayProvider *)self bundleIdentifier];
  v4 = [v3 hash];
  if ([(SharePlayProvider *)self isEnabled])
  {
    v5 = 1231;
  }

  else
  {
    v5 = 1237;
  }

  v6 = [(SharePlayProvider *)self localizedName];
  v7 = v4 ^ [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqualToProvider:(id)a3
{
  v4 = a3;
  v5 = [(SharePlayProvider *)self isEnabled];
  if (v5 == [v4 isEnabled])
  {
    v7 = [(SharePlayProvider *)self bundleIdentifier];
    v8 = [v4 bundleIdentifier];
    if (TUStringsAreEqualOrNil())
    {
      v9 = [(SharePlayProvider *)self localizedName];
      v10 = [v4 localizedName];
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