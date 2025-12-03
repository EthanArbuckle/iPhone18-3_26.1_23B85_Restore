@interface FPXDomainContext
- (BOOL)shouldIngestDomainUserInfoUpdateWithOldVersion:(id)version newVersion:(id)newVersion;
- (FPXDomainContext)initWithVendorInstance:(id)instance domain:(id)domain extensionContext:(id)context providerDomain:(id)providerDomain domainVersion:(id)version;
- (FPXExtensionContext)extensionContext;
- (NSDictionary)userInfo;
- (NSFileProviderDomainVersion)domainVersion;
- (NSFileProviderExtension)v2Instance;
- (id)currentResponseWithRequest:(id)request;
- (id)instanceWithPrivateSelector:(SEL)selector;
- (id)internalErrorFromVendorError:(id)error callerDescription:(id)description;
- (id)itemFromVendorItem:(id)item;
- (id)itemIDFromVendorItemID:(id)d;
- (id)itemIDsFromVendorItemIDs:(id)ds;
- (id)itemsFromVendorItems:(id)items;
- (void)domainVersion;
- (void)invalidate;
- (void)prepareForDomainRemovalWithCompletionHandler:(id)handler;
- (void)retrieveUserInfoFromExtension;
- (void)updateCapabilities;
@end

@implementation FPXDomainContext

- (void)updateCapabilities
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"FPXDomainContext.m" lineNumber:83 description:{@"FPXExtensionContext initialized from a bundle that is not a plugin. Bundle proxy is %@ instead", a3}];
}

- (FPXExtensionContext)extensionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionContext);

  return WeakRetained;
}

- (NSFileProviderDomainVersion)domainVersion
{
  if (![(FPXDomainContext *)self usesFPFS]|| ![(NSFileProviderReplicatedExtension *)self->_vendorInstance conformsToProtocol:&unk_1F1FF3F48])
  {
    v8 = 0;
    goto LABEL_16;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  domainVersion = [(NSFileProviderReplicatedExtension *)self->_vendorInstance domainVersion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    p_lastKnownDomainVersion = &selfCopy->_lastKnownDomainVersion;
    lastKnownDomainVersion = selfCopy->_lastKnownDomainVersion;
    if (!lastKnownDomainVersion)
    {
LABEL_7:
      if (([domainVersion isEqual:lastKnownDomainVersion] & 1) == 0)
      {
        v7 = fp_current_or_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [(FPXDomainContext *)&selfCopy->_lastKnownDomainVersion domainVersion];
        }

        objc_storeStrong(&selfCopy->_lastKnownDomainVersion, domainVersion);
        [(FPXDomainContext *)selfCopy retrieveUserInfoFromExtension];
      }

      v8 = domainVersion;
      goto LABEL_15;
    }

    if (([domainVersion compare:?] & 0x8000000000000000) == 0)
    {
      lastKnownDomainVersion = *p_lastKnownDomainVersion;
      goto LABEL_7;
    }

    domain = [(FPXDomainContext *)selfCopy domain];
    identifier = [domain identifier];
    __FILEPROVIDER_BAD_DOMAIN_VERSION__(identifier, *p_lastKnownDomainVersion, domainVersion);
  }

  else
  {
    domain2 = [(FPXDomainContext *)selfCopy domain];
    identifier2 = [domain2 identifier];
    __FILEPROVIDER_BAD_DOMAIN_VERSION__(identifier2, selfCopy->_lastKnownDomainVersion, domainVersion);
  }

  v8 = 0;
LABEL_15:

  objc_sync_exit(selfCopy);
LABEL_16:

  return v8;
}

- (NSFileProviderExtension)v2Instance
{
  if ([(FPXDomainContext *)self usesFPFS])
  {
    goto LABEL_2;
  }

  vendorInstance = self->_vendorInstance;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    extension = self->_vendorInstance;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      extension = 0;
      goto LABEL_7;
    }

    extension = [(NSFileProviderReplicatedExtension *)self->_vendorInstance extension];
  }

LABEL_7:

  return extension;
}

