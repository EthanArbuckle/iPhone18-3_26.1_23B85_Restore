@interface AIDAServiceOwnersManager
+ (NSArray)supportedServices;
+ (NSSet)serviceOwnerBundles;
+ (id)_loadServiceOwnerBundles;
+ (id)_loadServiceOwnerBundlesIfNeeded;
+ (id)_rejectionlistedBundleIDs;
+ (id)_sharedTelemetryReporter;
+ (id)_supplementalServiceTypes;
+ (void)configureProcessSpecificServiceOwnerRejectionlist:(id)a3;
+ (void)configureProcessSpecificSupplementalServiceTypes:(id)a3;
+ (void)supportedServices;
- (AIDAServiceOwnersManager)init;
- (AIDAServiceOwnersManager)initWithAccountStore:(id)a3;
- (NSDictionary)serviceOwners;
- (id)DSIDForAccount:(id)a3 service:(id)a4;
- (id)_buildServiceOwnerMapping;
- (id)_postCloudSupportedServicesForAltDSID:(id)a3;
- (id)accountForService:(id)a3;
- (id)altDSIDForAccount:(id)a3 service:(id)a4;
- (id)nameComponentsForAccount:(id)a3 service:(id)a4;
- (void)_completeSignInSignpost:(id)a3 forService:(id)a4 context:(id)a5 success:(BOOL)a6 error:(id)a7;
- (void)_publishSignInTelemetryEventForContext:(id)a3;
- (void)signInService:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)signInToAllServicesInBackground:(BOOL)a3 usingContext:(id)a4 completion:(id)a5;
- (void)signInToServices:(id)a3 usingContext:(id)a4 completion:(id)a5;
- (void)signOutOfAllServicesUsingContext:(id)a3 completion:(id)a4;
- (void)signOutOfServices:(id)a3 usingContext:(id)a4 completion:(id)a5;
- (void)signOutService:(id)a3 withContext:(id)a4 completion:(id)a5;
@end

@implementation AIDAServiceOwnersManager

- (NSDictionary)serviceOwners
{
  serviceOwners = self->_serviceOwners;
  if (!serviceOwners)
  {
    os_unfair_lock_lock(&self->_serviceOwnersLock);
    if (!self->_serviceOwners)
    {
      v4 = [(AIDAServiceOwnersManager *)self _buildServiceOwnerMapping];
      v5 = self->_serviceOwners;
      self->_serviceOwners = v4;
    }

    os_unfair_lock_unlock(&self->_serviceOwnersLock);
    serviceOwners = self->_serviceOwners;
  }

  return serviceOwners;
}

- (id)_buildServiceOwnerMapping
{
  v15 = *MEMORY[0x1E69E9840];
  accountStore = self->_accountStore;
  if (accountStore)
  {
    v3 = accountStore;
  }

  else
  {
    v3 = [MEMORY[0x1E6959A48] defaultStore];
  }

  v4 = v3;
  v5 = [objc_opt_class() _loadServiceOwnerBundlesIfNeeded];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke;
  v11[3] = &unk_1E86834E0;
  v6 = v4;
  v12 = v6;
  v7 = [v5 aaf_map:v11];
  v8 = _AIDALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&dword_1DEB1B000, v8, OS_LOG_TYPE_DEFAULT, "Finished building service owner mapping: %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __60__AIDAServiceOwnersManager__loadServiceOwnerBundlesIfNeeded__block_invoke(uint64_t a1)
{
  _loadServiceOwnerBundlesIfNeeded_bundles = [*(a1 + 32) _loadServiceOwnerBundles];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_loadServiceOwnerBundlesIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AIDAServiceOwnersManager__loadServiceOwnerBundlesIfNeeded__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_loadServiceOwnerBundlesIfNeededOnceToken != -1)
  {
    dispatch_once(&_loadServiceOwnerBundlesIfNeededOnceToken, block);
  }

  v2 = _loadServiceOwnerBundlesIfNeeded_bundles;

  return v2;
}

+ (id)_loadServiceOwnerBundles
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() serviceOwnerBundles];
  v4 = _AIDALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_1DEB1B000, v4, OS_LOG_TYPE_DEFAULT, "Building AIDA service owner bundle mapping for bundles: %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [a1 _rejectionlistedBundleIDs];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __52__AIDAServiceOwnersManager__loadServiceOwnerBundles__block_invoke;
  v16 = &unk_1E8683528;
  v17 = v6;
  v7 = v5;
  v18 = v7;
  v8 = v6;
  [v3 enumerateObjectsUsingBlock:&v13];
  v9 = _AIDALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&dword_1DEB1B000, v9, OS_LOG_TYPE_DEFAULT, "Completed building AIDA service owner mapping with result: %@", buf, 0xCu);
  }

  v10 = [v7 copy];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (NSSet)serviceOwnerBundles
{
  if (serviceOwnerBundles_onceToken != -1)
  {
    +[AIDAServiceOwnersManager serviceOwnerBundles];
  }

  v3 = serviceOwnerBundles_serviceOwnerBundles;

  return v3;
}

