@interface NWNetworkDescription
+ (int64_t)getNewStateFromPathMatch:(BOOL)match oldState:(int64_t)state probeExists:(BOOL)exists;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesPath:(id)path;
- (NSString)privateDescription;
- (NWNetworkDescription)descriptionWithIndent:(int)indent showFullContent:(BOOL)content;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)updateStateWithPath:(id)path;
@end

@implementation NWNetworkDescription

- (unint64_t)hash
{
  interfaceTypeOptions = [(NWNetworkDescription *)self interfaceTypeOptions];
  v4 = [interfaceTypeOptions hash];
  ssidOptions = [(NWNetworkDescription *)self ssidOptions];
  v6 = [ssidOptions hash] ^ v4;
  dnsSearchDomainOptions = [(NWNetworkDescription *)self dnsSearchDomainOptions];
  v8 = [dnsSearchDomainOptions hash];
  dnsServerAddressOptions = [(NWNetworkDescription *)self dnsServerAddressOptions];
  v10 = v6 ^ v8 ^ [dnsServerAddressOptions hash];
  roamingPreference = [(NWNetworkDescription *)self roamingPreference];
  probeURL = [(NWNetworkDescription *)self probeURL];
  v13 = roamingPreference ^ [probeURL hash];

  return v10 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && [equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    interfaceTypeOptions = [(NWNetworkDescription *)self interfaceTypeOptions];
    interfaceTypeOptions2 = [v5 interfaceTypeOptions];
    v8 = areNSSetsEqual(interfaceTypeOptions, interfaceTypeOptions2);

    if (v8 && (-[NWNetworkDescription ssidOptions](self, "ssidOptions"), v9 = objc_claimAutoreleasedReturnValue(), [v5 ssidOptions], v10 = objc_claimAutoreleasedReturnValue(), v11 = areNSSetsEqual(v9, v10), v10, v9, v11) && (-[NWNetworkDescription dnsSearchDomainOptions](self, "dnsSearchDomainOptions"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "dnsSearchDomainOptions"), v13 = objc_claimAutoreleasedReturnValue(), v14 = areNSSetsEqual(v12, v13), v13, v12, v14) && (-[NWNetworkDescription dnsServerAddressOptions](self, "dnsServerAddressOptions"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "dnsServerAddressOptions"), v16 = objc_claimAutoreleasedReturnValue(), v17 = areNSSetsEqual(v15, v16), v16, v15, v17) && (v18 = -[NWNetworkDescription roamingPreference](self, "roamingPreference"), v18 == objc_msgSend(v5, "roamingPreference")))
    {
      probeURL = [(NWNetworkDescription *)self probeURL];
      probeURL2 = [v5 probeURL];
      v21 = NWUtilsAreNSObjectsEqual(probeURL, probeURL2);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  interfaceTypeOptions = [(NWNetworkDescription *)self interfaceTypeOptions];
  v6 = [interfaceTypeOptions count];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    interfaceTypeOptions2 = [(NWNetworkDescription *)self interfaceTypeOptions];
    v9 = [v7 initWithSet:interfaceTypeOptions2 copyItems:1];
    [v4 setInterfaceTypeOptions:v9];
  }

  ssidOptions = [(NWNetworkDescription *)self ssidOptions];
  v11 = [ssidOptions count];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E695DFD8]);
    ssidOptions2 = [(NWNetworkDescription *)self ssidOptions];
    v14 = [v12 initWithSet:ssidOptions2 copyItems:1];
    [v4 setSsidOptions:v14];
  }

  dnsSearchDomainOptions = [(NWNetworkDescription *)self dnsSearchDomainOptions];
  v16 = [dnsSearchDomainOptions count];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E695DFD8]);
    dnsSearchDomainOptions2 = [(NWNetworkDescription *)self dnsSearchDomainOptions];
    v19 = [v17 initWithSet:dnsSearchDomainOptions2 copyItems:1];
    [v4 setDnsSearchDomainOptions:v19];
  }

  dnsServerAddressOptions = [(NWNetworkDescription *)self dnsServerAddressOptions];
  v21 = [dnsServerAddressOptions count];

  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x1E695DFD8]);
    dnsServerAddressOptions2 = [(NWNetworkDescription *)self dnsServerAddressOptions];
    v24 = [v22 initWithSet:dnsServerAddressOptions2 copyItems:1];
    [v4 setDnsServerAddressOptions:v24];
  }

  [v4 setRoamingPreference:{-[NWNetworkDescription roamingPreference](self, "roamingPreference")}];
  probeURL = [(NWNetworkDescription *)self probeURL];

  if (probeURL)
  {
    probeURL2 = [(NWNetworkDescription *)self probeURL];
    v27 = [probeURL2 copy];
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

- (NWNetworkDescription)descriptionWithIndent:(int)indent showFullContent:(BOOL)content
{
  contentCopy = content;
  v5 = *&indent;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  interfaceTypeOptions = [(NWNetworkDescription *)self interfaceTypeOptions];
  [v7 appendPrettyObject:interfaceTypeOptions withName:@"interfaceType" indent:v5 showFullContent:1];

  ssidOptions = [(NWNetworkDescription *)self ssidOptions];
  [v7 appendPrettyObject:ssidOptions withName:@"ssid" indent:v5 showFullContent:1];

  dnsSearchDomainOptions = [(NWNetworkDescription *)self dnsSearchDomainOptions];
  [v7 appendPrettyObject:dnsSearchDomainOptions withName:@"dnsSearchDomain" indent:v5 showFullContent:1];

  dnsServerAddressOptions = [(NWNetworkDescription *)self dnsServerAddressOptions];
  [v7 appendPrettyObject:dnsServerAddressOptions withName:@"dnsServerAddress" indent:v5 showFullContent:1];

  roamingPreference = [(NWNetworkDescription *)self roamingPreference];
  v13 = v7;
  v14 = @"roaming";
  if (roamingPreference == 1)
  {
    v15 = @"%@Required";
  }

  else
  {
    if (roamingPreference != 2)
    {
      goto LABEL_6;
    }

    v15 = @"%@Prohibited";
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:v15, @"roaming"];
  [(NWNetworkDescription *)v13 appendPrettyBOOL:1 withName:v16 indent:v5];

LABEL_6:
  probeURL = [(NWNetworkDescription *)self probeURL];
  absoluteString = [probeURL absoluteString];
  [(NWNetworkDescription *)v13 appendPrettyObject:absoluteString withName:@"probeURL" indent:v5 showFullContent:1];

  if (contentCopy)
  {
    state = [(NWNetworkDescription *)self state];
    if (state >= 4)
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown[%lld]", state];
    }

    else
    {
      v20 = off_1E6A333B0[state];
    }

    [(NWNetworkDescription *)v13 appendPrettyObject:v20 withName:@"state" indent:v5 showFullContent:1];
  }

  return v13;
}

