@interface FPXDomainContext
- (BOOL)shouldIngestDomainUserInfoUpdateWithOldVersion:(id)a3 newVersion:(id)a4;
- (FPXDomainContext)initWithVendorInstance:(id)a3 domain:(id)a4 extensionContext:(id)a5 providerDomain:(id)a6 domainVersion:(id)a7;
- (FPXExtensionContext)extensionContext;
- (NSDictionary)userInfo;
- (NSFileProviderDomainVersion)domainVersion;
- (NSFileProviderExtension)v2Instance;
- (id)currentResponseWithRequest:(id)a3;
- (id)instanceWithPrivateSelector:(SEL)a3;
- (id)internalErrorFromVendorError:(id)a3 callerDescription:(id)a4;
- (id)itemFromVendorItem:(id)a3;
- (id)itemIDFromVendorItemID:(id)a3;
- (id)itemIDsFromVendorItemIDs:(id)a3;
- (id)itemsFromVendorItems:(id)a3;
- (void)domainVersion;
- (void)invalidate;
- (void)prepareForDomainRemovalWithCompletionHandler:(id)a3;
- (void)retrieveUserInfoFromExtension;
- (void)updateCapabilities;
@end

@implementation FPXDomainContext

- (void)updateCapabilities
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"FPXDomainContext.m" lineNumber:83 description:{@"FPXExtensionContext initialized from a bundle that is not a plugin. Bundle proxy is %@ instead", a3}];
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

  v3 = self;
  objc_sync_enter(v3);
  v4 = [(NSFileProviderReplicatedExtension *)self->_vendorInstance domainVersion];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    p_lastKnownDomainVersion = &v3->_lastKnownDomainVersion;
    lastKnownDomainVersion = v3->_lastKnownDomainVersion;
    if (!lastKnownDomainVersion)
    {
LABEL_7:
      if (([v4 isEqual:lastKnownDomainVersion] & 1) == 0)
      {
        v7 = fp_current_or_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [(FPXDomainContext *)&v3->_lastKnownDomainVersion domainVersion];
        }

        objc_storeStrong(&v3->_lastKnownDomainVersion, v4);
        [(FPXDomainContext *)v3 retrieveUserInfoFromExtension];
      }

      v8 = v4;
      goto LABEL_15;
    }

    if (([v4 compare:?] & 0x8000000000000000) == 0)
    {
      lastKnownDomainVersion = *p_lastKnownDomainVersion;
      goto LABEL_7;
    }

    v12 = [(FPXDomainContext *)v3 domain];
    v13 = [v12 identifier];
    __FILEPROVIDER_BAD_DOMAIN_VERSION__(v13, *p_lastKnownDomainVersion, v4);
  }

  else
  {
    v9 = [(FPXDomainContext *)v3 domain];
    v10 = [v9 identifier];
    __FILEPROVIDER_BAD_DOMAIN_VERSION__(v10, v3->_lastKnownDomainVersion, v4);
  }

  v8 = 0;
LABEL_15:

  objc_sync_exit(v3);
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
    v3 = self->_vendorInstance;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      v3 = 0;
      goto LABEL_7;
    }

    v3 = [(NSFileProviderReplicatedExtension *)self->_vendorInstance extension];
  }

LABEL_7:

  return v3;
}

- (FPXDomainContext)initWithVendorInstance:(id)a3 domain:(id)a4 extensionContext:(id)a5 providerDomain:(id)a6 domainVersion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = FPXDomainContext;
  v17 = [(FPXDomainContext *)&v30 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_domain, a4);
    objc_storeStrong(&v18->_providerDomain, a6);
    v19 = [[FPExceptionToErrorProxy alloc] initWithTarget:v12];
    vendorInstance = v18->_vendorInstance;
    v18->_vendorInstance = v19;

    objc_storeWeak(&v18->_extensionContext, v14);
    v18->_usesFPFS = [v15 isUsingFPFS];
    objc_storeStrong(&v18->_lastKnownDomainVersion, a7);
    v18->_selfPid = getpid();
    v21 = [v15 identifier];
    v22 = [v21 fp_obfuscatedProviderDomainID];
    v23 = fpfs_create_log_for_provider([v22 UTF8String]);
    log = v18->_log;
    v18->_log = v23;

    [(FPXDomainContext *)v18 updateCapabilities];
    v25 = [v15 identifier];
    if ([v25 isEqual:@"com.apple.FileProvider.LocalStorage"])
    {
      v26 = FPIsFileIndexerEnabled();
    }

    else
    {
      v26 = 0;
    }

    if ((v18->_extensionCapabilities & 1) != 0 && (([v15 isUsingFPFS] | v26) & 1) == 0)
    {
      v27 = [[FPSpotlightIndexer alloc] initWithDomain:v13 providerDomain:v15 log:v18->_log supportURL:0 dropIndexDelegate:0];
      spotlightIndexer = v18->_spotlightIndexer;
      v18->_spotlightIndexer = v27;

      [(FPSpotlightIndexer *)v18->_spotlightIndexer setDomainContext:v18];
    }
  }

  return v18;
}

