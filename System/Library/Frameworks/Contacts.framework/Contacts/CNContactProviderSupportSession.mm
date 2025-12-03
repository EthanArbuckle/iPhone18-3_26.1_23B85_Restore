@interface CNContactProviderSupportSession
- (BOOL)isEqual:(id)equal;
- (CNContactProviderSupportSession)init;
- (CNContactProviderSupportSession)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactProviderSupportSession

- (CNContactProviderSupportSession)init
{
  v10.receiver = self;
  v10.super_class = CNContactProviderSupportSession;
  v2 = [(CNContactProviderSupportSession *)&v10 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_synchronizationReason, @"App Requested");
    v4 = objc_alloc_init(MEMORY[0x1E696AE38]);
    progress = v3->_progress;
    v3->_progress = v4;

    displayName = v3->_displayName;
    v3->_displayName = &stru_1F094DAB0;

    userInfo = v3->_userInfo;
    v3->_userInfo = MEMORY[0x1E695E0F8];

    v8 = v3;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"reason" object:self->_synchronizationReason];
  v5 = [v3 appendName:@"displayName" object:self->_displayName];
  v6 = [v3 appendName:@"userInfo" object:self->_userInfo];
  v7 = [v3 appendName:@"progress" object:self->_progress];
  build = [v3 build];

  return build;
}

- (CNContactProviderSupportSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_synchronizationReason"];
  v6 = [v5 copy];
  synchronizationReason = self->_synchronizationReason;
  self->_synchronizationReason = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
  v9 = [v8 copy];
  displayName = self->_displayName;
  self->_displayName = v9;

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v11 setWithObjects:{v12, v13, v14, v15, objc_opt_class(), 0}];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"_userInfo"];

  v18 = [v17 copy];
  userInfo = self->_userInfo;
  self->_userInfo = v18;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  synchronizationReason = self->_synchronizationReason;
  coderCopy = coder;
  [coderCopy encodeObject:synchronizationReason forKey:@"_synchronizationReason"];
  [coderCopy encodeObject:self->_displayName forKey:@"_displayName"];
  [coderCopy encodeObject:self->_userInfo forKey:@"_userInfo"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CNContactProviderSupportSession);
  synchronizationReason = [(CNContactProviderSupportSession *)self synchronizationReason];
  [(CNContactProviderSupportSession *)v4 setSynchronizationReason:synchronizationReason];

  displayName = [(CNContactProviderSupportSession *)self displayName];
  [(CNContactProviderSupportSession *)v4 setDisplayName:displayName];

  userInfo = [(CNContactProviderSupportSession *)self userInfo];
  [(CNContactProviderSupportSession *)v4 setUserInfo:userInfo];

  progress = [(CNContactProviderSupportSession *)self progress];
  [(CNContactProviderSupportSession *)v4 setProgress:progress];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v5 = -[CNContactProviderSupportSession synchronizationReason](self, "synchronizationReason"), v6 = -[CNContactProviderSupportSession synchronizationReason](equalCopy, "synchronizationReason"), v5 | v6) && ![v5 isEqual:v6] || (v7 = -[CNContactProviderSupportSession progress](self, "progress"), v8 = -[CNContactProviderSupportSession progress](equalCopy, "progress"), v7 | v8) && !objc_msgSend(v7, "isEqual:", v8) || (v9 = -[CNContactProviderSupportSession displayName](self, "displayName"), v10 = -[CNContactProviderSupportSession displayName](equalCopy, "displayName"), v9 | v10) && !objc_msgSend(v9, "isEqual:", v10) || (v11 = -[CNContactProviderSupportSession userInfo](self, "userInfo"), v12 = -[CNContactProviderSupportSession userInfo](equalCopy, "userInfo"), v11 | v12) && !objc_msgSend(v11, "isEqual:", v12))
    {
      v13 = 0;
    }
  }

  return v13;
}

@end