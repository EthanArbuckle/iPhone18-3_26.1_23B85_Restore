@interface SOLDAPHelper
- (SOLDAPHelper)init;
- (void)connectToLDAPService:(id)a3 requireTLSForLDAP:(BOOL)a4 bundleIdentifier:(id)a5 inBackground:(BOOL)a6 completion:(id)a7;
- (void)dealloc;
- (void)disconnect;
- (void)queryforBaseDN:(id)a3 andScope:(int)a4 andAttributes:(id)a5 withFilter:(id)a6 completion:(id)a7;
- (void)setupLDAPconnection:(id)a3 andPort:(unsigned __int16)a4 andRequireTLSForLDAP:(BOOL)a5 andBundleIdentifier:(id)a6;
- (void)startLDAPWithCompletion:(id)a3;
- (void)useDigestMD5Auth:(id)a3 andPassword:(id)a4;
- (void)useKerberosAuth:(gss_cred_id_t_desc_struct *)a3 forSPN:(id)a4;
@end

@implementation SOLDAPHelper

- (SOLDAPHelper)init
{
  v3.receiver = self;
  v3.super_class = SOLDAPHelper;
  result = [(SOLDAPHelper *)&v3 init];
  if (result)
  {
    *&result->_isConnected = 0;
  }

  return result;
}

- (void)dealloc
{
  if ([(SOLDAPHelper *)self isConnected])
  {
    [(SOLDAPHelper *)self disconnect];
  }

  v3.receiver = self;
  v3.super_class = SOLDAPHelper;
  [(SOLDAPHelper *)&v3 dealloc];
}

- (void)setupLDAPconnection:(id)a3 andPort:(unsigned __int16)a4 andRequireTLSForLDAP:(BOOL)a5 andBundleIdentifier:(id)a6
{
  v7 = a5;
  v8 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [(SOLDAPHelper *)self ldap];

  if (!v12)
  {
    v13 = SO_LOG_SOLDAPHelper();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v18 = v10;
      v19 = 1024;
      v20 = v8;
      v21 = 2114;
      v22 = v11;
      _os_log_debug_impl(&dword_24006C000, v13, OS_LOG_TYPE_DEBUG, "setting up ldap connection: %@, %d, %{public}@", buf, 0x1Cu);
    }

    v14 = ldap_connection_create_with_hostname();
    if (v7)
    {
      v15 = SO_LOG_SOLDAPHelper();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [SOLDAPHelper setupLDAPconnection:andPort:andRequireTLSForLDAP:andBundleIdentifier:];
      }

      ldap_connection_set_tls();
    }

    if (v11 && ([v11 isEqualToString:&stru_285206D08] & 1) == 0)
    {
      [v11 UTF8String];
      ldap_connection_set_source_application_by_bundle();
    }

    ldap_connection_set_disconnect_handler();
    [(SOLDAPHelper *)self setLdap:v14];
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __85__SOLDAPHelper_setupLDAPconnection_andPort_andRequireTLSForLDAP_andBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = SO_LOG_SOLDAPHelper();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__SOLDAPHelper_setupLDAPconnection_andPort_andRequireTLSForLDAP_andBundleIdentifier___block_invoke_cold_1();
  }

  return [*(a1 + 32) setIsConnected:0];
}

- (void)connectToLDAPService:(id)a3 requireTLSForLDAP:(BOOL)a4 bundleIdentifier:(id)a5 inBackground:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a5;
  v14 = a7;
  [(SOLDAPHelper *)self setCompletionCalled:0];
  v15 = [(SOLDAPHelper *)self ldap];

  if (v15)
  {
    v14[2](v14, 0, @"There is already an ldap connection");
  }

  else
  {
    v16 = SO_LOG_SOLDAPHelper();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [SOLDAPHelper connectToLDAPService:v12 requireTLSForLDAP:v13 bundleIdentifier:v16 inBackground:? completion:?];
    }

    [v12 UTF8String];
    srv = nw_endpoint_create_srv();
    v18 = *MEMORY[0x277CD9230];
    legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
    if (v8)
    {
      nw_parameters_set_traffic_class();
    }

    if (v13 && ([v13 isEqualToString:&stru_285206D08] & 1) == 0)
    {
      [v13 UTF8String];
      nw_parameters_set_source_application_by_bundle_id();
    }

    v20 = nw_connection_create(srv, legacy_tcp_socket);
    [(SOLDAPHelper *)self setConnection:v20];

    v21 = [(SOLDAPHelper *)self connection];
    v22 = dispatch_get_global_queue(0, 0);
    nw_connection_set_queue(v21, v22);

    v23 = [(SOLDAPHelper *)self connection];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke;
    v28 = &unk_278C92E88;
    v29 = self;
    v31 = v14;
    v32 = a4;
    v30 = v13;
    nw_connection_set_state_changed_handler(v23, &v25);

    v24 = [(SOLDAPHelper *)self connection:v25];
    nw_connection_start(v24);
  }
}

