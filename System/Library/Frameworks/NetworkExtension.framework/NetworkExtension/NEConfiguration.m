@interface NEConfiguration
+ (CFDictionaryRef)copyConfigurationForProtocol:(const __SCNetworkService *)a3 inService:;
+ (NEConfiguration)configurationWithProfilePayload:(id)a3 grade:(int64_t)a4;
+ (uint64_t)setConfiguration:(const __CFString *)a3 forProtocol:(const __SCNetworkService *)a4 inService:;
+ (void)addError:(void *)a3 toList:;
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)configureVpnOnDemand:(void *)a3 vpnType:;
- (BOOL)configureVpnOnDemandRules:(void *)a1;
- (BOOL)ingestDisconnectOptions:(void *)a1;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSupportedBySC;
- (BOOL)isTransparentProxy;
- (BOOL)setAppLayerVPNUUID:(id)a3 andSafariDomains:(id)a4;
- (BOOL)setAssociatedDomains:(id)a3;
- (BOOL)setCalendarDomains:(id)a3 accountIdentifiers:(id)a4;
- (BOOL)setCertificates:(id)a3 keyRefs:(id)a4 specs:(id)a5;
- (BOOL)setConfigurationVPNPassword:(void *)a1;
- (BOOL)setContactsDomains:(id)a3 accountIdentifiers:(id)a4;
- (BOOL)setExcludedDomains:(id)a3;
- (BOOL)setMailDomains:(id)a3 accountIdentifiers:(id)a4;
- (BOOL)setPayloadInfoCommon:(id)a3 payloadOrganization:(id)a4;
- (BOOL)setPayloadInfoIdentity:(id)a3;
- (BOOL)setPerAppRuleSettings:(id)a3 withAppIdentifier:(id)a4;
- (BOOL)setPerAppUUID:(id)a3 andSafariDomains:(id)a4;
- (BOOL)setProfileInfo:(id)a3;
- (BOOL)setSMBDomains:(id)a3;
- (BOOL)usesPolicyBasedRouting;
- (NEConfiguration)initWithCoder:(id)a3;
- (NEConfiguration)initWithName:(id)a3 grade:(int64_t)a4;
- (NSObject)copyMachOUUIDsFromBundleIdentifier:(uint64_t)a1;
- (NSObject)initWithContentFilterPayload:(void *)a3 configurationName:(uint64_t)a4 grade:;
- (NSString)pluginType;
- (__CFString)initWithAlwaysOnVPNPayload:(void *)a3 configurationName:(uint64_t)a4 grade:;
- (id)copyProviderMachOUUIDs;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithOptions:(unint64_t)a3;
- (id)getCertificates;
- (id)getConfigurationIdentifier;
- (id)getConfigurationProtocol;
- (id)getPendingCertificateUUIDs:(id)a3;
- (id)getPendingCertificateUUIDsDNSSettings:(void *)a1;
- (id)getPendingCertificateUUIDsInternal:(void *)a1;
- (id)getPendingCertificateUUIDsRelay:(void *)a1;
- (id)initWithAppLayerVPNPayload:(void *)a3 configurationName:(uint64_t)a4 grade:;
- (id)initWithDNSProxyPayload:(id)a1 configurationName:(void *)a2 grade:(void *)a3;
- (id)initWithDNSSettingsPayload:(void *)a3 configurationName:(uint64_t)a4 grade:;
- (id)initWithIdentifier:(id *)a1;
- (id)initWithPathControllerPayload:(void *)a3 configurationName:(uint64_t)a4 grade:;
- (id)initWithRelayPayload:(void *)a3 configurationName:(uint64_t)a4 grade:;
- (id)initWithVPNPayload:(void *)a3 configurationName:(uint64_t)a4 grade:;
- (id)mergeArray:(void *)a3 withArray:;
- (uint64_t)applyChangesToSCServiceInPreferences:(void *)a1;
- (uint64_t)configureIKE:(void *)a3 vpnType:(void *)a4 payloadBase:(void *)a5 vpn:;
- (uint64_t)configurePPPWithVPNOptions:(void *)a3 payloadBase:;
- (uint64_t)configurePluginWithPayload:(void *)a3 pluginType:(void *)a4 payloadType:(void *)a5 vpnType:;
- (uint64_t)ingestDNSOptions:(void *)a1;
- (uint64_t)ingestIPSecDict:(void *)a3 vpnType:(void *)a4 vpn:;
- (uint64_t)ingestProxyOptions:(void *)a1;
- (uint64_t)setCertificateContentFilter:(void *)a1;
- (uint64_t)setCertificateDNSSettings:(void *)a1;
- (uint64_t)setCertificatesRelay:(void *)a3 keyRefs:(void *)a4 specs:;
- (uint64_t)updateFromSCService:(void *)a1;
- (uint64_t)validateStrings:(uint64_t)a1;
- (unint64_t)hash;
- (void)applyOverrides;
- (void)clearKeychainInDomain:(void *)a1;
- (void)copyPasswordsFromSystemKeychain;
- (void)encodeWithCoder:(id)a3;
- (void)syncWithKeychainInDomain:(void *)a1;
@end

@implementation NEConfiguration

- (BOOL)usesPolicyBasedRouting
{
  v3 = [(NEConfiguration *)self VPN];
  if (v3 || ([(NEConfiguration *)self appVPN], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || ([(NEConfiguration *)self alwaysOnVPN], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v12 = [(NEConfiguration *)self relay];

    if (!v12)
    {
      v8 = 0;
      return v8 & 1;
    }
  }

  v4 = [(NEConfiguration *)self VPN];
  if (v4)
  {
    v5 = v4;
    v6 = [(NEConfiguration *)self VPN];
    v7 = [v6 protocol];
    if ([v7 includeAllNetworks])
    {
      v8 = 1;
    }

    else
    {
      v9 = [(NEConfiguration *)self VPN];
      v10 = [v9 protocol];
      v8 = [v10 enforceRoutes];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (void)applyOverrides
{
  v33 = *MEMORY[0x1E69E9840];
  if (!os_variant_has_internal_content() || csr_check())
  {
    goto LABEL_33;
  }

  v3 = SCPreferencesCreate(*MEMORY[0x1E695E480], @"NEHelper control settings", @"/Library/Preferences/com.apple.networkextension.control.plist");
  if (v3)
  {
    v4 = v3;
    Value = SCPreferencesGetValue(v3, @"ConfigurationOverrides");
    v6 = Value;
    if (NEInitCFTypes_onceToken == -1)
    {
      if (Value)
      {
LABEL_6:
        v7 = CFDICTIONARY_TYPE;
        if (CFGetTypeID(v6) == v7 && CFDictionaryGetCount(v6) >= 1)
        {
          v6 = [v6 copy];
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
      if (v6)
      {
        goto LABEL_6;
      }
    }

    CFRelease(v4);
    goto LABEL_12;
  }

  v6 = 0;
LABEL_12:
  if (isa_nsdictionary(v6))
  {
    v21 = v6;
    v8 = [(NEConfiguration *)self name];
    v20 = [v21 objectForKeyedSubscript:v8];

    v9 = v20;
    if (isa_nsdictionary(v20))
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = v20;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v11)
      {
        v12 = *v23;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v22 + 1) + 8 * i);
            if (isa_nsstring(v14))
            {
              v15 = [v10 objectForKeyedSubscript:v14];
              if (isa_nsstring(v15) && [v15 isEqualToString:@"nil"])
              {

                v15 = 0;
              }

              [(NEConfiguration *)self setValue:v15 forKeyPath:v14];
              v16 = ne_log_obj();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [(NEConfiguration *)self name];
                *buf = 138412802;
                v27 = v17;
                v28 = 2112;
                v29 = v14;
                v30 = 2112;
                v31 = v15;
                _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEFAULT, "%@: configuration overrides set %@ to %@", buf, 0x20u);
              }
            }

            else
            {
              v15 = ne_log_obj();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                v18 = [(NEConfiguration *)self name];
                *buf = 138412546;
                v27 = v18;
                v28 = 2112;
                v29 = v14;
                _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "%@: Key path in overrides is not a string: %@", buf, 0x16u);
              }
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v22 objects:v32 count:16];
        }

        while (v11);
      }

      v9 = v20;
    }

    v6 = v21;
  }

LABEL_33:
  v19 = *MEMORY[0x1E69E9840];
}

- (void)copyPasswordsFromSystemKeychain
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(NEConfiguration *)self VPN];
  v4 = [v3 protocol];

  if (v4 || (-[NEConfiguration appVPN](self, "appVPN"), v5 = objc_claimAutoreleasedReturnValue(), [v5 protocol], v4 = objc_claimAutoreleasedReturnValue(), v5, v4))
  {
    [v4 copyPasswordsFromKeychainInDomain:0];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NEConfiguration *)self relay];
  v7 = [v6 relays];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) copyPasswordsFromKeychainInDomain:0];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEnabled
{
  v3 = [(NEConfiguration *)self VPN];

  if (v3)
  {
    v4 = [(NEConfiguration *)self VPN];
LABEL_23:
    v15 = v4;
    v16 = [v4 isEnabled];

    return v16;
  }

  v5 = [(NEConfiguration *)self appVPN];

  if (v5)
  {
    v4 = [(NEConfiguration *)self appVPN];
    goto LABEL_23;
  }

  v6 = [(NEConfiguration *)self pathController];

  if (v6)
  {
    v4 = [(NEConfiguration *)self pathController];
    goto LABEL_23;
  }

  v7 = [(NEConfiguration *)self appPush];

  if (v7)
  {
    v4 = [(NEConfiguration *)self appPush];
    goto LABEL_23;
  }

  v8 = [(NEConfiguration *)self contentFilter];

  if (v8)
  {
    v4 = [(NEConfiguration *)self contentFilter];
    goto LABEL_23;
  }

  v9 = [(NEConfiguration *)self dnsProxy];

  if (v9)
  {
    v4 = [(NEConfiguration *)self dnsProxy];
    goto LABEL_23;
  }

  v10 = [(NEConfiguration *)self dnsSettings];

  if (v10)
  {
    v4 = [(NEConfiguration *)self dnsSettings];
    goto LABEL_23;
  }

  v11 = [(NEConfiguration *)self relay];

  if (v11)
  {
    v4 = [(NEConfiguration *)self relay];
    goto LABEL_23;
  }

  v12 = [(NEConfiguration *)self alwaysOnVPN];

  if (v12)
  {
    v4 = [(NEConfiguration *)self alwaysOnVPN];
    goto LABEL_23;
  }

  v13 = [(NEConfiguration *)self urlFilter];

  if (v13)
  {
    v4 = [(NEConfiguration *)self urlFilter];
    goto LABEL_23;
  }

  v14 = [(NEConfiguration *)self hotspot];

  if (v14)
  {
    v4 = [(NEConfiguration *)self hotspot];
    goto LABEL_23;
  }

  return 0;
}

- (BOOL)isTransparentProxy
{
  v3 = [(NEConfiguration *)self VPN];
  if (v3)
  {
    v4 = [(NEConfiguration *)self VPN];
    if ([v4 tunnelType] == 2)
    {
      v5 = [(NEConfiguration *)self VPN];
      v6 = [v5 protocol];
      if (v6)
      {
        v7 = [(NEConfiguration *)self VPN];
        v8 = [v7 protocol];
        v9 = [v8 type] == 4;
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

- (NSString)pluginType
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [(NEConfiguration *)self VPN];
  if (v3)
  {
    v4 = [(NEConfiguration *)self VPN];
    v5 = [v4 protocol];
    v6 = [v5 type];

    if (v6 == 4)
    {
      v7 = [(NEConfiguration *)self VPN];
      v8 = [v7 protocol];
      v3 = [v8 pluginType];
    }

    else
    {
      v3 = 0;
    }
  }

  v9 = [(NEConfiguration *)self appVPN];
  if (v9)
  {
    v10 = v9;
    v11 = [(NEConfiguration *)self appVPN];
    v12 = [v11 protocol];
    v13 = [v12 type];

    if (v13 == 4)
    {
      v14 = [(NEConfiguration *)self appVPN];
      v15 = [v14 protocol];
      v16 = [v15 pluginType];
      if (v3)
      {
        v17 = [v3 isEqualToString:v16];

        if (v17)
        {
          goto LABEL_12;
        }

        v16 = 0;
        v14 = v3;
      }

      else
      {
      }

      v3 = v16;
    }
  }

LABEL_12:
  v18 = [(NEConfiguration *)self contentFilter];

  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = [(NEConfiguration *)self contentFilter];
  v20 = [v19 provider];
  v21 = [v20 pluginType];
  if (v3)
  {
    v22 = [v3 isEqualToString:v21];

    if (v22)
    {
      goto LABEL_18;
    }

    v21 = 0;
    v19 = v3;
  }

  else
  {
  }

  v3 = v21;
LABEL_18:
  v23 = [(NEConfiguration *)self dnsProxy];

  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = [(NEConfiguration *)self dnsProxy];
  v25 = [v24 protocol];
  v26 = [v25 pluginType];
  if (v3)
  {
    v27 = [v3 isEqualToString:v26];

    if (v27)
    {
      goto LABEL_24;
    }

    v26 = 0;
    v24 = v3;
  }

  else
  {
  }

  v3 = v26;
LABEL_24:
  v28 = [(NEConfiguration *)self appPush];

  if (!v28)
  {
    goto LABEL_30;
  }

  v29 = [(NEConfiguration *)self appPush];
  v30 = [v29 pluginType];
  if (v3)
  {
    v31 = [v3 isEqualToString:v30];

    if (v31)
    {
      goto LABEL_30;
    }

    v30 = 0;
  }

  else
  {
    v3 = v29;
  }

  v3 = v30;
LABEL_30:
  v32 = [(NEConfiguration *)self urlFilter];

  if (!v32)
  {
LABEL_33:
    v34 = v3;
    goto LABEL_38;
  }

  v33 = [(NEConfiguration *)self urlFilter];
  v34 = [v33 appBundleIdentifier];
  if (v3)
  {
    v35 = [v3 isEqualToString:v34];

    if (v35)
    {
      goto LABEL_33;
    }

    v34 = 0;
  }

  else
  {

    v36 = ne_log_obj();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v43 = 136315394;
      v44 = "[NEConfiguration pluginType]";
      v45 = 2112;
      v46 = v34;
      _os_log_debug_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_DEBUG, "%s: pluginType is %@", &v43, 0x16u);
    }
  }

LABEL_38:
  v37 = [(NEConfiguration *)self hotspot];

  if (!v37)
  {
    goto LABEL_44;
  }

  v38 = [(NEConfiguration *)self hotspot];
  v39 = [v38 pluginType];
  if (v34)
  {
    v40 = [v34 isEqualToString:v39];

    if (v40)
    {
      goto LABEL_44;
    }

    v39 = 0;
  }

  else
  {
    v34 = v38;
  }

  v34 = v39;
LABEL_44:
  v41 = *MEMORY[0x1E69E9840];

  return v34;
}

- (void)clearKeychainInDomain:(void *)a1
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_24;
  }

  if ([a1 grade] != 2)
  {
    goto LABEL_7;
  }

  v4 = [a1 VPN];
  v5 = [v4 protocol];
  if ([v5 type] != 1)
  {
    v6 = [a1 VPN];
    v7 = [v6 protocol];
    v8 = [v7 type];

    if (v8 == 5)
    {
      goto LABEL_6;
    }

LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

LABEL_6:
  v9 = 0;
LABEL_8:
  v10 = [a1 VPN];
  if (v10)
  {
    v11 = v10;
    v12 = [a1 VPN];
    v13 = [v12 protocol];

    if (v13)
    {
      v14 = [a1 VPN];
LABEL_14:
      v19 = v14;
      v20 = [v14 protocol];
      [v20 removeKeychainItemsInDomain:a2 keepIdentity:v9];

      goto LABEL_15;
    }
  }

  v15 = [a1 appVPN];
  if (v15)
  {
    v16 = v15;
    v17 = [a1 appVPN];
    v18 = [v17 protocol];

    if (v18)
    {
      v14 = [a1 appVPN];
      goto LABEL_14;
    }
  }

  v30 = [a1 alwaysOnVPN];

  if (!v30)
  {
    goto LABEL_16;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v31 = [a1 alwaysOnVPN];
  v19 = [v31 interfaceProtocolMapping];

  v32 = [v19 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v45;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(v19);
        }

        v36 = *(*(&v44 + 1) + 8 * i);
        v37 = [a1 alwaysOnVPN];
        v38 = [v37 interfaceProtocolMapping];
        v39 = [v38 objectForKeyedSubscript:v36];

        [v39 removeKeychainItemsInDomain:a2 keepIdentity:v9];
      }

      v33 = [v19 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v33);
  }

LABEL_15:

LABEL_16:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = [a1 relay];
  v22 = [v21 relays];

  v23 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v40 + 1) + 8 * j);
        v28 = [a1 payloadInfo];
        [v27 clearKeychainItemsInDomain:a2 removeItems:v28 == 0];
      }

      v24 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v24);
  }

  [(NEConfiguration *)a1 syncWithKeychainInDomain:a2];
LABEL_24:
  v29 = *MEMORY[0x1E69E9840];
}

- (void)syncWithKeychainInDomain:(void *)a1
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = [a1 VPN];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 VPN];
    v7 = [v6 protocol];

    if (v7)
    {
      v8 = [a1 VPN];
      v9 = [v8 protocol];
      [v9 syncWithKeychainInDomain:a2 configuration:a1 suffix:0];
    }
  }

  v10 = [a1 appVPN];
  if (v10)
  {
    v11 = v10;
    v12 = [a1 appVPN];
    v13 = [v12 protocol];

    if (v13)
    {
      v14 = [a1 appVPN];
      v15 = [v14 protocol];
      [v15 syncWithKeychainInDomain:a2 configuration:a1 suffix:0];
    }
  }

  v16 = [a1 alwaysOnVPN];

  if (v16)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = [a1 alwaysOnVPN];
    v18 = [v17 interfaceProtocolMapping];

    v19 = [v18 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      do
      {
        v22 = 0;
        do
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v38 + 1) + 8 * v22);
          v24 = [a1 alwaysOnVPN];
          v25 = [v24 interfaceProtocolMapping];
          v26 = [v25 objectForKeyedSubscript:v23];

          [v26 syncWithKeychainInDomain:a2 configuration:a1 suffix:v23];
          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v20);
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = [a1 relay];
  v28 = [v27 relays];

  v29 = [v28 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v35;
    do
    {
      v32 = 0;
      do
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v34 + 1) + 8 * v32++) syncWithKeychainInDomain:a2 configuration:a1 suffix:0];
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v30);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)descriptionWithOptions:(unint64_t)a3
{
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  [v5 appendString:@"{"];
  v6 = [(NEConfiguration *)self name];
  [v5 appendPrettyObject:v6 withName:@"name" andIndent:0 options:a3 | 1];

  v7 = [(NEConfiguration *)self identifier];
  [v5 appendPrettyObject:v7 withName:@"identifier" andIndent:0 options:a3];

  v8 = [(NEConfiguration *)self externalIdentifier];
  [v5 appendPrettyObject:v8 withName:@"externalIdentifier" andIndent:0 options:a3 | 1];

  v9 = [(NEConfiguration *)self applicationName];
  [v5 appendPrettyObject:v9 withName:@"applicationName" andIndent:0 options:a3];

  v10 = [(NEConfiguration *)self application];
  [v5 appendPrettyObject:v10 withName:@"application" andIndent:0 options:a3];

  [v5 appendPrettyInt:-[NEConfiguration grade](self withName:"grade") andIndent:@"grade" options:{0, a3}];
  v11 = [(NEConfiguration *)self VPN];
  [v5 appendPrettyObject:v11 withName:@"VPN" andIndent:0 options:a3];

  v12 = [(NEConfiguration *)self alwaysOnVPN];
  [v5 appendPrettyObject:v12 withName:@"alwaysOnVPN" andIndent:0 options:a3];

  v13 = [(NEConfiguration *)self appVPN];
  [v5 appendPrettyObject:v13 withName:@"appVPN" andIndent:0 options:a3];

  v14 = [(NEConfiguration *)self contentFilter];
  [v5 appendPrettyObject:v14 withName:@"contentFilter" andIndent:0 options:a3];

  v15 = [(NEConfiguration *)self pathController];
  [v5 appendPrettyObject:v15 withName:@"pathController" andIndent:0 options:a3];

  v16 = [(NEConfiguration *)self payloadInfo];
  [v5 appendPrettyObject:v16 withName:@"payloadInfo" andIndent:0 options:a3];

  v17 = [(NEConfiguration *)self dnsProxy];
  [v5 appendPrettyObject:v17 withName:@"dnsProxy" andIndent:0 options:a3];

  v18 = [(NEConfiguration *)self dnsSettings];
  [v5 appendPrettyObject:v18 withName:@"dnsSettings" andIndent:0 options:a3];

  v19 = [(NEConfiguration *)self appPush];
  [v5 appendPrettyObject:v19 withName:@"appPush" andIndent:0 options:a3];

  v20 = [(NEConfiguration *)self relay];
  [v5 appendPrettyObject:v20 withName:@"relay" andIndent:0 options:a3];

  v21 = [(NEConfiguration *)self urlFilter];
  [v5 appendPrettyObject:v21 withName:@"urlFilter" andIndent:0 options:a3];

  v22 = [(NEConfiguration *)self hotspot];
  [v5 appendPrettyObject:v22 withName:@"hotspot" andIndent:0 options:a3];

  [v5 appendString:@"\n}"];

  return v5;
}

- (id)copyProviderMachOUUIDs
{
  if (self->_resolvedProviderMachOUUIDs)
  {
    providerMachOUUIDs = self->_providerMachOUUIDs;

    return providerMachOUUIDs;
  }

  v5 = [(NEConfiguration *)self VPN];

  if (v5)
  {
    v6 = [(NEConfiguration *)self VPN];
    v7 = [v6 protocol];

    v8 = [(NEConfiguration *)self VPN];
  }

  else
  {
    v7 = [(NEConfiguration *)self appVPN];

    if (!v7)
    {
      goto LABEL_33;
    }

    v9 = [(NEConfiguration *)self appVPN];
    v7 = [v9 protocol];

    v8 = [(NEConfiguration *)self appVPN];
  }

  v10 = v8;
  v11 = [v8 tunnelType];

  v12 = 0;
  if (!v7 || (v11 - 1) > 1)
  {
    goto LABEL_34;
  }

  if (v11 != 2)
  {
    v11 = 5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = [v7 providerBundleIdentifier];
    v14 = [(NEConfiguration *)self pluginType];
    v15 = [NELaunchServices pluginProxyWithIdentifier:v13 type:v14 pluginClass:v11 extensionPoint:0];

    v16 = [v15 machOUUIDs];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [v15 machOUUIDs];
      [v12 addObjectsFromArray:v18];
    }

    v19 = [v7 authenticationPluginType];
    v20 = [NELaunchServices pluginProxyWithIdentifier:v19 type:0 pluginClass:v11 extensionPoint:0];
    v21 = [v20 machOUUIDs];
    v22 = [v21 count];

    if (v22)
    {
      v23 = [v20 machOUUIDs];
      [v12 addObjectsFromArray:v23];
    }

    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = "com.apple.racoon";
LABEL_24:
      v12 = [(NEConfiguration *)self copyMachOUUIDsFromBundleIdentifier:v25];
      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = [(NEConfiguration *)self copyMachOUUIDsFromBundleIdentifier:?];
      if ([v24 count])
      {
        [v12 addObjectsFromArray:v24];
      }

      v26 = [(NEConfiguration *)self copyMachOUUIDsFromBundleIdentifier:?];
      if ([v26 count])
      {
        [v12 addObjectsFromArray:v26];
      }

      goto LABEL_21;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = "com.apple.pppd";
      goto LABEL_24;
    }

LABEL_33:
    v12 = 0;
    goto LABEL_34;
  }

  v24 = [NELaunchServices pluginProxyWithIdentifier:@"com.apple.NetworkExtension.IKEv2Provider" type:0 pluginClass:v11 extensionPoint:0];
  v12 = [v24 machOUUIDs];
LABEL_21:

LABEL_34:
  self->_resolvedProviderMachOUUIDs = 1;
  if ([v12 count])
  {
    v27 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v12];
    v28 = self->_providerMachOUUIDs;
    self->_providerMachOUUIDs = v27;
  }

  v29 = self->_providerMachOUUIDs;

  return v29;
}

- (NSObject)copyMachOUUIDsFromBundleIdentifier:(uint64_t)a1
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v3 = NEHelperCacheCopyAppUUIDMapping();
      v4 = v3;
      if (v3 && MEMORY[0x1BFAFC5E0](v3) == MEMORY[0x1E69E9E50])
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __54__NEConfiguration_copyMachOUUIDsFromBundleIdentifier___block_invoke;
        applier[3] = &unk_1E7F09530;
        v9 = v2;
        xpc_array_apply(v4, applier);
      }

      if ([v2 count])
      {
        v5 = v2;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v2 = ne_log_obj();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v11 = "[NEConfiguration copyMachOUUIDsFromBundleIdentifier:]";
        _os_log_fault_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_FAULT, "%s called with null bundleIdentifier", buf, 0xCu);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __54__NEConfiguration_copyMachOUUIDsFromBundleIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1BFAFC5E0](v4) == MEMORY[0x1E69E9F20])
  {
    v6 = *(a1 + 32);
    v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:xpc_uuid_get_bytes(v5)];
    [v6 addObject:v7];
  }

  return 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEConfiguration allocWithZone:a3];
  v5 = self;
  if (v4)
  {
    v30.receiver = v4;
    v30.super_class = NEConfiguration;
    v4 = [(NEConfiguration *)&v30 init];
    if (v4)
    {
      v4->_grade = [(NEConfiguration *)v5 grade];
      v6 = [(NEConfiguration *)v5 name];
      name = v4->_name;
      v4->_name = v6;

      v8 = [(NEConfiguration *)v5 identifier];
      v9 = [v8 copy];
      identifier = v4->_identifier;
      v4->_identifier = v9;

      v11 = [(NEConfiguration *)v5 externalIdentifier];
      externalIdentifier = v4->_externalIdentifier;
      v4->_externalIdentifier = v11;

      v13 = [(NEConfiguration *)v5 application];
      application = v4->_application;
      v4->_application = v13;

      v15 = [(NEConfiguration *)v5 applicationName];
      applicationName = v4->_applicationName;
      v4->_applicationName = v15;

      objc_storeStrong(&v4->_applicationIdentifier, v4->_application);
    }
  }

  v17 = [(NEConfiguration *)v5 VPN];
  [(NEConfiguration *)v4 setVPN:v17];

  v18 = [(NEConfiguration *)v5 alwaysOnVPN];
  [(NEConfiguration *)v4 setAlwaysOnVPN:v18];

  v19 = [(NEConfiguration *)v5 appVPN];
  [(NEConfiguration *)v4 setAppVPN:v19];

  v20 = [(NEConfiguration *)v5 contentFilter];
  [(NEConfiguration *)v4 setContentFilter:v20];

  v21 = [(NEConfiguration *)v5 payloadInfo];
  [(NEConfiguration *)v4 setPayloadInfo:v21];

  v22 = [(NEConfiguration *)v5 pathController];
  [(NEConfiguration *)v4 setPathController:v22];

  v23 = [(NEConfiguration *)v5 dnsProxy];
  [(NEConfiguration *)v4 setDnsProxy:v23];

  v24 = [(NEConfiguration *)v5 dnsSettings];
  [(NEConfiguration *)v4 setDnsSettings:v24];

  v25 = [(NEConfiguration *)v5 appPush];
  [(NEConfiguration *)v4 setAppPush:v25];

  v26 = [(NEConfiguration *)v5 relay];
  [(NEConfiguration *)v4 setRelay:v26];

  v27 = [(NEConfiguration *)v5 urlFilter];
  [(NEConfiguration *)v4 setUrlFilter:v27];

  v28 = [(NEConfiguration *)v5 hotspot];
  [(NEConfiguration *)v4 setHotspot:v28];

  return v4;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v5 = [(NEConfiguration *)self identifier];
  v6 = v5 != 0;

  if (!v5)
  {
    [NEConfiguration addError:v4 toList:?];
  }

  v7 = [(NEConfiguration *)self name];

  if (!v7)
  {
    [NEConfiguration addError:v4 toList:?];
    v6 = 0;
  }

  if ([(NEConfiguration *)self grade]< 1 || [(NEConfiguration *)self grade]>= 4)
  {
    [NEConfiguration addError:v4 toList:?];
    v6 = 0;
  }

  v8 = [(NEConfiguration *)self VPN];
  if (v8)
  {
    v9 = v8;
    v10 = [(NEConfiguration *)self VPN];
    v11 = [v10 checkValidityAndCollectErrors:v4];

    v6 &= v11;
  }

  v12 = [(NEConfiguration *)self alwaysOnVPN];
  if (v12)
  {
    v13 = v12;
    v14 = [(NEConfiguration *)self alwaysOnVPN];
    v15 = [v14 checkValidityAndCollectErrors:v4];

    v6 &= v15;
  }

  v16 = [(NEConfiguration *)self appVPN];
  if (v16)
  {
    v17 = v16;
    v18 = [(NEConfiguration *)self appVPN];
    v19 = [v18 checkValidityAndCollectErrors:v4];

    v6 &= v19;
  }

  v20 = [(NEConfiguration *)self contentFilter];
  if (v20)
  {
    v21 = v20;
    v22 = [(NEConfiguration *)self contentFilter];
    v23 = [v22 checkValidityAndCollectErrors:v4];

    v6 &= v23;
  }

  v24 = [(NEConfiguration *)self pathController];
  if (v24)
  {
    v25 = v24;
    v26 = [(NEConfiguration *)self pathController];
    v27 = [v26 checkValidityAndCollectErrors:v4];

    v6 &= v27;
  }

  v28 = [(NEConfiguration *)self dnsProxy];
  if (v28)
  {
    v29 = v28;
    v30 = [(NEConfiguration *)self dnsProxy];
    v31 = [v30 checkValidityAndCollectErrors:v4];

    v6 &= v31;
  }

  v32 = [(NEConfiguration *)self dnsSettings];
  if (v32)
  {
    v33 = v32;
    v34 = [(NEConfiguration *)self dnsSettings];
    v35 = [v34 checkValidityAndCollectErrors:v4];

    v6 &= v35;
  }

  v36 = [(NEConfiguration *)self appPush];
  if (v36)
  {
    v37 = v36;
    v38 = [(NEConfiguration *)self appPush];
    v39 = [v38 checkValidityAndCollectErrors:v4];

    v6 &= v39;
  }

  v40 = [(NEConfiguration *)self relay];
  if (v40)
  {
    v41 = v40;
    v42 = [(NEConfiguration *)self relay];
    v43 = [v42 checkValidityAndCollectErrors:v4];

    v6 &= v43;
  }

  v44 = [(NEConfiguration *)self urlFilter];
  if (v44)
  {
    v45 = v44;
    v46 = [(NEConfiguration *)self urlFilter];
    v47 = [v46 checkValidityAndCollectErrors:v4];

    v6 &= v47;
  }

  v48 = [(NEConfiguration *)self hotspot];
  if (v48)
  {
    v49 = v48;
    v50 = [(NEConfiguration *)self hotspot];
    v51 = [v50 checkValidityAndCollectErrors:v4];

    v6 &= v51;
  }

  return v6 & 1;
}

