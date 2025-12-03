@interface LSSettingsStoreConfiguration
- (LSSettingsStoreConfiguration)initWithCoder:(id)coder;
- (LSSettingsStoreConfiguration)initWithEndpoint:(id)endpoint;
@end

@implementation LSSettingsStoreConfiguration

- (LSSettingsStoreConfiguration)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = LSSettingsStoreConfiguration;
  v6 = [(LSSettingsStoreConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, endpoint);
  }

  return v7;
}

- (LSSettingsStoreConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = LSSettingsStoreConfiguration;
  v5 = [(LSSettingsStoreConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    endpoint = v5->_endpoint;
    v5->_endpoint = v6;
  }

  return v5;
}

@end