uint64_t __47__AIDAServiceOwnersManager_serviceOwnerBundles__block_invoke()
{
  serviceOwnerBundles_serviceOwnerBundles = [MEMORY[0x1E6959A78] pluginBundlesAtSubpath:@"ServiceOwners"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_rejectionlistedBundleIDs
{
  v2 = [_AIDAServiceOwnersManagerRejectionlist copy];

  return v2;
}

void __52__AIDAServiceOwnersManager__loadServiceOwnerBundles__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bundleIdentifier];
  v6 = [v4 containsObject:v5];

  v7 = _AIDALogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v28 = v3;
      _os_log_impl(&dword_1DEB1B000, v7, OS_LOG_TYPE_DEFAULT, "Skipping rejectionlisted AIDA bundle: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v28 = v3;
      _os_log_impl(&dword_1DEB1B000, v7, OS_LOG_TYPE_DEFAULT, "Loading AIDA service owner bundle: %@", buf, 0xCu);
    }

    v25 = 0;
    v9 = [v3 loadAndReturnError:&v25];
    v7 = v25;
    v10 = _AIDALogSystem();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v3;
        _os_log_impl(&dword_1DEB1B000, v11, OS_LOG_TYPE_DEFAULT, "Loaded bundle: %@", buf, 0xCu);
      }

      v12 = [v3 principalClass];
      if ([v12 conformsToProtocol:&unk_1F59D2108])
      {
        v11 = [v12 supportedServices];
        v13 = [v11 count];
        v14 = _AIDALogSystem();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v28 = v3;
            v29 = 2112;
            v30 = v12;
            v31 = 2112;
            v32 = v11;
            _os_log_impl(&dword_1DEB1B000, v15, OS_LOG_TYPE_DEFAULT, "Loaded AIDA service owner bundle (%@) with principal class (%@) for services: %@", buf, 0x20u);
          }

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v15 = v11;
          v16 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v22;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v22 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [*(a1 + 40) setObject:v3 forKeyedSubscript:{*(*(&v21 + 1) + 8 * i), v21}];
              }

              v17 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
            }

            while (v17);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __52__AIDAServiceOwnersManager__loadServiceOwnerBundles__block_invoke_cold_3();
        }
      }

      else
      {
        v11 = _AIDALogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke_cold_2();
        }
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __52__AIDAServiceOwnersManager__loadServiceOwnerBundles__block_invoke_cold_1();
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

NSObject *__53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AIDALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_1DEB1B000, v5, OS_LOG_TYPE_DEFAULT, "Building service owner for bundle: %@", &v13, 0xCu);
  }

  if (([v4 isLoaded]& 1) == 0)
  {
    v7 = _AIDALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke_cold_1();
    }

    goto LABEL_13;
  }

  v6 = [v4 principalClass];
  if (([v6 conformsToProtocol:&unk_1F59D2108] & 1) == 0)
  {
    v7 = _AIDALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke_cold_2();
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v7 = [[v6 alloc] initWithAccountStore:*(a1 + 32)];
  v8 = _AIDALogSystem();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1DEB1B000, v9, OS_LOG_TYPE_DEFAULT, "Allocated and initialized service owner: %@", &v13, 0xCu);
    }

    v7 = v7;
    v10 = v7;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke_cold_3();
    }

    v10 = 0;
  }

