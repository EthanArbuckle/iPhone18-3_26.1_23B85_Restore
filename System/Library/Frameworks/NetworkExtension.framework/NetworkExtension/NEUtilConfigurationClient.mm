@interface NEUtilConfigurationClient
+ (id)allClients;
+ (id)clientWithName:(id)name;
+ (void)removeClientWithName:(id)name;
- (BOOL)addOnDemandRuleWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)addRelayWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)createConfigurationWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)disconnectOnDemandEnabled;
- (BOOL)enabled;
- (BOOL)onDemandEnabled;
- (BOOL)onDemandUserOverrideDisabled;
- (BOOL)removeOnDemandRuleWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)removeRelayWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)setAppPushParameters:(id)parameters errorStr:(id *)str;
- (BOOL)setCommonParameters:(id)parameters errorStr:(id *)str;
- (BOOL)setDNSParameters:(id)parameters errorStr:(id *)str;
- (BOOL)setDNSProxyWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)setFilterPluginWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)setHotspotProviderParameters:(id)parameters errorStr:(id *)str;
- (BOOL)setIPSecParameters:(id)parameters errorStr:(id *)str;
- (BOOL)setPasswordWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)setProtocolWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)setProviderTypeWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)setProxyParameters:(id)parameters errorStr:(id *)str;
- (BOOL)setProxyServer:(id)server errorStr:(id *)str;
- (BOOL)setRelayConditionsWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)setSharedSecretWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)unsetAppPushParameters:(id)parameters errorStr:(id *)str;
- (BOOL)unsetCommonParameters:(id)parameters errorStr:(id *)str;
- (BOOL)unsetDNSParameters:(id)parameters errorStr:(id *)str;
- (BOOL)unsetDNSProxyWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)unsetFilterPluginParameters:(id)parameters errorStr:(id *)str;
- (BOOL)unsetHotspotProviderParameters:(id)parameters errorStr:(id *)str;
- (BOOL)unsetIPSecParameters:(id)parameters errorStr:(id *)str;
- (BOOL)unsetPasswordWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)unsetProxyParameters:(id)parameters errorStr:(id *)str;
- (BOOL)unsetProxyServer:(id)server errorStr:(id *)str;
- (BOOL)unsetRelayConditionsWithParameters:(id)parameters errorStr:(id *)str;
- (BOOL)unsetSharedSecretWithParameters:(id)parameters errorStr:(id *)str;
- (NEAppPush)appPush;
- (NEDNSProxyProviderProtocol)dnsProxyConfiguration;
- (NEDNSSettingsBundle)dnsSettingsBundle;
- (NEFilterProviderConfiguration)filterConfiguration;
- (NEUtilConfigurationClient)initWithClientName:(id)name;
- (NSArray)onDemandRules;
- (id)hotspot;
- (id)initInternalWithClientName:(id)name;
- (id)protocolForParameters:(id)parameters;
- (id)relayConfiguration;
- (id)urlFilterConfiguration;
- (uint64_t)setPPPParameters:(void *)parameters errorStr:;
- (uint64_t)unsetPPPParameters:(void *)parameters errorStr:;
- (void)addAppRuleWithParameters:(void *)parameters errorStr:;
- (void)addPathRuleWithParameters:(__CFString *)parameters errorStr:;
- (void)dealloc;
- (void)handleCommand:(int)command forConfigWithName:(id)name withParameters:(id)parameters completionHandler:(id)handler;
- (void)loadConfigurationsForceRefresh:(void *)refresh completionHandler:;
- (void)removeAppRuleWithParameters:(void *)parameters errorStr:;
- (void)removePathRuleWithParameters:(void *)parameters errorStr:;
- (void)setAlwaysOnParameters:(__CFString *)parameters errorStr:;
- (void)setOnDemandRules:(id)rules;
- (void)setPathControllerWithParameters:(void *)parameters errorStr:;
- (void)setURLFilterPluginWithParameters:(void *)parameters errorStr:;
- (void)swapConfigurationTypeWithParameters:(void *)parameters errorStr:;
- (void)unsetAlwaysOnParameters:(__CFString *)parameters errorStr:;
- (void)unsetURLFilterPluginParameters:(void *)parameters errorStr:;
@end

@implementation NEUtilConfigurationClient

- (void)handleCommand:(int)command forConfigWithName:(id)name withParameters:(id)parameters completionHandler:(id)handler
{
  v105 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  parametersCopy = parameters;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (command == 37)
  {
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke;
    v90[3] = &unk_1E7F0B588;
    v90[4] = self;
    v13 = handlerCopy;
    v91 = handlerCopy;
    v15 = v90;
    if (self)
    {
      objc_setProperty_atomic(self, v14, 0, 48);
      Property = objc_getProperty(self, v16, 24, 1);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __69__NEUtilConfigurationClient_reloadIdentityListWithCompletionHandler___block_invoke;
      v99 = &unk_1E7F0AC30;
      selfCopy3 = self;
      v101 = v15;
      [Property copyIdentities:0 fromDomain:0 withCompletionQueue:MEMORY[0x1E69E96A0] handler:buf];
    }

    goto LABEL_32;
  }

  if (command != 36)
  {
    if ((command & 0xFFFFFFFE) == 0x1E)
    {
      v74 = handlerCopy;
      v18 = [parametersCopy objectForKeyedSubscript:@"configuration-file-path"];
      v73 = v18;
      v19 = v18;
      v11 = v74;
      if (v18)
      {
        if (([v18 hasPrefix:@"/"] & 1) == 0)
        {
          v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"Configuration file path must be an absolute file path.", 0}];
          (v74)[2](v74, v41);

LABEL_70:
          v11 = v74;
          goto LABEL_33;
        }

        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v84 = __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_2;
        v85 = &unk_1E7F0AC58;
        commandCopy = command;
        v20 = nameCopy;
        v86 = v20;
        selfCopy2 = self;
        v88 = v74;
        v69 = v19;
        v75 = v20;
        v68 = v83;
        if (!self)
        {
LABEL_69:

          goto LABEL_70;
        }

        v72 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
        v71 = v69;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v22 = [defaultManager isReadableFileAtPath:v71];

        if (!v22)
        {
          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          v43 = [defaultManager2 fileExistsAtPath:v71];

          if (v43)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"File %@ is unreadable\n", v71];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"File %@ not found\n", v71];
          }
          v44 = ;
          v45 = 0;
          v70 = 0;
          v67 = 0;
          goto LABEL_47;
        }

        v96[0] = 0;
        v66 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v71 options:0 error:v96];
        v65 = v96[0];
        if (!v66)
        {
          v46 = ne_log_obj();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v71;
            _os_log_error_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_ERROR, "%@ Failed to read data from %@", buf, 0x16u);
          }

          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to read data from %@\n", v71];
          v67 = 0;

          v45 = 0;
          v70 = 0;
          goto LABEL_47;
        }

        v23 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v66 error:0];
        [v23 setClass:objc_opt_class() forClassName:@"NEVPNAppRule"];
        [v23 setClass:objc_opt_class() forClassName:@"NEVPNProtocolPlugin"];
        v64 = [v23 decodeInt64ForKey:@"Version"];
        v24 = MEMORY[0x1E695DFD8];
        v25 = objc_opt_class();
        v26 = objc_opt_class();
        v27 = objc_opt_class();
        v28 = objc_opt_class();
        v29 = [v24 setWithObjects:{v25, v26, v27, v28, objc_opt_class(), 0}];
        v70 = [v23 decodeObjectOfClasses:v29 forKey:@"Index"];
        v67 = v23;

        if (!v70 || v64)
        {
LABEL_46:

          v47 = v67;
          v44 = 0;
          v45 = v67;
LABEL_47:
          v48 = v44;

          v49 = v44;
          v50 = v45;
          if (v49)
          {
            v51 = 0;
            v52 = 0;
          }

          else
          {
            if (v70)
            {
              v52 = [v70 objectForKeyedSubscript:@"AppGroupMap"];
              v94 = 0u;
              v95 = 0u;
              v92 = 0u;
              v93 = 0u;
              v53 = [v70 objectForKeyedSubscript:@"ConfigurationProperties"];
              v54 = [v53 countByEnumeratingWithState:&v92 objects:buf count:16];
              if (v54)
              {
                v55 = *v93;
LABEL_52:
                v56 = 0;
                while (1)
                {
                  if (*v93 != v55)
                  {
                    objc_enumerationMutation(v53);
                  }

                  v57 = *(*(&v92 + 1) + 8 * v56);
                  v58 = v50;
                  v59 = objc_opt_class();
                  uUIDString = [v57 UUIDString];
                  v51 = [v58 decodeObjectOfClass:v59 forKey:uUIDString];

                  if (v51)
                  {
                    if (!v75 || ![v75 length] || (objc_msgSend(v51, "name"), v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v75, "isEqualToString:", v61), v61, v62))
                    {
                      identifier = [v51 identifier];
                      [v72 setObject:v51 forKeyedSubscript:identifier];

                      if ([v75 length])
                      {
                        break;
                      }
                    }
                  }

                  if (v54 == ++v56)
                  {
                    v54 = [v53 countByEnumeratingWithState:&v92 objects:buf count:16];
                    if (v54)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_62;
                  }
                }
              }

              else
              {
LABEL_62:
                v51 = 0;
              }

              v49 = 0;
            }

            else
            {
              v53 = ne_log_obj();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = self;
                _os_log_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_INFO, "%@ empty configurations", buf, 0xCu);
              }

              v51 = 0;
              v52 = 0;
              v49 = @"Empty configuration";
            }
          }

          v84(v68, v49, v72, v51, v52);

          goto LABEL_69;
        }

        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v30 = v70;
        v31 = [v30 countByEnumeratingWithState:&v92 objects:buf count:16];
        if (v31)
        {
          v32 = 0;
          v33 = 0;
          v34 = *v93;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v93 != v34)
              {
                objc_enumerationMutation(v30);
              }

              v36 = *(*(&v92 + 1) + 8 * i);
              if (!v32)
              {
                v32 = [v30 objectForKeyedSubscript:*(*(&v92 + 1) + 8 * i)];
              }

              allKeys = [v32 allKeys];
              if (!v33)
              {
                v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
              }

              [v33 setObject:allKeys forKeyedSubscript:v36];
            }

            v31 = [v30 countByEnumeratingWithState:&v92 objects:buf count:16];
          }

          while (v31);

          if (!v32 || !v33)
          {
            v70 = v30;
            goto LABEL_45;
          }

          v97[0] = @"ConfigurationProperties";
          v97[1] = @"UserMap";
          *v103 = v32;
          v104 = v33;
          v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v97 count:2];
        }

        else
        {
          v33 = 0;
          v32 = 0;
          v70 = v30;
        }

LABEL_45:
        goto LABEL_46;
      }
    }

    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_3;
    v78[3] = &unk_1E7F0AD28;
    v13 = v11;
    v81 = v11;
    v78[4] = self;
    commandCopy2 = command;
    v79 = parametersCopy;
    v80 = nameCopy;
    v38 = v80;
    v39 = v78;
    if (self)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __73__NEUtilConfigurationClient_loadConfigurationWithName_completionHandler___block_invoke;
      v99 = &unk_1E7F0AC08;
      selfCopy3 = self;
      v101 = v38;
      v102 = v39;
      [(NEUtilConfigurationClient *)self loadConfigurationsForceRefresh:buf completionHandler:?];
    }

LABEL_32:
    v11 = v13;
    goto LABEL_33;
  }

  clientName = [(NEUtilConfigurationClient *)self clientName];
  [NEUtilConfigurationClient removeClientWithName:clientName];

  v11[2](v11, MEMORY[0x1E695E0F0]);
LABEL_33:

  v40 = *MEMORY[0x1E69E9840];
}

void __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v23 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%-5s %-100s %-9s %-6s\n", "ID", "Subject Summary", "Validity", "Domain"];
  v3 = 0;
  v4 = *MEMORY[0x1E695E480];
  while (1)
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v2, 48, 1);
    }

    if (v3 >= [Property count])
    {
      break;
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = objc_getProperty(v7, v6, 48, 1);
    }

    v8 = [v7 objectAtIndexedSubscript:v3];
    v9 = [v8 objectForKeyedSubscript:@"certificate-data"];
    if (v9)
    {
      v10 = SecCertificateCreateWithData(v4, v9);
      if (v10)
      {
        v11 = v10;
        IsValid = NECertificateDateIsValid(v10);
        v13 = [v8 objectForKeyedSubscript:@"domain"];
        v14 = [v13 intValue];

        v15 = SecCertificateCopySubjectSummary(v11);
        v16 = v15;
        if (v15)
        {
          v17 = [(__CFString *)v15 UTF8String];
          v18 = off_1E7F0ADC8[IsValid - 1];
          v19 = "user";
          if (!v14)
          {
            v19 = "system";
          }

          [v23 appendFormat:@"%-5lu %-100s %-9s %-6s\n", v3, v17, off_1E7F0ADC8[IsValid - 1], v19];
        }

        CFRelease(v11);
      }
    }

    ++v3;
  }

  v20 = *(a1 + 40);
  v24[0] = v23;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  (*(v20 + 16))(v20, v21);

  v22 = *MEMORY[0x1E69E9840];
}

void __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v9)
  {
    goto LABEL_2;
  }

  v15 = *(a1 + 56);
  if (v15 != 31)
  {
    if (v15 != 30)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported command", v39];
      goto LABEL_21;
    }

    v16 = *(a1 + 32);
    if (v16 && [v16 length])
    {
      if (v11)
      {
        v9 = [v11 description];
LABEL_2:
        [v13 addObject:v9];

        goto LABEL_3;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"Configuration '%@' not found", *(a1 + 32)];
      v9 = LABEL_21:;
      if (!v9)
      {
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    if ([v12 count])
    {
      if (*(a1 + 40))
      {
        v26 = MEMORY[0x1E696AD60];
        v27 = v12;
        v28 = [[v26 alloc] initWithCapacity:0];
        [v28 appendString:@"{"];
        [v28 appendPrettyObject:v27 withName:@"app-group-map" andIndent:0 options:0];

        [v28 appendString:@"\n}"];
      }

      else
      {
        v28 = 0;
      }

      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", v28];
      [v13 addObject:v29];
    }

    if (!v10 || ![v10 count])
    {
      v9 = @"Unreadable or empty file";
      goto LABEL_2;
    }

    v40 = v12;
    v41 = v11;
    v42 = a1;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v30 = v10;
    v31 = v10;
    v32 = [v31 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v48;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v48 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = MEMORY[0x1E696AEC0];
          v37 = [v31 objectForKeyedSubscript:*(*(&v47 + 1) + 8 * i)];
          v38 = [v36 stringWithFormat:@"%@\n", v37];
          [v13 addObject:v38];
        }

        v33 = [v31 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v33);
    }

    v10 = v30;
LABEL_37:
    v11 = v41;
    a1 = v42;
    v12 = v40;
    goto LABEL_3;
  }

  if (v10 && [v10 count])
  {
    v40 = v12;
    v41 = v11;
    v42 = a1;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v44;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [v17 objectForKeyedSubscript:*(*(&v43 + 1) + 8 * j)];
          v23 = MEMORY[0x1E696AEC0];
          v24 = [v22 name];
          v25 = [v23 stringWithFormat:@"%@\n", v24];
          [v13 addObject:v25];
        }

        v19 = [v17 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v19);
    }

    goto LABEL_37;
  }

LABEL_3:
  (*(*(a1 + 48) + 16))();

  v14 = *MEMORY[0x1E69E9840];
}

void __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v303[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v293 = 0;
  v294 = &v293;
  v295 = 0x3032000000;
  v296 = __Block_byref_object_copy__24640;
  v297 = __Block_byref_object_dispose__24641;
  v298 = 0;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  newValue = v5;
  if (v6)
  {
    v9 = *(a1 + 56);
    v303[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v303 count:1];
    (*(v9 + 16))(v9, v10);

    goto LABEL_188;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    objc_setProperty_atomic(v11, v7, v5, 56);
  }

  switch(*(a1 + 64))
  {
    case 1:
      if (v5)
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Configuration with name %@ already exists", *(a1 + 48)];
        v13 = v294[5];
        v294[5] = v12;
      }

      else
      {
        v221 = *(a1 + 32);
        v222 = *(a1 + 40);
        v223 = (v294 + 5);
        v292 = v294[5];
        [v221 createConfigurationWithParameters:v222 errorStr:&v292];
        objc_storeStrong(v223, v292);
      }

      goto LABEL_185;
    case 2:
      if (!v5)
      {
        goto LABEL_112;
      }

      v80 = *(a1 + 32);
      v81 = *(a1 + 40);
      v82 = (v294 + 5);
      v284 = v294[5];
      [v80 setProtocolWithParameters:v81 errorStr:&v284];
      objc_storeStrong(v82, v284);
      goto LABEL_185;
    case 3:
      if (!v5)
      {
        goto LABEL_112;
      }

      v115 = *(a1 + 32);
      v116 = *(a1 + 40);
      v117 = (v294 + 5);
      v283 = v294[5];
      [v115 setFilterPluginWithParameters:v116 errorStr:&v283];
      objc_storeStrong(v117, v283);
      goto LABEL_185;
    case 4:
      if (!v5)
      {
        goto LABEL_112;
      }

      v77 = *(a1 + 32);
      v78 = *(a1 + 40);
      v79 = (v294 + 5);
      v282 = v294[5];
      [v77 unsetFilterPluginParameters:v78 errorStr:&v282];
      objc_storeStrong(v79, v282);
      goto LABEL_185;
    case 5:
      if (!v5)
      {
        goto LABEL_112;
      }

      v101 = *(a1 + 32);
      v102 = *(a1 + 40);
      v103 = (v294 + 5);
      v279 = v294[5];
      [v101 setDNSProxyWithParameters:v102 errorStr:&v279];
      objc_storeStrong(v103, v279);
      goto LABEL_185;
    case 6:
      if (!v5)
      {
        goto LABEL_112;
      }

      v112 = *(a1 + 32);
      v113 = *(a1 + 40);
      v114 = (v294 + 5);
      v278 = v294[5];
      [v112 unsetDNSProxyWithParameters:v113 errorStr:&v278];
      objc_storeStrong(v114, v278);
      goto LABEL_185;
    case 7:
      if (!v5)
      {
        goto LABEL_112;
      }

      v133 = *(a1 + 32);
      v134 = *(a1 + 40);
      v135 = (v294 + 5);
      v277 = v294[5];
      [v133 setCommonParameters:v134 errorStr:&v277];
      objc_storeStrong(v135, v277);
      goto LABEL_185;
    case 8:
      if (!v5)
      {
        goto LABEL_112;
      }

      v136 = *(a1 + 32);
      v137 = *(a1 + 40);
      v138 = (v294 + 5);
      v276 = v294[5];
      [v136 unsetCommonParameters:v137 errorStr:&v276];
      objc_storeStrong(v138, v276);
      goto LABEL_185;
    case 9:
      if (!v5)
      {
        goto LABEL_112;
      }

      v59 = *(a1 + 32);
      v60 = *(a1 + 40);
      v61 = (v294 + 5);
      v275 = v294[5];
      [v59 setIPSecParameters:v60 errorStr:&v275];
      objc_storeStrong(v61, v275);
      goto LABEL_185;
    case 0xA:
      if (!v5)
      {
        goto LABEL_112;
      }

      v139 = *(a1 + 32);
      v140 = *(a1 + 40);
      v141 = (v294 + 5);
      v274 = v294[5];
      [v139 unsetIPSecParameters:v140 errorStr:&v274];
      objc_storeStrong(v141, v274);
      goto LABEL_185;
    case 0xB:
      if (!v5)
      {
        goto LABEL_112;
      }

      v68 = *(a1 + 32);
      v69 = *(a1 + 40);
      v70 = (v294 + 5);
      v273 = v294[5];
      [(NEUtilConfigurationClient *)v68 setPPPParameters:v69 errorStr:&v273];
      objc_storeStrong(v70, v273);
      goto LABEL_185;
    case 0xC:
      if (!v5)
      {
        goto LABEL_112;
      }

      v104 = *(a1 + 32);
      v105 = *(a1 + 40);
      v106 = (v294 + 5);
      v272 = v294[5];
      [(NEUtilConfigurationClient *)v104 unsetPPPParameters:v105 errorStr:&v272];
      objc_storeStrong(v106, v272);
      goto LABEL_185;
    case 0xD:
      if (!v5)
      {
        goto LABEL_112;
      }

      v95 = *(a1 + 32);
      v96 = *(a1 + 40);
      v97 = (v294 + 5);
      v271 = v294[5];
      [v95 addOnDemandRuleWithParameters:v96 errorStr:&v271];
      objc_storeStrong(v97, v271);
      goto LABEL_185;
    case 0xE:
      if (!v5)
      {
        goto LABEL_112;
      }

      v55 = *(a1 + 32);
      v56 = *(a1 + 40);
      v57 = (v294 + 5);
      v270 = v294[5];
      [v55 removeOnDemandRuleWithParameters:v56 errorStr:&v270];
      objc_storeStrong(v57, v270);
      goto LABEL_185;
    case 0xF:
      if (!v5)
      {
        goto LABEL_112;
      }

      v127 = *(a1 + 32);
      v128 = *(a1 + 40);
      v129 = (v294 + 5);
      v239 = v294[5];
      [v127 setProxyParameters:v128 errorStr:&v239];
      objc_storeStrong(v129, v239);
      goto LABEL_185;
    case 0x10:
      if (!v5)
      {
        goto LABEL_112;
      }

      v130 = *(a1 + 32);
      v131 = *(a1 + 40);
      v132 = (v294 + 5);
      v238 = v294[5];
      [v130 unsetProxyParameters:v131 errorStr:&v238];
      objc_storeStrong(v132, v238);
      goto LABEL_185;
    case 0x11:
      if (!v5)
      {
        goto LABEL_112;
      }

      v165 = *(a1 + 32);
      v166 = *(a1 + 40);
      v167 = (v294 + 5);
      v237 = v294[5];
      [v165 setProxyServer:v166 errorStr:&v237];
      objc_storeStrong(v167, v237);
      goto LABEL_185;
    case 0x12:
      if (!v5)
      {
        goto LABEL_112;
      }

      v162 = *(a1 + 32);
      v163 = *(a1 + 40);
      v164 = (v294 + 5);
      v236 = v294[5];
      [v162 unsetProxyServer:v163 errorStr:&v236];
      objc_storeStrong(v164, v236);
      goto LABEL_185;
    case 0x13:
      if (!v5)
      {
        goto LABEL_112;
      }

      v35 = *(a1 + 32);
      v36 = *(a1 + 40);
      v37 = (v294 + 5);
      v241 = v294[5];
      [v35 setDNSParameters:v36 errorStr:&v241];
      objc_storeStrong(v37, v241);
      goto LABEL_185;
    case 0x14:
      if (!v5)
      {
        goto LABEL_112;
      }

      v98 = *(a1 + 32);
      v99 = *(a1 + 40);
      v100 = (v294 + 5);
      v240 = v294[5];
      [v98 unsetDNSParameters:v99 errorStr:&v240];
      objc_storeStrong(v100, v240);
      goto LABEL_185;
    case 0x19:
      if (!v5)
      {
        goto LABEL_112;
      }

      v171 = *(a1 + 32);
      v172 = *(a1 + 40);
      v173 = (v294 + 5);
      v265 = v294[5];
      [(NEUtilConfigurationClient *)v171 addAppRuleWithParameters:v172 errorStr:&v265];
      objc_storeStrong(v173, v265);
      goto LABEL_185;
    case 0x1A:
      if (!v5)
      {
        goto LABEL_112;
      }

      v52 = *(a1 + 32);
      v53 = *(a1 + 40);
      v54 = (v294 + 5);
      v264 = v294[5];
      [(NEUtilConfigurationClient *)v52 removeAppRuleWithParameters:v53 errorStr:&v264];
      objc_storeStrong(v54, v264);
      goto LABEL_185;
    case 0x1B:
      if (!v5)
      {
        goto LABEL_112;
      }

      v92 = *(a1 + 32);
      v93 = *(a1 + 40);
      v94 = (v294 + 5);
      v263 = v294[5];
      [(NEUtilConfigurationClient *)v92 setPathControllerWithParameters:v93 errorStr:&v263];
      objc_storeStrong(v94, v263);
      goto LABEL_185;
    case 0x1C:
      if (!v5)
      {
        goto LABEL_112;
      }

      v62 = *(a1 + 32);
      v63 = *(a1 + 40);
      v64 = (v294 + 5);
      v262 = v294[5];
      [(NEUtilConfigurationClient *)v62 addPathRuleWithParameters:v63 errorStr:&v262];
      objc_storeStrong(v64, v262);
      goto LABEL_185;
    case 0x1D:
      if (!v5)
      {
        goto LABEL_112;
      }

      v118 = *(a1 + 32);
      v119 = *(a1 + 40);
      v120 = (v294 + 5);
      v261 = v294[5];
      [(NEUtilConfigurationClient *)v118 removePathRuleWithParameters:v119 errorStr:&v261];
      objc_storeStrong(v120, v261);
      goto LABEL_185;
    case 0x1E:
      if (v5)
      {
        v58 = [v5 description];
        [v8 addObject:v58];
      }

      else
      {
        v188 = MEMORY[0x1E696AEC0];
        Property = *(a1 + 32);
        if (Property)
        {
          Property = objc_getProperty(Property, v7, 24, 1);
        }

        v190 = Property;
        v191 = [v190 debugDescription];
        v192 = [v188 stringWithFormat:@"%@\n", v191];
        [v8 addObject:v192];

        v194 = *(a1 + 32);
        if (v194)
        {
          v195 = objc_getProperty(v194, v193, 40, 1);
          if (v195)
          {
            v197 = v195;
            v198 = *(a1 + 32);
            if (v198)
            {
              v198 = objc_getProperty(v198, v196, 40, 1);
            }

            v199 = v198;
            v200 = [v199 count] == 0;

            if (!v200)
            {
              v259 = 0u;
              v260 = 0u;
              v257 = 0u;
              v258 = 0u;
              v201 = *(a1 + 32);
              if (v201)
              {
                v201 = objc_getProperty(v201, v196, 40, 1);
              }

              v202 = v201;
              v203 = [v202 countByEnumeratingWithState:&v257 objects:v302 count:16];
              if (v203)
              {
                v204 = *v258;
                do
                {
                  for (i = 0; i != v203; ++i)
                  {
                    if (*v258 != v204)
                    {
                      objc_enumerationMutation(v202);
                    }

                    v206 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", *(*(&v257 + 1) + 8 * i)];
                    [v8 addObject:v206];
                  }

                  v203 = [v202 countByEnumeratingWithState:&v257 objects:v302 count:16];
                }

                while (v203);
              }
            }
          }

          v207 = *(a1 + 32);
          if (v207)
          {
            v208 = objc_getProperty(v207, v196, 32, 1);
            if (v208)
            {
              v210 = v208;
              v211 = *(a1 + 32);
              if (v211)
              {
                v211 = objc_getProperty(v211, v209, 32, 1);
              }

              v212 = v211;
              v213 = [v212 count] == 0;

              if (!v213)
              {
                [v8 addObject:@"New Configurations:\n"];
                v255 = 0u;
                v256 = 0u;
                v253 = 0u;
                v254 = 0u;
                v215 = *(a1 + 32);
                if (v215)
                {
                  v215 = objc_getProperty(v215, v214, 32, 1);
                }

                v216 = v215;
                v217 = [v216 countByEnumeratingWithState:&v253 objects:v301 count:16];
                if (v217)
                {
                  v218 = *v254;
                  do
                  {
                    for (j = 0; j != v217; ++j)
                    {
                      if (*v254 != v218)
                      {
                        objc_enumerationMutation(v216);
                      }

                      v220 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n", *(*(&v253 + 1) + 8 * j)];
                      [v8 addObject:v220];
                    }

                    v217 = [v216 countByEnumeratingWithState:&v253 objects:v301 count:16];
                  }

                  while (v217);
                }
              }
            }
          }
        }
      }

      goto LABEL_185;
    case 0x1F:
      v29 = +[NEConfigurationManager sharedManagerForAllUsers];
      v30 = MEMORY[0x1E69E96A0];
      v31 = MEMORY[0x1E69E96A0];
      v250[0] = MEMORY[0x1E69E9820];
      v250[1] = 3221225472;
      v250[2] = __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_2_996;
      v250[3] = &unk_1E7F0ACA8;
      v250[4] = *(a1 + 32);
      v251 = v8;
      v252 = *(a1 + 56);
      [v29 loadIndexWithFilter:0 completionQueue:v30 handler:v250];

      goto LABEL_188;
    case 0x20:
      if (!v5)
      {
        goto LABEL_112;
      }

      v174 = *(a1 + 32);
      if (v174)
      {
        v174 = objc_getProperty(v174, v7, 24, 1);
      }

      v175 = v174;
      v176 = MEMORY[0x1E69E96A0];
      v177 = MEMORY[0x1E69E96A0];
      v244[0] = MEMORY[0x1E69E9820];
      v244[1] = 3221225472;
      v244[2] = __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_3_1013;
      v244[3] = &unk_1E7F0ACD0;
      v245 = *(a1 + 48);
      v178 = v8;
      v179 = *(a1 + 32);
      v246 = v178;
      v247 = v179;
      v248 = v5;
      v249 = *(a1 + 56);
      [v175 saveConfiguration:v248 withCompletionQueue:v176 handler:v244];

      goto LABEL_188;
    case 0x21:
      if (!v5)
      {
        goto LABEL_112;
      }

      v71 = *(a1 + 32);
      if (v71)
      {
        v71 = objc_getProperty(v71, v7, 24, 1);
      }

      v72 = v71;
      v73 = MEMORY[0x1E69E96A0];
      v74 = MEMORY[0x1E69E96A0];
      v285[0] = MEMORY[0x1E69E9820];
      v285[1] = 3221225472;
      v285[2] = __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_988;
      v285[3] = &unk_1E7F0AC80;
      v290 = &v293;
      v75 = *(a1 + 48);
      v76 = *(a1 + 32);
      v286 = v75;
      v287 = v76;
      v288 = v5;
      v289 = *(a1 + 56);
      [v72 removeConfiguration:v288 withCompletionQueue:v73 handler:v285];

      goto LABEL_188;
    case 0x22:
      v83 = [*(a1 + 40) objectForKeyedSubscript:@"profile-file-path"];
      v84 = ne_log_obj();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v300 = v83;
        _os_log_debug_impl(&dword_1BA83C000, v84, OS_LOG_TYPE_DEBUG, "process ingestion command, path %@", buf, 0xCu);
      }

      v85 = [[NEProfileIngestion alloc] initWithName:@"neutil"];
      v86 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v83];
      v87 = [[NEProfilePayloadBase alloc] initWithPayload:v86];
      [(NEProfileIngestion *)v85 createConfigurationFromPayload:v87 payloadType:@"com.apple.vpn.managed"];
      v88 = [(NEProfileIngestion *)v85 ingestedConfiguration];

      if (v88)
      {
        [(NEProfileIngestion *)v85 saveIngestedConfiguration];
      }

      goto LABEL_185;
    case 0x26:
      if (!v5)
      {
        goto LABEL_112;
      }

      v124 = *(a1 + 32);
      v125 = *(a1 + 40);
      v126 = (v294 + 5);
      v243 = v294[5];
      [(NEUtilConfigurationClient *)v124 setAlwaysOnParameters:v125 errorStr:&v243];
      objc_storeStrong(v126, v243);
      goto LABEL_185;
    case 0x27:
      if (!v5)
      {
        goto LABEL_112;
      }

      v89 = *(a1 + 32);
      v90 = *(a1 + 40);
      v91 = (v294 + 5);
      v242 = v294[5];
      [(NEUtilConfigurationClient *)v89 unsetAlwaysOnParameters:v90 errorStr:&v242];
      objc_storeStrong(v91, v242);
      goto LABEL_185;
    case 0x28:
      if (!v5)
      {
        goto LABEL_112;
      }

      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = (v294 + 5);
      v291 = v294[5];
      [(NEUtilConfigurationClient *)v17 swapConfigurationTypeWithParameters:v18 errorStr:&v291];
      objc_storeStrong(v19, v291);
      goto LABEL_185;
    case 0x2A:
      v38 = MEMORY[0x1E695DF20];
      v39 = [*(a1 + 40) objectForKeyedSubscript:@"profile-file-path"];
      v40 = [v38 dictionaryWithContentsOfFile:v39];

      if (!isa_nsdictionary(v40))
      {
        v183 = MEMORY[0x1E696AEC0];
        v42 = [*(a1 + 40) objectForKeyedSubscript:@"profile-file-path"];
        v184 = [v183 stringWithFormat:@"Failed to read from %@", v42];
        v185 = v294[5];
        v294[5] = v184;
LABEL_183:

        goto LABEL_184;
      }

      v42 = [NEConfiguration configurationWithProfilePayload:v40 grade:1];
      if (!v42)
      {
        v224 = MEMORY[0x1E696AEC0];
        v185 = [*(a1 + 40) objectForKeyedSubscript:@"profile-file-path"];
        v225 = [v224 stringWithFormat:@"Failed to create a configuration from profile payload at %@. Make sure that the file only contains the configuration payload.", v185];
        v226 = v294[5];
        v294[5] = v225;

        v42 = 0;
        goto LABEL_183;
      }

      v43 = *(a1 + 32);
      if (!v43 || !objc_getProperty(v43, v41, 32, 1))
      {
        v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v47 = *(a1 + 32);
        if (v47)
        {
          objc_setProperty_atomic(v47, v45, v46, 32);
        }
      }

      v48 = *(a1 + 32);
      if (v48)
      {
        v48 = objc_getProperty(v48, v44, 32, 1);
      }

      v49 = v48;
      [v49 addObject:v42];

      v51 = *(a1 + 32);
      if (v51)
      {
        objc_setProperty_atomic(v51, v50, v42, 56);
      }