void __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = SO_LOG_SOLDAPHelper();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke_cold_1(a2, v6);
  }

  if (a2 > 1)
  {
    switch(a2)
    {
      case 3u:
        v15 = [*(a1 + 32) connection];
        v10 = nw_connection_copy_connected_remote_endpoint();

        v16 = nw_endpoint_copy_parent_endpoint();
        type = nw_endpoint_get_type(v16);
        if (v16)
        {
          while (type != (nw_endpoint_type_url|nw_endpoint_type_address))
          {
            v18 = v10;
            v10 = v16;

            v16 = nw_endpoint_copy_parent_endpoint();
            if (!v16)
            {
              break;
            }

            type = nw_endpoint_get_type(v16);
          }
        }

        v19 = [MEMORY[0x277CCACA8] stringWithCString:nw_endpoint_get_hostname(v10) encoding:4];
        v20 = [*(a1 + 32) connection];
        connected_socket = nw_connection_get_connected_socket();

        if (connected_socket == -1 || (*(a1 + 56) != 1 ? (v22 = ldap_connection_create_with_socket()) : (v22 = ldap_connection_create_with_socket_and_hostname()), (v23 = v22) == 0))
        {
          nw_endpoint_get_port(v10);
          v23 = ldap_connection_create_with_hostname();
        }

        if (*(a1 + 56) == 1)
        {
          v24 = SO_LOG_SOLDAPHelper();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [SOLDAPHelper setupLDAPconnection:andPort:andRequireTLSForLDAP:andBundleIdentifier:];
          }

          ldap_connection_set_tls();
        }

        v25 = *(a1 + 40);
        if (v25 && ([v25 isEqualToString:&stru_285206D08] & 1) == 0)
        {
          [*(a1 + 40) UTF8String];
          ldap_connection_set_source_application_by_bundle();
        }

        v26 = *(a1 + 32);
        ldap_connection_set_disconnect_handler();
        [*(a1 + 32) setLdap:v23];
        [*(a1 + 32) startLDAPWithCompletion:*(a1 + 48)];

        goto LABEL_40;
      case 5u:
        [*(a1 + 32) setConnection:0];
        v14 = SO_LOG_SOLDAPHelper();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke_cold_2();
        }

        if (([*(a1 + 32) completionCalled] & 1) == 0)
        {
          [*(a1 + 32) setCompletionCalled:1];
          (*(*(a1 + 48) + 16))();
        }

        break;
      case 4u:
        v11 = SO_LOG_SOLDAPHelper();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke_cold_4(v5, v11);
        }

        v12 = [*(a1 + 32) connection];

        if (v12)
        {
          v13 = [*(a1 + 32) connection];
          nw_connection_cancel(v13);

          [*(a1 + 32) setConnection:0];
        }

        if (([*(a1 + 32) completionCalled] & 1) == 0)
        {
          [*(a1 + 32) setCompletionCalled:1];
          v9 = *(a1 + 48);
          [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to connect to server: %@", v5];
          goto LABEL_8;
        }

        break;
    }
  }

  else
  {
    v7 = [*(a1 + 32) connection];

    if (v7)
    {
      v8 = [*(a1 + 32) connection];
      nw_connection_cancel(v8);

      [*(a1 + 32) setConnection:0];
    }

    if (([*(a1 + 32) completionCalled] & 1) == 0)
    {
      [*(a1 + 32) setCompletionCalled:1];
      v9 = *(a1 + 48);
      [MEMORY[0x277CCACA8] stringWithFormat:@"Waiting for connection: %@", v5];
      v10 = LABEL_8:;
      (*(v9 + 16))(v9, 0, v10);
LABEL_40:
    }
  }
}

void __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke_16(uint64_t a1)
{
  v2 = SO_LOG_SOLDAPHelper();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __85__SOLDAPHelper_setupLDAPconnection_andPort_andRequireTLSForLDAP_andBundleIdentifier___block_invoke_cold_1();
  }

  [*(a1 + 32) setIsConnected:0];
  v3 = [*(a1 + 32) connection];

  if (v3)
  {
    v4 = [*(a1 + 32) connection];
    nw_connection_cancel(v4);

    [*(a1 + 32) setConnection:0];
  }
}

