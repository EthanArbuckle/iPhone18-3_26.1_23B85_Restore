@interface CNContactProviderSupportManager
+ (BOOL)isConnectionForContactProvider:(id)a3;
+ (void)invalidateCache;
- (BOOL)addDomain:(id)a3 error:(id *)a4;
- (BOOL)disableDomain:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)enableDomain:(id)a3 bundleIdentifier:(id)a4 shouldSynchronize:(BOOL)a5 error:(id *)a6;
- (BOOL)invalidateExtensionForDomain:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)removeDomain:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)resetEnumerationForDomain:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)synchronizeProviderDomainUsingSession:(id)a3 error:(id *)a4;
- (CNContactProviderSupportManager)initWithAuditToken:(id)a3;
- (CNContainer)providerContainer;
- (id)fetchExtensionCount;
- (id)fetchExtensionItems;
- (id)getActualBundleIdentifier:(id)a3;
- (id)isProviderDomainEnabledWithBundleIdentifier:(id)a3;
- (id)providerContainerWithBundleIdentifier:(id)a3;
- (id)registeredDomainsForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)requestHostDomainCommand:(id)a3 error:(id *)a4;
@end

@implementation CNContactProviderSupportManager

- (CNContactProviderSupportManager)initWithAuditToken:(id)a3
{
  v4 = a3;
  if (!v4)
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
    v7 = [MEMORY[0x1E6996640] bundleIdentifierForAuditToken:v4];
    clientLoggingIdentifier = v6->_clientLoggingIdentifier;
    v6->_clientLoggingIdentifier = v7;
    v9 = v7;

    v10 = objc_alloc_init(_TtC8Contacts28CNContactProviderSupportHost);
    providerHost = v6->_providerHost;
    v6->_providerHost = v10;

    v12 = +[CNContactProviderSupportModerator sharedInstance];
    moderator = v6->_moderator;
    v6->_moderator = v12;

    v14 = [MEMORY[0x1E6996818] offMainThreadScheduler];

    [v14 performBlock:&__block_literal_global_56];
    v15 = v6;
  }

  return v6;
}

void __54__CNContactProviderSupportManager_initWithAuditToken___block_invoke()
{
  v0 = +[_TtC8Contacts29CNContactProviderSupportCache sharedCache];
}

+ (BOOL)isConnectionForContactProvider:(id)a3
{
  v3 = [a3 serviceName];
  v4 = [v3 isEqualToString:@"com.apple.contactsd.contact-provider"];

  return v4;
}

+ (void)invalidateCache
{
  v2 = +[_TtC8Contacts29CNContactProviderSupportCache sharedCache];
  [v2 invalidateCache];
}