LABEL_184:

LABEL_185:
      if (v294[5])
      {
        [v8 addObject:?];
      }

      (*(*(a1 + 56) + 16))();
LABEL_188:

      _Block_object_dispose(&v293, 8);
      v227 = *MEMORY[0x1E69E9840];
      return;
    case 0x2B:
      v142 = [NEConfiguration alloc];
      v143 = MEMORY[0x1E696AEC0];
      v144 = [v5 name];
      v145 = [v143 stringWithFormat:@"%@ Per-App", v144];
      v146 = -[NEConfiguration initWithName:grade:](v142, "initWithName:grade:", v145, [v5 grade]);

      v147 = objc_alloc_init(NEVPNApp);
      [(NEConfiguration *)v146 setAppVPN:v147];

      v148 = [v5 VPN];
      v149 = [v148 protocol];
      v150 = [(NEConfiguration *)v146 appVPN];
      [v150 setProtocol:v149];

      v151 = [(NEConfiguration *)v146 appVPN];
      [v151 setOnDemandEnabled:1];

      v152 = [v5 VPN];
      v153 = [v152 onDemandRules];
      v154 = [v153 copy];
      v155 = [(NEConfiguration *)v146 appVPN];
      [v155 setOnDemandRules:v154];

      v156 = [(NEConfiguration *)v146 appVPN];
      [v156 setEnabled:1];

      v157 = [(NEConfiguration *)v146 appVPN];
      [v157 setTunnelType:1];

      v158 = +[NEConfigurationManager sharedManager];
      v159 = MEMORY[0x1E69E96A0];
      v160 = MEMORY[0x1E69E96A0];
      v233[0] = MEMORY[0x1E69E9820];
      v233[1] = 3221225472;
      v233[2] = __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_1025;
      v233[3] = &unk_1E7F0AD00;
      v161 = v146;
      v234 = v161;
      v235 = &v293;
      [v158 saveConfiguration:v161 withCompletionQueue:v159 handler:v233];

      goto LABEL_185;
    case 0x2C:
      if (!v5)
      {
        goto LABEL_112;
      }

      v180 = *(a1 + 32);
      v181 = *(a1 + 40);
      v182 = (v294 + 5);
      v232 = v294[5];
      [v180 setAppPushParameters:v181 errorStr:&v232];
      objc_storeStrong(v182, v232);
      goto LABEL_185;
    case 0x2D:
      if (!v5)
      {
        goto LABEL_112;
      }

      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      v28 = (v294 + 5);
      v231 = v294[5];
      [v26 unsetAppPushParameters:v27 errorStr:&v231];
      objc_storeStrong(v28, v231);
      goto LABEL_185;
    case 0x2E:
      if (!v5)
      {
        goto LABEL_112;
      }

      v121 = *(a1 + 32);
      v122 = *(a1 + 40);
      v123 = (v294 + 5);
      v269 = v294[5];
      [v121 addRelayWithParameters:v122 errorStr:&v269];
      objc_storeStrong(v123, v269);
      goto LABEL_185;
    case 0x2F:
      if (!v5)
      {
        goto LABEL_112;
      }

      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      v25 = (v294 + 5);
      v268 = v294[5];
      [v23 removeRelayWithParameters:v24 errorStr:&v268];
      objc_storeStrong(v25, v268);
      goto LABEL_185;
    case 0x30:
      if (!v5)
      {
        goto LABEL_112;
      }

      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = (v294 + 5);
      v267 = v294[5];
      [v20 setRelayConditionsWithParameters:v21 errorStr:&v267];
      objc_storeStrong(v22, v267);
      goto LABEL_185;
    case 0x31:
      if (!v5)
      {
        goto LABEL_112;
      }

      v65 = *(a1 + 32);
      v66 = *(a1 + 40);
      v67 = (v294 + 5);
      v266 = v294[5];
      [v65 unsetRelayConditionsWithParameters:v66 errorStr:&v266];
      objc_storeStrong(v67, v266);
      goto LABEL_185;
    case 0x32:
      if (!v5)
      {
        goto LABEL_112;
      }

      v107 = *(a1 + 32);
      v108 = *(a1 + 40);
      v109 = (v294 + 5);
      v281 = v294[5];
      [(NEUtilConfigurationClient *)v107 setURLFilterPluginWithParameters:v108 errorStr:&v281];
      objc_storeStrong(v109, v281);
      goto LABEL_185;
    case 0x33:
      if (!v5)
      {
        goto LABEL_112;
      }

      v168 = *(a1 + 32);
      v169 = *(a1 + 40);
      v170 = (v294 + 5);
      v280 = v294[5];
      [(NEUtilConfigurationClient *)v168 unsetURLFilterPluginParameters:v169 errorStr:&v280];
      objc_storeStrong(v170, v280);
      goto LABEL_185;
    case 0x34:
      if (!v5)
      {
        goto LABEL_112;
      }

      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = (v294 + 5);
      obj = v294[5];
      [v14 setHotspotProviderParameters:v15 errorStr:&obj];
      objc_storeStrong(v16, obj);
      goto LABEL_185;
    case 0x35:
      if (v5)
      {
        v32 = *(a1 + 32);
        v33 = *(a1 + 40);
        v34 = (v294 + 5);
        v229 = v294[5];
        [v32 unsetHotspotProviderParameters:v33 errorStr:&v229];
        objc_storeStrong(v34, v229);
      }

      else
      {
LABEL_112:
        v186 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Configuration with name %@ does not exist", *(a1 + 48)];
        v187 = v294[5];
        v294[5] = v186;
      }

      goto LABEL_185;
    default:
      v110 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown command"];
      v111 = v294[5];
      v294[5] = v110;

      goto LABEL_185;
  }
}

void __73__NEUtilConfigurationClient_loadConfigurationWithName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 40, 1);
  }

  v6 = find_config_by_name(Property, *(a1 + 40));
  if (!v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = objc_getProperty(v7, v5, 32, 1);
    }

    v6 = find_config_by_name(v7, *(a1 + 40));
  }

  (*(*(a1 + 48) + 16))();
}

- (void)loadConfigurationsForceRefresh:(void *)refresh completionHandler:
{
  refreshCopy = refresh;
  if (self)
  {
    if (!objc_getProperty(self, v5, 40, 1) || a2)
    {
      Property = objc_getProperty(self, v7, 24, 1);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __78__NEUtilConfigurationClient_loadConfigurationsForceRefresh_completionHandler___block_invoke;
      v12[3] = &unk_1E7F0B5B0;
      v12[4] = self;
      v13 = refreshCopy;
      [Property loadConfigurationsWithCompletionQueue:MEMORY[0x1E69E96A0] handler:v12];
      v8 = v13;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78__NEUtilConfigurationClient_loadConfigurationsForceRefresh_completionHandler___block_invoke_2;
      block[3] = &unk_1E7F0B600;
      v11 = refreshCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v8 = v11;
    }
  }
}

void __78__NEUtilConfigurationClient_loadConfigurationsForceRefresh_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = convert_error_to_string_24635(v6);
    v10 = [v8 stringWithFormat:@"Failed to load the current configurations: %@", v9];
  }

  else
  {
    v10 = 0;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = *(a1 + 32);
  if (v13)
  {
    objc_setProperty_atomic(v13, v11, v12, 40);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        Property = *(a1 + 32);
        if (Property)
        {
          Property = objc_getProperty(Property, v16, 40, 1);
        }

        v22 = Property;
        v23 = [v20 copy];
        [v22 addObject:v23];
      }

      v17 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  (*(*(a1 + 40) + 16))();
  v24 = *MEMORY[0x1E69E9840];
}