+ (void)addError:(void *)a3 toList:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  [v4 addObject:v5];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEConfiguration *)self identifier];
  [v4 encodeObject:v5 forKey:@"Identifier"];

  v6 = [(NEConfiguration *)self externalIdentifier];
  [v4 encodeObject:v6 forKey:@"ExternalIdentifierString"];

  v7 = [(NEConfiguration *)self application];
  [v4 encodeObject:v7 forKey:@"Application"];

  [v4 encodeInt32:-[NEConfiguration grade](self forKey:{"grade"), @"Grade"}];
  v8 = [(NEConfiguration *)self VPN];
  [v4 encodeObject:v8 forKey:@"VPN"];

  v9 = [(NEConfiguration *)self alwaysOnVPN];
  [v4 encodeObject:v9 forKey:@"AlwaysOnVPN"];

  v10 = [(NEConfiguration *)self appVPN];
  [v4 encodeObject:v10 forKey:@"AppVPN"];

  v11 = [(NEConfiguration *)self contentFilter];
  [v4 encodeObject:v11 forKey:@"ContentFilter"];

  v12 = [(NEConfiguration *)self name];
  [v4 encodeObject:v12 forKey:@"Name"];

  v13 = [(NEConfiguration *)self payloadInfo];
  [v4 encodeObject:v13 forKey:@"ProfileInfo"];

  v14 = [(NEConfiguration *)self applicationName];
  [v4 encodeObject:v14 forKey:@"ApplicationName"];

  v15 = [(NEConfiguration *)self pathController];
  [v4 encodeObject:v15 forKey:@"PathController"];

  v16 = [(NEConfiguration *)self dnsProxy];
  [v4 encodeObject:v16 forKey:@"DNSProxy"];

  v17 = [(NEConfiguration *)self dnsSettings];
  [v4 encodeObject:v17 forKey:@"DNSSettings"];

  v18 = [(NEConfiguration *)self appPush];
  [v4 encodeObject:v18 forKey:@"AppPush"];

  v19 = [(NEConfiguration *)self relay];
  [v4 encodeObject:v19 forKey:@"Relay"];

  v20 = [(NEConfiguration *)self urlFilter];
  [v4 encodeObject:v20 forKey:@"URLFilter"];

  v21 = [(NEConfiguration *)self hotspot];
  [v4 encodeObject:v21 forKey:@"Hotspot"];
}

- (NEConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = NEConfiguration;
  v5 = [(NEConfiguration *)&v41 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExternalIdentifierString"];
    externalIdentifier = v5->_externalIdentifier;
    v5->_externalIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Application"];
    application = v5->_application;
    v5->_application = v10;

    v5->_grade = [v4 decodeInt32ForKey:@"Grade"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VPN"];
    VPN = v5->_VPN;
    v5->_VPN = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AlwaysOnVPN"];
    alwaysOnVPN = v5->_alwaysOnVPN;
    v5->_alwaysOnVPN = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AppVPN"];
    appVPN = v5->_appVPN;
    v5->_appVPN = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ContentFilter"];
    contentFilter = v5->_contentFilter;
    v5->_contentFilter = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    name = v5->_name;
    v5->_name = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProfileInfo"];
    payloadInfo = v5->_payloadInfo;
    v5->_payloadInfo = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ApplicationName"];
    applicationName = v5->_applicationName;
    v5->_applicationName = v24;

    objc_storeStrong(&v5->_applicationIdentifier, v5->_application);
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PathController"];
    pathController = v5->_pathController;
    v5->_pathController = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DNSProxy"];
    dnsProxy = v5->_dnsProxy;
    v5->_dnsProxy = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DNSSettings"];
    dnsSettings = v5->_dnsSettings;
    v5->_dnsSettings = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AppPush"];
    appPush = v5->_appPush;
    v5->_appPush = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Relay"];
    relay = v5->_relay;
    v5->_relay = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URLFilter"];
    urlFilter = v5->_urlFilter;
    v5->_urlFilter = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Hotspot"];
    hotspot = v5->_hotspot;
    v5->_hotspot = v38;
  }

  return v5;
}

- (NEConfiguration)initWithName:(id)a3 grade:(int64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = NEConfiguration;
  v8 = [(NEConfiguration *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_grade = a4;
    objc_storeStrong(&v8->_name, a3);
    v10 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v9->_identifier;
    v9->_identifier = v10;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(NEConfiguration *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [v4 identifier];
    v8 = [(NEConfiguration *)self identifier];
    v6 = [v7 isEqual:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (NEConfiguration)configurationWithProfilePayload:(id)a3 grade:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [[NEProfilePayloadBase alloc] initWithPayload:v5];
  v7 = [v5 objectForKeyedSubscript:@"PayloadType"];
  v8 = [v5 objectForKeyedSubscript:@"UserDefinedName"];
  if ((isa_nsstring(v8) & 1) == 0)
  {
    v9 = [v5 objectForKeyedSubscript:@"PayloadDisplayName"];

    if (isa_nsstring(v9))
    {
      v8 = v9;
    }

    else
    {
      if ([v7 isEqualToString:@"com.apple.webcontent-filter"])
      {
        v10 = @"PluginBundleID";
      }

      else
      {
        v10 = @"VPNType";
      }

      v8 = [v5 objectForKeyedSubscript:v10];
    }
  }

  if ([v7 isEqualToString:@"com.apple.vpn.managed"])
  {
    v11 = [[NEConfiguration alloc] initWithVPNPayload:v6 configurationName:v8 grade:a4];
LABEL_22:
    v12 = v11;
    goto LABEL_23;
  }

  if ([v7 isEqualToString:@"com.apple.vpn.managed.alwayson"])
  {
    v11 = [[NEConfiguration alloc] initWithAlwaysOnVPNPayload:v6 configurationName:v8 grade:a4];
    goto LABEL_22;
  }

  if ([v7 isEqualToString:@"com.apple.vpn.managed.applayer"])
  {
    v11 = [[NEConfiguration alloc] initWithAppLayerVPNPayload:v6 configurationName:v8 grade:a4];
    goto LABEL_22;
  }

  if ([v7 isEqualToString:@"com.apple.webcontent-filter"])
  {
    v11 = [[NEConfiguration alloc] initWithContentFilterPayload:v6 configurationName:v8 grade:a4];
    goto LABEL_22;
  }

  if ([v7 isEqualToString:@"com.apple.networkusagerules"])
  {
    v11 = [[NEConfiguration alloc] initWithPathControllerPayload:v6 configurationName:v8 grade:a4];
    goto LABEL_22;
  }

  if ([v7 isEqualToString:@"com.apple.dnsSettings.managed"])
  {
    v11 = [[NEConfiguration alloc] initWithDNSSettingsPayload:v6 configurationName:v8 grade:a4];
    goto LABEL_22;
  }

  if ([v7 isEqualToString:@"com.apple.relay.managed"])
  {
    v11 = [[NEConfiguration alloc] initWithRelayPayload:v6 configurationName:v8 grade:a4];
    goto LABEL_22;
  }

  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = v7;
    _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Failed to create a NEConfiguration from profile payload with type '%@'", &v16, 0xCu);
  }

  v12 = 0;
LABEL_23:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)initWithIdentifier:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = NEConfiguration;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      v5[2] = 1;
      objc_storeStrong(v5 + 3, a2);
    }
  }

  return a1;
}

- (BOOL)setAssociatedDomains:(id)a3
{
  v4 = a3;
  if ([(NEConfiguration *)self validateStrings:v4])
  {
    if ([v4 count])
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v5 setObject:@"identifier com.apple.swcd and anchor apple" forKeyedSubscript:@"DesignatedRequirement"];
      [v5 setObject:@"/usr/libexec/swcd" forKeyedSubscript:@"Path"];
      [v5 setObject:v4 forKeyedSubscript:@"DNSDomainMatch"];
      v6 = [(NEConfiguration *)self setPerAppRuleSettings:v5 withAppIdentifier:@"com.apple.swcd"];
      if (!v6)
      {
        v7 = ne_log_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *v9 = 0;
          _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Failed to add an app rule for swcd", v9, 2u);
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)validateStrings:(uint64_t)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (!isa_nsstring(*(*(&v13 + 1) + 8 * v9)))
          {
            v10 = 0;
            goto LABEL_12;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_12:
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)setExcludedDomains:(id)a3
{
  v4 = a3;
  if (![(NEConfiguration *)self validateStrings:v4])
  {
    goto LABEL_9;
  }

  if ([v4 count])
  {
    v5 = [(NEConfiguration *)self appVPN];

    if (v5)
    {
      v6 = [(NEConfiguration *)self appVPN];
      [v6 setExcludedDomains:v4];

      goto LABEL_5;
    }

    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Cannot set excluded domains on a non-per-app VPN configuration", v10, 2u);
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

LABEL_5:
  v7 = 1;
LABEL_10:

  return v7;
}

- (BOOL)setContactsDomains:(id)a3 accountIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NEConfiguration *)self validateStrings:v6]&& [(NEConfiguration *)self validateStrings:v7])
  {
    if (![v6 count] && !objc_msgSend(v7, "count"))
    {
      v10 = 1;
      goto LABEL_24;
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v8 setObject:@"identifier com.apple.AddressBook and anchor apple" forKeyedSubscript:@"DesignatedRequirement"];
    if ([v6 count])
    {
      [v8 setObject:v6 forKeyedSubscript:@"DNSDomainMatch"];
    }

    if ([v7 count])
    {
      [v8 setObject:v7 forKeyedSubscript:@"AccountIdentifierMatch"];
    }

    if ([(NEConfiguration *)self setPerAppRuleSettings:v8 withAppIdentifier:@"com.apple.MobileAddressBook"])
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v9 setObject:@"/System/Library/PrivateFrameworks/DataAccess.framework/Support/dataaccessd" forKeyedSubscript:@"Path"];
      if ([v6 count])
      {
        [v9 setObject:v6 forKeyedSubscript:@"DNSDomainMatch"];
      }

      if ([v7 count])
      {
        [v9 setObject:v7 forKeyedSubscript:@"AccountIdentifierMatch"];
      }

      if ([(NEConfiguration *)self setPerAppRuleSettings:v9 withAppIdentifier:@"com.apple.dataaccessd"])
      {
        v10 = 1;
LABEL_23:

        goto LABEL_24;
      }

      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "Failed to add an app rule for dataaccessd", v13, 2u);
      }
    }

    else
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Failed to add an app rule for Contacts", buf, 2u);
      }
    }

    v10 = 0;
    goto LABEL_23;
  }

  v10 = 0;
LABEL_24:

  return v10;
}

- (BOOL)setCalendarDomains:(id)a3 accountIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NEConfiguration *)self validateStrings:v6]&& [(NEConfiguration *)self validateStrings:v7])
  {
    if ([v6 count] || objc_msgSend(v7, "count"))
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if ([v6 count])
      {
        [v8 setObject:v6 forKeyedSubscript:@"DNSDomainMatch"];
      }

      if ([v7 count])
      {
        [v8 setObject:v7 forKeyedSubscript:@"AccountIdentifierMatch"];
      }

      if ([(NEConfiguration *)self setPerAppRuleSettings:v8 withAppIdentifier:@"com.apple.mobilecal"])
      {
        if ([(NEConfiguration *)self setPerAppRuleSettings:v8 withAppIdentifier:@"com.apple.reminders"])
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v9 setObject:@"/System/Library/PrivateFrameworks/DataAccess.framework/Support/dataaccessd" forKeyedSubscript:@"Path"];
          if ([v6 count])
          {
            [v9 setObject:v6 forKeyedSubscript:@"DNSDomainMatch"];
          }

          if ([v7 count])
          {
            [v9 setObject:v7 forKeyedSubscript:@"AccountIdentifierMatch"];
          }

          if ([(NEConfiguration *)self setPerAppRuleSettings:v9 withAppIdentifier:@"com.apple.dataaccessd"])
          {
            v10 = 1;
LABEL_28:

            goto LABEL_29;
          }

          v13 = ne_log_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *v15 = 0;
            _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "Failed to add an app rule for dataaccessd", v15, 2u);
          }

LABEL_27:
          v10 = 0;
          goto LABEL_28;
        }

        v9 = ne_log_obj();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        *buf = 0;
        v11 = "Failed to add an app rule for Reminders";
        v12 = buf;
      }

      else
      {
        v9 = ne_log_obj();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        v17 = 0;
        v11 = "Failed to add an app rule for Calendar";
        v12 = &v17;
      }

      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, v11, v12, 2u);
      goto LABEL_27;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_29:

  return v10;
}

- (BOOL)setMailDomains:(id)a3 accountIdentifiers:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(NEConfiguration *)self validateStrings:v6]&& [(NEConfiguration *)self validateStrings:v7])
  {
    if ([v6 count] || objc_msgSend(v7, "count"))
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:@"identifier com.apple.mail and anchor apple" forKeyedSubscript:@"DesignatedRequirement"];
      if ([v6 count])
      {
        [v8 setObject:v6 forKeyedSubscript:@"DNSDomainMatch"];
      }

      if ([v7 count])
      {
        [v8 setObject:v7 forKeyedSubscript:@"AccountIdentifierMatch"];
      }

      if ([(NEConfiguration *)self setPerAppRuleSettings:v8 withAppIdentifier:@"com.apple.mobilemail"])
      {
        [v8 setObject:@"/System/Library/PrivateFrameworks/EmailDaemon.framework/maild" forKeyedSubscript:@"Path"];
        if ([(NEConfiguration *)self setPerAppRuleSettings:v8 withAppIdentifier:@"com.apple.email.maild"])
        {
          [v8 setObject:@"/System/Library/PrivateFrameworks/ExchangeSync.framework/Support/exchangesyncd" forKeyedSubscript:@"Path"];
          if ([(NEConfiguration *)self setPerAppRuleSettings:v8 withAppIdentifier:@"com.apple.datausage.dataaccess.activesync"])
          {
            [v8 removeObjectForKey:@"Path"];
            if ([(NEConfiguration *)self setPerAppRuleSettings:v8 withAppIdentifier:@"com.apple.mobilenotes"])
            {
              v9 = 1;
LABEL_26:

              goto LABEL_27;
            }

            v10 = ne_log_obj();
            if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
LABEL_25:

              v9 = 0;
              goto LABEL_26;
            }

            v16 = 138412290;
            v17 = @"com.apple.mobilenotes";
            v11 = "Failed to add an app rule for %@";
            v12 = v10;
            v13 = 12;
LABEL_23:
            _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v11, &v16, v13);
            goto LABEL_25;
          }

          v10 = ne_log_obj();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }

          LOWORD(v16) = 0;
          v11 = "Failed to add an app rule for exchangesyncd";
        }

        else
        {
          v10 = ne_log_obj();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }

          LOWORD(v16) = 0;
          v11 = "Failed to add an app rule for maild";
        }
      }

      else
      {
        v10 = ne_log_obj();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        LOWORD(v16) = 0;
        v11 = "Failed to add an app rule for Mail";
      }

      v12 = v10;
      v13 = 2;
      goto LABEL_23;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

LABEL_27:

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)setSMBDomains:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v12[0] = @"DNSDomainMatch";
    v12[1] = @"Path";
    v13[0] = v4;
    v13[1] = @"/System/Library/PrivateFrameworks/SMBClientProvider.framework/smbclientd";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v6 = [(NEConfiguration *)self setPerAppRuleSettings:v5 withAppIdentifier:@"com.apple.smbclientd"];
    if (!v6)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "Failed to add an app rule for SMB domains (%@)", &v10, 0xCu);
      }
    }
  }

  else
  {
    v6 = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)setAppLayerVPNUUID:(id)a3 andSafariDomains:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "[NEConfiguration(NEProfileIngestionMethods) setAppLayerVPNUUID:andSafariDomains:]";
    v14 = 2112;
    v15 = v6;
    _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "%s: vpnUUID %@", &v12, 0x16u);
  }

  v9 = [(NEConfiguration *)self setPerAppUUID:v6 andSafariDomains:v7];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)setPerAppUUID:(id)a3 andSafariDomains:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v20 = "[NEConfiguration(NEProfileIngestionMethods) setPerAppUUID:andSafariDomains:]";
    v21 = 2112;
    v22 = v6;
    _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "%s: perAppUUID %@", buf, 0x16u);
  }

  if (v6)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v6];
    [(NEConfiguration *)self setExternalIdentifier:v9];
  }

  if ([v7 count])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v10 setObject:v7 forKeyedSubscript:@"DNSDomainMatch"];
    if ([(NEConfiguration *)self setPerAppRuleSettings:v10 withAppIdentifier:@"com.apple.mobilesafari"])
    {
      v17 = @"DNSDomainMatch";
      v18 = v7;
      v11 = 1;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v13 = [(NEConfiguration *)self setPerAppRuleSettings:v12 withAppIdentifier:@"com.apple.webapp"];

      if (v13)
      {
LABEL_13:

        goto LABEL_14;
      }

      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
LABEL_16:
        _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "setPerAppUUID could not add Safari perApp rules", buf, 2u);
      }
    }

    else
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        goto LABEL_16;
      }
    }

    v11 = 0;
    goto LABEL_13;
  }

  v11 = 1;
LABEL_14:

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)setPerAppRuleSettings:(id)a3 withAppIdentifier:(id)a4
{
  v88 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NEConfiguration *)self appVPN];
  v9 = [(NEConfiguration *)self contentFilter];
  v10 = [v9 perApp];

  if (v10)
  {
    v11 = [(NEConfiguration *)self contentFilter];
LABEL_7:
    v16 = v11;
    v17 = [v11 perApp];

    goto LABEL_8;
  }

  v12 = [(NEConfiguration *)self dnsProxy];
  v13 = [v12 perApp];

  if (v13)
  {
    v11 = [(NEConfiguration *)self dnsProxy];
    goto LABEL_7;
  }

  v14 = [(NEConfiguration *)self relay];
  v15 = [v14 perApp];

  if (v15)
  {
    v11 = [(NEConfiguration *)self relay];
    goto LABEL_7;
  }

  v17 = 0;
LABEL_8:
  v18 = ne_log_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v83 = objc_opt_class();
    v84 = 2112;
    v85 = v7;
    v31 = v83;
    _os_log_debug_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEBUG, "%@ setPerAppRuleSettings: appID %@", buf, 0x16u);
  }

  if (!(v8 | v17))
  {
    v21 = ne_log_obj();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v22 = 0;
      goto LABEL_68;
    }

    v50 = objc_opt_class();
    *buf = 138412290;
    v83 = v50;
    v19 = v50;
    _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "%@ setPerAppRuleSettings: perApp not initialized", buf, 0xCu);
LABEL_55:

    goto LABEL_16;
  }

  if (!v6 || !v7)
  {
    v21 = ne_log_large_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v53 = objc_opt_class();
      *buf = 138412802;
      v83 = v53;
      v84 = 2112;
      v85 = v7;
      v86 = 2112;
      v87 = v6;
      v54 = v53;
      _os_log_debug_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_DEBUG, "%@ setPerAppRuleSettings: skip rule setting for empty ID or rules %@, %@", buf, 0x20u);
    }

    v22 = 1;
    goto LABEL_68;
  }

  v19 = [[NEAppRule alloc] initWithSigningIdentifier:v7];
  if (v8)
  {
    v20 = v8;
  }

  else
  {
    v20 = v17;
  }

  -[NEAppRule setNoRestriction:](v19, "setNoRestriction:", [v20 noRestriction]);
  v23 = [v6 objectForKeyedSubscript:@"AccountIdentifierMatch"];
  v24 = v23;
  if (v23)
  {
    if (!isa_nsarray(v23))
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v59 = objc_opt_class();
        v75 = v59;
        v60 = [v6 objectForKeyedSubscript:@"AccountIdentifierMatch"];
        v61 = objc_opt_class();
        *buf = 138412802;
        v83 = v59;
        v84 = 2112;
        v85 = @"AccountIdentifierMatch";
        v86 = 2112;
        v87 = v61;
        v62 = v61;
        _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, "%@ setPerAppRuleSettings: failed to set %@, unsupported type %@", buf, 0x20u);
      }

      v22 = 0;
      v21 = v24;
      goto LABEL_68;
    }

    [(NEAppRule *)v19 setMatchAccountIdentifiers:v24];
  }

  v21 = [v6 objectForKeyedSubscript:@"DNSDomainMatch"];

  if (v21)
  {
    if (isa_nsarray(v21))
    {
      [(NEAppRule *)v19 setMatchDomains:v21];
      goto LABEL_27;
    }

    v32 = ne_log_obj();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v63 = objc_opt_class();
      v76 = v63;
      v64 = [v6 objectForKeyedSubscript:@"DNSDomainMatch"];
      v65 = objc_opt_class();
      *buf = 138412802;
      v83 = v63;
      v84 = 2112;
      v85 = @"DNSDomainMatch";
      v86 = 2112;
      v87 = v65;
      v66 = v65;
      _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, "%@ setPerAppRuleSettings: failed to set %@, unsupported type %@", buf, 0x20u);
    }

    goto LABEL_55;
  }

LABEL_27:
  v25 = [v6 objectForKeyedSubscript:@"Path"];
  v26 = isa_nsstring(v25);

  if (v26)
  {
    v27 = [v6 objectForKeyedSubscript:@"Path"];
    [(NEAppRule *)v19 setMatchPath:v27];
  }

  if ([(NEAppRule *)v19 noRestriction])
  {
    v28 = [v6 objectForKeyedSubscript:@"NoDivertDNS"];
    if (isa_nsnumber(v28))
    {
      -[NEAppRule setNoDivertDNS:](v19, "setNoDivertDNS:", [v28 BOOLValue]);
    }
  }

  v73 = v6;
  v74 = v21;
  v71 = v8;
  v72 = v7;
  v70 = v17;
  if (v8)
  {
    v29 = v8;
  }

  else
  {
    v29 = v17;
  }

  [v29 appRules];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v33 = v78 = 0u;
  v34 = [v33 countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v78;
    while (2)
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v78 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v77 + 1) + 8 * i);
        v39 = [v38 matchSigningIdentifier];
        v40 = [(NEAppRule *)v19 matchSigningIdentifier];
        v41 = [v39 isEqualToString:v40];

        if (v41)
        {
          v43 = [v38 matchDomains];
          v44 = [(NEAppRule *)v19 matchDomains];
          v45 = [(NEConfiguration *)self mergeArray:v43 withArray:v44];
          [v38 setMatchDomains:v45];

          v46 = [v38 matchAccountIdentifiers];
          v47 = [(NEAppRule *)v19 matchAccountIdentifiers];
          v48 = [(NEConfiguration *)self mergeArray:v46 withArray:v47];
          [v38 setMatchAccountIdentifiers:v48];

          v49 = v33;
          v7 = v72;
          v6 = v73;
          v17 = v70;
          v8 = v71;
          v21 = v74;
          goto LABEL_65;
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v77 objects:v81 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  if (v33)
  {
    v42 = [v33 mutableCopy];
  }

  else
  {
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v49 = v42;
  v8 = v71;
  v7 = v72;
  v17 = v70;
  v6 = v73;
  v21 = v74;
  if (v42)
  {
    [v42 addObject:v19];
    if (v71)
    {
      v51 = v71;
    }

    else
    {
      v51 = v70;
    }

    [v51 setAppRules:v49];
LABEL_65:

    v52 = ne_log_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v57 = objc_opt_class();
      if (v8)
      {
        v58 = v8;
      }

      else
      {
        v58 = v17;
      }

      v67 = [v58 appRules];
      *buf = 138412546;
      v83 = v57;
      v84 = 2112;
      v85 = v67;
      _os_log_debug_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_DEBUG, "%@ setPerAppRuleSettings: done with %@", buf, 0x16u);
    }

    v22 = 1;
  }

  else
  {
    v52 = ne_log_obj();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v68 = objc_opt_class();
      *buf = 138412290;
      v83 = v68;
      v69 = v68;
      _os_log_error_impl(&dword_1BA83C000, v52, OS_LOG_TYPE_ERROR, "%@ setPerAppRuleSettings: failed to allocate for app rules", buf, 0xCu);

      v8 = v71;
      v17 = v70;
      v21 = v74;
    }

    v22 = 0;
  }

LABEL_68:
  v55 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)mergeArray:(void *)a3 withArray:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    v6 = [a2 mutableCopy];
    if ([v6 count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            if (([v6 containsObject:{v12, v16}] & 1) == 0)
            {
              [v6 addObject:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }

      v13 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v6];
    }

    else
    {
      v13 = v5;
    }

    a1 = v13;
  }

  v14 = *MEMORY[0x1E69E9840];

  return a1;
}

- (BOOL)setProfileInfo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ne_log_large_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v24 = 138412546;
    *&v24[4] = objc_opt_class();
    *&v24[12] = 2112;
    *&v24[14] = v4;
    v23 = *&v24[4];
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ setProfileInfo %@", v24, 0x16u);
  }

  v6 = [(NEConfiguration *)self payloadInfo];

  if (v6 || (v7 = objc_alloc_init(NEProfileIngestionPayloadInfo), [(NEConfiguration *)self setPayloadInfo:v7], v7, [(NEConfiguration *)self payloadInfo], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v4 objectForKeyedSubscript:{@"PayloadOrganization", *v24, *&v24[16], v25}];

    if (v9)
    {
      v10 = [v4 objectForKeyedSubscript:@"PayloadOrganization"];
      v11 = [(NEConfiguration *)self payloadInfo];
      [v11 setProfileOrganization:v10];
    }

    v12 = [v4 objectForKeyedSubscript:@"PayloadUUID"];
    v13 = [(NEConfiguration *)self payloadInfo];
    [v13 setProfileUUID:v12];

    v14 = [v4 objectForKeyedSubscript:@"PayloadIdentifier"];
    v15 = [(NEConfiguration *)self payloadInfo];
    [v15 setProfileIdentifier:v14];

    v16 = [(NEConfiguration *)self payloadInfo];
    [v16 setProfileSource:1];

    v17 = [v4 objectForKeyedSubscript:@"isInstalledByMDM"];
    if (isa_nsnumber(v17))
    {
      if ([v17 BOOLValue])
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      v19 = [(NEConfiguration *)self payloadInfo];
      [v19 setProfileSource:v18];
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)setPayloadInfoCommon:(id)a3 payloadOrganization:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v18 = 138412802;
    *&v18[4] = objc_opt_class();
    *&v18[12] = 2112;
    *&v18[14] = v6;
    *&v18[22] = 2112;
    v19 = v7;
    v17 = *&v18[4];
    _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "%@ setPayloadInfoCommon payload UUID '%@', organization '%@'", v18, 0x20u);
  }

  v9 = [(NEConfiguration *)self payloadInfo];

  if (v9 || (v10 = objc_alloc_init(NEProfileIngestionPayloadInfo), [(NEConfiguration *)self setPayloadInfo:v10], v10, [(NEConfiguration *)self payloadInfo], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [(NEConfiguration *)self payloadInfo:*v18];
    [v12 setPayloadUUID:v6];

    v13 = [(NEConfiguration *)self payloadInfo];
    [v13 setPayloadOrganization:v7];

    if ([(NEConfiguration *)self grade]== 2)
    {
      [(NEConfiguration *)self setApplicationName:v7];
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)setPayloadInfoIdentity:(id)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NEConfiguration *)self alwaysOnVPN];

  if (v5)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "setPayloadInfoIdentity called for AlwaysOn, not applicable", buf, 2u);
    }

    goto LABEL_70;
  }

  v7 = ne_log_large_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "setPayloadInfoIdentity", buf, 2u);
  }

  v8 = v4;
  v9 = v8;
  if (!self)
  {

    v84 = v9;
    v6 = v84;
    goto LABEL_70;
  }

  v10 = [(NEConfiguration *)self getConfigurationProtocol];
  if (!v10)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v81 = objc_opt_class();
      *buf = 138412290;
      v92 = v81;
      v82 = v81;
      _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%@ setPayloadInfoIdentityUserNameAndPassword: missing protocol info", buf, 0xCu);
    }

    goto LABEL_22;
  }

  if (v9)
  {
    v11 = v9[5];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    if (v9)
    {
      v13 = v9[5];
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [v10 setUsername:v14];
  }

  if (v9)
  {
    v15 = v9[6];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    if (v9)
    {
      v17 = v9[6];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    [(NEConfiguration *)self setConfigurationVPNPassword:v18];
LABEL_22:
  }

  v19 = v9;
  v20 = [(NEConfiguration *)self getConfigurationProtocol];
  if (v19)
  {
    v21 = v19[7];
    if (v21)
    {

      goto LABEL_28;
    }

    v22 = v19[8];
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  if (!v23)
  {
    v39 = ne_log_obj();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_38;
    }

    v83 = objc_opt_class();
    *buf = 138412290;
    v92 = v83;
    v40 = v83;
    _os_log_debug_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_DEBUG, "%@ setPayloadInfoIdentityProxy: skipped, not in payload.", buf, 0xCu);
    goto LABEL_34;
  }

LABEL_28:
  if (v20)
  {
    v24 = [v20 proxySettings];
    v25 = [v24 HTTPServer];
    [v25 setAuthenticationRequired:1];

    if (v19)
    {
      v26 = v19[7];
      v27 = [v20 proxySettings];
      v28 = [v27 HTTPServer];
      [v28 setUsername:v26];

      v29 = v19[8];
    }

    else
    {
      v85 = [v20 proxySettings];
      v86 = [v85 HTTPServer];
      [v86 setUsername:0];

      v29 = 0;
    }

    v30 = v29;
    v31 = [v20 proxySettings];
    v32 = [v31 HTTPServer];
    [v32 setPassword:v30];

    v33 = [v20 proxySettings];
    v34 = [v33 HTTPSServer];
    [v34 setAuthenticationRequired:1];

    if (v19)
    {
      v35 = v19[7];
      v36 = [v20 proxySettings];
      v37 = [v36 HTTPSServer];
      [v37 setUsername:v35];

      v38 = v19[8];
    }

    else
    {
      v87 = [v20 proxySettings];
      v88 = [v87 HTTPSServer];
      [v88 setUsername:0];

      v38 = 0;
    }

    v39 = v38;
    v40 = [v20 proxySettings];
    v41 = [v40 HTTPSServer];
    [v41 setPassword:v39];
  }

  else
  {
    v39 = ne_log_obj();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    v42 = objc_opt_class();
    *buf = 138412290;
    v92 = v42;
    v40 = v42;
    _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, "%@ setPayloadInfoIdentityProxy: missing  protocol info", buf, 0xCu);
  }

