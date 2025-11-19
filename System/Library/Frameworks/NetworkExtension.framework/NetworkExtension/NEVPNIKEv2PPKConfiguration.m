@interface NEVPNIKEv2PPKConfiguration
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NEVPNIKEv2PPKConfiguration)initWithCoder:(id)a3;
- (NEVPNIKEv2PPKConfiguration)initWithIdentifier:(id)a3 keychainReference:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEVPNIKEv2PPKConfiguration

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v5 = [(NEVPNIKEv2PPKConfiguration *)self identifier];
  v6 = [v5 length];
  v7 = v6 != 0;

  if (!v6)
  {
    [NEConfiguration addError:v4 toList:?];
  }

  v8 = [(NEVPNIKEv2PPKConfiguration *)self keychainReference];
  if (v8)
  {
  }

  else if (!self || !objc_getProperty(self, v9, 32, 1))
  {
    [NEConfiguration addError:v4 toList:?];
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
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

    v9 = [(NEVPNIKEv2PPKConfiguration *)self identifier];
    v10 = [v9 copy];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [(NEVPNIKEv2PPKConfiguration *)self keychainReference];
    v13 = [v12 copy];
    keychainReference = v5->_keychainReference;
    v5->_keychainReference = v13;

    v5->_isMandatory = [(NEVPNIKEv2PPKConfiguration *)self isMandatory];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  [v8 encodeObject:Property forKey:@"PPKKeychainItem"];
  v6 = [(NEVPNIKEv2PPKConfiguration *)self identifier];
  [v8 encodeObject:v6 forKey:@"PPKIdentifier"];

  v7 = [(NEVPNIKEv2PPKConfiguration *)self keychainReference];
  [v8 encodeObject:v7 forKey:@"PPKReference"];

  [v8 encodeBool:-[NEVPNIKEv2PPKConfiguration isMandatory](self forKey:{"isMandatory"), @"PPKMandatory"}];
}

- (NEVPNIKEv2PPKConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NEVPNIKEv2PPKConfiguration;
  v5 = [(NEVPNIKEv2PPKConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PPKKeychainItem"];
    keychainItem = v5->_keychainItem;
    v5->_keychainItem = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PPKIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PPKReference"];
    keychainReference = v5->_keychainReference;
    v5->_keychainReference = v10;

    v5->_isMandatory = [v4 decodeBoolForKey:@"PPKMandatory"];
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

- (NEVPNIKEv2PPKConfiguration)initWithIdentifier:(id)a3 keychainReference:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = NEVPNIKEv2PPKConfiguration;
  v8 = [(NEVPNIKEv2PPKConfiguration *)&v17 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
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