- (void)swapConfigurationTypeWithParameters:(void *)parameters errorStr:
{
  if (!self)
  {
    return;
  }

  v20 = [a2 objectForKeyedSubscript:@"type"];
  if (![v20 isEqualToString:@"vpn"])
  {
    if ([v20 isEqualToString:@"appvpn"])
    {
      v14 = [objc_getProperty(self v13];
      if (v14)
      {
        v7 = v14;
        v8 = objc_alloc_init(NEVPNApp);
        -[NEVPN setEnabled:](v8, "setEnabled:", [v7 isEnabled]);
        -[NEVPN setOnDemandEnabled:](v8, "setOnDemandEnabled:", [v7 isOnDemandEnabled]);
        -[NEVPN setDisconnectOnDemandEnabled:](v8, "setDisconnectOnDemandEnabled:", [v7 isDisconnectOnDemandEnabled]);
        onDemandRules = [v7 onDemandRules];
        [(NEVPN *)v8 setOnDemandRules:onDemandRules];

        protocol = [v7 protocol];
        [(NEVPN *)v8 setProtocol:protocol];

        [(NEVPN *)v8 setTunnelType:1];
        [objc_getProperty(self v17];
        [objc_getProperty(self v18];
        goto LABEL_8;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"No configuration found for swapping %@ -> %@", @"vpn", v20];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid configuration type for swapping: %@", v20, v19];
    }

    *parameters = LABEL_12:;
    goto LABEL_13;
  }

  v6 = [objc_getProperty(self v5];
  if (!v6)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"No configuration found for swapping %@ -> %@", @"appvpn", v20];
    goto LABEL_12;
  }

  v7 = v6;
  v8 = objc_alloc_init(NEVPN);
  -[NEVPN setEnabled:](v8, "setEnabled:", [v7 isEnabled]);
  -[NEVPN setOnDemandEnabled:](v8, "setOnDemandEnabled:", [v7 isOnDemandEnabled]);
  -[NEVPN setDisconnectOnDemandEnabled:](v8, "setDisconnectOnDemandEnabled:", [v7 isDisconnectOnDemandEnabled]);
  onDemandRules2 = [v7 onDemandRules];
  [(NEVPN *)v8 setOnDemandRules:onDemandRules2];

  protocol2 = [v7 protocol];
  [(NEVPN *)v8 setProtocol:protocol2];

  [objc_getProperty(self v11];
  [objc_getProperty(self v12];
LABEL_8:

LABEL_13:
}

void __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_988(void *a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = a1[4];
    v8 = convert_error_to_string_24635(v3);
    v9 = [v6 stringWithFormat:@"Failed to remove configuration %@: %@", v7, v8];
    v10 = *(a1[8] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    Property = a1[5];
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 32, 1);
    }

    [Property removeObjectIdenticalTo:a1[6]];
    v14 = a1[5];
    if (v14)
    {
      v14 = objc_getProperty(v14, v13, 40, 1);
    }

    [v14 removeObjectIdenticalTo:a1[6]];
  }

  v15 = a1[7];
  if (*(*(a1[8] + 8) + 40))
  {
    v18[0] = *(*(a1[8] + 8) + 40);
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    (*(v15 + 16))(v15, v16);
  }

  else
  {
    (*(v15 + 16))(a1[7], 0);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setURLFilterPluginWithParameters:(void *)parameters errorStr:
{
  v35 = a2;
  if (self)
  {
    urlFilterConfiguration = [(NEUtilConfigurationClient *)self urlFilterConfiguration];
    if (urlFilterConfiguration)
    {
      v7 = [v35 objectForKeyedSubscript:@"enabled"];

      if (v7)
      {
        v8 = [v35 objectForKeyedSubscript:@"enabled"];
        [urlFilterConfiguration setEnabled:{objc_msgSend(v8, "BOOLValue")}];
      }

      v9 = [v35 objectForKeyedSubscript:@"failClosed"];

      if (v9)
      {
        v10 = [v35 objectForKeyedSubscript:@"failClosed"];
        [urlFilterConfiguration setShouldFailClosed:{objc_msgSend(v10, "BOOLValue")}];
      }

      v11 = [v35 objectForKeyedSubscript:@"bundle-identifier"];

      if (v11)
      {
        v12 = [v35 objectForKeyedSubscript:@"bundle-identifier"];
        [urlFilterConfiguration setAppBundleIdentifier:v12];
      }

      v13 = [v35 objectForKeyedSubscript:@"pre-filter-provider-bundle-identifier"];

      if (v13)
      {
        v14 = [v35 objectForKeyedSubscript:@"pre-filter-provider-bundle-identifier"];
        [urlFilterConfiguration setControlProviderBundleIdentifier:v14];
      }

      v15 = [v35 objectForKeyedSubscript:@"pre-filter-provider-designated-requirement"];

      if (v15)
      {
        v16 = [v35 objectForKeyedSubscript:@"pre-filter-provider-designated-requirement"];
        stringByRemovingPercentEncoding = [v16 stringByRemovingPercentEncoding];
        [urlFilterConfiguration setControlProviderDesignatedRequirement:stringByRemovingPercentEncoding];
      }

      v18 = [v35 objectForKeyedSubscript:@"prefilter-fetch-frequency"];

      if (v18)
      {
        v19 = [v35 objectForKeyedSubscript:@"prefilter-fetch-frequency"];
        [urlFilterConfiguration setPrefilterFetchInterval:{objc_msgSend(v19, "BOOLValue")}];
      }

      v20 = [v35 objectForKeyedSubscript:@"pir-server"];

      if (v20)
      {
        v21 = objc_alloc(MEMORY[0x1E696AEC0]);
        v22 = [v35 objectForKeyedSubscript:@"pir-server"];
        v23 = [v21 initWithFormat:@"https://%@", v22];

        v24 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v23];
        [urlFilterConfiguration setPirServerURL:v24];
      }

      v25 = [v35 objectForKeyedSubscript:@"pir-authen-token"];

      if (v25)
      {
        v26 = [v35 objectForKeyedSubscript:@"pir-authen-token"];
        [urlFilterConfiguration setPirAuthenticationToken:v26];
      }

      v27 = [v35 objectForKeyedSubscript:@"test-group-name"];

      if (v27)
      {
        v28 = [v35 objectForKeyedSubscript:@"test-group-name"];
        [urlFilterConfiguration setPirGroupName:v28];
      }

      v29 = [v35 objectForKeyedSubscript:@"test-use-case"];

      if (v29)
      {
        v30 = [v35 objectForKeyedSubscript:@"test-use-case"];
        [urlFilterConfiguration setPirUseCase:v30];
      }

      v31 = [v35 objectForKeyedSubscript:@"test-privacy-proxy-fail-open"];

      if (v31)
      {
        v32 = [v35 objectForKeyedSubscript:@"test-privacy-proxy-fail-open"];
        [urlFilterConfiguration setPirPrivacyProxyFailOpen:{objc_msgSend(v32, "BOOLValue")}];
      }

      v33 = [v35 objectForKeyedSubscript:@"test-pir-skip-registration"];

      if (v33)
      {
        v34 = [v35 objectForKeyedSubscript:@"test-pir-skip-registration"];
        [urlFilterConfiguration setPirSkipRegistration:{objc_msgSend(v34, "BOOLValue")}];
      }
    }

    else
    {
      *parameters = @"URL Filter configuration has not been created yet";
    }
  }
}

- (void)unsetURLFilterPluginParameters:(void *)parameters errorStr:
{
  v19 = a2;
  if (self)
  {
    urlFilterConfiguration = [(NEUtilConfigurationClient *)self urlFilterConfiguration];
    if (urlFilterConfiguration)
    {
      v7 = [v19 objectForKeyedSubscript:@"enabled"];

      if (v7)
      {
        [urlFilterConfiguration setEnabled:0];
      }

      v8 = [v19 objectForKeyedSubscript:@"failClosed"];

      if (v8)
      {
        [urlFilterConfiguration setShouldFailClosed:0];
      }

      v9 = [v19 objectForKeyedSubscript:@"bundle-identifier"];

      if (v9)
      {
        [urlFilterConfiguration setAppBundleIdentifier:0];
      }

      v10 = [v19 objectForKeyedSubscript:@"pre-filter-provider-bundle-identifier"];

      if (v10)
      {
        [urlFilterConfiguration setControlProviderBundleIdentifier:0];
      }

      v11 = [v19 objectForKeyedSubscript:@"pre-filter-provider-designated-requirement"];

      if (v11)
      {
        [urlFilterConfiguration setControlProviderDesignatedRequirement:0];
      }

      v12 = [v19 objectForKeyedSubscript:@"prefilter-fetch-frequency"];

      if (v12)
      {
        [urlFilterConfiguration setPrefilterFetchInterval:0.0];
      }

      v13 = [v19 objectForKeyedSubscript:@"pir-server"];

      if (v13)
      {
        [urlFilterConfiguration setPirServerURL:0];
      }

      v14 = [v19 objectForKeyedSubscript:@"pir-authen-token"];

      if (v14)
      {
        [urlFilterConfiguration setPirAuthenticationToken:0];
      }

      v15 = [v19 objectForKeyedSubscript:@"test-group-name"];

      if (v15)
      {
        [urlFilterConfiguration setPirGroupName:0];
      }

      v16 = [v19 objectForKeyedSubscript:@"test-use-case"];

      if (v16)
      {
        [urlFilterConfiguration setPirUseCase:0];
      }

      v17 = [v19 objectForKeyedSubscript:@"test-privacy-proxy-fail-open"];

      if (v17)
      {
        [urlFilterConfiguration setPirPrivacyProxyFailOpen:0];
      }

      v18 = [v19 objectForKeyedSubscript:@"test-pir-skip-registration"];

      if (v18)
      {
        [urlFilterConfiguration setPirSkipRegistration:0];
      }
    }

    else
    {
      *parameters = @"URL Filter configuration has not been created yet";
    }
  }
}

- (uint64_t)setPPPParameters:(void *)parameters errorStr:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v109 = v5;
    v7 = [self protocolForParameters:v5];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *parameters = @"Configuration VPN type is not L2TP";
LABEL_109:

      v6 = v109;
      goto LABEL_110;
    }

    parametersCopy = parameters;
    v8 = [v109 objectForKeyedSubscript:@"authentication-method"];

    v9 = v109;
    if (v8)
    {
      v10 = [v109 objectForKeyedSubscript:@"authentication-method"];
      if ([v10 isEqualToString:@"password"])
      {
        v11 = 1;
      }

      else if ([v10 isEqualToString:@"securID"])
      {
        v11 = 2;
      }

      else if ([v10 isEqualToString:@"certificate"])
      {
        v11 = 3;
      }

      else if ([v10 isEqualToString:@"kerberos"])
      {
        v11 = 4;
      }

      else
      {
        if (([v10 isEqualToString:@"cryptocard"] & 1) == 0)
        {
          *parametersCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are password, securID, certificate, kerberos, and cryptocard", @"authentication-method"];

          goto LABEL_117;
        }

        v11 = 5;
      }

      [v7 setAuthenticationMethod:v11];

      v9 = v109;
    }

    v18 = [v9 objectForKeyedSubscript:@"verbose-logging-enabled"];

    if (v18)
    {
      v19 = [v109 objectForKeyedSubscript:@"verbose-logging-enabled"];
      [v7 setVerboseLoggingEnabled:{objc_msgSend(v19, "BOOLValue")}];
    }

    v20 = [v109 objectForKeyedSubscript:@"ipv4-config-method"];

    v21 = v109;
    if (!v20)
    {
LABEL_29:
      v28 = [v21 objectForKeyedSubscript:@"ipv4-address"];

      if (v28)
      {
        v29 = objc_alloc(MEMORY[0x1E695DEC8]);
        v30 = [v109 objectForKeyedSubscript:@"ipv4-address"];
        v107 = [v29 initWithObjects:{v30, 0}];
      }

      else
      {
        v107 = 0;
      }

      v31 = [v109 objectForKeyedSubscript:@"ipv4-subnet-mask"];

      if (v31)
      {
        v32 = objc_alloc(MEMORY[0x1E695DEC8]);
        v33 = [v109 objectForKeyedSubscript:@"ipv4-subnet-mask"];
        v16 = [v32 initWithObjects:{v33, 0}];
      }

      else
      {
        v16 = 0;
      }

      v17 = v107;
      v34 = [v109 objectForKeyedSubscript:@"ipv4-router"];

      if (v34)
      {
        v108 = [v109 objectForKeyedSubscript:@"ipv4-router"];
      }

      else
      {
        v108 = 0;
      }

      iPv4Settings = [v7 IPv4Settings];
      if (!iPv4Settings)
      {
        goto LABEL_43;
      }

      v36 = iPv4Settings;
      iPv4Settings2 = [v7 IPv4Settings];
      v38 = v16;
      configMethod = [iPv4Settings2 configMethod];

      v40 = configMethod == 3;
      v16 = v38;
      if (v40)
      {
        v41 = [[NEIPv4Settings alloc] initWithAddresses:v107 subnetMasks:v38];
        [v7 setIPv4Settings:v41];

        iPv4Settings3 = [v7 IPv4Settings];
        [iPv4Settings3 setConfigMethod:3];

        v15 = v108;
        if (v108)
        {
          v43 = [v109 objectForKeyedSubscript:@"ipv4-router"];
          iPv4Settings4 = [v7 IPv4Settings];
          [iPv4Settings4 setRouter:v43];

          v16 = v38;
        }
      }

      else
      {
LABEL_43:
        v15 = v108;
        if (v107 || v16 || v108)
        {
          v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@ cannot be specified, %@ is not manual", @"ipv4-address", @"ipv4-subnet-mask", @"ipv4-router", @"ipv4-config-method"];
          v12 = 0;
          v13 = 0;
          v14 = 0;
          goto LABEL_88;
        }
      }

      v105 = v16;
      v45 = [v109 objectForKeyedSubscript:@"send-all-traffic"];

      if (v45)
      {
        iPv4Settings5 = [v7 IPv4Settings];

        if (!iPv4Settings5)
        {
          v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ cannot be specified, %@ is not manual or ppp", @"send-all-traffic", @"ipv4-config-method"];
          v12 = 0;
          v13 = 0;
          v14 = 0;
LABEL_107:
          *parametersCopy = v57;
          goto LABEL_108;
        }

        v47 = [v109 objectForKeyedSubscript:@"send-all-traffic"];
        bOOLValue = [v47 BOOLValue];
        iPv4Settings6 = [v7 IPv4Settings];
        [iPv4Settings6 setOverridePrimary:bOOLValue];
      }

      v50 = [v109 objectForKeyedSubscript:@"ipv6-config-method"];

      v51 = v109;
      if (v50)
      {
        v52 = [v109 objectForKeyedSubscript:@"ipv6-config-method"];
        iPv6Settings = [v7 IPv6Settings];

        if (!iPv6Settings)
        {
          v54 = [[NEIPv6Settings alloc] initWithConfigMethod:1];
          [v7 setIPv6Settings:v54];
        }

        if ([v52 isEqualToString:@"automatic"])
        {
          v55 = 1;
        }

        else if ([v52 isEqualToString:@"manual"])
        {
          v55 = 2;
        }

        else
        {
          if (([v52 isEqualToString:@"link-local"] & 1) == 0)
          {
            *parametersCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are automatic, manual, and link-local", @"ipv6-config-method"];

            v12 = 0;
            v13 = 0;
            v14 = 0;
            goto LABEL_108;
          }

          v55 = 3;
        }

        iPv6Settings2 = [v7 IPv6Settings];
        [iPv6Settings2 setConfigMethod:v55];

        v51 = v109;
      }

      v59 = [v51 objectForKeyedSubscript:@"ipv6-address"];

      if (v59)
      {
        v60 = objc_alloc(MEMORY[0x1E695DEC8]);
        v61 = [v109 objectForKeyedSubscript:@"ipv6-address"];
        v14 = [v60 initWithObjects:{v61, 0}];
      }

      else
      {
        v14 = 0;
      }

      v62 = [v109 objectForKeyedSubscript:@"ipv6-prefix-length"];

      if (v62)
      {
        v63 = objc_alloc(MEMORY[0x1E695DEC8]);
        v64 = [v109 objectForKeyedSubscript:@"ipv6-prefix-length"];
        v13 = [v63 initWithObjects:{v64, 0}];
      }

      else
      {
        v13 = 0;
      }

      v65 = [v109 objectForKeyedSubscript:@"ipv6-router"];

      if (v65)
      {
        v12 = [v109 objectForKeyedSubscript:@"ipv6-router"];
      }

      else
      {
        v12 = 0;
      }

      iPv6Settings3 = [v7 IPv6Settings];
      if (iPv6Settings3 && (v67 = iPv6Settings3, [v7 IPv6Settings], v68 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend(v68, "configMethod"), v68, v67, v69 == 2))
      {
        v70 = [[NEIPv6Settings alloc] initWithAddresses:v14 networkPrefixLengths:v13];
        [v7 setIPv6Settings:v70];

        iPv6Settings4 = [v7 IPv6Settings];
        [iPv6Settings4 setConfigMethod:2];

        iPv6Settings5 = [v7 IPv6Settings];

        if (iPv6Settings5)
        {
          v73 = [v109 objectForKeyedSubscript:@"ipv6-router"];
          iPv6Settings6 = [v7 IPv6Settings];
          [iPv6Settings6 setRouter:v73];
        }
      }

      else if (v14 || v13 || v12)
      {
        v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@ cannot be specified, %@ is not manual", @"ipv6-address", @"ipv6-prefix-length", @"ipv6-router", @"ipv6-config-method"];
        v79 = parametersCopy;
        v17 = v107;
        goto LABEL_84;
      }

      v75 = [v109 objectForKeyedSubscript:@"machine-authentication-method"];

      v17 = v107;
      v15 = v108;
      if (!v75)
      {
LABEL_92:
        v80 = @"shared-secret";
        v81 = [v109 objectForKeyedSubscript:@"shared-secret"];

        if (v81)
        {
          if ([v7 type] != 2)
          {
            goto LABEL_106;
          }

          v82 = [NEKeychainItem alloc];
          v84 = [v109 objectForKeyedSubscript:@"shared-secret"];
          if (v7)
          {
            v85 = v7[10];
            Property = objc_getProperty(v7, v83, 88, 1);
          }

          else
          {
            v85 = 0;
            Property = 0;
          }

          v87 = Property;
          v88 = [(NEKeychainItem *)v82 initWithPassword:v84 domain:v85 accessGroup:v87];
          [v7 setSharedSecretKeychainItem:v88];

          v17 = v107;
          v15 = v108;
        }

        v80 = @"local-identifier";
        v89 = [v109 objectForKeyedSubscript:@"local-identifier"];

        if (!v89)
        {
LABEL_100:
          v80 = @"machine-identity";
          v91 = [v109 objectForKeyedSubscript:@"machine-identity"];

          if (!v91)
          {
LABEL_108:
            v16 = v105;
            goto LABEL_109;
          }

          if ([v7 type] == 2)
          {
            v92 = [v109 objectForKeyedSubscript:@"machine-identity"];
            integerValue = [v92 integerValue];

            v95 = objc_getProperty(self, v94, 48, 1);
            if (v95)
            {
              v97 = v95;
              v98 = [objc_getProperty(self v96];

              if (integerValue < v98)
              {
                v100 = [objc_getProperty(self v99];
                v101 = [v100 objectForKeyedSubscript:@"domain"];
                integerValue2 = [v101 integerValue];

                if (integerValue2)
                {
                  *parametersCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, an identity in the system keychain is required", @"machine-identity"];
                }

                else
                {
                  v103 = [v100 objectForKeyedSubscript:@"persistent-reference"];
                  [v7 setMachineIdentityReference:v103];
                }

                goto LABEL_85;
              }
            }

            v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@ index, use the list-identities command to obtain a list of available identities and their indicies", @"machine-identity"];
            v79 = parametersCopy;
LABEL_84:
            *v79 = v78;
LABEL_85:
            v16 = v105;
LABEL_86:
            v15 = v108;
            goto LABEL_109;
          }

          goto LABEL_106;
        }

        if ([v7 type] == 2)
        {
          v90 = [v109 objectForKeyedSubscript:@"local-identifier"];
          [v7 setLocalIdentifier:v90];

          goto LABEL_100;
        }

LABEL_106:
        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, VPN type is not L2TP", v80];
        goto LABEL_107;
      }

      v16 = v105;
      if ([v7 type] == 2)
      {
        v76 = [v109 objectForKeyedSubscript:@"machine-authentication-method"];
        if ([v76 isEqualToString:@"shared-secret"])
        {
          v77 = 1;
        }

        else
        {
          if (([v76 isEqualToString:@"certificate"] & 1) == 0)
          {
            *parametersCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are shared-secret and certificate", @"machine-authentication-method"];

            goto LABEL_86;
          }

          v77 = 2;
        }

        [v7 setMachineAuthenticationMethod:v77];

        v15 = v108;
        goto LABEL_92;
      }

      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, VPN type is not L2TP", @"machine-authentication-method"];
LABEL_88:
      *parametersCopy = v56;
      goto LABEL_109;
    }

    v22 = [v109 objectForKeyedSubscript:@"ipv4-config-method"];
    iPv4Settings7 = [v7 IPv4Settings];

    if (!iPv4Settings7)
    {
      v24 = [[NEIPv4Settings alloc] initWithConfigMethod:2];
      [v7 setIPv4Settings:v24];
    }

    if ([v22 isEqualToString:@"ppp"])
    {
      iPv4Settings8 = [v7 IPv4Settings];
      v26 = iPv4Settings8;
      v27 = 2;
LABEL_27:
      [iPv4Settings8 setConfigMethod:v27];

LABEL_28:
      v21 = v109;
      goto LABEL_29;
    }

    if ([v22 isEqualToString:@"manual"])
    {
      iPv4Settings8 = [v7 IPv4Settings];
      v26 = iPv4Settings8;
      v27 = 3;
      goto LABEL_27;
    }

    if ([v22 isEqualToString:@"automatic"])
    {
      iPv4Settings8 = [v7 IPv4Settings];
      v26 = iPv4Settings8;
      v27 = 1;
      goto LABEL_27;
    }

    if ([v22 isEqualToString:@"off"])
    {
      [v7 setIPv4Settings:0];
      goto LABEL_28;
    }

    *parametersCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are ppp, manual, automatic, and off", @"ipv4-config-method"];

LABEL_117:
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_109;
  }

LABEL_110:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (uint64_t)unsetPPPParameters:(void *)parameters errorStr:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v45 = v5;
    v7 = [self protocolForParameters:v5];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      iPv4Settings5 = 0;
      iPv4Settings7 = 0;
      iPv6Settings3 = 0;
      iPv6Settings5 = 0;
      *parameters = @"Configuration VPN type is not L2TP";
LABEL_59:

      v6 = v45;
      goto LABEL_60;
    }

    v8 = [v45 objectForKeyedSubscript:@"authentication-method"];

    if (v8)
    {
      [v7 setAuthenticationMethod:1];
    }

    v9 = [v45 objectForKeyedSubscript:@"send-all-traffic"];

    if (v9)
    {
      iPv4Settings = [v7 IPv4Settings];

      if (iPv4Settings)
      {
        iPv4Settings2 = [v7 IPv4Settings];
        [iPv4Settings2 setOverridePrimary:0];
      }
    }

    v12 = [v45 objectForKeyedSubscript:@"verbose-logging-enabled"];

    if (v12)
    {
      [v7 setVerboseLoggingEnabled:0];
    }

    v13 = [v45 objectForKeyedSubscript:@"ipv4-config-method"];

    if (v13)
    {
      iPv4Settings3 = [v7 IPv4Settings];

      if (iPv4Settings3)
      {
        iPv4Settings4 = [v7 IPv4Settings];
        [iPv4Settings4 setConfigMethod:2];
      }
    }

    v16 = [v45 objectForKeyedSubscript:@"ipv4-address"];

    if (v16)
    {
      iPv4Settings5 = 0;
    }

    else
    {
      iPv4Settings5 = [v7 IPv4Settings];

      if (iPv4Settings5)
      {
        iPv4Settings6 = [v7 IPv4Settings];
        iPv4Settings5 = [iPv4Settings6 addresses];
      }
    }

    v22 = [v45 objectForKeyedSubscript:@"ipv4-subnet-mask"];

    if (v22)
    {
      iPv4Settings7 = 0;
    }

    else
    {
      iPv4Settings7 = [v7 IPv4Settings];

      if (iPv4Settings7)
      {
        iPv4Settings8 = [v7 IPv4Settings];
        iPv4Settings7 = [iPv4Settings8 subnetMasks];
      }

      if (!v16)
      {
LABEL_24:
        v25 = [v45 objectForKeyedSubscript:@"ipv4-router"];

        if (v25)
        {
          iPv4Settings9 = [v7 IPv4Settings];

          if (iPv4Settings9)
          {
            iPv4Settings10 = [v7 IPv4Settings];
            [iPv4Settings10 setRouter:0];
          }
        }

        v28 = [v45 objectForKeyedSubscript:@"ipv6-config-method"];

        if (v28)
        {
          iPv6Settings = [v7 IPv6Settings];

          if (iPv6Settings)
          {
            iPv6Settings2 = [v7 IPv6Settings];
            [iPv6Settings2 setConfigMethod:1];
          }
        }

        v31 = [v45 objectForKeyedSubscript:@"ipv6-address"];

        if (v31)
        {
          iPv6Settings3 = 0;
        }

        else
        {
          iPv6Settings3 = [v7 IPv6Settings];

          if (iPv6Settings3)
          {
            iPv6Settings4 = [v7 IPv6Settings];
            iPv6Settings3 = [iPv6Settings4 addresses];
          }
        }

        v33 = [v45 objectForKeyedSubscript:@"ipv6-prefix-length"];

        if (v33)
        {
          iPv6Settings5 = 0;
        }

        else
        {
          iPv6Settings5 = [v7 IPv6Settings];

          if (iPv6Settings5)
          {
            iPv6Settings6 = [v7 IPv6Settings];
            iPv6Settings5 = [iPv6Settings6 networkPrefixLengths];
          }

          if (!v31)
          {
            goto LABEL_40;
          }
        }

        v35 = [[NEIPv6Settings alloc] initWithAddresses:iPv6Settings3 networkPrefixLengths:iPv6Settings5];
        [v7 setIPv6Settings:v35];

LABEL_40:
        v36 = [v45 objectForKeyedSubscript:@"ipv6-router"];

        if (v36)
        {
          iPv6Settings7 = [v7 IPv6Settings];

          if (iPv6Settings7)
          {
            iPv6Settings8 = [v7 IPv6Settings];
            [iPv6Settings8 setRouter:0];
          }
        }

        v39 = [v45 objectForKeyedSubscript:@"machine-authentication-method"];

        if (v39)
        {
          if ([v7 type] == 2)
          {
            [v7 setMachineAuthenticationMethod:1];
          }

          else
          {
            *parameters = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, VPN type is not L2TP", @"machine-authentication-method"];
          }
        }

        v40 = [v45 objectForKeyedSubscript:@"shared-secret"];

        if (v40)
        {
          if ([v7 type] == 2)
          {
            sharedSecretKeychainItem = [v7 sharedSecretKeychainItem];
            [sharedSecretKeychainItem setIdentifier:0];
          }

          else
          {
            *parameters = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, VPN type is not L2TP", @"shared-secret"];
          }
        }

        v42 = [v45 objectForKeyedSubscript:@"local-identifier"];

        if (v42)
        {
          if ([v7 type] == 2)
          {
            [v7 setLocalIdentifier:0];
          }

          else
          {
            *parameters = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, VPN type is not L2TP", @"shared-secret"];
          }
        }

        v43 = [v45 objectForKeyedSubscript:@"machine-identity"];

        if (v43)
        {
          if ([v7 type] == 2)
          {
            [v7 setMachineIdentityReference:0];
          }

          else
          {
            *parameters = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, VPN type is not L2TP", @"machine-identity"];
          }
        }

        goto LABEL_59;
      }
    }

    v24 = [[NEIPv4Settings alloc] initWithAddresses:iPv4Settings5 subnetMasks:iPv4Settings7];
    [v7 setIPv4Settings:v24];

    goto LABEL_24;
  }

LABEL_60:

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)addAppRuleWithParameters:(void *)parameters errorStr:
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = a2;
    v6 = [v5 objectForKeyedSubscript:@"match-signing-identifier"];
    v7 = [v5 objectForKeyedSubscript:@"match-path"];
    v8 = [v5 objectForKeyedSubscript:@"match-domains"];
    v9 = [v5 objectForKeyedSubscript:@"match-account-identifiers"];

    v11 = [objc_getProperty(self v10];

    if (v11)
    {
      v11 = [objc_getProperty(self v12];
    }

    v13 = [objc_getProperty(self v12];

    Property = objc_getProperty(self, v14, 56, 1);
    if (v13)
    {
      contentFilter = [Property contentFilter];
      perApp = [contentFilter perApp];

      if (!perApp)
      {
        v19 = objc_alloc_init(NEPerApp);
        v21 = [objc_getProperty(self v20];
        [v21 setPerApp:v19];
      }

      v22 = [objc_getProperty(self v18];
    }

    else
    {
      dnsProxy = [Property dnsProxy];

      v25 = objc_getProperty(self, v24, 56, 1);
      if (dnsProxy)
      {
        dnsProxy2 = [v25 dnsProxy];
        perApp2 = [dnsProxy2 perApp];

        if (!perApp2)
        {
          v29 = objc_alloc_init(NEPerApp);
          v31 = [objc_getProperty(self v30];
          [v31 setPerApp:v29];
        }

        v22 = [objc_getProperty(self v28];
      }

      else
      {
        relay = [v25 relay];

        if (!relay)
        {
          goto LABEL_17;
        }

        v34 = [objc_getProperty(self v33];
        perApp3 = [v34 perApp];

        if (!perApp3)
        {
          v37 = objc_alloc_init(NEPerApp);
          v39 = [objc_getProperty(self v38];
          [v39 setPerApp:v37];
        }

        v22 = [objc_getProperty(self v36];
      }
    }

    v40 = v22;
    relay = [v22 perApp];

LABEL_17:
    if (!(v11 | relay))
    {
      *parameters = @"No perApp configuration present to apply app rules to";
LABEL_41:

      goto LABEL_42;
    }

    if (v11)
    {
      v41 = v11;
    }

    else
    {
      v41 = relay;
    }

    v42 = [v41 copyAppRuleByID:v6];
    if (v42)
    {
      if (v11)
      {
LABEL_24:
        v43 = v11;
LABEL_27:
        [v43 removeAppRuleByID:v6];
        [(NEAppRule *)v42 setMatchPath:v7];
        if (isa_nsarray(v8))
        {
          [(NEAppRule *)v42 setMatchDomains:v8];
        }

        else if (isa_nsstring(v8))
        {
          v56[0] = v8;
          v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
          [(NEAppRule *)v42 setMatchDomains:v44];
        }

        if (isa_nsarray(v9))
        {
          [(NEAppRule *)v42 setMatchAccountIdentifiers:v9];
        }

        else if (isa_nsstring(v9))
        {
          v55 = v9;
          v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
          [(NEAppRule *)v42 setMatchAccountIdentifiers:v45];
        }

        v46 = objc_alloc(MEMORY[0x1E695DF70]);
        if (v11)
        {
          appRules = [v11 appRules];
          v48 = [v46 initWithArray:appRules];

          [v48 addObject:v42];
          v49 = v11;
        }

        else
        {
          appRules2 = [relay appRules];
          v48 = [v46 initWithArray:appRules2];

          [v48 addObject:v42];
          v49 = relay;
        }

        [v49 setAppRules:v48];
        v52 = [objc_getProperty(self v51];

        if (!v52)
        {
          [objc_getProperty(self v53];
        }

        goto LABEL_41;
      }
    }

    else
    {
      v42 = [[NEAppRule alloc] initWithSigningIdentifier:v6];
      if (v11)
      {
        goto LABEL_24;
      }
    }

    v43 = relay;
    goto LABEL_27;
  }

LABEL_42:
  v54 = *MEMORY[0x1E69E9840];
}

- (void)removeAppRuleWithParameters:(void *)parameters errorStr:
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = [v5 objectForKeyedSubscript:@"match-signing-identifier"];
    v9 = [objc_getProperty(self v8];

    if (v9)
    {
      v9 = [objc_getProperty(self v10];
    }

    v11 = [objc_getProperty(self v10];

    Property = objc_getProperty(self, v12, 56, 1);
    if (v11)
    {
      contentFilter = [Property contentFilter];
    }

    else
    {
      dnsProxy = [Property dnsProxy];

      v17 = objc_getProperty(self, v16, 56, 1);
      if (dnsProxy)
      {
        contentFilter = [v17 dnsProxy];
      }

      else
      {
        relay = [v17 relay];

        if (!relay)
        {
          goto LABEL_11;
        }

        contentFilter = [objc_getProperty(self v19];
      }
    }

    v20 = contentFilter;
    relay = [contentFilter perApp];

LABEL_11:
    if (!(v9 | relay))
    {
      *parameters = @"No perApp configuration present to apply app rules to";
LABEL_39:

      goto LABEL_40;
    }

    parametersCopy = parameters;
    v45 = v6;
    v21 = objc_alloc(MEMORY[0x1E695DF70]);
    if (v9)
    {
      v22 = v9;
    }

    else
    {
      v22 = relay;
    }

    appRules = [v22 appRules];
    v24 = [v21 initWithArray:appRules];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v42 = relay;
      v43 = v9;
      v28 = 0;
      v29 = *v47;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v47 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v46 + 1) + 8 * i);
          matchSigningIdentifier = [v31 matchSigningIdentifier];
          v33 = [matchSigningIdentifier isEqualToString:v7];

          if (v33)
          {
            v34 = v31;

            v28 = v34;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v27);

      relay = v42;
      v9 = v43;
      if (v28)
      {
        [v25 removeObject:v28];
        if ([v25 count])
        {
          if (v43)
          {
            v35 = v43;
          }

          else
          {
            v35 = v42;
          }

          [v35 setAppRules:v25];
        }

        else
        {
          if (v43)
          {
            v36 = v43;
          }

          else
          {
            v36 = v42;
          }

          [v36 setAppRules:0];
          v38 = [objc_getProperty(self v37];
          v39 = [v38 isEqualToString:@"NEUTIL-PERAPP-UUID"];

          if (v39)
          {
            [objc_getProperty(self v40];
          }
        }

        goto LABEL_38;
      }
    }

    else
    {
    }

    v28 = 0;
    *parametersCopy = @"No matched rule";
LABEL_38:

    v6 = v45;
    goto LABEL_39;
  }

LABEL_40:

  v41 = *MEMORY[0x1E69E9840];
}

- (void)setPathControllerWithParameters:(void *)parameters errorStr:
{
  v5 = a2;
  if (self)
  {
    v17 = v5;
    v7 = [objc_getProperty(self v6];

    if (!v7)
    {
      *parameters = @"No Path Controller configuration present";
LABEL_18:
      v5 = v17;
      goto LABEL_19;
    }

    v8 = [v17 objectForKeyedSubscript:@"enabled"];

    if (v8)
    {
      v9 = [v17 objectForKeyedSubscript:@"enabled"];
      bOOLValue = [v9 BOOLValue];
      v12 = [objc_getProperty(self v11];
      [v12 setEnabled:bOOLValue];
    }

    v13 = [v17 objectForKeyedSubscript:@"cellular-fallback"];
    if ([v13 isEqualToString:@"default"])
    {
      v15 = 0;
    }

    else if ([v13 isEqualToString:@"none"])
    {
      v15 = 1;
    }

    else if ([v13 isEqualToString:@"foreground"])
    {
      v15 = 3;
    }

    else if ([v13 isEqualToString:@"background"])
    {
      v15 = 7;
    }

    else
    {
      if (![v13 isEqualToString:@"all"])
      {
LABEL_17:

        goto LABEL_18;
      }

      v15 = 11;
    }

    v16 = [objc_getProperty(self v14];
    [v16 setCellularFallbackFlags:v15];

    goto LABEL_17;
  }

LABEL_19:
}

- (void)addPathRuleWithParameters:(__CFString *)parameters errorStr:
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = a2;
    v6 = [v5 objectForKeyedSubscript:@"match-signing-identifier"];
    v7 = [v5 objectForKeyedSubscript:@"match-path"];
    v8 = [v5 objectForKeyedSubscript:@"match-domains"];
    v9 = [v5 objectForKeyedSubscript:@"match-account-identifiers"];
    v10 = [v5 objectForKeyedSubscript:@"cellular-behavior"];
    v11 = [v5 objectForKeyedSubscript:@"wifi-behavior"];

    v13 = [objc_getProperty(self v12];
    v14 = [v13 copyPathRuleBySigningIdentifier:v6];

    if (!v14)
    {
      v14 = [(NEAppRule *)[NEPathRule alloc] initWithSigningIdentifier:v6];
    }

    v16 = [objc_getProperty(self v15];
    [v16 removePathRuleBySigningIdentifier:v6];

    [(NEAppRule *)v14 setMatchPath:v7];
    if (isa_nsarray(v8))
    {
      [(NEAppRule *)v14 setMatchDomains:v8];
    }

    else if (isa_nsstring(v8))
    {
      v39[0] = v8;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
      [(NEAppRule *)v14 setMatchDomains:v17];
    }

    if (isa_nsarray(v9))
    {
      [(NEAppRule *)v14 setMatchAccountIdentifiers:v9];
    }

    else if (isa_nsstring(v9))
    {
      v38 = v9;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      [(NEAppRule *)v14 setMatchAccountIdentifiers:v19];
    }

    if (v10)
    {
      if ([v10 isEqualToString:@"allow"])
      {
        v20 = 0;
      }

      else if ([v10 isEqualToString:@"deny"])
      {
        v20 = 1;
      }

      else
      {
        if (([v10 isEqualToString:@"allow-while-roaming"] & 1) == 0)
        {
          v35 = @"Cellular behavior value not recognized";
          goto LABEL_31;
        }

        v20 = 2;
      }

      [(NEPathRule *)v14 setCellularBehavior:v20];
    }

    if (v11)
    {
      if ([v11 isEqualToString:@"allow"])
      {
        v21 = 0;
      }

      else if ([v11 isEqualToString:@"deny"])
      {
        v21 = 1;
      }

      else
      {
        if (([v11 isEqualToString:@"allow-while-roaming"] & 1) == 0)
        {
          v35 = @"WiFi behavior value not recognized";
          goto LABEL_31;
        }

        v21 = 2;
      }

      [(NEPathRule *)v14 setWifiBehavior:v21];
    }

    v22 = [objc_getProperty(self v18];

    if (v22)
    {
      v23 = objc_alloc(MEMORY[0x1E695DF70]);
      v25 = [objc_getProperty(self v24];
      [v25 pathRules];
      v37 = v9;
      v26 = v10;
      v27 = v11;
      v28 = v8;
      v29 = v6;
      v31 = v30 = v7;
      v32 = [v23 initWithArray:v31];

      [v32 addObject:v14];
      v34 = [objc_getProperty(self v33];
      [v34 setPathRules:v32];

      v7 = v30;
      v6 = v29;
      v8 = v28;
      v11 = v27;
      v10 = v26;
      v9 = v37;

LABEL_32:
      goto LABEL_33;
    }

    v35 = @"No Path Controller configuration present to apply path rules to";
LABEL_31:
    *parameters = v35;
    goto LABEL_32;
  }

LABEL_33:
  v36 = *MEMORY[0x1E69E9840];
}

- (void)removePathRuleWithParameters:(void *)parameters errorStr:
{
  v34 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = [a2 objectForKeyedSubscript:@"match-signing-identifier"];
    v7 = [objc_getProperty(self v6];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x1E695DF70]);
      v10 = [objc_getProperty(self v9];
      pathRules = [v10 pathRules];
      v12 = [v8 initWithArray:pathRules];

      if ([v12 count])
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v14 = [objc_getProperty(self v13];
        pathRules2 = [v14 pathRules];

        v16 = [pathRules2 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v30;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(pathRules2);
              }

              v20 = *(*(&v29 + 1) + 8 * i);
              matchSigningIdentifier = [v20 matchSigningIdentifier];
              v22 = [matchSigningIdentifier isEqualToString:v5];

              if (v22)
              {
                [v12 removeObject:v20];
              }
            }

            v17 = [pathRules2 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v17);
        }

        v23 = [v12 count];
        v25 = [objc_getProperty(self v24];
        v26 = v25;
        if (v23)
        {
          v27 = v12;
        }

        else
        {
          v27 = 0;
        }

        [v25 setPathRules:v27];
      }

      else
      {
        *parameters = @"No rules present";
      }
    }

    else
    {
      *parameters = @"No Path Controller configuration present to apply app rules to";
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_2_996(uint64_t a1, void *a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v62 = [a2 objectForKeyedSubscript:@"UserMap"];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = objc_getProperty(v4, v3, 40, 1);
    if (v5)
    {
      v7 = v5;
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v6, 40, 1);
      }

      v9 = [Property count];

      if (v9)
      {
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v10 = *(a1 + 32);
        if (v10)
        {
          v10 = objc_getProperty(v10, v6, 40, 1);
        }

        obj = v10;
        v63 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
        if (v63)
        {
          v60 = *v80;
          v61 = a1;
          do
          {
            v11 = 0;
            do
            {
              if (*v80 != v60)
              {
                objc_enumerationMutation(obj);
              }

              v64 = v11;
              v12 = *(*(&v79 + 1) + 8 * v11);
              v13 = MEMORY[0x1E696AEC0];
              v14 = [v12 name];
              v15 = objc_msgSend(v13, "stringWithFormat:", @"%@ (Users:"), v14;

              v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v78 = 0u;
              v16 = v62;
              v17 = [v16 countByEnumeratingWithState:&v75 objects:v87 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v76;
                do
                {
                  for (i = 0; i != v18; ++i)
                  {
                    if (*v76 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v21 = *(*(&v75 + 1) + 8 * i);
                    v22 = [v16 objectForKeyedSubscript:v21];
                    v23 = [v12 identifier];
                    v24 = [v22 containsObject:v23];

                    if (v24)
                    {
                      [v65 addObject:v21];
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v75 objects:v87 count:16];
                }

                while (v18);
              }

              v25 = v65;
              if ([v65 count])
              {
                v73 = 0u;
                v74 = 0u;
                v71 = 0u;
                v72 = 0u;
                v26 = v65;
                v27 = [v26 countByEnumeratingWithState:&v71 objects:v86 count:16];
                a1 = v61;
                if (v27)
                {
                  v28 = v27;
                  v29 = *v72;
                  do
                  {
                    v30 = 0;
                    v31 = v15;
                    do
                    {
                      if (*v72 != v29)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v32 = *(*(&v71 + 1) + 8 * v30);
                      *id_type = 0;
                      *uu = 0;
                      v85 = 0;
                      [v32 getUUIDBytes:uu];
                      mbr_uuid_to_id(uu, id_type, &id_type[1]);
                      if (id_type[0] && (v33 = getpwuid(id_type[0])) != 0 && (pw_name = v33->pw_name) != 0 && *pw_name)
                      {
                        v35 = id_type[0];
                        v36 = [v32 UUIDString];
                        [v31 stringByAppendingFormat:@" %s(%d)[%@]", pw_name, v35, v36];
                      }

                      else
                      {
                        v37 = id_type[0];
                        v36 = [v32 UUIDString];
                        [v31 stringByAppendingFormat:@" %d[%@]", v37, v36, v58];
                      }
                      v15 = ;

                      ++v30;
                      v31 = v15;
                    }

                    while (v28 != v30);
                    v28 = [v26 countByEnumeratingWithState:&v71 objects:v86 count:16];
                  }

                  while (v28);
                }

                v38 = [v15 stringByAppendingString:@"\n"]);
                v25 = v65;
              }

              else
              {
                v38 = [v15 stringByAppendingString:@" None\n"]);
                a1 = v61;
              }

              [*(a1 + 40) addObject:v38];
              v11 = v64 + 1;
            }

            while (v64 + 1 != v63);
            v63 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
          }

          while (v63);
        }
      }
    }

    v39 = *(a1 + 32);
    if (v39)
    {
      v40 = objc_getProperty(v39, v6, 32, 1);
      if (v40)
      {
        v42 = v40;
        v43 = *(a1 + 32);
        if (v43)
        {
          v43 = objc_getProperty(v43, v41, 32, 1);
        }

        v44 = [v43 count];

        if (v44)
        {
          [*(a1 + 40) addObject:@"New Configurations:\n"];
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v46 = *(a1 + 32);
          if (v46)
          {
            v46 = objc_getProperty(v46, v45, 32, 1);
          }

          v47 = v46;
          v48 = [v47 countByEnumeratingWithState:&v66 objects:v83 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v67;
            do
            {
              for (j = 0; j != v49; ++j)
              {
                if (*v67 != v50)
                {
                  objc_enumerationMutation(v47);
                }

                v52 = *(a1 + 40);
                v53 = MEMORY[0x1E696AEC0];
                v54 = [*(*(&v66 + 1) + 8 * j) name];
                v55 = [v53 stringWithFormat:@"%@\n", v54];
                [v52 addObject:v55];
              }

              v49 = [v47 countByEnumeratingWithState:&v66 objects:v83 count:16];
            }

            while (v49);
          }
        }
      }
    }
  }

  v56 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v57 = *MEMORY[0x1E69E9840];
}

void __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_3_1013(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = *(a1 + 32);
    v7 = convert_error_to_string_24635(v3);
    v8 = [v5 stringWithFormat:@"Failed to save configuration %@: %@", v6, v7];

    [*(a1 + 40) addObject:v8];
  }

  else
  {
    Property = *(a1 + 48);
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 32, 1);
    }

    [Property removeObjectIdenticalTo:*(a1 + 56)];
    v11 = *(a1 + 48);
    if (v11)
    {
      v11 = objc_getProperty(v11, v10, 40, 1);
    }

    [v11 addObject:*(a1 + 56)];
  }

  v12 = *(a1 + 40);
  (*(*(a1 + 64) + 16))();
}

- (void)setAlwaysOnParameters:(__CFString *)parameters errorStr:
{
  v42 = a2;
  if (self)
  {
    v6 = [objc_getProperty(self v5];
    if (!v6)
    {
      *parameters = @"Requires AlwaysOn configuraton";
    }

    v7 = [v42 objectForKeyedSubscript:@"ui-toggle-enabled"];

    if (v7)
    {
      v8 = [v42 objectForKeyedSubscript:@"ui-toggle-enabled"];
      [v6 setToggleEnabled:{objc_msgSend(v8, "BOOLValue")}];
    }

    v9 = [v42 objectForKeyedSubscript:@"service-exception-name"];

    if (!v9)
    {
      v18 = 0;
      goto LABEL_28;
    }

    v10 = [v42 objectForKeyedSubscript:@"service-exception-name"];
    if (([v10 isEqualToString:@"AirPlay"] & 1) == 0)
    {
      v11 = [v42 objectForKeyedSubscript:@"service-exception-name"];
      if (([v11 isEqualToString:@"AirPrint"] & 1) == 0)
      {
        v12 = [v42 objectForKeyedSubscript:@"service-exception-name"];
        if (([v12 isEqualToString:@"AirDrop"] & 1) == 0)
        {
          v13 = [v42 objectForKeyedSubscript:@"service-exception-name"];
          if (([v13 isEqualToString:@"VoiceMail"] & 1) == 0)
          {
            v14 = [v42 objectForKeyedSubscript:@"service-exception-name"];
            if (([v14 isEqualToString:@"CellularServices"] & 1) == 0)
            {
              v40 = [v42 objectForKeyedSubscript:@"service-exception-name"];
              v41 = [v40 isEqualToString:@"DeviceCommunication"];

              if ((v41 & 1) == 0)
              {
                v9 = 0;
                v18 = 0;
                v19 = @"Service must be: AirPlay, AirPrint, AirDrop, VoiceMail, CellularServices or DeviceCommunication";
                goto LABEL_40;
              }

              goto LABEL_17;
            }
          }
        }
      }
    }

LABEL_17:
    v9 = [v42 objectForKeyedSubscript:@"service-exception-action"];

    if (!v9)
    {
      v18 = 0;
      v19 = @"Action is required";
LABEL_40:
      *parameters = v19;
      goto LABEL_41;
    }

    v15 = [v42 objectForKeyedSubscript:@"service-exception-action"];
    v16 = [v15 isEqualToString:@"Allow"];

    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v20 = [v42 objectForKeyedSubscript:@"service-exception-action"];
      v21 = [v20 isEqualToString:@"Drop"];

      if ((v21 & 1) == 0)
      {
        v9 = 0;
        v18 = 0;
        v19 = @"Action must be Allow or Drop";
        goto LABEL_40;
      }

      v17 = 2;
    }

    serviceExceptions = [v6 serviceExceptions];

    if (serviceExceptions)
    {
      serviceExceptions2 = [v6 serviceExceptions];
      v9 = [serviceExceptions2 mutableCopy];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    }

    v18 = objc_alloc_init(NEAOVPNException);
    v24 = [v42 objectForKeyedSubscript:@"service-exception-name"];
    [(NEAOVPNException *)v18 setServiceName:v24];

    [(NEAOVPNException *)v18 setAction:v17];
    v25 = [v42 objectForKeyedSubscript:@"service-exception-name"];
    [v9 setObject:v18 forKeyedSubscript:v25];

    [v6 setServiceExceptions:v9];
LABEL_28:
    v26 = [v42 objectForKeyedSubscript:@"allow-all-cn-plugins"];

    if (v26)
    {
      v27 = [v42 objectForKeyedSubscript:@"allow-all-cn-plugins"];
      [v6 setAllowAllCaptiveNetworkPlugins:{objc_msgSend(v27, "BOOLValue")}];
    }

    v28 = [v42 objectForKeyedSubscript:@"allow-websheet"];

    if (v28)
    {
      v29 = [v42 objectForKeyedSubscript:@"allow-websheet"];
      [v6 setAllowCaptiveWebSheet:{objc_msgSend(v29, "BOOLValue")}];
    }

    v30 = [v42 objectForKeyedSubscript:@"cn-plugin-bundle-id"];

    if (!v30)
    {
      goto LABEL_41;
    }

    allowedCaptiveNetworkPlugins = [v6 allowedCaptiveNetworkPlugins];

    if (allowedCaptiveNetworkPlugins)
    {
      allowedCaptiveNetworkPlugins2 = [v6 allowedCaptiveNetworkPlugins];
      v33 = [v42 objectForKeyedSubscript:@"cn-plugin-bundle-id"];
      v34 = [allowedCaptiveNetworkPlugins2 objectForKeyedSubscript:v33];

      if (v34)
      {
        v19 = @"BundleId already exists";
        goto LABEL_40;
      }

      allowedCaptiveNetworkPlugins3 = [v6 allowedCaptiveNetworkPlugins];
      v35 = [allowedCaptiveNetworkPlugins3 mutableCopy];

      v9 = allowedCaptiveNetworkPlugins3;
    }

    else
    {
      v35 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    }

    v37 = objc_alloc_init(NEAOVPNException);
    v38 = [v42 objectForKeyedSubscript:@"cn-plugin-bundle-id"];
    [(NEAOVPNException *)v37 setBundleIdentifier:v38];

    [(NEAOVPNException *)v37 setAction:1];
    v39 = [v42 objectForKeyedSubscript:@"cn-plugin-bundle-id"];
    [v35 setObject:v37 forKeyedSubscript:v39];

    [v6 setAllowedCaptiveNetworkPlugins:v35];
    v9 = v35;
    v18 = v37;
LABEL_41:
  }
}

- (void)unsetAlwaysOnParameters:(__CFString *)parameters errorStr:
{
  v28 = a2;
  if (self)
  {
    v6 = [objc_getProperty(self v5];
    if (!v6)
    {
      *parameters = @"Requires AlwaysOn configuraton";
    }

    v7 = [v28 objectForKeyedSubscript:@"ui-toggle-enabled"];

    if (v7)
    {
      [v6 setToggleEnabled:0];
    }

    serviceExceptions = [v28 objectForKeyedSubscript:@"service-exception-name"];

    if (serviceExceptions)
    {
      serviceExceptions = [v6 serviceExceptions];

      if (!serviceExceptions)
      {
        v27 = @"No existing service to be removed";
        goto LABEL_26;
      }

      serviceExceptions2 = [v6 serviceExceptions];
      v10 = [v28 objectForKeyedSubscript:@"service-exception-name"];
      v11 = [serviceExceptions2 objectForKeyedSubscript:v10];

      if (!v11)
      {
        serviceExceptions = 0;
        v27 = @"Service does not exist";
        goto LABEL_26;
      }

      serviceExceptions3 = [v6 serviceExceptions];
      serviceExceptions = [serviceExceptions3 mutableCopy];

      v13 = [v28 objectForKeyedSubscript:@"service-exception-name"];
      [serviceExceptions removeObjectForKey:v13];

      if ([serviceExceptions count])
      {
        v14 = serviceExceptions;
      }

      else
      {
        v14 = 0;
      }

      [v6 setServiceExceptions:v14];
    }

    v15 = [v28 objectForKeyedSubscript:@"allow-all-cn-plugins"];

    if (v15)
    {
      [v6 setAllowAllCaptiveNetworkPlugins:0];
    }

    v16 = [v28 objectForKeyedSubscript:@"allow-websheet"];

    if (v16)
    {
      [v6 setAllowCaptiveWebSheet:0];
    }

    v17 = [v28 objectForKeyedSubscript:@"cn-plugin-bundle-id"];

    if (!v17)
    {
      goto LABEL_27;
    }

    allowedCaptiveNetworkPlugins = [v6 allowedCaptiveNetworkPlugins];

    if (allowedCaptiveNetworkPlugins)
    {
      allowedCaptiveNetworkPlugins2 = [v6 allowedCaptiveNetworkPlugins];
      v20 = [v28 objectForKeyedSubscript:@"cn-plugin-bundle-id"];
      v21 = [allowedCaptiveNetworkPlugins2 objectForKeyedSubscript:v20];

      if (v21)
      {
        allowedCaptiveNetworkPlugins3 = [v6 allowedCaptiveNetworkPlugins];
        v23 = [allowedCaptiveNetworkPlugins3 mutableCopy];

        v24 = [v28 objectForKeyedSubscript:@"cn-plugin-bundle-id"];
        [v23 removeObjectForKey:v24];

        if ([v23 count])
        {
          v25 = v6;
          v26 = v23;
        }

        else
        {
          v25 = v6;
          v26 = 0;
        }

        [v25 setAllowedCaptiveNetworkPlugins:v26];
        serviceExceptions = v23;
        goto LABEL_27;
      }

      v27 = @"BundleId does not exist";
    }

    else
    {
      v27 = @"No existing CaptoveNetworkPlugin to be removed";
    }

LABEL_26:
    *parameters = v27;
LABEL_27:
  }
}

void __94__NEUtilConfigurationClient_handleCommand_forConfigWithName_withParameters_completionHandler___block_invoke_1025(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = ne_log_large_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_INFO, "Save error: %@ for %@", buf, 0x16u);
    }

    v6 = MEMORY[0x1E696AEC0];
    v7 = [*(a1 + 32) name];
    v8 = [v6 stringWithFormat:@"Save Configuration with name %@ failed with error: %@", v7, v3];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)urlFilterConfiguration
{
  v2 = [objc_getProperty(self a2];

  return v2;
}

void __69__NEUtilConfigurationClient_reloadIdentityListWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(a1 + 32);
        if (v7)
        {
          v8 = MEMORY[0x1E695DF90];
          v9 = *(*(&v18 + 1) + 8 * v6);
          v10 = [[v8 alloc] initWithDictionary:v9];

          v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
          [v10 setObject:v11 forKeyedSubscript:@"domain"];

          if (!objc_getProperty(v7, v12, 48, 1))
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            objc_setProperty_atomic(v7, v15, v14, 48);
          }

          [objc_getProperty(v7 v13];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 40) + 16))();

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)unsetHotspotProviderParameters:(id)parameters errorStr:(id *)str
{
  hotspot = [(NEUtilConfigurationClient *)self hotspot];

  if (hotspot)
  {
    hotspot2 = [(NEUtilConfigurationClient *)self hotspot];
    [hotspot2 setEnabled:0];
  }

  else
  {
    *str = @"Missing hotspot provider configuration";
  }

  return hotspot != 0;
}

- (id)hotspot
{
  if (self)
  {
    self = [objc_getProperty(self a2];
    v2 = vars8;
  }

  return self;
}

- (BOOL)setHotspotProviderParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  hotspot = [(NEUtilConfigurationClient *)self hotspot];
  if (hotspot)
  {
    v9 = [parametersCopy objectForKeyedSubscript:@"hotspot-provider-enabled"];
    v10 = [parametersCopy objectForKeyedSubscript:@"hotspot-provider-evaluation-id"];
    v11 = [parametersCopy objectForKeyedSubscript:@"hotspot-provider-auth-id"];
    v12 = [parametersCopy objectForKeyedSubscript:@"hotspot-provider-plugin-type"];
    [hotspot setEnabled:{objc_msgSend(v9, "BOOLValue")}];
    [hotspot setEvaluationProviderBundleIdentifier:v10];
    [hotspot setAuthenticationProviderBundleIdentifier:v11];
    if (v12)
    {
      [hotspot setPluginType:v12];
    }
  }

  else
  {
    *str = @"Missing hotspot provider configuration";
  }

  return hotspot != 0;
}

- (BOOL)unsetProxyServer:(id)server errorStr:(id *)str
{
  serverCopy = server;
  v7 = [serverCopy objectForKeyedSubscript:@"type"];
  v8 = [(NEUtilConfigurationClient *)self protocolForParameters:serverCopy];

  if (v8)
  {
    proxySettings = [v8 proxySettings];
    if (proxySettings)
    {
      v10 = proxySettings;
      if ([v7 isEqualToString:@"http"])
      {
        [v10 setHTTPServer:0];
        [v10 setHTTPEnabled:0];
      }

      else if ([v7 isEqualToString:@"https"])
      {
        [v10 setHTTPSServer:0];
        [v10 setHTTPSEnabled:0];
      }

      else if ([v7 isEqualToString:@"ftp"])
      {
        [v10 setFTPServer:0];
        [v10 setFTPEnabled:0];
      }

      else if ([v7 isEqualToString:@"rtsp"])
      {
        [v10 setRTSPServer:0];
        [v10 setRTSPEnabled:0];
      }

      else if ([v7 isEqualToString:@"gopher"])
      {
        [v10 setGopherServer:0];
        [v10 setGopherEnabled:0];
      }

      else
      {
        if (![v7 isEqualToString:@"socks"])
        {
          *str = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid proxy type: %@, valid values are http, https, ftp, rtsp, gopher, and socks", v7];

          v11 = 0;
          goto LABEL_18;
        }

        [v10 setSOCKSServer:0];
        [v10 setSOCKSEnabled:0];
      }
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
    *str = @"Missing protocol";
  }

LABEL_18:

  return v11;
}

- (BOOL)setProxyServer:(id)server errorStr:(id *)str
{
  serverCopy = server;
  v7 = [serverCopy objectForKeyedSubscript:@"type"];
  v8 = [(NEUtilConfigurationClient *)self protocolForParameters:serverCopy];
  v9 = v8;
  if (!v8)
  {
    v12 = 0;
    *str = @"Missing protocol";
    goto LABEL_39;
  }

  proxySettings = [v8 proxySettings];
  if (!proxySettings)
  {
    proxySettings = objc_alloc_init(NEProxySettings);
  }

  if ([v7 isEqualToString:@"http"])
  {
    v11 = 1;
  }

  else if ([v7 isEqualToString:@"https"])
  {
    v11 = 2;
  }

  else if ([v7 isEqualToString:@"ftp"])
  {
    v11 = 3;
  }

  else if ([v7 isEqualToString:@"rtsp"])
  {
    v11 = 4;
  }

  else if ([v7 isEqualToString:@"gopher"])
  {
    v11 = 6;
  }

  else
  {
    if (([v7 isEqualToString:@"socks"] & 1) == 0)
    {
      *str = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid proxy type: %@, valid values are http, https, ftp, rtsp, gopher, and socks", v7];

      goto LABEL_33;
    }

    v11 = 5;
  }

  v13 = [NEProxyServer alloc];
  v14 = [serverCopy objectForKeyedSubscript:@"address"];
  v15 = [serverCopy objectForKeyedSubscript:@"port"];
  v16 = -[NEProxyServer initWithType:address:port:](v13, "initWithType:address:port:", v11, v14, [v15 intValue]);

  v17 = [serverCopy objectForKeyedSubscript:@"authentication-required"];

  if (v17)
  {
    v18 = [serverCopy objectForKeyedSubscript:@"authentication-required"];
    -[NEProxyServer setAuthenticationRequired:](v16, "setAuthenticationRequired:", [v18 BOOLValue]);
  }

  if (![(NEProxyServer *)v16 authenticationRequired])
  {
    goto LABEL_23;
  }

  v19 = [serverCopy objectForKeyedSubscript:@"username"];

  if (!v19)
  {
    v23 = @"Authentication is required, but username is missing";
LABEL_32:
    *str = v23;

LABEL_33:
    v12 = 0;
    goto LABEL_39;
  }

  v20 = [serverCopy objectForKeyedSubscript:@"username"];
  [(NEProxyServer *)v16 setUsername:v20];

  v21 = [serverCopy objectForKeyedSubscript:@"password"];

  if (!v21)
  {
    v23 = @"Authentication is required, but password is missing";
    goto LABEL_32;
  }

  v22 = [serverCopy objectForKeyedSubscript:@"password"];
  [(NEProxyServer *)v16 setPassword:v22];

LABEL_23:
  if (v11 > 3)
  {
    if (v11 == 4)
    {
      [(NEProxySettings *)proxySettings setRTSPServer:v16];
      [(NEProxySettings *)proxySettings setRTSPEnabled:1];
    }

    else if (v11 == 5)
    {
      [(NEProxySettings *)proxySettings setSOCKSServer:v16];
      [(NEProxySettings *)proxySettings setSOCKSEnabled:1];
    }

    else
    {
      [(NEProxySettings *)proxySettings setGopherServer:v16];
      [(NEProxySettings *)proxySettings setGopherEnabled:1];
    }
  }

  else if (v11 == 1)
  {
    [(NEProxySettings *)proxySettings setHTTPServer:v16];
    [(NEProxySettings *)proxySettings setHTTPEnabled:1];
  }

  else if (v11 == 2)
  {
    [(NEProxySettings *)proxySettings setHTTPSServer:v16];
    [(NEProxySettings *)proxySettings setHTTPSEnabled:1];
  }

  else
  {
    [(NEProxySettings *)proxySettings setFTPServer:v16];
    [(NEProxySettings *)proxySettings setFTPEnabled:1];
  }

  [v9 setProxySettings:proxySettings];

  v12 = 1;
LABEL_39:

  return v12;
}

- (BOOL)unsetProxyParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:parametersCopy];
  v8 = v7;
  if (v7)
  {
    proxySettings = [v7 proxySettings];
    if (proxySettings)
    {
      v10 = [parametersCopy objectForKeyedSubscript:@"auto-proxy-discovery"];

      if (v10)
      {
        [proxySettings setAutoProxyDiscovery:0];
      }

      v11 = [parametersCopy objectForKeyedSubscript:@"auto-config-url"];

      if (v11)
      {
        [proxySettings setAutoProxyConfigurationEnabled:0];
        [proxySettings setProxyAutoConfigURL:0];
      }

      v12 = [parametersCopy objectForKeyedSubscript:@"exclude-simple-hostnames"];

      if (v12)
      {
        [proxySettings setExcludeSimpleHostnames:0];
      }

      v13 = [parametersCopy objectForKeyedSubscript:@"exception-list"];

      if (v13)
      {
        [proxySettings setExceptionList:0];
      }

      v14 = [parametersCopy objectForKeyedSubscript:@"use-passive-ftp"];

      if (v14)
      {
        [proxySettings setUsePassiveFTP:0];
      }

      v15 = [parametersCopy objectForKeyedSubscript:@"match-domains"];

      if (v15)
      {
        [proxySettings setMatchDomains:0];
      }
    }
  }

  else
  {
    proxySettings = 0;
    *str = @"Missing protocol";
  }

  return v8 != 0;
}

- (BOOL)setProxyParameters:(id)parameters errorStr:(id *)str
{
  v32[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:parametersCopy];
  v8 = v7;
  if (!v7)
  {
    *str = @"Missing protocol";
    goto LABEL_24;
  }

  proxySettings = [v7 proxySettings];
  if (!proxySettings)
  {
    proxySettings = objc_alloc_init(NEProxySettings);
  }

  v10 = [parametersCopy objectForKeyedSubscript:@"auto-proxy-discovery"];

  if (v10)
  {
    v11 = [parametersCopy objectForKeyedSubscript:@"auto-proxy-discovery"];
    -[NEProxySettings setAutoProxyDiscovery:](proxySettings, "setAutoProxyDiscovery:", [v11 BOOLValue]);
  }

  v12 = [parametersCopy objectForKeyedSubscript:@"auto-config-url"];

  if (v12)
  {
    [(NEProxySettings *)proxySettings setAutoProxyConfigurationEnabled:1];
    v13 = MEMORY[0x1E695DFF8];
    v14 = [parametersCopy objectForKeyedSubscript:@"auto-config-url"];
    v15 = [v13 URLWithString:v14];
    [(NEProxySettings *)proxySettings setProxyAutoConfigurationURL:v15];
  }

  v16 = [parametersCopy objectForKeyedSubscript:@"exclude-simple-hostnames"];

  if (v16)
  {
    v17 = [parametersCopy objectForKeyedSubscript:@"exclude-simple-hostnames"];
    -[NEProxySettings setExcludeSimpleHostnames:](proxySettings, "setExcludeSimpleHostnames:", [v17 BOOLValue]);
  }

  v18 = [parametersCopy objectForKeyedSubscript:@"exception-list"];

  if (v18)
  {
    v19 = [parametersCopy objectForKeyedSubscript:@"exception-list"];
    v20 = isa_nsstring(v19);

    v21 = [parametersCopy objectForKeyedSubscript:@"exception-list"];
    v22 = v21;
    if (v20)
    {
      v32[0] = v21;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      [(NEProxySettings *)proxySettings setExceptionList:v23];

LABEL_16:
      goto LABEL_17;
    }

    v24 = isa_nsarray(v21);

    if (v24)
    {
      v22 = [parametersCopy objectForKeyedSubscript:@"exception-list"];
      [(NEProxySettings *)proxySettings setExceptionList:v22];
      goto LABEL_16;
    }
  }

LABEL_17:
  v25 = [parametersCopy objectForKeyedSubscript:@"use-passive-ftp"];

  if (v25)
  {
    v26 = [parametersCopy objectForKeyedSubscript:@"use-passive-ftp"];
    -[NEProxySettings setUsePassiveFTP:](proxySettings, "setUsePassiveFTP:", [v26 BOOLValue]);
  }

  v27 = [parametersCopy objectForKeyedSubscript:@"match-domains"];
  if (isa_nsarray(v27))
  {
    [(NEProxySettings *)proxySettings setMatchDomains:v27];
  }

  else if (isa_nsstring(v27))
  {
    v31 = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    [(NEProxySettings *)proxySettings setMatchDomains:v28];
  }

  [v8 setProxySettings:proxySettings];

LABEL_24:
  v29 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

- (BOOL)unsetRelayConditionsWithParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  relayConfiguration = [(NEUtilConfigurationClient *)self relayConfiguration];
  if (relayConfiguration)
  {
    v9 = [parametersCopy objectForKeyedSubscript:@"match-domains"];

    if (v9)
    {
      [relayConfiguration setMatchDomains:0];
    }

    v10 = [parametersCopy objectForKeyedSubscript:@"excluded-domains"];

    if (v10)
    {
      [relayConfiguration setExcludedDomains:0];
    }
  }

  else
  {
    *str = @"Missing relay configuration";
  }

  return relayConfiguration != 0;
}

- (id)relayConfiguration
{
  if (self)
  {
    self = [objc_getProperty(self a2];
    v2 = vars8;
  }

  return self;
}

- (BOOL)setRelayConditionsWithParameters:(id)parameters errorStr:(id *)str
{
  v16[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  relayConfiguration = [(NEUtilConfigurationClient *)self relayConfiguration];
  if (relayConfiguration)
  {
    v9 = [parametersCopy objectForKeyedSubscript:@"match-domains"];
    if (isa_nsarray(v9))
    {
      [relayConfiguration setMatchDomains:v9];
    }

    else if (isa_nsstring(v9))
    {
      v16[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      [relayConfiguration setMatchDomains:v10];
    }

    v11 = [parametersCopy objectForKeyedSubscript:@"excluded-domains"];
    if (isa_nsarray(v11))
    {
      [relayConfiguration setExcludedDomains:v11];
    }

    else if (isa_nsstring(v11))
    {
      v15 = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      [relayConfiguration setExcludedDomains:v12];
    }
  }

  else
  {
    *str = @"Missing relay configuration";
  }

  v13 = *MEMORY[0x1E69E9840];
  return relayConfiguration != 0;
}

- (BOOL)removeRelayWithParameters:(id)parameters errorStr:(id *)str
{
  v6 = [parameters objectForKeyedSubscript:@"index"];
  integerValue = [v6 integerValue];
  relayConfiguration = [(NEUtilConfigurationClient *)self relayConfiguration];
  v10 = relayConfiguration;
  if (!relayConfiguration)
  {
    v16 = 0;
    v17 = @"Missing relay configuration";
LABEL_6:
    *str = v17;
    goto LABEL_7;
  }

  relays = [relayConfiguration relays];
  v12 = [relays count];

  if (integerValue >= v12)
  {
    v16 = 0;
    v17 = @"No relay configuration present with given index";
    goto LABEL_6;
  }

  v13 = objc_alloc(MEMORY[0x1E695DF70]);
  relays2 = [v10 relays];
  v15 = [v13 initWithArray:relays2];

  [v15 removeObjectAtIndex:integerValue];
  [v10 setRelays:v15];

  v16 = 1;
LABEL_7:

  return v16;
}

- (BOOL)addRelayWithParameters:(id)parameters errorStr:(id *)str
{
  v49[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  relayConfiguration = [(NEUtilConfigurationClient *)self relayConfiguration];
  if (relayConfiguration)
  {
    strCopy = str;
    v9 = objc_alloc_init(NERelay);
    v10 = [parametersCopy objectForKeyedSubscript:@"http3-url"];
    stringByRemovingPercentEncoding = [v10 stringByRemovingPercentEncoding];

    if (stringByRemovingPercentEncoding)
    {
      v12 = [MEMORY[0x1E695DFF8] URLWithString:stringByRemovingPercentEncoding];
      [(NERelay *)v9 setHTTP3RelayURL:v12];
    }

    v48 = stringByRemovingPercentEncoding;
    v13 = [parametersCopy objectForKeyedSubscript:@"http2-url"];
    stringByRemovingPercentEncoding2 = [v13 stringByRemovingPercentEncoding];

    if (stringByRemovingPercentEncoding2)
    {
      v15 = [MEMORY[0x1E695DFF8] URLWithString:stringByRemovingPercentEncoding2];
      [(NERelay *)v9 setHTTP2RelayURL:v15];
    }

    v47 = stringByRemovingPercentEncoding2;
    v16 = [parametersCopy objectForKeyedSubscript:@"doh-url"];
    stringByRemovingPercentEncoding3 = [v16 stringByRemovingPercentEncoding];

    if (stringByRemovingPercentEncoding3)
    {
      v18 = [MEMORY[0x1E695DFF8] URLWithString:stringByRemovingPercentEncoding3];
      [(NERelay *)v9 setDnsOverHTTPSURL:v18];
    }

    v19 = [parametersCopy objectForKeyedSubscript:@"raw-public-key"];
    stringByRemovingPercentEncoding4 = [v19 stringByRemovingPercentEncoding];

    if (stringByRemovingPercentEncoding4)
    {
      v21 = dispatch_data_create([stringByRemovingPercentEncoding4 UTF8String], objc_msgSend(stringByRemovingPercentEncoding4, "length"), 0, 0);
      v22 = dispatch_data_create_with_transform();

      if (v22)
      {
        v49[0] = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
        [(NERelay *)v9 setRawPublicKeys:v23];
      }
    }

    else
    {
      v22 = 0;
    }

    v25 = [parametersCopy objectForKeyedSubscript:@"identity"];

    if (v25)
    {
      v26 = [parametersCopy objectForKeyedSubscript:@"identity"];
      integerValue = [v26 integerValue];

      if (!self || (v29 = objc_getProperty(self, v28, 48, 1)) == 0 || (v31 = v29, v32 = [objc_getProperty(self v30], v31, integerValue >= v32))
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@ index, use the list-identities command to obtain a list of available identities and their indicies", @"identity"];
        *strCopy = v24 = 0;
        goto LABEL_27;
      }

      v34 = [objc_getProperty(self v33];
      v35 = [v34 objectForKeyedSubscript:@"domain"];
      integerValue2 = [v35 integerValue];

      if (integerValue2)
      {
        *strCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, an identity in the %s keychain is required", @"identity", "system"];

        v24 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v37 = [v34 objectForKeyedSubscript:@"persistent-reference"];
      [(NERelay *)v9 setIdentityReference:v37];
    }

    v38 = objc_alloc(MEMORY[0x1E695DF70]);
    relays = [relayConfiguration relays];
    v40 = [v38 initWithArray:relays];

    v41 = [parametersCopy objectForKeyedSubscript:@"index"];
    integerValue3 = [v40 count];
    if (v41)
    {
      integerValue3 = [v41 integerValue];
    }

    v43 = integerValue3;
    if (integerValue3 >= [v40 count])
    {
      [v40 addObject:v9];
    }

    else
    {
      [v40 insertObject:v9 atIndex:v43];
    }

    [relayConfiguration setRelays:v40];

    v24 = 1;
    goto LABEL_27;
  }

  v24 = 0;
  *str = @"Missing relay configuration";
LABEL_28:

  v44 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)unsetAppPushParameters:(id)parameters errorStr:(id *)str
{
  appPush = [(NEUtilConfigurationClient *)self appPush];

  if (appPush)
  {
    appPush2 = [(NEUtilConfigurationClient *)self appPush];
    [appPush2 setMatchSSIDs:0];

    appPush3 = [(NEUtilConfigurationClient *)self appPush];
    [appPush3 setProviderConfiguration:0];

    appPush4 = [(NEUtilConfigurationClient *)self appPush];
    [appPush4 setPluginType:0];
  }

  else
  {
    *str = @"Missing app push provider configuration";
  }

  return appPush != 0;
}

- (BOOL)setAppPushParameters:(id)parameters errorStr:(id *)str
{
  v18[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  appPush = [(NEUtilConfigurationClient *)self appPush];
  if (appPush)
  {
    v8 = [parametersCopy objectForKeyedSubscript:@"match-ssids"];
    v9 = v8;
    if (v8)
    {
      if (isa_nsarray(v8))
      {
        [appPush setMatchSSIDs:v9];
      }

      else if (isa_nsstring(v9))
      {
        v18[0] = v9;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
        [appPush setMatchSSIDs:v11];
      }

      v12 = [parametersCopy objectForKeyedSubscript:@"vendor-config"];
      v13 = v12;
      if (v12 && isa_nsdictionary(v12))
      {
        v14 = [parametersCopy objectForKeyedSubscript:@"vendor-config"];
        [appPush setProviderConfiguration:v14];

        v15 = [parametersCopy objectForKeyedSubscript:@"plugin-type"];
        if (v15)
        {
          [appPush setPluginType:v15];
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
        *str = @"Missing app push provider configuration dictionary";
      }
    }

    else
    {
      v10 = 0;
      *str = @"Missing matching SSIDs in the input parameters";
    }
  }

  else
  {
    v10 = 0;
    *str = @"Missing app push provider configuration";
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)unsetDNSParameters:(id)parameters errorStr:(id *)str
{
  v6 = [(NEUtilConfigurationClient *)self protocolForParameters:parameters];
  dnsSettingsBundle = [(NEUtilConfigurationClient *)self dnsSettingsBundle];
  v8 = dnsSettingsBundle;
  if (dnsSettingsBundle)
  {
    [dnsSettingsBundle setSettings:0];
  }

  else
  {
    if (!v6)
    {
      v9 = 0;
      *str = @"Missing DNS settings or VPN protocol";
      goto LABEL_6;
    }

    [v6 setDNSSettings:0];
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (BOOL)setDNSParameters:(id)parameters errorStr:(id *)str
{
  v34[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:parametersCopy];
  dnsSettingsBundle = [(NEUtilConfigurationClient *)self dnsSettingsBundle];
  v9 = (dnsSettingsBundle | v7) != 0;
  if (dnsSettingsBundle | v7)
  {
    v10 = [parametersCopy objectForKeyedSubscript:@"protocol"];
    v11 = [parametersCopy objectForKeyedSubscript:@"servers"];
    v31 = v10;
    if (v11)
    {
      v12 = v11;
      if (isa_nsstring(v11))
      {
        v34[0] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];

        v12 = v13;
      }

      if ([v10 isEqualToString:@"tls"])
      {
        v14 = NEDNSOverTLSSettings;
      }

      else if ([v10 isEqualToString:@"https"])
      {
        v14 = NEDNSOverHTTPSSettings;
      }

      else
      {
        v14 = NEDNSSettings;
      }

      v16 = [[v14 alloc] initWithServers:v12];
    }

    else
    {
      if ([v10 isEqualToString:@"tls"])
      {
        v15 = NEDNSOverTLSSettings;
      }

      else if ([v10 isEqualToString:@"https"])
      {
        v15 = NEDNSOverHTTPSSettings;
      }

      else
      {
        v15 = NEDNSSettings;
      }

      v16 = objc_alloc_init(v15);
      v12 = 0;
    }

    v17 = [parametersCopy objectForKeyedSubscript:@"search-domains"];
    v18 = v17;
    if (v17)
    {
      if (isa_nsarray(v17))
      {
        [v16 setSearchDomains:v18];
      }

      else if (isa_nsstring(v18))
      {
        v33 = v18;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
        [v16 setSearchDomains:v19];
      }
    }

    v20 = [parametersCopy objectForKeyedSubscript:@"match-domains"];
    v21 = v20;
    if (v20)
    {
      if (isa_nsarray(v20))
      {
        [v16 setMatchDomains:v21];
      }

      else if (isa_nsstring(v21))
      {
        v32 = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
        [v16 setMatchDomains:v22];
      }
    }

    v23 = [parametersCopy objectForKeyedSubscript:@"domain-name"];
    if (isa_nsstring(v23))
    {
      [v16 setDomainName:v23];
    }

    v24 = [parametersCopy objectForKeyedSubscript:@"server-name"];
    if (isa_nsstring(v24))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v16 setServerName:v24];
      }
    }

    v25 = [parametersCopy objectForKeyedSubscript:@"url-path"];
    if (isa_nsstring(v24))
    {
      if (isa_nsstring(v25))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = MEMORY[0x1E695DFF8];
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@%@", v24, v25];
          v29 = [v28 URLWithString:v30];
          [v16 setServerURL:v29];
        }
      }
    }

    if (dnsSettingsBundle)
    {
      [dnsSettingsBundle setSettings:v16];
    }

    else if (v7)
    {
      [v7 setDNSSettings:v16];
    }

    v9 = (dnsSettingsBundle | v7) != 0;
  }

  else
  {
    *str = @"Missing DNS settings or VPN protocol";
  }

  v26 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)removeOnDemandRuleWithParameters:(id)parameters errorStr:(id *)str
{
  v6 = [parameters objectForKeyedSubscript:@"index"];
  integerValue = [v6 integerValue];
  onDemandRules = [(NEUtilConfigurationClient *)self onDemandRules];
  v9 = [onDemandRules count];

  if (integerValue >= v9)
  {
    *str = @"No rule present with given index";
  }

  else
  {
    onDemandRules2 = [(NEUtilConfigurationClient *)self onDemandRules];

    if (onDemandRules2)
    {
      v11 = objc_alloc(MEMORY[0x1E695DF70]);
      onDemandRules3 = [(NEUtilConfigurationClient *)self onDemandRules];
      v13 = [v11 initWithArray:onDemandRules3];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [v13 removeObjectAtIndex:integerValue];
    v14 = [v13 count];
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    [(NEUtilConfigurationClient *)self setOnDemandEnabled:v14 != 0];
    [(NEUtilConfigurationClient *)self setOnDemandRules:v15];
  }

  return integerValue < v9;
}

- (BOOL)addOnDemandRuleWithParameters:(id)parameters errorStr:(id *)str
{
  v43[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v7 = [parametersCopy objectForKeyedSubscript:@"action"];
  if ([v7 isEqualToString:@"connect"])
  {
    v8 = off_1E7F04CF0;
  }

  else if ([v7 isEqualToString:@"disconnect"])
  {
    v8 = off_1E7F04CF8;
  }

  else if ([v7 isEqualToString:@"ignore"])
  {
    v8 = off_1E7F04D08;
  }

  else
  {
    if (([v7 isEqualToString:@"evaluateconnection"] & 1) == 0)
    {
      v38 = 0;
      *str = @"Invalid action";
      goto LABEL_36;
    }

    v8 = off_1E7F04D00;
  }

  v9 = objc_alloc_init(*v8);
  v10 = [parametersCopy objectForKeyedSubscript:@"dns-search-domain-match"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v12 = [parametersCopy objectForKeyedSubscript:@"dns-search-domain-match"];
  v13 = v12;
  if (isKindOfClass)
  {
    v43[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
    [v9 setDNSSearchDomainMatch:v14];
  }

  else
  {
    [v9 setDNSSearchDomainMatch:v12];
  }

  v15 = [parametersCopy objectForKeyedSubscript:@"dns-server-match"];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  v17 = [parametersCopy objectForKeyedSubscript:@"dns-server-match"];
  v18 = v17;
  if (v16)
  {
    v42 = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    [v9 setDNSServerAddressMatch:v19];
  }

  else
  {
    [v9 setDNSServerAddressMatch:v17];
  }

  v20 = [parametersCopy objectForKeyedSubscript:@"interface-type"];
  v21 = v20;
  if (v20 && ([v20 isEqualToString:@"ethernet"] & 1) == 0)
  {
    if ([v21 isEqualToString:@"cellular"])
    {
      v22 = 3;
LABEL_21:
      [v9 setInterfaceTypeMatch:v22];
      goto LABEL_22;
    }

    if ([v21 isEqualToString:@"wifi"])
    {
      v22 = 2;
      goto LABEL_21;
    }
  }

LABEL_22:
  v23 = [parametersCopy objectForKeyedSubscript:@"ssid-match"];
  objc_opt_class();
  v24 = objc_opt_isKindOfClass();

  v25 = [parametersCopy objectForKeyedSubscript:@"ssid-match"];
  v26 = v25;
  if (v24)
  {
    v41 = v25;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [v9 setSSIDMatch:v27];
  }

  else
  {
    [v9 setSSIDMatch:v25];
  }

  v28 = [parametersCopy objectForKeyedSubscript:@"probe-url"];
  stringByRemovingPercentEncoding = [v28 stringByRemovingPercentEncoding];

  if (stringByRemovingPercentEncoding)
  {
    v30 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:stringByRemovingPercentEncoding];
    [v9 setProbeURL:v30];
  }

  onDemandRules = [(NEUtilConfigurationClient *)self onDemandRules];

  if (onDemandRules)
  {
    v32 = objc_alloc(MEMORY[0x1E695DF70]);
    onDemandRules2 = [(NEUtilConfigurationClient *)self onDemandRules];
    v34 = [v32 initWithArray:onDemandRules2];
  }

  else
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v35 = [parametersCopy objectForKeyedSubscript:@"index"];
  integerValue = [v34 count];
  if (v35)
  {
    integerValue = [v35 integerValue];
  }

  v37 = integerValue;
  if (integerValue >= [v34 count])
  {
    [v34 addObject:v9];
  }

  else
  {
    [v34 insertObject:v9 atIndex:v37];
  }

  v38 = 1;
  [(NEUtilConfigurationClient *)self setOnDemandEnabled:1];
  [(NEUtilConfigurationClient *)self setOnDemandRules:v34];

LABEL_36:
  v39 = *MEMORY[0x1E69E9840];
  return v38;
}

- (BOOL)unsetSharedSecretWithParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  v6 = [(NEUtilConfigurationClient *)self protocolForParameters:parametersCopy];
  v7 = [parametersCopy objectForKeyedSubscript:@"shared-secret"];

  if (v7)
  {
    sharedSecretKeychainItem = [v6 sharedSecretKeychainItem];

    if (sharedSecretKeychainItem)
    {
      sharedSecretKeychainItem2 = [v6 sharedSecretKeychainItem];
      [sharedSecretKeychainItem2 setIdentifier:0];
    }
  }

  return 1;
}

- (BOOL)unsetIPSecParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:parametersCopy];
  if ([(NEUtilConfigurationClient *)self isAlwaysOn])
  {
    v8 = [parametersCopy objectForKeyedSubscript:@"interface-name"];
    v9 = isa_nsstring(v8);

    if ((v9 & 1) == 0)
    {
      v17 = 0;
      v18 = @"Missing interface name";
      goto LABEL_27;
    }
  }

  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = 0;
    v18 = @"Configuration VPN type is not IPSec";
LABEL_27:
    *str = v18;
    goto LABEL_28;
  }

  v10 = [parametersCopy objectForKeyedSubscript:@"authentication-method"];

  if (v10)
  {
    [v7 setAuthenticationMethod:0];
  }

  v11 = [parametersCopy objectForKeyedSubscript:@"certificate-type"];

  if (v11 && [v7 type] == 5)
  {
    [v7 setCertificateType:1];
  }

  v12 = [parametersCopy objectForKeyedSubscript:@"use-internal-ip-subnet"];

  if (v12 && [v7 type] == 5)
  {
    [v7 setUseConfigurationAttributeInternalIPSubnet:0];
  }

  v13 = [parametersCopy objectForKeyedSubscript:@"disable-mobike"];

  if (v13 && [v7 type] == 5)
  {
    [v7 setDisableMOBIKE:0];
  }

  v14 = [parametersCopy objectForKeyedSubscript:@"disable-redirect"];

  if (v14 && [v7 type] == 5)
  {
    [v7 setDisableRedirect:0];
  }

  v15 = [parametersCopy objectForKeyedSubscript:@"enable-pfs"];

  if (v15 && [v7 type] == 5)
  {
    [v7 setEnablePFS:0];
  }

  v16 = [parametersCopy objectForKeyedSubscript:@"enable-revocation-check"];

  if (v16)
  {
    if ([v7 type] == 5)
    {
      [v7 setEnableRevocationCheck:0];
LABEL_31:
      [v7 setStrictRevocationCheck:0];
    }
  }

  else
  {
    v20 = [parametersCopy objectForKeyedSubscript:@"strict-revocation-check"];

    if (v20 && [v7 type] == 5)
    {
      goto LABEL_31;
    }
  }

  v21 = [parametersCopy objectForKeyedSubscript:@"tls-minimum-version"];

  if (v21 && [v7 type] == 5)
  {
    [v7 setMinimumTLSVersion:0];
  }

  v22 = [parametersCopy objectForKeyedSubscript:@"tls-maximum-version"];

  if (v22 && [v7 type] == 5)
  {
    [v7 setMaximumTLSVersion:0];
  }

  if (![(NEUtilConfigurationClient *)self unsetSharedSecretWithParameters:parametersCopy errorStr:str])
  {
    v17 = 0;
    goto LABEL_28;
  }

  v23 = [parametersCopy objectForKeyedSubscript:@"local-identifier"];

  if (v23)
  {
    [v7 setLocalIdentifier:0];
  }

  v24 = [parametersCopy objectForKeyedSubscript:@"remote-identifier"];

  if (v24)
  {
    [v7 setRemoteIdentifier:0];
  }

  v25 = [parametersCopy objectForKeyedSubscript:@"use-extended-authentication"];

  if (v25)
  {
    [v7 setUseExtendedAuthentication:0];
  }

  v26 = @"dead-peer-detection-rate";
  v27 = [parametersCopy objectForKeyedSubscript:@"dead-peer-detection-rate"];

  if (v27)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    [v7 setDeadPeerDetectionRate:0];
  }

  v28 = [parametersCopy objectForKeyedSubscript:@"server-CA-name"];

  if (v28 && [v7 type] == 5)
  {
    [v7 setServerCertificateIssuerCommonName:0];
  }

  v29 = [parametersCopy objectForKeyedSubscript:@"server-cert-name"];

  if (v29 && [v7 type] == 5)
  {
    [v7 setServerCertificateCommonName:0];
  }

  v26 = @"encryption-algorithm";
  v30 = [parametersCopy objectForKeyedSubscript:@"encryption-algorithm"];

  if (v30)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    iKESecurityAssociationParameters = [v7 IKESecurityAssociationParameters];
    [iKESecurityAssociationParameters setEncryptionAlgorithm:4];
  }

  v26 = @"integrity-algorithm";
  v32 = [parametersCopy objectForKeyedSubscript:@"integrity-algorithm"];

  if (v32)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    iKESecurityAssociationParameters2 = [v7 IKESecurityAssociationParameters];
    [iKESecurityAssociationParameters2 setIntegrityAlgorithm:3];
  }

  v26 = @"diffie-hellman-group";
  v34 = [parametersCopy objectForKeyedSubscript:@"diffie-hellman-group"];

  if (v34)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    iKESecurityAssociationParameters3 = [v7 IKESecurityAssociationParameters];
    [iKESecurityAssociationParameters3 setDiffieHellmanGroup:14];
  }

  v26 = @"life-time";
  v36 = [parametersCopy objectForKeyedSubscript:@"life-time"];

  if (v36)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    iKESecurityAssociationParameters4 = [v7 IKESecurityAssociationParameters];
    [iKESecurityAssociationParameters4 setLifetimeMinutes:10];
  }

  v26 = @"child-encryption-algorithm";
  v38 = [parametersCopy objectForKeyedSubscript:@"child-encryption-algorithm"];

  if (v38)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    childSecurityAssociationParameters = [v7 childSecurityAssociationParameters];
    [childSecurityAssociationParameters setEncryptionAlgorithm:4];
  }

  v26 = @"child-integrity-algorithm";
  v40 = [parametersCopy objectForKeyedSubscript:@"child-integrity-algorithm"];

  if (v40)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    childSecurityAssociationParameters2 = [v7 childSecurityAssociationParameters];
    [childSecurityAssociationParameters2 setIntegrityAlgorithm:3];
  }

  v26 = @"child-diffie-hellman-group";
  v42 = [parametersCopy objectForKeyedSubscript:@"child-diffie-hellman-group"];

  if (v42)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_83;
    }

    childSecurityAssociationParameters3 = [v7 childSecurityAssociationParameters];
    [childSecurityAssociationParameters3 setDiffieHellmanGroup:14];
  }

  v26 = @"child-life-time";
  v44 = [parametersCopy objectForKeyedSubscript:@"child-life-time"];

  if (!v44)
  {
    goto LABEL_78;
  }

  if ([v7 type] != 5)
  {
LABEL_83:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is only available for the IKEv2 protocol", v26];
    *str = v17 = 0;
    goto LABEL_28;
  }

  childSecurityAssociationParameters4 = [v7 childSecurityAssociationParameters];
  [childSecurityAssociationParameters4 setLifetimeMinutes:10];

LABEL_78:
  v46 = [parametersCopy objectForKeyedSubscript:@"enable-fallback"];

  if (v46 && [v7 type] == 5)
  {
    [v7 setEnableFallback:0];
  }

  v17 = 1;
LABEL_28:

  return v17;
}

- (BOOL)setSharedSecretWithParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  v6 = [(NEUtilConfigurationClient *)self protocolForParameters:parametersCopy];
  v7 = [parametersCopy objectForKeyedSubscript:@"shared-secret"];

  if (v7)
  {
    sharedSecretKeychainItem = [v6 sharedSecretKeychainItem];

    if (sharedSecretKeychainItem)
    {
      v9 = [parametersCopy objectForKeyedSubscript:@"shared-secret"];
      sharedSecretKeychainItem2 = [v6 sharedSecretKeychainItem];
      [sharedSecretKeychainItem2 setPassword:v9];
    }

    else
    {
      v11 = [NEKeychainItem alloc];
      v9 = [parametersCopy objectForKeyedSubscript:@"shared-secret"];
      if (v6)
      {
        v13 = v6[10];
        Property = objc_getProperty(v6, v12, 88, 1);
      }

      else
      {
        v13 = 0;
        Property = 0;
      }

      sharedSecretKeychainItem2 = Property;
      v15 = [(NEKeychainItem *)v11 initWithPassword:v9 domain:v13 accessGroup:sharedSecretKeychainItem2];
      [v6 setSharedSecretKeychainItem:v15];
    }
  }

  return 1;
}

- (BOOL)setIPSecParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:parametersCopy];
  if ([(NEUtilConfigurationClient *)self isAlwaysOn])
  {
    v8 = [parametersCopy objectForKeyedSubscript:@"interface-name"];
    v9 = isa_nsstring(v8);

    if ((v9 & 1) == 0)
    {
      v13 = 0;
      v14 = @"Missing interface name";
      goto LABEL_10;
    }
  }

  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = 0;
    v14 = @"Configuration VPN type is not IPSec";
