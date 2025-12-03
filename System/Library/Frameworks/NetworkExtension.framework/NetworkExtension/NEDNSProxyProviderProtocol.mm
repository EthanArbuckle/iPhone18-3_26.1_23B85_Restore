@interface NEDNSProxyProviderProtocol
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEDNSProxyProviderProtocol)init;
- (NEDNSProxyProviderProtocol)initWithCoder:(id)coder;
- (NEDNSProxyProviderProtocol)initWithPluginType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEDNSProxyProviderProtocol

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  pluginType = [(NEDNSProxyProviderProtocol *)self pluginType];

  if (!pluginType)
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  return pluginType != 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = NEDNSProxyProviderProtocol;
  v4 = [(NEVPNProtocol *)&v10 copyWithZone:zone];
  pluginType = [(NEDNSProxyProviderProtocol *)self pluginType];
  [v4 setPluginType:pluginType];

  providerConfiguration = [(NEDNSProxyProviderProtocol *)self providerConfiguration];
  [v4 setProviderConfiguration:providerConfiguration];

  providerBundleIdentifier = [(NEDNSProxyProviderProtocol *)self providerBundleIdentifier];
  [v4 setProviderBundleIdentifier:providerBundleIdentifier];

  designatedRequirement = [(NEDNSProxyProviderProtocol *)self designatedRequirement];
  [v4 setDesignatedRequirement:designatedRequirement];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = NEDNSProxyProviderProtocol;
  coderCopy = coder;
  [(NEVPNProtocol *)&v9 encodeWithCoder:coderCopy];
  v5 = [(NEDNSProxyProviderProtocol *)self pluginType:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"PluginType"];

  providerConfiguration = [(NEDNSProxyProviderProtocol *)self providerConfiguration];
  [coderCopy encodeObject:providerConfiguration forKey:@"ProviderConfiguration"];

  providerBundleIdentifier = [(NEDNSProxyProviderProtocol *)self providerBundleIdentifier];
  [coderCopy encodeObject:providerBundleIdentifier forKey:@"ProviderBundleIdentifier"];

  designatedRequirement = [(NEDNSProxyProviderProtocol *)self designatedRequirement];
  [coderCopy encodeObject:designatedRequirement forKey:@"ProviderDesignatedRequirement"];
}

- (NEDNSProxyProviderProtocol)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = NEDNSProxyProviderProtocol;
  v5 = [(NEVPNProtocol *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PluginType"];
    [(NEDNSProxyProviderProtocol *)v5 setPluginType:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"ProviderConfiguration"];
    providerConfiguration = v5->_providerConfiguration;
    v5->_providerConfiguration = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProviderBundleIdentifier"];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProviderDesignatedRequirement"];
    designatedRequirement = v5->_designatedRequirement;
    v5->_designatedRequirement = v17;
  }

  return v5;
}

- (NEDNSProxyProviderProtocol)initWithPluginType:(id)type
{
  typeCopy = type;
  v8.receiver = self;
  v8.super_class = NEDNSProxyProviderProtocol;
  v5 = [(NEVPNProtocol *)&v8 initWithType:6];
  v6 = v5;
  if (v5)
  {
    [(NEDNSProxyProviderProtocol *)v5 setPluginType:typeCopy];
  }

  return v6;
}

- (NEDNSProxyProviderProtocol)init
{
  v3.receiver = self;
  v3.super_class = NEDNSProxyProviderProtocol;
  return [(NEVPNProtocol *)&v3 initWithType:6];
}

@end