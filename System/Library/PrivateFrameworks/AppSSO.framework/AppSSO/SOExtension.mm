@interface SOExtension
- ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForSession;
- (BOOL)hasAssociatedDomainsApproved;
- (BOOL)hasURLApprovedAssociatedDomain:(id)domain cache:(id)cache;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToExtension:(id)extension;
- (NSArray)authenticationMethods;
- (NSString)containerAppBundleIdentifier;
- (NSString)containerAppPath;
- (NSString)description;
- (NSString)extensionBundleIdentifier;
- (NSString)localizedExtensionDisplayName;
- (NSUUID)sessionID;
- (SOExtension)initWithExtension:(id)extension;
- (id)_contextForSession;
- (id)findDelegateForIdentifier:(id)identifier;
- (int)requestCount;
- (int64_t)extensionRequestsMode;
- (void)_beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)_beginAuthorizationWithServiceXPCEndpoint:(id)endpoint completion:(id)completion;
- (void)_connectContextToSessionWithRequestIdentifier:(id)identifier completion:(id)completion;
- (void)_finishAuthorization:(id)authorization withCompletion:(id)completion;
- (void)_finishedSettingUpSession:(id)session;
- (void)_otherVersionError:(id)error;
- (void)_setupExtension;
- (void)_setupNonUISessionIfNecessaryWithCompletion:(id)completion;
- (void)_setupNonUISessionWithCompletion:(id)completion;
- (void)_setupSessionHelperForIOSWithCompletion:(id)completion;
- (void)_setupSessionIfNecessaryWithCompletion:(id)completion;
- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error;
- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion;
- (void)beginAuthorizationWithServiceXPCEndpoint:(id)endpoint completion:(id)completion;
- (void)beginDeviceRegistrationUsingOptions:(int64_t)options extensionData:(id)data completion:(id)completion;
- (void)beginUserRegistrationUsingUserName:(id)name authenticationMethod:(int)method options:(int64_t)options extensionData:(id)data completion:(id)completion;
- (void)canPerformRegistrationCompletion:(id)completion;
- (void)cancelAuthorization:(id)authorization completion:(id)completion;
- (void)checkAssociatedDomainsWithCache:(id)cache;
- (void)checkAssociatedDomainsWithCompletion:(id)completion;
- (void)dealloc;
- (void)decrementRequestCount;
- (void)displayNamesForGroups:(id)groups extensionData:(id)data completion:(id)completion;
- (void)finishAuthorization:(id)authorization completion:(id)completion;
- (void)incrementRequestCount;
- (void)keyWillRotateForKeyType:(int64_t)type keyProxyEndpoint:(id)endpoint extensionData:(id)data completion:(id)completion;
- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion;
- (void)presentRegistrationViewControllerWithCompletion:(id)completion;
- (void)profilePictureForUserUsingExtensionData:(id)data completion:(id)completion;
- (void)protocolVersionCompletion:(id)completion;
- (void)registrationDidCancelWithCompletion:(id)completion;
- (void)registrationDidCompleteWithCompletion:(id)completion;
- (void)removeDelegateForRequestIdentifier:(id)identifier;
- (void)removeExpiredEntriesFromCache:(id)cache;
- (void)requestAuthorizationViewControllerWithCompletion:(id)completion;
- (void)requestReauthenticationWithRequestIdentifier:(id)identifier completion:(id)completion;
- (void)saveDelegate:(id)delegate forRequestIdentifier:(id)identifier;
- (void)setupNonUISessionWithCompletion:(id)completion;
- (void)supportedDeviceEncryptionAlgorithmsCompletion:(id)completion;
- (void)supportedDeviceSigningAlgorithmsCompletion:(id)completion;
- (void)supportedGrantTypesCompletion:(id)completion;
- (void)supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:(id)completion;
- (void)unload;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SOExtension

- (SOExtension)initWithExtension:(id)extension
{
  extensionCopy = extension;
  v31.receiver = self;
  v31.super_class = SOExtension;
  v6 = [(SOExtension *)&v31 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extension, extension);
    v7->_requestCount = 0;
    associatedDomains = v7->_associatedDomains;
    v7->_associatedDomains = 0;

    v9 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    sessionIDLock = v7->_sessionIDLock;
    v7->_sessionIDLock = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    requestCountLock = v7->_requestCountLock;
    v7->_requestCountLock = v11;

    v13 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    associatedDomainLock = v7->_associatedDomainLock;
    v7->_associatedDomainLock = v13;

    v15 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    extensionDelegatesLock = v7->_extensionDelegatesLock;
    v7->_extensionDelegatesLock = v15;

    v17 = MEMORY[0x1E696AEC0];
    localizedExtensionDisplayName = [(SOExtension *)v7 localizedExtensionDisplayName];
    v19 = [v17 stringWithFormat:@"com.apple.AppSSO.extension-queue-(%@)", localizedExtensionDisplayName];

    v20 = dispatch_queue_create([v19 cStringUsingEncoding:4], 0);
    queue = v7->_queue;
    v7->_queue = v20;

    v22 = MEMORY[0x1E696AEC0];
    localizedExtensionDisplayName2 = [(SOExtension *)v7 localizedExtensionDisplayName];
    v24 = [v22 stringWithFormat:@"com.apple.PlatformSSO.extension-queue-(%@)", localizedExtensionDisplayName2];

    v25 = dispatch_queue_create([v24 cStringUsingEncoding:4], 0);
    pssoQueue = v7->_pssoQueue;
    v7->_pssoQueue = v25;

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    extensionDelegates = v7->_extensionDelegates;
    v7->_extensionDelegates = strongToWeakObjectsMapTable;

    [(SOExtension *)v7 _setupExtension];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__otherVersionError_ name:@"com.apple.AppSSO.SOExtension.OtherVersionError" object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SOExtension;
  [(SOExtension *)&v4 dealloc];
}

- (NSUUID)sessionID
{
  v3 = self->_sessionIDLock;
  objc_sync_enter(v3);
  v4 = self->_sessionID;
  objc_sync_exit(v3);

  return v4;
}

- (int)requestCount
{
  selfCopy = self;
  requestCountLock = [(SOExtension *)self requestCountLock];
  objc_sync_enter(requestCountLock);
  LODWORD(selfCopy) = selfCopy->_requestCount;
  objc_sync_exit(requestCountLock);

  return selfCopy;
}

