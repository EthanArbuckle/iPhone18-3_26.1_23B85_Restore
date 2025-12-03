@interface CNContactProviderSupportDomain
- (BOOL)isEqual:(id)equal;
- (CNContactProviderSupportDomain)initWithCoder:(id)coder;
- (CNContactProviderSupportDomain)initWithDomainIdentifer:(id)identifer displayName:(id)name userInfo:(id)info bundleIdentifier:(id)identifier registered:(BOOL)registered enabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactProviderSupportDomain

- (CNContactProviderSupportDomain)initWithDomainIdentifer:(id)identifer displayName:(id)name userInfo:(id)info bundleIdentifier:(id)identifier registered:(BOOL)registered enabled:(BOOL)enabled
{
  identiferCopy = identifer;
  nameCopy = name;
  infoCopy = info;
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = CNContactProviderSupportDomain;
  v18 = [(CNContactProviderSupportDomain *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_domainIdentifier, identifer);
    objc_storeStrong(&v19->_displayName, name);
    objc_storeStrong(&v19->_userInfo, info);
    objc_storeStrong(&v19->_bundleIdentifier, identifier);
    v19->_registered = registered;
    v19->_enabled = enabled;
    v20 = v19;
  }

  return v19;
}

- (CNContactProviderSupportDomain)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domainIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeDictionaryWithKeysOfClasses:v7 objectsOfClasses:v12 forKey:@"userInfo"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v15 = [coderCopy decodeBoolForKey:@"isRegistered"];
  v16 = [coderCopy decodeBoolForKey:@"isEnabled"];

  v17 = [[CNContactProviderSupportDomain alloc] initWithDomainIdentifer:v5 displayName:v6 userInfo:v13 bundleIdentifier:v14 registered:v15 enabled:v16];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  domainIdentifier = self->_domainIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:domainIdentifier forKey:@"domainIdentifier"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_userInfo forKey:@"userInfo"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeBool:self->_enabled forKey:@"isRegistered"];
  [coderCopy encodeBool:self->_enabled forKey:@"isEnabled"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNContactProviderSupportDomain alloc];
  domainIdentifier = [(CNContactProviderSupportDomain *)self domainIdentifier];
  displayName = [(CNContactProviderSupportDomain *)self displayName];
  userInfo = [(CNContactProviderSupportDomain *)self userInfo];
  bundleIdentifier = [(CNContactProviderSupportDomain *)self bundleIdentifier];
  v9 = [(CNContactProviderSupportDomain *)v4 initWithDomainIdentifer:domainIdentifier displayName:displayName userInfo:userInfo bundleIdentifier:bundleIdentifier registered:[(CNContactProviderSupportDomain *)self isRegistered] enabled:[(CNContactProviderSupportDomain *)self isEnabled]];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNContactProviderSupportDomain domainIdentifier](self, "domainIdentifier"), v6 = -[CNContactProviderSupportDomain domainIdentifier](equalCopy, "domainIdentifier"), !(v5 | v6)) || [v5 isEqual:v6]) && ((v7 = -[CNContactProviderSupportDomain displayName](self, "displayName"), v8 = -[CNContactProviderSupportDomain displayName](equalCopy, "displayName"), !(v7 | v8)) || objc_msgSend(v7, "isEqual:", v8)) && ((v9 = -[CNContactProviderSupportDomain userInfo](self, "userInfo"), v10 = -[CNContactProviderSupportDomain userInfo](equalCopy, "userInfo"), !(v9 | v10)) || objc_msgSend(v9, "isEqual:", v10)) && ((v11 = -[CNContactProviderSupportDomain bundleIdentifier](self, "bundleIdentifier"), v12 = -[CNContactProviderSupportDomain bundleIdentifier](equalCopy, "bundleIdentifier"), !(v11 | v12)) || objc_msgSend(v11, "isEqual:", v12)) && (v13 = -[CNContactProviderSupportDomain isRegistered](self, "isRegistered"), v13 == -[CNContactProviderSupportDomain isRegistered](equalCopy, "isRegistered")))
    {
      isEnabled = [(CNContactProviderSupportDomain *)self isEnabled];
      v14 = isEnabled ^ [(CNContactProviderSupportDomain *)equalCopy isEnabled]^ 1;
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

@end