- (void)startLDAPWithCompletion:(id)a3
{
  v4 = a3;
  v5 = SO_LOG_SOLDAPHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOLDAPHelper startLDAPWithCompletion:];
  }

  v6 = [(SOLDAPHelper *)self ldap];
  v7 = v4;
  ldap_connection_start();
}

void __40__SOLDAPHelper_startLDAPWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a4 == 10003)
  {
    v7 = SO_LOG_SOLDAPHelper();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __40__SOLDAPHelper_startLDAPWithCompletion___block_invoke_cold_1();
    }

    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to connect to server: %d", 10003];
    (*(v8 + 16))(v8, 0, v9);

    goto LABEL_8;
  }

  if (a4)
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to connect to server: %d", a4];
    (*(v10 + 16))(v10, 0, v11);

LABEL_8:
    [*(a1 + 32) setIsConnected:0];
    [*(a1 + 32) setCompletionCalled:1];
    [*(a1 + 32) setLdap:0];
    goto LABEL_9;
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setIsConnected:1];
  [*(a1 + 32) setCompletionCalled:1];
LABEL_9:
}

- (void)queryforBaseDN:(id)a3 andScope:(int)a4 andAttributes:(id)a5 withFilter:(id)a6 completion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [(SOLDAPHelper *)self ldap];
  v19 = v11;
  v16 = v19;
  v17 = ldap_connection_query_create();

  if (!v17)
  {
    v18 = SO_LOG_SOLDAPHelper();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SOLDAPHelper queryforBaseDN:andScope:andAttributes:withFilter:completion:];
    }

    (*(v16 + 2))(v16, 0, @"LDAP Failed to create query", 0);
  }
}

void __76__SOLDAPHelper_queryforBaseDN_andScope_andAttributes_withFilter_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SO_LOG_SOLDAPHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __76__SOLDAPHelper_queryforBaseDN_andScope_andAttributes_withFilter_completion___block_invoke_cold_1();
  }

  v6 = *(a1 + 32);
  v7 = [a3 copy];
  (*(v6 + 16))(v6, 1, &stru_285206D08, v7);
}

void __76__SOLDAPHelper_queryforBaseDN_andScope_andAttributes_withFilter_completion___block_invoke_29(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = ldap_operation_copy_error_string();
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"LDAP Connection Error: %@", v5];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)disconnect
{
  v3 = [(SOLDAPHelper *)self ldap];

  if (v3)
  {
    v4 = SO_LOG_SOLDAPHelper();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SOLDAPHelper disconnect];
    }

    v5 = [(SOLDAPHelper *)self ldap];
    ldap_connection_disconnect();

    [(SOLDAPHelper *)self setLdap:0];
  }
}

- (void)useDigestMD5Auth:(id)a3 andPassword:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v11 = [v6 dictionary];
  [v11 setValue:v8 forKey:*MEMORY[0x277CEE088]];

  [v11 setValue:v7 forKey:*MEMORY[0x277CEE080]];
  v9 = [(SOLDAPHelper *)self ldap];
  v10 = *MEMORY[0x277CEE058];
  ldap_connection_add_credential();
}

- (void)useKerberosAuth:(gss_cred_id_t_desc_struct *)a3 forSPN:(id)a4
{
  error = 0;
  v6 = GSSCreateName(a4, MEMORY[0x277CCAEF8], &error);
  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setValue:a3 forKey:*MEMORY[0x277CEE070]];
  [v7 setValue:v6 forKey:*MEMORY[0x277CEE078]];
  v8 = [(SOLDAPHelper *)self ldap];
  v9 = *MEMORY[0x277CEE060];
  ldap_connection_add_credential();
}

- (void)connectToLDAPService:(os_log_t)log requireTLSForLDAP:bundleIdentifier:inBackground:completion:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_24006C000, log, OS_LOG_TYPE_DEBUG, "setting up ldap connection: %@, %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_24006C000, a2, OS_LOG_TYPE_DEBUG, "tcp state: %u", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void __96__SOLDAPHelper_connectToLDAPService_requireTLSForLDAP_bundleIdentifier_inBackground_completion___block_invoke_cold_4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24006C000, a2, OS_LOG_TYPE_ERROR, "tcp error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end