LABEL_10:
    *str = v14;
    goto LABEL_11;
  }

  v10 = [parametersCopy objectForKeyedSubscript:@"authentication-method"];

  if (v10)
  {
    v11 = [parametersCopy objectForKeyedSubscript:@"authentication-method"];
    if ([v11 isEqualToString:@"none"])
    {
      v12 = 0;
    }

    else if ([v11 isEqualToString:@"certificate"])
    {
      v12 = 1;
    }

    else
    {
      if (([v11 isEqualToString:@"shared-secret"] & 1) == 0)
      {
        *str = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are none, certificate, and shared-secret", @"authentication-method"];

        goto LABEL_84;
      }

      v12 = 2;
    }

    [v7 setAuthenticationMethod:v12];
  }

  if (![(NEUtilConfigurationClient *)self setSharedSecretWithParameters:parametersCopy errorStr:str])
  {
LABEL_84:
    v13 = 0;
    goto LABEL_11;
  }

  v16 = [parametersCopy objectForKeyedSubscript:@"certificate-type"];

  if (v16 && [v7 type] == 5)
  {
    v17 = [parametersCopy objectForKeyedSubscript:@"certificate-type"];
    if ([v17 isEqualToString:@"RSA"])
    {
      v18 = 1;
    }

    else if ([v17 isEqualToString:@"ECDSA256"])
    {
      v18 = 2;
    }

    else if ([v17 isEqualToString:@"ECDSA384"])
    {
      v18 = 3;
    }

    else if ([v17 isEqualToString:@"ECDSA521"])
    {
      v18 = 4;
    }

    else
    {
      if (([v17 isEqualToString:@"Ed25519"] & 1) == 0)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are RSA, ECDSA256, ECDSA384, ECDSA521, and Ed25519", @"certificate-type", v84, v85, v86, v87, v88];
        goto LABEL_83;
      }

      v18 = 5;
    }

    [v7 setCertificateType:v18];
  }

  v19 = [parametersCopy objectForKeyedSubscript:@"use-internal-ip-subnet"];

  if (v19 && [v7 type] == 5)
  {
    v20 = [parametersCopy objectForKeyedSubscript:@"use-internal-ip-subnet"];
    [v7 setUseConfigurationAttributeInternalIPSubnet:{objc_msgSend(v20, "BOOLValue")}];
  }

  v21 = [parametersCopy objectForKeyedSubscript:@"disable-mobike"];

  if (v21 && [v7 type] == 5)
  {
    v22 = [parametersCopy objectForKeyedSubscript:@"disable-mobike"];
    [v7 setDisableMOBIKE:{objc_msgSend(v22, "BOOLValue")}];
  }

  v23 = [parametersCopy objectForKeyedSubscript:@"disable-redirect"];

  if (v23 && [v7 type] == 5)
  {
    v24 = [parametersCopy objectForKeyedSubscript:@"disable-redirect"];
    [v7 setDisableRedirect:{objc_msgSend(v24, "BOOLValue")}];
  }

  v25 = [parametersCopy objectForKeyedSubscript:@"enable-pfs"];

  if (v25 && [v7 type] == 5)
  {
    v26 = [parametersCopy objectForKeyedSubscript:@"enable-pfs"];
    [v7 setEnablePFS:{objc_msgSend(v26, "BOOLValue")}];
  }

  v27 = [parametersCopy objectForKeyedSubscript:@"enable-revocation-check"];

  if (v27)
  {
    if ([v7 type] == 5)
    {
      v28 = [parametersCopy objectForKeyedSubscript:@"enable-revocation-check"];
      [v7 setEnableRevocationCheck:{objc_msgSend(v28, "BOOLValue")}];

      if (([v7 enableRevocationCheck] & 1) == 0)
      {
        [v7 setStrictRevocationCheck:0];
      }
    }
  }

  v29 = [parametersCopy objectForKeyedSubscript:@"strict-revocation-check"];

  if (v29 && [v7 type] == 5 && objc_msgSend(v7, "enableRevocationCheck"))
  {
    v30 = [parametersCopy objectForKeyedSubscript:@"strict-revocation-check"];
    [v7 setStrictRevocationCheck:{objc_msgSend(v30, "BOOLValue")}];
  }

  v31 = [parametersCopy objectForKeyedSubscript:@"tls-minimum-version"];

  if (v31 && [v7 type] == 5)
  {
    v32 = @"tls-minimum-version";
    v17 = [parametersCopy objectForKeyedSubscript:@"tls-minimum-version"];
    if ([v17 isEqualToString:@"1.0"])
    {
      v33 = 1;
    }

    else if ([v17 isEqualToString:@"1.1"])
    {
      v33 = 2;
    }

    else
    {
      if (([v17 isEqualToString:@"1.2"] & 1) == 0)
      {
        goto LABEL_82;
      }

      v33 = 3;
    }

    [v7 setMinimumTLSVersion:v33];
  }

  v34 = [parametersCopy objectForKeyedSubscript:@"tls-maximum-version"];

  if (v34 && [v7 type] == 5)
  {
    v32 = @"tls-maximum-version";
    v17 = [parametersCopy objectForKeyedSubscript:@"tls-maximum-version"];
    if ([v17 isEqualToString:@"1.0"])
    {
      v35 = 1;
LABEL_69:
      [v7 setMaximumTLSVersion:v35];

      goto LABEL_70;
    }

    if ([v17 isEqualToString:@"1.1"])
    {
      v35 = 2;
      goto LABEL_69;
    }

    if ([v17 isEqualToString:@"1.2"])
    {
      v35 = 3;
      goto LABEL_69;
    }

LABEL_82:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are 1.0, 1.1, and 1.2", v32, v84, v85, v86, v87, v88];
    goto LABEL_83;
  }