- (void)incrementRequestCount
{
  v13 = *MEMORY[0x1E69E9840];
  requestCountLock = [(SOExtension *)self requestCountLock];
  objc_sync_enter(requestCountLock);
  ++self->_requestCount;
  v4 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_requestCount];
    v7 = 136315650;
    v8 = "[SOExtension incrementRequestCount]";
    v9 = 2114;
    v10 = v5;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "%s count now %{public}@ on %@", &v7, 0x20u);
  }

  objc_sync_exit(requestCountLock);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)decrementRequestCount
{
  v15 = *MEMORY[0x1E69E9840];
  requestCountLock = [(SOExtension *)self requestCountLock];
  objc_sync_enter(requestCountLock);
  requestCount = self->_requestCount;
  if (requestCount <= 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = requestCount - 1;
  }

  self->_requestCount = v5;
  v6 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_requestCount];
    v9 = 136315650;
    v10 = "[SOExtension decrementRequestCount]";
    v11 = 2114;
    v12 = v7;
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v6, OS_LOG_TYPE_DEFAULT, "%s count now %{public}@ on %@", &v9, 0x20u);
  }

  objc_sync_exit(requestCountLock);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setupExtension
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v5, &location);
  v3 = [(SOExtension *)self extension:v4];
  [v3 setRequestInterruptionBlock:&v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __30__SOExtension__setupExtension__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __30__SOExtension__setupExtension__block_invoke_2;
    v7[3] = &unk_1E813E390;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void __30__SOExtension__setupExtension__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __30__SOExtension__setupExtension__block_invoke_2_cold_1();
  }

  v3 = [*(a1 + 32) sessionIDLock];
  objc_sync_enter(v3);
  v4 = *(*(a1 + 32) + 8);
  objc_sync_exit(v3);

  if ([v4 isEqual:*(a1 + 40)])
  {
    v5 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __30__SOExtension__setupExtension__block_invoke_2_cold_2();
    }

    v6 = [*(a1 + 32) sessionIDLock];
    objc_sync_enter(v6);
    if (*(*(a1 + 32) + 8))
    {
      v7 = [*(a1 + 32) extension];
      [v7 cancelExtensionRequestWithIdentifier:*(*(a1 + 32) + 8)];

      v8 = *(a1 + 32);
      v9 = *(v8 + 8);
      *(v8 + 8) = 0;

      v10 = *(*(a1 + 32) + 32);
      *(*(a1 + 32) + 32) = 0;
    }

    objc_sync_exit(v6);

    v11 = [*(a1 + 32) extensionDelegatesLock];
    objc_sync_enter(v11);
    v12 = NSAllMapTableKeys(*(*(a1 + 32) + 40));
    objc_sync_exit(v11);

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = *(a1 + 32);
          v19 = [getSOErrorHelperClass_0() errorWithCode:-3 message:{@"connection to extension interrupted", v21}];
          [v18 authorization:v17 didCompleteWithCredential:0 error:v19];
        }

        v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_otherVersionError:(id)error
{
  v30 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"bundleIdentifier"];
  extensionBundleIdentifier = [(SOExtension *)self extensionBundleIdentifier];
  v6 = [v4 isEqualToString:extensionBundleIdentifier];

  if (v6)
  {
    v7 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v25 = "[SOExtension _otherVersionError:]";
      v26 = 2114;
      v27 = v4;
      v28 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", buf, 0x20u);
    }

    extensionDelegatesLock = [(SOExtension *)self extensionDelegatesLock];
    objc_sync_enter(extensionDelegatesLock);
    v9 = NSAllMapTableKeys(self->_extensionDelegates);
    objc_sync_exit(extensionDelegatesLock);

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [(SOExtension *)self findDelegateForIdentifier:v14];
          if (objc_opt_respondsToSelector())
          {
            [v15 authorizationDidFailWithOtherVersionError:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)saveDelegate:(id)delegate forRequestIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  identifierCopy = identifier;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[SOExtension saveDelegate:forRequestIdentifier:]";
    v15 = 2114;
    v16 = identifierCopy;
    v17 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", &v13, 0x20u);
  }

  extensionDelegatesLock = [(SOExtension *)self extensionDelegatesLock];
  objc_sync_enter(extensionDelegatesLock);
  [(NSMapTable *)self->_extensionDelegates setObject:delegateCopy forKey:identifierCopy];
  v10 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMapTable count](self->_extensionDelegates, "count")}];
    v13 = 136315650;
    v14 = "[SOExtension saveDelegate:forRequestIdentifier:]";
    v15 = 2114;
    v16 = v11;
    v17 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "%s current delegate: %{public}@ on %@", &v13, 0x20u);
  }

  objc_sync_exit(extensionDelegatesLock);
  v12 = *MEMORY[0x1E69E9840];
}

- (id)findDelegateForIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[SOExtension findDelegateForIdentifier:]";
    v12 = 2114;
    v13 = identifierCopy;
    v14 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", &v10, 0x20u);
  }

  extensionDelegatesLock = [(SOExtension *)self extensionDelegatesLock];
  objc_sync_enter(extensionDelegatesLock);
  v7 = [(NSMapTable *)self->_extensionDelegates objectForKey:identifierCopy];
  objc_sync_exit(extensionDelegatesLock);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)removeDelegateForRequestIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315650;
    v11 = "[SOExtension removeDelegateForRequestIdentifier:]";
    v12 = 2114;
    v13 = identifierCopy;
    v14 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on %@", &v10, 0x20u);
  }

  extensionDelegatesLock = [(SOExtension *)self extensionDelegatesLock];
  objc_sync_enter(extensionDelegatesLock);
  [(NSMapTable *)self->_extensionDelegates removeObjectForKey:identifierCopy];
  v7 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMapTable count](self->_extensionDelegates, "count")}];
    v10 = 136315650;
    v11 = "[SOExtension removeDelegateForRequestIdentifier:]";
    v12 = 2114;
    v13 = v8;
    v14 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "%s current delegates: %{public}@ on %@", &v10, 0x20u);
  }

  objc_sync_exit(extensionDelegatesLock);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)setupNonUISessionWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension setupNonUISessionWithCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__SOExtension_setupNonUISessionWithCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestAuthorizationViewControllerWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension requestAuthorizationViewControllerWithCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SOExtension_requestAuthorizationViewControllerWithCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [parametersCopy identifier];
    *buf = 136315650;
    v18 = "[SOExtension beginAuthorizationWithRequestParameters:completion:]";
    v19 = 2114;
    v20 = identifier;
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SOExtension_beginAuthorizationWithRequestParameters_completion___block_invoke;
  block[3] = &unk_1E813E478;
  block[4] = self;
  v15 = parametersCopy;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = parametersCopy;
  dispatch_async(queue, block);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)beginAuthorizationWithServiceXPCEndpoint:(id)endpoint completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SOExtension beginAuthorizationWithServiceXPCEndpoint:completion:]";
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SOExtension_beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke;
  block[3] = &unk_1E813E478;
  block[4] = self;
  v14 = endpointCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = endpointCopy;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)cancelAuthorization:(id)authorization completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[SOExtension cancelAuthorization:completion:]";
    v18 = 2114;
    v19 = authorizationCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SOExtension_cancelAuthorization_completion___block_invoke;
  block[3] = &unk_1E813E4F0;
  v14 = authorizationCopy;
  v15 = completionCopy;
  block[4] = self;
  v10 = authorizationCopy;
  v11 = completionCopy;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __46__SOExtension_cancelAuthorization_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v16 = 0;
  v3 = [v2 remoteContextWithError:&v16];
  v4 = v16;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_1(a1);
    }

    v7 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__SOExtension_cancelAuthorization_completion___block_invoke_26;
    v12[3] = &unk_1E813E4C8;
    v8 = v7;
    v9 = *(a1 + 32);
    v13 = v8;
    v14 = v9;
    v15 = *(a1 + 48);
    [v3 cancelAuthorization:v8 completion:v12];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = [getSOErrorHelperClass_0() errorWithCode:-2];
      (*(v10 + 16))(v10, 0, v11);

      [*(a1 + 32) decrementRequestCount];
    }
  }
}

void __46__SOExtension_cancelAuthorization_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SOExtension_cancelAuthorization_completion___block_invoke_2;
  block[3] = &unk_1E813E4A0;
  v13 = v5;
  v14 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __46__SOExtension_cancelAuthorization_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46__SOExtension_cancelAuthorization_completion___block_invoke_2_cold_1(a1);
  }

  [*(a1 + 56) decrementRequestCount];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  return (*(*(a1 + 64) + 16))();
}

- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion
{
  hintsCopy = hints;
  identifierCopy = identifier;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__SOExtension_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke;
  v14[3] = &unk_1E813E518;
  v14[4] = self;
  v15 = identifierCopy;
  v16 = hintsCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = hintsCopy;
  v13 = identifierCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __88__SOExtension_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) findDelegateForIdentifier:*(a1 + 40)];
  v3 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __88__SOExtension_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke_cold_1(v2, a1);
  }

  [v2 presentAuthorizationViewControllerWithHints:*(a1 + 48) requestIdentifier:*(a1 + 40) completion:*(a1 + 56)];
}

- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error
{
  v32 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  credentialCopy = credential;
  errorCopy = error;
  v11 = [(SOExtension *)self findDelegateForIdentifier:authorizationCopy];
  v12 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413059;
    v25 = v11;
    v26 = 2113;
    v27 = credentialCopy;
    v28 = 2114;
    v29 = authorizationCopy;
    v30 = 2114;
    v31 = errorCopy;
    _os_log_impl(&dword_1C1317000, v12, OS_LOG_TYPE_DEFAULT, "Notifying delegate %@ that extension has finished with credential: %{private}@, identifier: %{public}@, error: %{public}@", buf, 0x2Au);
  }

  queue = self->_queue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__SOExtension_authorization_didCompleteWithCredential_error___block_invoke;
  v19[3] = &unk_1E813E540;
  v20 = v11;
  v21 = authorizationCopy;
  v22 = credentialCopy;
  v23 = errorCopy;
  v14 = errorCopy;
  v15 = credentialCopy;
  v16 = authorizationCopy;
  v17 = v11;
  dispatch_async(queue, v19);

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __61__SOExtension_authorization_didCompleteWithCredential_error___block_invoke(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return [v4 authorization:v5 didCompleteWithCredential:v6 error:v7];
  }

  return result;
}

- (void)finishAuthorization:(id)authorization completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[SOExtension finishAuthorization:completion:]";
    v18 = 2114;
    v19 = authorizationCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SOExtension_finishAuthorization_completion___block_invoke;
  block[3] = &unk_1E813E478;
  block[4] = self;
  v14 = authorizationCopy;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = authorizationCopy;
  dispatch_async(queue, block);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_finishAuthorization:(id)authorization withCompletion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v25 = "[SOExtension _finishAuthorization:withCompletion:]";
    v26 = 2114;
    v27 = authorizationCopy;
    v28 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", buf, 0x20u);
  }

  _contextForSession = [(SOExtension *)self _contextForSession];
  v23 = 0;
  v10 = [_contextForSession remoteContextWithError:&v23];
  v11 = v23;
  if (v11)
  {
    v12 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    sessionIDLock = [(SOExtension *)self sessionIDLock];
    objc_sync_enter(sessionIDLock);
    if (self->_sessionID)
    {
      objc_sync_exit(sessionIDLock);

      v14 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [SOExtension _finishAuthorization:withCompletion:];
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __51__SOExtension__finishAuthorization_withCompletion___block_invoke_33;
      v17[3] = &unk_1E813E590;
      v17[4] = self;
      v19 = completionCopy;
      v18 = authorizationCopy;
      [v10 finishAuthorization:v18 completion:v17];
    }

    else
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__SOExtension__finishAuthorization_withCompletion___block_invoke;
      block[3] = &unk_1E813E4F0;
      block[4] = self;
      v22 = completionCopy;
      v21 = authorizationCopy;
      dispatch_async(queue, block);

      objc_sync_exit(sessionIDLock);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __51__SOExtension__finishAuthorization_withCompletion___block_invoke(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __51__SOExtension__finishAuthorization_withCompletion___block_invoke_cold_1();
  }

  [*(a1 + 32) decrementRequestCount];
  v3 = *(a1 + 48);
  v4 = [getSOErrorHelperClass_0() errorWithCode:-1000 message:@"No extension session ID."];
  (*(v3 + 16))(v3, 0, v4);

  return [*(a1 + 32) removeDelegateForRequestIdentifier:*(a1 + 40)];
}

void __51__SOExtension__finishAuthorization_withCompletion___block_invoke_33(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SOExtension__finishAuthorization_withCompletion___block_invoke_2;
  block[3] = &unk_1E813E568;
  v14 = a2;
  v10 = v5;
  v11 = v6;
  v13 = *(a1 + 48);
  v12 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v7, block);
}

uint64_t __51__SOExtension__finishAuthorization_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __51__SOExtension__finishAuthorization_withCompletion___block_invoke_2_cold_1(a1);
  }

  [*(a1 + 40) decrementRequestCount];
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
  return [*(a1 + 40) removeDelegateForRequestIdentifier:*(a1 + 48)];
}

- (void)requestReauthenticationWithRequestIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v6 = [(SOExtension *)self findDelegateForIdentifier:identifier];
  if (self->_remoteViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 requestReauthenticationWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)presentRegistrationViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = [(SOExtension *)self findDelegateForIdentifier:@"platform sso"];
  if (self->_remoteViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 presentRegistrationViewControllerWithCompletion:completionCopy];
  }

  else
  {
    v5 = [getSOErrorHelperClass_0() errorWithCode:-1000 message:@"Presenting registration view controller not allowed."];
    completionCopy[2](completionCopy, 0, v5);
  }
}

- (void)_setupNonUISessionIfNecessaryWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    selfCopy3 = "[SOExtension _setupNonUISessionIfNecessaryWithCompletion:]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  [(SOExtension *)self incrementRequestCount];
  sessionIDLock = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(sessionIDLock);
  sessionID = self->_sessionID;
  objc_sync_exit(sessionIDLock);

  v8 = SO_LOG_SOExtension();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (sessionID)
  {
    if (v9)
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Using existing session for extension %@", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    if (v9)
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Setting up new session for extension %@", buf, 0xCu);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__SOExtension__setupNonUISessionIfNecessaryWithCompletion___block_invoke;
    v11[3] = &unk_1E813E5B8;
    v11[4] = self;
    v12 = completionCopy;
    [(SOExtension *)self _setupNonUISessionWithCompletion:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __59__SOExtension__setupNonUISessionIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Finished setting up new session for extension %{public}@ with error %{public}@ and session ID %{public}@", &v14, 0x20u);
  }

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    v10 = [*(a1 + 32) sessionIDLock];
    objc_sync_enter(v10);
    objc_storeStrong((*(a1 + 32) + 8), a2);
    v11 = *(a1 + 32);
    v12 = [v11 _contextForSession];
    [v12 setContextExtension:v11];

    objc_sync_exit(v10);
    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_setupSessionIfNecessaryWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOExtension _setupSessionIfNecessaryWithCompletion:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  [(SOExtension *)self incrementRequestCount];
  sessionIDLock = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(sessionIDLock);
  v7 = self->_sessionID;
  objc_sync_exit(sessionIDLock);

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Using existing session for extension %@", buf, 0xCu);
  }

  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    completionCopy[2](completionCopy, remoteViewController, 0);
  }

  else
  {
LABEL_8:
    v10 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "Setting up new session for extension %@", buf, 0xCu);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v18 = __Block_byref_object_copy__0;
    v19 = __Block_byref_object_dispose__0;
    v20 = dispatch_semaphore_create(0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__SOExtension__setupSessionIfNecessaryWithCompletion___block_invoke;
    v14[3] = &unk_1E813E5E0;
    v14[4] = self;
    v15 = completionCopy;
    v16 = buf;
    [(SOExtension *)self _setupSessionWithCompletion:v14];
    v11 = *(*&buf[8] + 40);
    v12 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v11, v12);

    _Block_object_dispose(buf, 8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __54__SOExtension__setupSessionIfNecessaryWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v15 = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Finished setting up new session for extension %{public}@ with error %{public}@ and session ID %{public}@", &v15, 0x20u);
  }

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    v10 = [*(a1 + 32) sessionIDLock];
    objc_sync_enter(v10);
    objc_storeStrong((*(a1 + 32) + 8), a2);
    v11 = *(a1 + 32);
    v12 = [v11 _contextForSession];
    [v12 setContextExtension:v11];

    objc_sync_exit(v10);
    v13 = *(*(a1 + 32) + 32);
    (*(*(a1 + 40) + 16))();
  }

  dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_finishedSettingUpSession:(id)session
{
  v14 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v6 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[SOExtension _finishedSettingUpSession:]";
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v10, 0x16u);
  }

  sessionIDLock = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(sessionIDLock);
  objc_storeStrong(&self->_sessionID, session);
  _contextForSession = [(SOExtension *)self _contextForSession];
  [_contextForSession setContextExtension:self];

  objc_sync_exit(sessionIDLock);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_setupNonUISessionWithCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    extension = [(SOExtension *)self extension];
    *buf = 138412290;
    v21 = extension;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "Beginning request for extension %@", buf, 0xCu);
  }

  extension2 = [(SOExtension *)self extension];
  v17 = 0;
  v8 = [extension2 beginExtensionRequestWithInputItems:0 error:&v17];
  v9 = v17;

  if (v9)
  {
    v10 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SOExtension _setupNonUISessionWithCompletion:?];
    }

    completionCopy[2](completionCopy, 0, v9);
    domain = [v9 domain];
    if (![domain isEqualToString:*MEMORY[0x1E69C4AD8]])
    {
      goto LABEL_11;
    }

    code = [v9 code];

    if (code == 16)
    {
      v13 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C1317000, v13, OS_LOG_TYPE_DEFAULT, "Handling other version error", buf, 2u);
      }

      domain = [MEMORY[0x1E696AD88] defaultCenter];
      v18 = @"bundleIdentifier";
      extensionBundleIdentifier = [(SOExtension *)self extensionBundleIdentifier];
      v19 = extensionBundleIdentifier;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [domain postNotificationName:@"com.apple.AppSSO.SOExtension.OtherVersionError" object:self userInfo:v15];

LABEL_11:
    }
  }

  else if (completionCopy)
  {
    (completionCopy)[2](completionCopy, v8, 0);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_setupSessionHelperForIOSWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    extension = [(SOExtension *)self extension];
    *buf = 138412290;
    v13 = extension;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "Instantiating view controller %@", buf, 0xCu);
  }

  extension2 = [(SOExtension *)self extension];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__SOExtension__setupSessionHelperForIOSWithCompletion___block_invoke;
  v10[3] = &unk_1E813E608;
  v10[4] = self;
  v11 = completionCopy;
  v8 = completionCopy;
  [extension2 instantiateViewControllerWithInputItems:MEMORY[0x1E695E0F0] listenerEndpoint:0 connectionHandler:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __55__SOExtension__setupSessionHelperForIOSWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __55__SOExtension__setupSessionHelperForIOSWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 32), a3);
    [*(*(a1 + 32) + 32) setDelegate:?];
    [*(a1 + 32) _connectContextToSessionWithRequestIdentifier:v7 completion:*(a1 + 40)];
  }
}

- (void)_connectContextToSessionWithRequestIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "Passing session ID to remote view", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  remoteViewController = self->_remoteViewController;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke;
  v16[3] = &unk_1E813E630;
  v10 = identifierCopy;
  v17 = v10;
  v18 = buf;
  v11 = [(_UIRemoteViewController *)remoteViewController serviceViewControllerProxyWithErrorHandler:v16];
  if (v11)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke_49;
    v13[3] = &unk_1E813E658;
    v15 = completionCopy;
    v14 = v10;
    [v11 connectToContextWithSessionID:v14 completion:v13];
  }

  else
  {
    v12 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SOExtension _connectContextToSessionWithRequestIdentifier:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0, *(v20 + 5));
  }

  _Block_object_dispose(buf, 8);
}

void __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)_beginAuthorizationWithRequestParameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  _contextForSession = [(SOExtension *)self _contextForSession];
  v15 = 0;
  v9 = [_contextForSession remoteContextWithError:&v15];
  v10 = v15;
  v11 = SO_LOG_SOExtension();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SOExtension _beginAuthorizationWithRequestParameters:completion:];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke;
    v13[3] = &unk_1E813E6A8;
    v14 = completionCopy;
    [v9 beginAuthorizationWithRequestParameters:parametersCopy completion:v13];
  }
}

void __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke_2;
  block[3] = &unk_1E813E680;
  v10 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

- (void)_beginAuthorizationWithServiceXPCEndpoint:(id)endpoint completion:(id)completion
{
  endpointCopy = endpoint;
  completionCopy = completion;
  _contextForSession = [(SOExtension *)self _contextForSession];
  v15 = 0;
  v9 = [_contextForSession remoteContextWithError:&v15];
  v10 = v15;
  v11 = SO_LOG_SOExtension();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    completionCopy[2](completionCopy, 0, v10);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SOExtension _beginAuthorizationWithServiceXPCEndpoint:completion:];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke;
    v13[3] = &unk_1E813E6A8;
    v14 = completionCopy;
    [v9 beginAuthorizationWithServiceXPCEndpoint:endpointCopy completion:v13];
  }
}

void __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2;
  block[3] = &unk_1E813E680;
  v10 = a2;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