- (id)requestHostDomainCommand:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 commandType];
  v8 = [v7 isEqualToString:@"FetchDomainEnabled"];

  if (v8)
  {
    v9 = [v6 bundleIdentifier];
    v10 = [(CNContactProviderSupportManager *)self isProviderDomainEnabledWithBundleIdentifier:v9];

LABEL_3:
    v11 = 0;
    goto LABEL_16;
  }

  v12 = [v6 commandType];
  v13 = [v12 isEqualToString:@"FetchDomainContainerIdentifier"];

  if (v13)
  {
    v14 = [(CNContactProviderSupportManager *)self providerContainer];
    v15 = [v14 identifier];

    goto LABEL_20;
  }

  v16 = [v6 commandType];
  v17 = [v16 isEqualToString:@"SynchronizeDomain"];

  if (v17)
  {
    v18 = [v6 session];
    v52 = 0;
    [(CNContactProviderSupportManager *)self synchronizeProviderDomainUsingSession:v18 error:&v52];
    v19 = v52;
LABEL_8:
    v11 = v19;
LABEL_14:

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v20 = [v6 commandType];
  v21 = [v20 isEqualToString:@"InvalidateExtension"];

  if (v21)
  {
    v18 = [v6 domainIdentifier];
    v22 = [v6 bundleIdentifier];
    v51 = 0;
    [(CNContactProviderSupportManager *)self invalidateExtensionForDomain:v18 bundleIdentifier:v22 error:&v51];
    v23 = v51;
LABEL_13:
    v11 = v23;

    goto LABEL_14;
  }

  v24 = [v6 commandType];
  v25 = [v24 isEqualToString:@"ResetEnumeration"];

  if (v25)
  {
    v18 = [v6 domainIdentifier];
    v22 = [v6 bundleIdentifier];
    v50 = 0;
    [(CNContactProviderSupportManager *)self resetEnumerationForDomain:v18 bundleIdentifier:v22 error:&v50];
    v23 = v50;
    goto LABEL_13;
  }

  v29 = [v6 commandType];
  v30 = [v29 isEqualToString:@"AddDomain"];

  if (v30)
  {
    v18 = [v6 domain];
    v49 = 0;
    [(CNContactProviderSupportManager *)self addDomain:v18 error:&v49];
    v19 = v49;
    goto LABEL_8;
  }

  v31 = [v6 commandType];
  v32 = [v31 isEqualToString:@"RemoveDomain"];

  if (v32)
  {
    v18 = [v6 domainIdentifier];
    v22 = [v6 bundleIdentifier];
    v48 = 0;
    [(CNContactProviderSupportManager *)self removeDomain:v18 bundleIdentifier:v22 error:&v48];
    v23 = v48;
    goto LABEL_13;
  }

  v33 = [v6 commandType];
  v34 = [v33 isEqualToString:@"FetchRegisteredDomains"];

  if (!v34)
  {
    v36 = [v6 commandType];
    v37 = [v36 isEqualToString:@"EnableDomain"];

    if (v37)
    {
      v18 = [v6 domainIdentifier];
      v22 = [v6 bundleIdentifier];
      v46 = 0;
      -[CNContactProviderSupportManager enableDomain:bundleIdentifier:shouldSynchronize:error:](self, "enableDomain:bundleIdentifier:shouldSynchronize:error:", v18, v22, [v6 shouldSynchronize], &v46);
      v23 = v46;
    }

    else
    {
      v38 = [v6 commandType];
      v39 = [v38 isEqualToString:@"DisableDomain"];

      if (!v39)
      {
        v40 = [v6 commandType];
        v41 = [v40 isEqualToString:@"FetchAllDomainsCount"];

        if (v41)
        {
          v42 = [(CNContactProviderSupportManager *)self fetchExtensionCount];
        }

        else
        {
          v43 = [v6 commandType];
          v44 = [v43 isEqualToString:@"FetchAllDomains"];

          if (!v44)
          {
            v11 = [CNErrorFactory errorWithCode:1002];
            goto LABEL_15;
          }

          v42 = [(CNContactProviderSupportManager *)self fetchExtensionItems];
        }

        v10 = v42;
        goto LABEL_3;
      }

      v18 = [v6 domainIdentifier];
      v22 = [v6 bundleIdentifier];
      v45 = 0;
      [(CNContactProviderSupportManager *)self disableDomain:v18 bundleIdentifier:v22 error:&v45];
      v23 = v45;
    }

    goto LABEL_13;
  }

  v35 = [v6 bundleIdentifier];
  v47 = 0;
  v10 = [(CNContactProviderSupportManager *)self registeredDomainsForBundleIdentifier:v35 error:&v47];
  v11 = v47;

LABEL_16:
  v26 = v10;
  v15 = v26;
  if (a4 && !v26)
  {
    v27 = v11;
    *a4 = v11;
  }

LABEL_20:

  return v15;
}

- (CNContainer)providerContainer
{
  v3 = [(CNContactProviderSupportManager *)self clientLoggingIdentifier];
  v4 = [(CNContactProviderSupportManager *)self providerContainerWithBundleIdentifier:v3];

  return v4;
}

- (id)providerContainerWithBundleIdentifier:(id)a3
{
  v4 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:a3];
  v5 = [(CNContactProviderSupportManager *)self providerHost];
  v6 = [v5 providerContainerFor:v4];

  return v6;
}

- (BOOL)synchronizeProviderDomainUsingSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
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

  v8 = [(CNContactProviderSupportManager *)self moderator];
  v9 = [(CNContactProviderSupportManager *)self clientLoggingIdentifier];
  v10 = [(CNContactProviderSupportManager *)self providerHost];
  v11 = [v8 synchronizeProviderDomainUsingSession:v6 bundleIdentifier:v9 providerHost:v10];

  v12 = [MEMORY[0x1E6996810] resultWithFuture:v11 timeout:1800.0];
  v13 = [v12 isSuccess];
  if ((v13 & 1) == 0)
  {
    v14 = [v12 error];
    if (a4)
    {
      v14 = v14;
      *a4 = v14;
    }
  }

  return v13;
}

- (BOOL)invalidateExtensionForDomain:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:a4];
  v10 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v11 = [(CNContactProviderSupportManager *)self providerHost];
  v12 = [v10 errorOnlyCompletionHandlerAdapter];
  [v11 invalidateExtensionFor:v8 bundleIdentifier:v9 completionHandler:v12];

  v13 = MEMORY[0x1E6996810];
  v14 = [v10 future];
  v15 = [v13 resultWithFuture:v14];

  v16 = v15;
  v17 = [v16 isSuccess];
  if ((v17 & 1) == 0)
  {
    v18 = [v16 error];
    if (a5)
    {
      v18 = v18;
      *a5 = v18;
    }
  }

  return v17;
}

