@interface ASCCredentialProviderExtensionLoginChoice
- (ASCCredentialProviderExtensionLoginChoice)initWithCoder:(id)a3;
- (ASCCredentialProviderExtensionLoginChoice)initWithProviderName:(id)a3 providerBundleID:(id)a4 providerExtensionContainingAppBundleID:(id)a5;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCCredentialProviderExtensionLoginChoice

- (ASCCredentialProviderExtensionLoginChoice)initWithProviderName:(id)a3 providerBundleID:(id)a4 providerExtensionContainingAppBundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = ASCCredentialProviderExtensionLoginChoice;
  v11 = [(ASCCredentialProviderExtensionLoginChoice *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    providerName = v11->_providerName;
    v11->_providerName = v12;

    v14 = [v9 copy];
    providerExtensionBundleID = v11->_providerExtensionBundleID;
    v11->_providerExtensionBundleID = v14;

    v16 = [v10 copy];
    providerExtensionContainingAppBundleID = v11->_providerExtensionContainingAppBundleID;
    v11->_providerExtensionContainingAppBundleID = v16;

    v18 = v11;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    providerName = self->_providerName;
    v7 = [v5 providerName];
    if ([(NSString *)providerName isEqualToString:v7])
    {
      providerExtensionBundleID = self->_providerExtensionBundleID;
      v9 = [v5 providerExtensionBundleID];
      v10 = [(NSString *)providerExtensionBundleID isEqualToString:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  providerName = self->_providerName;
  v5 = a3;
  [v5 encodeObject:providerName forKey:@"providerName"];
  [v5 encodeObject:self->_providerExtensionBundleID forKey:@"providerExtensionBundleID"];
  [v5 encodeObject:self->_providerExtensionContainingAppBundleID forKey:@"providerExtensionContainingAppBundleID"];
}

- (ASCCredentialProviderExtensionLoginChoice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerExtensionBundleID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerExtensionContainingAppBundleID"];

  v8 = [(ASCCredentialProviderExtensionLoginChoice *)self initWithProviderName:v5 providerBundleID:v6 providerExtensionContainingAppBundleID:v7];
  return v8;
}

@end