LABEL_70:
  v36 = [parametersCopy objectForKeyedSubscript:@"local-identifier"];

  if (v36)
  {
    v37 = [parametersCopy objectForKeyedSubscript:@"local-identifier"];
    [v7 setLocalIdentifier:v37];
  }

  v38 = [parametersCopy objectForKeyedSubscript:@"remote-identifier"];

  if (v38)
  {
    v39 = [parametersCopy objectForKeyedSubscript:@"remote-identifier"];
    [v7 setRemoteIdentifier:v39];
  }

  v40 = [parametersCopy objectForKeyedSubscript:@"use-extended-authentication"];

  if (v40)
  {
    v41 = [parametersCopy objectForKeyedSubscript:@"use-extended-authentication"];
    [v7 setUseExtendedAuthentication:{objc_msgSend(v41, "BOOLValue")}];
  }

  v42 = @"dead-peer-detection-rate";
  v43 = [parametersCopy objectForKeyedSubscript:@"dead-peer-detection-rate"];

  if (v43)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_170;
    }

    v17 = [parametersCopy objectForKeyedSubscript:@"dead-peer-detection-rate"];
    if ([v17 isEqualToString:@"none"])
    {
      v44 = 0;
LABEL_89:
      [v7 setDeadPeerDetectionRate:v44];

      goto LABEL_90;
    }

    if ([v17 isEqualToString:@"low"])
    {
      v44 = 1;
      goto LABEL_89;
    }

    if ([v17 isEqualToString:@"medium"])
    {
      v44 = 2;
      goto LABEL_89;
    }

    if ([v17 isEqualToString:@"high"])
    {
      v44 = 3;
      goto LABEL_89;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are none, low, medium, and high", @"dead-peer-detection-rate", v84, v85, v86, v87, v88];
    *str = LABEL_83:;

    goto LABEL_84;
  }

