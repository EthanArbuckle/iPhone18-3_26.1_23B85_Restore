@interface SONetworkIdentity
- (BOOL)isPerAppVPN;
- (NSString)networkFingerprint;
- (id)getInterfaceFingerprintForDynamicInterface:(const char *)a3;
- (id)getInterfaceSignature:(id)a3;
- (id)getVPNServerSignature:(id)a3;
- (id)initForRealm:(id)a3 bundleIdentifier:(id)a4 auditToken:(id)a5;
- (void)determineNetworkFingerprint;
- (void)evaluateVPNPath;
- (void)evaluateVPNPath:(id)a3;
- (void)evaluateVPNPathForHost:(id)a3 port:(id)a4;
- (void)setPerAppVPN:(BOOL)a3;
@end

@implementation SONetworkIdentity

- (id)initForRealm:(id)a3 bundleIdentifier:(id)a4 auditToken:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SONetworkIdentity;
  v12 = [(SONetworkIdentity *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_realm, a3);
    objc_storeStrong(p_isa + 4, a4);
    objc_storeStrong(p_isa + 6, a5);
  }

  return p_isa;
}

- (NSString)networkFingerprint
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_networkFingerprint;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isPerAppVPN
{
  v2 = self;
  objc_sync_enter(v2);
  perAppVPN = v2->_perAppVPN;
  objc_sync_exit(v2);

  return perAppVPN;
}

- (void)setPerAppVPN:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_perAppVPN = a3;
  objc_sync_exit(obj);
}

- (void)evaluateVPNPathForHost:(id)a3 port:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [a3 UTF8String];
  v10 = [v8 UTF8String];

  host = nw_endpoint_create_host(v9, v10);
  [(SONetworkIdentity *)self evaluateVPNPath:host];
}

- (void)evaluateVPNPath
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SONetworkIdentity *)self realm];
  v5 = [v3 stringWithFormat:@"_kerberos._tcp.%@", v4];
  [v5 UTF8String];
  srv = nw_endpoint_create_srv();

  [(SONetworkIdentity *)self evaluateVPNPath:srv];
}

- (void)evaluateVPNPath:(id)a3
{
  v4 = a3;
  v5 = SO_LOG_SONetworkIdentity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SONetworkIdentity evaluateVPNPath:];
  }

  v6 = MEMORY[0x245CB78B0]();
  v7 = [(SONetworkIdentity *)self bundleIdentifier];

  if (v7)
  {
    v8 = [(SONetworkIdentity *)self bundleIdentifier];
    [v8 UTF8String];
    nw_parameters_set_source_application_by_bundle_id();

    memset(v18, 0, sizeof(v18));
    v9 = [(SONetworkIdentity *)self auditToken];
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0x277CEBF10];
      v12 = [(SONetworkIdentity *)self auditToken];
      LODWORD(v11) = [v11 auditTokenFromData:v12 auditToken:v18];

      if (v11)
      {
        v13 = SO_LOG_SONetworkIdentity();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [SONetworkIdentity evaluateVPNPath:];
        }

        nw_parameters_set_source_application();
      }
    }
  }

  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v15 = nw_path_evaluator_copy_path();
  v16 = SO_LOG_SONetworkIdentity();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [SONetworkIdentity evaluateVPNPath:];
  }

  v17 = self;
  objc_sync_enter(v17);
  [(SONetworkIdentity *)v17 setPerAppVPN:nw_path_is_per_app_vpn()];
  objc_sync_exit(v17);
}

- (void)determineNetworkFingerprint
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 networkFingerprint];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_24006C000, v2, v3, "VPN signature: %{private}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (id)getVPNServerSignature:(id)a3
{
  name = nw_interface_get_name(a3);
  v4 = nwi_state_copy();
  v5 = &stru_285206D08;
  if (v4 && name)
  {
    if (nwi_state_get_ifstate() && (vpn_server = nwi_ifstate_get_vpn_server()) != 0)
    {
      v7.s_addr = *(vpn_server + 4);
      v8 = inet_ntoa(v7);
      v9 = SO_LOG_SONetworkIdentity();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [SONetworkIdentity getVPNServerSignature:];
      }

      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
    }

    else
    {
      v5 = &stru_285206D08;
    }
  }

  return v5;
}