LABEL_14:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (AIDAServiceOwnersManager)init
{
  [(AIDAServiceOwnersManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (AIDAServiceOwnersManager)initWithAccountStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = AIDAServiceOwnersManager;
  v6 = [(AIDAServiceOwnersManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    serviceOwners = v6->_serviceOwners;
    v6->_serviceOwners = 0;

    v7->_serviceOwnersLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v7->_accountStore, a3);
  }

  return v7;
}

+ (void)configureProcessSpecificServiceOwnerRejectionlist:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _AIDALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1DEB1B000, v4, OS_LOG_TYPE_DEFAULT, "Configuring process-specific rejectionlist: %@", &v8, 0xCu);
  }

  v5 = [v3 copy];
  v6 = _AIDAServiceOwnersManagerRejectionlist;
  _AIDAServiceOwnersManagerRejectionlist = v5;

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)configureProcessSpecificSupplementalServiceTypes:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = _AIDALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1DEB1B000, v4, OS_LOG_TYPE_DEFAULT, "Configuring process-specific supplemental services: %@", &v8, 0xCu);
  }

  v5 = [v3 copy];
  v6 = _AIDAServiceOwnersManagerSupplementalServiceTypes;
  _AIDAServiceOwnersManagerSupplementalServiceTypes = v5;

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)_supplementalServiceTypes
{
  v2 = [_AIDAServiceOwnersManagerSupplementalServiceTypes copy];

  return v2;
}

+ (NSArray)supportedServices
{
  v3 = [a1 _loadServiceOwnerBundlesIfNeeded];
  v4 = MEMORY[0x1E695DFA0];
  v5 = [v3 allKeys];
  v6 = [v4 orderedSetWithArray:v5];

  v7 = [a1 _supplementalServiceTypes];
  if (v7)
  {
    [v6 unionSet:v7];
  }

  if ([v6 containsObject:@"com.apple.AppleID.Service.Cloud"])
  {
    [v6 removeObject:@"com.apple.AppleID.Service.Cloud"];
    [v6 insertObject:@"com.apple.AppleID.Service.Cloud" atIndex:0];
  }

  v8 = _AIDALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[AIDAServiceOwnersManager supportedServices];
  }

  v9 = [v6 array];

  return v9;
}

- (id)accountForService:(id)a3
{
  v4 = a3;
  v5 = [(AIDAServiceOwnersManager *)self serviceOwners];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 accountForService:v4];

  return v7;
}

- (id)altDSIDForAccount:(id)a3 service:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AIDAServiceOwnersManager *)self serviceOwners];
  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v9 altDSIDForAccount:v7 service:v6];

  return v10;
}

- (id)DSIDForAccount:(id)a3 service:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AIDAServiceOwnersManager *)self serviceOwners];
  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v9 DSIDForAccount:v7 service:v6];

  return v10;
}

- (id)nameComponentsForAccount:(id)a3 service:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AIDAServiceOwnersManager *)self serviceOwners];
  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v9 nameComponentsForAccount:v7 service:v6];

  return v10;
}

- (void)signInService:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AIDAServiceOwnersManager *)self serviceOwners];
  v12 = [v11 objectForKeyedSubscript:v8];

  if (v12)
  {
    v13 = [MEMORY[0x1E698DC80] sharedInstance];
    v14 = MEMORY[0x1E6985DB0];
    v15 = [v9 authenticationResults];
    v34 = [v14 aida_analyticsStartEventForAIDAServiceType:v8 accountManager:v13 authenticationResults:v15];

    v16 = +[AIDAAnalyticsReporterRTC sharedTelemetryReporter];
    [v16 sendEvent:v34];

    v17 = MEMORY[0x1E6985DB0];
    v18 = [v9 authenticationResults];
    v33 = [v17 aida_analyticsDurationEventForAIDAServiceType:v8 accountManager:v13 authenticationResults:v18];

    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v32 = _os_activity_create(&dword_1DEB1B000, "AIDA/signInService", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v32, &state);
    v19 = _AIDASignpostLogSystem();
    v20 = _AIDASignpostCreate(v19);
    v22 = v21;

    v23 = _AIDASignpostLogSystem();
    v24 = v23;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 138543362;
      v46 = v8;
      _os_signpost_emit_with_name_impl(&dword_1DEB1B000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v20, "SignInService", " ServiceType=%{public,signpost.telemetry:string1,name=ServiceType}@  enableTelemetry=YES ", buf, 0xCu);
    }

    v25 = _AIDASignpostLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v46 = v20;
      v47 = 2114;
      v48 = v8;
      _os_log_impl(&dword_1DEB1B000, v25, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignInService  ServiceType=%{public,signpost.telemetry:string1,name=ServiceType}@  enableTelemetry=YES ", buf, 0x16u);
    }

    v26 = [v9 copy];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __65__AIDAServiceOwnersManager_signInService_withContext_completion___block_invoke;
    v35[3] = &unk_1E8683550;
    v27 = v33;
    v36 = v27;
    v37 = self;
    v42 = v20;
    v43 = v22;
    v38 = v8;
    v28 = v26;
    v39 = v28;
    v41 = v10;
    v29 = v13;
    v40 = v29;
    [v12 signInService:v38 withContext:v28 completion:v35];

    os_activity_scope_leave(&state);
  }

  else
  {
    v30 = _AIDALogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [AIDAServiceOwnersManager signInService:withContext:completion:];
    }

    v29 = [MEMORY[0x1E696ABC0] aida_errorWithCode:-1001];
    (*(v10 + 2))(v10, 0, v29);
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __65__AIDAServiceOwnersManager_signInService_withContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 aida_updateEventWithSuccess:a2 error:v6];
  v7 = +[AIDAAnalyticsReporterRTC sharedTelemetryReporter];
  [v7 sendEvent:*(a1 + 32)];

  [*(a1 + 40) _completeSignInSignpost:*(a1 + 80) forService:*(a1 + 88) context:*(a1 + 48) success:*(a1 + 56) error:{a2, v6}];
  (*(*(a1 + 72) + 16))();
  v8 = MEMORY[0x1E6985DB0];
  v9 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = [*(a1 + 56) authenticationResults];
  v13 = [v8 aida_analyticsFinishEventForAIDAServiceType:v10 accountManager:v9 authenticationResults:v11 success:a2 error:v6];

  v12 = +[AIDAAnalyticsReporterRTC sharedTelemetryReporter];
  [v12 sendEvent:v13];
}