- (void)prepareForDomainRemovalWithCompletionHandler:(id)a3
{
  v4 = a3;
  spotlightIndexer = self->_spotlightIndexer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__FPXDomainContext_prepareForDomainRemovalWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7939100;
  v8 = v4;
  v6 = v4;
  [(FPSpotlightIndexer *)spotlightIndexer dropIndexAndInvalidateWithDropReason:1 completionHandler:v7];
}

- (id)internalErrorFromVendorError:(id)a3 callerDescription:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__FPXDomainContext_internalErrorFromVendorError_callerDescription___block_invoke;
  v6[3] = &unk_1E793E9B0;
  v6[4] = self;
  v4 = [a3 fp_internalErrorForVendorErrorWithCallerDescription:a4 itemCreationBlock:v6];

  return v4;
}

- (id)itemFromVendorItem:(id)a3
{
  if (a3)
  {
    v24 = a3;
    v5 = [(FPXDomainContext *)self extensionContext];

    if (!v5)
    {
      v6 = [(FPXDomainContext *)self extensionContext];

      if (!v6)
      {
        [(FPXDomainContext *)a2 itemFromVendorItem:?];
      }
    }

    v7 = [(FPXDomainContext *)self extensionContext];
    v8 = [v7 providerIdentifier];

    if (!v8)
    {
      v9 = [(FPXDomainContext *)self extensionContext];
      v10 = [v9 providerIdentifier];

      if (!v10)
      {
        [(FPXDomainContext *)a2 itemFromVendorItem:?];
      }
    }

    v11 = [FPItem alloc];
    v23 = [(FPXDomainContext *)self extensionContext];
    v12 = [v23 providerIdentifier];
    v13 = [(FPXDomainContext *)self domain];
    v14 = [v13 identifier];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = @"NSFileProviderDomainDefaultIdentifier";
    }

    v17 = [(FPXDomainContext *)self domain];
    v18 = [v17 spotlightDomainIdentifier];
    v19 = [(FPXDomainContext *)self extensionCapabilities];
    v20 = [(FPXDomainContext *)self extensionContext];
    v21 = -[FPItem initWithVendorItem:provider:domain:spotlightDomainIdentifier:extensionCapabilities:useFPFS:](v11, "initWithVendorItem:provider:domain:spotlightDomainIdentifier:extensionCapabilities:useFPFS:", v24, v12, v16, v18, v19, [v20 usesFPFS]);

    [(FPItem *)v21 setEnumerationOrigin:1];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)itemIDFromVendorItemID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [FPItemID alloc];
    v6 = [(FPXDomainContext *)self extensionContext];
    v7 = [v6 providerIdentifier];
    v8 = [(FPXDomainContext *)self domain];
    v9 = [v8 identifier];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"NSFileProviderDomainDefaultIdentifier";
    }

    v12 = [(FPItemID *)v5 initWithProviderID:v7 domainIdentifier:v11 itemIdentifier:v4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)itemsFromVendorItems:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__FPXDomainContext_itemsFromVendorItems___block_invoke;
  v5[3] = &unk_1E793E9D8;
  v5[4] = self;
  v3 = [a3 fp_map:v5];

  return v3;
}

- (id)itemIDsFromVendorItemIDs:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__FPXDomainContext_itemIDsFromVendorItemIDs___block_invoke;
  v5[3] = &unk_1E79392B0;
  v5[4] = self;
  v3 = [a3 fp_map:v5];

  return v3;
}

- (void)invalidate
{
  v2 = [(FPXDomainContext *)self vendorInstance];
  [v2 invalidate];
}

- (id)instanceWithPrivateSelector:(SEL)a3
{
  vendorInstance = self->_vendorInstance;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_vendorInstance;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSFileProviderReplicatedExtension *)self->_vendorInstance extension];
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
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
  v7 = *a1;
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (id)currentResponseWithRequest:(id)a3
{
  v4 = a3;
  if ([(FPXDomainContext *)self usesFPFS])
  {
    v5 = objc_opt_new();
    v6 = [(FPXDomainContext *)self domainVersion];
    [v5 setDomainVersion:v6];
    if (v4)
    {
      v7 = [v4 domainVersion];
      if ([(FPXDomainContext *)self shouldIngestDomainUserInfoUpdateWithOldVersion:v7 newVersion:v6])
      {
        v8 = [(FPXDomainContext *)self userInfo];
        [v5 setDomainUserInfo:v8];
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

- (BOOL)shouldIngestDomainUserInfoUpdateWithOldVersion:(id)a3 newVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = (v5 != 0) != (v6 != 0) || [v5 compare:v6] > 1;
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
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Domain version updated from %@ to %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end