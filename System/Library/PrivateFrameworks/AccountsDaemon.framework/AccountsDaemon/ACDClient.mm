@interface ACDClient
+ (ACDClient)clientWithBundleID:(id)d;
+ (id)_bundleForNonPlugInPID:(int)d;
- (ACDClient)initWithConnection:(id)connection;
- (BOOL)hasEntitlement:(id)entitlement;
- (NSNumber)pid;
- (NSString)adamOrDisplayID;
- (NSString)bundleID;
- (NSString)localizedAppName;
- (NSString)name;
- (__CFBundle)bundle;
- (id)description;
- (void)dealloc;
- (void)setBundleID:(id)d;
@end

@implementation ACDClient

- (void)dealloc
{
  bundle = self->_bundle;
  if (bundle)
  {
    CFRelease(bundle);
  }

  v4.receiver = self;
  v4.super_class = ACDClient;
  [(ACDClient *)&v4 dealloc];
}

- (NSString)bundleID
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __21__ACDClient_bundleID__block_invoke;
  v4[3] = &unk_27848CD70;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_1(&self->_clientPropertyLock, v4);

  return v2;
}

id __21__ACDClient_bundleID__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = +[ACDClient _bundleIDForPID:](ACDClient, "_bundleIDForPID:", [v3 processIdentifier]);
      v5 = *(a1 + 32);
      v6 = *(v5 + 24);
      *(v5 + 24) = v4;

      v3 = *(*(a1 + 32) + 24);
    }
  }

  return v3;
}

- (NSString)name
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __17__ACDClient_name__block_invoke;
  v4[3] = &unk_27848CD70;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_1(&self->_clientPropertyLock, v4);

  return v2;
}

id __17__ACDClient_name__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (!v3)
  {
    [*(v2 + 8) processIdentifier];
    v4 = ACDGetProcNameForPID();
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v3 = *(*(a1 + 32) + 56);
  }

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  name = [(ACDClient *)self name];
  v4 = [v2 stringWithFormat:@"%@", name];

  return v4;
}

+ (ACDClient)clientWithBundleID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setBundleID:dCopy];

  return v4;
}

- (ACDClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = ACDClient;
  v6 = [(ACDClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v7->_clientPropertyLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (NSNumber)pid
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __16__ACDClient_pid__block_invoke;
  v4[3] = &unk_27848CD48;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_1(&self->_clientPropertyLock, v4);

  return v2;
}

id __16__ACDClient_pid__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (!v3)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "processIdentifier")}];
      v5 = *(a1 + 32);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(a1 + 32) + 40);
    }
  }

  return v3;
}

+ (id)_bundleForNonPlugInPID:(int)d
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = proc_pidpath(d, buffer, 0x1000u);
  v4 = MEMORY[0x277CBEBC0];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:v3 encoding:4];
  v6 = [v4 fileURLWithPath:v5];

  if (v6)
  {
    v7 = _CFBundleCopyBundleURLForExecutableURL();
    v8 = [MEMORY[0x277CCA8D8] bundleWithURL:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setBundleID:(id)d
{
  dCopy = d;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __25__ACDClient_setBundleID___block_invoke;
  v9 = &unk_27848BFF0;
  v5 = dCopy;
  v10 = v5;
  selfCopy = self;
  v6 = v7;
  os_unfair_lock_lock(&self->_clientPropertyLock);
  v8(v6);
  os_unfair_lock_unlock(&self->_clientPropertyLock);
}

void __25__ACDClient_setBundleID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = *(a1 + 40);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;

  *(*(a1 + 40) + 32) = v5 != 0;
}

- (NSString)localizedAppName
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__ACDClient_localizedAppName__block_invoke;
  v4[3] = &unk_27848CD70;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_1(&self->_clientPropertyLock, v4);

  return v2;
}