- (id)_postCloudSupportedServicesForAltDSID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(AIDAServiceOwnersManager *)self accountForService:@"com.apple.AppleID.Service.Cloud"];
    if (v5)
    {
      v6 = [(AIDAServiceOwnersManager *)self altDSIDForAccount:v5 service:@"com.apple.AppleID.Service.Cloud"];
      if (v6 && [v4 isEqualToString:v6])
      {
        v7 = +[AIDAServiceOwnersManager supportedServices];
        v8 = [v7 mutableCopy];

        [v8 removeObject:@"com.apple.AppleID.Service.Cloud"];
        v9 = [v8 copy];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)signInToAllServicesInBackground:(BOOL)a3 usingContext:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = _AIDALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AIDAServiceOwnersManager signInToAllServicesInBackground:v8 usingContext:? completion:?];
  }

  v11 = _AIDALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AIDAServiceOwnersManager signInToAllServicesInBackground:v8 usingContext:? completion:?];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke;
  v14[3] = &unk_1E86835F0;
  v15 = v8;
  v16 = v9;
  v14[4] = self;
  v17 = a3;
  v12 = v8;
  v13 = v9;
  [(AIDAServiceOwnersManager *)self signInService:@"com.apple.AppleID.Service.Cloud" withContext:v12 completion:v14];
}

void __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v23 = a3;
  if (v23)
  {
    v5 = _AIDALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEB1B000, v5, OS_LOG_TYPE_DEFAULT, "Failed global signin with authentication results for cloud service.", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v21 = a2;
    v22 = a1;
    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    v8 = [v6[1] authenticationResults];
    v9 = [v8 objectForKeyedSubscript:@"AKAltDSID"];
    v10 = [v7 _postCloudSupportedServicesForAltDSID:v9];

    v25 = [v6[1] mutableCopy];
    [v25 setOperationUIPermissions:0];
    v11 = dispatch_group_create();
    *buf = 0;
    v41 = buf;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy_;
    v44 = __Block_byref_object_dispose_;
    v45 = *v6;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v12)
    {
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          dispatch_group_enter(v11);
          v16 = dispatch_get_global_queue(33, 0);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke_101;
          block[3] = &unk_1E86835A0;
          block[4] = v15;
          v35 = buf;
          v33 = v25;
          v34 = v11;
          dispatch_async(v16, block);
        }

        v12 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v12);
    }

    v17 = *(v22 + 56);
    if (v17 == 1)
    {
      (*(*(v22 + 48) + 16))();
      LOBYTE(v17) = *(v22 + 56);
    }

    v18 = dispatch_get_global_queue(33, 0);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke_106;
    v26[3] = &unk_1E86835C8;
    v30 = v17;
    v19 = *(v22 + 48);
    v31 = v21;
    v27 = 0;
    v28 = v19;
    v29 = buf;
    dispatch_group_notify(v11, v18, v26);

    _Block_object_dispose(buf, 8);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke_101(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _AIDALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1DEB1B000, v2, OS_LOG_TYPE_DEFAULT, "Logging into service %{public}@", buf, 0xCu);
  }

  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke_102;
  v8[3] = &unk_1E8683578;
  v8[4] = v5;
  v9 = *(a1 + 48);
  [v4 signInService:v5 withContext:v6 completion:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke_102(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AIDALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v10 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1DEB1B000, v6, OS_LOG_TYPE_DEFAULT, "Log in to service %@ completed with result: %@, error: %@", &v10, 0x20u);
  }

  dispatch_group_leave(*(a1 + 40));
  v9 = *MEMORY[0x1E69E9840];
}

