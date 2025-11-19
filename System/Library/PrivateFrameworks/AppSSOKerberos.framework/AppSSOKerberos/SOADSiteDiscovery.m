@interface SOADSiteDiscovery
- (SOADSiteDiscovery)initWithRealm:(id)a3;
- (void)discoverADInfoUsingSourceAppBundleIdentifier:(id)a3 auditTokenData:(id)a4 requireTLSForLDAP:(BOOL)a5 withCompletion:(id)a6;
- (void)performNetworkConnectionUsingService:(id)a3 orHost:(id)a4 port:(unsigned __int16)a5 inBackground:(BOOL)a6 completion:(id)a7;
@end

@implementation SOADSiteDiscovery

- (SOADSiteDiscovery)initWithRealm:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SOADSiteDiscovery;
  v6 = [(SOADSiteDiscovery *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_realm, a3);
    v8 = objc_opt_new();
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.appsso.Kerberos.ldap.%@", v5];
    [(NSOperationQueue *)v7->_queue setName:v10];

    [(NSOperationQueue *)v7->_queue setMaxConcurrentOperationCount:1];
    v11 = objc_alloc_init(SODNSSRVQuery);
    dns = v7->_dns;
    v7->_dns = v11;
  }

  return v7;
}

- (void)discoverADInfoUsingSourceAppBundleIdentifier:(id)a3 auditTokenData:(id)a4 requireTLSForLDAP:(BOOL)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = SO_LOG_SOADSiteDiscovery();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SOADSiteDiscovery discoverADInfoUsingSourceAppBundleIdentifier:? auditTokenData:? requireTLSForLDAP:? withCompletion:?];
  }

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy_;
  v25[4] = __Block_byref_object_dispose_;
  v26 = 0;
  v14 = MEMORY[0x277CCACA8];
  v15 = [(SOADSiteDiscovery *)self realm];
  v16 = [v14 stringWithFormat:@"_ldap._tcp.%@", v15];

  v17 = [(SOADSiteDiscovery *)self dns];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __114__SOADSiteDiscovery_discoverADInfoUsingSourceAppBundleIdentifier_auditTokenData_requireTLSForLDAP_withCompletion___block_invoke;
  v20[3] = &unk_278C92F50;
  v20[4] = self;
  v18 = v10;
  v24 = a5;
  v21 = v18;
  v23 = v25;
  v19 = v12;
  v22 = v19;
  [v17 lookupSRVWithQuery:v16 bundleIdentifier:v18 auditTokenData:v11 completion:v20];

  _Block_object_dispose(v25, 8);
}

void __114__SOADSiteDiscovery_discoverADInfoUsingSourceAppBundleIdentifier_auditTokenData_requireTLSForLDAP_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = SO_LOG_SOADSiteDiscovery();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __114__SOADSiteDiscovery_discoverADInfoUsingSourceAppBundleIdentifier_auditTokenData_requireTLSForLDAP_withCompletion___block_invoke_cold_1();
  }

  objc_initWeak(&location, *(a1 + 32));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v22 = *v27;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        v7 = [SOAsynchronousLDAPOperation alloc];
        v8 = [*(a1 + 32) realm];
        v9 = [v6 host];
        v10 = [v6 port];
        v11 = *(a1 + 40);
        v12 = *(a1 + 64);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __114__SOADSiteDiscovery_discoverADInfoUsingSourceAppBundleIdentifier_auditTokenData_requireTLSForLDAP_withCompletion___block_invoke_7;
        v24[3] = &unk_278C92F28;
        v13 = *(a1 + 56);
        v24[4] = v6;
        v24[5] = v13;
        objc_copyWeak(&v25, &location);
        v14 = [(SOAsynchronousLDAPOperation *)v7 initWithRealm:v8 andHost:v9 andPort:v10 andBundleIdentifier:v11 andRequireTLSForLDAP:v12 & 1 andCompletion:v24];

        v15 = [*(a1 + 32) queue];
        [v15 addOperation:v14];

        objc_destroyWeak(&v25);
        ++v5;
      }

      while (v4 != v5);
      v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  v16 = [*(a1 + 32) queue];
  [v16 waitUntilAllOperationsAreFinished];

  v17 = SO_LOG_SOADSiteDiscovery();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __114__SOADSiteDiscovery_discoverADInfoUsingSourceAppBundleIdentifier_auditTokenData_requireTLSForLDAP_withCompletion___block_invoke_cold_2();
  }

  v18 = SO_LOG_SOADSiteDiscovery();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    __114__SOADSiteDiscovery_discoverADInfoUsingSourceAppBundleIdentifier_auditTokenData_requireTLSForLDAP_withCompletion___block_invoke_cold_3(a1);
  }

  v19 = *(*(*(a1 + 56) + 8) + 40);
  (*(*(a1 + 48) + 16))();
  objc_destroyWeak(&location);

  v20 = *MEMORY[0x277D85DE8];
}