- (id)_contextForSession
{
  sessionIDLock = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(sessionIDLock);
  extension = [(SOExtension *)self extension];
  v5 = [extension _extensionContextForUUID:self->_sessionID];

  objc_sync_exit(sessionIDLock);

  return v5;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForSession
{
  _contextForSession = [(SOExtension *)self _contextForSession];
  _auxiliaryConnection = [_contextForSession _auxiliaryConnection];
  v5 = _auxiliaryConnection;
  if (_auxiliaryConnection)
  {
    [_auxiliaryConnection auditToken];
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (void)unload
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[SOExtension unload]";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v9, 0x16u);
  }

  sessionIDLock = [(SOExtension *)self sessionIDLock];
  objc_sync_enter(sessionIDLock);
  if (self->_sessionID)
  {
    extension = [(SOExtension *)self extension];
    [extension cancelExtensionRequestWithIdentifier:self->_sessionID];

    sessionID = self->_sessionID;
    self->_sessionID = 0;

    remoteViewController = self->_remoteViewController;
    self->_remoteViewController = 0;
  }

  objc_sync_exit(sessionIDLock);

  v8 = *MEMORY[0x1E69E9840];
}

- (NSString)containerAppPath
{
  extension = [(SOExtension *)self extension];
  _plugIn = [extension _plugIn];
  containingUrl = [_plugIn containingUrl];
  path = [containingUrl path];

  return path;
}

- (NSString)localizedExtensionDisplayName
{
  v2 = [(NSExtension *)self->_extension objectForInfoDictionaryKey:*MEMORY[0x1E695E120]];
  v3 = [v2 copy];

  return v3;
}

- (NSString)containerAppBundleIdentifier
{
  v2 = MEMORY[0x1E696AAE8];
  containerAppPath = [(SOExtension *)self containerAppPath];
  v4 = [v2 bundleWithPath:containerAppPath];
  bundleIdentifier = [v4 bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)extensionBundleIdentifier
{
  extension = [(SOExtension *)self extension];
  identifier = [extension identifier];

  return identifier;
}

- (int64_t)extensionRequestsMode
{
  v14 = *MEMORY[0x1E69E9840];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (!_os_feature_enabled_impl() || ([(SOExtension *)self extensionBundleIdentifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = [SOExtensionManager isAppleConnectExtensionBundleIdentifier:v5], v5, !v6))
    {
      infoDictionary = [(NSExtension *)self->_extension infoDictionary];
      v8 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];
      v3 = [v8 objectForKeyedSubscript:@"SOExtensionRequestsMode"];

      if (v3)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }

        if (([v3 isEqualToString:@"Concurrent"]& 1) != 0)
        {
          goto LABEL_9;
        }

        if (([v3 isEqualToString:@"Queue"]& 1) == 0)
        {
LABEL_11:
          v9 = SO_LOG_SOExtension();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v12 = 138543362;
            v13 = v3;
            _os_log_impl(&dword_1C1317000, v9, OS_LOG_TYPE_DEFAULT, "invalid SOExtensionRequestsMode: %{public}@, using default", &v12, 0xCu);
          }
        }
      }

      v4 = 1;
      goto LABEL_15;
    }
  }

  v3 = SO_LOG_SOExtension();
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
LABEL_9:
    v4 = 2;
    goto LABEL_15;
  }

  LOWORD(v12) = 0;
  v4 = 2;
  _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "SOExtensionRequestsModeConcurrent enabled by the feature flag", &v12, 2u);
LABEL_15:

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (NSArray)authenticationMethods
{
  v20 = *MEMORY[0x1E69E9840];
  infoDictionary = [(NSExtension *)self->_extension infoDictionary];
  v3 = [infoDictionary objectForKeyedSubscript:@"NSExtension"];
  v4 = [v3 objectForKeyedSubscript:@"SOExtensionSSOGrantTypes"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v14 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 isEqualToString:@"password"])
          {
            [v5 addObject:&unk_1F408FB20];
          }

          if ([v11 isEqualToString:@"urn:ietf:params:oauth:grant-type:jwt-bearer"])
          {
            [v5 addObject:&unk_1F408FB38];
            [v5 addObject:&unk_1F408FB50];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v4 = v14;
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)removeExpiredEntriesFromCache:(id)cache
{
  v24 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [cacheCopy allKeys];
  v5 = [allKeys copy];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [cacheCopy objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = MEMORY[0x1E695DF00];
          [v11 doubleValue];
          v13 = [v12 dateWithTimeIntervalSince1970:?];
          [v13 timeIntervalSinceNow];
          v15 = v14;
          [&unk_1F408FB08 doubleValue];
          if (v15 < v16 || ([v13 timeIntervalSinceNow], v17 > 0.0))
          {
            [cacheCopy removeObjectForKey:v10];
          }
        }

        else
        {
          [cacheCopy removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCache:(id)cache
{
  v69 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  if (![(SOExtension *)self hasAssociatedDomainsApproved])
  {
    v4 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v61 = "[SOExtension checkAssociatedDomainsWithCache:]";
      v62 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1C1317000, v4, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
    }

    [(SOExtension *)self removeExpiredEntriesFromCache:cacheCopy];
    associatedDomainLock = [(SOExtension *)self associatedDomainLock];
    objc_sync_enter(associatedDomainLock);
    associatedDomains = self->_associatedDomains;
    self->_associatedDomains = MEMORY[0x1E695E0F0];

    objc_sync_exit(associatedDomainLock);
    extension = [(SOExtension *)self extension];
    _extensionBundle = [extension _extensionBundle];
    bundleURL = [_extensionBundle bundleURL];

    if (!bundleURL)
    {
      v11 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:?];
      }

      goto LABEL_50;
    }

    v10 = [MEMORY[0x1E6963678] pluginKitProxyForURL:bundleURL];
    v11 = v10;
    if (!v10)
    {
      containingBundle = SO_LOG_SOExtension();
      if (os_log_type_enabled(containingBundle, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:];
      }

      goto LABEL_49;
    }

    containingBundle = [v10 containingBundle];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:];
      }

      goto LABEL_48;
    }

    v13 = [containingBundle entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];
    if (!v13)
    {
      v15 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:containingBundle];
      }

      goto LABEL_47;
    }

    v14 = objc_alloc(MEMORY[0x1E69CDB30]);
    v15 = [v14 initWithServiceType:*MEMORY[0x1E69CDB40] applicationIdentifier:v13 domain:0];
    v59 = 0;
    v16 = [MEMORY[0x1E69CDB28] serviceDetailsWithServiceSpecifier:v15 error:&v59];
    v53 = v59;
    if (v16)
    {
      location = &self->_associatedDomains;
      v47 = v15;
      v48 = v13;
      selfCopy2 = self;
      v50 = containingBundle;
      v51 = v11;
      v52 = bundleURL;
      array = [MEMORY[0x1E695DF70] array];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v45 = v16;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v55 objects:v68 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v56;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v56 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v55 + 1) + 8 * i);
            serviceSpecifier = [v23 serviceSpecifier];
            domainHost = [serviceSpecifier domainHost];

            serviceSpecifier2 = [v23 serviceSpecifier];
            domainPort = [serviceSpecifier2 domainPort];

            if (domainPort)
            {
              serviceSpecifier3 = [v23 serviceSpecifier];
              domainPort2 = [serviceSpecifier3 domainPort];
              v30 = [domainHost stringByAppendingFormat:@":%@", domainPort2];

              domainHost = v30;
            }

            if ([v23 isUpdating])
            {
              v31 = SO_LOG_SOExtension();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v61 = domainHost;
                _os_log_impl(&dword_1C1317000, v31, OS_LOG_TYPE_INFO, "Associated domain: %{public}@ is waiting for an update", buf, 0xCu);
              }
            }

            if ([v23 isApproved])
            {
              v32 = SO_LOG_SOExtension();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v61 = domainHost;
                _os_log_impl(&dword_1C1317000, v32, OS_LOG_TYPE_INFO, "Associated domain: %{public}@ is approved", buf, 0xCu);
              }

              [array addObject:domainHost];
              v33 = MEMORY[0x1E696AD98];
              date = [MEMORY[0x1E695DF00] date];
              [date timeIntervalSince1970];
              v35 = [v33 numberWithDouble:?];
              [cacheCopy setObject:v35 forKeyedSubscript:domainHost];
            }

            else
            {
              v36 = [cacheCopy objectForKeyedSubscript:domainHost];

              v37 = SO_LOG_SOExtension();
              v38 = v37;
              if (v36)
              {
                if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543362;
                  v61 = domainHost;
                  _os_log_impl(&dword_1C1317000, v38, OS_LOG_TYPE_INFO, "Associated domain: %{public}@ is cached", buf, 0xCu);
                }

                [array addObject:domainHost];
              }

              else
              {
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v61 = domainHost;
                  _os_log_error_impl(&dword_1C1317000, v38, OS_LOG_TYPE_ERROR, "Associated domain: %{public}@ is not approved", buf, 0xCu);
                }
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v55 objects:v68 count:16];
        }

        while (v20);
      }

      associatedDomainLock2 = [(SOExtension *)selfCopy2 associatedDomainLock];
      objc_sync_enter(associatedDomainLock2);
      objc_storeStrong(location, array);
      objc_sync_exit(associatedDomainLock2);

      v40 = SO_LOG_SOExtension();
      v11 = v51;
      v13 = v48;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        containingBundle2 = [v51 containingBundle];
        bundleURL2 = [containingBundle2 bundleURL];
        *buf = 138413058;
        v61 = bundleURL2;
        v62 = 2112;
        selfCopy = array;
        v64 = 2112;
        v65 = v48;
        v66 = 2112;
        v67 = v18;
        _os_log_impl(&dword_1C1317000, v40, OS_LOG_TYPE_INFO, "Associated domain: for app %@: %@, appID: %@, services: %@", buf, 0x2Au);
      }

      bundleURL = v52;
      containingBundle = v50;
      v15 = v47;
      v16 = v45;
    }

    else
    {
      array = SO_LOG_SOExtension();
      if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
      {
        v43 = v53;
        [SOExtension checkAssociatedDomainsWithCache:];
        goto LABEL_46;
      }
    }

    v43 = v53;