void __84__AIDAServiceOwnersManager_signInToAllServicesInBackground_usingContext_completion___block_invoke_106(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = *(a1 + 57);
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    (*(*(a1 + 40) + 16))();
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (void)signInToServices:(id)a3 usingContext:(id)a4 completion:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy_;
  v30[4] = __Block_byref_object_dispose_;
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke;
  v26[3] = &unk_1E8683690;
  v26[4] = self;
  v11 = v9;
  v27 = v11;
  v29 = v30;
  v12 = v10;
  v28 = v12;
  v13 = MEMORY[0x1E12C4D20](v26);
  v14 = [v8 mutableCopy];
  if (![v14 containsObject:@"com.apple.AppleID.Service.Cloud"])
  {
    v16 = v8;
    goto LABEL_7;
  }

  v15 = @"com.apple.AppleID.Service.Cloud";
  [v14 removeObject:v15];
  v16 = [v14 copy];

  if (!v15)
  {
LABEL_7:
    (v13)[2](v13, v14);
    goto LABEL_8;
  }

  v17 = _AIDALogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v15;
    _os_log_impl(&dword_1DEB1B000, v17, OS_LOG_TYPE_DEFAULT, "signInToServices - Logging into service %{public}@", buf, 0xCu);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_111;
  v20[3] = &unk_1E86836B8;
  v25 = v30;
  v18 = v15;
  v21 = v18;
  v23 = v12;
  v24 = v13;
  v22 = v14;
  [(AIDAServiceOwnersManager *)self signInService:v18 withContext:v11 completion:v20];

LABEL_8:
  _Block_object_dispose(v30, 8);

  v19 = *MEMORY[0x1E69E9840];
}

void __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 1;
  v4 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v5)
  {
    v6 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        dispatch_group_enter(v4);
        v9 = dispatch_get_global_queue(33, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_2;
        block[3] = &unk_1E8683640;
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        block[4] = v8;
        block[5] = v10;
        v22 = v11;
        v12 = *(a1 + 56);
        v24 = v30;
        v25 = v12;
        v23 = v4;
        dispatch_async(v9, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v5);
  }

  v13 = dispatch_get_global_queue(33, 0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_2_109;
  v18[3] = &unk_1E8683668;
  v20 = v30;
  v16 = *(a1 + 48);
  v14 = v16;
  v19 = v16;
  dispatch_group_notify(v4, v13, v18);

  _Block_object_dispose(v30, 8);
  v15 = *MEMORY[0x1E69E9840];
}

void __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = _AIDALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v14 = v3;
    _os_log_impl(&dword_1DEB1B000, v2, OS_LOG_TYPE_DEFAULT, "signInToServices - Logging into service %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_107;
  v10[3] = &unk_1E8683618;
  v12 = *(a1 + 72);
  v10[4] = v5;
  v9 = *(a1 + 56);
  v7 = v9;
  v11 = v9;
  [v4 signInService:v5 withContext:v6 completion:v10];

  v8 = *MEMORY[0x1E69E9840];
}

void __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_107(void *a1, uint64_t a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
  }

  v5 = a3;
  v6 = [[AIDAServiceOperationResult alloc] initWithSuccess:a2 error:v5 type:a1[4]];

  [*(*(a1[7] + 8) + 40) setObject:v6 forKeyedSubscript:a1[4]];
  v7 = a1[5];

  dispatch_group_leave(v7);
}

void __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_2_109(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1[5] + 8) + 40) copy];
  v3 = _AIDALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1[6] + 8) + 24))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1DEB1B000, v3, OS_LOG_TYPE_DEFAULT, "signInToServices completed with success %@ and results: %@", &v7, 0x16u);
  }

  v5 = *(*(a1[6] + 8) + 24);
  (*(a1[4] + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

void __69__AIDAServiceOwnersManager_signInToServices_usingContext_completion___block_invoke_111(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [[AIDAServiceOperationResult alloc] initWithSuccess:a2 error:v5 type:a1[4]];

  [*(*(a1[8] + 8) + 40) setObject:v6 forKeyedSubscript:a1[4]];
  if (a2)
  {
    v7 = a1[5];
    v8 = *(a1[7] + 16);
    v9 = *MEMORY[0x1E69E9840];

    v8();
  }

  else
  {
    v10 = _AIDALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1[8] + 8) + 40);
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_1DEB1B000, v10, OS_LOG_TYPE_DEFAULT, "signInToServices failed sign in for primary account with results: %@", &v15, 0xCu);
    }

    v12 = a1[6];
    v13 = [*(*(a1[8] + 8) + 40) copy];
    (*(v12 + 16))(v12, 0, v13);

    v14 = *MEMORY[0x1E69E9840];
  }
}

