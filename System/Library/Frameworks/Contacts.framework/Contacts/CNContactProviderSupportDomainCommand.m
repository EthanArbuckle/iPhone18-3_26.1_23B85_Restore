@interface CNContactProviderSupportDomainCommand
+ (id)addDomain:(id)a3;
+ (id)disableDomain:(id)a3;
+ (id)disableDomain:(id)a3 bundleIdentifier:(id)a4;
+ (id)enableDomain:(id)a3;
+ (id)enableDomain:(id)a3 bundleIdentifier:(id)a4 shouldSynchronize:(BOOL)a5;
+ (id)fetchAllDomains;
+ (id)fetchAllDomainsCount;
+ (id)fetchContainerIdentifierForDomain:(id)a3;
+ (id)fetchDomainEnabled:(id)a3;
+ (id)fetchRegisteredDomains;
+ (id)invalidateExtensionForDomain:(id)a3;
+ (id)new;
+ (id)removeDomain:(id)a3;
+ (id)resetEnumerationForDomain:(id)a3;
+ (id)synchronizeDomain:(id)a3 usingSession:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CNContactProviderSupportDomainCommand)init;
- (CNContactProviderSupportDomainCommand)initWithCoder:(id)a3;
- (CNContactProviderSupportDomainCommand)initWithCommandType:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContactProviderSupportDomainCommand

- (CNContactProviderSupportDomainCommand)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

+ (id)new
{
  v2 = a1;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNContactProviderSupportDomainCommand)initWithCommandType:(id)a3
{
  v5 = a3;
  if (!v5)
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
    objc_storeStrong(&v6->_commandType, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)addDomain:(id)a3
{
  v3 = a3;
  if (!v3)
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
  [(CNContactProviderSupportDomainCommand *)v4 setDomain:v3];

  return v4;
}

+ (id)removeDomain:(id)a3
{
  v3 = a3;
  if (!v3)
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
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:v3];

  return v4;
}

+ (id)fetchRegisteredDomains
{
  v2 = [[CNContactProviderSupportDomainCommand alloc] initWithCommandType:@"FetchRegisteredDomains"];

  return v2;
}

+ (id)fetchDomainEnabled:(id)a3
{
  v3 = a3;
  if (!v3)
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
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:v3];

  return v4;
}

+ (id)enableDomain:(id)a3
{
  v3 = a3;
  if (!v3)
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
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:v3];

  return v4;
}

+ (id)disableDomain:(id)a3
{
  v3 = a3;
  if (!v3)
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
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:v3];

  return v4;
}

+ (id)fetchContainerIdentifierForDomain:(id)a3
{
  v3 = a3;
  if (!v3)
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
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:v3];

  return v4;
}

+ (id)synchronizeDomain:(id)a3 usingSession:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
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
    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v6)
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
  [(CNContactProviderSupportDomainCommand *)v7 setDomainIdentifier:v5];
  [(CNContactProviderSupportDomainCommand *)v7 setSession:v6];

  return v7;
}

+ (id)invalidateExtensionForDomain:(id)a3
{
  v3 = a3;
  if (!v3)
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
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:v3];

  return v4;
}

+ (id)resetEnumerationForDomain:(id)a3
{
  v3 = a3;
  if (!v3)
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
  [(CNContactProviderSupportDomainCommand *)v4 setDomainIdentifier:v3];

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

+ (id)enableDomain:(id)a3 bundleIdentifier:(id)a4 shouldSynchronize:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (v7)
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
    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v8)
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
  [(CNContactProviderSupportDomainCommand *)v9 setDomainIdentifier:v7];
  [(CNContactProviderSupportDomainCommand *)v9 setBundleIdentifier:v8];
  [(CNContactProviderSupportDomainCommand *)v9 setShouldSynchronize:v5];

  return v9;
}

+ (id)disableDomain:(id)a3 bundleIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
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
    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v6)
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
  [(CNContactProviderSupportDomainCommand *)v7 setDomainIdentifier:v5];
  [(CNContactProviderSupportDomainCommand *)v7 setBundleIdentifier:v6];

  return v7;
}

- (CNContactProviderSupportDomainCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"commandType"];
  v6 = [(CNContactProviderSupportDomainCommand *)self initWithCommandType:v5];
  if (v6)
  {
    if ([v4 containsValueForKey:@"_domainIdentifier"])
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_domainIdentifier"];
      v8 = [v7 copy];
      domainIdentifier = v6->_domainIdentifier;
      v6->_domainIdentifier = v8;
    }

    if ([v4 containsValueForKey:@"_bundleIdentifier"])
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
      v11 = [v10 copy];
      bundleIdentifier = v6->_bundleIdentifier;
      v6->_bundleIdentifier = v11;
    }

    if ([v4 containsValueForKey:@"_domain"])
    {
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_domain"];
      v14 = [v13 copy];
      domain = v6->_domain;
      v6->_domain = v14;
    }

    if ([v4 containsValueForKey:@"_session"])
    {
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_session"];
      v17 = [v16 copy];
      session = v6->_session;
      v6->_session = v17;
    }

    if ([v4 containsValueForKey:@"_shouldSynchronize"])
    {
      v6->_shouldSynchronize = [v4 decodeBoolForKey:@"_shouldSynchronize"];
    }

    v19 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeObject:self->_commandType forKey:@"commandType"];
  domainIdentifier = self->_domainIdentifier;
  if (domainIdentifier)
  {
    [v8 encodeObject:domainIdentifier forKey:@"_domainIdentifier"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v8 encodeObject:bundleIdentifier forKey:@"_bundleIdentifier"];
  }

  v6 = v8;
  if (self->_session)
  {
    [v8 encodeObject:self->_domain forKey:@"_domain"];
    v6 = v8;
    session = self->_session;
    if (session)
    {
      [v8 encodeObject:session forKey:@"_session"];
      v6 = v8;
    }
  }

  [v6 encodeBool:self->_shouldSynchronize forKey:@"_shouldSynchronize"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNContactProviderSupportDomainCommand alloc];
  v5 = [(CNContactProviderSupportDomainCommand *)self commandType];
  v6 = [(CNContactProviderSupportDomainCommand *)v4 initWithCommandType:v5];

  v7 = [(CNContactProviderSupportDomainCommand *)self domainIdentifier];
  [(CNContactProviderSupportDomainCommand *)v6 setDomainIdentifier:v7];

  v8 = [(CNContactProviderSupportDomainCommand *)self bundleIdentifier];
  [(CNContactProviderSupportDomainCommand *)v6 setBundleIdentifier:v8];

  v9 = [(CNContactProviderSupportDomainCommand *)self domain];
  [(CNContactProviderSupportDomainCommand *)v6 setDomain:v9];

  v10 = [(CNContactProviderSupportDomainCommand *)self session];
  [(CNContactProviderSupportDomainCommand *)v6 setSession:v10];

  [(CNContactProviderSupportDomainCommand *)v6 setShouldSynchronize:[(CNContactProviderSupportDomainCommand *)self shouldSynchronize]];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNContactProviderSupportDomainCommand commandType](self, "commandType"), v6 = -[CNContactProviderSupportDomainCommand commandType](v4, "commandType"), !(v5 | v6)) || [v5 isEqual:v6]) && ((v7 = -[CNContactProviderSupportDomainCommand domainIdentifier](self, "domainIdentifier"), v8 = -[CNContactProviderSupportDomainCommand domainIdentifier](v4, "domainIdentifier"), !(v7 | v8)) || objc_msgSend(v7, "isEqual:", v8)) && ((v9 = -[CNContactProviderSupportDomainCommand bundleIdentifier](self, "bundleIdentifier"), v10 = -[CNContactProviderSupportDomainCommand bundleIdentifier](v4, "bundleIdentifier"), !(v9 | v10)) || objc_msgSend(v9, "isEqual:", v10)) && ((v11 = -[CNContactProviderSupportDomainCommand domain](self, "domain"), v12 = -[CNContactProviderSupportDomainCommand domain](v4, "domain"), !(v11 | v12)) || objc_msgSend(v11, "isEqual:", v12)) && ((v13 = -[CNContactProviderSupportDomainCommand session](self, "session"), v14 = -[CNContactProviderSupportDomainCommand session](v4, "session"), !(v13 | v14)) || objc_msgSend(v13, "isEqual:", v14)))
    {
      v15 = [(CNContactProviderSupportDomainCommand *)self shouldSynchronize];
      v16 = v15 ^ [(CNContactProviderSupportDomainCommand *)v4 shouldSynchronize]^ 1;
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

@end