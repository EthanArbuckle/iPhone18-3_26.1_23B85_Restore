@interface SODNSSRVQuery
- (SODNSSRVQuery)init;
- (id)lookupSRVWithQuery:(id)query bundleIdentifier:(id)identifier auditTokenData:(id)data;
- (void)lookupHost:(id)host port:(id)port bundleIdentifier:(id)identifier auditTokenData:(id)data completion:(id)completion;
- (void)lookupSRVWithQuery:(id)query bundleIdentifier:(id)identifier auditTokenData:(id)data completion:(id)completion;
@end

@implementation SODNSSRVQuery

- (SODNSSRVQuery)init
{
  v3.receiver = self;
  v3.super_class = SODNSSRVQuery;
  return [(SODNSSRVQuery *)&v3 init];
}

- (id)lookupSRVWithQuery:(id)query bundleIdentifier:(id)identifier auditTokenData:(id)data
{
  queryCopy = query;
  identifierCopy = identifier;
  dataCopy = data;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2;
  v36 = __Block_byref_object_dispose__2;
  v37 = objc_opt_new();
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31 = dispatch_group_create();
  v10 = MEMORY[0x245CB78B0]();
  if (identifierCopy && ([identifierCopy isEqualToString:&stru_285206D08] & 1) == 0)
  {
    v11 = SO_LOG_SODNSSRVQuery();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:];
    }

    [identifierCopy UTF8String];
    nw_parameters_set_source_application_by_bundle_id();
  }

  memset(v25, 0, sizeof(v25));
  if (dataCopy && [MEMORY[0x277CEBF10] auditTokenFromData:dataCopy auditToken:v25])
  {
    v12 = SO_LOG_SODNSSRVQuery();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:];
    }

    nw_parameters_set_source_application();
  }

  [queryCopy UTF8String];
  srv = nw_endpoint_create_srv();
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v15 = nw_path_evaluator_copy_path();
  v16 = v15;
  if (v15 && nw_path_get_status(v15) == nw_path_status_satisfied)
  {
    v17 = nw_resolver_create_with_path();
    dispatch_group_enter(v27[5]);
    v18 = dispatch_get_global_queue(0, 0);
    v24 = v17;
    nw_resolver_set_update_handler();
  }

  v19 = v27[5];
  v20 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v19, v20) >= 1)
  {
    v21 = SO_LOG_SODNSSRVQuery();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:];
    }
  }

  v22 = v33[5];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v22;
}

void __68__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData___block_invoke(void *a1, int a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    goto LABEL_4;
  }

  if (a2 == 2)
  {
    v7 = a1[5];
    nw_array_apply();
LABEL_4:
    v6 = a1[4];
    nw_resolver_cancel();
    dispatch_group_leave(*(*(a1[6] + 8) + 40));
  }
}

uint64_t __68__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCACA8] stringWithCString:nw_endpoint_get_hostname(v4) encoding:4];
  if ([v6 hasSuffix:@"."])
  {
    v7 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 1}];

    v6 = v7;
  }

  [v5 setHost:v6];
  [v5 setPort:nw_endpoint_get_port(v4)];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v5];

  return 1;
}

- (void)lookupSRVWithQuery:(id)query bundleIdentifier:(id)identifier auditTokenData:(id)data completion:(id)completion
{
  queryCopy = query;
  identifierCopy = identifier;
  dataCopy = data;
  completionCopy = completion;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__2;
  v26[4] = __Block_byref_object_dispose__2;
  v27 = objc_opt_new();
  v13 = SO_LOG_SODNSSRVQuery();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:completion:];
  }

  v14 = MEMORY[0x245CB78B0]();
  if (identifierCopy && ([identifierCopy isEqualToString:&stru_285206D08] & 1) == 0)
  {
    v15 = SO_LOG_SODNSSRVQuery();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:];
    }

    [identifierCopy UTF8String];
    nw_parameters_set_source_application_by_bundle_id();
  }

  memset(v25, 0, sizeof(v25));
  if (dataCopy && [MEMORY[0x277CEBF10] auditTokenFromData:dataCopy auditToken:v25])
  {
    v16 = SO_LOG_SODNSSRVQuery();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:completion:];
    }

    nw_parameters_set_source_application();
  }

  [queryCopy UTF8String];
  srv = nw_endpoint_create_srv();
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v19 = nw_path_evaluator_copy_path();
  v20 = v19;
  if (v19 && nw_path_get_status(v19) == nw_path_status_satisfied)
  {
    v21 = nw_resolver_create_with_path();
    v22 = dispatch_get_global_queue(0, 0);
    v23 = v21;
    v24 = completionCopy;
    nw_resolver_set_update_handler();
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  _Block_object_dispose(v26, 8);
}

