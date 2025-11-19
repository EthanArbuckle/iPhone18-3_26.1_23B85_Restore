@interface CNContactProviderSupportDomain
- (BOOL)isEqual:(id)a3;
- (CNContactProviderSupportDomain)initWithCoder:(id)a3;
- (CNContactProviderSupportDomain)initWithDomainIdentifer:(id)a3 displayName:(id)a4 userInfo:(id)a5 bundleIdentifier:(id)a6 registered:(BOOL)a7 enabled:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContactProviderSupportDomain

- (CNContactProviderSupportDomain)initWithDomainIdentifer:(id)a3 displayName:(id)a4 userInfo:(id)a5 bundleIdentifier:(id)a6 registered:(BOOL)a7 enabled:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v23.receiver = self;
  v23.super_class = CNContactProviderSupportDomain;
  v18 = [(CNContactProviderSupportDomain *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_domainIdentifier, a3);
    objc_storeStrong(&v19->_displayName, a4);
    objc_storeStrong(&v19->_userInfo, a5);
    objc_storeStrong(&v19->_bundleIdentifier, a6);
    v19->_registered = a7;
    v19->_enabled = a8;
    v20 = v19;
  }

  return v19;
}

- (CNContactProviderSupportDomain)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domainIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
  v13 = [v4 decodeDictionaryWithKeysOfClasses:v7 objectsOfClasses:v12 forKey:@"userInfo"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v15 = [v4 decodeBoolForKey:@"isRegistered"];
  v16 = [v4 decodeBoolForKey:@"isEnabled"];

  v17 = [[CNContactProviderSupportDomain alloc] initWithDomainIdentifer:v5 displayName:v6 userInfo:v13 bundleIdentifier:v14 registered:v15 enabled:v16];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  domainIdentifier = self->_domainIdentifier;
  v5 = a3;
  [v5 encodeObject:domainIdentifier forKey:@"domainIdentifier"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_userInfo forKey:@"userInfo"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeBool:self->_enabled forKey:@"isRegistered"];
  [v5 encodeBool:self->_enabled forKey:@"isEnabled"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNContactProviderSupportDomain alloc];
  v5 = [(CNContactProviderSupportDomain *)self domainIdentifier];
  v6 = [(CNContactProviderSupportDomain *)self displayName];
  v7 = [(CNContactProviderSupportDomain *)self userInfo];
  v8 = [(CNContactProviderSupportDomain *)self bundleIdentifier];
  v9 = [(CNContactProviderSupportDomain *)v4 initWithDomainIdentifer:v5 displayName:v6 userInfo:v7 bundleIdentifier:v8 registered:[(CNContactProviderSupportDomain *)self isRegistered] enabled:[(CNContactProviderSupportDomain *)self isEnabled]];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNContactProviderSupportDomain domainIdentifier](self, "domainIdentifier"), v6 = -[CNContactProviderSupportDomain domainIdentifier](v4, "domainIdentifier"), !(v5 | v6)) || [v5 isEqual:v6]) && ((v7 = -[CNContactProviderSupportDomain displayName](self, "displayName"), v8 = -[CNContactProviderSupportDomain displayName](v4, "displayName"), !(v7 | v8)) || objc_msgSend(v7, "isEqual:", v8)) && ((v9 = -[CNContactProviderSupportDomain userInfo](self, "userInfo"), v10 = -[CNContactProviderSupportDomain userInfo](v4, "userInfo"), !(v9 | v10)) || objc_msgSend(v9, "isEqual:", v10)) && ((v11 = -[CNContactProviderSupportDomain bundleIdentifier](self, "bundleIdentifier"), v12 = -[CNContactProviderSupportDomain bundleIdentifier](v4, "bundleIdentifier"), !(v11 | v12)) || objc_msgSend(v11, "isEqual:", v12)) && (v13 = -[CNContactProviderSupportDomain isRegistered](self, "isRegistered"), v13 == -[CNContactProviderSupportDomain isRegistered](v4, "isRegistered")))
    {
      v16 = [(CNContactProviderSupportDomain *)self isEnabled];
      v14 = v16 ^ [(CNContactProviderSupportDomain *)v4 isEnabled]^ 1;
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

@end