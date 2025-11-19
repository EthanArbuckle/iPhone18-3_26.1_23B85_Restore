@interface NWNetworkDescription
+ (int64_t)getNewStateFromPathMatch:(BOOL)a3 oldState:(int64_t)a4 probeExists:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesPath:(id)a3;
- (NSString)privateDescription;
- (NWNetworkDescription)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)updateStateWithPath:(id)a3;
@end

@implementation NWNetworkDescription

- (unint64_t)hash
{
  v3 = [(NWNetworkDescription *)self interfaceTypeOptions];
  v4 = [v3 hash];
  v5 = [(NWNetworkDescription *)self ssidOptions];
  v6 = [v5 hash] ^ v4;
  v7 = [(NWNetworkDescription *)self dnsSearchDomainOptions];
  v8 = [v7 hash];
  v9 = [(NWNetworkDescription *)self dnsServerAddressOptions];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(NWNetworkDescription *)self roamingPreference];
  v12 = [(NWNetworkDescription *)self probeURL];
  v13 = v11 ^ [v12 hash];

  return v10 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(NWNetworkDescription *)self interfaceTypeOptions];
    v7 = [v5 interfaceTypeOptions];
    v8 = areNSSetsEqual(v6, v7);

    if (v8 && (-[NWNetworkDescription ssidOptions](self, "ssidOptions"), v9 = objc_claimAutoreleasedReturnValue(), [v5 ssidOptions], v10 = objc_claimAutoreleasedReturnValue(), v11 = areNSSetsEqual(v9, v10), v10, v9, v11) && (-[NWNetworkDescription dnsSearchDomainOptions](self, "dnsSearchDomainOptions"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "dnsSearchDomainOptions"), v13 = objc_claimAutoreleasedReturnValue(), v14 = areNSSetsEqual(v12, v13), v13, v12, v14) && (-[NWNetworkDescription dnsServerAddressOptions](self, "dnsServerAddressOptions"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "dnsServerAddressOptions"), v16 = objc_claimAutoreleasedReturnValue(), v17 = areNSSetsEqual(v15, v16), v16, v15, v17) && (v18 = -[NWNetworkDescription roamingPreference](self, "roamingPreference"), v18 == objc_msgSend(v5, "roamingPreference")))
    {
      v19 = [(NWNetworkDescription *)self probeURL];
      v20 = [v5 probeURL];
      v21 = NWUtilsAreNSObjectsEqual(v19, v20);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(NWNetworkDescription *)self interfaceTypeOptions];
  v6 = [v5 count];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = [(NWNetworkDescription *)self interfaceTypeOptions];
    v9 = [v7 initWithSet:v8 copyItems:1];
    [v4 setInterfaceTypeOptions:v9];
  }

  v10 = [(NWNetworkDescription *)self ssidOptions];
  v11 = [v10 count];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E695DFD8]);
    v13 = [(NWNetworkDescription *)self ssidOptions];
    v14 = [v12 initWithSet:v13 copyItems:1];
    [v4 setSsidOptions:v14];
  }

  v15 = [(NWNetworkDescription *)self dnsSearchDomainOptions];
  v16 = [v15 count];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E695DFD8]);
    v18 = [(NWNetworkDescription *)self dnsSearchDomainOptions];
    v19 = [v17 initWithSet:v18 copyItems:1];
    [v4 setDnsSearchDomainOptions:v19];
  }

  v20 = [(NWNetworkDescription *)self dnsServerAddressOptions];
  v21 = [v20 count];

  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x1E695DFD8]);
    v23 = [(NWNetworkDescription *)self dnsServerAddressOptions];
    v24 = [v22 initWithSet:v23 copyItems:1];
    [v4 setDnsServerAddressOptions:v24];
  }

  [v4 setRoamingPreference:{-[NWNetworkDescription roamingPreference](self, "roamingPreference")}];
  v25 = [(NWNetworkDescription *)self probeURL];

  if (v25)
  {
    v26 = [(NWNetworkDescription *)self probeURL];
    v27 = [v26 copy];
    [v4 setProbeURL:v27];
  }

  return v4;
}

- (NSString)privateDescription
{
  v2 = [(NWNetworkDescription *)self descriptionWithIndent:0 showFullContent:1];

  return v2;
}

- (id)description
{
  v2 = [(NWNetworkDescription *)self descriptionWithIndent:0 showFullContent:0];

  return v2;
}

