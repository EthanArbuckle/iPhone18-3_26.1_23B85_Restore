@interface LSSettingsStoreConfiguration
- (LSSettingsStoreConfiguration)initWithCoder:(id)a3;
- (LSSettingsStoreConfiguration)initWithEndpoint:(id)a3;
@end

@implementation LSSettingsStoreConfiguration

- (LSSettingsStoreConfiguration)initWithEndpoint:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LSSettingsStoreConfiguration;
  v6 = [(LSSettingsStoreConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, a3);
  }

  return v7;
}

- (LSSettingsStoreConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LSSettingsStoreConfiguration;
  v5 = [(LSSettingsStoreConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    endpoint = v5->_endpoint;
    v5->_endpoint = v6;
  }

  return v5;
}

@end