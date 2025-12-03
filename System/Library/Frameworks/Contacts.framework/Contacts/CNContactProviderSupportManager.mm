@interface CNContactProviderSupportManager
+ (BOOL)isConnectionForContactProvider:(id)provider;
+ (void)invalidateCache;
- (BOOL)addDomain:(id)domain error:(id *)error;
- (BOOL)disableDomain:(id)domain bundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)enableDomain:(id)domain bundleIdentifier:(id)identifier shouldSynchronize:(BOOL)synchronize error:(id *)error;
- (BOOL)invalidateExtensionForDomain:(id)domain bundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeDomain:(id)domain bundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)resetEnumerationForDomain:(id)domain bundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)synchronizeProviderDomainUsingSession:(id)session error:(id *)error;
- (CNContactProviderSupportManager)initWithAuditToken:(id)token;
- (CNContainer)providerContainer;
- (id)fetchExtensionCount;
- (id)fetchExtensionItems;
- (id)getActualBundleIdentifier:(id)identifier;
- (id)isProviderDomainEnabledWithBundleIdentifier:(id)identifier;
- (id)providerContainerWithBundleIdentifier:(id)identifier;
- (id)registeredDomainsForBundleIdentifier:(id)identifier error:(id *)error;
- (id)requestHostDomainCommand:(id)command error:(id *)error;
@end

@implementation CNContactProviderSupportManager

- (CNContactProviderSupportManager)initWithAuditToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_4 != -1)
    {
      [CNContactProviderSupportManager initWithAuditToken:];
    }

    v5 = CNGuardOSLog_cn_once_object_0_4;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_4, OS_LOG_TYPE_FAULT))
    {
      [CNContactProviderSupportManager initWithAuditToken:v5];
    }
  }

  v17.receiver = self;
  v17.super_class = CNContactProviderSupportManager;
  v6 = [(CNContactProviderSupportManager *)&v17 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E6996640] bundleIdentifierForAuditToken:tokenCopy];
    clientLoggingIdentifier = v6->_clientLoggingIdentifier;
    v6->_clientLoggingIdentifier = v7;
    v9 = v7;

    v10 = objc_alloc_init(_TtC8Contacts28CNContactProviderSupportHost);
    providerHost = v6->_providerHost;
    v6->_providerHost = v10;

    v12 = +[CNContactProviderSupportModerator sharedInstance];
    moderator = v6->_moderator;
    v6->_moderator = v12;

    offMainThreadScheduler = [MEMORY[0x1E6996818] offMainThreadScheduler];

    [offMainThreadScheduler performBlock:&__block_literal_global_56];
    v15 = v6;
  }

  return v6;
}

void __54__CNContactProviderSupportManager_initWithAuditToken___block_invoke()
{
  v0 = +[_TtC8Contacts29CNContactProviderSupportCache sharedCache];
}

+ (BOOL)isConnectionForContactProvider:(id)provider
{
  serviceName = [provider serviceName];
  v4 = [serviceName isEqualToString:@"com.apple.contactsd.contact-provider"];

  return v4;
}

+ (void)invalidateCache
{
  v2 = +[_TtC8Contacts29CNContactProviderSupportCache sharedCache];
  [v2 invalidateCache];
}