LABEL_90:
  v45 = [parametersCopy objectForKeyedSubscript:@"server-CA-name"];

  if (v45 && [v7 type] == 5)
  {
    v46 = [parametersCopy objectForKeyedSubscript:@"server-CA-name"];
    [v7 setServerCertificateIssuerCommonName:v46];
  }

  v47 = [parametersCopy objectForKeyedSubscript:@"server-cert-name"];

  if (v47 && [v7 type] == 5)
  {
    v48 = [parametersCopy objectForKeyedSubscript:@"server-cert-name"];
    [v7 setServerCertificateCommonName:v48];
  }

  v42 = @"encryption-algorithm";
  v49 = [parametersCopy objectForKeyedSubscript:@"encryption-algorithm"];

  if (v49)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_170;
    }

    v50 = @"encryption-algorithm";
    v17 = [parametersCopy objectForKeyedSubscript:@"encryption-algorithm"];
    if ([v17 isEqualToString:@"AES-128"])
    {
      v51 = 3;
    }

    else if ([v17 isEqualToString:@"AES-256"])
    {
      v51 = 4;
    }

    else if ([v17 isEqualToString:@"AES-128-GCM"])
    {
      v51 = 5;
    }

    else if ([v17 isEqualToString:@"AES-256-GCM"])
    {
      v51 = 6;
    }

    else
    {
      if (([v17 isEqualToString:@"ChaCha20Poly1305"] & 1) == 0)
      {
LABEL_150:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are %@, %@, %@, %@, and %@", v50, @"AES-128", @"AES-256", @"AES-128-GCM", @"AES-256-GCM", @"ChaCha20Poly1305"];
        goto LABEL_83;
      }

      v51 = 7;
    }

    iKESecurityAssociationParameters = [v7 IKESecurityAssociationParameters];
    [iKESecurityAssociationParameters setEncryptionAlgorithm:v51];
  }

  v42 = @"integrity-algorithm";
  v53 = [parametersCopy objectForKeyedSubscript:@"integrity-algorithm"];

  if (v53)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_170;
    }

    v54 = @"integrity-algorithm";
    v17 = [parametersCopy objectForKeyedSubscript:@"integrity-algorithm"];
    if ([v17 isEqualToString:@"SHA2-256"])
    {
      v55 = 3;
    }

    else if ([v17 isEqualToString:@"SHA2-384"])
    {
      v55 = 4;
    }

    else
    {
      if (([v17 isEqualToString:@"SHA2-512"] & 1) == 0)
      {
LABEL_172:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are %@, %@, and %@", v54, @"SHA2-256", @"SHA2-384", @"SHA2-512", v87, v88];
        goto LABEL_83;
      }

      v55 = 5;
    }

    iKESecurityAssociationParameters2 = [v7 IKESecurityAssociationParameters];
    [iKESecurityAssociationParameters2 setIntegrityAlgorithm:v55];
  }

  v42 = @"diffie-hellman-group";
  v57 = [parametersCopy objectForKeyedSubscript:@"diffie-hellman-group"];

  if (v57)
  {
    if ([v7 type] != 5)
    {
      goto LABEL_170;
    }

    v58 = [parametersCopy objectForKeyedSubscript:@"diffie-hellman-group"];
    intValue = [v58 intValue];

    if (intValue - 14 >= 8 && intValue - 31 >= 2)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are 14-21, 31, 32", @"diffie-hellman-group", v84, v85];
      goto LABEL_171;
    }

    v60 = intValue;
    iKESecurityAssociationParameters3 = [v7 IKESecurityAssociationParameters];
    [iKESecurityAssociationParameters3 setDiffieHellmanGroup:v60];
  }

  v42 = @"life-time";
  v62 = [parametersCopy objectForKeyedSubscript:@"life-time"];

  if (!v62)
  {
    goto LABEL_128;
  }

  if ([v7 type] != 5)
  {
    goto LABEL_170;
  }

  v63 = [parametersCopy objectForKeyedSubscript:@"life-time"];
  intValue2 = [v63 intValue];

  if ((intValue2 - 10) > 0x596)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are in the range %d - %d minutes (24 hours)", @"life-time", 10, 1440];
LABEL_171:
    *str = v13 = 0;
    goto LABEL_11;
  }

  iKESecurityAssociationParameters4 = [v7 IKESecurityAssociationParameters];
  [iKESecurityAssociationParameters4 setLifetimeMinutes:intValue2];

LABEL_128:
  v42 = @"child-encryption-algorithm";
  v66 = [parametersCopy objectForKeyedSubscript:@"child-encryption-algorithm"];

  if (!v66)
  {
    goto LABEL_144;
  }

  if ([v7 type] != 5)
  {
    goto LABEL_170;
  }

  v50 = @"child-encryption-algorithm";
  v17 = [parametersCopy objectForKeyedSubscript:@"child-encryption-algorithm"];
  if (([v17 isEqualToString:@"AES-128"] & 1) == 0)
  {
    if ([v17 isEqualToString:@"AES-256"])
    {
      v67 = 4;
      goto LABEL_143;
    }

    if ([v17 isEqualToString:@"AES-128-GCM"])
    {
      v67 = 5;
      goto LABEL_143;
    }

    if ([v17 isEqualToString:@"AES-256-GCM"])
    {
      v67 = 6;
      goto LABEL_143;
    }

    if ([v17 isEqualToString:@"ChaCha20Poly1305"])
    {
      v67 = 7;
      goto LABEL_143;
    }

    goto LABEL_150;
  }

  v67 = 3;
LABEL_143:
  childSecurityAssociationParameters = [v7 childSecurityAssociationParameters];
  [childSecurityAssociationParameters setEncryptionAlgorithm:v67];

LABEL_144:
  v42 = @"child-integrity-algorithm";
  v69 = [parametersCopy objectForKeyedSubscript:@"child-integrity-algorithm"];

  if (!v69)
  {
    goto LABEL_154;
  }

  if ([v7 type] != 5)
  {
    goto LABEL_170;
  }

  v54 = @"child-integrity-algorithm";
  v17 = [parametersCopy objectForKeyedSubscript:@"child-integrity-algorithm"];
  if (([v17 isEqualToString:@"SHA2-256"] & 1) == 0)
  {
    if ([v17 isEqualToString:@"SHA2-384"])
    {
      v70 = 4;
      goto LABEL_153;
    }

    if ([v17 isEqualToString:@"SHA2-512"])
    {
      v70 = 5;
      goto LABEL_153;
    }

    goto LABEL_172;
  }

  v70 = 3;