LABEL_34:

LABEL_38:
  if (v19)
  {
    v43 = v19[9];
    if (v43)
    {
      goto LABEL_50;
    }
  }

  v44 = [(NEConfiguration *)self VPN];
  v45 = [v44 protocol];
  if ([v45 type] == 5)
  {
  }

  else
  {
    v46 = [(NEConfiguration *)self VPN];
    v47 = [v46 protocol];
    v48 = [v47 type];

    if (v48 != 1)
    {
LABEL_47:
      v51 = ne_log_obj();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_DEBUG, "setPayloadInfoIdentityIPSecSharedSecret: no SharedSecret found, set to blank", buf, 2u);
      }

      v43 = &stru_1F3880810;
LABEL_50:
      v50 = v43;
      v52 = [(NEConfiguration *)self VPN];
      v53 = [v52 protocol];
      v54 = [v53 type];

      if (v54 != 5)
      {
        if (v54 == 2)
        {
          v63 = [NEKeychainItem alloc];
          v56 = [(NEConfiguration *)self VPN];
          v64 = [v56 protocol];
          v65 = v64;
          if (v64)
          {
            v66 = *(v64 + 80);
          }

          else
          {
            v66 = 0;
          }

          v89 = [(NEConfiguration *)self VPN];
          Property = [v89 protocol];
          v69 = Property;
          v90 = v4;
          if (Property)
          {
            Property = objc_getProperty(Property, v68, 88, 1);
          }

          v70 = Property;
          v71 = [(NEKeychainItem *)v63 initWithPassword:v50 domain:v66 accessGroup:v70];
          v72 = [(NEConfiguration *)self VPN];
          v73 = [v72 protocol];
          [v73 setSharedSecretKeychainItem:v71];

          v4 = v90;
          goto LABEL_62;
        }

        if (v54 != 1)
        {
LABEL_63:

          goto LABEL_64;
        }
      }

      v55 = [(NEConfiguration *)self VPN];
      v56 = [v55 protocol];

      v58 = [NEKeychainItem alloc];
      if (v56)
      {
        v59 = v56[10];
        v60 = objc_getProperty(v56, v57, 88, 1);
      }

      else
      {
        v59 = 0;
        v60 = 0;
      }

      v61 = v60;
      v62 = [(NEKeychainItem *)v58 initWithPassword:v50 domain:v59 accessGroup:v61];
      [v56 setSharedSecretKeychainItem:v62];

      if (![v56 authenticationMethod])
      {
        [v56 setAuthenticationMethod:2];
      }

LABEL_62:

      goto LABEL_63;
    }
  }

  v49 = [(NEConfiguration *)self VPN];
  v50 = [v49 protocol];

  if (([(__CFString *)v50 authenticationMethod]|| ([(__CFString *)v50 useExtendedAuthentication]& 1) == 0) && [(__CFString *)v50 authenticationMethod]!= 1)
  {

    goto LABEL_47;
  }

LABEL_64:

  v74 = v19;
  v6 = v74;
  if (v19)
  {
    isa = v74[10].isa;
  }

  else
  {
    isa = 0;
  }

  v76 = isa;

  if (v76)
  {
    if (v19)
    {
      v77 = v6[10].isa;
    }

    else
    {
      v77 = 0;
    }

    v78 = v77;
    [(NEConfiguration *)self setConfigurationVPNPassword:v78];
  }

LABEL_70:

  v79 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)setConfigurationVPNPassword:(void *)a1
{
  v3 = a2;
  v4 = [(NEConfiguration *)a1 getConfigurationProtocol];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 passwordKeychainItem];

    if (!v6)
    {
      v8 = v5[10];
      v9 = [NEKeychainItem alloc];
      v11 = objc_getProperty(v5, v10, 88, 1);
      v12 = [(NEKeychainItem *)v9 initWithPassword:v3 domain:v8 accessGroup:v11];
      [v5 setPasswordKeychainItem:v12];

      goto LABEL_8;
    }

    v7 = [v5 passwordKeychainItem];
    [v7 setPassword:v3];
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "setConfigurationVPNPassword failed: VPN not allocated", v14, 2u);
    }
  }

LABEL_8:
  return v5 != 0;
}

- (id)getConfigurationProtocol
{
  v1 = a1;
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 VPN];
    v3 = [v2 protocol];

    if (v3)
    {
      v4 = [v1 VPN];
LABEL_6:
      v7 = v4;
      v1 = [v4 protocol];

      goto LABEL_7;
    }

    v5 = [v1 appVPN];
    v6 = [v5 protocol];

    if (v6)
    {
      v4 = [v1 appVPN];
      goto LABEL_6;
    }

    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = objc_opt_class();
      v11 = v13;
      _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "%@ getConfigurationProtocol: protocol info to be initialized", &v12, 0xCu);
    }

    v1 = 0;
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v1;
}

- (id)getConfigurationIdentifier
{
  v2 = [(NEConfiguration *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)getPendingCertificateUUIDsInternal:(void *)a1
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    v6 = [a1 VPN];

    if (v6)
    {
      v7 = v5;
      v8 = [(NEConfiguration *)a1 getConfigurationProtocol];
      v9 = [a1 VPN];

      a1 = 0;
      if (!v9 || !v8)
      {
        goto LABEL_64;
      }

      v10 = [v8 type];
      v11 = 0;
      if (v10 > 2)
      {
        if (v10 != 3)
        {
          if (v10 != 4)
          {
            if (v10 == 5)
            {
              a1 = [v7 pendingCertificates];
              if (a1)
              {
                v12 = [v8 identityReferenceInternal];
                v11 = v12 == 0;

LABEL_44:
                goto LABEL_54;
              }

LABEL_34:
              v11 = 0;
              goto LABEL_44;
            }

LABEL_54:
            v32 = ne_log_obj();
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_61;
            }

            v33 = [v7 pendingCertificates];
            LODWORD(v40) = 67109378;
            HIDWORD(v40) = v11;
            LOWORD(v41) = 2112;
            *(&v41 + 2) = v33;
            v34 = "NEConfiguration getPendingCertificateUUIDsVPN: pending %d, cert UUIDs %@";
            goto LABEL_74;
          }

LABEL_35:
          if ([v8 authenticationMethod] != 1)
          {
            goto LABEL_53;
          }

LABEL_43:
          a1 = [v8 identityReferenceInternal];
          v11 = a1 == 0;
          goto LABEL_44;
        }

        if ([v8 authenticationMethod] == 3)
        {
          goto LABEL_43;
        }

LABEL_53:
        v11 = 0;
        goto LABEL_54;
      }

      if (v10 == 1)
      {
        goto LABEL_35;
      }

      if (v10 != 2)
      {
        goto LABEL_54;
      }

      v27 = [v8 machineAuthenticationMethod];
      if (v27 == 2)
      {
        a1 = [v8 machineIdentityReference];
        if (!a1)
        {
          v11 = 1;
          goto LABEL_44;
        }

        if ([v8 authenticationMethod] != 3)
        {
          goto LABEL_34;
        }
      }

      else if ([v8 authenticationMethod] != 3)
      {
        goto LABEL_53;
      }

      v31 = [v8 identityReferenceInternal];
      v11 = v31 == 0;

      if (v27 != 2)
      {
        goto LABEL_54;
      }

      goto LABEL_44;
    }

    v13 = [a1 appVPN];

    if (v13)
    {
      v7 = v5;
      v8 = [(NEConfiguration *)a1 getConfigurationProtocol];
      v14 = [a1 appVPN];

      a1 = 0;
      if (!v14 || !v8)
      {
        goto LABEL_64;
      }

      v15 = [v8 type];
      switch(v15)
      {
        case 1:
          goto LABEL_17;
        case 5:
          v16 = [v7 pendingCertificates];
          if (v16)
          {
            v30 = [v8 identityReferenceInternal];
            v11 = v30 == 0;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_59;
        case 4:
LABEL_17:
          if ([v8 authenticationMethod] == 1)
          {
            v16 = [v8 identityReferenceInternal];
            v11 = v16 == 0;
LABEL_59:

            goto LABEL_60;
          }

          break;
      }

      v11 = 0;
LABEL_60:
      v32 = ne_log_obj();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_61;
      }

      v33 = [v7 pendingCertificates];
      LODWORD(v40) = 67109378;
      HIDWORD(v40) = v11;
      LOWORD(v41) = 2112;
      *(&v41 + 2) = v33;
      v34 = "NEConfiguration getPendingCertificateUUIDsAppVPN: pending %d, cert UUIDs %@";
LABEL_74:
      _os_log_debug_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_DEBUG, v34, &v40, 0x12u);

LABEL_61:
      if (v11)
      {
LABEL_62:
        a1 = [v7 pendingCertificates];
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v17 = [a1 alwaysOnVPN];

    if (!v17)
    {
      v28 = [a1 contentFilter];

      if (!v28)
      {
        v35 = [a1 dnsSettings];

        if (v35)
        {
          v36 = [(NEConfiguration *)a1 getPendingCertificateUUIDsDNSSettings:v5];
        }

        else
        {
          v39 = [a1 relay];

          if (!v39)
          {
            a1 = 0;
            goto LABEL_65;
          }

          v36 = [(NEConfiguration *)a1 getPendingCertificateUUIDsRelay:v5];
        }

        a1 = v36;
LABEL_65:

        goto LABEL_66;
      }

      v7 = v5;
      v29 = [a1 contentFilter];
      v8 = v29;
      if (v29)
      {
        a1 = [v29 provider];

        if (!a1)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

LABEL_63:
      a1 = 0;
      goto LABEL_64;
    }

    v7 = v5;
    v18 = [a1 alwaysOnVPN];
    v8 = v18;
    if (v18)
    {
      a1 = [v18 interfaceProtocolMapping];

      if (a1)
      {
        v19 = [v8 interfaceProtocolMapping];
        v20 = [v19 objectForKeyedSubscript:@"AlwaysOnVPNInterfaceCellular"];

        if (v20 && ([v7 pendingCertificates], (v21 = objc_claimAutoreleasedReturnValue()) != 0) && (v22 = v21, objc_msgSend(v20, "identityReferenceInternal"), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, !v23))
        {
          v25 = v20;
        }

        else
        {
          v24 = [v8 interfaceProtocolMapping];
          v25 = [v24 objectForKeyedSubscript:@"AlwaysOnVPNInterfaceWiFi"];

          if (!v25)
          {
            goto LABEL_28;
          }

          a1 = [v7 pendingCertificates];
          if (!a1)
          {
LABEL_47:

LABEL_64:
            goto LABEL_65;
          }

          v26 = [v25 identityReferenceInternal];

          if (v26)
          {
LABEL_28:
            a1 = 0;
            goto LABEL_47;
          }
        }

        a1 = [v7 pendingCertificates];
        goto LABEL_47;
      }
    }

    else
    {
      a1 = 0;
    }

    v25 = 0;
    goto LABEL_47;
  }

LABEL_66:

  v37 = *MEMORY[0x1E69E9840];

  return a1;
}

- (id)getPendingCertificateUUIDsDNSSettings:(void *)a1
{
  v3 = a2;
  v4 = [a1 dnsSettings];
  v5 = [v4 settings];

  if (v5)
  {
    v6 = [v3 pendingCertificates];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getPendingCertificateUUIDsRelay:(void *)a1
{
  v3 = a2;
  v4 = [a1 relay];

  if (v4)
  {
    v4 = [v3 pendingCertificates];
  }

  return v4;
}

- (id)getPendingCertificateUUIDs:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(NEConfiguration *)self getPendingCertificateUUIDsInternal:a3];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v3 allKeys];
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:v8];
        v10 = [v9 objectForKeyedSubscript:@"PayloadUUID"];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 objectForKeyedSubscript:@"PayloadUUID"];
          v13 = isa_nsstring(v12);

          if (v13)
          {
            v14 = [v9 objectForKeyedSubscript:@"PayloadUUID"];
            [v3 setObject:v14 forKeyedSubscript:v8];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)getCertificates
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(NEConfiguration *)self getConfigurationProtocol];
  v6 = v4;
  if (v4)
  {
    v7 = objc_getProperty(v4, v5, 96, 1);

    if (v7)
    {
      v9 = objc_getProperty(v6, v8, 96, 1);
      v10 = [v9 persistentReference];
      if (v10)
      {
        v11 = v10;
        v12 = [v9 accessGroup];

        if (v12)
        {
          v13 = [v9 persistentReference];
          [v3 addObject:v13];
        }
      }
    }
  }

  return v3;
}

- (BOOL)setCertificates:(id)a3 keyRefs:(id)a4 specs:(id)a5
{
  v70 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && (isa_nsdictionary(v8) & 1) != 0)
  {
    v11 = [(NEConfiguration *)self VPN];

    if (v11)
    {
      v12 = v8;
      v13 = v9;
      v14 = v10;
      if (!self)
      {
LABEL_59:

        goto LABEL_89;
      }

      v15 = [(NEConfiguration *)self getConfigurationProtocol];
      v16 = [(NEConfiguration *)self VPN];

      LOBYTE(self) = 0;
      if (!v16 || !v15)
      {
LABEL_58:

        goto LABEL_59;
      }

      v17 = [v15 type];
      v18 = 0;
      LODWORD(self) = 0;
      v64 = v13;
      if (v17 > 3)
      {
        if (v17 != 4)
        {
          v65 = 0;
          v19 = 0;
          if (v17 == 5)
          {
            goto LABEL_32;
          }

          goto LABEL_55;
        }
      }

      else if (v17 != 1)
      {
        v65 = 0;
        v19 = 0;
        if (v17 == 2)
        {
          v20 = [v12 objectForKeyedSubscript:@"_PayloadMachineCertificateRef"];
          v18 = v20;
          if (v20 && isa_nsdata(v20))
          {
            [v15 setMachineIdentityReference:v18];
          }

LABEL_32:
          v19 = [v12 objectForKeyedSubscript:@"_PayloadCertificateRef"];

          v65 = [v64 objectForKeyedSubscript:@"_PayloadCertificateRef"];
          v18 = [v14 objectForKeyedSubscript:@"_PayloadCertificateRef"];
          v29 = ne_log_obj();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v67 = v18;
            v68 = 1024;
            LODWORD(v69) = [v18 BOOLValue];
            _os_log_debug_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_DEBUG, "NEConfiguration setCertificatesVPN: isModernSystem %@ (%d)", buf, 0x12u);
          }

          if (v19 && isa_nsdata(v19) && v65 && isa_nsdata(v65))
          {
            v63 = [NEIdentityKeychainItem alloc];
            v62 = [v18 BOOLValue];
            v61 = v15[10];
            LODWORD(self) = 1;
            v60 = objc_getProperty(v15, v30, 88, 1);
            v31 = [(NEKeychainItem *)v63 initWithPersistentReference:v19 keyReference:v65 isModernSystem:v62 domain:v61 accessGroup:v60];
            objc_setProperty_atomic(v15, v32, v31, 96);

            goto LABEL_55;
          }

LABEL_51:
          v42 = v19;
          v19 = [v12 objectForKeyedSubscript:@"_PayloadCertificateRef"];

          if (v19 && isa_nsdata(v19))
          {
            [v15 setIdentityReferenceInternal:v19];
          }

          LODWORD(self) = 1;
        }

LABEL_55:
        v43 = ne_log_obj();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v67) = self;
          _os_log_debug_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_DEBUG, "NEConfiguration setCertificatesVPN: done (OK %d)", buf, 8u);
        }

        v13 = v64;
        goto LABEL_58;
      }

      v65 = 0;
      v19 = 0;
      goto LABEL_51;
    }

    v22 = [(NEConfiguration *)self appVPN];

    if (v22)
    {
      v12 = v8;
      if (self)
      {
        v23 = [(NEConfiguration *)self getConfigurationProtocol];
        v24 = [(NEConfiguration *)self appVPN];

        LOBYTE(self) = 0;
        if (v24 && v23)
        {
          v25 = [v23 type];
          v26 = 0;
          LODWORD(self) = 0;
          if (v25 <= 5 && ((1 << v25) & 0x32) != 0)
          {
            v27 = [v12 objectForKeyedSubscript:@"_PayloadCertificateRef"];
            v26 = v27;
            if (v27 && isa_nsdata(v27))
            {
              [v23 setIdentityReferenceInternal:v26];
            }

            LODWORD(self) = 1;
          }

          v28 = ne_log_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            LODWORD(v67) = self;
            _os_log_debug_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_DEBUG, "NEConfiguration setCertificatesAppVPN: done (OK %d)", buf, 8u);
          }
        }

        goto LABEL_88;
      }

LABEL_89:

      goto LABEL_90;
    }

    v33 = [(NEConfiguration *)self alwaysOnVPN];

    if (v33)
    {
      v12 = v8;
      if (!self)
      {
        goto LABEL_89;
      }

      v23 = [(NEConfiguration *)self alwaysOnVPN];
      v34 = ne_log_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v53 = [v23 interfaceProtocolMapping];
        *buf = 138412546;
        v67 = v12;
        v68 = 2112;
        v69 = v53;
        _os_log_debug_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_DEBUG, "NEConfiguration setCertificatesAOVpn: certs %@, mapping %@", buf, 0x16u);
      }

      if (!v23)
      {
        goto LABEL_60;
      }

      v35 = [v23 interfaceProtocolMapping];
      if (!v35 || (v36 = v35, [v23 interfaceProtocolMapping], v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "count"), v37, v36, !v38))
      {
LABEL_60:
        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, "NEConfiguration setCertificatesAOVpn: alwaysOnVPN Tunnel Configuration missing", buf, 2u);
        }

        goto LABEL_63;
      }

      v39 = [v23 interfaceProtocolMapping];
      v40 = [v39 objectForKeyedSubscript:@"AlwaysOnVPNInterfaceCellular"];

      if (v40)
      {
        if ([v40 authenticationMethod] == 1)
        {
          v41 = [v12 objectForKeyedSubscript:@"_PayloadCertificateRefForCellular"];
          if (isa_nsdata(v41))
          {
            [v40 setIdentityReferenceInternal:v41];
          }

          else if (([v40 useExtendedAuthentication] & 1) == 0)
          {
            v54 = ne_log_obj();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v58 = "invalid";
              if (!v41)
              {
                v58 = "missing";
              }

              *buf = 136315138;
              v67 = v58;
              _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, "NEConfiguration setCertificatesAOVpn: tunnel cert %s for Cellular tunnel", buf, 0xCu);
            }

            goto LABEL_63;
          }

LABEL_73:
          v49 = [v23 interfaceProtocolMapping];
          self = [v49 objectForKeyedSubscript:@"AlwaysOnVPNInterfaceWiFi"];

          if (!self)
          {
            v51 = ne_log_obj();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_INFO, "NEConfiguration setCertificatesAOVpn: no WiFi tunnel config", buf, 2u);
            }

            goto LABEL_87;
          }

          if ([(NEConfiguration *)self authenticationMethod]!= 1)
          {
LABEL_87:
            buf[0] = 1;

            LOBYTE(self) = buf[0];
            goto LABEL_88;
          }

          v50 = [v12 objectForKeyedSubscript:@"_PayloadCertificateRefForWifi"];

          if (isa_nsdata(v50))
          {
            [(NEConfiguration *)self setIdentityReferenceInternal:v50];
LABEL_86:
            v41 = v50;
            goto LABEL_87;
          }

          if (([(NEConfiguration *)self useExtendedAuthentication]& 1) != 0)
          {
            goto LABEL_86;
          }

          v57 = ne_log_obj();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v59 = "invalid";
            if (!v50)
            {
              v59 = "missing";
            }

            *buf = 136315138;
            v67 = v59;
            _os_log_error_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_ERROR, "NEConfiguration setCertificatesAOVpn: tunnel cert %s for WiFi tunnel", buf, 0xCu);
          }

LABEL_63:
          LOBYTE(self) = 0;
LABEL_88:

          goto LABEL_89;
        }
      }

      else
      {
        v48 = ne_log_obj();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1BA83C000, v48, OS_LOG_TYPE_INFO, "NEConfiguration setCertificatesAOVpn: no cellular tunnel configs", buf, 2u);
        }
      }

      v41 = 0;
      goto LABEL_73;
    }

    v45 = [(NEConfiguration *)self contentFilter];

    if (v45)
    {
      v12 = [v8 objectForKeyedSubscript:@"_PayloadCertificateRef"];
      v46 = [(NEConfiguration *)self setCertificateContentFilter:v12];
LABEL_68:
      LOBYTE(self) = v46;
      goto LABEL_89;
    }

    v47 = [(NEConfiguration *)self dnsSettings];

    if (v47)
    {
      v12 = [v8 objectForKeyedSubscript:@"_PayloadCertificateRef"];
      v46 = [(NEConfiguration *)self setCertificateDNSSettings:v12];
      goto LABEL_68;
    }

    v52 = [(NEConfiguration *)self relay];

    if (v52)
    {
      LOBYTE(self) = [(NEConfiguration *)self setCertificatesRelay:v8 keyRefs:v9 specs:v10];
      goto LABEL_90;
    }
  }

  else
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v67 = v8;
      _os_log_debug_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_DEBUG, "NEConfiguration setCertificates: malformed certificate references %@", buf, 0xCu);
    }
  }

  LOBYTE(self) = 0;
LABEL_90:

  v55 = *MEMORY[0x1E69E9840];
  return self;
}

- (uint64_t)setCertificateContentFilter:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 contentFilter];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 provider];

      if (v6)
      {
        if (isa_nsdata(v3))
        {
          v7 = [v5 provider];
          [v7 setIdentityReference:v3];
        }

        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *v10 = 0;
          _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "NEConfiguration setCertificateContentFilter: done", v10, 2u);
        }

        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)setCertificateDNSSettings:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 dnsSettings];
    v5 = [v4 settings];

    if (v5 && isa_nsdata(v3) && ([v5 dnsProtocol] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [v5 setIdentityReference:v3];
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v9 = 0;
        _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "NEConfiguration setCertificateDNSSettings: done", v9, 2u);
      }

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)setCertificatesRelay:(void *)a3 keyRefs:(void *)a4 specs:
{
  v7 = a2;
  v33 = a3;
  v32 = a4;
  if (!a1)
  {
    goto LABEL_27;
  }

  v8 = [a1 relay];
  if (!v8)
  {
    goto LABEL_28;
  }

  v9 = [a1 relay];
  v10 = [v9 relays];
  v11 = [v10 count];

  if (!v11)
  {
LABEL_27:
    v8 = 0;
    goto LABEL_28;
  }

  v12 = [a1 relay];
  v13 = [v12 relays];
  v14 = [v13 count];

  v31 = v14;
  if (v14)
  {
    v15 = 0;
    v30 = a1;
    do
    {
      v16 = [a1 relay];
      v17 = [v16 relays];
      v18 = [v17 objectAtIndexedSubscript:v15];

      if (!v18)
      {
        break;
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", @"_PayloadCertificateRef", v15];
      v20 = [v7 objectForKeyedSubscript:v19];
      v21 = [v33 objectForKeyedSubscript:v19];
      v22 = [v32 objectForKeyedSubscript:v19];
      v36 = v21;
      v37 = v19;
      v35 = v22;
      if (v21 && (v23 = v22, isa_nsdata(v21)))
      {
        if (!v23)
        {
          v28 = ne_log_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "NEConfiguration setCertificatesRelay: Key not in system keychain", buf, 2u);
          }

          goto LABEL_27;
        }

        [v18 setIdentityWithKey:v20 keyRef:v21];
      }

      else if (isa_nsdata(v20))
      {
        [v18 setIdentityReference:v20];
      }

      v34 = v18;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u-%u", @"_PayloadCertificateRef", v15, v24];
        v27 = [v7 objectForKeyedSubscript:v26];
        if (!isa_nsdata(v27))
        {
          break;
        }

        if (!v25)
        {
          v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v25 addObject:v27];

        v24 = (v24 + 1);
        if (v24 == 4)
        {
          goto LABEL_20;
        }
      }

LABEL_20:
      if (v25)
      {
        [v34 setCertificateReferences:v25];
      }

      ++v15;
      a1 = v30;
    }

    while (v15 != v31);
  }

  v8 = 1;
LABEL_28:

  return v8;
}

- (uint64_t)configurePluginWithPayload:(void *)a3 pluginType:(void *)a4 payloadType:(void *)a5 vpnType:
{
  v114 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v9 payloadAtom];
  v14 = [v13 objectForKeyedSubscript:@"VPN"];
  if (!v14)
  {
    if ([v12 isEqualToString:@"TransparentProxy"])
    {
      v14 = [v13 objectForKeyedSubscript:@"TransparentProxy"];
    }

    else
    {
      v14 = 0;
    }
  }

  v15 = ne_log_large_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v111 = v11;
    _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "configurePluginWithPayload: start with type %@", buf, 0xCu);
  }

  if (v14)
  {
    if (!v10)
    {
      v34 = ne_log_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "configurePluginWithPayload: pluginType missing", buf, 2u);
      }

      v10 = 0;
      goto LABEL_32;
    }

    if ([(__CFString *)v11 isEqualToString:@"com.apple.vpn.managed"])
    {
      v108 = v12;
      v16 = [v9 pluginUpgradeInfo];

      if (v16)
      {
        v17 = [v9 pluginUpgradeInfo];
        v18 = [v17 objectForKeyedSubscript:@"PluginType"];

        v10 = v18;
      }

      v19 = [a1 VPN];
      v20 = [v19 protocol];

      if (!v20)
      {
        v21 = off_1E7F04E28;
        if (([v108 isEqualToString:@"TransparentProxy"] & 1) == 0)
        {
          v22 = [a1 VPN];
          v23 = [v22 tunnelType];

          if (v23 != 2)
          {
            v21 = off_1E7F04E40;
          }
        }

        v24 = [objc_alloc(*v21) initWithPluginType:v10];
        v25 = [a1 VPN];
        [v25 setProtocol:v24];

        v26 = [a1 VPN];
        v27 = [v26 protocol];

        if (!v27)
        {
          v94 = ne_log_obj();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v111 = @"com.apple.vpn.managed";
            _os_log_error_impl(&dword_1BA83C000, v94, OS_LOG_TYPE_ERROR, "configurePluginWithPayload: failed to allocate for %@ protocol", buf, 0xCu);
          }

          v109 = 0;
          goto LABEL_105;
        }
      }

      v28 = [a1 VPN];
      v29 = [v28 protocol];

      [v29 setServerAddress:&stru_1F3880810];