LABEL_46:

LABEL_47:
LABEL_48:

LABEL_49:
LABEL_50:
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCompletion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  extension = [(SOExtension *)self extension];
  _extensionBundle = [extension _extensionBundle];
  bundleURL = [_extensionBundle bundleURL];

  if (bundleURL)
  {
    v8 = [MEMORY[0x1E6963678] pluginKitProxyForURL:bundleURL];
    v9 = v8;
    if (v8)
    {
      containingBundle = [v8 containingBundle];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [containingBundle entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];
        if (v11)
        {
          if (getuid() == 248)
          {
            v12 = SO_LOG_SOExtension();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1C1317000, v12, OS_LOG_TYPE_INFO, "Associated domain: Notify swcd", buf, 2u);
            }

            defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
            [defaultCenter postNotificationName:@"CP_SharedWebCredentialsDidChangeNotification" object:0 userInfo:0 options:1];
          }

          v35 = v9;
          v36 = completionCopy;
          v14 = objc_alloc(MEMORY[0x1E69CDB30]);
          v34 = v11;
          v15 = [v14 initWithServiceType:*MEMORY[0x1E69CDB40] applicationIdentifier:v11 domain:0];
          v16 = 0;
          v17 = 0;
          v18 = 0;
          do
          {
            v19 = SO_LOG_SOExtension();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [MEMORY[0x1E696AD98] numberWithInt:v16];
              *buf = 138543362;
              v41 = v20;
              _os_log_impl(&dword_1C1317000, v19, OS_LOG_TYPE_INFO, "Associated domain: attempt %{public}@", buf, 0xCu);
            }

            v39 = v18;
            v21 = [MEMORY[0x1E69CDB28] serviceDetailsWithServiceSpecifier:v15 error:&v39];
            v22 = v39;

            if (![v21 count])
            {
              [MEMORY[0x1E696AF00] sleepForTimeInterval:2.0];
            }

            if ([v21 count])
            {
              break;
            }

            v17 = v21;
            v18 = v22;
            v23 = v16 >= 9;
            v16 = (v16 + 1);
          }

          while (!v23);
          v24 = [v21 count];
          v25 = SO_LOG_SOExtension();
          v26 = v25;
          if (v24)
          {
            completionCopy = v36;
            v11 = v34;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              [SOExtension checkAssociatedDomainsWithCompletion:];
            }

            firstObject = [v21 firstObject];
            if ([firstObject isApproved])
            {
              v28 = SO_LOG_SOExtension();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                [SOExtension checkAssociatedDomainsWithCompletion:];
              }

              v36[2](v36, 1, 0);
            }

            else
            {
              v37[0] = MEMORY[0x1E69E9820];
              v37[1] = 3221225472;
              v37[2] = __52__SOExtension_checkAssociatedDomainsWithCompletion___block_invoke;
              v37[3] = &unk_1E813E6D0;
              v38 = v36;
              [firstObject waitForSiteApprovalWithCompletionHandler:v37];
            }
          }

          else
          {
            completionCopy = v36;
            v11 = v34;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [SOExtension checkAssociatedDomainsWithCache:];
            }

            (v36)[2](v36, 0, v22);
          }

          v9 = v35;
        }

        else
        {
          v32 = SO_LOG_SOExtension();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [SOExtension checkAssociatedDomainsWithCache:containingBundle];
          }

          v15 = [getSOErrorHelperClass_0() errorWithCode:-14 message:@"Failed to find extension appID"];
          (*(completionCopy + 2))(completionCopy, 0, v15);
        }
      }

      else
      {
        v31 = SO_LOG_SOExtension();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [SOExtension checkAssociatedDomainsWithCache:];
        }

        v11 = [getSOErrorHelperClass_0() errorWithCode:-14 message:@"Failed to find app proxy"];
        (*(completionCopy + 2))(completionCopy, 0, v11);
      }
    }

    else
    {
      v30 = SO_LOG_SOExtension();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [SOExtension checkAssociatedDomainsWithCache:];
      }

      containingBundle = [getSOErrorHelperClass_0() errorWithCode:-14 message:@"Failed to find bundle proxy"];
      (*(completionCopy + 2))(completionCopy, 0, containingBundle);
    }
  }

  else
  {
    v29 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [SOExtension checkAssociatedDomainsWithCache:?];
    }

    v9 = [getSOErrorHelperClass_0() errorWithCode:-14 message:@"Failed to find bundle URL"];
    (*(completionCopy + 2))(completionCopy, 0, v9);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __52__SOExtension_checkAssociatedDomainsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __52__SOExtension_checkAssociatedDomainsWithCompletion___block_invoke_cold_1();
  }

  if ([v5 isApproved])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    SOErrorHelperClass_0 = getSOErrorHelperClass_0();
    if (v6)
    {
      [SOErrorHelperClass_0 errorWithCode:-15 message:@"Associated domain check failed" suberror:v6];
    }

    else
    {
      [SOErrorHelperClass_0 errorWithCode:-15 message:@"Associated domain check failed"];
    }
    v10 = ;
    (*(v8 + 16))(v8, 0, v10);
  }
}

