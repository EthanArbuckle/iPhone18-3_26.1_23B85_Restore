@interface NEDNSSettingsNetworkAgent
- (id)copyAgentData;
@end

@implementation NEDNSSettingsNetworkAgent

- (id)copyAgentData
{
  v70[2] = *MEMORY[0x1E69E9840];
  v3 = nw_resolver_config_create();
  nw_resolver_config_set_class();
  v4 = [(NEDNSSettingsNetworkAgent *)self settings];
  v5 = [v4 dnsProtocol];

  if (v5 != 1)
  {
    if (v5 == 3)
    {
      v6 = [(NEDNSSettingsNetworkAgent *)self settings];
      [v6 proxyAgentUUID];
    }

    else if (v5 != 2)
    {
      v52 = 0;
      goto LABEL_42;
    }
  }

  nw_resolver_config_set_protocol();
  v70[0] = 0;
  v70[1] = 0;
  v7 = [(NENetworkAgent *)self configurationUUID];
  [v7 getUUIDBytes:v70];

  nw_resolver_config_set_identifier();
  v8 = [(NEDNSSettingsNetworkAgent *)self settings];
  [v8 allowFailover];
  nw_resolver_config_set_allow_failover();

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v9 = [(NEDNSSettingsNetworkAgent *)self settings];
  v10 = [v9 servers];

  v11 = [v10 countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v64;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v64 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v63 + 1) + 8 * i) UTF8String];
        nw_resolver_config_add_name_server();
      }

      v12 = [v10 countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v12);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v15 = [(NEDNSSettingsNetworkAgent *)self settings];
  v16 = [v15 searchDomains];

  v17 = [v16 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v60;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v60 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v59 + 1) + 8 * j) UTF8String];
        nw_resolver_config_add_search_domain();
      }

      v18 = [v16 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v18);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v21 = [(NEDNSSettingsNetworkAgent *)self settings];
  v22 = [v21 matchDomains];
  v23 = [(NEDNSSettingsNetworkAgent *)self settings];
  v24 = [v23 matchDomains];
  v25 = [v24 count];

  if (v25 >= 0x32)
  {
    v26 = 50;
  }

  else
  {
    v26 = v25;
  }

  v27 = [v22 subarrayWithRange:{0, v26}];

  v28 = [v27 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v56;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v56 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [*(*(&v55 + 1) + 8 * k) UTF8String];
        nw_resolver_config_add_match_domain();
      }

      v29 = [v27 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v29);
  }

  v32 = [(NEDNSSettingsNetworkAgent *)self settings];
  v33 = [v32 proxyAgentUUID];

  if (v33)
  {
    v34 = [(NEDNSSettingsNetworkAgent *)self settings];
    v35 = [v34 proxyAgentUUID];
    v36 = [v35 UUIDString];

    [v36 UTF8String];
    nw_resolver_config_set_proxy_agent();
  }

  v37 = [(NEDNSSettingsNetworkAgent *)self settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v39 = [(NEDNSSettingsNetworkAgent *)self settings];
    v40 = [v39 serverName];

    [v40 UTF8String];
    nw_resolver_config_set_provider_name();
    v41 = [(NEDNSSettingsNetworkAgent *)self settings];
    v42 = [v41 identityReference];

    if (v42)
    {
      [v42 bytes];
      [v42 length];
      nw_resolver_config_set_identity_reference();
    }
  }

  v43 = [(NEDNSSettingsNetworkAgent *)self settings];
  objc_opt_class();
  v44 = objc_opt_isKindOfClass();

  if (v44)
  {
    v45 = [(NEDNSSettingsNetworkAgent *)self settings];
    v46 = [v45 serverURL];

    v47 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v46 resolvingAgainstBaseURL:0];
    v48 = [v47 percentEncodedHost];
    v49 = [v47 percentEncodedPath];
    [v48 UTF8String];
    nw_resolver_config_set_provider_name();
    [v49 UTF8String];
    nw_resolver_config_set_provider_path();
    v50 = [(NEDNSSettingsNetworkAgent *)self settings];
    v51 = [v50 identityReference];

    if (v51)
    {
      [v51 bytes];
      [v51 length];
      nw_resolver_config_set_identity_reference();
    }
  }

  v52 = nw_resolver_config_copy_plist_data();
LABEL_42:

  v53 = *MEMORY[0x1E69E9840];
  return v52;
}

@end