- (NWNetworkDescription)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8 = [(NWNetworkDescription *)self interfaceTypeOptions];
  [v7 appendPrettyObject:v8 withName:@"interfaceType" indent:v5 showFullContent:1];

  v9 = [(NWNetworkDescription *)self ssidOptions];
  [v7 appendPrettyObject:v9 withName:@"ssid" indent:v5 showFullContent:1];

  v10 = [(NWNetworkDescription *)self dnsSearchDomainOptions];
  [v7 appendPrettyObject:v10 withName:@"dnsSearchDomain" indent:v5 showFullContent:1];

  v11 = [(NWNetworkDescription *)self dnsServerAddressOptions];
  [v7 appendPrettyObject:v11 withName:@"dnsServerAddress" indent:v5 showFullContent:1];

  v12 = [(NWNetworkDescription *)self roamingPreference];
  v13 = v7;
  v14 = @"roaming";
  if (v12 == 1)
  {
    v15 = @"%@Required";
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_6;
    }

    v15 = @"%@Prohibited";
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:v15, @"roaming"];
  [(NWNetworkDescription *)v13 appendPrettyBOOL:1 withName:v16 indent:v5];

LABEL_6:
  v17 = [(NWNetworkDescription *)self probeURL];
  v18 = [v17 absoluteString];
  [(NWNetworkDescription *)v13 appendPrettyObject:v18 withName:@"probeURL" indent:v5 showFullContent:1];

  if (v4)
  {
    v19 = [(NWNetworkDescription *)self state];
    if (v19 >= 4)
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown[%lld]", v19];
    }

    else
    {
      v20 = off_1E6A333B0[v19];
    }

    [(NWNetworkDescription *)v13 appendPrettyObject:v20 withName:@"state" indent:v5 showFullContent:1];
  }

  return v13;
}

- (void)updateStateWithPath:(id)a3
{
  v4 = [(NWNetworkDescription *)self matchesPath:a3];
  v5 = [(NWNetworkDescription *)self state];
  v6 = [(NWNetworkDescription *)self probeURL];
  [(NWNetworkDescription *)self setState:[NWNetworkDescription getNewStateFromPathMatch:v4 oldState:v5 probeExists:v6 != 0]];
}

- (BOOL)matchesPath:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    *buf = 136446210;
    v66 = "[NWNetworkDescription matchesPath:]";
    v14 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v59 = 0;
    if (__nwlog_fault(v14, type, &v59))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v16 = type[0];
        if (!os_log_type_enabled(v15, type[0]))
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v66 = "[NWNetworkDescription matchesPath:]";
        v17 = "%{public}s called with null path";