- (BOOL)hasURLApprovedAssociatedDomain:(id)domain cache:(id)cache
{
  v33 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  cacheCopy = cache;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315907;
    v26 = "[SOExtension hasURLApprovedAssociatedDomain:cache:]";
    v27 = 2160;
    v28 = 1752392040;
    v29 = 2117;
    v30 = domainCopy;
    v31 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s url: %{sensitive, mask.hash}@ on %@", buf, 0x2Au);
  }

  host = [domainCopy host];
  port = [domainCopy port];

  if (port)
  {
    port2 = [domainCopy port];
    v12 = [host stringByAppendingFormat:@":%@", port2];

    host = v12;
  }

  associatedDomains = [(SOExtension *)self associatedDomains];
  v14 = [associatedDomains containsObject:host];

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = [cacheCopy objectForKeyedSubscript:host];
    v17 = v16;
    if (v16)
    {
      v18 = MEMORY[0x1E695DF00];
      [v16 doubleValue];
      v19 = [v18 dateWithTimeIntervalSince1970:?];
      [v19 timeIntervalSinceNow];
      v21 = v20;
      [&unk_1F408FB08 doubleValue];
      v15 = v21 > v22;
    }

    else
    {
      v15 = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)hasAssociatedDomainsApproved
{
  v13 = *MEMORY[0x1E69E9840];
  associatedDomainLock = [(SOExtension *)self associatedDomainLock];
  objc_sync_enter(associatedDomainLock);
  v4 = [(NSArray *)self->_associatedDomains count];
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    extensionBundleIdentifier = [(SOExtension *)self extensionBundleIdentifier];
    v9 = 138543618;
    v10 = extensionBundleIdentifier;
    v11 = 1024;
    v12 = v4 != 0;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_INFO, "%{public}@ hasAssociatedDomainsApproved = %d", &v9, 0x12u);
  }

  objc_sync_exit(associatedDomainLock);
  v7 = *MEMORY[0x1E69E9840];
  return v4 != 0;
}

- (BOOL)isEqualToExtension:(id)extension
{
  extensionCopy = extension;
  extensionBundleIdentifier = [(SOExtension *)self extensionBundleIdentifier];
  extensionBundleIdentifier2 = [extensionCopy extensionBundleIdentifier];

  LOBYTE(extensionCopy) = [extensionBundleIdentifier isEqualToString:extensionBundleIdentifier2];
  return extensionCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SOExtension *)self isEqualToExtension:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  extensionBundleIdentifier = [(SOExtension *)self extensionBundleIdentifier];
  _extensionBundle = [(NSExtension *)self->_extension _extensionBundle];
  bundleURL = [_extensionBundle bundleURL];
  path = [bundleURL path];
  v9 = [v3 stringWithFormat:@"<%@:%p, bundleID=%@, path=%@, associatedDomains=%@>", v4, self, extensionBundleIdentifier, path, self->_associatedDomains];

  return v9;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[SOExtension viewServiceDidTerminateWithError:]";
    v22 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (errorCopy)
  {
    extensionDelegatesLock = [(SOExtension *)self extensionDelegatesLock];
    objc_sync_enter(extensionDelegatesLock);
    v7 = NSAllMapTableKeys(self->_extensionDelegates);
    objc_sync_exit(extensionDelegatesLock);

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          v13 = [getSOErrorHelperClass_0() errorWithCode:-3 message:{@"connection to extension interrupted", v15}];
          [(SOExtension *)self authorization:v12 didCompleteWithCredential:0 error:v13];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)beginDeviceRegistrationUsingOptions:(int64_t)options extensionData:(id)data completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  v10 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[SOExtension beginDeviceRegistrationUsingOptions:extensionData:completion:]";
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  pssoQueue = self->_pssoQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke;
  v15[3] = &unk_1E813E748;
  v17 = completionCopy;
  optionsCopy = options;
  v15[4] = self;
  v16 = dataCopy;
  v12 = dataCopy;
  v13 = completionCopy;
  dispatch_async(pssoQueue, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v11 = 0;
  v3 = [v2 remoteContextWithError:&v11];
  v4 = v11;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_cold_2();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_120;
    v9[3] = &unk_1E813E720;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v8 = *(a1 + 56);
    v10 = *(a1 + 48);
    [v3 beginDeviceRegistrationUsingOptions:v8 extensionData:v7 completion:v9];
  }
}

void __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_120(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2;
  block[3] = &unk_1E813E6F8;
  v7 = a2;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, block);
}

uint64_t __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 48);
  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) decrementRequestCount];
}

- (void)beginUserRegistrationUsingUserName:(id)name authenticationMethod:(int)method options:(int64_t)options extensionData:(id)data completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dataCopy = data;
  completionCopy = completion;
  v15 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[SOExtension beginUserRegistrationUsingUserName:authenticationMethod:options:extensionData:completion:]";
    v29 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v15, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  pssoQueue = self->_pssoQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke;
  v21[3] = &unk_1E813E770;
  v21[4] = self;
  v22 = nameCopy;
  methodCopy = method;
  v24 = completionCopy;
  optionsCopy = options;
  v23 = dataCopy;
  v17 = dataCopy;
  v18 = nameCopy;
  v19 = completionCopy;
  dispatch_async(pssoQueue, v21);

  v20 = *MEMORY[0x1E69E9840];
}

void __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v13 = 0;
  v3 = [v2 remoteContextWithError:&v13];
  v4 = v13;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_cold_2();
    }

    v7 = *(a1 + 72);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_122;
    v11[3] = &unk_1E813E720;
    v11[4] = *(a1 + 32);
    v10 = *(a1 + 64);
    v12 = *(a1 + 56);
    [v3 beginUserRegistrationUsingUserName:v8 authenticationMethod:v7 options:v10 extensionData:v9 completion:v11];
  }
}

void __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_122(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2;
  block[3] = &unk_1E813E6F8;
  v7 = a2;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, block);
}

uint64_t __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 48);
  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) decrementRequestCount];
}

- (void)registrationDidCompleteWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension registrationDidCompleteWithCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  pssoQueue = self->_pssoQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(pssoQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke_123;
    v8[3] = &unk_1E813E658;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 registrationDidCompleteWithCompletion:v8];
  }
}

uint64_t __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke_123(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__SOExtension_registrationDidCompleteWithCompletion___block_invoke_123_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) decrementRequestCount];
}

- (void)registrationDidCancelWithCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension registrationDidCancelWithCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  [(SOExtension *)self incrementRequestCount];
  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__SOExtension_registrationDidCancelWithCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __51__SOExtension_registrationDidCancelWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __51__SOExtension_registrationDidCancelWithCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__SOExtension_registrationDidCancelWithCompletion___block_invoke_124;
    v8[3] = &unk_1E813E658;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 registrationDidCancelWithCompletion:v8];
  }
}

uint64_t __51__SOExtension_registrationDidCancelWithCompletion___block_invoke_124(uint64_t a1)
{
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __51__SOExtension_registrationDidCancelWithCompletion___block_invoke_124_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  return [*(a1 + 32) decrementRequestCount];
}

- (void)supportedGrantTypesCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension supportedGrantTypesCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SOExtension_supportedGrantTypesCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __45__SOExtension_supportedGrantTypesCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __45__SOExtension_supportedGrantTypesCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__SOExtension_supportedGrantTypesCompletion___block_invoke_125;
    v8[3] = &unk_1E813E798;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 supportedGrantTypesCompletion:v8];
  }
}

void __45__SOExtension_supportedGrantTypesCompletion___block_invoke_125(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __45__SOExtension_supportedGrantTypesCompletion___block_invoke_125_cold_1();
  }
}

- (void)protocolVersionCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension protocolVersionCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__SOExtension_protocolVersionCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __41__SOExtension_protocolVersionCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __41__SOExtension_protocolVersionCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__SOExtension_protocolVersionCompletion___block_invoke_126;
    v8[3] = &unk_1E813E798;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 protocolVersionCompletion:v8];
  }
}

void __41__SOExtension_protocolVersionCompletion___block_invoke_126(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __41__SOExtension_protocolVersionCompletion___block_invoke_126_cold_1();
  }
}