- (void)updateStateWithPath:(id)path
{
  v4 = [(NWNetworkDescription *)self matchesPath:path];
  state = [(NWNetworkDescription *)self state];
  probeURL = [(NWNetworkDescription *)self probeURL];
  [(NWNetworkDescription *)self setState:[NWNetworkDescription getNewStateFromPathMatch:v4 oldState:state probeExists:probeURL != 0]];
}

- (BOOL)matchesPath:(id)path
{
  v69 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = pathCopy;
  if (!pathCopy)
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

  if ([pathCopy status] == 1)
  {
    interfaceTypeOptions = [(NWNetworkDescription *)self interfaceTypeOptions];
    v8 = interfaceTypeOptions;
    if (interfaceTypeOptions)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      interface3 = interfaceTypeOptions;
      v10 = [interface3 countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (v10)
      {
        v11 = v10;
        ssidOptions2 = *v56;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v56 != ssidOptions2)
            {
              objc_enumerationMutation(interface3);
            }

            if ([v6 usesInterfaceType:{objc_msgSend(*(*(&v55 + 1) + 8 * i), "integerValue")}])
            {

              goto LABEL_26;
            }
          }

          v11 = [interface3 countByEnumeratingWithState:&v55 objects:v64 count:16];
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
    isRoaming = [v6 isRoaming];
    roamingPreference = [(NWNetworkDescription *)self roamingPreference];
    v24 = 1;
    if (isRoaming)
    {
      v24 = 2;
    }

    if (v24 == roamingPreference)
    {
      goto LABEL_78;
    }

    ssidOptions = [(NWNetworkDescription *)self ssidOptions];

    if (ssidOptions)
    {
      interface = [v6 interface];
      if ([interface subtype] == 5001)
      {
        v27 = [v6 usesInterfaceType:1];

        if (v27)
        {
          v28 = [v6 copyDataFromNetworkAgentWithDomain:@"com.apple.networkrelay" type:@"CompanionNetworkDescription"];
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v28 encoding:4];
          ssidOptions2 = [(NWNetworkDescription *)self ssidOptions];
          v30 = NWUtilsStringMatchesPatternSet(v29, ssidOptions2);

          if (v30)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
      }

      interface2 = [v6 interface];
      type = [interface2 type];

      if (type != 1)
      {
        goto LABEL_78;
      }

      interface3 = [v6 interface];
      interfaceName = [interface3 interfaceName];
      gotLoadHelper_x24__OBJC_CLASS___CWFInterface(v36);
      if (!objc_opt_class())
      {

LABEL_80:
        LOBYTE(v21) = 0;
        goto LABEL_83;
      }

      ssidOptions2 = objc_alloc_init(ssidOptions2[186]);
      [(Class *)ssidOptions2 activate];
      v62 = 0u;
      v63 = 0u;
      *type = 0u;
      v61 = 0u;
      interfaceNames = [(Class *)ssidOptions2 interfaceNames];
      v38 = [interfaceNames countByEnumeratingWithState:type objects:buf count:16];
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
              objc_enumerationMutation(interfaceNames);
            }

            if ([*(*&type[8] + 8 * j) isEqual:interfaceName])
            {

              networkName = [(Class *)ssidOptions2 networkName];
              goto LABEL_55;
            }
          }

          v39 = [interfaceNames countByEnumeratingWithState:type objects:buf count:16];
          if (v39)
          {
            continue;
          }

          break;
        }
      }

      networkName = 0;
