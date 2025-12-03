@interface ASCCredentialProviderExtensionLoginChoice
- (ASCCredentialProviderExtensionLoginChoice)initWithCoder:(id)coder;
- (ASCCredentialProviderExtensionLoginChoice)initWithProviderName:(id)name providerBundleID:(id)d providerExtensionContainingAppBundleID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCCredentialProviderExtensionLoginChoice

- (ASCCredentialProviderExtensionLoginChoice)initWithProviderName:(id)name providerBundleID:(id)d providerExtensionContainingAppBundleID:(id)iD
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  v20.receiver = self;
  v20.super_class = ASCCredentialProviderExtensionLoginChoice;
  v11 = [(ASCCredentialProviderExtensionLoginChoice *)&v20 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    providerName = v11->_providerName;
    v11->_providerName = v12;

    v14 = [dCopy copy];
    providerExtensionBundleID = v11->_providerExtensionBundleID;
    v11->_providerExtensionBundleID = v14;

    v16 = [iDCopy copy];
    providerExtensionContainingAppBundleID = v11->_providerExtensionContainingAppBundleID;
    v11->_providerExtensionContainingAppBundleID = v16;

    v18 = v11;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    providerName = self->_providerName;
    providerName = [v5 providerName];
    if ([(NSString *)providerName isEqualToString:providerName])
    {
      providerExtensionBundleID = self->_providerExtensionBundleID;
      providerExtensionBundleID = [v5 providerExtensionBundleID];
      v10 = [(NSString *)providerExtensionBundleID isEqualToString:providerExtensionBundleID];
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

- (void)encodeWithCoder:(id)coder
{
  providerName = self->_providerName;
  coderCopy = coder;
  [coderCopy encodeObject:providerName forKey:@"providerName"];
  [coderCopy encodeObject:self->_providerExtensionBundleID forKey:@"providerExtensionBundleID"];
  [coderCopy encodeObject:self->_providerExtensionContainingAppBundleID forKey:@"providerExtensionContainingAppBundleID"];
}

- (ASCCredentialProviderExtensionLoginChoice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerExtensionBundleID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerExtensionContainingAppBundleID"];

  v8 = [(ASCCredentialProviderExtensionLoginChoice *)self initWithProviderName:v5 providerBundleID:v6 providerExtensionContainingAppBundleID:v7];
  return v8;
}

@end