LABEL_153:
  childSecurityAssociationParameters2 = [v7 childSecurityAssociationParameters];
  [childSecurityAssociationParameters2 setIntegrityAlgorithm:v70];

LABEL_154:
  v42 = @"child-diffie-hellman-group";
  v72 = [parametersCopy objectForKeyedSubscript:@"child-diffie-hellman-group"];

  if (!v72)
  {
    goto LABEL_159;
  }

  if ([v7 type] != 5)
  {
LABEL_170:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is only available for the IKEv2 protocol", v42, v84, v85];
    goto LABEL_171;
  }

  v73 = [parametersCopy objectForKeyedSubscript:@"child-diffie-hellman-group"];
  intValue3 = [v73 intValue];

  if ((intValue3 > 0x20 || ((1 << intValue3) & 0x180000026) == 0) && intValue3 - 22 <= 0xFFFFFFF7)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are 1, 2, 5, 14-21, 31, 32", @"child-diffie-hellman-group", v84, v85];
    goto LABEL_171;
  }

  childSecurityAssociationParameters3 = [v7 childSecurityAssociationParameters];
  [childSecurityAssociationParameters3 setDiffieHellmanGroup:intValue3];

LABEL_159:
  v42 = @"child-life-time";
  v76 = [parametersCopy objectForKeyedSubscript:@"child-life-time"];

  if (!v76)
  {
    goto LABEL_163;
  }

  if ([v7 type] != 5)
  {
    goto LABEL_170;
  }

  v77 = [parametersCopy objectForKeyedSubscript:@"child-life-time"];
  intValue4 = [v77 intValue];

  if ((intValue4 - 10) > 0x596)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, valid values are in the range 10 - 1440 minutes (24 hours)", @"child-life-time", v84, v85];
    goto LABEL_171;
  }

  childSecurityAssociationParameters4 = [v7 childSecurityAssociationParameters];
  [childSecurityAssociationParameters4 setLifetimeMinutes:intValue4];

LABEL_163:
  v80 = [parametersCopy objectForKeyedSubscript:@"enable-fallback"];

  if (v80 && [v7 type] == 5)
  {
    v81 = [parametersCopy objectForKeyedSubscript:@"enable-fallback"];
    [v7 setEnableFallback:{objc_msgSend(v81, "BOOLValue")}];
  }

  v82 = [parametersCopy objectForKeyedSubscript:@"mtu"];

  if (v82 && [v7 type] == 5)
  {
    v83 = [parametersCopy objectForKeyedSubscript:@"mtu"];
    [v7 setMtu:{objc_msgSend(v83, "intValue")}];
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (BOOL)unsetPasswordWithParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  v6 = [(NEUtilConfigurationClient *)self protocolForParameters:parametersCopy];
  v7 = [parametersCopy objectForKeyedSubscript:@"password"];

  if (v7)
  {
    passwordKeychainItem = [v6 passwordKeychainItem];

    if (passwordKeychainItem)
    {
      passwordKeychainItem2 = [v6 passwordKeychainItem];
      [passwordKeychainItem2 setIdentifier:0];
    }
  }

  return 1;
}

- (BOOL)unsetCommonParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:parametersCopy];
  if ([(NEUtilConfigurationClient *)self isAlwaysOn])
  {
    v8 = [parametersCopy objectForKeyedSubscript:@"enabled"];
    v9 = isa_nsstring(v8);

    if ((v9 & 1) == 0)
    {
      v26 = 0;
      v27 = @"Missing interface name";
      goto LABEL_46;
    }
  }

  if (!v7)
  {
    v26 = 0;
    v27 = @"Missing protocol";
    goto LABEL_46;
  }

  v10 = [parametersCopy objectForKeyedSubscript:@"enabled"];

  if (v10)
  {
    [(NEUtilConfigurationClient *)self setEnabled:0];
  }

  v11 = [parametersCopy objectForKeyedSubscript:@"server-address"];

  if (v11)
  {
    [v7 setServerAddress:0];
  }

  v12 = [parametersCopy objectForKeyedSubscript:@"username"];

  if (v12)
  {
    [v7 setUsername:0];
  }

  if (![(NEUtilConfigurationClient *)self unsetPasswordWithParameters:parametersCopy errorStr:str])
  {
    v26 = 0;
    goto LABEL_47;
  }

  v13 = [parametersCopy objectForKeyedSubscript:@"disconnect-on-idle-timeout"];

  if (v13)
  {
    [v7 setDisconnectOnIdleTimeout:0];
  }

  v14 = [parametersCopy objectForKeyedSubscript:@"disconnect-on-sleep"];

  if (v14)
  {
    [v7 setDisconnectOnSleep:0];
  }

  v15 = [parametersCopy objectForKeyedSubscript:@"identity"];

  if (v15)
  {
    [v7 setIdentityReferenceInternal:0];
  }

  v16 = [parametersCopy objectForKeyedSubscript:@"provider-bundle-identifier"];

  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = 0;
      v27 = @"provider-bundle-identifier can only be specified for provider-based configurations";
      goto LABEL_46;
    }

    [v7 setProviderBundleIdentifier:0];
  }

  v17 = [parametersCopy objectForKeyedSubscript:@"designated-requirement"];

  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v7 setDesignatedRequirement:0];
      goto LABEL_24;
    }

    v26 = 0;
    v27 = @"designated-requirement can only be specified for provider-based configurations";
LABEL_46:
    *str = v27;
    goto LABEL_47;
  }

LABEL_24:
  v18 = [parametersCopy objectForKeyedSubscript:@"extensible-sso-provider"];

  if (v18)
  {
    [v7 setExtensibleSSOProvider:0];
  }

  v19 = [parametersCopy objectForKeyedSubscript:@"include-all-networks"];

  if (v19)
  {
    [v7 setIncludeAllNetworks:0];
  }

  v20 = [parametersCopy objectForKeyedSubscript:@"exclude-local-networks"];

  if (v20)
  {
    [v7 setExcludeLocalNetworks:0];
  }

  v21 = [parametersCopy objectForKeyedSubscript:@"exclude-cellular-services"];

  if (v21)
  {
    [v7 setExcludeCellularServices:0];
  }

  v22 = [parametersCopy objectForKeyedSubscript:@"exclude-apns"];

  if (v22)
  {
    [v7 setExcludeAPNs:0];
  }

  v23 = [parametersCopy objectForKeyedSubscript:@"exclude-device-communication"];

  if (v23)
  {
    [v7 setExcludeDeviceCommunication:0];
  }

  v24 = [parametersCopy objectForKeyedSubscript:@"enforce-routes"];

  if (v24)
  {
    [v7 setEnforceRoutes:0];
  }

  v25 = [parametersCopy objectForKeyedSubscript:@"cellular-slice-UUID"];

  if (v25)
  {
    [v7 setSliceUUID:0];
  }

  v26 = 1;
LABEL_47:

  return v26;
}

- (BOOL)setProviderTypeWithParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:parametersCopy];
  v8 = [parametersCopy objectForKeyedSubscript:@"provider-type"];

  if (!v8)
  {
    goto LABEL_10;
  }

  if (self)
  {
    Property = objc_getProperty(self, v9, 56, 1);
  }

  else
  {
    Property = 0;
  }

  appVPN = [Property appVPN];
  if (!appVPN || (v12 = appVPN, v13 = [v7 type], v12, v13 != 4))
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Provider type can only be set for plugin-based per-app VPN configurations"];
    *str = v19 = 0;
    goto LABEL_12;
  }

  v14 = [parametersCopy objectForKeyedSubscript:@"provider-type"];
  if (![v14 isEqualToString:@"app-proxy"])
  {
    if (![v14 isEqualToString:@"packet-tunnel"])
    {
      *str = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, must be either app-proxy or packet-tunnel", @"provider-type"];

      v19 = 0;
      goto LABEL_12;
    }

    v16 = 1;
    if (self)
    {
      goto LABEL_8;
    }

LABEL_15:
    v17 = 0;
    goto LABEL_9;
  }

  v16 = 2;
  if (!self)
  {
    goto LABEL_15;
  }

LABEL_8:
  v17 = objc_getProperty(self, v15, 56, 1);
LABEL_9:
  appVPN2 = [v17 appVPN];
  [appVPN2 setTunnelType:v16];

LABEL_10:
  v19 = 1;
LABEL_12:

  return v19;
}

- (BOOL)setPasswordWithParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  v6 = [(NEUtilConfigurationClient *)self protocolForParameters:parametersCopy];
  v7 = [parametersCopy objectForKeyedSubscript:@"password"];

  if (v7)
  {
    passwordKeychainItem = [v6 passwordKeychainItem];

    if (passwordKeychainItem)
    {
      v9 = [parametersCopy objectForKeyedSubscript:@"password"];
      passwordKeychainItem2 = [v6 passwordKeychainItem];
      [passwordKeychainItem2 setPassword:v9];
    }

    else
    {
      v11 = [NEKeychainItem alloc];
      v9 = [parametersCopy objectForKeyedSubscript:@"password"];
      if (v6)
      {
        v13 = v6[10];
        Property = objc_getProperty(v6, v12, 88, 1);
      }

      else
      {
        v13 = 0;
        Property = 0;
      }

      passwordKeychainItem2 = Property;
      v15 = [(NEKeychainItem *)v11 initWithPassword:v9 domain:v13 accessGroup:passwordKeychainItem2];
      [v6 setPasswordKeychainItem:v15];
    }
  }

  return 1;
}

- (BOOL)setCommonParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  v7 = [(NEUtilConfigurationClient *)self protocolForParameters:parametersCopy];
  filterConfiguration = [(NEUtilConfigurationClient *)self filterConfiguration];
  if ([(NEUtilConfigurationClient *)self isAlwaysOn])
  {
    v9 = [parametersCopy objectForKeyedSubscript:@"interface-name"];
    v10 = isa_nsstring(v9);

    if ((v10 & 1) == 0)
    {
      v22 = 0;
      v23 = @"Missing interface name";
      goto LABEL_17;
    }
  }

  v11 = [parametersCopy objectForKeyedSubscript:@"enabled"];

  if (v11)
  {
    v12 = [parametersCopy objectForKeyedSubscript:@"enabled"];
    -[NEUtilConfigurationClient setEnabled:](self, "setEnabled:", [v12 BOOLValue]);
  }

  v13 = [parametersCopy objectForKeyedSubscript:@"server-address"];

  if (v13)
  {
    v14 = v7;
    if (v7 || (v14 = filterConfiguration) != 0)
    {
      v15 = [parametersCopy objectForKeyedSubscript:@"server-address"];
      stringByRemovingPercentEncoding = [v15 stringByRemovingPercentEncoding];
      [v14 setServerAddress:stringByRemovingPercentEncoding];
    }
  }

  v17 = [parametersCopy objectForKeyedSubscript:@"username"];

  if (v17)
  {
    if (v7)
    {
      v18 = [parametersCopy objectForKeyedSubscript:@"username"];
      [v7 setUsername:v18];

      goto LABEL_13;
    }

    if (filterConfiguration)
    {
      v24 = [parametersCopy objectForKeyedSubscript:@"username"];
      [filterConfiguration setUsername:v24];
LABEL_20:
    }

LABEL_21:
    v22 = 1;
    goto LABEL_75;
  }

  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_13:
  if (![(NEUtilConfigurationClient *)self setPasswordWithParameters:parametersCopy errorStr:str])
  {
LABEL_74:
    v22 = 0;
    goto LABEL_75;
  }

  v19 = [parametersCopy objectForKeyedSubscript:@"on-demand-enabled"];

  if (v19)
  {
    v20 = [parametersCopy objectForKeyedSubscript:@"on-demand-enabled"];
    bOOLValue = [v20 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v25 = [parametersCopy objectForKeyedSubscript:@"disconnect-on-demand-enabled"];

  if (!v25)
  {
    bOOLValue2 = 0;
    if (!v19)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v26 = [parametersCopy objectForKeyedSubscript:@"disconnect-on-demand-enabled"];
  bOOLValue2 = [v26 BOOLValue];

  if (v19)
  {
LABEL_25:
    [(NEUtilConfigurationClient *)self setOnDemandEnabled:bOOLValue];
  }

LABEL_26:
  if (v25)
  {
    [(NEUtilConfigurationClient *)self setDisconnectOnDemandEnabled:bOOLValue2];
  }

  v28 = [parametersCopy objectForKeyedSubscript:@"on-demand-user-override-disabled"];

  if (v28)
  {
    v29 = [parametersCopy objectForKeyedSubscript:@"on-demand-user-override-disabled"];
    -[NEUtilConfigurationClient setOnDemandUserOverrideDisabled:](self, "setOnDemandUserOverrideDisabled:", [v29 BOOLValue]);
  }

  v30 = [parametersCopy objectForKeyedSubscript:@"disconnect-on-idle-timeout"];

  if (v30)
  {
    v31 = [parametersCopy objectForKeyedSubscript:@"disconnect-on-idle-timeout"];
    [v7 setDisconnectOnIdleTimeout:{objc_msgSend(v31, "intValue")}];
  }

  v32 = [parametersCopy objectForKeyedSubscript:@"disconnect-on-sleep"];

  if (v32)
  {
    v33 = [parametersCopy objectForKeyedSubscript:@"disconnect-on-sleep"];
    [v7 setDisconnectOnSleep:{objc_msgSend(v33, "BOOLValue")}];
  }

  v34 = [parametersCopy objectForKeyedSubscript:@"identity"];

  if (v34)
  {
    v35 = [parametersCopy objectForKeyedSubscript:@"identity"];
    integerValue = [v35 integerValue];

    if (!self || (v38 = objc_getProperty(self, v37, 48, 1)) == 0 || (v40 = v38, v41 = [objc_getProperty(self v39], v40, integerValue >= v41))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@ index, use the list-identities command to obtain a list of available identities and their indicies", @"identity"];
      *str = v22 = 0;
      goto LABEL_75;
    }

    v43 = [objc_getProperty(self v42];
    v44 = [v43 objectForKeyedSubscript:@"domain"];
    integerValue2 = [v44 integerValue];

    if (integerValue2)
    {
      *str = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid %@, an identity in the %s keychain is required", @"identity", "system"];

      goto LABEL_74;
    }

    v46 = [v43 objectForKeyedSubscript:@"persistent-reference"];
    [v7 setIdentityReferenceInternal:v46];
  }

  if (![(NEUtilConfigurationClient *)self setProviderTypeWithParameters:parametersCopy errorStr:str])
  {
    goto LABEL_74;
  }

  v47 = [parametersCopy objectForKeyedSubscript:@"provider-bundle-identifier"];

  if (v47)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = 0;
      v23 = @"provider-bundle-identifier can only be specified for provider-based configurations";
      goto LABEL_17;
    }

    v48 = [parametersCopy objectForKeyedSubscript:@"provider-bundle-identifier"];
    [v7 setProviderBundleIdentifier:v48];
  }

  v49 = [parametersCopy objectForKeyedSubscript:@"designated-requirement"];

  if (!v49)
  {
LABEL_52:
    v52 = [parametersCopy objectForKeyedSubscript:@"extensible-sso-provider"];

    if (v52)
    {
      v53 = [parametersCopy objectForKeyedSubscript:@"extensible-sso-provider"];
      stringByRemovingPercentEncoding2 = [v53 stringByRemovingPercentEncoding];
      [v7 setExtensibleSSOProvider:stringByRemovingPercentEncoding2];
    }

    v55 = [parametersCopy objectForKeyedSubscript:@"access-group"];

    if (v55)
    {
      passwordKeychainItem = [v7 passwordKeychainItem];

      if (passwordKeychainItem)
      {
        v58 = [parametersCopy objectForKeyedSubscript:@"access-group"];
        passwordKeychainItem2 = [v7 passwordKeychainItem];
        [passwordKeychainItem2 setAccessGroup:v58];
      }

      v60 = objc_getProperty(v7, v57, 96, 1);

      if (v60)
      {
        v61 = [parametersCopy objectForKeyedSubscript:@"access-group"];
        v63 = objc_getProperty(v7, v62, 96, 1);
        [v63 setAccessGroup:v61];
      }
    }

    v64 = [parametersCopy objectForKeyedSubscript:@"include-all-networks"];

    if (v64)
    {
      v65 = [parametersCopy objectForKeyedSubscript:@"include-all-networks"];
      [v7 setIncludeAllNetworks:{objc_msgSend(v65, "BOOLValue")}];
    }

    v66 = [parametersCopy objectForKeyedSubscript:@"exclude-local-networks"];

    if (v66)
    {
      v67 = [parametersCopy objectForKeyedSubscript:@"exclude-local-networks"];
      [v7 setExcludeLocalNetworks:{objc_msgSend(v67, "BOOLValue")}];
    }

    v68 = [parametersCopy objectForKeyedSubscript:@"exclude-cellular-services"];

    if (v68)
    {
      v69 = [parametersCopy objectForKeyedSubscript:@"exclude-cellular-services"];
      [v7 setExcludeCellularServices:{objc_msgSend(v69, "BOOLValue")}];
    }

    v70 = [parametersCopy objectForKeyedSubscript:@"exclude-apns"];

    if (v70)
    {
      v71 = [parametersCopy objectForKeyedSubscript:@"exclude-apns"];
      [v7 setExcludeAPNs:{objc_msgSend(v71, "BOOLValue")}];
    }

    v72 = [parametersCopy objectForKeyedSubscript:@"exclude-device-communication"];

    if (v72)
    {
      v73 = [parametersCopy objectForKeyedSubscript:@"exclude-device-communication"];
      [v7 setExcludeDeviceCommunication:{objc_msgSend(v73, "BOOLValue")}];
    }

    v74 = [parametersCopy objectForKeyedSubscript:@"enforce-routes"];

    if (v74)
    {
      v75 = [parametersCopy objectForKeyedSubscript:@"enforce-routes"];
      [v7 setEnforceRoutes:{objc_msgSend(v75, "BOOLValue")}];
    }

    v76 = [parametersCopy objectForKeyedSubscript:@"cellular-slice-UUID"];

    if (!v76)
    {
      goto LABEL_21;
    }

    v77 = [parametersCopy objectForKeyedSubscript:@"cellular-slice-UUID"];
    v24 = [v77 componentsSeparatedByString:@"/"];

    if ([v24 count] >= 2)
    {
      v78 = objc_alloc(MEMORY[0x1E696AEC0]);
      v79 = [v24 objectAtIndexedSubscript:0];
      v80 = [v24 objectAtIndexedSubscript:1];
      v81 = [v78 initWithFormat:@"%@:%@", v79, v80];
      [v7 setSliceUUID:v81];
    }

    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v50 = [parametersCopy objectForKeyedSubscript:@"designated-requirement"];
    stringByRemovingPercentEncoding3 = [v50 stringByRemovingPercentEncoding];
    [v7 setDesignatedRequirement:stringByRemovingPercentEncoding3];

    goto LABEL_52;
  }

  v22 = 0;
  v23 = @"designated-requirement can only be specified for provider-based configurations";
LABEL_17:
  *str = v23;
LABEL_75:

  return v22;
}

- (BOOL)unsetDNSProxyWithParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  dnsProxyConfiguration = [(NEUtilConfigurationClient *)self dnsProxyConfiguration];
  v7 = [parametersCopy objectForKeyedSubscript:@"vendor-config"];
  v8 = isa_nsdictionary(v7);

  if (v8)
  {
    [dnsProxyConfiguration setProviderConfiguration:0];
  }

  v9 = [parametersCopy objectForKeyedSubscript:@"designated-requirement"];

  if (v9)
  {
    [dnsProxyConfiguration setDesignatedRequirement:0];
  }

  return 1;
}

- (BOOL)setDNSProxyWithParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  dnsProxyConfiguration = [(NEUtilConfigurationClient *)self dnsProxyConfiguration];
  if (dnsProxyConfiguration)
  {
    v8 = [parametersCopy objectForKeyedSubscript:@"vendor-config"];
    v9 = isa_nsdictionary(v8);

    if (v9)
    {
      v10 = [parametersCopy objectForKeyedSubscript:@"vendor-config"];
      [dnsProxyConfiguration setProviderConfiguration:v10];
    }

    v11 = [parametersCopy objectForKeyedSubscript:@"designated-requirement"];

    if (v11)
    {
      v12 = [parametersCopy objectForKeyedSubscript:@"designated-requirement"];
      stringByRemovingPercentEncoding = [v12 stringByRemovingPercentEncoding];
      [dnsProxyConfiguration setDesignatedRequirement:stringByRemovingPercentEncoding];
    }
  }

  else
  {
    *str = @"DNS Proxy plugin type has not been set yet";
  }

  return dnsProxyConfiguration != 0;
}

- (BOOL)unsetFilterPluginParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  filterConfiguration = [(NEUtilConfigurationClient *)self filterConfiguration];
  v7 = [parametersCopy objectForKeyedSubscript:@"organization"];

  if (v7)
  {
    [filterConfiguration setOrganization:0];
  }

  v8 = [parametersCopy objectForKeyedSubscript:@"vendor-config"];

  if (v8)
  {
    [filterConfiguration setVendorConfiguration:0];
  }

  v9 = [parametersCopy objectForKeyedSubscript:@"designated-requirement"];

  if (v9)
  {
    [filterConfiguration setDataProviderDesignatedRequirement:0];
  }

  return 1;
}

- (BOOL)setFilterPluginWithParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  filterConfiguration = [(NEUtilConfigurationClient *)self filterConfiguration];
  if (filterConfiguration)
  {
    v8 = [parametersCopy objectForKeyedSubscript:@"organization"];

    if (v8)
    {
      v9 = [parametersCopy objectForKeyedSubscript:@"organization"];
      [filterConfiguration setOrganization:v9];
    }

    v10 = [parametersCopy objectForKeyedSubscript:@"filter-browsers"];

    if (v10)
    {
      v11 = [parametersCopy objectForKeyedSubscript:@"filter-browsers"];
      [filterConfiguration setFilterBrowsers:{objc_msgSend(v11, "BOOLValue")}];
    }

    v12 = [parametersCopy objectForKeyedSubscript:@"filter-sockets"];

    if (v12)
    {
      v13 = [parametersCopy objectForKeyedSubscript:@"filter-sockets"];
      [filterConfiguration setFilterSockets:{objc_msgSend(v13, "BOOLValue")}];
    }

    v14 = [parametersCopy objectForKeyedSubscript:@"filter-packets"];

    if (v14)
    {
      v15 = [parametersCopy objectForKeyedSubscript:@"filter-packets"];
      [filterConfiguration setFilterPackets:{objc_msgSend(v15, "BOOLValue")}];
    }

    v16 = [parametersCopy objectForKeyedSubscript:@"disable-default-drop"];

    if (v16)
    {
      v17 = [parametersCopy objectForKeyedSubscript:@"disable-default-drop"];
      [filterConfiguration setDisableDefaultDrop:{objc_msgSend(v17, "BOOLValue")}];
    }

    v18 = [parametersCopy objectForKeyedSubscript:@"preserve-existing-connections"];

    if (v18)
    {
      v19 = [parametersCopy objectForKeyedSubscript:@"preserve-existing-connections"];
      [filterConfiguration setPreserveExistingConnections:{objc_msgSend(v19, "BOOLValue")}];
    }

    v20 = [parametersCopy objectForKeyedSubscript:@"vendor-config"];
    v21 = isa_nsdictionary(v20);

    if (v21)
    {
      v22 = [parametersCopy objectForKeyedSubscript:@"vendor-config"];
      [filterConfiguration setVendorConfiguration:v22];
    }

    v23 = [parametersCopy objectForKeyedSubscript:@"provider-bundle-identifier"];

    if (v23)
    {
      v24 = [parametersCopy objectForKeyedSubscript:@"provider-bundle-identifier"];
      [filterConfiguration setFilterDataProviderBundleIdentifier:v24];
    }

    v25 = [parametersCopy objectForKeyedSubscript:@"designated-requirement"];

    if (v25)
    {
      v26 = [parametersCopy objectForKeyedSubscript:@"designated-requirement"];
      stringByRemovingPercentEncoding = [v26 stringByRemovingPercentEncoding];
      [filterConfiguration setDataProviderDesignatedRequirement:stringByRemovingPercentEncoding];
    }

    v28 = [parametersCopy objectForKeyedSubscript:@"packet-provider-bundle-identifier"];

    if (v28)
    {
      v29 = [parametersCopy objectForKeyedSubscript:@"packet-provider-bundle-identifier"];
      [filterConfiguration setFilterPacketProviderBundleIdentifier:v29];
    }

    v30 = [parametersCopy objectForKeyedSubscript:@"packet-provider-designated-requirement"];

    if (v30)
    {
      v31 = [parametersCopy objectForKeyedSubscript:@"packet-provider-designated-requirement"];
      stringByRemovingPercentEncoding2 = [v31 stringByRemovingPercentEncoding];
      [filterConfiguration setPacketProviderDesignatedRequirement:stringByRemovingPercentEncoding2];
    }
  }

  else
  {
    *str = @"Filter plugin type has not been set yet";
  }

  return filterConfiguration != 0;
}

