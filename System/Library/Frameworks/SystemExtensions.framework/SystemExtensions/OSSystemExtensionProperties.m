@interface OSSystemExtensionProperties
- (OSSystemExtensionProperties)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OSSystemExtensionProperties

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(OSSystemExtensionProperties *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  [v4 encodeBool:-[OSSystemExtensionProperties isEnabled](self forKey:{"isEnabled"), @"isEnabled"}];
  v6 = [(OSSystemExtensionProperties *)self displayName];
  [v4 encodeObject:v6 forKey:@"displayName"];

  v7 = [(OSSystemExtensionProperties *)self usageDescription];
  [v4 encodeObject:v7 forKey:@"usageDescription"];
}

- (OSSystemExtensionProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = OSSystemExtensionProperties;
  v5 = [(OSSystemExtensionProperties *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    [(OSSystemExtensionProperties *)v5 setBundleIdentifier:v6];

    -[OSSystemExtensionProperties setIsEnabled:](v5, "setIsEnabled:", [v4 decodeBoolForKey:@"isEnabled"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(OSSystemExtensionProperties *)v5 setDisplayName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usageDescription"];
    [(OSSystemExtensionProperties *)v5 setUsageDescription:v8];
  }

  return v5;
}

@end