- (id)getInterfaceSignature:(id)a3
{
  v4 = a3;
  v5 = SO_LOG_SONetworkIdentity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SONetworkIdentity getInterfaceSignature:];
  }

  name = nw_interface_get_name(v4);
  v7 = nwi_state_copy();
  if (name && v7)
  {
    if (nwi_state_get_ifstate() && (nwi_ifstate_get_flags() & 3) != 0)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
      nwi_ifstate_get_signature();
      nwi_ifstate_get_signature();
    }

    nwi_state_release();
  }

  v9 = [(SONetworkIdentity *)self getInterfaceFingerprintForDynamicInterface:name];

  return v9;
}

- (id)getInterfaceFingerprintForDynamicInterface:(const char *)a3
{
  v40[2] = *MEMORY[0x277D85DE8];
  v4 = SO_LOG_SONetworkIdentity();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SONetworkIdentity getInterfaceFingerprintForDynamicInterface:];
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = SCDynamicStoreCreate(*MEMORY[0x277CBECE8], @"com.apple.KerberosExtension", 0, 0);
  v7 = *MEMORY[0x277CE1648];
  v8 = *MEMORY[0x277CE1628];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, *MEMORY[0x277CE1648], *MEMORY[0x277CE1628], *MEMORY[0x277CE1688]);
  v10 = SCDynamicStoreKeyCreateNetworkServiceEntity(v5, v7, v8, *MEMORY[0x277CE1690]);
  v40[0] = NetworkServiceEntity;
  v40[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  if (NetworkServiceEntity)
  {
    CFRelease(NetworkServiceEntity);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v12 = SCDynamicStoreCopyMultiple(v6, 0, v11);
  if (v6)
  {
    CFRelease(v6);
  }

  v37 = 0;
  v38[0] = &v37;
  v38[1] = 0x3032000000;
  v38[2] = __Block_byref_object_copy__1;
  v38[3] = __Block_byref_object_dispose__1;
  v39 = 0;
  v34 = 0;
  v35[0] = &v34;
  v35[1] = 0x3032000000;
  v35[2] = __Block_byref_object_copy__1;
  v35[3] = __Block_byref_object_dispose__1;
  v36 = 0;
  v13 = [MEMORY[0x277CCACA8] stringWithCString:a3 encoding:4];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __64__SONetworkIdentity_getInterfaceFingerprintForDynamicInterface___block_invoke;
  v30 = &unk_278C932E0;
  v14 = v13;
  v31 = v14;
  v32 = &v37;
  v33 = &v34;
  [(__CFDictionary *)v12 enumerateKeysAndObjectsUsingBlock:&v27];
  v15 = *(v38[0] + 40);
  v16 = SO_LOG_SONetworkIdentity();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (v15)
  {
    if (v17)
    {
      [(SONetworkIdentity *)v38 getInterfaceFingerprintForDynamicInterface:v35, v16];
    }

    v18 = [*(v38[0] + 40) length];
    v19 = *(v38[0] + 40);
    if (v18 < 0x1D)
    {
      v21 = v19;
    }

    else
    {
      v20 = [v19 length];
      v21 = [*(v38[0] + 40) substringWithRange:{23, v20 - 28}];
    }

    v16 = v21;
    if (*(v35[0] + 40))
    {
      v23 = *(v35[0] + 40);
    }

    else
    {
      v23 = &stru_285206D08;
    }

    v24 = [v21 stringByAppendingString:v23];
    v22 = [v24 dataUsingEncoding:4];
  }

  else
  {
    if (v17)
    {
      [SONetworkIdentity getInterfaceFingerprintForDynamicInterface:];
    }

    v22 = 0;
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v37, 8);

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

void __64__SONetworkIdentity_getInterfaceFingerprintForDynamicInterface___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v8 = a3;
  v9 = a1[4];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CE16F0]];
  LODWORD(v9) = [v9 isEqualToString:v10];

  if (v9)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CE1748]];
    v12 = v11;
    if (!v11)
    {
      v12 = [v8 objectForKeyedSubscript:*MEMORY[0x277CE1780]];
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v12);
    if (!v11)
    {
    }

    *a4 = 1;
  }
}

- (void)evaluateVPNPath:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)evaluateVPNPath:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)evaluateVPNPath:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getVPNServerSignature:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getInterfaceSignature:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getInterfaceSignature:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getInterfaceSignature:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getInterfaceFingerprintForDynamicInterface:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getInterfaceFingerprintForDynamicInterface:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 40);
  v4 = *(*a2 + 40);
  v6 = 138543618;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_24006C000, log, OS_LOG_TYPE_DEBUG, "Using key: %{public}@, Router: %@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getInterfaceFingerprintForDynamicInterface:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end