- (BOOL)setProtocolWithParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  v7 = [parametersCopy objectForKeyedSubscript:@"type"];
  if ([v7 isEqualToString:@"ikev1"])
  {
    v8 = NEVPNProtocolIPSec;
    goto LABEL_7;
  }

  if ([v7 isEqualToString:@"ikev2"])
  {
    goto LABEL_4;
  }

  if (![v7 isEqualToString:@"l2tp"])
  {
    if (![v7 isEqualToString:@"aovpn"])
    {
      if ([v7 isEqualToString:@"plugin"])
      {
        v44 = [parametersCopy objectForKeyedSubscript:@"plugin-type"];
        if (v44)
        {
          v45 = v44;
          v10 = [[NETunnelProviderProtocol alloc] initWithPluginType:v44];

          if (self)
          {
            goto LABEL_8;
          }

          goto LABEL_47;
        }

        v35 = 0;
        v66 = @"Missing plugin type";
      }

      else
      {
        v35 = 0;
        v66 = @"Invalid protocol type";
      }

      *str = v66;
      goto LABEL_53;
    }

LABEL_4:
    v8 = NEVPNProtocolIKEv2;
    goto LABEL_7;
  }

  v8 = NEVPNProtocolL2TP;
LABEL_7:
  v10 = objc_alloc_init(v8);
  if (self)
  {
LABEL_8:
    Property = objc_getProperty(self, v9, 56, 1);
    goto LABEL_9;
  }

LABEL_47:
  Property = 0;
LABEL_9:
  alwaysOnVPN = [Property alwaysOnVPN];

  if (!alwaysOnVPN)
  {
    if (self)
    {
      v25 = objc_getProperty(self, v13, 56, 1);
    }

    else
    {
      v25 = 0;
    }

    appVPN = [v25 appVPN];

    if (appVPN)
    {
      if ([(NEVPNProtocol *)v10 type]!= 4 && [(NEVPNProtocol *)v10 type]!= 1 && [(NEVPNProtocol *)v10 type]!= 5)
      {
        v34 = @"Only plugin and IKE protocols are supported with App VPN";
        goto LABEL_30;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = 2;
      }

      else
      {
        v29 = 1;
      }

      if (self)
      {
        v30 = [objc_getProperty(self v28];
        [v30 setTunnelType:v29];

        v32 = objc_getProperty(self, v31, 56, 1);
      }

      else
      {
        appVPN2 = [0 appVPN];
        [appVPN2 setTunnelType:v29];

        v32 = 0;
      }

      appVPN3 = [v32 appVPN];
    }

    else
    {
      if (self)
      {
        v39 = objc_getProperty(self, v27, 56, 1);
      }

      else
      {
        v39 = 0;
      }

      v40 = [v39 VPN];

      if (!v40)
      {
        if (self)
        {
          v49 = objc_getProperty(self, v41, 56, 1);
        }

        else
        {
          v49 = 0;
        }

        contentFilter = [v49 contentFilter];
        if (contentFilter && (v52 = contentFilter, objc_opt_class(), v53 = objc_opt_isKindOfClass(), v52, (v53 & 1) != 0))
        {
          v54 = objc_alloc_init(NEFilterProviderConfiguration);
          pluginType = [(NETunnelProviderProtocol *)v10 pluginType];
          [(NEFilterProviderConfiguration *)v54 setPluginType:pluginType];

          if (self)
          {
            v57 = objc_getProperty(self, v56, 56, 1);
          }

          else
          {
            v57 = 0;
          }

          contentFilter2 = [v57 contentFilter];
          [contentFilter2 setProvider:v54];
        }

        else
        {
          if (self)
          {
            v59 = objc_getProperty(self, v51, 56, 1);
          }

          else
          {
            v59 = 0;
          }

          dnsProxy = [v59 dnsProxy];
          if (!dnsProxy || (v61 = dnsProxy, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v61, (isKindOfClass & 1) == 0))
          {
            v34 = @"Configuration does not have a VPN type";
            goto LABEL_30;
          }

          v54 = objc_alloc_init(NEDNSProxyProviderProtocol);
          pluginType2 = [(NETunnelProviderProtocol *)v10 pluginType];
          [(NEFilterProviderConfiguration *)v54 setPluginType:pluginType2];

          if (self)
          {
            v65 = objc_getProperty(self, v64, 56, 1);
          }

          else
          {
            v65 = 0;
          }

          contentFilter2 = [v65 dnsProxy];
          [contentFilter2 setProtocol:v54];
        }

LABEL_52:
        v35 = 1;
        goto LABEL_53;
      }

      if (self)
      {
        v42 = objc_getProperty(self, v41, 56, 1);
      }

      else
      {
        v42 = 0;
      }

      if ([v42 grade] == 2 && -[NEVPNProtocol type](v10, "type") == 2)
      {
        v34 = @"PPP protocols are not supported with Personal VPN";
        goto LABEL_30;
      }

      if (self)
      {
        v46 = objc_getProperty(self, v43, 56, 1);
      }

      else
      {
        v46 = 0;
      }

      appVPN3 = [v46 VPN];
    }

    v47 = appVPN3;
    [appVPN3 setProtocol:v10];

    goto LABEL_52;
  }

  v14 = [parametersCopy objectForKeyedSubscript:@"interface-name"];
  if (v14)
  {
    v16 = v14;
    if (self)
    {
      v17 = objc_getProperty(self, v15, 56, 1);
    }

    else
    {
      v17 = 0;
    }

    alwaysOnVPN2 = [v17 alwaysOnVPN];
    interfaceProtocolMapping = [alwaysOnVPN2 interfaceProtocolMapping];

    if (interfaceProtocolMapping)
    {
      if (self)
      {
        v21 = objc_getProperty(self, v20, 56, 1);
      }

      else
      {
        v21 = 0;
      }

      alwaysOnVPN3 = [v21 alwaysOnVPN];
      interfaceProtocolMapping2 = [alwaysOnVPN3 interfaceProtocolMapping];
      v24 = [interfaceProtocolMapping2 mutableCopy];
    }

    else
    {
      v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    }

    [v24 setObject:v10 forKeyedSubscript:v16];
    if (self)
    {
      v37 = objc_getProperty(self, v36, 56, 1);
    }

    else
    {
      v37 = 0;
    }

    alwaysOnVPN4 = [v37 alwaysOnVPN];
    [alwaysOnVPN4 setInterfaceProtocolMapping:v24];

    goto LABEL_52;
  }

  v34 = @"Missing interface name";
LABEL_30:
  *str = v34;

  v35 = 0;
LABEL_53:

  return v35;
}

- (BOOL)createConfigurationWithParameters:(id)parameters errorStr:(id *)str
{
  parametersCopy = parameters;
  v7 = [parametersCopy objectForKeyedSubscript:@"name"];
  v8 = [parametersCopy objectForKeyedSubscript:@"type"];
  v9 = [parametersCopy objectForKeyedSubscript:@"grade"];

  if (v9 && ([v9 isEqualToString:@"enterprise"] & 1) == 0)
  {
    if ([v9 isEqualToString:@"personal"])
    {
      v10 = 2;
    }

    else
    {
      if (([v9 isEqualToString:@"system"] & 1) == 0)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid configuration grade: %@", v9];
        *str = v13 = 0;
        goto LABEL_36;
      }

      v10 = 3;
    }
  }

  else
  {
    v10 = 1;
  }

  v11 = [[NEConfiguration alloc] initWithName:v7 grade:v10];
  if ([v8 isEqualToString:@"vpn"])
  {
    v12 = objc_alloc_init(NEVPN);
    [(NEConfiguration *)v11 setVPN:v12];
  }

  else if ([v8 isEqualToString:@"aovpn"])
  {
    v12 = objc_alloc_init(NEAOVPN);
    [(NEConfiguration *)v11 setAlwaysOnVPN:v12];
  }

  else if ([v8 isEqualToString:@"appvpn"])
  {
    v12 = objc_alloc_init(NEVPNApp);
    [(NEConfiguration *)v11 setAppVPN:v12];
  }

  else if ([v8 isEqualToString:@"contentfilter"])
  {
    v12 = objc_alloc_init(NEContentFilter);
    [(NEConfiguration *)v11 setContentFilter:v12];
  }

  else if ([v8 isEqualToString:@"pathcontroller"])
  {
    v12 = objc_alloc_init(NEPathController);
    [(NEConfiguration *)v11 setPathController:v12];
  }

  else if ([v8 isEqualToString:@"dnsproxy"])
  {
    v12 = objc_alloc_init(NEDNSProxy);
    [(NEConfiguration *)v11 setDnsProxy:v12];
  }

  else if ([v8 isEqualToString:@"dnssettings"])
  {
    v12 = objc_alloc_init(NEDNSSettingsBundle);
    [(NEConfiguration *)v11 setDnsSettings:v12];
  }

  else if ([v8 isEqualToString:@"appPush"])
  {
    v12 = objc_alloc_init(NEAppPush);
    [(NEConfiguration *)v11 setAppPush:v12];
  }

  else if ([v8 isEqualToString:@"relay"])
  {
    v12 = objc_alloc_init(NERelayConfiguration);
    [(NEConfiguration *)v11 setRelay:v12];
  }

  else if ([v8 isEqualToString:@"urlfilter"])
  {
    v12 = objc_alloc_init(NEURLFilterConfiguration);
    [(NEConfiguration *)v11 setUrlFilter:v12];
  }

  else
  {
    if (![v8 isEqualToString:@"hotspot"])
    {
      *str = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid configuration type: %@", v8];

      v13 = 0;
      goto LABEL_36;
    }

    v12 = objc_alloc_init(NEHotspot);
    [(NEConfiguration *)v11 setHotspot:v12];
  }

  if (self)
  {
    if (!objc_getProperty(self, v14, 32, 1))
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      objc_setProperty_atomic(self, v17, v16, 32);
    }

    Property = objc_getProperty(self, v15, 32, 1);
  }

  else
  {

    Property = 0;
  }

  [Property addObject:v11];
  currentConfiguration = self->_currentConfiguration;
  self->_currentConfiguration = v11;
  v20 = v11;

  v13 = 1;
LABEL_36:

  return v13;
}

- (NEAppPush)appPush
{
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
    v2 = vars8;
  }

  return [(NEUtilConfigurationClient *)self appPush];
}

- (NEDNSSettingsBundle)dnsSettingsBundle
{
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
    v2 = vars8;
  }

  return [(NEUtilConfigurationClient *)self dnsSettings];
}

- (NEDNSProxyProviderProtocol)dnsProxyConfiguration
{
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  dnsProxy = [(NEUtilConfigurationClient *)self dnsProxy];
  protocol = [dnsProxy protocol];

  return protocol;
}

- (NEFilterProviderConfiguration)filterConfiguration
{
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  contentFilter = [(NEUtilConfigurationClient *)self contentFilter];
  provider = [contentFilter provider];

  return provider;
}

- (id)protocolForParameters:(id)parameters
{
  parametersCopy = parameters;
  if (self)
  {
    Property = objc_getProperty(self, v4, 56, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property VPN];

  if (v7)
  {
    if (self)
    {
      v9 = objc_getProperty(self, v8, 56, 1);
    }

    else
    {
      v9 = 0;
    }

    appVPN2 = [v9 VPN];
LABEL_13:
    v15 = appVPN2;
    protocol = [appVPN2 protocol];
LABEL_14:

    goto LABEL_15;
  }

  if (self)
  {
    v11 = objc_getProperty(self, v8, 56, 1);
  }

  else
  {
    v11 = 0;
  }

  appVPN = [v11 appVPN];

  if (appVPN)
  {
    if (self)
    {
      v14 = objc_getProperty(self, v13, 56, 1);
    }

    else
    {
      v14 = 0;
    }

    appVPN2 = [v14 appVPN];
    goto LABEL_13;
  }

  if (self)
  {
    v18 = objc_getProperty(self, v13, 56, 1);
  }

  else
  {
    v18 = 0;
  }

  alwaysOnVPN = [v18 alwaysOnVPN];

  if (alwaysOnVPN)
  {
    v15 = [parametersCopy objectForKeyedSubscript:@"interface-name"];
    if (v15)
    {
      if (self)
      {
        v21 = objc_getProperty(self, v20, 56, 1);
      }

      else
      {
        v21 = 0;
      }

      alwaysOnVPN2 = [v21 alwaysOnVPN];
      interfaceProtocolMapping = [alwaysOnVPN2 interfaceProtocolMapping];
      protocol = [interfaceProtocolMapping objectForKeyedSubscript:v15];
    }

    else
    {
      protocol = 0;
    }

    goto LABEL_14;
  }

  protocol = 0;
LABEL_15:

  return protocol;
}

- (void)setOnDemandRules:(id)rules
{
  rulesCopy = rules;
  if (self)
  {
    Property = objc_getProperty(self, v4, 56, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = [Property VPN];

  if (v6)
  {
    v9 = [rulesCopy copy];
    if (self)
    {
      v10 = objc_getProperty(self, v8, 56, 1);
    }

    else
    {
      v10 = 0;
    }

    appVPN2 = [v10 VPN];
  }

  else
  {
    if (self)
    {
      v12 = objc_getProperty(self, v7, 56, 1);
    }

    else
    {
      v12 = 0;
    }

    appVPN = [v12 appVPN];

    if (appVPN)
    {
      v9 = [rulesCopy copy];
      if (self)
      {
        v16 = objc_getProperty(self, v15, 56, 1);
      }

      else
      {
        v16 = 0;
      }

      appVPN2 = [v16 appVPN];
    }

    else
    {
      if (self)
      {
        v17 = objc_getProperty(self, v14, 56, 1);
      }

      else
      {
        v17 = 0;
      }

      dnsSettings = [v17 dnsSettings];

      if (!dnsSettings)
      {
        goto LABEL_20;
      }

      v9 = [rulesCopy copy];
      if (self)
      {
        v20 = objc_getProperty(self, v19, 56, 1);
      }

      else
      {
        v20 = 0;
      }

      appVPN2 = [v20 dnsSettings];
    }
  }

  v21 = appVPN2;
  [appVPN2 setOnDemandRules:v9];

LABEL_20:
}

- (NSArray)onDemandRules
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v3 = [(NEUtilConfigurationClient *)self VPN];

  if (v3)
  {
    if (selfCopy)
    {
      Property = objc_getProperty(selfCopy, v4, 56, 1);
    }

    else
    {
      Property = 0;
    }

    appVPN2 = [Property VPN];
  }

  else
  {
    if (selfCopy)
    {
      v7 = objc_getProperty(selfCopy, v4, 56, 1);
    }

    else
    {
      v7 = 0;
    }

    appVPN = [v7 appVPN];

    if (appVPN)
    {
      if (selfCopy)
      {
        v10 = objc_getProperty(selfCopy, v9, 56, 1);
      }

      else
      {
        v10 = 0;
      }

      appVPN2 = [v10 appVPN];
    }

    else
    {
      if (selfCopy)
      {
        v11 = objc_getProperty(selfCopy, v9, 56, 1);
      }

      else
      {
        v11 = 0;
      }

      dnsSettings = [v11 dnsSettings];

      if (!dnsSettings)
      {
        goto LABEL_20;
      }

      if (selfCopy)
      {
        v14 = objc_getProperty(selfCopy, v13, 56, 1);
      }

      else
      {
        v14 = 0;
      }

      appVPN2 = [v14 dnsSettings];
    }
  }

  v15 = appVPN2;
  dnsSettings = [appVPN2 onDemandRules];

LABEL_20:

  return dnsSettings;
}

- (BOOL)disconnectOnDemandEnabled
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v3 = [(NEUtilConfigurationClient *)self VPN];

  if (v3)
  {
    if (selfCopy)
    {
      Property = objc_getProperty(selfCopy, v4, 56, 1);
    }

    else
    {
      Property = 0;
    }

    appVPN2 = [Property VPN];
LABEL_13:
    v11 = appVPN2;
    isDisconnectOnDemandEnabled = [appVPN2 isDisconnectOnDemandEnabled];

    return isDisconnectOnDemandEnabled;
  }

  if (selfCopy)
  {
    v7 = objc_getProperty(selfCopy, v4, 56, 1);
  }

  else
  {
    v7 = 0;
  }

  appVPN = [v7 appVPN];

  if (appVPN)
  {
    if (selfCopy)
    {
      v10 = objc_getProperty(selfCopy, v9, 56, 1);
    }

    else
    {
      v10 = 0;
    }

    appVPN2 = [v10 appVPN];
    goto LABEL_13;
  }

  return 0;
}

- (BOOL)onDemandUserOverrideDisabled
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v4 = [(NEUtilConfigurationClient *)self VPN];
  if (v4)
  {
    if (selfCopy)
    {
      Property = objc_getProperty(selfCopy, v3, 56, 1);
    }

    else
    {
      Property = 0;
    }

    appVPN = [Property VPN];
  }

  else
  {
    if (selfCopy)
    {
      v7 = objc_getProperty(selfCopy, v3, 56, 1);
    }

    else
    {
      v7 = 0;
    }

    appVPN = [v7 appVPN];
  }

  v8 = appVPN;

  isOnDemandUserOverrideDisabled = [v8 isOnDemandUserOverrideDisabled];
  return isOnDemandUserOverrideDisabled;
}

- (BOOL)onDemandEnabled
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v3 = [(NEUtilConfigurationClient *)self VPN];

  if (v3)
  {
    if (selfCopy)
    {
      Property = objc_getProperty(selfCopy, v4, 56, 1);
    }

    else
    {
      Property = 0;
    }

    appVPN2 = [Property VPN];
LABEL_13:
    v11 = appVPN2;
    isOnDemandEnabled = [appVPN2 isOnDemandEnabled];

    return isOnDemandEnabled;
  }

  if (selfCopy)
  {
    v7 = objc_getProperty(selfCopy, v4, 56, 1);
  }

  else
  {
    v7 = 0;
  }

  appVPN = [v7 appVPN];

  if (appVPN)
  {
    if (selfCopy)
    {
      v10 = objc_getProperty(selfCopy, v9, 56, 1);
    }

    else
    {
      v10 = 0;
    }

    appVPN2 = [v10 appVPN];
    goto LABEL_13;
  }

  return 0;
}

- (BOOL)enabled
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 56, 1);
  }

  v3 = [(NEUtilConfigurationClient *)self VPN];

  if (v3)
  {
    if (selfCopy)
    {
      Property = objc_getProperty(selfCopy, v4, 56, 1);
    }

    else
    {
      Property = 0;
    }

    appVPN2 = [Property VPN];
LABEL_49:
    v35 = appVPN2;
    isEnabled = [appVPN2 isEnabled];

    return isEnabled;
  }

  if (selfCopy)
  {
    v7 = objc_getProperty(selfCopy, v4, 56, 1);
  }

  else
  {
    v7 = 0;
  }

  appVPN = [v7 appVPN];

  if (appVPN)
  {
    if (selfCopy)
    {
      v10 = objc_getProperty(selfCopy, v9, 56, 1);
    }

    else
    {
      v10 = 0;
    }

    appVPN2 = [v10 appVPN];
    goto LABEL_49;
  }

  if (selfCopy)
  {
    v11 = objc_getProperty(selfCopy, v9, 56, 1);
  }

  else
  {
    v11 = 0;
  }

  contentFilter = [v11 contentFilter];

  if (contentFilter)
  {
    if (selfCopy)
    {
      v14 = objc_getProperty(selfCopy, v13, 56, 1);
    }

    else
    {
      v14 = 0;
    }

    appVPN2 = [v14 contentFilter];
    goto LABEL_49;
  }

  if (selfCopy)
  {
    v15 = objc_getProperty(selfCopy, v13, 56, 1);
  }

  else
  {
    v15 = 0;
  }

  alwaysOnVPN = [v15 alwaysOnVPN];

  if (alwaysOnVPN)
  {
    if (selfCopy)
    {
      v18 = objc_getProperty(selfCopy, v17, 56, 1);
    }

    else
    {
      v18 = 0;
    }

    appVPN2 = [v18 alwaysOnVPN];
    goto LABEL_49;
  }

  if (selfCopy)
  {
    v19 = objc_getProperty(selfCopy, v17, 56, 1);
  }

  else
  {
    v19 = 0;
  }

  dnsProxy = [v19 dnsProxy];

  if (dnsProxy)
  {
    if (selfCopy)
    {
      v22 = objc_getProperty(selfCopy, v21, 56, 1);
    }

    else
    {
      v22 = 0;
    }

    appVPN2 = [v22 dnsProxy];
    goto LABEL_49;
  }

  if (selfCopy)
  {
    v23 = objc_getProperty(selfCopy, v21, 56, 1);
  }

  else
  {
    v23 = 0;
  }

  dnsSettings = [v23 dnsSettings];

  if (dnsSettings)
  {
    if (selfCopy)
    {
      v26 = objc_getProperty(selfCopy, v25, 56, 1);
    }

    else
    {
      v26 = 0;
    }

    appVPN2 = [v26 dnsSettings];
    goto LABEL_49;
  }

  if (selfCopy)
  {
    v27 = objc_getProperty(selfCopy, v25, 56, 1);
  }

  else
  {
    v27 = 0;
  }

  relay = [v27 relay];

  if (relay)
  {
    if (selfCopy)
    {
      v30 = objc_getProperty(selfCopy, v29, 56, 1);
    }

    else
    {
      v30 = 0;
    }

    appVPN2 = [v30 relay];
    goto LABEL_49;
  }

  if (selfCopy)
  {
    v31 = objc_getProperty(selfCopy, v29, 56, 1);
  }

  else
  {
    v31 = 0;
  }

  urlFilter = [v31 urlFilter];

  if (urlFilter)
  {
    if (selfCopy)
    {
      v34 = objc_getProperty(selfCopy, v33, 56, 1);
    }

    else
    {
      v34 = 0;
    }

    appVPN2 = [v34 urlFilter];
    goto LABEL_49;
  }

  return 0;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NEUtilConfigurationClient;
  [(NEUtilConfigurationClient *)&v2 dealloc];
}

- (NEUtilConfigurationClient)initWithClientName:(id)name
{
  nameCopy = name;
  v5 = [(NEUtilConfigurationClient *)self initInternalWithClientName:nameCopy];
  if (v5)
  {
    if (geteuid())
    {
      v6 = objc_alloc_init(NEConfigurationManager);
    }

    else
    {
      v6 = +[NEConfigurationManager sharedManagerForAllUsers];
    }

    manager = v5->_manager;
    v5->_manager = v6;

    objc_initWeak(&location, v5);
    v8 = v5->_manager;
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__NEUtilConfigurationClient_initWithClientName___block_invoke;
    v12[3] = &unk_1E7F0ABE0;
    objc_copyWeak(&v13, &location);
    [(NEConfigurationManager *)v8 setChangedQueue:v9 andHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __48__NEUtilConfigurationClient_initWithClientName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(NEUtilConfigurationClient *)WeakRetained loadConfigurationsForceRefresh:&__block_literal_global_7_25468 completionHandler:?];
}

- (id)initInternalWithClientName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = NEUtilConfigurationClient;
  v5 = [(NEUtilConfigurationClient *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    clientName = v5->_clientName;
    v5->_clientName = v6;
  }

  return v5;
}

+ (void)removeClientWithName:(id)name
{
  nameCopy = name;
  v4 = +[NEUtilConfigurationClient allClients];
  [v4 removeObjectForKey:nameCopy];
}

+ (id)allClients
{
  objc_opt_self();
  if (allClients_g_initClients != -1)
  {
    dispatch_once(&allClients_g_initClients, &__block_literal_global_25478);
  }

  v0 = allClients_g_clients;

  return v0;
}

uint64_t __39__NEUtilConfigurationClient_allClients__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = allClients_g_clients;
  allClients_g_clients = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)clientWithName:(id)name
{
  nameCopy = name;
  v4 = +[NEUtilConfigurationClient allClients];
  v5 = [v4 objectForKeyedSubscript:nameCopy];
  if (!v5)
  {
    v6 = [nameCopy hasPrefix:@"app:"];
    v7 = off_1E7F04DC0;
    if (!v6)
    {
      v7 = off_1E7F04E70;
    }

    v5 = [objc_alloc(*v7) initWithClientName:nameCopy];
    if (v5)
    {
      [v4 setObject:v5 forKeyedSubscript:nameCopy];
    }
  }

  return v5;
}

@end