- (BOOL)resetEnumerationForDomain:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:a4];
  v10 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v11 = [(CNContactProviderSupportManager *)self providerHost];
  v12 = [v10 errorOnlyCompletionHandlerAdapter];
  [v11 resetEnumerationFor:v8 bundleIdentifier:v9 completionHandler:v12];

  v13 = MEMORY[0x1E6996810];
  v14 = [v10 future];
  v15 = [v13 resultWithFuture:v14];

  v16 = v15;
  v17 = [v16 isSuccess];
  if ((v17 & 1) == 0)
  {
    v18 = [v16 error];
    if (a5)
    {
      v18 = v18;
      *a5 = v18;
    }
  }

  return v17;
}

- (id)isProviderDomainEnabledWithBundleIdentifier:(id)a3
{
  v3 = [(CNContactProviderSupportManager *)self providerContainerWithBundleIdentifier:a3];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isEnabled")}];

  return v4;
}

- (BOOL)addDomain:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 bundleIdentifier];
  v8 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:v7];

  v9 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v10 = [(CNContactProviderSupportManager *)self providerHost];
  v11 = [v9 errorOnlyCompletionHandlerAdapter];
  [v10 addDomain:v6 bundleIdentifier:v8 completionHandler:v11];

  v12 = MEMORY[0x1E6996810];
  v13 = [v9 future];
  v14 = [v12 resultWithFuture:v13];

  v15 = v14;
  v16 = [v15 isSuccess];
  if ((v16 & 1) == 0)
  {
    v17 = [v15 error];
    if (a4)
    {
      v17 = v17;
      *a4 = v17;
    }
  }

  return v16;
}

- (BOOL)removeDomain:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:a4];
  v10 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v11 = [(CNContactProviderSupportManager *)self providerHost];
  v12 = [v10 errorOnlyCompletionHandlerAdapter];
  [v11 removeDomainFor:v8 bundleIdentifier:v9 completionHandler:v12];

  v13 = MEMORY[0x1E6996810];
  v14 = [v10 future];
  v15 = [v13 resultWithFuture:v14];

  v16 = v15;
  v17 = [v16 isSuccess];
  if ((v17 & 1) == 0)
  {
    v18 = [v16 error];
    if (a5)
    {
      v18 = v18;
      *a5 = v18;
    }
  }

  return v17;
}

- (id)registeredDomainsForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:a3];
  v7 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v8 = [(CNContactProviderSupportManager *)self providerHost];
  v9 = [v7 completionHandlerAdapter];
  [v8 registeredDomainsFor:v6 completionHandler:v9];

  v10 = MEMORY[0x1E6996810];
  v11 = [v7 future];
  v12 = [v10 resultWithFuture:v11];

  v13 = v12;
  v14 = [v13 value];

  if (v14)
  {
    v15 = [v13 value];
  }

  else
  {
    v16 = [v13 error];
    if (a4)
    {
      v16 = v16;
      *a4 = v16;
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)enableDomain:(id)a3 bundleIdentifier:(id)a4 shouldSynchronize:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:a4];
  v12 = [(CNContactProviderSupportManager *)self isProviderDomainEnabledWithBundleIdentifier:v11];
  v13 = [v12 BOOLValue];

  v14 = a4 == 0;
  v15 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v16 = [(CNContactProviderSupportManager *)self providerHost];
  v17 = [v15 errorOnlyCompletionHandlerAdapter];
  [v16 enableDomainFor:v10 bundleIdentifier:v11 showPrompt:v14 & (v13 ^ 1u) shouldSynchronize:v7 completionHandler:v17];

  v18 = MEMORY[0x1E6996810];
  v19 = [v15 future];
  v20 = [v18 resultWithFuture:v19];

  v21 = v20;
  v22 = [v21 isSuccess];
  if ((v22 & 1) == 0)
  {
    v23 = [v21 error];
    if (a6)
    {
      v23 = v23;
      *a6 = v23;
    }
  }

  return v22;
}

- (BOOL)disableDomain:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(CNContactProviderSupportManager *)self getActualBundleIdentifier:a4];
  v10 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v11 = [(CNContactProviderSupportManager *)self providerHost];
  v12 = [v10 errorOnlyCompletionHandlerAdapter];
  [v11 disableDomainFor:v8 bundleIdentifier:v9 completionHandler:v12];

  v13 = MEMORY[0x1E6996810];
  v14 = [v10 future];
  v15 = [v13 resultWithFuture:v14];

  v16 = v15;
  v17 = [v16 isSuccess];
  if ((v17 & 1) == 0)
  {
    v18 = [v16 error];
    if (a5)
    {
      v18 = v18;
      *a5 = v18;
    }
  }

  return v17;
}

- (id)getActualBundleIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(CNContactProviderSupportManager *)self clientLoggingIdentifier];
  }

  return v4;
}

- (id)fetchExtensionCount
{
  v2 = [(CNContactProviderSupportManager *)self providerHost];
  v3 = [v2 extensionCount];

  return v3;
}

- (id)fetchExtensionItems
{
  v2 = [(CNContactProviderSupportManager *)self providerHost];
  v3 = [v2 extensionItems];

  return v3;
}

@end