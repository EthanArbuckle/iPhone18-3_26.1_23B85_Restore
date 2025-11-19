@interface NEDNSProxyProviderProtocol
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NEDNSProxyProviderProtocol)init;
- (NEDNSProxyProviderProtocol)initWithCoder:(id)a3;
- (NEDNSProxyProviderProtocol)initWithPluginType:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEDNSProxyProviderProtocol

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v5 = [(NEDNSProxyProviderProtocol *)self pluginType];

  if (!v5)
  {
    [NEConfiguration addError:v4 toList:?];
  }

  return v5 != 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = NEDNSProxyProviderProtocol;
  v4 = [(NEVPNProtocol *)&v10 copyWithZone:a3];
  v5 = [(NEDNSProxyProviderProtocol *)self pluginType];
  [v4 setPluginType:v5];

  v6 = [(NEDNSProxyProviderProtocol *)self providerConfiguration];
  [v4 setProviderConfiguration:v6];

  v7 = [(NEDNSProxyProviderProtocol *)self providerBundleIdentifier];
  [v4 setProviderBundleIdentifier:v7];

  v8 = [(NEDNSProxyProviderProtocol *)self designatedRequirement];
  [v4 setDesignatedRequirement:v8];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = NEDNSProxyProviderProtocol;
  v4 = a3;
  [(NEVPNProtocol *)&v9 encodeWithCoder:v4];
  v5 = [(NEDNSProxyProviderProtocol *)self pluginType:v9.receiver];
  [v4 encodeObject:v5 forKey:@"PluginType"];

  v6 = [(NEDNSProxyProviderProtocol *)self providerConfiguration];
  [v4 encodeObject:v6 forKey:@"ProviderConfiguration"];

  v7 = [(NEDNSProxyProviderProtocol *)self providerBundleIdentifier];
  [v4 encodeObject:v7 forKey:@"ProviderBundleIdentifier"];

  v8 = [(NEDNSProxyProviderProtocol *)self designatedRequirement];
  [v4 encodeObject:v8 forKey:@"ProviderDesignatedRequirement"];
}

- (NEDNSProxyProviderProtocol)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = NEDNSProxyProviderProtocol;
  v5 = [(NEVPNProtocol *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PluginType"];
    [(NEDNSProxyProviderProtocol *)v5 setPluginType:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"ProviderConfiguration"];
    providerConfiguration = v5->_providerConfiguration;
    v5->_providerConfiguration = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProviderBundleIdentifier"];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProviderDesignatedRequirement"];
    designatedRequirement = v5->_designatedRequirement;
    v5->_designatedRequirement = v17;
  }

  return v5;
}

- (NEDNSProxyProviderProtocol)initWithPluginType:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NEDNSProxyProviderProtocol;
  v5 = [(NEVPNProtocol *)&v8 initWithType:6];
  v6 = v5;
  if (v5)
  {
    [(NEDNSProxyProviderProtocol *)v5 setPluginType:v4];
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