LABEL_55:
      [(Class *)ssidOptions2 invalidate];

      if (!networkName)
      {
        goto LABEL_78;
      }

      ssidOptions3 = [(NWNetworkDescription *)self ssidOptions];
      v44 = NWUtilsStringMatchesPatternSet(networkName, ssidOptions3);

      if (!v44)
      {
        goto LABEL_78;
      }
    }

LABEL_57:
    dnsServerAddressOptions = [(NWNetworkDescription *)self dnsServerAddressOptions];

    if (dnsServerAddressOptions)
    {
      interface3 = [v6 dnsServersAsStrings];
      overrideDNSServersAsStrings = [v6 overrideDNSServersAsStrings];
      v47 = overrideDNSServersAsStrings;
      if (interface3)
      {
        ssidOptions2 = [(NWNetworkDescription *)self dnsServerAddressOptions];
        if (NWUtilsAnyStringsMatchPatternSet(interface3, ssidOptions2))
        {

          goto LABEL_69;
        }

        if (!v47)
        {
LABEL_79:

          goto LABEL_80;
        }
      }

      else if (!overrideDNSServersAsStrings)
      {
        goto LABEL_78;
      }

      dnsServerAddressOptions2 = [(NWNetworkDescription *)self dnsServerAddressOptions];
      matched = NWUtilsAnyStringsMatchPatternSet(v47, dnsServerAddressOptions2);

      if (interface3)
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
    dnsSearchDomainOptions = [(NWNetworkDescription *)self dnsSearchDomainOptions];

    if (!dnsSearchDomainOptions)
    {
      goto LABEL_82;
    }

    interface3 = [v6 dnsSearchDomains];
    overrideDNSSearchDomains = [v6 overrideDNSSearchDomains];
    v52 = overrideDNSSearchDomains;
    if (!interface3)
    {
      if (!overrideDNSSearchDomains)
      {
        goto LABEL_78;
      }

      goto LABEL_76;
    }

    ssidOptions2 = [(NWNetworkDescription *)self dnsSearchDomainOptions];
    if (NWUtilsAnyStringsMatchPatternSet(interface3, ssidOptions2))
    {

      goto LABEL_82;
    }

    if (v52)
    {
LABEL_76:
      dnsSearchDomainOptions2 = [(NWNetworkDescription *)self dnsSearchDomainOptions];
      v21 = NWUtilsAnyStringsMatchPatternSet(v52, dnsSearchDomainOptions2);

      if (interface3)
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

+ (int64_t)getNewStateFromPathMatch:(BOOL)match oldState:(int64_t)state probeExists:(BOOL)exists
{
  v5 = 1;
  if (exists)
  {
    v5 = 2;
  }

  if (match)
  {
    stateCopy = state;
  }

  else
  {
    stateCopy = 0;
  }

  if (!match)
  {
    v5 = 0;
  }

  if (state)
  {
    return stateCopy;
  }

  else
  {
    return v5;
  }
}

@end