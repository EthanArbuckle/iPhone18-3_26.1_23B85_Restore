@interface CNContactProviderSupportDomainCommand
+ (id)addDomain:(id)domain;
+ (id)disableDomain:(id)domain;
+ (id)disableDomain:(id)domain bundleIdentifier:(id)identifier;
+ (id)enableDomain:(id)domain;
+ (id)enableDomain:(id)domain bundleIdentifier:(id)identifier shouldSynchronize:(BOOL)synchronize;
+ (id)fetchAllDomains;
+ (id)fetchAllDomainsCount;
+ (id)fetchContainerIdentifierForDomain:(id)domain;
+ (id)fetchDomainEnabled:(id)enabled;
+ (id)fetchRegisteredDomains;
+ (id)invalidateExtensionForDomain:(id)domain;
+ (id)new;
+ (id)removeDomain:(id)domain;
+ (id)resetEnumerationForDomain:(id)domain;
+ (id)synchronizeDomain:(id)domain usingSession:(id)session;
- (BOOL)isEqual:(id)equal;
- (CNContactProviderSupportDomainCommand)init;
- (CNContactProviderSupportDomainCommand)initWithCoder:(id)coder;
- (CNContactProviderSupportDomainCommand)initWithCommandType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactProviderSupportDomainCommand

- (CNContactProviderSupportDomainCommand)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

+ (id)new
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNContactProviderSupportDomainCommand)initWithCommandType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNContactProviderSupportDomainCommand initWithCommandType:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      [CNContactProviderSupportDomainCommand initWithCommandType:];
    }
  }

  v10.receiver = self;
  v10.super_class = CNContactProviderSupportDomainCommand;
  v6 = [(CNContactProviderSupportDomainCommand *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_commandType, type);
    v8 = v7;
  }

  return v7;
}

+ (id)addDomain:(id)domain
{
  domainCopy = domain;
  if (!domainCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNContactProviderSupportDomainCommand initWithCommandType:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      +[CNContactProviderSupportDomainCommand addDomain:];
    }
  }

  v4 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"AddDomain"];
  [(CNContactProviderSupportDomainCommand *)v4 setDomain:domainCopy];

  return v4;
}

+ (id)removeDomain:(id)domain
{
  domainCopy = domain;
  if (!domainCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNContactProviderSupportDomainCommand initWithCommandType:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      +[CNContactProviderSupportDomainCommand removeDomain:];
    }
  }

  v4 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"RemoveDomain"];
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:domainCopy];

  return v4;
}

+ (id)fetchRegisteredDomains
{
  v2 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"FetchRegisteredDomains"];

  return v2;
}

+ (id)fetchDomainEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (!enabledCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNContactProviderSupportDomainCommand initWithCommandType:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      +[CNContactProviderSupportDomainCommand removeDomain:];
    }
  }

  v4 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"FetchDomainEnabled"];
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:enabledCopy];

  return v4;
}

+ (id)enableDomain:(id)domain
{
  domainCopy = domain;
  if (!domainCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNContactProviderSupportDomainCommand initWithCommandType:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      +[CNContactProviderSupportDomainCommand removeDomain:];
    }
  }

  v4 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"EnableDomain"];
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:domainCopy];

  return v4;
}

+ (id)disableDomain:(id)domain
{
  domainCopy = domain;
  if (!domainCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNContactProviderSupportDomainCommand initWithCommandType:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      +[CNContactProviderSupportDomainCommand removeDomain:];
    }
  }

  v4 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"DisableDomain"];
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:domainCopy];

  return v4;
}

+ (id)fetchContainerIdentifierForDomain:(id)domain
{
  domainCopy = domain;
  if (!domainCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNContactProviderSupportDomainCommand initWithCommandType:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      +[CNContactProviderSupportDomainCommand removeDomain:];
    }
  }

  v4 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"FetchDomainContainerIdentifier"];
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:domainCopy];

  return v4;
}