- (void)signOutService:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _AIDASignpostLogSystem();
  v12 = _AIDASignpostCreate(v11);
  v14 = v13;

  v15 = _AIDASignpostLogSystem();
  v16 = v15;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138543362;
    *&buf[4] = v8;
    _os_signpost_emit_with_name_impl(&dword_1DEB1B000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SignOutService", " ServiceType=%{public,signpost.telemetry:string1,name=ServiceType}@  enableTelemetry=YES ", buf, 0xCu);
  }

  v17 = _AIDASignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_1DEB1B000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignOutService  ServiceType=%{public,signpost.telemetry:string1,name=ServiceType}@  enableTelemetry=YES ", buf, 0x16u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __66__AIDAServiceOwnersManager_signOutService_withContext_completion___block_invoke;
  v25[3] = &unk_1E86836E0;
  v27 = v12;
  v28 = v14;
  v18 = v10;
  v26 = v18;
  v19 = MEMORY[0x1E12C4D20](v25);
  v20 = [(AIDAServiceOwnersManager *)self serviceOwners];
  v21 = [v20 objectForKeyedSubscript:v8];

  if (v21)
  {
    v22 = _os_activity_create(&dword_1DEB1B000, "AIDA/signOutService", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *buf = 0;
    *&buf[8] = 0;
    os_activity_scope_enter(v22, buf);
    v23 = [v9 copy];
    [v21 signOutService:v8 withContext:v23 completion:v19];

    os_activity_scope_leave(buf);
  }

  else
  {
    v22 = [MEMORY[0x1E696ABC0] aida_errorWithCode:-1001];
    (v19)[2](v19, 0, v22);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __66__AIDAServiceOwnersManager_signOutService_withContext_completion___block_invoke(void *a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _AIDASignpostGetNanoseconds(a1[5], a1[6]);
  v7 = _AIDASignpostLogSystem();
  v8 = v7;
  v9 = a1[5];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v15 = 67240448;
    *v16 = a2;
    *&v16[4] = 1026;
    *&v16[6] = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1DEB1B000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SignOutService", " Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v15, 0xEu);
  }

  v10 = _AIDASignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = Nanoseconds / 1000000000.0;
    v12 = a1[5];
    v13 = [v5 code];
    v15 = 134218752;
    *v16 = v12;
    *&v16[8] = 2048;
    v17 = v11;
    v18 = 1026;
    v19 = a2;
    v20 = 1026;
    v21 = v13;
    _os_log_impl(&dword_1DEB1B000, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignOutService  Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v15, 0x22u);
  }

  (*(a1[4] + 16))();
  v14 = *MEMORY[0x1E69E9840];
}

- (void)signOutOfAllServicesUsingContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[AIDAServiceOwnersManager supportedServices];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__AIDAServiceOwnersManager_signOutOfAllServicesUsingContext_completion___block_invoke;
  v10[3] = &unk_1E8683708;
  v11 = v6;
  v9 = v6;
  [(AIDAServiceOwnersManager *)self signOutOfServices:v8 usingContext:v7 completion:v10];
}

void __72__AIDAServiceOwnersManager_signOutOfAllServicesUsingContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"com.apple.AppleID.Service.Cloud"];
  v5 = *(a1 + 32);
  v8 = v4;
  if (v4)
  {
    v6 = [v4 success];
    v7 = [v8 error];
    (*(v5 + 16))(v5, v6, v7);
  }

  else
  {
    (*(v5 + 16))(v5, 1, 0);
  }
}

