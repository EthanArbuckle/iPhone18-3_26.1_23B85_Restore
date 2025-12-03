@interface NEVPNIKEv2PPKConfiguration
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEVPNIKEv2PPKConfiguration)initWithCoder:(id)coder;
- (NEVPNIKEv2PPKConfiguration)initWithIdentifier:(id)identifier keychainReference:(id)reference;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEVPNIKEv2PPKConfiguration

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  identifier = [(NEVPNIKEv2PPKConfiguration *)self identifier];
  v6 = [identifier length];
  v7 = v6 != 0;

  if (!v6)
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  keychainReference = [(NEVPNIKEv2PPKConfiguration *)self keychainReference];
  if (keychainReference)
  {
  }

  else if (!self || !objc_getProperty(self, v9, 32, 1))
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [[NEVPNIKEv2PPKConfiguration allocWithZone:?]];
  if (v5)
  {
    if (self)
    {
      Property = objc_getProperty(self, v4, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v7 = [Property copy];
    keychainItem = v5->_keychainItem;
    v5->_keychainItem = v7;

    identifier = [(NEVPNIKEv2PPKConfiguration *)self identifier];
    v10 = [identifier copy];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    keychainReference = [(NEVPNIKEv2PPKConfiguration *)self keychainReference];
    v13 = [keychainReference copy];
    keychainReference = v5->_keychainReference;
    v5->_keychainReference = v13;

    v5->_isMandatory = [(NEVPNIKEv2PPKConfiguration *)self isMandatory];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  [coderCopy encodeObject:Property forKey:@"PPKKeychainItem"];
  identifier = [(NEVPNIKEv2PPKConfiguration *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"PPKIdentifier"];

  keychainReference = [(NEVPNIKEv2PPKConfiguration *)self keychainReference];
  [coderCopy encodeObject:keychainReference forKey:@"PPKReference"];

  [coderCopy encodeBool:-[NEVPNIKEv2PPKConfiguration isMandatory](self forKey:{"isMandatory"), @"PPKMandatory"}];
}

- (NEVPNIKEv2PPKConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = NEVPNIKEv2PPKConfiguration;
  v5 = [(NEVPNIKEv2PPKConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PPKKeychainItem"];
    keychainItem = v5->_keychainItem;
    v5->_keychainItem = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PPKIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PPKReference"];
    keychainReference = v5->_keychainReference;
    v5->_keychainReference = v10;

    v5->_isMandatory = [coderCopy decodeBoolForKey:@"PPKMandatory"];
    v12 = v5;
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *v15 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "[super init] failed", v15, 2u);
    }
  }

  return v5;
}

- (NEVPNIKEv2PPKConfiguration)initWithIdentifier:(id)identifier keychainReference:(id)reference
{
  identifierCopy = identifier;
  referenceCopy = reference;
  v17.receiver = self;
  v17.super_class = NEVPNIKEv2PPKConfiguration;
  v8 = [(NEVPNIKEv2PPKConfiguration *)&v17 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [referenceCopy copy];
    keychainReference = v8->_keychainReference;
    v8->_keychainReference = v11;

    v8->_isMandatory = 1;
    v13 = v8;
  }

  else
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *v16 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "[super init] failed", v16, 2u);
    }
  }

  return v8;
}

@end