LABEL_39:
      if (![NETunnelProviderProtocol isLegacyPluginType:v10])
      {
        [a1 setApplication:v10];
        [a1 setApplicationIdentifier:v10];
        if (v29)
        {
          objc_setProperty_atomic(v29, v52, @"com.apple.managed.vpn.shared", 88);
        }
      }

      v53 = [v14 objectForKeyedSubscript:@"RemoteAddress"];
      [v29 setServerAddress:v53];

      v54 = [v14 objectForKeyedSubscript:@"AuthName"];
      [v29 setUsername:v54];

      [v29 setPasswordReference:0];
      [v29 setPasswordKeychainItem:0];
      v55 = [v14 objectForKeyedSubscript:@"AuthPassword"];
      [(NEConfiguration *)a1 setConfigurationVPNPassword:v55];

      [v29 setIdentityReferenceInternal:0];
      v56 = [v13 objectForKeyedSubscript:@"PayloadCertificateUUID"];

      if (v56)
      {
        v57 = v13;
      }

      else
      {
        v58 = [v14 objectForKeyedSubscript:@"PayloadCertificateUUID"];

        if (!v58)
        {
          v89 = [v13 objectForKeyedSubscript:@"LocalCertificate"];

          if (v89)
          {
            v90 = v13;
          }

          else
          {
            v96 = [v14 objectForKeyedSubscript:@"LocalCertificate"];

            if (!v96)
            {
              goto LABEL_50;
            }

            v90 = v14;
          }

          v60 = [v90 objectForKeyedSubscript:@"LocalCertificate"];
          v62 = setLocalCertificate(v60);
          [v29 setIdentityReferenceInternal:v62];
LABEL_49:

LABEL_50:
          v63 = [v14 objectForKeyedSubscript:@"AuthenticationMethod"];
          v64 = [v14 objectForKeyedSubscript:@"PayloadCertificateUUID"];
          if (v64 || ([v13 objectForKeyedSubscript:@"PayloadCertificateUUID"], (v64 = objc_claimAutoreleasedReturnValue()) != 0))
          {
          }

          else if (([v63 isEqualToString:@"Certificate"] & 1) == 0)
          {
            if (([v63 isEqualToString:@"Password"] & 1) == 0)
            {
              v91 = [v29 username];
              if (!v91 || (v92 = v91, [v14 objectForKeyedSubscript:@"AuthPassword"], v93 = objc_claimAutoreleasedReturnValue(), v93, v92, !v93))
              {
                v100 = ne_log_obj();
                if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                {
                  v103 = objc_opt_class();
                  *buf = 138412546;
                  v111 = v103;
                  v112 = 2112;
                  v113 = v63;
                  v104 = v103;
                  _os_log_error_impl(&dword_1BA83C000, v100, OS_LOG_TYPE_ERROR, "%@ configurePluginWithPayload: unsupported authen type %@.", buf, 0x16u);
                }

                goto LABEL_103;
              }
            }

            v65 = 0;
LABEL_54:
            [v29 setAuthenticationMethod:v65];
            v66 = [v13 objectForKeyedSubscript:@"VendorConfig"];

            if (v66)
            {
              v67 = [v13 objectForKeyedSubscript:@"VendorConfig"];
              v68 = [v67 copy];
              [v29 setProviderConfiguration:v68];
            }

            v69 = [v14 objectForKeyedSubscript:@"AuthPasswordPluginType"];
            [v29 setAuthenticationPluginType:v69];

            if ([(NEConfiguration *)a1 ingestDisconnectOptions:v14])
            {
              v107 = v63;
              v70 = [v14 objectForKeyedSubscript:@"ProviderBundleIdentifier"];
              [v29 setProviderBundleIdentifier:v70];

              v71 = [v14 objectForKeyedSubscript:@"ExtensibleSSOProvider"];
              [v29 setExtensibleSSOProvider:v71];

              v72 = [v14 objectForKeyedSubscript:@"IncludeAllNetworks"];
              if (isa_nsnumber(v72))
              {
                [v29 setIncludeAllNetworks:{objc_msgSend(v72, "BOOLValue")}];
              }

              v73 = [v14 objectForKeyedSubscript:@"ExcludeLocalNetworks"];

              if (isa_nsnumber(v73))
              {
                [v29 setExcludeLocalNetworks:{objc_msgSend(v73, "BOOLValue")}];
              }

              v74 = [v14 objectForKeyedSubscript:@"ExcludeCellularServices"];

              if (isa_nsnumber(v74))
              {
                [v29 setExcludeCellularServices:{objc_msgSend(v74, "BOOLValue")}];
              }

              v75 = [v14 objectForKeyedSubscript:@"ExcludeAPNs"];

              if (isa_nsnumber(v75))
              {
                [v29 setExcludeAPNs:{objc_msgSend(v75, "BOOLValue")}];
              }

              v76 = [v14 objectForKeyedSubscript:@"ExcludeDeviceCommunication"];

              if (isa_nsnumber(v76))
              {
                [v29 setExcludeDeviceCommunication:{objc_msgSend(v76, "BOOLValue")}];
              }

              v77 = [v14 objectForKeyedSubscript:@"EnforceRoutes"];

              if (isa_nsnumber(v77))
              {
                [v29 setEnforceRoutes:{objc_msgSend(v77, "BOOLValue")}];
              }

              v78 = [v9 payloadAtom];
              v79 = [v78 objectForKeyedSubscript:@"CellularSliceUUID"];

              if (v79)
              {
                v80 = [v9 payloadAtom];
                v81 = [v80 objectForKeyedSubscript:@"CellularSliceUUID"];
                [v29 setSliceUUID:v81];
              }

              v82 = [a1 VPN];
              v83 = [v82 protocol];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v85 = [v14 objectForKeyedSubscript:@"Order"];
                if (isa_nsnumber(v85))
                {
                  v86 = [a1 VPN];
                  v87 = [v86 protocol];

                  if ([(__CFString *)v85 integerValue]< 0 || [(__CFString *)v85 unsignedIntegerValue]>> 31)
                  {
                    v88 = ne_log_obj();
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v111 = v85;
                      _os_log_error_impl(&dword_1BA83C000, v88, OS_LOG_TYPE_ERROR, "Transparent proxy order is invalid: %@", buf, 0xCu);
                    }

                    v109 = 0;
LABEL_99:

LABEL_104:
LABEL_105:
                    v12 = v108;
                    goto LABEL_106;
                  }

                  [v87 setOrder:{-[__CFString unsignedIntegerValue](v85, "unsignedIntegerValue")}];
                }
              }

              v97 = ne_log_obj();
              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
              {
                v98 = [v29 serverAddress];
                v99 = [v29 providerConfiguration];
                *buf = 138412546;
                v111 = v98;
                v112 = 2112;
                v113 = v99;
                _os_log_debug_impl(&dword_1BA83C000, v97, OS_LOG_TYPE_DEBUG, "configurePluginWithPayload: done, serverAddress %@, providerConfiguration %@", buf, 0x16u);
              }

              v109 = 1;
              goto LABEL_99;
            }

LABEL_103:
            v109 = 0;

            goto LABEL_104;
          }

          v65 = 1;
          goto LABEL_54;
        }

        v57 = v14;
      }

      v60 = [v57 objectForKeyedSubscript:@"PayloadCertificateUUID"];
      if (v29)
      {
        Property = objc_getProperty(v29, v59, 88, 1);
      }

      else
      {
        Property = 0;
      }

      v62 = Property;
      [v9 addCertificatePending:v60 certificateTag:@"_PayloadCertificateRef" accessGroup:v62];
      goto LABEL_49;
    }

    if ([(__CFString *)v11 isEqualToString:@"com.apple.vpn.managed.applayer"])
    {
      v108 = v12;
      v35 = [v9 pluginUpgradeInfo];

      if (!v35)
      {
        v37 = v10;
        goto LABEL_36;
      }

      v36 = [v9 pluginUpgradeInfo];
      v37 = [v36 objectForKeyedSubscript:@"PluginType"];

      v38 = [v9 pluginUpgradeInfo];
      v39 = [v38 objectForKeyedSubscript:@"HasAppProxy"];
      if (isa_nsnumber(v39))
      {
        v40 = [v9 pluginUpgradeInfo];
        [v40 objectForKeyedSubscript:@"HasAppProxy"];
        v41 = v11;
        v43 = v42 = v37;
        v106 = [v43 BOOLValue];

        v37 = v42;
        v11 = v41;

        if (v106)
        {
LABEL_36:
          v45 = [a1 appVPN];
          v46 = [v45 protocol];

          if (!v46)
          {
            v47 = [[NETunnelProviderProtocol alloc] initWithPluginType:v37];
            v48 = [a1 appVPN];
            [v48 setProtocol:v47];

            v49 = [a1 appVPN];
            v50 = [v49 protocol];

            if (!v50)
            {
              v95 = ne_log_obj();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v111 = @"com.apple.vpn.managed.applayer";
                _os_log_error_impl(&dword_1BA83C000, v95, OS_LOG_TYPE_ERROR, "configurePluginWithPayload: failed to allocate for %@ protocol", buf, 0xCu);
              }

              v109 = 0;
              v10 = v37;
              goto LABEL_105;
            }
          }

          v51 = [a1 appVPN];
          v29 = [v51 protocol];

          v10 = v37;
          goto LABEL_39;
        }
      }

      else
      {
      }

      v44 = [a1 appVPN];
      [v44 setTunnelType:1];

      goto LABEL_36;
    }

    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v111 = v11;
      v31 = "configurePluginWithPayload: unsupported payload type %@";
      v32 = v30;
      v33 = 12;
      goto LABEL_30;
    }
  }

  else
  {
    v30 = ne_log_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v31 = "configurePluginWithPayload: plugin info missing";
      v32 = v30;
      v33 = 2;
LABEL_30:
      _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
    }
  }

LABEL_32:
  v109 = 0;
LABEL_106:

  result = v109;
  v102 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)ingestDisconnectOptions:(void *)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(NEConfiguration *)a1 getConfigurationProtocol];
  v5 = ne_log_large_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v17 = 138412290;
    *&v17[4] = objc_opt_class();
    v14 = *&v17[4];
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@ ingestDisconnectOptions start", v17, 0xCu);
  }

  if (v4)
  {
    v6 = [v3 objectForKeyedSubscript:@"DisconnectOnIdle"];
    if (isa_nsnumber(v6))
    {
      [v4 setDisconnectOnIdle:{objc_msgSend(v6, "BOOLValue")}];
    }

    v7 = [v3 objectForKeyedSubscript:{@"DisconnectOnIdleTimer", *v17}];

    if (isa_nsnumber(v7))
    {
      [v4 setDisconnectOnIdleTimeout:{objc_msgSend(v7, "intValue")}];
    }

    v8 = [v3 objectForKeyedSubscript:@"DisconnectOnSleep"];

    if (isa_nsnumber(v8))
    {
      [v4 setDisconnectOnSleep:{objc_msgSend(v8, "BOOLValue")}];
    }

    v9 = [v3 objectForKeyedSubscript:@"DisconnectOnWake"];

    if (isa_nsnumber(v9))
    {
      [v4 setDisconnectOnWake:{objc_msgSend(v9, "BOOLValue")}];
    }

    v10 = [v3 objectForKeyedSubscript:@"DisconnectOnWakeTimer"];

    if (isa_nsnumber(v10))
    {
      [v4 setDisconnectOnWakeTimeout:{objc_msgSend(v10, "intValue")}];
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      *v17 = 138412290;
      *&v17[4] = v15;
      v16 = v15;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "%@ ingestDisconnectOptions failed: protocol not allocated", v17, 0xCu);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v4 != 0;
}

- (uint64_t)ingestDNSOptions:(void *)a1
{
  v3 = a2;
  v4 = [(NEConfiguration *)a1 getConfigurationProtocol];
  v5 = [v3 objectForKeyedSubscript:@"DNS"];

  if (v5)
  {
    if (!isa_nsdictionary(v5))
    {
      v7 = 0;
      goto LABEL_7;
    }

    if ([v5 count])
    {
      v6 = [[NEDNSSettings alloc] initFromLegacyDictionary:v5];
      [v4 setDNSSettings:v6];
    }
  }

  v7 = 1;
LABEL_7:

  return v7;
}

- (uint64_t)configurePPPWithVPNOptions:(void *)a3 payloadBase:
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"VPN"];
  v7 = [(NEConfiguration *)a1 getConfigurationProtocol];
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v22) = 0;
    _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "configurePPPWithVPNOptions", &v22, 2u);
  }

  v9 = [a1 appVPN];

  if (!v9)
  {
    v12 = [a1 VPN];
    if (v12)
    {
      v13 = v7 == 0;
    }

    else
    {
      v13 = 1;
    }

    v11 = !v13;

    if (v11)
    {
      if (v6)
      {
        if (isa_nsdictionary(v6))
        {
          v14 = [v6 objectForKeyedSubscript:@"AuthenticationMethod"];
          v10 = [v6 objectForKeyedSubscript:@"AuthPassword"];

          v15 = [v7 identityReferenceInternal];

          if (v15)
          {
            goto LABEL_5;
          }

          v16 = [v6 objectForKeyedSubscript:@"LocalCertificate"];

          if (v16)
          {
            v17 = [v6 objectForKeyedSubscript:@"LocalCertificate"];
            v18 = setLocalCertificate(v17);
            [v7 setIdentityReferenceInternal:v18];
          }

          else
          {
            v21 = [v6 objectForKeyedSubscript:@"PayloadCertificateUUID"];

            if (!v21)
            {
              goto LABEL_5;
            }

            v17 = [v6 objectForKeyedSubscript:@"PayloadCertificateUUID"];
            [v5 addCertificatePending:v17 certificateTag:@"_PayloadCertificateRef"];
          }

LABEL_25:

          goto LABEL_26;
        }

        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v22 = 138412290;
          v23 = @"VPN";
          _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_INFO, "configurePPPWithVPNOptions: invalid %@ dictionary", &v22, 0xCu);
        }
      }

      else
      {
        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v22 = 138412290;
          v23 = @"VPN";
          _os_log_debug_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEBUG, "configurePPPWithVPNOptions: nothing to do, empty %@ dictionary", &v22, 0xCu);
        }
      }
    }

    else
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v22) = 0;
        _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "configurePPPWithVPNOptions: L2TP not initialized", &v22, 2u);
      }
    }

    v10 = 0;
    goto LABEL_25;
  }

  v10 = 0;
LABEL_5:
  v11 = 1;
LABEL_26:

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

- (uint64_t)ingestProxyOptions:(void *)a1
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(NEConfiguration *)a1 getConfigurationProtocol];
  if (!v4)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = objc_opt_class();
      v8 = v19;
      _os_log_error_impl(&dword_1BA83C000, &v5->super, OS_LOG_TYPE_ERROR, "%@ ingestProxyOptions: missing protocol info", &v18, 0xCu);
    }

    goto LABEL_14;
  }

  v5 = [v3 objectForKeyedSubscript:@"Proxies"];
  v6 = ne_log_large_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412290;
    v19 = objc_opt_class();
    v13 = v19;
    _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@ ingestProxyOptions", &v18, 0xCu);
  }

  if (!v5)
  {
    v5 = objc_alloc_init(NEProxySettings);
    [v4 setProxySettings:v5];
    goto LABEL_10;
  }

  if (!isa_nsdictionary(v5))
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = objc_opt_class();
      v18 = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v16;
      v17 = v16;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "%@ ingestProxyOptions: unsupported proxy data type %@", &v18, 0x16u);
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v7 = [[NEProxySettings alloc] initFromLegacyDictionary:v5];
  [v4 setProxySettings:v7];

LABEL_10:
  v9 = 1;
LABEL_15:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (uint64_t)configureIKE:(void *)a3 vpnType:(void *)a4 payloadBase:(void *)a5 vpn:
{
  v171 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = ne_log_large_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v18 = objc_opt_class();
    *buf = 138412290;
    v167 = v18;
    _os_log_debug_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEBUG, "%@ configureIKE", buf, 0xCu);
  }

  if (!v12)
  {
    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "configureIKE: protocol not initialized", buf, 2u);
    }

    goto LABEL_199;
  }

  v14 = [v12 protocol];

  if (!v14)
  {
    if ([v10 isEqualToString:@"IPSec"])
    {
      v15 = NEVPNProtocolIPSec;
    }

    else
    {
      if (![v10 isEqualToString:@"L2TP"])
      {
        v17 = [v11 payloadAtom];
        v19 = [v17 objectForKeyedSubscript:@"VPNSubType"];
        v20 = isa_nsstring(v19);

        if (v20)
        {
          v21 = [NEVPNProtocolIKEv2 alloc];
          v22 = [v17 objectForKeyedSubscript:@"VPNSubType"];
          v23 = [(NEVPNProtocolIKEv2 *)v21 initWithPluginType:v22];
          [v12 setProtocol:v23];
        }

        else
        {
          v22 = objc_alloc_init(NEVPNProtocolIKEv2);
          [v12 setProtocol:v22];
        }

        goto LABEL_16;
      }

      v15 = NEVPNProtocolL2TP;
    }

    v17 = objc_alloc_init(v15);
    [v12 setProtocol:v17];
LABEL_16:
  }

  v156 = a1;
  v24 = [v12 protocol];
  if (!v24)
  {
    v16 = ne_log_obj();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_199;
    }

    v27 = objc_opt_class();
    *buf = 138412290;
    v167 = v27;
    v28 = v27;
    _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "%@ configureIKE failed to locate protocol for ipsec", buf, 0xCu);
    goto LABEL_111;
  }

  v16 = v24;
  v25 = [v12 protocol];
  v26 = [v25 type];

  if (v26 == 5)
  {
    v160 = [v12 protocol];
    v158 = 0;
    goto LABEL_26;
  }

  if (v26 == 2)
  {
    v158 = [v12 protocol];
    v160 = 0;
LABEL_26:
    v159 = 0;
    goto LABEL_27;
  }

  if (v26 != 1)
  {
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v141 = objc_opt_class();
      *buf = 138412290;
      v167 = v141;
      v142 = v141;
      _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "%@ configureIKE failed to find protocol object for ipsec", buf, 0xCu);
    }

LABEL_111:

    goto LABEL_199;
  }

  [v12 protocol];
  v159 = v158 = 0;
  v160 = 0;
LABEL_27:
  v29 = [v9 objectForKeyedSubscript:@"RemoteAddress"];
  if (isa_nsstring(v29))
  {
    v30 = [v12 protocol];
    [v30 setServerAddress:v29];
  }

  v31 = [v9 objectForKeyedSubscript:@"EnforceRoutes"];

  if (isa_nsnumber(v31))
  {
    v32 = [v31 BOOLValue];
    v33 = [v12 protocol];
    [v33 setEnforceRoutes:v32];
  }

  v34 = [v9 objectForKeyedSubscript:@"ExcludeLocalNetworks"];

  if (isa_nsnumber(v34))
  {
    v35 = [v34 BOOLValue];
    v36 = [v12 protocol];
    [v36 setExcludeLocalNetworks:v35];
  }

  v37 = [v9 objectForKeyedSubscript:@"ExcludeCellularServices"];

  if (isa_nsnumber(v37))
  {
    v38 = [v37 BOOLValue];
    v39 = [v12 protocol];
    [v39 setExcludeCellularServices:v38];
  }

  self = v16;
  v40 = [v9 objectForKeyedSubscript:@"ExcludeAPNs"];

  if (isa_nsnumber(v40))
  {
    v41 = [v40 BOOLValue];
    v42 = [v12 protocol];
    [v42 setExcludeAPNs:v41];
  }

  v157 = v12;
  v43 = [v9 objectForKeyedSubscript:@"ExcludeDeviceCommunication"];

  if (isa_nsnumber(v43))
  {
    v44 = [v43 BOOLValue];
    v45 = [v12 protocol];
    [v45 setExcludeDeviceCommunication:v44];
  }

  v46 = [v11 payloadAtom];
  v47 = [v46 objectForKeyedSubscript:@"CellularSliceUUID"];

  if (v47)
  {
    v48 = [v11 payloadAtom];
    v49 = [v48 objectForKeyedSubscript:@"CellularSliceUUID"];
    v50 = [v12 protocol];
    [v50 setSliceUUID:v49];
  }

  if (!v158)
  {
    v51 = [v9 objectForKeyedSubscript:@"PasswordReference"];

    if (isa_nsdata(v51))
    {
      v52 = [v12 protocol];
      [v52 setPasswordReference:v51];
    }

    v53 = [v9 objectForKeyedSubscript:@"SharedSecretReference"];

    if (isa_nsdata(v53))
    {
      [self setSharedSecretReference:v53];
    }

    v54 = [v9 objectForKeyedSubscript:@"XAuthPasswordEncryption"];

    if (isa_nsstring(v54) && [v54 isEqualToString:@"Prompt"])
    {
      [self setExtendedAuthPasswordPrompt:1];
    }

    v43 = [v9 objectForKeyedSubscript:@"IdentityDataPasswordKeyStr"];

    if (v43)
    {
      v55 = [NEKeychainItem alloc];
      isa = self[10].isa;
      v58 = objc_getProperty(self, v57, 88, 1);
      v59 = [(NEKeychainItem *)v55 initWithPassword:v43 domain:isa accessGroup:v58];
      [self setIdentityDataPasswordKeychainItem:v59];
    }
  }

  if (!v159)
  {
    if (v160)
    {
      v80 = [v9 objectForKeyedSubscript:@"AuthName"];

      if (v80 && isa_nsstring(v80))
      {
        [v160 setUsername:v80];
      }

      v81 = [v160 pluginType];

      if (v81)
      {
        v82 = [v160 pluginType];
        [a1 setApplication:v82];
      }

      goto LABEL_113;
    }

    goto LABEL_122;
  }

  v60 = [v9 objectForKeyedSubscript:@"XAuthName"];

  if (v60 && isa_nsstring(v60))
  {
    [v159 setUsername:v60];
  }

  v61 = [v9 objectForKeyedSubscript:@"ExchangeMode"];

  if (v61 && isa_nsarray(v61))
  {
    [v159 setLegacyExchangeMode:v61];
  }

  v62 = [v9 objectForKeyedSubscript:@"Proposals"];

  if (!v62 || !isa_nsarray(v62))
  {
    goto LABEL_100;
  }

  v63 = v62;
  if (![v63 count])
  {
    goto LABEL_99;
  }

  v151 = v62;
  v152 = v11;
  v153 = v10;
  v154 = v9;
  v161 = [MEMORY[0x1E695DF70] array];
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v150 = v63;
  v64 = v63;
  v65 = [v64 countByEnumeratingWithState:&v162 objects:v170 count:16];
  if (!v65)
  {
    goto LABEL_96;
  }

  v66 = v65;
  v67 = *v163;
  do
  {
    v68 = 0;
    do
    {
      if (*v163 != v67)
      {
        objc_enumerationMutation(v64);
      }

      v69 = *(*(&v162 + 1) + 8 * v68);
      if (isa_nsdictionary(v69))
      {
        v70 = objc_alloc_init(NEVPNIKEv1ProposalParameters);
        v71 = [v69 objectForKeyedSubscript:@"EncryptionAlgorithm"];
        v72 = [v69 objectForKeyedSubscript:@"HashAlgorithm"];
        v73 = [v69 objectForKeyedSubscript:@"DHGroup"];
        v74 = [v69 objectForKeyedSubscript:@"Lifetime"];
        if (!isa_nsstring(v71))
        {
          goto LABEL_77;
        }

        if ([v71 isEqualToString:@"DES"])
        {
          v75 = 1;
          goto LABEL_76;
        }

        if ([v71 isEqualToString:@"3DES"])
        {
          v75 = 2;
          goto LABEL_76;
        }

        if ([v71 isEqualToString:@"AES"])
        {
          v75 = 3;
          goto LABEL_76;
        }

        if ([v71 isEqualToString:@"AES256"])
        {
          v75 = 4;
LABEL_76:
          [(NEVPNIKEv1ProposalParameters *)v70 setEncryptionAlgorithm:v75, v150];
          v76 = 1;
        }

        else
        {
LABEL_77:
          v76 = 0;
        }

        if (isa_nsstring(v72))
        {
          if ([v72 isEqualToString:@"SHA1"])
          {
            v77 = 1;
            goto LABEL_83;
          }

          if ([v72 isEqualToString:@"MD5"])
          {
            v77 = 2;
LABEL_83:
            [(NEVPNIKEv1ProposalParameters *)v70 setIntegrityAlgorithm:v77, v150];
            v76 = 1;
          }
        }

        if (isa_nsnumber(v73))
        {
          -[NEVPNIKEv1ProposalParameters setDiffieHellmanGroup:](v70, "setDiffieHellmanGroup:", [v73 intValue]);
          if (!isa_nsnumber(v74))
          {
LABEL_89:
            [v161 addObject:{v70, v150}];
            goto LABEL_90;
          }
        }

        else if ((isa_nsnumber(v74) & 1) == 0)
        {
          if (v76)
          {
            goto LABEL_89;
          }

LABEL_90:

          goto LABEL_91;
        }

        -[NEVPNIKEv1ProposalParameters setLifetimeSeconds:](v70, "setLifetimeSeconds:", [v74 intValue]);
        goto LABEL_89;
      }

LABEL_91:
      ++v68;
    }

    while (v66 != v68);
    v78 = [v64 countByEnumeratingWithState:&v162 objects:v170 count:16];
    v66 = v78;
  }

  while (v78);
LABEL_96:

  if ([v161 count])
  {
    [v159 setLegacyProposals:v161];
  }

  v10 = v153;
  v9 = v154;
  v62 = v151;
  v11 = v152;
  v63 = v150;
LABEL_99:

LABEL_100:
  v43 = [v9 objectForKeyedSubscript:{@"XAuthPassword", v150}];

  if (v43)
  {
    if (isa_nsdata(v43))
    {
      v79 = v159;
      goto LABEL_117;
    }

    if (isa_nsstring(v43))
    {
      v79 = v159;
      goto LABEL_120;
    }

    v106 = ne_log_obj();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      v107 = objc_opt_class();
      v108 = v107;
      v109 = objc_opt_class();
      *buf = 138412546;
      v167 = v107;
      v168 = 2112;
      v169 = v109;
      v110 = v109;
      v111 = "%@ configureIKE: unsupported Xauth password data type %@";
      goto LABEL_202;
    }

    goto LABEL_147;
  }

  v80 = 0;
  if (!v160)
  {
    goto LABEL_122;
  }

LABEL_113:
  v43 = [v9 objectForKeyedSubscript:@"AuthPassword"];

  if (!v43)
  {
    v43 = [v9 objectForKeyedSubscript:@"XAuthPassword"];
    if (!v43)
    {
      goto LABEL_122;
    }
  }

  if ((isa_nsdata(v43) & 1) == 0)
  {
    if (isa_nsstring(v43))
    {
      v85 = [NEKeychainItem alloc];
      v79 = v160;
      goto LABEL_121;
    }

    v106 = ne_log_obj();
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      v147 = objc_opt_class();
      v108 = v147;
      v148 = objc_opt_class();
      *buf = 138412546;
      v167 = v147;
      v168 = 2112;
      v169 = v148;
      v110 = v148;
      v111 = "%@ configureIKE: unsupported password data type %@";
LABEL_202:
      _os_log_error_impl(&dword_1BA83C000, v106, OS_LOG_TYPE_ERROR, v111, buf, 0x16u);
    }

LABEL_147:

    v112 = 0;
    v12 = v157;
    v16 = self;
    goto LABEL_200;
  }

  v79 = v160;
LABEL_117:
  v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v43 encoding:4];

  v43 = v83;
LABEL_120:
  v85 = [NEKeychainItem alloc];
LABEL_121:
  v86 = v79[10];
  v87 = objc_getProperty(v79, v84, 88, 1);
  v88 = [(NEKeychainItem *)v85 initWithPassword:v43 domain:v86 accessGroup:v87];
  [v79 setPasswordKeychainItem:v88];

LABEL_122:
  v89 = [v9 objectForKeyedSubscript:@"SharedSecret"];

  v12 = v157;
  v16 = self;
  if (!v89)
  {
LABEL_132:
    v98 = [v9 objectForKeyedSubscript:@"LocalCertificate"];
    v99 = v98;
    if (v98 && isa_nsdata(v98))
    {
      v100 = setLocalCertificate(v99);
      if (v158)
      {
        [v158 setMachineIdentityReference:v100];
      }

      else
      {
        [self setIdentityReferenceInternal:v100];
      }
    }

    else
    {
      v101 = [v9 objectForKeyedSubscript:@"PayloadCertificateUUID"];

      if (!v101 || !isa_nsstring(v101))
      {
LABEL_150:
        if (v159 && (v113 = *MEMORY[0x1E6982440], [v9 objectForKeyedSubscript:*MEMORY[0x1E6982440]], v114 = objc_claimAutoreleasedReturnValue(), v115 = isa_nsnumber(v114), v114, v115))
        {
          v116 = v9;
          v117 = v113;
        }

        else
        {
          if (!v160 || ([v9 objectForKeyedSubscript:@"ExtendedAuthEnabled"], v118 = objc_claimAutoreleasedReturnValue(), v119 = isa_nsnumber(v118), v118, !v119))
          {
LABEL_157:
            v121 = [v9 objectForKeyedSubscript:@"LocalIdentifier"];

            if (v121 && isa_nsstring(v121))
            {
              v122 = v158;
              if (!v158)
              {
                v122 = self;
              }

              [v122 setLocalIdentifier:v121];
            }

            if (v160)
            {
              v123 = [v9 objectForKeyedSubscript:@"RemoteIdentifier"];

              if (isa_nsstring(v123))
              {
                [v160 setRemoteIdentifier:v123];
              }
            }

            else
            {
              v123 = v121;
            }

            v124 = [v9 objectForKeyedSubscript:@"AuthenticationMethod"];

            if (isa_nsstring(v124))
            {
              if ([v124 isEqualToString:@"SharedSecret"])
              {
                v125 = v158;
                if (v158)
                {
                  v126 = 1;
LABEL_175:
                  [v125 setMachineAuthenticationMethod:v126];
                  goto LABEL_187;
                }

                v132 = self;
                v133 = 2;
LABEL_186:
                [v132 setAuthenticationMethod:v133];
                goto LABEL_187;
              }

              if ([v124 isEqualToString:@"Certificate"])
              {
                v125 = v158;
                if (v158)
                {
                  v126 = 2;
                  goto LABEL_175;
                }

                v132 = self;
                v133 = 1;
                goto LABEL_186;
              }

              v130 = [v124 isEqualToString:@"None"];
              v127 = v160;
              if (!v160 || (v130 & 1) == 0)
              {
                v131 = ne_log_obj();
                if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                {
                  v149 = objc_opt_class();
                  *buf = 138412546;
                  v167 = v149;
                  v168 = 2112;
                  v169 = v124;
                  _os_log_error_impl(&dword_1BA83C000, v131, OS_LOG_TYPE_ERROR, "%@ configureIKE: unsupported authentication type %@.", buf, 0x16u);
                }

LABEL_187:
                if (v160)
                {
                  goto LABEL_188;
                }

LABEL_193:
                if (![(NEConfiguration *)v156 ingestDisconnectOptions:v9])
                {

                  goto LABEL_198;
                }

                v135 = ne_log_obj();
                if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
                {
                  v138 = objc_opt_class();
                  v139 = [v156 VPN];
                  v140 = [v139 protocol];
                  *buf = 138412546;
                  v167 = v138;
                  v168 = 2112;
                  v169 = v140;
                  _os_log_debug_impl(&dword_1BA83C000, v135, OS_LOG_TYPE_DEBUG, "%@ configureIKE, done with %@", buf, 0x16u);
                }

                v112 = 1;
                goto LABEL_200;
              }
            }

            else
            {
              v127 = v160;
              if (!v160)
              {
                if (v124)
                {
                  v128 = ne_log_obj();
                  if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                  {
                    v129 = objc_opt_class();
                    *buf = 138412546;
                    v167 = v129;
                    v168 = 2112;
                    v169 = v124;
                    _os_log_error_impl(&dword_1BA83C000, v128, OS_LOG_TYPE_ERROR, "%@ configureIKE: unsupported authentication type %@.", buf, 0x16u);
                  }

                  goto LABEL_192;
                }

                goto LABEL_193;
              }
            }

            [v127 setAuthenticationMethod:0];
LABEL_188:
            v134 = [v9 objectForKeyedSubscript:@"IncludeAllNetworks"];
            if (isa_nsnumber(v134))
            {
              [v160 setIncludeAllNetworks:{objc_msgSend(v134, "BOOLValue")}];
            }

            v128 = [v9 objectForKeyedSubscript:@"EnableFallback"];

            if (isa_nsnumber(v128))
            {
              [v160 setEnableFallback:{-[NSObject BOOLValue](v128, "BOOLValue")}];
            }

LABEL_192:

            goto LABEL_193;
          }

          v117 = @"ExtendedAuthEnabled";
          v116 = v9;
        }

        v120 = [v116 objectForKeyedSubscript:v117];
        -[NSObject setUseExtendedAuthentication:](self, "setUseExtendedAuthentication:", [v120 BOOLValue]);

        goto LABEL_157;
      }

      v102 = @"_PayloadMachineCertificateRef";
      if (!v158)
      {
        v102 = @"_PayloadCertificateRef";
      }

      v100 = v102;
      v104 = objc_getProperty(self, v103, 88, 1);
      [v11 addCertificatePending:v101 certificateTag:v100 accessGroup:v104];

      v99 = v101;
    }

    v101 = v99;
    goto LABEL_150;
  }

  if (isa_nsdata(v89))
  {
    v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v89 encoding:4];

    v89 = v90;
    goto LABEL_126;
  }

  if (isa_nsstring(v89))
  {
LABEL_126:
    v92 = [NEKeychainItem alloc];
    if (v158)
    {
      v93 = v158[10].isa;
      v94 = objc_getProperty(v158, v91, 88, 1);
      v95 = [(NEKeychainItem *)v92 initWithPassword:v89 domain:v93 accessGroup:v94];
      v96 = v158;
    }

    else
    {
      v97 = self[10].isa;
      v94 = objc_getProperty(self, v91, 88, 1);
      v95 = [(NEKeychainItem *)v92 initWithPassword:v89 domain:v97 accessGroup:v94];
      v96 = self;
    }

    [v96 setSharedSecretKeychainItem:v95];

    goto LABEL_132;
  }

  v105 = ne_log_obj();
  if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
  {
    v143 = objc_opt_class();
    v144 = v143;
    v145 = objc_opt_class();
    *buf = 138412546;
    v167 = v143;
    v168 = 2112;
    v169 = v145;
    v146 = v145;
    _os_log_error_impl(&dword_1BA83C000, v105, OS_LOG_TYPE_ERROR, "%@ configureIKE: unsupported shared secret data type %@", buf, 0x16u);
  }

LABEL_198:
LABEL_199:
  v112 = 0;
LABEL_200:

  v136 = *MEMORY[0x1E69E9840];
  return v112;
}