+ (id)synchronizeDomain:(id)domain usingSession:(id)session
{
  domainCopy = domain;
  sessionCopy = session;
  if (domainCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_9 != -1)
  {
    [CNContactProviderSupportDomainCommand initWithCommandType:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
  {
    +[CNContactProviderSupportDomainCommand removeDomain:];
    if (sessionCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (sessionCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_9 != -1)
  {
    +[CNContactProviderSupportDomainCommand synchronizeDomain:usingSession:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
  {
    +[CNContactProviderSupportDomainCommand synchronizeDomain:usingSession:];
  }

LABEL_10:
  v7 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"SynchronizeDomain"];
  [(CNContactProviderSupportDomainCommand *)v7 setDomainIdentifier:domainCopy];
  [(CNContactProviderSupportDomainCommand *)v7 setSession:sessionCopy];

  return v7;
}

+ (id)invalidateExtensionForDomain:(id)domain
{
  domainCopy = domain;
  if (!domainCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNContactProviderSupportDomainCommand initWithCommandType:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      +[CNContactProviderSupportDomainCommand removeDomain:];
    }
  }

  v4 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"InvalidateExtension"];
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:domainCopy];

  return v4;
}

+ (id)resetEnumerationForDomain:(id)domain
{
  domainCopy = domain;
  if (!domainCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_9 != -1)
    {
      [CNContactProviderSupportDomainCommand initWithCommandType:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
    {
      +[CNContactProviderSupportDomainCommand removeDomain:];
    }
  }

  v4 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"ResetEnumeration"];
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:domainCopy];

  return v4;
}

+ (id)fetchAllDomainsCount
{
  v2 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"FetchAllDomainsCount"];

  return v2;
}

+ (id)fetchAllDomains
{
  v2 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"FetchAllDomains"];

  return v2;
}