void __79__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData_completion___block_invoke(void *a1, int a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v9 = SO_LOG_SODNSSRVQuery();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __79__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData_completion___block_invoke_cold_1();
    }

    v10 = a1[4];
    nw_resolver_cancel();
    v8 = *(a1[5] + 16);
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v11 = a1[6];
    nw_array_apply();
    v6 = a1[4];
    nw_resolver_cancel();
    v7 = *(*(a1[6] + 8) + 40);
    v8 = *(a1[5] + 16);
LABEL_7:
    v8();
  }
}

uint64_t __79__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CCACA8] stringWithCString:nw_endpoint_get_hostname(v4) encoding:4];
  if ([v6 hasSuffix:@"."])
  {
    v7 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 1}];

    v6 = v7;
  }

  [v5 setHost:v6];
  [v5 setPort:nw_endpoint_get_port(v4)];
  v8 = SO_LOG_SODNSSRVQuery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __79__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData_completion___block_invoke_2_cold_1();
  }

  [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  return 1;
}

- (void)lookupHost:(id)host port:(id)port bundleIdentifier:(id)identifier auditTokenData:(id)data completion:(id)completion
{
  hostCopy = host;
  portCopy = port;
  identifierCopy = identifier;
  dataCopy = data;
  completionCopy = completion;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__2;
  v30[4] = __Block_byref_object_dispose__2;
  v31 = objc_opt_new();
  v16 = SO_LOG_SODNSSRVQuery();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [SODNSSRVQuery lookupHost:port:bundleIdentifier:auditTokenData:completion:];
  }

  v17 = MEMORY[0x245CB78B0]();
  if (identifierCopy && ([identifierCopy isEqualToString:&stru_285206D08] & 1) == 0)
  {
    v18 = SO_LOG_SODNSSRVQuery();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:];
    }

    [identifierCopy UTF8String];
    nw_parameters_set_source_application_by_bundle_id();
  }

  memset(v29, 0, sizeof(v29));
  if (dataCopy && [MEMORY[0x277CEBF10] auditTokenFromData:dataCopy auditToken:v29])
  {
    v19 = SO_LOG_SODNSSRVQuery();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [SODNSSRVQuery lookupSRVWithQuery:bundleIdentifier:auditTokenData:completion:];
    }

    nw_parameters_set_source_application();
  }

  host = nw_endpoint_create_host([hostCopy UTF8String], objc_msgSend(portCopy, "UTF8String"));
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v22 = nw_path_evaluator_copy_path();
  v23 = v22;
  if (v22 && nw_path_get_status(v22) == nw_path_status_satisfied)
  {
    v26 = dataCopy;
    v24 = nw_resolver_create_with_path();
    v25 = dispatch_get_global_queue(0, 0);
    v27 = v24;
    v28 = completionCopy;
    nw_resolver_set_update_handler();

    dataCopy = v26;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  _Block_object_dispose(v30, 8);
}

void __76__SODNSSRVQuery_lookupHost_port_bundleIdentifier_auditTokenData_completion___block_invoke(void *a1, int a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v9 = SO_LOG_SODNSSRVQuery();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __76__SODNSSRVQuery_lookupHost_port_bundleIdentifier_auditTokenData_completion___block_invoke_cold_1();
    }

    v10 = a1[4];
    nw_resolver_cancel();
    v8 = *(a1[5] + 16);
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v11 = a1[6];
    nw_array_apply();
    v6 = a1[4];
    nw_resolver_cancel();
    v7 = *(*(a1[6] + 8) + 40);
    v8 = *(a1[5] + 16);
LABEL_7:
    v8();
  }
}

uint64_t __76__SODNSSRVQuery_lookupHost_port_bundleIdentifier_auditTokenData_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 description];
  v5 = SO_LOG_SODNSSRVQuery();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __79__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData_completion___block_invoke_2_cold_1();
  }

  [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  return 1;
}

- (void)lookupSRVWithQuery:bundleIdentifier:auditTokenData:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "Using bundleIdentifier %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)lookupSRVWithQuery:bundleIdentifier:auditTokenData:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "Starting SRV query: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __79__SODNSSRVQuery_lookupSRVWithQuery_bundleIdentifier_auditTokenData_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "adding result: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)lookupHost:port:bundleIdentifier:auditTokenData:completion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_4(&dword_24006C000, v0, v1, "Starting host query: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end