- (void)signOutOfServices:(id)a3 usingContext:(id)a4 completion:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy_;
  v30[4] = __Block_byref_object_dispose_;
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke;
  v26[3] = &unk_1E8683690;
  v26[4] = self;
  v11 = v9;
  v27 = v11;
  v29 = v30;
  v12 = v10;
  v28 = v12;
  v13 = MEMORY[0x1E12C4D20](v26);
  v14 = [v8 mutableCopy];
  if (![v14 containsObject:@"com.apple.AppleID.Service.Cloud"])
  {
    v16 = v8;
    goto LABEL_7;
  }

  v15 = @"com.apple.AppleID.Service.Cloud";
  [v14 removeObject:v15];
  v16 = [v14 copy];

  if (!v15)
  {
LABEL_7:
    (v13)[2](v13, v14);
    goto LABEL_8;
  }

  v17 = _AIDALogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v15;
    _os_log_impl(&dword_1DEB1B000, v17, OS_LOG_TYPE_DEFAULT, "signOutOfServices - Logging out of primary service %{public}@", buf, 0xCu);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_115;
  v20[3] = &unk_1E86836B8;
  v25 = v30;
  v18 = v15;
  v21 = v18;
  v23 = v12;
  v24 = v13;
  v22 = v14;
  [(AIDAServiceOwnersManager *)self signOutService:v18 withContext:v11 completion:v20];

LABEL_8:
  _Block_object_dispose(v30, 8);

  v19 = *MEMORY[0x1E69E9840];
}

void __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 1;
  v4 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v5)
  {
    v6 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        dispatch_group_enter(v4);
        v9 = dispatch_get_global_queue(33, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_2;
        block[3] = &unk_1E8683640;
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        block[4] = v8;
        block[5] = v10;
        v22 = v11;
        v12 = *(a1 + 56);
        v24 = v30;
        v25 = v12;
        v23 = v4;
        dispatch_async(v9, block);

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v5);
  }

  v13 = dispatch_get_global_queue(33, 0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_2_114;
  v18[3] = &unk_1E8683668;
  v20 = v30;
  v16 = *(a1 + 48);
  v14 = v16;
  v19 = v16;
  dispatch_group_notify(v4, v13, v18);

  _Block_object_dispose(v30, 8);
  v15 = *MEMORY[0x1E69E9840];
}

void __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = _AIDALogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v14 = v3;
    _os_log_impl(&dword_1DEB1B000, v2, OS_LOG_TYPE_DEFAULT, "signOutOfServices - Logging out of service %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_113;
  v10[3] = &unk_1E8683618;
  v12 = *(a1 + 72);
  v10[4] = v5;
  v9 = *(a1 + 56);
  v7 = v9;
  v11 = v9;
  [v4 signOutService:v5 withContext:v6 completion:v10];

  v8 = *MEMORY[0x1E69E9840];
}

void __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_113(void *a1, uint64_t a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
  }

  v5 = a3;
  v6 = [[AIDAServiceOperationResult alloc] initWithSuccess:a2 error:v5 type:a1[4]];

  [*(*(a1[7] + 8) + 40) setObject:v6 forKeyedSubscript:a1[4]];
  v7 = a1[5];

  dispatch_group_leave(v7);
}

void __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_2_114(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1[5] + 8) + 40) copy];
  v3 = _AIDALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(a1[6] + 8) + 24))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_1DEB1B000, v3, OS_LOG_TYPE_DEFAULT, "signOutOfServices completed with success %@ and results: %@", &v7, 0x16u);
  }

  v5 = *(*(a1[6] + 8) + 24);
  (*(a1[4] + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

void __70__AIDAServiceOwnersManager_signOutOfServices_usingContext_completion___block_invoke_115(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [[AIDAServiceOperationResult alloc] initWithSuccess:a2 error:v5 type:a1[4]];

  [*(*(a1[8] + 8) + 40) setObject:v6 forKeyedSubscript:a1[4]];
  if (a2)
  {
    v7 = a1[5];
    v8 = *(a1[7] + 16);
    v9 = *MEMORY[0x1E69E9840];

    v8();
  }

  else
  {
    v10 = _AIDALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1[8] + 8) + 40);
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_1DEB1B000, v10, OS_LOG_TYPE_DEFAULT, "signOutOfServices failed sign out for primary account with results: %@", &v15, 0xCu);
    }

    v12 = a1[6];
    v13 = [*(*(a1[8] + 8) + 40) copy];
    (*(v12 + 16))(v12, 0, v13);

    v14 = *MEMORY[0x1E69E9840];
  }
}

+ (id)_sharedTelemetryReporter
{
  if (_sharedTelemetryReporter_once != -1)
  {
    +[AIDAServiceOwnersManager _sharedTelemetryReporter];
  }

  v3 = _sharedTelemetryReporter_reporter;

  return v3;
}

void __52__AIDAServiceOwnersManager__sharedTelemetryReporter__block_invoke()
{
  v2 = objc_opt_new();
  v0 = [MEMORY[0x1E6985DB8] analyticsReporterWithTransport:v2];
  v1 = _sharedTelemetryReporter_reporter;
  _sharedTelemetryReporter_reporter = v0;
}