- (id)requestHostDomainCommand:(id)command error:(id *)error
{
  commandCopy = command;
  commandType = [commandCopy commandType];
  v8 = [commandType isEqualToString:@"FetchDomainEnabled"];

  if (v8)
  {
    bundleIdentifier = [commandCopy bundleIdentifier];
    v10 = [(CNContactProviderSupportManager *)self isProviderDomainEnabledWithBundleIdentifier:bundleIdentifier];

LABEL_3:
    v11 = 0;
    goto LABEL_16;
  }

  commandType2 = [commandCopy commandType];
  v13 = [commandType2 isEqualToString:@"FetchDomainContainerIdentifier"];

  if (v13)
  {
    providerContainer = [(CNContactProviderSupportManager *)self providerContainer];
    identifier = [providerContainer identifier];

    goto LABEL_20;
  }

  commandType3 = [commandCopy commandType];
  v17 = [commandType3 isEqualToString:@"SynchronizeDomain"];

  if (v17)
  {
    session = [commandCopy session];
    v52 = 0;
    [(CNContactProviderSupportManager *)self synchronizeProviderDomainUsingSession:session error:&v52];
    v19 = v52;
LABEL_8:
    v11 = v19;
LABEL_14:

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  commandType4 = [commandCopy commandType];
  v21 = [commandType4 isEqualToString:@"InvalidateExtension"];

  if (v21)
  {
    session = [commandCopy domainIdentifier];
    bundleIdentifier2 = [commandCopy bundleIdentifier];
    v51 = 0;
    [(CNContactProviderSupportManager *)self invalidateExtensionForDomain:session bundleIdentifier:bundleIdentifier2 error:&v51];
    v23 = v51;
LABEL_13:
    v11 = v23;

    goto LABEL_14;
  }

  commandType5 = [commandCopy commandType];
  v25 = [commandType5 isEqualToString:@"ResetEnumeration"];

  if (v25)
  {
    session = [commandCopy domainIdentifier];
    bundleIdentifier2 = [commandCopy bundleIdentifier];
    v50 = 0;
    [(CNContactProviderSupportManager *)self resetEnumerationForDomain:session bundleIdentifier:bundleIdentifier2 error:&v50];
    v23 = v50;
    goto LABEL_13;
  }

  commandType6 = [commandCopy commandType];
  v30 = [commandType6 isEqualToString:@"AddDomain"];

  if (v30)
  {
    session = [commandCopy domain];
    v49 = 0;
    [(CNContactProviderSupportManager *)self addDomain:session error:&v49];
    v19 = v49;
    goto LABEL_8;
  }

  commandType7 = [commandCopy commandType];
  v32 = [commandType7 isEqualToString:@"RemoveDomain"];

  if (v32)
  {
    session = [commandCopy domainIdentifier];
    bundleIdentifier2 = [commandCopy bundleIdentifier];
    v48 = 0;
    [(CNContactProviderSupportManager *)self removeDomain:session bundleIdentifier:bundleIdentifier2 error:&v48];
    v23 = v48;
    goto LABEL_13;
  }

  commandType8 = [commandCopy commandType];
  v34 = [commandType8 isEqualToString:@"FetchRegisteredDomains"];

  if (!v34)
  {
    commandType9 = [commandCopy commandType];
    v37 = [commandType9 isEqualToString:@"EnableDomain"];

    if (v37)
    {
      session = [commandCopy domainIdentifier];
      bundleIdentifier2 = [commandCopy bundleIdentifier];
      v46 = 0;
      -[CNContactProviderSupportManager enableDomain:bundleIdentifier:shouldSynchronize:error:](self, "enableDomain:bundleIdentifier:shouldSynchronize:error:", session, bundleIdentifier2, [commandCopy shouldSynchronize], &v46);
      v23 = v46;
    }

    else
    {
      commandType10 = [commandCopy commandType];
      v39 = [commandType10 isEqualToString:@"DisableDomain"];

      if (!v39)
      {
        commandType11 = [commandCopy commandType];
        v41 = [commandType11 isEqualToString:@"FetchAllDomainsCount"];

        if (v41)
        {
          fetchExtensionCount = [(CNContactProviderSupportManager *)self fetchExtensionCount];
        }

        else
        {
          commandType12 = [commandCopy commandType];
          v44 = [commandType12 isEqualToString:@"FetchAllDomains"];

          if (!v44)
          {
            v11 = [CNErrorFactory errorWithCode:1002];
            goto LABEL_15;
          }

          fetchExtensionCount = [(CNContactProviderSupportManager *)self fetchExtensionItems];
        }

        v10 = fetchExtensionCount;
        goto LABEL_3;
      }

      session = [commandCopy domainIdentifier];
      bundleIdentifier2 = [commandCopy bundleIdentifier];
      v45 = 0;
      [(CNContactProviderSupportManager *)self disableDomain:session bundleIdentifier:bundleIdentifier2 error:&v45];
      v23 = v45;
    }

    goto LABEL_13;
  }

  bundleIdentifier3 = [commandCopy bundleIdentifier];
  v47 = 0;
  v10 = [(CNContactProviderSupportManager *)self registeredDomainsForBundleIdentifier:bundleIdentifier3 error:&v47];
  v11 = v47;

LABEL_16:
  v26 = v10;
  identifier = v26;
  if (error && !v26)
  {
    v27 = v11;
    *error = v11;
  }

LABEL_20:

  return identifier;
}

- (CNContainer)providerContainer
{
  clientLoggingIdentifier = [(CNContactProviderSupportManager *)self clientLoggingIdentifier];
  v4 = [(CNContactProviderSupportManager *)self providerContainerWithBundleIdentifier:clientLoggingIdentifier];

  return v4;
}

- (id)providerContainerWithBundleIdentifier:(id)identifier
{
  v4 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:identifier];
  providerHost = [(CNContactProviderSupportManager *)self providerHost];
  v6 = [providerHost providerContainerFor:v4];

  return v6;
}