id __29__ACDClient_localizedAppName__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[6];
  if (!v3)
  {
    v3 = v2[1];
    if (v3)
    {
      v5 = [v2 _displayNameFromLaunchServicesForPID:{objc_msgSend(v3, "processIdentifier")}];
      v6 = *(a1 + 32);
      v7 = *(v6 + 48);
      *(v6 + 48) = v5;

      v8 = *(a1 + 32);
      v3 = *(v8 + 48);
      if (!v3)
      {
        v9 = [v8 _displayNameFromBundleInfoDictionaryForPID:{objc_msgSend(*(v8 + 8), "processIdentifier")}];
        v10 = *(a1 + 32);
        v11 = *(v10 + 48);
        *(v10 + 48) = v9;

        v3 = *(*(a1 + 32) + 48);
        if (!v3)
        {
          v12 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:*(*(a1 + 32) + 24) allowPlaceholder:0 error:0];
          v13 = [v12 localizedName];
          v14 = *(a1 + 32);
          v15 = *(v14 + 48);
          *(v14 + 48) = v13;

          v16 = *(a1 + 32);
          v3 = *(v16 + 48);
          if (!v3)
          {
            [*(v16 + 8) processIdentifier];
            v17 = ACDGetProcNameForPID();
            v18 = *(a1 + 32);
            v19 = *(v18 + 48);
            *(v18 + 48) = v17;

            v3 = *(*(a1 + 32) + 48);
          }
        }
      }
    }
  }

  return v3;
}

- (NSString)adamOrDisplayID
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__ACDClient_adamOrDisplayID__block_invoke;
  v4[3] = &unk_27848CD70;
  v4[4] = self;
  v2 = ac_unfair_lock_perform_with_result_1(&self->_clientPropertyLock, v4);

  return v2;
}

id __28__ACDClient_adamOrDisplayID__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    [v2 processIdentifier];
    v2 = ACDGetAdamOrDisplayIDForPID();
    v1 = vars8;
  }

  return v2;
}

- (__CFBundle)bundle
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __19__ACDClient_bundle__block_invoke;
  v3[3] = &unk_27848CD98;
  v3[4] = self;
  return ac_unfair_lock_perform_with_result_1(&self->_clientPropertyLock, v3);
}

id __19__ACDClient_bundle__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC1E70]);
    v4 = [*v1 bundleID];
    v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

    v6 = [v5 bundleContainerURL];

    if (v6)
    {
      CFRetain(v6);
      *(*v1 + 2) = CFBundleCreate(*MEMORY[0x277CBECE8], v6);
      if (!*(*v1 + 2))
      {
        v7 = _ACDLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __19__ACDClient_bundle__block_invoke_cold_1(v1, v6, v7);
        }
      }

      CFRelease(v6);
    }

    v2 = *(*v1 + 2);
  }

  return v2;
}

- (BOOL)hasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __28__ACDClient_hasEntitlement___block_invoke;
  v12 = &unk_27848CDC0;
  selfCopy = self;
  v14 = entitlementCopy;
  v5 = entitlementCopy;
  v6 = ac_unfair_lock_perform_with_result_1(&self->_clientPropertyLock, &v9);
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

id __28__ACDClient_hasEntitlement___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    v3 = [*(v1 + 64) objectForKey:*(a1 + 40)];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 BOOLValue];
    }

    else
    {
      v6 = *(a1 + 32);
      if (!v6[8])
      {
        v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
        v8 = *(a1 + 32);
        v9 = *(v8 + 64);
        *(v8 + 64) = v7;

        v6 = *(a1 + 32);
      }

      v10 = [v6 _rawValueForEntitlement:*(a1 + 40)];
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v14 = _ACDLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          v21 = *(a1 + 40);
          v22 = *(*(a1 + 32) + 8);
          v23 = 138412802;
          v24 = v22;
          v25 = 2112;
          v26 = v21;
          v27 = 2112;
          v28 = v10;
          _os_log_fault_impl(&dword_221D2F000, v14, OS_LOG_TYPE_FAULT, "Connection '%@' has unsupported object type set for entitlement '%@': %@", &v23, 0x20u);
        }

        [*(*(a1 + 32) + 64) setObject:MEMORY[0x277CBEC28] forKey:*(a1 + 40)];
        v5 = 0;
      }

      else
      {
        v5 = [v10 BOOLValue];
        v11 = _ACDLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v18 = *(a1 + 40);
          v19 = *(*(a1 + 32) + 56);
          v20 = [MEMORY[0x277CCABB0] numberWithBool:v5];
          v23 = 138412802;
          v24 = v18;
          v25 = 2112;
          v26 = v19;
          v27 = 2112;
          v28 = v20;
          _os_log_debug_impl(&dword_221D2F000, v11, OS_LOG_TYPE_DEBUG, "Entitlement %@ verification for %@ result cached as: %@", &v23, 0x20u);
        }

        v12 = *(*(a1 + 32) + 64);
        v13 = [MEMORY[0x277CCABB0] numberWithBool:v5];
        [v12 setObject:v13 forKey:*(a1 + 40)];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __19__ACDClient_bundle__block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_221D2F000, log, OS_LOG_TYPE_ERROR, "CFBundleCreate failed: %@, %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end