- (BOOL)configureVpnOnDemandRules:(void *)a1
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 VPN];
  if (v4)
  {
    [a1 VPN];
  }

  else
  {
    [a1 appVPN];
  }
  v5 = ;

  v6 = ne_log_large_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v22 = 138412290;
    *&v22[4] = objc_opt_class();
    v19 = *&v22[4];
    _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@ configureVpnOnDemandRules: start", v22, 0xCu);
  }

  if (v5)
  {
    v7 = [v5 onDemandRules];

    if (v7)
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        *v22 = 138412290;
        *&v22[4] = v9;
        v10 = v9;
        v11 = "%@ configureVpnOnDemandRules: VPN OnDemand rules already ingested. Skip current dictionary.";
LABEL_12:
        _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, v11, v22, 0xCu);
      }
    }

    else
    {
      v13 = [NEOnDemandRule createOnDemandRulesFromLegacyDictionary:v3];
      [v5 setOnDemandRules:v13];

      v14 = [v3 objectForKeyedSubscript:@"OnDemandEnabled"];
      if (isa_nsnumber(v14))
      {
        [v5 setOnDemandEnabled:{objc_msgSend(v14, "BOOLValue")}];
      }

      v15 = [v3 objectForKeyedSubscript:{@"DisconnectOnDemandEnabled", *v22}];

      if (isa_nsnumber(v15))
      {
        [v5 setDisconnectOnDemandEnabled:{objc_msgSend(v15, "BOOLValue")}];
      }

      v8 = [v3 objectForKeyedSubscript:@"OnDemandUserOverrideDisabled"];

      if (isa_nsnumber(v8))
      {
        [v5 setOnDemandUserOverrideDisabled:{-[NSObject BOOLValue](v8, "BOOLValue")}];
      }

      v16 = ne_log_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        *v22 = 138412546;
        *&v22[4] = v20;
        *&v22[12] = 2112;
        *&v22[14] = v5;
        v21 = v20;
        _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "%@ configureVpnOnDemandRules done: onDemand rules %@", v22, 0x16u);
      }
    }
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      *v22 = 138412290;
      *&v22[4] = v12;
      v10 = v12;
      v11 = "%@ configureVpnOnDemandRules failed: VPN not initialized";
      goto LABEL_12;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

- (BOOL)configureVpnOnDemand:(void *)a3 vpnType:
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v6];
  if ([v6 isEqualToString:@"L2TP"])
  {
    v8 = [v5 objectForKeyedSubscript:@"PPP"];

    v7 = v8;
  }

  if (!v7 || ![(NEConfiguration *)a1 configureVpnOnDemandRules:v7])
  {
    goto LABEL_8;
  }

  if (![v6 isEqualToString:@"L2TP"])
  {
    v7 = 0;
LABEL_10:
    v9 = [(NEConfiguration *)a1 configureVpnOnDemandRules:v5];
    goto LABEL_11;
  }

  v7 = [v5 objectForKeyedSubscript:@"IPSec"];
  if (!v7 || [(NEConfiguration *)a1 configureVpnOnDemandRules:v7])
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = 0;
LABEL_11:

  return v9;
}

- (uint64_t)ingestIPSecDict:(void *)a3 vpnType:(void *)a4 vpn:
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 payloadAtom];
  v11 = [(__CFString *)v8 isEqualToString:@"IKEv2"];
  v12 = @"IPSec";
  if (v11)
  {
    v12 = @"IKEv2";
  }

  v13 = v12;
  v14 = [v10 objectForKeyedSubscript:v13];
  v15 = ne_log_large_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v59 = objc_opt_class();
    v60 = 2112;
    v61 = v8;
    v35 = v59;
    _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "%@ ingestIPSecDict for type %@", buf, 0x16u);
  }

  if (!v14)
  {
    v16 = [(__CFString *)v8 isEqualToString:@"L2TP"];
    v14 = ne_log_obj();
    v17 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if ((v16 & 1) == 0)
    {
      if (v17)
      {
        v44 = objc_opt_class();
        *buf = 138412546;
        v59 = v44;
        v60 = 2112;
        v61 = v13;
        v45 = v44;
        _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "%@ ingestIPSecDict: empty %@ dict", buf, 0x16u);
      }

      goto LABEL_31;
    }

    if (v17)
    {
      v42 = objc_opt_class();
      *buf = 138412290;
      v59 = v42;
      v43 = v42;
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "%@ ingestIPSecDict: empty IPSec dict for L2TP. Apply defaults.", buf, 0xCu);
    }

    v14 = MEMORY[0x1E695E0F8];
  }

  v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v14];
  if (!v18)
  {
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      *buf = 138412290;
      v59 = v29;
      v30 = v29;
      _os_log_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_INFO, "%@ ingestIPSecDict: can't alloc dictionary", buf, 0xCu);
    }

LABEL_31:
    v33 = 0;
    goto LABEL_46;
  }

  v19 = v18;
  v57 = v9;
  v20 = [v10 objectForKeyedSubscript:@"_certificateData"];
  if (v20)
  {
    v21 = v20;
    v22 = v13;
    v23 = a1;
    v24 = [v10 objectForKeyedSubscript:@"_certificatePassphrase"];
    if (v24)
    {
      v25 = [NEIdentityKeychainItem importPKCS12Data:v21 passphrase:v24];
      v26 = v25;
      if (v25 && [v25 count])
      {
        v27 = [v26 objectAtIndex:0];
        if (v27)
        {
          v56 = v27;
          [v19 setObject:v27 forKey:@"LocalCertificate"];
          if (!-[__CFString isEqualToString:](v8, "isEqualToString:", @"IKEv2") || ([v19 objectForKeyedSubscript:@"AuthenticationMethod"], v55 = objc_claimAutoreleasedReturnValue(), v55, v27 = v56, !v55))
          {
            [v19 setObject:@"Certificate" forKey:@"AuthenticationMethod"];
            v27 = v56;
          }
        }
      }
    }

    a1 = v23;
    v13 = v22;
    goto LABEL_39;
  }

  v31 = [v14 objectForKeyedSubscript:@"LocalCertificate"];
  if (v31)
  {
    v21 = v31;
    if (!-[__CFString isEqualToString:](v8, "isEqualToString:", @"IKEv2") || ([v19 objectForKeyedSubscript:@"AuthenticationMethod"], v32 = objc_claimAutoreleasedReturnValue(), v32, !v32))
    {
      [v19 setObject:@"Certificate" forKey:@"AuthenticationMethod"];
    }

    goto LABEL_39;
  }

  v34 = [v14 objectForKeyedSubscript:@"PayloadCertificateUUID"];
  if (v34)
  {

LABEL_35:
    if (!-[__CFString isEqualToString:](v8, "isEqualToString:", @"IKEv2") || ([v19 objectForKeyedSubscript:@"AuthenticationMethod"], v37 = objc_claimAutoreleasedReturnValue(), v37, !v37))
    {
      [v19 setObject:@"Certificate" forKey:@"AuthenticationMethod"];
    }

    goto LABEL_38;
  }

  v36 = [v10 objectForKeyedSubscript:@"PayloadCertificateUUID"];

  if (v36)
  {
    goto LABEL_35;
  }

  if ([(__CFString *)v8 isEqualToString:@"IKEv2"]&& ([v14 objectForKeyedSubscript:@"ExtensibleSSOProvider"], v46 = objc_claimAutoreleasedReturnValue(), v46, v46))
  {
    v47 = ne_log_obj();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = objc_opt_class();
      *buf = 138412290;
      v59 = v48;
      v49 = v48;
      _os_log_impl(&dword_1BA83C000, v47, OS_LOG_TYPE_INFO, "%@ ingestIPSecDict: assuming authentication by certificate", buf, 0xCu);
    }

    v50 = @"Certificate";
  }

  else
  {
    v51 = ne_log_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = objc_opt_class();
      *buf = 138412290;
      v59 = v52;
      v53 = v52;
      _os_log_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_INFO, "%@ ingestIPSecDict: assuming authentication by sharedsecret", buf, 0xCu);
    }

    if ([(__CFString *)v8 isEqualToString:@"IKEv2"])
    {
      v54 = [v19 objectForKeyedSubscript:@"AuthenticationMethod"];

      if (v54)
      {
        goto LABEL_58;
      }
    }

    v50 = @"SharedSecret";
  }

  [v19 setObject:v50 forKey:@"AuthenticationMethod"];
LABEL_58:
  [v19 removeObjectForKey:@"ExportedSharedSecret"];
  [v19 removeObjectForKey:@"IPSecSharedSecretObf"];
LABEL_38:
  v21 = 0;
LABEL_39:
  v38 = [v19 objectForKeyedSubscript:@"AuthenticationMethod"];
  if (v38 && ([(__CFString *)v8 isEqualToString:@"IKEv2"]& 1) == 0)
  {
    if ([v38 isEqualToString:@"Certificate"])
    {
      [v19 removeObjectForKey:@"LocalIdentifier"];
      v39 = @"LocalIdentifierType";
    }

    else
    {
      v39 = @"LocalCertificate";
    }

    [v19 removeObjectForKey:v39];
  }

  v33 = [(NEConfiguration *)a1 configureIKE:v19 vpnType:v8 payloadBase:v7 vpn:v57];

  v9 = v57;
LABEL_46:

  v40 = *MEMORY[0x1E69E9840];
  return v33;
}

- (id)initWithVPNPayload:(void *)a3 configurationName:(uint64_t)a4 grade:
{
  v161 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v34 = 0;
    goto LABEL_44;
  }

  v9 = v7;
  v10 = [v9 payloadAtom];
  v11 = ne_log_large_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v156 = objc_opt_class();
    v38 = v156;
    _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "%@ initWithVPNPayload", buf, 0xCu);
  }

  if (!v10)
  {
    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v31 = objc_opt_class();
    *buf = 138412290;
    v156 = v31;
    v32 = v31;
    v33 = "%@ initWithVPNPayload: empty payload atom";
LABEL_65:
    _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, v33, buf, 0xCu);

    goto LABEL_32;
  }

  v12 = [v10 objectForKeyedSubscript:@"VPNType"];
  if (v12)
  {
    v13 = v12;
    v154[0] = @"IPSec";
    v154[1] = @"L2TP";
    v154[2] = @"IKEv2";
    v154[3] = @"VPN";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:4];
    if ([v14 containsObject:v13])
    {
      v15 = [a1 initWithName:v8 grade:a4];
      if (!v15)
      {
        v22 = ne_log_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v68 = objc_opt_class();
          *buf = 138412546;
          v156 = v68;
          v157 = 2112;
          v158 = v8;
          v69 = v68;
          _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, "%@ initWithVPNPayload failed for config '%@'", buf, 0x16u);
        }

        v19 = 0;
        a1 = 0;
        goto LABEL_38;
      }

      a1 = v15;
      v16 = objc_alloc_init(NEVPN);
      [a1 setVPN:v16];

      v17 = [a1 VPN];

      if (v17)
      {
        v18 = [a1 VPN];
        [v18 setEnabled:1];

        v19 = [v10 objectForKeyedSubscript:@"Enabled"];
        if (isa_nsnumber(v19))
        {
          v20 = [v19 BOOLValue];
          v21 = [a1 VPN];
          [v21 setEnabled:v20];
        }

        v153 = v14;
        if (![v13 isEqualToString:@"L2TP"])
        {
          if (([v13 isEqualToString:@"IPSec"]& 1) != 0 || [v13 isEqualToString:@"IKEv2"])
          {
            v42 = ne_log_obj();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              v72 = objc_opt_class();
              *buf = 138412546;
              v156 = v72;
              v157 = 2112;
              v158 = v13;
              v73 = v72;
              _os_log_debug_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_DEBUG, "%@ initWithVPNPayload: ingest %@", buf, 0x16u);
            }
          }

LABEL_52:
          if (([v13 isEqualToString:@"IPSec"]& 1) == 0 && ([v13 isEqualToString:@"L2TP"]& 1) == 0 && ![v13 isEqualToString:@"IKEv2"])
          {
            goto LABEL_178;
          }

          v43 = [a1 VPN];
          v44 = [(NEConfiguration *)a1 ingestIPSecDict:v9 vpnType:v13 vpn:v43];

          if (v44)
          {
            if (![v13 isEqualToString:@"IKEv2"])
            {
              goto LABEL_178;
            }

            v45 = [v10 objectForKeyedSubscript:@"VPNSubType"];
            v46 = [v10 objectForKeyedSubscript:@"IKEv2"];
            [a1 VPN];
            v47 = v147 = v19;
            v48 = [v47 protocol];
            v150 = ingestIKEv2Dict(v45, v46, v48);

            v14 = v153;
            v19 = v147;

            if (v150)
            {
LABEL_178:
              if (([v13 isEqualToString:@"VPN"]& 1) != 0 || [v13 isEqualToString:@"TransparentProxy"])
              {
                v49 = [v10 objectForKeyedSubscript:@"VPNSubType"];
                if ([v13 isEqualToString:@"VPN"])
                {
                  v151 = v49;
                  v50 = [v10 objectForKeyedSubscript:v13];
                  v51 = [v50 objectForKeyedSubscript:@"ProviderType"];

                  if (isa_nsstring(v51) && ([v51 isEqualToString:@"app-proxy"] & 1) != 0)
                  {
                    v52 = 2;
                  }

                  else
                  {
                    v52 = 1;
                  }

                  v59 = [a1 VPN];
                  [v59 setTunnelType:v52];

                  v49 = v151;
                }

                else
                {
                  v51 = [a1 VPN];
                  [v51 setTunnelType:2];
                }

                v60 = [(NEConfiguration *)a1 configurePluginWithPayload:v9 pluginType:v49 payloadType:@"com.apple.vpn.managed" vpnType:v13];
                if (!v60)
                {
                  goto LABEL_80;
                }
              }

              if (![(NEConfiguration *)a1 configureVpnOnDemand:v10 vpnType:v13])
              {
LABEL_80:
                v14 = v153;
              }

              else
              {
                v61 = v19;
                v62 = [v10 objectForKeyedSubscript:@"PayloadCertificateHash"];
                v63 = isa_nsdata(v62);

                if (v63)
                {
                  v64 = [v10 objectForKeyedSubscript:@"PayloadCertificateHash"];
                  v65 = [a1 VPN];
                  v66 = [v65 protocol];
                  [v66 setIdentityDataHash:v64];
                }

                v14 = v153;
                v19 = v61;
                if ([(NEConfiguration *)a1 ingestDNSOptions:v10]&& [(NEConfiguration *)a1 ingestProxyOptions:v10])
                {
                  v67 = ne_log_obj();
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                  {
                    v94 = objc_opt_class();
                    v152 = v94;
                    v148 = [a1 VPN];
                    v145 = [v148 protocol];
                    v95 = [v145 serverAddress];
                    *buf = 138412546;
                    v156 = v94;
                    v14 = v153;
                    v157 = 2112;
                    v158 = v95;
                    _os_log_debug_impl(&dword_1BA83C000, v67, OS_LOG_TYPE_DEBUG, "%@ initWithVPNPayload: done, serverAddress %@", buf, 0x16u);

                    v19 = v61;
                  }

                  a1 = a1;
                  v34 = a1;
LABEL_42:

                  goto LABEL_43;
                }
              }
            }
          }

LABEL_39:
          v35 = ne_log_obj();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v53 = objc_opt_class();
            *buf = 138412290;
            v156 = v53;
            v54 = v19;
            v55 = v14;
            v56 = v53;
            _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "%@ initWithVPNPayload: failed", buf, 0xCu);

            v14 = v55;
            v19 = v54;
          }

          v34 = 0;
          goto LABEL_42;
        }

        v146 = v19;
        v22 = v10;
        v149 = v13;
        v23 = [v22 objectForKeyedSubscript:@"PPP"];
        v24 = ne_log_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v70 = objc_opt_class();
          *buf = 138412546;
          v156 = v70;
          v157 = 2112;
          v158 = v149;
          v71 = v70;
          _os_log_debug_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEBUG, "%@ ingestPPPData for %@", buf, 0x16u);
        }

        v144 = v23;
        if (!v23)
        {
          goto LABEL_27;
        }

        if (![v149 isEqualToString:@"L2TP"])
        {
LABEL_104:

          v14 = v153;
          v19 = v146;
          goto LABEL_38;
        }

        v143 = v22;
        v25 = [(NEConfiguration *)a1 getConfigurationProtocol];
        v26 = ne_log_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_DEBUG, "configureL2TPwithPPPOptions", buf, 2u);
        }

        v27 = [a1 appVPN];

        if (v27)
        {
          goto LABEL_26;
        }

        if (v25)
        {
LABEL_20:
          v142 = v143;
          v141 = [(NEConfiguration *)a1 getConfigurationProtocol];
          v28 = ne_log_obj();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_DEBUG, "configurePPPCommon start", buf, 2u);
          }

          v29 = [a1 appVPN];

          if (v29 || [a1 grade] == 2)
          {
            v30 = 0;
LABEL_25:

LABEL_26:
            goto LABEL_27;
          }

          v140 = v25;
          v83 = [a1 VPN];
          if (v83)
          {
            v84 = v141 == 0;
          }

          else
          {
            v84 = 1;
          }

          v85 = !v84;

          if ((v85 & 1) == 0)
          {
            v92 = ne_log_obj();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1BA83C000, v92, OS_LOG_TYPE_ERROR, "configurePPPCommon failed: VPN not initialized", buf, 2u);
            }

            v93 = 0;
            goto LABEL_132;
          }

          v136 = v85;
          v139 = [v142 objectForKeyedSubscript:@"PPP"];
          self = [(NEConfiguration *)a1 getConfigurationProtocol];
          v86 = ne_log_large_obj();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_1BA83C000, v86, OS_LOG_TYPE_DEBUG, "ingestPPPDict start", buf, 2u);
          }

          v87 = [a1 appVPN];

          if (v87 || [a1 grade] == 2)
          {
LABEL_98:

            v88 = v142;
            v89 = [v142 objectForKeyedSubscript:@"IPv4"];
            if (isa_nsdictionary(v89))
            {
              v90 = [[NEIPv4Settings alloc] initFromLegacyDictionary:v89];
              if (v90)
              {
                [v141 setIPv4Settings:v90];
              }

              else
              {
                v103 = ne_log_large_obj();
                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&dword_1BA83C000, v103, OS_LOG_TYPE_DEBUG, "configurePPPCommon: IPv4 settings are Off for payload dictionary", buf, 2u);
                }
              }

              v88 = v142;
            }

            v30 = [v88 objectForKeyedSubscript:@"IPv6"];

            if (!isa_nsdictionary(v30))
            {
              v25 = v140;
              goto LABEL_25;
            }

            v93 = v30;
            v104 = [[NEIPv6Settings alloc] initFromLegacyDictionary:v30];
            if (v104)
            {
              v92 = v104;
              [v141 setIPv6Settings:v104];
            }

            else
            {
              v105 = ne_log_obj();
              if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1BA83C000, v105, OS_LOG_TYPE_ERROR, "configurePPPCommon: invalid IPv6 dictionary", buf, 2u);
              }

              v92 = 0;
            }

            v85 = v136;
LABEL_132:

            if ((v85 & 1) == 0)
            {
              goto LABEL_104;
            }

LABEL_27:

            v14 = v153;
            v19 = v146;
            if (([(NEConfiguration *)a1 configurePPPWithVPNOptions:v22 payloadBase:v9]& 1) == 0)
            {
              goto LABEL_39;
            }

            goto LABEL_52;
          }

          v96 = [a1 VPN];

          if (!v96 || !self)
          {
            log = ne_log_obj();
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1BA83C000, log, OS_LOG_TYPE_ERROR, "ingestPPPDict failed: VPN not initialized", buf, 2u);
            }

            goto LABEL_138;
          }

          if (!v139)
          {
LABEL_139:

            v91 = v140;
            v81 = v142;
            goto LABEL_103;
          }

          v97 = [v139 objectForKeyedSubscript:@"CommRemoteAddress"];
          v98 = v97;
          if (v97 && isa_nsstring(v97))
          {
            [self setServerAddress:v98];
          }

          v99 = [v139 objectForKeyedSubscript:@"AuthName"];

          if (v99 && isa_nsstring(v99))
          {
            [self setUsername:v99];
          }

          v100 = [v139 objectForKeyedSubscript:@"AuthPassword"];

          log = v100;
          if (v100)
          {
            if (isa_nsdata(v100))
            {
              v101 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v100 encoding:4];

              v102 = v101;
LABEL_149:
              v108 = v102;
              loga = [NEKeychainItem alloc];
              v109 = self[10];
              v133 = objc_getProperty(self, v110, 88, 1);
              v111 = [(NEKeychainItem *)loga initWithPassword:v108 domain:v109 accessGroup:v133];
              [self setPasswordKeychainItem:v111];

              [self setAuthenticationMethod:1];
              log = v108;

LABEL_150:
              v112 = [v139 objectForKeyedSubscript:@"VerboseLogging"];
              v113 = isa_nsnumber(v112);

              if (v113)
              {
                v114 = [v139 objectForKeyedSubscript:@"VerboseLogging"];
                [self setVerboseLoggingEnabled:{objc_msgSend(v114, "BOOLValue")}];
              }

              [(NEConfiguration *)a1 ingestDisconnectOptions:v139];
              v115 = ne_log_obj();
              if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
              {
                v117 = objc_opt_class();
                *buf = 138412290;
                v156 = v117;
                v118 = v117;
                _os_log_debug_impl(&dword_1BA83C000, v115, OS_LOG_TYPE_DEBUG, "%@ ingestPPPDict: done", buf, 0xCu);
              }

              goto LABEL_98;
            }

            if (isa_nsstring(v100))
            {
              v102 = v100;
              goto LABEL_149;
            }

            v116 = ne_log_obj();
            if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
            {
              v123 = objc_opt_class();
              v124 = v123;
              v125 = objc_opt_class();
              *buf = 138412546;
              v156 = v123;
              v157 = 2112;
              v158 = v125;
              v126 = v125;
              _os_log_error_impl(&dword_1BA83C000, v116, OS_LOG_TYPE_ERROR, "%@ ingestPPPDict: unsupported password data type %@", buf, 0x16u);
            }

            goto LABEL_138;
          }

          log = [v139 objectForKeyedSubscript:@"AuthProtocol"];
          if (isa_nsarray(log) && [log containsObject:@"EAP"])
          {
            v106 = [v139 objectForKeyedSubscript:@"AuthEAPPlugins"];
            if (!isa_nsarray(v106) || ![v106 count])
            {
              goto LABEL_170;
            }

            v132 = [v106 objectAtIndexedSubscript:0];
            if (!isa_nsstring(v132))
            {
LABEL_169:

LABEL_170:
LABEL_171:
              v127 = [v139 objectForKeyedSubscript:@"TokenCard"];
              v128 = isa_nsnumber(v127);

              if (v128)
              {
                [self setAuthenticationMethod:5];
              }

              goto LABEL_150;
            }

            if ([v132 isEqualToString:@"EAP-RSA"])
            {
              v107 = 2;
LABEL_168:
              [self setAuthenticationMethod:v107];
              goto LABEL_169;
            }

            if ([v132 isEqualToString:@"EAP-TLS"])
            {
              v107 = 3;
              goto LABEL_168;
            }

            if ([v132 isEqualToString:@"EAP-KRB"])
            {
              v107 = 4;
              goto LABEL_168;
            }

            v129 = ne_log_obj();
            if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
            {
              v130 = objc_opt_class();
              *buf = 138412802;
              v156 = v130;
              v157 = 2112;
              v158 = @"AuthEAPPlugins";
              v159 = 2112;
              v160 = v132;
              v131 = v130;
              _os_log_error_impl(&dword_1BA83C000, v129, OS_LOG_TYPE_ERROR, "%@ ingestPPPDict: unsupported %@ type %@", buf, 0x20u);
            }

            v122 = v132;
          }

          else
          {
            if (!log)
            {
              goto LABEL_171;
            }

            v106 = ne_log_obj();
            if (!os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_157;
            }

            v119 = objc_opt_class();
            v137 = v119;
            v120 = objc_opt_class();
            *buf = 138412802;
            v156 = v119;
            v157 = 2112;
            v158 = @"AuthProtocol";
            v159 = 2112;
            v160 = v120;
            v121 = v120;
            _os_log_error_impl(&dword_1BA83C000, v106, OS_LOG_TYPE_ERROR, "%@ ingestPPPDict: invalid %@ type %@", buf, 0x20u);

            v122 = v137;
          }

LABEL_157:
LABEL_138:

          goto LABEL_139;
        }

        v74 = [a1 VPN];

        if (v74)
        {
          v75 = [a1 VPN];
          v76 = [v75 protocol];

          if (!v76)
          {
            v77 = objc_alloc_init(NEVPNProtocolL2TP);
            v78 = [a1 VPN];
            [v78 setProtocol:v77];
          }

          v79 = [a1 VPN];
          v80 = [v79 protocol];

          if (v80)
          {
            goto LABEL_20;
          }

          v81 = ne_log_obj();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v82 = "configureL2TPwithPPPOptions failed to allocate for L2TP";
LABEL_135:
            _os_log_error_impl(&dword_1BA83C000, v81, OS_LOG_TYPE_ERROR, v82, buf, 2u);
          }
        }

        else
        {
          v81 = ne_log_obj();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v82 = "configureL2TPwithPPPOptions failed: app-layer VPN not supported";
            goto LABEL_135;
          }
        }

        v91 = 0;
LABEL_103:

        goto LABEL_104;
      }

      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        *buf = 138412546;
        v156 = v39;
        v157 = 2112;
        v158 = v8;
        v40 = v39;
        v41 = "%@ initWithVPNPayload failed, can't create VPN for config '%@'";
LABEL_67:
        _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, v41, buf, 0x16u);
      }
    }

    else
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v58 = objc_opt_class();
        *buf = 138412546;
        v156 = v58;
        v157 = 2112;
        v158 = v13;
        v40 = v58;
        v41 = "%@ initWithVPNPayload : VPN type '%@' not supported";
        goto LABEL_67;
      }
    }

    v19 = 0;
LABEL_38:

    goto LABEL_39;
  }

  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v57 = objc_opt_class();
    *buf = 138412290;
    v156 = v57;
    v32 = v57;
    v33 = "%@ initWithVPNPayload: couldn't extract VPN type from payload";
    goto LABEL_65;
  }

LABEL_32:
  v34 = 0;
LABEL_43:

LABEL_44:
  v36 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)initWithAppLayerVPNPayload:(void *)a3 configurationName:(uint64_t)a4 grade:
{
  v145[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v42 = 0;
    goto LABEL_40;
  }

  v9 = v7;
  v10 = [v9 payloadAtom];
  v11 = ne_log_large_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v140 = objc_opt_class();
    v45 = v10;
    v46 = v140;
    _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "%@ initWithAppLayerVPNPayload", buf, 0xCu);

    v10 = v45;
  }

  if (!v10)
  {
    v13 = ne_log_obj();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v39 = objc_opt_class();
    *buf = 138412290;
    v140 = v39;
    v40 = v39;
    v41 = "%@ initWithAppLayerVPNPayload: empty payload atom";
LABEL_43:
    _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, v41, buf, 0xCu);

    goto LABEL_24;
  }

  v12 = [v10 objectForKeyedSubscript:@"VPNType"];
  if (v12)
  {
    v13 = v12;
    v145[0] = @"IPSec";
    v145[1] = @"IKEv2";
    v145[2] = @"VPN";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v145 count:3];
    if ([v14 containsObject:v13])
    {
      v15 = [a1 initWithName:v8 grade:a4];
      if (!v15)
      {
        v43 = v14;
        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v92 = objc_opt_class();
          *buf = 138412546;
          v140 = v92;
          v141 = 2112;
          *v142 = v8;
          v93 = v92;
          _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, "%@ initWithAppLayerVPNPayload: initWithName failed for '%@'", buf, 0x16u);
        }

        v20 = 0;
        a1 = 0;
        goto LABEL_34;
      }

      a1 = v15;
      v16 = objc_alloc_init(NEVPNApp);
      [a1 setAppVPN:v16];

      v17 = [a1 appVPN];

      if (v17)
      {
        v18 = [a1 appVPN];
        [v18 setEnabled:1];

        v19 = [a1 appVPN];
        [v19 setNoRestriction:1];

        v20 = [v10 objectForKeyedSubscript:@"Enabled"];
        if (isa_nsnumber(v20))
        {
          v21 = [v20 BOOLValue];
          [a1 appVPN];
          v23 = v22 = v13;
          [v23 setEnabled:v21];

          v13 = v22;
        }

        v24 = [v10 objectForKeyedSubscript:v13];

        if (v24)
        {
          v127 = v9;
          if (([v13 isEqualToString:@"IPSec"]& 1) != 0 || [v13 isEqualToString:@"IKEv2"])
          {
            v25 = [a1 appVPN];
            [v25 setTunnelType:1];

            v26 = [a1 appVPN];
            v27 = v13;
            v28 = [(NEConfiguration *)a1 ingestIPSecDict:v9 vpnType:v13 vpn:v26];

            if (!v28)
            {
              v13 = v27;
              goto LABEL_35;
            }

            v13 = v27;
            if ([v27 isEqualToString:@"IKEv2"])
            {
              v29 = [v10 objectForKeyedSubscript:@"VPNSubType"];
              [v10 objectForKeyedSubscript:@"IKEv2"];
              v30 = v125 = v27;
              [a1 appVPN];
              v119 = v14;
              v32 = v31 = v10;
              v33 = [v32 protocol];
              v34 = ingestIKEv2Dict(v29, v30, v33);

              v9 = v127;
              v10 = v31;
              v14 = v119;

              v13 = v125;
              if (!v34)
              {
                goto LABEL_35;
              }
            }
          }

          v121 = v10;
          if (![v13 isEqualToString:@"VPN"])
          {
            goto LABEL_48;
          }

          v35 = v13;
          v36 = [v10 objectForKeyedSubscript:v13];
          v37 = [v36 objectForKeyedSubscript:@"ProviderType"];

          if (isa_nsstring(v37) && ([v37 isEqualToString:@"packet-tunnel"] & 1) != 0)
          {
            v38 = 1;
          }

          else
          {
            v38 = 2;
          }

          v58 = [a1 appVPN];
          [v58 setTunnelType:v38];

          v59 = [v121 objectForKeyedSubscript:@"VPNSubType"];
          LODWORD(v58) = [(NEConfiguration *)a1 configurePluginWithPayload:v9 pluginType:v59 payloadType:@"com.apple.vpn.managed.applayer" vpnType:v35];

          v13 = v35;
          if (!v58)
          {
            v10 = v121;
          }

          else
          {
LABEL_48:
            v10 = v121;
            if ([(NEConfiguration *)a1 configureVpnOnDemand:v121 vpnType:v13]&& [(NEConfiguration *)a1 ingestProxyOptions:v121])
            {
              v60 = [v121 objectForKeyedSubscript:v13];
              v61 = [v60 objectForKeyedSubscript:@"OnDemandMatchAppEnabled"];

              v62 = v61;
              if (isa_nsnumber(v61))
              {
                v63 = [v61 BOOLValue];
                [a1 appVPN];
                v65 = v64 = v13;
                [v65 setOnDemandEnabled:v63];

                v13 = v64;
              }

              v117 = v62;
              v118 = v8;
              if (ne_session_disable_restrictions())
              {
                v66 = [v121 objectForKeyedSubscript:@"AppRules"];
                if (isa_nsdictionary(v66))
                {
                  v116 = v7;
                  v137 = 0u;
                  v138 = 0u;
                  v135 = 0u;
                  v136 = 0u;
                  v67 = v66;
                  v129 = [v67 countByEnumeratingWithState:&v135 objects:v144 count:16];
                  if (v129)
                  {
                    v68 = *v136;
                    v124 = v66;
                    v126 = v13;
                    v122 = *v136;
                    v123 = v67;
                    do
                    {
                      for (i = 0; i != v129; ++i)
                      {
                        if (*v136 != v68)
                        {
                          objc_enumerationMutation(v67);
                        }

                        v70 = [v67 objectForKeyedSubscript:{*(*(&v135 + 1) + 8 * i), v116}];
                        if (isa_nsdictionary(v70))
                        {
                          v128 = i;
                          v71 = v9;
                          v72 = [v70 objectForKeyedSubscript:@"ExecutableMatch"];
                          if (isa_nsarray(v72))
                          {
                            v133 = 0u;
                            v134 = 0u;
                            v131 = 0u;
                            v132 = 0u;
                            v73 = v72;
                            v74 = [v73 countByEnumeratingWithState:&v131 objects:v143 count:16];
                            v75 = v72;
                            if (v74)
                            {
                              v76 = v74;
                              v77 = *v132;
                              do
                              {
                                for (j = 0; j != v76; ++j)
                                {
                                  if (*v132 != v77)
                                  {
                                    objc_enumerationMutation(v73);
                                  }

                                  v79 = *(*(&v131 + 1) + 8 * j);
                                  if (isa_nsdictionary(v79))
                                  {
                                    v80 = [v79 objectForKeyedSubscript:@"SigningIdentifier"];
                                    if (isa_nsstring(v80))
                                    {
                                      [a1 appVPN];
                                      v82 = v81 = v75;
                                      [v82 removeAppRuleByID:v80];

                                      v75 = v81;
                                      if (([a1 setPerAppRuleSettings:v70 withAppIdentifier:v80] & 1) == 0)
                                      {
                                        v83 = ne_log_obj();
                                        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                                        {
                                          *buf = 138412290;
                                          v140 = v80;
                                          _os_log_error_impl(&dword_1BA83C000, v83, OS_LOG_TYPE_ERROR, "initWithAppLayerVPNPayload: Could not set App-layer VPN rule for identifier %@", buf, 0xCu);
                                        }

                                        v75 = v81;
                                      }
                                    }
                                  }
                                }

                                v76 = [v73 countByEnumeratingWithState:&v131 objects:v143 count:16];
                              }

                              while (v76);
                            }

                            v13 = v126;
                            v71 = v127;
                            v67 = v123;
                            v66 = v124;
                            v72 = v75;
                            v68 = v122;
                          }

                          v9 = v71;
                          i = v128;
                        }
                      }

                      v129 = [v67 countByEnumeratingWithState:&v135 objects:v144 count:16];
                    }

                    while (v129);
                  }

                  v7 = v116;
                }
              }

              v84 = v13;
              v85 = [a1 appVPN];
              v86 = [v85 protocol];
              v87 = [v86 sliceUUID];
              if (v87)
              {
                v88 = v87;
                v89 = v7;
                v90 = [a1 appVPN];
                v91 = [v90 protocol];
                if (([v91 disconnectOnIdle] & 1) == 0)
                {
                  [a1 appVPN];
                  v97 = v120 = v14;
                  v98 = [v97 isOnDemandEnabled];

                  v14 = v120;
                  v9 = v127;
                  v10 = v121;
                  if (!v98)
                  {
                    goto LABEL_88;
                  }

                  v99 = [a1 appVPN];
                  v100 = [v99 protocol];
                  [v100 setDisconnectOnIdle:1];

                  v101 = [a1 appVPN];
                  v102 = [v101 protocol];
                  [v102 setDisconnectOnIdleTimeout:60];

                  v85 = ne_log_obj();
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
                  {
                    v103 = objc_opt_class();
                    v130 = v103;
                    v104 = [a1 appVPN];
                    v105 = [v104 protocol];
                    v106 = [v105 disconnectOnIdle];
                    v107 = [a1 appVPN];
                    v108 = [v107 protocol];
                    v109 = [v108 disconnectOnIdleTimeout];
                    *buf = 138412802;
                    v140 = v103;
                    v141 = 1024;
                    *v142 = v106;
                    v14 = v120;
                    *&v142[4] = 1024;
                    *&v142[6] = v109;
                    _os_log_impl(&dword_1BA83C000, v85, OS_LOG_TYPE_INFO, "%@ VPN Slice: onDemand on slice - disconnectOnIdle %d disconnectOnIdleTimeout %d", buf, 0x18u);

                    v9 = v127;
                    v10 = v121;
                  }

LABEL_87:

LABEL_88:
                  v94 = ne_log_obj();
                  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
                  {
                    v110 = objc_opt_class();
                    v111 = v110;
                    v112 = [a1 appVPN];
                    v113 = [v112 protocol];
                    [v113 serverAddress];
                    v115 = v114 = v14;
                    *buf = 138412546;
                    v140 = v110;
                    v10 = v121;
                    v141 = 2112;
                    *v142 = v115;
                    _os_log_debug_impl(&dword_1BA83C000, v94, OS_LOG_TYPE_DEBUG, "%@ initWithAppLayerVPNPayload: done, serverAddress %@", buf, 0x16u);

                    v14 = v114;
                    v9 = v127;
                  }

                  a1 = a1;
                  v42 = a1;
                  v7 = v89;
                  v13 = v84;
                  v20 = v117;
                  v8 = v118;
LABEL_38:

                  goto LABEL_39;
                }

                v9 = v127;
              }

              else
              {
                v89 = v7;
              }

              v10 = v121;
              goto LABEL_87;
            }
          }

LABEL_35:
          v50 = ne_log_obj();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            v53 = objc_opt_class();
            *buf = 138412290;
            v140 = v53;
            v54 = v13;
            v55 = v53;
            _os_log_debug_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_DEBUG, "%@ initWithAppLayerVPNPayload: failed", buf, 0xCu);

            v13 = v54;
          }

          v42 = 0;
          goto LABEL_38;
        }

        v43 = v14;
        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v95 = objc_opt_class();
          *buf = 138412546;
          v140 = v95;
          v141 = 2112;
          *v142 = v13;
          v96 = v95;
          _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, "%@ initWithAppLayerVPNPayload failed, missing %@ configuration", buf, 0x16u);
        }

LABEL_34:

        v14 = v43;
        goto LABEL_35;
      }

      v43 = v14;
      v44 = ne_log_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v47 = objc_opt_class();
        *buf = 138412546;
        v140 = v47;
        v141 = 2112;
        *v142 = v8;
        v48 = v47;
        v49 = "%@ initWithAppLayerVPNPayload failed, can't create VPN for config '%@'";
LABEL_45:
        _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, v49, buf, 0x16u);
      }
    }

    else
    {
      v43 = v14;
      v44 = ne_log_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v57 = objc_opt_class();
        *buf = 138412546;
        v140 = v57;
        v141 = 2112;
        *v142 = v13;
        v48 = v57;
        v49 = "%@ initWithVPNPayload : VPN type '%@' not supported";
        goto LABEL_45;
      }
    }

    v20 = 0;
    goto LABEL_34;
  }

  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v56 = objc_opt_class();
    *buf = 138412290;
    v140 = v56;
    v40 = v56;
    v41 = "%@ initWithAppLayerVPNPayload: VPN type missing";
    goto LABEL_43;
  }

LABEL_24:
  v42 = 0;
LABEL_39:

LABEL_40:
  v51 = *MEMORY[0x1E69E9840];
  return v42;
}

- (__CFString)initWithAlwaysOnVPNPayload:(void *)a3 configurationName:(uint64_t)a4 grade:
{
  v239 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v141 = 0;
    goto LABEL_206;
  }

  v9 = v7;
  v10 = [v9 payloadAtom];
  v11 = ne_log_large_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v232 = objc_opt_class();
    v148 = a1;
    v149 = v232;
    _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "%@ initWithAlwaysOnVPNPayload", buf, 0xCu);

    a1 = v148;
  }

  if (!v10)
  {
    v140 = ne_log_obj();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
    {
      v152 = objc_opt_class();
      *buf = 138412290;
      v232 = v152;
      v153 = v152;
      _os_log_error_impl(&dword_1BA83C000, v140, OS_LOG_TYPE_ERROR, "%@ initWithAlwaysOnVPNPayload: empty payload atom", buf, 0xCu);
    }

    v141 = 0;
    goto LABEL_205;
  }

  v205 = [v10 objectForKeyedSubscript:@"AlwaysOn"];
  if ((isa_nsdictionary(v205) & 1) == 0)
  {
    v142 = ne_log_obj();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      v154 = objc_opt_class();
      *buf = 138412546;
      v232 = v154;
      v233 = 2112;
      v234 = @"AlwaysOn";
      v144 = v154;
      v145 = "%@ initWithAlwaysOnVPNPayload: missing %@ dictionary";
      v146 = v142;
      v147 = 22;
      goto LABEL_195;
    }

LABEL_180:

LABEL_181:
    v141 = 0;
    goto LABEL_182;
  }

  v12 = [(__CFString *)a1 initWithName:v8 grade:a4];
  if (!v12)
  {
    v140 = ne_log_obj();
    if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
    {
      v160 = objc_opt_class();
      *buf = 138412290;
      v232 = v160;
      v161 = v160;
      _os_log_error_impl(&dword_1BA83C000, v140, OS_LOG_TYPE_ERROR, "%@ initWithAlwaysOnVPNPayload failed", buf, 0xCu);
    }

    v141 = 0;
    a1 = v205;
    goto LABEL_205;
  }

  a1 = v12;
  v13 = objc_alloc_init(NEAOVPN);
  [(__CFString *)a1 setAlwaysOnVPN:v13];

  v14 = [(__CFString *)a1 alwaysOnVPN];

  if (!v14)
  {
    v142 = ne_log_obj();
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      v143 = objc_opt_class();
      *buf = 138412290;
      v232 = v143;
      v144 = v143;
      v145 = "%@ initWithAlwaysOnVPNPayload failed, can't create VPN";
      v146 = v142;
      v147 = 12;
LABEL_195:
      _os_log_error_impl(&dword_1BA83C000, v146, OS_LOG_TYPE_ERROR, v145, buf, v147);

      goto LABEL_180;
    }

    goto LABEL_180;
  }

  v204 = [(__CFString *)a1 alwaysOnVPN];
  [v204 setEnabled:1];
  v15 = [v205 objectForKeyedSubscript:@"UIToggleEnabled"];
  if (isa_nsnumber(v15))
  {
    [v204 setToggleEnabled:{objc_msgSend(v15, "BOOLValue")}];
  }

  v16 = [v205 objectForKeyedSubscript:@"AllowCaptiveWebSheet"];

  if (isa_nsnumber(v16))
  {
    [v204 setAllowCaptiveWebSheet:{objc_msgSend(v16, "BOOLValue")}];
  }

  v17 = [v205 objectForKeyedSubscript:@"AllowAllCaptiveNetworkPlugins"];

  v195 = v17;
  if (isa_nsnumber(v17))
  {
    [v204 setAllowAllCaptiveNetworkPlugins:{objc_msgSend(v17, "BOOLValue")}];
  }

  v18 = [v205 objectForKeyedSubscript:@"ServiceExceptions"];
  v197 = a1;
  v198 = v10;
  v191 = v8;
  v192 = v7;
  v196 = v9;
  if (isa_nsarray(v18) && [v18 count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    v222 = 0u;
    v223 = 0u;
    v224 = 0u;
    v225 = 0u;
    v200 = v18;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v222 objects:v230 count:16];
    if (!v21)
    {
      goto LABEL_33;
    }

    v22 = v21;
    v23 = *v223;
    while (1)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v223 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v222 + 1) + 8 * i);
        v26 = [v25 objectForKeyedSubscript:@"ServiceName"];
        if (isa_nsstring(v26))
        {
          v27 = objc_alloc_init(NEAOVPNException);
          if (v27)
          {
            v28 = [v25 objectForKeyedSubscript:@"Action"];
            if (isa_nsstring(v28))
            {
              if (([(__CFString *)v28 isEqualToString:@"Allow"]& 1) != 0)
              {
                v29 = 1;
              }

              else
              {
                if (([(__CFString *)v28 isEqualToString:@"Drop"]& 1) == 0)
                {
                  v155 = ne_log_obj();
                  if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
                  {
                    v174 = objc_opt_class();
                    *buf = 138413058;
                    v232 = v174;
                    v233 = 2112;
                    v234 = @"ServiceExceptions";
                    v235 = 2112;
                    v236 = @"Action";
                    v237 = 2112;
                    v238 = v28;
                    v175 = v174;
                    _os_log_error_impl(&dword_1BA83C000, v155, OS_LOG_TYPE_ERROR, "%@ initWithAlwaysOnVPNPayload: invalid %@ %@ option '%@'", buf, 0x2Au);
                  }

                  v141 = 0;
                  v140 = v205;
                  v8 = v191;
                  v9 = v196;
                  v10 = v198;
                  goto LABEL_204;
                }

                v29 = 2;
              }

              [(NEAOVPNException *)v27 setAction:v29];
            }

            [(NEAOVPNException *)v27 setServiceName:v26];
            [v19 setObject:v27 forKeyedSubscript:v26];
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v222 objects:v230 count:16];
      if (!v22)
      {
LABEL_33:

        if ([v19 count])
        {
          [v204 setServiceExceptions:v19];
        }

        v8 = v191;
        v9 = v196;
        v10 = v198;
        v18 = v200;
        break;
      }
    }
  }

  v30 = [v205 objectForKeyedSubscript:@"ApplicationExceptions"];

  if (isa_nsarray(v30) && [v30 count])
  {
    v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v201 = v30;
    v32 = v30;
    v33 = [v32 countByEnumeratingWithState:&v218 objects:v229 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v219;
      v36 = 0x1E7F04000uLL;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v219 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v218 + 1) + 8 * j);
          v39 = [v38 objectForKeyedSubscript:@"BundleIdentifier"];
          if (isa_nsstring(v39))
          {
            v40 = objc_alloc_init(*(v36 + 1568));
            v41 = v40;
            if (v40)
            {
              [v40 setBundleIdentifier:v39];
              v42 = [v38 objectForKeyedSubscript:@"LimitToProtocols"];
              if (isa_nsarray(v42) && [v42 count])
              {
                v43 = v32;
                v44 = v36;
                v45 = v31;
                v46 = [v42 copy];
                [v41 setLimitToProtocols:v46];

                v31 = v45;
                v36 = v44;
                v32 = v43;
              }

              [v41 setAction:1];
              [v31 setObject:v41 forKeyedSubscript:v39];
            }
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v218 objects:v229 count:16];
      }

      while (v34);
    }

    if ([v31 count])
    {
      [v204 setApplicationExceptions:v31];
    }

    v8 = v191;
    v7 = v192;
    v9 = v196;
    v10 = v198;
    v30 = v201;
  }

  v47 = [v205 objectForKeyedSubscript:@"AllowedCaptiveNetworkPlugins"];

  if (isa_nsarray(v47) && [v47 count])
  {
    v48 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v49 = v47;
    v50 = [v49 countByEnumeratingWithState:&v214 objects:v228 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v215;
      do
      {
        for (k = 0; k != v51; ++k)
        {
          if (*v215 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = [*(*(&v214 + 1) + 8 * k) objectForKeyedSubscript:@"BundleIdentifier"];
          if (isa_nsstring(v54))
          {
            v55 = objc_alloc_init(NEAOVPNException);
            v56 = v55;
            if (v55)
            {
              [(NEAOVPNException *)v55 setBundleIdentifier:v54];
              [(NEAOVPNException *)v56 setAction:1];
              [v48 setObject:v56 forKeyedSubscript:v54];
            }
          }
        }

        v51 = [v49 countByEnumeratingWithState:&v214 objects:v228 count:16];
      }

      while (v51);
    }

    if ([v48 count])
    {
      [v204 setAllowedCaptiveNetworkPlugins:v48];
    }

    v8 = v191;
    v7 = v192;
    v9 = v196;
    v10 = v198;
  }

  v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v57)
  {
    v150 = ne_log_obj();
    a1 = v197;
    if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
    {
      v170 = objc_opt_class();
      *buf = 138412290;
      v232 = v170;
      v171 = v170;
      _os_log_error_impl(&dword_1BA83C000, v150, OS_LOG_TYPE_ERROR, "%@ initWithAlwaysOnVPNPayload: failed to create tunnel configs", buf, 0xCu);
    }

    goto LABEL_181;
  }

  v58 = v57;
  v59 = [v205 objectForKeyedSubscript:@"TunnelConfigurations"];
  if ((isa_nsarray(v59) & 1) == 0)
  {
    v151 = ne_log_obj();
    if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
    {
      v172 = objc_opt_class();
      *buf = 138412546;
      v232 = v172;
      v233 = 2112;
      v234 = @"TunnelConfigurations";
      v173 = v172;
      _os_log_error_impl(&dword_1BA83C000, v151, OS_LOG_TYPE_ERROR, "%@ initWithAlwaysOnVPNPayload: missing %@ array", buf, 0x16u);
    }

LABEL_203:
    v141 = 0;
    v140 = v205;
LABEL_204:
    a1 = v197;
    goto LABEL_205;
  }

  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v60 = v59;
  v186 = v60;
  v193 = [v60 countByEnumeratingWithState:&v210 objects:v227 count:16];
  if (!v193)
  {

    v62 = 0;
LABEL_200:
    v156 = ne_log_obj();
    if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
    {
      v176 = objc_opt_class();
      *buf = 138412802;
      v232 = v176;
      v233 = 2112;
      v234 = @"Cellular";
      v235 = 2112;
      v236 = @"WiFi";
      v177 = v176;
      _os_log_error_impl(&dword_1BA83C000, v156, OS_LOG_TYPE_ERROR, "%@ initWithAlwaysOnVPNPayload: must have one of %@ or %@ configs", buf, 0x20u);
    }

    goto LABEL_203;
  }

  v61 = 0;
  v199 = 0;
  v62 = 0;
  v63 = *v211;
  v184 = v58;
  v185 = *v211;
  do
  {
    v64 = 0;
    v65 = v62;
    do
    {
      if (*v211 != v63)
      {
        objc_enumerationMutation(v60);
      }

      if (v199 & v61)
      {

        v62 = v65;
        v8 = v191;
        v7 = v192;
        v9 = v196;
        goto LABEL_208;
      }

      v202 = v64;
      v66 = *(*(&v210 + 1) + 8 * v64);
      if (!isa_nsdictionary(v66))
      {
        v62 = v65;
        goto LABEL_156;
      }

      v190 = v65;
      v67 = [v66 objectForKeyedSubscript:@"Interfaces"];
      v189 = v67;
      v194 = v61;
      if (isa_nsarray(v67))
      {
        v208 = 0u;
        v209 = 0u;
        v206 = 0u;
        v207 = 0u;
        v68 = v67;
        v69 = [v68 countByEnumeratingWithState:&v206 objects:v226 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = 0;
          v72 = 0;
          v73 = *v207;
          do
          {
            for (m = 0; m != v70; ++m)
            {
              if (*v207 != v73)
              {
                objc_enumerationMutation(v68);
              }

              v75 = *(*(&v206 + 1) + 8 * m);
              if ([@"Cellular" isEqualToString:v75])
              {
                v71 = 1;
              }

              else
              {
                v72 |= [@"WiFi" isEqualToString:v75];
              }
            }

            v70 = [v68 countByEnumeratingWithState:&v206 objects:v226 count:16];
          }

          while (v70);
        }

        else
        {
          v71 = 0;
          v72 = 0;
        }

        a1 = v197;
        v10 = v198;
        v58 = v184;
      }

      else
      {
        v71 = 1;
        v72 = 1;
        a1 = v197;
      }

      if (v71 & v194)
      {
        v162 = ne_log_obj();
        if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          v163 = objc_opt_class();
          *buf = 138412546;
          v232 = v163;
          v233 = 2112;
          v234 = @"Cellular";
          v164 = v163;
          v165 = "%@ initWithAlwaysOnVPNPayload: multiple %@ configurations detected";
          goto LABEL_215;
        }

LABEL_217:
        v8 = v191;
        v7 = v192;
        v9 = v196;
        v169 = v47;

LABEL_219:
        goto LABEL_181;
      }

      if (v72 & v199)
      {
        v162 = ne_log_obj();
        if (!os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_217;
        }

        v166 = objc_opt_class();
        *buf = 138412546;
        v232 = v166;
        v233 = 2112;
        v234 = @"WiFi";
        v164 = v166;
        v165 = "%@ initWithAlwaysOnVPNPayload: multiple %@ configurations detected";
LABEL_215:
        v167 = v162;
        v168 = 22;
LABEL_221:
        _os_log_error_impl(&dword_1BA83C000, v167, OS_LOG_TYPE_ERROR, v165, buf, v168);

        goto LABEL_217;
      }

      if (((v71 | v72) & 1) == 0)
      {
        v162 = ne_log_obj();
        if (!os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_217;
        }

        v181 = objc_opt_class();
        *buf = 138412290;
        v232 = v181;
        v164 = v181;
        v165 = "%@ initWithAlwaysOnVPNPayload: invalid tunnel configuration interfaces";
        v167 = v162;
        v168 = 12;
        goto LABEL_221;
      }

      v76 = [v10 objectForKeyedSubscript:@"VPNSubType"];
      if (v72)
      {
        v77 = @"WiFi";
      }

      else
      {
        v77 = @"Cellular";
      }

      v188 = v76;
      v78 = v66;
      v79 = v77;
      v80 = objc_alloc_init(NEVPNProtocolIKEv2);
      v81 = ne_log_large_obj();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1BA83C000, v81, OS_LOG_TYPE_DEBUG, "NEConfiguration configureAOVPNTunnelFromTunnelDict called", buf, 2u);
      }

      v187 = v79;
      if (!v80)
      {
        v92 = ne_log_obj();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1BA83C000, v92, OS_LOG_TYPE_ERROR, "NEConfiguration configureAOVPNTunnelFromTunnelDict failed to create object", buf, 2u);
        }

        v89 = 0;
        goto LABEL_141;
      }

      v82 = [v78 objectForKeyedSubscript:@"RemoteAddress"];
      [(NEVPNProtocol *)v80 setServerAddress:v82];

      v83 = [v78 objectForKeyedSubscript:@"AuthName"];
      [(NEVPNProtocol *)v80 setUsername:v83];

      [(NEVPNProtocol *)v80 setDisconnectOnIdleTimeout:0];
      [(NEVPNProtocol *)v80 setDisconnectOnSleep:0];
      [(NEVPNProtocol *)v80 setIdentityReferenceInternal:0];
      v80->_wakeForRekey = 1;
      [(NEVPNProtocolIKEv2 *)v80 setNatKeepAliveOffloadEnable:2];
      if ([(__CFString *)v79 isEqualToString:@"WiFi"])
      {
        v84 = 20;
      }

      else
      {
        v84 = 110;
      }

      [(NEVPNProtocolIKEv2 *)v80 setNatKeepAliveOffloadInterval:v84];
      [(NEVPNProtocol *)v80 setIncludeAllNetworks:0];
      [(NEVPNProtocol *)v80 setExcludeLocalNetworks:0];
      [(NEVPNProtocol *)v80 setExcludeCellularServices:0];
      [(NEVPNProtocol *)v80 setExcludeAPNs:0];
      [(NEVPNProtocol *)v80 setExcludeDeviceCommunication:0];
      [(NEVPNProtocol *)v80 setEnforceRoutes:0];
      [(NEVPNProtocol *)v80 setSliceUUID:0];
      v85 = [v78 objectForKeyedSubscript:@"ExtendedAuthEnabled"];
      v86 = isa_nsnumber(v85);

      if (v86)
      {
        v87 = [v78 objectForKeyedSubscript:@"ExtendedAuthEnabled"];
        -[NEVPNProtocolIPSec setUseExtendedAuthentication:](v80, "setUseExtendedAuthentication:", [v87 BOOLValue]);
      }

      v88 = [v78 objectForKeyedSubscript:@"AuthPassword"];
      v89 = v88;
      if (v88)
      {
        if (isa_nsdata(v88))
        {
          v90 = v78;
          v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v89 encoding:4];

          v89 = v91;
        }

        else
        {
          if ((isa_nsstring(v89) & 1) == 0)
          {
            v106 = ne_log_obj();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              v107 = objc_opt_class();
              v108 = v78;
              v109 = v107;
              v110 = objc_opt_class();
              *buf = 138412546;
              v232 = v107;
              v233 = 2112;
              v234 = v110;
              v111 = v110;
              _os_log_error_impl(&dword_1BA83C000, v106, OS_LOG_TYPE_ERROR, "%@ configureAOVPNTunnelFromTunnelDict: unsupported password data type %@", buf, 0x16u);

              v78 = v108;
              v58 = v184;
            }

            goto LABEL_140;
          }

          v90 = v78;
        }

        v93 = [NEKeychainItem alloc];
        keychainDomain = v80->super.super._keychainDomain;
        v96 = objc_getProperty(v80, v95, 88, 1);
        v97 = [(NEKeychainItem *)v93 initWithPassword:v89 domain:keychainDomain accessGroup:v96];
        [(NEVPNProtocol *)v80 setPasswordKeychainItem:v97];

        v78 = v90;
        v58 = v184;
      }

      if ([(NEVPNProtocolIPSec *)v80 useExtendedAuthentication])
      {
        v98 = [(NEVPNProtocol *)v80 username];
        if (v98)
        {
          v99 = v98;
          v100 = [(NEVPNProtocol *)v80 passwordKeychainItem];

          if (!v100)
          {
            v106 = ne_log_obj();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              v121 = objc_opt_class();
              *buf = 138413058;
              v232 = v121;
              v233 = 2112;
              v234 = @"AuthPassword";
              v235 = 2112;
              v236 = @"AuthName";
              v237 = 2112;
              v238 = @"ExtendedAuthEnabled";
              v122 = v121;
              v123 = v106;
              v124 = "%@ configureAOVPNTunnelFromTunnelDict: %@ required for %@ with %@ method";
              v125 = 42;
              goto LABEL_162;
            }

            goto LABEL_140;
          }
        }
      }

      v101 = [v78 objectForKeyedSubscript:@"LocalIdentifier"];
      [(NEVPNProtocolIPSec *)v80 setLocalIdentifier:v101];

      v102 = [v78 objectForKeyedSubscript:@"RemoteIdentifier"];
      [(NEVPNProtocolIPSec *)v80 setRemoteIdentifier:v102];

      v103 = [v78 objectForKeyedSubscript:@"AuthenticationMethod"];

      if (v103)
      {
        if (!isa_nsstring(v103))
        {
          v105 = ne_log_obj();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
          {
            v132 = objc_opt_class();
            *buf = 138412546;
            v232 = v132;
            v233 = 2112;
            v234 = v103;
            v133 = v132;
            _os_log_error_impl(&dword_1BA83C000, v105, OS_LOG_TYPE_ERROR, "%@ configureAOVPNTunnelFromTunnelDict: invalid authen type %@.", buf, 0x16u);
          }

          v62 = 0;
          v89 = v103;
          goto LABEL_142;
        }

        if (([(__CFString *)v103 isEqualToString:@"SharedSecret"]& 1) != 0)
        {
          v104 = 2;
        }

        else
        {
          v104 = [(__CFString *)v103 isEqualToString:@"Certificate"];
        }

        [(NEVPNProtocolIPSec *)v80 setAuthenticationMethod:v104];
      }

      v89 = [v78 objectForKeyedSubscript:@"ProtocolType"];

      if (!v89 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([(__CFString *)v89 isEqualToString:@"IKEv2"]& 1) == 0)
      {
        v106 = ne_log_obj();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          v126 = objc_opt_class();
          *buf = 138412546;
          v232 = v126;
          v233 = 2112;
          v234 = v89;
          v122 = v126;
          v123 = v106;
          v124 = "%@ configureAOVPNTunnelFromTunnelDict: invalid ProtocolType (%@),  IKEv2 expected";
          v125 = 22;
          goto LABEL_162;
        }

LABEL_140:

LABEL_141:
        v62 = 0;
        goto LABEL_142;
      }

      v112 = [v78 objectForKeyedSubscript:@"SharedSecret"];

      if (v112)
      {
        if (isa_nsdata(v112))
        {
          v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v112 encoding:4];
        }

        else
        {
          v89 = v112;
          if ((isa_nsstring(v112) & 1) == 0)
          {
            v106 = ne_log_obj();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              v135 = objc_opt_class();
              v183 = v135;
              v136 = objc_opt_class();
              *buf = 138412546;
              v232 = v135;
              v233 = 2112;
              v234 = v136;
              v137 = v136;
              _os_log_error_impl(&dword_1BA83C000, v106, OS_LOG_TYPE_ERROR, "%@ configureAOVPNTunnelFromTunnelDict: unsupported shared secret data type %@", buf, 0x16u);
            }

            goto LABEL_140;
          }
        }

        v127 = [NEKeychainItem alloc];
        v182 = v80->super.super._keychainDomain;
        v129 = objc_getProperty(v80, v128, 88, 1);
        v130 = [(NEKeychainItem *)v127 initWithPassword:v89 domain:v182 accessGroup:v129];
        [(NEVPNProtocolIPSec *)v80 setSharedSecretKeychainItem:v130];
      }

      else
      {
        v89 = 0;
      }

      if ([(NEVPNProtocolIPSec *)v80 authenticationMethod]== NEVPNIKEAuthenticationMethodSharedSecret)
      {
        v131 = [(NEVPNProtocolIPSec *)v80 sharedSecretKeychainItem];

        if (!v131)
        {
          v106 = ne_log_obj();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            v134 = objc_opt_class();
            *buf = 138412802;
            v232 = v134;
            v233 = 2112;
            v234 = @"SharedSecret";
            v235 = 2112;
            v236 = @"SharedSecret";
            v122 = v134;
            v123 = v106;
            v124 = "%@ configureAOVPNTunnelFromTunnelDict: %@ required with %@ method";
            v125 = 32;
LABEL_162:
            _os_log_error_impl(&dword_1BA83C000, v123, OS_LOG_TYPE_ERROR, v124, buf, v125);
          }

          goto LABEL_140;
        }
      }

      if (!ingestIKEv2Dict(v188, v78, v80))
      {
        goto LABEL_141;
      }

      v62 = v80;
