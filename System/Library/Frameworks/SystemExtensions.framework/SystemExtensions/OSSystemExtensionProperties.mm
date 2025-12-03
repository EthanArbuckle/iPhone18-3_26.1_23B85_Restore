@interface OSSystemExtensionProperties
- (OSSystemExtensionProperties)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OSSystemExtensionProperties

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(OSSystemExtensionProperties *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  [coderCopy encodeBool:-[OSSystemExtensionProperties isEnabled](self forKey:{"isEnabled"), @"isEnabled"}];
  displayName = [(OSSystemExtensionProperties *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  usageDescription = [(OSSystemExtensionProperties *)self usageDescription];
  [coderCopy encodeObject:usageDescription forKey:@"usageDescription"];
}

- (OSSystemExtensionProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = OSSystemExtensionProperties;
  v5 = [(OSSystemExtensionProperties *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    [(OSSystemExtensionProperties *)v5 setBundleIdentifier:v6];

    -[OSSystemExtensionProperties setIsEnabled:](v5, "setIsEnabled:", [coderCopy decodeBoolForKey:@"isEnabled"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(OSSystemExtensionProperties *)v5 setDisplayName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usageDescription"];
    [(OSSystemExtensionProperties *)v5 setUsageDescription:v8];
  }

  return v5;
}

@end