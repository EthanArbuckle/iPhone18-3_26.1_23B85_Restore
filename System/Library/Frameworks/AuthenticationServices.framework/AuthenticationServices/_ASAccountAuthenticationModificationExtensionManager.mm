@interface _ASAccountAuthenticationModificationExtensionManager
+ (id)sharedManager;
- (_ASAccountAuthenticationModificationExtensionManager)init;
- (void)_beginExtensionDiscovery;
- (void)_buildDomainToExtensionDictionaryWithSharedWebCredentialsDatabaseEntries:(id)entries;
- (void)_endExtensionDiscovery;
- (void)_notifyObservers:(id)observers;
- (void)addChangeObserver:(id)observer;
- (void)dealloc;
- (void)extensionForDomain:(id)domain completionHandler:(id)handler;
- (void)removeChangeObserver:(id)observer;
@end

@implementation _ASAccountAuthenticationModificationExtensionManager

- (_ASAccountAuthenticationModificationExtensionManager)init
{
  v15.receiver = self;
  v15.super_class = _ASAccountAuthenticationModificationExtensionManager;
  v2 = [(_ASAccountAuthenticationModificationExtensionManager *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.AuthenticationServices.%@.%p", objc_opt_class(), v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.AuthenticationServices.ReadOnly.%@.%p", objc_opt_class(), v2];
    v7 = dispatch_queue_create_with_target_V2([v6 UTF8String], 0, *(v2 + 1));
    v8 = *(v2 + 2);
    *(v2 + 2) = v7;

    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    v10 = *(v2 + 6);
    *(v2 + 6) = orderedSet;

    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v12 = *(v2 + 8);
    *(v2 + 8) = safari_browserDefaults;

    v13 = v2;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_extensionMatchingToken)
  {
    [MEMORY[0x1E696ABD0] endMatchingExtensions:?];
  }

  v3.receiver = self;
  v3.super_class = _ASAccountAuthenticationModificationExtensionManager;
  [(_ASAccountAuthenticationModificationExtensionManager *)&v3 dealloc];
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69___ASAccountAuthenticationModificationExtensionManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

- (void)_beginExtensionDiscovery
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!self->_extensionMatchingToken)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E696ABD0];
    v11 = *MEMORY[0x1E696A2F8];
    v12[0] = *MEMORY[0x1E69C8E30];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80___ASAccountAuthenticationModificationExtensionManager__beginExtensionDiscovery__block_invoke;
    v8[3] = &unk_1E7AF7A30;
    objc_copyWeak(&v9, &location);
    v5 = [v3 beginMatchingExtensionsWithAttributes:v4 completion:v8];
    extensionMatchingToken = self->_extensionMatchingToken;
    self->_extensionMatchingToken = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_endExtensionDiscovery
{
  if (self->_extensionMatchingToken)
  {
    [MEMORY[0x1E696ABD0] endMatchingExtensions:?];
    extensionMatchingToken = self->_extensionMatchingToken;
    self->_extensionMatchingToken = 0;

    domainToExtension = self->_domainToExtension;
    self->_domainToExtension = 0;

    extensions = self->_extensions;
    self->_extensions = 0;
  }
}

- (void)_buildDomainToExtensionDictionaryWithSharedWebCredentialsDatabaseEntries:(id)entries
{
  v32 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = entriesCopy;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    v21 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = MEMORY[0x1E69C8DE8];
        domain = [v10 domain];
        v13 = [v11 domainByStrippingSubdomainWildcardPrefixIfNecessary:domain];

        if (([MEMORY[0x1E69C8DE8] domainIsProhibitedForSavingCredentials:v13] & 1) == 0)
        {
          safari_highLevelDomainFromHost = [v13 safari_highLevelDomainFromHost];
          if (safari_highLevelDomainFromHost && (![MEMORY[0x1E69C8DE8] highLevelDomainHasSuiteOfAssociatedApps:safari_highLevelDomainFromHost] || objc_msgSend(v10, "service") == 7))
          {
            v24 = 0;
            appID = [v10 appID];
            CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();

            v16 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              [(_ASAccountAuthenticationModificationExtensionManager *)v29 _buildDomainToExtensionDictionaryWithSharedWebCredentialsDatabaseEntries:v16, v10, &v30];
            }

            v8 = v21;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v7);
  }

  dataConstructionQueue = self->_dataConstructionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129___ASAccountAuthenticationModificationExtensionManager__buildDomainToExtensionDictionaryWithSharedWebCredentialsDatabaseEntries___block_invoke;
  block[3] = &unk_1E7AF76A8;
  block[4] = self;
  v23 = dictionary;
  v18 = dictionary;
  dispatch_async(dataConstructionQueue, block);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)extensionForDomain:(id)domain completionHandler:(id)handler
{
  domainCopy = domain;
  handlerCopy = handler;
  v8 = [(NSUserDefaults *)self->_mobileSafariUserDefaults BOOLForKey:@"EnableSFAppAccountAuthenticationModificationExtension"];
  if (![domainCopy containsString:@"apple.com"] || v8)
  {
    objc_initWeak(&location, self);
    readOnlyQueue = self->_readOnlyQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __93___ASAccountAuthenticationModificationExtensionManager_extensionForDomain_completionHandler___block_invoke;
    v10[3] = &unk_1E7AF7A58;
    objc_copyWeak(&v13, &location);
    v12 = handlerCopy;
    v11 = domainCopy;
    dispatch_async(readOnlyQueue, v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)addChangeObserver:(id)observer
{
  observerCopy = observer;
  dataConstructionQueue = self->_dataConstructionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74___ASAccountAuthenticationModificationExtensionManager_addChangeObserver___block_invoke;
  v7[3] = &unk_1E7AF76A8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(dataConstructionQueue, v7);
}

- (void)removeChangeObserver:(id)observer
{
  observerCopy = observer;
  dataConstructionQueue = self->_dataConstructionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77___ASAccountAuthenticationModificationExtensionManager_removeChangeObserver___block_invoke;
  v7[3] = &unk_1E7AF76A8;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(dataConstructionQueue, v7);
}

- (void)_notifyObservers:(id)observers
{
  v4 = [observers copy];
  v5 = dispatch_get_global_queue(21, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73___ASAccountAuthenticationModificationExtensionManager__notifyObservers___block_invoke;
  v7[3] = &unk_1E7AF76A8;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_buildDomainToExtensionDictionaryWithSharedWebCredentialsDatabaseEntries:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 appID];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_error_impl(&dword_1B1C8D000, v7, OS_LOG_TYPE_ERROR, "Could not retrieve bundle identifier from %@", a1, 0xCu);
}

@end