LABEL_142:

      if (!v62)
      {
        v190 = 0;
        v8 = v191;
        v7 = v192;
        v9 = v196;
        a1 = v197;
        v10 = v198;
        v169 = v47;
        goto LABEL_219;
      }

      v10 = v198;
      if (v72)
      {
        [v58 setObject:v62 forKey:@"AlwaysOnVPNInterfaceWiFi"];
        v113 = [v78 objectForKeyedSubscript:@"PayloadCertificateUUID"];

        if (v113)
        {
          v114 = [v78 objectForKeyedSubscript:@"PayloadCertificateUUID"];
          [v196 addCertificatePending:v114 certificateTag:@"_PayloadCertificateRefForWifi"];
        }

        if (v71)
        {
          v115 = [(NEVPNProtocolIKEv2 *)v62 copy];
          v116 = [MEMORY[0x1E696AFB0] UUID];
          [v115 setIdentifier:v116];

          [v58 setObject:v115 forKey:@"AlwaysOnVPNInterfaceCellular"];
          v199 = 1;
LABEL_150:
          v117 = [v78 objectForKeyedSubscript:@"PayloadCertificateUUID"];

          v118 = v78;
          v63 = v185;
          v60 = v186;
          v119 = v189;
          if (v117)
          {
            v120 = [v118 objectForKeyedSubscript:@"PayloadCertificateUUID"];
            [v196 addCertificatePending:v120 certificateTag:@"_PayloadCertificateRefForCellular"];
          }

          v61 = 1;
          goto LABEL_155;
        }

        v199 = 1;
      }

      else if (v71)
      {
        [v58 setObject:v62 forKey:@"AlwaysOnVPNInterfaceCellular"];
        goto LABEL_150;
      }

      v63 = v185;
      v60 = v186;
      v119 = v189;
      v61 = v194;
LABEL_155:

      v65 = v62;
LABEL_156:
      v64 = v202 + 1;
    }

    while (v202 + 1 != v193);
    v138 = [v60 countByEnumeratingWithState:&v210 objects:v227 count:16];
    v193 = v138;
  }

  while (v138);
  v139 = v61 | v199;

  v8 = v191;
  v7 = v192;
  v9 = v196;
  if ((v139 & 1) == 0)
  {
    goto LABEL_200;
  }

LABEL_208:
  [v204 setInterfaceProtocolMapping:v58];
  v159 = ne_log_obj();
  if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
  {
    v178 = objc_opt_class();
    v203 = v178;
    v179 = [v204 interfaceProtocolMapping];
    *buf = 138412802;
    v232 = v178;
    v233 = 2112;
    v234 = v179;
    v180 = v179;
    v235 = 2112;
    v236 = v197;
    _os_log_debug_impl(&dword_1BA83C000, v159, OS_LOG_TYPE_DEBUG, "%@ initWithAlwaysOnVPNPayload: aovpn tunnel configs %@, self %@", buf, 0x20u);
  }

  v141 = v197;
  a1 = v141;

LABEL_182:
  v140 = v205;
LABEL_205:

LABEL_206:
  v157 = *MEMORY[0x1E69E9840];
  return v141;
}

- (NSObject)initWithContentFilterPayload:(void *)a3 configurationName:(uint64_t)a4 grade:
{
  v109 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  if (!a1)
  {
    v21 = 0;
    goto LABEL_20;
  }

  v10 = v8;
  v11 = [v10 payloadAtom];
  v12 = ne_log_large_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v106 = objc_opt_class();
    v4 = v106;
    _os_log_debug_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEBUG, "%@ initWithContentFilterPayload", buf, 0xCu);
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  v13 = [v11 objectForKeyedSubscript:@"FilterType"];
  if (v13)
  {
    v4 = [v11 objectForKeyedSubscript:@"FilterType"];
    if (([@"Plugin" isEqualToString:v4] & 1) == 0)
    {

LABEL_16:
      v20 = ne_log_obj();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v28 = objc_opt_class();
      *buf = 138412290;
      v106 = v28;
      v26 = v28;
      v27 = "%@ initWithContentFilterPayload: empty payload atom or plugin type, or wrong filter type";
LABEL_26:
      _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);

      goto LABEL_17;
    }
  }

  v14 = [v11 objectForKeyedSubscript:@"PluginBundleID"];

  if (v13)
  {
  }

  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = [a1 initWithName:v9 grade:a4];
  if (v15)
  {
    a1 = v15;
    v16 = objc_alloc_init(NEContentFilter);
    [a1 setContentFilter:v16];

    v17 = [a1 contentFilter];

    if (!v17)
    {
      v20 = ne_log_obj();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v25 = objc_opt_class();
      *buf = 138412290;
      v106 = v25;
      v26 = v25;
      v27 = "%@ initWithContentFilterPayload failed, can't create content filter";
      goto LABEL_26;
    }

    v18 = [v11 objectForKeyedSubscript:@"FilterGrade"];
    if (isa_nsstring(v18))
    {
      if ([v18 isEqualToString:@"firewall"])
      {
        v19 = 1;
      }

      else
      {
        if (([v18 isEqualToString:@"inspector"] & 1) == 0)
        {
          v50 = ne_log_obj();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v106 = v18;
            _os_log_error_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_ERROR, "Invalid filter grade: %@", buf, 0xCu);
          }

          goto LABEL_71;
        }

        v19 = 2;
      }

      v29 = [a1 contentFilter];
      [v29 setGrade:v19];
    }

    v30 = objc_alloc_init(NEFilterProviderConfiguration);
    v31 = [a1 contentFilter];
    [v31 setProvider:v30];

    v32 = [a1 contentFilter];
    v33 = [v32 provider];

    if (v33)
    {
      v34 = [v11 objectForKeyedSubscript:@"PluginBundleID"];
      v35 = [a1 contentFilter];
      v36 = [v35 provider];
      [v36 setPluginType:v34];

      v37 = [a1 contentFilter];
      v38 = [v37 provider];
      v40 = v38;
      if (v38)
      {
        objc_setProperty_atomic_copy(v38, v39, @"com.apple.managed.vpn.shared", 96);
      }

      v41 = [a1 contentFilter];
      v42 = [v41 provider];
      v43 = [v42 pluginType];
      [a1 setApplication:v43];

      v44 = [a1 contentFilter];
      v45 = [v44 provider];
      v46 = [v45 pluginType];
      [a1 setApplicationIdentifier:v46];

      v47 = [v11 objectForKeyedSubscript:@"Enabled"];
      if (isa_nsnumber(v47))
      {
        v48 = [v11 objectForKeyedSubscript:@"Enabled"];
        v49 = [v48 BOOLValue];

        if (!v49)
        {
LABEL_40:
          v54 = [a1 contentFilter];
          v50 = [v54 provider];

          v55 = [v11 objectForKeyedSubscript:@"VendorConfig"];
          [v50 setVendorConfiguration:v55];

          v56 = [v11 objectForKeyedSubscript:@"ServerAddress"];
          [v50 setServerAddress:v56];

          v57 = [v11 objectForKeyedSubscript:@"UserName"];
          [v50 setUsername:v57];

          v58 = [v11 objectForKeyedSubscript:@"Organization"];
          [v50 setOrganization:v58];

          v59 = [v11 objectForKeyedSubscript:@"FilterDataProviderDesignatedRequirement"];
          [v50 setDataProviderDesignatedRequirement:v59];

          v60 = [v11 objectForKeyedSubscript:@"FilterDataProviderBundleIdentifier"];
          [v50 setFilterDataProviderBundleIdentifier:v60];

          v61 = [v11 objectForKeyedSubscript:@"FilterPacketProviderDesignatedRequirement"];
          [v50 setPacketProviderDesignatedRequirement:v61];

          v62 = [v11 objectForKeyedSubscript:@"FilterPacketProviderBundleIdentifier"];
          [v50 setFilterPacketProviderBundleIdentifier:v62];

          v63 = [v11 objectForKeyedSubscript:@"FilterSockets"];
          v64 = isa_nsnumber(v63);

          if (v64)
          {
            v65 = [v11 objectForKeyedSubscript:@"FilterSockets"];
            -[NSObject setFilterSockets:](v50, "setFilterSockets:", [v65 BOOLValue]);
          }

          v66 = [v11 objectForKeyedSubscript:@"FilterPackets"];
          v67 = isa_nsnumber(v66);

          if (v67)
          {
            v68 = [v11 objectForKeyedSubscript:@"FilterPackets"];
            -[NSObject setFilterPackets:](v50, "setFilterPackets:", [v68 BOOLValue]);
          }

          v69 = [v11 objectForKeyedSubscript:@"DisableDefaultDrop"];
          v70 = isa_nsnumber(v69);

          if (v70)
          {
            v71 = [v11 objectForKeyedSubscript:@"DisableDefaultDrop"];
            -[NSObject setDisableDefaultDrop:](v50, "setDisableDefaultDrop:", [v71 BOOLValue]);
          }

          v72 = [v11 objectForKeyedSubscript:@"FilterBrowsers"];
          v73 = isa_nsnumber(v72);

          if (v73)
          {
            v74 = [v11 objectForKeyedSubscript:@"FilterBrowsers"];
            -[NSObject setFilterBrowsers:](v50, "setFilterBrowsers:", [v74 BOOLValue]);
          }

          if (([v50 filterSockets]& 1) == 0 && ([v50 filterBrowsers]& 1) == 0 && ([v50 filterPackets]& 1) == 0)
          {
            v75 = [a1 contentFilter];
            [v75 setEnabled:0];
          }

          v76 = [v11 objectForKeyedSubscript:@"Password"];
          if (v76)
          {
            v77 = v76;
            v78 = [v50 username];
            v103 = v18;
            if (isa_nsdata(v77))
            {
              v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v77 encoding:4];

              v77 = v79;
            }

            else if ((isa_nsstring(v77) & 1) == 0)
            {
              v94 = ne_log_obj();
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                v98 = objc_opt_class();
                v100 = v98;
                v99 = objc_opt_class();
                *buf = 138412546;
                v106 = v98;
                v107 = 2112;
                v108 = v99;
                v102 = v99;
                _os_log_error_impl(&dword_1BA83C000, v94, OS_LOG_TYPE_ERROR, "%@ initWithContentFilterPayload: unsupported password data type %@", buf, 0x16u);
              }

              v21 = 0;
              v18 = v103;
              goto LABEL_72;
            }

            v80 = v77;
            v82 = [NEKeychainItem alloc];
            if (v50)
            {
              Property = objc_getProperty(v50, v81, 96, 1);
            }

            else
            {
              Property = 0;
            }

            v84 = Property;
            v85 = [(NEKeychainItem *)v82 initWithPassword:v80 domain:1 accessGroup:v84];

            [(NEKeychainItem *)v85 syncUsingConfiguration:a1 accountName:v78 passwordType:0 identifierSuffix:0];
            v86 = [(NEKeychainItem *)v85 persistentReference];
            [v50 setPasswordReference:v86];

            v18 = v103;
          }

          [v50 setIdentityReference:0];
          v87 = [v11 objectForKeyedSubscript:@"PayloadCertificateUUID"];

          if (v87)
          {
            v89 = [v11 objectForKeyedSubscript:@"PayloadCertificateUUID"];
            if (v50)
            {
              v90 = objc_getProperty(v50, v88, 96, 1);
            }

            else
            {
              v90 = 0;
            }

            v91 = v90;
            [v10 addCertificatePending:v89 certificateTag:@"_PayloadCertificateRef" accessGroup:v91];
          }

          else
          {
            v92 = [v11 objectForKeyedSubscript:@"LocalCertificate"];

            if (!v92)
            {
LABEL_66:
              v93 = ne_log_obj();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
              {
                v95 = objc_opt_class();
                v101 = v95;
                [a1 contentFilter];
                v96 = v104 = v18;
                v97 = [v96 provider];
                *buf = 138412546;
                v106 = v95;
                v107 = 2112;
                v108 = v97;
                _os_log_debug_impl(&dword_1BA83C000, v93, OS_LOG_TYPE_DEBUG, "%@ initWithContentFilterPayload: provider %@", buf, 0x16u);

                v18 = v104;
              }

              v21 = a1;
              goto LABEL_72;
            }

            v89 = [v11 objectForKeyedSubscript:@"LocalCertificate"];
            v91 = setLocalCertificate(v89);
            [v50 setIdentityReference:v91];
          }

          goto LABEL_66;
        }
      }

      else
      {
      }

      v53 = [a1 contentFilter];
      [v53 setEnabled:1];

      goto LABEL_40;
    }

    v50 = ne_log_obj();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = objc_opt_class();
      *buf = 138412290;
      v106 = v51;
      v52 = v51;
      _os_log_error_impl(&dword_1BA83C000, v50, OS_LOG_TYPE_ERROR, "%@ initWithContentFilterPayload failed, can't create provider", buf, 0xCu);
    }

LABEL_71:
    v21 = 0;
LABEL_72:

    goto LABEL_19;
  }

  a1 = ne_log_obj();
  if (!os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_18;
  }

  v24 = objc_opt_class();
  *buf = 138412290;
  v106 = v24;
  v20 = v24;
  _os_log_error_impl(&dword_1BA83C000, a1, OS_LOG_TYPE_ERROR, "%@ initWithContentFilterPayload failed", buf, 0xCu);
LABEL_17:

LABEL_18:
  v21 = 0;
LABEL_19:

LABEL_20:
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)initWithPathControllerPayload:(void *)a3 configurationName:(uint64_t)a4 grade:
{
  v84 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v35 = 0;
    goto LABEL_47;
  }

  v9 = [v7 payloadAtom];
  v10 = ne_log_large_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v79 = objc_opt_class();
    v42 = v79;
    _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "%@ initWithPathControllerPayload", buf, 0xCu);
  }

  if ((isa_nsdictionary(v9) & 1) == 0)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_opt_class();
      *buf = 138412290;
      v79 = v36;
      v37 = v36;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "%@ initWithPathControllerPayload: empty payload atom", buf, 0xCu);
    }

    goto LABEL_45;
  }

  v11 = [v9 objectForKeyedSubscript:@"ApplicationRules"];
  if ((isa_nsarray(v11) & 1) == 0)
  {
    v38 = ne_log_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v49 = objc_opt_class();
      *buf = 138412290;
      v79 = v49;
      v48 = v49;
      _os_log_error_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_ERROR, "%@ initWithPathControllerPayload: ApplicationRules missing", buf, 0xCu);
      goto LABEL_54;
    }

LABEL_39:

LABEL_45:
    v35 = 0;
    goto LABEL_46;
  }

  v69 = a4;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v11 = v11;
  v12 = [v11 countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = v12;
  v14 = *v75;
  v67 = v8;
  v68 = v7;
  v65 = *v75;
  v66 = v9;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v75 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v74 + 1) + 8 * i);
      if ((isa_nsdictionary(v16) & 1) == 0)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v50 = objc_opt_class();
          *buf = 138412290;
          v79 = v50;
          v51 = v50;
          _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%@ initWithPathControllerPayload: ApplicationRules malformed", buf, 0xCu);
        }

LABEL_66:
        v8 = v67;
        v7 = v68;
        v9 = v66;
LABEL_44:

        goto LABEL_45;
      }

      v17 = [v16 objectForKeyedSubscript:@"AppIdentifierMatches"];
      v18 = v17;
      if (v17)
      {
        if ((isa_nsarray(v17) & 1) == 0)
        {
          v19 = ne_log_obj();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v54 = objc_opt_class();
            *buf = 138412290;
            v79 = v54;
            v55 = v54;
            _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "%@ initWithPathControllerPayload: AppIdentifierMatches malformed", buf, 0xCu);
          }

LABEL_43:
          v8 = v67;
          v7 = v68;
          v9 = v66;

          goto LABEL_44;
        }

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v70 objects:v82 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v71;
          while (2)
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v71 != v22)
              {
                objc_enumerationMutation(v19);
              }

              if ((isa_nsstring(*(*(&v70 + 1) + 8 * j)) & 1) == 0)
              {
                v39 = ne_log_obj();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  v52 = objc_opt_class();
                  *buf = 138412290;
                  v79 = v52;
                  v53 = v52;
                  _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, "%@ initWithPathControllerPayload: AppIdentifierMatches malformed", buf, 0xCu);
                }

                v18 = v19;
                goto LABEL_43;
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v70 objects:v82 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        v14 = v65;
      }

      v24 = [v16 objectForKeyedSubscript:@"AllowRoamingCellularData"];
      v25 = v24;
      if (v24 && (isa_nsnumber(v24) & 1) == 0)
      {
        v56 = ne_log_obj();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v61 = objc_opt_class();
          *buf = 138412290;
          v79 = v61;
          v62 = v61;
          _os_log_error_impl(&dword_1BA83C000, v56, OS_LOG_TYPE_ERROR, "%@ initWithPathControllerPayload: AllowRoamingCellularData malformed", buf, 0xCu);
        }

LABEL_65:
        goto LABEL_66;
      }

      v26 = [v16 objectForKeyedSubscript:@"AllowCellularData"];
      v27 = v26;
      if (v26 && (isa_nsnumber(v26) & 1) == 0)
      {
        v57 = ne_log_obj();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v63 = objc_opt_class();
          *buf = 138412290;
          v79 = v63;
          v64 = v63;
          _os_log_error_impl(&dword_1BA83C000, v57, OS_LOG_TYPE_ERROR, "%@ initWithPathControllerPayload: AllowCellularData malformed", buf, 0xCu);
        }

        goto LABEL_65;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v74 objects:v83 count:16];
    v8 = v67;
    v7 = v68;
    v9 = v66;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_29:

  a1 = [a1 initWithName:v8 grade:v69];
  if (!a1)
  {
    v43 = ne_log_obj();
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    v44 = objc_opt_class();
    *buf = 138412546;
    v79 = v44;
    v80 = 2112;
    v81 = v8;
    v45 = v44;
    v46 = "%@ initWithPathControllerPayload: initWithName failed for '%@'";
    goto LABEL_68;
  }

  v28 = objc_alloc_init(NEPathController);
  [a1 setPathController:v28];

  v29 = [a1 pathController];

  if (!v29)
  {
    v43 = ne_log_obj();
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    v60 = objc_opt_class();
    *buf = 138412546;
    v79 = v60;
    v80 = 2112;
    v81 = v8;
    v45 = v60;
    v46 = "%@ initWithPathControllerPayload failed, could not create Path Controller for config '%@'";
LABEL_68:
    _os_log_error_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_ERROR, v46, buf, 0x16u);

LABEL_51:
    v38 = ne_log_obj();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v47 = objc_opt_class();
      *buf = 138412290;
      v79 = v47;
      v48 = v47;
      _os_log_debug_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_DEBUG, "%@ initWithPathControllerPayload: failed", buf, 0xCu);
LABEL_54:

      goto LABEL_39;
    }

    goto LABEL_39;
  }

  v30 = [a1 pathController];
  [v30 setEnabled:1];

  v31 = [a1 pathController];
  v33 = v31;
  if (v31)
  {
    objc_setProperty_atomic_copy(v31, v32, v11, 32);
  }

  v34 = ne_log_obj();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v58 = objc_opt_class();
    *buf = 138412290;
    v79 = v58;
    v59 = v58;
    _os_log_debug_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_DEBUG, "%@ initWithPathControllerPayload: done", buf, 0xCu);
  }

  a1 = a1;
  v35 = a1;
LABEL_46:

LABEL_47:
  v40 = *MEMORY[0x1E69E9840];
  return v35;
}

- (id)initWithDNSProxyPayload:(id)a1 configurationName:(void *)a2 grade:(void *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v28 = 0;
    goto LABEL_20;
  }

  v7 = [v5 payloadAtom];
  v8 = ne_log_large_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v45 = 138412290;
    v46 = objc_opt_class();
    v40 = v46;
    _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "%@ initWithDNSProxyPayload", &v45, 0xCu);
  }

  if (v7)
  {
    a1 = [a1 initWithName:v6 grade:1];
    if (a1)
    {
      v9 = objc_alloc_init(NEDNSProxy);
      [a1 setDnsProxy:v9];

      v10 = [a1 dnsProxy];

      if (v10)
      {
        v11 = [a1 dnsProxy];
        [v11 setEnabled:1];

        v12 = [NEDNSProxyProviderProtocol alloc];
        v13 = [v7 objectForKeyedSubscript:@"AppBundleIdentifier"];
        v14 = [(NEDNSProxyProviderProtocol *)v12 initWithPluginType:v13];
        v15 = [a1 dnsProxy];
        [v15 setProtocol:v14];

        v16 = [a1 dnsProxy];
        v17 = [v16 protocol];

        if (v17)
        {
          v18 = [v7 objectForKeyedSubscript:@"ProviderBundleIdentifier"];
          v19 = [a1 dnsProxy];
          v20 = [v19 protocol];
          [v20 setProviderBundleIdentifier:v18];

          v21 = [v7 objectForKeyedSubscript:@"ProviderConfiguration"];
          v22 = [a1 dnsProxy];
          v23 = [v22 protocol];
          [v23 setProviderConfiguration:v21];

          v24 = [v7 objectForKeyedSubscript:@"ProviderDesignatedRequirement"];
          v25 = [a1 dnsProxy];
          v26 = [v25 protocol];
          [v26 setDesignatedRequirement:v24];

          v27 = ne_log_obj();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v42 = objc_opt_class();
            v45 = 138412290;
            v46 = v42;
            v43 = v42;
            _os_log_debug_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_DEBUG, "%@ initWithDNSProxyPayload: done", &v45, 0xCu);
          }

          a1 = a1;
          v28 = a1;
          goto LABEL_19;
        }

        v29 = ne_log_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v39 = objc_opt_class();
          v45 = 138412290;
          v46 = v39;
          v31 = v39;
          v32 = "%@ initWithDNSProxyPayload failed to allocate protocol";
          goto LABEL_13;
        }

        goto LABEL_18;
      }

      v33 = ne_log_obj();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
LABEL_17:

        v29 = ne_log_obj();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v41 = objc_opt_class();
          v45 = 138412290;
          v46 = v41;
          v31 = v41;
          _os_log_debug_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_DEBUG, "%@ initWithDNSProxyPayload: failed", &v45, 0xCu);
          goto LABEL_24;
        }

        goto LABEL_18;
      }

      v44 = objc_opt_class();
      v45 = 138412546;
      v46 = v44;
      v47 = 2112;
      v48 = v6;
      v35 = v44;
      v36 = "%@ initWithDNSProxyPayload failed, can't create dnsProxy for config '%@'";
    }

    else
    {
      v33 = ne_log_obj();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v34 = objc_opt_class();
      v45 = 138412546;
      v46 = v34;
      v47 = 2112;
      v48 = v6;
      v35 = v34;
      v36 = "%@ initWithDNSProxyPayload: initWithName failed for '%@'";
    }

    _os_log_error_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_ERROR, v36, &v45, 0x16u);

    goto LABEL_17;
  }

  v29 = ne_log_obj();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = objc_opt_class();
    v45 = 138412290;
    v46 = v30;
    v31 = v30;
    v32 = "%@ initWithDNSProxyPayload: empty payload atom";
LABEL_13:
    _os_log_error_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_ERROR, v32, &v45, 0xCu);
LABEL_24:
  }

LABEL_18:

  v28 = 0;
LABEL_19:

LABEL_20:
  v37 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)initWithDNSSettingsPayload:(void *)a3 configurationName:(uint64_t)a4 grade:
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v20 = 0;
    goto LABEL_50;
  }

  v9 = v7;
  v10 = [v9 payloadAtom];
  v11 = ne_log_large_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v61 = objc_opt_class();
    v44 = v61;
    _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "%@ initWithDNSSettingsPayload", buf, 0xCu);
  }

  if ((isa_nsdictionary(v10) & 1) == 0)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v49 = objc_opt_class();
      *buf = 138412290;
      v61 = v49;
      v50 = v49;
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "%@ initWithDNSSettingsPayload: empty payload atom", buf, 0xCu);
    }

    v20 = 0;
    goto LABEL_49;
  }

  v12 = [v10 objectForKeyedSubscript:@"DNSSettings"];
  if (isa_nsdictionary(v12))
  {
    v13 = [v10 objectForKeyedSubscript:@"ProhibitDisablement"];
    v14 = isa_nsnumber(v13);

    if (v14)
    {
      v15 = [v10 objectForKeyedSubscript:@"ProhibitDisablement"];
      v16 = [v15 BOOLValue];

      if (v16)
      {
        a4 = 1;
      }
    }

    v17 = v12;
    objc_opt_self();
    v18 = [v17 objectForKeyedSubscript:@"DNSProtocol"];
    if (isa_nsstring(v18))
    {
      if ([v18 isEqualToString:@"HTTPS"])
      {
        v19 = off_1E7F046B8;
      }

      else
      {
        if (![v18 isEqualToString:@"TLS"])
        {
          v21 = 0;
LABEL_19:

          if (!v21)
          {
            v38 = ne_log_obj();
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_44;
            }

            v39 = objc_opt_class();
            *buf = 138412290;
            v61 = v39;
            v40 = v39;
            v41 = "%@ initWithDNSSettingsPayload: failed to parse DNSSettings";
            v42 = v38;
            v43 = 12;
LABEL_53:
            _os_log_error_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);

LABEL_44:
            v23 = ne_log_obj();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v51 = objc_opt_class();
              *buf = 138412290;
              v61 = v51;
              v52 = v51;
              _os_log_debug_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEBUG, "%@ initWithDNSSettingsPayload: failed", buf, 0xCu);
            }

            goto LABEL_46;
          }

          v24 = [v17 objectForKeyedSubscript:@"PayloadCertificateUUID"];

          if (v24)
          {
            v25 = [v17 objectForKeyedSubscript:@"PayloadCertificateUUID"];
            [v9 addCertificatePending:v25 certificateTag:@"_PayloadCertificateRef"];
          }

          else
          {
            v45 = [v17 objectForKeyedSubscript:@"LocalCertificate"];

            if (!v45)
            {
              goto LABEL_23;
            }

            v46 = [v21 dnsProtocol];
            if (v46 != 3 && v46 != 2)
            {
              goto LABEL_23;
            }

            v59 = v21;
            v25 = [v17 objectForKeyedSubscript:@"LocalCertificate"];
            v58 = setLocalCertificate(v25);
            [v59 setIdentityReference:v58];
          }

LABEL_23:
          v26 = [a1 initWithName:v8 grade:a4];
          if (!v26)
          {
            v38 = ne_log_obj();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v55 = objc_opt_class();
              *buf = 138412546;
              v61 = v55;
              v62 = 2112;
              v63 = v8;
              v56 = v55;
              _os_log_error_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_ERROR, "%@ initWithDNSSettingsPayload: initWithName failed for '%@'", buf, 0x16u);
            }

            a1 = 0;
            goto LABEL_44;
          }

          a1 = v26;
          v27 = objc_alloc_init(NEDNSSettingsBundle);
          [a1 setDnsSettings:v27];

          v28 = [a1 dnsSettings];

          if (v28)
          {
            v29 = [a1 dnsSettings];
            [v29 setSettings:v21];

            v30 = [v17 objectForKeyedSubscript:@"AllowFailover"];
            if (isa_nsnumber(v30))
            {
              v31 = [v17 objectForKeyedSubscript:@"AllowFailover"];
              v32 = [v31 BOOLValue];

              if (!v32)
              {
LABEL_29:
                v34 = [NEOnDemandRule createOnDemandRulesFromLegacyDictionary:v10];
                v35 = [a1 dnsSettings];
                [v35 setOnDemandRules:v34];

                v36 = [a1 dnsSettings];
                [v36 setEnabled:1];

                v37 = ne_log_obj();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  v53 = objc_opt_class();
                  *buf = 138412290;
                  v61 = v53;
                  v54 = v53;
                  _os_log_debug_impl(&dword_1BA83C000, v37, OS_LOG_TYPE_DEBUG, "%@ initWithDNSSettingsPayload: done", buf, 0xCu);
                }

                a1 = a1;
                v20 = a1;
                goto LABEL_48;
              }

              v30 = [a1 dnsSettings];
              v33 = [v30 settings];
              [v33 setAllowFailover:1];
            }

            goto LABEL_29;
          }

          v38 = ne_log_obj();
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_44;
          }

          v57 = objc_opt_class();
          *buf = 138412546;
          v61 = v57;
          v62 = 2112;
          v63 = v8;
          v40 = v57;
          v41 = "%@ initWithDNSSettingsPayload failed, could not create DNS Settings for config '%@'";
          v42 = v38;
          v43 = 22;
          goto LABEL_53;
        }

        v19 = off_1E7F046C0;
      }
    }

    else
    {
      v19 = off_1E7F046F8;
    }

    v21 = [objc_alloc(*v19) initFromLegacyDictionary:v17];
    goto LABEL_19;
  }

  v21 = ne_log_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = objc_opt_class();
    *buf = 138412290;
    v61 = v22;
    v23 = v22;
    _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "%@ initWithDNSSettingsPayload: DNSSettings missing", buf, 0xCu);
LABEL_46:
  }

  v20 = 0;
LABEL_48:

LABEL_49:
LABEL_50:

  v47 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)initWithRelayPayload:(void *)a3 configurationName:(uint64_t)a4 grade:
{
  v173 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v91 = 0;
    goto LABEL_136;
  }

  v130 = v7;
  v9 = [v130 payloadAtom];
  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v95 = objc_opt_class();
    *buf = 138412290;
    v172 = v95;
    _os_log_debug_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEBUG, "%@ initWithRelayPayload", buf, 0xCu);
  }

  if ((isa_nsdictionary(v9) & 1) == 0)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v103 = objc_opt_class();
      *buf = 138412290;
      v172 = v103;
      v104 = v103;
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "%@ initWithRelayPayload failed, empty payload atom", buf, 0xCu);
    }

    v91 = 0;
    goto LABEL_135;
  }

  v11 = [v9 objectForKeyedSubscript:@"Relays"];
  if ((isa_nsarray(v11) & 1) == 0)
  {
    log = ne_log_obj();
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
LABEL_133:
      v91 = 0;
      goto LABEL_134;
    }

    v92 = objc_opt_class();
    *buf = 138412290;
    v172 = v92;
    v93 = v92;
    v94 = "%@ initWithRelayPayload failed, relays missing";