- (BOOL)synchronizeProviderDomainUsingSession:(id)session error:(id *)error
{
  sessionCopy = session;
  if (!sessionCopy)
  {
    if (CNGuardOSLog_cn_once_token_0_4 != -1)
    {
      [CNContactProviderSupportManager initWithAuditToken:];
    }

    v7 = CNGuardOSLog_cn_once_object_0_4;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_4, OS_LOG_TYPE_FAULT))
    {
      [CNContactProviderSupportManager synchronizeProviderDomainUsingSession:v7 error:?];
    }
  }

  moderator = [(CNContactProviderSupportManager *)self moderator];
  clientLoggingIdentifier = [(CNContactProviderSupportManager *)self clientLoggingIdentifier];
  providerHost = [(CNContactProviderSupportManager *)self providerHost];
  v11 = [moderator synchronizeProviderDomainUsingSession:sessionCopy bundleIdentifier:clientLoggingIdentifier providerHost:providerHost];

  v12 = [MEMORY[0x1E6996810] resultWithFuture:v11 timeout:1800.0];
  isSuccess = [v12 isSuccess];
  if ((isSuccess & 1) == 0)
  {
    error = [v12 error];
    if (error)
    {
      error = error;
      *error = error;
    }
  }

  return isSuccess;
}

- (BOOL)invalidateExtensionForDomain:(id)domain bundleIdentifier:(id)identifier error:(id *)error
{
  domainCopy = domain;
  v9 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:identifier];
  v10 = objc_alloc_init(MEMORY[0x1E69967D0]);
  providerHost = [(CNContactProviderSupportManager *)self providerHost];
  errorOnlyCompletionHandlerAdapter = [v10 errorOnlyCompletionHandlerAdapter];
  [providerHost invalidateExtensionFor:domainCopy bundleIdentifier:v9 completionHandler:errorOnlyCompletionHandlerAdapter];

  v13 = MEMORY[0x1E6996810];
  future = [v10 future];
  v15 = [v13 resultWithFuture:future];

  v16 = v15;
  isSuccess = [v16 isSuccess];
  if ((isSuccess & 1) == 0)
  {
    error = [v16 error];
    if (error)
    {
      error = error;
      *error = error;
    }
  }

  return isSuccess;
}

- (BOOL)resetEnumerationForDomain:(id)domain bundleIdentifier:(id)identifier error:(id *)error
{
  domainCopy = domain;
  v9 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:identifier];
  v10 = objc_alloc_init(MEMORY[0x1E69967D0]);
  providerHost = [(CNContactProviderSupportManager *)self providerHost];
  errorOnlyCompletionHandlerAdapter = [v10 errorOnlyCompletionHandlerAdapter];
  [providerHost resetEnumerationFor:domainCopy bundleIdentifier:v9 completionHandler:errorOnlyCompletionHandlerAdapter];

  v13 = MEMORY[0x1E6996810];
  future = [v10 future];
  v15 = [v13 resultWithFuture:future];

  v16 = v15;
  isSuccess = [v16 isSuccess];
  if ((isSuccess & 1) == 0)
  {
    error = [v16 error];
    if (error)
    {
      error = error;
      *error = error;
    }
  }

  return isSuccess;
}

- (id)isProviderDomainEnabledWithBundleIdentifier:(id)identifier
{
  v3 = [(CNContactProviderSupportManager *)self providerContainerWithBundleIdentifier:identifier];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isEnabled")}];

  return v4;
}

- (BOOL)addDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  bundleIdentifier = [domainCopy bundleIdentifier];
  v8 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:bundleIdentifier];

  v9 = objc_alloc_init(MEMORY[0x1E69967D0]);
  providerHost = [(CNContactProviderSupportManager *)self providerHost];
  errorOnlyCompletionHandlerAdapter = [v9 errorOnlyCompletionHandlerAdapter];
  [providerHost addDomain:domainCopy bundleIdentifier:v8 completionHandler:errorOnlyCompletionHandlerAdapter];

  v12 = MEMORY[0x1E6996810];
  future = [v9 future];
  v14 = [v12 resultWithFuture:future];

  v15 = v14;
  isSuccess = [v15 isSuccess];
  if ((isSuccess & 1) == 0)
  {
    error = [v15 error];
    if (error)
    {
      error = error;
      *error = error;
    }
  }

  return isSuccess;
}