LABEL_36:
        v31 = v15;
        v32 = v16;
        goto LABEL_37;
      }

      if (v59 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v16 = type[0];
        if (!os_log_type_enabled(v15, type[0]))
        {
          goto LABEL_38;
        }

        *buf = 136446210;
        v66 = "[NWNetworkDescription matchesPath:]";
        v17 = "%{public}s called with null path, backtrace limit exceeded";
        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v19 = type[0];
      v20 = os_log_type_enabled(v15, type[0]);
      if (!backtrace_string)
      {
        if (!v20)
        {
LABEL_38:

          if (!v14)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        *buf = 136446210;
        v66 = "[NWNetworkDescription matchesPath:]";
        v17 = "%{public}s called with null path, no backtrace";
        v31 = v15;
        v32 = v19;
LABEL_37:
        _os_log_impl(&dword_181A37000, v31, v32, v17, buf, 0xCu);
        goto LABEL_38;
      }

      if (v20)
      {
        *buf = 136446466;
        v66 = "[NWNetworkDescription matchesPath:]";
        v67 = 2082;
        v68 = backtrace_string;
        _os_log_impl(&dword_181A37000, v15, v19, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_23:
    free(v14);
    goto LABEL_24;
  }

  if ([v5 status] == 1)
  {
    v7 = [(NWNetworkDescription *)self interfaceTypeOptions];
    v8 = v7;
    if (v7)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (v10)
      {
        v11 = v10;
        v3 = *v56;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v56 != v3)
            {
              objc_enumerationMutation(v9);
            }

            if ([v6 usesInterfaceType:{objc_msgSend(*(*(&v55 + 1) + 8 * i), "integerValue")}])
            {

              goto LABEL_26;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v55 objects:v64 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_80;
    }

LABEL_26:
    v22 = [v6 isRoaming];
    v23 = [(NWNetworkDescription *)self roamingPreference];
    v24 = 1;
    if (v22)
    {
      v24 = 2;
    }

    if (v24 == v23)
    {
      goto LABEL_78;
    }

    v25 = [(NWNetworkDescription *)self ssidOptions];

    if (v25)
    {
      v26 = [v6 interface];
      if ([v26 subtype] == 5001)
      {
        v27 = [v6 usesInterfaceType:1];

        if (v27)
        {
          v28 = [v6 copyDataFromNetworkAgentWithDomain:@"com.apple.networkrelay" type:@"CompanionNetworkDescription"];
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v28 encoding:4];
          v3 = [(NWNetworkDescription *)self ssidOptions];
          v30 = NWUtilsStringMatchesPatternSet(v29, v3);

          if (v30)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
      }

      v33 = [v6 interface];
      v34 = [v33 type];

      if (v34 != 1)
      {
        goto LABEL_78;
      }

      v9 = [v6 interface];
      v35 = [v9 interfaceName];
      gotLoadHelper_x24__OBJC_CLASS___CWFInterface(v36);
      if (!objc_opt_class())
      {

LABEL_80:
        LOBYTE(v21) = 0;
        goto LABEL_83;
      }

      v3 = objc_alloc_init(v3[186]);
      [(Class *)v3 activate];
      v62 = 0u;
      v63 = 0u;
      *type = 0u;
      v61 = 0u;
      v37 = [(Class *)v3 interfaceNames];
      v38 = [v37 countByEnumeratingWithState:type objects:buf count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v61;
        while (2)
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v61 != v40)
            {
              objc_enumerationMutation(v37);
            }

            if ([*(*&type[8] + 8 * j) isEqual:v35])
            {

              v42 = [(Class *)v3 networkName];
              goto LABEL_55;
            }
          }

          v39 = [v37 countByEnumeratingWithState:type objects:buf count:16];
          if (v39)
          {
            continue;
          }

          break;
        }
      }

      v42 = 0;
LABEL_55:
      [(Class *)v3 invalidate];

      if (!v42)
      {
        goto LABEL_78;
      }

      v43 = [(NWNetworkDescription *)self ssidOptions];
      v44 = NWUtilsStringMatchesPatternSet(v42, v43);

      if (!v44)
      {
        goto LABEL_78;
      }
    }

LABEL_57:
    v45 = [(NWNetworkDescription *)self dnsServerAddressOptions];

    if (v45)
    {
      v9 = [v6 dnsServersAsStrings];
      v46 = [v6 overrideDNSServersAsStrings];
      v47 = v46;
      if (v9)
      {
        v3 = [(NWNetworkDescription *)self dnsServerAddressOptions];
        if (NWUtilsAnyStringsMatchPatternSet(v9, v3))
        {

          goto LABEL_69;
        }

        if (!v47)
        {
LABEL_79:

          goto LABEL_80;
        }
      }

      else if (!v46)
      {
        goto LABEL_78;
      }

      v48 = [(NWNetworkDescription *)self dnsServerAddressOptions];
      matched = NWUtilsAnyStringsMatchPatternSet(v47, v48);

      if (v9)
      {

        if ((matched & 1) == 0)
        {
          goto LABEL_78;
        }
      }

      else
      {

        if (!matched)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_69:
    v50 = [(NWNetworkDescription *)self dnsSearchDomainOptions];

    if (!v50)
    {
      goto LABEL_82;
    }

    v9 = [v6 dnsSearchDomains];
    v51 = [v6 overrideDNSSearchDomains];
    v52 = v51;
    if (!v9)
    {
      if (!v51)
      {
        goto LABEL_78;
      }

      goto LABEL_76;
    }

    v3 = [(NWNetworkDescription *)self dnsSearchDomainOptions];
    if (NWUtilsAnyStringsMatchPatternSet(v9, v3))
    {

      goto LABEL_82;
    }

    if (v52)
    {
LABEL_76:
      v53 = [(NWNetworkDescription *)self dnsSearchDomainOptions];
      v21 = NWUtilsAnyStringsMatchPatternSet(v52, v53);

      if (v9)
      {

        if (v21)
        {
          goto LABEL_82;
        }

LABEL_78:
        LOBYTE(v21) = 0;
LABEL_83:

        goto LABEL_84;
      }

      if (!v21)
      {
        goto LABEL_83;
      }

LABEL_82:
      LOBYTE(v21) = 1;
      goto LABEL_83;
    }

    goto LABEL_79;
  }

LABEL_24:
  LOBYTE(v21) = 0;
LABEL_84:

  return v21;
}

+ (int64_t)getNewStateFromPathMatch:(BOOL)a3 oldState:(int64_t)a4 probeExists:(BOOL)a5
{
  v5 = 1;
  if (a5)
  {
    v5 = 2;
  }

  if (a3)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a4)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end