LABEL_128:
    _os_log_error_impl(&dword_1BA83C000, log, OS_LOG_TYPE_ERROR, v94, buf, 0xCu);

    goto LABEL_133;
  }

  a1 = [a1 initWithName:v8 grade:a4];

  if (!a1)
  {
    log = ne_log_obj();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v108 = objc_opt_class();
      *buf = 138412290;
      v172 = v108;
      v109 = v108;
      _os_log_error_impl(&dword_1BA83C000, log, OS_LOG_TYPE_ERROR, "%@ initWithRelayPayload failed, cannot initialize", buf, 0xCu);
    }

    a1 = 0;
    goto LABEL_133;
  }

  v12 = objc_alloc_init(NERelayConfiguration);
  [a1 setRelay:v12];

  v13 = [a1 relay];

  if (!v13)
  {
    log = ne_log_obj();
    if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_133;
    }

    v110 = objc_opt_class();
    *buf = 138412290;
    v172 = v110;
    v93 = v110;
    v94 = "%@ initWithRelayPayload failed, cannot create relay";
    goto LABEL_128;
  }

  v119 = v9;
  v114 = v8;
  log = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = [v11 count];
  v120 = v14;
  v121 = v11;
  if (!v14)
  {
LABEL_72:
    v55 = [a1 relay];
    [v55 setRelays:log];

    v56 = [v119 objectForKeyedSubscript:@"MatchDomains"];
    if (isa_nsarray(v56))
    {
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v57 = v56;
      v58 = [v57 countByEnumeratingWithState:&v143 objects:v166 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v144;
LABEL_75:
        v61 = 0;
        while (1)
        {
          if (*v144 != v60)
          {
            objc_enumerationMutation(v57);
          }

          if (!isa_nsstring(*(*(&v143 + 1) + 8 * v61)))
          {
            break;
          }

          if (v59 == ++v61)
          {
            v59 = [v57 countByEnumeratingWithState:&v143 objects:v166 count:16];
            if (v59)
            {
              goto LABEL_75;
            }

            goto LABEL_81;
          }
        }
      }

      else
      {
LABEL_81:

        v62 = [a1 relay];
        [v62 setMatchDomains:v57];
        v57 = v62;
      }

      v11 = v121;
    }

    v17 = [v119 objectForKeyedSubscript:@"ExcludedDomains"];
    if (isa_nsarray(v17))
    {
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v63 = v17;
      v64 = [v63 countByEnumeratingWithState:&v139 objects:v165 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v140;
LABEL_86:
        v67 = 0;
        while (1)
        {
          if (*v140 != v66)
          {
            objc_enumerationMutation(v63);
          }

          if (!isa_nsstring(*(*(&v139 + 1) + 8 * v67)))
          {
            break;
          }

          if (v65 == ++v67)
          {
            v65 = [v63 countByEnumeratingWithState:&v139 objects:v165 count:16];
            if (v65)
            {
              goto LABEL_86;
            }

            goto LABEL_92;
          }
        }
      }

      else
      {
LABEL_92:

        v68 = [a1 relay];
        [v68 setExcludedDomains:v63];
        v63 = v68;
      }

      v11 = v121;
    }

    v69 = [v119 objectForKeyedSubscript:@"MatchFQDNs"];
    if (isa_nsarray(v69))
    {
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v70 = v69;
      v71 = [v70 countByEnumeratingWithState:&v135 objects:v164 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = *v136;
LABEL_97:
        v74 = 0;
        while (1)
        {
          if (*v136 != v73)
          {
            objc_enumerationMutation(v70);
          }

          if (!isa_nsstring(*(*(&v135 + 1) + 8 * v74)))
          {
            break;
          }

          if (v72 == ++v74)
          {
            v72 = [v70 countByEnumeratingWithState:&v135 objects:v164 count:16];
            if (v72)
            {
              goto LABEL_97;
            }

            goto LABEL_103;
          }
        }
      }

      else
      {
LABEL_103:

        v75 = [a1 relay];
        [v75 setMatchFQDNs:v70];
        v70 = v75;
      }

      v11 = v121;
    }

    v76 = [v119 objectForKeyedSubscript:@"ExcludedFQDNs"];
    v118 = v56;
    if (isa_nsarray(v76))
    {
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v77 = v76;
      v78 = [v77 countByEnumeratingWithState:&v131 objects:v163 count:16];
      if (v78)
      {
        v79 = v78;
        v80 = *v132;
LABEL_108:
        v81 = 0;
        while (1)
        {
          if (*v132 != v80)
          {
            objc_enumerationMutation(v77);
          }

          if (!isa_nsstring(*(*(&v131 + 1) + 8 * v81)))
          {
            break;
          }

          if (v79 == ++v81)
          {
            v79 = [v77 countByEnumeratingWithState:&v131 objects:v163 count:16];
            if (v79)
            {
              goto LABEL_108;
            }

            goto LABEL_114;
          }
        }
      }

      else
      {
LABEL_114:

        v82 = [a1 relay];
        [v82 setExcludedFQDNs:v77];
        v77 = v82;
      }

      v11 = v121;
    }

    v83 = [v119 objectForKeyedSubscript:@"AllowDNSFailover"];
    if (isa_nsnumber(v83))
    {
      v84 = [v119 objectForKeyedSubscript:@"AllowDNSFailover"];
      v85 = [v84 BOOLValue];

      if (!v85)
      {
        goto LABEL_120;
      }

      v83 = [a1 relay];
      [v83 setAllowDNSFailover:1];
    }

LABEL_120:
    v86 = [NEOnDemandRule createOnDemandRulesFromLegacyDictionary:v119];
    v87 = [a1 relay];
    [v87 setOnDemandRules:v86];

    v88 = [v119 objectForKeyedSubscript:@"Enabled"];
    if (isa_nsnumber(v88))
    {
      v89 = [v119 objectForKeyedSubscript:@"Enabled"];
      v90 = [v89 BOOLValue];

      if (!v90)
      {
LABEL_139:
        v99 = [v119 objectForKeyedSubscript:@"UIToggleEnabled"];
        if (isa_nsnumber(v99))
        {
          v100 = [v119 objectForKeyedSubscript:@"UIToggleEnabled"];
          v101 = [v100 BOOLValue];

          if (!v101)
          {
            goto LABEL_144;
          }
        }

        else
        {
        }

        v102 = [a1 relay];
        [v102 setUiToggleEnabled:1];

LABEL_144:
        v91 = a1;

        v16 = v118;
        goto LABEL_151;
      }
    }

    else
    {
    }

    v98 = [a1 relay];
    [v98 setEnabled:1];

    goto LABEL_139;
  }

  v15 = 0;
  v113 = a1;
  while (1)
  {
    v16 = [v11 objectAtIndexedSubscript:v15];
    if ((isa_nsdictionary(v16) & 1) == 0)
    {
      break;
    }

    v126 = v15;
    v17 = [v16 objectForKeyedSubscript:@"HTTP3RelayURL"];
    v128 = [v16 objectForKeyedSubscript:@"HTTP2RelayURL"];
    if ((isa_nsstring(v17) & 1) == 0 && (isa_nsstring(v128) & 1) == 0)
    {
      v107 = ne_log_obj();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        v111 = objc_opt_class();
        *buf = 138412290;
        v172 = v111;
        v112 = v111;
        _os_log_error_impl(&dword_1BA83C000, v107, OS_LOG_TYPE_ERROR, "%@ initWithRelayPayload failed, relay dictionary has no URL", buf, 0xCu);
      }

      goto LABEL_150;
    }

    v129 = objc_alloc_init(NERelay);
    if (isa_nsstring(v17))
    {
      v18 = [MEMORY[0x1E695DFF8] URLWithString:v17];
      [(NERelay *)v129 setHTTP3RelayURL:v18];
    }

    if (isa_nsstring(v128))
    {
      v19 = [MEMORY[0x1E695DFF8] URLWithString:v128];
      [(NERelay *)v129 setHTTP2RelayURL:v19];
    }

    v20 = [v16 objectForKeyedSubscript:@"DNSOverHTTPSURL"];
    if (isa_nsstring(v20))
    {
      v21 = [MEMORY[0x1E695DFF8] URLWithString:v20];
      [(NERelay *)v129 setDnsOverHTTPSURL:v21];
    }

    v22 = [v16 objectForKeyedSubscript:@"SyntheticDNSAnswerIPv4Prefix"];
    if (isa_nsstring(v22))
    {
      [(NERelay *)v129 setSyntheticDNSAnswerIPv4Prefix:v22];
    }

    v123 = v22;
    v124 = v20;
    v23 = [v16 objectForKeyedSubscript:@"SyntheticDNSAnswerIPv6Prefix"];
    if (isa_nsstring(v23))
    {
      [(NERelay *)v129 setSyntheticDNSAnswerIPv6Prefix:v23];
    }

    v122 = v23;
    v127 = [v16 objectForKeyedSubscript:@"AdditionalHTTPHeaderFields"];
    if (isa_nsdictionary(v127))
    {
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      v24 = [v127 allKeys];
      v25 = [v24 countByEnumeratingWithState:&v159 objects:v170 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v160;
        while (2)
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v160 != v27)
            {
              objc_enumerationMutation(v24);
            }

            if (!isa_nsstring(*(*(&v159 + 1) + 8 * i)))
            {
              v29 = v16;
              v30 = 0;
              goto LABEL_34;
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v159 objects:v170 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v29 = v16;
      v30 = 1;
LABEL_34:

      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v31 = [v127 allValues];
      v32 = [v31 countByEnumeratingWithState:&v155 objects:v169 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v156;
        while (2)
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v156 != v34)
            {
              objc_enumerationMutation(v31);
            }

            if (!isa_nsstring(*(*(&v155 + 1) + 8 * j)))
            {

              v11 = v121;
              v16 = v29;
              goto LABEL_45;
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v155 objects:v169 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }
      }

      v11 = v121;
      v16 = v29;
      if (v30)
      {
        [(NERelay *)v129 setAdditionalHTTPHeaderFields:v127];
      }
    }

LABEL_45:
    [(NERelay *)v129 setIdentityReference:0];
    v36 = [v16 objectForKeyedSubscript:@"PayloadCertificateUUID"];

    if (v36)
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", @"_PayloadCertificateRef", v126];
      v38 = [v16 objectForKeyedSubscript:@"PayloadCertificateUUID"];
      [v130 addCertificatePending:v38 certificateTag:v37];

      v39 = [v16 objectForKeyedSubscript:@"PayloadIntermediateCertificateUUIDs"];
      if (isa_nsarray(v39) && [v39 count] <= 4)
      {
        v115 = v37;
        v116 = v17;
        v117 = v16;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v39 = v39;
        v40 = [v39 countByEnumeratingWithState:&v151 objects:v168 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = 0;
          v43 = *v152;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v152 != v43)
              {
                objc_enumerationMutation(v39);
              }

              v45 = *(*(&v151 + 1) + 8 * k);
              if (isa_nsstring(v45))
              {
                v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u-%u", @"_PayloadCertificateRef", v126, v42];
                [v130 addCertificatePending:v45 certificateTag:v46];
                v42 = (v42 + 1);
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v151 objects:v168 count:16];
          }

          while (v41);
        }

        a1 = v113;
        v11 = v121;
        v17 = v116;
        v16 = v117;
        v37 = v115;
      }

      goto LABEL_60;
    }

    v47 = [v16 objectForKeyedSubscript:@"LocalCertificate"];

    if (v47)
    {
      v37 = [v16 objectForKeyedSubscript:@"LocalCertificate"];
      v39 = setLocalCertificate(v37);
      [(NERelay *)v129 setIdentityReference:v39];
LABEL_60:
    }

    v48 = [v16 objectForKeyedSubscript:@"RawPublicKeys"];
    if (isa_nsarray(v48))
    {
      v49 = v16;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v50 = v48;
      v51 = [v50 countByEnumeratingWithState:&v147 objects:v167 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v148;
LABEL_64:
        v54 = 0;
        while (1)
        {
          if (*v148 != v53)
          {
            objc_enumerationMutation(v50);
          }

          if (!isa_nsdata(*(*(&v147 + 1) + 8 * v54)))
          {
            break;
          }

          if (v52 == ++v54)
          {
            v52 = [v50 countByEnumeratingWithState:&v147 objects:v167 count:16];
            if (v52)
            {
              goto LABEL_64;
            }

            break;
          }
        }
      }

      [(NERelay *)v129 setRawPublicKeys:v50];
      v11 = v121;
      v16 = v49;
    }

    [log addObject:v129];

    v15 = v126 + 1;
    if (v126 + 1 == v120)
    {
      goto LABEL_72;
    }
  }

  v17 = ne_log_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v105 = objc_opt_class();
    *buf = 138412290;
    v172 = v105;
    v106 = v105;
    _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "%@ initWithRelayPayload failed, relay is not dictionary", buf, 0xCu);
  }

LABEL_150:
  v91 = 0;
LABEL_151:

  v8 = v114;
  v9 = v119;
LABEL_134:

LABEL_135:
LABEL_136:

  v96 = *MEMORY[0x1E69E9840];
  return v91;
}

- (BOOL)isSupportedBySC
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 VPN];
    if (v2)
    {
      v3 = [v1 VPN];
      v4 = [v3 protocol];
      if (v4)
      {
        v5 = [v1 VPN];
        v6 = [v5 protocol];
        if ([v6 type] == 5)
        {
          v1 = 0;
        }

        else
        {
          v7 = [v1 VPN];
          v1 = [v7 tunnelType] != 2 && objc_msgSend(v1, "grade") != 2;
        }
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (uint64_t)applyChangesToSCServiceInPreferences:(void *)a1
{
  v2 = a1;
  v80 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_89;
  }

  if (![(NEConfiguration *)a1 isSupportedBySC])
  {
    v2 = 1;
    goto LABEL_89;
  }

  v4 = [v2 pluginType];
  if (v4)
  {
    v5 = [v2 identifier];
    v6 = SCNetworkServiceCopy(a2, [v5 UUIDString]);

    if (v6)
    {
      Interface = SCNetworkServiceGetInterface(v6);
      if (Interface)
      {
        v8 = Interface;
        InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
        if (CFStringCompare(InterfaceType, *MEMORY[0x1E6982390], 0) == kCFCompareEqualTo)
        {
          v26 = SCNetworkInterfaceGetInterface(v8);
          if (v26)
          {
            v27 = SCNetworkInterfaceGetInterfaceType(v26);
            if (v27)
            {
              if (CFStringCompare(v27, v4, 0) && !SCNetworkServiceRemove(v6))
              {
                v28 = ne_log_obj();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  Error = SCCopyLastError();
                  v76 = 138412546;
                  v77 = v6;
                  v78 = 2112;
                  v79 = Error;
                  _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "Failed to remove SCNetworkService %@: %@", &v76, 0x16u);
                }
              }
            }
          }
        }
      }

      CFRelease(v6);
    }
  }

  v10 = [v2 identifier];
  v11 = SCNetworkServiceCopy(a2, [v10 UUIDString]);

  if (v11)
  {
    Name = SCNetworkServiceGetName(v11);
    v13 = [v2 name];

    if (Name && v13 && !CFStringHasPrefix(Name, v13))
    {
      for (i = [v2 name];
      {
        if (SCNetworkServiceSetName(v11, i))
        {
          v33 = i;
          goto LABEL_36;
        }

        if (SCError() != 1005)
        {
          break;
        }

        v15 = copyNextName(i);
        CFRelease(i);
      }

      v53 = ne_log_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v72 = [v2 name];
        v73 = SCError();
        v74 = SCErrorString(v73);
        v76 = 138412546;
        v77 = v72;
        v78 = 2080;
        v79 = v74;
        _os_log_error_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_ERROR, "Failed to set the serve name for configuration %@: %s", &v76, 0x16u);
      }

      CFRelease(i);
      goto LABEL_85;
    }
  }

  else
  {
    v16 = [v2 VPN];
    v17 = [v16 protocol];
    v18 = [v17 createInterface];

    if (!v18)
    {
      v25 = ne_log_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v71 = [v2 name];
        v76 = 138412290;
        v77 = v71;
        _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "Failed to create interface for configuration %@", &v76, 0xCu);
      }

      v11 = 0;
      goto LABEL_84;
    }

    v11 = SCNetworkServiceCreate(a2, v18);
    CFRelease(v18);
    v19 = [v2 identifier];
    [v19 UUIDString];
    v20 = _SCNetworkServiceSetServiceID();

    if (!v20)
    {
      v25 = ne_log_obj();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
LABEL_84:

LABEL_85:
        v2 = 0;
        goto LABEL_86;
      }

      v29 = [v2 name];
      v30 = SCError();
      v31 = SCErrorString(v30);
      v76 = 138412546;
      v77 = v29;
      v78 = 2080;
      v79 = v31;
      v32 = "Failed to re-set the service ID for configuration %@: %s";
LABEL_78:
      _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, v32, &v76, 0x16u);

      goto LABEL_84;
    }

    v21 = [v2 name];
    v22 = SCNetworkServiceSetName(v11, v21);

    if (!v22)
    {
      v25 = ne_log_obj();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      v29 = [v2 name];
      v54 = SCError();
      v55 = SCErrorString(v54);
      v76 = 138412546;
      v77 = v29;
      v78 = 2080;
      v79 = v55;
      v32 = "Failed to set the service name for configuration %@: %s";
      goto LABEL_78;
    }

    if (!SCNetworkServiceEstablishDefaultConfiguration(v11))
    {
      v25 = ne_log_obj();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      v29 = [v2 name];
      v58 = SCError();
      v59 = SCErrorString(v58);
      v76 = 138412546;
      v77 = v29;
      v78 = 2080;
      v79 = v59;
      v32 = "Failed to set up default service configuration for configuration %@: %s";
      goto LABEL_78;
    }

    v23 = SCNetworkServiceGetName(v11);
    if (v23)
    {
      v24 = CFRetain(v23);
    }

    else
    {
      v24 = 0;
    }

    v60 = SCNetworkSetCopyCurrent(a2);
    if (!v60)
    {
LABEL_74:
      if (v24)
      {
        CFRelease(v24);
      }

      v25 = ne_log_obj();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      v29 = [v2 name];
      v64 = SCError();
      v65 = SCErrorString(v64);
      v76 = 138412546;
      v77 = v29;
      v78 = 2080;
      v79 = v65;
      v32 = "Failed to add the network service for configuration %@ to the current network set: %s";
      goto LABEL_78;
    }

    v61 = v60;
    while (!SCNetworkSetAddService(v61, v11))
    {
      if (SCError() != 1005)
      {
        v62 = v24;
LABEL_73:
        CFRelease(v61);
        v24 = v62;
        goto LABEL_74;
      }

      v62 = copyNextName(v24);
      v63 = SCNetworkServiceSetName(v11, v62);
      CFRelease(v24);
      v24 = v62;
      if (!v63)
      {
        goto LABEL_73;
      }
    }

    CFRelease(v61);
    if (v24)
    {
      v33 = v24;
LABEL_36:
      CFRelease(v33);
    }
  }

  v34 = [v2 VPN];
  v35 = SCNetworkServiceSetEnabled(v11, [v34 isEnabled]);

  if (!v35)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_84;
    }

    v29 = [v2 name];
    v45 = SCError();
    v46 = SCErrorString(v45);
    v76 = 138412546;
    v77 = v29;
    v78 = 2080;
    v79 = v46;
    v32 = "SCNetworkServiceSetEnabled failed for configuration %@: %s";
    goto LABEL_78;
  }

  v36 = SCNetworkServiceGetInterface(v11);
  if (!v36)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_84;
    }

    v29 = [v2 name];
    v47 = SCError();
    v48 = SCErrorString(v47);
    v76 = 138412546;
    v77 = v29;
    v78 = 2080;
    v79 = v48;
    v32 = "SCNetworkInterface for configuration %@ is NULL: %s";
    goto LABEL_78;
  }

  v37 = v36;
  v38 = [v2 VPN];
  v25 = [v38 copyLegacyDictionary];

  if (!v25)
  {
    v44 = ne_log_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v49 = [v2 name];
      v76 = 138412290;
      v77 = v49;
      v50 = "Failed to create a legacy dictionary for configuration %@";
      v51 = v44;
      v52 = 12;
LABEL_60:
      _os_log_error_impl(&dword_1BA83C000, v51, OS_LOG_TYPE_ERROR, v50, &v76, v52);
    }

LABEL_83:

    goto LABEL_84;
  }

  if (!SCNetworkInterfaceSetConfiguration(v37, v25))
  {
    v44 = ne_log_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v49 = [v2 name];
      v56 = SCError();
      v57 = SCErrorString(v56);
      v76 = 138412546;
      v77 = v49;
      v78 = 2080;
      v79 = v57;
      v50 = "Failed to set the interface configuration for configuration %@: %s";
      v51 = v44;
      v52 = 22;
      goto LABEL_60;
    }

    goto LABEL_83;
  }

  v39 = [v2 VPN];
  v40 = [v39 protocol];
  v41 = [v40 setServiceProtocolsInService:v11];

  if (!v41)
  {
    goto LABEL_84;
  }

  v42 = [v2 payloadInfo];

  if (v42)
  {
    v43 = [v2 payloadInfo];
    v44 = [v43 copyLegacyDictionary];

    if (v44)
    {
      if (([NEConfiguration setConfiguration:v44 forProtocol:@"com.apple.payload" inService:v11]& 1) != 0)
      {

        goto LABEL_46;
      }

      v66 = ne_log_obj();
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_82;
      }

      v67 = [v2 name];
      v76 = 138412290;
      v77 = v67;
      v68 = "Failed to set the profile payload info for configuration %@";
    }

    else
    {
      v66 = ne_log_obj();
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
LABEL_82:

        goto LABEL_83;
      }

      v67 = [v2 name];
      v76 = 138412290;
      v77 = v67;
      v68 = "Failed to create a legacy profile payload dictionary for configuration %@";
    }

    _os_log_error_impl(&dword_1BA83C000, v66, OS_LOG_TYPE_ERROR, v68, &v76, 0xCu);

    goto LABEL_82;
  }

LABEL_46:

  v2 = 1;
LABEL_86:
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_89:
  v69 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (uint64_t)setConfiguration:(const __CFString *)a3 forProtocol:(const __SCNetworkService *)a4 inService:
{
  v22 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = SCNetworkServiceCopyProtocol(a4, a3);
  v8 = v7;
  if (a2 && !v7)
  {
    if (!SCNetworkServiceAddProtocolType(a4, a3))
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = SCError();
        v18 = 138412546;
        v19 = a3;
        v20 = 2080;
        v21 = SCErrorString(v16);
        _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "SCNetworkServiceAddProtocolType(%@) failed: %s", &v18, 0x16u);
      }

      v9 = 0;
      goto LABEL_19;
    }

    v8 = SCNetworkServiceCopyProtocol(a4, a3);
  }

  if (v8)
  {
    if (a2 && !SCNetworkProtocolSetConfiguration(v8, a2))
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v17 = SCError();
        v18 = 138412546;
        v19 = a3;
        v20 = 2080;
        v21 = SCErrorString(v17);
        v13 = "SCNetworkProtocolSetConfiguration(%@) failed: %s";
        goto LABEL_21;
      }
    }

    else
    {
      if (SCNetworkProtocolSetEnabled(v8, a2 != 0))
      {
        v9 = 1;
LABEL_18:
        CFRelease(v8);
        goto LABEL_19;
      }

      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = SCError();
        v18 = 138412546;
        v19 = a3;
        v20 = 2080;
        v21 = SCErrorString(v12);
        v13 = "SCNetworkProtocolSetEnabled(%@) failed: %s";
LABEL_21:
        _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, v13, &v18, 0x16u);
      }
    }

    v9 = 0;
    goto LABEL_18;
  }

  v9 = 1;
LABEL_19:
  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (uint64_t)updateFromSCService:(void *)a1
{
  v88 = *MEMORY[0x1E69E9840];
  Interface = SCNetworkServiceGetInterface(service);
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:SCNetworkServiceGetName(service)];
  [a1 setName:v5];

  if (Interface)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:SCNetworkInterfaceGetConfiguration(Interface)];
    InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
    v8 = SCNetworkServiceCopyExternalID();
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6982728]];
    if (isa_nsarray(v9))
    {
      v10 = 1;
    }

    else
    {
      v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69827C0]];
      v13 = isa_nsnumber(v12);
      if (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v13;
      }
    }

    [a1 setExternalIdentifier:v8];
    if (CFStringCompare(InterfaceType, *MEMORY[0x1E6982378], 0))
    {
      if (CFStringCompare(InterfaceType, *MEMORY[0x1E6982388], 0))
      {
        if (CFStringCompare(InterfaceType, *MEMORY[0x1E6982390], 0) == kCFCompareEqualTo)
        {
          v14 = SCNetworkInterfaceGetInterface(Interface);
          if (v14)
          {
            v15 = SCNetworkInterfaceGetInterfaceType(v14);
            if (v15)
            {
              v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v15];
              [v6 setObject:v16 forKeyedSubscript:@"__NEVPNPluginType"];

              v17 = 4;
              goto LABEL_16;
            }
          }
        }

LABEL_37:
        v11 = 0;
LABEL_63:

        goto LABEL_64;
      }

      v66 = SCNetworkInterfaceGetInterface(Interface);
      if (!v66)
      {
        goto LABEL_37;
      }

      v67 = SCNetworkInterfaceGetInterfaceType(v66);
      if (CFStringCompare(v67, *MEMORY[0x1E6982380], 0))
      {
        goto LABEL_37;
      }

      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

LABEL_16:
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
    [v6 setObject:v18 forKeyedSubscript:@"__NEVPNProtocolType"];

    Enabled = SCNetworkServiceGetEnabled(service);
    if (v10)
    {
      v20 = [a1 appVPN];
      v21 = [v20 protocol];
      if (v21)
      {
        v22 = v21;
        v23 = [a1 appVPN];
        v24 = [v23 protocol];
        v25 = [v24 identifier];

        if (!v25)
        {
LABEL_21:
          v28 = [a1 appVPN];
          v29 = [v28 protocol];
          v30 = [v29 passwordKeychainItem];

          if (v30)
          {
            v31 = MEMORY[0x1E696AD98];
            v32 = [a1 appVPN];
            v33 = [v32 protocol];
            v34 = [v33 passwordKeychainItem];
            v35 = [v31 numberWithInteger:{objc_msgSend(v34, "domain")}];
            [v6 setObject:v35 forKeyedSubscript:@"__NEVPNKeychainDomain"];
          }

          v36 = [a1 appVPN];
          v37 = [v36 isDisconnectOnDemandEnabled];

          v38 = [[NEVPNApp alloc] initFromLegacyDictionary:v6];
          [a1 setAppVPN:v38];

          v39 = [a1 appVPN];

          if (v39)
          {
            v40 = [a1 appVPN];
            [v40 setEnabled:Enabled != 0];

            v41 = [a1 appVPN];
            goto LABEL_33;
          }

          v77 = ne_log_obj();
          if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_61;
          }

          v86 = 138412290;
          Name = SCNetworkServiceGetName(service);
          v78 = "Failed to initialize an NEVPNApp object from service %@";
          goto LABEL_60;
        }

        v20 = [a1 appVPN];
        v26 = [v20 protocol];
        v27 = [v26 identifier];
        [v6 setObject:v27 forKeyedSubscript:@"__NEVPNProtocolIdentifier"];
      }

      goto LABEL_21;
    }

    v42 = [a1 VPN];
    v43 = [v42 protocol];
    if (v43)
    {
      v44 = v43;
      v45 = [a1 VPN];
      v46 = [v45 protocol];
      v47 = [v46 identifier];

      if (!v47)
      {
LABEL_29:
        v50 = [a1 VPN];
        v51 = [v50 protocol];
        v52 = [v51 passwordKeychainItem];

        if (v52)
        {
          v53 = MEMORY[0x1E696AD98];
          v54 = [a1 VPN];
          v55 = [v54 protocol];
          v56 = [v55 passwordKeychainItem];
          v57 = [v53 numberWithInteger:{objc_msgSend(v56, "domain")}];
          [v6 setObject:v57 forKeyedSubscript:@"__NEVPNKeychainDomain"];
        }

        v58 = [a1 VPN];
        v37 = [v58 isDisconnectOnDemandEnabled];

        v59 = [[NEVPN alloc] initFromLegacyDictionary:v6];
        [a1 setVPN:v59];

        v60 = [a1 VPN];

        if (v60)
        {
          v61 = [a1 VPN];
          [v61 setEnabled:Enabled != 0];

          v41 = [a1 VPN];
LABEL_33:
          v62 = v41;
          [v41 setDisconnectOnDemandEnabled:v37];

          v63 = [a1 VPN];
          v64 = [v63 protocol];

          if (v64)
          {
            v65 = [a1 VPN];
            goto LABEL_40;
          }

          v68 = [a1 appVPN];
          v69 = [v68 protocol];

          if (v69)
          {
            v65 = [a1 appVPN];
LABEL_40:
            v70 = v65;
            v71 = [v65 protocol];
            [v71 updateWithServiceProtocolsFromService:service];

            v72 = SCPreferencesCreateWithAuthorization(*MEMORY[0x1E695E480], @"NE migrate passwords", 0, 0);
            if (!v72)
            {
              v76 = ne_log_obj();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                v85 = SCError();
                v86 = 136315138;
                Name = SCErrorString(v85);
                _os_log_error_impl(&dword_1BA83C000, v76, OS_LOG_TYPE_ERROR, "Failed to create a SCPreferencesRef for migrating passwords: %s", &v86, 0xCu);
              }

              goto LABEL_54;
            }

            v73 = v72;
            v74 = [a1 VPN];

            if (v74)
            {
              v75 = [a1 VPN];
            }

            else
            {
              v79 = [a1 appVPN];

              if (!v79)
              {
LABEL_53:
                CFRelease(v73);
LABEL_54:
                v77 = [NEConfiguration copyConfigurationForProtocol:service inService:?];
                if (v77)
                {
                  v82 = [[NEProfileIngestionPayloadInfo alloc] initFromLegacyDictionary:v77];
                  [a1 setPayloadInfo:v82];
                }

                v11 = 1;
                goto LABEL_62;
              }

              v75 = [a1 appVPN];
            }

            v80 = v75;
            v81 = [v75 protocol];
            [v81 migratePasswordsFromPreferences:v73];

            goto LABEL_53;
          }

          v77 = ne_log_obj();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            v86 = 138412290;
            Name = SCNetworkServiceGetName(service);
            v78 = "Failed to initialize the NEVPNProtocol from service %@";
            goto LABEL_60;
          }

LABEL_61:
          v11 = 0;
LABEL_62:

          goto LABEL_63;
        }

        v77 = ne_log_obj();
        if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_61;
        }

        v86 = 138412290;
        Name = SCNetworkServiceGetName(service);
        v78 = "Failed to initialize an NEVPN object from service %@";
LABEL_60:
        _os_log_error_impl(&dword_1BA83C000, v77, OS_LOG_TYPE_ERROR, v78, &v86, 0xCu);
        goto LABEL_61;
      }

      v42 = [a1 VPN];
      v48 = [v42 protocol];
      v49 = [v48 identifier];
      [v6 setObject:v49 forKeyedSubscript:@"__NEVPNProtocolIdentifier"];
    }

    goto LABEL_29;
  }

  v11 = 1;
LABEL_64:
  v83 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (CFDictionaryRef)copyConfigurationForProtocol:(const __SCNetworkService *)a3 inService:
{
  objc_opt_self();
  v5 = SCNetworkServiceCopyProtocol(a3, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  Configuration = SCNetworkProtocolGetConfiguration(v5);
  v8 = Configuration;
  if (Configuration)
  {
    CFRetain(Configuration);
  }

  CFRelease(v6);
  return v8;
}

@end