- (FPXDomainContext)initWithVendorInstance:(id)instance domain:(id)domain extensionContext:(id)context providerDomain:(id)providerDomain domainVersion:(id)version
{
  instanceCopy = instance;
  domainCopy = domain;
  contextCopy = context;
  providerDomainCopy = providerDomain;
  versionCopy = version;
  v30.receiver = self;
  v30.super_class = FPXDomainContext;
  v17 = [(FPXDomainContext *)&v30 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_domain, domain);
    objc_storeStrong(&v18->_providerDomain, providerDomain);
    v19 = [[FPExceptionToErrorProxy alloc] initWithTarget:instanceCopy];
    vendorInstance = v18->_vendorInstance;
    v18->_vendorInstance = v19;

    objc_storeWeak(&v18->_extensionContext, contextCopy);
    v18->_usesFPFS = [providerDomainCopy isUsingFPFS];
    objc_storeStrong(&v18->_lastKnownDomainVersion, version);
    v18->_selfPid = getpid();
    identifier = [providerDomainCopy identifier];
    fp_obfuscatedProviderDomainID = [identifier fp_obfuscatedProviderDomainID];
    v23 = fpfs_create_log_for_provider([fp_obfuscatedProviderDomainID UTF8String]);
    log = v18->_log;
    v18->_log = v23;

    [(FPXDomainContext *)v18 updateCapabilities];
    identifier2 = [providerDomainCopy identifier];
    if ([identifier2 isEqual:@"com.apple.FileProvider.LocalStorage"])
    {
      v26 = FPIsFileIndexerEnabled();
    }

    else
    {
      v26 = 0;
    }

    if ((v18->_extensionCapabilities & 1) != 0 && (([providerDomainCopy isUsingFPFS] | v26) & 1) == 0)
    {
      v27 = [[FPSpotlightIndexer alloc] initWithDomain:domainCopy providerDomain:providerDomainCopy log:v18->_log supportURL:0 dropIndexDelegate:0];
      spotlightIndexer = v18->_spotlightIndexer;
      v18->_spotlightIndexer = v27;

      [(FPSpotlightIndexer *)v18->_spotlightIndexer setDomainContext:v18];
    }
  }

  return v18;
}

- (void)prepareForDomainRemovalWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  spotlightIndexer = self->_spotlightIndexer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__FPXDomainContext_prepareForDomainRemovalWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7939100;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(FPSpotlightIndexer *)spotlightIndexer dropIndexAndInvalidateWithDropReason:1 completionHandler:v7];
}

- (id)internalErrorFromVendorError:(id)error callerDescription:(id)description
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__FPXDomainContext_internalErrorFromVendorError_callerDescription___block_invoke;
  v6[3] = &unk_1E793E9B0;
  v6[4] = self;
  v4 = [error fp_internalErrorForVendorErrorWithCallerDescription:description itemCreationBlock:v6];

  return v4;
}

- (id)itemFromVendorItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    extensionContext = [(FPXDomainContext *)self extensionContext];

    if (!extensionContext)
    {
      extensionContext2 = [(FPXDomainContext *)self extensionContext];

      if (!extensionContext2)
      {
        [(FPXDomainContext *)a2 itemFromVendorItem:?];
      }
    }

    extensionContext3 = [(FPXDomainContext *)self extensionContext];
    providerIdentifier = [extensionContext3 providerIdentifier];

    if (!providerIdentifier)
    {
      extensionContext4 = [(FPXDomainContext *)self extensionContext];
      providerIdentifier2 = [extensionContext4 providerIdentifier];

      if (!providerIdentifier2)
      {
        [(FPXDomainContext *)a2 itemFromVendorItem:?];
      }
    }

    v11 = [FPItem alloc];
    extensionContext5 = [(FPXDomainContext *)self extensionContext];
    providerIdentifier3 = [extensionContext5 providerIdentifier];
    domain = [(FPXDomainContext *)self domain];
    identifier = [domain identifier];
    v15 = identifier;
    if (identifier)
    {
      v16 = identifier;
    }

    else
    {
      v16 = @"NSFileProviderDomainDefaultIdentifier";
    }

    domain2 = [(FPXDomainContext *)self domain];
    spotlightDomainIdentifier = [domain2 spotlightDomainIdentifier];
    extensionCapabilities = [(FPXDomainContext *)self extensionCapabilities];
    extensionContext6 = [(FPXDomainContext *)self extensionContext];
    v21 = -[FPItem initWithVendorItem:provider:domain:spotlightDomainIdentifier:extensionCapabilities:useFPFS:](v11, "initWithVendorItem:provider:domain:spotlightDomainIdentifier:extensionCapabilities:useFPFS:", itemCopy, providerIdentifier3, v16, spotlightDomainIdentifier, extensionCapabilities, [extensionContext6 usesFPFS]);

    [(FPItem *)v21 setEnumerationOrigin:1];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)itemIDFromVendorItemID:(id)d
{
  if (d)
  {
    dCopy = d;
    v5 = [FPItemID alloc];
    extensionContext = [(FPXDomainContext *)self extensionContext];
    providerIdentifier = [extensionContext providerIdentifier];
    domain = [(FPXDomainContext *)self domain];
    identifier = [domain identifier];
    v10 = identifier;
    if (identifier)
    {
      v11 = identifier;
    }

    else
    {
      v11 = @"NSFileProviderDomainDefaultIdentifier";
    }

    v12 = [(FPItemID *)v5 initWithProviderID:providerIdentifier domainIdentifier:v11 itemIdentifier:dCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)itemsFromVendorItems:(id)items
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__FPXDomainContext_itemsFromVendorItems___block_invoke;
  v5[3] = &unk_1E793E9D8;
  v5[4] = self;
  v3 = [items fp_map:v5];

  return v3;
}

- (id)itemIDsFromVendorItemIDs:(id)ds
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__FPXDomainContext_itemIDsFromVendorItemIDs___block_invoke;
  v5[3] = &unk_1E79392B0;
  v5[4] = self;
  v3 = [ds fp_map:v5];

  return v3;
}