void __114__SOADSiteDiscovery_discoverADInfoUsingSourceAppBundleIdentifier_auditTokenData_requireTLSForLDAP_withCompletion___block_invoke_7(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  v7 = SO_LOG_SOADSiteDiscovery();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __114__SOADSiteDiscovery_discoverADInfoUsingSourceAppBundleIdentifier_auditTokenData_requireTLSForLDAP_withCompletion___block_invoke_7_cold_1(v6, a1);
  }

  if (a2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = [WeakRetained queue];
    [v9 cancelAllOperations];
  }
}

void __120__SOADSiteDiscovery_performLDAPPingUsingSite_bundleIdentifier_auditTokenData_requireTLSForLDAP_inBackground_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = SO_LOG_SOADSiteDiscovery();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v7)
    {
      __120__SOADSiteDiscovery_performLDAPPingUsingSite_bundleIdentifier_auditTokenData_requireTLSForLDAP_inBackground_completion___block_invoke_cold_2(a1);
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __120__SOADSiteDiscovery_performLDAPPingUsingSite_bundleIdentifier_auditTokenData_requireTLSForLDAP_inBackground_completion___block_invoke_23;
    v10[3] = &unk_278C92F78;
    v11 = v8;
    v13 = *(a1 + 56);
    v12 = *(a1 + 32);
    [v11 queryforBaseDN:&stru_285206D08 andScope:0 andAttributes:&unk_28520B910 withFilter:v9 completion:v10];
  }

  else
  {
    if (v7)
    {
      __120__SOADSiteDiscovery_performLDAPPingUsingSite_bundleIdentifier_auditTokenData_requireTLSForLDAP_inBackground_completion___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 56) + 16))();
    [*(a1 + 40) disconnect];
  }
}

void __120__SOADSiteDiscovery_performLDAPPingUsingSite_bundleIdentifier_auditTokenData_requireTLSForLDAP_inBackground_completion___block_invoke_23(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) disconnect];
  if (a2)
  {
    v9 = [v8 objectForKeyedSubscript:@"netlogon"];
    v10 = [v9 firstObject];
    v11 = [v10 base64EncodedStringWithOptions:32];
    v12 = SO_LOG_SOADSiteDiscovery();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __120__SOADSiteDiscovery_performLDAPPingUsingSite_bundleIdentifier_auditTokenData_requireTLSForLDAP_inBackground_completion___block_invoke_23_cold_2();
    }

    v13 = [SONetLogonParser parseNetLoginUsingData:v10];
    v14 = [MEMORY[0x277CCABB0] numberWithShort:8];
    v15 = [v13 objectForKeyedSubscript:v14];

    v16 = SO_LOG_SOADSiteDiscovery();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __120__SOADSiteDiscovery_performLDAPPingUsingSite_bundleIdentifier_auditTokenData_requireTLSForLDAP_inBackground_completion___block_invoke_23_cold_3();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v17 = SO_LOG_SOADSiteDiscovery();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __120__SOADSiteDiscovery_performLDAPPingUsingSite_bundleIdentifier_auditTokenData_requireTLSForLDAP_inBackground_completion___block_invoke_23_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)performNetworkConnectionUsingService:(id)a3 orHost:(id)a4 port:(unsigned __int16)a5 inBackground:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v13 = v12;
  if (v10 | v11)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    secure_tcp = nw_parameters_create_secure_tcp(*MEMORY[0x277CD9238], *MEMORY[0x277CD9230]);
    if (v8)
    {
      nw_parameters_set_traffic_class();
    }

    if (v10)
    {
      [v10 UTF8String];
      srv = nw_endpoint_create_srv();
    }

    else
    {
      [v11 UTF8String];
      srv = nw_endpoint_create_host_with_numeric_port();
    }

    v16 = nw_connection_create(srv, secure_tcp);
    v17 = v28[5];
    v28[5] = v16;

    v18 = v28[5];
    v19 = dispatch_get_global_queue(0, 0);
    nw_connection_set_queue(v18, v19);

    v20 = v28[5];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __94__SOADSiteDiscovery_performNetworkConnectionUsingService_orHost_port_inBackground_completion___block_invoke;
    handler[3] = &unk_278C92FC8;
    v23 = v25;
    v24 = &v27;
    v22 = v13;
    nw_connection_set_state_changed_handler(v20, handler);
    nw_connection_start(v28[5]);

    _Block_object_dispose(v25, 8);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    (*(v12 + 2))(v12, 0);
  }
}