+ (id)enableDomain:(id)domain bundleIdentifier:(id)identifier shouldSynchronize:(BOOL)synchronize
{
  synchronizeCopy = synchronize;
  domainCopy = domain;
  identifierCopy = identifier;
  if (domainCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_9 != -1)
  {
    [CNContactProviderSupportDomainCommand initWithCommandType:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
  {
    +[CNContactProviderSupportDomainCommand removeDomain:];
    if (identifierCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (identifierCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_9 != -1)
  {
    +[CNContactProviderSupportDomainCommand synchronizeDomain:usingSession:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
  {
    +[CNContactProviderSupportDomainCommand enableDomain:bundleIdentifier:shouldSynchronize:];
  }

LABEL_10:
  v9 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"EnableDomain"];
  [(CNContactProviderSupportDomainCommand *)v9 setDomainIdentifier:domainCopy];
  [(CNContactProviderSupportDomainCommand *)v9 setBundleIdentifier:identifierCopy];
  [(CNContactProviderSupportDomainCommand *)v9 setShouldSynchronize:synchronizeCopy];

  return v9;
}

+ (id)disableDomain:(id)domain bundleIdentifier:(id)identifier
{
  domainCopy = domain;
  identifierCopy = identifier;
  if (domainCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_9 != -1)
  {
    [CNContactProviderSupportDomainCommand initWithCommandType:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
  {
    +[CNContactProviderSupportDomainCommand removeDomain:];
    if (identifierCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (identifierCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_9 != -1)
  {
    +[CNContactProviderSupportDomainCommand synchronizeDomain:usingSession:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_9, OS_LOG_TYPE_FAULT))
  {
    +[CNContactProviderSupportDomainCommand enableDomain:bundleIdentifier:shouldSynchronize:];
  }

LABEL_10:
  v7 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"DisableDomain"];
  [(CNContactProviderSupportDomainCommand *)v7 setDomainIdentifier:domainCopy];
  [(CNContactProviderSupportDomainCommand *)v7 setBundleIdentifier:identifierCopy];

  return v7;
}

- (CNContactProviderSupportDomainCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"commandType"];
  v6 = [(CNContactProviderSupportDomainCommand *)self initWithCommandType:v5];
  if (v6)
  {
    if ([coderCopy containsValueForKey:@"_domainIdentifier"])
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_domainIdentifier"];
      v8 = [v7 copy];
      domainIdentifier = v6->_domainIdentifier;
      v6->_domainIdentifier = v8;
    }

    if ([coderCopy containsValueForKey:@"_bundleIdentifier"])
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
      v11 = [v10 copy];
      bundleIdentifier = v6->_bundleIdentifier;
      v6->_bundleIdentifier = v11;
    }

    if ([coderCopy containsValueForKey:@"_domain"])
    {
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_domain"];
      v14 = [v13 copy];
      domain = v6->_domain;
      v6->_domain = v14;
    }

    if ([coderCopy containsValueForKey:@"_session"])
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_session"];
      v17 = [v16 copy];
      session = v6->_session;
      v6->_session = v17;
    }

    if ([coderCopy containsValueForKey:@"_shouldSynchronize"])
    {
      v6->_shouldSynchronize = [coderCopy decodeBoolForKey:@"_shouldSynchronize"];
    }

    v19 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_commandType forKey:@"commandType"];
  domainIdentifier = self->_domainIdentifier;
  if (domainIdentifier)
  {
    [coderCopy encodeObject:domainIdentifier forKey:@"_domainIdentifier"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [coderCopy encodeObject:bundleIdentifier forKey:@"_bundleIdentifier"];
  }

  v6 = coderCopy;
  if (self->_session)
  {
    [coderCopy encodeObject:self->_domain forKey:@"_domain"];
    v6 = coderCopy;
    session = self->_session;
    if (session)
    {
      [coderCopy encodeObject:session forKey:@"_session"];
      v6 = coderCopy;
    }
  }

  [v6 encodeBool:self->_shouldSynchronize forKey:@"_shouldSynchronize"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNContactProviderSupportDomainCommand alloc];
  commandType = [(CNContactProviderSupportDomainCommand *)self commandType];
  v6 = [(CNContactProviderSupportDomainCommand *)v4 initWithCommandType:commandType];

  domainIdentifier = [(CNContactProviderSupportDomainCommand *)self domainIdentifier];
  [(CNContactProviderSupportDomainCommand *)v6 setDomainIdentifier:domainIdentifier];

  bundleIdentifier = [(CNContactProviderSupportDomainCommand *)self bundleIdentifier];
  [(CNContactProviderSupportDomainCommand *)v6 setBundleIdentifier:bundleIdentifier];

  domain = [(CNContactProviderSupportDomainCommand *)self domain];
  [(CNContactProviderSupportDomainCommand *)v6 setDomain:domain];

  session = [(CNContactProviderSupportDomainCommand *)self session];
  [(CNContactProviderSupportDomainCommand *)v6 setSession:session];

  [(CNContactProviderSupportDomainCommand *)v6 setShouldSynchronize:[(CNContactProviderSupportDomainCommand *)self shouldSynchronize]];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNContactProviderSupportDomainCommand commandType](self, "commandType"), v6 = -[CNContactProviderSupportDomainCommand commandType](equalCopy, "commandType"), !(v5 | v6)) || [v5 isEqual:v6]) && ((v7 = -[CNContactProviderSupportDomainCommand domainIdentifier](self, "domainIdentifier"), v8 = -[CNContactProviderSupportDomainCommand domainIdentifier](equalCopy, "domainIdentifier"), !(v7 | v8)) || objc_msgSend(v7, "isEqual:", v8)) && ((v9 = -[CNContactProviderSupportDomainCommand bundleIdentifier](self, "bundleIdentifier"), v10 = -[CNContactProviderSupportDomainCommand bundleIdentifier](equalCopy, "bundleIdentifier"), !(v9 | v10)) || objc_msgSend(v9, "isEqual:", v10)) && ((v11 = -[CNContactProviderSupportDomainCommand domain](self, "domain"), v12 = -[CNContactProviderSupportDomainCommand domain](equalCopy, "domain"), !(v11 | v12)) || objc_msgSend(v11, "isEqual:", v12)) && ((v13 = -[CNContactProviderSupportDomainCommand session](self, "session"), v14 = -[CNContactProviderSupportDomainCommand session](equalCopy, "session"), !(v13 | v14)) || objc_msgSend(v13, "isEqual:", v14)))
    {
      shouldSynchronize = [(CNContactProviderSupportDomainCommand *)self shouldSynchronize];
      v16 = shouldSynchronize ^ [(CNContactProviderSupportDomainCommand *)equalCopy shouldSynchronize]^ 1;
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

@end