- (void)invalidate
{
  vendorInstance = [(FPXDomainContext *)self vendorInstance];
  [vendorInstance invalidate];
}

- (id)instanceWithPrivateSelector:(SEL)selector
{
  vendorInstance = self->_vendorInstance;
  if (objc_opt_respondsToSelector())
  {
    extension = self->_vendorInstance;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    extension = [(NSFileProviderReplicatedExtension *)self->_vendorInstance extension];
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_7;
    }
  }

  extension = 0;
LABEL_7:

  return extension;
}

- (NSDictionary)userInfo
{
  if ([(FPXDomainContext *)self usesFPFS])
  {
    lastKnownUserInfo = self->_lastKnownUserInfo;
    if (lastKnownUserInfo)
    {
      goto LABEL_6;
    }

    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [FPXDomainContext userInfo];
    }

    [(FPXDomainContext *)self retrieveUserInfoFromExtension];
    lastKnownUserInfo = self->_lastKnownUserInfo;
    if (lastKnownUserInfo)
    {
LABEL_6:
      v5 = lastKnownUserInfo;
      goto LABEL_11;
    }

    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FPXDomainContext userInfo];
    }
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (void)retrieveUserInfoFromExtension
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *self;
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (id)currentResponseWithRequest:(id)request
{
  requestCopy = request;
  if ([(FPXDomainContext *)self usesFPFS])
  {
    v5 = objc_opt_new();
    domainVersion = [(FPXDomainContext *)self domainVersion];
    [v5 setDomainVersion:domainVersion];
    if (requestCopy)
    {
      domainVersion2 = [requestCopy domainVersion];
      if ([(FPXDomainContext *)self shouldIngestDomainUserInfoUpdateWithOldVersion:domainVersion2 newVersion:domainVersion])
      {
        userInfo = [(FPXDomainContext *)self userInfo];
        [v5 setDomainUserInfo:userInfo];
      }
    }

    if ([(FPProviderDomain *)self->_providerDomain appliesChangesAtomically])
    {
      [v5 setExtensionPid:self->_selfPid];
      ++self->_sequenceNumber;
      [v5 setSequenceNumber:?];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldIngestDomainUserInfoUpdateWithOldVersion:(id)version newVersion:(id)newVersion
{
  versionCopy = version;
  newVersionCopy = newVersion;
  v7 = newVersionCopy;
  if (versionCopy | newVersionCopy)
  {
    v8 = (versionCopy != 0) != (newVersionCopy != 0) || [versionCopy compare:newVersionCopy] > 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)itemFromVendorItem:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPXDomainContext.m" lineNumber:134 description:@"there should be an extension context"];
}

- (void)itemFromVendorItem:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPXDomainContext.m" lineNumber:135 description:@"there should be a provider identifier"];
}

- (void)domainVersion
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *self;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Domain version updated from %@ to %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end