void __94__SOADSiteDiscovery_performNetworkConnectionUsingService_orHost_port_inBackground_completion___block_invoke(void *a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = SO_LOG_SOADSiteDiscovery();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __94__SOADSiteDiscovery_performNetworkConnectionUsingService_orHost_port_inBackground_completion___block_invoke_cold_1();
  }

  if (a2 <= 1 || a2 == 3)
  {
LABEL_4:
    *(*(a1[5] + 8) + 24) = 1;
    nw_connection_cancel(*(*(a1[6] + 8) + 40));
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

LABEL_5:
    (*(a1[4] + 16))();
    goto LABEL_6;
  }

  if (a2 != 5)
  {
    if (a2 != 4)
    {
      goto LABEL_6;
    }

    v9 = SO_LOG_SOADSiteDiscovery();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __94__SOADSiteDiscovery_performNetworkConnectionUsingService_orHost_port_inBackground_completion___block_invoke_cold_3();
    }

    goto LABEL_4;
  }

  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = SO_LOG_SOADSiteDiscovery();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __94__SOADSiteDiscovery_performNetworkConnectionUsingService_orHost_port_inBackground_completion___block_invoke_cold_2();
  }

  v13 = *(a1[5] + 8);
  if ((*(v13 + 24) & 1) == 0)
  {
    *(v13 + 24) = 1;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)discoverADInfoUsingSourceAppBundleIdentifier:(void *)a1 auditTokenData:requireTLSForLDAP:withCompletion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __114__SOADSiteDiscovery_discoverADInfoUsingSourceAppBundleIdentifier_auditTokenData_requireTLSForLDAP_withCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __114__SOADSiteDiscovery_discoverADInfoUsingSourceAppBundleIdentifier_auditTokenData_requireTLSForLDAP_withCompletion___block_invoke_cold_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*(*(a1 + 56) + 8) + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __114__SOADSiteDiscovery_discoverADInfoUsingSourceAppBundleIdentifier_auditTokenData_requireTLSForLDAP_withCompletion___block_invoke_7_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [*(a2 + 32) host];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)performLDAPPingUsingSite:(void *)a1 bundleIdentifier:auditTokenData:requireTLSForLDAP:inBackground:completion:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 realm];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)performLDAPPingUsingSite:bundleIdentifier:auditTokenData:requireTLSForLDAP:inBackground:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __120__SOADSiteDiscovery_performLDAPPingUsingSite_bundleIdentifier_auditTokenData_requireTLSForLDAP_inBackground_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_24006C000, v2, v3, "error with ldap connection for service: %@, %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __120__SOADSiteDiscovery_performLDAPPingUsingSite_bundleIdentifier_auditTokenData_requireTLSForLDAP_inBackground_completion___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __120__SOADSiteDiscovery_performLDAPPingUsingSite_bundleIdentifier_auditTokenData_requireTLSForLDAP_inBackground_completion___block_invoke_23_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_24006C000, v2, v3, "error with netlogon ping for service: %{public}@, %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __120__SOADSiteDiscovery_performLDAPPingUsingSite_bundleIdentifier_auditTokenData_requireTLSForLDAP_inBackground_completion___block_invoke_23_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __120__SOADSiteDiscovery_performLDAPPingUsingSite_bundleIdentifier_auditTokenData_requireTLSForLDAP_inBackground_completion___block_invoke_23_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __94__SOADSiteDiscovery_performNetworkConnectionUsingService_orHost_port_inBackground_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __94__SOADSiteDiscovery_performNetworkConnectionUsingService_orHost_port_inBackground_completion___block_invoke_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_24006C000, v0, OS_LOG_TYPE_ERROR, "tcp error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end