- (void)canPerformRegistrationCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension canPerformRegistrationCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__SOExtension_canPerformRegistrationCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __48__SOExtension_canPerformRegistrationCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v11 = 0;
  v3 = [v2 remoteContextWithError:&v11];
  v4 = v11;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) decrementRequestCount];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __48__SOExtension_canPerformRegistrationCompletion___block_invoke_cold_2();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__SOExtension_canPerformRegistrationCompletion___block_invoke_127;
    v9[3] = &unk_1E813E7C0;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v7;
    [v3 canPerformRegistrationCompletion:v9];
    v8 = SO_LOG_SOExtension();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __48__SOExtension_canPerformRegistrationCompletion___block_invoke_cold_3();
    }
  }
}

uint64_t __48__SOExtension_canPerformRegistrationCompletion___block_invoke_127(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 decrementRequestCount];
}

- (void)supportedDeviceSigningAlgorithmsCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension supportedDeviceSigningAlgorithmsCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke_129;
    v8[3] = &unk_1E813E7E8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 supportedDeviceSigningAlgorithmsCompletion:v8];
  }
}

void __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke_129(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__SOExtension_supportedDeviceSigningAlgorithmsCompletion___block_invoke_129_cold_1();
  }
}

- (void)supportedDeviceEncryptionAlgorithmsCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension supportedDeviceEncryptionAlgorithmsCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke_131;
    v8[3] = &unk_1E813E7E8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 supportedDeviceEncryptionAlgorithmsCompletion:v8];
  }
}

void __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke_131(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__SOExtension_supportedDeviceEncryptionAlgorithmsCompletion___block_invoke_131_cold_1();
  }
}

- (void)supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOExtension supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke;
  v9[3] = &unk_1E813E450;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v10 = 0;
  v3 = [v2 remoteContextWithError:&v10];
  v4 = v10;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke_cold_2();
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke_132;
    v8[3] = &unk_1E813E7E8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v3 supportedUserSecureEnclaveKeySigningAlgorithmsCompletion:v8];
  }
}

void __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke_132(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __72__SOExtension_supportedUserSecureEnclaveKeySigningAlgorithmsCompletion___block_invoke_132_cold_1();
  }
}

- (void)keyWillRotateForKeyType:(int64_t)type keyProxyEndpoint:(id)endpoint extensionData:(id)data completion:(id)completion
{
  endpointCopy = endpoint;
  dataCopy = data;
  completionCopy = completion;
  v13 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke;
  block[3] = &unk_1E813E810;
  v20 = completionCopy;
  typeCopy = type;
  block[4] = self;
  v18 = endpointCopy;
  v19 = dataCopy;
  v14 = dataCopy;
  v15 = endpointCopy;
  v16 = completionCopy;
  dispatch_async(v13, block);
}

void __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v13 = 0;
  v3 = [v2 remoteContextWithError:&v13];
  v4 = v13;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke_cold_2();
    }

    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke_133;
    v11[3] = &unk_1E813E798;
    v9 = *(a1 + 64);
    v10 = *(a1 + 56);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v3 keyWillRotateForKeyType:v9 keyProxyEndpoint:v7 extensionData:v8 completion:v11];
  }
}

void __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke_133(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __81__SOExtension_keyWillRotateForKeyType_keyProxyEndpoint_extensionData_completion___block_invoke_133_cold_1();
  }
}

- (void)displayNamesForGroups:(id)groups extensionData:(id)data completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  dataCopy = data;
  completionCopy = completion;
  v11 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[SOExtension displayNamesForGroups:extensionData:completion:]";
    v23 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v12 = dispatch_get_global_queue(0, 0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke;
  v17[3] = &unk_1E813E860;
  v17[4] = self;
  v18 = groupsCopy;
  v19 = dataCopy;
  v20 = completionCopy;
  v13 = dataCopy;
  v14 = groupsCopy;
  v15 = completionCopy;
  dispatch_async(v12, v17);

  v16 = *MEMORY[0x1E69E9840];
}

void __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v12 = 0;
  v3 = [v2 remoteContextWithError:&v12];
  v4 = v12;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke_cold_2();
    }

    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke_134;
    v10[3] = &unk_1E813E838;
    v9 = *(a1 + 56);
    v10[4] = *(a1 + 32);
    v11 = v9;
    [v3 displayNamesForGroups:v7 extensionData:v8 completion:v10];
  }
}

void __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke_134(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__SOExtension_displayNamesForGroups_extensionData_completion___block_invoke_134_cold_1();
  }
}

- (void)profilePictureForUserUsingExtensionData:(id)data completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  v8 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[SOExtension profilePictureForUserUsingExtensionData:completion:]";
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke;
  block[3] = &unk_1E813E4F0;
  v14 = dataCopy;
  v15 = completionCopy;
  block[4] = self;
  v10 = dataCopy;
  v11 = completionCopy;
  dispatch_async(v9, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _contextForSession];
  v11 = 0;
  v3 = [v2 remoteContextWithError:&v11];
  v4 = v11;
  v5 = SO_LOG_SOExtension();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) decrementRequestCount];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_cold_2();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_136;
    v9[3] = &unk_1E813E888;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v3 profilePictureForUserUsingExtensionData:v7 completion:v9];
  }
}

void __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_136(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) decrementRequestCount];
  v2 = SO_LOG_SOExtension();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __66__SOExtension_profilePictureForUserUsingExtensionData_completion___block_invoke_136_cold_1();
  }
}

void __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __46__SOExtension_cancelAuthorization_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Failed to get remote context with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __46__SOExtension_cancelAuthorization_completion___block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void __88__SOExtension_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10(&dword_1C1317000, v3, v4, "Notifying delegate %{public}@ that extension wants to show UI, hints = %{private}@");
  v5 = *MEMORY[0x1E69E9840];
}

void __51__SOExtension__finishAuthorization_withCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_setupNonUISessionWithCompletion:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 extension];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __55__SOExtension__setupSessionHelperForIOSWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Failed to instantiate view controller because of %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_connectContextToSessionWithRequestIdentifier:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Session with ID %{public}@ was unable to get remote view service", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __72__SOExtension__connectContextToSessionWithRequestIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543618;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v1, v2, "Session with ID %{public}@ was unable to communicate with the remote service because of %{public}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __67__SOExtension__beginAuthorizationWithRequestParameters_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

void __68__SOExtension__beginAuthorizationWithServiceXPCEndpoint_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCache:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Associated domain: failed to get app proxy for extension: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCache:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8(&dword_1C1317000, v0, v1, "Associated domain: failed to get service details for the appID: %{public}@ with error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCache:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 bundleURL];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCache:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, v0, v1, "Associated domain: failed to get extension bundle proxy at path: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCache:(void *)a1 .cold.5(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 extension];
  v2 = [v1 _extensionBundle];
  v3 = [v2 bundleURL];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCompletion:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)checkAssociatedDomainsWithCompletion:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __52__SOExtension_checkAssociatedDomainsWithCompletion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_10(&dword_1C1317000, v0, v1, "Associated domains response: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

void __76__SOExtension_beginDeviceRegistrationUsingOptions_extensionData_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9(&dword_1C1317000, v2, v3, "Finished beginDeviceRegistrationUsingLoginManager, result = %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __104__SOExtension_beginUserRegistrationUsingUserName_authenticationMethod_options_extensionData_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9(&dword_1C1317000, v2, v3, "Finished beginUserRegistrationUsingLoginManager, result = %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end