- (BOOL)removeDomain:(id)domain bundleIdentifier:(id)identifier error:(id *)error
{
  domainCopy = domain;
  v9 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:identifier];
  v10 = objc_alloc_init(MEMORY[0x1E69967D0]);
  providerHost = [(CNContactProviderSupportManager *)self providerHost];
  errorOnlyCompletionHandlerAdapter = [v10 errorOnlyCompletionHandlerAdapter];
  [providerHost removeDomainFor:domainCopy bundleIdentifier:v9 completionHandler:errorOnlyCompletionHandlerAdapter];

  v13 = MEMORY[0x1E6996810];
  future = [v10 future];
  v15 = [v13 resultWithFuture:future];

  v16 = v15;
  isSuccess = [v16 isSuccess];
  if ((isSuccess & 1) == 0)
  {
    error = [v16 error];
    if (error)
    {
      error = error;
      *error = error;
    }
  }

  return isSuccess;
}

- (id)registeredDomainsForBundleIdentifier:(id)identifier error:(id *)error
{
  v6 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:identifier];
  v7 = objc_alloc_init(MEMORY[0x1E69967D0]);
  providerHost = [(CNContactProviderSupportManager *)self providerHost];
  completionHandlerAdapter = [v7 completionHandlerAdapter];
  [providerHost registeredDomainsFor:v6 completionHandler:completionHandlerAdapter];

  v10 = MEMORY[0x1E6996810];
  future = [v7 future];
  v12 = [v10 resultWithFuture:future];

  v13 = v12;
  value = [v13 value];

  if (value)
  {
    value2 = [v13 value];
  }

  else
  {
    error = [v13 error];
    if (error)
    {
      error = error;
      *error = error;
    }

    value2 = 0;
  }

  return value2;
}

- (BOOL)enableDomain:(id)domain bundleIdentifier:(id)identifier shouldSynchronize:(BOOL)synchronize error:(id *)error
{
  synchronizeCopy = synchronize;
  domainCopy = domain;
  v11 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:identifier];
  v12 = [(CNContactProviderSupportManager *)self isProviderDomainEnabledWithBundleIdentifier:v11];
  bOOLValue = [v12 BOOLValue];

  v14 = identifier == 0;
  v15 = objc_alloc_init(MEMORY[0x1E69967D0]);
  providerHost = [(CNContactProviderSupportManager *)self providerHost];
  errorOnlyCompletionHandlerAdapter = [v15 errorOnlyCompletionHandlerAdapter];
  [providerHost enableDomainFor:domainCopy bundleIdentifier:v11 showPrompt:v14 & (bOOLValue ^ 1u) shouldSynchronize:synchronizeCopy completionHandler:errorOnlyCompletionHandlerAdapter];

  v18 = MEMORY[0x1E6996810];
  future = [v15 future];
  v20 = [v18 resultWithFuture:future];

  v21 = v20;
  isSuccess = [v21 isSuccess];
  if ((isSuccess & 1) == 0)
  {
    error = [v21 error];
    if (error)
    {
      error = error;
      *error = error;
    }
  }

  return isSuccess;
}

- (BOOL)disableDomain:(id)domain bundleIdentifier:(id)identifier error:(id *)error
{
  domainCopy = domain;
  v9 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:identifier];
  v10 = objc_alloc_init(MEMORY[0x1E69967D0]);
  providerHost = [(CNContactProviderSupportManager *)self providerHost];
  errorOnlyCompletionHandlerAdapter = [v10 errorOnlyCompletionHandlerAdapter];
  [providerHost disableDomainFor:domainCopy bundleIdentifier:v9 completionHandler:errorOnlyCompletionHandlerAdapter];

  v13 = MEMORY[0x1E6996810];
  future = [v10 future];
  v15 = [v13 resultWithFuture:future];

  v16 = v15;
  isSuccess = [v16 isSuccess];
  if ((isSuccess & 1) == 0)
  {
    error = [v16 error];
    if (error)
    {
      error = error;
      *error = error;
    }
  }

  return isSuccess;
}

- (id)getActualBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    identifierCopy = [(CNContactProviderSupportManager *)self clientLoggingIdentifier];
  }

  return identifierCopy;
}

- (id)fetchExtensionCount
{
  providerHost = [(CNContactProviderSupportManager *)self providerHost];
  extensionCount = [providerHost extensionCount];

  return extensionCount;
}

- (id)fetchExtensionItems
{
  providerHost = [(CNContactProviderSupportManager *)self providerHost];
  extensionItems = [providerHost extensionItems];

  return extensionItems;
}

@end