- (void)_completeSignInSignpost:(id)a3 forService:(id)a4 context:(id)a5 success:(BOOL)a6 error:(id)a7
{
  v30 = a6;
  var1 = a3.var1;
  var0 = a3.var0;
  v42 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v31 = [v11 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s_%@", "SignInService", v31];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_errorCode", v14];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_errorDomain", v14];
  if (v13)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "code")}];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v12 _telemetryTimeSeries];
  [v18 setObject:v17 forKeyedSubscript:v15];

  if (v13)
  {
  }

  v19 = [v13 domain];
  v20 = [v12 _telemetryTimeSeries];
  [v20 setObject:v19 forKeyedSubscript:v16];

  Nanoseconds = _AIDASignpostGetNanoseconds(var0, var1);
  v22 = _AIDASignpostLogSystem();
  v23 = v22;
  if (var0 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 138543874;
    v34 = v11;
    v35 = 1026;
    *v36 = v30;
    *&v36[4] = 1026;
    *&v36[6] = [v13 code];
    _os_signpost_emit_with_name_impl(&dword_1DEB1B000, v23, OS_SIGNPOST_INTERVAL_END, var0, "SignInService", " ServiceType=%{public,signpost.telemetry:string2,name=ServiceType}@  Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x18u);
  }

  v24 = Nanoseconds / 1000000000.0;

  v25 = _AIDASignpostLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v13 code];
    *buf = 134219010;
    v34 = var0;
    v35 = 2048;
    *v36 = v24;
    *&v36[8] = 2114;
    v37 = v11;
    v38 = 1026;
    v39 = v30;
    v40 = 1026;
    v41 = v26;
    _os_log_impl(&dword_1DEB1B000, v25, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs:SignInService  ServiceType=%{public,signpost.telemetry:string2,name=ServiceType}@  Success=%{public,signpost.telemetry:number1,name=Success}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x2Cu);
  }

  v27 = [v12 _telemetryTimeSeries];
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
  [v27 setObject:v28 forKeyedSubscript:v14];

  [(AIDAServiceOwnersManager *)self _publishSignInTelemetryEventForContext:v12];
  v29 = *MEMORY[0x1E69E9840];
}

- (void)_publishSignInTelemetryEventForContext:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 _telemetryTimeSeries];
  v5 = [v4 copy];

  v6 = _AIDALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1DEB1B000, v6, OS_LOG_TYPE_DEFAULT, "Publishing AIDA sign in telemetry event for context (%@) with time series: %@", &v11, 0x16u);
  }

  v7 = [MEMORY[0x1E6985DB0] analyticsEventWithName:@"com.apple.com.apple.appleidauthentication.sign-in-service" eventCategory:0 initData:v5];
  v8 = +[AIDAServiceOwnersManager _sharedTelemetryReporter];
  [v8 sendEvent:v7];

  v9 = _AIDALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1DEB1B000, v9, OS_LOG_TYPE_DEFAULT, "Published AIDA sign in telemetry event for context (%@)", &v11, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_1DEB1B000, v0, OS_LOG_TYPE_FAULT, "Bundle already expected to be loaded: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1DEB1B000, v0, v1, "Non-conformant principal class for bundle: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__AIDAServiceOwnersManager__buildServiceOwnerMapping__block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1DEB1B000, v0, v1, "Failed to allocate service owner for bundle: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__AIDAServiceOwnersManager__loadServiceOwnerBundles__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1DEB1B000, v1, OS_LOG_TYPE_ERROR, "Failed to load bundle (%{public}@), error: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __52__AIDAServiceOwnersManager__loadServiceOwnerBundles__block_invoke_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1DEB1B000, v0, v1, "Missing supported services for bundle: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)supportedServices
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1DEB1B000, v0, OS_LOG_TYPE_DEBUG, "AIDA returning supported services: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)signInService:withContext:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1DEB1B000, v0, v1, "Sign in service attempted with an unsupported service type: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)signInToAllServicesInBackground:(void *)a1 usingContext:completion:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 cdpUiProvider];
  OUTLINED_FUNCTION_2(&dword_1DEB1B000, v2, v3, "CDP provider set on context: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)signInToAllServicesInBackground:(void *)a1 usingContext:completion:.cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 aaSignInFlowControllerDelegate];
  OUTLINED_FUNCTION_2(&dword_1DEB1B000, v2, v3, "AAFlowControllerDelegate set on context: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end